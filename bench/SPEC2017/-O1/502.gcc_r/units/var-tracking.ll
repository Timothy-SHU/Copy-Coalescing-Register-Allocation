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
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.dataflow_set_def = type { i64, [53 x ptr], ptr, ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.variable_tracking_info_def = type { ptr, %struct.dataflow_set_def, %struct.dataflow_set_def, ptr, i8, i8 }
%struct.VEC_rtx_base = type { i32, i32, [1 x ptr] }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.cselib_val_struct = type { i32, i32, ptr, ptr, ptr, ptr }
%struct.elt_loc_list = type { ptr, ptr, ptr }
%struct.shared_hash_def = type { i32, ptr }
%struct.VEC_micro_operation_base = type { i32, i32, [1 x %struct.micro_operation_def] }
%struct.micro_operation_def = type { i32, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%struct.reg_attrs = type { ptr, i64 }
%struct.mem_attrs = type { ptr, ptr, ptr, i32, i32, i8 }
%struct.rtl_bb_info = type { ptr, ptr, ptr, ptr, i32 }
%struct.adjust_mem_data = type { i8, i32, i64, ptr }
%struct.edge_iterator = type { i32, ptr }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.rtvec_def = type { i32, [1 x ptr] }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.tree_parm_decl = type { %struct.tree_decl_with_rtl, ptr, ptr }
%struct.attrs_def = type { ptr, ptr, ptr, i64 }
%struct.dfset_post_merge = type { ptr, ptr }
%struct.dfset_merge = type { ptr, ptr, ptr, i32 }
%struct.param_info = type { ptr, i32, i8, i32, i32, ptr }
%struct.simple_bitmap_def = type { ptr, i32, i32, [1 x i64] }
%struct.variable_def = type { ptr, i32, i8, i8, i8, [1 x %struct.variable_part_def] }
%struct.variable_part_def = type { ptr, ptr, i64 }
%struct.value_chain_def = type { ptr, ptr, i32 }
%struct.count_use_info = type { ptr, ptr, ptr, i32, i8 }
%struct.location_chain_def = type { ptr, ptr, ptr, i32 }
%struct.cselib_set = type { ptr, ptr, ptr, ptr }
%struct.variable_union_info = type { ptr, i32, i32 }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.tree_identifier = type { %struct.tree_common, %struct.ht_identifier }
%struct.ht_identifier = type { ptr, i32, i32 }
%struct.emit_note_data_def = type { ptr, i32, ptr }
%struct.VEC_variable_base = type { i32, i32, [1 x ptr] }
%struct.tree_int_cst = type { %struct.tree_common, %struct.double_int }
%struct.double_int = type { i64, i64 }
%struct.expand_loc_callback_data = type { ptr, i8, i8 }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
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
@preserved_values = internal unnamed_addr global ptr null, align 8
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
@micro_operation_type_name = internal unnamed_addr constant [10 x ptr] [ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21], align 16
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
@changed_values_stack = internal unnamed_addr global ptr null, align 8
@mode_wider = external local_unnamed_addr constant [87 x i8], align 16
@flag_var_tracking = external local_unnamed_addr global i32, align 4

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !34 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !35
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !34 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !35
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !34 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !45

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #21
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !39
  %11 = load i8, ptr %3, align 1, !tbaa !46
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !34 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !45

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #21
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !39
  %11 = load i8, ptr %3, align 1, !tbaa !46
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !34 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !35
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !45

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #21
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !39
  %11 = load i8, ptr %3, align 1, !tbaa !46
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !34 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !35
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !34 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !45

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #21
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !47
  store i8 %12, ptr %4, align 1, !tbaa !46
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !34 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !45

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #21
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !47
  store i8 %12, ptr %4, align 1, !tbaa !46
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !34 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !35
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !45

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #21
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !47
  store i8 %12, ptr %4, align 1, !tbaa !46
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !34 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #21
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !34 {
  %2 = load i32, ptr %0, align 8, !tbaa !49
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !34 {
  %2 = load i32, ptr %0, align 8, !tbaa !49
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !34 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #21
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !50
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !34 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #21
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !50
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !34 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !34 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !34 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !34 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #21
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %7
  %17 = icmp eq i32 %14, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %16
  %19 = add nuw i64 %11, 1
  br label %20

20:                                               ; preds = %7, %18
  %21 = phi i64 [ %9, %18 ], [ %11, %7 ]
  %22 = phi i64 [ %19, %18 ], [ %8, %7 ]
  %23 = icmp ult i64 %22, %21
  br i1 %23, label %7, label %24, !llvm.loop !51

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !34 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: cold nounwind uwtable
define dso_local void @debug_dv(ptr noundef %0) local_unnamed_addr #9 !prof !34 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %1
  %4 = load i64, ptr %0, align 8
  %5 = and i64 %4, 65535
  %6 = icmp eq i64 %5, 1
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void @debug_rtx(ptr noundef nonnull %0) #21
  br label %9

8:                                                ; preds = %1, %3
  tail call void @debug_generic_stmt(ptr noundef %0) #21
  br label %9

9:                                                ; preds = %8, %7
  ret void
}

declare void @debug_rtx(ptr noundef) local_unnamed_addr #3

declare void @debug_generic_stmt(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @variable_tracking_main() #9 !prof !34 {
  %1 = alloca %struct.dataflow_set_def, align 8
  %2 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !50
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %575, label %4

4:                                                ; preds = %0
  %5 = load ptr, ptr @cfun, align 8, !tbaa !35
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !54
  %8 = getelementptr inbounds %struct.control_flow_graph, ptr %7, i64 0, i32 3
  %9 = load i32, ptr %8, align 8, !tbaa !56
  %10 = icmp sgt i32 %9, 500
  br i1 %10, label %11, label %16

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.control_flow_graph, ptr %7, i64 0, i32 4
  %13 = load i32, ptr %12, align 4, !tbaa !58
  %14 = sdiv i32 %13, %9
  %15 = icmp sgt i32 %14, 19
  br i1 %15, label %575, label %16

16:                                               ; preds = %11, %4
  %17 = tail call zeroext i8 @mark_dfs_back_edges() #21
  %18 = tail call fastcc zeroext i8 @vt_initialize(), !range !59
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %574, label %20

20:                                               ; preds = %16
  %21 = tail call fastcc zeroext i8 @vt_find_locations(), !range !59
  %22 = icmp eq i8 %21, 0
  %23 = load i32, ptr @flag_var_tracking_assignments, align 4
  %24 = icmp sgt i32 %23, 0
  %25 = select i1 %22, i1 %24, i1 false
  br i1 %25, label %26, label %32

26:                                               ; preds = %20
  tail call fastcc void @vt_finalize()
  tail call fastcc void @delete_debug_insns()
  store i32 0, ptr @flag_var_tracking_assignments, align 4, !tbaa !50
  %27 = tail call fastcc zeroext i8 @vt_initialize(), !range !59
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 8468, ptr noundef nonnull @.str.2) #21
  br label %30

30:                                               ; preds = %29, %26
  %31 = tail call fastcc zeroext i8 @vt_find_locations(), !range !59
  br label %32

32:                                               ; preds = %30, %20
  %33 = phi i8 [ %31, %30 ], [ %21, %20 ]
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %574, label %35

35:                                               ; preds = %32
  %36 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %37 = icmp eq ptr %36, null
  br i1 %37, label %78, label %38

38:                                               ; preds = %35
  %39 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %40 = and i32 %39, 8
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %78, label %42

42:                                               ; preds = %38
  %43 = load ptr, ptr @cfun, align 8, !tbaa !35
  %44 = getelementptr inbounds %struct.function, ptr %43, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !54
  %46 = load ptr, ptr %45, align 8, !tbaa !60
  %47 = getelementptr inbounds %struct.basic_block_def, ptr %46, i64 0, i32 6
  %48 = load ptr, ptr %47, align 8, !tbaa !61
  %49 = getelementptr inbounds %struct.control_flow_graph, ptr %45, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !63
  %51 = icmp eq ptr %48, %50
  br i1 %51, label %75, label %52

52:                                               ; preds = %42, %52
  %53 = phi ptr [ %68, %52 ], [ %48, %42 ]
  %54 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %55 = getelementptr inbounds %struct.basic_block_def, ptr %53, i64 0, i32 9
  %56 = load i32, ptr %55, align 8, !tbaa !64
  %57 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %54, ptr noundef nonnull @.str.47, i32 noundef %56)
  %58 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %59 = tail call i64 @fwrite(ptr nonnull @.str.48, i64 4, i64 1, ptr %58)
  %60 = getelementptr inbounds %struct.basic_block_def, ptr %53, i64 0, i32 2
  %61 = load ptr, ptr %60, align 8, !tbaa !65
  %62 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %61, i64 0, i32 1
  tail call fastcc void @dump_dataflow_set(ptr noundef nonnull %62)
  %63 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %64 = tail call i64 @fwrite(ptr nonnull @.str.49, i64 5, i64 1, ptr %63)
  %65 = load ptr, ptr %60, align 8, !tbaa !65
  %66 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %65, i64 0, i32 2
  tail call fastcc void @dump_dataflow_set(ptr noundef nonnull %66)
  %67 = getelementptr inbounds %struct.basic_block_def, ptr %53, i64 0, i32 6
  %68 = load ptr, ptr %67, align 8, !tbaa !61
  %69 = load ptr, ptr @cfun, align 8, !tbaa !35
  %70 = getelementptr inbounds %struct.function, ptr %69, i64 0, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !54
  %72 = getelementptr inbounds %struct.control_flow_graph, ptr %71, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !63
  %74 = icmp eq ptr %68, %73
  br i1 %74, label %75, label %52, !llvm.loop !66

75:                                               ; preds = %52, %42
  %76 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %77 = load i32, ptr @dump_flags, align 4, !tbaa !50
  tail call void @dump_flow_info(ptr noundef %76, i32 noundef %77) #21
  br label %78

78:                                               ; preds = %75, %38, %35
  call void @llvm.lifetime.start.p0(i64 448, ptr nonnull %1) #21
  %79 = load ptr, ptr @changed_variables, align 8, !tbaa !35
  %80 = tail call i64 @htab_elements(ptr noundef %79) #21
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %78
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 7851, ptr noundef nonnull @.str.2) #21
  br label %83

83:                                               ; preds = %82, %78
  %84 = load ptr, ptr @cfun, align 8, !tbaa !35
  %85 = getelementptr inbounds %struct.function, ptr %84, i64 0, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !54
  %87 = load ptr, ptr %86, align 8, !tbaa !60
  %88 = getelementptr inbounds %struct.basic_block_def, ptr %87, i64 0, i32 6
  %89 = load ptr, ptr %88, align 8, !tbaa !61
  %90 = getelementptr inbounds %struct.control_flow_graph, ptr %86, i64 0, i32 1
  %91 = load ptr, ptr %90, align 8, !tbaa !63
  %92 = icmp eq ptr %89, %91
  br i1 %92, label %106, label %93

93:                                               ; preds = %83, %93
  %94 = phi ptr [ %99, %93 ], [ %89, %83 ]
  %95 = getelementptr inbounds %struct.basic_block_def, ptr %94, i64 0, i32 2
  %96 = load ptr, ptr %95, align 8, !tbaa !65
  %97 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %96, i64 0, i32 2
  tail call fastcc void @dataflow_set_clear(ptr noundef nonnull %97)
  %98 = getelementptr inbounds %struct.basic_block_def, ptr %94, i64 0, i32 6
  %99 = load ptr, ptr %98, align 8, !tbaa !61
  %100 = load ptr, ptr @cfun, align 8, !tbaa !35
  %101 = getelementptr inbounds %struct.function, ptr %100, i64 0, i32 1
  %102 = load ptr, ptr %101, align 8, !tbaa !54
  %103 = getelementptr inbounds %struct.control_flow_graph, ptr %102, i64 0, i32 1
  %104 = load ptr, ptr %103, align 8, !tbaa !63
  %105 = icmp eq ptr %99, %104
  br i1 %105, label %106, label %93, !llvm.loop !67

106:                                              ; preds = %93, %83
  store i1 true, ptr @emit_notes, align 1
  %107 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !50
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %151, label %109

109:                                              ; preds = %106, %146
  %110 = phi i32 [ %147, %146 ], [ 0, %106 ]
  %111 = load ptr, ptr @preserved_values, align 8
  %112 = icmp eq ptr %111, null
  br i1 %112, label %120, label %113

113:                                              ; preds = %109
  %114 = load i32, ptr %111, align 8, !tbaa !68
  %115 = icmp ugt i32 %114, %110
  br i1 %115, label %116, label %120

116:                                              ; preds = %113
  %117 = zext i32 %110 to i64
  %118 = getelementptr inbounds %struct.VEC_rtx_base, ptr %111, i64 0, i32 2, i64 %117
  %119 = load ptr, ptr %118, align 8, !tbaa !35
  br label %120

120:                                              ; preds = %116, %113, %109
  %121 = phi ptr [ %119, %116 ], [ null, %113 ], [ null, %109 ]
  %122 = phi i1 [ false, %116 ], [ true, %113 ], [ true, %109 ]
  br i1 %122, label %148, label %123

123:                                              ; preds = %120
  %124 = getelementptr inbounds %struct.rtx_def, ptr %121, i64 0, i32 1
  %125 = load ptr, ptr %124, align 8, !tbaa !46
  %126 = getelementptr inbounds %struct.cselib_val_struct, ptr %125, i64 0, i32 3
  %127 = load ptr, ptr %126, align 8, !tbaa !35
  %128 = icmp eq ptr %127, null
  br i1 %128, label %146, label %129

129:                                              ; preds = %123, %142
  %130 = phi ptr [ %144, %142 ], [ %127, %123 ]
  %131 = phi ptr [ %143, %142 ], [ %126, %123 ]
  %132 = getelementptr inbounds %struct.elt_loc_list, ptr %130, i64 0, i32 1
  %133 = load ptr, ptr %132, align 8, !tbaa !70
  %134 = load i32, ptr %133, align 8
  %135 = and i32 %134, 65535
  %136 = icmp eq i32 %135, 17
  br i1 %136, label %137, label %139

137:                                              ; preds = %129
  %138 = load ptr, ptr %130, align 8, !tbaa !72
  store ptr %138, ptr %131, align 8, !tbaa !35
  br label %142

139:                                              ; preds = %129
  %140 = tail call i32 @for_each_rtx(ptr noundef nonnull %132, ptr noundef nonnull @add_value_chain, ptr noundef %121) #21
  %141 = load ptr, ptr %131, align 8, !tbaa !35
  br label %142

142:                                              ; preds = %139, %137
  %143 = phi ptr [ %131, %137 ], [ %141, %139 ]
  %144 = load ptr, ptr %143, align 8, !tbaa !35
  %145 = icmp eq ptr %144, null
  br i1 %145, label %146, label %129, !llvm.loop !73

146:                                              ; preds = %142, %123
  %147 = add i32 %110, 1
  br label %109, !llvm.loop !74

148:                                              ; preds = %120
  %149 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 40) #21
  store ptr %149, ptr @changed_variables_stack, align 8, !tbaa !35
  %150 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 40) #21
  store ptr %150, ptr @changed_values_stack, align 8, !tbaa !35
  br label %151

151:                                              ; preds = %148, %106
  %152 = getelementptr inbounds %struct.dataflow_set_def, ptr %1, i64 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(424) %152, i8 0, i64 424, i1 false), !tbaa !35
  %153 = load ptr, ptr @empty_shared_hash, align 8, !tbaa !35
  %154 = load i32, ptr %153, align 8, !tbaa !75
  %155 = add nsw i32 %154, 1
  store i32 %155, ptr %153, align 8, !tbaa !75
  %156 = getelementptr inbounds %struct.dataflow_set_def, ptr %1, i64 0, i32 2
  store ptr %153, ptr %156, align 8, !tbaa !77
  store i64 0, ptr %1, align 8, !tbaa !79
  %157 = getelementptr inbounds %struct.dataflow_set_def, ptr %1, i64 0, i32 3
  store ptr null, ptr %157, align 8, !tbaa !80
  %158 = load ptr, ptr @cfun, align 8, !tbaa !35
  %159 = getelementptr inbounds %struct.function, ptr %158, i64 0, i32 1
  %160 = load ptr, ptr %159, align 8, !tbaa !54
  %161 = load ptr, ptr %160, align 8, !tbaa !60
  %162 = getelementptr inbounds %struct.basic_block_def, ptr %161, i64 0, i32 6
  %163 = load ptr, ptr %162, align 8, !tbaa !61
  %164 = getelementptr inbounds %struct.control_flow_graph, ptr %160, i64 0, i32 1
  %165 = load ptr, ptr %164, align 8, !tbaa !63
  %166 = icmp eq ptr %163, %165
  br i1 %166, label %561, label %167

167:                                              ; preds = %151, %551
  %168 = phi ptr [ %554, %551 ], [ %163, %151 ]
  %169 = getelementptr inbounds %struct.basic_block_def, ptr %168, i64 0, i32 7
  %170 = load ptr, ptr %169, align 8, !tbaa !46
  %171 = load ptr, ptr %170, align 8, !tbaa !81
  %172 = getelementptr inbounds %struct.basic_block_def, ptr %168, i64 0, i32 2
  %173 = load ptr, ptr %172, align 8, !tbaa !65
  %174 = load ptr, ptr %156, align 8, !tbaa !77
  %175 = getelementptr inbounds %struct.shared_hash_def, ptr %174, i64 0, i32 1
  %176 = load ptr, ptr %175, align 8, !tbaa !83
  %177 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %173, i64 0, i32 1, i32 2
  %178 = load ptr, ptr %177, align 8, !tbaa !77
  %179 = getelementptr inbounds %struct.shared_hash_def, ptr %178, i64 0, i32 1
  %180 = load ptr, ptr %179, align 8, !tbaa !83
  call void @htab_traverse(ptr noundef %176, ptr noundef nonnull @emit_notes_for_differences_1, ptr noundef %180) #21
  %181 = load ptr, ptr %177, align 8, !tbaa !77
  %182 = getelementptr inbounds %struct.shared_hash_def, ptr %181, i64 0, i32 1
  %183 = load ptr, ptr %182, align 8, !tbaa !83
  %184 = load ptr, ptr %156, align 8, !tbaa !77
  %185 = getelementptr inbounds %struct.shared_hash_def, ptr %184, i64 0, i32 1
  %186 = load ptr, ptr %185, align 8, !tbaa !83
  call void @htab_traverse(ptr noundef %183, ptr noundef nonnull @emit_notes_for_differences_2, ptr noundef %186) #21
  %187 = load ptr, ptr %177, align 8, !tbaa !77
  call fastcc void @emit_notes_for_changes(ptr noundef %171, i32 noundef 0, ptr noundef %187)
  call fastcc void @dataflow_set_clear(ptr noundef nonnull %1)
  %188 = load ptr, ptr %172, align 8, !tbaa !65
  %189 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %188, i64 0, i32 1
  call fastcc void @dataflow_set_copy(ptr noundef nonnull %1, ptr noundef nonnull %189)
  br label %190

190:                                              ; preds = %549, %167
  %191 = phi i32 [ 0, %167 ], [ %550, %549 ]
  %192 = load ptr, ptr %172, align 8, !tbaa !65
  %193 = load ptr, ptr %192, align 8, !tbaa !84
  %194 = icmp eq ptr %193, null
  br i1 %194, label %201, label %195

195:                                              ; preds = %190
  %196 = load i32, ptr %193, align 8, !tbaa !86
  %197 = icmp ugt i32 %196, %191
  br i1 %197, label %198, label %201

198:                                              ; preds = %195
  %199 = zext i32 %191 to i64
  %200 = getelementptr inbounds %struct.VEC_micro_operation_base, ptr %193, i64 0, i32 2, i64 %199
  br label %201

201:                                              ; preds = %198, %195, %190
  %202 = phi ptr [ %200, %198 ], [ null, %195 ], [ null, %190 ]
  %203 = phi i1 [ false, %198 ], [ true, %195 ], [ true, %190 ]
  br i1 %203, label %551, label %204

204:                                              ; preds = %201
  %205 = getelementptr inbounds %struct.micro_operation_def, ptr %202, i64 0, i32 1
  %206 = load ptr, ptr %205, align 8, !tbaa !88
  %207 = load i32, ptr %202, align 8, !tbaa !90
  switch i32 %207, label %549 [
    i32 8, label %208
    i32 0, label %210
    i32 3, label %248
    i32 2, label %287
    i32 4, label %349
    i32 5, label %474
    i32 6, label %497
    i32 1, label %522
    i32 7, label %532
    i32 9, label %544
  ]

208:                                              ; preds = %204
  call fastcc void @dataflow_set_clear_at_call(ptr noundef nonnull %1)
  %209 = load ptr, ptr %156, align 8, !tbaa !77
  call fastcc void @emit_notes_for_changes(ptr noundef %206, i32 noundef 2, ptr noundef %209)
  br label %549

210:                                              ; preds = %204
  %211 = getelementptr inbounds %struct.micro_operation_def, ptr %202, i64 0, i32 2
  %212 = load ptr, ptr %211, align 8, !tbaa !46
  %213 = load i32, ptr %212, align 8
  %214 = and i32 %213, 65535
  %215 = icmp eq i32 %214, 37
  br i1 %215, label %216, label %229

216:                                              ; preds = %210
  %217 = getelementptr inbounds %struct.rtx_def, ptr %212, i64 0, i32 1, i32 0, i32 0, i64 2
  %218 = load ptr, ptr %217, align 8, !tbaa !46
  %219 = icmp eq ptr %218, null
  br i1 %219, label %222, label %220

220:                                              ; preds = %216
  %221 = load ptr, ptr %218, align 8, !tbaa !91
  br label %222

222:                                              ; preds = %220, %216
  %223 = phi ptr [ %221, %220 ], [ null, %216 ]
  br i1 %219, label %227, label %224

224:                                              ; preds = %222
  %225 = getelementptr inbounds %struct.reg_attrs, ptr %218, i64 0, i32 1
  %226 = load i64, ptr %225, align 8, !tbaa !93
  br label %227

227:                                              ; preds = %224, %222
  %228 = phi i64 [ %226, %224 ], [ 0, %222 ]
  call fastcc void @var_reg_decl_set(ptr noundef nonnull %1, ptr noundef nonnull %212, i32 noundef 1, ptr noundef %223, i64 noundef %228, ptr noundef null, i32 noundef 1)
  br label %246

229:                                              ; preds = %210
  %230 = getelementptr inbounds %struct.rtx_def, ptr %212, i64 0, i32 1, i32 0, i32 0, i64 1
  %231 = load ptr, ptr %230, align 8, !tbaa !46
  %232 = icmp eq ptr %231, null
  br i1 %232, label %235, label %233

233:                                              ; preds = %229
  %234 = load ptr, ptr %231, align 8, !tbaa !94
  br label %235

235:                                              ; preds = %233, %229
  %236 = phi ptr [ %234, %233 ], [ null, %229 ]
  br i1 %232, label %244, label %237

237:                                              ; preds = %235
  %238 = getelementptr inbounds %struct.mem_attrs, ptr %231, i64 0, i32 1
  %239 = load ptr, ptr %238, align 8, !tbaa !96
  %240 = icmp eq ptr %239, null
  br i1 %240, label %244, label %241

241:                                              ; preds = %237
  %242 = getelementptr inbounds %struct.rtx_def, ptr %239, i64 0, i32 1
  %243 = load i64, ptr %242, align 8, !tbaa !46
  br label %244

244:                                              ; preds = %241, %237, %235
  %245 = phi i64 [ %243, %241 ], [ 0, %235 ], [ 0, %237 ]
  call fastcc void @var_mem_decl_set(ptr noundef nonnull %1, ptr noundef nonnull %212, i32 noundef 1, ptr noundef %236, i64 noundef %245, ptr noundef null, i32 noundef 1)
  br label %246

246:                                              ; preds = %244, %227
  %247 = load ptr, ptr %156, align 8, !tbaa !77
  call fastcc void @emit_notes_for_changes(ptr noundef %206, i32 noundef 1, ptr noundef %247)
  br label %549

248:                                              ; preds = %204
  %249 = getelementptr inbounds %struct.micro_operation_def, ptr %202, i64 0, i32 2
  %250 = load ptr, ptr %249, align 8, !tbaa !46
  %251 = load i32, ptr %250, align 8
  %252 = and i32 %251, 65535
  %253 = icmp eq i32 %252, 41
  br i1 %253, label %254, label %259

254:                                              ; preds = %248
  %255 = getelementptr inbounds %struct.rtx_def, ptr %250, i64 0, i32 1
  %256 = load ptr, ptr %255, align 8, !tbaa !46
  %257 = getelementptr inbounds %struct.rtx_def, ptr %250, i64 0, i32 1, i32 0, i32 0, i64 1
  %258 = load ptr, ptr %257, align 8, !tbaa !46
  br label %259

259:                                              ; preds = %254, %248
  %260 = phi ptr [ %258, %254 ], [ %250, %248 ]
  %261 = phi ptr [ %256, %254 ], [ null, %248 ]
  %262 = getelementptr inbounds %struct.rtx_def, ptr %260, i64 0, i32 1
  %263 = load ptr, ptr %262, align 8, !tbaa !46
  call fastcc void @clobber_variable_part(ptr noundef nonnull %1, ptr noundef null, ptr noundef %263, i64 noundef 0, ptr noundef null)
  %264 = icmp eq ptr %261, null
  br i1 %264, label %272, label %265

265:                                              ; preds = %259
  %266 = load i32, ptr %250, align 8
  %267 = and i32 %266, 134217728
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %283, label %269

269:                                              ; preds = %265
  %270 = getelementptr inbounds %struct.rtx_def, ptr %260, i64 0, i32 1, i32 0, i32 0, i64 1
  %271 = load ptr, ptr %270, align 8, !tbaa !46
  call fastcc void @val_resolve(ptr noundef nonnull %1, ptr noundef nonnull %261, ptr noundef %271, ptr noundef %206)
  br label %283

272:                                              ; preds = %259
  %273 = getelementptr inbounds %struct.rtx_def, ptr %260, i64 0, i32 1, i32 0, i32 0, i64 1
  %274 = load ptr, ptr %273, align 8, !tbaa !46
  %275 = load i32, ptr %274, align 8
  %276 = and i32 %275, 65535
  %277 = icmp eq i32 %276, 25
  br i1 %277, label %278, label %283

278:                                              ; preds = %272
  %279 = getelementptr inbounds %struct.rtx_def, ptr %274, i64 0, i32 1
  %280 = load ptr, ptr %279, align 8, !tbaa !46
  %281 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !35
  %282 = icmp eq ptr %280, %281
  br i1 %282, label %285, label %283

283:                                              ; preds = %272, %278, %265, %269
  %284 = phi ptr [ %261, %269 ], [ %261, %265 ], [ %274, %278 ], [ %274, %272 ]
  call fastcc void @set_variable_part(ptr noundef nonnull %1, ptr noundef nonnull %284, ptr noundef %263, i64 noundef 0, i32 noundef 2, ptr noundef null, i32 noundef 1)
  br label %285

285:                                              ; preds = %283, %278
  %286 = load ptr, ptr %156, align 8, !tbaa !77
  call fastcc void @emit_notes_for_changes(ptr noundef %206, i32 noundef 1, ptr noundef %286)
  br label %549

287:                                              ; preds = %204
  %288 = getelementptr inbounds %struct.micro_operation_def, ptr %202, i64 0, i32 2
  %289 = load ptr, ptr %288, align 8, !tbaa !46
  %290 = getelementptr inbounds %struct.rtx_def, ptr %289, i64 0, i32 1
  %291 = getelementptr inbounds %struct.rtx_def, ptr %289, i64 0, i32 1, i32 0, i32 0, i64 1
  %292 = load ptr, ptr %291, align 8, !tbaa !46
  %293 = load ptr, ptr %290, align 8, !tbaa !46
  %294 = load i32, ptr %293, align 8
  %295 = and i32 %294, 65535
  %296 = icmp eq i32 %295, 41
  br i1 %296, label %297, label %302

297:                                              ; preds = %287
  %298 = getelementptr inbounds %struct.rtx_def, ptr %293, i64 0, i32 1
  %299 = getelementptr inbounds %struct.rtx_def, ptr %293, i64 0, i32 1, i32 0, i32 0, i64 1
  %300 = load ptr, ptr %299, align 8, !tbaa !46
  %301 = load ptr, ptr %298, align 8, !tbaa !46
  br label %302

302:                                              ; preds = %297, %287
  %303 = phi ptr [ %300, %297 ], [ %292, %287 ]
  %304 = phi ptr [ %301, %297 ], [ %293, %287 ]
  %305 = load i32, ptr %289, align 8
  %306 = and i32 %305, 134217728
  %307 = icmp eq i32 %306, 0
  br i1 %307, label %309, label %308

308:                                              ; preds = %302
  call fastcc void @val_resolve(ptr noundef nonnull %1, ptr noundef %304, ptr noundef %292, ptr noundef %206)
  br label %310

309:                                              ; preds = %302
  call fastcc void @val_store(ptr noundef nonnull %1, ptr noundef %304, ptr noundef %303, ptr noundef %206, i8 noundef zeroext 0)
  br label %310

310:                                              ; preds = %309, %308
  %311 = load i32, ptr %289, align 8
  %312 = and i32 %311, 536870912
  %313 = icmp eq i32 %312, 0
  br i1 %313, label %347, label %314

314:                                              ; preds = %310
  %315 = load i32, ptr %303, align 8
  %316 = trunc i32 %315 to i16
  switch i16 %316, label %347 [
    i16 37, label %317
    i16 43, label %330
  ]

317:                                              ; preds = %314
  %318 = getelementptr inbounds %struct.rtx_def, ptr %303, i64 0, i32 1, i32 0, i32 0, i64 2
  %319 = load ptr, ptr %318, align 8, !tbaa !46
  %320 = icmp eq ptr %319, null
  br i1 %320, label %323, label %321

321:                                              ; preds = %317
  %322 = load ptr, ptr %319, align 8, !tbaa !91
  br label %323

323:                                              ; preds = %321, %317
  %324 = phi ptr [ %322, %321 ], [ null, %317 ]
  br i1 %320, label %328, label %325

325:                                              ; preds = %323
  %326 = getelementptr inbounds %struct.reg_attrs, ptr %319, i64 0, i32 1
  %327 = load i64, ptr %326, align 8, !tbaa !93
  br label %328

328:                                              ; preds = %325, %323
  %329 = phi i64 [ %327, %325 ], [ 0, %323 ]
  call fastcc void @var_reg_decl_set(ptr noundef nonnull %1, ptr noundef nonnull %303, i32 noundef 1, ptr noundef %324, i64 noundef %329, ptr noundef null, i32 noundef 1)
  br label %347

330:                                              ; preds = %314
  %331 = getelementptr inbounds %struct.rtx_def, ptr %303, i64 0, i32 1, i32 0, i32 0, i64 1
  %332 = load ptr, ptr %331, align 8, !tbaa !46
  %333 = icmp eq ptr %332, null
  br i1 %333, label %336, label %334

334:                                              ; preds = %330
  %335 = load ptr, ptr %332, align 8, !tbaa !94
  br label %336

336:                                              ; preds = %334, %330
  %337 = phi ptr [ %335, %334 ], [ null, %330 ]
  br i1 %333, label %345, label %338

338:                                              ; preds = %336
  %339 = getelementptr inbounds %struct.mem_attrs, ptr %332, i64 0, i32 1
  %340 = load ptr, ptr %339, align 8, !tbaa !96
  %341 = icmp eq ptr %340, null
  br i1 %341, label %345, label %342

342:                                              ; preds = %338
  %343 = getelementptr inbounds %struct.rtx_def, ptr %340, i64 0, i32 1
  %344 = load i64, ptr %343, align 8, !tbaa !46
  br label %345

345:                                              ; preds = %342, %338, %336
  %346 = phi i64 [ %344, %342 ], [ 0, %336 ], [ 0, %338 ]
  call fastcc void @var_mem_decl_set(ptr noundef nonnull %1, ptr noundef nonnull %303, i32 noundef 1, ptr noundef %337, i64 noundef %346, ptr noundef null, i32 noundef 1)
  br label %347

347:                                              ; preds = %345, %328, %314, %310
  %348 = load ptr, ptr %156, align 8, !tbaa !77
  call fastcc void @emit_notes_for_changes(ptr noundef %206, i32 noundef 0, ptr noundef %348)
  br label %549

349:                                              ; preds = %204
  %350 = getelementptr inbounds %struct.micro_operation_def, ptr %202, i64 0, i32 2
  %351 = load ptr, ptr %350, align 8, !tbaa !46
  %352 = load i32, ptr %351, align 8
  %353 = icmp sgt i32 %352, -1
  br i1 %353, label %359, label %354

354:                                              ; preds = %349
  %355 = getelementptr inbounds %struct.rtx_def, ptr %351, i64 0, i32 1
  %356 = getelementptr inbounds %struct.rtx_def, ptr %351, i64 0, i32 1, i32 0, i32 0, i64 1
  %357 = load ptr, ptr %356, align 8, !tbaa !46
  %358 = load ptr, ptr %355, align 8, !tbaa !46
  br label %359

359:                                              ; preds = %354, %349
  %360 = phi ptr [ %358, %354 ], [ %351, %349 ]
  %361 = phi ptr [ %357, %354 ], [ null, %349 ]
  %362 = getelementptr inbounds %struct.rtx_def, ptr %360, i64 0, i32 1
  %363 = getelementptr inbounds %struct.rtx_def, ptr %360, i64 0, i32 1, i32 0, i32 0, i64 1
  %364 = load ptr, ptr %363, align 8, !tbaa !46
  %365 = load ptr, ptr %362, align 8, !tbaa !46
  %366 = load i32, ptr %365, align 8
  %367 = and i32 %366, 65535
  %368 = icmp eq i32 %367, 41
  br i1 %368, label %369, label %374

369:                                              ; preds = %359
  %370 = getelementptr inbounds %struct.rtx_def, ptr %365, i64 0, i32 1
  %371 = getelementptr inbounds %struct.rtx_def, ptr %365, i64 0, i32 1, i32 0, i32 0, i64 1
  %372 = load ptr, ptr %371, align 8, !tbaa !46
  %373 = load ptr, ptr %370, align 8, !tbaa !46
  br label %374

374:                                              ; preds = %369, %359
  %375 = phi ptr [ %373, %369 ], [ %365, %359 ]
  %376 = phi ptr [ %372, %369 ], [ %364, %359 ]
  %377 = load i32, ptr %376, align 8
  %378 = and i32 %377, 65535
  %379 = icmp eq i32 %378, 23
  br i1 %379, label %380, label %398

380:                                              ; preds = %374
  %381 = getelementptr inbounds %struct.rtx_def, ptr %376, i64 0, i32 1
  %382 = getelementptr inbounds %struct.rtx_def, ptr %376, i64 0, i32 1, i32 0, i32 0, i64 1
  %383 = load ptr, ptr %382, align 8, !tbaa !46
  %384 = icmp eq ptr %375, %383
  br i1 %384, label %385, label %386

385:                                              ; preds = %380
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 7693, ptr noundef nonnull @.str.2) #21
  br label %386

386:                                              ; preds = %385, %380
  %387 = icmp eq ptr %376, %364
  br i1 %387, label %393, label %388

388:                                              ; preds = %386
  %389 = load i32, ptr %351, align 8
  %390 = and i32 %389, 134217728
  %391 = icmp eq i32 %390, 0
  br i1 %391, label %392, label %393

392:                                              ; preds = %388
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 7694, ptr noundef nonnull @.str.2) #21
  br label %393

393:                                              ; preds = %392, %388, %386
  %394 = load ptr, ptr %381, align 8, !tbaa !46
  %395 = load i32, ptr %351, align 8
  %396 = and i32 %395, 134217728
  %397 = icmp eq i32 %396, 0
  br i1 %397, label %418, label %415

398:                                              ; preds = %374
  %399 = and i32 %352, 134217728
  %400 = icmp eq i32 %399, 0
  br i1 %400, label %418, label %401

401:                                              ; preds = %398
  %402 = load i32, ptr %364, align 8
  %403 = and i32 %402, 65535
  %404 = icmp eq i32 %403, 23
  br i1 %404, label %405, label %411

405:                                              ; preds = %401
  %406 = getelementptr inbounds %struct.rtx_def, ptr %364, i64 0, i32 1, i32 0, i32 0, i64 1
  %407 = load ptr, ptr %406, align 8, !tbaa !46
  %408 = load i32, ptr %407, align 8
  %409 = and i32 %408, 65535
  %410 = icmp eq i32 %409, 37
  br i1 %410, label %412, label %411

411:                                              ; preds = %405, %401
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 7704, ptr noundef nonnull @.str.2) #21
  br label %412

412:                                              ; preds = %411, %405
  %413 = getelementptr inbounds %struct.rtx_def, ptr %364, i64 0, i32 1, i32 0, i32 0, i64 1
  %414 = load ptr, ptr %413, align 8, !tbaa !46
  br label %415

415:                                              ; preds = %393, %412
  %416 = phi ptr [ %414, %412 ], [ %383, %393 ]
  %417 = phi ptr [ %376, %412 ], [ %394, %393 ]
  call fastcc void @val_resolve(ptr noundef nonnull %1, ptr noundef %375, ptr noundef %416, ptr noundef %206)
  br label %418

418:                                              ; preds = %415, %398, %393
  %419 = phi ptr [ %376, %398 ], [ %394, %393 ], [ %417, %415 ]
  %420 = load i32, ptr %351, align 8
  %421 = and i32 %420, 536870912
  %422 = icmp eq i32 %421, 0
  br i1 %422, label %456, label %423

423:                                              ; preds = %418
  %424 = and i32 %420, 67108864
  %425 = icmp eq i32 %424, 0
  %426 = load i32, ptr %364, align 8
  br i1 %425, label %431, label %427

427:                                              ; preds = %423
  %428 = trunc i32 %426 to i16
  switch i16 %428, label %463 [
    i16 37, label %429
    i16 43, label %430
  ]

429:                                              ; preds = %427
  call fastcc void @var_reg_delete(ptr noundef nonnull %1, ptr noundef nonnull %364, i8 noundef zeroext 1)
  br label %463

430:                                              ; preds = %427
  call fastcc void @var_mem_delete(ptr noundef nonnull %1, ptr noundef nonnull %364, i8 noundef zeroext 1)
  br label %463

431:                                              ; preds = %423
  %432 = and i32 %426, 65535
  %433 = icmp eq i32 %432, 23
  br i1 %433, label %434, label %439

434:                                              ; preds = %431
  %435 = getelementptr inbounds %struct.rtx_def, ptr %364, i64 0, i32 1
  %436 = getelementptr inbounds %struct.rtx_def, ptr %364, i64 0, i32 1, i32 0, i32 0, i64 1
  %437 = load ptr, ptr %436, align 8, !tbaa !46
  %438 = load ptr, ptr %435, align 8, !tbaa !46
  br label %439

439:                                              ; preds = %434, %431
  %440 = phi ptr [ %438, %434 ], [ %364, %431 ]
  %441 = phi ptr [ %437, %434 ], [ null, %431 ]
  %442 = and i32 %420, 16777216
  %443 = icmp eq i32 %442, 0
  br i1 %443, label %447, label %444

444:                                              ; preds = %439
  %445 = call fastcc i32 @find_src_status(ptr noundef nonnull %1, ptr noundef %441)
  %446 = call fastcc ptr @find_src_set_src(ptr noundef nonnull %1, ptr noundef %441)
  br label %447

447:                                              ; preds = %444, %439
  %448 = phi ptr [ %446, %444 ], [ %441, %439 ]
  %449 = phi i32 [ %445, %444 ], [ 2, %439 ]
  %450 = load i32, ptr %440, align 8
  %451 = trunc i32 %450 to i16
  switch i16 %451, label %463 [
    i16 37, label %452
    i16 43, label %454
  ]

452:                                              ; preds = %447
  %453 = zext i1 %443 to i8
  call fastcc void @var_reg_delete_and_set(ptr noundef nonnull %1, ptr noundef nonnull %440, i8 noundef zeroext %453, i32 noundef %449, ptr noundef %448)
  br label %463

454:                                              ; preds = %447
  %455 = zext i1 %443 to i8
  call fastcc void @var_mem_delete_and_set(ptr noundef nonnull %1, ptr noundef nonnull %440, i8 noundef zeroext %455, i32 noundef %449, ptr noundef %448)
  br label %463

456:                                              ; preds = %418
  %457 = load i32, ptr %364, align 8
  %458 = and i32 %457, 65535
  %459 = icmp eq i32 %458, 37
  br i1 %459, label %460, label %463

460:                                              ; preds = %456
  %461 = getelementptr inbounds %struct.rtx_def, ptr %364, i64 0, i32 1
  %462 = load i32, ptr %461, align 8, !tbaa !46
  call fastcc void @var_regno_delete(ptr noundef nonnull %1, i32 noundef %462)
  br label %463

463:                                              ; preds = %460, %456, %454, %452, %447, %430, %429, %427
  call fastcc void @val_store(ptr noundef nonnull %1, ptr noundef %375, ptr noundef %419, ptr noundef %206, i8 noundef zeroext 1)
  %464 = icmp eq ptr %361, null
  br i1 %464, label %470, label %465

465:                                              ; preds = %463
  %466 = getelementptr inbounds %struct.rtx_def, ptr %361, i64 0, i32 1
  %467 = load ptr, ptr %466, align 8, !tbaa !46
  %468 = getelementptr inbounds %struct.rtx_def, ptr %361, i64 0, i32 1, i32 0, i32 0, i64 1
  %469 = load ptr, ptr %468, align 8, !tbaa !46
  call fastcc void @val_store(ptr noundef nonnull %1, ptr noundef %467, ptr noundef %469, ptr noundef %206, i8 noundef zeroext 0)
  br label %470

470:                                              ; preds = %465, %463
  %471 = getelementptr inbounds %struct.rtx_def, ptr %206, i64 0, i32 1, i32 0, i32 0, i64 2
  %472 = load ptr, ptr %471, align 8, !tbaa !46
  %473 = load ptr, ptr %156, align 8, !tbaa !77
  call fastcc void @emit_notes_for_changes(ptr noundef %472, i32 noundef 0, ptr noundef %473)
  br label %549

474:                                              ; preds = %204
  %475 = getelementptr inbounds %struct.micro_operation_def, ptr %202, i64 0, i32 2
  %476 = load ptr, ptr %475, align 8, !tbaa !46
  %477 = load i32, ptr %476, align 8
  %478 = and i32 %477, 65535
  %479 = icmp eq i32 %478, 23
  br i1 %479, label %480, label %485

480:                                              ; preds = %474
  %481 = getelementptr inbounds %struct.rtx_def, ptr %476, i64 0, i32 1
  %482 = getelementptr inbounds %struct.rtx_def, ptr %476, i64 0, i32 1, i32 0, i32 0, i64 1
  %483 = load ptr, ptr %482, align 8, !tbaa !46
  %484 = load ptr, ptr %481, align 8, !tbaa !46
  br label %485

485:                                              ; preds = %480, %474
  %486 = phi ptr [ %484, %480 ], [ %476, %474 ]
  %487 = phi ptr [ %483, %480 ], [ null, %474 ]
  %488 = load i32, ptr %486, align 8
  %489 = and i32 %488, 65535
  %490 = icmp eq i32 %489, 37
  br i1 %490, label %491, label %492

491:                                              ; preds = %485
  call fastcc void @var_reg_delete_and_set(ptr noundef nonnull %1, ptr noundef nonnull %486, i8 noundef zeroext 1, i32 noundef 2, ptr noundef %487)
  br label %493

492:                                              ; preds = %485
  call fastcc void @var_mem_delete_and_set(ptr noundef nonnull %1, ptr noundef nonnull %486, i8 noundef zeroext 1, i32 noundef 2, ptr noundef %487)
  br label %493

493:                                              ; preds = %492, %491
  %494 = getelementptr inbounds %struct.rtx_def, ptr %206, i64 0, i32 1, i32 0, i32 0, i64 2
  %495 = load ptr, ptr %494, align 8, !tbaa !46
  %496 = load ptr, ptr %156, align 8, !tbaa !77
  call fastcc void @emit_notes_for_changes(ptr noundef %495, i32 noundef 0, ptr noundef %496)
  br label %549

497:                                              ; preds = %204
  %498 = getelementptr inbounds %struct.micro_operation_def, ptr %202, i64 0, i32 2
  %499 = load ptr, ptr %498, align 8, !tbaa !46
  %500 = load i32, ptr %499, align 8
  %501 = and i32 %500, 65535
  %502 = icmp eq i32 %501, 23
  br i1 %502, label %503, label %508

503:                                              ; preds = %497
  %504 = getelementptr inbounds %struct.rtx_def, ptr %499, i64 0, i32 1
  %505 = getelementptr inbounds %struct.rtx_def, ptr %499, i64 0, i32 1, i32 0, i32 0, i64 1
  %506 = load ptr, ptr %505, align 8, !tbaa !46
  %507 = load ptr, ptr %504, align 8, !tbaa !46
  br label %508

508:                                              ; preds = %503, %497
  %509 = phi ptr [ %507, %503 ], [ %499, %497 ]
  %510 = phi ptr [ %506, %503 ], [ null, %497 ]
  %511 = call fastcc i32 @find_src_status(ptr noundef nonnull %1, ptr noundef %510)
  %512 = call fastcc ptr @find_src_set_src(ptr noundef nonnull %1, ptr noundef %510)
  %513 = load i32, ptr %509, align 8
  %514 = and i32 %513, 65535
  %515 = icmp eq i32 %514, 37
  br i1 %515, label %516, label %517

516:                                              ; preds = %508
  call fastcc void @var_reg_delete_and_set(ptr noundef nonnull %1, ptr noundef nonnull %509, i8 noundef zeroext 0, i32 noundef %511, ptr noundef %512)
  br label %518

517:                                              ; preds = %508
  call fastcc void @var_mem_delete_and_set(ptr noundef nonnull %1, ptr noundef nonnull %509, i8 noundef zeroext 0, i32 noundef %511, ptr noundef %512)
  br label %518

518:                                              ; preds = %517, %516
  %519 = getelementptr inbounds %struct.rtx_def, ptr %206, i64 0, i32 1, i32 0, i32 0, i64 2
  %520 = load ptr, ptr %519, align 8, !tbaa !46
  %521 = load ptr, ptr %156, align 8, !tbaa !77
  call fastcc void @emit_notes_for_changes(ptr noundef %520, i32 noundef 0, ptr noundef %521)
  br label %549

522:                                              ; preds = %204
  %523 = getelementptr inbounds %struct.micro_operation_def, ptr %202, i64 0, i32 2
  %524 = load ptr, ptr %523, align 8, !tbaa !46
  %525 = load i32, ptr %524, align 8
  %526 = and i32 %525, 65535
  %527 = icmp eq i32 %526, 37
  br i1 %527, label %528, label %529

528:                                              ; preds = %522
  call fastcc void @var_reg_delete(ptr noundef nonnull %1, ptr noundef nonnull %524, i8 noundef zeroext 0)
  br label %530

529:                                              ; preds = %522
  call fastcc void @var_mem_delete(ptr noundef nonnull %1, ptr noundef nonnull %524, i8 noundef zeroext 0)
  br label %530

530:                                              ; preds = %529, %528
  %531 = load ptr, ptr %156, align 8, !tbaa !77
  call fastcc void @emit_notes_for_changes(ptr noundef %206, i32 noundef 1, ptr noundef %531)
  br label %549

532:                                              ; preds = %204
  %533 = getelementptr inbounds %struct.micro_operation_def, ptr %202, i64 0, i32 2
  %534 = load ptr, ptr %533, align 8, !tbaa !46
  %535 = load i32, ptr %534, align 8
  %536 = and i32 %535, 65535
  %537 = icmp eq i32 %536, 37
  br i1 %537, label %538, label %539

538:                                              ; preds = %532
  call fastcc void @var_reg_delete(ptr noundef nonnull %1, ptr noundef nonnull %534, i8 noundef zeroext 1)
  br label %540

539:                                              ; preds = %532
  call fastcc void @var_mem_delete(ptr noundef nonnull %1, ptr noundef nonnull %534, i8 noundef zeroext 1)
  br label %540

540:                                              ; preds = %539, %538
  %541 = getelementptr inbounds %struct.rtx_def, ptr %206, i64 0, i32 1, i32 0, i32 0, i64 2
  %542 = load ptr, ptr %541, align 8, !tbaa !46
  %543 = load ptr, ptr %156, align 8, !tbaa !77
  call fastcc void @emit_notes_for_changes(ptr noundef %542, i32 noundef 0, ptr noundef %543)
  br label %549

544:                                              ; preds = %204
  %545 = getelementptr inbounds %struct.micro_operation_def, ptr %202, i64 0, i32 2
  %546 = load i64, ptr %545, align 8, !tbaa !46
  %547 = load i64, ptr %1, align 8, !tbaa !79
  %548 = add nsw i64 %547, %546
  store i64 %548, ptr %1, align 8, !tbaa !79
  br label %549

549:                                              ; preds = %544, %540, %530, %518, %493, %470, %347, %285, %246, %208, %204
  %550 = add i32 %191, 1
  br label %190, !llvm.loop !97

551:                                              ; preds = %201
  %552 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %192, i64 0, i32 1
  call fastcc void @dataflow_set_clear(ptr noundef nonnull %552)
  %553 = getelementptr inbounds %struct.basic_block_def, ptr %168, i64 0, i32 6
  %554 = load ptr, ptr %553, align 8, !tbaa !61
  %555 = load ptr, ptr @cfun, align 8, !tbaa !35
  %556 = getelementptr inbounds %struct.function, ptr %555, i64 0, i32 1
  %557 = load ptr, ptr %556, align 8, !tbaa !54
  %558 = getelementptr inbounds %struct.control_flow_graph, ptr %557, i64 0, i32 1
  %559 = load ptr, ptr %558, align 8, !tbaa !63
  %560 = icmp eq ptr %554, %559
  br i1 %560, label %561, label %167, !llvm.loop !98

561:                                              ; preds = %551, %151
  call fastcc void @dataflow_set_destroy(ptr noundef nonnull %1)
  %562 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !50
  %563 = icmp eq i32 %562, 0
  br i1 %563, label %573, label %564

564:                                              ; preds = %561
  %565 = load ptr, ptr @changed_variables_stack, align 8, !tbaa !35
  %566 = icmp eq ptr %565, null
  br i1 %566, label %568, label %567

567:                                              ; preds = %564
  call void @free(ptr noundef %565)
  br label %568

568:                                              ; preds = %567, %564
  store ptr null, ptr @changed_variables_stack, align 8, !tbaa !35
  %569 = load ptr, ptr @changed_values_stack, align 8, !tbaa !35
  %570 = icmp eq ptr %569, null
  br i1 %570, label %572, label %571

571:                                              ; preds = %568
  call void @free(ptr noundef %569)
  br label %572

572:                                              ; preds = %571, %568
  store ptr null, ptr @changed_values_stack, align 8, !tbaa !35
  br label %573

573:                                              ; preds = %572, %561
  store i1 false, ptr @emit_notes, align 1
  call void @llvm.lifetime.end.p0(i64 448, ptr nonnull %1) #21
  br label %574

574:                                              ; preds = %32, %16, %573
  call fastcc void @vt_finalize()
  br label %575

575:                                              ; preds = %574, %11, %0
  call fastcc void @delete_debug_insns()
  store i32 %2, ptr @flag_var_tracking_assignments, align 4, !tbaa !50
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_handle_var_tracking() #10 !prof !99 !PGOFuncName !100 {
  %1 = load i32, ptr @flag_var_tracking, align 4, !tbaa !50
  %2 = trunc i32 %1 to i8
  ret i8 %2
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @delete_debug_insns() unnamed_addr #9 !prof !34 {
  %1 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !50
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %57, label %3

3:                                                ; preds = %0
  %4 = load ptr, ptr @cfun, align 8, !tbaa !35
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !54
  %7 = load ptr, ptr %6, align 8, !tbaa !60
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !61
  %10 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !63
  %12 = icmp eq ptr %9, %11
  br i1 %12, label %57, label %13

13:                                               ; preds = %3, %48
  %14 = phi ptr [ %50, %48 ], [ %9, %3 ]
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %14, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !46
  %17 = load ptr, ptr %16, align 8, !tbaa !81
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 0, i32 1, i32 0, i32 0, i64 2
  %21 = load ptr, ptr %20, align 8, !tbaa !46
  br label %22

22:                                               ; preds = %13, %19
  %23 = phi ptr [ %21, %19 ], [ null, %13 ]
  %24 = icmp eq ptr %17, null
  br i1 %24, label %48, label %25

25:                                               ; preds = %22, %45
  %26 = phi ptr [ %46, %45 ], [ %23, %22 ]
  %27 = phi ptr [ %26, %45 ], [ %17, %22 ]
  %28 = load ptr, ptr %15, align 8, !tbaa !46
  %29 = getelementptr inbounds %struct.rtl_bb_info, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !101
  %31 = getelementptr inbounds %struct.rtx_def, ptr %30, i64 0, i32 1, i32 0, i32 0, i64 2
  %32 = load ptr, ptr %31, align 8, !tbaa !46
  %33 = icmp eq ptr %27, %32
  br i1 %33, label %48, label %34

34:                                               ; preds = %25
  %35 = load i32, ptr %27, align 8
  %36 = and i32 %35, 65535
  %37 = icmp eq i32 %36, 7
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = tail call ptr @delete_insn(ptr noundef nonnull %27) #21
  br label %40

40:                                               ; preds = %34, %38
  %41 = icmp eq ptr %26, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %40
  %43 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1, i32 0, i32 0, i64 2
  %44 = load ptr, ptr %43, align 8, !tbaa !46
  br label %45

45:                                               ; preds = %40, %42
  %46 = phi ptr [ %44, %42 ], [ null, %40 ]
  %47 = icmp eq ptr %26, null
  br i1 %47, label %48, label %25, !llvm.loop !102

48:                                               ; preds = %45, %25, %22
  %49 = getelementptr inbounds %struct.basic_block_def, ptr %14, i64 0, i32 6
  %50 = load ptr, ptr %49, align 8, !tbaa !61
  %51 = load ptr, ptr @cfun, align 8, !tbaa !35
  %52 = getelementptr inbounds %struct.function, ptr %51, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !54
  %54 = getelementptr inbounds %struct.control_flow_graph, ptr %53, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !63
  %56 = icmp eq ptr %50, %55
  br i1 %56, label %57, label %13, !llvm.loop !103

57:                                               ; preds = %48, %3, %0
  ret void
}

declare zeroext i8 @mark_dfs_back_edges() local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef zeroext i8 @vt_initialize() unnamed_addr #9 !prof !34 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca %struct.adjust_mem_data, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  tail call void @alloc_aux_for_blocks(i32 noundef 920) #21
  %8 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.3, i64 noundef 32, i64 noundef 1024) #21
  store ptr %8, ptr @attrs_pool, align 8, !tbaa !35
  %9 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.4, i64 noundef 400, i64 noundef 64) #21
  store ptr %9, ptr @var_pool, align 8, !tbaa !35
  %10 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.5, i64 noundef 32, i64 noundef 1024) #21
  store ptr %10, ptr @loc_chain_pool, align 8, !tbaa !35
  %11 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.6, i64 noundef 16, i64 noundef 256) #21
  store ptr %11, ptr @shared_hash_pool, align 8, !tbaa !35
  %12 = tail call ptr @pool_alloc(ptr noundef %11) #21
  store ptr %12, ptr @empty_shared_hash, align 8, !tbaa !35
  store i32 1, ptr %12, align 8, !tbaa !75
  %13 = tail call ptr @htab_create(i64 noundef 1, ptr noundef nonnull @variable_htab_hash, ptr noundef nonnull @variable_htab_eq, ptr noundef nonnull @variable_htab_free) #21
  %14 = load ptr, ptr @empty_shared_hash, align 8, !tbaa !35
  %15 = getelementptr inbounds %struct.shared_hash_def, ptr %14, i64 0, i32 1
  store ptr %13, ptr %15, align 8, !tbaa !83
  %16 = tail call ptr @htab_create(i64 noundef 10, ptr noundef nonnull @variable_htab_hash, ptr noundef nonnull @variable_htab_eq, ptr noundef nonnull @variable_htab_free) #21
  store ptr %16, ptr @changed_variables, align 8, !tbaa !35
  %17 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !50
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %0
  %20 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.7, i64 noundef 24, i64 noundef 1024) #21
  store ptr %20, ptr @value_chain_pool, align 8, !tbaa !35
  %21 = tail call ptr @htab_create(i64 noundef 32, ptr noundef nonnull @value_chain_htab_hash, ptr noundef nonnull @value_chain_htab_eq, ptr noundef null) #21
  store ptr %21, ptr @value_chains, align 8, !tbaa !35
  br label %22

22:                                               ; preds = %19, %0
  %23 = load ptr, ptr @cfun, align 8, !tbaa !35
  %24 = getelementptr inbounds %struct.function, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !54
  %26 = load ptr, ptr %25, align 8, !tbaa !35
  %27 = icmp eq ptr %26, null
  br i1 %27, label %55, label %28

28:                                               ; preds = %22
  %29 = load ptr, ptr @empty_shared_hash, align 8, !tbaa !35
  %30 = load ptr, ptr @empty_shared_hash, align 8, !tbaa !35
  br label %31

31:                                               ; preds = %28, %31
  %32 = phi ptr [ %53, %31 ], [ %26, %28 ]
  %33 = getelementptr inbounds %struct.basic_block_def, ptr %32, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !65
  %35 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %34, i64 0, i32 4
  store i8 0, ptr %35, align 8, !tbaa !104
  %36 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %34, i64 0, i32 5
  store i8 0, ptr %36, align 1, !tbaa !105
  %37 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %34, i64 0, i32 1, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(424) %37, i8 0, i64 424, i1 false), !tbaa !35
  %38 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %34, i64 0, i32 1
  %39 = load i32, ptr %29, align 8, !tbaa !75
  %40 = add nsw i32 %39, 1
  store i32 %40, ptr %29, align 8, !tbaa !75
  %41 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %34, i64 0, i32 1, i32 2
  store ptr %29, ptr %41, align 8, !tbaa !77
  store i64 0, ptr %38, align 8, !tbaa !79
  %42 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %34, i64 0, i32 1, i32 3
  store ptr null, ptr %42, align 8, !tbaa !80
  %43 = load ptr, ptr %33, align 8, !tbaa !65
  %44 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %43, i64 0, i32 2, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(424) %44, i8 0, i64 424, i1 false), !tbaa !35
  %45 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %43, i64 0, i32 2
  %46 = load i32, ptr %30, align 8, !tbaa !75
  %47 = add nsw i32 %46, 1
  store i32 %47, ptr %30, align 8, !tbaa !75
  %48 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %43, i64 0, i32 2, i32 2
  store ptr %30, ptr %48, align 8, !tbaa !77
  store i64 0, ptr %45, align 8, !tbaa !79
  %49 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %43, i64 0, i32 2, i32 3
  store ptr null, ptr %49, align 8, !tbaa !80
  %50 = load ptr, ptr %33, align 8, !tbaa !65
  %51 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %50, i64 0, i32 3
  store ptr null, ptr %51, align 8, !tbaa !106
  %52 = getelementptr inbounds %struct.basic_block_def, ptr %32, i64 0, i32 6
  %53 = load ptr, ptr %52, align 8, !tbaa !35
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %31, !llvm.loop !107

55:                                               ; preds = %31, %22
  %56 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !50
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %55
  tail call void @cselib_init(i32 noundef 3) #21
  %59 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #21
  store ptr %59, ptr @scratch_regs, align 8, !tbaa !35
  %60 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.8, i64 noundef 40, i64 noundef 256) #21
  store ptr %60, ptr @valvar_pool, align 8, !tbaa !35
  %61 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 256) #21
  store ptr %61, ptr @preserved_values, align 8, !tbaa !35
  br label %63

62:                                               ; preds = %55
  store ptr null, ptr @scratch_regs, align 8, !tbaa !35
  store ptr null, ptr @valvar_pool, align 8, !tbaa !35
  br label %63

63:                                               ; preds = %62, %58
  %64 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 41), align 1, !tbaa !108
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %66, label %235

66:                                               ; preds = %63
  %67 = load ptr, ptr @cfun, align 8, !tbaa !35
  %68 = getelementptr inbounds %struct.function, ptr %67, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !54
  %70 = load ptr, ptr %69, align 8, !tbaa !60
  %71 = getelementptr inbounds %struct.basic_block_def, ptr %70, i64 0, i32 2
  %72 = load ptr, ptr %71, align 8, !tbaa !65
  %73 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %72, i64 0, i32 4
  store i8 1, ptr %73, align 8, !tbaa !104
  %74 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %72, i64 0, i32 1
  store i64 4, ptr %74, align 8, !tbaa !117
  %75 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %72, i64 0, i32 2
  store i64 4, ptr %75, align 8, !tbaa !118
  %76 = getelementptr inbounds %struct.control_flow_graph, ptr %69, i64 0, i32 3
  %77 = load i32, ptr %76, align 8, !tbaa !56
  %78 = add nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  %80 = shl nsw i64 %79, 4
  %81 = tail call ptr @xmalloc(i64 noundef %80) #21
  %82 = load ptr, ptr @cfun, align 8, !tbaa !35
  %83 = getelementptr inbounds %struct.function, ptr %82, i64 0, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !54
  %85 = load ptr, ptr %84, align 8, !tbaa !60
  %86 = getelementptr inbounds %struct.basic_block_def, ptr %85, i64 0, i32 1
  store i32 0, ptr %81, align 8, !tbaa.struct !119
  %87 = getelementptr inbounds i8, ptr %81, i64 8
  store ptr %86, ptr %87, align 8, !tbaa.struct !120
  br label %88

88:                                               ; preds = %214, %66
  %89 = phi i32 [ 1, %66 ], [ %215, %214 ]
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %217, label %91

91:                                               ; preds = %88
  %92 = sext i32 %89 to i64
  %93 = getelementptr %struct.edge_iterator, ptr %81, i64 %92
  %94 = getelementptr %struct.edge_iterator, ptr %93, i64 -1
  %95 = load i32, ptr %94, align 8, !tbaa.struct !119
  %96 = getelementptr %struct.edge_iterator, ptr %93, i64 -1, i32 1
  %97 = load ptr, ptr %96, align 8, !tbaa.struct !120
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %100

99:                                               ; preds = %91
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 687, ptr noundef nonnull @.str.2) #21
  br label %100

100:                                              ; preds = %99, %91
  %101 = load ptr, ptr %97, align 8, !tbaa !35, !nonnull !121, !noundef !121
  %102 = zext i32 %95 to i64
  %103 = getelementptr inbounds %struct.VEC_edge_base, ptr %101, i64 0, i32 2, i64 %102
  %104 = load ptr, ptr %103, align 8, !tbaa !35
  %105 = load ptr, ptr %104, align 8, !tbaa !122
  %106 = getelementptr inbounds %struct.edge_def, ptr %104, i64 0, i32 1
  %107 = load ptr, ptr %106, align 8, !tbaa !124
  %108 = getelementptr inbounds %struct.basic_block_def, ptr %107, i64 0, i32 2
  %109 = load ptr, ptr %108, align 8, !tbaa !65
  %110 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %109, i64 0, i32 4
  %111 = load i8, ptr %110, align 8, !tbaa !104
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %113, label %173

113:                                              ; preds = %100
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #21
  store i8 1, ptr %110, align 8, !tbaa !104
  %114 = getelementptr inbounds %struct.basic_block_def, ptr %105, i64 0, i32 2
  %115 = load ptr, ptr %114, align 8, !tbaa !65
  %116 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %115, i64 0, i32 2
  %117 = load i64, ptr %116, align 8, !tbaa !118
  %118 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %109, i64 0, i32 1
  store i64 %117, ptr %118, align 8, !tbaa !117
  %119 = load ptr, ptr @cfun, align 8, !tbaa !35
  %120 = getelementptr inbounds %struct.function, ptr %119, i64 0, i32 1
  %121 = load ptr, ptr %120, align 8, !tbaa !54
  %122 = getelementptr inbounds %struct.control_flow_graph, ptr %121, i64 0, i32 1
  %123 = load ptr, ptr %122, align 8, !tbaa !63
  %124 = icmp eq ptr %107, %123
  br i1 %124, label %156, label %125

125:                                              ; preds = %113
  %126 = getelementptr inbounds %struct.basic_block_def, ptr %107, i64 0, i32 7
  %127 = load ptr, ptr %126, align 8, !tbaa !46
  %128 = load ptr, ptr %127, align 8, !tbaa !46
  %129 = getelementptr inbounds %struct.rtl_bb_info, ptr %127, i64 0, i32 1
  %130 = load ptr, ptr %129, align 8, !tbaa !101
  %131 = getelementptr inbounds %struct.rtx_def, ptr %130, i64 0, i32 1, i32 0, i32 0, i64 2
  %132 = load ptr, ptr %131, align 8, !tbaa !46
  %133 = icmp eq ptr %128, %132
  br i1 %133, label %156, label %134

134:                                              ; preds = %125, %146
  %135 = phi ptr [ %149, %146 ], [ %128, %125 ]
  %136 = phi i64 [ %147, %146 ], [ %117, %125 ]
  %137 = load i32, ptr %135, align 8
  %138 = and i32 %137, 65535
  %139 = add nsw i32 %138, -7
  %140 = icmp ult i32 %139, 4
  br i1 %140, label %141, label %146

141:                                              ; preds = %134
  call fastcc void @insn_stack_adjust_offset_pre_post(ptr noundef nonnull %135, ptr noundef nonnull %4, ptr noundef nonnull %5)
  %142 = load i64, ptr %4, align 8, !tbaa !125
  %143 = load i64, ptr %5, align 8, !tbaa !125
  %144 = add i64 %142, %136
  %145 = add i64 %144, %143
  br label %146

146:                                              ; preds = %141, %134
  %147 = phi i64 [ %145, %141 ], [ %136, %134 ]
  %148 = getelementptr inbounds %struct.rtx_def, ptr %135, i64 0, i32 1, i32 0, i32 0, i64 2
  %149 = load ptr, ptr %148, align 8, !tbaa !46
  %150 = load ptr, ptr %126, align 8, !tbaa !46
  %151 = getelementptr inbounds %struct.rtl_bb_info, ptr %150, i64 0, i32 1
  %152 = load ptr, ptr %151, align 8, !tbaa !101
  %153 = getelementptr inbounds %struct.rtx_def, ptr %152, i64 0, i32 1, i32 0, i32 0, i64 2
  %154 = load ptr, ptr %153, align 8, !tbaa !46
  %155 = icmp eq ptr %149, %154
  br i1 %155, label %156, label %134, !llvm.loop !126

156:                                              ; preds = %146, %125, %113
  %157 = phi i64 [ %117, %113 ], [ %117, %125 ], [ %147, %146 ]
  %158 = load ptr, ptr %108, align 8, !tbaa !65
  %159 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %158, i64 0, i32 2
  store i64 %157, ptr %159, align 8, !tbaa !118
  %160 = getelementptr inbounds %struct.basic_block_def, ptr %107, i64 0, i32 1
  %161 = load ptr, ptr %160, align 8, !tbaa !127
  %162 = icmp eq ptr %161, null
  br i1 %162, label %165, label %163

163:                                              ; preds = %156
  %164 = load i32, ptr %161, align 8, !tbaa !128
  br label %165

165:                                              ; preds = %163, %156
  %166 = phi i32 [ %164, %163 ], [ 0, %156 ]
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %171, label %168

168:                                              ; preds = %165
  %169 = add nsw i32 %89, 1
  store i32 0, ptr %93, align 8, !tbaa.struct !119
  %170 = getelementptr inbounds i8, ptr %93, i64 8
  store ptr %160, ptr %170, align 8, !tbaa.struct !120
  br label %171

171:                                              ; preds = %168, %165
  %172 = phi i32 [ %169, %168 ], [ %89, %165 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  br label %214

173:                                              ; preds = %100
  %174 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %109, i64 0, i32 1
  %175 = load i64, ptr %174, align 8, !tbaa !117
  %176 = getelementptr inbounds %struct.basic_block_def, ptr %105, i64 0, i32 2
  %177 = load ptr, ptr %176, align 8, !tbaa !65
  %178 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %177, i64 0, i32 2
  %179 = load i64, ptr %178, align 8, !tbaa !118
  %180 = icmp eq i64 %175, %179
  br i1 %180, label %182, label %181

181:                                              ; preds = %173
  tail call void @free(ptr noundef %81)
  br label %214

182:                                              ; preds = %173
  %183 = load i32, ptr %101, align 8, !tbaa !128
  %184 = add i32 %95, 1
  %185 = icmp eq i32 %184, %183
  br i1 %185, label %212, label %186

186:                                              ; preds = %182
  %187 = load i32, ptr %94, align 8
  %188 = load ptr, ptr %96, align 8
  %189 = icmp eq ptr %188, null
  br i1 %189, label %190, label %191

190:                                              ; preds = %186
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 687, ptr noundef nonnull @.str.2) #21
  br label %191

191:                                              ; preds = %190, %186
  %192 = load ptr, ptr %188, align 8, !tbaa !35
  %193 = icmp eq ptr %192, null
  br i1 %193, label %200, label %194

194:                                              ; preds = %191
  %195 = load ptr, ptr %96, align 8
  %196 = icmp eq ptr %195, null
  br i1 %196, label %197, label %198

197:                                              ; preds = %194
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 687, ptr noundef nonnull @.str.2) #21
  br label %198

198:                                              ; preds = %197, %194
  %199 = load ptr, ptr %195, align 8, !tbaa !35
  br label %200

200:                                              ; preds = %198, %191
  %201 = phi ptr [ %199, %198 ], [ null, %191 ]
  %202 = icmp eq ptr %201, null
  br i1 %202, label %205, label %203

203:                                              ; preds = %200
  %204 = load i32, ptr %201, align 8, !tbaa !128
  br label %205

205:                                              ; preds = %203, %200
  %206 = phi i32 [ %204, %203 ], [ 0, %200 ]
  %207 = icmp ult i32 %187, %206
  br i1 %207, label %209, label %208

208:                                              ; preds = %205
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 738, ptr noundef nonnull @.str.2) #21
  br label %209

209:                                              ; preds = %208, %205
  %210 = load i32, ptr %94, align 8, !tbaa !130
  %211 = add i32 %210, 1
  store i32 %211, ptr %94, align 8, !tbaa !130
  br label %214

212:                                              ; preds = %182
  %213 = add nsw i32 %89, -1
  br label %214

214:                                              ; preds = %212, %209, %181, %171
  %215 = phi i32 [ %89, %181 ], [ %213, %212 ], [ %89, %209 ], [ %172, %171 ]
  %216 = phi i1 [ false, %181 ], [ true, %212 ], [ true, %209 ], [ true, %171 ]
  br i1 %216, label %88, label %218, !llvm.loop !132

217:                                              ; preds = %88
  tail call void @free(ptr noundef %81)
  br label %218

218:                                              ; preds = %214, %217
  br i1 %90, label %219, label %890

219:                                              ; preds = %218
  %220 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 5), align 8, !tbaa !35
  %221 = tail call ptr @eliminate_regs(ptr noundef %220, i32 noundef 0, ptr noundef null) #21
  %222 = icmp eq ptr %221, %220
  br i1 %222, label %279, label %223

223:                                              ; preds = %219
  %224 = load i32, ptr %221, align 8
  %225 = and i32 %224, 65535
  %226 = icmp eq i32 %225, 49
  br i1 %226, label %227, label %230

227:                                              ; preds = %223
  %228 = getelementptr inbounds %struct.rtx_def, ptr %221, i64 0, i32 1
  %229 = load ptr, ptr %228, align 8, !tbaa !46
  br label %230

230:                                              ; preds = %227, %223
  %231 = phi ptr [ %229, %227 ], [ %221, %223 ]
  %232 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !35
  %233 = icmp eq ptr %231, %232
  br i1 %233, label %234, label %279

234:                                              ; preds = %230
  tail call fastcc void @vt_init_cfa_base()
  br label %279

235:                                              ; preds = %63
  %236 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 44), align 8, !tbaa !133
  %237 = icmp eq i8 %236, 0
  br i1 %237, label %238, label %279

238:                                              ; preds = %235
  %239 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 5), align 8, !tbaa !35
  %240 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 3, i32 2), align 8, !tbaa !134
  %241 = sext i32 %240 to i64
  %242 = tail call ptr @eliminate_regs(ptr noundef %239, i32 noundef 0, ptr noundef null) #21
  %243 = icmp eq ptr %242, %239
  br i1 %243, label %279, label %244

244:                                              ; preds = %238
  %245 = load i32, ptr %242, align 8
  %246 = and i32 %245, 65535
  %247 = icmp eq i32 %246, 49
  br i1 %247, label %248, label %256

248:                                              ; preds = %244
  %249 = getelementptr inbounds %struct.rtx_def, ptr %242, i64 0, i32 1
  %250 = getelementptr inbounds %struct.rtx_def, ptr %242, i64 0, i32 1, i32 0, i32 0, i64 1
  %251 = load ptr, ptr %250, align 8, !tbaa !46
  %252 = getelementptr inbounds %struct.rtx_def, ptr %251, i64 0, i32 1
  %253 = load i64, ptr %252, align 8, !tbaa !46
  %254 = sub nsw i64 %241, %253
  %255 = load ptr, ptr %249, align 8, !tbaa !46
  br label %256

256:                                              ; preds = %248, %244
  %257 = phi ptr [ %255, %248 ], [ %242, %244 ]
  %258 = phi i64 [ %254, %248 ], [ %241, %244 ]
  %259 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 4), align 16, !tbaa !35
  %260 = icmp eq ptr %257, %259
  br i1 %260, label %261, label %279

261:                                              ; preds = %256
  %262 = load ptr, ptr @cfun, align 8, !tbaa !35
  %263 = getelementptr inbounds %struct.function, ptr %262, i64 0, i32 1
  %264 = load ptr, ptr %263, align 8, !tbaa !54
  %265 = load ptr, ptr %264, align 8, !tbaa !60
  %266 = getelementptr inbounds %struct.basic_block_def, ptr %265, i64 0, i32 1
  %267 = load ptr, ptr %266, align 8, !tbaa !127
  %268 = icmp eq ptr %267, null
  br i1 %268, label %272, label %269

269:                                              ; preds = %261
  %270 = load i32, ptr %267, align 8, !tbaa !128
  %271 = icmp eq i32 %270, 1
  br i1 %271, label %273, label %272

272:                                              ; preds = %269, %261
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 645, ptr noundef nonnull @.str.2) #21
  br label %273

273:                                              ; preds = %269, %272
  %274 = load ptr, ptr %266, align 8, !tbaa !127
  %275 = getelementptr inbounds %struct.VEC_edge_base, ptr %274, i64 0, i32 2, i64 0
  %276 = load ptr, ptr %275, align 8, !tbaa !35
  %277 = getelementptr inbounds %struct.edge_def, ptr %276, i64 0, i32 1
  %278 = load ptr, ptr %277, align 8, !tbaa !124
  br label %279

279:                                              ; preds = %230, %234, %219, %238, %273, %256, %235
  %280 = phi i64 [ -1, %235 ], [ %258, %273 ], [ %241, %238 ], [ -1, %256 ], [ -1, %219 ], [ -1, %234 ], [ -1, %230 ]
  %281 = phi ptr [ null, %235 ], [ %278, %273 ], [ null, %238 ], [ null, %256 ], [ null, %219 ], [ null, %234 ], [ null, %230 ]
  store i64 -1, ptr @hard_frame_pointer_adjustment, align 8, !tbaa !125
  %282 = load ptr, ptr @cfun, align 8, !tbaa !35
  %283 = getelementptr inbounds %struct.function, ptr %282, i64 0, i32 1
  %284 = load ptr, ptr %283, align 8, !tbaa !54
  %285 = load ptr, ptr %284, align 8, !tbaa !60
  %286 = getelementptr inbounds %struct.basic_block_def, ptr %285, i64 0, i32 6
  %287 = load ptr, ptr %286, align 8, !tbaa !61
  %288 = getelementptr inbounds %struct.control_flow_graph, ptr %284, i64 0, i32 1
  %289 = load ptr, ptr %288, align 8, !tbaa !63
  %290 = icmp eq ptr %287, %289
  br i1 %290, label %689, label %291

291:                                              ; preds = %279
  %292 = getelementptr inbounds %struct.adjust_mem_data, ptr %3, i64 0, i32 1
  %293 = getelementptr inbounds %struct.adjust_mem_data, ptr %3, i64 0, i32 2
  %294 = getelementptr inbounds %struct.adjust_mem_data, ptr %3, i64 0, i32 3
  br label %295

295:                                              ; preds = %291, %681
  %296 = phi ptr [ %287, %291 ], [ %682, %681 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #21
  store i64 0, ptr %7, align 8, !tbaa !125
  %297 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !50
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %309, label %299

299:                                              ; preds = %295
  store ptr @add_with_sets, ptr @cselib_record_sets_hook, align 8, !tbaa !35
  %300 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %301 = icmp eq ptr %300, null
  br i1 %301, label %309, label %302

302:                                              ; preds = %299
  %303 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %304 = and i32 %303, 8
  %305 = icmp eq i32 %304, 0
  br i1 %305, label %309, label %306

306:                                              ; preds = %302
  %307 = call i32 @cselib_get_next_uid() #21
  %308 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %300, ptr noundef nonnull @.str.9, i32 noundef %307)
  br label %309

309:                                              ; preds = %299, %302, %306, %295
  br label %310

310:                                              ; preds = %309, %340
  %311 = phi ptr [ %342, %340 ], [ %296, %309 ]
  %312 = getelementptr inbounds %struct.basic_block_def, ptr %311, i64 0, i32 6
  %313 = load ptr, ptr %312, align 8, !tbaa !61
  %314 = load ptr, ptr @cfun, align 8, !tbaa !35
  %315 = getelementptr inbounds %struct.function, ptr %314, i64 0, i32 1
  %316 = load ptr, ptr %315, align 8, !tbaa !54
  %317 = getelementptr inbounds %struct.control_flow_graph, ptr %316, i64 0, i32 1
  %318 = load ptr, ptr %317, align 8, !tbaa !63
  %319 = icmp eq ptr %313, %318
  br i1 %319, label %340, label %320

320:                                              ; preds = %310
  %321 = load ptr, ptr %313, align 8, !tbaa !135
  %322 = icmp eq ptr %321, null
  br i1 %322, label %327, label %323

323:                                              ; preds = %320
  %324 = load i32, ptr %321, align 8, !tbaa !128
  %325 = icmp eq i32 %324, 1
  %326 = zext i1 %325 to i8
  br label %327

327:                                              ; preds = %320, %323
  %328 = phi i8 [ %326, %323 ], [ 0, %320 ]
  %329 = icmp eq i8 %328, 0
  br i1 %329, label %340, label %330

330:                                              ; preds = %327
  %331 = call ptr @find_edge(ptr noundef %311, ptr noundef nonnull %313) #21
  %332 = icmp eq ptr %331, null
  br i1 %332, label %340, label %333

333:                                              ; preds = %330
  %334 = getelementptr inbounds %struct.edge_def, ptr %331, i64 0, i32 7
  %335 = load i32, ptr %334, align 8, !tbaa !136
  %336 = and i32 %335, 1
  %337 = icmp eq i32 %336, 0
  br i1 %337, label %340, label %338

338:                                              ; preds = %333
  %339 = load ptr, ptr %312, align 8, !tbaa !61
  br label %340

340:                                              ; preds = %310, %330, %333, %327, %338
  %341 = phi i1 [ true, %338 ], [ false, %327 ], [ false, %333 ], [ false, %330 ], [ false, %310 ]
  %342 = phi ptr [ %339, %338 ], [ %311, %327 ], [ %311, %333 ], [ %311, %330 ], [ %311, %310 ]
  br i1 %341, label %310, label %343

343:                                              ; preds = %340
  %344 = getelementptr inbounds %struct.basic_block_def, ptr %342, i64 0, i32 6
  %345 = load ptr, ptr %344, align 8, !tbaa !61
  %346 = icmp eq ptr %296, %345
  br i1 %346, label %675, label %347

347:                                              ; preds = %343, %670
  %348 = phi ptr [ %672, %670 ], [ %296, %343 ]
  %349 = getelementptr inbounds %struct.basic_block_def, ptr %348, i64 0, i32 2
  %350 = load ptr, ptr %349, align 8, !tbaa !65
  %351 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %350, i64 0, i32 2
  %352 = load i64, ptr %351, align 8, !tbaa !118
  %353 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %350, i64 0, i32 1
  %354 = load i64, ptr %353, align 8, !tbaa !117
  store i64 %354, ptr %351, align 8, !tbaa !118
  %355 = getelementptr inbounds %struct.basic_block_def, ptr %348, i64 0, i32 7
  %356 = load ptr, ptr %355, align 8, !tbaa !46
  %357 = load ptr, ptr %356, align 8, !tbaa !46
  %358 = getelementptr inbounds %struct.rtl_bb_info, ptr %356, i64 0, i32 1
  %359 = load ptr, ptr %358, align 8, !tbaa !101
  %360 = getelementptr inbounds %struct.rtx_def, ptr %359, i64 0, i32 1, i32 0, i32 0, i64 2
  %361 = load ptr, ptr %360, align 8, !tbaa !46
  %362 = icmp eq ptr %357, %361
  br i1 %362, label %664, label %363

363:                                              ; preds = %347
  %364 = getelementptr inbounds %struct.basic_block_def, ptr %348, i64 0, i32 9
  %365 = icmp eq ptr %348, %281
  br label %366

366:                                              ; preds = %363, %655
  %367 = phi ptr [ %357, %363 ], [ %657, %655 ]
  %368 = load i32, ptr %367, align 8
  %369 = and i32 %368, 65535
  %370 = add nsw i32 %369, -7
  %371 = icmp ult i32 %370, 4
  br i1 %371, label %372, label %655

372:                                              ; preds = %366
  %373 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 41), align 1, !tbaa !108
  %374 = icmp eq i8 %373, 0
  br i1 %374, label %375, label %424

375:                                              ; preds = %372
  call fastcc void @insn_stack_adjust_offset_pre_post(ptr noundef nonnull %367, ptr noundef nonnull %6, ptr noundef nonnull %7)
  %376 = load i64, ptr %6, align 8, !tbaa !125
  %377 = icmp eq i64 %376, 0
  br i1 %377, label %424, label %378

378:                                              ; preds = %375
  %379 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %380 = icmp eq ptr %379, null
  br i1 %380, label %401, label %381

381:                                              ; preds = %378
  %382 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %383 = and i32 %382, 8
  %384 = icmp eq i32 %383, 0
  br i1 %384, label %401, label %385

385:                                              ; preds = %381
  %386 = getelementptr inbounds %struct.basic_block_def, ptr %348, i64 0, i32 9
  %387 = getelementptr inbounds %struct.rtx_def, ptr %367, i64 1
  %388 = load ptr, ptr %387, align 8, !tbaa !46
  %389 = load i32, ptr %386, align 8, !tbaa !64
  %390 = load ptr, ptr %349, align 8, !tbaa !65
  %391 = load ptr, ptr %390, align 8, !tbaa !84
  %392 = icmp eq ptr %391, null
  br i1 %392, label %395, label %393

393:                                              ; preds = %385
  %394 = load i32, ptr %391, align 8, !tbaa !86
  br label %395

395:                                              ; preds = %385, %393
  %396 = phi i32 [ %394, %393 ], [ 0, %385 ]
  %397 = getelementptr inbounds %struct.rtx_def, ptr %367, i64 0, i32 1
  %398 = load i32, ptr %397, align 8, !tbaa !46
  %399 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %379, ptr noundef nonnull @.str.11, i32 noundef %389, i32 noundef %396, i32 noundef %398, ptr noundef nonnull @.str.21)
  call void @print_inline_rtx(ptr noundef nonnull %379, ptr noundef %388, i32 noundef 2) #21
  %400 = call i32 @fputc(i32 noundef 10, ptr noundef nonnull %379)
  br label %401

401:                                              ; preds = %395, %381, %378
  %402 = load ptr, ptr %349, align 8, !tbaa !65
  %403 = load ptr, ptr %402, align 8, !tbaa !35
  %404 = icmp eq ptr %403, null
  br i1 %404, label %410, label %405

405:                                              ; preds = %401
  %406 = getelementptr inbounds %struct.VEC_micro_operation_base, ptr %403, i64 0, i32 1
  %407 = load i32, ptr %406, align 4, !tbaa !137
  %408 = load i32, ptr %403, align 8, !tbaa !86
  %409 = icmp eq i32 %407, %408
  br i1 %409, label %410, label %412

410:                                              ; preds = %401, %405
  %411 = call ptr @vec_heap_o_reserve(ptr noundef %403, i32 noundef 1, i64 noundef 8, i64 noundef 24) #21
  store ptr %411, ptr %402, align 8, !tbaa !35
  br label %412

412:                                              ; preds = %405, %410
  %413 = load ptr, ptr %402, align 8, !tbaa !35
  %414 = load i32, ptr %413, align 8, !tbaa !86
  %415 = add i32 %414, 1
  store i32 %415, ptr %413, align 8, !tbaa !86
  %416 = zext i32 %414 to i64
  %417 = getelementptr inbounds %struct.VEC_micro_operation_base, ptr %413, i64 0, i32 2, i64 %416
  store i32 9, ptr %417, align 8, !tbaa.struct !138
  %418 = getelementptr inbounds i8, ptr %417, i64 8
  store ptr %367, ptr %418, align 8, !tbaa.struct !139
  %419 = getelementptr inbounds i8, ptr %417, i64 16
  store i64 %376, ptr %419, align 8, !tbaa.struct !140
  %420 = load ptr, ptr %349, align 8, !tbaa !65
  %421 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %420, i64 0, i32 2
  %422 = load i64, ptr %421, align 8, !tbaa !118
  %423 = add nsw i64 %422, %376
  store i64 %423, ptr %421, align 8, !tbaa !118
  br label %424

424:                                              ; preds = %375, %412, %372
  store i1 false, ptr @cselib_hook_called, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #21
  store i32 0, ptr %292, align 4, !tbaa !141
  %425 = load ptr, ptr %349, align 8, !tbaa !65
  %426 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %425, i64 0, i32 2
  %427 = load i64, ptr %426, align 8, !tbaa !118
  %428 = sub nsw i64 0, %427
  store i64 %428, ptr %293, align 8, !tbaa !143
  store ptr null, ptr %294, align 8, !tbaa !144
  store i8 1, ptr %3, align 8, !tbaa !145
  %429 = getelementptr inbounds %struct.rtx_def, ptr %367, i64 1
  %430 = load ptr, ptr %429, align 8, !tbaa !46
  call void @note_stores(ptr noundef %430, ptr noundef nonnull @adjust_mem_stores, ptr noundef nonnull %3) #21
  store i8 0, ptr %3, align 8, !tbaa !145
  call void @note_uses(ptr noundef nonnull %429, ptr noundef nonnull @adjust_mem_uses, ptr noundef nonnull %3) #21
  %431 = load i32, ptr %367, align 8
  %432 = and i32 %431, 65535
  %433 = add nsw i32 %432, -7
  %434 = icmp ult i32 %433, 4
  br i1 %434, label %435, label %442

435:                                              ; preds = %424
  %436 = load ptr, ptr %429, align 8, !tbaa !46
  %437 = load i32, ptr %436, align 8
  %438 = and i32 %437, 65535
  %439 = icmp eq i32 %438, 23
  br i1 %439, label %442, label %440

440:                                              ; preds = %435
  %441 = call ptr @single_set_2(ptr noundef nonnull %367, ptr noundef nonnull %436) #21
  br label %442

442:                                              ; preds = %440, %435, %424
  %443 = phi ptr [ %441, %440 ], [ null, %424 ], [ %436, %435 ]
  %444 = icmp eq ptr %443, null
  br i1 %444, label %465, label %445

445:                                              ; preds = %442
  %446 = getelementptr inbounds %struct.rtx_def, ptr %443, i64 0, i32 1, i32 0, i32 0, i64 1
  %447 = load ptr, ptr %446, align 8, !tbaa !46
  %448 = load i32, ptr %447, align 8
  %449 = and i32 %448, 67174399
  %450 = icmp eq i32 %449, 67108907
  br i1 %450, label %451, label %465

451:                                              ; preds = %445
  %452 = call ptr @find_reg_equal_equiv_note(ptr noundef nonnull %367) #21
  %453 = icmp eq ptr %452, null
  br i1 %453, label %465, label %454

454:                                              ; preds = %451
  %455 = getelementptr inbounds %struct.rtx_def, ptr %452, i64 0, i32 1
  %456 = load ptr, ptr %455, align 8, !tbaa !46
  %457 = load i32, ptr %456, align 8
  %458 = and i32 %457, 65535
  %459 = zext nneg i32 %458 to i64
  %460 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %459
  %461 = load i32, ptr %460, align 4, !tbaa !50
  %462 = icmp eq i32 %461, 9
  br i1 %462, label %463, label %465

463:                                              ; preds = %454
  %464 = call zeroext i8 @validate_change(ptr noundef null, ptr noundef nonnull %446, ptr noundef nonnull %456, i8 noundef zeroext 1) #21
  br label %465

465:                                              ; preds = %463, %454, %451, %445, %442
  %466 = load ptr, ptr %294, align 8, !tbaa !144
  %467 = icmp eq ptr %466, null
  br i1 %467, label %538, label %468

468:                                              ; preds = %465
  %469 = load ptr, ptr %429, align 8, !tbaa !35
  %470 = load i32, ptr %469, align 8
  %471 = and i32 %470, 65535
  %472 = icmp eq i32 %471, 14
  %473 = getelementptr inbounds %struct.rtx_def, ptr %469, i64 0, i32 1, i32 0, i32 0, i64 1
  %474 = select i1 %472, ptr %473, ptr %429
  %475 = load ptr, ptr %474, align 8, !tbaa !35
  %476 = load i32, ptr %475, align 8
  %477 = and i32 %476, 65535
  %478 = icmp eq i32 %477, 15
  br i1 %478, label %479, label %483

479:                                              ; preds = %468
  %480 = getelementptr inbounds %struct.rtx_def, ptr %475, i64 0, i32 1
  %481 = load ptr, ptr %480, align 8, !tbaa !46
  %482 = load i32, ptr %481, align 8, !tbaa !146
  br label %483

483:                                              ; preds = %479, %468
  %484 = phi i32 [ %482, %479 ], [ 1, %468 ]
  br label %485

485:                                              ; preds = %483, %485
  %486 = phi i32 [ 0, %483 ], [ %490, %485 ]
  %487 = phi ptr [ %466, %483 ], [ %489, %485 ]
  %488 = getelementptr inbounds %struct.rtx_def, ptr %487, i64 0, i32 1, i32 0, i32 0, i64 1
  %489 = load ptr, ptr %488, align 8, !tbaa !46
  %490 = add nuw nsw i32 %486, 1
  %491 = icmp eq ptr %489, null
  br i1 %491, label %492, label %485, !llvm.loop !148

492:                                              ; preds = %485
  %493 = add nsw i32 %490, %484
  %494 = call ptr @rtvec_alloc(i32 noundef %493) #21
  %495 = call ptr @gen_rtx_fmt_E_stat(i32 noundef 15, i32 noundef 0, ptr noundef %494) #21
  %496 = load ptr, ptr %474, align 8, !tbaa !35
  %497 = load i32, ptr %496, align 8
  %498 = and i32 %497, 65535
  %499 = icmp eq i32 %498, 15
  br i1 %499, label %500, label %516

500:                                              ; preds = %492
  %501 = icmp sgt i32 %484, 0
  br i1 %501, label %502, label %520

502:                                              ; preds = %500
  %503 = getelementptr inbounds %struct.rtx_def, ptr %495, i64 0, i32 1
  %504 = zext nneg i32 %484 to i64
  br label %505

505:                                              ; preds = %502, %505
  %506 = phi i64 [ 0, %502 ], [ %514, %505 ]
  %507 = load ptr, ptr %474, align 8, !tbaa !35
  %508 = getelementptr inbounds %struct.rtx_def, ptr %507, i64 0, i32 1
  %509 = load ptr, ptr %508, align 8, !tbaa !46
  %510 = getelementptr inbounds %struct.rtvec_def, ptr %509, i64 0, i32 1, i64 %506
  %511 = load ptr, ptr %510, align 8, !tbaa !35
  %512 = load ptr, ptr %503, align 8, !tbaa !46
  %513 = getelementptr inbounds %struct.rtvec_def, ptr %512, i64 0, i32 1, i64 %506
  store ptr %511, ptr %513, align 8, !tbaa !35
  %514 = add nuw nsw i64 %506, 1
  %515 = icmp eq i64 %514, %504
  br i1 %515, label %520, label %505, !llvm.loop !149

516:                                              ; preds = %492
  %517 = getelementptr inbounds %struct.rtx_def, ptr %495, i64 0, i32 1
  %518 = load ptr, ptr %517, align 8, !tbaa !46
  %519 = getelementptr inbounds %struct.rtvec_def, ptr %518, i64 0, i32 1
  store ptr %496, ptr %519, align 8, !tbaa !35
  br label %520

520:                                              ; preds = %505, %500, %516
  %521 = load ptr, ptr %294, align 8, !tbaa !144
  %522 = getelementptr inbounds %struct.rtx_def, ptr %495, i64 0, i32 1
  %523 = sext i32 %484 to i64
  %524 = sext i32 %493 to i64
  br label %525

525:                                              ; preds = %520, %525
  %526 = phi i64 [ %523, %520 ], [ %532, %525 ]
  %527 = phi ptr [ %521, %520 ], [ %534, %525 ]
  %528 = getelementptr inbounds %struct.rtx_def, ptr %527, i64 0, i32 1
  %529 = load ptr, ptr %528, align 8, !tbaa !46
  %530 = load ptr, ptr %522, align 8, !tbaa !46
  %531 = getelementptr inbounds %struct.rtvec_def, ptr %530, i64 0, i32 1, i64 %526
  store ptr %529, ptr %531, align 8, !tbaa !35
  %532 = add nsw i64 %526, 1
  %533 = getelementptr inbounds %struct.rtx_def, ptr %527, i64 0, i32 1, i32 0, i32 0, i64 1
  %534 = load ptr, ptr %533, align 8, !tbaa !46
  %535 = icmp slt i64 %532, %524
  br i1 %535, label %525, label %536, !llvm.loop !150

536:                                              ; preds = %525
  call void @free_EXPR_LIST_list(ptr noundef nonnull %294) #21
  %537 = call zeroext i8 @validate_change(ptr noundef null, ptr noundef nonnull %474, ptr noundef %495, i8 noundef zeroext 1) #21
  br label %538

538:                                              ; preds = %465, %536
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #21
  %539 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !50
  %540 = icmp eq i32 %539, 0
  br i1 %540, label %551, label %541

541:                                              ; preds = %538
  call void @cselib_process_insn(ptr noundef nonnull %367) #21
  %542 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %543 = icmp eq ptr %542, null
  br i1 %543, label %551, label %544

544:                                              ; preds = %541
  %545 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %546 = and i32 %545, 8
  %547 = icmp eq i32 %546, 0
  br i1 %547, label %551, label %548

548:                                              ; preds = %544
  %549 = call i32 @print_rtl_single(ptr noundef nonnull %542, ptr noundef nonnull %367) #21
  %550 = load ptr, ptr @dump_file, align 8, !tbaa !35
  call void @dump_cselib_table(ptr noundef %550) #21
  br label %551

551:                                              ; preds = %541, %544, %548, %538
  %552 = load i1, ptr @cselib_hook_called, align 1
  br i1 %552, label %554, label %553

553:                                              ; preds = %551
  call void @add_with_sets(ptr noundef nonnull %367, ptr noundef null, i32 noundef 0)
  br label %554

554:                                              ; preds = %553, %551
  call void @cancel_changes(i32 noundef 0) #21
  %555 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 41), align 1, !tbaa !108
  %556 = icmp eq i8 %555, 0
  %557 = load i64, ptr %7, align 8
  %558 = icmp ne i64 %557, 0
  %559 = select i1 %556, i1 %558, i1 false
  br i1 %559, label %560, label %604

560:                                              ; preds = %554
  %561 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %562 = icmp eq ptr %561, null
  br i1 %562, label %581, label %563

563:                                              ; preds = %560
  %564 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %565 = and i32 %564, 8
  %566 = icmp eq i32 %565, 0
  br i1 %566, label %581, label %567

567:                                              ; preds = %563
  %568 = load ptr, ptr %429, align 8, !tbaa !46
  %569 = load i32, ptr %364, align 8, !tbaa !64
  %570 = load ptr, ptr %349, align 8, !tbaa !65
  %571 = load ptr, ptr %570, align 8, !tbaa !84
  %572 = icmp eq ptr %571, null
  br i1 %572, label %575, label %573

573:                                              ; preds = %567
  %574 = load i32, ptr %571, align 8, !tbaa !86
  br label %575

575:                                              ; preds = %567, %573
  %576 = phi i32 [ %574, %573 ], [ 0, %567 ]
  %577 = getelementptr inbounds %struct.rtx_def, ptr %367, i64 0, i32 1
  %578 = load i32, ptr %577, align 8, !tbaa !46
  %579 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %561, ptr noundef nonnull @.str.11, i32 noundef %569, i32 noundef %576, i32 noundef %578, ptr noundef nonnull @.str.21)
  call void @print_inline_rtx(ptr noundef nonnull %561, ptr noundef %568, i32 noundef 2) #21
  %580 = call i32 @fputc(i32 noundef 10, ptr noundef nonnull %561)
  br label %581

581:                                              ; preds = %575, %563, %560
  %582 = load ptr, ptr %349, align 8, !tbaa !65
  %583 = load ptr, ptr %582, align 8, !tbaa !35
  %584 = icmp eq ptr %583, null
  br i1 %584, label %590, label %585

585:                                              ; preds = %581
  %586 = getelementptr inbounds %struct.VEC_micro_operation_base, ptr %583, i64 0, i32 1
  %587 = load i32, ptr %586, align 4, !tbaa !137
  %588 = load i32, ptr %583, align 8, !tbaa !86
  %589 = icmp eq i32 %587, %588
  br i1 %589, label %590, label %592

590:                                              ; preds = %581, %585
  %591 = call ptr @vec_heap_o_reserve(ptr noundef %583, i32 noundef 1, i64 noundef 8, i64 noundef 24) #21
  store ptr %591, ptr %582, align 8, !tbaa !35
  br label %592

592:                                              ; preds = %585, %590
  %593 = load ptr, ptr %582, align 8, !tbaa !35
  %594 = load i32, ptr %593, align 8, !tbaa !86
  %595 = add i32 %594, 1
  store i32 %595, ptr %593, align 8, !tbaa !86
  %596 = zext i32 %594 to i64
  %597 = getelementptr inbounds %struct.VEC_micro_operation_base, ptr %593, i64 0, i32 2, i64 %596
  store i32 9, ptr %597, align 8, !tbaa.struct !138
  %598 = getelementptr inbounds i8, ptr %597, i64 8
  store ptr %367, ptr %598, align 8, !tbaa.struct !139
  %599 = getelementptr inbounds i8, ptr %597, i64 16
  store i64 %557, ptr %599, align 8, !tbaa.struct !140
  %600 = load ptr, ptr %349, align 8, !tbaa !65
  %601 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %600, i64 0, i32 2
  %602 = load i64, ptr %601, align 8, !tbaa !118
  %603 = add nsw i64 %602, %557
  store i64 %603, ptr %601, align 8, !tbaa !118
  br label %604

604:                                              ; preds = %592, %554
  %605 = load i64, ptr @hard_frame_pointer_adjustment, align 8
  %606 = icmp eq i64 %605, -1
  %607 = select i1 %365, i1 %606, i1 false
  br i1 %607, label %608, label %655

608:                                              ; preds = %604
  %609 = load i32, ptr %367, align 8
  %610 = and i32 %609, 1073741824
  %611 = icmp eq i32 %610, 0
  br i1 %611, label %655, label %612

612:                                              ; preds = %608
  %613 = load ptr, ptr %429, align 8, !tbaa !46
  %614 = call ptr @find_reg_note(ptr noundef nonnull %367, i32 noundef 17, ptr noundef null) #21
  %615 = icmp eq ptr %614, null
  br i1 %615, label %619, label %616

616:                                              ; preds = %612
  %617 = getelementptr inbounds %struct.rtx_def, ptr %614, i64 0, i32 1
  %618 = load ptr, ptr %617, align 8, !tbaa !46
  br label %619

619:                                              ; preds = %616, %612
  %620 = phi ptr [ %618, %616 ], [ %613, %612 ]
  %621 = load i32, ptr %620, align 8
  %622 = trunc i32 %621 to i16
  switch i16 %622, label %651 [
    i16 23, label %623
    i16 15, label %629
  ]

623:                                              ; preds = %619
  %624 = getelementptr inbounds %struct.rtx_def, ptr %620, i64 0, i32 1
  %625 = load ptr, ptr %624, align 8, !tbaa !46
  %626 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 4), align 16, !tbaa !35
  %627 = icmp eq ptr %625, %626
  %628 = zext i1 %627 to i8
  br label %651

629:                                              ; preds = %619
  %630 = getelementptr inbounds %struct.rtx_def, ptr %620, i64 0, i32 1
  %631 = load ptr, ptr %630, align 8, !tbaa !46
  %632 = load i32, ptr %631, align 8, !tbaa !146
  %633 = icmp slt i32 %632, 1
  br i1 %633, label %651, label %634

634:                                              ; preds = %629
  %635 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 4), align 16
  %636 = zext nneg i32 %632 to i64
  br label %637

637:                                              ; preds = %634, %649
  %638 = phi i64 [ %636, %634 ], [ %639, %649 ]
  %639 = add nsw i64 %638, -1
  %640 = getelementptr inbounds %struct.rtvec_def, ptr %631, i64 0, i32 1, i64 %639
  %641 = load ptr, ptr %640, align 8, !tbaa !35
  %642 = load i32, ptr %641, align 8
  %643 = and i32 %642, 65535
  %644 = icmp eq i32 %643, 23
  br i1 %644, label %645, label %649

645:                                              ; preds = %637
  %646 = getelementptr inbounds %struct.rtx_def, ptr %641, i64 0, i32 1
  %647 = load ptr, ptr %646, align 8, !tbaa !46
  %648 = icmp eq ptr %647, %635
  br i1 %648, label %651, label %649

649:                                              ; preds = %645, %637
  %650 = icmp slt i64 %638, 2
  br i1 %650, label %651, label %637, !llvm.loop !151

651:                                              ; preds = %645, %649, %629, %619, %623
  %652 = phi i8 [ %628, %623 ], [ 0, %619 ], [ 0, %629 ], [ 0, %649 ], [ 1, %645 ]
  %653 = icmp eq i8 %652, 0
  br i1 %653, label %655, label %654

654:                                              ; preds = %651
  call fastcc void @vt_init_cfa_base()
  store i64 %280, ptr @hard_frame_pointer_adjustment, align 8, !tbaa !125
  br label %655

655:                                              ; preds = %366, %654, %651, %608, %604
  %656 = getelementptr inbounds %struct.rtx_def, ptr %367, i64 0, i32 1, i32 0, i32 0, i64 2
  %657 = load ptr, ptr %656, align 8, !tbaa !46
  %658 = load ptr, ptr %355, align 8, !tbaa !46
  %659 = getelementptr inbounds %struct.rtl_bb_info, ptr %658, i64 0, i32 1
  %660 = load ptr, ptr %659, align 8, !tbaa !101
  %661 = getelementptr inbounds %struct.rtx_def, ptr %660, i64 0, i32 1, i32 0, i32 0, i64 2
  %662 = load ptr, ptr %661, align 8, !tbaa !46
  %663 = icmp eq ptr %657, %662
  br i1 %663, label %664, label %366, !llvm.loop !152

664:                                              ; preds = %655, %347
  %665 = load ptr, ptr %349, align 8, !tbaa !65
  %666 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %665, i64 0, i32 2
  %667 = load i64, ptr %666, align 8, !tbaa !118
  %668 = icmp eq i64 %352, %667
  br i1 %668, label %670, label %669

669:                                              ; preds = %664
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 8330, ptr noundef nonnull @.str.2) #21
  br label %670

670:                                              ; preds = %664, %669
  %671 = getelementptr inbounds %struct.basic_block_def, ptr %348, i64 0, i32 6
  %672 = load ptr, ptr %671, align 8, !tbaa !61
  %673 = load ptr, ptr %344, align 8, !tbaa !61
  %674 = icmp eq ptr %672, %673
  br i1 %674, label %675, label %347, !llvm.loop !153

675:                                              ; preds = %670, %343
  %676 = getelementptr inbounds %struct.basic_block_def, ptr %342, i64 0, i32 6
  %677 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !50
  %678 = icmp eq i32 %677, 0
  br i1 %678, label %681, label %679

679:                                              ; preds = %675
  call void @cselib_preserve_only_values() #21
  %680 = call i32 @cselib_get_next_uid() #21
  call void @cselib_reset_table(i32 noundef %680) #21
  store ptr null, ptr @cselib_record_sets_hook, align 8, !tbaa !35
  br label %681

681:                                              ; preds = %679, %675
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #21
  %682 = load ptr, ptr %676, align 8, !tbaa !61
  %683 = load ptr, ptr @cfun, align 8, !tbaa !35
  %684 = getelementptr inbounds %struct.function, ptr %683, i64 0, i32 1
  %685 = load ptr, ptr %684, align 8, !tbaa !54
  %686 = getelementptr inbounds %struct.control_flow_graph, ptr %685, i64 0, i32 1
  %687 = load ptr, ptr %686, align 8, !tbaa !63
  %688 = icmp eq ptr %682, %687
  br i1 %688, label %689, label %295, !llvm.loop !154

689:                                              ; preds = %681, %279
  %690 = phi ptr [ %284, %279 ], [ %685, %681 ]
  store i64 -1, ptr @hard_frame_pointer_adjustment, align 8, !tbaa !125
  %691 = load ptr, ptr %690, align 8, !tbaa !60
  %692 = getelementptr inbounds %struct.basic_block_def, ptr %691, i64 0, i32 2
  %693 = load ptr, ptr %692, align 8, !tbaa !65
  %694 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %693, i64 0, i32 5
  store i8 1, ptr %694, align 1, !tbaa !105
  %695 = load ptr, ptr @current_function_decl, align 8, !tbaa !35
  %696 = getelementptr inbounds %struct.tree_decl_non_common, ptr %695, i64 0, i32 2
  %697 = load ptr, ptr %696, align 8, !tbaa !46
  %698 = icmp eq ptr %697, null
  br i1 %698, label %884, label %699

699:                                              ; preds = %689, %879
  %700 = phi ptr [ %882, %879 ], [ %697, %689 ]
  %701 = phi ptr [ %880, %879 ], [ undef, %689 ]
  %702 = load i64, ptr %700, align 8
  %703 = and i64 %702, 65535
  %704 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %703, i64 11
  %705 = load i8, ptr %704, align 1, !tbaa !46
  %706 = icmp eq i8 %705, 0
  br i1 %706, label %710, label %707

707:                                              ; preds = %699
  %708 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %700, i64 0, i32 1
  %709 = load ptr, ptr %708, align 8, !tbaa !46
  br label %710

710:                                              ; preds = %707, %699
  %711 = phi ptr [ null, %699 ], [ %709, %707 ]
  %712 = getelementptr inbounds %struct.tree_parm_decl, ptr %700, i64 0, i32 1
  %713 = load ptr, ptr %712, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #21
  %714 = load i64, ptr %700, align 8
  %715 = and i64 %714, 65535
  %716 = icmp eq i64 %715, 34
  br i1 %716, label %717, label %879

717:                                              ; preds = %710
  %718 = getelementptr inbounds %struct.tree_decl_minimal, ptr %700, i64 0, i32 3
  %719 = load ptr, ptr %718, align 8, !tbaa !46
  %720 = icmp eq ptr %719, null
  br i1 %720, label %879, label %721

721:                                              ; preds = %717
  %722 = icmp ne ptr %711, null
  %723 = icmp ne ptr %713, null
  %724 = select i1 %722, i1 %723, i1 false
  br i1 %724, label %725, label %879

725:                                              ; preds = %721
  %726 = load i32, ptr %711, align 8
  %727 = and i32 %726, 16711680
  %728 = icmp eq i32 %727, 65536
  br i1 %728, label %879, label %729

729:                                              ; preds = %725
  %730 = load i32, ptr %713, align 8
  %731 = and i32 %730, 16711680
  %732 = icmp eq i32 %731, 65536
  br i1 %732, label %879, label %733

733:                                              ; preds = %729
  %734 = trunc i32 %730 to i16
  switch i16 %734, label %757 [
    i16 37, label %735
    i16 43, label %743
  ]

735:                                              ; preds = %733
  %736 = getelementptr inbounds %struct.rtx_def, ptr %713, i64 0, i32 1, i32 0, i32 0, i64 2
  %737 = load ptr, ptr %736, align 8, !tbaa !46
  %738 = icmp eq ptr %737, null
  br i1 %738, label %757, label %739

739:                                              ; preds = %735
  %740 = load ptr, ptr %737, align 8, !tbaa !91
  %741 = getelementptr inbounds %struct.reg_attrs, ptr %737, i64 0, i32 1
  %742 = load i64, ptr %741, align 8, !tbaa !93
  store i64 %742, ptr %2, align 8, !tbaa !125
  br label %757

743:                                              ; preds = %733
  %744 = getelementptr inbounds %struct.rtx_def, ptr %713, i64 0, i32 1, i32 0, i32 0, i64 1
  %745 = load ptr, ptr %744, align 8, !tbaa !46
  %746 = icmp eq ptr %745, null
  br i1 %746, label %757, label %747

747:                                              ; preds = %743
  %748 = load ptr, ptr %745, align 8, !tbaa !94
  %749 = getelementptr inbounds %struct.mem_attrs, ptr %745, i64 0, i32 1
  %750 = load ptr, ptr %749, align 8, !tbaa !96
  %751 = icmp eq ptr %750, null
  br i1 %751, label %755, label %752

752:                                              ; preds = %747
  %753 = getelementptr inbounds %struct.rtx_def, ptr %750, i64 0, i32 1
  %754 = load i64, ptr %753, align 8, !tbaa !46
  br label %755

755:                                              ; preds = %752, %747
  %756 = phi i64 [ %754, %752 ], [ 0, %747 ]
  store i64 %756, ptr %2, align 8, !tbaa !125
  br label %757

757:                                              ; preds = %755, %743, %739, %735, %733
  %758 = phi ptr [ %701, %733 ], [ %701, %743 ], [ %748, %755 ], [ %701, %735 ], [ %740, %739 ]
  %759 = phi i1 [ true, %733 ], [ true, %743 ], [ false, %755 ], [ true, %735 ], [ false, %739 ]
  br i1 %759, label %760, label %807

760:                                              ; preds = %757
  %761 = load i32, ptr %713, align 8
  %762 = trunc i32 %761 to i16
  switch i16 %762, label %768 [
    i16 37, label %763
    i16 43, label %763
  ]

763:                                              ; preds = %760, %760
  store i64 0, ptr %2, align 8, !tbaa !125
  %764 = load i32, ptr %711, align 8
  %765 = lshr i32 %764, 16
  %766 = and i32 %765, 255
  %767 = call ptr @gen_rtx_MEM(i32 noundef %766, ptr noundef nonnull %713) #21
  br label %807

768:                                              ; preds = %760
  %769 = load i32, ptr %711, align 8
  %770 = trunc i32 %769 to i16
  switch i16 %770, label %793 [
    i16 37, label %771
    i16 43, label %779
  ]

771:                                              ; preds = %768
  %772 = getelementptr inbounds %struct.rtx_def, ptr %711, i64 0, i32 1, i32 0, i32 0, i64 2
  %773 = load ptr, ptr %772, align 8, !tbaa !46
  %774 = icmp eq ptr %773, null
  br i1 %774, label %793, label %775

775:                                              ; preds = %771
  %776 = load ptr, ptr %773, align 8, !tbaa !91
  %777 = getelementptr inbounds %struct.reg_attrs, ptr %773, i64 0, i32 1
  %778 = load i64, ptr %777, align 8, !tbaa !93
  store i64 %778, ptr %2, align 8, !tbaa !125
  br label %793

779:                                              ; preds = %768
  %780 = getelementptr inbounds %struct.rtx_def, ptr %711, i64 0, i32 1, i32 0, i32 0, i64 1
  %781 = load ptr, ptr %780, align 8, !tbaa !46
  %782 = icmp eq ptr %781, null
  br i1 %782, label %793, label %783

783:                                              ; preds = %779
  %784 = load ptr, ptr %781, align 8, !tbaa !94
  %785 = getelementptr inbounds %struct.mem_attrs, ptr %781, i64 0, i32 1
  %786 = load ptr, ptr %785, align 8, !tbaa !96
  %787 = icmp eq ptr %786, null
  br i1 %787, label %791, label %788

788:                                              ; preds = %783
  %789 = getelementptr inbounds %struct.rtx_def, ptr %786, i64 0, i32 1
  %790 = load i64, ptr %789, align 8, !tbaa !46
  br label %791

791:                                              ; preds = %788, %783
  %792 = phi i64 [ %790, %788 ], [ 0, %783 ]
  store i64 %792, ptr %2, align 8, !tbaa !125
  br label %793

793:                                              ; preds = %791, %779, %775, %771, %768
  %794 = phi ptr [ %758, %768 ], [ %758, %779 ], [ %784, %791 ], [ %758, %771 ], [ %776, %775 ]
  %795 = phi i1 [ true, %768 ], [ true, %779 ], [ false, %791 ], [ true, %771 ], [ false, %775 ]
  br i1 %795, label %879, label %796

796:                                              ; preds = %793
  %797 = load i32, ptr %713, align 8
  %798 = lshr i32 %797, 16
  %799 = and i32 %798, 255
  %800 = load i32, ptr %711, align 8
  %801 = lshr i32 %800, 16
  %802 = and i32 %801, 255
  %803 = call i32 @byte_lowpart_offset(i32 noundef %799, i32 noundef %802) #21
  %804 = sext i32 %803 to i64
  %805 = load i64, ptr %2, align 8, !tbaa !125
  %806 = add nsw i64 %805, %804
  store i64 %806, ptr %2, align 8, !tbaa !125
  br label %807

807:                                              ; preds = %796, %763, %757
  %808 = phi ptr [ %794, %796 ], [ %700, %763 ], [ %758, %757 ]
  %809 = phi ptr [ %713, %796 ], [ %767, %763 ], [ %713, %757 ]
  %810 = icmp eq ptr %808, null
  br i1 %810, label %879, label %811

811:                                              ; preds = %807
  %812 = icmp eq ptr %700, %808
  br i1 %812, label %818, label %813

813:                                              ; preds = %811
  %814 = call ptr @get_spill_slot_decl(i8 noundef zeroext 0) #21
  %815 = icmp eq ptr %808, %814
  br i1 %815, label %817, label %816

816:                                              ; preds = %813
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 8001, ptr noundef nonnull @.str.2) #21
  br label %817

817:                                              ; preds = %816, %813
  store i64 0, ptr %2, align 8, !tbaa !125
  br label %818

818:                                              ; preds = %817, %811
  %819 = load i64, ptr %2, align 8, !tbaa !125
  %820 = call fastcc zeroext i8 @track_loc_p(ptr noundef %809, ptr noundef nonnull %700, i64 noundef %819, ptr noundef nonnull %1, ptr noundef nonnull %2)
  %821 = icmp eq i8 %820, 0
  br i1 %821, label %879, label %822

822:                                              ; preds = %818
  %823 = load ptr, ptr @cfun, align 8, !tbaa !35
  %824 = getelementptr inbounds %struct.function, ptr %823, i64 0, i32 1
  %825 = load ptr, ptr %824, align 8, !tbaa !54
  %826 = load ptr, ptr %825, align 8, !tbaa !60
  %827 = getelementptr inbounds %struct.basic_block_def, ptr %826, i64 0, i32 2
  %828 = load ptr, ptr %827, align 8, !tbaa !65
  %829 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %828, i64 0, i32 2
  %830 = call ptr @target_for_debug_bind(ptr noundef nonnull %700) #21
  %831 = icmp eq ptr %830, null
  br i1 %831, label %852, label %832

832:                                              ; preds = %822
  %833 = load i32, ptr %809, align 8
  %834 = and i32 %833, 65535
  %835 = icmp eq i32 %834, 15
  br i1 %835, label %852, label %836

836:                                              ; preds = %832
  %837 = load i64, ptr %2, align 8, !tbaa !125
  %838 = icmp eq i64 %837, 0
  br i1 %838, label %839, label %850

839:                                              ; preds = %836
  %840 = load i32, ptr %1, align 4, !tbaa !50
  %841 = call fastcc ptr @var_lowpart(i32 noundef %840, ptr noundef nonnull %809)
  %842 = load i32, ptr %1, align 4, !tbaa !50
  %843 = call ptr @cselib_lookup(ptr noundef %841, i32 noundef %842, i32 noundef 1) #21
  %844 = icmp eq ptr %843, null
  br i1 %844, label %850, label %845

845:                                              ; preds = %839
  call fastcc void @preserve_value(ptr noundef nonnull %843)
  %846 = getelementptr inbounds %struct.cselib_val_struct, ptr %843, i64 0, i32 2
  %847 = load ptr, ptr %846, align 8, !tbaa !155
  %848 = load i64, ptr %2, align 8, !tbaa !125
  call fastcc void @set_variable_part(ptr noundef nonnull %829, ptr noundef %847, ptr noundef nonnull %700, i64 noundef %848, i32 noundef 2, ptr noundef null, i32 noundef 1)
  %849 = load ptr, ptr %846, align 8, !tbaa !155
  br label %850

850:                                              ; preds = %845, %839, %836
  %851 = phi ptr [ %700, %836 ], [ %849, %845 ], [ %700, %839 ]
  br i1 %838, label %852, label %879

852:                                              ; preds = %850, %832, %822
  %853 = phi ptr [ %700, %832 ], [ %700, %822 ], [ %851, %850 ]
  %854 = load i32, ptr %809, align 8
  %855 = trunc i32 %854 to i16
  switch i16 %855, label %879 [
    i16 37, label %856
    i16 43, label %875
  ]

856:                                              ; preds = %852
  %857 = load i32, ptr %1, align 4, !tbaa !50
  %858 = call fastcc ptr @var_lowpart(i32 noundef %857, ptr noundef nonnull %809)
  %859 = getelementptr inbounds %struct.rtx_def, ptr %858, i64 0, i32 1
  %860 = load i32, ptr %859, align 8, !tbaa !46
  %861 = icmp ult i32 %860, 53
  br i1 %861, label %863, label %862

862:                                              ; preds = %856
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 8044, ptr noundef nonnull @.str.2) #21
  br label %863

863:                                              ; preds = %862, %856
  %864 = load i32, ptr %859, align 8, !tbaa !46
  %865 = zext i32 %864 to i64
  %866 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %828, i64 0, i32 2, i32 1, i64 %865
  %867 = load i64, ptr %2, align 8, !tbaa !125
  %868 = load ptr, ptr @attrs_pool, align 8, !tbaa !35
  %869 = call ptr @pool_alloc(ptr noundef %868) #21
  %870 = getelementptr inbounds %struct.attrs_def, ptr %869, i64 0, i32 1
  store ptr %858, ptr %870, align 8, !tbaa !157
  %871 = getelementptr inbounds %struct.attrs_def, ptr %869, i64 0, i32 2
  store ptr %853, ptr %871, align 8, !tbaa !159
  %872 = getelementptr inbounds %struct.attrs_def, ptr %869, i64 0, i32 3
  store i64 %867, ptr %872, align 8, !tbaa !160
  %873 = load ptr, ptr %866, align 8, !tbaa !35
  store ptr %873, ptr %869, align 8, !tbaa !161
  store ptr %869, ptr %866, align 8, !tbaa !35
  %874 = load i64, ptr %2, align 8, !tbaa !125
  call fastcc void @set_variable_part(ptr noundef nonnull %829, ptr noundef %858, ptr noundef %853, i64 noundef %874, i32 noundef 2, ptr noundef null, i32 noundef 1)
  br label %879

875:                                              ; preds = %852
  %876 = load i32, ptr %1, align 4, !tbaa !50
  %877 = call fastcc ptr @var_lowpart(i32 noundef %876, ptr noundef nonnull %809)
  %878 = load i64, ptr %2, align 8, !tbaa !125
  call fastcc void @set_variable_part(ptr noundef nonnull %829, ptr noundef %877, ptr noundef %853, i64 noundef %878, i32 noundef 2, ptr noundef null, i32 noundef 1)
  br label %879

879:                                              ; preds = %875, %863, %852, %850, %818, %807, %793, %729, %725, %721, %717, %710
  %880 = phi ptr [ %701, %717 ], [ %701, %725 ], [ %701, %729 ], [ %794, %793 ], [ %808, %807 ], [ %808, %818 ], [ %808, %852 ], [ %808, %875 ], [ %808, %863 ], [ %808, %850 ], [ %701, %721 ], [ %701, %710 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #21
  %881 = getelementptr inbounds %struct.tree_common, ptr %700, i64 0, i32 1
  %882 = load ptr, ptr %881, align 8, !tbaa !46
  %883 = icmp eq ptr %882, null
  br i1 %883, label %884, label %699, !llvm.loop !162

884:                                              ; preds = %879, %689
  %885 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !50
  %886 = icmp eq i32 %885, 0
  br i1 %886, label %889, label %887

887:                                              ; preds = %884
  call void @cselib_preserve_only_values() #21
  %888 = call i32 @cselib_get_next_uid() #21
  call void @cselib_reset_table(i32 noundef %888) #21
  br label %889

889:                                              ; preds = %884, %887
  store ptr null, ptr @cfa_base_rtx, align 8, !tbaa !35
  br label %890

890:                                              ; preds = %218, %889
  %891 = phi i8 [ 1, %889 ], [ 0, %218 ]
  ret i8 %891
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @vt_finalize() unnamed_addr #9 !prof !34 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !35
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !54
  %4 = load ptr, ptr %3, align 8, !tbaa !60
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !61
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %3, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !63
  %9 = icmp eq ptr %6, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %21, %0
  %11 = phi ptr [ %3, %0 ], [ %26, %21 ]
  %12 = load ptr, ptr %11, align 8, !tbaa !35
  %13 = icmp eq ptr %12, null
  br i1 %13, label %49, label %30

14:                                               ; preds = %0, %21
  %15 = phi ptr [ %23, %21 ], [ %6, %0 ]
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !65
  %18 = load ptr, ptr %17, align 8, !tbaa !35
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %14
  tail call void @free(ptr noundef %18)
  br label %21

21:                                               ; preds = %14, %20
  store ptr null, ptr %17, align 8, !tbaa !35
  %22 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 6
  %23 = load ptr, ptr %22, align 8, !tbaa !61
  %24 = load ptr, ptr @cfun, align 8, !tbaa !35
  %25 = getelementptr inbounds %struct.function, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !54
  %27 = getelementptr inbounds %struct.control_flow_graph, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !63
  %29 = icmp eq ptr %23, %28
  br i1 %29, label %10, label %14, !llvm.loop !163

30:                                               ; preds = %10, %45
  %31 = phi ptr [ %47, %45 ], [ %12, %10 ]
  %32 = getelementptr inbounds %struct.basic_block_def, ptr %31, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !65
  %34 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %33, i64 0, i32 1
  tail call fastcc void @dataflow_set_destroy(ptr noundef nonnull %34)
  %35 = load ptr, ptr %32, align 8, !tbaa !65
  %36 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %35, i64 0, i32 2
  tail call fastcc void @dataflow_set_destroy(ptr noundef nonnull %36)
  %37 = load ptr, ptr %32, align 8, !tbaa !65
  %38 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %37, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !106
  %40 = icmp eq ptr %39, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %30
  tail call fastcc void @dataflow_set_destroy(ptr noundef nonnull %39)
  %42 = load ptr, ptr %32, align 8, !tbaa !65
  %43 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %42, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !106
  tail call void @free(ptr noundef %44)
  br label %45

45:                                               ; preds = %30, %41
  %46 = getelementptr inbounds %struct.basic_block_def, ptr %31, i64 0, i32 6
  %47 = load ptr, ptr %46, align 8, !tbaa !35
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %30, !llvm.loop !164

49:                                               ; preds = %45, %10
  tail call void @free_aux_for_blocks() #21
  %50 = load ptr, ptr @empty_shared_hash, align 8, !tbaa !35
  %51 = getelementptr inbounds %struct.shared_hash_def, ptr %50, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !83
  tail call void @htab_delete(ptr noundef %52) #21
  %53 = load ptr, ptr @changed_variables, align 8, !tbaa !35
  tail call void @htab_delete(ptr noundef %53) #21
  %54 = load ptr, ptr @attrs_pool, align 8, !tbaa !35
  tail call void @free_alloc_pool(ptr noundef %54) #21
  %55 = load ptr, ptr @var_pool, align 8, !tbaa !35
  tail call void @free_alloc_pool(ptr noundef %55) #21
  %56 = load ptr, ptr @loc_chain_pool, align 8, !tbaa !35
  tail call void @free_alloc_pool(ptr noundef %56) #21
  %57 = load ptr, ptr @shared_hash_pool, align 8, !tbaa !35
  tail call void @free_alloc_pool(ptr noundef %57) #21
  %58 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !50
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %69, label %60

60:                                               ; preds = %49
  %61 = load ptr, ptr @value_chains, align 8, !tbaa !35
  tail call void @htab_delete(ptr noundef %61) #21
  %62 = load ptr, ptr @value_chain_pool, align 8, !tbaa !35
  tail call void @free_alloc_pool(ptr noundef %62) #21
  %63 = load ptr, ptr @valvar_pool, align 8, !tbaa !35
  tail call void @free_alloc_pool(ptr noundef %63) #21
  %64 = load ptr, ptr @preserved_values, align 8, !tbaa !35
  %65 = icmp eq ptr %64, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %60
  tail call void @free(ptr noundef %64)
  br label %67

67:                                               ; preds = %60, %66
  store ptr null, ptr @preserved_values, align 8, !tbaa !35
  tail call void @cselib_finish() #21
  %68 = load ptr, ptr @scratch_regs, align 8, !tbaa !35
  tail call void @bitmap_obstack_free(ptr noundef %68) #21
  store ptr null, ptr @scratch_regs, align 8, !tbaa !35
  br label %69

69:                                               ; preds = %67, %49
  %70 = load ptr, ptr @vui_vec, align 8, !tbaa !35
  %71 = icmp eq ptr %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %69
  tail call void @free(ptr noundef %70)
  br label %73

73:                                               ; preds = %72, %69
  store ptr null, ptr @vui_vec, align 8, !tbaa !35
  store i32 0, ptr @vui_allocated, align 4, !tbaa !50
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc zeroext i8 @vt_find_locations() unnamed_addr #9 !prof !34 {
  %1 = alloca [87 x ptr], align 16
  %2 = alloca %struct.dataflow_set_def, align 8
  %3 = alloca %struct.dfset_post_merge, align 8
  %4 = alloca %struct.dataflow_set_def, align 8
  %5 = alloca %struct.dfset_merge, align 8
  %6 = load ptr, ptr @compiler_params, align 8, !tbaa !35
  %7 = getelementptr inbounds %struct.param_info, ptr %6, i64 116, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !165
  %9 = load ptr, ptr @cfun, align 8, !tbaa !35
  %10 = getelementptr inbounds %struct.function, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !54
  %12 = getelementptr inbounds %struct.control_flow_graph, ptr %11, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !56
  %14 = add nsw i32 %13, -2
  %15 = sext i32 %14 to i64
  %16 = shl nsw i64 %15, 2
  %17 = tail call ptr @xmalloc(i64 noundef %16) #21
  %18 = load ptr, ptr @cfun, align 8, !tbaa !35
  %19 = getelementptr inbounds %struct.function, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !54
  %21 = getelementptr inbounds %struct.control_flow_graph, ptr %20, i64 0, i32 5
  %22 = load i32, ptr %21, align 8, !tbaa !167
  %23 = sext i32 %22 to i64
  %24 = shl nsw i64 %23, 2
  %25 = tail call ptr @xmalloc(i64 noundef %24) #21
  %26 = tail call i32 @pre_and_rev_post_order_compute(ptr noundef null, ptr noundef %17, i8 noundef zeroext 0) #21
  %27 = load ptr, ptr @cfun, align 8, !tbaa !35
  %28 = getelementptr inbounds %struct.function, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !54
  %30 = getelementptr inbounds %struct.control_flow_graph, ptr %29, i64 0, i32 3
  %31 = load i32, ptr %30, align 8, !tbaa !56
  %32 = icmp sgt i32 %31, 2
  br i1 %32, label %33, label %45

33:                                               ; preds = %0, %33
  %34 = phi i64 [ %40, %33 ], [ 0, %0 ]
  %35 = getelementptr inbounds i32, ptr %17, i64 %34
  %36 = load i32, ptr %35, align 4, !tbaa !50
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, ptr %25, i64 %37
  %39 = trunc i64 %34 to i32
  store i32 %39, ptr %38, align 4, !tbaa !50
  %40 = add nuw nsw i64 %34, 1
  %41 = load i32, ptr %30, align 8, !tbaa !56
  %42 = add nsw i32 %41, -2
  %43 = sext i32 %42 to i64
  %44 = icmp slt i64 %40, %43
  br i1 %44, label %33, label %45, !llvm.loop !168

45:                                               ; preds = %33, %0
  tail call void @free(ptr noundef %17)
  %46 = tail call ptr @fibheap_new() #21
  %47 = tail call ptr @fibheap_new() #21
  %48 = load ptr, ptr @cfun, align 8, !tbaa !35
  %49 = getelementptr inbounds %struct.function, ptr %48, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !54
  %51 = getelementptr inbounds %struct.control_flow_graph, ptr %50, i64 0, i32 5
  %52 = load i32, ptr %51, align 8, !tbaa !167
  %53 = tail call ptr @sbitmap_alloc(i32 noundef %52) #21
  %54 = load ptr, ptr @cfun, align 8, !tbaa !35
  %55 = getelementptr inbounds %struct.function, ptr %54, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !54
  %57 = getelementptr inbounds %struct.control_flow_graph, ptr %56, i64 0, i32 5
  %58 = load i32, ptr %57, align 8, !tbaa !167
  %59 = tail call ptr @sbitmap_alloc(i32 noundef %58) #21
  %60 = load ptr, ptr @cfun, align 8, !tbaa !35
  %61 = getelementptr inbounds %struct.function, ptr %60, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !54
  %63 = getelementptr inbounds %struct.control_flow_graph, ptr %62, i64 0, i32 5
  %64 = load i32, ptr %63, align 8, !tbaa !167
  %65 = tail call ptr @sbitmap_alloc(i32 noundef %64) #21
  tail call void @sbitmap_zero(ptr noundef %59) #21
  %66 = load ptr, ptr @cfun, align 8, !tbaa !35
  %67 = getelementptr inbounds %struct.function, ptr %66, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !54
  %69 = load ptr, ptr %68, align 8, !tbaa !60
  %70 = getelementptr inbounds %struct.basic_block_def, ptr %69, i64 0, i32 6
  %71 = load ptr, ptr %70, align 8, !tbaa !61
  %72 = getelementptr inbounds %struct.control_flow_graph, ptr %68, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !63
  %74 = icmp eq ptr %71, %73
  br i1 %74, label %92, label %75

75:                                               ; preds = %45, %75
  %76 = phi ptr [ %85, %75 ], [ %71, %45 ]
  %77 = getelementptr inbounds %struct.basic_block_def, ptr %76, i64 0, i32 9
  %78 = load i32, ptr %77, align 8, !tbaa !64
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, ptr %25, i64 %79
  %81 = load i32, ptr %80, align 4, !tbaa !50
  %82 = sext i32 %81 to i64
  %83 = tail call ptr @fibheap_insert(ptr noundef %47, i64 noundef %82, ptr noundef %76) #21
  %84 = getelementptr inbounds %struct.basic_block_def, ptr %76, i64 0, i32 6
  %85 = load ptr, ptr %84, align 8, !tbaa !61
  %86 = load ptr, ptr @cfun, align 8, !tbaa !35
  %87 = getelementptr inbounds %struct.function, ptr %86, i64 0, i32 1
  %88 = load ptr, ptr %87, align 8, !tbaa !54
  %89 = getelementptr inbounds %struct.control_flow_graph, ptr %88, i64 0, i32 1
  %90 = load ptr, ptr %89, align 8, !tbaa !63
  %91 = icmp eq ptr %85, %90
  br i1 %91, label %92, label %75, !llvm.loop !169

92:                                               ; preds = %75, %45
  tail call void @sbitmap_ones(ptr noundef %65) #21
  %93 = getelementptr inbounds %struct.dataflow_set_def, ptr %4, i64 0, i32 2
  %94 = getelementptr inbounds %struct.dfset_merge, ptr %5, i64 0, i32 2
  %95 = getelementptr inbounds %struct.dfset_merge, ptr %5, i64 0, i32 1
  %96 = getelementptr inbounds %struct.dfset_merge, ptr %5, i64 0, i32 3
  %97 = getelementptr inbounds %struct.dfset_post_merge, ptr %3, i64 0, i32 1
  %98 = getelementptr inbounds %struct.dataflow_set_def, ptr %2, i64 0, i32 1
  %99 = getelementptr inbounds %struct.dataflow_set_def, ptr %2, i64 0, i32 2
  %100 = getelementptr inbounds %struct.dataflow_set_def, ptr %2, i64 0, i32 3
  %101 = icmp eq i32 %8, 0
  %102 = tail call i32 @fibheap_empty(ptr noundef %47) #21
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %107, label %1316

104:                                              ; preds = %1312
  %105 = call i32 @fibheap_empty(ptr noundef %113) #21
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %1316, !llvm.loop !170

107:                                              ; preds = %92, %104
  %108 = phi i8 [ %1313, %104 ], [ 1, %92 ]
  %109 = phi i32 [ %1314, %104 ], [ 0, %92 ]
  %110 = phi ptr [ %111, %104 ], [ %65, %92 ]
  %111 = phi ptr [ %110, %104 ], [ %59, %92 ]
  %112 = phi ptr [ %113, %104 ], [ %47, %92 ]
  %113 = phi ptr [ %112, %104 ], [ %46, %92 ]
  call void @sbitmap_zero(ptr noundef %53) #21
  %114 = call i32 @fibheap_empty(ptr noundef %112) #21
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %1312

116:                                              ; preds = %107, %1307
  %117 = phi i32 [ %1309, %1307 ], [ %109, %107 ]
  %118 = phi i8 [ %1308, %1307 ], [ %108, %107 ]
  %119 = call ptr @fibheap_extract_min(ptr noundef %112) #21
  %120 = getelementptr inbounds %struct.basic_block_def, ptr %119, i64 0, i32 9
  %121 = load i32, ptr %120, align 8, !tbaa !64
  %122 = load ptr, ptr %110, align 8, !tbaa !171
  %123 = icmp eq ptr %122, null
  br i1 %123, label %138, label %124

124:                                              ; preds = %116
  %125 = lshr i32 %121, 6
  %126 = zext nneg i32 %125 to i64
  %127 = getelementptr inbounds %struct.simple_bitmap_def, ptr %110, i64 0, i32 3, i64 %126
  %128 = load i64, ptr %127, align 8, !tbaa !125
  %129 = and i32 %121, 63
  %130 = zext nneg i32 %129 to i64
  %131 = shl nuw i64 1, %130
  %132 = and i64 %128, %131
  %133 = icmp eq i64 %132, 0
  br i1 %133, label %138, label %134

134:                                              ; preds = %124
  %135 = getelementptr inbounds i8, ptr %122, i64 %126
  %136 = load i8, ptr %135, align 1, !tbaa !46
  %137 = add i8 %136, -1
  store i8 %137, ptr %135, align 1, !tbaa !46
  br label %138

138:                                              ; preds = %116, %124, %134
  %139 = and i32 %121, 63
  %140 = zext nneg i32 %139 to i64
  %141 = shl nuw i64 1, %140
  %142 = xor i64 %141, -1
  %143 = lshr i32 %121, 6
  %144 = zext nneg i32 %143 to i64
  %145 = getelementptr inbounds %struct.simple_bitmap_def, ptr %110, i64 0, i32 3, i64 %144
  %146 = load i64, ptr %145, align 8, !tbaa !125
  %147 = and i64 %146, %142
  store i64 %147, ptr %145, align 8, !tbaa !125
  %148 = load i32, ptr %120, align 8, !tbaa !64
  %149 = lshr i32 %148, 6
  %150 = zext nneg i32 %149 to i64
  %151 = getelementptr inbounds %struct.simple_bitmap_def, ptr %53, i64 0, i32 3, i64 %150
  %152 = load i64, ptr %151, align 8, !tbaa !125
  %153 = and i32 %148, 63
  %154 = zext nneg i32 %153 to i64
  %155 = shl nuw i64 1, %154
  %156 = and i64 %155, %152
  %157 = icmp eq i64 %156, 0
  br i1 %157, label %158, label %1307

158:                                              ; preds = %138
  %159 = load ptr, ptr %53, align 8, !tbaa !171
  %160 = icmp eq ptr %159, null
  br i1 %160, label %165, label %161

161:                                              ; preds = %158
  %162 = getelementptr inbounds i8, ptr %159, i64 %150
  %163 = load i8, ptr %162, align 1, !tbaa !46
  %164 = add i8 %163, 1
  store i8 %164, ptr %162, align 1, !tbaa !46
  br label %165

165:                                              ; preds = %158, %161
  %166 = load i64, ptr %151, align 8, !tbaa !125
  %167 = or i64 %166, %155
  store i64 %167, ptr %151, align 8, !tbaa !125
  %168 = getelementptr inbounds %struct.basic_block_def, ptr %119, i64 0, i32 2
  %169 = load ptr, ptr %168, align 8, !tbaa !65
  %170 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %169, i64 0, i32 1, i32 2
  %171 = load ptr, ptr %170, align 8, !tbaa !173
  %172 = icmp eq ptr %171, null
  br i1 %172, label %200, label %173

173:                                              ; preds = %165
  %174 = getelementptr inbounds %struct.shared_hash_def, ptr %171, i64 0, i32 1
  %175 = load ptr, ptr %174, align 8, !tbaa !83
  %176 = call i64 @htab_size(ptr noundef %175) #21
  %177 = load ptr, ptr %168, align 8, !tbaa !65
  %178 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %177, i64 0, i32 2, i32 2
  %179 = load ptr, ptr %178, align 8, !tbaa !174
  %180 = getelementptr inbounds %struct.shared_hash_def, ptr %179, i64 0, i32 1
  %181 = load ptr, ptr %180, align 8, !tbaa !83
  %182 = call i64 @htab_size(ptr noundef %181) #21
  %183 = add i64 %182, %176
  %184 = trunc i64 %183 to i32
  %185 = sub i32 %117, %184
  %186 = load ptr, ptr %168, align 8, !tbaa !65
  %187 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %186, i64 0, i32 1, i32 2
  %188 = load ptr, ptr %187, align 8, !tbaa !173
  %189 = getelementptr inbounds %struct.shared_hash_def, ptr %188, i64 0, i32 1
  %190 = load ptr, ptr %189, align 8, !tbaa !83
  %191 = call i64 @htab_elements(ptr noundef %190) #21
  %192 = trunc i64 %191 to i32
  %193 = load ptr, ptr %168, align 8, !tbaa !65
  %194 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %193, i64 0, i32 2, i32 2
  %195 = load ptr, ptr %194, align 8, !tbaa !174
  %196 = getelementptr inbounds %struct.shared_hash_def, ptr %195, i64 0, i32 1
  %197 = load ptr, ptr %196, align 8, !tbaa !83
  %198 = call i64 @htab_elements(ptr noundef %197) #21
  %199 = trunc i64 %198 to i32
  br label %200

200:                                              ; preds = %165, %173
  %201 = phi i32 [ %199, %173 ], [ 0, %165 ]
  %202 = phi i32 [ %192, %173 ], [ 0, %165 ]
  %203 = phi i32 [ %185, %173 ], [ %117, %165 ]
  %204 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !50
  %205 = icmp eq i32 %204, 0
  %206 = load ptr, ptr %168, align 8, !tbaa !65
  %207 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %206, i64 0, i32 1
  call fastcc void @dataflow_set_clear(ptr noundef nonnull %207)
  br i1 %205, label %455, label %208

208:                                              ; preds = %200
  store i1 true, ptr @dst_can_be_shared, align 1
  %209 = icmp eq ptr %119, null
  %210 = getelementptr %struct.variable_tracking_info_def, ptr %206, i64 0, i32 1, i32 1
  %211 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %206, i64 0, i32 1, i32 2
  %212 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %206, i64 0, i32 1, i32 3
  br label %213

213:                                              ; preds = %420, %208
  %214 = phi i32 [ 0, %208 ], [ %421, %420 ]
  %215 = phi ptr [ null, %208 ], [ %409, %420 ]
  %216 = phi i8 [ 1, %208 ], [ %410, %420 ]
  %217 = phi i8 [ 0, %208 ], [ %411, %420 ]
  br i1 %209, label %218, label %219

218:                                              ; preds = %213
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 687, ptr noundef nonnull @.str.2) #21
  br label %219

219:                                              ; preds = %218, %213
  %220 = load ptr, ptr %119, align 8, !tbaa !35
  %221 = icmp eq ptr %220, null
  br i1 %221, label %224, label %222

222:                                              ; preds = %219
  %223 = load i32, ptr %220, align 8, !tbaa !128
  br label %224

224:                                              ; preds = %222, %219
  %225 = phi i32 [ %223, %222 ], [ 0, %219 ]
  %226 = icmp eq i32 %225, %214
  br i1 %226, label %231, label %227

227:                                              ; preds = %224
  %228 = zext i32 %214 to i64
  %229 = getelementptr inbounds %struct.VEC_edge_base, ptr %220, i64 0, i32 2, i64 %228
  %230 = load ptr, ptr %229, align 8, !tbaa !35
  br label %231

231:                                              ; preds = %224, %227
  %232 = phi ptr [ %230, %227 ], [ null, %224 ]
  br i1 %226, label %422, label %233

233:                                              ; preds = %231
  %234 = load ptr, ptr %232, align 8, !tbaa !122
  %235 = getelementptr inbounds %struct.basic_block_def, ptr %234, i64 0, i32 2
  %236 = load ptr, ptr %235, align 8, !tbaa !65
  %237 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %236, i64 0, i32 5
  %238 = load i8, ptr %237, align 1, !tbaa !105
  %239 = icmp eq i8 %238, 0
  br i1 %239, label %240, label %252

240:                                              ; preds = %233
  %241 = load i32, ptr %120, align 8, !tbaa !64
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i32, ptr %25, i64 %242
  %244 = load i32, ptr %243, align 4, !tbaa !50
  %245 = getelementptr inbounds %struct.basic_block_def, ptr %234, i64 0, i32 9
  %246 = load i32, ptr %245, align 8, !tbaa !64
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i32, ptr %25, i64 %247
  %249 = load i32, ptr %248, align 4, !tbaa !50
  %250 = icmp sgt i32 %244, %249
  br i1 %250, label %251, label %408

251:                                              ; preds = %240
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 6014, ptr noundef nonnull @.str.2) #21
  br label %408

252:                                              ; preds = %233
  %253 = icmp eq i8 %216, 0
  br i1 %253, label %260, label %254

254:                                              ; preds = %252
  %255 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %236, i64 0, i32 2
  call fastcc void @dataflow_set_copy(ptr noundef nonnull %207, ptr noundef nonnull %255)
  %256 = load ptr, ptr %232, align 8, !tbaa !122
  %257 = getelementptr inbounds %struct.basic_block_def, ptr %256, i64 0, i32 2
  %258 = load ptr, ptr %257, align 8, !tbaa !65
  %259 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %258, i64 0, i32 2
  br label %408

260:                                              ; preds = %252
  call void @llvm.lifetime.start.p0(i64 448, ptr nonnull %4) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(448) %4, ptr noundef nonnull align 8 dereferenceable(448) %207, i64 448, i1 false), !tbaa.struct !175
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #21
  %261 = load ptr, ptr %93, align 8, !tbaa !77
  %262 = getelementptr inbounds %struct.shared_hash_def, ptr %261, i64 0, i32 1
  %263 = load ptr, ptr %262, align 8, !tbaa !83
  %264 = call i64 @htab_elements(ptr noundef %263) #21
  %265 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %236, i64 0, i32 2, i32 2
  %266 = load ptr, ptr %265, align 8, !tbaa !77
  %267 = getelementptr inbounds %struct.shared_hash_def, ptr %266, i64 0, i32 1
  %268 = load ptr, ptr %267, align 8, !tbaa !83
  %269 = call i64 @htab_elements(ptr noundef %268) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(424) %210, i8 0, i64 424, i1 false), !tbaa !35
  %270 = load ptr, ptr @empty_shared_hash, align 8, !tbaa !35
  %271 = load i32, ptr %270, align 8, !tbaa !75
  %272 = add nsw i32 %271, 1
  store i32 %272, ptr %270, align 8, !tbaa !75
  store ptr %270, ptr %211, align 8, !tbaa !77
  store i64 0, ptr %207, align 8, !tbaa !79
  store ptr null, ptr %212, align 8, !tbaa !80
  %273 = load i64, ptr %4, align 8, !tbaa !79
  store i64 %273, ptr %207, align 8, !tbaa !79
  call fastcc void @shared_hash_destroy(ptr noundef nonnull %270)
  %274 = load ptr, ptr @shared_hash_pool, align 8, !tbaa !35
  %275 = call ptr @pool_alloc(ptr noundef %274) #21
  store ptr %275, ptr %211, align 8, !tbaa !77
  store i32 1, ptr %275, align 8, !tbaa !75
  %276 = call i64 @llvm.umax.i64(i64 %264, i64 %269)
  %277 = call ptr @htab_create(i64 noundef %276, ptr noundef nonnull @variable_htab_hash, ptr noundef nonnull @variable_htab_eq, ptr noundef nonnull @variable_htab_free) #21
  %278 = load ptr, ptr %211, align 8, !tbaa !77
  %279 = getelementptr inbounds %struct.shared_hash_def, ptr %278, i64 0, i32 1
  store ptr %277, ptr %279, align 8, !tbaa !83
  br label %280

280:                                              ; preds = %260, %391
  %281 = phi i64 [ 0, %260 ], [ %392, %391 ]
  %282 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %206, i64 0, i32 1, i32 1, i64 %281
  %283 = getelementptr inbounds %struct.dataflow_set_def, ptr %4, i64 0, i32 1, i64 %281
  %284 = load ptr, ptr %283, align 8, !tbaa !35
  %285 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %236, i64 0, i32 2, i32 1, i64 %281
  %286 = load ptr, ptr %285, align 8, !tbaa !35
  %287 = load ptr, ptr %282, align 8, !tbaa !35
  %288 = icmp eq ptr %287, null
  br i1 %288, label %290, label %289

289:                                              ; preds = %280
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1305, ptr noundef nonnull @.str.2) #21
  br label %290

290:                                              ; preds = %289, %280
  %291 = icmp eq ptr %284, null
  br i1 %291, label %292, label %294

292:                                              ; preds = %332, %290
  %293 = icmp eq ptr %286, null
  br i1 %293, label %391, label %335

294:                                              ; preds = %290, %332
  %295 = phi ptr [ %333, %332 ], [ %284, %290 ]
  %296 = getelementptr inbounds %struct.attrs_def, ptr %295, i64 0, i32 2
  %297 = load ptr, ptr %296, align 8, !tbaa !159
  %298 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !50
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %317, label %300

300:                                              ; preds = %294
  %301 = icmp eq ptr %297, null
  br i1 %301, label %306, label %302

302:                                              ; preds = %300
  %303 = load i64, ptr %297, align 8
  %304 = and i64 %303, 65535
  %305 = icmp eq i64 %304, 1
  br label %306

306:                                              ; preds = %302, %300
  %307 = phi i1 [ false, %300 ], [ %305, %302 ]
  %308 = or i1 %301, %307
  br i1 %308, label %317, label %309

309:                                              ; preds = %306
  %310 = load i64, ptr %297, align 8
  %311 = and i64 %310, 65535
  %312 = icmp eq i64 %311, 37
  br i1 %312, label %317, label %313

313:                                              ; preds = %309
  %314 = call ptr @target_for_debug_bind(ptr noundef nonnull %297) #21
  %315 = icmp ne ptr %314, null
  %316 = zext i1 %315 to i8
  br label %317

317:                                              ; preds = %313, %309, %306, %294
  %318 = phi i8 [ %316, %313 ], [ 0, %294 ], [ 1, %306 ], [ 1, %309 ]
  %319 = icmp eq i8 %318, 0
  br i1 %319, label %320, label %332

320:                                              ; preds = %317
  %321 = load ptr, ptr %296, align 8, !tbaa !159
  %322 = getelementptr inbounds %struct.attrs_def, ptr %295, i64 0, i32 3
  %323 = load i64, ptr %322, align 8, !tbaa !160
  %324 = getelementptr inbounds %struct.attrs_def, ptr %295, i64 0, i32 1
  %325 = load ptr, ptr %324, align 8, !tbaa !157
  %326 = load ptr, ptr @attrs_pool, align 8, !tbaa !35
  %327 = call ptr @pool_alloc(ptr noundef %326) #21
  %328 = getelementptr inbounds %struct.attrs_def, ptr %327, i64 0, i32 1
  store ptr %325, ptr %328, align 8, !tbaa !157
  %329 = getelementptr inbounds %struct.attrs_def, ptr %327, i64 0, i32 2
  store ptr %321, ptr %329, align 8, !tbaa !159
  %330 = getelementptr inbounds %struct.attrs_def, ptr %327, i64 0, i32 3
  store i64 %323, ptr %330, align 8, !tbaa !160
  %331 = load ptr, ptr %282, align 8, !tbaa !35
  store ptr %331, ptr %327, align 8, !tbaa !161
  store ptr %327, ptr %282, align 8, !tbaa !35
  br label %332

332:                                              ; preds = %320, %317
  %333 = load ptr, ptr %295, align 8, !tbaa !161
  %334 = icmp eq ptr %333, null
  br i1 %334, label %292, label %294, !llvm.loop !176

335:                                              ; preds = %292, %388
  %336 = phi ptr [ %389, %388 ], [ %286, %292 ]
  %337 = getelementptr inbounds %struct.attrs_def, ptr %336, i64 0, i32 2
  %338 = load ptr, ptr %337, align 8, !tbaa !159
  %339 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !50
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %358, label %341

341:                                              ; preds = %335
  %342 = icmp eq ptr %338, null
  br i1 %342, label %347, label %343

343:                                              ; preds = %341
  %344 = load i64, ptr %338, align 8
  %345 = and i64 %344, 65535
  %346 = icmp eq i64 %345, 1
  br label %347

347:                                              ; preds = %343, %341
  %348 = phi i1 [ false, %341 ], [ %346, %343 ]
  %349 = or i1 %342, %348
  br i1 %349, label %358, label %350

350:                                              ; preds = %347
  %351 = load i64, ptr %338, align 8
  %352 = and i64 %351, 65535
  %353 = icmp eq i64 %352, 37
  br i1 %353, label %358, label %354

354:                                              ; preds = %350
  %355 = call ptr @target_for_debug_bind(ptr noundef nonnull %338) #21
  %356 = icmp ne ptr %355, null
  %357 = zext i1 %356 to i8
  br label %358

358:                                              ; preds = %354, %350, %347, %335
  %359 = phi i8 [ %357, %354 ], [ 0, %335 ], [ 1, %347 ], [ 1, %350 ]
  %360 = icmp eq i8 %359, 0
  br i1 %360, label %361, label %388

361:                                              ; preds = %358
  %362 = load ptr, ptr %337, align 8, !tbaa !159
  %363 = getelementptr inbounds %struct.attrs_def, ptr %336, i64 0, i32 3
  %364 = load i64, ptr %363, align 8, !tbaa !160
  %365 = load ptr, ptr %282, align 8, !tbaa !35
  %366 = icmp eq ptr %365, null
  br i1 %366, label %379, label %367

367:                                              ; preds = %361, %376
  %368 = phi ptr [ %377, %376 ], [ %365, %361 ]
  %369 = getelementptr inbounds %struct.attrs_def, ptr %368, i64 0, i32 2
  %370 = load ptr, ptr %369, align 8, !tbaa !159
  %371 = icmp eq ptr %370, %362
  br i1 %371, label %372, label %376

372:                                              ; preds = %367
  %373 = getelementptr inbounds %struct.attrs_def, ptr %368, i64 0, i32 3
  %374 = load i64, ptr %373, align 8, !tbaa !160
  %375 = icmp eq i64 %374, %364
  br i1 %375, label %388, label %376

376:                                              ; preds = %372, %367
  %377 = load ptr, ptr %368, align 8, !tbaa !35
  %378 = icmp eq ptr %377, null
  br i1 %378, label %379, label %367, !llvm.loop !177

379:                                              ; preds = %376, %361
  %380 = getelementptr inbounds %struct.attrs_def, ptr %336, i64 0, i32 1
  %381 = load ptr, ptr %380, align 8, !tbaa !157
  %382 = load ptr, ptr @attrs_pool, align 8, !tbaa !35
  %383 = call ptr @pool_alloc(ptr noundef %382) #21
  %384 = getelementptr inbounds %struct.attrs_def, ptr %383, i64 0, i32 1
  store ptr %381, ptr %384, align 8, !tbaa !157
  %385 = getelementptr inbounds %struct.attrs_def, ptr %383, i64 0, i32 2
  store ptr %362, ptr %385, align 8, !tbaa !159
  %386 = getelementptr inbounds %struct.attrs_def, ptr %383, i64 0, i32 3
  store i64 %364, ptr %386, align 8, !tbaa !160
  %387 = load ptr, ptr %282, align 8, !tbaa !35
  store ptr %387, ptr %383, align 8, !tbaa !161
  store ptr %383, ptr %282, align 8, !tbaa !35
  br label %388

388:                                              ; preds = %372, %379, %358
  %389 = load ptr, ptr %336, align 8, !tbaa !161
  %390 = icmp eq ptr %389, null
  br i1 %390, label %391, label %335, !llvm.loop !178

391:                                              ; preds = %388, %292
  %392 = add nuw nsw i64 %281, 1
  %393 = icmp eq i64 %392, 53
  br i1 %393, label %394, label %280, !llvm.loop !179

394:                                              ; preds = %391
  %395 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %236, i64 0, i32 2
  store ptr %207, ptr %5, align 8, !tbaa !180
  store ptr %395, ptr %94, align 8, !tbaa !182
  store ptr %4, ptr %95, align 8, !tbaa !183
  store i32 0, ptr %96, align 8, !tbaa !184
  %396 = load ptr, ptr %265, align 8, !tbaa !77
  %397 = getelementptr inbounds %struct.shared_hash_def, ptr %396, i64 0, i32 1
  %398 = load ptr, ptr %397, align 8, !tbaa !83
  call void @htab_traverse(ptr noundef %398, ptr noundef nonnull @variable_merge_over_src, ptr noundef nonnull %5) #21
  %399 = load ptr, ptr %95, align 8, !tbaa !183
  %400 = getelementptr inbounds %struct.dataflow_set_def, ptr %399, i64 0, i32 2
  %401 = load ptr, ptr %400, align 8, !tbaa !77
  %402 = getelementptr inbounds %struct.shared_hash_def, ptr %401, i64 0, i32 1
  %403 = load ptr, ptr %402, align 8, !tbaa !83
  call void @htab_traverse(ptr noundef %403, ptr noundef nonnull @variable_merge_over_cur, ptr noundef nonnull %5) #21
  %404 = load i32, ptr %96, align 8, !tbaa !184
  %405 = icmp eq i32 %404, 0
  br i1 %405, label %407, label %406

406:                                              ; preds = %394
  store i1 false, ptr @dst_can_be_shared, align 1
  br label %407

407:                                              ; preds = %394, %406
  call fastcc void @dataflow_set_destroy(ptr noundef nonnull %4)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 448, ptr nonnull %4) #21
  br label %408

408:                                              ; preds = %254, %407, %240, %251
  %409 = phi ptr [ %259, %254 ], [ %215, %407 ], [ %215, %240 ], [ %215, %251 ]
  %410 = phi i8 [ 0, %254 ], [ 0, %407 ], [ %216, %240 ], [ %216, %251 ]
  %411 = phi i8 [ %217, %254 ], [ 1, %407 ], [ %217, %240 ], [ %217, %251 ]
  %412 = load ptr, ptr %119, align 8, !tbaa !35
  %413 = icmp eq ptr %412, null
  br i1 %413, label %416, label %414

414:                                              ; preds = %408
  %415 = load i32, ptr %412, align 8, !tbaa !128
  br label %416

416:                                              ; preds = %414, %408
  %417 = phi i32 [ %415, %414 ], [ 0, %408 ]
  %418 = icmp ult i32 %214, %417
  br i1 %418, label %420, label %419

419:                                              ; preds = %416
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 738, ptr noundef nonnull @.str.2) #21
  br label %420

420:                                              ; preds = %416, %419
  %421 = add i32 %214, 1
  br label %213, !llvm.loop !185

422:                                              ; preds = %231
  %423 = icmp eq i8 %217, 0
  br i1 %423, label %452, label %424

424:                                              ; preds = %422
  %425 = load ptr, ptr %168, align 8, !tbaa !65
  %426 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %425, i64 0, i32 3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #21
  store ptr %207, ptr %3, align 8, !tbaa !186
  store ptr %426, ptr %97, align 8, !tbaa !188
  %427 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %206, i64 0, i32 1, i32 2
  %428 = load ptr, ptr %427, align 8, !tbaa !77
  %429 = getelementptr inbounds %struct.shared_hash_def, ptr %428, i64 0, i32 1
  %430 = load ptr, ptr %429, align 8, !tbaa !83
  call void @htab_traverse(ptr noundef %430, ptr noundef nonnull @variable_post_merge_new_vals, ptr noundef nonnull %3) #21
  %431 = load ptr, ptr %426, align 8, !tbaa !35
  %432 = icmp eq ptr %431, null
  br i1 %432, label %438, label %433

433:                                              ; preds = %424
  %434 = getelementptr inbounds %struct.dataflow_set_def, ptr %431, i64 0, i32 2
  %435 = load ptr, ptr %434, align 8, !tbaa !77
  %436 = getelementptr inbounds %struct.shared_hash_def, ptr %435, i64 0, i32 1
  %437 = load ptr, ptr %436, align 8, !tbaa !83
  call void @htab_traverse(ptr noundef %437, ptr noundef nonnull @variable_post_merge_perm_vals, ptr noundef nonnull %3) #21
  br label %438

438:                                              ; preds = %424, %433
  %439 = load ptr, ptr %427, align 8, !tbaa !77
  %440 = getelementptr inbounds %struct.shared_hash_def, ptr %439, i64 0, i32 1
  %441 = load ptr, ptr %440, align 8, !tbaa !83
  call void @htab_traverse(ptr noundef %441, ptr noundef nonnull @canonicalize_values_star, ptr noundef nonnull %207) #21
  %442 = load ptr, ptr %427, align 8, !tbaa !77
  %443 = getelementptr inbounds %struct.shared_hash_def, ptr %442, i64 0, i32 1
  %444 = load ptr, ptr %443, align 8, !tbaa !83
  call void @htab_traverse(ptr noundef %444, ptr noundef nonnull @canonicalize_vars_star, ptr noundef nonnull %207) #21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #21
  %445 = load i1, ptr @dst_can_be_shared, align 1
  br i1 %445, label %446, label %452

446:                                              ; preds = %438
  %447 = load ptr, ptr %427, align 8, !tbaa !77
  call fastcc void @shared_hash_destroy(ptr noundef %447)
  %448 = getelementptr inbounds %struct.dataflow_set_def, ptr %215, i64 0, i32 2
  %449 = load ptr, ptr %448, align 8, !tbaa !77
  %450 = load i32, ptr %449, align 8, !tbaa !75
  %451 = add nsw i32 %450, 1
  store i32 %451, ptr %449, align 8, !tbaa !75
  store ptr %449, ptr %427, align 8, !tbaa !77
  br label %452

452:                                              ; preds = %438, %446, %422
  %453 = load ptr, ptr %168, align 8, !tbaa !65
  %454 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %453, i64 0, i32 5
  store i8 1, ptr %454, align 1, !tbaa !105
  br label %546

455:                                              ; preds = %200
  %456 = icmp eq ptr %119, null
  br label %457

457:                                              ; preds = %544, %455
  %458 = phi i32 [ 0, %455 ], [ %545, %544 ]
  br i1 %456, label %459, label %460

459:                                              ; preds = %457
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 687, ptr noundef nonnull @.str.2) #21
  br label %460

460:                                              ; preds = %459, %457
  %461 = load ptr, ptr %119, align 8, !tbaa !35
  %462 = icmp eq ptr %461, null
  br i1 %462, label %465, label %463

463:                                              ; preds = %460
  %464 = load i32, ptr %461, align 8, !tbaa !128
  br label %465

465:                                              ; preds = %463, %460
  %466 = phi i32 [ %464, %463 ], [ 0, %460 ]
  %467 = icmp eq i32 %466, %458
  br i1 %467, label %472, label %468

468:                                              ; preds = %465
  %469 = zext i32 %458 to i64
  %470 = getelementptr inbounds %struct.VEC_edge_base, ptr %461, i64 0, i32 2, i64 %469
  %471 = load ptr, ptr %470, align 8, !tbaa !35
  br label %472

472:                                              ; preds = %465, %468
  %473 = phi ptr [ %471, %468 ], [ null, %465 ]
  br i1 %467, label %546, label %474

474:                                              ; preds = %472
  %475 = load ptr, ptr %168, align 8, !tbaa !65
  %476 = load ptr, ptr %473, align 8, !tbaa !122
  %477 = getelementptr inbounds %struct.basic_block_def, ptr %476, i64 0, i32 2
  %478 = load ptr, ptr %477, align 8, !tbaa !65
  br label %479

479:                                              ; preds = %474, %517
  %480 = phi i64 [ 0, %474 ], [ %518, %517 ]
  %481 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %475, i64 0, i32 1, i32 1, i64 %480
  %482 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %478, i64 0, i32 2, i32 1, i64 %480
  %483 = load ptr, ptr %482, align 8, !tbaa !35
  %484 = icmp eq ptr %483, null
  br i1 %484, label %517, label %485

485:                                              ; preds = %479, %514
  %486 = phi ptr [ %515, %514 ], [ %483, %479 ]
  %487 = getelementptr inbounds %struct.attrs_def, ptr %486, i64 0, i32 2
  %488 = load ptr, ptr %487, align 8, !tbaa !159
  %489 = getelementptr inbounds %struct.attrs_def, ptr %486, i64 0, i32 3
  %490 = load i64, ptr %489, align 8, !tbaa !160
  %491 = load ptr, ptr %481, align 8, !tbaa !35
  %492 = icmp eq ptr %491, null
  br i1 %492, label %505, label %493

493:                                              ; preds = %485, %502
  %494 = phi ptr [ %503, %502 ], [ %491, %485 ]
  %495 = getelementptr inbounds %struct.attrs_def, ptr %494, i64 0, i32 2
  %496 = load ptr, ptr %495, align 8, !tbaa !159
  %497 = icmp eq ptr %496, %488
  br i1 %497, label %498, label %502

498:                                              ; preds = %493
  %499 = getelementptr inbounds %struct.attrs_def, ptr %494, i64 0, i32 3
  %500 = load i64, ptr %499, align 8, !tbaa !160
  %501 = icmp eq i64 %500, %490
  br i1 %501, label %514, label %502

502:                                              ; preds = %498, %493
  %503 = load ptr, ptr %494, align 8, !tbaa !35
  %504 = icmp eq ptr %503, null
  br i1 %504, label %505, label %493, !llvm.loop !177

505:                                              ; preds = %502, %485
  %506 = getelementptr inbounds %struct.attrs_def, ptr %486, i64 0, i32 1
  %507 = load ptr, ptr %506, align 8, !tbaa !157
  %508 = load ptr, ptr @attrs_pool, align 8, !tbaa !35
  %509 = call ptr @pool_alloc(ptr noundef %508) #21
  %510 = getelementptr inbounds %struct.attrs_def, ptr %509, i64 0, i32 1
  store ptr %507, ptr %510, align 8, !tbaa !157
  %511 = getelementptr inbounds %struct.attrs_def, ptr %509, i64 0, i32 2
  store ptr %488, ptr %511, align 8, !tbaa !159
  %512 = getelementptr inbounds %struct.attrs_def, ptr %509, i64 0, i32 3
  store i64 %490, ptr %512, align 8, !tbaa !160
  %513 = load ptr, ptr %481, align 8, !tbaa !35
  store ptr %513, ptr %509, align 8, !tbaa !161
  store ptr %509, ptr %481, align 8, !tbaa !35
  br label %514

514:                                              ; preds = %498, %505
  %515 = load ptr, ptr %486, align 8, !tbaa !35
  %516 = icmp eq ptr %515, null
  br i1 %516, label %517, label %485, !llvm.loop !189

517:                                              ; preds = %514, %479
  %518 = add nuw nsw i64 %480, 1
  %519 = icmp eq i64 %518, 53
  br i1 %519, label %520, label %479, !llvm.loop !190

520:                                              ; preds = %517
  %521 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %475, i64 0, i32 1, i32 2
  %522 = load ptr, ptr %521, align 8, !tbaa !77
  %523 = load ptr, ptr @empty_shared_hash, align 8, !tbaa !35
  %524 = icmp eq ptr %522, %523
  %525 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %478, i64 0, i32 2, i32 2
  br i1 %524, label %526, label %530

526:                                              ; preds = %520
  call fastcc void @shared_hash_destroy(ptr noundef %522)
  %527 = load ptr, ptr %525, align 8, !tbaa !77
  %528 = load i32, ptr %527, align 8, !tbaa !75
  %529 = add nsw i32 %528, 1
  store i32 %529, ptr %527, align 8, !tbaa !75
  store ptr %527, ptr %521, align 8, !tbaa !77
  br label %535

530:                                              ; preds = %520
  %531 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %475, i64 0, i32 1
  %532 = load ptr, ptr %525, align 8, !tbaa !77
  %533 = getelementptr inbounds %struct.shared_hash_def, ptr %532, i64 0, i32 1
  %534 = load ptr, ptr %533, align 8, !tbaa !83
  call void @htab_traverse(ptr noundef %534, ptr noundef nonnull @variable_union, ptr noundef nonnull %531) #21
  br label %535

535:                                              ; preds = %530, %526
  %536 = load ptr, ptr %119, align 8, !tbaa !35
  %537 = icmp eq ptr %536, null
  br i1 %537, label %540, label %538

538:                                              ; preds = %535
  %539 = load i32, ptr %536, align 8, !tbaa !128
  br label %540

540:                                              ; preds = %538, %535
  %541 = phi i32 [ %539, %538 ], [ 0, %535 ]
  %542 = icmp ult i32 %458, %541
  br i1 %542, label %544, label %543

543:                                              ; preds = %540
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 738, ptr noundef nonnull @.str.2) #21
  br label %544

544:                                              ; preds = %540, %543
  %545 = add i32 %458, 1
  br label %457, !llvm.loop !191

546:                                              ; preds = %472, %452
  call void @llvm.lifetime.start.p0(i64 448, ptr nonnull %2) #21
  %547 = load ptr, ptr %168, align 8, !tbaa !65
  %548 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %547, i64 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(424) %98, i8 0, i64 424, i1 false), !tbaa !35
  %549 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %547, i64 0, i32 2
  %550 = load ptr, ptr @empty_shared_hash, align 8, !tbaa !35
  %551 = load i32, ptr %550, align 8, !tbaa !75
  %552 = add nsw i32 %551, 1
  store i32 %552, ptr %550, align 8, !tbaa !75
  store ptr %550, ptr %99, align 8, !tbaa !77
  store i64 0, ptr %2, align 8, !tbaa !79
  store ptr null, ptr %100, align 8, !tbaa !80
  call fastcc void @dataflow_set_copy(ptr noundef nonnull %2, ptr noundef nonnull %549)
  call fastcc void @dataflow_set_copy(ptr noundef nonnull %549, ptr noundef nonnull %548)
  br label %553

553:                                              ; preds = %898, %546
  %554 = phi i32 [ 0, %546 ], [ %899, %898 ]
  %555 = load ptr, ptr %168, align 8, !tbaa !65
  %556 = load ptr, ptr %555, align 8, !tbaa !84
  %557 = icmp eq ptr %556, null
  br i1 %557, label %564, label %558

558:                                              ; preds = %553
  %559 = load i32, ptr %556, align 8, !tbaa !86
  %560 = icmp ugt i32 %559, %554
  br i1 %560, label %561, label %564

561:                                              ; preds = %558
  %562 = zext i32 %554 to i64
  %563 = getelementptr inbounds %struct.VEC_micro_operation_base, ptr %556, i64 0, i32 2, i64 %562
  br label %564

564:                                              ; preds = %561, %558, %553
  %565 = phi ptr [ %563, %561 ], [ null, %558 ], [ null, %553 ]
  %566 = phi i1 [ false, %561 ], [ true, %558 ], [ true, %553 ]
  br i1 %566, label %900, label %567

567:                                              ; preds = %564
  %568 = getelementptr inbounds %struct.micro_operation_def, ptr %565, i64 0, i32 1
  %569 = load ptr, ptr %568, align 8, !tbaa !88
  %570 = load i32, ptr %565, align 8, !tbaa !90
  switch i32 %570, label %898 [
    i32 8, label %571
    i32 0, label %572
    i32 3, label %607
    i32 2, label %644
    i32 4, label %704
    i32 5, label %833
    i32 6, label %851
    i32 1, label %879
    i32 7, label %886
    i32 9, label %893
  ]

571:                                              ; preds = %567
  call fastcc void @dataflow_set_clear_at_call(ptr noundef nonnull %549)
  br label %898

572:                                              ; preds = %567
  %573 = getelementptr inbounds %struct.micro_operation_def, ptr %565, i64 0, i32 2
  %574 = load ptr, ptr %573, align 8, !tbaa !46
  %575 = load i32, ptr %574, align 8
  %576 = trunc i32 %575 to i16
  switch i16 %576, label %898 [
    i16 37, label %577
    i16 43, label %590
  ]

577:                                              ; preds = %572
  %578 = getelementptr inbounds %struct.rtx_def, ptr %574, i64 0, i32 1, i32 0, i32 0, i64 2
  %579 = load ptr, ptr %578, align 8, !tbaa !46
  %580 = icmp eq ptr %579, null
  br i1 %580, label %583, label %581

581:                                              ; preds = %577
  %582 = load ptr, ptr %579, align 8, !tbaa !91
  br label %583

583:                                              ; preds = %581, %577
  %584 = phi ptr [ %582, %581 ], [ null, %577 ]
  br i1 %580, label %588, label %585

585:                                              ; preds = %583
  %586 = getelementptr inbounds %struct.reg_attrs, ptr %579, i64 0, i32 1
  %587 = load i64, ptr %586, align 8, !tbaa !93
  br label %588

588:                                              ; preds = %585, %583
  %589 = phi i64 [ %587, %585 ], [ 0, %583 ]
  call fastcc void @var_reg_decl_set(ptr noundef nonnull %549, ptr noundef nonnull %574, i32 noundef 1, ptr noundef %584, i64 noundef %589, ptr noundef null, i32 noundef 1)
  br label %898

590:                                              ; preds = %572
  %591 = getelementptr inbounds %struct.rtx_def, ptr %574, i64 0, i32 1, i32 0, i32 0, i64 1
  %592 = load ptr, ptr %591, align 8, !tbaa !46
  %593 = icmp eq ptr %592, null
  br i1 %593, label %596, label %594

594:                                              ; preds = %590
  %595 = load ptr, ptr %592, align 8, !tbaa !94
  br label %596

596:                                              ; preds = %594, %590
  %597 = phi ptr [ %595, %594 ], [ null, %590 ]
  br i1 %593, label %605, label %598

598:                                              ; preds = %596
  %599 = getelementptr inbounds %struct.mem_attrs, ptr %592, i64 0, i32 1
  %600 = load ptr, ptr %599, align 8, !tbaa !96
  %601 = icmp eq ptr %600, null
  br i1 %601, label %605, label %602

602:                                              ; preds = %598
  %603 = getelementptr inbounds %struct.rtx_def, ptr %600, i64 0, i32 1
  %604 = load i64, ptr %603, align 8, !tbaa !46
  br label %605

605:                                              ; preds = %602, %598, %596
  %606 = phi i64 [ %604, %602 ], [ 0, %596 ], [ 0, %598 ]
  call fastcc void @var_mem_decl_set(ptr noundef nonnull %549, ptr noundef nonnull %574, i32 noundef 1, ptr noundef %597, i64 noundef %606, ptr noundef null, i32 noundef 1)
  br label %898

607:                                              ; preds = %567
  %608 = getelementptr inbounds %struct.micro_operation_def, ptr %565, i64 0, i32 2
  %609 = load ptr, ptr %608, align 8, !tbaa !46
  %610 = load i32, ptr %609, align 8
  %611 = and i32 %610, 65535
  %612 = icmp eq i32 %611, 41
  br i1 %612, label %613, label %618

613:                                              ; preds = %607
  %614 = getelementptr inbounds %struct.rtx_def, ptr %609, i64 0, i32 1
  %615 = load ptr, ptr %614, align 8, !tbaa !46
  %616 = getelementptr inbounds %struct.rtx_def, ptr %609, i64 0, i32 1, i32 0, i32 0, i64 1
  %617 = load ptr, ptr %616, align 8, !tbaa !46
  br label %618

618:                                              ; preds = %613, %607
  %619 = phi ptr [ %617, %613 ], [ %609, %607 ]
  %620 = phi ptr [ %615, %613 ], [ null, %607 ]
  %621 = getelementptr inbounds %struct.rtx_def, ptr %619, i64 0, i32 1
  %622 = load ptr, ptr %621, align 8, !tbaa !46
  call fastcc void @clobber_variable_part(ptr noundef nonnull %549, ptr noundef null, ptr noundef %622, i64 noundef 0, ptr noundef null)
  %623 = icmp eq ptr %620, null
  br i1 %623, label %632, label %624

624:                                              ; preds = %618
  %625 = load i32, ptr %609, align 8
  %626 = and i32 %625, 134217728
  %627 = icmp eq i32 %626, 0
  br i1 %627, label %631, label %628

628:                                              ; preds = %624
  %629 = getelementptr inbounds %struct.rtx_def, ptr %619, i64 0, i32 1, i32 0, i32 0, i64 1
  %630 = load ptr, ptr %629, align 8, !tbaa !46
  call fastcc void @val_resolve(ptr noundef nonnull %549, ptr noundef nonnull %620, ptr noundef %630, ptr noundef %569)
  br label %631

631:                                              ; preds = %628, %624
  call fastcc void @set_variable_part(ptr noundef nonnull %549, ptr noundef nonnull %620, ptr noundef %622, i64 noundef 0, i32 noundef 2, ptr noundef null, i32 noundef 1)
  br label %898

632:                                              ; preds = %618
  %633 = getelementptr inbounds %struct.rtx_def, ptr %619, i64 0, i32 1, i32 0, i32 0, i64 1
  %634 = load ptr, ptr %633, align 8, !tbaa !46
  %635 = load i32, ptr %634, align 8
  %636 = and i32 %635, 65535
  %637 = icmp eq i32 %636, 25
  br i1 %637, label %638, label %643

638:                                              ; preds = %632
  %639 = getelementptr inbounds %struct.rtx_def, ptr %634, i64 0, i32 1
  %640 = load ptr, ptr %639, align 8, !tbaa !46
  %641 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !35
  %642 = icmp eq ptr %640, %641
  br i1 %642, label %898, label %643

643:                                              ; preds = %638, %632
  call fastcc void @set_variable_part(ptr noundef nonnull %549, ptr noundef nonnull %634, ptr noundef %622, i64 noundef 0, i32 noundef 2, ptr noundef null, i32 noundef 1)
  br label %898

644:                                              ; preds = %567
  %645 = getelementptr inbounds %struct.micro_operation_def, ptr %565, i64 0, i32 2
  %646 = load ptr, ptr %645, align 8, !tbaa !46
  %647 = getelementptr inbounds %struct.rtx_def, ptr %646, i64 0, i32 1
  %648 = getelementptr inbounds %struct.rtx_def, ptr %646, i64 0, i32 1, i32 0, i32 0, i64 1
  %649 = load ptr, ptr %648, align 8, !tbaa !46
  %650 = load ptr, ptr %647, align 8, !tbaa !46
  %651 = load i32, ptr %650, align 8
  %652 = and i32 %651, 65535
  %653 = icmp eq i32 %652, 41
  br i1 %653, label %654, label %659

654:                                              ; preds = %644
  %655 = getelementptr inbounds %struct.rtx_def, ptr %650, i64 0, i32 1
  %656 = getelementptr inbounds %struct.rtx_def, ptr %650, i64 0, i32 1, i32 0, i32 0, i64 1
  %657 = load ptr, ptr %656, align 8, !tbaa !46
  %658 = load ptr, ptr %655, align 8, !tbaa !46
  br label %659

659:                                              ; preds = %654, %644
  %660 = phi ptr [ %657, %654 ], [ %649, %644 ]
  %661 = phi ptr [ %658, %654 ], [ %650, %644 ]
  %662 = load i32, ptr %646, align 8
  %663 = and i32 %662, 134217728
  %664 = icmp eq i32 %663, 0
  br i1 %664, label %666, label %665

665:                                              ; preds = %659
  call fastcc void @val_resolve(ptr noundef nonnull %549, ptr noundef %661, ptr noundef %649, ptr noundef %569)
  br label %667

666:                                              ; preds = %659
  call fastcc void @val_store(ptr noundef nonnull %549, ptr noundef %661, ptr noundef %660, ptr noundef %569, i8 noundef zeroext 0)
  br label %667

667:                                              ; preds = %666, %665
  %668 = load i32, ptr %646, align 8
  %669 = and i32 %668, 536870912
  %670 = icmp eq i32 %669, 0
  br i1 %670, label %898, label %671

671:                                              ; preds = %667
  %672 = load i32, ptr %660, align 8
  %673 = trunc i32 %672 to i16
  switch i16 %673, label %898 [
    i16 37, label %674
    i16 43, label %687
  ]

674:                                              ; preds = %671
  %675 = getelementptr inbounds %struct.rtx_def, ptr %660, i64 0, i32 1, i32 0, i32 0, i64 2
  %676 = load ptr, ptr %675, align 8, !tbaa !46
  %677 = icmp eq ptr %676, null
  br i1 %677, label %680, label %678

678:                                              ; preds = %674
  %679 = load ptr, ptr %676, align 8, !tbaa !91
  br label %680

680:                                              ; preds = %678, %674
  %681 = phi ptr [ %679, %678 ], [ null, %674 ]
  br i1 %677, label %685, label %682

682:                                              ; preds = %680
  %683 = getelementptr inbounds %struct.reg_attrs, ptr %676, i64 0, i32 1
  %684 = load i64, ptr %683, align 8, !tbaa !93
  br label %685

685:                                              ; preds = %682, %680
  %686 = phi i64 [ %684, %682 ], [ 0, %680 ]
  call fastcc void @var_reg_decl_set(ptr noundef nonnull %549, ptr noundef nonnull %660, i32 noundef 1, ptr noundef %681, i64 noundef %686, ptr noundef null, i32 noundef 1)
  br label %898

687:                                              ; preds = %671
  %688 = getelementptr inbounds %struct.rtx_def, ptr %660, i64 0, i32 1, i32 0, i32 0, i64 1
  %689 = load ptr, ptr %688, align 8, !tbaa !46
  %690 = icmp eq ptr %689, null
  br i1 %690, label %693, label %691

691:                                              ; preds = %687
  %692 = load ptr, ptr %689, align 8, !tbaa !94
  br label %693

693:                                              ; preds = %691, %687
  %694 = phi ptr [ %692, %691 ], [ null, %687 ]
  br i1 %690, label %702, label %695

695:                                              ; preds = %693
  %696 = getelementptr inbounds %struct.mem_attrs, ptr %689, i64 0, i32 1
  %697 = load ptr, ptr %696, align 8, !tbaa !96
  %698 = icmp eq ptr %697, null
  br i1 %698, label %702, label %699

699:                                              ; preds = %695
  %700 = getelementptr inbounds %struct.rtx_def, ptr %697, i64 0, i32 1
  %701 = load i64, ptr %700, align 8, !tbaa !46
  br label %702

702:                                              ; preds = %699, %695, %693
  %703 = phi i64 [ %701, %699 ], [ 0, %693 ], [ 0, %695 ]
  call fastcc void @var_mem_decl_set(ptr noundef nonnull %549, ptr noundef nonnull %660, i32 noundef 1, ptr noundef %694, i64 noundef %703, ptr noundef null, i32 noundef 1)
  br label %898

704:                                              ; preds = %567
  %705 = getelementptr inbounds %struct.micro_operation_def, ptr %565, i64 0, i32 2
  %706 = load ptr, ptr %705, align 8, !tbaa !46
  %707 = load i32, ptr %706, align 8
  %708 = icmp sgt i32 %707, -1
  br i1 %708, label %714, label %709

709:                                              ; preds = %704
  %710 = getelementptr inbounds %struct.rtx_def, ptr %706, i64 0, i32 1
  %711 = getelementptr inbounds %struct.rtx_def, ptr %706, i64 0, i32 1, i32 0, i32 0, i64 1
  %712 = load ptr, ptr %711, align 8, !tbaa !46
  %713 = load ptr, ptr %710, align 8, !tbaa !46
  br label %714

714:                                              ; preds = %709, %704
  %715 = phi ptr [ %713, %709 ], [ %706, %704 ]
  %716 = phi ptr [ %712, %709 ], [ null, %704 ]
  %717 = getelementptr inbounds %struct.rtx_def, ptr %715, i64 0, i32 1
  %718 = getelementptr inbounds %struct.rtx_def, ptr %715, i64 0, i32 1, i32 0, i32 0, i64 1
  %719 = load ptr, ptr %718, align 8, !tbaa !46
  %720 = load ptr, ptr %717, align 8, !tbaa !46
  %721 = load i32, ptr %720, align 8
  %722 = and i32 %721, 65535
  %723 = icmp eq i32 %722, 41
  br i1 %723, label %724, label %729

724:                                              ; preds = %714
  %725 = getelementptr inbounds %struct.rtx_def, ptr %720, i64 0, i32 1
  %726 = getelementptr inbounds %struct.rtx_def, ptr %720, i64 0, i32 1, i32 0, i32 0, i64 1
  %727 = load ptr, ptr %726, align 8, !tbaa !46
  %728 = load ptr, ptr %725, align 8, !tbaa !46
  br label %729

729:                                              ; preds = %724, %714
  %730 = phi ptr [ %728, %724 ], [ %720, %714 ]
  %731 = phi ptr [ %727, %724 ], [ %719, %714 ]
  %732 = load i32, ptr %731, align 8
  %733 = and i32 %732, 65535
  %734 = icmp eq i32 %733, 23
  br i1 %734, label %735, label %753

735:                                              ; preds = %729
  %736 = getelementptr inbounds %struct.rtx_def, ptr %731, i64 0, i32 1
  %737 = getelementptr inbounds %struct.rtx_def, ptr %731, i64 0, i32 1, i32 0, i32 0, i64 1
  %738 = load ptr, ptr %737, align 8, !tbaa !46
  %739 = icmp eq ptr %730, %738
  br i1 %739, label %740, label %741

740:                                              ; preds = %735
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 5764, ptr noundef nonnull @.str.2) #21
  br label %741

741:                                              ; preds = %740, %735
  %742 = icmp eq ptr %731, %719
  br i1 %742, label %748, label %743

743:                                              ; preds = %741
  %744 = load i32, ptr %706, align 8
  %745 = and i32 %744, 134217728
  %746 = icmp eq i32 %745, 0
  br i1 %746, label %747, label %748

747:                                              ; preds = %743
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 5765, ptr noundef nonnull @.str.2) #21
  br label %748

748:                                              ; preds = %747, %743, %741
  %749 = load ptr, ptr %736, align 8, !tbaa !46
  %750 = load i32, ptr %706, align 8
  %751 = and i32 %750, 134217728
  %752 = icmp eq i32 %751, 0
  br i1 %752, label %773, label %770

753:                                              ; preds = %729
  %754 = and i32 %707, 134217728
  %755 = icmp eq i32 %754, 0
  br i1 %755, label %773, label %756

756:                                              ; preds = %753
  %757 = load i32, ptr %719, align 8
  %758 = and i32 %757, 65535
  %759 = icmp eq i32 %758, 23
  br i1 %759, label %760, label %766

760:                                              ; preds = %756
  %761 = getelementptr inbounds %struct.rtx_def, ptr %719, i64 0, i32 1, i32 0, i32 0, i64 1
  %762 = load ptr, ptr %761, align 8, !tbaa !46
  %763 = load i32, ptr %762, align 8
  %764 = and i32 %763, 65535
  %765 = icmp eq i32 %764, 37
  br i1 %765, label %767, label %766

766:                                              ; preds = %760, %756
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 5775, ptr noundef nonnull @.str.2) #21
  br label %767

767:                                              ; preds = %766, %760
  %768 = getelementptr inbounds %struct.rtx_def, ptr %719, i64 0, i32 1, i32 0, i32 0, i64 1
  %769 = load ptr, ptr %768, align 8, !tbaa !46
  br label %770

770:                                              ; preds = %748, %767
  %771 = phi ptr [ %769, %767 ], [ %738, %748 ]
  %772 = phi ptr [ %731, %767 ], [ %749, %748 ]
  call fastcc void @val_resolve(ptr noundef nonnull %549, ptr noundef %730, ptr noundef %771, ptr noundef %569)
  br label %773

773:                                              ; preds = %770, %753, %748
  %774 = phi ptr [ %731, %753 ], [ %749, %748 ], [ %772, %770 ]
  %775 = load i32, ptr %706, align 8
  %776 = and i32 %775, 536870912
  %777 = icmp eq i32 %776, 0
  br i1 %777, label %819, label %778

778:                                              ; preds = %773
  %779 = and i32 %775, 67108864
  %780 = icmp eq i32 %779, 0
  %781 = load i32, ptr %719, align 8
  br i1 %780, label %786, label %782

782:                                              ; preds = %778
  %783 = trunc i32 %781 to i16
  switch i16 %783, label %826 [
    i16 37, label %784
    i16 43, label %785
  ]

784:                                              ; preds = %782
  call fastcc void @var_reg_delete(ptr noundef nonnull %549, ptr noundef nonnull %719, i8 noundef zeroext 1)
  br label %826

785:                                              ; preds = %782
  call fastcc void @var_mem_delete(ptr noundef nonnull %549, ptr noundef nonnull %719, i8 noundef zeroext 1)
  br label %826

786:                                              ; preds = %778
  %787 = and i32 %781, 65535
  %788 = icmp eq i32 %787, 23
  br i1 %788, label %789, label %794

789:                                              ; preds = %786
  %790 = getelementptr inbounds %struct.rtx_def, ptr %719, i64 0, i32 1
  %791 = getelementptr inbounds %struct.rtx_def, ptr %719, i64 0, i32 1, i32 0, i32 0, i64 1
  %792 = load ptr, ptr %791, align 8, !tbaa !46
  %793 = load ptr, ptr %790, align 8, !tbaa !46
  br label %794

794:                                              ; preds = %789, %786
  %795 = phi ptr [ %793, %789 ], [ %719, %786 ]
  %796 = phi ptr [ %792, %789 ], [ null, %786 ]
  %797 = and i32 %775, 16777216
  %798 = icmp eq i32 %797, 0
  br i1 %798, label %810, label %799

799:                                              ; preds = %794
  %800 = load i32, ptr @flag_var_tracking_uninit, align 4, !tbaa !50
  %801 = icmp eq i32 %800, 0
  br i1 %801, label %807, label %802

802:                                              ; preds = %799
  %803 = call fastcc i32 @find_src_status(ptr noundef nonnull %548, ptr noundef %796)
  %804 = icmp eq i32 %803, 0
  br i1 %804, label %805, label %807

805:                                              ; preds = %802
  %806 = call fastcc i32 @find_src_status(ptr noundef nonnull %549, ptr noundef %796)
  br label %807

807:                                              ; preds = %805, %802, %799
  %808 = phi i32 [ %806, %805 ], [ %803, %802 ], [ 2, %799 ]
  %809 = call fastcc ptr @find_src_set_src(ptr noundef nonnull %548, ptr noundef %796)
  br label %810

810:                                              ; preds = %807, %794
  %811 = phi ptr [ %809, %807 ], [ %796, %794 ]
  %812 = phi i32 [ %808, %807 ], [ 2, %794 ]
  %813 = load i32, ptr %795, align 8
  %814 = trunc i32 %813 to i16
  switch i16 %814, label %826 [
    i16 37, label %815
    i16 43, label %817
  ]

815:                                              ; preds = %810
  %816 = zext i1 %798 to i8
  call fastcc void @var_reg_delete_and_set(ptr noundef nonnull %549, ptr noundef nonnull %795, i8 noundef zeroext %816, i32 noundef %812, ptr noundef %811)
  br label %826

817:                                              ; preds = %810
  %818 = zext i1 %798 to i8
  call fastcc void @var_mem_delete_and_set(ptr noundef nonnull %549, ptr noundef nonnull %795, i8 noundef zeroext %818, i32 noundef %812, ptr noundef %811)
  br label %826

819:                                              ; preds = %773
  %820 = load i32, ptr %719, align 8
  %821 = and i32 %820, 65535
  %822 = icmp eq i32 %821, 37
  br i1 %822, label %823, label %826

823:                                              ; preds = %819
  %824 = getelementptr inbounds %struct.rtx_def, ptr %719, i64 0, i32 1
  %825 = load i32, ptr %824, align 8, !tbaa !46
  call fastcc void @var_regno_delete(ptr noundef nonnull %549, i32 noundef %825)
  br label %826

826:                                              ; preds = %823, %819, %817, %815, %810, %785, %784, %782
  call fastcc void @val_store(ptr noundef nonnull %549, ptr noundef %730, ptr noundef %774, ptr noundef %569, i8 noundef zeroext 1)
  %827 = icmp eq ptr %716, null
  br i1 %827, label %898, label %828

828:                                              ; preds = %826
  %829 = getelementptr inbounds %struct.rtx_def, ptr %716, i64 0, i32 1
  %830 = load ptr, ptr %829, align 8, !tbaa !46
  %831 = getelementptr inbounds %struct.rtx_def, ptr %716, i64 0, i32 1, i32 0, i32 0, i64 1
  %832 = load ptr, ptr %831, align 8, !tbaa !46
  call fastcc void @val_store(ptr noundef nonnull %549, ptr noundef %830, ptr noundef %832, ptr noundef %569, i8 noundef zeroext 0)
  br label %898

833:                                              ; preds = %567
  %834 = getelementptr inbounds %struct.micro_operation_def, ptr %565, i64 0, i32 2
  %835 = load ptr, ptr %834, align 8, !tbaa !46
  %836 = load i32, ptr %835, align 8
  %837 = and i32 %836, 65535
  %838 = icmp eq i32 %837, 23
  br i1 %838, label %839, label %844

839:                                              ; preds = %833
  %840 = getelementptr inbounds %struct.rtx_def, ptr %835, i64 0, i32 1
  %841 = getelementptr inbounds %struct.rtx_def, ptr %835, i64 0, i32 1, i32 0, i32 0, i64 1
  %842 = load ptr, ptr %841, align 8, !tbaa !46
  %843 = load ptr, ptr %840, align 8, !tbaa !46
  br label %844

844:                                              ; preds = %839, %833
  %845 = phi ptr [ %843, %839 ], [ %835, %833 ]
  %846 = phi ptr [ %842, %839 ], [ null, %833 ]
  %847 = load i32, ptr %845, align 8
  %848 = trunc i32 %847 to i16
  switch i16 %848, label %898 [
    i16 37, label %849
    i16 43, label %850
  ]

849:                                              ; preds = %844
  call fastcc void @var_reg_delete_and_set(ptr noundef nonnull %549, ptr noundef nonnull %845, i8 noundef zeroext 1, i32 noundef 2, ptr noundef %846)
  br label %898

850:                                              ; preds = %844
  call fastcc void @var_mem_delete_and_set(ptr noundef nonnull %549, ptr noundef nonnull %845, i8 noundef zeroext 1, i32 noundef 2, ptr noundef %846)
  br label %898

851:                                              ; preds = %567
  %852 = getelementptr inbounds %struct.micro_operation_def, ptr %565, i64 0, i32 2
  %853 = load ptr, ptr %852, align 8, !tbaa !46
  %854 = load i32, ptr %853, align 8
  %855 = and i32 %854, 65535
  %856 = icmp eq i32 %855, 23
  br i1 %856, label %857, label %862

857:                                              ; preds = %851
  %858 = getelementptr inbounds %struct.rtx_def, ptr %853, i64 0, i32 1
  %859 = getelementptr inbounds %struct.rtx_def, ptr %853, i64 0, i32 1, i32 0, i32 0, i64 1
  %860 = load ptr, ptr %859, align 8, !tbaa !46
  %861 = load ptr, ptr %858, align 8, !tbaa !46
  br label %862

862:                                              ; preds = %857, %851
  %863 = phi ptr [ %861, %857 ], [ %853, %851 ]
  %864 = phi ptr [ %860, %857 ], [ null, %851 ]
  %865 = load i32, ptr @flag_var_tracking_uninit, align 4, !tbaa !50
  %866 = icmp eq i32 %865, 0
  br i1 %866, label %872, label %867

867:                                              ; preds = %862
  %868 = call fastcc i32 @find_src_status(ptr noundef nonnull %548, ptr noundef %864)
  %869 = icmp eq i32 %868, 0
  br i1 %869, label %870, label %872

870:                                              ; preds = %867
  %871 = call fastcc i32 @find_src_status(ptr noundef nonnull %549, ptr noundef %864)
  br label %872

872:                                              ; preds = %870, %867, %862
  %873 = phi i32 [ %871, %870 ], [ %868, %867 ], [ 2, %862 ]
  %874 = call fastcc ptr @find_src_set_src(ptr noundef nonnull %548, ptr noundef %864)
  %875 = load i32, ptr %863, align 8
  %876 = trunc i32 %875 to i16
  switch i16 %876, label %898 [
    i16 37, label %877
    i16 43, label %878
  ]

877:                                              ; preds = %872
  call fastcc void @var_reg_delete_and_set(ptr noundef nonnull %549, ptr noundef nonnull %863, i8 noundef zeroext 0, i32 noundef %873, ptr noundef %874)
  br label %898

878:                                              ; preds = %872
  call fastcc void @var_mem_delete_and_set(ptr noundef nonnull %549, ptr noundef nonnull %863, i8 noundef zeroext 0, i32 noundef %873, ptr noundef %874)
  br label %898

879:                                              ; preds = %567
  %880 = getelementptr inbounds %struct.micro_operation_def, ptr %565, i64 0, i32 2
  %881 = load ptr, ptr %880, align 8, !tbaa !46
  %882 = load i32, ptr %881, align 8
  %883 = trunc i32 %882 to i16
  switch i16 %883, label %898 [
    i16 37, label %884
    i16 43, label %885
  ]

884:                                              ; preds = %879
  call fastcc void @var_reg_delete(ptr noundef nonnull %549, ptr noundef nonnull %881, i8 noundef zeroext 0)
  br label %898

885:                                              ; preds = %879
  call fastcc void @var_mem_delete(ptr noundef nonnull %549, ptr noundef nonnull %881, i8 noundef zeroext 0)
  br label %898

886:                                              ; preds = %567
  %887 = getelementptr inbounds %struct.micro_operation_def, ptr %565, i64 0, i32 2
  %888 = load ptr, ptr %887, align 8, !tbaa !46
  %889 = load i32, ptr %888, align 8
  %890 = trunc i32 %889 to i16
  switch i16 %890, label %898 [
    i16 37, label %891
    i16 43, label %892
  ]

891:                                              ; preds = %886
  call fastcc void @var_reg_delete(ptr noundef nonnull %549, ptr noundef nonnull %888, i8 noundef zeroext 1)
  br label %898

892:                                              ; preds = %886
  call fastcc void @var_mem_delete(ptr noundef nonnull %549, ptr noundef nonnull %888, i8 noundef zeroext 1)
  br label %898

893:                                              ; preds = %567
  %894 = getelementptr inbounds %struct.micro_operation_def, ptr %565, i64 0, i32 2
  %895 = load i64, ptr %894, align 8, !tbaa !46
  %896 = load i64, ptr %549, align 8, !tbaa !79
  %897 = add nsw i64 %896, %895
  store i64 %897, ptr %549, align 8, !tbaa !79
  br label %898

898:                                              ; preds = %893, %892, %891, %886, %885, %884, %879, %878, %877, %872, %850, %849, %844, %828, %826, %702, %685, %671, %667, %643, %638, %631, %605, %588, %572, %571, %567
  %899 = add i32 %554, 1
  br label %553, !llvm.loop !192

900:                                              ; preds = %564
  %901 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !50
  %902 = icmp eq i32 %901, 0
  br i1 %902, label %1117, label %903

903:                                              ; preds = %900
  %904 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %547, i64 0, i32 2, i32 2
  br label %905

905:                                              ; preds = %903, %1106
  %906 = phi i64 [ 0, %903 ], [ %1107, %1106 ]
  call void @llvm.lifetime.start.p0(i64 696, ptr nonnull %1) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(696) %1, i8 0, i64 696, i1 false)
  %907 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %547, i64 0, i32 2, i32 1, i64 %906
  %908 = load ptr, ptr %907, align 8, !tbaa !35
  %909 = icmp eq ptr %908, null
  br i1 %909, label %910, label %913

910:                                              ; preds = %953, %905
  %911 = load ptr, ptr %907, align 8, !tbaa !35
  %912 = icmp eq ptr %911, null
  br i1 %912, label %956, label %959

913:                                              ; preds = %905, %953
  %914 = phi ptr [ %954, %953 ], [ %908, %905 ]
  %915 = getelementptr inbounds %struct.attrs_def, ptr %914, i64 0, i32 3
  %916 = load i64, ptr %915, align 8, !tbaa !160
  %917 = icmp eq i64 %916, 0
  br i1 %917, label %918, label %953

918:                                              ; preds = %913
  %919 = getelementptr inbounds %struct.attrs_def, ptr %914, i64 0, i32 2
  %920 = load ptr, ptr %919, align 8, !tbaa !159
  %921 = icmp eq ptr %920, null
  br i1 %921, label %927, label %922

922:                                              ; preds = %918
  %923 = load i64, ptr %920, align 8
  %924 = and i64 %923, 65535
  %925 = icmp eq i64 %924, 1
  %926 = zext i1 %925 to i8
  br label %927

927:                                              ; preds = %922, %918
  %928 = phi i8 [ 0, %918 ], [ %926, %922 ]
  %929 = icmp eq i8 %928, 0
  br i1 %929, label %953, label %930

930:                                              ; preds = %927
  %931 = load i32, ptr %920, align 8
  %932 = lshr i32 %931, 16
  %933 = and i32 %932, 255
  %934 = zext nneg i32 %933 to i64
  %935 = getelementptr inbounds [87 x ptr], ptr %1, i64 0, i64 %934
  %936 = load ptr, ptr %935, align 8, !tbaa !35
  %937 = icmp eq ptr %936, null
  br i1 %937, label %949, label %938

938:                                              ; preds = %930
  %939 = getelementptr inbounds %struct.rtx_def, ptr %920, i64 0, i32 1
  %940 = load ptr, ptr %939, align 8, !tbaa !46
  %941 = getelementptr inbounds %struct.cselib_val_struct, ptr %940, i64 0, i32 1
  %942 = load i32, ptr %941, align 4, !tbaa !193
  %943 = getelementptr inbounds %struct.rtx_def, ptr %936, i64 0, i32 1
  %944 = load ptr, ptr %943, align 8, !tbaa !46
  %945 = getelementptr inbounds %struct.cselib_val_struct, ptr %944, i64 0, i32 1
  %946 = load i32, ptr %945, align 4, !tbaa !193
  %947 = icmp slt i32 %942, %946
  %948 = zext i1 %947 to i8
  br label %949

949:                                              ; preds = %938, %930
  %950 = phi i8 [ 1, %930 ], [ %948, %938 ]
  %951 = icmp eq i8 %950, 0
  br i1 %951, label %953, label %952

952:                                              ; preds = %949
  store ptr %920, ptr %935, align 8, !tbaa !35
  br label %953

953:                                              ; preds = %952, %949, %927, %913
  %954 = load ptr, ptr %914, align 8, !tbaa !35
  %955 = icmp eq ptr %954, null
  br i1 %955, label %910, label %913, !llvm.loop !194

956:                                              ; preds = %1019, %910
  %957 = load ptr, ptr %907, align 8, !tbaa !35
  %958 = icmp eq ptr %957, null
  br i1 %958, label %1106, label %1022

959:                                              ; preds = %910, %1019
  %960 = phi ptr [ %1020, %1019 ], [ %911, %910 ]
  %961 = getelementptr inbounds %struct.attrs_def, ptr %960, i64 0, i32 3
  %962 = load i64, ptr %961, align 8, !tbaa !160
  %963 = icmp eq i64 %962, 0
  br i1 %963, label %964, label %1019

964:                                              ; preds = %959
  %965 = getelementptr inbounds %struct.attrs_def, ptr %960, i64 0, i32 2
  %966 = load ptr, ptr %965, align 8, !tbaa !159
  %967 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !50
  %968 = icmp eq i32 %967, 0
  br i1 %968, label %986, label %969

969:                                              ; preds = %964
  %970 = icmp eq ptr %966, null
  br i1 %970, label %975, label %971

971:                                              ; preds = %969
  %972 = load i64, ptr %966, align 8
  %973 = and i64 %972, 65535
  %974 = icmp eq i64 %973, 1
  br label %975

975:                                              ; preds = %971, %969
  %976 = phi i1 [ false, %969 ], [ %974, %971 ]
  %977 = or i1 %970, %976
  br i1 %977, label %986, label %978

978:                                              ; preds = %975
  %979 = load i64, ptr %966, align 8
  %980 = and i64 %979, 65535
  %981 = icmp eq i64 %980, 37
  br i1 %981, label %986, label %982

982:                                              ; preds = %978
  %983 = call ptr @target_for_debug_bind(ptr noundef nonnull %966) #21
  %984 = icmp ne ptr %983, null
  %985 = zext i1 %984 to i8
  br label %986

986:                                              ; preds = %982, %978, %975, %964
  %987 = phi i8 [ %985, %982 ], [ 0, %964 ], [ 1, %975 ], [ 1, %978 ]
  %988 = icmp eq i8 %987, 0
  br i1 %988, label %1019, label %989

989:                                              ; preds = %986
  %990 = getelementptr inbounds %struct.attrs_def, ptr %960, i64 0, i32 1
  %991 = load ptr, ptr %990, align 8, !tbaa !157
  %992 = load i32, ptr %991, align 8
  %993 = lshr i32 %992, 16
  %994 = and i32 %993, 255
  %995 = zext nneg i32 %994 to i64
  %996 = getelementptr inbounds [87 x ptr], ptr %1, i64 0, i64 %995
  %997 = load ptr, ptr %996, align 8, !tbaa !35
  %998 = icmp eq ptr %997, null
  br i1 %998, label %1019, label %999

999:                                              ; preds = %989
  %1000 = load ptr, ptr %965, align 8, !tbaa !159
  %1001 = icmp eq ptr %1000, null
  br i1 %1001, label %1007, label %1002

1002:                                             ; preds = %999
  %1003 = load i64, ptr %1000, align 8
  %1004 = and i64 %1003, 65535
  %1005 = icmp eq i64 %1004, 1
  %1006 = zext i1 %1005 to i8
  br label %1007

1007:                                             ; preds = %1002, %999
  %1008 = phi i8 [ 0, %999 ], [ %1006, %1002 ]
  %1009 = icmp eq i8 %1008, 0
  br i1 %1009, label %1015, label %1010

1010:                                             ; preds = %1007
  %1011 = icmp eq ptr %1000, %997
  br i1 %1011, label %1019, label %1012

1012:                                             ; preds = %1010
  %1013 = load i32, ptr %1000, align 8
  %1014 = or i32 %1013, 536870912
  store i32 %1014, ptr %1000, align 8
  call fastcc void @set_variable_part(ptr noundef nonnull %549, ptr noundef nonnull %1000, ptr noundef nonnull %997, i64 noundef 0, i32 noundef 2, ptr noundef null, i32 noundef 0)
  br label %1015

1015:                                             ; preds = %1012, %1007
  %1016 = load i32, ptr %997, align 8
  %1017 = or i32 %1016, 536870912
  store i32 %1017, ptr %997, align 8
  %1018 = load ptr, ptr %965, align 8, !tbaa !159
  call fastcc void @set_variable_part(ptr noundef nonnull %549, ptr noundef nonnull %997, ptr noundef %1018, i64 noundef 0, i32 noundef 2, ptr noundef null, i32 noundef 0)
  br label %1019

1019:                                             ; preds = %1015, %1010, %989, %986, %959
  %1020 = load ptr, ptr %960, align 8, !tbaa !35
  %1021 = icmp eq ptr %1020, null
  br i1 %1021, label %956, label %959, !llvm.loop !195

1022:                                             ; preds = %956, %1100
  %1023 = phi ptr [ %1104, %1100 ], [ %957, %956 ]
  %1024 = phi ptr [ %1103, %1100 ], [ %907, %956 ]
  %1025 = getelementptr inbounds %struct.attrs_def, ptr %1023, i64 0, i32 3
  %1026 = load i64, ptr %1025, align 8, !tbaa !160
  %1027 = icmp eq i64 %1026, 0
  br i1 %1027, label %1028, label %1100

1028:                                             ; preds = %1022
  %1029 = getelementptr inbounds %struct.attrs_def, ptr %1023, i64 0, i32 2
  %1030 = load ptr, ptr %1029, align 8, !tbaa !159
  %1031 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !50
  %1032 = icmp eq i32 %1031, 0
  br i1 %1032, label %1050, label %1033

1033:                                             ; preds = %1028
  %1034 = icmp eq ptr %1030, null
  br i1 %1034, label %1039, label %1035

1035:                                             ; preds = %1033
  %1036 = load i64, ptr %1030, align 8
  %1037 = and i64 %1036, 65535
  %1038 = icmp eq i64 %1037, 1
  br label %1039

1039:                                             ; preds = %1035, %1033
  %1040 = phi i1 [ false, %1033 ], [ %1038, %1035 ]
  %1041 = or i1 %1034, %1040
  br i1 %1041, label %1050, label %1042

1042:                                             ; preds = %1039
  %1043 = load i64, ptr %1030, align 8
  %1044 = and i64 %1043, 65535
  %1045 = icmp eq i64 %1044, 37
  br i1 %1045, label %1050, label %1046

1046:                                             ; preds = %1042
  %1047 = call ptr @target_for_debug_bind(ptr noundef nonnull %1030) #21
  %1048 = icmp ne ptr %1047, null
  %1049 = zext i1 %1048 to i8
  br label %1050

1050:                                             ; preds = %1046, %1042, %1039, %1028
  %1051 = phi i8 [ %1049, %1046 ], [ 0, %1028 ], [ 1, %1039 ], [ 1, %1042 ]
  %1052 = icmp eq i8 %1051, 0
  br i1 %1052, label %1100, label %1053

1053:                                             ; preds = %1050
  %1054 = getelementptr inbounds %struct.attrs_def, ptr %1023, i64 0, i32 1
  %1055 = load ptr, ptr %1054, align 8, !tbaa !157
  %1056 = load i32, ptr %1055, align 8
  %1057 = lshr i32 %1056, 16
  %1058 = and i32 %1057, 255
  %1059 = zext nneg i32 %1058 to i64
  %1060 = getelementptr inbounds [87 x ptr], ptr %1, i64 0, i64 %1059
  %1061 = load ptr, ptr %1060, align 8, !tbaa !35
  %1062 = icmp eq ptr %1061, null
  br i1 %1062, label %1100, label %1063

1063:                                             ; preds = %1053
  %1064 = load ptr, ptr %1029, align 8, !tbaa !159
  %1065 = icmp eq ptr %1064, null
  br i1 %1065, label %1071, label %1066

1066:                                             ; preds = %1063
  %1067 = load i64, ptr %1064, align 8
  %1068 = and i64 %1067, 65535
  %1069 = icmp eq i64 %1068, 1
  %1070 = zext i1 %1069 to i8
  br label %1071

1071:                                             ; preds = %1066, %1063
  %1072 = phi i8 [ 0, %1063 ], [ %1070, %1066 ]
  %1073 = icmp eq i8 %1072, 0
  br i1 %1073, label %1078, label %1074

1074:                                             ; preds = %1071
  %1075 = load i32, ptr %1064, align 8
  %1076 = and i32 %1075, 536870912
  %1077 = icmp eq i32 %1076, 0
  br i1 %1077, label %1100, label %1078

1078:                                             ; preds = %1074, %1071
  %1079 = load ptr, ptr %904, align 8, !tbaa !77
  br i1 %1065, label %1088, label %1080

1080:                                             ; preds = %1078
  %1081 = load i64, ptr %1064, align 8
  %1082 = and i64 %1081, 65535
  %1083 = icmp eq i64 %1082, 1
  br i1 %1083, label %1084, label %1088

1084:                                             ; preds = %1080
  %1085 = getelementptr inbounds %struct.rtx_def, ptr %1064, i64 0, i32 1
  %1086 = load ptr, ptr %1085, align 8, !tbaa !46
  %1087 = getelementptr inbounds %struct.cselib_val_struct, ptr %1086, i64 0, i32 1
  br label %1090

1088:                                             ; preds = %1080, %1078
  %1089 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1064, i64 0, i32 2
  br label %1090

1090:                                             ; preds = %1088, %1084
  %1091 = phi ptr [ %1087, %1084 ], [ %1089, %1088 ]
  %1092 = load i32, ptr %1091, align 4, !tbaa !46
  %1093 = getelementptr inbounds %struct.shared_hash_def, ptr %1079, i64 0, i32 1
  %1094 = load ptr, ptr %1093, align 8, !tbaa !83
  %1095 = call ptr @htab_find_slot_with_hash(ptr noundef %1094, ptr noundef %1064, i32 noundef %1092, i32 noundef 0) #21
  %1096 = call i32 @canonicalize_values_star(ptr noundef %1095, ptr noundef nonnull %549)
  %1097 = load ptr, ptr %1024, align 8, !tbaa !35
  %1098 = icmp eq ptr %1097, %1023
  %1099 = select i1 %1098, ptr %1023, ptr null
  br label %1100

1100:                                             ; preds = %1090, %1074, %1053, %1050, %1022
  %1101 = phi ptr [ %1023, %1050 ], [ %1023, %1022 ], [ %1099, %1090 ], [ %1023, %1074 ], [ %1023, %1053 ]
  %1102 = icmp eq ptr %1101, null
  %1103 = select i1 %1102, ptr %1024, ptr %1101
  %1104 = load ptr, ptr %1103, align 8, !tbaa !35
  %1105 = icmp eq ptr %1104, null
  br i1 %1105, label %1106, label %1022, !llvm.loop !196

1106:                                             ; preds = %1100, %956
  call void @llvm.lifetime.end.p0(i64 696, ptr nonnull %1) #21
  %1107 = add nuw nsw i64 %906, 1
  %1108 = icmp eq i64 %1107, 53
  br i1 %1108, label %1109, label %905, !llvm.loop !197

1109:                                             ; preds = %1106
  %1110 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %547, i64 0, i32 2, i32 2
  %1111 = load ptr, ptr %1110, align 8, !tbaa !77
  %1112 = getelementptr inbounds %struct.shared_hash_def, ptr %1111, i64 0, i32 1
  %1113 = load ptr, ptr %1112, align 8, !tbaa !83
  call void @htab_traverse(ptr noundef %1113, ptr noundef nonnull @canonicalize_values_mark, ptr noundef nonnull %549) #21
  %1114 = load ptr, ptr %1110, align 8, !tbaa !77
  %1115 = getelementptr inbounds %struct.shared_hash_def, ptr %1114, i64 0, i32 1
  %1116 = load ptr, ptr %1115, align 8, !tbaa !83
  call void @htab_traverse(ptr noundef %1116, ptr noundef nonnull @canonicalize_values_star, ptr noundef nonnull %549) #21
  br label %1117

1117:                                             ; preds = %1109, %900
  %1118 = load ptr, ptr %99, align 8, !tbaa !77
  %1119 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %547, i64 0, i32 2, i32 2
  %1120 = load ptr, ptr %1119, align 8, !tbaa !77
  %1121 = icmp eq ptr %1118, %1120
  br i1 %1121, label %1138, label %1122

1122:                                             ; preds = %1117
  %1123 = getelementptr inbounds %struct.shared_hash_def, ptr %1118, i64 0, i32 1
  %1124 = load ptr, ptr %1123, align 8, !tbaa !83
  %1125 = call i64 @htab_elements(ptr noundef %1124) #21
  %1126 = load ptr, ptr %1119, align 8, !tbaa !77
  %1127 = getelementptr inbounds %struct.shared_hash_def, ptr %1126, i64 0, i32 1
  %1128 = load ptr, ptr %1127, align 8, !tbaa !83
  %1129 = call i64 @htab_elements(ptr noundef %1128) #21
  %1130 = icmp eq i64 %1125, %1129
  br i1 %1130, label %1131, label %1138

1131:                                             ; preds = %1122
  store i1 false, ptr @dataflow_set_different_value, align 1
  %1132 = load ptr, ptr %1123, align 8, !tbaa !83
  %1133 = load ptr, ptr %1119, align 8, !tbaa !77
  %1134 = getelementptr inbounds %struct.shared_hash_def, ptr %1133, i64 0, i32 1
  %1135 = load ptr, ptr %1134, align 8, !tbaa !83
  call void @htab_traverse(ptr noundef %1132, ptr noundef nonnull @dataflow_set_different_1, ptr noundef %1135) #21
  %1136 = load i1, ptr @dataflow_set_different_value, align 1
  %1137 = zext i1 %1136 to i8
  br label %1138

1138:                                             ; preds = %1117, %1122, %1131
  %1139 = phi i8 [ %1137, %1131 ], [ 0, %1117 ], [ 1, %1122 ]
  call fastcc void @dataflow_set_destroy(ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(i64 448, ptr nonnull %2) #21
  %1140 = load ptr, ptr %168, align 8, !tbaa !65
  %1141 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %1140, i64 0, i32 1, i32 2
  %1142 = load ptr, ptr %1141, align 8, !tbaa !173
  %1143 = getelementptr inbounds %struct.shared_hash_def, ptr %1142, i64 0, i32 1
  %1144 = load ptr, ptr %1143, align 8, !tbaa !83
  %1145 = call i64 @htab_size(ptr noundef %1144) #21
  %1146 = load ptr, ptr %168, align 8, !tbaa !65
  %1147 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %1146, i64 0, i32 2, i32 2
  %1148 = load ptr, ptr %1147, align 8, !tbaa !174
  %1149 = getelementptr inbounds %struct.shared_hash_def, ptr %1148, i64 0, i32 1
  %1150 = load ptr, ptr %1149, align 8, !tbaa !83
  %1151 = call i64 @htab_size(ptr noundef %1150) #21
  %1152 = add i64 %1151, %1145
  %1153 = trunc i64 %1152 to i32
  %1154 = add i32 %203, %1153
  %1155 = icmp sle i32 %1154, %8
  %1156 = select i1 %101, i1 true, i1 %1155
  br i1 %1156, label %1167, label %1157

1157:                                             ; preds = %1138
  %1158 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !50
  %1159 = icmp eq i32 %1158, 0
  %1160 = load ptr, ptr @cfun, align 8, !tbaa !35
  %1161 = getelementptr inbounds %struct.function, ptr %1160, i64 0, i32 6
  %1162 = load ptr, ptr %1161, align 8, !tbaa !198
  %1163 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1162, i64 0, i32 1
  %1164 = load i32, ptr %1163, align 8, !tbaa !46
  br i1 %1159, label %1166, label %1165

1165:                                             ; preds = %1157
  call void (i32, ptr, ...) @inform(i32 noundef %1164, ptr noundef nonnull @.str.22) #21
  br label %1305

1166:                                             ; preds = %1157
  call void (i32, ptr, ...) @inform(i32 noundef %1164, ptr noundef nonnull @.str.23) #21
  br label %1305

1167:                                             ; preds = %1138
  %1168 = icmp eq i8 %1139, 0
  br i1 %1168, label %1264, label %1169

1169:                                             ; preds = %1167
  %1170 = getelementptr inbounds %struct.basic_block_def, ptr %119, i64 0, i32 1
  br label %1171

1171:                                             ; preds = %1262, %1169
  %1172 = phi i32 [ 0, %1169 ], [ %1263, %1262 ]
  %1173 = load ptr, ptr %1170, align 8, !tbaa !35
  %1174 = icmp eq ptr %1173, null
  br i1 %1174, label %1177, label %1175

1175:                                             ; preds = %1171
  %1176 = load i32, ptr %1173, align 8, !tbaa !128
  br label %1177

1177:                                             ; preds = %1175, %1171
  %1178 = phi i32 [ %1176, %1175 ], [ 0, %1171 ]
  %1179 = icmp eq i32 %1178, %1172
  br i1 %1179, label %1184, label %1180

1180:                                             ; preds = %1177
  %1181 = zext i32 %1172 to i64
  %1182 = getelementptr inbounds %struct.VEC_edge_base, ptr %1173, i64 0, i32 2, i64 %1181
  %1183 = load ptr, ptr %1182, align 8, !tbaa !35
  br label %1184

1184:                                             ; preds = %1177, %1180
  %1185 = phi ptr [ %1183, %1180 ], [ null, %1177 ]
  br i1 %1179, label %1264, label %1186

1186:                                             ; preds = %1184
  %1187 = getelementptr inbounds %struct.edge_def, ptr %1185, i64 0, i32 1
  %1188 = load ptr, ptr %1187, align 8, !tbaa !124
  %1189 = load ptr, ptr @cfun, align 8, !tbaa !35
  %1190 = getelementptr inbounds %struct.function, ptr %1189, i64 0, i32 1
  %1191 = load ptr, ptr %1190, align 8, !tbaa !54
  %1192 = getelementptr inbounds %struct.control_flow_graph, ptr %1191, i64 0, i32 1
  %1193 = load ptr, ptr %1192, align 8, !tbaa !63
  %1194 = icmp eq ptr %1188, %1193
  br i1 %1194, label %1253, label %1195

1195:                                             ; preds = %1186
  %1196 = getelementptr inbounds %struct.basic_block_def, ptr %1188, i64 0, i32 9
  %1197 = load i32, ptr %1196, align 8, !tbaa !64
  %1198 = lshr i32 %1197, 6
  %1199 = zext nneg i32 %1198 to i64
  %1200 = getelementptr inbounds %struct.simple_bitmap_def, ptr %53, i64 0, i32 3, i64 %1199
  %1201 = load i64, ptr %1200, align 8, !tbaa !125
  %1202 = and i32 %1197, 63
  %1203 = zext nneg i32 %1202 to i64
  %1204 = shl nuw i64 1, %1203
  %1205 = and i64 %1204, %1201
  %1206 = icmp eq i64 %1205, 0
  br i1 %1206, label %1230, label %1207

1207:                                             ; preds = %1195
  %1208 = getelementptr inbounds %struct.simple_bitmap_def, ptr %111, i64 0, i32 3, i64 %1199
  %1209 = load i64, ptr %1208, align 8, !tbaa !125
  %1210 = and i64 %1209, %1204
  %1211 = icmp eq i64 %1210, 0
  br i1 %1211, label %1212, label %1253

1212:                                             ; preds = %1207
  %1213 = load ptr, ptr %111, align 8, !tbaa !171
  %1214 = icmp eq ptr %1213, null
  br i1 %1214, label %1219, label %1215

1215:                                             ; preds = %1212
  %1216 = getelementptr inbounds i8, ptr %1213, i64 %1199
  %1217 = load i8, ptr %1216, align 1, !tbaa !46
  %1218 = add i8 %1217, 1
  store i8 %1218, ptr %1216, align 1, !tbaa !46
  br label %1219

1219:                                             ; preds = %1212, %1215
  %1220 = load i64, ptr %1208, align 8, !tbaa !125
  %1221 = or i64 %1220, %1204
  store i64 %1221, ptr %1208, align 8, !tbaa !125
  %1222 = load ptr, ptr %1187, align 8, !tbaa !124
  %1223 = getelementptr inbounds %struct.basic_block_def, ptr %1222, i64 0, i32 9
  %1224 = load i32, ptr %1223, align 8, !tbaa !64
  %1225 = sext i32 %1224 to i64
  %1226 = getelementptr inbounds i32, ptr %25, i64 %1225
  %1227 = load i32, ptr %1226, align 4, !tbaa !50
  %1228 = sext i32 %1227 to i64
  %1229 = call ptr @fibheap_insert(ptr noundef %113, i64 noundef %1228, ptr noundef %1222) #21
  br label %1253

1230:                                             ; preds = %1195
  %1231 = getelementptr inbounds %struct.simple_bitmap_def, ptr %110, i64 0, i32 3, i64 %1199
  %1232 = load i64, ptr %1231, align 8, !tbaa !125
  %1233 = and i64 %1232, %1204
  %1234 = icmp eq i64 %1233, 0
  br i1 %1234, label %1235, label %1253

1235:                                             ; preds = %1230
  %1236 = load ptr, ptr %110, align 8, !tbaa !171
  %1237 = icmp eq ptr %1236, null
  br i1 %1237, label %1242, label %1238

1238:                                             ; preds = %1235
  %1239 = getelementptr inbounds i8, ptr %1236, i64 %1199
  %1240 = load i8, ptr %1239, align 1, !tbaa !46
  %1241 = add i8 %1240, 1
  store i8 %1241, ptr %1239, align 1, !tbaa !46
  br label %1242

1242:                                             ; preds = %1235, %1238
  %1243 = load i64, ptr %1231, align 8, !tbaa !125
  %1244 = or i64 %1243, %1204
  store i64 %1244, ptr %1231, align 8, !tbaa !125
  %1245 = load ptr, ptr %1187, align 8, !tbaa !124
  %1246 = getelementptr inbounds %struct.basic_block_def, ptr %1245, i64 0, i32 9
  %1247 = load i32, ptr %1246, align 8, !tbaa !64
  %1248 = sext i32 %1247 to i64
  %1249 = getelementptr inbounds i32, ptr %25, i64 %1248
  %1250 = load i32, ptr %1249, align 4, !tbaa !50
  %1251 = sext i32 %1250 to i64
  %1252 = call ptr @fibheap_insert(ptr noundef %112, i64 noundef %1251, ptr noundef %1245) #21
  br label %1253

1253:                                             ; preds = %1186, %1230, %1242, %1207, %1219
  %1254 = load ptr, ptr %1170, align 8, !tbaa !35
  %1255 = icmp eq ptr %1254, null
  br i1 %1255, label %1258, label %1256

1256:                                             ; preds = %1253
  %1257 = load i32, ptr %1254, align 8, !tbaa !128
  br label %1258

1258:                                             ; preds = %1256, %1253
  %1259 = phi i32 [ %1257, %1256 ], [ 0, %1253 ]
  %1260 = icmp ult i32 %1172, %1259
  br i1 %1260, label %1262, label %1261

1261:                                             ; preds = %1258
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 738, ptr noundef nonnull @.str.2) #21
  br label %1262

1262:                                             ; preds = %1258, %1261
  %1263 = add i32 %1172, 1
  br label %1171, !llvm.loop !199

1264:                                             ; preds = %1184, %1167
  %1265 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1266 = icmp eq ptr %1265, null
  br i1 %1266, label %1288, label %1267

1267:                                             ; preds = %1264
  %1268 = load i32, ptr %120, align 8, !tbaa !64
  %1269 = load ptr, ptr %168, align 8, !tbaa !65
  %1270 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %1269, i64 0, i32 1, i32 2
  %1271 = load ptr, ptr %1270, align 8, !tbaa !173
  %1272 = getelementptr inbounds %struct.shared_hash_def, ptr %1271, i64 0, i32 1
  %1273 = load ptr, ptr %1272, align 8, !tbaa !83
  %1274 = call i64 @htab_elements(ptr noundef %1273) #21
  %1275 = trunc i64 %1274 to i32
  %1276 = load ptr, ptr %168, align 8, !tbaa !65
  %1277 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %1276, i64 0, i32 2, i32 2
  %1278 = load ptr, ptr %1277, align 8, !tbaa !174
  %1279 = getelementptr inbounds %struct.shared_hash_def, ptr %1278, i64 0, i32 1
  %1280 = load ptr, ptr %1279, align 8, !tbaa !83
  %1281 = call i64 @htab_elements(ptr noundef %1280) #21
  %1282 = trunc i64 %1281 to i32
  %1283 = load i64, ptr %112, align 8, !tbaa !200
  %1284 = trunc i64 %1283 to i32
  %1285 = load i64, ptr %113, align 8, !tbaa !200
  %1286 = trunc i64 %1285 to i32
  %1287 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1265, ptr noundef nonnull @.str.24, i32 noundef %1268, i32 noundef %1275, i32 noundef %202, i32 noundef %1282, i32 noundef %201, i32 noundef %1284, i32 noundef %1286, i32 noundef %1154)
  br label %1288

1288:                                             ; preds = %1267, %1264
  %1289 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1290 = icmp eq ptr %1289, null
  br i1 %1290, label %1305, label %1291

1291:                                             ; preds = %1288
  %1292 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %1293 = and i32 %1292, 8
  %1294 = icmp eq i32 %1293, 0
  br i1 %1294, label %1305, label %1295

1295:                                             ; preds = %1291
  %1296 = load i32, ptr %120, align 8, !tbaa !64
  %1297 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1289, ptr noundef nonnull @.str.25, i32 noundef %1296)
  %1298 = load ptr, ptr %168, align 8, !tbaa !65
  %1299 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %1298, i64 0, i32 1
  call fastcc void @dump_dataflow_set(ptr noundef nonnull %1299)
  %1300 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %1301 = load i32, ptr %120, align 8, !tbaa !64
  %1302 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1300, ptr noundef nonnull @.str.26, i32 noundef %1301)
  %1303 = load ptr, ptr %168, align 8, !tbaa !65
  %1304 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %1303, i64 0, i32 2
  call fastcc void @dump_dataflow_set(ptr noundef nonnull %1304)
  br label %1305

1305:                                             ; preds = %1288, %1291, %1295, %1165, %1166
  %1306 = phi i8 [ 0, %1166 ], [ 0, %1165 ], [ %118, %1295 ], [ %118, %1291 ], [ %118, %1288 ]
  br i1 %1156, label %1307, label %1312

1307:                                             ; preds = %1305, %138
  %1308 = phi i8 [ %118, %138 ], [ %1306, %1305 ]
  %1309 = phi i32 [ %117, %138 ], [ %1154, %1305 ]
  %1310 = call i32 @fibheap_empty(ptr noundef %112) #21
  %1311 = icmp eq i32 %1310, 0
  br i1 %1311, label %116, label %1312, !llvm.loop !202

1312:                                             ; preds = %1307, %1305, %107
  %1313 = phi i8 [ %108, %107 ], [ %1308, %1307 ], [ %1306, %1305 ]
  %1314 = phi i32 [ %109, %107 ], [ %1309, %1307 ], [ %1154, %1305 ]
  %1315 = icmp ne i8 %1313, 0
  br i1 %1315, label %104, label %1316, !llvm.loop !170

1316:                                             ; preds = %104, %1312, %92
  %1317 = phi i8 [ 1, %92 ], [ %1313, %1312 ], [ %1313, %104 ]
  %1318 = phi ptr [ %65, %92 ], [ %111, %1312 ], [ %111, %104 ]
  %1319 = phi ptr [ %59, %92 ], [ %110, %1312 ], [ %110, %104 ]
  %1320 = phi ptr [ %47, %92 ], [ %113, %1312 ], [ %113, %104 ]
  %1321 = phi ptr [ %46, %92 ], [ %112, %1312 ], [ %112, %104 ]
  %1322 = phi i1 [ true, %92 ], [ %1315, %1312 ], [ %1315, %104 ]
  %1323 = load i32, ptr @flag_var_tracking_assignments, align 4
  %1324 = icmp ne i32 %1323, 0
  %1325 = select i1 %1322, i1 %1324, i1 false
  br i1 %1325, label %1326, label %1353

1326:                                             ; preds = %1316
  %1327 = load ptr, ptr @cfun, align 8, !tbaa !35
  %1328 = getelementptr inbounds %struct.function, ptr %1327, i64 0, i32 1
  %1329 = load ptr, ptr %1328, align 8, !tbaa !54
  %1330 = load ptr, ptr %1329, align 8, !tbaa !60
  %1331 = getelementptr inbounds %struct.basic_block_def, ptr %1330, i64 0, i32 6
  %1332 = load ptr, ptr %1331, align 8, !tbaa !61
  %1333 = getelementptr inbounds %struct.control_flow_graph, ptr %1329, i64 0, i32 1
  %1334 = load ptr, ptr %1333, align 8, !tbaa !63
  %1335 = icmp eq ptr %1332, %1334
  br i1 %1335, label %1353, label %1336

1336:                                             ; preds = %1326, %1344
  %1337 = phi ptr [ %1346, %1344 ], [ %1332, %1326 ]
  %1338 = getelementptr inbounds %struct.basic_block_def, ptr %1337, i64 0, i32 2
  %1339 = load ptr, ptr %1338, align 8, !tbaa !65
  %1340 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %1339, i64 0, i32 5
  %1341 = load i8, ptr %1340, align 1, !tbaa !105
  %1342 = icmp eq i8 %1341, 0
  br i1 %1342, label %1343, label %1344

1343:                                             ; preds = %1336
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 6122, ptr noundef nonnull @.str.2) #21
  br label %1344

1344:                                             ; preds = %1336, %1343
  %1345 = getelementptr inbounds %struct.basic_block_def, ptr %1337, i64 0, i32 6
  %1346 = load ptr, ptr %1345, align 8, !tbaa !61
  %1347 = load ptr, ptr @cfun, align 8, !tbaa !35
  %1348 = getelementptr inbounds %struct.function, ptr %1347, i64 0, i32 1
  %1349 = load ptr, ptr %1348, align 8, !tbaa !54
  %1350 = getelementptr inbounds %struct.control_flow_graph, ptr %1349, i64 0, i32 1
  %1351 = load ptr, ptr %1350, align 8, !tbaa !63
  %1352 = icmp eq ptr %1346, %1351
  br i1 %1352, label %1353, label %1336, !llvm.loop !203

1353:                                             ; preds = %1344, %1326, %1316
  call void @free(ptr noundef %25)
  call void @fibheap_delete(ptr noundef %1321) #21
  call void @fibheap_delete(ptr noundef %1320) #21
  %1354 = load ptr, ptr %53, align 8, !tbaa !171
  call void @free(ptr noundef %1354)
  call void @free(ptr noundef %53)
  %1355 = load ptr, ptr %1319, align 8, !tbaa !171
  call void @free(ptr noundef %1355)
  call void @free(ptr noundef %1319)
  %1356 = load ptr, ptr %1318, align 8, !tbaa !171
  call void @free(ptr noundef %1356)
  call void @free(ptr noundef %1318)
  ret i8 %1317
}

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @dump_flow_info(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @delete_insn(ptr noundef) local_unnamed_addr #3

declare void @alloc_aux_for_blocks(i32 noundef) local_unnamed_addr #3

declare ptr @create_alloc_pool(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @pool_alloc(ptr noundef) local_unnamed_addr #3

declare ptr @htab_create(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @variable_htab_hash(ptr nocapture noundef readonly %0) #11 !prof !34 {
  %2 = load ptr, ptr %0, align 8, !tbaa !204
  %3 = icmp eq ptr %2, null
  br i1 %3, label %12, label %4

4:                                                ; preds = %1
  %5 = load i64, ptr %2, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 1
  br i1 %7, label %8, label %12

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  %11 = getelementptr inbounds %struct.cselib_val_struct, ptr %10, i64 0, i32 1
  br label %14

12:                                               ; preds = %4, %1
  %13 = getelementptr inbounds %struct.tree_decl_minimal, ptr %2, i64 0, i32 2
  br label %14

14:                                               ; preds = %8, %12
  %15 = phi ptr [ %11, %8 ], [ %13, %12 ]
  %16 = load i32, ptr %15, align 4, !tbaa !46
  ret i32 %16
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @variable_htab_eq(ptr nocapture noundef readonly %0, ptr noundef readnone %1) #12 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !204
  %4 = icmp eq ptr %3, %1
  %5 = zext i1 %4 to i32
  ret i32 %5
}

; Function Attrs: cold nounwind uwtable
define internal void @variable_htab_free(ptr noundef %0) #9 !prof !34 {
  %2 = getelementptr inbounds %struct.variable_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !206
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1175, ptr noundef nonnull @.str.2) #21
  br label %6

6:                                                ; preds = %1, %5
  %7 = load i32, ptr %2, align 8, !tbaa !206
  %8 = add nsw i32 %7, -1
  store i32 %8, ptr %2, align 8, !tbaa !206
  %9 = icmp sgt i32 %7, 1
  br i1 %9, label %54, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.variable_def, ptr %0, i64 0, i32 2
  %12 = load i8, ptr %11, align 4, !tbaa !207
  %13 = icmp sgt i8 %12, 0
  br i1 %13, label %14, label %29

14:                                               ; preds = %10, %24
  %15 = phi i64 [ %25, %24 ], [ 0, %10 ]
  %16 = getelementptr inbounds %struct.variable_def, ptr %0, i64 0, i32 5, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !208
  %18 = icmp eq ptr %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %14, %19
  %20 = phi ptr [ %21, %19 ], [ %17, %14 ]
  %21 = load ptr, ptr %20, align 8, !tbaa !210
  %22 = load ptr, ptr @loc_chain_pool, align 8, !tbaa !35
  tail call void @pool_free(ptr noundef %22, ptr noundef nonnull %20) #21
  %23 = icmp eq ptr %21, null
  br i1 %23, label %24, label %19, !llvm.loop !212

24:                                               ; preds = %19, %14
  store ptr null, ptr %16, align 8, !tbaa !208
  %25 = add nuw nsw i64 %15, 1
  %26 = load i8, ptr %11, align 4, !tbaa !207
  %27 = sext i8 %26 to i64
  %28 = icmp slt i64 %25, %27
  br i1 %28, label %14, label %29, !llvm.loop !213

29:                                               ; preds = %24, %10
  %30 = load ptr, ptr %0, align 8, !tbaa !204
  %31 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !50
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %49, label %33

33:                                               ; preds = %29
  %34 = icmp eq ptr %30, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %33
  %36 = load i64, ptr %30, align 8
  %37 = and i64 %36, 65535
  %38 = icmp eq i64 %37, 1
  br label %39

39:                                               ; preds = %35, %33
  %40 = phi i1 [ false, %33 ], [ %38, %35 ]
  %41 = or i1 %34, %40
  br i1 %41, label %49, label %42

42:                                               ; preds = %39
  %43 = load i64, ptr %30, align 8
  %44 = and i64 %43, 65535
  %45 = icmp eq i64 %44, 37
  br i1 %45, label %49, label %46

46:                                               ; preds = %42
  %47 = tail call ptr @target_for_debug_bind(ptr noundef nonnull %30) #21
  %48 = icmp eq ptr %47, null
  br label %49

49:                                               ; preds = %29, %39, %42, %46
  %50 = phi i1 [ %48, %46 ], [ true, %29 ], [ false, %39 ], [ false, %42 ]
  %51 = load ptr, ptr @valvar_pool, align 8
  %52 = load ptr, ptr @var_pool, align 8
  %53 = select i1 %50, ptr %52, ptr %51
  tail call void @pool_free(ptr noundef %53, ptr noundef nonnull %0) #21
  br label %54

54:                                               ; preds = %6, %49
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @value_chain_htab_hash(ptr nocapture noundef readonly %0) #11 !prof !34 {
  %2 = getelementptr inbounds %struct.value_chain_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !214
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  %6 = load i64, ptr %3, align 8
  %7 = and i64 %6, 65535
  %8 = icmp eq i64 %7, 1
  br i1 %8, label %9, label %13

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !46
  %12 = getelementptr inbounds %struct.cselib_val_struct, ptr %11, i64 0, i32 1
  br label %15

13:                                               ; preds = %5, %1
  %14 = getelementptr inbounds %struct.tree_decl_minimal, ptr %3, i64 0, i32 2
  br label %15

15:                                               ; preds = %9, %13
  %16 = phi ptr [ %12, %9 ], [ %14, %13 ]
  %17 = load i32, ptr %16, align 4, !tbaa !46
  ret i32 %17
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @value_chain_htab_eq(ptr nocapture noundef readonly %0, ptr noundef readnone %1) #12 !prof !34 {
  %3 = getelementptr inbounds %struct.value_chain_def, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !214
  %5 = icmp eq ptr %4, %1
  %6 = zext i1 %5 to i32
  ret i32 %6
}

declare void @cselib_init(i32 noundef) local_unnamed_addr #3

declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #3

declare ptr @eliminate_regs(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @vt_init_cfa_base() unnamed_addr #9 !prof !34 {
  %1 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 5), align 8, !tbaa !35
  store ptr %1, ptr @cfa_base_rtx, align 8, !tbaa !35
  %2 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 4), align 16, !tbaa !35
  %3 = icmp eq ptr %1, %2
  br i1 %3, label %11, label %4

4:                                                ; preds = %0
  %5 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !46
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds [53 x i8], ptr @fixed_regs, i64 0, i64 %7
  %9 = load i8, ptr %8, align 1, !tbaa !46
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %4, %0
  store ptr null, ptr @cfa_base_rtx, align 8, !tbaa !35
  br label %31

12:                                               ; preds = %4
  %13 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !50
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %31, label %15

15:                                               ; preds = %12
  %16 = load i32, ptr %1, align 8
  %17 = lshr i32 %16, 16
  %18 = and i32 %17, 255
  %19 = tail call ptr @get_insns() #21
  %20 = tail call ptr @cselib_lookup_from_insn(ptr noundef nonnull %1, i32 noundef %18, i32 noundef 1, ptr noundef %19) #21
  tail call fastcc void @preserve_value(ptr noundef %20)
  tail call void @cselib_preserve_cfa_base_value(ptr noundef %20) #21
  %21 = load ptr, ptr @cfun, align 8, !tbaa !35
  %22 = getelementptr inbounds %struct.function, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !54
  %24 = load ptr, ptr %23, align 8, !tbaa !60
  %25 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !65
  %27 = getelementptr inbounds %struct.variable_tracking_info_def, ptr %26, i64 0, i32 2
  %28 = load ptr, ptr @cfa_base_rtx, align 8, !tbaa !35
  %29 = getelementptr inbounds %struct.cselib_val_struct, ptr %20, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !155
  tail call fastcc void @var_reg_decl_set(ptr noundef nonnull %27, ptr noundef %28, i32 noundef 2, ptr noundef %30, i64 noundef 0, ptr noundef null, i32 noundef 1)
  br label %31

31:                                               ; preds = %12, %15, %11
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @add_with_sets(ptr noundef %0, ptr noundef %1, i32 noundef %2) #9 !prof !34 {
  %4 = alloca %struct.count_use_info, align 8
  %5 = alloca %struct.micro_operation_def, align 8
  %6 = alloca %struct.micro_operation_def, align 8
  %7 = alloca %struct.micro_operation_def, align 8
  %8 = alloca %struct.micro_operation_def, align 8
  %9 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #21
  store i1 true, ptr @cselib_hook_called, align 1
  store ptr %0, ptr %4, align 8, !tbaa !216
  %11 = getelementptr inbounds %struct.count_use_info, ptr %4, i64 0, i32 1
  store ptr %10, ptr %11, align 8, !tbaa !218
  %12 = getelementptr inbounds %struct.count_use_info, ptr %4, i64 0, i32 2
  store ptr %1, ptr %12, align 8, !tbaa !219
  %13 = getelementptr inbounds %struct.count_use_info, ptr %4, i64 0, i32 3
  store i32 %2, ptr %13, align 8, !tbaa !220
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %10, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !65
  %16 = load ptr, ptr %15, align 8, !tbaa !84
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %3
  %19 = load i32, ptr %16, align 8, !tbaa !86
  br label %20

20:                                               ; preds = %3, %18
  %21 = phi i32 [ %19, %18 ], [ 0, %3 ]
  %22 = getelementptr inbounds %struct.count_use_info, ptr %4, i64 0, i32 4
  store i8 0, ptr %22, align 4, !tbaa !221
  %23 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  call void @note_uses(ptr noundef nonnull %23, ptr noundef nonnull @add_uses_1, ptr noundef nonnull %4) #21
  %24 = load ptr, ptr %14, align 8, !tbaa !65
  %25 = load ptr, ptr %24, align 8, !tbaa !84
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %20
  %28 = load i32, ptr %25, align 8, !tbaa !86
  br label %29

29:                                               ; preds = %20, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %20 ]
  %31 = add i32 %30, -1
  %32 = getelementptr inbounds %struct.VEC_micro_operation_base, ptr %25, i64 0, i32 2
  %33 = select i1 %26, ptr null, ptr %32
  %34 = icmp slt i32 %21, %31
  br i1 %34, label %35, label %74

35:                                               ; preds = %29, %71
  %36 = phi i32 [ %72, %71 ], [ %31, %29 ]
  %37 = phi i32 [ %53, %71 ], [ %21, %29 ]
  %38 = sext i32 %37 to i64
  %39 = sext i32 %36 to i64
  %40 = add i32 %37, 1
  %41 = call i32 @llvm.smax.i32(i32 %36, i32 %40)
  br label %42

42:                                               ; preds = %35, %47
  %43 = phi i64 [ %38, %35 ], [ %48, %47 ]
  %44 = getelementptr inbounds %struct.micro_operation_def, ptr %33, i64 %43
  %45 = load i32, ptr %44, align 8, !tbaa !90
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = add nsw i64 %43, 1
  %49 = icmp slt i64 %48, %39
  br i1 %49, label %42, label %52, !llvm.loop !222

50:                                               ; preds = %42
  %51 = trunc i64 %43 to i32
  br label %52

52:                                               ; preds = %47, %50
  %53 = phi i32 [ %51, %50 ], [ %41, %47 ]
  %54 = icmp slt i32 %53, %36
  br i1 %54, label %55, label %71

55:                                               ; preds = %52
  %56 = sext i32 %53 to i64
  br label %57

57:                                               ; preds = %55, %62
  %58 = phi i64 [ %39, %55 ], [ %63, %62 ]
  %59 = getelementptr inbounds %struct.micro_operation_def, ptr %33, i64 %58
  %60 = load i32, ptr %59, align 8, !tbaa !90
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %57
  %63 = add nsw i64 %58, -1
  %64 = icmp sgt i64 %63, %56
  br i1 %64, label %57, label %69, !llvm.loop !223

65:                                               ; preds = %57
  %66 = trunc i64 %58 to i32
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5)
  %67 = sext i32 %53 to i64
  %68 = getelementptr inbounds %struct.micro_operation_def, ptr %33, i64 %67
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %68, i64 24, i1 false), !tbaa.struct !138
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %68, ptr noundef nonnull align 8 dereferenceable(24) %59, i64 24, i1 false), !tbaa.struct !138
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %59, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !138
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5)
  br label %71

69:                                               ; preds = %62
  %70 = trunc i64 %63 to i32
  br label %71

71:                                               ; preds = %69, %52, %65
  %72 = phi i32 [ %66, %65 ], [ %36, %52 ], [ %70, %69 ]
  %73 = icmp slt i32 %53, %72
  br i1 %73, label %35, label %74, !llvm.loop !224

74:                                               ; preds = %71, %29
  %75 = phi i32 [ %21, %29 ], [ %53, %71 ]
  %76 = load ptr, ptr %14, align 8, !tbaa !65
  %77 = load ptr, ptr %76, align 8, !tbaa !84
  %78 = icmp eq ptr %77, null
  br i1 %78, label %82, label %79

79:                                               ; preds = %74
  %80 = load i32, ptr %77, align 8, !tbaa !86
  %81 = add i32 %80, -1
  br label %82

82:                                               ; preds = %74, %79
  %83 = phi i32 [ %81, %79 ], [ -1, %74 ]
  %84 = icmp slt i32 %75, %83
  br i1 %84, label %85, label %124

85:                                               ; preds = %82, %121
  %86 = phi i32 [ %122, %121 ], [ %83, %82 ]
  %87 = phi i32 [ %103, %121 ], [ %75, %82 ]
  %88 = sext i32 %87 to i64
  %89 = sext i32 %86 to i64
  %90 = add i32 %87, 1
  %91 = call i32 @llvm.smax.i32(i32 %86, i32 %90)
  br label %92

92:                                               ; preds = %85, %97
  %93 = phi i64 [ %88, %85 ], [ %98, %97 ]
  %94 = getelementptr inbounds %struct.micro_operation_def, ptr %33, i64 %93
  %95 = load i32, ptr %94, align 8, !tbaa !90
  %96 = icmp eq i32 %95, 3
  br i1 %96, label %100, label %97

97:                                               ; preds = %92
  %98 = add nsw i64 %93, 1
  %99 = icmp slt i64 %98, %89
  br i1 %99, label %92, label %102, !llvm.loop !225

100:                                              ; preds = %92
  %101 = trunc i64 %93 to i32
  br label %102

102:                                              ; preds = %97, %100
  %103 = phi i32 [ %101, %100 ], [ %91, %97 ]
  %104 = icmp slt i32 %103, %86
  br i1 %104, label %105, label %121

105:                                              ; preds = %102
  %106 = sext i32 %103 to i64
  br label %107

107:                                              ; preds = %105, %112
  %108 = phi i64 [ %89, %105 ], [ %113, %112 ]
  %109 = getelementptr inbounds %struct.micro_operation_def, ptr %33, i64 %108
  %110 = load i32, ptr %109, align 8, !tbaa !90
  %111 = icmp eq i32 %110, 3
  br i1 %111, label %112, label %115

112:                                              ; preds = %107
  %113 = add nsw i64 %108, -1
  %114 = icmp sgt i64 %113, %106
  br i1 %114, label %107, label %119, !llvm.loop !226

115:                                              ; preds = %107
  %116 = trunc i64 %108 to i32
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6)
  %117 = sext i32 %103 to i64
  %118 = getelementptr inbounds %struct.micro_operation_def, ptr %33, i64 %117
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %118, i64 24, i1 false), !tbaa.struct !138
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %118, ptr noundef nonnull align 8 dereferenceable(24) %109, i64 24, i1 false), !tbaa.struct !138
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %109, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !138
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6)
  br label %121

119:                                              ; preds = %112
  %120 = trunc i64 %113 to i32
  br label %121

121:                                              ; preds = %119, %102, %115
  %122 = phi i32 [ %116, %115 ], [ %86, %102 ], [ %120, %119 ]
  %123 = icmp slt i32 %103, %122
  br i1 %123, label %85, label %124, !llvm.loop !227

124:                                              ; preds = %121, %82
  %125 = load i32, ptr %0, align 8
  %126 = and i32 %125, 65535
  %127 = icmp eq i32 %126, 10
  br i1 %127, label %128, label %169

128:                                              ; preds = %124
  %129 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %130 = icmp eq ptr %129, null
  br i1 %130, label %150, label %131

131:                                              ; preds = %128
  %132 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %133 = and i32 %132, 8
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %150, label %135

135:                                              ; preds = %131
  %136 = load ptr, ptr %23, align 8, !tbaa !46
  %137 = getelementptr inbounds %struct.basic_block_def, ptr %10, i64 0, i32 9
  %138 = load i32, ptr %137, align 8, !tbaa !64
  %139 = load ptr, ptr %14, align 8, !tbaa !65
  %140 = load ptr, ptr %139, align 8, !tbaa !84
  %141 = icmp eq ptr %140, null
  br i1 %141, label %144, label %142

142:                                              ; preds = %135
  %143 = load i32, ptr %140, align 8, !tbaa !86
  br label %144

144:                                              ; preds = %135, %142
  %145 = phi i32 [ %143, %142 ], [ 0, %135 ]
  %146 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %147 = load i32, ptr %146, align 8, !tbaa !46
  %148 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %129, ptr noundef nonnull @.str.11, i32 noundef %138, i32 noundef %145, i32 noundef %147, ptr noundef nonnull @.str.20)
  call void @print_inline_rtx(ptr noundef nonnull %129, ptr noundef %136, i32 noundef 2) #21
  %149 = call i32 @fputc(i32 noundef 10, ptr noundef nonnull %129)
  br label %150

150:                                              ; preds = %144, %131, %128
  %151 = load ptr, ptr %14, align 8, !tbaa !65
  %152 = load ptr, ptr %151, align 8, !tbaa !35
  %153 = icmp eq ptr %152, null
  br i1 %153, label %159, label %154

154:                                              ; preds = %150
  %155 = getelementptr inbounds %struct.VEC_micro_operation_base, ptr %152, i64 0, i32 1
  %156 = load i32, ptr %155, align 4, !tbaa !137
  %157 = load i32, ptr %152, align 8, !tbaa !86
  %158 = icmp eq i32 %156, %157
  br i1 %158, label %159, label %161

159:                                              ; preds = %150, %154
  %160 = call ptr @vec_heap_o_reserve(ptr noundef %152, i32 noundef 1, i64 noundef 8, i64 noundef 24) #21
  store ptr %160, ptr %151, align 8, !tbaa !35
  br label %161

161:                                              ; preds = %154, %159
  %162 = load ptr, ptr %151, align 8, !tbaa !35
  %163 = load i32, ptr %162, align 8, !tbaa !86
  %164 = add i32 %163, 1
  store i32 %164, ptr %162, align 8, !tbaa !86
  %165 = zext i32 %163 to i64
  %166 = getelementptr inbounds %struct.VEC_micro_operation_base, ptr %162, i64 0, i32 2, i64 %165
  store i32 8, ptr %166, align 8, !tbaa.struct !138
  %167 = getelementptr inbounds i8, ptr %166, i64 8
  store ptr %0, ptr %167, align 8, !tbaa.struct !139
  %168 = getelementptr inbounds i8, ptr %166, i64 16
  store ptr null, ptr %168, align 8, !tbaa.struct !140
  br label %169

169:                                              ; preds = %161, %124
  %170 = load ptr, ptr %14, align 8, !tbaa !65
  %171 = load ptr, ptr %170, align 8, !tbaa !84
  %172 = icmp eq ptr %171, null
  br i1 %172, label %175, label %173

173:                                              ; preds = %169
  %174 = load i32, ptr %171, align 8, !tbaa !86
  br label %175

175:                                              ; preds = %169, %173
  %176 = phi i32 [ %174, %173 ], [ 0, %169 ]
  store i8 1, ptr %22, align 4, !tbaa !221
  %177 = load ptr, ptr %23, align 8, !tbaa !46
  call void @note_stores(ptr noundef %177, ptr noundef nonnull @add_stores, ptr noundef nonnull %4) #21
  %178 = load ptr, ptr %14, align 8, !tbaa !65
  %179 = load ptr, ptr %178, align 8, !tbaa !84
  %180 = icmp eq ptr %179, null
  br i1 %180, label %184, label %181

181:                                              ; preds = %175
  %182 = load i32, ptr %179, align 8, !tbaa !86
  %183 = add i32 %182, -1
  br label %184

184:                                              ; preds = %175, %181
  %185 = phi i32 [ %183, %181 ], [ -1, %175 ]
  %186 = getelementptr inbounds %struct.VEC_micro_operation_base, ptr %179, i64 0, i32 2
  %187 = select i1 %180, ptr null, ptr %186
  %188 = icmp slt i32 %176, %185
  br i1 %188, label %189, label %228

189:                                              ; preds = %184, %225
  %190 = phi i32 [ %226, %225 ], [ %185, %184 ]
  %191 = phi i32 [ %207, %225 ], [ %176, %184 ]
  %192 = sext i32 %191 to i64
  %193 = sext i32 %190 to i64
  %194 = add i32 %191, 1
  %195 = call i32 @llvm.smax.i32(i32 %190, i32 %194)
  br label %196

196:                                              ; preds = %189, %201
  %197 = phi i64 [ %192, %189 ], [ %202, %201 ]
  %198 = getelementptr inbounds %struct.micro_operation_def, ptr %187, i64 %197
  %199 = load i32, ptr %198, align 8, !tbaa !90
  %200 = icmp eq i32 %199, 2
  br i1 %200, label %201, label %204

201:                                              ; preds = %196
  %202 = add nsw i64 %197, 1
  %203 = icmp slt i64 %202, %193
  br i1 %203, label %196, label %206, !llvm.loop !228

204:                                              ; preds = %196
  %205 = trunc i64 %197 to i32
  br label %206

206:                                              ; preds = %201, %204
  %207 = phi i32 [ %205, %204 ], [ %195, %201 ]
  %208 = icmp slt i32 %207, %190
  br i1 %208, label %209, label %225

209:                                              ; preds = %206
  %210 = sext i32 %207 to i64
  br label %211

211:                                              ; preds = %209, %216
  %212 = phi i64 [ %193, %209 ], [ %217, %216 ]
  %213 = getelementptr inbounds %struct.micro_operation_def, ptr %187, i64 %212
  %214 = load i32, ptr %213, align 8, !tbaa !90
  %215 = icmp eq i32 %214, 2
  br i1 %215, label %219, label %216

216:                                              ; preds = %211
  %217 = add nsw i64 %212, -1
  %218 = icmp sgt i64 %217, %210
  br i1 %218, label %211, label %223, !llvm.loop !229

219:                                              ; preds = %211
  %220 = trunc i64 %212 to i32
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7)
  %221 = sext i32 %207 to i64
  %222 = getelementptr inbounds %struct.micro_operation_def, ptr %187, i64 %221
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %222, i64 24, i1 false), !tbaa.struct !138
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %222, ptr noundef nonnull align 8 dereferenceable(24) %213, i64 24, i1 false), !tbaa.struct !138
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %213, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !138
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7)
  br label %225

223:                                              ; preds = %216
  %224 = trunc i64 %217 to i32
  br label %225

225:                                              ; preds = %223, %206, %219
  %226 = phi i32 [ %220, %219 ], [ %190, %206 ], [ %224, %223 ]
  %227 = icmp slt i32 %207, %226
  br i1 %227, label %189, label %228, !llvm.loop !230

228:                                              ; preds = %225, %184
  %229 = phi i32 [ %176, %184 ], [ %207, %225 ]
  %230 = load ptr, ptr %14, align 8, !tbaa !65
  %231 = load ptr, ptr %230, align 8, !tbaa !84
  %232 = icmp eq ptr %231, null
  br i1 %232, label %236, label %233

233:                                              ; preds = %228
  %234 = load i32, ptr %231, align 8, !tbaa !86
  %235 = add i32 %234, -1
  br label %236

236:                                              ; preds = %228, %233
  %237 = phi i32 [ %235, %233 ], [ -1, %228 ]
  %238 = icmp slt i32 %229, %237
  br i1 %238, label %239, label %278

239:                                              ; preds = %236, %275
  %240 = phi i32 [ %276, %275 ], [ %237, %236 ]
  %241 = phi i32 [ %257, %275 ], [ %229, %236 ]
  %242 = sext i32 %241 to i64
  %243 = sext i32 %240 to i64
  %244 = add i32 %241, 1
  %245 = call i32 @llvm.smax.i32(i32 %240, i32 %244)
  br label %246

246:                                              ; preds = %239, %251
  %247 = phi i64 [ %242, %239 ], [ %252, %251 ]
  %248 = getelementptr inbounds %struct.micro_operation_def, ptr %187, i64 %247
  %249 = load i32, ptr %248, align 8, !tbaa !90
  %250 = icmp eq i32 %249, 7
  br i1 %250, label %251, label %254

251:                                              ; preds = %246
  %252 = add nsw i64 %247, 1
  %253 = icmp slt i64 %252, %243
  br i1 %253, label %246, label %256, !llvm.loop !231

254:                                              ; preds = %246
  %255 = trunc i64 %247 to i32
  br label %256

256:                                              ; preds = %251, %254
  %257 = phi i32 [ %255, %254 ], [ %245, %251 ]
  %258 = icmp slt i32 %257, %240
  br i1 %258, label %259, label %275

259:                                              ; preds = %256
  %260 = sext i32 %257 to i64
  br label %261

261:                                              ; preds = %259, %266
  %262 = phi i64 [ %243, %259 ], [ %267, %266 ]
  %263 = getelementptr inbounds %struct.micro_operation_def, ptr %187, i64 %262
  %264 = load i32, ptr %263, align 8, !tbaa !90
  %265 = icmp eq i32 %264, 7
  br i1 %265, label %269, label %266

266:                                              ; preds = %261
  %267 = add nsw i64 %262, -1
  %268 = icmp sgt i64 %267, %260
  br i1 %268, label %261, label %273, !llvm.loop !232

269:                                              ; preds = %261
  %270 = trunc i64 %262 to i32
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8)
  %271 = sext i32 %257 to i64
  %272 = getelementptr inbounds %struct.micro_operation_def, ptr %187, i64 %271
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %272, i64 24, i1 false), !tbaa.struct !138
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %272, ptr noundef nonnull align 8 dereferenceable(24) %263, i64 24, i1 false), !tbaa.struct !138
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %263, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false), !tbaa.struct !138
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8)
  br label %275

273:                                              ; preds = %266
  %274 = trunc i64 %267 to i32
  br label %275

275:                                              ; preds = %273, %256, %269
  %276 = phi i32 [ %270, %269 ], [ %240, %256 ], [ %274, %273 ]
  %277 = icmp slt i32 %257, %276
  br i1 %277, label %239, label %278, !llvm.loop !233

278:                                              ; preds = %275, %236
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #21
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

declare i32 @cselib_get_next_uid() local_unnamed_addr #3

declare ptr @find_edge(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @insn_stack_adjust_offset_pre_post(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2) unnamed_addr #9 !prof !34 {
  store i64 0, ptr %1, align 8, !tbaa !125
  store i64 0, ptr %2, align 8, !tbaa !125
  %4 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  %6 = load i32, ptr %0, align 8
  %7 = and i32 %6, 1073741824
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %3
  %10 = tail call ptr @find_reg_note(ptr noundef nonnull %0, i32 noundef 17, ptr noundef null) #21
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !46
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
  tail call fastcc void @stack_adjust_offset_pre_post(ptr noundef nonnull %16, ptr noundef nonnull %1, ptr noundef nonnull %2)
  br label %39

20:                                               ; preds = %15, %15
  %21 = getelementptr inbounds %struct.rtx_def, ptr %16, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !46
  %23 = load i32, ptr %22, align 8, !tbaa !146
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %20
  %26 = zext nneg i32 %23 to i64
  br label %27

27:                                               ; preds = %25, %37
  %28 = phi i64 [ %26, %25 ], [ %29, %37 ]
  %29 = add nsw i64 %28, -1
  %30 = load ptr, ptr %21, align 8, !tbaa !46
  %31 = getelementptr inbounds %struct.rtvec_def, ptr %30, i64 0, i32 1, i64 %29
  %32 = load ptr, ptr %31, align 8, !tbaa !35
  %33 = load i32, ptr %32, align 8
  %34 = and i32 %33, 65535
  %35 = icmp eq i32 %34, 23
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  tail call fastcc void @stack_adjust_offset_pre_post(ptr noundef nonnull %32, ptr noundef nonnull %1, ptr noundef nonnull %2)
  br label %37

37:                                               ; preds = %27, %36
  %38 = icmp sgt i64 %28, 1
  br i1 %38, label %27, label %39, !llvm.loop !234

39:                                               ; preds = %37, %20, %15, %19
  ret void
}

declare void @cselib_process_insn(ptr noundef) local_unnamed_addr #3

declare i32 @print_rtl_single(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @dump_cselib_table(ptr noundef) local_unnamed_addr #3

declare void @cancel_changes(i32 noundef) local_unnamed_addr #3

declare void @cselib_preserve_only_values() local_unnamed_addr #3

declare void @cselib_reset_table(i32 noundef) local_unnamed_addr #3

declare void @pool_free(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @target_for_debug_bind(ptr noundef) local_unnamed_addr #3

declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #13

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #14

declare ptr @cselib_lookup_from_insn(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @get_insns() local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @preserve_value(ptr noundef %0) unnamed_addr #9 !prof !34 {
  tail call void @cselib_preserve_value(ptr noundef %0) #21
  %2 = getelementptr inbounds %struct.cselib_val_struct, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !155
  %4 = load ptr, ptr @preserved_values, align 8, !tbaa !35
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.VEC_rtx_base, ptr %4, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !235
  %9 = load i32, ptr %4, align 8, !tbaa !68
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %1, %6
  %12 = tail call ptr @vec_heap_p_reserve(ptr noundef %4, i32 noundef 1) #21
  store ptr %12, ptr @preserved_values, align 8, !tbaa !35
  br label %13

13:                                               ; preds = %6, %11
  %14 = load ptr, ptr @preserved_values, align 8, !tbaa !35
  %15 = load i32, ptr %14, align 8, !tbaa !68
  %16 = add i32 %15, 1
  store i32 %16, ptr %14, align 8, !tbaa !68
  %17 = zext i32 %15 to i64
  %18 = getelementptr inbounds %struct.VEC_rtx_base, ptr %14, i64 0, i32 2, i64 %17
  store ptr %3, ptr %18, align 8, !tbaa !35
  ret void
}

declare void @cselib_preserve_cfa_base_value(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @var_reg_decl_set(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i32 noundef %6) unnamed_addr #9 !prof !34 {
  %8 = icmp eq ptr %3, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %7
  %10 = load i64, ptr %3, align 8
  %11 = and i64 %10, 65535
  %12 = icmp eq i64 %11, 1
  br label %13

13:                                               ; preds = %7, %9
  %14 = phi i1 [ false, %7 ], [ %12, %9 ]
  %15 = or i1 %8, %14
  %16 = select i1 %14, ptr %3, ptr null
  br i1 %15, label %40, label %17

17:                                               ; preds = %13
  %18 = load i64, ptr %3, align 8
  %19 = and i64 %18, 65535
  %20 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !50
  %22 = icmp eq i32 %21, 3
  br i1 %22, label %23, label %40

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.tree_decl_common, ptr %3, i64 0, i32 2
  %25 = load i64, ptr %24, align 8
  %26 = and i64 %25, 16384
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %40, label %28

28:                                               ; preds = %23
  %29 = tail call ptr @decl_debug_expr_lookup(ptr noundef nonnull %3) #21
  %30 = icmp eq ptr %29, null
  br i1 %30, label %40, label %31

31:                                               ; preds = %28
  %32 = tail call ptr @decl_debug_expr_lookup(ptr noundef nonnull %3) #21
  %33 = load i64, ptr %32, align 8
  %34 = and i64 %33, 65535
  %35 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %34
  %36 = load i32, ptr %35, align 4, !tbaa !50
  %37 = icmp eq i32 %36, 3
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = tail call ptr @decl_debug_expr_lookup(ptr noundef nonnull %3) #21
  br label %40

40:                                               ; preds = %13, %38, %31, %28, %23, %17
  %41 = phi ptr [ %16, %13 ], [ %39, %38 ], [ %3, %31 ], [ %3, %28 ], [ %3, %23 ], [ %3, %17 ]
  %42 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %43 = load i32, ptr %42, align 8, !tbaa !46
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.dataflow_set_def, ptr %0, i64 0, i32 1, i64 %44
  %46 = load ptr, ptr %45, align 8, !tbaa !35
  %47 = icmp eq ptr %46, null
  br i1 %47, label %60, label %48

48:                                               ; preds = %40, %57
  %49 = phi ptr [ %58, %57 ], [ %46, %40 ]
  %50 = getelementptr inbounds %struct.attrs_def, ptr %49, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !159
  %52 = icmp eq ptr %51, %41
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.attrs_def, ptr %49, i64 0, i32 3
  %55 = load i64, ptr %54, align 8, !tbaa !160
  %56 = icmp eq i64 %55, %4
  br i1 %56, label %67, label %57

57:                                               ; preds = %48, %53
  %58 = load ptr, ptr %49, align 8, !tbaa !35
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %48, !llvm.loop !236

60:                                               ; preds = %57, %40
  %61 = load ptr, ptr @attrs_pool, align 8, !tbaa !35
  %62 = tail call ptr @pool_alloc(ptr noundef %61) #21
  %63 = getelementptr inbounds %struct.attrs_def, ptr %62, i64 0, i32 1
  store ptr %1, ptr %63, align 8, !tbaa !157
  %64 = getelementptr inbounds %struct.attrs_def, ptr %62, i64 0, i32 2
  store ptr %41, ptr %64, align 8, !tbaa !159
  %65 = getelementptr inbounds %struct.attrs_def, ptr %62, i64 0, i32 3
  store i64 %4, ptr %65, align 8, !tbaa !160
  %66 = load ptr, ptr %45, align 8, !tbaa !35
  store ptr %66, ptr %62, align 8, !tbaa !161
  store ptr %62, ptr %45, align 8, !tbaa !35
  br label %67

67:                                               ; preds = %53, %60
  tail call fastcc void @set_variable_part(ptr noundef %0, ptr noundef %1, ptr noundef %41, i64 noundef %4, i32 noundef %2, ptr noundef %5, i32 noundef %6)
  ret void
}

declare void @cselib_preserve_value(ptr noundef) local_unnamed_addr #3

declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @set_variable_part(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6) unnamed_addr #9 !prof !34 {
  %8 = icmp eq i32 %6, 0
  %9 = getelementptr inbounds %struct.dataflow_set_def, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !77
  %11 = icmp eq ptr %2, null
  br i1 %8, label %12, label %29

12:                                               ; preds = %7
  br i1 %11, label %21, label %13

13:                                               ; preds = %12
  %14 = load i64, ptr %2, align 8
  %15 = and i64 %14, 65535
  %16 = icmp eq i64 %15, 1
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !46
  %20 = getelementptr inbounds %struct.cselib_val_struct, ptr %19, i64 0, i32 1
  br label %23

21:                                               ; preds = %13, %12
  %22 = getelementptr inbounds %struct.tree_decl_minimal, ptr %2, i64 0, i32 2
  br label %23

23:                                               ; preds = %17, %21
  %24 = phi ptr [ %20, %17 ], [ %22, %21 ]
  %25 = load i32, ptr %24, align 4, !tbaa !46
  %26 = getelementptr inbounds %struct.shared_hash_def, ptr %10, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !83
  %28 = tail call ptr @htab_find_slot_with_hash(ptr noundef %27, ptr noundef %2, i32 noundef %25, i32 noundef 0) #21
  br label %52

29:                                               ; preds = %7
  br i1 %11, label %38, label %30

30:                                               ; preds = %29
  %31 = load i64, ptr %2, align 8
  %32 = and i64 %31, 65535
  %33 = icmp eq i64 %32, 1
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !46
  %37 = getelementptr inbounds %struct.cselib_val_struct, ptr %36, i64 0, i32 1
  br label %40

38:                                               ; preds = %30, %29
  %39 = getelementptr inbounds %struct.tree_decl_minimal, ptr %2, i64 0, i32 2
  br label %40

40:                                               ; preds = %34, %38
  %41 = phi ptr [ %37, %34 ], [ %39, %38 ]
  %42 = load i32, ptr %41, align 4, !tbaa !46
  %43 = getelementptr inbounds %struct.shared_hash_def, ptr %10, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !83
  %45 = load i32, ptr %10, align 8, !tbaa !75
  %46 = icmp slt i32 %45, 2
  %47 = zext i1 %46 to i32
  %48 = tail call ptr @htab_find_slot_with_hash(ptr noundef %44, ptr noundef %2, i32 noundef %42, i32 noundef %47) #21
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %40
  %51 = tail call fastcc ptr @shared_hash_find_slot_unshare(ptr noundef nonnull %9, ptr noundef %2, i32 noundef 1)
  br label %52

52:                                               ; preds = %40, %50, %23
  %53 = phi ptr [ %28, %23 ], [ %48, %40 ], [ %51, %50 ]
  %54 = tail call fastcc ptr @set_slot_part(ptr noundef %0, ptr noundef %1, ptr noundef %53, ptr noundef %2, i64 noundef %3, i32 noundef %4, ptr noundef %5)
  ret void
}

declare ptr @decl_debug_expr_lookup(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define internal fastcc ptr @shared_hash_find_slot_unshare(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #2 !prof !34 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %3
  %6 = load i64, ptr %1, align 8
  %7 = and i64 %6, 65535
  %8 = icmp eq i64 %7, 1
  br i1 %8, label %9, label %13

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !46
  %12 = getelementptr inbounds %struct.cselib_val_struct, ptr %11, i64 0, i32 1
  br label %15

13:                                               ; preds = %5, %3
  %14 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1, i64 0, i32 2
  br label %15

15:                                               ; preds = %9, %13
  %16 = phi ptr [ %12, %9 ], [ %14, %13 ]
  %17 = load i32, ptr %16, align 4, !tbaa !46
  %18 = load ptr, ptr %0, align 8, !tbaa !35
  %19 = load i32, ptr %18, align 8, !tbaa !75
  %20 = icmp slt i32 %19, 2
  br i1 %20, label %37, label %21

21:                                               ; preds = %15
  %22 = load ptr, ptr @shared_hash_pool, align 8, !tbaa !35
  %23 = tail call ptr @pool_alloc(ptr noundef %22) #21
  %24 = load i32, ptr %18, align 8, !tbaa !75
  %25 = icmp sgt i32 %24, 1
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1353, ptr noundef nonnull @.str.2) #21
  br label %27

27:                                               ; preds = %26, %21
  store i32 1, ptr %23, align 8, !tbaa !75
  %28 = getelementptr inbounds %struct.shared_hash_def, ptr %18, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !83
  %30 = tail call i64 @htab_elements(ptr noundef %29) #21
  %31 = add i64 %30, 3
  %32 = tail call ptr @htab_create(i64 noundef %31, ptr noundef nonnull @variable_htab_hash, ptr noundef nonnull @variable_htab_eq, ptr noundef nonnull @variable_htab_free) #21
  %33 = getelementptr inbounds %struct.shared_hash_def, ptr %23, i64 0, i32 1
  store ptr %32, ptr %33, align 8, !tbaa !83
  %34 = load ptr, ptr %28, align 8, !tbaa !83
  tail call void @htab_traverse_noresize(ptr noundef %34, ptr noundef nonnull @vars_copy_1, ptr noundef %32) #21
  %35 = load i32, ptr %18, align 8, !tbaa !75
  %36 = add nsw i32 %35, -1
  store i32 %36, ptr %18, align 8, !tbaa !75
  store ptr %23, ptr %0, align 8, !tbaa !35
  br label %37

37:                                               ; preds = %15, %27
  %38 = load ptr, ptr %0, align 8, !tbaa !35
  %39 = getelementptr inbounds %struct.shared_hash_def, ptr %38, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !83
  %41 = tail call ptr @htab_find_slot_with_hash(ptr noundef %40, ptr noundef %1, i32 noundef %17, i32 noundef %2) #21
  ret ptr %41
}

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef ptr @set_slot_part(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i32 noundef %5, ptr noundef %6) unnamed_addr #9 !prof !34 {
  %8 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !50
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %26, label %10

10:                                               ; preds = %7
  %11 = icmp eq ptr %3, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %10
  %13 = load i64, ptr %3, align 8
  %14 = and i64 %13, 65535
  %15 = icmp eq i64 %14, 1
  br label %16

16:                                               ; preds = %12, %10
  %17 = phi i1 [ false, %10 ], [ %15, %12 ]
  %18 = or i1 %11, %17
  br i1 %18, label %26, label %19

19:                                               ; preds = %16
  %20 = load i64, ptr %3, align 8
  %21 = and i64 %20, 65535
  %22 = icmp eq i64 %21, 37
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = tail call ptr @target_for_debug_bind(ptr noundef nonnull %3) #21
  %25 = icmp ne ptr %24, null
  br label %26

26:                                               ; preds = %7, %16, %19, %23
  %27 = phi i1 [ %25, %23 ], [ false, %7 ], [ true, %16 ], [ true, %19 ]
  %28 = icmp ne i64 %4, 0
  %29 = select i1 %28, i1 %27, i1 false
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 6374, ptr noundef nonnull @.str.2) #21
  br label %31

31:                                               ; preds = %26, %30
  %32 = icmp eq ptr %3, %1
  br i1 %32, label %33, label %34

33:                                               ; preds = %31
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 6375, ptr noundef nonnull @.str.2) #21
  br label %34

34:                                               ; preds = %31, %33
  %35 = load ptr, ptr %2, align 8, !tbaa !35
  %36 = load i32, ptr @flag_var_tracking_uninit, align 4, !tbaa !50
  %37 = icmp eq i32 %36, 0
  %38 = select i1 %37, i32 2, i32 %5
  %39 = icmp eq ptr %35, null
  br i1 %39, label %40, label %71

40:                                               ; preds = %34
  %41 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !50
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %59, label %43

43:                                               ; preds = %40
  %44 = icmp eq ptr %3, null
  br i1 %44, label %49, label %45

45:                                               ; preds = %43
  %46 = load i64, ptr %3, align 8
  %47 = and i64 %46, 65535
  %48 = icmp eq i64 %47, 1
  br label %49

49:                                               ; preds = %45, %43
  %50 = phi i1 [ false, %43 ], [ %48, %45 ]
  %51 = or i1 %44, %50
  br i1 %51, label %59, label %52

52:                                               ; preds = %49
  %53 = load i64, ptr %3, align 8
  %54 = and i64 %53, 65535
  %55 = icmp eq i64 %54, 37
  br i1 %55, label %59, label %56

56:                                               ; preds = %52
  %57 = tail call ptr @target_for_debug_bind(ptr noundef nonnull %3) #21
  %58 = icmp eq ptr %57, null
  br label %59

59:                                               ; preds = %40, %49, %52, %56
  %60 = phi i1 [ %58, %56 ], [ true, %40 ], [ false, %49 ], [ false, %52 ]
  %61 = load ptr, ptr @valvar_pool, align 8
  %62 = load ptr, ptr @var_pool, align 8
  %63 = select i1 %60, ptr %62, ptr %61
  %64 = tail call ptr @pool_alloc(ptr noundef %63) #21
  store ptr %3, ptr %64, align 8, !tbaa !204
  %65 = getelementptr inbounds %struct.variable_def, ptr %64, i64 0, i32 1
  store i32 1, ptr %65, align 8, !tbaa !206
  %66 = getelementptr inbounds %struct.variable_def, ptr %64, i64 0, i32 2
  store i8 1, ptr %66, align 4, !tbaa !207
  %67 = getelementptr inbounds %struct.variable_def, ptr %64, i64 0, i32 3
  store i8 0, ptr %67, align 1, !tbaa !237
  %68 = getelementptr inbounds %struct.variable_def, ptr %64, i64 0, i32 4
  store i8 0, ptr %68, align 2, !tbaa !238
  %69 = getelementptr inbounds %struct.variable_def, ptr %64, i64 0, i32 5
  %70 = getelementptr inbounds %struct.variable_def, ptr %64, i64 0, i32 5, i64 0, i32 2
  store i64 %4, ptr %70, align 8, !tbaa !239
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %69, i8 0, i64 16, i1 false)
  store ptr %64, ptr %2, align 8, !tbaa !35
  br label %423

71:                                               ; preds = %34
  %72 = load ptr, ptr %35, align 8, !tbaa !204
  %73 = icmp eq ptr %72, %3
  br i1 %27, label %74, label %217

74:                                               ; preds = %71
  br i1 %73, label %76, label %75

75:                                               ; preds = %74
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 6402, ptr noundef nonnull @.str.2) #21
  br label %76

76:                                               ; preds = %74, %75
  %77 = load i32, ptr %1, align 8
  %78 = trunc i32 %77 to i16
  %79 = getelementptr inbounds %struct.variable_def, ptr %35, i64 0, i32 5
  %80 = load ptr, ptr %79, align 8, !tbaa !35
  %81 = icmp eq ptr %80, null
  switch i16 %78, label %152 [
    i16 1, label %82
    i16 37, label %108
    i16 43, label %132
  ]

82:                                               ; preds = %76
  br i1 %81, label %169, label %83

83:                                               ; preds = %82
  %84 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %85

85:                                               ; preds = %83, %104
  %86 = phi ptr [ %80, %83 ], [ %106, %104 ]
  %87 = phi i32 [ 0, %83 ], [ %105, %104 ]
  %88 = phi ptr [ %79, %83 ], [ %86, %104 ]
  %89 = getelementptr inbounds %struct.location_chain_def, ptr %86, i64 0, i32 1
  %90 = load ptr, ptr %89, align 8, !tbaa !240
  %91 = load i32, ptr %90, align 8
  %92 = trunc i32 %91 to i16
  switch i16 %92, label %169 [
    i16 1, label %93
    i16 37, label %104
    i16 43, label %104
  ]

93:                                               ; preds = %85
  %94 = icmp eq ptr %90, %1
  br i1 %94, label %169, label %95

95:                                               ; preds = %93
  %96 = getelementptr inbounds %struct.rtx_def, ptr %90, i64 0, i32 1
  %97 = load ptr, ptr %96, align 8, !tbaa !46
  %98 = getelementptr inbounds %struct.cselib_val_struct, ptr %97, i64 0, i32 1
  %99 = load i32, ptr %98, align 4, !tbaa !193
  %100 = load ptr, ptr %84, align 8, !tbaa !46
  %101 = getelementptr inbounds %struct.cselib_val_struct, ptr %100, i64 0, i32 1
  %102 = load i32, ptr %101, align 4, !tbaa !193
  %103 = icmp slt i32 %99, %102
  br i1 %103, label %104, label %169

104:                                              ; preds = %85, %85, %95
  %105 = add nuw nsw i32 %87, 1
  %106 = load ptr, ptr %86, align 8, !tbaa !35
  %107 = icmp eq ptr %106, null
  br i1 %107, label %169, label %85, !llvm.loop !241

108:                                              ; preds = %76
  br i1 %81, label %169, label %109

109:                                              ; preds = %108
  %110 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %111

111:                                              ; preds = %109, %125
  %112 = phi ptr [ %80, %109 ], [ %127, %125 ]
  %113 = phi i32 [ 0, %109 ], [ %126, %125 ]
  %114 = phi ptr [ %79, %109 ], [ %112, %125 ]
  %115 = getelementptr inbounds %struct.location_chain_def, ptr %112, i64 0, i32 1
  %116 = load ptr, ptr %115, align 8, !tbaa !240
  %117 = load i32, ptr %116, align 8
  %118 = and i32 %117, 65535
  %119 = icmp eq i32 %118, 37
  br i1 %119, label %120, label %169

120:                                              ; preds = %111
  %121 = getelementptr inbounds %struct.rtx_def, ptr %116, i64 0, i32 1
  %122 = load i32, ptr %121, align 8, !tbaa !46
  %123 = load i32, ptr %110, align 8, !tbaa !46
  %124 = icmp ult i32 %122, %123
  br i1 %124, label %125, label %129

125:                                              ; preds = %120
  %126 = add nuw nsw i32 %113, 1
  %127 = load ptr, ptr %112, align 8, !tbaa !35
  %128 = icmp eq ptr %127, null
  br i1 %128, label %169, label %111, !llvm.loop !242

129:                                              ; preds = %120
  %130 = icmp ne i32 %122, %123
  %131 = zext i1 %130 to i32
  br label %169

132:                                              ; preds = %76
  br i1 %81, label %169, label %133

133:                                              ; preds = %132, %148
  %134 = phi ptr [ %150, %148 ], [ %80, %132 ]
  %135 = phi i32 [ %149, %148 ], [ 0, %132 ]
  %136 = phi ptr [ %134, %148 ], [ %79, %132 ]
  %137 = getelementptr inbounds %struct.location_chain_def, ptr %134, i64 0, i32 1
  %138 = load ptr, ptr %137, align 8, !tbaa !240
  %139 = load i32, ptr %138, align 8
  %140 = trunc i32 %139 to i16
  switch i16 %140, label %169 [
    i16 37, label %148
    i16 43, label %141
  ]

141:                                              ; preds = %133
  %142 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %143 = getelementptr inbounds %struct.rtx_def, ptr %138, i64 0, i32 1
  %144 = load ptr, ptr %143, align 8, !tbaa !46
  %145 = load ptr, ptr %142, align 8, !tbaa !46
  %146 = tail call fastcc i32 @loc_cmp(ptr noundef %144, ptr noundef %145), !range !243
  %147 = icmp sgt i32 %146, -1
  br i1 %147, label %169, label %148

148:                                              ; preds = %141, %133
  %149 = add nuw nsw i32 %135, 1
  %150 = load ptr, ptr %134, align 8, !tbaa !35
  %151 = icmp eq ptr %150, null
  br i1 %151, label %169, label %133, !llvm.loop !244

152:                                              ; preds = %76
  br i1 %81, label %169, label %153

153:                                              ; preds = %152
  %154 = getelementptr inbounds %struct.location_chain_def, ptr %80, i64 0, i32 1
  %155 = load ptr, ptr %154, align 8, !tbaa !240
  %156 = tail call fastcc i32 @loc_cmp(ptr noundef %155, ptr noundef nonnull %1), !range !243
  %157 = icmp sgt i32 %156, -1
  br i1 %157, label %169, label %163

158:                                              ; preds = %163
  %159 = getelementptr inbounds %struct.location_chain_def, ptr %167, i64 0, i32 1
  %160 = load ptr, ptr %159, align 8, !tbaa !240
  %161 = tail call fastcc i32 @loc_cmp(ptr noundef %160, ptr noundef nonnull %1), !range !243
  %162 = icmp sgt i32 %161, -1
  br i1 %162, label %169, label %163, !llvm.loop !245

163:                                              ; preds = %153, %158
  %164 = phi i32 [ %166, %158 ], [ 0, %153 ]
  %165 = phi ptr [ %167, %158 ], [ %80, %153 ]
  %166 = add nuw nsw i32 %164, 1
  %167 = load ptr, ptr %165, align 8, !tbaa !35
  %168 = icmp eq ptr %167, null
  br i1 %168, label %169, label %158, !llvm.loop !245

169:                                              ; preds = %148, %133, %141, %125, %111, %104, %93, %85, %95, %163, %158, %153, %132, %108, %82, %152, %129
  %170 = phi ptr [ %112, %129 ], [ null, %152 ], [ null, %82 ], [ null, %108 ], [ null, %132 ], [ %80, %153 ], [ %167, %158 ], [ null, %163 ], [ %86, %95 ], [ %86, %85 ], [ %86, %93 ], [ null, %104 ], [ %112, %111 ], [ null, %125 ], [ %134, %141 ], [ %134, %133 ], [ null, %148 ]
  %171 = phi ptr [ %114, %129 ], [ %79, %152 ], [ %79, %82 ], [ %79, %108 ], [ %79, %132 ], [ %79, %153 ], [ %165, %158 ], [ %165, %163 ], [ %88, %95 ], [ %88, %85 ], [ %88, %93 ], [ %86, %104 ], [ %114, %111 ], [ %112, %125 ], [ %136, %141 ], [ %136, %133 ], [ %134, %148 ]
  %172 = phi i32 [ %131, %129 ], [ 1, %152 ], [ 1, %82 ], [ 1, %108 ], [ 1, %132 ], [ %156, %153 ], [ %161, %158 ], [ 1, %163 ], [ 1, %95 ], [ 1, %85 ], [ 0, %93 ], [ 1, %104 ], [ 1, %111 ], [ 1, %125 ], [ %146, %141 ], [ 1, %133 ], [ 1, %148 ]
  %173 = phi i32 [ %113, %129 ], [ 0, %152 ], [ 0, %82 ], [ 0, %108 ], [ 0, %132 ], [ 0, %153 ], [ %166, %158 ], [ %166, %163 ], [ %87, %95 ], [ %87, %85 ], [ %87, %93 ], [ %105, %104 ], [ %113, %111 ], [ %126, %125 ], [ %135, %141 ], [ %135, %133 ], [ %149, %148 ]
  %174 = icmp eq i32 %172, 0
  br i1 %174, label %213, label %175

175:                                              ; preds = %169
  %176 = getelementptr inbounds %struct.variable_def, ptr %35, i64 0, i32 1
  %177 = load i32, ptr %176, align 8, !tbaa !206
  %178 = getelementptr inbounds %struct.variable_def, ptr %35, i64 0, i32 4
  %179 = load i8, ptr %178, align 2, !tbaa !238
  %180 = zext i8 %179 to i32
  %181 = add nuw nsw i32 %180, 1
  %182 = icmp sgt i32 %177, %181
  br i1 %182, label %188, label %183

183:                                              ; preds = %175
  %184 = getelementptr inbounds %struct.dataflow_set_def, ptr %0, i64 0, i32 2
  %185 = load ptr, ptr %184, align 8, !tbaa !77
  %186 = load i32, ptr %185, align 8, !tbaa !75
  %187 = icmp slt i32 %186, 2
  br i1 %187, label %213, label %188

188:                                              ; preds = %175, %183
  %189 = tail call fastcc ptr @unshare_variable(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %35, i32 noundef %38)
  %190 = load ptr, ptr %189, align 8, !tbaa !35
  %191 = getelementptr inbounds %struct.variable_def, ptr %190, i64 0, i32 5
  %192 = icmp eq i32 %173, 0
  br i1 %192, label %199, label %193

193:                                              ; preds = %188, %193
  %194 = phi i32 [ %196, %193 ], [ %173, %188 ]
  %195 = phi ptr [ %197, %193 ], [ %191, %188 ]
  %196 = add nsw i32 %194, -1
  %197 = load ptr, ptr %195, align 8, !tbaa !35
  %198 = icmp eq i32 %196, 0
  br i1 %198, label %199, label %193, !llvm.loop !246

199:                                              ; preds = %193, %188
  %200 = phi ptr [ %191, %188 ], [ %197, %193 ]
  %201 = icmp eq ptr %170, null
  br i1 %201, label %202, label %205

202:                                              ; preds = %199
  %203 = load ptr, ptr %200, align 8, !tbaa !35
  %204 = icmp eq ptr %203, null
  br i1 %204, label %213, label %205

205:                                              ; preds = %202, %199
  %206 = getelementptr inbounds %struct.location_chain_def, ptr %170, i64 0, i32 1
  %207 = load ptr, ptr %206, align 8, !tbaa !240
  %208 = load ptr, ptr %200, align 8, !tbaa !35
  %209 = getelementptr inbounds %struct.location_chain_def, ptr %208, i64 0, i32 1
  %210 = load ptr, ptr %209, align 8, !tbaa !240
  %211 = icmp eq ptr %207, %210
  br i1 %211, label %213, label %212

212:                                              ; preds = %205
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 6493, ptr noundef nonnull @.str.2) #21
  br label %213

213:                                              ; preds = %202, %183, %205, %212, %169
  %214 = phi ptr [ %2, %169 ], [ %189, %205 ], [ %189, %212 ], [ %2, %183 ], [ %189, %202 ]
  %215 = phi ptr [ %171, %169 ], [ %200, %205 ], [ %200, %212 ], [ %171, %183 ], [ %200, %202 ]
  %216 = phi ptr [ %35, %169 ], [ %190, %205 ], [ %190, %212 ], [ %35, %183 ], [ %190, %202 ]
  br i1 %174, label %446, label %423

217:                                              ; preds = %71
  br i1 %73, label %219, label %218

218:                                              ; preds = %217
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 6500, ptr noundef nonnull @.str.2) #21
  br label %219

219:                                              ; preds = %217, %218
  %220 = getelementptr inbounds %struct.variable_def, ptr %35, i64 0, i32 2
  %221 = load i8, ptr %220, align 4, !tbaa !207
  %222 = sext i8 %221 to i32
  %223 = icmp eq i8 %221, 0
  br i1 %223, label %237, label %224

224:                                              ; preds = %219, %224
  %225 = phi i32 [ %235, %224 ], [ %222, %219 ]
  %226 = phi i32 [ %234, %224 ], [ 0, %219 ]
  %227 = add nsw i32 %225, %226
  %228 = sdiv i32 %227, 2
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.variable_def, ptr %35, i64 0, i32 5, i64 %229, i32 2
  %231 = load i64, ptr %230, align 8, !tbaa !239
  %232 = icmp slt i64 %231, %4
  %233 = add nsw i32 %228, 1
  %234 = select i1 %232, i32 %233, i32 %226
  %235 = select i1 %232, i32 %225, i32 %228
  %236 = icmp eq i32 %234, %235
  br i1 %236, label %237, label %224, !llvm.loop !247

237:                                              ; preds = %224, %219
  %238 = phi i32 [ 0, %219 ], [ %234, %224 ]
  %239 = icmp slt i32 %238, %222
  br i1 %239, label %240, label %245

240:                                              ; preds = %237
  %241 = sext i32 %238 to i64
  %242 = getelementptr inbounds %struct.variable_def, ptr %35, i64 0, i32 5, i64 %241, i32 2
  %243 = load i64, ptr %242, align 8, !tbaa !239
  %244 = icmp eq i64 %243, %4
  br i1 %244, label %246, label %245

245:                                              ; preds = %240, %237
  br label %246

246:                                              ; preds = %240, %245
  %247 = phi i32 [ -1, %245 ], [ %238, %240 ]
  %248 = icmp sgt i32 %247, -1
  br i1 %248, label %249, label %298

249:                                              ; preds = %246
  %250 = zext nneg i32 %247 to i64
  %251 = getelementptr inbounds %struct.variable_def, ptr %35, i64 0, i32 5, i64 %250
  %252 = load ptr, ptr %251, align 8, !tbaa !208
  %253 = icmp eq ptr %252, null
  br i1 %253, label %282, label %254

254:                                              ; preds = %249
  %255 = getelementptr inbounds %struct.location_chain_def, ptr %252, i64 0, i32 1
  %256 = load ptr, ptr %255, align 8, !tbaa !240
  %257 = load i32, ptr %256, align 8
  %258 = and i32 %257, 65535
  %259 = icmp eq i32 %258, 37
  br i1 %259, label %260, label %270

260:                                              ; preds = %254
  %261 = load i32, ptr %1, align 8
  %262 = and i32 %261, 65535
  %263 = icmp eq i32 %262, 37
  br i1 %263, label %264, label %270

264:                                              ; preds = %260
  %265 = getelementptr inbounds %struct.rtx_def, ptr %256, i64 0, i32 1
  %266 = load i32, ptr %265, align 8, !tbaa !46
  %267 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %268 = load i32, ptr %267, align 8, !tbaa !46
  %269 = icmp eq i32 %266, %268
  br i1 %269, label %273, label %270

270:                                              ; preds = %264, %260, %254
  %271 = tail call i32 @rtx_equal_p(ptr noundef nonnull %256, ptr noundef %1) #21
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %282, label %273

273:                                              ; preds = %270, %264
  %274 = getelementptr inbounds %struct.location_chain_def, ptr %252, i64 0, i32 3
  %275 = load i32, ptr %274, align 8, !tbaa !248
  %276 = icmp ult i32 %275, %38
  br i1 %276, label %277, label %278

277:                                              ; preds = %273
  store i32 %38, ptr %274, align 8, !tbaa !248
  br label %278

278:                                              ; preds = %277, %273
  %279 = icmp eq ptr %6, null
  br i1 %279, label %415, label %280

280:                                              ; preds = %278
  %281 = getelementptr inbounds %struct.location_chain_def, ptr %252, i64 0, i32 2
  store ptr %6, ptr %281, align 8, !tbaa !249
  br label %415

282:                                              ; preds = %270, %249
  %283 = getelementptr inbounds %struct.variable_def, ptr %35, i64 0, i32 1
  %284 = load i32, ptr %283, align 8, !tbaa !206
  %285 = getelementptr inbounds %struct.variable_def, ptr %35, i64 0, i32 4
  %286 = load i8, ptr %285, align 2, !tbaa !238
  %287 = zext i8 %286 to i32
  %288 = add nuw nsw i32 %287, 1
  %289 = icmp sgt i32 %284, %288
  br i1 %289, label %295, label %290

290:                                              ; preds = %282
  %291 = getelementptr inbounds %struct.dataflow_set_def, ptr %0, i64 0, i32 2
  %292 = load ptr, ptr %291, align 8, !tbaa !77
  %293 = load i32, ptr %292, align 8, !tbaa !75
  %294 = icmp slt i32 %293, 2
  br i1 %294, label %365, label %295

295:                                              ; preds = %282, %290
  %296 = tail call fastcc ptr @unshare_variable(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %35, i32 noundef %38)
  %297 = load ptr, ptr %296, align 8, !tbaa !35
  br label %365

298:                                              ; preds = %246
  %299 = getelementptr inbounds %struct.variable_def, ptr %35, i64 0, i32 1
  %300 = load i32, ptr %299, align 8, !tbaa !206
  %301 = getelementptr inbounds %struct.variable_def, ptr %35, i64 0, i32 4
  %302 = load i8, ptr %301, align 2, !tbaa !238
  %303 = zext i8 %302 to i32
  %304 = add nuw nsw i32 %303, 1
  %305 = icmp sgt i32 %300, %304
  br i1 %305, label %311, label %306

306:                                              ; preds = %298
  %307 = getelementptr inbounds %struct.dataflow_set_def, ptr %0, i64 0, i32 2
  %308 = load ptr, ptr %307, align 8, !tbaa !77
  %309 = load i32, ptr %308, align 8, !tbaa !75
  %310 = icmp slt i32 %309, 2
  br i1 %310, label %314, label %311

311:                                              ; preds = %298, %306
  %312 = tail call fastcc ptr @unshare_variable(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %35, i32 noundef %38)
  %313 = load ptr, ptr %312, align 8, !tbaa !35
  br label %314

314:                                              ; preds = %311, %306
  %315 = phi ptr [ %312, %311 ], [ %2, %306 ]
  %316 = phi ptr [ %313, %311 ], [ %35, %306 ]
  %317 = getelementptr inbounds %struct.variable_def, ptr %316, i64 0, i32 2
  %318 = load i8, ptr %317, align 4, !tbaa !207
  %319 = icmp slt i8 %318, 16
  br i1 %319, label %320, label %342

320:                                              ; preds = %314
  %321 = icmp eq i8 %318, 0
  br i1 %321, label %343, label %322

322:                                              ; preds = %320
  %323 = load ptr, ptr %316, align 8, !tbaa !204
  %324 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !50
  %325 = icmp eq i32 %324, 0
  br i1 %325, label %343, label %326

326:                                              ; preds = %322
  %327 = icmp eq ptr %323, null
  br i1 %327, label %332, label %328

328:                                              ; preds = %326
  %329 = load i64, ptr %323, align 8
  %330 = and i64 %329, 65535
  %331 = icmp eq i64 %330, 1
  br label %332

332:                                              ; preds = %328, %326
  %333 = phi i1 [ false, %326 ], [ %331, %328 ]
  %334 = or i1 %327, %333
  br i1 %334, label %342, label %335

335:                                              ; preds = %332
  %336 = load i64, ptr %323, align 8
  %337 = and i64 %336, 65535
  %338 = icmp eq i64 %337, 37
  br i1 %338, label %342, label %339

339:                                              ; preds = %335
  %340 = tail call ptr @target_for_debug_bind(ptr noundef nonnull %323) #21
  %341 = icmp eq ptr %340, null
  br i1 %341, label %343, label %342

342:                                              ; preds = %332, %335, %339, %314
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 6546, ptr noundef nonnull @.str.2) #21
  br label %343

343:                                              ; preds = %322, %320, %339, %342
  %344 = load i8, ptr %317, align 4, !tbaa !207
  %345 = sext i8 %344 to i32
  %346 = icmp slt i32 %238, %345
  br i1 %346, label %347, label %358

347:                                              ; preds = %343
  %348 = sext i8 %344 to i64
  %349 = sext i32 %238 to i64
  br label %350

350:                                              ; preds = %347, %350
  %351 = phi i64 [ %348, %347 ], [ %353, %350 ]
  %352 = getelementptr inbounds %struct.variable_def, ptr %316, i64 0, i32 5, i64 %351
  %353 = add nsw i64 %351, -1
  %354 = getelementptr inbounds %struct.variable_def, ptr %316, i64 0, i32 5, i64 %353
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %352, ptr noundef nonnull align 8 dereferenceable(24) %354, i64 24, i1 false), !tbaa.struct !250
  %355 = icmp sgt i64 %353, %349
  br i1 %355, label %350, label %356, !llvm.loop !251

356:                                              ; preds = %350
  %357 = trunc i64 %353 to i32
  br label %358

358:                                              ; preds = %356, %343
  %359 = phi i32 [ %345, %343 ], [ %357, %356 ]
  %360 = load i8, ptr %317, align 4, !tbaa !207
  %361 = add i8 %360, 1
  store i8 %361, ptr %317, align 4, !tbaa !207
  %362 = sext i32 %359 to i64
  %363 = getelementptr inbounds %struct.variable_def, ptr %316, i64 0, i32 5, i64 %362
  %364 = getelementptr inbounds %struct.variable_def, ptr %316, i64 0, i32 5, i64 %362, i32 2
  store i64 %4, ptr %364, align 8, !tbaa !239
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %363, i8 0, i64 16, i1 false)
  br label %365

365:                                              ; preds = %295, %290, %358
  %366 = phi i32 [ %247, %295 ], [ %247, %290 ], [ %359, %358 ]
  %367 = phi ptr [ %296, %295 ], [ %2, %290 ], [ %315, %358 ]
  %368 = phi ptr [ %297, %295 ], [ %35, %290 ], [ %316, %358 ]
  %369 = sext i32 %366 to i64
  %370 = getelementptr inbounds %struct.variable_def, ptr %368, i64 0, i32 5, i64 %369
  %371 = load ptr, ptr %370, align 8, !tbaa !208
  %372 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %373

373:                                              ; preds = %393, %365
  %374 = phi ptr [ %371, %365 ], [ %378, %393 ]
  %375 = phi ptr [ %370, %365 ], [ %374, %393 ]
  %376 = icmp eq ptr %374, null
  br i1 %376, label %415, label %377

377:                                              ; preds = %373
  %378 = load ptr, ptr %374, align 8, !tbaa !210
  %379 = getelementptr inbounds %struct.location_chain_def, ptr %374, i64 0, i32 1
  %380 = load ptr, ptr %379, align 8, !tbaa !240
  %381 = load i32, ptr %380, align 8
  %382 = and i32 %381, 65535
  %383 = icmp eq i32 %382, 37
  br i1 %383, label %384, label %393

384:                                              ; preds = %377
  %385 = load i32, ptr %1, align 8
  %386 = and i32 %385, 65535
  %387 = icmp eq i32 %386, 37
  br i1 %387, label %388, label %393

388:                                              ; preds = %384
  %389 = getelementptr inbounds %struct.rtx_def, ptr %380, i64 0, i32 1
  %390 = load i32, ptr %389, align 8, !tbaa !46
  %391 = load i32, ptr %372, align 8, !tbaa !46
  %392 = icmp eq i32 %390, %391
  br i1 %392, label %396, label %393

393:                                              ; preds = %388, %384, %377
  %394 = tail call i32 @rtx_equal_p(ptr noundef nonnull %380, ptr noundef %1) #21
  %395 = icmp eq i32 %394, 0
  br i1 %395, label %373, label %396, !llvm.loop !252

396:                                              ; preds = %388, %393
  %397 = getelementptr inbounds %struct.location_chain_def, ptr %374, i64 0, i32 1
  %398 = getelementptr inbounds %struct.location_chain_def, ptr %374, i64 0, i32 3
  %399 = load i32, ptr %398, align 8, !tbaa !248
  %400 = tail call i32 @llvm.umax.i32(i32 %399, i32 %38)
  %401 = getelementptr inbounds %struct.location_chain_def, ptr %374, i64 0, i32 2
  %402 = load ptr, ptr %401, align 8, !tbaa !249
  %403 = icmp ne ptr %402, null
  %404 = icmp eq ptr %6, null
  %405 = and i1 %404, %403
  %406 = select i1 %405, ptr %402, ptr %6
  %407 = getelementptr inbounds %struct.variable_def, ptr %368, i64 0, i32 5, i64 %369, i32 1
  %408 = load ptr, ptr %407, align 8, !tbaa !253
  %409 = load ptr, ptr %397, align 8, !tbaa !240
  %410 = icmp eq ptr %408, %409
  br i1 %410, label %411, label %413

411:                                              ; preds = %396
  store ptr null, ptr %407, align 8, !tbaa !253
  %412 = getelementptr inbounds %struct.variable_def, ptr %368, i64 0, i32 3
  store i8 1, ptr %412, align 1, !tbaa !237
  br label %413

413:                                              ; preds = %411, %396
  %414 = load ptr, ptr @loc_chain_pool, align 8, !tbaa !35
  tail call void @pool_free(ptr noundef %414, ptr noundef nonnull %374) #21
  store ptr %378, ptr %375, align 8, !tbaa !35
  br label %415

415:                                              ; preds = %373, %413, %278, %280
  %416 = phi i32 [ %38, %280 ], [ %38, %278 ], [ %400, %413 ], [ %38, %373 ]
  %417 = phi ptr [ %6, %280 ], [ %6, %278 ], [ %406, %413 ], [ %6, %373 ]
  %418 = phi i32 [ %247, %280 ], [ %247, %278 ], [ %366, %413 ], [ %366, %373 ]
  %419 = phi ptr [ %2, %280 ], [ %2, %278 ], [ %367, %413 ], [ %367, %373 ]
  %420 = phi ptr [ undef, %280 ], [ undef, %278 ], [ %370, %413 ], [ %370, %373 ]
  %421 = phi ptr [ %35, %280 ], [ %35, %278 ], [ %368, %413 ], [ %368, %373 ]
  %422 = phi i1 [ false, %280 ], [ false, %278 ], [ true, %413 ], [ true, %373 ]
  br i1 %422, label %423, label %446

423:                                              ; preds = %213, %415, %59
  %424 = phi i32 [ %38, %213 ], [ %416, %415 ], [ %38, %59 ]
  %425 = phi ptr [ %6, %213 ], [ %417, %415 ], [ %6, %59 ]
  %426 = phi i32 [ 0, %213 ], [ %418, %415 ], [ 0, %59 ]
  %427 = phi ptr [ %214, %213 ], [ %419, %415 ], [ %2, %59 ]
  %428 = phi ptr [ %215, %213 ], [ %420, %415 ], [ %69, %59 ]
  %429 = phi ptr [ %216, %213 ], [ %421, %415 ], [ %64, %59 ]
  %430 = load ptr, ptr @loc_chain_pool, align 8, !tbaa !35
  %431 = tail call ptr @pool_alloc(ptr noundef %430) #21
  %432 = getelementptr inbounds %struct.location_chain_def, ptr %431, i64 0, i32 1
  store ptr %1, ptr %432, align 8, !tbaa !240
  %433 = getelementptr inbounds %struct.location_chain_def, ptr %431, i64 0, i32 3
  store i32 %424, ptr %433, align 8, !tbaa !248
  %434 = getelementptr inbounds %struct.location_chain_def, ptr %431, i64 0, i32 2
  store ptr %425, ptr %434, align 8, !tbaa !249
  %435 = load ptr, ptr %428, align 8, !tbaa !35
  store ptr %435, ptr %431, align 8, !tbaa !210
  store ptr %431, ptr %428, align 8, !tbaa !35
  %436 = load i1, ptr @emit_notes, align 1
  %437 = select i1 %27, i1 %436, i1 false
  br i1 %437, label %438, label %440

438:                                              ; preds = %423
  %439 = load ptr, ptr %429, align 8, !tbaa !204
  tail call fastcc void @add_value_chains(ptr noundef %439, ptr noundef %1)
  br label %440

440:                                              ; preds = %438, %423
  %441 = sext i32 %426 to i64
  %442 = getelementptr inbounds %struct.variable_def, ptr %429, i64 0, i32 5, i64 %441, i32 1
  %443 = load ptr, ptr %442, align 8, !tbaa !253
  %444 = icmp eq ptr %443, null
  br i1 %444, label %445, label %446

445:                                              ; preds = %440
  tail call fastcc void @variable_was_changed(ptr noundef %429, ptr noundef %0)
  br label %446

446:                                              ; preds = %415, %213, %440, %445
  %447 = phi ptr [ %427, %445 ], [ %427, %440 ], [ %2, %213 ], [ %2, %415 ]
  ret ptr %447
}

declare ptr @htab_find_slot_with_hash(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i64 @htab_elements(ptr noundef) local_unnamed_addr #3

declare void @htab_traverse_noresize(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @vars_copy_1(ptr nocapture noundef readonly %0, ptr noundef %1) #9 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  %4 = getelementptr inbounds %struct.variable_def, ptr %3, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !206
  %6 = add nsw i32 %5, 1
  store i32 %6, ptr %4, align 8, !tbaa !206
  %7 = load ptr, ptr %3, align 8, !tbaa !204
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %2
  %10 = load i64, ptr %7, align 8
  %11 = and i64 %10, 65535
  %12 = icmp eq i64 %11, 1
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !46
  %16 = getelementptr inbounds %struct.cselib_val_struct, ptr %15, i64 0, i32 1
  br label %19

17:                                               ; preds = %9, %2
  %18 = getelementptr inbounds %struct.tree_decl_minimal, ptr %7, i64 0, i32 2
  br label %19

19:                                               ; preds = %13, %17
  %20 = phi ptr [ %16, %13 ], [ %18, %17 ]
  %21 = load i32, ptr %20, align 4, !tbaa !46
  %22 = tail call ptr @htab_find_slot_with_hash(ptr noundef %1, ptr noundef %7, i32 noundef %21, i32 noundef 1) #21
  store ptr %3, ptr %22, align 8, !tbaa !35
  ret i32 1
}

; Function Attrs: cold nounwind uwtable
define internal fastcc i32 @loc_cmp(ptr noundef readonly %0, ptr noundef readonly %1) unnamed_addr #9 !prof !34 {
  br label %3

3:                                                ; preds = %39, %2
  %4 = phi ptr [ %0, %2 ], [ %41, %39 ]
  %5 = phi ptr [ %1, %2 ], [ %43, %39 ]
  %6 = load i32, ptr %4, align 8
  %7 = and i32 %6, 65535
  %8 = icmp eq ptr %4, %5
  br i1 %8, label %187, label %9

9:                                                ; preds = %3
  %10 = icmp eq i32 %7, 37
  %11 = load i32, ptr %5, align 8
  %12 = and i32 %11, 65535
  %13 = icmp eq i32 %12, 37
  br i1 %10, label %14, label %29

14:                                               ; preds = %9
  br i1 %13, label %15, label %187

15:                                               ; preds = %14
  %16 = xor i32 %11, %6
  %17 = and i32 %16, 16711680
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 2673, ptr noundef nonnull @.str.2) #21
  br label %20

20:                                               ; preds = %15, %19
  %21 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %22 = load i32, ptr %21, align 8, !tbaa !46
  %23 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %24 = load i32, ptr %23, align 8, !tbaa !46
  %25 = icmp eq i32 %22, %24
  br i1 %25, label %187, label %26

26:                                               ; preds = %20
  %27 = icmp ult i32 %22, %24
  %28 = select i1 %27, i32 -1, i32 1
  br label %187

29:                                               ; preds = %9
  br i1 %13, label %187, label %30

30:                                               ; preds = %29
  %31 = icmp eq i32 %7, 43
  %32 = icmp eq i32 %12, 43
  br i1 %31, label %33, label %44

33:                                               ; preds = %30
  br i1 %32, label %34, label %187

34:                                               ; preds = %33
  %35 = xor i32 %11, %6
  %36 = and i32 %35, 16711680
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %34
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 2689, ptr noundef nonnull @.str.2) #21
  br label %39

39:                                               ; preds = %34, %38
  %40 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !46
  %42 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !46
  br label %3

44:                                               ; preds = %30
  br i1 %32, label %187, label %45

45:                                               ; preds = %44
  %46 = icmp eq i32 %7, 1
  %47 = icmp eq i32 %12, 1
  br i1 %46, label %48, label %60

48:                                               ; preds = %45
  br i1 %47, label %49, label %187

49:                                               ; preds = %48
  %50 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !46
  %52 = getelementptr inbounds %struct.cselib_val_struct, ptr %51, i64 0, i32 1
  %53 = load i32, ptr %52, align 4, !tbaa !193
  %54 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !46
  %56 = getelementptr inbounds %struct.cselib_val_struct, ptr %55, i64 0, i32 1
  %57 = load i32, ptr %56, align 4, !tbaa !193
  %58 = icmp slt i32 %53, %57
  %59 = select i1 %58, i32 -1, i32 1
  br label %187

60:                                               ; preds = %45
  br i1 %47, label %187, label %61

61:                                               ; preds = %60
  %62 = icmp eq i32 %7, %12
  br i1 %62, label %66, label %63

63:                                               ; preds = %61
  %64 = icmp ult i32 %7, %12
  %65 = select i1 %64, i32 -1, i32 1
  br label %187

66:                                               ; preds = %61
  %67 = xor i32 %11, %6
  %68 = and i32 %67, 16711680
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %66
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 2720, ptr noundef nonnull @.str.2) #21
  br label %71

71:                                               ; preds = %66, %70
  %72 = load i32, ptr %4, align 8
  %73 = and i32 %72, 65535
  %74 = icmp eq i32 %73, 2
  br i1 %74, label %75, label %88

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !46
  %78 = getelementptr inbounds %struct.tree_decl_minimal, ptr %77, i64 0, i32 2
  %79 = load i32, ptr %78, align 4, !tbaa !46
  %80 = sub i32 0, %79
  %81 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !46
  %83 = getelementptr inbounds %struct.tree_decl_minimal, ptr %82, i64 0, i32 2
  %84 = load i32, ptr %83, align 4, !tbaa !46
  %85 = sub i32 0, %84
  %86 = icmp ult i32 %80, %85
  %87 = select i1 %86, i32 -1, i32 1
  br label %187

88:                                               ; preds = %71
  %89 = zext nneg i32 %7 to i64
  %90 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %89
  %91 = load ptr, ptr %90, align 8, !tbaa !35
  %92 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %89
  %93 = load i8, ptr %92, align 1, !tbaa !46
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %187, label %95

95:                                               ; preds = %88
  %96 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %97 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %98 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %99 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %100 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %101 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %102 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %103 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %104 = zext i8 %93 to i64
  br label %105

105:                                              ; preds = %95, %184
  %106 = phi i64 [ 0, %95 ], [ %185, %184 ]
  %107 = getelementptr inbounds i8, ptr %91, i64 %106
  %108 = load i8, ptr %107, align 1, !tbaa !46
  switch i8 %108, label %183 [
    i8 119, label %109
    i8 110, label %118
    i8 105, label %118
    i8 86, label %127
    i8 69, label %127
    i8 101, label %158
    i8 83, label %167
    i8 115, label %167
    i8 117, label %184
    i8 48, label %184
    i8 116, label %184
  ]

109:                                              ; preds = %105
  %110 = getelementptr inbounds [1 x i64], ptr %102, i64 0, i64 %106
  %111 = load i64, ptr %110, align 8, !tbaa !46
  %112 = getelementptr inbounds [1 x i64], ptr %103, i64 0, i64 %106
  %113 = load i64, ptr %112, align 8, !tbaa !46
  %114 = icmp eq i64 %111, %113
  br i1 %114, label %184, label %115

115:                                              ; preds = %109
  %116 = icmp slt i64 %111, %113
  %117 = select i1 %116, i32 -1, i32 1
  br label %187

118:                                              ; preds = %105, %105
  %119 = getelementptr inbounds [1 x %union.rtunion_def], ptr %100, i64 0, i64 %106
  %120 = load i32, ptr %119, align 8, !tbaa !46
  %121 = getelementptr inbounds [1 x %union.rtunion_def], ptr %101, i64 0, i64 %106
  %122 = load i32, ptr %121, align 8, !tbaa !46
  %123 = icmp eq i32 %120, %122
  br i1 %123, label %184, label %124

124:                                              ; preds = %118
  %125 = icmp slt i32 %120, %122
  %126 = select i1 %125, i32 -1, i32 1
  br label %187

127:                                              ; preds = %105, %105
  %128 = getelementptr inbounds [1 x %union.rtunion_def], ptr %98, i64 0, i64 %106
  %129 = load ptr, ptr %128, align 8, !tbaa !46
  %130 = load i32, ptr %129, align 8, !tbaa !146
  %131 = getelementptr inbounds [1 x %union.rtunion_def], ptr %99, i64 0, i64 %106
  %132 = load ptr, ptr %131, align 8, !tbaa !46
  %133 = load i32, ptr %132, align 8, !tbaa !146
  %134 = icmp eq i32 %130, %133
  br i1 %134, label %135, label %139

135:                                              ; preds = %127
  %136 = load ptr, ptr %128, align 8, !tbaa !46
  %137 = load i32, ptr %136, align 8, !tbaa !146
  %138 = icmp sgt i32 %137, 0
  br i1 %138, label %148, label %184

139:                                              ; preds = %127
  %140 = icmp slt i32 %130, %133
  %141 = select i1 %140, i32 -1, i32 1
  br label %187

142:                                              ; preds = %148
  %143 = add nuw nsw i64 %149, 1
  %144 = load ptr, ptr %128, align 8, !tbaa !46
  %145 = load i32, ptr %144, align 8, !tbaa !146
  %146 = sext i32 %145 to i64
  %147 = icmp slt i64 %143, %146
  br i1 %147, label %148, label %184, !llvm.loop !254

148:                                              ; preds = %135, %142
  %149 = phi i64 [ %143, %142 ], [ 0, %135 ]
  %150 = phi ptr [ %144, %142 ], [ %136, %135 ]
  %151 = getelementptr inbounds %struct.rtvec_def, ptr %150, i64 0, i32 1, i64 %149
  %152 = load ptr, ptr %151, align 8, !tbaa !35
  %153 = load ptr, ptr %131, align 8, !tbaa !46
  %154 = getelementptr inbounds %struct.rtvec_def, ptr %153, i64 0, i32 1, i64 %149
  %155 = load ptr, ptr %154, align 8, !tbaa !35
  %156 = tail call fastcc i32 @loc_cmp(ptr noundef %152, ptr noundef %155), !range !243
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %142, label %187

158:                                              ; preds = %105
  %159 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %160 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %161 = getelementptr inbounds [1 x %union.rtunion_def], ptr %159, i64 0, i64 %106
  %162 = load ptr, ptr %161, align 8, !tbaa !46
  %163 = getelementptr inbounds [1 x %union.rtunion_def], ptr %160, i64 0, i64 %106
  %164 = load ptr, ptr %163, align 8, !tbaa !46
  %165 = tail call fastcc i32 @loc_cmp(ptr noundef %162, ptr noundef %164), !range !243
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %184, label %187

167:                                              ; preds = %105, %105
  %168 = getelementptr inbounds [1 x %union.rtunion_def], ptr %96, i64 0, i64 %106
  %169 = load ptr, ptr %168, align 8, !tbaa !46
  %170 = getelementptr inbounds [1 x %union.rtunion_def], ptr %97, i64 0, i64 %106
  %171 = load ptr, ptr %170, align 8, !tbaa !46
  %172 = icmp eq ptr %169, %171
  br i1 %172, label %184, label %173

173:                                              ; preds = %167
  %174 = icmp eq ptr %169, null
  br i1 %174, label %187, label %175

175:                                              ; preds = %173
  %176 = icmp eq ptr %171, null
  br i1 %176, label %187, label %177

177:                                              ; preds = %175
  %178 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %169, ptr noundef nonnull dereferenceable(1) %171)
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %184, label %180

180:                                              ; preds = %177
  %181 = icmp sgt i32 %178, -1
  %182 = select i1 %181, i32 1, i32 -1
  br label %187

183:                                              ; preds = %105
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 2803, ptr noundef nonnull @.str.2) #21
  br label %184

184:                                              ; preds = %142, %135, %167, %118, %105, %105, %183, %109, %158, %177, %105
  %185 = add nuw nsw i64 %106, 1
  %186 = icmp eq i64 %185, %104
  br i1 %186, label %187, label %105, !llvm.loop !255

187:                                              ; preds = %158, %173, %175, %184, %148, %88, %180, %139, %124, %115, %75, %63, %60, %49, %48, %44, %33, %29, %26, %20, %14, %3
  %188 = phi i32 [ 0, %3 ], [ -1, %14 ], [ 0, %20 ], [ %28, %26 ], [ 1, %29 ], [ -1, %33 ], [ 1, %44 ], [ -1, %48 ], [ %59, %49 ], [ 1, %60 ], [ %65, %63 ], [ %87, %75 ], [ %117, %115 ], [ %126, %124 ], [ %141, %139 ], [ %182, %180 ], [ 0, %88 ], [ %156, %148 ], [ 0, %184 ], [ 1, %175 ], [ -1, %173 ], [ %165, %158 ]
  ret i32 %188
}

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef ptr @unshare_variable(ptr nocapture noundef %0, ptr noundef writeonly %1, ptr noundef %2, i32 noundef %3) unnamed_addr #9 !prof !34 {
  %5 = load ptr, ptr %2, align 8, !tbaa !204
  %6 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !50
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %24, label %8

8:                                                ; preds = %4
  %9 = icmp eq ptr %5, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %8
  %11 = load i64, ptr %5, align 8
  %12 = and i64 %11, 65535
  %13 = icmp eq i64 %12, 1
  br label %14

14:                                               ; preds = %10, %8
  %15 = phi i1 [ false, %8 ], [ %13, %10 ]
  %16 = or i1 %9, %15
  br i1 %16, label %24, label %17

17:                                               ; preds = %14
  %18 = load i64, ptr %5, align 8
  %19 = and i64 %18, 65535
  %20 = icmp eq i64 %19, 37
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = tail call ptr @target_for_debug_bind(ptr noundef nonnull %5) #21
  %23 = icmp eq ptr %22, null
  br label %24

24:                                               ; preds = %4, %14, %17, %21
  %25 = phi i1 [ %23, %21 ], [ true, %4 ], [ false, %14 ], [ false, %17 ]
  %26 = load ptr, ptr @valvar_pool, align 8
  %27 = load ptr, ptr @var_pool, align 8
  %28 = select i1 %25, ptr %27, ptr %26
  %29 = tail call ptr @pool_alloc(ptr noundef %28) #21
  %30 = load ptr, ptr %2, align 8, !tbaa !204
  store ptr %30, ptr %29, align 8, !tbaa !204
  %31 = getelementptr inbounds %struct.variable_def, ptr %29, i64 0, i32 1
  store i32 1, ptr %31, align 8, !tbaa !206
  %32 = getelementptr inbounds %struct.variable_def, ptr %2, i64 0, i32 1
  %33 = load i32, ptr %32, align 8, !tbaa !206
  %34 = add nsw i32 %33, -1
  store i32 %34, ptr %32, align 8, !tbaa !206
  %35 = getelementptr inbounds %struct.variable_def, ptr %2, i64 0, i32 2
  %36 = load i8, ptr %35, align 4, !tbaa !207
  %37 = getelementptr inbounds %struct.variable_def, ptr %29, i64 0, i32 2
  store i8 %36, ptr %37, align 4, !tbaa !207
  %38 = getelementptr inbounds %struct.variable_def, ptr %2, i64 0, i32 3
  %39 = load i8, ptr %38, align 1, !tbaa !237
  %40 = getelementptr inbounds %struct.variable_def, ptr %29, i64 0, i32 3
  store i8 %39, ptr %40, align 1, !tbaa !237
  store i8 0, ptr %38, align 1, !tbaa !237
  %41 = getelementptr inbounds %struct.variable_def, ptr %29, i64 0, i32 4
  store i8 0, ptr %41, align 2, !tbaa !238
  %42 = load i32, ptr @flag_var_tracking_uninit, align 4, !tbaa !50
  %43 = icmp eq i32 %42, 0
  %44 = select i1 %43, i32 2, i32 %3
  %45 = load i8, ptr %35, align 4, !tbaa !207
  %46 = icmp sgt i8 %45, 0
  br i1 %46, label %47, label %90

47:                                               ; preds = %24, %82
  %48 = phi i64 [ %86, %82 ], [ 0, %24 ]
  %49 = getelementptr inbounds %struct.variable_def, ptr %2, i64 0, i32 5, i64 %48
  %50 = getelementptr inbounds %struct.variable_def, ptr %2, i64 0, i32 5, i64 %48, i32 2
  %51 = load i64, ptr %50, align 8, !tbaa !239
  %52 = getelementptr inbounds %struct.variable_def, ptr %29, i64 0, i32 5, i64 %48, i32 2
  store i64 %51, ptr %52, align 8, !tbaa !239
  %53 = load ptr, ptr %49, align 8, !tbaa !35
  %54 = icmp eq ptr %53, null
  br i1 %54, label %82, label %55

55:                                               ; preds = %47
  %56 = getelementptr inbounds %struct.variable_def, ptr %29, i64 0, i32 5, i64 %48
  br label %57

57:                                               ; preds = %55, %74
  %58 = phi ptr [ %80, %74 ], [ %53, %55 ]
  %59 = phi ptr [ %61, %74 ], [ %56, %55 ]
  %60 = load ptr, ptr @loc_chain_pool, align 8, !tbaa !35
  %61 = tail call ptr @pool_alloc(ptr noundef %60) #21
  store ptr null, ptr %61, align 8, !tbaa !210
  %62 = getelementptr inbounds %struct.location_chain_def, ptr %58, i64 0, i32 3
  %63 = load i32, ptr %62, align 8, !tbaa !248
  %64 = getelementptr inbounds %struct.location_chain_def, ptr %61, i64 0, i32 3
  %65 = tail call i32 @llvm.umax.i32(i32 %63, i32 %44)
  store i32 %65, ptr %64, align 8, !tbaa !248
  %66 = getelementptr inbounds %struct.location_chain_def, ptr %58, i64 0, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !249
  %68 = icmp eq ptr %67, null
  br i1 %68, label %73, label %69

69:                                               ; preds = %57
  %70 = load i32, ptr %67, align 8
  %71 = and i32 %70, 65535
  %72 = icmp eq i32 %71, 43
  br i1 %72, label %73, label %74

73:                                               ; preds = %69, %57
  br label %74

74:                                               ; preds = %69, %73
  %75 = phi ptr [ null, %73 ], [ %67, %69 ]
  %76 = getelementptr inbounds %struct.location_chain_def, ptr %61, i64 0, i32 2
  store ptr %75, ptr %76, align 8, !tbaa !249
  %77 = getelementptr inbounds %struct.location_chain_def, ptr %58, i64 0, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !240
  %79 = getelementptr inbounds %struct.location_chain_def, ptr %61, i64 0, i32 1
  store ptr %78, ptr %79, align 8, !tbaa !240
  store ptr %61, ptr %59, align 8, !tbaa !35
  %80 = load ptr, ptr %58, align 8, !tbaa !35
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %57, !llvm.loop !256

82:                                               ; preds = %74, %47
  %83 = getelementptr inbounds %struct.variable_def, ptr %2, i64 0, i32 5, i64 %48, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !253
  %85 = getelementptr inbounds %struct.variable_def, ptr %29, i64 0, i32 5, i64 %48, i32 1
  store ptr %84, ptr %85, align 8, !tbaa !253
  %86 = add nuw nsw i64 %48, 1
  %87 = load i8, ptr %35, align 4, !tbaa !207
  %88 = sext i8 %87 to i64
  %89 = icmp slt i64 %86, %88
  br i1 %89, label %47, label %90, !llvm.loop !257

90:                                               ; preds = %82, %24
  store i1 false, ptr @dst_can_be_shared, align 1
  %91 = getelementptr inbounds %struct.dataflow_set_def, ptr %0, i64 0, i32 2
  %92 = load ptr, ptr %91, align 8, !tbaa !77
  %93 = load i32, ptr %92, align 8, !tbaa !75
  %94 = icmp slt i32 %93, 2
  br i1 %94, label %98, label %95

95:                                               ; preds = %90
  %96 = load ptr, ptr %2, align 8, !tbaa !204
  %97 = tail call fastcc ptr @shared_hash_find_slot_unshare(ptr noundef nonnull %91, ptr noundef %96, i32 noundef 0)
  br label %123

98:                                               ; preds = %90
  %99 = getelementptr inbounds %struct.dataflow_set_def, ptr %0, i64 0, i32 3
  %100 = load ptr, ptr %99, align 8, !tbaa !80
  %101 = icmp eq ptr %100, null
  %102 = icmp eq ptr %92, %100
  %103 = or i1 %101, %102
  br i1 %103, label %123, label %104

104:                                              ; preds = %98
  %105 = load ptr, ptr %2, align 8, !tbaa !204
  %106 = icmp eq ptr %105, null
  br i1 %106, label %115, label %107

107:                                              ; preds = %104
  %108 = load i64, ptr %105, align 8
  %109 = and i64 %108, 65535
  %110 = icmp eq i64 %109, 1
  br i1 %110, label %111, label %115

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct.rtx_def, ptr %105, i64 0, i32 1
  %113 = load ptr, ptr %112, align 8, !tbaa !46
  %114 = getelementptr inbounds %struct.cselib_val_struct, ptr %113, i64 0, i32 1
  br label %117

115:                                              ; preds = %107, %104
  %116 = getelementptr inbounds %struct.tree_decl_minimal, ptr %105, i64 0, i32 2
  br label %117

117:                                              ; preds = %111, %115
  %118 = phi ptr [ %114, %111 ], [ %116, %115 ]
  %119 = load i32, ptr %118, align 4, !tbaa !46
  %120 = getelementptr inbounds %struct.shared_hash_def, ptr %92, i64 0, i32 1
  %121 = load ptr, ptr %120, align 8, !tbaa !83
  %122 = tail call ptr @htab_find_slot_with_hash(ptr noundef %121, ptr noundef %105, i32 noundef %119, i32 noundef 0) #21
  br label %123

123:                                              ; preds = %98, %117, %95
  %124 = phi ptr [ %97, %95 ], [ %122, %117 ], [ %1, %98 ]
  store ptr %29, ptr %124, align 8, !tbaa !35
  %125 = getelementptr inbounds %struct.variable_def, ptr %2, i64 0, i32 4
  %126 = load i8, ptr %125, align 2, !tbaa !238
  %127 = icmp eq i8 %126, 0
  br i1 %127, label %150, label %128

128:                                              ; preds = %123
  %129 = load ptr, ptr @changed_variables, align 8, !tbaa !35
  %130 = load ptr, ptr %2, align 8, !tbaa !204
  %131 = icmp eq ptr %130, null
  br i1 %131, label %140, label %132

132:                                              ; preds = %128
  %133 = load i64, ptr %130, align 8
  %134 = and i64 %133, 65535
  %135 = icmp eq i64 %134, 1
  br i1 %135, label %136, label %140

136:                                              ; preds = %132
  %137 = getelementptr inbounds %struct.rtx_def, ptr %130, i64 0, i32 1
  %138 = load ptr, ptr %137, align 8, !tbaa !46
  %139 = getelementptr inbounds %struct.cselib_val_struct, ptr %138, i64 0, i32 1
  br label %142

140:                                              ; preds = %132, %128
  %141 = getelementptr inbounds %struct.tree_decl_minimal, ptr %130, i64 0, i32 2
  br label %142

142:                                              ; preds = %136, %140
  %143 = phi ptr [ %139, %136 ], [ %141, %140 ]
  %144 = load i32, ptr %143, align 4, !tbaa !46
  %145 = tail call ptr @htab_find_slot_with_hash(ptr noundef %129, ptr noundef %130, i32 noundef %144, i32 noundef 0) #21
  %146 = load ptr, ptr %145, align 8, !tbaa !35
  %147 = icmp eq ptr %146, %2
  br i1 %147, label %149, label %148

148:                                              ; preds = %142
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1534, ptr noundef nonnull @.str.2) #21
  br label %149

149:                                              ; preds = %142, %148
  store i8 0, ptr %125, align 2, !tbaa !238
  tail call void @variable_htab_free(ptr noundef nonnull %2)
  store ptr %29, ptr %145, align 8, !tbaa !35
  store i8 1, ptr %41, align 2, !tbaa !238
  br label %150

150:                                              ; preds = %149, %123
  ret ptr %124
}

declare i32 @rtx_equal_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @add_value_chains(ptr noundef %0, ptr noundef %1) unnamed_addr #9 !prof !34 {
  %3 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8, !tbaa !35
  %4 = load i32, ptr %1, align 8
  %5 = trunc i32 %4 to i16
  switch i16 %5, label %11 [
    i16 1, label %6
    i16 2, label %6
    i16 37, label %13
    i16 43, label %8
  ]

6:                                                ; preds = %2, %2
  %7 = call i32 @add_value_chain(ptr noundef nonnull %3, ptr noundef %0)
  br label %13

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  store ptr %10, ptr %3, align 8, !tbaa !35
  br label %11

11:                                               ; preds = %2, %8
  %12 = call i32 @for_each_rtx(ptr noundef nonnull %3, ptr noundef nonnull @add_value_chain, ptr noundef %0) #21
  br label %13

13:                                               ; preds = %2, %11, %6
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @variable_was_changed(ptr noundef %0, ptr noundef %1) unnamed_addr #9 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !204
  %4 = icmp eq ptr %3, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %2
  %6 = load i64, ptr %3, align 8
  %7 = and i64 %6, 65535
  %8 = icmp eq i64 %7, 1
  br i1 %8, label %9, label %13

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !46
  %12 = getelementptr inbounds %struct.cselib_val_struct, ptr %11, i64 0, i32 1
  br label %15

13:                                               ; preds = %5, %2
  %14 = getelementptr inbounds %struct.tree_decl_minimal, ptr %3, i64 0, i32 2
  br label %15

15:                                               ; preds = %9, %13
  %16 = phi ptr [ %12, %9 ], [ %14, %13 ]
  %17 = load i32, ptr %16, align 4, !tbaa !46
  %18 = load i1, ptr @emit_notes, align 1
  br i1 %18, label %19, label %92

19:                                               ; preds = %15
  br i1 %4, label %27, label %20

20:                                               ; preds = %19
  %21 = load i64, ptr %3, align 8
  %22 = and i64 %21, 65535
  %23 = icmp eq i64 %22, 1
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i32, ptr %3, align 8
  %26 = or i32 %25, 1073741824
  store i32 %26, ptr %3, align 8
  br label %30

27:                                               ; preds = %19, %20
  %28 = load i64, ptr %3, align 8
  %29 = or i64 %28, 1099511627776
  store i64 %29, ptr %3, align 8
  br label %30

30:                                               ; preds = %24, %27
  %31 = load ptr, ptr @changed_variables, align 8, !tbaa !35
  %32 = load ptr, ptr %0, align 8, !tbaa !204
  %33 = tail call ptr @htab_find_slot_with_hash(ptr noundef %31, ptr noundef %32, i32 noundef %17, i32 noundef 1) #21
  %34 = load ptr, ptr %33, align 8, !tbaa !35
  %35 = icmp eq ptr %34, null
  br i1 %35, label %46, label %36

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.variable_def, ptr %34, i64 0, i32 4
  %38 = load i8, ptr %37, align 2, !tbaa !238
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 6281, ptr noundef nonnull @.str.2) #21
  br label %41

41:                                               ; preds = %36, %40
  store i8 0, ptr %37, align 2, !tbaa !238
  %42 = getelementptr inbounds %struct.variable_def, ptr %34, i64 0, i32 3
  %43 = load i8, ptr %42, align 1, !tbaa !237
  %44 = load ptr, ptr %33, align 8, !tbaa !35
  tail call void @variable_htab_free(ptr noundef %44)
  %45 = icmp eq i8 %43, 0
  br label %46

46:                                               ; preds = %41, %30
  %47 = phi i1 [ %45, %41 ], [ true, %30 ]
  %48 = icmp eq ptr %1, null
  br i1 %48, label %84, label %49

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.variable_def, ptr %0, i64 0, i32 2
  %51 = load i8, ptr %50, align 4, !tbaa !207
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %53, label %84

53:                                               ; preds = %49
  %54 = load ptr, ptr %0, align 8, !tbaa !204
  %55 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !50
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %73, label %57

57:                                               ; preds = %53
  %58 = icmp eq ptr %54, null
  br i1 %58, label %63, label %59

59:                                               ; preds = %57
  %60 = load i64, ptr %54, align 8
  %61 = and i64 %60, 65535
  %62 = icmp eq i64 %61, 1
  br label %63

63:                                               ; preds = %59, %57
  %64 = phi i1 [ false, %57 ], [ %62, %59 ]
  %65 = or i1 %58, %64
  br i1 %65, label %73, label %66

66:                                               ; preds = %63
  %67 = load i64, ptr %54, align 8
  %68 = and i64 %67, 65535
  %69 = icmp eq i64 %68, 37
  br i1 %69, label %73, label %70

70:                                               ; preds = %66
  %71 = tail call ptr @target_for_debug_bind(ptr noundef nonnull %54) #21
  %72 = icmp eq ptr %71, null
  br label %73

73:                                               ; preds = %53, %63, %66, %70
  %74 = phi i1 [ %72, %70 ], [ true, %53 ], [ false, %63 ], [ false, %66 ]
  %75 = load ptr, ptr @valvar_pool, align 8
  %76 = load ptr, ptr @var_pool, align 8
  %77 = select i1 %74, ptr %76, ptr %75
  %78 = tail call ptr @pool_alloc(ptr noundef %77) #21
  %79 = load ptr, ptr %0, align 8, !tbaa !204
  store ptr %79, ptr %78, align 8, !tbaa !204
  %80 = getelementptr inbounds %struct.variable_def, ptr %78, i64 0, i32 1
  store i32 1, ptr %80, align 8, !tbaa !206
  %81 = getelementptr inbounds %struct.variable_def, ptr %78, i64 0, i32 2
  store i8 0, ptr %81, align 4, !tbaa !207
  %82 = getelementptr inbounds %struct.variable_def, ptr %78, i64 0, i32 3
  store i8 1, ptr %82, align 1, !tbaa !237
  %83 = getelementptr inbounds %struct.variable_def, ptr %78, i64 0, i32 4
  store i8 1, ptr %83, align 2, !tbaa !238
  store ptr %78, ptr %33, align 8, !tbaa !35
  br label %99

84:                                               ; preds = %49, %46
  %85 = getelementptr inbounds %struct.variable_def, ptr %0, i64 0, i32 1
  %86 = load i32, ptr %85, align 8, !tbaa !206
  %87 = add nsw i32 %86, 1
  store i32 %87, ptr %85, align 8, !tbaa !206
  %88 = getelementptr inbounds %struct.variable_def, ptr %0, i64 0, i32 4
  store i8 1, ptr %88, align 2, !tbaa !238
  br i1 %47, label %91, label %89

89:                                               ; preds = %84
  %90 = getelementptr inbounds %struct.variable_def, ptr %0, i64 0, i32 3
  store i8 1, ptr %90, align 1, !tbaa !237
  br label %91

91:                                               ; preds = %84, %89
  store ptr %0, ptr %33, align 8, !tbaa !35
  br label %133

92:                                               ; preds = %15
  %93 = icmp eq ptr %1, null
  br i1 %93, label %94, label %95

94:                                               ; preds = %92
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 6312, ptr noundef nonnull @.str.2) #21
  br label %95

95:                                               ; preds = %92, %94
  %96 = getelementptr inbounds %struct.variable_def, ptr %0, i64 0, i32 2
  %97 = load i8, ptr %96, align 4, !tbaa !207
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %99, label %133

99:                                               ; preds = %95, %73
  %100 = getelementptr inbounds %struct.dataflow_set_def, ptr %1, i64 0, i32 2
  %101 = load ptr, ptr %100, align 8, !tbaa !77
  %102 = load ptr, ptr %0, align 8, !tbaa !204
  %103 = icmp eq ptr %102, null
  br i1 %103, label %112, label %104

104:                                              ; preds = %99
  %105 = load i64, ptr %102, align 8
  %106 = and i64 %105, 65535
  %107 = icmp eq i64 %106, 1
  br i1 %107, label %108, label %112

108:                                              ; preds = %104
  %109 = getelementptr inbounds %struct.rtx_def, ptr %102, i64 0, i32 1
  %110 = load ptr, ptr %109, align 8, !tbaa !46
  %111 = getelementptr inbounds %struct.cselib_val_struct, ptr %110, i64 0, i32 1
  br label %114

112:                                              ; preds = %104, %99
  %113 = getelementptr inbounds %struct.tree_decl_minimal, ptr %102, i64 0, i32 2
  br label %114

114:                                              ; preds = %108, %112
  %115 = phi ptr [ %111, %108 ], [ %113, %112 ]
  %116 = load i32, ptr %115, align 4, !tbaa !46
  %117 = getelementptr inbounds %struct.shared_hash_def, ptr %101, i64 0, i32 1
  %118 = load ptr, ptr %117, align 8, !tbaa !83
  %119 = tail call ptr @htab_find_slot_with_hash(ptr noundef %118, ptr noundef %102, i32 noundef %116, i32 noundef 0) #21
  %120 = icmp eq ptr %119, null
  br i1 %120, label %133, label %121

121:                                              ; preds = %114
  %122 = load ptr, ptr %100, align 8, !tbaa !77
  %123 = load i32, ptr %122, align 8, !tbaa !75
  %124 = icmp slt i32 %123, 2
  br i1 %124, label %128, label %125

125:                                              ; preds = %121
  %126 = load ptr, ptr %0, align 8, !tbaa !204
  %127 = tail call fastcc ptr @shared_hash_find_slot_unshare(ptr noundef nonnull %100, ptr noundef %126, i32 noundef 0)
  br label %128

128:                                              ; preds = %125, %121
  %129 = phi ptr [ %127, %125 ], [ %119, %121 ]
  %130 = load ptr, ptr %100, align 8, !tbaa !77
  %131 = getelementptr inbounds %struct.shared_hash_def, ptr %130, i64 0, i32 1
  %132 = load ptr, ptr %131, align 8, !tbaa !83
  tail call void @htab_clear_slot(ptr noundef %132, ptr noundef %129) #21
  br label %133

133:                                              ; preds = %91, %95, %128, %114
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @add_value_chain(ptr nocapture noundef readonly %0, ptr noundef %1) #9 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  %4 = load i32, ptr %3, align 8
  %5 = trunc i32 %4 to i16
  switch i16 %5, label %55 [
    i16 1, label %9
    i16 2, label %6
  ]

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  br label %9

9:                                                ; preds = %2, %6
  %10 = phi ptr [ %8, %6 ], [ %3, %2 ]
  %11 = icmp eq ptr %10, %1
  br i1 %11, label %55, label %12

12:                                               ; preds = %9
  %13 = load ptr, ptr @value_chains, align 8, !tbaa !35
  %14 = icmp eq ptr %10, null
  br i1 %14, label %23, label %15

15:                                               ; preds = %12
  %16 = load i64, ptr %10, align 8
  %17 = and i64 %16, 65535
  %18 = icmp eq i64 %17, 1
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !46
  %22 = getelementptr inbounds %struct.cselib_val_struct, ptr %21, i64 0, i32 1
  br label %25

23:                                               ; preds = %15, %12
  %24 = getelementptr inbounds %struct.tree_decl_minimal, ptr %10, i64 0, i32 2
  br label %25

25:                                               ; preds = %19, %23
  %26 = phi ptr [ %22, %19 ], [ %24, %23 ]
  %27 = load i32, ptr %26, align 4, !tbaa !46
  %28 = tail call ptr @htab_find_slot_with_hash(ptr noundef %13, ptr noundef %10, i32 noundef %27, i32 noundef 1) #21
  %29 = load ptr, ptr %28, align 8, !tbaa !35
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %25
  %32 = load ptr, ptr @value_chain_pool, align 8, !tbaa !35
  %33 = tail call ptr @pool_alloc(ptr noundef %32) #21
  %34 = getelementptr inbounds %struct.value_chain_def, ptr %33, i64 0, i32 1
  store ptr %10, ptr %34, align 8, !tbaa !214
  store ptr null, ptr %33, align 8, !tbaa !258
  %35 = getelementptr inbounds %struct.value_chain_def, ptr %33, i64 0, i32 2
  store i32 0, ptr %35, align 8, !tbaa !259
  store ptr %33, ptr %28, align 8, !tbaa !35
  br label %48

36:                                               ; preds = %25, %40
  %37 = phi ptr [ %38, %40 ], [ %29, %25 ]
  %38 = load ptr, ptr %37, align 8, !tbaa !258
  %39 = icmp eq ptr %38, null
  br i1 %39, label %48, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.value_chain_def, ptr %38, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !214
  %43 = icmp eq ptr %42, %1
  br i1 %43, label %44, label %36, !llvm.loop !260

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.value_chain_def, ptr %38, i64 0, i32 2
  %46 = load i32, ptr %45, align 8, !tbaa !259
  %47 = add nsw i32 %46, 1
  store i32 %47, ptr %45, align 8, !tbaa !259
  br label %55

48:                                               ; preds = %36, %31
  %49 = load ptr, ptr %28, align 8, !tbaa !35
  %50 = load ptr, ptr @value_chain_pool, align 8, !tbaa !35
  %51 = tail call ptr @pool_alloc(ptr noundef %50) #21
  %52 = getelementptr inbounds %struct.value_chain_def, ptr %51, i64 0, i32 1
  store ptr %1, ptr %52, align 8, !tbaa !214
  %53 = load ptr, ptr %49, align 8, !tbaa !258
  store ptr %53, ptr %51, align 8, !tbaa !258
  %54 = getelementptr inbounds %struct.value_chain_def, ptr %51, i64 0, i32 2
  store i32 1, ptr %54, align 8, !tbaa !259
  store ptr %51, ptr %49, align 8, !tbaa !258
  br label %55

55:                                               ; preds = %9, %2, %48, %44
  ret i32 0
}

declare i32 @for_each_rtx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @htab_clear_slot(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @note_uses(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal void @add_uses_1(ptr noundef %0, ptr noundef %1) #9 !prof !34 {
  %3 = tail call i32 @for_each_rtx(ptr noundef %0, ptr noundef nonnull @add_uses, ptr noundef %1) #21
  ret void
}

declare void @note_stores(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal void @add_stores(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #9 !prof !34 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #21
  store i32 0, ptr %4, align 4, !tbaa !50
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #21
  %6 = getelementptr inbounds %struct.count_use_info, ptr %2, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !218
  %8 = call fastcc i32 @use_type(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %4), !range !261
  %9 = icmp eq i32 %8, 7
  br i1 %9, label %578, label %10

10:                                               ; preds = %3
  %11 = load i32, ptr %4, align 4, !tbaa !50
  store i32 %11, ptr %5, align 4, !tbaa !50
  %12 = load i32, ptr %0, align 8
  %13 = trunc i32 %12 to i16
  switch i16 %13, label %578 [
    i16 37, label %14
    i16 43, label %61
  ]

14:                                               ; preds = %10
  %15 = load ptr, ptr @cfa_base_rtx, align 8, !tbaa !35
  %16 = icmp eq ptr %15, %0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 5227, ptr noundef nonnull @.str.2) #21
  br label %18

18:                                               ; preds = %14, %17
  %19 = load i32, ptr %1, align 8
  %20 = and i32 %19, 65535
  %21 = icmp eq i32 %20, 25
  %22 = icmp ne i32 %8, 4
  %23 = and i1 %22, %21
  br i1 %23, label %210, label %24

24:                                               ; preds = %18
  %25 = call fastcc i32 @use_type(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull %5), !range !261
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %210

27:                                               ; preds = %24
  %28 = load i32, ptr %1, align 8
  %29 = trunc i32 %28 to i16
  switch i16 %29, label %39 [
    i16 25, label %210
    i16 23, label %30
  ]

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !46
  %33 = icmp eq ptr %32, %0
  br i1 %33, label %34, label %39

34:                                               ; preds = %30
  %35 = load i32, ptr %5, align 4, !tbaa !50
  %36 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %37 = load ptr, ptr %36, align 8, !tbaa !46
  %38 = call fastcc ptr @var_lowpart(i32 noundef %35, ptr noundef %37)
  br label %39

39:                                               ; preds = %27, %34, %30
  %40 = phi ptr [ %38, %34 ], [ null, %30 ], [ null, %27 ]
  %41 = load i32, ptr %5, align 4, !tbaa !50
  %42 = call fastcc ptr @var_lowpart(i32 noundef %41, ptr noundef nonnull %0)
  %43 = icmp eq ptr %40, null
  br i1 %43, label %210, label %44

44:                                               ; preds = %39
  %45 = call ptr @gen_rtx_fmt_ee_stat(i32 noundef 23, i32 noundef 0, ptr noundef %42, ptr noundef nonnull %40) #21
  %46 = getelementptr inbounds %struct.rtx_def, ptr %42, i64 0, i32 1, i32 0, i32 0, i64 2
  %47 = load ptr, ptr %46, align 8, !tbaa !46
  %48 = icmp eq ptr %47, null
  br i1 %48, label %51, label %49

49:                                               ; preds = %44
  %50 = load ptr, ptr %47, align 8, !tbaa !91
  br label %51

51:                                               ; preds = %44, %49
  %52 = phi ptr [ %50, %49 ], [ null, %44 ]
  br i1 %48, label %56, label %53

53:                                               ; preds = %51
  %54 = getelementptr inbounds %struct.reg_attrs, ptr %47, i64 0, i32 1
  %55 = load i64, ptr %54, align 8, !tbaa !93
  br label %56

56:                                               ; preds = %51, %53
  %57 = phi i64 [ %55, %53 ], [ 0, %51 ]
  %58 = call fastcc zeroext i8 @same_variable_part_p(ptr noundef nonnull %40, ptr noundef %52, i64 noundef %57), !range !59
  %59 = icmp eq i8 %58, 0
  %60 = select i1 %59, i32 5, i32 6
  br label %210

61:                                               ; preds = %10
  %62 = call fastcc i32 @use_type(ptr noundef nonnull %0, ptr noundef null, ptr noundef nonnull %5), !range !261
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.count_use_info, ptr %2, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !219
  %67 = icmp eq ptr %66, null
  br i1 %67, label %578, label %68

68:                                               ; preds = %64, %61
  %69 = load i32, ptr %0, align 8
  %70 = and i32 %69, 65535
  %71 = icmp eq i32 %70, 43
  %72 = icmp eq i32 %8, 4
  %73 = and i1 %72, %71
  br i1 %73, label %74, label %162

74:                                               ; preds = %68
  %75 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !46
  %77 = load i32, ptr %76, align 8
  %78 = trunc i32 %77 to i16
  switch i16 %78, label %90 [
    i16 37, label %162
    i16 43, label %162
    i16 49, label %79
  ]

79:                                               ; preds = %74
  %80 = getelementptr inbounds %struct.rtx_def, ptr %76, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !46
  %82 = load ptr, ptr @cfa_base_rtx, align 8, !tbaa !35
  %83 = icmp eq ptr %81, %82
  br i1 %83, label %84, label %90

84:                                               ; preds = %79
  %85 = getelementptr inbounds %struct.rtx_def, ptr %76, i64 0, i32 1, i32 0, i32 0, i64 1
  %86 = load ptr, ptr %85, align 8, !tbaa !46
  %87 = load i32, ptr %86, align 8
  %88 = and i32 %87, 65535
  %89 = icmp eq i32 %88, 30
  br i1 %89, label %162, label %90

90:                                               ; preds = %84, %74, %79
  %91 = lshr i32 %77, 16
  %92 = and i32 %91, 255
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %105

94:                                               ; preds = %90
  %95 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 1), align 8, !tbaa !262
  %96 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %97 = load ptr, ptr %96, align 8, !tbaa !46
  %98 = icmp eq ptr %97, null
  br i1 %98, label %102, label %99

99:                                               ; preds = %94
  %100 = getelementptr inbounds %struct.mem_attrs, ptr %97, i64 0, i32 5
  %101 = load i8, ptr %100, align 8, !tbaa !274
  br label %102

102:                                              ; preds = %99, %94
  %103 = phi i8 [ %101, %99 ], [ 0, %94 ]
  %104 = call i32 %95(i8 noundef zeroext %103) #21
  br label %105

105:                                              ; preds = %90, %102
  %106 = phi i32 [ %104, %102 ], [ %92, %90 ]
  %107 = load ptr, ptr %75, align 8, !tbaa !46
  %108 = call ptr @cselib_lookup(ptr noundef %107, i32 noundef %106, i32 noundef 0) #21
  %109 = icmp eq ptr %108, null
  br i1 %109, label %162, label %110

110:                                              ; preds = %105
  %111 = call zeroext i8 @cselib_preserved_value_p(ptr noundef nonnull %108) #21
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %113, label %162

113:                                              ; preds = %110
  call fastcc void @preserve_value(ptr noundef nonnull %108)
  %114 = load ptr, ptr %75, align 8, !tbaa !46
  %115 = call ptr @cselib_subst_to_values(ptr noundef %114) #21
  %116 = getelementptr inbounds %struct.cselib_val_struct, ptr %108, i64 0, i32 2
  %117 = load ptr, ptr %116, align 8, !tbaa !155
  %118 = call ptr @gen_rtx_fmt_ee_stat(i32 noundef 41, i32 noundef %106, ptr noundef %117, ptr noundef %115) #21
  %119 = load ptr, ptr %2, align 8, !tbaa !216
  %120 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %121 = icmp eq ptr %120, null
  br i1 %121, label %142, label %122

122:                                              ; preds = %113
  %123 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %124 = and i32 %123, 8
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %142, label %126

126:                                              ; preds = %122
  %127 = load ptr, ptr %6, align 8, !tbaa !218
  %128 = getelementptr inbounds %struct.basic_block_def, ptr %127, i64 0, i32 9
  %129 = load i32, ptr %128, align 8, !tbaa !64
  %130 = getelementptr inbounds %struct.basic_block_def, ptr %127, i64 0, i32 2
  %131 = load ptr, ptr %130, align 8, !tbaa !65
  %132 = load ptr, ptr %131, align 8, !tbaa !84
  %133 = icmp eq ptr %132, null
  br i1 %133, label %136, label %134

134:                                              ; preds = %126
  %135 = load i32, ptr %132, align 8, !tbaa !86
  br label %136

136:                                              ; preds = %126, %134
  %137 = phi i32 [ %135, %134 ], [ 0, %126 ]
  %138 = getelementptr inbounds %struct.rtx_def, ptr %119, i64 0, i32 1
  %139 = load i32, ptr %138, align 8, !tbaa !46
  %140 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %120, ptr noundef nonnull @.str.11, i32 noundef %129, i32 noundef %137, i32 noundef %139, ptr noundef nonnull @.str.14)
  call void @print_inline_rtx(ptr noundef nonnull %120, ptr noundef %118, i32 noundef 2) #21
  %141 = call i32 @fputc(i32 noundef 10, ptr noundef nonnull %120)
  br label %142

142:                                              ; preds = %136, %122, %113
  %143 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 2
  %144 = load ptr, ptr %143, align 8, !tbaa !65
  %145 = load ptr, ptr %144, align 8, !tbaa !35
  %146 = icmp eq ptr %145, null
  br i1 %146, label %152, label %147

147:                                              ; preds = %142
  %148 = getelementptr inbounds %struct.VEC_micro_operation_base, ptr %145, i64 0, i32 1
  %149 = load i32, ptr %148, align 4, !tbaa !137
  %150 = load i32, ptr %145, align 8, !tbaa !86
  %151 = icmp eq i32 %149, %150
  br i1 %151, label %152, label %154

152:                                              ; preds = %142, %147
  %153 = call ptr @vec_heap_o_reserve(ptr noundef %145, i32 noundef 1, i64 noundef 8, i64 noundef 24) #21
  store ptr %153, ptr %144, align 8, !tbaa !35
  br label %154

154:                                              ; preds = %147, %152
  %155 = load ptr, ptr %144, align 8, !tbaa !35
  %156 = load i32, ptr %155, align 8, !tbaa !86
  %157 = add i32 %156, 1
  store i32 %157, ptr %155, align 8, !tbaa !86
  %158 = zext i32 %156 to i64
  %159 = getelementptr inbounds %struct.VEC_micro_operation_base, ptr %155, i64 0, i32 2, i64 %158
  store i32 2, ptr %159, align 8, !tbaa.struct !138
  %160 = getelementptr inbounds i8, ptr %159, i64 8
  store ptr %119, ptr %160, align 8, !tbaa.struct !139
  %161 = getelementptr inbounds i8, ptr %159, i64 16
  store ptr %118, ptr %161, align 8, !tbaa.struct !140
  br label %162

162:                                              ; preds = %105, %74, %110, %154, %74, %84, %68
  %163 = load i32, ptr %1, align 8
  %164 = and i32 %163, 65535
  %165 = icmp ne i32 %164, 25
  %166 = and i1 %63, %165
  br i1 %166, label %171, label %167

167:                                              ; preds = %162
  br i1 %63, label %168, label %210

168:                                              ; preds = %167
  %169 = load i32, ptr %5, align 4, !tbaa !50
  %170 = call fastcc ptr @var_lowpart(i32 noundef %169, ptr noundef nonnull %0)
  br label %210

171:                                              ; preds = %162
  %172 = icmp eq i32 %164, 23
  br i1 %172, label %173, label %182

173:                                              ; preds = %171
  %174 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %175 = load ptr, ptr %174, align 8, !tbaa !46
  %176 = icmp eq ptr %175, %0
  br i1 %176, label %177, label %182

177:                                              ; preds = %173
  %178 = load i32, ptr %5, align 4, !tbaa !50
  %179 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %180 = load ptr, ptr %179, align 8, !tbaa !46
  %181 = call fastcc ptr @var_lowpart(i32 noundef %178, ptr noundef %180)
  br label %182

182:                                              ; preds = %177, %173, %171
  %183 = phi ptr [ %181, %177 ], [ null, %173 ], [ null, %171 ]
  %184 = load i32, ptr %5, align 4, !tbaa !50
  %185 = call fastcc ptr @var_lowpart(i32 noundef %184, ptr noundef nonnull %0)
  %186 = icmp eq ptr %183, null
  br i1 %186, label %210, label %187

187:                                              ; preds = %182
  %188 = call ptr @gen_rtx_fmt_ee_stat(i32 noundef 23, i32 noundef 0, ptr noundef %185, ptr noundef nonnull %183) #21
  %189 = getelementptr inbounds %struct.rtx_def, ptr %188, i64 0, i32 1, i32 0, i32 0, i64 1
  %190 = load ptr, ptr %189, align 8, !tbaa !46
  %191 = getelementptr inbounds %struct.rtx_def, ptr %185, i64 0, i32 1, i32 0, i32 0, i64 1
  %192 = load ptr, ptr %191, align 8, !tbaa !46
  %193 = icmp eq ptr %192, null
  br i1 %193, label %196, label %194

194:                                              ; preds = %187
  %195 = load ptr, ptr %192, align 8, !tbaa !94
  br label %196

196:                                              ; preds = %187, %194
  %197 = phi ptr [ %195, %194 ], [ null, %187 ]
  br i1 %193, label %205, label %198

198:                                              ; preds = %196
  %199 = getelementptr inbounds %struct.mem_attrs, ptr %192, i64 0, i32 1
  %200 = load ptr, ptr %199, align 8, !tbaa !96
  %201 = icmp eq ptr %200, null
  br i1 %201, label %205, label %202

202:                                              ; preds = %198
  %203 = getelementptr inbounds %struct.rtx_def, ptr %200, i64 0, i32 1
  %204 = load i64, ptr %203, align 8, !tbaa !46
  br label %205

205:                                              ; preds = %198, %196, %202
  %206 = phi i64 [ %204, %202 ], [ 0, %196 ], [ 0, %198 ]
  %207 = call fastcc zeroext i8 @same_variable_part_p(ptr noundef %190, ptr noundef %197, i64 noundef %206), !range !59
  %208 = icmp eq i8 %207, 0
  %209 = select i1 %208, i32 5, i32 6
  br label %210

210:                                              ; preds = %205, %167, %168, %182, %56, %27, %18, %24, %39
  %211 = phi i32 [ %60, %56 ], [ 7, %27 ], [ 7, %18 ], [ 7, %24 ], [ 5, %39 ], [ %209, %205 ], [ 7, %167 ], [ 7, %168 ], [ 5, %182 ]
  %212 = phi ptr [ %45, %56 ], [ %0, %27 ], [ %0, %18 ], [ %0, %24 ], [ %42, %39 ], [ %188, %205 ], [ %0, %167 ], [ %170, %168 ], [ %185, %182 ]
  %213 = phi i1 [ true, %56 ], [ true, %27 ], [ false, %18 ], [ false, %24 ], [ true, %39 ], [ %63, %205 ], [ %63, %167 ], [ %63, %168 ], [ %63, %182 ]
  %214 = load ptr, ptr %2, align 8, !tbaa !216
  %215 = icmp eq i32 %8, 4
  br i1 %215, label %216, label %529

216:                                              ; preds = %210
  %217 = load i32, ptr %4, align 4, !tbaa !50
  %218 = getelementptr inbounds %struct.count_use_info, ptr %2, i64 0, i32 2
  %219 = load ptr, ptr %218, align 8, !tbaa !219
  %220 = icmp eq ptr %219, null
  br i1 %220, label %244, label %221

221:                                              ; preds = %216
  %222 = getelementptr inbounds %struct.count_use_info, ptr %2, i64 0, i32 4
  %223 = load i8, ptr %222, align 4, !tbaa !221
  %224 = icmp eq i8 %223, 0
  br i1 %224, label %242, label %225

225:                                              ; preds = %221
  %226 = getelementptr inbounds %struct.count_use_info, ptr %2, i64 0, i32 3
  %227 = load i32, ptr %226, align 8, !tbaa !220
  %228 = icmp sgt i32 %227, 0
  br i1 %228, label %229, label %244

229:                                              ; preds = %225
  %230 = zext nneg i32 %227 to i64
  br label %234

231:                                              ; preds = %234
  %232 = add nuw nsw i64 %235, 1
  %233 = icmp eq i64 %232, %230
  br i1 %233, label %244, label %234, !llvm.loop !275

234:                                              ; preds = %229, %231
  %235 = phi i64 [ 0, %229 ], [ %232, %231 ]
  %236 = getelementptr inbounds %struct.cselib_set, ptr %219, i64 %235, i32 1
  %237 = load ptr, ptr %236, align 8, !tbaa !276
  %238 = icmp eq ptr %237, %0
  br i1 %238, label %239, label %231

239:                                              ; preds = %234
  %240 = getelementptr inbounds %struct.cselib_set, ptr %219, i64 %235, i32 2
  %241 = load ptr, ptr %240, align 8, !tbaa !278
  br label %244

242:                                              ; preds = %221
  %243 = call ptr @cselib_lookup(ptr noundef nonnull %0, i32 noundef %217, i32 noundef 0) #21
  br label %244

244:                                              ; preds = %231, %225, %216, %239, %242
  %245 = phi ptr [ %241, %239 ], [ %243, %242 ], [ null, %216 ], [ null, %225 ], [ null, %231 ]
  %246 = icmp eq ptr %245, null
  br i1 %246, label %529, label %247

247:                                              ; preds = %244
  %248 = call zeroext i8 @cselib_preserved_value_p(ptr noundef nonnull %245) #21
  %249 = icmp eq i8 %248, 0
  %250 = zext i1 %249 to i8
  %251 = call fastcc ptr @replace_expr_with_values(ptr noundef nonnull %0)
  %252 = icmp eq ptr %251, null
  %253 = select i1 %252, ptr %0, ptr %251
  %254 = load ptr, ptr %2, align 8, !tbaa !216
  %255 = getelementptr inbounds %struct.rtx_def, ptr %254, i64 1
  %256 = load ptr, ptr %255, align 8, !tbaa !46
  %257 = load i32, ptr %256, align 8
  %258 = and i32 %257, 65535
  %259 = icmp eq i32 %258, 14
  br i1 %259, label %260, label %324

260:                                              ; preds = %247
  %261 = load i32, ptr %253, align 8
  %262 = lshr i32 %261, 16
  %263 = and i32 %262, 255
  %264 = call ptr @cselib_lookup(ptr noundef nonnull %253, i32 noundef %263, i32 noundef 0) #21
  %265 = icmp eq ptr %264, %245
  br i1 %265, label %266, label %267

266:                                              ; preds = %260
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 5339, ptr noundef nonnull @.str.2) #21
  br label %267

267:                                              ; preds = %260, %266
  %268 = load i32, ptr %253, align 8
  %269 = trunc i32 %268 to i16
  switch i16 %269, label %270 [
    i16 37, label %271
    i16 43, label %271
  ]

270:                                              ; preds = %267
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 5340, ptr noundef nonnull @.str.2) #21
  br label %271

271:                                              ; preds = %267, %267, %270
  %272 = call zeroext i8 @cselib_preserved_value_p(ptr noundef %264) #21
  %273 = icmp eq i8 %272, 0
  br i1 %273, label %274, label %369

274:                                              ; preds = %271
  call fastcc void @preserve_value(ptr noundef %264)
  %275 = load i32, ptr %4, align 4, !tbaa !50
  %276 = getelementptr inbounds %struct.cselib_val_struct, ptr %264, i64 0, i32 2
  %277 = load ptr, ptr %276, align 8, !tbaa !155
  %278 = call ptr @gen_rtx_fmt_ee_stat(i32 noundef 41, i32 noundef %275, ptr noundef %277, ptr noundef nonnull %253) #21
  %279 = load i32, ptr %278, align 8
  %280 = or i32 %279, 134217728
  store i32 %280, ptr %278, align 8
  %281 = load ptr, ptr %2, align 8, !tbaa !216
  %282 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %283 = icmp eq ptr %282, null
  br i1 %283, label %304, label %284

284:                                              ; preds = %274
  %285 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %286 = and i32 %285, 8
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %304, label %288

288:                                              ; preds = %284
  %289 = load ptr, ptr %6, align 8, !tbaa !218
  %290 = getelementptr inbounds %struct.basic_block_def, ptr %289, i64 0, i32 9
  %291 = load i32, ptr %290, align 8, !tbaa !64
  %292 = getelementptr inbounds %struct.basic_block_def, ptr %289, i64 0, i32 2
  %293 = load ptr, ptr %292, align 8, !tbaa !65
  %294 = load ptr, ptr %293, align 8, !tbaa !84
  %295 = icmp eq ptr %294, null
  br i1 %295, label %298, label %296

296:                                              ; preds = %288
  %297 = load i32, ptr %294, align 8, !tbaa !86
  br label %298

298:                                              ; preds = %288, %296
  %299 = phi i32 [ %297, %296 ], [ 0, %288 ]
  %300 = getelementptr inbounds %struct.rtx_def, ptr %281, i64 0, i32 1
  %301 = load i32, ptr %300, align 8, !tbaa !46
  %302 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %282, ptr noundef nonnull @.str.11, i32 noundef %291, i32 noundef %299, i32 noundef %301, ptr noundef nonnull @.str.14)
  call void @print_inline_rtx(ptr noundef nonnull %282, ptr noundef nonnull %278, i32 noundef 2) #21
  %303 = call i32 @fputc(i32 noundef 10, ptr noundef nonnull %282)
  br label %304

304:                                              ; preds = %298, %284, %274
  %305 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 2
  %306 = load ptr, ptr %305, align 8, !tbaa !65
  %307 = load ptr, ptr %306, align 8, !tbaa !35
  %308 = icmp eq ptr %307, null
  br i1 %308, label %314, label %309

309:                                              ; preds = %304
  %310 = getelementptr inbounds %struct.VEC_micro_operation_base, ptr %307, i64 0, i32 1
  %311 = load i32, ptr %310, align 4, !tbaa !137
  %312 = load i32, ptr %307, align 8, !tbaa !86
  %313 = icmp eq i32 %311, %312
  br i1 %313, label %314, label %316

314:                                              ; preds = %304, %309
  %315 = call ptr @vec_heap_o_reserve(ptr noundef %307, i32 noundef 1, i64 noundef 8, i64 noundef 24) #21
  store ptr %315, ptr %306, align 8, !tbaa !35
  br label %316

316:                                              ; preds = %309, %314
  %317 = load ptr, ptr %306, align 8, !tbaa !35
  %318 = load i32, ptr %317, align 8, !tbaa !86
  %319 = add i32 %318, 1
  store i32 %319, ptr %317, align 8, !tbaa !86
  %320 = zext i32 %318 to i64
  %321 = getelementptr inbounds %struct.VEC_micro_operation_base, ptr %317, i64 0, i32 2, i64 %320
  store i32 2, ptr %321, align 8, !tbaa.struct !138
  %322 = getelementptr inbounds i8, ptr %321, i64 8
  store ptr %281, ptr %322, align 8, !tbaa.struct !139
  %323 = getelementptr inbounds i8, ptr %321, i64 16
  store ptr %278, ptr %323, align 8, !tbaa.struct !140
  br label %369

324:                                              ; preds = %247
  %325 = load i32, ptr %212, align 8
  %326 = and i32 %325, 65535
  %327 = icmp eq i32 %326, 23
  br i1 %249, label %328, label %363

328:                                              ; preds = %324
  br i1 %327, label %329, label %369

329:                                              ; preds = %328
  %330 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %331 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %332 = load ptr, ptr %331, align 8, !tbaa !46
  %333 = call fastcc ptr @replace_expr_with_values(ptr noundef %332)
  %334 = icmp eq ptr %333, null
  br i1 %334, label %335, label %344

335:                                              ; preds = %329
  %336 = load i32, ptr %4, align 4, !tbaa !50
  %337 = load i32, ptr %5, align 4, !tbaa !50
  %338 = icmp eq i32 %336, %337
  br i1 %338, label %344, label %339

339:                                              ; preds = %335
  %340 = load ptr, ptr %331, align 8, !tbaa !46
  %341 = load ptr, ptr %330, align 8, !tbaa !46
  %342 = icmp eq ptr %253, %341
  br i1 %342, label %344, label %343

343:                                              ; preds = %339
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 5369, ptr noundef nonnull @.str.2) #21
  br label %344

344:                                              ; preds = %343, %339, %335, %329
  %345 = phi ptr [ %333, %329 ], [ %340, %339 ], [ %340, %343 ], [ null, %335 ]
  %346 = icmp eq ptr %345, null
  br i1 %346, label %352, label %347

347:                                              ; preds = %344
  %348 = load i32, ptr %212, align 8
  %349 = lshr i32 %348, 16
  %350 = and i32 %349, 255
  %351 = call ptr @gen_rtx_fmt_ee_stat(i32 noundef 23, i32 noundef %350, ptr noundef nonnull %253, ptr noundef nonnull %345) #21
  br label %369

352:                                              ; preds = %344
  %353 = getelementptr inbounds %struct.rtx_def, ptr %212, i64 0, i32 1
  %354 = load ptr, ptr %353, align 8, !tbaa !46
  %355 = icmp eq ptr %253, %354
  %356 = select i1 %355, ptr %212, ptr %253
  %357 = getelementptr inbounds %struct.rtx_def, ptr %212, i64 0, i32 1, i32 0, i32 0, i64 1
  %358 = load ptr, ptr %357, align 8, !tbaa !46
  %359 = load i32, ptr %358, align 8
  %360 = and i32 %359, 65535
  %361 = icmp eq i32 %360, 37
  %362 = select i1 %361, i8 %250, i8 0
  br label %369

363:                                              ; preds = %324
  br i1 %327, label %364, label %369

364:                                              ; preds = %363
  %365 = getelementptr inbounds %struct.rtx_def, ptr %212, i64 0, i32 1
  %366 = load ptr, ptr %365, align 8, !tbaa !46
  %367 = icmp eq ptr %253, %366
  %368 = select i1 %367, ptr %212, ptr %253
  br label %369

369:                                              ; preds = %328, %352, %364, %271, %316, %347, %363
  %370 = phi i8 [ %250, %347 ], [ 0, %363 ], [ 0, %316 ], [ 0, %271 ], [ 0, %364 ], [ %362, %352 ], [ 0, %328 ]
  %371 = phi ptr [ %351, %347 ], [ %253, %363 ], [ %253, %316 ], [ %253, %271 ], [ %368, %364 ], [ %356, %352 ], [ %253, %328 ]
  %372 = load i32, ptr %4, align 4, !tbaa !50
  %373 = getelementptr inbounds %struct.cselib_val_struct, ptr %245, i64 0, i32 2
  %374 = load ptr, ptr %373, align 8, !tbaa !155
  %375 = call ptr @gen_rtx_fmt_ee_stat(i32 noundef 41, i32 noundef %372, ptr noundef %374, ptr noundef %371) #21
  %376 = icmp eq ptr %212, %371
  br i1 %376, label %382, label %377

377:                                              ; preds = %369
  %378 = load i32, ptr %212, align 8
  %379 = lshr i32 %378, 16
  %380 = and i32 %379, 255
  %381 = call ptr @gen_rtx_fmt_ee_stat(i32 noundef 41, i32 noundef %380, ptr noundef %375, ptr noundef nonnull %212) #21
  br label %382

382:                                              ; preds = %377, %369
  %383 = phi ptr [ %381, %377 ], [ %375, %369 ]
  %384 = load ptr, ptr %2, align 8, !tbaa !216
  %385 = getelementptr inbounds %struct.rtx_def, ptr %384, i64 1
  %386 = load ptr, ptr %385, align 8, !tbaa !46
  %387 = load i32, ptr %386, align 8
  %388 = and i32 %387, 65535
  %389 = icmp eq i32 %388, 14
  br i1 %389, label %511, label %390

390:                                              ; preds = %382
  %391 = load ptr, ptr %373, align 8, !tbaa !155
  %392 = load i32, ptr %1, align 8
  %393 = and i32 %392, 65535
  %394 = icmp eq i32 %393, 23
  br i1 %394, label %395, label %501

395:                                              ; preds = %390
  %396 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %397 = load ptr, ptr %396, align 8, !tbaa !46
  %398 = load i32, ptr %397, align 8
  %399 = and i32 %398, 65535
  %400 = icmp eq i32 %399, 37
  br i1 %400, label %401, label %501

401:                                              ; preds = %395
  %402 = load i32, ptr %391, align 8
  %403 = xor i32 %402, %398
  %404 = and i32 %403, 16711680
  %405 = icmp eq i32 %404, 0
  br i1 %405, label %406, label %501

406:                                              ; preds = %401
  %407 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %408 = load ptr, ptr %407, align 8, !tbaa !46
  %409 = load i32, ptr %408, align 8
  %410 = trunc i32 %409 to i16
  switch i16 %410, label %501 [
    i16 49, label %411
    i16 50, label %411
    i16 63, label %411
    i16 64, label %411
    i16 51, label %411
    i16 98, label %411
    i16 99, label %411
  ]

411:                                              ; preds = %406, %406, %406, %406, %406, %406, %406
  %412 = getelementptr inbounds %struct.rtx_def, ptr %408, i64 0, i32 1
  %413 = load ptr, ptr %412, align 8, !tbaa !46
  %414 = load i32, ptr %413, align 8
  %415 = and i32 %414, 65535
  %416 = icmp eq i32 %415, 37
  br i1 %416, label %417, label %501

417:                                              ; preds = %411
  %418 = lshr i32 %409, 16
  %419 = and i32 %418, 255
  %420 = zext nneg i32 %419 to i64
  %421 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %420
  %422 = load i8, ptr %421, align 1, !tbaa !46
  %423 = and i8 %422, -2
  %424 = icmp eq i8 %423, 2
  br i1 %424, label %425, label %501

425:                                              ; preds = %417
  %426 = lshr i32 %414, 16
  %427 = and i32 %426, 255
  %428 = call ptr @cselib_lookup(ptr noundef nonnull %413, i32 noundef %427, i32 noundef 0) #21
  %429 = icmp eq ptr %428, null
  br i1 %429, label %501, label %430

430:                                              ; preds = %425
  %431 = call zeroext i8 @cselib_preserved_value_p(ptr noundef nonnull %428) #21
  %432 = icmp eq i8 %431, 0
  br i1 %432, label %501, label %433

433:                                              ; preds = %430
  %434 = load i32, ptr %408, align 8
  %435 = trunc i32 %434 to i16
  switch i16 %435, label %492 [
    i16 64, label %436
    i16 51, label %436
    i16 98, label %449
    i16 99, label %449
    i16 63, label %458
    i16 49, label %456
    i16 50, label %457
  ]

436:                                              ; preds = %433, %433
  %437 = getelementptr inbounds %struct.cselib_val_struct, ptr %428, i64 0, i32 2
  %438 = load ptr, ptr %437, align 8, !tbaa !155
  %439 = load i32, ptr %438, align 8
  %440 = lshr i32 %439, 16
  %441 = and i32 %440, 255
  %442 = load i32, ptr %391, align 8
  %443 = lshr i32 %442, 16
  %444 = and i32 %443, 255
  %445 = icmp eq i32 %441, %444
  br i1 %445, label %446, label %501

446:                                              ; preds = %436
  %447 = and i32 %434, 65535
  %448 = call ptr @gen_rtx_fmt_e_stat(i32 noundef %447, i32 noundef %444, ptr noundef nonnull %391) #21
  br label %493

449:                                              ; preds = %433, %433
  %450 = getelementptr inbounds %struct.cselib_val_struct, ptr %428, i64 0, i32 2
  %451 = load ptr, ptr %450, align 8, !tbaa !155
  %452 = load i32, ptr %451, align 8
  %453 = lshr i32 %452, 16
  %454 = and i32 %453, 255
  %455 = call ptr @gen_lowpart_SUBREG(i32 noundef %454, ptr noundef nonnull %391) #21
  br label %493

456:                                              ; preds = %433
  br label %458

457:                                              ; preds = %433
  br label %458

458:                                              ; preds = %433, %457, %456
  %459 = phi i32 [ 49, %457 ], [ 50, %456 ], [ 63, %433 ]
  %460 = getelementptr inbounds %struct.cselib_val_struct, ptr %428, i64 0, i32 2
  %461 = load ptr, ptr %460, align 8, !tbaa !155
  %462 = load i32, ptr %461, align 8
  %463 = load i32, ptr %391, align 8
  %464 = xor i32 %463, %462
  %465 = and i32 %464, 16711680
  %466 = icmp eq i32 %465, 0
  br i1 %466, label %467, label %501

467:                                              ; preds = %458
  %468 = getelementptr inbounds %struct.rtx_def, ptr %408, i64 0, i32 1, i32 0, i32 0, i64 1
  %469 = load ptr, ptr %468, align 8, !tbaa !46
  %470 = load i32, ptr %469, align 8
  %471 = trunc i32 %470 to i16
  switch i16 %471, label %472 [
    i16 30, label %479
    i16 45, label %479
  ]

472:                                              ; preds = %467
  %473 = load ptr, ptr @scratch_regs, align 8, !tbaa !35
  %474 = call ptr @cselib_expand_value_rtx(ptr noundef nonnull %469, ptr noundef %473, i32 noundef 5) #21
  %475 = icmp eq ptr %474, null
  br i1 %475, label %501, label %476

476:                                              ; preds = %472
  %477 = load i32, ptr %474, align 8
  %478 = trunc i32 %477 to i16
  switch i16 %478, label %501 [
    i16 30, label %479
    i16 45, label %479
  ]

479:                                              ; preds = %476, %467, %476, %467
  %480 = phi ptr [ %469, %467 ], [ %474, %476 ], [ %469, %467 ], [ %474, %476 ]
  %481 = load i32, ptr %391, align 8
  %482 = lshr i32 %481, 16
  %483 = and i32 %482, 255
  %484 = call ptr @simplify_gen_binary(i32 noundef %459, i32 noundef %483, ptr noundef nonnull %391, ptr noundef nonnull %480) #21
  %485 = icmp eq ptr %484, %391
  br i1 %485, label %486, label %493

486:                                              ; preds = %479
  %487 = load i32, ptr %391, align 8
  %488 = lshr i32 %487, 16
  %489 = and i32 %488, 255
  %490 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !35
  %491 = call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %489, ptr noundef nonnull %391, ptr noundef %490) #21
  br label %493

492:                                              ; preds = %433
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 5196, ptr noundef nonnull @.str.2) #21
  unreachable

493:                                              ; preds = %486, %479, %449, %446
  %494 = phi ptr [ %491, %486 ], [ %484, %479 ], [ %455, %449 ], [ %448, %446 ]
  %495 = getelementptr inbounds %struct.cselib_val_struct, ptr %428, i64 0, i32 2
  %496 = load ptr, ptr %495, align 8, !tbaa !155
  %497 = load i32, ptr %496, align 8
  %498 = lshr i32 %497, 16
  %499 = and i32 %498, 255
  %500 = call ptr @gen_rtx_fmt_ee_stat(i32 noundef 41, i32 noundef %499, ptr noundef nonnull %496, ptr noundef %494) #21
  br label %501

501:                                              ; preds = %406, %390, %395, %401, %411, %417, %425, %430, %436, %458, %472, %476, %493
  %502 = phi ptr [ %500, %493 ], [ null, %390 ], [ null, %401 ], [ null, %395 ], [ null, %417 ], [ null, %411 ], [ null, %430 ], [ null, %425 ], [ null, %436 ], [ null, %458 ], [ null, %472 ], [ null, %476 ], [ null, %406 ]
  %503 = icmp eq ptr %502, null
  br i1 %503, label %511, label %504

504:                                              ; preds = %501
  %505 = load i32, ptr %212, align 8
  %506 = lshr i32 %505, 16
  %507 = and i32 %506, 255
  %508 = call ptr @gen_rtx_fmt_ee_stat(i32 noundef 41, i32 noundef %507, ptr noundef %383, ptr noundef nonnull %502) #21
  %509 = load i32, ptr %508, align 8
  %510 = or i32 %509, -2147483648
  store i32 %510, ptr %508, align 8
  br label %511

511:                                              ; preds = %501, %504, %382
  %512 = phi ptr [ %508, %504 ], [ %383, %501 ], [ %383, %382 ]
  br i1 %213, label %513, label %516

513:                                              ; preds = %511
  %514 = load i32, ptr %512, align 8
  %515 = or i32 %514, 536870912
  store i32 %515, ptr %512, align 8
  br label %516

516:                                              ; preds = %513, %511
  br i1 %249, label %517, label %523

517:                                              ; preds = %516
  %518 = zext nneg i8 %370 to i32
  %519 = load i32, ptr %512, align 8
  %520 = shl nuw nsw i32 %518, 27
  %521 = and i32 %519, -134217729
  %522 = add nuw nsw i32 %521, %520
  store i32 %522, ptr %512, align 8
  call fastcc void @preserve_value(ptr noundef nonnull %245)
  br label %523

523:                                              ; preds = %517, %516
  switch i32 %211, label %529 [
    i32 7, label %525
    i32 6, label %524
  ]

524:                                              ; preds = %523
  br label %525

525:                                              ; preds = %523, %524
  %526 = phi i32 [ 16777216, %524 ], [ 67108864, %523 ]
  %527 = load i32, ptr %512, align 8
  %528 = or i32 %527, %526
  store i32 %528, ptr %512, align 8
  br label %529

529:                                              ; preds = %525, %523, %244, %210
  %530 = phi i32 [ %211, %244 ], [ %211, %210 ], [ 4, %523 ], [ 4, %525 ]
  %531 = phi ptr [ %212, %244 ], [ %212, %210 ], [ %512, %523 ], [ %512, %525 ]
  %532 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %533 = icmp eq ptr %532, null
  br i1 %533, label %558, label %534

534:                                              ; preds = %529
  %535 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %536 = and i32 %535, 8
  %537 = icmp eq i32 %536, 0
  br i1 %537, label %558, label %538

538:                                              ; preds = %534
  %539 = load ptr, ptr %6, align 8, !tbaa !218
  %540 = load ptr, ptr %2, align 8, !tbaa !216
  %541 = getelementptr inbounds %struct.basic_block_def, ptr %539, i64 0, i32 9
  %542 = load i32, ptr %541, align 8, !tbaa !64
  %543 = getelementptr inbounds %struct.basic_block_def, ptr %539, i64 0, i32 2
  %544 = load ptr, ptr %543, align 8, !tbaa !65
  %545 = load ptr, ptr %544, align 8, !tbaa !84
  %546 = icmp eq ptr %545, null
  br i1 %546, label %549, label %547

547:                                              ; preds = %538
  %548 = load i32, ptr %545, align 8, !tbaa !86
  br label %549

549:                                              ; preds = %538, %547
  %550 = phi i32 [ %548, %547 ], [ 0, %538 ]
  %551 = getelementptr inbounds %struct.rtx_def, ptr %540, i64 0, i32 1
  %552 = load i32, ptr %551, align 8, !tbaa !46
  %553 = zext nneg i32 %530 to i64
  %554 = getelementptr inbounds [10 x ptr], ptr @micro_operation_type_name, i64 0, i64 %553
  %555 = load ptr, ptr %554, align 8, !tbaa !35
  %556 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %532, ptr noundef nonnull @.str.11, i32 noundef %542, i32 noundef %550, i32 noundef %552, ptr noundef %555)
  call void @print_inline_rtx(ptr noundef nonnull %532, ptr noundef %531, i32 noundef 2) #21
  %557 = call i32 @fputc(i32 noundef 10, ptr noundef nonnull %532)
  br label %558

558:                                              ; preds = %549, %534, %529
  %559 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 2
  %560 = load ptr, ptr %559, align 8, !tbaa !65
  %561 = load ptr, ptr %560, align 8, !tbaa !35
  %562 = icmp eq ptr %561, null
  br i1 %562, label %568, label %563

563:                                              ; preds = %558
  %564 = getelementptr inbounds %struct.VEC_micro_operation_base, ptr %561, i64 0, i32 1
  %565 = load i32, ptr %564, align 4, !tbaa !137
  %566 = load i32, ptr %561, align 8, !tbaa !86
  %567 = icmp eq i32 %565, %566
  br i1 %567, label %568, label %570

568:                                              ; preds = %558, %563
  %569 = call ptr @vec_heap_o_reserve(ptr noundef %561, i32 noundef 1, i64 noundef 8, i64 noundef 24) #21
  store ptr %569, ptr %560, align 8, !tbaa !35
  br label %570

570:                                              ; preds = %563, %568
  %571 = load ptr, ptr %560, align 8, !tbaa !35
  %572 = load i32, ptr %571, align 8, !tbaa !86
  %573 = add i32 %572, 1
  store i32 %573, ptr %571, align 8, !tbaa !86
  %574 = zext i32 %572 to i64
  %575 = getelementptr inbounds %struct.VEC_micro_operation_base, ptr %571, i64 0, i32 2, i64 %574
  store i32 %530, ptr %575, align 8, !tbaa.struct !138
  %576 = getelementptr inbounds i8, ptr %575, i64 8
  store ptr %214, ptr %576, align 8, !tbaa.struct !139
  %577 = getelementptr inbounds i8, ptr %575, i64 16
  store ptr %531, ptr %577, align 8, !tbaa.struct !140
  br label %578

578:                                              ; preds = %64, %10, %3, %570
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #21
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @add_uses(ptr nocapture noundef readonly %0, ptr noundef %1) #9 !prof !34 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = load ptr, ptr %0, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #21
  store i32 0, ptr %3, align 4, !tbaa !50
  %8 = call fastcc i32 @use_type(ptr noundef %7, ptr noundef %1, ptr noundef nonnull %3), !range !261
  %9 = icmp eq i32 %8, 7
  br i1 %9, label %431, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.count_use_info, ptr %1, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !218
  %13 = icmp eq i32 %8, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = load i32, ptr %3, align 4, !tbaa !50
  %16 = call fastcc ptr @var_lowpart(i32 noundef %15, ptr noundef %7)
  br label %17

17:                                               ; preds = %10, %14
  %18 = phi ptr [ %16, %14 ], [ %7, %10 ]
  %19 = load ptr, ptr %1, align 8, !tbaa !216
  switch i32 %8, label %380 [
    i32 3, label %20
    i32 2, label %216
  ]

20:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #21
  %21 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 1
  %22 = load ptr, ptr %21, align 8, !tbaa !46
  store ptr %22, ptr %4, align 8, !tbaa !35
  %23 = getelementptr inbounds %struct.count_use_info, ptr %1, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !219
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 4952, ptr noundef nonnull @.str.2) #21
  br label %27

27:                                               ; preds = %20, %26
  %28 = load ptr, ptr %4, align 8, !tbaa !35
  %29 = load i32, ptr %28, align 8
  %30 = and i32 %29, 65535
  %31 = icmp eq i32 %30, 43
  br i1 %31, label %32, label %121

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.rtx_def, ptr %28, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !46
  %35 = load i32, ptr %34, align 8
  %36 = trunc i32 %35 to i16
  switch i16 %36, label %48 [
    i16 37, label %121
    i16 43, label %121
    i16 49, label %37
  ]

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.rtx_def, ptr %34, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !46
  %40 = load ptr, ptr @cfa_base_rtx, align 8, !tbaa !35
  %41 = icmp eq ptr %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.rtx_def, ptr %34, i64 0, i32 1, i32 0, i32 0, i64 1
  %44 = load ptr, ptr %43, align 8, !tbaa !46
  %45 = load i32, ptr %44, align 8
  %46 = and i32 %45, 65535
  %47 = icmp eq i32 %46, 30
  br i1 %47, label %121, label %48

48:                                               ; preds = %42, %32, %37
  %49 = lshr i32 %35, 16
  %50 = and i32 %49, 255
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %48
  %53 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 1), align 8, !tbaa !262
  %54 = getelementptr inbounds %struct.rtx_def, ptr %28, i64 0, i32 1, i32 0, i32 0, i64 1
  %55 = load ptr, ptr %54, align 8, !tbaa !46
  %56 = icmp eq ptr %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.mem_attrs, ptr %55, i64 0, i32 5
  %59 = load i8, ptr %58, align 8, !tbaa !274
  br label %60

60:                                               ; preds = %57, %52
  %61 = phi i8 [ %59, %57 ], [ 0, %52 ]
  %62 = call i32 %53(i8 noundef zeroext %61) #21
  br label %63

63:                                               ; preds = %48, %60
  %64 = phi i32 [ %62, %60 ], [ %50, %48 ]
  %65 = load ptr, ptr %33, align 8, !tbaa !46
  %66 = call ptr @cselib_lookup(ptr noundef %65, i32 noundef %64, i32 noundef 0) #21
  %67 = icmp eq ptr %66, null
  br i1 %67, label %121, label %68

68:                                               ; preds = %63
  %69 = call zeroext i8 @cselib_preserved_value_p(ptr noundef nonnull %66) #21
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %71, label %121

71:                                               ; preds = %68
  call fastcc void @preserve_value(ptr noundef nonnull %66)
  %72 = load ptr, ptr %33, align 8, !tbaa !46
  %73 = call ptr @cselib_subst_to_values(ptr noundef %72) #21
  %74 = load ptr, ptr %1, align 8, !tbaa !216
  %75 = getelementptr inbounds %struct.cselib_val_struct, ptr %66, i64 0, i32 2
  %76 = load ptr, ptr %75, align 8, !tbaa !155
  %77 = call ptr @gen_rtx_fmt_ee_stat(i32 noundef 41, i32 noundef %64, ptr noundef %76, ptr noundef %73) #21
  %78 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %79 = icmp eq ptr %78, null
  br i1 %79, label %101, label %80

80:                                               ; preds = %71
  %81 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %82 = and i32 %81, 8
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %101, label %84

84:                                               ; preds = %80
  %85 = load ptr, ptr %11, align 8, !tbaa !218
  %86 = load ptr, ptr %1, align 8, !tbaa !216
  %87 = getelementptr inbounds %struct.basic_block_def, ptr %85, i64 0, i32 9
  %88 = load i32, ptr %87, align 8, !tbaa !64
  %89 = getelementptr inbounds %struct.basic_block_def, ptr %85, i64 0, i32 2
  %90 = load ptr, ptr %89, align 8, !tbaa !65
  %91 = load ptr, ptr %90, align 8, !tbaa !84
  %92 = icmp eq ptr %91, null
  br i1 %92, label %95, label %93

93:                                               ; preds = %84
  %94 = load i32, ptr %91, align 8, !tbaa !86
  br label %95

95:                                               ; preds = %84, %93
  %96 = phi i32 [ %94, %93 ], [ 0, %84 ]
  %97 = getelementptr inbounds %struct.rtx_def, ptr %86, i64 0, i32 1
  %98 = load i32, ptr %97, align 8, !tbaa !46
  %99 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %78, ptr noundef nonnull @.str.11, i32 noundef %88, i32 noundef %96, i32 noundef %98, ptr noundef nonnull @.str.14)
  call void @print_inline_rtx(ptr noundef nonnull %78, ptr noundef %77, i32 noundef 2) #21
  %100 = call i32 @fputc(i32 noundef 10, ptr noundef nonnull %78)
  br label %101

101:                                              ; preds = %95, %80, %71
  %102 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 2
  %103 = load ptr, ptr %102, align 8, !tbaa !65
  %104 = load ptr, ptr %103, align 8, !tbaa !35
  %105 = icmp eq ptr %104, null
  br i1 %105, label %111, label %106

106:                                              ; preds = %101
  %107 = getelementptr inbounds %struct.VEC_micro_operation_base, ptr %104, i64 0, i32 1
  %108 = load i32, ptr %107, align 4, !tbaa !137
  %109 = load i32, ptr %104, align 8, !tbaa !86
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %113

111:                                              ; preds = %101, %106
  %112 = call ptr @vec_heap_o_reserve(ptr noundef %104, i32 noundef 1, i64 noundef 8, i64 noundef 24) #21
  store ptr %112, ptr %103, align 8, !tbaa !35
  br label %113

113:                                              ; preds = %106, %111
  %114 = load ptr, ptr %103, align 8, !tbaa !35
  %115 = load i32, ptr %114, align 8, !tbaa !86
  %116 = add i32 %115, 1
  store i32 %116, ptr %114, align 8, !tbaa !86
  %117 = zext i32 %115 to i64
  %118 = getelementptr inbounds %struct.VEC_micro_operation_base, ptr %114, i64 0, i32 2, i64 %117
  store i32 2, ptr %118, align 8, !tbaa.struct !138
  %119 = getelementptr inbounds i8, ptr %118, i64 8
  store ptr %74, ptr %119, align 8, !tbaa.struct !139
  %120 = getelementptr inbounds i8, ptr %118, i64 16
  store ptr %77, ptr %120, align 8, !tbaa.struct !140
  br label %121

121:                                              ; preds = %63, %32, %68, %113, %32, %42, %27
  %122 = load ptr, ptr %4, align 8, !tbaa !35
  %123 = load i32, ptr %122, align 8
  %124 = and i32 %123, 65535
  %125 = zext nneg i32 %124 to i64
  %126 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %125
  %127 = load i32, ptr %126, align 4, !tbaa !50
  %128 = icmp eq i32 %127, 9
  br i1 %128, label %129, label %134

129:                                              ; preds = %121
  %130 = icmp eq i32 %124, 35
  br i1 %130, label %131, label %214

131:                                              ; preds = %129
  %132 = call i32 @for_each_rtx(ptr noundef nonnull %4, ptr noundef nonnull @non_suitable_const, ptr noundef null) #21
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %214

134:                                              ; preds = %131, %121
  %135 = load ptr, ptr %4, align 8, !tbaa !35
  %136 = load i32, ptr %135, align 8
  %137 = and i32 %136, 65535
  %138 = icmp eq i32 %137, 25
  br i1 %138, label %139, label %144

139:                                              ; preds = %134
  %140 = getelementptr inbounds %struct.rtx_def, ptr %135, i64 0, i32 1
  %141 = load ptr, ptr %140, align 8, !tbaa !46
  %142 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !35
  %143 = icmp eq ptr %141, %142
  br i1 %143, label %199, label %144

144:                                              ; preds = %139, %134
  %145 = load i32, ptr %7, align 8
  %146 = lshr i32 %145, 16
  %147 = and i32 %146, 255
  %148 = load ptr, ptr %23, align 8, !tbaa !219
  %149 = icmp eq ptr %148, null
  br i1 %149, label %173, label %150

150:                                              ; preds = %144
  %151 = getelementptr inbounds %struct.count_use_info, ptr %1, i64 0, i32 4
  %152 = load i8, ptr %151, align 4, !tbaa !221
  %153 = icmp eq i8 %152, 0
  br i1 %153, label %171, label %154

154:                                              ; preds = %150
  %155 = getelementptr inbounds %struct.count_use_info, ptr %1, i64 0, i32 3
  %156 = load i32, ptr %155, align 8, !tbaa !220
  %157 = icmp sgt i32 %156, 0
  br i1 %157, label %158, label %173

158:                                              ; preds = %154
  %159 = zext nneg i32 %156 to i64
  br label %163

160:                                              ; preds = %163
  %161 = add nuw nsw i64 %164, 1
  %162 = icmp eq i64 %161, %159
  br i1 %162, label %173, label %163, !llvm.loop !275

163:                                              ; preds = %158, %160
  %164 = phi i64 [ 0, %158 ], [ %161, %160 ]
  %165 = getelementptr inbounds %struct.cselib_set, ptr %148, i64 %164, i32 1
  %166 = load ptr, ptr %165, align 8, !tbaa !276
  %167 = icmp eq ptr %166, %135
  br i1 %167, label %168, label %160

168:                                              ; preds = %163
  %169 = getelementptr inbounds %struct.cselib_set, ptr %148, i64 %164, i32 2
  %170 = load ptr, ptr %169, align 8, !tbaa !278
  br label %173

171:                                              ; preds = %150
  %172 = call ptr @cselib_lookup(ptr noundef nonnull %135, i32 noundef %147, i32 noundef 0) #21
  br label %173

173:                                              ; preds = %160, %154, %144, %168, %171
  %174 = phi ptr [ %170, %168 ], [ %172, %171 ], [ null, %144 ], [ null, %154 ], [ null, %160 ]
  %175 = icmp eq ptr %174, null
  br i1 %175, label %199, label %176

176:                                              ; preds = %173
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #21
  %177 = load ptr, ptr %4, align 8, !tbaa !35
  %178 = call fastcc ptr @replace_expr_with_values(ptr noundef %177)
  %179 = icmp eq ptr %178, null
  br i1 %179, label %183, label %180

180:                                              ; preds = %176
  %181 = call ptr @shallow_copy_rtx_stat(ptr noundef nonnull %7) #21
  %182 = getelementptr inbounds %struct.rtx_def, ptr %181, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %178, ptr %182, align 8, !tbaa !46
  br label %183

183:                                              ; preds = %180, %176
  %184 = phi ptr [ %181, %180 ], [ %7, %176 ]
  %185 = load i32, ptr %3, align 4, !tbaa !50
  %186 = getelementptr inbounds %struct.cselib_val_struct, ptr %174, i64 0, i32 2
  %187 = load ptr, ptr %186, align 8, !tbaa !155
  %188 = call ptr @gen_rtx_fmt_ee_stat(i32 noundef 41, i32 noundef %185, ptr noundef %187, ptr noundef %184) #21
  %189 = load ptr, ptr %4, align 8, !tbaa !35
  %190 = call fastcc i32 @use_type(ptr noundef %189, ptr noundef null, ptr noundef nonnull %5), !range !261
  switch i32 %190, label %191 [
    i32 7, label %192
    i32 0, label %198
    i32 1, label %198
  ]

191:                                              ; preds = %183
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 5004, ptr noundef nonnull @.str.2) #21
  br label %198

192:                                              ; preds = %183
  %193 = call zeroext i8 @cselib_preserved_value_p(ptr noundef nonnull %174) #21
  %194 = icmp eq i8 %193, 0
  br i1 %194, label %195, label %198

195:                                              ; preds = %192
  %196 = load i32, ptr %188, align 8
  %197 = or i32 %196, 134217728
  store i32 %197, ptr %188, align 8
  call fastcc void @preserve_value(ptr noundef nonnull %174)
  br label %198

198:                                              ; preds = %183, %191, %183, %195, %192
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #21
  br label %214

199:                                              ; preds = %139, %173
  %200 = load ptr, ptr %4, align 8, !tbaa !35
  %201 = load i32, ptr %200, align 8
  %202 = and i32 %201, 65535
  %203 = icmp eq i32 %202, 25
  br i1 %203, label %204, label %209

204:                                              ; preds = %199
  %205 = getelementptr inbounds %struct.rtx_def, ptr %200, i64 0, i32 1
  %206 = load ptr, ptr %205, align 8, !tbaa !46
  %207 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !35
  %208 = icmp eq ptr %206, %207
  br i1 %208, label %214, label %209

209:                                              ; preds = %204, %199
  %210 = call ptr @shallow_copy_rtx_stat(ptr noundef %7) #21
  %211 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !35
  %212 = call ptr @gen_rtx_fmt_e_stat(i32 noundef 25, i32 noundef 0, ptr noundef %211) #21
  %213 = getelementptr inbounds %struct.rtx_def, ptr %210, i64 0, i32 1, i32 0, i32 0, i64 1
  store ptr %212, ptr %213, align 8, !tbaa !46
  br label %214

214:                                              ; preds = %204, %198, %209, %129, %131
  %215 = phi ptr [ %7, %129 ], [ %7, %131 ], [ %210, %209 ], [ %188, %198 ], [ %7, %204 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #21
  br label %383

216:                                              ; preds = %17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #21
  store i32 0, ptr %6, align 4, !tbaa !50
  %217 = load i32, ptr %7, align 8
  %218 = lshr i32 %217, 16
  %219 = and i32 %218, 255
  %220 = getelementptr inbounds %struct.count_use_info, ptr %1, i64 0, i32 2
  %221 = load ptr, ptr %220, align 8, !tbaa !219
  %222 = icmp eq ptr %221, null
  br i1 %222, label %246, label %223

223:                                              ; preds = %216
  %224 = getelementptr inbounds %struct.count_use_info, ptr %1, i64 0, i32 4
  %225 = load i8, ptr %224, align 4, !tbaa !221
  %226 = icmp eq i8 %225, 0
  br i1 %226, label %244, label %227

227:                                              ; preds = %223
  %228 = getelementptr inbounds %struct.count_use_info, ptr %1, i64 0, i32 3
  %229 = load i32, ptr %228, align 8, !tbaa !220
  %230 = icmp sgt i32 %229, 0
  br i1 %230, label %231, label %246

231:                                              ; preds = %227
  %232 = zext nneg i32 %229 to i64
  br label %236

233:                                              ; preds = %236
  %234 = add nuw nsw i64 %237, 1
  %235 = icmp eq i64 %234, %232
  br i1 %235, label %246, label %236, !llvm.loop !275

236:                                              ; preds = %231, %233
  %237 = phi i64 [ 0, %231 ], [ %234, %233 ]
  %238 = getelementptr inbounds %struct.cselib_set, ptr %221, i64 %237, i32 1
  %239 = load ptr, ptr %238, align 8, !tbaa !276
  %240 = icmp eq ptr %239, %7
  br i1 %240, label %241, label %233

241:                                              ; preds = %236
  %242 = getelementptr inbounds %struct.cselib_set, ptr %221, i64 %237, i32 2
  %243 = load ptr, ptr %242, align 8, !tbaa !278
  br label %246

244:                                              ; preds = %223
  %245 = call ptr @cselib_lookup(ptr noundef nonnull %7, i32 noundef %219, i32 noundef 0) #21
  br label %246

246:                                              ; preds = %233, %227, %216, %241, %244
  %247 = phi ptr [ %243, %241 ], [ %245, %244 ], [ null, %216 ], [ null, %227 ], [ null, %233 ]
  %248 = load ptr, ptr %220, align 8, !tbaa !219
  %249 = icmp eq ptr %248, null
  br i1 %249, label %250, label %251

250:                                              ; preds = %246
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 5028, ptr noundef nonnull @.str.2) #21
  br label %251

251:                                              ; preds = %246, %250
  %252 = load i32, ptr %7, align 8
  %253 = and i32 %252, 65535
  %254 = icmp eq i32 %253, 43
  br i1 %254, label %255, label %344

255:                                              ; preds = %251
  %256 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %257 = load ptr, ptr %256, align 8, !tbaa !46
  %258 = load i32, ptr %257, align 8
  %259 = trunc i32 %258 to i16
  switch i16 %259, label %271 [
    i16 37, label %344
    i16 43, label %344
    i16 49, label %260
  ]

260:                                              ; preds = %255
  %261 = getelementptr inbounds %struct.rtx_def, ptr %257, i64 0, i32 1
  %262 = load ptr, ptr %261, align 8, !tbaa !46
  %263 = load ptr, ptr @cfa_base_rtx, align 8, !tbaa !35
  %264 = icmp eq ptr %262, %263
  br i1 %264, label %265, label %271

265:                                              ; preds = %260
  %266 = getelementptr inbounds %struct.rtx_def, ptr %257, i64 0, i32 1, i32 0, i32 0, i64 1
  %267 = load ptr, ptr %266, align 8, !tbaa !46
  %268 = load i32, ptr %267, align 8
  %269 = and i32 %268, 65535
  %270 = icmp eq i32 %269, 30
  br i1 %270, label %344, label %271

271:                                              ; preds = %265, %255, %260
  %272 = lshr i32 %258, 16
  %273 = and i32 %272, 255
  %274 = icmp eq i32 %273, 0
  br i1 %274, label %275, label %286

275:                                              ; preds = %271
  %276 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 1), align 8, !tbaa !262
  %277 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 1
  %278 = load ptr, ptr %277, align 8, !tbaa !46
  %279 = icmp eq ptr %278, null
  br i1 %279, label %283, label %280

280:                                              ; preds = %275
  %281 = getelementptr inbounds %struct.mem_attrs, ptr %278, i64 0, i32 5
  %282 = load i8, ptr %281, align 8, !tbaa !274
  br label %283

283:                                              ; preds = %280, %275
  %284 = phi i8 [ %282, %280 ], [ 0, %275 ]
  %285 = call i32 %276(i8 noundef zeroext %284) #21
  br label %286

286:                                              ; preds = %271, %283
  %287 = phi i32 [ %285, %283 ], [ %273, %271 ]
  %288 = load ptr, ptr %256, align 8, !tbaa !46
  %289 = call ptr @cselib_lookup(ptr noundef %288, i32 noundef %287, i32 noundef 0) #21
  %290 = icmp eq ptr %289, null
  br i1 %290, label %344, label %291

291:                                              ; preds = %286
  %292 = call zeroext i8 @cselib_preserved_value_p(ptr noundef nonnull %289) #21
  %293 = icmp eq i8 %292, 0
  br i1 %293, label %294, label %344

294:                                              ; preds = %291
  call fastcc void @preserve_value(ptr noundef nonnull %289)
  %295 = load ptr, ptr %256, align 8, !tbaa !46
  %296 = call ptr @cselib_subst_to_values(ptr noundef %295) #21
  %297 = load ptr, ptr %1, align 8, !tbaa !216
  %298 = getelementptr inbounds %struct.cselib_val_struct, ptr %289, i64 0, i32 2
  %299 = load ptr, ptr %298, align 8, !tbaa !155
  %300 = call ptr @gen_rtx_fmt_ee_stat(i32 noundef 41, i32 noundef %287, ptr noundef %299, ptr noundef %296) #21
  %301 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %302 = icmp eq ptr %301, null
  br i1 %302, label %324, label %303

303:                                              ; preds = %294
  %304 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %305 = and i32 %304, 8
  %306 = icmp eq i32 %305, 0
  br i1 %306, label %324, label %307

307:                                              ; preds = %303
  %308 = load ptr, ptr %11, align 8, !tbaa !218
  %309 = load ptr, ptr %1, align 8, !tbaa !216
  %310 = getelementptr inbounds %struct.basic_block_def, ptr %308, i64 0, i32 9
  %311 = load i32, ptr %310, align 8, !tbaa !64
  %312 = getelementptr inbounds %struct.basic_block_def, ptr %308, i64 0, i32 2
  %313 = load ptr, ptr %312, align 8, !tbaa !65
  %314 = load ptr, ptr %313, align 8, !tbaa !84
  %315 = icmp eq ptr %314, null
  br i1 %315, label %318, label %316

316:                                              ; preds = %307
  %317 = load i32, ptr %314, align 8, !tbaa !86
  br label %318

318:                                              ; preds = %307, %316
  %319 = phi i32 [ %317, %316 ], [ 0, %307 ]
  %320 = getelementptr inbounds %struct.rtx_def, ptr %309, i64 0, i32 1
  %321 = load i32, ptr %320, align 8, !tbaa !46
  %322 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %301, ptr noundef nonnull @.str.11, i32 noundef %311, i32 noundef %319, i32 noundef %321, ptr noundef nonnull @.str.14)
  call void @print_inline_rtx(ptr noundef nonnull %301, ptr noundef %300, i32 noundef 2) #21
  %323 = call i32 @fputc(i32 noundef 10, ptr noundef nonnull %301)
  br label %324

324:                                              ; preds = %318, %303, %294
  %325 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 2
  %326 = load ptr, ptr %325, align 8, !tbaa !65
  %327 = load ptr, ptr %326, align 8, !tbaa !35
  %328 = icmp eq ptr %327, null
  br i1 %328, label %334, label %329

329:                                              ; preds = %324
  %330 = getelementptr inbounds %struct.VEC_micro_operation_base, ptr %327, i64 0, i32 1
  %331 = load i32, ptr %330, align 4, !tbaa !137
  %332 = load i32, ptr %327, align 8, !tbaa !86
  %333 = icmp eq i32 %331, %332
  br i1 %333, label %334, label %336

334:                                              ; preds = %324, %329
  %335 = call ptr @vec_heap_o_reserve(ptr noundef %327, i32 noundef 1, i64 noundef 8, i64 noundef 24) #21
  store ptr %335, ptr %326, align 8, !tbaa !35
  br label %336

336:                                              ; preds = %329, %334
  %337 = load ptr, ptr %326, align 8, !tbaa !35
  %338 = load i32, ptr %337, align 8, !tbaa !86
  %339 = add i32 %338, 1
  store i32 %339, ptr %337, align 8, !tbaa !86
  %340 = zext i32 %338 to i64
  %341 = getelementptr inbounds %struct.VEC_micro_operation_base, ptr %337, i64 0, i32 2, i64 %340
  store i32 2, ptr %341, align 8, !tbaa.struct !138
  %342 = getelementptr inbounds i8, ptr %341, i64 8
  store ptr %297, ptr %342, align 8, !tbaa.struct !139
  %343 = getelementptr inbounds i8, ptr %341, i64 16
  store ptr %300, ptr %343, align 8, !tbaa.struct !140
  br label %344

344:                                              ; preds = %286, %255, %291, %336, %255, %265, %251
  %345 = call fastcc i32 @use_type(ptr noundef nonnull %7, ptr noundef null, ptr noundef nonnull %6), !range !261
  %346 = icmp eq i32 %345, 0
  switch i32 %345, label %347 [
    i32 7, label %348
    i32 1, label %348
    i32 0, label %348
  ]

347:                                              ; preds = %344
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 5061, ptr noundef nonnull @.str.2) #21
  br label %348

348:                                              ; preds = %344, %344, %344, %347
  br i1 %346, label %349, label %352

349:                                              ; preds = %348
  %350 = load i32, ptr %6, align 4, !tbaa !50
  %351 = call fastcc ptr @var_lowpart(i32 noundef %350, ptr noundef nonnull %7)
  br label %352

352:                                              ; preds = %348, %349
  %353 = phi ptr [ %351, %349 ], [ %7, %348 ]
  %354 = call fastcc ptr @replace_expr_with_values(ptr noundef nonnull %7)
  %355 = icmp eq ptr %354, null
  %356 = select i1 %355, ptr %7, ptr %354
  %357 = icmp eq ptr %353, %356
  br i1 %357, label %363, label %358

358:                                              ; preds = %352
  %359 = load i32, ptr %6, align 4, !tbaa !50
  %360 = getelementptr inbounds %struct.cselib_val_struct, ptr %247, i64 0, i32 2
  %361 = load ptr, ptr %360, align 8, !tbaa !155
  %362 = call ptr @gen_rtx_fmt_ee_stat(i32 noundef 41, i32 noundef %359, ptr noundef %361, ptr noundef %353) #21
  br label %366

363:                                              ; preds = %352
  %364 = getelementptr inbounds %struct.cselib_val_struct, ptr %247, i64 0, i32 2
  %365 = load ptr, ptr %364, align 8, !tbaa !155
  br label %366

366:                                              ; preds = %363, %358
  %367 = phi ptr [ %362, %358 ], [ %365, %363 ]
  %368 = load i32, ptr %3, align 4, !tbaa !50
  %369 = call ptr @gen_rtx_fmt_ee_stat(i32 noundef 41, i32 noundef %368, ptr noundef %367, ptr noundef nonnull %356) #21
  br i1 %346, label %370, label %373

370:                                              ; preds = %366
  %371 = load i32, ptr %369, align 8
  %372 = or i32 %371, 536870912
  store i32 %372, ptr %369, align 8
  br label %373

373:                                              ; preds = %370, %366
  %374 = call zeroext i8 @cselib_preserved_value_p(ptr noundef %247) #21
  %375 = icmp eq i8 %374, 0
  br i1 %375, label %376, label %379

376:                                              ; preds = %373
  %377 = load i32, ptr %369, align 8
  %378 = or i32 %377, 134217728
  store i32 %378, ptr %369, align 8
  call fastcc void @preserve_value(ptr noundef %247)
  br label %379

379:                                              ; preds = %376, %373
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #21
  br label %383

380:                                              ; preds = %17
  %381 = icmp ult i32 %8, 2
  br i1 %381, label %383, label %382

382:                                              ; preds = %380
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 5098, ptr noundef nonnull @.str.2) #21
  br label %383

383:                                              ; preds = %382, %380, %379, %214
  %384 = phi ptr [ %18, %380 ], [ %18, %382 ], [ %369, %379 ], [ %215, %214 ]
  %385 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %386 = icmp eq ptr %385, null
  br i1 %386, label %411, label %387

387:                                              ; preds = %383
  %388 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %389 = and i32 %388, 8
  %390 = icmp eq i32 %389, 0
  br i1 %390, label %411, label %391

391:                                              ; preds = %387
  %392 = load ptr, ptr %11, align 8, !tbaa !218
  %393 = load ptr, ptr %1, align 8, !tbaa !216
  %394 = getelementptr inbounds %struct.basic_block_def, ptr %392, i64 0, i32 9
  %395 = load i32, ptr %394, align 8, !tbaa !64
  %396 = getelementptr inbounds %struct.basic_block_def, ptr %392, i64 0, i32 2
  %397 = load ptr, ptr %396, align 8, !tbaa !65
  %398 = load ptr, ptr %397, align 8, !tbaa !84
  %399 = icmp eq ptr %398, null
  br i1 %399, label %402, label %400

400:                                              ; preds = %391
  %401 = load i32, ptr %398, align 8, !tbaa !86
  br label %402

402:                                              ; preds = %391, %400
  %403 = phi i32 [ %401, %400 ], [ 0, %391 ]
  %404 = getelementptr inbounds %struct.rtx_def, ptr %393, i64 0, i32 1
  %405 = load i32, ptr %404, align 8, !tbaa !46
  %406 = zext nneg i32 %8 to i64
  %407 = getelementptr inbounds [10 x ptr], ptr @micro_operation_type_name, i64 0, i64 %406
  %408 = load ptr, ptr %407, align 8, !tbaa !35
  %409 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %385, ptr noundef nonnull @.str.11, i32 noundef %395, i32 noundef %403, i32 noundef %405, ptr noundef %408)
  call void @print_inline_rtx(ptr noundef nonnull %385, ptr noundef %384, i32 noundef 2) #21
  %410 = call i32 @fputc(i32 noundef 10, ptr noundef nonnull %385)
  br label %411

411:                                              ; preds = %402, %387, %383
  %412 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 2
  %413 = load ptr, ptr %412, align 8, !tbaa !65
  %414 = load ptr, ptr %413, align 8, !tbaa !35
  %415 = icmp eq ptr %414, null
  br i1 %415, label %421, label %416

416:                                              ; preds = %411
  %417 = getelementptr inbounds %struct.VEC_micro_operation_base, ptr %414, i64 0, i32 1
  %418 = load i32, ptr %417, align 4, !tbaa !137
  %419 = load i32, ptr %414, align 8, !tbaa !86
  %420 = icmp eq i32 %418, %419
  br i1 %420, label %421, label %423

421:                                              ; preds = %411, %416
  %422 = call ptr @vec_heap_o_reserve(ptr noundef %414, i32 noundef 1, i64 noundef 8, i64 noundef 24) #21
  store ptr %422, ptr %413, align 8, !tbaa !35
  br label %423

423:                                              ; preds = %416, %421
  %424 = load ptr, ptr %413, align 8, !tbaa !35
  %425 = load i32, ptr %424, align 8, !tbaa !86
  %426 = add i32 %425, 1
  store i32 %426, ptr %424, align 8, !tbaa !86
  %427 = zext i32 %425 to i64
  %428 = getelementptr inbounds %struct.VEC_micro_operation_base, ptr %424, i64 0, i32 2, i64 %427
  store i32 %8, ptr %428, align 8, !tbaa.struct !138
  %429 = getelementptr inbounds i8, ptr %428, i64 8
  store ptr %19, ptr %429, align 8, !tbaa.struct !139
  %430 = getelementptr inbounds i8, ptr %428, i64 16
  store ptr %384, ptr %430, align 8, !tbaa.struct !140
  br label %431

431:                                              ; preds = %423, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #21
  ret i32 0
}

; Function Attrs: cold nounwind uwtable
define internal fastcc i32 @use_type(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2) unnamed_addr #9 !prof !34 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %96, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.count_use_info, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !219
  %8 = icmp eq ptr %7, null
  br i1 %8, label %96, label %9

9:                                                ; preds = %5
  %10 = load i32, ptr %0, align 8
  %11 = trunc i32 %10 to i16
  switch i16 %11, label %96 [
    i16 138, label %12
    i16 37, label %33
    i16 43, label %33
  ]

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !46
  %15 = tail call fastcc zeroext i8 @track_expr_p(ptr noundef %14, i8 noundef zeroext 0), !range !59
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %205, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %19 = load ptr, ptr %18, align 8, !tbaa !46
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 65535
  %22 = icmp eq i32 %21, 25
  br i1 %22, label %23, label %28

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !46
  %26 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !35
  %27 = icmp eq ptr %25, %26
  br i1 %27, label %205, label %28

28:                                               ; preds = %23, %17
  %29 = load i32, ptr %0, align 8
  %30 = lshr i32 %29, 16
  %31 = and i32 %30, 255
  %32 = tail call ptr @cselib_lookup(ptr noundef nonnull %19, i32 noundef %31, i32 noundef 1) #21
  br label %205

33:                                               ; preds = %9, %9
  %34 = icmp eq ptr %2, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %33
  %36 = lshr i32 %10, 16
  %37 = and i32 %36, 255
  store i32 %37, ptr %2, align 4, !tbaa !50
  br label %38

38:                                               ; preds = %35, %33
  %39 = getelementptr inbounds %struct.count_use_info, ptr %1, i64 0, i32 4
  %40 = load i8, ptr %39, align 4, !tbaa !221
  %41 = icmp eq i8 %40, 0
  %42 = load i32, ptr %0, align 8
  br i1 %41, label %88, label %43

43:                                               ; preds = %38
  %44 = and i32 %42, 65535
  %45 = icmp eq i32 %44, 37
  br i1 %45, label %205, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.count_use_info, ptr %1, i64 0, i32 3
  %48 = load i32, ptr %47, align 8, !tbaa !220
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %63

50:                                               ; preds = %46
  %51 = zext nneg i32 %48 to i64
  br label %55

52:                                               ; preds = %55
  %53 = add nuw nsw i64 %56, 1
  %54 = icmp eq i64 %53, %51
  br i1 %54, label %63, label %55, !llvm.loop !275

55:                                               ; preds = %50, %52
  %56 = phi i64 [ 0, %50 ], [ %53, %52 ]
  %57 = getelementptr inbounds %struct.cselib_set, ptr %7, i64 %56, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !276
  %59 = icmp eq ptr %58, %0
  br i1 %59, label %60, label %52

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.cselib_set, ptr %7, i64 %56, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !278
  br label %63

63:                                               ; preds = %52, %46, %60
  %64 = phi ptr [ %62, %60 ], [ null, %46 ], [ null, %52 ]
  %65 = icmp eq ptr %64, null
  br i1 %65, label %96, label %66

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !46
  %69 = load i32, ptr %68, align 8
  %70 = lshr i32 %69, 16
  %71 = and i32 %70, 255
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %84

73:                                               ; preds = %66
  %74 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 1), align 8, !tbaa !262
  %75 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %76 = load ptr, ptr %75, align 8, !tbaa !46
  %77 = icmp eq ptr %76, null
  br i1 %77, label %81, label %78

78:                                               ; preds = %73
  %79 = getelementptr inbounds %struct.mem_attrs, ptr %76, i64 0, i32 5
  %80 = load i8, ptr %79, align 8, !tbaa !274
  br label %81

81:                                               ; preds = %78, %73
  %82 = phi i8 [ %80, %78 ], [ 0, %73 ]
  %83 = tail call i32 %74(i8 noundef zeroext %82) #21
  br label %84

84:                                               ; preds = %66, %81
  %85 = phi i32 [ %83, %81 ], [ %71, %66 ]
  %86 = tail call ptr @cselib_lookup(ptr noundef nonnull %68, i32 noundef %85, i32 noundef 0) #21
  %87 = icmp eq ptr %86, null
  br i1 %87, label %96, label %205

88:                                               ; preds = %38
  %89 = lshr i32 %42, 16
  %90 = and i32 %89, 255
  %91 = tail call ptr @cselib_lookup(ptr noundef nonnull %0, i32 noundef %90, i32 noundef 0) #21
  %92 = icmp eq ptr %91, null
  br i1 %92, label %96, label %93

93:                                               ; preds = %88
  %94 = tail call zeroext i8 @cselib_preserved_value_p(ptr noundef nonnull %91) #21
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %205, label %96

96:                                               ; preds = %84, %88, %93, %9, %63, %5, %3
  %97 = load i32, ptr %0, align 8
  %98 = trunc i32 %97 to i16
  switch i16 %98, label %205 [
    i16 37, label %99
    i16 43, label %154
  ]

99:                                               ; preds = %96
  %100 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %101 = load i32, ptr %100, align 8, !tbaa !46
  %102 = icmp ult i32 %101, 53
  br i1 %102, label %104, label %103

103:                                              ; preds = %99
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 4817, ptr noundef nonnull @.str.2) #21
  br label %104

104:                                              ; preds = %99, %103
  %105 = load ptr, ptr @cfa_base_rtx, align 8, !tbaa !35
  %106 = icmp eq ptr %105, %0
  br i1 %106, label %205, label %107

107:                                              ; preds = %104
  %108 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %109 = load ptr, ptr %108, align 8, !tbaa !46
  %110 = icmp eq ptr %109, null
  br i1 %110, label %113, label %111

111:                                              ; preds = %107
  %112 = load ptr, ptr %109, align 8, !tbaa !91
  br label %113

113:                                              ; preds = %107, %111
  %114 = phi ptr [ %112, %111 ], [ null, %107 ]
  %115 = icmp eq ptr %114, null
  br i1 %115, label %205, label %116

116:                                              ; preds = %113
  %117 = load i64, ptr %114, align 8
  %118 = and i64 %117, 65535
  %119 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %118
  %120 = load i32, ptr %119, align 4, !tbaa !50
  %121 = icmp eq i32 %120, 3
  br i1 %121, label %122, label %139

122:                                              ; preds = %116
  %123 = getelementptr inbounds %struct.tree_decl_common, ptr %114, i64 0, i32 2
  %124 = load i64, ptr %123, align 8
  %125 = and i64 %124, 16384
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %139, label %127

127:                                              ; preds = %122
  %128 = tail call ptr @decl_debug_expr_lookup(ptr noundef nonnull %114) #21
  %129 = icmp eq ptr %128, null
  br i1 %129, label %139, label %130

130:                                              ; preds = %127
  %131 = tail call ptr @decl_debug_expr_lookup(ptr noundef nonnull %114) #21
  %132 = load i64, ptr %131, align 8
  %133 = and i64 %132, 65535
  %134 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %133
  %135 = load i32, ptr %134, align 4, !tbaa !50
  %136 = icmp eq i32 %135, 3
  br i1 %136, label %137, label %139

137:                                              ; preds = %130
  %138 = tail call ptr @decl_debug_expr_lookup(ptr noundef nonnull %114) #21
  br label %139

139:                                              ; preds = %116, %122, %127, %130, %137
  %140 = phi ptr [ %138, %137 ], [ %114, %130 ], [ %114, %127 ], [ %114, %122 ], [ %114, %116 ]
  %141 = tail call ptr @target_for_debug_bind(ptr noundef %140) #21
  %142 = icmp eq ptr %141, null
  br i1 %142, label %143, label %205

143:                                              ; preds = %139
  %144 = load ptr, ptr %108, align 8, !tbaa !46
  %145 = icmp eq ptr %144, null
  br i1 %145, label %149, label %146

146:                                              ; preds = %143
  %147 = getelementptr inbounds %struct.reg_attrs, ptr %144, i64 0, i32 1
  %148 = load i64, ptr %147, align 8, !tbaa !93
  br label %149

149:                                              ; preds = %143, %146
  %150 = phi i64 [ %148, %146 ], [ 0, %143 ]
  %151 = tail call fastcc zeroext i8 @track_loc_p(ptr noundef nonnull %0, ptr noundef nonnull %114, i64 noundef %150, ptr noundef %2, ptr noundef null)
  %152 = xor i8 %151, 1
  %153 = zext nneg i8 %152 to i32
  br label %205

154:                                              ; preds = %96
  %155 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %156 = load ptr, ptr %155, align 8, !tbaa !46
  %157 = icmp eq ptr %156, null
  br i1 %157, label %160, label %158

158:                                              ; preds = %154
  %159 = load ptr, ptr %156, align 8, !tbaa !94
  br label %160

160:                                              ; preds = %154, %158
  %161 = phi ptr [ %159, %158 ], [ null, %154 ]
  %162 = icmp eq ptr %161, null
  br i1 %162, label %205, label %163

163:                                              ; preds = %160
  %164 = load i64, ptr %161, align 8
  %165 = and i64 %164, 65535
  %166 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %165
  %167 = load i32, ptr %166, align 4, !tbaa !50
  %168 = icmp eq i32 %167, 3
  br i1 %168, label %169, label %186

169:                                              ; preds = %163
  %170 = getelementptr inbounds %struct.tree_decl_common, ptr %161, i64 0, i32 2
  %171 = load i64, ptr %170, align 8
  %172 = and i64 %171, 16384
  %173 = icmp eq i64 %172, 0
  br i1 %173, label %186, label %174

174:                                              ; preds = %169
  %175 = tail call ptr @decl_debug_expr_lookup(ptr noundef nonnull %161) #21
  %176 = icmp eq ptr %175, null
  br i1 %176, label %186, label %177

177:                                              ; preds = %174
  %178 = tail call ptr @decl_debug_expr_lookup(ptr noundef nonnull %161) #21
  %179 = load i64, ptr %178, align 8
  %180 = and i64 %179, 65535
  %181 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %180
  %182 = load i32, ptr %181, align 4, !tbaa !50
  %183 = icmp eq i32 %182, 3
  br i1 %183, label %184, label %186

184:                                              ; preds = %177
  %185 = tail call ptr @decl_debug_expr_lookup(ptr noundef nonnull %161) #21
  br label %186

186:                                              ; preds = %163, %169, %174, %177, %184
  %187 = phi ptr [ %185, %184 ], [ %161, %177 ], [ %161, %174 ], [ %161, %169 ], [ %161, %163 ]
  %188 = tail call ptr @target_for_debug_bind(ptr noundef %187) #21
  %189 = icmp eq ptr %188, null
  br i1 %189, label %190, label %205

190:                                              ; preds = %186
  %191 = load ptr, ptr %155, align 8, !tbaa !46
  %192 = icmp eq ptr %191, null
  br i1 %192, label %200, label %193

193:                                              ; preds = %190
  %194 = getelementptr inbounds %struct.mem_attrs, ptr %191, i64 0, i32 1
  %195 = load ptr, ptr %194, align 8, !tbaa !96
  %196 = icmp eq ptr %195, null
  br i1 %196, label %200, label %197

197:                                              ; preds = %193
  %198 = getelementptr inbounds %struct.rtx_def, ptr %195, i64 0, i32 1
  %199 = load i64, ptr %198, align 8, !tbaa !46
  br label %200

200:                                              ; preds = %193, %190, %197
  %201 = phi i64 [ %199, %197 ], [ 0, %190 ], [ 0, %193 ]
  %202 = tail call fastcc zeroext i8 @track_loc_p(ptr noundef nonnull %0, ptr noundef nonnull %161, i64 noundef %201, ptr noundef %2, ptr noundef null)
  %203 = icmp eq i8 %202, 0
  %204 = select i1 %203, i32 7, i32 0
  br label %205

205:                                              ; preds = %93, %96, %200, %186, %160, %149, %139, %113, %104, %43, %84, %12, %23, %28
  %206 = phi i32 [ 3, %28 ], [ 3, %23 ], [ 7, %12 ], [ 4, %84 ], [ 4, %43 ], [ 7, %104 ], [ 1, %113 ], [ 7, %139 ], [ %153, %149 ], [ 7, %160 ], [ 7, %186 ], [ %204, %200 ], [ 7, %96 ], [ 2, %93 ]
  ret i32 %206
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @var_lowpart(i32 noundef %0, ptr noundef %1) unnamed_addr #9 !prof !34 {
  %3 = load i32, ptr %1, align 8
  %4 = trunc i32 %3 to i16
  switch i16 %4, label %29 [
    i16 37, label %5
    i16 43, label %5
  ]

5:                                                ; preds = %2, %2
  %6 = lshr i32 %3, 16
  %7 = and i32 %6, 255
  %8 = icmp eq i32 %7, %0
  br i1 %8, label %29, label %9

9:                                                ; preds = %5
  %10 = tail call i32 @byte_lowpart_offset(i32 noundef %0, i32 noundef %7) #21
  %11 = load i32, ptr %1, align 8
  %12 = and i32 %11, 65535
  %13 = icmp eq i32 %12, 43
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = zext i32 %10 to i64
  %16 = tail call ptr @adjust_address_1(ptr noundef nonnull %1, i32 noundef %0, i64 noundef %15, i32 noundef 0, i32 noundef 1) #21
  br label %29

17:                                               ; preds = %9
  %18 = lshr i32 %11, 16
  %19 = and i32 %18, 255
  %20 = tail call i32 @subreg_lowpart_offset(i32 noundef %0, i32 noundef %19) #21
  %21 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %22 = load i32, ptr %21, align 8, !tbaa !46
  %23 = load i32, ptr %1, align 8
  %24 = lshr i32 %23, 16
  %25 = and i32 %24, 255
  %26 = tail call i32 @subreg_regno_offset(i32 noundef %22, i32 noundef %25, i32 noundef %20, i32 noundef %0) #21
  %27 = add i32 %26, %22
  %28 = tail call ptr @gen_rtx_REG_offset(ptr noundef nonnull %1, i32 noundef %0, i32 noundef %27, i32 noundef %10) #21
  br label %29

29:                                               ; preds = %5, %2, %17, %14
  %30 = phi ptr [ %16, %14 ], [ %28, %17 ], [ null, %2 ], [ %1, %5 ]
  ret ptr %30
}

declare ptr @cselib_lookup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @cselib_preserved_value_p(ptr noundef) local_unnamed_addr #3

declare ptr @cselib_subst_to_values(ptr noundef) local_unnamed_addr #3

declare ptr @gen_rtx_fmt_ee_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @non_suitable_const(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #11 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !35
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

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @replace_expr_with_values(ptr noundef %0) unnamed_addr #9 !prof !34 {
  %2 = load i32, ptr %0, align 8
  %3 = trunc i32 %2 to i16
  switch i16 %3, label %30 [
    i16 37, label %32
    i16 43, label %4
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = load i32, ptr %6, align 8
  %8 = lshr i32 %7, 16
  %9 = and i32 %8, 255
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %4
  %12 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57, i32 1), align 8, !tbaa !262
  %13 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !46
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.mem_attrs, ptr %14, i64 0, i32 5
  %18 = load i8, ptr %17, align 8, !tbaa !274
  br label %19

19:                                               ; preds = %16, %11
  %20 = phi i8 [ %18, %16 ], [ 0, %11 ]
  %21 = tail call i32 %12(i8 noundef zeroext %20) #21
  br label %22

22:                                               ; preds = %4, %19
  %23 = phi i32 [ %21, %19 ], [ %9, %4 ]
  %24 = tail call ptr @cselib_lookup(ptr noundef nonnull %6, i32 noundef %23, i32 noundef 0) #21
  %25 = icmp eq ptr %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.cselib_val_struct, ptr %24, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !155
  %29 = tail call ptr @replace_equiv_address_nv(ptr noundef nonnull %0, ptr noundef %28) #21
  br label %32

30:                                               ; preds = %1
  %31 = tail call ptr @cselib_subst_to_values(ptr noundef nonnull %0) #21
  br label %32

32:                                               ; preds = %26, %22, %1, %30
  %33 = phi ptr [ %31, %30 ], [ null, %1 ], [ %29, %26 ], [ null, %22 ]
  ret ptr %33
}

declare ptr @shallow_copy_rtx_stat(ptr noundef) local_unnamed_addr #3

declare ptr @gen_rtx_fmt_e_stat(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc zeroext i8 @track_expr_p(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #9 !prof !34 {
  %3 = load i64, ptr %0, align 8
  %4 = trunc i64 %3 to i16
  switch i16 %4, label %120 [
    i16 37, label %5
    i16 32, label %13
    i16 34, label %13
  ]

5:                                                ; preds = %2
  %6 = load i8, ptr getelementptr inbounds ([191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 37, i64 11), align 1, !tbaa !46
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %120, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  %11 = icmp ne ptr %10, null
  %12 = zext i1 %11 to i8
  br label %120

13:                                               ; preds = %2, %2
  %14 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !46
  %16 = icmp eq ptr %15, null
  %17 = icmp ne i8 %1, 0
  %18 = and i1 %17, %16
  br i1 %18, label %120, label %19

19:                                               ; preds = %13
  %20 = and i64 %3, 65535
  %21 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %20, i64 11
  %22 = load i8, ptr %21, align 1, !tbaa !46
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %0, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !46
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
  %37 = tail call ptr @decl_debug_expr_lookup(ptr noundef nonnull %0) #21
  %38 = icmp eq ptr %37, null
  br i1 %38, label %46, label %39

39:                                               ; preds = %36
  %40 = tail call ptr @decl_debug_expr_lookup(ptr noundef nonnull %0) #21
  %41 = load i64, ptr %40, align 8
  %42 = and i64 %41, 65535
  %43 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %42
  %44 = load i32, ptr %43, align 4, !tbaa !50
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
  %63 = load ptr, ptr %62, align 8, !tbaa !46
  %64 = tail call fastcc zeroext i8 @contains_symbol_ref(ptr noundef %63)
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %66, label %120

66:                                               ; preds = %61
  br i1 %60, label %67, label %115

67:                                               ; preds = %66
  %68 = lshr i32 %58, 16
  %69 = and i32 %68, 255
  %70 = icmp eq i32 %69, 1
  br i1 %70, label %120, label %71

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.tree_common, ptr %47, i64 0, i32 2
  %73 = load ptr, ptr %72, align 8, !tbaa !46
  %74 = load i64, ptr %73, align 8
  %75 = trunc i64 %74 to i32
  %76 = and i32 %75, 65535
  %77 = add nsw i32 %76, -15
  %78 = icmp ult i32 %77, 4
  br i1 %78, label %120, label %79

79:                                               ; preds = %71
  %80 = getelementptr inbounds %struct.rtx_def, ptr %28, i64 0, i32 1, i32 0, i32 0, i64 1
  %81 = load ptr, ptr %80, align 8, !tbaa !46
  %82 = icmp eq ptr %81, null
  br i1 %82, label %87, label %83

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.mem_attrs, ptr %81, i64 0, i32 2
  %85 = load ptr, ptr %84, align 8, !tbaa !279
  %86 = icmp eq ptr %85, null
  br i1 %86, label %115, label %94

87:                                               ; preds = %79
  %88 = zext nneg i32 %69 to i64
  %89 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %88
  %90 = load i8, ptr %89, align 1, !tbaa !46
  %91 = zext i8 %90 to i64
  %92 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %91) #21
  %93 = icmp eq ptr %92, null
  br i1 %93, label %115, label %94

94:                                               ; preds = %87, %83
  %95 = load ptr, ptr %80, align 8, !tbaa !46
  %96 = icmp eq ptr %95, null
  br i1 %96, label %100, label %97

97:                                               ; preds = %94
  %98 = getelementptr inbounds %struct.mem_attrs, ptr %95, i64 0, i32 2
  %99 = load ptr, ptr %98, align 8, !tbaa !279
  br label %110

100:                                              ; preds = %94
  %101 = load i32, ptr %28, align 8
  %102 = lshr i32 %101, 16
  %103 = and i32 %102, 255
  %104 = icmp ne i32 %103, 1
  tail call void @llvm.assume(i1 %104)
  %105 = zext nneg i32 %103 to i64
  %106 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %105
  %107 = load i8, ptr %106, align 1, !tbaa !46
  %108 = zext i8 %107 to i64
  %109 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %108) #21
  br label %110

110:                                              ; preds = %100, %97
  %111 = phi ptr [ %99, %97 ], [ %109, %100 ]
  %112 = getelementptr inbounds %struct.rtx_def, ptr %111, i64 0, i32 1
  %113 = load i64, ptr %112, align 8, !tbaa !46
  %114 = icmp sgt i64 %113, 16
  br i1 %114, label %120, label %115

115:                                              ; preds = %57, %110, %87, %56, %83, %66
  %116 = load i64, ptr %0, align 8
  %117 = and i64 %116, -1099511627777
  store i64 %117, ptr %0, align 8
  %118 = load i64, ptr %47, align 8
  %119 = and i64 %118, -1099511627777
  store i64 %119, ptr %47, align 8
  br label %120

120:                                              ; preds = %39, %13, %71, %110, %67, %61, %52, %46, %27, %2, %5, %8, %115
  %121 = phi i8 [ 1, %115 ], [ 0, %5 ], [ %12, %8 ], [ 0, %2 ], [ 0, %27 ], [ 0, %46 ], [ 0, %52 ], [ 0, %61 ], [ 0, %71 ], [ 0, %67 ], [ 0, %110 ], [ 0, %13 ], [ 0, %39 ]
  ret i8 %121
}

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef zeroext i8 @track_loc_p(ptr nocapture noundef readonly %0, ptr noundef %1, i64 noundef %2, ptr noundef writeonly %3, ptr noundef writeonly %4) unnamed_addr #9 !prof !34 {
  %6 = tail call fastcc zeroext i8 @track_expr_p(ptr noundef %1, i8 noundef zeroext 1), !range !59
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
  %16 = load i32, ptr %15, align 8, !tbaa !46
  %17 = icmp ult i32 %16, 53
  br i1 %17, label %37, label %18

18:                                               ; preds = %14
  %19 = load ptr, ptr @regno_reg_rtx, align 8, !tbaa !35
  %20 = zext i32 %16 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !35
  %23 = load i32, ptr %22, align 8
  %24 = lshr i32 %23, 16
  %25 = and i32 %24, 255
  %26 = zext nneg i32 %11 to i64
  %27 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %26
  %28 = load i8, ptr %27, align 1, !tbaa !46
  %29 = zext nneg i32 %25 to i64
  %30 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %29
  %31 = load i8, ptr %30, align 1, !tbaa !46
  %32 = icmp ugt i8 %28, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %18
  %34 = tail call i32 @byte_lowpart_offset(i32 noundef %25, i32 noundef %11) #21
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %35, %2
  br label %37

37:                                               ; preds = %18, %33, %14, %8
  %38 = phi i64 [ %2, %14 ], [ %2, %8 ], [ %36, %33 ], [ %2, %18 ]
  %39 = phi i32 [ %11, %14 ], [ %11, %8 ], [ %25, %33 ], [ %11, %18 ]
  %40 = zext nneg i32 %39 to i64
  %41 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %40
  %42 = load i8, ptr %41, align 1, !tbaa !46
  %43 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 2
  %44 = load i64, ptr %43, align 8
  %45 = and i64 %44, 255
  %46 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %45
  %47 = load i8, ptr %46, align 1, !tbaa !46
  %48 = icmp ugt i8 %42, %47
  br i1 %48, label %49, label %60

49:                                               ; preds = %37
  %50 = trunc i64 %44 to i32
  %51 = and i32 %50, 255
  %52 = tail call i32 @byte_lowpart_offset(i32 noundef %51, i32 noundef %39) #21
  %53 = sext i32 %52 to i64
  %54 = sub nsw i64 0, %53
  %55 = icmp eq i64 %38, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %49
  %57 = load i64, ptr %43, align 8
  %58 = trunc i64 %57 to i32
  %59 = and i32 %58, 255
  br label %60

60:                                               ; preds = %37, %56, %49
  %61 = phi i64 [ 0, %56 ], [ %38, %49 ], [ %38, %37 ]
  %62 = phi i32 [ %59, %56 ], [ %39, %49 ], [ %39, %37 ]
  %63 = icmp ugt i64 %61, 15
  br i1 %63, label %70, label %64

64:                                               ; preds = %60
  %65 = icmp eq ptr %3, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %64
  store i32 %62, ptr %3, align 4, !tbaa !50
  br label %67

67:                                               ; preds = %66, %64
  %68 = icmp eq ptr %4, null
  br i1 %68, label %70, label %69

69:                                               ; preds = %67
  store i64 %61, ptr %4, align 8, !tbaa !125
  br label %70

70:                                               ; preds = %67, %69, %60, %5
  %71 = phi i8 [ 0, %5 ], [ 0, %60 ], [ 1, %69 ], [ 1, %67 ]
  ret i8 %71
}

; Function Attrs: cold nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @contains_symbol_ref(ptr noundef readonly %0) unnamed_addr #16 !prof !34 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %46, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 45
  br i1 %6, label %46, label %7

7:                                                ; preds = %3
  %8 = zext nneg i32 %5 to i64
  %9 = getelementptr inbounds [139 x ptr], ptr @rtx_format, i64 0, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !35
  %11 = getelementptr inbounds [139 x i8], ptr @rtx_length, i64 0, i64 %8
  %12 = load i8, ptr %11, align 1, !tbaa !46
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %46, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %16 = zext i8 %12 to i64
  br label %17

17:                                               ; preds = %14, %44
  %18 = phi i64 [ %16, %14 ], [ %19, %44 ]
  %19 = add nsw i64 %18, -1
  %20 = getelementptr inbounds i8, ptr %10, i64 %19
  %21 = load i8, ptr %20, align 1, !tbaa !46
  switch i8 %21, label %44 [
    i8 101, label %29
    i8 69, label %22
  ]

22:                                               ; preds = %17
  %23 = getelementptr inbounds [1 x %union.rtunion_def], ptr %15, i64 0, i64 %19
  %24 = load ptr, ptr %23, align 8, !tbaa !46
  %25 = load i32, ptr %24, align 8, !tbaa !146
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %44

27:                                               ; preds = %22
  %28 = zext nneg i32 %25 to i64
  br label %38

29:                                               ; preds = %17
  %30 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %31 = getelementptr inbounds [1 x %union.rtunion_def], ptr %30, i64 0, i64 %19
  %32 = load ptr, ptr %31, align 8, !tbaa !46
  %33 = tail call fastcc zeroext i8 @contains_symbol_ref(ptr noundef %32)
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %44, label %46

35:                                               ; preds = %38
  %36 = add nuw nsw i64 %39, 1
  %37 = icmp eq i64 %36, %28
  br i1 %37, label %44, label %38, !llvm.loop !280

38:                                               ; preds = %27, %35
  %39 = phi i64 [ 0, %27 ], [ %36, %35 ]
  %40 = getelementptr inbounds %struct.rtvec_def, ptr %24, i64 0, i32 1, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !35
  %42 = tail call fastcc zeroext i8 @contains_symbol_ref(ptr noundef %41)
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %35, label %46

44:                                               ; preds = %35, %22, %17, %29
  %45 = icmp sgt i64 %18, 1
  br i1 %45, label %17, label %46, !llvm.loop !281

46:                                               ; preds = %29, %44, %38, %7, %3, %1
  %47 = phi i8 [ 0, %1 ], [ 1, %3 ], [ 0, %7 ], [ 1, %38 ], [ 0, %44 ], [ 1, %29 ]
  ret i8 %47
}

declare ptr @gen_rtx_CONST_INT(i32 noundef, i64 noundef) local_unnamed_addr #3

declare i32 @byte_lowpart_offset(i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @adjust_address_1(ptr noundef, i32 noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @subreg_lowpart_offset(i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @subreg_regno_offset(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @gen_rtx_REG_offset(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @replace_equiv_address_nv(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc zeroext i8 @same_variable_part_p(ptr nocapture noundef readonly %0, ptr noundef %1, i64 noundef %2) unnamed_addr #9 !prof !34 {
  %4 = load i64, ptr %1, align 8
  %5 = and i64 %4, 65535
  %6 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !50
  %8 = icmp eq i32 %7, 3
  br i1 %8, label %9, label %97

9:                                                ; preds = %3
  %10 = load i32, ptr %0, align 8
  %11 = trunc i32 %10 to i16
  switch i16 %11, label %97 [
    i16 37, label %12
    i16 43, label %22
  ]

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %14 = load ptr, ptr %13, align 8, !tbaa !46
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %14, align 8, !tbaa !91
  br label %18

18:                                               ; preds = %12, %16
  %19 = phi ptr [ %17, %16 ], [ null, %12 ]
  br i1 %15, label %40, label %20

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.reg_attrs, ptr %14, i64 0, i32 1
  br label %36

22:                                               ; preds = %9
  %23 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %24 = load ptr, ptr %23, align 8, !tbaa !46
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = load ptr, ptr %24, align 8, !tbaa !94
  br label %28

28:                                               ; preds = %22, %26
  %29 = phi ptr [ %27, %26 ], [ null, %22 ]
  br i1 %25, label %40, label %30

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.mem_attrs, ptr %24, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !96
  %33 = icmp eq ptr %32, null
  br i1 %33, label %40, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.rtx_def, ptr %32, i64 0, i32 1
  br label %36

36:                                               ; preds = %20, %34
  %37 = phi ptr [ %35, %34 ], [ %21, %20 ]
  %38 = phi ptr [ %29, %34 ], [ %19, %20 ]
  %39 = load i64, ptr %37, align 8, !tbaa !46
  br label %40

40:                                               ; preds = %36, %28, %30, %18
  %41 = phi ptr [ %19, %18 ], [ %29, %30 ], [ %29, %28 ], [ %38, %36 ]
  %42 = phi i64 [ 0, %18 ], [ 0, %30 ], [ 0, %28 ], [ %39, %36 ]
  %43 = icmp eq ptr %41, null
  br i1 %43, label %97, label %44

44:                                               ; preds = %40
  %45 = load i64, ptr %41, align 8
  %46 = and i64 %45, 65535
  %47 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %46
  %48 = load i32, ptr %47, align 4, !tbaa !50
  %49 = icmp eq i32 %48, 3
  br i1 %49, label %50, label %97

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 2
  %52 = load i64, ptr %51, align 8
  %53 = and i64 %52, 16384
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %67, label %55

55:                                               ; preds = %50
  %56 = tail call ptr @decl_debug_expr_lookup(ptr noundef nonnull %1) #21
  %57 = icmp eq ptr %56, null
  br i1 %57, label %67, label %58

58:                                               ; preds = %55
  %59 = tail call ptr @decl_debug_expr_lookup(ptr noundef nonnull %1) #21
  %60 = load i64, ptr %59, align 8
  %61 = and i64 %60, 65535
  %62 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %61
  %63 = load i32, ptr %62, align 4, !tbaa !50
  %64 = icmp eq i32 %63, 3
  br i1 %64, label %65, label %67

65:                                               ; preds = %58
  %66 = tail call ptr @decl_debug_expr_lookup(ptr noundef nonnull %1) #21
  br label %67

67:                                               ; preds = %65, %58, %55, %50
  %68 = phi ptr [ %66, %65 ], [ %1, %58 ], [ %1, %55 ], [ %1, %50 ]
  %69 = load i64, ptr %41, align 8
  %70 = and i64 %69, 65535
  %71 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %70
  %72 = load i32, ptr %71, align 4, !tbaa !50
  %73 = icmp eq i32 %72, 3
  br i1 %73, label %74, label %91

74:                                               ; preds = %67
  %75 = getelementptr inbounds %struct.tree_decl_common, ptr %41, i64 0, i32 2
  %76 = load i64, ptr %75, align 8
  %77 = and i64 %76, 16384
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %91, label %79

79:                                               ; preds = %74
  %80 = tail call ptr @decl_debug_expr_lookup(ptr noundef nonnull %41) #21
  %81 = icmp eq ptr %80, null
  br i1 %81, label %91, label %82

82:                                               ; preds = %79
  %83 = tail call ptr @decl_debug_expr_lookup(ptr noundef nonnull %41) #21
  %84 = load i64, ptr %83, align 8
  %85 = and i64 %84, 65535
  %86 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %85
  %87 = load i32, ptr %86, align 4, !tbaa !50
  %88 = icmp eq i32 %87, 3
  br i1 %88, label %89, label %91

89:                                               ; preds = %82
  %90 = tail call ptr @decl_debug_expr_lookup(ptr noundef nonnull %41) #21
  br label %91

91:                                               ; preds = %67, %74, %79, %82, %89
  %92 = phi ptr [ %90, %89 ], [ %41, %82 ], [ %41, %79 ], [ %41, %74 ], [ %41, %67 ]
  %93 = icmp eq ptr %68, %92
  %94 = icmp eq i64 %42, %2
  %95 = select i1 %93, i1 %94, i1 false
  %96 = zext i1 %95 to i8
  br label %97

97:                                               ; preds = %40, %44, %9, %3, %91
  %98 = phi i8 [ %96, %91 ], [ 0, %3 ], [ 0, %9 ], [ 0, %44 ], [ 0, %40 ]
  ret i8 %98
}

declare ptr @gen_lowpart_SUBREG(i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @cselib_expand_value_rtx(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @simplify_gen_binary(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @find_reg_note(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @stack_adjust_offset_pre_post(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef %2) unnamed_addr #9 !prof !34 {
  %4 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = load ptr, ptr %4, align 8, !tbaa !46
  %8 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !35
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
  %18 = load ptr, ptr %17, align 8, !tbaa !46
  %19 = icmp eq ptr %18, %8
  br i1 %19, label %20, label %123

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 1
  %22 = load ptr, ptr %21, align 8, !tbaa !46
  %23 = load i32, ptr %22, align 8
  %24 = and i32 %23, 65535
  %25 = icmp eq i32 %24, 30
  br i1 %25, label %26, label %123

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 0, i32 1
  %28 = load i64, ptr %27, align 8, !tbaa !46
  %29 = load i64, ptr %2, align 8, !tbaa !125
  br i1 %13, label %30, label %32

30:                                               ; preds = %26
  %31 = add nsw i64 %29, %28
  store i64 %31, ptr %2, align 8, !tbaa !125
  br label %123

32:                                               ; preds = %26
  %33 = sub nsw i64 %29, %28
  store i64 %33, ptr %2, align 8, !tbaa !125
  br label %123

34:                                               ; preds = %3
  %35 = load i32, ptr %7, align 8
  %36 = and i32 %35, 65535
  %37 = icmp eq i32 %36, 43
  br i1 %37, label %38, label %123

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !46
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
  %46 = load ptr, ptr %45, align 8, !tbaa !46
  %47 = icmp eq ptr %46, %8
  br i1 %47, label %48, label %123

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.rtx_def, ptr %40, i64 0, i32 1, i32 0, i32 0, i64 1
  %50 = load ptr, ptr %49, align 8, !tbaa !46
  %51 = getelementptr inbounds %struct.rtx_def, ptr %50, i64 0, i32 1, i32 0, i32 0, i64 1
  %52 = load ptr, ptr %51, align 8, !tbaa !46
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
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 537, ptr noundef nonnull @.str.2) #21
  br label %61

61:                                               ; preds = %56, %60
  %62 = icmp eq i32 %42, 78
  %63 = getelementptr inbounds %struct.rtx_def, ptr %52, i64 0, i32 1
  %64 = load i64, ptr %63, align 8, !tbaa !46
  br i1 %62, label %65, label %68

65:                                               ; preds = %61
  %66 = load i64, ptr %1, align 8, !tbaa !125
  %67 = sub nsw i64 %66, %64
  store i64 %67, ptr %1, align 8, !tbaa !125
  br label %123

68:                                               ; preds = %61
  %69 = load i64, ptr %2, align 8, !tbaa !125
  %70 = sub nsw i64 %69, %64
  store i64 %70, ptr %2, align 8, !tbaa !125
  br label %123

71:                                               ; preds = %38
  %72 = getelementptr inbounds %struct.rtx_def, ptr %40, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !46
  %74 = icmp eq ptr %73, %8
  br i1 %74, label %75, label %123

75:                                               ; preds = %71
  %76 = lshr i32 %35, 16
  %77 = and i32 %76, 255
  %78 = zext nneg i32 %77 to i64
  %79 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %78
  %80 = load i8, ptr %79, align 1, !tbaa !46
  %81 = zext i8 %80 to i64
  %82 = load i64, ptr %1, align 8, !tbaa !125
  %83 = add nsw i64 %82, %81
  store i64 %83, ptr %1, align 8, !tbaa !125
  br label %123

84:                                               ; preds = %38
  %85 = getelementptr inbounds %struct.rtx_def, ptr %40, i64 0, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !46
  %87 = icmp eq ptr %86, %8
  br i1 %87, label %88, label %123

88:                                               ; preds = %84
  %89 = lshr i32 %35, 16
  %90 = and i32 %89, 255
  %91 = zext nneg i32 %90 to i64
  %92 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %91
  %93 = load i8, ptr %92, align 1, !tbaa !46
  %94 = zext i8 %93 to i64
  %95 = load i64, ptr %2, align 8, !tbaa !125
  %96 = add nsw i64 %95, %94
  store i64 %96, ptr %2, align 8, !tbaa !125
  br label %123

97:                                               ; preds = %38
  %98 = getelementptr inbounds %struct.rtx_def, ptr %40, i64 0, i32 1
  %99 = load ptr, ptr %98, align 8, !tbaa !46
  %100 = icmp eq ptr %99, %8
  br i1 %100, label %101, label %123

101:                                              ; preds = %97
  %102 = lshr i32 %35, 16
  %103 = and i32 %102, 255
  %104 = zext nneg i32 %103 to i64
  %105 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %104
  %106 = load i8, ptr %105, align 1, !tbaa !46
  %107 = zext i8 %106 to i64
  %108 = load i64, ptr %1, align 8, !tbaa !125
  %109 = sub nsw i64 %108, %107
  store i64 %109, ptr %1, align 8, !tbaa !125
  br label %123

110:                                              ; preds = %38
  %111 = getelementptr inbounds %struct.rtx_def, ptr %40, i64 0, i32 1
  %112 = load ptr, ptr %111, align 8, !tbaa !46
  %113 = icmp eq ptr %112, %8
  br i1 %113, label %114, label %123

114:                                              ; preds = %110
  %115 = lshr i32 %35, 16
  %116 = and i32 %115, 255
  %117 = zext nneg i32 %116 to i64
  %118 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %117
  %119 = load i8, ptr %118, align 1, !tbaa !46
  %120 = zext i8 %119 to i64
  %121 = load i64, ptr %2, align 8, !tbaa !125
  %122 = sub nsw i64 %121, %120
  store i64 %122, ptr %2, align 8, !tbaa !125
  br label %123

123:                                              ; preds = %38, %32, %30, %75, %88, %101, %114, %34, %68, %65, %110, %97, %84, %71, %44, %16, %20, %10
  ret void
}

declare void @print_inline_rtx(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

declare ptr @vec_heap_o_reserve(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal void @adjust_mem_stores(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #9 !prof !34 {
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 43
  br i1 %6, label %7, label %15

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !46
  %10 = tail call ptr @simplify_replace_fn_rtx(ptr noundef %9, ptr noundef null, ptr noundef nonnull @adjust_mems, ptr noundef %2) #21
  %11 = load ptr, ptr %8, align 8, !tbaa !46
  %12 = icmp eq ptr %10, %11
  br i1 %12, label %15, label %13

13:                                               ; preds = %7
  %14 = tail call zeroext i8 @validate_change(ptr noundef null, ptr noundef nonnull %8, ptr noundef %10, i8 noundef zeroext 1) #21
  br label %15

15:                                               ; preds = %7, %13, %3
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @adjust_mem_uses(ptr noundef %0, ptr noundef %1) #9 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  %4 = tail call ptr @simplify_replace_fn_rtx(ptr noundef %3, ptr noundef null, ptr noundef nonnull @adjust_mems, ptr noundef %1) #21
  %5 = load ptr, ptr %0, align 8, !tbaa !35
  %6 = icmp eq ptr %4, %5
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = tail call zeroext i8 @validate_change(ptr noundef null, ptr noundef nonnull %0, ptr noundef %4, i8 noundef zeroext 1) #21
  br label %9

9:                                                ; preds = %7, %2
  ret void
}

declare ptr @single_set_2(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @find_reg_equal_equiv_note(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @validate_change(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare ptr @gen_rtx_fmt_E_stat(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @rtvec_alloc(i32 noundef) local_unnamed_addr #3

declare void @free_EXPR_LIST_list(ptr noundef) local_unnamed_addr #3

declare ptr @simplify_replace_fn_rtx(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal ptr @adjust_mems(ptr noundef %0, ptr noundef %1, ptr noundef %2) #9 !prof !34 {
  %4 = load i32, ptr %0, align 8
  %5 = trunc i32 %4 to i16
  switch i16 %5, label %245 [
    i16 37, label %6
    i16 43, label %37
    i16 75, label %77
    i16 74, label %77
    i16 77, label %94
    i16 76, label %94
    i16 78, label %136
    i16 79, label %139
    i16 39, label %161
  ]

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.adjust_mem_data, ptr %2, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !141
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %245, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 2), align 16, !tbaa !35
  %12 = icmp ne ptr %11, %0
  %13 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 41), align 1
  %14 = icmp ne i8 %13, 0
  %15 = select i1 %12, i1 true, i1 %14
  br i1 %15, label %24, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.adjust_mem_data, ptr %2, i64 0, i32 2
  %18 = load i64, ptr %17, align 8, !tbaa !143
  %19 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 3, i32 2), align 8, !tbaa !134
  %20 = sext i32 %19 to i64
  %21 = sub nsw i64 %18, %20
  %22 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 5), align 8, !tbaa !35
  %23 = tail call ptr @plus_constant(ptr noundef %22, i64 noundef %21) #21
  br label %245

24:                                               ; preds = %10
  %25 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 4), align 16, !tbaa !35
  %26 = icmp eq ptr %25, %0
  %27 = select i1 %26, i1 %14, i1 false
  %28 = load i64, ptr @hard_frame_pointer_adjustment, align 8
  %29 = icmp ne i64 %28, -1
  %30 = select i1 %27, i1 %29, i1 false
  br i1 %30, label %31, label %245

31:                                               ; preds = %24
  %32 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 3, i32 2), align 8, !tbaa !134
  %33 = sext i32 %32 to i64
  %34 = sub nsw i64 %28, %33
  %35 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @global_rtl, i64 0, i64 5), align 8, !tbaa !35
  %36 = tail call ptr @plus_constant(ptr noundef %35, i64 noundef %34) #21
  br label %245

37:                                               ; preds = %3
  %38 = load i8, ptr %2, align 8, !tbaa !145
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %37
  %41 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 40), align 8, !tbaa !282
  %42 = tail call ptr %41(ptr noundef nonnull %0) #21
  %43 = icmp eq ptr %42, %0
  br i1 %43, label %50, label %44

44:                                               ; preds = %40
  %45 = load i32, ptr %42, align 8
  %46 = and i32 %45, 65535
  %47 = icmp eq i32 %46, 43
  br i1 %47, label %50, label %48

48:                                               ; preds = %44
  %49 = tail call ptr @simplify_replace_fn_rtx(ptr noundef nonnull %42, ptr noundef %1, ptr noundef nonnull @adjust_mems, ptr noundef nonnull %2) #21
  br label %245

50:                                               ; preds = %40, %44, %37
  %51 = phi ptr [ %0, %37 ], [ %42, %44 ], [ %42, %40 ]
  %52 = getelementptr inbounds %struct.rtx_def, ptr %51, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !46
  %54 = getelementptr inbounds %struct.adjust_mem_data, ptr %2, i64 0, i32 1
  %55 = load i32, ptr %54, align 4, !tbaa !141
  %56 = load i32, ptr %51, align 8
  %57 = lshr i32 %56, 16
  %58 = and i32 %57, 255
  store i32 %58, ptr %54, align 4, !tbaa !141
  %59 = load i8, ptr %2, align 8, !tbaa !145
  store i8 0, ptr %2, align 8, !tbaa !145
  %60 = tail call ptr @simplify_replace_fn_rtx(ptr noundef %53, ptr noundef %1, ptr noundef nonnull @adjust_mems, ptr noundef nonnull %2) #21
  store i8 %59, ptr %2, align 8, !tbaa !145
  store i32 %55, ptr %54, align 4, !tbaa !141
  %61 = icmp eq ptr %51, %0
  br i1 %61, label %62, label %65

62:                                               ; preds = %50
  %63 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 40), align 8, !tbaa !282
  %64 = tail call ptr %63(ptr noundef %60) #21
  br label %65

65:                                               ; preds = %62, %50
  %66 = phi ptr [ %64, %62 ], [ %60, %50 ]
  %67 = load ptr, ptr %52, align 8, !tbaa !46
  %68 = icmp eq ptr %66, %67
  br i1 %68, label %71, label %69

69:                                               ; preds = %65
  %70 = tail call ptr @replace_equiv_address_nv(ptr noundef nonnull %51, ptr noundef %66) #21
  br label %71

71:                                               ; preds = %69, %65
  %72 = phi ptr [ %70, %69 ], [ %51, %65 ]
  %73 = load i8, ptr %2, align 8, !tbaa !145
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %75, label %245

75:                                               ; preds = %71
  %76 = tail call ptr @avoid_constant_pool_reference(ptr noundef %72) #21
  br label %245

77:                                               ; preds = %3, %3
  %78 = lshr i32 %4, 16
  %79 = and i32 %78, 255
  %80 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !46
  %82 = and i32 %4, 65535
  %83 = icmp eq i32 %82, 75
  %84 = getelementptr inbounds %struct.adjust_mem_data, ptr %2, i64 0, i32 1
  %85 = load i32, ptr %84, align 4, !tbaa !141
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %86
  %88 = load i8, ptr %87, align 1, !tbaa !46
  %89 = zext i8 %88 to i64
  %90 = sub nsw i64 0, %89
  %91 = select i1 %83, i64 %89, i64 %90
  %92 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %91) #21
  %93 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %79, ptr noundef %81, ptr noundef %92) #21
  br label %94

94:                                               ; preds = %3, %3, %77
  %95 = phi ptr [ %0, %3 ], [ %93, %77 ], [ %0, %3 ]
  %96 = icmp eq ptr %95, %0
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %99 = load ptr, ptr %98, align 8, !tbaa !46
  br label %100

100:                                              ; preds = %97, %94
  %101 = phi ptr [ %99, %97 ], [ %95, %94 ]
  %102 = getelementptr inbounds %struct.adjust_mem_data, ptr %2, i64 0, i32 1
  %103 = load i32, ptr %102, align 4, !tbaa !141
  %104 = icmp ult i32 %103, 2
  br i1 %104, label %105, label %106

105:                                              ; preds = %100
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 851, ptr noundef nonnull @.str.2) #21
  br label %106

106:                                              ; preds = %100, %105
  %107 = tail call ptr @simplify_replace_fn_rtx(ptr noundef %101, ptr noundef %1, ptr noundef nonnull @adjust_mems, ptr noundef %2) #21
  %108 = load i32, ptr %0, align 8
  %109 = lshr i32 %108, 16
  %110 = and i32 %109, 255
  %111 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %112 = load ptr, ptr %111, align 8, !tbaa !46
  %113 = trunc i32 %108 to i16
  switch i16 %113, label %120 [
    i16 75, label %114
    i16 77, label %114
  ]

114:                                              ; preds = %106, %106
  %115 = load i32, ptr %102, align 4, !tbaa !141
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %116
  %118 = load i8, ptr %117, align 1, !tbaa !46
  %119 = zext i8 %118 to i64
  br label %127

120:                                              ; preds = %106
  %121 = load i32, ptr %102, align 4, !tbaa !141
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %122
  %124 = load i8, ptr %123, align 1, !tbaa !46
  %125 = zext i8 %124 to i64
  %126 = sub nsw i64 0, %125
  br label %127

127:                                              ; preds = %120, %114
  %128 = phi i64 [ %119, %114 ], [ %126, %120 ]
  %129 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %128) #21
  %130 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 49, i32 noundef %110, ptr noundef %112, ptr noundef %129) #21
  %131 = load ptr, ptr %111, align 8, !tbaa !46
  %132 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 23, i32 noundef 0, ptr noundef %131, ptr noundef %130) #21
  %133 = getelementptr inbounds %struct.adjust_mem_data, ptr %2, i64 0, i32 3
  %134 = load ptr, ptr %133, align 8, !tbaa !144
  %135 = tail call ptr @alloc_EXPR_LIST(i32 noundef 0, ptr noundef %132, ptr noundef %134) #21
  store ptr %135, ptr %133, align 8, !tbaa !144
  br label %245

136:                                              ; preds = %3
  %137 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %138 = load ptr, ptr %137, align 8, !tbaa !46
  br label %139

139:                                              ; preds = %3, %136
  %140 = phi ptr [ %0, %3 ], [ %138, %136 ]
  %141 = icmp eq ptr %140, %0
  br i1 %141, label %142, label %145

142:                                              ; preds = %139
  %143 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %144 = load ptr, ptr %143, align 8, !tbaa !46
  br label %145

145:                                              ; preds = %142, %139
  %146 = phi ptr [ %144, %142 ], [ %140, %139 ]
  %147 = getelementptr inbounds %struct.adjust_mem_data, ptr %2, i64 0, i32 1
  %148 = load i32, ptr %147, align 4, !tbaa !141
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %145
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 869, ptr noundef nonnull @.str.2) #21
  br label %151

151:                                              ; preds = %145, %150
  %152 = tail call ptr @simplify_replace_fn_rtx(ptr noundef %146, ptr noundef %1, ptr noundef nonnull @adjust_mems, ptr noundef %2) #21
  %153 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %154 = load ptr, ptr %153, align 8, !tbaa !46
  %155 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %156 = load ptr, ptr %155, align 8, !tbaa !46
  %157 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 23, i32 noundef 0, ptr noundef %154, ptr noundef %156) #21
  %158 = getelementptr inbounds %struct.adjust_mem_data, ptr %2, i64 0, i32 3
  %159 = load ptr, ptr %158, align 8, !tbaa !144
  %160 = tail call ptr @alloc_EXPR_LIST(i32 noundef 0, ptr noundef %157, ptr noundef %159) #21
  store ptr %160, ptr %158, align 8, !tbaa !144
  br label %245

161:                                              ; preds = %3
  %162 = load i8, ptr %2, align 8, !tbaa !145
  store i8 1, ptr %2, align 8, !tbaa !145
  %163 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %164 = load ptr, ptr %163, align 8, !tbaa !46
  %165 = tail call ptr @simplify_replace_fn_rtx(ptr noundef %164, ptr noundef %1, ptr noundef nonnull @adjust_mems, ptr noundef nonnull %2) #21
  store i8 %162, ptr %2, align 8, !tbaa !145
  %166 = tail call ptr @simplify_replace_fn_rtx(ptr noundef %165, ptr noundef %1, ptr noundef nonnull @adjust_mems, ptr noundef nonnull %2) #21
  %167 = load ptr, ptr %163, align 8, !tbaa !46
  %168 = icmp eq ptr %166, %167
  br i1 %168, label %197, label %169

169:                                              ; preds = %161
  %170 = load i32, ptr %0, align 8
  %171 = lshr i32 %170, 16
  %172 = and i32 %171, 255
  %173 = load i32, ptr %167, align 8
  %174 = lshr i32 %173, 16
  %175 = and i32 %174, 255
  %176 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %177 = load i32, ptr %176, align 8, !tbaa !46
  %178 = tail call ptr @simplify_gen_subreg(i32 noundef %172, ptr noundef %166, i32 noundef %175, i32 noundef %177) #21
  %179 = icmp eq ptr %178, null
  br i1 %179, label %180, label %197

180:                                              ; preds = %169
  %181 = load i32, ptr %0, align 8
  %182 = lshr i32 %181, 16
  %183 = and i32 %182, 255
  %184 = load ptr, ptr %163, align 8, !tbaa !46
  %185 = load i32, ptr %184, align 8
  %186 = lshr i32 %185, 16
  %187 = and i32 %186, 255
  %188 = load i32, ptr %176, align 8, !tbaa !46
  %189 = tail call ptr @simplify_gen_subreg(i32 noundef %183, ptr noundef %165, i32 noundef %187, i32 noundef %188) #21
  %190 = icmp eq ptr %189, null
  br i1 %190, label %191, label %197

191:                                              ; preds = %180
  %192 = load i32, ptr %0, align 8
  %193 = lshr i32 %192, 16
  %194 = and i32 %193, 255
  %195 = load i32, ptr %176, align 8, !tbaa !46
  %196 = tail call ptr @gen_rtx_fmt_ei_stat(i32 noundef 39, i32 noundef %194, ptr noundef %165, i32 noundef %195) #21
  br label %197

197:                                              ; preds = %161, %180, %191, %169
  %198 = phi ptr [ %178, %169 ], [ %196, %191 ], [ %189, %180 ], [ %0, %161 ]
  %199 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !50
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %245, label %201

201:                                              ; preds = %197
  %202 = load i32, ptr %198, align 8
  %203 = and i32 %202, 65535
  %204 = icmp eq i32 %203, 39
  br i1 %204, label %205, label %245

205:                                              ; preds = %201
  %206 = getelementptr inbounds %struct.rtx_def, ptr %198, i64 0, i32 1
  %207 = load ptr, ptr %206, align 8, !tbaa !46
  %208 = load i32, ptr %207, align 8
  %209 = trunc i32 %208 to i16
  switch i16 %209, label %245 [
    i16 49, label %210
    i16 50, label %210
    i16 52, label %210
    i16 65, label %210
  ]

210:                                              ; preds = %205, %205, %205, %205
  %211 = lshr i32 %202, 16
  %212 = and i32 %211, 255
  %213 = zext nneg i32 %212 to i64
  %214 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %213
  %215 = load i8, ptr %214, align 1, !tbaa !46
  %216 = icmp eq i8 %215, 2
  br i1 %216, label %217, label %245

217:                                              ; preds = %210
  %218 = lshr i32 %208, 16
  %219 = and i32 %218, 255
  %220 = zext nneg i32 %219 to i64
  %221 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %220
  %222 = load i8, ptr %221, align 1, !tbaa !46
  %223 = icmp eq i8 %222, 2
  br i1 %223, label %224, label %245

224:                                              ; preds = %217
  %225 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %213
  %226 = load i8, ptr %225, align 1, !tbaa !46
  %227 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %220
  %228 = load i8, ptr %227, align 1, !tbaa !46
  %229 = icmp ult i8 %226, %228
  br i1 %229, label %230, label %245

230:                                              ; preds = %224
  %231 = tail call i32 @subreg_lowpart_p(ptr noundef nonnull %198) #21
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %245, label %233

233:                                              ; preds = %230
  %234 = tail call i32 @for_each_rtx(ptr noundef nonnull %206, ptr noundef nonnull @use_narrower_mode_test, ptr noundef nonnull %198) #21
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %236, label %245

236:                                              ; preds = %233
  %237 = load ptr, ptr %206, align 8, !tbaa !46
  %238 = load i32, ptr %198, align 8
  %239 = lshr i32 %238, 16
  %240 = and i32 %239, 255
  %241 = load i32, ptr %237, align 8
  %242 = lshr i32 %241, 16
  %243 = and i32 %242, 255
  %244 = tail call fastcc ptr @use_narrower_mode(ptr noundef nonnull %237, i32 noundef %240, i32 noundef %243)
  br label %245

245:                                              ; preds = %205, %3, %197, %201, %210, %217, %224, %230, %233, %71, %75, %24, %6, %236, %151, %127, %48, %31, %16
  %246 = phi ptr [ %244, %236 ], [ %152, %151 ], [ %107, %127 ], [ %49, %48 ], [ %36, %31 ], [ %23, %16 ], [ %0, %6 ], [ %0, %24 ], [ %72, %71 ], [ %76, %75 ], [ %198, %233 ], [ %198, %230 ], [ %198, %224 ], [ %198, %217 ], [ %198, %210 ], [ %198, %201 ], [ %198, %197 ], [ null, %3 ], [ %198, %205 ]
  ret ptr %246
}

declare ptr @avoid_constant_pool_reference(ptr noundef) local_unnamed_addr #3

declare ptr @alloc_EXPR_LIST(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @simplify_gen_subreg(i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @gen_rtx_fmt_ei_stat(i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @subreg_lowpart_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal i32 @use_narrower_mode_test(ptr nocapture noundef readonly %0, ptr noundef %1) #9 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 65535
  %6 = zext nneg i32 %5 to i64
  %7 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !50
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
  %14 = load ptr, ptr %13, align 8, !tbaa !46
  %15 = load i32, ptr %14, align 8
  %16 = lshr i32 %15, 16
  %17 = and i32 %16, 255
  %18 = tail call ptr @cselib_lookup(ptr noundef nonnull %3, i32 noundef %17, i32 noundef 0) #21
  %19 = icmp eq ptr %18, null
  %20 = select i1 %19, i32 -1, i32 1
  br label %27

21:                                               ; preds = %10
  %22 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %23 = tail call i32 @for_each_rtx(ptr noundef nonnull %22, ptr noundef nonnull @use_narrower_mode_test, ptr noundef %1) #21
  %24 = icmp eq i32 %23, 0
  %25 = select i1 %24, i32 -1, i32 1
  br label %27

26:                                               ; preds = %10
  br label %27

27:                                               ; preds = %10, %10, %21, %10, %12, %2, %26
  %28 = phi i32 [ 1, %26 ], [ -1, %2 ], [ %20, %12 ], [ 0, %10 ], [ %25, %21 ], [ 0, %10 ], [ 0, %10 ]
  ret i32 %28
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @use_narrower_mode(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #9 !prof !34 {
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = zext nneg i32 %5 to i64
  %7 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !50
  %9 = icmp eq i32 %8, 9
  br i1 %9, label %10, label %12

10:                                               ; preds = %3
  %11 = tail call ptr @lowpart_subreg(i32 noundef %1, ptr noundef nonnull %0, i32 noundef %2) #21
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
  %15 = tail call ptr @lowpart_subreg(i32 noundef %1, ptr noundef nonnull %0, i32 noundef %2) #21
  br label %16

16:                                               ; preds = %10, %14, %35, %28, %18
  %17 = phi ptr [ %27, %18 ], [ %34, %28 ], [ %11, %10 ], [ null, %35 ], [ %15, %14 ]
  ret ptr %17

18:                                               ; preds = %12, %12, %12
  %19 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !46
  %21 = tail call fastcc ptr @use_narrower_mode(ptr noundef %20, i32 noundef %1, i32 noundef %2)
  %22 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %23 = load ptr, ptr %22, align 8, !tbaa !46
  %24 = tail call fastcc ptr @use_narrower_mode(ptr noundef %23, i32 noundef %1, i32 noundef %2)
  %25 = load i32, ptr %0, align 8
  %26 = and i32 %25, 65535
  %27 = tail call ptr @simplify_gen_binary(i32 noundef %26, i32 noundef %1, ptr noundef %21, ptr noundef %24) #21
  br label %16

28:                                               ; preds = %12
  %29 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !46
  %31 = tail call fastcc ptr @use_narrower_mode(ptr noundef %30, i32 noundef %1, i32 noundef %2)
  %32 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %33 = load ptr, ptr %32, align 8, !tbaa !46
  %34 = tail call ptr @simplify_gen_binary(i32 noundef 65, i32 noundef %1, ptr noundef %31, ptr noundef %33) #21
  br label %16

35:                                               ; preds = %12
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 787, ptr noundef nonnull @.str.2) #21
  br label %16
}

declare ptr @plus_constant(ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @lowpart_subreg(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @gen_rtx_MEM(i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @get_spill_slot_decl(i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @dataflow_set_destroy(ptr nocapture noundef %0) unnamed_addr #9 !prof !34 {
  br label %2

2:                                                ; preds = %1, %12
  %3 = phi i64 [ 0, %1 ], [ %13, %12 ]
  %4 = getelementptr inbounds %struct.dataflow_set_def, ptr %0, i64 0, i32 1, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !35
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %2, %7
  %8 = phi ptr [ %9, %7 ], [ %5, %2 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !161
  %10 = load ptr, ptr @attrs_pool, align 8, !tbaa !35
  tail call void @pool_free(ptr noundef %10, ptr noundef nonnull %8) #21
  %11 = icmp eq ptr %9, null
  br i1 %11, label %12, label %7, !llvm.loop !283

12:                                               ; preds = %7, %2
  store ptr null, ptr %4, align 8, !tbaa !35
  %13 = add nuw nsw i64 %3, 1
  %14 = icmp eq i64 %13, 53
  br i1 %14, label %15, label %2, !llvm.loop !284

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.dataflow_set_def, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !77
  tail call fastcc void @shared_hash_destroy(ptr noundef %17)
  store ptr null, ptr %16, align 8, !tbaa !77
  ret void
}

declare void @free_aux_for_blocks() local_unnamed_addr #3

declare void @htab_delete(ptr noundef) local_unnamed_addr #3

declare void @free_alloc_pool(ptr noundef) local_unnamed_addr #3

declare void @cselib_finish() local_unnamed_addr #3

declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @shared_hash_destroy(ptr noundef %0) unnamed_addr #9 !prof !34 {
  %2 = load i32, ptr %0, align 8, !tbaa !75
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1378, ptr noundef nonnull @.str.2) #21
  br label %5

5:                                                ; preds = %1, %4
  %6 = load i32, ptr %0, align 8, !tbaa !75
  %7 = add nsw i32 %6, -1
  store i32 %7, ptr %0, align 8, !tbaa !75
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.shared_hash_def, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !83
  tail call void @htab_delete(ptr noundef %11) #21
  %12 = load ptr, ptr @shared_hash_pool, align 8, !tbaa !35
  tail call void @pool_free(ptr noundef %12, ptr noundef nonnull %0) #21
  br label %13

13:                                               ; preds = %9, %5
  ret void
}

declare i32 @pre_and_rev_post_order_compute(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare ptr @fibheap_new() local_unnamed_addr #3

declare ptr @sbitmap_alloc(i32 noundef) local_unnamed_addr #3

declare void @sbitmap_zero(ptr noundef) local_unnamed_addr #3

declare ptr @fibheap_insert(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare void @sbitmap_ones(ptr noundef) local_unnamed_addr #3

declare i32 @fibheap_empty(ptr noundef) local_unnamed_addr #3

declare ptr @fibheap_extract_min(ptr noundef) local_unnamed_addr #3

declare i64 @htab_size(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @dataflow_set_clear(ptr nocapture noundef %0) unnamed_addr #9 !prof !34 {
  br label %2

2:                                                ; preds = %1, %12
  %3 = phi i64 [ 0, %1 ], [ %13, %12 ]
  %4 = getelementptr inbounds %struct.dataflow_set_def, ptr %0, i64 0, i32 1, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !35
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %2, %7
  %8 = phi ptr [ %9, %7 ], [ %5, %2 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !161
  %10 = load ptr, ptr @attrs_pool, align 8, !tbaa !35
  tail call void @pool_free(ptr noundef %10, ptr noundef nonnull %8) #21
  %11 = icmp eq ptr %9, null
  br i1 %11, label %12, label %7, !llvm.loop !283

12:                                               ; preds = %7, %2
  store ptr null, ptr %4, align 8, !tbaa !35
  %13 = add nuw nsw i64 %3, 1
  %14 = icmp eq i64 %13, 53
  br i1 %14, label %15, label %2, !llvm.loop !285

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.dataflow_set_def, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !77
  tail call fastcc void @shared_hash_destroy(ptr noundef %17)
  %18 = load ptr, ptr @empty_shared_hash, align 8, !tbaa !35
  %19 = load i32, ptr %18, align 8, !tbaa !75
  %20 = add nsw i32 %19, 1
  store i32 %20, ptr %18, align 8, !tbaa !75
  store ptr %18, ptr %16, align 8, !tbaa !77
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @dataflow_set_copy(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #9 !prof !34 {
  br label %3

3:                                                ; preds = %2, %33
  %4 = phi i64 [ 0, %2 ], [ %34, %33 ]
  %5 = getelementptr inbounds %struct.dataflow_set_def, ptr %0, i64 0, i32 1, i64 %4
  %6 = getelementptr inbounds %struct.dataflow_set_def, ptr %1, i64 0, i32 1, i64 %4
  %7 = load ptr, ptr %6, align 8, !tbaa !35
  %8 = load ptr, ptr %5, align 8, !tbaa !35
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %3, %10
  %11 = phi ptr [ %12, %10 ], [ %8, %3 ]
  %12 = load ptr, ptr %11, align 8, !tbaa !161
  %13 = load ptr, ptr @attrs_pool, align 8, !tbaa !35
  tail call void @pool_free(ptr noundef %13, ptr noundef nonnull %11) #21
  %14 = icmp eq ptr %12, null
  br i1 %14, label %15, label %10, !llvm.loop !283

15:                                               ; preds = %10, %3
  store ptr null, ptr %5, align 8, !tbaa !35
  %16 = icmp eq ptr %7, null
  br i1 %16, label %33, label %17

17:                                               ; preds = %15, %17
  %18 = phi ptr [ %31, %17 ], [ %7, %15 ]
  %19 = load ptr, ptr @attrs_pool, align 8, !tbaa !35
  %20 = tail call ptr @pool_alloc(ptr noundef %19) #21
  %21 = getelementptr inbounds %struct.attrs_def, ptr %18, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !157
  %23 = getelementptr inbounds %struct.attrs_def, ptr %20, i64 0, i32 1
  store ptr %22, ptr %23, align 8, !tbaa !157
  %24 = getelementptr inbounds %struct.attrs_def, ptr %18, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !159
  %26 = getelementptr inbounds %struct.attrs_def, ptr %20, i64 0, i32 2
  store ptr %25, ptr %26, align 8, !tbaa !159
  %27 = getelementptr inbounds %struct.attrs_def, ptr %18, i64 0, i32 3
  %28 = load i64, ptr %27, align 8, !tbaa !160
  %29 = getelementptr inbounds %struct.attrs_def, ptr %20, i64 0, i32 3
  store i64 %28, ptr %29, align 8, !tbaa !160
  %30 = load ptr, ptr %5, align 8, !tbaa !35
  store ptr %30, ptr %20, align 8, !tbaa !161
  store ptr %20, ptr %5, align 8, !tbaa !35
  %31 = load ptr, ptr %18, align 8, !tbaa !161
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %17, !llvm.loop !286

33:                                               ; preds = %17, %15
  %34 = add nuw nsw i64 %4, 1
  %35 = icmp eq i64 %34, 53
  br i1 %35, label %36, label %3, !llvm.loop !287

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.dataflow_set_def, ptr %0, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !77
  tail call fastcc void @shared_hash_destroy(ptr noundef %38)
  %39 = getelementptr inbounds %struct.dataflow_set_def, ptr %1, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !77
  %41 = load i32, ptr %40, align 8, !tbaa !75
  %42 = add nsw i32 %41, 1
  store i32 %42, ptr %40, align 8, !tbaa !75
  store ptr %40, ptr %37, align 8, !tbaa !77
  %43 = load i64, ptr %1, align 8, !tbaa !79
  store i64 %43, ptr %0, align 8, !tbaa !79
  ret void
}

declare void @inform(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @dump_dataflow_set(ptr nocapture noundef readonly %0) unnamed_addr #9 !prof !34 {
  %2 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %3 = load i64, ptr %0, align 8, !tbaa !79
  %4 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.43, i64 noundef %3)
  br label %5

5:                                                ; preds = %1, %43
  %6 = phi i64 [ 0, %1 ], [ %44, %43 ]
  %7 = getelementptr inbounds %struct.dataflow_set_def, ptr %0, i64 0, i32 1, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !35
  %9 = icmp eq ptr %8, null
  br i1 %9, label %43, label %10

10:                                               ; preds = %5
  %11 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %12 = trunc i64 %6 to i32
  %13 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef nonnull @.str.44, i32 noundef %12)
  %14 = load ptr, ptr %7, align 8, !tbaa !35
  %15 = icmp eq ptr %14, null
  br i1 %15, label %40, label %16

16:                                               ; preds = %10, %33
  %17 = phi ptr [ %38, %33 ], [ %14, %10 ]
  %18 = getelementptr inbounds %struct.attrs_def, ptr %17, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !159
  %20 = icmp eq ptr %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %16
  %22 = load i64, ptr %19, align 8
  %23 = and i64 %22, 65535
  %24 = icmp ne i64 %23, 1
  %25 = zext i1 %24 to i8
  br label %26

26:                                               ; preds = %21, %16
  %27 = phi i8 [ 1, %16 ], [ %25, %21 ]
  %28 = icmp eq i8 %27, 0
  %29 = load ptr, ptr @dump_file, align 8, !tbaa !35
  br i1 %28, label %31, label %30

30:                                               ; preds = %26
  tail call void @print_mem_expr(ptr noundef %29, ptr noundef %19) #21
  br label %33

31:                                               ; preds = %26
  %32 = tail call i32 @print_rtl_single(ptr noundef %29, ptr noundef %19) #21
  br label %33

33:                                               ; preds = %31, %30
  %34 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %35 = getelementptr inbounds %struct.attrs_def, ptr %17, i64 0, i32 3
  %36 = load i64, ptr %35, align 8, !tbaa !160
  %37 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %34, ptr noundef nonnull @.str.45, i64 noundef %36)
  %38 = load ptr, ptr %17, align 8, !tbaa !35
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %16, !llvm.loop !288

40:                                               ; preds = %33, %10
  %41 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %42 = tail call i32 @fputc(i32 10, ptr %41)
  br label %43

43:                                               ; preds = %5, %40
  %44 = add nuw nsw i64 %6, 1
  %45 = icmp eq i64 %44, 53
  br i1 %45, label %46, label %5, !llvm.loop !289

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.dataflow_set_def, ptr %0, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !77
  %49 = getelementptr inbounds %struct.shared_hash_def, ptr %48, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !83
  %51 = tail call i64 @htab_elements(ptr noundef %50) #21
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %46
  %54 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %55 = tail call i64 @fwrite(ptr nonnull @.str.46, i64 11, i64 1, ptr %54)
  tail call void @htab_traverse(ptr noundef %50, ptr noundef nonnull @dump_var_slot, ptr noundef null) #21
  br label %56

56:                                               ; preds = %46, %53
  %57 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %58 = tail call i32 @fputc(i32 10, ptr %57)
  ret void
}

declare void @fibheap_delete(ptr noundef) local_unnamed_addr #3

declare void @htab_traverse(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @variable_merge_over_src(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #9 !prof !34 {
  %3 = load ptr, ptr %1, align 8, !tbaa !180
  %4 = load ptr, ptr %0, align 8, !tbaa !35
  %5 = load ptr, ptr %4, align 8, !tbaa !204
  %6 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !50
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %24, label %8

8:                                                ; preds = %2
  %9 = icmp eq ptr %5, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %8
  %11 = load i64, ptr %5, align 8
  %12 = and i64 %11, 65535
  %13 = icmp eq i64 %12, 1
  br label %14

14:                                               ; preds = %10, %8
  %15 = phi i1 [ false, %8 ], [ %13, %10 ]
  %16 = or i1 %9, %15
  br i1 %16, label %48, label %17

17:                                               ; preds = %14
  %18 = load i64, ptr %5, align 8
  %19 = and i64 %18, 65535
  %20 = icmp eq i64 %19, 37
  br i1 %20, label %48, label %21

21:                                               ; preds = %17
  %22 = tail call ptr @target_for_debug_bind(ptr noundef nonnull %5) #21
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %48

24:                                               ; preds = %2, %21
  %25 = getelementptr inbounds %struct.dataflow_set_def, ptr %3, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !77
  %27 = icmp eq ptr %5, null
  br i1 %27, label %36, label %28

28:                                               ; preds = %24
  %29 = load i64, ptr %5, align 8
  %30 = and i64 %29, 65535
  %31 = icmp eq i64 %30, 1
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !46
  %35 = getelementptr inbounds %struct.cselib_val_struct, ptr %34, i64 0, i32 1
  br label %38

36:                                               ; preds = %28, %24
  %37 = getelementptr inbounds %struct.tree_decl_minimal, ptr %5, i64 0, i32 2
  br label %38

38:                                               ; preds = %32, %36
  %39 = phi ptr [ %35, %32 ], [ %37, %36 ]
  %40 = load i32, ptr %39, align 4, !tbaa !46
  %41 = getelementptr inbounds %struct.shared_hash_def, ptr %26, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !83
  %43 = load i32, ptr %26, align 8, !tbaa !75
  %44 = icmp slt i32 %43, 2
  %45 = zext i1 %44 to i32
  %46 = tail call ptr @htab_find_slot_with_hash(ptr noundef %42, ptr noundef %5, i32 noundef %40, i32 noundef %45) #21
  store ptr %4, ptr %46, align 8, !tbaa !35
  %47 = getelementptr inbounds %struct.variable_def, ptr %4, i64 0, i32 1
  br label %50

48:                                               ; preds = %14, %17, %21
  %49 = getelementptr inbounds %struct.dfset_merge, ptr %1, i64 0, i32 3
  br label %50

50:                                               ; preds = %48, %38
  %51 = phi ptr [ %49, %48 ], [ %47, %38 ]
  %52 = load i32, ptr %51, align 8, !tbaa !50
  %53 = add nsw i32 %52, 1
  store i32 %53, ptr %51, align 8, !tbaa !50
  ret i32 1
}

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @variable_merge_over_cur(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #9 !prof !34 {
  %3 = alloca ptr, align 8
  %4 = load ptr, ptr %1, align 8, !tbaa !180
  %5 = load ptr, ptr %0, align 8, !tbaa !35
  %6 = load ptr, ptr %5, align 8, !tbaa !204
  %7 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !50
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %26, label %9

9:                                                ; preds = %2
  %10 = icmp eq ptr %6, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %9
  %12 = load i64, ptr %6, align 8
  %13 = and i64 %12, 65535
  %14 = icmp eq i64 %13, 1
  br label %15

15:                                               ; preds = %11, %9
  %16 = phi i1 [ false, %9 ], [ %14, %11 ]
  %17 = or i1 %10, %16
  br i1 %17, label %26, label %18

18:                                               ; preds = %15
  %19 = load i64, ptr %6, align 8
  %20 = and i64 %19, 65535
  %21 = icmp eq i64 %20, 37
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = tail call ptr @target_for_debug_bind(ptr noundef nonnull %6) #21
  %24 = icmp ne ptr %23, null
  %25 = zext i1 %24 to i8
  br label %26

26:                                               ; preds = %2, %15, %18, %22
  %27 = phi i8 [ %25, %22 ], [ 0, %2 ], [ 1, %15 ], [ 1, %18 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #21
  %28 = getelementptr inbounds %struct.variable_def, ptr %5, i64 0, i32 2
  %29 = load i8, ptr %28, align 4, !tbaa !207
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3350, ptr noundef nonnull @.str.2) #21
  br label %32

32:                                               ; preds = %26, %31
  %33 = getelementptr inbounds %struct.variable_def, ptr %5, i64 0, i32 5
  %34 = load ptr, ptr %33, align 8, !tbaa !208
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3351, ptr noundef nonnull @.str.2) #21
  br label %37

37:                                               ; preds = %32, %36
  %38 = icmp eq i8 %27, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %37
  %40 = tail call i32 @variable_union(ptr noundef nonnull %0, ptr noundef %4)
  br label %459

41:                                               ; preds = %37
  %42 = load i8, ptr %28, align 4, !tbaa !207
  %43 = icmp eq i8 %42, 1
  br i1 %43, label %45, label %44

44:                                               ; preds = %41
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3356, ptr noundef nonnull @.str.2) #21
  br label %45

45:                                               ; preds = %41, %44
  %46 = getelementptr inbounds %struct.variable_def, ptr %5, i64 0, i32 5, i64 0, i32 2
  %47 = load i64, ptr %46, align 8, !tbaa !239
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %45
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3357, ptr noundef nonnull @.str.2) #21
  br label %50

50:                                               ; preds = %45, %49
  %51 = icmp eq ptr %6, null
  br i1 %51, label %60, label %52

52:                                               ; preds = %50
  %53 = load i64, ptr %6, align 8
  %54 = and i64 %53, 65535
  %55 = icmp eq i64 %54, 1
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !46
  %59 = getelementptr inbounds %struct.cselib_val_struct, ptr %58, i64 0, i32 1
  br label %62

60:                                               ; preds = %52, %50
  %61 = getelementptr inbounds %struct.tree_decl_minimal, ptr %6, i64 0, i32 2
  br label %62

62:                                               ; preds = %56, %60
  %63 = phi ptr [ %59, %56 ], [ %61, %60 ]
  %64 = load i32, ptr %63, align 4, !tbaa !46
  br i1 %51, label %70, label %65

65:                                               ; preds = %62
  %66 = load i64, ptr %6, align 8
  %67 = and i64 %66, 65535
  %68 = icmp eq i64 %67, 1
  %69 = zext i1 %68 to i8
  br label %70

70:                                               ; preds = %62, %65
  %71 = phi i8 [ 0, %62 ], [ %69, %65 ]
  %72 = icmp eq i8 %71, 0
  %73 = select i1 %72, ptr null, ptr %6
  %74 = getelementptr inbounds %struct.dfset_merge, ptr %1, i64 0, i32 2
  %75 = load ptr, ptr %74, align 8, !tbaa !182
  %76 = getelementptr inbounds %struct.dataflow_set_def, ptr %75, i64 0, i32 2
  %77 = load ptr, ptr %76, align 8, !tbaa !77
  %78 = getelementptr inbounds %struct.shared_hash_def, ptr %77, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !83
  %80 = tail call ptr @htab_find_with_hash(ptr noundef %79, ptr noundef %6, i32 noundef %64) #21
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %83

82:                                               ; preds = %70
  store i1 false, ptr @dst_can_be_shared, align 1
  br label %459

83:                                               ; preds = %70
  %84 = getelementptr inbounds %struct.dfset_merge, ptr %1, i64 0, i32 3
  %85 = load i32, ptr %84, align 8, !tbaa !184
  %86 = add nsw i32 %85, -1
  store i32 %86, ptr %84, align 8, !tbaa !184
  %87 = getelementptr inbounds %struct.variable_def, ptr %80, i64 0, i32 5
  %88 = load ptr, ptr %87, align 8, !tbaa !208
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %91

90:                                               ; preds = %83
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3373, ptr noundef nonnull @.str.2) #21
  br label %91

91:                                               ; preds = %83, %90
  %92 = getelementptr inbounds %struct.variable_def, ptr %80, i64 0, i32 2
  %93 = load i8, ptr %92, align 4, !tbaa !207
  %94 = icmp eq i8 %93, 1
  br i1 %94, label %96, label %95

95:                                               ; preds = %91
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3374, ptr noundef nonnull @.str.2) #21
  br label %96

96:                                               ; preds = %91, %95
  %97 = getelementptr inbounds %struct.variable_def, ptr %80, i64 0, i32 5, i64 0, i32 2
  %98 = load i64, ptr %97, align 8, !tbaa !239
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %96
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3375, ptr noundef nonnull @.str.2) #21
  br label %101

101:                                              ; preds = %96, %100
  %102 = getelementptr inbounds %struct.dataflow_set_def, ptr %4, i64 0, i32 2
  %103 = load ptr, ptr %102, align 8, !tbaa !77
  %104 = getelementptr inbounds %struct.shared_hash_def, ptr %103, i64 0, i32 1
  %105 = load ptr, ptr %104, align 8, !tbaa !83
  %106 = tail call ptr @htab_find_slot_with_hash(ptr noundef %105, ptr noundef %6, i32 noundef %64, i32 noundef 0) #21
  %107 = icmp eq ptr %106, null
  br i1 %107, label %125, label %108

108:                                              ; preds = %101
  %109 = load ptr, ptr %106, align 8, !tbaa !35
  %110 = getelementptr inbounds %struct.variable_def, ptr %109, i64 0, i32 1
  %111 = load i32, ptr %110, align 8, !tbaa !206
  %112 = icmp eq i32 %111, 1
  br i1 %112, label %114, label %113

113:                                              ; preds = %108
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3381, ptr noundef nonnull @.str.2) #21
  br label %114

114:                                              ; preds = %108, %113
  %115 = getelementptr inbounds %struct.variable_def, ptr %109, i64 0, i32 2
  %116 = load i8, ptr %115, align 4, !tbaa !207
  %117 = icmp eq i8 %116, 1
  br i1 %117, label %119, label %118

118:                                              ; preds = %114
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3382, ptr noundef nonnull @.str.2) #21
  br label %119

119:                                              ; preds = %114, %118
  %120 = getelementptr inbounds %struct.variable_def, ptr %109, i64 0, i32 5
  %121 = getelementptr inbounds %struct.variable_def, ptr %109, i64 0, i32 5, i64 0, i32 2
  %122 = load i64, ptr %121, align 8, !tbaa !239
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %126, label %124

124:                                              ; preds = %119
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3383, ptr noundef nonnull @.str.2) #21
  br label %126

125:                                              ; preds = %101
  store ptr null, ptr %3, align 8, !tbaa !35
  br label %126

126:                                              ; preds = %124, %119, %125
  %127 = phi ptr [ null, %125 ], [ %109, %119 ], [ %109, %124 ]
  %128 = phi ptr [ %3, %125 ], [ %120, %119 ], [ %120, %124 ]
  br i1 %107, label %129, label %223

129:                                              ; preds = %126
  %130 = tail call fastcc zeroext i8 @onepart_variable_different_p(ptr noundef nonnull %5, ptr noundef nonnull %80), !range !59
  %131 = icmp eq i8 %130, 0
  br i1 %131, label %132, label %160

132:                                              ; preds = %129
  %133 = load ptr, ptr %102, align 8, !tbaa !35
  %134 = load i32, ptr %133, align 8, !tbaa !75
  %135 = icmp slt i32 %134, 2
  br i1 %135, label %152, label %136

136:                                              ; preds = %132
  %137 = load ptr, ptr @shared_hash_pool, align 8, !tbaa !35
  %138 = tail call ptr @pool_alloc(ptr noundef %137) #21
  %139 = load i32, ptr %133, align 8, !tbaa !75
  %140 = icmp sgt i32 %139, 1
  br i1 %140, label %142, label %141

141:                                              ; preds = %136
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1353, ptr noundef nonnull @.str.2) #21
  br label %142

142:                                              ; preds = %141, %136
  store i32 1, ptr %138, align 8, !tbaa !75
  %143 = getelementptr inbounds %struct.shared_hash_def, ptr %133, i64 0, i32 1
  %144 = load ptr, ptr %143, align 8, !tbaa !83
  %145 = tail call i64 @htab_elements(ptr noundef %144) #21
  %146 = add i64 %145, 3
  %147 = tail call ptr @htab_create(i64 noundef %146, ptr noundef nonnull @variable_htab_hash, ptr noundef nonnull @variable_htab_eq, ptr noundef nonnull @variable_htab_free) #21
  %148 = getelementptr inbounds %struct.shared_hash_def, ptr %138, i64 0, i32 1
  store ptr %147, ptr %148, align 8, !tbaa !83
  %149 = load ptr, ptr %143, align 8, !tbaa !83
  tail call void @htab_traverse_noresize(ptr noundef %149, ptr noundef nonnull @vars_copy_1, ptr noundef %147) #21
  %150 = load i32, ptr %133, align 8, !tbaa !75
  %151 = add nsw i32 %150, -1
  store i32 %151, ptr %133, align 8, !tbaa !75
  store ptr %138, ptr %102, align 8, !tbaa !35
  br label %152

152:                                              ; preds = %132, %142
  %153 = load ptr, ptr %102, align 8, !tbaa !35
  %154 = getelementptr inbounds %struct.shared_hash_def, ptr %153, i64 0, i32 1
  %155 = load ptr, ptr %154, align 8, !tbaa !83
  %156 = tail call ptr @htab_find_slot_with_hash(ptr noundef %155, ptr noundef %6, i32 noundef %64, i32 noundef 1) #21
  store ptr %80, ptr %156, align 8, !tbaa !35
  %157 = getelementptr inbounds %struct.variable_def, ptr %80, i64 0, i32 1
  %158 = load i32, ptr %157, align 8, !tbaa !206
  %159 = add nsw i32 %158, 1
  store i32 %159, ptr %157, align 8, !tbaa !206
  br label %225

160:                                              ; preds = %129
  store i1 false, ptr @dst_can_be_shared, align 1
  %161 = load ptr, ptr %33, align 8, !tbaa !208
  call fastcc void @intersect_loc_chains(ptr noundef %73, ptr noundef nonnull %128, ptr noundef nonnull %1, ptr noundef %161, ptr noundef nonnull %80)
  %162 = load ptr, ptr %3, align 8, !tbaa !35
  %163 = icmp eq ptr %162, null
  br i1 %163, label %459, label %164

164:                                              ; preds = %160
  %165 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !50
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %182, label %167

167:                                              ; preds = %164
  br i1 %51, label %172, label %168

168:                                              ; preds = %167
  %169 = load i64, ptr %6, align 8
  %170 = and i64 %169, 65535
  %171 = icmp eq i64 %170, 1
  br label %172

172:                                              ; preds = %168, %167
  %173 = phi i1 [ false, %167 ], [ %171, %168 ]
  %174 = or i1 %51, %173
  br i1 %174, label %182, label %175

175:                                              ; preds = %172
  %176 = load i64, ptr %6, align 8
  %177 = and i64 %176, 65535
  %178 = icmp eq i64 %177, 37
  br i1 %178, label %182, label %179

179:                                              ; preds = %175
  %180 = tail call ptr @target_for_debug_bind(ptr noundef nonnull %6) #21
  %181 = icmp eq ptr %180, null
  br label %182

182:                                              ; preds = %164, %172, %175, %179
  %183 = phi i1 [ %181, %179 ], [ true, %164 ], [ false, %172 ], [ false, %175 ]
  %184 = load ptr, ptr @valvar_pool, align 8
  %185 = load ptr, ptr @var_pool, align 8
  %186 = select i1 %183, ptr %185, ptr %184
  %187 = tail call ptr @pool_alloc(ptr noundef %186) #21
  store ptr %6, ptr %187, align 8, !tbaa !204
  %188 = getelementptr inbounds %struct.variable_def, ptr %187, i64 0, i32 1
  store i32 1, ptr %188, align 8, !tbaa !206
  %189 = getelementptr inbounds %struct.variable_def, ptr %187, i64 0, i32 2
  store i8 1, ptr %189, align 4, !tbaa !207
  %190 = getelementptr inbounds %struct.variable_def, ptr %187, i64 0, i32 3
  store i8 0, ptr %190, align 1, !tbaa !237
  %191 = getelementptr inbounds %struct.variable_def, ptr %187, i64 0, i32 4
  store i8 0, ptr %191, align 2, !tbaa !238
  %192 = getelementptr inbounds %struct.variable_def, ptr %187, i64 0, i32 5
  %193 = getelementptr inbounds %struct.variable_def, ptr %187, i64 0, i32 5, i64 0, i32 2
  store i64 0, ptr %193, align 8, !tbaa !239
  store ptr %162, ptr %192, align 8, !tbaa !208
  %194 = getelementptr inbounds %struct.variable_def, ptr %187, i64 0, i32 5, i64 0, i32 1
  store ptr null, ptr %194, align 8, !tbaa !253
  %195 = load ptr, ptr %102, align 8, !tbaa !35
  %196 = load i32, ptr %195, align 8, !tbaa !75
  %197 = icmp slt i32 %196, 2
  br i1 %197, label %214, label %198

198:                                              ; preds = %182
  %199 = load ptr, ptr @shared_hash_pool, align 8, !tbaa !35
  %200 = tail call ptr @pool_alloc(ptr noundef %199) #21
  %201 = load i32, ptr %195, align 8, !tbaa !75
  %202 = icmp sgt i32 %201, 1
  br i1 %202, label %204, label %203

203:                                              ; preds = %198
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1353, ptr noundef nonnull @.str.2) #21
  br label %204

204:                                              ; preds = %203, %198
  store i32 1, ptr %200, align 8, !tbaa !75
  %205 = getelementptr inbounds %struct.shared_hash_def, ptr %195, i64 0, i32 1
  %206 = load ptr, ptr %205, align 8, !tbaa !83
  %207 = tail call i64 @htab_elements(ptr noundef %206) #21
  %208 = add i64 %207, 3
  %209 = tail call ptr @htab_create(i64 noundef %208, ptr noundef nonnull @variable_htab_hash, ptr noundef nonnull @variable_htab_eq, ptr noundef nonnull @variable_htab_free) #21
  %210 = getelementptr inbounds %struct.shared_hash_def, ptr %200, i64 0, i32 1
  store ptr %209, ptr %210, align 8, !tbaa !83
  %211 = load ptr, ptr %205, align 8, !tbaa !83
  tail call void @htab_traverse_noresize(ptr noundef %211, ptr noundef nonnull @vars_copy_1, ptr noundef %209) #21
  %212 = load i32, ptr %195, align 8, !tbaa !75
  %213 = add nsw i32 %212, -1
  store i32 %213, ptr %195, align 8, !tbaa !75
  store ptr %200, ptr %102, align 8, !tbaa !35
  br label %214

214:                                              ; preds = %182, %204
  %215 = load ptr, ptr %102, align 8, !tbaa !35
  %216 = getelementptr inbounds %struct.shared_hash_def, ptr %215, i64 0, i32 1
  %217 = load ptr, ptr %216, align 8, !tbaa !83
  %218 = tail call ptr @htab_find_slot_with_hash(ptr noundef %217, ptr noundef %6, i32 noundef %64, i32 noundef 1) #21
  %219 = load ptr, ptr %218, align 8, !tbaa !35
  %220 = icmp eq ptr %219, null
  br i1 %220, label %222, label %221

221:                                              ; preds = %214
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3423, ptr noundef nonnull @.str.2) #21
  br label %222

222:                                              ; preds = %214, %221
  store ptr %187, ptr %218, align 8, !tbaa !35
  br label %225

223:                                              ; preds = %126
  store i1 false, ptr @dst_can_be_shared, align 1
  %224 = load ptr, ptr %33, align 8, !tbaa !208
  call fastcc void @intersect_loc_chains(ptr noundef %73, ptr noundef nonnull %128, ptr noundef nonnull %1, ptr noundef %224, ptr noundef nonnull %80)
  br label %225

225:                                              ; preds = %223, %222, %152
  %226 = phi ptr [ %187, %222 ], [ %80, %152 ], [ %127, %223 ]
  %227 = phi ptr [ %218, %222 ], [ %156, %152 ], [ %106, %223 ]
  %228 = getelementptr inbounds %struct.variable_def, ptr %226, i64 0, i32 5
  br label %229

229:                                              ; preds = %290, %225
  %230 = phi ptr [ %228, %225 ], [ %291, %290 ]
  %231 = phi ptr [ %227, %225 ], [ %292, %290 ]
  %232 = load ptr, ptr %230, align 8, !tbaa !35
  store ptr %232, ptr %3, align 8, !tbaa !35
  %233 = icmp eq ptr %232, null
  br i1 %233, label %293, label %234

234:                                              ; preds = %229
  %235 = getelementptr inbounds %struct.location_chain_def, ptr %232, i64 0, i32 1
  %236 = load ptr, ptr %235, align 8, !tbaa !240
  %237 = load i32, ptr %236, align 8
  %238 = and i32 %237, 65535
  %239 = icmp eq i32 %238, 37
  br i1 %239, label %240, label %290

240:                                              ; preds = %234
  %241 = getelementptr inbounds %struct.rtx_def, ptr %236, i64 0, i32 1
  %242 = load i32, ptr %241, align 8, !tbaa !46
  %243 = zext i32 %242 to i64
  %244 = getelementptr inbounds %struct.dataflow_set_def, ptr %4, i64 0, i32 1, i64 %243
  %245 = load ptr, ptr %244, align 8, !tbaa !35
  %246 = icmp eq ptr %245, null
  br i1 %246, label %270, label %247

247:                                              ; preds = %240, %267
  %248 = phi ptr [ %268, %267 ], [ %245, %240 ]
  %249 = getelementptr inbounds %struct.attrs_def, ptr %248, i64 0, i32 1
  %250 = load ptr, ptr %249, align 8, !tbaa !157
  %251 = load i32, ptr %250, align 8
  %252 = xor i32 %251, %237
  %253 = and i32 %252, 16711680
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %255, label %267

255:                                              ; preds = %247
  %256 = getelementptr inbounds %struct.attrs_def, ptr %248, i64 0, i32 2
  %257 = load ptr, ptr %256, align 8, !tbaa !159
  %258 = icmp eq ptr %257, null
  br i1 %258, label %264, label %259

259:                                              ; preds = %255
  %260 = load i64, ptr %257, align 8
  %261 = and i64 %260, 65535
  %262 = icmp eq i64 %261, 1
  %263 = zext i1 %262 to i8
  br label %264

264:                                              ; preds = %255, %259
  %265 = phi i8 [ 0, %255 ], [ %263, %259 ]
  %266 = icmp eq i8 %265, 0
  br i1 %266, label %267, label %277

267:                                              ; preds = %247, %264
  %268 = load ptr, ptr %248, align 8, !tbaa !35
  %269 = icmp eq ptr %268, null
  br i1 %269, label %270, label %247, !llvm.loop !290

270:                                              ; preds = %267, %240
  %271 = load ptr, ptr @attrs_pool, align 8, !tbaa !35
  %272 = tail call ptr @pool_alloc(ptr noundef %271) #21
  %273 = getelementptr inbounds %struct.attrs_def, ptr %272, i64 0, i32 1
  store ptr %236, ptr %273, align 8, !tbaa !157
  %274 = getelementptr inbounds %struct.attrs_def, ptr %272, i64 0, i32 2
  store ptr %6, ptr %274, align 8, !tbaa !159
  %275 = getelementptr inbounds %struct.attrs_def, ptr %272, i64 0, i32 3
  store i64 0, ptr %275, align 8, !tbaa !160
  %276 = load ptr, ptr %244, align 8, !tbaa !35
  store ptr %276, ptr %272, align 8, !tbaa !161
  store ptr %272, ptr %244, align 8, !tbaa !35
  br label %290

277:                                              ; preds = %264
  %278 = icmp eq ptr %257, %73
  br i1 %278, label %290, label %279

279:                                              ; preds = %277
  %280 = getelementptr inbounds %struct.location_chain_def, ptr %232, i64 0, i32 3
  %281 = load i32, ptr %280, align 8, !tbaa !248
  %282 = tail call fastcc ptr @set_slot_part(ptr noundef %4, ptr noundef %257, ptr noundef %231, ptr noundef %6, i64 noundef 0, i32 noundef %281, ptr noundef null)
  %283 = load ptr, ptr %3, align 8, !tbaa !35
  %284 = getelementptr inbounds %struct.location_chain_def, ptr %283, i64 0, i32 1
  %285 = load ptr, ptr %284, align 8, !tbaa !240
  %286 = tail call fastcc ptr @delete_slot_part(ptr noundef %4, ptr noundef %285, ptr noundef %282, i64 noundef 0)
  %287 = load ptr, ptr %230, align 8, !tbaa !35
  %288 = icmp eq ptr %287, %283
  %289 = select i1 %288, ptr %232, ptr %230
  br label %290

290:                                              ; preds = %279, %234, %270, %277
  %291 = phi ptr [ %232, %277 ], [ %232, %270 ], [ %289, %279 ], [ %230, %234 ]
  %292 = phi ptr [ %231, %277 ], [ %231, %270 ], [ %286, %279 ], [ %231, %234 ]
  br i1 %239, label %229, label %293

293:                                              ; preds = %290, %229
  %294 = phi ptr [ %231, %229 ], [ %292, %290 ]
  %295 = load ptr, ptr %294, align 8, !tbaa !35
  %296 = getelementptr inbounds %struct.variable_def, ptr %295, i64 0, i32 5
  %297 = icmp eq ptr %73, null
  br i1 %297, label %298, label %301

298:                                              ; preds = %293
  %299 = load ptr, ptr %296, align 8, !tbaa !35
  %300 = icmp eq ptr %299, null
  br i1 %300, label %439, label %333

301:                                              ; preds = %293
  %302 = load i32, ptr %73, align 8
  %303 = or i32 %302, 536870912
  store i32 %303, ptr %73, align 8
  %304 = load ptr, ptr %296, align 8, !tbaa !35
  %305 = icmp eq ptr %304, null
  br i1 %305, label %321, label %306

306:                                              ; preds = %301, %318
  %307 = phi ptr [ %319, %318 ], [ %304, %301 ]
  %308 = getelementptr inbounds %struct.location_chain_def, ptr %307, i64 0, i32 1
  %309 = load ptr, ptr %308, align 8, !tbaa !240
  %310 = load i32, ptr %309, align 8
  %311 = and i32 %310, 65535
  %312 = icmp eq i32 %311, 1
  br i1 %312, label %313, label %318

313:                                              ; preds = %306
  %314 = or i32 %310, 536870912
  store i32 %314, ptr %309, align 8
  %315 = load ptr, ptr %308, align 8, !tbaa !240
  %316 = getelementptr inbounds %struct.location_chain_def, ptr %307, i64 0, i32 3
  %317 = load i32, ptr %316, align 8, !tbaa !248
  tail call fastcc void @set_variable_part(ptr noundef %4, ptr noundef nonnull %73, ptr noundef %315, i64 noundef 0, i32 noundef %317, ptr noundef null, i32 noundef 1)
  br label %318

318:                                              ; preds = %306, %313
  %319 = load ptr, ptr %307, align 8, !tbaa !35
  %320 = icmp eq ptr %319, null
  br i1 %320, label %321, label %306, !llvm.loop !291

321:                                              ; preds = %318, %301
  %322 = phi ptr [ %304, %301 ], [ %319, %318 ]
  store ptr %322, ptr %3, align 8, !tbaa !35
  %323 = load ptr, ptr %102, align 8, !tbaa !77
  %324 = getelementptr inbounds %struct.shared_hash_def, ptr %323, i64 0, i32 1
  %325 = load ptr, ptr %324, align 8, !tbaa !83
  %326 = tail call ptr @htab_find_slot_with_hash(ptr noundef %325, ptr noundef %6, i32 noundef %64, i32 noundef 0) #21
  %327 = load ptr, ptr %326, align 8, !tbaa !35
  %328 = icmp eq ptr %327, %295
  br i1 %328, label %330, label %329

329:                                              ; preds = %321
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3493, ptr noundef nonnull @.str.2) #21
  br label %330

330:                                              ; preds = %321, %329
  %331 = tail call i32 @canonicalize_values_star(ptr noundef nonnull %326, ptr noundef %4)
  %332 = load ptr, ptr %326, align 8, !tbaa !35
  br label %440

333:                                              ; preds = %298, %347
  %334 = phi ptr [ %350, %347 ], [ %299, %298 ]
  %335 = phi i8 [ %349, %347 ], [ 0, %298 ]
  %336 = phi i8 [ %348, %347 ], [ 0, %298 ]
  %337 = getelementptr inbounds %struct.location_chain_def, ptr %334, i64 0, i32 1
  %338 = load ptr, ptr %337, align 8, !tbaa !240
  %339 = load i32, ptr %338, align 8
  %340 = and i32 %339, 65535
  %341 = icmp eq i32 %340, 1
  br i1 %341, label %342, label %345

342:                                              ; preds = %333
  %343 = or i8 %335, %336
  %344 = icmp eq i8 %343, 0
  br i1 %344, label %347, label %352

345:                                              ; preds = %333
  %346 = icmp eq i8 %336, 0
  br i1 %346, label %347, label %352

347:                                              ; preds = %342, %345
  %348 = phi i8 [ 1, %342 ], [ 0, %345 ]
  %349 = phi i8 [ 0, %342 ], [ 1, %345 ]
  %350 = load ptr, ptr %334, align 8, !tbaa !35
  %351 = icmp eq ptr %350, null
  br i1 %351, label %352, label %333, !llvm.loop !292

352:                                              ; preds = %345, %342, %347
  %353 = phi ptr [ %350, %347 ], [ %334, %342 ], [ %334, %345 ]
  %354 = phi i8 [ %348, %347 ], [ 1, %342 ], [ 1, %345 ]
  %355 = phi i8 [ %349, %347 ], [ 1, %342 ], [ 1, %345 ]
  %356 = icmp ne i8 %354, 0
  %357 = icmp ne i8 %355, 0
  %358 = and i1 %356, %357
  store ptr %353, ptr %3, align 8, !tbaa !35
  br i1 %358, label %359, label %440

359:                                              ; preds = %352
  %360 = load ptr, ptr %296, align 8, !tbaa !35
  store ptr %360, ptr %3, align 8, !tbaa !35
  %361 = icmp eq ptr %360, null
  br i1 %361, label %428, label %362

362:                                              ; preds = %359, %424
  %363 = phi ptr [ %426, %424 ], [ %360, %359 ]
  %364 = getelementptr inbounds %struct.location_chain_def, ptr %363, i64 0, i32 1
  %365 = load ptr, ptr %364, align 8, !tbaa !240
  %366 = load i32, ptr %365, align 8
  %367 = and i32 %366, 65535
  %368 = icmp eq i32 %367, 1
  br i1 %368, label %369, label %424

369:                                              ; preds = %362
  %370 = load ptr, ptr %102, align 8, !tbaa !77
  %371 = load i32, ptr %370, align 8, !tbaa !75
  %372 = icmp slt i32 %371, 2
  br i1 %372, label %389, label %373

373:                                              ; preds = %369
  %374 = load i64, ptr %365, align 8
  %375 = and i64 %374, 65535
  %376 = icmp eq i64 %375, 1
  br i1 %376, label %377, label %381

377:                                              ; preds = %373
  %378 = getelementptr inbounds %struct.rtx_def, ptr %365, i64 0, i32 1
  %379 = load ptr, ptr %378, align 8, !tbaa !46
  %380 = getelementptr inbounds %struct.cselib_val_struct, ptr %379, i64 0, i32 1
  br label %383

381:                                              ; preds = %373
  %382 = getelementptr inbounds %struct.tree_decl_minimal, ptr %365, i64 0, i32 2
  br label %383

383:                                              ; preds = %377, %381
  %384 = phi ptr [ %380, %377 ], [ %382, %381 ]
  %385 = load i32, ptr %384, align 4, !tbaa !46
  %386 = getelementptr inbounds %struct.shared_hash_def, ptr %370, i64 0, i32 1
  %387 = load ptr, ptr %386, align 8, !tbaa !83
  %388 = tail call ptr @htab_find_slot_with_hash(ptr noundef %387, ptr noundef nonnull %365, i32 noundef %385, i32 noundef 0) #21
  br label %389

389:                                              ; preds = %383, %369
  %390 = phi ptr [ %388, %383 ], [ null, %369 ]
  %391 = icmp eq ptr %390, null
  br i1 %391, label %392, label %394

392:                                              ; preds = %389
  %393 = tail call fastcc ptr @shared_hash_find_slot_unshare(ptr noundef nonnull %102, ptr noundef nonnull %365, i32 noundef 1)
  br label %394

394:                                              ; preds = %392, %389
  %395 = phi ptr [ %390, %389 ], [ %393, %392 ]
  %396 = load ptr, ptr %395, align 8, !tbaa !35
  %397 = icmp eq ptr %396, null
  br i1 %397, label %398, label %418

398:                                              ; preds = %394
  %399 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !50
  %400 = icmp eq i32 %399, 0
  br i1 %400, label %407, label %401

401:                                              ; preds = %398
  %402 = load i64, ptr %365, align 8
  %403 = trunc i64 %402 to i16
  switch i16 %403, label %404 [
    i16 1, label %407
    i16 37, label %407
  ]

404:                                              ; preds = %401
  %405 = tail call ptr @target_for_debug_bind(ptr noundef nonnull %365) #21
  %406 = icmp eq ptr %405, null
  br label %407

407:                                              ; preds = %401, %401, %398, %404
  %408 = phi i1 [ %406, %404 ], [ true, %398 ], [ false, %401 ], [ false, %401 ]
  %409 = load ptr, ptr @valvar_pool, align 8
  %410 = load ptr, ptr @var_pool, align 8
  %411 = select i1 %408, ptr %410, ptr %409
  %412 = tail call ptr @pool_alloc(ptr noundef %411) #21
  store ptr %365, ptr %412, align 8, !tbaa !204
  %413 = getelementptr inbounds %struct.variable_def, ptr %412, i64 0, i32 1
  store i32 1, ptr %413, align 8, !tbaa !206
  %414 = getelementptr inbounds %struct.variable_def, ptr %412, i64 0, i32 2
  store i8 1, ptr %414, align 4, !tbaa !207
  %415 = getelementptr inbounds %struct.variable_def, ptr %412, i64 0, i32 3
  store i8 0, ptr %415, align 1, !tbaa !237
  %416 = getelementptr inbounds %struct.variable_def, ptr %412, i64 0, i32 4
  store i8 0, ptr %416, align 2, !tbaa !238
  %417 = getelementptr inbounds %struct.variable_def, ptr %412, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %417, i8 0, i64 24, i1 false)
  store ptr %412, ptr %395, align 8, !tbaa !35
  br label %418

418:                                              ; preds = %407, %394
  %419 = load ptr, ptr %3, align 8, !tbaa !35
  %420 = getelementptr inbounds %struct.location_chain_def, ptr %419, i64 0, i32 1
  %421 = load ptr, ptr %420, align 8, !tbaa !240
  %422 = load i32, ptr %421, align 8
  %423 = or i32 %422, 536870912
  store i32 %423, ptr %421, align 8
  br label %424

424:                                              ; preds = %362, %418
  %425 = load ptr, ptr %3, align 8, !tbaa !35
  %426 = load ptr, ptr %425, align 8, !tbaa !35
  store ptr %426, ptr %3, align 8, !tbaa !35
  %427 = icmp eq ptr %426, null
  br i1 %427, label %428, label %362, !llvm.loop !293

428:                                              ; preds = %424, %359
  %429 = load ptr, ptr %102, align 8, !tbaa !77
  %430 = getelementptr inbounds %struct.shared_hash_def, ptr %429, i64 0, i32 1
  %431 = load ptr, ptr %430, align 8, !tbaa !83
  %432 = tail call ptr @htab_find_slot_with_hash(ptr noundef %431, ptr noundef %6, i32 noundef %64, i32 noundef 0) #21
  %433 = load ptr, ptr %432, align 8, !tbaa !35
  %434 = icmp eq ptr %433, %295
  br i1 %434, label %436, label %435

435:                                              ; preds = %428
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3561, ptr noundef nonnull @.str.2) #21
  br label %436

436:                                              ; preds = %428, %435
  %437 = tail call i32 @canonicalize_values_star(ptr noundef nonnull %432, ptr noundef %4)
  %438 = load ptr, ptr %432, align 8, !tbaa !35
  br label %440

439:                                              ; preds = %298
  store ptr %299, ptr %3, align 8, !tbaa !35
  br label %440

440:                                              ; preds = %439, %352, %436, %330
  %441 = phi ptr [ %332, %330 ], [ %438, %436 ], [ %295, %352 ], [ %295, %439 ]
  %442 = phi ptr [ %326, %330 ], [ %432, %436 ], [ %294, %352 ], [ %294, %439 ]
  %443 = tail call fastcc zeroext i8 @onepart_variable_different_p(ptr noundef %441, ptr noundef nonnull %80), !range !59
  %444 = icmp eq i8 %443, 0
  br i1 %444, label %445, label %449

445:                                              ; preds = %440
  tail call void @variable_htab_free(ptr noundef %441)
  store ptr %80, ptr %442, align 8, !tbaa !35
  %446 = getelementptr inbounds %struct.variable_def, ptr %80, i64 0, i32 1
  %447 = load i32, ptr %446, align 8, !tbaa !206
  %448 = add nsw i32 %447, 1
  store i32 %448, ptr %446, align 8, !tbaa !206
  br label %459

449:                                              ; preds = %440
  %450 = icmp eq ptr %80, %5
  br i1 %450, label %458, label %451

451:                                              ; preds = %449
  %452 = tail call fastcc zeroext i8 @onepart_variable_different_p(ptr noundef %441, ptr noundef nonnull %5), !range !59
  %453 = icmp eq i8 %452, 0
  br i1 %453, label %454, label %458

454:                                              ; preds = %451
  tail call void @variable_htab_free(ptr noundef %441)
  store ptr %5, ptr %442, align 8, !tbaa !35
  %455 = getelementptr inbounds %struct.variable_def, ptr %5, i64 0, i32 1
  %456 = load i32, ptr %455, align 8, !tbaa !206
  %457 = add nsw i32 %456, 1
  store i32 %457, ptr %455, align 8, !tbaa !206
  store i1 false, ptr @dst_can_be_shared, align 1
  br label %459

458:                                              ; preds = %451, %449
  store i1 false, ptr @dst_can_be_shared, align 1
  br label %459

459:                                              ; preds = %445, %458, %454, %160, %82, %39
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #21
  ret i32 1
}

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @variable_union(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #9 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  %4 = getelementptr inbounds %struct.dataflow_set_def, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !77
  %6 = load ptr, ptr %3, align 8, !tbaa !204
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %2
  %9 = load i64, ptr %6, align 8
  %10 = and i64 %9, 65535
  %11 = icmp eq i64 %10, 1
  br i1 %11, label %12, label %16

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !46
  %15 = getelementptr inbounds %struct.cselib_val_struct, ptr %14, i64 0, i32 1
  br label %18

16:                                               ; preds = %8, %2
  %17 = getelementptr inbounds %struct.tree_decl_minimal, ptr %6, i64 0, i32 2
  br label %18

18:                                               ; preds = %12, %16
  %19 = phi ptr [ %15, %12 ], [ %17, %16 ]
  %20 = load i32, ptr %19, align 4, !tbaa !46
  %21 = getelementptr inbounds %struct.shared_hash_def, ptr %5, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !83
  %23 = load i32, ptr %5, align 8, !tbaa !75
  %24 = icmp slt i32 %23, 2
  %25 = zext i1 %24 to i32
  %26 = tail call ptr @htab_find_slot_with_hash(ptr noundef %22, ptr noundef %6, i32 noundef %20, i32 noundef %25) #21
  %27 = icmp eq ptr %26, null
  br i1 %27, label %35, label %28

28:                                               ; preds = %18
  %29 = load ptr, ptr %26, align 8, !tbaa !35
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %43

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.variable_def, ptr %3, i64 0, i32 1
  %33 = load i32, ptr %32, align 8, !tbaa !206
  %34 = add nsw i32 %33, 1
  store i32 %34, ptr %32, align 8, !tbaa !206
  store i1 false, ptr @dst_can_be_shared, align 1
  br label %41

35:                                               ; preds = %18
  %36 = getelementptr inbounds %struct.variable_def, ptr %3, i64 0, i32 1
  %37 = load i32, ptr %36, align 8, !tbaa !206
  %38 = add nsw i32 %37, 1
  store i32 %38, ptr %36, align 8, !tbaa !206
  store i1 false, ptr @dst_can_be_shared, align 1
  %39 = load ptr, ptr %3, align 8, !tbaa !204
  %40 = tail call fastcc ptr @shared_hash_find_slot_unshare(ptr noundef nonnull %4, ptr noundef %39, i32 noundef 1)
  br label %41

41:                                               ; preds = %31, %35
  %42 = phi ptr [ %26, %31 ], [ %40, %35 ]
  store ptr %3, ptr %42, align 8, !tbaa !35
  br label %758

43:                                               ; preds = %28
  %44 = getelementptr inbounds %struct.variable_def, ptr %3, i64 0, i32 2
  %45 = load i8, ptr %44, align 4, !tbaa !207
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 2097, ptr noundef nonnull @.str.2) #21
  br label %48

48:                                               ; preds = %43, %47
  %49 = load ptr, ptr %3, align 8, !tbaa !204
  %50 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !50
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %69, label %52

52:                                               ; preds = %48
  %53 = icmp eq ptr %49, null
  br i1 %53, label %58, label %54

54:                                               ; preds = %52
  %55 = load i64, ptr %49, align 8
  %56 = and i64 %55, 65535
  %57 = icmp eq i64 %56, 1
  br label %58

58:                                               ; preds = %54, %52
  %59 = phi i1 [ false, %52 ], [ %57, %54 ]
  %60 = or i1 %53, %59
  br i1 %60, label %69, label %61

61:                                               ; preds = %58
  %62 = load i64, ptr %49, align 8
  %63 = and i64 %62, 65535
  %64 = icmp eq i64 %63, 37
  br i1 %64, label %69, label %65

65:                                               ; preds = %61
  %66 = tail call ptr @target_for_debug_bind(ptr noundef nonnull %49) #21
  %67 = icmp ne ptr %66, null
  %68 = zext i1 %67 to i8
  br label %69

69:                                               ; preds = %48, %58, %61, %65
  %70 = phi i8 [ %68, %65 ], [ 0, %48 ], [ 1, %58 ], [ 1, %61 ]
  %71 = icmp eq i8 %70, 0
  %72 = load i8, ptr %44, align 4, !tbaa !207
  br i1 %71, label %73, label %80

73:                                               ; preds = %69
  %74 = sext i8 %72 to i32
  %75 = icmp sgt i8 %72, 0
  br i1 %75, label %76, label %215

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.variable_def, ptr %29, i64 0, i32 2
  %78 = load i8, ptr %77, align 4, !tbaa !207
  %79 = sext i8 %78 to i32
  br label %183

80:                                               ; preds = %69
  %81 = icmp eq i8 %72, 1
  br i1 %81, label %83, label %82

82:                                               ; preds = %80
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 2105, ptr noundef nonnull @.str.2) #21
  br label %83

83:                                               ; preds = %80, %82
  %84 = getelementptr inbounds %struct.variable_def, ptr %29, i64 0, i32 2
  %85 = load i8, ptr %84, align 4, !tbaa !207
  %86 = icmp eq i8 %85, 1
  br i1 %86, label %88, label %87

87:                                               ; preds = %83
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 2106, ptr noundef nonnull @.str.2) #21
  br label %88

88:                                               ; preds = %83, %87
  %89 = getelementptr inbounds %struct.variable_def, ptr %3, i64 0, i32 5
  %90 = load ptr, ptr %89, align 8, !tbaa !208
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %93

92:                                               ; preds = %88
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 2109, ptr noundef nonnull @.str.2) #21
  br label %93

93:                                               ; preds = %88, %92
  br label %94

94:                                               ; preds = %175, %93
  %95 = phi ptr [ %90, %93 ], [ %178, %175 ]
  %96 = phi ptr [ %26, %93 ], [ %180, %175 ]
  %97 = phi ptr [ %29, %93 ], [ %181, %175 ]
  %98 = getelementptr inbounds %struct.variable_def, ptr %97, i64 0, i32 5
  %99 = load ptr, ptr %98, align 8, !tbaa !35
  %100 = icmp eq ptr %99, null
  br i1 %100, label %101, label %102

101:                                              ; preds = %94
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 2114, ptr noundef nonnull @.str.2) #21
  br label %102

102:                                              ; preds = %94, %101
  br label %103

103:                                              ; preds = %102, %175
  %104 = phi ptr [ %176, %175 ], [ %98, %102 ]
  %105 = phi ptr [ %177, %175 ], [ %99, %102 ]
  %106 = phi ptr [ %178, %175 ], [ %95, %102 ]
  %107 = phi ptr [ %180, %175 ], [ %96, %102 ]
  %108 = phi ptr [ %181, %175 ], [ %97, %102 ]
  %109 = icmp eq ptr %106, null
  br i1 %109, label %758, label %110

110:                                              ; preds = %103
  %111 = icmp eq ptr %105, null
  br i1 %111, label %118, label %112

112:                                              ; preds = %110
  %113 = getelementptr inbounds %struct.location_chain_def, ptr %105, i64 0, i32 1
  %114 = load ptr, ptr %113, align 8, !tbaa !240
  %115 = getelementptr inbounds %struct.location_chain_def, ptr %106, i64 0, i32 1
  %116 = load ptr, ptr %115, align 8, !tbaa !240
  %117 = tail call fastcc i32 @loc_cmp(ptr noundef %114, ptr noundef %116), !range !243
  br label %118

118:                                              ; preds = %110, %112
  %119 = phi i32 [ %117, %112 ], [ 1, %110 ]
  %120 = icmp sgt i32 %119, 0
  br i1 %120, label %121, label %165

121:                                              ; preds = %118
  %122 = getelementptr inbounds %struct.variable_def, ptr %108, i64 0, i32 1
  %123 = load i32, ptr %122, align 8, !tbaa !206
  %124 = getelementptr inbounds %struct.variable_def, ptr %108, i64 0, i32 4
  %125 = load i8, ptr %124, align 2, !tbaa !238
  %126 = zext i8 %125 to i32
  %127 = add nuw nsw i32 %126, 1
  %128 = icmp sgt i32 %123, %127
  br i1 %128, label %134, label %129

129:                                              ; preds = %121
  %130 = load ptr, ptr %4, align 8, !tbaa !77
  %131 = load i32, ptr %130, align 8, !tbaa !75
  %132 = icmp sgt i32 %131, 1
  %133 = zext i1 %132 to i8
  br label %134

134:                                              ; preds = %121, %129
  %135 = phi i8 [ 1, %121 ], [ %133, %129 ]
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %140, label %137

137:                                              ; preds = %134
  %138 = tail call fastcc ptr @unshare_variable(ptr noundef %1, ptr noundef %107, ptr noundef %108, i32 noundef 2)
  %139 = load ptr, ptr %138, align 8, !tbaa !35
  br label %160

140:                                              ; preds = %134
  %141 = load ptr, ptr @loc_chain_pool, align 8, !tbaa !35
  %142 = tail call ptr @pool_alloc(ptr noundef %141) #21
  store ptr %142, ptr %104, align 8, !tbaa !35
  %143 = getelementptr inbounds %struct.location_chain_def, ptr %106, i64 0, i32 1
  %144 = load ptr, ptr %143, align 8, !tbaa !240
  %145 = getelementptr inbounds %struct.location_chain_def, ptr %142, i64 0, i32 1
  store ptr %144, ptr %145, align 8, !tbaa !240
  %146 = getelementptr inbounds %struct.location_chain_def, ptr %106, i64 0, i32 3
  %147 = load i32, ptr %146, align 8, !tbaa !248
  %148 = getelementptr inbounds %struct.location_chain_def, ptr %142, i64 0, i32 3
  store i32 %147, ptr %148, align 8, !tbaa !248
  %149 = getelementptr inbounds %struct.location_chain_def, ptr %106, i64 0, i32 2
  %150 = load ptr, ptr %149, align 8, !tbaa !249
  %151 = icmp eq ptr %150, null
  br i1 %151, label %157, label %152

152:                                              ; preds = %140
  %153 = load i32, ptr %150, align 8
  %154 = and i32 %153, 65535
  %155 = icmp eq i32 %154, 43
  %156 = select i1 %155, ptr null, ptr %150
  br label %157

157:                                              ; preds = %152, %140
  %158 = phi ptr [ null, %140 ], [ %156, %152 ]
  %159 = getelementptr inbounds %struct.location_chain_def, ptr %142, i64 0, i32 2
  store ptr %158, ptr %159, align 8, !tbaa !249
  store ptr %105, ptr %142, align 8, !tbaa !210
  br label %160

160:                                              ; preds = %157, %137
  %161 = phi ptr [ %105, %137 ], [ %142, %157 ]
  %162 = phi i32 [ 2, %137 ], [ 0, %157 ]
  %163 = phi ptr [ %138, %137 ], [ %107, %157 ]
  %164 = phi ptr [ %139, %137 ], [ %108, %157 ]
  br i1 %136, label %165, label %175

165:                                              ; preds = %160, %118
  %166 = phi ptr [ %161, %160 ], [ %105, %118 ]
  %167 = phi ptr [ %163, %160 ], [ %107, %118 ]
  %168 = phi ptr [ %164, %160 ], [ %108, %118 ]
  %169 = icmp sgt i32 %119, -1
  br i1 %169, label %170, label %172

170:                                              ; preds = %165
  %171 = load ptr, ptr %106, align 8, !tbaa !210
  br label %172

172:                                              ; preds = %170, %165
  %173 = phi ptr [ %171, %170 ], [ %106, %165 ]
  %174 = load ptr, ptr %166, align 8, !tbaa !35
  br label %175

175:                                              ; preds = %160, %172
  %176 = phi ptr [ %166, %172 ], [ %104, %160 ]
  %177 = phi ptr [ %174, %172 ], [ %161, %160 ]
  %178 = phi ptr [ %173, %172 ], [ %106, %160 ]
  %179 = phi i32 [ 0, %172 ], [ %162, %160 ]
  %180 = phi ptr [ %167, %172 ], [ %163, %160 ]
  %181 = phi ptr [ %168, %172 ], [ %164, %160 ]
  %182 = icmp eq i32 %179, 0
  br i1 %182, label %103, label %94

183:                                              ; preds = %76, %205
  %184 = phi i32 [ 0, %76 ], [ %207, %205 ]
  %185 = phi i32 [ 0, %76 ], [ %206, %205 ]
  %186 = phi i32 [ 0, %76 ], [ %208, %205 ]
  %187 = icmp slt i32 %185, %79
  br i1 %187, label %188, label %210

188:                                              ; preds = %183
  %189 = sext i32 %184 to i64
  %190 = getelementptr inbounds %struct.variable_def, ptr %3, i64 0, i32 5, i64 %189, i32 2
  %191 = load i64, ptr %190, align 8, !tbaa !239
  %192 = sext i32 %185 to i64
  %193 = getelementptr inbounds %struct.variable_def, ptr %29, i64 0, i32 5, i64 %192, i32 2
  %194 = load i64, ptr %193, align 8, !tbaa !239
  %195 = icmp eq i64 %191, %194
  br i1 %195, label %196, label %199

196:                                              ; preds = %188
  %197 = add nsw i32 %184, 1
  %198 = add nsw i32 %185, 1
  br label %205

199:                                              ; preds = %188
  %200 = icmp slt i64 %191, %194
  br i1 %200, label %201, label %203

201:                                              ; preds = %199
  %202 = add nsw i32 %184, 1
  br label %205

203:                                              ; preds = %199
  %204 = add nsw i32 %185, 1
  br label %205

205:                                              ; preds = %196, %203, %201
  %206 = phi i32 [ %198, %196 ], [ %185, %201 ], [ %204, %203 ]
  %207 = phi i32 [ %197, %196 ], [ %202, %201 ], [ %184, %203 ]
  %208 = add nuw nsw i32 %186, 1
  %209 = icmp slt i32 %207, %74
  br i1 %209, label %183, label %210, !llvm.loop !294

210:                                              ; preds = %205, %183
  %211 = phi i32 [ %186, %183 ], [ %208, %205 ]
  %212 = phi i32 [ %185, %183 ], [ %206, %205 ]
  %213 = phi i32 [ %184, %183 ], [ %207, %205 ]
  %214 = sub i32 %211, %213
  br label %215

215:                                              ; preds = %210, %73
  %216 = phi i32 [ 0, %73 ], [ %212, %210 ]
  %217 = phi i32 [ 0, %73 ], [ %214, %210 ]
  %218 = getelementptr inbounds %struct.variable_def, ptr %29, i64 0, i32 2
  %219 = load i8, ptr %218, align 4, !tbaa !207
  %220 = sext i8 %219 to i32
  %221 = sub i32 %220, %216
  %222 = add i32 %217, %74
  %223 = add i32 %222, %221
  %224 = load ptr, ptr %29, align 8, !tbaa !204
  %225 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !50
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %245, label %227

227:                                              ; preds = %215
  %228 = icmp eq ptr %224, null
  br i1 %228, label %233, label %229

229:                                              ; preds = %227
  %230 = load i64, ptr %224, align 8
  %231 = and i64 %230, 65535
  %232 = icmp eq i64 %231, 1
  br label %233

233:                                              ; preds = %229, %227
  %234 = phi i1 [ false, %227 ], [ %232, %229 ]
  %235 = or i1 %228, %234
  br i1 %235, label %243, label %236

236:                                              ; preds = %233
  %237 = load i64, ptr %224, align 8
  %238 = and i64 %237, 65535
  %239 = icmp eq i64 %238, 37
  br i1 %239, label %243, label %240

240:                                              ; preds = %236
  %241 = tail call ptr @target_for_debug_bind(ptr noundef nonnull %224) #21
  %242 = icmp eq ptr %241, null
  br i1 %242, label %245, label %243

243:                                              ; preds = %233, %236, %240
  %244 = icmp eq i32 %223, 1
  br i1 %244, label %248, label %247

245:                                              ; preds = %215, %240
  %246 = icmp slt i32 %223, 17
  br i1 %246, label %248, label %247

247:                                              ; preds = %245, %243
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 2176, ptr noundef nonnull @.str.2) #21
  br label %248

248:                                              ; preds = %243, %245, %247
  %249 = load i8, ptr %218, align 4, !tbaa !207
  %250 = sext i8 %249 to i32
  %251 = icmp eq i32 %223, %250
  br i1 %251, label %267, label %252

252:                                              ; preds = %248
  %253 = getelementptr inbounds %struct.variable_def, ptr %29, i64 0, i32 1
  %254 = load i32, ptr %253, align 8, !tbaa !206
  %255 = getelementptr inbounds %struct.variable_def, ptr %29, i64 0, i32 4
  %256 = load i8, ptr %255, align 2, !tbaa !238
  %257 = zext i8 %256 to i32
  %258 = add nuw nsw i32 %257, 1
  %259 = icmp sgt i32 %254, %258
  br i1 %259, label %264, label %260

260:                                              ; preds = %252
  %261 = load ptr, ptr %4, align 8, !tbaa !77
  %262 = load i32, ptr %261, align 8, !tbaa !75
  %263 = icmp slt i32 %262, 2
  br i1 %263, label %267, label %264

264:                                              ; preds = %252, %260
  %265 = tail call fastcc ptr @unshare_variable(ptr noundef %1, ptr noundef nonnull %26, ptr noundef nonnull %29, i32 noundef 0)
  %266 = load ptr, ptr %265, align 8, !tbaa !35
  br label %267

267:                                              ; preds = %264, %260, %248
  %268 = phi ptr [ %265, %264 ], [ %26, %260 ], [ %26, %248 ]
  %269 = phi ptr [ %266, %264 ], [ %29, %260 ], [ %29, %248 ]
  %270 = load i8, ptr %44, align 4, !tbaa !207
  %271 = getelementptr inbounds %struct.variable_def, ptr %269, i64 0, i32 2
  %272 = load i8, ptr %271, align 4, !tbaa !207
  %273 = trunc i32 %223 to i8
  store i8 %273, ptr %271, align 4, !tbaa !207
  %274 = icmp sgt i32 %223, 0
  br i1 %274, label %275, label %708

275:                                              ; preds = %267
  %276 = sext i8 %272 to i32
  %277 = add nsw i32 %276, -1
  %278 = sext i8 %270 to i32
  %279 = add nsw i32 %278, -1
  %280 = zext nneg i32 %223 to i64
  br label %281

281:                                              ; preds = %275, %699
  %282 = phi i64 [ %280, %275 ], [ %287, %699 ]
  %283 = phi ptr [ %269, %275 ], [ %703, %699 ]
  %284 = phi ptr [ %268, %275 ], [ %702, %699 ]
  %285 = phi i32 [ %279, %275 ], [ %701, %699 ]
  %286 = phi i32 [ %277, %275 ], [ %700, %699 ]
  %287 = add nsw i64 %282, -1
  %288 = icmp sgt i32 %285, -1
  %289 = icmp sgt i32 %286, -1
  %290 = select i1 %288, i1 %289, i1 false
  br i1 %290, label %291, label %643

291:                                              ; preds = %281
  %292 = zext nneg i32 %285 to i64
  %293 = getelementptr inbounds %struct.variable_def, ptr %3, i64 0, i32 5, i64 %292
  %294 = getelementptr inbounds %struct.variable_def, ptr %3, i64 0, i32 5, i64 %292, i32 2
  %295 = load i64, ptr %294, align 8, !tbaa !239
  %296 = zext nneg i32 %286 to i64
  %297 = getelementptr inbounds %struct.variable_def, ptr %283, i64 0, i32 5, i64 %296
  %298 = getelementptr inbounds %struct.variable_def, ptr %283, i64 0, i32 5, i64 %296, i32 2
  %299 = load i64, ptr %298, align 8, !tbaa !239
  %300 = icmp eq i64 %295, %299
  br i1 %300, label %301, label %641

301:                                              ; preds = %291
  %302 = getelementptr inbounds %struct.variable_def, ptr %283, i64 0, i32 1
  %303 = load i32, ptr %302, align 8, !tbaa !206
  %304 = getelementptr inbounds %struct.variable_def, ptr %283, i64 0, i32 4
  %305 = load i8, ptr %304, align 2, !tbaa !238
  %306 = zext i8 %305 to i32
  %307 = add nuw nsw i32 %306, 1
  %308 = icmp sgt i32 %303, %307
  br i1 %308, label %314, label %309

309:                                              ; preds = %301
  %310 = load ptr, ptr %4, align 8, !tbaa !77
  %311 = load i32, ptr %310, align 8, !tbaa !75
  %312 = icmp sgt i32 %311, 1
  %313 = zext i1 %312 to i8
  br label %314

314:                                              ; preds = %301, %309
  %315 = phi i8 [ 1, %301 ], [ %313, %309 ]
  %316 = icmp eq i8 %315, 0
  br i1 %316, label %370, label %317

317:                                              ; preds = %314
  %318 = load ptr, ptr %297, align 8, !tbaa !35
  %319 = load ptr, ptr %293, align 8, !tbaa !35
  %320 = icmp ne ptr %319, null
  %321 = icmp ne ptr %318, null
  %322 = select i1 %320, i1 %321, i1 false
  br i1 %322, label %323, label %363

323:                                              ; preds = %317, %357
  %324 = phi i1 [ %361, %357 ], [ %321, %317 ]
  %325 = phi i1 [ %360, %357 ], [ %320, %317 ]
  %326 = phi ptr [ %359, %357 ], [ %319, %317 ]
  %327 = phi ptr [ %358, %357 ], [ %318, %317 ]
  %328 = getelementptr inbounds %struct.location_chain_def, ptr %327, i64 0, i32 1
  %329 = load ptr, ptr %328, align 8, !tbaa !240
  %330 = load i32, ptr %329, align 8
  %331 = and i32 %330, 65535
  %332 = icmp eq i32 %331, 37
  br i1 %332, label %333, label %345

333:                                              ; preds = %323
  %334 = getelementptr inbounds %struct.location_chain_def, ptr %326, i64 0, i32 1
  %335 = load ptr, ptr %334, align 8, !tbaa !240
  %336 = load i32, ptr %335, align 8
  %337 = and i32 %336, 65535
  %338 = icmp eq i32 %337, 37
  br i1 %338, label %339, label %345

339:                                              ; preds = %333
  %340 = getelementptr inbounds %struct.rtx_def, ptr %329, i64 0, i32 1
  %341 = load i32, ptr %340, align 8, !tbaa !46
  %342 = getelementptr inbounds %struct.rtx_def, ptr %335, i64 0, i32 1
  %343 = load i32, ptr %342, align 8, !tbaa !46
  %344 = icmp eq i32 %341, %343
  br i1 %344, label %357, label %345

345:                                              ; preds = %339, %333, %323
  %346 = getelementptr inbounds %struct.location_chain_def, ptr %326, i64 0, i32 1
  %347 = load ptr, ptr %346, align 8, !tbaa !240
  %348 = tail call i32 @rtx_equal_p(ptr noundef nonnull %329, ptr noundef %347) #21
  %349 = icmp eq i32 %348, 0
  br i1 %349, label %350, label %357

350:                                              ; preds = %345
  %351 = getelementptr inbounds %struct.location_chain_def, ptr %327, i64 0, i32 3
  %352 = load i32, ptr %351, align 8, !tbaa !248
  %353 = getelementptr inbounds %struct.location_chain_def, ptr %326, i64 0, i32 3
  %354 = load i32, ptr %353, align 8, !tbaa !248
  %355 = icmp ult i32 %352, %354
  br i1 %355, label %356, label %363

356:                                              ; preds = %350
  store i32 %354, ptr %351, align 8, !tbaa !248
  br label %363

357:                                              ; preds = %339, %345
  %358 = load ptr, ptr %327, align 8, !tbaa !35
  %359 = load ptr, ptr %326, align 8, !tbaa !35
  %360 = icmp ne ptr %359, null
  %361 = icmp ne ptr %358, null
  %362 = select i1 %360, i1 %361, i1 false
  br i1 %362, label %323, label %363, !llvm.loop !295

363:                                              ; preds = %357, %317, %350, %356
  %364 = phi i1 [ %325, %350 ], [ %325, %356 ], [ %320, %317 ], [ %360, %357 ]
  %365 = phi i1 [ %324, %350 ], [ %324, %356 ], [ %321, %317 ], [ %361, %357 ]
  %366 = select i1 %364, i1 true, i1 %365
  br i1 %366, label %367, label %370

367:                                              ; preds = %363
  %368 = tail call fastcc ptr @unshare_variable(ptr noundef %1, ptr noundef %284, ptr noundef %283, i32 noundef 0)
  %369 = load ptr, ptr %368, align 8, !tbaa !35
  br label %370

370:                                              ; preds = %363, %367, %314
  %371 = phi ptr [ %368, %367 ], [ %284, %314 ], [ %284, %363 ]
  %372 = phi ptr [ %369, %367 ], [ %283, %314 ], [ %283, %363 ]
  br label %373

373:                                              ; preds = %373, %370
  %374 = phi ptr [ %293, %370 ], [ %376, %373 ]
  %375 = phi i32 [ 0, %370 ], [ %378, %373 ]
  %376 = load ptr, ptr %374, align 8, !tbaa !35
  %377 = icmp eq ptr %376, null
  %378 = add nuw nsw i32 %375, 1
  br i1 %377, label %379, label %373, !llvm.loop !296

379:                                              ; preds = %373
  %380 = getelementptr inbounds %struct.variable_def, ptr %372, i64 0, i32 5, i64 %296
  br label %381

381:                                              ; preds = %381, %379
  %382 = phi ptr [ %380, %379 ], [ %384, %381 ]
  %383 = phi i32 [ 0, %379 ], [ %386, %381 ]
  %384 = load ptr, ptr %382, align 8, !tbaa !35
  %385 = icmp eq ptr %384, null
  %386 = add nuw nsw i32 %383, 1
  br i1 %385, label %387, label %381, !llvm.loop !297

387:                                              ; preds = %381
  %388 = icmp eq i32 %383, 1
  br i1 %388, label %389, label %449

389:                                              ; preds = %387
  %390 = load ptr, ptr %380, align 8, !tbaa !208
  %391 = and i64 %287, 4294967295
  %392 = getelementptr inbounds %struct.variable_def, ptr %372, i64 0, i32 5, i64 %391
  store ptr %390, ptr %392, align 8, !tbaa !208
  %393 = getelementptr inbounds %struct.variable_def, ptr %372, i64 0, i32 5, i64 %296, i32 2
  %394 = load i64, ptr %393, align 8, !tbaa !239
  %395 = getelementptr inbounds %struct.variable_def, ptr %372, i64 0, i32 5, i64 %391, i32 2
  store i64 %394, ptr %395, align 8, !tbaa !239
  %396 = load ptr, ptr %293, align 8, !tbaa !35
  %397 = icmp eq ptr %396, null
  br i1 %397, label %447, label %398

398:                                              ; preds = %389
  %399 = getelementptr inbounds %struct.location_chain_def, ptr %390, i64 0, i32 1
  br label %400

400:                                              ; preds = %398, %443
  %401 = phi ptr [ %396, %398 ], [ %445, %443 ]
  %402 = phi ptr [ %390, %398 ], [ %444, %443 ]
  %403 = load ptr, ptr %399, align 8, !tbaa !240
  %404 = load i32, ptr %403, align 8
  %405 = and i32 %404, 65535
  %406 = icmp eq i32 %405, 37
  br i1 %406, label %407, label %419

407:                                              ; preds = %400
  %408 = getelementptr inbounds %struct.location_chain_def, ptr %401, i64 0, i32 1
  %409 = load ptr, ptr %408, align 8, !tbaa !240
  %410 = load i32, ptr %409, align 8
  %411 = and i32 %410, 65535
  %412 = icmp eq i32 %411, 37
  br i1 %412, label %413, label %419

413:                                              ; preds = %407
  %414 = getelementptr inbounds %struct.rtx_def, ptr %403, i64 0, i32 1
  %415 = load i32, ptr %414, align 8, !tbaa !46
  %416 = getelementptr inbounds %struct.rtx_def, ptr %409, i64 0, i32 1
  %417 = load i32, ptr %416, align 8, !tbaa !46
  %418 = icmp eq i32 %415, %417
  br i1 %418, label %443, label %419

419:                                              ; preds = %413, %407, %400
  %420 = getelementptr inbounds %struct.location_chain_def, ptr %401, i64 0, i32 1
  %421 = load ptr, ptr %420, align 8, !tbaa !240
  %422 = tail call i32 @rtx_equal_p(ptr noundef nonnull %403, ptr noundef %421) #21
  %423 = icmp eq i32 %422, 0
  br i1 %423, label %424, label %443

424:                                              ; preds = %419
  %425 = load ptr, ptr @loc_chain_pool, align 8, !tbaa !35
  %426 = tail call ptr @pool_alloc(ptr noundef %425) #21
  %427 = load ptr, ptr %420, align 8, !tbaa !240
  %428 = getelementptr inbounds %struct.location_chain_def, ptr %426, i64 0, i32 1
  store ptr %427, ptr %428, align 8, !tbaa !240
  %429 = getelementptr inbounds %struct.location_chain_def, ptr %401, i64 0, i32 3
  %430 = load i32, ptr %429, align 8, !tbaa !248
  %431 = getelementptr inbounds %struct.location_chain_def, ptr %426, i64 0, i32 3
  store i32 %430, ptr %431, align 8, !tbaa !248
  %432 = getelementptr inbounds %struct.location_chain_def, ptr %401, i64 0, i32 2
  %433 = load ptr, ptr %432, align 8, !tbaa !249
  %434 = icmp eq ptr %433, null
  br i1 %434, label %440, label %435

435:                                              ; preds = %424
  %436 = load i32, ptr %433, align 8
  %437 = and i32 %436, 65535
  %438 = icmp eq i32 %437, 43
  %439 = select i1 %438, ptr null, ptr %433
  br label %440

440:                                              ; preds = %435, %424
  %441 = phi ptr [ null, %424 ], [ %439, %435 ]
  %442 = getelementptr inbounds %struct.location_chain_def, ptr %426, i64 0, i32 2
  store ptr %441, ptr %442, align 8, !tbaa !249
  store ptr %426, ptr %402, align 8, !tbaa !210
  br label %443

443:                                              ; preds = %413, %419, %440
  %444 = phi ptr [ %402, %413 ], [ %402, %419 ], [ %426, %440 ]
  %445 = load ptr, ptr %401, align 8, !tbaa !35
  %446 = icmp eq ptr %445, null
  br i1 %446, label %447, label %400, !llvm.loop !298

447:                                              ; preds = %443, %389
  %448 = phi ptr [ %390, %389 ], [ %444, %443 ]
  store ptr null, ptr %448, align 8, !tbaa !210
  br label %638

449:                                              ; preds = %387
  %450 = add nuw nsw i32 %383, %375
  %451 = load i32, ptr @vui_allocated, align 4, !tbaa !50
  %452 = icmp sgt i32 %450, %451
  br i1 %452, label %453, label %460

453:                                              ; preds = %449
  %454 = shl nuw nsw i32 %451, 1
  %455 = tail call i32 @llvm.umax.i32(i32 %454, i32 %450)
  store i32 %455, ptr @vui_allocated, align 4, !tbaa !50
  %456 = load ptr, ptr @vui_vec, align 8, !tbaa !35
  %457 = zext nneg i32 %455 to i64
  %458 = shl nuw nsw i64 %457, 4
  %459 = tail call ptr @xrealloc(ptr noundef %456, i64 noundef %458) #21
  store ptr %459, ptr @vui_vec, align 8, !tbaa !35
  br label %460

460:                                              ; preds = %453, %449
  %461 = load ptr, ptr @vui_vec, align 8, !tbaa !35
  %462 = load ptr, ptr %380, align 8, !tbaa !35
  %463 = icmp eq ptr %462, null
  br i1 %463, label %466, label %464

464:                                              ; preds = %460
  %465 = add nuw i32 %383, %375
  br label %473

466:                                              ; preds = %473, %460
  %467 = load ptr, ptr %293, align 8, !tbaa !35
  %468 = icmp eq ptr %467, null
  br i1 %468, label %554, label %469

469:                                              ; preds = %466
  %470 = icmp eq i32 %383, 0
  %471 = add nuw i32 %383, %375
  %472 = zext nneg i32 %383 to i64
  br label %485

473:                                              ; preds = %464, %473
  %474 = phi i64 [ 0, %464 ], [ %482, %473 ]
  %475 = phi ptr [ %462, %464 ], [ %483, %473 ]
  %476 = getelementptr inbounds %struct.variable_union_info, ptr %461, i64 %474
  store ptr %475, ptr %476, align 8, !tbaa !299
  %477 = getelementptr inbounds %struct.variable_union_info, ptr %461, i64 %474, i32 2
  %478 = trunc i64 %474 to i32
  store i32 %478, ptr %477, align 4, !tbaa !301
  %479 = getelementptr inbounds %struct.variable_union_info, ptr %461, i64 %474, i32 1
  %480 = trunc i64 %474 to i32
  %481 = add i32 %465, %480
  store i32 %481, ptr %479, align 8, !tbaa !302
  %482 = add nuw i64 %474, 1
  %483 = load ptr, ptr %475, align 8, !tbaa !35
  %484 = icmp eq ptr %483, null
  br i1 %484, label %466, label %473, !llvm.loop !303

485:                                              ; preds = %469, %549
  %486 = phi ptr [ %467, %469 ], [ %552, %549 ]
  %487 = phi i32 [ %383, %469 ], [ %550, %549 ]
  %488 = phi i32 [ 0, %469 ], [ %551, %549 ]
  br i1 %470, label %523, label %489

489:                                              ; preds = %485
  %490 = getelementptr inbounds %struct.location_chain_def, ptr %486, i64 0, i32 1
  %491 = getelementptr inbounds %struct.location_chain_def, ptr %486, i64 0, i32 1
  br label %492

492:                                              ; preds = %489, %520
  %493 = phi i64 [ 0, %489 ], [ %521, %520 ]
  %494 = getelementptr inbounds %struct.variable_union_info, ptr %461, i64 %493
  %495 = load ptr, ptr %494, align 8, !tbaa !299
  %496 = getelementptr inbounds %struct.location_chain_def, ptr %495, i64 0, i32 1
  %497 = load ptr, ptr %496, align 8, !tbaa !240
  %498 = load i32, ptr %497, align 8
  %499 = and i32 %498, 65535
  %500 = icmp eq i32 %499, 37
  br i1 %500, label %501, label %512

501:                                              ; preds = %492
  %502 = load ptr, ptr %490, align 8, !tbaa !240
  %503 = load i32, ptr %502, align 8
  %504 = and i32 %503, 65535
  %505 = icmp eq i32 %504, 37
  br i1 %505, label %506, label %512

506:                                              ; preds = %501
  %507 = getelementptr inbounds %struct.rtx_def, ptr %497, i64 0, i32 1
  %508 = load i32, ptr %507, align 8, !tbaa !46
  %509 = getelementptr inbounds %struct.rtx_def, ptr %502, i64 0, i32 1
  %510 = load i32, ptr %509, align 8, !tbaa !46
  %511 = icmp eq i32 %508, %510
  br i1 %511, label %516, label %512

512:                                              ; preds = %506, %501, %492
  %513 = load ptr, ptr %491, align 8, !tbaa !240
  %514 = tail call i32 @rtx_equal_p(ptr noundef nonnull %497, ptr noundef %513) #21
  %515 = icmp eq i32 %514, 0
  br i1 %515, label %520, label %516

516:                                              ; preds = %506, %512
  %517 = trunc i64 %493 to i32
  %518 = add nuw nsw i32 %488, %517
  %519 = getelementptr inbounds %struct.variable_union_info, ptr %461, i64 %493, i32 1
  store i32 %518, ptr %519, align 8, !tbaa !302
  br label %549

520:                                              ; preds = %512
  %521 = add nuw nsw i64 %493, 1
  %522 = icmp eq i64 %521, %472
  br i1 %522, label %523, label %492, !llvm.loop !304

523:                                              ; preds = %520, %485
  %524 = load ptr, ptr @loc_chain_pool, align 8, !tbaa !35
  %525 = tail call ptr @pool_alloc(ptr noundef %524) #21
  %526 = getelementptr inbounds %struct.location_chain_def, ptr %486, i64 0, i32 1
  %527 = load ptr, ptr %526, align 8, !tbaa !240
  %528 = getelementptr inbounds %struct.location_chain_def, ptr %525, i64 0, i32 1
  store ptr %527, ptr %528, align 8, !tbaa !240
  %529 = getelementptr inbounds %struct.location_chain_def, ptr %486, i64 0, i32 3
  %530 = load i32, ptr %529, align 8, !tbaa !248
  %531 = getelementptr inbounds %struct.location_chain_def, ptr %525, i64 0, i32 3
  store i32 %530, ptr %531, align 8, !tbaa !248
  %532 = getelementptr inbounds %struct.location_chain_def, ptr %486, i64 0, i32 2
  %533 = load ptr, ptr %532, align 8, !tbaa !249
  %534 = icmp eq ptr %533, null
  br i1 %534, label %540, label %535

535:                                              ; preds = %523
  %536 = load i32, ptr %533, align 8
  %537 = and i32 %536, 65535
  %538 = icmp eq i32 %537, 43
  %539 = select i1 %538, ptr null, ptr %533
  br label %540

540:                                              ; preds = %535, %523
  %541 = phi ptr [ null, %523 ], [ %539, %535 ]
  %542 = getelementptr inbounds %struct.location_chain_def, ptr %525, i64 0, i32 2
  store ptr %541, ptr %542, align 8, !tbaa !249
  %543 = sext i32 %487 to i64
  %544 = getelementptr inbounds %struct.variable_union_info, ptr %461, i64 %543
  store ptr %525, ptr %544, align 8, !tbaa !299
  %545 = getelementptr inbounds %struct.variable_union_info, ptr %461, i64 %543, i32 2
  store i32 %450, ptr %545, align 4, !tbaa !301
  %546 = add nuw i32 %471, %488
  %547 = getelementptr inbounds %struct.variable_union_info, ptr %461, i64 %543, i32 1
  store i32 %546, ptr %547, align 8, !tbaa !302
  %548 = add nsw i32 %487, 1
  br label %549

549:                                              ; preds = %516, %540
  %550 = phi i32 [ %548, %540 ], [ %487, %516 ]
  %551 = add nuw nsw i32 %488, 1
  %552 = load ptr, ptr %486, align 8, !tbaa !35
  %553 = icmp eq ptr %552, null
  br i1 %553, label %554, label %485, !llvm.loop !305

554:                                              ; preds = %549, %466
  %555 = phi i32 [ %383, %466 ], [ %550, %549 ]
  %556 = icmp eq i32 %383, 2
  br i1 %556, label %557, label %613

557:                                              ; preds = %554
  %558 = getelementptr inbounds %struct.variable_union_info, ptr %461, i64 0, i32 1
  %559 = load i32, ptr %558, align 8, !tbaa !302
  %560 = getelementptr inbounds %struct.variable_union_info, ptr %461, i64 1
  %561 = getelementptr inbounds %struct.variable_union_info, ptr %461, i64 1, i32 1
  %562 = load i32, ptr %561, align 8, !tbaa !302
  %563 = icmp sgt i32 %559, %562
  %564 = and i64 %287, 4294967295
  %565 = getelementptr inbounds %struct.variable_def, ptr %372, i64 0, i32 5, i64 %564
  br i1 %563, label %566, label %574

566:                                              ; preds = %557
  %567 = load ptr, ptr %560, align 8, !tbaa !299
  store ptr %567, ptr %565, align 8, !tbaa !208
  %568 = load ptr, ptr %461, align 8, !tbaa !299
  store ptr %568, ptr %567, align 8, !tbaa !210
  %569 = icmp sgt i32 %555, 2
  br i1 %569, label %570, label %598

570:                                              ; preds = %566
  %571 = getelementptr inbounds %struct.variable_union_info, ptr %461, i64 2
  %572 = load ptr, ptr %571, align 8, !tbaa !299
  store ptr %572, ptr %568, align 8, !tbaa !210
  %573 = zext nneg i32 %555 to i64
  br label %592

574:                                              ; preds = %557
  %575 = load ptr, ptr %461, align 8, !tbaa !299
  store ptr %575, ptr %565, align 8, !tbaa !208
  %576 = icmp sgt i32 %555, 2
  br i1 %576, label %577, label %590

577:                                              ; preds = %574
  %578 = getelementptr inbounds %struct.variable_union_info, ptr %461, i64 2, i32 1
  %579 = load i32, ptr %578, align 8, !tbaa !302
  %580 = icmp slt i32 %579, %562
  br i1 %580, label %581, label %590

581:                                              ; preds = %577
  %582 = getelementptr inbounds %struct.variable_union_info, ptr %461, i64 2
  %583 = load ptr, ptr %582, align 8, !tbaa !299
  store ptr %583, ptr %575, align 8, !tbaa !210
  %584 = load ptr, ptr %560, align 8, !tbaa !299
  store ptr %584, ptr %583, align 8, !tbaa !210
  %585 = icmp eq i32 %555, 3
  br i1 %585, label %598, label %586

586:                                              ; preds = %581
  %587 = getelementptr inbounds %struct.variable_union_info, ptr %461, i64 3
  %588 = load ptr, ptr %587, align 8, !tbaa !299
  store ptr %588, ptr %584, align 8, !tbaa !210
  %589 = zext nneg i32 %555 to i64
  br label %592

590:                                              ; preds = %577, %574
  %591 = sext i32 %555 to i64
  br label %592

592:                                              ; preds = %590, %570, %586
  %593 = phi i64 [ %589, %586 ], [ %573, %570 ], [ %591, %590 ]
  %594 = phi i32 [ 4, %586 ], [ 3, %570 ], [ 1, %590 ]
  %595 = getelementptr %struct.variable_union_info, ptr %461, i64 %593
  %596 = getelementptr %struct.variable_union_info, ptr %595, i64 -1
  %597 = load ptr, ptr %596, align 8, !tbaa !299
  br label %598

598:                                              ; preds = %592, %581, %566
  %599 = phi ptr [ %568, %566 ], [ %584, %581 ], [ %597, %592 ]
  %600 = phi i32 [ 3, %566 ], [ 4, %581 ], [ %594, %592 ]
  store ptr null, ptr %599, align 8, !tbaa !210
  %601 = icmp slt i32 %600, %555
  br i1 %601, label %602, label %633

602:                                              ; preds = %598
  %603 = zext nneg i32 %600 to i64
  %604 = zext i32 %555 to i64
  br label %605

605:                                              ; preds = %602, %605
  %606 = phi i64 [ %603, %602 ], [ %611, %605 ]
  %607 = getelementptr inbounds %struct.variable_union_info, ptr %461, i64 %606
  %608 = load ptr, ptr %607, align 8, !tbaa !299
  %609 = getelementptr %struct.variable_union_info, ptr %607, i64 -1
  %610 = load ptr, ptr %609, align 8, !tbaa !299
  store ptr %608, ptr %610, align 8, !tbaa !210
  %611 = add nuw nsw i64 %606, 1
  %612 = icmp eq i64 %611, %604
  br i1 %612, label %633, label %605, !llvm.loop !306

613:                                              ; preds = %554
  %614 = sext i32 %555 to i64
  tail call void @spec_qsort(ptr noundef %461, i64 noundef %614, i64 noundef 16, ptr noundef nonnull @variable_union_info_cmp_pos) #21
  %615 = icmp sgt i32 %555, 1
  br i1 %615, label %616, label %626

616:                                              ; preds = %613
  %617 = zext nneg i32 %555 to i64
  br label %618

618:                                              ; preds = %616, %618
  %619 = phi i64 [ 1, %616 ], [ %624, %618 ]
  %620 = getelementptr inbounds %struct.variable_union_info, ptr %461, i64 %619
  %621 = load ptr, ptr %620, align 8, !tbaa !299
  %622 = getelementptr %struct.variable_union_info, ptr %620, i64 -1
  %623 = load ptr, ptr %622, align 8, !tbaa !299
  store ptr %621, ptr %623, align 8, !tbaa !210
  %624 = add nuw nsw i64 %619, 1
  %625 = icmp eq i64 %624, %617
  br i1 %625, label %626, label %618, !llvm.loop !307

626:                                              ; preds = %618, %613
  %627 = getelementptr %struct.variable_union_info, ptr %461, i64 %614
  %628 = getelementptr %struct.variable_union_info, ptr %627, i64 -1
  %629 = load ptr, ptr %628, align 8, !tbaa !299
  store ptr null, ptr %629, align 8, !tbaa !210
  %630 = load ptr, ptr %461, align 8, !tbaa !299
  %631 = and i64 %287, 4294967295
  %632 = getelementptr inbounds %struct.variable_def, ptr %372, i64 0, i32 5, i64 %631
  store ptr %630, ptr %632, align 8, !tbaa !208
  br label %633

633:                                              ; preds = %605, %598, %626
  %634 = getelementptr inbounds %struct.variable_def, ptr %372, i64 0, i32 5, i64 %296, i32 2
  %635 = load i64, ptr %634, align 8, !tbaa !239
  %636 = and i64 %287, 4294967295
  %637 = getelementptr inbounds %struct.variable_def, ptr %372, i64 0, i32 5, i64 %636, i32 2
  store i64 %635, ptr %637, align 8, !tbaa !239
  br label %638

638:                                              ; preds = %633, %447
  %639 = add nsw i32 %285, -1
  %640 = add nsw i32 %286, -1
  br label %699

641:                                              ; preds = %291
  %642 = icmp slt i64 %295, %299
  br i1 %642, label %645, label %651

643:                                              ; preds = %281
  %644 = icmp slt i32 %285, 0
  br i1 %644, label %645, label %651

645:                                              ; preds = %643, %641
  %646 = and i64 %287, 4294967295
  %647 = getelementptr inbounds %struct.variable_def, ptr %283, i64 0, i32 5, i64 %646
  %648 = sext i32 %286 to i64
  %649 = getelementptr inbounds %struct.variable_def, ptr %283, i64 0, i32 5, i64 %648
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %647, ptr noundef nonnull align 8 dereferenceable(24) %649, i64 24, i1 false), !tbaa.struct !250
  %650 = add nsw i32 %286, -1
  br label %699

651:                                              ; preds = %641, %643
  br i1 %290, label %652, label %660

652:                                              ; preds = %651
  %653 = zext nneg i32 %285 to i64
  %654 = getelementptr inbounds %struct.variable_def, ptr %3, i64 0, i32 5, i64 %653, i32 2
  %655 = load i64, ptr %654, align 8, !tbaa !239
  %656 = zext nneg i32 %286 to i64
  %657 = getelementptr inbounds %struct.variable_def, ptr %283, i64 0, i32 5, i64 %656, i32 2
  %658 = load i64, ptr %657, align 8, !tbaa !239
  %659 = icmp sgt i64 %655, %658
  br i1 %659, label %662, label %699

660:                                              ; preds = %651
  %661 = icmp slt i32 %286, 0
  br i1 %661, label %662, label %699

662:                                              ; preds = %660, %652
  %663 = and i64 %287, 4294967295
  %664 = sext i32 %285 to i64
  %665 = getelementptr inbounds %struct.variable_def, ptr %3, i64 0, i32 5, i64 %664
  %666 = load ptr, ptr %665, align 8, !tbaa !35
  %667 = icmp eq ptr %666, null
  br i1 %667, label %694, label %668

668:                                              ; preds = %662
  %669 = getelementptr inbounds %struct.variable_def, ptr %283, i64 0, i32 5, i64 %663
  br label %670

670:                                              ; preds = %668, %686
  %671 = phi ptr [ %692, %686 ], [ %666, %668 ]
  %672 = phi ptr [ %674, %686 ], [ %669, %668 ]
  %673 = load ptr, ptr @loc_chain_pool, align 8, !tbaa !35
  %674 = tail call ptr @pool_alloc(ptr noundef %673) #21
  store ptr null, ptr %674, align 8, !tbaa !210
  %675 = getelementptr inbounds %struct.location_chain_def, ptr %671, i64 0, i32 3
  %676 = load i32, ptr %675, align 8, !tbaa !248
  %677 = getelementptr inbounds %struct.location_chain_def, ptr %674, i64 0, i32 3
  store i32 %676, ptr %677, align 8, !tbaa !248
  %678 = getelementptr inbounds %struct.location_chain_def, ptr %671, i64 0, i32 2
  %679 = load ptr, ptr %678, align 8, !tbaa !249
  %680 = icmp eq ptr %679, null
  br i1 %680, label %686, label %681

681:                                              ; preds = %670
  %682 = load i32, ptr %679, align 8
  %683 = and i32 %682, 65535
  %684 = icmp eq i32 %683, 43
  %685 = select i1 %684, ptr null, ptr %679
  br label %686

686:                                              ; preds = %681, %670
  %687 = phi ptr [ null, %670 ], [ %685, %681 ]
  %688 = getelementptr inbounds %struct.location_chain_def, ptr %674, i64 0, i32 2
  store ptr %687, ptr %688, align 8, !tbaa !249
  %689 = getelementptr inbounds %struct.location_chain_def, ptr %671, i64 0, i32 1
  %690 = load ptr, ptr %689, align 8, !tbaa !240
  %691 = getelementptr inbounds %struct.location_chain_def, ptr %674, i64 0, i32 1
  store ptr %690, ptr %691, align 8, !tbaa !240
  store ptr %674, ptr %672, align 8, !tbaa !35
  %692 = load ptr, ptr %671, align 8, !tbaa !35
  %693 = icmp eq ptr %692, null
  br i1 %693, label %694, label %670, !llvm.loop !308

694:                                              ; preds = %686, %662
  %695 = getelementptr inbounds %struct.variable_def, ptr %3, i64 0, i32 5, i64 %664, i32 2
  %696 = load i64, ptr %695, align 8, !tbaa !239
  %697 = getelementptr inbounds %struct.variable_def, ptr %283, i64 0, i32 5, i64 %663, i32 2
  store i64 %696, ptr %697, align 8, !tbaa !239
  %698 = add nsw i32 %285, -1
  br label %699

699:                                              ; preds = %645, %652, %694, %660, %638
  %700 = phi i32 [ %640, %638 ], [ %650, %645 ], [ %286, %694 ], [ %286, %652 ], [ %286, %660 ]
  %701 = phi i32 [ %639, %638 ], [ %285, %645 ], [ %698, %694 ], [ %285, %652 ], [ %285, %660 ]
  %702 = phi ptr [ %371, %638 ], [ %284, %645 ], [ %284, %694 ], [ %284, %652 ], [ %284, %660 ]
  %703 = phi ptr [ %372, %638 ], [ %283, %645 ], [ %283, %694 ], [ %283, %652 ], [ %283, %660 ]
  %704 = and i64 %287, 4294967295
  %705 = getelementptr inbounds %struct.variable_def, ptr %703, i64 0, i32 5, i64 %704, i32 1
  store ptr null, ptr %705, align 8, !tbaa !253
  %706 = trunc i64 %282 to i32
  %707 = icmp sgt i32 %706, 1
  br i1 %707, label %281, label %708, !llvm.loop !309

708:                                              ; preds = %699, %267
  %709 = phi ptr [ %269, %267 ], [ %703, %699 ]
  %710 = load i32, ptr @flag_var_tracking_uninit, align 4, !tbaa !50
  %711 = icmp eq i32 %710, 0
  br i1 %711, label %758, label %712

712:                                              ; preds = %708
  %713 = getelementptr inbounds %struct.variable_def, ptr %709, i64 0, i32 2
  %714 = load i8, ptr %44, align 4, !tbaa !207
  %715 = icmp sgt i8 %714, 0
  br i1 %715, label %716, label %758

716:                                              ; preds = %712, %753
  %717 = phi i64 [ %754, %753 ], [ 0, %712 ]
  %718 = load i8, ptr %713, align 4, !tbaa !207
  %719 = sext i8 %718 to i64
  %720 = icmp slt i64 %717, %719
  br i1 %720, label %721, label %758

721:                                              ; preds = %716
  %722 = getelementptr inbounds %struct.variable_def, ptr %3, i64 0, i32 5, i64 %717
  %723 = load ptr, ptr %722, align 8, !tbaa !35
  %724 = icmp eq ptr %723, null
  br i1 %724, label %753, label %725

725:                                              ; preds = %721
  %726 = getelementptr inbounds %struct.variable_def, ptr %709, i64 0, i32 5, i64 %717
  br label %730

727:                                              ; preds = %750, %730
  %728 = load ptr, ptr %731, align 8, !tbaa !35
  %729 = icmp eq ptr %728, null
  br i1 %729, label %753, label %730, !llvm.loop !310

730:                                              ; preds = %725, %727
  %731 = phi ptr [ %723, %725 ], [ %728, %727 ]
  %732 = load ptr, ptr %726, align 8, !tbaa !35
  %733 = icmp eq ptr %732, null
  br i1 %733, label %727, label %734

734:                                              ; preds = %730
  %735 = getelementptr inbounds %struct.location_chain_def, ptr %731, i64 0, i32 1
  %736 = getelementptr inbounds %struct.location_chain_def, ptr %731, i64 0, i32 3
  br label %737

737:                                              ; preds = %734, %750
  %738 = phi ptr [ %732, %734 ], [ %751, %750 ]
  %739 = load ptr, ptr %735, align 8, !tbaa !240
  %740 = getelementptr inbounds %struct.location_chain_def, ptr %738, i64 0, i32 1
  %741 = load ptr, ptr %740, align 8, !tbaa !240
  %742 = tail call i32 @rtx_equal_p(ptr noundef %739, ptr noundef %741) #21
  %743 = icmp eq i32 %742, 0
  br i1 %743, label %750, label %744

744:                                              ; preds = %737
  %745 = load i32, ptr %736, align 8, !tbaa !248
  %746 = getelementptr inbounds %struct.location_chain_def, ptr %738, i64 0, i32 3
  %747 = load i32, ptr %746, align 8, !tbaa !248
  %748 = icmp ugt i32 %745, %747
  br i1 %748, label %749, label %750

749:                                              ; preds = %744
  store i32 %745, ptr %746, align 8, !tbaa !248
  br label %750

750:                                              ; preds = %737, %749, %744
  %751 = load ptr, ptr %738, align 8, !tbaa !35
  %752 = icmp eq ptr %751, null
  br i1 %752, label %727, label %737, !llvm.loop !311

753:                                              ; preds = %727, %721
  %754 = add nuw nsw i64 %717, 1
  %755 = load i8, ptr %44, align 4, !tbaa !207
  %756 = sext i8 %755 to i64
  %757 = icmp slt i64 %754, %756
  br i1 %757, label %716, label %758, !llvm.loop !312

758:                                              ; preds = %103, %716, %753, %712, %708, %41
  ret i32 1
}

; Function Attrs: cold nounwind uwtable
define internal fastcc zeroext i8 @onepart_variable_different_p(ptr noundef readonly %0, ptr noundef readonly %1) unnamed_addr #9 !prof !34 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %48, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.variable_def, ptr %0, i64 0, i32 2
  %6 = load i8, ptr %5, align 4, !tbaa !207
  %7 = icmp eq i8 %6, 1
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 4314, ptr noundef nonnull @.str.2) #21
  br label %9

9:                                                ; preds = %4, %8
  %10 = getelementptr inbounds %struct.variable_def, ptr %1, i64 0, i32 2
  %11 = load i8, ptr %10, align 4, !tbaa !207
  %12 = icmp eq i8 %11, 1
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 4315, ptr noundef nonnull @.str.2) #21
  br label %14

14:                                               ; preds = %9, %13
  %15 = getelementptr inbounds %struct.variable_def, ptr %0, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !208
  %17 = getelementptr inbounds %struct.variable_def, ptr %1, i64 0, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !208
  %19 = icmp eq ptr %16, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 4320, ptr noundef nonnull @.str.2) #21
  br label %21

21:                                               ; preds = %14, %20
  %22 = icmp eq ptr %18, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 4321, ptr noundef nonnull @.str.2) #21
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp ne ptr %16, null
  %26 = icmp ne ptr %18, null
  %27 = select i1 %25, i1 %26, i1 false
  br i1 %27, label %28, label %43

28:                                               ; preds = %24, %37
  %29 = phi ptr [ %39, %37 ], [ %18, %24 ]
  %30 = phi ptr [ %38, %37 ], [ %16, %24 ]
  %31 = getelementptr inbounds %struct.location_chain_def, ptr %30, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !240
  %33 = getelementptr inbounds %struct.location_chain_def, ptr %29, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !240
  %35 = tail call fastcc i32 @loc_cmp(ptr noundef %32, ptr noundef %34), !range !243
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %28
  %38 = load ptr, ptr %30, align 8, !tbaa !210
  %39 = load ptr, ptr %29, align 8, !tbaa !210
  %40 = icmp ne ptr %38, null
  %41 = icmp ne ptr %39, null
  %42 = select i1 %40, i1 %41, i1 false
  br i1 %42, label %28, label %43, !llvm.loop !313

43:                                               ; preds = %37, %24
  %44 = phi ptr [ %16, %24 ], [ %38, %37 ]
  %45 = phi ptr [ %18, %24 ], [ %39, %37 ]
  %46 = icmp ne ptr %44, %45
  %47 = zext i1 %46 to i8
  br label %48

48:                                               ; preds = %28, %2, %43
  %49 = phi i8 [ %47, %43 ], [ 0, %2 ], [ 1, %28 ]
  ret i8 %49
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @intersect_loc_chains(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, ptr noundef readonly %3, ptr nocapture noundef readonly %4) unnamed_addr #9 !prof !34 {
  %6 = icmp eq ptr %3, null
  br i1 %6, label %92, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.dfset_merge, ptr %2, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !182
  %10 = getelementptr inbounds %struct.dfset_merge, ptr %2, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !183
  %12 = getelementptr inbounds %struct.dataflow_set_def, ptr %9, i64 0, i32 2
  br label %13

13:                                               ; preds = %7, %89
  %14 = phi ptr [ %3, %7 ], [ %90, %89 ]
  %15 = getelementptr inbounds %struct.location_chain_def, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !240
  %17 = icmp eq ptr %16, %0
  br i1 %17, label %89, label %18

18:                                               ; preds = %13
  %19 = load ptr, ptr %12, align 8, !tbaa !77
  %20 = getelementptr inbounds %struct.shared_hash_def, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !83
  %22 = tail call fastcc ptr @find_loc_in_1pdv(ptr noundef %16, ptr noundef %4, ptr noundef %21)
  %23 = icmp eq ptr %22, null
  %24 = load ptr, ptr %15, align 8, !tbaa !240
  br i1 %23, label %53, label %25

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.location_chain_def, ptr %14, i64 0, i32 3
  %27 = load i32, ptr %26, align 8, !tbaa !248
  %28 = getelementptr inbounds %struct.location_chain_def, ptr %22, i64 0, i32 3
  %29 = load i32, ptr %28, align 8, !tbaa !248
  %30 = tail call i32 @llvm.umin.i32(i32 %27, i32 %29)
  br label %31

31:                                               ; preds = %44, %25
  %32 = phi ptr [ %1, %25 ], [ %33, %44 ]
  %33 = load ptr, ptr %32, align 8, !tbaa !35
  %34 = icmp eq ptr %33, null
  br i1 %34, label %46, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.location_chain_def, ptr %33, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !240
  %38 = tail call fastcc i32 @loc_cmp(ptr noundef %37, ptr noundef %24), !range !243
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.location_chain_def, ptr %33, i64 0, i32 3
  %42 = load i32, ptr %41, align 8, !tbaa !248
  %43 = tail call i32 @llvm.umin.i32(i32 %42, i32 %30)
  store i32 %43, ptr %41, align 8, !tbaa !248
  br label %89

44:                                               ; preds = %35
  %45 = icmp sgt i32 %38, 0
  br i1 %45, label %46, label %31, !llvm.loop !314

46:                                               ; preds = %44, %31
  %47 = load ptr, ptr @loc_chain_pool, align 8, !tbaa !35
  %48 = tail call ptr @pool_alloc(ptr noundef %47) #21
  %49 = getelementptr inbounds %struct.location_chain_def, ptr %48, i64 0, i32 1
  store ptr %24, ptr %49, align 8, !tbaa !240
  %50 = getelementptr inbounds %struct.location_chain_def, ptr %48, i64 0, i32 2
  store ptr null, ptr %50, align 8, !tbaa !249
  %51 = getelementptr inbounds %struct.location_chain_def, ptr %48, i64 0, i32 3
  store i32 %30, ptr %51, align 8, !tbaa !248
  %52 = load ptr, ptr %32, align 8, !tbaa !35
  store ptr %52, ptr %48, align 8, !tbaa !210
  store ptr %48, ptr %32, align 8, !tbaa !35
  br label %89

53:                                               ; preds = %18
  %54 = load i32, ptr %24, align 8
  %55 = and i32 %54, 536936447
  %56 = icmp eq i32 %55, 1
  br i1 %56, label %57, label %89

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.dataflow_set_def, ptr %11, i64 0, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !77
  %60 = load i64, ptr %24, align 8
  %61 = and i64 %60, 65535
  %62 = icmp eq i64 %61, 1
  br i1 %62, label %63, label %67

63:                                               ; preds = %57
  %64 = getelementptr inbounds %struct.rtx_def, ptr %24, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !46
  %66 = getelementptr inbounds %struct.cselib_val_struct, ptr %65, i64 0, i32 1
  br label %69

67:                                               ; preds = %57
  %68 = getelementptr inbounds %struct.tree_decl_minimal, ptr %24, i64 0, i32 2
  br label %69

69:                                               ; preds = %63, %67
  %70 = phi ptr [ %66, %63 ], [ %68, %67 ]
  %71 = load i32, ptr %70, align 4, !tbaa !46
  %72 = getelementptr inbounds %struct.shared_hash_def, ptr %59, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !83
  %74 = tail call ptr @htab_find_with_hash(ptr noundef %73, ptr noundef nonnull %24, i32 noundef %71) #21
  %75 = icmp eq ptr %74, null
  br i1 %75, label %89, label %76

76:                                               ; preds = %69
  %77 = getelementptr inbounds %struct.variable_def, ptr %74, i64 0, i32 2
  %78 = load i8, ptr %77, align 4, !tbaa !207
  %79 = icmp eq i8 %78, 1
  br i1 %79, label %80, label %89

80:                                               ; preds = %76
  %81 = load ptr, ptr %15, align 8, !tbaa !240
  %82 = load i32, ptr %81, align 8
  %83 = or i32 %82, 536870912
  store i32 %83, ptr %81, align 8
  %84 = getelementptr inbounds %struct.variable_def, ptr %74, i64 0, i32 5
  %85 = load ptr, ptr %84, align 8, !tbaa !208
  tail call fastcc void @intersect_loc_chains(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %85, ptr noundef %4)
  %86 = load ptr, ptr %15, align 8, !tbaa !240
  %87 = load i32, ptr %86, align 8
  %88 = and i32 %87, -536870913
  store i32 %88, ptr %86, align 8
  br label %89

89:                                               ; preds = %46, %40, %69, %80, %76, %53, %13
  %90 = load ptr, ptr %14, align 8, !tbaa !210
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %13, !llvm.loop !315

92:                                               ; preds = %89, %5
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef ptr @delete_slot_part(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) unnamed_addr #9 !prof !34 {
  %5 = load ptr, ptr %2, align 8, !tbaa !35
  %6 = getelementptr inbounds %struct.variable_def, ptr %5, i64 0, i32 2
  %7 = load i8, ptr %6, align 4, !tbaa !207
  %8 = sext i8 %7 to i32
  %9 = icmp eq i8 %7, 0
  br i1 %9, label %23, label %10

10:                                               ; preds = %4, %10
  %11 = phi i32 [ %21, %10 ], [ %8, %4 ]
  %12 = phi i32 [ %20, %10 ], [ 0, %4 ]
  %13 = add nsw i32 %11, %12
  %14 = sdiv i32 %13, 2
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.variable_def, ptr %5, i64 0, i32 5, i64 %15, i32 2
  %17 = load i64, ptr %16, align 8, !tbaa !239
  %18 = icmp slt i64 %17, %3
  %19 = add nsw i32 %14, 1
  %20 = select i1 %18, i32 %19, i32 %12
  %21 = select i1 %18, i32 %11, i32 %14
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %10, !llvm.loop !247

23:                                               ; preds = %10, %4
  %24 = phi i32 [ 0, %4 ], [ %20, %10 ]
  %25 = icmp slt i32 %24, %8
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = sext i32 %24 to i64
  %28 = getelementptr inbounds %struct.variable_def, ptr %5, i64 0, i32 5, i64 %27, i32 2
  %29 = load i64, ptr %28, align 8, !tbaa !239
  %30 = icmp eq i64 %29, %3
  br i1 %30, label %32, label %31

31:                                               ; preds = %26, %23
  br label %32

32:                                               ; preds = %26, %31
  %33 = phi i32 [ -1, %31 ], [ %24, %26 ]
  %34 = icmp sgt i32 %33, -1
  br i1 %34, label %35, label %175

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.variable_def, ptr %5, i64 0, i32 1
  %37 = load i32, ptr %36, align 8, !tbaa !206
  %38 = getelementptr inbounds %struct.variable_def, ptr %5, i64 0, i32 4
  %39 = load i8, ptr %38, align 2, !tbaa !238
  %40 = zext i8 %39 to i32
  %41 = add nuw nsw i32 %40, 1
  %42 = icmp sgt i32 %37, %41
  br i1 %42, label %48, label %43

43:                                               ; preds = %35
  %44 = getelementptr inbounds %struct.dataflow_set_def, ptr %0, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !77
  %46 = load i32, ptr %45, align 8, !tbaa !75
  %47 = icmp slt i32 %46, 2
  br i1 %47, label %77, label %48

48:                                               ; preds = %35, %43
  %49 = zext nneg i32 %33 to i64
  %50 = getelementptr inbounds %struct.variable_def, ptr %5, i64 0, i32 5, i64 %49
  %51 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %52

52:                                               ; preds = %71, %48
  %53 = phi ptr [ %50, %48 ], [ %54, %71 ]
  %54 = load ptr, ptr %53, align 8, !tbaa !35
  %55 = icmp eq ptr %54, null
  br i1 %55, label %77, label %56

56:                                               ; preds = %52
  %57 = getelementptr inbounds %struct.location_chain_def, ptr %54, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !240
  %59 = load i32, ptr %58, align 8
  %60 = and i32 %59, 65535
  %61 = icmp eq i32 %60, 37
  br i1 %61, label %62, label %71

62:                                               ; preds = %56
  %63 = load i32, ptr %1, align 8
  %64 = and i32 %63, 65535
  %65 = icmp eq i32 %64, 37
  br i1 %65, label %66, label %71

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.rtx_def, ptr %58, i64 0, i32 1
  %68 = load i32, ptr %67, align 8, !tbaa !46
  %69 = load i32, ptr %51, align 8, !tbaa !46
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %74, label %71

71:                                               ; preds = %66, %62, %56
  %72 = tail call i32 @rtx_equal_p(ptr noundef nonnull %58, ptr noundef %1) #21
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %52, label %74, !llvm.loop !316

74:                                               ; preds = %66, %71
  %75 = tail call fastcc ptr @unshare_variable(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %5, i32 noundef 0)
  %76 = load ptr, ptr %75, align 8, !tbaa !35
  br label %77

77:                                               ; preds = %52, %74, %43
  %78 = phi ptr [ %76, %74 ], [ %5, %43 ], [ %5, %52 ]
  %79 = phi ptr [ %75, %74 ], [ %2, %43 ], [ %2, %52 ]
  %80 = zext nneg i32 %33 to i64
  %81 = getelementptr inbounds %struct.variable_def, ptr %78, i64 0, i32 5, i64 %80
  %82 = load ptr, ptr %81, align 8, !tbaa !35
  %83 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  br label %84

84:                                               ; preds = %104, %77
  %85 = phi ptr [ %82, %77 ], [ %89, %104 ]
  %86 = phi ptr [ %81, %77 ], [ %85, %104 ]
  %87 = icmp eq ptr %85, null
  br i1 %87, label %145, label %88

88:                                               ; preds = %84
  %89 = load ptr, ptr %85, align 8, !tbaa !210
  %90 = getelementptr inbounds %struct.location_chain_def, ptr %85, i64 0, i32 1
  %91 = load ptr, ptr %90, align 8, !tbaa !240
  %92 = load i32, ptr %91, align 8
  %93 = and i32 %92, 65535
  %94 = icmp eq i32 %93, 37
  br i1 %94, label %95, label %104

95:                                               ; preds = %88
  %96 = load i32, ptr %1, align 8
  %97 = and i32 %96, 65535
  %98 = icmp eq i32 %97, 37
  br i1 %98, label %99, label %104

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.rtx_def, ptr %91, i64 0, i32 1
  %101 = load i32, ptr %100, align 8, !tbaa !46
  %102 = load i32, ptr %83, align 8, !tbaa !46
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %107, label %104

104:                                              ; preds = %99, %95, %88
  %105 = tail call i32 @rtx_equal_p(ptr noundef nonnull %91, ptr noundef %1) #21
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %84, label %107, !llvm.loop !317

107:                                              ; preds = %99, %104
  %108 = getelementptr inbounds %struct.location_chain_def, ptr %85, i64 0, i32 1
  %109 = load i1, ptr @emit_notes, align 1
  %110 = icmp eq i32 %33, 0
  %111 = and i1 %110, %109
  br i1 %111, label %112, label %135

112:                                              ; preds = %107
  %113 = load ptr, ptr %78, align 8, !tbaa !204
  %114 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !50
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %135, label %116

116:                                              ; preds = %112
  %117 = icmp eq ptr %113, null
  br i1 %117, label %122, label %118

118:                                              ; preds = %116
  %119 = load i64, ptr %113, align 8
  %120 = and i64 %119, 65535
  %121 = icmp eq i64 %120, 1
  br label %122

122:                                              ; preds = %118, %116
  %123 = phi i1 [ false, %116 ], [ %121, %118 ]
  %124 = or i1 %117, %123
  br i1 %124, label %132, label %125

125:                                              ; preds = %122
  %126 = load i64, ptr %113, align 8
  %127 = and i64 %126, 65535
  %128 = icmp eq i64 %127, 37
  br i1 %128, label %132, label %129

129:                                              ; preds = %125
  %130 = tail call ptr @target_for_debug_bind(ptr noundef nonnull %113) #21
  %131 = icmp eq ptr %130, null
  br i1 %131, label %135, label %132

132:                                              ; preds = %122, %125, %129
  %133 = load ptr, ptr %78, align 8, !tbaa !204
  %134 = load ptr, ptr %108, align 8, !tbaa !240
  tail call fastcc void @remove_value_chains(ptr noundef %133, ptr noundef %134)
  br label %135

135:                                              ; preds = %112, %132, %129, %107
  %136 = getelementptr inbounds %struct.variable_def, ptr %78, i64 0, i32 5, i64 %80, i32 1
  %137 = load ptr, ptr %136, align 8, !tbaa !253
  %138 = load ptr, ptr %108, align 8, !tbaa !240
  %139 = icmp eq ptr %137, %138
  br i1 %139, label %140, label %142

140:                                              ; preds = %135
  store ptr null, ptr %136, align 8, !tbaa !253
  %141 = getelementptr inbounds %struct.variable_def, ptr %78, i64 0, i32 3
  store i8 1, ptr %141, align 1, !tbaa !237
  br label %142

142:                                              ; preds = %140, %135
  %143 = phi i8 [ 1, %140 ], [ 0, %135 ]
  %144 = load ptr, ptr @loc_chain_pool, align 8, !tbaa !35
  tail call void @pool_free(ptr noundef %144, ptr noundef nonnull %85) #21
  store ptr %89, ptr %86, align 8, !tbaa !35
  br label %145

145:                                              ; preds = %84, %142
  %146 = phi i8 [ %143, %142 ], [ 0, %84 ]
  %147 = load ptr, ptr %81, align 8, !tbaa !208
  %148 = icmp eq ptr %147, null
  br i1 %148, label %149, label %171

149:                                              ; preds = %145
  %150 = getelementptr inbounds %struct.variable_def, ptr %78, i64 0, i32 2
  %151 = load i8, ptr %150, align 4, !tbaa !207
  %152 = add i8 %151, -1
  store i8 %152, ptr %150, align 4, !tbaa !207
  %153 = load i1, ptr @emit_notes, align 1
  br i1 %153, label %154, label %156

154:                                              ; preds = %149
  %155 = getelementptr inbounds %struct.variable_def, ptr %78, i64 0, i32 3
  store i8 1, ptr %155, align 1, !tbaa !237
  br label %156

156:                                              ; preds = %154, %149
  %157 = load i8, ptr %150, align 4, !tbaa !207
  %158 = sext i8 %157 to i32
  %159 = icmp slt i32 %33, %158
  br i1 %159, label %160, label %171

160:                                              ; preds = %156
  %161 = zext nneg i32 %33 to i64
  br label %162

162:                                              ; preds = %160, %162
  %163 = phi i64 [ %161, %160 ], [ %165, %162 ]
  %164 = getelementptr inbounds %struct.variable_def, ptr %78, i64 0, i32 5, i64 %163
  %165 = add nuw nsw i64 %163, 1
  %166 = getelementptr inbounds %struct.variable_def, ptr %78, i64 0, i32 5, i64 %165
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %164, ptr noundef nonnull align 8 dereferenceable(24) %166, i64 24, i1 false), !tbaa.struct !250
  %167 = load i8, ptr %150, align 4, !tbaa !207
  %168 = sext i8 %167 to i32
  %169 = trunc i64 %165 to i32
  %170 = icmp slt i32 %169, %168
  br i1 %170, label %162, label %171, !llvm.loop !318

171:                                              ; preds = %162, %156, %145
  %172 = phi i8 [ %146, %145 ], [ 1, %156 ], [ 1, %162 ]
  %173 = icmp eq i8 %172, 0
  br i1 %173, label %175, label %174

174:                                              ; preds = %171
  tail call fastcc void @variable_was_changed(ptr noundef %78, ptr noundef %0)
  br label %175

175:                                              ; preds = %171, %174, %32
  %176 = phi ptr [ %2, %32 ], [ %79, %174 ], [ %79, %171 ]
  ret ptr %176
}

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @canonicalize_values_star(ptr noundef %0, ptr noundef %1) #9 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  %4 = load ptr, ptr %3, align 8, !tbaa !204
  %5 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !50
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %343, label %7

7:                                                ; preds = %2
  %8 = icmp eq ptr %4, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %7
  %10 = load i64, ptr %4, align 8
  %11 = and i64 %10, 65535
  %12 = icmp eq i64 %11, 1
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i1 [ false, %7 ], [ %12, %9 ]
  %15 = or i1 %8, %14
  br i1 %15, label %23, label %16

16:                                               ; preds = %13
  %17 = load i64, ptr %4, align 8
  %18 = and i64 %17, 65535
  %19 = icmp eq i64 %18, 37
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = tail call ptr @target_for_debug_bind(ptr noundef nonnull %4) #21
  %22 = icmp eq ptr %21, null
  br i1 %22, label %343, label %23

23:                                               ; preds = %13, %16, %20
  %24 = getelementptr inbounds %struct.variable_def, ptr %3, i64 0, i32 2
  %25 = load i8, ptr %24, align 4, !tbaa !207
  %26 = icmp eq i8 %25, 1
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3068, ptr noundef nonnull @.str.2) #21
  br label %28

28:                                               ; preds = %23, %27
  %29 = icmp eq ptr %4, null
  br i1 %29, label %40, label %30

30:                                               ; preds = %28
  %31 = load i64, ptr %4, align 8
  %32 = and i64 %31, 65535
  %33 = icmp eq i64 %32, 1
  br i1 %33, label %34, label %40

34:                                               ; preds = %30
  %35 = load i32, ptr %4, align 8
  %36 = and i32 %35, 536870912
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %343, label %38

38:                                               ; preds = %34
  %39 = and i32 %35, -536870913
  store i32 %39, ptr %4, align 8
  br label %40

40:                                               ; preds = %28, %30, %38
  %41 = phi ptr [ %4, %38 ], [ null, %30 ], [ null, %28 ]
  br label %42

42:                                               ; preds = %172, %40
  %43 = phi ptr [ %4, %40 ], [ %125, %172 ]
  %44 = phi ptr [ %3, %40 ], [ %157, %172 ]
  %45 = phi ptr [ %0, %40 ], [ %144, %172 ]
  %46 = phi ptr [ %41, %40 ], [ %125, %172 ]
  %47 = getelementptr inbounds %struct.variable_def, ptr %44, i64 0, i32 2
  %48 = load i8, ptr %47, align 4, !tbaa !207
  %49 = icmp eq i8 %48, 1
  br i1 %49, label %51, label %50

50:                                               ; preds = %42
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3085, ptr noundef nonnull @.str.2) #21
  br label %51

51:                                               ; preds = %42, %50
  %52 = getelementptr inbounds %struct.variable_def, ptr %44, i64 0, i32 5
  %53 = load ptr, ptr %52, align 8, !tbaa !35
  %54 = icmp eq ptr %53, null
  br i1 %54, label %91, label %55

55:                                               ; preds = %51, %85
  %56 = phi ptr [ %89, %85 ], [ %53, %51 ]
  %57 = phi i8 [ %88, %85 ], [ 0, %51 ]
  %58 = phi i8 [ %87, %85 ], [ 0, %51 ]
  %59 = phi ptr [ %86, %85 ], [ %46, %51 ]
  %60 = getelementptr inbounds %struct.location_chain_def, ptr %56, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !240
  %62 = load i32, ptr %61, align 8
  %63 = and i32 %62, 65535
  %64 = icmp eq i32 %63, 1
  br i1 %64, label %65, label %85

65:                                               ; preds = %55
  %66 = and i32 %62, 536870912
  %67 = icmp eq i32 %66, 0
  %68 = select i1 %67, i8 %57, i8 1
  %69 = icmp eq ptr %59, null
  br i1 %69, label %81, label %70

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.rtx_def, ptr %61, i64 0, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !46
  %73 = getelementptr inbounds %struct.cselib_val_struct, ptr %72, i64 0, i32 1
  %74 = load i32, ptr %73, align 4, !tbaa !193
  %75 = getelementptr inbounds %struct.rtx_def, ptr %59, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !46
  %77 = getelementptr inbounds %struct.cselib_val_struct, ptr %76, i64 0, i32 1
  %78 = load i32, ptr %77, align 4, !tbaa !193
  %79 = icmp slt i32 %74, %78
  %80 = zext i1 %79 to i8
  br label %81

81:                                               ; preds = %65, %70
  %82 = phi i8 [ 1, %65 ], [ %80, %70 ]
  %83 = icmp eq i8 %82, 0
  %84 = select i1 %83, ptr %59, ptr %61
  br label %85

85:                                               ; preds = %81, %55
  %86 = phi ptr [ %59, %55 ], [ %84, %81 ]
  %87 = phi i8 [ %58, %55 ], [ 1, %81 ]
  %88 = phi i8 [ %57, %55 ], [ %68, %81 ]
  %89 = load ptr, ptr %56, align 8, !tbaa !35
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %55, !llvm.loop !319

91:                                               ; preds = %85, %51
  %92 = phi ptr [ %46, %51 ], [ %86, %85 ]
  %93 = phi i8 [ 0, %51 ], [ %87, %85 ]
  %94 = phi i8 [ 0, %51 ], [ %88, %85 ]
  %95 = icmp eq i8 %93, 0
  br i1 %95, label %343, label %96

96:                                               ; preds = %91
  %97 = icmp eq ptr %92, %46
  br i1 %97, label %98, label %176

98:                                               ; preds = %96
  %99 = icmp eq i8 %94, 0
  br i1 %99, label %343, label %100

100:                                              ; preds = %98
  %101 = icmp eq ptr %43, null
  br i1 %101, label %107, label %102

102:                                              ; preds = %100
  %103 = load i64, ptr %43, align 8
  %104 = and i64 %103, 65535
  %105 = icmp ne i64 %104, 1
  %106 = zext i1 %105 to i8
  br label %107

107:                                              ; preds = %100, %102
  %108 = phi i8 [ 1, %100 ], [ %106, %102 ]
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %110, label %343

110:                                              ; preds = %107
  %111 = load i32, ptr %46, align 8
  %112 = or i32 %111, 536870912
  store i32 %112, ptr %46, align 8
  br label %113

113:                                              ; preds = %117, %110
  %114 = phi ptr [ %52, %110 ], [ %115, %117 ]
  %115 = load ptr, ptr %114, align 8, !tbaa !35
  %116 = icmp eq ptr %115, null
  br i1 %116, label %174, label %117

117:                                              ; preds = %113
  %118 = getelementptr inbounds %struct.location_chain_def, ptr %115, i64 0, i32 1
  %119 = load ptr, ptr %118, align 8, !tbaa !240
  %120 = load i32, ptr %119, align 8
  %121 = and i32 %120, 536936447
  %122 = icmp eq i32 %121, 536870913
  br i1 %122, label %123, label %113, !llvm.loop !320

123:                                              ; preds = %117, %339
  %124 = phi ptr [ %325, %339 ], [ %44, %117 ]
  %125 = phi ptr [ %92, %339 ], [ %119, %117 ]
  %126 = getelementptr inbounds %struct.dataflow_set_def, ptr %1, i64 0, i32 2
  %127 = load i32, ptr %125, align 8
  %128 = and i32 %127, -536870913
  store i32 %128, ptr %125, align 8
  %129 = load ptr, ptr %126, align 8, !tbaa !77
  %130 = load i64, ptr %125, align 8
  %131 = and i64 %130, 65535
  %132 = icmp eq i64 %131, 1
  br i1 %132, label %133, label %137

133:                                              ; preds = %123
  %134 = getelementptr inbounds %struct.rtx_def, ptr %125, i64 0, i32 1
  %135 = load ptr, ptr %134, align 8, !tbaa !46
  %136 = getelementptr inbounds %struct.cselib_val_struct, ptr %135, i64 0, i32 1
  br label %139

137:                                              ; preds = %123
  %138 = getelementptr inbounds %struct.tree_decl_minimal, ptr %125, i64 0, i32 2
  br label %139

139:                                              ; preds = %133, %137
  %140 = phi ptr [ %136, %133 ], [ %138, %137 ]
  %141 = load i32, ptr %140, align 4, !tbaa !46
  %142 = getelementptr inbounds %struct.shared_hash_def, ptr %129, i64 0, i32 1
  %143 = load ptr, ptr %142, align 8, !tbaa !83
  %144 = tail call ptr @htab_find_slot_with_hash(ptr noundef %143, ptr noundef nonnull %125, i32 noundef %141, i32 noundef 0) #21
  %145 = icmp eq ptr %144, null
  br i1 %145, label %146, label %156

146:                                              ; preds = %139
  %147 = load ptr, ptr %124, align 8, !tbaa !204
  %148 = icmp eq ptr %147, null
  br i1 %148, label %154, label %149

149:                                              ; preds = %146
  %150 = load i64, ptr %147, align 8
  %151 = and i64 %150, 65535
  %152 = icmp eq i64 %151, 1
  br i1 %152, label %153, label %154

153:                                              ; preds = %149
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3121, ptr noundef nonnull @.str.2) #21
  br label %154

154:                                              ; preds = %146, %149, %153
  %155 = load ptr, ptr %124, align 8, !tbaa !204
  tail call fastcc void @clobber_variable_part(ptr noundef %1, ptr noundef null, ptr noundef %155, i64 noundef 0, ptr noundef null)
  br label %343

156:                                              ; preds = %139
  %157 = load ptr, ptr %144, align 8, !tbaa !35
  %158 = load ptr, ptr %157, align 8, !tbaa !204
  %159 = icmp eq ptr %158, null
  br i1 %159, label %165, label %160

160:                                              ; preds = %156
  %161 = load i64, ptr %158, align 8
  %162 = and i64 %161, 65535
  %163 = icmp eq i64 %162, 1
  %164 = zext i1 %163 to i8
  br label %165

165:                                              ; preds = %156, %160
  %166 = phi i8 [ 0, %156 ], [ %164, %160 ]
  %167 = icmp eq i8 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %165
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3128, ptr noundef nonnull @.str.2) #21
  br label %169

169:                                              ; preds = %165, %168
  %170 = getelementptr inbounds %struct.variable_def, ptr %157, i64 0, i32 2
  %171 = load i8, ptr %170, align 4, !tbaa !207
  switch i8 %171, label %173 [
    i8 0, label %343
    i8 1, label %172
  ]

172:                                              ; preds = %169, %173
  br label %42

173:                                              ; preds = %169
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3131, ptr noundef nonnull @.str.2) #21
  br label %172

174:                                              ; preds = %113
  %175 = and i32 %111, -536870913
  store i32 %175, ptr %46, align 8
  br label %343

176:                                              ; preds = %96
  %177 = getelementptr inbounds %struct.dataflow_set_def, ptr %1, i64 0, i32 2
  %178 = load ptr, ptr %177, align 8, !tbaa !77
  %179 = icmp eq ptr %92, null
  br i1 %179, label %188, label %180

180:                                              ; preds = %176
  %181 = load i64, ptr %92, align 8
  %182 = and i64 %181, 65535
  %183 = icmp eq i64 %182, 1
  br i1 %183, label %184, label %188

184:                                              ; preds = %180
  %185 = getelementptr inbounds %struct.rtx_def, ptr %92, i64 0, i32 1
  %186 = load ptr, ptr %185, align 8, !tbaa !46
  %187 = getelementptr inbounds %struct.cselib_val_struct, ptr %186, i64 0, i32 1
  br label %190

188:                                              ; preds = %180, %176
  %189 = getelementptr inbounds %struct.tree_decl_minimal, ptr %92, i64 0, i32 2
  br label %190

190:                                              ; preds = %184, %188
  %191 = phi ptr [ %187, %184 ], [ %189, %188 ]
  %192 = load i32, ptr %191, align 4, !tbaa !46
  %193 = getelementptr inbounds %struct.shared_hash_def, ptr %178, i64 0, i32 1
  %194 = load ptr, ptr %193, align 8, !tbaa !83
  %195 = tail call ptr @htab_find_slot_with_hash(ptr noundef %194, ptr noundef %92, i32 noundef %192, i32 noundef 0) #21
  %196 = load ptr, ptr %52, align 8, !tbaa !35
  %197 = icmp eq ptr %196, null
  br i1 %197, label %318, label %198

198:                                              ; preds = %190, %314
  %199 = phi ptr [ %316, %314 ], [ %196, %190 ]
  %200 = phi ptr [ %315, %314 ], [ %195, %190 ]
  %201 = getelementptr inbounds %struct.location_chain_def, ptr %199, i64 0, i32 1
  %202 = load ptr, ptr %201, align 8, !tbaa !240
  %203 = icmp eq ptr %202, %92
  br i1 %203, label %314, label %204

204:                                              ; preds = %198
  %205 = getelementptr inbounds %struct.location_chain_def, ptr %199, i64 0, i32 3
  %206 = load i32, ptr %205, align 8, !tbaa !248
  %207 = tail call fastcc ptr @set_slot_part(ptr noundef %1, ptr noundef %202, ptr noundef %200, ptr noundef %92, i64 noundef 0, i32 noundef %206, ptr noundef null)
  %208 = load ptr, ptr %201, align 8, !tbaa !240
  %209 = load i32, ptr %208, align 8
  %210 = trunc i32 %209 to i16
  switch i16 %210, label %314 [
    i16 1, label %211
    i16 37, label %239
  ]

211:                                              ; preds = %204
  %212 = icmp eq ptr %46, null
  %213 = load i32, ptr %205, align 8, !tbaa !248
  tail call fastcc void @set_variable_part(ptr noundef %1, ptr noundef %92, ptr noundef nonnull %208, i64 noundef 0, i32 noundef %213, ptr noundef null, i32 noundef 0)
  br i1 %212, label %226, label %214

214:                                              ; preds = %211
  %215 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %216 = load ptr, ptr %201, align 8, !tbaa !240
  %217 = getelementptr inbounds %struct.rtx_def, ptr %216, i64 0, i32 1
  %218 = load ptr, ptr %217, align 8, !tbaa !46
  %219 = getelementptr inbounds %struct.cselib_val_struct, ptr %218, i64 0, i32 1
  %220 = load i32, ptr %219, align 4, !tbaa !193
  %221 = load ptr, ptr %215, align 8, !tbaa !46
  %222 = getelementptr inbounds %struct.cselib_val_struct, ptr %221, i64 0, i32 1
  %223 = load i32, ptr %222, align 4, !tbaa !193
  %224 = icmp slt i32 %220, %223
  %225 = zext i1 %224 to i8
  br label %226

226:                                              ; preds = %211, %214
  %227 = phi i8 [ 1, %211 ], [ %225, %214 ]
  %228 = icmp eq i8 %227, 0
  %229 = load ptr, ptr %201, align 8, !tbaa !240
  %230 = load i32, ptr %229, align 8
  br i1 %228, label %235, label %231

231:                                              ; preds = %226
  %232 = or i32 %230, 536870912
  store i32 %232, ptr %229, align 8
  %233 = load i32, ptr %92, align 8
  %234 = or i32 %233, 536870912
  store i32 %234, ptr %92, align 8
  br label %314

235:                                              ; preds = %226
  %236 = and i32 %230, 536870912
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %238, label %314

238:                                              ; preds = %235
  tail call fastcc void @clobber_variable_part(ptr noundef %1, ptr noundef %92, ptr noundef nonnull %208, i64 noundef 0, ptr noundef null)
  br label %314

239:                                              ; preds = %204
  %240 = getelementptr inbounds %struct.rtx_def, ptr %208, i64 0, i32 1
  %241 = load i32, ptr %240, align 8, !tbaa !46
  %242 = zext i32 %241 to i64
  %243 = getelementptr inbounds %struct.dataflow_set_def, ptr %1, i64 0, i32 1, i64 %242
  %244 = load ptr, ptr %243, align 8, !tbaa !35
  %245 = icmp eq ptr %244, null
  br i1 %245, label %260, label %246

246:                                              ; preds = %239, %257
  %247 = phi ptr [ %258, %257 ], [ %244, %239 ]
  %248 = getelementptr inbounds %struct.attrs_def, ptr %247, i64 0, i32 3
  %249 = load i64, ptr %248, align 8, !tbaa !160
  %250 = icmp eq i64 %249, 0
  br i1 %250, label %251, label %257

251:                                              ; preds = %246
  %252 = getelementptr inbounds %struct.attrs_def, ptr %247, i64 0, i32 2
  %253 = load ptr, ptr %252, align 8, !tbaa !159
  %254 = icmp eq ptr %253, %43
  %255 = icmp eq ptr %253, %92
  %256 = select i1 %254, i1 true, i1 %255
  br i1 %256, label %262, label %257

257:                                              ; preds = %251, %246
  %258 = load ptr, ptr %247, align 8, !tbaa !35
  %259 = icmp eq ptr %258, null
  br i1 %259, label %260, label %246, !llvm.loop !321

260:                                              ; preds = %257, %239
  %261 = phi ptr [ %244, %239 ], [ %258, %257 ]
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3195, ptr noundef nonnull @.str.2) #21
  br label %262

262:                                              ; preds = %251, %260
  %263 = phi ptr [ %261, %260 ], [ %247, %251 ]
  %264 = getelementptr inbounds %struct.attrs_def, ptr %263, i64 0, i32 2
  %265 = load ptr, ptr %264, align 8, !tbaa !159
  %266 = icmp eq ptr %265, %43
  br i1 %266, label %267, label %289

267:                                              ; preds = %262
  store ptr %92, ptr %264, align 8, !tbaa !159
  %268 = load ptr, ptr %263, align 8, !tbaa !35
  %269 = icmp eq ptr %268, null
  br i1 %269, label %314, label %270

270:                                              ; preds = %267, %286
  %271 = phi ptr [ %287, %286 ], [ %268, %267 ]
  %272 = phi ptr [ %271, %286 ], [ %263, %267 ]
  %273 = getelementptr inbounds %struct.attrs_def, ptr %271, i64 0, i32 3
  %274 = load i64, ptr %273, align 8, !tbaa !160
  %275 = icmp eq i64 %274, 0
  br i1 %275, label %276, label %286

276:                                              ; preds = %270
  %277 = getelementptr inbounds %struct.attrs_def, ptr %271, i64 0, i32 2
  %278 = load ptr, ptr %277, align 8, !tbaa !159
  %279 = icmp eq ptr %278, %92
  br i1 %279, label %280, label %283

280:                                              ; preds = %276
  %281 = load ptr, ptr %271, align 8, !tbaa !161
  store ptr %281, ptr %272, align 8, !tbaa !35
  %282 = load ptr, ptr @attrs_pool, align 8, !tbaa !35
  tail call void @pool_free(ptr noundef %282, ptr noundef nonnull %271) #21
  br label %314

283:                                              ; preds = %276
  %284 = icmp eq ptr %278, %43
  br i1 %284, label %285, label %286

285:                                              ; preds = %283
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3212, ptr noundef nonnull @.str.2) #21
  br label %286

286:                                              ; preds = %285, %283, %270
  %287 = load ptr, ptr %271, align 8, !tbaa !35
  %288 = icmp eq ptr %287, null
  br i1 %288, label %314, label %270, !llvm.loop !322

289:                                              ; preds = %262
  %290 = icmp eq ptr %265, %92
  br i1 %290, label %291, label %313

291:                                              ; preds = %289
  %292 = load ptr, ptr %263, align 8, !tbaa !35
  %293 = icmp eq ptr %292, null
  br i1 %293, label %314, label %294

294:                                              ; preds = %291, %310
  %295 = phi ptr [ %311, %310 ], [ %292, %291 ]
  %296 = phi ptr [ %295, %310 ], [ %263, %291 ]
  %297 = getelementptr inbounds %struct.attrs_def, ptr %295, i64 0, i32 3
  %298 = load i64, ptr %297, align 8, !tbaa !160
  %299 = icmp eq i64 %298, 0
  br i1 %299, label %300, label %310

300:                                              ; preds = %294
  %301 = getelementptr inbounds %struct.attrs_def, ptr %295, i64 0, i32 2
  %302 = load ptr, ptr %301, align 8, !tbaa !159
  %303 = icmp eq ptr %302, %43
  br i1 %303, label %304, label %307

304:                                              ; preds = %300
  %305 = load ptr, ptr %295, align 8, !tbaa !161
  store ptr %305, ptr %296, align 8, !tbaa !35
  %306 = load ptr, ptr @attrs_pool, align 8, !tbaa !35
  tail call void @pool_free(ptr noundef %306, ptr noundef nonnull %295) #21
  br label %314

307:                                              ; preds = %300
  %308 = icmp eq ptr %302, %92
  br i1 %308, label %309, label %310

309:                                              ; preds = %307
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3230, ptr noundef nonnull @.str.2) #21
  br label %310

310:                                              ; preds = %309, %307, %294
  %311 = load ptr, ptr %295, align 8, !tbaa !35
  %312 = icmp eq ptr %311, null
  br i1 %312, label %314, label %294, !llvm.loop !323

313:                                              ; preds = %289
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3234, ptr noundef nonnull @.str.2) #21
  br label %314

314:                                              ; preds = %310, %286, %291, %267, %280, %304, %313, %204, %231, %238, %235, %198
  %315 = phi ptr [ %200, %198 ], [ %207, %235 ], [ %207, %238 ], [ %207, %231 ], [ %207, %204 ], [ %207, %313 ], [ %207, %304 ], [ %207, %280 ], [ %207, %267 ], [ %207, %291 ], [ %207, %286 ], [ %207, %310 ]
  %316 = load ptr, ptr %199, align 8, !tbaa !35
  %317 = icmp eq ptr %316, null
  br i1 %317, label %318, label %198, !llvm.loop !324

318:                                              ; preds = %314, %190
  %319 = phi ptr [ %195, %190 ], [ %315, %314 ]
  %320 = icmp eq ptr %46, null
  br i1 %320, label %323, label %321

321:                                              ; preds = %318
  %322 = tail call fastcc ptr @set_slot_part(ptr noundef %1, ptr noundef nonnull %46, ptr noundef %319, ptr noundef %92, i64 noundef 0, i32 noundef 2, ptr noundef null)
  br label %323

323:                                              ; preds = %321, %318
  %324 = tail call fastcc ptr @clobber_slot_part(ptr noundef %1, ptr noundef %92, ptr noundef nonnull %45, i64 noundef 0, ptr noundef null)
  %325 = load ptr, ptr %324, align 8, !tbaa !35
  %326 = getelementptr inbounds %struct.variable_def, ptr %325, i64 0, i32 2
  %327 = load i8, ptr %326, align 4, !tbaa !207
  %328 = icmp eq i8 %327, 0
  br i1 %328, label %338, label %329

329:                                              ; preds = %323
  %330 = getelementptr inbounds %struct.variable_def, ptr %325, i64 0, i32 5
  %331 = load ptr, ptr %330, align 8, !tbaa !208
  %332 = getelementptr inbounds %struct.location_chain_def, ptr %331, i64 0, i32 1
  %333 = load ptr, ptr %332, align 8, !tbaa !240
  %334 = icmp eq ptr %333, %92
  br i1 %334, label %335, label %338

335:                                              ; preds = %329
  %336 = load ptr, ptr %331, align 8, !tbaa !210
  %337 = icmp eq ptr %336, null
  br i1 %337, label %339, label %338

338:                                              ; preds = %335, %329, %323
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3259, ptr noundef nonnull @.str.2) #21
  br label %339

339:                                              ; preds = %335, %338
  %340 = load i32, ptr %92, align 8
  %341 = and i32 %340, 536870912
  %342 = icmp eq i32 %341, 0
  br i1 %342, label %343, label %123

343:                                              ; preds = %339, %169, %98, %107, %91, %2, %34, %20, %174, %154
  ret i32 1
}

declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @spec_qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @variable_union_info_cmp_pos(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #12 !prof !34 {
  %3 = getelementptr inbounds %struct.variable_union_info, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !302
  %5 = getelementptr inbounds %struct.variable_union_info, ptr %1, i64 0, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !302
  %7 = icmp eq i32 %4, %6
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = sub nsw i32 %4, %6
  br label %16

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.variable_union_info, ptr %0, i64 0, i32 2
  %12 = load i32, ptr %11, align 4, !tbaa !301
  %13 = getelementptr inbounds %struct.variable_union_info, ptr %1, i64 0, i32 2
  %14 = load i32, ptr %13, align 4, !tbaa !301
  %15 = sub nsw i32 %12, %14
  br label %16

16:                                               ; preds = %10, %8
  %17 = phi i32 [ %9, %8 ], [ %15, %10 ]
  ret i32 %17
}

declare ptr @htab_find_with_hash(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @find_loc_in_1pdv(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #9 !prof !34 {
  %4 = load ptr, ptr %1, align 8, !tbaa !204
  %5 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !50
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %23, label %7

7:                                                ; preds = %3
  %8 = icmp eq ptr %4, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %7
  %10 = load i64, ptr %4, align 8
  %11 = and i64 %10, 65535
  %12 = icmp eq i64 %11, 1
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i1 [ false, %7 ], [ %12, %9 ]
  %15 = or i1 %8, %14
  br i1 %15, label %24, label %16

16:                                               ; preds = %13
  %17 = load i64, ptr %4, align 8
  %18 = and i64 %17, 65535
  %19 = icmp eq i64 %18, 37
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = tail call ptr @target_for_debug_bind(ptr noundef nonnull %4) #21
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %3, %20
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 2506, ptr noundef nonnull @.str.2) #21
  br label %24

24:                                               ; preds = %13, %16, %20, %23
  %25 = getelementptr inbounds %struct.variable_def, ptr %1, i64 0, i32 2
  %26 = load i8, ptr %25, align 4, !tbaa !207
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %81, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.variable_def, ptr %1, i64 0, i32 5
  %30 = getelementptr inbounds %struct.variable_def, ptr %1, i64 0, i32 5, i64 0, i32 2
  %31 = load i64, ptr %30, align 8, !tbaa !239
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %28
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 2511, ptr noundef nonnull @.str.2) #21
  br label %34

34:                                               ; preds = %28, %33
  %35 = load ptr, ptr %29, align 8, !tbaa !35
  %36 = icmp eq ptr %35, null
  br i1 %36, label %81, label %37

37:                                               ; preds = %34, %77
  %38 = phi ptr [ %79, %77 ], [ %35, %34 ]
  %39 = phi ptr [ %78, %77 ], [ undef, %34 ]
  %40 = getelementptr inbounds %struct.location_chain_def, ptr %38, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !240
  %42 = tail call i32 @rtx_equal_p(ptr noundef %0, ptr noundef %41) #21
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %81

44:                                               ; preds = %37
  %45 = load ptr, ptr %40, align 8, !tbaa !240
  %46 = load i32, ptr %45, align 8
  %47 = and i32 %46, 536936447
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %49, label %77

49:                                               ; preds = %44
  %50 = load i64, ptr %45, align 8
  %51 = and i64 %50, 65535
  %52 = icmp eq i64 %51, 1
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.rtx_def, ptr %45, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !46
  %56 = getelementptr inbounds %struct.cselib_val_struct, ptr %55, i64 0, i32 1
  br label %59

57:                                               ; preds = %49
  %58 = getelementptr inbounds %struct.tree_decl_minimal, ptr %45, i64 0, i32 2
  br label %59

59:                                               ; preds = %53, %57
  %60 = phi ptr [ %56, %53 ], [ %58, %57 ]
  %61 = load i32, ptr %60, align 4, !tbaa !46
  %62 = tail call ptr @htab_find_with_hash(ptr noundef %2, ptr noundef nonnull %45, i32 noundef %61) #21
  %63 = icmp eq ptr %62, null
  br i1 %63, label %74, label %64

64:                                               ; preds = %59
  %65 = load ptr, ptr %40, align 8, !tbaa !240
  %66 = load i32, ptr %65, align 8
  %67 = or i32 %66, 536870912
  store i32 %67, ptr %65, align 8
  %68 = tail call fastcc ptr @find_loc_in_1pdv(ptr noundef %0, ptr noundef nonnull %62, ptr noundef %2)
  %69 = icmp eq ptr %68, null
  %70 = load ptr, ptr %40, align 8, !tbaa !240
  %71 = load i32, ptr %70, align 8
  %72 = and i32 %71, -536870913
  store i32 %72, ptr %70, align 8
  %73 = select i1 %69, ptr %39, ptr %68
  br label %74

74:                                               ; preds = %64, %59
  %75 = phi i1 [ true, %59 ], [ %69, %64 ]
  %76 = phi ptr [ %39, %59 ], [ %73, %64 ]
  br i1 %75, label %77, label %81

77:                                               ; preds = %74, %44
  %78 = phi ptr [ %76, %74 ], [ %39, %44 ]
  %79 = load ptr, ptr %38, align 8, !tbaa !35
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %37, !llvm.loop !325

81:                                               ; preds = %74, %37, %77, %34, %24
  %82 = phi ptr [ null, %24 ], [ null, %34 ], [ null, %77 ], [ %38, %37 ], [ %76, %74 ]
  ret ptr %82
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @remove_value_chains(ptr noundef %0, ptr noundef %1) unnamed_addr #9 !prof !34 {
  %3 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8, !tbaa !35
  %4 = load i32, ptr %1, align 8
  %5 = trunc i32 %4 to i16
  switch i16 %5, label %11 [
    i16 1, label %6
    i16 2, label %6
    i16 37, label %13
    i16 43, label %8
  ]

6:                                                ; preds = %2, %2
  %7 = call i32 @remove_value_chain(ptr noundef nonnull %3, ptr noundef %0)
  br label %13

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  store ptr %10, ptr %3, align 8, !tbaa !35
  br label %11

11:                                               ; preds = %2, %8
  %12 = call i32 @for_each_rtx(ptr noundef nonnull %3, ptr noundef nonnull @remove_value_chain, ptr noundef %0) #21
  br label %13

13:                                               ; preds = %2, %11, %6
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @remove_value_chain(ptr nocapture noundef readonly %0, ptr noundef readnone %1) #9 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  %4 = load i32, ptr %3, align 8
  %5 = trunc i32 %4 to i16
  switch i16 %5, label %59 [
    i16 1, label %9
    i16 2, label %6
  ]

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !46
  br label %9

9:                                                ; preds = %2, %6
  %10 = phi ptr [ %8, %6 ], [ %3, %2 ]
  %11 = icmp eq ptr %10, %1
  br i1 %11, label %59, label %12

12:                                               ; preds = %9
  %13 = load ptr, ptr @value_chains, align 8, !tbaa !35
  %14 = icmp eq ptr %10, null
  br i1 %14, label %23, label %15

15:                                               ; preds = %12
  %16 = load i64, ptr %10, align 8
  %17 = and i64 %16, 65535
  %18 = icmp eq i64 %17, 1
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !46
  %22 = getelementptr inbounds %struct.cselib_val_struct, ptr %21, i64 0, i32 1
  br label %25

23:                                               ; preds = %15, %12
  %24 = getelementptr inbounds %struct.tree_decl_minimal, ptr %10, i64 0, i32 2
  br label %25

25:                                               ; preds = %19, %23
  %26 = phi ptr [ %22, %19 ], [ %24, %23 ]
  %27 = load i32, ptr %26, align 4, !tbaa !46
  %28 = tail call ptr @htab_find_slot_with_hash(ptr noundef %13, ptr noundef %10, i32 noundef %27, i32 noundef 0) #21
  br label %29

29:                                               ; preds = %34, %25
  %30 = phi ptr [ %28, %25 ], [ %31, %34 ]
  %31 = load ptr, ptr %30, align 8, !tbaa !35
  %32 = load ptr, ptr %31, align 8, !tbaa !258
  %33 = icmp eq ptr %32, null
  br i1 %33, label %58, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.value_chain_def, ptr %32, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !214
  %37 = icmp eq ptr %36, %1
  br i1 %37, label %38, label %29, !llvm.loop !326

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.value_chain_def, ptr %32, i64 0, i32 2
  %40 = load i32, ptr %39, align 8, !tbaa !259
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %38
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 2925, ptr noundef nonnull @.str.2) #21
  br label %43

43:                                               ; preds = %38, %42
  %44 = load i32, ptr %39, align 8, !tbaa !259
  %45 = add nsw i32 %44, -1
  store i32 %45, ptr %39, align 8, !tbaa !259
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %59

47:                                               ; preds = %43
  %48 = load ptr, ptr %32, align 8, !tbaa !258
  store ptr %48, ptr %31, align 8, !tbaa !258
  %49 = load ptr, ptr @value_chain_pool, align 8, !tbaa !35
  tail call void @pool_free(ptr noundef %49, ptr noundef nonnull %32) #21
  %50 = load ptr, ptr %31, align 8, !tbaa !258
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %59

52:                                               ; preds = %47
  %53 = load ptr, ptr %28, align 8, !tbaa !35
  %54 = icmp eq ptr %31, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = load ptr, ptr @value_chain_pool, align 8, !tbaa !35
  tail call void @pool_free(ptr noundef %56, ptr noundef nonnull %31) #21
  %57 = load ptr, ptr @value_chains, align 8, !tbaa !35
  tail call void @htab_clear_slot(ptr noundef %57, ptr noundef nonnull %28) #21
  br label %59

58:                                               ; preds = %29
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 2938, ptr noundef nonnull @.str.2) #21
  br label %59

59:                                               ; preds = %9, %43, %55, %52, %47, %2, %58
  ret i32 0
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @clobber_variable_part(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) unnamed_addr #9 !prof !34 {
  %6 = icmp eq ptr %2, null
  br i1 %6, label %33, label %7

7:                                                ; preds = %5
  %8 = load i64, ptr %2, align 8
  %9 = and i64 %8, 65535
  %10 = icmp eq i64 %9, 1
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %9
  %13 = load i32, ptr %12, align 4, !tbaa !50
  %14 = icmp eq i32 %13, 3
  br i1 %14, label %15, label %33

15:                                               ; preds = %11, %7
  %16 = getelementptr inbounds %struct.dataflow_set_def, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !77
  br i1 %10, label %18, label %22

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !46
  %21 = getelementptr inbounds %struct.cselib_val_struct, ptr %20, i64 0, i32 1
  br label %24

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.tree_decl_minimal, ptr %2, i64 0, i32 2
  br label %24

24:                                               ; preds = %18, %22
  %25 = phi ptr [ %21, %18 ], [ %23, %22 ]
  %26 = load i32, ptr %25, align 4, !tbaa !46
  %27 = getelementptr inbounds %struct.shared_hash_def, ptr %17, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !83
  %29 = tail call ptr @htab_find_slot_with_hash(ptr noundef %28, ptr noundef nonnull %2, i32 noundef %26, i32 noundef 0) #21
  %30 = icmp eq ptr %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %24
  %32 = tail call fastcc ptr @clobber_slot_part(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %29, i64 noundef %3, ptr noundef %4)
  br label %33

33:                                               ; preds = %24, %5, %11, %31
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @clobber_slot_part(ptr noundef %0, ptr noundef readnone %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) unnamed_addr #9 !prof !34 {
  %6 = load ptr, ptr %2, align 8, !tbaa !35
  %7 = getelementptr inbounds %struct.variable_def, ptr %6, i64 0, i32 2
  %8 = load i8, ptr %7, align 4, !tbaa !207
  %9 = sext i8 %8 to i32
  %10 = icmp eq i8 %8, 0
  br i1 %10, label %24, label %11

11:                                               ; preds = %5, %11
  %12 = phi i32 [ %22, %11 ], [ %9, %5 ]
  %13 = phi i32 [ %21, %11 ], [ 0, %5 ]
  %14 = add nsw i32 %12, %13
  %15 = sdiv i32 %14, 2
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.variable_def, ptr %6, i64 0, i32 5, i64 %16, i32 2
  %18 = load i64, ptr %17, align 8, !tbaa !239
  %19 = icmp slt i64 %18, %3
  %20 = add nsw i32 %15, 1
  %21 = select i1 %19, i32 %20, i32 %13
  %22 = select i1 %19, i32 %12, i32 %15
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %11, !llvm.loop !247

24:                                               ; preds = %11, %5
  %25 = phi i32 [ 0, %5 ], [ %21, %11 ]
  %26 = icmp slt i32 %25, %9
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = sext i32 %25 to i64
  %29 = getelementptr inbounds %struct.variable_def, ptr %6, i64 0, i32 5, i64 %28, i32 2
  %30 = load i64, ptr %29, align 8, !tbaa !239
  %31 = icmp eq i64 %30, %3
  br i1 %31, label %33, label %32

32:                                               ; preds = %27, %24
  br label %33

33:                                               ; preds = %27, %32
  %34 = phi i32 [ -1, %32 ], [ %25, %27 ]
  %35 = icmp sgt i32 %34, -1
  br i1 %35, label %36, label %98

36:                                               ; preds = %33
  %37 = zext nneg i32 %34 to i64
  %38 = getelementptr inbounds %struct.variable_def, ptr %6, i64 0, i32 5, i64 %37
  %39 = load ptr, ptr %38, align 8, !tbaa !208
  %40 = icmp eq ptr %39, null
  br i1 %40, label %98, label %41

41:                                               ; preds = %36
  %42 = icmp ne ptr %4, null
  br label %43

43:                                               ; preds = %41, %95
  %44 = phi ptr [ %2, %41 ], [ %96, %95 ]
  %45 = phi ptr [ %39, %41 ], [ %46, %95 ]
  %46 = load ptr, ptr %45, align 8, !tbaa !210
  %47 = getelementptr inbounds %struct.location_chain_def, ptr %45, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !240
  %49 = icmp eq ptr %48, %1
  br i1 %49, label %95, label %50

50:                                               ; preds = %43
  %51 = load i32, ptr @flag_var_tracking_uninit, align 4, !tbaa !50
  %52 = icmp ne i32 %51, 0
  %53 = and i1 %42, %52
  br i1 %53, label %54, label %63

54:                                               ; preds = %50
  %55 = load i32, ptr %4, align 8
  %56 = and i32 %55, 65535
  %57 = icmp eq i32 %56, 43
  br i1 %57, label %63, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.location_chain_def, ptr %45, i64 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !249
  %61 = tail call i32 @rtx_equal_p(ptr noundef nonnull %4, ptr noundef %60) #21
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %95

63:                                               ; preds = %58, %54, %50
  %64 = load ptr, ptr %47, align 8, !tbaa !240
  %65 = load i32, ptr %64, align 8
  %66 = and i32 %65, 65535
  %67 = icmp eq i32 %66, 37
  br i1 %67, label %68, label %92

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.rtx_def, ptr %64, i64 0, i32 1
  %70 = load i32, ptr %69, align 8, !tbaa !46
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds %struct.dataflow_set_def, ptr %0, i64 0, i32 1, i64 %71
  %73 = load ptr, ptr %72, align 8, !tbaa !35
  %74 = icmp eq ptr %73, null
  br i1 %74, label %92, label %75

75:                                               ; preds = %68, %89
  %76 = phi ptr [ %90, %89 ], [ %72, %68 ]
  %77 = phi ptr [ %78, %89 ], [ %73, %68 ]
  %78 = load ptr, ptr %77, align 8, !tbaa !161
  %79 = getelementptr inbounds %struct.attrs_def, ptr %77, i64 0, i32 2
  %80 = load ptr, ptr %79, align 8, !tbaa !159
  %81 = load ptr, ptr %6, align 8, !tbaa !204
  %82 = icmp eq ptr %80, %81
  br i1 %82, label %83, label %89

83:                                               ; preds = %75
  %84 = getelementptr inbounds %struct.attrs_def, ptr %77, i64 0, i32 3
  %85 = load i64, ptr %84, align 8, !tbaa !160
  %86 = icmp eq i64 %85, %3
  br i1 %86, label %87, label %89

87:                                               ; preds = %83
  %88 = load ptr, ptr @attrs_pool, align 8, !tbaa !35
  tail call void @pool_free(ptr noundef %88, ptr noundef nonnull %77) #21
  store ptr %78, ptr %76, align 8, !tbaa !35
  br label %89

89:                                               ; preds = %75, %83, %87
  %90 = phi ptr [ %76, %87 ], [ %77, %83 ], [ %77, %75 ]
  %91 = icmp eq ptr %78, null
  br i1 %91, label %92, label %75, !llvm.loop !327

92:                                               ; preds = %89, %68, %63
  %93 = load ptr, ptr %47, align 8, !tbaa !240
  %94 = tail call fastcc ptr @delete_slot_part(ptr noundef %0, ptr noundef %93, ptr noundef %44, i64 noundef %3)
  br label %95

95:                                               ; preds = %43, %58, %92
  %96 = phi ptr [ %94, %92 ], [ %44, %58 ], [ %44, %43 ]
  %97 = icmp eq ptr %46, null
  br i1 %97, label %98, label %43, !llvm.loop !328

98:                                               ; preds = %95, %36, %33
  %99 = phi ptr [ %2, %33 ], [ %2, %36 ], [ %96, %95 ]
  ret ptr %99
}

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @variable_post_merge_new_vals(ptr noundef %0, ptr nocapture noundef readonly %1) #9 !prof !34 {
  %3 = load ptr, ptr %1, align 8, !tbaa !186
  %4 = load ptr, ptr %0, align 8, !tbaa !35
  %5 = load ptr, ptr %4, align 8, !tbaa !204
  %6 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !50
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %338, label %8

8:                                                ; preds = %2
  %9 = icmp eq ptr %5, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %8
  %11 = load i64, ptr %5, align 8
  %12 = and i64 %11, 65535
  %13 = icmp eq i64 %12, 1
  br label %14

14:                                               ; preds = %10, %8
  %15 = phi i1 [ false, %8 ], [ %13, %10 ]
  %16 = or i1 %9, %15
  br i1 %16, label %24, label %17

17:                                               ; preds = %14
  %18 = load i64, ptr %5, align 8
  %19 = and i64 %18, 65535
  %20 = icmp eq i64 %19, 37
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = tail call ptr @target_for_debug_bind(ptr noundef nonnull %5) #21
  %23 = icmp eq ptr %22, null
  br i1 %23, label %338, label %24

24:                                               ; preds = %14, %17, %21
  %25 = getelementptr inbounds %struct.variable_def, ptr %4, i64 0, i32 2
  %26 = load i8, ptr %25, align 4, !tbaa !207
  switch i8 %26, label %27 [
    i8 0, label %338
    i8 1, label %28
  ]

27:                                               ; preds = %24
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3797, ptr noundef nonnull @.str.2) #21
  br label %28

28:                                               ; preds = %24, %27
  %29 = load ptr, ptr %4, align 8, !tbaa !204
  %30 = icmp eq ptr %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %28
  %32 = load i64, ptr %29, align 8
  %33 = and i64 %32, 65535
  %34 = icmp eq i64 %33, 1
  br i1 %34, label %338, label %35

35:                                               ; preds = %28, %31
  %36 = getelementptr inbounds %struct.variable_def, ptr %4, i64 0, i32 5
  %37 = load ptr, ptr %36, align 8, !tbaa !35
  %38 = icmp eq ptr %37, null
  br i1 %38, label %256, label %43

39:                                               ; preds = %237
  %40 = getelementptr inbounds %struct.variable_def, ptr %238, i64 0, i32 5
  %41 = load ptr, ptr %40, align 8, !tbaa !35
  %42 = icmp eq ptr %41, null
  br i1 %42, label %252, label %247

43:                                               ; preds = %35, %247
  %44 = phi ptr [ %248, %247 ], [ %37, %35 ]
  %45 = phi ptr [ %249, %247 ], [ %0, %35 ]
  %46 = phi i8 [ %250, %247 ], [ 0, %35 ]
  %47 = phi ptr [ %251, %247 ], [ %4, %35 ]
  %48 = getelementptr inbounds %struct.location_chain_def, ptr %44, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !240
  %50 = load i32, ptr %49, align 8
  %51 = trunc i32 %50 to i16
  switch i16 %51, label %241 [
    i16 1, label %52
    i16 37, label %56
  ]

52:                                               ; preds = %43
  %53 = and i32 %50, 536870912
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %241, label %55

55:                                               ; preds = %52
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3807, ptr noundef nonnull @.str.2) #21
  br label %241

56:                                               ; preds = %43
  %57 = getelementptr inbounds %struct.variable_def, ptr %47, i64 0, i32 1
  %58 = load i32, ptr %57, align 8, !tbaa !206
  %59 = icmp eq i32 %58, 1
  br i1 %59, label %63, label %60

60:                                               ; preds = %56
  %61 = tail call fastcc ptr @unshare_variable(ptr noundef %3, ptr noundef %45, ptr noundef %47, i32 noundef 2)
  %62 = load ptr, ptr %61, align 8, !tbaa !35
  br label %237

63:                                               ; preds = %56
  %64 = getelementptr inbounds %struct.rtx_def, ptr %49, i64 0, i32 1
  %65 = load i32, ptr %64, align 8, !tbaa !46
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.dataflow_set_def, ptr %3, i64 0, i32 1, i64 %66
  %68 = load ptr, ptr %67, align 8, !tbaa !35
  %69 = icmp eq ptr %68, null
  br i1 %69, label %106, label %70

70:                                               ; preds = %63, %102
  %71 = phi i1 [ %105, %102 ], [ %69, %63 ]
  %72 = phi ptr [ %104, %102 ], [ %68, %63 ]
  %73 = phi ptr [ %103, %102 ], [ null, %63 ]
  %74 = phi ptr [ %72, %102 ], [ %67, %63 ]
  %75 = getelementptr inbounds %struct.attrs_def, ptr %72, i64 0, i32 3
  %76 = load i64, ptr %75, align 8, !tbaa !160
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %102

78:                                               ; preds = %70
  %79 = getelementptr inbounds %struct.attrs_def, ptr %72, i64 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !157
  %81 = load i32, ptr %80, align 8
  %82 = xor i32 %81, %50
  %83 = and i32 %82, 16711680
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %102

85:                                               ; preds = %78
  %86 = getelementptr inbounds %struct.attrs_def, ptr %72, i64 0, i32 2
  %87 = load ptr, ptr %86, align 8, !tbaa !159
  %88 = icmp eq ptr %87, null
  br i1 %88, label %94, label %89

89:                                               ; preds = %85
  %90 = load i64, ptr %87, align 8
  %91 = and i64 %90, 65535
  %92 = icmp eq i64 %91, 1
  %93 = zext i1 %92 to i8
  br label %94

94:                                               ; preds = %85, %89
  %95 = phi i8 [ 0, %85 ], [ %93, %89 ]
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %94
  store ptr %87, ptr %48, align 8, !tbaa !240
  br label %106

98:                                               ; preds = %94
  %99 = load ptr, ptr %47, align 8, !tbaa !204
  %100 = icmp eq ptr %87, %99
  %101 = select i1 %100, ptr %74, ptr %73
  br label %102

102:                                              ; preds = %98, %70, %78
  %103 = phi ptr [ %73, %78 ], [ %73, %70 ], [ %101, %98 ]
  %104 = load ptr, ptr %72, align 8, !tbaa !35
  %105 = icmp eq ptr %104, null
  br i1 %105, label %106, label %70, !llvm.loop !329

106:                                              ; preds = %102, %63, %97
  %107 = phi ptr [ %74, %97 ], [ %67, %63 ], [ %72, %102 ]
  %108 = phi ptr [ %73, %97 ], [ null, %63 ], [ %103, %102 ]
  %109 = phi i1 [ %71, %97 ], [ %69, %63 ], [ %105, %102 ]
  %110 = phi i8 [ 1, %97 ], [ %46, %63 ], [ %46, %102 ]
  %111 = icmp eq ptr %108, null
  br i1 %111, label %112, label %142

112:                                              ; preds = %106
  %113 = load ptr, ptr %107, align 8, !tbaa !35
  %114 = icmp eq ptr %113, null
  br i1 %114, label %140, label %115

115:                                              ; preds = %112, %136
  %116 = phi i1 [ %138, %136 ], [ %114, %112 ]
  %117 = phi ptr [ %137, %136 ], [ %113, %112 ]
  %118 = phi ptr [ %117, %136 ], [ %107, %112 ]
  %119 = getelementptr inbounds %struct.attrs_def, ptr %117, i64 0, i32 3
  %120 = load i64, ptr %119, align 8, !tbaa !160
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %122, label %136

122:                                              ; preds = %115
  %123 = getelementptr inbounds %struct.attrs_def, ptr %117, i64 0, i32 1
  %124 = load ptr, ptr %123, align 8, !tbaa !157
  %125 = load i32, ptr %124, align 8
  %126 = load ptr, ptr %48, align 8, !tbaa !240
  %127 = load i32, ptr %126, align 8
  %128 = xor i32 %127, %125
  %129 = and i32 %128, 16711680
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %122
  %132 = getelementptr inbounds %struct.attrs_def, ptr %117, i64 0, i32 2
  %133 = load ptr, ptr %132, align 8, !tbaa !159
  %134 = load ptr, ptr %47, align 8, !tbaa !204
  %135 = icmp eq ptr %133, %134
  br i1 %135, label %139, label %136

136:                                              ; preds = %131, %122, %115
  %137 = load ptr, ptr %117, align 8, !tbaa !35
  %138 = icmp eq ptr %137, null
  br i1 %138, label %140, label %115, !llvm.loop !330

139:                                              ; preds = %131
  br i1 %116, label %140, label %142

140:                                              ; preds = %136, %112, %139
  %141 = phi ptr [ %118, %139 ], [ %107, %112 ], [ %117, %136 ]
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3846, ptr noundef nonnull @.str.2) #21
  br label %142

142:                                              ; preds = %139, %140, %106
  %143 = phi ptr [ %108, %106 ], [ %141, %140 ], [ %118, %139 ]
  br i1 %109, label %144, label %232

144:                                              ; preds = %142
  %145 = getelementptr inbounds %struct.dfset_post_merge, ptr %1, i64 0, i32 1
  %146 = load ptr, ptr %145, align 8, !tbaa !188
  %147 = load ptr, ptr %146, align 8, !tbaa !35
  %148 = icmp eq ptr %147, null
  br i1 %148, label %149, label %160

149:                                              ; preds = %144
  %150 = tail call ptr @xmalloc(i64 noundef 448) #21
  %151 = load ptr, ptr %145, align 8, !tbaa !188
  store ptr %150, ptr %151, align 8, !tbaa !35
  %152 = load ptr, ptr %145, align 8, !tbaa !188
  %153 = load ptr, ptr %152, align 8, !tbaa !35
  %154 = getelementptr inbounds %struct.dataflow_set_def, ptr %153, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(424) %154, i8 0, i64 424, i1 false), !tbaa !35
  %155 = load ptr, ptr @empty_shared_hash, align 8, !tbaa !35
  %156 = load i32, ptr %155, align 8, !tbaa !75
  %157 = add nsw i32 %156, 1
  store i32 %157, ptr %155, align 8, !tbaa !75
  %158 = getelementptr inbounds %struct.dataflow_set_def, ptr %153, i64 0, i32 2
  store ptr %155, ptr %158, align 8, !tbaa !77
  store i64 0, ptr %153, align 8, !tbaa !79
  %159 = getelementptr inbounds %struct.dataflow_set_def, ptr %153, i64 0, i32 3
  store ptr null, ptr %159, align 8, !tbaa !80
  br label %160

160:                                              ; preds = %149, %144
  %161 = load ptr, ptr %145, align 8, !tbaa !188
  %162 = load ptr, ptr %161, align 8, !tbaa !35
  %163 = load ptr, ptr %48, align 8, !tbaa !240
  %164 = getelementptr inbounds %struct.rtx_def, ptr %163, i64 0, i32 1
  %165 = load i32, ptr %164, align 8, !tbaa !46
  %166 = zext i32 %165 to i64
  %167 = getelementptr inbounds %struct.dataflow_set_def, ptr %162, i64 0, i32 1, i64 %166
  br label %168

168:                                              ; preds = %172, %160
  %169 = phi ptr [ %167, %160 ], [ %170, %172 ]
  %170 = load ptr, ptr %169, align 8, !tbaa !35
  %171 = icmp eq ptr %170, null
  br i1 %171, label %201, label %172

172:                                              ; preds = %168
  %173 = getelementptr inbounds %struct.attrs_def, ptr %170, i64 0, i32 1
  %174 = load ptr, ptr %173, align 8, !tbaa !157
  %175 = load i32, ptr %174, align 8
  %176 = load i32, ptr %163, align 8
  %177 = xor i32 %176, %175
  %178 = and i32 %177, 16711680
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %168, !llvm.loop !331

180:                                              ; preds = %172
  %181 = getelementptr inbounds %struct.attrs_def, ptr %170, i64 0, i32 3
  %182 = load i64, ptr %181, align 8, !tbaa !160
  %183 = icmp eq i64 %182, 0
  br i1 %183, label %185, label %184

184:                                              ; preds = %180
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3864, ptr noundef nonnull @.str.2) #21
  br label %185

185:                                              ; preds = %180, %184
  %186 = getelementptr inbounds %struct.attrs_def, ptr %170, i64 0, i32 2
  %187 = load ptr, ptr %186, align 8, !tbaa !159
  %188 = icmp eq ptr %187, null
  br i1 %188, label %194, label %189

189:                                              ; preds = %185
  %190 = load i64, ptr %187, align 8
  %191 = and i64 %190, 65535
  %192 = icmp eq i64 %191, 1
  %193 = zext i1 %192 to i8
  br label %194

194:                                              ; preds = %185, %189
  %195 = phi i8 [ 0, %185 ], [ %193, %189 ]
  %196 = icmp eq i8 %195, 0
  br i1 %196, label %197, label %198

197:                                              ; preds = %194
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3865, ptr noundef nonnull @.str.2) #21
  br label %198

198:                                              ; preds = %194, %197
  %199 = load ptr, ptr %186, align 8, !tbaa !159
  tail call fastcc void @val_reset(ptr noundef %3, ptr noundef %199)
  %200 = load ptr, ptr %186, align 8, !tbaa !159
  br label %227

201:                                              ; preds = %168
  %202 = load i32, ptr %163, align 8
  %203 = lshr i32 %202, 16
  %204 = and i32 %203, 255
  %205 = tail call ptr @cselib_lookup(ptr noundef nonnull %163, i32 noundef %204, i32 noundef 0) #21
  %206 = icmp eq ptr %205, null
  br i1 %206, label %208, label %207

207:                                              ; preds = %201
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3882, ptr noundef nonnull @.str.2) #21
  br label %208

208:                                              ; preds = %201, %207
  %209 = load ptr, ptr %48, align 8, !tbaa !240
  %210 = load i32, ptr %209, align 8
  %211 = lshr i32 %210, 16
  %212 = and i32 %211, 255
  %213 = tail call ptr @cselib_lookup(ptr noundef nonnull %209, i32 noundef %212, i32 noundef 1) #21
  tail call void @cselib_preserve_value(ptr noundef %213) #21
  %214 = load ptr, ptr %48, align 8, !tbaa !240
  tail call void @cselib_invalidate_rtx(ptr noundef %214) #21
  %215 = getelementptr inbounds %struct.cselib_val_struct, ptr %213, i64 0, i32 2
  %216 = load ptr, ptr %215, align 8, !tbaa !155
  %217 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %218 = icmp eq ptr %217, null
  br i1 %218, label %227, label %219

219:                                              ; preds = %208
  %220 = getelementptr inbounds %struct.cselib_val_struct, ptr %213, i64 0, i32 1
  %221 = load i32, ptr %220, align 4, !tbaa !193
  %222 = load i32, ptr %213, align 8, !tbaa !332
  %223 = load ptr, ptr %48, align 8, !tbaa !240
  %224 = getelementptr inbounds %struct.rtx_def, ptr %223, i64 0, i32 1
  %225 = load i32, ptr %224, align 8, !tbaa !46
  %226 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %217, ptr noundef nonnull @.str.27, i32 noundef %221, i32 noundef %222, i32 noundef %225)
  br label %227

227:                                              ; preds = %208, %219, %198
  %228 = phi ptr [ %200, %198 ], [ %216, %219 ], [ %216, %208 ]
  %229 = load ptr, ptr %145, align 8, !tbaa !188
  %230 = load ptr, ptr %229, align 8, !tbaa !35
  %231 = load ptr, ptr %48, align 8, !tbaa !240
  tail call fastcc void @var_reg_decl_set(ptr noundef %230, ptr noundef %231, i32 noundef 2, ptr noundef %228, i64 noundef 0, ptr noundef null, i32 noundef 1)
  store ptr %228, ptr %48, align 8, !tbaa !240
  br label %232

232:                                              ; preds = %227, %142
  %233 = phi i8 [ %110, %142 ], [ 1, %227 ]
  %234 = load ptr, ptr %143, align 8, !tbaa !35
  %235 = load ptr, ptr %234, align 8, !tbaa !161
  store ptr %235, ptr %143, align 8, !tbaa !35
  %236 = load ptr, ptr @attrs_pool, align 8, !tbaa !35
  tail call void @pool_free(ptr noundef %236, ptr noundef nonnull %234) #21
  br label %237

237:                                              ; preds = %232, %60
  %238 = phi ptr [ %62, %60 ], [ %47, %232 ]
  %239 = phi i8 [ %46, %60 ], [ %233, %232 ]
  %240 = phi ptr [ %61, %60 ], [ %45, %232 ]
  br i1 %59, label %241, label %39

241:                                              ; preds = %237, %43, %55, %52
  %242 = phi ptr [ %47, %55 ], [ %47, %52 ], [ %238, %237 ], [ %47, %43 ]
  %243 = phi i8 [ %46, %55 ], [ %46, %52 ], [ %239, %237 ], [ %46, %43 ]
  %244 = phi ptr [ %45, %55 ], [ %45, %52 ], [ %240, %237 ], [ %45, %43 ]
  %245 = load ptr, ptr %44, align 8, !tbaa !35
  %246 = icmp eq ptr %245, null
  br i1 %246, label %252, label %247

247:                                              ; preds = %241, %39
  %248 = phi ptr [ %245, %241 ], [ %41, %39 ]
  %249 = phi ptr [ %244, %241 ], [ %240, %39 ]
  %250 = phi i8 [ %243, %241 ], [ %239, %39 ]
  %251 = phi ptr [ %242, %241 ], [ %238, %39 ]
  br label %43, !llvm.loop !333

252:                                              ; preds = %241, %39
  %253 = phi ptr [ %238, %39 ], [ %242, %241 ]
  %254 = phi i8 [ %239, %39 ], [ %243, %241 ]
  %255 = icmp eq i8 %254, 0
  br label %256

256:                                              ; preds = %252, %35
  %257 = phi ptr [ %4, %35 ], [ %253, %252 ]
  %258 = phi i1 [ true, %35 ], [ %255, %252 ]
  br i1 %258, label %338, label %259

259:                                              ; preds = %256
  %260 = load ptr, ptr %257, align 8, !tbaa !204
  %261 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !50
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %279, label %263

263:                                              ; preds = %259
  %264 = icmp eq ptr %260, null
  br i1 %264, label %269, label %265

265:                                              ; preds = %263
  %266 = load i64, ptr %260, align 8
  %267 = and i64 %266, 65535
  %268 = icmp eq i64 %267, 1
  br label %269

269:                                              ; preds = %265, %263
  %270 = phi i1 [ false, %263 ], [ %268, %265 ]
  %271 = or i1 %264, %270
  br i1 %271, label %280, label %272

272:                                              ; preds = %269
  %273 = load i64, ptr %260, align 8
  %274 = and i64 %273, 65535
  %275 = icmp eq i64 %274, 37
  br i1 %275, label %280, label %276

276:                                              ; preds = %272
  %277 = tail call ptr @target_for_debug_bind(ptr noundef nonnull %260) #21
  %278 = icmp eq ptr %277, null
  br i1 %278, label %279, label %280

279:                                              ; preds = %259, %276
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3743, ptr noundef nonnull @.str.2) #21
  br label %280

280:                                              ; preds = %269, %272, %279, %276
  %281 = getelementptr inbounds %struct.variable_def, ptr %257, i64 0, i32 2
  %282 = load i8, ptr %281, align 4, !tbaa !207
  %283 = icmp eq i8 %282, 1
  br i1 %283, label %285, label %284

284:                                              ; preds = %280
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3744, ptr noundef nonnull @.str.2) #21
  br label %285

285:                                              ; preds = %284, %280
  %286 = getelementptr inbounds %struct.variable_def, ptr %257, i64 0, i32 1
  %287 = load i32, ptr %286, align 8, !tbaa !206
  %288 = icmp eq i32 %287, 1
  br i1 %288, label %290, label %289

289:                                              ; preds = %285
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3745, ptr noundef nonnull @.str.2) #21
  br label %290

290:                                              ; preds = %289, %285
  %291 = getelementptr inbounds %struct.variable_def, ptr %257, i64 0, i32 5
  %292 = load ptr, ptr %291, align 8, !tbaa !35
  %293 = icmp eq ptr %292, null
  br i1 %293, label %297, label %294

294:                                              ; preds = %290, %317
  %295 = phi ptr [ %318, %317 ], [ %292, %290 ]
  %296 = phi ptr [ %301, %317 ], [ %291, %290 ]
  br label %300

297:                                              ; preds = %317, %310, %290
  %298 = load ptr, ptr %291, align 8, !tbaa !35
  %299 = icmp eq ptr %298, null
  br i1 %299, label %338, label %320

300:                                              ; preds = %294, %310
  %301 = phi ptr [ %295, %294 ], [ %313, %310 ]
  %302 = getelementptr inbounds %struct.location_chain_def, ptr %301, i64 0, i32 1
  %303 = load ptr, ptr %302, align 8, !tbaa !240
  %304 = load i32, ptr %303, align 8
  %305 = and i32 %304, 65535
  %306 = icmp eq i32 %305, 1
  br i1 %306, label %307, label %317

307:                                              ; preds = %300
  %308 = and i32 %304, 536870912
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %315, label %310

310:                                              ; preds = %307
  %311 = load ptr, ptr %301, align 8, !tbaa !210
  store ptr %311, ptr %296, align 8, !tbaa !35
  %312 = load ptr, ptr @loc_chain_pool, align 8, !tbaa !35
  tail call void @pool_free(ptr noundef %312, ptr noundef nonnull %301) #21
  %313 = load ptr, ptr %296, align 8, !tbaa !35
  %314 = icmp eq ptr %313, null
  br i1 %314, label %297, label %300, !llvm.loop !334

315:                                              ; preds = %307
  %316 = or disjoint i32 %304, 536870912
  store i32 %316, ptr %303, align 8
  br label %317

317:                                              ; preds = %300, %315
  %318 = load ptr, ptr %301, align 8, !tbaa !35
  %319 = icmp eq ptr %318, null
  br i1 %319, label %297, label %294, !llvm.loop !334

320:                                              ; preds = %297, %335
  %321 = phi ptr [ %336, %335 ], [ %298, %297 ]
  %322 = getelementptr inbounds %struct.location_chain_def, ptr %321, i64 0, i32 1
  %323 = load ptr, ptr %322, align 8, !tbaa !240
  %324 = load i32, ptr %323, align 8
  %325 = and i32 %324, 65535
  %326 = icmp eq i32 %325, 1
  br i1 %326, label %327, label %335

327:                                              ; preds = %320
  %328 = and i32 %324, 536870912
  %329 = icmp eq i32 %328, 0
  br i1 %329, label %330, label %331

330:                                              ; preds = %327
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3767, ptr noundef nonnull @.str.2) #21
  br label %331

331:                                              ; preds = %330, %327
  %332 = load ptr, ptr %322, align 8, !tbaa !240
  %333 = load i32, ptr %332, align 8
  %334 = and i32 %333, -536870913
  store i32 %334, ptr %332, align 8
  br label %335

335:                                              ; preds = %331, %320
  %336 = load ptr, ptr %321, align 8, !tbaa !35
  %337 = icmp eq ptr %336, null
  br i1 %337, label %338, label %320, !llvm.loop !335

338:                                              ; preds = %2, %335, %297, %31, %256, %24, %21
  ret i32 1
}

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @variable_post_merge_perm_vals(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #9 !prof !34 {
  %3 = load ptr, ptr %1, align 8, !tbaa !186
  %4 = load ptr, ptr %0, align 8, !tbaa !35
  %5 = load ptr, ptr %4, align 8, !tbaa !204
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = load i64, ptr %5, align 8
  %9 = and i64 %8, 65535
  %10 = icmp eq i64 %9, 1
  br i1 %10, label %12, label %11

11:                                               ; preds = %2, %7
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3931, ptr noundef nonnull @.str.2) #21
  br label %12

12:                                               ; preds = %7, %11
  %13 = getelementptr inbounds %struct.variable_def, ptr %4, i64 0, i32 2
  %14 = load i8, ptr %13, align 4, !tbaa !207
  %15 = icmp eq i8 %14, 1
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3932, ptr noundef nonnull @.str.2) #21
  br label %17

17:                                               ; preds = %12, %16
  %18 = getelementptr inbounds %struct.variable_def, ptr %4, i64 0, i32 5
  %19 = load ptr, ptr %18, align 8, !tbaa !208
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3934, ptr noundef nonnull @.str.2) #21
  br label %22

22:                                               ; preds = %17, %21
  %23 = load ptr, ptr %19, align 8, !tbaa !210
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3935, ptr noundef nonnull @.str.2) #21
  br label %26

26:                                               ; preds = %22, %25
  %27 = getelementptr inbounds %struct.location_chain_def, ptr %19, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !240
  %29 = load i32, ptr %28, align 8
  %30 = and i32 %29, 65535
  %31 = icmp eq i32 %30, 37
  br i1 %31, label %33, label %32

32:                                               ; preds = %26
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3936, ptr noundef nonnull @.str.2) #21
  br label %33

33:                                               ; preds = %26, %32
  %34 = load ptr, ptr %4, align 8, !tbaa !204
  %35 = getelementptr inbounds %struct.dataflow_set_def, ptr %3, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !77
  %37 = icmp eq ptr %34, null
  br i1 %37, label %46, label %38

38:                                               ; preds = %33
  %39 = load i64, ptr %34, align 8
  %40 = and i64 %39, 65535
  %41 = icmp eq i64 %40, 1
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.rtx_def, ptr %34, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !46
  %45 = getelementptr inbounds %struct.cselib_val_struct, ptr %44, i64 0, i32 1
  br label %48

46:                                               ; preds = %38, %33
  %47 = getelementptr inbounds %struct.tree_decl_minimal, ptr %34, i64 0, i32 2
  br label %48

48:                                               ; preds = %42, %46
  %49 = phi ptr [ %45, %42 ], [ %47, %46 ]
  %50 = load i32, ptr %49, align 4, !tbaa !46
  %51 = getelementptr inbounds %struct.shared_hash_def, ptr %36, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !83
  %53 = tail call ptr @htab_find_with_hash(ptr noundef %52, ptr noundef %34, i32 noundef %50) #21
  %54 = icmp eq ptr %53, null
  br i1 %54, label %63, label %55

55:                                               ; preds = %48
  %56 = load ptr, ptr %27, align 8, !tbaa !240
  %57 = load ptr, ptr %35, align 8, !tbaa !77
  %58 = getelementptr inbounds %struct.shared_hash_def, ptr %57, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !83
  %60 = tail call fastcc ptr @find_loc_in_1pdv(ptr noundef %56, ptr noundef nonnull %53, ptr noundef %59)
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %115

62:                                               ; preds = %55
  tail call fastcc void @val_reset(ptr noundef %3, ptr noundef %34)
  br label %63

63:                                               ; preds = %62, %48
  %64 = load ptr, ptr %27, align 8, !tbaa !240
  %65 = getelementptr inbounds %struct.rtx_def, ptr %64, i64 0, i32 1
  %66 = load i32, ptr %65, align 8, !tbaa !46
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds %struct.dataflow_set_def, ptr %3, i64 0, i32 1, i64 %67
  %69 = load ptr, ptr %68, align 8, !tbaa !35
  %70 = icmp eq ptr %69, null
  br i1 %70, label %107, label %71

71:                                               ; preds = %63, %96
  %72 = phi ptr [ %97, %96 ], [ %69, %63 ]
  %73 = getelementptr inbounds %struct.attrs_def, ptr %72, i64 0, i32 3
  %74 = load i64, ptr %73, align 8, !tbaa !160
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %96

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.attrs_def, ptr %72, i64 0, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !157
  %79 = load i32, ptr %78, align 8
  %80 = load i32, ptr %64, align 8
  %81 = xor i32 %80, %79
  %82 = and i32 %81, 16711680
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %96

84:                                               ; preds = %76
  %85 = getelementptr inbounds %struct.attrs_def, ptr %72, i64 0, i32 2
  %86 = load ptr, ptr %85, align 8, !tbaa !159
  %87 = icmp eq ptr %86, null
  br i1 %87, label %93, label %88

88:                                               ; preds = %84
  %89 = load i64, ptr %86, align 8
  %90 = and i64 %89, 65535
  %91 = icmp eq i64 %90, 1
  %92 = zext i1 %91 to i8
  br label %93

93:                                               ; preds = %84, %88
  %94 = phi i8 [ 0, %84 ], [ %92, %88 ]
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %71, %76, %93
  %97 = load ptr, ptr %72, align 8, !tbaa !35
  %98 = icmp eq ptr %97, null
  br i1 %98, label %107, label %71, !llvm.loop !336

99:                                               ; preds = %93
  %100 = icmp eq ptr %86, %34
  br i1 %100, label %115, label %101

101:                                              ; preds = %99
  %102 = getelementptr inbounds %struct.attrs_def, ptr %72, i64 0, i32 2
  %103 = getelementptr inbounds %struct.location_chain_def, ptr %19, i64 0, i32 3
  %104 = load i32, ptr %103, align 8, !tbaa !248
  tail call fastcc void @set_variable_part(ptr noundef %3, ptr noundef %86, ptr noundef %34, i64 noundef 0, i32 noundef %104, ptr noundef null, i32 noundef 1)
  %105 = load ptr, ptr %102, align 8, !tbaa !159
  %106 = load i32, ptr %103, align 8, !tbaa !248
  tail call fastcc void @set_variable_part(ptr noundef %3, ptr noundef %34, ptr noundef %105, i64 noundef 0, i32 noundef %106, ptr noundef null, i32 noundef 1)
  br label %115

107:                                              ; preds = %96, %63
  %108 = load ptr, ptr @attrs_pool, align 8, !tbaa !35
  %109 = tail call ptr @pool_alloc(ptr noundef %108) #21
  %110 = getelementptr inbounds %struct.attrs_def, ptr %109, i64 0, i32 1
  store ptr %64, ptr %110, align 8, !tbaa !157
  %111 = getelementptr inbounds %struct.attrs_def, ptr %109, i64 0, i32 2
  store ptr %34, ptr %111, align 8, !tbaa !159
  %112 = getelementptr inbounds %struct.attrs_def, ptr %109, i64 0, i32 3
  store i64 0, ptr %112, align 8, !tbaa !160
  %113 = load ptr, ptr %68, align 8, !tbaa !35
  store ptr %113, ptr %109, align 8, !tbaa !161
  store ptr %109, ptr %68, align 8, !tbaa !35
  %114 = tail call i32 @variable_union(ptr noundef nonnull %0, ptr noundef %3)
  br label %115

115:                                              ; preds = %99, %101, %107, %55
  ret i32 1
}

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @canonicalize_vars_star(ptr noundef %0, ptr noundef %1) #9 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  %4 = load ptr, ptr %3, align 8, !tbaa !204
  %5 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !50
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %106, label %7

7:                                                ; preds = %2
  %8 = icmp eq ptr %4, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %7
  %10 = load i64, ptr %4, align 8
  %11 = and i64 %10, 65535
  %12 = icmp eq i64 %11, 1
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i1 [ false, %7 ], [ %12, %9 ]
  %15 = or i1 %8, %14
  br i1 %15, label %23, label %16

16:                                               ; preds = %13
  %17 = load i64, ptr %4, align 8
  %18 = and i64 %17, 65535
  %19 = icmp eq i64 %18, 37
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = tail call ptr @target_for_debug_bind(ptr noundef nonnull %4) #21
  %22 = icmp eq ptr %21, null
  br i1 %22, label %106, label %23

23:                                               ; preds = %13, %16, %20
  %24 = icmp eq ptr %4, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %23
  %26 = load i64, ptr %4, align 8
  %27 = and i64 %26, 65535
  %28 = icmp eq i64 %27, 1
  br i1 %28, label %106, label %29

29:                                               ; preds = %23, %25
  %30 = getelementptr inbounds %struct.variable_def, ptr %3, i64 0, i32 2
  %31 = load i8, ptr %30, align 4, !tbaa !207
  %32 = icmp eq i8 %31, 1
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3290, ptr noundef nonnull @.str.2) #21
  br label %34

34:                                               ; preds = %29, %33
  %35 = getelementptr inbounds %struct.variable_def, ptr %3, i64 0, i32 5
  %36 = load ptr, ptr %35, align 8, !tbaa !208
  %37 = getelementptr inbounds %struct.location_chain_def, ptr %36, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !240
  %39 = load i32, ptr %38, align 8
  %40 = and i32 %39, 65535
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %42, label %106

42:                                               ; preds = %34
  %43 = load ptr, ptr %36, align 8, !tbaa !210
  %44 = icmp eq ptr %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %42
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3297, ptr noundef nonnull @.str.2) #21
  br label %46

46:                                               ; preds = %42, %45
  %47 = load ptr, ptr %37, align 8, !tbaa !240
  %48 = getelementptr inbounds %struct.dataflow_set_def, ptr %1, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !77
  %50 = icmp eq ptr %47, null
  br i1 %50, label %59, label %51

51:                                               ; preds = %46
  %52 = load i64, ptr %47, align 8
  %53 = and i64 %52, 65535
  %54 = icmp eq i64 %53, 1
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !46
  %58 = getelementptr inbounds %struct.cselib_val_struct, ptr %57, i64 0, i32 1
  br label %61

59:                                               ; preds = %51, %46
  %60 = getelementptr inbounds %struct.tree_decl_minimal, ptr %47, i64 0, i32 2
  br label %61

61:                                               ; preds = %55, %59
  %62 = phi ptr [ %58, %55 ], [ %60, %59 ]
  %63 = load i32, ptr %62, align 4, !tbaa !46
  %64 = getelementptr inbounds %struct.shared_hash_def, ptr %49, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !83
  %66 = tail call ptr @htab_find_slot_with_hash(ptr noundef %65, ptr noundef %47, i32 noundef %63, i32 noundef 0) #21
  %67 = icmp eq ptr %66, null
  br i1 %67, label %106, label %68

68:                                               ; preds = %61
  %69 = load ptr, ptr %66, align 8, !tbaa !35
  %70 = getelementptr inbounds %struct.variable_def, ptr %69, i64 0, i32 2
  %71 = load i8, ptr %70, align 4, !tbaa !207
  %72 = icmp eq i8 %71, 1
  br i1 %72, label %74, label %73

73:                                               ; preds = %68
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3306, ptr noundef nonnull @.str.2) #21
  br label %74

74:                                               ; preds = %68, %73
  %75 = getelementptr inbounds %struct.variable_def, ptr %69, i64 0, i32 5
  %76 = load ptr, ptr %75, align 8, !tbaa !208
  %77 = getelementptr inbounds %struct.location_chain_def, ptr %76, i64 0, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !240
  %79 = load i32, ptr %78, align 8
  %80 = and i32 %79, 65535
  %81 = icmp eq i32 %80, 1
  br i1 %81, label %82, label %106

82:                                               ; preds = %74
  br i1 %50, label %93, label %83

83:                                               ; preds = %82
  %84 = getelementptr inbounds %struct.rtx_def, ptr %78, i64 0, i32 1
  %85 = load ptr, ptr %84, align 8, !tbaa !46
  %86 = getelementptr inbounds %struct.cselib_val_struct, ptr %85, i64 0, i32 1
  %87 = load i32, ptr %86, align 4, !tbaa !193
  %88 = getelementptr inbounds %struct.rtx_def, ptr %47, i64 0, i32 1
  %89 = load ptr, ptr %88, align 8, !tbaa !46
  %90 = getelementptr inbounds %struct.cselib_val_struct, ptr %89, i64 0, i32 1
  %91 = load i32, ptr %90, align 4, !tbaa !193
  %92 = icmp slt i32 %87, %91
  br i1 %92, label %93, label %106

93:                                               ; preds = %82, %83
  %94 = load ptr, ptr %76, align 8, !tbaa !210
  %95 = icmp eq ptr %94, null
  br i1 %95, label %97, label %96

96:                                               ; preds = %93
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3318, ptr noundef nonnull @.str.2) #21
  br label %97

97:                                               ; preds = %93, %96
  %98 = load ptr, ptr %77, align 8, !tbaa !240
  %99 = getelementptr inbounds %struct.location_chain_def, ptr %36, i64 0, i32 3
  %100 = load i32, ptr %99, align 8, !tbaa !248
  %101 = getelementptr inbounds %struct.location_chain_def, ptr %36, i64 0, i32 2
  %102 = load ptr, ptr %101, align 8, !tbaa !249
  %103 = tail call fastcc ptr @set_slot_part(ptr noundef %1, ptr noundef %98, ptr noundef nonnull %0, ptr noundef %4, i64 noundef 0, i32 noundef %100, ptr noundef %102)
  %104 = load ptr, ptr %101, align 8, !tbaa !249
  %105 = tail call fastcc ptr @clobber_slot_part(ptr noundef %1, ptr noundef %98, ptr noundef %103, i64 noundef 0, ptr noundef %104)
  br label %106

106:                                              ; preds = %2, %74, %83, %61, %34, %20, %25, %97
  ret i32 1
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @val_reset(ptr noundef %0, ptr noundef %1) unnamed_addr #9 !prof !34 {
  %3 = getelementptr inbounds %struct.dataflow_set_def, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !77
  %5 = icmp eq ptr %1, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %2
  %7 = load i64, ptr %1, align 8
  %8 = and i64 %7, 65535
  %9 = icmp eq i64 %8, 1
  br i1 %9, label %10, label %14

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  %13 = getelementptr inbounds %struct.cselib_val_struct, ptr %12, i64 0, i32 1
  br label %16

14:                                               ; preds = %6, %2
  %15 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1, i64 0, i32 2
  br label %16

16:                                               ; preds = %10, %14
  %17 = phi ptr [ %13, %10 ], [ %15, %14 ]
  %18 = load i32, ptr %17, align 4, !tbaa !46
  %19 = getelementptr inbounds %struct.shared_hash_def, ptr %4, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !83
  %21 = tail call ptr @htab_find_with_hash(ptr noundef %20, ptr noundef %1, i32 noundef %18) #21
  %22 = icmp eq ptr %21, null
  br i1 %22, label %111, label %23

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.variable_def, ptr %21, i64 0, i32 2
  %25 = load i8, ptr %24, align 4, !tbaa !207
  switch i8 %25, label %26 [
    i8 0, label %111
    i8 1, label %27
  ]

26:                                               ; preds = %23
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1868, ptr noundef nonnull @.str.2) #21
  br label %27

27:                                               ; preds = %23, %26
  %28 = getelementptr inbounds %struct.variable_def, ptr %21, i64 0, i32 5
  %29 = load ptr, ptr %28, align 8, !tbaa !35
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %62, %27
  %32 = phi ptr [ null, %27 ], [ %63, %62 ]
  %33 = load ptr, ptr %28, align 8, !tbaa !35
  %34 = icmp eq ptr %33, null
  br i1 %34, label %86, label %35

35:                                               ; preds = %31
  %36 = icmp eq ptr %32, null
  br label %66

37:                                               ; preds = %27, %62
  %38 = phi ptr [ %64, %62 ], [ %29, %27 ]
  %39 = phi ptr [ %63, %62 ], [ null, %27 ]
  %40 = getelementptr inbounds %struct.location_chain_def, ptr %38, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !240
  %42 = load i32, ptr %41, align 8
  %43 = and i32 %42, 65535
  %44 = icmp eq i32 %43, 1
  br i1 %44, label %45, label %62

45:                                               ; preds = %37
  %46 = icmp eq ptr %39, null
  br i1 %46, label %58, label %47

47:                                               ; preds = %45
  %48 = getelementptr inbounds %struct.rtx_def, ptr %41, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !46
  %50 = getelementptr inbounds %struct.cselib_val_struct, ptr %49, i64 0, i32 1
  %51 = load i32, ptr %50, align 4, !tbaa !193
  %52 = getelementptr inbounds %struct.rtx_def, ptr %39, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !46
  %54 = getelementptr inbounds %struct.cselib_val_struct, ptr %53, i64 0, i32 1
  %55 = load i32, ptr %54, align 4, !tbaa !193
  %56 = icmp slt i32 %51, %55
  %57 = zext i1 %56 to i8
  br label %58

58:                                               ; preds = %45, %47
  %59 = phi i8 [ 1, %45 ], [ %57, %47 ]
  %60 = icmp eq i8 %59, 0
  %61 = select i1 %60, ptr %39, ptr %41
  br label %62

62:                                               ; preds = %58, %37
  %63 = phi ptr [ %39, %37 ], [ %61, %58 ]
  %64 = load ptr, ptr %38, align 8, !tbaa !35
  %65 = icmp eq ptr %64, null
  br i1 %65, label %31, label %37, !llvm.loop !337

66:                                               ; preds = %35, %83
  %67 = phi ptr [ %33, %35 ], [ %84, %83 ]
  %68 = getelementptr inbounds %struct.location_chain_def, ptr %67, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !240
  %70 = load i32, ptr %69, align 8
  %71 = and i32 %70, 65535
  %72 = icmp ne i32 %71, 1
  %73 = icmp eq ptr %32, %69
  %74 = select i1 %72, i1 true, i1 %73
  br i1 %74, label %83, label %75

75:                                               ; preds = %66
  br i1 %36, label %81, label %76

76:                                               ; preds = %75
  %77 = getelementptr inbounds %struct.location_chain_def, ptr %67, i64 0, i32 3
  %78 = load i32, ptr %77, align 8, !tbaa !248
  %79 = getelementptr inbounds %struct.location_chain_def, ptr %67, i64 0, i32 2
  %80 = load ptr, ptr %79, align 8, !tbaa !249
  tail call fastcc void @set_variable_part(ptr noundef %0, ptr noundef nonnull %32, ptr noundef nonnull %69, i64 noundef 0, i32 noundef %78, ptr noundef %80, i32 noundef 0)
  br label %81

81:                                               ; preds = %76, %75
  %82 = load ptr, ptr %68, align 8, !tbaa !240
  tail call fastcc void @delete_variable_part(ptr noundef %0, ptr noundef %1, ptr noundef %82, i64 noundef 0)
  br label %83

83:                                               ; preds = %66, %81
  %84 = load ptr, ptr %67, align 8, !tbaa !35
  %85 = icmp eq ptr %84, null
  br i1 %85, label %86, label %66, !llvm.loop !338

86:                                               ; preds = %83, %31
  %87 = icmp eq ptr %32, null
  br i1 %87, label %110, label %88

88:                                               ; preds = %86
  %89 = load ptr, ptr %28, align 8, !tbaa !35
  %90 = icmp eq ptr %89, null
  br i1 %90, label %109, label %91

91:                                               ; preds = %88, %106
  %92 = phi ptr [ %107, %106 ], [ %89, %88 ]
  %93 = getelementptr inbounds %struct.location_chain_def, ptr %92, i64 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !240
  %95 = icmp eq ptr %94, %32
  br i1 %95, label %106, label %96

96:                                               ; preds = %91
  %97 = load i32, ptr %94, align 8
  %98 = trunc i32 %97 to i16
  %99 = getelementptr inbounds %struct.location_chain_def, ptr %92, i64 0, i32 3
  %100 = load i32, ptr %99, align 8, !tbaa !248
  %101 = getelementptr inbounds %struct.location_chain_def, ptr %92, i64 0, i32 2
  %102 = load ptr, ptr %101, align 8, !tbaa !249
  switch i16 %98, label %105 [
    i16 37, label %103
    i16 43, label %104
  ]

103:                                              ; preds = %96
  tail call fastcc void @var_reg_decl_set(ptr noundef %0, ptr noundef nonnull %94, i32 noundef %100, ptr noundef nonnull %32, i64 noundef 0, ptr noundef %102, i32 noundef 0)
  br label %106

104:                                              ; preds = %96
  tail call fastcc void @var_mem_decl_set(ptr noundef %0, ptr noundef nonnull %94, i32 noundef %100, ptr noundef nonnull %32, i64 noundef 0, ptr noundef %102, i32 noundef 0)
  br label %106

105:                                              ; preds = %96
  tail call fastcc void @set_variable_part(ptr noundef %0, ptr noundef nonnull %94, ptr noundef nonnull %32, i64 noundef 0, i32 noundef %100, ptr noundef %102, i32 noundef 0)
  br label %106

106:                                              ; preds = %104, %105, %103, %91
  %107 = load ptr, ptr %92, align 8, !tbaa !35
  %108 = icmp eq ptr %107, null
  br i1 %108, label %109, label %91, !llvm.loop !339

109:                                              ; preds = %106, %88
  tail call fastcc void @delete_variable_part(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %32, i64 noundef 0)
  br label %110

110:                                              ; preds = %86, %109
  tail call fastcc void @clobber_variable_part(ptr noundef %0, ptr noundef null, ptr noundef %1, i64 noundef 0, ptr noundef null)
  br label %111

111:                                              ; preds = %23, %16, %110
  ret void
}

declare void @cselib_invalidate_rtx(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @delete_variable_part(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) unnamed_addr #9 !prof !34 {
  %5 = getelementptr inbounds %struct.dataflow_set_def, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !77
  %7 = icmp eq ptr %2, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %4
  %9 = load i64, ptr %2, align 8
  %10 = and i64 %9, 65535
  %11 = icmp eq i64 %10, 1
  br i1 %11, label %12, label %16

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !46
  %15 = getelementptr inbounds %struct.cselib_val_struct, ptr %14, i64 0, i32 1
  br label %18

16:                                               ; preds = %8, %4
  %17 = getelementptr inbounds %struct.tree_decl_minimal, ptr %2, i64 0, i32 2
  br label %18

18:                                               ; preds = %12, %16
  %19 = phi ptr [ %15, %12 ], [ %17, %16 ]
  %20 = load i32, ptr %19, align 4, !tbaa !46
  %21 = getelementptr inbounds %struct.shared_hash_def, ptr %6, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !83
  %23 = tail call ptr @htab_find_slot_with_hash(ptr noundef %22, ptr noundef %2, i32 noundef %20, i32 noundef 0) #21
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %18
  %26 = tail call fastcc ptr @delete_slot_part(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %23, i64 noundef %3)
  br label %27

27:                                               ; preds = %18, %25
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @var_mem_decl_set(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i32 noundef %6) unnamed_addr #9 !prof !34 {
  %8 = icmp eq ptr %3, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %7
  %10 = load i64, ptr %3, align 8
  %11 = and i64 %10, 65535
  %12 = icmp eq i64 %11, 1
  br label %13

13:                                               ; preds = %7, %9
  %14 = phi i1 [ false, %7 ], [ %12, %9 ]
  %15 = or i1 %8, %14
  %16 = select i1 %14, ptr %3, ptr null
  br i1 %15, label %40, label %17

17:                                               ; preds = %13
  %18 = load i64, ptr %3, align 8
  %19 = and i64 %18, 65535
  %20 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !50
  %22 = icmp eq i32 %21, 3
  br i1 %22, label %23, label %40

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.tree_decl_common, ptr %3, i64 0, i32 2
  %25 = load i64, ptr %24, align 8
  %26 = and i64 %25, 16384
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %40, label %28

28:                                               ; preds = %23
  %29 = tail call ptr @decl_debug_expr_lookup(ptr noundef nonnull %3) #21
  %30 = icmp eq ptr %29, null
  br i1 %30, label %40, label %31

31:                                               ; preds = %28
  %32 = tail call ptr @decl_debug_expr_lookup(ptr noundef nonnull %3) #21
  %33 = load i64, ptr %32, align 8
  %34 = and i64 %33, 65535
  %35 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %34
  %36 = load i32, ptr %35, align 4, !tbaa !50
  %37 = icmp eq i32 %36, 3
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = tail call ptr @decl_debug_expr_lookup(ptr noundef nonnull %3) #21
  br label %40

40:                                               ; preds = %13, %38, %31, %28, %23, %17
  %41 = phi ptr [ %16, %13 ], [ %39, %38 ], [ %3, %31 ], [ %3, %28 ], [ %3, %23 ], [ %3, %17 ]
  tail call fastcc void @set_variable_part(ptr noundef %0, ptr noundef %1, ptr noundef %41, i64 noundef %4, i32 noundef %2, ptr noundef %5, i32 noundef %6)
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @dataflow_set_clear_at_call(ptr noundef %0) unnamed_addr #9 !prof !34 {
  br label %2

2:                                                ; preds = %1, %10
  %3 = phi i64 [ 0, %1 ], [ %11, %10 ]
  %4 = load i64, ptr @regs_invalidated_by_call, align 8, !tbaa !125
  %5 = shl nuw i64 1, %3
  %6 = and i64 %4, %5
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = trunc i64 %3 to i32
  tail call fastcc void @var_regno_delete(ptr noundef %0, i32 noundef %9)
  br label %10

10:                                               ; preds = %2, %8
  %11 = add nuw nsw i64 %3, 1
  %12 = icmp eq i64 %11, 53
  br i1 %12, label %13, label %2, !llvm.loop !340

13:                                               ; preds = %10
  %14 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !50
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.dataflow_set_def, ptr %0, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !77
  %19 = getelementptr inbounds %struct.dataflow_set_def, ptr %0, i64 0, i32 3
  store ptr %18, ptr %19, align 8, !tbaa !80
  %20 = getelementptr inbounds %struct.shared_hash_def, ptr %18, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !83
  tail call void @htab_traverse(ptr noundef %21, ptr noundef nonnull @dataflow_set_preserve_mem_locs, ptr noundef %0) #21
  %22 = load ptr, ptr %17, align 8, !tbaa !77
  store ptr %22, ptr %19, align 8, !tbaa !80
  %23 = getelementptr inbounds %struct.shared_hash_def, ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !83
  tail call void @htab_traverse(ptr noundef %24, ptr noundef nonnull @dataflow_set_remove_mem_locs, ptr noundef %0) #21
  store ptr null, ptr %19, align 8, !tbaa !80
  br label %25

25:                                               ; preds = %16, %13
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @val_resolve(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef readonly %3) unnamed_addr #9 !prof !34 {
  %5 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %6 = icmp eq ptr %5, null
  br i1 %6, label %26, label %7

7:                                                ; preds = %4
  %8 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %9 = and i32 %8, 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %26, label %11

11:                                               ; preds = %7
  %12 = icmp eq ptr %3, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %15 = load i32, ptr %14, align 8, !tbaa !46
  %16 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %5, ptr noundef nonnull @.str.28, i32 noundef %15)
  br label %19

17:                                               ; preds = %11
  %18 = tail call i64 @fwrite(ptr nonnull @.str.29, i64 6, i64 1, ptr nonnull %5)
  br label %19

19:                                               ; preds = %17, %13
  %20 = load ptr, ptr @dump_file, align 8, !tbaa !35
  tail call void @print_inline_rtx(ptr noundef %20, ptr noundef %1, i32 noundef 0) #21
  %21 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %22 = tail call i64 @fwrite(ptr nonnull @.str.30, i64 7, i64 1, ptr %21)
  %23 = load ptr, ptr @dump_file, align 8, !tbaa !35
  tail call void @print_inline_rtx(ptr noundef %23, ptr noundef %2, i32 noundef 0) #21
  %24 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %25 = tail call i32 @fputc(i32 noundef 10, ptr noundef %24)
  br label %26

26:                                               ; preds = %19, %7, %4
  tail call fastcc void @val_reset(ptr noundef %0, ptr noundef %1)
  %27 = load i32, ptr %2, align 8
  %28 = trunc i32 %27 to i16
  switch i16 %28, label %69 [
    i16 37, label %29
    i16 43, label %68
  ]

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %31 = load i32, ptr %30, align 8, !tbaa !46
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.dataflow_set_def, ptr %0, i64 0, i32 1, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !35
  %35 = icmp eq ptr %34, null
  br i1 %35, label %67, label %36

36:                                               ; preds = %29, %61
  %37 = phi ptr [ %63, %61 ], [ %34, %29 ]
  %38 = phi ptr [ %62, %61 ], [ null, %29 ]
  %39 = getelementptr inbounds %struct.attrs_def, ptr %37, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !159
  %41 = icmp eq ptr %40, null
  br i1 %41, label %47, label %42

42:                                               ; preds = %36
  %43 = load i64, ptr %40, align 8
  %44 = and i64 %43, 65535
  %45 = icmp eq i64 %44, 1
  %46 = zext i1 %45 to i8
  br label %47

47:                                               ; preds = %36, %42
  %48 = phi i8 [ 0, %36 ], [ %46, %42 ]
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %61, label %50

50:                                               ; preds = %47
  %51 = load i32, ptr %40, align 8
  %52 = load i32, ptr %2, align 8
  %53 = xor i32 %52, %51
  %54 = and i32 %53, 16711680
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.attrs_def, ptr %37, i64 0, i32 3
  %58 = load i64, ptr %57, align 8, !tbaa !160
  tail call fastcc void @set_variable_part(ptr noundef %0, ptr noundef nonnull %40, ptr noundef %1, i64 noundef %58, i32 noundef 2, ptr noundef null, i32 noundef 1)
  %59 = load ptr, ptr %39, align 8, !tbaa !159
  %60 = load i64, ptr %57, align 8, !tbaa !160
  tail call fastcc void @set_variable_part(ptr noundef %0, ptr noundef %1, ptr noundef %59, i64 noundef %60, i32 noundef 2, ptr noundef null, i32 noundef 1)
  br label %61

61:                                               ; preds = %47, %50, %56
  %62 = phi ptr [ %37, %56 ], [ %38, %50 ], [ %38, %47 ]
  %63 = load ptr, ptr %37, align 8, !tbaa !35
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %36, !llvm.loop !341

65:                                               ; preds = %61
  %66 = icmp eq ptr %62, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %29, %65
  tail call fastcc void @var_reg_decl_set(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 2, ptr noundef %1, i64 noundef 0, ptr noundef null, i32 noundef 1)
  br label %70

68:                                               ; preds = %26
  tail call fastcc void @var_mem_decl_set(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 2, ptr noundef %1, i64 noundef 0, ptr noundef null, i32 noundef 1)
  br label %70

69:                                               ; preds = %26
  tail call fastcc void @set_variable_part(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %1, i64 noundef 0, i32 noundef 2, ptr noundef null, i32 noundef 1)
  br label %70

70:                                               ; preds = %65, %67, %68, %69
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @val_store(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, i8 noundef zeroext %4) unnamed_addr #9 !prof !34 {
  %6 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !46
  %8 = tail call zeroext i8 @cselib_preserved_value_p(ptr noundef %7) #21
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1820, ptr noundef nonnull @.str.2) #21
  br label %11

11:                                               ; preds = %5, %10
  %12 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %13 = icmp eq ptr %12, null
  br i1 %13, label %41, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %16 = load i32, ptr %15, align 8, !tbaa !46
  %17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %12, ptr noundef nonnull @.str.28, i32 noundef %16)
  %18 = load ptr, ptr @dump_file, align 8, !tbaa !35
  tail call void @print_inline_rtx(ptr noundef %18, ptr noundef %1, i32 noundef 0) #21
  %19 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %20 = tail call i64 @fwrite(ptr nonnull @.str.31, i64 11, i64 1, ptr %19)
  %21 = load ptr, ptr @dump_file, align 8, !tbaa !35
  tail call void @print_inline_rtx(ptr noundef %21, ptr noundef %2, i32 noundef 0) #21
  %22 = getelementptr inbounds %struct.cselib_val_struct, ptr %7, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !342
  %24 = icmp eq ptr %23, null
  br i1 %24, label %38, label %25

25:                                               ; preds = %14, %25
  %26 = phi ptr [ %36, %25 ], [ %23, %14 ]
  %27 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %28 = getelementptr inbounds %struct.elt_loc_list, ptr %26, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !343
  %30 = getelementptr inbounds %struct.rtx_def, ptr %29, i64 0, i32 1
  %31 = load i32, ptr %30, align 8, !tbaa !46
  %32 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %27, ptr noundef nonnull @.str.32, i32 noundef %31)
  %33 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %34 = getelementptr inbounds %struct.elt_loc_list, ptr %26, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !70
  tail call void @print_inline_rtx(ptr noundef %33, ptr noundef %35, i32 noundef 0) #21
  %36 = load ptr, ptr %26, align 8, !tbaa !72
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %25, !llvm.loop !344

38:                                               ; preds = %25, %14
  %39 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %40 = tail call i32 @fputc(i32 10, ptr %39)
  br label %41

41:                                               ; preds = %38, %11
  %42 = load i32, ptr %2, align 8
  %43 = trunc i32 %42 to i16
  switch i16 %43, label %51 [
    i16 37, label %44
    i16 43, label %50
  ]

44:                                               ; preds = %41
  %45 = icmp eq i8 %4, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %44
  %47 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %48 = load i32, ptr %47, align 8, !tbaa !46
  tail call fastcc void @var_regno_delete(ptr noundef %0, i32 noundef %48)
  br label %49

49:                                               ; preds = %46, %44
  tail call fastcc void @var_reg_decl_set(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 2, ptr noundef %1, i64 noundef 0, ptr noundef null, i32 noundef 1)
  br label %52

50:                                               ; preds = %41
  tail call fastcc void @var_mem_decl_set(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 2, ptr noundef %1, i64 noundef 0, ptr noundef null, i32 noundef 1)
  br label %52

51:                                               ; preds = %41
  tail call fastcc void @set_variable_part(ptr noundef %0, ptr noundef nonnull %2, ptr noundef %1, i64 noundef 0, i32 noundef 2, ptr noundef null, i32 noundef 1)
  br label %52

52:                                               ; preds = %50, %51, %49
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @var_reg_delete(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) unnamed_addr #9 !prof !34 {
  %4 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !46
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds %struct.dataflow_set_def, ptr %0, i64 0, i32 1, i64 %6
  %8 = icmp eq i8 %2, 0
  br i1 %8, label %48, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 2
  %11 = load ptr, ptr %10, align 8, !tbaa !46
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %11, align 8, !tbaa !91
  br label %15

15:                                               ; preds = %9, %13
  %16 = phi ptr [ %14, %13 ], [ null, %9 ]
  br i1 %12, label %20, label %17

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.reg_attrs, ptr %11, i64 0, i32 1
  %19 = load i64, ptr %18, align 8, !tbaa !93
  br label %20

20:                                               ; preds = %15, %17
  %21 = phi i64 [ %19, %17 ], [ 0, %15 ]
  %22 = icmp eq ptr %16, null
  br i1 %22, label %46, label %23

23:                                               ; preds = %20
  %24 = load i64, ptr %16, align 8
  %25 = and i64 %24, 65535
  %26 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %25
  %27 = load i32, ptr %26, align 4, !tbaa !50
  %28 = icmp eq i32 %27, 3
  br i1 %28, label %29, label %46

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.tree_decl_common, ptr %16, i64 0, i32 2
  %31 = load i64, ptr %30, align 8
  %32 = and i64 %31, 16384
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %46, label %34

34:                                               ; preds = %29
  %35 = tail call ptr @decl_debug_expr_lookup(ptr noundef nonnull %16) #21
  %36 = icmp eq ptr %35, null
  br i1 %36, label %46, label %37

37:                                               ; preds = %34
  %38 = tail call ptr @decl_debug_expr_lookup(ptr noundef nonnull %16) #21
  %39 = load i64, ptr %38, align 8
  %40 = and i64 %39, 65535
  %41 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %40
  %42 = load i32, ptr %41, align 4, !tbaa !50
  %43 = icmp eq i32 %42, 3
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = tail call ptr @decl_debug_expr_lookup(ptr noundef nonnull %16) #21
  br label %46

46:                                               ; preds = %20, %23, %29, %34, %37, %44
  %47 = phi ptr [ %45, %44 ], [ %16, %37 ], [ %16, %34 ], [ %16, %29 ], [ %16, %23 ], [ null, %20 ]
  tail call fastcc void @clobber_variable_part(ptr noundef %0, ptr noundef null, ptr noundef %47, i64 noundef %21, ptr noundef null)
  br label %48

48:                                               ; preds = %46, %3
  %49 = load ptr, ptr %7, align 8, !tbaa !35
  %50 = icmp eq ptr %49, null
  br i1 %50, label %91, label %51

51:                                               ; preds = %48, %88
  %52 = phi ptr [ %89, %88 ], [ %7, %48 ]
  %53 = phi ptr [ %54, %88 ], [ %49, %48 ]
  %54 = load ptr, ptr %53, align 8, !tbaa !161
  br i1 %8, label %55, label %80

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.attrs_def, ptr %53, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !159
  %58 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !50
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %77, label %60

60:                                               ; preds = %55
  %61 = icmp eq ptr %57, null
  br i1 %61, label %66, label %62

62:                                               ; preds = %60
  %63 = load i64, ptr %57, align 8
  %64 = and i64 %63, 65535
  %65 = icmp eq i64 %64, 1
  br label %66

66:                                               ; preds = %62, %60
  %67 = phi i1 [ false, %60 ], [ %65, %62 ]
  %68 = or i1 %61, %67
  br i1 %68, label %77, label %69

69:                                               ; preds = %66
  %70 = load i64, ptr %57, align 8
  %71 = and i64 %70, 65535
  %72 = icmp eq i64 %71, 37
  br i1 %72, label %77, label %73

73:                                               ; preds = %69
  %74 = tail call ptr @target_for_debug_bind(ptr noundef nonnull %57) #21
  %75 = icmp ne ptr %74, null
  %76 = zext i1 %75 to i8
  br label %77

77:                                               ; preds = %55, %66, %69, %73
  %78 = phi i8 [ %76, %73 ], [ 0, %55 ], [ 1, %66 ], [ 1, %69 ]
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %77, %51
  %81 = getelementptr inbounds %struct.attrs_def, ptr %53, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !157
  %83 = getelementptr inbounds %struct.attrs_def, ptr %53, i64 0, i32 2
  %84 = load ptr, ptr %83, align 8, !tbaa !159
  %85 = getelementptr inbounds %struct.attrs_def, ptr %53, i64 0, i32 3
  %86 = load i64, ptr %85, align 8, !tbaa !160
  tail call fastcc void @delete_variable_part(ptr noundef %0, ptr noundef %82, ptr noundef %84, i64 noundef %86)
  %87 = load ptr, ptr @attrs_pool, align 8, !tbaa !35
  tail call void @pool_free(ptr noundef %87, ptr noundef nonnull %53) #21
  store ptr %54, ptr %52, align 8, !tbaa !35
  br label %88

88:                                               ; preds = %77, %80
  %89 = phi ptr [ %52, %80 ], [ %53, %77 ]
  %90 = icmp eq ptr %54, null
  br i1 %90, label %91, label %51, !llvm.loop !345

91:                                               ; preds = %88, %48
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @var_mem_delete(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #9 !prof !34 {
  %4 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %5, align 8, !tbaa !94
  br label %9

9:                                                ; preds = %3, %7
  %10 = phi ptr [ %8, %7 ], [ null, %3 ]
  br i1 %6, label %18, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.mem_attrs, ptr %5, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !96
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1
  %17 = load i64, ptr %16, align 8, !tbaa !46
  br label %18

18:                                               ; preds = %11, %9, %15
  %19 = phi i64 [ %17, %15 ], [ 0, %9 ], [ 0, %11 ]
  %20 = icmp eq ptr %10, null
  br i1 %20, label %44, label %21

21:                                               ; preds = %18
  %22 = load i64, ptr %10, align 8
  %23 = and i64 %22, 65535
  %24 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %23
  %25 = load i32, ptr %24, align 4, !tbaa !50
  %26 = icmp eq i32 %25, 3
  br i1 %26, label %27, label %44

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.tree_decl_common, ptr %10, i64 0, i32 2
  %29 = load i64, ptr %28, align 8
  %30 = and i64 %29, 16384
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %44, label %32

32:                                               ; preds = %27
  %33 = tail call ptr @decl_debug_expr_lookup(ptr noundef nonnull %10) #21
  %34 = icmp eq ptr %33, null
  br i1 %34, label %44, label %35

35:                                               ; preds = %32
  %36 = tail call ptr @decl_debug_expr_lookup(ptr noundef nonnull %10) #21
  %37 = load i64, ptr %36, align 8
  %38 = and i64 %37, 65535
  %39 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %38
  %40 = load i32, ptr %39, align 4, !tbaa !50
  %41 = icmp eq i32 %40, 3
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = tail call ptr @decl_debug_expr_lookup(ptr noundef nonnull %10) #21
  br label %44

44:                                               ; preds = %18, %21, %27, %32, %35, %42
  %45 = phi ptr [ %43, %42 ], [ %10, %35 ], [ %10, %32 ], [ %10, %27 ], [ %10, %21 ], [ null, %18 ]
  %46 = icmp eq i8 %2, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %44
  tail call fastcc void @clobber_variable_part(ptr noundef %0, ptr noundef null, ptr noundef %45, i64 noundef %19, ptr noundef null)
  br label %48

48:                                               ; preds = %47, %44
  tail call fastcc void @delete_variable_part(ptr noundef %0, ptr noundef %1, ptr noundef %45, i64 noundef %19)
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc i32 @find_src_status(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #9 !prof !34 {
  %3 = load i32, ptr @flag_var_tracking_uninit, align 4, !tbaa !50
  %4 = icmp eq i32 %3, 0
  %5 = select i1 %4, i32 2, i32 1
  %6 = icmp ne ptr %1, null
  br i1 %6, label %7, label %73

7:                                                ; preds = %2
  %8 = load i32, ptr %1, align 8
  %9 = trunc i32 %8 to i16
  switch i16 %9, label %73 [
    i16 37, label %10
    i16 43, label %40
  ]

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 2
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr %12, align 8, !tbaa !91
  br label %16

16:                                               ; preds = %10, %14
  %17 = phi ptr [ %15, %14 ], [ null, %10 ]
  %18 = icmp eq ptr %17, null
  br i1 %18, label %73, label %19

19:                                               ; preds = %16
  %20 = load i64, ptr %17, align 8
  %21 = and i64 %20, 65535
  %22 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %21
  %23 = load i32, ptr %22, align 4, !tbaa !50
  %24 = icmp eq i32 %23, 3
  br i1 %24, label %25, label %73

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.tree_decl_common, ptr %17, i64 0, i32 2
  %27 = load i64, ptr %26, align 8
  %28 = and i64 %27, 16384
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %73, label %30

30:                                               ; preds = %25
  %31 = tail call ptr @decl_debug_expr_lookup(ptr noundef nonnull %17) #21
  %32 = icmp eq ptr %31, null
  br i1 %32, label %73, label %33

33:                                               ; preds = %30
  %34 = tail call ptr @decl_debug_expr_lookup(ptr noundef nonnull %17) #21
  %35 = load i64, ptr %34, align 8
  %36 = and i64 %35, 65535
  %37 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %36
  %38 = load i32, ptr %37, align 4, !tbaa !50
  %39 = icmp eq i32 %38, 3
  br i1 %39, label %70, label %73

40:                                               ; preds = %7
  %41 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %42 = load ptr, ptr %41, align 8, !tbaa !46
  %43 = icmp eq ptr %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %40
  %45 = load ptr, ptr %42, align 8, !tbaa !94
  br label %46

46:                                               ; preds = %40, %44
  %47 = phi ptr [ %45, %44 ], [ null, %40 ]
  %48 = icmp eq ptr %47, null
  br i1 %48, label %73, label %49

49:                                               ; preds = %46
  %50 = load i64, ptr %47, align 8
  %51 = and i64 %50, 65535
  %52 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %51
  %53 = load i32, ptr %52, align 4, !tbaa !50
  %54 = icmp eq i32 %53, 3
  br i1 %54, label %55, label %73

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.tree_decl_common, ptr %47, i64 0, i32 2
  %57 = load i64, ptr %56, align 8
  %58 = and i64 %57, 16384
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %73, label %60

60:                                               ; preds = %55
  %61 = tail call ptr @decl_debug_expr_lookup(ptr noundef nonnull %47) #21
  %62 = icmp eq ptr %61, null
  br i1 %62, label %73, label %63

63:                                               ; preds = %60
  %64 = tail call ptr @decl_debug_expr_lookup(ptr noundef nonnull %47) #21
  %65 = load i64, ptr %64, align 8
  %66 = and i64 %65, 65535
  %67 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %66
  %68 = load i32, ptr %67, align 4, !tbaa !50
  %69 = icmp eq i32 %68, 3
  br i1 %69, label %70, label %73

70:                                               ; preds = %63, %33
  %71 = phi ptr [ %17, %33 ], [ %47, %63 ]
  %72 = tail call ptr @decl_debug_expr_lookup(ptr noundef nonnull %71) #21
  br label %73

73:                                               ; preds = %70, %63, %60, %55, %49, %46, %7, %33, %30, %25, %19, %16, %2
  %74 = phi ptr [ null, %2 ], [ %17, %33 ], [ %17, %30 ], [ %17, %25 ], [ %17, %19 ], [ null, %16 ], [ null, %7 ], [ %47, %63 ], [ %47, %60 ], [ %47, %55 ], [ %47, %49 ], [ null, %46 ], [ %72, %70 ]
  %75 = icmp ne ptr %74, null
  %76 = select i1 %6, i1 %75, i1 false
  br i1 %76, label %77, label %79

77:                                               ; preds = %73
  %78 = tail call fastcc i32 @get_init_value(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %74)
  br label %79

79:                                               ; preds = %77, %73
  %80 = phi i32 [ %78, %77 ], [ %5, %73 ]
  ret i32 %80
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @find_src_set_src(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #9 !prof !34 {
  %3 = icmp ne ptr %1, null
  br i1 %3, label %4, label %70

4:                                                ; preds = %2
  %5 = load i32, ptr %1, align 8
  %6 = trunc i32 %5 to i16
  switch i16 %6, label %70 [
    i16 37, label %7
    i16 43, label %37
  ]

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 2
  %9 = load ptr, ptr %8, align 8, !tbaa !46
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr %9, align 8, !tbaa !91
  br label %13

13:                                               ; preds = %7, %11
  %14 = phi ptr [ %12, %11 ], [ null, %7 ]
  %15 = icmp eq ptr %14, null
  br i1 %15, label %70, label %16

16:                                               ; preds = %13
  %17 = load i64, ptr %14, align 8
  %18 = and i64 %17, 65535
  %19 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !50
  %21 = icmp eq i32 %20, 3
  br i1 %21, label %22, label %70

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.tree_decl_common, ptr %14, i64 0, i32 2
  %24 = load i64, ptr %23, align 8
  %25 = and i64 %24, 16384
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %70, label %27

27:                                               ; preds = %22
  %28 = tail call ptr @decl_debug_expr_lookup(ptr noundef nonnull %14) #21
  %29 = icmp eq ptr %28, null
  br i1 %29, label %70, label %30

30:                                               ; preds = %27
  %31 = tail call ptr @decl_debug_expr_lookup(ptr noundef nonnull %14) #21
  %32 = load i64, ptr %31, align 8
  %33 = and i64 %32, 65535
  %34 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %33
  %35 = load i32, ptr %34, align 4, !tbaa !50
  %36 = icmp eq i32 %35, 3
  br i1 %36, label %67, label %70

37:                                               ; preds = %4
  %38 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %39 = load ptr, ptr %38, align 8, !tbaa !46
  %40 = icmp eq ptr %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %37
  %42 = load ptr, ptr %39, align 8, !tbaa !94
  br label %43

43:                                               ; preds = %37, %41
  %44 = phi ptr [ %42, %41 ], [ null, %37 ]
  %45 = icmp eq ptr %44, null
  br i1 %45, label %70, label %46

46:                                               ; preds = %43
  %47 = load i64, ptr %44, align 8
  %48 = and i64 %47, 65535
  %49 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %48
  %50 = load i32, ptr %49, align 4, !tbaa !50
  %51 = icmp eq i32 %50, 3
  br i1 %51, label %52, label %70

52:                                               ; preds = %46
  %53 = getelementptr inbounds %struct.tree_decl_common, ptr %44, i64 0, i32 2
  %54 = load i64, ptr %53, align 8
  %55 = and i64 %54, 16384
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %70, label %57

57:                                               ; preds = %52
  %58 = tail call ptr @decl_debug_expr_lookup(ptr noundef nonnull %44) #21
  %59 = icmp eq ptr %58, null
  br i1 %59, label %70, label %60

60:                                               ; preds = %57
  %61 = tail call ptr @decl_debug_expr_lookup(ptr noundef nonnull %44) #21
  %62 = load i64, ptr %61, align 8
  %63 = and i64 %62, 65535
  %64 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %63
  %65 = load i32, ptr %64, align 4, !tbaa !50
  %66 = icmp eq i32 %65, 3
  br i1 %66, label %67, label %70

67:                                               ; preds = %60, %30
  %68 = phi ptr [ %14, %30 ], [ %44, %60 ]
  %69 = tail call ptr @decl_debug_expr_lookup(ptr noundef nonnull %68) #21
  br label %70

70:                                               ; preds = %67, %60, %57, %52, %46, %43, %4, %30, %27, %22, %16, %13, %2
  %71 = phi ptr [ null, %2 ], [ %14, %30 ], [ %14, %27 ], [ %14, %22 ], [ %14, %16 ], [ null, %13 ], [ null, %4 ], [ %44, %60 ], [ %44, %57 ], [ %44, %52 ], [ %44, %46 ], [ null, %43 ], [ %69, %67 ]
  %72 = icmp ne ptr %71, null
  %73 = select i1 %3, i1 %72, i1 false
  br i1 %73, label %74, label %131

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.dataflow_set_def, ptr %0, i64 0, i32 2
  %76 = load ptr, ptr %75, align 8, !tbaa !77
  %77 = load i64, ptr %71, align 8
  %78 = and i64 %77, 65535
  %79 = icmp eq i64 %78, 1
  br i1 %79, label %80, label %84

80:                                               ; preds = %74
  %81 = getelementptr inbounds %struct.rtx_def, ptr %71, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !46
  %83 = getelementptr inbounds %struct.cselib_val_struct, ptr %82, i64 0, i32 1
  br label %86

84:                                               ; preds = %74
  %85 = getelementptr inbounds %struct.tree_decl_minimal, ptr %71, i64 0, i32 2
  br label %86

86:                                               ; preds = %80, %84
  %87 = phi ptr [ %83, %80 ], [ %85, %84 ]
  %88 = load i32, ptr %87, align 4, !tbaa !46
  %89 = getelementptr inbounds %struct.shared_hash_def, ptr %76, i64 0, i32 1
  %90 = load ptr, ptr %89, align 8, !tbaa !83
  %91 = tail call ptr @htab_find_with_hash(ptr noundef %90, ptr noundef nonnull %71, i32 noundef %88) #21
  %92 = icmp eq ptr %91, null
  br i1 %92, label %131, label %93

93:                                               ; preds = %86
  %94 = getelementptr inbounds %struct.variable_def, ptr %91, i64 0, i32 2
  %95 = load i8, ptr %94, align 4, !tbaa !207
  %96 = icmp sgt i8 %95, 0
  br i1 %96, label %97, label %131

97:                                               ; preds = %93, %122
  %98 = phi i64 [ %125, %122 ], [ 0, %93 ]
  %99 = phi i8 [ %124, %122 ], [ 0, %93 ]
  %100 = phi ptr [ %123, %122 ], [ null, %93 ]
  %101 = getelementptr inbounds %struct.variable_def, ptr %91, i64 0, i32 5, i64 %98
  %102 = load ptr, ptr %101, align 8, !tbaa !35
  %103 = icmp eq ptr %102, null
  br i1 %103, label %122, label %104

104:                                              ; preds = %97, %115
  %105 = phi ptr [ %118, %115 ], [ %102, %97 ]
  %106 = phi i8 [ %117, %115 ], [ %99, %97 ]
  %107 = phi ptr [ %116, %115 ], [ %100, %97 ]
  %108 = getelementptr inbounds %struct.location_chain_def, ptr %105, i64 0, i32 1
  %109 = load ptr, ptr %108, align 8, !tbaa !240
  %110 = tail call i32 @rtx_equal_p(ptr noundef %109, ptr noundef nonnull %1) #21
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %115, label %112

112:                                              ; preds = %104
  %113 = getelementptr inbounds %struct.location_chain_def, ptr %105, i64 0, i32 2
  %114 = load ptr, ptr %113, align 8, !tbaa !249
  br label %115

115:                                              ; preds = %104, %112
  %116 = phi ptr [ %114, %112 ], [ %107, %104 ]
  %117 = phi i8 [ 1, %112 ], [ %106, %104 ]
  %118 = load ptr, ptr %105, align 8, !tbaa !35
  %119 = icmp ne ptr %118, null
  %120 = icmp eq i8 %117, 0
  %121 = select i1 %119, i1 %120, i1 false
  br i1 %121, label %104, label %122, !llvm.loop !346

122:                                              ; preds = %115, %97
  %123 = phi ptr [ %100, %97 ], [ %116, %115 ]
  %124 = phi i8 [ %99, %97 ], [ %117, %115 ]
  %125 = add nuw nsw i64 %98, 1
  %126 = load i8, ptr %94, align 4, !tbaa !207
  %127 = sext i8 %126 to i64
  %128 = icmp slt i64 %125, %127
  %129 = icmp eq i8 %124, 0
  %130 = select i1 %128, i1 %129, i1 false
  br i1 %130, label %97, label %131, !llvm.loop !347

131:                                              ; preds = %122, %93, %86, %70
  %132 = phi ptr [ null, %70 ], [ null, %86 ], [ null, %93 ], [ %123, %122 ]
  ret ptr %132
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @var_reg_delete_and_set(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i32 noundef %3, ptr noundef %4) unnamed_addr #9 !prof !34 {
  %6 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 2
  %7 = load ptr, ptr %6, align 8, !tbaa !46
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 8, !tbaa !91
  br label %11

11:                                               ; preds = %5, %9
  %12 = phi ptr [ %10, %9 ], [ null, %5 ]
  br i1 %8, label %16, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.reg_attrs, ptr %7, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !93
  br label %16

16:                                               ; preds = %11, %13
  %17 = phi i64 [ %15, %13 ], [ 0, %11 ]
  %18 = icmp eq ptr %12, null
  br i1 %18, label %42, label %19

19:                                               ; preds = %16
  %20 = load i64, ptr %12, align 8
  %21 = and i64 %20, 65535
  %22 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %21
  %23 = load i32, ptr %22, align 4, !tbaa !50
  %24 = icmp eq i32 %23, 3
  br i1 %24, label %25, label %42

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.tree_decl_common, ptr %12, i64 0, i32 2
  %27 = load i64, ptr %26, align 8
  %28 = and i64 %27, 16384
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %42, label %30

30:                                               ; preds = %25
  %31 = tail call ptr @decl_debug_expr_lookup(ptr noundef nonnull %12) #21
  %32 = icmp eq ptr %31, null
  br i1 %32, label %42, label %33

33:                                               ; preds = %30
  %34 = tail call ptr @decl_debug_expr_lookup(ptr noundef nonnull %12) #21
  %35 = load i64, ptr %34, align 8
  %36 = and i64 %35, 65535
  %37 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %36
  %38 = load i32, ptr %37, align 4, !tbaa !50
  %39 = icmp eq i32 %38, 3
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = tail call ptr @decl_debug_expr_lookup(ptr noundef nonnull %12) #21
  br label %42

42:                                               ; preds = %16, %19, %25, %30, %33, %40
  %43 = phi ptr [ %41, %40 ], [ %12, %33 ], [ %12, %30 ], [ %12, %25 ], [ %12, %19 ], [ null, %16 ]
  %44 = icmp eq i32 %3, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = tail call fastcc i32 @get_init_value(ptr noundef %0, ptr noundef %1, ptr noundef %43)
  br label %47

47:                                               ; preds = %45, %42
  %48 = phi i32 [ %46, %45 ], [ %3, %42 ]
  %49 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %50 = load i32, ptr %49, align 8, !tbaa !46
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.dataflow_set_def, ptr %0, i64 0, i32 1, i64 %51
  %53 = load ptr, ptr %52, align 8, !tbaa !35
  %54 = icmp eq ptr %53, null
  br i1 %54, label %77, label %55

55:                                               ; preds = %47, %74
  %56 = phi ptr [ %75, %74 ], [ %52, %47 ]
  %57 = phi ptr [ %58, %74 ], [ %53, %47 ]
  %58 = load ptr, ptr %57, align 8, !tbaa !161
  %59 = getelementptr inbounds %struct.attrs_def, ptr %57, i64 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !159
  %61 = icmp eq ptr %60, %43
  br i1 %61, label %62, label %66

62:                                               ; preds = %55
  %63 = getelementptr inbounds %struct.attrs_def, ptr %57, i64 0, i32 3
  %64 = load i64, ptr %63, align 8, !tbaa !160
  %65 = icmp eq i64 %64, %17
  br i1 %65, label %72, label %66

66:                                               ; preds = %62, %55
  %67 = getelementptr inbounds %struct.attrs_def, ptr %57, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !157
  %69 = getelementptr inbounds %struct.attrs_def, ptr %57, i64 0, i32 3
  %70 = load i64, ptr %69, align 8, !tbaa !160
  tail call fastcc void @delete_variable_part(ptr noundef %0, ptr noundef %68, ptr noundef %60, i64 noundef %70)
  %71 = load ptr, ptr @attrs_pool, align 8, !tbaa !35
  tail call void @pool_free(ptr noundef %71, ptr noundef nonnull %57) #21
  store ptr %58, ptr %56, align 8, !tbaa !35
  br label %74

72:                                               ; preds = %62
  %73 = getelementptr inbounds %struct.attrs_def, ptr %57, i64 0, i32 1
  store ptr %1, ptr %73, align 8, !tbaa !157
  br label %74

74:                                               ; preds = %66, %72
  %75 = phi ptr [ %56, %66 ], [ %57, %72 ]
  %76 = icmp eq ptr %58, null
  br i1 %76, label %77, label %55, !llvm.loop !348

77:                                               ; preds = %74, %47
  %78 = icmp eq i8 %2, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %77
  tail call fastcc void @clobber_variable_part(ptr noundef %0, ptr noundef %1, ptr noundef %43, i64 noundef %17, ptr noundef %4)
  br label %80

80:                                               ; preds = %79, %77
  %81 = load ptr, ptr %6, align 8, !tbaa !46
  %82 = icmp eq ptr %81, null
  br i1 %82, label %85, label %83

83:                                               ; preds = %80
  %84 = load ptr, ptr %81, align 8, !tbaa !91
  br label %85

85:                                               ; preds = %83, %80
  %86 = phi ptr [ %84, %83 ], [ null, %80 ]
  br i1 %82, label %90, label %87

87:                                               ; preds = %85
  %88 = getelementptr inbounds %struct.reg_attrs, ptr %81, i64 0, i32 1
  %89 = load i64, ptr %88, align 8, !tbaa !93
  br label %90

90:                                               ; preds = %85, %87
  %91 = phi i64 [ %89, %87 ], [ 0, %85 ]
  tail call fastcc void @var_reg_decl_set(ptr noundef %0, ptr noundef %1, i32 noundef %48, ptr noundef %86, i64 noundef %91, ptr noundef %4, i32 noundef 1)
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @var_mem_delete_and_set(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i32 noundef %3, ptr noundef %4) unnamed_addr #9 !prof !34 {
  %6 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1, i32 0, i32 0, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !46
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 8, !tbaa !94
  br label %11

11:                                               ; preds = %5, %9
  %12 = phi ptr [ %10, %9 ], [ null, %5 ]
  br i1 %8, label %20, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.mem_attrs, ptr %7, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !96
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1
  %19 = load i64, ptr %18, align 8, !tbaa !46
  br label %20

20:                                               ; preds = %13, %11, %17
  %21 = phi i64 [ %19, %17 ], [ 0, %11 ], [ 0, %13 ]
  %22 = icmp eq ptr %12, null
  br i1 %22, label %46, label %23

23:                                               ; preds = %20
  %24 = load i64, ptr %12, align 8
  %25 = and i64 %24, 65535
  %26 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %25
  %27 = load i32, ptr %26, align 4, !tbaa !50
  %28 = icmp eq i32 %27, 3
  br i1 %28, label %29, label %46

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.tree_decl_common, ptr %12, i64 0, i32 2
  %31 = load i64, ptr %30, align 8
  %32 = and i64 %31, 16384
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %46, label %34

34:                                               ; preds = %29
  %35 = tail call ptr @decl_debug_expr_lookup(ptr noundef nonnull %12) #21
  %36 = icmp eq ptr %35, null
  br i1 %36, label %46, label %37

37:                                               ; preds = %34
  %38 = tail call ptr @decl_debug_expr_lookup(ptr noundef nonnull %12) #21
  %39 = load i64, ptr %38, align 8
  %40 = and i64 %39, 65535
  %41 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %40
  %42 = load i32, ptr %41, align 4, !tbaa !50
  %43 = icmp eq i32 %42, 3
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = tail call ptr @decl_debug_expr_lookup(ptr noundef nonnull %12) #21
  br label %46

46:                                               ; preds = %20, %23, %29, %34, %37, %44
  %47 = phi ptr [ %45, %44 ], [ %12, %37 ], [ %12, %34 ], [ %12, %29 ], [ %12, %23 ], [ null, %20 ]
  %48 = icmp eq i32 %3, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = tail call fastcc i32 @get_init_value(ptr noundef %0, ptr noundef %1, ptr noundef %47)
  br label %51

51:                                               ; preds = %49, %46
  %52 = phi i32 [ %50, %49 ], [ %3, %46 ]
  %53 = icmp eq i8 %2, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %51
  tail call fastcc void @clobber_variable_part(ptr noundef %0, ptr noundef null, ptr noundef %47, i64 noundef %21, ptr noundef %4)
  br label %55

55:                                               ; preds = %54, %51
  %56 = load ptr, ptr %6, align 8, !tbaa !46
  %57 = icmp eq ptr %56, null
  br i1 %57, label %60, label %58

58:                                               ; preds = %55
  %59 = load ptr, ptr %56, align 8, !tbaa !94
  br label %60

60:                                               ; preds = %58, %55
  %61 = phi ptr [ %59, %58 ], [ null, %55 ]
  br i1 %57, label %69, label %62

62:                                               ; preds = %60
  %63 = getelementptr inbounds %struct.mem_attrs, ptr %56, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !96
  %65 = icmp eq ptr %64, null
  br i1 %65, label %69, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.rtx_def, ptr %64, i64 0, i32 1
  %68 = load i64, ptr %67, align 8, !tbaa !46
  br label %69

69:                                               ; preds = %60, %62, %66
  %70 = phi i64 [ %68, %66 ], [ 0, %60 ], [ 0, %62 ]
  tail call fastcc void @var_mem_decl_set(ptr noundef %0, ptr noundef %1, i32 noundef %52, ptr noundef %61, i64 noundef %70, ptr noundef %4, i32 noundef 1)
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @var_regno_delete(ptr noundef %0, i32 noundef %1) unnamed_addr #9 !prof !34 {
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds %struct.dataflow_set_def, ptr %0, i64 0, i32 1, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !35
  %6 = icmp eq ptr %5, null
  br i1 %6, label %18, label %7

7:                                                ; preds = %2, %7
  %8 = phi ptr [ %9, %7 ], [ %5, %2 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !161
  %10 = getelementptr inbounds %struct.attrs_def, ptr %8, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !157
  %12 = getelementptr inbounds %struct.attrs_def, ptr %8, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !159
  %14 = getelementptr inbounds %struct.attrs_def, ptr %8, i64 0, i32 3
  %15 = load i64, ptr %14, align 8, !tbaa !160
  tail call fastcc void @delete_variable_part(ptr noundef %0, ptr noundef %11, ptr noundef %13, i64 noundef %15)
  %16 = load ptr, ptr @attrs_pool, align 8, !tbaa !35
  tail call void @pool_free(ptr noundef %16, ptr noundef nonnull %8) #21
  %17 = icmp eq ptr %9, null
  br i1 %17, label %18, label %7, !llvm.loop !349

18:                                               ; preds = %7, %2
  store ptr null, ptr %4, align 8, !tbaa !35
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @canonicalize_values_mark(ptr nocapture noundef readonly %0, ptr noundef %1) #9 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  %4 = load ptr, ptr %3, align 8, !tbaa !204
  %5 = icmp eq ptr %4, null
  br i1 %5, label %71, label %6

6:                                                ; preds = %2
  %7 = load i64, ptr %4, align 8
  %8 = and i64 %7, 65535
  %9 = icmp eq i64 %8, 1
  br i1 %9, label %10, label %71

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.variable_def, ptr %3, i64 0, i32 2
  %12 = load i8, ptr %11, align 4, !tbaa !207
  %13 = icmp eq i8 %12, 1
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3025, ptr noundef nonnull @.str.2) #21
  br label %15

15:                                               ; preds = %10, %14
  %16 = getelementptr inbounds %struct.variable_def, ptr %3, i64 0, i32 5
  %17 = load ptr, ptr %16, align 8, !tbaa !35
  %18 = icmp eq ptr %17, null
  br i1 %18, label %71, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  br label %21

21:                                               ; preds = %19, %68
  %22 = phi ptr [ %17, %19 ], [ %69, %68 ]
  %23 = getelementptr inbounds %struct.location_chain_def, ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !240
  %25 = load i32, ptr %24, align 8
  %26 = and i32 %25, 65535
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %68

28:                                               ; preds = %21
  br i1 %5, label %39, label %29

29:                                               ; preds = %28
  %30 = getelementptr inbounds %struct.rtx_def, ptr %24, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !46
  %32 = getelementptr inbounds %struct.cselib_val_struct, ptr %31, i64 0, i32 1
  %33 = load i32, ptr %32, align 4, !tbaa !193
  %34 = load ptr, ptr %20, align 8, !tbaa !46
  %35 = getelementptr inbounds %struct.cselib_val_struct, ptr %34, i64 0, i32 1
  %36 = load i32, ptr %35, align 4, !tbaa !193
  %37 = icmp slt i32 %33, %36
  %38 = zext i1 %37 to i8
  br label %39

39:                                               ; preds = %28, %29
  %40 = phi i8 [ 1, %28 ], [ %38, %29 ]
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %64

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.dataflow_set_def, ptr %1, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !77
  %45 = load i64, ptr %24, align 8
  %46 = and i64 %45, 65535
  %47 = icmp eq i64 %46, 1
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.rtx_def, ptr %24, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !46
  %51 = getelementptr inbounds %struct.cselib_val_struct, ptr %50, i64 0, i32 1
  br label %54

52:                                               ; preds = %42
  %53 = getelementptr inbounds %struct.tree_decl_minimal, ptr %24, i64 0, i32 2
  br label %54

54:                                               ; preds = %48, %52
  %55 = phi ptr [ %51, %48 ], [ %53, %52 ]
  %56 = load i32, ptr %55, align 4, !tbaa !46
  %57 = getelementptr inbounds %struct.shared_hash_def, ptr %44, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !83
  %59 = tail call ptr @htab_find_slot_with_hash(ptr noundef %58, ptr noundef nonnull %24, i32 noundef %56, i32 noundef 0) #21
  %60 = getelementptr inbounds %struct.location_chain_def, ptr %22, i64 0, i32 3
  %61 = load i32, ptr %60, align 8, !tbaa !248
  %62 = tail call fastcc ptr @set_slot_part(ptr noundef %1, ptr noundef nonnull %4, ptr noundef %59, ptr noundef nonnull %24, i64 noundef 0, i32 noundef %61, ptr noundef null)
  %63 = load ptr, ptr %23, align 8, !tbaa !240
  br label %64

64:                                               ; preds = %39, %54
  %65 = phi ptr [ %63, %54 ], [ %4, %39 ]
  %66 = load i32, ptr %65, align 8
  %67 = or i32 %66, 536870912
  store i32 %67, ptr %65, align 8
  br label %68

68:                                               ; preds = %64, %21
  %69 = load ptr, ptr %22, align 8, !tbaa !35
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %21, !llvm.loop !350

71:                                               ; preds = %68, %15, %2, %6
  ret i32 1
}

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @dataflow_set_preserve_mem_locs(ptr noundef %0, ptr noundef %1) #9 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  %4 = load ptr, ptr %3, align 8, !tbaa !204
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = load i64, ptr %4, align 8
  %8 = and i64 %7, 65535
  %9 = icmp eq i64 %8, 1
  %10 = load i32, ptr @flag_var_tracking_assignments, align 4
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %9, i1 true, i1 %11
  br i1 %12, label %199, label %16

13:                                               ; preds = %2
  %14 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !50
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %199, label %16

16:                                               ; preds = %6, %13
  br i1 %5, label %21, label %17

17:                                               ; preds = %16
  %18 = load i64, ptr %4, align 8
  %19 = and i64 %18, 65535
  %20 = icmp eq i64 %19, 1
  br label %21

21:                                               ; preds = %17, %16
  %22 = phi i1 [ false, %16 ], [ %20, %17 ]
  %23 = or i1 %5, %22
  br i1 %23, label %31, label %24

24:                                               ; preds = %21
  %25 = load i64, ptr %4, align 8
  %26 = and i64 %25, 65535
  %27 = icmp eq i64 %26, 37
  br i1 %27, label %31, label %28

28:                                               ; preds = %24
  %29 = tail call ptr @target_for_debug_bind(ptr noundef nonnull %4) #21
  %30 = icmp eq ptr %29, null
  br i1 %30, label %199, label %31

31:                                               ; preds = %21, %24, %28
  %32 = load ptr, ptr %3, align 8, !tbaa !204
  %33 = getelementptr inbounds %struct.variable_def, ptr %3, i64 0, i32 2
  %34 = load i8, ptr %33, align 4, !tbaa !207
  switch i8 %34, label %35 [
    i8 0, label %199
    i8 1, label %36
  ]

35:                                               ; preds = %31
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 4086, ptr noundef nonnull @.str.2) #21
  br label %36

36:                                               ; preds = %31, %35
  %37 = getelementptr inbounds %struct.dataflow_set_def, ptr %1, i64 0, i32 2
  %38 = getelementptr inbounds %struct.variable_def, ptr %3, i64 0, i32 1
  %39 = load i32, ptr %38, align 8, !tbaa !206
  %40 = getelementptr inbounds %struct.variable_def, ptr %3, i64 0, i32 4
  %41 = load i8, ptr %40, align 2, !tbaa !238
  %42 = zext i8 %41 to i32
  %43 = add nuw nsw i32 %42, 1
  %44 = icmp sgt i32 %39, %43
  br i1 %44, label %49, label %45

45:                                               ; preds = %36
  %46 = load ptr, ptr %37, align 8, !tbaa !77
  %47 = load i32, ptr %46, align 8, !tbaa !75
  %48 = icmp slt i32 %47, 2
  br i1 %48, label %98, label %49

49:                                               ; preds = %36, %45
  %50 = getelementptr inbounds %struct.variable_def, ptr %3, i64 0, i32 5
  %51 = load ptr, ptr %50, align 8, !tbaa !35
  %52 = icmp eq ptr %51, null
  br i1 %52, label %199, label %53

53:                                               ; preds = %49, %88
  %54 = phi ptr [ %89, %88 ], [ %51, %49 ]
  %55 = getelementptr inbounds %struct.location_chain_def, ptr %54, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !240
  %57 = load i32, ptr %56, align 8
  %58 = and i32 %57, 65535
  %59 = icmp eq i32 %58, 43
  br i1 %59, label %60, label %77

60:                                               ; preds = %53
  %61 = getelementptr inbounds %struct.rtx_def, ptr %56, i64 0, i32 1, i32 0, i32 0, i64 1
  %62 = load ptr, ptr %61, align 8, !tbaa !46
  %63 = icmp eq ptr %62, null
  br i1 %63, label %66, label %64

64:                                               ; preds = %60
  %65 = load ptr, ptr %62, align 8, !tbaa !94
  br label %66

66:                                               ; preds = %60, %64
  %67 = phi ptr [ %65, %64 ], [ null, %60 ]
  %68 = icmp eq ptr %67, %32
  br i1 %68, label %69, label %74

69:                                               ; preds = %66
  br i1 %63, label %77, label %70

70:                                               ; preds = %69
  %71 = getelementptr inbounds %struct.mem_attrs, ptr %62, i64 0, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !96
  %73 = icmp eq ptr %72, null
  br i1 %73, label %77, label %74

74:                                               ; preds = %70, %66
  %75 = tail call fastcc zeroext i8 @mem_dies_at_call(ptr noundef nonnull %56), !range !59
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %91, label %77

77:                                               ; preds = %70, %69, %74, %53
  %78 = load ptr, ptr %55, align 8, !tbaa !240
  %79 = load i32, ptr %78, align 8
  %80 = and i32 %79, 65535
  %81 = icmp eq i32 %80, 1
  br i1 %81, label %82, label %88

82:                                               ; preds = %77
  %83 = load ptr, ptr %37, align 8, !tbaa !77
  %84 = getelementptr inbounds %struct.shared_hash_def, ptr %83, i64 0, i32 1
  %85 = load ptr, ptr %84, align 8, !tbaa !83
  %86 = tail call fastcc ptr @find_mem_expr_in_1pdv(ptr noundef %32, ptr noundef nonnull %78, ptr noundef %85)
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %91

88:                                               ; preds = %82, %77
  %89 = load ptr, ptr %54, align 8, !tbaa !35
  %90 = icmp eq ptr %89, null
  br i1 %90, label %199, label %53, !llvm.loop !351

91:                                               ; preds = %74, %82
  %92 = tail call fastcc ptr @unshare_variable(ptr noundef %1, ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef 0)
  %93 = load ptr, ptr %92, align 8, !tbaa !35
  %94 = getelementptr inbounds %struct.variable_def, ptr %93, i64 0, i32 2
  %95 = load i8, ptr %94, align 4, !tbaa !207
  %96 = icmp eq i8 %95, 1
  br i1 %96, label %98, label %97

97:                                               ; preds = %91
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 4111, ptr noundef nonnull @.str.2) #21
  br label %98

98:                                               ; preds = %97, %91, %45
  %99 = phi ptr [ %93, %91 ], [ %93, %97 ], [ %3, %45 ]
  %100 = getelementptr inbounds %struct.variable_def, ptr %99, i64 0, i32 5
  %101 = load ptr, ptr %100, align 8, !tbaa !35
  %102 = icmp eq ptr %101, null
  br i1 %102, label %187, label %103

103:                                              ; preds = %98
  %104 = getelementptr inbounds %struct.variable_def, ptr %99, i64 0, i32 5, i64 0, i32 1
  br label %105

105:                                              ; preds = %103, %182
  %106 = phi ptr [ %101, %103 ], [ %185, %182 ]
  %107 = phi i8 [ 0, %103 ], [ %184, %182 ]
  %108 = phi ptr [ %100, %103 ], [ %183, %182 ]
  %109 = getelementptr inbounds %struct.location_chain_def, ptr %106, i64 0, i32 1
  %110 = load ptr, ptr %109, align 8, !tbaa !240
  %111 = load i32, ptr %110, align 8
  %112 = and i32 %111, 65535
  %113 = icmp eq i32 %112, 1
  br i1 %113, label %114, label %131

114:                                              ; preds = %105
  %115 = load ptr, ptr %37, align 8, !tbaa !77
  %116 = getelementptr inbounds %struct.shared_hash_def, ptr %115, i64 0, i32 1
  %117 = load ptr, ptr %116, align 8, !tbaa !83
  %118 = tail call fastcc ptr @find_mem_expr_in_1pdv(ptr noundef %32, ptr noundef nonnull %110, ptr noundef %117)
  %119 = icmp eq ptr %118, null
  br i1 %119, label %131, label %120

120:                                              ; preds = %114
  %121 = getelementptr inbounds %struct.location_chain_def, ptr %118, i64 0, i32 1
  %122 = load ptr, ptr %121, align 8, !tbaa !240
  store ptr %122, ptr %109, align 8, !tbaa !240
  %123 = getelementptr inbounds %struct.location_chain_def, ptr %118, i64 0, i32 2
  %124 = load ptr, ptr %123, align 8, !tbaa !249
  %125 = getelementptr inbounds %struct.location_chain_def, ptr %106, i64 0, i32 2
  store ptr %124, ptr %125, align 8, !tbaa !249
  %126 = getelementptr inbounds %struct.location_chain_def, ptr %106, i64 0, i32 3
  %127 = load i32, ptr %126, align 8, !tbaa !248
  %128 = getelementptr inbounds %struct.location_chain_def, ptr %118, i64 0, i32 3
  %129 = load i32, ptr %128, align 8, !tbaa !248
  %130 = tail call i32 @llvm.umin.i32(i32 %127, i32 %129)
  store i32 %130, ptr %126, align 8, !tbaa !248
  br label %131

131:                                              ; preds = %114, %120, %105
  %132 = load ptr, ptr %109, align 8, !tbaa !240
  %133 = load i32, ptr %132, align 8
  %134 = and i32 %133, 65535
  %135 = icmp eq i32 %134, 43
  br i1 %135, label %136, label %155

136:                                              ; preds = %131
  %137 = getelementptr inbounds %struct.rtx_def, ptr %132, i64 0, i32 1, i32 0, i32 0, i64 1
  %138 = load ptr, ptr %137, align 8, !tbaa !46
  %139 = icmp eq ptr %138, null
  br i1 %139, label %142, label %140

140:                                              ; preds = %136
  %141 = load ptr, ptr %138, align 8, !tbaa !94
  br label %142

142:                                              ; preds = %136, %140
  %143 = phi ptr [ %141, %140 ], [ null, %136 ]
  %144 = icmp eq ptr %143, %32
  br i1 %144, label %145, label %152

145:                                              ; preds = %142
  br i1 %139, label %149, label %146

146:                                              ; preds = %145
  %147 = getelementptr inbounds %struct.mem_attrs, ptr %138, i64 0, i32 1
  %148 = load ptr, ptr %147, align 8, !tbaa !96
  br label %149

149:                                              ; preds = %145, %146
  %150 = phi ptr [ %148, %146 ], [ null, %145 ]
  %151 = icmp eq ptr %150, null
  br i1 %151, label %155, label %152

152:                                              ; preds = %149, %142
  %153 = tail call fastcc zeroext i8 @mem_dies_at_call(ptr noundef nonnull %132), !range !59
  %154 = icmp eq i8 %153, 0
  br i1 %154, label %155, label %169

155:                                              ; preds = %149, %152, %131
  %156 = load ptr, ptr %109, align 8, !tbaa !240
  %157 = icmp ne ptr %110, %156
  %158 = load i1, ptr @emit_notes, align 1
  %159 = select i1 %157, i1 %158, i1 false
  br i1 %159, label %160, label %182

160:                                              ; preds = %155
  %161 = load ptr, ptr %104, align 8, !tbaa !253
  %162 = icmp eq ptr %110, %161
  br i1 %162, label %163, label %165

163:                                              ; preds = %160
  %164 = getelementptr inbounds %struct.variable_def, ptr %99, i64 0, i32 3
  store ptr null, ptr %104, align 8, !tbaa !253
  store i8 1, ptr %164, align 1, !tbaa !237
  br label %165

165:                                              ; preds = %163, %160
  %166 = phi i8 [ 1, %163 ], [ %107, %160 ]
  %167 = load ptr, ptr %99, align 8, !tbaa !204
  tail call fastcc void @add_value_chains(ptr noundef %167, ptr noundef %156)
  %168 = load ptr, ptr %99, align 8, !tbaa !204
  tail call fastcc void @remove_value_chains(ptr noundef %168, ptr noundef nonnull %110)
  br label %182

169:                                              ; preds = %152
  %170 = load i1, ptr @emit_notes, align 1
  br i1 %170, label %171, label %178

171:                                              ; preds = %169
  %172 = getelementptr inbounds %struct.variable_def, ptr %99, i64 0, i32 5, i64 0, i32 1
  %173 = load ptr, ptr %99, align 8, !tbaa !204
  tail call fastcc void @remove_value_chains(ptr noundef %173, ptr noundef nonnull %110)
  %174 = load ptr, ptr %172, align 8, !tbaa !253
  %175 = icmp eq ptr %110, %174
  br i1 %175, label %176, label %178

176:                                              ; preds = %171
  %177 = getelementptr inbounds %struct.variable_def, ptr %99, i64 0, i32 3
  store ptr null, ptr %172, align 8, !tbaa !253
  store i8 1, ptr %177, align 1, !tbaa !237
  br label %178

178:                                              ; preds = %171, %176, %169
  %179 = phi i8 [ 1, %176 ], [ %107, %171 ], [ %107, %169 ]
  %180 = load ptr, ptr %106, align 8, !tbaa !210
  store ptr %180, ptr %108, align 8, !tbaa !35
  %181 = load ptr, ptr @loc_chain_pool, align 8, !tbaa !35
  tail call void @pool_free(ptr noundef %181, ptr noundef nonnull %106) #21
  br label %182

182:                                              ; preds = %155, %165, %178
  %183 = phi ptr [ %108, %178 ], [ %106, %165 ], [ %106, %155 ]
  %184 = phi i8 [ %179, %178 ], [ %166, %165 ], [ %107, %155 ]
  %185 = load ptr, ptr %183, align 8, !tbaa !35
  %186 = icmp eq ptr %185, null
  br i1 %186, label %187, label %105, !llvm.loop !352

187:                                              ; preds = %182, %98
  %188 = phi i8 [ 0, %98 ], [ %184, %182 ]
  %189 = load ptr, ptr %100, align 8, !tbaa !208
  %190 = icmp eq ptr %189, null
  br i1 %190, label %191, label %195

191:                                              ; preds = %187
  %192 = getelementptr inbounds %struct.variable_def, ptr %99, i64 0, i32 2
  %193 = load i8, ptr %192, align 4, !tbaa !207
  %194 = add i8 %193, -1
  store i8 %194, ptr %192, align 4, !tbaa !207
  br label %195

195:                                              ; preds = %191, %187
  %196 = phi i8 [ %188, %187 ], [ 1, %191 ]
  %197 = icmp eq i8 %196, 0
  br i1 %197, label %199, label %198

198:                                              ; preds = %195
  tail call fastcc void @variable_was_changed(ptr noundef %99, ptr noundef %1)
  br label %199

199:                                              ; preds = %88, %13, %49, %31, %6, %28, %195, %198
  ret i32 1
}

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @dataflow_set_remove_mem_locs(ptr noundef %0, ptr noundef %1) #9 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  %4 = load ptr, ptr %3, align 8, !tbaa !204
  %5 = icmp eq ptr %4, null
  br i1 %5, label %103, label %6

6:                                                ; preds = %2
  %7 = load i64, ptr %4, align 8
  %8 = and i64 %7, 65535
  %9 = icmp eq i64 %8, 1
  br i1 %9, label %10, label %103

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.variable_def, ptr %3, i64 0, i32 2
  %12 = load i8, ptr %11, align 4, !tbaa !207
  %13 = icmp eq i8 %12, 1
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 4198, ptr noundef nonnull @.str.2) #21
  br label %15

15:                                               ; preds = %10, %14
  %16 = getelementptr inbounds %struct.variable_def, ptr %3, i64 0, i32 1
  %17 = load i32, ptr %16, align 8, !tbaa !206
  %18 = getelementptr inbounds %struct.variable_def, ptr %3, i64 0, i32 4
  %19 = load i8, ptr %18, align 2, !tbaa !238
  %20 = zext i8 %19 to i32
  %21 = add nuw nsw i32 %20, 1
  %22 = icmp sgt i32 %17, %21
  br i1 %22, label %28, label %23

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.dataflow_set_def, ptr %1, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !77
  %26 = load i32, ptr %25, align 8, !tbaa !75
  %27 = icmp slt i32 %26, 2
  br i1 %27, label %52, label %28

28:                                               ; preds = %15, %23
  %29 = getelementptr inbounds %struct.variable_def, ptr %3, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !35
  %31 = icmp eq ptr %30, null
  br i1 %31, label %103, label %32

32:                                               ; preds = %28, %42
  %33 = phi ptr [ %43, %42 ], [ %30, %28 ]
  %34 = getelementptr inbounds %struct.location_chain_def, ptr %33, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !240
  %36 = load i32, ptr %35, align 8
  %37 = and i32 %36, 65535
  %38 = icmp eq i32 %37, 43
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = tail call fastcc zeroext i8 @mem_dies_at_call(ptr noundef nonnull %35), !range !59
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %32, %39
  %43 = load ptr, ptr %33, align 8, !tbaa !35
  %44 = icmp eq ptr %43, null
  br i1 %44, label %103, label %32, !llvm.loop !353

45:                                               ; preds = %39
  %46 = tail call fastcc ptr @unshare_variable(ptr noundef %1, ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef 0)
  %47 = load ptr, ptr %46, align 8, !tbaa !35
  %48 = getelementptr inbounds %struct.variable_def, ptr %47, i64 0, i32 2
  %49 = load i8, ptr %48, align 4, !tbaa !207
  %50 = icmp eq i8 %49, 1
  br i1 %50, label %52, label %51

51:                                               ; preds = %45
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 4212, ptr noundef nonnull @.str.2) #21
  br label %52

52:                                               ; preds = %51, %45, %23
  %53 = phi ptr [ %47, %45 ], [ %47, %51 ], [ %3, %23 ]
  %54 = getelementptr inbounds %struct.variable_def, ptr %53, i64 0, i32 5
  %55 = load ptr, ptr %54, align 8, !tbaa !35
  %56 = icmp eq ptr %55, null
  br i1 %56, label %91, label %57

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.variable_def, ptr %53, i64 0, i32 5, i64 0, i32 1
  br label %59

59:                                               ; preds = %57, %86
  %60 = phi ptr [ %55, %57 ], [ %89, %86 ]
  %61 = phi i8 [ 0, %57 ], [ %88, %86 ]
  %62 = phi ptr [ %54, %57 ], [ %87, %86 ]
  %63 = getelementptr inbounds %struct.location_chain_def, ptr %60, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !240
  %65 = load i32, ptr %64, align 8
  %66 = and i32 %65, 65535
  %67 = icmp eq i32 %66, 43
  br i1 %67, label %68, label %86

68:                                               ; preds = %59
  %69 = tail call fastcc zeroext i8 @mem_dies_at_call(ptr noundef nonnull %64), !range !59
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %86, label %71

71:                                               ; preds = %68
  %72 = load i1, ptr @emit_notes, align 1
  br i1 %72, label %73, label %76

73:                                               ; preds = %71
  %74 = load ptr, ptr %53, align 8, !tbaa !204
  %75 = load ptr, ptr %63, align 8, !tbaa !240
  tail call fastcc void @remove_value_chains(ptr noundef %74, ptr noundef %75)
  br label %76

76:                                               ; preds = %73, %71
  %77 = load ptr, ptr %60, align 8, !tbaa !210
  store ptr %77, ptr %62, align 8, !tbaa !35
  %78 = load ptr, ptr %58, align 8, !tbaa !253
  %79 = load ptr, ptr %63, align 8, !tbaa !240
  %80 = icmp eq ptr %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %76
  %82 = getelementptr inbounds %struct.variable_def, ptr %53, i64 0, i32 3
  store ptr null, ptr %58, align 8, !tbaa !253
  store i8 1, ptr %82, align 1, !tbaa !237
  br label %83

83:                                               ; preds = %81, %76
  %84 = phi i8 [ 1, %81 ], [ %61, %76 ]
  %85 = load ptr, ptr @loc_chain_pool, align 8, !tbaa !35
  tail call void @pool_free(ptr noundef %85, ptr noundef nonnull %60) #21
  br label %86

86:                                               ; preds = %59, %68, %83
  %87 = phi ptr [ %62, %83 ], [ %60, %68 ], [ %60, %59 ]
  %88 = phi i8 [ %84, %83 ], [ %61, %68 ], [ %61, %59 ]
  %89 = load ptr, ptr %87, align 8, !tbaa !35
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %59, !llvm.loop !354

91:                                               ; preds = %86, %52
  %92 = phi i8 [ 0, %52 ], [ %88, %86 ]
  %93 = load ptr, ptr %54, align 8, !tbaa !208
  %94 = icmp eq ptr %93, null
  br i1 %94, label %95, label %99

95:                                               ; preds = %91
  %96 = getelementptr inbounds %struct.variable_def, ptr %53, i64 0, i32 2
  %97 = load i8, ptr %96, align 4, !tbaa !207
  %98 = add i8 %97, -1
  store i8 %98, ptr %96, align 4, !tbaa !207
  br label %99

99:                                               ; preds = %95, %91
  %100 = phi i8 [ %92, %91 ], [ 1, %95 ]
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %99
  tail call fastcc void @variable_was_changed(ptr noundef %53, ptr noundef %1)
  br label %103

103:                                              ; preds = %42, %28, %2, %6, %99, %102
  ret i32 1
}

; Function Attrs: cold nounwind uwtable
define internal fastcc zeroext i8 @mem_dies_at_call(ptr nocapture noundef readonly %0) unnamed_addr #9 !prof !34 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !94
  br label %7

7:                                                ; preds = %1, %5
  %8 = phi ptr [ %6, %5 ], [ null, %1 ]
  %9 = icmp eq ptr %8, null
  br i1 %9, label %64, label %10

10:                                               ; preds = %7
  %11 = tail call ptr @get_base_address(ptr noundef nonnull %8) #21
  %12 = icmp eq ptr %11, null
  br i1 %12, label %64, label %13

13:                                               ; preds = %10
  %14 = load i64, ptr %11, align 8
  %15 = and i64 %14, 65535
  %16 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !50
  %18 = icmp eq i32 %17, 3
  br i1 %18, label %19, label %64

19:                                               ; preds = %13
  %20 = icmp eq i64 %15, 33
  br i1 %20, label %52, label %21

21:                                               ; preds = %19
  %22 = and i64 %14, 201326592
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.tree_decl_common, ptr %11, i64 0, i32 2
  %26 = load i64, ptr %25, align 8
  %27 = and i64 %26, 33554432
  %28 = icmp eq i64 %27, 0
  %29 = and i64 %14, 1048576
  %30 = icmp eq i64 %29, 0
  %31 = or i1 %30, %28
  br i1 %31, label %42, label %35

32:                                               ; preds = %21
  %33 = and i64 %14, 1048576
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %24, %32
  %36 = getelementptr inbounds %struct.tree_common, ptr %11, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !46
  %38 = getelementptr inbounds %struct.tree_type, ptr %37, i64 0, i32 6
  %39 = load i32, ptr %38, align 4
  %40 = and i32 %39, 2048
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %52, label %42

42:                                               ; preds = %35, %32, %24
  %43 = and i64 %14, 134217728
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %64

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.tree_decl_common, ptr %11, i64 0, i32 2
  %47 = load i64, ptr %46, align 8
  %48 = and i64 %47, 33554432
  %49 = and i64 %14, 262144
  %50 = or disjoint i64 %48, %49
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %35, %19, %45
  %53 = and i64 %14, 1048576
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %52
  %56 = and i64 %14, 67108864
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct.tree_decl_common, ptr %11, i64 0, i32 2
  %60 = load i64, ptr %59, align 8
  %61 = lshr i64 %60, 25
  %62 = trunc i64 %61 to i8
  %63 = and i8 %62, 1
  br label %64

64:                                               ; preds = %45, %42, %58, %55, %52, %13, %10, %7
  %65 = phi i8 [ 1, %7 ], [ 1, %10 ], [ 1, %13 ], [ 0, %52 ], [ 1, %55 ], [ %63, %58 ], [ 1, %42 ], [ 1, %45 ]
  ret i8 %65
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @find_mem_expr_in_1pdv(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #9 !prof !34 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %102, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %1, align 8
  %7 = and i32 %6, 65535
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 4008, ptr noundef nonnull @.str.2) #21
  br label %10

10:                                               ; preds = %5, %9
  %11 = load i32, ptr %1, align 8
  %12 = and i32 %11, 536870912
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 4010, ptr noundef nonnull @.str.2) #21
  br label %15

15:                                               ; preds = %14, %10
  %16 = load i64, ptr %1, align 8
  %17 = and i64 %16, 65535
  %18 = icmp eq i64 %17, 1
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !46
  %22 = getelementptr inbounds %struct.cselib_val_struct, ptr %21, i64 0, i32 1
  br label %25

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1, i64 0, i32 2
  br label %25

25:                                               ; preds = %19, %23
  %26 = phi ptr [ %22, %19 ], [ %24, %23 ]
  %27 = load i32, ptr %26, align 4, !tbaa !46
  %28 = tail call ptr @htab_find_with_hash(ptr noundef %2, ptr noundef nonnull %1, i32 noundef %27) #21
  %29 = icmp eq ptr %28, null
  br i1 %29, label %102, label %30

30:                                               ; preds = %25
  %31 = load ptr, ptr %28, align 8, !tbaa !204
  %32 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !50
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %50, label %34

34:                                               ; preds = %30
  %35 = icmp eq ptr %31, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %34
  %37 = load i64, ptr %31, align 8
  %38 = and i64 %37, 65535
  %39 = icmp eq i64 %38, 1
  br label %40

40:                                               ; preds = %36, %34
  %41 = phi i1 [ false, %34 ], [ %39, %36 ]
  %42 = or i1 %35, %41
  br i1 %42, label %51, label %43

43:                                               ; preds = %40
  %44 = load i64, ptr %31, align 8
  %45 = and i64 %44, 65535
  %46 = icmp eq i64 %45, 37
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = tail call ptr @target_for_debug_bind(ptr noundef nonnull %31) #21
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %30, %47
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 4018, ptr noundef nonnull @.str.2) #21
  br label %51

51:                                               ; preds = %40, %43, %47, %50
  %52 = getelementptr inbounds %struct.variable_def, ptr %28, i64 0, i32 2
  %53 = load i8, ptr %52, align 4, !tbaa !207
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %102, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.variable_def, ptr %28, i64 0, i32 5
  %57 = getelementptr inbounds %struct.variable_def, ptr %28, i64 0, i32 5, i64 0, i32 2
  %58 = load i64, ptr %57, align 8, !tbaa !239
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %55
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 4023, ptr noundef nonnull @.str.2) #21
  br label %61

61:                                               ; preds = %55, %60
  %62 = load i32, ptr %1, align 8
  %63 = or i32 %62, 536870912
  store i32 %63, ptr %1, align 8
  %64 = load ptr, ptr %56, align 8, !tbaa !35
  %65 = icmp eq ptr %64, null
  br i1 %65, label %98, label %66

66:                                               ; preds = %61, %95
  %67 = phi ptr [ %96, %95 ], [ %64, %61 ]
  %68 = getelementptr inbounds %struct.location_chain_def, ptr %67, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !240
  %70 = load i32, ptr %69, align 8
  %71 = and i32 %70, 65535
  %72 = icmp eq i32 %71, 43
  br i1 %72, label %73, label %89

73:                                               ; preds = %66
  %74 = getelementptr inbounds %struct.rtx_def, ptr %69, i64 0, i32 1, i32 0, i32 0, i64 1
  %75 = load ptr, ptr %74, align 8, !tbaa !46
  %76 = icmp eq ptr %75, null
  br i1 %76, label %79, label %77

77:                                               ; preds = %73
  %78 = load ptr, ptr %75, align 8, !tbaa !94
  br label %79

79:                                               ; preds = %73, %77
  %80 = phi ptr [ %78, %77 ], [ null, %73 ]
  %81 = icmp eq ptr %80, %0
  br i1 %81, label %82, label %89

82:                                               ; preds = %79
  br i1 %76, label %86, label %83

83:                                               ; preds = %82
  %84 = getelementptr inbounds %struct.mem_attrs, ptr %75, i64 0, i32 1
  %85 = load ptr, ptr %84, align 8, !tbaa !96
  br label %86

86:                                               ; preds = %82, %83
  %87 = phi ptr [ %85, %83 ], [ null, %82 ]
  %88 = icmp eq ptr %87, null
  br i1 %88, label %98, label %89

89:                                               ; preds = %86, %79, %66
  %90 = and i32 %70, 536936447
  %91 = icmp eq i32 %90, 1
  br i1 %91, label %92, label %95

92:                                               ; preds = %89
  %93 = tail call fastcc ptr @find_mem_expr_in_1pdv(ptr noundef %0, ptr noundef nonnull %69, ptr noundef %2)
  %94 = icmp eq ptr %93, null
  br i1 %94, label %95, label %98

95:                                               ; preds = %92, %89
  %96 = load ptr, ptr %67, align 8, !tbaa !35
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %66, !llvm.loop !355

98:                                               ; preds = %95, %92, %86, %61
  %99 = phi ptr [ null, %61 ], [ null, %95 ], [ %93, %92 ], [ %67, %86 ]
  %100 = load i32, ptr %1, align 8
  %101 = and i32 %100, -536870913
  store i32 %101, ptr %1, align 8
  br label %102

102:                                              ; preds = %51, %25, %3, %98
  %103 = phi ptr [ %99, %98 ], [ null, %3 ], [ null, %25 ], [ null, %51 ]
  ret ptr %103
}

declare ptr @get_base_address(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc i32 @get_init_value(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #9 !prof !34 {
  %4 = load i32, ptr @flag_var_tracking_uninit, align 4, !tbaa !50
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %54, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.dataflow_set_def, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !77
  %9 = icmp eq ptr %2, null
  br i1 %9, label %18, label %10

10:                                               ; preds = %6
  %11 = load i64, ptr %2, align 8
  %12 = and i64 %11, 65535
  %13 = icmp eq i64 %12, 1
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !46
  %17 = getelementptr inbounds %struct.cselib_val_struct, ptr %16, i64 0, i32 1
  br label %20

18:                                               ; preds = %10, %6
  %19 = getelementptr inbounds %struct.tree_decl_minimal, ptr %2, i64 0, i32 2
  br label %20

20:                                               ; preds = %14, %18
  %21 = phi ptr [ %17, %14 ], [ %19, %18 ]
  %22 = load i32, ptr %21, align 4, !tbaa !46
  %23 = getelementptr inbounds %struct.shared_hash_def, ptr %8, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !83
  %25 = tail call ptr @htab_find_with_hash(ptr noundef %24, ptr noundef %2, i32 noundef %22) #21
  %26 = icmp eq ptr %25, null
  br i1 %26, label %54, label %27

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.variable_def, ptr %25, i64 0, i32 2
  %29 = load i8, ptr %28, align 4, !tbaa !207
  %30 = icmp sgt i8 %29, 0
  br i1 %30, label %31, label %54

31:                                               ; preds = %27, %46
  %32 = phi i64 [ %48, %46 ], [ 0, %27 ]
  %33 = getelementptr inbounds %struct.variable_def, ptr %25, i64 0, i32 5, i64 %32
  br label %34

34:                                               ; preds = %38, %31
  %35 = phi ptr [ %33, %31 ], [ %36, %38 ]
  %36 = load ptr, ptr %35, align 8, !tbaa !35
  %37 = icmp eq ptr %36, null
  br i1 %37, label %46, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.location_chain_def, ptr %36, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !240
  %41 = tail call i32 @rtx_equal_p(ptr noundef %40, ptr noundef %1) #21
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %34, label %43, !llvm.loop !356

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.location_chain_def, ptr %36, i64 0, i32 3
  %45 = load i32, ptr %44, align 8, !tbaa !248
  br label %46

46:                                               ; preds = %34, %43
  %47 = phi i32 [ %45, %43 ], [ 0, %34 ]
  %48 = add nuw nsw i64 %32, 1
  %49 = load i8, ptr %28, align 4, !tbaa !207
  %50 = sext i8 %49 to i64
  %51 = icmp slt i64 %48, %50
  %52 = icmp eq i32 %47, 0
  %53 = select i1 %51, i1 %52, i1 false
  br i1 %53, label %31, label %54, !llvm.loop !357

54:                                               ; preds = %46, %27, %20, %3
  %55 = phi i32 [ 2, %3 ], [ 0, %20 ], [ 0, %27 ], [ %47, %46 ]
  ret i32 %55
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #17

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @dataflow_set_different_1(ptr nocapture noundef readonly %0, ptr noundef %1) #9 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  %4 = load ptr, ptr %3, align 8, !tbaa !204
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %2
  %7 = load i64, ptr %4, align 8
  %8 = and i64 %7, 65535
  %9 = icmp eq i64 %8, 1
  br i1 %9, label %10, label %14

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  %13 = getelementptr inbounds %struct.cselib_val_struct, ptr %12, i64 0, i32 1
  br label %16

14:                                               ; preds = %6, %2
  %15 = getelementptr inbounds %struct.tree_decl_minimal, ptr %4, i64 0, i32 2
  br label %16

16:                                               ; preds = %10, %14
  %17 = phi ptr [ %13, %10 ], [ %15, %14 ]
  %18 = load i32, ptr %17, align 4, !tbaa !46
  %19 = tail call ptr @htab_find_with_hash(ptr noundef %1, ptr noundef %4, i32 noundef %18) #21
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %30

21:                                               ; preds = %16
  store i1 true, ptr @dataflow_set_different_value, align 1
  %22 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %23 = icmp eq ptr %22, null
  br i1 %23, label %44, label %24

24:                                               ; preds = %21
  %25 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %26 = and i32 %25, 8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %44, label %28

28:                                               ; preds = %24
  %29 = tail call i64 @fwrite(ptr nonnull @.str.34, i64 39, i64 1, ptr nonnull %22)
  br label %42

30:                                               ; preds = %16
  %31 = tail call fastcc zeroext i8 @variable_different_p(ptr noundef nonnull %3, ptr noundef nonnull %19), !range !59
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %44, label %33

33:                                               ; preds = %30
  store i1 true, ptr @dataflow_set_different_value, align 1
  %34 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %35 = icmp eq ptr %34, null
  br i1 %35, label %44, label %36

36:                                               ; preds = %33
  %37 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %38 = and i32 %37, 8
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = tail call i64 @fwrite(ptr nonnull @.str.35, i64 47, i64 1, ptr nonnull %34)
  tail call fastcc void @dump_var(ptr noundef nonnull %3)
  br label %42

42:                                               ; preds = %28, %40
  %43 = phi ptr [ %19, %40 ], [ %3, %28 ]
  tail call fastcc void @dump_var(ptr noundef nonnull %43)
  br label %44

44:                                               ; preds = %42, %30, %33, %36, %21, %24
  %45 = phi i32 [ 0, %24 ], [ 0, %21 ], [ 0, %36 ], [ 0, %33 ], [ 1, %30 ], [ 0, %42 ]
  ret i32 %45
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @dump_var(ptr nocapture noundef readonly %0) unnamed_addr #9 !prof !34 {
  %2 = load ptr, ptr %0, align 8, !tbaa !204
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = load i64, ptr %2, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 1
  br i1 %7, label %40, label %8

8:                                                ; preds = %1, %4
  %9 = getelementptr inbounds %struct.tree_decl_minimal, ptr %2, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !46
  %11 = icmp eq ptr %10, null
  br i1 %11, label %25, label %12

12:                                               ; preds = %8
  %13 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %14 = getelementptr inbounds %struct.tree_identifier, ptr %10, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !46
  %16 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef nonnull @.str.36, ptr noundef %15)
  %17 = load i32, ptr @dump_flags, align 4, !tbaa !50
  %18 = and i32 %17, 256
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %37, label %20

20:                                               ; preds = %12
  %21 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %22 = getelementptr inbounds %struct.tree_decl_minimal, ptr %2, i64 0, i32 2
  %23 = load i32, ptr %22, align 4, !tbaa !46
  %24 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef nonnull @.str.37, i32 noundef %23)
  br label %37

25:                                               ; preds = %8
  %26 = load i64, ptr %2, align 8
  %27 = and i64 %26, 65535
  %28 = icmp eq i64 %27, 37
  %29 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %30 = getelementptr inbounds %struct.tree_decl_minimal, ptr %2, i64 0, i32 2
  %31 = load i32, ptr %30, align 4, !tbaa !46
  br i1 %28, label %32, label %35

32:                                               ; preds = %25
  %33 = sub i32 0, %31
  %34 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %29, ptr noundef nonnull @.str.38, i32 noundef %33)
  br label %37

35:                                               ; preds = %25
  %36 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %29, ptr noundef nonnull @.str.39, i32 noundef %31)
  br label %37

37:                                               ; preds = %32, %35, %12, %20
  %38 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %39 = tail call i32 @fputc(i32 10, ptr %38)
  br label %46

40:                                               ; preds = %4
  %41 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %42 = tail call i32 @fputc(i32 noundef 32, ptr noundef %41)
  %43 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %44 = load ptr, ptr %0, align 8, !tbaa !204
  %45 = tail call i32 @print_rtl_single(ptr noundef %43, ptr noundef %44) #21
  br label %46

46:                                               ; preds = %40, %37
  %47 = getelementptr inbounds %struct.variable_def, ptr %0, i64 0, i32 2
  %48 = load i8, ptr %47, align 4, !tbaa !207
  %49 = icmp sgt i8 %48, 0
  br i1 %49, label %50, label %81

50:                                               ; preds = %46, %76
  %51 = phi i64 [ %77, %76 ], [ 0, %46 ]
  %52 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %53 = getelementptr inbounds %struct.variable_def, ptr %0, i64 0, i32 5, i64 %51
  %54 = getelementptr inbounds %struct.variable_def, ptr %0, i64 0, i32 5, i64 %51, i32 2
  %55 = load i64, ptr %54, align 8, !tbaa !239
  %56 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %52, ptr noundef nonnull @.str.40, i64 noundef %55)
  %57 = load ptr, ptr %53, align 8, !tbaa !35
  %58 = icmp eq ptr %57, null
  br i1 %58, label %76, label %59

59:                                               ; preds = %50, %69
  %60 = phi ptr [ %74, %69 ], [ %57, %50 ]
  %61 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %62 = tail call i64 @fwrite(ptr nonnull @.str.41, i64 6, i64 1, ptr %61)
  %63 = getelementptr inbounds %struct.location_chain_def, ptr %60, i64 0, i32 3
  %64 = load i32, ptr %63, align 8, !tbaa !248
  %65 = icmp eq i32 %64, 1
  br i1 %65, label %66, label %69

66:                                               ; preds = %59
  %67 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %68 = tail call i64 @fwrite(ptr nonnull @.str.42, i64 8, i64 1, ptr %67)
  br label %69

69:                                               ; preds = %66, %59
  %70 = load ptr, ptr @dump_file, align 8, !tbaa !35
  %71 = getelementptr inbounds %struct.location_chain_def, ptr %60, i64 0, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !240
  %73 = tail call i32 @print_rtl_single(ptr noundef %70, ptr noundef %72) #21
  %74 = load ptr, ptr %60, align 8, !tbaa !35
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %59, !llvm.loop !358

76:                                               ; preds = %69, %50
  %77 = add nuw nsw i64 %51, 1
  %78 = load i8, ptr %47, align 4, !tbaa !207
  %79 = sext i8 %78 to i64
  %80 = icmp slt i64 %77, %79
  br i1 %80, label %50, label %81, !llvm.loop !359

81:                                               ; preds = %76, %46
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc zeroext i8 @variable_different_p(ptr noundef %0, ptr noundef %1) unnamed_addr #9 !prof !34 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %71, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.variable_def, ptr %0, i64 0, i32 2
  %6 = load i8, ptr %5, align 4, !tbaa !207
  %7 = getelementptr inbounds %struct.variable_def, ptr %1, i64 0, i32 2
  %8 = load i8, ptr %7, align 4, !tbaa !207
  %9 = icmp eq i8 %6, %8
  br i1 %9, label %10, label %71

10:                                               ; preds = %4
  %11 = load i8, ptr %5, align 4, !tbaa !207
  %12 = icmp sgt i8 %11, 0
  br i1 %12, label %18, label %71

13:                                               ; preds = %68
  %14 = add nuw nsw i64 %19, 1
  %15 = load i8, ptr %5, align 4, !tbaa !207
  %16 = sext i8 %15 to i64
  %17 = icmp slt i64 %14, %16
  br i1 %17, label %18, label %71, !llvm.loop !360

18:                                               ; preds = %10, %13
  %19 = phi i64 [ %14, %13 ], [ 0, %10 ]
  %20 = getelementptr inbounds %struct.variable_def, ptr %0, i64 0, i32 5, i64 %19
  %21 = getelementptr inbounds %struct.variable_def, ptr %0, i64 0, i32 5, i64 %19, i32 2
  %22 = load i64, ptr %21, align 8, !tbaa !239
  %23 = getelementptr inbounds %struct.variable_def, ptr %1, i64 0, i32 5, i64 %19
  %24 = getelementptr inbounds %struct.variable_def, ptr %1, i64 0, i32 5, i64 %19, i32 2
  %25 = load i64, ptr %24, align 8, !tbaa !239
  %26 = icmp eq i64 %22, %25
  br i1 %26, label %27, label %71

27:                                               ; preds = %18
  %28 = or i64 %19, %22
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %65

30:                                               ; preds = %27
  %31 = load ptr, ptr %0, align 8, !tbaa !204
  %32 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !50
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %51, label %34

34:                                               ; preds = %30
  %35 = icmp eq ptr %31, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %34
  %37 = load i64, ptr %31, align 8
  %38 = and i64 %37, 65535
  %39 = icmp eq i64 %38, 1
  br label %40

40:                                               ; preds = %36, %34
  %41 = phi i1 [ false, %34 ], [ %39, %36 ]
  %42 = or i1 %35, %41
  br i1 %42, label %51, label %43

43:                                               ; preds = %40
  %44 = load i64, ptr %31, align 8
  %45 = and i64 %44, 65535
  %46 = icmp eq i64 %45, 37
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = tail call ptr @target_for_debug_bind(ptr noundef nonnull %31) #21
  %49 = icmp ne ptr %48, null
  %50 = zext i1 %49 to i8
  br label %51

51:                                               ; preds = %30, %40, %43, %47
  %52 = phi i8 [ %50, %47 ], [ 0, %30 ], [ 1, %40 ], [ 1, %43 ]
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %65, label %54

54:                                               ; preds = %51
  %55 = load i8, ptr %5, align 4, !tbaa !207
  %56 = icmp eq i8 %55, 1
  br i1 %56, label %58, label %57

57:                                               ; preds = %54
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 4354, ptr noundef nonnull @.str.2) #21
  br label %58

58:                                               ; preds = %54, %57
  %59 = load ptr, ptr %0, align 8, !tbaa !204
  %60 = load ptr, ptr %1, align 8, !tbaa !204
  %61 = icmp eq ptr %59, %60
  br i1 %61, label %63, label %62

62:                                               ; preds = %58
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 4355, ptr noundef nonnull @.str.2) #21
  br label %63

63:                                               ; preds = %58, %62
  %64 = tail call fastcc zeroext i8 @onepart_variable_different_p(ptr noundef nonnull %0, ptr noundef nonnull %1), !range !59
  br label %71

65:                                               ; preds = %51, %27
  %66 = tail call fastcc zeroext i8 @variable_part_different_p(ptr noundef nonnull %20, ptr noundef nonnull %23), !range !59
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = tail call fastcc zeroext i8 @variable_part_different_p(ptr noundef nonnull %23, ptr noundef nonnull %20), !range !59
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %13, label %71

71:                                               ; preds = %18, %65, %68, %13, %10, %4, %2, %63
  %72 = phi i8 [ %64, %63 ], [ 0, %2 ], [ 1, %4 ], [ 0, %10 ], [ 0, %13 ], [ 1, %68 ], [ 1, %65 ], [ 1, %18 ]
  ret i8 %72
}

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef zeroext i8 @variable_part_different_p(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #9 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  %4 = icmp eq ptr %3, null
  br i1 %4, label %37, label %5

5:                                                ; preds = %2, %34
  %6 = phi ptr [ %35, %34 ], [ %3, %2 ]
  %7 = getelementptr inbounds %struct.location_chain_def, ptr %6, i64 0, i32 1
  br label %8

8:                                                ; preds = %5, %29
  %9 = phi ptr [ %10, %29 ], [ %1, %5 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !35
  %11 = icmp eq ptr %10, null
  br i1 %11, label %37, label %12

12:                                               ; preds = %8
  %13 = load ptr, ptr %7, align 8, !tbaa !240
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, 65535
  %16 = icmp eq i32 %15, 37
  br i1 %16, label %17, label %29

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.location_chain_def, ptr %10, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !240
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 65535
  %22 = icmp eq i32 %21, 37
  br i1 %22, label %23, label %29

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1
  %25 = load i32, ptr %24, align 8, !tbaa !46
  %26 = getelementptr inbounds %struct.rtx_def, ptr %19, i64 0, i32 1
  %27 = load i32, ptr %26, align 8, !tbaa !46
  %28 = icmp eq i32 %25, %27
  br i1 %28, label %34, label %29

29:                                               ; preds = %23, %17, %12
  %30 = getelementptr inbounds %struct.location_chain_def, ptr %10, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !240
  %32 = tail call i32 @rtx_equal_p(ptr noundef nonnull %13, ptr noundef %31) #21
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %8, label %34, !llvm.loop !361

34:                                               ; preds = %23, %29
  %35 = load ptr, ptr %6, align 8, !tbaa !35
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %5, !llvm.loop !362

37:                                               ; preds = %34, %8, %2
  %38 = phi i8 [ 0, %2 ], [ 1, %8 ], [ 0, %34 ]
  ret i8 %38
}

declare void @print_mem_expr(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @dump_var_slot(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #9 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  tail call fastcc void @dump_var(ptr noundef %3)
  ret i32 1
}

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @emit_notes_for_differences_1(ptr nocapture noundef readonly %0, ptr noundef %1) #9 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  %4 = load ptr, ptr %3, align 8, !tbaa !204
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %2
  %7 = load i64, ptr %4, align 8
  %8 = and i64 %7, 65535
  %9 = icmp eq i64 %8, 1
  br i1 %9, label %10, label %14

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  %13 = getelementptr inbounds %struct.cselib_val_struct, ptr %12, i64 0, i32 1
  br label %16

14:                                               ; preds = %6, %2
  %15 = getelementptr inbounds %struct.tree_decl_minimal, ptr %4, i64 0, i32 2
  br label %16

16:                                               ; preds = %10, %14
  %17 = phi ptr [ %13, %10 ], [ %15, %14 ]
  %18 = load i32, ptr %17, align 4, !tbaa !46
  %19 = tail call ptr @htab_find_with_hash(ptr noundef %1, ptr noundef %4, i32 noundef %18) #21
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %85

21:                                               ; preds = %16
  %22 = load ptr, ptr %3, align 8, !tbaa !204
  %23 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !50
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %41, label %25

25:                                               ; preds = %21
  %26 = icmp eq ptr %22, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %25
  %28 = load i64, ptr %22, align 8
  %29 = and i64 %28, 65535
  %30 = icmp eq i64 %29, 1
  br label %31

31:                                               ; preds = %27, %25
  %32 = phi i1 [ false, %25 ], [ %30, %27 ]
  %33 = or i1 %26, %32
  br i1 %33, label %41, label %34

34:                                               ; preds = %31
  %35 = load i64, ptr %22, align 8
  %36 = and i64 %35, 65535
  %37 = icmp eq i64 %36, 37
  br i1 %37, label %41, label %38

38:                                               ; preds = %34
  %39 = tail call ptr @target_for_debug_bind(ptr noundef nonnull %22) #21
  %40 = icmp eq ptr %39, null
  br label %41

41:                                               ; preds = %21, %31, %34, %38
  %42 = phi i1 [ %40, %38 ], [ true, %21 ], [ false, %31 ], [ false, %34 ]
  %43 = load ptr, ptr @valvar_pool, align 8
  %44 = load ptr, ptr @var_pool, align 8
  %45 = select i1 %42, ptr %44, ptr %43
  %46 = tail call ptr @pool_alloc(ptr noundef %45) #21
  %47 = load ptr, ptr %3, align 8, !tbaa !204
  store ptr %47, ptr %46, align 8, !tbaa !204
  %48 = getelementptr inbounds %struct.variable_def, ptr %46, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %48, i8 0, i64 7, i1 false)
  %49 = load ptr, ptr %3, align 8, !tbaa !204
  %50 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !50
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %84, label %52

52:                                               ; preds = %41
  %53 = icmp eq ptr %49, null
  br i1 %53, label %58, label %54

54:                                               ; preds = %52
  %55 = load i64, ptr %49, align 8
  %56 = and i64 %55, 65535
  %57 = icmp eq i64 %56, 1
  br label %58

58:                                               ; preds = %54, %52
  %59 = phi i1 [ false, %52 ], [ %57, %54 ]
  %60 = or i1 %53, %59
  br i1 %60, label %68, label %61

61:                                               ; preds = %58
  %62 = load i64, ptr %49, align 8
  %63 = and i64 %62, 65535
  %64 = icmp eq i64 %63, 37
  br i1 %64, label %68, label %65

65:                                               ; preds = %61
  %66 = tail call ptr @target_for_debug_bind(ptr noundef nonnull %49) #21
  %67 = icmp eq ptr %66, null
  br i1 %67, label %84, label %68

68:                                               ; preds = %58, %61, %65
  %69 = getelementptr inbounds %struct.variable_def, ptr %3, i64 0, i32 2
  %70 = load i8, ptr %69, align 4, !tbaa !207
  %71 = icmp eq i8 %70, 1
  br i1 %71, label %73, label %72

72:                                               ; preds = %68
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 7447, ptr noundef nonnull @.str.2) #21
  br label %73

73:                                               ; preds = %68, %72
  %74 = getelementptr inbounds %struct.variable_def, ptr %3, i64 0, i32 5
  %75 = load ptr, ptr %74, align 8, !tbaa !35
  %76 = icmp eq ptr %75, null
  br i1 %76, label %84, label %77

77:                                               ; preds = %73, %77
  %78 = phi ptr [ %82, %77 ], [ %75, %73 ]
  %79 = load ptr, ptr %3, align 8, !tbaa !204
  %80 = getelementptr inbounds %struct.location_chain_def, ptr %78, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !240
  tail call fastcc void @remove_value_chains(ptr noundef %79, ptr noundef %81)
  %82 = load ptr, ptr %78, align 8, !tbaa !35
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %77, !llvm.loop !363

84:                                               ; preds = %77, %73, %41, %65
  tail call fastcc void @variable_was_changed(ptr noundef nonnull %46, ptr noundef null)
  br label %220

85:                                               ; preds = %16
  %86 = tail call fastcc zeroext i8 @variable_different_p(ptr noundef nonnull %3, ptr noundef nonnull %19), !range !59
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %172, label %88

88:                                               ; preds = %85
  %89 = load ptr, ptr %3, align 8, !tbaa !204
  %90 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !50
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %171, label %92

92:                                               ; preds = %88
  %93 = icmp eq ptr %89, null
  br i1 %93, label %98, label %94

94:                                               ; preds = %92
  %95 = load i64, ptr %89, align 8
  %96 = and i64 %95, 65535
  %97 = icmp eq i64 %96, 1
  br label %98

98:                                               ; preds = %94, %92
  %99 = phi i1 [ false, %92 ], [ %97, %94 ]
  %100 = or i1 %93, %99
  br i1 %100, label %108, label %101

101:                                              ; preds = %98
  %102 = load i64, ptr %89, align 8
  %103 = and i64 %102, 65535
  %104 = icmp eq i64 %103, 37
  br i1 %104, label %108, label %105

105:                                              ; preds = %101
  %106 = tail call ptr @target_for_debug_bind(ptr noundef nonnull %89) #21
  %107 = icmp eq ptr %106, null
  br i1 %107, label %171, label %108

108:                                              ; preds = %98, %101, %105
  %109 = getelementptr inbounds %struct.variable_def, ptr %3, i64 0, i32 2
  %110 = load i8, ptr %109, align 4, !tbaa !207
  %111 = icmp eq i8 %110, 1
  br i1 %111, label %113, label %112

112:                                              ; preds = %108
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 7461, ptr noundef nonnull @.str.2) #21
  br label %113

113:                                              ; preds = %108, %112
  %114 = getelementptr inbounds %struct.variable_def, ptr %19, i64 0, i32 2
  %115 = load i8, ptr %114, align 4, !tbaa !207
  %116 = icmp eq i8 %115, 1
  br i1 %116, label %118, label %117

117:                                              ; preds = %113
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 7462, ptr noundef nonnull @.str.2) #21
  br label %118

118:                                              ; preds = %113, %117
  %119 = getelementptr inbounds %struct.variable_def, ptr %3, i64 0, i32 5
  %120 = getelementptr inbounds %struct.variable_def, ptr %19, i64 0, i32 5
  %121 = load ptr, ptr %120, align 8, !tbaa !35
  %122 = load ptr, ptr %119, align 8, !tbaa !35
  %123 = icmp ne ptr %122, null
  %124 = icmp ne ptr %121, null
  %125 = select i1 %123, i1 %124, i1 false
  br i1 %125, label %126, label %151

126:                                              ; preds = %118, %145
  %127 = phi ptr [ %147, %145 ], [ %122, %118 ]
  %128 = phi ptr [ %146, %145 ], [ %121, %118 ]
  %129 = getelementptr inbounds %struct.location_chain_def, ptr %127, i64 0, i32 1
  %130 = load ptr, ptr %129, align 8, !tbaa !240
  %131 = load i32, ptr %130, align 8
  %132 = and i32 %131, 65535
  %133 = icmp eq i32 %132, 37
  br i1 %133, label %134, label %140

134:                                              ; preds = %126
  %135 = getelementptr inbounds %struct.location_chain_def, ptr %128, i64 0, i32 1
  %136 = load ptr, ptr %135, align 8, !tbaa !240
  %137 = load i32, ptr %136, align 8
  %138 = and i32 %137, 65535
  %139 = icmp eq i32 %138, 37
  br i1 %139, label %145, label %140

140:                                              ; preds = %134, %126
  %141 = getelementptr inbounds %struct.location_chain_def, ptr %128, i64 0, i32 1
  %142 = load ptr, ptr %141, align 8, !tbaa !240
  %143 = tail call i32 @rtx_equal_p(ptr noundef nonnull %130, ptr noundef %142) #21
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %151, label %145

145:                                              ; preds = %134, %140
  %146 = load ptr, ptr %128, align 8, !tbaa !35
  %147 = load ptr, ptr %127, align 8, !tbaa !35
  %148 = icmp ne ptr %147, null
  %149 = icmp ne ptr %146, null
  %150 = select i1 %148, i1 %149, i1 false
  br i1 %150, label %126, label %151, !llvm.loop !364

151:                                              ; preds = %140, %145, %118
  %152 = phi ptr [ %121, %118 ], [ %128, %140 ], [ %146, %145 ]
  %153 = phi ptr [ %122, %118 ], [ %127, %140 ], [ %147, %145 ]
  %154 = icmp eq ptr %152, null
  br i1 %154, label %155, label %157

155:                                              ; preds = %157, %151
  %156 = icmp eq ptr %153, null
  br i1 %156, label %171, label %164

157:                                              ; preds = %151, %157
  %158 = phi ptr [ %162, %157 ], [ %152, %151 ]
  %159 = load ptr, ptr %3, align 8, !tbaa !204
  %160 = getelementptr inbounds %struct.location_chain_def, ptr %158, i64 0, i32 1
  %161 = load ptr, ptr %160, align 8, !tbaa !240
  tail call fastcc void @add_value_chains(ptr noundef %159, ptr noundef %161)
  %162 = load ptr, ptr %158, align 8, !tbaa !210
  %163 = icmp eq ptr %162, null
  br i1 %163, label %155, label %157, !llvm.loop !365

164:                                              ; preds = %155, %164
  %165 = phi ptr [ %169, %164 ], [ %153, %155 ]
  %166 = load ptr, ptr %3, align 8, !tbaa !204
  %167 = getelementptr inbounds %struct.location_chain_def, ptr %165, i64 0, i32 1
  %168 = load ptr, ptr %167, align 8, !tbaa !240
  tail call fastcc void @remove_value_chains(ptr noundef %166, ptr noundef %168)
  %169 = load ptr, ptr %165, align 8, !tbaa !210
  %170 = icmp eq ptr %169, null
  br i1 %170, label %171, label %164, !llvm.loop !366

171:                                              ; preds = %164, %155, %88, %105
  tail call fastcc void @variable_was_changed(ptr noundef nonnull %19, ptr noundef null)
  br label %172

172:                                              ; preds = %171, %85
  %173 = icmp eq ptr %3, %19
  br i1 %173, label %220, label %174

174:                                              ; preds = %172
  %175 = getelementptr inbounds %struct.variable_def, ptr %19, i64 0, i32 2
  %176 = load i8, ptr %175, align 4, !tbaa !207
  %177 = icmp sgt i8 %176, 0
  br i1 %177, label %178, label %220

178:                                              ; preds = %174
  %179 = getelementptr inbounds %struct.variable_def, ptr %3, i64 0, i32 2
  %180 = getelementptr inbounds %struct.variable_def, ptr %19, i64 0, i32 3
  %181 = getelementptr inbounds %struct.variable_def, ptr %19, i64 0, i32 3
  br label %182

182:                                              ; preds = %178, %215
  %183 = phi i64 [ 0, %178 ], [ %216, %215 ]
  %184 = phi i8 [ %176, %178 ], [ %217, %215 ]
  %185 = getelementptr inbounds %struct.variable_def, ptr %19, i64 0, i32 5, i64 %183
  %186 = getelementptr inbounds %struct.variable_def, ptr %19, i64 0, i32 5, i64 %183, i32 1
  store ptr null, ptr %186, align 8, !tbaa !253
  %187 = load i8, ptr %179, align 4, !tbaa !207
  %188 = icmp eq i8 %187, %184
  br i1 %188, label %189, label %195

189:                                              ; preds = %182
  %190 = getelementptr inbounds %struct.variable_def, ptr %3, i64 0, i32 5, i64 %183, i32 2
  %191 = load i64, ptr %190, align 8, !tbaa !239
  %192 = getelementptr inbounds %struct.variable_def, ptr %19, i64 0, i32 5, i64 %183, i32 2
  %193 = load i64, ptr %192, align 8, !tbaa !239
  %194 = icmp eq i64 %191, %193
  br i1 %194, label %196, label %195

195:                                              ; preds = %189, %182
  store i8 1, ptr %180, align 1, !tbaa !237
  br label %215

196:                                              ; preds = %189
  %197 = getelementptr inbounds %struct.variable_def, ptr %3, i64 0, i32 5, i64 %183, i32 1
  %198 = load ptr, ptr %197, align 8, !tbaa !253
  %199 = icmp eq ptr %198, null
  br i1 %199, label %215, label %200

200:                                              ; preds = %196, %208
  %201 = phi ptr [ %202, %208 ], [ %185, %196 ]
  %202 = load ptr, ptr %201, align 8, !tbaa !35
  %203 = icmp eq ptr %202, null
  br i1 %203, label %214, label %204

204:                                              ; preds = %200
  %205 = getelementptr inbounds %struct.location_chain_def, ptr %202, i64 0, i32 1
  %206 = load ptr, ptr %205, align 8, !tbaa !240
  %207 = icmp eq ptr %206, %198
  br i1 %207, label %211, label %208

208:                                              ; preds = %204
  %209 = tail call i32 @rtx_equal_p(ptr noundef nonnull %198, ptr noundef %206) #21
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %200, label %211, !llvm.loop !367

211:                                              ; preds = %208, %204
  %212 = getelementptr inbounds %struct.location_chain_def, ptr %202, i64 0, i32 1
  %213 = load ptr, ptr %212, align 8, !tbaa !240
  store ptr %213, ptr %186, align 8, !tbaa !253
  br label %215

214:                                              ; preds = %200
  store i8 1, ptr %181, align 1, !tbaa !237
  br label %215

215:                                              ; preds = %211, %214, %195, %196
  %216 = add nuw nsw i64 %183, 1
  %217 = load i8, ptr %175, align 4, !tbaa !207
  %218 = sext i8 %217 to i64
  %219 = icmp slt i64 %216, %218
  br i1 %219, label %182, label %220, !llvm.loop !368

220:                                              ; preds = %215, %174, %172, %84
  ret i32 1
}

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @emit_notes_for_differences_2(ptr nocapture noundef readonly %0, ptr noundef %1) #9 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  %4 = load ptr, ptr %3, align 8, !tbaa !204
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %2
  %7 = load i64, ptr %4, align 8
  %8 = and i64 %7, 65535
  %9 = icmp eq i64 %8, 1
  br i1 %9, label %10, label %14

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.rtx_def, ptr %4, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  %13 = getelementptr inbounds %struct.cselib_val_struct, ptr %12, i64 0, i32 1
  br label %16

14:                                               ; preds = %6, %2
  %15 = getelementptr inbounds %struct.tree_decl_minimal, ptr %4, i64 0, i32 2
  br label %16

16:                                               ; preds = %10, %14
  %17 = phi ptr [ %13, %10 ], [ %15, %14 ]
  %18 = load i32, ptr %17, align 4, !tbaa !46
  %19 = tail call ptr @htab_find_with_hash(ptr noundef %1, ptr noundef %4, i32 noundef %18) #21
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %69

21:                                               ; preds = %16
  %22 = load ptr, ptr %3, align 8, !tbaa !204
  %23 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !50
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %57, label %25

25:                                               ; preds = %21
  %26 = icmp eq ptr %22, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %25
  %28 = load i64, ptr %22, align 8
  %29 = and i64 %28, 65535
  %30 = icmp eq i64 %29, 1
  br label %31

31:                                               ; preds = %27, %25
  %32 = phi i1 [ false, %25 ], [ %30, %27 ]
  %33 = or i1 %26, %32
  br i1 %33, label %41, label %34

34:                                               ; preds = %31
  %35 = load i64, ptr %22, align 8
  %36 = and i64 %35, 65535
  %37 = icmp eq i64 %36, 37
  br i1 %37, label %41, label %38

38:                                               ; preds = %34
  %39 = tail call ptr @target_for_debug_bind(ptr noundef nonnull %22) #21
  %40 = icmp eq ptr %39, null
  br i1 %40, label %57, label %41

41:                                               ; preds = %31, %34, %38
  %42 = getelementptr inbounds %struct.variable_def, ptr %3, i64 0, i32 2
  %43 = load i8, ptr %42, align 4, !tbaa !207
  %44 = icmp eq i8 %43, 1
  br i1 %44, label %46, label %45

45:                                               ; preds = %41
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 7532, ptr noundef nonnull @.str.2) #21
  br label %46

46:                                               ; preds = %41, %45
  %47 = getelementptr inbounds %struct.variable_def, ptr %3, i64 0, i32 5
  %48 = load ptr, ptr %47, align 8, !tbaa !35
  %49 = icmp eq ptr %48, null
  br i1 %49, label %57, label %50

50:                                               ; preds = %46, %50
  %51 = phi ptr [ %55, %50 ], [ %48, %46 ]
  %52 = load ptr, ptr %3, align 8, !tbaa !204
  %53 = getelementptr inbounds %struct.location_chain_def, ptr %51, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !240
  tail call fastcc void @add_value_chains(ptr noundef %52, ptr noundef %54)
  %55 = load ptr, ptr %51, align 8, !tbaa !35
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %50, !llvm.loop !369

57:                                               ; preds = %50, %46, %21, %38
  %58 = getelementptr inbounds %struct.variable_def, ptr %3, i64 0, i32 2
  %59 = load i8, ptr %58, align 4, !tbaa !207
  %60 = icmp sgt i8 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %57
  %62 = zext nneg i8 %59 to i64
  br label %63

63:                                               ; preds = %61, %63
  %64 = phi i64 [ 0, %61 ], [ %66, %63 ]
  %65 = getelementptr inbounds %struct.variable_def, ptr %3, i64 0, i32 5, i64 %64, i32 1
  store ptr null, ptr %65, align 8, !tbaa !253
  %66 = add nuw nsw i64 %64, 1
  %67 = icmp eq i64 %66, %62
  br i1 %67, label %68, label %63, !llvm.loop !370

68:                                               ; preds = %63, %57
  tail call fastcc void @variable_was_changed(ptr noundef nonnull %3, ptr noundef null)
  br label %69

69:                                               ; preds = %68, %16
  ret i32 1
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @emit_notes_for_changes(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #9 !prof !34 {
  %4 = alloca %struct.emit_note_data_def, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #21
  %5 = getelementptr inbounds %struct.shared_hash_def, ptr %2, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !83
  %7 = load ptr, ptr @changed_variables, align 8, !tbaa !35
  %8 = tail call i64 @htab_elements(ptr noundef %7) #21
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %74, label %10

10:                                               ; preds = %3
  %11 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !50
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %70, label %13

13:                                               ; preds = %10
  %14 = load ptr, ptr @changed_variables, align 8, !tbaa !35
  tail call void @htab_traverse(ptr noundef %14, ptr noundef nonnull @check_changed_vars_1, ptr noundef %6) #21
  br label %15

15:                                               ; preds = %42, %13
  %16 = load ptr, ptr @changed_variables_stack, align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %15
  %19 = load i32, ptr %16, align 8, !tbaa !371
  br label %20

20:                                               ; preds = %15, %18
  %21 = phi i32 [ %19, %18 ], [ 0, %15 ]
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load ptr, ptr @changed_values_stack, align 8
  %25 = icmp eq ptr %24, null
  br label %44

26:                                               ; preds = %20
  %27 = load i32, ptr %16, align 8, !tbaa !371
  %28 = add i32 %27, -1
  store i32 %28, ptr %16, align 8, !tbaa !371
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.VEC_variable_base, ptr %16, i64 0, i32 2, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !35
  tail call fastcc void @variable_was_changed(ptr noundef %31, ptr noundef null)
  %32 = load ptr, ptr %31, align 8, !tbaa !204
  %33 = icmp eq ptr %32, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %26
  %35 = load i64, ptr %32, align 8
  %36 = and i64 %35, 65535
  %37 = icmp eq i64 %36, 1
  br i1 %37, label %43, label %38

38:                                               ; preds = %34, %26
  %39 = load i64, ptr %32, align 8
  %40 = and i64 %39, 65535
  %41 = icmp eq i64 %40, 37
  br i1 %41, label %43, label %42

42:                                               ; preds = %38, %43
  br label %15, !llvm.loop !373

43:                                               ; preds = %38, %34
  tail call fastcc void @check_changed_vars_0(ptr noundef %32, ptr noundef %6)
  br label %42

44:                                               ; preds = %64, %23
  br i1 %25, label %47, label %45

45:                                               ; preds = %44
  %46 = load i32, ptr %24, align 8, !tbaa !68
  br label %47

47:                                               ; preds = %44, %45
  %48 = phi i32 [ %46, %45 ], [ 0, %44 ]
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %68, label %50

50:                                               ; preds = %47
  %51 = load i32, ptr %24, align 8, !tbaa !68
  %52 = add i32 %51, -1
  store i32 %52, ptr %24, align 8, !tbaa !68
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.VEC_rtx_base, ptr %24, i64 0, i32 2, i64 %53
  %55 = load ptr, ptr %54, align 8, !tbaa !35
  %56 = icmp eq ptr %55, null
  br i1 %56, label %65, label %57

57:                                               ; preds = %50
  %58 = load i64, ptr %55, align 8
  %59 = and i64 %58, 65535
  %60 = icmp eq i64 %59, 1
  br i1 %60, label %61, label %65

61:                                               ; preds = %57
  %62 = load i32, ptr %55, align 8
  %63 = and i32 %62, -1073741825
  store i32 %63, ptr %55, align 8
  br label %64

64:                                               ; preds = %61, %65
  br label %44, !llvm.loop !374

65:                                               ; preds = %50, %57
  %66 = load i64, ptr %55, align 8
  %67 = and i64 %66, -1099511627777
  store i64 %67, ptr %55, align 8
  br label %64

68:                                               ; preds = %47
  %69 = load ptr, ptr @changed_variables, align 8, !tbaa !35
  tail call void @htab_traverse(ptr noundef %69, ptr noundef nonnull @check_changed_vars_3, ptr noundef %6) #21
  br label %70

70:                                               ; preds = %68, %10
  store ptr %0, ptr %4, align 8, !tbaa !375
  %71 = getelementptr inbounds %struct.emit_note_data_def, ptr %4, i64 0, i32 1
  store i32 %1, ptr %71, align 8, !tbaa !377
  %72 = getelementptr inbounds %struct.emit_note_data_def, ptr %4, i64 0, i32 2
  store ptr %6, ptr %72, align 8, !tbaa !378
  %73 = load ptr, ptr @changed_variables, align 8, !tbaa !35
  call void @htab_traverse(ptr noundef %73, ptr noundef nonnull @emit_note_insn_var_location, ptr noundef nonnull %4) #21
  br label %74

74:                                               ; preds = %3, %70
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #21
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @check_changed_vars_1(ptr nocapture noundef readonly %0, ptr noundef %1) #9 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  %4 = load ptr, ptr %3, align 8, !tbaa !204
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = load i64, ptr %4, align 8
  %8 = and i64 %7, 65535
  %9 = icmp eq i64 %8, 1
  br i1 %9, label %14, label %10

10:                                               ; preds = %2, %6
  %11 = load i64, ptr %4, align 8
  %12 = and i64 %11, 65535
  %13 = icmp eq i64 %12, 37
  br i1 %13, label %14, label %15

14:                                               ; preds = %10, %6
  tail call fastcc void @check_changed_vars_0(ptr noundef %4, ptr noundef %1)
  br label %15

15:                                               ; preds = %14, %10
  ret i32 1
}

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @check_changed_vars_3(ptr nocapture noundef readonly %0, ptr noundef %1) #9 !prof !34 {
  %3 = alloca i8, align 1
  %4 = load ptr, ptr %0, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #21
  %5 = load ptr, ptr %4, align 8, !tbaa !204
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = load i64, ptr %5, align 8
  %9 = and i64 %8, 65535
  %10 = icmp eq i64 %9, 1
  br i1 %10, label %77, label %11

11:                                               ; preds = %2, %7
  %12 = load i64, ptr %5, align 8
  %13 = and i64 %12, 65535
  %14 = icmp eq i64 %13, 37
  br i1 %14, label %77, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.variable_def, ptr %4, i64 0, i32 2
  %17 = load i8, ptr %16, align 4, !tbaa !207
  %18 = icmp sgt i8 %17, 0
  br i1 %18, label %19, label %72

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.variable_def, ptr %4, i64 0, i32 3
  br label %21

21:                                               ; preds = %19, %67
  %22 = phi i64 [ 0, %19 ], [ %68, %67 ]
  %23 = getelementptr inbounds %struct.variable_def, ptr %4, i64 0, i32 5, i64 %22
  %24 = getelementptr inbounds %struct.variable_def, ptr %4, i64 0, i32 5, i64 %22, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !253
  %26 = icmp eq ptr %25, null
  br i1 %26, label %35, label %27

27:                                               ; preds = %21
  %28 = call fastcc zeroext i8 @vt_expand_loc_dummy(ptr noundef nonnull %25, ptr noundef %1, ptr noundef nonnull %3)
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %27
  %31 = load i8, ptr %3, align 1, !tbaa !46
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %67, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.variable_def, ptr %4, i64 0, i32 3
  store i8 1, ptr %34, align 1, !tbaa !237
  br label %67

35:                                               ; preds = %27, %21
  %36 = load ptr, ptr %23, align 8, !tbaa !35
  %37 = icmp eq ptr %36, null
  br i1 %37, label %51, label %38

38:                                               ; preds = %35, %48
  %39 = phi i1 [ %50, %48 ], [ %37, %35 ]
  %40 = phi ptr [ %49, %48 ], [ %36, %35 ]
  %41 = getelementptr inbounds %struct.location_chain_def, ptr %40, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !240
  %43 = load ptr, ptr %24, align 8, !tbaa !253
  %44 = icmp eq ptr %42, %43
  br i1 %44, label %48, label %45

45:                                               ; preds = %38
  %46 = call fastcc zeroext i8 @vt_expand_loc_dummy(ptr noundef %42, ptr noundef %1, ptr noundef nonnull %3)
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %38, %45
  %49 = load ptr, ptr %40, align 8, !tbaa !35
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %38, !llvm.loop !379

51:                                               ; preds = %48, %35
  %52 = phi ptr [ %36, %35 ], [ %49, %48 ]
  %53 = phi i1 [ %37, %35 ], [ %50, %48 ]
  %54 = load ptr, ptr %24, align 8, !tbaa !253
  %55 = icmp eq ptr %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %45, %51
  %57 = phi ptr [ %52, %51 ], [ %40, %45 ]
  %58 = phi i1 [ %53, %51 ], [ %39, %45 ]
  store i8 1, ptr %20, align 1, !tbaa !237
  br label %59

59:                                               ; preds = %56, %51
  %60 = phi ptr [ %57, %56 ], [ %52, %51 ]
  %61 = phi i1 [ %58, %56 ], [ %53, %51 ]
  br i1 %61, label %65, label %62

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.location_chain_def, ptr %60, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !240
  br label %65

65:                                               ; preds = %59, %62
  %66 = phi ptr [ %64, %62 ], [ null, %59 ]
  store ptr %66, ptr %24, align 8, !tbaa !253
  br label %67

67:                                               ; preds = %30, %33, %65
  %68 = add nuw nsw i64 %22, 1
  %69 = load i8, ptr %16, align 4, !tbaa !207
  %70 = sext i8 %69 to i64
  %71 = icmp slt i64 %68, %70
  br i1 %71, label %21, label %72, !llvm.loop !380

72:                                               ; preds = %67, %15
  %73 = phi i8 [ %17, %15 ], [ %69, %67 ]
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %72
  %76 = getelementptr inbounds %struct.variable_def, ptr %4, i64 0, i32 3
  store i8 1, ptr %76, align 1, !tbaa !237
  br label %77

77:                                               ; preds = %72, %75, %7, %11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #21
  ret i32 1
}

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @emit_note_insn_var_location(ptr noundef %0, ptr nocapture noundef readonly %1) #9 !prof !34 {
  %3 = alloca [16 x i64], align 16
  %4 = alloca [16 x ptr], align 16
  %5 = alloca i8, align 1
  %6 = load ptr, ptr %0, align 8, !tbaa !35
  %7 = load ptr, ptr %1, align 8, !tbaa !375
  %8 = getelementptr inbounds %struct.emit_note_data_def, ptr %1, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !377
  %10 = getelementptr inbounds %struct.emit_note_data_def, ptr %1, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !378
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %3) #21
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #21
  %12 = load ptr, ptr %6, align 8, !tbaa !204
  %13 = icmp eq ptr %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %2
  %15 = load i64, ptr %12, align 8
  %16 = and i64 %15, 65535
  %17 = icmp eq i64 %16, 1
  %18 = zext i1 %17 to i8
  br label %19

19:                                               ; preds = %2, %14
  %20 = phi i8 [ 0, %2 ], [ %18, %14 ]
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %421

22:                                               ; preds = %19
  %23 = load i64, ptr %12, align 8
  %24 = and i64 %23, 65535
  %25 = icmp eq i64 %24, 37
  br i1 %25, label %421, label %26

26:                                               ; preds = %22
  %27 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !50
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %55

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.variable_def, ptr %6, i64 0, i32 2
  %31 = load i8, ptr %30, align 4, !tbaa !207
  %32 = icmp sgt i8 %31, 0
  br i1 %32, label %33, label %51

33:                                               ; preds = %29
  %34 = zext nneg i8 %31 to i64
  %35 = getelementptr inbounds %struct.variable_def, ptr %6, i64 0, i32 3
  br label %36

36:                                               ; preds = %33, %48
  %37 = phi i64 [ 0, %33 ], [ %49, %48 ]
  %38 = getelementptr inbounds %struct.variable_def, ptr %6, i64 0, i32 5, i64 %37, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !253
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %48

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.variable_def, ptr %6, i64 0, i32 5, i64 %37
  %43 = load ptr, ptr %42, align 8, !tbaa !208
  %44 = icmp eq ptr %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.location_chain_def, ptr %43, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !240
  store ptr %47, ptr %38, align 8, !tbaa !253
  store i8 1, ptr %35, align 1, !tbaa !237
  br label %48

48:                                               ; preds = %36, %41, %45
  %49 = add nuw nsw i64 %37, 1
  %50 = icmp eq i64 %49, %34
  br i1 %50, label %51, label %36, !llvm.loop !381

51:                                               ; preds = %48, %29
  %52 = icmp eq i8 %31, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %51
  %54 = getelementptr inbounds %struct.variable_def, ptr %6, i64 0, i32 3
  store i8 1, ptr %54, align 1, !tbaa !237
  br label %55

55:                                               ; preds = %51, %53, %26
  %56 = getelementptr inbounds %struct.variable_def, ptr %6, i64 0, i32 3
  %57 = load i8, ptr %56, align 1, !tbaa !237
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %400, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.variable_def, ptr %6, i64 0, i32 2
  %61 = load i8, ptr %60, align 4, !tbaa !207
  %62 = icmp sgt i8 %61, 0
  br i1 %62, label %68, label %337

63:                                               ; preds = %329
  %64 = add nsw i32 %334, 1
  %65 = load i8, ptr %60, align 4, !tbaa !207
  %66 = sext i8 %65 to i32
  %67 = icmp slt i32 %64, %66
  br i1 %67, label %68, label %335, !llvm.loop !382

68:                                               ; preds = %59, %63
  %69 = phi i32 [ %64, %63 ], [ 0, %59 ]
  %70 = phi i64 [ %333, %63 ], [ 0, %59 ]
  %71 = phi i32 [ %332, %63 ], [ 1, %59 ]
  %72 = phi i8 [ %331, %63 ], [ 1, %59 ]
  %73 = phi i32 [ %330, %63 ], [ 0, %59 ]
  %74 = sext i32 %69 to i64
  %75 = getelementptr inbounds %struct.variable_def, ptr %6, i64 0, i32 5, i64 %74
  %76 = getelementptr inbounds %struct.variable_def, ptr %6, i64 0, i32 5, i64 %74, i32 2
  %77 = load i64, ptr %76, align 8, !tbaa !239
  %78 = icmp slt i64 %70, %77
  br i1 %78, label %329, label %79

79:                                               ; preds = %68
  %80 = icmp sgt i64 %70, %77
  br i1 %80, label %329, label %81

81:                                               ; preds = %79
  %82 = sext i32 %73 to i64
  %83 = getelementptr inbounds [16 x i64], ptr %3, i64 0, i64 %82
  store i64 %77, ptr %83, align 8, !tbaa !125
  %84 = getelementptr inbounds %struct.variable_def, ptr %6, i64 0, i32 5, i64 %74, i32 1
  %85 = load ptr, ptr %84, align 8, !tbaa !253
  %86 = icmp eq ptr %85, null
  br i1 %86, label %329, label %87

87:                                               ; preds = %81
  %88 = tail call fastcc ptr @vt_expand_loc(ptr noundef nonnull %85, ptr noundef %11)
  %89 = icmp eq ptr %88, null
  br i1 %89, label %329, label %90

90:                                               ; preds = %87
  %91 = getelementptr inbounds [16 x ptr], ptr %4, i64 0, i64 %82
  store ptr %88, ptr %91, align 8, !tbaa !35
  %92 = load ptr, ptr %84, align 8, !tbaa !253
  %93 = load i32, ptr %92, align 8
  %94 = lshr i32 %93, 16
  %95 = and i32 %94, 255
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %126

97:                                               ; preds = %90
  %98 = load ptr, ptr %6, align 8, !tbaa !204
  %99 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !50
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %118, label %101

101:                                              ; preds = %97
  %102 = icmp eq ptr %98, null
  br i1 %102, label %107, label %103

103:                                              ; preds = %101
  %104 = load i64, ptr %98, align 8
  %105 = and i64 %104, 65535
  %106 = icmp eq i64 %105, 1
  br label %107

107:                                              ; preds = %103, %101
  %108 = phi i1 [ false, %101 ], [ %106, %103 ]
  %109 = or i1 %102, %108
  br i1 %109, label %118, label %110

110:                                              ; preds = %107
  %111 = load i64, ptr %98, align 8
  %112 = and i64 %111, 65535
  %113 = icmp eq i64 %112, 37
  br i1 %113, label %118, label %114

114:                                              ; preds = %110
  %115 = tail call ptr @target_for_debug_bind(ptr noundef nonnull %98) #21
  %116 = icmp ne ptr %115, null
  %117 = zext i1 %116 to i8
  br label %118

118:                                              ; preds = %97, %107, %110, %114
  %119 = phi i8 [ %117, %114 ], [ 0, %97 ], [ 1, %107 ], [ 1, %110 ]
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %126, label %121

121:                                              ; preds = %118
  %122 = getelementptr inbounds %struct.tree_decl_common, ptr %12, i64 0, i32 2
  %123 = load i64, ptr %122, align 8
  %124 = trunc i64 %123 to i32
  %125 = and i32 %124, 255
  br label %126

126:                                              ; preds = %121, %118, %90
  %127 = phi i32 [ %125, %121 ], [ 0, %118 ], [ %95, %90 ]
  br label %128

128:                                              ; preds = %132, %126
  %129 = phi ptr [ %75, %126 ], [ %130, %132 ]
  %130 = load ptr, ptr %129, align 8, !tbaa !35
  %131 = icmp eq ptr %130, null
  br i1 %131, label %140, label %132

132:                                              ; preds = %128
  %133 = load ptr, ptr %84, align 8, !tbaa !253
  %134 = getelementptr inbounds %struct.location_chain_def, ptr %130, i64 0, i32 1
  %135 = load ptr, ptr %134, align 8, !tbaa !240
  %136 = icmp eq ptr %133, %135
  br i1 %136, label %137, label %128, !llvm.loop !383

137:                                              ; preds = %132
  %138 = getelementptr inbounds %struct.location_chain_def, ptr %130, i64 0, i32 3
  %139 = load i32, ptr %138, align 8, !tbaa !248
  br label %140

140:                                              ; preds = %128, %137
  %141 = phi i32 [ %139, %137 ], [ %71, %128 ]
  br i1 %131, label %142, label %143

142:                                              ; preds = %140
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 7106, ptr noundef nonnull @.str.2) #21
  br label %143

143:                                              ; preds = %140, %142
  %144 = zext nneg i32 %127 to i64
  %145 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %144
  %146 = load i8, ptr %145, align 1, !tbaa !46
  %147 = zext i8 %146 to i64
  %148 = add nsw i64 %77, %147
  %149 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %144
  %150 = load i8, ptr %149, align 1, !tbaa !46
  %151 = zext i8 %150 to i32
  %152 = load i8, ptr %60, align 4, !tbaa !207
  %153 = sext i8 %152 to i32
  %154 = sext i8 %152 to i64
  %155 = add i32 %69, 1
  %156 = tail call i32 @llvm.smax.i32(i32 %155, i32 %153)
  br label %157

157:                                              ; preds = %161, %143
  %158 = phi i64 [ %159, %161 ], [ %74, %143 ]
  %159 = add nsw i64 %158, 1
  %160 = icmp slt i64 %159, %154
  br i1 %160, label %161, label %167

161:                                              ; preds = %157
  %162 = getelementptr inbounds %struct.variable_def, ptr %6, i64 0, i32 5, i64 %159, i32 2
  %163 = load i64, ptr %162, align 8, !tbaa !239
  %164 = icmp sgt i64 %148, %163
  br i1 %164, label %157, label %165, !llvm.loop !384

165:                                              ; preds = %161
  %166 = trunc i64 %159 to i32
  br label %167

167:                                              ; preds = %157, %165
  %168 = phi i32 [ %166, %165 ], [ %156, %157 ]
  %169 = icmp ne i8 %150, 0
  %170 = select i1 %160, i1 %169, i1 false
  br i1 %170, label %171, label %325

171:                                              ; preds = %167
  %172 = sext i32 %168 to i64
  %173 = getelementptr inbounds %struct.variable_def, ptr %6, i64 0, i32 5, i64 %172, i32 1
  %174 = load ptr, ptr %173, align 8, !tbaa !253
  %175 = icmp eq ptr %174, null
  br i1 %175, label %325, label %176

176:                                              ; preds = %171
  %177 = load i32, ptr %174, align 8
  %178 = lshr i32 %177, 16
  %179 = and i32 %178, 255
  %180 = icmp eq i32 %127, %179
  br i1 %180, label %181, label %325

181:                                              ; preds = %176
  %182 = load ptr, ptr %91, align 8, !tbaa !35
  %183 = load i32, ptr %182, align 8
  %184 = trunc i32 %183 to i16
  switch i16 %184, label %325 [
    i16 37, label %185
    i16 43, label %185
  ]

185:                                              ; preds = %181, %181
  %186 = getelementptr inbounds %struct.variable_def, ptr %6, i64 0, i32 5, i64 %172, i32 2
  %187 = load i64, ptr %186, align 8, !tbaa !239
  %188 = icmp eq i64 %148, %187
  br i1 %188, label %189, label %325

189:                                              ; preds = %185
  %190 = tail call fastcc ptr @vt_expand_loc(ptr noundef nonnull %174, ptr noundef %11)
  %191 = icmp eq ptr %190, null
  br i1 %191, label %325, label %192

192:                                              ; preds = %189
  %193 = load ptr, ptr %91, align 8, !tbaa !35
  %194 = load i32, ptr %193, align 8
  %195 = and i32 %194, 65535
  %196 = load i32, ptr %190, align 8
  %197 = and i32 %196, 65535
  %198 = icmp eq i32 %195, %197
  br i1 %198, label %199, label %325

199:                                              ; preds = %192
  %200 = trunc i32 %194 to i16
  switch i16 %200, label %316 [
    i16 37, label %201
    i16 43, label %239
  ]

201:                                              ; preds = %199
  %202 = getelementptr inbounds %struct.rtx_def, ptr %193, i64 0, i32 1
  %203 = load i32, ptr %202, align 8, !tbaa !46
  %204 = zext i32 %203 to i64
  %205 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %204, i64 %144
  %206 = load i8, ptr %205, align 1, !tbaa !46
  %207 = zext i8 %206 to i32
  %208 = shl nuw nsw i32 %207, 1
  %209 = zext i8 %150 to i64
  %210 = getelementptr inbounds [53 x [87 x i8]], ptr @hard_regno_nregs, i64 0, i64 %204, i64 %209
  %211 = load i8, ptr %210, align 1, !tbaa !46
  %212 = zext i8 %211 to i32
  %213 = icmp eq i32 %208, %212
  br i1 %213, label %214, label %237

214:                                              ; preds = %201
  %215 = add i32 %203, %207
  %216 = getelementptr inbounds %struct.rtx_def, ptr %190, i64 0, i32 1
  %217 = load i32, ptr %216, align 8, !tbaa !46
  %218 = icmp eq i32 %215, %217
  br i1 %218, label %219, label %237

219:                                              ; preds = %214
  %220 = tail call ptr @simplify_subreg(i32 noundef %151, ptr noundef nonnull %193, i32 noundef %127, i32 noundef 0) #21
  %221 = icmp eq ptr %220, null
  br i1 %221, label %316, label %222

222:                                              ; preds = %219
  %223 = load i32, ptr %220, align 8
  %224 = and i32 %223, 65535
  %225 = icmp eq i32 %224, 37
  br i1 %225, label %226, label %316

226:                                              ; preds = %222
  %227 = getelementptr inbounds %struct.rtx_def, ptr %220, i64 0, i32 1
  %228 = load i32, ptr %227, align 8, !tbaa !46
  %229 = load ptr, ptr %91, align 8, !tbaa !35
  %230 = getelementptr inbounds %struct.rtx_def, ptr %229, i64 0, i32 1
  %231 = load i32, ptr %230, align 8, !tbaa !46
  %232 = icmp eq i32 %228, %231
  br i1 %232, label %233, label %316

233:                                              ; preds = %226
  %234 = getelementptr inbounds %struct.rtx_def, ptr %229, i64 0, i32 1, i32 0, i32 0, i64 2
  %235 = load ptr, ptr %234, align 8, !tbaa !46
  %236 = getelementptr inbounds %struct.rtx_def, ptr %220, i64 0, i32 1, i32 0, i32 0, i64 2
  store ptr %235, ptr %236, align 8, !tbaa !46
  br label %316

237:                                              ; preds = %214, %201
  %238 = icmp eq i32 %195, 43
  br i1 %238, label %239, label %316

239:                                              ; preds = %199, %237
  %240 = getelementptr inbounds %struct.rtx_def, ptr %190, i64 0, i32 1
  %241 = load ptr, ptr %240, align 8, !tbaa !46
  %242 = load i32, ptr %241, align 8
  %243 = and i32 %242, 65535
  %244 = icmp eq i32 %243, 49
  br i1 %244, label %245, label %316

245:                                              ; preds = %239
  %246 = getelementptr inbounds %struct.rtx_def, ptr %241, i64 0, i32 1
  %247 = load ptr, ptr %246, align 8, !tbaa !46
  %248 = load i32, ptr %247, align 8
  %249 = and i32 %248, 65535
  %250 = icmp eq i32 %249, 37
  br i1 %250, label %251, label %316

251:                                              ; preds = %245
  %252 = getelementptr inbounds %struct.rtx_def, ptr %241, i64 0, i32 1, i32 0, i32 0, i64 1
  %253 = load ptr, ptr %252, align 8, !tbaa !46
  %254 = load i32, ptr %253, align 8
  %255 = and i32 %254, 65535
  %256 = icmp eq i32 %255, 30
  br i1 %256, label %257, label %316

257:                                              ; preds = %251
  %258 = getelementptr inbounds %struct.rtx_def, ptr %193, i64 0, i32 1
  %259 = load ptr, ptr %258, align 8, !tbaa !46
  %260 = load i32, ptr %259, align 8
  %261 = and i32 %260, 65535
  %262 = icmp eq i32 %261, 37
  br i1 %262, label %263, label %275

263:                                              ; preds = %257
  %264 = tail call i32 @rtx_equal_p(ptr noundef nonnull %259, ptr noundef nonnull %247) #21
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %275, label %266

266:                                              ; preds = %263
  %267 = load ptr, ptr %240, align 8, !tbaa !46
  %268 = getelementptr inbounds %struct.rtx_def, ptr %267, i64 0, i32 1, i32 0, i32 0, i64 1
  %269 = load ptr, ptr %268, align 8, !tbaa !46
  %270 = getelementptr inbounds %struct.rtx_def, ptr %269, i64 0, i32 1
  %271 = load i64, ptr %270, align 8, !tbaa !46
  %272 = load i8, ptr %145, align 1, !tbaa !46
  %273 = zext i8 %272 to i64
  %274 = icmp eq i64 %271, %273
  br i1 %274, label %313, label %275

275:                                              ; preds = %266, %263, %257
  %276 = load ptr, ptr %91, align 8, !tbaa !35
  %277 = getelementptr inbounds %struct.rtx_def, ptr %276, i64 0, i32 1
  %278 = load ptr, ptr %277, align 8, !tbaa !46
  %279 = load i32, ptr %278, align 8
  %280 = and i32 %279, 65535
  %281 = icmp eq i32 %280, 49
  br i1 %281, label %282, label %316

282:                                              ; preds = %275
  %283 = getelementptr inbounds %struct.rtx_def, ptr %278, i64 0, i32 1, i32 0, i32 0, i64 1
  %284 = load ptr, ptr %283, align 8, !tbaa !46
  %285 = load i32, ptr %284, align 8
  %286 = and i32 %285, 65535
  %287 = icmp eq i32 %286, 30
  br i1 %287, label %288, label %316

288:                                              ; preds = %282
  %289 = getelementptr inbounds %struct.rtx_def, ptr %278, i64 0, i32 1
  %290 = load ptr, ptr %289, align 8, !tbaa !46
  %291 = load ptr, ptr %240, align 8, !tbaa !46
  %292 = getelementptr inbounds %struct.rtx_def, ptr %291, i64 0, i32 1
  %293 = load ptr, ptr %292, align 8, !tbaa !46
  %294 = tail call i32 @rtx_equal_p(ptr noundef %290, ptr noundef %293) #21
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %316, label %296

296:                                              ; preds = %288
  %297 = load ptr, ptr %91, align 8, !tbaa !35
  %298 = getelementptr inbounds %struct.rtx_def, ptr %297, i64 0, i32 1
  %299 = load ptr, ptr %298, align 8, !tbaa !46
  %300 = getelementptr inbounds %struct.rtx_def, ptr %299, i64 0, i32 1, i32 0, i32 0, i64 1
  %301 = load ptr, ptr %300, align 8, !tbaa !46
  %302 = getelementptr inbounds %struct.rtx_def, ptr %301, i64 0, i32 1
  %303 = load i64, ptr %302, align 8, !tbaa !46
  %304 = load i8, ptr %145, align 1, !tbaa !46
  %305 = zext i8 %304 to i64
  %306 = add nsw i64 %303, %305
  %307 = load ptr, ptr %240, align 8, !tbaa !46
  %308 = getelementptr inbounds %struct.rtx_def, ptr %307, i64 0, i32 1, i32 0, i32 0, i64 1
  %309 = load ptr, ptr %308, align 8, !tbaa !46
  %310 = getelementptr inbounds %struct.rtx_def, ptr %309, i64 0, i32 1
  %311 = load i64, ptr %310, align 8, !tbaa !46
  %312 = icmp eq i64 %306, %311
  br i1 %312, label %313, label %316

313:                                              ; preds = %296, %266
  %314 = load ptr, ptr %91, align 8, !tbaa !35
  %315 = tail call ptr @adjust_address_1(ptr noundef %314, i32 noundef %151, i64 noundef 0, i32 noundef 0, i32 noundef 1) #21
  br label %316

316:                                              ; preds = %296, %199, %222, %226, %237, %239, %245, %251, %313, %288, %282, %275, %219, %233
  %317 = phi ptr [ %220, %233 ], [ null, %219 ], [ %315, %313 ], [ null, %288 ], [ null, %282 ], [ null, %275 ], [ null, %251 ], [ null, %245 ], [ null, %239 ], [ null, %237 ], [ null, %226 ], [ null, %222 ], [ null, %199 ], [ null, %296 ]
  %318 = icmp eq ptr %317, null
  br i1 %318, label %325, label %319

319:                                              ; preds = %316
  store ptr %317, ptr %91, align 8, !tbaa !35
  %320 = zext i8 %150 to i64
  %321 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %320
  %322 = load i8, ptr %321, align 1, !tbaa !46
  %323 = zext i8 %322 to i64
  %324 = add nsw i64 %77, %323
  br label %325

325:                                              ; preds = %185, %316, %319, %181, %192, %189, %176, %171, %167
  %326 = phi i64 [ %148, %192 ], [ %148, %189 ], [ %148, %176 ], [ %148, %171 ], [ %148, %167 ], [ %148, %181 ], [ %324, %319 ], [ %148, %316 ], [ %148, %185 ]
  %327 = phi i32 [ %69, %192 ], [ %69, %189 ], [ %69, %176 ], [ %69, %171 ], [ %69, %167 ], [ %69, %181 ], [ %168, %319 ], [ %69, %316 ], [ %69, %185 ]
  %328 = add nsw i32 %73, 1
  br label %329

329:                                              ; preds = %87, %81, %79, %68, %325
  %330 = phi i32 [ %328, %325 ], [ %73, %68 ], [ %73, %79 ], [ %73, %81 ], [ %73, %87 ]
  %331 = phi i8 [ %72, %325 ], [ 0, %68 ], [ %72, %79 ], [ 0, %81 ], [ 0, %87 ]
  %332 = phi i32 [ %141, %325 ], [ %71, %68 ], [ %71, %79 ], [ %71, %81 ], [ %71, %87 ]
  %333 = phi i64 [ %326, %325 ], [ %70, %68 ], [ %70, %79 ], [ %70, %81 ], [ %70, %87 ]
  %334 = phi i32 [ %327, %325 ], [ %69, %68 ], [ %69, %79 ], [ %69, %81 ], [ %69, %87 ]
  br i1 %78, label %335, label %63

335:                                              ; preds = %329, %63
  %336 = icmp eq i8 %331, 0
  br label %337

337:                                              ; preds = %335, %59
  %338 = phi i32 [ 0, %59 ], [ %330, %335 ]
  %339 = phi i1 [ false, %59 ], [ %336, %335 ]
  %340 = phi i32 [ 1, %59 ], [ %332, %335 ]
  %341 = phi i64 [ 0, %59 ], [ %333, %335 ]
  %342 = getelementptr inbounds %struct.tree_common, ptr %12, i64 0, i32 2
  %343 = load ptr, ptr %342, align 8, !tbaa !46
  %344 = getelementptr inbounds %struct.tree_type, ptr %343, i64 0, i32 3
  %345 = load ptr, ptr %344, align 8, !tbaa !46
  %346 = getelementptr inbounds %struct.tree_int_cst, ptr %345, i64 0, i32 1
  %347 = load i64, ptr %346, align 8, !tbaa !46
  %348 = icmp ult i64 %341, %347
  %349 = load i32, ptr @flag_var_tracking_uninit, align 4, !tbaa !50
  %350 = icmp eq i32 %349, 0
  %351 = select i1 %350, i32 2, i32 %340
  %352 = select i1 %348, i1 true, i1 %339
  br i1 %352, label %383, label %353

353:                                              ; preds = %337
  switch i32 %338, label %354 [
    i32 1, label %358
    i32 0, label %386
  ]

354:                                              ; preds = %353
  %355 = icmp sgt i32 %338, 0
  br i1 %355, label %356, label %380

356:                                              ; preds = %354
  %357 = zext nneg i32 %338 to i64
  br label %370

358:                                              ; preds = %353
  %359 = load i64, ptr %3, align 16, !tbaa !125
  %360 = icmp eq i64 %359, 0
  br i1 %360, label %361, label %366

361:                                              ; preds = %358
  %362 = load ptr, ptr %4, align 16, !tbaa !35
  %363 = load i32, ptr %362, align 8
  %364 = and i32 %363, 65535
  %365 = icmp eq i32 %364, 15
  br i1 %365, label %366, label %383

366:                                              ; preds = %361, %358
  %367 = load ptr, ptr %4, align 16, !tbaa !35
  %368 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %359) #21
  %369 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 3, i32 noundef 0, ptr noundef %367, ptr noundef %368) #21
  br label %383

370:                                              ; preds = %356, %370
  %371 = phi i64 [ 0, %356 ], [ %378, %370 ]
  %372 = getelementptr inbounds [16 x ptr], ptr %4, i64 0, i64 %371
  %373 = load ptr, ptr %372, align 8, !tbaa !35
  %374 = getelementptr inbounds [16 x i64], ptr %3, i64 0, i64 %371
  %375 = load i64, ptr %374, align 8, !tbaa !125
  %376 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %375) #21
  %377 = tail call ptr @gen_rtx_fmt_ee_stat(i32 noundef 3, i32 noundef 0, ptr noundef %373, ptr noundef %376) #21
  store ptr %377, ptr %372, align 8, !tbaa !35
  %378 = add nuw nsw i64 %371, 1
  %379 = icmp eq i64 %378, %357
  br i1 %379, label %380, label %370, !llvm.loop !385

380:                                              ; preds = %370, %354
  %381 = call ptr @gen_rtvec_v(i32 noundef %338, ptr noundef nonnull %4) #21
  %382 = call ptr @gen_rtx_fmt_E_stat(i32 noundef 15, i32 noundef 0, ptr noundef %381) #21
  br label %383

383:                                              ; preds = %366, %361, %337, %380
  %384 = phi ptr [ %382, %380 ], [ null, %337 ], [ %369, %366 ], [ %362, %361 ]
  %385 = call ptr @gen_rtx_fmt_tei_stat(i32 noundef 138, i32 noundef 0, ptr noundef nonnull %12, ptr noundef %384, i32 noundef %351) #21
  br label %386

386:                                              ; preds = %383, %353
  %387 = phi ptr [ null, %353 ], [ %385, %383 ]
  %388 = icmp eq i32 %9, 0
  br i1 %388, label %395, label %389

389:                                              ; preds = %386
  %390 = call ptr @emit_note_after(i32 noundef 9, ptr noundef %7) #21
  %391 = icmp eq i32 %9, 2
  br i1 %391, label %392, label %397

392:                                              ; preds = %389
  %393 = load i32, ptr %390, align 8
  %394 = or i32 %393, 33554432
  store i32 %394, ptr %390, align 8
  br label %397

395:                                              ; preds = %386
  %396 = call ptr @emit_note_before(i32 noundef 9, ptr noundef %7) #21
  br label %397

397:                                              ; preds = %389, %392, %395
  %398 = phi ptr [ %390, %392 ], [ %390, %389 ], [ %396, %395 ]
  %399 = getelementptr inbounds %struct.rtx_def, ptr %398, i64 0, i32 1, i32 0, i32 2
  store ptr %387, ptr %399, align 8, !tbaa !46
  br label %400

400:                                              ; preds = %469, %433, %437, %55, %397
  %401 = load ptr, ptr %6, align 8, !tbaa !204
  %402 = icmp eq ptr %401, null
  br i1 %402, label %410, label %403

403:                                              ; preds = %400
  %404 = load i64, ptr %401, align 8
  %405 = and i64 %404, 65535
  %406 = icmp eq i64 %405, 1
  br i1 %406, label %407, label %410

407:                                              ; preds = %403
  %408 = load i32, ptr %401, align 8
  %409 = and i32 %408, -1073741825
  store i32 %409, ptr %401, align 8
  br label %413

410:                                              ; preds = %400, %403
  %411 = load i64, ptr %401, align 8
  %412 = and i64 %411, -1099511627777
  store i64 %412, ptr %401, align 8
  br label %413

413:                                              ; preds = %407, %410
  %414 = getelementptr inbounds %struct.variable_def, ptr %6, i64 0, i32 3
  store i8 0, ptr %414, align 1, !tbaa !237
  %415 = getelementptr inbounds %struct.variable_def, ptr %6, i64 0, i32 4
  %416 = load i8, ptr %415, align 2, !tbaa !238
  %417 = icmp eq i8 %416, 0
  br i1 %417, label %418, label %419

418:                                              ; preds = %413
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 7243, ptr noundef nonnull @.str.2) #21
  br label %419

419:                                              ; preds = %413, %418
  store i8 0, ptr %415, align 2, !tbaa !238
  %420 = load ptr, ptr @changed_variables, align 8, !tbaa !35
  call void @htab_clear_slot(ptr noundef %420, ptr noundef nonnull %0) #21
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %3) #21
  ret i32 1

421:                                              ; preds = %22, %19
  br i1 %13, label %429, label %422

422:                                              ; preds = %421
  %423 = load i64, ptr %12, align 8
  %424 = and i64 %423, 65535
  %425 = icmp eq i64 %424, 1
  br i1 %425, label %426, label %429

426:                                              ; preds = %422
  %427 = load i32, ptr %12, align 8
  %428 = lshr i32 %427, 30
  br label %433

429:                                              ; preds = %421, %422
  %430 = load i64, ptr %12, align 8
  %431 = lshr i64 %430, 40
  %432 = trunc i64 %431 to i32
  br label %433

433:                                              ; preds = %426, %429
  %434 = phi i32 [ %428, %426 ], [ %432, %429 ]
  %435 = and i32 %434, 1
  %436 = icmp eq i32 %435, 0
  br i1 %436, label %400, label %437

437:                                              ; preds = %433
  %438 = getelementptr inbounds %struct.variable_def, ptr %6, i64 0, i32 2
  %439 = load i8, ptr %438, align 4, !tbaa !207
  %440 = icmp eq i8 %439, 0
  br i1 %440, label %400, label %441

441:                                              ; preds = %437
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #21
  %442 = getelementptr inbounds %struct.variable_def, ptr %6, i64 0, i32 5
  %443 = getelementptr inbounds %struct.variable_def, ptr %6, i64 0, i32 5, i64 0, i32 1
  %444 = load ptr, ptr %443, align 8, !tbaa !253
  %445 = icmp eq ptr %444, null
  br i1 %445, label %449, label %446

446:                                              ; preds = %441
  %447 = call fastcc zeroext i8 @vt_expand_loc_dummy(ptr noundef nonnull %444, ptr noundef %11, ptr noundef nonnull %5)
  %448 = icmp eq i8 %447, 0
  br i1 %448, label %449, label %469

449:                                              ; preds = %446, %441
  %450 = load ptr, ptr %442, align 8, !tbaa !35
  %451 = icmp eq ptr %450, null
  br i1 %451, label %467, label %452

452:                                              ; preds = %449, %461
  %453 = phi ptr [ %462, %461 ], [ %450, %449 ]
  %454 = getelementptr inbounds %struct.location_chain_def, ptr %453, i64 0, i32 1
  %455 = load ptr, ptr %454, align 8, !tbaa !240
  %456 = load ptr, ptr %443, align 8, !tbaa !253
  %457 = icmp eq ptr %455, %456
  br i1 %457, label %461, label %458

458:                                              ; preds = %452
  %459 = call fastcc zeroext i8 @vt_expand_loc_dummy(ptr noundef %455, ptr noundef %11, ptr noundef nonnull %5)
  %460 = icmp eq i8 %459, 0
  br i1 %460, label %461, label %464

461:                                              ; preds = %452, %458
  %462 = load ptr, ptr %453, align 8, !tbaa !35
  %463 = icmp eq ptr %462, null
  br i1 %463, label %467, label %452, !llvm.loop !386

464:                                              ; preds = %458
  %465 = getelementptr inbounds %struct.location_chain_def, ptr %453, i64 0, i32 1
  %466 = load ptr, ptr %465, align 8, !tbaa !240
  br label %467

467:                                              ; preds = %461, %449, %464
  %468 = phi ptr [ %466, %464 ], [ null, %449 ], [ null, %461 ]
  store ptr %468, ptr %443, align 8, !tbaa !253
  br label %469

469:                                              ; preds = %446, %467
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #21
  br label %400
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @check_changed_vars_0(ptr noundef %0, ptr noundef %1) unnamed_addr #9 !prof !34 {
  %3 = load ptr, ptr @value_chains, align 8, !tbaa !35
  %4 = icmp eq ptr %0, null
  br i1 %4, label %13, label %5

5:                                                ; preds = %2
  %6 = load i64, ptr %0, align 8
  %7 = and i64 %6, 65535
  %8 = icmp eq i64 %7, 1
  br i1 %8, label %9, label %13

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !46
  %12 = getelementptr inbounds %struct.cselib_val_struct, ptr %11, i64 0, i32 1
  br label %15

13:                                               ; preds = %5, %2
  %14 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 2
  br label %15

15:                                               ; preds = %9, %13
  %16 = phi ptr [ %12, %9 ], [ %14, %13 ]
  %17 = load i32, ptr %16, align 4, !tbaa !46
  %18 = tail call ptr @htab_find_with_hash(ptr noundef %3, ptr noundef %0, i32 noundef %17) #21
  %19 = icmp eq ptr %18, null
  br i1 %19, label %129, label %20

20:                                               ; preds = %15
  %21 = load ptr, ptr %18, align 8, !tbaa !258
  %22 = icmp eq ptr %21, null
  br i1 %22, label %129, label %23

23:                                               ; preds = %20, %126
  %24 = phi ptr [ %127, %126 ], [ %21, %20 ]
  %25 = getelementptr inbounds %struct.value_chain_def, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !214
  %27 = icmp eq ptr %26, null
  br i1 %27, label %35, label %28

28:                                               ; preds = %23
  %29 = load i64, ptr %26, align 8
  %30 = and i64 %29, 65535
  %31 = icmp eq i64 %30, 1
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load i32, ptr %26, align 8
  %34 = lshr i32 %33, 30
  br label %39

35:                                               ; preds = %23, %28
  %36 = load i64, ptr %26, align 8
  %37 = lshr i64 %36, 40
  %38 = trunc i64 %37 to i32
  br label %39

39:                                               ; preds = %32, %35
  %40 = phi i32 [ %34, %32 ], [ %38, %35 ]
  %41 = and i32 %40, 1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %126

43:                                               ; preds = %39
  br i1 %27, label %52, label %44

44:                                               ; preds = %43
  %45 = load i64, ptr %26, align 8
  %46 = and i64 %45, 65535
  %47 = icmp eq i64 %46, 1
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.rtx_def, ptr %26, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !46
  %51 = getelementptr inbounds %struct.cselib_val_struct, ptr %50, i64 0, i32 1
  br label %54

52:                                               ; preds = %44, %43
  %53 = getelementptr inbounds %struct.tree_decl_minimal, ptr %26, i64 0, i32 2
  br label %54

54:                                               ; preds = %48, %52
  %55 = phi ptr [ %51, %48 ], [ %53, %52 ]
  %56 = load i32, ptr %55, align 4, !tbaa !46
  %57 = tail call ptr @htab_find_with_hash(ptr noundef %1, ptr noundef %26, i32 noundef %56) #21
  %58 = icmp eq ptr %57, null
  %59 = load ptr, ptr %25, align 8, !tbaa !214
  %60 = icmp eq ptr %59, null
  br i1 %58, label %88, label %61

61:                                               ; preds = %54
  br i1 %60, label %69, label %62

62:                                               ; preds = %61
  %63 = load i64, ptr %59, align 8
  %64 = and i64 %63, 65535
  %65 = icmp eq i64 %64, 1
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load i32, ptr %59, align 8
  %68 = or i32 %67, 1073741824
  store i32 %68, ptr %59, align 8
  br label %72

69:                                               ; preds = %61, %62
  %70 = load i64, ptr %59, align 8
  %71 = or i64 %70, 1099511627776
  store i64 %71, ptr %59, align 8
  br label %72

72:                                               ; preds = %66, %69
  %73 = load ptr, ptr @changed_variables_stack, align 8, !tbaa !35
  %74 = icmp eq ptr %73, null
  br i1 %74, label %80, label %75

75:                                               ; preds = %72
  %76 = getelementptr inbounds %struct.VEC_variable_base, ptr %73, i64 0, i32 1
  %77 = load i32, ptr %76, align 4, !tbaa !387
  %78 = load i32, ptr %73, align 8, !tbaa !371
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %72, %75
  %81 = tail call ptr @vec_heap_p_reserve(ptr noundef %73, i32 noundef 1) #21
  store ptr %81, ptr @changed_variables_stack, align 8, !tbaa !35
  br label %82

82:                                               ; preds = %75, %80
  %83 = load ptr, ptr @changed_variables_stack, align 8, !tbaa !35
  %84 = load i32, ptr %83, align 8, !tbaa !371
  %85 = add i32 %84, 1
  store i32 %85, ptr %83, align 8, !tbaa !371
  %86 = zext i32 %84 to i64
  %87 = getelementptr inbounds %struct.VEC_variable_base, ptr %83, i64 0, i32 2, i64 %86
  store ptr %57, ptr %87, align 8, !tbaa !35
  br label %126

88:                                               ; preds = %54
  br i1 %60, label %94, label %89

89:                                               ; preds = %88
  %90 = load i64, ptr %59, align 8
  %91 = and i64 %90, 65535
  %92 = icmp eq i64 %91, 1
  %93 = zext i1 %92 to i8
  br label %94

94:                                               ; preds = %88, %89
  %95 = phi i8 [ 0, %88 ], [ %93, %89 ]
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %126, label %97

97:                                               ; preds = %94
  br i1 %60, label %105, label %98

98:                                               ; preds = %97
  %99 = load i64, ptr %59, align 8
  %100 = and i64 %99, 65535
  %101 = icmp eq i64 %100, 1
  br i1 %101, label %102, label %105

102:                                              ; preds = %98
  %103 = load i32, ptr %59, align 8
  %104 = or i32 %103, 1073741824
  store i32 %104, ptr %59, align 8
  br label %108

105:                                              ; preds = %97, %98
  %106 = load i64, ptr %59, align 8
  %107 = or i64 %106, 1099511627776
  store i64 %107, ptr %59, align 8
  br label %108

108:                                              ; preds = %102, %105
  %109 = load ptr, ptr %25, align 8, !tbaa !214
  %110 = load ptr, ptr @changed_values_stack, align 8, !tbaa !35
  %111 = icmp eq ptr %110, null
  br i1 %111, label %117, label %112

112:                                              ; preds = %108
  %113 = getelementptr inbounds %struct.VEC_rtx_base, ptr %110, i64 0, i32 1
  %114 = load i32, ptr %113, align 4, !tbaa !235
  %115 = load i32, ptr %110, align 8, !tbaa !68
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %119

117:                                              ; preds = %108, %112
  %118 = tail call ptr @vec_heap_p_reserve(ptr noundef %110, i32 noundef 1) #21
  store ptr %118, ptr @changed_values_stack, align 8, !tbaa !35
  br label %119

119:                                              ; preds = %112, %117
  %120 = load ptr, ptr @changed_values_stack, align 8, !tbaa !35
  %121 = load i32, ptr %120, align 8, !tbaa !68
  %122 = add i32 %121, 1
  store i32 %122, ptr %120, align 8, !tbaa !68
  %123 = zext i32 %121 to i64
  %124 = getelementptr inbounds %struct.VEC_rtx_base, ptr %120, i64 0, i32 2, i64 %123
  store ptr %109, ptr %124, align 8, !tbaa !35
  %125 = load ptr, ptr %25, align 8, !tbaa !214
  tail call fastcc void @check_changed_vars_0(ptr noundef %125, ptr noundef %1)
  br label %126

126:                                              ; preds = %82, %119, %94, %39
  %127 = load ptr, ptr %24, align 8, !tbaa !258
  %128 = icmp eq ptr %127, null
  br i1 %128, label %129, label %23, !llvm.loop !388

129:                                              ; preds = %126, %20, %15
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc zeroext i8 @vt_expand_loc_dummy(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #9 !prof !34 {
  %4 = alloca %struct.expand_loc_callback_data, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #21
  %5 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !50
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 7009, ptr noundef nonnull @.str.2) #21
  br label %8

8:                                                ; preds = %3, %7
  store ptr %1, ptr %4, align 8, !tbaa !389
  %9 = getelementptr inbounds %struct.expand_loc_callback_data, ptr %4, i64 0, i32 1
  store i8 1, ptr %9, align 8, !tbaa !391
  %10 = getelementptr inbounds %struct.expand_loc_callback_data, ptr %4, i64 0, i32 2
  store i8 0, ptr %10, align 1, !tbaa !392
  %11 = load ptr, ptr @scratch_regs, align 8, !tbaa !35
  %12 = call zeroext i8 @cselib_dummy_expand_value_rtx_cb(ptr noundef %0, ptr noundef %11, i32 noundef 5, ptr noundef nonnull @vt_expand_loc_callback, ptr noundef nonnull %4) #21
  %13 = load i8, ptr %10, align 1, !tbaa !392
  store i8 %13, ptr %2, align 1, !tbaa !46
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #21
  ret i8 %12
}

declare zeroext i8 @cselib_dummy_expand_value_rtx_cb(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal ptr @vt_expand_loc_callback(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #9 !prof !34 {
  %5 = getelementptr inbounds %struct.expand_loc_callback_data, ptr %3, i64 0, i32 1
  %6 = load i8, ptr %5, align 8, !tbaa !391
  %7 = getelementptr inbounds %struct.expand_loc_callback_data, ptr %3, i64 0, i32 2
  %8 = load i8, ptr %7, align 1, !tbaa !392
  %9 = load i32, ptr %0, align 8
  %10 = trunc i32 %9 to i16
  switch i16 %10, label %215 [
    i16 39, label %11
    i16 2, label %42
    i16 1, label %45
  ]

11:                                               ; preds = %4
  %12 = icmp eq i8 %6, 0
  %13 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !46
  %15 = add nsw i32 %2, -1
  br i1 %12, label %21, label %16

16:                                               ; preds = %11
  %17 = tail call zeroext i8 @cselib_dummy_expand_value_rtx_cb(ptr noundef %14, ptr noundef %1, i32 noundef %15, ptr noundef nonnull @vt_expand_loc_callback, ptr noundef %3) #21
  %18 = icmp eq i8 %17, 0
  %19 = load ptr, ptr @global_rtl, align 16
  %20 = select i1 %18, ptr null, ptr %19
  br label %215

21:                                               ; preds = %11
  %22 = tail call ptr @cselib_expand_value_rtx_cb(ptr noundef %14, ptr noundef %1, i32 noundef %15, ptr noundef nonnull @vt_expand_loc_callback, ptr noundef %3) #21
  %23 = icmp eq ptr %22, null
  br i1 %23, label %215, label %24

24:                                               ; preds = %21
  %25 = load i32, ptr %0, align 8
  %26 = lshr i32 %25, 16
  %27 = and i32 %26, 255
  %28 = load ptr, ptr %13, align 8, !tbaa !46
  %29 = load i32, ptr %28, align 8
  %30 = lshr i32 %29, 16
  %31 = and i32 %30, 255
  %32 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %33 = load i32, ptr %32, align 8, !tbaa !46
  %34 = tail call ptr @simplify_gen_subreg(i32 noundef %27, ptr noundef nonnull %22, i32 noundef %31, i32 noundef %33) #21
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %215

36:                                               ; preds = %24
  %37 = load i32, ptr %0, align 8
  %38 = lshr i32 %37, 16
  %39 = and i32 %38, 255
  %40 = load i32, ptr %32, align 8, !tbaa !46
  %41 = tail call ptr @gen_rtx_fmt_ei_stat(i32 noundef 39, i32 noundef %39, ptr noundef nonnull %22, i32 noundef %40) #21
  br label %215

42:                                               ; preds = %4
  %43 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !46
  br label %45

45:                                               ; preds = %4, %42
  %46 = phi ptr [ %44, %42 ], [ %0, %4 ]
  %47 = phi ptr [ null, %42 ], [ %0, %4 ]
  %48 = and i32 %9, 536870912
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %215

50:                                               ; preds = %45
  %51 = load ptr, ptr %3, align 8, !tbaa !389
  %52 = icmp eq ptr %46, null
  br i1 %52, label %61, label %53

53:                                               ; preds = %50
  %54 = load i64, ptr %46, align 8
  %55 = and i64 %54, 65535
  %56 = icmp eq i64 %55, 1
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.rtx_def, ptr %46, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !46
  %60 = getelementptr inbounds %struct.cselib_val_struct, ptr %59, i64 0, i32 1
  br label %63

61:                                               ; preds = %53, %50
  %62 = getelementptr inbounds %struct.tree_decl_minimal, ptr %46, i64 0, i32 2
  br label %63

63:                                               ; preds = %57, %61
  %64 = phi ptr [ %60, %57 ], [ %62, %61 ]
  %65 = load i32, ptr %64, align 4, !tbaa !46
  %66 = tail call ptr @htab_find_with_hash(ptr noundef %51, ptr noundef %46, i32 noundef %65) #21
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %87

68:                                               ; preds = %63
  %69 = icmp eq i8 %6, 0
  br i1 %69, label %215, label %70

70:                                               ; preds = %68
  br i1 %52, label %78, label %71

71:                                               ; preds = %70
  %72 = load i64, ptr %46, align 8
  %73 = and i64 %72, 65535
  %74 = icmp eq i64 %73, 1
  br i1 %74, label %75, label %78

75:                                               ; preds = %71
  %76 = load i32, ptr %46, align 8
  %77 = lshr i32 %76, 30
  br label %82

78:                                               ; preds = %70, %71
  %79 = load i64, ptr %46, align 8
  %80 = lshr i64 %79, 40
  %81 = trunc i64 %80 to i32
  br label %82

82:                                               ; preds = %75, %78
  %83 = phi i32 [ %77, %75 ], [ %81, %78 ]
  %84 = and i32 %83, 1
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %215, label %86

86:                                               ; preds = %82
  store i8 1, ptr %7, align 1, !tbaa !392
  br label %215

87:                                               ; preds = %63
  %88 = getelementptr inbounds %struct.variable_def, ptr %66, i64 0, i32 2
  %89 = load i8, ptr %88, align 4, !tbaa !207
  switch i8 %89, label %93 [
    i8 0, label %90
    i8 1, label %94
  ]

90:                                               ; preds = %87
  %91 = icmp eq i8 %6, 0
  br i1 %91, label %215, label %92

92:                                               ; preds = %90
  store i8 1, ptr %7, align 1, !tbaa !392
  br label %215

93:                                               ; preds = %87
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 6914, ptr noundef nonnull @.str.2) #21
  br label %94

94:                                               ; preds = %87, %93
  %95 = load i32, ptr %0, align 8
  %96 = or i32 %95, 536870912
  store i32 %96, ptr %0, align 8
  %97 = getelementptr inbounds %struct.variable_def, ptr %66, i64 0, i32 5
  %98 = getelementptr inbounds %struct.variable_def, ptr %66, i64 0, i32 5, i64 0, i32 1
  %99 = load ptr, ptr %98, align 8, !tbaa !253
  %100 = icmp eq ptr %99, null
  br i1 %100, label %124, label %101

101:                                              ; preds = %94
  %102 = icmp eq i8 %6, 0
  br i1 %102, label %108, label %103

103:                                              ; preds = %101
  %104 = tail call zeroext i8 @cselib_dummy_expand_value_rtx_cb(ptr noundef nonnull %99, ptr noundef %1, i32 noundef %2, ptr noundef nonnull @vt_expand_loc_callback, ptr noundef nonnull %3) #21
  %105 = icmp eq i8 %104, 0
  %106 = load ptr, ptr @global_rtl, align 16
  %107 = select i1 %105, ptr null, ptr %106
  br label %110

108:                                              ; preds = %101
  %109 = tail call ptr @cselib_expand_value_rtx_cb(ptr noundef nonnull %99, ptr noundef %1, i32 noundef %2, ptr noundef nonnull @vt_expand_loc_callback, ptr noundef nonnull %3) #21
  br label %110

110:                                              ; preds = %103, %108
  %111 = phi ptr [ %109, %108 ], [ %107, %103 ]
  %112 = icmp eq ptr %111, null
  br i1 %112, label %124, label %113

113:                                              ; preds = %110
  br i1 %52, label %121, label %114

114:                                              ; preds = %113
  %115 = load i64, ptr %46, align 8
  %116 = and i64 %115, 65535
  %117 = icmp eq i64 %116, 1
  br i1 %117, label %118, label %121

118:                                              ; preds = %114
  %119 = load i32, ptr %46, align 8
  %120 = and i32 %119, -1073741825
  store i32 %120, ptr %46, align 8
  br label %124

121:                                              ; preds = %113, %114
  %122 = load i64, ptr %46, align 8
  %123 = and i64 %122, -1099511627777
  store i64 %123, ptr %46, align 8
  br label %124

124:                                              ; preds = %121, %118, %110, %94
  %125 = phi ptr [ null, %110 ], [ null, %94 ], [ %111, %118 ], [ %111, %121 ]
  %126 = icmp eq ptr %125, null
  br i1 %126, label %127, label %196

127:                                              ; preds = %124
  br i1 %52, label %135, label %128

128:                                              ; preds = %127
  %129 = load i64, ptr %46, align 8
  %130 = and i64 %129, 65535
  %131 = icmp eq i64 %130, 1
  br i1 %131, label %132, label %135

132:                                              ; preds = %128
  %133 = load i32, ptr %46, align 8
  %134 = lshr i32 %133, 30
  br label %139

135:                                              ; preds = %127, %128
  %136 = load i64, ptr %46, align 8
  %137 = lshr i64 %136, 40
  %138 = trunc i64 %137 to i32
  br label %139

139:                                              ; preds = %132, %135
  %140 = phi i32 [ %134, %132 ], [ %138, %135 ]
  %141 = and i32 %140, 1
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %196, label %143

143:                                              ; preds = %139
  br i1 %52, label %151, label %144

144:                                              ; preds = %143
  %145 = load i64, ptr %46, align 8
  %146 = and i64 %145, 65535
  %147 = icmp eq i64 %146, 1
  br i1 %147, label %148, label %151

148:                                              ; preds = %144
  %149 = load i32, ptr %46, align 8
  %150 = and i32 %149, -1073741825
  store i32 %150, ptr %46, align 8
  br label %154

151:                                              ; preds = %143, %144
  %152 = load i64, ptr %46, align 8
  %153 = and i64 %152, -1099511627777
  store i64 %153, ptr %46, align 8
  br label %154

154:                                              ; preds = %148, %151
  %155 = load ptr, ptr %97, align 8, !tbaa !35
  %156 = icmp eq ptr %155, null
  br i1 %156, label %178, label %157

157:                                              ; preds = %154
  %158 = icmp eq i8 %6, 0
  br label %159

159:                                              ; preds = %157, %175
  %160 = phi i1 [ %156, %157 ], [ %177, %175 ]
  %161 = phi ptr [ %155, %157 ], [ %176, %175 ]
  %162 = getelementptr inbounds %struct.location_chain_def, ptr %161, i64 0, i32 1
  %163 = load ptr, ptr %162, align 8, !tbaa !240
  %164 = load ptr, ptr %98, align 8, !tbaa !253
  %165 = icmp eq ptr %163, %164
  br i1 %165, label %175, label %166

166:                                              ; preds = %159
  br i1 %158, label %172, label %167

167:                                              ; preds = %166
  store i8 %8, ptr %7, align 1, !tbaa !392
  %168 = tail call zeroext i8 @cselib_dummy_expand_value_rtx_cb(ptr noundef %163, ptr noundef %1, i32 noundef %2, ptr noundef nonnull @vt_expand_loc_callback, ptr noundef nonnull %3) #21
  %169 = icmp eq i8 %168, 0
  br i1 %169, label %175, label %170

170:                                              ; preds = %167
  %171 = load ptr, ptr @global_rtl, align 16, !tbaa !35
  br label %178

172:                                              ; preds = %166
  %173 = tail call ptr @cselib_expand_value_rtx_cb(ptr noundef %163, ptr noundef %1, i32 noundef %2, ptr noundef nonnull @vt_expand_loc_callback, ptr noundef nonnull %3) #21
  %174 = icmp eq ptr %173, null
  br i1 %174, label %175, label %178

175:                                              ; preds = %172, %167, %159
  %176 = load ptr, ptr %161, align 8, !tbaa !35
  %177 = icmp eq ptr %176, null
  br i1 %177, label %178, label %159, !llvm.loop !393

178:                                              ; preds = %175, %172, %154, %170
  %179 = phi ptr [ %161, %170 ], [ %155, %154 ], [ %161, %172 ], [ %176, %175 ]
  %180 = phi i1 [ %160, %170 ], [ %156, %154 ], [ %160, %172 ], [ %177, %175 ]
  %181 = phi ptr [ %171, %170 ], [ null, %154 ], [ %173, %172 ], [ null, %175 ]
  %182 = icmp eq i8 %6, 0
  br i1 %182, label %190, label %183

183:                                              ; preds = %178
  %184 = icmp eq ptr %181, null
  br i1 %184, label %185, label %188

185:                                              ; preds = %183
  %186 = load ptr, ptr %98, align 8, !tbaa !253
  %187 = icmp eq ptr %186, null
  br i1 %187, label %190, label %188

188:                                              ; preds = %185, %183
  %189 = getelementptr inbounds %struct.variable_def, ptr %66, i64 0, i32 3
  store i8 1, ptr %189, align 1, !tbaa !237
  br label %190

190:                                              ; preds = %188, %185, %178
  br i1 %180, label %194, label %191

191:                                              ; preds = %190
  %192 = getelementptr inbounds %struct.location_chain_def, ptr %179, i64 0, i32 1
  %193 = load ptr, ptr %192, align 8, !tbaa !240
  br label %194

194:                                              ; preds = %190, %191
  %195 = phi ptr [ %193, %191 ], [ null, %190 ]
  store ptr %195, ptr %98, align 8, !tbaa !253
  br label %196

196:                                              ; preds = %194, %139, %124
  %197 = phi ptr [ %125, %124 ], [ %181, %194 ], [ null, %139 ]
  %198 = icmp eq i8 %6, 0
  br i1 %198, label %210, label %199

199:                                              ; preds = %196
  %200 = getelementptr inbounds %struct.variable_def, ptr %66, i64 0, i32 3
  %201 = load i8, ptr %200, align 1, !tbaa !237
  %202 = icmp eq i8 %201, 0
  br i1 %202, label %203, label %208

203:                                              ; preds = %199
  %204 = icmp eq ptr %197, null
  br i1 %204, label %205, label %210

205:                                              ; preds = %203
  %206 = load ptr, ptr %98, align 8, !tbaa !253
  %207 = icmp eq ptr %206, null
  br i1 %207, label %208, label %210

208:                                              ; preds = %205, %199
  %209 = phi i8 [ 1, %199 ], [ %8, %205 ]
  store i8 %209, ptr %7, align 1, !tbaa !392
  br label %210

210:                                              ; preds = %208, %205, %203, %196
  %211 = load i32, ptr %0, align 8
  %212 = and i32 %211, -536870913
  store i32 %212, ptr %0, align 8
  %213 = icmp eq ptr %197, null
  %214 = select i1 %213, ptr %47, ptr %197
  br label %215

215:                                              ; preds = %16, %210, %90, %92, %68, %82, %86, %45, %4, %24, %36, %21
  %216 = phi ptr [ null, %21 ], [ %34, %24 ], [ %41, %36 ], [ %0, %4 ], [ null, %45 ], [ %47, %86 ], [ %47, %82 ], [ %47, %68 ], [ %47, %92 ], [ %47, %90 ], [ %214, %210 ], [ %20, %16 ]
  ret ptr %216
}

declare ptr @cselib_expand_value_rtx_cb(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @vt_expand_loc(ptr noundef %0, ptr noundef %1) unnamed_addr #9 !prof !34 {
  %3 = alloca %struct.expand_loc_callback_data, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #21
  %4 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !50
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %2
  store ptr %1, ptr %3, align 8, !tbaa !389
  %7 = getelementptr inbounds %struct.expand_loc_callback_data, ptr %3, i64 0, i32 1
  store i8 0, ptr %7, align 8, !tbaa !391
  %8 = getelementptr inbounds %struct.expand_loc_callback_data, ptr %3, i64 0, i32 2
  store i8 0, ptr %8, align 1, !tbaa !392
  %9 = load ptr, ptr @scratch_regs, align 8, !tbaa !35
  %10 = call ptr @cselib_expand_value_rtx_cb(ptr noundef %0, ptr noundef %9, i32 noundef 5, ptr noundef nonnull @vt_expand_loc_callback, ptr noundef nonnull %3) #21
  %11 = icmp eq ptr %10, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %6
  %13 = load i32, ptr %10, align 8
  %14 = and i32 %13, 65535
  %15 = icmp eq i32 %14, 43
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 40), align 8, !tbaa !282
  %18 = call ptr %17(ptr noundef nonnull %10) #21
  br label %19

19:                                               ; preds = %6, %12, %16, %2
  %20 = phi ptr [ %0, %2 ], [ %18, %16 ], [ %10, %12 ], [ null, %6 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #21
  ret ptr %20
}

declare ptr @simplify_subreg(i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @gen_rtx_fmt_tei_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @gen_rtvec_v(i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @emit_note_after(i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @emit_note_before(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #20

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { nofree nounwind }
attributes #20 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 25970300442}
!8 = !{!"MaxCount", i64 499227316}
!9 = !{!"MaxInternalCount", i64 499227316}
!10 = !{!"MaxFunctionCount", i64 269079181}
!11 = !{!"NumCounts", i64 219814}
!12 = !{!"NumFunctions", i64 12846}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 499227316, i32 1}
!18 = !{i32 100000, i64 183919233, i32 10}
!19 = !{i32 200000, i64 63966136, i32 32}
!20 = !{i32 300000, i64 31763078, i32 90}
!21 = !{i32 400000, i64 20117281, i32 196}
!22 = !{i32 500000, i64 11046006, i32 375}
!23 = !{i32 600000, i64 6386181, i32 684}
!24 = !{i32 700000, i64 3816210, i32 1202}
!25 = !{i32 800000, i64 1875647, i32 2153}
!26 = !{i32 900000, i64 635998, i32 4611}
!27 = !{i32 950000, i64 320174, i32 7413}
!28 = !{i32 990000, i64 82126, i32 13176}
!29 = !{i32 999000, i64 12347, i32 18728}
!30 = !{i32 999900, i64 1133, i32 23724}
!31 = !{i32 999990, i64 83, i32 29864}
!32 = !{i32 999999, i64 20, i32 34832}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!40, !36, i64 8}
!40 = !{!"_IO_FILE", !41, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !41, i64 112, !41, i64 116, !42, i64 120, !43, i64 128, !37, i64 130, !37, i64 131, !36, i64 136, !42, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !42, i64 184, !41, i64 192, !37, i64 196}
!41 = !{!"int", !37, i64 0}
!42 = !{!"long", !37, i64 0}
!43 = !{!"short", !37, i64 0}
!44 = !{!40, !36, i64 16}
!45 = !{!"branch_weights", i32 2000, i32 1}
!46 = !{!37, !37, i64 0}
!47 = !{!40, !36, i64 40}
!48 = !{!40, !36, i64 48}
!49 = !{!40, !41, i64 0}
!50 = !{!41, !41, i64 0}
!51 = distinct !{!51, !52, !53}
!52 = !{!"llvm.loop.mustprogress"}
!53 = !{!"llvm.loop.unroll.disable"}
!54 = !{!55, !36, i64 8}
!55 = !{!"function", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !41, i64 104, !41, i64 108, !41, i64 112, !41, i64 116, !41, i64 120, !41, i64 124, !36, i64 128, !41, i64 136, !41, i64 137, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 138, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139, !41, i64 139}
!56 = !{!57, !41, i64 24}
!57 = !{!"control_flow_graph", !36, i64 0, !36, i64 8, !36, i64 16, !41, i64 24, !41, i64 28, !41, i64 32, !36, i64 40, !41, i64 48, !37, i64 52, !37, i64 60, !41, i64 68, !41, i64 72}
!58 = !{!57, !41, i64 28}
!59 = !{i8 0, i8 2}
!60 = !{!57, !36, i64 0}
!61 = !{!62, !36, i64 56}
!62 = !{!"basic_block_def", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !36, i64 48, !36, i64 56, !37, i64 64, !42, i64 72, !41, i64 80, !41, i64 84, !41, i64 88, !41, i64 92, !41, i64 96}
!63 = !{!57, !36, i64 8}
!64 = !{!62, !41, i64 80}
!65 = !{!62, !36, i64 16}
!66 = distinct !{!66, !52, !53}
!67 = distinct !{!67, !52, !53}
!68 = !{!69, !41, i64 0}
!69 = !{!"VEC_rtx_base", !41, i64 0, !41, i64 4, !37, i64 8}
!70 = !{!71, !36, i64 8}
!71 = !{!"elt_loc_list", !36, i64 0, !36, i64 8, !36, i64 16}
!72 = !{!71, !36, i64 0}
!73 = distinct !{!73, !52, !53}
!74 = distinct !{!74, !52, !53}
!75 = !{!76, !41, i64 0}
!76 = !{!"shared_hash_def", !41, i64 0, !36, i64 8}
!77 = !{!78, !36, i64 432}
!78 = !{!"dataflow_set_def", !42, i64 0, !37, i64 8, !36, i64 432, !36, i64 440}
!79 = !{!78, !42, i64 0}
!80 = !{!78, !36, i64 440}
!81 = !{!82, !36, i64 0}
!82 = !{!"rtl_bb_info", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !41, i64 32}
!83 = !{!76, !36, i64 8}
!84 = !{!85, !36, i64 0}
!85 = !{!"variable_tracking_info_def", !36, i64 0, !78, i64 8, !78, i64 456, !36, i64 904, !37, i64 912, !37, i64 913}
!86 = !{!87, !41, i64 0}
!87 = !{!"VEC_micro_operation_base", !41, i64 0, !41, i64 4, !37, i64 8}
!88 = !{!89, !36, i64 8}
!89 = !{!"micro_operation_def", !41, i64 0, !36, i64 8, !37, i64 16}
!90 = !{!89, !41, i64 0}
!91 = !{!92, !36, i64 0}
!92 = !{!"reg_attrs", !36, i64 0, !42, i64 8}
!93 = !{!92, !42, i64 8}
!94 = !{!95, !36, i64 0}
!95 = !{!"mem_attrs", !36, i64 0, !36, i64 8, !36, i64 16, !41, i64 24, !41, i64 28, !37, i64 32}
!96 = !{!95, !36, i64 8}
!97 = distinct !{!97, !52, !53}
!98 = distinct !{!98, !52, !53}
!99 = !{!"function_entry_count", i64 38}
!100 = !{!"var-tracking.c;gate_handle_var_tracking"}
!101 = !{!82, !36, i64 8}
!102 = distinct !{!102, !52, !53}
!103 = distinct !{!103, !52, !53}
!104 = !{!85, !37, i64 912}
!105 = !{!85, !37, i64 913}
!106 = !{!85, !36, i64 904}
!107 = distinct !{!107, !52, !53}
!108 = !{!109, !37, i64 477}
!109 = !{!"rtl_data", !110, i64 0, !111, i64 40, !112, i64 96, !113, i64 112, !115, i64 208, !116, i64 248, !41, i64 312, !36, i64 320, !36, i64 328, !36, i64 336, !36, i64 344, !36, i64 352, !36, i64 360, !36, i64 368, !36, i64 376, !36, i64 384, !36, i64 392, !42, i64 400, !36, i64 408, !36, i64 416, !36, i64 424, !41, i64 432, !41, i64 436, !41, i64 440, !41, i64 444, !41, i64 448, !41, i64 452, !36, i64 456, !37, i64 464, !37, i64 465, !37, i64 466, !37, i64 467, !37, i64 468, !37, i64 469, !37, i64 470, !37, i64 471, !37, i64 472, !37, i64 473, !37, i64 474, !37, i64 475, !37, i64 476, !37, i64 477, !37, i64 478, !37, i64 479, !37, i64 480, !37, i64 481, !37, i64 482, !37, i64 483, !37, i64 484, !37, i64 485}
!110 = !{!"expr_status", !41, i64 0, !41, i64 4, !41, i64 8, !36, i64 16, !36, i64 24, !36, i64 32}
!111 = !{!"emit_status", !41, i64 0, !41, i64 4, !36, i64 8, !36, i64 16, !36, i64 24, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !36, i64 48}
!112 = !{!"varasm_status", !36, i64 0, !41, i64 8}
!113 = !{!"incoming_args", !41, i64 0, !41, i64 4, !41, i64 8, !36, i64 16, !114, i64 24, !36, i64 88}
!114 = !{!"ix86_args", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !41, i64 60}
!115 = !{!"function_subsections", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32}
!116 = !{!"rtl_eh", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !37, i64 48}
!117 = !{!85, !42, i64 8}
!118 = !{!85, !42, i64 456}
!119 = !{i64 0, i64 4, !50, i64 8, i64 8, !35}
!120 = !{i64 0, i64 8, !35}
!121 = !{}
!122 = !{!123, !36, i64 0}
!123 = !{!"edge_def", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 24, !36, i64 32, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !42, i64 56}
!124 = !{!123, !36, i64 8}
!125 = !{!42, !42, i64 0}
!126 = distinct !{!126, !52, !53}
!127 = !{!62, !36, i64 8}
!128 = !{!129, !41, i64 0}
!129 = !{!"VEC_edge_base", !41, i64 0, !41, i64 4, !37, i64 8}
!130 = !{!131, !41, i64 0}
!131 = !{!"", !41, i64 0, !36, i64 8}
!132 = distinct !{!132, !52, !53}
!133 = !{!109, !37, i64 480}
!134 = !{!109, !41, i64 120}
!135 = !{!62, !36, i64 0}
!136 = !{!123, !41, i64 48}
!137 = !{!87, !41, i64 4}
!138 = !{i64 0, i64 4, !50, i64 8, i64 8, !35, i64 16, i64 8, !35, i64 16, i64 8, !125}
!139 = !{i64 0, i64 8, !35, i64 8, i64 8, !35, i64 8, i64 8, !125}
!140 = !{i64 0, i64 8, !35, i64 0, i64 8, !125}
!141 = !{!142, !41, i64 4}
!142 = !{!"adjust_mem_data", !37, i64 0, !41, i64 4, !42, i64 8, !36, i64 16}
!143 = !{!142, !42, i64 8}
!144 = !{!142, !36, i64 16}
!145 = !{!142, !37, i64 0}
!146 = !{!147, !41, i64 0}
!147 = !{!"rtvec_def", !41, i64 0, !37, i64 8}
!148 = distinct !{!148, !52, !53}
!149 = distinct !{!149, !52, !53}
!150 = distinct !{!150, !52, !53}
!151 = distinct !{!151, !52, !53}
!152 = distinct !{!152, !52, !53}
!153 = distinct !{!153, !52, !53}
!154 = distinct !{!154, !52, !53}
!155 = !{!156, !36, i64 8}
!156 = !{!"cselib_val_struct", !41, i64 0, !41, i64 4, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32}
!157 = !{!158, !36, i64 8}
!158 = !{!"attrs_def", !36, i64 0, !36, i64 8, !36, i64 16, !42, i64 24}
!159 = !{!158, !36, i64 16}
!160 = !{!158, !42, i64 24}
!161 = !{!158, !36, i64 0}
!162 = distinct !{!162, !52, !53}
!163 = distinct !{!163, !52, !53}
!164 = distinct !{!164, !52, !53}
!165 = !{!166, !41, i64 8}
!166 = !{!"param_info", !36, i64 0, !41, i64 8, !37, i64 12, !41, i64 16, !41, i64 20, !36, i64 24}
!167 = !{!57, !41, i64 32}
!168 = distinct !{!168, !52, !53}
!169 = distinct !{!169, !52, !53}
!170 = distinct !{!170, !52, !53}
!171 = !{!172, !36, i64 0}
!172 = !{!"simple_bitmap_def", !36, i64 0, !41, i64 8, !41, i64 12, !37, i64 16}
!173 = !{!85, !36, i64 440}
!174 = !{!85, !36, i64 888}
!175 = !{i64 0, i64 8, !125, i64 8, i64 424, !46, i64 432, i64 8, !35, i64 440, i64 8, !35}
!176 = distinct !{!176, !52, !53}
!177 = distinct !{!177, !52, !53}
!178 = distinct !{!178, !52, !53}
!179 = distinct !{!179, !52, !53}
!180 = !{!181, !36, i64 0}
!181 = !{!"dfset_merge", !36, i64 0, !36, i64 8, !36, i64 16, !41, i64 24}
!182 = !{!181, !36, i64 16}
!183 = !{!181, !36, i64 8}
!184 = !{!181, !41, i64 24}
!185 = distinct !{!185, !52, !53}
!186 = !{!187, !36, i64 0}
!187 = !{!"dfset_post_merge", !36, i64 0, !36, i64 8}
!188 = !{!187, !36, i64 8}
!189 = distinct !{!189, !52, !53}
!190 = distinct !{!190, !52, !53}
!191 = distinct !{!191, !52, !53}
!192 = distinct !{!192, !52, !53}
!193 = !{!156, !41, i64 4}
!194 = distinct !{!194, !52, !53}
!195 = distinct !{!195, !52, !53}
!196 = distinct !{!196, !52, !53}
!197 = distinct !{!197, !52, !53}
!198 = !{!55, !36, i64 48}
!199 = distinct !{!199, !52, !53}
!200 = !{!201, !42, i64 0}
!201 = !{!"fibheap", !42, i64 0, !36, i64 8, !36, i64 16}
!202 = distinct !{!202, !52, !53}
!203 = distinct !{!203, !52, !53}
!204 = !{!205, !36, i64 0}
!205 = !{!"variable_def", !36, i64 0, !41, i64 8, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 16}
!206 = !{!205, !41, i64 8}
!207 = !{!205, !37, i64 12}
!208 = !{!209, !36, i64 0}
!209 = !{!"variable_part_def", !36, i64 0, !36, i64 8, !42, i64 16}
!210 = !{!211, !36, i64 0}
!211 = !{!"location_chain_def", !36, i64 0, !36, i64 8, !36, i64 16, !41, i64 24}
!212 = distinct !{!212, !52, !53}
!213 = distinct !{!213, !52, !53}
!214 = !{!215, !36, i64 8}
!215 = !{!"value_chain_def", !36, i64 0, !36, i64 8, !41, i64 16}
!216 = !{!217, !36, i64 0}
!217 = !{!"count_use_info", !36, i64 0, !36, i64 8, !36, i64 16, !41, i64 24, !37, i64 28}
!218 = !{!217, !36, i64 8}
!219 = !{!217, !36, i64 16}
!220 = !{!217, !41, i64 24}
!221 = !{!217, !37, i64 28}
!222 = distinct !{!222, !52, !53}
!223 = distinct !{!223, !52, !53}
!224 = distinct !{!224, !52, !53}
!225 = distinct !{!225, !52, !53}
!226 = distinct !{!226, !52, !53}
!227 = distinct !{!227, !52, !53}
!228 = distinct !{!228, !52, !53}
!229 = distinct !{!229, !52, !53}
!230 = distinct !{!230, !52, !53}
!231 = distinct !{!231, !52, !53}
!232 = distinct !{!232, !52, !53}
!233 = distinct !{!233, !52, !53}
!234 = distinct !{!234, !52, !53}
!235 = !{!69, !41, i64 4}
!236 = distinct !{!236, !52, !53}
!237 = !{!205, !37, i64 13}
!238 = !{!205, !37, i64 14}
!239 = !{!209, !42, i64 16}
!240 = !{!211, !36, i64 8}
!241 = distinct !{!241, !52, !53}
!242 = distinct !{!242, !52, !53}
!243 = !{i32 -1, i32 2}
!244 = distinct !{!244, !52, !53}
!245 = distinct !{!245, !52, !53}
!246 = distinct !{!246, !52, !53}
!247 = distinct !{!247, !52, !53}
!248 = !{!211, !41, i64 24}
!249 = !{!211, !36, i64 16}
!250 = !{i64 0, i64 8, !35, i64 8, i64 8, !35, i64 16, i64 8, !125}
!251 = distinct !{!251, !52, !53}
!252 = distinct !{!252, !52, !53}
!253 = !{!209, !36, i64 8}
!254 = distinct !{!254, !52, !53}
!255 = distinct !{!255, !52, !53}
!256 = distinct !{!256, !52, !53}
!257 = distinct !{!257, !52, !53}
!258 = !{!215, !36, i64 0}
!259 = !{!215, !41, i64 16}
!260 = distinct !{!260, !52, !53}
!261 = !{i32 0, i32 8}
!262 = !{!263, !36, i64 1184}
!263 = !{!"gcc_target", !264, i64 0, !266, i64 368, !267, i64 664, !41, i64 744, !36, i64 752, !36, i64 760, !36, i64 768, !36, i64 776, !36, i64 784, !36, i64 792, !36, i64 800, !36, i64 808, !36, i64 816, !36, i64 824, !36, i64 832, !36, i64 840, !36, i64 848, !36, i64 856, !36, i64 864, !36, i64 872, !36, i64 880, !36, i64 888, !36, i64 896, !36, i64 904, !36, i64 912, !36, i64 920, !36, i64 928, !36, i64 936, !36, i64 944, !36, i64 952, !36, i64 960, !36, i64 968, !36, i64 976, !36, i64 984, !36, i64 992, !36, i64 1000, !36, i64 1008, !36, i64 1016, !36, i64 1024, !36, i64 1032, !36, i64 1040, !36, i64 1048, !36, i64 1056, !42, i64 1064, !42, i64 1072, !36, i64 1080, !36, i64 1088, !36, i64 1096, !36, i64 1104, !36, i64 1112, !36, i64 1120, !36, i64 1128, !36, i64 1136, !36, i64 1144, !36, i64 1152, !36, i64 1160, !36, i64 1168, !268, i64 1176, !36, i64 1232, !36, i64 1240, !36, i64 1248, !36, i64 1256, !36, i64 1264, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !36, i64 1304, !36, i64 1312, !36, i64 1320, !36, i64 1328, !36, i64 1336, !36, i64 1344, !36, i64 1352, !36, i64 1360, !36, i64 1368, !36, i64 1376, !36, i64 1384, !36, i64 1392, !36, i64 1400, !36, i64 1408, !36, i64 1416, !36, i64 1424, !36, i64 1432, !36, i64 1440, !36, i64 1448, !36, i64 1456, !42, i64 1464, !269, i64 1472, !36, i64 1664, !36, i64 1672, !36, i64 1680, !36, i64 1688, !36, i64 1696, !36, i64 1704, !36, i64 1712, !36, i64 1720, !36, i64 1728, !36, i64 1736, !36, i64 1744, !36, i64 1752, !36, i64 1760, !36, i64 1768, !36, i64 1776, !270, i64 1784, !271, i64 1792, !272, i64 1896, !273, i64 1968, !36, i64 2016, !37, i64 2024, !37, i64 2025, !37, i64 2026, !37, i64 2027, !37, i64 2028, !37, i64 2029, !37, i64 2030, !37, i64 2031, !37, i64 2032, !37, i64 2033, !37, i64 2034, !37, i64 2035}
!264 = !{!"asm_out", !36, i64 0, !36, i64 8, !36, i64 16, !265, i64 24, !265, i64 56, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !36, i64 312, !36, i64 320, !36, i64 328, !36, i64 336, !36, i64 344, !36, i64 352, !36, i64 360}
!265 = !{!"asm_int_op", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!266 = !{!"sched", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288}
!267 = !{!"vectorize", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72}
!268 = !{!"addr_space", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48}
!269 = !{!"calls", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184}
!270 = !{!"c", !36, i64 0}
!271 = !{!"cxx", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96}
!272 = !{!"emutls", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !37, i64 64, !37, i64 65}
!273 = !{!"target_option_hooks", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40}
!274 = !{!95, !37, i64 32}
!275 = distinct !{!275, !52, !53}
!276 = !{!277, !36, i64 8}
!277 = !{!"cselib_set", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!278 = !{!277, !36, i64 16}
!279 = !{!95, !36, i64 16}
!280 = distinct !{!280, !52, !53}
!281 = distinct !{!281, !52, !53}
!282 = !{!263, !36, i64 1040}
!283 = distinct !{!283, !52, !53}
!284 = distinct !{!284, !52, !53}
!285 = distinct !{!285, !52, !53}
!286 = distinct !{!286, !52, !53}
!287 = distinct !{!287, !52, !53}
!288 = distinct !{!288, !52, !53}
!289 = distinct !{!289, !52, !53}
!290 = distinct !{!290, !52, !53}
!291 = distinct !{!291, !52, !53}
!292 = distinct !{!292, !52, !53}
!293 = distinct !{!293, !52, !53}
!294 = distinct !{!294, !52, !53}
!295 = distinct !{!295, !52, !53}
!296 = distinct !{!296, !52, !53}
!297 = distinct !{!297, !52, !53}
!298 = distinct !{!298, !52, !53}
!299 = !{!300, !36, i64 0}
!300 = !{!"variable_union_info", !36, i64 0, !41, i64 8, !41, i64 12}
!301 = !{!300, !41, i64 12}
!302 = !{!300, !41, i64 8}
!303 = distinct !{!303, !52, !53}
!304 = distinct !{!304, !52, !53}
!305 = distinct !{!305, !52, !53}
!306 = distinct !{!306, !52, !53}
!307 = distinct !{!307, !52, !53}
!308 = distinct !{!308, !52, !53}
!309 = distinct !{!309, !52, !53}
!310 = distinct !{!310, !52, !53}
!311 = distinct !{!311, !52, !53}
!312 = distinct !{!312, !52, !53}
!313 = distinct !{!313, !52, !53}
!314 = distinct !{!314, !52, !53}
!315 = distinct !{!315, !52, !53}
!316 = distinct !{!316, !52, !53}
!317 = distinct !{!317, !52, !53}
!318 = distinct !{!318, !52, !53}
!319 = distinct !{!319, !52, !53}
!320 = distinct !{!320, !52, !53}
!321 = distinct !{!321, !52, !53}
!322 = distinct !{!322, !52, !53}
!323 = distinct !{!323, !52, !53}
!324 = distinct !{!324, !52, !53}
!325 = distinct !{!325, !52, !53}
!326 = distinct !{!326, !52, !53}
!327 = distinct !{!327, !52, !53}
!328 = distinct !{!328, !52, !53}
!329 = distinct !{!329, !52, !53}
!330 = distinct !{!330, !52, !53}
!331 = distinct !{!331, !52, !53}
!332 = !{!156, !41, i64 0}
!333 = distinct !{!333, !52, !53}
!334 = distinct !{!334, !52, !53}
!335 = distinct !{!335, !52, !53}
!336 = distinct !{!336, !52, !53}
!337 = distinct !{!337, !52, !53}
!338 = distinct !{!338, !52, !53}
!339 = distinct !{!339, !52, !53}
!340 = distinct !{!340, !52, !53}
!341 = distinct !{!341, !52, !53}
!342 = !{!156, !36, i64 16}
!343 = !{!71, !36, i64 16}
!344 = distinct !{!344, !52, !53}
!345 = distinct !{!345, !52, !53}
!346 = distinct !{!346, !52, !53}
!347 = distinct !{!347, !52, !53}
!348 = distinct !{!348, !52, !53}
!349 = distinct !{!349, !52, !53}
!350 = distinct !{!350, !52, !53}
!351 = distinct !{!351, !52, !53}
!352 = distinct !{!352, !52, !53}
!353 = distinct !{!353, !52, !53}
!354 = distinct !{!354, !52, !53}
!355 = distinct !{!355, !52, !53}
!356 = distinct !{!356, !52, !53}
!357 = distinct !{!357, !52, !53}
!358 = distinct !{!358, !52, !53}
!359 = distinct !{!359, !52, !53}
!360 = distinct !{!360, !52, !53}
!361 = distinct !{!361, !52, !53}
!362 = distinct !{!362, !52, !53}
!363 = distinct !{!363, !52, !53}
!364 = distinct !{!364, !52, !53}
!365 = distinct !{!365, !52, !53}
!366 = distinct !{!366, !52, !53}
!367 = distinct !{!367, !52, !53}
!368 = distinct !{!368, !52, !53}
!369 = distinct !{!369, !52, !53}
!370 = distinct !{!370, !52, !53}
!371 = !{!372, !41, i64 0}
!372 = !{!"VEC_variable_base", !41, i64 0, !41, i64 4, !37, i64 8}
!373 = distinct !{!373, !52, !53}
!374 = distinct !{!374, !52, !53}
!375 = !{!376, !36, i64 0}
!376 = !{!"emit_note_data_def", !36, i64 0, !41, i64 8, !36, i64 16}
!377 = !{!376, !41, i64 8}
!378 = !{!376, !36, i64 16}
!379 = distinct !{!379, !52, !53}
!380 = distinct !{!380, !52, !53}
!381 = distinct !{!381, !52, !53}
!382 = distinct !{!382, !52, !53}
!383 = distinct !{!383, !52, !53}
!384 = distinct !{!384, !52, !53}
!385 = distinct !{!385, !52, !53}
!386 = distinct !{!386, !52, !53}
!387 = !{!372, !41, i64 4}
!388 = distinct !{!388, !52, !53}
!389 = !{!390, !36, i64 0}
!390 = !{!"expand_loc_callback_data", !36, i64 0, !37, i64 8, !37, i64 9}
!391 = !{!390, !37, i64 8}
!392 = !{!390, !37, i64 9}
!393 = distinct !{!393, !52, !53}

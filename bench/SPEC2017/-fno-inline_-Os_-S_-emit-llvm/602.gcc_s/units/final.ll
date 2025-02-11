; ModuleID = 'final.c'
source_filename = "final.c"
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
%struct.insn_data = type { ptr, %union.anon.0, ptr, ptr, i8, i8, i8, i8 }
%union.anon.0 = type { ptr }
%struct.recog_data = type { [30 x ptr], [30 x ptr], [30 x ptr], [30 x i32], [30 x i32], [14 x ptr], [14 x i8], i8, i8, i8, [30 x i8], ptr }
%struct.rtl_data = type { %struct.expr_status, %struct.emit_status, %struct.varasm_status, %struct.incoming_args, %struct.function_subsections, %struct.rtl_eh, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.expr_status = type { i32, i32, i32, ptr, ptr, ptr }
%struct.emit_status = type { i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.varasm_status = type { ptr, i32 }
%struct.incoming_args = type { i32, i32, i32, ptr, %struct.ix86_args, ptr }
%struct.ix86_args = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.function_subsections = type { ptr, ptr, ptr, ptr, ptr }
%struct.rtl_eh = type { ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr] }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.rtvec_def = type { i32, [1 x ptr] }
%struct.label_alignment = type { i16, i16 }
%struct.VEC_int_base = type { i32, i32, [1 x i32] }
%struct.edge_iterator = type { i32, ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.param_info = type { ptr, i32, i8, i32, i32, ptr }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.loop = type { i32, i32, ptr, ptr, %struct.lpt_decision, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.double_int, %struct.double_int, i8, i8, i32, ptr, ptr, i8, ptr }
%struct.lpt_decision = type { i32, i32 }
%struct.double_int = type { i64, i64 }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.debug_prefix_map = type { ptr, ptr, i64, i64, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.gcc_debug_hooks = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.expanded_location = type { ptr, i32, i32, i8 }
%struct.tree_block = type { %struct.tree_common, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.real_value = type { i32, [3 x i64] }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_function_decl = type { %struct.tree_decl_non_common, ptr, ptr, ptr, ptr, i32 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_identifier = type { %struct.tree_common, %struct.ht_identifier }
%struct.ht_identifier = type { ptr, i32, i32 }

@current_output_insn = dso_local local_unnamed_addr global ptr null, align 8
@this_is_asm_operands = dso_local local_unnamed_addr global ptr null, align 8
@final_sequence = dso_local local_unnamed_addr global ptr null, align 8
@current_insn_predicate = dso_local local_unnamed_addr global ptr null, align 8
@final_insns_dump_p = dso_local local_unnamed_addr global i8 0, align 1
@insn_addresses_ = dso_local local_unnamed_addr global ptr null, align 8
@insn_current_address = dso_local local_unnamed_addr global i32 0, align 4
@insn_last_address = dso_local local_unnamed_addr global i32 0, align 4
@insn_current_align = dso_local local_unnamed_addr global i32 0, align 4
@debug_prefix_maps = dso_local local_unnamed_addr global ptr null, align 8
@app_on = internal unnamed_addr global i1 false, align 4
@ix86_asm_dialect = external local_unnamed_addr global i32, align 4
@dialect_number = internal unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"#APP\0A\00", align 1
@asm_out_file = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"#NO_APP\0A\00", align 1
@uid_shuid = internal unnamed_addr global ptr null, align 8
@insn_lengths = internal unnamed_addr global ptr null, align 8
@insn_lengths_max_uid = internal unnamed_addr global i32 0, align 4
@uid_align = internal unnamed_addr global ptr null, align 8
@max_labelno = internal unnamed_addr global i32 0, align 4
@label_align = internal unnamed_addr global ptr null, align 8
@min_labelno = internal unnamed_addr global i32 0, align 4
@length_unit_log = external local_unnamed_addr constant i32, align 4
@optimize = external local_unnamed_addr global i32, align 4
@cfun = external local_unnamed_addr global ptr, align 8
@dump_file = external local_unnamed_addr global ptr, align 8
@compiler_params = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"freq_max: %i\0A\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"BB %4i freq %4i loop %2i loop_depth %2i skipped.\0A\00", align 1
@align_labels_log = external local_unnamed_addr global i32, align 4
@align_labels_max_skip = external local_unnamed_addr global i32, align 4
@.str.4 = private unnamed_addr constant [60 x i8] c"BB %4i freq %4i loop %2i loop_depth %2i fall %4i branch %4i\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c" inner_loop\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c" loop_header\00", align 1
@align_jumps_log = external local_unnamed_addr global i32, align 4
@.str.8 = private unnamed_addr constant [25 x i8] c"  jump alignment added.\0A\00", align 1
@align_jumps_max_skip = external local_unnamed_addr global i32, align 4
@align_loops_log = external local_unnamed_addr global i32, align 4
@.str.9 = private unnamed_addr constant [34 x i8] c"  internal loop alignment added.\0A\00", align 1
@align_loops_max_skip = external local_unnamed_addr global i32, align 4
@.str.10 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@pass_compute_alignments = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str.12, ptr null, ptr @compute_alignments, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1027 } }, align 8
@.str.12 = private unnamed_addr constant [11 x i8] c"alignments\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"final.c\00", align 1
@readonly_data_section = external local_unnamed_addr global ptr, align 8
@text_section = external local_unnamed_addr global ptr, align 8
@mode_size = external local_unnamed_addr global [87 x i8], align 16
@ix86_isa_flags = external local_unnamed_addr global i32, align 4
@.str.14 = private unnamed_addr constant [43 x i8] c"invalid argument %qs to -fdebug-prefix-map\00", align 1
@block_depth = internal unnamed_addr global i32 0, align 4
@prologue_locator = external local_unnamed_addr global i32, align 4
@last_filename = internal unnamed_addr global ptr null, align 8
@last_linenum = internal unnamed_addr global i32 0, align 4
@discriminator = internal unnamed_addr global i32 0, align 4
@last_discriminator = internal unnamed_addr global i32 0, align 4
@high_function_linenum = internal unnamed_addr global i32 0, align 4
@high_block_linenum = internal unnamed_addr global i32 0, align 4
@current_function_decl = external local_unnamed_addr global ptr, align 8
@debug_hooks = external local_unnamed_addr global ptr, align 8
@write_symbols = external local_unnamed_addr global i32, align 4
@warn_frame_larger_than = external local_unnamed_addr global i8, align 1
@frame_larger_than_size = external local_unnamed_addr global i64, align 8
@.str.15 = private unnamed_addr constant [53 x i8] c"the frame size of %wd bytes is larger than %wd bytes\00", align 1
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@insn_data = external local_unnamed_addr constant [0 x %struct.insn_data], align 8
@which_alternative = external local_unnamed_addr global i32, align 4
@recog_data = external global %struct.recog_data, align 8
@.str.16 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@insn_counter = internal unnamed_addr global i32 0, align 4
@in_cold_section_p = external local_unnamed_addr global i8, align 1
@flag_debug_asm = external local_unnamed_addr global i32, align 4
@.str.17 = private unnamed_addr constant [20 x i8] c"\09%s basic block %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"#\00", align 1
@force_source_line = internal unnamed_addr global i1 false, align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"LEHB\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"LEHE\00", align 1
@debug_info_level = external local_unnamed_addr global i32, align 4
@override_filename = internal unnamed_addr global ptr null, align 8
@override_linenum = internal unnamed_addr global i32 0, align 4
@.str.21 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"\09.p2align %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c"\09.p2align %d,,%d\0A\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"\09.p2align 3\0A\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"\09.align %d\0A\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"%s %i \22%s\22 1\0A\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"\09%s\0A\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"%s 0 \22\22 2\0A\00", align 1
@insn_noperands = internal unnamed_addr global i32 0, align 4
@flag_dump_rtl_in_asm = external local_unnamed_addr global i32, align 4
@print_rtx_head = external local_unnamed_addr global ptr, align 8
@debug_insn = internal unnamed_addr global ptr null, align 8
@.str.29 = private unnamed_addr constant [21 x i8] c"could not split insn\00", align 1
@flag_enable_icf_debug = external local_unnamed_addr global i32, align 4
@x_rtl = external local_unnamed_addr global %struct.rtl_data, align 8
@.str.30 = private unnamed_addr constant [16 x i8] c"\09push{l}\09%%e%s\0A\00", align 1
@reg_names = external local_unnamed_addr global [53 x ptr], align 16
@.str.31 = private unnamed_addr constant [15 x i8] c"\09pop{l}\09%%e%s\0A\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"\09.weak\09\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"\09.type\09\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"@%s\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"function\00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c":\0A\00", align 1
@.str.38 = private unnamed_addr constant [16 x i8] c"invalid 'asm': \00", align 1
@.str.39 = private unnamed_addr constant [17 x i8] c"output_operand: \00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.41 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@flag_verbose_asm = external local_unnamed_addr global i32, align 4
@flag_print_asm_name = external local_unnamed_addr global i32, align 4
@.str.42 = private unnamed_addr constant [37 x i8] c"nested assembly dialect alternatives\00", align 1
@.str.43 = private unnamed_addr constant [42 x i8] c"unterminated assembly dialect alternative\00", align 1
@.str.44 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@_sch_istable = external local_unnamed_addr constant [256 x i16], align 16
@.str.45 = private unnamed_addr constant [39 x i8] c"operand number missing after %%-letter\00", align 1
@.str.46 = private unnamed_addr constant [28 x i8] c"operand number out of range\00", align 1
@.str.47 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.48 = private unnamed_addr constant [16 x i8] c"invalid %%-code\00", align 1
@.str.49 = private unnamed_addr constant [5 x i8] c"%c%s\00", align 1
@.str.50 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.51 = private unnamed_addr constant [7 x i8] c" tmp%i\00", align 1
@rtx_class = external local_unnamed_addr constant [139 x i32], align 16
@.str.52 = private unnamed_addr constant [10 x i8] c"\09%s %d\09%s\00", align 1
@.str.53 = private unnamed_addr constant [4 x i8] c"/%d\00", align 1
@.str.54 = private unnamed_addr constant [15 x i8] c"\09[length = %d]\00", align 1
@.str.55 = private unnamed_addr constant [7 x i8] c"*.%s%u\00", align 1
@.str.56 = private unnamed_addr constant [28 x i8] c"'%%l' operand isn't a label\00", align 1
@.str.57 = private unnamed_addr constant [12 x i8] c"0x%lx%016lx\00", align 1
@.str.58 = private unnamed_addr constant [6 x i8] c"0x%lx\00", align 1
@.str.59 = private unnamed_addr constant [26 x i8] c"floating constant misused\00", align 1
@.str.62 = private unnamed_addr constant [30 x i8] c"invalid expression as operand\00", align 1
@.str.63 = private unnamed_addr constant [6 x i8] c"-+ #0\00", align 1
@.str.65 = private unnamed_addr constant [2 x i8] c".\00", align 1
@user_label_prefix = external local_unnamed_addr global ptr, align 8
@const_int_rtx = external local_unnamed_addr global [129 x ptr], align 16
@mode_class = external local_unnamed_addr constant [87 x i8], align 16
@profile_arc_flag = external local_unnamed_addr global i32, align 4
@debug_nesting = dso_local local_unnamed_addr global i32 0, align 4
@symbol_queue_index = dso_local local_unnamed_addr global i32 0, align 4
@symbol_queue = internal unnamed_addr global ptr null, align 8
@symbol_queue_size = internal unnamed_addr global i32 0, align 4
@pass_final = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str.66, ptr null, ptr @rest_of_handle_final, ptr null, ptr null, i32 0, i32 165, i32 0, i32 0, i32 0, i32 0, i32 2 } }, align 8
@.str.66 = private unnamed_addr constant [6 x i8] c"final\00", align 1
@user_defined_section_attribute = external local_unnamed_addr global i8, align 1
@quiet_flag = external local_unnamed_addr global i32, align 4
@timevar_enable = external local_unnamed_addr global i8, align 1
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@pass_shorten_branches = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str.67, ptr null, ptr @rest_of_handle_shorten_branches, ptr null, ptr null, i32 0, i32 165, i32 0, i32 0, i32 0, i32 0, i32 1 } }, align 8
@.str.67 = private unnamed_addr constant [8 x i8] c"shorten\00", align 1
@pass_clean_state = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str.68, ptr null, ptr @rest_of_clean_state, ptr null, ptr null, i32 0, i32 165, i32 0, i32 0, i32 128, i32 0, i32 0 } }, align 8
@.str.68 = private unnamed_addr constant [13 x i8] c"*clean_state\00", align 1
@flag_dump_unnumbered = external local_unnamed_addr global i32, align 4
@flag_dump_noaddr = external local_unnamed_addr global i32, align 4
@flag_dump_final_insns = external local_unnamed_addr global ptr, align 8
@.str.69 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.70 = private unnamed_addr constant [44 x i8] c"could not open final insn dump file %qs: %s\00", align 1
@.str.71 = private unnamed_addr constant [23 x i8] c"\0A;; Function (%s) %s\0A\0A\00", align 1
@.str.72 = private unnamed_addr constant [7 x i8] c" (hot)\00", align 1
@.str.73 = private unnamed_addr constant [21 x i8] c" (unlikely executed)\00", align 1
@flag_compare_debug_opt = external local_unnamed_addr global ptr, align 8
@flag_compare_debug = external local_unnamed_addr global i32, align 4
@dump_flags = external local_unnamed_addr global i32, align 4
@.str.74 = private unnamed_addr constant [45 x i8] c"could not close final insn dump file %qs: %s\00", align 1
@flag_rerun_cse_after_global_opts = external local_unnamed_addr global i32, align 4
@reload_completed = external local_unnamed_addr global i32, align 4
@epilogue_completed = external local_unnamed_addr global i32, align 4
@regstack_completed = external local_unnamed_addr global i32, align 4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @init_final(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  store i1 false, ptr @app_on, align 4
  store ptr null, ptr @final_sequence, align 8, !tbaa !6
  %2 = load i32, ptr @ix86_asm_dialect, align 4, !tbaa !10
  store i32 %2, ptr @dialect_number, align 4, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @default_function_pro_epilogue(ptr nocapture noundef readnone %0, i64 noundef %1) local_unnamed_addr #1 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @no_asm_to_stream(ptr nocapture noundef readnone %0) local_unnamed_addr #1 {
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @app_enable() local_unnamed_addr #2 {
  %1 = load i1, ptr @app_on, align 4
  br i1 %1, label %5, label %2

2:                                                ; preds = %0
  %3 = load ptr, ptr @asm_out_file, align 8, !tbaa !6
  %4 = tail call i32 @fputs(ptr noundef nonnull @.str, ptr noundef %3) #21
  store i1 true, ptr @app_on, align 4
  br label %5

5:                                                ; preds = %2, %0
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @app_disable() local_unnamed_addr #2 {
  %1 = load i1, ptr @app_on, align 4
  br i1 %1, label %2, label %5

2:                                                ; preds = %0
  %3 = load ptr, ptr @asm_out_file, align 8, !tbaa !6
  %4 = tail call i32 @fputs(ptr noundef nonnull @.str.1, ptr noundef %3) #21
  store i1 false, ptr @app_on, align 4
  br label %5

5:                                                ; preds = %2, %0
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define dso_local void @init_insn_lengths() local_unnamed_addr #4 {
  %1 = load ptr, ptr @uid_shuid, align 8, !tbaa !6
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @free(ptr noundef nonnull %1) #21
  store ptr null, ptr @uid_shuid, align 8, !tbaa !6
  br label %4

4:                                                ; preds = %3, %0
  %5 = load ptr, ptr @insn_lengths, align 8, !tbaa !6
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @free(ptr noundef nonnull %5) #21
  store ptr null, ptr @insn_lengths, align 8, !tbaa !6
  store i32 0, ptr @insn_lengths_max_uid, align 4, !tbaa !10
  br label %8

8:                                                ; preds = %7, %4
  tail call fastcc void @VEC_int_heap_free() #21
  %9 = load ptr, ptr @uid_align, align 8, !tbaa !6
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  tail call void @free(ptr noundef nonnull %9) #21
  store ptr null, ptr @uid_align, align 8, !tbaa !6
  br label %12

12:                                               ; preds = %11, %8
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_int_heap_free() unnamed_addr #4 {
  %1 = load ptr, ptr @insn_addresses_, align 8, !tbaa !6
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @free(ptr noundef nonnull %1) #21
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @insn_addresses_, align 8, !tbaa !6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @get_attr_length(ptr noundef %0) local_unnamed_addr #6 {
  %2 = tail call fastcc i32 @get_attr_length_1(ptr noundef %0, ptr noundef nonnull @insn_default_length) #21
  ret i32 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @get_attr_length_1(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #6 {
  %3 = load i32, ptr @insn_lengths_max_uid, align 4, !tbaa !10
  %4 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !12
  %6 = icmp sgt i32 %3, %5
  br i1 %6, label %7, label %12

7:                                                ; preds = %2
  %8 = load ptr, ptr @insn_lengths, align 8, !tbaa !6
  %9 = sext i32 %5 to i64
  %10 = getelementptr inbounds i32, ptr %8, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !10
  br label %61

12:                                               ; preds = %2
  %13 = load i32, ptr %0, align 8
  %14 = trunc i32 %13 to i16
  switch i16 %14, label %61 [
    i16 8, label %25
    i16 9, label %17
    i16 10, label %15
  ]

15:                                               ; preds = %12
  %16 = tail call i32 %1(ptr noundef nonnull %0) #22, !callees !13
  br label %61

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %19 = load ptr, ptr %18, align 8, !tbaa !12
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 65534
  %22 = icmp eq i32 %21, 20
  br i1 %22, label %61, label %23

23:                                               ; preds = %17
  %24 = tail call i32 %1(ptr noundef nonnull %0) #22, !callees !13
  br label %61

25:                                               ; preds = %12
  %26 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %27 = load ptr, ptr %26, align 8, !tbaa !12
  %28 = load i32, ptr %27, align 8
  %29 = trunc i32 %28 to i16
  switch i16 %29, label %30 [
    i16 24, label %61
    i16 25, label %61
    i16 16, label %33
  ]

30:                                               ; preds = %25
  %31 = tail call i32 @asm_noperands(ptr noundef nonnull %27) #22
  %32 = icmp sgt i32 %31, -1
  br i1 %32, label %33, label %37

33:                                               ; preds = %25, %30
  %34 = tail call fastcc i32 @asm_insn_count(ptr noundef nonnull %27) #21
  %35 = tail call i32 %1(ptr noundef nonnull %0) #22, !callees !13
  %36 = mul nsw i32 %35, %34
  br label %61

37:                                               ; preds = %30
  %38 = load i32, ptr %27, align 8
  %39 = and i32 %38, 65535
  %40 = icmp eq i32 %39, 5
  br i1 %40, label %41, label %59

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.rtx_def, ptr %27, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !12
  %44 = load i32, ptr %43, align 8, !tbaa !14
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %61

46:                                               ; preds = %41, %46
  %47 = phi i64 [ %54, %46 ], [ 0, %41 ]
  %48 = phi ptr [ %55, %46 ], [ %43, %41 ]
  %49 = phi i32 [ %53, %46 ], [ 0, %41 ]
  %50 = getelementptr inbounds %struct.rtvec_def, ptr %48, i64 0, i32 1, i64 %47
  %51 = load ptr, ptr %50, align 8, !tbaa !6
  %52 = tail call fastcc i32 @get_attr_length_1(ptr noundef %51, ptr noundef %1) #21
  %53 = add nsw i32 %52, %49
  %54 = add nuw nsw i64 %47, 1
  %55 = load ptr, ptr %42, align 8, !tbaa !12
  %56 = load i32, ptr %55, align 8, !tbaa !14
  %57 = sext i32 %56 to i64
  %58 = icmp slt i64 %54, %57
  br i1 %58, label %46, label %61, !llvm.loop !16

59:                                               ; preds = %37
  %60 = tail call i32 %1(ptr noundef nonnull %0) #22, !callees !13
  br label %61

61:                                               ; preds = %46, %41, %17, %12, %59, %33, %23, %15, %25, %25, %7
  %62 = phi i32 [ %11, %7 ], [ 0, %25 ], [ 0, %25 ], [ 0, %12 ], [ %36, %33 ], [ %60, %59 ], [ %24, %23 ], [ %16, %15 ], [ 0, %17 ], [ 0, %41 ], [ %53, %46 ]
  ret i32 %62
}

; Function Attrs: optsize
declare i32 @insn_default_length(ptr noundef) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: optsize
declare i32 @asm_noperands(ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @asm_insn_count(ptr noundef %0) unnamed_addr #6 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 16
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !12
  br label %10

8:                                                ; preds = %1
  %9 = tail call ptr @decode_asm_operands(ptr noundef nonnull %0, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #22
  br label %10

10:                                               ; preds = %8, %5
  %11 = phi ptr [ %7, %5 ], [ %9, %8 ]
  %12 = tail call i32 @asm_str_count(ptr noundef %11) #21
  ret i32 %12
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: optsize
declare ptr @decode_asm_operands(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @asm_str_count(ptr nocapture noundef readonly %0) local_unnamed_addr #9 {
  %2 = load i8, ptr %0, align 1, !tbaa !12
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %14, label %4

4:                                                ; preds = %1, %10
  %5 = phi i8 [ %13, %10 ], [ %2, %1 ]
  %6 = phi ptr [ %12, %10 ], [ %0, %1 ]
  %7 = phi i32 [ %11, %10 ], [ 1, %1 ]
  switch i8 %5, label %10 [
    i8 0, label %14
    i8 59, label %8
    i8 10, label %8
  ]

8:                                                ; preds = %4, %4
  %9 = add nsw i32 %7, 1
  br label %10

10:                                               ; preds = %4, %8
  %11 = phi i32 [ %9, %8 ], [ %7, %4 ]
  %12 = getelementptr inbounds i8, ptr %6, i64 1
  %13 = load i8, ptr %12, align 1, !tbaa !12
  br label %4, !llvm.loop !18

14:                                               ; preds = %4, %1
  %15 = phi i32 [ 0, %1 ], [ %7, %4 ]
  ret i32 %15
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @get_attr_min_length(ptr noundef %0) local_unnamed_addr #6 {
  %2 = tail call fastcc i32 @get_attr_length_1(ptr noundef %0, ptr noundef nonnull @insn_min_length) #21
  ret i32 %2
}

; Function Attrs: optsize
declare i32 @insn_min_length(ptr noundef) #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @label_to_alignment(ptr nocapture noundef readonly %0) local_unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !12
  %4 = load i32, ptr @max_labelno, align 4, !tbaa !10
  %5 = icmp sgt i32 %3, %4
  br i1 %5, label %14, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr @label_align, align 8, !tbaa !6
  %8 = load i32, ptr @min_labelno, align 4, !tbaa !10
  %9 = sub nsw i32 %3, %8
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.label_alignment, ptr %7, i64 %10
  %12 = load i16, ptr %11, align 2, !tbaa !19
  %13 = sext i16 %12 to i32
  br label %14

14:                                               ; preds = %1, %6
  %15 = phi i32 [ %13, %6 ], [ 0, %1 ]
  ret i32 %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @label_to_max_skip(ptr nocapture noundef readonly %0) local_unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !12
  %4 = load i32, ptr @max_labelno, align 4, !tbaa !10
  %5 = icmp sgt i32 %3, %4
  br i1 %5, label %14, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr @label_align, align 8, !tbaa !6
  %8 = load i32, ptr @min_labelno, align 4, !tbaa !10
  %9 = sub nsw i32 %3, %8
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.label_alignment, ptr %7, i64 %10, i32 1
  %12 = load i16, ptr %11, align 2, !tbaa !22
  %13 = sext i16 %12 to i32
  br label %14

14:                                               ; preds = %1, %6
  %15 = phi i32 [ %13, %6 ], [ 0, %1 ]
  ret i32 %15
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @insn_current_reference_address(ptr nocapture noundef readonly %0) local_unnamed_addr #9 {
  %2 = load ptr, ptr @insn_addresses_, align 8, !tbaa !6
  %3 = icmp eq ptr %2, null
  br i1 %3, label %43, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %6 = load ptr, ptr %5, align 8, !tbaa !12
  %7 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 2
  %8 = load ptr, ptr %7, align 8, !tbaa !12
  %9 = load i32, ptr %0, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 9
  br i1 %11, label %14, label %12

12:                                               ; preds = %4
  %13 = load i32, ptr @insn_current_address, align 4, !tbaa !10
  br label %43

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1
  %16 = load i32, ptr %15, align 8, !tbaa !12
  %17 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 2
  %18 = load ptr, ptr %17, align 8, !tbaa !12
  %19 = load ptr, ptr @uid_shuid, align 8, !tbaa !6
  %20 = sext i32 %16 to i64
  %21 = getelementptr inbounds i32, ptr %19, i64 %20
  %22 = load i32, ptr %21, align 4, !tbaa !10
  %23 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1
  %24 = load i32, ptr %23, align 8, !tbaa !12
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, ptr %19, i64 %25
  %27 = load i32, ptr %26, align 4, !tbaa !10
  %28 = icmp slt i32 %22, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %14
  %30 = load i32, ptr @insn_last_address, align 4, !tbaa !10
  %31 = load ptr, ptr @insn_lengths, align 8, !tbaa !6
  %32 = getelementptr inbounds i32, ptr %31, i64 %20
  %33 = load i32, ptr %32, align 4, !tbaa !10
  %34 = add nsw i32 %33, %30
  %35 = load i32, ptr @length_unit_log, align 4, !tbaa !10
  %36 = tail call fastcc i32 @align_fuzz(ptr noundef nonnull %8, ptr noundef nonnull %18, i32 noundef %35) #21
  %37 = sub i32 %34, %36
  br label %43

38:                                               ; preds = %14
  %39 = load i32, ptr @insn_current_address, align 4, !tbaa !10
  %40 = load i32, ptr @length_unit_log, align 4, !tbaa !10
  %41 = tail call fastcc i32 @align_fuzz(ptr noundef nonnull %18, ptr noundef nonnull %8, i32 noundef %40) #21
  %42 = add nsw i32 %41, %39
  br label %43

43:                                               ; preds = %1, %38, %29, %12
  %44 = phi i32 [ %37, %29 ], [ %42, %38 ], [ %13, %12 ], [ 0, %1 ]
  ret i32 %44
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @align_fuzz(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #9 {
  %4 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !12
  %6 = load ptr, ptr @uid_shuid, align 8, !tbaa !6
  %7 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !12
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i32, ptr %6, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !10
  %12 = load ptr, ptr @uid_align, align 8, !tbaa !6
  %13 = sext i32 %5 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !6
  %16 = icmp eq ptr %15, null
  br i1 %16, label %60, label %17

17:                                               ; preds = %3
  %18 = shl nuw i32 1, %2
  %19 = load ptr, ptr @insn_addresses_, align 8
  %20 = tail call fastcc ptr @VEC_int_base_address(ptr noundef %19) #21
  %21 = load ptr, ptr @insn_lengths, align 8, !tbaa !6
  %22 = load ptr, ptr @label_align, align 8
  %23 = load i32, ptr @min_labelno, align 4
  br label %24

24:                                               ; preds = %17, %54
  %25 = phi ptr [ %15, %17 ], [ %58, %54 ]
  %26 = phi i32 [ 0, %17 ], [ %56, %54 ]
  %27 = phi i32 [ %18, %17 ], [ %55, %54 ]
  %28 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 0, i32 1
  %29 = load i32, ptr %28, align 8, !tbaa !12
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, ptr %20, i64 %30
  %32 = load i32, ptr %31, align 4, !tbaa !10
  %33 = getelementptr inbounds i32, ptr %21, i64 %30
  %34 = load i32, ptr %33, align 4, !tbaa !10
  %35 = getelementptr inbounds i32, ptr %6, i64 %30
  %36 = load i32, ptr %35, align 4, !tbaa !10
  %37 = icmp sgt i32 %36, %11
  br i1 %37, label %60, label %38

38:                                               ; preds = %24
  %39 = getelementptr inbounds %struct.rtx_def, ptr %25, i64 1, i32 1
  %40 = load i32, ptr %39, align 8, !tbaa !12
  %41 = sub nsw i32 %40, %23
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.label_alignment, ptr %22, i64 %42
  %44 = load i16, ptr %43, align 2, !tbaa !19
  %45 = zext nneg i16 %44 to i32
  %46 = shl nuw i32 1, %45
  %47 = icmp slt i32 %46, %27
  br i1 %47, label %54, label %48

48:                                               ; preds = %38
  %49 = xor i32 %34, -1
  %50 = add i32 %32, %49
  %51 = sub nsw i32 %46, %27
  %52 = and i32 %51, %50
  %53 = add i32 %52, %26
  br label %54

54:                                               ; preds = %48, %38
  %55 = phi i32 [ %27, %38 ], [ %46, %48 ]
  %56 = phi i32 [ %26, %38 ], [ %53, %48 ]
  %57 = getelementptr inbounds ptr, ptr %12, i64 %30
  %58 = load ptr, ptr %57, align 8, !tbaa !6
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %24, !llvm.loop !23

60:                                               ; preds = %54, %24, %3
  %61 = phi i32 [ 0, %3 ], [ %26, %24 ], [ %56, %54 ]
  ret i32 %61
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @VEC_int_base_address(ptr noundef readnone %0) unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  %3 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2
  %4 = select i1 %2, ptr null, ptr %3
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @compute_alignments() #6 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.edge_iterator, align 8
  %3 = load ptr, ptr @label_align, align 8, !tbaa !6
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %0
  tail call void @free(ptr noundef nonnull %3) #21
  store ptr null, ptr @label_align, align 8, !tbaa !6
  br label %6

6:                                                ; preds = %5, %0
  %7 = tail call i32 @max_label_num() #22
  store i32 %7, ptr @max_labelno, align 4, !tbaa !10
  %8 = tail call i32 @get_first_label_num() #22
  store i32 %8, ptr @min_labelno, align 4, !tbaa !10
  %9 = load i32, ptr @max_labelno, align 4, !tbaa !10
  %10 = sub i32 %9, %8
  %11 = add i32 %10, 1
  %12 = sext i32 %11 to i64
  %13 = tail call ptr @xcalloc(i64 noundef %12, i64 noundef 4) #22
  store ptr %13, ptr @label_align, align 8, !tbaa !6
  %14 = load i32, ptr @optimize, align 4, !tbaa !10
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %249, label %16

16:                                               ; preds = %6
  %17 = load ptr, ptr @cfun, align 8, !tbaa !6
  %18 = tail call zeroext i8 @optimize_function_for_size_p(ptr noundef %17) #22
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %249

20:                                               ; preds = %16
  %21 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %20
  tail call void @dump_flow_info(ptr noundef nonnull %21, i32 noundef 8) #22
  %24 = load ptr, ptr @dump_file, align 8, !tbaa !6
  tail call void @flow_loops_dump(ptr noundef %24, ptr noundef null, i32 noundef 1) #22
  tail call void @loop_optimizer_init(i32 noundef 16) #22
  br label %25

25:                                               ; preds = %23, %20
  %26 = load ptr, ptr @cfun, align 8, !tbaa !6
  %27 = getelementptr inbounds %struct.function, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !24
  %29 = load ptr, ptr %28, align 8, !tbaa !26
  %30 = getelementptr inbounds %struct.control_flow_graph, ptr %28, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !28
  %32 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 6
  %33 = load ptr, ptr %32, align 8, !tbaa !29
  %34 = icmp eq ptr %33, %31
  br i1 %34, label %44, label %35

35:                                               ; preds = %25, %35
  %36 = phi ptr [ %42, %35 ], [ %33, %25 ]
  %37 = phi i32 [ %40, %35 ], [ 0, %25 ]
  %38 = getelementptr inbounds %struct.basic_block_def, ptr %36, i64 0, i32 11
  %39 = load i32, ptr %38, align 8, !tbaa !32
  %40 = tail call i32 @llvm.smax.i32(i32 %39, i32 %37)
  %41 = getelementptr inbounds %struct.basic_block_def, ptr %36, i64 0, i32 6
  %42 = load ptr, ptr %41, align 8, !tbaa !29
  %43 = icmp eq ptr %42, %31
  br i1 %43, label %44, label %35, !llvm.loop !33

44:                                               ; preds = %35, %25
  %45 = phi i32 [ 0, %25 ], [ %40, %35 ]
  %46 = load ptr, ptr @compiler_params, align 8, !tbaa !6
  %47 = getelementptr inbounds %struct.param_info, ptr %46, i64 44, i32 1
  %48 = load i32, ptr %47, align 8, !tbaa !34
  %49 = sdiv i32 %45, %48
  %50 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %51 = icmp eq ptr %50, null
  br i1 %51, label %62, label %52

52:                                               ; preds = %44
  %53 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %50, ptr noundef nonnull @.str.2, i32 noundef %45) #21
  %54 = load ptr, ptr @cfun, align 8, !tbaa !6
  %55 = getelementptr inbounds %struct.function, ptr %54, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !24
  %57 = load ptr, ptr %56, align 8, !tbaa !26
  %58 = getelementptr inbounds %struct.basic_block_def, ptr %57, i64 0, i32 6
  %59 = load ptr, ptr %58, align 8, !tbaa !29
  %60 = getelementptr inbounds %struct.control_flow_graph, ptr %56, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !28
  br label %62

62:                                               ; preds = %52, %44
  %63 = phi ptr [ %61, %52 ], [ %31, %44 ]
  %64 = phi ptr [ %59, %52 ], [ %33, %44 ]
  %65 = icmp eq ptr %64, %63
  br i1 %65, label %245, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds i8, ptr %2, i64 8
  br label %68

68:                                               ; preds = %66, %236
  %69 = phi ptr [ %64, %66 ], [ %238, %236 ]
  %70 = getelementptr inbounds %struct.basic_block_def, ptr %69, i64 0, i32 7
  %71 = load ptr, ptr %70, align 8, !tbaa !12
  %72 = load ptr, ptr %71, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #23
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #23
  %73 = load i32, ptr %72, align 8
  %74 = and i32 %73, 65535
  %75 = icmp eq i32 %74, 12
  br i1 %75, label %76, label %79

76:                                               ; preds = %68
  %77 = tail call zeroext i8 @optimize_bb_for_size_p(ptr noundef nonnull %69) #22
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %93, label %79

79:                                               ; preds = %76, %68
  %80 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %81 = icmp eq ptr %80, null
  br i1 %81, label %236, label %82

82:                                               ; preds = %79
  %83 = getelementptr inbounds %struct.basic_block_def, ptr %69, i64 0, i32 9
  %84 = load i32, ptr %83, align 8, !tbaa !38
  %85 = getelementptr inbounds %struct.basic_block_def, ptr %69, i64 0, i32 11
  %86 = load i32, ptr %85, align 8, !tbaa !32
  %87 = getelementptr inbounds %struct.basic_block_def, ptr %69, i64 0, i32 3
  %88 = load ptr, ptr %87, align 8, !tbaa !39
  %89 = load i32, ptr %88, align 8, !tbaa !40
  %90 = getelementptr inbounds %struct.basic_block_def, ptr %69, i64 0, i32 10
  %91 = load i32, ptr %90, align 4, !tbaa !44
  %92 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %80, ptr noundef nonnull @.str.3, i32 noundef %84, i32 noundef %86, i32 noundef %89, i32 noundef %91) #21
  br label %236

93:                                               ; preds = %76
  %94 = load i32, ptr @align_labels_log, align 4, !tbaa !10
  %95 = load i32, ptr @align_labels_max_skip, align 4, !tbaa !10
  %96 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %69) #21
  store i32 0, ptr %2, align 8, !tbaa.struct !45
  store ptr %96, ptr %67, align 8, !tbaa.struct !46
  %97 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %96, ptr noundef nonnull %1) #21, !range !47
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %125, label %99

99:                                               ; preds = %93, %99
  %100 = phi i32 [ %120, %99 ], [ 0, %93 ]
  %101 = phi i32 [ %119, %99 ], [ 0, %93 ]
  %102 = phi i32 [ %117, %99 ], [ 0, %93 ]
  %103 = load ptr, ptr %1, align 8, !tbaa !6
  %104 = getelementptr inbounds %struct.edge_def, ptr %103, i64 0, i32 7
  %105 = load i32, ptr %104, align 8, !tbaa !48
  %106 = and i32 %105, 1
  %107 = icmp eq i32 %106, 0
  %108 = load ptr, ptr %103, align 8, !tbaa !50
  %109 = getelementptr inbounds %struct.basic_block_def, ptr %108, i64 0, i32 11
  %110 = load i32, ptr %109, align 8, !tbaa !32
  %111 = getelementptr inbounds %struct.edge_def, ptr %103, i64 0, i32 8
  %112 = load i32, ptr %111, align 4, !tbaa !51
  %113 = mul nsw i32 %112, %110
  %114 = add nsw i32 %113, 5000
  %115 = sdiv i32 %114, 10000
  %116 = select i1 %107, i32 0, i32 %115
  %117 = add nsw i32 %102, %116
  %118 = select i1 %107, i32 %115, i32 0
  %119 = add nsw i32 %101, %118
  %120 = select i1 %107, i32 %100, i32 1
  call fastcc void @ei_next(ptr noundef nonnull %2) #21
  %121 = load i32, ptr %2, align 8
  %122 = load ptr, ptr %67, align 8
  %123 = call fastcc zeroext i8 @ei_cond(i32 %121, ptr %122, ptr noundef nonnull %1) #21, !range !47
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %125, label %99, !llvm.loop !52

125:                                              ; preds = %99, %93
  %126 = phi i32 [ 0, %93 ], [ %117, %99 ]
  %127 = phi i32 [ 0, %93 ], [ %119, %99 ]
  %128 = phi i32 [ 0, %93 ], [ %120, %99 ]
  %129 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %130 = icmp eq ptr %129, null
  br i1 %130, label %164, label %131

131:                                              ; preds = %125
  %132 = getelementptr inbounds %struct.basic_block_def, ptr %69, i64 0, i32 9
  %133 = load i32, ptr %132, align 8, !tbaa !38
  %134 = getelementptr inbounds %struct.basic_block_def, ptr %69, i64 0, i32 11
  %135 = load i32, ptr %134, align 8, !tbaa !32
  %136 = getelementptr inbounds %struct.basic_block_def, ptr %69, i64 0, i32 3
  %137 = load ptr, ptr %136, align 8, !tbaa !39
  %138 = load i32, ptr %137, align 8, !tbaa !40
  %139 = getelementptr inbounds %struct.basic_block_def, ptr %69, i64 0, i32 10
  %140 = load i32, ptr %139, align 4, !tbaa !44
  %141 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %129, ptr noundef nonnull @.str.4, i32 noundef %133, i32 noundef %135, i32 noundef %138, i32 noundef %140, i32 noundef %126, i32 noundef %127) #21
  %142 = load ptr, ptr %136, align 8, !tbaa !39
  %143 = getelementptr inbounds %struct.loop, ptr %142, i64 0, i32 8
  %144 = load ptr, ptr %143, align 8, !tbaa !53
  %145 = icmp eq ptr %144, null
  br i1 %145, label %146, label %153

146:                                              ; preds = %131
  %147 = load i32, ptr %142, align 8, !tbaa !40
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %153, label %149

149:                                              ; preds = %146
  %150 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %151 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 11, i64 1, ptr %150)
  %152 = load ptr, ptr %136, align 8, !tbaa !39
  br label %153

153:                                              ; preds = %149, %146, %131
  %154 = phi ptr [ %152, %149 ], [ %142, %146 ], [ %142, %131 ]
  %155 = getelementptr inbounds %struct.loop, ptr %154, i64 0, i32 2
  %156 = load ptr, ptr %155, align 8, !tbaa !54
  %157 = icmp eq ptr %156, %69
  br i1 %157, label %158, label %161

158:                                              ; preds = %153
  %159 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %160 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 12, i64 1, ptr %159)
  br label %161

161:                                              ; preds = %158, %153
  %162 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %163 = tail call i32 @fputc(i32 10, ptr %162)
  br label %164

164:                                              ; preds = %161, %125
  %165 = icmp eq i32 %128, 0
  br i1 %165, label %166, label %197

166:                                              ; preds = %164
  %167 = icmp sgt i32 %127, %49
  br i1 %167, label %186, label %168

168:                                              ; preds = %166
  %169 = getelementptr inbounds %struct.basic_block_def, ptr %69, i64 0, i32 11
  %170 = load i32, ptr %169, align 8, !tbaa !32
  %171 = getelementptr inbounds %struct.basic_block_def, ptr %69, i64 0, i32 5
  %172 = load ptr, ptr %171, align 8, !tbaa !55
  %173 = getelementptr inbounds %struct.basic_block_def, ptr %172, i64 0, i32 11
  %174 = load i32, ptr %173, align 8, !tbaa !32
  %175 = mul nsw i32 %174, 10
  %176 = icmp sgt i32 %170, %175
  br i1 %176, label %177, label %220

177:                                              ; preds = %168
  %178 = load ptr, ptr @cfun, align 8, !tbaa !6
  %179 = getelementptr inbounds %struct.function, ptr %178, i64 0, i32 1
  %180 = load ptr, ptr %179, align 8, !tbaa !24
  %181 = load ptr, ptr %180, align 8, !tbaa !26
  %182 = getelementptr inbounds %struct.basic_block_def, ptr %181, i64 0, i32 11
  %183 = load i32, ptr %182, align 8, !tbaa !32
  %184 = sdiv i32 %183, 2
  %185 = icmp sgt i32 %174, %184
  br i1 %185, label %220, label %186

186:                                              ; preds = %177, %166
  %187 = load i32, ptr @align_jumps_log, align 4, !tbaa !10
  %188 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %189 = icmp eq ptr %188, null
  br i1 %189, label %192, label %190

190:                                              ; preds = %186
  %191 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 24, i64 1, ptr nonnull %188)
  br label %192

192:                                              ; preds = %190, %186
  %193 = icmp slt i32 %94, %187
  %194 = load i32, ptr @align_jumps_max_skip, align 4
  %195 = tail call i32 @llvm.smax.i32(i32 %94, i32 %187)
  %196 = select i1 %193, i32 %194, i32 %95
  br label %220

197:                                              ; preds = %164
  %198 = tail call zeroext i8 @optimize_bb_for_speed_p(ptr noundef %69) #22
  %199 = icmp ne i8 %198, 0
  %200 = add nsw i32 %127, %126
  %201 = icmp sgt i32 %200, %49
  %202 = select i1 %199, i1 %201, i1 false
  br i1 %202, label %203, label %220

203:                                              ; preds = %197
  %204 = load ptr, ptr @compiler_params, align 8, !tbaa !6
  %205 = getelementptr inbounds %struct.param_info, ptr %204, i64 45, i32 1
  %206 = load i32, ptr %205, align 8, !tbaa !34
  %207 = mul nsw i32 %206, %126
  %208 = icmp sgt i32 %127, %207
  br i1 %208, label %209, label %220

209:                                              ; preds = %203
  %210 = load i32, ptr @align_loops_log, align 4, !tbaa !10
  %211 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %212 = icmp eq ptr %211, null
  br i1 %212, label %215, label %213

213:                                              ; preds = %209
  %214 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 33, i64 1, ptr nonnull %211)
  br label %215

215:                                              ; preds = %213, %209
  %216 = icmp slt i32 %94, %210
  %217 = load i32, ptr @align_loops_max_skip, align 4
  %218 = tail call i32 @llvm.smax.i32(i32 %94, i32 %210)
  %219 = select i1 %216, i32 %217, i32 %95
  br label %220

220:                                              ; preds = %168, %177, %192, %215, %203, %197
  %221 = phi i32 [ %94, %203 ], [ %94, %197 ], [ %218, %215 ], [ %195, %192 ], [ %94, %168 ], [ %94, %177 ]
  %222 = phi i32 [ %95, %203 ], [ %95, %197 ], [ %219, %215 ], [ %196, %192 ], [ %95, %168 ], [ %95, %177 ]
  %223 = trunc i32 %221 to i16
  %224 = load ptr, ptr @label_align, align 8, !tbaa !6
  %225 = getelementptr inbounds %struct.rtx_def, ptr %72, i64 1, i32 1
  %226 = load i32, ptr %225, align 8, !tbaa !12
  %227 = load i32, ptr @min_labelno, align 4, !tbaa !10
  %228 = sub nsw i32 %226, %227
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.label_alignment, ptr %224, i64 %229
  store i16 %223, ptr %230, align 2, !tbaa !19
  %231 = trunc i32 %222 to i16
  %232 = load i32, ptr %225, align 8, !tbaa !12
  %233 = sub nsw i32 %232, %227
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds %struct.label_alignment, ptr %224, i64 %234, i32 1
  store i16 %231, ptr %235, align 2, !tbaa !22
  br label %236

236:                                              ; preds = %79, %82, %220
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #23
  %237 = getelementptr inbounds %struct.basic_block_def, ptr %69, i64 0, i32 6
  %238 = load ptr, ptr %237, align 8, !tbaa !29
  %239 = load ptr, ptr @cfun, align 8, !tbaa !6
  %240 = getelementptr inbounds %struct.function, ptr %239, i64 0, i32 1
  %241 = load ptr, ptr %240, align 8, !tbaa !24
  %242 = getelementptr inbounds %struct.control_flow_graph, ptr %241, i64 0, i32 1
  %243 = load ptr, ptr %242, align 8, !tbaa !28
  %244 = icmp eq ptr %238, %243
  br i1 %244, label %245, label %68, !llvm.loop !56

245:                                              ; preds = %236, %62
  %246 = load ptr, ptr @dump_file, align 8, !tbaa !6
  %247 = icmp eq ptr %246, null
  br i1 %247, label %249, label %248

248:                                              ; preds = %245
  tail call void @loop_optimizer_finalize() #22
  tail call void @free_dominance_info(i32 noundef 1) #22
  br label %249

249:                                              ; preds = %245, %248, %6, %16
  ret i32 0
}

; Function Attrs: optsize
declare i32 @max_label_num() local_unnamed_addr #7

; Function Attrs: optsize
declare i32 @get_first_label_num() local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare zeroext i8 @optimize_function_for_size_p(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @dump_flow_info(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @flow_loops_dump(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @loop_optimizer_init(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @optimize_bb_for_size_p(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #1 {
  ret ptr %0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #6 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #21, !range !47
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #21
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !6
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #6 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #21
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #21
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #21
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 738, ptr noundef nonnull @.str.11) #22
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !57
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !57
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @optimize_bb_for_speed_p(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @loop_optimizer_finalize() local_unnamed_addr #7

; Function Attrs: optsize
declare void @free_dominance_info(i32 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #6 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #21
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #21
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %8) #21
  %10 = icmp eq i32 %9, %0
  %11 = zext i1 %10 to i8
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #6 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #21
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #21
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #21
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #12 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !59
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 687, ptr noundef nonnull @.str.11) #22
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !6
  ret ptr %5
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #12 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !6
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @shorten_branches(ptr noundef %0) local_unnamed_addr #6 {
  %2 = alloca [16 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %2) #23
  %3 = tail call i32 @get_max_uid() #22
  %4 = load ptr, ptr @uid_shuid, align 8, !tbaa !6
  tail call void @free(ptr noundef %4) #21
  %5 = sext i32 %3 to i64
  %6 = shl nsw i64 %5, 2
  %7 = tail call ptr @xmalloc(i64 noundef %6) #22
  store ptr %7, ptr @uid_shuid, align 8, !tbaa !6
  %8 = load i32, ptr @max_labelno, align 4, !tbaa !10
  %9 = tail call i32 @max_label_num() #22
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %33, label %11

11:                                               ; preds = %1
  %12 = load i32, ptr @max_labelno, align 4, !tbaa !10
  %13 = tail call i32 @max_label_num() #22
  store i32 %13, ptr @max_labelno, align 4, !tbaa !10
  %14 = load i32, ptr @min_labelno, align 4, !tbaa !10
  %15 = sub nsw i32 %13, %14
  %16 = add nsw i32 %15, 1
  %17 = sub nsw i32 %12, %14
  %18 = load ptr, ptr @label_align, align 8, !tbaa !6
  %19 = sext i32 %16 to i64
  %20 = shl nsw i64 %19, 2
  %21 = tail call ptr @xrealloc(ptr noundef %18, i64 noundef %20) #22
  store ptr %21, ptr @label_align, align 8, !tbaa !6
  %22 = icmp sgt i32 %12, %13
  br i1 %22, label %23, label %25

23:                                               ; preds = %11
  tail call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 888, ptr noundef nonnull @.str.11) #22
  %24 = load ptr, ptr @label_align, align 8, !tbaa !6
  br label %25

25:                                               ; preds = %11, %23
  %26 = phi ptr [ %21, %11 ], [ %24, %23 ]
  %27 = sext i32 %17 to i64
  %28 = getelementptr %struct.label_alignment, ptr %26, i64 %27
  %29 = getelementptr %struct.label_alignment, ptr %28, i64 1
  %30 = sub i32 %15, %17
  %31 = sext i32 %30 to i64
  %32 = shl nsw i64 %31, 2
  tail call void @llvm.memset.p0.i64(ptr align 2 %29, i8 0, i64 %32, i1 false)
  br label %33

33:                                               ; preds = %25, %1
  %34 = tail call ptr @get_insns() #22
  %35 = icmp eq ptr %34, null
  br i1 %35, label %113, label %36

36:                                               ; preds = %33, %109
  %37 = phi ptr [ %111, %109 ], [ %34, %33 ]
  %38 = phi i32 [ %39, %109 ], [ 1, %33 ]
  %39 = add nuw nsw i32 %38, 1
  %40 = load ptr, ptr @uid_shuid, align 8, !tbaa !6
  %41 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 0, i32 1
  %42 = load i32, ptr %41, align 8, !tbaa !12
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, ptr %40, i64 %43
  store i32 %38, ptr %44, align 4, !tbaa !10
  %45 = load i32, ptr %37, align 8
  %46 = and i32 %45, 65535
  %47 = icmp eq i32 %46, 12
  br i1 %47, label %48, label %109

48:                                               ; preds = %36
  %49 = load ptr, ptr @label_align, align 8, !tbaa !6
  %50 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 1, i32 1
  %51 = load i32, ptr %50, align 8, !tbaa !12
  %52 = load i32, ptr @min_labelno, align 4, !tbaa !10
  %53 = sub nsw i32 %51, %52
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.label_alignment, ptr %49, i64 %54
  %56 = load i16, ptr %55, align 2, !tbaa !19
  %57 = icmp sgt i16 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %48
  %59 = zext nneg i16 %56 to i32
  %60 = getelementptr inbounds %struct.label_alignment, ptr %49, i64 %54, i32 1
  %61 = load i16, ptr %60, align 2, !tbaa !22
  %62 = zext i16 %61 to i32
  br label %63

63:                                               ; preds = %58, %48
  %64 = phi i32 [ %62, %58 ], [ 0, %48 ]
  %65 = phi i32 [ %59, %58 ], [ 0, %48 ]
  %66 = tail call ptr @next_nonnote_insn(ptr noundef nonnull %37) #22
  %67 = icmp eq ptr %66, null
  br i1 %67, label %78, label %68

68:                                               ; preds = %63
  %69 = load i32, ptr %66, align 8
  %70 = and i32 %69, 65535
  %71 = icmp eq i32 %70, 9
  br i1 %71, label %72, label %78

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.rtx_def, ptr %66, i64 1
  %74 = load ptr, ptr %73, align 8, !tbaa !12
  %75 = load i32, ptr %74, align 8
  %76 = and i32 %75, 65534
  %77 = icmp eq i32 %76, 20
  br i1 %77, label %84, label %78

78:                                               ; preds = %72, %63, %68
  %79 = load i32, ptr @align_labels_log, align 4, !tbaa !10
  %80 = icmp slt i32 %65, %79
  %81 = load i32, ptr @align_labels_max_skip, align 4
  %82 = select i1 %80, i32 %81, i32 %64
  %83 = tail call i32 @llvm.smax.i32(i32 %65, i32 %79)
  br label %94

84:                                               ; preds = %72
  %85 = load ptr, ptr @readonly_data_section, align 8, !tbaa !6
  %86 = load ptr, ptr @text_section, align 8, !tbaa !6
  %87 = icmp eq ptr %85, %86
  br i1 %87, label %88, label %94

88:                                               ; preds = %84
  %89 = tail call fastcc i32 @final_addr_vec_align(ptr noundef nonnull %66) #21
  %90 = icmp slt i32 %65, %89
  %91 = load i32, ptr @align_labels_max_skip, align 4
  %92 = select i1 %90, i32 %91, i32 %64
  %93 = tail call i32 @llvm.smax.i32(i32 %65, i32 %89)
  br label %94

94:                                               ; preds = %78, %88, %84
  %95 = phi i32 [ %64, %84 ], [ %92, %88 ], [ %82, %78 ]
  %96 = phi i32 [ %65, %84 ], [ %93, %88 ], [ %83, %78 ]
  %97 = trunc i32 %96 to i16
  %98 = load ptr, ptr @label_align, align 8, !tbaa !6
  %99 = load i32, ptr %50, align 8, !tbaa !12
  %100 = load i32, ptr @min_labelno, align 4, !tbaa !10
  %101 = sub nsw i32 %99, %100
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.label_alignment, ptr %98, i64 %102
  store i16 %97, ptr %103, align 2, !tbaa !19
  %104 = trunc i32 %95 to i16
  %105 = load i32, ptr %50, align 8, !tbaa !12
  %106 = sub nsw i32 %105, %100
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.label_alignment, ptr %98, i64 %107, i32 1
  store i16 %104, ptr %108, align 2, !tbaa !22
  br label %109

109:                                              ; preds = %36, %94
  %110 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 0, i32 1, i32 0, i32 0, i64 2
  %111 = load ptr, ptr %110, align 8, !tbaa !12
  %112 = icmp eq ptr %111, null
  br i1 %112, label %113, label %36, !llvm.loop !61

113:                                              ; preds = %109, %33
  %114 = tail call ptr @xmalloc(i64 noundef %6) #22
  store ptr %114, ptr @insn_lengths, align 8, !tbaa !6
  store i32 %3, ptr @insn_lengths_max_uid, align 4, !tbaa !10
  %115 = tail call fastcc ptr @VEC_int_heap_alloc(i32 noundef %3) #21
  store ptr %115, ptr @insn_addresses_, align 8, !tbaa !6
  tail call fastcc void @VEC_int_heap_safe_grow(i32 noundef %3) #21
  %116 = load ptr, ptr @insn_addresses_, align 8
  %117 = tail call fastcc ptr @VEC_int_base_address(ptr noundef %116) #21
  tail call void @llvm.memset.p0.i64(ptr align 4 %117, i8 0, i64 %6, i1 false)
  %118 = tail call ptr @xcalloc(i64 noundef %5, i64 noundef 1) #22
  %119 = tail call ptr @xcalloc(i64 noundef %5, i64 noundef 8) #22
  store ptr %119, ptr @uid_align, align 8, !tbaa !6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %2, i8 0, i64 128, i1 false), !tbaa !6
  %120 = tail call ptr @get_last_insn() #22
  %121 = icmp eq ptr %120, null
  br i1 %121, label %164, label %122

122:                                              ; preds = %113
  %123 = load ptr, ptr @uid_align, align 8
  %124 = load ptr, ptr @label_align, align 8
  %125 = load i32, ptr @min_labelno, align 4
  br label %126

126:                                              ; preds = %122, %160
  %127 = phi ptr [ %120, %122 ], [ %162, %160 ]
  %128 = getelementptr inbounds %struct.rtx_def, ptr %127, i64 0, i32 1
  %129 = load i32, ptr %128, align 8, !tbaa !12
  %130 = load i32, ptr %127, align 8
  %131 = and i32 %130, 65535
  %132 = icmp eq i32 %131, 12
  br i1 %132, label %137, label %133

133:                                              ; preds = %126
  %134 = load ptr, ptr %2, align 16, !tbaa !6
  %135 = sext i32 %129 to i64
  %136 = getelementptr inbounds ptr, ptr %123, i64 %135
  store ptr %134, ptr %136, align 8, !tbaa !6
  br label %160

137:                                              ; preds = %126
  %138 = getelementptr inbounds %struct.rtx_def, ptr %127, i64 1, i32 1
  %139 = load i32, ptr %138, align 8, !tbaa !12
  %140 = sub nsw i32 %139, %125
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.label_alignment, ptr %124, i64 %141
  %143 = load i16, ptr %142, align 2, !tbaa !19
  %144 = load ptr, ptr %2, align 16, !tbaa !6
  %145 = sext i32 %129 to i64
  %146 = getelementptr inbounds ptr, ptr %123, i64 %145
  store ptr %144, ptr %146, align 8, !tbaa !6
  %147 = icmp eq i16 %143, 0
  br i1 %147, label %160, label %148

148:                                              ; preds = %137
  %149 = sext i16 %143 to i64
  %150 = getelementptr inbounds [16 x ptr], ptr %2, i64 0, i64 %149
  %151 = load ptr, ptr %150, align 8, !tbaa !6
  store ptr %151, ptr %146, align 8, !tbaa !6
  %152 = icmp sgt i16 %143, 0
  br i1 %152, label %153, label %160

153:                                              ; preds = %148
  %154 = zext nneg i16 %143 to i64
  br label %155

155:                                              ; preds = %153, %155
  %156 = phi i64 [ %154, %153 ], [ %157, %155 ]
  %157 = add nsw i64 %156, -1
  %158 = getelementptr inbounds [16 x ptr], ptr %2, i64 0, i64 %157
  store ptr %127, ptr %158, align 8, !tbaa !6
  %159 = icmp ugt i64 %156, 1
  br i1 %159, label %155, label %160, !llvm.loop !62

160:                                              ; preds = %155, %148, %133, %137
  %161 = getelementptr inbounds %struct.rtx_def, ptr %127, i64 0, i32 1, i32 0, i32 0, i64 1
  %162 = load ptr, ptr %161, align 8, !tbaa !12
  %163 = icmp eq ptr %162, null
  br i1 %163, label %164, label %126, !llvm.loop !63

164:                                              ; preds = %160, %113
  store i32 0, ptr @insn_current_address, align 4, !tbaa !10
  %165 = icmp eq ptr %0, null
  br i1 %165, label %168, label %166

166:                                              ; preds = %164
  %167 = load ptr, ptr @insn_lengths, align 8, !tbaa !6
  br label %170

168:                                              ; preds = %296, %164
  %169 = load i32, ptr @length_unit_log, align 4
  br label %305

170:                                              ; preds = %166, %296
  %171 = phi ptr [ %297, %296 ], [ %167, %166 ]
  %172 = phi ptr [ %303, %296 ], [ %0, %166 ]
  %173 = getelementptr inbounds %struct.rtx_def, ptr %172, i64 0, i32 1
  %174 = load i32, ptr %173, align 8, !tbaa !12
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, ptr %171, i64 %175
  store i32 0, ptr %176, align 4, !tbaa !10
  %177 = load i32, ptr %172, align 8
  %178 = and i32 %177, 65535
  %179 = icmp eq i32 %178, 12
  br i1 %179, label %180, label %199

180:                                              ; preds = %170
  %181 = load ptr, ptr @label_align, align 8, !tbaa !6
  %182 = getelementptr inbounds %struct.rtx_def, ptr %172, i64 1, i32 1
  %183 = load i32, ptr %182, align 8, !tbaa !12
  %184 = load i32, ptr @min_labelno, align 4, !tbaa !10
  %185 = sub nsw i32 %183, %184
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.label_alignment, ptr %181, i64 %186
  %188 = load i16, ptr %187, align 2, !tbaa !19
  %189 = icmp eq i16 %188, 0
  br i1 %189, label %199, label %190

190:                                              ; preds = %180
  %191 = zext nneg i16 %188 to i32
  %192 = shl nuw i32 1, %191
  %193 = load i32, ptr @insn_current_address, align 4, !tbaa !10
  %194 = add i32 %192, -1
  %195 = add i32 %194, %193
  %196 = sub nsw i32 0, %192
  %197 = and i32 %195, %196
  %198 = sub nsw i32 %197, %193
  store i32 %198, ptr %176, align 4, !tbaa !10
  br label %199

199:                                              ; preds = %180, %190, %170
  %200 = phi i32 [ 0, %180 ], [ %198, %190 ], [ 0, %170 ]
  %201 = load i32, ptr @insn_current_address, align 4, !tbaa !10
  %202 = add nsw i32 %200, %201
  %203 = load ptr, ptr @insn_addresses_, align 8
  %204 = tail call fastcc ptr @VEC_int_base_address(ptr noundef %203) #21
  %205 = getelementptr inbounds i32, ptr %204, i64 %175
  store i32 %202, ptr %205, align 4, !tbaa !10
  %206 = load i32, ptr %172, align 8
  %207 = trunc i32 %206 to i16
  switch i16 %207, label %208 [
    i16 13, label %296
    i16 11, label %296
    i16 12, label %296
    i16 7, label %296
  ]

208:                                              ; preds = %199
  %209 = and i32 %206, 134217728
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %211, label %296

211:                                              ; preds = %208
  %212 = getelementptr inbounds %struct.rtx_def, ptr %172, i64 1
  %213 = load ptr, ptr %212, align 8, !tbaa !12
  %214 = load i32, ptr %213, align 8
  %215 = and i32 %214, 65535
  %216 = trunc i32 %214 to i16
  switch i16 %216, label %235 [
    i16 20, label %217
    i16 21, label %217
    i16 16, label %238
  ]

217:                                              ; preds = %211, %211
  %218 = load ptr, ptr @readonly_data_section, align 8, !tbaa !6
  %219 = load ptr, ptr @text_section, align 8, !tbaa !6
  %220 = icmp eq ptr %218, %219
  br i1 %220, label %221, label %296

221:                                              ; preds = %217
  %222 = getelementptr inbounds %struct.rtx_def, ptr %213, i64 0, i32 1
  %223 = icmp eq i32 %215, 21
  %224 = zext i1 %223 to i64
  %225 = getelementptr inbounds [1 x %union.rtunion_def], ptr %222, i64 0, i64 %224
  %226 = load ptr, ptr %225, align 8, !tbaa !12
  %227 = load i32, ptr %226, align 8, !tbaa !14
  %228 = lshr i32 %214, 16
  %229 = and i32 %228, 255
  %230 = zext nneg i32 %229 to i64
  %231 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %230
  %232 = load i8, ptr %231, align 1, !tbaa !12
  %233 = zext i8 %232 to i32
  %234 = mul nsw i32 %227, %233
  store i32 %234, ptr %176, align 4, !tbaa !10
  br label %296

235:                                              ; preds = %211
  %236 = tail call i32 @asm_noperands(ptr noundef nonnull %213) #22
  %237 = icmp sgt i32 %236, -1
  br i1 %237, label %238, label %244

238:                                              ; preds = %211, %235
  %239 = tail call fastcc i32 @asm_insn_count(ptr noundef nonnull %213) #21
  %240 = tail call i32 @insn_default_length(ptr noundef nonnull %172) #22
  %241 = mul nsw i32 %240, %239
  %242 = load ptr, ptr @insn_lengths, align 8, !tbaa !6
  %243 = getelementptr inbounds i32, ptr %242, i64 %175
  store i32 %241, ptr %243, align 4, !tbaa !10
  br label %296

244:                                              ; preds = %235
  %245 = load i32, ptr %213, align 8
  %246 = trunc i32 %245 to i16
  switch i16 %246, label %289 [
    i16 5, label %247
    i16 24, label %296
    i16 25, label %296
  ]

247:                                              ; preds = %244
  %248 = getelementptr inbounds %struct.rtx_def, ptr %213, i64 0, i32 1
  %249 = load ptr, ptr %248, align 8, !tbaa !12
  %250 = load i32, ptr %249, align 8, !tbaa !14
  %251 = icmp sgt i32 %250, 0
  br i1 %251, label %252, label %296

252:                                              ; preds = %247, %275
  %253 = phi i64 [ %284, %275 ], [ 0, %247 ]
  %254 = phi ptr [ %285, %275 ], [ %249, %247 ]
  %255 = getelementptr inbounds %struct.rtvec_def, ptr %254, i64 0, i32 1, i64 %253
  %256 = load ptr, ptr %255, align 8, !tbaa !6
  %257 = getelementptr inbounds %struct.rtx_def, ptr %256, i64 0, i32 1
  %258 = load i32, ptr %257, align 8, !tbaa !12
  %259 = load i32, ptr %213, align 8
  %260 = and i32 %259, 65535
  %261 = icmp eq i32 %260, 16
  br i1 %261, label %267, label %262

262:                                              ; preds = %252
  %263 = getelementptr inbounds %struct.rtx_def, ptr %256, i64 1
  %264 = load ptr, ptr %263, align 8, !tbaa !12
  %265 = tail call i32 @asm_noperands(ptr noundef %264) #22
  %266 = icmp sgt i32 %265, -1
  br i1 %266, label %267, label %273

267:                                              ; preds = %262, %252
  %268 = getelementptr inbounds %struct.rtx_def, ptr %256, i64 1
  %269 = load ptr, ptr %268, align 8, !tbaa !12
  %270 = tail call fastcc i32 @asm_insn_count(ptr noundef %269) #21
  %271 = tail call i32 @insn_default_length(ptr noundef nonnull %256) #22
  %272 = mul nsw i32 %271, %270
  br label %275

273:                                              ; preds = %262
  %274 = tail call i32 @insn_default_length(ptr noundef nonnull %256) #22
  br label %275

275:                                              ; preds = %273, %267
  %276 = phi i32 [ %272, %267 ], [ %274, %273 ]
  %277 = load ptr, ptr @insn_lengths, align 8, !tbaa !6
  %278 = sext i32 %258 to i64
  %279 = getelementptr inbounds i32, ptr %277, i64 %278
  store i32 %276, ptr %279, align 4, !tbaa !10
  %280 = getelementptr inbounds i8, ptr %118, i64 %278
  store i8 0, ptr %280, align 1, !tbaa !12
  %281 = getelementptr inbounds i32, ptr %277, i64 %175
  %282 = load i32, ptr %281, align 4, !tbaa !10
  %283 = add nsw i32 %282, %276
  store i32 %283, ptr %281, align 4, !tbaa !10
  %284 = add nuw nsw i64 %253, 1
  %285 = load ptr, ptr %248, align 8, !tbaa !12
  %286 = load i32, ptr %285, align 8, !tbaa !14
  %287 = sext i32 %286 to i64
  %288 = icmp slt i64 %284, %287
  br i1 %288, label %252, label %296, !llvm.loop !64

289:                                              ; preds = %244
  %290 = tail call i32 @insn_default_length(ptr noundef nonnull %172) #22
  %291 = load ptr, ptr @insn_lengths, align 8, !tbaa !6
  %292 = getelementptr inbounds i32, ptr %291, i64 %175
  store i32 %290, ptr %292, align 4, !tbaa !10
  %293 = tail call i32 @insn_variable_length_p(ptr noundef nonnull %172) #22
  %294 = trunc i32 %293 to i8
  %295 = getelementptr inbounds i8, ptr %118, i64 %175
  store i8 %294, ptr %295, align 1, !tbaa !12
  br label %296

296:                                              ; preds = %275, %247, %244, %244, %199, %199, %199, %199, %221, %217, %289, %238, %208
  %297 = load ptr, ptr @insn_lengths, align 8, !tbaa !6
  %298 = getelementptr inbounds i32, ptr %297, i64 %175
  %299 = load i32, ptr %298, align 4, !tbaa !10
  %300 = load i32, ptr @insn_current_address, align 4, !tbaa !10
  %301 = add nsw i32 %300, %299
  store i32 %301, ptr @insn_current_address, align 4, !tbaa !10
  %302 = getelementptr inbounds %struct.rtx_def, ptr %172, i64 0, i32 1, i32 0, i32 0, i64 2
  %303 = load ptr, ptr %302, align 8, !tbaa !12
  %304 = icmp eq ptr %303, null
  br i1 %304, label %168, label %170, !llvm.loop !65

305:                                              ; preds = %168, %475
  store i32 15, ptr @insn_current_align, align 4, !tbaa !10
  store i32 0, ptr @insn_current_address, align 4, !tbaa !10
  br i1 %165, label %480, label %306

306:                                              ; preds = %305, %470
  %307 = phi ptr [ %473, %470 ], [ %0, %305 ]
  %308 = phi i32 [ %471, %470 ], [ 0, %305 ]
  %309 = getelementptr inbounds %struct.rtx_def, ptr %307, i64 0, i32 1
  %310 = load i32, ptr %309, align 8, !tbaa !12
  %311 = load i32, ptr %307, align 8
  %312 = and i32 %311, 65535
  %313 = icmp eq i32 %312, 12
  br i1 %313, label %314, label %348

314:                                              ; preds = %306
  %315 = load ptr, ptr @label_align, align 8, !tbaa !6
  %316 = getelementptr inbounds %struct.rtx_def, ptr %307, i64 1, i32 1
  %317 = load i32, ptr %316, align 8, !tbaa !12
  %318 = load i32, ptr @min_labelno, align 4, !tbaa !10
  %319 = sub nsw i32 %317, %318
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds %struct.label_alignment, ptr %315, i64 %320
  %322 = load i16, ptr %321, align 2, !tbaa !19
  %323 = sext i16 %322 to i32
  %324 = load i32, ptr @insn_current_align, align 4, !tbaa !10
  %325 = icmp slt i32 %324, %323
  br i1 %325, label %326, label %337

326:                                              ; preds = %314
  %327 = shl nuw i32 1, %323
  %328 = load i32, ptr @insn_current_address, align 4, !tbaa !10
  %329 = add i32 %327, -1
  %330 = add i32 %329, %328
  %331 = sub nsw i32 0, %327
  %332 = and i32 %330, %331
  %333 = sub nsw i32 %332, %328
  %334 = load ptr, ptr @insn_lengths, align 8, !tbaa !6
  %335 = sext i32 %310 to i64
  %336 = getelementptr inbounds i32, ptr %334, i64 %335
  store i32 %333, ptr %336, align 4, !tbaa !10
  store i32 %323, ptr @insn_current_align, align 4, !tbaa !10
  store i32 %332, ptr @insn_current_address, align 4, !tbaa !10
  br label %342

337:                                              ; preds = %314
  %338 = load ptr, ptr @insn_lengths, align 8, !tbaa !6
  %339 = sext i32 %310 to i64
  %340 = getelementptr inbounds i32, ptr %338, i64 %339
  store i32 0, ptr %340, align 4, !tbaa !10
  %341 = load i32, ptr @insn_current_address, align 4, !tbaa !10
  br label %342

342:                                              ; preds = %337, %326
  %343 = phi i64 [ %339, %337 ], [ %335, %326 ]
  %344 = phi i32 [ %341, %337 ], [ %332, %326 ]
  %345 = load ptr, ptr @insn_addresses_, align 8
  %346 = tail call fastcc ptr @VEC_int_base_address(ptr noundef %345) #21
  %347 = getelementptr inbounds i32, ptr %346, i64 %343
  store i32 %344, ptr %347, align 4, !tbaa !10
  br label %470

348:                                              ; preds = %306
  %349 = load i32, ptr @insn_current_align, align 4, !tbaa !10
  %350 = icmp slt i32 %169, %349
  br i1 %350, label %351, label %352

351:                                              ; preds = %348
  store i32 %169, ptr @insn_current_align, align 4, !tbaa !10
  br label %352

352:                                              ; preds = %351, %348
  %353 = load ptr, ptr @insn_addresses_, align 8
  %354 = tail call fastcc ptr @VEC_int_base_address(ptr noundef %353) #21
  %355 = sext i32 %310 to i64
  %356 = getelementptr inbounds i32, ptr %354, i64 %355
  %357 = load i32, ptr %356, align 4, !tbaa !10
  store i32 %357, ptr @insn_last_address, align 4, !tbaa !10
  %358 = load i32, ptr @insn_current_address, align 4, !tbaa !10
  store i32 %358, ptr %356, align 4, !tbaa !10
  %359 = getelementptr inbounds i8, ptr %118, i64 %355
  %360 = load i8, ptr %359, align 1, !tbaa !12
  %361 = icmp eq i8 %360, 0
  %362 = load i32, ptr %307, align 8
  %363 = and i32 %362, 65535
  %364 = icmp eq i32 %363, 8
  br i1 %361, label %365, label %405

365:                                              ; preds = %352
  br i1 %364, label %366, label %400

366:                                              ; preds = %365
  %367 = getelementptr inbounds %struct.rtx_def, ptr %307, i64 1
  %368 = load ptr, ptr %367, align 8, !tbaa !12
  %369 = load i32, ptr %368, align 8
  %370 = and i32 %369, 65535
  %371 = icmp eq i32 %370, 5
  br i1 %371, label %372, label %400

372:                                              ; preds = %366
  %373 = getelementptr inbounds %struct.rtx_def, ptr %368, i64 0, i32 1
  %374 = load ptr, ptr %373, align 8, !tbaa !12
  %375 = load i32, ptr %374, align 8, !tbaa !14
  %376 = icmp sgt i32 %375, 0
  br i1 %376, label %377, label %470

377:                                              ; preds = %372
  %378 = load ptr, ptr @insn_lengths, align 8, !tbaa !6
  br label %379

379:                                              ; preds = %377, %379
  %380 = phi i32 [ %358, %377 ], [ %394, %379 ]
  %381 = phi i64 [ 0, %377 ], [ %395, %379 ]
  %382 = phi ptr [ %374, %377 ], [ %396, %379 ]
  %383 = getelementptr inbounds %struct.rtvec_def, ptr %382, i64 0, i32 1, i64 %381
  %384 = load ptr, ptr %383, align 8, !tbaa !6
  %385 = getelementptr inbounds %struct.rtx_def, ptr %384, i64 0, i32 1
  %386 = load i32, ptr %385, align 8, !tbaa !12
  %387 = load ptr, ptr @insn_addresses_, align 8
  %388 = tail call fastcc ptr @VEC_int_base_address(ptr noundef %387) #21
  %389 = sext i32 %386 to i64
  %390 = getelementptr inbounds i32, ptr %388, i64 %389
  store i32 %380, ptr %390, align 4, !tbaa !10
  %391 = getelementptr inbounds i32, ptr %378, i64 %389
  %392 = load i32, ptr %391, align 4, !tbaa !10
  %393 = load i32, ptr @insn_current_address, align 4, !tbaa !10
  %394 = add nsw i32 %393, %392
  store i32 %394, ptr @insn_current_address, align 4, !tbaa !10
  %395 = add nuw nsw i64 %381, 1
  %396 = load ptr, ptr %373, align 8, !tbaa !12
  %397 = load i32, ptr %396, align 8, !tbaa !14
  %398 = sext i32 %397 to i64
  %399 = icmp slt i64 %395, %398
  br i1 %399, label %379, label %470, !llvm.loop !66

400:                                              ; preds = %366, %365
  %401 = load ptr, ptr @insn_lengths, align 8, !tbaa !6
  %402 = getelementptr inbounds i32, ptr %401, i64 %355
  %403 = load i32, ptr %402, align 4, !tbaa !10
  %404 = add nsw i32 %358, %403
  store i32 %404, ptr @insn_current_address, align 4, !tbaa !10
  br label %470

405:                                              ; preds = %352
  br i1 %364, label %406, label %458

406:                                              ; preds = %405
  %407 = getelementptr inbounds %struct.rtx_def, ptr %307, i64 1
  %408 = load ptr, ptr %407, align 8, !tbaa !12
  %409 = load i32, ptr %408, align 8
  %410 = and i32 %409, 65535
  %411 = icmp eq i32 %410, 5
  br i1 %411, label %412, label %458

412:                                              ; preds = %406
  %413 = getelementptr inbounds %struct.rtx_def, ptr %408, i64 0, i32 1
  %414 = load ptr, ptr %413, align 8, !tbaa !12
  %415 = load i32, ptr %414, align 8, !tbaa !14
  %416 = icmp sgt i32 %415, 0
  br i1 %416, label %417, label %462

417:                                              ; preds = %412, %446
  %418 = phi i32 [ %451, %446 ], [ %358, %412 ]
  %419 = phi i64 [ %453, %446 ], [ 0, %412 ]
  %420 = phi ptr [ %454, %446 ], [ %414, %412 ]
  %421 = phi i32 [ %449, %446 ], [ %308, %412 ]
  %422 = phi i32 [ %452, %446 ], [ 0, %412 ]
  %423 = getelementptr inbounds %struct.rtvec_def, ptr %420, i64 0, i32 1, i64 %419
  %424 = load ptr, ptr %423, align 8, !tbaa !6
  %425 = getelementptr inbounds %struct.rtx_def, ptr %424, i64 0, i32 1
  %426 = load i32, ptr %425, align 8, !tbaa !12
  %427 = load ptr, ptr @insn_addresses_, align 8
  %428 = tail call fastcc ptr @VEC_int_base_address(ptr noundef %427) #21
  %429 = sext i32 %426 to i64
  %430 = getelementptr inbounds i32, ptr %428, i64 %429
  store i32 %418, ptr %430, align 4, !tbaa !10
  %431 = getelementptr inbounds i8, ptr %118, i64 %429
  %432 = load i8, ptr %431, align 1, !tbaa !12
  %433 = icmp eq i8 %432, 0
  br i1 %433, label %434, label %438

434:                                              ; preds = %417
  %435 = load ptr, ptr @insn_lengths, align 8, !tbaa !6
  %436 = getelementptr inbounds i32, ptr %435, i64 %429
  %437 = load i32, ptr %436, align 4, !tbaa !10
  br label %446

438:                                              ; preds = %417
  %439 = tail call i32 @insn_current_length(ptr noundef nonnull %424) #22
  %440 = load ptr, ptr @insn_lengths, align 8, !tbaa !6
  %441 = getelementptr inbounds i32, ptr %440, i64 %429
  %442 = load i32, ptr %441, align 4, !tbaa !10
  %443 = icmp eq i32 %439, %442
  br i1 %443, label %446, label %444

444:                                              ; preds = %438
  %445 = getelementptr inbounds i32, ptr %440, i64 %429
  store i32 %439, ptr %445, align 4, !tbaa !10
  br label %446

446:                                              ; preds = %434, %444, %438
  %447 = phi i32 [ %439, %444 ], [ %439, %438 ], [ %437, %434 ]
  %448 = phi i32 [ %439, %444 ], [ %442, %438 ], [ %437, %434 ]
  %449 = phi i32 [ 1, %444 ], [ %421, %438 ], [ %421, %434 ]
  %450 = load i32, ptr @insn_current_address, align 4, !tbaa !10
  %451 = add nsw i32 %450, %448
  store i32 %451, ptr @insn_current_address, align 4, !tbaa !10
  %452 = add nsw i32 %447, %422
  %453 = add nuw nsw i64 %419, 1
  %454 = load ptr, ptr %413, align 8, !tbaa !12
  %455 = load i32, ptr %454, align 8, !tbaa !14
  %456 = sext i32 %455 to i64
  %457 = icmp slt i64 %453, %456
  br i1 %457, label %417, label %462, !llvm.loop !67

458:                                              ; preds = %406, %405
  %459 = tail call i32 @insn_current_length(ptr noundef nonnull %307) #22
  %460 = load i32, ptr @insn_current_address, align 4, !tbaa !10
  %461 = add nsw i32 %460, %459
  store i32 %461, ptr @insn_current_address, align 4, !tbaa !10
  br label %462

462:                                              ; preds = %446, %412, %458
  %463 = phi i32 [ %459, %458 ], [ 0, %412 ], [ %452, %446 ]
  %464 = phi i32 [ %308, %458 ], [ %308, %412 ], [ %449, %446 ]
  %465 = load ptr, ptr @insn_lengths, align 8, !tbaa !6
  %466 = getelementptr inbounds i32, ptr %465, i64 %355
  %467 = load i32, ptr %466, align 4, !tbaa !10
  %468 = icmp eq i32 %463, %467
  br i1 %468, label %470, label %469

469:                                              ; preds = %462
  store i32 %463, ptr %466, align 4, !tbaa !10
  br label %470

470:                                              ; preds = %379, %372, %462, %469, %400, %342
  %471 = phi i32 [ %308, %342 ], [ %308, %400 ], [ 1, %469 ], [ %464, %462 ], [ %308, %372 ], [ %308, %379 ]
  %472 = getelementptr inbounds %struct.rtx_def, ptr %307, i64 0, i32 1, i32 0, i32 0, i64 2
  %473 = load ptr, ptr %472, align 8, !tbaa !12
  %474 = icmp eq ptr %473, null
  br i1 %474, label %475, label %306, !llvm.loop !68

475:                                              ; preds = %470
  %476 = load i32, ptr @optimize, align 4, !tbaa !10
  %477 = icmp ne i32 %476, 0
  %478 = icmp ne i32 %471, 0
  %479 = select i1 %477, i1 %478, i1 false
  br i1 %479, label %305, label %480, !llvm.loop !69

480:                                              ; preds = %305, %475
  tail call void @free(ptr noundef %118) #21
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %2) #23
  ret void
}

; Function Attrs: optsize
declare i32 @get_max_uid() local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

; Function Attrs: optsize
declare ptr @get_insns() local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @next_nonnote_insn(ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @final_addr_vec_align(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %3 = load ptr, ptr %2, align 8, !tbaa !12
  %4 = load i32, ptr %3, align 8
  %5 = lshr i32 %4, 16
  %6 = and i32 %5, 255
  %7 = zext nneg i32 %6 to i64
  %8 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %7
  %9 = load i8, ptr %8, align 1, !tbaa !12
  %10 = zext i8 %9 to i32
  %11 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !10
  %12 = and i32 %11, 32
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %13, i32 16, i32 32
  %15 = tail call i32 @llvm.umin.i32(i32 %14, i32 %10)
  %16 = zext nneg i32 %15 to i64
  %17 = tail call i32 @exact_log2(i64 noundef %16) #22
  ret i32 %17
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_int_heap_alloc(i32 noundef %0) unnamed_addr #6 {
  %2 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %0, i64 noundef 8, i64 noundef 4) #22
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_int_heap_safe_grow(i32 noundef %0) unnamed_addr #6 {
  %2 = load ptr, ptr @insn_addresses_, align 8, !tbaa !6
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %2, align 4, !tbaa !70
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi i32 [ %5, %4 ], [ 0, %1 ]
  %8 = sub nsw i32 %0, %7
  tail call fastcc void @VEC_int_heap_reserve_exact(i32 noundef %8) #21
  %9 = load ptr, ptr @insn_addresses_, align 8, !tbaa !6, !nonnull !72, !noundef !72
  store i32 %0, ptr %9, align 4, !tbaa !70
  ret void
}

; Function Attrs: optsize
declare ptr @get_last_insn() local_unnamed_addr #7

; Function Attrs: optsize
declare i32 @insn_variable_length_p(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare i32 @insn_current_length(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare i32 @exact_log2(i64 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @vec_heap_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_int_base_length(ptr noundef readonly %0) unnamed_addr #12 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 4, !tbaa !70
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_int_heap_reserve_exact(i32 noundef %0) unnamed_addr #6 {
  %2 = load ptr, ptr @insn_addresses_, align 8, !tbaa !6
  %3 = tail call fastcc i32 @VEC_int_base_space(ptr noundef %2, i32 noundef %0) #21, !range !73
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef %2, i32 noundef %0, i64 noundef 8, i64 noundef 4) #22
  store ptr %6, ptr @insn_addresses_, align 8, !tbaa !6
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_int_base_space(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #12 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !74
  %7 = load i32, ptr %0, align 4, !tbaa !70
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @add_debug_prefix_map(ptr noundef %0) local_unnamed_addr #6 {
  %2 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 61) #21
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.14, ptr noundef %0) #22
  br label %19

5:                                                ; preds = %1
  %6 = tail call ptr @xmalloc(i64 noundef 40) #22
  %7 = ptrtoint ptr %2 to i64
  %8 = ptrtoint ptr %0 to i64
  %9 = sub i64 %7, %8
  %10 = tail call ptr @xstrndup(ptr noundef %0, i64 noundef %9) #22
  store ptr %10, ptr %6, align 8, !tbaa !75
  %11 = getelementptr inbounds %struct.debug_prefix_map, ptr %6, i64 0, i32 2
  store i64 %9, ptr %11, align 8, !tbaa !77
  %12 = getelementptr inbounds i8, ptr %2, i64 1
  %13 = tail call ptr @xstrdup(ptr noundef nonnull %12) #22
  %14 = getelementptr inbounds %struct.debug_prefix_map, ptr %6, i64 0, i32 1
  store ptr %13, ptr %14, align 8, !tbaa !78
  %15 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %12) #21
  %16 = getelementptr inbounds %struct.debug_prefix_map, ptr %6, i64 0, i32 3
  store i64 %15, ptr %16, align 8, !tbaa !79
  %17 = load ptr, ptr @debug_prefix_maps, align 8, !tbaa !6
  %18 = getelementptr inbounds %struct.debug_prefix_map, ptr %6, i64 0, i32 4
  store ptr %17, ptr %18, align 8, !tbaa !80
  store ptr %6, ptr @debug_prefix_maps, align 8, !tbaa !6
  br label %19

19:                                               ; preds = %5, %4
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: optsize
declare void @error(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @xstrndup(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @xstrdup(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @remap_debug_filename(ptr noundef readonly %0) local_unnamed_addr #6 {
  %2 = load ptr, ptr @debug_prefix_maps, align 8, !tbaa !6
  %3 = icmp eq ptr %2, null
  br i1 %3, label %27, label %4

4:                                                ; preds = %1, %11
  %5 = phi ptr [ %13, %11 ], [ %2, %1 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !75
  %7 = getelementptr inbounds %struct.debug_prefix_map, ptr %5, i64 0, i32 2
  %8 = load i64, ptr %7, align 8, !tbaa !77
  %9 = tail call i32 @strncmp(ptr noundef %0, ptr noundef %6, i64 noundef %8) #21
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.debug_prefix_map, ptr %5, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !6
  %14 = icmp eq ptr %13, null
  br i1 %14, label %27, label %4, !llvm.loop !81

15:                                               ; preds = %4
  %16 = getelementptr inbounds i8, ptr %0, i64 %8
  %17 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %16) #21
  %18 = add i64 %17, 1
  %19 = getelementptr inbounds %struct.debug_prefix_map, ptr %5, i64 0, i32 3
  %20 = load i64, ptr %19, align 8, !tbaa !79
  %21 = add i64 %18, %20
  %22 = alloca i8, i64 %21, align 16
  %23 = getelementptr inbounds %struct.debug_prefix_map, ptr %5, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !78
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %22, ptr align 1 %24, i64 %20, i1 false)
  %25 = getelementptr inbounds i8, ptr %22, i64 %20
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %25, ptr align 1 %16, i64 %18, i1 false)
  %26 = call ptr @ggc_alloc_string(ptr noundef nonnull %22, i32 noundef -1) #22
  br label %27

27:                                               ; preds = %11, %1, %15
  %28 = phi ptr [ %26, %15 ], [ %0, %1 ], [ %0, %11 ]
  ret ptr %28
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: optsize
declare ptr @ggc_alloc_string(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @final_start_function(ptr nocapture readnone %0, ptr noundef %1, i32 %2) local_unnamed_addr #6 {
  store i32 0, ptr @block_depth, align 4, !tbaa !10
  store ptr null, ptr @this_is_asm_operands, align 8, !tbaa !6
  %4 = load i32, ptr @prologue_locator, align 4, !tbaa !10
  %5 = tail call ptr @locator_file(i32 noundef %4) #22
  store ptr %5, ptr @last_filename, align 8, !tbaa !6
  %6 = load i32, ptr @prologue_locator, align 4, !tbaa !10
  %7 = tail call i32 @locator_line(i32 noundef %6) #22
  store i32 %7, ptr @last_linenum, align 4, !tbaa !10
  store i32 0, ptr @discriminator, align 4, !tbaa !10
  store i32 0, ptr @last_discriminator, align 4, !tbaa !10
  store i32 %7, ptr @high_function_linenum, align 4, !tbaa !10
  store i32 %7, ptr @high_block_linenum, align 4, !tbaa !10
  %8 = load ptr, ptr @current_function_decl, align 8, !tbaa !6
  %9 = getelementptr inbounds %struct.tree_decl_common, ptr %8, i64 0, i32 2
  %10 = load i64, ptr %9, align 8
  %11 = and i64 %10, 1024
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load ptr, ptr @debug_hooks, align 8, !tbaa !6
  %15 = getelementptr inbounds %struct.gcc_debug_hooks, ptr %14, i64 0, i32 11
  %16 = load ptr, ptr %15, align 8, !tbaa !82
  %17 = load ptr, ptr @last_filename, align 8, !tbaa !6
  tail call void %16(i32 noundef %7, ptr noundef %17) #22
  %18 = load ptr, ptr @current_function_decl, align 8, !tbaa !6
  br label %19

19:                                               ; preds = %13, %3
  %20 = phi ptr [ %18, %13 ], [ %8, %3 ]
  %21 = tail call fastcc zeroext i8 @dwarf2_debug_info_emitted_p(ptr noundef %20) #21, !range !47
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  tail call void @dwarf2out_begin_prologue(i32 noundef 0, ptr noundef null) #22
  br label %24

24:                                               ; preds = %23, %19
  %25 = tail call i32 @dwarf2out_do_frame() #22
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %24
  tail call void @dwarf2out_frame_debug(ptr noundef null, i8 noundef zeroext 0) #22
  br label %28

28:                                               ; preds = %27, %24
  %29 = load i32, ptr @write_symbols, align 4, !tbaa !10
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %28
  tail call void @reemit_insn_block_notes() #22
  %32 = load ptr, ptr @current_function_decl, align 8, !tbaa !6
  tail call void @number_blocks(ptr noundef %32) #22
  %33 = load ptr, ptr @current_function_decl, align 8, !tbaa !6
  %34 = getelementptr inbounds %struct.tree_decl_common, ptr %33, i64 0, i32 5
  %35 = load ptr, ptr %34, align 8, !tbaa !12
  %36 = load i64, ptr %35, align 8
  %37 = or i64 %36, 4194304
  store i64 %37, ptr %35, align 8
  br label %38

38:                                               ; preds = %31, %28
  %39 = load i8, ptr @warn_frame_larger_than, align 1, !tbaa !12
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %49, label %41

41:                                               ; preds = %38
  %42 = tail call i64 @get_frame_size() #22
  %43 = load i64, ptr @frame_larger_than_size, align 8, !tbaa !84
  %44 = icmp sgt i64 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = tail call i64 @get_frame_size() #22
  %47 = load i64, ptr @frame_larger_than_size, align 8, !tbaa !84
  %48 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 99, ptr noundef nonnull @.str.15, i64 noundef %46, i64 noundef %47) #22
  br label %49

49:                                               ; preds = %45, %41, %38
  %50 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 14), align 8, !tbaa !85
  %51 = tail call i64 @get_frame_size() #22
  tail call void %50(ptr noundef %1, i64 noundef %51) #22
  ret void
}

; Function Attrs: optsize
declare ptr @locator_file(i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare i32 @locator_line(i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @dwarf2_debug_info_emitted_p(ptr nocapture noundef readonly %0) unnamed_addr #10 {
  %2 = load i32, ptr @write_symbols, align 4
  switch i32 %2, label %9 [
    i32 6, label %3
    i32 3, label %3
  ]

3:                                                ; preds = %1, %1
  %4 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %5 = load i64, ptr %4, align 8
  %6 = and i64 %5, 1024
  %7 = icmp eq i64 %6, 0
  %8 = zext i1 %7 to i8
  br label %9

9:                                                ; preds = %3, %1
  %10 = phi i8 [ 0, %1 ], [ %8, %3 ]
  ret i8 %10
}

; Function Attrs: optsize
declare void @dwarf2out_begin_prologue(i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare i32 @dwarf2out_do_frame() local_unnamed_addr #7

; Function Attrs: optsize
declare void @dwarf2out_frame_debug(ptr noundef, i8 noundef zeroext) local_unnamed_addr #7

; Function Attrs: optsize
declare void @reemit_insn_block_notes() local_unnamed_addr #7

; Function Attrs: optsize
declare void @number_blocks(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare i64 @get_frame_size() local_unnamed_addr #7

; Function Attrs: optsize
declare zeroext i8 @warning(i32 noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @final_end_function() local_unnamed_addr #6 {
  tail call void @app_disable() #21
  %1 = load ptr, ptr @current_function_decl, align 8, !tbaa !6
  %2 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 2
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 1024
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %0
  %7 = load ptr, ptr @debug_hooks, align 8, !tbaa !6
  %8 = getelementptr inbounds %struct.gcc_debug_hooks, ptr %7, i64 0, i32 15
  %9 = load ptr, ptr %8, align 8, !tbaa !97
  %10 = load i32, ptr @high_function_linenum, align 4, !tbaa !10
  tail call void %9(i32 noundef %10) #22
  br label %11

11:                                               ; preds = %6, %0
  %12 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 17), align 8, !tbaa !98
  %13 = load ptr, ptr @asm_out_file, align 8, !tbaa !6
  %14 = tail call i64 @get_frame_size() #22
  tail call void %12(ptr noundef %13, i64 noundef %14) #22
  %15 = load ptr, ptr @current_function_decl, align 8, !tbaa !6
  %16 = getelementptr inbounds %struct.tree_decl_common, ptr %15, i64 0, i32 2
  %17 = load i64, ptr %16, align 8
  %18 = and i64 %17, 1024
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %11
  %21 = load ptr, ptr @debug_hooks, align 8, !tbaa !6
  %22 = getelementptr inbounds %struct.gcc_debug_hooks, ptr %21, i64 0, i32 13
  %23 = load ptr, ptr %22, align 8, !tbaa !99
  %24 = load i32, ptr @last_linenum, align 4, !tbaa !10
  %25 = load ptr, ptr @last_filename, align 8, !tbaa !6
  tail call void %23(i32 noundef %24, ptr noundef %25) #22
  %26 = load ptr, ptr @current_function_decl, align 8, !tbaa !6
  br label %27

27:                                               ; preds = %20, %11
  %28 = phi ptr [ %26, %20 ], [ %15, %11 ]
  %29 = tail call fastcc zeroext i8 @dwarf2_debug_info_emitted_p(ptr noundef %28) #21, !range !47
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %27
  %32 = tail call i32 @dwarf2out_do_frame() #22
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = load i32, ptr @last_linenum, align 4, !tbaa !10
  %36 = load ptr, ptr @last_filename, align 8, !tbaa !6
  tail call void @dwarf2out_end_epilogue(i32 noundef %35, ptr noundef %36) #22
  br label %37

37:                                               ; preds = %34, %31, %27
  ret void
}

; Function Attrs: optsize
declare void @dwarf2out_end_epilogue(i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @final(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #6 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #23
  store i32 0, ptr %4, align 4, !tbaa !10
  %5 = icmp eq ptr %0, null
  tail call void @init_recog() #22
  br i1 %5, label %27, label %6

6:                                                ; preds = %3, %23
  %7 = phi ptr [ %25, %23 ], [ %0, %3 ]
  %8 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !12
  %10 = load ptr, ptr @insn_addresses_, align 8
  %11 = call fastcc i32 @VEC_int_base_length(ptr noundef %10) #21
  %12 = icmp ult i32 %9, %11
  br i1 %12, label %18, label %13

13:                                               ; preds = %6
  %14 = load i32, ptr %7, align 8
  %15 = and i32 %14, 65535
  %16 = icmp eq i32 %15, 13
  br i1 %16, label %23, label %17

17:                                               ; preds = %13
  call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 1715, ptr noundef nonnull @.str.11) #22
  br label %23

18:                                               ; preds = %6
  %19 = call fastcc ptr @VEC_int_base_address(ptr noundef %10) #21
  %20 = sext i32 %9 to i64
  %21 = getelementptr inbounds i32, ptr %19, i64 %20
  %22 = load i32, ptr %21, align 4, !tbaa !10
  br label %23

23:                                               ; preds = %17, %13, %18
  %24 = phi i32 [ %22, %18 ], [ -1, %13 ], [ -1, %17 ]
  store i32 %24, ptr @insn_current_address, align 4, !tbaa !10
  %25 = call ptr @final_scan_insn(ptr noundef nonnull %7, ptr noundef %1, i32 poison, i32 poison, ptr noundef nonnull %4) #21
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %6, !llvm.loop !100

27:                                               ; preds = %23, %3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #23
  ret void
}

; Function Attrs: optsize
declare void @init_recog() local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @final_scan_insn(ptr noundef %0, ptr noundef %1, i32 %2, i32 %3, ptr noundef %4) local_unnamed_addr #6 {
  %6 = alloca %struct.expanded_location, align 8
  %7 = alloca %struct.expanded_location, align 8
  %8 = alloca %struct.expanded_location, align 8
  %9 = alloca %struct.expanded_location, align 8
  %10 = alloca i8, align 1
  %11 = alloca %struct.expanded_location, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.expanded_location, align 8
  %14 = load i32, ptr @insn_counter, align 4, !tbaa !10
  %15 = add nsw i32 %14, 1
  store i32 %15, ptr @insn_counter, align 4, !tbaa !10
  %16 = load i32, ptr %0, align 8
  %17 = and i32 %16, 134217728
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %5
  %20 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %21 = load ptr, ptr %20, align 8, !tbaa !12
  br label %663

22:                                               ; preds = %5
  %23 = trunc i32 %16 to i16
  switch i16 %23, label %329 [
    i16 13, label %24
    i16 11, label %235
    i16 12, label %239
  ]

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %26 = load i32, ptr %25, align 8, !tbaa !12
  switch i32 %26, label %234 [
    i32 0, label %660
    i32 11, label %27
    i32 10, label %46
    i32 7, label %70
    i32 8, label %76
    i32 5, label %82
    i32 6, label %91
    i32 12, label %97
    i32 4, label %98
    i32 2, label %118
    i32 3, label %167
    i32 1, label %219
    i32 9, label %224
  ]

27:                                               ; preds = %24
  %28 = load i8, ptr @in_cold_section_p, align 1, !tbaa !12
  %29 = icmp eq i8 %28, 0
  %30 = zext i1 %29 to i8
  store i8 %30, ptr @in_cold_section_p, align 1, !tbaa !12
  %31 = tail call i32 @dwarf2out_do_frame() #22
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %27
  tail call void @dwarf2out_switch_text_section() #22
  br label %44

34:                                               ; preds = %27
  %35 = load ptr, ptr @current_function_decl, align 8, !tbaa !6
  %36 = getelementptr inbounds %struct.tree_decl_common, ptr %35, i64 0, i32 2
  %37 = load i64, ptr %36, align 8
  %38 = and i64 %37, 1024
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = load ptr, ptr @debug_hooks, align 8, !tbaa !6
  %42 = getelementptr inbounds %struct.gcc_debug_hooks, ptr %41, i64 0, i32 25
  %43 = load ptr, ptr %42, align 8, !tbaa !101
  tail call void %43() #22
  br label %44

44:                                               ; preds = %34, %40, %33
  %45 = tail call ptr @current_function_section() #22
  tail call void @switch_to_section(ptr noundef %45) #22
  br label %660

46:                                               ; preds = %24
  %47 = load i32, ptr @flag_debug_asm, align 4, !tbaa !10
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %56, label %49

49:                                               ; preds = %46
  %50 = load ptr, ptr @asm_out_file, align 8, !tbaa !6
  %51 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !12
  %53 = getelementptr inbounds %struct.basic_block_def, ptr %52, i64 0, i32 9
  %54 = load i32, ptr %53, align 8, !tbaa !38
  %55 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %50, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef %54) #21
  br label %56

56:                                               ; preds = %49, %46
  %57 = load i32, ptr %4, align 4, !tbaa !10
  %58 = and i32 %57, 5
  %59 = icmp eq i32 %58, 1
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = or disjoint i32 %57, 4
  store i1 true, ptr @force_source_line, align 1
  br label %64

62:                                               ; preds = %56
  %63 = or i32 %57, 1
  br label %64

64:                                               ; preds = %62, %60
  %65 = phi i32 [ %61, %60 ], [ %63, %62 ]
  store i32 %65, ptr %4, align 4
  %66 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !12
  %68 = getelementptr inbounds %struct.basic_block_def, ptr %67, i64 0, i32 12
  %69 = load i32, ptr %68, align 4, !tbaa !102
  store i32 %69, ptr @discriminator, align 4, !tbaa !10
  br label %660

70:                                               ; preds = %24
  %71 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 11), align 8, !tbaa !103
  %72 = load ptr, ptr @asm_out_file, align 8, !tbaa !6
  %73 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 2
  %74 = load i32, ptr %73, align 8, !tbaa !12
  %75 = sext i32 %74 to i64
  tail call void %71(ptr noundef %72, ptr noundef nonnull @.str.19, i64 noundef %75) #22
  br label %660

76:                                               ; preds = %24
  %77 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 11), align 8, !tbaa !103
  %78 = load ptr, ptr @asm_out_file, align 8, !tbaa !6
  %79 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 2
  %80 = load i32, ptr %79, align 8, !tbaa !12
  %81 = sext i32 %80 to i64
  tail call void %77(ptr noundef %78, ptr noundef nonnull @.str.20, i64 noundef %81) #22
  br label %660

82:                                               ; preds = %24
  %83 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 15), align 8, !tbaa !104
  tail call void %83(ptr noundef %1) #22
  tail call fastcc void @profile_after_prologue(ptr noundef %1) #21
  %84 = load i32, ptr %4, align 4, !tbaa !10
  %85 = and i32 %84, 6
  %86 = icmp eq i32 %85, 2
  br i1 %86, label %87, label %89

87:                                               ; preds = %82
  %88 = or disjoint i32 %84, 4
  store i32 %88, ptr %4, align 4, !tbaa !10
  store i1 true, ptr @force_source_line, align 1
  br label %660

89:                                               ; preds = %82
  %90 = or i32 %84, 2
  store i32 %90, ptr %4, align 4, !tbaa !10
  br label %660

91:                                               ; preds = %24
  %92 = tail call i32 @dwarf2out_do_frame() #22
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %91
  tail call void @dwarf2out_begin_epilogue(ptr noundef nonnull %0) #22
  br label %95

95:                                               ; preds = %94, %91
  %96 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 16), align 8, !tbaa !105
  tail call void %96(ptr noundef %1) #22
  br label %660

97:                                               ; preds = %24
  tail call void @dwarf2out_frame_debug_restore_state() #22
  br label %660

98:                                               ; preds = %24
  tail call void @app_disable() #21
  %99 = load ptr, ptr @current_function_decl, align 8, !tbaa !6
  %100 = getelementptr inbounds %struct.tree_decl_common, ptr %99, i64 0, i32 2
  %101 = load i64, ptr %100, align 8
  %102 = and i64 %101, 1024
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %98
  %105 = load ptr, ptr @debug_hooks, align 8, !tbaa !6
  %106 = getelementptr inbounds %struct.gcc_debug_hooks, ptr %105, i64 0, i32 12
  %107 = load ptr, ptr %106, align 8, !tbaa !106
  %108 = load i32, ptr @last_linenum, align 4, !tbaa !10
  %109 = load ptr, ptr @last_filename, align 8, !tbaa !6
  tail call void %107(i32 noundef %108, ptr noundef %109) #22
  br label %110

110:                                              ; preds = %104, %98
  %111 = load i32, ptr %4, align 4, !tbaa !10
  %112 = and i32 %111, 6
  %113 = icmp eq i32 %112, 2
  br i1 %113, label %114, label %116

114:                                              ; preds = %110
  %115 = or disjoint i32 %111, 4
  store i32 %115, ptr %4, align 4, !tbaa !10
  store i1 true, ptr @force_source_line, align 1
  br label %660

116:                                              ; preds = %110
  %117 = or i32 %111, 2
  store i32 %117, ptr %4, align 4, !tbaa !10
  br label %660

118:                                              ; preds = %24
  %119 = load i32, ptr @debug_info_level, align 4
  %120 = and i32 %119, -2
  %121 = icmp eq i32 %120, 2
  %122 = load i32, ptr @write_symbols, align 4
  %123 = icmp eq i32 %122, 3
  %124 = select i1 %121, i1 true, i1 %123
  %125 = icmp eq i32 %122, 6
  %126 = select i1 %124, i1 true, i1 %125
  %127 = icmp eq i32 %122, 5
  %128 = select i1 %126, i1 true, i1 %127
  br i1 %128, label %129, label %152

129:                                              ; preds = %118
  %130 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 2
  %131 = load ptr, ptr %130, align 8, !tbaa !12
  %132 = getelementptr inbounds %struct.tree_block, ptr %131, i64 0, i32 1
  %133 = load i32, ptr %132, align 8
  tail call void @app_disable() #21
  %134 = load i32, ptr @block_depth, align 4, !tbaa !10
  %135 = add nsw i32 %134, 1
  store i32 %135, ptr @block_depth, align 4, !tbaa !10
  %136 = load i32, ptr @last_linenum, align 4, !tbaa !10
  store i32 %136, ptr @high_block_linenum, align 4, !tbaa !10
  %137 = load ptr, ptr @current_function_decl, align 8, !tbaa !6
  %138 = getelementptr inbounds %struct.tree_decl_common, ptr %137, i64 0, i32 2
  %139 = load i64, ptr %138, align 8
  %140 = and i64 %139, 1024
  %141 = icmp eq i64 %140, 0
  br i1 %141, label %142, label %147

142:                                              ; preds = %129
  %143 = lshr i32 %133, 1
  %144 = load ptr, ptr @debug_hooks, align 8, !tbaa !6
  %145 = getelementptr inbounds %struct.gcc_debug_hooks, ptr %144, i64 0, i32 7
  %146 = load ptr, ptr %145, align 8, !tbaa !107
  tail call void %146(i32 noundef %136, i32 noundef %143) #22
  br label %147

147:                                              ; preds = %142, %129
  %148 = load ptr, ptr %130, align 8, !tbaa !12
  %149 = load i64, ptr %148, align 8
  %150 = or i64 %149, 4194304
  store i64 %150, ptr %148, align 8
  %151 = load i32, ptr @write_symbols, align 4
  br label %152

152:                                              ; preds = %118, %147
  %153 = phi i32 [ %122, %118 ], [ %151, %147 ]
  %154 = add i32 %153, -1
  %155 = icmp ult i32 %154, 2
  br i1 %155, label %156, label %660

156:                                              ; preds = %152
  %157 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 2
  %158 = load ptr, ptr %157, align 8, !tbaa !12
  %159 = tail call ptr @block_nonartificial_location(ptr noundef %158) #22
  %160 = icmp eq ptr %159, null
  br i1 %160, label %660, label %161

161:                                              ; preds = %156
  %162 = load i32, ptr %159, align 4, !tbaa !10
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %6, i32 noundef %162) #22
  %163 = load ptr, ptr %6, align 8, !tbaa !108
  store ptr %163, ptr @override_filename, align 8, !tbaa !6
  %164 = load i32, ptr %159, align 4, !tbaa !10
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %7, i32 noundef %164) #22
  %165 = getelementptr inbounds %struct.expanded_location, ptr %7, i64 0, i32 1
  %166 = load i32, ptr %165, align 8, !tbaa !110
  store i32 %166, ptr @override_linenum, align 4, !tbaa !10
  br label %660

167:                                              ; preds = %24
  %168 = load i32, ptr @debug_info_level, align 4
  %169 = and i32 %168, -2
  %170 = icmp eq i32 %169, 2
  %171 = load i32, ptr @write_symbols, align 4
  %172 = icmp eq i32 %171, 3
  %173 = select i1 %170, i1 true, i1 %172
  %174 = icmp eq i32 %171, 6
  %175 = select i1 %173, i1 true, i1 %174
  %176 = icmp eq i32 %171, 5
  %177 = select i1 %175, i1 true, i1 %176
  br i1 %177, label %178, label %199

178:                                              ; preds = %167
  %179 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 2
  %180 = load ptr, ptr %179, align 8, !tbaa !12
  %181 = getelementptr inbounds %struct.tree_block, ptr %180, i64 0, i32 1
  %182 = load i32, ptr %181, align 8
  %183 = lshr i32 %182, 1
  tail call void @app_disable() #21
  %184 = load i32, ptr @block_depth, align 4, !tbaa !10
  %185 = add nsw i32 %184, -1
  store i32 %185, ptr @block_depth, align 4, !tbaa !10
  %186 = icmp sgt i32 %184, 0
  br i1 %186, label %188, label %187

187:                                              ; preds = %178
  tail call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 1978, ptr noundef nonnull @.str.11) #22
  br label %188

188:                                              ; preds = %178, %187
  %189 = load ptr, ptr @current_function_decl, align 8, !tbaa !6
  %190 = getelementptr inbounds %struct.tree_decl_common, ptr %189, i64 0, i32 2
  %191 = load i64, ptr %190, align 8
  %192 = and i64 %191, 1024
  %193 = icmp eq i64 %192, 0
  br i1 %193, label %194, label %199

194:                                              ; preds = %188
  %195 = load ptr, ptr @debug_hooks, align 8, !tbaa !6
  %196 = getelementptr inbounds %struct.gcc_debug_hooks, ptr %195, i64 0, i32 8
  %197 = load ptr, ptr %196, align 8, !tbaa !111
  %198 = load i32, ptr @high_block_linenum, align 4, !tbaa !10
  tail call void %197(i32 noundef %198, i32 noundef %183) #22
  br label %199

199:                                              ; preds = %188, %194, %167
  %200 = load i32, ptr @write_symbols, align 4
  %201 = add i32 %200, -1
  %202 = icmp ult i32 %201, 2
  br i1 %202, label %203, label %660

203:                                              ; preds = %199
  %204 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 2
  %205 = load ptr, ptr %204, align 8, !tbaa !12
  %206 = getelementptr inbounds %struct.tree_block, ptr %205, i64 0, i32 6
  %207 = load ptr, ptr %206, align 8, !tbaa !12
  %208 = tail call ptr @block_nonartificial_location(ptr noundef %207) #22
  %209 = icmp eq ptr %208, null
  br i1 %209, label %216, label %210

210:                                              ; preds = %203
  %211 = load i32, ptr %208, align 4, !tbaa !10
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %8, i32 noundef %211) #22
  %212 = load ptr, ptr %8, align 8, !tbaa !108
  store ptr %212, ptr @override_filename, align 8, !tbaa !6
  %213 = load i32, ptr %208, align 4, !tbaa !10
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %9, i32 noundef %213) #22
  %214 = getelementptr inbounds %struct.expanded_location, ptr %9, i64 0, i32 1
  %215 = load i32, ptr %214, align 8, !tbaa !110
  br label %217

216:                                              ; preds = %203
  store ptr null, ptr @override_filename, align 8, !tbaa !6
  br label %217

217:                                              ; preds = %216, %210
  %218 = phi i32 [ 0, %216 ], [ %215, %210 ]
  store i32 %218, ptr @override_linenum, align 4, !tbaa !10
  br label %660

219:                                              ; preds = %24
  %220 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 11), align 8, !tbaa !103
  %221 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1
  %222 = load i32, ptr %221, align 8, !tbaa !12
  %223 = sext i32 %222 to i64
  tail call void %220(ptr noundef %1, ptr noundef nonnull @.str.21, i64 noundef %223) #22
  br label %660

224:                                              ; preds = %24
  %225 = load ptr, ptr @current_function_decl, align 8, !tbaa !6
  %226 = getelementptr inbounds %struct.tree_decl_common, ptr %225, i64 0, i32 2
  %227 = load i64, ptr %226, align 8
  %228 = and i64 %227, 1024
  %229 = icmp eq i64 %228, 0
  br i1 %229, label %230, label %660

230:                                              ; preds = %224
  %231 = load ptr, ptr @debug_hooks, align 8, !tbaa !6
  %232 = getelementptr inbounds %struct.gcc_debug_hooks, ptr %231, i64 0, i32 24
  %233 = load ptr, ptr %232, align 8, !tbaa !112
  tail call void %233(ptr noundef nonnull %0) #22
  br label %660

234:                                              ; preds = %24
  tail call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 2016, ptr noundef nonnull @.str.11) #22
  br label %660

235:                                              ; preds = %22
  %236 = tail call i32 @dwarf2out_do_frame() #22
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %660, label %238

238:                                              ; preds = %235
  tail call void @dwarf2out_frame_debug(ptr noundef nonnull %0, i8 noundef zeroext 0) #22
  br label %660

239:                                              ; preds = %22
  %240 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1
  %241 = load i32, ptr %240, align 8, !tbaa !12
  %242 = load i32, ptr @max_labelno, align 4, !tbaa !10
  %243 = icmp sgt i32 %241, %242
  br i1 %243, label %275, label %244

244:                                              ; preds = %239
  %245 = load ptr, ptr @label_align, align 8, !tbaa !6
  %246 = load i32, ptr @min_labelno, align 4, !tbaa !10
  %247 = sub nsw i32 %241, %246
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds %struct.label_alignment, ptr %245, i64 %248
  %250 = load i16, ptr %249, align 2, !tbaa !19
  %251 = sext i16 %250 to i32
  %252 = getelementptr inbounds %struct.label_alignment, ptr %245, i64 %248, i32 1
  %253 = load i16, ptr %252, align 2, !tbaa !22
  %254 = sext i16 %253 to i32
  %255 = icmp eq i16 %250, 0
  br i1 %255, label %275, label %256

256:                                              ; preds = %244
  %257 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %258 = load ptr, ptr %257, align 8, !tbaa !12
  %259 = icmp eq ptr %258, null
  br i1 %259, label %275, label %260

260:                                              ; preds = %256
  %261 = icmp eq i16 %253, 0
  br i1 %261, label %262, label %264

262:                                              ; preds = %260
  %263 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.22, i32 noundef %251) #21
  br label %275

264:                                              ; preds = %260
  %265 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.23, i32 noundef %251, i32 noundef %254) #21
  %266 = icmp sgt i16 %250, 3
  br i1 %266, label %267, label %275

267:                                              ; preds = %264
  %268 = shl nuw i32 1, %251
  %269 = add nsw i32 %254, 1
  %270 = icmp sgt i32 %268, %269
  %271 = icmp sgt i16 %253, 6
  %272 = select i1 %270, i1 %271, i1 false
  br i1 %272, label %273, label %275

273:                                              ; preds = %267
  %274 = tail call i32 @fputs(ptr noundef nonnull @.str.24, ptr noundef %1) #21
  br label %275

275:                                              ; preds = %244, %256, %262, %273, %267, %264, %239
  %276 = load ptr, ptr @current_function_decl, align 8, !tbaa !6
  %277 = getelementptr inbounds %struct.tree_decl_common, ptr %276, i64 0, i32 2
  %278 = load i64, ptr %277, align 8
  %279 = and i64 %278, 1024
  %280 = icmp eq i64 %279, 0
  br i1 %280, label %281, label %289

281:                                              ; preds = %275
  %282 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 1
  %283 = load ptr, ptr %282, align 8, !tbaa !12
  %284 = icmp eq ptr %283, null
  br i1 %284, label %289, label %285

285:                                              ; preds = %281
  %286 = load ptr, ptr @debug_hooks, align 8, !tbaa !6
  %287 = getelementptr inbounds %struct.gcc_debug_hooks, ptr %286, i64 0, i32 22
  %288 = load ptr, ptr %287, align 8, !tbaa !113
  tail call void %288(ptr noundef nonnull %0) #22
  br label %289

289:                                              ; preds = %285, %281, %275
  tail call void @app_disable() #21
  %290 = tail call ptr @next_nonnote_insn(ptr noundef nonnull %0) #22
  %291 = icmp eq ptr %290, null
  br i1 %291, label %316, label %292

292:                                              ; preds = %289
  %293 = load i32, ptr %290, align 8
  %294 = and i32 %293, 65535
  %295 = icmp eq i32 %294, 9
  br i1 %295, label %296, label %316

296:                                              ; preds = %292
  %297 = getelementptr inbounds %struct.rtx_def, ptr %290, i64 1
  %298 = load ptr, ptr %297, align 8, !tbaa !12
  %299 = load i32, ptr %298, align 8
  %300 = and i32 %299, 65534
  %301 = icmp eq i32 %300, 20
  br i1 %301, label %302, label %316

302:                                              ; preds = %296
  %303 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 24), align 8, !tbaa !114
  %304 = load ptr, ptr @current_function_decl, align 8, !tbaa !6
  %305 = tail call ptr %303(ptr noundef %304) #22
  tail call void @switch_to_section(ptr noundef %305) #22
  %306 = tail call fastcc i32 @final_addr_vec_align(ptr noundef nonnull %290) #21
  %307 = icmp eq i32 %306, 0
  br i1 %307, label %311, label %308

308:                                              ; preds = %302
  %309 = shl nuw i32 1, %306
  %310 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.25, i32 noundef %309) #21
  br label %311

311:                                              ; preds = %308, %302
  %312 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.25, i32 noundef 4) #21
  %313 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 11), align 8, !tbaa !103
  %314 = load i32, ptr %240, align 8, !tbaa !12
  %315 = sext i32 %314 to i64
  tail call void %313(ptr noundef %1, ptr noundef nonnull @.str.21, i64 noundef %315) #22
  br label %660

316:                                              ; preds = %296, %292, %289
  %317 = load i32, ptr %0, align 8
  %318 = lshr i32 %317, 23
  %319 = and i32 %318, 2
  %320 = lshr i32 %317, 25
  %321 = and i32 %320, 1
  %322 = or disjoint i32 %319, %321
  %323 = icmp eq i32 %322, 0
  br i1 %323, label %325, label %324

324:                                              ; preds = %316
  tail call fastcc void @output_alternate_entry_point(ptr noundef %1, ptr noundef nonnull %0) #21
  br label %660

325:                                              ; preds = %316
  %326 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 11), align 8, !tbaa !103
  %327 = load i32, ptr %240, align 8, !tbaa !12
  %328 = sext i32 %327 to i64
  tail call void %326(ptr noundef %1, ptr noundef nonnull @.str.21, i64 noundef %328) #22
  br label %660

329:                                              ; preds = %22
  %330 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %331 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %332 = load ptr, ptr %331, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #23
  store ptr null, ptr @current_insn_predicate, align 8, !tbaa !6
  %333 = load i32, ptr %332, align 8
  %334 = trunc i32 %333 to i16
  switch i16 %334, label %382 [
    i16 24, label %656
    i16 25, label %656
    i16 20, label %335
    i16 21, label %335
  ]

335:                                              ; preds = %329, %329
  %336 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 24), align 8, !tbaa !114
  %337 = load ptr, ptr @current_function_decl, align 8, !tbaa !6
  %338 = tail call ptr %336(ptr noundef %337) #22
  tail call void @switch_to_section(ptr noundef %338) #22
  tail call void @app_disable() #21
  %339 = getelementptr inbounds %struct.rtx_def, ptr %332, i64 0, i32 1
  %340 = load i32, ptr %332, align 8
  %341 = and i32 %340, 65535
  %342 = icmp eq i32 %341, 21
  %343 = zext i1 %342 to i64
  %344 = getelementptr inbounds [1 x %union.rtunion_def], ptr %339, i64 0, i64 %343
  %345 = load ptr, ptr %344, align 8, !tbaa !12
  %346 = load i32, ptr %345, align 8, !tbaa !14
  %347 = icmp sgt i32 %346, 0
  br i1 %347, label %348, label %380

348:                                              ; preds = %335
  %349 = getelementptr inbounds %struct.rtx_def, ptr %332, i64 0, i32 1, i32 0, i32 0, i64 1
  %350 = zext nneg i32 %346 to i64
  br label %351

351:                                              ; preds = %348, %377
  %352 = phi i64 [ 0, %348 ], [ %378, %377 ]
  %353 = load i32, ptr %332, align 8
  %354 = and i32 %353, 65535
  %355 = icmp eq i32 %354, 20
  br i1 %355, label %356, label %364

356:                                              ; preds = %351
  %357 = load ptr, ptr %339, align 8, !tbaa !12
  %358 = getelementptr inbounds %struct.rtvec_def, ptr %357, i64 0, i32 1, i64 %352
  %359 = load ptr, ptr %358, align 8, !tbaa !6
  %360 = getelementptr inbounds %struct.rtx_def, ptr %359, i64 0, i32 1
  %361 = load ptr, ptr %360, align 8, !tbaa !12
  %362 = getelementptr inbounds %struct.rtx_def, ptr %361, i64 1, i32 1
  %363 = load i32, ptr %362, align 8, !tbaa !12
  tail call void @ix86_output_addr_vec_elt(ptr noundef %1, i32 noundef %363) #22
  br label %377

364:                                              ; preds = %351
  %365 = load ptr, ptr %349, align 8, !tbaa !12
  %366 = getelementptr inbounds %struct.rtvec_def, ptr %365, i64 0, i32 1, i64 %352
  %367 = load ptr, ptr %366, align 8, !tbaa !6
  %368 = getelementptr inbounds %struct.rtx_def, ptr %367, i64 0, i32 1
  %369 = load ptr, ptr %368, align 8, !tbaa !12
  %370 = getelementptr inbounds %struct.rtx_def, ptr %369, i64 1, i32 1
  %371 = load i32, ptr %370, align 8, !tbaa !12
  %372 = load ptr, ptr %339, align 8, !tbaa !12
  %373 = getelementptr inbounds %struct.rtx_def, ptr %372, i64 0, i32 1
  %374 = load ptr, ptr %373, align 8, !tbaa !12
  %375 = getelementptr inbounds %struct.rtx_def, ptr %374, i64 1, i32 1
  %376 = load i32, ptr %375, align 8, !tbaa !12
  tail call void @ix86_output_addr_diff_elt(ptr noundef %1, i32 noundef %371, i32 noundef %376) #22
  br label %377

377:                                              ; preds = %356, %364
  %378 = add nuw nsw i64 %352, 1
  %379 = icmp eq i64 %378, %350
  br i1 %379, label %380, label %351, !llvm.loop !115

380:                                              ; preds = %377, %335
  %381 = tail call ptr @current_function_section() #22
  tail call void @switch_to_section(ptr noundef %381) #22
  br label %656

382:                                              ; preds = %329
  %383 = load ptr, ptr @current_function_decl, align 8, !tbaa !6
  %384 = getelementptr inbounds %struct.tree_decl_common, ptr %383, i64 0, i32 2
  %385 = load i64, ptr %384, align 8
  %386 = and i64 %385, 1024
  %387 = icmp eq i64 %386, 0
  br i1 %387, label %388, label %399

388:                                              ; preds = %382
  %389 = call fastcc zeroext i8 @notice_source_line(ptr noundef nonnull %0, ptr noundef nonnull %10) #21, !range !47
  %390 = icmp eq i8 %389, 0
  br i1 %390, label %399, label %391

391:                                              ; preds = %388
  %392 = load ptr, ptr @debug_hooks, align 8, !tbaa !6
  %393 = getelementptr inbounds %struct.gcc_debug_hooks, ptr %392, i64 0, i32 10
  %394 = load ptr, ptr %393, align 8, !tbaa !116
  %395 = load i32, ptr @last_linenum, align 4, !tbaa !10
  %396 = load ptr, ptr @last_filename, align 8, !tbaa !6
  %397 = load i32, ptr @last_discriminator, align 4, !tbaa !10
  %398 = load i8, ptr %10, align 1, !tbaa !12
  tail call void %394(i32 noundef %395, ptr noundef %396, i32 noundef %397, i8 noundef zeroext %398) #22
  br label %399

399:                                              ; preds = %391, %388, %382
  %400 = load i32, ptr %332, align 8
  %401 = and i32 %400, 65535
  %402 = icmp eq i32 %401, 16
  br i1 %402, label %403, label %430

403:                                              ; preds = %399
  %404 = getelementptr inbounds %struct.rtx_def, ptr %332, i64 0, i32 1
  %405 = load ptr, ptr %404, align 8, !tbaa !12
  %406 = load i8, ptr %405, align 1, !tbaa !12
  %407 = icmp eq i8 %406, 0
  br i1 %407, label %656, label %408

408:                                              ; preds = %403
  tail call void @app_enable() #21
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #23
  %409 = getelementptr inbounds %struct.rtx_def, ptr %332, i64 0, i32 1, i32 0, i32 0, i64 1
  %410 = load i32, ptr %409, align 8, !tbaa !12
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %11, i32 noundef %410) #22
  %411 = load ptr, ptr %11, align 8, !tbaa.struct !117
  %412 = getelementptr inbounds i8, ptr %11, i64 8
  %413 = load i32, ptr %412, align 8, !tbaa.struct !118
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #23
  %414 = load i8, ptr %411, align 1, !tbaa !12
  %415 = icmp ne i8 %414, 0
  %416 = icmp ne i32 %413, 0
  %417 = select i1 %415, i1 %416, i1 false
  br i1 %417, label %418, label %421

418:                                              ; preds = %408
  %419 = load ptr, ptr @asm_out_file, align 8, !tbaa !6
  %420 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %419, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.18, i32 noundef %413, ptr noundef nonnull %411) #21
  br label %421

421:                                              ; preds = %418, %408
  %422 = load ptr, ptr @asm_out_file, align 8, !tbaa !6
  %423 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %422, ptr noundef nonnull @.str.27, ptr noundef nonnull %405) #21
  %424 = load i8, ptr %411, align 1, !tbaa !12
  %425 = icmp ne i8 %424, 0
  %426 = select i1 %425, i1 %416, i1 false
  br i1 %426, label %427, label %656

427:                                              ; preds = %421
  %428 = load ptr, ptr @asm_out_file, align 8, !tbaa !6
  %429 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %428, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.18) #21
  br label %656

430:                                              ; preds = %399
  %431 = tail call i32 @asm_noperands(ptr noundef nonnull %332) #22
  %432 = icmp sgt i32 %431, -1
  br i1 %432, label %433, label %461

433:                                              ; preds = %430
  %434 = tail call i32 @asm_noperands(ptr noundef nonnull %332) #22
  %435 = zext i32 %434 to i64
  %436 = shl nuw nsw i64 %435, 3
  %437 = alloca i8, i64 %436, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #23
  %438 = call ptr @decode_asm_operands(ptr noundef nonnull %332, ptr noundef nonnull %437, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %12) #22
  store i32 %434, ptr @insn_noperands, align 4, !tbaa !10
  store ptr %0, ptr @this_is_asm_operands, align 8, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %13) #23
  %439 = load i32, ptr %12, align 4, !tbaa !10
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %13, i32 noundef %439) #22
  %440 = load ptr, ptr %13, align 8, !tbaa.struct !117
  %441 = getelementptr inbounds i8, ptr %13, i64 8
  %442 = load i32, ptr %441, align 8, !tbaa.struct !118
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %13) #23
  %443 = load i8, ptr %438, align 1, !tbaa !12
  %444 = icmp eq i8 %443, 0
  br i1 %444, label %455, label %445

445:                                              ; preds = %433
  call void @app_enable() #21
  %446 = icmp ne ptr %440, null
  %447 = icmp ne i32 %442, 0
  %448 = select i1 %446, i1 %447, i1 false
  br i1 %448, label %449, label %454

449:                                              ; preds = %445
  %450 = load ptr, ptr @asm_out_file, align 8, !tbaa !6
  %451 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %450, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.18, i32 noundef %442, ptr noundef nonnull %440) #21
  call void @output_asm_insn(ptr noundef nonnull %438, ptr noundef nonnull %437) #21
  %452 = load ptr, ptr @asm_out_file, align 8, !tbaa !6
  %453 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %452, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.18) #21
  br label %455

454:                                              ; preds = %445
  call void @output_asm_insn(ptr noundef nonnull %438, ptr noundef nonnull %437) #21
  br label %455

455:                                              ; preds = %454, %449, %433
  %456 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 38), align 8, !tbaa !119
  %457 = icmp eq ptr %456, null
  br i1 %457, label %460, label %458

458:                                              ; preds = %455
  %459 = load i32, ptr @insn_noperands, align 4, !tbaa !10
  call void %456(ptr noundef %1, ptr noundef nonnull %0, ptr noundef nonnull %437, i32 noundef %459) #22
  br label %460

460:                                              ; preds = %458, %455
  store ptr null, ptr @this_is_asm_operands, align 8, !tbaa !6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #23
  br label %656

461:                                              ; preds = %430
  tail call void @app_disable() #21
  %462 = load i32, ptr %332, align 8
  %463 = and i32 %462, 65535
  %464 = icmp eq i32 %463, 5
  br i1 %464, label %465, label %514

465:                                              ; preds = %461
  store ptr %332, ptr @final_sequence, align 8, !tbaa !6
  %466 = tail call i32 @dwarf2out_do_frame() #22
  %467 = icmp eq i32 %466, 0
  %468 = getelementptr inbounds %struct.rtx_def, ptr %332, i64 0, i32 1
  %469 = load ptr, ptr %468, align 8, !tbaa !12
  br i1 %467, label %483, label %470

470:                                              ; preds = %465
  %471 = load i32, ptr %469, align 8, !tbaa !14
  %472 = icmp sgt i32 %471, 1
  br i1 %472, label %473, label %483

473:                                              ; preds = %470, %473
  %474 = phi i64 [ %478, %473 ], [ 1, %470 ]
  %475 = phi ptr [ %479, %473 ], [ %469, %470 ]
  %476 = getelementptr inbounds %struct.rtvec_def, ptr %475, i64 0, i32 1, i64 %474
  %477 = load ptr, ptr %476, align 8, !tbaa !6
  tail call void @dwarf2out_frame_debug(ptr noundef %477, i8 noundef zeroext 0) #22
  %478 = add nuw nsw i64 %474, 1
  %479 = load ptr, ptr %468, align 8, !tbaa !12
  %480 = load i32, ptr %479, align 8, !tbaa !14
  %481 = sext i32 %480 to i64
  %482 = icmp slt i64 %478, %481
  br i1 %482, label %473, label %483, !llvm.loop !120

483:                                              ; preds = %473, %465, %470
  %484 = phi ptr [ %469, %470 ], [ %469, %465 ], [ %479, %473 ]
  %485 = getelementptr inbounds %struct.rtx_def, ptr %332, i64 0, i32 1
  %486 = getelementptr inbounds %struct.rtvec_def, ptr %484, i64 0, i32 1
  %487 = load ptr, ptr %486, align 8, !tbaa !6
  %488 = tail call ptr @final_scan_insn(ptr noundef %487, ptr noundef %1, i32 poison, i32 poison, ptr noundef %4) #21
  %489 = load ptr, ptr %485, align 8, !tbaa !12
  %490 = getelementptr inbounds %struct.rtvec_def, ptr %489, i64 1
  %491 = load ptr, ptr %490, align 8, !tbaa !6
  %492 = icmp eq ptr %488, %491
  br i1 %492, label %493, label %496

493:                                              ; preds = %483
  %494 = load i32, ptr %489, align 8, !tbaa !14
  %495 = icmp sgt i32 %494, 1
  br i1 %495, label %497, label %659

496:                                              ; preds = %483
  store ptr null, ptr @final_sequence, align 8, !tbaa !6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #23
  br label %663

497:                                              ; preds = %493, %508
  %498 = phi i64 [ %509, %508 ], [ 1, %493 ]
  %499 = phi ptr [ %510, %508 ], [ %489, %493 ]
  %500 = getelementptr inbounds %struct.rtvec_def, ptr %499, i64 0, i32 1, i64 %498
  %501 = load ptr, ptr %500, align 8, !tbaa !6
  %502 = getelementptr inbounds %struct.rtx_def, ptr %501, i64 0, i32 1, i32 0, i32 0, i64 2
  %503 = load ptr, ptr %502, align 8, !tbaa !12
  br label %504

504:                                              ; preds = %504, %497
  %505 = phi ptr [ %501, %497 ], [ %506, %504 ]
  %506 = tail call ptr @final_scan_insn(ptr noundef %505, ptr noundef %1, i32 poison, i32 poison, ptr noundef %4) #21
  %507 = icmp eq ptr %506, %503
  br i1 %507, label %508, label %504, !llvm.loop !121

508:                                              ; preds = %504
  %509 = add nuw nsw i64 %498, 1
  %510 = load ptr, ptr %485, align 8, !tbaa !12
  %511 = load i32, ptr %510, align 8, !tbaa !14
  %512 = sext i32 %511 to i64
  %513 = icmp slt i64 %509, %512
  br i1 %513, label %497, label %659, !llvm.loop !122

514:                                              ; preds = %461
  %515 = load ptr, ptr %331, align 8, !tbaa !12
  %516 = tail call fastcc i32 @recog_memoized(ptr noundef nonnull %0) #21
  tail call void @cleanup_subreg_operands(ptr noundef nonnull %0) #21
  %517 = load i32, ptr @flag_dump_rtl_in_asm, align 4, !tbaa !10
  %518 = icmp eq i32 %517, 0
  br i1 %518, label %522, label %519

519:                                              ; preds = %514
  store ptr @.str.18, ptr @print_rtx_head, align 8, !tbaa !6
  %520 = load ptr, ptr @asm_out_file, align 8, !tbaa !6
  %521 = tail call i32 @print_rtl_single(ptr noundef %520, ptr noundef nonnull %0) #22
  store ptr @.str.16, ptr @print_rtx_head, align 8, !tbaa !6
  br label %522

522:                                              ; preds = %519, %514
  %523 = tail call i32 @constrain_operands_cached(i32 noundef 1) #22
  %524 = icmp eq i32 %523, 0
  br i1 %524, label %525, label %526

525:                                              ; preds = %522
  tail call void @_fatal_insn_not_found(ptr noundef nonnull %0, ptr noundef nonnull @.str.13, i32 noundef 2588, ptr noundef nonnull @.str.11) #22
  br label %526

526:                                              ; preds = %525, %522
  %527 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 35), align 8, !tbaa !123
  %528 = tail call zeroext i8 %527() #22
  %529 = icmp eq i8 %528, 0
  br i1 %529, label %538, label %530

530:                                              ; preds = %526
  %531 = load ptr, ptr %331, align 8, !tbaa !12
  %532 = load i32, ptr %531, align 8
  %533 = and i32 %532, 65535
  %534 = icmp eq i32 %533, 14
  br i1 %534, label %535, label %538

535:                                              ; preds = %530
  %536 = getelementptr inbounds %struct.rtx_def, ptr %531, i64 0, i32 1
  %537 = load ptr, ptr %536, align 8, !tbaa !12
  store ptr %537, ptr @current_insn_predicate, align 8, !tbaa !6
  br label %538

538:                                              ; preds = %535, %530, %526
  store ptr %0, ptr @debug_insn, align 8, !tbaa !6
  store ptr %0, ptr @current_output_insn, align 8, !tbaa !6
  %539 = load i32, ptr %0, align 8
  %540 = and i32 %539, 65535
  %541 = icmp eq i32 %540, 10
  br i1 %541, label %542, label %546

542:                                              ; preds = %538
  %543 = tail call i32 @dwarf2out_do_frame() #22
  %544 = icmp eq i32 %543, 0
  br i1 %544, label %546, label %545

545:                                              ; preds = %542
  tail call void @dwarf2out_frame_debug(ptr noundef nonnull %0, i8 noundef zeroext 0) #22
  br label %546

546:                                              ; preds = %545, %542, %538
  %547 = tail call ptr @get_insn_template(i32 noundef %516, ptr noundef nonnull %0) #21
  %548 = icmp eq ptr %547, null
  br i1 %548, label %549, label %565

549:                                              ; preds = %546
  %550 = tail call ptr @prev_nonnote_insn(ptr noundef nonnull %0) #22
  %551 = icmp eq ptr %550, null
  br i1 %551, label %553, label %552

552:                                              ; preds = %549
  tail call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 2629, ptr noundef nonnull @.str.11) #22
  br label %553

553:                                              ; preds = %549, %552
  br label %554

554:                                              ; preds = %553, %561
  %555 = phi ptr [ %563, %561 ], [ %0, %553 ]
  %556 = load i32, ptr %555, align 8
  %557 = and i32 %556, 65535
  %558 = icmp eq i32 %557, 13
  br i1 %558, label %559, label %561

559:                                              ; preds = %554
  %560 = tail call ptr @delete_insn(ptr noundef nonnull %555) #22
  br label %561

561:                                              ; preds = %554, %559
  %562 = getelementptr inbounds %struct.rtx_def, ptr %555, i64 0, i32 1, i32 0, i32 0, i64 1
  %563 = load ptr, ptr %562, align 8, !tbaa !12
  %564 = icmp eq ptr %563, null
  br i1 %564, label %657, label %554, !llvm.loop !124

565:                                              ; preds = %546
  %566 = load i8, ptr %547, align 1, !tbaa !12
  %567 = icmp eq i8 %566, 35
  br i1 %567, label %568, label %580

568:                                              ; preds = %565
  %569 = getelementptr inbounds i8, ptr %547, i64 1
  %570 = load i8, ptr %569, align 1, !tbaa !12
  %571 = icmp eq i8 %570, 0
  br i1 %571, label %572, label %580

572:                                              ; preds = %568
  %573 = tail call ptr @try_split(ptr noundef %515, ptr noundef nonnull %0, i32 noundef 0) #22
  %574 = icmp eq ptr %573, %0
  br i1 %574, label %575, label %579

575:                                              ; preds = %572
  %576 = load ptr, ptr %331, align 8, !tbaa !12
  %577 = icmp eq ptr %576, %515
  br i1 %577, label %578, label %579

578:                                              ; preds = %575
  tail call void @_fatal_insn(ptr noundef nonnull @.str.29, ptr noundef nonnull %0, ptr noundef nonnull @.str.13, i32 noundef 2654, ptr noundef nonnull @.str.11) #22
  br label %579

579:                                              ; preds = %578, %575, %572
  tail call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 2660, ptr noundef nonnull @.str.11) #22
  br label %657

580:                                              ; preds = %568, %565
  %581 = load i32, ptr %0, align 8
  %582 = and i32 %581, 65535
  %583 = icmp eq i32 %582, 10
  br i1 %583, label %584, label %604

584:                                              ; preds = %580
  %585 = tail call fastcc ptr @call_from_call_insn(ptr noundef nonnull %0) #21
  %586 = getelementptr inbounds %struct.rtx_def, ptr %585, i64 0, i32 1
  %587 = load ptr, ptr %586, align 8, !tbaa !12
  %588 = icmp eq ptr %587, null
  br i1 %588, label %604, label %589

589:                                              ; preds = %584
  %590 = load i32, ptr %587, align 8
  %591 = and i32 %590, 65535
  %592 = icmp eq i32 %591, 43
  br i1 %592, label %593, label %604

593:                                              ; preds = %589
  %594 = getelementptr inbounds %struct.rtx_def, ptr %587, i64 0, i32 1
  %595 = load ptr, ptr %594, align 8, !tbaa !12
  %596 = load i32, ptr %595, align 8
  %597 = and i32 %596, 67174399
  %598 = icmp eq i32 %597, 45
  br i1 %598, label %599, label %604

599:                                              ; preds = %593
  %600 = getelementptr inbounds %struct.rtx_def, ptr %595, i64 0, i32 1, i32 0, i32 0, i64 2
  %601 = load ptr, ptr %600, align 8, !tbaa !12
  %602 = icmp eq ptr %601, null
  br i1 %602, label %604, label %603

603:                                              ; preds = %599
  tail call void @assemble_external(ptr noundef nonnull %601) #22
  br label %604

604:                                              ; preds = %584, %589, %593, %603, %599, %580
  tail call void @output_asm_insn(ptr noundef nonnull %547, ptr noundef nonnull @recog_data) #21
  %605 = load i32, ptr @flag_enable_icf_debug, align 4, !tbaa !10
  %606 = icmp eq i32 %605, 0
  br i1 %606, label %642, label %607

607:                                              ; preds = %604
  %608 = load i32, ptr %0, align 8
  %609 = and i32 %608, 65535
  %610 = icmp eq i32 %609, 10
  br i1 %610, label %611, label %642

611:                                              ; preds = %607
  %612 = tail call fastcc ptr @call_from_call_insn(ptr noundef nonnull %0) #21
  %613 = getelementptr inbounds %struct.rtx_def, ptr %612, i64 0, i32 1
  %614 = load ptr, ptr %613, align 8, !tbaa !12
  %615 = icmp eq ptr %614, null
  br i1 %615, label %642, label %616

616:                                              ; preds = %611
  %617 = load i32, ptr %614, align 8
  %618 = and i32 %617, 65535
  %619 = icmp eq i32 %618, 43
  br i1 %619, label %620, label %642

620:                                              ; preds = %616
  %621 = getelementptr inbounds %struct.rtx_def, ptr %614, i64 0, i32 1
  %622 = load ptr, ptr %621, align 8, !tbaa !12
  %623 = load i32, ptr %622, align 8
  %624 = and i32 %623, 65535
  %625 = icmp eq i32 %624, 45
  br i1 %625, label %626, label %637

626:                                              ; preds = %620
  %627 = and i32 %623, 67108864
  %628 = icmp eq i32 %627, 0
  br i1 %628, label %629, label %642

629:                                              ; preds = %626
  %630 = getelementptr inbounds %struct.rtx_def, ptr %622, i64 0, i32 1, i32 0, i32 0, i64 2
  %631 = load ptr, ptr %630, align 8, !tbaa !12
  %632 = icmp eq ptr %631, null
  br i1 %632, label %642, label %633

633:                                              ; preds = %629
  %634 = load ptr, ptr @debug_hooks, align 8, !tbaa !6
  %635 = getelementptr inbounds %struct.gcc_debug_hooks, ptr %634, i64 0, i32 26
  %636 = load ptr, ptr %635, align 8, !tbaa !125
  tail call void %636(ptr noundef nonnull %631) #22
  br label %642

637:                                              ; preds = %620
  %638 = load ptr, ptr @debug_hooks, align 8, !tbaa !6
  %639 = getelementptr inbounds %struct.gcc_debug_hooks, ptr %638, i64 0, i32 29
  %640 = load ptr, ptr %639, align 8, !tbaa !126
  %641 = load i32, ptr %330, align 8, !tbaa !12
  tail call void %640(i32 noundef %641) #22
  br label %642

642:                                              ; preds = %626, %611, %616, %637, %633, %629, %607, %604
  %643 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 38), align 8, !tbaa !119
  %644 = icmp eq ptr %643, null
  br i1 %644, label %648, label %645

645:                                              ; preds = %642
  %646 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !127
  %647 = sext i8 %646 to i32
  tail call void %643(ptr noundef %1, ptr noundef nonnull %0, ptr noundef nonnull @recog_data, i32 noundef %647) #22
  br label %648

648:                                              ; preds = %645, %642
  %649 = load ptr, ptr @final_sequence, align 8, !tbaa !6
  %650 = icmp eq ptr %649, null
  br i1 %650, label %651, label %655

651:                                              ; preds = %648
  %652 = tail call i32 @dwarf2out_do_frame() #22
  %653 = icmp eq i32 %652, 0
  br i1 %653, label %655, label %654

654:                                              ; preds = %651
  tail call void @dwarf2out_frame_debug(ptr noundef nonnull %0, i8 noundef zeroext 1) #22
  br label %655

655:                                              ; preds = %654, %651, %648
  store ptr null, ptr @debug_insn, align 8, !tbaa !6
  store ptr null, ptr @current_output_insn, align 8, !tbaa !6
  br label %656

656:                                              ; preds = %380, %460, %655, %329, %329, %421, %427, %403
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #23
  br label %660

657:                                              ; preds = %561, %579
  %658 = phi ptr [ %573, %579 ], [ null, %561 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #23
  br label %663

659:                                              ; preds = %508, %493
  store ptr null, ptr @final_sequence, align 8, !tbaa !6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #23
  br label %660

660:                                              ; preds = %659, %656, %156, %161, %324, %325, %235, %238, %44, %64, %70, %76, %95, %97, %24, %219, %234, %89, %87, %116, %114, %152, %199, %217, %230, %224, %311
  %661 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %662 = load ptr, ptr %661, align 8, !tbaa !12
  br label %663

663:                                              ; preds = %496, %657, %660, %19
  %664 = phi ptr [ %21, %19 ], [ %662, %660 ], [ %658, %657 ], [ %488, %496 ]
  ret ptr %664
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @get_insn_template(i32 noundef %0, ptr noundef %1) local_unnamed_addr #6 {
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %3, i32 7
  %5 = load i8, ptr %4, align 1, !tbaa !129
  switch i8 %5, label %23 [
    i8 1, label %6
    i8 2, label %9
    i8 3, label %16
  ]

6:                                                ; preds = %2
  %7 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %3, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !12
  br label %24

9:                                                ; preds = %2
  %10 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %3, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !12
  %12 = load i32, ptr @which_alternative, align 4, !tbaa !10
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds ptr, ptr %11, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !6
  br label %24

16:                                               ; preds = %2
  %17 = icmp eq ptr %1, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %16
  tail call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 1736, ptr noundef nonnull @.str.11) #22
  br label %19

19:                                               ; preds = %16, %18
  %20 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %3, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !12
  %22 = tail call ptr %21(ptr noundef nonnull @recog_data, ptr noundef %1) #22
  br label %24

23:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 1740, ptr noundef nonnull @.str.11) #22
  br label %24

24:                                               ; preds = %23, %19, %9, %6
  %25 = phi ptr [ @.str.16, %23 ], [ %22, %19 ], [ %15, %9 ], [ %8, %6 ]
  ret ptr %25
}

; Function Attrs: optsize
declare void @dwarf2out_switch_text_section() local_unnamed_addr #7

; Function Attrs: optsize
declare void @switch_to_section(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @current_function_section() local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @profile_after_prologue(ptr noundef %0) unnamed_addr #6 {
  %2 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 35), align 1, !tbaa !131
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call fastcc void @profile_function(ptr noundef %0) #21
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: optsize
declare void @dwarf2out_begin_epilogue(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @dwarf2out_frame_debug_restore_state() local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @block_nonartificial_location(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @expand_location(ptr dead_on_unwind writable sret(%struct.expanded_location) align 8, i32 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @output_alternate_entry_point(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1, i32 1, i32 0, i32 0, i64 1
  %4 = load ptr, ptr %3, align 8, !tbaa !12
  %5 = load i32, ptr %1, align 8
  %6 = lshr i32 %5, 23
  %7 = and i32 %6, 2
  %8 = lshr i32 %5, 25
  %9 = and i32 %8, 1
  %10 = or disjoint i32 %7, %9
  switch i32 %10, label %22 [
    i32 3, label %11
    i32 2, label %14
    i32 1, label %16
    i32 0, label %23
  ]

11:                                               ; preds = %2
  %12 = tail call i32 @fputs(ptr noundef nonnull @.str.32, ptr noundef %0) #21
  tail call void @assemble_name(ptr noundef %0, ptr noundef %4) #22
  %13 = tail call i32 @fputc(i32 noundef 10, ptr noundef %0) #21
  br label %14

14:                                               ; preds = %2, %11
  %15 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 6), align 8, !tbaa !140
  tail call void %15(ptr noundef %0, ptr noundef %4) #22
  br label %16

16:                                               ; preds = %14, %2
  %17 = tail call i32 @fputs(ptr noundef nonnull @.str.33, ptr noundef %0) #21
  tail call void @assemble_name(ptr noundef %0, ptr noundef %4) #22
  %18 = tail call i32 @fputs(ptr noundef nonnull @.str.34, ptr noundef %0) #21
  %19 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36) #21
  %20 = tail call i32 @putc(i32 noundef 10, ptr noundef %0) #21
  tail call void @assemble_name(ptr noundef %0, ptr noundef %4) #22
  %21 = tail call i32 @fputs(ptr noundef nonnull @.str.37, ptr noundef %0) #21
  br label %24

22:                                               ; preds = %2
  unreachable

23:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 1774, ptr noundef nonnull @.str.11) #22
  br label %24

24:                                               ; preds = %23, %16
  ret void
}

; Function Attrs: optsize
declare void @ix86_output_addr_vec_elt(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @ix86_output_addr_diff_elt(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @notice_source_line(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #6 {
  %3 = load ptr, ptr @override_filename, align 8, !tbaa !6
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = load i32, ptr @override_linenum, align 4, !tbaa !10
  br label %11

7:                                                ; preds = %2
  %8 = tail call ptr @insn_file(ptr noundef %0) #22
  %9 = tail call i32 @insn_line(ptr noundef %0) #22
  %10 = icmp eq ptr %8, null
  br i1 %10, label %28, label %11

11:                                               ; preds = %5, %7
  %12 = phi i32 [ %6, %5 ], [ %9, %7 ]
  %13 = phi ptr [ %3, %5 ], [ %8, %7 ]
  %14 = load i1, ptr @force_source_line, align 1
  %15 = xor i1 %14, true
  %16 = load ptr, ptr @last_filename, align 8
  %17 = icmp eq ptr %13, %16
  %18 = select i1 %15, i1 %17, i1 false
  %19 = load i32, ptr @last_linenum, align 4
  %20 = icmp eq i32 %19, %12
  %21 = select i1 %18, i1 %20, i1 false
  br i1 %21, label %28, label %22

22:                                               ; preds = %11
  store i1 false, ptr @force_source_line, align 1
  store ptr %13, ptr @last_filename, align 8, !tbaa !6
  store i32 %12, ptr @last_linenum, align 4, !tbaa !10
  %23 = load i32, ptr @discriminator, align 4, !tbaa !10
  store i32 %23, ptr @last_discriminator, align 4, !tbaa !10
  store i8 1, ptr %1, align 1, !tbaa !12
  %24 = load i32, ptr @high_block_linenum, align 4
  %25 = tail call i32 @llvm.smax.i32(i32 %12, i32 %24)
  store i32 %25, ptr @high_block_linenum, align 4, !tbaa !10
  %26 = load i32, ptr @high_function_linenum, align 4
  %27 = tail call i32 @llvm.smax.i32(i32 %12, i32 %26)
  store i32 %27, ptr @high_function_linenum, align 4, !tbaa !10
  br label %28

28:                                               ; preds = %11, %7, %22
  %29 = phi i8 [ 1, %22 ], [ 0, %7 ], [ 0, %11 ]
  ret i8 %29
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @output_asm_insn(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #6 {
  %3 = alloca [30 x i32], align 16
  %4 = alloca [30 x i8], align 16
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(i64 30, ptr nonnull %4) #23
  %7 = load i8, ptr %0, align 1, !tbaa !12
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %232, label %9

9:                                                ; preds = %2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(30) %4, i8 0, i64 30, i1 false)
  %10 = load ptr, ptr @asm_out_file, align 8, !tbaa !6
  %11 = tail call i32 @putc(i32 noundef 9, ptr noundef %10) #21
  %12 = load i8, ptr %0, align 1, !tbaa !12
  %13 = icmp eq i8 %12, 37
  br i1 %13, label %14, label %24

14:                                               ; preds = %9
  %15 = getelementptr inbounds i8, ptr %0, i64 1
  %16 = load i8, ptr %15, align 1, !tbaa !12
  %17 = icmp eq i8 %16, 118
  br i1 %17, label %18, label %24

18:                                               ; preds = %14
  %19 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !10
  %20 = and i32 %19, 32
  %21 = icmp eq i32 %20, 0
  %22 = getelementptr inbounds i8, ptr %0, i64 2
  %23 = select i1 %21, ptr %22, ptr %15
  br label %24

24:                                               ; preds = %18, %14, %9
  %25 = phi ptr [ %0, %9 ], [ %0, %14 ], [ %23, %18 ]
  br label %26

26:                                               ; preds = %24, %217
  %27 = phi i32 [ %218, %217 ], [ 0, %24 ]
  %28 = phi i32 [ %219, %217 ], [ 0, %24 ]
  %29 = phi ptr [ %220, %217 ], [ %25, %24 ]
  %30 = getelementptr inbounds i8, ptr %29, i64 1
  %31 = load i8, ptr %29, align 1, !tbaa !12
  %32 = sext i8 %31 to i32
  switch i8 %31, label %214 [
    i8 0, label %221
    i8 10, label %33
    i8 123, label %61
    i8 124, label %92
    i8 125, label %105
    i8 37, label %110
  ]

33:                                               ; preds = %26
  %34 = load i32, ptr @flag_verbose_asm, align 4, !tbaa !10
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %33
  call fastcc void @output_asm_operand_names(ptr noundef %1, ptr noundef nonnull %3, i32 noundef %27) #21
  br label %37

37:                                               ; preds = %36, %33
  %38 = load i32, ptr @flag_print_asm_name, align 4, !tbaa !10
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %37
  tail call fastcc void @output_asm_name() #21
  br label %41

41:                                               ; preds = %40, %37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(30) %4, i8 0, i64 30, i1 false)
  %42 = load ptr, ptr @asm_out_file, align 8, !tbaa !6
  %43 = tail call i32 @putc(i32 noundef %32, ptr noundef %42) #21
  br label %44

44:                                               ; preds = %47, %41
  %45 = phi ptr [ %30, %41 ], [ %50, %47 ]
  %46 = load i8, ptr %45, align 1, !tbaa !12
  switch i8 %46, label %217 [
    i8 9, label %47
    i8 37, label %51
  ]

47:                                               ; preds = %44
  %48 = load ptr, ptr @asm_out_file, align 8, !tbaa !6
  %49 = tail call i32 @putc(i32 noundef 9, ptr noundef %48) #21
  %50 = getelementptr inbounds i8, ptr %45, i64 1
  br label %44, !llvm.loop !141

51:                                               ; preds = %44
  %52 = getelementptr inbounds i8, ptr %45, i64 1
  %53 = load i8, ptr %52, align 1, !tbaa !12
  %54 = icmp eq i8 %53, 118
  br i1 %54, label %55, label %217

55:                                               ; preds = %51
  %56 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !10
  %57 = and i32 %56, 32
  %58 = icmp eq i32 %57, 0
  %59 = getelementptr inbounds i8, ptr %45, i64 2
  %60 = select i1 %58, ptr %59, ptr %52
  br label %217

61:                                               ; preds = %26
  %62 = icmp eq i32 %28, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %61
  tail call void (ptr, ...) @output_operand_lossage(ptr noundef nonnull @.str.42) #21
  br label %64

64:                                               ; preds = %61, %63
  %65 = load i32, ptr @dialect_number, align 4, !tbaa !10
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %87

67:                                               ; preds = %64, %83
  %68 = phi ptr [ %84, %83 ], [ %30, %64 ]
  %69 = phi i32 [ %85, %83 ], [ 0, %64 ]
  br label %70

70:                                               ; preds = %67, %73
  %71 = phi ptr [ %74, %73 ], [ %68, %67 ]
  %72 = load i8, ptr %71, align 1, !tbaa !12
  switch i8 %72, label %73 [
    i8 0, label %78
    i8 125, label %78
  ]

73:                                               ; preds = %70
  %74 = getelementptr inbounds i8, ptr %71, i64 1
  %75 = icmp eq i8 %72, 124
  br i1 %75, label %76, label %70, !llvm.loop !142

76:                                               ; preds = %73
  %77 = load i8, ptr %74, align 1, !tbaa !12
  br label %78

78:                                               ; preds = %70, %70, %76
  %79 = phi i8 [ %77, %76 ], [ %72, %70 ], [ %72, %70 ]
  %80 = phi ptr [ %74, %76 ], [ %71, %70 ], [ %71, %70 ]
  switch i8 %79, label %83 [
    i8 125, label %87
    i8 124, label %81
  ]

81:                                               ; preds = %78
  %82 = getelementptr inbounds i8, ptr %80, i64 1
  br label %83

83:                                               ; preds = %78, %81
  %84 = phi ptr [ %82, %81 ], [ %80, %78 ]
  %85 = add nuw nsw i32 %69, 1
  %86 = icmp eq i32 %85, %65
  br i1 %86, label %87, label %67, !llvm.loop !143

87:                                               ; preds = %83, %78, %64
  %88 = phi ptr [ %30, %64 ], [ %80, %78 ], [ %84, %83 ]
  %89 = load i8, ptr %88, align 1, !tbaa !12
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %91, label %217

91:                                               ; preds = %87
  tail call void (ptr, ...) @output_operand_lossage(ptr noundef nonnull @.str.43) #21
  br label %217

92:                                               ; preds = %26
  %93 = icmp eq i32 %28, 0
  br i1 %93, label %102, label %94

94:                                               ; preds = %92, %99
  %95 = phi ptr [ %100, %99 ], [ %30, %92 ]
  %96 = load i8, ptr %95, align 1, !tbaa !12
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %94
  tail call void (ptr, ...) @output_operand_lossage(ptr noundef nonnull @.str.43) #21
  br label %217

99:                                               ; preds = %94
  %100 = getelementptr inbounds i8, ptr %95, i64 1
  %101 = icmp eq i8 %96, 125
  br i1 %101, label %217, label %94, !llvm.loop !144

102:                                              ; preds = %92
  %103 = load ptr, ptr @asm_out_file, align 8, !tbaa !6
  %104 = tail call i32 @putc(i32 noundef %32, ptr noundef %103) #21
  br label %217

105:                                              ; preds = %26
  %106 = icmp eq i32 %28, 0
  br i1 %106, label %107, label %217

107:                                              ; preds = %105
  %108 = load ptr, ptr @asm_out_file, align 8, !tbaa !6
  %109 = tail call i32 @putc(i32 noundef %32, ptr noundef %108) #21
  br label %217

110:                                              ; preds = %26
  %111 = load i8, ptr %30, align 1, !tbaa !12
  %112 = sext i8 %111 to i32
  switch i8 %111, label %122 [
    i8 37, label %113
    i8 61, label %117
  ]

113:                                              ; preds = %110
  %114 = getelementptr inbounds i8, ptr %29, i64 2
  %115 = load ptr, ptr @asm_out_file, align 8, !tbaa !6
  %116 = tail call i32 @putc(i32 noundef %32, ptr noundef %115) #21
  br label %217

117:                                              ; preds = %110
  %118 = getelementptr inbounds i8, ptr %29, i64 2
  %119 = load ptr, ptr @asm_out_file, align 8, !tbaa !6
  %120 = load i32, ptr @insn_counter, align 4, !tbaa !10
  %121 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %119, ptr noundef nonnull @.str.44, i32 noundef %120) #21
  br label %217

122:                                              ; preds = %110
  %123 = and i32 %112, 255
  %124 = zext nneg i32 %123 to i64
  %125 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %124
  %126 = load i16, ptr %125, align 2, !tbaa !145
  %127 = zext i16 %126 to i32
  %128 = and i32 %127, 136
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %183, label %130

130:                                              ; preds = %122
  %131 = getelementptr inbounds i8, ptr %29, i64 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #23
  %132 = call i64 @strtoul(ptr noundef nonnull %131, ptr noundef nonnull %5, i32 noundef 10) #21
  %133 = load ptr, ptr %5, align 8, !tbaa !6
  %134 = icmp eq ptr %133, %131
  br i1 %134, label %135, label %136

135:                                              ; preds = %130
  tail call void (ptr, ...) @output_operand_lossage(ptr noundef nonnull @.str.45) #21
  br label %172

136:                                              ; preds = %130
  %137 = load ptr, ptr @this_is_asm_operands, align 8, !tbaa !6
  %138 = icmp eq ptr %137, null
  %139 = load i32, ptr @insn_noperands, align 4
  %140 = zext i32 %139 to i64
  %141 = icmp ult i64 %132, %140
  %142 = select i1 %138, i1 true, i1 %141
  br i1 %142, label %144, label %143

143:                                              ; preds = %136
  tail call void (ptr, ...) @output_operand_lossage(ptr noundef nonnull @.str.46) #21
  br label %172

144:                                              ; preds = %136
  %145 = getelementptr inbounds ptr, ptr %1, i64 %132
  %146 = load ptr, ptr %145, align 8, !tbaa !6
  switch i8 %111, label %171 [
    i8 108, label %147
    i8 97, label %148
    i8 99, label %149
    i8 110, label %157
  ]

147:                                              ; preds = %144
  tail call void @output_asm_label(ptr noundef %146) #21
  br label %172

148:                                              ; preds = %144
  tail call void @output_address(ptr noundef %146) #21
  br label %172

149:                                              ; preds = %144
  %150 = tail call zeroext i8 @constant_address_p(ptr noundef %146) #22
  %151 = icmp eq i8 %150, 0
  br i1 %151, label %155, label %152

152:                                              ; preds = %149
  %153 = load ptr, ptr @asm_out_file, align 8, !tbaa !6
  %154 = load ptr, ptr %145, align 8, !tbaa !6
  tail call void @output_addr_const(ptr noundef %153, ptr noundef %154) #21
  br label %172

155:                                              ; preds = %149
  %156 = load ptr, ptr %145, align 8, !tbaa !6
  tail call fastcc void @output_operand(ptr noundef %156, i32 noundef 99) #21
  br label %172

157:                                              ; preds = %144
  %158 = load i32, ptr %146, align 8
  %159 = and i32 %158, 65535
  %160 = icmp eq i32 %159, 30
  %161 = load ptr, ptr @asm_out_file, align 8, !tbaa !6
  br i1 %160, label %162, label %167

162:                                              ; preds = %157
  %163 = getelementptr inbounds %struct.rtx_def, ptr %146, i64 0, i32 1
  %164 = load i64, ptr %163, align 8, !tbaa !12
  %165 = sub nsw i64 0, %164
  %166 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %161, ptr noundef nonnull @.str.47, i64 noundef %165) #21
  br label %172

167:                                              ; preds = %157
  %168 = tail call i32 @putc(i32 noundef 45, ptr noundef %161) #21
  %169 = load ptr, ptr @asm_out_file, align 8, !tbaa !6
  %170 = load ptr, ptr %145, align 8, !tbaa !6
  tail call void @output_addr_const(ptr noundef %169, ptr noundef %170) #21
  br label %172

171:                                              ; preds = %144
  tail call fastcc void @output_operand(ptr noundef %146, i32 noundef %112) #21
  br label %172

172:                                              ; preds = %143, %148, %171, %167, %162, %152, %155, %147, %135
  %173 = getelementptr inbounds [30 x i8], ptr %4, i64 0, i64 %132
  %174 = load i8, ptr %173, align 1, !tbaa !12
  %175 = icmp eq i8 %174, 0
  br i1 %175, label %176, label %181

176:                                              ; preds = %172
  %177 = trunc i64 %132 to i32
  %178 = add nsw i32 %27, 1
  %179 = sext i32 %27 to i64
  %180 = getelementptr inbounds [30 x i32], ptr %3, i64 0, i64 %179
  store i32 %177, ptr %180, align 4, !tbaa !10
  br label %181

181:                                              ; preds = %176, %172
  %182 = phi i32 [ %27, %172 ], [ %178, %176 ]
  store i8 1, ptr %173, align 1, !tbaa !12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #23
  br label %217

183:                                              ; preds = %122
  %184 = and i32 %127, 4
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %210, label %186

186:                                              ; preds = %183
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #23
  %187 = call i64 @strtoul(ptr noundef nonnull %30, ptr noundef nonnull %6, i32 noundef 10) #21
  %188 = load ptr, ptr @this_is_asm_operands, align 8, !tbaa !6
  %189 = icmp eq ptr %188, null
  %190 = load i32, ptr @insn_noperands, align 4
  %191 = zext i32 %190 to i64
  %192 = icmp ult i64 %187, %191
  %193 = select i1 %189, i1 true, i1 %192
  br i1 %193, label %195, label %194

194:                                              ; preds = %186
  tail call void (ptr, ...) @output_operand_lossage(ptr noundef nonnull @.str.46) #21
  br label %198

195:                                              ; preds = %186
  %196 = getelementptr inbounds ptr, ptr %1, i64 %187
  %197 = load ptr, ptr %196, align 8, !tbaa !6
  tail call fastcc void @output_operand(ptr noundef %197, i32 noundef 0) #21
  br label %198

198:                                              ; preds = %195, %194
  %199 = getelementptr inbounds [30 x i8], ptr %4, i64 0, i64 %187
  %200 = load i8, ptr %199, align 1, !tbaa !12
  %201 = icmp eq i8 %200, 0
  br i1 %201, label %202, label %207

202:                                              ; preds = %198
  %203 = trunc i64 %187 to i32
  %204 = add nsw i32 %27, 1
  %205 = sext i32 %27 to i64
  %206 = getelementptr inbounds [30 x i32], ptr %3, i64 0, i64 %205
  store i32 %203, ptr %206, align 4, !tbaa !10
  br label %207

207:                                              ; preds = %202, %198
  %208 = phi i32 [ %27, %198 ], [ %204, %202 ]
  store i8 1, ptr %199, align 1, !tbaa !12
  %209 = load ptr, ptr %6, align 8, !tbaa !6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #23
  br label %217

210:                                              ; preds = %183
  switch i8 %111, label %213 [
    i8 42, label %211
    i8 43, label %211
    i8 38, label %211
    i8 59, label %211
  ]

211:                                              ; preds = %210, %210, %210, %210
  %212 = getelementptr inbounds i8, ptr %29, i64 2
  tail call fastcc void @output_operand(ptr noundef null, i32 noundef %112) #21
  br label %217

213:                                              ; preds = %210
  tail call void (ptr, ...) @output_operand_lossage(ptr noundef nonnull @.str.48) #21
  br label %217

214:                                              ; preds = %26
  %215 = load ptr, ptr @asm_out_file, align 8, !tbaa !6
  %216 = tail call i32 @putc(i32 noundef %32, ptr noundef %215) #21
  br label %217

217:                                              ; preds = %99, %44, %55, %105, %107, %98, %87, %91, %113, %181, %211, %213, %207, %117, %102, %51, %214
  %218 = phi i32 [ %27, %214 ], [ %27, %113 ], [ %27, %117 ], [ %182, %181 ], [ %208, %207 ], [ %27, %211 ], [ %27, %213 ], [ %27, %102 ], [ 0, %51 ], [ %27, %91 ], [ %27, %87 ], [ %27, %98 ], [ %27, %107 ], [ %27, %105 ], [ 0, %55 ], [ 0, %44 ], [ %27, %99 ]
  %219 = phi i32 [ %28, %214 ], [ %28, %113 ], [ %28, %117 ], [ %28, %181 ], [ %28, %207 ], [ %28, %211 ], [ %28, %213 ], [ 0, %102 ], [ %28, %51 ], [ 1, %91 ], [ 1, %87 ], [ 0, %98 ], [ 0, %107 ], [ 0, %105 ], [ %28, %55 ], [ %28, %44 ], [ 0, %99 ]
  %220 = phi ptr [ %30, %214 ], [ %114, %113 ], [ %118, %117 ], [ %133, %181 ], [ %209, %207 ], [ %212, %211 ], [ %30, %213 ], [ %30, %102 ], [ %45, %51 ], [ %88, %91 ], [ %88, %87 ], [ %95, %98 ], [ %30, %107 ], [ %30, %105 ], [ %60, %55 ], [ %45, %44 ], [ %100, %99 ]
  br label %26, !llvm.loop !146

221:                                              ; preds = %26
  %222 = load i32, ptr @flag_verbose_asm, align 4, !tbaa !10
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %225, label %224

224:                                              ; preds = %221
  call fastcc void @output_asm_operand_names(ptr noundef %1, ptr noundef nonnull %3, i32 noundef %27) #21
  br label %225

225:                                              ; preds = %224, %221
  %226 = load i32, ptr @flag_print_asm_name, align 4, !tbaa !10
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %229, label %228

228:                                              ; preds = %225
  tail call fastcc void @output_asm_name() #21
  br label %229

229:                                              ; preds = %228, %225
  %230 = load ptr, ptr @asm_out_file, align 8, !tbaa !6
  %231 = tail call i32 @putc(i32 noundef 10, ptr noundef %230) #21
  br label %232

232:                                              ; preds = %2, %229
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %3) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @recog_memoized(ptr noundef %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !12
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !12
  %8 = tail call i32 @recog(ptr noundef %7, ptr noundef nonnull %0, ptr noundef null) #22
  store i32 %8, ptr %2, align 8, !tbaa !12
  br label %9

9:                                                ; preds = %5, %1
  %10 = phi i32 [ %8, %5 ], [ %3, %1 ]
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @cleanup_subreg_operands(ptr noundef %0) local_unnamed_addr #6 {
  %2 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #23
  store i8 0, ptr %2, align 1, !tbaa !12
  tail call void @extract_insn_cached(ptr noundef %0) #22
  %3 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !127
  %4 = icmp sgt i8 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %26, %1
  %6 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 8), align 1, !tbaa !147
  %7 = icmp sgt i8 %6, 0
  br i1 %7, label %31, label %49

8:                                                ; preds = %1, %26
  %9 = phi i64 [ %27, %26 ], [ 0, %1 ]
  %10 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !6
  %12 = load ptr, ptr %11, align 8, !tbaa !6
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %13, 65535
  %15 = icmp eq i32 %14, 39
  br i1 %15, label %16, label %19

16:                                               ; preds = %8
  %17 = call ptr @alter_subreg(ptr noundef nonnull %11) #21
  %18 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %9
  store ptr %17, ptr %18, align 8, !tbaa !6
  store i8 1, ptr %2, align 1, !tbaa !12
  br label %26

19:                                               ; preds = %8
  %20 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %9
  %21 = load ptr, ptr %20, align 8, !tbaa !6
  %22 = load i32, ptr %21, align 8
  %23 = trunc i32 %22 to i16
  switch i16 %23, label %26 [
    i16 49, label %24
    i16 52, label %24
    i16 43, label %24
  ]

24:                                               ; preds = %19, %19, %19
  %25 = call fastcc ptr @walk_alter_subreg(ptr noundef nonnull %11, ptr noundef nonnull %2) #21
  store ptr %25, ptr %20, align 8, !tbaa !6
  br label %26

26:                                               ; preds = %19, %16, %24
  %27 = add nuw nsw i64 %9, 1
  %28 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !127
  %29 = sext i8 %28 to i64
  %30 = icmp slt i64 %27, %29
  br i1 %30, label %8, label %5, !llvm.loop !148

31:                                               ; preds = %5, %44
  %32 = phi i64 [ %45, %44 ], [ 0, %5 ]
  %33 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 5, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !6
  %35 = load ptr, ptr %34, align 8, !tbaa !6
  %36 = load i32, ptr %35, align 8
  %37 = trunc i32 %36 to i16
  switch i16 %37, label %44 [
    i16 39, label %38
    i16 49, label %41
    i16 52, label %41
    i16 43, label %41
  ]

38:                                               ; preds = %31
  %39 = call ptr @alter_subreg(ptr noundef nonnull %34) #21
  %40 = load ptr, ptr %33, align 8, !tbaa !6
  store ptr %39, ptr %40, align 8, !tbaa !6
  store i8 1, ptr %2, align 1, !tbaa !12
  br label %44

41:                                               ; preds = %31, %31, %31
  %42 = call fastcc ptr @walk_alter_subreg(ptr noundef nonnull %34, ptr noundef nonnull %2) #21
  %43 = load ptr, ptr %33, align 8, !tbaa !6
  store ptr %42, ptr %43, align 8, !tbaa !6
  br label %44

44:                                               ; preds = %31, %38, %41
  %45 = add nuw nsw i64 %32, 1
  %46 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 8), align 1, !tbaa !147
  %47 = sext i8 %46 to i64
  %48 = icmp slt i64 %45, %47
  br i1 %48, label %31, label %49, !llvm.loop !149

49:                                               ; preds = %44, %5
  %50 = load i8, ptr %2, align 1, !tbaa !12
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %49
  %53 = call zeroext i8 @df_insn_rescan(ptr noundef %0) #22
  br label %54

54:                                               ; preds = %52, %49
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #23
  ret void
}

; Function Attrs: optsize
declare i32 @print_rtl_single(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare i32 @constrain_operands_cached(i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @_fatal_insn_not_found(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @prev_nonnote_insn(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @delete_insn(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @try_split(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @_fatal_insn(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @call_from_call_insn(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 10
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 1783, ptr noundef nonnull @.str.11) #22
  br label %6

6:                                                ; preds = %1, %5
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %8 = load ptr, ptr %7, align 8, !tbaa !12
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 26
  br i1 %11, label %31, label %12

12:                                               ; preds = %6, %25
  %13 = phi i32 [ %28, %25 ], [ %9, %6 ]
  %14 = phi ptr [ %27, %25 ], [ %8, %6 ]
  %15 = trunc i32 %13 to i16
  switch i16 %15, label %16 [
    i16 14, label %17
    i16 15, label %19
    i16 23, label %23
  ]

16:                                               ; preds = %12
  tail call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 1791, ptr noundef nonnull @.str.11) #22
  br label %17

17:                                               ; preds = %12, %16
  %18 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1, i32 0, i32 0, i64 1
  br label %25

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !12
  %22 = getelementptr inbounds %struct.rtvec_def, ptr %21, i64 0, i32 1
  br label %25

23:                                               ; preds = %12
  %24 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1, i32 0, i32 0, i64 1
  br label %25

25:                                               ; preds = %23, %19, %17
  %26 = phi ptr [ %18, %17 ], [ %24, %23 ], [ %22, %19 ]
  %27 = load ptr, ptr %26, align 8, !tbaa !12
  %28 = load i32, ptr %27, align 8
  %29 = and i32 %28, 65535
  %30 = icmp eq i32 %29, 26
  br i1 %30, label %31, label %12, !llvm.loop !150

31:                                               ; preds = %25, %6
  %32 = phi ptr [ %8, %6 ], [ %27, %25 ]
  ret ptr %32
}

; Function Attrs: optsize
declare void @assemble_external(ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @profile_function(ptr noundef %0) unnamed_addr #6 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !6
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 20
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 67108864
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 2), align 8, !tbaa !151
  %9 = load ptr, ptr @current_function_decl, align 8, !tbaa !6
  %10 = getelementptr inbounds %struct.tree_common, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !12
  %12 = tail call ptr %8(ptr noundef %11, i32 noundef 1) #22
  %13 = load ptr, ptr @cfun, align 8, !tbaa !6
  br label %14

14:                                               ; preds = %7, %1
  %15 = phi ptr [ %13, %7 ], [ %2, %1 ]
  %16 = phi ptr [ %12, %7 ], [ null, %1 ]
  %17 = getelementptr inbounds %struct.function, ptr %15, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !152
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %14
  %21 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 21), align 8, !tbaa !153
  %22 = load ptr, ptr @current_function_decl, align 8, !tbaa !6
  %23 = tail call ptr %21(ptr noundef %22, i8 noundef zeroext 1) #22
  br label %24

24:                                               ; preds = %20, %14
  %25 = phi ptr [ %23, %20 ], [ null, %14 ]
  %26 = tail call ptr @current_function_section() #22
  tail call void @switch_to_section(ptr noundef %26) #22
  %27 = icmp eq ptr %16, null
  br i1 %27, label %37, label %28

28:                                               ; preds = %24
  %29 = load i32, ptr %16, align 8
  %30 = and i32 %29, 65535
  %31 = icmp eq i32 %30, 37
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %16) #21
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds [53 x ptr], ptr @reg_names, i64 0, i64 %34
  %36 = load ptr, ptr %35, align 8, !tbaa !6
  tail call void (ptr, ptr, ...) @asm_fprintf(ptr noundef %0, ptr noundef nonnull @.str.30, ptr noundef %36) #21
  br label %37

37:                                               ; preds = %32, %28, %24
  %38 = icmp eq ptr %25, null
  br i1 %38, label %60, label %39

39:                                               ; preds = %37
  %40 = load i32, ptr %25, align 8
  %41 = and i32 %40, 65535
  %42 = icmp eq i32 %41, 37
  br i1 %42, label %43, label %48

43:                                               ; preds = %39
  %44 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %25) #21
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds [53 x ptr], ptr @reg_names, i64 0, i64 %45
  %47 = load ptr, ptr %46, align 8, !tbaa !6
  tail call void (ptr, ptr, ...) @asm_fprintf(ptr noundef %0, ptr noundef nonnull @.str.30, ptr noundef %47) #21
  br label %48

48:                                               ; preds = %39, %43
  %49 = load ptr, ptr @cfun, align 8, !tbaa !6
  %50 = getelementptr inbounds %struct.function, ptr %49, i64 0, i32 14
  %51 = load i32, ptr %50, align 4, !tbaa !154
  tail call void @x86_function_profiler(ptr noundef %0, i32 noundef %51) #22
  %52 = load i32, ptr %25, align 8
  %53 = and i32 %52, 65535
  %54 = icmp eq i32 %53, 37
  br i1 %54, label %55, label %64

55:                                               ; preds = %48
  %56 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %25) #21
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds [53 x ptr], ptr @reg_names, i64 0, i64 %57
  %59 = load ptr, ptr %58, align 8, !tbaa !6
  tail call void (ptr, ptr, ...) @asm_fprintf(ptr noundef %0, ptr noundef nonnull @.str.31, ptr noundef %59) #21
  br label %64

60:                                               ; preds = %37
  %61 = load ptr, ptr @cfun, align 8, !tbaa !6
  %62 = getelementptr inbounds %struct.function, ptr %61, i64 0, i32 14
  %63 = load i32, ptr %62, align 4, !tbaa !154
  tail call void @x86_function_profiler(ptr noundef %0, i32 noundef %63) #22
  br label %64

64:                                               ; preds = %60, %55, %48
  br i1 %27, label %74, label %65

65:                                               ; preds = %64
  %66 = load i32, ptr %16, align 8
  %67 = and i32 %66, 65535
  %68 = icmp eq i32 %67, 37
  br i1 %68, label %69, label %74

69:                                               ; preds = %65
  %70 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %16) #21
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds [53 x ptr], ptr @reg_names, i64 0, i64 %71
  %73 = load ptr, ptr %72, align 8, !tbaa !6
  tail call void (ptr, ptr, ...) @asm_fprintf(ptr noundef %0, ptr noundef nonnull @.str.31, ptr noundef %73) #21
  br label %74

74:                                               ; preds = %69, %65, %64
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @asm_fprintf(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ...) local_unnamed_addr #6 {
  %3 = alloca [10 x i8], align 1
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #23
  call void @llvm.va_start(ptr nonnull %4)
  store i8 37, ptr %3, align 1, !tbaa !12
  %5 = getelementptr inbounds [10 x i8], ptr %3, i64 0, i64 1
  %6 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %7 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  br label %8

8:                                                ; preds = %201, %2
  %9 = phi ptr [ %1, %2 ], [ %202, %201 ]
  %10 = getelementptr inbounds i8, ptr %9, i64 1
  %11 = load i8, ptr %9, align 1, !tbaa !12
  switch i8 %11, label %198 [
    i8 0, label %203
    i8 123, label %12
    i8 124, label %35
    i8 125, label %201
    i8 37, label %42
  ]

12:                                               ; preds = %8
  %13 = load i32, ptr @dialect_number, align 4, !tbaa !10
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %201

15:                                               ; preds = %12, %27
  %16 = phi i32 [ %33, %27 ], [ 0, %12 ]
  %17 = phi ptr [ %32, %27 ], [ %10, %12 ]
  br label %18

18:                                               ; preds = %15, %22
  %19 = phi ptr [ %23, %22 ], [ %17, %15 ]
  %20 = load i8, ptr %19, align 1, !tbaa !12
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds i8, ptr %19, i64 1
  %24 = icmp eq i8 %20, 124
  br i1 %24, label %25, label %18, !llvm.loop !155

25:                                               ; preds = %22
  %26 = load i8, ptr %23, align 1, !tbaa !12
  br label %27

27:                                               ; preds = %18, %25
  %28 = phi i8 [ %26, %25 ], [ 0, %18 ]
  %29 = phi ptr [ %23, %25 ], [ %19, %18 ]
  %30 = icmp eq i8 %28, 124
  %31 = zext i1 %30 to i64
  %32 = getelementptr inbounds i8, ptr %29, i64 %31
  %33 = add nuw nsw i32 %16, 1
  %34 = icmp eq i32 %33, %13
  br i1 %34, label %201, label %15, !llvm.loop !156

35:                                               ; preds = %8, %39
  %36 = phi ptr [ %40, %39 ], [ %10, %8 ]
  %37 = load i8, ptr %36, align 1, !tbaa !12
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %201, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds i8, ptr %36, i64 1
  %41 = icmp eq i8 %37, 125
  br i1 %41, label %201, label %35, !llvm.loop !157

42:                                               ; preds = %8
  %43 = getelementptr inbounds i8, ptr %9, i64 2
  %44 = load i8, ptr %10, align 1, !tbaa !12
  %45 = sext i8 %44 to i32
  %46 = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.63, i32 %45, i64 6)
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %59

48:                                               ; preds = %59, %42
  %49 = phi ptr [ %43, %42 ], [ %64, %59 ]
  %50 = phi ptr [ %5, %42 ], [ %63, %59 ]
  %51 = phi i8 [ %44, %42 ], [ %65, %59 ]
  %52 = zext i8 %51 to i64
  %53 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %52
  %54 = load i16, ptr %53, align 2, !tbaa !145
  %55 = and i16 %54, 4
  %56 = icmp ne i16 %55, 0
  %57 = icmp eq i8 %51, 46
  %58 = or i1 %57, %56
  br i1 %58, label %69, label %83

59:                                               ; preds = %42, %59
  %60 = phi i8 [ %65, %59 ], [ %44, %42 ]
  %61 = phi ptr [ %63, %59 ], [ %5, %42 ]
  %62 = phi ptr [ %64, %59 ], [ %43, %42 ]
  %63 = getelementptr inbounds i8, ptr %61, i64 1
  store i8 %60, ptr %61, align 1, !tbaa !12
  %64 = getelementptr inbounds i8, ptr %62, i64 1
  %65 = load i8, ptr %62, align 1, !tbaa !12
  %66 = sext i8 %65 to i32
  %67 = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.63, i32 %66, i64 6)
  %68 = icmp eq ptr %67, null
  br i1 %68, label %48, label %59, !llvm.loop !158

69:                                               ; preds = %48, %69
  %70 = phi i8 [ %75, %69 ], [ %51, %48 ]
  %71 = phi ptr [ %73, %69 ], [ %50, %48 ]
  %72 = phi ptr [ %74, %69 ], [ %49, %48 ]
  %73 = getelementptr inbounds i8, ptr %71, i64 1
  store i8 %70, ptr %71, align 1, !tbaa !12
  %74 = getelementptr inbounds i8, ptr %72, i64 1
  %75 = load i8, ptr %72, align 1, !tbaa !12
  %76 = zext i8 %75 to i64
  %77 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %76
  %78 = load i16, ptr %77, align 2, !tbaa !145
  %79 = and i16 %78, 4
  %80 = icmp ne i16 %79, 0
  %81 = icmp eq i8 %75, 46
  %82 = or i1 %81, %80
  br i1 %82, label %69, label %83, !llvm.loop !159

83:                                               ; preds = %69, %48
  %84 = phi ptr [ %49, %48 ], [ %74, %69 ]
  %85 = phi ptr [ %50, %48 ], [ %73, %69 ]
  %86 = phi i8 [ %51, %48 ], [ %75, %69 ]
  switch i8 %86, label %197 [
    i8 37, label %87
    i8 100, label %89
    i8 105, label %89
    i8 117, label %89
    i8 120, label %89
    i8 88, label %89
    i8 111, label %89
    i8 99, label %89
    i8 119, label %105
    i8 108, label %124
    i8 115, label %163
    i8 79, label %179
    i8 82, label %201
    i8 73, label %201
    i8 76, label %192
    i8 85, label %194
  ]

87:                                               ; preds = %83
  %88 = call i32 @putc(i32 noundef 37, ptr noundef %0) #21
  br label %201

89:                                               ; preds = %83, %83, %83, %83, %83, %83, %83
  %90 = getelementptr inbounds i8, ptr %85, i64 1
  store i8 %86, ptr %85, align 1, !tbaa !12
  store i8 0, ptr %90, align 1, !tbaa !12
  %91 = load i32, ptr %4, align 16
  %92 = icmp ult i32 %91, 41
  br i1 %92, label %93, label %98

93:                                               ; preds = %89
  %94 = load ptr, ptr %7, align 16
  %95 = zext nneg i32 %91 to i64
  %96 = getelementptr i8, ptr %94, i64 %95
  %97 = add nuw nsw i32 %91, 8
  store i32 %97, ptr %4, align 16
  br label %101

98:                                               ; preds = %89
  %99 = load ptr, ptr %6, align 8
  %100 = getelementptr i8, ptr %99, i64 8
  store ptr %100, ptr %6, align 8
  br label %101

101:                                              ; preds = %98, %93
  %102 = phi ptr [ %96, %93 ], [ %99, %98 ]
  %103 = load i32, ptr %102, align 4
  %104 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull %3, i32 noundef %103) #21
  br label %201

105:                                              ; preds = %83
  store i8 108, ptr %85, align 1
  %106 = getelementptr inbounds i8, ptr %85, i64 1
  %107 = getelementptr inbounds i8, ptr %84, i64 1
  %108 = load i8, ptr %84, align 1, !tbaa !12
  %109 = getelementptr inbounds i8, ptr %85, i64 2
  store i8 %108, ptr %106, align 1, !tbaa !12
  store i8 0, ptr %109, align 1, !tbaa !12
  %110 = load i32, ptr %4, align 16
  %111 = icmp ult i32 %110, 41
  br i1 %111, label %112, label %117

112:                                              ; preds = %105
  %113 = load ptr, ptr %7, align 16
  %114 = zext nneg i32 %110 to i64
  %115 = getelementptr i8, ptr %113, i64 %114
  %116 = add nuw nsw i32 %110, 8
  store i32 %116, ptr %4, align 16
  br label %120

117:                                              ; preds = %105
  %118 = load ptr, ptr %6, align 8
  %119 = getelementptr i8, ptr %118, i64 8
  store ptr %119, ptr %6, align 8
  br label %120

120:                                              ; preds = %117, %112
  %121 = phi ptr [ %115, %112 ], [ %118, %117 ]
  %122 = load i64, ptr %121, align 8
  %123 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull %3, i64 noundef %122) #21
  br label %201

124:                                              ; preds = %83
  %125 = getelementptr inbounds i8, ptr %85, i64 1
  store i8 108, ptr %85, align 1, !tbaa !12
  %126 = load i8, ptr %84, align 1, !tbaa !12
  %127 = icmp eq i8 %126, 108
  %128 = getelementptr inbounds i8, ptr %84, i64 1
  %129 = getelementptr inbounds i8, ptr %85, i64 2
  br i1 %127, label %130, label %148

130:                                              ; preds = %124
  store i8 108, ptr %125, align 1, !tbaa !12
  %131 = getelementptr inbounds i8, ptr %84, i64 2
  %132 = load i8, ptr %128, align 1, !tbaa !12
  %133 = getelementptr inbounds i8, ptr %85, i64 3
  store i8 %132, ptr %129, align 1, !tbaa !12
  store i8 0, ptr %133, align 1, !tbaa !12
  %134 = load i32, ptr %4, align 16
  %135 = icmp ult i32 %134, 41
  br i1 %135, label %136, label %141

136:                                              ; preds = %130
  %137 = load ptr, ptr %7, align 16
  %138 = zext nneg i32 %134 to i64
  %139 = getelementptr i8, ptr %137, i64 %138
  %140 = add nuw nsw i32 %134, 8
  store i32 %140, ptr %4, align 16
  br label %144

141:                                              ; preds = %130
  %142 = load ptr, ptr %6, align 8
  %143 = getelementptr i8, ptr %142, i64 8
  store ptr %143, ptr %6, align 8
  br label %144

144:                                              ; preds = %141, %136
  %145 = phi ptr [ %139, %136 ], [ %142, %141 ]
  %146 = load i64, ptr %145, align 8
  %147 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull %3, i64 noundef %146) #21
  br label %201

148:                                              ; preds = %124
  store i8 %126, ptr %125, align 1, !tbaa !12
  store i8 0, ptr %129, align 1, !tbaa !12
  %149 = load i32, ptr %4, align 16
  %150 = icmp ult i32 %149, 41
  br i1 %150, label %151, label %156

151:                                              ; preds = %148
  %152 = load ptr, ptr %7, align 16
  %153 = zext nneg i32 %149 to i64
  %154 = getelementptr i8, ptr %152, i64 %153
  %155 = add nuw nsw i32 %149, 8
  store i32 %155, ptr %4, align 16
  br label %159

156:                                              ; preds = %148
  %157 = load ptr, ptr %6, align 8
  %158 = getelementptr i8, ptr %157, i64 8
  store ptr %158, ptr %6, align 8
  br label %159

159:                                              ; preds = %156, %151
  %160 = phi ptr [ %154, %151 ], [ %157, %156 ]
  %161 = load i64, ptr %160, align 8
  %162 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull %3, i64 noundef %161) #21
  br label %201

163:                                              ; preds = %83
  %164 = getelementptr inbounds i8, ptr %85, i64 1
  store i8 115, ptr %85, align 1, !tbaa !12
  store i8 0, ptr %164, align 1, !tbaa !12
  %165 = load i32, ptr %4, align 16
  %166 = icmp ult i32 %165, 41
  br i1 %166, label %167, label %172

167:                                              ; preds = %163
  %168 = load ptr, ptr %7, align 16
  %169 = zext nneg i32 %165 to i64
  %170 = getelementptr i8, ptr %168, i64 %169
  %171 = add nuw nsw i32 %165, 8
  store i32 %171, ptr %4, align 16
  br label %175

172:                                              ; preds = %163
  %173 = load ptr, ptr %6, align 8
  %174 = getelementptr i8, ptr %173, i64 8
  store ptr %174, ptr %6, align 8
  br label %175

175:                                              ; preds = %172, %167
  %176 = phi ptr [ %170, %167 ], [ %173, %172 ]
  %177 = load ptr, ptr %176, align 8
  %178 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %177) #21
  br label %201

179:                                              ; preds = %83
  %180 = load i8, ptr %84, align 1, !tbaa !12
  %181 = icmp eq i8 %180, 37
  br i1 %181, label %182, label %201

182:                                              ; preds = %179
  %183 = getelementptr inbounds i8, ptr %84, i64 1
  %184 = load i8, ptr %183, align 1, !tbaa !12
  %185 = icmp eq i8 %184, 118
  br i1 %185, label %186, label %201

186:                                              ; preds = %182
  %187 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !10
  %188 = and i32 %187, 32
  %189 = icmp eq i32 %188, 0
  %190 = getelementptr inbounds i8, ptr %84, i64 2
  %191 = select i1 %189, ptr %190, ptr %183
  br label %201

192:                                              ; preds = %83
  %193 = call i32 @fputs(ptr nonnull @.str.65, ptr %0)
  br label %201

194:                                              ; preds = %83
  %195 = load ptr, ptr @user_label_prefix, align 8, !tbaa !6
  %196 = call i32 @fputs(ptr noundef %195, ptr noundef %0) #21
  br label %201

197:                                              ; preds = %83
  call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 3812, ptr noundef nonnull @.str.11) #22
  br label %201

198:                                              ; preds = %8
  %199 = sext i8 %11 to i32
  %200 = call i32 @putc(i32 noundef %199, ptr noundef %0) #21
  br label %201

201:                                              ; preds = %39, %35, %27, %12, %186, %8, %87, %101, %120, %175, %83, %83, %192, %194, %197, %159, %144, %182, %179, %198
  %202 = phi ptr [ %10, %198 ], [ %84, %197 ], [ %84, %194 ], [ %84, %192 ], [ %84, %83 ], [ %84, %83 ], [ %84, %182 ], [ %84, %179 ], [ %84, %175 ], [ %131, %144 ], [ %128, %159 ], [ %107, %120 ], [ %84, %101 ], [ %84, %87 ], [ %10, %8 ], [ %191, %186 ], [ %10, %12 ], [ %32, %27 ], [ %36, %35 ], [ %40, %39 ]
  br label %8, !llvm.loop !160

203:                                              ; preds = %8
  call void @llvm.va_end(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %3) #23
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @rhs_regno(ptr nocapture noundef readonly %0) unnamed_addr #12 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !12
  ret i32 %3
}

; Function Attrs: optsize
declare void @x86_function_profiler(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @assemble_name(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind optsize
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @insn_file(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare i32 @insn_line(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare i32 @recog(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @extract_insn_cached(ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @alter_subreg(ptr nocapture noundef %0) local_unnamed_addr #6 {
  %2 = load ptr, ptr %0, align 8, !tbaa !6
  %3 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !12
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 65535
  %7 = icmp eq i32 %6, 43
  br i1 %7, label %8, label %16

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %10 = load i32, ptr %9, align 8, !tbaa !12
  %11 = load i32, ptr %2, align 8
  %12 = lshr i32 %11, 16
  %13 = and i32 %12, 255
  %14 = sext i32 %10 to i64
  %15 = tail call ptr @adjust_address_1(ptr noundef nonnull %4, i32 noundef %13, i64 noundef %14, i32 noundef 1, i32 noundef 1) #22
  store ptr %15, ptr %0, align 8, !tbaa !6
  br label %53

16:                                               ; preds = %1
  %17 = load i32, ptr %2, align 8
  %18 = lshr i32 %17, 16
  %19 = and i32 %18, 255
  %20 = lshr i32 %5, 16
  %21 = and i32 %20, 255
  %22 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %23 = load i32, ptr %22, align 8, !tbaa !12
  %24 = tail call ptr @simplify_subreg(i32 noundef %19, ptr noundef nonnull %4, i32 noundef %21, i32 noundef %23) #22
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %16
  store ptr %24, ptr %0, align 8, !tbaa !6
  br label %53

27:                                               ; preds = %16
  %28 = load i32, ptr %4, align 8
  %29 = and i32 %28, 65535
  %30 = icmp eq i32 %29, 37
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr %0, align 8, !tbaa !6
  br label %53

33:                                               ; preds = %27
  %34 = tail call i32 @subreg_regno(ptr noundef nonnull %2) #22
  %35 = tail call i32 @subreg_lowpart_p(ptr noundef nonnull %2) #22
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %45, label %37

37:                                               ; preds = %33
  %38 = load i32, ptr %2, align 8
  %39 = lshr i32 %38, 16
  %40 = and i32 %39, 255
  %41 = load i32, ptr %4, align 8
  %42 = lshr i32 %41, 16
  %43 = and i32 %42, 255
  %44 = tail call i32 @byte_lowpart_offset(i32 noundef %40, i32 noundef %43) #22
  br label %47

45:                                               ; preds = %33
  %46 = load i32, ptr %22, align 8, !tbaa !12
  br label %47

47:                                               ; preds = %45, %37
  %48 = phi i32 [ %44, %37 ], [ %46, %45 ]
  %49 = load i32, ptr %2, align 8
  %50 = lshr i32 %49, 16
  %51 = and i32 %50, 255
  %52 = tail call ptr @gen_rtx_REG_offset(ptr noundef nonnull %4, i32 noundef %51, i32 noundef %34, i32 noundef %48) #22
  store ptr %52, ptr %0, align 8, !tbaa !6
  br label %53

53:                                               ; preds = %31, %26, %47, %8
  %54 = phi ptr [ %32, %31 ], [ %24, %26 ], [ %52, %47 ], [ %15, %8 ]
  ret ptr %54
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @walk_alter_subreg(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #6 {
  %3 = load ptr, ptr %0, align 8, !tbaa !6
  %4 = load i32, ptr %3, align 8
  %5 = trunc i32 %4 to i16
  switch i16 %5, label %17 [
    i16 49, label %6
    i16 52, label %6
    i16 61, label %6
    i16 43, label %10
    i16 99, label %10
    i16 39, label %12
  ]

6:                                                ; preds = %2, %2, %2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %8 = tail call fastcc ptr @walk_alter_subreg(ptr noundef nonnull %7, ptr noundef %1) #21
  store ptr %8, ptr %7, align 8, !tbaa !12
  %9 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  br label %14

10:                                               ; preds = %2, %2
  %11 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  br label %14

12:                                               ; preds = %2
  store i8 1, ptr %1, align 1, !tbaa !12
  %13 = tail call ptr @alter_subreg(ptr noundef nonnull %0) #21
  br label %19

14:                                               ; preds = %6, %10
  %15 = phi ptr [ %11, %10 ], [ %9, %6 ]
  %16 = tail call fastcc ptr @walk_alter_subreg(ptr noundef nonnull %15, ptr noundef %1) #21
  store ptr %16, ptr %15, align 8, !tbaa !12
  br label %17

17:                                               ; preds = %14, %2
  %18 = load ptr, ptr %0, align 8, !tbaa !6
  br label %19

19:                                               ; preds = %17, %12
  %20 = phi ptr [ %18, %17 ], [ %13, %12 ]
  ret ptr %20
}

; Function Attrs: optsize
declare zeroext i8 @df_insn_rescan(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @adjust_address_1(ptr noundef, i32 noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @simplify_subreg(i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare i32 @subreg_regno(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare i32 @subreg_lowpart_p(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare i32 @byte_lowpart_offset(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @gen_rtx_REG_offset(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @output_operand_lossage(ptr noundef %0, ...) local_unnamed_addr #6 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #23
  call void @llvm.va_start(ptr nonnull %4)
  %5 = load ptr, ptr @this_is_asm_operands, align 8, !tbaa !6
  %6 = icmp eq ptr %5, null
  %7 = select i1 %6, ptr @.str.39, ptr @.str.38
  %8 = call i32 (ptr, ptr, ...) @asprintf(ptr noundef nonnull %2, ptr noundef nonnull @.str.40, ptr noundef nonnull %7, ptr noundef %0) #22
  %9 = load ptr, ptr %2, align 8, !tbaa !6
  %10 = call i32 @vasprintf(ptr noundef nonnull %3, ptr noundef %9, ptr noundef nonnull %4) #22
  %11 = load ptr, ptr @this_is_asm_operands, align 8, !tbaa !6
  %12 = icmp eq ptr %11, null
  %13 = load ptr, ptr %3, align 8, !tbaa !6
  br i1 %12, label %15, label %14

14:                                               ; preds = %1
  call void (ptr, ptr, ...) @error_for_asm(ptr noundef nonnull %11, ptr noundef nonnull @.str.41, ptr noundef %13) #22
  br label %16

15:                                               ; preds = %1
  call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.41, ptr noundef %13) #22
  br label %16

16:                                               ; preds = %15, %14
  %17 = load ptr, ptr %2, align 8, !tbaa !6
  call void @free(ptr noundef %17) #21
  %18 = load ptr, ptr %3, align 8, !tbaa !6
  call void @free(ptr noundef %18) #21
  call void @llvm.va_end(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #23
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #15

; Function Attrs: optsize
declare i32 @asprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: optsize
declare i32 @vasprintf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @error_for_asm(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: optsize
declare void @internal_error(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #15

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @output_asm_operand_names(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #6 {
  %4 = alloca i32, align 4
  %5 = icmp sgt i32 %2, 0
  br i1 %5, label %6, label %46

6:                                                ; preds = %3
  %7 = zext nneg i32 %2 to i64
  br label %8

8:                                                ; preds = %6, %43
  %9 = phi i64 [ 0, %6 ], [ %44, %43 ]
  %10 = phi i1 [ true, %6 ], [ false, %43 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #23
  %11 = getelementptr inbounds i32, ptr %1, i64 %9
  %12 = load i32, ptr %11, align 4, !tbaa !10
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds ptr, ptr %0, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !6
  %16 = call fastcc ptr @get_mem_expr_from_op(ptr noundef %15, ptr noundef nonnull %4) #21
  %17 = load ptr, ptr @asm_out_file, align 8, !tbaa !6
  %18 = select i1 %10, i32 9, i32 44
  %19 = select i1 %10, ptr @.str.18, ptr @.str.16
  %20 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef nonnull @.str.49, i32 noundef %18, ptr noundef nonnull %19) #21
  %21 = icmp eq ptr %16, null
  br i1 %21, label %29, label %22

22:                                               ; preds = %8
  %23 = load ptr, ptr @asm_out_file, align 8, !tbaa !6
  %24 = load i32, ptr %4, align 4, !tbaa !10
  %25 = icmp eq i32 %24, 0
  %26 = select i1 %25, ptr @.str.16, ptr @.str.50
  %27 = tail call i32 @fputs(ptr nonnull %26, ptr %23)
  %28 = load ptr, ptr @asm_out_file, align 8, !tbaa !6
  tail call void @print_mem_expr(ptr noundef %28, ptr noundef nonnull %16) #22
  br label %43

29:                                               ; preds = %8
  %30 = load i32, ptr %15, align 8
  %31 = and i32 %30, 65535
  %32 = icmp eq i32 %31, 37
  br i1 %32, label %33, label %43

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1, i32 0, i32 0, i64 1
  %35 = load i32, ptr %34, align 8, !tbaa !12
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %33
  %38 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %15) #21
  %39 = icmp eq i32 %35, %38
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = load ptr, ptr @asm_out_file, align 8, !tbaa !6
  %42 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %41, ptr noundef nonnull @.str.51, i32 noundef %35) #21
  br label %43

43:                                               ; preds = %29, %33, %37, %40, %22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #23
  %44 = add nuw nsw i64 %9, 1
  %45 = icmp eq i64 %44, %7
  br i1 %45, label %46, label %8, !llvm.loop !161

46:                                               ; preds = %43, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @output_asm_name() unnamed_addr #6 {
  %1 = load ptr, ptr @debug_insn, align 8, !tbaa !6
  %2 = icmp eq ptr %1, null
  br i1 %2, label %26, label %3

3:                                                ; preds = %0
  %4 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %5 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !12
  %7 = load ptr, ptr @asm_out_file, align 8, !tbaa !6
  %8 = load i32, ptr %4, align 8, !tbaa !12
  %9 = sext i32 %6 to i64
  %10 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !162
  %12 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.18, i32 noundef %8, ptr noundef %11) #21
  %13 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %9, i32 6
  %14 = load i8, ptr %13, align 2, !tbaa !163
  %15 = icmp sgt i8 %14, 1
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = load ptr, ptr @asm_out_file, align 8, !tbaa !6
  %18 = load i32, ptr @which_alternative, align 4, !tbaa !10
  %19 = add nsw i32 %18, 1
  %20 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef nonnull @.str.53, i32 noundef %19) #21
  br label %21

21:                                               ; preds = %16, %3
  %22 = load ptr, ptr @asm_out_file, align 8, !tbaa !6
  %23 = load ptr, ptr @debug_insn, align 8, !tbaa !6
  %24 = tail call i32 @get_attr_length(ptr noundef %23) #21
  %25 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str.54, i32 noundef %24) #21
  store ptr null, ptr @debug_insn, align 8, !tbaa !6
  br label %26

26:                                               ; preds = %21, %0
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn
declare i64 @strtoul(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #16

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @output_asm_label(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %2) #23
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 44
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !12
  %9 = load i32, ptr %8, align 8
  br label %10

10:                                               ; preds = %6, %1
  %11 = phi i32 [ %9, %6 ], [ %3, %1 ]
  %12 = phi ptr [ %8, %6 ], [ %0, %1 ]
  %13 = trunc i32 %11 to i16
  switch i16 %13, label %22 [
    i16 12, label %18
    i16 13, label %14
  ]

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 1
  %16 = load i32, ptr %15, align 8, !tbaa !12
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %22

18:                                               ; preds = %10, %14
  %19 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 1, i32 1
  %20 = load i32, ptr %19, align 8, !tbaa !12
  %21 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) @.str.55, ptr noundef nonnull @.str.21, i32 noundef %20) #21
  br label %23

22:                                               ; preds = %10, %14
  tail call void (ptr, ...) @output_operand_lossage(ptr noundef nonnull @.str.56) #21
  br label %23

23:                                               ; preds = %22, %18
  %24 = load ptr, ptr @asm_out_file, align 8, !tbaa !6
  call void @assemble_name(ptr noundef %24, ptr noundef nonnull %2) #22
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %2) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @output_address(ptr noundef %0) local_unnamed_addr #6 {
  %2 = alloca ptr, align 8
  %3 = alloca i8, align 1
  store ptr %0, ptr %2, align 8, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #23
  store i8 0, ptr %3, align 1, !tbaa !12
  %4 = call fastcc ptr @walk_alter_subreg(ptr noundef nonnull %2, ptr noundef nonnull %3) #21
  %5 = load ptr, ptr @asm_out_file, align 8, !tbaa !6
  %6 = load ptr, ptr %2, align 8, !tbaa !6
  call void @print_operand_address(ptr noundef %5, ptr noundef %6) #22
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #23
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @constant_address_p(ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @output_addr_const(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 {
  %3 = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %3) #23
  %4 = load i32, ptr %1, align 8
  br label %5

5:                                                ; preds = %99, %2
  %6 = phi i32 [ %4, %2 ], [ %101, %99 ]
  %7 = phi ptr [ %1, %2 ], [ %100, %99 ]
  %8 = trunc i32 %6 to i16
  switch i16 %8, label %126 [
    i16 36, label %9
    i16 45, label %11
    i16 44, label %29
    i16 12, label %32
    i16 30, label %37
    i16 35, label %41
    i16 32, label %44
    i16 31, label %62
    i16 49, label %66
    i16 50, label %99
    i16 99, label %123
    i16 98, label %123
    i16 39, label %123
    i16 100, label %123
  ]

9:                                                ; preds = %5
  %10 = tail call i32 @putc(i32 noundef 46, ptr noundef %0) #21
  br label %130

11:                                               ; preds = %5
  %12 = and i32 %6, 67108864
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 2
  %16 = load ptr, ptr %15, align 8, !tbaa !12
  %17 = icmp eq ptr %16, null
  br i1 %17, label %26, label %18

18:                                               ; preds = %14
  tail call void @mark_decl_referenced(ptr noundef nonnull %16) #22
  %19 = load i32, ptr %7, align 8
  %20 = and i32 %19, 67108864
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load ptr, ptr %15, align 8, !tbaa !12
  br label %24

24:                                               ; preds = %18, %22
  %25 = phi ptr [ %23, %22 ], [ null, %18 ]
  tail call void @assemble_external(ptr noundef %25) #22
  br label %26

26:                                               ; preds = %11, %24, %14
  %27 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !12
  tail call void @assemble_name(ptr noundef %0, ptr noundef %28) #22
  br label %130

29:                                               ; preds = %5
  %30 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !12
  br label %32

32:                                               ; preds = %5, %29
  %33 = phi ptr [ %31, %29 ], [ %7, %5 ]
  %34 = getelementptr inbounds %struct.rtx_def, ptr %33, i64 1, i32 1
  %35 = load i32, ptr %34, align 8, !tbaa !12
  %36 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.55, ptr noundef nonnull @.str.21, i32 noundef %35) #21
  call void @assemble_name(ptr noundef %0, ptr noundef nonnull %3) #22
  br label %130

37:                                               ; preds = %5
  %38 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %39 = load i64, ptr %38, align 8, !tbaa !12
  %40 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.47, i64 noundef %39) #21
  br label %130

41:                                               ; preds = %5
  %42 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !12
  tail call void @output_addr_const(ptr noundef %0, ptr noundef %43) #21
  br label %130

44:                                               ; preds = %5
  %45 = and i32 %6, 16711680
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %61

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %49 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 1
  %50 = load i64, ptr %49, align 8, !tbaa !12
  %51 = icmp eq i64 %50, 0
  %52 = load i64, ptr %48, align 8, !tbaa !12
  br i1 %51, label %55, label %53

53:                                               ; preds = %47
  %54 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.57, i64 noundef %50, i64 noundef %52) #21
  br label %130

55:                                               ; preds = %47
  %56 = icmp slt i64 %52, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %55
  %58 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.58, i64 noundef %52) #21
  br label %130

59:                                               ; preds = %55
  %60 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.47, i64 noundef %52) #21
  br label %130

61:                                               ; preds = %44
  tail call void (ptr, ...) @output_operand_lossage(ptr noundef nonnull @.str.59) #21
  br label %130

62:                                               ; preds = %5
  %63 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %64 = load i64, ptr %63, align 8, !tbaa !12
  %65 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.58, i64 noundef %64) #21
  br label %130

66:                                               ; preds = %5
  %67 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !12
  %69 = load i32, ptr %68, align 8
  %70 = and i32 %69, 65535
  %71 = icmp eq i32 %70, 30
  br i1 %71, label %72, label %84

72:                                               ; preds = %66
  %73 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 1
  %74 = load ptr, ptr %73, align 8, !tbaa !12
  tail call void @output_addr_const(ptr noundef %0, ptr noundef %74) #21
  %75 = load ptr, ptr %67, align 8, !tbaa !12
  %76 = getelementptr inbounds %struct.rtx_def, ptr %75, i64 0, i32 1
  %77 = load i64, ptr %76, align 8, !tbaa !12
  %78 = icmp sgt i64 %77, -1
  br i1 %78, label %79, label %82

79:                                               ; preds = %72
  %80 = tail call i32 @fputc(i32 43, ptr %0)
  %81 = load ptr, ptr %67, align 8, !tbaa !12
  br label %82

82:                                               ; preds = %79, %72
  %83 = phi ptr [ %81, %79 ], [ %75, %72 ]
  tail call void @output_addr_const(ptr noundef %0, ptr noundef %83) #21
  br label %130

84:                                               ; preds = %66
  tail call void @output_addr_const(ptr noundef %0, ptr noundef nonnull %68) #21
  %85 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 1
  %86 = load ptr, ptr %85, align 8, !tbaa !12
  %87 = load i32, ptr %86, align 8
  %88 = and i32 %87, 65535
  %89 = icmp eq i32 %88, 30
  br i1 %89, label %90, label %94

90:                                               ; preds = %84
  %91 = getelementptr inbounds %struct.rtx_def, ptr %86, i64 0, i32 1
  %92 = load i64, ptr %91, align 8, !tbaa !12
  %93 = icmp sgt i64 %92, -1
  br i1 %93, label %94, label %97

94:                                               ; preds = %90, %84
  %95 = tail call i32 @fputc(i32 43, ptr %0)
  %96 = load ptr, ptr %85, align 8, !tbaa !12
  br label %97

97:                                               ; preds = %94, %90
  %98 = phi ptr [ %96, %94 ], [ %86, %90 ]
  tail call void @output_addr_const(ptr noundef %0, ptr noundef %98) #21
  br label %130

99:                                               ; preds = %5
  %100 = tail call ptr @simplify_subtraction(ptr noundef nonnull %7) #22
  %101 = load i32, ptr %100, align 8
  %102 = and i32 %101, 65535
  %103 = icmp eq i32 %102, 50
  br i1 %103, label %104, label %5

104:                                              ; preds = %99
  %105 = getelementptr inbounds %struct.rtx_def, ptr %100, i64 0, i32 1
  %106 = load ptr, ptr %105, align 8, !tbaa !12
  tail call void @output_addr_const(ptr noundef %0, ptr noundef %106) #21
  %107 = tail call i32 @fputc(i32 45, ptr %0)
  %108 = getelementptr inbounds %struct.rtx_def, ptr %100, i64 0, i32 1, i32 0, i32 0, i64 1
  %109 = load ptr, ptr %108, align 8, !tbaa !12
  %110 = load i32, ptr %109, align 8
  %111 = trunc i32 %110 to i16
  switch i16 %111, label %117 [
    i16 30, label %112
    i16 36, label %116
    i16 45, label %116
  ]

112:                                              ; preds = %104
  %113 = getelementptr inbounds %struct.rtx_def, ptr %109, i64 0, i32 1
  %114 = load i64, ptr %113, align 8, !tbaa !12
  %115 = icmp sgt i64 %114, -1
  br i1 %115, label %116, label %117

116:                                              ; preds = %104, %104, %112
  tail call void @output_addr_const(ptr noundef %0, ptr noundef nonnull %109) #21
  br label %130

117:                                              ; preds = %104, %112
  %118 = load ptr, ptr @targetm, align 8, !tbaa !164
  %119 = tail call i32 @fputs(ptr noundef %118, ptr noundef %0) #21
  %120 = load ptr, ptr %108, align 8, !tbaa !12
  tail call void @output_addr_const(ptr noundef %0, ptr noundef %120) #21
  %121 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 1), align 8, !tbaa !165
  %122 = tail call i32 @fputs(ptr noundef %121, ptr noundef %0) #21
  br label %130

123:                                              ; preds = %5, %5, %5, %5
  %124 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %125 = load ptr, ptr %124, align 8, !tbaa !12
  tail call void @output_addr_const(ptr noundef %0, ptr noundef %125) #21
  br label %130

126:                                              ; preds = %5
  %127 = tail call zeroext i8 @output_addr_const_extra(ptr noundef %0, ptr noundef nonnull %7) #22
  %128 = icmp eq i8 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %126
  tail call void (ptr, ...) @output_operand_lossage(ptr noundef nonnull @.str.62) #21
  br label %130

130:                                              ; preds = %126, %116, %117, %82, %97, %61, %57, %59, %53, %129, %123, %62, %41, %37, %32, %26, %9
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %3) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @output_operand(ptr noundef %0, i32 noundef %1) unnamed_addr #6 {
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !6
  %4 = icmp eq ptr %0, null
  br i1 %4, label %21, label %5

5:                                                ; preds = %2
  %6 = load i32, ptr %0, align 8
  %7 = and i32 %6, 65535
  %8 = icmp eq i32 %7, 39
  br i1 %8, label %9, label %12

9:                                                ; preds = %5
  %10 = call ptr @alter_subreg(ptr noundef nonnull %3) #21
  store ptr %10, ptr %3, align 8, !tbaa !6
  %11 = icmp eq ptr %10, null
  br i1 %11, label %21, label %12

12:                                               ; preds = %5, %9
  %13 = phi ptr [ %10, %9 ], [ %0, %5 ]
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, 65535
  %16 = icmp eq i32 %15, 37
  br i1 %16, label %17, label %23

17:                                               ; preds = %12
  %18 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %13) #21
  %19 = icmp ult i32 %18, 53
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  tail call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 3496, ptr noundef nonnull @.str.11) #22
  br label %23

21:                                               ; preds = %2, %9
  %22 = load ptr, ptr @asm_out_file, align 8, !tbaa !6
  tail call void @print_operand(ptr noundef %22, ptr noundef null, i32 noundef %1) #22
  br label %26

23:                                               ; preds = %12, %17, %20
  %24 = load ptr, ptr @asm_out_file, align 8, !tbaa !6
  tail call void @print_operand(ptr noundef %24, ptr noundef nonnull %13, i32 noundef %1) #22
  %25 = call i32 @for_each_rtx(ptr noundef nonnull %3, ptr noundef nonnull @mark_symbol_ref_as_used, ptr noundef null) #22
  br label %26

26:                                               ; preds = %21, %23
  ret void
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_mem_expr_from_op(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #17 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #23
  store i32 0, ptr %1, align 4, !tbaa !10
  %4 = load i32, ptr %0, align 8
  %5 = trunc i32 %4 to i16
  switch i16 %5, label %52 [
    i16 37, label %6
    i16 43, label %12
  ]

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %8 = load ptr, ptr %7, align 8, !tbaa !12
  %9 = icmp eq ptr %8, null
  br i1 %9, label %52, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !166
  br label %52

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %14 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %15 = load ptr, ptr %14, align 8, !tbaa !12
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %12
  %18 = load ptr, ptr %15, align 8, !tbaa !168
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %52

20:                                               ; preds = %12, %17
  store i32 1, ptr %1, align 4, !tbaa !10
  %21 = load ptr, ptr %13, align 8, !tbaa !12
  %22 = call fastcc ptr @get_mem_expr_from_op(ptr noundef %21, ptr noundef nonnull %3) #21
  %23 = icmp eq ptr %22, null
  %24 = load i32, ptr %3, align 4
  %25 = icmp ne i32 %24, 0
  %26 = select i1 %23, i1 true, i1 %25
  br i1 %26, label %27, label %52

27:                                               ; preds = %20
  %28 = load i32, ptr %21, align 8
  %29 = and i32 %28, 65535
  %30 = icmp eq i32 %29, 49
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.rtx_def, ptr %21, i64 0, i32 1, i32 0, i32 0, i64 1
  %33 = load ptr, ptr %32, align 8, !tbaa !12
  %34 = call fastcc ptr @get_mem_expr_from_op(ptr noundef %33, ptr noundef nonnull %3) #21
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %52

36:                                               ; preds = %27, %31
  br label %37

37:                                               ; preds = %36, %44
  %38 = phi ptr [ %46, %44 ], [ %21, %36 ]
  %39 = load i32, ptr %38, align 8
  %40 = and i32 %39, 65535
  %41 = zext nneg i32 %40 to i64
  %42 = getelementptr inbounds [139 x i32], ptr @rtx_class, i64 0, i64 %41
  %43 = load i32, ptr %42, align 4, !tbaa !10
  switch i32 %43, label %47 [
    i32 4, label %44
    i32 2, label %44
  ]

44:                                               ; preds = %37, %37
  %45 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !12
  br label %37, !llvm.loop !170

47:                                               ; preds = %37
  %48 = call fastcc ptr @get_mem_expr_from_op(ptr noundef nonnull %38, ptr noundef nonnull %3) #21
  %49 = load i32, ptr %3, align 4, !tbaa !10
  %50 = icmp eq i32 %49, 0
  %51 = select i1 %50, ptr %48, ptr null
  br label %52

52:                                               ; preds = %17, %31, %20, %2, %10, %6, %47
  %53 = phi ptr [ %51, %47 ], [ %11, %10 ], [ null, %6 ], [ null, %2 ], [ %22, %20 ], [ %34, %31 ], [ %18, %17 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #23
  ret ptr %53
}

; Function Attrs: optsize
declare void @print_mem_expr(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @print_operand(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare i32 @for_each_rtx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @mark_symbol_ref_as_used(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #6 {
  %3 = load ptr, ptr %0, align 8, !tbaa !6
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 45
  br i1 %6, label %7, label %15

7:                                                ; preds = %2
  %8 = and i32 %4, 67108864
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 2
  %12 = load ptr, ptr %11, align 8, !tbaa !12
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @assemble_external(ptr noundef nonnull %12) #22
  br label %15

15:                                               ; preds = %7, %2, %10, %14
  %16 = phi i32 [ -1, %14 ], [ -1, %10 ], [ 0, %2 ], [ -1, %7 ]
  ret i32 %16
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @mark_symbol_refs_as_used(ptr noundef %0) local_unnamed_addr #6 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !6
  %3 = call i32 @for_each_rtx(ptr noundef nonnull %2, ptr noundef nonnull @mark_symbol_ref_as_used, ptr noundef null) #22
  ret void
}

; Function Attrs: optsize
declare void @print_operand_address(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @mark_decl_referenced(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @simplify_subtraction(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare zeroext i8 @output_addr_const_extra(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @split_double(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #6 {
  %4 = alloca %struct.real_value, align 8
  %5 = alloca [2 x i64], align 16
  %6 = load i32, ptr %0, align 8
  %7 = trunc i32 %6 to i16
  switch i16 %7, label %22 [
    i16 30, label %8
    i16 32, label %24
  ]

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !12
  %11 = and i64 %10, 4294967295
  %12 = and i64 %10, 2147483648
  %13 = icmp eq i64 %12, 0
  %14 = select i1 %13, i64 0, i64 -4294967296
  %15 = or disjoint i64 %14, %11
  %16 = lshr i64 %10, 32
  %17 = or disjoint i64 %16, -4294967296
  %18 = icmp slt i64 %10, 0
  %19 = select i1 %18, i64 %17, i64 %16
  %20 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %15) #22
  store ptr %20, ptr %1, align 8, !tbaa !6
  %21 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %19) #22
  store ptr %21, ptr %2, align 8, !tbaa !6
  br label %61

22:                                               ; preds = %3
  store ptr %0, ptr %1, align 8, !tbaa !6
  %23 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !6
  store ptr %23, ptr %2, align 8, !tbaa !6
  br label %61

24:                                               ; preds = %3
  %25 = lshr i32 %6, 16
  %26 = and i32 %25, 255
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %24
  %29 = zext nneg i32 %26 to i64
  %30 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %29
  %31 = load i8, ptr %30, align 1, !tbaa !12
  %32 = icmp eq i8 %31, 2
  br i1 %32, label %33, label %40

33:                                               ; preds = %28, %24
  %34 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %35 = load i64, ptr %34, align 8, !tbaa !12
  %36 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %35) #22
  store ptr %36, ptr %1, align 8, !tbaa !6
  %37 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %38 = load i64, ptr %37, align 8, !tbaa !12
  %39 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %38) #22
  store ptr %39, ptr %2, align 8, !tbaa !6
  br label %61

40:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #23
  %41 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %41, i64 32, i1 false), !tbaa.struct !171
  %42 = tail call i32 @mode_for_size(i32 noundef 64, i32 noundef 8, i32 noundef 0) #22
  %43 = call i64 @real_to_target(ptr noundef nonnull %5, ptr noundef nonnull %4, i32 noundef %42) #22
  %44 = load i64, ptr %5, align 16, !tbaa !84
  %45 = and i64 %44, 2147483648
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %40
  %48 = or i64 %44, -4294967296
  store i64 %48, ptr %5, align 16, !tbaa !84
  br label %49

49:                                               ; preds = %47, %40
  %50 = phi i64 [ %48, %47 ], [ %44, %40 ]
  %51 = getelementptr inbounds [2 x i64], ptr %5, i64 0, i64 1
  %52 = load i64, ptr %51, align 8, !tbaa !84
  %53 = and i64 %52, 2147483648
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %49
  %56 = or i64 %52, -4294967296
  store i64 %56, ptr %51, align 8, !tbaa !84
  br label %57

57:                                               ; preds = %55, %49
  %58 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %50) #22
  store ptr %58, ptr %1, align 8, !tbaa !6
  %59 = load i64, ptr %51, align 8, !tbaa !84
  %60 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %59) #22
  store ptr %60, ptr %2, align 8, !tbaa !6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #23
  br label %61

61:                                               ; preds = %22, %57, %33, %8
  ret void
}

; Function Attrs: optsize
declare ptr @gen_rtx_CONST_INT(i32 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare i64 @real_to_target(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare i32 @mode_for_size(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @leaf_function_p() local_unnamed_addr #6 {
  %1 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 35), align 1, !tbaa !131
  %2 = icmp ne i8 %1, 0
  %3 = load i32, ptr @profile_arc_flag, align 4
  %4 = icmp ne i32 %3, 0
  %5 = select i1 %2, i1 true, i1 %4
  br i1 %5, label %66, label %6

6:                                                ; preds = %0
  %7 = tail call ptr @get_insns() #22
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %34, %6
  %10 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 27), align 8, !tbaa !12
  %11 = icmp eq ptr %10, null
  br i1 %11, label %66, label %38

12:                                               ; preds = %6, %34
  %13 = phi ptr [ %36, %34 ], [ %7, %6 ]
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, 16842751
  %16 = icmp eq i32 %15, 10
  br i1 %16, label %66, label %17

17:                                               ; preds = %12
  %18 = and i32 %14, 65535
  %19 = icmp eq i32 %18, 8
  br i1 %19, label %20, label %34

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 1
  %22 = load ptr, ptr %21, align 8, !tbaa !12
  %23 = load i32, ptr %22, align 8
  %24 = and i32 %23, 65535
  %25 = icmp eq i32 %24, 5
  br i1 %25, label %26, label %34

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !12
  %29 = getelementptr inbounds %struct.rtvec_def, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !6
  %31 = load i32, ptr %30, align 8
  %32 = and i32 %31, 16842751
  %33 = icmp eq i32 %32, 10
  br i1 %33, label %66, label %34

34:                                               ; preds = %17, %20, %26
  %35 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1, i32 0, i32 0, i64 2
  %36 = load ptr, ptr %35, align 8, !tbaa !12
  %37 = icmp eq ptr %36, null
  br i1 %37, label %9, label %12, !llvm.loop !172

38:                                               ; preds = %9, %62
  %39 = phi ptr [ %64, %62 ], [ %10, %9 ]
  %40 = getelementptr inbounds %struct.rtx_def, ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !12
  %42 = load i32, ptr %41, align 8
  %43 = and i32 %42, 16842751
  %44 = icmp eq i32 %43, 10
  br i1 %44, label %66, label %45

45:                                               ; preds = %38
  %46 = and i32 %42, 65535
  %47 = icmp eq i32 %46, 8
  br i1 %47, label %48, label %62

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.rtx_def, ptr %41, i64 1
  %50 = load ptr, ptr %49, align 8, !tbaa !12
  %51 = load i32, ptr %50, align 8
  %52 = and i32 %51, 65535
  %53 = icmp eq i32 %52, 5
  br i1 %53, label %54, label %62

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.rtx_def, ptr %50, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !12
  %57 = getelementptr inbounds %struct.rtvec_def, ptr %56, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !6
  %59 = load i32, ptr %58, align 8
  %60 = and i32 %59, 16842751
  %61 = icmp eq i32 %60, 10
  br i1 %61, label %66, label %62

62:                                               ; preds = %45, %48, %54
  %63 = getelementptr inbounds %struct.rtx_def, ptr %39, i64 0, i32 1, i32 0, i32 0, i64 1
  %64 = load ptr, ptr %63, align 8, !tbaa !12
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %38, !llvm.loop !173

66:                                               ; preds = %26, %12, %38, %54, %62, %9, %0
  %67 = phi i32 [ 0, %0 ], [ 1, %9 ], [ 0, %38 ], [ 0, %54 ], [ 1, %62 ], [ 0, %12 ], [ 0, %26 ]
  ret i32 %67
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @final_forward_branch_p(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = load ptr, ptr @uid_shuid, align 8, !tbaa !6
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 4014, ptr noundef nonnull @.str.11) #22
  %5 = load ptr, ptr @uid_shuid, align 8, !tbaa !6
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi ptr [ %2, %1 ], [ %5, %4 ]
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !12
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i32, ptr %7, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !10
  %13 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 2
  %14 = load ptr, ptr %13, align 8, !tbaa !12
  %15 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1
  %16 = load i32, ptr %15, align 8, !tbaa !12
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, ptr %7, i64 %17
  %19 = load i32, ptr %18, align 4, !tbaa !10
  %20 = icmp ne i32 %12, 0
  %21 = icmp ne i32 %19, 0
  %22 = select i1 %20, i1 %21, i1 false
  br i1 %22, label %24, label %23

23:                                               ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 4018, ptr noundef nonnull @.str.11) #22
  br label %24

24:                                               ; preds = %6, %23
  %25 = icmp slt i32 %12, %19
  %26 = zext i1 %25 to i32
  ret i32 %26
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_flush_symbol_queue() local_unnamed_addr #6 {
  %1 = load i32, ptr @debug_nesting, align 4, !tbaa !10
  %2 = add nsw i32 %1, 1
  store i32 %2, ptr @debug_nesting, align 4, !tbaa !10
  %3 = load i32, ptr @symbol_queue_index, align 4, !tbaa !10
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %42

5:                                                ; preds = %0
  %6 = load ptr, ptr @symbol_queue, align 8, !tbaa !6
  br label %7

7:                                                ; preds = %5, %7
  %8 = phi ptr [ %6, %5 ], [ %24, %7 ]
  %9 = phi i64 [ 0, %5 ], [ %35, %7 ]
  %10 = getelementptr inbounds ptr, ptr %8, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !6
  %12 = load i64, ptr %11, align 8
  %13 = and i64 %12, 16777216
  %14 = getelementptr inbounds %struct.tree_decl_common, ptr %11, i64 0, i32 2
  %15 = load i64, ptr %14, align 8
  %16 = and i64 %15, 33554432
  %17 = or i64 %12, 16777216
  store i64 %17, ptr %11, align 8
  %18 = load ptr, ptr %10, align 8, !tbaa !6
  %19 = getelementptr inbounds %struct.tree_decl_common, ptr %18, i64 0, i32 2
  %20 = load i64, ptr %19, align 8
  %21 = and i64 %20, -33554433
  store i64 %21, ptr %19, align 8
  %22 = load ptr, ptr %10, align 8, !tbaa !6
  %23 = tail call i32 @dbxout_symbol(ptr noundef %22, i32 noundef 0) #22
  %24 = load ptr, ptr @symbol_queue, align 8, !tbaa !6
  %25 = getelementptr inbounds ptr, ptr %24, i64 %9
  %26 = load ptr, ptr %25, align 8, !tbaa !6
  %27 = load i64, ptr %26, align 8
  %28 = and i64 %27, -16777217
  %29 = or disjoint i64 %28, %13
  store i64 %29, ptr %26, align 8
  %30 = load ptr, ptr %25, align 8, !tbaa !6
  %31 = getelementptr inbounds %struct.tree_decl_common, ptr %30, i64 0, i32 2
  %32 = load i64, ptr %31, align 8
  %33 = and i64 %32, -33554433
  %34 = or disjoint i64 %33, %16
  store i64 %34, ptr %31, align 8
  %35 = add nuw nsw i64 %9, 1
  %36 = load i32, ptr @symbol_queue_index, align 4, !tbaa !10
  %37 = sext i32 %36 to i64
  %38 = icmp slt i64 %35, %37
  br i1 %38, label %7, label %39, !llvm.loop !174

39:                                               ; preds = %7
  %40 = load i32, ptr @debug_nesting, align 4, !tbaa !10
  %41 = add nsw i32 %40, -1
  br label %42

42:                                               ; preds = %39, %0
  %43 = phi i32 [ %41, %39 ], [ %1, %0 ]
  store i32 0, ptr @symbol_queue_index, align 4, !tbaa !10
  store i32 %43, ptr @debug_nesting, align 4, !tbaa !10
  ret void
}

; Function Attrs: optsize
declare i32 @dbxout_symbol(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_queue_symbol(ptr noundef %0) local_unnamed_addr #6 {
  %2 = load i32, ptr @symbol_queue_index, align 4, !tbaa !10
  %3 = load i32, ptr @symbol_queue_size, align 4, !tbaa !10
  %4 = icmp slt i32 %2, %3
  %5 = load ptr, ptr @symbol_queue, align 8, !tbaa !6
  br i1 %4, label %12, label %6

6:                                                ; preds = %1
  %7 = add nsw i32 %3, 10
  store i32 %7, ptr @symbol_queue_size, align 4, !tbaa !10
  %8 = sext i32 %7 to i64
  %9 = shl nsw i64 %8, 3
  %10 = tail call ptr @xrealloc(ptr noundef %5, i64 noundef %9) #22
  store ptr %10, ptr @symbol_queue, align 8, !tbaa !6
  %11 = load i32, ptr @symbol_queue_index, align 4, !tbaa !10
  br label %12

12:                                               ; preds = %6, %1
  %13 = phi i32 [ %11, %6 ], [ %2, %1 ]
  %14 = phi ptr [ %10, %6 ], [ %5, %1 ]
  %15 = add nsw i32 %13, 1
  store i32 %15, ptr @symbol_queue_index, align 4, !tbaa !10
  %16 = sext i32 %13 to i64
  %17 = getelementptr inbounds ptr, ptr %14, i64 %16
  store ptr %0, ptr %17, align 8, !tbaa !6
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define dso_local void @debug_free_queue() local_unnamed_addr #4 {
  %1 = load ptr, ptr @symbol_queue, align 8, !tbaa !6
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @free(ptr noundef nonnull %1) #21
  store ptr null, ptr @symbol_queue, align 8, !tbaa !6
  store i32 0, ptr @symbol_queue_size, align 4, !tbaa !10
  br label %4

4:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @rest_of_handle_final() #6 {
  %1 = load ptr, ptr @current_function_decl, align 8, !tbaa !6
  %2 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !12
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %9

5:                                                ; preds = %0
  tail call void @make_decl_rtl(ptr noundef nonnull %1) #22
  %6 = load ptr, ptr @current_function_decl, align 8, !tbaa !6
  %7 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !12
  br label %9

9:                                                ; preds = %0, %5
  %10 = phi ptr [ %8, %5 ], [ %3, %0 ]
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 65535
  %13 = icmp eq i32 %12, 43
  br i1 %13, label %15, label %14

14:                                               ; preds = %9
  tail call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 4250, ptr noundef nonnull @.str.11) #22
  br label %15

15:                                               ; preds = %9, %14
  %16 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !12
  %18 = load i32, ptr %17, align 8
  %19 = and i32 %18, 65535
  %20 = icmp eq i32 %19, 45
  br i1 %20, label %22, label %21

21:                                               ; preds = %15
  tail call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 4252, ptr noundef nonnull @.str.11) #22
  br label %22

22:                                               ; preds = %15, %21
  %23 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !12
  %25 = load ptr, ptr @current_function_decl, align 8, !tbaa !6
  tail call void @assemble_start_function(ptr noundef %25, ptr noundef %24) #22
  %26 = tail call ptr @get_insns() #22
  %27 = load ptr, ptr @asm_out_file, align 8, !tbaa !6
  tail call void @final_start_function(ptr poison, ptr noundef %27, i32 poison) #21
  %28 = tail call ptr @get_insns() #22
  %29 = load ptr, ptr @asm_out_file, align 8, !tbaa !6
  %30 = load i32, ptr @optimize, align 4, !tbaa !10
  tail call void @final(ptr noundef %28, ptr noundef %29, i32 noundef %30) #21
  tail call void @final_end_function() #21
  %31 = load ptr, ptr @current_function_decl, align 8, !tbaa !6
  tail call void @assemble_end_function(ptr noundef %31, ptr noundef %24) #22
  tail call void @output_function_exception_table(ptr noundef %24) #22
  store i8 0, ptr @user_defined_section_attribute, align 1, !tbaa !12
  tail call void @free_reg_info() #22
  %32 = load i32, ptr @quiet_flag, align 4, !tbaa !10
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %22
  %35 = load ptr, ptr @asm_out_file, align 8, !tbaa !6
  %36 = tail call i32 @fflush(ptr noundef %35) #21
  br label %37

37:                                               ; preds = %22, %34
  %38 = load i8, ptr @timevar_enable, align 1, !tbaa !12
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %37
  tail call void @timevar_push_1(i32 noundef 166) #22
  br label %41

41:                                               ; preds = %40, %37
  %42 = load ptr, ptr @current_function_decl, align 8, !tbaa !6
  %43 = getelementptr inbounds %struct.tree_decl_common, ptr %42, i64 0, i32 2
  %44 = load i64, ptr %43, align 8
  %45 = and i64 %44, 1024
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %41
  %48 = load ptr, ptr @debug_hooks, align 8, !tbaa !6
  %49 = getelementptr inbounds %struct.gcc_debug_hooks, ptr %48, i64 0, i32 16
  %50 = load ptr, ptr %49, align 8, !tbaa !175
  tail call void %50(ptr noundef nonnull %42) #22
  br label %51

51:                                               ; preds = %41, %47
  %52 = load i8, ptr @timevar_enable, align 1, !tbaa !12
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %51
  tail call void @timevar_pop_1(i32 noundef 166) #22
  br label %55

55:                                               ; preds = %54, %51
  %56 = load ptr, ptr @global_trees, align 16, !tbaa !6
  %57 = load ptr, ptr @current_function_decl, align 8, !tbaa !6
  %58 = getelementptr inbounds %struct.tree_decl_common, ptr %57, i64 0, i32 5
  store ptr %56, ptr %58, align 8, !tbaa !12
  %59 = getelementptr inbounds %struct.tree_function_decl, ptr %57, i64 0, i32 5
  %60 = load i32, ptr %59, align 8
  %61 = and i32 %60, 8192
  %62 = icmp ne i32 %61, 0
  %63 = load i8, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 112), align 1
  %64 = icmp ne i8 %63, 0
  %65 = select i1 %62, i1 %64, i1 false
  br i1 %65, label %66, label %86

66:                                               ; preds = %55
  %67 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 25), align 8, !tbaa !176
  %68 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %57, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !12
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %75

71:                                               ; preds = %66
  tail call void @make_decl_rtl(ptr noundef nonnull %57) #22
  %72 = load ptr, ptr @current_function_decl, align 8, !tbaa !6
  %73 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %72, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !12
  br label %75

75:                                               ; preds = %66, %71
  %76 = phi ptr [ %72, %71 ], [ %57, %66 ]
  %77 = phi ptr [ %74, %71 ], [ %69, %66 ]
  %78 = getelementptr inbounds %struct.rtx_def, ptr %77, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !12
  %80 = tail call zeroext i16 @decl_init_priority_lookup(ptr noundef nonnull %76) #22
  %81 = zext i16 %80 to i32
  tail call void %67(ptr noundef %79, i32 noundef %81) #22
  %82 = load ptr, ptr @current_function_decl, align 8, !tbaa !6
  %83 = getelementptr inbounds %struct.tree_function_decl, ptr %82, i64 0, i32 5
  %84 = load i32, ptr %83, align 8
  %85 = load i8, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 112), align 1
  br label %86

86:                                               ; preds = %75, %55
  %87 = phi i8 [ %85, %75 ], [ %63, %55 ]
  %88 = phi i32 [ %84, %75 ], [ %60, %55 ]
  %89 = phi ptr [ %82, %75 ], [ %57, %55 ]
  %90 = and i32 %88, 16384
  %91 = icmp ne i32 %90, 0
  %92 = icmp ne i8 %87, 0
  %93 = select i1 %91, i1 %92, i1 false
  br i1 %93, label %94, label %110

94:                                               ; preds = %86
  %95 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 26), align 8, !tbaa !177
  %96 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %89, i64 0, i32 1
  %97 = load ptr, ptr %96, align 8, !tbaa !12
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %103

99:                                               ; preds = %94
  tail call void @make_decl_rtl(ptr noundef nonnull %89) #22
  %100 = load ptr, ptr @current_function_decl, align 8, !tbaa !6
  %101 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %100, i64 0, i32 1
  %102 = load ptr, ptr %101, align 8, !tbaa !12
  br label %103

103:                                              ; preds = %94, %99
  %104 = phi ptr [ %100, %99 ], [ %89, %94 ]
  %105 = phi ptr [ %102, %99 ], [ %97, %94 ]
  %106 = getelementptr inbounds %struct.rtx_def, ptr %105, i64 0, i32 1
  %107 = load ptr, ptr %106, align 8, !tbaa !12
  %108 = tail call zeroext i16 @decl_fini_priority_lookup(ptr noundef nonnull %104) #22
  %109 = zext i16 %108 to i32
  tail call void %95(ptr noundef %107, i32 noundef %109) #22
  br label %110

110:                                              ; preds = %103, %86
  ret i32 0
}

; Function Attrs: optsize
declare void @make_decl_rtl(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @assemble_start_function(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @assemble_end_function(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @output_function_exception_table(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @free_reg_info() local_unnamed_addr #7

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @timevar_push_1(i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @timevar_pop_1(i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare zeroext i16 @decl_init_priority_lookup(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare zeroext i16 @decl_fini_priority_lookup(ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @rest_of_handle_shorten_branches() #6 {
  %1 = tail call ptr @get_insns() #22
  tail call void @shorten_branches(ptr noundef %1) #21
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @rest_of_clean_state() #6 {
  %1 = load i32, ptr @flag_dump_unnumbered, align 4, !tbaa !10
  %2 = load i32, ptr @flag_dump_noaddr, align 4, !tbaa !10
  %3 = load ptr, ptr @flag_dump_final_insns, align 8, !tbaa !6
  %4 = icmp eq ptr %3, null
  br i1 %4, label %53, label %5

5:                                                ; preds = %0
  %6 = tail call ptr @fopen_unlocked(ptr noundef nonnull %3, ptr noundef nonnull @.str.69) #22
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %13

8:                                                ; preds = %5
  %9 = load ptr, ptr @flag_dump_final_insns, align 8, !tbaa !6
  %10 = tail call ptr @__errno_location() #22
  %11 = load i32, ptr %10, align 4, !tbaa !10
  %12 = tail call ptr @strerror(i32 noundef %11) #22
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.70, ptr noundef %9, ptr noundef %12) #22
  store ptr null, ptr @flag_dump_final_insns, align 8, !tbaa !6
  br label %53

13:                                               ; preds = %5
  %14 = load ptr, ptr @current_function_decl, align 8, !tbaa !6
  %15 = tail call ptr @decl_assembler_name(ptr noundef %14) #22
  %16 = getelementptr inbounds %struct.tree_identifier, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !12
  %18 = load ptr, ptr @cfun, align 8, !tbaa !6
  %19 = getelementptr inbounds %struct.function, ptr %18, i64 0, i32 20
  %20 = load i32, ptr %19, align 8
  %21 = lshr i32 %20, 16
  %22 = and i32 %21, 3
  %23 = icmp eq i32 %22, 2
  %24 = icmp eq i32 %22, 0
  %25 = select i1 %24, ptr @.str.73, ptr @.str.16
  %26 = select i1 %23, ptr @.str.72, ptr %25
  %27 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %6, ptr noundef nonnull @.str.71, ptr noundef %17, ptr noundef nonnull %26) #21
  store i32 1, ptr @flag_dump_unnumbered, align 4, !tbaa !10
  store i32 1, ptr @flag_dump_noaddr, align 4, !tbaa !10
  %28 = load ptr, ptr @flag_compare_debug_opt, align 8, !tbaa !6
  %29 = icmp ne ptr %28, null
  %30 = load i32, ptr @flag_compare_debug, align 4
  %31 = icmp ne i32 %30, 0
  %32 = select i1 %29, i1 true, i1 %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %13
  %34 = load i32, ptr @dump_flags, align 4, !tbaa !10
  %35 = or i32 %34, 1048576
  store i32 %35, ptr @dump_flags, align 4, !tbaa !10
  br label %36

36:                                               ; preds = %13, %33
  store i8 1, ptr @final_insns_dump_p, align 1, !tbaa !12
  %37 = tail call ptr @get_insns() #22
  %38 = icmp eq ptr %37, null
  br i1 %38, label %53, label %39

39:                                               ; preds = %36, %47
  %40 = phi ptr [ %51, %47 ], [ %37, %36 ]
  %41 = load i32, ptr %40, align 8
  %42 = and i32 %41, 65535
  %43 = icmp eq i32 %42, 12
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.rtx_def, ptr %40, i64 1, i32 1
  %46 = load i32, ptr %45, align 8, !tbaa !12
  br label %47

47:                                               ; preds = %39, %44
  %48 = phi i32 [ %46, %44 ], [ 0, %39 ]
  %49 = getelementptr inbounds %struct.rtx_def, ptr %40, i64 0, i32 1
  store i32 %48, ptr %49, align 8
  %50 = getelementptr inbounds %struct.rtx_def, ptr %40, i64 0, i32 1, i32 0, i32 0, i64 2
  %51 = load ptr, ptr %50, align 8, !tbaa !12
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %39, !llvm.loop !178

53:                                               ; preds = %47, %36, %8, %0
  %54 = phi ptr [ null, %8 ], [ null, %0 ], [ %6, %36 ], [ %6, %47 ]
  %55 = tail call ptr @get_insns() #22
  %56 = icmp eq ptr %55, null
  br i1 %56, label %75, label %57

57:                                               ; preds = %53
  %58 = icmp eq ptr %54, null
  br label %59

59:                                               ; preds = %57, %73
  %60 = phi ptr [ %55, %57 ], [ %62, %73 ]
  %61 = getelementptr inbounds %struct.rtx_def, ptr %60, i64 0, i32 1, i32 0, i32 0, i64 2
  %62 = load ptr, ptr %61, align 8, !tbaa !12
  %63 = getelementptr inbounds %struct.rtx_def, ptr %60, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %63, i8 0, i64 16, i1 false)
  br i1 %58, label %73, label %64

64:                                               ; preds = %59
  %65 = load i32, ptr %60, align 8
  %66 = and i32 %65, 65535
  %67 = icmp eq i32 %66, 13
  br i1 %67, label %68, label %71

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.rtx_def, ptr %60, i64 1
  %70 = load i32, ptr %69, align 8, !tbaa !12
  switch i32 %70, label %71 [
    i32 9, label %73
    i32 2, label %73
    i32 3, label %73
    i32 12, label %73
  ]

71:                                               ; preds = %68, %64
  %72 = tail call i32 @print_rtl_single(ptr noundef nonnull %54, ptr noundef nonnull %60) #22
  br label %73

73:                                               ; preds = %68, %68, %68, %68, %59, %71
  %74 = icmp eq ptr %62, null
  br i1 %74, label %75, label %59, !llvm.loop !179

75:                                               ; preds = %73, %53
  %76 = icmp eq ptr %54, null
  br i1 %76, label %85, label %77

77:                                               ; preds = %75
  store i32 %2, ptr @flag_dump_noaddr, align 4, !tbaa !10
  store i32 %1, ptr @flag_dump_unnumbered, align 4, !tbaa !10
  store i8 0, ptr @final_insns_dump_p, align 1, !tbaa !12
  %78 = tail call i32 @fclose(ptr noundef nonnull %54) #21
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %85, label %80

80:                                               ; preds = %77
  %81 = load ptr, ptr @flag_dump_final_insns, align 8, !tbaa !6
  %82 = tail call ptr @__errno_location() #22
  %83 = load i32, ptr %82, align 4, !tbaa !10
  %84 = tail call ptr @strerror(i32 noundef %83) #22
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.74, ptr noundef %81, ptr noundef %84) #22
  store ptr null, ptr @flag_dump_final_insns, align 8, !tbaa !6
  br label %85

85:                                               ; preds = %77, %80, %75
  store i32 0, ptr @flag_rerun_cse_after_global_opts, align 4, !tbaa !10
  store i32 0, ptr @reload_completed, align 4, !tbaa !10
  store i32 0, ptr @epilogue_completed, align 4, !tbaa !10
  store i32 0, ptr @regstack_completed, align 4, !tbaa !10
  tail call void @init_insn_lengths() #21
  tail call void @init_temp_slots() #22
  %86 = tail call i32 @free_bb_for_insn() #22
  tail call void @delete_tree_ssa() #22
  %87 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 49), align 8, !tbaa !180
  %88 = load ptr, ptr @current_function_decl, align 8, !tbaa !6
  %89 = tail call zeroext i8 %87(ptr noundef %88) #22
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %97, label %91

91:                                               ; preds = %85
  %92 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 23), align 8, !tbaa !181
  %93 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 22), align 4, !tbaa !182
  %94 = tail call i32 @llvm.umax.i32(i32 %93, i32 %92)
  %95 = load ptr, ptr @current_function_decl, align 8, !tbaa !6
  %96 = tail call ptr @cgraph_rtl_info(ptr noundef %95) #22
  store i32 %94, ptr %96, align 4, !tbaa !183
  br label %97

97:                                               ; preds = %91, %85
  tail call void @init_recog_no_volatile() #22
  %98 = load ptr, ptr @cfun, align 8, !tbaa !6
  tail call void @free_after_parsing(ptr noundef %98) #22
  %99 = load ptr, ptr @cfun, align 8, !tbaa !6
  tail call void @free_after_compilation(ptr noundef %99) #22
  ret i32 0
}

; Function Attrs: optsize
declare ptr @fopen_unlocked(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @strerror(i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @__errno_location() local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @decl_assembler_name(ptr noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @init_temp_slots() local_unnamed_addr #7

; Function Attrs: optsize
declare i32 @free_bb_for_insn() local_unnamed_addr #7

; Function Attrs: optsize
declare void @delete_tree_ssa() local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @cgraph_rtl_info(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @init_recog_no_volatile() local_unnamed_addr #7

; Function Attrs: optsize
declare void @free_after_parsing(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @free_after_compilation(ptr noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #19

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr, i32, i64) local_unnamed_addr #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #19

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #16 = { mustprogress nofree nounwind optsize willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree nounwind }
attributes #19 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nofree nounwind willreturn memory(argmem: read) }
attributes #21 = { optsize }
attributes #22 = { nounwind optsize }
attributes #23 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !8, i64 0}
!12 = !{!8, !8, i64 0}
!13 = !{ptr @insn_default_length, ptr @insn_min_length}
!14 = !{!15, !11, i64 0}
!15 = !{!"rtvec_def", !11, i64 0, !8, i64 8}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
!18 = distinct !{!18, !17}
!19 = !{!20, !21, i64 0}
!20 = !{!"label_alignment", !21, i64 0, !21, i64 2}
!21 = !{!"short", !8, i64 0}
!22 = !{!20, !21, i64 2}
!23 = distinct !{!23, !17}
!24 = !{!25, !7, i64 8}
!25 = !{!"function", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !11, i64 104, !11, i64 108, !11, i64 112, !11, i64 116, !11, i64 120, !11, i64 124, !7, i64 128, !11, i64 136, !11, i64 137, !11, i64 138, !11, i64 138, !11, i64 138, !11, i64 138, !11, i64 138, !11, i64 138, !11, i64 138, !11, i64 139, !11, i64 139, !11, i64 139, !11, i64 139, !11, i64 139, !11, i64 139, !11, i64 139}
!26 = !{!27, !7, i64 0}
!27 = !{!"control_flow_graph", !7, i64 0, !7, i64 8, !7, i64 16, !11, i64 24, !11, i64 28, !11, i64 32, !7, i64 40, !11, i64 48, !8, i64 52, !8, i64 60, !11, i64 68, !11, i64 72}
!28 = !{!27, !7, i64 8}
!29 = !{!30, !7, i64 56}
!30 = !{!"basic_block_def", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !8, i64 32, !7, i64 48, !7, i64 56, !8, i64 64, !31, i64 72, !11, i64 80, !11, i64 84, !11, i64 88, !11, i64 92, !11, i64 96}
!31 = !{!"long", !8, i64 0}
!32 = !{!30, !11, i64 88}
!33 = distinct !{!33, !17}
!34 = !{!35, !11, i64 8}
!35 = !{!"param_info", !7, i64 0, !11, i64 8, !8, i64 12, !11, i64 16, !11, i64 20, !7, i64 24}
!36 = !{!37, !7, i64 0}
!37 = !{!"rtl_bb_info", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !11, i64 32}
!38 = !{!30, !11, i64 80}
!39 = !{!30, !7, i64 24}
!40 = !{!41, !11, i64 0}
!41 = !{!"loop", !11, i64 0, !11, i64 4, !7, i64 8, !7, i64 16, !42, i64 24, !11, i64 32, !11, i64 36, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !43, i64 80, !43, i64 96, !8, i64 112, !8, i64 113, !11, i64 116, !7, i64 120, !7, i64 128, !8, i64 136, !7, i64 144}
!42 = !{!"lpt_decision", !11, i64 0, !11, i64 4}
!43 = !{!"", !31, i64 0, !31, i64 8}
!44 = !{!30, !11, i64 84}
!45 = !{i64 0, i64 4, !10, i64 8, i64 8, !6}
!46 = !{i64 0, i64 8, !6}
!47 = !{i8 0, i8 2}
!48 = !{!49, !11, i64 48}
!49 = !{!"edge_def", !7, i64 0, !7, i64 8, !8, i64 16, !7, i64 24, !7, i64 32, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !31, i64 56}
!50 = !{!49, !7, i64 0}
!51 = !{!49, !11, i64 52}
!52 = distinct !{!52, !17}
!53 = !{!41, !7, i64 48}
!54 = !{!41, !7, i64 8}
!55 = !{!30, !7, i64 48}
!56 = distinct !{!56, !17}
!57 = !{!58, !11, i64 0}
!58 = !{!"", !11, i64 0, !7, i64 8}
!59 = !{!60, !11, i64 0}
!60 = !{!"VEC_edge_base", !11, i64 0, !11, i64 4, !8, i64 8}
!61 = distinct !{!61, !17}
!62 = distinct !{!62, !17}
!63 = distinct !{!63, !17}
!64 = distinct !{!64, !17}
!65 = distinct !{!65, !17}
!66 = distinct !{!66, !17}
!67 = distinct !{!67, !17}
!68 = distinct !{!68, !17}
!69 = distinct !{!69, !17}
!70 = !{!71, !11, i64 0}
!71 = !{!"VEC_int_base", !11, i64 0, !11, i64 4, !8, i64 8}
!72 = !{}
!73 = !{i32 0, i32 2}
!74 = !{!71, !11, i64 4}
!75 = !{!76, !7, i64 0}
!76 = !{!"debug_prefix_map", !7, i64 0, !7, i64 8, !31, i64 16, !31, i64 24, !7, i64 32}
!77 = !{!76, !31, i64 16}
!78 = !{!76, !7, i64 8}
!79 = !{!76, !31, i64 24}
!80 = !{!76, !7, i64 32}
!81 = distinct !{!81, !17}
!82 = !{!83, !7, i64 88}
!83 = !{!"gcc_debug_hooks", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152, !7, i64 160, !7, i64 168, !7, i64 176, !7, i64 184, !7, i64 192, !7, i64 200, !7, i64 208, !7, i64 216, !7, i64 224, !7, i64 232, !7, i64 240, !11, i64 248}
!84 = !{!31, !31, i64 0}
!85 = !{!86, !7, i64 160}
!86 = !{!"gcc_target", !87, i64 0, !89, i64 368, !90, i64 664, !11, i64 744, !7, i64 752, !7, i64 760, !7, i64 768, !7, i64 776, !7, i64 784, !7, i64 792, !7, i64 800, !7, i64 808, !7, i64 816, !7, i64 824, !7, i64 832, !7, i64 840, !7, i64 848, !7, i64 856, !7, i64 864, !7, i64 872, !7, i64 880, !7, i64 888, !7, i64 896, !7, i64 904, !7, i64 912, !7, i64 920, !7, i64 928, !7, i64 936, !7, i64 944, !7, i64 952, !7, i64 960, !7, i64 968, !7, i64 976, !7, i64 984, !7, i64 992, !7, i64 1000, !7, i64 1008, !7, i64 1016, !7, i64 1024, !7, i64 1032, !7, i64 1040, !7, i64 1048, !7, i64 1056, !31, i64 1064, !31, i64 1072, !7, i64 1080, !7, i64 1088, !7, i64 1096, !7, i64 1104, !7, i64 1112, !7, i64 1120, !7, i64 1128, !7, i64 1136, !7, i64 1144, !7, i64 1152, !7, i64 1160, !7, i64 1168, !91, i64 1176, !7, i64 1232, !7, i64 1240, !7, i64 1248, !7, i64 1256, !7, i64 1264, !7, i64 1272, !7, i64 1280, !7, i64 1288, !7, i64 1296, !7, i64 1304, !7, i64 1312, !7, i64 1320, !7, i64 1328, !7, i64 1336, !7, i64 1344, !7, i64 1352, !7, i64 1360, !7, i64 1368, !7, i64 1376, !7, i64 1384, !7, i64 1392, !7, i64 1400, !7, i64 1408, !7, i64 1416, !7, i64 1424, !7, i64 1432, !7, i64 1440, !7, i64 1448, !7, i64 1456, !31, i64 1464, !92, i64 1472, !7, i64 1664, !7, i64 1672, !7, i64 1680, !7, i64 1688, !7, i64 1696, !7, i64 1704, !7, i64 1712, !7, i64 1720, !7, i64 1728, !7, i64 1736, !7, i64 1744, !7, i64 1752, !7, i64 1760, !7, i64 1768, !7, i64 1776, !93, i64 1784, !94, i64 1792, !95, i64 1896, !96, i64 1968, !7, i64 2016, !8, i64 2024, !8, i64 2025, !8, i64 2026, !8, i64 2027, !8, i64 2028, !8, i64 2029, !8, i64 2030, !8, i64 2031, !8, i64 2032, !8, i64 2033, !8, i64 2034, !8, i64 2035}
!87 = !{!"asm_out", !7, i64 0, !7, i64 8, !7, i64 16, !88, i64 24, !88, i64 56, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152, !7, i64 160, !7, i64 168, !7, i64 176, !7, i64 184, !7, i64 192, !7, i64 200, !7, i64 208, !7, i64 216, !7, i64 224, !7, i64 232, !7, i64 240, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !7, i64 280, !7, i64 288, !7, i64 296, !7, i64 304, !7, i64 312, !7, i64 320, !7, i64 328, !7, i64 336, !7, i64 344, !7, i64 352, !7, i64 360}
!88 = !{!"asm_int_op", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24}
!89 = !{!"sched", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152, !7, i64 160, !7, i64 168, !7, i64 176, !7, i64 184, !7, i64 192, !7, i64 200, !7, i64 208, !7, i64 216, !7, i64 224, !7, i64 232, !7, i64 240, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !7, i64 280, !7, i64 288}
!90 = !{!"vectorize", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72}
!91 = !{!"addr_space", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48}
!92 = !{!"calls", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152, !7, i64 160, !7, i64 168, !7, i64 176, !7, i64 184}
!93 = !{!"c", !7, i64 0}
!94 = !{!"cxx", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96}
!95 = !{!"emutls", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !8, i64 64, !8, i64 65}
!96 = !{!"target_option_hooks", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40}
!97 = !{!83, !7, i64 120}
!98 = !{!86, !7, i64 184}
!99 = !{!83, !7, i64 104}
!100 = distinct !{!100, !17}
!101 = !{!83, !7, i64 200}
!102 = !{!30, !11, i64 92}
!103 = !{!86, !7, i64 136}
!104 = !{!86, !7, i64 168}
!105 = !{!86, !7, i64 176}
!106 = !{!83, !7, i64 96}
!107 = !{!83, !7, i64 56}
!108 = !{!109, !7, i64 0}
!109 = !{!"", !7, i64 0, !11, i64 8, !11, i64 12, !8, i64 16}
!110 = !{!109, !11, i64 8}
!111 = !{!83, !7, i64 64}
!112 = !{!83, !7, i64 192}
!113 = !{!83, !7, i64 176}
!114 = !{!86, !7, i64 240}
!115 = distinct !{!115, !17}
!116 = !{!83, !7, i64 80}
!117 = !{i64 0, i64 8, !6, i64 8, i64 4, !10, i64 12, i64 4, !10, i64 16, i64 1, !12}
!118 = !{i64 0, i64 4, !10, i64 4, i64 4, !10, i64 8, i64 1, !12}
!119 = !{!86, !7, i64 352}
!120 = distinct !{!120, !17}
!121 = distinct !{!121, !17}
!122 = distinct !{!122, !17}
!123 = !{!86, !7, i64 1000}
!124 = distinct !{!124, !17}
!125 = !{!83, !7, i64 208}
!126 = !{!83, !7, i64 232}
!127 = !{!128, !8, i64 1086}
!128 = !{!"recog_data", !8, i64 0, !8, i64 240, !8, i64 480, !8, i64 720, !8, i64 840, !8, i64 960, !8, i64 1072, !8, i64 1086, !8, i64 1087, !8, i64 1088, !8, i64 1089, !7, i64 1120}
!129 = !{!130, !8, i64 35}
!130 = !{!"insn_data", !7, i64 0, !8, i64 8, !7, i64 16, !7, i64 24, !8, i64 32, !8, i64 33, !8, i64 34, !8, i64 35}
!131 = !{!132, !8, i64 471}
!132 = !{!"rtl_data", !133, i64 0, !134, i64 40, !135, i64 96, !136, i64 112, !138, i64 208, !139, i64 248, !11, i64 312, !7, i64 320, !7, i64 328, !7, i64 336, !7, i64 344, !7, i64 352, !7, i64 360, !7, i64 368, !7, i64 376, !7, i64 384, !7, i64 392, !31, i64 400, !7, i64 408, !7, i64 416, !7, i64 424, !11, i64 432, !11, i64 436, !11, i64 440, !11, i64 444, !11, i64 448, !11, i64 452, !7, i64 456, !8, i64 464, !8, i64 465, !8, i64 466, !8, i64 467, !8, i64 468, !8, i64 469, !8, i64 470, !8, i64 471, !8, i64 472, !8, i64 473, !8, i64 474, !8, i64 475, !8, i64 476, !8, i64 477, !8, i64 478, !8, i64 479, !8, i64 480, !8, i64 481, !8, i64 482, !8, i64 483, !8, i64 484, !8, i64 485}
!133 = !{!"expr_status", !11, i64 0, !11, i64 4, !11, i64 8, !7, i64 16, !7, i64 24, !7, i64 32}
!134 = !{!"emit_status", !11, i64 0, !11, i64 4, !7, i64 8, !7, i64 16, !7, i64 24, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !7, i64 48}
!135 = !{!"varasm_status", !7, i64 0, !11, i64 8}
!136 = !{!"incoming_args", !11, i64 0, !11, i64 4, !11, i64 8, !7, i64 16, !137, i64 24, !7, i64 88}
!137 = !{!"ix86_args", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60}
!138 = !{!"function_subsections", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32}
!139 = !{!"rtl_eh", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !8, i64 48}
!140 = !{!86, !7, i64 96}
!141 = distinct !{!141, !17}
!142 = distinct !{!142, !17}
!143 = distinct !{!143, !17}
!144 = distinct !{!144, !17}
!145 = !{!21, !21, i64 0}
!146 = distinct !{!146, !17}
!147 = !{!128, !8, i64 1087}
!148 = distinct !{!148, !17}
!149 = distinct !{!149, !17}
!150 = distinct !{!150, !17}
!151 = !{!86, !7, i64 1488}
!152 = !{!25, !7, i64 56}
!153 = !{!86, !7, i64 1640}
!154 = !{!25, !11, i64 108}
!155 = distinct !{!155, !17}
!156 = distinct !{!156, !17}
!157 = distinct !{!157, !17}
!158 = distinct !{!158, !17}
!159 = distinct !{!159, !17}
!160 = distinct !{!160, !17}
!161 = distinct !{!161, !17}
!162 = !{!130, !7, i64 0}
!163 = !{!130, !8, i64 34}
!164 = !{!86, !7, i64 0}
!165 = !{!86, !7, i64 8}
!166 = !{!167, !7, i64 0}
!167 = !{!"reg_attrs", !7, i64 0, !31, i64 8}
!168 = !{!169, !7, i64 0}
!169 = !{!"mem_attrs", !7, i64 0, !7, i64 8, !7, i64 16, !11, i64 24, !11, i64 28, !8, i64 32}
!170 = distinct !{!170, !17}
!171 = !{i64 0, i64 4, !10, i64 0, i64 4, !10, i64 0, i64 4, !10, i64 0, i64 4, !10, i64 0, i64 4, !10, i64 0, i64 4, !10, i64 8, i64 24, !12}
!172 = distinct !{!172, !17}
!173 = distinct !{!173, !17}
!174 = distinct !{!174, !17}
!175 = !{!83, !7, i64 128}
!176 = !{!86, !7, i64 248}
!177 = !{!86, !7, i64 256}
!178 = distinct !{!178, !17}
!179 = distinct !{!179, !17}
!180 = !{!86, !7, i64 1112}
!181 = !{!132, !11, i64 440}
!182 = !{!132, !11, i64 436}
!183 = !{!184, !11, i64 0}
!184 = !{!"cgraph_rtl_info", !11, i64 0}

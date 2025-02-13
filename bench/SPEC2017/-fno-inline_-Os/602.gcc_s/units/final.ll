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
define dso_local void @init_final(ptr nocapture noundef readnone %0) local_unnamed_addr #0 !prof !239 {
  store i1 false, ptr @app_on, align 4
  store ptr null, ptr @final_sequence, align 8, !tbaa !240
  %2 = load i32, ptr @ix86_asm_dialect, align 4, !tbaa !244
  store i32 %2, ptr @dialect_number, align 4, !tbaa !244
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @default_function_pro_epilogue(ptr nocapture noundef readnone %0, i64 noundef %1) local_unnamed_addr #1 !prof !246 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @no_asm_to_stream(ptr nocapture noundef readnone %0) local_unnamed_addr #1 !prof !247 {
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @app_enable() local_unnamed_addr #2 !prof !248 {
  %1 = load i1, ptr @app_on, align 4
  br i1 %1, label %5, label %2

2:                                                ; preds = %0
  %3 = load ptr, ptr @asm_out_file, align 8, !tbaa !240
  %4 = tail call i32 @fputs(ptr noundef nonnull @.str, ptr noundef %3) #21
  store i1 true, ptr @app_on, align 4
  br label %5

5:                                                ; preds = %2, %0
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @app_disable() local_unnamed_addr #2 !prof !249 {
  %1 = load i1, ptr @app_on, align 4
  br i1 %1, label %2, label %5, !prof !250

2:                                                ; preds = %0
  %3 = load ptr, ptr @asm_out_file, align 8, !tbaa !240
  %4 = tail call i32 @fputs(ptr noundef nonnull @.str.1, ptr noundef %3) #21
  store i1 false, ptr @app_on, align 4
  br label %5

5:                                                ; preds = %2, %0
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define dso_local void @init_insn_lengths() local_unnamed_addr #4 !prof !246 {
  %1 = load ptr, ptr @uid_shuid, align 8, !tbaa !240
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3, !prof !251

3:                                                ; preds = %0
  tail call void @free(ptr noundef nonnull %1) #21
  store ptr null, ptr @uid_shuid, align 8, !tbaa !240
  br label %4

4:                                                ; preds = %3, %0
  %5 = load ptr, ptr @insn_lengths, align 8, !tbaa !240
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7, !prof !251

7:                                                ; preds = %4
  tail call void @free(ptr noundef nonnull %5) #21
  store ptr null, ptr @insn_lengths, align 8, !tbaa !240
  store i32 0, ptr @insn_lengths_max_uid, align 4, !tbaa !244
  br label %8

8:                                                ; preds = %7, %4
  tail call fastcc void @VEC_int_heap_free() #21
  %9 = load ptr, ptr @uid_align, align 8, !tbaa !240
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11, !prof !251

11:                                               ; preds = %8
  tail call void @free(ptr noundef nonnull %9) #21
  store ptr null, ptr @uid_align, align 8, !tbaa !240
  br label %12

12:                                               ; preds = %11, %8
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_int_heap_free() unnamed_addr #4 !prof !246 !PGOFuncName !252 {
  %1 = load ptr, ptr @insn_addresses_, align 8, !tbaa !240
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3, !prof !251

3:                                                ; preds = %0
  tail call void @free(ptr noundef nonnull %1) #21
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @insn_addresses_, align 8, !tbaa !240
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @get_attr_length(ptr noundef %0) local_unnamed_addr #6 !prof !253 {
  %2 = tail call fastcc i32 @get_attr_length_1(ptr noundef %0, ptr noundef nonnull @insn_default_length) #21
  ret i32 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @get_attr_length_1(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !prof !254 !PGOFuncName !255 {
  %3 = load i32, ptr @insn_lengths_max_uid, align 4, !tbaa !244
  %4 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !256
  %6 = icmp sgt i32 %3, %5
  br i1 %6, label %7, label %12, !prof !257

7:                                                ; preds = %2
  %8 = load ptr, ptr @insn_lengths, align 8, !tbaa !240
  %9 = sext i32 %5 to i64
  %10 = getelementptr inbounds i32, ptr %8, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !244
  br label %61

12:                                               ; preds = %2
  %13 = load i32, ptr %0, align 8
  %14 = trunc i32 %13 to i16
  switch i16 %14, label %61 [
    i16 8, label %25
    i16 9, label %17
    i16 10, label %15
  ], !prof !258

15:                                               ; preds = %12
  %16 = tail call i32 %1(ptr noundef nonnull %0) #22, !callees !259
  br label %61

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %19 = load ptr, ptr %18, align 8, !tbaa !256
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 65534
  %22 = icmp eq i32 %21, 20
  br i1 %22, label %61, label %23, !prof !260

23:                                               ; preds = %17
  %24 = tail call i32 %1(ptr noundef nonnull %0) #22, !callees !259
  br label %61

25:                                               ; preds = %12
  %26 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %27 = load ptr, ptr %26, align 8, !tbaa !256
  %28 = load i32, ptr %27, align 8
  %29 = trunc i32 %28 to i16
  switch i16 %29, label %30 [
    i16 24, label %61
    i16 25, label %61
    i16 16, label %33
  ], !prof !261

30:                                               ; preds = %25
  %31 = tail call i32 @asm_noperands(ptr noundef nonnull %27) #22
  %32 = icmp sgt i32 %31, -1
  br i1 %32, label %33, label %37, !prof !262

33:                                               ; preds = %25, %30
  %34 = tail call fastcc i32 @asm_insn_count(ptr noundef nonnull %27) #21
  %35 = tail call i32 %1(ptr noundef nonnull %0) #22, !callees !259
  %36 = mul nsw i32 %35, %34
  br label %61

37:                                               ; preds = %30
  %38 = load i32, ptr %27, align 8
  %39 = and i32 %38, 65535
  %40 = icmp eq i32 %39, 5
  br i1 %40, label %41, label %59, !prof !262

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.rtx_def, ptr %27, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !256
  %44 = load i32, ptr %43, align 8, !tbaa !263
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %61

46:                                               ; preds = %41, %46
  %47 = phi i64 [ %54, %46 ], [ 0, %41 ]
  %48 = phi ptr [ %55, %46 ], [ %43, %41 ]
  %49 = phi i32 [ %53, %46 ], [ 0, %41 ]
  %50 = getelementptr inbounds %struct.rtvec_def, ptr %48, i64 0, i32 1, i64 %47
  %51 = load ptr, ptr %50, align 8, !tbaa !240
  %52 = tail call fastcc i32 @get_attr_length_1(ptr noundef %51, ptr noundef %1) #21
  %53 = add nsw i32 %52, %49
  %54 = add nuw nsw i64 %47, 1
  %55 = load ptr, ptr %42, align 8, !tbaa !256
  %56 = load i32, ptr %55, align 8, !tbaa !263
  %57 = sext i32 %56 to i64
  %58 = icmp slt i64 %54, %57
  br i1 %58, label %46, label %61, !llvm.loop !265

59:                                               ; preds = %37
  %60 = tail call i32 %1(ptr noundef nonnull %0) #22, !callees !259
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
define internal fastcc i32 @asm_insn_count(ptr noundef %0) unnamed_addr #6 !prof !248 !PGOFuncName !267 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 16
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !256
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
define dso_local i32 @asm_str_count(ptr nocapture noundef readonly %0) local_unnamed_addr #9 !prof !248 {
  %2 = load i8, ptr %0, align 1, !tbaa !256
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
  %13 = load i8, ptr %12, align 1, !tbaa !256
  br label %4, !llvm.loop !268

14:                                               ; preds = %4, %1
  %15 = phi i32 [ 0, %1 ], [ %7, %4 ]
  ret i32 %15
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @get_attr_min_length(ptr noundef %0) local_unnamed_addr #6 !prof !269 {
  %2 = tail call fastcc i32 @get_attr_length_1(ptr noundef %0, ptr noundef nonnull @insn_min_length) #21
  ret i32 %2
}

; Function Attrs: optsize
declare i32 @insn_min_length(ptr noundef) #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @label_to_alignment(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !prof !270 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !256
  %4 = load i32, ptr @max_labelno, align 4, !tbaa !244
  %5 = icmp sgt i32 %3, %4
  br i1 %5, label %14, label %6, !prof !271

6:                                                ; preds = %1
  %7 = load ptr, ptr @label_align, align 8, !tbaa !240
  %8 = load i32, ptr @min_labelno, align 4, !tbaa !244
  %9 = sub nsw i32 %3, %8
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.label_alignment, ptr %7, i64 %10
  %12 = load i16, ptr %11, align 2, !tbaa !272
  %13 = sext i16 %12 to i32
  br label %14

14:                                               ; preds = %1, %6
  %15 = phi i32 [ %13, %6 ], [ 0, %1 ]
  ret i32 %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @label_to_max_skip(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !prof !270 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !256
  %4 = load i32, ptr @max_labelno, align 4, !tbaa !244
  %5 = icmp sgt i32 %3, %4
  br i1 %5, label %14, label %6, !prof !271

6:                                                ; preds = %1
  %7 = load ptr, ptr @label_align, align 8, !tbaa !240
  %8 = load i32, ptr @min_labelno, align 4, !tbaa !244
  %9 = sub nsw i32 %3, %8
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.label_alignment, ptr %7, i64 %10, i32 1
  %12 = load i16, ptr %11, align 2, !tbaa !275
  %13 = sext i16 %12 to i32
  br label %14

14:                                               ; preds = %1, %6
  %15 = phi i32 [ %13, %6 ], [ 0, %1 ]
  ret i32 %15
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @insn_current_reference_address(ptr nocapture noundef readonly %0) local_unnamed_addr #9 !prof !276 {
  %2 = load ptr, ptr @insn_addresses_, align 8, !tbaa !240
  %3 = icmp eq ptr %2, null
  br i1 %3, label %43, label %4, !prof !277

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %6 = load ptr, ptr %5, align 8, !tbaa !256
  %7 = getelementptr inbounds %struct.rtx_def, ptr %6, i64 0, i32 1, i32 0, i32 0, i64 2
  %8 = load ptr, ptr %7, align 8, !tbaa !256
  %9 = load i32, ptr %0, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 9
  br i1 %11, label %14, label %12, !prof !278

12:                                               ; preds = %4
  %13 = load i32, ptr @insn_current_address, align 4, !tbaa !244
  br label %43

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.rtx_def, ptr %8, i64 0, i32 1
  %16 = load i32, ptr %15, align 8, !tbaa !256
  %17 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 2
  %18 = load ptr, ptr %17, align 8, !tbaa !256
  %19 = load ptr, ptr @uid_shuid, align 8, !tbaa !240
  %20 = sext i32 %16 to i64
  %21 = getelementptr inbounds i32, ptr %19, i64 %20
  %22 = load i32, ptr %21, align 4, !tbaa !244
  %23 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1
  %24 = load i32, ptr %23, align 8, !tbaa !256
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, ptr %19, i64 %25
  %27 = load i32, ptr %26, align 4, !tbaa !244
  %28 = icmp slt i32 %22, %27
  br i1 %28, label %29, label %38, !prof !279

29:                                               ; preds = %14
  %30 = load i32, ptr @insn_last_address, align 4, !tbaa !244
  %31 = load ptr, ptr @insn_lengths, align 8, !tbaa !240
  %32 = getelementptr inbounds i32, ptr %31, i64 %20
  %33 = load i32, ptr %32, align 4, !tbaa !244
  %34 = add nsw i32 %33, %30
  %35 = load i32, ptr @length_unit_log, align 4, !tbaa !244
  %36 = tail call fastcc i32 @align_fuzz(ptr noundef nonnull %8, ptr noundef nonnull %18, i32 noundef %35) #21
  %37 = sub i32 %34, %36
  br label %43

38:                                               ; preds = %14
  %39 = load i32, ptr @insn_current_address, align 4, !tbaa !244
  %40 = load i32, ptr @length_unit_log, align 4, !tbaa !244
  %41 = tail call fastcc i32 @align_fuzz(ptr noundef nonnull %18, ptr noundef nonnull %8, i32 noundef %40) #21
  %42 = add nsw i32 %41, %39
  br label %43

43:                                               ; preds = %1, %38, %29, %12
  %44 = phi i32 [ %37, %29 ], [ %42, %38 ], [ %13, %12 ], [ 0, %1 ]
  ret i32 %44
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @align_fuzz(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #9 !prof !276 !PGOFuncName !280 {
  %4 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !256
  %6 = load ptr, ptr @uid_shuid, align 8, !tbaa !240
  %7 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !256
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i32, ptr %6, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !244
  %12 = load ptr, ptr @uid_align, align 8, !tbaa !240
  %13 = sext i32 %5 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !240
  %16 = icmp eq ptr %15, null
  br i1 %16, label %60, label %17, !prof !281

17:                                               ; preds = %3
  %18 = shl nuw i32 1, %2
  %19 = load ptr, ptr @insn_addresses_, align 8
  %20 = tail call fastcc ptr @VEC_int_base_address(ptr noundef %19) #21
  %21 = load ptr, ptr @insn_lengths, align 8, !tbaa !240
  br label %22

22:                                               ; preds = %17, %54
  %23 = phi ptr [ %15, %17 ], [ %58, %54 ]
  %24 = phi i32 [ 0, %17 ], [ %56, %54 ]
  %25 = phi i32 [ %18, %17 ], [ %55, %54 ]
  %26 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 0, i32 1
  %27 = load i32, ptr %26, align 8, !tbaa !256
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, ptr %20, i64 %28
  %30 = load i32, ptr %29, align 4, !tbaa !244
  %31 = getelementptr inbounds i32, ptr %21, i64 %28
  %32 = load i32, ptr %31, align 4, !tbaa !244
  %33 = getelementptr inbounds i32, ptr %6, i64 %28
  %34 = load i32, ptr %33, align 4, !tbaa !244
  %35 = icmp sgt i32 %34, %11
  br i1 %35, label %60, label %36, !prof !282

36:                                               ; preds = %22
  %37 = load ptr, ptr @label_align, align 8
  %38 = load i32, ptr @min_labelno, align 4
  %39 = getelementptr inbounds %struct.rtx_def, ptr %23, i64 1, i32 1
  %40 = load i32, ptr %39, align 8, !tbaa !256
  %41 = sub nsw i32 %40, %38
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.label_alignment, ptr %37, i64 %42
  %44 = load i16, ptr %43, align 2, !tbaa !272
  %45 = zext nneg i16 %44 to i32
  %46 = shl nuw i32 1, %45
  %47 = icmp slt i32 %46, %25
  br i1 %47, label %54, label %48, !prof !283

48:                                               ; preds = %36
  %49 = xor i32 %32, -1
  %50 = add i32 %30, %49
  %51 = sub nsw i32 %46, %25
  %52 = and i32 %51, %50
  %53 = add i32 %52, %24
  br label %54

54:                                               ; preds = %48, %36
  %55 = phi i32 [ %25, %36 ], [ %46, %48 ]
  %56 = phi i32 [ %24, %36 ], [ %53, %48 ]
  %57 = getelementptr inbounds ptr, ptr %12, i64 %28
  %58 = load ptr, ptr %57, align 8, !tbaa !240
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %22, !prof !284, !llvm.loop !285

60:                                               ; preds = %54, %22, %3
  %61 = phi i32 [ 0, %3 ], [ %24, %22 ], [ %56, %54 ]
  ret i32 %61
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @VEC_int_base_address(ptr noundef readnone %0) unnamed_addr #1 !prof !286 !PGOFuncName !287 {
  %2 = icmp eq ptr %0, null
  %3 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2
  %4 = select i1 %2, ptr null, ptr %3, !prof !288
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @compute_alignments() #6 !prof !246 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.edge_iterator, align 8
  %3 = load ptr, ptr @label_align, align 8, !tbaa !240
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5, !prof !289

5:                                                ; preds = %0
  tail call void @free(ptr noundef nonnull %3) #21
  store ptr null, ptr @label_align, align 8, !tbaa !240
  br label %6

6:                                                ; preds = %5, %0
  %7 = tail call i32 @max_label_num() #22
  store i32 %7, ptr @max_labelno, align 4, !tbaa !244
  %8 = tail call i32 @get_first_label_num() #22
  store i32 %8, ptr @min_labelno, align 4, !tbaa !244
  %9 = load i32, ptr @max_labelno, align 4, !tbaa !244
  %10 = sub i32 %9, %8
  %11 = add i32 %10, 1
  %12 = sext i32 %11 to i64
  %13 = tail call ptr @xcalloc(i64 noundef %12, i64 noundef 4) #22
  store ptr %13, ptr @label_align, align 8, !tbaa !240
  %14 = load i32, ptr @optimize, align 4, !tbaa !244
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %249, label %16, !prof !251

16:                                               ; preds = %6
  %17 = load ptr, ptr @cfun, align 8, !tbaa !240
  %18 = tail call zeroext i8 @optimize_function_for_size_p(ptr noundef %17) #22
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %249, !prof !290

20:                                               ; preds = %16
  %21 = load ptr, ptr @dump_file, align 8, !tbaa !240
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23, !prof !290

23:                                               ; preds = %20
  tail call void @dump_flow_info(ptr noundef nonnull %21, i32 noundef 8) #22
  %24 = load ptr, ptr @dump_file, align 8, !tbaa !240
  tail call void @flow_loops_dump(ptr noundef %24, ptr noundef null, i32 noundef 1) #22
  tail call void @loop_optimizer_init(i32 noundef 16) #22
  br label %25

25:                                               ; preds = %23, %20
  %26 = load ptr, ptr @cfun, align 8, !tbaa !240
  %27 = getelementptr inbounds %struct.function, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !291
  %29 = load ptr, ptr %28, align 8, !tbaa !293
  %30 = getelementptr inbounds %struct.control_flow_graph, ptr %28, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !295
  %32 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 6
  %33 = load ptr, ptr %32, align 8, !tbaa !296
  %34 = icmp eq ptr %33, %31
  br i1 %34, label %44, label %35, !prof !299

35:                                               ; preds = %25, %35
  %36 = phi ptr [ %42, %35 ], [ %33, %25 ]
  %37 = phi i32 [ %40, %35 ], [ 0, %25 ]
  %38 = getelementptr inbounds %struct.basic_block_def, ptr %36, i64 0, i32 11
  %39 = load i32, ptr %38, align 8, !tbaa !300
  %40 = tail call i32 @llvm.smax.i32(i32 %39, i32 %37)
  %41 = getelementptr inbounds %struct.basic_block_def, ptr %36, i64 0, i32 6
  %42 = load ptr, ptr %41, align 8, !tbaa !296
  %43 = icmp eq ptr %42, %31
  br i1 %43, label %44, label %35, !prof !301, !llvm.loop !302

44:                                               ; preds = %35, %25
  %45 = phi i32 [ 0, %25 ], [ %40, %35 ]
  %46 = load ptr, ptr @compiler_params, align 8, !tbaa !240
  %47 = getelementptr inbounds %struct.param_info, ptr %46, i64 44, i32 1
  %48 = load i32, ptr %47, align 8, !tbaa !303
  %49 = sdiv i32 %45, %48
  %50 = load ptr, ptr @dump_file, align 8, !tbaa !240
  %51 = icmp eq ptr %50, null
  br i1 %51, label %62, label %52, !prof !290

52:                                               ; preds = %44
  %53 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %50, ptr noundef nonnull @.str.2, i32 noundef %45) #21
  %54 = load ptr, ptr @cfun, align 8, !tbaa !240
  %55 = getelementptr inbounds %struct.function, ptr %54, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !291
  %57 = load ptr, ptr %56, align 8, !tbaa !293
  %58 = getelementptr inbounds %struct.basic_block_def, ptr %57, i64 0, i32 6
  %59 = load ptr, ptr %58, align 8, !tbaa !296
  %60 = getelementptr inbounds %struct.control_flow_graph, ptr %56, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !295
  br label %62

62:                                               ; preds = %52, %44
  %63 = phi ptr [ %61, %52 ], [ %31, %44 ]
  %64 = phi ptr [ %59, %52 ], [ %33, %44 ]
  %65 = icmp eq ptr %64, %63
  br i1 %65, label %245, label %66, !prof !299

66:                                               ; preds = %62
  %67 = getelementptr inbounds i8, ptr %2, i64 8
  br label %68

68:                                               ; preds = %66, %236
  %69 = phi ptr [ %64, %66 ], [ %238, %236 ]
  %70 = getelementptr inbounds %struct.basic_block_def, ptr %69, i64 0, i32 7
  %71 = load ptr, ptr %70, align 8, !tbaa !256
  %72 = load ptr, ptr %71, align 8, !tbaa !305
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #23
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #23
  %73 = load i32, ptr %72, align 8
  %74 = and i32 %73, 65535
  %75 = icmp eq i32 %74, 12
  br i1 %75, label %76, label %79, !prof !307

76:                                               ; preds = %68
  %77 = tail call zeroext i8 @optimize_bb_for_size_p(ptr noundef nonnull %69) #22
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %93, label %79, !prof !308

79:                                               ; preds = %76, %68
  %80 = load ptr, ptr @dump_file, align 8, !tbaa !240
  %81 = icmp eq ptr %80, null
  br i1 %81, label %236, label %82, !prof !309

82:                                               ; preds = %79
  %83 = getelementptr inbounds %struct.basic_block_def, ptr %69, i64 0, i32 9
  %84 = load i32, ptr %83, align 8, !tbaa !310
  %85 = getelementptr inbounds %struct.basic_block_def, ptr %69, i64 0, i32 11
  %86 = load i32, ptr %85, align 8, !tbaa !300
  %87 = getelementptr inbounds %struct.basic_block_def, ptr %69, i64 0, i32 3
  %88 = load ptr, ptr %87, align 8, !tbaa !311
  %89 = load i32, ptr %88, align 8, !tbaa !312
  %90 = getelementptr inbounds %struct.basic_block_def, ptr %69, i64 0, i32 10
  %91 = load i32, ptr %90, align 4, !tbaa !316
  %92 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %80, ptr noundef nonnull @.str.3, i32 noundef %84, i32 noundef %86, i32 noundef %89, i32 noundef %91) #21
  br label %236

93:                                               ; preds = %76
  %94 = load i32, ptr @align_labels_log, align 4, !tbaa !244
  %95 = load i32, ptr @align_labels_max_skip, align 4, !tbaa !244
  %96 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %69) #21
  store i32 0, ptr %2, align 8, !tbaa.struct !317
  store ptr %96, ptr %67, align 8, !tbaa.struct !318
  %97 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %96, ptr noundef nonnull %1) #21, !range !319
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %125, label %99, !prof !320

99:                                               ; preds = %93, %99
  %100 = phi i32 [ %120, %99 ], [ 0, %93 ]
  %101 = phi i32 [ %119, %99 ], [ 0, %93 ]
  %102 = phi i32 [ %117, %99 ], [ 0, %93 ]
  %103 = load ptr, ptr %1, align 8, !tbaa !240
  %104 = getelementptr inbounds %struct.edge_def, ptr %103, i64 0, i32 7
  %105 = load i32, ptr %104, align 8, !tbaa !321
  %106 = and i32 %105, 1
  %107 = icmp eq i32 %106, 0
  %108 = load ptr, ptr %103, align 8, !tbaa !323
  %109 = getelementptr inbounds %struct.basic_block_def, ptr %108, i64 0, i32 11
  %110 = load i32, ptr %109, align 8, !tbaa !300
  %111 = getelementptr inbounds %struct.edge_def, ptr %103, i64 0, i32 8
  %112 = load i32, ptr %111, align 4, !tbaa !324
  %113 = mul nsw i32 %112, %110
  %114 = add nsw i32 %113, 5000
  %115 = sdiv i32 %114, 10000
  %116 = select i1 %107, i32 0, i32 %115, !prof !325
  %117 = add nsw i32 %102, %116
  %118 = select i1 %107, i32 %115, i32 0, !prof !325
  %119 = add nsw i32 %101, %118
  %120 = select i1 %107, i32 %100, i32 1, !prof !325
  call fastcc void @ei_next(ptr noundef nonnull %2) #21
  %121 = load i32, ptr %2, align 8
  %122 = load ptr, ptr %67, align 8
  %123 = call fastcc zeroext i8 @ei_cond(i32 %121, ptr %122, ptr noundef nonnull %1) #21, !range !319
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %125, label %99, !prof !326, !llvm.loop !327

125:                                              ; preds = %99, %93
  %126 = phi i32 [ 0, %93 ], [ %117, %99 ]
  %127 = phi i32 [ 0, %93 ], [ %119, %99 ]
  %128 = phi i32 [ 0, %93 ], [ %120, %99 ]
  %129 = load ptr, ptr @dump_file, align 8, !tbaa !240
  %130 = icmp eq ptr %129, null
  br i1 %130, label %164, label %131, !prof !328

131:                                              ; preds = %125
  %132 = getelementptr inbounds %struct.basic_block_def, ptr %69, i64 0, i32 9
  %133 = load i32, ptr %132, align 8, !tbaa !310
  %134 = getelementptr inbounds %struct.basic_block_def, ptr %69, i64 0, i32 11
  %135 = load i32, ptr %134, align 8, !tbaa !300
  %136 = getelementptr inbounds %struct.basic_block_def, ptr %69, i64 0, i32 3
  %137 = load ptr, ptr %136, align 8, !tbaa !311
  %138 = load i32, ptr %137, align 8, !tbaa !312
  %139 = getelementptr inbounds %struct.basic_block_def, ptr %69, i64 0, i32 10
  %140 = load i32, ptr %139, align 4, !tbaa !316
  %141 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %129, ptr noundef nonnull @.str.4, i32 noundef %133, i32 noundef %135, i32 noundef %138, i32 noundef %140, i32 noundef %126, i32 noundef %127) #21
  %142 = load ptr, ptr %136, align 8, !tbaa !311
  %143 = getelementptr inbounds %struct.loop, ptr %142, i64 0, i32 8
  %144 = load ptr, ptr %143, align 8, !tbaa !329
  %145 = icmp eq ptr %144, null
  br i1 %145, label %146, label %153

146:                                              ; preds = %131
  %147 = load i32, ptr %142, align 8, !tbaa !312
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %153, label %149

149:                                              ; preds = %146
  %150 = load ptr, ptr @dump_file, align 8, !tbaa !240
  %151 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 11, i64 1, ptr %150)
  %152 = load ptr, ptr %136, align 8, !tbaa !311
  br label %153

153:                                              ; preds = %149, %146, %131
  %154 = phi ptr [ %152, %149 ], [ %142, %146 ], [ %142, %131 ]
  %155 = getelementptr inbounds %struct.loop, ptr %154, i64 0, i32 2
  %156 = load ptr, ptr %155, align 8, !tbaa !330
  %157 = icmp eq ptr %156, %69
  br i1 %157, label %158, label %161

158:                                              ; preds = %153
  %159 = load ptr, ptr @dump_file, align 8, !tbaa !240
  %160 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 12, i64 1, ptr %159)
  br label %161

161:                                              ; preds = %158, %153
  %162 = load ptr, ptr @dump_file, align 8, !tbaa !240
  %163 = tail call i32 @fputc(i32 10, ptr %162)
  br label %164

164:                                              ; preds = %161, %125
  %165 = icmp eq i32 %128, 0
  br i1 %165, label %166, label %197, !prof !331

166:                                              ; preds = %164
  %167 = icmp sgt i32 %127, %49
  br i1 %167, label %186, label %168, !prof !332

168:                                              ; preds = %166
  %169 = getelementptr inbounds %struct.basic_block_def, ptr %69, i64 0, i32 11
  %170 = load i32, ptr %169, align 8, !tbaa !300
  %171 = getelementptr inbounds %struct.basic_block_def, ptr %69, i64 0, i32 5
  %172 = load ptr, ptr %171, align 8, !tbaa !333
  %173 = getelementptr inbounds %struct.basic_block_def, ptr %172, i64 0, i32 11
  %174 = load i32, ptr %173, align 8, !tbaa !300
  %175 = mul nsw i32 %174, 10
  %176 = icmp sgt i32 %170, %175
  br i1 %176, label %177, label %220, !prof !334

177:                                              ; preds = %168
  %178 = load ptr, ptr @cfun, align 8, !tbaa !240
  %179 = getelementptr inbounds %struct.function, ptr %178, i64 0, i32 1
  %180 = load ptr, ptr %179, align 8, !tbaa !291
  %181 = load ptr, ptr %180, align 8, !tbaa !293
  %182 = getelementptr inbounds %struct.basic_block_def, ptr %181, i64 0, i32 11
  %183 = load i32, ptr %182, align 8, !tbaa !300
  %184 = sdiv i32 %183, 2
  %185 = icmp sgt i32 %174, %184
  br i1 %185, label %220, label %186, !prof !335

186:                                              ; preds = %177, %166
  %187 = load i32, ptr @align_jumps_log, align 4, !tbaa !244
  %188 = load ptr, ptr @dump_file, align 8, !tbaa !240
  %189 = icmp eq ptr %188, null
  br i1 %189, label %192, label %190, !prof !336

190:                                              ; preds = %186
  %191 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 24, i64 1, ptr nonnull %188)
  br label %192

192:                                              ; preds = %190, %186
  %193 = icmp slt i32 %94, %187
  %194 = load i32, ptr @align_jumps_max_skip, align 4
  %195 = tail call i32 @llvm.smax.i32(i32 %94, i32 %187)
  %196 = select i1 %193, i32 %194, i32 %95, !prof !336
  br label %220

197:                                              ; preds = %164
  %198 = tail call zeroext i8 @optimize_bb_for_speed_p(ptr noundef %69) #22
  %199 = icmp ne i8 %198, 0
  %200 = add nsw i32 %127, %126
  %201 = icmp sgt i32 %200, %49
  %202 = select i1 %199, i1 %201, i1 false
  br i1 %202, label %203, label %220, !prof !337

203:                                              ; preds = %197
  %204 = load ptr, ptr @compiler_params, align 8, !tbaa !240
  %205 = getelementptr inbounds %struct.param_info, ptr %204, i64 45, i32 1
  %206 = load i32, ptr %205, align 8, !tbaa !303
  %207 = mul nsw i32 %206, %126
  %208 = icmp sgt i32 %127, %207
  br i1 %208, label %209, label %220, !prof !338

209:                                              ; preds = %203
  %210 = load i32, ptr @align_loops_log, align 4, !tbaa !244
  %211 = load ptr, ptr @dump_file, align 8, !tbaa !240
  %212 = icmp eq ptr %211, null
  br i1 %212, label %215, label %213, !prof !339

213:                                              ; preds = %209
  %214 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 33, i64 1, ptr nonnull %211)
  br label %215

215:                                              ; preds = %213, %209
  %216 = icmp slt i32 %94, %210
  %217 = load i32, ptr @align_loops_max_skip, align 4
  %218 = tail call i32 @llvm.smax.i32(i32 %94, i32 %210)
  %219 = select i1 %216, i32 %217, i32 %95, !prof !339
  br label %220

220:                                              ; preds = %168, %177, %192, %215, %203, %197
  %221 = phi i32 [ %94, %203 ], [ %94, %197 ], [ %218, %215 ], [ %195, %192 ], [ %94, %168 ], [ %94, %177 ]
  %222 = phi i32 [ %95, %203 ], [ %95, %197 ], [ %219, %215 ], [ %196, %192 ], [ %95, %168 ], [ %95, %177 ]
  %223 = trunc i32 %221 to i16
  %224 = load ptr, ptr @label_align, align 8, !tbaa !240
  %225 = getelementptr inbounds %struct.rtx_def, ptr %72, i64 1, i32 1
  %226 = load i32, ptr %225, align 8, !tbaa !256
  %227 = load i32, ptr @min_labelno, align 4, !tbaa !244
  %228 = sub nsw i32 %226, %227
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.label_alignment, ptr %224, i64 %229
  store i16 %223, ptr %230, align 2, !tbaa !272
  %231 = trunc i32 %222 to i16
  %232 = load i32, ptr %225, align 8, !tbaa !256
  %233 = sub nsw i32 %232, %227
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds %struct.label_alignment, ptr %224, i64 %234, i32 1
  store i16 %231, ptr %235, align 2, !tbaa !275
  br label %236

236:                                              ; preds = %79, %82, %220
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #23
  %237 = getelementptr inbounds %struct.basic_block_def, ptr %69, i64 0, i32 6
  %238 = load ptr, ptr %237, align 8, !tbaa !296
  %239 = load ptr, ptr @cfun, align 8, !tbaa !240
  %240 = getelementptr inbounds %struct.function, ptr %239, i64 0, i32 1
  %241 = load ptr, ptr %240, align 8, !tbaa !291
  %242 = getelementptr inbounds %struct.control_flow_graph, ptr %241, i64 0, i32 1
  %243 = load ptr, ptr %242, align 8, !tbaa !295
  %244 = icmp eq ptr %238, %243
  br i1 %244, label %245, label %68, !prof !301, !llvm.loop !340

245:                                              ; preds = %236, %62
  %246 = load ptr, ptr @dump_file, align 8, !tbaa !240
  %247 = icmp eq ptr %246, null
  br i1 %247, label %249, label %248, !prof !290

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
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #1 !prof !341 !PGOFuncName !342 {
  ret ptr %0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #11

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #6 !prof !343 !PGOFuncName !344 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #21, !range !319
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8, !prof !345

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #21
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !240
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #6 !prof !346 !PGOFuncName !347 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #21
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7, !prof !348

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #21
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #21
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14, !prof !349

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 738, ptr noundef nonnull @.str.11) #22
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !350
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !350
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @optimize_bb_for_speed_p(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @loop_optimizer_finalize() local_unnamed_addr #7

; Function Attrs: optsize
declare void @free_dominance_info(i32 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #6 !prof !343 !PGOFuncName !352 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #21
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !353

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
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #6 !prof !346 !PGOFuncName !354 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #21
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !348

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #21
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #21
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #12 !prof !355 !PGOFuncName !356 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !357

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !358
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #6 !prof !360 !PGOFuncName !361 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !362

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 687, ptr noundef nonnull @.str.11) #22
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !240
  ret ptr %5
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #12 !prof !346 !PGOFuncName !363 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !240
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @shorten_branches(ptr noundef %0) local_unnamed_addr #6 !prof !246 {
  %2 = alloca [16 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %2) #23
  %3 = tail call i32 @get_max_uid() #22
  %4 = load ptr, ptr @uid_shuid, align 8, !tbaa !240
  tail call void @free(ptr noundef %4) #21
  %5 = sext i32 %3 to i64
  %6 = shl nsw i64 %5, 2
  %7 = tail call ptr @xmalloc(i64 noundef %6) #22
  store ptr %7, ptr @uid_shuid, align 8, !tbaa !240
  %8 = load i32, ptr @max_labelno, align 4, !tbaa !244
  %9 = tail call i32 @max_label_num() #22
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %33, label %11, !prof !364

11:                                               ; preds = %1
  %12 = load i32, ptr @max_labelno, align 4, !tbaa !244
  %13 = tail call i32 @max_label_num() #22
  store i32 %13, ptr @max_labelno, align 4, !tbaa !244
  %14 = load i32, ptr @min_labelno, align 4, !tbaa !244
  %15 = sub nsw i32 %13, %14
  %16 = add nsw i32 %15, 1
  %17 = sub nsw i32 %12, %14
  %18 = load ptr, ptr @label_align, align 8, !tbaa !240
  %19 = sext i32 %16 to i64
  %20 = shl nsw i64 %19, 2
  %21 = tail call ptr @xrealloc(ptr noundef %18, i64 noundef %20) #22
  store ptr %21, ptr @label_align, align 8, !tbaa !240
  %22 = icmp sgt i32 %12, %13
  br i1 %22, label %23, label %25, !prof !365

23:                                               ; preds = %11
  tail call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 888, ptr noundef nonnull @.str.11) #22
  %24 = load ptr, ptr @label_align, align 8, !tbaa !240
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
  br i1 %35, label %112, label %36, !prof !299

36:                                               ; preds = %33, %108
  %37 = phi ptr [ %110, %108 ], [ %34, %33 ]
  %38 = phi i32 [ %39, %108 ], [ 1, %33 ]
  %39 = add nuw nsw i32 %38, 1
  %40 = load ptr, ptr @uid_shuid, align 8, !tbaa !240
  %41 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 0, i32 1
  %42 = load i32, ptr %41, align 8, !tbaa !256
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, ptr %40, i64 %43
  store i32 %38, ptr %44, align 4, !tbaa !244
  %45 = load i32, ptr %37, align 8
  %46 = and i32 %45, 65535
  %47 = icmp eq i32 %46, 12
  br i1 %47, label %48, label %108, !prof !366

48:                                               ; preds = %36
  %49 = load ptr, ptr @label_align, align 8, !tbaa !240
  %50 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 1, i32 1
  %51 = load i32, ptr %50, align 8, !tbaa !256
  %52 = load i32, ptr @min_labelno, align 4, !tbaa !244
  %53 = sub nsw i32 %51, %52
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.label_alignment, ptr %49, i64 %54
  %56 = load i16, ptr %55, align 2, !tbaa !272
  %57 = icmp sgt i16 %56, 0
  br i1 %57, label %58, label %63, !prof !367

58:                                               ; preds = %48
  %59 = zext nneg i16 %56 to i32
  %60 = getelementptr inbounds %struct.label_alignment, ptr %49, i64 %54, i32 1
  %61 = load i16, ptr %60, align 2, !tbaa !275
  %62 = zext i16 %61 to i32
  br label %63

63:                                               ; preds = %58, %48
  %64 = phi i32 [ %62, %58 ], [ 0, %48 ]
  %65 = phi i32 [ %59, %58 ], [ 0, %48 ]
  %66 = tail call ptr @next_nonnote_insn(ptr noundef nonnull %37) #22
  %67 = icmp eq ptr %66, null
  br i1 %67, label %78, label %68, !prof !368

68:                                               ; preds = %63
  %69 = load i32, ptr %66, align 8
  %70 = and i32 %69, 65535
  %71 = icmp eq i32 %70, 9
  br i1 %71, label %72, label %78, !prof !369

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.rtx_def, ptr %66, i64 1
  %74 = load ptr, ptr %73, align 8, !tbaa !256
  %75 = load i32, ptr %74, align 8
  %76 = and i32 %75, 65534
  %77 = icmp eq i32 %76, 20
  br i1 %77, label %83, label %78

78:                                               ; preds = %72, %68, %63
  %79 = load i32, ptr @align_labels_log, align 4, !tbaa !244
  %80 = icmp slt i32 %65, %79
  br i1 %80, label %81, label %93, !prof !370

81:                                               ; preds = %78
  %82 = load i32, ptr @align_labels_max_skip, align 4, !tbaa !244
  br label %93

83:                                               ; preds = %72
  %84 = load ptr, ptr @readonly_data_section, align 8, !tbaa !240
  %85 = load ptr, ptr @text_section, align 8, !tbaa !240
  %86 = icmp eq ptr %84, %85
  br i1 %86, label %87, label %93, !prof !368

87:                                               ; preds = %83
  %88 = tail call fastcc i32 @final_addr_vec_align(ptr noundef nonnull %66) #21
  %89 = icmp slt i32 %65, %88
  %90 = load i32, ptr @align_labels_max_skip, align 4
  %91 = select i1 %89, i32 %90, i32 %64
  %92 = tail call i32 @llvm.smax.i32(i32 %65, i32 %88)
  br label %93

93:                                               ; preds = %81, %78, %83, %87
  %94 = phi i32 [ %91, %87 ], [ %64, %83 ], [ %82, %81 ], [ %64, %78 ]
  %95 = phi i32 [ %92, %87 ], [ %65, %83 ], [ %79, %81 ], [ %65, %78 ]
  %96 = trunc i32 %95 to i16
  %97 = load ptr, ptr @label_align, align 8, !tbaa !240
  %98 = load i32, ptr %50, align 8, !tbaa !256
  %99 = load i32, ptr @min_labelno, align 4, !tbaa !244
  %100 = sub nsw i32 %98, %99
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.label_alignment, ptr %97, i64 %101
  store i16 %96, ptr %102, align 2, !tbaa !272
  %103 = trunc i32 %94 to i16
  %104 = load i32, ptr %50, align 8, !tbaa !256
  %105 = sub nsw i32 %104, %99
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.label_alignment, ptr %97, i64 %106, i32 1
  store i16 %103, ptr %107, align 2, !tbaa !275
  br label %108

108:                                              ; preds = %36, %93
  %109 = getelementptr inbounds %struct.rtx_def, ptr %37, i64 0, i32 1, i32 0, i32 0, i64 2
  %110 = load ptr, ptr %109, align 8, !tbaa !256
  %111 = icmp eq ptr %110, null
  br i1 %111, label %112, label %36, !prof !371, !llvm.loop !372

112:                                              ; preds = %108, %33
  %113 = tail call ptr @xmalloc(i64 noundef %6) #22
  store ptr %113, ptr @insn_lengths, align 8, !tbaa !240
  store i32 %3, ptr @insn_lengths_max_uid, align 4, !tbaa !244
  %114 = tail call fastcc ptr @VEC_int_heap_alloc(i32 noundef %3) #21
  store ptr %114, ptr @insn_addresses_, align 8, !tbaa !240
  tail call fastcc void @VEC_int_heap_safe_grow(i32 noundef %3) #21
  %115 = load ptr, ptr @insn_addresses_, align 8
  %116 = tail call fastcc ptr @VEC_int_base_address(ptr noundef %115) #21
  tail call void @llvm.memset.p0.i64(ptr align 4 %116, i8 0, i64 %6, i1 false)
  %117 = tail call ptr @xcalloc(i64 noundef %5, i64 noundef 1) #22
  %118 = tail call ptr @xcalloc(i64 noundef %5, i64 noundef 8) #22
  store ptr %118, ptr @uid_align, align 8, !tbaa !240
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %2, i8 0, i64 128, i1 false), !tbaa !240
  %119 = tail call ptr @get_last_insn() #22
  %120 = icmp eq ptr %119, null
  br i1 %120, label %163, label %121, !prof !299

121:                                              ; preds = %112
  %122 = load ptr, ptr @uid_align, align 8
  %123 = load ptr, ptr @label_align, align 8
  %124 = load i32, ptr @min_labelno, align 4
  br label %125

125:                                              ; preds = %121, %159
  %126 = phi ptr [ %119, %121 ], [ %161, %159 ]
  %127 = getelementptr inbounds %struct.rtx_def, ptr %126, i64 0, i32 1
  %128 = load i32, ptr %127, align 8, !tbaa !256
  %129 = load i32, ptr %126, align 8
  %130 = and i32 %129, 65535
  %131 = icmp eq i32 %130, 12
  br i1 %131, label %136, label %132, !prof !373

132:                                              ; preds = %125
  %133 = load ptr, ptr %2, align 16, !tbaa !240
  %134 = sext i32 %128 to i64
  %135 = getelementptr inbounds ptr, ptr %122, i64 %134
  store ptr %133, ptr %135, align 8, !tbaa !240
  br label %159

136:                                              ; preds = %125
  %137 = getelementptr inbounds %struct.rtx_def, ptr %126, i64 1, i32 1
  %138 = load i32, ptr %137, align 8, !tbaa !256
  %139 = sub nsw i32 %138, %124
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.label_alignment, ptr %123, i64 %140
  %142 = load i16, ptr %141, align 2, !tbaa !272
  %143 = load ptr, ptr %2, align 16, !tbaa !240
  %144 = sext i32 %128 to i64
  %145 = getelementptr inbounds ptr, ptr %122, i64 %144
  store ptr %143, ptr %145, align 8, !tbaa !240
  %146 = icmp eq i16 %142, 0
  br i1 %146, label %159, label %147, !prof !374

147:                                              ; preds = %136
  %148 = sext i16 %142 to i64
  %149 = getelementptr inbounds [16 x ptr], ptr %2, i64 0, i64 %148
  %150 = load ptr, ptr %149, align 8, !tbaa !240
  store ptr %150, ptr %145, align 8, !tbaa !240
  %151 = icmp sgt i16 %142, 0
  br i1 %151, label %152, label %159, !prof !375

152:                                              ; preds = %147
  %153 = zext nneg i16 %142 to i64
  br label %154

154:                                              ; preds = %152, %154
  %155 = phi i64 [ %153, %152 ], [ %156, %154 ]
  %156 = add nsw i64 %155, -1
  %157 = getelementptr inbounds [16 x ptr], ptr %2, i64 0, i64 %156
  store ptr %126, ptr %157, align 8, !tbaa !240
  %158 = icmp ugt i64 %155, 1
  br i1 %158, label %154, label %159, !prof !376, !llvm.loop !377

159:                                              ; preds = %154, %147, %132, %136
  %160 = getelementptr inbounds %struct.rtx_def, ptr %126, i64 0, i32 1, i32 0, i32 0, i64 1
  %161 = load ptr, ptr %160, align 8, !tbaa !256
  %162 = icmp eq ptr %161, null
  br i1 %162, label %163, label %125, !prof !371, !llvm.loop !378

163:                                              ; preds = %159, %112
  store i32 0, ptr @insn_current_address, align 4, !tbaa !244
  %164 = icmp eq ptr %0, null
  br i1 %164, label %167, label %165, !prof !299

165:                                              ; preds = %163
  %166 = load ptr, ptr @insn_lengths, align 8, !tbaa !240
  br label %169

167:                                              ; preds = %295, %163
  %168 = load i32, ptr @length_unit_log, align 4
  br label %304

169:                                              ; preds = %165, %295
  %170 = phi ptr [ %296, %295 ], [ %166, %165 ]
  %171 = phi ptr [ %302, %295 ], [ %0, %165 ]
  %172 = getelementptr inbounds %struct.rtx_def, ptr %171, i64 0, i32 1
  %173 = load i32, ptr %172, align 8, !tbaa !256
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, ptr %170, i64 %174
  store i32 0, ptr %175, align 4, !tbaa !244
  %176 = load i32, ptr %171, align 8
  %177 = and i32 %176, 65535
  %178 = icmp eq i32 %177, 12
  br i1 %178, label %179, label %198, !prof !373

179:                                              ; preds = %169
  %180 = load ptr, ptr @label_align, align 8, !tbaa !240
  %181 = getelementptr inbounds %struct.rtx_def, ptr %171, i64 1, i32 1
  %182 = load i32, ptr %181, align 8, !tbaa !256
  %183 = load i32, ptr @min_labelno, align 4, !tbaa !244
  %184 = sub nsw i32 %182, %183
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.label_alignment, ptr %180, i64 %185
  %187 = load i16, ptr %186, align 2, !tbaa !272
  %188 = icmp eq i16 %187, 0
  br i1 %188, label %198, label %189, !prof !379

189:                                              ; preds = %179
  %190 = zext nneg i16 %187 to i32
  %191 = shl nuw i32 1, %190
  %192 = load i32, ptr @insn_current_address, align 4, !tbaa !244
  %193 = add i32 %191, -1
  %194 = add i32 %193, %192
  %195 = sub nsw i32 0, %191
  %196 = and i32 %194, %195
  %197 = sub nsw i32 %196, %192
  store i32 %197, ptr %175, align 4, !tbaa !244
  br label %198

198:                                              ; preds = %179, %189, %169
  %199 = phi i32 [ 0, %179 ], [ %197, %189 ], [ 0, %169 ]
  %200 = load i32, ptr @insn_current_address, align 4, !tbaa !244
  %201 = add nsw i32 %199, %200
  %202 = load ptr, ptr @insn_addresses_, align 8
  %203 = tail call fastcc ptr @VEC_int_base_address(ptr noundef %202) #21
  %204 = getelementptr inbounds i32, ptr %203, i64 %174
  store i32 %201, ptr %204, align 4, !tbaa !244
  %205 = load i32, ptr %171, align 8
  %206 = trunc i32 %205 to i16
  switch i16 %206, label %207 [
    i16 13, label %295
    i16 11, label %295
    i16 12, label %295
    i16 7, label %295
  ], !prof !380

207:                                              ; preds = %198
  %208 = and i32 %205, 134217728
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %210, label %295, !prof !381

210:                                              ; preds = %207
  %211 = getelementptr inbounds %struct.rtx_def, ptr %171, i64 1
  %212 = load ptr, ptr %211, align 8, !tbaa !256
  %213 = load i32, ptr %212, align 8
  %214 = and i32 %213, 65535
  %215 = trunc i32 %213 to i16
  switch i16 %215, label %234 [
    i16 20, label %216
    i16 21, label %216
    i16 16, label %237
  ], !prof !382

216:                                              ; preds = %210, %210
  %217 = load ptr, ptr @readonly_data_section, align 8, !tbaa !240
  %218 = load ptr, ptr @text_section, align 8, !tbaa !240
  %219 = icmp eq ptr %217, %218
  br i1 %219, label %220, label %295, !prof !383

220:                                              ; preds = %216
  %221 = getelementptr inbounds %struct.rtx_def, ptr %212, i64 0, i32 1
  %222 = icmp eq i32 %214, 21
  %223 = zext i1 %222 to i64
  %224 = getelementptr inbounds [1 x %union.rtunion_def], ptr %221, i64 0, i64 %223
  %225 = load ptr, ptr %224, align 8, !tbaa !256
  %226 = load i32, ptr %225, align 8, !tbaa !263
  %227 = lshr i32 %213, 16
  %228 = and i32 %227, 255
  %229 = zext nneg i32 %228 to i64
  %230 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %229
  %231 = load i8, ptr %230, align 1, !tbaa !256
  %232 = zext i8 %231 to i32
  %233 = mul nsw i32 %226, %232
  store i32 %233, ptr %175, align 4, !tbaa !244
  br label %295

234:                                              ; preds = %210
  %235 = tail call i32 @asm_noperands(ptr noundef nonnull %212) #22
  %236 = icmp sgt i32 %235, -1
  br i1 %236, label %237, label %243, !prof !384

237:                                              ; preds = %210, %234
  %238 = tail call fastcc i32 @asm_insn_count(ptr noundef nonnull %212) #21
  %239 = tail call i32 @insn_default_length(ptr noundef nonnull %171) #22
  %240 = mul nsw i32 %239, %238
  %241 = load ptr, ptr @insn_lengths, align 8, !tbaa !240
  %242 = getelementptr inbounds i32, ptr %241, i64 %174
  store i32 %240, ptr %242, align 4, !tbaa !244
  br label %295

243:                                              ; preds = %234
  %244 = load i32, ptr %212, align 8
  %245 = trunc i32 %244 to i16
  switch i16 %245, label %288 [
    i16 5, label %246
    i16 24, label %295
    i16 25, label %295
  ], !prof !385

246:                                              ; preds = %243
  %247 = getelementptr inbounds %struct.rtx_def, ptr %212, i64 0, i32 1
  %248 = load ptr, ptr %247, align 8, !tbaa !256
  %249 = load i32, ptr %248, align 8, !tbaa !263
  %250 = icmp sgt i32 %249, 0
  br i1 %250, label %251, label %295

251:                                              ; preds = %246, %274
  %252 = phi i64 [ %283, %274 ], [ 0, %246 ]
  %253 = phi ptr [ %284, %274 ], [ %248, %246 ]
  %254 = getelementptr inbounds %struct.rtvec_def, ptr %253, i64 0, i32 1, i64 %252
  %255 = load ptr, ptr %254, align 8, !tbaa !240
  %256 = getelementptr inbounds %struct.rtx_def, ptr %255, i64 0, i32 1
  %257 = load i32, ptr %256, align 8, !tbaa !256
  %258 = load i32, ptr %212, align 8
  %259 = and i32 %258, 65535
  %260 = icmp eq i32 %259, 16
  br i1 %260, label %266, label %261

261:                                              ; preds = %251
  %262 = getelementptr inbounds %struct.rtx_def, ptr %255, i64 1
  %263 = load ptr, ptr %262, align 8, !tbaa !256
  %264 = tail call i32 @asm_noperands(ptr noundef %263) #22
  %265 = icmp sgt i32 %264, -1
  br i1 %265, label %266, label %272

266:                                              ; preds = %261, %251
  %267 = getelementptr inbounds %struct.rtx_def, ptr %255, i64 1
  %268 = load ptr, ptr %267, align 8, !tbaa !256
  %269 = tail call fastcc i32 @asm_insn_count(ptr noundef %268) #21
  %270 = tail call i32 @insn_default_length(ptr noundef nonnull %255) #22
  %271 = mul nsw i32 %270, %269
  br label %274

272:                                              ; preds = %261
  %273 = tail call i32 @insn_default_length(ptr noundef nonnull %255) #22
  br label %274

274:                                              ; preds = %272, %266
  %275 = phi i32 [ %271, %266 ], [ %273, %272 ]
  %276 = load ptr, ptr @insn_lengths, align 8, !tbaa !240
  %277 = sext i32 %257 to i64
  %278 = getelementptr inbounds i32, ptr %276, i64 %277
  store i32 %275, ptr %278, align 4, !tbaa !244
  %279 = getelementptr inbounds i8, ptr %117, i64 %277
  store i8 0, ptr %279, align 1, !tbaa !256
  %280 = getelementptr inbounds i32, ptr %276, i64 %174
  %281 = load i32, ptr %280, align 4, !tbaa !244
  %282 = add nsw i32 %281, %275
  store i32 %282, ptr %280, align 4, !tbaa !244
  %283 = add nuw nsw i64 %252, 1
  %284 = load ptr, ptr %247, align 8, !tbaa !256
  %285 = load i32, ptr %284, align 8, !tbaa !263
  %286 = sext i32 %285 to i64
  %287 = icmp slt i64 %283, %286
  br i1 %287, label %251, label %295, !llvm.loop !386

288:                                              ; preds = %243
  %289 = tail call i32 @insn_default_length(ptr noundef nonnull %171) #22
  %290 = load ptr, ptr @insn_lengths, align 8, !tbaa !240
  %291 = getelementptr inbounds i32, ptr %290, i64 %174
  store i32 %289, ptr %291, align 4, !tbaa !244
  %292 = tail call i32 @insn_variable_length_p(ptr noundef nonnull %171) #22
  %293 = trunc i32 %292 to i8
  %294 = getelementptr inbounds i8, ptr %117, i64 %174
  store i8 %293, ptr %294, align 1, !tbaa !256
  br label %295

295:                                              ; preds = %274, %246, %243, %243, %198, %198, %198, %198, %220, %216, %288, %237, %207
  %296 = load ptr, ptr @insn_lengths, align 8, !tbaa !240
  %297 = getelementptr inbounds i32, ptr %296, i64 %174
  %298 = load i32, ptr %297, align 4, !tbaa !244
  %299 = load i32, ptr @insn_current_address, align 4, !tbaa !244
  %300 = add nsw i32 %299, %298
  store i32 %300, ptr @insn_current_address, align 4, !tbaa !244
  %301 = getelementptr inbounds %struct.rtx_def, ptr %171, i64 0, i32 1, i32 0, i32 0, i64 2
  %302 = load ptr, ptr %301, align 8, !tbaa !256
  %303 = icmp eq ptr %302, null
  br i1 %303, label %167, label %169, !prof !371, !llvm.loop !387

304:                                              ; preds = %167, %474
  store i32 15, ptr @insn_current_align, align 4, !tbaa !244
  store i32 0, ptr @insn_current_address, align 4, !tbaa !244
  br i1 %164, label %479, label %305, !prof !388

305:                                              ; preds = %304, %469
  %306 = phi ptr [ %472, %469 ], [ %0, %304 ]
  %307 = phi i32 [ %470, %469 ], [ 0, %304 ]
  %308 = getelementptr inbounds %struct.rtx_def, ptr %306, i64 0, i32 1
  %309 = load i32, ptr %308, align 8, !tbaa !256
  %310 = load i32, ptr %306, align 8
  %311 = and i32 %310, 65535
  %312 = icmp eq i32 %311, 12
  br i1 %312, label %313, label %347, !prof !389

313:                                              ; preds = %305
  %314 = load ptr, ptr @label_align, align 8, !tbaa !240
  %315 = getelementptr inbounds %struct.rtx_def, ptr %306, i64 1, i32 1
  %316 = load i32, ptr %315, align 8, !tbaa !256
  %317 = load i32, ptr @min_labelno, align 4, !tbaa !244
  %318 = sub nsw i32 %316, %317
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds %struct.label_alignment, ptr %314, i64 %319
  %321 = load i16, ptr %320, align 2, !tbaa !272
  %322 = sext i16 %321 to i32
  %323 = load i32, ptr @insn_current_align, align 4, !tbaa !244
  %324 = icmp slt i32 %323, %322
  br i1 %324, label %325, label %336, !prof !390

325:                                              ; preds = %313
  %326 = shl nuw i32 1, %322
  %327 = load i32, ptr @insn_current_address, align 4, !tbaa !244
  %328 = add i32 %326, -1
  %329 = add i32 %328, %327
  %330 = sub nsw i32 0, %326
  %331 = and i32 %329, %330
  %332 = sub nsw i32 %331, %327
  %333 = load ptr, ptr @insn_lengths, align 8, !tbaa !240
  %334 = sext i32 %309 to i64
  %335 = getelementptr inbounds i32, ptr %333, i64 %334
  store i32 %332, ptr %335, align 4, !tbaa !244
  store i32 %322, ptr @insn_current_align, align 4, !tbaa !244
  store i32 %331, ptr @insn_current_address, align 4, !tbaa !244
  br label %341

336:                                              ; preds = %313
  %337 = load ptr, ptr @insn_lengths, align 8, !tbaa !240
  %338 = sext i32 %309 to i64
  %339 = getelementptr inbounds i32, ptr %337, i64 %338
  store i32 0, ptr %339, align 4, !tbaa !244
  %340 = load i32, ptr @insn_current_address, align 4, !tbaa !244
  br label %341

341:                                              ; preds = %336, %325
  %342 = phi i64 [ %338, %336 ], [ %334, %325 ]
  %343 = phi i32 [ %340, %336 ], [ %331, %325 ]
  %344 = load ptr, ptr @insn_addresses_, align 8
  %345 = tail call fastcc ptr @VEC_int_base_address(ptr noundef %344) #21
  %346 = getelementptr inbounds i32, ptr %345, i64 %342
  store i32 %343, ptr %346, align 4, !tbaa !244
  br label %469

347:                                              ; preds = %305
  %348 = load i32, ptr @insn_current_align, align 4, !tbaa !244
  %349 = icmp slt i32 %168, %348
  br i1 %349, label %350, label %351, !prof !391

350:                                              ; preds = %347
  store i32 %168, ptr @insn_current_align, align 4, !tbaa !244
  br label %351

351:                                              ; preds = %350, %347
  %352 = load ptr, ptr @insn_addresses_, align 8
  %353 = tail call fastcc ptr @VEC_int_base_address(ptr noundef %352) #21
  %354 = sext i32 %309 to i64
  %355 = getelementptr inbounds i32, ptr %353, i64 %354
  %356 = load i32, ptr %355, align 4, !tbaa !244
  store i32 %356, ptr @insn_last_address, align 4, !tbaa !244
  %357 = load i32, ptr @insn_current_address, align 4, !tbaa !244
  store i32 %357, ptr %355, align 4, !tbaa !244
  %358 = getelementptr inbounds i8, ptr %117, i64 %354
  %359 = load i8, ptr %358, align 1, !tbaa !256
  %360 = icmp eq i8 %359, 0
  %361 = load i32, ptr %306, align 8
  %362 = and i32 %361, 65535
  %363 = icmp eq i32 %362, 8
  br i1 %360, label %364, label %404, !prof !392

364:                                              ; preds = %351
  br i1 %363, label %365, label %399, !prof !393

365:                                              ; preds = %364
  %366 = getelementptr inbounds %struct.rtx_def, ptr %306, i64 1
  %367 = load ptr, ptr %366, align 8, !tbaa !256
  %368 = load i32, ptr %367, align 8
  %369 = and i32 %368, 65535
  %370 = icmp eq i32 %369, 5
  br i1 %370, label %371, label %399, !prof !394

371:                                              ; preds = %365
  %372 = getelementptr inbounds %struct.rtx_def, ptr %367, i64 0, i32 1
  %373 = load ptr, ptr %372, align 8, !tbaa !256
  %374 = load i32, ptr %373, align 8, !tbaa !263
  %375 = icmp sgt i32 %374, 0
  br i1 %375, label %376, label %469

376:                                              ; preds = %371
  %377 = load ptr, ptr @insn_lengths, align 8, !tbaa !240
  br label %378

378:                                              ; preds = %376, %378
  %379 = phi i32 [ %357, %376 ], [ %393, %378 ]
  %380 = phi i64 [ 0, %376 ], [ %394, %378 ]
  %381 = phi ptr [ %373, %376 ], [ %395, %378 ]
  %382 = getelementptr inbounds %struct.rtvec_def, ptr %381, i64 0, i32 1, i64 %380
  %383 = load ptr, ptr %382, align 8, !tbaa !240
  %384 = getelementptr inbounds %struct.rtx_def, ptr %383, i64 0, i32 1
  %385 = load i32, ptr %384, align 8, !tbaa !256
  %386 = load ptr, ptr @insn_addresses_, align 8
  %387 = tail call fastcc ptr @VEC_int_base_address(ptr noundef %386) #21
  %388 = sext i32 %385 to i64
  %389 = getelementptr inbounds i32, ptr %387, i64 %388
  store i32 %379, ptr %389, align 4, !tbaa !244
  %390 = getelementptr inbounds i32, ptr %377, i64 %388
  %391 = load i32, ptr %390, align 4, !tbaa !244
  %392 = load i32, ptr @insn_current_address, align 4, !tbaa !244
  %393 = add nsw i32 %392, %391
  store i32 %393, ptr @insn_current_address, align 4, !tbaa !244
  %394 = add nuw nsw i64 %380, 1
  %395 = load ptr, ptr %372, align 8, !tbaa !256
  %396 = load i32, ptr %395, align 8, !tbaa !263
  %397 = sext i32 %396 to i64
  %398 = icmp slt i64 %394, %397
  br i1 %398, label %378, label %469, !llvm.loop !395

399:                                              ; preds = %365, %364
  %400 = load ptr, ptr @insn_lengths, align 8, !tbaa !240
  %401 = getelementptr inbounds i32, ptr %400, i64 %354
  %402 = load i32, ptr %401, align 4, !tbaa !244
  %403 = add nsw i32 %357, %402
  store i32 %403, ptr @insn_current_address, align 4, !tbaa !244
  br label %469

404:                                              ; preds = %351
  br i1 %363, label %405, label %457, !prof !396

405:                                              ; preds = %404
  %406 = getelementptr inbounds %struct.rtx_def, ptr %306, i64 1
  %407 = load ptr, ptr %406, align 8, !tbaa !256
  %408 = load i32, ptr %407, align 8
  %409 = and i32 %408, 65535
  %410 = icmp eq i32 %409, 5
  br i1 %410, label %411, label %457

411:                                              ; preds = %405
  %412 = getelementptr inbounds %struct.rtx_def, ptr %407, i64 0, i32 1
  %413 = load ptr, ptr %412, align 8, !tbaa !256
  %414 = load i32, ptr %413, align 8, !tbaa !263
  %415 = icmp sgt i32 %414, 0
  br i1 %415, label %416, label %461

416:                                              ; preds = %411, %445
  %417 = phi i32 [ %450, %445 ], [ %357, %411 ]
  %418 = phi i64 [ %452, %445 ], [ 0, %411 ]
  %419 = phi ptr [ %453, %445 ], [ %413, %411 ]
  %420 = phi i32 [ %448, %445 ], [ %307, %411 ]
  %421 = phi i32 [ %451, %445 ], [ 0, %411 ]
  %422 = getelementptr inbounds %struct.rtvec_def, ptr %419, i64 0, i32 1, i64 %418
  %423 = load ptr, ptr %422, align 8, !tbaa !240
  %424 = getelementptr inbounds %struct.rtx_def, ptr %423, i64 0, i32 1
  %425 = load i32, ptr %424, align 8, !tbaa !256
  %426 = load ptr, ptr @insn_addresses_, align 8
  %427 = tail call fastcc ptr @VEC_int_base_address(ptr noundef %426) #21
  %428 = sext i32 %425 to i64
  %429 = getelementptr inbounds i32, ptr %427, i64 %428
  store i32 %417, ptr %429, align 4, !tbaa !244
  %430 = getelementptr inbounds i8, ptr %117, i64 %428
  %431 = load i8, ptr %430, align 1, !tbaa !256
  %432 = icmp eq i8 %431, 0
  br i1 %432, label %433, label %437

433:                                              ; preds = %416
  %434 = load ptr, ptr @insn_lengths, align 8, !tbaa !240
  %435 = getelementptr inbounds i32, ptr %434, i64 %428
  %436 = load i32, ptr %435, align 4, !tbaa !244
  br label %445

437:                                              ; preds = %416
  %438 = tail call i32 @insn_current_length(ptr noundef nonnull %423) #22
  %439 = load ptr, ptr @insn_lengths, align 8, !tbaa !240
  %440 = getelementptr inbounds i32, ptr %439, i64 %428
  %441 = load i32, ptr %440, align 4, !tbaa !244
  %442 = icmp eq i32 %438, %441
  br i1 %442, label %445, label %443

443:                                              ; preds = %437
  %444 = getelementptr inbounds i32, ptr %439, i64 %428
  store i32 %438, ptr %444, align 4, !tbaa !244
  br label %445

445:                                              ; preds = %433, %443, %437
  %446 = phi i32 [ %438, %443 ], [ %438, %437 ], [ %436, %433 ]
  %447 = phi i32 [ %438, %443 ], [ %441, %437 ], [ %436, %433 ]
  %448 = phi i32 [ 1, %443 ], [ %420, %437 ], [ %420, %433 ]
  %449 = load i32, ptr @insn_current_address, align 4, !tbaa !244
  %450 = add nsw i32 %449, %447
  store i32 %450, ptr @insn_current_address, align 4, !tbaa !244
  %451 = add nsw i32 %446, %421
  %452 = add nuw nsw i64 %418, 1
  %453 = load ptr, ptr %412, align 8, !tbaa !256
  %454 = load i32, ptr %453, align 8, !tbaa !263
  %455 = sext i32 %454 to i64
  %456 = icmp slt i64 %452, %455
  br i1 %456, label %416, label %461, !llvm.loop !397

457:                                              ; preds = %405, %404
  %458 = tail call i32 @insn_current_length(ptr noundef nonnull %306) #22
  %459 = load i32, ptr @insn_current_address, align 4, !tbaa !244
  %460 = add nsw i32 %459, %458
  store i32 %460, ptr @insn_current_address, align 4, !tbaa !244
  br label %461

461:                                              ; preds = %445, %411, %457
  %462 = phi i32 [ %458, %457 ], [ 0, %411 ], [ %451, %445 ]
  %463 = phi i32 [ %307, %457 ], [ %307, %411 ], [ %448, %445 ]
  %464 = load ptr, ptr @insn_lengths, align 8, !tbaa !240
  %465 = getelementptr inbounds i32, ptr %464, i64 %354
  %466 = load i32, ptr %465, align 4, !tbaa !244
  %467 = icmp eq i32 %462, %466
  br i1 %467, label %469, label %468, !prof !398

468:                                              ; preds = %461
  store i32 %462, ptr %465, align 4, !tbaa !244
  br label %469

469:                                              ; preds = %378, %371, %461, %468, %399, %341
  %470 = phi i32 [ %307, %341 ], [ %307, %399 ], [ 1, %468 ], [ %463, %461 ], [ %307, %371 ], [ %307, %378 ]
  %471 = getelementptr inbounds %struct.rtx_def, ptr %306, i64 0, i32 1, i32 0, i32 0, i64 2
  %472 = load ptr, ptr %471, align 8, !tbaa !256
  %473 = icmp eq ptr %472, null
  br i1 %473, label %474, label %305, !prof !399, !llvm.loop !400

474:                                              ; preds = %469
  %475 = load i32, ptr @optimize, align 4, !tbaa !244
  %476 = icmp ne i32 %475, 0
  %477 = icmp ne i32 %470, 0
  %478 = select i1 %476, i1 %477, i1 false
  br i1 %478, label %304, label %479, !prof !401, !llvm.loop !402

479:                                              ; preds = %304, %474
  tail call void @free(ptr noundef %117) #21
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
define internal fastcc i32 @final_addr_vec_align(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !403 !PGOFuncName !404 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %3 = load ptr, ptr %2, align 8, !tbaa !256
  %4 = load i32, ptr %3, align 8
  %5 = lshr i32 %4, 16
  %6 = and i32 %5, 255
  %7 = zext nneg i32 %6 to i64
  %8 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %7
  %9 = load i8, ptr %8, align 1, !tbaa !256
  %10 = zext i8 %9 to i32
  %11 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !244
  %12 = and i32 %11, 32
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %13, i32 16, i32 32
  %15 = icmp ult i32 %14, %10
  br i1 %15, label %16, label %17, !prof !383

16:                                               ; preds = %1
  br label %17

17:                                               ; preds = %16, %1
  %18 = phi i32 [ %14, %16 ], [ %10, %1 ]
  %19 = zext nneg i32 %18 to i64
  %20 = tail call i32 @exact_log2(i64 noundef %19) #22
  ret i32 %20
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_int_heap_alloc(i32 noundef %0) unnamed_addr #6 !prof !246 !PGOFuncName !405 {
  %2 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %0, i64 noundef 8, i64 noundef 4) #22
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_int_heap_safe_grow(i32 noundef %0) unnamed_addr #6 !prof !246 !PGOFuncName !406 {
  %2 = load ptr, ptr @insn_addresses_, align 8, !tbaa !240
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4, !prof !251

4:                                                ; preds = %1
  %5 = load i32, ptr %2, align 4, !tbaa !407
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi i32 [ %5, %4 ], [ 0, %1 ]
  %8 = sub nsw i32 %0, %7
  tail call fastcc void @VEC_int_heap_reserve_exact(i32 noundef %8) #21
  %9 = load ptr, ptr @insn_addresses_, align 8, !tbaa !240, !nonnull !409, !noundef !409
  store i32 %0, ptr %9, align 4, !tbaa !407
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
define internal fastcc i32 @VEC_int_base_length(ptr noundef readonly %0) unnamed_addr #12 !prof !410 !PGOFuncName !411 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !412

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 4, !tbaa !407
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_int_heap_reserve_exact(i32 noundef %0) unnamed_addr #6 !prof !246 !PGOFuncName !413 {
  %2 = load ptr, ptr @insn_addresses_, align 8, !tbaa !240
  %3 = tail call fastcc i32 @VEC_int_base_space(ptr noundef %2, i32 noundef %0) #21, !range !414
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !251

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef %2, i32 noundef %0, i64 noundef 8, i64 noundef 4) #22
  store ptr %6, ptr @insn_addresses_, align 8, !tbaa !240
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_int_base_space(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #12 !prof !246 !PGOFuncName !415 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4, !prof !251

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !416
  %7 = load i32, ptr %0, align 4, !tbaa !407
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
define dso_local void @add_debug_prefix_map(ptr noundef %0) local_unnamed_addr #6 !prof !248 {
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
  store ptr %10, ptr %6, align 8, !tbaa !417
  %11 = getelementptr inbounds %struct.debug_prefix_map, ptr %6, i64 0, i32 2
  store i64 %9, ptr %11, align 8, !tbaa !419
  %12 = getelementptr inbounds i8, ptr %2, i64 1
  %13 = tail call ptr @xstrdup(ptr noundef nonnull %12) #22
  %14 = getelementptr inbounds %struct.debug_prefix_map, ptr %6, i64 0, i32 1
  store ptr %13, ptr %14, align 8, !tbaa !420
  %15 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %12) #21
  %16 = getelementptr inbounds %struct.debug_prefix_map, ptr %6, i64 0, i32 3
  store i64 %15, ptr %16, align 8, !tbaa !421
  %17 = load ptr, ptr @debug_prefix_maps, align 8, !tbaa !240
  %18 = getelementptr inbounds %struct.debug_prefix_map, ptr %6, i64 0, i32 4
  store ptr %17, ptr %18, align 8, !tbaa !422
  store ptr %6, ptr @debug_prefix_maps, align 8, !tbaa !240
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
define dso_local ptr @remap_debug_filename(ptr noundef readonly %0) local_unnamed_addr #6 !prof !239 {
  %2 = load ptr, ptr @debug_prefix_maps, align 8, !tbaa !240
  %3 = icmp eq ptr %2, null
  br i1 %3, label %27, label %4, !prof !423

4:                                                ; preds = %1, %11
  %5 = phi ptr [ %13, %11 ], [ %2, %1 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !417
  %7 = getelementptr inbounds %struct.debug_prefix_map, ptr %5, i64 0, i32 2
  %8 = load i64, ptr %7, align 8, !tbaa !419
  %9 = tail call i32 @strncmp(ptr noundef %0, ptr noundef %6, i64 noundef %8) #21
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.debug_prefix_map, ptr %5, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !240
  %14 = icmp eq ptr %13, null
  br i1 %14, label %27, label %4, !prof !424, !llvm.loop !425

15:                                               ; preds = %4
  %16 = getelementptr inbounds i8, ptr %0, i64 %8
  %17 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %16) #21
  %18 = add i64 %17, 1
  %19 = getelementptr inbounds %struct.debug_prefix_map, ptr %5, i64 0, i32 3
  %20 = load i64, ptr %19, align 8, !tbaa !421
  %21 = add i64 %18, %20
  %22 = alloca i8, i64 %21, align 16
  %23 = getelementptr inbounds %struct.debug_prefix_map, ptr %5, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !420
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
define dso_local void @final_start_function(ptr nocapture readnone %0, ptr noundef %1, i32 %2) local_unnamed_addr #6 !prof !246 {
  store i32 0, ptr @block_depth, align 4, !tbaa !244
  store ptr null, ptr @this_is_asm_operands, align 8, !tbaa !240
  %4 = load i32, ptr @prologue_locator, align 4, !tbaa !244
  %5 = tail call ptr @locator_file(i32 noundef %4) #22
  store ptr %5, ptr @last_filename, align 8, !tbaa !240
  %6 = load i32, ptr @prologue_locator, align 4, !tbaa !244
  %7 = tail call i32 @locator_line(i32 noundef %6) #22
  store i32 %7, ptr @last_linenum, align 4, !tbaa !244
  store i32 0, ptr @discriminator, align 4, !tbaa !244
  store i32 0, ptr @last_discriminator, align 4, !tbaa !244
  store i32 %7, ptr @high_function_linenum, align 4, !tbaa !244
  store i32 %7, ptr @high_block_linenum, align 4, !tbaa !244
  %8 = load ptr, ptr @current_function_decl, align 8, !tbaa !240
  %9 = getelementptr inbounds %struct.tree_decl_common, ptr %8, i64 0, i32 2
  %10 = load i64, ptr %9, align 8
  %11 = and i64 %10, 1024
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %19, !prof !290

13:                                               ; preds = %3
  %14 = load ptr, ptr @debug_hooks, align 8, !tbaa !240
  %15 = getelementptr inbounds %struct.gcc_debug_hooks, ptr %14, i64 0, i32 11
  %16 = load ptr, ptr %15, align 8, !tbaa !426
  %17 = load ptr, ptr @last_filename, align 8, !tbaa !240
  tail call void %16(i32 noundef %7, ptr noundef %17) #22
  %18 = load ptr, ptr @current_function_decl, align 8, !tbaa !240
  br label %19

19:                                               ; preds = %13, %3
  %20 = phi ptr [ %18, %13 ], [ %8, %3 ]
  %21 = tail call fastcc zeroext i8 @dwarf2_debug_info_emitted_p(ptr noundef %20) #21, !range !319
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %24, !prof !290

23:                                               ; preds = %19
  tail call void @dwarf2out_begin_prologue(i32 noundef 0, ptr noundef null) #22
  br label %24

24:                                               ; preds = %23, %19
  %25 = tail call i32 @dwarf2out_do_frame() #22
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %28, label %27, !prof !290

27:                                               ; preds = %24
  tail call void @dwarf2out_frame_debug(ptr noundef null, i8 noundef zeroext 0) #22
  br label %28

28:                                               ; preds = %27, %24
  %29 = load i32, ptr @write_symbols, align 4, !tbaa !244
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %38, label %31, !prof !290

31:                                               ; preds = %28
  tail call void @reemit_insn_block_notes() #22
  %32 = load ptr, ptr @current_function_decl, align 8, !tbaa !240
  tail call void @number_blocks(ptr noundef %32) #22
  %33 = load ptr, ptr @current_function_decl, align 8, !tbaa !240
  %34 = getelementptr inbounds %struct.tree_decl_common, ptr %33, i64 0, i32 5
  %35 = load ptr, ptr %34, align 8, !tbaa !256
  %36 = load i64, ptr %35, align 8
  %37 = or i64 %36, 4194304
  store i64 %37, ptr %35, align 8
  br label %38

38:                                               ; preds = %31, %28
  %39 = load i8, ptr @warn_frame_larger_than, align 1, !tbaa !256
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %49, label %41, !prof !290

41:                                               ; preds = %38
  %42 = tail call i64 @get_frame_size() #22
  %43 = load i64, ptr @frame_larger_than_size, align 8, !tbaa !428
  %44 = icmp sgt i64 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = tail call i64 @get_frame_size() #22
  %47 = load i64, ptr @frame_larger_than_size, align 8, !tbaa !428
  %48 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 99, ptr noundef nonnull @.str.15, i64 noundef %46, i64 noundef %47) #22
  br label %49

49:                                               ; preds = %45, %41, %38
  %50 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 14), align 8, !tbaa !429
  %51 = tail call i64 @get_frame_size() #22
  tail call void %50(ptr noundef %1, i64 noundef %51) #22
  ret void
}

; Function Attrs: optsize
declare ptr @locator_file(i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare i32 @locator_line(i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @dwarf2_debug_info_emitted_p(ptr nocapture noundef readonly %0) unnamed_addr #10 !prof !441 !PGOFuncName !442 {
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
define dso_local void @final_end_function() local_unnamed_addr #6 !prof !246 {
  tail call void @app_disable() #21
  %1 = load ptr, ptr @current_function_decl, align 8, !tbaa !240
  %2 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 2
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 1024
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %11, !prof !290

6:                                                ; preds = %0
  %7 = load ptr, ptr @debug_hooks, align 8, !tbaa !240
  %8 = getelementptr inbounds %struct.gcc_debug_hooks, ptr %7, i64 0, i32 15
  %9 = load ptr, ptr %8, align 8, !tbaa !443
  %10 = load i32, ptr @high_function_linenum, align 4, !tbaa !244
  tail call void %9(i32 noundef %10) #22
  br label %11

11:                                               ; preds = %6, %0
  %12 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 17), align 8, !tbaa !444
  %13 = load ptr, ptr @asm_out_file, align 8, !tbaa !240
  %14 = tail call i64 @get_frame_size() #22
  tail call void %12(ptr noundef %13, i64 noundef %14) #22
  %15 = load ptr, ptr @current_function_decl, align 8, !tbaa !240
  %16 = getelementptr inbounds %struct.tree_decl_common, ptr %15, i64 0, i32 2
  %17 = load i64, ptr %16, align 8
  %18 = and i64 %17, 1024
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %27, !prof !290

20:                                               ; preds = %11
  %21 = load ptr, ptr @debug_hooks, align 8, !tbaa !240
  %22 = getelementptr inbounds %struct.gcc_debug_hooks, ptr %21, i64 0, i32 13
  %23 = load ptr, ptr %22, align 8, !tbaa !445
  %24 = load i32, ptr @last_linenum, align 4, !tbaa !244
  %25 = load ptr, ptr @last_filename, align 8, !tbaa !240
  tail call void %23(i32 noundef %24, ptr noundef %25) #22
  %26 = load ptr, ptr @current_function_decl, align 8, !tbaa !240
  br label %27

27:                                               ; preds = %20, %11
  %28 = phi ptr [ %26, %20 ], [ %15, %11 ]
  %29 = tail call fastcc zeroext i8 @dwarf2_debug_info_emitted_p(ptr noundef %28) #21, !range !319
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %37, !prof !290

31:                                               ; preds = %27
  %32 = tail call i32 @dwarf2out_do_frame() #22
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %37, label %34, !prof !290

34:                                               ; preds = %31
  %35 = load i32, ptr @last_linenum, align 4, !tbaa !244
  %36 = load ptr, ptr @last_filename, align 8, !tbaa !240
  tail call void @dwarf2out_end_epilogue(i32 noundef %35, ptr noundef %36) #22
  br label %37

37:                                               ; preds = %34, %31, %27
  ret void
}

; Function Attrs: optsize
declare void @dwarf2out_end_epilogue(i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @final(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #6 !prof !246 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #23
  store i32 0, ptr %4, align 4, !tbaa !244
  %5 = icmp eq ptr %0, null
  tail call void @init_recog() #22
  br i1 %5, label %27, label %6, !prof !299

6:                                                ; preds = %3, %23
  %7 = phi ptr [ %25, %23 ], [ %0, %3 ]
  %8 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !256
  %10 = load ptr, ptr @insn_addresses_, align 8
  %11 = call fastcc i32 @VEC_int_base_length(ptr noundef %10) #21
  %12 = icmp ult i32 %9, %11
  br i1 %12, label %18, label %13, !prof !446

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
  %22 = load i32, ptr %21, align 4, !tbaa !244
  br label %23

23:                                               ; preds = %17, %13, %18
  %24 = phi i32 [ %22, %18 ], [ -1, %13 ], [ -1, %17 ]
  store i32 %24, ptr @insn_current_address, align 4, !tbaa !244
  %25 = call ptr @final_scan_insn(ptr noundef nonnull %7, ptr noundef %1, i32 poison, i32 poison, ptr noundef nonnull %4) #21
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %6, !prof !371, !llvm.loop !447

27:                                               ; preds = %23, %3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #23
  ret void
}

; Function Attrs: optsize
declare void @init_recog() local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @final_scan_insn(ptr noundef %0, ptr noundef %1, i32 %2, i32 %3, ptr noundef %4) local_unnamed_addr #6 !prof !448 {
  %6 = alloca %struct.expanded_location, align 8
  %7 = alloca %struct.expanded_location, align 8
  %8 = alloca %struct.expanded_location, align 8
  %9 = alloca %struct.expanded_location, align 8
  %10 = alloca i8, align 1
  %11 = alloca %struct.expanded_location, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.expanded_location, align 8
  %14 = load i32, ptr @insn_counter, align 4, !tbaa !244
  %15 = add nsw i32 %14, 1
  store i32 %15, ptr @insn_counter, align 4, !tbaa !244
  %16 = load i32, ptr %0, align 8
  %17 = and i32 %16, 134217728
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19, !prof !446

19:                                               ; preds = %5
  %20 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %21 = load ptr, ptr %20, align 8, !tbaa !256
  br label %663

22:                                               ; preds = %5
  %23 = trunc i32 %16 to i16
  switch i16 %23, label %329 [
    i16 13, label %24
    i16 11, label %235
    i16 12, label %239
  ], !prof !449

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %26 = load i32, ptr %25, align 8, !tbaa !256
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
  ], !prof !450

27:                                               ; preds = %24
  %28 = load i8, ptr @in_cold_section_p, align 1, !tbaa !256
  %29 = icmp eq i8 %28, 0
  %30 = zext i1 %29 to i8
  store i8 %30, ptr @in_cold_section_p, align 1, !tbaa !256
  %31 = tail call i32 @dwarf2out_do_frame() #22
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %27
  tail call void @dwarf2out_switch_text_section() #22
  br label %44

34:                                               ; preds = %27
  %35 = load ptr, ptr @current_function_decl, align 8, !tbaa !240
  %36 = getelementptr inbounds %struct.tree_decl_common, ptr %35, i64 0, i32 2
  %37 = load i64, ptr %36, align 8
  %38 = and i64 %37, 1024
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = load ptr, ptr @debug_hooks, align 8, !tbaa !240
  %42 = getelementptr inbounds %struct.gcc_debug_hooks, ptr %41, i64 0, i32 25
  %43 = load ptr, ptr %42, align 8, !tbaa !451
  tail call void %43() #22
  br label %44

44:                                               ; preds = %34, %40, %33
  %45 = tail call ptr @current_function_section() #22
  tail call void @switch_to_section(ptr noundef %45) #22
  br label %660

46:                                               ; preds = %24
  %47 = load i32, ptr @flag_debug_asm, align 4, !tbaa !244
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %56, label %49, !prof !452

49:                                               ; preds = %46
  %50 = load ptr, ptr @asm_out_file, align 8, !tbaa !240
  %51 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !256
  %53 = getelementptr inbounds %struct.basic_block_def, ptr %52, i64 0, i32 9
  %54 = load i32, ptr %53, align 8, !tbaa !310
  %55 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %50, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef %54) #21
  br label %56

56:                                               ; preds = %49, %46
  %57 = load i32, ptr %4, align 4, !tbaa !244
  %58 = and i32 %57, 5
  %59 = icmp eq i32 %58, 1
  br i1 %59, label %60, label %62, !prof !453

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
  %67 = load ptr, ptr %66, align 8, !tbaa !256
  %68 = getelementptr inbounds %struct.basic_block_def, ptr %67, i64 0, i32 12
  %69 = load i32, ptr %68, align 4, !tbaa !454
  store i32 %69, ptr @discriminator, align 4, !tbaa !244
  br label %660

70:                                               ; preds = %24
  %71 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 11), align 8, !tbaa !455
  %72 = load ptr, ptr @asm_out_file, align 8, !tbaa !240
  %73 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 2
  %74 = load i32, ptr %73, align 8, !tbaa !256
  %75 = sext i32 %74 to i64
  tail call void %71(ptr noundef %72, ptr noundef nonnull @.str.19, i64 noundef %75) #22
  br label %660

76:                                               ; preds = %24
  %77 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 11), align 8, !tbaa !455
  %78 = load ptr, ptr @asm_out_file, align 8, !tbaa !240
  %79 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 2
  %80 = load i32, ptr %79, align 8, !tbaa !256
  %81 = sext i32 %80 to i64
  tail call void %77(ptr noundef %78, ptr noundef nonnull @.str.20, i64 noundef %81) #22
  br label %660

82:                                               ; preds = %24
  %83 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 15), align 8, !tbaa !456
  tail call void %83(ptr noundef %1) #22
  tail call fastcc void @profile_after_prologue(ptr noundef %1) #21
  %84 = load i32, ptr %4, align 4, !tbaa !244
  %85 = and i32 %84, 6
  %86 = icmp eq i32 %85, 2
  br i1 %86, label %87, label %89, !prof !457

87:                                               ; preds = %82
  %88 = or disjoint i32 %84, 4
  store i32 %88, ptr %4, align 4, !tbaa !244
  store i1 true, ptr @force_source_line, align 1
  br label %660

89:                                               ; preds = %82
  %90 = or i32 %84, 2
  store i32 %90, ptr %4, align 4, !tbaa !244
  br label %660

91:                                               ; preds = %24
  %92 = tail call i32 @dwarf2out_do_frame() #22
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %95, label %94, !prof !458

94:                                               ; preds = %91
  tail call void @dwarf2out_begin_epilogue(ptr noundef nonnull %0) #22
  br label %95

95:                                               ; preds = %94, %91
  %96 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 16), align 8, !tbaa !459
  tail call void %96(ptr noundef %1) #22
  br label %660

97:                                               ; preds = %24
  tail call void @dwarf2out_frame_debug_restore_state() #22
  br label %660

98:                                               ; preds = %24
  tail call void @app_disable() #21
  %99 = load ptr, ptr @current_function_decl, align 8, !tbaa !240
  %100 = getelementptr inbounds %struct.tree_decl_common, ptr %99, i64 0, i32 2
  %101 = load i64, ptr %100, align 8
  %102 = and i64 %101, 1024
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %110, !prof !290

104:                                              ; preds = %98
  %105 = load ptr, ptr @debug_hooks, align 8, !tbaa !240
  %106 = getelementptr inbounds %struct.gcc_debug_hooks, ptr %105, i64 0, i32 12
  %107 = load ptr, ptr %106, align 8, !tbaa !460
  %108 = load i32, ptr @last_linenum, align 4, !tbaa !244
  %109 = load ptr, ptr @last_filename, align 8, !tbaa !240
  tail call void %107(i32 noundef %108, ptr noundef %109) #22
  br label %110

110:                                              ; preds = %104, %98
  %111 = load i32, ptr %4, align 4, !tbaa !244
  %112 = and i32 %111, 6
  %113 = icmp eq i32 %112, 2
  br i1 %113, label %114, label %116, !prof !461

114:                                              ; preds = %110
  %115 = or disjoint i32 %111, 4
  store i32 %115, ptr %4, align 4, !tbaa !244
  store i1 true, ptr @force_source_line, align 1
  br label %660

116:                                              ; preds = %110
  %117 = or i32 %111, 2
  store i32 %117, ptr %4, align 4, !tbaa !244
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
  %131 = load ptr, ptr %130, align 8, !tbaa !256
  %132 = getelementptr inbounds %struct.tree_block, ptr %131, i64 0, i32 1
  %133 = load i32, ptr %132, align 8
  tail call void @app_disable() #21
  %134 = load i32, ptr @block_depth, align 4, !tbaa !244
  %135 = add nsw i32 %134, 1
  store i32 %135, ptr @block_depth, align 4, !tbaa !244
  %136 = load i32, ptr @last_linenum, align 4, !tbaa !244
  store i32 %136, ptr @high_block_linenum, align 4, !tbaa !244
  %137 = load ptr, ptr @current_function_decl, align 8, !tbaa !240
  %138 = getelementptr inbounds %struct.tree_decl_common, ptr %137, i64 0, i32 2
  %139 = load i64, ptr %138, align 8
  %140 = and i64 %139, 1024
  %141 = icmp eq i64 %140, 0
  br i1 %141, label %142, label %147

142:                                              ; preds = %129
  %143 = lshr i32 %133, 1
  %144 = load ptr, ptr @debug_hooks, align 8, !tbaa !240
  %145 = getelementptr inbounds %struct.gcc_debug_hooks, ptr %144, i64 0, i32 7
  %146 = load ptr, ptr %145, align 8, !tbaa !462
  tail call void %146(i32 noundef %136, i32 noundef %143) #22
  br label %147

147:                                              ; preds = %142, %129
  %148 = load ptr, ptr %130, align 8, !tbaa !256
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
  %158 = load ptr, ptr %157, align 8, !tbaa !256
  %159 = tail call ptr @block_nonartificial_location(ptr noundef %158) #22
  %160 = icmp eq ptr %159, null
  br i1 %160, label %660, label %161

161:                                              ; preds = %156
  %162 = load i32, ptr %159, align 4, !tbaa !244
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %6, i32 noundef %162) #22
  %163 = load ptr, ptr %6, align 8, !tbaa !463
  store ptr %163, ptr @override_filename, align 8, !tbaa !240
  %164 = load i32, ptr %159, align 4, !tbaa !244
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %7, i32 noundef %164) #22
  %165 = getelementptr inbounds %struct.expanded_location, ptr %7, i64 0, i32 1
  %166 = load i32, ptr %165, align 8, !tbaa !465
  store i32 %166, ptr @override_linenum, align 4, !tbaa !244
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
  %180 = load ptr, ptr %179, align 8, !tbaa !256
  %181 = getelementptr inbounds %struct.tree_block, ptr %180, i64 0, i32 1
  %182 = load i32, ptr %181, align 8
  %183 = lshr i32 %182, 1
  tail call void @app_disable() #21
  %184 = load i32, ptr @block_depth, align 4, !tbaa !244
  %185 = add nsw i32 %184, -1
  store i32 %185, ptr @block_depth, align 4, !tbaa !244
  %186 = icmp sgt i32 %184, 0
  br i1 %186, label %188, label %187

187:                                              ; preds = %178
  tail call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 1978, ptr noundef nonnull @.str.11) #22
  br label %188

188:                                              ; preds = %178, %187
  %189 = load ptr, ptr @current_function_decl, align 8, !tbaa !240
  %190 = getelementptr inbounds %struct.tree_decl_common, ptr %189, i64 0, i32 2
  %191 = load i64, ptr %190, align 8
  %192 = and i64 %191, 1024
  %193 = icmp eq i64 %192, 0
  br i1 %193, label %194, label %199

194:                                              ; preds = %188
  %195 = load ptr, ptr @debug_hooks, align 8, !tbaa !240
  %196 = getelementptr inbounds %struct.gcc_debug_hooks, ptr %195, i64 0, i32 8
  %197 = load ptr, ptr %196, align 8, !tbaa !466
  %198 = load i32, ptr @high_block_linenum, align 4, !tbaa !244
  tail call void %197(i32 noundef %198, i32 noundef %183) #22
  br label %199

199:                                              ; preds = %188, %194, %167
  %200 = load i32, ptr @write_symbols, align 4
  %201 = add i32 %200, -1
  %202 = icmp ult i32 %201, 2
  br i1 %202, label %203, label %660

203:                                              ; preds = %199
  %204 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 2
  %205 = load ptr, ptr %204, align 8, !tbaa !256
  %206 = getelementptr inbounds %struct.tree_block, ptr %205, i64 0, i32 6
  %207 = load ptr, ptr %206, align 8, !tbaa !256
  %208 = tail call ptr @block_nonartificial_location(ptr noundef %207) #22
  %209 = icmp eq ptr %208, null
  br i1 %209, label %216, label %210

210:                                              ; preds = %203
  %211 = load i32, ptr %208, align 4, !tbaa !244
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %8, i32 noundef %211) #22
  %212 = load ptr, ptr %8, align 8, !tbaa !463
  store ptr %212, ptr @override_filename, align 8, !tbaa !240
  %213 = load i32, ptr %208, align 4, !tbaa !244
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %9, i32 noundef %213) #22
  %214 = getelementptr inbounds %struct.expanded_location, ptr %9, i64 0, i32 1
  %215 = load i32, ptr %214, align 8, !tbaa !465
  br label %217

216:                                              ; preds = %203
  store ptr null, ptr @override_filename, align 8, !tbaa !240
  br label %217

217:                                              ; preds = %216, %210
  %218 = phi i32 [ 0, %216 ], [ %215, %210 ]
  store i32 %218, ptr @override_linenum, align 4, !tbaa !244
  br label %660

219:                                              ; preds = %24
  %220 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 11), align 8, !tbaa !455
  %221 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1
  %222 = load i32, ptr %221, align 8, !tbaa !256
  %223 = sext i32 %222 to i64
  tail call void %220(ptr noundef %1, ptr noundef nonnull @.str.21, i64 noundef %223) #22
  br label %660

224:                                              ; preds = %24
  %225 = load ptr, ptr @current_function_decl, align 8, !tbaa !240
  %226 = getelementptr inbounds %struct.tree_decl_common, ptr %225, i64 0, i32 2
  %227 = load i64, ptr %226, align 8
  %228 = and i64 %227, 1024
  %229 = icmp eq i64 %228, 0
  br i1 %229, label %230, label %660

230:                                              ; preds = %224
  %231 = load ptr, ptr @debug_hooks, align 8, !tbaa !240
  %232 = getelementptr inbounds %struct.gcc_debug_hooks, ptr %231, i64 0, i32 24
  %233 = load ptr, ptr %232, align 8, !tbaa !467
  tail call void %233(ptr noundef nonnull %0) #22
  br label %660

234:                                              ; preds = %24
  tail call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 2016, ptr noundef nonnull @.str.11) #22
  br label %660

235:                                              ; preds = %22
  %236 = tail call i32 @dwarf2out_do_frame() #22
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %660, label %238, !prof !468

238:                                              ; preds = %235
  tail call void @dwarf2out_frame_debug(ptr noundef nonnull %0, i8 noundef zeroext 0) #22
  br label %660

239:                                              ; preds = %22
  %240 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1
  %241 = load i32, ptr %240, align 8, !tbaa !256
  %242 = load i32, ptr @max_labelno, align 4, !tbaa !244
  %243 = icmp sgt i32 %241, %242
  br i1 %243, label %275, label %244, !prof !368

244:                                              ; preds = %239
  %245 = load ptr, ptr @label_align, align 8, !tbaa !240
  %246 = load i32, ptr @min_labelno, align 4, !tbaa !244
  %247 = sub nsw i32 %241, %246
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds %struct.label_alignment, ptr %245, i64 %248
  %250 = load i16, ptr %249, align 2, !tbaa !272
  %251 = sext i16 %250 to i32
  %252 = getelementptr inbounds %struct.label_alignment, ptr %245, i64 %248, i32 1
  %253 = load i16, ptr %252, align 2, !tbaa !275
  %254 = sext i16 %253 to i32
  %255 = icmp eq i16 %250, 0
  br i1 %255, label %275, label %256, !prof !379

256:                                              ; preds = %244
  %257 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %258 = load ptr, ptr %257, align 8, !tbaa !256
  %259 = icmp eq ptr %258, null
  br i1 %259, label %275, label %260, !prof !469

260:                                              ; preds = %256
  %261 = icmp eq i16 %253, 0
  br i1 %261, label %262, label %264, !prof !470

262:                                              ; preds = %260
  %263 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.22, i32 noundef %251) #21
  br label %275

264:                                              ; preds = %260
  %265 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.23, i32 noundef %251, i32 noundef %254) #21
  %266 = icmp sgt i16 %250, 3
  br i1 %266, label %267, label %275, !prof !471

267:                                              ; preds = %264
  %268 = shl nuw i32 1, %251
  %269 = add nsw i32 %254, 1
  %270 = icmp sgt i32 %268, %269
  %271 = icmp sgt i16 %253, 6
  %272 = select i1 %270, i1 %271, i1 false
  br i1 %272, label %273, label %275, !prof !472

273:                                              ; preds = %267
  %274 = tail call i32 @fputs(ptr noundef nonnull @.str.24, ptr noundef %1) #21
  br label %275

275:                                              ; preds = %244, %256, %262, %273, %267, %264, %239
  %276 = load ptr, ptr @current_function_decl, align 8, !tbaa !240
  %277 = getelementptr inbounds %struct.tree_decl_common, ptr %276, i64 0, i32 2
  %278 = load i64, ptr %277, align 8
  %279 = and i64 %278, 1024
  %280 = icmp eq i64 %279, 0
  br i1 %280, label %281, label %289, !prof !473

281:                                              ; preds = %275
  %282 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 1
  %283 = load ptr, ptr %282, align 8, !tbaa !256
  %284 = icmp eq ptr %283, null
  br i1 %284, label %289, label %285, !prof !474

285:                                              ; preds = %281
  %286 = load ptr, ptr @debug_hooks, align 8, !tbaa !240
  %287 = getelementptr inbounds %struct.gcc_debug_hooks, ptr %286, i64 0, i32 22
  %288 = load ptr, ptr %287, align 8, !tbaa !475
  tail call void %288(ptr noundef nonnull %0) #22
  br label %289

289:                                              ; preds = %285, %281, %275
  tail call void @app_disable() #21
  %290 = tail call ptr @next_nonnote_insn(ptr noundef nonnull %0) #22
  %291 = icmp eq ptr %290, null
  br i1 %291, label %316, label %292, !prof !368

292:                                              ; preds = %289
  %293 = load i32, ptr %290, align 8
  %294 = and i32 %293, 65535
  %295 = icmp eq i32 %294, 9
  br i1 %295, label %296, label %316, !prof !369

296:                                              ; preds = %292
  %297 = getelementptr inbounds %struct.rtx_def, ptr %290, i64 1
  %298 = load ptr, ptr %297, align 8, !tbaa !256
  %299 = load i32, ptr %298, align 8
  %300 = and i32 %299, 65534
  %301 = icmp eq i32 %300, 20
  br i1 %301, label %302, label %316, !prof !476

302:                                              ; preds = %296
  %303 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 24), align 8, !tbaa !477
  %304 = load ptr, ptr @current_function_decl, align 8, !tbaa !240
  %305 = tail call ptr %303(ptr noundef %304) #22
  tail call void @switch_to_section(ptr noundef %305) #22
  %306 = tail call fastcc i32 @final_addr_vec_align(ptr noundef nonnull %290) #21
  %307 = icmp eq i32 %306, 0
  br i1 %307, label %311, label %308, !prof !383

308:                                              ; preds = %302
  %309 = shl nuw i32 1, %306
  %310 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.25, i32 noundef %309) #21
  br label %311

311:                                              ; preds = %308, %302
  %312 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.25, i32 noundef 4) #21
  %313 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 11), align 8, !tbaa !455
  %314 = load i32, ptr %240, align 8, !tbaa !256
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
  br i1 %323, label %325, label %324, !prof !478

324:                                              ; preds = %316
  tail call fastcc void @output_alternate_entry_point(ptr noundef %1, ptr noundef nonnull %0) #21
  br label %660

325:                                              ; preds = %316
  %326 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 11), align 8, !tbaa !455
  %327 = load i32, ptr %240, align 8, !tbaa !256
  %328 = sext i32 %327 to i64
  tail call void %326(ptr noundef %1, ptr noundef nonnull @.str.21, i64 noundef %328) #22
  br label %660

329:                                              ; preds = %22
  %330 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %331 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %332 = load ptr, ptr %331, align 8, !tbaa !256
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #23
  store ptr null, ptr @current_insn_predicate, align 8, !tbaa !240
  %333 = load i32, ptr %332, align 8
  %334 = trunc i32 %333 to i16
  switch i16 %334, label %382 [
    i16 24, label %656
    i16 25, label %656
    i16 20, label %335
    i16 21, label %335
  ], !prof !479

335:                                              ; preds = %329, %329
  %336 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 24), align 8, !tbaa !477
  %337 = load ptr, ptr @current_function_decl, align 8, !tbaa !240
  %338 = tail call ptr %336(ptr noundef %337) #22
  tail call void @switch_to_section(ptr noundef %338) #22
  tail call void @app_disable() #21
  %339 = getelementptr inbounds %struct.rtx_def, ptr %332, i64 0, i32 1
  %340 = load i32, ptr %332, align 8
  %341 = and i32 %340, 65535
  %342 = icmp eq i32 %341, 21
  %343 = zext i1 %342 to i64
  %344 = getelementptr inbounds [1 x %union.rtunion_def], ptr %339, i64 0, i64 %343
  %345 = load ptr, ptr %344, align 8, !tbaa !256
  %346 = load i32, ptr %345, align 8, !tbaa !263
  %347 = icmp sgt i32 %346, 0
  br i1 %347, label %348, label %380, !prof !480

348:                                              ; preds = %335
  %349 = zext nneg i32 %346 to i64
  br label %350

350:                                              ; preds = %348, %377
  %351 = phi i64 [ 0, %348 ], [ %378, %377 ]
  %352 = load i32, ptr %332, align 8
  %353 = and i32 %352, 65535
  %354 = icmp eq i32 %353, 20
  br i1 %354, label %355, label %363, !prof !481

355:                                              ; preds = %350
  %356 = load ptr, ptr %339, align 8, !tbaa !256
  %357 = getelementptr inbounds %struct.rtvec_def, ptr %356, i64 0, i32 1, i64 %351
  %358 = load ptr, ptr %357, align 8, !tbaa !240
  %359 = getelementptr inbounds %struct.rtx_def, ptr %358, i64 0, i32 1
  %360 = load ptr, ptr %359, align 8, !tbaa !256
  %361 = getelementptr inbounds %struct.rtx_def, ptr %360, i64 1, i32 1
  %362 = load i32, ptr %361, align 8, !tbaa !256
  tail call void @ix86_output_addr_vec_elt(ptr noundef %1, i32 noundef %362) #22
  br label %377

363:                                              ; preds = %350
  %364 = getelementptr inbounds %struct.rtx_def, ptr %332, i64 0, i32 1, i32 0, i32 0, i64 1
  %365 = load ptr, ptr %364, align 8, !tbaa !256
  %366 = getelementptr inbounds %struct.rtvec_def, ptr %365, i64 0, i32 1, i64 %351
  %367 = load ptr, ptr %366, align 8, !tbaa !240
  %368 = getelementptr inbounds %struct.rtx_def, ptr %367, i64 0, i32 1
  %369 = load ptr, ptr %368, align 8, !tbaa !256
  %370 = getelementptr inbounds %struct.rtx_def, ptr %369, i64 1, i32 1
  %371 = load i32, ptr %370, align 8, !tbaa !256
  %372 = load ptr, ptr %339, align 8, !tbaa !256
  %373 = getelementptr inbounds %struct.rtx_def, ptr %372, i64 0, i32 1
  %374 = load ptr, ptr %373, align 8, !tbaa !256
  %375 = getelementptr inbounds %struct.rtx_def, ptr %374, i64 1, i32 1
  %376 = load i32, ptr %375, align 8, !tbaa !256
  tail call void @ix86_output_addr_diff_elt(ptr noundef %1, i32 noundef %371, i32 noundef %376) #22
  br label %377

377:                                              ; preds = %355, %363
  %378 = add nuw nsw i64 %351, 1
  %379 = icmp eq i64 %378, %349
  br i1 %379, label %380, label %350, !prof !482, !llvm.loop !483

380:                                              ; preds = %377, %335
  %381 = tail call ptr @current_function_section() #22
  tail call void @switch_to_section(ptr noundef %381) #22
  br label %656

382:                                              ; preds = %329
  %383 = load ptr, ptr @current_function_decl, align 8, !tbaa !240
  %384 = getelementptr inbounds %struct.tree_decl_common, ptr %383, i64 0, i32 2
  %385 = load i64, ptr %384, align 8
  %386 = and i64 %385, 1024
  %387 = icmp eq i64 %386, 0
  br i1 %387, label %388, label %399, !prof !484

388:                                              ; preds = %382
  %389 = call fastcc zeroext i8 @notice_source_line(ptr noundef nonnull %0, ptr noundef nonnull %10) #21, !range !319
  %390 = icmp eq i8 %389, 0
  br i1 %390, label %399, label %391, !prof !485

391:                                              ; preds = %388
  %392 = load ptr, ptr @debug_hooks, align 8, !tbaa !240
  %393 = getelementptr inbounds %struct.gcc_debug_hooks, ptr %392, i64 0, i32 10
  %394 = load ptr, ptr %393, align 8, !tbaa !486
  %395 = load i32, ptr @last_linenum, align 4, !tbaa !244
  %396 = load ptr, ptr @last_filename, align 8, !tbaa !240
  %397 = load i32, ptr @last_discriminator, align 4, !tbaa !244
  %398 = load i8, ptr %10, align 1, !tbaa !256
  tail call void %394(i32 noundef %395, ptr noundef %396, i32 noundef %397, i8 noundef zeroext %398) #22
  br label %399

399:                                              ; preds = %391, %388, %382
  %400 = load i32, ptr %332, align 8
  %401 = and i32 %400, 65535
  %402 = icmp eq i32 %401, 16
  br i1 %402, label %403, label %430, !prof !487

403:                                              ; preds = %399
  %404 = getelementptr inbounds %struct.rtx_def, ptr %332, i64 0, i32 1
  %405 = load ptr, ptr %404, align 8, !tbaa !256
  %406 = load i8, ptr %405, align 1, !tbaa !256
  %407 = icmp eq i8 %406, 0
  br i1 %407, label %656, label %408

408:                                              ; preds = %403
  tail call void @app_enable() #21
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #23
  %409 = getelementptr inbounds %struct.rtx_def, ptr %332, i64 0, i32 1, i32 0, i32 0, i64 1
  %410 = load i32, ptr %409, align 8, !tbaa !256
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %11, i32 noundef %410) #22
  %411 = load ptr, ptr %11, align 8, !tbaa.struct !488
  %412 = getelementptr inbounds i8, ptr %11, i64 8
  %413 = load i32, ptr %412, align 8, !tbaa.struct !489
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #23
  %414 = load i8, ptr %411, align 1, !tbaa !256
  %415 = icmp ne i8 %414, 0
  %416 = icmp ne i32 %413, 0
  %417 = select i1 %415, i1 %416, i1 false
  br i1 %417, label %418, label %421

418:                                              ; preds = %408
  %419 = load ptr, ptr @asm_out_file, align 8, !tbaa !240
  %420 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %419, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.18, i32 noundef %413, ptr noundef nonnull %411) #21
  br label %421

421:                                              ; preds = %418, %408
  %422 = load ptr, ptr @asm_out_file, align 8, !tbaa !240
  %423 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %422, ptr noundef nonnull @.str.27, ptr noundef nonnull %405) #21
  %424 = load i8, ptr %411, align 1, !tbaa !256
  %425 = icmp ne i8 %424, 0
  %426 = select i1 %425, i1 %416, i1 false
  br i1 %426, label %427, label %656

427:                                              ; preds = %421
  %428 = load ptr, ptr @asm_out_file, align 8, !tbaa !240
  %429 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %428, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.18) #21
  br label %656

430:                                              ; preds = %399
  %431 = tail call i32 @asm_noperands(ptr noundef nonnull %332) #22
  %432 = icmp sgt i32 %431, -1
  br i1 %432, label %433, label %461, !prof !487

433:                                              ; preds = %430
  %434 = tail call i32 @asm_noperands(ptr noundef nonnull %332) #22
  %435 = zext i32 %434 to i64
  %436 = shl nuw nsw i64 %435, 3
  %437 = alloca i8, i64 %436, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #23
  %438 = call ptr @decode_asm_operands(ptr noundef nonnull %332, ptr noundef nonnull %437, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %12) #22
  store i32 %434, ptr @insn_noperands, align 4, !tbaa !244
  store ptr %0, ptr @this_is_asm_operands, align 8, !tbaa !240
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %13) #23
  %439 = load i32, ptr %12, align 4, !tbaa !244
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %13, i32 noundef %439) #22
  %440 = load ptr, ptr %13, align 8, !tbaa.struct !488
  %441 = getelementptr inbounds i8, ptr %13, i64 8
  %442 = load i32, ptr %441, align 8, !tbaa.struct !489
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %13) #23
  %443 = load i8, ptr %438, align 1, !tbaa !256
  %444 = icmp eq i8 %443, 0
  br i1 %444, label %455, label %445

445:                                              ; preds = %433
  call void @app_enable() #21
  %446 = icmp ne ptr %440, null
  %447 = icmp ne i32 %442, 0
  %448 = select i1 %446, i1 %447, i1 false
  br i1 %448, label %449, label %454

449:                                              ; preds = %445
  %450 = load ptr, ptr @asm_out_file, align 8, !tbaa !240
  %451 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %450, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.18, i32 noundef %442, ptr noundef nonnull %440) #21
  call void @output_asm_insn(ptr noundef nonnull %438, ptr noundef nonnull %437) #21
  %452 = load ptr, ptr @asm_out_file, align 8, !tbaa !240
  %453 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %452, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.18) #21
  br label %455

454:                                              ; preds = %445
  call void @output_asm_insn(ptr noundef nonnull %438, ptr noundef nonnull %437) #21
  br label %455

455:                                              ; preds = %454, %449, %433
  %456 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 38), align 8, !tbaa !490
  %457 = icmp eq ptr %456, null
  br i1 %457, label %460, label %458

458:                                              ; preds = %455
  %459 = load i32, ptr @insn_noperands, align 4, !tbaa !244
  call void %456(ptr noundef %1, ptr noundef nonnull %0, ptr noundef nonnull %437, i32 noundef %459) #22
  br label %460

460:                                              ; preds = %458, %455
  store ptr null, ptr @this_is_asm_operands, align 8, !tbaa !240
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #23
  br label %656

461:                                              ; preds = %430
  tail call void @app_disable() #21
  %462 = load i32, ptr %332, align 8
  %463 = and i32 %462, 65535
  %464 = icmp eq i32 %463, 5
  br i1 %464, label %465, label %514, !prof !487

465:                                              ; preds = %461
  store ptr %332, ptr @final_sequence, align 8, !tbaa !240
  %466 = tail call i32 @dwarf2out_do_frame() #22
  %467 = icmp eq i32 %466, 0
  %468 = getelementptr inbounds %struct.rtx_def, ptr %332, i64 0, i32 1
  %469 = load ptr, ptr %468, align 8, !tbaa !256
  br i1 %467, label %483, label %470

470:                                              ; preds = %465
  %471 = load i32, ptr %469, align 8, !tbaa !263
  %472 = icmp sgt i32 %471, 1
  br i1 %472, label %473, label %483

473:                                              ; preds = %470, %473
  %474 = phi i64 [ %478, %473 ], [ 1, %470 ]
  %475 = phi ptr [ %479, %473 ], [ %469, %470 ]
  %476 = getelementptr inbounds %struct.rtvec_def, ptr %475, i64 0, i32 1, i64 %474
  %477 = load ptr, ptr %476, align 8, !tbaa !240
  tail call void @dwarf2out_frame_debug(ptr noundef %477, i8 noundef zeroext 0) #22
  %478 = add nuw nsw i64 %474, 1
  %479 = load ptr, ptr %468, align 8, !tbaa !256
  %480 = load i32, ptr %479, align 8, !tbaa !263
  %481 = sext i32 %480 to i64
  %482 = icmp slt i64 %478, %481
  br i1 %482, label %473, label %483, !llvm.loop !491

483:                                              ; preds = %473, %465, %470
  %484 = phi ptr [ %469, %470 ], [ %469, %465 ], [ %479, %473 ]
  %485 = getelementptr inbounds %struct.rtx_def, ptr %332, i64 0, i32 1
  %486 = getelementptr inbounds %struct.rtvec_def, ptr %484, i64 0, i32 1
  %487 = load ptr, ptr %486, align 8, !tbaa !240
  %488 = tail call ptr @final_scan_insn(ptr noundef %487, ptr noundef %1, i32 poison, i32 poison, ptr noundef %4) #21
  %489 = load ptr, ptr %485, align 8, !tbaa !256
  %490 = getelementptr inbounds %struct.rtvec_def, ptr %489, i64 1
  %491 = load ptr, ptr %490, align 8, !tbaa !240
  %492 = icmp eq ptr %488, %491
  br i1 %492, label %493, label %496

493:                                              ; preds = %483
  %494 = load i32, ptr %489, align 8, !tbaa !263
  %495 = icmp sgt i32 %494, 1
  br i1 %495, label %497, label %659

496:                                              ; preds = %483
  store ptr null, ptr @final_sequence, align 8, !tbaa !240
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #23
  br label %663

497:                                              ; preds = %493, %508
  %498 = phi i64 [ %509, %508 ], [ 1, %493 ]
  %499 = phi ptr [ %510, %508 ], [ %489, %493 ]
  %500 = getelementptr inbounds %struct.rtvec_def, ptr %499, i64 0, i32 1, i64 %498
  %501 = load ptr, ptr %500, align 8, !tbaa !240
  %502 = getelementptr inbounds %struct.rtx_def, ptr %501, i64 0, i32 1, i32 0, i32 0, i64 2
  %503 = load ptr, ptr %502, align 8, !tbaa !256
  br label %504

504:                                              ; preds = %504, %497
  %505 = phi ptr [ %501, %497 ], [ %506, %504 ]
  %506 = tail call ptr @final_scan_insn(ptr noundef %505, ptr noundef %1, i32 poison, i32 poison, ptr noundef %4) #21
  %507 = icmp eq ptr %506, %503
  br i1 %507, label %508, label %504, !llvm.loop !492

508:                                              ; preds = %504
  %509 = add nuw nsw i64 %498, 1
  %510 = load ptr, ptr %485, align 8, !tbaa !256
  %511 = load i32, ptr %510, align 8, !tbaa !263
  %512 = sext i32 %511 to i64
  %513 = icmp slt i64 %509, %512
  br i1 %513, label %497, label %659, !llvm.loop !493

514:                                              ; preds = %461
  %515 = load ptr, ptr %331, align 8, !tbaa !256
  %516 = tail call fastcc i32 @recog_memoized(ptr noundef nonnull %0) #21
  tail call void @cleanup_subreg_operands(ptr noundef nonnull %0) #21
  %517 = load i32, ptr @flag_dump_rtl_in_asm, align 4, !tbaa !244
  %518 = icmp eq i32 %517, 0
  br i1 %518, label %522, label %519, !prof !484

519:                                              ; preds = %514
  store ptr @.str.18, ptr @print_rtx_head, align 8, !tbaa !240
  %520 = load ptr, ptr @asm_out_file, align 8, !tbaa !240
  %521 = tail call i32 @print_rtl_single(ptr noundef %520, ptr noundef nonnull %0) #22
  store ptr @.str.16, ptr @print_rtx_head, align 8, !tbaa !240
  br label %522

522:                                              ; preds = %519, %514
  %523 = tail call i32 @constrain_operands_cached(i32 noundef 1) #22
  %524 = icmp eq i32 %523, 0
  br i1 %524, label %525, label %526, !prof !487

525:                                              ; preds = %522
  tail call void @_fatal_insn_not_found(ptr noundef nonnull %0, ptr noundef nonnull @.str.13, i32 noundef 2588, ptr noundef nonnull @.str.11) #22
  br label %526

526:                                              ; preds = %525, %522
  %527 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 35), align 8, !tbaa !494
  %528 = tail call zeroext i8 %527() #22
  %529 = icmp eq i8 %528, 0
  br i1 %529, label %538, label %530, !prof !484

530:                                              ; preds = %526
  %531 = load ptr, ptr %331, align 8, !tbaa !256
  %532 = load i32, ptr %531, align 8
  %533 = and i32 %532, 65535
  %534 = icmp eq i32 %533, 14
  br i1 %534, label %535, label %538

535:                                              ; preds = %530
  %536 = getelementptr inbounds %struct.rtx_def, ptr %531, i64 0, i32 1
  %537 = load ptr, ptr %536, align 8, !tbaa !256
  store ptr %537, ptr @current_insn_predicate, align 8, !tbaa !240
  br label %538

538:                                              ; preds = %535, %530, %526
  store ptr %0, ptr @debug_insn, align 8, !tbaa !240
  store ptr %0, ptr @current_output_insn, align 8, !tbaa !240
  %539 = load i32, ptr %0, align 8
  %540 = and i32 %539, 65535
  %541 = icmp eq i32 %540, 10
  br i1 %541, label %542, label %546, !prof !495

542:                                              ; preds = %538
  %543 = tail call i32 @dwarf2out_do_frame() #22
  %544 = icmp eq i32 %543, 0
  br i1 %544, label %546, label %545, !prof !496

545:                                              ; preds = %542
  tail call void @dwarf2out_frame_debug(ptr noundef nonnull %0, i8 noundef zeroext 0) #22
  br label %546

546:                                              ; preds = %545, %542, %538
  %547 = tail call ptr @get_insn_template(i32 noundef %516, ptr noundef nonnull %0) #21
  %548 = icmp eq ptr %547, null
  br i1 %548, label %549, label %565, !prof !487

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
  %563 = load ptr, ptr %562, align 8, !tbaa !256
  %564 = icmp eq ptr %563, null
  br i1 %564, label %657, label %554, !llvm.loop !497

565:                                              ; preds = %546
  %566 = load i8, ptr %547, align 1, !tbaa !256
  %567 = icmp eq i8 %566, 35
  br i1 %567, label %568, label %580, !prof !487

568:                                              ; preds = %565
  %569 = getelementptr inbounds i8, ptr %547, i64 1
  %570 = load i8, ptr %569, align 1, !tbaa !256
  %571 = icmp eq i8 %570, 0
  br i1 %571, label %572, label %580

572:                                              ; preds = %568
  %573 = tail call ptr @try_split(ptr noundef %515, ptr noundef nonnull %0, i32 noundef 0) #22
  %574 = icmp eq ptr %573, %0
  br i1 %574, label %575, label %579

575:                                              ; preds = %572
  %576 = load ptr, ptr %331, align 8, !tbaa !256
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
  br i1 %583, label %584, label %604, !prof !495

584:                                              ; preds = %580
  %585 = tail call fastcc ptr @call_from_call_insn(ptr noundef nonnull %0) #21
  %586 = getelementptr inbounds %struct.rtx_def, ptr %585, i64 0, i32 1
  %587 = load ptr, ptr %586, align 8, !tbaa !256
  %588 = icmp eq ptr %587, null
  br i1 %588, label %604, label %589, !prof !498

589:                                              ; preds = %584
  %590 = load i32, ptr %587, align 8
  %591 = and i32 %590, 65535
  %592 = icmp eq i32 %591, 43
  br i1 %592, label %593, label %604, !prof !496

593:                                              ; preds = %589
  %594 = getelementptr inbounds %struct.rtx_def, ptr %587, i64 0, i32 1
  %595 = load ptr, ptr %594, align 8, !tbaa !256
  %596 = load i32, ptr %595, align 8
  %597 = and i32 %596, 67174399
  %598 = icmp eq i32 %597, 45
  br i1 %598, label %599, label %604, !prof !499

599:                                              ; preds = %593
  %600 = getelementptr inbounds %struct.rtx_def, ptr %595, i64 0, i32 1, i32 0, i32 0, i64 2
  %601 = load ptr, ptr %600, align 8, !tbaa !256
  %602 = icmp eq ptr %601, null
  br i1 %602, label %604, label %603, !prof !500

603:                                              ; preds = %599
  tail call void @assemble_external(ptr noundef nonnull %601) #22
  br label %604

604:                                              ; preds = %584, %589, %593, %603, %599, %580
  tail call void @output_asm_insn(ptr noundef nonnull %547, ptr noundef nonnull @recog_data) #21
  %605 = load i32, ptr @flag_enable_icf_debug, align 4, !tbaa !244
  %606 = icmp eq i32 %605, 0
  br i1 %606, label %642, label %607, !prof !484

607:                                              ; preds = %604
  %608 = load i32, ptr %0, align 8
  %609 = and i32 %608, 65535
  %610 = icmp eq i32 %609, 10
  br i1 %610, label %611, label %642

611:                                              ; preds = %607
  %612 = tail call fastcc ptr @call_from_call_insn(ptr noundef nonnull %0) #21
  %613 = getelementptr inbounds %struct.rtx_def, ptr %612, i64 0, i32 1
  %614 = load ptr, ptr %613, align 8, !tbaa !256
  %615 = icmp eq ptr %614, null
  br i1 %615, label %642, label %616

616:                                              ; preds = %611
  %617 = load i32, ptr %614, align 8
  %618 = and i32 %617, 65535
  %619 = icmp eq i32 %618, 43
  br i1 %619, label %620, label %642

620:                                              ; preds = %616
  %621 = getelementptr inbounds %struct.rtx_def, ptr %614, i64 0, i32 1
  %622 = load ptr, ptr %621, align 8, !tbaa !256
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
  %631 = load ptr, ptr %630, align 8, !tbaa !256
  %632 = icmp eq ptr %631, null
  br i1 %632, label %642, label %633

633:                                              ; preds = %629
  %634 = load ptr, ptr @debug_hooks, align 8, !tbaa !240
  %635 = getelementptr inbounds %struct.gcc_debug_hooks, ptr %634, i64 0, i32 26
  %636 = load ptr, ptr %635, align 8, !tbaa !501
  tail call void %636(ptr noundef nonnull %631) #22
  br label %642

637:                                              ; preds = %620
  %638 = load ptr, ptr @debug_hooks, align 8, !tbaa !240
  %639 = getelementptr inbounds %struct.gcc_debug_hooks, ptr %638, i64 0, i32 29
  %640 = load ptr, ptr %639, align 8, !tbaa !502
  %641 = load i32, ptr %330, align 8, !tbaa !256
  tail call void %640(i32 noundef %641) #22
  br label %642

642:                                              ; preds = %626, %611, %616, %637, %633, %629, %607, %604
  %643 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 38), align 8, !tbaa !490
  %644 = icmp eq ptr %643, null
  br i1 %644, label %648, label %645, !prof !484

645:                                              ; preds = %642
  %646 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !503
  %647 = sext i8 %646 to i32
  tail call void %643(ptr noundef %1, ptr noundef nonnull %0, ptr noundef nonnull @recog_data, i32 noundef %647) #22
  br label %648

648:                                              ; preds = %645, %642
  %649 = load ptr, ptr @final_sequence, align 8, !tbaa !240
  %650 = icmp eq ptr %649, null
  br i1 %650, label %651, label %655, !prof !484

651:                                              ; preds = %648
  %652 = tail call i32 @dwarf2out_do_frame() #22
  %653 = icmp eq i32 %652, 0
  br i1 %653, label %655, label %654, !prof !484

654:                                              ; preds = %651
  tail call void @dwarf2out_frame_debug(ptr noundef nonnull %0, i8 noundef zeroext 1) #22
  br label %655

655:                                              ; preds = %654, %651, %648
  store ptr null, ptr @debug_insn, align 8, !tbaa !240
  store ptr null, ptr @current_output_insn, align 8, !tbaa !240
  br label %656

656:                                              ; preds = %380, %460, %655, %329, %329, %421, %427, %403
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #23
  br label %660

657:                                              ; preds = %561, %579
  %658 = phi ptr [ %573, %579 ], [ null, %561 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #23
  br label %663

659:                                              ; preds = %508, %493
  store ptr null, ptr @final_sequence, align 8, !tbaa !240
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #23
  br label %660

660:                                              ; preds = %659, %656, %156, %161, %324, %325, %235, %238, %44, %64, %70, %76, %95, %97, %24, %219, %234, %89, %87, %116, %114, %152, %199, %217, %230, %224, %311
  %661 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %662 = load ptr, ptr %661, align 8, !tbaa !256
  br label %663

663:                                              ; preds = %496, %657, %660, %19
  %664 = phi ptr [ %21, %19 ], [ %662, %660 ], [ %658, %657 ], [ %488, %496 ]
  ret ptr %664
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @get_insn_template(i32 noundef %0, ptr noundef %1) local_unnamed_addr #6 !prof !505 {
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %3, i32 7
  %5 = load i8, ptr %4, align 1, !tbaa !506
  switch i8 %5, label %23 [
    i8 1, label %6
    i8 2, label %9
    i8 3, label %16
  ], !prof !508

6:                                                ; preds = %2
  %7 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %3, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !256
  br label %24

9:                                                ; preds = %2
  %10 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %3, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !256
  %12 = load i32, ptr @which_alternative, align 4, !tbaa !244
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds ptr, ptr %11, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !240
  br label %24

16:                                               ; preds = %2
  %17 = icmp eq ptr %1, null
  br i1 %17, label %18, label %19, !prof !509

18:                                               ; preds = %16
  tail call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 1736, ptr noundef nonnull @.str.11) #22
  br label %19

19:                                               ; preds = %16, %18
  %20 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %3, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !256
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
define internal fastcc void @profile_after_prologue(ptr noundef %0) unnamed_addr #6 !prof !246 !PGOFuncName !510 {
  %2 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 35), align 1, !tbaa !511
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %5, label %4, !prof !290

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
define internal fastcc void @output_alternate_entry_point(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !prof !248 !PGOFuncName !520 {
  %3 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1, i32 1, i32 0, i32 0, i64 1
  %4 = load ptr, ptr %3, align 8, !tbaa !256
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
  %15 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 6), align 8, !tbaa !521
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
define internal fastcc noundef zeroext i8 @notice_source_line(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #6 !prof !505 !PGOFuncName !522 {
  %3 = load ptr, ptr @override_filename, align 8, !tbaa !240
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !484

5:                                                ; preds = %2
  %6 = load i32, ptr @override_linenum, align 4, !tbaa !244
  br label %11

7:                                                ; preds = %2
  %8 = tail call ptr @insn_file(ptr noundef %0) #22
  %9 = tail call i32 @insn_line(ptr noundef %0) #22
  %10 = icmp eq ptr %8, null
  br i1 %10, label %28, label %11, !prof !523

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
  br i1 %21, label %28, label %22, !prof !524

22:                                               ; preds = %11
  store i1 false, ptr @force_source_line, align 1
  store ptr %13, ptr @last_filename, align 8, !tbaa !240
  store i32 %12, ptr @last_linenum, align 4, !tbaa !244
  %23 = load i32, ptr @discriminator, align 4, !tbaa !244
  store i32 %23, ptr @last_discriminator, align 4, !tbaa !244
  store i8 1, ptr %1, align 1, !tbaa !256
  %24 = load i32, ptr @high_block_linenum, align 4
  %25 = tail call i32 @llvm.smax.i32(i32 %12, i32 %24)
  store i32 %25, ptr @high_block_linenum, align 4, !tbaa !244
  %26 = load i32, ptr @high_function_linenum, align 4
  %27 = tail call i32 @llvm.smax.i32(i32 %12, i32 %26)
  store i32 %27, ptr @high_function_linenum, align 4, !tbaa !244
  br label %28

28:                                               ; preds = %11, %7, %22
  %29 = phi i8 [ 1, %22 ], [ 0, %7 ], [ 0, %11 ]
  ret i8 %29
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @output_asm_insn(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #6 !prof !525 {
  %3 = alloca [30 x i32], align 16
  %4 = alloca [30 x i8], align 16
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(i64 30, ptr nonnull %4) #23
  %7 = load i8, ptr %0, align 1, !tbaa !256
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %232, label %9, !prof !526

9:                                                ; preds = %2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(30) %4, i8 0, i64 30, i1 false)
  %10 = load ptr, ptr @asm_out_file, align 8, !tbaa !240
  %11 = tail call i32 @putc(i32 noundef 9, ptr noundef %10) #21
  %12 = load i8, ptr %0, align 1, !tbaa !256
  %13 = icmp eq i8 %12, 37
  br i1 %13, label %14, label %24, !prof !527

14:                                               ; preds = %9
  %15 = getelementptr inbounds i8, ptr %0, i64 1
  %16 = load i8, ptr %15, align 1, !tbaa !256
  %17 = icmp eq i8 %16, 118
  br i1 %17, label %18, label %24, !prof !528

18:                                               ; preds = %14
  %19 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !244
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
  %31 = load i8, ptr %29, align 1, !tbaa !256
  %32 = sext i8 %31 to i32
  switch i8 %31, label %214 [
    i8 0, label %221
    i8 10, label %33
    i8 123, label %61
    i8 124, label %92
    i8 125, label %105
    i8 37, label %110
  ], !prof !529

33:                                               ; preds = %26
  %34 = load i32, ptr @flag_verbose_asm, align 4, !tbaa !244
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %37, label %36, !prof !530

36:                                               ; preds = %33
  call fastcc void @output_asm_operand_names(ptr noundef %1, ptr noundef nonnull %3, i32 noundef %27) #21
  br label %37

37:                                               ; preds = %36, %33
  %38 = load i32, ptr @flag_print_asm_name, align 4, !tbaa !244
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %41, label %40, !prof !530

40:                                               ; preds = %37
  tail call fastcc void @output_asm_name() #21
  br label %41

41:                                               ; preds = %40, %37
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(30) %4, i8 0, i64 30, i1 false)
  %42 = load ptr, ptr @asm_out_file, align 8, !tbaa !240
  %43 = tail call i32 @putc(i32 noundef %32, ptr noundef %42) #21
  br label %44

44:                                               ; preds = %47, %41
  %45 = phi ptr [ %30, %41 ], [ %50, %47 ]
  %46 = load i8, ptr %45, align 1, !tbaa !256
  switch i8 %46, label %217 [
    i8 9, label %47
    i8 37, label %51
  ], !prof !531

47:                                               ; preds = %44
  %48 = load ptr, ptr @asm_out_file, align 8, !tbaa !240
  %49 = tail call i32 @putc(i32 noundef 9, ptr noundef %48) #21
  %50 = getelementptr inbounds i8, ptr %45, i64 1
  br label %44, !llvm.loop !532

51:                                               ; preds = %44
  %52 = getelementptr inbounds i8, ptr %45, i64 1
  %53 = load i8, ptr %52, align 1, !tbaa !256
  %54 = icmp eq i8 %53, 118
  br i1 %54, label %55, label %217

55:                                               ; preds = %51
  %56 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !244
  %57 = and i32 %56, 32
  %58 = icmp eq i32 %57, 0
  %59 = getelementptr inbounds i8, ptr %45, i64 2
  %60 = select i1 %58, ptr %59, ptr %52
  br label %217

61:                                               ; preds = %26
  %62 = icmp eq i32 %28, 0
  br i1 %62, label %64, label %63, !prof !533

63:                                               ; preds = %61
  tail call void (ptr, ...) @output_operand_lossage(ptr noundef nonnull @.str.42) #21
  br label %64

64:                                               ; preds = %61, %63
  %65 = load i32, ptr @dialect_number, align 4, !tbaa !244
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %87, !prof !534

67:                                               ; preds = %64, %83
  %68 = phi ptr [ %84, %83 ], [ %30, %64 ]
  %69 = phi i32 [ %85, %83 ], [ 0, %64 ]
  br label %70

70:                                               ; preds = %67, %73
  %71 = phi ptr [ %74, %73 ], [ %68, %67 ]
  %72 = load i8, ptr %71, align 1, !tbaa !256
  switch i8 %72, label %73 [
    i8 0, label %78
    i8 125, label %78
  ]

73:                                               ; preds = %70
  %74 = getelementptr inbounds i8, ptr %71, i64 1
  %75 = icmp eq i8 %72, 124
  br i1 %75, label %76, label %70, !llvm.loop !535

76:                                               ; preds = %73
  %77 = load i8, ptr %74, align 1, !tbaa !256
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
  br i1 %86, label %87, label %67, !prof !424, !llvm.loop !536

87:                                               ; preds = %83, %78, %64
  %88 = phi ptr [ %30, %64 ], [ %80, %78 ], [ %84, %83 ]
  %89 = load i8, ptr %88, align 1, !tbaa !256
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %91, label %217, !prof !537

91:                                               ; preds = %87
  tail call void (ptr, ...) @output_operand_lossage(ptr noundef nonnull @.str.43) #21
  br label %217

92:                                               ; preds = %26
  %93 = icmp eq i32 %28, 0
  br i1 %93, label %102, label %94, !prof !538

94:                                               ; preds = %92, %99
  %95 = phi ptr [ %100, %99 ], [ %30, %92 ]
  %96 = load i8, ptr %95, align 1, !tbaa !256
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %98, label %99, !prof !539

98:                                               ; preds = %94
  tail call void (ptr, ...) @output_operand_lossage(ptr noundef nonnull @.str.43) #21
  br label %217

99:                                               ; preds = %94
  %100 = getelementptr inbounds i8, ptr %95, i64 1
  %101 = icmp eq i8 %96, 125
  br i1 %101, label %217, label %94, !prof !540, !llvm.loop !541

102:                                              ; preds = %92
  %103 = load ptr, ptr @asm_out_file, align 8, !tbaa !240
  %104 = tail call i32 @putc(i32 noundef %32, ptr noundef %103) #21
  br label %217

105:                                              ; preds = %26
  %106 = icmp eq i32 %28, 0
  br i1 %106, label %107, label %217, !prof !542

107:                                              ; preds = %105
  %108 = load ptr, ptr @asm_out_file, align 8, !tbaa !240
  %109 = tail call i32 @putc(i32 noundef %32, ptr noundef %108) #21
  br label %217

110:                                              ; preds = %26
  %111 = load i8, ptr %30, align 1, !tbaa !256
  %112 = sext i8 %111 to i32
  switch i8 %111, label %122 [
    i8 37, label %113
    i8 61, label %117
  ], !prof !543

113:                                              ; preds = %110
  %114 = getelementptr inbounds i8, ptr %29, i64 2
  %115 = load ptr, ptr @asm_out_file, align 8, !tbaa !240
  %116 = tail call i32 @putc(i32 noundef %32, ptr noundef %115) #21
  br label %217

117:                                              ; preds = %110
  %118 = getelementptr inbounds i8, ptr %29, i64 2
  %119 = load ptr, ptr @asm_out_file, align 8, !tbaa !240
  %120 = load i32, ptr @insn_counter, align 4, !tbaa !244
  %121 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %119, ptr noundef nonnull @.str.44, i32 noundef %120) #21
  br label %217

122:                                              ; preds = %110
  %123 = and i32 %112, 255
  %124 = zext nneg i32 %123 to i64
  %125 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %124
  %126 = load i16, ptr %125, align 2, !tbaa !544
  %127 = zext i16 %126 to i32
  %128 = and i32 %127, 136
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %183, label %130, !prof !545

130:                                              ; preds = %122
  %131 = getelementptr inbounds i8, ptr %29, i64 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #23
  %132 = call i64 @strtoul(ptr noundef nonnull %131, ptr noundef nonnull %5, i32 noundef 10) #21
  %133 = load ptr, ptr %5, align 8, !tbaa !240
  %134 = icmp eq ptr %133, %131
  br i1 %134, label %135, label %136, !prof !546

135:                                              ; preds = %130
  tail call void (ptr, ...) @output_operand_lossage(ptr noundef nonnull @.str.45) #21
  br label %172

136:                                              ; preds = %130
  %137 = load ptr, ptr @this_is_asm_operands, align 8, !tbaa !240
  %138 = icmp eq ptr %137, null
  br i1 %138, label %144, label %139, !prof !547

139:                                              ; preds = %136
  %140 = load i32, ptr @insn_noperands, align 4, !tbaa !244
  %141 = zext i32 %140 to i64
  %142 = icmp ult i64 %132, %141
  br i1 %142, label %144, label %143

143:                                              ; preds = %139
  tail call void (ptr, ...) @output_operand_lossage(ptr noundef nonnull @.str.46) #21
  br label %172

144:                                              ; preds = %139, %136
  %145 = getelementptr inbounds ptr, ptr %1, i64 %132
  %146 = load ptr, ptr %145, align 8, !tbaa !240
  switch i8 %111, label %171 [
    i8 108, label %147
    i8 97, label %148
    i8 99, label %149
    i8 110, label %157
  ], !prof !548

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
  %153 = load ptr, ptr @asm_out_file, align 8, !tbaa !240
  %154 = load ptr, ptr %145, align 8, !tbaa !240
  tail call void @output_addr_const(ptr noundef %153, ptr noundef %154) #21
  br label %172

155:                                              ; preds = %149
  %156 = load ptr, ptr %145, align 8, !tbaa !240
  tail call fastcc void @output_operand(ptr noundef %156, i32 noundef 99) #21
  br label %172

157:                                              ; preds = %144
  %158 = load i32, ptr %146, align 8
  %159 = and i32 %158, 65535
  %160 = icmp eq i32 %159, 30
  %161 = load ptr, ptr @asm_out_file, align 8, !tbaa !240
  br i1 %160, label %162, label %167

162:                                              ; preds = %157
  %163 = getelementptr inbounds %struct.rtx_def, ptr %146, i64 0, i32 1
  %164 = load i64, ptr %163, align 8, !tbaa !256
  %165 = sub nsw i64 0, %164
  %166 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %161, ptr noundef nonnull @.str.47, i64 noundef %165) #21
  br label %172

167:                                              ; preds = %157
  %168 = tail call i32 @putc(i32 noundef 45, ptr noundef %161) #21
  %169 = load ptr, ptr @asm_out_file, align 8, !tbaa !240
  %170 = load ptr, ptr %145, align 8, !tbaa !240
  tail call void @output_addr_const(ptr noundef %169, ptr noundef %170) #21
  br label %172

171:                                              ; preds = %144
  tail call fastcc void @output_operand(ptr noundef %146, i32 noundef %112) #21
  br label %172

172:                                              ; preds = %143, %148, %171, %167, %162, %152, %155, %147, %135
  %173 = getelementptr inbounds [30 x i8], ptr %4, i64 0, i64 %132
  %174 = load i8, ptr %173, align 1, !tbaa !256
  %175 = icmp eq i8 %174, 0
  br i1 %175, label %176, label %181, !prof !549

176:                                              ; preds = %172
  %177 = trunc i64 %132 to i32
  %178 = add nsw i32 %27, 1
  %179 = sext i32 %27 to i64
  %180 = getelementptr inbounds [30 x i32], ptr %3, i64 0, i64 %179
  store i32 %177, ptr %180, align 4, !tbaa !244
  br label %181

181:                                              ; preds = %176, %172
  %182 = phi i32 [ %27, %172 ], [ %178, %176 ]
  store i8 1, ptr %173, align 1, !tbaa !256
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #23
  br label %217

183:                                              ; preds = %122
  %184 = and i32 %127, 4
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %210, label %186, !prof !550

186:                                              ; preds = %183
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #23
  %187 = call i64 @strtoul(ptr noundef nonnull %30, ptr noundef nonnull %6, i32 noundef 10) #21
  %188 = load ptr, ptr @this_is_asm_operands, align 8, !tbaa !240
  %189 = icmp eq ptr %188, null
  br i1 %189, label %195, label %190, !prof !551

190:                                              ; preds = %186
  %191 = load i32, ptr @insn_noperands, align 4, !tbaa !244
  %192 = zext i32 %191 to i64
  %193 = icmp ult i64 %187, %192
  br i1 %193, label %195, label %194

194:                                              ; preds = %190
  tail call void (ptr, ...) @output_operand_lossage(ptr noundef nonnull @.str.46) #21
  br label %198

195:                                              ; preds = %190, %186
  %196 = getelementptr inbounds ptr, ptr %1, i64 %187
  %197 = load ptr, ptr %196, align 8, !tbaa !240
  tail call fastcc void @output_operand(ptr noundef %197, i32 noundef 0) #21
  br label %198

198:                                              ; preds = %195, %194
  %199 = getelementptr inbounds [30 x i8], ptr %4, i64 0, i64 %187
  %200 = load i8, ptr %199, align 1, !tbaa !256
  %201 = icmp eq i8 %200, 0
  br i1 %201, label %202, label %207, !prof !552

202:                                              ; preds = %198
  %203 = trunc i64 %187 to i32
  %204 = add nsw i32 %27, 1
  %205 = sext i32 %27 to i64
  %206 = getelementptr inbounds [30 x i32], ptr %3, i64 0, i64 %205
  store i32 %203, ptr %206, align 4, !tbaa !244
  br label %207

207:                                              ; preds = %202, %198
  %208 = phi i32 [ %27, %198 ], [ %204, %202 ]
  store i8 1, ptr %199, align 1, !tbaa !256
  %209 = load ptr, ptr %6, align 8, !tbaa !240
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #23
  br label %217

210:                                              ; preds = %183
  switch i8 %111, label %213 [
    i8 42, label %211
    i8 43, label %211
    i8 38, label %211
    i8 59, label %211
  ], !prof !553

211:                                              ; preds = %210, %210, %210, %210
  %212 = getelementptr inbounds i8, ptr %29, i64 2
  tail call fastcc void @output_operand(ptr noundef null, i32 noundef %112) #21
  br label %217

213:                                              ; preds = %210
  tail call void (ptr, ...) @output_operand_lossage(ptr noundef nonnull @.str.48) #21
  br label %217

214:                                              ; preds = %26
  %215 = load ptr, ptr @asm_out_file, align 8, !tbaa !240
  %216 = tail call i32 @putc(i32 noundef %32, ptr noundef %215) #21
  br label %217

217:                                              ; preds = %99, %44, %55, %105, %107, %98, %87, %91, %113, %181, %211, %213, %207, %117, %102, %51, %214
  %218 = phi i32 [ %27, %214 ], [ %27, %113 ], [ %27, %117 ], [ %182, %181 ], [ %208, %207 ], [ %27, %211 ], [ %27, %213 ], [ %27, %102 ], [ 0, %51 ], [ %27, %91 ], [ %27, %87 ], [ %27, %98 ], [ %27, %107 ], [ %27, %105 ], [ 0, %55 ], [ 0, %44 ], [ %27, %99 ]
  %219 = phi i32 [ %28, %214 ], [ %28, %113 ], [ %28, %117 ], [ %28, %181 ], [ %28, %207 ], [ %28, %211 ], [ %28, %213 ], [ 0, %102 ], [ %28, %51 ], [ 1, %91 ], [ 1, %87 ], [ 0, %98 ], [ 0, %107 ], [ 0, %105 ], [ %28, %55 ], [ %28, %44 ], [ 0, %99 ]
  %220 = phi ptr [ %30, %214 ], [ %114, %113 ], [ %118, %117 ], [ %133, %181 ], [ %209, %207 ], [ %212, %211 ], [ %30, %213 ], [ %30, %102 ], [ %45, %51 ], [ %88, %91 ], [ %88, %87 ], [ %95, %98 ], [ %30, %107 ], [ %30, %105 ], [ %60, %55 ], [ %45, %44 ], [ %100, %99 ]
  br label %26, !llvm.loop !554

221:                                              ; preds = %26
  %222 = load i32, ptr @flag_verbose_asm, align 4, !tbaa !244
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %225, label %224, !prof !555

224:                                              ; preds = %221
  call fastcc void @output_asm_operand_names(ptr noundef %1, ptr noundef nonnull %3, i32 noundef %27) #21
  br label %225

225:                                              ; preds = %224, %221
  %226 = load i32, ptr @flag_print_asm_name, align 4, !tbaa !244
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %229, label %228, !prof !555

228:                                              ; preds = %225
  tail call fastcc void @output_asm_name() #21
  br label %229

229:                                              ; preds = %228, %225
  %230 = load ptr, ptr @asm_out_file, align 8, !tbaa !240
  %231 = tail call i32 @putc(i32 noundef 10, ptr noundef %230) #21
  br label %232

232:                                              ; preds = %2, %229
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %3) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @recog_memoized(ptr noundef %0) unnamed_addr #6 !prof !505 !PGOFuncName !556 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !256
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %9, !prof !487

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !256
  %8 = tail call i32 @recog(ptr noundef %7, ptr noundef nonnull %0, ptr noundef null) #22
  store i32 %8, ptr %2, align 8, !tbaa !256
  br label %9

9:                                                ; preds = %5, %1
  %10 = phi i32 [ %8, %5 ], [ %3, %1 ]
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @cleanup_subreg_operands(ptr noundef %0) local_unnamed_addr #6 !prof !557 {
  %2 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #23
  store i8 0, ptr %2, align 1, !tbaa !256
  tail call void @extract_insn_cached(ptr noundef %0) #22
  %3 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !503
  %4 = icmp sgt i8 %3, 0
  br i1 %4, label %8, label %5, !prof !558

5:                                                ; preds = %26, %1
  %6 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 8), align 1, !tbaa !559
  %7 = icmp sgt i8 %6, 0
  br i1 %7, label %31, label %49, !prof !560

8:                                                ; preds = %1, %26
  %9 = phi i64 [ %27, %26 ], [ 0, %1 ]
  %10 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !240
  %12 = load ptr, ptr %11, align 8, !tbaa !240
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %13, 65535
  %15 = icmp eq i32 %14, 39
  br i1 %15, label %16, label %19, !prof !561

16:                                               ; preds = %8
  %17 = call ptr @alter_subreg(ptr noundef nonnull %11) #21
  %18 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %9
  store ptr %17, ptr %18, align 8, !tbaa !240
  store i8 1, ptr %2, align 1, !tbaa !256
  br label %26

19:                                               ; preds = %8
  %20 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %9
  %21 = load ptr, ptr %20, align 8, !tbaa !240
  %22 = load i32, ptr %21, align 8
  %23 = trunc i32 %22 to i16
  switch i16 %23, label %26 [
    i16 49, label %24
    i16 52, label %24
    i16 43, label %24
  ], !prof !562

24:                                               ; preds = %19, %19, %19
  %25 = call fastcc ptr @walk_alter_subreg(ptr noundef nonnull %11, ptr noundef nonnull %2) #21
  store ptr %25, ptr %20, align 8, !tbaa !240
  br label %26

26:                                               ; preds = %19, %16, %24
  %27 = add nuw nsw i64 %9, 1
  %28 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !503
  %29 = sext i8 %28 to i64
  %30 = icmp slt i64 %27, %29
  br i1 %30, label %8, label %5, !prof !563, !llvm.loop !564

31:                                               ; preds = %5, %44
  %32 = phi i64 [ %45, %44 ], [ 0, %5 ]
  %33 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 5, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !240
  %35 = load ptr, ptr %34, align 8, !tbaa !240
  %36 = load i32, ptr %35, align 8
  %37 = trunc i32 %36 to i16
  switch i16 %37, label %44 [
    i16 39, label %38
    i16 49, label %41
    i16 52, label %41
    i16 43, label %41
  ], !prof !565

38:                                               ; preds = %31
  %39 = call ptr @alter_subreg(ptr noundef nonnull %34) #21
  %40 = load ptr, ptr %33, align 8, !tbaa !240
  store ptr %39, ptr %40, align 8, !tbaa !240
  store i8 1, ptr %2, align 1, !tbaa !256
  br label %44

41:                                               ; preds = %31, %31, %31
  %42 = call fastcc ptr @walk_alter_subreg(ptr noundef nonnull %34, ptr noundef nonnull %2) #21
  %43 = load ptr, ptr %33, align 8, !tbaa !240
  store ptr %42, ptr %43, align 8, !tbaa !240
  br label %44

44:                                               ; preds = %31, %38, %41
  %45 = add nuw nsw i64 %32, 1
  %46 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 8), align 1, !tbaa !559
  %47 = sext i8 %46 to i64
  %48 = icmp slt i64 %45, %47
  br i1 %48, label %31, label %49, !prof !566, !llvm.loop !567

49:                                               ; preds = %44, %5
  %50 = load i8, ptr %2, align 1, !tbaa !256
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %54, label %52, !prof !568

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
define internal fastcc noundef ptr @call_from_call_insn(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !569 !PGOFuncName !570 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 10
  br i1 %4, label %6, label %5, !prof !496

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 1783, ptr noundef nonnull @.str.11) #22
  br label %6

6:                                                ; preds = %1, %5
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %8 = load ptr, ptr %7, align 8, !tbaa !256
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 26
  br i1 %11, label %31, label %12, !prof !571

12:                                               ; preds = %6, %25
  %13 = phi i32 [ %28, %25 ], [ %9, %6 ]
  %14 = phi ptr [ %27, %25 ], [ %8, %6 ]
  %15 = trunc i32 %13 to i16
  switch i16 %15, label %16 [
    i16 14, label %17
    i16 15, label %19
    i16 23, label %23
  ], !prof !572

16:                                               ; preds = %12
  tail call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 1791, ptr noundef nonnull @.str.11) #22
  br label %17

17:                                               ; preds = %12, %16
  %18 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1, i32 0, i32 0, i64 1
  br label %25

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !256
  %22 = getelementptr inbounds %struct.rtvec_def, ptr %21, i64 0, i32 1
  br label %25

23:                                               ; preds = %12
  %24 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1, i32 0, i32 0, i64 1
  br label %25

25:                                               ; preds = %23, %19, %17
  %26 = phi ptr [ %18, %17 ], [ %24, %23 ], [ %22, %19 ]
  %27 = load ptr, ptr %26, align 8, !tbaa !256
  %28 = load i32, ptr %27, align 8
  %29 = and i32 %28, 65535
  %30 = icmp eq i32 %29, 26
  br i1 %30, label %31, label %12, !prof !573, !llvm.loop !574

31:                                               ; preds = %25, %6
  %32 = phi ptr [ %8, %6 ], [ %27, %25 ]
  ret ptr %32
}

; Function Attrs: optsize
declare void @assemble_external(ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @profile_function(ptr noundef %0) unnamed_addr #6 !prof !248 !PGOFuncName !575 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !240
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 20
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 67108864
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 2), align 8, !tbaa !576
  %9 = load ptr, ptr @current_function_decl, align 8, !tbaa !240
  %10 = getelementptr inbounds %struct.tree_common, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !256
  %12 = tail call ptr %8(ptr noundef %11, i32 noundef 1) #22
  %13 = load ptr, ptr @cfun, align 8, !tbaa !240
  br label %14

14:                                               ; preds = %7, %1
  %15 = phi ptr [ %13, %7 ], [ %2, %1 ]
  %16 = phi ptr [ %12, %7 ], [ null, %1 ]
  %17 = getelementptr inbounds %struct.function, ptr %15, i64 0, i32 7
  %18 = load ptr, ptr %17, align 8, !tbaa !577
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %14
  %21 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 21), align 8, !tbaa !578
  %22 = load ptr, ptr @current_function_decl, align 8, !tbaa !240
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
  %36 = load ptr, ptr %35, align 8, !tbaa !240
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
  %47 = load ptr, ptr %46, align 8, !tbaa !240
  tail call void (ptr, ptr, ...) @asm_fprintf(ptr noundef %0, ptr noundef nonnull @.str.30, ptr noundef %47) #21
  br label %48

48:                                               ; preds = %39, %43
  %49 = load ptr, ptr @cfun, align 8, !tbaa !240
  %50 = getelementptr inbounds %struct.function, ptr %49, i64 0, i32 14
  %51 = load i32, ptr %50, align 4, !tbaa !579
  tail call void @x86_function_profiler(ptr noundef %0, i32 noundef %51) #22
  %52 = load i32, ptr %25, align 8
  %53 = and i32 %52, 65535
  %54 = icmp eq i32 %53, 37
  br i1 %54, label %55, label %64

55:                                               ; preds = %48
  %56 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %25) #21
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds [53 x ptr], ptr @reg_names, i64 0, i64 %57
  %59 = load ptr, ptr %58, align 8, !tbaa !240
  tail call void (ptr, ptr, ...) @asm_fprintf(ptr noundef %0, ptr noundef nonnull @.str.31, ptr noundef %59) #21
  br label %64

60:                                               ; preds = %37
  %61 = load ptr, ptr @cfun, align 8, !tbaa !240
  %62 = getelementptr inbounds %struct.function, ptr %61, i64 0, i32 14
  %63 = load i32, ptr %62, align 4, !tbaa !579
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
  %73 = load ptr, ptr %72, align 8, !tbaa !240
  tail call void (ptr, ptr, ...) @asm_fprintf(ptr noundef %0, ptr noundef nonnull @.str.31, ptr noundef %73) #21
  br label %74

74:                                               ; preds = %69, %65, %64
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @asm_fprintf(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ...) local_unnamed_addr #6 !prof !580 {
  %3 = alloca [10 x i8], align 1
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #23
  call void @llvm.va_start(ptr nonnull %4)
  store i8 37, ptr %3, align 1, !tbaa !256
  %5 = getelementptr inbounds [10 x i8], ptr %3, i64 0, i64 1
  br label %6

6:                                                ; preds = %209, %2
  %7 = phi ptr [ %1, %2 ], [ %210, %209 ]
  %8 = getelementptr inbounds i8, ptr %7, i64 1
  %9 = load i8, ptr %7, align 1, !tbaa !256
  switch i8 %9, label %206 [
    i8 0, label %211
    i8 123, label %10
    i8 124, label %33
    i8 125, label %209
    i8 37, label %40
  ], !prof !581

10:                                               ; preds = %6
  %11 = load i32, ptr @dialect_number, align 4, !tbaa !244
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %209

13:                                               ; preds = %10, %25
  %14 = phi i32 [ %31, %25 ], [ 0, %10 ]
  %15 = phi ptr [ %30, %25 ], [ %8, %10 ]
  br label %16

16:                                               ; preds = %13, %20
  %17 = phi ptr [ %21, %20 ], [ %15, %13 ]
  %18 = load i8, ptr %17, align 1, !tbaa !256
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds i8, ptr %17, i64 1
  %22 = icmp eq i8 %18, 124
  br i1 %22, label %23, label %16, !llvm.loop !582

23:                                               ; preds = %20
  %24 = load i8, ptr %21, align 1, !tbaa !256
  br label %25

25:                                               ; preds = %16, %23
  %26 = phi i8 [ %24, %23 ], [ 0, %16 ]
  %27 = phi ptr [ %21, %23 ], [ %17, %16 ]
  %28 = icmp eq i8 %26, 124
  %29 = zext i1 %28 to i64
  %30 = getelementptr inbounds i8, ptr %27, i64 %29
  %31 = add nuw nsw i32 %14, 1
  %32 = icmp eq i32 %31, %11
  br i1 %32, label %209, label %13, !llvm.loop !583

33:                                               ; preds = %6, %37
  %34 = phi ptr [ %38, %37 ], [ %8, %6 ]
  %35 = load i8, ptr %34, align 1, !tbaa !256
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %209, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds i8, ptr %34, i64 1
  %39 = icmp eq i8 %35, 125
  br i1 %39, label %209, label %33, !llvm.loop !584

40:                                               ; preds = %6
  %41 = getelementptr inbounds i8, ptr %7, i64 2
  %42 = load i8, ptr %8, align 1, !tbaa !256
  %43 = sext i8 %42 to i32
  %44 = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.63, i32 %43, i64 6)
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %57, !prof !585

46:                                               ; preds = %57, %40
  %47 = phi ptr [ %41, %40 ], [ %62, %57 ]
  %48 = phi ptr [ %5, %40 ], [ %61, %57 ]
  %49 = phi i8 [ %42, %40 ], [ %63, %57 ]
  %50 = zext i8 %49 to i64
  %51 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %50
  %52 = load i16, ptr %51, align 2, !tbaa !544
  %53 = and i16 %52, 4
  %54 = icmp ne i16 %53, 0
  %55 = icmp eq i8 %49, 46
  %56 = or i1 %55, %54
  br i1 %56, label %67, label %81, !prof !586

57:                                               ; preds = %40, %57
  %58 = phi i8 [ %63, %57 ], [ %42, %40 ]
  %59 = phi ptr [ %61, %57 ], [ %5, %40 ]
  %60 = phi ptr [ %62, %57 ], [ %41, %40 ]
  %61 = getelementptr inbounds i8, ptr %59, i64 1
  store i8 %58, ptr %59, align 1, !tbaa !256
  %62 = getelementptr inbounds i8, ptr %60, i64 1
  %63 = load i8, ptr %60, align 1, !tbaa !256
  %64 = sext i8 %63 to i32
  %65 = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.63, i32 %64, i64 6)
  %66 = icmp eq ptr %65, null
  br i1 %66, label %46, label %57, !prof !424, !llvm.loop !587

67:                                               ; preds = %46, %67
  %68 = phi i8 [ %73, %67 ], [ %49, %46 ]
  %69 = phi ptr [ %71, %67 ], [ %48, %46 ]
  %70 = phi ptr [ %72, %67 ], [ %47, %46 ]
  %71 = getelementptr inbounds i8, ptr %69, i64 1
  store i8 %68, ptr %69, align 1, !tbaa !256
  %72 = getelementptr inbounds i8, ptr %70, i64 1
  %73 = load i8, ptr %70, align 1, !tbaa !256
  %74 = zext i8 %73 to i64
  %75 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %74
  %76 = load i16, ptr %75, align 2, !tbaa !544
  %77 = and i16 %76, 4
  %78 = icmp ne i16 %77, 0
  %79 = icmp eq i8 %73, 46
  %80 = or i1 %79, %78
  br i1 %80, label %67, label %81, !prof !588, !llvm.loop !589

81:                                               ; preds = %67, %46
  %82 = phi ptr [ %47, %46 ], [ %72, %67 ]
  %83 = phi ptr [ %48, %46 ], [ %71, %67 ]
  %84 = phi i8 [ %49, %46 ], [ %73, %67 ]
  switch i8 %84, label %205 [
    i8 37, label %85
    i8 100, label %87
    i8 105, label %87
    i8 117, label %87
    i8 120, label %87
    i8 88, label %87
    i8 111, label %87
    i8 99, label %87
    i8 119, label %105
    i8 108, label %126
    i8 115, label %169
    i8 79, label %187
    i8 82, label %209
    i8 73, label %209
    i8 76, label %200
    i8 85, label %202
  ], !prof !590

85:                                               ; preds = %81
  %86 = call i32 @putc(i32 noundef 37, ptr noundef %0) #21
  br label %209

87:                                               ; preds = %81, %81, %81, %81, %81, %81, %81
  %88 = getelementptr inbounds i8, ptr %83, i64 1
  store i8 %84, ptr %83, align 1, !tbaa !256
  store i8 0, ptr %88, align 1, !tbaa !256
  %89 = load i32, ptr %4, align 16
  %90 = icmp ult i32 %89, 41
  br i1 %90, label %91, label %97

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %93 = load ptr, ptr %92, align 16
  %94 = zext nneg i32 %89 to i64
  %95 = getelementptr i8, ptr %93, i64 %94
  %96 = add nuw nsw i32 %89, 8
  store i32 %96, ptr %4, align 16
  br label %101

97:                                               ; preds = %87
  %98 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %99 = load ptr, ptr %98, align 8
  %100 = getelementptr i8, ptr %99, i64 8
  store ptr %100, ptr %98, align 8
  br label %101

101:                                              ; preds = %97, %91
  %102 = phi ptr [ %95, %91 ], [ %99, %97 ]
  %103 = load i32, ptr %102, align 4
  %104 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull %3, i32 noundef %103) #21
  br label %209

105:                                              ; preds = %81
  store i8 108, ptr %83, align 1
  %106 = getelementptr inbounds i8, ptr %83, i64 1
  %107 = getelementptr inbounds i8, ptr %82, i64 1
  %108 = load i8, ptr %82, align 1, !tbaa !256
  %109 = getelementptr inbounds i8, ptr %83, i64 2
  store i8 %108, ptr %106, align 1, !tbaa !256
  store i8 0, ptr %109, align 1, !tbaa !256
  %110 = load i32, ptr %4, align 16
  %111 = icmp ult i32 %110, 41
  br i1 %111, label %112, label %118

112:                                              ; preds = %105
  %113 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %114 = load ptr, ptr %113, align 16
  %115 = zext nneg i32 %110 to i64
  %116 = getelementptr i8, ptr %114, i64 %115
  %117 = add nuw nsw i32 %110, 8
  store i32 %117, ptr %4, align 16
  br label %122

118:                                              ; preds = %105
  %119 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %120 = load ptr, ptr %119, align 8
  %121 = getelementptr i8, ptr %120, i64 8
  store ptr %121, ptr %119, align 8
  br label %122

122:                                              ; preds = %118, %112
  %123 = phi ptr [ %116, %112 ], [ %120, %118 ]
  %124 = load i64, ptr %123, align 8
  %125 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull %3, i64 noundef %124) #21
  br label %209

126:                                              ; preds = %81
  %127 = getelementptr inbounds i8, ptr %83, i64 1
  store i8 108, ptr %83, align 1, !tbaa !256
  %128 = load i8, ptr %82, align 1, !tbaa !256
  %129 = icmp eq i8 %128, 108
  %130 = getelementptr inbounds i8, ptr %82, i64 1
  %131 = getelementptr inbounds i8, ptr %83, i64 2
  br i1 %129, label %132, label %152

132:                                              ; preds = %126
  store i8 108, ptr %127, align 1, !tbaa !256
  %133 = getelementptr inbounds i8, ptr %82, i64 2
  %134 = load i8, ptr %130, align 1, !tbaa !256
  %135 = getelementptr inbounds i8, ptr %83, i64 3
  store i8 %134, ptr %131, align 1, !tbaa !256
  store i8 0, ptr %135, align 1, !tbaa !256
  %136 = load i32, ptr %4, align 16
  %137 = icmp ult i32 %136, 41
  br i1 %137, label %138, label %144

138:                                              ; preds = %132
  %139 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %140 = load ptr, ptr %139, align 16
  %141 = zext nneg i32 %136 to i64
  %142 = getelementptr i8, ptr %140, i64 %141
  %143 = add nuw nsw i32 %136, 8
  store i32 %143, ptr %4, align 16
  br label %148

144:                                              ; preds = %132
  %145 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %146 = load ptr, ptr %145, align 8
  %147 = getelementptr i8, ptr %146, i64 8
  store ptr %147, ptr %145, align 8
  br label %148

148:                                              ; preds = %144, %138
  %149 = phi ptr [ %142, %138 ], [ %146, %144 ]
  %150 = load i64, ptr %149, align 8
  %151 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull %3, i64 noundef %150) #21
  br label %209

152:                                              ; preds = %126
  store i8 %128, ptr %127, align 1, !tbaa !256
  store i8 0, ptr %131, align 1, !tbaa !256
  %153 = load i32, ptr %4, align 16
  %154 = icmp ult i32 %153, 41
  br i1 %154, label %155, label %161

155:                                              ; preds = %152
  %156 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %157 = load ptr, ptr %156, align 16
  %158 = zext nneg i32 %153 to i64
  %159 = getelementptr i8, ptr %157, i64 %158
  %160 = add nuw nsw i32 %153, 8
  store i32 %160, ptr %4, align 16
  br label %165

161:                                              ; preds = %152
  %162 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %163 = load ptr, ptr %162, align 8
  %164 = getelementptr i8, ptr %163, i64 8
  store ptr %164, ptr %162, align 8
  br label %165

165:                                              ; preds = %161, %155
  %166 = phi ptr [ %159, %155 ], [ %163, %161 ]
  %167 = load i64, ptr %166, align 8
  %168 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull %3, i64 noundef %167) #21
  br label %209

169:                                              ; preds = %81
  %170 = getelementptr inbounds i8, ptr %83, i64 1
  store i8 115, ptr %83, align 1, !tbaa !256
  store i8 0, ptr %170, align 1, !tbaa !256
  %171 = load i32, ptr %4, align 16
  %172 = icmp ult i32 %171, 41
  br i1 %172, label %173, label %179

173:                                              ; preds = %169
  %174 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %175 = load ptr, ptr %174, align 16
  %176 = zext nneg i32 %171 to i64
  %177 = getelementptr i8, ptr %175, i64 %176
  %178 = add nuw nsw i32 %171, 8
  store i32 %178, ptr %4, align 16
  br label %183

179:                                              ; preds = %169
  %180 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %181 = load ptr, ptr %180, align 8
  %182 = getelementptr i8, ptr %181, i64 8
  store ptr %182, ptr %180, align 8
  br label %183

183:                                              ; preds = %179, %173
  %184 = phi ptr [ %177, %173 ], [ %181, %179 ]
  %185 = load ptr, ptr %184, align 8
  %186 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %185) #21
  br label %209

187:                                              ; preds = %81
  %188 = load i8, ptr %82, align 1, !tbaa !256
  %189 = icmp eq i8 %188, 37
  br i1 %189, label %190, label %209

190:                                              ; preds = %187
  %191 = getelementptr inbounds i8, ptr %82, i64 1
  %192 = load i8, ptr %191, align 1, !tbaa !256
  %193 = icmp eq i8 %192, 118
  br i1 %193, label %194, label %209

194:                                              ; preds = %190
  %195 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !244
  %196 = and i32 %195, 32
  %197 = icmp eq i32 %196, 0
  %198 = getelementptr inbounds i8, ptr %82, i64 2
  %199 = select i1 %197, ptr %198, ptr %191
  br label %209

200:                                              ; preds = %81
  %201 = call i32 @fputs(ptr nonnull @.str.65, ptr %0)
  br label %209

202:                                              ; preds = %81
  %203 = load ptr, ptr @user_label_prefix, align 8, !tbaa !240
  %204 = call i32 @fputs(ptr noundef %203, ptr noundef %0) #21
  br label %209

205:                                              ; preds = %81
  call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 3812, ptr noundef nonnull @.str.11) #22
  br label %209

206:                                              ; preds = %6
  %207 = sext i8 %9 to i32
  %208 = call i32 @putc(i32 noundef %207, ptr noundef %0) #21
  br label %209

209:                                              ; preds = %37, %33, %25, %10, %194, %6, %85, %101, %122, %183, %81, %81, %200, %202, %205, %165, %148, %190, %187, %206
  %210 = phi ptr [ %8, %206 ], [ %82, %205 ], [ %82, %202 ], [ %82, %200 ], [ %82, %81 ], [ %82, %81 ], [ %82, %190 ], [ %82, %187 ], [ %82, %183 ], [ %133, %148 ], [ %130, %165 ], [ %107, %122 ], [ %82, %101 ], [ %82, %85 ], [ %8, %6 ], [ %199, %194 ], [ %8, %10 ], [ %30, %25 ], [ %34, %33 ], [ %38, %37 ]
  br label %6, !llvm.loop !591

211:                                              ; preds = %6
  call void @llvm.va_end(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %3) #23
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @rhs_regno(ptr nocapture noundef readonly %0) unnamed_addr #12 !prof !592 !PGOFuncName !593 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !256
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
define dso_local ptr @alter_subreg(ptr nocapture noundef %0) local_unnamed_addr #6 !prof !594 {
  %2 = load ptr, ptr %0, align 8, !tbaa !240
  %3 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !256
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 65535
  %7 = icmp eq i32 %6, 43
  br i1 %7, label %8, label %16, !prof !595

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %10 = load i32, ptr %9, align 8, !tbaa !256
  %11 = load i32, ptr %2, align 8
  %12 = lshr i32 %11, 16
  %13 = and i32 %12, 255
  %14 = sext i32 %10 to i64
  %15 = tail call ptr @adjust_address_1(ptr noundef nonnull %4, i32 noundef %13, i64 noundef %14, i32 noundef 1, i32 noundef 1) #22
  store ptr %15, ptr %0, align 8, !tbaa !240
  br label %53

16:                                               ; preds = %1
  %17 = load i32, ptr %2, align 8
  %18 = lshr i32 %17, 16
  %19 = and i32 %18, 255
  %20 = lshr i32 %5, 16
  %21 = and i32 %20, 255
  %22 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %23 = load i32, ptr %22, align 8, !tbaa !256
  %24 = tail call ptr @simplify_subreg(i32 noundef %19, ptr noundef nonnull %4, i32 noundef %21, i32 noundef %23) #22
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26, !prof !596

26:                                               ; preds = %16
  store ptr %24, ptr %0, align 8, !tbaa !240
  br label %53

27:                                               ; preds = %16
  %28 = load i32, ptr %4, align 8
  %29 = and i32 %28, 65535
  %30 = icmp eq i32 %29, 37
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr %0, align 8, !tbaa !240
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
  %46 = load i32, ptr %22, align 8, !tbaa !256
  br label %47

47:                                               ; preds = %45, %37
  %48 = phi i32 [ %44, %37 ], [ %46, %45 ]
  %49 = load i32, ptr %2, align 8
  %50 = lshr i32 %49, 16
  %51 = and i32 %50, 255
  %52 = tail call ptr @gen_rtx_REG_offset(ptr noundef nonnull %4, i32 noundef %51, i32 noundef %34, i32 noundef %48) #22
  store ptr %52, ptr %0, align 8, !tbaa !240
  br label %53

53:                                               ; preds = %31, %26, %47, %8
  %54 = phi ptr [ %32, %31 ], [ %24, %26 ], [ %52, %47 ], [ %15, %8 ]
  ret ptr %54
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @walk_alter_subreg(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #6 !prof !597 !PGOFuncName !598 {
  %3 = load ptr, ptr %0, align 8, !tbaa !240
  %4 = load i32, ptr %3, align 8
  %5 = trunc i32 %4 to i16
  switch i16 %5, label %17 [
    i16 49, label %6
    i16 52, label %6
    i16 61, label %6
    i16 43, label %10
    i16 99, label %10
    i16 39, label %12
  ], !prof !599

6:                                                ; preds = %2, %2, %2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %8 = tail call fastcc ptr @walk_alter_subreg(ptr noundef nonnull %7, ptr noundef %1) #21
  store ptr %8, ptr %7, align 8, !tbaa !256
  %9 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  br label %14

10:                                               ; preds = %2, %2
  %11 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  br label %14

12:                                               ; preds = %2
  store i8 1, ptr %1, align 1, !tbaa !256
  %13 = tail call ptr @alter_subreg(ptr noundef nonnull %0) #21
  br label %19

14:                                               ; preds = %6, %10
  %15 = phi ptr [ %11, %10 ], [ %9, %6 ]
  %16 = tail call fastcc ptr @walk_alter_subreg(ptr noundef nonnull %15, ptr noundef %1) #21
  store ptr %16, ptr %15, align 8, !tbaa !256
  br label %17

17:                                               ; preds = %14, %2
  %18 = load ptr, ptr %0, align 8, !tbaa !240
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
define dso_local void @output_operand_lossage(ptr noundef %0, ...) local_unnamed_addr #6 !prof !248 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #23
  call void @llvm.va_start(ptr nonnull %4)
  %5 = load ptr, ptr @this_is_asm_operands, align 8, !tbaa !240
  %6 = icmp eq ptr %5, null
  %7 = select i1 %6, ptr @.str.39, ptr @.str.38
  %8 = call i32 (ptr, ptr, ...) @asprintf(ptr noundef nonnull %2, ptr noundef nonnull @.str.40, ptr noundef nonnull %7, ptr noundef %0) #22
  %9 = load ptr, ptr %2, align 8, !tbaa !240
  %10 = call i32 @vasprintf(ptr noundef nonnull %3, ptr noundef %9, ptr noundef nonnull %4) #22
  %11 = load ptr, ptr @this_is_asm_operands, align 8, !tbaa !240
  %12 = icmp eq ptr %11, null
  %13 = load ptr, ptr %3, align 8, !tbaa !240
  br i1 %12, label %15, label %14

14:                                               ; preds = %1
  call void (ptr, ptr, ...) @error_for_asm(ptr noundef nonnull %11, ptr noundef nonnull @.str.41, ptr noundef %13) #22
  br label %16

15:                                               ; preds = %1
  call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.41, ptr noundef %13) #22
  br label %16

16:                                               ; preds = %15, %14
  %17 = load ptr, ptr %2, align 8, !tbaa !240
  call void @free(ptr noundef %17) #21
  %18 = load ptr, ptr %3, align 8, !tbaa !240
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
define internal fastcc void @output_asm_operand_names(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #6 !prof !248 !PGOFuncName !600 {
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
  %12 = load i32, ptr %11, align 4, !tbaa !244
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds ptr, ptr %0, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !240
  %16 = call fastcc ptr @get_mem_expr_from_op(ptr noundef %15, ptr noundef nonnull %4) #21
  %17 = load ptr, ptr @asm_out_file, align 8, !tbaa !240
  %18 = select i1 %10, i32 9, i32 44
  %19 = select i1 %10, ptr @.str.18, ptr @.str.16
  %20 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef nonnull @.str.49, i32 noundef %18, ptr noundef nonnull %19) #21
  %21 = icmp eq ptr %16, null
  br i1 %21, label %29, label %22

22:                                               ; preds = %8
  %23 = load ptr, ptr @asm_out_file, align 8, !tbaa !240
  %24 = load i32, ptr %4, align 4, !tbaa !244
  %25 = icmp eq i32 %24, 0
  %26 = select i1 %25, ptr @.str.16, ptr @.str.50
  %27 = tail call i32 @fputs(ptr nonnull %26, ptr %23)
  %28 = load ptr, ptr @asm_out_file, align 8, !tbaa !240
  tail call void @print_mem_expr(ptr noundef %28, ptr noundef nonnull %16) #22
  br label %43

29:                                               ; preds = %8
  %30 = load i32, ptr %15, align 8
  %31 = and i32 %30, 65535
  %32 = icmp eq i32 %31, 37
  br i1 %32, label %33, label %43

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1, i32 0, i32 0, i64 1
  %35 = load i32, ptr %34, align 8, !tbaa !256
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %33
  %38 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %15) #21
  %39 = icmp eq i32 %35, %38
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = load ptr, ptr @asm_out_file, align 8, !tbaa !240
  %42 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %41, ptr noundef nonnull @.str.51, i32 noundef %35) #21
  br label %43

43:                                               ; preds = %29, %33, %37, %40, %22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #23
  %44 = add nuw nsw i64 %9, 1
  %45 = icmp eq i64 %44, %7
  br i1 %45, label %46, label %8, !llvm.loop !601

46:                                               ; preds = %43, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @output_asm_name() unnamed_addr #6 !prof !248 !PGOFuncName !602 {
  %1 = load ptr, ptr @debug_insn, align 8, !tbaa !240
  %2 = icmp eq ptr %1, null
  br i1 %2, label %26, label %3

3:                                                ; preds = %0
  %4 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %5 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !256
  %7 = load ptr, ptr @asm_out_file, align 8, !tbaa !240
  %8 = load i32, ptr %4, align 8, !tbaa !256
  %9 = sext i32 %6 to i64
  %10 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !603
  %12 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.18, i32 noundef %8, ptr noundef %11) #21
  %13 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %9, i32 6
  %14 = load i8, ptr %13, align 2, !tbaa !604
  %15 = icmp sgt i8 %14, 1
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = load ptr, ptr @asm_out_file, align 8, !tbaa !240
  %18 = load i32, ptr @which_alternative, align 4, !tbaa !244
  %19 = add nsw i32 %18, 1
  %20 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef nonnull @.str.53, i32 noundef %19) #21
  br label %21

21:                                               ; preds = %16, %3
  %22 = load ptr, ptr @asm_out_file, align 8, !tbaa !240
  %23 = load ptr, ptr @debug_insn, align 8, !tbaa !240
  %24 = tail call i32 @get_attr_length(ptr noundef %23) #21
  %25 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str.54, i32 noundef %24) #21
  store ptr null, ptr @debug_insn, align 8, !tbaa !240
  br label %26

26:                                               ; preds = %21, %0
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn
declare i64 @strtoul(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #16

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @output_asm_label(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !605 {
  %2 = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %2) #23
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 44
  br i1 %5, label %6, label %10, !prof !606

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !256
  %9 = load i32, ptr %8, align 8
  br label %10

10:                                               ; preds = %6, %1
  %11 = phi i32 [ %9, %6 ], [ %3, %1 ]
  %12 = phi ptr [ %8, %6 ], [ %0, %1 ]
  %13 = trunc i32 %11 to i16
  switch i16 %13, label %22 [
    i16 12, label %18
    i16 13, label %14
  ], !prof !607

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 1
  %16 = load i32, ptr %15, align 8, !tbaa !256
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %22

18:                                               ; preds = %10, %14
  %19 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 1, i32 1
  %20 = load i32, ptr %19, align 8, !tbaa !256
  %21 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) @.str.55, ptr noundef nonnull @.str.21, i32 noundef %20) #21
  br label %23

22:                                               ; preds = %10, %14
  tail call void (ptr, ...) @output_operand_lossage(ptr noundef nonnull @.str.56) #21
  br label %23

23:                                               ; preds = %22, %18
  %24 = load ptr, ptr @asm_out_file, align 8, !tbaa !240
  call void @assemble_name(ptr noundef %24, ptr noundef nonnull %2) #22
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %2) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @output_address(ptr noundef %0) local_unnamed_addr #6 !prof !608 {
  %2 = alloca ptr, align 8
  %3 = alloca i8, align 1
  store ptr %0, ptr %2, align 8, !tbaa !240
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #23
  store i8 0, ptr %3, align 1, !tbaa !256
  %4 = call fastcc ptr @walk_alter_subreg(ptr noundef nonnull %2, ptr noundef nonnull %3) #21
  %5 = load ptr, ptr @asm_out_file, align 8, !tbaa !240
  %6 = load ptr, ptr %2, align 8, !tbaa !240
  call void @print_operand_address(ptr noundef %5, ptr noundef %6) #22
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #23
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @constant_address_p(ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @output_addr_const(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 !prof !609 {
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
  ], !prof !610

9:                                                ; preds = %5
  %10 = tail call i32 @putc(i32 noundef 46, ptr noundef %0) #21
  br label %130

11:                                               ; preds = %5
  %12 = and i32 %6, 67108864
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %26, !prof !611

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 2
  %16 = load ptr, ptr %15, align 8, !tbaa !256
  %17 = icmp eq ptr %16, null
  br i1 %17, label %26, label %18, !prof !612

18:                                               ; preds = %14
  tail call void @mark_decl_referenced(ptr noundef nonnull %16) #22
  %19 = load i32, ptr %7, align 8
  %20 = and i32 %19, 67108864
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %24, !prof !613

22:                                               ; preds = %18
  %23 = load ptr, ptr %15, align 8, !tbaa !256
  br label %24

24:                                               ; preds = %18, %22
  %25 = phi ptr [ %23, %22 ], [ null, %18 ]
  tail call void @assemble_external(ptr noundef %25) #22
  br label %26

26:                                               ; preds = %11, %24, %14
  %27 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !256
  tail call void @assemble_name(ptr noundef %0, ptr noundef %28) #22
  br label %130

29:                                               ; preds = %5
  %30 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !256
  br label %32

32:                                               ; preds = %5, %29
  %33 = phi ptr [ %31, %29 ], [ %7, %5 ]
  %34 = getelementptr inbounds %struct.rtx_def, ptr %33, i64 1, i32 1
  %35 = load i32, ptr %34, align 8, !tbaa !256
  %36 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.55, ptr noundef nonnull @.str.21, i32 noundef %35) #21
  call void @assemble_name(ptr noundef %0, ptr noundef nonnull %3) #22
  br label %130

37:                                               ; preds = %5
  %38 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %39 = load i64, ptr %38, align 8, !tbaa !256
  %40 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.47, i64 noundef %39) #21
  br label %130

41:                                               ; preds = %5
  %42 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !256
  tail call void @output_addr_const(ptr noundef %0, ptr noundef %43) #21
  br label %130

44:                                               ; preds = %5
  %45 = and i32 %6, 16711680
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %61

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %49 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 1
  %50 = load i64, ptr %49, align 8, !tbaa !256
  %51 = icmp eq i64 %50, 0
  %52 = load i64, ptr %48, align 8, !tbaa !256
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
  %64 = load i64, ptr %63, align 8, !tbaa !256
  %65 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.58, i64 noundef %64) #21
  br label %130

66:                                               ; preds = %5
  %67 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !256
  %69 = load i32, ptr %68, align 8
  %70 = and i32 %69, 65535
  %71 = icmp eq i32 %70, 30
  br i1 %71, label %72, label %84, !prof !614

72:                                               ; preds = %66
  %73 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 1
  %74 = load ptr, ptr %73, align 8, !tbaa !256
  tail call void @output_addr_const(ptr noundef %0, ptr noundef %74) #21
  %75 = load ptr, ptr %67, align 8, !tbaa !256
  %76 = getelementptr inbounds %struct.rtx_def, ptr %75, i64 0, i32 1
  %77 = load i64, ptr %76, align 8, !tbaa !256
  %78 = icmp sgt i64 %77, -1
  br i1 %78, label %79, label %82

79:                                               ; preds = %72
  %80 = tail call i32 @fputc(i32 43, ptr %0)
  %81 = load ptr, ptr %67, align 8, !tbaa !256
  br label %82

82:                                               ; preds = %79, %72
  %83 = phi ptr [ %81, %79 ], [ %75, %72 ]
  tail call void @output_addr_const(ptr noundef %0, ptr noundef %83) #21
  br label %130

84:                                               ; preds = %66
  tail call void @output_addr_const(ptr noundef %0, ptr noundef nonnull %68) #21
  %85 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1, i32 0, i32 0, i64 1
  %86 = load ptr, ptr %85, align 8, !tbaa !256
  %87 = load i32, ptr %86, align 8
  %88 = and i32 %87, 65535
  %89 = icmp eq i32 %88, 30
  br i1 %89, label %90, label %94, !prof !615

90:                                               ; preds = %84
  %91 = getelementptr inbounds %struct.rtx_def, ptr %86, i64 0, i32 1
  %92 = load i64, ptr %91, align 8, !tbaa !256
  %93 = icmp sgt i64 %92, -1
  br i1 %93, label %94, label %97, !prof !616

94:                                               ; preds = %90, %84
  %95 = tail call i32 @fputc(i32 43, ptr %0)
  %96 = load ptr, ptr %85, align 8, !tbaa !256
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
  %106 = load ptr, ptr %105, align 8, !tbaa !256
  tail call void @output_addr_const(ptr noundef %0, ptr noundef %106) #21
  %107 = tail call i32 @fputc(i32 45, ptr %0)
  %108 = getelementptr inbounds %struct.rtx_def, ptr %100, i64 0, i32 1, i32 0, i32 0, i64 1
  %109 = load ptr, ptr %108, align 8, !tbaa !256
  %110 = load i32, ptr %109, align 8
  %111 = trunc i32 %110 to i16
  switch i16 %111, label %117 [
    i16 30, label %112
    i16 36, label %116
    i16 45, label %116
  ]

112:                                              ; preds = %104
  %113 = getelementptr inbounds %struct.rtx_def, ptr %109, i64 0, i32 1
  %114 = load i64, ptr %113, align 8, !tbaa !256
  %115 = icmp sgt i64 %114, -1
  br i1 %115, label %116, label %117

116:                                              ; preds = %104, %104, %112
  tail call void @output_addr_const(ptr noundef %0, ptr noundef nonnull %109) #21
  br label %130

117:                                              ; preds = %104, %112
  %118 = load ptr, ptr @targetm, align 8, !tbaa !617
  %119 = tail call i32 @fputs(ptr noundef %118, ptr noundef %0) #21
  %120 = load ptr, ptr %108, align 8, !tbaa !256
  tail call void @output_addr_const(ptr noundef %0, ptr noundef %120) #21
  %121 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 1), align 8, !tbaa !618
  %122 = tail call i32 @fputs(ptr noundef %121, ptr noundef %0) #21
  br label %130

123:                                              ; preds = %5, %5, %5, %5
  %124 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %125 = load ptr, ptr %124, align 8, !tbaa !256
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
define internal fastcc void @output_operand(ptr noundef %0, i32 noundef %1) unnamed_addr #6 !prof !619 !PGOFuncName !620 {
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !240
  %4 = icmp eq ptr %0, null
  br i1 %4, label %21, label %5, !prof !621

5:                                                ; preds = %2
  %6 = load i32, ptr %0, align 8
  %7 = and i32 %6, 65535
  %8 = icmp eq i32 %7, 39
  br i1 %8, label %9, label %12, !prof !622

9:                                                ; preds = %5
  %10 = call ptr @alter_subreg(ptr noundef nonnull %3) #21
  store ptr %10, ptr %3, align 8, !tbaa !240
  %11 = icmp eq ptr %10, null
  br i1 %11, label %21, label %12, !prof !623

12:                                               ; preds = %5, %9
  %13 = phi ptr [ %10, %9 ], [ %0, %5 ]
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, 65535
  %16 = icmp eq i32 %15, 37
  br i1 %16, label %17, label %23, !prof !624

17:                                               ; preds = %12
  %18 = tail call fastcc i32 @rhs_regno(ptr noundef nonnull %13) #21
  %19 = icmp ult i32 %18, 53
  br i1 %19, label %23, label %20, !prof !625

20:                                               ; preds = %17
  tail call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 3496, ptr noundef nonnull @.str.11) #22
  br label %23

21:                                               ; preds = %2, %9
  %22 = load ptr, ptr @asm_out_file, align 8, !tbaa !240
  tail call void @print_operand(ptr noundef %22, ptr noundef null, i32 noundef %1) #22
  br label %26

23:                                               ; preds = %12, %17, %20
  %24 = load ptr, ptr @asm_out_file, align 8, !tbaa !240
  tail call void @print_operand(ptr noundef %24, ptr noundef nonnull %13, i32 noundef %1) #22
  %25 = call i32 @for_each_rtx(ptr noundef nonnull %3, ptr noundef nonnull @mark_symbol_ref_as_used, ptr noundef null) #22
  br label %26

26:                                               ; preds = %21, %23
  ret void
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_mem_expr_from_op(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #17 !prof !248 !PGOFuncName !626 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #23
  store i32 0, ptr %1, align 4, !tbaa !244
  %4 = load i32, ptr %0, align 8
  %5 = trunc i32 %4 to i16
  switch i16 %5, label %52 [
    i16 37, label %6
    i16 43, label %12
  ]

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %8 = load ptr, ptr %7, align 8, !tbaa !256
  %9 = icmp eq ptr %8, null
  br i1 %9, label %52, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !627
  br label %52

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %14 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %15 = load ptr, ptr %14, align 8, !tbaa !256
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %12
  %18 = load ptr, ptr %15, align 8, !tbaa !629
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %52

20:                                               ; preds = %12, %17
  store i32 1, ptr %1, align 4, !tbaa !244
  %21 = load ptr, ptr %13, align 8, !tbaa !256
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
  %33 = load ptr, ptr %32, align 8, !tbaa !256
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
  %43 = load i32, ptr %42, align 4, !tbaa !244
  switch i32 %43, label %47 [
    i32 4, label %44
    i32 2, label %44
  ]

44:                                               ; preds = %37, %37
  %45 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !256
  br label %37, !llvm.loop !631

47:                                               ; preds = %37
  %48 = call fastcc ptr @get_mem_expr_from_op(ptr noundef nonnull %38, ptr noundef nonnull %3) #21
  %49 = load i32, ptr %3, align 4, !tbaa !244
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
define internal noundef i32 @mark_symbol_ref_as_used(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #6 !prof !632 !PGOFuncName !633 {
  %3 = load ptr, ptr %0, align 8, !tbaa !240
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 45
  br i1 %6, label %7, label %15, !prof !634

7:                                                ; preds = %2
  %8 = and i32 %4, 67108864
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %15, !prof !635

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 2
  %12 = load ptr, ptr %11, align 8, !tbaa !256
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14, !prof !636

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
define dso_local void @mark_symbol_refs_as_used(ptr noundef %0) local_unnamed_addr #6 !prof !248 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !240
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
define dso_local void @split_double(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #6 !prof !248 {
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
  %10 = load i64, ptr %9, align 8, !tbaa !256
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
  store ptr %20, ptr %1, align 8, !tbaa !240
  %21 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %19) #22
  store ptr %21, ptr %2, align 8, !tbaa !240
  br label %61

22:                                               ; preds = %3
  store ptr %0, ptr %1, align 8, !tbaa !240
  %23 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !240
  store ptr %23, ptr %2, align 8, !tbaa !240
  br label %61

24:                                               ; preds = %3
  %25 = lshr i32 %6, 16
  %26 = and i32 %25, 255
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %24
  %29 = zext nneg i32 %26 to i64
  %30 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %29
  %31 = load i8, ptr %30, align 1, !tbaa !256
  %32 = icmp eq i8 %31, 2
  br i1 %32, label %33, label %40

33:                                               ; preds = %28, %24
  %34 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %35 = load i64, ptr %34, align 8, !tbaa !256
  %36 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %35) #22
  store ptr %36, ptr %1, align 8, !tbaa !240
  %37 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %38 = load i64, ptr %37, align 8, !tbaa !256
  %39 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %38) #22
  store ptr %39, ptr %2, align 8, !tbaa !240
  br label %61

40:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #23
  %41 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %41, i64 32, i1 false), !tbaa.struct !637
  %42 = tail call i32 @mode_for_size(i32 noundef 64, i32 noundef 8, i32 noundef 0) #22
  %43 = call i64 @real_to_target(ptr noundef nonnull %5, ptr noundef nonnull %4, i32 noundef %42) #22
  %44 = load i64, ptr %5, align 16, !tbaa !428
  %45 = and i64 %44, 2147483648
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %40
  %48 = or i64 %44, -4294967296
  store i64 %48, ptr %5, align 16, !tbaa !428
  br label %49

49:                                               ; preds = %47, %40
  %50 = phi i64 [ %48, %47 ], [ %44, %40 ]
  %51 = getelementptr inbounds [2 x i64], ptr %5, i64 0, i64 1
  %52 = load i64, ptr %51, align 8, !tbaa !428
  %53 = and i64 %52, 2147483648
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %49
  %56 = or i64 %52, -4294967296
  store i64 %56, ptr %51, align 8, !tbaa !428
  br label %57

57:                                               ; preds = %55, %49
  %58 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %50) #22
  store ptr %58, ptr %1, align 8, !tbaa !240
  %59 = load i64, ptr %51, align 8, !tbaa !428
  %60 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %59) #22
  store ptr %60, ptr %2, align 8, !tbaa !240
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
define dso_local noundef i32 @leaf_function_p() local_unnamed_addr #6 !prof !246 {
  %1 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 35), align 1, !tbaa !511
  %2 = icmp ne i8 %1, 0
  %3 = load i32, ptr @profile_arc_flag, align 4
  %4 = icmp ne i32 %3, 0
  %5 = select i1 %2, i1 true, i1 %4
  br i1 %5, label %66, label %6, !prof !638

6:                                                ; preds = %0
  %7 = tail call ptr @get_insns() #22
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %12, !prof !639

9:                                                ; preds = %34, %6
  %10 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 27), align 8, !tbaa !256
  %11 = icmp eq ptr %10, null
  br i1 %11, label %66, label %38, !prof !640

12:                                               ; preds = %6, %34
  %13 = phi ptr [ %36, %34 ], [ %7, %6 ]
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, 16842751
  %16 = icmp eq i32 %15, 10
  br i1 %16, label %66, label %17, !prof !641

17:                                               ; preds = %12
  %18 = and i32 %14, 65535
  %19 = icmp eq i32 %18, 8
  br i1 %19, label %20, label %34, !prof !642

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 1
  %22 = load ptr, ptr %21, align 8, !tbaa !256
  %23 = load i32, ptr %22, align 8
  %24 = and i32 %23, 65535
  %25 = icmp eq i32 %24, 5
  br i1 %25, label %26, label %34, !prof !643

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !256
  %29 = getelementptr inbounds %struct.rtvec_def, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !240
  %31 = load i32, ptr %30, align 8
  %32 = and i32 %31, 16842751
  %33 = icmp eq i32 %32, 10
  br i1 %33, label %66, label %34

34:                                               ; preds = %17, %20, %26
  %35 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1, i32 0, i32 0, i64 2
  %36 = load ptr, ptr %35, align 8, !tbaa !256
  %37 = icmp eq ptr %36, null
  br i1 %37, label %9, label %12, !prof !644, !llvm.loop !645

38:                                               ; preds = %9, %62
  %39 = phi ptr [ %64, %62 ], [ %10, %9 ]
  %40 = getelementptr inbounds %struct.rtx_def, ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !256
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
  %50 = load ptr, ptr %49, align 8, !tbaa !256
  %51 = load i32, ptr %50, align 8
  %52 = and i32 %51, 65535
  %53 = icmp eq i32 %52, 5
  br i1 %53, label %54, label %62

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.rtx_def, ptr %50, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !256
  %57 = getelementptr inbounds %struct.rtvec_def, ptr %56, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !240
  %59 = load i32, ptr %58, align 8
  %60 = and i32 %59, 16842751
  %61 = icmp eq i32 %60, 10
  br i1 %61, label %66, label %62

62:                                               ; preds = %45, %48, %54
  %63 = getelementptr inbounds %struct.rtx_def, ptr %39, i64 0, i32 1, i32 0, i32 0, i64 1
  %64 = load ptr, ptr %63, align 8, !tbaa !256
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %38, !prof !424, !llvm.loop !646

66:                                               ; preds = %26, %12, %38, %54, %62, %9, %0
  %67 = phi i32 [ 0, %0 ], [ 1, %9 ], [ 0, %38 ], [ 0, %54 ], [ 1, %62 ], [ 0, %12 ], [ 0, %26 ]
  ret i32 %67
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @final_forward_branch_p(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !248 {
  %2 = load ptr, ptr @uid_shuid, align 8, !tbaa !240
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 4014, ptr noundef nonnull @.str.11) #22
  %5 = load ptr, ptr @uid_shuid, align 8, !tbaa !240
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi ptr [ %2, %1 ], [ %5, %4 ]
  %8 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !256
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i32, ptr %7, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !244
  %13 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 2
  %14 = load ptr, ptr %13, align 8, !tbaa !256
  %15 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1
  %16 = load i32, ptr %15, align 8, !tbaa !256
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, ptr %7, i64 %17
  %19 = load i32, ptr %18, align 4, !tbaa !244
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
define dso_local void @debug_flush_symbol_queue() local_unnamed_addr #6 !prof !248 {
  %1 = load i32, ptr @debug_nesting, align 4, !tbaa !244
  %2 = add nsw i32 %1, 1
  store i32 %2, ptr @debug_nesting, align 4, !tbaa !244
  %3 = load i32, ptr @symbol_queue_index, align 4, !tbaa !244
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %42

5:                                                ; preds = %0
  %6 = load ptr, ptr @symbol_queue, align 8, !tbaa !240
  br label %7

7:                                                ; preds = %5, %7
  %8 = phi ptr [ %6, %5 ], [ %24, %7 ]
  %9 = phi i64 [ 0, %5 ], [ %35, %7 ]
  %10 = getelementptr inbounds ptr, ptr %8, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !240
  %12 = load i64, ptr %11, align 8
  %13 = and i64 %12, 16777216
  %14 = getelementptr inbounds %struct.tree_decl_common, ptr %11, i64 0, i32 2
  %15 = load i64, ptr %14, align 8
  %16 = and i64 %15, 33554432
  %17 = or i64 %12, 16777216
  store i64 %17, ptr %11, align 8
  %18 = load ptr, ptr %10, align 8, !tbaa !240
  %19 = getelementptr inbounds %struct.tree_decl_common, ptr %18, i64 0, i32 2
  %20 = load i64, ptr %19, align 8
  %21 = and i64 %20, -33554433
  store i64 %21, ptr %19, align 8
  %22 = load ptr, ptr %10, align 8, !tbaa !240
  %23 = tail call i32 @dbxout_symbol(ptr noundef %22, i32 noundef 0) #22
  %24 = load ptr, ptr @symbol_queue, align 8, !tbaa !240
  %25 = getelementptr inbounds ptr, ptr %24, i64 %9
  %26 = load ptr, ptr %25, align 8, !tbaa !240
  %27 = load i64, ptr %26, align 8
  %28 = and i64 %27, -16777217
  %29 = or disjoint i64 %28, %13
  store i64 %29, ptr %26, align 8
  %30 = load ptr, ptr %25, align 8, !tbaa !240
  %31 = getelementptr inbounds %struct.tree_decl_common, ptr %30, i64 0, i32 2
  %32 = load i64, ptr %31, align 8
  %33 = and i64 %32, -33554433
  %34 = or disjoint i64 %33, %16
  store i64 %34, ptr %31, align 8
  %35 = add nuw nsw i64 %9, 1
  %36 = load i32, ptr @symbol_queue_index, align 4, !tbaa !244
  %37 = sext i32 %36 to i64
  %38 = icmp slt i64 %35, %37
  br i1 %38, label %7, label %39, !llvm.loop !647

39:                                               ; preds = %7
  %40 = load i32, ptr @debug_nesting, align 4, !tbaa !244
  %41 = add nsw i32 %40, -1
  br label %42

42:                                               ; preds = %39, %0
  %43 = phi i32 [ %41, %39 ], [ %1, %0 ]
  store i32 0, ptr @symbol_queue_index, align 4, !tbaa !244
  store i32 %43, ptr @debug_nesting, align 4, !tbaa !244
  ret void
}

; Function Attrs: optsize
declare i32 @dbxout_symbol(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_queue_symbol(ptr noundef %0) local_unnamed_addr #6 !prof !248 {
  %2 = load i32, ptr @symbol_queue_index, align 4, !tbaa !244
  %3 = load i32, ptr @symbol_queue_size, align 4, !tbaa !244
  %4 = icmp slt i32 %2, %3
  %5 = load ptr, ptr @symbol_queue, align 8, !tbaa !240
  br i1 %4, label %12, label %6

6:                                                ; preds = %1
  %7 = add nsw i32 %3, 10
  store i32 %7, ptr @symbol_queue_size, align 4, !tbaa !244
  %8 = sext i32 %7 to i64
  %9 = shl nsw i64 %8, 3
  %10 = tail call ptr @xrealloc(ptr noundef %5, i64 noundef %9) #22
  store ptr %10, ptr @symbol_queue, align 8, !tbaa !240
  %11 = load i32, ptr @symbol_queue_index, align 4, !tbaa !244
  br label %12

12:                                               ; preds = %6, %1
  %13 = phi i32 [ %11, %6 ], [ %2, %1 ]
  %14 = phi ptr [ %10, %6 ], [ %5, %1 ]
  %15 = add nsw i32 %13, 1
  store i32 %15, ptr @symbol_queue_index, align 4, !tbaa !244
  %16 = sext i32 %13 to i64
  %17 = getelementptr inbounds ptr, ptr %14, i64 %16
  store ptr %0, ptr %17, align 8, !tbaa !240
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define dso_local void @debug_free_queue() local_unnamed_addr #4 !prof !248 {
  %1 = load ptr, ptr @symbol_queue, align 8, !tbaa !240
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @free(ptr noundef nonnull %1) #21
  store ptr null, ptr @symbol_queue, align 8, !tbaa !240
  store i32 0, ptr @symbol_queue_size, align 4, !tbaa !244
  br label %4

4:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @rest_of_handle_final() #6 !prof !246 !PGOFuncName !648 {
  %1 = load ptr, ptr @current_function_decl, align 8, !tbaa !240
  %2 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !256
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %9, !prof !649

5:                                                ; preds = %0
  tail call void @make_decl_rtl(ptr noundef nonnull %1) #22
  %6 = load ptr, ptr @current_function_decl, align 8, !tbaa !240
  %7 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !256
  br label %9

9:                                                ; preds = %0, %5
  %10 = phi ptr [ %8, %5 ], [ %3, %0 ]
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 65535
  %13 = icmp eq i32 %12, 43
  br i1 %13, label %15, label %14, !prof !290

14:                                               ; preds = %9
  tail call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 4250, ptr noundef nonnull @.str.11) #22
  br label %15

15:                                               ; preds = %9, %14
  %16 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !256
  %18 = load i32, ptr %17, align 8
  %19 = and i32 %18, 65535
  %20 = icmp eq i32 %19, 45
  br i1 %20, label %22, label %21, !prof !290

21:                                               ; preds = %15
  tail call void @fancy_abort(ptr noundef nonnull @.str.13, i32 noundef 4252, ptr noundef nonnull @.str.11) #22
  br label %22

22:                                               ; preds = %15, %21
  %23 = getelementptr inbounds %struct.rtx_def, ptr %17, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !256
  %25 = load ptr, ptr @current_function_decl, align 8, !tbaa !240
  tail call void @assemble_start_function(ptr noundef %25, ptr noundef %24) #22
  %26 = tail call ptr @get_insns() #22
  %27 = load ptr, ptr @asm_out_file, align 8, !tbaa !240
  tail call void @final_start_function(ptr poison, ptr noundef %27, i32 poison) #21
  %28 = tail call ptr @get_insns() #22
  %29 = load ptr, ptr @asm_out_file, align 8, !tbaa !240
  %30 = load i32, ptr @optimize, align 4, !tbaa !244
  tail call void @final(ptr noundef %28, ptr noundef %29, i32 noundef %30) #21
  tail call void @final_end_function() #21
  %31 = load ptr, ptr @current_function_decl, align 8, !tbaa !240
  tail call void @assemble_end_function(ptr noundef %31, ptr noundef %24) #22
  tail call void @output_function_exception_table(ptr noundef %24) #22
  store i8 0, ptr @user_defined_section_attribute, align 1, !tbaa !256
  tail call void @free_reg_info() #22
  %32 = load i32, ptr @quiet_flag, align 4, !tbaa !244
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %37, !prof !251

34:                                               ; preds = %22
  %35 = load ptr, ptr @asm_out_file, align 8, !tbaa !240
  %36 = tail call i32 @fflush(ptr noundef %35) #21
  br label %37

37:                                               ; preds = %22, %34
  %38 = load i8, ptr @timevar_enable, align 1, !tbaa !256
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %41, label %40, !prof !290

40:                                               ; preds = %37
  tail call void @timevar_push_1(i32 noundef 166) #22
  br label %41

41:                                               ; preds = %40, %37
  %42 = load ptr, ptr @current_function_decl, align 8, !tbaa !240
  %43 = getelementptr inbounds %struct.tree_decl_common, ptr %42, i64 0, i32 2
  %44 = load i64, ptr %43, align 8
  %45 = and i64 %44, 1024
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %51, !prof !290

47:                                               ; preds = %41
  %48 = load ptr, ptr @debug_hooks, align 8, !tbaa !240
  %49 = getelementptr inbounds %struct.gcc_debug_hooks, ptr %48, i64 0, i32 16
  %50 = load ptr, ptr %49, align 8, !tbaa !650
  tail call void %50(ptr noundef nonnull %42) #22
  br label %51

51:                                               ; preds = %41, %47
  %52 = load i8, ptr @timevar_enable, align 1, !tbaa !256
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %55, label %54, !prof !290

54:                                               ; preds = %51
  tail call void @timevar_pop_1(i32 noundef 166) #22
  br label %55

55:                                               ; preds = %54, %51
  %56 = load ptr, ptr @global_trees, align 16, !tbaa !240
  %57 = load ptr, ptr @current_function_decl, align 8, !tbaa !240
  %58 = getelementptr inbounds %struct.tree_decl_common, ptr %57, i64 0, i32 5
  store ptr %56, ptr %58, align 8, !tbaa !256
  %59 = getelementptr inbounds %struct.tree_function_decl, ptr %57, i64 0, i32 5
  %60 = load i32, ptr %59, align 8
  %61 = and i32 %60, 8192
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %85, label %63, !prof !290

63:                                               ; preds = %55
  %64 = load i8, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 112), align 1, !tbaa !651
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %85, label %66

66:                                               ; preds = %63
  %67 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 25), align 8, !tbaa !652
  %68 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %57, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !256
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %75

71:                                               ; preds = %66
  tail call void @make_decl_rtl(ptr noundef nonnull %57) #22
  %72 = load ptr, ptr @current_function_decl, align 8, !tbaa !240
  %73 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %72, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !256
  br label %75

75:                                               ; preds = %66, %71
  %76 = phi ptr [ %72, %71 ], [ %57, %66 ]
  %77 = phi ptr [ %74, %71 ], [ %69, %66 ]
  %78 = getelementptr inbounds %struct.rtx_def, ptr %77, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !256
  %80 = tail call zeroext i16 @decl_init_priority_lookup(ptr noundef nonnull %76) #22
  %81 = zext i16 %80 to i32
  tail call void %67(ptr noundef %79, i32 noundef %81) #22
  %82 = load ptr, ptr @current_function_decl, align 8, !tbaa !240
  %83 = getelementptr inbounds %struct.tree_function_decl, ptr %82, i64 0, i32 5
  %84 = load i32, ptr %83, align 8
  br label %85

85:                                               ; preds = %75, %63, %55
  %86 = phi i32 [ %84, %75 ], [ %60, %63 ], [ %60, %55 ]
  %87 = phi ptr [ %82, %75 ], [ %57, %63 ], [ %57, %55 ]
  %88 = and i32 %86, 16384
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %109, label %90, !prof !290

90:                                               ; preds = %85
  %91 = load i8, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 112), align 1, !tbaa !651
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %109, label %93

93:                                               ; preds = %90
  %94 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 26), align 8, !tbaa !653
  %95 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %87, i64 0, i32 1
  %96 = load ptr, ptr %95, align 8, !tbaa !256
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %102

98:                                               ; preds = %93
  tail call void @make_decl_rtl(ptr noundef nonnull %87) #22
  %99 = load ptr, ptr @current_function_decl, align 8, !tbaa !240
  %100 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %99, i64 0, i32 1
  %101 = load ptr, ptr %100, align 8, !tbaa !256
  br label %102

102:                                              ; preds = %93, %98
  %103 = phi ptr [ %99, %98 ], [ %87, %93 ]
  %104 = phi ptr [ %101, %98 ], [ %96, %93 ]
  %105 = getelementptr inbounds %struct.rtx_def, ptr %104, i64 0, i32 1
  %106 = load ptr, ptr %105, align 8, !tbaa !256
  %107 = tail call zeroext i16 @decl_fini_priority_lookup(ptr noundef nonnull %103) #22
  %108 = zext i16 %107 to i32
  tail call void %94(ptr noundef %106, i32 noundef %108) #22
  br label %109

109:                                              ; preds = %102, %90, %85
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
define internal noundef i32 @rest_of_handle_shorten_branches() #6 !prof !246 !PGOFuncName !654 {
  %1 = tail call ptr @get_insns() #22
  tail call void @shorten_branches(ptr noundef %1) #21
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @rest_of_clean_state() #6 !prof !246 !PGOFuncName !655 {
  %1 = load i32, ptr @flag_dump_unnumbered, align 4, !tbaa !244
  %2 = load i32, ptr @flag_dump_noaddr, align 4, !tbaa !244
  %3 = load ptr, ptr @flag_dump_final_insns, align 8, !tbaa !240
  %4 = icmp eq ptr %3, null
  br i1 %4, label %53, label %5, !prof !290

5:                                                ; preds = %0
  %6 = tail call ptr @fopen_unlocked(ptr noundef nonnull %3, ptr noundef nonnull @.str.69) #22
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %13

8:                                                ; preds = %5
  %9 = load ptr, ptr @flag_dump_final_insns, align 8, !tbaa !240
  %10 = tail call ptr @__errno_location() #22
  %11 = load i32, ptr %10, align 4, !tbaa !244
  %12 = tail call ptr @strerror(i32 noundef %11) #22
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.70, ptr noundef %9, ptr noundef %12) #22
  store ptr null, ptr @flag_dump_final_insns, align 8, !tbaa !240
  br label %53

13:                                               ; preds = %5
  %14 = load ptr, ptr @current_function_decl, align 8, !tbaa !240
  %15 = tail call ptr @decl_assembler_name(ptr noundef %14) #22
  %16 = getelementptr inbounds %struct.tree_identifier, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !256
  %18 = load ptr, ptr @cfun, align 8, !tbaa !240
  %19 = getelementptr inbounds %struct.function, ptr %18, i64 0, i32 20
  %20 = load i32, ptr %19, align 8
  %21 = lshr i32 %20, 16
  %22 = and i32 %21, 3
  %23 = icmp eq i32 %22, 2
  %24 = icmp eq i32 %22, 0
  %25 = select i1 %24, ptr @.str.73, ptr @.str.16
  %26 = select i1 %23, ptr @.str.72, ptr %25
  %27 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %6, ptr noundef nonnull @.str.71, ptr noundef %17, ptr noundef nonnull %26) #21
  store i32 1, ptr @flag_dump_unnumbered, align 4, !tbaa !244
  store i32 1, ptr @flag_dump_noaddr, align 4, !tbaa !244
  %28 = load ptr, ptr @flag_compare_debug_opt, align 8, !tbaa !240
  %29 = icmp ne ptr %28, null
  %30 = load i32, ptr @flag_compare_debug, align 4
  %31 = icmp ne i32 %30, 0
  %32 = select i1 %29, i1 true, i1 %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %13
  %34 = load i32, ptr @dump_flags, align 4, !tbaa !244
  %35 = or i32 %34, 1048576
  store i32 %35, ptr @dump_flags, align 4, !tbaa !244
  br label %36

36:                                               ; preds = %13, %33
  store i8 1, ptr @final_insns_dump_p, align 1, !tbaa !256
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
  %46 = load i32, ptr %45, align 8, !tbaa !256
  br label %47

47:                                               ; preds = %39, %44
  %48 = phi i32 [ %46, %44 ], [ 0, %39 ]
  %49 = getelementptr inbounds %struct.rtx_def, ptr %40, i64 0, i32 1
  store i32 %48, ptr %49, align 8
  %50 = getelementptr inbounds %struct.rtx_def, ptr %40, i64 0, i32 1, i32 0, i32 0, i64 2
  %51 = load ptr, ptr %50, align 8, !tbaa !256
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %39, !llvm.loop !656

53:                                               ; preds = %47, %36, %8, %0
  %54 = phi ptr [ null, %8 ], [ null, %0 ], [ %6, %36 ], [ %6, %47 ]
  %55 = tail call ptr @get_insns() #22
  %56 = icmp eq ptr %55, null
  br i1 %56, label %75, label %57, !prof !299

57:                                               ; preds = %53
  %58 = icmp eq ptr %54, null
  br label %59

59:                                               ; preds = %57, %73
  %60 = phi ptr [ %55, %57 ], [ %62, %73 ]
  %61 = getelementptr inbounds %struct.rtx_def, ptr %60, i64 0, i32 1, i32 0, i32 0, i64 2
  %62 = load ptr, ptr %61, align 8, !tbaa !256
  %63 = getelementptr inbounds %struct.rtx_def, ptr %60, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %63, i8 0, i64 16, i1 false)
  br i1 %58, label %73, label %64, !prof !446

64:                                               ; preds = %59
  %65 = load i32, ptr %60, align 8
  %66 = and i32 %65, 65535
  %67 = icmp eq i32 %66, 13
  br i1 %67, label %68, label %71

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.rtx_def, ptr %60, i64 1
  %70 = load i32, ptr %69, align 8, !tbaa !256
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
  br i1 %74, label %75, label %59, !prof !371, !llvm.loop !657

75:                                               ; preds = %73, %53
  %76 = icmp eq ptr %54, null
  br i1 %76, label %85, label %77, !prof !290

77:                                               ; preds = %75
  store i32 %2, ptr @flag_dump_noaddr, align 4, !tbaa !244
  store i32 %1, ptr @flag_dump_unnumbered, align 4, !tbaa !244
  store i8 0, ptr @final_insns_dump_p, align 1, !tbaa !256
  %78 = tail call i32 @fclose(ptr noundef nonnull %54) #21
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %85, label %80

80:                                               ; preds = %77
  %81 = load ptr, ptr @flag_dump_final_insns, align 8, !tbaa !240
  %82 = tail call ptr @__errno_location() #22
  %83 = load i32, ptr %82, align 4, !tbaa !244
  %84 = tail call ptr @strerror(i32 noundef %83) #22
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.74, ptr noundef %81, ptr noundef %84) #22
  store ptr null, ptr @flag_dump_final_insns, align 8, !tbaa !240
  br label %85

85:                                               ; preds = %77, %80, %75
  store i32 0, ptr @flag_rerun_cse_after_global_opts, align 4, !tbaa !244
  store i32 0, ptr @reload_completed, align 4, !tbaa !244
  store i32 0, ptr @epilogue_completed, align 4, !tbaa !244
  store i32 0, ptr @regstack_completed, align 4, !tbaa !244
  tail call void @init_insn_lengths() #21
  tail call void @init_temp_slots() #22
  %86 = tail call i32 @free_bb_for_insn() #22
  tail call void @delete_tree_ssa() #22
  %87 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 49), align 8, !tbaa !658
  %88 = load ptr, ptr @current_function_decl, align 8, !tbaa !240
  %89 = tail call zeroext i8 %87(ptr noundef %88) #22
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %100, label %91, !prof !251

91:                                               ; preds = %85
  %92 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 23), align 8, !tbaa !659
  %93 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 22), align 4, !tbaa !660
  %94 = icmp ugt i32 %93, %92
  br i1 %94, label %95, label %96, !prof !289

95:                                               ; preds = %91
  br label %96

96:                                               ; preds = %95, %91
  %97 = phi i32 [ %93, %95 ], [ %92, %91 ]
  %98 = load ptr, ptr @current_function_decl, align 8, !tbaa !240
  %99 = tail call ptr @cgraph_rtl_info(ptr noundef %98) #22
  store i32 %97, ptr %99, align 4, !tbaa !661
  br label %100

100:                                              ; preds = %96, %85
  tail call void @init_recog_no_volatile() #22
  %101 = load ptr, ptr @cfun, align 8, !tbaa !240
  tail call void @free_after_parsing(ptr noundef %101) #22
  %102 = load ptr, ptr @cfun, align 8, !tbaa !240
  tail call void @free_after_compilation(ptr noundef %102) #22
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

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!238}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237}
!36 = !{ptr @app_disable, ptr @fputs, i64 1}
!37 = !{ptr @init_insn_lengths, ptr @free, i64 19953}
!38 = !{ptr @init_insn_lengths, ptr @VEC_int_heap_free, i64 6652}
!39 = !{ptr @VEC_int_heap_free, ptr @free, i64 6651}
!40 = !{ptr @get_attr_length, ptr @get_attr_length_1, i64 2163644}
!41 = !{ptr @get_attr_length_1, ptr @asm_noperands, i64 2089449}
!42 = !{ptr @get_attr_length_1, ptr @asm_insn_count, i64 2}
!43 = !{ptr @get_attr_length_1, ptr @get_attr_length_1, i64 20}
!44 = !{ptr @get_attr_min_length, ptr @get_attr_length_1, i64 470907}
!45 = !{ptr @insn_current_reference_address, ptr @align_fuzz, i64 862798}
!46 = !{ptr @align_fuzz, ptr @VEC_int_base_address, i64 746772}
!47 = !{ptr @compute_alignments, ptr @free, i64 6650}
!48 = !{ptr @compute_alignments, ptr @max_label_num, i64 6652}
!49 = !{ptr @compute_alignments, ptr @get_first_label_num, i64 6652}
!50 = !{ptr @compute_alignments, ptr @xcalloc, i64 6652}
!51 = !{ptr @compute_alignments, ptr @optimize_function_for_size_p, i64 6651}
!52 = !{ptr @compute_alignments, ptr @dump_flow_info, i64 1}
!53 = !{ptr @compute_alignments, ptr @flow_loops_dump, i64 1}
!54 = !{ptr @compute_alignments, ptr @loop_optimizer_init, i64 1}
!55 = !{ptr @compute_alignments, ptr @fprintf, i64 3}
!56 = !{ptr @compute_alignments, ptr @optimize_bb_for_size_p, i64 146281}
!57 = !{ptr @compute_alignments, ptr @ei_start_1, i64 100204}
!58 = !{ptr @compute_alignments, ptr @ei_cond, i64 322181}
!59 = !{ptr @compute_alignments, ptr @ei_next, i64 221977}
!60 = !{ptr @compute_alignments, ptr @fputc, i64 1}
!61 = !{ptr @compute_alignments, ptr @fwrite, i64 2}
!62 = !{ptr @compute_alignments, ptr @optimize_bb_for_speed_p, i64 65392}
!63 = !{ptr @compute_alignments, ptr @loop_optimizer_finalize, i64 1}
!64 = !{ptr @compute_alignments, ptr @free_dominance_info, i64 1}
!65 = !{ptr @ei_cond, ptr @ei_end_p, i64 322328}
!66 = !{ptr @ei_cond, ptr @ei_edge, i64 222079}
!67 = !{ptr @ei_next, ptr @ei_container, i64 444157}
!68 = !{ptr @ei_next, ptr @VEC_edge_base_length, i64 222079}
!69 = !{ptr @ei_next, ptr @fancy_abort, i64 1}
!70 = !{ptr @ei_end_p, ptr @ei_container, i64 644655}
!71 = !{ptr @ei_end_p, ptr @VEC_edge_base_length, i64 322328}
!72 = !{ptr @ei_edge, ptr @ei_container, i64 444157}
!73 = !{ptr @ei_edge, ptr @VEC_edge_base_index, i64 222079}
!74 = !{ptr @ei_container, ptr @fancy_abort, i64 1}
!75 = !{ptr @shorten_branches, ptr @get_max_uid, i64 6652}
!76 = !{ptr @shorten_branches, ptr @free, i64 13304}
!77 = !{ptr @shorten_branches, ptr @xmalloc, i64 13304}
!78 = !{ptr @shorten_branches, ptr @max_label_num, i64 6853}
!79 = !{ptr @shorten_branches, ptr @xrealloc, i64 201}
!80 = !{ptr @shorten_branches, ptr @fancy_abort, i64 1}
!81 = !{ptr @shorten_branches, ptr @get_insns, i64 6652}
!82 = !{ptr @shorten_branches, ptr @next_nonnote_insn, i64 1226604}
!83 = !{ptr @shorten_branches, ptr @VEC_int_heap_alloc, i64 6652}
!84 = !{ptr @shorten_branches, ptr @VEC_int_heap_safe_grow, i64 6652}
!85 = !{ptr @shorten_branches, ptr @VEC_int_base_address, i64 8602613}
!86 = !{ptr @shorten_branches, ptr @xcalloc, i64 13304}
!87 = !{ptr @shorten_branches, ptr @get_last_insn, i64 6652}
!88 = !{ptr @shorten_branches, ptr @asm_noperands, i64 1213243}
!89 = !{ptr @shorten_branches, ptr @asm_insn_count, i64 18}
!90 = !{ptr @shorten_branches, ptr @insn_default_length, i64 1207541}
!91 = !{ptr @shorten_branches, ptr @insn_variable_length_p, i64 1207519}
!92 = !{ptr @shorten_branches, ptr @insn_current_length, i64 841506}
!93 = !{ptr @final_addr_vec_align, ptr @exact_log2, i64 853}
!94 = !{ptr @VEC_int_heap_alloc, ptr @vec_heap_o_reserve_exact, i64 6652}
!95 = !{ptr @VEC_int_heap_safe_grow, ptr @VEC_int_heap_reserve_exact, i64 6652}
!96 = !{ptr @VEC_int_heap_reserve_exact, ptr @VEC_int_base_space, i64 6652}
!97 = !{ptr @VEC_int_heap_reserve_exact, ptr @vec_heap_o_reserve_exact, i64 1}
!98 = !{ptr @remap_debug_filename, ptr @strncmp, i64 1}
!99 = !{ptr @final_start_function, ptr @locator_file, i64 6652}
!100 = !{ptr @final_start_function, ptr @locator_line, i64 6652}
!101 = !{ptr @final_start_function, ptr @dwarf2_debug_info_emitted_p, i64 6652}
!102 = !{ptr @final_start_function, ptr @dwarf2out_begin_prologue, i64 6651}
!103 = !{ptr @final_start_function, ptr @dwarf2out_do_frame, i64 6652}
!104 = !{ptr @final_start_function, ptr @dwarf2out_frame_debug, i64 1}
!105 = !{ptr @final_start_function, ptr @reemit_insn_block_notes, i64 1}
!106 = !{ptr @final_start_function, ptr @number_blocks, i64 1}
!107 = !{ptr @final_start_function, ptr @get_frame_size, i64 6653}
!108 = !{ptr @final_end_function, ptr @app_disable, i64 6652}
!109 = !{ptr @final_end_function, ptr @get_frame_size, i64 6652}
!110 = !{ptr @final_end_function, ptr @dwarf2_debug_info_emitted_p, i64 6652}
!111 = !{ptr @final_end_function, ptr @dwarf2out_do_frame, i64 6651}
!112 = !{ptr @final_end_function, ptr @dwarf2out_end_epilogue, i64 1}
!113 = !{ptr @final, ptr @init_recog, i64 6652}
!114 = !{ptr @final, ptr @VEC_int_base_length, i64 1761095}
!115 = !{ptr @final, ptr @VEC_int_base_address, i64 1761094}
!116 = !{ptr @final, ptr @final_scan_insn, i64 1761095}
!117 = !{ptr @final_scan_insn, ptr @dwarf2out_do_frame, i64 1370342}
!118 = !{ptr @final_scan_insn, ptr @dwarf2out_switch_text_section, i64 1}
!119 = !{ptr @final_scan_insn, ptr @current_function_section, i64 856}
!120 = !{ptr @final_scan_insn, ptr @switch_to_section, i64 2565}
!121 = !{ptr @final_scan_insn, ptr @fprintf, i64 31444}
!122 = !{ptr @final_scan_insn, ptr @profile_after_prologue, i64 6653}
!123 = !{ptr @final_scan_insn, ptr @dwarf2out_begin_epilogue, i64 1}
!124 = !{ptr @final_scan_insn, ptr @dwarf2out_frame_debug_restore_state, i64 1}
!125 = !{ptr @final_scan_insn, ptr @app_disable, i64 1343091}
!126 = !{ptr @final_scan_insn, ptr @fancy_abort, i64 2}
!127 = !{ptr @final_scan_insn, ptr @dwarf2out_frame_debug, i64 13}
!128 = !{ptr @final_scan_insn, ptr @fputs, i64 29731}
!129 = !{ptr @final_scan_insn, ptr @next_nonnote_insn, i64 127880}
!130 = !{ptr @final_scan_insn, ptr @final_addr_vec_align, i64 854}
!131 = !{ptr @final_scan_insn, ptr @output_alternate_entry_point, i64 1}
!132 = !{ptr @final_scan_insn, ptr @ix86_output_addr_vec_elt, i64 55402}
!133 = !{ptr @final_scan_insn, ptr @ix86_output_addr_diff_elt, i64 1}
!134 = !{ptr @final_scan_insn, ptr @notice_source_line, i64 1207704}
!135 = !{ptr @final_scan_insn, ptr @app_enable, i64 2}
!136 = !{ptr @final_scan_insn, ptr @expand_location, i64 2}
!137 = !{ptr @final_scan_insn, ptr @asm_noperands, i64 1207705}
!138 = !{ptr @final_scan_insn, ptr @decode_asm_operands, i64 1}
!139 = !{ptr @final_scan_insn, ptr @final_scan_insn, i64 193}
!140 = !{ptr @final_scan_insn, ptr @recog_memoized, i64 1207702}
!141 = !{ptr @final_scan_insn, ptr @cleanup_subreg_operands, i64 1207702}
!142 = !{ptr @final_scan_insn, ptr @print_rtl_single, i64 1}
!143 = !{ptr @final_scan_insn, ptr @constrain_operands_cached, i64 1207702}
!144 = !{ptr @final_scan_insn, ptr @_fatal_insn_not_found, i64 1}
!145 = !{ptr @final_scan_insn, ptr @get_insn_template, i64 1207702}
!146 = !{ptr @final_scan_insn, ptr @prev_nonnote_insn, i64 1}
!147 = !{ptr @final_scan_insn, ptr @delete_insn, i64 16}
!148 = !{ptr @final_scan_insn, ptr @call_from_call_insn, i64 88303}
!149 = !{ptr @final_scan_insn, ptr @assemble_external, i64 85191}
!150 = !{ptr @final_scan_insn, ptr @output_asm_insn, i64 1207700}
!151 = !{ptr @get_insn_template, ptr @fancy_abort, i64 2}
!152 = !{ptr @profile_after_prologue, ptr @profile_function, i64 1}
!153 = !{ptr @notice_source_line, ptr @insn_file, i64 1207710}
!154 = !{ptr @notice_source_line, ptr @insn_line, i64 1207710}
!155 = !{ptr @output_asm_insn, ptr @putc, i64 9670465}
!156 = !{ptr @output_asm_insn, ptr @output_asm_operand_names, i64 2}
!157 = !{ptr @output_asm_insn, ptr @output_asm_name, i64 2}
!158 = !{ptr @output_asm_insn, ptr @output_operand_lossage, i64 5}
!159 = !{ptr @output_asm_insn, ptr @fprintf, i64 1}
!160 = !{ptr @output_asm_insn, ptr @strtoul, i64 2193953}
!161 = !{ptr @output_asm_insn, ptr @output_asm_label, i64 204291}
!162 = !{ptr @output_asm_insn, ptr @output_address, i64 15852}
!163 = !{ptr @output_asm_insn, ptr @constant_address_p, i64 1}
!164 = !{ptr @output_asm_insn, ptr @output_addr_const, i64 1}
!165 = !{ptr @output_asm_insn, ptr @output_operand, i64 2127950}
!166 = !{ptr @recog_memoized, ptr @recog, i64 1}
!167 = !{ptr @cleanup_subreg_operands, ptr @extract_insn_cached, i64 2388990}
!168 = !{ptr @cleanup_subreg_operands, ptr @alter_subreg, i64 3755}
!169 = !{ptr @cleanup_subreg_operands, ptr @walk_alter_subreg, i64 1262252}
!170 = !{ptr @cleanup_subreg_operands, ptr @df_insn_rescan, i64 3718}
!171 = !{ptr @call_from_call_insn, ptr @fancy_abort, i64 2}
!172 = !{ptr @asm_fprintf, ptr @memchr, i64 406182}
!173 = !{ptr @asm_fprintf, ptr @putc, i64 2}
!174 = !{ptr @asm_fprintf, ptr @fprintf, i64 203091}
!175 = !{ptr @asm_fprintf, ptr @fputs, i64 203084}
!176 = !{ptr @asm_fprintf, ptr @fancy_abort, i64 1}
!177 = !{ptr @alter_subreg, ptr @adjust_address_1, i64 596}
!178 = !{ptr @alter_subreg, ptr @simplify_subreg, i64 3157}
!179 = !{ptr @walk_alter_subreg, ptr @walk_alter_subreg, i64 4030850}
!180 = !{ptr @walk_alter_subreg, ptr @alter_subreg, i64 1}
!181 = !{ptr @output_asm_label, ptr @sprintf, i64 205144}
!182 = !{ptr @output_asm_label, ptr @output_operand_lossage, i64 1}
!183 = !{ptr @output_asm_label, ptr @assemble_name, i64 205145}
!184 = !{ptr @output_address, ptr @walk_alter_subreg, i64 604367}
!185 = !{ptr @output_address, ptr @print_operand_address, i64 604367}
!186 = !{ptr @output_addr_const, ptr @putc, i64 1}
!187 = !{ptr @output_addr_const, ptr @mark_decl_referenced, i64 187598}
!188 = !{ptr @output_addr_const, ptr @assemble_external, i64 187598}
!189 = !{ptr @output_addr_const, ptr @assemble_name, i64 187687}
!190 = !{ptr @output_addr_const, ptr @sprintf, i64 2}
!191 = !{ptr @output_addr_const, ptr @fprintf, i64 512771}
!192 = !{ptr @output_addr_const, ptr @output_addr_const, i64 67096}
!193 = !{ptr @output_addr_const, ptr @output_operand_lossage, i64 1}
!194 = !{ptr @output_addr_const, ptr @fputc, i64 22269}
!195 = !{ptr @output_addr_const, ptr @simplify_subtraction, i64 1}
!196 = !{ptr @output_addr_const, ptr @output_addr_const_extra, i64 1}
!197 = !{ptr @output_operand, ptr @alter_subreg, i64 1}
!198 = !{ptr @output_operand, ptr @rhs_regno, i64 909641}
!199 = !{ptr @output_operand, ptr @fancy_abort, i64 1}
!200 = !{ptr @output_operand, ptr @print_operand, i64 2127960}
!201 = !{ptr @output_operand, ptr @for_each_rtx, i64 1973816}
!202 = !{ptr @mark_symbol_ref_as_used, ptr @assemble_external, i64 169949}
!203 = !{ptr @leaf_function_p, ptr @get_insns, i64 6650}
!204 = !{ptr @rest_of_handle_final, ptr @make_decl_rtl, i64 5720}
!205 = !{ptr @rest_of_handle_final, ptr @fancy_abort, i64 2}
!206 = !{ptr @rest_of_handle_final, ptr @assemble_start_function, i64 6652}
!207 = !{ptr @rest_of_handle_final, ptr @get_insns, i64 13304}
!208 = !{ptr @rest_of_handle_final, ptr @final_start_function, i64 6652}
!209 = !{ptr @rest_of_handle_final, ptr @final, i64 6652}
!210 = !{ptr @rest_of_handle_final, ptr @final_end_function, i64 6652}
!211 = !{ptr @rest_of_handle_final, ptr @assemble_end_function, i64 6652}
!212 = !{ptr @rest_of_handle_final, ptr @output_function_exception_table, i64 6652}
!213 = !{ptr @rest_of_handle_final, ptr @free_reg_info, i64 6652}
!214 = !{ptr @rest_of_handle_final, ptr @fflush, i64 1}
!215 = !{ptr @rest_of_handle_final, ptr @timevar_push_1, i64 1}
!216 = !{ptr @rest_of_handle_final, ptr @timevar_pop_1, i64 1}
!217 = !{ptr @rest_of_handle_final, ptr @decl_init_priority_lookup, i64 1}
!218 = !{ptr @rest_of_handle_final, ptr @decl_fini_priority_lookup, i64 1}
!219 = !{ptr @rest_of_handle_shorten_branches, ptr @get_insns, i64 6652}
!220 = !{ptr @rest_of_handle_shorten_branches, ptr @shorten_branches, i64 6652}
!221 = !{ptr @rest_of_clean_state, ptr @fopen_unlocked, i64 1}
!222 = !{ptr @rest_of_clean_state, ptr @decl_assembler_name, i64 1}
!223 = !{ptr @rest_of_clean_state, ptr @fprintf, i64 1}
!224 = !{ptr @rest_of_clean_state, ptr @get_insns, i64 6653}
!225 = !{ptr @rest_of_clean_state, ptr @print_rtl_single, i64 1}
!226 = !{ptr @rest_of_clean_state, ptr @fclose, i64 1}
!227 = !{ptr @rest_of_clean_state, ptr @__errno_location, i64 1}
!228 = !{ptr @rest_of_clean_state, ptr @strerror, i64 1}
!229 = !{ptr @rest_of_clean_state, ptr @error, i64 1}
!230 = !{ptr @rest_of_clean_state, ptr @init_insn_lengths, i64 6652}
!231 = !{ptr @rest_of_clean_state, ptr @init_temp_slots, i64 6652}
!232 = !{ptr @rest_of_clean_state, ptr @free_bb_for_insn, i64 6652}
!233 = !{ptr @rest_of_clean_state, ptr @delete_tree_ssa, i64 6652}
!234 = !{ptr @rest_of_clean_state, ptr @cgraph_rtl_info, i64 6651}
!235 = !{ptr @rest_of_clean_state, ptr @init_recog_no_volatile, i64 6652}
!236 = !{ptr @rest_of_clean_state, ptr @free_after_parsing, i64 6652}
!237 = !{ptr @rest_of_clean_state, ptr @free_after_compilation, i64 6652}
!238 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!239 = !{!"function_entry_count", i64 1}
!240 = !{!241, !241, i64 0}
!241 = !{!"any pointer", !242, i64 0}
!242 = !{!"omnipotent char", !243, i64 0}
!243 = !{!"Simple C/C++ TBAA"}
!244 = !{!245, !245, i64 0}
!245 = !{!"int", !242, i64 0}
!246 = !{!"function_entry_count", i64 6652}
!247 = !{!"function_entry_count", i64 16914}
!248 = !{!"function_entry_count", i64 0}
!249 = !{!"function_entry_count", i64 1359299}
!250 = !{!"branch_weights", i32 1, i32 1359300}
!251 = !{!"branch_weights", i32 1, i32 6653}
!252 = !{!"final.c:VEC_int_heap_free"}
!253 = !{!"function_entry_count", i64 2163644}
!254 = !{!"function_entry_count", i64 2634551}
!255 = !{!"final.c:get_attr_length_1"}
!256 = !{!242, !242, i64 0}
!257 = !{!"branch_weights", i32 1, i32 2634552}
!258 = !{!"branch_weights", i32 5, i32 2102238, i32 500387, i32 31929}
!259 = !{ptr @insn_default_length, ptr @insn_min_length}
!260 = !{!"branch_weights", i32 15636, i32 -382668081}
!261 = !{!"branch_weights", i32 -47086521, i32 25975730, i32 8131, i32 2033}
!262 = !{!"branch_weights", i32 1, i32 2089459}
!263 = !{!264, !245, i64 0}
!264 = !{!"rtvec_def", !245, i64 0, !242, i64 8}
!265 = distinct !{!265, !266}
!266 = !{!"llvm.loop.mustprogress"}
!267 = !{!"final.c:asm_insn_count"}
!268 = distinct !{!268, !266}
!269 = !{!"function_entry_count", i64 470907}
!270 = !{!"function_entry_count", i64 127879}
!271 = !{!"branch_weights", i32 137, i32 127744}
!272 = !{!273, !274, i64 0}
!273 = !{!"label_alignment", !274, i64 0, !274, i64 2}
!274 = !{!"short", !242, i64 0}
!275 = !{!273, !274, i64 2}
!276 = !{!"function_entry_count", i64 862800}
!277 = !{!"branch_weights", i32 1, i32 862801}
!278 = !{!"branch_weights", i32 862801, i32 1}
!279 = !{!"branch_weights", i32 496063, i32 366739}
!280 = !{!"final.c:align_fuzz"}
!281 = !{!"branch_weights", i32 94471, i32 608027}
!282 = !{!"branch_weights", i32 160304, i32 447724}
!283 = !{!"branch_weights", i32 1, i32 447724}
!284 = !{!"branch_weights", i32 608027, i32 0}
!285 = distinct !{!285, !266}
!286 = !{!"function_entry_count", i64 12738295}
!287 = !{!"final.c:VEC_int_base_address"}
!288 = !{!"branch_weights", i32 1, i32 12738296}
!289 = !{!"branch_weights", i32 2, i32 6652}
!290 = !{!"branch_weights", i32 6653, i32 1}
!291 = !{!292, !241, i64 8}
!292 = !{!"function", !241, i64 0, !241, i64 8, !241, i64 16, !241, i64 24, !241, i64 32, !241, i64 40, !241, i64 48, !241, i64 56, !241, i64 64, !241, i64 72, !241, i64 80, !241, i64 88, !241, i64 96, !245, i64 104, !245, i64 108, !245, i64 112, !245, i64 116, !245, i64 120, !245, i64 124, !241, i64 128, !245, i64 136, !245, i64 137, !245, i64 138, !245, i64 138, !245, i64 138, !245, i64 138, !245, i64 138, !245, i64 138, !245, i64 138, !245, i64 139, !245, i64 139, !245, i64 139, !245, i64 139, !245, i64 139, !245, i64 139, !245, i64 139}
!293 = !{!294, !241, i64 0}
!294 = !{!"control_flow_graph", !241, i64 0, !241, i64 8, !241, i64 16, !245, i64 24, !245, i64 28, !245, i64 32, !241, i64 40, !245, i64 48, !242, i64 52, !242, i64 60, !245, i64 68, !245, i64 72}
!295 = !{!294, !241, i64 8}
!296 = !{!297, !241, i64 56}
!297 = !{!"basic_block_def", !241, i64 0, !241, i64 8, !241, i64 16, !241, i64 24, !242, i64 32, !241, i64 48, !241, i64 56, !242, i64 64, !298, i64 72, !245, i64 80, !245, i64 84, !245, i64 88, !245, i64 92, !245, i64 96}
!298 = !{!"long", !242, i64 0}
!299 = !{!"branch_weights", i32 1, i32 6652}
!300 = !{!297, !245, i64 88}
!301 = !{!"branch_weights", i32 6652, i32 241819}
!302 = distinct !{!302, !266}
!303 = !{!304, !245, i64 8}
!304 = !{!"param_info", !241, i64 0, !245, i64 8, !242, i64 12, !245, i64 16, !245, i64 20, !241, i64 24}
!305 = !{!306, !241, i64 0}
!306 = !{!"rtl_bb_info", !241, i64 0, !241, i64 8, !241, i64 16, !241, i64 24, !245, i64 32}
!307 = !{!"branch_weights", i32 146348, i32 102124}
!308 = !{!"branch_weights", i32 100250, i32 46099}
!309 = !{!"branch_weights", i32 148222, i32 1}
!310 = !{!297, !245, i64 80}
!311 = !{!297, !241, i64 24}
!312 = !{!313, !245, i64 0}
!313 = !{!"loop", !245, i64 0, !245, i64 4, !241, i64 8, !241, i64 16, !314, i64 24, !245, i64 32, !245, i64 36, !241, i64 40, !241, i64 48, !241, i64 56, !241, i64 64, !241, i64 72, !315, i64 80, !315, i64 96, !242, i64 112, !242, i64 113, !245, i64 116, !241, i64 120, !241, i64 128, !242, i64 136, !241, i64 144}
!314 = !{!"lpt_decision", !245, i64 0, !245, i64 4}
!315 = !{!"", !298, i64 0, !298, i64 8}
!316 = !{!297, !245, i64 84}
!317 = !{i64 0, i64 4, !244, i64 8, i64 8, !240}
!318 = !{i64 0, i64 8, !240}
!319 = !{i8 0, i8 2}
!320 = !{!"branch_weights", i32 1, i32 100249}
!321 = !{!322, !245, i64 48}
!322 = !{!"edge_def", !241, i64 0, !241, i64 8, !242, i64 16, !241, i64 24, !241, i64 32, !245, i64 40, !245, i64 44, !245, i64 48, !245, i64 52, !298, i64 56}
!323 = !{!322, !241, i64 0}
!324 = !{!322, !245, i64 52}
!325 = !{!"branch_weights", i32 156658, i32 65423}
!326 = !{!"branch_weights", i32 100249, i32 121831}
!327 = distinct !{!327, !266}
!328 = !{!"branch_weights", i32 100250, i32 1}
!329 = !{!313, !241, i64 48}
!330 = !{!313, !241, i64 8}
!331 = !{!"branch_weights", i32 34828, i32 65423}
!332 = !{!"branch_weights", i32 21716, i32 13113}
!333 = !{!297, !241, i64 48}
!334 = !{!"branch_weights", i32 2049, i32 11065}
!335 = !{!"branch_weights", i32 286, i32 1764}
!336 = !{!"branch_weights", i32 23479, i32 1}
!337 = !{!"branch_weights", i32 -1132550322, i32 1117882802}
!338 = !{!"branch_weights", i32 6351, i32 41988}
!339 = !{!"branch_weights", i32 6351, i32 1}
!340 = distinct !{!340, !266}
!341 = !{!"function_entry_count", i64 100249}
!342 = !{!"final.c:ei_start_1"}
!343 = !{!"function_entry_count", i64 322328}
!344 = !{!"final.c:ei_cond"}
!345 = !{!"branch_weights", i32 222080, i32 100250}
!346 = !{!"function_entry_count", i64 222079}
!347 = !{!"final.c:ei_next"}
!348 = !{!"branch_weights", i32 1, i32 222080}
!349 = !{!"branch_weights", i32 222080, i32 1}
!350 = !{!351, !245, i64 0}
!351 = !{!"", !245, i64 0, !241, i64 8}
!352 = !{!"final.c:ei_end_p"}
!353 = !{!"branch_weights", i32 1, i32 322329}
!354 = !{!"final.c:ei_edge"}
!355 = !{!"function_entry_count", i64 544407}
!356 = !{!"final.c:VEC_edge_base_length"}
!357 = !{!"branch_weights", i32 1, i32 544408}
!358 = !{!359, !245, i64 0}
!359 = !{!"VEC_edge_base", !245, i64 0, !245, i64 4, !242, i64 8}
!360 = !{!"function_entry_count", i64 1532972}
!361 = !{!"final.c:ei_container"}
!362 = !{!"branch_weights", i32 1, i32 1532973}
!363 = !{!"final.c:VEC_edge_base_index"}
!364 = !{!"branch_weights", i32 6453, i32 201}
!365 = !{!"branch_weights", i32 1, i32 201}
!366 = !{!"branch_weights", i32 348112370, i32 151689500}
!367 = !{!"branch_weights", i32 29738, i32 98143}
!368 = !{!"branch_weights", i32 1, i32 127880}
!369 = !{!"branch_weights", i32 1077, i32 126804}
!370 = !{!"branch_weights", i32 1, i32 127027}
!371 = !{!"branch_weights", i32 6652, i32 1754708}
!372 = distinct !{!372, !266}
!373 = !{!"branch_weights", i32 127880, i32 1633481}
!374 = !{!"branch_weights", i32 1648094624, i32 499389024}
!375 = !{!"branch_weights", i32 29737, i32 1}
!376 = !{!"branch_weights", i32 89212, i32 29737}
!377 = distinct !{!377, !266}
!378 = distinct !{!378, !266}
!379 = !{!"branch_weights", i32 98143, i32 29738}
!380 = !{!"branch_weights", i32 -1823278649, i32 722881563, i32 130426441, i32 260303097, i32 2035}
!381 = !{!"branch_weights", i32 1214276, i32 1}
!382 = !{!"branch_weights", i32 -967093919, i32 2342141, i32 2741, i32 2742}
!383 = !{!"branch_weights", i32 1, i32 854}
!384 = !{!"branch_weights", i32 1, i32 1213423}
!385 = !{!"branch_weights", i32 -998329232, i32 2728, i32 15575428, i32 19107}
!386 = distinct !{!386, !266}
!387 = distinct !{!387, !266}
!388 = !{!"branch_weights", i32 1, i32 12540}
!389 = !{!"branch_weights", i32 333272, i32 4133815}
!390 = !{!"branch_weights", i32 70870, i32 262403}
!391 = !{!"branch_weights", i32 83410, i32 4050406}
!392 = !{!"branch_weights", i32 3583832, i32 549984}
!393 = !{!"branch_weights", i32 2266863, i32 1316970}
!394 = !{!"branch_weights", i32 1, i32 2266863}
!395 = distinct !{!395, !266}
!396 = !{!"branch_weights", i32 1, i32 549984}
!397 = distinct !{!397, !266}
!398 = !{!"branch_weights", i32 477249, i32 72736}
!399 = !{!"branch_weights", i32 12540, i32 4454546}
!400 = distinct !{!400, !266}
!401 = !{!"branch_weights", i32 1403125591, i32 744358057}
!402 = distinct !{!402, !266}
!403 = !{!"function_entry_count", i64 853}
!404 = !{!"final.c:final_addr_vec_align"}
!405 = !{!"final.c:VEC_int_heap_alloc"}
!406 = !{!"final.c:VEC_int_heap_safe_grow"}
!407 = !{!408, !245, i64 0}
!408 = !{!"VEC_int_base", !245, i64 0, !245, i64 4, !242, i64 8}
!409 = !{}
!410 = !{!"function_entry_count", i64 1768011}
!411 = !{!"final.c:VEC_int_base_length"}
!412 = !{!"branch_weights", i32 1, i32 1768012}
!413 = !{!"final.c:VEC_int_heap_reserve_exact"}
!414 = !{i32 0, i32 2}
!415 = !{!"final.c:VEC_int_base_space"}
!416 = !{!408, !245, i64 4}
!417 = !{!418, !241, i64 0}
!418 = !{!"debug_prefix_map", !241, i64 0, !241, i64 8, !298, i64 16, !298, i64 24, !241, i64 32}
!419 = !{!418, !298, i64 16}
!420 = !{!418, !241, i64 8}
!421 = !{!418, !298, i64 24}
!422 = !{!418, !241, i64 32}
!423 = !{!"branch_weights", i32 1, i32 1}
!424 = !{!"branch_weights", i32 1, i32 0}
!425 = distinct !{!425, !266}
!426 = !{!427, !241, i64 88}
!427 = !{!"gcc_debug_hooks", !241, i64 0, !241, i64 8, !241, i64 16, !241, i64 24, !241, i64 32, !241, i64 40, !241, i64 48, !241, i64 56, !241, i64 64, !241, i64 72, !241, i64 80, !241, i64 88, !241, i64 96, !241, i64 104, !241, i64 112, !241, i64 120, !241, i64 128, !241, i64 136, !241, i64 144, !241, i64 152, !241, i64 160, !241, i64 168, !241, i64 176, !241, i64 184, !241, i64 192, !241, i64 200, !241, i64 208, !241, i64 216, !241, i64 224, !241, i64 232, !241, i64 240, !245, i64 248}
!428 = !{!298, !298, i64 0}
!429 = !{!430, !241, i64 160}
!430 = !{!"gcc_target", !431, i64 0, !433, i64 368, !434, i64 664, !245, i64 744, !241, i64 752, !241, i64 760, !241, i64 768, !241, i64 776, !241, i64 784, !241, i64 792, !241, i64 800, !241, i64 808, !241, i64 816, !241, i64 824, !241, i64 832, !241, i64 840, !241, i64 848, !241, i64 856, !241, i64 864, !241, i64 872, !241, i64 880, !241, i64 888, !241, i64 896, !241, i64 904, !241, i64 912, !241, i64 920, !241, i64 928, !241, i64 936, !241, i64 944, !241, i64 952, !241, i64 960, !241, i64 968, !241, i64 976, !241, i64 984, !241, i64 992, !241, i64 1000, !241, i64 1008, !241, i64 1016, !241, i64 1024, !241, i64 1032, !241, i64 1040, !241, i64 1048, !241, i64 1056, !298, i64 1064, !298, i64 1072, !241, i64 1080, !241, i64 1088, !241, i64 1096, !241, i64 1104, !241, i64 1112, !241, i64 1120, !241, i64 1128, !241, i64 1136, !241, i64 1144, !241, i64 1152, !241, i64 1160, !241, i64 1168, !435, i64 1176, !241, i64 1232, !241, i64 1240, !241, i64 1248, !241, i64 1256, !241, i64 1264, !241, i64 1272, !241, i64 1280, !241, i64 1288, !241, i64 1296, !241, i64 1304, !241, i64 1312, !241, i64 1320, !241, i64 1328, !241, i64 1336, !241, i64 1344, !241, i64 1352, !241, i64 1360, !241, i64 1368, !241, i64 1376, !241, i64 1384, !241, i64 1392, !241, i64 1400, !241, i64 1408, !241, i64 1416, !241, i64 1424, !241, i64 1432, !241, i64 1440, !241, i64 1448, !241, i64 1456, !298, i64 1464, !436, i64 1472, !241, i64 1664, !241, i64 1672, !241, i64 1680, !241, i64 1688, !241, i64 1696, !241, i64 1704, !241, i64 1712, !241, i64 1720, !241, i64 1728, !241, i64 1736, !241, i64 1744, !241, i64 1752, !241, i64 1760, !241, i64 1768, !241, i64 1776, !437, i64 1784, !438, i64 1792, !439, i64 1896, !440, i64 1968, !241, i64 2016, !242, i64 2024, !242, i64 2025, !242, i64 2026, !242, i64 2027, !242, i64 2028, !242, i64 2029, !242, i64 2030, !242, i64 2031, !242, i64 2032, !242, i64 2033, !242, i64 2034, !242, i64 2035}
!431 = !{!"asm_out", !241, i64 0, !241, i64 8, !241, i64 16, !432, i64 24, !432, i64 56, !241, i64 88, !241, i64 96, !241, i64 104, !241, i64 112, !241, i64 120, !241, i64 128, !241, i64 136, !241, i64 144, !241, i64 152, !241, i64 160, !241, i64 168, !241, i64 176, !241, i64 184, !241, i64 192, !241, i64 200, !241, i64 208, !241, i64 216, !241, i64 224, !241, i64 232, !241, i64 240, !241, i64 248, !241, i64 256, !241, i64 264, !241, i64 272, !241, i64 280, !241, i64 288, !241, i64 296, !241, i64 304, !241, i64 312, !241, i64 320, !241, i64 328, !241, i64 336, !241, i64 344, !241, i64 352, !241, i64 360}
!432 = !{!"asm_int_op", !241, i64 0, !241, i64 8, !241, i64 16, !241, i64 24}
!433 = !{!"sched", !241, i64 0, !241, i64 8, !241, i64 16, !241, i64 24, !241, i64 32, !241, i64 40, !241, i64 48, !241, i64 56, !241, i64 64, !241, i64 72, !241, i64 80, !241, i64 88, !241, i64 96, !241, i64 104, !241, i64 112, !241, i64 120, !241, i64 128, !241, i64 136, !241, i64 144, !241, i64 152, !241, i64 160, !241, i64 168, !241, i64 176, !241, i64 184, !241, i64 192, !241, i64 200, !241, i64 208, !241, i64 216, !241, i64 224, !241, i64 232, !241, i64 240, !241, i64 248, !241, i64 256, !241, i64 264, !241, i64 272, !241, i64 280, !241, i64 288}
!434 = !{!"vectorize", !241, i64 0, !241, i64 8, !241, i64 16, !241, i64 24, !241, i64 32, !241, i64 40, !241, i64 48, !241, i64 56, !241, i64 64, !241, i64 72}
!435 = !{!"addr_space", !241, i64 0, !241, i64 8, !241, i64 16, !241, i64 24, !241, i64 32, !241, i64 40, !241, i64 48}
!436 = !{!"calls", !241, i64 0, !241, i64 8, !241, i64 16, !241, i64 24, !241, i64 32, !241, i64 40, !241, i64 48, !241, i64 56, !241, i64 64, !241, i64 72, !241, i64 80, !241, i64 88, !241, i64 96, !241, i64 104, !241, i64 112, !241, i64 120, !241, i64 128, !241, i64 136, !241, i64 144, !241, i64 152, !241, i64 160, !241, i64 168, !241, i64 176, !241, i64 184}
!437 = !{!"c", !241, i64 0}
!438 = !{!"cxx", !241, i64 0, !241, i64 8, !241, i64 16, !241, i64 24, !241, i64 32, !241, i64 40, !241, i64 48, !241, i64 56, !241, i64 64, !241, i64 72, !241, i64 80, !241, i64 88, !241, i64 96}
!439 = !{!"emutls", !241, i64 0, !241, i64 8, !241, i64 16, !241, i64 24, !241, i64 32, !241, i64 40, !241, i64 48, !241, i64 56, !242, i64 64, !242, i64 65}
!440 = !{!"target_option_hooks", !241, i64 0, !241, i64 8, !241, i64 16, !241, i64 24, !241, i64 32, !241, i64 40}
!441 = !{!"function_entry_count", i64 13304}
!442 = !{!"final.c:dwarf2_debug_info_emitted_p"}
!443 = !{!427, !241, i64 120}
!444 = !{!430, !241, i64 184}
!445 = !{!427, !241, i64 104}
!446 = !{!"branch_weights", i32 1761360, i32 1}
!447 = distinct !{!447, !266}
!448 = !{!"function_entry_count", i64 1761359}
!449 = !{!"branch_weights", i32 1214276, i32 355132, i32 64075, i32 127880}
!450 = !{!"branch_weights", i32 1, i32 77100, i32 1, i32 248465, i32 1, i32 1, i32 6653, i32 10263, i32 1, i32 6653, i32 1, i32 1, i32 6003, i32 1}
!451 = !{!427, !241, i64 200}
!452 = !{!"branch_weights", i32 248465, i32 1}
!453 = !{!"branch_weights", i32 4, i32 248462}
!454 = !{!297, !245, i64 92}
!455 = !{!430, !241, i64 136}
!456 = !{!430, !241, i64 168}
!457 = !{!"branch_weights", i32 6570, i32 84}
!458 = !{!"branch_weights", i32 10263, i32 1}
!459 = !{!430, !241, i64 176}
!460 = !{!427, !241, i64 96}
!461 = !{!"branch_weights", i32 81, i32 6573}
!462 = !{!427, !241, i64 56}
!463 = !{!464, !241, i64 0}
!464 = !{!"", !241, i64 0, !245, i64 8, !245, i64 12, !242, i64 16}
!465 = !{!464, !245, i64 8}
!466 = !{!427, !241, i64 64}
!467 = !{!427, !241, i64 192}
!468 = !{!"branch_weights", i32 64075, i32 1}
!469 = !{!"branch_weights", i32 59477, i32 884348644}
!470 = !{!"branch_weights", i32 1, i32 29738}
!471 = !{!"branch_weights", i32 29738, i32 1}
!472 = !{!"branch_weights", i32 884348644, i32 59477}
!473 = !{!"branch_weights", i32 127880, i32 1}
!474 = !{!"branch_weights", i32 125919, i32 1962}
!475 = !{!427, !241, i64 176}
!476 = !{!"branch_weights", i32 192374, i32 50176}
!477 = !{!430, !241, i64 240}
!478 = !{!"branch_weights", i32 127027, i32 1}
!479 = !{!"branch_weights", i32 -510548792, i32 17880043, i32 21934, i32 2676048, i32 3133}
!480 = !{!"branch_weights", i32 853, i32 1}
!481 = !{!"branch_weights", i32 55339, i32 1}
!482 = !{!"branch_weights", i32 853, i32 54486}
!483 = distinct !{!483, !266}
!484 = !{!"branch_weights", i32 1207712, i32 1}
!485 = !{!"branch_weights", i32 797331, i32 410382}
!486 = !{!427, !241, i64 80}
!487 = !{!"branch_weights", i32 1, i32 1207712}
!488 = !{i64 0, i64 8, !240, i64 8, i64 4, !244, i64 12, i64 4, !244, i64 16, i64 1, !256}
!489 = !{i64 0, i64 4, !244, i64 4, i64 4, !244, i64 8, i64 1, !256}
!490 = !{!430, !241, i64 352}
!491 = distinct !{!491, !266}
!492 = distinct !{!492, !266}
!493 = distinct !{!493, !266}
!494 = !{!430, !241, i64 1000}
!495 = !{!"branch_weights", i32 88304, i32 1119409}
!496 = !{!"branch_weights", i32 88304, i32 1}
!497 = distinct !{!497, !266}
!498 = !{!"branch_weights", i32 1, i32 88304}
!499 = !{!"branch_weights", i32 -658542816, i32 128989024}
!500 = !{!"branch_weights", i32 2140408, i32 2145343240}
!501 = !{!427, !241, i64 208}
!502 = !{!427, !241, i64 232}
!503 = !{!504, !242, i64 1086}
!504 = !{!"recog_data", !242, i64 0, !242, i64 240, !242, i64 480, !242, i64 720, !242, i64 840, !242, i64 960, !242, i64 1072, !242, i64 1086, !242, i64 1087, !242, i64 1088, !242, i64 1089, !241, i64 1120}
!505 = !{!"function_entry_count", i64 1207711}
!506 = !{!507, !242, i64 35}
!507 = !{!"insn_data", !241, i64 0, !242, i64 8, !241, i64 16, !241, i64 24, !242, i64 32, !242, i64 33, !242, i64 34, !242, i64 35}
!508 = !{!"branch_weights", i32 1, i32 397734, i32 72408, i32 737572}
!509 = !{!"branch_weights", i32 1, i32 737572}
!510 = !{!"final.c:profile_after_prologue"}
!511 = !{!512, !242, i64 471}
!512 = !{!"rtl_data", !513, i64 0, !514, i64 40, !515, i64 96, !516, i64 112, !518, i64 208, !519, i64 248, !245, i64 312, !241, i64 320, !241, i64 328, !241, i64 336, !241, i64 344, !241, i64 352, !241, i64 360, !241, i64 368, !241, i64 376, !241, i64 384, !241, i64 392, !298, i64 400, !241, i64 408, !241, i64 416, !241, i64 424, !245, i64 432, !245, i64 436, !245, i64 440, !245, i64 444, !245, i64 448, !245, i64 452, !241, i64 456, !242, i64 464, !242, i64 465, !242, i64 466, !242, i64 467, !242, i64 468, !242, i64 469, !242, i64 470, !242, i64 471, !242, i64 472, !242, i64 473, !242, i64 474, !242, i64 475, !242, i64 476, !242, i64 477, !242, i64 478, !242, i64 479, !242, i64 480, !242, i64 481, !242, i64 482, !242, i64 483, !242, i64 484, !242, i64 485}
!513 = !{!"expr_status", !245, i64 0, !245, i64 4, !245, i64 8, !241, i64 16, !241, i64 24, !241, i64 32}
!514 = !{!"emit_status", !245, i64 0, !245, i64 4, !241, i64 8, !241, i64 16, !241, i64 24, !245, i64 32, !245, i64 36, !245, i64 40, !245, i64 44, !241, i64 48}
!515 = !{!"varasm_status", !241, i64 0, !245, i64 8}
!516 = !{!"incoming_args", !245, i64 0, !245, i64 4, !245, i64 8, !241, i64 16, !517, i64 24, !241, i64 88}
!517 = !{!"ix86_args", !245, i64 0, !245, i64 4, !245, i64 8, !245, i64 12, !245, i64 16, !245, i64 20, !245, i64 24, !245, i64 28, !245, i64 32, !245, i64 36, !245, i64 40, !245, i64 44, !245, i64 48, !245, i64 52, !245, i64 56, !245, i64 60}
!518 = !{!"function_subsections", !241, i64 0, !241, i64 8, !241, i64 16, !241, i64 24, !241, i64 32}
!519 = !{!"rtl_eh", !241, i64 0, !241, i64 8, !241, i64 16, !241, i64 24, !241, i64 32, !241, i64 40, !242, i64 48}
!520 = !{!"final.c:output_alternate_entry_point"}
!521 = !{!430, !241, i64 96}
!522 = !{!"final.c:notice_source_line"}
!523 = !{!"branch_weights", i32 120714516, i32 2026769132}
!524 = !{!"branch_weights", i32 -805617456, i32 1963102561}
!525 = !{!"function_entry_count", i64 1207840}
!526 = !{!"branch_weights", i32 10667, i32 1197175}
!527 = !{!"branch_weights", i32 154144, i32 1043032}
!528 = !{!"branch_weights", i32 1, i32 154144}
!529 = !{!"branch_weights", i32 -1418668017, i32 473259009, i32 24904, i32 658087019, i32 318212724, i32 339874690, i32 928236009}
!530 = !{!"branch_weights", i32 63, i32 1}
!531 = !{!"branch_weights", i32 3969, i32 4032, i32 63}
!532 = distinct !{!532, !266}
!533 = !{!"branch_weights", i32 1664724, i32 1}
!534 = !{!"branch_weights", i32 1, i32 1664723}
!535 = distinct !{!535, !266}
!536 = distinct !{!536, !266}
!537 = !{!"branch_weights", i32 1, i32 1664724}
!538 = !{!"branch_weights", i32 1, i32 804964}
!539 = !{!"branch_weights", i32 1, i32 5539056}
!540 = !{!"branch_weights", i32 804964, i32 4734093}
!541 = distinct !{!541, !266}
!542 = !{!"branch_weights", i32 1, i32 859761}
!543 = !{!"branch_weights", i32 -1602783510, i32 1146, i32 1146}
!544 = !{!274, !274, i64 0}
!545 = !{!"branch_weights", i32 1854159, i32 493946}
!546 = !{!"branch_weights", i32 1, i32 493946}
!547 = !{!"branch_weights", i32 493946, i32 1}
!548 = !{!"branch_weights", i32 -1591231102, i32 2017364016, i32 156535680, i32 9874, i32 9874}
!549 = !{!"branch_weights", i32 493636, i32 311}
!550 = !{!"branch_weights", i32 154144, i32 1700016}
!551 = !{!"branch_weights", i32 1700016, i32 1}
!552 = !{!"branch_weights", i32 1629677, i32 70340}
!553 = !{!"branch_weights", i32 4817, i32 19268, i32 -1324920704, i32 9634, i32 4817}
!554 = distinct !{!554, !266}
!555 = !{!"branch_weights", i32 1197175, i32 1}
!556 = !{!"final.c:recog_memoized"}
!557 = !{!"function_entry_count", i64 2388990}
!558 = !{!"branch_weights", i32 2388990, i32 1}
!559 = !{!504, !242, i64 1087}
!560 = !{!"branch_weights", i32 13241, i32 2375750}
!561 = !{!"branch_weights", i32 3751, i32 4879124}
!562 = !{!"branch_weights", i32 -1819892058, i32 20605575, i32 1396094, i32 840367759}
!563 = !{!"branch_weights", i32 2493884, i32 2388990}
!564 = distinct !{!564, !266}
!565 = !{!"branch_weights", i32 -1055157436, i32 1106458, i32 276593, i32 276572, i32 421465661}
!566 = !{!"branch_weights", i32 0, i32 13241}
!567 = distinct !{!567, !266}
!568 = !{!"branch_weights", i32 2385274, i32 3718}
!569 = !{!"function_entry_count", i64 88303}
!570 = !{!"final.c:call_from_call_insn"}
!571 = !{!"branch_weights", i32 25486, i32 62818}
!572 = !{!"branch_weights", i32 1, i32 1, i32 15, i32 62804}
!573 = !{!"branch_weights", i32 62818, i32 0}
!574 = distinct !{!574, !266}
!575 = !{!"final.c:profile_function"}
!576 = !{!430, !241, i64 1488}
!577 = !{!292, !241, i64 56}
!578 = !{!430, !241, i64 1640}
!579 = !{!292, !245, i64 108}
!580 = !{!"function_entry_count", i64 203093}
!581 = !{!"branch_weights", i32 6346, i32 1288983671, i32 6346, i32 6346, i32 6346, i32 -1717031688}
!582 = distinct !{!582, !266}
!583 = distinct !{!583, !266}
!584 = distinct !{!584, !266}
!585 = !{!"branch_weights", i32 406186, i32 1}
!586 = !{!"branch_weights", i32 1, i32 406186}
!587 = distinct !{!587, !266}
!588 = !{!"branch_weights", i32 0, i32 1}
!589 = distinct !{!589, !266}
!590 = !{!"branch_weights", i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 203094, i32 1, i32 1, i32 1, i32 1, i32 203094}
!591 = distinct !{!591, !266}
!592 = !{!"function_entry_count", i64 909641}
!593 = !{!"final.c:rhs_regno"}
!594 = !{!"function_entry_count", i64 3753}
!595 = !{!"branch_weights", i32 596, i32 3159}
!596 = !{!"branch_weights", i32 1, i32 3159}
!597 = !{!"function_entry_count", i64 5897462}
!598 = !{!"final.c:walk_alter_subreg"}
!599 = !{!"branch_weights", i32 3266965, i32 1345330, i32 55021, i32 1, i32 1230150, i32 1, i32 1}
!600 = !{!"final.c:output_asm_operand_names"}
!601 = distinct !{!601, !266}
!602 = !{!"final.c:output_asm_name"}
!603 = !{!507, !241, i64 0}
!604 = !{!507, !242, i64 34}
!605 = !{!"function_entry_count", i64 205145}
!606 = !{!"branch_weights", i32 854, i32 204293}
!607 = !{!"branch_weights", i32 1, i32 410292, i32 1}
!608 = !{!"function_entry_count", i64 604367}
!609 = !{!"function_entry_count", i64 745193}
!610 = !{!"branch_weights", i32 1, i32 1, i32 187689, i32 1, i32 1, i32 512780, i32 22364, i32 1, i32 1, i32 22364, i32 1, i32 1, i32 1, i32 1, i32 1}
!611 = !{!"branch_weights", i32 187689, i32 1}
!612 = !{!"branch_weights", i32 86, i32 187521}
!613 = !{!"branch_weights", i32 187521, i32 1}
!614 = !{!"branch_weights", i32 1, i32 22364}
!615 = !{!"branch_weights", i32 22364, i32 1}
!616 = !{!"branch_weights", i32 22270, i32 95}
!617 = !{!430, !241, i64 0}
!618 = !{!430, !241, i64 8}
!619 = !{!"function_entry_count", i64 2127960}
!620 = !{!"final.c:output_operand"}
!621 = !{!"branch_weights", i32 154144, i32 1973818}
!622 = !{!"branch_weights", i32 1, i32 1973818}
!623 = !{!"branch_weights", i32 0, i32 -2147483648}
!624 = !{!"branch_weights", i32 909642, i32 1064177}
!625 = !{!"branch_weights", i32 909642, i32 1}
!626 = !{!"final.c:get_mem_expr_from_op"}
!627 = !{!628, !241, i64 0}
!628 = !{!"reg_attrs", !241, i64 0, !298, i64 8}
!629 = !{!630, !241, i64 0}
!630 = !{!"mem_attrs", !241, i64 0, !241, i64 8, !241, i64 16, !245, i64 24, !245, i64 28, !242, i64 32}
!631 = distinct !{!631, !266}
!632 = !{!"function_entry_count", i64 3813006}
!633 = !{!"final.c:mark_symbol_ref_as_used"}
!634 = !{!"branch_weights", i32 170201, i32 3642807}
!635 = !{!"branch_weights", i32 170035, i32 167}
!636 = !{!"branch_weights", i32 1073521, i32 2146410127}
!637 = !{i64 0, i64 4, !244, i64 0, i64 4, !244, i64 0, i64 4, !244, i64 0, i64 4, !244, i64 0, i64 4, !244, i64 0, i64 4, !244, i64 8, i64 24, !256}
!638 = !{!"branch_weights", i32 13307, i32 44262409}
!639 = !{!"branch_weights", i32 1, i32 1103}
!640 = !{!"branch_weights", i32 1103, i32 1}
!641 = !{!"branch_weights", i32 32783850, i32 1057183070}
!642 = !{!"branch_weights", i32 85115, i32 93826}
!643 = !{!"branch_weights", i32 1, i32 85115}
!644 = !{!"branch_weights", i32 1103, i32 183386}
!645 = distinct !{!645, !266}
!646 = distinct !{!646, !266}
!647 = distinct !{!647, !266}
!648 = !{!"final.c:rest_of_handle_final"}
!649 = !{!"branch_weights", i32 5722, i32 932}
!650 = !{!427, !241, i64 128}
!651 = !{!430, !242, i64 2027}
!652 = !{!430, !241, i64 248}
!653 = !{!430, !241, i64 256}
!654 = !{!"final.c:rest_of_handle_shorten_branches"}
!655 = !{!"final.c:rest_of_clean_state"}
!656 = distinct !{!656, !266}
!657 = distinct !{!657, !266}
!658 = !{!430, !241, i64 1112}
!659 = !{!512, !245, i64 440}
!660 = !{!512, !245, i64 436}
!661 = !{!662, !245, i64 0}
!662 = !{!"cgraph_rtl_info", !245, i64 0}

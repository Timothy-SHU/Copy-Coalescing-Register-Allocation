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
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], ptr, i64 }
%union.rtunion_def = type { ptr }
%struct.rtvec_def = type { i32, [1 x ptr] }
%struct.label_alignment = type { i16, i16 }
%struct.VEC_int_base = type { i32, i32, [1 x i32] }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.param_info = type { ptr, i32, i8, i32, i32, ptr }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.loop = type { i32, i32, ptr, ptr, %struct.lpt_decision, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.double_int, %struct.double_int, i8, i8, i32, ptr, ptr, i8, ptr }
%struct.lpt_decision = type { i32, i32 }
%struct.double_int = type { i64, i64 }
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

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@app_on = internal unnamed_addr global i1 false, align 4
@final_sequence = dso_local local_unnamed_addr global ptr null, align 8
@ix86_asm_dialect = external local_unnamed_addr global i32, align 4
@dialect_number = internal unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"#APP\0A\00", align 1
@asm_out_file = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"#NO_APP\0A\00", align 1
@uid_shuid = internal unnamed_addr global ptr null, align 8
@insn_lengths = internal unnamed_addr global ptr null, align 8
@insn_lengths_max_uid = internal unnamed_addr global i32 0, align 4
@insn_addresses_ = dso_local local_unnamed_addr global ptr null, align 8
@uid_align = internal unnamed_addr global ptr null, align 8
@max_labelno = internal unnamed_addr global i32 0, align 4
@label_align = internal unnamed_addr global ptr null, align 8
@min_labelno = internal unnamed_addr global i32 0, align 4
@insn_current_address = dso_local local_unnamed_addr global i32 0, align 4
@insn_last_address = dso_local local_unnamed_addr global i32 0, align 4
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
@.str.10 = private unnamed_addr constant [11 x i8] c"alignments\00", align 1
@pass_compute_alignments = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str.10, ptr null, ptr @compute_alignments, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1027 } }, align 8
@.str.11 = private unnamed_addr constant [8 x i8] c"final.c\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@readonly_data_section = external local_unnamed_addr global ptr, align 8
@text_section = external local_unnamed_addr global ptr, align 8
@mode_size = external local_unnamed_addr global [87 x i8], align 16
@insn_current_align = dso_local local_unnamed_addr global i32 0, align 4
@.str.13 = private unnamed_addr constant [43 x i8] c"invalid argument %qs to -fdebug-prefix-map\00", align 1
@debug_prefix_maps = dso_local local_unnamed_addr global ptr null, align 8
@block_depth = internal unnamed_addr global i32 0, align 4
@this_is_asm_operands = dso_local local_unnamed_addr global ptr null, align 8
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
@.str.14 = private unnamed_addr constant [53 x i8] c"the frame size of %wd bytes is larger than %wd bytes\00", align 1
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@insn_data = external local_unnamed_addr constant [0 x %struct.insn_data], align 8
@which_alternative = external local_unnamed_addr global i32, align 4
@recog_data = external global %struct.recog_data, align 8
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@insn_counter = internal unnamed_addr global i32 0, align 4
@in_cold_section_p = external local_unnamed_addr global i8, align 1
@flag_debug_asm = external local_unnamed_addr global i32, align 4
@.str.16 = private unnamed_addr constant [20 x i8] c"\09%s basic block %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"#\00", align 1
@force_source_line = internal unnamed_addr global i1 false, align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"LEHB\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"LEHE\00", align 1
@debug_info_level = external local_unnamed_addr global i32, align 4
@override_filename = internal unnamed_addr global ptr null, align 8
@override_linenum = internal unnamed_addr global i32 0, align 4
@.str.20 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"\09.p2align %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [18 x i8] c"\09.p2align %d,,%d\0A\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"\09.p2align 3\0A\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"\09.align %d\0A\00", align 1
@current_insn_predicate = dso_local local_unnamed_addr global ptr null, align 8
@.str.25 = private unnamed_addr constant [14 x i8] c"%s %i \22%s\22 1\0A\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"\09%s\0A\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"%s 0 \22\22 2\0A\00", align 1
@insn_noperands = internal unnamed_addr global i32 0, align 4
@flag_dump_rtl_in_asm = external local_unnamed_addr global i32, align 4
@print_rtx_head = external local_unnamed_addr global ptr, align 8
@debug_insn = internal unnamed_addr global ptr null, align 8
@current_output_insn = dso_local local_unnamed_addr global ptr null, align 8
@.str.28 = private unnamed_addr constant [21 x i8] c"could not split insn\00", align 1
@flag_enable_icf_debug = external local_unnamed_addr global i32, align 4
@.str.29 = private unnamed_addr constant [16 x i8] c"invalid 'asm': \00", align 1
@.str.30 = private unnamed_addr constant [17 x i8] c"output_operand: \00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@ix86_isa_flags = external local_unnamed_addr global i32, align 4
@flag_verbose_asm = external local_unnamed_addr global i32, align 4
@flag_print_asm_name = external local_unnamed_addr global i32, align 4
@.str.33 = private unnamed_addr constant [37 x i8] c"nested assembly dialect alternatives\00", align 1
@.str.34 = private unnamed_addr constant [42 x i8] c"unterminated assembly dialect alternative\00", align 1
@.str.35 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@_sch_istable = external local_unnamed_addr constant [256 x i16], align 16
@.str.36 = private unnamed_addr constant [39 x i8] c"operand number missing after %%-letter\00", align 1
@.str.37 = private unnamed_addr constant [28 x i8] c"operand number out of range\00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.39 = private unnamed_addr constant [16 x i8] c"invalid %%-code\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"*.%s%u\00", align 1
@.str.41 = private unnamed_addr constant [28 x i8] c"'%%l' operand isn't a label\00", align 1
@.str.42 = private unnamed_addr constant [12 x i8] c"0x%lx%016lx\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"0x%lx\00", align 1
@.str.44 = private unnamed_addr constant [26 x i8] c"floating constant misused\00", align 1
@.str.47 = private unnamed_addr constant [30 x i8] c"invalid expression as operand\00", align 1
@user_label_prefix = external local_unnamed_addr global ptr, align 8
@const_int_rtx = external local_unnamed_addr global [129 x ptr], align 16
@mode_class = external local_unnamed_addr constant [87 x i8], align 16
@x_rtl = external local_unnamed_addr global %struct.rtl_data, align 8
@profile_arc_flag = external local_unnamed_addr global i32, align 4
@debug_nesting = dso_local local_unnamed_addr global i32 0, align 4
@symbol_queue_index = dso_local local_unnamed_addr global i32 0, align 4
@symbol_queue = internal unnamed_addr global ptr null, align 8
@symbol_queue_size = internal unnamed_addr global i32 0, align 4
@.str.51 = private unnamed_addr constant [6 x i8] c"final\00", align 1
@pass_final = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str.51, ptr null, ptr @rest_of_handle_final, ptr null, ptr null, i32 0, i32 165, i32 0, i32 0, i32 0, i32 0, i32 2 } }, align 8
@.str.52 = private unnamed_addr constant [8 x i8] c"shorten\00", align 1
@pass_shorten_branches = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str.52, ptr null, ptr @rest_of_handle_shorten_branches, ptr null, ptr null, i32 0, i32 165, i32 0, i32 0, i32 0, i32 0, i32 1 } }, align 8
@.str.53 = private unnamed_addr constant [13 x i8] c"*clean_state\00", align 1
@pass_clean_state = dso_local local_unnamed_addr global %struct.rtl_opt_pass { %struct.opt_pass { i32 1, ptr @.str.53, ptr null, ptr @rest_of_clean_state, ptr null, ptr null, i32 0, i32 165, i32 0, i32 0, i32 128, i32 0, i32 0 } }, align 8
@final_insns_dump_p = dso_local local_unnamed_addr global i8 0, align 1
@.str.54 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@.str.55 = private unnamed_addr constant [16 x i8] c"\09push{l}\09%%e%s\0A\00", align 1
@reg_names = external local_unnamed_addr global [53 x ptr], align 16
@.str.56 = private unnamed_addr constant [15 x i8] c"\09pop{l}\09%%e%s\0A\00", align 1
@.str.57 = private unnamed_addr constant [8 x i8] c"\09.weak\09\00", align 1
@.str.58 = private unnamed_addr constant [8 x i8] c"\09.type\09\00", align 1
@.str.59 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.60 = private unnamed_addr constant [4 x i8] c"@%s\00", align 1
@.str.61 = private unnamed_addr constant [9 x i8] c"function\00", align 1
@.str.62 = private unnamed_addr constant [3 x i8] c":\0A\00", align 1
@.str.63 = private unnamed_addr constant [5 x i8] c"%c%s\00", align 1
@.str.64 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.65 = private unnamed_addr constant [7 x i8] c" tmp%i\00", align 1
@rtx_class = external local_unnamed_addr constant [139 x i32], align 16
@.str.66 = private unnamed_addr constant [10 x i8] c"\09%s %d\09%s\00", align 1
@.str.67 = private unnamed_addr constant [4 x i8] c"/%d\00", align 1
@.str.68 = private unnamed_addr constant [15 x i8] c"\09[length = %d]\00", align 1
@user_defined_section_attribute = external local_unnamed_addr global i8, align 1
@quiet_flag = external local_unnamed_addr global i32, align 4
@timevar_enable = external local_unnamed_addr global i8, align 1
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
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

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !135 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !136
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !135 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !136
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !135 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !140
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !145
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !146

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #29
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !140
  %11 = load i8, ptr %3, align 1, !tbaa !147
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !135 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !140
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !145
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !146

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #29
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !140
  %11 = load i8, ptr %3, align 1, !tbaa !147
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !135 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !136
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !140
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !145
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !146

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #29
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !140
  %11 = load i8, ptr %3, align 1, !tbaa !147
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !135 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !136
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !135 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !148
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !149
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !146

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #29
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !148
  store i8 %12, ptr %4, align 1, !tbaa !147
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !135 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !148
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !149
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !146

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #29
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !148
  store i8 %12, ptr %4, align 1, !tbaa !147
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !135 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !136
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !148
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !149
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !146

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #29
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !148
  store i8 %12, ptr %4, align 1, !tbaa !147
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !135 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #29
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !135 {
  %2 = load i32, ptr %0, align 8, !tbaa !150
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !135 {
  %2 = load i32, ptr %0, align 8, !tbaa !150
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !135 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #29
  %6 = load ptr, ptr %5, align 8, !tbaa !136
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !151
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !135 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #29
  %6 = load ptr, ptr %5, align 8, !tbaa !136
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !151
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !135 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !135 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !135 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !135 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #29
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
  br i1 %23, label %7, label %24, !llvm.loop !152

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !135 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @init_final(ptr nocapture noundef readnone %0) local_unnamed_addr #9 !prof !155 {
  store i1 false, ptr @app_on, align 4
  store ptr null, ptr @final_sequence, align 8, !tbaa !136
  %2 = load i32, ptr @ix86_asm_dialect, align 4, !tbaa !151
  store i32 %2, ptr @dialect_number, align 4, !tbaa !151
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @default_function_pro_epilogue(ptr nocapture noundef readnone %0, i64 noundef %1) local_unnamed_addr #10 !prof !156 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @no_asm_to_stream(ptr nocapture noundef readnone %0) local_unnamed_addr #10 !prof !157 {
  ret void
}

; Function Attrs: cold nofree nounwind uwtable
define dso_local void @app_enable() local_unnamed_addr #11 !prof !135 {
  %1 = load i1, ptr @app_on, align 4
  br i1 %1, label %5, label %2

2:                                                ; preds = %0
  %3 = load ptr, ptr @asm_out_file, align 8, !tbaa !136
  %4 = tail call i64 @fwrite(ptr nonnull @.str, i64 5, i64 1, ptr %3)
  store i1 true, ptr @app_on, align 4
  br label %5

5:                                                ; preds = %2, %0
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind uwtable
define dso_local void @app_disable() local_unnamed_addr #12 !prof !158 {
  %1 = load i1, ptr @app_on, align 4
  br i1 %1, label %2, label %5, !prof !159

2:                                                ; preds = %0
  %3 = load ptr, ptr @asm_out_file, align 8, !tbaa !136
  %4 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 8, i64 1, ptr %3)
  store i1 false, ptr @app_on, align 4
  br label %5

5:                                                ; preds = %2, %0
  ret void
}

; Function Attrs: mustprogress nounwind willreturn uwtable
define dso_local void @init_insn_lengths() local_unnamed_addr #13 !prof !135 {
  %1 = load ptr, ptr @uid_shuid, align 8, !tbaa !136
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3, !prof !160

3:                                                ; preds = %0
  tail call void @free(ptr noundef %1)
  store ptr null, ptr @uid_shuid, align 8, !tbaa !136
  br label %4

4:                                                ; preds = %3, %0
  %5 = load ptr, ptr @insn_lengths, align 8, !tbaa !136
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7, !prof !160

7:                                                ; preds = %4
  tail call void @free(ptr noundef %5)
  store ptr null, ptr @insn_lengths, align 8, !tbaa !136
  store i32 0, ptr @insn_lengths_max_uid, align 4, !tbaa !151
  br label %8

8:                                                ; preds = %7, %4
  %9 = load ptr, ptr @insn_addresses_, align 8, !tbaa !136
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11, !prof !160

11:                                               ; preds = %8
  tail call void @free(ptr noundef %9)
  br label %12

12:                                               ; preds = %8, %11
  store ptr null, ptr @insn_addresses_, align 8, !tbaa !136
  %13 = load ptr, ptr @uid_align, align 8, !tbaa !136
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15, !prof !160

15:                                               ; preds = %12
  tail call void @free(ptr noundef %13)
  store ptr null, ptr @uid_align, align 8, !tbaa !136
  br label %16

16:                                               ; preds = %15, %12
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @get_attr_length(ptr noundef %0) local_unnamed_addr #15 !prof !161 {
  %2 = tail call fastcc i32 @get_attr_length_1(ptr noundef %0, ptr noundef nonnull @insn_default_length)
  ret i32 %2
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @get_attr_length_1(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #15 !prof !162 !PGOFuncName !163 {
  %3 = load i32, ptr @insn_lengths_max_uid, align 4, !tbaa !151
  %4 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !147
  %6 = icmp sgt i32 %3, %5
  br i1 %6, label %7, label %12, !prof !164

7:                                                ; preds = %2
  %8 = load ptr, ptr @insn_lengths, align 8, !tbaa !136
  %9 = sext i32 %5 to i64
  %10 = getelementptr inbounds i32, ptr %8, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !151
  br label %61

12:                                               ; preds = %2
  %13 = load i32, ptr %0, align 8
  %14 = trunc i32 %13 to i16
  switch i16 %14, label %61 [
    i16 8, label %25
    i16 9, label %17
    i16 10, label %15
  ], !prof !165

15:                                               ; preds = %12
  %16 = tail call i32 %1(ptr noundef nonnull %0) #29, !prof !166, !callees !167
  br label %61

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %19 = load ptr, ptr %18, align 8, !tbaa !147
  %20 = load i32, ptr %19, align 8
  %21 = and i32 %20, 65534
  %22 = icmp eq i32 %21, 20
  br i1 %22, label %61, label %23, !prof !168

23:                                               ; preds = %17
  %24 = tail call i32 %1(ptr noundef nonnull %0) #29, !prof !169, !callees !167
  br label %61

25:                                               ; preds = %12
  %26 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %27 = load ptr, ptr %26, align 8, !tbaa !147
  %28 = load i32, ptr %27, align 8
  %29 = trunc i32 %28 to i16
  switch i16 %29, label %30 [
    i16 24, label %61
    i16 25, label %61
    i16 16, label %33
  ], !prof !170

30:                                               ; preds = %25
  %31 = tail call i32 @asm_noperands(ptr noundef nonnull %27) #29
  %32 = icmp sgt i32 %31, -1
  br i1 %32, label %33, label %37, !prof !171

33:                                               ; preds = %25, %30
  %34 = tail call fastcc i32 @asm_insn_count(ptr noundef nonnull %27)
  %35 = tail call i32 %1(ptr noundef nonnull %0) #29, !callees !167
  %36 = mul nsw i32 %35, %34
  br label %61

37:                                               ; preds = %30
  %38 = load i32, ptr %27, align 8
  %39 = and i32 %38, 65535
  %40 = icmp eq i32 %39, 5
  br i1 %40, label %41, label %59, !prof !171

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.rtx_def, ptr %27, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !147
  %44 = load i32, ptr %43, align 8, !tbaa !172
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %61

46:                                               ; preds = %41, %46
  %47 = phi i64 [ %54, %46 ], [ 0, %41 ]
  %48 = phi ptr [ %55, %46 ], [ %43, %41 ]
  %49 = phi i32 [ %53, %46 ], [ 0, %41 ]
  %50 = getelementptr inbounds %struct.rtvec_def, ptr %48, i64 0, i32 1, i64 %47
  %51 = load ptr, ptr %50, align 8, !tbaa !136
  %52 = tail call fastcc i32 @get_attr_length_1(ptr noundef %51, ptr noundef %1)
  %53 = add nsw i32 %52, %49
  %54 = add nuw nsw i64 %47, 1
  %55 = load ptr, ptr %42, align 8, !tbaa !147
  %56 = load i32, ptr %55, align 8, !tbaa !172
  %57 = sext i32 %56 to i64
  %58 = icmp slt i64 %54, %57
  br i1 %58, label %46, label %61, !llvm.loop !174

59:                                               ; preds = %37
  %60 = tail call i32 %1(ptr noundef nonnull %0) #29, !prof !175, !callees !167
  br label %61

61:                                               ; preds = %46, %41, %25, %17, %12, %59, %33, %23, %15, %25, %7
  %62 = phi i32 [ %11, %7 ], [ 0, %25 ], [ 0, %12 ], [ %36, %33 ], [ %60, %59 ], [ %24, %23 ], [ %16, %15 ], [ 0, %17 ], [ 0, %25 ], [ 0, %41 ], [ %53, %46 ]
  ret i32 %62
}

declare i32 @insn_default_length(ptr noundef) #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @get_attr_min_length(ptr noundef %0) local_unnamed_addr #15 !prof !176 {
  %2 = tail call fastcc i32 @get_attr_length_1(ptr noundef %0, ptr noundef nonnull @insn_min_length)
  ret i32 %2
}

declare i32 @insn_min_length(ptr noundef) #3

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @label_to_alignment(ptr nocapture noundef readonly %0) local_unnamed_addr #16 !prof !177 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !147
  %4 = load i32, ptr @max_labelno, align 4, !tbaa !151
  %5 = icmp sgt i32 %3, %4
  br i1 %5, label %14, label %6, !prof !178

6:                                                ; preds = %1
  %7 = load ptr, ptr @label_align, align 8, !tbaa !136
  %8 = load i32, ptr @min_labelno, align 4, !tbaa !151
  %9 = sub nsw i32 %3, %8
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.label_alignment, ptr %7, i64 %10
  %12 = load i16, ptr %11, align 2, !tbaa !179
  %13 = sext i16 %12 to i32
  br label %14

14:                                               ; preds = %1, %6
  %15 = phi i32 [ %13, %6 ], [ 0, %1 ]
  ret i32 %15
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @label_to_max_skip(ptr nocapture noundef readonly %0) local_unnamed_addr #16 !prof !177 {
  %2 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !147
  %4 = load i32, ptr @max_labelno, align 4, !tbaa !151
  %5 = icmp sgt i32 %3, %4
  br i1 %5, label %14, label %6, !prof !178

6:                                                ; preds = %1
  %7 = load ptr, ptr @label_align, align 8, !tbaa !136
  %8 = load i32, ptr @min_labelno, align 4, !tbaa !151
  %9 = sub nsw i32 %3, %8
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.label_alignment, ptr %7, i64 %10, i32 1
  %12 = load i16, ptr %11, align 2, !tbaa !181
  %13 = sext i16 %12 to i32
  br label %14

14:                                               ; preds = %1, %6
  %15 = phi i32 [ %13, %6 ], [ 0, %1 ]
  ret i32 %15
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @insn_current_reference_address(ptr nocapture noundef readonly %0) local_unnamed_addr #17 !prof !182 {
  %2 = load ptr, ptr @insn_addresses_, align 8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %130, label %4, !prof !183

4:                                                ; preds = %1
  %5 = load i32, ptr %0, align 8
  %6 = and i32 %5, 65535
  %7 = icmp eq i32 %6, 9
  br i1 %7, label %10, label %8, !prof !184

8:                                                ; preds = %4
  %9 = load i32, ptr @insn_current_address, align 4, !tbaa !151
  br label %130

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %12 = load ptr, ptr %11, align 8, !tbaa !147
  %13 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1, i32 0, i32 0, i64 2
  %14 = load ptr, ptr %13, align 8, !tbaa !147
  %15 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1
  %16 = load i32, ptr %15, align 8, !tbaa !147
  %17 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 2
  %18 = load ptr, ptr %17, align 8, !tbaa !147
  %19 = load ptr, ptr @uid_shuid, align 8, !tbaa !136
  %20 = sext i32 %16 to i64
  %21 = getelementptr inbounds i32, ptr %19, i64 %20
  %22 = load i32, ptr %21, align 4, !tbaa !151
  %23 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1
  %24 = load i32, ptr %23, align 8, !tbaa !147
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, ptr %19, i64 %25
  %27 = load i32, ptr %26, align 4, !tbaa !151
  %28 = icmp slt i32 %22, %27
  br i1 %28, label %29, label %81, !prof !185

29:                                               ; preds = %10
  %30 = load i32, ptr @insn_last_address, align 4, !tbaa !151
  %31 = load ptr, ptr @insn_lengths, align 8
  %32 = getelementptr inbounds i32, ptr %31, i64 %20
  %33 = load i32, ptr %32, align 4, !tbaa !151
  %34 = add nsw i32 %33, %30
  %35 = load i32, ptr @length_unit_log, align 4, !tbaa !151
  %36 = shl nuw i32 1, %35
  %37 = load ptr, ptr @uid_align, align 8, !tbaa !136
  br label %38

38:                                               ; preds = %75, %29
  %39 = phi i32 [ %36, %29 ], [ %76, %75 ]
  %40 = phi i64 [ %20, %29 ], [ %49, %75 ]
  %41 = phi i32 [ 0, %29 ], [ %77, %75 ]
  %42 = getelementptr inbounds ptr, ptr %37, i64 %40
  %43 = load ptr, ptr %42, align 8, !tbaa !136
  %44 = icmp eq ptr %43, null
  br i1 %44, label %78, label %45, !prof !186

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.VEC_int_base, ptr %2, i64 0, i32 2
  %47 = getelementptr inbounds %struct.rtx_def, ptr %43, i64 0, i32 1
  %48 = load i32, ptr %47, align 8, !tbaa !147
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, ptr %46, i64 %49
  %51 = load i32, ptr %50, align 4, !tbaa !151
  %52 = getelementptr inbounds i32, ptr %31, i64 %49
  %53 = load i32, ptr %52, align 4, !tbaa !151
  %54 = getelementptr inbounds i32, ptr %19, i64 %49
  %55 = load i32, ptr %54, align 4, !tbaa !151
  %56 = icmp sgt i32 %55, %27
  br i1 %56, label %75, label %57, !prof !187

57:                                               ; preds = %45
  %58 = load ptr, ptr @label_align, align 8
  %59 = load i32, ptr @min_labelno, align 4
  %60 = getelementptr inbounds %struct.rtx_def, ptr %43, i64 1, i32 1
  %61 = load i32, ptr %60, align 8, !tbaa !147
  %62 = sub nsw i32 %61, %59
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.label_alignment, ptr %58, i64 %63
  %65 = load i16, ptr %64, align 2, !tbaa !179
  %66 = zext nneg i16 %65 to i32
  %67 = shl nuw i32 1, %66
  %68 = icmp slt i32 %67, %39
  br i1 %68, label %75, label %69, !prof !188

69:                                               ; preds = %57
  %70 = xor i32 %53, -1
  %71 = add i32 %51, %70
  %72 = sub nsw i32 %67, %39
  %73 = and i32 %72, %71
  %74 = add i32 %73, %41
  br label %75

75:                                               ; preds = %69, %57, %45
  %76 = phi i32 [ %67, %69 ], [ %39, %45 ], [ %39, %57 ]
  %77 = phi i32 [ %74, %69 ], [ %41, %45 ], [ %41, %57 ]
  br i1 %56, label %78, label %38, !prof !187, !llvm.loop !189

78:                                               ; preds = %38, %75
  %79 = phi i32 [ %77, %75 ], [ %41, %38 ]
  %80 = sub i32 %34, %79
  br label %130

81:                                               ; preds = %10
  %82 = load i32, ptr @insn_current_address, align 4, !tbaa !151
  %83 = load i32, ptr @length_unit_log, align 4, !tbaa !151
  %84 = shl nuw i32 1, %83
  %85 = load ptr, ptr @uid_align, align 8, !tbaa !136
  br label %86

86:                                               ; preds = %124, %81
  %87 = phi i32 [ %84, %81 ], [ %125, %124 ]
  %88 = phi i64 [ %25, %81 ], [ %98, %124 ]
  %89 = phi i32 [ 0, %81 ], [ %126, %124 ]
  %90 = getelementptr inbounds ptr, ptr %85, i64 %88
  %91 = load ptr, ptr %90, align 8, !tbaa !136
  %92 = icmp eq ptr %91, null
  br i1 %92, label %127, label %93, !prof !186

93:                                               ; preds = %86
  %94 = getelementptr inbounds %struct.VEC_int_base, ptr %2, i64 0, i32 2
  %95 = load ptr, ptr @insn_lengths, align 8
  %96 = getelementptr inbounds %struct.rtx_def, ptr %91, i64 0, i32 1
  %97 = load i32, ptr %96, align 8, !tbaa !147
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, ptr %94, i64 %98
  %100 = load i32, ptr %99, align 4, !tbaa !151
  %101 = getelementptr inbounds i32, ptr %95, i64 %98
  %102 = load i32, ptr %101, align 4, !tbaa !151
  %103 = getelementptr inbounds i32, ptr %19, i64 %98
  %104 = load i32, ptr %103, align 4, !tbaa !151
  %105 = icmp sgt i32 %104, %22
  br i1 %105, label %124, label %106, !prof !187

106:                                              ; preds = %93
  %107 = load ptr, ptr @label_align, align 8
  %108 = load i32, ptr @min_labelno, align 4
  %109 = getelementptr inbounds %struct.rtx_def, ptr %91, i64 1, i32 1
  %110 = load i32, ptr %109, align 8, !tbaa !147
  %111 = sub nsw i32 %110, %108
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.label_alignment, ptr %107, i64 %112
  %114 = load i16, ptr %113, align 2, !tbaa !179
  %115 = zext nneg i16 %114 to i32
  %116 = shl nuw i32 1, %115
  %117 = icmp slt i32 %116, %87
  br i1 %117, label %124, label %118, !prof !188

118:                                              ; preds = %106
  %119 = xor i32 %102, -1
  %120 = add i32 %100, %119
  %121 = sub nsw i32 %116, %87
  %122 = and i32 %121, %120
  %123 = add i32 %122, %89
  br label %124

124:                                              ; preds = %118, %106, %93
  %125 = phi i32 [ %116, %118 ], [ %87, %93 ], [ %87, %106 ]
  %126 = phi i32 [ %123, %118 ], [ %89, %93 ], [ %89, %106 ]
  br i1 %105, label %127, label %86, !prof !187, !llvm.loop !189

127:                                              ; preds = %86, %124
  %128 = phi i32 [ %126, %124 ], [ %89, %86 ]
  %129 = add nsw i32 %128, %82
  br label %130

130:                                              ; preds = %1, %127, %78, %8
  %131 = phi i32 [ %80, %78 ], [ %129, %127 ], [ %9, %8 ], [ 0, %1 ]
  ret i32 %131
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @compute_alignments() #18 !prof !156 {
  %1 = load ptr, ptr @label_align, align 8, !tbaa !136
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3, !prof !190

3:                                                ; preds = %0
  tail call void @free(ptr noundef %1)
  store ptr null, ptr @label_align, align 8, !tbaa !136
  br label %4

4:                                                ; preds = %3, %0
  %5 = tail call i32 @max_label_num() #29
  store i32 %5, ptr @max_labelno, align 4, !tbaa !151
  %6 = tail call i32 @get_first_label_num() #29
  store i32 %6, ptr @min_labelno, align 4, !tbaa !151
  %7 = load i32, ptr @max_labelno, align 4, !tbaa !151
  %8 = sub i32 %7, %6
  %9 = add i32 %8, 1
  %10 = sext i32 %9 to i64
  %11 = tail call ptr @xcalloc(i64 noundef %10, i64 noundef 4) #29
  store ptr %11, ptr @label_align, align 8, !tbaa !136
  %12 = load i32, ptr @optimize, align 4, !tbaa !151
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %261, label %14, !prof !160

14:                                               ; preds = %4
  %15 = load ptr, ptr @cfun, align 8, !tbaa !136
  %16 = tail call zeroext i8 @optimize_function_for_size_p(ptr noundef %15) #29
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %261, !prof !191

18:                                               ; preds = %14
  %19 = load ptr, ptr @dump_file, align 8, !tbaa !136
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21, !prof !191

21:                                               ; preds = %18
  tail call void @dump_flow_info(ptr noundef nonnull %19, i32 noundef 8) #29
  %22 = load ptr, ptr @dump_file, align 8, !tbaa !136
  tail call void @flow_loops_dump(ptr noundef %22, ptr noundef null, i32 noundef 1) #29
  tail call void @loop_optimizer_init(i32 noundef 16) #29
  br label %23

23:                                               ; preds = %21, %18
  %24 = load ptr, ptr @cfun, align 8, !tbaa !136
  %25 = getelementptr inbounds %struct.function, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !192
  %27 = load ptr, ptr %26, align 8, !tbaa !194
  %28 = getelementptr inbounds %struct.control_flow_graph, ptr %26, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !196
  %30 = getelementptr inbounds %struct.basic_block_def, ptr %27, i64 0, i32 6
  %31 = load ptr, ptr %30, align 8, !tbaa !197
  %32 = icmp eq ptr %31, %29
  br i1 %32, label %42, label %33, !prof !199

33:                                               ; preds = %23, %33
  %34 = phi ptr [ %40, %33 ], [ %31, %23 ]
  %35 = phi i32 [ %38, %33 ], [ 0, %23 ]
  %36 = getelementptr inbounds %struct.basic_block_def, ptr %34, i64 0, i32 11
  %37 = load i32, ptr %36, align 8, !tbaa !200
  %38 = tail call i32 @llvm.smax.i32(i32 %37, i32 %35)
  %39 = getelementptr inbounds %struct.basic_block_def, ptr %34, i64 0, i32 6
  %40 = load ptr, ptr %39, align 8, !tbaa !197
  %41 = icmp eq ptr %40, %29
  br i1 %41, label %42, label %33, !prof !201, !llvm.loop !202

42:                                               ; preds = %33, %23
  %43 = phi i32 [ 0, %23 ], [ %38, %33 ]
  %44 = load ptr, ptr @compiler_params, align 8, !tbaa !136
  %45 = getelementptr inbounds %struct.param_info, ptr %44, i64 44, i32 1
  %46 = load i32, ptr %45, align 8, !tbaa !203
  %47 = sdiv i32 %43, %46
  %48 = load ptr, ptr @dump_file, align 8, !tbaa !136
  %49 = icmp eq ptr %48, null
  br i1 %49, label %52, label %50, !prof !191

50:                                               ; preds = %42
  %51 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %48, ptr noundef nonnull @.str.2, i32 noundef %43)
  br label %52

52:                                               ; preds = %50, %42
  %53 = load ptr, ptr @cfun, align 8, !tbaa !136
  %54 = getelementptr inbounds %struct.function, ptr %53, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !192
  %56 = load ptr, ptr %55, align 8, !tbaa !194
  %57 = getelementptr inbounds %struct.basic_block_def, ptr %56, i64 0, i32 6
  %58 = load ptr, ptr %57, align 8, !tbaa !197
  %59 = getelementptr inbounds %struct.control_flow_graph, ptr %55, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !196
  %61 = icmp eq ptr %58, %60
  br i1 %61, label %257, label %62, !prof !199

62:                                               ; preds = %52, %248
  %63 = phi ptr [ %250, %248 ], [ %58, %52 ]
  %64 = getelementptr inbounds %struct.basic_block_def, ptr %63, i64 0, i32 7
  %65 = load ptr, ptr %64, align 8, !tbaa !147
  %66 = load ptr, ptr %65, align 8, !tbaa !205
  %67 = load i32, ptr %66, align 8
  %68 = and i32 %67, 65535
  %69 = icmp eq i32 %68, 12
  br i1 %69, label %70, label %73, !prof !207

70:                                               ; preds = %62
  %71 = tail call zeroext i8 @optimize_bb_for_size_p(ptr noundef %63) #29
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %87, label %73, !prof !208

73:                                               ; preds = %70, %62
  %74 = load ptr, ptr @dump_file, align 8, !tbaa !136
  %75 = icmp eq ptr %74, null
  br i1 %75, label %248, label %76, !prof !209

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.basic_block_def, ptr %63, i64 0, i32 9
  %78 = load i32, ptr %77, align 8, !tbaa !210
  %79 = getelementptr inbounds %struct.basic_block_def, ptr %63, i64 0, i32 11
  %80 = load i32, ptr %79, align 8, !tbaa !200
  %81 = getelementptr inbounds %struct.basic_block_def, ptr %63, i64 0, i32 3
  %82 = load ptr, ptr %81, align 8, !tbaa !211
  %83 = load i32, ptr %82, align 8, !tbaa !212
  %84 = getelementptr inbounds %struct.basic_block_def, ptr %63, i64 0, i32 10
  %85 = load i32, ptr %84, align 4, !tbaa !216
  %86 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %74, ptr noundef nonnull @.str.3, i32 noundef %78, i32 noundef %80, i32 noundef %83, i32 noundef %85)
  br label %248

87:                                               ; preds = %70
  %88 = load i32, ptr @align_labels_log, align 4, !tbaa !151
  %89 = load i32, ptr @align_labels_max_skip, align 4, !tbaa !151
  %90 = icmp eq ptr %63, null
  br label %91

91:                                               ; preds = %136, %87
  %92 = phi i32 [ 0, %87 ], [ %137, %136 ]
  %93 = phi i32 [ 0, %87 ], [ %125, %136 ]
  %94 = phi i32 [ 0, %87 ], [ %127, %136 ]
  %95 = phi i32 [ 0, %87 ], [ %128, %136 ]
  br i1 %90, label %96, label %97, !prof !217

96:                                               ; preds = %91
  tail call void @fancy_abort(ptr noundef nonnull @.str.54, i32 noundef 687, ptr noundef nonnull @.str.12) #29
  br label %97

97:                                               ; preds = %96, %91
  %98 = load ptr, ptr %63, align 8, !tbaa !136
  %99 = icmp eq ptr %98, null
  br i1 %99, label %102, label %100, !prof !217

100:                                              ; preds = %97
  %101 = load i32, ptr %98, align 8, !tbaa !218
  br label %102

102:                                              ; preds = %100, %97
  %103 = phi i32 [ %101, %100 ], [ 0, %97 ]
  %104 = icmp eq i32 %103, %92
  br i1 %104, label %109, label %105, !prof !220

105:                                              ; preds = %102
  %106 = zext i32 %92 to i64
  %107 = getelementptr inbounds %struct.VEC_edge_base, ptr %98, i64 0, i32 2, i64 %106
  %108 = load ptr, ptr %107, align 8, !tbaa !136
  br label %109

109:                                              ; preds = %102, %105
  %110 = phi ptr [ %108, %105 ], [ null, %102 ]
  br i1 %104, label %138, label %111, !prof !220

111:                                              ; preds = %109
  %112 = getelementptr inbounds %struct.edge_def, ptr %110, i64 0, i32 7
  %113 = load i32, ptr %112, align 8, !tbaa !221
  %114 = and i32 %113, 1
  %115 = icmp eq i32 %114, 0
  %116 = load ptr, ptr %110, align 8, !tbaa !223
  %117 = getelementptr inbounds %struct.basic_block_def, ptr %116, i64 0, i32 11
  %118 = load i32, ptr %117, align 8, !tbaa !200
  %119 = getelementptr inbounds %struct.edge_def, ptr %110, i64 0, i32 8
  %120 = load i32, ptr %119, align 4, !tbaa !224
  %121 = mul nsw i32 %120, %118
  %122 = add nsw i32 %121, 5000
  %123 = sdiv i32 %122, 10000
  %124 = select i1 %115, i32 0, i32 %123, !prof !225
  %125 = add nsw i32 %93, %124
  %126 = select i1 %115, i32 %123, i32 0, !prof !225
  %127 = add nsw i32 %94, %126
  %128 = select i1 %115, i32 %95, i32 1, !prof !225
  %129 = icmp eq ptr %98, null
  br i1 %129, label %132, label %130, !prof !226

130:                                              ; preds = %111
  %131 = load i32, ptr %98, align 8, !tbaa !218
  br label %132

132:                                              ; preds = %130, %111
  %133 = phi i32 [ %131, %130 ], [ 0, %111 ]
  %134 = icmp ult i32 %92, %133
  br i1 %134, label %136, label %135, !prof !227

135:                                              ; preds = %132
  tail call void @fancy_abort(ptr noundef nonnull @.str.54, i32 noundef 738, ptr noundef nonnull @.str.12) #29
  br label %136

136:                                              ; preds = %132, %135
  %137 = add i32 %92, 1
  br label %91, !llvm.loop !228

138:                                              ; preds = %109
  %139 = load ptr, ptr @dump_file, align 8, !tbaa !136
  %140 = icmp eq ptr %139, null
  br i1 %140, label %173, label %141, !prof !229

141:                                              ; preds = %138
  %142 = getelementptr inbounds %struct.basic_block_def, ptr %63, i64 0, i32 9
  %143 = load i32, ptr %142, align 8, !tbaa !210
  %144 = getelementptr inbounds %struct.basic_block_def, ptr %63, i64 0, i32 11
  %145 = load i32, ptr %144, align 8, !tbaa !200
  %146 = getelementptr inbounds %struct.basic_block_def, ptr %63, i64 0, i32 3
  %147 = load ptr, ptr %146, align 8, !tbaa !211
  %148 = load i32, ptr %147, align 8, !tbaa !212
  %149 = getelementptr inbounds %struct.basic_block_def, ptr %63, i64 0, i32 10
  %150 = load i32, ptr %149, align 4, !tbaa !216
  %151 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %139, ptr noundef nonnull @.str.4, i32 noundef %143, i32 noundef %145, i32 noundef %148, i32 noundef %150, i32 noundef %93, i32 noundef %94)
  %152 = load ptr, ptr %146, align 8, !tbaa !211
  %153 = getelementptr inbounds %struct.loop, ptr %152, i64 0, i32 8
  %154 = load ptr, ptr %153, align 8, !tbaa !230
  %155 = icmp eq ptr %154, null
  br i1 %155, label %156, label %162

156:                                              ; preds = %141
  %157 = load i32, ptr %152, align 8, !tbaa !212
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %162, label %159

159:                                              ; preds = %156
  %160 = load ptr, ptr @dump_file, align 8, !tbaa !136
  %161 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 11, i64 1, ptr %160)
  br label %162

162:                                              ; preds = %159, %156, %141
  %163 = load ptr, ptr %146, align 8, !tbaa !211
  %164 = getelementptr inbounds %struct.loop, ptr %163, i64 0, i32 2
  %165 = load ptr, ptr %164, align 8, !tbaa !231
  %166 = icmp eq ptr %165, %63
  br i1 %166, label %167, label %170

167:                                              ; preds = %162
  %168 = load ptr, ptr @dump_file, align 8, !tbaa !136
  %169 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 12, i64 1, ptr %168)
  br label %170

170:                                              ; preds = %167, %162
  %171 = load ptr, ptr @dump_file, align 8, !tbaa !136
  %172 = tail call i32 @fputc(i32 10, ptr %171)
  br label %173

173:                                              ; preds = %170, %138
  %174 = icmp eq i32 %95, 0
  br i1 %174, label %175, label %206, !prof !232

175:                                              ; preds = %173
  %176 = icmp sgt i32 %94, %47
  br i1 %176, label %195, label %177, !prof !233

177:                                              ; preds = %175
  %178 = getelementptr inbounds %struct.basic_block_def, ptr %63, i64 0, i32 11
  %179 = load i32, ptr %178, align 8, !tbaa !200
  %180 = getelementptr inbounds %struct.basic_block_def, ptr %63, i64 0, i32 5
  %181 = load ptr, ptr %180, align 8, !tbaa !234
  %182 = getelementptr inbounds %struct.basic_block_def, ptr %181, i64 0, i32 11
  %183 = load i32, ptr %182, align 8, !tbaa !200
  %184 = mul nsw i32 %183, 10
  %185 = icmp sgt i32 %179, %184
  br i1 %185, label %186, label %206, !prof !235

186:                                              ; preds = %177
  %187 = load ptr, ptr @cfun, align 8, !tbaa !136
  %188 = getelementptr inbounds %struct.function, ptr %187, i64 0, i32 1
  %189 = load ptr, ptr %188, align 8, !tbaa !192
  %190 = load ptr, ptr %189, align 8, !tbaa !194
  %191 = getelementptr inbounds %struct.basic_block_def, ptr %190, i64 0, i32 11
  %192 = load i32, ptr %191, align 8, !tbaa !200
  %193 = sdiv i32 %192, 2
  %194 = icmp sgt i32 %183, %193
  br i1 %194, label %206, label %195, !prof !236

195:                                              ; preds = %186, %175
  %196 = load i32, ptr @align_jumps_log, align 4, !tbaa !151
  %197 = load ptr, ptr @dump_file, align 8, !tbaa !136
  %198 = icmp eq ptr %197, null
  br i1 %198, label %201, label %199, !prof !237

199:                                              ; preds = %195
  %200 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 24, i64 1, ptr nonnull %197)
  br label %201

201:                                              ; preds = %199, %195
  %202 = icmp slt i32 %88, %196
  %203 = load i32, ptr @align_jumps_max_skip, align 4
  %204 = tail call i32 @llvm.smax.i32(i32 %88, i32 %196)
  %205 = select i1 %202, i32 %203, i32 %89, !prof !237
  br label %206

206:                                              ; preds = %201, %186, %177, %173
  %207 = phi i32 [ %88, %173 ], [ %88, %186 ], [ %88, %177 ], [ %204, %201 ]
  %208 = phi i32 [ %89, %173 ], [ %89, %186 ], [ %89, %177 ], [ %205, %201 ]
  br i1 %174, label %232, label %209, !prof !232

209:                                              ; preds = %206
  %210 = tail call zeroext i8 @optimize_bb_for_speed_p(ptr noundef nonnull %63) #29
  %211 = icmp ne i8 %210, 0
  %212 = add nsw i32 %94, %93
  %213 = icmp sgt i32 %212, %47
  %214 = select i1 %211, i1 %213, i1 false, !prof !238
  br i1 %214, label %215, label %232, !prof !239

215:                                              ; preds = %209
  %216 = load ptr, ptr @compiler_params, align 8, !tbaa !136
  %217 = getelementptr inbounds %struct.param_info, ptr %216, i64 45, i32 1
  %218 = load i32, ptr %217, align 8, !tbaa !203
  %219 = mul nsw i32 %218, %93
  %220 = icmp sgt i32 %94, %219
  br i1 %220, label %221, label %232, !prof !240

221:                                              ; preds = %215
  %222 = load i32, ptr @align_loops_log, align 4, !tbaa !151
  %223 = load ptr, ptr @dump_file, align 8, !tbaa !136
  %224 = icmp eq ptr %223, null
  br i1 %224, label %227, label %225, !prof !241

225:                                              ; preds = %221
  %226 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 33, i64 1, ptr nonnull %223)
  br label %227

227:                                              ; preds = %225, %221
  %228 = icmp slt i32 %207, %222
  %229 = load i32, ptr @align_loops_max_skip, align 4
  %230 = tail call i32 @llvm.smax.i32(i32 %207, i32 %222)
  %231 = select i1 %228, i32 %229, i32 %208, !prof !241
  br label %232

232:                                              ; preds = %227, %215, %209, %206
  %233 = phi i32 [ %207, %215 ], [ %207, %209 ], [ %207, %206 ], [ %230, %227 ]
  %234 = phi i32 [ %208, %215 ], [ %208, %209 ], [ %208, %206 ], [ %231, %227 ]
  %235 = trunc i32 %233 to i16
  %236 = load ptr, ptr @label_align, align 8, !tbaa !136
  %237 = getelementptr inbounds %struct.rtx_def, ptr %66, i64 1, i32 1
  %238 = load i32, ptr %237, align 8, !tbaa !147
  %239 = load i32, ptr @min_labelno, align 4, !tbaa !151
  %240 = sub nsw i32 %238, %239
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.label_alignment, ptr %236, i64 %241
  store i16 %235, ptr %242, align 2, !tbaa !179
  %243 = trunc i32 %234 to i16
  %244 = load i32, ptr %237, align 8, !tbaa !147
  %245 = sub nsw i32 %244, %239
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds %struct.label_alignment, ptr %236, i64 %246, i32 1
  store i16 %243, ptr %247, align 2, !tbaa !181
  br label %248

248:                                              ; preds = %73, %76, %232
  %249 = getelementptr inbounds %struct.basic_block_def, ptr %63, i64 0, i32 6
  %250 = load ptr, ptr %249, align 8, !tbaa !197
  %251 = load ptr, ptr @cfun, align 8, !tbaa !136
  %252 = getelementptr inbounds %struct.function, ptr %251, i64 0, i32 1
  %253 = load ptr, ptr %252, align 8, !tbaa !192
  %254 = getelementptr inbounds %struct.control_flow_graph, ptr %253, i64 0, i32 1
  %255 = load ptr, ptr %254, align 8, !tbaa !196
  %256 = icmp eq ptr %250, %255
  br i1 %256, label %257, label %62, !prof !201, !llvm.loop !242

257:                                              ; preds = %248, %52
  %258 = load ptr, ptr @dump_file, align 8, !tbaa !136
  %259 = icmp eq ptr %258, null
  br i1 %259, label %261, label %260, !prof !191

260:                                              ; preds = %257
  tail call void @loop_optimizer_finalize() #29
  tail call void @free_dominance_info(i32 noundef 1) #29
  br label %261

261:                                              ; preds = %257, %260, %4, %14
  ret i32 0
}

declare i32 @max_label_num() local_unnamed_addr #3

declare i32 @get_first_label_num() local_unnamed_addr #3

declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare zeroext i8 @optimize_function_for_size_p(ptr noundef) local_unnamed_addr #3

declare void @dump_flow_info(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @flow_loops_dump(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @loop_optimizer_init(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

declare zeroext i8 @optimize_bb_for_size_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #19

declare zeroext i8 @optimize_bb_for_speed_p(ptr noundef) local_unnamed_addr #3

declare void @loop_optimizer_finalize() local_unnamed_addr #3

declare void @free_dominance_info(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @shorten_branches(ptr noundef %0) local_unnamed_addr #18 !prof !156 {
  %2 = alloca [16 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %2) #29
  %3 = tail call i32 @get_max_uid() #29
  %4 = load ptr, ptr @uid_shuid, align 8, !tbaa !136
  tail call void @free(ptr noundef %4)
  %5 = sext i32 %3 to i64
  %6 = shl nsw i64 %5, 2
  %7 = tail call ptr @xmalloc(i64 noundef %6) #29
  store ptr %7, ptr @uid_shuid, align 8, !tbaa !136
  %8 = load i32, ptr @max_labelno, align 4, !tbaa !151
  %9 = tail call i32 @max_label_num() #29
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %32, label %11, !prof !191

11:                                               ; preds = %1
  %12 = load i32, ptr @max_labelno, align 4, !tbaa !151
  %13 = tail call i32 @max_label_num() #29
  store i32 %13, ptr @max_labelno, align 4, !tbaa !151
  %14 = load i32, ptr @min_labelno, align 4, !tbaa !151
  %15 = sub nsw i32 %13, %14
  %16 = add nsw i32 %15, 1
  %17 = sub nsw i32 %12, %14
  %18 = load ptr, ptr @label_align, align 8, !tbaa !136
  %19 = sext i32 %16 to i64
  %20 = shl nsw i64 %19, 2
  %21 = tail call ptr @xrealloc(ptr noundef %18, i64 noundef %20) #29
  store ptr %21, ptr @label_align, align 8, !tbaa !136
  %22 = icmp sgt i32 %12, %13
  br i1 %22, label %23, label %24

23:                                               ; preds = %11
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 888, ptr noundef nonnull @.str.12) #29
  br label %24

24:                                               ; preds = %11, %23
  %25 = load ptr, ptr @label_align, align 8, !tbaa !136
  %26 = sext i32 %17 to i64
  %27 = getelementptr %struct.label_alignment, ptr %25, i64 %26
  %28 = getelementptr %struct.label_alignment, ptr %27, i64 1
  %29 = sub i32 %15, %17
  %30 = sext i32 %29 to i64
  %31 = shl nsw i64 %30, 2
  tail call void @llvm.memset.p0.i64(ptr align 2 %28, i8 0, i64 %31, i1 false)
  br label %32

32:                                               ; preds = %24, %1
  %33 = tail call ptr @get_insns() #29
  %34 = icmp eq ptr %33, null
  br i1 %34, label %132, label %35, !prof !199

35:                                               ; preds = %32, %128
  %36 = phi ptr [ %130, %128 ], [ %33, %32 ]
  %37 = phi i32 [ %38, %128 ], [ 1, %32 ]
  %38 = add nuw nsw i32 %37, 1
  %39 = load ptr, ptr @uid_shuid, align 8, !tbaa !136
  %40 = getelementptr inbounds %struct.rtx_def, ptr %36, i64 0, i32 1
  %41 = load i32, ptr %40, align 8, !tbaa !147
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, ptr %39, i64 %42
  store i32 %37, ptr %43, align 4, !tbaa !151
  %44 = load i32, ptr %36, align 8
  %45 = and i32 %44, 65535
  %46 = icmp eq i32 %45, 12
  br i1 %46, label %47, label %128, !prof !243

47:                                               ; preds = %35
  %48 = load ptr, ptr @label_align, align 8, !tbaa !136
  %49 = getelementptr inbounds %struct.rtx_def, ptr %36, i64 1, i32 1
  %50 = load i32, ptr %49, align 8, !tbaa !147
  %51 = load i32, ptr @min_labelno, align 4, !tbaa !151
  %52 = sub nsw i32 %50, %51
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.label_alignment, ptr %48, i64 %53
  %55 = load i16, ptr %54, align 2, !tbaa !179
  %56 = icmp sgt i16 %55, 0
  br i1 %56, label %57, label %62, !prof !244

57:                                               ; preds = %47
  %58 = zext nneg i16 %55 to i32
  %59 = getelementptr inbounds %struct.label_alignment, ptr %48, i64 %53, i32 1
  %60 = load i16, ptr %59, align 2, !tbaa !181
  %61 = zext i16 %60 to i32
  br label %62

62:                                               ; preds = %57, %47
  %63 = phi i32 [ %61, %57 ], [ 0, %47 ]
  %64 = phi i32 [ %58, %57 ], [ 0, %47 ]
  %65 = tail call ptr @next_nonnote_insn(ptr noundef nonnull %36) #29
  %66 = icmp eq ptr %65, null
  br i1 %66, label %77, label %67, !prof !178

67:                                               ; preds = %62
  %68 = load i32, ptr %65, align 8
  %69 = and i32 %68, 65535
  %70 = icmp eq i32 %69, 9
  br i1 %70, label %71, label %77, !prof !245

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.rtx_def, ptr %65, i64 1
  %73 = load ptr, ptr %72, align 8, !tbaa !147
  %74 = load i32, ptr %73, align 8
  %75 = and i32 %74, 65534
  %76 = icmp eq i32 %75, 20
  br label %77

77:                                               ; preds = %71, %67, %62
  %78 = phi i1 [ false, %62 ], [ false, %67 ], [ %76, %71 ]
  br i1 %78, label %85, label %79, !prof !246

79:                                               ; preds = %77
  %80 = load i32, ptr @align_labels_log, align 4, !tbaa !151
  %81 = icmp slt i32 %64, %80
  %82 = load i32, ptr @align_labels_max_skip, align 4
  %83 = select i1 %81, i32 %82, i32 %63, !prof !247
  %84 = tail call i32 @llvm.smax.i32(i32 %64, i32 %80)
  br label %85

85:                                               ; preds = %79, %77
  %86 = phi i32 [ %63, %77 ], [ %83, %79 ]
  %87 = phi i32 [ %64, %77 ], [ %84, %79 ]
  %88 = load ptr, ptr @readonly_data_section, align 8, !tbaa !136
  %89 = load ptr, ptr @text_section, align 8, !tbaa !136
  %90 = icmp eq ptr %88, %89
  %91 = and i1 %78, %90
  br i1 %91, label %92, label %113, !prof !178

92:                                               ; preds = %85
  %93 = getelementptr inbounds %struct.rtx_def, ptr %65, i64 1
  %94 = load ptr, ptr %93, align 8, !tbaa !147
  %95 = load i32, ptr %94, align 8
  %96 = lshr i32 %95, 16
  %97 = and i32 %96, 255
  %98 = zext nneg i32 %97 to i64
  %99 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %98
  %100 = load i8, ptr %99, align 1, !tbaa !147
  %101 = zext i8 %100 to i32
  %102 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !151
  %103 = and i32 %102, 32
  %104 = icmp eq i32 %103, 0
  %105 = select i1 %104, i32 16, i32 32
  %106 = tail call i32 @llvm.umin.i32(i32 %105, i32 %101)
  %107 = zext nneg i32 %106 to i64
  %108 = tail call i32 @exact_log2(i64 noundef %107) #29
  %109 = icmp slt i32 %87, %108
  %110 = load i32, ptr @align_labels_max_skip, align 4
  %111 = select i1 %109, i32 %110, i32 %86
  %112 = tail call i32 @llvm.smax.i32(i32 %87, i32 %108)
  br label %113

113:                                              ; preds = %92, %85
  %114 = phi i32 [ %86, %85 ], [ %111, %92 ]
  %115 = phi i32 [ %87, %85 ], [ %112, %92 ]
  %116 = trunc i32 %115 to i16
  %117 = load ptr, ptr @label_align, align 8, !tbaa !136
  %118 = load i32, ptr %49, align 8, !tbaa !147
  %119 = load i32, ptr @min_labelno, align 4, !tbaa !151
  %120 = sub nsw i32 %118, %119
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.label_alignment, ptr %117, i64 %121
  store i16 %116, ptr %122, align 2, !tbaa !179
  %123 = trunc i32 %114 to i16
  %124 = load i32, ptr %49, align 8, !tbaa !147
  %125 = sub nsw i32 %124, %119
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.label_alignment, ptr %117, i64 %126, i32 1
  store i16 %123, ptr %127, align 2, !tbaa !181
  br label %128

128:                                              ; preds = %35, %113
  %129 = getelementptr inbounds %struct.rtx_def, ptr %36, i64 0, i32 1, i32 0, i32 0, i64 2
  %130 = load ptr, ptr %129, align 8, !tbaa !147
  %131 = icmp eq ptr %130, null
  br i1 %131, label %132, label %35, !prof !248, !llvm.loop !249

132:                                              ; preds = %128, %32
  %133 = tail call ptr @xmalloc(i64 noundef %6) #29
  store ptr %133, ptr @insn_lengths, align 8, !tbaa !136
  store i32 %3, ptr @insn_lengths_max_uid, align 4, !tbaa !151
  %134 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %3, i64 noundef 8, i64 noundef 4) #29
  store ptr %134, ptr @insn_addresses_, align 8, !tbaa !136
  %135 = icmp eq ptr %134, null
  br i1 %135, label %138, label %136, !prof !160

136:                                              ; preds = %132
  %137 = load i32, ptr %134, align 4, !tbaa !250
  br label %138

138:                                              ; preds = %136, %132
  %139 = phi i32 [ %137, %136 ], [ 0, %132 ]
  %140 = sub nsw i32 %3, %139
  br i1 %135, label %147, label %141, !prof !160

141:                                              ; preds = %138
  %142 = getelementptr inbounds %struct.VEC_int_base, ptr %134, i64 0, i32 1
  %143 = load i32, ptr %142, align 4, !tbaa !252
  %144 = load i32, ptr %134, align 4, !tbaa !250
  %145 = sub i32 %143, %144
  %146 = icmp uge i32 %145, %140
  br label %149

147:                                              ; preds = %138
  %148 = icmp eq i32 %139, %3
  br label %149

149:                                              ; preds = %147, %141
  %150 = phi i1 [ %146, %141 ], [ %148, %147 ]
  br i1 %150, label %153, label %151, !prof !191

151:                                              ; preds = %149
  %152 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef %134, i32 noundef %140, i64 noundef 8, i64 noundef 4) #29
  store ptr %152, ptr @insn_addresses_, align 8, !tbaa !136
  br label %153

153:                                              ; preds = %149, %151
  %154 = load ptr, ptr @insn_addresses_, align 8, !tbaa !136, !nonnull !253, !noundef !253
  store i32 %3, ptr %154, align 4, !tbaa !250
  %155 = load ptr, ptr @insn_addresses_, align 8
  %156 = icmp eq ptr %155, null
  %157 = getelementptr inbounds %struct.VEC_int_base, ptr %155, i64 0, i32 2
  %158 = select i1 %156, ptr null, ptr %157, !prof !160
  tail call void @llvm.memset.p0.i64(ptr align 4 %158, i8 0, i64 %6, i1 false), !prof !254
  %159 = tail call ptr @xcalloc(i64 noundef %5, i64 noundef 1) #29
  %160 = tail call ptr @xcalloc(i64 noundef %5, i64 noundef 8) #29
  store ptr %160, ptr @uid_align, align 8, !tbaa !136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %2, i8 0, i64 128, i1 false), !tbaa !136
  %161 = tail call ptr @get_last_insn() #29
  %162 = icmp eq ptr %161, null
  br i1 %162, label %204, label %163, !prof !199

163:                                              ; preds = %153
  %164 = load ptr, ptr @label_align, align 8
  %165 = load i32, ptr @min_labelno, align 4
  %166 = load ptr, ptr @uid_align, align 8, !tbaa !136
  br label %167

167:                                              ; preds = %163, %200
  %168 = phi ptr [ %161, %163 ], [ %202, %200 ]
  %169 = getelementptr inbounds %struct.rtx_def, ptr %168, i64 0, i32 1
  %170 = load i32, ptr %169, align 8, !tbaa !147
  %171 = load i32, ptr %168, align 8
  %172 = and i32 %171, 65535
  %173 = icmp eq i32 %172, 12
  br i1 %173, label %174, label %182, !prof !243

174:                                              ; preds = %167
  %175 = getelementptr inbounds %struct.rtx_def, ptr %168, i64 1, i32 1
  %176 = load i32, ptr %175, align 8, !tbaa !147
  %177 = sub nsw i32 %176, %165
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.label_alignment, ptr %164, i64 %178
  %180 = load i16, ptr %179, align 2, !tbaa !179
  %181 = sext i16 %180 to i32
  br label %182

182:                                              ; preds = %167, %174
  %183 = phi i32 [ %181, %174 ], [ 0, %167 ]
  %184 = load ptr, ptr %2, align 16, !tbaa !136
  %185 = sext i32 %170 to i64
  %186 = getelementptr inbounds ptr, ptr %166, i64 %185
  store ptr %184, ptr %186, align 8, !tbaa !136
  %187 = icmp eq i32 %183, 0
  br i1 %187, label %200, label %188, !prof !255

188:                                              ; preds = %182
  %189 = sext i32 %183 to i64
  %190 = getelementptr inbounds [16 x ptr], ptr %2, i64 0, i64 %189
  %191 = load ptr, ptr %190, align 8, !tbaa !136
  store ptr %191, ptr %186, align 8, !tbaa !136
  %192 = icmp sgt i32 %183, 0
  br i1 %192, label %193, label %200, !prof !256

193:                                              ; preds = %188
  %194 = zext nneg i32 %183 to i64
  br label %195

195:                                              ; preds = %193, %195
  %196 = phi i64 [ %194, %193 ], [ %197, %195 ]
  %197 = add nsw i64 %196, -1
  %198 = getelementptr inbounds [16 x ptr], ptr %2, i64 0, i64 %197
  store ptr %168, ptr %198, align 8, !tbaa !136
  %199 = icmp sgt i64 %196, 1
  br i1 %199, label %195, label %200, !prof !257, !llvm.loop !258

200:                                              ; preds = %195, %188, %182
  %201 = getelementptr inbounds %struct.rtx_def, ptr %168, i64 0, i32 1, i32 0, i32 0, i64 1
  %202 = load ptr, ptr %201, align 8, !tbaa !147
  %203 = icmp eq ptr %202, null
  br i1 %203, label %204, label %167, !prof !248, !llvm.loop !259

204:                                              ; preds = %200, %153
  store i32 0, ptr @insn_current_address, align 4, !tbaa !151
  %205 = icmp eq ptr %0, null
  br i1 %205, label %206, label %209, !prof !199

206:                                              ; preds = %337, %204
  %207 = icmp eq ptr %0, null
  %208 = load i32, ptr @length_unit_log, align 4
  br label %346

209:                                              ; preds = %204, %337
  %210 = phi ptr [ %344, %337 ], [ %0, %204 ]
  %211 = getelementptr inbounds %struct.rtx_def, ptr %210, i64 0, i32 1
  %212 = load i32, ptr %211, align 8, !tbaa !147
  %213 = load ptr, ptr @insn_lengths, align 8, !tbaa !136
  %214 = sext i32 %212 to i64
  %215 = getelementptr inbounds i32, ptr %213, i64 %214
  store i32 0, ptr %215, align 4, !tbaa !151
  %216 = load i32, ptr %210, align 8
  %217 = and i32 %216, 65535
  %218 = icmp eq i32 %217, 12
  br i1 %218, label %219, label %238, !prof !243

219:                                              ; preds = %209
  %220 = load ptr, ptr @label_align, align 8, !tbaa !136
  %221 = getelementptr inbounds %struct.rtx_def, ptr %210, i64 1, i32 1
  %222 = load i32, ptr %221, align 8, !tbaa !147
  %223 = load i32, ptr @min_labelno, align 4, !tbaa !151
  %224 = sub nsw i32 %222, %223
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.label_alignment, ptr %220, i64 %225
  %227 = load i16, ptr %226, align 2, !tbaa !179
  %228 = icmp eq i16 %227, 0
  br i1 %228, label %238, label %229, !prof !260

229:                                              ; preds = %219
  %230 = zext nneg i16 %227 to i32
  %231 = shl nuw i32 1, %230
  %232 = load i32, ptr @insn_current_address, align 4, !tbaa !151
  %233 = add i32 %231, -1
  %234 = add i32 %233, %232
  %235 = sub nsw i32 0, %231
  %236 = and i32 %234, %235
  %237 = sub nsw i32 %236, %232
  store i32 %237, ptr %215, align 4, !tbaa !151
  br label %238

238:                                              ; preds = %219, %229, %209
  %239 = load i32, ptr @insn_current_address, align 4, !tbaa !151
  %240 = load i32, ptr %215, align 4, !tbaa !151
  %241 = add nsw i32 %240, %239
  %242 = load ptr, ptr @insn_addresses_, align 8
  %243 = icmp eq ptr %242, null
  %244 = getelementptr inbounds %struct.VEC_int_base, ptr %242, i64 0, i32 2
  %245 = select i1 %243, ptr null, ptr %244, !prof !261
  %246 = getelementptr inbounds i32, ptr %245, i64 %214
  store i32 %241, ptr %246, align 4, !tbaa !151
  %247 = load i32, ptr %210, align 8
  %248 = trunc i32 %247 to i16
  switch i16 %248, label %249 [
    i16 13, label %337
    i16 11, label %337
    i16 12, label %337
    i16 7, label %337
  ], !prof !262

249:                                              ; preds = %238
  %250 = and i32 %247, 134217728
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %252, label %337, !prof !263

252:                                              ; preds = %249
  %253 = getelementptr inbounds %struct.rtx_def, ptr %210, i64 1
  %254 = load ptr, ptr %253, align 8, !tbaa !147
  %255 = load i32, ptr %254, align 8
  %256 = trunc i32 %255 to i16
  switch i16 %256, label %276 [
    i16 20, label %257
    i16 21, label %257
    i16 16, label %279
  ], !prof !264

257:                                              ; preds = %252, %252
  %258 = load ptr, ptr @readonly_data_section, align 8, !tbaa !136
  %259 = load ptr, ptr @text_section, align 8, !tbaa !136
  %260 = icmp eq ptr %258, %259
  br i1 %260, label %261, label %337, !prof !265

261:                                              ; preds = %257
  %262 = getelementptr inbounds %struct.rtx_def, ptr %254, i64 0, i32 1
  %263 = and i32 %255, 65535
  %264 = icmp eq i32 %263, 21
  %265 = zext i1 %264 to i64
  %266 = getelementptr inbounds [1 x %union.rtunion_def], ptr %262, i64 0, i64 %265
  %267 = load ptr, ptr %266, align 8, !tbaa !147
  %268 = load i32, ptr %267, align 8, !tbaa !172
  %269 = lshr i32 %255, 16
  %270 = and i32 %269, 255
  %271 = zext nneg i32 %270 to i64
  %272 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %271
  %273 = load i8, ptr %272, align 1, !tbaa !147
  %274 = zext i8 %273 to i32
  %275 = mul nsw i32 %268, %274
  store i32 %275, ptr %215, align 4, !tbaa !151
  br label %337

276:                                              ; preds = %252
  %277 = tail call i32 @asm_noperands(ptr noundef nonnull %254) #29
  %278 = icmp sgt i32 %277, -1
  br i1 %278, label %279, label %285, !prof !266

279:                                              ; preds = %252, %276
  %280 = tail call fastcc i32 @asm_insn_count(ptr noundef nonnull %254)
  %281 = tail call i32 @insn_default_length(ptr noundef nonnull %210) #29
  %282 = mul nsw i32 %281, %280
  %283 = load ptr, ptr @insn_lengths, align 8, !tbaa !136
  %284 = getelementptr inbounds i32, ptr %283, i64 %214
  store i32 %282, ptr %284, align 4, !tbaa !151
  br label %337

285:                                              ; preds = %276
  %286 = load i32, ptr %254, align 8
  %287 = trunc i32 %286 to i16
  switch i16 %287, label %330 [
    i16 5, label %288
    i16 24, label %337
    i16 25, label %337
  ], !prof !267

288:                                              ; preds = %285
  %289 = getelementptr inbounds %struct.rtx_def, ptr %254, i64 0, i32 1
  %290 = load ptr, ptr %289, align 8, !tbaa !147
  %291 = load i32, ptr %290, align 8, !tbaa !172
  %292 = icmp sgt i32 %291, 0
  br i1 %292, label %293, label %337

293:                                              ; preds = %288, %316
  %294 = phi i64 [ %325, %316 ], [ 0, %288 ]
  %295 = phi ptr [ %326, %316 ], [ %290, %288 ]
  %296 = getelementptr inbounds %struct.rtvec_def, ptr %295, i64 0, i32 1, i64 %294
  %297 = load ptr, ptr %296, align 8, !tbaa !136
  %298 = getelementptr inbounds %struct.rtx_def, ptr %297, i64 0, i32 1
  %299 = load i32, ptr %298, align 8, !tbaa !147
  %300 = load i32, ptr %254, align 8
  %301 = and i32 %300, 65535
  %302 = icmp eq i32 %301, 16
  br i1 %302, label %308, label %303

303:                                              ; preds = %293
  %304 = getelementptr inbounds %struct.rtx_def, ptr %297, i64 1
  %305 = load ptr, ptr %304, align 8, !tbaa !147
  %306 = tail call i32 @asm_noperands(ptr noundef %305) #29
  %307 = icmp sgt i32 %306, -1
  br i1 %307, label %308, label %314

308:                                              ; preds = %303, %293
  %309 = getelementptr inbounds %struct.rtx_def, ptr %297, i64 1
  %310 = load ptr, ptr %309, align 8, !tbaa !147
  %311 = tail call fastcc i32 @asm_insn_count(ptr noundef %310)
  %312 = tail call i32 @insn_default_length(ptr noundef %297) #29
  %313 = mul nsw i32 %312, %311
  br label %316

314:                                              ; preds = %303
  %315 = tail call i32 @insn_default_length(ptr noundef %297) #29
  br label %316

316:                                              ; preds = %314, %308
  %317 = phi i32 [ %313, %308 ], [ %315, %314 ]
  %318 = load ptr, ptr @insn_lengths, align 8, !tbaa !136
  %319 = sext i32 %299 to i64
  %320 = getelementptr inbounds i32, ptr %318, i64 %319
  store i32 %317, ptr %320, align 4, !tbaa !151
  %321 = getelementptr inbounds i8, ptr %159, i64 %319
  store i8 0, ptr %321, align 1, !tbaa !147
  %322 = getelementptr inbounds i32, ptr %318, i64 %214
  %323 = load i32, ptr %322, align 4, !tbaa !151
  %324 = add nsw i32 %323, %317
  store i32 %324, ptr %322, align 4, !tbaa !151
  %325 = add nuw nsw i64 %294, 1
  %326 = load ptr, ptr %289, align 8, !tbaa !147
  %327 = load i32, ptr %326, align 8, !tbaa !172
  %328 = sext i32 %327 to i64
  %329 = icmp slt i64 %325, %328
  br i1 %329, label %293, label %337, !llvm.loop !268

330:                                              ; preds = %285
  %331 = tail call i32 @insn_default_length(ptr noundef nonnull %210) #29
  %332 = load ptr, ptr @insn_lengths, align 8, !tbaa !136
  %333 = getelementptr inbounds i32, ptr %332, i64 %214
  store i32 %331, ptr %333, align 4, !tbaa !151
  %334 = tail call i32 @insn_variable_length_p(ptr noundef nonnull %210) #29
  %335 = trunc i32 %334 to i8
  %336 = getelementptr inbounds i8, ptr %159, i64 %214
  store i8 %335, ptr %336, align 1, !tbaa !147
  br label %337

337:                                              ; preds = %316, %288, %285, %238, %238, %238, %285, %238, %261, %257, %330, %279, %249
  %338 = load ptr, ptr @insn_lengths, align 8, !tbaa !136
  %339 = getelementptr inbounds i32, ptr %338, i64 %214
  %340 = load i32, ptr %339, align 4, !tbaa !151
  %341 = load i32, ptr @insn_current_address, align 4, !tbaa !151
  %342 = add nsw i32 %341, %340
  store i32 %342, ptr @insn_current_address, align 4, !tbaa !151
  %343 = getelementptr inbounds %struct.rtx_def, ptr %210, i64 0, i32 1, i32 0, i32 0, i64 2
  %344 = load ptr, ptr %343, align 8, !tbaa !147
  %345 = icmp eq ptr %344, null
  br i1 %345, label %206, label %209, !prof !248, !llvm.loop !269

346:                                              ; preds = %206, %524
  store i32 15, ptr @insn_current_align, align 4, !tbaa !151
  store i32 0, ptr @insn_current_address, align 4, !tbaa !151
  br i1 %207, label %524, label %347, !prof !270

347:                                              ; preds = %346, %519
  %348 = phi ptr [ %522, %519 ], [ %0, %346 ]
  %349 = phi i32 [ %520, %519 ], [ 0, %346 ]
  %350 = getelementptr inbounds %struct.rtx_def, ptr %348, i64 0, i32 1
  %351 = load i32, ptr %350, align 8, !tbaa !147
  %352 = load i32, ptr %348, align 8
  %353 = and i32 %352, 65535
  %354 = icmp eq i32 %353, 12
  br i1 %354, label %355, label %390, !prof !271

355:                                              ; preds = %347
  %356 = load ptr, ptr @label_align, align 8, !tbaa !136
  %357 = getelementptr inbounds %struct.rtx_def, ptr %348, i64 1, i32 1
  %358 = load i32, ptr %357, align 8, !tbaa !147
  %359 = load i32, ptr @min_labelno, align 4, !tbaa !151
  %360 = sub nsw i32 %358, %359
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds %struct.label_alignment, ptr %356, i64 %361
  %363 = load i16, ptr %362, align 2, !tbaa !179
  %364 = sext i16 %363 to i32
  %365 = load i32, ptr @insn_current_align, align 4, !tbaa !151
  %366 = icmp slt i32 %365, %364
  br i1 %366, label %367, label %378, !prof !272

367:                                              ; preds = %355
  %368 = shl nuw i32 1, %364
  %369 = load i32, ptr @insn_current_address, align 4, !tbaa !151
  %370 = add i32 %368, -1
  %371 = add i32 %370, %369
  %372 = sub nsw i32 0, %368
  %373 = and i32 %371, %372
  %374 = sub nsw i32 %373, %369
  %375 = load ptr, ptr @insn_lengths, align 8, !tbaa !136
  %376 = sext i32 %351 to i64
  %377 = getelementptr inbounds i32, ptr %375, i64 %376
  store i32 %374, ptr %377, align 4, !tbaa !151
  store i32 %364, ptr @insn_current_align, align 4, !tbaa !151
  store i32 %373, ptr @insn_current_address, align 4, !tbaa !151
  br label %382

378:                                              ; preds = %355
  %379 = load ptr, ptr @insn_lengths, align 8, !tbaa !136
  %380 = sext i32 %351 to i64
  %381 = getelementptr inbounds i32, ptr %379, i64 %380
  store i32 0, ptr %381, align 4, !tbaa !151
  br label %382

382:                                              ; preds = %378, %367
  %383 = load i32, ptr @insn_current_address, align 4, !tbaa !151
  %384 = load ptr, ptr @insn_addresses_, align 8
  %385 = icmp eq ptr %384, null
  %386 = getelementptr inbounds %struct.VEC_int_base, ptr %384, i64 0, i32 2
  %387 = select i1 %385, ptr null, ptr %386, !prof !273
  %388 = sext i32 %351 to i64
  %389 = getelementptr inbounds i32, ptr %387, i64 %388
  store i32 %383, ptr %389, align 4, !tbaa !151
  br label %519

390:                                              ; preds = %347
  %391 = load i32, ptr @insn_current_align, align 4, !tbaa !151
  %392 = icmp slt i32 %208, %391
  br i1 %392, label %393, label %394, !prof !274

393:                                              ; preds = %390
  store i32 %208, ptr @insn_current_align, align 4, !tbaa !151
  br label %394

394:                                              ; preds = %393, %390
  %395 = load ptr, ptr @insn_addresses_, align 8
  %396 = icmp eq ptr %395, null
  %397 = getelementptr inbounds %struct.VEC_int_base, ptr %395, i64 0, i32 2
  %398 = select i1 %396, ptr null, ptr %397, !prof !275
  %399 = sext i32 %351 to i64
  %400 = getelementptr inbounds i32, ptr %398, i64 %399
  %401 = load i32, ptr %400, align 4, !tbaa !151
  store i32 %401, ptr @insn_last_address, align 4, !tbaa !151
  %402 = load i32, ptr @insn_current_address, align 4, !tbaa !151
  store i32 %402, ptr %400, align 4, !tbaa !151
  %403 = getelementptr inbounds i8, ptr %159, i64 %399
  %404 = load i8, ptr %403, align 1, !tbaa !147
  %405 = icmp eq i8 %404, 0
  %406 = load i32, ptr %348, align 8
  %407 = and i32 %406, 65535
  %408 = icmp eq i32 %407, 8
  br i1 %405, label %409, label %452, !prof !276

409:                                              ; preds = %394
  br i1 %408, label %410, label %446, !prof !277

410:                                              ; preds = %409
  %411 = getelementptr inbounds %struct.rtx_def, ptr %348, i64 1
  %412 = load ptr, ptr %411, align 8, !tbaa !147
  %413 = load i32, ptr %412, align 8
  %414 = and i32 %413, 65535
  %415 = icmp eq i32 %414, 5
  br i1 %415, label %416, label %446, !prof !278

416:                                              ; preds = %410
  %417 = getelementptr inbounds %struct.rtx_def, ptr %412, i64 0, i32 1
  %418 = load ptr, ptr %417, align 8, !tbaa !147
  %419 = load i32, ptr %418, align 8, !tbaa !172
  %420 = icmp sgt i32 %419, 0
  br i1 %420, label %421, label %519

421:                                              ; preds = %416
  %422 = load ptr, ptr @insn_lengths, align 8, !tbaa !136
  br label %423

423:                                              ; preds = %421, %423
  %424 = phi i64 [ 0, %421 ], [ %441, %423 ]
  %425 = phi ptr [ %418, %421 ], [ %442, %423 ]
  %426 = getelementptr inbounds %struct.rtvec_def, ptr %425, i64 0, i32 1, i64 %424
  %427 = load ptr, ptr %426, align 8, !tbaa !136
  %428 = getelementptr inbounds %struct.rtx_def, ptr %427, i64 0, i32 1
  %429 = load i32, ptr %428, align 8, !tbaa !147
  %430 = load i32, ptr @insn_current_address, align 4, !tbaa !151
  %431 = load ptr, ptr @insn_addresses_, align 8
  %432 = icmp eq ptr %431, null
  %433 = getelementptr inbounds %struct.VEC_int_base, ptr %431, i64 0, i32 2
  %434 = select i1 %432, ptr null, ptr %433
  %435 = sext i32 %429 to i64
  %436 = getelementptr inbounds i32, ptr %434, i64 %435
  store i32 %430, ptr %436, align 4, !tbaa !151
  %437 = getelementptr inbounds i32, ptr %422, i64 %435
  %438 = load i32, ptr %437, align 4, !tbaa !151
  %439 = load i32, ptr @insn_current_address, align 4, !tbaa !151
  %440 = add nsw i32 %439, %438
  store i32 %440, ptr @insn_current_address, align 4, !tbaa !151
  %441 = add nuw nsw i64 %424, 1
  %442 = load ptr, ptr %417, align 8, !tbaa !147
  %443 = load i32, ptr %442, align 8, !tbaa !172
  %444 = sext i32 %443 to i64
  %445 = icmp slt i64 %441, %444
  br i1 %445, label %423, label %519, !llvm.loop !279

446:                                              ; preds = %410, %409
  %447 = load ptr, ptr @insn_lengths, align 8, !tbaa !136
  %448 = getelementptr inbounds i32, ptr %447, i64 %399
  %449 = load i32, ptr %448, align 4, !tbaa !151
  %450 = load i32, ptr @insn_current_address, align 4, !tbaa !151
  %451 = add nsw i32 %450, %449
  store i32 %451, ptr @insn_current_address, align 4, !tbaa !151
  br label %519

452:                                              ; preds = %394
  br i1 %408, label %453, label %507, !prof !280

453:                                              ; preds = %452
  %454 = getelementptr inbounds %struct.rtx_def, ptr %348, i64 1
  %455 = load ptr, ptr %454, align 8, !tbaa !147
  %456 = load i32, ptr %455, align 8
  %457 = and i32 %456, 65535
  %458 = icmp eq i32 %457, 5
  br i1 %458, label %459, label %507

459:                                              ; preds = %453
  %460 = getelementptr inbounds %struct.rtx_def, ptr %455, i64 0, i32 1
  %461 = load ptr, ptr %460, align 8, !tbaa !147
  %462 = load i32, ptr %461, align 8, !tbaa !172
  %463 = icmp sgt i32 %462, 0
  br i1 %463, label %464, label %511

464:                                              ; preds = %459, %496
  %465 = phi i64 [ %502, %496 ], [ 0, %459 ]
  %466 = phi ptr [ %503, %496 ], [ %461, %459 ]
  %467 = phi i32 [ %497, %496 ], [ %349, %459 ]
  %468 = phi i32 [ %501, %496 ], [ 0, %459 ]
  %469 = getelementptr inbounds %struct.rtvec_def, ptr %466, i64 0, i32 1, i64 %465
  %470 = load ptr, ptr %469, align 8, !tbaa !136
  %471 = getelementptr inbounds %struct.rtx_def, ptr %470, i64 0, i32 1
  %472 = load i32, ptr %471, align 8, !tbaa !147
  %473 = load i32, ptr @insn_current_address, align 4, !tbaa !151
  %474 = load ptr, ptr @insn_addresses_, align 8
  %475 = icmp eq ptr %474, null
  %476 = getelementptr inbounds %struct.VEC_int_base, ptr %474, i64 0, i32 2
  %477 = select i1 %475, ptr null, ptr %476
  %478 = sext i32 %472 to i64
  %479 = getelementptr inbounds i32, ptr %477, i64 %478
  store i32 %473, ptr %479, align 4, !tbaa !151
  %480 = getelementptr inbounds i8, ptr %159, i64 %478
  %481 = load i8, ptr %480, align 1, !tbaa !147
  %482 = icmp eq i8 %481, 0
  br i1 %482, label %483, label %487

483:                                              ; preds = %464
  %484 = load ptr, ptr @insn_lengths, align 8, !tbaa !136
  %485 = getelementptr inbounds i32, ptr %484, i64 %478
  %486 = load i32, ptr %485, align 4, !tbaa !151
  br label %489

487:                                              ; preds = %464
  %488 = tail call i32 @insn_current_length(ptr noundef %470) #29
  br label %489

489:                                              ; preds = %487, %483
  %490 = phi i32 [ %488, %487 ], [ %486, %483 ]
  %491 = load ptr, ptr @insn_lengths, align 8, !tbaa !136
  %492 = getelementptr inbounds i32, ptr %491, i64 %478
  %493 = load i32, ptr %492, align 4, !tbaa !151
  %494 = icmp eq i32 %490, %493
  br i1 %494, label %496, label %495

495:                                              ; preds = %489
  store i32 %490, ptr %492, align 4, !tbaa !151
  br label %496

496:                                              ; preds = %495, %489
  %497 = phi i32 [ 1, %495 ], [ %467, %489 ]
  %498 = load i32, ptr %492, align 4, !tbaa !151
  %499 = load i32, ptr @insn_current_address, align 4, !tbaa !151
  %500 = add nsw i32 %499, %498
  store i32 %500, ptr @insn_current_address, align 4, !tbaa !151
  %501 = add nsw i32 %490, %468
  %502 = add nuw nsw i64 %465, 1
  %503 = load ptr, ptr %460, align 8, !tbaa !147
  %504 = load i32, ptr %503, align 8, !tbaa !172
  %505 = sext i32 %504 to i64
  %506 = icmp slt i64 %502, %505
  br i1 %506, label %464, label %511, !llvm.loop !281

507:                                              ; preds = %453, %452
  %508 = tail call i32 @insn_current_length(ptr noundef nonnull %348) #29
  %509 = load i32, ptr @insn_current_address, align 4, !tbaa !151
  %510 = add nsw i32 %509, %508
  store i32 %510, ptr @insn_current_address, align 4, !tbaa !151
  br label %511

511:                                              ; preds = %496, %459, %507
  %512 = phi i32 [ %508, %507 ], [ 0, %459 ], [ %501, %496 ]
  %513 = phi i32 [ %349, %507 ], [ %349, %459 ], [ %497, %496 ]
  %514 = load ptr, ptr @insn_lengths, align 8, !tbaa !136
  %515 = getelementptr inbounds i32, ptr %514, i64 %399
  %516 = load i32, ptr %515, align 4, !tbaa !151
  %517 = icmp eq i32 %512, %516
  br i1 %517, label %519, label %518, !prof !282

518:                                              ; preds = %511
  store i32 %512, ptr %515, align 4, !tbaa !151
  br label %519

519:                                              ; preds = %423, %416, %511, %518, %446, %382
  %520 = phi i32 [ %349, %382 ], [ %349, %446 ], [ 1, %518 ], [ %513, %511 ], [ %349, %416 ], [ %349, %423 ]
  %521 = getelementptr inbounds %struct.rtx_def, ptr %348, i64 0, i32 1, i32 0, i32 0, i64 2
  %522 = load ptr, ptr %521, align 8, !tbaa !147
  %523 = icmp eq ptr %522, null
  br i1 %523, label %524, label %347, !prof !283, !llvm.loop !284

524:                                              ; preds = %519, %346
  %525 = phi i32 [ 0, %346 ], [ %520, %519 ]
  %526 = load i32, ptr @optimize, align 4, !tbaa !151
  %527 = icmp ne i32 %526, 0
  %528 = icmp ne i32 %525, 0
  %529 = select i1 %527, i1 %528, i1 false, !prof !285
  br i1 %529, label %346, label %530, !prof !286, !llvm.loop !287

530:                                              ; preds = %524
  tail call void @free(ptr noundef %159)
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %2) #29
  ret void
}

declare i32 @get_max_uid() local_unnamed_addr #3

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #20

declare ptr @get_insns() local_unnamed_addr #3

declare ptr @next_nonnote_insn(ptr noundef) local_unnamed_addr #3

declare ptr @get_last_insn() local_unnamed_addr #3

declare i32 @asm_noperands(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc i32 @asm_insn_count(ptr noundef %0) unnamed_addr #21 !prof !135 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 16
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !147
  br label %10

8:                                                ; preds = %1
  %9 = tail call ptr @decode_asm_operands(ptr noundef nonnull %0, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #29
  br label %10

10:                                               ; preds = %8, %5
  %11 = phi ptr [ %7, %5 ], [ %9, %8 ]
  %12 = load i8, ptr %11, align 1, !tbaa !147
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %23, label %14

14:                                               ; preds = %10, %20
  %15 = phi ptr [ %22, %20 ], [ %11, %10 ]
  %16 = phi i32 [ %21, %20 ], [ 1, %10 ]
  %17 = load i8, ptr %15, align 1, !tbaa !147
  switch i8 %17, label %20 [
    i8 0, label %23
    i8 59, label %18
    i8 10, label %18
  ]

18:                                               ; preds = %14, %14
  %19 = add nsw i32 %16, 1
  br label %20

20:                                               ; preds = %18, %14
  %21 = phi i32 [ %19, %18 ], [ %16, %14 ]
  %22 = getelementptr inbounds i8, ptr %15, i64 1
  br label %14, !llvm.loop !288

23:                                               ; preds = %14, %10
  %24 = phi i32 [ 0, %10 ], [ %16, %14 ]
  ret i32 %24
}

declare i32 @insn_variable_length_p(ptr noundef) local_unnamed_addr #3

declare i32 @insn_current_length(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @asm_str_count(ptr nocapture noundef readonly %0) local_unnamed_addr #22 !prof !135 {
  %2 = load i8, ptr %0, align 1, !tbaa !147
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %13, label %4

4:                                                ; preds = %1, %10
  %5 = phi ptr [ %12, %10 ], [ %0, %1 ]
  %6 = phi i32 [ %11, %10 ], [ 1, %1 ]
  %7 = load i8, ptr %5, align 1, !tbaa !147
  switch i8 %7, label %10 [
    i8 0, label %13
    i8 59, label %8
    i8 10, label %8
  ]

8:                                                ; preds = %4, %4
  %9 = add nsw i32 %6, 1
  br label %10

10:                                               ; preds = %4, %8
  %11 = phi i32 [ %9, %8 ], [ %6, %4 ]
  %12 = getelementptr inbounds i8, ptr %5, i64 1
  br label %4, !llvm.loop !288

13:                                               ; preds = %4, %1
  %14 = phi i32 [ 0, %1 ], [ %6, %4 ]
  ret i32 %14
}

; Function Attrs: cold nounwind uwtable
define dso_local void @add_debug_prefix_map(ptr noundef %0) local_unnamed_addr #21 !prof !135 {
  %2 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 61)
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.13, ptr noundef %0) #29
  br label %19

5:                                                ; preds = %1
  %6 = tail call ptr @xmalloc(i64 noundef 40) #29
  %7 = ptrtoint ptr %2 to i64
  %8 = ptrtoint ptr %0 to i64
  %9 = sub i64 %7, %8
  %10 = tail call ptr @xstrndup(ptr noundef %0, i64 noundef %9) #29
  store ptr %10, ptr %6, align 8, !tbaa !289
  %11 = getelementptr inbounds %struct.debug_prefix_map, ptr %6, i64 0, i32 2
  store i64 %9, ptr %11, align 8, !tbaa !291
  %12 = getelementptr inbounds i8, ptr %2, i64 1
  %13 = tail call ptr @xstrdup(ptr noundef nonnull %12) #29
  %14 = getelementptr inbounds %struct.debug_prefix_map, ptr %6, i64 0, i32 1
  store ptr %13, ptr %14, align 8, !tbaa !292
  %15 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %12)
  %16 = getelementptr inbounds %struct.debug_prefix_map, ptr %6, i64 0, i32 3
  store i64 %15, ptr %16, align 8, !tbaa !293
  %17 = load ptr, ptr @debug_prefix_maps, align 8, !tbaa !136
  %18 = getelementptr inbounds %struct.debug_prefix_map, ptr %6, i64 0, i32 4
  store ptr %17, ptr %18, align 8, !tbaa !294
  store ptr %6, ptr @debug_prefix_maps, align 8, !tbaa !136
  br label %19

19:                                               ; preds = %5, %4
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #23

declare void @error(ptr noundef, ...) local_unnamed_addr #3

declare ptr @xstrndup(ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @xstrdup(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #23

; Function Attrs: cold nounwind uwtable
define dso_local ptr @remap_debug_filename(ptr noundef readonly %0) local_unnamed_addr #21 !prof !155 {
  %2 = load ptr, ptr @debug_prefix_maps, align 8, !tbaa !136
  %3 = icmp eq ptr %2, null
  br i1 %3, label %28, label %4, !prof !295

4:                                                ; preds = %1, %11
  %5 = phi ptr [ %13, %11 ], [ %2, %1 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !289
  %7 = getelementptr inbounds %struct.debug_prefix_map, ptr %5, i64 0, i32 2
  %8 = load i64, ptr %7, align 8, !tbaa !291
  %9 = tail call i32 @strncmp(ptr noundef %0, ptr noundef %6, i64 noundef %8)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.debug_prefix_map, ptr %5, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !136
  %14 = icmp eq ptr %13, null
  br i1 %14, label %28, label %4, !prof !295, !llvm.loop !296

15:                                               ; preds = %4
  %16 = getelementptr inbounds i8, ptr %0, i64 %8
  %17 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %16)
  %18 = add i64 %17, 1
  %19 = getelementptr inbounds %struct.debug_prefix_map, ptr %5, i64 0, i32 3
  %20 = load i64, ptr %19, align 8, !tbaa !293
  %21 = add i64 %18, %20
  %22 = alloca i8, i64 %21, align 16
  %23 = getelementptr inbounds %struct.debug_prefix_map, ptr %5, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !292
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %22, ptr align 1 %24, i64 %20, i1 false)
  %25 = load i64, ptr %19, align 8, !tbaa !293
  %26 = getelementptr inbounds i8, ptr %22, i64 %25
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %26, ptr align 1 %16, i64 %18, i1 false)
  %27 = call ptr @ggc_alloc_string(ptr noundef nonnull %22, i32 noundef -1) #29
  br label %28

28:                                               ; preds = %11, %1, %15
  %29 = phi ptr [ %27, %15 ], [ %0, %1 ], [ %0, %11 ]
  ret ptr %29
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #23

declare ptr @ggc_alloc_string(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @final_start_function(ptr nocapture readnone %0, ptr noundef %1, i32 %2) local_unnamed_addr #18 !prof !156 {
  store i32 0, ptr @block_depth, align 4, !tbaa !151
  store ptr null, ptr @this_is_asm_operands, align 8, !tbaa !136
  %4 = load i32, ptr @prologue_locator, align 4, !tbaa !151
  %5 = tail call ptr @locator_file(i32 noundef %4) #29
  store ptr %5, ptr @last_filename, align 8, !tbaa !136
  %6 = load i32, ptr @prologue_locator, align 4, !tbaa !151
  %7 = tail call i32 @locator_line(i32 noundef %6) #29
  store i32 %7, ptr @last_linenum, align 4, !tbaa !151
  store i32 0, ptr @discriminator, align 4, !tbaa !151
  store i32 0, ptr @last_discriminator, align 4, !tbaa !151
  store i32 %7, ptr @high_function_linenum, align 4, !tbaa !151
  store i32 %7, ptr @high_block_linenum, align 4, !tbaa !151
  %8 = load ptr, ptr @current_function_decl, align 8, !tbaa !136
  %9 = getelementptr inbounds %struct.tree_decl_common, ptr %8, i64 0, i32 2
  %10 = load i64, ptr %9, align 8
  %11 = and i64 %10, 1024
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %18, !prof !191

13:                                               ; preds = %3
  %14 = load ptr, ptr @debug_hooks, align 8, !tbaa !136
  %15 = getelementptr inbounds %struct.gcc_debug_hooks, ptr %14, i64 0, i32 11
  %16 = load ptr, ptr %15, align 8, !tbaa !297
  %17 = load ptr, ptr @last_filename, align 8, !tbaa !136
  tail call void %16(i32 noundef %7, ptr noundef %17) #29, !prof !299
  br label %18

18:                                               ; preds = %13, %3
  %19 = load i32, ptr @write_symbols, align 4
  switch i32 %19, label %26 [
    i32 6, label %20
    i32 3, label %20
  ], !prof !300

20:                                               ; preds = %18, %18
  %21 = load ptr, ptr @current_function_decl, align 8, !tbaa !136
  %22 = getelementptr inbounds %struct.tree_decl_common, ptr %21, i64 0, i32 2
  %23 = load i64, ptr %22, align 8
  %24 = and i64 %23, 1024
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %27, label %26, !prof !160

26:                                               ; preds = %18, %20
  tail call void @dwarf2out_begin_prologue(i32 noundef 0, ptr noundef null) #29
  br label %27

27:                                               ; preds = %26, %20
  %28 = tail call i32 @dwarf2out_do_frame() #29
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %31, label %30, !prof !191

30:                                               ; preds = %27
  tail call void @dwarf2out_frame_debug(ptr noundef null, i8 noundef zeroext 0) #29
  br label %31

31:                                               ; preds = %30, %27
  %32 = load i32, ptr @write_symbols, align 4, !tbaa !151
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %41, label %34, !prof !191

34:                                               ; preds = %31
  tail call void @reemit_insn_block_notes() #29
  %35 = load ptr, ptr @current_function_decl, align 8, !tbaa !136
  tail call void @number_blocks(ptr noundef %35) #29
  %36 = load ptr, ptr @current_function_decl, align 8, !tbaa !136
  %37 = getelementptr inbounds %struct.tree_decl_common, ptr %36, i64 0, i32 5
  %38 = load ptr, ptr %37, align 8, !tbaa !147
  %39 = load i64, ptr %38, align 8
  %40 = or i64 %39, 4194304
  store i64 %40, ptr %38, align 8
  br label %41

41:                                               ; preds = %34, %31
  %42 = load i8, ptr @warn_frame_larger_than, align 1, !tbaa !147
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %52, label %44, !prof !191

44:                                               ; preds = %41
  %45 = tail call i64 @get_frame_size() #29
  %46 = load i64, ptr @frame_larger_than_size, align 8, !tbaa !301
  %47 = icmp sgt i64 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = tail call i64 @get_frame_size() #29
  %50 = load i64, ptr @frame_larger_than_size, align 8, !tbaa !301
  %51 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 99, ptr noundef nonnull @.str.14, i64 noundef %49, i64 noundef %50) #29
  br label %52

52:                                               ; preds = %48, %44, %41
  %53 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 14), align 8, !tbaa !302
  %54 = tail call i64 @get_frame_size() #29
  tail call void %53(ptr noundef %1, i64 noundef %54) #29, !prof !314
  ret void
}

declare ptr @locator_file(i32 noundef) local_unnamed_addr #3

declare i32 @locator_line(i32 noundef) local_unnamed_addr #3

declare void @dwarf2out_begin_prologue(i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @dwarf2out_do_frame() local_unnamed_addr #3

declare void @dwarf2out_frame_debug(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @reemit_insn_block_notes() local_unnamed_addr #3

declare void @number_blocks(ptr noundef) local_unnamed_addr #3

declare i64 @get_frame_size() local_unnamed_addr #3

declare zeroext i8 @warning(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @final_end_function() local_unnamed_addr #18 !prof !156 {
  %1 = load i1, ptr @app_on, align 4
  br i1 %1, label %2, label %5, !prof !160

2:                                                ; preds = %0
  %3 = load ptr, ptr @asm_out_file, align 8, !tbaa !136
  %4 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 8, i64 1, ptr %3)
  store i1 false, ptr @app_on, align 4
  br label %5

5:                                                ; preds = %0, %2
  %6 = load ptr, ptr @current_function_decl, align 8, !tbaa !136
  %7 = getelementptr inbounds %struct.tree_decl_common, ptr %6, i64 0, i32 2
  %8 = load i64, ptr %7, align 8
  %9 = and i64 %8, 1024
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %16, !prof !191

11:                                               ; preds = %5
  %12 = load ptr, ptr @debug_hooks, align 8, !tbaa !136
  %13 = getelementptr inbounds %struct.gcc_debug_hooks, ptr %12, i64 0, i32 15
  %14 = load ptr, ptr %13, align 8, !tbaa !315
  %15 = load i32, ptr @high_function_linenum, align 4, !tbaa !151
  tail call void %14(i32 noundef %15) #29, !prof !316
  br label %16

16:                                               ; preds = %11, %5
  %17 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 17), align 8, !tbaa !317
  %18 = load ptr, ptr @asm_out_file, align 8, !tbaa !136
  %19 = tail call i64 @get_frame_size() #29
  tail call void %17(ptr noundef %18, i64 noundef %19) #29, !prof !318
  %20 = load ptr, ptr @current_function_decl, align 8, !tbaa !136
  %21 = getelementptr inbounds %struct.tree_decl_common, ptr %20, i64 0, i32 2
  %22 = load i64, ptr %21, align 8
  %23 = and i64 %22, 1024
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %31, !prof !191

25:                                               ; preds = %16
  %26 = load ptr, ptr @debug_hooks, align 8, !tbaa !136
  %27 = getelementptr inbounds %struct.gcc_debug_hooks, ptr %26, i64 0, i32 13
  %28 = load ptr, ptr %27, align 8, !tbaa !319
  %29 = load i32, ptr @last_linenum, align 4, !tbaa !151
  %30 = load ptr, ptr @last_filename, align 8, !tbaa !136
  tail call void %28(i32 noundef %29, ptr noundef %30) #29, !prof !299
  br label %31

31:                                               ; preds = %25, %16
  %32 = load i32, ptr @write_symbols, align 4
  switch i32 %32, label %39 [
    i32 6, label %33
    i32 3, label %33
  ], !prof !300

33:                                               ; preds = %31, %31
  %34 = load ptr, ptr @current_function_decl, align 8, !tbaa !136
  %35 = getelementptr inbounds %struct.tree_decl_common, ptr %34, i64 0, i32 2
  %36 = load i64, ptr %35, align 8
  %37 = and i64 %36, 1024
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %45, label %39, !prof !160

39:                                               ; preds = %31, %33
  %40 = tail call i32 @dwarf2out_do_frame() #29
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %45, label %42, !prof !191

42:                                               ; preds = %39
  %43 = load i32, ptr @last_linenum, align 4, !tbaa !151
  %44 = load ptr, ptr @last_filename, align 8, !tbaa !136
  tail call void @dwarf2out_end_epilogue(i32 noundef %43, ptr noundef %44) #29
  br label %45

45:                                               ; preds = %42, %39, %33
  ret void
}

declare void @dwarf2out_end_epilogue(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @final(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #18 !prof !135 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #29
  store i32 0, ptr %4, align 4, !tbaa !151
  tail call void @init_recog() #29
  %5 = icmp eq ptr %0, null
  br i1 %5, label %32, label %6, !prof !199

6:                                                ; preds = %3, %28
  %7 = phi ptr [ %30, %28 ], [ %0, %3 ]
  %8 = getelementptr inbounds %struct.rtx_def, ptr %7, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !147
  %10 = load ptr, ptr @insn_addresses_, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12, !prof !261

12:                                               ; preds = %6
  %13 = load i32, ptr %10, align 4, !tbaa !250
  br label %14

14:                                               ; preds = %6, %12
  %15 = phi i32 [ %13, %12 ], [ 0, %6 ]
  %16 = icmp ult i32 %9, %15
  br i1 %16, label %22, label %17, !prof !320

17:                                               ; preds = %14
  %18 = load i32, ptr %7, align 8
  %19 = and i32 %18, 65535
  %20 = icmp eq i32 %19, 13
  br i1 %20, label %28, label %21

21:                                               ; preds = %17
  call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 1715, ptr noundef nonnull @.str.12) #29
  br label %28

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.VEC_int_base, ptr %10, i64 0, i32 2
  %24 = select i1 %11, ptr null, ptr %23, !prof !261
  %25 = sext i32 %9 to i64
  %26 = getelementptr inbounds i32, ptr %24, i64 %25
  %27 = load i32, ptr %26, align 4, !tbaa !151
  br label %28

28:                                               ; preds = %21, %17, %22
  %29 = phi i32 [ %27, %22 ], [ -1, %17 ], [ -1, %21 ]
  store i32 %29, ptr @insn_current_address, align 4, !tbaa !151
  %30 = call ptr @final_scan_insn(ptr noundef nonnull %7, ptr noundef %1, i32 poison, i32 poison, ptr noundef nonnull %4)
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %6, !prof !248, !llvm.loop !321

32:                                               ; preds = %28, %3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #29
  ret void
}

declare void @init_recog() local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @final_scan_insn(ptr noundef %0, ptr noundef %1, i32 %2, i32 %3, ptr noundef %4) local_unnamed_addr #15 !prof !322 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca [256 x i8], align 16
  %10 = alloca ptr, align 8
  %11 = alloca i8, align 1
  %12 = alloca [30 x i32], align 16
  %13 = alloca [30 x i8], align 16
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca i8, align 1
  %17 = alloca %struct.expanded_location, align 8
  %18 = alloca %struct.expanded_location, align 8
  %19 = alloca %struct.expanded_location, align 8
  %20 = alloca %struct.expanded_location, align 8
  %21 = alloca %struct.expanded_location, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.expanded_location, align 8
  %24 = load i32, ptr @insn_counter, align 4, !tbaa !151
  %25 = add nsw i32 %24, 1
  store i32 %25, ptr @insn_counter, align 4, !tbaa !151
  %26 = load i32, ptr %0, align 8
  %27 = and i32 %26, 134217728
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %1256, !prof !320

29:                                               ; preds = %5
  %30 = trunc i32 %26 to i16
  switch i16 %30, label %461 [
    i16 13, label %31
    i16 11, label %334
    i16 12, label %338
  ], !prof !323

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %33 = load i32, ptr %32, align 8, !tbaa !147
  switch i32 %33, label %333 [
    i32 0, label %1256
    i32 11, label %34
    i32 10, label %53
    i32 7, label %76
    i32 8, label %82
    i32 5, label %88
    i32 6, label %176
    i32 12, label %182
    i32 4, label %183
    i32 2, label %208
    i32 3, label %261
    i32 1, label %318
    i32 9, label %323
  ], !prof !324

34:                                               ; preds = %31
  %35 = load i8, ptr @in_cold_section_p, align 1, !tbaa !147
  %36 = icmp eq i8 %35, 0
  %37 = zext i1 %36 to i8
  store i8 %37, ptr @in_cold_section_p, align 1, !tbaa !147
  %38 = tail call i32 @dwarf2out_do_frame() #29
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %34
  tail call void @dwarf2out_switch_text_section() #29
  br label %51

41:                                               ; preds = %34
  %42 = load ptr, ptr @current_function_decl, align 8, !tbaa !136
  %43 = getelementptr inbounds %struct.tree_decl_common, ptr %42, i64 0, i32 2
  %44 = load i64, ptr %43, align 8
  %45 = and i64 %44, 1024
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %41
  %48 = load ptr, ptr @debug_hooks, align 8, !tbaa !136
  %49 = getelementptr inbounds %struct.gcc_debug_hooks, ptr %48, i64 0, i32 25
  %50 = load ptr, ptr %49, align 8, !tbaa !325
  tail call void %50() #29
  br label %51

51:                                               ; preds = %41, %47, %40
  %52 = tail call ptr @current_function_section() #29
  tail call void @switch_to_section(ptr noundef %52) #29
  br label %1256

53:                                               ; preds = %31
  %54 = load i32, ptr @flag_debug_asm, align 4, !tbaa !151
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %63, label %56, !prof !326

56:                                               ; preds = %53
  %57 = load ptr, ptr @asm_out_file, align 8, !tbaa !136
  %58 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !147
  %60 = getelementptr inbounds %struct.basic_block_def, ptr %59, i64 0, i32 9
  %61 = load i32, ptr %60, align 8, !tbaa !210
  %62 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %57, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef %61)
  br label %63

63:                                               ; preds = %56, %53
  %64 = load i32, ptr %4, align 4, !tbaa !151
  %65 = and i32 %64, 5
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %67, label %69, !prof !327

67:                                               ; preds = %63
  %68 = or disjoint i32 %64, 4
  store i32 %68, ptr %4, align 4, !tbaa !151
  store i1 true, ptr @force_source_line, align 1
  br label %71

69:                                               ; preds = %63
  %70 = or i32 %64, 1
  store i32 %70, ptr %4, align 4, !tbaa !151
  br label %71

71:                                               ; preds = %69, %67
  %72 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 2
  %73 = load ptr, ptr %72, align 8, !tbaa !147
  %74 = getelementptr inbounds %struct.basic_block_def, ptr %73, i64 0, i32 12
  %75 = load i32, ptr %74, align 4, !tbaa !328
  store i32 %75, ptr @discriminator, align 4, !tbaa !151
  br label %1256

76:                                               ; preds = %31
  %77 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 11), align 8, !tbaa !329
  %78 = load ptr, ptr @asm_out_file, align 8, !tbaa !136
  %79 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 2
  %80 = load i32, ptr %79, align 8, !tbaa !147
  %81 = sext i32 %80 to i64
  tail call void %77(ptr noundef %78, ptr noundef nonnull @.str.18, i64 noundef %81) #29
  br label %1256

82:                                               ; preds = %31
  %83 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 11), align 8, !tbaa !329
  %84 = load ptr, ptr @asm_out_file, align 8, !tbaa !136
  %85 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 2
  %86 = load i32, ptr %85, align 8, !tbaa !147
  %87 = sext i32 %86 to i64
  tail call void %83(ptr noundef %84, ptr noundef nonnull @.str.19, i64 noundef %87) #29
  br label %1256

88:                                               ; preds = %31
  %89 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 15), align 8, !tbaa !330
  tail call void %89(ptr noundef %1) #29, !prof !331
  %90 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 35), align 1, !tbaa !332
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %168, label %92, !prof !191

92:                                               ; preds = %88
  %93 = load ptr, ptr @cfun, align 8, !tbaa !136
  %94 = getelementptr inbounds %struct.function, ptr %93, i64 0, i32 20
  %95 = load i32, ptr %94, align 8
  %96 = and i32 %95, 67108864
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %104, label %98

98:                                               ; preds = %92
  %99 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 2), align 8, !tbaa !341
  %100 = load ptr, ptr @current_function_decl, align 8, !tbaa !136
  %101 = getelementptr inbounds %struct.tree_common, ptr %100, i64 0, i32 2
  %102 = load ptr, ptr %101, align 8, !tbaa !147
  %103 = tail call ptr %99(ptr noundef %102, i32 noundef 1) #29
  br label %104

104:                                              ; preds = %98, %92
  %105 = phi ptr [ %103, %98 ], [ null, %92 ]
  %106 = load ptr, ptr @cfun, align 8, !tbaa !136
  %107 = getelementptr inbounds %struct.function, ptr %106, i64 0, i32 7
  %108 = load ptr, ptr %107, align 8, !tbaa !342
  %109 = icmp eq ptr %108, null
  br i1 %109, label %114, label %110

110:                                              ; preds = %104
  %111 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 88, i32 21), align 8, !tbaa !343
  %112 = load ptr, ptr @current_function_decl, align 8, !tbaa !136
  %113 = tail call ptr %111(ptr noundef %112, i8 noundef zeroext 1) #29
  br label %114

114:                                              ; preds = %110, %104
  %115 = phi ptr [ %113, %110 ], [ null, %104 ]
  %116 = tail call ptr @current_function_section() #29
  tail call void @switch_to_section(ptr noundef %116) #29
  %117 = icmp eq ptr %105, null
  br i1 %117, label %128, label %118

118:                                              ; preds = %114
  %119 = load i32, ptr %105, align 8
  %120 = and i32 %119, 65535
  %121 = icmp eq i32 %120, 37
  br i1 %121, label %122, label %128

122:                                              ; preds = %118
  %123 = getelementptr inbounds %struct.rtx_def, ptr %105, i64 0, i32 1
  %124 = load i32, ptr %123, align 8, !tbaa !147
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds [53 x ptr], ptr @reg_names, i64 0, i64 %125
  %127 = load ptr, ptr %126, align 8, !tbaa !136
  tail call void (ptr, ptr, ...) @asm_fprintf(ptr noundef %1, ptr noundef nonnull @.str.55, ptr noundef %127)
  br label %128

128:                                              ; preds = %122, %118, %114
  %129 = icmp eq ptr %115, null
  br i1 %129, label %153, label %130

130:                                              ; preds = %128
  %131 = load i32, ptr %115, align 8
  %132 = and i32 %131, 65535
  %133 = icmp eq i32 %132, 37
  br i1 %133, label %134, label %140

134:                                              ; preds = %130
  %135 = getelementptr inbounds %struct.rtx_def, ptr %115, i64 0, i32 1
  %136 = load i32, ptr %135, align 8, !tbaa !147
  %137 = zext i32 %136 to i64
  %138 = getelementptr inbounds [53 x ptr], ptr @reg_names, i64 0, i64 %137
  %139 = load ptr, ptr %138, align 8, !tbaa !136
  tail call void (ptr, ptr, ...) @asm_fprintf(ptr noundef %1, ptr noundef nonnull @.str.55, ptr noundef %139)
  br label %140

140:                                              ; preds = %134, %130
  %141 = load ptr, ptr @cfun, align 8, !tbaa !136
  %142 = getelementptr inbounds %struct.function, ptr %141, i64 0, i32 14
  %143 = load i32, ptr %142, align 4, !tbaa !344
  tail call void @x86_function_profiler(ptr noundef %1, i32 noundef %143) #29
  %144 = load i32, ptr %115, align 8
  %145 = and i32 %144, 65535
  %146 = icmp eq i32 %145, 37
  br i1 %146, label %147, label %157

147:                                              ; preds = %140
  %148 = getelementptr inbounds %struct.rtx_def, ptr %115, i64 0, i32 1
  %149 = load i32, ptr %148, align 8, !tbaa !147
  %150 = zext i32 %149 to i64
  %151 = getelementptr inbounds [53 x ptr], ptr @reg_names, i64 0, i64 %150
  %152 = load ptr, ptr %151, align 8, !tbaa !136
  tail call void (ptr, ptr, ...) @asm_fprintf(ptr noundef %1, ptr noundef nonnull @.str.56, ptr noundef %152)
  br label %157

153:                                              ; preds = %128
  %154 = load ptr, ptr @cfun, align 8, !tbaa !136
  %155 = getelementptr inbounds %struct.function, ptr %154, i64 0, i32 14
  %156 = load i32, ptr %155, align 4, !tbaa !344
  tail call void @x86_function_profiler(ptr noundef %1, i32 noundef %156) #29
  br label %157

157:                                              ; preds = %153, %147, %140
  br i1 %117, label %168, label %158

158:                                              ; preds = %157
  %159 = load i32, ptr %105, align 8
  %160 = and i32 %159, 65535
  %161 = icmp eq i32 %160, 37
  br i1 %161, label %162, label %168

162:                                              ; preds = %158
  %163 = getelementptr inbounds %struct.rtx_def, ptr %105, i64 0, i32 1
  %164 = load i32, ptr %163, align 8, !tbaa !147
  %165 = zext i32 %164 to i64
  %166 = getelementptr inbounds [53 x ptr], ptr @reg_names, i64 0, i64 %165
  %167 = load ptr, ptr %166, align 8, !tbaa !136
  tail call void (ptr, ptr, ...) @asm_fprintf(ptr noundef %1, ptr noundef nonnull @.str.56, ptr noundef %167)
  br label %168

168:                                              ; preds = %88, %157, %158, %162
  %169 = load i32, ptr %4, align 4, !tbaa !151
  %170 = and i32 %169, 6
  %171 = icmp eq i32 %170, 2
  br i1 %171, label %172, label %174, !prof !191

172:                                              ; preds = %168
  %173 = or disjoint i32 %169, 4
  store i32 %173, ptr %4, align 4, !tbaa !151
  store i1 true, ptr @force_source_line, align 1
  br label %1256

174:                                              ; preds = %168
  %175 = or i32 %169, 2
  store i32 %175, ptr %4, align 4, !tbaa !151
  br label %1256

176:                                              ; preds = %31
  %177 = tail call i32 @dwarf2out_do_frame() #29
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %180, label %179, !prof !345

179:                                              ; preds = %176
  tail call void @dwarf2out_begin_epilogue(ptr noundef nonnull %0) #29
  br label %180

180:                                              ; preds = %179, %176
  %181 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 16), align 8, !tbaa !346
  tail call void %181(ptr noundef %1) #29, !prof !347
  br label %1256

182:                                              ; preds = %31
  tail call void @dwarf2out_frame_debug_restore_state() #29
  br label %1256

183:                                              ; preds = %31
  %184 = load i1, ptr @app_on, align 4
  br i1 %184, label %185, label %188, !prof !160

185:                                              ; preds = %183
  %186 = load ptr, ptr @asm_out_file, align 8, !tbaa !136
  %187 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 8, i64 1, ptr %186)
  store i1 false, ptr @app_on, align 4
  br label %188

188:                                              ; preds = %183, %185
  %189 = load ptr, ptr @current_function_decl, align 8, !tbaa !136
  %190 = getelementptr inbounds %struct.tree_decl_common, ptr %189, i64 0, i32 2
  %191 = load i64, ptr %190, align 8
  %192 = and i64 %191, 1024
  %193 = icmp eq i64 %192, 0
  br i1 %193, label %194, label %200, !prof !191

194:                                              ; preds = %188
  %195 = load ptr, ptr @debug_hooks, align 8, !tbaa !136
  %196 = getelementptr inbounds %struct.gcc_debug_hooks, ptr %195, i64 0, i32 12
  %197 = load ptr, ptr %196, align 8, !tbaa !348
  %198 = load i32, ptr @last_linenum, align 4, !tbaa !151
  %199 = load ptr, ptr @last_filename, align 8, !tbaa !136
  tail call void %197(i32 noundef %198, ptr noundef %199) #29, !prof !299
  br label %200

200:                                              ; preds = %194, %188
  %201 = load i32, ptr %4, align 4, !tbaa !151
  %202 = and i32 %201, 6
  %203 = icmp eq i32 %202, 2
  br i1 %203, label %204, label %206, !prof !160

204:                                              ; preds = %200
  %205 = or disjoint i32 %201, 4
  store i32 %205, ptr %4, align 4, !tbaa !151
  store i1 true, ptr @force_source_line, align 1
  br label %1256

206:                                              ; preds = %200
  %207 = or i32 %201, 2
  store i32 %207, ptr %4, align 4, !tbaa !151
  br label %1256

208:                                              ; preds = %31
  %209 = load i32, ptr @debug_info_level, align 4
  %210 = and i32 %209, -2
  %211 = icmp eq i32 %210, 2
  %212 = load i32, ptr @write_symbols, align 4
  %213 = icmp eq i32 %212, 3
  %214 = select i1 %211, i1 true, i1 %213
  %215 = icmp eq i32 %212, 6
  %216 = select i1 %214, i1 true, i1 %215
  %217 = icmp eq i32 %212, 5
  %218 = select i1 %216, i1 true, i1 %217
  br i1 %218, label %219, label %246

219:                                              ; preds = %208
  %220 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 2
  %221 = load ptr, ptr %220, align 8, !tbaa !147
  %222 = getelementptr inbounds %struct.tree_block, ptr %221, i64 0, i32 1
  %223 = load i32, ptr %222, align 8
  %224 = load i1, ptr @app_on, align 4
  br i1 %224, label %225, label %228

225:                                              ; preds = %219
  %226 = load ptr, ptr @asm_out_file, align 8, !tbaa !136
  %227 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 8, i64 1, ptr %226)
  store i1 false, ptr @app_on, align 4
  br label %228

228:                                              ; preds = %219, %225
  %229 = load i32, ptr @block_depth, align 4, !tbaa !151
  %230 = add nsw i32 %229, 1
  store i32 %230, ptr @block_depth, align 4, !tbaa !151
  %231 = load i32, ptr @last_linenum, align 4, !tbaa !151
  store i32 %231, ptr @high_block_linenum, align 4, !tbaa !151
  %232 = load ptr, ptr @current_function_decl, align 8, !tbaa !136
  %233 = getelementptr inbounds %struct.tree_decl_common, ptr %232, i64 0, i32 2
  %234 = load i64, ptr %233, align 8
  %235 = and i64 %234, 1024
  %236 = icmp eq i64 %235, 0
  br i1 %236, label %237, label %242

237:                                              ; preds = %228
  %238 = lshr i32 %223, 1
  %239 = load ptr, ptr @debug_hooks, align 8, !tbaa !136
  %240 = getelementptr inbounds %struct.gcc_debug_hooks, ptr %239, i64 0, i32 7
  %241 = load ptr, ptr %240, align 8, !tbaa !349
  tail call void %241(i32 noundef %231, i32 noundef %238) #29
  br label %242

242:                                              ; preds = %237, %228
  %243 = load ptr, ptr %220, align 8, !tbaa !147
  %244 = load i64, ptr %243, align 8
  %245 = or i64 %244, 4194304
  store i64 %245, ptr %243, align 8
  br label %246

246:                                              ; preds = %208, %242
  %247 = load i32, ptr @write_symbols, align 4
  %248 = add i32 %247, -1
  %249 = icmp ult i32 %248, 2
  br i1 %249, label %250, label %1256

250:                                              ; preds = %246
  %251 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 2
  %252 = load ptr, ptr %251, align 8, !tbaa !147
  %253 = tail call ptr @block_nonartificial_location(ptr noundef %252) #29
  %254 = icmp eq ptr %253, null
  br i1 %254, label %1256, label %255

255:                                              ; preds = %250
  %256 = load i32, ptr %253, align 4, !tbaa !151
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %17, i32 noundef %256) #29
  %257 = load ptr, ptr %17, align 8, !tbaa !350
  store ptr %257, ptr @override_filename, align 8, !tbaa !136
  %258 = load i32, ptr %253, align 4, !tbaa !151
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %18, i32 noundef %258) #29
  %259 = getelementptr inbounds %struct.expanded_location, ptr %18, i64 0, i32 1
  %260 = load i32, ptr %259, align 8, !tbaa !352
  store i32 %260, ptr @override_linenum, align 4, !tbaa !151
  br label %1256

261:                                              ; preds = %31
  %262 = load i32, ptr @debug_info_level, align 4
  %263 = and i32 %262, -2
  %264 = icmp eq i32 %263, 2
  %265 = load i32, ptr @write_symbols, align 4
  %266 = icmp eq i32 %265, 3
  %267 = select i1 %264, i1 true, i1 %266
  %268 = icmp eq i32 %265, 6
  %269 = select i1 %267, i1 true, i1 %268
  %270 = icmp eq i32 %265, 5
  %271 = select i1 %269, i1 true, i1 %270
  br i1 %271, label %272, label %298

272:                                              ; preds = %261
  %273 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 2
  %274 = load ptr, ptr %273, align 8, !tbaa !147
  %275 = getelementptr inbounds %struct.tree_block, ptr %274, i64 0, i32 1
  %276 = load i32, ptr %275, align 8
  %277 = lshr i32 %276, 1
  %278 = load i1, ptr @app_on, align 4
  br i1 %278, label %279, label %282

279:                                              ; preds = %272
  %280 = load ptr, ptr @asm_out_file, align 8, !tbaa !136
  %281 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 8, i64 1, ptr %280)
  store i1 false, ptr @app_on, align 4
  br label %282

282:                                              ; preds = %272, %279
  %283 = load i32, ptr @block_depth, align 4, !tbaa !151
  %284 = add nsw i32 %283, -1
  store i32 %284, ptr @block_depth, align 4, !tbaa !151
  %285 = icmp sgt i32 %283, 0
  br i1 %285, label %287, label %286

286:                                              ; preds = %282
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 1978, ptr noundef nonnull @.str.12) #29
  br label %287

287:                                              ; preds = %282, %286
  %288 = load ptr, ptr @current_function_decl, align 8, !tbaa !136
  %289 = getelementptr inbounds %struct.tree_decl_common, ptr %288, i64 0, i32 2
  %290 = load i64, ptr %289, align 8
  %291 = and i64 %290, 1024
  %292 = icmp eq i64 %291, 0
  br i1 %292, label %293, label %298

293:                                              ; preds = %287
  %294 = load ptr, ptr @debug_hooks, align 8, !tbaa !136
  %295 = getelementptr inbounds %struct.gcc_debug_hooks, ptr %294, i64 0, i32 8
  %296 = load ptr, ptr %295, align 8, !tbaa !353
  %297 = load i32, ptr @high_block_linenum, align 4, !tbaa !151
  tail call void %296(i32 noundef %297, i32 noundef %277) #29
  br label %298

298:                                              ; preds = %287, %293, %261
  %299 = load i32, ptr @write_symbols, align 4
  %300 = add i32 %299, -1
  %301 = icmp ult i32 %300, 2
  br i1 %301, label %302, label %1256

302:                                              ; preds = %298
  %303 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 2
  %304 = load ptr, ptr %303, align 8, !tbaa !147
  %305 = getelementptr inbounds %struct.tree_block, ptr %304, i64 0, i32 6
  %306 = load ptr, ptr %305, align 8, !tbaa !147
  %307 = tail call ptr @block_nonartificial_location(ptr noundef %306) #29
  %308 = icmp eq ptr %307, null
  br i1 %308, label %315, label %309

309:                                              ; preds = %302
  %310 = load i32, ptr %307, align 4, !tbaa !151
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %19, i32 noundef %310) #29
  %311 = load ptr, ptr %19, align 8, !tbaa !350
  store ptr %311, ptr @override_filename, align 8, !tbaa !136
  %312 = load i32, ptr %307, align 4, !tbaa !151
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %20, i32 noundef %312) #29
  %313 = getelementptr inbounds %struct.expanded_location, ptr %20, i64 0, i32 1
  %314 = load i32, ptr %313, align 8, !tbaa !352
  br label %316

315:                                              ; preds = %302
  store ptr null, ptr @override_filename, align 8, !tbaa !136
  br label %316

316:                                              ; preds = %315, %309
  %317 = phi i32 [ 0, %315 ], [ %314, %309 ]
  store i32 %317, ptr @override_linenum, align 4, !tbaa !151
  br label %1256

318:                                              ; preds = %31
  %319 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 11), align 8, !tbaa !329
  %320 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1
  %321 = load i32, ptr %320, align 8, !tbaa !147
  %322 = sext i32 %321 to i64
  tail call void %319(ptr noundef %1, ptr noundef nonnull @.str.20, i64 noundef %322) #29
  br label %1256

323:                                              ; preds = %31
  %324 = load ptr, ptr @current_function_decl, align 8, !tbaa !136
  %325 = getelementptr inbounds %struct.tree_decl_common, ptr %324, i64 0, i32 2
  %326 = load i64, ptr %325, align 8
  %327 = and i64 %326, 1024
  %328 = icmp eq i64 %327, 0
  br i1 %328, label %329, label %1256

329:                                              ; preds = %323
  %330 = load ptr, ptr @debug_hooks, align 8, !tbaa !136
  %331 = getelementptr inbounds %struct.gcc_debug_hooks, ptr %330, i64 0, i32 24
  %332 = load ptr, ptr %331, align 8, !tbaa !354
  tail call void %332(ptr noundef nonnull %0) #29
  br label %1256

333:                                              ; preds = %31
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 2016, ptr noundef nonnull @.str.12) #29
  br label %1256

334:                                              ; preds = %29
  %335 = tail call i32 @dwarf2out_do_frame() #29
  %336 = icmp eq i32 %335, 0
  br i1 %336, label %1256, label %337, !prof !355

337:                                              ; preds = %334
  tail call void @dwarf2out_frame_debug(ptr noundef nonnull %0, i8 noundef zeroext 0) #29
  br label %1256

338:                                              ; preds = %29
  %339 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1
  %340 = load i32, ptr %339, align 8, !tbaa !147
  %341 = load i32, ptr @max_labelno, align 4, !tbaa !151
  %342 = icmp sgt i32 %340, %341
  br i1 %342, label %374, label %343, !prof !178

343:                                              ; preds = %338
  %344 = load ptr, ptr @label_align, align 8, !tbaa !136
  %345 = load i32, ptr @min_labelno, align 4, !tbaa !151
  %346 = sub nsw i32 %340, %345
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds %struct.label_alignment, ptr %344, i64 %347
  %349 = load i16, ptr %348, align 2, !tbaa !179
  %350 = sext i16 %349 to i32
  %351 = getelementptr inbounds %struct.label_alignment, ptr %344, i64 %347, i32 1
  %352 = load i16, ptr %351, align 2, !tbaa !181
  %353 = sext i16 %352 to i32
  %354 = icmp eq i16 %349, 0
  br i1 %354, label %374, label %355, !prof !260

355:                                              ; preds = %343
  %356 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %357 = load ptr, ptr %356, align 8, !tbaa !147
  %358 = icmp eq ptr %357, null
  br i1 %358, label %374, label %359, !prof !356

359:                                              ; preds = %355
  %360 = icmp eq i16 %352, 0
  br i1 %360, label %361, label %363, !prof !356

361:                                              ; preds = %359
  %362 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.21, i32 noundef %350)
  br label %374

363:                                              ; preds = %359
  %364 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.22, i32 noundef %350, i32 noundef %353)
  %365 = icmp sgt i16 %349, 3
  br i1 %365, label %366, label %374, !prof !357

366:                                              ; preds = %363
  %367 = shl nuw i32 1, %350
  %368 = add nsw i32 %353, 1
  %369 = icmp sgt i32 %367, %368
  %370 = icmp sgt i16 %352, 6
  %371 = select i1 %369, i1 %370, i1 false, !prof !357
  br i1 %371, label %372, label %374, !prof !357

372:                                              ; preds = %366
  %373 = tail call i64 @fwrite(ptr nonnull @.str.23, i64 12, i64 1, ptr %1)
  br label %374

374:                                              ; preds = %343, %355, %361, %372, %366, %363, %338
  %375 = load ptr, ptr @current_function_decl, align 8, !tbaa !136
  %376 = getelementptr inbounds %struct.tree_decl_common, ptr %375, i64 0, i32 2
  %377 = load i64, ptr %376, align 8
  %378 = and i64 %377, 1024
  %379 = icmp eq i64 %378, 0
  br i1 %379, label %380, label %388, !prof !358

380:                                              ; preds = %374
  %381 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 1
  %382 = load ptr, ptr %381, align 8, !tbaa !147
  %383 = icmp eq ptr %382, null
  br i1 %383, label %388, label %384, !prof !358

384:                                              ; preds = %380
  %385 = load ptr, ptr @debug_hooks, align 8, !tbaa !136
  %386 = getelementptr inbounds %struct.gcc_debug_hooks, ptr %385, i64 0, i32 22
  %387 = load ptr, ptr %386, align 8, !tbaa !359
  tail call void %387(ptr noundef nonnull %0) #29
  br label %388

388:                                              ; preds = %384, %380, %374
  %389 = load i1, ptr @app_on, align 4
  br i1 %389, label %390, label %393, !prof !178

390:                                              ; preds = %388
  %391 = load ptr, ptr @asm_out_file, align 8, !tbaa !136
  %392 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 8, i64 1, ptr %391)
  store i1 false, ptr @app_on, align 4
  br label %393

393:                                              ; preds = %388, %390
  %394 = tail call ptr @next_nonnote_insn(ptr noundef nonnull %0) #29
  %395 = icmp eq ptr %394, null
  br i1 %395, label %434, label %396, !prof !178

396:                                              ; preds = %393
  %397 = load i32, ptr %394, align 8
  %398 = and i32 %397, 65535
  %399 = icmp eq i32 %398, 9
  br i1 %399, label %400, label %434, !prof !245

400:                                              ; preds = %396
  %401 = getelementptr inbounds %struct.rtx_def, ptr %394, i64 1
  %402 = load ptr, ptr %401, align 8, !tbaa !147
  %403 = load i32, ptr %402, align 8
  %404 = and i32 %403, 65534
  %405 = icmp eq i32 %404, 20
  br i1 %405, label %406, label %434, !prof !360

406:                                              ; preds = %400
  %407 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 24), align 8, !tbaa !361
  %408 = load ptr, ptr @current_function_decl, align 8, !tbaa !136
  %409 = tail call ptr %407(ptr noundef %408) #29, !prof !362
  tail call void @switch_to_section(ptr noundef %409) #29
  %410 = load ptr, ptr %401, align 8, !tbaa !147
  %411 = load i32, ptr %410, align 8
  %412 = lshr i32 %411, 16
  %413 = and i32 %412, 255
  %414 = zext nneg i32 %413 to i64
  %415 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %414
  %416 = load i8, ptr %415, align 1, !tbaa !147
  %417 = zext i8 %416 to i32
  %418 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !151
  %419 = and i32 %418, 32
  %420 = icmp eq i32 %419, 0
  %421 = select i1 %420, i32 16, i32 32, !prof !363
  %422 = tail call i32 @llvm.umin.i32(i32 %421, i32 %417)
  %423 = zext nneg i32 %422 to i64
  %424 = tail call i32 @exact_log2(i64 noundef %423) #29
  %425 = icmp eq i32 %424, 0
  br i1 %425, label %429, label %426, !prof !265

426:                                              ; preds = %406
  %427 = shl nuw i32 1, %424
  %428 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.24, i32 noundef %427)
  br label %429

429:                                              ; preds = %426, %406
  %430 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.24, i32 noundef 4)
  %431 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 11), align 8, !tbaa !329
  %432 = load i32, ptr %339, align 8, !tbaa !147
  %433 = sext i32 %432 to i64
  tail call void %431(ptr noundef %1, ptr noundef nonnull @.str.20, i64 noundef %433) #29, !prof !364
  br label %1256

434:                                              ; preds = %400, %396, %393
  %435 = load i32, ptr %0, align 8
  %436 = lshr i32 %435, 23
  %437 = and i32 %436, 2
  %438 = lshr i32 %435, 25
  %439 = and i32 %438, 1
  %440 = or disjoint i32 %437, %439
  %441 = icmp eq i32 %440, 0
  br i1 %441, label %457, label %442, !prof !365

442:                                              ; preds = %434
  %443 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 1
  %444 = load ptr, ptr %443, align 8, !tbaa !147
  switch i32 %440, label %456 [
    i32 3, label %445
    i32 2, label %448
    i32 1, label %450
  ]

445:                                              ; preds = %442
  %446 = tail call i64 @fwrite(ptr nonnull @.str.57, i64 7, i64 1, ptr %1)
  tail call void @assemble_name(ptr noundef %1, ptr noundef %444) #29
  %447 = tail call i32 @fputc(i32 noundef 10, ptr noundef %1)
  br label %448

448:                                              ; preds = %445, %442
  %449 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 6), align 8, !tbaa !366
  tail call void %449(ptr noundef %1, ptr noundef %444) #29
  br label %450

450:                                              ; preds = %448, %442
  %451 = tail call i64 @fwrite(ptr nonnull @.str.58, i64 7, i64 1, ptr %1)
  tail call void @assemble_name(ptr noundef %1, ptr noundef %444) #29
  %452 = tail call i64 @fwrite(ptr nonnull @.str.59, i64 2, i64 1, ptr %1)
  %453 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.61)
  %454 = tail call i32 @putc(i32 noundef 10, ptr noundef %1)
  tail call void @assemble_name(ptr noundef %1, ptr noundef %444) #29
  %455 = tail call i64 @fwrite(ptr nonnull @.str.62, i64 2, i64 1, ptr %1)
  br label %1256

456:                                              ; preds = %442
  unreachable

457:                                              ; preds = %434
  %458 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 11), align 8, !tbaa !329
  %459 = load i32, ptr %339, align 8, !tbaa !147
  %460 = sext i32 %459 to i64
  tail call void %458(ptr noundef %1, ptr noundef nonnull @.str.20, i64 noundef %460) #29, !prof !367
  br label %1256

461:                                              ; preds = %29
  %462 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %463 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %464 = load ptr, ptr %463, align 8, !tbaa !147
  store ptr null, ptr @current_insn_predicate, align 8, !tbaa !136
  %465 = load i32, ptr %464, align 8
  %466 = trunc i32 %465 to i16
  switch i16 %466, label %519 [
    i16 24, label %1253
    i16 25, label %1253
    i16 20, label %467
    i16 21, label %467
  ], !prof !368

467:                                              ; preds = %461, %461
  %468 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 24), align 8, !tbaa !361
  %469 = load ptr, ptr @current_function_decl, align 8, !tbaa !136
  %470 = tail call ptr %468(ptr noundef %469) #29, !prof !362
  tail call void @switch_to_section(ptr noundef %470) #29
  %471 = load i1, ptr @app_on, align 4
  br i1 %471, label %472, label %475, !prof !265

472:                                              ; preds = %467
  %473 = load ptr, ptr @asm_out_file, align 8, !tbaa !136
  %474 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 8, i64 1, ptr %473)
  store i1 false, ptr @app_on, align 4
  br label %475

475:                                              ; preds = %467, %472
  %476 = getelementptr inbounds %struct.rtx_def, ptr %464, i64 0, i32 1
  %477 = load i32, ptr %464, align 8
  %478 = and i32 %477, 65535
  %479 = icmp eq i32 %478, 21
  %480 = zext i1 %479 to i64
  %481 = getelementptr inbounds [1 x %union.rtunion_def], ptr %476, i64 0, i64 %480
  %482 = load ptr, ptr %481, align 8, !tbaa !147
  %483 = load i32, ptr %482, align 8, !tbaa !172
  %484 = icmp sgt i32 %483, 0
  br i1 %484, label %485, label %517, !prof !369

485:                                              ; preds = %475
  %486 = zext nneg i32 %483 to i64
  br label %487

487:                                              ; preds = %485, %514
  %488 = phi i64 [ 0, %485 ], [ %515, %514 ]
  %489 = load i32, ptr %464, align 8
  %490 = and i32 %489, 65535
  %491 = icmp eq i32 %490, 20
  br i1 %491, label %492, label %500, !prof !370

492:                                              ; preds = %487
  %493 = load ptr, ptr %476, align 8, !tbaa !147
  %494 = getelementptr inbounds %struct.rtvec_def, ptr %493, i64 0, i32 1, i64 %488
  %495 = load ptr, ptr %494, align 8, !tbaa !136
  %496 = getelementptr inbounds %struct.rtx_def, ptr %495, i64 0, i32 1
  %497 = load ptr, ptr %496, align 8, !tbaa !147
  %498 = getelementptr inbounds %struct.rtx_def, ptr %497, i64 1, i32 1
  %499 = load i32, ptr %498, align 8, !tbaa !147
  tail call void @ix86_output_addr_vec_elt(ptr noundef %1, i32 noundef %499) #29
  br label %514

500:                                              ; preds = %487
  %501 = getelementptr inbounds %struct.rtx_def, ptr %464, i64 0, i32 1, i32 0, i32 0, i64 1
  %502 = load ptr, ptr %501, align 8, !tbaa !147
  %503 = getelementptr inbounds %struct.rtvec_def, ptr %502, i64 0, i32 1, i64 %488
  %504 = load ptr, ptr %503, align 8, !tbaa !136
  %505 = getelementptr inbounds %struct.rtx_def, ptr %504, i64 0, i32 1
  %506 = load ptr, ptr %505, align 8, !tbaa !147
  %507 = getelementptr inbounds %struct.rtx_def, ptr %506, i64 1, i32 1
  %508 = load i32, ptr %507, align 8, !tbaa !147
  %509 = load ptr, ptr %476, align 8, !tbaa !147
  %510 = getelementptr inbounds %struct.rtx_def, ptr %509, i64 0, i32 1
  %511 = load ptr, ptr %510, align 8, !tbaa !147
  %512 = getelementptr inbounds %struct.rtx_def, ptr %511, i64 1, i32 1
  %513 = load i32, ptr %512, align 8, !tbaa !147
  tail call void @ix86_output_addr_diff_elt(ptr noundef %1, i32 noundef %508, i32 noundef %513) #29
  br label %514

514:                                              ; preds = %492, %500
  %515 = add nuw nsw i64 %488, 1
  %516 = icmp eq i64 %515, %486
  br i1 %516, label %517, label %487, !prof !371, !llvm.loop !372

517:                                              ; preds = %514, %475
  %518 = tail call ptr @current_function_section() #29
  tail call void @switch_to_section(ptr noundef %518) #29
  br label %1253

519:                                              ; preds = %461
  %520 = load ptr, ptr @current_function_decl, align 8, !tbaa !136
  %521 = getelementptr inbounds %struct.tree_decl_common, ptr %520, i64 0, i32 2
  %522 = load i64, ptr %521, align 8
  %523 = and i64 %522, 1024
  %524 = icmp eq i64 %523, 0
  br i1 %524, label %525, label %558, !prof !373

525:                                              ; preds = %519
  %526 = load ptr, ptr @override_filename, align 8, !tbaa !136
  %527 = icmp eq ptr %526, null
  br i1 %527, label %530, label %528, !prof !373

528:                                              ; preds = %525
  %529 = load i32, ptr @override_linenum, align 4, !tbaa !151
  br label %533

530:                                              ; preds = %525
  %531 = tail call ptr @insn_file(ptr noundef %0) #29
  %532 = tail call i32 @insn_line(ptr noundef %0) #29
  br label %533

533:                                              ; preds = %530, %528
  %534 = phi ptr [ %526, %528 ], [ %531, %530 ]
  %535 = phi i32 [ %529, %528 ], [ %532, %530 ]
  %536 = icmp eq ptr %534, null
  br i1 %536, label %558, label %537, !prof !374

537:                                              ; preds = %533
  %538 = load i1, ptr @force_source_line, align 1
  %539 = xor i1 %538, true
  %540 = load ptr, ptr @last_filename, align 8
  %541 = icmp eq ptr %534, %540
  %542 = select i1 %539, i1 %541, i1 false, !prof !375
  %543 = load i32, ptr @last_linenum, align 4
  %544 = icmp eq i32 %543, %535
  %545 = select i1 %542, i1 %544, i1 false, !prof !375
  br i1 %545, label %558, label %546, !prof !376

546:                                              ; preds = %537
  store i1 false, ptr @force_source_line, align 1
  store ptr %534, ptr @last_filename, align 8, !tbaa !136
  store i32 %535, ptr @last_linenum, align 4, !tbaa !151
  %547 = load i32, ptr @discriminator, align 4, !tbaa !151
  store i32 %547, ptr @last_discriminator, align 4, !tbaa !151
  %548 = load i32, ptr @high_block_linenum, align 4
  %549 = tail call i32 @llvm.smax.i32(i32 %535, i32 %548)
  store i32 %549, ptr @high_block_linenum, align 4, !tbaa !151
  %550 = load i32, ptr @high_function_linenum, align 4
  %551 = tail call i32 @llvm.smax.i32(i32 %535, i32 %550)
  store i32 %551, ptr @high_function_linenum, align 4, !tbaa !151
  %552 = load ptr, ptr @debug_hooks, align 8, !tbaa !136
  %553 = getelementptr inbounds %struct.gcc_debug_hooks, ptr %552, i64 0, i32 10
  %554 = load ptr, ptr %553, align 8, !tbaa !377
  %555 = load i32, ptr @last_linenum, align 4, !tbaa !151
  %556 = load ptr, ptr @last_filename, align 8, !tbaa !136
  %557 = load i32, ptr @last_discriminator, align 4, !tbaa !151
  tail call void %554(i32 noundef %555, ptr noundef %556, i32 noundef %557, i8 noundef zeroext 1) #29, !prof !378
  br label %558

558:                                              ; preds = %537, %533, %546, %519
  %559 = load i32, ptr %464, align 8
  %560 = and i32 %559, 65535
  %561 = icmp eq i32 %560, 16
  br i1 %561, label %562, label %594, !prof !379

562:                                              ; preds = %558
  %563 = getelementptr inbounds %struct.rtx_def, ptr %464, i64 0, i32 1
  %564 = load ptr, ptr %563, align 8, !tbaa !147
  %565 = load i8, ptr %564, align 1, !tbaa !147
  %566 = icmp eq i8 %565, 0
  br i1 %566, label %1253, label %567

567:                                              ; preds = %562
  %568 = load i1, ptr @app_on, align 4
  br i1 %568, label %572, label %569

569:                                              ; preds = %567
  %570 = load ptr, ptr @asm_out_file, align 8, !tbaa !136
  %571 = tail call i64 @fwrite(ptr nonnull @.str, i64 5, i64 1, ptr %570)
  store i1 true, ptr @app_on, align 4
  br label %572

572:                                              ; preds = %567, %569
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %21) #29
  %573 = getelementptr inbounds %struct.rtx_def, ptr %464, i64 0, i32 1, i32 0, i32 0, i64 1
  %574 = load i32, ptr %573, align 8, !tbaa !147
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %21, i32 noundef %574) #29
  %575 = load ptr, ptr %21, align 8, !tbaa.struct !380
  %576 = getelementptr inbounds i8, ptr %21, i64 8
  %577 = load i32, ptr %576, align 8, !tbaa.struct !381
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %21) #29
  %578 = load i8, ptr %575, align 1, !tbaa !147
  %579 = icmp ne i8 %578, 0
  %580 = icmp ne i32 %577, 0
  %581 = select i1 %579, i1 %580, i1 false
  br i1 %581, label %582, label %585

582:                                              ; preds = %572
  %583 = load ptr, ptr @asm_out_file, align 8, !tbaa !136
  %584 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %583, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.17, i32 noundef %577, ptr noundef nonnull %575)
  br label %585

585:                                              ; preds = %582, %572
  %586 = load ptr, ptr @asm_out_file, align 8, !tbaa !136
  %587 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %586, ptr noundef nonnull @.str.26, ptr noundef nonnull %564)
  %588 = load i8, ptr %575, align 1, !tbaa !147
  %589 = icmp ne i8 %588, 0
  %590 = select i1 %589, i1 %580, i1 false
  br i1 %590, label %591, label %1253

591:                                              ; preds = %585
  %592 = load ptr, ptr @asm_out_file, align 8, !tbaa !136
  %593 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %592, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.17)
  br label %1253

594:                                              ; preds = %558
  %595 = tail call i32 @asm_noperands(ptr noundef nonnull %464) #29
  %596 = icmp sgt i32 %595, -1
  br i1 %596, label %597, label %630, !prof !379

597:                                              ; preds = %594
  %598 = tail call i32 @asm_noperands(ptr noundef nonnull %464) #29
  %599 = zext i32 %598 to i64
  %600 = shl nuw nsw i64 %599, 3
  %601 = alloca i8, i64 %600, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %22) #29
  %602 = call ptr @decode_asm_operands(ptr noundef nonnull %464, ptr noundef nonnull %601, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %22) #29
  store i32 %598, ptr @insn_noperands, align 4, !tbaa !151
  store ptr %0, ptr @this_is_asm_operands, align 8, !tbaa !136
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %23) #29
  %603 = load i32, ptr %22, align 4, !tbaa !151
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %23, i32 noundef %603) #29
  %604 = load ptr, ptr %23, align 8, !tbaa.struct !380
  %605 = getelementptr inbounds i8, ptr %23, i64 8
  %606 = load i32, ptr %605, align 8, !tbaa.struct !381
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %23) #29
  %607 = load i8, ptr %602, align 1, !tbaa !147
  %608 = icmp eq i8 %607, 0
  br i1 %608, label %624, label %609

609:                                              ; preds = %597
  %610 = load i1, ptr @app_on, align 4
  br i1 %610, label %614, label %611

611:                                              ; preds = %609
  %612 = load ptr, ptr @asm_out_file, align 8, !tbaa !136
  %613 = call i64 @fwrite(ptr nonnull @.str, i64 5, i64 1, ptr %612)
  store i1 true, ptr @app_on, align 4
  br label %614

614:                                              ; preds = %609, %611
  %615 = icmp ne ptr %604, null
  %616 = icmp ne i32 %606, 0
  %617 = select i1 %615, i1 %616, i1 false
  br i1 %617, label %618, label %623

618:                                              ; preds = %614
  %619 = load ptr, ptr @asm_out_file, align 8, !tbaa !136
  %620 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %619, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.17, i32 noundef %606, ptr noundef nonnull %604)
  call void @output_asm_insn(ptr noundef nonnull %602, ptr noundef nonnull %601)
  %621 = load ptr, ptr @asm_out_file, align 8, !tbaa !136
  %622 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %621, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.17)
  br label %624

623:                                              ; preds = %614
  call void @output_asm_insn(ptr noundef nonnull %602, ptr noundef nonnull %601)
  br label %624

624:                                              ; preds = %623, %618, %597
  %625 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 38), align 8, !tbaa !382
  %626 = icmp eq ptr %625, null
  br i1 %626, label %629, label %627

627:                                              ; preds = %624
  %628 = load i32, ptr @insn_noperands, align 4, !tbaa !151
  call void %625(ptr noundef %1, ptr noundef nonnull %0, ptr noundef nonnull %601, i32 noundef %628) #29
  br label %629

629:                                              ; preds = %627, %624
  store ptr null, ptr @this_is_asm_operands, align 8, !tbaa !136
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %22) #29
  br label %1253

630:                                              ; preds = %594
  %631 = load i1, ptr @app_on, align 4
  br i1 %631, label %632, label %635, !prof !379

632:                                              ; preds = %630
  %633 = load ptr, ptr @asm_out_file, align 8, !tbaa !136
  %634 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 8, i64 1, ptr %633)
  store i1 false, ptr @app_on, align 4
  br label %635

635:                                              ; preds = %630, %632
  %636 = load i32, ptr %464, align 8
  %637 = and i32 %636, 65535
  %638 = icmp eq i32 %637, 5
  br i1 %638, label %639, label %690, !prof !379

639:                                              ; preds = %635
  store ptr %464, ptr @final_sequence, align 8, !tbaa !136
  %640 = tail call i32 @dwarf2out_do_frame() #29
  %641 = icmp eq i32 %640, 0
  br i1 %641, label %657, label %642

642:                                              ; preds = %639
  %643 = getelementptr inbounds %struct.rtx_def, ptr %464, i64 0, i32 1
  %644 = load ptr, ptr %643, align 8, !tbaa !147
  %645 = load i32, ptr %644, align 8, !tbaa !172
  %646 = icmp sgt i32 %645, 1
  br i1 %646, label %647, label %657

647:                                              ; preds = %642, %647
  %648 = phi i64 [ %652, %647 ], [ 1, %642 ]
  %649 = phi ptr [ %653, %647 ], [ %644, %642 ]
  %650 = getelementptr inbounds %struct.rtvec_def, ptr %649, i64 0, i32 1, i64 %648
  %651 = load ptr, ptr %650, align 8, !tbaa !136
  tail call void @dwarf2out_frame_debug(ptr noundef %651, i8 noundef zeroext 0) #29
  %652 = add nuw nsw i64 %648, 1
  %653 = load ptr, ptr %643, align 8, !tbaa !147
  %654 = load i32, ptr %653, align 8, !tbaa !172
  %655 = sext i32 %654 to i64
  %656 = icmp slt i64 %652, %655
  br i1 %656, label %647, label %657, !llvm.loop !383

657:                                              ; preds = %647, %642, %639
  %658 = getelementptr inbounds %struct.rtx_def, ptr %464, i64 0, i32 1
  %659 = load ptr, ptr %658, align 8, !tbaa !147
  %660 = getelementptr inbounds %struct.rtvec_def, ptr %659, i64 0, i32 1
  %661 = load ptr, ptr %660, align 8, !tbaa !136
  %662 = tail call ptr @final_scan_insn(ptr noundef %661, ptr noundef %1, i32 poison, i32 poison, ptr noundef %4)
  %663 = load ptr, ptr %658, align 8, !tbaa !147
  %664 = getelementptr inbounds %struct.rtvec_def, ptr %663, i64 1
  %665 = load ptr, ptr %664, align 8, !tbaa !136
  %666 = icmp eq ptr %662, %665
  br i1 %666, label %667, label %688

667:                                              ; preds = %657
  %668 = load ptr, ptr %658, align 8, !tbaa !147
  %669 = load i32, ptr %668, align 8, !tbaa !172
  %670 = icmp sgt i32 %669, 1
  br i1 %670, label %671, label %688

671:                                              ; preds = %667, %682
  %672 = phi i64 [ %683, %682 ], [ 1, %667 ]
  %673 = phi ptr [ %684, %682 ], [ %668, %667 ]
  %674 = getelementptr inbounds %struct.rtvec_def, ptr %673, i64 0, i32 1, i64 %672
  %675 = load ptr, ptr %674, align 8, !tbaa !136
  %676 = getelementptr inbounds %struct.rtx_def, ptr %675, i64 0, i32 1, i32 0, i32 0, i64 2
  %677 = load ptr, ptr %676, align 8, !tbaa !147
  br label %678

678:                                              ; preds = %678, %671
  %679 = phi ptr [ %675, %671 ], [ %680, %678 ]
  %680 = tail call ptr @final_scan_insn(ptr noundef %679, ptr noundef %1, i32 poison, i32 poison, ptr noundef %4)
  %681 = icmp eq ptr %680, %677
  br i1 %681, label %682, label %678, !llvm.loop !384

682:                                              ; preds = %678
  %683 = add nuw nsw i64 %672, 1
  %684 = load ptr, ptr %658, align 8, !tbaa !147
  %685 = load i32, ptr %684, align 8, !tbaa !172
  %686 = sext i32 %685 to i64
  %687 = icmp slt i64 %683, %686
  br i1 %687, label %671, label %688, !llvm.loop !385

688:                                              ; preds = %682, %667, %657
  %689 = phi i32 [ 1, %657 ], [ 2, %667 ], [ 2, %682 ]
  store ptr null, ptr @final_sequence, align 8, !tbaa !136
  br label %1253

690:                                              ; preds = %635
  %691 = load ptr, ptr %463, align 8, !tbaa !147
  %692 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1
  %693 = load i32, ptr %692, align 8, !tbaa !147
  %694 = icmp slt i32 %693, 0
  br i1 %694, label %695, label %697, !prof !379

695:                                              ; preds = %690
  %696 = tail call i32 @recog(ptr noundef %691, ptr noundef %0, ptr noundef null) #29
  store i32 %696, ptr %692, align 8, !tbaa !147
  br label %697

697:                                              ; preds = %690, %695
  %698 = load i32, ptr %692, align 8, !tbaa !147
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %16) #29
  store i8 0, ptr %16, align 1, !tbaa !147
  tail call void @extract_insn_cached(ptr noundef %0) #29
  %699 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !386
  %700 = icmp sgt i8 %699, 0
  br i1 %700, label %704, label %701, !prof !388

701:                                              ; preds = %722, %697
  %702 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 8), align 1, !tbaa !389
  %703 = icmp sgt i8 %702, 0
  br i1 %703, label %727, label %745, !prof !390

704:                                              ; preds = %697, %722
  %705 = phi i64 [ %723, %722 ], [ 0, %697 ]
  %706 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %705
  %707 = load ptr, ptr %706, align 8, !tbaa !136
  %708 = load ptr, ptr %707, align 8, !tbaa !136
  %709 = load i32, ptr %708, align 8
  %710 = and i32 %709, 65535
  %711 = icmp eq i32 %710, 39
  br i1 %711, label %712, label %715, !prof !391

712:                                              ; preds = %704
  %713 = call ptr @alter_subreg(ptr noundef nonnull %707)
  %714 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %705
  store ptr %713, ptr %714, align 8, !tbaa !136
  store i8 1, ptr %16, align 1, !tbaa !147
  br label %722

715:                                              ; preds = %704
  %716 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %705
  %717 = load ptr, ptr %716, align 8, !tbaa !136
  %718 = load i32, ptr %717, align 8
  %719 = trunc i32 %718 to i16
  switch i16 %719, label %722 [
    i16 49, label %720
    i16 52, label %720
    i16 43, label %720
  ], !prof !392

720:                                              ; preds = %715, %715, %715
  %721 = call fastcc ptr @walk_alter_subreg(ptr noundef nonnull %707, ptr noundef nonnull %16)
  store ptr %721, ptr %716, align 8, !tbaa !136
  br label %722

722:                                              ; preds = %720, %715, %712
  %723 = add nuw nsw i64 %705, 1
  %724 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !386
  %725 = sext i8 %724 to i64
  %726 = icmp slt i64 %723, %725
  br i1 %726, label %704, label %701, !prof !393, !llvm.loop !394

727:                                              ; preds = %701, %740
  %728 = phi i64 [ %741, %740 ], [ 0, %701 ]
  %729 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 5, i64 %728
  %730 = load ptr, ptr %729, align 8, !tbaa !136
  %731 = load ptr, ptr %730, align 8, !tbaa !136
  %732 = load i32, ptr %731, align 8
  %733 = trunc i32 %732 to i16
  switch i16 %733, label %740 [
    i16 39, label %734
    i16 49, label %737
    i16 52, label %737
    i16 43, label %737
  ], !prof !395

734:                                              ; preds = %727
  %735 = call ptr @alter_subreg(ptr noundef nonnull %730)
  %736 = load ptr, ptr %729, align 8, !tbaa !136
  store ptr %735, ptr %736, align 8, !tbaa !136
  store i8 1, ptr %16, align 1, !tbaa !147
  br label %740

737:                                              ; preds = %727, %727, %727
  %738 = call fastcc ptr @walk_alter_subreg(ptr noundef nonnull %730, ptr noundef nonnull %16)
  %739 = load ptr, ptr %729, align 8, !tbaa !136
  store ptr %738, ptr %739, align 8, !tbaa !136
  br label %740

740:                                              ; preds = %737, %734, %727
  %741 = add nuw nsw i64 %728, 1
  %742 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 8), align 1, !tbaa !389
  %743 = sext i8 %742 to i64
  %744 = icmp slt i64 %741, %743
  br i1 %744, label %727, label %745, !prof !396, !llvm.loop !397

745:                                              ; preds = %740, %701
  %746 = load i8, ptr %16, align 1, !tbaa !147
  %747 = icmp eq i8 %746, 0
  br i1 %747, label %750, label %748, !prof !398

748:                                              ; preds = %745
  %749 = call zeroext i8 @df_insn_rescan(ptr noundef %0) #29
  br label %750

750:                                              ; preds = %745, %748
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %16) #29
  %751 = load i32, ptr @flag_dump_rtl_in_asm, align 4, !tbaa !151
  %752 = icmp eq i32 %751, 0
  br i1 %752, label %756, label %753, !prof !373

753:                                              ; preds = %750
  store ptr @.str.17, ptr @print_rtx_head, align 8, !tbaa !136
  %754 = load ptr, ptr @asm_out_file, align 8, !tbaa !136
  %755 = call i32 @print_rtl_single(ptr noundef %754, ptr noundef nonnull %0) #29
  store ptr @.str.15, ptr @print_rtx_head, align 8, !tbaa !136
  br label %756

756:                                              ; preds = %753, %750
  %757 = call i32 @constrain_operands_cached(i32 noundef 1) #29
  %758 = icmp eq i32 %757, 0
  br i1 %758, label %759, label %760, !prof !379

759:                                              ; preds = %756
  call void @_fatal_insn_not_found(ptr noundef nonnull %0, ptr noundef nonnull @.str.11, i32 noundef 2588, ptr noundef nonnull @.str.12) #29
  br label %760

760:                                              ; preds = %759, %756
  %761 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 35), align 8, !tbaa !399
  %762 = call zeroext i8 %761() #29, !prof !400
  %763 = icmp eq i8 %762, 0
  br i1 %763, label %772, label %764, !prof !373

764:                                              ; preds = %760
  %765 = load ptr, ptr %463, align 8, !tbaa !147
  %766 = load i32, ptr %765, align 8
  %767 = and i32 %766, 65535
  %768 = icmp eq i32 %767, 14
  br i1 %768, label %769, label %772

769:                                              ; preds = %764
  %770 = getelementptr inbounds %struct.rtx_def, ptr %765, i64 0, i32 1
  %771 = load ptr, ptr %770, align 8, !tbaa !147
  store ptr %771, ptr @current_insn_predicate, align 8, !tbaa !136
  br label %772

772:                                              ; preds = %769, %764, %760
  store ptr %0, ptr @debug_insn, align 8, !tbaa !136
  store ptr %0, ptr @current_output_insn, align 8, !tbaa !136
  %773 = load i32, ptr %0, align 8
  %774 = and i32 %773, 65535
  %775 = icmp eq i32 %774, 10
  br i1 %775, label %776, label %780, !prof !401

776:                                              ; preds = %772
  %777 = call i32 @dwarf2out_do_frame() #29
  %778 = icmp eq i32 %777, 0
  br i1 %778, label %780, label %779, !prof !402

779:                                              ; preds = %776
  call void @dwarf2out_frame_debug(ptr noundef nonnull %0, i8 noundef zeroext 0) #29
  br label %780

780:                                              ; preds = %779, %776, %772
  %781 = sext i32 %698 to i64
  %782 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %781, i32 7
  %783 = load i8, ptr %782, align 1, !tbaa !403
  switch i8 %783, label %801 [
    i8 1, label %784
    i8 2, label %787
    i8 3, label %794
  ], !prof !405

784:                                              ; preds = %780
  %785 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %781, i32 1
  %786 = load ptr, ptr %785, align 8, !tbaa !147
  br label %802

787:                                              ; preds = %780
  %788 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %781, i32 1
  %789 = load ptr, ptr %788, align 8, !tbaa !147
  %790 = load i32, ptr @which_alternative, align 4, !tbaa !151
  %791 = sext i32 %790 to i64
  %792 = getelementptr inbounds ptr, ptr %789, i64 %791
  %793 = load ptr, ptr %792, align 8, !tbaa !136
  br label %802

794:                                              ; preds = %780
  %795 = icmp eq ptr %0, null
  br i1 %795, label %796, label %797, !prof !406

796:                                              ; preds = %794
  call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 1736, ptr noundef nonnull @.str.12) #29
  br label %797

797:                                              ; preds = %796, %794
  %798 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %781, i32 1
  %799 = load ptr, ptr %798, align 8, !tbaa !147
  %800 = call ptr %799(ptr noundef nonnull @recog_data, ptr noundef %0) #29, !prof !407
  br label %802

801:                                              ; preds = %780
  call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 1740, ptr noundef nonnull @.str.12) #29
  br label %802

802:                                              ; preds = %784, %787, %797, %801
  %803 = phi ptr [ @.str.15, %801 ], [ %800, %797 ], [ %793, %787 ], [ %786, %784 ]
  %804 = icmp eq ptr %803, null
  br i1 %804, label %805, label %822, !prof !379

805:                                              ; preds = %802
  %806 = call ptr @prev_nonnote_insn(ptr noundef nonnull %0) #29
  %807 = icmp eq ptr %806, null
  br i1 %807, label %809, label %808

808:                                              ; preds = %805
  call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 2629, ptr noundef nonnull @.str.12) #29
  br label %809

809:                                              ; preds = %805, %808
  %810 = icmp eq ptr %0, null
  br i1 %810, label %1253, label %811

811:                                              ; preds = %809, %818
  %812 = phi ptr [ %820, %818 ], [ %0, %809 ]
  %813 = load i32, ptr %812, align 8
  %814 = and i32 %813, 65535
  %815 = icmp eq i32 %814, 13
  br i1 %815, label %816, label %818

816:                                              ; preds = %811
  %817 = call ptr @delete_insn(ptr noundef nonnull %812) #29
  br label %818

818:                                              ; preds = %811, %816
  %819 = getelementptr inbounds %struct.rtx_def, ptr %812, i64 0, i32 1, i32 0, i32 0, i64 1
  %820 = load ptr, ptr %819, align 8, !tbaa !147
  %821 = icmp eq ptr %820, null
  br i1 %821, label %1253, label %811, !llvm.loop !408

822:                                              ; preds = %802
  %823 = load i8, ptr %803, align 1, !tbaa !147
  %824 = icmp eq i8 %823, 35
  br i1 %824, label %825, label %838, !prof !379

825:                                              ; preds = %822
  %826 = getelementptr inbounds i8, ptr %803, i64 1
  %827 = load i8, ptr %826, align 1, !tbaa !147
  %828 = icmp eq i8 %827, 0
  br i1 %828, label %829, label %838

829:                                              ; preds = %825
  %830 = call ptr @try_split(ptr noundef %691, ptr noundef nonnull %0, i32 noundef 0) #29
  %831 = icmp eq ptr %830, %0
  br i1 %831, label %832, label %837

832:                                              ; preds = %829
  %833 = getelementptr inbounds %struct.rtx_def, ptr %830, i64 1
  %834 = load ptr, ptr %833, align 8, !tbaa !147
  %835 = icmp eq ptr %834, %691
  br i1 %835, label %836, label %837

836:                                              ; preds = %832
  call void @_fatal_insn(ptr noundef nonnull @.str.28, ptr noundef nonnull %0, ptr noundef nonnull @.str.11, i32 noundef 2654, ptr noundef nonnull @.str.12) #29
  br label %837

837:                                              ; preds = %836, %832, %829
  call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 2660, ptr noundef nonnull @.str.12) #29
  br label %1253

838:                                              ; preds = %825, %822
  %839 = load i32, ptr %0, align 8
  %840 = and i32 %839, 65535
  %841 = icmp eq i32 %840, 10
  br i1 %841, label %842, label %891, !prof !401

842:                                              ; preds = %838
  %843 = load ptr, ptr %463, align 8, !tbaa !147
  %844 = load i32, ptr %843, align 8
  %845 = and i32 %844, 65535
  %846 = icmp eq i32 %845, 26
  br i1 %846, label %866, label %847, !prof !409

847:                                              ; preds = %842, %860
  %848 = phi i32 [ %863, %860 ], [ %844, %842 ]
  %849 = phi ptr [ %862, %860 ], [ %843, %842 ]
  %850 = trunc i32 %848 to i16
  switch i16 %850, label %851 [
    i16 14, label %852
    i16 15, label %854
    i16 23, label %858
  ], !prof !410

851:                                              ; preds = %847
  call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 1791, ptr noundef nonnull @.str.12) #29
  br label %852

852:                                              ; preds = %851, %847
  %853 = getelementptr inbounds %struct.rtx_def, ptr %849, i64 0, i32 1, i32 0, i32 0, i64 1
  br label %860

854:                                              ; preds = %847
  %855 = getelementptr inbounds %struct.rtx_def, ptr %849, i64 0, i32 1
  %856 = load ptr, ptr %855, align 8, !tbaa !147
  %857 = getelementptr inbounds %struct.rtvec_def, ptr %856, i64 0, i32 1
  br label %860

858:                                              ; preds = %847
  %859 = getelementptr inbounds %struct.rtx_def, ptr %849, i64 0, i32 1, i32 0, i32 0, i64 1
  br label %860

860:                                              ; preds = %858, %854, %852
  %861 = phi ptr [ %853, %852 ], [ %859, %858 ], [ %857, %854 ]
  %862 = load ptr, ptr %861, align 8, !tbaa !147
  %863 = load i32, ptr %862, align 8
  %864 = and i32 %863, 65535
  %865 = icmp eq i32 %864, 26
  br i1 %865, label %866, label %847, !prof !411, !llvm.loop !412

866:                                              ; preds = %860, %842
  %867 = phi ptr [ %843, %842 ], [ %862, %860 ]
  %868 = getelementptr inbounds %struct.rtx_def, ptr %867, i64 0, i32 1
  %869 = load ptr, ptr %868, align 8, !tbaa !147
  %870 = icmp eq ptr %869, null
  br i1 %870, label %891, label %871, !prof !413

871:                                              ; preds = %866
  %872 = load i32, ptr %869, align 8
  %873 = and i32 %872, 65535
  %874 = icmp eq i32 %873, 43
  br i1 %874, label %875, label %891, !prof !402

875:                                              ; preds = %871
  %876 = getelementptr inbounds %struct.rtx_def, ptr %869, i64 0, i32 1
  %877 = load ptr, ptr %876, align 8, !tbaa !147
  %878 = load i32, ptr %877, align 8
  %879 = and i32 %878, 65535
  %880 = icmp eq i32 %879, 45
  br i1 %880, label %881, label %891, !prof !402

881:                                              ; preds = %875
  %882 = and i32 %878, 67108864
  %883 = icmp eq i32 %882, 0
  br i1 %883, label %884, label %887, !prof !402

884:                                              ; preds = %881
  %885 = getelementptr inbounds %struct.rtx_def, ptr %877, i64 0, i32 1, i32 0, i32 0, i64 2
  %886 = load ptr, ptr %885, align 8, !tbaa !147
  br label %887

887:                                              ; preds = %881, %884
  %888 = phi ptr [ %886, %884 ], [ null, %881 ]
  %889 = icmp eq ptr %888, null
  br i1 %889, label %891, label %890, !prof !413

890:                                              ; preds = %887
  call void @assemble_external(ptr noundef nonnull %888) #29
  br label %891

891:                                              ; preds = %866, %871, %875, %890, %887, %838
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %12) #29
  call void @llvm.lifetime.start.p0(i64 30, ptr nonnull %13) #29
  %892 = load i8, ptr %803, align 1, !tbaa !147
  %893 = icmp eq i8 %892, 0
  br i1 %893, label %1199, label %894, !prof !414

894:                                              ; preds = %891
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(30) %13, i8 0, i64 30, i1 false)
  %895 = load ptr, ptr @asm_out_file, align 8, !tbaa !136
  %896 = call i32 @putc(i32 noundef 9, ptr noundef %895)
  %897 = load i8, ptr %803, align 1, !tbaa !147
  %898 = icmp eq i8 %897, 37
  br i1 %898, label %899, label %909, !prof !415

899:                                              ; preds = %894
  %900 = getelementptr inbounds i8, ptr %803, i64 1
  %901 = load i8, ptr %900, align 1, !tbaa !147
  %902 = icmp eq i8 %901, 118
  br i1 %902, label %903, label %909, !prof !416

903:                                              ; preds = %899
  %904 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !151
  %905 = and i32 %904, 32
  %906 = icmp eq i32 %905, 0
  %907 = getelementptr inbounds i8, ptr %803, i64 2
  %908 = select i1 %906, ptr %907, ptr %900
  br label %909

909:                                              ; preds = %903, %899, %894
  %910 = phi ptr [ %803, %894 ], [ %803, %899 ], [ %908, %903 ]
  br label %911

911:                                              ; preds = %909, %1184
  %912 = phi i32 [ %1185, %1184 ], [ 0, %909 ]
  %913 = phi i32 [ %1186, %1184 ], [ 0, %909 ]
  %914 = phi ptr [ %1187, %1184 ], [ %910, %909 ]
  %915 = getelementptr inbounds i8, ptr %914, i64 1
  %916 = load i8, ptr %914, align 1, !tbaa !147
  %917 = sext i8 %916 to i32
  switch i8 %916, label %1181 [
    i8 0, label %1188
    i8 10, label %918
    i8 123, label %946
    i8 124, label %975
    i8 125, label %988
    i8 37, label %993
  ], !prof !417

918:                                              ; preds = %911
  %919 = load i32, ptr @flag_verbose_asm, align 4, !tbaa !151
  %920 = icmp eq i32 %919, 0
  br i1 %920, label %922, label %921

921:                                              ; preds = %918
  call fastcc void @output_asm_operand_names(ptr noundef nonnull @recog_data, ptr noundef nonnull %12, i32 noundef %912)
  br label %922

922:                                              ; preds = %921, %918
  %923 = load i32, ptr @flag_print_asm_name, align 4, !tbaa !151
  %924 = icmp eq i32 %923, 0
  br i1 %924, label %926, label %925

925:                                              ; preds = %922
  call fastcc void @output_asm_name()
  br label %926

926:                                              ; preds = %925, %922
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(30) %13, i8 0, i64 30, i1 false)
  %927 = load ptr, ptr @asm_out_file, align 8, !tbaa !136
  %928 = call i32 @putc(i32 noundef %917, ptr noundef %927)
  br label %929

929:                                              ; preds = %932, %926
  %930 = phi ptr [ %915, %926 ], [ %935, %932 ]
  %931 = load i8, ptr %930, align 1, !tbaa !147
  switch i8 %931, label %1184 [
    i8 9, label %932
    i8 37, label %936
  ]

932:                                              ; preds = %929
  %933 = load ptr, ptr @asm_out_file, align 8, !tbaa !136
  %934 = call i32 @putc(i32 noundef 9, ptr noundef %933)
  %935 = getelementptr inbounds i8, ptr %930, i64 1
  br label %929, !llvm.loop !418

936:                                              ; preds = %929
  %937 = getelementptr inbounds i8, ptr %930, i64 1
  %938 = load i8, ptr %937, align 1, !tbaa !147
  %939 = icmp eq i8 %938, 118
  br i1 %939, label %940, label %1184

940:                                              ; preds = %936
  %941 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !151
  %942 = and i32 %941, 32
  %943 = icmp eq i32 %942, 0
  %944 = getelementptr inbounds i8, ptr %930, i64 2
  %945 = select i1 %943, ptr %944, ptr %937
  br label %1184

946:                                              ; preds = %911
  %947 = icmp eq i32 %913, 0
  br i1 %947, label %949, label %948, !prof !419

948:                                              ; preds = %946
  call void (ptr, ...) @output_operand_lossage(ptr noundef nonnull @.str.33)
  br label %949

949:                                              ; preds = %948, %946
  %950 = load i32, ptr @dialect_number, align 4, !tbaa !151
  %951 = icmp sgt i32 %950, 0
  br i1 %951, label %952, label %970, !prof !420

952:                                              ; preds = %949, %966
  %953 = phi ptr [ %967, %966 ], [ %915, %949 ]
  %954 = phi i32 [ %968, %966 ], [ 0, %949 ]
  br label %955

955:                                              ; preds = %958, %952
  %956 = phi ptr [ %959, %958 ], [ %953, %952 ]
  %957 = load i8, ptr %956, align 1, !tbaa !147
  switch i8 %957, label %958 [
    i8 0, label %961
    i8 125, label %961
  ]

958:                                              ; preds = %955
  %959 = getelementptr inbounds i8, ptr %956, i64 1
  %960 = icmp eq i8 %957, 124
  br i1 %960, label %961, label %955, !llvm.loop !421

961:                                              ; preds = %958, %955, %955
  %962 = phi ptr [ %956, %955 ], [ %956, %955 ], [ %959, %958 ]
  %963 = load i8, ptr %962, align 1, !tbaa !147
  switch i8 %963, label %966 [
    i8 125, label %970
    i8 124, label %964
  ]

964:                                              ; preds = %961
  %965 = getelementptr inbounds i8, ptr %962, i64 1
  br label %966

966:                                              ; preds = %964, %961
  %967 = phi ptr [ %965, %964 ], [ %962, %961 ]
  %968 = add nuw nsw i32 %954, 1
  %969 = icmp eq i32 %968, %950
  br i1 %969, label %970, label %952, !prof !295, !llvm.loop !422

970:                                              ; preds = %966, %961, %949
  %971 = phi ptr [ %915, %949 ], [ %967, %966 ], [ %962, %961 ]
  %972 = load i8, ptr %971, align 1, !tbaa !147
  %973 = icmp eq i8 %972, 0
  br i1 %973, label %974, label %1184, !prof !423

974:                                              ; preds = %970
  call void (ptr, ...) @output_operand_lossage(ptr noundef nonnull @.str.34)
  br label %1184

975:                                              ; preds = %911
  %976 = icmp eq i32 %913, 0
  br i1 %976, label %985, label %977, !prof !424

977:                                              ; preds = %975, %982
  %978 = phi ptr [ %983, %982 ], [ %915, %975 ]
  %979 = load i8, ptr %978, align 1, !tbaa !147
  %980 = icmp eq i8 %979, 0
  br i1 %980, label %981, label %982, !prof !425

981:                                              ; preds = %977
  call void (ptr, ...) @output_operand_lossage(ptr noundef nonnull @.str.34)
  br label %1184

982:                                              ; preds = %977
  %983 = getelementptr inbounds i8, ptr %978, i64 1
  %984 = icmp eq i8 %979, 125
  br i1 %984, label %1184, label %977, !prof !426, !llvm.loop !427

985:                                              ; preds = %975
  %986 = load ptr, ptr @asm_out_file, align 8, !tbaa !136
  %987 = call i32 @putc(i32 noundef %917, ptr noundef %986)
  br label %1184

988:                                              ; preds = %911
  %989 = icmp eq i32 %913, 0
  br i1 %989, label %990, label %1184, !prof !428

990:                                              ; preds = %988
  %991 = load ptr, ptr @asm_out_file, align 8, !tbaa !136
  %992 = call i32 @putc(i32 noundef %917, ptr noundef %991)
  br label %1184

993:                                              ; preds = %911
  %994 = load i8, ptr %915, align 1, !tbaa !147
  %995 = sext i8 %994 to i32
  switch i8 %994, label %1005 [
    i8 37, label %996
    i8 61, label %1000
  ], !prof !429

996:                                              ; preds = %993
  %997 = getelementptr inbounds i8, ptr %914, i64 2
  %998 = load ptr, ptr @asm_out_file, align 8, !tbaa !136
  %999 = call i32 @putc(i32 noundef %917, ptr noundef %998)
  br label %1184

1000:                                             ; preds = %993
  %1001 = getelementptr inbounds i8, ptr %914, i64 2
  %1002 = load ptr, ptr @asm_out_file, align 8, !tbaa !136
  %1003 = load i32, ptr @insn_counter, align 4, !tbaa !151
  %1004 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1002, ptr noundef nonnull @.str.35, i32 noundef %1003)
  br label %1184

1005:                                             ; preds = %993
  %1006 = and i32 %995, 255
  %1007 = zext nneg i32 %1006 to i64
  %1008 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %1007
  %1009 = load i16, ptr %1008, align 2, !tbaa !430
  %1010 = zext i16 %1009 to i32
  %1011 = and i32 %1010, 136
  %1012 = icmp eq i32 %1011, 0
  br i1 %1012, label %1117, label %1013, !prof !431

1013:                                             ; preds = %1005
  %1014 = getelementptr inbounds i8, ptr %914, i64 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #29
  %1015 = call i64 @strtoul(ptr noundef nonnull %1014, ptr noundef nonnull %14, i32 noundef 10)
  %1016 = load ptr, ptr %14, align 8, !tbaa !136
  %1017 = icmp eq ptr %1016, %1014
  br i1 %1017, label %1018, label %1019, !prof !432

1018:                                             ; preds = %1013
  call void (ptr, ...) @output_operand_lossage(ptr noundef nonnull @.str.36)
  br label %1106

1019:                                             ; preds = %1013
  %1020 = load ptr, ptr @this_is_asm_operands, align 8, !tbaa !136
  %1021 = icmp eq ptr %1020, null
  %1022 = load i32, ptr @insn_noperands, align 4
  %1023 = zext i32 %1022 to i64
  %1024 = icmp ult i64 %1015, %1023
  %1025 = select i1 %1021, i1 true, i1 %1024, !prof !433
  br i1 %1025, label %1027, label %1026, !prof !433

1026:                                             ; preds = %1019
  call void (ptr, ...) @output_operand_lossage(ptr noundef nonnull @.str.37)
  br label %1106

1027:                                             ; preds = %1019
  %1028 = getelementptr inbounds ptr, ptr @recog_data, i64 %1015
  %1029 = load ptr, ptr %1028, align 8, !tbaa !136
  switch i8 %994, label %1078 [
    i8 108, label %1030
    i8 97, label %1052
    i8 99, label %1056
    i8 110, label %1064
  ], !prof !434

1030:                                             ; preds = %1027
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %9) #29
  %1031 = load i32, ptr %1029, align 8
  %1032 = and i32 %1031, 65535
  %1033 = icmp eq i32 %1032, 44
  br i1 %1033, label %1034, label %1037, !prof !435

1034:                                             ; preds = %1030
  %1035 = getelementptr inbounds %struct.rtx_def, ptr %1029, i64 0, i32 1
  %1036 = load ptr, ptr %1035, align 8, !tbaa !147
  br label %1037

1037:                                             ; preds = %1034, %1030
  %1038 = phi ptr [ %1036, %1034 ], [ %1029, %1030 ]
  %1039 = load i32, ptr %1038, align 8
  %1040 = trunc i32 %1039 to i16
  switch i16 %1040, label %1049 [
    i16 12, label %1045
    i16 13, label %1041
  ], !prof !436

1041:                                             ; preds = %1037
  %1042 = getelementptr inbounds %struct.rtx_def, ptr %1038, i64 1
  %1043 = load i32, ptr %1042, align 8, !tbaa !147
  %1044 = icmp eq i32 %1043, 1
  br i1 %1044, label %1045, label %1049

1045:                                             ; preds = %1041, %1037
  %1046 = getelementptr inbounds %struct.rtx_def, ptr %1038, i64 1, i32 1
  %1047 = load i32, ptr %1046, align 8, !tbaa !147
  %1048 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) @.str.40, ptr noundef nonnull @.str.20, i32 noundef %1047)
  br label %1050

1049:                                             ; preds = %1041, %1037
  call void (ptr, ...) @output_operand_lossage(ptr noundef nonnull @.str.41)
  br label %1050

1050:                                             ; preds = %1049, %1045
  %1051 = load ptr, ptr @asm_out_file, align 8, !tbaa !136
  call void @assemble_name(ptr noundef %1051, ptr noundef nonnull %9) #29
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %9) #29
  br label %1106

1052:                                             ; preds = %1027
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10)
  store ptr %1029, ptr %10, align 8, !tbaa !136
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #29
  store i8 0, ptr %11, align 1, !tbaa !147
  %1053 = call fastcc ptr @walk_alter_subreg(ptr noundef nonnull %10, ptr noundef nonnull %11)
  %1054 = load ptr, ptr @asm_out_file, align 8, !tbaa !136
  %1055 = load ptr, ptr %10, align 8, !tbaa !136
  call void @print_operand_address(ptr noundef %1054, ptr noundef %1055) #29
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #29
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10)
  br label %1106

1056:                                             ; preds = %1027
  %1057 = call zeroext i8 @constant_address_p(ptr noundef %1029) #29
  %1058 = icmp eq i8 %1057, 0
  br i1 %1058, label %1062, label %1059

1059:                                             ; preds = %1056
  %1060 = load ptr, ptr @asm_out_file, align 8, !tbaa !136
  %1061 = load ptr, ptr %1028, align 8, !tbaa !136
  call void @output_addr_const(ptr noundef %1060, ptr noundef %1061)
  br label %1106

1062:                                             ; preds = %1056
  %1063 = load ptr, ptr %1028, align 8, !tbaa !136
  call fastcc void @output_operand(ptr noundef %1063, i32 noundef 99)
  br label %1106

1064:                                             ; preds = %1027
  %1065 = load i32, ptr %1029, align 8
  %1066 = and i32 %1065, 65535
  %1067 = icmp eq i32 %1066, 30
  %1068 = load ptr, ptr @asm_out_file, align 8, !tbaa !136
  br i1 %1067, label %1069, label %1074

1069:                                             ; preds = %1064
  %1070 = getelementptr inbounds %struct.rtx_def, ptr %1029, i64 0, i32 1
  %1071 = load i64, ptr %1070, align 8, !tbaa !147
  %1072 = sub nsw i64 0, %1071
  %1073 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1068, ptr noundef nonnull @.str.38, i64 noundef %1072)
  br label %1106

1074:                                             ; preds = %1064
  %1075 = call i32 @putc(i32 noundef 45, ptr noundef %1068)
  %1076 = load ptr, ptr @asm_out_file, align 8, !tbaa !136
  %1077 = load ptr, ptr %1028, align 8, !tbaa !136
  call void @output_addr_const(ptr noundef %1076, ptr noundef %1077)
  br label %1106

1078:                                             ; preds = %1027
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8)
  store ptr %1029, ptr %8, align 8, !tbaa !136
  %1079 = icmp eq ptr %1029, null
  br i1 %1079, label %1086, label %1080, !prof !437

1080:                                             ; preds = %1078
  %1081 = load i32, ptr %1029, align 8
  %1082 = and i32 %1081, 65535
  %1083 = icmp eq i32 %1082, 39
  br i1 %1083, label %1084, label %1086, !prof !438

1084:                                             ; preds = %1080
  %1085 = call ptr @alter_subreg(ptr noundef nonnull %8)
  store ptr %1085, ptr %8, align 8, !tbaa !136
  br label %1086

1086:                                             ; preds = %1084, %1080, %1078
  %1087 = load ptr, ptr %8, align 8, !tbaa !136
  %1088 = icmp eq ptr %1087, null
  br i1 %1088, label %1098, label %1089, !prof !437

1089:                                             ; preds = %1086
  %1090 = load i32, ptr %1087, align 8
  %1091 = and i32 %1090, 65535
  %1092 = icmp eq i32 %1091, 37
  br i1 %1092, label %1093, label %1098, !prof !439

1093:                                             ; preds = %1089
  %1094 = getelementptr inbounds %struct.rtx_def, ptr %1087, i64 0, i32 1
  %1095 = load i32, ptr %1094, align 8, !tbaa !147
  %1096 = icmp ult i32 %1095, 53
  br i1 %1096, label %1098, label %1097, !prof !440

1097:                                             ; preds = %1093
  call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 3496, ptr noundef nonnull @.str.12) #29
  br label %1098

1098:                                             ; preds = %1097, %1093, %1089, %1086
  %1099 = load ptr, ptr @asm_out_file, align 8, !tbaa !136
  %1100 = load ptr, ptr %8, align 8, !tbaa !136
  call void @print_operand(ptr noundef %1099, ptr noundef %1100, i32 noundef %995) #29
  %1101 = load ptr, ptr %8, align 8, !tbaa !136
  %1102 = icmp eq ptr %1101, null
  br i1 %1102, label %1105, label %1103, !prof !437

1103:                                             ; preds = %1098
  %1104 = call i32 @for_each_rtx(ptr noundef nonnull %8, ptr noundef nonnull @mark_symbol_ref_as_used, ptr noundef null) #29
  br label %1105

1105:                                             ; preds = %1103, %1098
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8)
  br label %1106

1106:                                             ; preds = %1105, %1074, %1069, %1062, %1059, %1052, %1050, %1026, %1018
  %1107 = getelementptr inbounds [30 x i8], ptr %13, i64 0, i64 %1015
  %1108 = load i8, ptr %1107, align 1, !tbaa !147
  %1109 = icmp eq i8 %1108, 0
  br i1 %1109, label %1110, label %1115, !prof !433

1110:                                             ; preds = %1106
  %1111 = trunc i64 %1015 to i32
  %1112 = add nsw i32 %912, 1
  %1113 = sext i32 %912 to i64
  %1114 = getelementptr inbounds [30 x i32], ptr %12, i64 0, i64 %1113
  store i32 %1111, ptr %1114, align 4, !tbaa !151
  br label %1115

1115:                                             ; preds = %1110, %1106
  %1116 = phi i32 [ %912, %1106 ], [ %1112, %1110 ]
  store i8 1, ptr %1107, align 1, !tbaa !147
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #29
  br label %1184

1117:                                             ; preds = %1005
  %1118 = and i32 %1010, 4
  %1119 = icmp eq i32 %1118, 0
  br i1 %1119, label %1171, label %1120, !prof !441

1120:                                             ; preds = %1117
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #29
  %1121 = call i64 @strtoul(ptr noundef nonnull %915, ptr noundef nonnull %15, i32 noundef 10)
  %1122 = load ptr, ptr @this_is_asm_operands, align 8, !tbaa !136
  %1123 = icmp eq ptr %1122, null
  %1124 = load i32, ptr @insn_noperands, align 4
  %1125 = zext i32 %1124 to i64
  %1126 = icmp ult i64 %1121, %1125
  %1127 = select i1 %1123, i1 true, i1 %1126, !prof !442
  br i1 %1127, label %1129, label %1128, !prof !442

1128:                                             ; preds = %1120
  call void (ptr, ...) @output_operand_lossage(ptr noundef nonnull @.str.37)
  br label %1159

1129:                                             ; preds = %1120
  %1130 = getelementptr inbounds ptr, ptr @recog_data, i64 %1121
  %1131 = load ptr, ptr %1130, align 8, !tbaa !136
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7)
  store ptr %1131, ptr %7, align 8, !tbaa !136
  %1132 = icmp eq ptr %1131, null
  br i1 %1132, label %1139, label %1133, !prof !437

1133:                                             ; preds = %1129
  %1134 = load i32, ptr %1131, align 8
  %1135 = and i32 %1134, 65535
  %1136 = icmp eq i32 %1135, 39
  br i1 %1136, label %1137, label %1139, !prof !438

1137:                                             ; preds = %1133
  %1138 = call ptr @alter_subreg(ptr noundef nonnull %7)
  store ptr %1138, ptr %7, align 8, !tbaa !136
  br label %1139

1139:                                             ; preds = %1137, %1133, %1129
  %1140 = load ptr, ptr %7, align 8, !tbaa !136
  %1141 = icmp eq ptr %1140, null
  br i1 %1141, label %1151, label %1142, !prof !437

1142:                                             ; preds = %1139
  %1143 = load i32, ptr %1140, align 8
  %1144 = and i32 %1143, 65535
  %1145 = icmp eq i32 %1144, 37
  br i1 %1145, label %1146, label %1151, !prof !439

1146:                                             ; preds = %1142
  %1147 = getelementptr inbounds %struct.rtx_def, ptr %1140, i64 0, i32 1
  %1148 = load i32, ptr %1147, align 8, !tbaa !147
  %1149 = icmp ult i32 %1148, 53
  br i1 %1149, label %1151, label %1150, !prof !440

1150:                                             ; preds = %1146
  call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 3496, ptr noundef nonnull @.str.12) #29
  br label %1151

1151:                                             ; preds = %1150, %1146, %1142, %1139
  %1152 = load ptr, ptr @asm_out_file, align 8, !tbaa !136
  %1153 = load ptr, ptr %7, align 8, !tbaa !136
  call void @print_operand(ptr noundef %1152, ptr noundef %1153, i32 noundef 0) #29
  %1154 = load ptr, ptr %7, align 8, !tbaa !136
  %1155 = icmp eq ptr %1154, null
  br i1 %1155, label %1158, label %1156, !prof !437

1156:                                             ; preds = %1151
  %1157 = call i32 @for_each_rtx(ptr noundef nonnull %7, ptr noundef nonnull @mark_symbol_ref_as_used, ptr noundef null) #29
  br label %1158

1158:                                             ; preds = %1156, %1151
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7)
  br label %1159

1159:                                             ; preds = %1158, %1128
  %1160 = getelementptr inbounds [30 x i8], ptr %13, i64 0, i64 %1121
  %1161 = load i8, ptr %1160, align 1, !tbaa !147
  %1162 = icmp eq i8 %1161, 0
  br i1 %1162, label %1163, label %1168, !prof !443

1163:                                             ; preds = %1159
  %1164 = trunc i64 %1121 to i32
  %1165 = add nsw i32 %912, 1
  %1166 = sext i32 %912 to i64
  %1167 = getelementptr inbounds [30 x i32], ptr %12, i64 0, i64 %1166
  store i32 %1164, ptr %1167, align 4, !tbaa !151
  br label %1168

1168:                                             ; preds = %1163, %1159
  %1169 = phi i32 [ %912, %1159 ], [ %1165, %1163 ]
  store i8 1, ptr %1160, align 1, !tbaa !147
  %1170 = load ptr, ptr %15, align 8, !tbaa !136
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #29
  br label %1184

1171:                                             ; preds = %1117
  switch i8 %994, label %1180 [
    i8 42, label %1172
    i8 43, label %1172
    i8 38, label %1172
    i8 59, label %1172
  ], !prof !444

1172:                                             ; preds = %1171, %1171, %1171, %1171
  %1173 = getelementptr inbounds i8, ptr %914, i64 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6)
  store ptr null, ptr %6, align 8, !tbaa !136
  %1174 = load ptr, ptr @asm_out_file, align 8, !tbaa !136
  call void @print_operand(ptr noundef %1174, ptr noundef null, i32 noundef %995) #29
  %1175 = load ptr, ptr %6, align 8, !tbaa !136
  %1176 = icmp eq ptr %1175, null
  br i1 %1176, label %1179, label %1177, !prof !437

1177:                                             ; preds = %1172
  %1178 = call i32 @for_each_rtx(ptr noundef nonnull %6, ptr noundef nonnull @mark_symbol_ref_as_used, ptr noundef null) #29
  br label %1179

1179:                                             ; preds = %1177, %1172
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6)
  br label %1184

1180:                                             ; preds = %1171
  call void (ptr, ...) @output_operand_lossage(ptr noundef nonnull @.str.39)
  br label %1184

1181:                                             ; preds = %911
  %1182 = load ptr, ptr @asm_out_file, align 8, !tbaa !136
  %1183 = call i32 @putc(i32 noundef %917, ptr noundef %1182)
  br label %1184

1184:                                             ; preds = %982, %929, %1181, %1180, %1179, %1168, %1115, %1000, %996, %990, %988, %985, %981, %974, %970, %940, %936
  %1185 = phi i32 [ %912, %1181 ], [ %912, %996 ], [ %912, %1000 ], [ %1116, %1115 ], [ %1169, %1168 ], [ %912, %1179 ], [ %912, %1180 ], [ %912, %985 ], [ 0, %936 ], [ %912, %974 ], [ %912, %970 ], [ %912, %981 ], [ %912, %990 ], [ %912, %988 ], [ 0, %940 ], [ 0, %929 ], [ %912, %982 ]
  %1186 = phi i32 [ %913, %1181 ], [ %913, %996 ], [ %913, %1000 ], [ %913, %1115 ], [ %913, %1168 ], [ %913, %1179 ], [ %913, %1180 ], [ 0, %985 ], [ %913, %936 ], [ 1, %974 ], [ 1, %970 ], [ 0, %981 ], [ 0, %990 ], [ 0, %988 ], [ %913, %940 ], [ %913, %929 ], [ 0, %982 ]
  %1187 = phi ptr [ %915, %1181 ], [ %997, %996 ], [ %1001, %1000 ], [ %1016, %1115 ], [ %1170, %1168 ], [ %1173, %1179 ], [ %915, %1180 ], [ %915, %985 ], [ %930, %936 ], [ %971, %974 ], [ %971, %970 ], [ %978, %981 ], [ %915, %990 ], [ %915, %988 ], [ %945, %940 ], [ %930, %929 ], [ %983, %982 ]
  br label %911, !llvm.loop !445

1188:                                             ; preds = %911
  %1189 = load i32, ptr @flag_verbose_asm, align 4, !tbaa !151
  %1190 = icmp eq i32 %1189, 0
  br i1 %1190, label %1192, label %1191, !prof !446

1191:                                             ; preds = %1188
  call fastcc void @output_asm_operand_names(ptr noundef nonnull @recog_data, ptr noundef nonnull %12, i32 noundef %912)
  br label %1192

1192:                                             ; preds = %1191, %1188
  %1193 = load i32, ptr @flag_print_asm_name, align 4, !tbaa !151
  %1194 = icmp eq i32 %1193, 0
  br i1 %1194, label %1196, label %1195, !prof !446

1195:                                             ; preds = %1192
  call fastcc void @output_asm_name()
  br label %1196

1196:                                             ; preds = %1195, %1192
  %1197 = load ptr, ptr @asm_out_file, align 8, !tbaa !136
  %1198 = call i32 @putc(i32 noundef 10, ptr noundef %1197)
  br label %1199

1199:                                             ; preds = %891, %1196
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %13) #29
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %12) #29
  %1200 = load i32, ptr @flag_enable_icf_debug, align 4, !tbaa !151
  %1201 = icmp eq i32 %1200, 0
  br i1 %1201, label %1239, label %1202, !prof !373

1202:                                             ; preds = %1199
  %1203 = load i32, ptr %0, align 8
  %1204 = and i32 %1203, 65535
  %1205 = icmp eq i32 %1204, 10
  br i1 %1205, label %1206, label %1239

1206:                                             ; preds = %1202
  %1207 = call fastcc ptr @call_from_call_insn(ptr noundef nonnull %0)
  %1208 = getelementptr inbounds %struct.rtx_def, ptr %1207, i64 0, i32 1
  %1209 = load ptr, ptr %1208, align 8, !tbaa !147
  %1210 = icmp eq ptr %1209, null
  br i1 %1210, label %1239, label %1211

1211:                                             ; preds = %1206
  %1212 = load i32, ptr %1209, align 8
  %1213 = and i32 %1212, 65535
  %1214 = icmp eq i32 %1213, 43
  br i1 %1214, label %1215, label %1239

1215:                                             ; preds = %1211
  %1216 = getelementptr inbounds %struct.rtx_def, ptr %1209, i64 0, i32 1
  %1217 = load ptr, ptr %1216, align 8, !tbaa !147
  %1218 = load i32, ptr %1217, align 8
  %1219 = and i32 %1218, 65535
  %1220 = icmp eq i32 %1219, 45
  br i1 %1220, label %1221, label %1234

1221:                                             ; preds = %1215
  %1222 = and i32 %1218, 67108864
  %1223 = icmp eq i32 %1222, 0
  br i1 %1223, label %1224, label %1227

1224:                                             ; preds = %1221
  %1225 = getelementptr inbounds %struct.rtx_def, ptr %1217, i64 0, i32 1, i32 0, i32 0, i64 2
  %1226 = load ptr, ptr %1225, align 8, !tbaa !147
  br label %1227

1227:                                             ; preds = %1221, %1224
  %1228 = phi ptr [ %1226, %1224 ], [ null, %1221 ]
  %1229 = icmp eq ptr %1228, null
  br i1 %1229, label %1239, label %1230

1230:                                             ; preds = %1227
  %1231 = load ptr, ptr @debug_hooks, align 8, !tbaa !136
  %1232 = getelementptr inbounds %struct.gcc_debug_hooks, ptr %1231, i64 0, i32 26
  %1233 = load ptr, ptr %1232, align 8, !tbaa !447
  call void %1233(ptr noundef nonnull %1228) #29
  br label %1239

1234:                                             ; preds = %1215
  %1235 = load ptr, ptr @debug_hooks, align 8, !tbaa !136
  %1236 = getelementptr inbounds %struct.gcc_debug_hooks, ptr %1235, i64 0, i32 29
  %1237 = load ptr, ptr %1236, align 8, !tbaa !448
  %1238 = load i32, ptr %462, align 8, !tbaa !147
  call void %1237(i32 noundef %1238) #29
  br label %1239

1239:                                             ; preds = %1206, %1211, %1234, %1230, %1227, %1202, %1199
  %1240 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 38), align 8, !tbaa !382
  %1241 = icmp eq ptr %1240, null
  br i1 %1241, label %1245, label %1242, !prof !373

1242:                                             ; preds = %1239
  %1243 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !386
  %1244 = sext i8 %1243 to i32
  call void %1240(ptr noundef %1, ptr noundef nonnull %0, ptr noundef nonnull @recog_data, i32 noundef %1244) #29
  br label %1245

1245:                                             ; preds = %1242, %1239
  %1246 = load ptr, ptr @final_sequence, align 8, !tbaa !136
  %1247 = icmp eq ptr %1246, null
  br i1 %1247, label %1248, label %1252, !prof !373

1248:                                             ; preds = %1245
  %1249 = call i32 @dwarf2out_do_frame() #29
  %1250 = icmp eq i32 %1249, 0
  br i1 %1250, label %1252, label %1251, !prof !373

1251:                                             ; preds = %1248
  call void @dwarf2out_frame_debug(ptr noundef nonnull %0, i8 noundef zeroext 1) #29
  br label %1252

1252:                                             ; preds = %1251, %1248, %1245
  store ptr null, ptr @debug_insn, align 8, !tbaa !136
  store ptr null, ptr @current_output_insn, align 8, !tbaa !136
  br label %1253

1253:                                             ; preds = %818, %809, %461, %562, %591, %585, %461, %1252, %837, %688, %629, %517
  %1254 = phi i32 [ 2, %517 ], [ 2, %629 ], [ %689, %688 ], [ 1, %837 ], [ 0, %1252 ], [ 2, %461 ], [ 2, %585 ], [ 2, %591 ], [ 2, %562 ], [ 2, %461 ], [ 1, %809 ], [ 1, %818 ]
  %1255 = phi ptr [ undef, %517 ], [ undef, %629 ], [ %662, %688 ], [ %830, %837 ], [ undef, %1252 ], [ undef, %461 ], [ undef, %585 ], [ undef, %591 ], [ undef, %562 ], [ undef, %461 ], [ null, %809 ], [ null, %818 ]
  switch i32 %1254, label %1259 [
    i32 0, label %1256
    i32 2, label %1256
  ], !prof !449

1256:                                             ; preds = %429, %1253, %323, %329, %316, %298, %246, %204, %206, %172, %174, %333, %318, %31, %182, %180, %82, %76, %71, %51, %337, %334, %457, %450, %255, %250, %1253, %5
  %1257 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %1258 = load ptr, ptr %1257, align 8, !tbaa !147
  br label %1259

1259:                                             ; preds = %1256, %1253
  %1260 = phi ptr [ %1255, %1253 ], [ %1258, %1256 ]
  ret ptr %1260
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local ptr @get_insn_template(i32 noundef %0, ptr noundef %1) local_unnamed_addr #15 !prof !135 {
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %3, i32 7
  %5 = load i8, ptr %4, align 1, !tbaa !403
  switch i8 %5, label %23 [
    i8 1, label %6
    i8 2, label %9
    i8 3, label %16
  ], !prof !405

6:                                                ; preds = %2
  %7 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %3, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !147
  br label %24

9:                                                ; preds = %2
  %10 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %3, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !147
  %12 = load i32, ptr @which_alternative, align 4, !tbaa !151
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds ptr, ptr %11, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !136
  br label %24

16:                                               ; preds = %2
  %17 = icmp eq ptr %1, null
  br i1 %17, label %18, label %19, !prof !406

18:                                               ; preds = %16
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 1736, ptr noundef nonnull @.str.12) #29
  br label %19

19:                                               ; preds = %16, %18
  %20 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %3, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !147
  %22 = tail call ptr %21(ptr noundef nonnull @recog_data, ptr noundef %1) #29, !prof !450
  br label %24

23:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 1740, ptr noundef nonnull @.str.12) #29
  br label %24

24:                                               ; preds = %23, %19, %9, %6
  %25 = phi ptr [ @.str.15, %23 ], [ %22, %19 ], [ %15, %9 ], [ %8, %6 ]
  ret ptr %25
}

declare void @dwarf2out_switch_text_section() local_unnamed_addr #3

declare void @switch_to_section(ptr noundef) local_unnamed_addr #3

declare ptr @current_function_section() local_unnamed_addr #3

declare void @dwarf2out_begin_epilogue(ptr noundef) local_unnamed_addr #3

declare void @dwarf2out_frame_debug_restore_state() local_unnamed_addr #3

declare ptr @block_nonartificial_location(ptr noundef) local_unnamed_addr #3

declare void @expand_location(ptr dead_on_unwind writable sret(%struct.expanded_location) align 8, i32 noundef) local_unnamed_addr #3

declare void @ix86_output_addr_vec_elt(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @ix86_output_addr_diff_elt(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @decode_asm_operands(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @output_asm_insn(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #15 !prof !135 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca [256 x i8], align 16
  %7 = alloca ptr, align 8
  %8 = alloca i8, align 1
  %9 = alloca [30 x i32], align 16
  %10 = alloca [30 x i8], align 16
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %9) #29
  call void @llvm.lifetime.start.p0(i64 30, ptr nonnull %10) #29
  %13 = load i8, ptr %0, align 1, !tbaa !147
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %320, label %15, !prof !414

15:                                               ; preds = %2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(30) %10, i8 0, i64 30, i1 false)
  %16 = load ptr, ptr @asm_out_file, align 8, !tbaa !136
  %17 = tail call i32 @putc(i32 noundef 9, ptr noundef %16)
  %18 = load i8, ptr %0, align 1, !tbaa !147
  %19 = icmp eq i8 %18, 37
  br i1 %19, label %20, label %30, !prof !415

20:                                               ; preds = %15
  %21 = getelementptr inbounds i8, ptr %0, i64 1
  %22 = load i8, ptr %21, align 1, !tbaa !147
  %23 = icmp eq i8 %22, 118
  br i1 %23, label %24, label %30, !prof !416

24:                                               ; preds = %20
  %25 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !151
  %26 = and i32 %25, 32
  %27 = icmp eq i32 %26, 0
  %28 = getelementptr inbounds i8, ptr %0, i64 2
  %29 = select i1 %27, ptr %28, ptr %21
  br label %30

30:                                               ; preds = %24, %20, %15
  %31 = phi ptr [ %0, %15 ], [ %0, %20 ], [ %29, %24 ]
  br label %32

32:                                               ; preds = %30, %305
  %33 = phi i32 [ %306, %305 ], [ 0, %30 ]
  %34 = phi i32 [ %307, %305 ], [ 0, %30 ]
  %35 = phi ptr [ %308, %305 ], [ %31, %30 ]
  %36 = getelementptr inbounds i8, ptr %35, i64 1
  %37 = load i8, ptr %35, align 1, !tbaa !147
  %38 = sext i8 %37 to i32
  switch i8 %37, label %302 [
    i8 0, label %309
    i8 10, label %39
    i8 123, label %67
    i8 124, label %96
    i8 125, label %109
    i8 37, label %114
  ], !prof !417

39:                                               ; preds = %32
  %40 = load i32, ptr @flag_verbose_asm, align 4, !tbaa !151
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %39
  call fastcc void @output_asm_operand_names(ptr noundef %1, ptr noundef nonnull %9, i32 noundef %33)
  br label %43

43:                                               ; preds = %42, %39
  %44 = load i32, ptr @flag_print_asm_name, align 4, !tbaa !151
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %43
  call fastcc void @output_asm_name()
  br label %47

47:                                               ; preds = %46, %43
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(30) %10, i8 0, i64 30, i1 false)
  %48 = load ptr, ptr @asm_out_file, align 8, !tbaa !136
  %49 = call i32 @putc(i32 noundef %38, ptr noundef %48)
  br label %50

50:                                               ; preds = %53, %47
  %51 = phi ptr [ %36, %47 ], [ %56, %53 ]
  %52 = load i8, ptr %51, align 1, !tbaa !147
  switch i8 %52, label %305 [
    i8 9, label %53
    i8 37, label %57
  ]

53:                                               ; preds = %50
  %54 = load ptr, ptr @asm_out_file, align 8, !tbaa !136
  %55 = call i32 @putc(i32 noundef 9, ptr noundef %54)
  %56 = getelementptr inbounds i8, ptr %51, i64 1
  br label %50, !llvm.loop !418

57:                                               ; preds = %50
  %58 = getelementptr inbounds i8, ptr %51, i64 1
  %59 = load i8, ptr %58, align 1, !tbaa !147
  %60 = icmp eq i8 %59, 118
  br i1 %60, label %61, label %305

61:                                               ; preds = %57
  %62 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !151
  %63 = and i32 %62, 32
  %64 = icmp eq i32 %63, 0
  %65 = getelementptr inbounds i8, ptr %51, i64 2
  %66 = select i1 %64, ptr %65, ptr %58
  br label %305

67:                                               ; preds = %32
  %68 = icmp eq i32 %34, 0
  br i1 %68, label %70, label %69, !prof !419

69:                                               ; preds = %67
  call void (ptr, ...) @output_operand_lossage(ptr noundef nonnull @.str.33)
  br label %70

70:                                               ; preds = %67, %69
  %71 = load i32, ptr @dialect_number, align 4, !tbaa !151
  %72 = icmp sgt i32 %71, 0
  br i1 %72, label %73, label %91, !prof !420

73:                                               ; preds = %70, %87
  %74 = phi ptr [ %88, %87 ], [ %36, %70 ]
  %75 = phi i32 [ %89, %87 ], [ 0, %70 ]
  br label %76

76:                                               ; preds = %73, %79
  %77 = phi ptr [ %80, %79 ], [ %74, %73 ]
  %78 = load i8, ptr %77, align 1, !tbaa !147
  switch i8 %78, label %79 [
    i8 0, label %82
    i8 125, label %82
  ]

79:                                               ; preds = %76
  %80 = getelementptr inbounds i8, ptr %77, i64 1
  %81 = icmp eq i8 %78, 124
  br i1 %81, label %82, label %76, !llvm.loop !421

82:                                               ; preds = %79, %76, %76
  %83 = phi ptr [ %77, %76 ], [ %77, %76 ], [ %80, %79 ]
  %84 = load i8, ptr %83, align 1, !tbaa !147
  switch i8 %84, label %87 [
    i8 125, label %91
    i8 124, label %85
  ]

85:                                               ; preds = %82
  %86 = getelementptr inbounds i8, ptr %83, i64 1
  br label %87

87:                                               ; preds = %82, %85
  %88 = phi ptr [ %86, %85 ], [ %83, %82 ]
  %89 = add nuw nsw i32 %75, 1
  %90 = icmp eq i32 %89, %71
  br i1 %90, label %91, label %73, !prof !295, !llvm.loop !422

91:                                               ; preds = %87, %82, %70
  %92 = phi ptr [ %36, %70 ], [ %88, %87 ], [ %83, %82 ]
  %93 = load i8, ptr %92, align 1, !tbaa !147
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %95, label %305, !prof !423

95:                                               ; preds = %91
  call void (ptr, ...) @output_operand_lossage(ptr noundef nonnull @.str.34)
  br label %305

96:                                               ; preds = %32
  %97 = icmp eq i32 %34, 0
  br i1 %97, label %106, label %98, !prof !424

98:                                               ; preds = %96, %103
  %99 = phi ptr [ %104, %103 ], [ %36, %96 ]
  %100 = load i8, ptr %99, align 1, !tbaa !147
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %102, label %103, !prof !425

102:                                              ; preds = %98
  call void (ptr, ...) @output_operand_lossage(ptr noundef nonnull @.str.34)
  br label %305

103:                                              ; preds = %98
  %104 = getelementptr inbounds i8, ptr %99, i64 1
  %105 = icmp eq i8 %100, 125
  br i1 %105, label %305, label %98, !prof !426, !llvm.loop !427

106:                                              ; preds = %96
  %107 = load ptr, ptr @asm_out_file, align 8, !tbaa !136
  %108 = call i32 @putc(i32 noundef %38, ptr noundef %107)
  br label %305

109:                                              ; preds = %32
  %110 = icmp eq i32 %34, 0
  br i1 %110, label %111, label %305, !prof !428

111:                                              ; preds = %109
  %112 = load ptr, ptr @asm_out_file, align 8, !tbaa !136
  %113 = call i32 @putc(i32 noundef %38, ptr noundef %112)
  br label %305

114:                                              ; preds = %32
  %115 = load i8, ptr %36, align 1, !tbaa !147
  %116 = sext i8 %115 to i32
  switch i8 %115, label %126 [
    i8 37, label %117
    i8 61, label %121
  ], !prof !429

117:                                              ; preds = %114
  %118 = getelementptr inbounds i8, ptr %35, i64 2
  %119 = load ptr, ptr @asm_out_file, align 8, !tbaa !136
  %120 = call i32 @putc(i32 noundef %38, ptr noundef %119)
  br label %305

121:                                              ; preds = %114
  %122 = getelementptr inbounds i8, ptr %35, i64 2
  %123 = load ptr, ptr @asm_out_file, align 8, !tbaa !136
  %124 = load i32, ptr @insn_counter, align 4, !tbaa !151
  %125 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %123, ptr noundef nonnull @.str.35, i32 noundef %124)
  br label %305

126:                                              ; preds = %114
  %127 = and i32 %116, 255
  %128 = zext nneg i32 %127 to i64
  %129 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %128
  %130 = load i16, ptr %129, align 2, !tbaa !430
  %131 = zext i16 %130 to i32
  %132 = and i32 %131, 136
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %238, label %134, !prof !431

134:                                              ; preds = %126
  %135 = getelementptr inbounds i8, ptr %35, i64 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #29
  %136 = call i64 @strtoul(ptr noundef nonnull %135, ptr noundef nonnull %11, i32 noundef 10)
  %137 = load ptr, ptr %11, align 8, !tbaa !136
  %138 = icmp eq ptr %137, %135
  br i1 %138, label %139, label %140, !prof !432

139:                                              ; preds = %134
  call void (ptr, ...) @output_operand_lossage(ptr noundef nonnull @.str.36)
  br label %227

140:                                              ; preds = %134
  %141 = load ptr, ptr @this_is_asm_operands, align 8, !tbaa !136
  %142 = icmp eq ptr %141, null
  %143 = load i32, ptr @insn_noperands, align 4
  %144 = zext i32 %143 to i64
  %145 = icmp ult i64 %136, %144
  %146 = select i1 %142, i1 true, i1 %145, !prof !433
  br i1 %146, label %148, label %147, !prof !433

147:                                              ; preds = %140
  call void (ptr, ...) @output_operand_lossage(ptr noundef nonnull @.str.37)
  br label %227

148:                                              ; preds = %140
  %149 = getelementptr inbounds ptr, ptr %1, i64 %136
  %150 = load ptr, ptr %149, align 8, !tbaa !136
  switch i8 %115, label %199 [
    i8 108, label %151
    i8 97, label %173
    i8 99, label %177
    i8 110, label %185
  ], !prof !434

151:                                              ; preds = %148
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %6) #29
  %152 = load i32, ptr %150, align 8
  %153 = and i32 %152, 65535
  %154 = icmp eq i32 %153, 44
  br i1 %154, label %155, label %158, !prof !435

155:                                              ; preds = %151
  %156 = getelementptr inbounds %struct.rtx_def, ptr %150, i64 0, i32 1
  %157 = load ptr, ptr %156, align 8, !tbaa !147
  br label %158

158:                                              ; preds = %155, %151
  %159 = phi ptr [ %157, %155 ], [ %150, %151 ]
  %160 = load i32, ptr %159, align 8
  %161 = trunc i32 %160 to i16
  switch i16 %161, label %170 [
    i16 12, label %166
    i16 13, label %162
  ], !prof !436

162:                                              ; preds = %158
  %163 = getelementptr inbounds %struct.rtx_def, ptr %159, i64 1
  %164 = load i32, ptr %163, align 8, !tbaa !147
  %165 = icmp eq i32 %164, 1
  br i1 %165, label %166, label %170

166:                                              ; preds = %162, %158
  %167 = getelementptr inbounds %struct.rtx_def, ptr %159, i64 1, i32 1
  %168 = load i32, ptr %167, align 8, !tbaa !147
  %169 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) @.str.40, ptr noundef nonnull @.str.20, i32 noundef %168)
  br label %171

170:                                              ; preds = %162, %158
  call void (ptr, ...) @output_operand_lossage(ptr noundef nonnull @.str.41)
  br label %171

171:                                              ; preds = %166, %170
  %172 = load ptr, ptr @asm_out_file, align 8, !tbaa !136
  call void @assemble_name(ptr noundef %172, ptr noundef nonnull %6) #29
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %6) #29
  br label %227

173:                                              ; preds = %148
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7)
  store ptr %150, ptr %7, align 8, !tbaa !136
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #29
  store i8 0, ptr %8, align 1, !tbaa !147
  %174 = call fastcc ptr @walk_alter_subreg(ptr noundef nonnull %7, ptr noundef nonnull %8)
  %175 = load ptr, ptr @asm_out_file, align 8, !tbaa !136
  %176 = load ptr, ptr %7, align 8, !tbaa !136
  call void @print_operand_address(ptr noundef %175, ptr noundef %176) #29
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #29
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7)
  br label %227

177:                                              ; preds = %148
  %178 = call zeroext i8 @constant_address_p(ptr noundef %150) #29
  %179 = icmp eq i8 %178, 0
  br i1 %179, label %183, label %180

180:                                              ; preds = %177
  %181 = load ptr, ptr @asm_out_file, align 8, !tbaa !136
  %182 = load ptr, ptr %149, align 8, !tbaa !136
  call void @output_addr_const(ptr noundef %181, ptr noundef %182)
  br label %227

183:                                              ; preds = %177
  %184 = load ptr, ptr %149, align 8, !tbaa !136
  call fastcc void @output_operand(ptr noundef %184, i32 noundef 99)
  br label %227

185:                                              ; preds = %148
  %186 = load i32, ptr %150, align 8
  %187 = and i32 %186, 65535
  %188 = icmp eq i32 %187, 30
  %189 = load ptr, ptr @asm_out_file, align 8, !tbaa !136
  br i1 %188, label %190, label %195

190:                                              ; preds = %185
  %191 = getelementptr inbounds %struct.rtx_def, ptr %150, i64 0, i32 1
  %192 = load i64, ptr %191, align 8, !tbaa !147
  %193 = sub nsw i64 0, %192
  %194 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %189, ptr noundef nonnull @.str.38, i64 noundef %193)
  br label %227

195:                                              ; preds = %185
  %196 = call i32 @putc(i32 noundef 45, ptr noundef %189)
  %197 = load ptr, ptr @asm_out_file, align 8, !tbaa !136
  %198 = load ptr, ptr %149, align 8, !tbaa !136
  call void @output_addr_const(ptr noundef %197, ptr noundef %198)
  br label %227

199:                                              ; preds = %148
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5)
  store ptr %150, ptr %5, align 8, !tbaa !136
  %200 = icmp eq ptr %150, null
  br i1 %200, label %207, label %201, !prof !437

201:                                              ; preds = %199
  %202 = load i32, ptr %150, align 8
  %203 = and i32 %202, 65535
  %204 = icmp eq i32 %203, 39
  br i1 %204, label %205, label %207, !prof !438

205:                                              ; preds = %201
  %206 = call ptr @alter_subreg(ptr noundef nonnull %5)
  store ptr %206, ptr %5, align 8, !tbaa !136
  br label %207

207:                                              ; preds = %205, %201, %199
  %208 = load ptr, ptr %5, align 8, !tbaa !136
  %209 = icmp eq ptr %208, null
  br i1 %209, label %219, label %210, !prof !437

210:                                              ; preds = %207
  %211 = load i32, ptr %208, align 8
  %212 = and i32 %211, 65535
  %213 = icmp eq i32 %212, 37
  br i1 %213, label %214, label %219, !prof !439

214:                                              ; preds = %210
  %215 = getelementptr inbounds %struct.rtx_def, ptr %208, i64 0, i32 1
  %216 = load i32, ptr %215, align 8, !tbaa !147
  %217 = icmp ult i32 %216, 53
  br i1 %217, label %219, label %218, !prof !440

218:                                              ; preds = %214
  call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 3496, ptr noundef nonnull @.str.12) #29
  br label %219

219:                                              ; preds = %218, %214, %210, %207
  %220 = load ptr, ptr @asm_out_file, align 8, !tbaa !136
  %221 = load ptr, ptr %5, align 8, !tbaa !136
  call void @print_operand(ptr noundef %220, ptr noundef %221, i32 noundef %116) #29
  %222 = load ptr, ptr %5, align 8, !tbaa !136
  %223 = icmp eq ptr %222, null
  br i1 %223, label %226, label %224, !prof !437

224:                                              ; preds = %219
  %225 = call i32 @for_each_rtx(ptr noundef nonnull %5, ptr noundef nonnull @mark_symbol_ref_as_used, ptr noundef null) #29
  br label %226

226:                                              ; preds = %219, %224
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5)
  br label %227

227:                                              ; preds = %147, %173, %226, %195, %190, %180, %183, %171, %139
  %228 = getelementptr inbounds [30 x i8], ptr %10, i64 0, i64 %136
  %229 = load i8, ptr %228, align 1, !tbaa !147
  %230 = icmp eq i8 %229, 0
  br i1 %230, label %231, label %236, !prof !433

231:                                              ; preds = %227
  %232 = trunc i64 %136 to i32
  %233 = add nsw i32 %33, 1
  %234 = sext i32 %33 to i64
  %235 = getelementptr inbounds [30 x i32], ptr %9, i64 0, i64 %234
  store i32 %232, ptr %235, align 4, !tbaa !151
  br label %236

236:                                              ; preds = %231, %227
  %237 = phi i32 [ %33, %227 ], [ %233, %231 ]
  store i8 1, ptr %228, align 1, !tbaa !147
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #29
  br label %305

238:                                              ; preds = %126
  %239 = and i32 %131, 4
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %292, label %241, !prof !441

241:                                              ; preds = %238
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #29
  %242 = call i64 @strtoul(ptr noundef nonnull %36, ptr noundef nonnull %12, i32 noundef 10)
  %243 = load ptr, ptr @this_is_asm_operands, align 8, !tbaa !136
  %244 = icmp eq ptr %243, null
  %245 = load i32, ptr @insn_noperands, align 4
  %246 = zext i32 %245 to i64
  %247 = icmp ult i64 %242, %246
  %248 = select i1 %244, i1 true, i1 %247, !prof !442
  br i1 %248, label %250, label %249, !prof !442

249:                                              ; preds = %241
  call void (ptr, ...) @output_operand_lossage(ptr noundef nonnull @.str.37)
  br label %280

250:                                              ; preds = %241
  %251 = getelementptr inbounds ptr, ptr %1, i64 %242
  %252 = load ptr, ptr %251, align 8, !tbaa !136
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4)
  store ptr %252, ptr %4, align 8, !tbaa !136
  %253 = icmp eq ptr %252, null
  br i1 %253, label %260, label %254, !prof !437

254:                                              ; preds = %250
  %255 = load i32, ptr %252, align 8
  %256 = and i32 %255, 65535
  %257 = icmp eq i32 %256, 39
  br i1 %257, label %258, label %260, !prof !438

258:                                              ; preds = %254
  %259 = call ptr @alter_subreg(ptr noundef nonnull %4)
  store ptr %259, ptr %4, align 8, !tbaa !136
  br label %260

260:                                              ; preds = %258, %254, %250
  %261 = load ptr, ptr %4, align 8, !tbaa !136
  %262 = icmp eq ptr %261, null
  br i1 %262, label %272, label %263, !prof !437

263:                                              ; preds = %260
  %264 = load i32, ptr %261, align 8
  %265 = and i32 %264, 65535
  %266 = icmp eq i32 %265, 37
  br i1 %266, label %267, label %272, !prof !439

267:                                              ; preds = %263
  %268 = getelementptr inbounds %struct.rtx_def, ptr %261, i64 0, i32 1
  %269 = load i32, ptr %268, align 8, !tbaa !147
  %270 = icmp ult i32 %269, 53
  br i1 %270, label %272, label %271, !prof !440

271:                                              ; preds = %267
  call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 3496, ptr noundef nonnull @.str.12) #29
  br label %272

272:                                              ; preds = %271, %267, %263, %260
  %273 = load ptr, ptr @asm_out_file, align 8, !tbaa !136
  %274 = load ptr, ptr %4, align 8, !tbaa !136
  call void @print_operand(ptr noundef %273, ptr noundef %274, i32 noundef 0) #29
  %275 = load ptr, ptr %4, align 8, !tbaa !136
  %276 = icmp eq ptr %275, null
  br i1 %276, label %279, label %277, !prof !437

277:                                              ; preds = %272
  %278 = call i32 @for_each_rtx(ptr noundef nonnull %4, ptr noundef nonnull @mark_symbol_ref_as_used, ptr noundef null) #29
  br label %279

279:                                              ; preds = %272, %277
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4)
  br label %280

280:                                              ; preds = %279, %249
  %281 = getelementptr inbounds [30 x i8], ptr %10, i64 0, i64 %242
  %282 = load i8, ptr %281, align 1, !tbaa !147
  %283 = icmp eq i8 %282, 0
  br i1 %283, label %284, label %289, !prof !443

284:                                              ; preds = %280
  %285 = trunc i64 %242 to i32
  %286 = add nsw i32 %33, 1
  %287 = sext i32 %33 to i64
  %288 = getelementptr inbounds [30 x i32], ptr %9, i64 0, i64 %287
  store i32 %285, ptr %288, align 4, !tbaa !151
  br label %289

289:                                              ; preds = %284, %280
  %290 = phi i32 [ %33, %280 ], [ %286, %284 ]
  store i8 1, ptr %281, align 1, !tbaa !147
  %291 = load ptr, ptr %12, align 8, !tbaa !136
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #29
  br label %305

292:                                              ; preds = %238
  switch i8 %115, label %301 [
    i8 42, label %293
    i8 43, label %293
    i8 38, label %293
    i8 59, label %293
  ], !prof !444

293:                                              ; preds = %292, %292, %292, %292
  %294 = getelementptr inbounds i8, ptr %35, i64 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3)
  store ptr null, ptr %3, align 8, !tbaa !136
  %295 = load ptr, ptr @asm_out_file, align 8, !tbaa !136
  call void @print_operand(ptr noundef %295, ptr noundef null, i32 noundef %116) #29
  %296 = load ptr, ptr %3, align 8, !tbaa !136
  %297 = icmp eq ptr %296, null
  br i1 %297, label %300, label %298, !prof !437

298:                                              ; preds = %293
  %299 = call i32 @for_each_rtx(ptr noundef nonnull %3, ptr noundef nonnull @mark_symbol_ref_as_used, ptr noundef null) #29
  br label %300

300:                                              ; preds = %293, %298
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3)
  br label %305

301:                                              ; preds = %292
  call void (ptr, ...) @output_operand_lossage(ptr noundef nonnull @.str.39)
  br label %305

302:                                              ; preds = %32
  %303 = load ptr, ptr @asm_out_file, align 8, !tbaa !136
  %304 = call i32 @putc(i32 noundef %38, ptr noundef %303)
  br label %305

305:                                              ; preds = %103, %50, %61, %109, %111, %102, %91, %95, %117, %236, %300, %301, %289, %121, %106, %57, %302
  %306 = phi i32 [ %33, %302 ], [ %33, %117 ], [ %33, %121 ], [ %237, %236 ], [ %290, %289 ], [ %33, %300 ], [ %33, %301 ], [ %33, %106 ], [ 0, %57 ], [ %33, %95 ], [ %33, %91 ], [ %33, %102 ], [ %33, %111 ], [ %33, %109 ], [ 0, %61 ], [ 0, %50 ], [ %33, %103 ]
  %307 = phi i32 [ %34, %302 ], [ %34, %117 ], [ %34, %121 ], [ %34, %236 ], [ %34, %289 ], [ %34, %300 ], [ %34, %301 ], [ 0, %106 ], [ %34, %57 ], [ 1, %95 ], [ 1, %91 ], [ 0, %102 ], [ 0, %111 ], [ 0, %109 ], [ %34, %61 ], [ %34, %50 ], [ 0, %103 ]
  %308 = phi ptr [ %36, %302 ], [ %118, %117 ], [ %122, %121 ], [ %137, %236 ], [ %291, %289 ], [ %294, %300 ], [ %36, %301 ], [ %36, %106 ], [ %51, %57 ], [ %92, %95 ], [ %92, %91 ], [ %99, %102 ], [ %36, %111 ], [ %36, %109 ], [ %66, %61 ], [ %51, %50 ], [ %104, %103 ]
  br label %32, !llvm.loop !445

309:                                              ; preds = %32
  %310 = load i32, ptr @flag_verbose_asm, align 4, !tbaa !151
  %311 = icmp eq i32 %310, 0
  br i1 %311, label %313, label %312, !prof !446

312:                                              ; preds = %309
  call fastcc void @output_asm_operand_names(ptr noundef %1, ptr noundef nonnull %9, i32 noundef %33)
  br label %313

313:                                              ; preds = %312, %309
  %314 = load i32, ptr @flag_print_asm_name, align 4, !tbaa !151
  %315 = icmp eq i32 %314, 0
  br i1 %315, label %317, label %316, !prof !446

316:                                              ; preds = %313
  call fastcc void @output_asm_name()
  br label %317

317:                                              ; preds = %316, %313
  %318 = load ptr, ptr @asm_out_file, align 8, !tbaa !136
  %319 = call i32 @putc(i32 noundef 10, ptr noundef %318)
  br label %320

320:                                              ; preds = %2, %317
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %10) #29
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %9) #29
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @cleanup_subreg_operands(ptr noundef %0) local_unnamed_addr #15 !prof !451 {
  %2 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #29
  store i8 0, ptr %2, align 1, !tbaa !147
  tail call void @extract_insn_cached(ptr noundef %0) #29
  %3 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !386
  %4 = icmp sgt i8 %3, 0
  br i1 %4, label %8, label %5, !prof !388

5:                                                ; preds = %26, %1
  %6 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 8), align 1, !tbaa !389
  %7 = icmp sgt i8 %6, 0
  br i1 %7, label %31, label %49, !prof !390

8:                                                ; preds = %1, %26
  %9 = phi i64 [ %27, %26 ], [ 0, %1 ]
  %10 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 1, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !136
  %12 = load ptr, ptr %11, align 8, !tbaa !136
  %13 = load i32, ptr %12, align 8
  %14 = and i32 %13, 65535
  %15 = icmp eq i32 %14, 39
  br i1 %15, label %16, label %19, !prof !391

16:                                               ; preds = %8
  %17 = call ptr @alter_subreg(ptr noundef nonnull %11)
  %18 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %9
  store ptr %17, ptr %18, align 8, !tbaa !136
  store i8 1, ptr %2, align 1, !tbaa !147
  br label %26

19:                                               ; preds = %8
  %20 = getelementptr inbounds [30 x ptr], ptr @recog_data, i64 0, i64 %9
  %21 = load ptr, ptr %20, align 8, !tbaa !136
  %22 = load i32, ptr %21, align 8
  %23 = trunc i32 %22 to i16
  switch i16 %23, label %26 [
    i16 49, label %24
    i16 52, label %24
    i16 43, label %24
  ], !prof !392

24:                                               ; preds = %19, %19, %19
  %25 = call fastcc ptr @walk_alter_subreg(ptr noundef nonnull %11, ptr noundef nonnull %2)
  store ptr %25, ptr %20, align 8, !tbaa !136
  br label %26

26:                                               ; preds = %19, %16, %24
  %27 = add nuw nsw i64 %9, 1
  %28 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 7), align 2, !tbaa !386
  %29 = sext i8 %28 to i64
  %30 = icmp slt i64 %27, %29
  br i1 %30, label %8, label %5, !prof !393, !llvm.loop !394

31:                                               ; preds = %5, %44
  %32 = phi i64 [ %45, %44 ], [ 0, %5 ]
  %33 = getelementptr inbounds %struct.recog_data, ptr @recog_data, i64 0, i32 5, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !136
  %35 = load ptr, ptr %34, align 8, !tbaa !136
  %36 = load i32, ptr %35, align 8
  %37 = trunc i32 %36 to i16
  switch i16 %37, label %44 [
    i16 39, label %38
    i16 49, label %41
    i16 52, label %41
    i16 43, label %41
  ], !prof !395

38:                                               ; preds = %31
  %39 = call ptr @alter_subreg(ptr noundef nonnull %34)
  %40 = load ptr, ptr %33, align 8, !tbaa !136
  store ptr %39, ptr %40, align 8, !tbaa !136
  store i8 1, ptr %2, align 1, !tbaa !147
  br label %44

41:                                               ; preds = %31, %31, %31
  %42 = call fastcc ptr @walk_alter_subreg(ptr noundef nonnull %34, ptr noundef nonnull %2)
  %43 = load ptr, ptr %33, align 8, !tbaa !136
  store ptr %42, ptr %43, align 8, !tbaa !136
  br label %44

44:                                               ; preds = %31, %38, %41
  %45 = add nuw nsw i64 %32, 1
  %46 = load i8, ptr getelementptr inbounds (%struct.recog_data, ptr @recog_data, i64 0, i32 8), align 1, !tbaa !389
  %47 = sext i8 %46 to i64
  %48 = icmp slt i64 %45, %47
  br i1 %48, label %31, label %49, !prof !396, !llvm.loop !397

49:                                               ; preds = %44, %5
  %50 = load i8, ptr %2, align 1, !tbaa !147
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %54, label %52, !prof !398

52:                                               ; preds = %49
  %53 = call zeroext i8 @df_insn_rescan(ptr noundef %0) #29
  br label %54

54:                                               ; preds = %52, %49
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #29
  ret void
}

declare i32 @print_rtl_single(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @constrain_operands_cached(i32 noundef) local_unnamed_addr #3

declare void @_fatal_insn_not_found(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @prev_nonnote_insn(ptr noundef) local_unnamed_addr #3

declare ptr @delete_insn(ptr noundef) local_unnamed_addr #3

declare ptr @try_split(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @_fatal_insn(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @call_from_call_insn(ptr nocapture noundef readonly %0) unnamed_addr #18 !prof !135 !PGOFuncName !452 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = icmp eq i32 %3, 10
  br i1 %4, label %6, label %5, !prof !402

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 1783, ptr noundef nonnull @.str.12) #29
  br label %6

6:                                                ; preds = %1, %5
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1
  %8 = load ptr, ptr %7, align 8, !tbaa !147
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 65535
  %11 = icmp eq i32 %10, 26
  br i1 %11, label %31, label %12, !prof !409

12:                                               ; preds = %6, %25
  %13 = phi i32 [ %28, %25 ], [ %9, %6 ]
  %14 = phi ptr [ %27, %25 ], [ %8, %6 ]
  %15 = trunc i32 %13 to i16
  switch i16 %15, label %16 [
    i16 14, label %17
    i16 15, label %19
    i16 23, label %23
  ], !prof !410

16:                                               ; preds = %12
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 1791, ptr noundef nonnull @.str.12) #29
  br label %17

17:                                               ; preds = %12, %16
  %18 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1, i32 0, i32 0, i64 1
  br label %25

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !147
  %22 = getelementptr inbounds %struct.rtvec_def, ptr %21, i64 0, i32 1
  br label %25

23:                                               ; preds = %12
  %24 = getelementptr inbounds %struct.rtx_def, ptr %14, i64 0, i32 1, i32 0, i32 0, i64 1
  br label %25

25:                                               ; preds = %23, %19, %17
  %26 = phi ptr [ %18, %17 ], [ %24, %23 ], [ %22, %19 ]
  %27 = load ptr, ptr %26, align 8, !tbaa !147
  %28 = load i32, ptr %27, align 8
  %29 = and i32 %28, 65535
  %30 = icmp eq i32 %29, 26
  br i1 %30, label %31, label %12, !prof !411, !llvm.loop !412

31:                                               ; preds = %25, %6
  %32 = phi ptr [ %8, %6 ], [ %27, %25 ]
  ret ptr %32
}

declare void @assemble_external(ptr noundef) local_unnamed_addr #3

declare void @extract_insn_cached(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @alter_subreg(ptr nocapture noundef %0) local_unnamed_addr #18 !prof !453 {
  %2 = load ptr, ptr %0, align 8, !tbaa !136
  %3 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !147
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 65535
  %7 = icmp eq i32 %6, 43
  br i1 %7, label %8, label %16, !prof !454

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %10 = load i32, ptr %9, align 8, !tbaa !147
  %11 = load i32, ptr %2, align 8
  %12 = lshr i32 %11, 16
  %13 = and i32 %12, 255
  %14 = sext i32 %10 to i64
  %15 = tail call ptr @adjust_address_1(ptr noundef nonnull %4, i32 noundef %13, i64 noundef %14, i32 noundef 1, i32 noundef 1) #29
  br label %50

16:                                               ; preds = %1
  %17 = load i32, ptr %2, align 8
  %18 = lshr i32 %17, 16
  %19 = and i32 %18, 255
  %20 = lshr i32 %5, 16
  %21 = and i32 %20, 255
  %22 = getelementptr inbounds %struct.rtx_def, ptr %2, i64 0, i32 1, i32 0, i32 0, i64 1
  %23 = load i32, ptr %22, align 8, !tbaa !147
  %24 = tail call ptr @simplify_subreg(i32 noundef %19, ptr noundef nonnull %4, i32 noundef %21, i32 noundef %23) #29
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %50, !prof !454

26:                                               ; preds = %16
  %27 = load i32, ptr %4, align 8
  %28 = and i32 %27, 65535
  %29 = icmp eq i32 %28, 37
  br i1 %29, label %30, label %52

30:                                               ; preds = %26
  %31 = tail call i32 @subreg_regno(ptr noundef nonnull %2) #29
  %32 = tail call i32 @subreg_lowpart_p(ptr noundef nonnull %2) #29
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %30
  %35 = load i32, ptr %2, align 8
  %36 = lshr i32 %35, 16
  %37 = and i32 %36, 255
  %38 = load i32, ptr %4, align 8
  %39 = lshr i32 %38, 16
  %40 = and i32 %39, 255
  %41 = tail call i32 @byte_lowpart_offset(i32 noundef %37, i32 noundef %40) #29
  br label %44

42:                                               ; preds = %30
  %43 = load i32, ptr %22, align 8, !tbaa !147
  br label %44

44:                                               ; preds = %42, %34
  %45 = phi i32 [ %41, %34 ], [ %43, %42 ]
  %46 = load i32, ptr %2, align 8
  %47 = lshr i32 %46, 16
  %48 = and i32 %47, 255
  %49 = tail call ptr @gen_rtx_REG_offset(ptr noundef nonnull %4, i32 noundef %48, i32 noundef %31, i32 noundef %45) #29
  br label %50

50:                                               ; preds = %16, %8, %44
  %51 = phi ptr [ %49, %44 ], [ %15, %8 ], [ %24, %16 ]
  store ptr %51, ptr %0, align 8, !tbaa !136
  br label %52

52:                                               ; preds = %50, %26
  %53 = load ptr, ptr %0, align 8, !tbaa !136
  ret ptr %53
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @walk_alter_subreg(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #15 !prof !455 !PGOFuncName !456 {
  %3 = load ptr, ptr %0, align 8, !tbaa !136
  %4 = load i32, ptr %3, align 8
  %5 = trunc i32 %4 to i16
  switch i16 %5, label %17 [
    i16 49, label %6
    i16 52, label %6
    i16 61, label %6
    i16 43, label %10
    i16 99, label %10
    i16 39, label %12
  ], !prof !457

6:                                                ; preds = %2, %2, %2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  %8 = tail call fastcc ptr @walk_alter_subreg(ptr noundef nonnull %7, ptr noundef %1)
  store ptr %8, ptr %7, align 8, !tbaa !147
  %9 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 1
  br label %14

10:                                               ; preds = %2, %2
  %11 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1
  br label %14

12:                                               ; preds = %2
  store i8 1, ptr %1, align 1, !tbaa !147
  %13 = tail call ptr @alter_subreg(ptr noundef nonnull %0)
  br label %19

14:                                               ; preds = %6, %10
  %15 = phi ptr [ %11, %10 ], [ %9, %6 ]
  %16 = tail call fastcc ptr @walk_alter_subreg(ptr noundef nonnull %15, ptr noundef %1)
  store ptr %16, ptr %15, align 8, !tbaa !147
  br label %17

17:                                               ; preds = %14, %2
  %18 = load ptr, ptr %0, align 8, !tbaa !136
  br label %19

19:                                               ; preds = %17, %12
  %20 = phi ptr [ %18, %17 ], [ %13, %12 ]
  ret ptr %20
}

declare zeroext i8 @df_insn_rescan(ptr noundef) local_unnamed_addr #3

declare ptr @adjust_address_1(ptr noundef, i32 noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @simplify_subreg(i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @subreg_regno(ptr noundef) local_unnamed_addr #3

declare i32 @subreg_lowpart_p(ptr noundef) local_unnamed_addr #3

declare i32 @byte_lowpart_offset(i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @gen_rtx_REG_offset(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @output_operand_lossage(ptr noundef %0, ...) local_unnamed_addr #21 !prof !135 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #29
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #29
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #29
  call void @llvm.va_start(ptr nonnull %4)
  %5 = load ptr, ptr @this_is_asm_operands, align 8, !tbaa !136
  %6 = icmp eq ptr %5, null
  %7 = select i1 %6, ptr @.str.30, ptr @.str.29
  %8 = call i32 (ptr, ptr, ...) @asprintf(ptr noundef nonnull %2, ptr noundef nonnull @.str.31, ptr noundef nonnull %7, ptr noundef %0) #29
  %9 = load ptr, ptr %2, align 8, !tbaa !136
  %10 = call i32 @vasprintf(ptr noundef nonnull %3, ptr noundef %9, ptr noundef nonnull %4) #29
  %11 = load ptr, ptr @this_is_asm_operands, align 8, !tbaa !136
  %12 = icmp eq ptr %11, null
  %13 = load ptr, ptr %3, align 8, !tbaa !136
  br i1 %12, label %15, label %14

14:                                               ; preds = %1
  call void (ptr, ptr, ...) @error_for_asm(ptr noundef nonnull %11, ptr noundef nonnull @.str.32, ptr noundef %13) #29
  br label %16

15:                                               ; preds = %1
  call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.32, ptr noundef %13) #29
  br label %16

16:                                               ; preds = %15, %14
  %17 = load ptr, ptr %2, align 8, !tbaa !136
  call void @free(ptr noundef %17)
  %18 = load ptr, ptr %3, align 8, !tbaa !136
  call void @free(ptr noundef %18)
  call void @llvm.va_end(ptr %4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #29
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #29
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #24

declare i32 @asprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare i32 @vasprintf(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @error_for_asm(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @internal_error(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #24

; Function Attrs: cold nounwind uwtable
define internal fastcc void @output_asm_operand_names(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #21 !prof !135 {
  %4 = alloca i32, align 4
  %5 = icmp sgt i32 %2, 0
  br i1 %5, label %6, label %47

6:                                                ; preds = %3
  %7 = zext nneg i32 %2 to i64
  br label %8

8:                                                ; preds = %6, %44
  %9 = phi i64 [ 0, %6 ], [ %45, %44 ]
  %10 = phi i1 [ true, %6 ], [ false, %44 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #29
  %11 = getelementptr inbounds i32, ptr %1, i64 %9
  %12 = load i32, ptr %11, align 4, !tbaa !151
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds ptr, ptr %0, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !136
  %16 = call fastcc ptr @get_mem_expr_from_op(ptr noundef %15, ptr noundef nonnull %4)
  %17 = load ptr, ptr @asm_out_file, align 8, !tbaa !136
  %18 = select i1 %10, i32 9, i32 44
  %19 = select i1 %10, ptr @.str.17, ptr @.str.15
  %20 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef nonnull @.str.63, i32 noundef %18, ptr noundef nonnull %19)
  %21 = icmp eq ptr %16, null
  br i1 %21, label %29, label %22

22:                                               ; preds = %8
  %23 = load ptr, ptr @asm_out_file, align 8, !tbaa !136
  %24 = load i32, ptr %4, align 4, !tbaa !151
  %25 = icmp eq i32 %24, 0
  %26 = select i1 %25, ptr @.str.15, ptr @.str.64
  %27 = tail call i32 @fputs(ptr nonnull %26, ptr %23)
  %28 = load ptr, ptr @asm_out_file, align 8, !tbaa !136
  tail call void @print_mem_expr(ptr noundef %28, ptr noundef nonnull %16) #29
  br label %44

29:                                               ; preds = %8
  %30 = load i32, ptr %15, align 8
  %31 = and i32 %30, 65535
  %32 = icmp eq i32 %31, 37
  br i1 %32, label %33, label %44

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1, i32 0, i32 0, i64 1
  %35 = load i32, ptr %34, align 8, !tbaa !147
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.rtx_def, ptr %15, i64 0, i32 1
  %39 = load i32, ptr %38, align 8, !tbaa !147
  %40 = icmp eq i32 %35, %39
  br i1 %40, label %44, label %41

41:                                               ; preds = %37
  %42 = load ptr, ptr @asm_out_file, align 8, !tbaa !136
  %43 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %42, ptr noundef nonnull @.str.65, i32 noundef %35)
  br label %44

44:                                               ; preds = %29, %33, %37, %41, %22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #29
  %45 = add nuw nsw i64 %9, 1
  %46 = icmp eq i64 %45, %7
  br i1 %46, label %47, label %8, !llvm.loop !458

47:                                               ; preds = %44, %3
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @output_asm_name() unnamed_addr #21 !prof !135 {
  %1 = load ptr, ptr @debug_insn, align 8, !tbaa !136
  %2 = icmp eq ptr %1, null
  br i1 %2, label %26, label %3

3:                                                ; preds = %0
  %4 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 0, i32 1
  %5 = getelementptr inbounds %struct.rtx_def, ptr %1, i64 1, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !147
  %7 = load ptr, ptr @asm_out_file, align 8, !tbaa !136
  %8 = load i32, ptr %4, align 8, !tbaa !147
  %9 = sext i32 %6 to i64
  %10 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !459
  %12 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.17, i32 noundef %8, ptr noundef %11)
  %13 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %9, i32 6
  %14 = load i8, ptr %13, align 2, !tbaa !460
  %15 = icmp sgt i8 %14, 1
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = load ptr, ptr @asm_out_file, align 8, !tbaa !136
  %18 = load i32, ptr @which_alternative, align 4, !tbaa !151
  %19 = add nsw i32 %18, 1
  %20 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef nonnull @.str.67, i32 noundef %19)
  br label %21

21:                                               ; preds = %16, %3
  %22 = load ptr, ptr @asm_out_file, align 8, !tbaa !136
  %23 = load ptr, ptr @debug_insn, align 8, !tbaa !136
  %24 = tail call fastcc i32 @get_attr_length_1(ptr noundef %23, ptr noundef nonnull @insn_default_length)
  %25 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str.68, i32 noundef %24)
  store ptr null, ptr @debug_insn, align 8, !tbaa !136
  br label %26

26:                                               ; preds = %21, %0
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoul(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @output_asm_label(ptr nocapture noundef readonly %0) local_unnamed_addr #15 !prof !461 {
  %2 = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %2) #29
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 44
  br i1 %5, label %6, label %9, !prof !435

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !147
  br label %9

9:                                                ; preds = %6, %1
  %10 = phi ptr [ %8, %6 ], [ %0, %1 ]
  %11 = load i32, ptr %10, align 8
  %12 = trunc i32 %11 to i16
  switch i16 %12, label %21 [
    i16 12, label %17
    i16 13, label %13
  ], !prof !436

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 1
  %15 = load i32, ptr %14, align 8, !tbaa !147
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %21

17:                                               ; preds = %9, %13
  %18 = getelementptr inbounds %struct.rtx_def, ptr %10, i64 1, i32 1
  %19 = load i32, ptr %18, align 8, !tbaa !147
  %20 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) @.str.40, ptr noundef nonnull @.str.20, i32 noundef %19)
  br label %22

21:                                               ; preds = %13, %9
  tail call void (ptr, ...) @output_operand_lossage(ptr noundef nonnull @.str.41)
  br label %22

22:                                               ; preds = %21, %17
  %23 = load ptr, ptr @asm_out_file, align 8, !tbaa !136
  call void @assemble_name(ptr noundef %23, ptr noundef nonnull %2) #29
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %2) #29
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @output_address(ptr noundef %0) local_unnamed_addr #15 !prof !462 {
  %2 = alloca ptr, align 8
  %3 = alloca i8, align 1
  store ptr %0, ptr %2, align 8, !tbaa !136
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #29
  store i8 0, ptr %3, align 1, !tbaa !147
  %4 = call fastcc ptr @walk_alter_subreg(ptr noundef nonnull %2, ptr noundef nonnull %3)
  %5 = load ptr, ptr @asm_out_file, align 8, !tbaa !136
  %6 = load ptr, ptr %2, align 8, !tbaa !136
  call void @print_operand_address(ptr noundef %5, ptr noundef %6) #29
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #29
  ret void
}

declare zeroext i8 @constant_address_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @output_addr_const(ptr noundef %0, ptr noundef %1) local_unnamed_addr #15 !prof !463 {
  %3 = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %3) #29
  br label %4

4:                                                ; preds = %96, %2
  %5 = phi ptr [ %1, %2 ], [ %97, %96 ]
  %6 = load i32, ptr %5, align 8
  %7 = trunc i32 %6 to i16
  switch i16 %7, label %126 [
    i16 36, label %8
    i16 45, label %10
    i16 44, label %28
    i16 12, label %31
    i16 30, label %36
    i16 35, label %40
    i16 32, label %43
    i16 31, label %61
    i16 49, label %65
    i16 50, label %96
    i16 99, label %123
    i16 98, label %123
    i16 39, label %123
    i16 100, label %123
  ], !prof !464

8:                                                ; preds = %4
  %9 = tail call i32 @putc(i32 noundef 46, ptr noundef %0)
  br label %130

10:                                               ; preds = %4
  %11 = and i32 %6, 67108864
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %25, !prof !465

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 2
  %15 = load ptr, ptr %14, align 8, !tbaa !147
  %16 = icmp eq ptr %15, null
  br i1 %16, label %25, label %17, !prof !466

17:                                               ; preds = %13
  tail call void @mark_decl_referenced(ptr noundef nonnull %15) #29
  %18 = load i32, ptr %5, align 8
  %19 = and i32 %18, 67108864
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %23, !prof !465

21:                                               ; preds = %17
  %22 = load ptr, ptr %14, align 8, !tbaa !147
  br label %23

23:                                               ; preds = %17, %21
  %24 = phi ptr [ %22, %21 ], [ null, %17 ]
  tail call void @assemble_external(ptr noundef %24) #29
  br label %25

25:                                               ; preds = %10, %23, %13
  %26 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !147
  tail call void @assemble_name(ptr noundef %0, ptr noundef %27) #29
  br label %130

28:                                               ; preds = %4
  %29 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !147
  br label %31

31:                                               ; preds = %4, %28
  %32 = phi ptr [ %30, %28 ], [ %5, %4 ]
  %33 = getelementptr inbounds %struct.rtx_def, ptr %32, i64 1, i32 1
  %34 = load i32, ptr %33, align 8, !tbaa !147
  %35 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.40, ptr noundef nonnull @.str.20, i32 noundef %34)
  call void @assemble_name(ptr noundef %0, ptr noundef nonnull %3) #29
  br label %130

36:                                               ; preds = %4
  %37 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %38 = load i64, ptr %37, align 8, !tbaa !147
  %39 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.38, i64 noundef %38)
  br label %130

40:                                               ; preds = %4
  %41 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !147
  tail call void @output_addr_const(ptr noundef %0, ptr noundef %42)
  br label %130

43:                                               ; preds = %4
  %44 = and i32 %6, 16711680
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %60

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %48 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 1
  %49 = load i64, ptr %48, align 8, !tbaa !147
  %50 = icmp eq i64 %49, 0
  %51 = load i64, ptr %47, align 8, !tbaa !147
  br i1 %50, label %54, label %52

52:                                               ; preds = %46
  %53 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.42, i64 noundef %49, i64 noundef %51)
  br label %130

54:                                               ; preds = %46
  %55 = icmp slt i64 %51, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %54
  %57 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.43, i64 noundef %51)
  br label %130

58:                                               ; preds = %54
  %59 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.38, i64 noundef %51)
  br label %130

60:                                               ; preds = %43
  tail call void (ptr, ...) @output_operand_lossage(ptr noundef nonnull @.str.44)
  br label %130

61:                                               ; preds = %4
  %62 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %63 = load i64, ptr %62, align 8, !tbaa !147
  %64 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.43, i64 noundef %63)
  br label %130

65:                                               ; preds = %4
  %66 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !147
  %68 = load i32, ptr %67, align 8
  %69 = and i32 %68, 65535
  %70 = icmp eq i32 %69, 30
  br i1 %70, label %71, label %82, !prof !467

71:                                               ; preds = %65
  %72 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 1
  %73 = load ptr, ptr %72, align 8, !tbaa !147
  tail call void @output_addr_const(ptr noundef %0, ptr noundef %73)
  %74 = load ptr, ptr %66, align 8, !tbaa !147
  %75 = getelementptr inbounds %struct.rtx_def, ptr %74, i64 0, i32 1
  %76 = load i64, ptr %75, align 8, !tbaa !147
  %77 = icmp sgt i64 %76, -1
  br i1 %77, label %78, label %80

78:                                               ; preds = %71
  %79 = tail call i32 @fputc(i32 43, ptr %0)
  br label %80

80:                                               ; preds = %78, %71
  %81 = load ptr, ptr %66, align 8, !tbaa !147
  tail call void @output_addr_const(ptr noundef %0, ptr noundef %81)
  br label %130

82:                                               ; preds = %65
  tail call void @output_addr_const(ptr noundef %0, ptr noundef nonnull %67)
  %83 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1, i32 0, i32 0, i64 1
  %84 = load ptr, ptr %83, align 8, !tbaa !147
  %85 = load i32, ptr %84, align 8
  %86 = and i32 %85, 65535
  %87 = icmp eq i32 %86, 30
  br i1 %87, label %88, label %92, !prof !468

88:                                               ; preds = %82
  %89 = getelementptr inbounds %struct.rtx_def, ptr %84, i64 0, i32 1
  %90 = load i64, ptr %89, align 8, !tbaa !147
  %91 = icmp sgt i64 %90, -1
  br i1 %91, label %92, label %94, !prof !468

92:                                               ; preds = %88, %82
  %93 = tail call i32 @fputc(i32 43, ptr %0)
  br label %94

94:                                               ; preds = %92, %88
  %95 = load ptr, ptr %83, align 8, !tbaa !147
  tail call void @output_addr_const(ptr noundef %0, ptr noundef %95)
  br label %130

96:                                               ; preds = %4
  %97 = tail call ptr @simplify_subtraction(ptr noundef nonnull %5) #29
  %98 = load i32, ptr %97, align 8
  %99 = and i32 %98, 65535
  %100 = icmp eq i32 %99, 50
  br i1 %100, label %101, label %4

101:                                              ; preds = %96
  %102 = getelementptr inbounds %struct.rtx_def, ptr %97, i64 0, i32 1
  %103 = load ptr, ptr %102, align 8, !tbaa !147
  tail call void @output_addr_const(ptr noundef %0, ptr noundef %103)
  %104 = tail call i32 @fputc(i32 45, ptr %0)
  %105 = getelementptr inbounds %struct.rtx_def, ptr %97, i64 0, i32 1, i32 0, i32 0, i64 1
  %106 = load ptr, ptr %105, align 8, !tbaa !147
  %107 = load i32, ptr %106, align 8
  %108 = and i32 %107, 65535
  %109 = icmp eq i32 %108, 30
  br i1 %109, label %110, label %114

110:                                              ; preds = %101
  %111 = getelementptr inbounds %struct.rtx_def, ptr %106, i64 0, i32 1
  %112 = load i64, ptr %111, align 8, !tbaa !147
  %113 = icmp sgt i64 %112, -1
  br i1 %113, label %116, label %114

114:                                              ; preds = %110, %101
  %115 = trunc i32 %107 to i16
  switch i16 %115, label %117 [
    i16 36, label %116
    i16 45, label %116
  ]

116:                                              ; preds = %114, %114, %110
  tail call void @output_addr_const(ptr noundef %0, ptr noundef nonnull %106)
  br label %130

117:                                              ; preds = %114
  %118 = load ptr, ptr @targetm, align 8, !tbaa !469
  %119 = tail call i32 @fputs(ptr noundef %118, ptr noundef %0)
  %120 = load ptr, ptr %105, align 8, !tbaa !147
  tail call void @output_addr_const(ptr noundef %0, ptr noundef %120)
  %121 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 1), align 8, !tbaa !470
  %122 = tail call i32 @fputs(ptr noundef %121, ptr noundef %0)
  br label %130

123:                                              ; preds = %4, %4, %4, %4
  %124 = getelementptr inbounds %struct.rtx_def, ptr %5, i64 0, i32 1
  %125 = load ptr, ptr %124, align 8, !tbaa !147
  tail call void @output_addr_const(ptr noundef %0, ptr noundef %125)
  br label %130

126:                                              ; preds = %4
  %127 = tail call zeroext i8 @output_addr_const_extra(ptr noundef %0, ptr noundef nonnull %5) #29
  %128 = icmp eq i8 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %126
  tail call void (ptr, ...) @output_operand_lossage(ptr noundef nonnull @.str.47)
  br label %130

130:                                              ; preds = %126, %116, %117, %80, %94, %60, %56, %58, %52, %129, %123, %61, %40, %36, %31, %25, %8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %3) #29
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @output_operand(ptr noundef %0, i32 noundef %1) unnamed_addr #15 !prof !135 !PGOFuncName !471 {
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !136
  %4 = icmp eq ptr %0, null
  br i1 %4, label %11, label %5, !prof !437

5:                                                ; preds = %2
  %6 = load i32, ptr %0, align 8
  %7 = and i32 %6, 65535
  %8 = icmp eq i32 %7, 39
  br i1 %8, label %9, label %11, !prof !438

9:                                                ; preds = %5
  %10 = call ptr @alter_subreg(ptr noundef nonnull %3)
  store ptr %10, ptr %3, align 8, !tbaa !136
  br label %11

11:                                               ; preds = %9, %5, %2
  %12 = load ptr, ptr %3, align 8, !tbaa !136
  %13 = icmp eq ptr %12, null
  br i1 %13, label %23, label %14, !prof !437

14:                                               ; preds = %11
  %15 = load i32, ptr %12, align 8
  %16 = and i32 %15, 65535
  %17 = icmp eq i32 %16, 37
  br i1 %17, label %18, label %23, !prof !439

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.rtx_def, ptr %12, i64 0, i32 1
  %20 = load i32, ptr %19, align 8, !tbaa !147
  %21 = icmp ult i32 %20, 53
  br i1 %21, label %23, label %22, !prof !440

22:                                               ; preds = %18
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 3496, ptr noundef nonnull @.str.12) #29
  br label %23

23:                                               ; preds = %11, %14, %18, %22
  %24 = load ptr, ptr @asm_out_file, align 8, !tbaa !136
  %25 = load ptr, ptr %3, align 8, !tbaa !136
  tail call void @print_operand(ptr noundef %24, ptr noundef %25, i32 noundef %1) #29
  %26 = load ptr, ptr %3, align 8, !tbaa !136
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28, !prof !437

28:                                               ; preds = %23
  %29 = call i32 @for_each_rtx(ptr noundef nonnull %3, ptr noundef nonnull @mark_symbol_ref_as_used, ptr noundef null) #29
  br label %30

30:                                               ; preds = %23, %28
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

declare void @assemble_name(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @mark_symbol_refs_as_used(ptr noundef %0) local_unnamed_addr #21 !prof !135 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !136
  %3 = call i32 @for_each_rtx(ptr noundef nonnull %2, ptr noundef nonnull @mark_symbol_ref_as_used, ptr noundef null) #29
  ret void
}

declare i32 @for_each_rtx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal noundef i32 @mark_symbol_ref_as_used(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #15 !prof !472 !PGOFuncName !473 {
  %3 = load ptr, ptr %0, align 8, !tbaa !136
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 65535
  %6 = icmp eq i32 %5, 45
  br i1 %6, label %7, label %17, !prof !474

7:                                                ; preds = %2
  %8 = and i32 %4, 67108864
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %13, !prof !465

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.rtx_def, ptr %3, i64 0, i32 1, i32 0, i32 0, i64 2
  %12 = load ptr, ptr %11, align 8, !tbaa !147
  br label %13

13:                                               ; preds = %7, %10
  %14 = phi ptr [ %12, %10 ], [ null, %7 ]
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16, !prof !466

16:                                               ; preds = %13
  tail call void @assemble_external(ptr noundef nonnull %14) #29
  br label %17

17:                                               ; preds = %2, %13, %16
  %18 = phi i32 [ -1, %16 ], [ -1, %13 ], [ 0, %2 ]
  ret i32 %18
}

declare void @print_operand_address(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @mark_decl_referenced(ptr noundef) local_unnamed_addr #3

declare ptr @simplify_subtraction(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @output_addr_const_extra(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @asm_fprintf(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ...) local_unnamed_addr #15 !prof !475 {
  %3 = alloca [10 x i8], align 1
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %3) #29
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #29
  call void @llvm.va_start(ptr nonnull %4)
  store i8 37, ptr %3, align 1, !tbaa !147
  %5 = getelementptr inbounds [10 x i8], ptr %3, i64 0, i64 1
  br label %6

6:                                                ; preds = %213, %2
  %7 = phi ptr [ %1, %2 ], [ %214, %213 ]
  %8 = getelementptr inbounds i8, ptr %7, i64 1
  %9 = load i8, ptr %7, align 1, !tbaa !147
  switch i8 %9, label %210 [
    i8 0, label %215
    i8 123, label %10
    i8 124, label %31
    i8 125, label %213
    i8 37, label %38
  ], !prof !476

10:                                               ; preds = %6
  %11 = load i32, ptr @dialect_number, align 4, !tbaa !151
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %213

13:                                               ; preds = %10, %23
  %14 = phi i32 [ %29, %23 ], [ 0, %10 ]
  %15 = phi ptr [ %28, %23 ], [ %8, %10 ]
  br label %16

16:                                               ; preds = %13, %20
  %17 = phi ptr [ %21, %20 ], [ %15, %13 ]
  %18 = load i8, ptr %17, align 1, !tbaa !147
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds i8, ptr %17, i64 1
  %22 = icmp eq i8 %18, 124
  br i1 %22, label %23, label %16, !llvm.loop !477

23:                                               ; preds = %20, %16
  %24 = phi ptr [ %17, %16 ], [ %21, %20 ]
  %25 = load i8, ptr %24, align 1, !tbaa !147
  %26 = icmp eq i8 %25, 124
  %27 = zext i1 %26 to i64
  %28 = getelementptr inbounds i8, ptr %24, i64 %27
  %29 = add nuw nsw i32 %14, 1
  %30 = icmp eq i32 %29, %11
  br i1 %30, label %213, label %13, !llvm.loop !478

31:                                               ; preds = %6, %35
  %32 = phi ptr [ %36, %35 ], [ %8, %6 ]
  %33 = load i8, ptr %32, align 1, !tbaa !147
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %213, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds i8, ptr %32, i64 1
  %37 = icmp eq i8 %33, 125
  br i1 %37, label %213, label %31, !llvm.loop !479

38:                                               ; preds = %6
  %39 = getelementptr inbounds i8, ptr %7, i64 2
  %40 = load i8, ptr %8, align 1, !tbaa !147
  %41 = zext nneg i8 %40 to i64
  %42 = icmp ugt i8 %40, 63
  %43 = shl nuw i64 1, %41
  %44 = and i64 %43, 325494096527361
  %45 = icmp eq i64 %44, 0
  %46 = select i1 %42, i1 true, i1 %45, !prof !480
  br i1 %46, label %47, label %58, !prof !295

47:                                               ; preds = %58, %38
  %48 = phi ptr [ %39, %38 ], [ %63, %58 ]
  %49 = phi ptr [ %5, %38 ], [ %62, %58 ]
  %50 = phi i8 [ %40, %38 ], [ %64, %58 ]
  %51 = zext i8 %50 to i64
  %52 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %51
  %53 = load i16, ptr %52, align 2, !tbaa !430
  %54 = and i16 %53, 4
  %55 = icmp ne i16 %54, 0
  %56 = icmp eq i8 %50, 46
  %57 = or i1 %56, %55
  br i1 %57, label %71, label %85, !prof !420

58:                                               ; preds = %38, %58
  %59 = phi i8 [ %64, %58 ], [ %40, %38 ]
  %60 = phi ptr [ %62, %58 ], [ %5, %38 ]
  %61 = phi ptr [ %63, %58 ], [ %39, %38 ]
  %62 = getelementptr inbounds i8, ptr %60, i64 1
  store i8 %59, ptr %60, align 1, !tbaa !147
  %63 = getelementptr inbounds i8, ptr %61, i64 1
  %64 = load i8, ptr %61, align 1, !tbaa !147
  %65 = zext nneg i8 %64 to i64
  %66 = icmp ugt i8 %64, 63
  %67 = shl nuw i64 1, %65
  %68 = and i64 %67, 325494096527361
  %69 = icmp eq i64 %68, 0
  %70 = select i1 %66, i1 true, i1 %69, !prof !480
  br i1 %70, label %47, label %58, !prof !295, !llvm.loop !481

71:                                               ; preds = %47, %71
  %72 = phi i8 [ %77, %71 ], [ %50, %47 ]
  %73 = phi ptr [ %75, %71 ], [ %49, %47 ]
  %74 = phi ptr [ %76, %71 ], [ %48, %47 ]
  %75 = getelementptr inbounds i8, ptr %73, i64 1
  store i8 %72, ptr %73, align 1, !tbaa !147
  %76 = getelementptr inbounds i8, ptr %74, i64 1
  %77 = load i8, ptr %74, align 1, !tbaa !147
  %78 = zext i8 %77 to i64
  %79 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %78
  %80 = load i16, ptr %79, align 2, !tbaa !430
  %81 = and i16 %80, 4
  %82 = icmp ne i16 %81, 0
  %83 = icmp eq i8 %77, 46
  %84 = or i1 %83, %82
  br i1 %84, label %71, label %85, !prof !420, !llvm.loop !482

85:                                               ; preds = %71, %47
  %86 = phi ptr [ %48, %47 ], [ %76, %71 ]
  %87 = phi ptr [ %49, %47 ], [ %75, %71 ]
  %88 = phi i8 [ %50, %47 ], [ %77, %71 ]
  switch i8 %88, label %209 [
    i8 37, label %89
    i8 100, label %91
    i8 105, label %91
    i8 117, label %91
    i8 120, label %91
    i8 88, label %91
    i8 111, label %91
    i8 99, label %91
    i8 119, label %109
    i8 108, label %130
    i8 115, label %173
    i8 79, label %191
    i8 82, label %213
    i8 73, label %213
    i8 76, label %204
    i8 85, label %206
  ], !prof !483

89:                                               ; preds = %85
  %90 = call i32 @putc(i32 noundef 37, ptr noundef %0)
  br label %213

91:                                               ; preds = %85, %85, %85, %85, %85, %85, %85
  %92 = getelementptr inbounds i8, ptr %87, i64 1
  store i8 %88, ptr %87, align 1, !tbaa !147
  store i8 0, ptr %92, align 1, !tbaa !147
  %93 = load i32, ptr %4, align 16
  %94 = icmp ult i32 %93, 41
  br i1 %94, label %95, label %101

95:                                               ; preds = %91
  %96 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %97 = load ptr, ptr %96, align 16
  %98 = zext nneg i32 %93 to i64
  %99 = getelementptr i8, ptr %97, i64 %98
  %100 = add nuw nsw i32 %93, 8
  store i32 %100, ptr %4, align 16
  br label %105

101:                                              ; preds = %91
  %102 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %103 = load ptr, ptr %102, align 8
  %104 = getelementptr i8, ptr %103, i64 8
  store ptr %104, ptr %102, align 8
  br label %105

105:                                              ; preds = %101, %95
  %106 = phi ptr [ %99, %95 ], [ %103, %101 ]
  %107 = load i32, ptr %106, align 4
  %108 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull %3, i32 noundef %107)
  br label %213

109:                                              ; preds = %85
  store i8 108, ptr %87, align 1
  %110 = getelementptr inbounds i8, ptr %87, i64 1
  %111 = getelementptr inbounds i8, ptr %86, i64 1
  %112 = load i8, ptr %86, align 1, !tbaa !147
  %113 = getelementptr inbounds i8, ptr %87, i64 2
  store i8 %112, ptr %110, align 1, !tbaa !147
  store i8 0, ptr %113, align 1, !tbaa !147
  %114 = load i32, ptr %4, align 16
  %115 = icmp ult i32 %114, 41
  br i1 %115, label %116, label %122

116:                                              ; preds = %109
  %117 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %118 = load ptr, ptr %117, align 16
  %119 = zext nneg i32 %114 to i64
  %120 = getelementptr i8, ptr %118, i64 %119
  %121 = add nuw nsw i32 %114, 8
  store i32 %121, ptr %4, align 16
  br label %126

122:                                              ; preds = %109
  %123 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %124 = load ptr, ptr %123, align 8
  %125 = getelementptr i8, ptr %124, i64 8
  store ptr %125, ptr %123, align 8
  br label %126

126:                                              ; preds = %122, %116
  %127 = phi ptr [ %120, %116 ], [ %124, %122 ]
  %128 = load i64, ptr %127, align 8
  %129 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull %3, i64 noundef %128)
  br label %213

130:                                              ; preds = %85
  %131 = getelementptr inbounds i8, ptr %87, i64 1
  store i8 %88, ptr %87, align 1, !tbaa !147
  %132 = load i8, ptr %86, align 1, !tbaa !147
  %133 = icmp eq i8 %132, 108
  %134 = getelementptr inbounds i8, ptr %86, i64 1
  %135 = getelementptr inbounds i8, ptr %87, i64 2
  store i8 %132, ptr %131, align 1, !tbaa !147
  br i1 %133, label %136, label %156

136:                                              ; preds = %130
  %137 = getelementptr inbounds i8, ptr %86, i64 2
  %138 = load i8, ptr %134, align 1, !tbaa !147
  %139 = getelementptr inbounds i8, ptr %87, i64 3
  store i8 %138, ptr %135, align 1, !tbaa !147
  store i8 0, ptr %139, align 1, !tbaa !147
  %140 = load i32, ptr %4, align 16
  %141 = icmp ult i32 %140, 41
  br i1 %141, label %142, label %148

142:                                              ; preds = %136
  %143 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %144 = load ptr, ptr %143, align 16
  %145 = zext nneg i32 %140 to i64
  %146 = getelementptr i8, ptr %144, i64 %145
  %147 = add nuw nsw i32 %140, 8
  store i32 %147, ptr %4, align 16
  br label %152

148:                                              ; preds = %136
  %149 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %150 = load ptr, ptr %149, align 8
  %151 = getelementptr i8, ptr %150, i64 8
  store ptr %151, ptr %149, align 8
  br label %152

152:                                              ; preds = %148, %142
  %153 = phi ptr [ %146, %142 ], [ %150, %148 ]
  %154 = load i64, ptr %153, align 8
  %155 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull %3, i64 noundef %154)
  br label %213

156:                                              ; preds = %130
  store i8 0, ptr %135, align 1, !tbaa !147
  %157 = load i32, ptr %4, align 16
  %158 = icmp ult i32 %157, 41
  br i1 %158, label %159, label %165

159:                                              ; preds = %156
  %160 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %161 = load ptr, ptr %160, align 16
  %162 = zext nneg i32 %157 to i64
  %163 = getelementptr i8, ptr %161, i64 %162
  %164 = add nuw nsw i32 %157, 8
  store i32 %164, ptr %4, align 16
  br label %169

165:                                              ; preds = %156
  %166 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %167 = load ptr, ptr %166, align 8
  %168 = getelementptr i8, ptr %167, i64 8
  store ptr %168, ptr %166, align 8
  br label %169

169:                                              ; preds = %165, %159
  %170 = phi ptr [ %163, %159 ], [ %167, %165 ]
  %171 = load i64, ptr %170, align 8
  %172 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull %3, i64 noundef %171)
  br label %213

173:                                              ; preds = %85
  %174 = getelementptr inbounds i8, ptr %87, i64 1
  store i8 %88, ptr %87, align 1, !tbaa !147
  store i8 0, ptr %174, align 1, !tbaa !147
  %175 = load i32, ptr %4, align 16
  %176 = icmp ult i32 %175, 41
  br i1 %176, label %177, label %183, !prof !484

177:                                              ; preds = %173
  %178 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %179 = load ptr, ptr %178, align 16
  %180 = zext nneg i32 %175 to i64
  %181 = getelementptr i8, ptr %179, i64 %180
  %182 = add nuw nsw i32 %175, 8
  store i32 %182, ptr %4, align 16
  br label %187

183:                                              ; preds = %173
  %184 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %185 = load ptr, ptr %184, align 8
  %186 = getelementptr i8, ptr %185, i64 8
  store ptr %186, ptr %184, align 8
  br label %187

187:                                              ; preds = %183, %177
  %188 = phi ptr [ %181, %177 ], [ %185, %183 ]
  %189 = load ptr, ptr %188, align 8
  %190 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %189)
  br label %213

191:                                              ; preds = %85
  %192 = load i8, ptr %86, align 1, !tbaa !147
  %193 = icmp eq i8 %192, 37
  br i1 %193, label %194, label %213

194:                                              ; preds = %191
  %195 = getelementptr inbounds i8, ptr %86, i64 1
  %196 = load i8, ptr %195, align 1, !tbaa !147
  %197 = icmp eq i8 %196, 118
  br i1 %197, label %198, label %213

198:                                              ; preds = %194
  %199 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !151
  %200 = and i32 %199, 32
  %201 = icmp eq i32 %200, 0
  %202 = getelementptr inbounds i8, ptr %86, i64 2
  %203 = select i1 %201, ptr %202, ptr %195
  br label %213

204:                                              ; preds = %85
  %205 = call i32 @fputc(i32 46, ptr %0)
  br label %213

206:                                              ; preds = %85
  %207 = load ptr, ptr @user_label_prefix, align 8, !tbaa !136
  %208 = call i32 @fputs(ptr noundef %207, ptr noundef %0)
  br label %213

209:                                              ; preds = %85
  call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 3812, ptr noundef nonnull @.str.12) #29
  br label %213

210:                                              ; preds = %6
  %211 = sext i8 %9 to i32
  %212 = call i32 @putc(i32 noundef %211, ptr noundef %0)
  br label %213

213:                                              ; preds = %35, %31, %23, %10, %85, %6, %198, %89, %105, %126, %187, %85, %204, %206, %209, %169, %152, %194, %191, %210
  %214 = phi ptr [ %8, %210 ], [ %86, %209 ], [ %86, %206 ], [ %86, %204 ], [ %86, %85 ], [ %86, %194 ], [ %86, %191 ], [ %86, %187 ], [ %137, %152 ], [ %134, %169 ], [ %111, %126 ], [ %86, %105 ], [ %86, %89 ], [ %203, %198 ], [ %8, %6 ], [ %86, %85 ], [ %8, %10 ], [ %28, %23 ], [ %32, %31 ], [ %36, %35 ]
  br label %6, !llvm.loop !485

215:                                              ; preds = %6
  call void @llvm.va_end(ptr %4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %3) #29
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @split_double(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #21 !prof !135 {
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
  %10 = load i64, ptr %9, align 8, !tbaa !147
  %11 = and i64 %10, 4294967295
  %12 = and i64 %10, 2147483648
  %13 = icmp eq i64 %12, 0
  %14 = select i1 %13, i64 0, i64 -4294967296
  %15 = or disjoint i64 %14, %11
  %16 = lshr i64 %10, 32
  %17 = or disjoint i64 %16, -4294967296
  %18 = icmp slt i64 %10, 0
  %19 = select i1 %18, i64 %17, i64 %16
  %20 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %15) #29
  store ptr %20, ptr %1, align 8, !tbaa !136
  %21 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %19) #29
  store ptr %21, ptr %2, align 8, !tbaa !136
  br label %61

22:                                               ; preds = %3
  store ptr %0, ptr %1, align 8, !tbaa !136
  %23 = load ptr, ptr getelementptr inbounds ([129 x ptr], ptr @const_int_rtx, i64 0, i64 64), align 16, !tbaa !136
  store ptr %23, ptr %2, align 8, !tbaa !136
  br label %61

24:                                               ; preds = %3
  %25 = lshr i32 %6, 16
  %26 = and i32 %25, 255
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %24
  %29 = zext nneg i32 %26 to i64
  %30 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %29
  %31 = load i8, ptr %30, align 1, !tbaa !147
  %32 = icmp eq i8 %31, 2
  br i1 %32, label %33, label %40

33:                                               ; preds = %28, %24
  %34 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %35 = load i64, ptr %34, align 8, !tbaa !147
  %36 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %35) #29
  store ptr %36, ptr %1, align 8, !tbaa !136
  %37 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %38 = load i64, ptr %37, align 8, !tbaa !147
  %39 = tail call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %38) #29
  store ptr %39, ptr %2, align 8, !tbaa !136
  br label %61

40:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #29
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #29
  %41 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %41, i64 32, i1 false), !tbaa.struct !486
  %42 = tail call i32 @mode_for_size(i32 noundef 64, i32 noundef 8, i32 noundef 0) #29
  %43 = call i64 @real_to_target(ptr noundef nonnull %5, ptr noundef nonnull %4, i32 noundef %42) #29
  %44 = load i64, ptr %5, align 16, !tbaa !301
  %45 = and i64 %44, 2147483648
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %40
  %48 = or i64 %44, -4294967296
  store i64 %48, ptr %5, align 16, !tbaa !301
  br label %49

49:                                               ; preds = %47, %40
  %50 = getelementptr inbounds [2 x i64], ptr %5, i64 0, i64 1
  %51 = load i64, ptr %50, align 8, !tbaa !301
  %52 = and i64 %51, 2147483648
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %49
  %55 = or i64 %51, -4294967296
  store i64 %55, ptr %50, align 8, !tbaa !301
  br label %56

56:                                               ; preds = %54, %49
  %57 = load i64, ptr %5, align 16, !tbaa !301
  %58 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %57) #29
  store ptr %58, ptr %1, align 8, !tbaa !136
  %59 = load i64, ptr %50, align 8, !tbaa !301
  %60 = call ptr @gen_rtx_CONST_INT(i32 noundef 0, i64 noundef %59) #29
  store ptr %60, ptr %2, align 8, !tbaa !136
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #29
  br label %61

61:                                               ; preds = %22, %56, %33, %8
  ret void
}

declare ptr @gen_rtx_CONST_INT(i32 noundef, i64 noundef) local_unnamed_addr #3

declare i64 @real_to_target(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @mode_for_size(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @leaf_function_p() local_unnamed_addr #18 !prof !156 {
  %1 = load i8, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 35), align 1, !tbaa !332
  %2 = icmp ne i8 %1, 0
  %3 = load i32, ptr @profile_arc_flag, align 4
  %4 = icmp ne i32 %3, 0
  %5 = select i1 %2, i1 true, i1 %4, !prof !160
  br i1 %5, label %66, label %6, !prof !160

6:                                                ; preds = %0
  %7 = tail call ptr @get_insns() #29
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %12, !prof !420

9:                                                ; preds = %34, %6
  %10 = load ptr, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 27), align 8, !tbaa !147
  %11 = icmp eq ptr %10, null
  br i1 %11, label %66, label %38

12:                                               ; preds = %6, %34
  %13 = phi ptr [ %36, %34 ], [ %7, %6 ]
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, 16842751
  %16 = icmp eq i32 %15, 10
  br i1 %16, label %66, label %17, !prof !487

17:                                               ; preds = %12
  %18 = and i32 %14, 65535
  %19 = icmp eq i32 %18, 8
  br i1 %19, label %20, label %34, !prof !488

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 1
  %22 = load ptr, ptr %21, align 8, !tbaa !147
  %23 = load i32, ptr %22, align 8
  %24 = and i32 %23, 65535
  %25 = icmp eq i32 %24, 5
  br i1 %25, label %26, label %34, !prof !489

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.rtx_def, ptr %22, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !147
  %29 = getelementptr inbounds %struct.rtvec_def, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !136
  %31 = load i32, ptr %30, align 8
  %32 = and i32 %31, 16842751
  %33 = icmp eq i32 %32, 10
  br i1 %33, label %66, label %34

34:                                               ; preds = %17, %20, %26
  %35 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1, i32 0, i32 0, i64 2
  %36 = load ptr, ptr %35, align 8, !tbaa !147
  %37 = icmp eq ptr %36, null
  br i1 %37, label %9, label %12, !prof !490, !llvm.loop !491

38:                                               ; preds = %9, %62
  %39 = phi ptr [ %64, %62 ], [ %10, %9 ]
  %40 = getelementptr inbounds %struct.rtx_def, ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !147
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
  %50 = load ptr, ptr %49, align 8, !tbaa !147
  %51 = load i32, ptr %50, align 8
  %52 = and i32 %51, 65535
  %53 = icmp eq i32 %52, 5
  br i1 %53, label %54, label %62

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.rtx_def, ptr %50, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !147
  %57 = getelementptr inbounds %struct.rtvec_def, ptr %56, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !136
  %59 = load i32, ptr %58, align 8
  %60 = and i32 %59, 16842751
  %61 = icmp eq i32 %60, 10
  br i1 %61, label %66, label %62

62:                                               ; preds = %45, %48, %54
  %63 = getelementptr inbounds %struct.rtx_def, ptr %39, i64 0, i32 1, i32 0, i32 0, i64 1
  %64 = load ptr, ptr %63, align 8, !tbaa !147
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %38, !llvm.loop !492

66:                                               ; preds = %26, %12, %38, %54, %62, %9, %0
  %67 = phi i32 [ 0, %0 ], [ 1, %9 ], [ 1, %62 ], [ 0, %54 ], [ 0, %38 ], [ 0, %12 ], [ 0, %26 ]
  ret i32 %67
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @final_forward_branch_p(ptr nocapture noundef readonly %0) local_unnamed_addr #21 !prof !135 {
  %2 = load ptr, ptr @uid_shuid, align 8, !tbaa !136
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 4014, ptr noundef nonnull @.str.12) #29
  br label %5

5:                                                ; preds = %1, %4
  %6 = load ptr, ptr @uid_shuid, align 8, !tbaa !136
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !147
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i32, ptr %6, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !151
  %12 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 1, i32 1, i32 0, i32 0, i64 2
  %13 = load ptr, ptr %12, align 8, !tbaa !147
  %14 = getelementptr inbounds %struct.rtx_def, ptr %13, i64 0, i32 1
  %15 = load i32, ptr %14, align 8, !tbaa !147
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, ptr %6, i64 %16
  %18 = load i32, ptr %17, align 4, !tbaa !151
  %19 = icmp ne i32 %11, 0
  %20 = icmp ne i32 %18, 0
  %21 = select i1 %19, i1 %20, i1 false
  br i1 %21, label %23, label %22

22:                                               ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 4018, ptr noundef nonnull @.str.12) #29
  br label %23

23:                                               ; preds = %5, %22
  %24 = icmp slt i32 %11, %18
  %25 = zext i1 %24 to i32
  ret i32 %25
}

; Function Attrs: cold nounwind uwtable
define dso_local void @debug_flush_symbol_queue() local_unnamed_addr #21 !prof !135 {
  %1 = load i32, ptr @debug_nesting, align 4, !tbaa !151
  %2 = add nsw i32 %1, 1
  store i32 %2, ptr @debug_nesting, align 4, !tbaa !151
  %3 = load i32, ptr @symbol_queue_index, align 4, !tbaa !151
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %37

5:                                                ; preds = %0, %5
  %6 = phi i64 [ %33, %5 ], [ 0, %0 ]
  %7 = load ptr, ptr @symbol_queue, align 8, !tbaa !136
  %8 = getelementptr inbounds ptr, ptr %7, i64 %6
  %9 = load ptr, ptr %8, align 8, !tbaa !136
  %10 = load i64, ptr %9, align 8
  %11 = and i64 %10, 16777216
  %12 = getelementptr inbounds %struct.tree_decl_common, ptr %9, i64 0, i32 2
  %13 = load i64, ptr %12, align 8
  %14 = and i64 %13, 33554432
  %15 = or i64 %10, 16777216
  store i64 %15, ptr %9, align 8
  %16 = load ptr, ptr %8, align 8, !tbaa !136
  %17 = getelementptr inbounds %struct.tree_decl_common, ptr %16, i64 0, i32 2
  %18 = load i64, ptr %17, align 8
  %19 = and i64 %18, -33554433
  store i64 %19, ptr %17, align 8
  %20 = load ptr, ptr %8, align 8, !tbaa !136
  %21 = tail call i32 @dbxout_symbol(ptr noundef %20, i32 noundef 0) #29
  %22 = load ptr, ptr @symbol_queue, align 8, !tbaa !136
  %23 = getelementptr inbounds ptr, ptr %22, i64 %6
  %24 = load ptr, ptr %23, align 8, !tbaa !136
  %25 = load i64, ptr %24, align 8
  %26 = and i64 %25, -16777217
  %27 = or disjoint i64 %26, %11
  store i64 %27, ptr %24, align 8
  %28 = load ptr, ptr %23, align 8, !tbaa !136
  %29 = getelementptr inbounds %struct.tree_decl_common, ptr %28, i64 0, i32 2
  %30 = load i64, ptr %29, align 8
  %31 = and i64 %30, -33554433
  %32 = or disjoint i64 %31, %14
  store i64 %32, ptr %29, align 8
  %33 = add nuw nsw i64 %6, 1
  %34 = load i32, ptr @symbol_queue_index, align 4, !tbaa !151
  %35 = sext i32 %34 to i64
  %36 = icmp slt i64 %33, %35
  br i1 %36, label %5, label %37, !llvm.loop !493

37:                                               ; preds = %5, %0
  store i32 0, ptr @symbol_queue_index, align 4, !tbaa !151
  %38 = load i32, ptr @debug_nesting, align 4, !tbaa !151
  %39 = add nsw i32 %38, -1
  store i32 %39, ptr @debug_nesting, align 4, !tbaa !151
  ret void
}

declare i32 @dbxout_symbol(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @debug_queue_symbol(ptr noundef %0) local_unnamed_addr #21 !prof !135 {
  %2 = load i32, ptr @symbol_queue_index, align 4, !tbaa !151
  %3 = load i32, ptr @symbol_queue_size, align 4, !tbaa !151
  %4 = icmp slt i32 %2, %3
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = add nsw i32 %3, 10
  store i32 %6, ptr @symbol_queue_size, align 4, !tbaa !151
  %7 = load ptr, ptr @symbol_queue, align 8, !tbaa !136
  %8 = sext i32 %6 to i64
  %9 = shl nsw i64 %8, 3
  %10 = tail call ptr @xrealloc(ptr noundef %7, i64 noundef %9) #29
  store ptr %10, ptr @symbol_queue, align 8, !tbaa !136
  br label %11

11:                                               ; preds = %5, %1
  %12 = load ptr, ptr @symbol_queue, align 8, !tbaa !136
  %13 = load i32, ptr @symbol_queue_index, align 4, !tbaa !151
  %14 = add nsw i32 %13, 1
  store i32 %14, ptr @symbol_queue_index, align 4, !tbaa !151
  %15 = sext i32 %13 to i64
  %16 = getelementptr inbounds ptr, ptr %12, i64 %15
  store ptr %0, ptr %16, align 8, !tbaa !136
  ret void
}

; Function Attrs: cold mustprogress nounwind willreturn uwtable
define dso_local void @debug_free_queue() local_unnamed_addr #25 !prof !135 {
  %1 = load ptr, ptr @symbol_queue, align 8, !tbaa !136
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @free(ptr noundef %1)
  store ptr null, ptr @symbol_queue, align 8, !tbaa !136
  store i32 0, ptr @symbol_queue_size, align 4, !tbaa !151
  br label %4

4:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @rest_of_handle_final() #18 !prof !156 !PGOFuncName !494 {
  %1 = alloca i32, align 4
  %2 = load ptr, ptr @current_function_decl, align 8, !tbaa !136
  %3 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !147
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %10, !prof !495

6:                                                ; preds = %0
  tail call void @make_decl_rtl(ptr noundef %2) #29
  %7 = load ptr, ptr @current_function_decl, align 8, !tbaa !136
  %8 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !147
  br label %10

10:                                               ; preds = %0, %6
  %11 = phi ptr [ %9, %6 ], [ %4, %0 ]
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, 65535
  %14 = icmp eq i32 %13, 43
  br i1 %14, label %16, label %15, !prof !191

15:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 4250, ptr noundef nonnull @.str.12) #29
  br label %16

16:                                               ; preds = %10, %15
  %17 = getelementptr inbounds %struct.rtx_def, ptr %11, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !147
  %19 = load i32, ptr %18, align 8
  %20 = and i32 %19, 65535
  %21 = icmp eq i32 %20, 45
  br i1 %21, label %23, label %22, !prof !191

22:                                               ; preds = %16
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 4252, ptr noundef nonnull @.str.12) #29
  br label %23

23:                                               ; preds = %16, %22
  %24 = getelementptr inbounds %struct.rtx_def, ptr %18, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !147
  %26 = load ptr, ptr @current_function_decl, align 8, !tbaa !136
  tail call void @assemble_start_function(ptr noundef %26, ptr noundef %25) #29
  %27 = tail call ptr @get_insns() #29
  %28 = load ptr, ptr @asm_out_file, align 8, !tbaa !136
  tail call void @final_start_function(ptr poison, ptr noundef %28, i32 poison)
  %29 = tail call ptr @get_insns() #29
  %30 = load ptr, ptr @asm_out_file, align 8, !tbaa !136
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #29
  store i32 0, ptr %1, align 4, !tbaa !151
  tail call void @init_recog() #29
  %31 = icmp eq ptr %29, null
  br i1 %31, label %58, label %32, !prof !199

32:                                               ; preds = %23, %54
  %33 = phi ptr [ %56, %54 ], [ %29, %23 ]
  %34 = getelementptr inbounds %struct.rtx_def, ptr %33, i64 0, i32 1
  %35 = load i32, ptr %34, align 8, !tbaa !147
  %36 = load ptr, ptr @insn_addresses_, align 8
  %37 = icmp eq ptr %36, null
  br i1 %37, label %40, label %38, !prof !261

38:                                               ; preds = %32
  %39 = load i32, ptr %36, align 4, !tbaa !250
  br label %40

40:                                               ; preds = %38, %32
  %41 = phi i32 [ %39, %38 ], [ 0, %32 ]
  %42 = icmp ult i32 %35, %41
  br i1 %42, label %48, label %43, !prof !320

43:                                               ; preds = %40
  %44 = load i32, ptr %33, align 8
  %45 = and i32 %44, 65535
  %46 = icmp eq i32 %45, 13
  br i1 %46, label %54, label %47

47:                                               ; preds = %43
  call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 1715, ptr noundef nonnull @.str.12) #29
  br label %54

48:                                               ; preds = %40
  %49 = getelementptr inbounds %struct.VEC_int_base, ptr %36, i64 0, i32 2
  %50 = select i1 %37, ptr null, ptr %49, !prof !261
  %51 = sext i32 %35 to i64
  %52 = getelementptr inbounds i32, ptr %50, i64 %51
  %53 = load i32, ptr %52, align 4, !tbaa !151
  br label %54

54:                                               ; preds = %48, %47, %43
  %55 = phi i32 [ %53, %48 ], [ -1, %43 ], [ -1, %47 ]
  store i32 %55, ptr @insn_current_address, align 4, !tbaa !151
  %56 = call ptr @final_scan_insn(ptr noundef nonnull %33, ptr noundef %30, i32 poison, i32 poison, ptr noundef nonnull %1)
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %32, !prof !248, !llvm.loop !321

58:                                               ; preds = %54, %23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #29
  call void @final_end_function()
  %59 = load ptr, ptr @current_function_decl, align 8, !tbaa !136
  call void @assemble_end_function(ptr noundef %59, ptr noundef %25) #29
  call void @output_function_exception_table(ptr noundef %25) #29
  store i8 0, ptr @user_defined_section_attribute, align 1, !tbaa !147
  call void @free_reg_info() #29
  %60 = load i32, ptr @quiet_flag, align 4, !tbaa !151
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %65, !prof !160

62:                                               ; preds = %58
  %63 = load ptr, ptr @asm_out_file, align 8, !tbaa !136
  %64 = call i32 @fflush(ptr noundef %63)
  br label %65

65:                                               ; preds = %58, %62
  %66 = load i8, ptr @timevar_enable, align 1, !tbaa !147
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %69, label %68, !prof !191

68:                                               ; preds = %65
  call void @timevar_push_1(i32 noundef 166) #29
  br label %69

69:                                               ; preds = %68, %65
  %70 = load ptr, ptr @current_function_decl, align 8, !tbaa !136
  %71 = getelementptr inbounds %struct.tree_decl_common, ptr %70, i64 0, i32 2
  %72 = load i64, ptr %71, align 8
  %73 = and i64 %72, 1024
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %79, !prof !191

75:                                               ; preds = %69
  %76 = load ptr, ptr @debug_hooks, align 8, !tbaa !136
  %77 = getelementptr inbounds %struct.gcc_debug_hooks, ptr %76, i64 0, i32 16
  %78 = load ptr, ptr %77, align 8, !tbaa !496
  call void %78(ptr noundef %70) #29, !prof !497
  br label %79

79:                                               ; preds = %69, %75
  %80 = load i8, ptr @timevar_enable, align 1, !tbaa !147
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %83, label %82, !prof !191

82:                                               ; preds = %79
  call void @timevar_pop_1(i32 noundef 166) #29
  br label %83

83:                                               ; preds = %82, %79
  %84 = load ptr, ptr @global_trees, align 16, !tbaa !136
  %85 = load ptr, ptr @current_function_decl, align 8, !tbaa !136
  %86 = getelementptr inbounds %struct.tree_decl_common, ptr %85, i64 0, i32 5
  store ptr %84, ptr %86, align 8, !tbaa !147
  %87 = getelementptr inbounds %struct.tree_function_decl, ptr %85, i64 0, i32 5
  %88 = load i32, ptr %87, align 8
  %89 = and i32 %88, 8192
  %90 = icmp ne i32 %89, 0
  %91 = load i8, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 112), align 1
  %92 = icmp ne i8 %91, 0
  %93 = select i1 %90, i1 %92, i1 false, !prof !160
  br i1 %93, label %94, label %110, !prof !160

94:                                               ; preds = %83
  %95 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 25), align 8, !tbaa !498
  %96 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %85, i64 0, i32 1
  %97 = load ptr, ptr %96, align 8, !tbaa !147
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %103

99:                                               ; preds = %94
  call void @make_decl_rtl(ptr noundef %85) #29
  %100 = load ptr, ptr @current_function_decl, align 8, !tbaa !136
  %101 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %100, i64 0, i32 1
  %102 = load ptr, ptr %101, align 8, !tbaa !147
  br label %103

103:                                              ; preds = %94, %99
  %104 = phi ptr [ %102, %99 ], [ %97, %94 ]
  %105 = getelementptr inbounds %struct.rtx_def, ptr %104, i64 0, i32 1
  %106 = load ptr, ptr %105, align 8, !tbaa !147
  %107 = load ptr, ptr @current_function_decl, align 8, !tbaa !136
  %108 = call zeroext i16 @decl_init_priority_lookup(ptr noundef %107) #29
  %109 = zext i16 %108 to i32
  call void %95(ptr noundef %106, i32 noundef %109) #29
  br label %110

110:                                              ; preds = %103, %83
  %111 = load ptr, ptr @current_function_decl, align 8, !tbaa !136
  %112 = getelementptr inbounds %struct.tree_function_decl, ptr %111, i64 0, i32 5
  %113 = load i32, ptr %112, align 8
  %114 = and i32 %113, 16384
  %115 = icmp ne i32 %114, 0
  %116 = load i8, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 112), align 1
  %117 = icmp ne i8 %116, 0
  %118 = select i1 %115, i1 %117, i1 false, !prof !160
  br i1 %118, label %119, label %135, !prof !160

119:                                              ; preds = %110
  %120 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 0, i32 26), align 8, !tbaa !499
  %121 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %111, i64 0, i32 1
  %122 = load ptr, ptr %121, align 8, !tbaa !147
  %123 = icmp eq ptr %122, null
  br i1 %123, label %124, label %128

124:                                              ; preds = %119
  call void @make_decl_rtl(ptr noundef %111) #29
  %125 = load ptr, ptr @current_function_decl, align 8, !tbaa !136
  %126 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %125, i64 0, i32 1
  %127 = load ptr, ptr %126, align 8, !tbaa !147
  br label %128

128:                                              ; preds = %119, %124
  %129 = phi ptr [ %127, %124 ], [ %122, %119 ]
  %130 = getelementptr inbounds %struct.rtx_def, ptr %129, i64 0, i32 1
  %131 = load ptr, ptr %130, align 8, !tbaa !147
  %132 = load ptr, ptr @current_function_decl, align 8, !tbaa !136
  %133 = call zeroext i16 @decl_fini_priority_lookup(ptr noundef %132) #29
  %134 = zext i16 %133 to i32
  call void %120(ptr noundef %131, i32 noundef %134) #29
  br label %135

135:                                              ; preds = %128, %110
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @rest_of_handle_shorten_branches() #18 !prof !156 !PGOFuncName !500 {
  %1 = tail call ptr @get_insns() #29
  tail call void @shorten_branches(ptr noundef %1)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @rest_of_clean_state() #18 !prof !156 !PGOFuncName !501 {
  %1 = load i32, ptr @flag_dump_unnumbered, align 4, !tbaa !151
  %2 = load i32, ptr @flag_dump_noaddr, align 4, !tbaa !151
  %3 = load ptr, ptr @flag_dump_final_insns, align 8, !tbaa !136
  %4 = icmp eq ptr %3, null
  br i1 %4, label %53, label %5, !prof !191

5:                                                ; preds = %0
  %6 = tail call ptr @fopen_unlocked(ptr noundef nonnull %3, ptr noundef nonnull @.str.69) #29
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %13

8:                                                ; preds = %5
  %9 = load ptr, ptr @flag_dump_final_insns, align 8, !tbaa !136
  %10 = tail call ptr @__errno_location() #29
  %11 = load i32, ptr %10, align 4, !tbaa !151
  %12 = tail call ptr @strerror(i32 noundef %11) #29
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.70, ptr noundef %9, ptr noundef %12) #29
  store ptr null, ptr @flag_dump_final_insns, align 8, !tbaa !136
  br label %53

13:                                               ; preds = %5
  %14 = load ptr, ptr @current_function_decl, align 8, !tbaa !136
  %15 = tail call ptr @decl_assembler_name(ptr noundef %14) #29
  %16 = getelementptr inbounds %struct.tree_identifier, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !147
  %18 = load ptr, ptr @cfun, align 8, !tbaa !136
  %19 = getelementptr inbounds %struct.function, ptr %18, i64 0, i32 20
  %20 = load i32, ptr %19, align 8
  %21 = lshr i32 %20, 16
  %22 = and i32 %21, 3
  %23 = icmp eq i32 %22, 2
  %24 = icmp eq i32 %22, 0
  %25 = select i1 %24, ptr @.str.73, ptr @.str.15
  %26 = select i1 %23, ptr @.str.72, ptr %25
  %27 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %6, ptr noundef nonnull @.str.71, ptr noundef %17, ptr noundef nonnull %26)
  store i32 1, ptr @flag_dump_unnumbered, align 4, !tbaa !151
  store i32 1, ptr @flag_dump_noaddr, align 4, !tbaa !151
  %28 = load ptr, ptr @flag_compare_debug_opt, align 8, !tbaa !136
  %29 = icmp ne ptr %28, null
  %30 = load i32, ptr @flag_compare_debug, align 4
  %31 = icmp ne i32 %30, 0
  %32 = select i1 %29, i1 true, i1 %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %13
  %34 = load i32, ptr @dump_flags, align 4, !tbaa !151
  %35 = or i32 %34, 1048576
  store i32 %35, ptr @dump_flags, align 4, !tbaa !151
  br label %36

36:                                               ; preds = %13, %33
  store i8 1, ptr @final_insns_dump_p, align 1, !tbaa !147
  %37 = tail call ptr @get_insns() #29
  %38 = icmp eq ptr %37, null
  br i1 %38, label %53, label %39

39:                                               ; preds = %36, %48
  %40 = phi ptr [ %51, %48 ], [ %37, %36 ]
  %41 = load i32, ptr %40, align 8
  %42 = and i32 %41, 65535
  %43 = icmp eq i32 %42, 12
  %44 = getelementptr inbounds %struct.rtx_def, ptr %40, i64 0, i32 1
  br i1 %43, label %45, label %48

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.rtx_def, ptr %40, i64 1, i32 1
  %47 = load i32, ptr %46, align 8, !tbaa !147
  br label %48

48:                                               ; preds = %39, %45
  %49 = phi i32 [ %47, %45 ], [ 0, %39 ]
  store i32 %49, ptr %44, align 8, !tbaa !147
  %50 = getelementptr inbounds %struct.rtx_def, ptr %40, i64 0, i32 1, i32 0, i32 0, i64 2
  %51 = load ptr, ptr %50, align 8, !tbaa !147
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %39, !llvm.loop !502

53:                                               ; preds = %48, %36, %8, %0
  %54 = phi ptr [ null, %8 ], [ null, %0 ], [ %6, %36 ], [ %6, %48 ]
  %55 = tail call ptr @get_insns() #29
  %56 = icmp eq ptr %55, null
  br i1 %56, label %75, label %57, !prof !199

57:                                               ; preds = %53
  %58 = icmp eq ptr %54, null
  br label %59

59:                                               ; preds = %57, %73
  %60 = phi ptr [ %55, %57 ], [ %62, %73 ]
  %61 = getelementptr inbounds %struct.rtx_def, ptr %60, i64 0, i32 1, i32 0, i32 0, i64 2
  %62 = load ptr, ptr %61, align 8, !tbaa !147
  %63 = getelementptr inbounds %struct.rtx_def, ptr %60, i64 0, i32 1, i32 0, i32 0, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %63, i8 0, i64 16, i1 false)
  br i1 %58, label %73, label %64, !prof !320

64:                                               ; preds = %59
  %65 = load i32, ptr %60, align 8
  %66 = and i32 %65, 65535
  %67 = icmp eq i32 %66, 13
  br i1 %67, label %68, label %71

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.rtx_def, ptr %60, i64 1
  %70 = load i32, ptr %69, align 8, !tbaa !147
  switch i32 %70, label %71 [
    i32 9, label %73
    i32 2, label %73
    i32 3, label %73
    i32 12, label %73
  ]

71:                                               ; preds = %68, %64
  %72 = tail call i32 @print_rtl_single(ptr noundef nonnull %54, ptr noundef nonnull %60) #29
  br label %73

73:                                               ; preds = %68, %68, %68, %68, %59, %71
  %74 = icmp eq ptr %62, null
  br i1 %74, label %75, label %59, !prof !248, !llvm.loop !503

75:                                               ; preds = %73, %53
  %76 = icmp eq ptr %54, null
  br i1 %76, label %85, label %77, !prof !191

77:                                               ; preds = %75
  store i32 %2, ptr @flag_dump_noaddr, align 4, !tbaa !151
  store i32 %1, ptr @flag_dump_unnumbered, align 4, !tbaa !151
  store i8 0, ptr @final_insns_dump_p, align 1, !tbaa !147
  %78 = tail call i32 @fclose(ptr noundef nonnull %54)
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %85, label %80

80:                                               ; preds = %77
  %81 = load ptr, ptr @flag_dump_final_insns, align 8, !tbaa !136
  %82 = tail call ptr @__errno_location() #29
  %83 = load i32, ptr %82, align 4, !tbaa !151
  %84 = tail call ptr @strerror(i32 noundef %83) #29
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.74, ptr noundef %81, ptr noundef %84) #29
  store ptr null, ptr @flag_dump_final_insns, align 8, !tbaa !136
  br label %85

85:                                               ; preds = %77, %80, %75
  store i32 0, ptr @flag_rerun_cse_after_global_opts, align 4, !tbaa !151
  store i32 0, ptr @reload_completed, align 4, !tbaa !151
  store i32 0, ptr @epilogue_completed, align 4, !tbaa !151
  store i32 0, ptr @regstack_completed, align 4, !tbaa !151
  %86 = load ptr, ptr @uid_shuid, align 8, !tbaa !136
  %87 = icmp eq ptr %86, null
  br i1 %87, label %89, label %88, !prof !160

88:                                               ; preds = %85
  tail call void @free(ptr noundef %86)
  store ptr null, ptr @uid_shuid, align 8, !tbaa !136
  br label %89

89:                                               ; preds = %88, %85
  %90 = load ptr, ptr @insn_lengths, align 8, !tbaa !136
  %91 = icmp eq ptr %90, null
  br i1 %91, label %93, label %92, !prof !160

92:                                               ; preds = %89
  tail call void @free(ptr noundef %90)
  store ptr null, ptr @insn_lengths, align 8, !tbaa !136
  store i32 0, ptr @insn_lengths_max_uid, align 4, !tbaa !151
  br label %93

93:                                               ; preds = %92, %89
  %94 = load ptr, ptr @insn_addresses_, align 8, !tbaa !136
  %95 = icmp eq ptr %94, null
  br i1 %95, label %97, label %96, !prof !160

96:                                               ; preds = %93
  tail call void @free(ptr noundef %94)
  br label %97

97:                                               ; preds = %96, %93
  store ptr null, ptr @insn_addresses_, align 8, !tbaa !136
  %98 = load ptr, ptr @uid_align, align 8, !tbaa !136
  %99 = icmp eq ptr %98, null
  br i1 %99, label %101, label %100, !prof !160

100:                                              ; preds = %97
  tail call void @free(ptr noundef %98)
  store ptr null, ptr @uid_align, align 8, !tbaa !136
  br label %101

101:                                              ; preds = %97, %100
  tail call void @init_temp_slots() #29
  %102 = tail call i32 @free_bb_for_insn() #29
  tail call void @delete_tree_ssa() #29
  %103 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 49), align 8, !tbaa !504
  %104 = load ptr, ptr @current_function_decl, align 8, !tbaa !136
  %105 = tail call zeroext i8 %103(ptr noundef %104) #29, !prof !505
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %113, label %107, !prof !160

107:                                              ; preds = %101
  %108 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 23), align 8, !tbaa !506
  %109 = load i32, ptr getelementptr inbounds (%struct.rtl_data, ptr @x_rtl, i64 0, i32 22), align 4, !tbaa !507
  %110 = tail call i32 @llvm.umax.i32(i32 %109, i32 %108)
  %111 = load ptr, ptr @current_function_decl, align 8, !tbaa !136
  %112 = tail call ptr @cgraph_rtl_info(ptr noundef %111) #29
  store i32 %110, ptr %112, align 4, !tbaa !508
  br label %113

113:                                              ; preds = %107, %101
  tail call void @init_recog_no_volatile() #29
  %114 = load ptr, ptr @cfun, align 8, !tbaa !136
  tail call void @free_after_parsing(ptr noundef %114) #29
  %115 = load ptr, ptr @cfun, align 8, !tbaa !136
  tail call void @free_after_compilation(ptr noundef %115) #29
  ret i32 0
}

declare i32 @exact_log2(i64 noundef) local_unnamed_addr #3

declare ptr @vec_heap_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @x86_function_profiler(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

declare i32 @recog(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @insn_file(ptr noundef) local_unnamed_addr #3

declare i32 @insn_line(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_mem_expr_from_op(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #26 !prof !135 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #29
  store i32 0, ptr %1, align 4, !tbaa !151
  %4 = load i32, ptr %0, align 8
  %5 = trunc i32 %4 to i16
  switch i16 %5, label %52 [
    i16 37, label %6
    i16 43, label %12
  ]

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 2
  %8 = load ptr, ptr %7, align 8, !tbaa !147
  %9 = icmp eq ptr %8, null
  br i1 %9, label %52, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !510
  br label %52

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1
  %14 = getelementptr inbounds %struct.rtx_def, ptr %0, i64 0, i32 1, i32 0, i32 0, i64 1
  %15 = load ptr, ptr %14, align 8, !tbaa !147
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %12
  %18 = load ptr, ptr %15, align 8, !tbaa !512
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %52

20:                                               ; preds = %17, %12
  store i32 1, ptr %1, align 4, !tbaa !151
  %21 = load ptr, ptr %13, align 8, !tbaa !147
  %22 = call fastcc ptr @get_mem_expr_from_op(ptr noundef %21, ptr noundef nonnull %3)
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
  %33 = load ptr, ptr %32, align 8, !tbaa !147
  %34 = call fastcc ptr @get_mem_expr_from_op(ptr noundef %33, ptr noundef nonnull %3)
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
  %43 = load i32, ptr %42, align 4, !tbaa !151
  switch i32 %43, label %47 [
    i32 4, label %44
    i32 2, label %44
  ]

44:                                               ; preds = %37, %37
  %45 = getelementptr inbounds %struct.rtx_def, ptr %38, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !147
  br label %37, !llvm.loop !514

47:                                               ; preds = %37
  %48 = call fastcc ptr @get_mem_expr_from_op(ptr noundef nonnull %38, ptr noundef nonnull %3)
  %49 = load i32, ptr %3, align 4, !tbaa !151
  %50 = icmp eq i32 %49, 0
  %51 = select i1 %50, ptr %48, ptr null
  br label %52

52:                                               ; preds = %17, %31, %20, %2, %10, %6, %47
  %53 = phi ptr [ %51, %47 ], [ %11, %10 ], [ null, %6 ], [ null, %2 ], [ %22, %20 ], [ %34, %31 ], [ %18, %17 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #29
  ret ptr %53
}

declare void @print_mem_expr(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @print_operand(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @make_decl_rtl(ptr noundef) local_unnamed_addr #3

declare void @assemble_start_function(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @assemble_end_function(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @output_function_exception_table(ptr noundef) local_unnamed_addr #3

declare void @free_reg_info() local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #1

declare void @timevar_push_1(i32 noundef) local_unnamed_addr #3

declare void @timevar_pop_1(i32 noundef) local_unnamed_addr #3

declare zeroext i16 @decl_init_priority_lookup(ptr noundef) local_unnamed_addr #3

declare zeroext i16 @decl_fini_priority_lookup(ptr noundef) local_unnamed_addr #3

declare ptr @fopen_unlocked(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @strerror(i32 noundef) local_unnamed_addr #3

declare ptr @__errno_location() local_unnamed_addr #3

declare ptr @decl_assembler_name(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #1

declare void @init_temp_slots() local_unnamed_addr #3

declare i32 @free_bb_for_insn() local_unnamed_addr #3

declare void @delete_tree_ssa() local_unnamed_addr #3

declare ptr @cgraph_rtl_info(ptr noundef) local_unnamed_addr #3

declare void @init_recog_no_volatile() local_unnamed_addr #3

declare void @free_after_parsing(ptr noundef) local_unnamed_addr #3

declare void @free_after_compilation(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #27

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #28

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #28

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #28

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { inlinehint nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #20 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #21 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #25 = { cold mustprogress nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { cold nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nofree nounwind }
attributes #28 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #29 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!134}

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
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133}
!35 = !{ptr @get_attr_length, ptr @get_attr_length_1, i64 1067331}
!36 = !{ptr @get_attr_length_1, ptr @insn_min_length, i64 324077}
!37 = !{ptr @get_attr_length_1, ptr @insn_default_length, i64 1067331}
!38 = !{ptr @get_attr_length_1, ptr @asm_noperands, i64 923744}
!39 = !{ptr @get_attr_min_length, ptr @get_attr_length_1, i64 354693}
!40 = !{ptr @compute_alignments, ptr @free, i64 37}
!41 = !{ptr @compute_alignments, ptr @max_label_num, i64 38}
!42 = !{ptr @compute_alignments, ptr @get_first_label_num, i64 38}
!43 = !{ptr @compute_alignments, ptr @xcalloc, i64 38}
!44 = !{ptr @compute_alignments, ptr @optimize_function_for_size_p, i64 38}
!45 = !{ptr @compute_alignments, ptr @optimize_bb_for_size_p, i64 85114}
!46 = !{ptr @compute_alignments, ptr @optimize_bb_for_speed_p, i64 14556}
!47 = !{ptr @shorten_branches, ptr @get_max_uid, i64 38}
!48 = !{ptr @shorten_branches, ptr @free, i64 76}
!49 = !{ptr @shorten_branches, ptr @xmalloc, i64 76}
!50 = !{ptr @shorten_branches, ptr @max_label_num, i64 38}
!51 = !{ptr @shorten_branches, ptr @get_insns, i64 38}
!52 = !{ptr @shorten_branches, ptr @next_nonnote_insn, i64 83456}
!53 = !{ptr @shorten_branches, ptr @vec_heap_o_reserve_exact, i64 38}
!54 = !{ptr @shorten_branches, ptr @xcalloc, i64 76}
!55 = !{ptr @shorten_branches, ptr @get_last_insn, i64 38}
!56 = !{ptr @shorten_branches, ptr @asm_noperands, i64 616262}
!57 = !{ptr @shorten_branches, ptr @insn_default_length, i64 616195}
!58 = !{ptr @shorten_branches, ptr @insn_variable_length_p, i64 616195}
!59 = !{ptr @shorten_branches, ptr @insn_current_length, i64 557102}
!60 = !{ptr @final_start_function, ptr @locator_file, i64 38}
!61 = !{ptr @final_start_function, ptr @locator_line, i64 38}
!62 = !{ptr @final_start_function, ptr @dwarf2out_begin_prologue, i64 38}
!63 = !{ptr @final_start_function, ptr @dwarf2out_do_frame, i64 38}
!64 = !{ptr @final_start_function, ptr @get_frame_size, i64 38}
!65 = !{ptr @final_start_function, ptr @default_function_pro_epilogue, i64 38}
!66 = !{ptr @final_end_function, ptr @get_frame_size, i64 38}
!67 = !{ptr @final_end_function, ptr @dwarf2out_do_frame, i64 38}
!68 = !{ptr @final_scan_insn, ptr @no_asm_to_stream, i64 107}
!69 = !{ptr @final_scan_insn, ptr @dwarf2out_do_frame, i64 723670}
!70 = !{ptr @final_scan_insn, ptr @fprintf, i64 2183}
!71 = !{ptr @final_scan_insn, ptr @fwrite, i64 2137}
!72 = !{ptr @final_scan_insn, ptr @next_nonnote_insn, i64 83456}
!73 = !{ptr @final_scan_insn, ptr @switch_to_section, i64 69}
!74 = !{ptr @final_scan_insn, ptr @exact_log2, i64 23}
!75 = !{ptr @final_scan_insn, ptr @ix86_output_addr_vec_elt, i64 40501}
!76 = !{ptr @final_scan_insn, ptr @current_function_section, i64 23}
!77 = !{ptr @final_scan_insn, ptr @insn_file, i64 616192}
!78 = !{ptr @final_scan_insn, ptr @insn_line, i64 616192}
!79 = !{ptr @final_scan_insn, ptr @asm_noperands, i64 616192}
!80 = !{ptr @final_scan_insn, ptr @extract_insn_cached, i64 616192}
!81 = !{ptr @final_scan_insn, ptr @alter_subreg, i64 106}
!82 = !{ptr @final_scan_insn, ptr @walk_alter_subreg, i64 172898}
!83 = !{ptr @final_scan_insn, ptr @df_insn_rescan, i64 106}
!84 = !{ptr @final_scan_insn, ptr @constrain_operands_cached, i64 616192}
!85 = !{ptr @final_scan_insn, ptr @assemble_external, i64 68727}
!86 = !{ptr @final_scan_insn, ptr @putc, i64 4345479}
!87 = !{ptr @final_scan_insn, ptr @strtoul, i64 1075794}
!88 = !{ptr @final_scan_insn, ptr @sprintf, i64 186645}
!89 = !{ptr @final_scan_insn, ptr @assemble_name, i64 186645}
!90 = !{ptr @final_scan_insn, ptr @print_operand_address, i64 2885}
!91 = !{ptr @final_scan_insn, ptr @print_operand, i64 1034383}
!92 = !{ptr @final_scan_insn, ptr @for_each_rtx, i64 886264}
!93 = !{ptr @cleanup_subreg_operands, ptr @extract_insn_cached, i64 563344}
!94 = !{ptr @cleanup_subreg_operands, ptr @alter_subreg, i64 96}
!95 = !{ptr @cleanup_subreg_operands, ptr @walk_alter_subreg, i64 155431}
!96 = !{ptr @cleanup_subreg_operands, ptr @df_insn_rescan, i64 96}
!97 = !{ptr @alter_subreg, ptr @simplify_subreg, i64 202}
!98 = !{ptr @walk_alter_subreg, ptr @walk_alter_subreg, i64 420619}
!99 = !{ptr @output_asm_label, ptr @sprintf, i64 23}
!100 = !{ptr @output_asm_label, ptr @assemble_name, i64 23}
!101 = !{ptr @output_address, ptr @walk_alter_subreg, i64 159540}
!102 = !{ptr @output_address, ptr @print_operand_address, i64 159540}
!103 = !{ptr @output_addr_const, ptr @mark_decl_referenced, i64 145974}
!104 = !{ptr @output_addr_const, ptr @assemble_external, i64 145974}
!105 = !{ptr @output_addr_const, ptr @assemble_name, i64 145974}
!106 = !{ptr @output_addr_const, ptr @fprintf, i64 28163}
!107 = !{ptr @output_addr_const, ptr @output_addr_const, i64 35814}
!108 = !{ptr @output_addr_const, ptr @fputc, i64 11938}
!109 = !{ptr @mark_symbol_ref_as_used, ptr @assemble_external, i64 145974}
!110 = !{ptr @asm_fprintf, ptr @fprintf, i64 146241}
!111 = !{ptr @asm_fprintf, ptr @fputs, i64 146241}
!112 = !{ptr @leaf_function_p, ptr @get_insns, i64 38}
!113 = !{ptr @rest_of_handle_final, ptr @make_decl_rtl, i64 37}
!114 = !{ptr @rest_of_handle_final, ptr @assemble_start_function, i64 38}
!115 = !{ptr @rest_of_handle_final, ptr @get_insns, i64 76}
!116 = !{ptr @rest_of_handle_final, ptr @final_start_function, i64 38}
!117 = !{ptr @rest_of_handle_final, ptr @init_recog, i64 38}
!118 = !{ptr @rest_of_handle_final, ptr @final_scan_insn, i64 985623}
!119 = !{ptr @rest_of_handle_final, ptr @final_end_function, i64 38}
!120 = !{ptr @rest_of_handle_final, ptr @assemble_end_function, i64 38}
!121 = !{ptr @rest_of_handle_final, ptr @output_function_exception_table, i64 38}
!122 = !{ptr @rest_of_handle_final, ptr @free_reg_info, i64 38}
!123 = !{ptr @rest_of_handle_shorten_branches, ptr @get_insns, i64 38}
!124 = !{ptr @rest_of_handle_shorten_branches, ptr @shorten_branches, i64 38}
!125 = !{ptr @rest_of_clean_state, ptr @get_insns, i64 38}
!126 = !{ptr @rest_of_clean_state, ptr @free, i64 152}
!127 = !{ptr @rest_of_clean_state, ptr @init_temp_slots, i64 38}
!128 = !{ptr @rest_of_clean_state, ptr @free_bb_for_insn, i64 38}
!129 = !{ptr @rest_of_clean_state, ptr @delete_tree_ssa, i64 38}
!130 = !{ptr @rest_of_clean_state, ptr @cgraph_rtl_info, i64 38}
!131 = !{ptr @rest_of_clean_state, ptr @init_recog_no_volatile, i64 38}
!132 = !{ptr @rest_of_clean_state, ptr @free_after_parsing, i64 38}
!133 = !{ptr @rest_of_clean_state, ptr @free_after_compilation, i64 38}
!134 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!135 = !{!"function_entry_count", i64 0}
!136 = !{!137, !137, i64 0}
!137 = !{!"any pointer", !138, i64 0}
!138 = !{!"omnipotent char", !139, i64 0}
!139 = !{!"Simple C/C++ TBAA"}
!140 = !{!141, !137, i64 8}
!141 = !{!"_IO_FILE", !142, i64 0, !137, i64 8, !137, i64 16, !137, i64 24, !137, i64 32, !137, i64 40, !137, i64 48, !137, i64 56, !137, i64 64, !137, i64 72, !137, i64 80, !137, i64 88, !137, i64 96, !137, i64 104, !142, i64 112, !142, i64 116, !143, i64 120, !144, i64 128, !138, i64 130, !138, i64 131, !137, i64 136, !143, i64 144, !137, i64 152, !137, i64 160, !137, i64 168, !137, i64 176, !143, i64 184, !142, i64 192, !138, i64 196}
!142 = !{!"int", !138, i64 0}
!143 = !{!"long", !138, i64 0}
!144 = !{!"short", !138, i64 0}
!145 = !{!141, !137, i64 16}
!146 = !{!"branch_weights", i32 2000, i32 1}
!147 = !{!138, !138, i64 0}
!148 = !{!141, !137, i64 40}
!149 = !{!141, !137, i64 48}
!150 = !{!141, !142, i64 0}
!151 = !{!142, !142, i64 0}
!152 = distinct !{!152, !153, !154}
!153 = !{!"llvm.loop.mustprogress"}
!154 = !{!"llvm.loop.unroll.disable"}
!155 = !{!"function_entry_count", i64 1}
!156 = !{!"function_entry_count", i64 38}
!157 = !{!"function_entry_count", i64 107}
!158 = !{!"function_entry_count", i64 77}
!159 = !{!"branch_weights", i32 0, i32 77}
!160 = !{!"branch_weights", i32 0, i32 38}
!161 = !{!"function_entry_count", i64 1067331}
!162 = !{!"function_entry_count", i64 1422024}
!163 = !{!"final.c;get_attr_length_1"}
!164 = !{!"branch_weights", i32 0, i32 1422024}
!165 = !{!"branch_weights", i32 0, i32 954360, i32 461755, i32 5909}
!166 = !{!"VP", i32 0, i64 5909, i64 4142320685407012637, i64 5905, i64 -5500902005252853857, i64 4}
!167 = !{ptr @insn_default_length, ptr @insn_min_length}
!168 = !{!"branch_weights", i32 0, i32 461755}
!169 = !{!"VP", i32 0, i64 461755, i64 -5500902005252853857, i64 394735, i64 4142320685407012637, i64 67020}
!170 = !{!"branch_weights", i32 923744, i32 30616, i32 0, i32 0}
!171 = !{!"branch_weights", i32 0, i32 923744}
!172 = !{!173, !142, i64 0}
!173 = !{!"rtvec_def", !142, i64 0, !138, i64 8}
!174 = distinct !{!174, !153, !154}
!175 = !{!"VP", i32 0, i64 923744, i64 -5500902005252853857, i64 672592, i64 4142320685407012637, i64 251152}
!176 = !{!"function_entry_count", i64 354693}
!177 = !{!"function_entry_count", i64 83456}
!178 = !{!"branch_weights", i32 0, i32 83456}
!179 = !{!180, !144, i64 0}
!180 = !{!"label_alignment", !144, i64 0, !144, i64 2}
!181 = !{!180, !144, i64 2}
!182 = !{!"function_entry_count", i64 719560}
!183 = !{!"branch_weights", i32 0, i32 719560}
!184 = !{!"branch_weights", i32 719560, i32 0}
!185 = !{!"branch_weights", i32 322050, i32 397510}
!186 = !{!"branch_weights", i32 659748, i32 404481}
!187 = !{!"branch_weights", i32 59812, i32 344669}
!188 = !{!"branch_weights", i32 0, i32 344669}
!189 = distinct !{!189, !153, !154}
!190 = !{!"branch_weights", i32 1, i32 37}
!191 = !{!"branch_weights", i32 38, i32 0}
!192 = !{!193, !137, i64 8}
!193 = !{!"function", !137, i64 0, !137, i64 8, !137, i64 16, !137, i64 24, !137, i64 32, !137, i64 40, !137, i64 48, !137, i64 56, !137, i64 64, !137, i64 72, !137, i64 80, !137, i64 88, !137, i64 96, !142, i64 104, !142, i64 108, !142, i64 112, !142, i64 116, !142, i64 120, !142, i64 124, !137, i64 128, !142, i64 136, !142, i64 137, !142, i64 138, !142, i64 138, !142, i64 138, !142, i64 138, !142, i64 138, !142, i64 138, !142, i64 138, !142, i64 139, !142, i64 139, !142, i64 139, !142, i64 139, !142, i64 139, !142, i64 139, !142, i64 139}
!194 = !{!195, !137, i64 0}
!195 = !{!"control_flow_graph", !137, i64 0, !137, i64 8, !137, i64 16, !142, i64 24, !142, i64 28, !142, i64 32, !137, i64 40, !142, i64 48, !138, i64 52, !138, i64 60, !142, i64 68, !142, i64 72}
!196 = !{!195, !137, i64 8}
!197 = !{!198, !137, i64 56}
!198 = !{!"basic_block_def", !137, i64 0, !137, i64 8, !137, i64 16, !137, i64 24, !138, i64 32, !137, i64 48, !137, i64 56, !138, i64 64, !143, i64 72, !142, i64 80, !142, i64 84, !142, i64 88, !142, i64 92, !142, i64 96}
!199 = !{!"branch_weights", i32 1, i32 151}
!200 = !{!198, !142, i64 88}
!201 = !{!"branch_weights", i32 151, i32 747941}
!202 = distinct !{!202, !153, !154}
!203 = !{!204, !142, i64 8}
!204 = !{!"param_info", !137, i64 0, !142, i64 8, !138, i64 12, !142, i64 16, !142, i64 20, !137, i64 24}
!205 = !{!206, !137, i64 0}
!206 = !{!"rtl_bb_info", !137, i64 0, !137, i64 8, !137, i64 16, !137, i64 24, !142, i64 32}
!207 = !{!"branch_weights", i32 85114, i32 101909}
!208 = !{!"branch_weights", i32 18488, i32 66626}
!209 = !{!"branch_weights", i32 168535, i32 0}
!210 = !{!198, !142, i64 80}
!211 = !{!198, !137, i64 24}
!212 = !{!213, !142, i64 0}
!213 = !{!"loop", !142, i64 0, !142, i64 4, !137, i64 8, !137, i64 16, !214, i64 24, !142, i64 32, !142, i64 36, !137, i64 40, !137, i64 48, !137, i64 56, !137, i64 64, !137, i64 72, !215, i64 80, !215, i64 96, !138, i64 112, !138, i64 113, !142, i64 116, !137, i64 120, !137, i64 128, !138, i64 136, !137, i64 144}
!214 = !{!"lpt_decision", !142, i64 0, !142, i64 4}
!215 = !{!"", !143, i64 0, !143, i64 8}
!216 = !{!198, !142, i64 84}
!217 = !{!"branch_weights", i32 0, i32 134805}
!218 = !{!219, !142, i64 0}
!219 = !{!"VEC_edge_base", !142, i64 0, !142, i64 4, !138, i64 8}
!220 = !{!"branch_weights", i32 18488, i32 116317}
!221 = !{!222, !142, i64 48}
!222 = !{!"edge_def", !137, i64 0, !137, i64 8, !138, i64 16, !137, i64 24, !137, i64 32, !142, i64 40, !142, i64 44, !142, i64 48, !142, i64 52, !143, i64 56}
!223 = !{!222, !137, i64 0}
!224 = !{!222, !142, i64 52}
!225 = !{!"branch_weights", i32 101761, i32 14556}
!226 = !{!"branch_weights", i32 0, i32 116317}
!227 = !{!"branch_weights", i32 116317, i32 0}
!228 = distinct !{!228, !153, !154}
!229 = !{!"branch_weights", i32 18488, i32 0}
!230 = !{!213, !137, i64 48}
!231 = !{!213, !137, i64 8}
!232 = !{!"branch_weights", i32 3932, i32 14556}
!233 = !{!"branch_weights", i32 543, i32 3389}
!234 = !{!198, !137, i64 48}
!235 = !{!"branch_weights", i32 1532, i32 1857}
!236 = !{!"branch_weights", i32 0, i32 1532}
!237 = !{!"branch_weights", i32 2075, i32 0}
!238 = !{!"branch_weights", i32 14556, i32 0}
!239 = !{!"branch_weights", i32 361, i32 14195}
!240 = !{!"branch_weights", i32 62, i32 299}
!241 = !{!"branch_weights", i32 62, i32 0}
!242 = distinct !{!242, !153, !154}
!243 = !{!"branch_weights", i32 83456, i32 902163}
!244 = !{!"branch_weights", i32 2137, i32 81319}
!245 = !{!"branch_weights", i32 45, i32 83411}
!246 = !{!"branch_weights", i32 23, i32 83433}
!247 = !{!"branch_weights", i32 0, i32 83433}
!248 = !{!"branch_weights", i32 151, i32 3942325}
!249 = distinct !{!249, !153, !154}
!250 = !{!251, !142, i64 0}
!251 = !{!"VEC_int_base", !142, i64 0, !142, i64 4, !138, i64 8}
!252 = !{!251, !142, i64 4}
!253 = !{}
!254 = !{!"VP", i32 1, i64 38, i64 513, i64 37, i64 257, i64 1}
!255 = !{!"branch_weights", i32 983482, i32 2137}
!256 = !{!"branch_weights", i32 2136, i32 1}
!257 = !{!"branch_weights", i32 6412, i32 2136}
!258 = distinct !{!258, !153, !154}
!259 = distinct !{!259, !153, !154}
!260 = !{!"branch_weights", i32 81319, i32 2137}
!261 = !{!"branch_weights", i32 0, i32 985619}
!262 = !{!"branch_weights", i32 616282, i32 247199, i32 38682, i32 83456, i32 0}
!263 = !{!"branch_weights", i32 616282, i32 0}
!264 = !{!"branch_weights", i32 616259, i32 23, i32 0, i32 0}
!265 = !{!"branch_weights", i32 0, i32 23}
!266 = !{!"branch_weights", i32 0, i32 616259}
!267 = !{!"branch_weights", i32 616192, i32 0, i32 67, i32 0}
!268 = distinct !{!268, !153, !154}
!269 = distinct !{!269, !153, !154}
!270 = !{!"branch_weights", i32 1, i32 177}
!271 = !{!"branch_weights", i32 248964, i32 2687204}
!272 = !{!"branch_weights", i32 5918, i32 243046}
!273 = !{!"branch_weights", i32 0, i32 248964}
!274 = !{!"branch_weights", i32 6007, i32 2681197}
!275 = !{!"branch_weights", i32 0, i32 2687204}
!276 = !{!"branch_weights", i32 2130102, i32 557102}
!277 = !{!"branch_weights", i32 1073184, i32 1056918}
!278 = !{!"branch_weights", i32 0, i32 1073184}
!279 = distinct !{!279, !153, !154}
!280 = !{!"branch_weights", i32 0, i32 557102}
!281 = distinct !{!281, !153, !154}
!282 = !{!"branch_weights", i32 542284, i32 14818}
!283 = !{!"branch_weights", i32 177, i32 5872159}
!284 = distinct !{!284, !153, !154}
!285 = !{!"branch_weights", i32 89, i32 0}
!286 = !{!"branch_weights", i32 51, i32 38}
!287 = distinct !{!287, !153, !154}
!288 = distinct !{!288, !153, !154}
!289 = !{!290, !137, i64 0}
!290 = !{!"debug_prefix_map", !137, i64 0, !137, i64 8, !143, i64 16, !143, i64 24, !137, i64 32}
!291 = !{!290, !143, i64 16}
!292 = !{!290, !137, i64 8}
!293 = !{!290, !143, i64 24}
!294 = !{!290, !137, i64 32}
!295 = !{!"branch_weights", i32 1, i32 0}
!296 = distinct !{!296, !153, !154}
!297 = !{!298, !137, i64 88}
!298 = !{!"gcc_debug_hooks", !137, i64 0, !137, i64 8, !137, i64 16, !137, i64 24, !137, i64 32, !137, i64 40, !137, i64 48, !137, i64 56, !137, i64 64, !137, i64 72, !137, i64 80, !137, i64 88, !137, i64 96, !137, i64 104, !137, i64 112, !137, i64 120, !137, i64 128, !137, i64 136, !137, i64 144, !137, i64 152, !137, i64 160, !137, i64 168, !137, i64 176, !137, i64 184, !137, i64 192, !137, i64 200, !137, i64 208, !137, i64 216, !137, i64 224, !137, i64 232, !137, i64 240, !142, i64 248}
!299 = !{!"VP", i32 0, i64 38, i64 3334739585824686554, i64 38}
!300 = !{!"branch_weights", i32 38, i32 0, i32 0}
!301 = !{!143, !143, i64 0}
!302 = !{!303, !137, i64 160}
!303 = !{!"gcc_target", !304, i64 0, !306, i64 368, !307, i64 664, !142, i64 744, !137, i64 752, !137, i64 760, !137, i64 768, !137, i64 776, !137, i64 784, !137, i64 792, !137, i64 800, !137, i64 808, !137, i64 816, !137, i64 824, !137, i64 832, !137, i64 840, !137, i64 848, !137, i64 856, !137, i64 864, !137, i64 872, !137, i64 880, !137, i64 888, !137, i64 896, !137, i64 904, !137, i64 912, !137, i64 920, !137, i64 928, !137, i64 936, !137, i64 944, !137, i64 952, !137, i64 960, !137, i64 968, !137, i64 976, !137, i64 984, !137, i64 992, !137, i64 1000, !137, i64 1008, !137, i64 1016, !137, i64 1024, !137, i64 1032, !137, i64 1040, !137, i64 1048, !137, i64 1056, !143, i64 1064, !143, i64 1072, !137, i64 1080, !137, i64 1088, !137, i64 1096, !137, i64 1104, !137, i64 1112, !137, i64 1120, !137, i64 1128, !137, i64 1136, !137, i64 1144, !137, i64 1152, !137, i64 1160, !137, i64 1168, !308, i64 1176, !137, i64 1232, !137, i64 1240, !137, i64 1248, !137, i64 1256, !137, i64 1264, !137, i64 1272, !137, i64 1280, !137, i64 1288, !137, i64 1296, !137, i64 1304, !137, i64 1312, !137, i64 1320, !137, i64 1328, !137, i64 1336, !137, i64 1344, !137, i64 1352, !137, i64 1360, !137, i64 1368, !137, i64 1376, !137, i64 1384, !137, i64 1392, !137, i64 1400, !137, i64 1408, !137, i64 1416, !137, i64 1424, !137, i64 1432, !137, i64 1440, !137, i64 1448, !137, i64 1456, !143, i64 1464, !309, i64 1472, !137, i64 1664, !137, i64 1672, !137, i64 1680, !137, i64 1688, !137, i64 1696, !137, i64 1704, !137, i64 1712, !137, i64 1720, !137, i64 1728, !137, i64 1736, !137, i64 1744, !137, i64 1752, !137, i64 1760, !137, i64 1768, !137, i64 1776, !310, i64 1784, !311, i64 1792, !312, i64 1896, !313, i64 1968, !137, i64 2016, !138, i64 2024, !138, i64 2025, !138, i64 2026, !138, i64 2027, !138, i64 2028, !138, i64 2029, !138, i64 2030, !138, i64 2031, !138, i64 2032, !138, i64 2033, !138, i64 2034, !138, i64 2035}
!304 = !{!"asm_out", !137, i64 0, !137, i64 8, !137, i64 16, !305, i64 24, !305, i64 56, !137, i64 88, !137, i64 96, !137, i64 104, !137, i64 112, !137, i64 120, !137, i64 128, !137, i64 136, !137, i64 144, !137, i64 152, !137, i64 160, !137, i64 168, !137, i64 176, !137, i64 184, !137, i64 192, !137, i64 200, !137, i64 208, !137, i64 216, !137, i64 224, !137, i64 232, !137, i64 240, !137, i64 248, !137, i64 256, !137, i64 264, !137, i64 272, !137, i64 280, !137, i64 288, !137, i64 296, !137, i64 304, !137, i64 312, !137, i64 320, !137, i64 328, !137, i64 336, !137, i64 344, !137, i64 352, !137, i64 360}
!305 = !{!"asm_int_op", !137, i64 0, !137, i64 8, !137, i64 16, !137, i64 24}
!306 = !{!"sched", !137, i64 0, !137, i64 8, !137, i64 16, !137, i64 24, !137, i64 32, !137, i64 40, !137, i64 48, !137, i64 56, !137, i64 64, !137, i64 72, !137, i64 80, !137, i64 88, !137, i64 96, !137, i64 104, !137, i64 112, !137, i64 120, !137, i64 128, !137, i64 136, !137, i64 144, !137, i64 152, !137, i64 160, !137, i64 168, !137, i64 176, !137, i64 184, !137, i64 192, !137, i64 200, !137, i64 208, !137, i64 216, !137, i64 224, !137, i64 232, !137, i64 240, !137, i64 248, !137, i64 256, !137, i64 264, !137, i64 272, !137, i64 280, !137, i64 288}
!307 = !{!"vectorize", !137, i64 0, !137, i64 8, !137, i64 16, !137, i64 24, !137, i64 32, !137, i64 40, !137, i64 48, !137, i64 56, !137, i64 64, !137, i64 72}
!308 = !{!"addr_space", !137, i64 0, !137, i64 8, !137, i64 16, !137, i64 24, !137, i64 32, !137, i64 40, !137, i64 48}
!309 = !{!"calls", !137, i64 0, !137, i64 8, !137, i64 16, !137, i64 24, !137, i64 32, !137, i64 40, !137, i64 48, !137, i64 56, !137, i64 64, !137, i64 72, !137, i64 80, !137, i64 88, !137, i64 96, !137, i64 104, !137, i64 112, !137, i64 120, !137, i64 128, !137, i64 136, !137, i64 144, !137, i64 152, !137, i64 160, !137, i64 168, !137, i64 176, !137, i64 184}
!310 = !{!"c", !137, i64 0}
!311 = !{!"cxx", !137, i64 0, !137, i64 8, !137, i64 16, !137, i64 24, !137, i64 32, !137, i64 40, !137, i64 48, !137, i64 56, !137, i64 64, !137, i64 72, !137, i64 80, !137, i64 88, !137, i64 96}
!312 = !{!"emutls", !137, i64 0, !137, i64 8, !137, i64 16, !137, i64 24, !137, i64 32, !137, i64 40, !137, i64 48, !137, i64 56, !138, i64 64, !138, i64 65}
!313 = !{!"target_option_hooks", !137, i64 0, !137, i64 8, !137, i64 16, !137, i64 24, !137, i64 32, !137, i64 40}
!314 = !{!"VP", i32 0, i64 38, i64 -4648135560600689922, i64 38}
!315 = !{!298, !137, i64 120}
!316 = !{!"VP", i32 0, i64 38, i64 5411170114686165342, i64 38}
!317 = !{!303, !137, i64 184}
!318 = !{!"VP", i32 0, i64 38, i64 7026088555772053019, i64 38}
!319 = !{!298, !137, i64 104}
!320 = !{!"branch_weights", i32 985619, i32 0}
!321 = distinct !{!321, !153, !154}
!322 = !{!"function_entry_count", i64 985619}
!323 = !{!"branch_weights", i32 616282, i32 247199, i32 38682, i32 83456}
!324 = !{!"branch_weights", i32 0, i32 60031, i32 0, i32 187023, i32 0, i32 0, i32 38, i32 69, i32 0, i32 38, i32 0, i32 0, i32 0, i32 0}
!325 = !{!298, !137, i64 200}
!326 = !{!"branch_weights", i32 187023, i32 0}
!327 = !{!"branch_weights", i32 0, i32 187023}
!328 = !{!198, !142, i64 92}
!329 = !{!303, !137, i64 136}
!330 = !{!303, !137, i64 168}
!331 = !{!"VP", i32 0, i64 38, i64 4233455274885208872, i64 38}
!332 = !{!333, !138, i64 471}
!333 = !{!"rtl_data", !334, i64 0, !335, i64 40, !336, i64 96, !337, i64 112, !339, i64 208, !340, i64 248, !142, i64 312, !137, i64 320, !137, i64 328, !137, i64 336, !137, i64 344, !137, i64 352, !137, i64 360, !137, i64 368, !137, i64 376, !137, i64 384, !137, i64 392, !143, i64 400, !137, i64 408, !137, i64 416, !137, i64 424, !142, i64 432, !142, i64 436, !142, i64 440, !142, i64 444, !142, i64 448, !142, i64 452, !137, i64 456, !138, i64 464, !138, i64 465, !138, i64 466, !138, i64 467, !138, i64 468, !138, i64 469, !138, i64 470, !138, i64 471, !138, i64 472, !138, i64 473, !138, i64 474, !138, i64 475, !138, i64 476, !138, i64 477, !138, i64 478, !138, i64 479, !138, i64 480, !138, i64 481, !138, i64 482, !138, i64 483, !138, i64 484, !138, i64 485}
!334 = !{!"expr_status", !142, i64 0, !142, i64 4, !142, i64 8, !137, i64 16, !137, i64 24, !137, i64 32}
!335 = !{!"emit_status", !142, i64 0, !142, i64 4, !137, i64 8, !137, i64 16, !137, i64 24, !142, i64 32, !142, i64 36, !142, i64 40, !142, i64 44, !137, i64 48}
!336 = !{!"varasm_status", !137, i64 0, !142, i64 8}
!337 = !{!"incoming_args", !142, i64 0, !142, i64 4, !142, i64 8, !137, i64 16, !338, i64 24, !137, i64 88}
!338 = !{!"ix86_args", !142, i64 0, !142, i64 4, !142, i64 8, !142, i64 12, !142, i64 16, !142, i64 20, !142, i64 24, !142, i64 28, !142, i64 32, !142, i64 36, !142, i64 40, !142, i64 44, !142, i64 48, !142, i64 52, !142, i64 56, !142, i64 60}
!339 = !{!"function_subsections", !137, i64 0, !137, i64 8, !137, i64 16, !137, i64 24, !137, i64 32}
!340 = !{!"rtl_eh", !137, i64 0, !137, i64 8, !137, i64 16, !137, i64 24, !137, i64 32, !137, i64 40, !138, i64 48}
!341 = !{!303, !137, i64 1488}
!342 = !{!193, !137, i64 56}
!343 = !{!303, !137, i64 1640}
!344 = !{!193, !142, i64 108}
!345 = !{!"branch_weights", i32 69, i32 0}
!346 = !{!303, !137, i64 176}
!347 = !{!"VP", i32 0, i64 69, i64 4233455274885208872, i64 69}
!348 = !{!298, !137, i64 96}
!349 = !{!298, !137, i64 56}
!350 = !{!351, !137, i64 0}
!351 = !{!"", !137, i64 0, !142, i64 8, !142, i64 12, !138, i64 16}
!352 = !{!351, !142, i64 8}
!353 = !{!298, !137, i64 64}
!354 = !{!298, !137, i64 192}
!355 = !{!"branch_weights", i32 38682, i32 0}
!356 = !{!"branch_weights", i32 0, i32 2137}
!357 = !{!"branch_weights", i32 2137, i32 0}
!358 = !{!"branch_weights", i32 83456, i32 0}
!359 = !{!298, !137, i64 176}
!360 = !{!"branch_weights", i32 23, i32 22}
!361 = !{!303, !137, i64 240}
!362 = !{!"VP", i32 0, i64 23, i64 -927963512129647396, i64 23}
!363 = !{!"branch_weights", i32 23, i32 0}
!364 = !{!"VP", i32 0, i64 23, i64 -4243853295557831043, i64 23}
!365 = !{!"branch_weights", i32 83433, i32 0}
!366 = !{!303, !137, i64 96}
!367 = !{!"VP", i32 0, i64 83433, i64 -4243853295557831043, i64 83433}
!368 = !{!"branch_weights", i32 616192, i32 67, i32 0, i32 23, i32 0}
!369 = !{!"branch_weights", i32 183, i32 1}
!370 = !{!"branch_weights", i32 40501, i32 0}
!371 = !{!"branch_weights", i32 183, i32 323825}
!372 = distinct !{!372, !153, !154}
!373 = !{!"branch_weights", i32 616192, i32 0}
!374 = !{!"branch_weights", i32 51843, i32 564349}
!375 = !{!"branch_weights", i32 564311, i32 38}
!376 = !{!"branch_weights", i32 338446, i32 225903}
!377 = !{!298, !137, i64 80}
!378 = !{!"VP", i32 0, i64 225903, i64 3531092730399183384, i64 225903}
!379 = !{!"branch_weights", i32 0, i32 616192}
!380 = !{i64 0, i64 8, !136, i64 8, i64 4, !151, i64 12, i64 4, !151, i64 16, i64 1, !147}
!381 = !{i64 0, i64 4, !151, i64 4, i64 4, !151, i64 8, i64 1, !147}
!382 = !{!303, !137, i64 352}
!383 = distinct !{!383, !153, !154}
!384 = distinct !{!384, !153, !154}
!385 = distinct !{!385, !153, !154}
!386 = !{!387, !138, i64 1086}
!387 = !{!"recog_data", !138, i64 0, !138, i64 240, !138, i64 480, !138, i64 720, !138, i64 840, !138, i64 960, !138, i64 1072, !138, i64 1086, !138, i64 1087, !138, i64 1088, !138, i64 1089, !137, i64 1120}
!388 = !{!"branch_weights", i32 1179535, i32 1}
!389 = !{!387, !138, i64 1087}
!390 = !{!"branch_weights", i32 622, i32 1178914}
!391 = !{!"branch_weights", i32 202, i32 2449147}
!392 = !{!"branch_weights", i32 2123703, i32 5771, i32 0, i32 319673}
!393 = !{!"branch_weights", i32 1269814, i32 1179535}
!394 = distinct !{!394, !153, !154}
!395 = !{!"branch_weights", i32 622, i32 0, i32 0, i32 0, i32 0}
!396 = !{!"branch_weights", i32 0, i32 622}
!397 = distinct !{!397, !153, !154}
!398 = !{!"branch_weights", i32 1179334, i32 202}
!399 = !{!303, !137, i64 1000}
!400 = !{!"VP", i32 0, i64 616192, i64 -4114221222305073648, i64 616192}
!401 = !{!"branch_weights", i32 68727, i32 547465}
!402 = !{!"branch_weights", i32 68727, i32 0}
!403 = !{!404, !138, i64 35}
!404 = !{!"insn_data", !137, i64 0, !138, i64 8, !137, i64 16, !137, i64 24, !138, i64 32, !138, i64 33, !138, i64 34, !138, i64 35}
!405 = !{!"branch_weights", i32 0, i32 312058, i32 32560, i32 271574}
!406 = !{!"branch_weights", i32 0, i32 271574}
!407 = !{!"VP", i32 0, i64 271574, i64 4645980332406041687, i64 157850, i64 3475364850012532672, i64 66610, i64 7918977156726647780, i64 24339}
!408 = distinct !{!408, !153, !154}
!409 = !{!"branch_weights", i32 2117, i32 66610}
!410 = !{!"branch_weights", i32 0, i32 0, i32 0, i32 66610}
!411 = !{!"branch_weights", i32 66610, i32 0}
!412 = distinct !{!412, !153, !154}
!413 = !{!"branch_weights", i32 0, i32 68727}
!414 = !{!"branch_weights", i32 24339, i32 591853}
!415 = !{!"branch_weights", i32 148119, i32 443734}
!416 = !{!"branch_weights", i32 0, i32 148119}
!417 = !{!"branch_weights", i32 3161773, i32 591853, i32 0, i32 638182, i32 303795, i32 334387, i32 1223913}
!418 = distinct !{!418, !153, !154}
!419 = !{!"branch_weights", i32 638182, i32 0}
!420 = !{!"branch_weights", i32 0, i32 1}
!421 = distinct !{!421, !153, !154}
!422 = distinct !{!422, !153, !154}
!423 = !{!"branch_weights", i32 0, i32 638182}
!424 = !{!"branch_weights", i32 0, i32 303795}
!425 = !{!"branch_weights", i32 0, i32 2128821}
!426 = !{!"branch_weights", i32 303795, i32 1825026}
!427 = distinct !{!427, !153, !154}
!428 = !{!"branch_weights", i32 0, i32 334387}
!429 = !{!"branch_weights", i32 1223913, i32 0, i32 0}
!430 = !{!144, !144, i64 0}
!431 = !{!"branch_weights", i32 815487, i32 408426}
!432 = !{!"branch_weights", i32 0, i32 408426}
!433 = !{!"branch_weights", i32 408426, i32 0}
!434 = !{!"branch_weights", i32 218896, i32 186645, i32 2885, i32 0, i32 0}
!435 = !{!"branch_weights", i32 23, i32 186645}
!436 = !{!"branch_weights", i32 0, i32 186668, i32 0}
!437 = !{!"branch_weights", i32 148119, i32 886264}
!438 = !{!"branch_weights", i32 0, i32 886264}
!439 = !{!"branch_weights", i32 318505, i32 567759}
!440 = !{!"branch_weights", i32 318505, i32 0}
!441 = !{!"branch_weights", i32 148119, i32 667368}
!442 = !{!"branch_weights", i32 667368, i32 0}
!443 = !{!"branch_weights", i32 636952, i32 30416}
!444 = !{!"branch_weights", i32 0, i32 0, i32 148119, i32 0, i32 0}
!445 = distinct !{!445, !153, !154}
!446 = !{!"branch_weights", i32 591853, i32 0}
!447 = !{!298, !137, i64 208}
!448 = !{!298, !137, i64 232}
!449 = !{!"branch_weights", i32 0, i32 616192, i32 90}
!450 = !{!"VP", i32 0, i64 0, i64 4645980332406041687, i64 0, i64 3475364850012532672, i64 0, i64 7918977156726647780, i64 0}
!451 = !{!"function_entry_count", i64 563344}
!452 = !{!"final.c;call_from_call_insn"}
!453 = !{!"function_entry_count", i64 202}
!454 = !{!"branch_weights", i32 0, i32 202}
!455 = !{!"function_entry_count", i64 908488}
!456 = !{!"final.c;walk_alter_subreg"}
!457 = !{!"branch_weights", i32 538342, i32 49987, i32 486, i32 0, i32 319673, i32 0, i32 0}
!458 = distinct !{!458, !153, !154}
!459 = !{!404, !137, i64 0}
!460 = !{!404, !138, i64 34}
!461 = !{!"function_entry_count", i64 23}
!462 = !{!"function_entry_count", i64 159540}
!463 = !{!"function_entry_count", i64 198013}
!464 = !{!"branch_weights", i32 0, i32 0, i32 145974, i32 0, i32 0, i32 28163, i32 11938, i32 0, i32 0, i32 11938, i32 0, i32 0, i32 0, i32 0, i32 0}
!465 = !{!"branch_weights", i32 145974, i32 0}
!466 = !{!"branch_weights", i32 0, i32 145974}
!467 = !{!"branch_weights", i32 0, i32 11938}
!468 = !{!"branch_weights", i32 11938, i32 0}
!469 = !{!303, !137, i64 0}
!470 = !{!303, !137, i64 8}
!471 = !{!"final.c;output_operand"}
!472 = !{!"function_entry_count", i64 1408812}
!473 = !{!"final.c;mark_symbol_ref_as_used"}
!474 = !{!"branch_weights", i32 145974, i32 1262838}
!475 = !{!"function_entry_count", i64 146241}
!476 = !{!"branch_weights", i32 0, i32 146241, i32 0, i32 0, i32 0, i32 292482}
!477 = distinct !{!477, !153, !154}
!478 = distinct !{!478, !153, !154}
!479 = distinct !{!479, !153, !154}
!480 = !{!"branch_weights", i32 292482, i32 0}
!481 = distinct !{!481, !153, !154}
!482 = distinct !{!482, !153, !154}
!483 = !{!"branch_weights", i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 146241, i32 0, i32 0, i32 0, i32 0, i32 146241}
!484 = !{!"branch_weights", i32 146241, i32 0}
!485 = distinct !{!485, !153, !154}
!486 = !{i64 0, i64 4, !151, i64 0, i64 4, !151, i64 0, i64 4, !151, i64 0, i64 4, !151, i64 0, i64 4, !151, i64 0, i64 4, !151, i64 8, i64 24, !147}
!487 = !{!"branch_weights", i32 38, i32 449}
!488 = !{!"branch_weights", i32 259, i32 190}
!489 = !{!"branch_weights", i32 0, i32 259}
!490 = !{!"branch_weights", i32 0, i32 487}
!491 = distinct !{!491, !153, !154}
!492 = distinct !{!492, !153, !154}
!493 = distinct !{!493, !153, !154}
!494 = !{!"final.c;rest_of_handle_final"}
!495 = !{!"branch_weights", i32 37, i32 1}
!496 = !{!298, !137, i64 128}
!497 = !{!"VP", i32 0, i64 38, i64 7830675925866490575, i64 38}
!498 = !{!303, !137, i64 248}
!499 = !{!303, !137, i64 256}
!500 = !{!"final.c;rest_of_handle_shorten_branches"}
!501 = !{!"final.c;rest_of_clean_state"}
!502 = distinct !{!502, !153, !154}
!503 = distinct !{!503, !153, !154}
!504 = !{!303, !137, i64 1112}
!505 = !{!"VP", i32 0, i64 38, i64 -4452430551855564803, i64 38}
!506 = !{!333, !142, i64 440}
!507 = !{!333, !142, i64 436}
!508 = !{!509, !142, i64 0}
!509 = !{!"cgraph_rtl_info", !142, i64 0}
!510 = !{!511, !137, i64 0}
!511 = !{!"reg_attrs", !137, i64 0, !143, i64 8}
!512 = !{!513, !137, i64 0}
!513 = !{!"mem_attrs", !137, i64 0, !137, i64 8, !137, i64 16, !142, i64 24, !142, i64 28, !138, i64 32}
!514 = distinct !{!514, !153, !154}

; ModuleID = 'ipa-prop.c'
source_filename = "ipa-prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lang_hooks = type { ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lang_hooks_for_tree_inlining, %struct.lang_hooks_for_callgraph, %struct.lang_hooks_for_tree_dump, %struct.lang_hooks_for_decls, %struct.lang_hooks_for_types, %struct.lang_hooks_for_lto, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_tree_inlining = type { ptr }
%struct.lang_hooks_for_callgraph = type { ptr }
%struct.lang_hooks_for_tree_dump = type { ptr, ptr }
%struct.lang_hooks_for_decls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lang_hooks_for_types = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_lto = type { ptr, ptr, ptr }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.ipa_node_params = type { i32, ptr, ptr, ptr, i64, i8 }
%struct.ipa_func_list = type { ptr, ptr }
%struct.cgraph_node = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.cgraph_local_info, %struct.cgraph_global_info, %struct.cgraph_rtl_info, %struct.cgraph_clone_info, %struct.cgraph_thunk_info, i64, i32, i32, i32, i16 }
%struct.cgraph_local_info = type { ptr, %struct.inline_summary, i8 }
%struct.inline_summary = type { i64, i32, i32, i32, i32 }
%struct.cgraph_global_info = type { i64, i64, ptr, i32, i32, i32, i8 }
%struct.cgraph_rtl_info = type { i32 }
%struct.cgraph_clone_info = type { ptr, ptr, ptr }
%struct.cgraph_thunk_info = type { i64, i64, ptr, i8, i8, i8 }
%struct.VEC_ipa_node_params_t_base = type { i32, i32, [1 x %struct.ipa_node_params] }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.ipa_param_descriptor = type { %struct.ipcp_lattice, ptr, i8 }
%struct.ipcp_lattice = type { i32, ptr }
%struct.tree_function_decl = type { %struct.tree_decl_non_common, ptr, ptr, ptr, ptr, i32 }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.cgraph_edge = type { i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i8 }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.VEC_ipa_edge_args_t_base = type { i32, i32, [1 x %struct.ipa_edge_args] }
%struct.ipa_edge_args = type { i32, ptr }
%struct.ipa_jump_func = type { i32, %union.jump_func_value }
%union.jump_func_value = type { %struct.ipa_ancestor_jf_data }
%struct.ipa_ancestor_jf_data = type { i64, ptr, i32 }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.ipa_pass_through_data = type { ptr, i32, i32 }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.ipa_param_call_note = type { i64, ptr, ptr, i32, i32, i32, i16, i8 }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.VEC_cgraph_edge_p_base = type { i32, i32, [1 x ptr] }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }
%struct.tree_list = type { %struct.tree_common, ptr, ptr }
%struct.VEC_ipa_parm_adjustment_t_base = type { i32, i32, [1 x %struct.ipa_parm_adjustment] }
%struct.ipa_parm_adjustment = type { ptr, ptr, ptr, ptr, ptr, i64, i32, i8 }
%struct.output_block = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr }
%struct.cgraph_node_set_def = type { ptr, ptr, ptr }
%struct.VEC_cgraph_node_ptr_base = type { i32, i32, [1 x ptr] }
%struct.lto_out_decl_state = type { [7 x %struct.lto_tree_ref_encoder], ptr, ptr }
%struct.lto_tree_ref_encoder = type { ptr, i32, ptr }
%struct.lto_input_block = type { ptr, i32, i32 }
%struct.lto_function_header = type { %struct.lto_header, i32, i32, i32, i32, i32, i32, i32 }
%struct.lto_header = type { i16, i16, i32 }
%struct.lto_file_decl_data = type { ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@cgraph_nodes = external local_unnamed_addr global ptr, align 8
@ipa_node_params_vector = dso_local local_unnamed_addr global ptr null, align 8
@.str = private unnamed_addr constant [11 x i8] c"ipa-prop.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@ipa_edge_args_vector = dso_local local_unnamed_addr global ptr null, align 8
@cgraph_edge_max_uid = external local_unnamed_addr global i32, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"  Jump functions of caller  %s:\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"    callsite  %s \00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"-> %s :: \0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"       param %d: \00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"UNKNOWN\0A\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"CONST: \00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"CONST MEMBER PTR: \00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"PASS THROUGH: \00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"%d, op %s \00", align 1
@tree_code_name = external local_unnamed_addr constant [0 x ptr], align 8
@dump_file = external local_unnamed_addr global ptr, align 8
@.str.13 = private unnamed_addr constant [11 x i8] c"ANCESTOR: \00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"%d, offset %ld\0A\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"\0AJump functions:\0A\00", align 1
@flag_wpa = external local_unnamed_addr global i32, align 4
@edge_removal_hook_holder = internal unnamed_addr global ptr null, align 8
@node_removal_hook_holder = internal unnamed_addr global ptr null, align 8
@edge_duplication_hook_holder = internal unnamed_addr global ptr null, align 8
@node_duplication_hook_holder = internal unnamed_addr global ptr null, align 8
@flag_indirect_inlining = external local_unnamed_addr global i32, align 4
@.str.16 = private unnamed_addr constant [26 x i8] c"  function  %s Trees :: \0A\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"    param %d : %s\00", align 1
@lang_hooks = external local_unnamed_addr global %struct.lang_hooks, align 8
@.str.18 = private unnamed_addr constant [10 x i8] c"(unnamed)\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c" modified\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"\0AFunction parameters:\0A\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"SYNTH\00", align 1
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@dump_flags = external local_unnamed_addr global i32, align 4
@.str.22 = private unnamed_addr constant [16 x i8] c"replacing stmt:\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"with stmt:\00", align 1
@.str.24 = private unnamed_addr constant [24 x i8] c"IPA param adjustments: \00", align 1
@.str.25 = private unnamed_addr constant [18 x i8] c"                 \00", align 1
@.str.26 = private unnamed_addr constant [22 x i8] c"%i. base_index: %i - \00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c", base: \00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c", reduction: \00", align 1
@.str.29 = private unnamed_addr constant [17 x i8] c", new_ssa_base: \00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c", copy_param\00", align 1
@.str.31 = private unnamed_addr constant [15 x i8] c", remove_param\00", align 1
@.str.32 = private unnamed_addr constant [13 x i8] c", offset %li\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c", by_ref\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c", type: \00", align 1
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@.str.35 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@gimple_rhs_class_table = external local_unnamed_addr constant [0 x i8], align 1
@current_function_decl = external local_unnamed_addr global ptr, align 8
@.str.36 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@.str.37 = private unnamed_addr constant [58 x i8] c"ipa-prop: Discovered an indirect call to a known target (\00", align 1
@.str.38 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.39 = private unnamed_addr constant [10 x i8] c") in %s: \00", align 1
@cgraph_max_uid = external local_unnamed_addr global i32, align 4

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !61 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !62
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !61 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !62
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !61 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !66
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !71
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !72

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #18
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !66
  %11 = load i8, ptr %3, align 1, !tbaa !73
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !61 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !66
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !71
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !72

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #18
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !66
  %11 = load i8, ptr %3, align 1, !tbaa !73
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !61 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !62
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !66
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !71
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !72

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #18
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !66
  %11 = load i8, ptr %3, align 1, !tbaa !73
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !61 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !62
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !61 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !74
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !75
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !72

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #18
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !74
  store i8 %12, ptr %4, align 1, !tbaa !73
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !61 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !74
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !75
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !72

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #18
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !74
  store i8 %12, ptr %4, align 1, !tbaa !73
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !61 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !62
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !74
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !75
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !72

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #18
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !74
  store i8 %12, ptr %4, align 1, !tbaa !73
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !61 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #18
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !61 {
  %2 = load i32, ptr %0, align 8, !tbaa !76
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !61 {
  %2 = load i32, ptr %0, align 8, !tbaa !76
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !61 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #18
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !77
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !61 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #18
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !77
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !61 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !61 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !61 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !61 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #18
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
  br i1 %23, label %7, label %24, !llvm.loop !78

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !61 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: cold nounwind uwtable
define dso_local void @ipa_push_func_to_list_1(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef %2) local_unnamed_addr #9 !prof !81 {
  %4 = getelementptr inbounds %struct.ipa_node_params, ptr %2, i64 0, i32 5
  %5 = load i8, ptr %4, align 8
  %6 = or i8 %5, 8
  store i8 %6, ptr %4, align 8
  %7 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 16) #18
  store ptr %1, ptr %7, align 8, !tbaa !82
  %8 = load ptr, ptr %0, align 8, !tbaa !62
  %9 = getelementptr inbounds %struct.ipa_func_list, ptr %7, i64 0, i32 1
  store ptr %8, ptr %9, align 8, !tbaa !84
  store ptr %7, ptr %0, align 8, !tbaa !62
  ret void
}

declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @ipa_init_func_list() local_unnamed_addr #10 !prof !81 {
  %1 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !62
  %2 = icmp eq ptr %1, null
  br i1 %2, label %29, label %3, !prof !85

3:                                                ; preds = %0, %24
  %4 = phi ptr [ %27, %24 ], [ %1, %0 ]
  %5 = phi ptr [ %25, %24 ], [ null, %0 ]
  %6 = getelementptr inbounds %struct.cgraph_node, ptr %4, i64 0, i32 27
  %7 = load i16, ptr %6, align 4
  %8 = and i16 %7, 32
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %24, label %10, !prof !86

10:                                               ; preds = %3
  %11 = load ptr, ptr @ipa_node_params_vector, align 8
  %12 = getelementptr inbounds %struct.cgraph_node, ptr %4, i64 0, i32 24
  %13 = load i32, ptr %12, align 8, !tbaa !87
  %14 = zext i32 %13 to i64
  %15 = and i16 %7, 9
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %17, label %18, !prof !95

17:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 83, ptr noundef nonnull @.str.1) #18
  br label %18

18:                                               ; preds = %10, %17
  %19 = getelementptr inbounds %struct.VEC_ipa_node_params_t_base, ptr %11, i64 0, i32 2, i64 %14, i32 5
  %20 = load i8, ptr %19, align 8
  %21 = or i8 %20, 8
  store i8 %21, ptr %19, align 8
  %22 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 16) #18
  store ptr %4, ptr %22, align 8, !tbaa !82
  %23 = getelementptr inbounds %struct.ipa_func_list, ptr %22, i64 0, i32 1
  store ptr %5, ptr %23, align 8, !tbaa !84
  br label %24

24:                                               ; preds = %3, %18
  %25 = phi ptr [ %5, %3 ], [ %22, %18 ]
  %26 = getelementptr inbounds %struct.cgraph_node, ptr %4, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !62
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %3, !prof !96, !llvm.loop !97

29:                                               ; preds = %24, %0
  %30 = phi ptr [ null, %0 ], [ %25, %24 ]
  ret ptr %30
}

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn uwtable
define dso_local ptr @ipa_pop_func_from_list(ptr nocapture noundef %0) local_unnamed_addr #11 !prof !98 {
  %2 = load ptr, ptr %0, align 8, !tbaa !62
  %3 = getelementptr inbounds %struct.ipa_func_list, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !84
  store ptr %4, ptr %0, align 8, !tbaa !62
  %5 = load ptr, ptr %2, align 8, !tbaa !82
  tail call void @free(ptr noundef %2)
  %6 = load ptr, ptr @ipa_node_params_vector, align 8
  %7 = getelementptr inbounds %struct.cgraph_node, ptr %5, i64 0, i32 24
  %8 = load i32, ptr %7, align 8, !tbaa !87
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds %struct.VEC_ipa_node_params_t_base, ptr %6, i64 0, i32 2, i64 %9, i32 5
  %11 = load i8, ptr %10, align 8
  %12 = and i8 %11, -9
  store i8 %12, ptr %10, align 8
  ret ptr %5
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nounwind uwtable
define dso_local void @ipa_initialize_node_params(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !prof !99 {
  %2 = load ptr, ptr @ipa_node_params_vector, align 8
  %3 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 24
  %4 = load i32, ptr %3, align 8, !tbaa !87
  %5 = zext i32 %4 to i64
  %6 = getelementptr inbounds %struct.VEC_ipa_node_params_t_base, ptr %2, i64 0, i32 2, i64 %5
  %7 = getelementptr inbounds %struct.VEC_ipa_node_params_t_base, ptr %2, i64 0, i32 2, i64 %5, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !100
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %38, !prof !102

10:                                               ; preds = %1
  %11 = load ptr, ptr %0, align 8, !tbaa !103
  %12 = getelementptr inbounds %struct.tree_decl_non_common, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !73
  %14 = icmp eq ptr %13, null
  br i1 %14, label %22, label %15, !prof !104

15:                                               ; preds = %10, %15
  %16 = phi ptr [ %20, %15 ], [ %13, %10 ]
  %17 = phi i32 [ %18, %15 ], [ 0, %10 ]
  %18 = add nuw nsw i32 %17, 1
  %19 = getelementptr inbounds %struct.tree_common, ptr %16, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !73
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %15, !prof !105, !llvm.loop !106

22:                                               ; preds = %15, %10
  %23 = phi i32 [ 0, %10 ], [ %18, %15 ]
  store i32 %23, ptr %6, align 8, !tbaa !107
  %24 = zext nneg i32 %23 to i64
  %25 = tail call ptr @xcalloc(i64 noundef %24, i64 noundef 32) #18
  store ptr %25, ptr %7, align 8, !tbaa !100
  %26 = load ptr, ptr %0, align 8, !tbaa !103
  %27 = getelementptr inbounds %struct.tree_decl_non_common, ptr %26, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !73
  %29 = icmp eq ptr %28, null
  br i1 %29, label %38, label %30, !prof !104

30:                                               ; preds = %22, %30
  %31 = phi i64 [ %34, %30 ], [ 0, %22 ]
  %32 = phi ptr [ %36, %30 ], [ %28, %22 ]
  %33 = getelementptr inbounds %struct.ipa_param_descriptor, ptr %25, i64 %31, i32 1
  store ptr %32, ptr %33, align 8, !tbaa !108
  %34 = add nuw i64 %31, 1
  %35 = getelementptr inbounds %struct.tree_common, ptr %32, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !73
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %30, !prof !105, !llvm.loop !111

38:                                               ; preds = %30, %22, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ipa_detect_param_modifications(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !prof !99 {
  %2 = load ptr, ptr %0, align 8, !tbaa !103
  %3 = load ptr, ptr @ipa_node_params_vector, align 8
  %4 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 24
  %5 = load i32, ptr %4, align 8, !tbaa !87
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds %struct.VEC_ipa_node_params_t_base, ptr %3, i64 0, i32 2, i64 %6
  %8 = load i32, ptr %7, align 8, !tbaa !107
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %63, label %10, !prof !95

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.VEC_ipa_node_params_t_base, ptr %3, i64 0, i32 2, i64 %6, i32 5
  %12 = load i8, ptr %11, align 8
  %13 = and i8 %12, 2
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %63, !prof !102

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.tree_function_decl, ptr %2, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !73
  %18 = getelementptr inbounds %struct.function, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !112
  %20 = load ptr, ptr %19, align 8, !tbaa !114
  %21 = getelementptr inbounds %struct.basic_block_def, ptr %20, i64 0, i32 6
  %22 = load ptr, ptr %21, align 8, !tbaa !116
  %23 = getelementptr inbounds %struct.control_flow_graph, ptr %19, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !118
  %25 = icmp eq ptr %22, %24
  br i1 %25, label %60, label %33, !prof !104

26:                                               ; preds = %53, %50
  %27 = getelementptr inbounds %struct.basic_block_def, ptr %34, i64 0, i32 6
  %28 = load ptr, ptr %27, align 8, !tbaa !116
  %29 = load ptr, ptr %18, align 8, !tbaa !112
  %30 = getelementptr inbounds %struct.control_flow_graph, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !118
  %32 = icmp eq ptr %28, %31
  br i1 %32, label %60, label %33, !prof !119, !llvm.loop !120

33:                                               ; preds = %15, %26
  %34 = phi ptr [ %28, %26 ], [ %22, %15 ]
  %35 = getelementptr inbounds %struct.basic_block_def, ptr %34, i64 0, i32 13
  %36 = load i32, ptr %35, align 8, !tbaa !121, !noalias !122
  %37 = and i32 %36, 512
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %45, !prof !125

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.basic_block_def, ptr %34, i64 0, i32 7
  %41 = load ptr, ptr %40, align 8, !tbaa !73, !noalias !122
  %42 = icmp eq ptr %41, null
  br i1 %42, label %45, label %43, !prof !126

43:                                               ; preds = %39
  %44 = load ptr, ptr %41, align 8, !tbaa !127, !noalias !122
  br label %45

45:                                               ; preds = %43, %39, %33
  %46 = phi ptr [ %44, %43 ], [ null, %39 ], [ null, %33 ]
  %47 = icmp eq ptr %46, null
  br i1 %47, label %50, label %48, !prof !126

48:                                               ; preds = %45
  %49 = load ptr, ptr %46, align 8, !tbaa !129, !noalias !122
  br label %50

50:                                               ; preds = %45, %48
  %51 = phi ptr [ %49, %48 ], [ null, %45 ]
  %52 = icmp eq ptr %51, null
  br i1 %52, label %26, label %53, !prof !131

53:                                               ; preds = %50, %53
  %54 = phi ptr [ %58, %53 ], [ %51, %50 ]
  %55 = load ptr, ptr %54, align 8, !tbaa !132
  %56 = tail call zeroext i8 @walk_stmt_load_store_addr_ops(ptr noundef %55, ptr noundef nonnull %7, ptr noundef null, ptr noundef nonnull @visit_store_addr_for_mod_analysis, ptr noundef nonnull @visit_store_addr_for_mod_analysis) #18
  %57 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %54, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !134
  %59 = icmp eq ptr %58, null
  br i1 %59, label %26, label %53, !prof !135, !llvm.loop !136

60:                                               ; preds = %26, %15
  %61 = load i8, ptr %11, align 8
  %62 = or i8 %61, 2
  store i8 %62, ptr %11, align 8
  br label %63

63:                                               ; preds = %1, %10, %60
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #13

declare zeroext i8 @walk_stmt_load_store_addr_ops(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef zeroext i8 @visit_store_addr_for_mod_analysis(ptr nocapture readnone %0, ptr noundef readonly %1, ptr nocapture noundef readonly %2) #10 !prof !137 !PGOFuncName !138 {
  %4 = load i64, ptr %1, align 8
  %5 = and i64 %4, 65535
  %6 = icmp eq i64 %5, 34
  br i1 %6, label %7, label %35, !prof !139

7:                                                ; preds = %3
  %8 = load i32, ptr %2, align 8, !tbaa !107
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %24

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.ipa_node_params, ptr %2, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !100
  %13 = zext nneg i32 %8 to i64
  br label %14

14:                                               ; preds = %10, %19
  %15 = phi i64 [ 0, %10 ], [ %20, %19 ]
  %16 = getelementptr inbounds %struct.ipa_param_descriptor, ptr %12, i64 %15, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !108
  %18 = icmp eq ptr %17, %1
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = add nuw nsw i64 %15, 1
  %21 = icmp eq i64 %20, %13
  br i1 %21, label %24, label %14, !llvm.loop !140

22:                                               ; preds = %14
  %23 = trunc i64 %15 to i32
  br label %24

24:                                               ; preds = %22, %19, %7
  %25 = phi i32 [ -1, %7 ], [ %23, %22 ], [ -1, %19 ]
  %26 = icmp sgt i32 %25, -1
  br i1 %26, label %28, label %27

27:                                               ; preds = %24
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 205, ptr noundef nonnull @.str.1) #18
  br label %28

28:                                               ; preds = %24, %27
  %29 = getelementptr inbounds %struct.ipa_node_params, ptr %2, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !100
  %31 = sext i32 %25 to i64
  %32 = getelementptr inbounds %struct.ipa_param_descriptor, ptr %30, i64 %31, i32 2
  %33 = load i8, ptr %32, align 8
  %34 = or i8 %33, 1
  store i8 %34, ptr %32, align 8
  br label %35

35:                                               ; preds = %28, %3
  ret i8 0
}

; Function Attrs: nounwind uwtable
define dso_local void @ipa_count_arguments(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !prof !141 {
  %2 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !142
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 255
  %6 = icmp eq i32 %5, 8
  br i1 %6, label %8, label %7, !prof !144

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 249, ptr noundef nonnull @.str.1) #18
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds %struct.gimple_statement_base, ptr %3, i64 0, i32 3
  %10 = load i32, ptr %9, align 4, !tbaa !73
  %11 = load ptr, ptr @ipa_edge_args_vector, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13, !prof !145

13:                                               ; preds = %8
  %14 = load i32, ptr %11, align 8, !tbaa !146
  br label %15

15:                                               ; preds = %8, %13
  %16 = phi i32 [ %14, %13 ], [ 0, %8 ]
  %17 = load i32, ptr @cgraph_edge_max_uid, align 4, !tbaa !77
  %18 = icmp ugt i32 %16, %17
  br i1 %18, label %50, label %19, !prof !144

19:                                               ; preds = %15
  %20 = add nsw i32 %17, 1
  br i1 %12, label %23, label %21

21:                                               ; preds = %19
  %22 = load i32, ptr %11, align 8, !tbaa !146
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %22, %21 ], [ 0, %19 ]
  br i1 %12, label %27, label %25

25:                                               ; preds = %23
  %26 = load i32, ptr %11, align 8, !tbaa !146
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i32 [ %26, %25 ], [ 0, %23 ]
  %29 = sub nsw i32 %20, %28
  br i1 %12, label %36, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.VEC_ipa_edge_args_t_base, ptr %11, i64 0, i32 1
  %32 = load i32, ptr %31, align 4, !tbaa !148
  %33 = load i32, ptr %11, align 8, !tbaa !146
  %34 = sub i32 %32, %33
  %35 = icmp uge i32 %34, %29
  br label %38

36:                                               ; preds = %27
  %37 = icmp eq i32 %28, %20
  br label %38

38:                                               ; preds = %36, %30
  %39 = phi i1 [ %35, %30 ], [ %37, %36 ]
  br i1 %39, label %42, label %40

40:                                               ; preds = %38
  %41 = tail call ptr @vec_gc_o_reserve_exact(ptr noundef %11, i32 noundef %29, i64 noundef 8, i64 noundef 16) #18
  store ptr %41, ptr @ipa_edge_args_vector, align 8, !tbaa !62
  br label %42

42:                                               ; preds = %38, %40
  %43 = load ptr, ptr @ipa_edge_args_vector, align 8, !tbaa !62, !nonnull !149, !noundef !149
  store i32 %20, ptr %43, align 8, !tbaa !146
  %44 = getelementptr inbounds %struct.VEC_ipa_edge_args_t_base, ptr %43, i64 0, i32 2
  %45 = sext i32 %24 to i64
  %46 = getelementptr inbounds %struct.ipa_edge_args, ptr %44, i64 %45
  %47 = sub nsw i32 %20, %24
  %48 = sext i32 %47 to i64
  %49 = shl nsw i64 %48, 4
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %46, i8 0, i64 %49, i1 false)
  br label %50

50:                                               ; preds = %42, %15
  %51 = add i32 %10, -3
  %52 = load ptr, ptr @ipa_edge_args_vector, align 8
  %53 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 12
  %54 = load i32, ptr %53, align 4, !tbaa !150
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.VEC_ipa_edge_args_t_base, ptr %52, i64 0, i32 2, i64 %55
  store i32 %51, ptr %56, align 8, !tbaa !151
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @ipa_print_node_jump_functions(ptr noundef %0, ptr noundef %1) local_unnamed_addr #9 !prof !61 {
  %3 = tail call ptr @cgraph_node_name(ptr noundef %1) #18
  %4 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef %3)
  %5 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = icmp eq ptr %6, null
  br i1 %7, label %93, label %8

8:                                                ; preds = %2, %89
  %9 = phi ptr [ %91, %89 ], [ %6, %2 ]
  %10 = getelementptr inbounds %struct.cgraph_edge, ptr %9, i64 0, i32 12
  %11 = load i32, ptr %10, align 4, !tbaa !150
  %12 = load ptr, ptr @ipa_edge_args_vector, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %8
  %15 = load i32, ptr %12, align 8, !tbaa !146
  br label %16

16:                                               ; preds = %8, %14
  %17 = phi i32 [ %15, %14 ], [ 0, %8 ]
  %18 = icmp ult i32 %11, %17
  br i1 %18, label %19, label %89

19:                                               ; preds = %16
  %20 = tail call ptr @cgraph_node_name(ptr noundef %1) #18
  %21 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef %20)
  %22 = getelementptr inbounds %struct.cgraph_edge, ptr %9, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !153
  %24 = tail call ptr @cgraph_node_name(ptr noundef %23) #18
  %25 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef %24)
  %26 = load ptr, ptr @ipa_edge_args_vector, align 8
  %27 = load i32, ptr %10, align 4, !tbaa !150
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.VEC_ipa_edge_args_t_base, ptr %26, i64 0, i32 2, i64 %28
  %30 = load i32, ptr %29, align 8, !tbaa !151
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %89

32:                                               ; preds = %19
  %33 = zext nneg i32 %30 to i64
  br label %34

34:                                               ; preds = %32, %86
  %35 = phi i64 [ 0, %32 ], [ %87, %86 ]
  %36 = load ptr, ptr @ipa_edge_args_vector, align 8
  %37 = load i32, ptr %10, align 4, !tbaa !150
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.VEC_ipa_edge_args_t_base, ptr %36, i64 0, i32 2, i64 %38, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !154
  %41 = getelementptr inbounds %struct.ipa_jump_func, ptr %40, i64 %35
  %42 = load i32, ptr %41, align 8, !tbaa !155
  %43 = trunc i64 %35 to i32
  %44 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.5, i32 noundef %43)
  switch i32 %42, label %86 [
    i32 0, label %45
    i32 1, label %47
    i32 2, label %52
    i32 3, label %60
    i32 4, label %79
  ]

45:                                               ; preds = %34
  %46 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 8, i64 1, ptr %0)
  br label %86

47:                                               ; preds = %34
  %48 = getelementptr inbounds %struct.ipa_jump_func, ptr %40, i64 %35, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !73
  %50 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 7, i64 1, ptr %0)
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %49, i32 noundef 0) #18
  %51 = tail call i32 @fputc(i32 10, ptr %0)
  br label %86

52:                                               ; preds = %34
  %53 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 18, i64 1, ptr %0)
  %54 = getelementptr inbounds %struct.ipa_jump_func, ptr %40, i64 %35, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !73
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %55, i32 noundef 0) #18
  %56 = tail call i64 @fwrite(ptr nonnull @.str.10, i64 2, i64 1, ptr %0)
  %57 = getelementptr inbounds %struct.ipa_jump_func, ptr %40, i64 %35, i32 1, i32 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !73
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %58, i32 noundef 0) #18
  %59 = tail call i32 @fputc(i32 10, ptr %0)
  br label %86

60:                                               ; preds = %34
  %61 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 14, i64 1, ptr %0)
  %62 = getelementptr inbounds %struct.ipa_jump_func, ptr %40, i64 %35, i32 1, i32 0, i32 1
  %63 = load i32, ptr %62, align 8, !tbaa !73
  %64 = getelementptr inbounds i8, ptr %41, i64 20
  %65 = load i32, ptr %64, align 4, !tbaa !73
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [0 x ptr], ptr @tree_code_name, i64 0, i64 %66
  %68 = load ptr, ptr %67, align 8, !tbaa !62
  %69 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.12, i32 noundef %63, ptr noundef %68)
  %70 = load i32, ptr %64, align 4, !tbaa !73
  %71 = icmp eq i32 %70, 116
  br i1 %71, label %76, label %72

72:                                               ; preds = %60
  %73 = getelementptr inbounds %struct.ipa_jump_func, ptr %40, i64 %35, i32 1
  %74 = load ptr, ptr @dump_file, align 8, !tbaa !62
  %75 = load ptr, ptr %73, align 8, !tbaa !73
  tail call void @print_generic_expr(ptr noundef %74, ptr noundef %75, i32 noundef 0) #18
  br label %76

76:                                               ; preds = %72, %60
  %77 = load ptr, ptr @dump_file, align 8, !tbaa !62
  %78 = tail call i32 @fputc(i32 10, ptr %77)
  br label %86

79:                                               ; preds = %34
  %80 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 10, i64 1, ptr %0)
  %81 = getelementptr inbounds %struct.ipa_jump_func, ptr %40, i64 %35, i32 1
  %82 = getelementptr inbounds %struct.ipa_jump_func, ptr %40, i64 %35, i32 1, i32 0, i32 2
  %83 = load i32, ptr %82, align 8, !tbaa !73
  %84 = load i64, ptr %81, align 8, !tbaa !73
  %85 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.14, i32 noundef %83, i64 noundef %84)
  br label %86

86:                                               ; preds = %34, %45, %52, %79, %76, %47
  %87 = add nuw nsw i64 %35, 1
  %88 = icmp eq i64 %87, %33
  br i1 %88, label %89, label %34, !llvm.loop !157

89:                                               ; preds = %86, %19, %16
  %90 = getelementptr inbounds %struct.cgraph_edge, ptr %9, i64 0, i32 6
  %91 = load ptr, ptr %90, align 8, !tbaa !62
  %92 = icmp eq ptr %91, null
  br i1 %92, label %93, label %8, !llvm.loop !158

93:                                               ; preds = %89, %2
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

declare ptr @cgraph_node_name(ptr noundef) local_unnamed_addr #3

declare void @print_generic_expr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @ipa_print_all_jump_functions(ptr noundef %0) local_unnamed_addr #9 !prof !61 {
  %2 = tail call i64 @fwrite(ptr nonnull @.str.15, i64 17, i64 1, ptr %0)
  %3 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !62
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %8, %5 ], [ %3, %1 ]
  tail call void @ipa_print_node_jump_functions(ptr noundef %0, ptr noundef nonnull %6)
  %7 = getelementptr inbounds %struct.cgraph_node, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !62
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %5, !llvm.loop !159

10:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ipa_compute_jump_functions(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !prof !141 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = load ptr, ptr @ipa_node_params_vector, align 8
  %9 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !160
  %11 = getelementptr inbounds %struct.cgraph_node, ptr %10, i64 0, i32 24
  %12 = load i32, ptr %11, align 8, !tbaa !87
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.VEC_ipa_node_params_t_base, ptr %8, i64 0, i32 2, i64 %13
  %15 = load ptr, ptr @ipa_edge_args_vector, align 8
  %16 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 12
  %17 = load i32, ptr %16, align 4, !tbaa !150
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.VEC_ipa_edge_args_t_base, ptr %15, i64 0, i32 2, i64 %18
  %20 = load i32, ptr %19, align 8, !tbaa !151
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %618, label %22, !prof !145

22:                                               ; preds = %1
  %23 = getelementptr inbounds %struct.VEC_ipa_edge_args_t_base, ptr %15, i64 0, i32 2, i64 %18, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !154
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %618, !prof !144

26:                                               ; preds = %22
  %27 = sext i32 %20 to i64
  %28 = shl nsw i64 %27, 5
  %29 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef %28) #18
  store ptr %29, ptr %23, align 8, !tbaa !154
  %30 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 7
  %31 = load ptr, ptr %30, align 8, !tbaa !142
  %32 = load i32, ptr %31, align 8
  %33 = and i32 %32, 255
  %34 = icmp eq i32 %33, 8
  br i1 %34, label %36, label %35, !prof !144

35:                                               ; preds = %26
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 670, ptr noundef nonnull @.str.1) #18
  br label %36

36:                                               ; preds = %26, %35
  %37 = load ptr, ptr %23, align 8, !tbaa !154
  %38 = getelementptr inbounds %struct.gimple_statement_base, ptr %31, i64 0, i32 3
  %39 = load i32, ptr %38, align 4, !tbaa !73
  %40 = icmp eq i32 %39, 3
  br i1 %40, label %291, label %41, !prof !161

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.VEC_ipa_node_params_t_base, ptr %8, i64 0, i32 2, i64 %13, i32 1
  br label %43

43:                                               ; preds = %41, %285
  %44 = phi i64 [ 0, %41 ], [ %286, %285 ]
  %45 = add nuw i64 %44, 3
  %46 = load i32, ptr %31, align 8
  %47 = and i32 %46, 255
  %48 = add nsw i32 %47, -10
  %49 = icmp ult i32 %48, -9
  br i1 %49, label %64, label %50, !prof !145

50:                                               ; preds = %43
  %51 = zext nneg i32 %47 to i64
  %52 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %51
  %53 = load i32, ptr %52, align 4, !tbaa !77
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %54
  %56 = load i64, ptr %55, align 8, !tbaa !162
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %59, !prof !145

58:                                               ; preds = %50
  call void @fancy_abort(ptr noundef nonnull @.str.35, i32 noundef 1622, ptr noundef nonnull @.str.1) #18
  br label %59

59:                                               ; preds = %58, %50
  %60 = getelementptr inbounds i8, ptr %31, i64 %56
  %61 = and i64 %45, 4294967295
  %62 = getelementptr inbounds ptr, ptr %60, i64 %61
  %63 = load ptr, ptr %62, align 8, !tbaa !62
  br label %64

64:                                               ; preds = %59, %43
  %65 = phi ptr [ %63, %59 ], [ null, %43 ]
  %66 = call zeroext i8 @is_gimple_ip_invariant(ptr noundef %65) #18
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %71, label %68, !prof !144

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.ipa_jump_func, ptr %37, i64 %44
  store i32 1, ptr %69, align 8, !tbaa !155
  %70 = getelementptr inbounds %struct.ipa_jump_func, ptr %37, i64 %44, i32 1
  store ptr %65, ptr %70, align 8, !tbaa !73
  br label %285

71:                                               ; preds = %64
  %72 = load i64, ptr %65, align 8
  %73 = and i64 %72, 65535
  %74 = icmp eq i64 %73, 141
  br i1 %74, label %75, label %285, !prof !144

75:                                               ; preds = %71
  %76 = and i64 %72, 4294967296
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %104, label %78, !prof !145

78:                                               ; preds = %75
  %79 = getelementptr inbounds %struct.tree_ssa_name, ptr %65, i64 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !73
  %81 = load i32, ptr %14, align 8, !tbaa !107
  %82 = icmp sgt i32 %81, 0
  br i1 %82, label %83, label %96, !prof !163

83:                                               ; preds = %78
  %84 = load ptr, ptr %42, align 8, !tbaa !100
  br label %85

85:                                               ; preds = %83, %90
  %86 = phi i64 [ 0, %83 ], [ %92, %90 ]
  %87 = getelementptr inbounds %struct.ipa_param_descriptor, ptr %84, i64 %86, i32 1
  %88 = load ptr, ptr %87, align 8, !tbaa !108
  %89 = icmp eq ptr %88, %80
  br i1 %89, label %94, label %90, !prof !144

90:                                               ; preds = %85
  %91 = zext nneg i32 %81 to i64
  %92 = add nuw nsw i64 %86, 1
  %93 = icmp eq i64 %92, %91
  br i1 %93, label %96, label %85, !prof !145, !llvm.loop !140

94:                                               ; preds = %85
  %95 = trunc i64 %86 to i32
  br label %96

96:                                               ; preds = %94, %90, %78
  %97 = phi i32 [ -1, %78 ], [ %95, %94 ], [ -1, %90 ]
  %98 = icmp sgt i32 %97, -1
  br i1 %98, label %99, label %285, !prof !144

99:                                               ; preds = %96
  %100 = getelementptr inbounds %struct.ipa_jump_func, ptr %37, i64 %44
  store i32 3, ptr %100, align 8, !tbaa !155
  %101 = getelementptr inbounds %struct.ipa_jump_func, ptr %37, i64 %44, i32 1
  %102 = getelementptr inbounds %struct.ipa_pass_through_data, ptr %101, i64 0, i32 1
  store i32 %97, ptr %102, align 8, !tbaa !73
  %103 = getelementptr inbounds %struct.ipa_pass_through_data, ptr %101, i64 0, i32 2
  store i32 116, ptr %103, align 4, !tbaa !73
  br label %285

104:                                              ; preds = %75
  %105 = getelementptr inbounds %struct.ipa_jump_func, ptr %37, i64 %44
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #18
  %106 = getelementptr inbounds %struct.tree_ssa_name, ptr %65, i64 0, i32 2
  %107 = load ptr, ptr %106, align 8, !tbaa !73
  %108 = load i32, ptr %107, align 8
  %109 = and i32 %108, 255
  %110 = icmp eq i32 %109, 6
  br i1 %110, label %111, label %284

111:                                              ; preds = %104
  %112 = zext nneg i32 %109 to i64
  %113 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %112
  %114 = load i32, ptr %113, align 4, !tbaa !77
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %115
  %117 = load i64, ptr %116, align 8, !tbaa !162
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %111
  call void @fancy_abort(ptr noundef nonnull @.str.35, i32 noundef 1622, ptr noundef nonnull @.str.1) #18
  br label %120

120:                                              ; preds = %119, %111
  %121 = getelementptr inbounds i8, ptr %107, i64 %117
  %122 = getelementptr inbounds ptr, ptr %121, i64 1
  %123 = load ptr, ptr %122, align 8, !tbaa !62
  %124 = getelementptr inbounds %struct.gimple_statement_base, ptr %107, i64 0, i32 3
  %125 = load i32, ptr %124, align 4, !tbaa !73
  %126 = icmp ugt i32 %125, 2
  br i1 %126, label %127, label %145

127:                                              ; preds = %120
  %128 = load i32, ptr %107, align 8
  %129 = and i32 %128, 255
  %130 = add nsw i32 %129, -10
  %131 = icmp ult i32 %130, -9
  br i1 %131, label %145, label %132

132:                                              ; preds = %127
  %133 = zext nneg i32 %129 to i64
  %134 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %133
  %135 = load i32, ptr %134, align 4, !tbaa !77
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %136
  %138 = load i64, ptr %137, align 8, !tbaa !162
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %132
  call void @fancy_abort(ptr noundef nonnull @.str.35, i32 noundef 1622, ptr noundef nonnull @.str.1) #18
  br label %141

141:                                              ; preds = %140, %132
  %142 = getelementptr inbounds i8, ptr %107, i64 %138
  %143 = getelementptr inbounds ptr, ptr %142, i64 2
  %144 = load ptr, ptr %143, align 8, !tbaa !62
  br label %145

145:                                              ; preds = %141, %127, %120
  %146 = phi ptr [ null, %120 ], [ %144, %141 ], [ null, %127 ]
  %147 = icmp eq ptr %146, null
  %148 = load i64, ptr %123, align 8
  br i1 %147, label %233, label %149

149:                                              ; preds = %145
  %150 = and i64 %148, 4295032831
  %151 = icmp eq i64 %150, 4294967437
  br i1 %151, label %152, label %284

152:                                              ; preds = %149
  %153 = load i32, ptr %107, align 8
  %154 = trunc i32 %153 to i8
  switch i8 %154, label %158 [
    i8 6, label %155
    i8 1, label %155
    i8 8, label %159
  ]

155:                                              ; preds = %152, %152
  %156 = lshr i32 %153, 16
  %157 = zext nneg i32 %156 to i64
  br label %159

158:                                              ; preds = %152
  call void @fancy_abort(ptr noundef nonnull @.str.35, i32 noundef 1446, ptr noundef nonnull @.str.1) #18
  br label %159

159:                                              ; preds = %158, %155, %152
  %160 = phi i64 [ %157, %155 ], [ 0, %158 ], [ 59, %152 ]
  %161 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %160
  %162 = load i32, ptr %161, align 4, !tbaa !77
  %163 = icmp eq i32 %162, 5
  br i1 %163, label %171, label %164

164:                                              ; preds = %159
  %165 = getelementptr inbounds %struct.tree_common, ptr %65, i64 0, i32 2
  %166 = load ptr, ptr %165, align 8, !tbaa !73
  %167 = getelementptr inbounds %struct.tree_common, ptr %123, i64 0, i32 2
  %168 = load ptr, ptr %167, align 8, !tbaa !73
  %169 = call zeroext i8 @useless_type_conversion_p(ptr noundef %166, ptr noundef %168) #18
  %170 = icmp eq i8 %169, 0
  br i1 %170, label %284, label %171

171:                                              ; preds = %164, %159
  %172 = call zeroext i8 @is_gimple_ip_invariant(ptr noundef nonnull %146) #18
  %173 = icmp eq i8 %172, 0
  br i1 %173, label %284, label %174

174:                                              ; preds = %171
  %175 = getelementptr inbounds %struct.tree_ssa_name, ptr %123, i64 0, i32 1
  %176 = load ptr, ptr %175, align 8, !tbaa !73
  %177 = load i32, ptr %14, align 8, !tbaa !107
  %178 = icmp sgt i32 %177, 0
  br i1 %178, label %179, label %193

179:                                              ; preds = %174
  %180 = getelementptr inbounds %struct.VEC_ipa_node_params_t_base, ptr %8, i64 0, i32 2, i64 %13, i32 1
  %181 = load ptr, ptr %180, align 8, !tbaa !100
  %182 = zext nneg i32 %177 to i64
  br label %183

183:                                              ; preds = %179, %188
  %184 = phi i64 [ 0, %179 ], [ %189, %188 ]
  %185 = getelementptr inbounds %struct.ipa_param_descriptor, ptr %181, i64 %184, i32 1
  %186 = load ptr, ptr %185, align 8, !tbaa !108
  %187 = icmp eq ptr %186, %176
  br i1 %187, label %191, label %188

188:                                              ; preds = %183
  %189 = add nuw nsw i64 %184, 1
  %190 = icmp eq i64 %189, %182
  br i1 %190, label %193, label %183, !llvm.loop !140

191:                                              ; preds = %183
  %192 = trunc i64 %184 to i32
  br label %193

193:                                              ; preds = %191, %188, %174
  %194 = phi i32 [ -1, %174 ], [ %192, %191 ], [ -1, %188 ]
  %195 = icmp sgt i32 %194, -1
  br i1 %195, label %196, label %284

196:                                              ; preds = %193
  store i32 3, ptr %105, align 8, !tbaa !155
  %197 = getelementptr inbounds %struct.ipa_jump_func, ptr %37, i64 %44, i32 1
  %198 = getelementptr inbounds %struct.ipa_jump_func, ptr %37, i64 %44, i32 1, i32 0, i32 1
  store i32 %194, ptr %198, align 8, !tbaa !73
  %199 = load i32, ptr %107, align 8
  %200 = trunc i32 %199 to i8
  switch i8 %200, label %203 [
    i8 6, label %201
    i8 1, label %201
    i8 8, label %204
  ]

201:                                              ; preds = %196, %196
  %202 = lshr i32 %199, 16
  br label %204

203:                                              ; preds = %196
  call void @fancy_abort(ptr noundef nonnull @.str.35, i32 noundef 1446, ptr noundef nonnull @.str.1) #18
  br label %204

204:                                              ; preds = %203, %201, %196
  %205 = phi i32 [ %202, %201 ], [ 0, %203 ], [ 59, %196 ]
  %206 = zext nneg i32 %205 to i64
  %207 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %206
  %208 = load i8, ptr %207, align 1, !tbaa !73
  %209 = icmp eq i8 %208, 3
  br i1 %209, label %210, label %230

210:                                              ; preds = %204
  %211 = load i32, ptr %107, align 8
  %212 = and i32 %211, 255
  %213 = add nsw i32 %212, -1
  %214 = icmp ult i32 %213, 9
  call void @llvm.assume(i1 %214)
  %215 = zext nneg i32 %212 to i64
  %216 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %215
  %217 = load i32, ptr %216, align 4, !tbaa !77
  %218 = zext i32 %217 to i64
  %219 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %218
  %220 = load i64, ptr %219, align 8, !tbaa !162
  %221 = icmp eq i64 %220, 0
  br i1 %221, label %222, label %223

222:                                              ; preds = %210
  call void @fancy_abort(ptr noundef nonnull @.str.35, i32 noundef 1622, ptr noundef nonnull @.str.1) #18
  br label %223

223:                                              ; preds = %222, %210
  %224 = getelementptr inbounds i8, ptr %107, i64 %220
  %225 = getelementptr inbounds ptr, ptr %224, i64 1
  %226 = load ptr, ptr %225, align 8, !tbaa !62
  %227 = load i64, ptr %226, align 8
  %228 = trunc i64 %227 to i32
  %229 = and i32 %228, 65535
  br label %230

230:                                              ; preds = %223, %204
  %231 = phi i32 [ %229, %223 ], [ %205, %204 ]
  %232 = getelementptr inbounds i8, ptr %105, i64 20
  store i32 %231, ptr %232, align 4, !tbaa !73
  store ptr %146, ptr %197, align 8, !tbaa !73
  br label %284

233:                                              ; preds = %145
  %234 = and i64 %148, 65535
  %235 = icmp eq i64 %234, 121
  br i1 %235, label %236, label %284

236:                                              ; preds = %233
  %237 = getelementptr inbounds %struct.tree_exp, ptr %123, i64 0, i32 3
  %238 = load ptr, ptr %237, align 8, !tbaa !73
  %239 = getelementptr inbounds %struct.tree_common, ptr %238, i64 0, i32 2
  %240 = load ptr, ptr %239, align 8, !tbaa !73
  %241 = call ptr @get_ref_base_and_extent(ptr noundef %238, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #18
  %242 = load i64, ptr %241, align 8
  %243 = and i64 %242, 65535
  %244 = icmp eq i64 %243, 47
  %245 = load i64, ptr %7, align 8
  %246 = icmp ne i64 %245, -1
  %247 = select i1 %244, i1 %246, i1 false
  %248 = load i64, ptr %6, align 8
  %249 = icmp eq i64 %245, %248
  %250 = select i1 %247, i1 %249, i1 false
  br i1 %250, label %251, label %284

251:                                              ; preds = %236
  %252 = getelementptr inbounds %struct.tree_exp, ptr %241, i64 0, i32 3
  %253 = load ptr, ptr %252, align 8, !tbaa !73
  %254 = load i64, ptr %253, align 8
  %255 = and i64 %254, 4295032831
  %256 = icmp eq i64 %255, 4294967437
  br i1 %256, label %257, label %284

257:                                              ; preds = %251
  %258 = getelementptr inbounds %struct.tree_ssa_name, ptr %253, i64 0, i32 1
  %259 = load ptr, ptr %258, align 8, !tbaa !73
  %260 = load i32, ptr %14, align 8, !tbaa !107
  %261 = icmp sgt i32 %260, 0
  br i1 %261, label %262, label %276

262:                                              ; preds = %257
  %263 = getelementptr inbounds %struct.VEC_ipa_node_params_t_base, ptr %8, i64 0, i32 2, i64 %13, i32 1
  %264 = load ptr, ptr %263, align 8, !tbaa !100
  %265 = zext nneg i32 %260 to i64
  br label %266

266:                                              ; preds = %262, %271
  %267 = phi i64 [ 0, %262 ], [ %272, %271 ]
  %268 = getelementptr inbounds %struct.ipa_param_descriptor, ptr %264, i64 %267, i32 1
  %269 = load ptr, ptr %268, align 8, !tbaa !108
  %270 = icmp eq ptr %269, %259
  br i1 %270, label %274, label %271

271:                                              ; preds = %266
  %272 = add nuw nsw i64 %267, 1
  %273 = icmp eq i64 %272, %265
  br i1 %273, label %276, label %266, !llvm.loop !140

274:                                              ; preds = %266
  %275 = trunc i64 %267 to i32
  br label %276

276:                                              ; preds = %274, %271, %257
  %277 = phi i32 [ -1, %257 ], [ %275, %274 ], [ -1, %271 ]
  %278 = icmp sgt i32 %277, -1
  br i1 %278, label %279, label %284

279:                                              ; preds = %276
  store i32 4, ptr %105, align 8, !tbaa !155
  %280 = getelementptr inbounds %struct.ipa_jump_func, ptr %37, i64 %44, i32 1
  %281 = getelementptr inbounds %struct.ipa_jump_func, ptr %37, i64 %44, i32 1, i32 0, i32 2
  store i32 %277, ptr %281, align 8, !tbaa !73
  %282 = load i64, ptr %5, align 8, !tbaa !162
  store i64 %282, ptr %280, align 8, !tbaa !73
  %283 = getelementptr inbounds %struct.ipa_jump_func, ptr %37, i64 %44, i32 1, i32 0, i32 1
  store ptr %240, ptr %283, align 8, !tbaa !73
  br label %284

284:                                              ; preds = %164, %279, %276, %251, %236, %233, %230, %193, %171, %149, %104
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #18
  br label %285

285:                                              ; preds = %284, %99, %96, %71, %68
  %286 = add nuw nsw i64 %44, 1
  %287 = load i32, ptr %38, align 4, !tbaa !73
  %288 = add i32 %287, -3
  %289 = zext i32 %288 to i64
  %290 = icmp ult i64 %286, %289
  br i1 %290, label %43, label %291, !prof !161, !llvm.loop !164

291:                                              ; preds = %285, %36
  %292 = getelementptr inbounds %struct.gimple_statement_base, ptr %31, i64 0, i32 3
  %293 = load ptr, ptr %23, align 8, !tbaa !154
  %294 = load i32, ptr %292, align 4, !tbaa !73
  %295 = icmp eq i32 %294, 3
  br i1 %295, label %618, label %296, !prof !161

296:                                              ; preds = %291, %396
  %297 = phi i64 [ %398, %396 ], [ 0, %291 ]
  %298 = phi i8 [ %397, %396 ], [ 0, %291 ]
  %299 = add nuw i64 %297, 3
  %300 = load i32, ptr %31, align 8
  %301 = and i32 %300, 255
  %302 = add nsw i32 %301, -10
  %303 = icmp ult i32 %302, -9
  br i1 %303, label %318, label %304, !prof !145

304:                                              ; preds = %296
  %305 = zext nneg i32 %301 to i64
  %306 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %305
  %307 = load i32, ptr %306, align 4, !tbaa !77
  %308 = zext i32 %307 to i64
  %309 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %308
  %310 = load i64, ptr %309, align 8, !tbaa !162
  %311 = icmp eq i64 %310, 0
  br i1 %311, label %312, label %313, !prof !145

312:                                              ; preds = %304
  call void @fancy_abort(ptr noundef nonnull @.str.35, i32 noundef 1622, ptr noundef nonnull @.str.1) #18
  br label %313

313:                                              ; preds = %312, %304
  %314 = getelementptr inbounds i8, ptr %31, i64 %310
  %315 = and i64 %299, 4294967295
  %316 = getelementptr inbounds ptr, ptr %314, i64 %315
  %317 = load ptr, ptr %316, align 8, !tbaa !62
  br label %318

318:                                              ; preds = %313, %296
  %319 = phi ptr [ %317, %313 ], [ null, %296 ]
  %320 = getelementptr inbounds %struct.tree_common, ptr %319, i64 0, i32 2
  %321 = load ptr, ptr %320, align 8, !tbaa !73
  %322 = load i64, ptr %321, align 8
  %323 = and i64 %322, 65535
  %324 = icmp eq i64 %323, 16
  br i1 %324, label %325, label %355, !prof !145

325:                                              ; preds = %318
  %326 = getelementptr inbounds %struct.tree_type, ptr %321, i64 0, i32 1
  %327 = load ptr, ptr %326, align 8, !tbaa !73
  %328 = icmp eq ptr %327, null
  br i1 %328, label %355, label %329

329:                                              ; preds = %325
  %330 = getelementptr inbounds %struct.tree_common, ptr %327, i64 0, i32 2
  %331 = load ptr, ptr %330, align 8, !tbaa !73
  %332 = load i64, ptr %331, align 8
  %333 = trunc i64 %332 to i16
  switch i16 %333, label %355 [
    i16 10, label %334
    i16 12, label %334
  ]

334:                                              ; preds = %329, %329
  %335 = getelementptr inbounds %struct.tree_common, ptr %331, i64 0, i32 2
  %336 = load ptr, ptr %335, align 8, !tbaa !73
  %337 = load i64, ptr %336, align 8
  %338 = and i64 %337, 65535
  %339 = icmp eq i64 %338, 21
  br i1 %339, label %340, label %355

340:                                              ; preds = %334
  %341 = getelementptr inbounds %struct.tree_common, ptr %327, i64 0, i32 1
  %342 = load ptr, ptr %341, align 8, !tbaa !73
  %343 = icmp eq ptr %342, null
  br i1 %343, label %355, label %344

344:                                              ; preds = %340
  %345 = load i64, ptr %342, align 8
  %346 = trunc i64 %345 to i32
  %347 = and i32 %346, 65535
  %348 = add nsw i32 %347, -6
  %349 = icmp ult i32 %348, 3
  br i1 %349, label %355, label %350

350:                                              ; preds = %344
  %351 = getelementptr inbounds %struct.tree_common, ptr %342, i64 0, i32 1
  %352 = load ptr, ptr %351, align 8, !tbaa !73
  %353 = icmp eq ptr %352, null
  %354 = zext i1 %353 to i8
  br label %355

355:                                              ; preds = %318, %325, %329, %334, %340, %344, %350
  %356 = phi i8 [ 0, %318 ], [ 0, %329 ], [ 0, %325 ], [ 0, %344 ], [ 0, %340 ], [ %354, %350 ], [ 0, %334 ]
  %357 = icmp eq i8 %356, 0
  br i1 %357, label %396, label %358, !prof !144

358:                                              ; preds = %355
  %359 = load i64, ptr %319, align 8
  %360 = and i64 %359, 65535
  %361 = icmp eq i64 %360, 34
  br i1 %361, label %362, label %396

362:                                              ; preds = %358
  %363 = load i32, ptr %14, align 8, !tbaa !107
  %364 = icmp sgt i32 %363, 0
  br i1 %364, label %365, label %379

365:                                              ; preds = %362
  %366 = getelementptr inbounds %struct.VEC_ipa_node_params_t_base, ptr %8, i64 0, i32 2, i64 %13, i32 1
  %367 = load ptr, ptr %366, align 8, !tbaa !100
  %368 = zext nneg i32 %363 to i64
  br label %369

369:                                              ; preds = %365, %374
  %370 = phi i64 [ 0, %365 ], [ %375, %374 ]
  %371 = getelementptr inbounds %struct.ipa_param_descriptor, ptr %367, i64 %370, i32 1
  %372 = load ptr, ptr %371, align 8, !tbaa !108
  %373 = icmp eq ptr %372, %319
  br i1 %373, label %377, label %374

374:                                              ; preds = %369
  %375 = add nuw nsw i64 %370, 1
  %376 = icmp eq i64 %375, %368
  br i1 %376, label %379, label %369, !llvm.loop !140

377:                                              ; preds = %369
  %378 = trunc i64 %370 to i32
  br label %379

379:                                              ; preds = %377, %374, %362
  %380 = phi i32 [ -1, %362 ], [ %378, %377 ], [ -1, %374 ]
  %381 = icmp sgt i32 %380, -1
  br i1 %381, label %383, label %382

382:                                              ; preds = %379
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 506, ptr noundef nonnull @.str.1) #18
  br label %383

383:                                              ; preds = %382, %379
  %384 = getelementptr inbounds %struct.VEC_ipa_node_params_t_base, ptr %8, i64 0, i32 2, i64 %13, i32 1
  %385 = load ptr, ptr %384, align 8, !tbaa !100
  %386 = sext i32 %380 to i64
  %387 = getelementptr inbounds %struct.ipa_param_descriptor, ptr %385, i64 %386, i32 2
  %388 = load i8, ptr %387, align 8
  %389 = and i8 %388, 1
  %390 = icmp eq i8 %389, 0
  br i1 %390, label %391, label %396

391:                                              ; preds = %383
  %392 = getelementptr inbounds %struct.ipa_jump_func, ptr %293, i64 %297
  store i32 3, ptr %392, align 8, !tbaa !155
  %393 = getelementptr inbounds %struct.ipa_jump_func, ptr %293, i64 %297, i32 1
  %394 = getelementptr inbounds %struct.ipa_pass_through_data, ptr %393, i64 0, i32 1
  store i32 %380, ptr %394, align 8, !tbaa !73
  %395 = getelementptr inbounds %struct.ipa_pass_through_data, ptr %393, i64 0, i32 2
  store i32 116, ptr %395, align 4, !tbaa !73
  br label %396

396:                                              ; preds = %391, %383, %358, %355
  %397 = phi i8 [ %298, %355 ], [ %298, %391 ], [ 1, %383 ], [ 1, %358 ]
  %398 = add nuw nsw i64 %297, 1
  %399 = load i32, ptr %292, align 4, !tbaa !73
  %400 = add i32 %399, -3
  %401 = zext i32 %400 to i64
  %402 = icmp ult i64 %398, %401
  br i1 %402, label %296, label %403, !prof !161, !llvm.loop !165

403:                                              ; preds = %396
  %404 = icmp eq i8 %397, 0
  br i1 %404, label %618, label %405, !prof !144

405:                                              ; preds = %403
  %406 = load ptr, ptr %23, align 8, !tbaa !154
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #18
  %407 = load i32, ptr %292, align 4, !tbaa !73
  %408 = icmp eq i32 %407, 3
  br i1 %408, label %617, label %409

409:                                              ; preds = %405, %611
  %410 = phi i64 [ %612, %611 ], [ 0, %405 ]
  %411 = add nuw i64 %410, 3
  %412 = load i32, ptr %31, align 8
  %413 = and i32 %412, 255
  %414 = add nsw i32 %413, -10
  %415 = icmp ult i32 %414, -9
  br i1 %415, label %430, label %416

416:                                              ; preds = %409
  %417 = zext nneg i32 %413 to i64
  %418 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %417
  %419 = load i32, ptr %418, align 4, !tbaa !77
  %420 = zext i32 %419 to i64
  %421 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %420
  %422 = load i64, ptr %421, align 8, !tbaa !162
  %423 = icmp eq i64 %422, 0
  br i1 %423, label %424, label %425

424:                                              ; preds = %416
  call void @fancy_abort(ptr noundef nonnull @.str.35, i32 noundef 1622, ptr noundef nonnull @.str.1) #18
  br label %425

425:                                              ; preds = %424, %416
  %426 = getelementptr inbounds i8, ptr %31, i64 %422
  %427 = and i64 %411, 4294967295
  %428 = getelementptr inbounds ptr, ptr %426, i64 %427
  %429 = load ptr, ptr %428, align 8, !tbaa !62
  br label %430

430:                                              ; preds = %425, %409
  %431 = phi ptr [ %429, %425 ], [ null, %409 ]
  %432 = getelementptr inbounds %struct.ipa_jump_func, ptr %406, i64 %410
  %433 = load i32, ptr %432, align 8, !tbaa !155
  %434 = icmp eq i32 %433, 0
  br i1 %434, label %435, label %611

435:                                              ; preds = %430
  %436 = getelementptr inbounds %struct.tree_common, ptr %431, i64 0, i32 2
  %437 = load ptr, ptr %436, align 8, !tbaa !73
  %438 = call fastcc zeroext i8 @type_like_member_ptr_p(ptr noundef %437, ptr noundef nonnull %3, ptr noundef nonnull %4), !range !166
  %439 = icmp eq i8 %438, 0
  br i1 %439, label %611, label %440

440:                                              ; preds = %435
  %441 = load ptr, ptr %3, align 8, !tbaa !62
  %442 = load ptr, ptr %4, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #18
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef nonnull %31) #18
  %443 = load ptr, ptr %2, align 8, !tbaa.struct !167
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #18
  %444 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %443, i64 0, i32 1
  %445 = load ptr, ptr %444, align 8, !tbaa !168
  %446 = icmp eq ptr %445, null
  br i1 %446, label %611, label %447

447:                                              ; preds = %440, %607
  %448 = phi ptr [ %609, %607 ], [ %445, %440 ]
  %449 = phi ptr [ %605, %607 ], [ null, %440 ]
  %450 = phi ptr [ %604, %607 ], [ null, %440 ]
  %451 = load ptr, ptr %448, align 8, !tbaa !132
  %452 = call zeroext i8 @gimple_assign_single_p(ptr noundef %451) #18
  %453 = icmp eq i8 %452, 0
  br i1 %453, label %603, label %454

454:                                              ; preds = %447
  %455 = load i32, ptr %451, align 8
  %456 = and i32 %455, 255
  %457 = add nsw i32 %456, -10
  %458 = icmp ult i32 %457, -9
  br i1 %458, label %471, label %459

459:                                              ; preds = %454
  %460 = zext nneg i32 %456 to i64
  %461 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %460
  %462 = load i32, ptr %461, align 4, !tbaa !77
  %463 = zext i32 %462 to i64
  %464 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %463
  %465 = load i64, ptr %464, align 8, !tbaa !162
  %466 = icmp eq i64 %465, 0
  br i1 %466, label %467, label %468

467:                                              ; preds = %459
  call void @fancy_abort(ptr noundef nonnull @.str.35, i32 noundef 1622, ptr noundef nonnull @.str.1) #18
  br label %468

468:                                              ; preds = %467, %459
  %469 = getelementptr inbounds i8, ptr %451, i64 %465
  %470 = load ptr, ptr %469, align 8, !tbaa !62
  br label %471

471:                                              ; preds = %468, %454
  %472 = phi ptr [ %470, %468 ], [ null, %454 ]
  %473 = load i32, ptr %451, align 8
  %474 = and i32 %473, 255
  %475 = add nsw i32 %474, -10
  %476 = icmp ult i32 %475, -9
  br i1 %476, label %490, label %477

477:                                              ; preds = %471
  %478 = zext nneg i32 %474 to i64
  %479 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %478
  %480 = load i32, ptr %479, align 4, !tbaa !77
  %481 = zext i32 %480 to i64
  %482 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %481
  %483 = load i64, ptr %482, align 8, !tbaa !162
  %484 = icmp eq i64 %483, 0
  br i1 %484, label %485, label %486

485:                                              ; preds = %477
  call void @fancy_abort(ptr noundef nonnull @.str.35, i32 noundef 1622, ptr noundef nonnull @.str.1) #18
  br label %486

486:                                              ; preds = %485, %477
  %487 = getelementptr inbounds i8, ptr %451, i64 %483
  %488 = getelementptr inbounds ptr, ptr %487, i64 1
  %489 = load ptr, ptr %488, align 8, !tbaa !62
  br label %490

490:                                              ; preds = %486, %471
  %491 = phi ptr [ %489, %486 ], [ null, %471 ]
  %492 = load i64, ptr %472, align 8
  %493 = and i64 %492, 65535
  %494 = icmp eq i64 %493, 41
  br i1 %494, label %495, label %603

495:                                              ; preds = %490
  %496 = getelementptr inbounds %struct.tree_exp, ptr %472, i64 0, i32 3
  %497 = load ptr, ptr %496, align 8, !tbaa !73
  %498 = icmp eq ptr %497, %431
  br i1 %498, label %499, label %603

499:                                              ; preds = %495
  %500 = getelementptr inbounds %struct.tree_exp, ptr %472, i64 1
  %501 = load ptr, ptr %500, align 8, !tbaa !73
  %502 = icmp eq ptr %449, null
  br i1 %502, label %503, label %557

503:                                              ; preds = %499
  %504 = icmp eq ptr %501, %441
  br i1 %504, label %505, label %557

505:                                              ; preds = %503, %533
  %506 = phi ptr [ %534, %533 ], [ %491, %503 ]
  %507 = load i64, ptr %506, align 8
  %508 = and i64 %507, 4295032831
  %509 = icmp eq i64 %508, 141
  br i1 %509, label %510, label %535

510:                                              ; preds = %505
  %511 = getelementptr inbounds %struct.tree_ssa_name, ptr %506, i64 0, i32 2
  %512 = load ptr, ptr %511, align 8, !tbaa !73
  %513 = call zeroext i8 @gimple_assign_single_p(ptr noundef %512) #18
  %514 = icmp eq i8 %513, 0
  br i1 %514, label %533, label %515

515:                                              ; preds = %510
  %516 = load i32, ptr %512, align 8
  %517 = and i32 %516, 255
  %518 = add nsw i32 %517, -10
  %519 = icmp ult i32 %518, -9
  br i1 %519, label %533, label %520

520:                                              ; preds = %515
  %521 = zext nneg i32 %517 to i64
  %522 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %521
  %523 = load i32, ptr %522, align 4, !tbaa !77
  %524 = zext i32 %523 to i64
  %525 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %524
  %526 = load i64, ptr %525, align 8, !tbaa !162
  %527 = icmp eq i64 %526, 0
  br i1 %527, label %528, label %529

528:                                              ; preds = %520
  call void @fancy_abort(ptr noundef nonnull @.str.35, i32 noundef 1622, ptr noundef nonnull @.str.1) #18
  br label %529

529:                                              ; preds = %528, %520
  %530 = getelementptr inbounds i8, ptr %512, i64 %526
  %531 = getelementptr inbounds ptr, ptr %530, i64 1
  %532 = load ptr, ptr %531, align 8, !tbaa !62
  br label %533

533:                                              ; preds = %529, %515, %510
  %534 = phi ptr [ %506, %510 ], [ %532, %529 ], [ null, %515 ]
  br i1 %514, label %535, label %505

535:                                              ; preds = %533, %505
  %536 = phi ptr [ %506, %505 ], [ %534, %533 ]
  %537 = load i64, ptr %536, align 8
  %538 = and i64 %537, 65535
  %539 = icmp eq i64 %538, 121
  br i1 %539, label %540, label %603

540:                                              ; preds = %535
  %541 = getelementptr inbounds %struct.tree_exp, ptr %536, i64 0, i32 3
  %542 = load ptr, ptr %541, align 8, !tbaa !73
  %543 = load i64, ptr %542, align 8
  %544 = and i64 %543, 65535
  %545 = icmp eq i64 %544, 29
  br i1 %545, label %546, label %603

546:                                              ; preds = %540
  %547 = getelementptr inbounds %struct.tree_common, ptr %542, i64 0, i32 2
  %548 = load ptr, ptr %547, align 8, !tbaa !73
  %549 = load i64, ptr %548, align 8
  %550 = and i64 %549, 65535
  %551 = icmp eq i64 %550, 21
  br i1 %551, label %552, label %603

552:                                              ; preds = %546
  %553 = icmp eq ptr %450, null
  br i1 %553, label %557, label %554

554:                                              ; preds = %552
  %555 = getelementptr inbounds %struct.ipa_jump_func, ptr %406, i64 %410, i32 1
  %556 = getelementptr inbounds %struct.ipa_jump_func, ptr %406, i64 %410, i32 1, i32 0, i32 1
  store i32 2, ptr %432, align 8, !tbaa !155
  store ptr %536, ptr %555, align 8, !tbaa !73
  store ptr %450, ptr %556, align 8, !tbaa !73
  br label %603

557:                                              ; preds = %552, %503, %499
  %558 = phi ptr [ %491, %499 ], [ %536, %552 ], [ %491, %503 ]
  %559 = phi ptr [ %449, %499 ], [ %542, %552 ], [ null, %503 ]
  %560 = icmp eq ptr %450, null
  br i1 %560, label %561, label %603

561:                                              ; preds = %557
  %562 = icmp eq ptr %501, %442
  br i1 %562, label %563, label %603

563:                                              ; preds = %561, %591
  %564 = phi ptr [ %592, %591 ], [ %558, %561 ]
  %565 = load i64, ptr %564, align 8
  %566 = and i64 %565, 4295032831
  %567 = icmp eq i64 %566, 141
  br i1 %567, label %568, label %593

568:                                              ; preds = %563
  %569 = getelementptr inbounds %struct.tree_ssa_name, ptr %564, i64 0, i32 2
  %570 = load ptr, ptr %569, align 8, !tbaa !73
  %571 = call zeroext i8 @gimple_assign_single_p(ptr noundef %570) #18
  %572 = icmp eq i8 %571, 0
  br i1 %572, label %591, label %573

573:                                              ; preds = %568
  %574 = load i32, ptr %570, align 8
  %575 = and i32 %574, 255
  %576 = add nsw i32 %575, -10
  %577 = icmp ult i32 %576, -9
  br i1 %577, label %591, label %578

578:                                              ; preds = %573
  %579 = zext nneg i32 %575 to i64
  %580 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %579
  %581 = load i32, ptr %580, align 4, !tbaa !77
  %582 = zext i32 %581 to i64
  %583 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %582
  %584 = load i64, ptr %583, align 8, !tbaa !162
  %585 = icmp eq i64 %584, 0
  br i1 %585, label %586, label %587

586:                                              ; preds = %578
  call void @fancy_abort(ptr noundef nonnull @.str.35, i32 noundef 1622, ptr noundef nonnull @.str.1) #18
  br label %587

587:                                              ; preds = %586, %578
  %588 = getelementptr inbounds i8, ptr %570, i64 %584
  %589 = getelementptr inbounds ptr, ptr %588, i64 1
  %590 = load ptr, ptr %589, align 8, !tbaa !62
  br label %591

591:                                              ; preds = %587, %573, %568
  %592 = phi ptr [ %564, %568 ], [ %590, %587 ], [ null, %573 ]
  br i1 %572, label %593, label %563

593:                                              ; preds = %591, %563
  %594 = phi ptr [ %564, %563 ], [ %592, %591 ]
  %595 = load i64, ptr %594, align 8
  %596 = and i64 %595, 65535
  %597 = icmp eq i64 %596, 23
  br i1 %597, label %598, label %603

598:                                              ; preds = %593
  %599 = icmp eq ptr %559, null
  br i1 %599, label %603, label %600

600:                                              ; preds = %598
  %601 = getelementptr inbounds %struct.ipa_jump_func, ptr %406, i64 %410, i32 1
  %602 = getelementptr inbounds %struct.ipa_jump_func, ptr %406, i64 %410, i32 1, i32 0, i32 1
  store i32 2, ptr %432, align 8, !tbaa !155
  store ptr %594, ptr %601, align 8, !tbaa !73
  store ptr %594, ptr %602, align 8, !tbaa !73
  br label %603

603:                                              ; preds = %593, %535, %600, %598, %561, %557, %554, %546, %540, %495, %490, %447
  %604 = phi ptr [ %594, %600 ], [ %450, %554 ], [ %450, %447 ], [ %450, %495 ], [ %450, %490 ], [ %450, %546 ], [ %450, %540 ], [ %450, %557 ], [ %594, %598 ], [ null, %561 ], [ %450, %535 ], [ null, %593 ]
  %605 = phi ptr [ %559, %600 ], [ %542, %554 ], [ %449, %447 ], [ %449, %495 ], [ %449, %490 ], [ null, %546 ], [ null, %540 ], [ %559, %557 ], [ %559, %598 ], [ %559, %561 ], [ null, %535 ], [ %559, %593 ]
  %606 = phi i32 [ 1, %600 ], [ 1, %554 ], [ 1, %447 ], [ 4, %495 ], [ 4, %490 ], [ 1, %546 ], [ 1, %540 ], [ 0, %557 ], [ 0, %598 ], [ 0, %561 ], [ 1, %535 ], [ 1, %593 ]
  switch i32 %606, label %611 [
    i32 0, label %607
    i32 4, label %607
  ]

607:                                              ; preds = %603, %603
  %608 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %448, i64 0, i32 1
  %609 = load ptr, ptr %608, align 8, !tbaa !168
  %610 = icmp eq ptr %609, null
  br i1 %610, label %611, label %447, !llvm.loop !169

611:                                              ; preds = %607, %603, %440, %435, %430
  %612 = add nuw nsw i64 %410, 1
  %613 = load i32, ptr %292, align 4, !tbaa !73
  %614 = add i32 %613, -3
  %615 = zext i32 %614 to i64
  %616 = icmp ult i64 %612, %615
  br i1 %616, label %409, label %617, !llvm.loop !170

617:                                              ; preds = %611, %405
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #18
  br label %618

618:                                              ; preds = %291, %403, %1, %22, %617
  ret void
}

declare ptr @ggc_alloc_cleared_stat(i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @ipa_analyze_params_uses(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !prof !99 {
  %2 = load ptr, ptr %0, align 8, !tbaa !103
  %3 = load ptr, ptr @ipa_node_params_vector, align 8
  %4 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 24
  %5 = load i32, ptr %4, align 8, !tbaa !87
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds %struct.VEC_ipa_node_params_t_base, ptr %3, i64 0, i32 2, i64 %6
  %8 = load i32, ptr %7, align 8, !tbaa !107
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %469, label %10, !prof !95

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.VEC_ipa_node_params_t_base, ptr %3, i64 0, i32 2, i64 %6, i32 5
  %12 = load i8, ptr %11, align 8
  %13 = and i8 %12, 4
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %469, !prof !102

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.tree_function_decl, ptr %2, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !73
  %18 = getelementptr inbounds %struct.function, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !112
  %20 = load ptr, ptr %19, align 8, !tbaa !114
  %21 = getelementptr inbounds %struct.basic_block_def, ptr %20, i64 0, i32 6
  %22 = load ptr, ptr %21, align 8, !tbaa !116
  %23 = getelementptr inbounds %struct.control_flow_graph, ptr %19, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !118
  %25 = icmp eq ptr %22, %24
  br i1 %25, label %466, label %33, !prof !104

26:                                               ; preds = %462, %50
  %27 = getelementptr inbounds %struct.basic_block_def, ptr %34, i64 0, i32 6
  %28 = load ptr, ptr %27, align 8, !tbaa !116
  %29 = load ptr, ptr %18, align 8, !tbaa !112
  %30 = getelementptr inbounds %struct.control_flow_graph, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !118
  %32 = icmp eq ptr %28, %31
  br i1 %32, label %466, label %33, !prof !119, !llvm.loop !171

33:                                               ; preds = %15, %26
  %34 = phi ptr [ %28, %26 ], [ %22, %15 ]
  %35 = getelementptr inbounds %struct.basic_block_def, ptr %34, i64 0, i32 13
  %36 = load i32, ptr %35, align 8, !tbaa !121, !noalias !172
  %37 = and i32 %36, 512
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %45, !prof !125

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.basic_block_def, ptr %34, i64 0, i32 7
  %41 = load ptr, ptr %40, align 8, !tbaa !73, !noalias !172
  %42 = icmp eq ptr %41, null
  br i1 %42, label %45, label %43, !prof !126

43:                                               ; preds = %39
  %44 = load ptr, ptr %41, align 8, !tbaa !127, !noalias !172
  br label %45

45:                                               ; preds = %43, %39, %33
  %46 = phi ptr [ %44, %43 ], [ null, %39 ], [ null, %33 ]
  %47 = icmp eq ptr %46, null
  br i1 %47, label %50, label %48, !prof !126

48:                                               ; preds = %45
  %49 = load ptr, ptr %46, align 8, !tbaa !129, !noalias !172
  br label %50

50:                                               ; preds = %45, %48
  %51 = phi ptr [ %49, %48 ], [ null, %45 ]
  %52 = icmp eq ptr %51, null
  br i1 %52, label %26, label %53, !prof !131

53:                                               ; preds = %50, %462
  %54 = phi ptr [ %464, %462 ], [ %51, %50 ]
  %55 = load ptr, ptr %54, align 8, !tbaa !132
  %56 = load i32, ptr %55, align 8
  %57 = and i32 %56, 255
  %58 = icmp eq i32 %57, 8
  br i1 %58, label %59, label %462, !prof !175

59:                                               ; preds = %53
  %60 = zext nneg i32 %57 to i64
  %61 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %60
  %62 = load i32, ptr %61, align 4, !tbaa !77
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %63
  %65 = load i64, ptr %64, align 8, !tbaa !162
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %68, !prof !176

67:                                               ; preds = %59
  tail call void @fancy_abort(ptr noundef nonnull @.str.35, i32 noundef 1622, ptr noundef nonnull @.str.1) #18
  br label %68

68:                                               ; preds = %67, %59
  %69 = getelementptr inbounds i8, ptr %55, i64 %65
  %70 = getelementptr inbounds ptr, ptr %69, i64 1
  %71 = load ptr, ptr %70, align 8, !tbaa !62
  %72 = load i64, ptr %71, align 8
  %73 = and i64 %72, 65535
  %74 = icmp eq i64 %73, 141
  br i1 %74, label %75, label %462, !prof !176

75:                                               ; preds = %68
  %76 = and i64 %72, 4294967296
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %121, label %78

78:                                               ; preds = %75
  %79 = getelementptr inbounds %struct.tree_ssa_name, ptr %71, i64 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !73
  %81 = load i32, ptr %7, align 8, !tbaa !107
  %82 = icmp sgt i32 %81, 0
  br i1 %82, label %83, label %97

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.VEC_ipa_node_params_t_base, ptr %3, i64 0, i32 2, i64 %6, i32 1
  %85 = load ptr, ptr %84, align 8, !tbaa !100
  %86 = zext nneg i32 %81 to i64
  br label %87

87:                                               ; preds = %83, %92
  %88 = phi i64 [ 0, %83 ], [ %93, %92 ]
  %89 = getelementptr inbounds %struct.ipa_param_descriptor, ptr %85, i64 %88, i32 1
  %90 = load ptr, ptr %89, align 8, !tbaa !108
  %91 = icmp eq ptr %90, %80
  br i1 %91, label %95, label %92

92:                                               ; preds = %87
  %93 = add nuw nsw i64 %88, 1
  %94 = icmp eq i64 %93, %86
  br i1 %94, label %97, label %87, !llvm.loop !140

95:                                               ; preds = %87
  %96 = trunc i64 %88 to i32
  br label %97

97:                                               ; preds = %95, %92, %78
  %98 = phi i32 [ -1, %78 ], [ %96, %95 ], [ -1, %92 ]
  %99 = icmp sgt i32 %98, -1
  br i1 %99, label %100, label %462

100:                                              ; preds = %97
  %101 = getelementptr inbounds %struct.VEC_ipa_node_params_t_base, ptr %3, i64 0, i32 2, i64 %6, i32 2
  %102 = getelementptr inbounds %struct.gimple_statement_base, ptr %55, i64 0, i32 4
  %103 = load ptr, ptr %102, align 8, !tbaa !73
  %104 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 40) #18
  %105 = getelementptr inbounds %struct.ipa_param_call_note, ptr %104, i64 0, i32 4
  store i32 %98, ptr %105, align 4, !tbaa !177
  %106 = getelementptr inbounds %struct.ipa_param_call_note, ptr %104, i64 0, i32 2
  store ptr %55, ptr %106, align 8, !tbaa !179
  %107 = getelementptr inbounds %struct.gimple_statement_base, ptr %55, i64 0, i32 1
  %108 = load i32, ptr %107, align 4, !tbaa !73
  %109 = getelementptr inbounds %struct.ipa_param_call_note, ptr %104, i64 0, i32 3
  store i32 %108, ptr %109, align 8, !tbaa !180
  %110 = getelementptr inbounds %struct.basic_block_def, ptr %103, i64 0, i32 8
  %111 = load i64, ptr %110, align 8, !tbaa !181
  store i64 %111, ptr %104, align 8, !tbaa !182
  %112 = load ptr, ptr @current_function_decl, align 8, !tbaa !62
  %113 = tail call i32 @compute_call_stmt_bb_frequency(ptr noundef %112, ptr noundef %103) #18
  %114 = getelementptr inbounds %struct.ipa_param_call_note, ptr %104, i64 0, i32 5
  store i32 %113, ptr %114, align 8, !tbaa !183
  %115 = getelementptr inbounds %struct.basic_block_def, ptr %103, i64 0, i32 10
  %116 = load i32, ptr %115, align 4, !tbaa !184
  %117 = trunc i32 %116 to i16
  %118 = getelementptr inbounds %struct.ipa_param_call_note, ptr %104, i64 0, i32 6
  store i16 %117, ptr %118, align 4, !tbaa !185
  %119 = load ptr, ptr %101, align 8, !tbaa !186
  %120 = getelementptr inbounds %struct.ipa_param_call_note, ptr %104, i64 0, i32 1
  store ptr %119, ptr %120, align 8, !tbaa !187
  store ptr %104, ptr %101, align 8, !tbaa !186
  br label %462

121:                                              ; preds = %75
  %122 = getelementptr inbounds %struct.tree_common, ptr %71, i64 0, i32 2
  %123 = load ptr, ptr %122, align 8, !tbaa !73
  %124 = load i64, ptr %123, align 8
  %125 = trunc i64 %124 to i16
  switch i16 %125, label %462 [
    i16 10, label %126
    i16 12, label %126
  ]

126:                                              ; preds = %121, %121
  %127 = getelementptr inbounds %struct.tree_common, ptr %123, i64 0, i32 2
  %128 = load ptr, ptr %127, align 8, !tbaa !73
  %129 = load i64, ptr %128, align 8
  %130 = and i64 %129, 65535
  %131 = icmp eq i64 %130, 21
  br i1 %131, label %132, label %462

132:                                              ; preds = %126
  %133 = getelementptr inbounds %struct.tree_ssa_name, ptr %71, i64 0, i32 2
  %134 = load ptr, ptr %133, align 8, !tbaa !73
  %135 = load i32, ptr %134, align 8
  %136 = and i32 %135, 255
  %137 = icmp eq i32 %136, 16
  br i1 %137, label %138, label %462

138:                                              ; preds = %132
  %139 = getelementptr inbounds %struct.gimple_statement_phi, ptr %134, i64 0, i32 2
  %140 = load i32, ptr %139, align 4, !tbaa !73
  %141 = icmp eq i32 %140, 2
  br i1 %141, label %142, label %462

142:                                              ; preds = %138
  %143 = getelementptr inbounds %struct.gimple_statement_phi, ptr %134, i64 0, i32 1
  %144 = getelementptr inbounds %struct.gimple_statement_phi, ptr %134, i64 0, i32 4, i64 0, i32 0, i32 3
  %145 = load ptr, ptr %144, align 8, !tbaa !188
  %146 = load ptr, ptr %145, align 8, !tbaa !62
  %147 = load i32, ptr %143, align 8, !tbaa !73
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %142
  tail call void @fancy_abort(ptr noundef nonnull @.str.35, i32 noundef 3103, ptr noundef nonnull @.str.1) #18
  br label %150

150:                                              ; preds = %149, %142
  %151 = getelementptr inbounds %struct.gimple_statement_phi, ptr %134, i64 1, i32 0, i32 5
  %152 = load ptr, ptr %151, align 8, !tbaa !188
  %153 = load ptr, ptr %152, align 8, !tbaa !62
  %154 = load i64, ptr %146, align 8
  %155 = and i64 %154, 4295032831
  %156 = icmp eq i64 %155, 141
  br i1 %156, label %157, label %462

157:                                              ; preds = %150
  %158 = load i64, ptr %153, align 8
  %159 = and i64 %158, 4295032831
  %160 = icmp eq i64 %159, 141
  br i1 %160, label %161, label %462

161:                                              ; preds = %157
  %162 = getelementptr inbounds %struct.tree_ssa_name, ptr %146, i64 0, i32 2
  %163 = load ptr, ptr %162, align 8, !tbaa !73
  %164 = getelementptr inbounds %struct.tree_ssa_name, ptr %153, i64 0, i32 2
  %165 = load ptr, ptr %164, align 8, !tbaa !73
  %166 = tail call fastcc ptr @ipa_get_stmt_member_ptr_load_param(ptr noundef %163)
  %167 = icmp eq ptr %166, null
  %168 = tail call fastcc ptr @ipa_get_stmt_member_ptr_load_param(ptr noundef %165)
  %169 = icmp eq ptr %168, null
  br i1 %167, label %171, label %170

170:                                              ; preds = %161
  br i1 %169, label %172, label %462

171:                                              ; preds = %161
  br i1 %169, label %462, label %172

172:                                              ; preds = %171, %170
  %173 = phi ptr [ %166, %170 ], [ %168, %171 ]
  %174 = phi ptr [ %163, %170 ], [ %165, %171 ]
  %175 = phi ptr [ %165, %170 ], [ %163, %171 ]
  %176 = getelementptr inbounds %struct.gimple_statement_base, ptr %175, i64 0, i32 4
  %177 = load ptr, ptr %176, align 8, !tbaa !73
  %178 = getelementptr inbounds %struct.gimple_statement_base, ptr %174, i64 0, i32 4
  %179 = load ptr, ptr %178, align 8, !tbaa !73
  %180 = getelementptr inbounds %struct.gimple_statement_base, ptr %134, i64 0, i32 4
  %181 = load ptr, ptr %180, align 8, !tbaa !73
  %182 = load ptr, ptr %177, align 8, !tbaa !190
  %183 = icmp eq ptr %182, null
  br i1 %183, label %188, label %184

184:                                              ; preds = %172
  %185 = load i32, ptr %182, align 8, !tbaa !191
  %186 = icmp eq i32 %185, 1
  %187 = zext i1 %186 to i8
  br label %188

188:                                              ; preds = %184, %172
  %189 = phi i8 [ %187, %184 ], [ 0, %172 ]
  %190 = icmp eq i8 %189, 0
  br i1 %190, label %462, label %191

191:                                              ; preds = %188
  %192 = getelementptr inbounds %struct.basic_block_def, ptr %177, i64 0, i32 1
  %193 = load ptr, ptr %192, align 8, !tbaa !193
  %194 = icmp eq ptr %193, null
  br i1 %194, label %199, label %195

195:                                              ; preds = %191
  %196 = load i32, ptr %193, align 8, !tbaa !191
  %197 = icmp eq i32 %196, 1
  %198 = zext i1 %197 to i8
  br label %199

199:                                              ; preds = %195, %191
  %200 = phi i8 [ %198, %195 ], [ 0, %191 ]
  %201 = icmp eq i8 %200, 0
  br i1 %201, label %462, label %202

202:                                              ; preds = %199
  br i1 %183, label %206, label %203

203:                                              ; preds = %202
  %204 = load i32, ptr %182, align 8, !tbaa !191
  %205 = icmp eq i32 %204, 1
  br i1 %205, label %207, label %206

206:                                              ; preds = %203, %202
  tail call void @fancy_abort(ptr noundef nonnull @.str.36, i32 noundef 655, ptr noundef nonnull @.str.1) #18
  br label %207

207:                                              ; preds = %206, %203
  %208 = load ptr, ptr %177, align 8, !tbaa !190
  %209 = getelementptr inbounds %struct.VEC_edge_base, ptr %208, i64 0, i32 2
  %210 = load ptr, ptr %209, align 8, !tbaa !62
  %211 = load ptr, ptr %210, align 8, !tbaa !194
  %212 = icmp eq ptr %211, %179
  br i1 %212, label %213, label %462

213:                                              ; preds = %207
  %214 = load ptr, ptr %192, align 8, !tbaa !193
  %215 = icmp eq ptr %214, null
  br i1 %215, label %219, label %216

216:                                              ; preds = %213
  %217 = load i32, ptr %214, align 8, !tbaa !191
  %218 = icmp eq i32 %217, 1
  br i1 %218, label %220, label %219

219:                                              ; preds = %216, %213
  tail call void @fancy_abort(ptr noundef nonnull @.str.36, i32 noundef 645, ptr noundef nonnull @.str.1) #18
  br label %220

220:                                              ; preds = %219, %216
  %221 = load ptr, ptr %192, align 8, !tbaa !193
  %222 = getelementptr inbounds %struct.VEC_edge_base, ptr %221, i64 0, i32 2
  %223 = load ptr, ptr %222, align 8, !tbaa !62
  %224 = getelementptr inbounds %struct.edge_def, ptr %223, i64 0, i32 1
  %225 = load ptr, ptr %224, align 8, !tbaa !196
  %226 = icmp eq ptr %225, %181
  br i1 %226, label %227, label %462

227:                                              ; preds = %220
  %228 = tail call ptr @last_stmt(ptr noundef %179) #18
  %229 = load i32, ptr %228, align 8
  %230 = and i32 %229, -65281
  %231 = icmp eq i32 %230, 6684673
  br i1 %231, label %232, label %462

232:                                              ; preds = %227
  %233 = load i32, ptr getelementptr inbounds ([0 x i32], ptr @gss_for_code_, i64 0, i64 1), align 4, !tbaa !77
  %234 = zext i32 %233 to i64
  %235 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %234
  %236 = load i64, ptr %235, align 8, !tbaa !162
  %237 = icmp eq i64 %236, 0
  br i1 %237, label %238, label %239

238:                                              ; preds = %232
  tail call void @fancy_abort(ptr noundef nonnull @.str.35, i32 noundef 1622, ptr noundef nonnull @.str.1) #18
  br label %239

239:                                              ; preds = %238, %232
  %240 = getelementptr inbounds i8, ptr %228, i64 %236
  %241 = getelementptr inbounds ptr, ptr %240, i64 1
  %242 = load ptr, ptr %241, align 8, !tbaa !62
  %243 = tail call i32 @integer_zerop(ptr noundef %242) #18
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %462, label %245

245:                                              ; preds = %239
  %246 = load i32, ptr %228, align 8
  %247 = and i32 %246, 255
  %248 = add nsw i32 %247, -1
  %249 = icmp ult i32 %248, 9
  tail call void @llvm.assume(i1 %249)
  %250 = zext nneg i32 %247 to i64
  %251 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %250
  %252 = load i32, ptr %251, align 4, !tbaa !77
  %253 = zext i32 %252 to i64
  %254 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %253
  %255 = load i64, ptr %254, align 8, !tbaa !162
  %256 = icmp eq i64 %255, 0
  br i1 %256, label %257, label %258

257:                                              ; preds = %245
  tail call void @fancy_abort(ptr noundef nonnull @.str.35, i32 noundef 1622, ptr noundef nonnull @.str.1) #18
  br label %258

258:                                              ; preds = %257, %245
  %259 = getelementptr inbounds i8, ptr %228, i64 %255
  %260 = load ptr, ptr %259, align 8, !tbaa !62
  %261 = load i64, ptr %260, align 8
  %262 = and i64 %261, 4295032831
  %263 = icmp eq i64 %262, 141
  br i1 %263, label %264, label %462

264:                                              ; preds = %258
  %265 = getelementptr inbounds %struct.tree_ssa_name, ptr %260, i64 0, i32 2
  %266 = load ptr, ptr %265, align 8, !tbaa !73
  %267 = load i32, ptr %266, align 8
  %268 = and i32 %267, 255
  %269 = icmp eq i32 %268, 6
  br i1 %269, label %270, label %462

270:                                              ; preds = %264
  %271 = lshr i32 %267, 16
  %272 = zext nneg i32 %271 to i64
  %273 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %272
  %274 = load i8, ptr %273, align 1, !tbaa !73
  %275 = icmp eq i8 %274, 3
  br i1 %275, label %276, label %292

276:                                              ; preds = %270
  %277 = zext nneg i32 %268 to i64
  %278 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %277
  %279 = load i32, ptr %278, align 4, !tbaa !77
  %280 = zext i32 %279 to i64
  %281 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %280
  %282 = load i64, ptr %281, align 8, !tbaa !162
  %283 = icmp eq i64 %282, 0
  br i1 %283, label %284, label %285

284:                                              ; preds = %276
  tail call void @fancy_abort(ptr noundef nonnull @.str.35, i32 noundef 1622, ptr noundef nonnull @.str.1) #18
  br label %285

285:                                              ; preds = %284, %276
  %286 = getelementptr inbounds i8, ptr %266, i64 %282
  %287 = getelementptr inbounds ptr, ptr %286, i64 1
  %288 = load ptr, ptr %287, align 8, !tbaa !62
  %289 = load i64, ptr %288, align 8
  %290 = trunc i64 %289 to i32
  %291 = and i32 %290, 65535
  br label %292

292:                                              ; preds = %285, %270
  %293 = phi i32 [ %291, %285 ], [ %271, %270 ]
  %294 = icmp eq i32 %293, 89
  br i1 %294, label %295, label %462

295:                                              ; preds = %292
  %296 = getelementptr inbounds %struct.gimple_statement_base, ptr %266, i64 0, i32 3
  %297 = load i32, ptr %296, align 4, !tbaa !73
  %298 = icmp ugt i32 %297, 2
  br i1 %298, label %299, label %317

299:                                              ; preds = %295
  %300 = load i32, ptr %266, align 8
  %301 = and i32 %300, 255
  %302 = add nsw i32 %301, -10
  %303 = icmp ult i32 %302, -9
  br i1 %303, label %317, label %304

304:                                              ; preds = %299
  %305 = zext nneg i32 %301 to i64
  %306 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %305
  %307 = load i32, ptr %306, align 4, !tbaa !77
  %308 = zext i32 %307 to i64
  %309 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %308
  %310 = load i64, ptr %309, align 8, !tbaa !162
  %311 = icmp eq i64 %310, 0
  br i1 %311, label %312, label %313

312:                                              ; preds = %304
  tail call void @fancy_abort(ptr noundef nonnull @.str.35, i32 noundef 1622, ptr noundef nonnull @.str.1) #18
  br label %313

313:                                              ; preds = %312, %304
  %314 = getelementptr inbounds i8, ptr %266, i64 %310
  %315 = getelementptr inbounds ptr, ptr %314, i64 2
  %316 = load ptr, ptr %315, align 8, !tbaa !62
  br label %317

317:                                              ; preds = %313, %299, %295
  %318 = phi ptr [ null, %295 ], [ %316, %313 ], [ null, %299 ]
  %319 = tail call i32 @integer_onep(ptr noundef %318) #18
  %320 = icmp eq i32 %319, 0
  br i1 %320, label %462, label %321

321:                                              ; preds = %317
  %322 = load i32, ptr %266, align 8
  %323 = and i32 %322, 255
  %324 = add nsw i32 %323, -1
  %325 = icmp ult i32 %324, 9
  tail call void @llvm.assume(i1 %325)
  %326 = zext nneg i32 %323 to i64
  %327 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %326
  %328 = load i32, ptr %327, align 4, !tbaa !77
  %329 = zext i32 %328 to i64
  %330 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %329
  %331 = load i64, ptr %330, align 8, !tbaa !162
  %332 = icmp eq i64 %331, 0
  br i1 %332, label %333, label %334

333:                                              ; preds = %321
  tail call void @fancy_abort(ptr noundef nonnull @.str.35, i32 noundef 1622, ptr noundef nonnull @.str.1) #18
  br label %334

334:                                              ; preds = %333, %321
  %335 = getelementptr inbounds i8, ptr %266, i64 %331
  %336 = getelementptr inbounds ptr, ptr %335, i64 1
  %337 = load ptr, ptr %336, align 8, !tbaa !62
  %338 = load i64, ptr %337, align 8
  %339 = and i64 %338, 4295032831
  %340 = icmp eq i64 %339, 141
  br i1 %340, label %341, label %462

341:                                              ; preds = %334
  %342 = getelementptr inbounds %struct.tree_ssa_name, ptr %337, i64 0, i32 2
  %343 = load ptr, ptr %342, align 8, !tbaa !73
  %344 = load i32, ptr %343, align 8
  %345 = and i32 %344, 255
  %346 = icmp eq i32 %345, 6
  br i1 %346, label %347, label %430

347:                                              ; preds = %341
  %348 = lshr i32 %344, 16
  %349 = zext nneg i32 %348 to i64
  %350 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %349
  %351 = load i8, ptr %350, align 1, !tbaa !73
  %352 = icmp eq i8 %351, 3
  br i1 %352, label %353, label %369

353:                                              ; preds = %347
  %354 = zext nneg i32 %345 to i64
  %355 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %354
  %356 = load i32, ptr %355, align 4, !tbaa !77
  %357 = zext i32 %356 to i64
  %358 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %357
  %359 = load i64, ptr %358, align 8, !tbaa !162
  %360 = icmp eq i64 %359, 0
  br i1 %360, label %361, label %362

361:                                              ; preds = %353
  tail call void @fancy_abort(ptr noundef nonnull @.str.35, i32 noundef 1622, ptr noundef nonnull @.str.1) #18
  br label %362

362:                                              ; preds = %361, %353
  %363 = getelementptr inbounds i8, ptr %343, i64 %359
  %364 = getelementptr inbounds ptr, ptr %363, i64 1
  %365 = load ptr, ptr %364, align 8, !tbaa !62
  %366 = load i64, ptr %365, align 8
  %367 = trunc i64 %366 to i32
  %368 = and i32 %367, 65535
  br label %369

369:                                              ; preds = %362, %347
  %370 = phi i32 [ %368, %362 ], [ %348, %347 ]
  %371 = icmp eq i32 %370, 116
  br i1 %371, label %407, label %372

372:                                              ; preds = %369
  %373 = load i32, ptr %343, align 8
  %374 = trunc i32 %373 to i8
  switch i8 %374, label %377 [
    i8 6, label %375
    i8 1, label %375
    i8 8, label %378
  ]

375:                                              ; preds = %372, %372
  %376 = lshr i32 %373, 16
  br label %378

377:                                              ; preds = %372
  tail call void @fancy_abort(ptr noundef nonnull @.str.35, i32 noundef 1446, ptr noundef nonnull @.str.1) #18
  br label %378

378:                                              ; preds = %377, %375, %372
  %379 = phi i32 [ %376, %375 ], [ 0, %377 ], [ 59, %372 ]
  %380 = zext nneg i32 %379 to i64
  %381 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %380
  %382 = load i8, ptr %381, align 1, !tbaa !73
  %383 = icmp eq i8 %382, 3
  br i1 %383, label %384, label %404

384:                                              ; preds = %378
  %385 = load i32, ptr %343, align 8
  %386 = and i32 %385, 255
  %387 = add nsw i32 %386, -1
  %388 = icmp ult i32 %387, 9
  tail call void @llvm.assume(i1 %388)
  %389 = zext nneg i32 %386 to i64
  %390 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %389
  %391 = load i32, ptr %390, align 4, !tbaa !77
  %392 = zext i32 %391 to i64
  %393 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %392
  %394 = load i64, ptr %393, align 8, !tbaa !162
  %395 = icmp eq i64 %394, 0
  br i1 %395, label %396, label %397

396:                                              ; preds = %384
  tail call void @fancy_abort(ptr noundef nonnull @.str.35, i32 noundef 1622, ptr noundef nonnull @.str.1) #18
  br label %397

397:                                              ; preds = %396, %384
  %398 = getelementptr inbounds i8, ptr %343, i64 %394
  %399 = getelementptr inbounds ptr, ptr %398, i64 1
  %400 = load ptr, ptr %399, align 8, !tbaa !62
  %401 = load i64, ptr %400, align 8
  %402 = trunc i64 %401 to i32
  %403 = and i32 %402, 65535
  br label %404

404:                                              ; preds = %397, %378
  %405 = phi i32 [ %403, %397 ], [ %379, %378 ]
  %406 = icmp eq i32 %405, 113
  br i1 %406, label %407, label %430

407:                                              ; preds = %404, %369
  %408 = load i32, ptr %343, align 8
  %409 = and i32 %408, 255
  %410 = add nsw i32 %409, -1
  %411 = icmp ult i32 %410, 9
  tail call void @llvm.assume(i1 %411)
  %412 = zext nneg i32 %409 to i64
  %413 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %412
  %414 = load i32, ptr %413, align 4, !tbaa !77
  %415 = zext i32 %414 to i64
  %416 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %415
  %417 = load i64, ptr %416, align 8, !tbaa !162
  %418 = icmp eq i64 %417, 0
  br i1 %418, label %419, label %420

419:                                              ; preds = %407
  tail call void @fancy_abort(ptr noundef nonnull @.str.35, i32 noundef 1622, ptr noundef nonnull @.str.1) #18
  br label %420

420:                                              ; preds = %419, %407
  %421 = getelementptr inbounds i8, ptr %343, i64 %417
  %422 = getelementptr inbounds ptr, ptr %421, i64 1
  %423 = load ptr, ptr %422, align 8, !tbaa !62
  %424 = load i64, ptr %423, align 8
  %425 = and i64 %424, 4295032831
  %426 = icmp eq i64 %425, 141
  br i1 %426, label %427, label %462

427:                                              ; preds = %420
  %428 = getelementptr inbounds %struct.tree_ssa_name, ptr %423, i64 0, i32 2
  %429 = load ptr, ptr %428, align 8, !tbaa !73
  br label %430

430:                                              ; preds = %404, %427, %341
  %431 = phi ptr [ %429, %427 ], [ %343, %341 ], [ %343, %404 ]
  %432 = tail call fastcc ptr @ipa_get_stmt_member_ptr_load_param(ptr noundef %431)
  %433 = icmp eq ptr %173, %432
  br i1 %433, label %434, label %462

434:                                              ; preds = %430
  %435 = load i32, ptr %7, align 8, !tbaa !107
  %436 = icmp sgt i32 %435, 0
  br i1 %436, label %437, label %450

437:                                              ; preds = %434, %444
  %438 = phi i64 [ %446, %444 ], [ 0, %434 ]
  %439 = getelementptr inbounds %struct.VEC_ipa_node_params_t_base, ptr %3, i64 0, i32 2, i64 %6, i32 1
  %440 = load ptr, ptr %439, align 8, !tbaa !100
  %441 = getelementptr inbounds %struct.ipa_param_descriptor, ptr %440, i64 %438, i32 1
  %442 = load ptr, ptr %441, align 8, !tbaa !108
  %443 = icmp eq ptr %442, %173
  br i1 %443, label %448, label %444

444:                                              ; preds = %437
  %445 = zext nneg i32 %435 to i64
  %446 = add nuw nsw i64 %438, 1
  %447 = icmp eq i64 %446, %445
  br i1 %447, label %450, label %437, !llvm.loop !140

448:                                              ; preds = %437
  %449 = trunc i64 %438 to i32
  br label %450

450:                                              ; preds = %448, %444, %434
  %451 = phi i32 [ -1, %434 ], [ %449, %448 ], [ -1, %444 ]
  %452 = icmp sgt i32 %451, -1
  br i1 %452, label %453, label %462

453:                                              ; preds = %450
  %454 = getelementptr inbounds %struct.VEC_ipa_node_params_t_base, ptr %3, i64 0, i32 2, i64 %6, i32 1
  %455 = load ptr, ptr %454, align 8, !tbaa !100
  %456 = zext nneg i32 %451 to i64
  %457 = getelementptr inbounds %struct.ipa_param_descriptor, ptr %455, i64 %456, i32 2
  %458 = load i8, ptr %457, align 8
  %459 = and i8 %458, 1
  %460 = icmp eq i8 %459, 0
  br i1 %460, label %461, label %462

461:                                              ; preds = %453
  tail call fastcc void @ipa_note_param_call(ptr noundef nonnull %7, i32 noundef %451, ptr noundef nonnull %55)
  br label %462

462:                                              ; preds = %188, %171, %126, %53, %68, %97, %100, %121, %132, %138, %150, %157, %170, %199, %207, %220, %227, %239, %258, %264, %292, %317, %334, %420, %430, %450, %453, %461
  %463 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %54, i64 0, i32 2
  %464 = load ptr, ptr %463, align 8, !tbaa !134
  %465 = icmp eq ptr %464, null
  br i1 %465, label %26, label %53, !prof !135, !llvm.loop !197

466:                                              ; preds = %26, %15
  %467 = load i8, ptr %11, align 8
  %468 = or i8 %467, 4
  store i8 %468, ptr %11, align 8
  br label %469

469:                                              ; preds = %1, %10, %466
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @ipa_propagate_indirect_call_infos(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #10 !prof !198 {
  %3 = load i32, ptr @flag_wpa, align 4, !tbaa !77
  %4 = icmp ne i32 %3, 0
  %5 = load ptr, ptr @ipa_node_params_vector, align 8
  %6 = icmp eq ptr %5, null
  %7 = select i1 %4, i1 true, i1 %6, !prof !199
  br i1 %7, label %16, label %8, !prof !200

8:                                                ; preds = %2
  %9 = load ptr, ptr @ipa_edge_args_vector, align 8, !tbaa !62
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12, !prof !201

11:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1167, ptr noundef nonnull @.str.1) #18
  br label %12

12:                                               ; preds = %8, %11
  %13 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !153
  %15 = tail call fastcc zeroext i8 @propagate_info_to_inlined_callees(ptr noundef %0, ptr noundef %14, ptr noundef %1), !range !166
  br label %16

16:                                               ; preds = %2, %12
  %17 = phi i8 [ %15, %12 ], [ 0, %2 ]
  ret i8 %17
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @propagate_info_to_inlined_callees(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) unnamed_addr #10 !prof !202 !PGOFuncName !203 {
  %4 = load ptr, ptr @ipa_node_params_vector, align 8
  %5 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 24
  %6 = load i32, ptr %5, align 8, !tbaa !87
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 12
  %9 = getelementptr inbounds %struct.VEC_ipa_node_params_t_base, ptr %4, i64 0, i32 2, i64 %7, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !62
  %11 = icmp eq ptr %10, null
  br i1 %11, label %172, label %12, !prof !163

12:                                               ; preds = %3
  %13 = load ptr, ptr @ipa_edge_args_vector, align 8
  %14 = load i32, ptr %8, align 4, !tbaa !150
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.VEC_ipa_edge_args_t_base, ptr %13, i64 0, i32 2, i64 %15
  br label %17

17:                                               ; preds = %12, %166
  %18 = phi ptr [ %10, %12 ], [ %170, %166 ]
  %19 = phi ptr [ %16, %12 ], [ %168, %166 ]
  %20 = phi i8 [ 0, %12 ], [ %167, %166 ]
  %21 = getelementptr inbounds %struct.ipa_param_call_note, ptr %18, i64 0, i32 7
  %22 = load i8, ptr %21, align 2, !tbaa !204
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %166

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.ipa_param_call_note, ptr %18, i64 0, i32 4
  %26 = load i32, ptr %25, align 4, !tbaa !177
  %27 = load i32, ptr %19, align 8, !tbaa !151
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  store i8 1, ptr %21, align 2, !tbaa !204
  br label %166

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.ipa_edge_args, ptr %19, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !154
  %33 = sext i32 %26 to i64
  %34 = getelementptr inbounds %struct.ipa_jump_func, ptr %32, i64 %33
  %35 = load i32, ptr %34, align 8, !tbaa !155
  switch i32 %35, label %164 [
    i32 3, label %36
    i32 1, label %44
    i32 2, label %44
    i32 0, label %165
  ]

36:                                               ; preds = %30
  %37 = getelementptr inbounds i8, ptr %34, i64 20
  %38 = load i32, ptr %37, align 4, !tbaa !73
  %39 = icmp eq i32 %38, 116
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.ipa_jump_func, ptr %32, i64 %33, i32 1, i32 0, i32 1
  %42 = load i32, ptr %41, align 8, !tbaa !73
  store i32 %42, ptr %25, align 4, !tbaa !177
  br label %166

43:                                               ; preds = %36
  switch i32 %35, label %164 [
    i32 1, label %44
    i32 2, label %44
    i32 0, label %165
  ]

44:                                               ; preds = %43, %30, %30, %43
  store i8 1, ptr %21, align 2, !tbaa !204
  %45 = getelementptr inbounds %struct.ipa_jump_func, ptr %32, i64 %33, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !73
  %47 = load i64, ptr %46, align 8
  %48 = and i64 %47, 65535
  %49 = icmp eq i64 %48, 121
  br i1 %49, label %50, label %166

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.tree_exp, ptr %46, i64 0, i32 3
  %52 = load ptr, ptr %51, align 8, !tbaa !73
  %53 = load i64, ptr %52, align 8
  %54 = and i64 %53, 65535
  %55 = icmp eq i64 %54, 29
  br i1 %55, label %56, label %166

56:                                               ; preds = %50
  %57 = tail call ptr @cgraph_node(ptr noundef nonnull %52) #18
  %58 = icmp eq ptr %57, null
  br i1 %58, label %166, label %59

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.cgraph_node, ptr %57, i64 0, i32 18, i32 2
  %61 = load i8, ptr %60, align 8
  %62 = and i8 %61, 8
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %166, label %64

64:                                               ; preds = %59
  %65 = load ptr, ptr @dump_file, align 8, !tbaa !62
  %66 = icmp eq ptr %65, null
  br i1 %66, label %80, label %67

67:                                               ; preds = %64
  %68 = tail call i64 @fwrite(ptr nonnull @.str.37, i64 57, i64 1, ptr nonnull %65)
  %69 = load i32, ptr %34, align 8, !tbaa !155
  %70 = icmp eq i32 %69, 2
  %71 = load ptr, ptr %45, align 8, !tbaa !73
  tail call void @print_node_brief(ptr noundef nonnull %65, ptr noundef nonnull @.str.38, ptr noundef %71, i32 noundef 0) #18
  br i1 %70, label %72, label %75

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct.ipa_jump_func, ptr %32, i64 %33, i32 1, i32 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !73
  tail call void @print_node_brief(ptr noundef nonnull %65, ptr noundef nonnull @.str.10, ptr noundef %74, i32 noundef 0) #18
  br label %75

75:                                               ; preds = %67, %72
  %76 = tail call ptr @cgraph_node_name(ptr noundef %1) #18
  %77 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %65, ptr noundef nonnull @.str.39, ptr noundef %76)
  %78 = getelementptr inbounds %struct.ipa_param_call_note, ptr %18, i64 0, i32 2
  %79 = load ptr, ptr %78, align 8, !tbaa !179
  tail call void @print_gimple_stmt(ptr noundef nonnull %65, ptr noundef %79, i32 noundef 2, i32 noundef 2) #18
  br label %80

80:                                               ; preds = %75, %64
  %81 = getelementptr inbounds %struct.ipa_param_call_note, ptr %18, i64 0, i32 2
  %82 = load ptr, ptr %81, align 8, !tbaa !179
  %83 = load i64, ptr %18, align 8, !tbaa !182
  %84 = getelementptr inbounds %struct.ipa_param_call_note, ptr %18, i64 0, i32 5
  %85 = load i32, ptr %84, align 8, !tbaa !183
  %86 = getelementptr inbounds %struct.ipa_param_call_note, ptr %18, i64 0, i32 6
  %87 = load i16, ptr %86, align 4, !tbaa !185
  %88 = zext i16 %87 to i32
  %89 = tail call ptr @cgraph_create_edge(ptr noundef %1, ptr noundef nonnull %57, ptr noundef %82, i64 noundef %83, i32 noundef %85, i32 noundef %88) #18
  %90 = getelementptr inbounds %struct.ipa_param_call_note, ptr %18, i64 0, i32 3
  %91 = load i32, ptr %90, align 8, !tbaa !180
  %92 = getelementptr inbounds %struct.cgraph_edge, ptr %89, i64 0, i32 10
  store i32 %91, ptr %92, align 4, !tbaa !205
  %93 = getelementptr inbounds %struct.cgraph_edge, ptr %89, i64 0, i32 14
  %94 = load i8, ptr %93, align 2
  %95 = or i8 %94, 1
  store i8 %95, ptr %93, align 2
  %96 = load ptr, ptr @ipa_edge_args_vector, align 8, !tbaa !62
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %101

98:                                               ; preds = %80
  %99 = load i32, ptr @cgraph_edge_max_uid, align 4, !tbaa !77
  %100 = tail call ptr @vec_gc_o_reserve_exact(ptr noundef null, i32 noundef %99, i64 noundef 8, i64 noundef 16) #18
  store ptr %100, ptr @ipa_edge_args_vector, align 8, !tbaa !62
  br label %101

101:                                              ; preds = %98, %80
  %102 = load ptr, ptr @ipa_edge_args_vector, align 8
  %103 = icmp eq ptr %102, null
  br i1 %103, label %106, label %104

104:                                              ; preds = %101
  %105 = load i32, ptr %102, align 8, !tbaa !146
  br label %106

106:                                              ; preds = %104, %101
  %107 = phi i32 [ %105, %104 ], [ 0, %101 ]
  %108 = load i32, ptr @cgraph_edge_max_uid, align 4, !tbaa !77
  %109 = icmp ugt i32 %107, %108
  br i1 %109, label %141, label %110

110:                                              ; preds = %106
  %111 = add nsw i32 %108, 1
  br i1 %103, label %114, label %112

112:                                              ; preds = %110
  %113 = load i32, ptr %102, align 8, !tbaa !146
  br label %114

114:                                              ; preds = %112, %110
  %115 = phi i32 [ %113, %112 ], [ 0, %110 ]
  br i1 %103, label %118, label %116

116:                                              ; preds = %114
  %117 = load i32, ptr %102, align 8, !tbaa !146
  br label %118

118:                                              ; preds = %116, %114
  %119 = phi i32 [ %117, %116 ], [ 0, %114 ]
  %120 = sub nsw i32 %111, %119
  br i1 %103, label %127, label %121

121:                                              ; preds = %118
  %122 = getelementptr inbounds %struct.VEC_ipa_edge_args_t_base, ptr %102, i64 0, i32 1
  %123 = load i32, ptr %122, align 4, !tbaa !148
  %124 = load i32, ptr %102, align 8, !tbaa !146
  %125 = sub i32 %123, %124
  %126 = icmp uge i32 %125, %120
  br label %129

127:                                              ; preds = %118
  %128 = icmp eq i32 %119, %111
  br label %129

129:                                              ; preds = %127, %121
  %130 = phi i1 [ %126, %121 ], [ %128, %127 ]
  br i1 %130, label %133, label %131

131:                                              ; preds = %129
  %132 = tail call ptr @vec_gc_o_reserve_exact(ptr noundef %102, i32 noundef %120, i64 noundef 8, i64 noundef 16) #18
  store ptr %132, ptr @ipa_edge_args_vector, align 8, !tbaa !62
  br label %133

133:                                              ; preds = %131, %129
  %134 = load ptr, ptr @ipa_edge_args_vector, align 8, !tbaa !62, !nonnull !149, !noundef !149
  store i32 %111, ptr %134, align 8, !tbaa !146
  %135 = getelementptr inbounds %struct.VEC_ipa_edge_args_t_base, ptr %134, i64 0, i32 2
  %136 = sext i32 %115 to i64
  %137 = getelementptr inbounds %struct.ipa_edge_args, ptr %135, i64 %136
  %138 = sub nsw i32 %111, %115
  %139 = sext i32 %138 to i64
  %140 = shl nsw i64 %139, 4
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %137, i8 0, i64 %140, i1 false)
  br label %141

141:                                              ; preds = %133, %106
  %142 = icmp eq ptr %2, null
  br i1 %142, label %159, label %143

143:                                              ; preds = %141
  %144 = load ptr, ptr %2, align 8, !tbaa !62
  %145 = icmp eq ptr %144, null
  br i1 %145, label %151, label %146

146:                                              ; preds = %143
  %147 = getelementptr inbounds %struct.VEC_cgraph_edge_p_base, ptr %144, i64 0, i32 1
  %148 = load i32, ptr %147, align 4, !tbaa !206
  %149 = load i32, ptr %144, align 8, !tbaa !208
  %150 = icmp eq i32 %148, %149
  br i1 %150, label %151, label %153

151:                                              ; preds = %146, %143
  %152 = tail call ptr @vec_heap_p_reserve(ptr noundef %144, i32 noundef 1) #18
  store ptr %152, ptr %2, align 8, !tbaa !62
  br label %153

153:                                              ; preds = %151, %146
  %154 = load ptr, ptr %2, align 8, !tbaa !62
  %155 = load i32, ptr %154, align 8, !tbaa !208
  %156 = add i32 %155, 1
  store i32 %156, ptr %154, align 8, !tbaa !208
  %157 = zext i32 %155 to i64
  %158 = getelementptr inbounds %struct.VEC_cgraph_edge_p_base, ptr %154, i64 0, i32 2, i64 %157
  store ptr %89, ptr %158, align 8, !tbaa !62
  br label %159

159:                                              ; preds = %153, %141
  %160 = load ptr, ptr @ipa_edge_args_vector, align 8
  %161 = load i32, ptr %8, align 4, !tbaa !150
  %162 = zext i32 %161 to i64
  %163 = getelementptr inbounds %struct.VEC_ipa_edge_args_t_base, ptr %160, i64 0, i32 2, i64 %162
  br label %166

164:                                              ; preds = %30, %43
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1115, ptr noundef nonnull @.str.1) #18
  br label %165

165:                                              ; preds = %30, %164, %43
  store i8 1, ptr %21, align 2, !tbaa !204
  br label %166

166:                                              ; preds = %165, %159, %59, %56, %50, %44, %40, %29, %17
  %167 = phi i8 [ %20, %29 ], [ %20, %17 ], [ %20, %40 ], [ %20, %165 ], [ 1, %159 ], [ %20, %44 ], [ %20, %50 ], [ %20, %59 ], [ %20, %56 ]
  %168 = phi ptr [ %19, %29 ], [ %19, %17 ], [ %19, %40 ], [ %19, %165 ], [ %163, %159 ], [ %19, %44 ], [ %19, %50 ], [ %19, %59 ], [ %19, %56 ]
  %169 = getelementptr inbounds %struct.ipa_param_call_note, ptr %18, i64 0, i32 1
  %170 = load ptr, ptr %169, align 8, !tbaa !62
  %171 = icmp eq ptr %170, null
  br i1 %171, label %172, label %17, !prof !163, !llvm.loop !209

172:                                              ; preds = %166, %3
  %173 = phi i8 [ 0, %3 ], [ %167, %166 ]
  %174 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 1
  %175 = load ptr, ptr %174, align 8, !tbaa !62
  %176 = icmp eq ptr %175, null
  br i1 %176, label %230, label %177, !prof !210

177:                                              ; preds = %172, %225
  %178 = phi ptr [ %228, %225 ], [ %175, %172 ]
  %179 = phi i8 [ %226, %225 ], [ %173, %172 ]
  %180 = getelementptr inbounds %struct.cgraph_edge, ptr %178, i64 0, i32 9
  %181 = load i32, ptr %180, align 8, !tbaa !211
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %188, !prof !212

183:                                              ; preds = %177
  %184 = getelementptr inbounds %struct.cgraph_edge, ptr %178, i64 0, i32 2
  %185 = load ptr, ptr %184, align 8, !tbaa !153
  %186 = tail call fastcc zeroext i8 @propagate_info_to_inlined_callees(ptr noundef %0, ptr noundef %185, ptr noundef %2), !range !166
  %187 = or i8 %186, %179
  br label %225

188:                                              ; preds = %177
  %189 = load ptr, ptr @ipa_edge_args_vector, align 8
  %190 = load i32, ptr %8, align 4, !tbaa !150
  %191 = zext i32 %190 to i64
  %192 = getelementptr inbounds %struct.VEC_ipa_edge_args_t_base, ptr %189, i64 0, i32 2, i64 %191
  %193 = getelementptr inbounds %struct.cgraph_edge, ptr %178, i64 0, i32 12
  %194 = load i32, ptr %193, align 4, !tbaa !150
  %195 = zext i32 %194 to i64
  %196 = getelementptr inbounds %struct.VEC_ipa_edge_args_t_base, ptr %189, i64 0, i32 2, i64 %195
  %197 = load i32, ptr %196, align 8, !tbaa !151
  %198 = icmp sgt i32 %197, 0
  br i1 %198, label %199, label %225, !prof !213

199:                                              ; preds = %188, %221
  %200 = phi i64 [ %223, %221 ], [ 0, %188 ]
  %201 = getelementptr inbounds %struct.VEC_ipa_edge_args_t_base, ptr %189, i64 0, i32 2, i64 %195, i32 1
  %202 = load ptr, ptr %201, align 8, !tbaa !154
  %203 = getelementptr inbounds %struct.ipa_jump_func, ptr %202, i64 %200
  %204 = load i32, ptr %203, align 8, !tbaa !155
  switch i32 %204, label %221 [
    i32 4, label %205
    i32 3, label %206
  ]

205:                                              ; preds = %199
  store i32 0, ptr %203, align 8, !tbaa !155
  br label %221

206:                                              ; preds = %199
  %207 = getelementptr inbounds i8, ptr %203, i64 20
  %208 = load i32, ptr %207, align 4, !tbaa !73
  %209 = icmp eq i32 %208, 116
  br i1 %209, label %210, label %215

210:                                              ; preds = %206
  %211 = getelementptr inbounds %struct.ipa_jump_func, ptr %202, i64 %200, i32 1, i32 0, i32 1
  %212 = load i32, ptr %211, align 8, !tbaa !73
  %213 = load i32, ptr %192, align 8, !tbaa !151
  %214 = icmp slt i32 %212, %213
  br i1 %214, label %216, label %215

215:                                              ; preds = %210, %206
  store i32 0, ptr %203, align 8, !tbaa !155
  br label %221

216:                                              ; preds = %210
  %217 = getelementptr inbounds %struct.VEC_ipa_edge_args_t_base, ptr %189, i64 0, i32 2, i64 %191, i32 1
  %218 = load ptr, ptr %217, align 8, !tbaa !154
  %219 = sext i32 %212 to i64
  %220 = getelementptr inbounds %struct.ipa_jump_func, ptr %218, i64 %219
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %203, ptr noundef nonnull align 8 dereferenceable(32) %220, i64 32, i1 false), !tbaa.struct !214
  br label %221

221:                                              ; preds = %216, %215, %205, %199
  %222 = zext nneg i32 %197 to i64
  %223 = add nuw nsw i64 %200, 1
  %224 = icmp eq i64 %223, %222
  br i1 %224, label %225, label %199, !prof !163, !llvm.loop !215

225:                                              ; preds = %221, %188, %183
  %226 = phi i8 [ %187, %183 ], [ %179, %188 ], [ %179, %221 ]
  %227 = getelementptr inbounds %struct.cgraph_edge, ptr %178, i64 0, i32 6
  %228 = load ptr, ptr %227, align 8, !tbaa !62
  %229 = icmp eq ptr %228, null
  br i1 %229, label %230, label %177, !prof !216, !llvm.loop !217

230:                                              ; preds = %225, %172
  %231 = phi i8 [ %173, %172 ], [ %226, %225 ]
  ret i8 %231
}

; Function Attrs: cold nounwind uwtable
define dso_local void @ipa_free_edge_args_substructures(ptr nocapture noundef %0) local_unnamed_addr #9 !prof !61 {
  %2 = getelementptr inbounds %struct.ipa_edge_args, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !154
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @ggc_free(ptr noundef nonnull %3) #18
  br label %6

6:                                                ; preds = %5, %1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

declare void @ggc_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #14

; Function Attrs: nounwind uwtable
define dso_local void @ipa_free_all_edge_args() local_unnamed_addr #10 !prof !81 {
  br label %1

1:                                                ; preds = %19, %0
  %2 = phi i64 [ %20, %19 ], [ 0, %0 ]
  %3 = load ptr, ptr @ipa_edge_args_vector, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5, !prof !218

5:                                                ; preds = %1
  %6 = load i32, ptr %3, align 8, !tbaa !146
  %7 = zext i32 %6 to i64
  %8 = icmp uge i64 %2, %7
  %9 = getelementptr inbounds %struct.VEC_ipa_edge_args_t_base, ptr %3, i64 0, i32 2, i64 %2
  %10 = select i1 %8, ptr null, ptr %9, !prof !219
  br label %11

11:                                               ; preds = %5, %1
  %12 = phi ptr [ null, %1 ], [ %10, %5 ]
  %13 = phi i1 [ true, %1 ], [ %8, %5 ]
  br i1 %13, label %21, label %14, !prof !219

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.ipa_edge_args, ptr %12, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !154
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18, !prof !220

18:                                               ; preds = %14
  tail call void @ggc_free(ptr noundef nonnull %16) #18
  br label %19

19:                                               ; preds = %14, %18
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, i8 0, i64 16, i1 false)
  %20 = add nuw i64 %2, 1
  br label %1, !llvm.loop !221

21:                                               ; preds = %11
  br i1 %4, label %23, label %22, !prof !213

22:                                               ; preds = %21
  tail call void @ggc_free(ptr noundef nonnull %3) #18
  br label %23

23:                                               ; preds = %21, %22
  store ptr null, ptr @ipa_edge_args_vector, align 8, !tbaa !62
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ipa_free_node_params_substructures(ptr nocapture noundef %0) local_unnamed_addr #10 !prof !61 {
  %2 = getelementptr inbounds %struct.ipa_node_params, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !100
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5, !prof !222

5:                                                ; preds = %1
  tail call void @free(ptr noundef %3)
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.ipa_node_params, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !186
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10, !prof !163

10:                                               ; preds = %6, %10
  %11 = phi ptr [ %14, %10 ], [ %8, %6 ]
  %12 = getelementptr inbounds %struct.ipa_param_call_note, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !187
  store ptr %13, ptr %7, align 8, !tbaa !186
  tail call void @free(ptr noundef %11)
  %14 = load ptr, ptr %7, align 8, !tbaa !186
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %10, !prof !163, !llvm.loop !223

16:                                               ; preds = %10, %6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, i8 0, i64 48, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @ipa_free_all_node_params() local_unnamed_addr #10 !prof !81 {
  br label %1

1:                                                ; preds = %29, %0
  %2 = phi i64 [ %30, %29 ], [ 0, %0 ]
  %3 = load ptr, ptr @ipa_node_params_vector, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5, !prof !224

5:                                                ; preds = %1
  %6 = load i32, ptr %3, align 8, !tbaa !225
  %7 = zext i32 %6 to i64
  %8 = icmp uge i64 %2, %7
  %9 = getelementptr inbounds %struct.VEC_ipa_node_params_t_base, ptr %3, i64 0, i32 2, i64 %2
  %10 = select i1 %8, ptr null, ptr %9, !prof !227
  br label %11

11:                                               ; preds = %5, %1
  %12 = phi ptr [ null, %1 ], [ %10, %5 ]
  %13 = phi i1 [ true, %1 ], [ %8, %5 ]
  br i1 %13, label %31, label %14, !prof !227

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.ipa_node_params, ptr %12, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !100
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18, !prof !222

18:                                               ; preds = %14
  tail call void @free(ptr noundef %16)
  br label %19

19:                                               ; preds = %18, %14
  %20 = getelementptr inbounds %struct.ipa_node_params, ptr %12, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !186
  %22 = icmp eq ptr %21, null
  br i1 %22, label %29, label %23, !prof !163

23:                                               ; preds = %19, %23
  %24 = phi ptr [ %27, %23 ], [ %21, %19 ]
  %25 = getelementptr inbounds %struct.ipa_param_call_note, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !187
  store ptr %26, ptr %20, align 8, !tbaa !186
  tail call void @free(ptr noundef %24)
  %27 = load ptr, ptr %20, align 8, !tbaa !186
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %23, !prof !163, !llvm.loop !223

29:                                               ; preds = %23, %19
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %12, i8 0, i64 48, i1 false)
  %30 = add nuw i64 %2, 1
  br label %1, !llvm.loop !228

31:                                               ; preds = %11
  br i1 %4, label %33, label %32, !prof !213

32:                                               ; preds = %31
  tail call void @free(ptr noundef %3)
  br label %33

33:                                               ; preds = %31, %32
  store ptr null, ptr @ipa_node_params_vector, align 8, !tbaa !62
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @ipa_register_cgraph_hooks() local_unnamed_addr #9 !prof !229 {
  %1 = load ptr, ptr @edge_removal_hook_holder, align 8, !tbaa !62
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %5, !prof !230

3:                                                ; preds = %0
  %4 = tail call ptr @cgraph_add_edge_removal_hook(ptr noundef nonnull @ipa_edge_removal_hook, ptr noundef null) #18
  store ptr %4, ptr @edge_removal_hook_holder, align 8, !tbaa !62
  br label %5

5:                                                ; preds = %3, %0
  %6 = load ptr, ptr @node_removal_hook_holder, align 8, !tbaa !62
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10, !prof !230

8:                                                ; preds = %5
  %9 = tail call ptr @cgraph_add_node_removal_hook(ptr noundef nonnull @ipa_node_removal_hook, ptr noundef null) #18
  store ptr %9, ptr @node_removal_hook_holder, align 8, !tbaa !62
  br label %10

10:                                               ; preds = %8, %5
  %11 = load ptr, ptr @edge_duplication_hook_holder, align 8, !tbaa !62
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %15, !prof !230

13:                                               ; preds = %10
  %14 = tail call ptr @cgraph_add_edge_duplication_hook(ptr noundef nonnull @ipa_edge_duplication_hook, ptr noundef null) #18
  store ptr %14, ptr @edge_duplication_hook_holder, align 8, !tbaa !62
  br label %15

15:                                               ; preds = %13, %10
  %16 = load ptr, ptr @node_duplication_hook_holder, align 8, !tbaa !62
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %20, !prof !230

18:                                               ; preds = %15
  %19 = tail call ptr @cgraph_add_node_duplication_hook(ptr noundef nonnull @ipa_node_duplication_hook, ptr noundef null) #18
  store ptr %19, ptr @node_duplication_hook_holder, align 8, !tbaa !62
  br label %20

20:                                               ; preds = %18, %15
  ret void
}

declare ptr @cgraph_add_edge_removal_hook(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal void @ipa_edge_removal_hook(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #9 !prof !61 {
  %3 = load ptr, ptr @ipa_edge_args_vector, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = load i32, ptr %3, align 8, !tbaa !146
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi i32 [ %6, %5 ], [ 0, %2 ]
  %9 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 12
  %10 = load i32, ptr %9, align 4, !tbaa !150
  %11 = icmp ugt i32 %8, %10
  br i1 %11, label %12, label %20

12:                                               ; preds = %7
  %13 = zext i32 %10 to i64
  %14 = getelementptr inbounds %struct.VEC_ipa_edge_args_t_base, ptr %3, i64 0, i32 2, i64 %13
  %15 = getelementptr inbounds %struct.VEC_ipa_edge_args_t_base, ptr %3, i64 0, i32 2, i64 %13, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !154
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %12
  tail call void @ggc_free(ptr noundef nonnull %16) #18
  br label %19

19:                                               ; preds = %12, %18
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, i8 0, i64 16, i1 false)
  br label %20

20:                                               ; preds = %7, %19
  ret void
}

declare ptr @cgraph_add_node_removal_hook(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal void @ipa_node_removal_hook(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #9 !prof !61 {
  %3 = load ptr, ptr @ipa_node_params_vector, align 8
  %4 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 24
  %5 = load i32, ptr %4, align 8, !tbaa !87
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds %struct.VEC_ipa_node_params_t_base, ptr %3, i64 0, i32 2, i64 %6
  tail call void @ipa_free_node_params_substructures(ptr noundef nonnull %7)
  ret void
}

declare ptr @cgraph_add_edge_duplication_hook(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @ipa_edge_duplication_hook(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #10 !prof !231 !PGOFuncName !232 {
  %4 = load ptr, ptr @ipa_edge_args_vector, align 8, !tbaa !62
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %9, !prof !233

6:                                                ; preds = %3
  %7 = load i32, ptr @cgraph_edge_max_uid, align 4, !tbaa !77
  %8 = tail call ptr @vec_gc_o_reserve_exact(ptr noundef null, i32 noundef %7, i64 noundef 8, i64 noundef 16) #18
  store ptr %8, ptr @ipa_edge_args_vector, align 8, !tbaa !62
  br label %9

9:                                                ; preds = %6, %3
  %10 = load ptr, ptr @ipa_edge_args_vector, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12, !prof !233

12:                                               ; preds = %9
  %13 = load i32, ptr %10, align 8, !tbaa !146
  br label %14

14:                                               ; preds = %12, %9
  %15 = phi i32 [ %13, %12 ], [ 0, %9 ]
  %16 = load i32, ptr @cgraph_edge_max_uid, align 4, !tbaa !77
  %17 = icmp ugt i32 %15, %16
  br i1 %17, label %49, label %18, !prof !234

18:                                               ; preds = %14
  %19 = add nsw i32 %16, 1
  br i1 %11, label %22, label %20, !prof !95

20:                                               ; preds = %18
  %21 = load i32, ptr %10, align 8, !tbaa !146
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i32 [ %21, %20 ], [ 0, %18 ]
  br i1 %11, label %26, label %24, !prof !95

24:                                               ; preds = %22
  %25 = load i32, ptr %10, align 8, !tbaa !146
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i32 [ %25, %24 ], [ 0, %22 ]
  %28 = sub nsw i32 %19, %27
  br i1 %11, label %35, label %29, !prof !95

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.VEC_ipa_edge_args_t_base, ptr %10, i64 0, i32 1
  %31 = load i32, ptr %30, align 4, !tbaa !148
  %32 = load i32, ptr %10, align 8, !tbaa !146
  %33 = sub i32 %31, %32
  %34 = icmp uge i32 %33, %28
  br label %37

35:                                               ; preds = %26
  %36 = icmp eq i32 %27, %19
  br label %37

37:                                               ; preds = %35, %29
  %38 = phi i1 [ %34, %29 ], [ %36, %35 ]
  br i1 %38, label %41, label %39, !prof !95

39:                                               ; preds = %37
  %40 = tail call ptr @vec_gc_o_reserve_exact(ptr noundef %10, i32 noundef %28, i64 noundef 8, i64 noundef 16) #18
  store ptr %40, ptr @ipa_edge_args_vector, align 8, !tbaa !62
  br label %41

41:                                               ; preds = %39, %37
  %42 = load ptr, ptr @ipa_edge_args_vector, align 8, !tbaa !62, !nonnull !149, !noundef !149
  store i32 %19, ptr %42, align 8, !tbaa !146
  %43 = getelementptr inbounds %struct.VEC_ipa_edge_args_t_base, ptr %42, i64 0, i32 2
  %44 = sext i32 %23 to i64
  %45 = getelementptr inbounds %struct.ipa_edge_args, ptr %43, i64 %44
  %46 = sub nsw i32 %19, %23
  %47 = sext i32 %46 to i64
  %48 = shl nsw i64 %47, 4
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %45, i8 0, i64 %48, i1 false), !prof !235
  br label %49

49:                                               ; preds = %14, %41
  %50 = load ptr, ptr @ipa_edge_args_vector, align 8
  %51 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 12
  %52 = load i32, ptr %51, align 4, !tbaa !150
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.VEC_ipa_edge_args_t_base, ptr %50, i64 0, i32 2, i64 %53
  %55 = getelementptr inbounds %struct.cgraph_edge, ptr %1, i64 0, i32 12
  %56 = load i32, ptr %55, align 4, !tbaa !150
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.VEC_ipa_edge_args_t_base, ptr %50, i64 0, i32 2, i64 %57
  %59 = load i32, ptr %54, align 8, !tbaa !151
  store i32 %59, ptr %58, align 8, !tbaa !151
  %60 = getelementptr inbounds %struct.VEC_ipa_edge_args_t_base, ptr %50, i64 0, i32 2, i64 %53, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !154
  %62 = icmp eq ptr %61, null
  br i1 %62, label %67, label %63, !prof !236

63:                                               ; preds = %49
  %64 = sext i32 %59 to i64
  %65 = shl nsw i64 %64, 5
  %66 = tail call ptr @ggc_alloc_stat(i64 noundef %65) #18
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %66, ptr nonnull align 1 %61, i64 %65, i1 false), !prof !237
  br label %67

67:                                               ; preds = %49, %63
  %68 = phi ptr [ %66, %63 ], [ null, %49 ]
  %69 = getelementptr inbounds %struct.VEC_ipa_edge_args_t_base, ptr %50, i64 0, i32 2, i64 %57, i32 1
  store ptr %68, ptr %69, align 8, !tbaa !154
  ret void
}

declare ptr @cgraph_add_node_duplication_hook(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @ipa_node_duplication_hook(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #10 !prof !238 !PGOFuncName !239 {
  %4 = load ptr, ptr @ipa_node_params_vector, align 8, !tbaa !62
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %9, !prof !240

6:                                                ; preds = %3
  %7 = load i32, ptr @cgraph_max_uid, align 4, !tbaa !77
  %8 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %7, i64 noundef 8, i64 noundef 48) #18
  store ptr %8, ptr @ipa_node_params_vector, align 8, !tbaa !62
  br label %9

9:                                                ; preds = %6, %3
  %10 = load ptr, ptr @ipa_node_params_vector, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12, !prof !240

12:                                               ; preds = %9
  %13 = load i32, ptr %10, align 8, !tbaa !225
  br label %14

14:                                               ; preds = %12, %9
  %15 = phi i32 [ %13, %12 ], [ 0, %9 ]
  %16 = load i32, ptr @cgraph_max_uid, align 4, !tbaa !77
  %17 = icmp ugt i32 %15, %16
  br i1 %17, label %49, label %18, !prof !241

18:                                               ; preds = %14
  %19 = add nsw i32 %16, 1
  br i1 %11, label %22, label %20

20:                                               ; preds = %18
  %21 = load i32, ptr %10, align 8, !tbaa !225
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i32 [ %21, %20 ], [ 0, %18 ]
  br i1 %11, label %26, label %24

24:                                               ; preds = %22
  %25 = load i32, ptr %10, align 8, !tbaa !225
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i32 [ %25, %24 ], [ 0, %22 ]
  %28 = sub nsw i32 %19, %27
  br i1 %11, label %35, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.VEC_ipa_node_params_t_base, ptr %10, i64 0, i32 1
  %31 = load i32, ptr %30, align 4, !tbaa !242
  %32 = load i32, ptr %10, align 8, !tbaa !225
  %33 = sub i32 %31, %32
  %34 = icmp uge i32 %33, %28
  br label %37

35:                                               ; preds = %26
  %36 = icmp eq i32 %27, %19
  br label %37

37:                                               ; preds = %35, %29
  %38 = phi i1 [ %34, %29 ], [ %36, %35 ]
  br i1 %38, label %41, label %39

39:                                               ; preds = %37
  %40 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef %10, i32 noundef %28, i64 noundef 8, i64 noundef 48) #18
  store ptr %40, ptr @ipa_node_params_vector, align 8, !tbaa !62
  br label %41

41:                                               ; preds = %39, %37
  %42 = load ptr, ptr @ipa_node_params_vector, align 8, !tbaa !62, !nonnull !149, !noundef !149
  store i32 %19, ptr %42, align 8, !tbaa !225
  %43 = getelementptr inbounds %struct.VEC_ipa_node_params_t_base, ptr %42, i64 0, i32 2
  %44 = sext i32 %23 to i64
  %45 = getelementptr inbounds %struct.ipa_node_params, ptr %43, i64 %44
  %46 = sub nsw i32 %19, %23
  %47 = sext i32 %46 to i64
  %48 = mul nsw i64 %47, 48
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %45, i8 0, i64 %48, i1 false)
  br label %49

49:                                               ; preds = %14, %41
  %50 = load ptr, ptr @ipa_node_params_vector, align 8
  %51 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 24
  %52 = load i32, ptr %51, align 8, !tbaa !87
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.VEC_ipa_node_params_t_base, ptr %50, i64 0, i32 2, i64 %53
  %55 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 24
  %56 = load i32, ptr %55, align 8, !tbaa !87
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.VEC_ipa_node_params_t_base, ptr %50, i64 0, i32 2, i64 %57
  %59 = load i32, ptr %54, align 8, !tbaa !107
  store i32 %59, ptr %58, align 8, !tbaa !107
  %60 = getelementptr inbounds %struct.VEC_ipa_node_params_t_base, ptr %50, i64 0, i32 2, i64 %53, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !100
  %62 = icmp eq ptr %61, null
  br i1 %62, label %67, label %63, !prof !240

63:                                               ; preds = %49
  %64 = sext i32 %59 to i64
  %65 = shl nsw i64 %64, 5
  %66 = tail call ptr @xmalloc(i64 noundef %65) #18
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %66, ptr nonnull align 1 %61, i64 %65, i1 false), !prof !243
  br label %67

67:                                               ; preds = %49, %63
  %68 = phi ptr [ %66, %63 ], [ null, %49 ]
  %69 = getelementptr inbounds %struct.VEC_ipa_node_params_t_base, ptr %50, i64 0, i32 2, i64 %57, i32 1
  store ptr %68, ptr %69, align 8, !tbaa !100
  %70 = getelementptr inbounds %struct.VEC_ipa_node_params_t_base, ptr %50, i64 0, i32 2, i64 %53, i32 3
  %71 = load ptr, ptr %70, align 8, !tbaa !244
  %72 = getelementptr inbounds %struct.VEC_ipa_node_params_t_base, ptr %50, i64 0, i32 2, i64 %57, i32 3
  store ptr %71, ptr %72, align 8, !tbaa !244
  %73 = getelementptr inbounds %struct.VEC_ipa_node_params_t_base, ptr %50, i64 0, i32 2, i64 %53, i32 4
  %74 = load i64, ptr %73, align 8, !tbaa !245
  %75 = getelementptr inbounds %struct.VEC_ipa_node_params_t_base, ptr %50, i64 0, i32 2, i64 %57, i32 4
  store i64 %74, ptr %75, align 8, !tbaa !245
  %76 = getelementptr inbounds %struct.VEC_ipa_node_params_t_base, ptr %50, i64 0, i32 2, i64 %53, i32 2
  %77 = load ptr, ptr %76, align 8, !tbaa !62
  %78 = icmp eq ptr %77, null
  br i1 %78, label %88, label %79, !prof !163

79:                                               ; preds = %67, %79
  %80 = phi ptr [ %86, %79 ], [ %77, %67 ]
  %81 = getelementptr inbounds %struct.VEC_ipa_node_params_t_base, ptr %50, i64 0, i32 2, i64 %57, i32 2
  %82 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 40) #18
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %82, ptr noundef nonnull align 8 dereferenceable(40) %80, i64 40, i1 false)
  %83 = load ptr, ptr %81, align 8, !tbaa !186
  %84 = getelementptr inbounds %struct.ipa_param_call_note, ptr %82, i64 0, i32 1
  store ptr %83, ptr %84, align 8, !tbaa !187
  store ptr %82, ptr %81, align 8, !tbaa !186
  %85 = getelementptr inbounds %struct.ipa_param_call_note, ptr %80, i64 0, i32 1
  %86 = load ptr, ptr %85, align 8, !tbaa !62
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %79, !prof !163, !llvm.loop !246

88:                                               ; preds = %79, %67
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @free_all_ipa_structures_after_ipa_cp() local_unnamed_addr #9 !prof !81 {
  %1 = load i32, ptr @flag_indirect_inlining, align 4, !tbaa !77
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %4, !prof !213

3:                                                ; preds = %0
  tail call void @ipa_free_all_edge_args()
  tail call void @ipa_free_all_node_params()
  tail call fastcc void @ipa_unregister_cgraph_hooks()
  br label %4

4:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @ipa_unregister_cgraph_hooks() unnamed_addr #9 !prof !81 !PGOFuncName !247 {
  %1 = load ptr, ptr @edge_removal_hook_holder, align 8, !tbaa !62
  tail call void @cgraph_remove_edge_removal_hook(ptr noundef %1) #18
  store ptr null, ptr @edge_removal_hook_holder, align 8, !tbaa !62
  %2 = load ptr, ptr @node_removal_hook_holder, align 8, !tbaa !62
  tail call void @cgraph_remove_node_removal_hook(ptr noundef %2) #18
  store ptr null, ptr @node_removal_hook_holder, align 8, !tbaa !62
  %3 = load ptr, ptr @edge_duplication_hook_holder, align 8, !tbaa !62
  tail call void @cgraph_remove_edge_duplication_hook(ptr noundef %3) #18
  store ptr null, ptr @edge_duplication_hook_holder, align 8, !tbaa !62
  %4 = load ptr, ptr @node_duplication_hook_holder, align 8, !tbaa !62
  tail call void @cgraph_remove_node_duplication_hook(ptr noundef %4) #18
  store ptr null, ptr @node_duplication_hook_holder, align 8, !tbaa !62
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @free_all_ipa_structures_after_iinln() local_unnamed_addr #9 !prof !81 {
  tail call void @ipa_free_all_edge_args()
  tail call void @ipa_free_all_node_params()
  tail call fastcc void @ipa_unregister_cgraph_hooks()
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @ipa_print_node_params(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #9 !prof !61 {
  %3 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 27
  %4 = load i16, ptr %3, align 4
  %5 = and i16 %4, 32
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %51, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr @ipa_node_params_vector, align 8
  %9 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 24
  %10 = load i32, ptr %9, align 8, !tbaa !87
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds %struct.VEC_ipa_node_params_t_base, ptr %8, i64 0, i32 2, i64 %11
  %13 = tail call ptr @cgraph_node_name(ptr noundef %1) #18
  %14 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.16, ptr noundef %13)
  %15 = load i32, ptr %12, align 8, !tbaa !107
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %51

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.VEC_ipa_node_params_t_base, ptr %8, i64 0, i32 2, i64 %11, i32 1
  %19 = zext nneg i32 %15 to i64
  br label %20

20:                                               ; preds = %17, %47
  %21 = phi i64 [ 0, %17 ], [ %49, %47 ]
  %22 = load ptr, ptr %18, align 8, !tbaa !100
  %23 = getelementptr inbounds %struct.ipa_param_descriptor, ptr %22, i64 %21, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !108
  %25 = load i64, ptr %24, align 8
  %26 = and i64 %25, 65535
  %27 = icmp eq i64 %26, 34
  br i1 %27, label %28, label %39

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.tree_decl_minimal, ptr %24, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !73
  %31 = icmp eq ptr %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %28
  %33 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 22), align 8, !tbaa !248
  %34 = tail call ptr %33(ptr noundef nonnull %24, i32 noundef 2) #18
  br label %35

35:                                               ; preds = %28, %32
  %36 = phi ptr [ %34, %32 ], [ @.str.18, %28 ]
  %37 = trunc i64 %21 to i32
  %38 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.17, i32 noundef %37, ptr noundef %36)
  br label %39

39:                                               ; preds = %35, %20
  %40 = load ptr, ptr %18, align 8, !tbaa !100
  %41 = getelementptr inbounds %struct.ipa_param_descriptor, ptr %40, i64 %21, i32 2
  %42 = load i8, ptr %41, align 8
  %43 = and i8 %42, 1
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %39
  %46 = tail call i64 @fwrite(ptr nonnull @.str.19, i64 9, i64 1, ptr %0)
  br label %47

47:                                               ; preds = %45, %39
  %48 = tail call i32 @fputc(i32 10, ptr %0)
  %49 = add nuw nsw i64 %21, 1
  %50 = icmp eq i64 %49, %19
  br i1 %50, label %51, label %20, !llvm.loop !256

51:                                               ; preds = %47, %7, %2
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @ipa_print_all_params(ptr nocapture noundef %0) local_unnamed_addr #9 !prof !61 {
  %2 = tail call i64 @fwrite(ptr nonnull @.str.20, i64 22, i64 1, ptr %0)
  %3 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !62
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %8, %5 ], [ %3, %1 ]
  tail call void @ipa_print_node_params(ptr noundef %0, ptr noundef nonnull %6)
  %7 = getelementptr inbounds %struct.cgraph_node, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !62
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %5, !llvm.loop !257

10:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @ipa_get_vector_of_formal_parms(ptr nocapture noundef readonly %0) local_unnamed_addr #9 !prof !61 {
  %2 = getelementptr inbounds %struct.tree_decl_non_common, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !73
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %10, %5 ], [ %3, %1 ]
  %7 = phi i32 [ %8, %5 ], [ 0, %1 ]
  %8 = add nuw nsw i32 %7, 1
  %9 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !73
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %5, !llvm.loop !106

12:                                               ; preds = %5, %1
  %13 = phi i32 [ 0, %1 ], [ %8, %5 ]
  %14 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %13) #18
  %15 = load ptr, ptr %2, align 8, !tbaa !73
  %16 = icmp eq ptr %15, null
  br i1 %16, label %28, label %17

17:                                               ; preds = %12
  %18 = load i32, ptr %14, align 8, !tbaa !258
  br label %19

19:                                               ; preds = %17, %19
  %20 = phi i32 [ %18, %17 ], [ %22, %19 ]
  %21 = phi ptr [ %15, %17 ], [ %26, %19 ]
  %22 = add i32 %20, 1
  store i32 %22, ptr %14, align 8, !tbaa !258
  %23 = zext i32 %20 to i64
  %24 = getelementptr inbounds %struct.VEC_tree_base, ptr %14, i64 0, i32 2, i64 %23
  store ptr %21, ptr %24, align 8, !tbaa !62
  %25 = getelementptr inbounds %struct.tree_common, ptr %21, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !73
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %19, !llvm.loop !260

28:                                               ; preds = %19, %12
  ret ptr %14
}

; Function Attrs: cold nounwind uwtable
define dso_local void @ipa_modify_formal_parameters(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #9 !prof !61 {
  %4 = getelementptr inbounds %struct.tree_decl_non_common, ptr %0, i64 0, i32 2
  %5 = icmp eq ptr %1, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = load i32, ptr %1, align 8, !tbaa !261
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi i32 [ %7, %6 ], [ 0, %3 ]
  %10 = icmp eq ptr %2, null
  %11 = select i1 %10, ptr @.str.21, ptr %2
  %12 = load ptr, ptr %4, align 8, !tbaa !73
  %13 = icmp eq ptr %12, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %8, %14
  %15 = phi ptr [ %19, %14 ], [ %12, %8 ]
  %16 = phi i32 [ %17, %14 ], [ 0, %8 ]
  %17 = add nuw nsw i32 %16, 1
  %18 = getelementptr inbounds %struct.tree_common, ptr %15, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !73
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %14, !llvm.loop !106

21:                                               ; preds = %14, %8
  %22 = phi i32 [ 0, %8 ], [ %17, %14 ]
  %23 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %22) #18
  %24 = load ptr, ptr %4, align 8, !tbaa !73
  %25 = icmp eq ptr %24, null
  br i1 %25, label %37, label %26

26:                                               ; preds = %21
  %27 = load i32, ptr %23, align 8, !tbaa !258
  br label %28

28:                                               ; preds = %26, %28
  %29 = phi i32 [ %27, %26 ], [ %31, %28 ]
  %30 = phi ptr [ %24, %26 ], [ %35, %28 ]
  %31 = add i32 %29, 1
  store i32 %31, ptr %23, align 8, !tbaa !258
  %32 = zext i32 %29 to i64
  %33 = getelementptr inbounds %struct.VEC_tree_base, ptr %23, i64 0, i32 2, i64 %32
  store ptr %30, ptr %33, align 8, !tbaa !62
  %34 = getelementptr inbounds %struct.tree_common, ptr %30, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !73
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %28, !llvm.loop !260

37:                                               ; preds = %28, %21
  %38 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !73
  %40 = getelementptr inbounds %struct.tree_type, ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !73
  %42 = icmp eq ptr %41, null
  br i1 %42, label %103, label %43

43:                                               ; preds = %37
  %44 = tail call ptr @tree_last(ptr noundef nonnull %41) #18
  %45 = getelementptr inbounds %struct.tree_list, ptr %44, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !73
  %47 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !62
  %48 = icmp ne ptr %46, %47
  %49 = load ptr, ptr %40, align 8, !tbaa !73
  %50 = icmp eq ptr %49, null
  br i1 %50, label %58, label %51

51:                                               ; preds = %43, %51
  %52 = phi ptr [ %56, %51 ], [ %49, %43 ]
  %53 = phi i32 [ %54, %51 ], [ 0, %43 ]
  %54 = add nuw nsw i32 %53, 1
  %55 = getelementptr inbounds %struct.tree_common, ptr %52, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !73
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %51, !llvm.loop !263

58:                                               ; preds = %51, %43
  %59 = phi i32 [ 0, %43 ], [ %54, %51 ]
  %60 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %59) #18
  %61 = load ptr, ptr %40, align 8, !tbaa !73
  %62 = icmp eq ptr %61, null
  br i1 %62, label %76, label %63

63:                                               ; preds = %58
  %64 = load i32, ptr %60, align 8, !tbaa !258
  br label %65

65:                                               ; preds = %63, %65
  %66 = phi i32 [ %64, %63 ], [ %70, %65 ]
  %67 = phi ptr [ %61, %63 ], [ %74, %65 ]
  %68 = getelementptr inbounds %struct.tree_list, ptr %67, i64 0, i32 2
  %69 = load ptr, ptr %68, align 8, !tbaa !73
  %70 = add i32 %66, 1
  store i32 %70, ptr %60, align 8, !tbaa !258
  %71 = zext i32 %66 to i64
  %72 = getelementptr inbounds %struct.VEC_tree_base, ptr %60, i64 0, i32 2, i64 %71
  store ptr %69, ptr %72, align 8, !tbaa !62
  %73 = getelementptr inbounds %struct.tree_common, ptr %67, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !73
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %65, !llvm.loop !264

76:                                               ; preds = %65, %58
  %77 = icmp eq ptr %23, null
  br i1 %48, label %90, label %78

78:                                               ; preds = %76
  br i1 %77, label %82, label %79

79:                                               ; preds = %78
  %80 = load i32, ptr %23, align 8, !tbaa !258
  %81 = add i32 %80, 1
  br label %82

82:                                               ; preds = %78, %79
  %83 = phi i32 [ %81, %79 ], [ 1, %78 ]
  %84 = icmp eq ptr %60, null
  br i1 %84, label %87, label %85

85:                                               ; preds = %82
  %86 = load i32, ptr %60, align 8, !tbaa !258
  br label %87

87:                                               ; preds = %82, %85
  %88 = phi i32 [ %86, %85 ], [ 0, %82 ]
  %89 = icmp eq i32 %83, %88
  br i1 %89, label %103, label %101

90:                                               ; preds = %76
  br i1 %77, label %93, label %91

91:                                               ; preds = %90
  %92 = load i32, ptr %23, align 8, !tbaa !258
  br label %93

93:                                               ; preds = %90, %91
  %94 = phi i32 [ %92, %91 ], [ 0, %90 ]
  %95 = icmp eq ptr %60, null
  br i1 %95, label %98, label %96

96:                                               ; preds = %93
  %97 = load i32, ptr %60, align 8, !tbaa !258
  br label %98

98:                                               ; preds = %93, %96
  %99 = phi i32 [ %97, %96 ], [ 0, %93 ]
  %100 = icmp eq i32 %94, %99
  br i1 %100, label %103, label %101

101:                                              ; preds = %98, %87
  %102 = phi i32 [ 1514, %87 ], [ 1516, %98 ]
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef %102, ptr noundef nonnull @.str.1) #18
  br label %103

103:                                              ; preds = %101, %37, %98, %87
  %104 = phi ptr [ %60, %87 ], [ %60, %98 ], [ null, %37 ], [ %60, %101 ]
  %105 = phi i1 [ false, %87 ], [ true, %98 ], [ true, %37 ], [ %48, %101 ]
  %106 = icmp sgt i32 %9, 0
  br i1 %106, label %107, label %169

107:                                              ; preds = %103
  %108 = zext nneg i32 %9 to i64
  br label %109

109:                                              ; preds = %107, %164
  %110 = phi i64 [ 0, %107 ], [ %167, %164 ]
  %111 = phi ptr [ null, %107 ], [ %166, %164 ]
  %112 = phi ptr [ %4, %107 ], [ %165, %164 ]
  %113 = icmp eq ptr %112, null
  br i1 %113, label %114, label %115

114:                                              ; preds = %109
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1527, ptr noundef nonnull @.str.1) #18
  br label %115

115:                                              ; preds = %109, %114
  %116 = getelementptr inbounds %struct.VEC_ipa_parm_adjustment_t_base, ptr %1, i64 0, i32 2, i64 %110
  %117 = getelementptr inbounds %struct.VEC_ipa_parm_adjustment_t_base, ptr %1, i64 0, i32 2, i64 %110, i32 6
  %118 = load i32, ptr %117, align 8, !tbaa !265
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds %struct.VEC_tree_base, ptr %23, i64 0, i32 2, i64 %119
  %121 = load ptr, ptr %120, align 8, !tbaa !62
  store ptr %121, ptr %116, align 8, !tbaa !267
  %122 = getelementptr inbounds %struct.VEC_ipa_parm_adjustment_t_base, ptr %1, i64 0, i32 2, i64 %110, i32 7
  %123 = load i8, ptr %122, align 4
  %124 = and i8 %123, 1
  %125 = icmp eq i8 %124, 0
  br i1 %125, label %131, label %126

126:                                              ; preds = %115
  br i1 %42, label %160, label %127

127:                                              ; preds = %126
  %128 = getelementptr inbounds %struct.VEC_tree_base, ptr %104, i64 0, i32 2, i64 %119
  %129 = load ptr, ptr %128, align 8, !tbaa !62
  %130 = tail call ptr @tree_cons_stat(ptr noundef null, ptr noundef %129, ptr noundef %111) #18
  br label %160

131:                                              ; preds = %115
  %132 = and i8 %123, 2
  %133 = icmp eq i8 %132, 0
  br i1 %133, label %134, label %164

134:                                              ; preds = %131
  %135 = and i8 %123, 4
  %136 = icmp eq i8 %135, 0
  %137 = getelementptr inbounds %struct.VEC_ipa_parm_adjustment_t_base, ptr %1, i64 0, i32 2, i64 %110, i32 1
  %138 = load ptr, ptr %137, align 8, !tbaa !268
  br i1 %136, label %141, label %139

139:                                              ; preds = %134
  %140 = tail call ptr @build_pointer_type(ptr noundef %138) #18
  br label %141

141:                                              ; preds = %134, %139
  %142 = phi ptr [ %140, %139 ], [ %138, %134 ]
  br i1 %42, label %145, label %143

143:                                              ; preds = %141
  %144 = tail call ptr @tree_cons_stat(ptr noundef null, ptr noundef %142, ptr noundef %111) #18
  br label %145

145:                                              ; preds = %143, %141
  %146 = phi ptr [ %144, %143 ], [ %111, %141 ]
  %147 = tail call ptr @build_decl_stat(i32 noundef 0, i32 noundef 34, ptr noundef null, ptr noundef %142) #18
  %148 = tail call ptr @create_tmp_var_name(ptr noundef nonnull %11) #18
  %149 = getelementptr inbounds %struct.tree_decl_minimal, ptr %147, i64 0, i32 3
  store ptr %148, ptr %149, align 8, !tbaa !73
  %150 = getelementptr inbounds %struct.tree_decl_common, ptr %147, i64 0, i32 2
  %151 = load i64, ptr %150, align 8
  %152 = or i64 %151, 4096
  store i64 %152, ptr %150, align 8
  %153 = getelementptr inbounds %struct.tree_decl_common, ptr %147, i64 0, i32 5
  store ptr %142, ptr %153, align 8, !tbaa !73
  %154 = getelementptr inbounds %struct.tree_decl_minimal, ptr %147, i64 0, i32 4
  store ptr %0, ptr %154, align 8, !tbaa !73
  %155 = load i64, ptr %147, align 8
  %156 = or i64 %155, 16777216
  store i64 %156, ptr %147, align 8
  %157 = or i64 %151, 5120
  store i64 %157, ptr %150, align 8
  tail call void @layout_decl(ptr noundef nonnull %147, i32 noundef 0) #18
  %158 = tail call zeroext i8 @add_referenced_var(ptr noundef nonnull %147) #18
  tail call void @mark_sym_for_renaming(ptr noundef nonnull %147) #18
  store ptr %121, ptr %116, align 8, !tbaa !267
  %159 = getelementptr inbounds %struct.VEC_ipa_parm_adjustment_t_base, ptr %1, i64 0, i32 2, i64 %110, i32 2
  store ptr %147, ptr %159, align 8, !tbaa !269
  br label %160

160:                                              ; preds = %126, %127, %145
  %161 = phi ptr [ %147, %145 ], [ %121, %127 ], [ %121, %126 ]
  %162 = phi ptr [ %146, %145 ], [ %130, %127 ], [ %111, %126 ]
  store ptr %161, ptr %112, align 8, !tbaa !62
  %163 = getelementptr inbounds %struct.tree_common, ptr %161, i64 0, i32 1
  br label %164

164:                                              ; preds = %160, %131
  %165 = phi ptr [ %112, %131 ], [ %163, %160 ]
  %166 = phi ptr [ %111, %131 ], [ %162, %160 ]
  %167 = add nuw nsw i64 %110, 1
  %168 = icmp eq i64 %167, %108
  br i1 %168, label %169, label %109, !llvm.loop !270

169:                                              ; preds = %164, %103
  %170 = phi ptr [ %4, %103 ], [ %165, %164 ]
  %171 = phi ptr [ null, %103 ], [ %166, %164 ]
  store ptr null, ptr %170, align 8, !tbaa !62
  br i1 %42, label %179, label %172

172:                                              ; preds = %169
  %173 = tail call ptr @nreverse(ptr noundef %171) #18
  br i1 %105, label %179, label %174

174:                                              ; preds = %172
  %175 = icmp eq ptr %173, null
  %176 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 55), align 8, !tbaa !62
  br i1 %175, label %179, label %177

177:                                              ; preds = %174
  %178 = getelementptr inbounds %struct.tree_common, ptr %171, i64 0, i32 1
  store ptr %176, ptr %178, align 8, !tbaa !73
  br label %179

179:                                              ; preds = %174, %172, %177, %169
  %180 = phi ptr [ %173, %177 ], [ %173, %172 ], [ null, %169 ], [ %176, %174 ]
  %181 = load i64, ptr %39, align 8
  %182 = and i64 %181, 65535
  %183 = icmp eq i64 %182, 21
  br i1 %183, label %184, label %193

184:                                              ; preds = %179
  %185 = getelementptr inbounds %struct.VEC_ipa_parm_adjustment_t_base, ptr %1, i64 0, i32 2, i64 0, i32 7
  %186 = load i8, ptr %185, align 4
  %187 = and i8 %186, 1
  %188 = icmp eq i8 %187, 0
  br i1 %188, label %196, label %189

189:                                              ; preds = %184
  %190 = getelementptr inbounds %struct.VEC_ipa_parm_adjustment_t_base, ptr %1, i64 0, i32 2, i64 0, i32 6
  %191 = load i32, ptr %190, align 8, !tbaa !265
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %193, label %196

193:                                              ; preds = %189, %179
  %194 = tail call ptr @copy_node_stat(ptr noundef nonnull %39) #18
  %195 = getelementptr inbounds %struct.tree_type, ptr %194, i64 0, i32 1
  store ptr %180, ptr %195, align 8, !tbaa !73
  br label %205

196:                                              ; preds = %189, %184
  %197 = getelementptr inbounds %struct.tree_common, ptr %39, i64 0, i32 2
  %198 = load ptr, ptr %197, align 8, !tbaa !73
  %199 = tail call ptr @build_function_type(ptr noundef %198, ptr noundef %180) #18
  %200 = tail call ptr @build_distinct_type_copy(ptr noundef %199) #18
  %201 = getelementptr inbounds %struct.tree_type, ptr %39, i64 0, i32 18
  %202 = load ptr, ptr %201, align 8, !tbaa !73
  %203 = getelementptr inbounds %struct.tree_type, ptr %200, i64 0, i32 18
  store ptr %202, ptr %203, align 8, !tbaa !73
  %204 = getelementptr inbounds %struct.tree_decl_non_common, ptr %0, i64 0, i32 4
  store ptr null, ptr %204, align 8, !tbaa !73
  br label %205

205:                                              ; preds = %196, %193
  %206 = phi ptr [ %194, %193 ], [ %200, %196 ]
  %207 = getelementptr inbounds %struct.tree_type, ptr %39, i64 0, i32 16
  %208 = load ptr, ptr %207, align 8, !tbaa !73
  %209 = icmp eq ptr %39, %208
  %210 = getelementptr inbounds %struct.tree_type, ptr %206, i64 0, i32 16
  br i1 %209, label %215, label %211

211:                                              ; preds = %205
  store ptr %208, ptr %210, align 8, !tbaa !73
  %212 = getelementptr inbounds %struct.tree_type, ptr %208, i64 0, i32 15
  %213 = load ptr, ptr %212, align 8, !tbaa !73
  %214 = getelementptr inbounds %struct.tree_type, ptr %206, i64 0, i32 15
  store ptr %213, ptr %214, align 8, !tbaa !73
  store ptr %206, ptr %212, align 8, !tbaa !73
  br label %217

215:                                              ; preds = %205
  store ptr %206, ptr %210, align 8, !tbaa !73
  %216 = getelementptr inbounds %struct.tree_type, ptr %206, i64 0, i32 15
  store ptr null, ptr %216, align 8, !tbaa !73
  br label %217

217:                                              ; preds = %215, %211
  store ptr %206, ptr %38, align 8, !tbaa !73
  %218 = icmp eq ptr %104, null
  br i1 %218, label %220, label %219

219:                                              ; preds = %217
  tail call void @free(ptr noundef %104)
  br label %220

220:                                              ; preds = %219, %217
  %221 = icmp eq ptr %23, null
  br i1 %221, label %223, label %222

222:                                              ; preds = %220
  tail call void @free(ptr noundef %23)
  br label %223

223:                                              ; preds = %220, %222
  ret void
}

declare ptr @tree_last(ptr noundef) local_unnamed_addr #3

declare ptr @tree_cons_stat(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build_pointer_type(ptr noundef) local_unnamed_addr #3

declare ptr @build_decl_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @create_tmp_var_name(ptr noundef) local_unnamed_addr #3

declare void @layout_decl(ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @add_referenced_var(ptr noundef) local_unnamed_addr #3

declare void @mark_sym_for_renaming(ptr noundef) local_unnamed_addr #3

declare ptr @nreverse(ptr noundef) local_unnamed_addr #3

declare ptr @copy_node_stat(ptr noundef) local_unnamed_addr #3

declare ptr @build_distinct_type_copy(ptr noundef) local_unnamed_addr #3

declare ptr @build_function_type(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @ipa_modify_call_arguments(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2) local_unnamed_addr #9 !prof !61 {
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #18
  %7 = icmp eq ptr %2, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %3
  %9 = load i32, ptr %2, align 8, !tbaa !261
  br label %10

10:                                               ; preds = %3, %8
  %11 = phi i32 [ %9, %8 ], [ 0, %3 ]
  %12 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %11) #18
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #18
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef %1) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !167
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #18
  %13 = icmp sgt i32 %11, 0
  br i1 %13, label %14, label %152

14:                                               ; preds = %10
  %15 = zext nneg i32 %11 to i64
  br label %16

16:                                               ; preds = %14, %149
  %17 = phi i64 [ 0, %14 ], [ %150, %149 ]
  %18 = getelementptr inbounds %struct.VEC_ipa_parm_adjustment_t_base, ptr %2, i64 0, i32 2, i64 %17, i32 7
  %19 = load i8, ptr %18, align 4
  %20 = and i8 %19, 1
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %50, label %22

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.VEC_ipa_parm_adjustment_t_base, ptr %2, i64 0, i32 2, i64 %17, i32 6
  %24 = load i32, ptr %23, align 8, !tbaa !265
  %25 = add i32 %24, 3
  %26 = load i32, ptr %1, align 8
  %27 = and i32 %26, 255
  %28 = add nsw i32 %27, -10
  %29 = icmp ult i32 %28, -9
  br i1 %29, label %44, label %30

30:                                               ; preds = %22
  %31 = zext nneg i32 %27 to i64
  %32 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %31
  %33 = load i32, ptr %32, align 4, !tbaa !77
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %34
  %36 = load i64, ptr %35, align 8, !tbaa !162
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  call void @fancy_abort(ptr noundef nonnull @.str.35, i32 noundef 1622, ptr noundef nonnull @.str.1) #18
  br label %39

39:                                               ; preds = %38, %30
  %40 = getelementptr inbounds i8, ptr %1, i64 %36
  %41 = zext i32 %25 to i64
  %42 = getelementptr inbounds ptr, ptr %40, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa !62
  br label %44

44:                                               ; preds = %22, %39
  %45 = phi ptr [ %43, %39 ], [ null, %22 ]
  %46 = load i32, ptr %12, align 8, !tbaa !258
  %47 = add i32 %46, 1
  store i32 %47, ptr %12, align 8, !tbaa !258
  %48 = zext i32 %46 to i64
  %49 = getelementptr inbounds %struct.VEC_tree_base, ptr %12, i64 0, i32 2, i64 %48
  store ptr %45, ptr %49, align 8, !tbaa !62
  br label %149

50:                                               ; preds = %16
  %51 = and i8 %19, 2
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %53, label %149

53:                                               ; preds = %50
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #18
  %54 = getelementptr inbounds %struct.VEC_ipa_parm_adjustment_t_base, ptr %2, i64 0, i32 2, i64 %17, i32 6
  %55 = load i32, ptr %54, align 8, !tbaa !265
  %56 = add i32 %55, 3
  %57 = load i32, ptr %1, align 8
  %58 = and i32 %57, 255
  %59 = add nsw i32 %58, -10
  %60 = icmp ult i32 %59, -9
  br i1 %60, label %75, label %61

61:                                               ; preds = %53
  %62 = zext nneg i32 %58 to i64
  %63 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %62
  %64 = load i32, ptr %63, align 4, !tbaa !77
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %65
  %67 = load i64, ptr %66, align 8, !tbaa !162
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %61
  call void @fancy_abort(ptr noundef nonnull @.str.35, i32 noundef 1622, ptr noundef nonnull @.str.1) #18
  br label %70

70:                                               ; preds = %69, %61
  %71 = getelementptr inbounds i8, ptr %1, i64 %67
  %72 = zext i32 %56 to i64
  %73 = getelementptr inbounds ptr, ptr %71, i64 %72
  %74 = load ptr, ptr %73, align 8, !tbaa !62
  br label %75

75:                                               ; preds = %53, %70
  %76 = phi ptr [ %74, %70 ], [ null, %53 ]
  store ptr %76, ptr %6, align 8, !tbaa !62
  %77 = load i64, ptr %76, align 8
  %78 = and i64 %77, 65535
  %79 = icmp eq i64 %78, 121
  br i1 %79, label %80, label %83

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.tree_exp, ptr %76, i64 0, i32 3
  %82 = load ptr, ptr %81, align 8, !tbaa !73
  store ptr %82, ptr %6, align 8, !tbaa !62
  br label %83

83:                                               ; preds = %75, %80
  %84 = phi i8 [ 0, %80 ], [ 1, %75 ]
  %85 = load ptr, ptr %6, align 8, !tbaa !62
  %86 = getelementptr inbounds %struct.tree_common, ptr %85, i64 0, i32 2
  %87 = load ptr, ptr %86, align 8, !tbaa !73
  %88 = getelementptr inbounds %struct.VEC_ipa_parm_adjustment_t_base, ptr %2, i64 0, i32 2, i64 %17, i32 5
  %89 = load i64, ptr %88, align 8, !tbaa !271
  %90 = getelementptr inbounds %struct.VEC_ipa_parm_adjustment_t_base, ptr %2, i64 0, i32 2, i64 %17, i32 1
  %91 = load ptr, ptr %90, align 8, !tbaa !268
  %92 = call zeroext i8 @build_ref_for_offset(ptr noundef nonnull %6, ptr noundef %87, i64 noundef %89, ptr noundef %91, i8 noundef zeroext %84) #18
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %101, label %94

94:                                               ; preds = %83
  %95 = load i8, ptr %18, align 4
  %96 = and i8 %95, 4
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %132, label %98

98:                                               ; preds = %94
  %99 = load ptr, ptr %6, align 8, !tbaa !62
  %100 = call ptr @build_fold_addr_expr_loc(i32 noundef 0, ptr noundef %99) #18
  store ptr %100, ptr %6, align 8, !tbaa !62
  br label %132

101:                                              ; preds = %83
  %102 = load ptr, ptr %90, align 8, !tbaa !268
  %103 = call ptr @build_pointer_type(ptr noundef %102) #18
  store ptr %76, ptr %6, align 8, !tbaa !62
  %104 = getelementptr inbounds %struct.tree_common, ptr %76, i64 0, i32 2
  %105 = load ptr, ptr %104, align 8, !tbaa !73
  %106 = load i64, ptr %105, align 8
  %107 = trunc i64 %106 to i16
  switch i16 %107, label %108 [
    i16 10, label %110
    i16 12, label %110
  ]

108:                                              ; preds = %101
  %109 = call ptr @build_fold_addr_expr_loc(i32 noundef 0, ptr noundef nonnull %76) #18
  store ptr %109, ptr %6, align 8, !tbaa !62
  br label %110

110:                                              ; preds = %101, %101, %108
  %111 = load ptr, ptr %6, align 8, !tbaa !62
  %112 = getelementptr inbounds %struct.tree_common, ptr %111, i64 0, i32 2
  %113 = load ptr, ptr %112, align 8, !tbaa !73
  %114 = call zeroext i8 @useless_type_conversion_p(ptr noundef %103, ptr noundef %113) #18
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %110
  %117 = load ptr, ptr %6, align 8, !tbaa !62
  %118 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %103, ptr noundef %117) #18
  store ptr %118, ptr %6, align 8, !tbaa !62
  br label %119

119:                                              ; preds = %116, %110
  %120 = load ptr, ptr %6, align 8, !tbaa !62
  %121 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 41), align 8, !tbaa !62
  %122 = load i64, ptr %88, align 8, !tbaa !271
  %123 = sdiv i64 %122, 8
  %124 = call ptr @build_int_cst(ptr noundef %121, i64 noundef %123) #18
  %125 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 66, ptr noundef %103, ptr noundef %120, ptr noundef %124) #18
  store ptr %125, ptr %6, align 8, !tbaa !62
  %126 = load i8, ptr %18, align 4
  %127 = and i8 %126, 4
  %128 = icmp eq i8 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %119
  %130 = load ptr, ptr %90, align 8, !tbaa !268
  %131 = call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef 47, ptr noundef %130, ptr noundef %125) #18
  store ptr %131, ptr %6, align 8, !tbaa !62
  br label %132

132:                                              ; preds = %119, %129, %94, %98
  %133 = load ptr, ptr %6, align 8, !tbaa !62
  %134 = load i8, ptr %18, align 4
  %135 = and i8 %134, 4
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %132
  %138 = load ptr, ptr %90, align 8, !tbaa !268
  %139 = call zeroext i8 @is_gimple_reg_type(ptr noundef %138) #18
  %140 = icmp ne i8 %139, 0
  br label %141

141:                                              ; preds = %137, %132
  %142 = phi i1 [ true, %132 ], [ %140, %137 ]
  %143 = zext i1 %142 to i8
  %144 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %4, ptr noundef %133, i8 noundef zeroext %143, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #18
  store ptr %144, ptr %6, align 8, !tbaa !62
  %145 = load i32, ptr %12, align 8, !tbaa !258
  %146 = add i32 %145, 1
  store i32 %146, ptr %12, align 8, !tbaa !258
  %147 = zext i32 %145 to i64
  %148 = getelementptr inbounds %struct.VEC_tree_base, ptr %12, i64 0, i32 2, i64 %147
  store ptr %144, ptr %148, align 8, !tbaa !62
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #18
  br label %149

149:                                              ; preds = %50, %141, %44
  %150 = add nuw nsw i64 %17, 1
  %151 = icmp eq i64 %150, %15
  br i1 %151, label %152, label %16, !llvm.loop !272

152:                                              ; preds = %149, %10
  %153 = load ptr, ptr @dump_file, align 8, !tbaa !62
  %154 = icmp eq ptr %153, null
  br i1 %154, label %164, label %155

155:                                              ; preds = %152
  %156 = load i32, ptr @dump_flags, align 4, !tbaa !77
  %157 = and i32 %156, 8
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %164, label %159

159:                                              ; preds = %155
  %160 = call i64 @fwrite(ptr nonnull @.str.22, i64 15, i64 1, ptr nonnull %153)
  %161 = load ptr, ptr @dump_file, align 8, !tbaa !62
  %162 = load ptr, ptr %4, align 8
  %163 = load ptr, ptr %162, align 8, !tbaa !132
  call void @print_gimple_stmt(ptr noundef %161, ptr noundef %163, i32 noundef 0, i32 noundef 0) #18
  br label %164

164:                                              ; preds = %159, %155, %152
  %165 = icmp eq ptr %0, null
  br i1 %165, label %166, label %191

166:                                              ; preds = %164
  %167 = load i32, ptr %1, align 8
  %168 = and i32 %167, 255
  %169 = add nsw i32 %168, -10
  %170 = icmp ult i32 %169, -9
  br i1 %170, label %184, label %171

171:                                              ; preds = %166
  %172 = zext nneg i32 %168 to i64
  %173 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %172
  %174 = load i32, ptr %173, align 4, !tbaa !77
  %175 = zext i32 %174 to i64
  %176 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %175
  %177 = load i64, ptr %176, align 8, !tbaa !162
  %178 = icmp eq i64 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %171
  call void @fancy_abort(ptr noundef nonnull @.str.35, i32 noundef 1622, ptr noundef nonnull @.str.1) #18
  br label %180

180:                                              ; preds = %179, %171
  %181 = getelementptr inbounds i8, ptr %1, i64 %177
  %182 = getelementptr inbounds ptr, ptr %181, i64 1
  %183 = load ptr, ptr %182, align 8, !tbaa !62
  br label %184

184:                                              ; preds = %180, %166
  %185 = phi ptr [ %183, %180 ], [ null, %166 ]
  %186 = load i64, ptr %185, align 8
  %187 = and i64 %186, 65535
  %188 = icmp eq i64 %187, 121
  br i1 %188, label %189, label %197

189:                                              ; preds = %184
  %190 = getelementptr inbounds %struct.tree_exp, ptr %185, i64 0, i32 3
  br label %194

191:                                              ; preds = %164
  %192 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 2
  %193 = load ptr, ptr %192, align 8, !tbaa !153
  br label %194

194:                                              ; preds = %191, %189
  %195 = phi ptr [ %190, %189 ], [ %193, %191 ]
  %196 = load ptr, ptr %195, align 8, !tbaa !73
  br label %197

197:                                              ; preds = %194, %184
  %198 = phi ptr [ null, %184 ], [ %196, %194 ]
  %199 = call ptr @gimple_build_call_vec(ptr noundef %198, ptr noundef %12) #18
  %200 = icmp eq ptr %12, null
  br i1 %200, label %202, label %201

201:                                              ; preds = %197
  call void @free(ptr noundef %12)
  br label %202

202:                                              ; preds = %197, %201
  %203 = load i32, ptr %1, align 8
  %204 = and i32 %203, 255
  %205 = add nsw i32 %204, -10
  %206 = icmp ult i32 %205, -9
  br i1 %206, label %268, label %207

207:                                              ; preds = %202
  %208 = zext nneg i32 %204 to i64
  %209 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %208
  %210 = load i32, ptr %209, align 4, !tbaa !77
  %211 = zext i32 %210 to i64
  %212 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %211
  %213 = load i64, ptr %212, align 8, !tbaa !162
  %214 = icmp eq i64 %213, 0
  br i1 %214, label %215, label %216

215:                                              ; preds = %207
  call void @fancy_abort(ptr noundef nonnull @.str.35, i32 noundef 1622, ptr noundef nonnull @.str.1) #18
  br label %216

216:                                              ; preds = %215, %207
  %217 = getelementptr inbounds i8, ptr %1, i64 %213
  %218 = load ptr, ptr %217, align 8, !tbaa !62
  %219 = icmp eq ptr %218, null
  br i1 %219, label %268, label %220

220:                                              ; preds = %216
  %221 = load i32, ptr %1, align 8
  %222 = and i32 %221, 255
  %223 = add nsw i32 %222, -10
  %224 = icmp ult i32 %223, -9
  br i1 %224, label %237, label %225

225:                                              ; preds = %220
  %226 = zext nneg i32 %222 to i64
  %227 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %226
  %228 = load i32, ptr %227, align 4, !tbaa !77
  %229 = zext i32 %228 to i64
  %230 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %229
  %231 = load i64, ptr %230, align 8, !tbaa !162
  %232 = icmp eq i64 %231, 0
  br i1 %232, label %233, label %234

233:                                              ; preds = %225
  call void @fancy_abort(ptr noundef nonnull @.str.35, i32 noundef 1622, ptr noundef nonnull @.str.1) #18
  br label %234

234:                                              ; preds = %233, %225
  %235 = getelementptr inbounds i8, ptr %1, i64 %231
  %236 = load ptr, ptr %235, align 8, !tbaa !62
  br label %237

237:                                              ; preds = %220, %234
  %238 = phi ptr [ %236, %234 ], [ null, %220 ]
  %239 = load i32, ptr %199, align 8
  %240 = and i32 %239, 255
  %241 = add nsw i32 %240, -10
  %242 = icmp ult i32 %241, -9
  br i1 %242, label %247, label %243

243:                                              ; preds = %237
  %244 = getelementptr inbounds %struct.gimple_statement_base, ptr %199, i64 0, i32 3
  %245 = load i32, ptr %244, align 4, !tbaa !73
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %247, label %248

247:                                              ; preds = %243, %237
  call void @fancy_abort(ptr noundef nonnull @.str.35, i32 noundef 1665, ptr noundef nonnull @.str.1) #18
  br label %248

248:                                              ; preds = %247, %243
  %249 = load i32, ptr %199, align 8
  %250 = and i32 %249, 255
  %251 = zext nneg i32 %250 to i64
  %252 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %251
  %253 = load i32, ptr %252, align 4, !tbaa !77
  %254 = zext i32 %253 to i64
  %255 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %254
  %256 = load i64, ptr %255, align 8, !tbaa !162
  %257 = icmp eq i64 %256, 0
  br i1 %257, label %258, label %259

258:                                              ; preds = %248
  call void @fancy_abort(ptr noundef nonnull @.str.35, i32 noundef 1622, ptr noundef nonnull @.str.1) #18
  br label %259

259:                                              ; preds = %258, %248
  %260 = getelementptr inbounds i8, ptr %199, i64 %256
  store ptr %238, ptr %260, align 8, !tbaa !62
  %261 = icmp eq ptr %238, null
  br i1 %261, label %268, label %262

262:                                              ; preds = %259
  %263 = load i64, ptr %238, align 8
  %264 = and i64 %263, 65535
  %265 = icmp eq i64 %264, 141
  br i1 %265, label %266, label %268

266:                                              ; preds = %262
  %267 = getelementptr inbounds %struct.tree_ssa_name, ptr %238, i64 0, i32 2
  store ptr %199, ptr %267, align 8, !tbaa !73
  br label %268

268:                                              ; preds = %202, %266, %262, %259, %216
  %269 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 5
  %270 = load ptr, ptr %269, align 8, !tbaa !73
  %271 = getelementptr inbounds %struct.gimple_statement_base, ptr %199, i64 0, i32 5
  store ptr %270, ptr %271, align 8, !tbaa !73
  %272 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 2
  %273 = load i32, ptr %272, align 8, !tbaa !73
  %274 = icmp eq i32 %273, 0
  br i1 %274, label %277, label %275

275:                                              ; preds = %268
  %276 = getelementptr inbounds %struct.gimple_statement_base, ptr %199, i64 0, i32 2
  store i32 %273, ptr %276, align 8, !tbaa !73
  br label %277

277:                                              ; preds = %275, %268
  %278 = load i32, ptr %1, align 8
  %279 = and i32 %278, -65536
  %280 = load i32, ptr %199, align 8
  %281 = and i32 %280, 65535
  %282 = or disjoint i32 %281, %279
  store i32 %282, ptr %199, align 8
  %283 = load i32, ptr %1, align 8
  %284 = and i32 %283, 255
  %285 = add nsw i32 %284, -10
  %286 = icmp ult i32 %285, -9
  br i1 %286, label %300, label %287

287:                                              ; preds = %277
  %288 = zext nneg i32 %284 to i64
  %289 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %288
  %290 = load i32, ptr %289, align 4, !tbaa !77
  %291 = zext i32 %290 to i64
  %292 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %291
  %293 = load i64, ptr %292, align 8, !tbaa !162
  %294 = icmp eq i64 %293, 0
  br i1 %294, label %295, label %296

295:                                              ; preds = %287
  call void @fancy_abort(ptr noundef nonnull @.str.35, i32 noundef 1622, ptr noundef nonnull @.str.1) #18
  br label %296

296:                                              ; preds = %295, %287
  %297 = getelementptr inbounds i8, ptr %1, i64 %293
  %298 = getelementptr inbounds ptr, ptr %297, i64 2
  %299 = load ptr, ptr %298, align 8, !tbaa !62
  br label %300

300:                                              ; preds = %277, %296
  %301 = phi ptr [ %299, %296 ], [ null, %277 ]
  %302 = load i32, ptr %199, align 8
  %303 = and i32 %302, 255
  %304 = add nsw i32 %303, -10
  %305 = icmp ult i32 %304, -9
  br i1 %305, label %310, label %306

306:                                              ; preds = %300
  %307 = getelementptr inbounds %struct.gimple_statement_base, ptr %199, i64 0, i32 3
  %308 = load i32, ptr %307, align 4, !tbaa !73
  %309 = icmp ugt i32 %308, 2
  br i1 %309, label %311, label %310

310:                                              ; preds = %306, %300
  call void @fancy_abort(ptr noundef nonnull @.str.35, i32 noundef 1665, ptr noundef nonnull @.str.1) #18
  br label %311

311:                                              ; preds = %310, %306
  %312 = load i32, ptr %199, align 8
  %313 = and i32 %312, 255
  %314 = zext nneg i32 %313 to i64
  %315 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %314
  %316 = load i32, ptr %315, align 4, !tbaa !77
  %317 = zext i32 %316 to i64
  %318 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %317
  %319 = load i64, ptr %318, align 8, !tbaa !162
  %320 = icmp eq i64 %319, 0
  br i1 %320, label %321, label %322

321:                                              ; preds = %311
  call void @fancy_abort(ptr noundef nonnull @.str.35, i32 noundef 1622, ptr noundef nonnull @.str.1) #18
  br label %322

322:                                              ; preds = %311, %321
  %323 = getelementptr inbounds i8, ptr %199, i64 %319
  %324 = getelementptr inbounds ptr, ptr %323, i64 2
  store ptr %301, ptr %324, align 8, !tbaa !62
  %325 = load ptr, ptr @dump_file, align 8, !tbaa !62
  %326 = icmp eq ptr %325, null
  br i1 %326, label %336, label %327

327:                                              ; preds = %322
  %328 = load i32, ptr @dump_flags, align 4, !tbaa !77
  %329 = and i32 %328, 8
  %330 = icmp eq i32 %329, 0
  br i1 %330, label %336, label %331

331:                                              ; preds = %327
  %332 = call i64 @fwrite(ptr nonnull @.str.23, i64 10, i64 1, ptr nonnull %325)
  %333 = load ptr, ptr @dump_file, align 8, !tbaa !62
  call void @print_gimple_stmt(ptr noundef %333, ptr noundef nonnull %199, i32 noundef 0, i32 noundef 0) #18
  %334 = load ptr, ptr @dump_file, align 8, !tbaa !62
  %335 = call i32 @fputc(i32 10, ptr %334)
  br label %336

336:                                              ; preds = %331, %327, %322
  call void @gsi_replace(ptr noundef nonnull %4, ptr noundef nonnull %199, i8 noundef zeroext 1) #18
  br i1 %165, label %338, label %337

337:                                              ; preds = %336
  call void @cgraph_set_call_stmt(ptr noundef nonnull %0, ptr noundef nonnull %199) #18
  br label %338

338:                                              ; preds = %337, %336
  call void @update_ssa(i32 noundef 2048) #18
  call void @free_dominance_info(i32 noundef 1) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #18
  ret void
}

declare void @gsi_for_stmt(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @build_ref_for_offset(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare ptr @build_fold_addr_expr_loc(i32 noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @useless_type_conversion_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @fold_convert_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @fold_build2_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build_int_cst(ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @fold_build1_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @force_gimple_operand_gsi(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @is_gimple_reg_type(ptr noundef) local_unnamed_addr #3

declare void @print_gimple_stmt(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @gimple_build_call_vec(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gsi_replace(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @cgraph_set_call_stmt(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @update_ssa(i32 noundef) local_unnamed_addr #3

declare void @free_dominance_info(i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @ipa_combine_adjustments(ptr noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #9 !prof !61 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = load i32, ptr %1, align 8, !tbaa !261
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi i32 [ %5, %4 ], [ 0, %2 ]
  %8 = icmp eq ptr %0, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = load i32, ptr %0, align 8, !tbaa !261
  br label %11

11:                                               ; preds = %6, %9
  %12 = phi i32 [ %10, %9 ], [ 0, %6 ]
  %13 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %12, i64 noundef 8, i64 noundef 56) #18
  %14 = icmp sgt i32 %12, 0
  br i1 %14, label %15, label %36

15:                                               ; preds = %11
  %16 = zext nneg i32 %12 to i64
  br label %17

17:                                               ; preds = %15, %32
  %18 = phi i64 [ 0, %15 ], [ %34, %32 ]
  %19 = phi i32 [ 0, %15 ], [ %33, %32 ]
  %20 = getelementptr inbounds %struct.VEC_ipa_parm_adjustment_t_base, ptr %0, i64 0, i32 2, i64 %18, i32 7
  %21 = load i8, ptr %20, align 4
  %22 = and i8 %21, 2
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %17
  %25 = add nsw i32 %19, 1
  br label %32

26:                                               ; preds = %17
  %27 = getelementptr inbounds %struct.VEC_ipa_parm_adjustment_t_base, ptr %0, i64 0, i32 2, i64 %18
  %28 = load i32, ptr %13, align 8, !tbaa !261
  %29 = add i32 %28, 1
  store i32 %29, ptr %13, align 8, !tbaa !261
  %30 = zext i32 %28 to i64
  %31 = getelementptr inbounds %struct.VEC_ipa_parm_adjustment_t_base, ptr %13, i64 0, i32 2, i64 %30
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %31, ptr noundef nonnull align 8 dereferenceable(56) %27, i64 56, i1 false), !tbaa.struct !273
  br label %32

32:                                               ; preds = %26, %24
  %33 = phi i32 [ %25, %24 ], [ %19, %26 ]
  %34 = add nuw nsw i64 %18, 1
  %35 = icmp eq i64 %34, %16
  br i1 %35, label %36, label %17, !llvm.loop !274

36:                                               ; preds = %32, %11
  %37 = phi i32 [ 0, %11 ], [ %33, %32 ]
  %38 = add nsw i32 %37, %7
  %39 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %38, i64 noundef 8, i64 noundef 56) #18
  %40 = icmp sgt i32 %7, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = icmp eq ptr %13, null
  %43 = zext nneg i32 %7 to i64
  %44 = getelementptr inbounds %struct.VEC_ipa_parm_adjustment_t_base, ptr %13, i64 0, i32 2, i64 0, i32 6
  br label %49

45:                                               ; preds = %140, %36
  %46 = icmp sgt i32 %12, 0
  br i1 %46, label %47, label %158

47:                                               ; preds = %45
  %48 = zext nneg i32 %12 to i64
  br label %143

49:                                               ; preds = %41, %140
  %50 = phi i64 [ 0, %41 ], [ %141, %140 ]
  %51 = getelementptr inbounds %struct.VEC_ipa_parm_adjustment_t_base, ptr %1, i64 0, i32 2, i64 %50, i32 6
  %52 = load i32, ptr %51, align 8, !tbaa !265
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.VEC_ipa_parm_adjustment_t_base, ptr %13, i64 0, i32 2, i64 %53, i32 7
  %55 = load i8, ptr %54, align 4
  %56 = and i8 %55, 2
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %49
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1798, ptr noundef nonnull @.str.1) #18
  br label %59

59:                                               ; preds = %49, %58
  %60 = getelementptr inbounds %struct.VEC_ipa_parm_adjustment_t_base, ptr %1, i64 0, i32 2, i64 %50, i32 7
  %61 = load i8, ptr %60, align 4
  %62 = and i8 %61, 2
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %100, label %64

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.VEC_ipa_parm_adjustment_t_base, ptr %13, i64 0, i32 2, i64 %53, i32 6
  %66 = load i32, ptr %65, align 8, !tbaa !265
  br i1 %42, label %69, label %67

67:                                               ; preds = %64
  %68 = load i32, ptr %13, align 8, !tbaa !261
  br label %69

69:                                               ; preds = %67, %64
  %70 = phi i32 [ %68, %67 ], [ 0, %64 ]
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %72, label %92

72:                                               ; preds = %69
  %73 = zext nneg i32 %70 to i64
  %74 = zext nneg i32 %70 to i64
  %75 = load i32, ptr %44, align 8, !tbaa !265
  %76 = icmp ne i32 %75, %66
  br label %84

77:                                               ; preds = %84
  %78 = select i1 %85, i8 %86, i8 1
  %79 = getelementptr inbounds %struct.VEC_ipa_parm_adjustment_t_base, ptr %13, i64 0, i32 2, i64 %88, i32 6
  %80 = load i32, ptr %79, align 8, !tbaa !265
  %81 = icmp ne i32 %80, %66
  %82 = icmp eq i8 %78, 0
  %83 = select i1 %81, i1 true, i1 %82
  br i1 %83, label %84, label %90, !llvm.loop !275

84:                                               ; preds = %72, %77
  %85 = phi i1 [ %76, %72 ], [ %81, %77 ]
  %86 = phi i8 [ 0, %72 ], [ %78, %77 ]
  %87 = phi i64 [ 0, %72 ], [ %88, %77 ]
  %88 = add nuw nsw i64 %87, 1
  %89 = icmp eq i64 %88, %74
  br i1 %89, label %92, label %77, !llvm.loop !275

90:                                               ; preds = %77
  %91 = icmp ult i64 %88, %73
  br i1 %91, label %140, label %92

92:                                               ; preds = %84, %69, %90
  %93 = load i32, ptr %39, align 8, !tbaa !261
  %94 = add i32 %93, 1
  store i32 %94, ptr %39, align 8, !tbaa !261
  %95 = zext i32 %93 to i64
  %96 = getelementptr inbounds %struct.VEC_ipa_parm_adjustment_t_base, ptr %39, i64 0, i32 2, i64 %95
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %96, i8 0, i64 56, i1 false)
  %97 = getelementptr inbounds %struct.VEC_ipa_parm_adjustment_t_base, ptr %39, i64 0, i32 2, i64 %95, i32 7
  %98 = load i8, ptr %97, align 4
  %99 = or i8 %98, 2
  store i8 %99, ptr %97, align 4
  br label %140

100:                                              ; preds = %59
  %101 = load i32, ptr %39, align 8, !tbaa !261
  %102 = add i32 %101, 1
  store i32 %102, ptr %39, align 8, !tbaa !261
  %103 = zext i32 %101 to i64
  %104 = getelementptr inbounds %struct.VEC_ipa_parm_adjustment_t_base, ptr %39, i64 0, i32 2, i64 %103
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %104, i8 0, i64 56, i1 false)
  %105 = getelementptr inbounds %struct.VEC_ipa_parm_adjustment_t_base, ptr %13, i64 0, i32 2, i64 %53, i32 6
  %106 = load i32, ptr %105, align 8, !tbaa !265
  %107 = getelementptr inbounds %struct.VEC_ipa_parm_adjustment_t_base, ptr %39, i64 0, i32 2, i64 %103, i32 6
  store i32 %106, ptr %107, align 8, !tbaa !265
  %108 = getelementptr inbounds %struct.VEC_ipa_parm_adjustment_t_base, ptr %1, i64 0, i32 2, i64 %50, i32 1
  %109 = load ptr, ptr %108, align 8, !tbaa !268
  %110 = getelementptr inbounds %struct.VEC_ipa_parm_adjustment_t_base, ptr %39, i64 0, i32 2, i64 %103, i32 1
  store ptr %109, ptr %110, align 8, !tbaa !268
  %111 = load i8, ptr %54, align 4
  %112 = and i8 %111, 1
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %127, label %114

114:                                              ; preds = %100
  %115 = load i8, ptr %60, align 4
  %116 = and i8 %115, 1
  %117 = icmp eq i8 %116, 0
  br i1 %117, label %122, label %118

118:                                              ; preds = %114
  %119 = getelementptr inbounds %struct.VEC_ipa_parm_adjustment_t_base, ptr %39, i64 0, i32 2, i64 %103, i32 7
  %120 = load i8, ptr %119, align 4
  %121 = or i8 %120, 1
  store i8 %121, ptr %119, align 4
  br label %140

122:                                              ; preds = %114
  br i1 %113, label %127, label %123

123:                                              ; preds = %122
  %124 = getelementptr inbounds %struct.VEC_ipa_parm_adjustment_t_base, ptr %1, i64 0, i32 2, i64 %50, i32 5
  %125 = load i64, ptr %124, align 8, !tbaa !271
  %126 = getelementptr inbounds %struct.VEC_ipa_parm_adjustment_t_base, ptr %39, i64 0, i32 2, i64 %103, i32 5
  store i64 %125, ptr %126, align 8, !tbaa !271
  br label %140

127:                                              ; preds = %100, %122
  %128 = load i8, ptr %60, align 4
  %129 = and i8 %128, 1
  %130 = icmp eq i8 %129, 0
  %131 = getelementptr inbounds %struct.VEC_ipa_parm_adjustment_t_base, ptr %13, i64 0, i32 2, i64 %53, i32 5
  %132 = load i64, ptr %131, align 8, !tbaa !271
  br i1 %130, label %135, label %133

133:                                              ; preds = %127
  %134 = getelementptr inbounds %struct.VEC_ipa_parm_adjustment_t_base, ptr %39, i64 0, i32 2, i64 %103, i32 5
  store i64 %132, ptr %134, align 8, !tbaa !271
  br label %140

135:                                              ; preds = %127
  %136 = getelementptr inbounds %struct.VEC_ipa_parm_adjustment_t_base, ptr %1, i64 0, i32 2, i64 %50, i32 5
  %137 = load i64, ptr %136, align 8, !tbaa !271
  %138 = add nsw i64 %137, %132
  %139 = getelementptr inbounds %struct.VEC_ipa_parm_adjustment_t_base, ptr %39, i64 0, i32 2, i64 %103, i32 5
  store i64 %138, ptr %139, align 8, !tbaa !271
  br label %140

140:                                              ; preds = %118, %133, %135, %123, %90, %92
  %141 = add nuw nsw i64 %50, 1
  %142 = icmp eq i64 %141, %43
  br i1 %142, label %45, label %49, !llvm.loop !276

143:                                              ; preds = %47, %155
  %144 = phi i64 [ 0, %47 ], [ %156, %155 ]
  %145 = getelementptr inbounds %struct.VEC_ipa_parm_adjustment_t_base, ptr %0, i64 0, i32 2, i64 %144, i32 7
  %146 = load i8, ptr %145, align 4
  %147 = and i8 %146, 2
  %148 = icmp eq i8 %147, 0
  br i1 %148, label %155, label %149

149:                                              ; preds = %143
  %150 = getelementptr inbounds %struct.VEC_ipa_parm_adjustment_t_base, ptr %0, i64 0, i32 2, i64 %144
  %151 = load i32, ptr %39, align 8, !tbaa !261
  %152 = add i32 %151, 1
  store i32 %152, ptr %39, align 8, !tbaa !261
  %153 = zext i32 %151 to i64
  %154 = getelementptr inbounds %struct.VEC_ipa_parm_adjustment_t_base, ptr %39, i64 0, i32 2, i64 %153
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %154, ptr noundef nonnull align 8 dereferenceable(56) %150, i64 56, i1 false), !tbaa.struct !273
  br label %155

155:                                              ; preds = %149, %143
  %156 = add nuw nsw i64 %144, 1
  %157 = icmp eq i64 %156, %48
  br i1 %157, label %158, label %143, !llvm.loop !277

158:                                              ; preds = %155, %45
  %159 = icmp eq ptr %13, null
  br i1 %159, label %161, label %160

160:                                              ; preds = %158
  tail call void @free(ptr noundef %13)
  br label %161

161:                                              ; preds = %158, %160
  ret ptr %39
}

; Function Attrs: cold nounwind uwtable
define dso_local void @ipa_dump_param_adjustments(ptr noundef %0, ptr noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #9 !prof !61 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %1, align 8, !tbaa !261
  br label %7

7:                                                ; preds = %3, %5
  %8 = phi i32 [ %6, %5 ], [ 0, %3 ]
  %9 = getelementptr inbounds %struct.tree_decl_non_common, ptr %2, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !73
  %11 = icmp eq ptr %10, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %7, %12
  %13 = phi ptr [ %17, %12 ], [ %10, %7 ]
  %14 = phi i32 [ %15, %12 ], [ 0, %7 ]
  %15 = add nuw nsw i32 %14, 1
  %16 = getelementptr inbounds %struct.tree_common, ptr %13, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !73
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %12, !llvm.loop !106

19:                                               ; preds = %12, %7
  %20 = phi i32 [ 0, %7 ], [ %15, %12 ]
  %21 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %20) #18
  %22 = load ptr, ptr %9, align 8, !tbaa !73
  %23 = icmp eq ptr %22, null
  br i1 %23, label %35, label %24

24:                                               ; preds = %19
  %25 = load i32, ptr %21, align 8, !tbaa !258
  br label %26

26:                                               ; preds = %24, %26
  %27 = phi i32 [ %25, %24 ], [ %29, %26 ]
  %28 = phi ptr [ %22, %24 ], [ %33, %26 ]
  %29 = add i32 %27, 1
  store i32 %29, ptr %21, align 8, !tbaa !258
  %30 = zext i32 %27 to i64
  %31 = getelementptr inbounds %struct.VEC_tree_base, ptr %21, i64 0, i32 2, i64 %30
  store ptr %28, ptr %31, align 8, !tbaa !62
  %32 = getelementptr inbounds %struct.tree_common, ptr %28, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !73
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %26, !llvm.loop !260

35:                                               ; preds = %26, %19
  %36 = tail call i64 @fwrite(ptr nonnull @.str.24, i64 23, i64 1, ptr %0)
  %37 = icmp sgt i32 %8, 0
  br i1 %37, label %38, label %102

38:                                               ; preds = %35
  %39 = zext nneg i32 %8 to i64
  br label %40

40:                                               ; preds = %38, %96
  %41 = phi i64 [ 0, %38 ], [ %100, %96 ]
  %42 = phi i1 [ false, %38 ], [ true, %96 ]
  %43 = getelementptr inbounds %struct.VEC_ipa_parm_adjustment_t_base, ptr %1, i64 0, i32 2, i64 %41
  br i1 %42, label %44, label %46

44:                                               ; preds = %40
  %45 = tail call i64 @fwrite(ptr nonnull @.str.25, i64 17, i64 1, ptr %0)
  br label %46

46:                                               ; preds = %40, %44
  %47 = getelementptr inbounds %struct.VEC_ipa_parm_adjustment_t_base, ptr %1, i64 0, i32 2, i64 %41, i32 6
  %48 = load i32, ptr %47, align 8, !tbaa !265
  %49 = trunc i64 %41 to i32
  %50 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.26, i32 noundef %49, i32 noundef %48)
  %51 = load i32, ptr %47, align 8, !tbaa !265
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.VEC_tree_base, ptr %21, i64 0, i32 2, i64 %52
  %54 = load ptr, ptr %53, align 8, !tbaa !62
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %54, i32 noundef 0) #18
  %55 = load ptr, ptr %43, align 8, !tbaa !267
  %56 = icmp eq ptr %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %46
  %58 = tail call i64 @fwrite(ptr nonnull @.str.27, i64 8, i64 1, ptr %0)
  %59 = load ptr, ptr %43, align 8, !tbaa !267
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %59, i32 noundef 0) #18
  br label %60

60:                                               ; preds = %57, %46
  %61 = getelementptr inbounds %struct.VEC_ipa_parm_adjustment_t_base, ptr %1, i64 0, i32 2, i64 %41, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !269
  %63 = icmp eq ptr %62, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %60
  %65 = tail call i64 @fwrite(ptr nonnull @.str.28, i64 13, i64 1, ptr %0)
  %66 = load ptr, ptr %61, align 8, !tbaa !269
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %66, i32 noundef 0) #18
  br label %67

67:                                               ; preds = %64, %60
  %68 = getelementptr inbounds %struct.VEC_ipa_parm_adjustment_t_base, ptr %1, i64 0, i32 2, i64 %41, i32 3
  %69 = load ptr, ptr %68, align 8, !tbaa !278
  %70 = icmp eq ptr %69, null
  br i1 %70, label %74, label %71

71:                                               ; preds = %67
  %72 = tail call i64 @fwrite(ptr nonnull @.str.29, i64 16, i64 1, ptr %0)
  %73 = load ptr, ptr %68, align 8, !tbaa !278
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %73, i32 noundef 0) #18
  br label %74

74:                                               ; preds = %71, %67
  %75 = getelementptr inbounds %struct.VEC_ipa_parm_adjustment_t_base, ptr %1, i64 0, i32 2, i64 %41, i32 7
  %76 = load i8, ptr %75, align 4
  %77 = and i8 %76, 1
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %74
  %80 = tail call i64 @fwrite(ptr nonnull @.str.30, i64 12, i64 1, ptr %0)
  br label %90

81:                                               ; preds = %74
  %82 = and i8 %76, 2
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %86, label %84

84:                                               ; preds = %81
  %85 = tail call i64 @fwrite(ptr nonnull @.str.31, i64 14, i64 1, ptr %0)
  br label %90

86:                                               ; preds = %81
  %87 = getelementptr inbounds %struct.VEC_ipa_parm_adjustment_t_base, ptr %1, i64 0, i32 2, i64 %41, i32 5
  %88 = load i64, ptr %87, align 8, !tbaa !271
  %89 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.32, i64 noundef %88)
  br label %90

90:                                               ; preds = %84, %86, %79
  %91 = load i8, ptr %75, align 4
  %92 = and i8 %91, 4
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %96, label %94

94:                                               ; preds = %90
  %95 = tail call i64 @fwrite(ptr nonnull @.str.33, i64 8, i64 1, ptr %0)
  br label %96

96:                                               ; preds = %94, %90
  %97 = getelementptr inbounds %struct.VEC_ipa_parm_adjustment_t_base, ptr %1, i64 0, i32 2, i64 %41, i32 1
  %98 = load ptr, ptr %97, align 8, !tbaa !268
  tail call void @print_node_brief(ptr noundef %0, ptr noundef nonnull @.str.34, ptr noundef %98, i32 noundef 0) #18
  %99 = tail call i32 @fputc(i32 10, ptr %0)
  %100 = add nuw nsw i64 %41, 1
  %101 = icmp eq i64 %100, %39
  br i1 %101, label %102, label %40, !llvm.loop !279

102:                                              ; preds = %96, %35
  %103 = icmp eq ptr %21, null
  br i1 %103, label %105, label %104

104:                                              ; preds = %102
  tail call void @free(ptr noundef %21)
  br label %105

105:                                              ; preds = %102, %104
  ret void
}

declare void @print_node_brief(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @ipa_prop_write_jump_functions(ptr nocapture noundef readonly %0) local_unnamed_addr #9 !prof !61 {
  %2 = tail call ptr @create_output_block(i32 noundef 4) #18
  %3 = getelementptr inbounds %struct.output_block, ptr %2, i64 0, i32 6
  store ptr null, ptr %3, align 8, !tbaa !280
  %4 = getelementptr inbounds %struct.cgraph_node_set_def, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !282
  %6 = icmp eq ptr %5, null
  br label %7

7:                                                ; preds = %15, %1
  %8 = phi i32 [ 0, %1 ], [ %25, %15 ]
  %9 = phi i32 [ 0, %1 ], [ %24, %15 ]
  br i1 %6, label %12, label %10

10:                                               ; preds = %7
  %11 = load i32, ptr %5, align 8, !tbaa !284
  br label %12

12:                                               ; preds = %7, %10
  %13 = phi i32 [ %11, %10 ], [ 0, %7 ]
  %14 = icmp ugt i32 %13, %8
  br i1 %14, label %15, label %26

15:                                               ; preds = %12
  %16 = zext i32 %8 to i64
  %17 = getelementptr inbounds %struct.VEC_cgraph_node_ptr_base, ptr %5, i64 0, i32 2, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !62
  %19 = getelementptr inbounds %struct.cgraph_node, ptr %18, i64 0, i32 27
  %20 = load i16, ptr %19, align 4
  %21 = lshr i16 %20, 5
  %22 = and i16 %21, 1
  %23 = zext nneg i16 %22 to i32
  %24 = add i32 %9, %23
  %25 = add nuw i32 %8, 1
  br label %7, !llvm.loop !286

26:                                               ; preds = %12
  %27 = getelementptr inbounds %struct.cgraph_node_set_def, ptr %0, i64 0, i32 1
  %28 = getelementptr inbounds %struct.output_block, ptr %2, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !287
  %30 = zext i32 %9 to i64
  tail call void @lto_output_uleb128_stream(ptr noundef %29, i64 noundef %30) #18
  %31 = getelementptr inbounds %struct.output_block, ptr %2, i64 0, i32 1
  br label %32

32:                                               ; preds = %215, %26
  %33 = phi i32 [ 0, %26 ], [ %216, %215 ]
  %34 = load ptr, ptr %27, align 8, !tbaa !282
  %35 = icmp eq ptr %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %32
  %37 = load i32, ptr %34, align 8, !tbaa !284
  br label %38

38:                                               ; preds = %32, %36
  %39 = phi i32 [ %37, %36 ], [ 0, %32 ]
  %40 = icmp ugt i32 %39, %33
  br i1 %40, label %41, label %217

41:                                               ; preds = %38
  %42 = zext i32 %33 to i64
  %43 = getelementptr inbounds %struct.VEC_cgraph_node_ptr_base, ptr %34, i64 0, i32 2, i64 %42
  %44 = load ptr, ptr %43, align 8, !tbaa !62
  %45 = getelementptr inbounds %struct.cgraph_node, ptr %44, i64 0, i32 27
  %46 = load i16, ptr %45, align 4
  %47 = and i16 %46, 32
  %48 = icmp eq i16 %47, 0
  br i1 %48, label %215, label %49

49:                                               ; preds = %41
  %50 = load ptr, ptr @ipa_node_params_vector, align 8
  %51 = getelementptr inbounds %struct.cgraph_node, ptr %44, i64 0, i32 24
  %52 = load i32, ptr %51, align 8, !tbaa !87
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.VEC_ipa_node_params_t_base, ptr %50, i64 0, i32 2, i64 %53
  %55 = load ptr, ptr %31, align 8, !tbaa !288
  %56 = getelementptr inbounds %struct.lto_out_decl_state, ptr %55, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !289
  %58 = tail call i32 @lto_cgraph_encoder_encode(ptr noundef %57, ptr noundef %44) #18
  %59 = load ptr, ptr %28, align 8, !tbaa !287
  %60 = sext i32 %58 to i64
  tail call void @lto_output_uleb128_stream(ptr noundef %59, i64 noundef %60) #18
  %61 = tail call ptr @bitpack_create() #18
  %62 = getelementptr inbounds %struct.VEC_ipa_node_params_t_base, ptr %50, i64 0, i32 2, i64 %53, i32 5
  %63 = load i8, ptr %62, align 8
  %64 = and i8 %63, 1
  %65 = zext nneg i8 %64 to i64
  tail call void @bp_pack_value(ptr noundef %61, i64 noundef %65, i32 noundef 1) #18
  %66 = load i8, ptr %62, align 8
  %67 = lshr i8 %66, 2
  %68 = and i8 %67, 1
  %69 = zext nneg i8 %68 to i64
  tail call void @bp_pack_value(ptr noundef %61, i64 noundef %69, i32 noundef 1) #18
  %70 = load i8, ptr %62, align 8
  %71 = and i8 %70, 2
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %49
  %74 = load i32, ptr %54, align 8, !tbaa !107
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %73
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2020, ptr noundef nonnull @.str.1) #18
  br label %77

77:                                               ; preds = %76, %73, %49
  %78 = load i8, ptr %62, align 8
  %79 = and i8 %78, 8
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %77
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2021, ptr noundef nonnull @.str.1) #18
  br label %82

82:                                               ; preds = %81, %77
  %83 = getelementptr inbounds %struct.VEC_ipa_node_params_t_base, ptr %50, i64 0, i32 2, i64 %53, i32 3
  %84 = load ptr, ptr %83, align 8, !tbaa !244
  %85 = icmp eq ptr %84, null
  br i1 %85, label %87, label %86

86:                                               ; preds = %82
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 2022, ptr noundef nonnull @.str.1) #18
  br label %87

87:                                               ; preds = %86, %82
  %88 = load i32, ptr %54, align 8, !tbaa !107
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %90, label %103

90:                                               ; preds = %87
  %91 = getelementptr inbounds %struct.VEC_ipa_node_params_t_base, ptr %50, i64 0, i32 2, i64 %53, i32 1
  br label %92

92:                                               ; preds = %90, %92
  %93 = phi i64 [ 0, %90 ], [ %99, %92 ]
  %94 = load ptr, ptr %91, align 8, !tbaa !100
  %95 = getelementptr inbounds %struct.ipa_param_descriptor, ptr %94, i64 %93, i32 2
  %96 = load i8, ptr %95, align 8
  %97 = and i8 %96, 1
  %98 = zext nneg i8 %97 to i64
  tail call void @bp_pack_value(ptr noundef %61, i64 noundef %98, i32 noundef 1) #18
  %99 = add nuw nsw i64 %93, 1
  %100 = load i32, ptr %54, align 8, !tbaa !107
  %101 = sext i32 %100 to i64
  %102 = icmp slt i64 %99, %101
  br i1 %102, label %92, label %103, !llvm.loop !291

103:                                              ; preds = %92, %87
  %104 = load ptr, ptr %28, align 8, !tbaa !287
  tail call void @lto_output_bitpack(ptr noundef %104, ptr noundef %61) #18
  tail call void @bitpack_delete(ptr noundef %61) #18
  %105 = getelementptr inbounds %struct.cgraph_node, ptr %44, i64 0, i32 1
  %106 = load ptr, ptr %105, align 8, !tbaa !62
  %107 = icmp eq ptr %106, null
  br i1 %107, label %168, label %108

108:                                              ; preds = %103, %164
  %109 = phi ptr [ %166, %164 ], [ %106, %103 ]
  %110 = load ptr, ptr @ipa_edge_args_vector, align 8
  %111 = getelementptr inbounds %struct.cgraph_edge, ptr %109, i64 0, i32 12
  %112 = load i32, ptr %111, align 4, !tbaa !150
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds %struct.VEC_ipa_edge_args_t_base, ptr %110, i64 0, i32 2, i64 %113
  %115 = load ptr, ptr %28, align 8, !tbaa !287
  %116 = load i32, ptr %114, align 8, !tbaa !151
  %117 = sext i32 %116 to i64
  tail call void @lto_output_uleb128_stream(ptr noundef %115, i64 noundef %117) #18
  %118 = load i32, ptr %114, align 8, !tbaa !151
  %119 = icmp sgt i32 %118, 0
  br i1 %119, label %120, label %164

120:                                              ; preds = %108
  %121 = getelementptr inbounds %struct.VEC_ipa_edge_args_t_base, ptr %110, i64 0, i32 2, i64 %113, i32 1
  br label %122

122:                                              ; preds = %120, %159
  %123 = phi i64 [ 0, %120 ], [ %160, %159 ]
  %124 = load ptr, ptr %121, align 8, !tbaa !154
  %125 = getelementptr inbounds %struct.ipa_jump_func, ptr %124, i64 %123
  %126 = load ptr, ptr %28, align 8, !tbaa !287
  %127 = load i32, ptr %125, align 8, !tbaa !155
  %128 = zext i32 %127 to i64
  tail call void @lto_output_uleb128_stream(ptr noundef %126, i64 noundef %128) #18
  %129 = load i32, ptr %125, align 8, !tbaa !155
  switch i32 %129, label %159 [
    i32 2, label %154
    i32 1, label %130
    i32 3, label %133
    i32 4, label %144
  ]

130:                                              ; preds = %122
  %131 = getelementptr inbounds %struct.ipa_jump_func, ptr %124, i64 %123, i32 1
  %132 = load ptr, ptr %131, align 8, !tbaa !73
  tail call void @lto_output_tree(ptr noundef %2, ptr noundef %132, i8 noundef zeroext 1) #18
  br label %159

133:                                              ; preds = %122
  %134 = getelementptr inbounds %struct.ipa_jump_func, ptr %124, i64 %123, i32 1
  %135 = load ptr, ptr %134, align 8, !tbaa !73
  tail call void @lto_output_tree(ptr noundef %2, ptr noundef %135, i8 noundef zeroext 1) #18
  %136 = load ptr, ptr %28, align 8, !tbaa !287
  %137 = getelementptr inbounds %struct.ipa_jump_func, ptr %124, i64 %123, i32 1, i32 0, i32 1
  %138 = load i32, ptr %137, align 8, !tbaa !73
  %139 = sext i32 %138 to i64
  tail call void @lto_output_uleb128_stream(ptr noundef %136, i64 noundef %139) #18
  %140 = load ptr, ptr %28, align 8, !tbaa !287
  %141 = getelementptr inbounds i8, ptr %125, i64 20
  %142 = load i32, ptr %141, align 4, !tbaa !73
  %143 = zext i32 %142 to i64
  tail call void @lto_output_uleb128_stream(ptr noundef %140, i64 noundef %143) #18
  br label %159

144:                                              ; preds = %122
  %145 = load ptr, ptr %28, align 8, !tbaa !287
  %146 = getelementptr inbounds %struct.ipa_jump_func, ptr %124, i64 %123, i32 1
  %147 = load i64, ptr %146, align 8, !tbaa !73
  tail call void @lto_output_uleb128_stream(ptr noundef %145, i64 noundef %147) #18
  %148 = getelementptr inbounds %struct.ipa_jump_func, ptr %124, i64 %123, i32 1, i32 0, i32 1
  %149 = load ptr, ptr %148, align 8, !tbaa !73
  tail call void @lto_output_tree(ptr noundef %2, ptr noundef %149, i8 noundef zeroext 1) #18
  %150 = load ptr, ptr %28, align 8, !tbaa !287
  %151 = getelementptr inbounds %struct.ipa_jump_func, ptr %124, i64 %123, i32 1, i32 0, i32 2
  %152 = load i32, ptr %151, align 8, !tbaa !73
  %153 = sext i32 %152 to i64
  tail call void @lto_output_uleb128_stream(ptr noundef %150, i64 noundef %153) #18
  br label %159

154:                                              ; preds = %122
  %155 = getelementptr inbounds %struct.ipa_jump_func, ptr %124, i64 %123, i32 1
  %156 = load ptr, ptr %155, align 8, !tbaa !73
  tail call void @lto_output_tree(ptr noundef %2, ptr noundef %156, i8 noundef zeroext 1) #18
  %157 = getelementptr inbounds %struct.ipa_jump_func, ptr %124, i64 %123, i32 1, i32 0, i32 1
  %158 = load ptr, ptr %157, align 8, !tbaa !73
  tail call void @lto_output_tree(ptr noundef %2, ptr noundef %158, i8 noundef zeroext 0) #18
  br label %159

159:                                              ; preds = %154, %144, %133, %130, %122
  %160 = add nuw nsw i64 %123, 1
  %161 = load i32, ptr %114, align 8, !tbaa !151
  %162 = sext i32 %161 to i64
  %163 = icmp slt i64 %160, %162
  br i1 %163, label %122, label %164, !llvm.loop !292

164:                                              ; preds = %159, %108
  %165 = getelementptr inbounds %struct.cgraph_edge, ptr %109, i64 0, i32 6
  %166 = load ptr, ptr %165, align 8, !tbaa !62
  %167 = icmp eq ptr %166, null
  br i1 %167, label %168, label %108, !llvm.loop !293

168:                                              ; preds = %164, %103
  %169 = getelementptr inbounds %struct.VEC_ipa_node_params_t_base, ptr %50, i64 0, i32 2, i64 %53, i32 2
  %170 = load ptr, ptr %169, align 8, !tbaa !62
  %171 = icmp eq ptr %170, null
  br i1 %171, label %179, label %172

172:                                              ; preds = %168, %172
  %173 = phi ptr [ %177, %172 ], [ %170, %168 ]
  %174 = phi i32 [ %175, %172 ], [ 0, %168 ]
  %175 = add nuw nsw i32 %174, 1
  %176 = getelementptr inbounds %struct.ipa_param_call_note, ptr %173, i64 0, i32 1
  %177 = load ptr, ptr %176, align 8, !tbaa !62
  %178 = icmp eq ptr %177, null
  br i1 %178, label %179, label %172, !llvm.loop !294

179:                                              ; preds = %172, %168
  %180 = phi i32 [ 0, %168 ], [ %175, %172 ]
  %181 = load ptr, ptr %28, align 8, !tbaa !287
  %182 = zext nneg i32 %180 to i64
  tail call void @lto_output_uleb128_stream(ptr noundef %181, i64 noundef %182) #18
  %183 = load ptr, ptr %169, align 8, !tbaa !62
  %184 = icmp eq ptr %183, null
  br i1 %184, label %215, label %185

185:                                              ; preds = %179, %191
  %186 = phi ptr [ %213, %191 ], [ %183, %179 ]
  %187 = getelementptr inbounds %struct.ipa_param_call_note, ptr %186, i64 0, i32 7
  %188 = load i8, ptr %187, align 2, !tbaa !204
  %189 = icmp eq i8 %188, 0
  br i1 %189, label %191, label %190

190:                                              ; preds = %185
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1970, ptr noundef nonnull @.str.1) #18
  br label %191

191:                                              ; preds = %190, %185
  %192 = load ptr, ptr %28, align 8, !tbaa !287
  %193 = getelementptr inbounds %struct.ipa_param_call_note, ptr %186, i64 0, i32 2
  %194 = load ptr, ptr %193, align 8, !tbaa !179
  %195 = getelementptr inbounds %struct.gimple_statement_base, ptr %194, i64 0, i32 1
  %196 = load i32, ptr %195, align 4, !tbaa !73
  %197 = zext i32 %196 to i64
  tail call void @lto_output_uleb128_stream(ptr noundef %192, i64 noundef %197) #18
  %198 = load ptr, ptr %28, align 8, !tbaa !287
  %199 = getelementptr inbounds %struct.ipa_param_call_note, ptr %186, i64 0, i32 4
  %200 = load i32, ptr %199, align 4, !tbaa !177
  %201 = sext i32 %200 to i64
  tail call void @lto_output_sleb128_stream(ptr noundef %198, i64 noundef %201) #18
  %202 = load ptr, ptr %28, align 8, !tbaa !287
  %203 = load i64, ptr %186, align 8, !tbaa !182
  tail call void @lto_output_sleb128_stream(ptr noundef %202, i64 noundef %203) #18
  %204 = load ptr, ptr %28, align 8, !tbaa !287
  %205 = getelementptr inbounds %struct.ipa_param_call_note, ptr %186, i64 0, i32 5
  %206 = load i32, ptr %205, align 8, !tbaa !183
  %207 = sext i32 %206 to i64
  tail call void @lto_output_sleb128_stream(ptr noundef %204, i64 noundef %207) #18
  %208 = load ptr, ptr %28, align 8, !tbaa !287
  %209 = getelementptr inbounds %struct.ipa_param_call_note, ptr %186, i64 0, i32 6
  %210 = load i16, ptr %209, align 4, !tbaa !185
  %211 = zext i16 %210 to i64
  tail call void @lto_output_sleb128_stream(ptr noundef %208, i64 noundef %211) #18
  %212 = getelementptr inbounds %struct.ipa_param_call_note, ptr %186, i64 0, i32 1
  %213 = load ptr, ptr %212, align 8, !tbaa !62
  %214 = icmp eq ptr %213, null
  br i1 %214, label %215, label %185, !llvm.loop !295

215:                                              ; preds = %191, %179, %41
  %216 = add i32 %33, 1
  br label %32, !llvm.loop !296

217:                                              ; preds = %38
  %218 = load ptr, ptr %28, align 8, !tbaa !287
  tail call void @lto_output_1_stream(ptr noundef %218, i8 noundef signext 0) #18
  tail call void @produce_asm(ptr noundef %2, ptr noundef null) #18
  tail call void @destroy_output_block(ptr noundef %2) #18
  ret void
}

declare ptr @create_output_block(i32 noundef) local_unnamed_addr #3

declare void @lto_output_uleb128_stream(ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @lto_output_1_stream(ptr noundef, i8 noundef signext) local_unnamed_addr #3

declare void @produce_asm(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @destroy_output_block(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @ipa_prop_read_jump_functions() local_unnamed_addr #9 !prof !61 {
  %1 = alloca %struct.lto_input_block, align 8
  %2 = alloca i64, align 8
  %3 = tail call ptr @lto_get_file_decl_data() #18
  %4 = load ptr, ptr @ipa_node_params_vector, align 8, !tbaa !62
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %0
  %7 = load i32, ptr @cgraph_max_uid, align 4, !tbaa !77
  %8 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %7, i64 noundef 8, i64 noundef 48) #18
  store ptr %8, ptr @ipa_node_params_vector, align 8, !tbaa !62
  br label %9

9:                                                ; preds = %6, %0
  %10 = load ptr, ptr @ipa_node_params_vector, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %9
  %13 = load i32, ptr %10, align 8, !tbaa !225
  br label %14

14:                                               ; preds = %12, %9
  %15 = phi i32 [ %13, %12 ], [ 0, %9 ]
  %16 = load i32, ptr @cgraph_max_uid, align 4, !tbaa !77
  %17 = icmp ugt i32 %15, %16
  br i1 %17, label %49, label %18

18:                                               ; preds = %14
  %19 = add nsw i32 %16, 1
  br i1 %11, label %22, label %20

20:                                               ; preds = %18
  %21 = load i32, ptr %10, align 8, !tbaa !225
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i32 [ %21, %20 ], [ 0, %18 ]
  br i1 %11, label %26, label %24

24:                                               ; preds = %22
  %25 = load i32, ptr %10, align 8, !tbaa !225
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i32 [ %25, %24 ], [ 0, %22 ]
  %28 = sub nsw i32 %19, %27
  br i1 %11, label %35, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.VEC_ipa_node_params_t_base, ptr %10, i64 0, i32 1
  %31 = load i32, ptr %30, align 4, !tbaa !242
  %32 = load i32, ptr %10, align 8, !tbaa !225
  %33 = sub i32 %31, %32
  %34 = icmp uge i32 %33, %28
  br label %37

35:                                               ; preds = %26
  %36 = icmp eq i32 %27, %19
  br label %37

37:                                               ; preds = %35, %29
  %38 = phi i1 [ %34, %29 ], [ %36, %35 ]
  br i1 %38, label %41, label %39

39:                                               ; preds = %37
  %40 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef %10, i32 noundef %28, i64 noundef 8, i64 noundef 48) #18
  store ptr %40, ptr @ipa_node_params_vector, align 8, !tbaa !62
  br label %41

41:                                               ; preds = %39, %37
  %42 = load ptr, ptr @ipa_node_params_vector, align 8, !tbaa !62, !nonnull !149, !noundef !149
  store i32 %19, ptr %42, align 8, !tbaa !225
  %43 = getelementptr inbounds %struct.VEC_ipa_node_params_t_base, ptr %42, i64 0, i32 2
  %44 = sext i32 %23 to i64
  %45 = getelementptr inbounds %struct.ipa_node_params, ptr %43, i64 %44
  %46 = sub nsw i32 %19, %23
  %47 = sext i32 %46 to i64
  %48 = mul nsw i64 %47, 48
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %45, i8 0, i64 %48, i1 false)
  br label %49

49:                                               ; preds = %14, %41
  %50 = load ptr, ptr @ipa_edge_args_vector, align 8, !tbaa !62
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load i32, ptr @cgraph_edge_max_uid, align 4, !tbaa !77
  %54 = tail call ptr @vec_gc_o_reserve_exact(ptr noundef null, i32 noundef %53, i64 noundef 8, i64 noundef 16) #18
  store ptr %54, ptr @ipa_edge_args_vector, align 8, !tbaa !62
  br label %55

55:                                               ; preds = %52, %49
  %56 = load ptr, ptr @ipa_edge_args_vector, align 8
  %57 = icmp eq ptr %56, null
  br i1 %57, label %60, label %58

58:                                               ; preds = %55
  %59 = load i32, ptr %56, align 8, !tbaa !146
  br label %60

60:                                               ; preds = %58, %55
  %61 = phi i32 [ %59, %58 ], [ 0, %55 ]
  %62 = load i32, ptr @cgraph_edge_max_uid, align 4, !tbaa !77
  %63 = icmp ugt i32 %61, %62
  br i1 %63, label %95, label %64

64:                                               ; preds = %60
  %65 = add nsw i32 %62, 1
  br i1 %57, label %68, label %66

66:                                               ; preds = %64
  %67 = load i32, ptr %56, align 8, !tbaa !146
  br label %68

68:                                               ; preds = %66, %64
  %69 = phi i32 [ %67, %66 ], [ 0, %64 ]
  br i1 %57, label %72, label %70

70:                                               ; preds = %68
  %71 = load i32, ptr %56, align 8, !tbaa !146
  br label %72

72:                                               ; preds = %70, %68
  %73 = phi i32 [ %71, %70 ], [ 0, %68 ]
  %74 = sub nsw i32 %65, %73
  br i1 %57, label %81, label %75

75:                                               ; preds = %72
  %76 = getelementptr inbounds %struct.VEC_ipa_edge_args_t_base, ptr %56, i64 0, i32 1
  %77 = load i32, ptr %76, align 4, !tbaa !148
  %78 = load i32, ptr %56, align 8, !tbaa !146
  %79 = sub i32 %77, %78
  %80 = icmp uge i32 %79, %74
  br label %83

81:                                               ; preds = %72
  %82 = icmp eq i32 %73, %65
  br label %83

83:                                               ; preds = %81, %75
  %84 = phi i1 [ %80, %75 ], [ %82, %81 ]
  br i1 %84, label %87, label %85

85:                                               ; preds = %83
  %86 = tail call ptr @vec_gc_o_reserve_exact(ptr noundef %56, i32 noundef %74, i64 noundef 8, i64 noundef 16) #18
  store ptr %86, ptr @ipa_edge_args_vector, align 8, !tbaa !62
  br label %87

87:                                               ; preds = %85, %83
  %88 = load ptr, ptr @ipa_edge_args_vector, align 8, !tbaa !62, !nonnull !149, !noundef !149
  store i32 %65, ptr %88, align 8, !tbaa !146
  %89 = getelementptr inbounds %struct.VEC_ipa_edge_args_t_base, ptr %88, i64 0, i32 2
  %90 = sext i32 %69 to i64
  %91 = getelementptr inbounds %struct.ipa_edge_args, ptr %89, i64 %90
  %92 = sub nsw i32 %65, %69
  %93 = sext i32 %92 to i64
  %94 = shl nsw i64 %93, 4
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %91, i8 0, i64 %94, i1 false)
  br label %95

95:                                               ; preds = %60, %87
  tail call void @ipa_register_cgraph_hooks()
  %96 = load ptr, ptr %3, align 8, !tbaa !62
  %97 = icmp eq ptr %96, null
  br i1 %97, label %274, label %98

98:                                               ; preds = %95
  %99 = getelementptr inbounds %struct.lto_input_block, ptr %1, i64 0, i32 1
  %100 = getelementptr inbounds %struct.lto_input_block, ptr %1, i64 0, i32 2
  br label %101

101:                                              ; preds = %98, %268
  %102 = phi ptr [ %96, %98 ], [ %272, %268 ]
  %103 = phi i32 [ 1, %98 ], [ %269, %268 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #18
  %104 = call ptr @lto_get_section_data(ptr noundef nonnull %102, i32 noundef 4, ptr noundef null, ptr noundef nonnull %2) #18
  %105 = icmp eq ptr %104, null
  br i1 %105, label %268, label %106

106:                                              ; preds = %101
  %107 = load i64, ptr %2, align 8, !tbaa !162
  %108 = getelementptr inbounds %struct.lto_function_header, ptr %104, i64 0, i32 5
  %109 = load i32, ptr %108, align 4, !tbaa !297
  %110 = add nsw i32 %109, 36
  %111 = getelementptr inbounds %struct.lto_function_header, ptr %104, i64 0, i32 6
  %112 = load i32, ptr %111, align 4, !tbaa !300
  %113 = add nsw i32 %110, %112
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #18
  %114 = sext i32 %110 to i64
  %115 = getelementptr inbounds i8, ptr %104, i64 %114
  store ptr %115, ptr %1, align 8, !tbaa !301
  store i32 0, ptr %99, align 8, !tbaa !303
  store i32 %112, ptr %100, align 4, !tbaa !304
  %116 = sext i32 %113 to i64
  %117 = getelementptr inbounds i8, ptr %104, i64 %116
  %118 = getelementptr inbounds %struct.lto_function_header, ptr %104, i64 0, i32 7
  %119 = load i32, ptr %118, align 4, !tbaa !305
  %120 = call ptr @lto_data_in_create(ptr noundef nonnull %102, ptr noundef nonnull %117, i32 noundef %119, ptr noundef null) #18
  %121 = call i64 @lto_input_uleb128(ptr noundef nonnull %1) #18
  %122 = trunc i64 %121 to i32
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %267, label %124

124:                                              ; preds = %106
  %125 = getelementptr inbounds %struct.lto_file_decl_data, ptr %102, i64 0, i32 2
  br label %126

126:                                              ; preds = %124, %264
  %127 = phi i32 [ 0, %124 ], [ %265, %264 ]
  %128 = call i64 @lto_input_uleb128(ptr noundef nonnull %1) #18
  %129 = trunc i64 %128 to i32
  %130 = load ptr, ptr %125, align 8, !tbaa !306
  %131 = call ptr @lto_cgraph_encoder_deref(ptr noundef %130, i32 noundef %129) #18
  %132 = load ptr, ptr @ipa_node_params_vector, align 8
  %133 = getelementptr inbounds %struct.cgraph_node, ptr %131, i64 0, i32 24
  %134 = load i32, ptr %133, align 8, !tbaa !87
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds %struct.VEC_ipa_node_params_t_base, ptr %132, i64 0, i32 2, i64 %135
  call void @ipa_initialize_node_params(ptr noundef %131)
  %137 = call ptr @lto_input_bitpack(ptr noundef nonnull %1) #18
  %138 = call i64 @bp_unpack_value(ptr noundef %137, i32 noundef 1) #18
  %139 = getelementptr inbounds %struct.VEC_ipa_node_params_t_base, ptr %132, i64 0, i32 2, i64 %135, i32 5
  %140 = trunc i64 %138 to i8
  %141 = load i8, ptr %139, align 8
  %142 = and i8 %140, 1
  %143 = and i8 %141, -2
  %144 = or disjoint i8 %143, %142
  store i8 %144, ptr %139, align 8
  %145 = call i64 @bp_unpack_value(ptr noundef %137, i32 noundef 1) #18
  %146 = trunc i64 %145 to i8
  %147 = load i8, ptr %139, align 8
  %148 = shl i8 %146, 2
  %149 = and i8 %148, 4
  %150 = and i8 %147, -5
  %151 = or disjoint i8 %149, %150
  store i8 %151, ptr %139, align 8
  %152 = load i32, ptr %136, align 8, !tbaa !107
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %156, label %154

154:                                              ; preds = %126
  %155 = or i8 %147, 6
  store i8 %155, ptr %139, align 8
  br label %156

156:                                              ; preds = %154, %126
  %157 = load i8, ptr %139, align 8
  %158 = and i8 %157, -9
  store i8 %158, ptr %139, align 8
  %159 = load i32, ptr %136, align 8, !tbaa !107
  %160 = icmp sgt i32 %159, 0
  br i1 %160, label %161, label %177

161:                                              ; preds = %156
  %162 = getelementptr inbounds %struct.VEC_ipa_node_params_t_base, ptr %132, i64 0, i32 2, i64 %135, i32 1
  br label %163

163:                                              ; preds = %161, %163
  %164 = phi i64 [ 0, %161 ], [ %173, %163 ]
  %165 = call i64 @bp_unpack_value(ptr noundef %137, i32 noundef 1) #18
  %166 = load ptr, ptr %162, align 8, !tbaa !100
  %167 = getelementptr inbounds %struct.ipa_param_descriptor, ptr %166, i64 %164, i32 2
  %168 = trunc i64 %165 to i8
  %169 = load i8, ptr %167, align 8
  %170 = and i8 %168, 1
  %171 = and i8 %169, -2
  %172 = or disjoint i8 %171, %170
  store i8 %172, ptr %167, align 8
  %173 = add nuw nsw i64 %164, 1
  %174 = load i32, ptr %136, align 8, !tbaa !107
  %175 = sext i32 %174 to i64
  %176 = icmp slt i64 %173, %175
  br i1 %176, label %163, label %177, !llvm.loop !308

177:                                              ; preds = %163, %156
  call void @bitpack_delete(ptr noundef %137) #18
  %178 = getelementptr inbounds %struct.cgraph_node, ptr %131, i64 0, i32 1
  %179 = load ptr, ptr %178, align 8, !tbaa !62
  %180 = icmp eq ptr %179, null
  br i1 %180, label %238, label %181

181:                                              ; preds = %177, %234
  %182 = phi ptr [ %236, %234 ], [ %179, %177 ]
  %183 = load ptr, ptr @ipa_edge_args_vector, align 8
  %184 = getelementptr inbounds %struct.cgraph_edge, ptr %182, i64 0, i32 12
  %185 = load i32, ptr %184, align 4, !tbaa !150
  %186 = zext i32 %185 to i64
  %187 = getelementptr inbounds %struct.VEC_ipa_edge_args_t_base, ptr %183, i64 0, i32 2, i64 %186
  %188 = call i64 @lto_input_uleb128(ptr noundef nonnull %1) #18
  %189 = trunc i64 %188 to i32
  store i32 %189, ptr %187, align 8, !tbaa !151
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %234, label %191

191:                                              ; preds = %181
  %192 = shl i64 %188, 32
  %193 = ashr exact i64 %192, 27
  %194 = call ptr @ggc_alloc_cleared_stat(i64 noundef %193) #18
  %195 = getelementptr inbounds %struct.VEC_ipa_edge_args_t_base, ptr %183, i64 0, i32 2, i64 %186, i32 1
  store ptr %194, ptr %195, align 8, !tbaa !154
  %196 = load i32, ptr %187, align 8, !tbaa !151
  %197 = icmp sgt i32 %196, 0
  br i1 %197, label %198, label %234

198:                                              ; preds = %191, %229
  %199 = phi i64 [ %230, %229 ], [ 0, %191 ]
  %200 = load ptr, ptr %195, align 8, !tbaa !154
  %201 = getelementptr inbounds %struct.ipa_jump_func, ptr %200, i64 %199
  %202 = call i64 @lto_input_uleb128(ptr noundef nonnull %1) #18
  %203 = trunc i64 %202 to i32
  store i32 %203, ptr %201, align 8, !tbaa !155
  switch i32 %203, label %229 [
    i32 2, label %224
    i32 1, label %204
    i32 3, label %207
    i32 4, label %216
  ]

204:                                              ; preds = %198
  %205 = call ptr @lto_input_tree(ptr noundef nonnull %1, ptr noundef %120) #18
  %206 = getelementptr inbounds %struct.ipa_jump_func, ptr %200, i64 %199, i32 1
  store ptr %205, ptr %206, align 8, !tbaa !73
  br label %229

207:                                              ; preds = %198
  %208 = call ptr @lto_input_tree(ptr noundef nonnull %1, ptr noundef %120) #18
  %209 = getelementptr inbounds %struct.ipa_jump_func, ptr %200, i64 %199, i32 1
  store ptr %208, ptr %209, align 8, !tbaa !73
  %210 = call i64 @lto_input_uleb128(ptr noundef nonnull %1) #18
  %211 = trunc i64 %210 to i32
  %212 = getelementptr inbounds %struct.ipa_jump_func, ptr %200, i64 %199, i32 1, i32 0, i32 1
  store i32 %211, ptr %212, align 8, !tbaa !73
  %213 = call i64 @lto_input_uleb128(ptr noundef nonnull %1) #18
  %214 = trunc i64 %213 to i32
  %215 = getelementptr inbounds i8, ptr %201, i64 20
  store i32 %214, ptr %215, align 4, !tbaa !73
  br label %229

216:                                              ; preds = %198
  %217 = call i64 @lto_input_uleb128(ptr noundef nonnull %1) #18
  %218 = getelementptr inbounds %struct.ipa_jump_func, ptr %200, i64 %199, i32 1
  store i64 %217, ptr %218, align 8, !tbaa !73
  %219 = call ptr @lto_input_tree(ptr noundef nonnull %1, ptr noundef %120) #18
  %220 = getelementptr inbounds %struct.ipa_jump_func, ptr %200, i64 %199, i32 1, i32 0, i32 1
  store ptr %219, ptr %220, align 8, !tbaa !73
  %221 = call i64 @lto_input_uleb128(ptr noundef nonnull %1) #18
  %222 = trunc i64 %221 to i32
  %223 = getelementptr inbounds %struct.ipa_jump_func, ptr %200, i64 %199, i32 1, i32 0, i32 2
  store i32 %222, ptr %223, align 8, !tbaa !73
  br label %229

224:                                              ; preds = %198
  %225 = call ptr @lto_input_tree(ptr noundef nonnull %1, ptr noundef %120) #18
  %226 = getelementptr inbounds %struct.ipa_jump_func, ptr %200, i64 %199, i32 1
  store ptr %225, ptr %226, align 8, !tbaa !73
  %227 = call ptr @lto_input_tree(ptr noundef nonnull %1, ptr noundef %120) #18
  %228 = getelementptr inbounds %struct.ipa_jump_func, ptr %200, i64 %199, i32 1, i32 0, i32 1
  store ptr %227, ptr %228, align 8, !tbaa !73
  br label %229

229:                                              ; preds = %224, %216, %207, %204, %198
  %230 = add nuw nsw i64 %199, 1
  %231 = load i32, ptr %187, align 8, !tbaa !151
  %232 = sext i32 %231 to i64
  %233 = icmp slt i64 %230, %232
  br i1 %233, label %198, label %234, !llvm.loop !309

234:                                              ; preds = %229, %191, %181
  %235 = getelementptr inbounds %struct.cgraph_edge, ptr %182, i64 0, i32 6
  %236 = load ptr, ptr %235, align 8, !tbaa !62
  %237 = icmp eq ptr %236, null
  br i1 %237, label %238, label %181, !llvm.loop !310

238:                                              ; preds = %234, %177
  %239 = call i64 @lto_input_uleb128(ptr noundef nonnull %1) #18
  %240 = trunc i64 %239 to i32
  %241 = icmp sgt i32 %240, 0
  br i1 %241, label %242, label %264

242:                                              ; preds = %238
  %243 = getelementptr inbounds %struct.VEC_ipa_node_params_t_base, ptr %132, i64 0, i32 2, i64 %135, i32 2
  br label %244

244:                                              ; preds = %242, %244
  %245 = phi i32 [ 0, %242 ], [ %262, %244 ]
  %246 = call ptr @xcalloc(i64 noundef 1, i64 noundef 40) #18
  %247 = call i64 @lto_input_uleb128(ptr noundef nonnull %1) #18
  %248 = trunc i64 %247 to i32
  %249 = getelementptr inbounds %struct.ipa_param_call_note, ptr %246, i64 0, i32 3
  store i32 %248, ptr %249, align 8, !tbaa !180
  %250 = call i64 @lto_input_sleb128(ptr noundef nonnull %1) #18
  %251 = trunc i64 %250 to i32
  %252 = getelementptr inbounds %struct.ipa_param_call_note, ptr %246, i64 0, i32 4
  store i32 %251, ptr %252, align 4, !tbaa !177
  %253 = call i64 @lto_input_sleb128(ptr noundef nonnull %1) #18
  store i64 %253, ptr %246, align 8, !tbaa !182
  %254 = call i64 @lto_input_sleb128(ptr noundef nonnull %1) #18
  %255 = trunc i64 %254 to i32
  %256 = getelementptr inbounds %struct.ipa_param_call_note, ptr %246, i64 0, i32 5
  store i32 %255, ptr %256, align 8, !tbaa !183
  %257 = call i64 @lto_input_sleb128(ptr noundef nonnull %1) #18
  %258 = trunc i64 %257 to i16
  %259 = getelementptr inbounds %struct.ipa_param_call_note, ptr %246, i64 0, i32 6
  store i16 %258, ptr %259, align 4, !tbaa !185
  %260 = load ptr, ptr %243, align 8, !tbaa !186
  %261 = getelementptr inbounds %struct.ipa_param_call_note, ptr %246, i64 0, i32 1
  store ptr %260, ptr %261, align 8, !tbaa !187
  store ptr %246, ptr %243, align 8, !tbaa !186
  %262 = add nuw nsw i32 %245, 1
  %263 = icmp eq i32 %262, %240
  br i1 %263, label %264, label %244, !llvm.loop !311

264:                                              ; preds = %244, %238
  %265 = add nuw i32 %127, 1
  %266 = icmp eq i32 %265, %122
  br i1 %266, label %267, label %126, !llvm.loop !312

267:                                              ; preds = %264, %106
  call void @lto_free_section_data(ptr noundef nonnull %102, i32 noundef 4, ptr noundef null, ptr noundef nonnull %104, i64 noundef %107) #18
  call void @lto_data_in_delete(ptr noundef %120) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #18
  br label %268

268:                                              ; preds = %267, %101
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #18
  %269 = add i32 %103, 1
  %270 = zext i32 %103 to i64
  %271 = getelementptr inbounds ptr, ptr %3, i64 %270
  %272 = load ptr, ptr %271, align 8, !tbaa !62
  %273 = icmp eq ptr %272, null
  br i1 %273, label %274, label %101, !llvm.loop !313

274:                                              ; preds = %268, %95
  ret void
}

declare ptr @lto_get_file_decl_data() local_unnamed_addr #3

declare ptr @lto_get_section_data(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @ipa_update_after_lto_read() local_unnamed_addr #9 !prof !61 {
  %1 = load ptr, ptr @ipa_node_params_vector, align 8, !tbaa !62
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = load i32, ptr @cgraph_max_uid, align 4, !tbaa !77
  %5 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %4, i64 noundef 8, i64 noundef 48) #18
  store ptr %5, ptr @ipa_node_params_vector, align 8, !tbaa !62
  br label %6

6:                                                ; preds = %3, %0
  %7 = load ptr, ptr @ipa_node_params_vector, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = load i32, ptr %7, align 8, !tbaa !225
  br label %11

11:                                               ; preds = %9, %6
  %12 = phi i32 [ %10, %9 ], [ 0, %6 ]
  %13 = load i32, ptr @cgraph_max_uid, align 4, !tbaa !77
  %14 = icmp ugt i32 %12, %13
  br i1 %14, label %46, label %15

15:                                               ; preds = %11
  %16 = add nsw i32 %13, 1
  br i1 %8, label %19, label %17

17:                                               ; preds = %15
  %18 = load i32, ptr %7, align 8, !tbaa !225
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i32 [ %18, %17 ], [ 0, %15 ]
  br i1 %8, label %23, label %21

21:                                               ; preds = %19
  %22 = load i32, ptr %7, align 8, !tbaa !225
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %22, %21 ], [ 0, %19 ]
  %25 = sub nsw i32 %16, %24
  br i1 %8, label %32, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.VEC_ipa_node_params_t_base, ptr %7, i64 0, i32 1
  %28 = load i32, ptr %27, align 4, !tbaa !242
  %29 = load i32, ptr %7, align 8, !tbaa !225
  %30 = sub i32 %28, %29
  %31 = icmp uge i32 %30, %25
  br label %34

32:                                               ; preds = %23
  %33 = icmp eq i32 %24, %16
  br label %34

34:                                               ; preds = %32, %26
  %35 = phi i1 [ %31, %26 ], [ %33, %32 ]
  br i1 %35, label %38, label %36

36:                                               ; preds = %34
  %37 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef %7, i32 noundef %25, i64 noundef 8, i64 noundef 48) #18
  store ptr %37, ptr @ipa_node_params_vector, align 8, !tbaa !62
  br label %38

38:                                               ; preds = %36, %34
  %39 = load ptr, ptr @ipa_node_params_vector, align 8, !tbaa !62, !nonnull !149, !noundef !149
  store i32 %16, ptr %39, align 8, !tbaa !225
  %40 = getelementptr inbounds %struct.VEC_ipa_node_params_t_base, ptr %39, i64 0, i32 2
  %41 = sext i32 %20 to i64
  %42 = getelementptr inbounds %struct.ipa_node_params, ptr %40, i64 %41
  %43 = sub nsw i32 %16, %20
  %44 = sext i32 %43 to i64
  %45 = mul nsw i64 %44, 48
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %42, i8 0, i64 %45, i1 false)
  br label %46

46:                                               ; preds = %11, %38
  %47 = load ptr, ptr @ipa_edge_args_vector, align 8, !tbaa !62
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i32, ptr @cgraph_edge_max_uid, align 4, !tbaa !77
  %51 = tail call ptr @vec_gc_o_reserve_exact(ptr noundef null, i32 noundef %50, i64 noundef 8, i64 noundef 16) #18
  store ptr %51, ptr @ipa_edge_args_vector, align 8, !tbaa !62
  br label %52

52:                                               ; preds = %49, %46
  %53 = load ptr, ptr @ipa_edge_args_vector, align 8
  %54 = icmp eq ptr %53, null
  br i1 %54, label %57, label %55

55:                                               ; preds = %52
  %56 = load i32, ptr %53, align 8, !tbaa !146
  br label %57

57:                                               ; preds = %55, %52
  %58 = phi i32 [ %56, %55 ], [ 0, %52 ]
  %59 = load i32, ptr @cgraph_edge_max_uid, align 4, !tbaa !77
  %60 = icmp ugt i32 %58, %59
  br i1 %60, label %92, label %61

61:                                               ; preds = %57
  %62 = add nsw i32 %59, 1
  br i1 %54, label %65, label %63

63:                                               ; preds = %61
  %64 = load i32, ptr %53, align 8, !tbaa !146
  br label %65

65:                                               ; preds = %63, %61
  %66 = phi i32 [ %64, %63 ], [ 0, %61 ]
  br i1 %54, label %69, label %67

67:                                               ; preds = %65
  %68 = load i32, ptr %53, align 8, !tbaa !146
  br label %69

69:                                               ; preds = %67, %65
  %70 = phi i32 [ %68, %67 ], [ 0, %65 ]
  %71 = sub nsw i32 %62, %70
  br i1 %54, label %78, label %72

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.VEC_ipa_edge_args_t_base, ptr %53, i64 0, i32 1
  %74 = load i32, ptr %73, align 4, !tbaa !148
  %75 = load i32, ptr %53, align 8, !tbaa !146
  %76 = sub i32 %74, %75
  %77 = icmp uge i32 %76, %71
  br label %80

78:                                               ; preds = %69
  %79 = icmp eq i32 %70, %62
  br label %80

80:                                               ; preds = %78, %72
  %81 = phi i1 [ %77, %72 ], [ %79, %78 ]
  br i1 %81, label %84, label %82

82:                                               ; preds = %80
  %83 = tail call ptr @vec_gc_o_reserve_exact(ptr noundef %53, i32 noundef %71, i64 noundef 8, i64 noundef 16) #18
  store ptr %83, ptr @ipa_edge_args_vector, align 8, !tbaa !62
  br label %84

84:                                               ; preds = %82, %80
  %85 = load ptr, ptr @ipa_edge_args_vector, align 8, !tbaa !62, !nonnull !149, !noundef !149
  store i32 %62, ptr %85, align 8, !tbaa !146
  %86 = getelementptr inbounds %struct.VEC_ipa_edge_args_t_base, ptr %85, i64 0, i32 2
  %87 = sext i32 %66 to i64
  %88 = getelementptr inbounds %struct.ipa_edge_args, ptr %86, i64 %87
  %89 = sub nsw i32 %62, %66
  %90 = sext i32 %89 to i64
  %91 = shl nsw i64 %90, 4
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %88, i8 0, i64 %91, i1 false)
  br label %92

92:                                               ; preds = %57, %84
  %93 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !62
  %94 = icmp eq ptr %93, null
  br i1 %94, label %95, label %98

95:                                               ; preds = %105, %92
  %96 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !62
  %97 = icmp eq ptr %96, null
  br i1 %97, label %148, label %109

98:                                               ; preds = %92, %105
  %99 = phi ptr [ %107, %105 ], [ %93, %92 ]
  %100 = getelementptr inbounds %struct.cgraph_node, ptr %99, i64 0, i32 27
  %101 = load i16, ptr %100, align 4
  %102 = and i16 %101, 32
  %103 = icmp eq i16 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %98
  tail call void @ipa_initialize_node_params(ptr noundef nonnull %99)
  br label %105

105:                                              ; preds = %98, %104
  %106 = getelementptr inbounds %struct.cgraph_node, ptr %99, i64 0, i32 3
  %107 = load ptr, ptr %106, align 8, !tbaa !62
  %108 = icmp eq ptr %107, null
  br i1 %108, label %95, label %98, !llvm.loop !314

109:                                              ; preds = %95, %144
  %110 = phi ptr [ %146, %144 ], [ %96, %95 ]
  %111 = getelementptr inbounds %struct.cgraph_node, ptr %110, i64 0, i32 27
  %112 = load i16, ptr %111, align 4
  %113 = and i16 %112, 32
  %114 = icmp eq i16 %113, 0
  br i1 %114, label %144, label %115

115:                                              ; preds = %109
  %116 = getelementptr inbounds %struct.cgraph_node, ptr %110, i64 0, i32 1
  %117 = load ptr, ptr %116, align 8, !tbaa !62
  %118 = icmp eq ptr %117, null
  br i1 %118, label %144, label %119

119:                                              ; preds = %115, %140
  %120 = phi ptr [ %142, %140 ], [ %117, %115 ]
  %121 = load ptr, ptr @ipa_edge_args_vector, align 8
  %122 = getelementptr inbounds %struct.cgraph_edge, ptr %120, i64 0, i32 12
  %123 = load i32, ptr %122, align 4, !tbaa !150
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds %struct.VEC_ipa_edge_args_t_base, ptr %121, i64 0, i32 2, i64 %124
  %126 = load i32, ptr %125, align 8, !tbaa !151
  %127 = load ptr, ptr @ipa_node_params_vector, align 8
  %128 = getelementptr inbounds %struct.cgraph_edge, ptr %120, i64 0, i32 2
  %129 = load ptr, ptr %128, align 8, !tbaa !153
  %130 = getelementptr inbounds %struct.cgraph_node, ptr %129, i64 0, i32 24
  %131 = load i32, ptr %130, align 8, !tbaa !87
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds %struct.VEC_ipa_node_params_t_base, ptr %127, i64 0, i32 2, i64 %132
  %134 = load i32, ptr %133, align 8, !tbaa !107
  %135 = icmp eq i32 %126, %134
  br i1 %135, label %140, label %136

136:                                              ; preds = %119
  %137 = getelementptr inbounds %struct.VEC_ipa_node_params_t_base, ptr %127, i64 0, i32 2, i64 %132, i32 5
  %138 = load i8, ptr %137, align 8
  %139 = or i8 %138, 1
  store i8 %139, ptr %137, align 8
  br label %140

140:                                              ; preds = %119, %136
  %141 = getelementptr inbounds %struct.cgraph_edge, ptr %120, i64 0, i32 6
  %142 = load ptr, ptr %141, align 8, !tbaa !62
  %143 = icmp eq ptr %142, null
  br i1 %143, label %144, label %119, !llvm.loop !315

144:                                              ; preds = %140, %115, %109
  %145 = getelementptr inbounds %struct.cgraph_node, ptr %110, i64 0, i32 3
  %146 = load ptr, ptr %145, align 8, !tbaa !62
  %147 = icmp eq ptr %146, null
  br i1 %147, label %148, label %109, !llvm.loop !316

148:                                              ; preds = %144, %95
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @lto_ipa_fixup_call_notes(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #9 !prof !61 {
  %3 = load ptr, ptr @ipa_node_params_vector, align 8, !tbaa !62
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %2
  %6 = load i32, ptr @cgraph_max_uid, align 4, !tbaa !77
  %7 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %6, i64 noundef 8, i64 noundef 48) #18
  store ptr %7, ptr @ipa_node_params_vector, align 8, !tbaa !62
  br label %8

8:                                                ; preds = %5, %2
  %9 = load ptr, ptr @ipa_node_params_vector, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  %12 = load i32, ptr %9, align 8, !tbaa !225
  br label %13

13:                                               ; preds = %11, %8
  %14 = phi i32 [ %12, %11 ], [ 0, %8 ]
  %15 = load i32, ptr @cgraph_max_uid, align 4, !tbaa !77
  %16 = icmp ugt i32 %14, %15
  br i1 %16, label %48, label %17

17:                                               ; preds = %13
  %18 = add nsw i32 %15, 1
  br i1 %10, label %21, label %19

19:                                               ; preds = %17
  %20 = load i32, ptr %9, align 8, !tbaa !225
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i32 [ %20, %19 ], [ 0, %17 ]
  br i1 %10, label %25, label %23

23:                                               ; preds = %21
  %24 = load i32, ptr %9, align 8, !tbaa !225
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i32 [ %24, %23 ], [ 0, %21 ]
  %27 = sub nsw i32 %18, %26
  br i1 %10, label %34, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.VEC_ipa_node_params_t_base, ptr %9, i64 0, i32 1
  %30 = load i32, ptr %29, align 4, !tbaa !242
  %31 = load i32, ptr %9, align 8, !tbaa !225
  %32 = sub i32 %30, %31
  %33 = icmp uge i32 %32, %27
  br label %36

34:                                               ; preds = %25
  %35 = icmp eq i32 %26, %18
  br label %36

36:                                               ; preds = %34, %28
  %37 = phi i1 [ %33, %28 ], [ %35, %34 ]
  br i1 %37, label %40, label %38

38:                                               ; preds = %36
  %39 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef %9, i32 noundef %27, i64 noundef 8, i64 noundef 48) #18
  store ptr %39, ptr @ipa_node_params_vector, align 8, !tbaa !62
  br label %40

40:                                               ; preds = %38, %36
  %41 = load ptr, ptr @ipa_node_params_vector, align 8, !tbaa !62, !nonnull !149, !noundef !149
  store i32 %18, ptr %41, align 8, !tbaa !225
  %42 = getelementptr inbounds %struct.VEC_ipa_node_params_t_base, ptr %41, i64 0, i32 2
  %43 = sext i32 %22 to i64
  %44 = getelementptr inbounds %struct.ipa_node_params, ptr %42, i64 %43
  %45 = sub nsw i32 %18, %22
  %46 = sext i32 %45 to i64
  %47 = mul nsw i64 %46, 48
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %44, i8 0, i64 %47, i1 false)
  br label %48

48:                                               ; preds = %13, %40
  %49 = load ptr, ptr @ipa_node_params_vector, align 8
  %50 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 24
  %51 = load i32, ptr %50, align 8, !tbaa !87
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.VEC_ipa_node_params_t_base, ptr %49, i64 0, i32 2, i64 %52, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !186
  %55 = icmp eq ptr %54, null
  br i1 %55, label %71, label %56

56:                                               ; preds = %48
  %57 = getelementptr inbounds %struct.ipa_param_call_note, ptr %54, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !179
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %71

60:                                               ; preds = %56, %60
  %61 = phi ptr [ %69, %60 ], [ %54, %56 ]
  %62 = getelementptr inbounds %struct.ipa_param_call_note, ptr %61, i64 0, i32 3
  %63 = load i32, ptr %62, align 8, !tbaa !180
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds ptr, ptr %1, i64 %64
  %66 = load ptr, ptr %65, align 8, !tbaa !62
  %67 = getelementptr inbounds %struct.ipa_param_call_note, ptr %61, i64 0, i32 2
  store ptr %66, ptr %67, align 8, !tbaa !179
  %68 = getelementptr inbounds %struct.ipa_param_call_note, ptr %61, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !187
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %60, !llvm.loop !317

71:                                               ; preds = %60, %48, %56
  ret void
}

declare ptr @vec_gc_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare zeroext i8 @is_gimple_ip_invariant(ptr noundef) local_unnamed_addr #3

declare ptr @get_ref_base_and_extent(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @type_like_member_ptr_p(ptr nocapture noundef readonly %0, ptr noundef writeonly %1, ptr noundef writeonly %2) unnamed_addr #15 !prof !61 !PGOFuncName !318 {
  %4 = load i64, ptr %0, align 8
  %5 = and i64 %4, 65535
  %6 = icmp eq i64 %5, 16
  br i1 %6, label %7, label %43, !prof !145

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !73
  %10 = icmp eq ptr %9, null
  br i1 %10, label %43, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.tree_common, ptr %9, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !73
  %14 = load i64, ptr %13, align 8
  %15 = trunc i64 %14 to i16
  switch i16 %15, label %43 [
    i16 10, label %16
    i16 12, label %16
  ]

16:                                               ; preds = %11, %11
  %17 = getelementptr inbounds %struct.tree_common, ptr %13, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !73
  %19 = load i64, ptr %18, align 8
  %20 = and i64 %19, 65535
  %21 = icmp eq i64 %20, 21
  br i1 %21, label %22, label %43

22:                                               ; preds = %16
  %23 = icmp eq ptr %1, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %22
  store ptr %9, ptr %1, align 8, !tbaa !62
  br label %25

25:                                               ; preds = %24, %22
  %26 = getelementptr inbounds %struct.tree_common, ptr %9, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !73
  %28 = icmp eq ptr %27, null
  br i1 %28, label %43, label %29

29:                                               ; preds = %25
  %30 = load i64, ptr %27, align 8
  %31 = trunc i64 %30 to i32
  %32 = and i32 %31, 65535
  %33 = add nsw i32 %32, -6
  %34 = icmp ult i32 %33, 3
  br i1 %34, label %43, label %35

35:                                               ; preds = %29
  %36 = icmp eq ptr %2, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %35
  store ptr %27, ptr %2, align 8, !tbaa !62
  br label %38

38:                                               ; preds = %37, %35
  %39 = getelementptr inbounds %struct.tree_common, ptr %27, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !73
  %41 = icmp eq ptr %40, null
  %42 = zext i1 %41 to i8
  br label %43

43:                                               ; preds = %16, %29, %38, %25, %7, %11, %3
  %44 = phi i8 [ 0, %3 ], [ 0, %11 ], [ 0, %7 ], [ 0, %29 ], [ 0, %25 ], [ %42, %38 ], [ 0, %16 ]
  ret i8 %44
}

declare zeroext i8 @gimple_assign_single_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @ipa_note_param_call(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #9 !prof !61 {
  %4 = getelementptr inbounds %struct.gimple_statement_base, ptr %2, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !73
  %6 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 40) #18
  %7 = getelementptr inbounds %struct.ipa_param_call_note, ptr %6, i64 0, i32 4
  store i32 %1, ptr %7, align 4, !tbaa !177
  %8 = getelementptr inbounds %struct.ipa_param_call_note, ptr %6, i64 0, i32 2
  store ptr %2, ptr %8, align 8, !tbaa !179
  %9 = getelementptr inbounds %struct.gimple_statement_base, ptr %2, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !73
  %11 = getelementptr inbounds %struct.ipa_param_call_note, ptr %6, i64 0, i32 3
  store i32 %10, ptr %11, align 8, !tbaa !180
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 8
  %13 = load i64, ptr %12, align 8, !tbaa !181
  store i64 %13, ptr %6, align 8, !tbaa !182
  %14 = load ptr, ptr @current_function_decl, align 8, !tbaa !62
  %15 = tail call i32 @compute_call_stmt_bb_frequency(ptr noundef %14, ptr noundef %5) #18
  %16 = getelementptr inbounds %struct.ipa_param_call_note, ptr %6, i64 0, i32 5
  store i32 %15, ptr %16, align 8, !tbaa !183
  %17 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 10
  %18 = load i32, ptr %17, align 4, !tbaa !184
  %19 = trunc i32 %18 to i16
  %20 = getelementptr inbounds %struct.ipa_param_call_note, ptr %6, i64 0, i32 6
  store i16 %19, ptr %20, align 4, !tbaa !185
  %21 = getelementptr inbounds %struct.ipa_node_params, ptr %0, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !186
  %23 = getelementptr inbounds %struct.ipa_param_call_note, ptr %6, i64 0, i32 1
  store ptr %22, ptr %23, align 8, !tbaa !187
  store ptr %6, ptr %21, align 8, !tbaa !186
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @ipa_get_stmt_member_ptr_load_param(ptr noundef %0) unnamed_addr #9 !prof !61 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = tail call zeroext i8 @gimple_assign_single_p(ptr noundef %0) #18
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %48, label %6

6:                                                ; preds = %1
  %7 = load i32, ptr %0, align 8
  %8 = and i32 %7, 255
  %9 = add nsw i32 %8, -10
  %10 = icmp ult i32 %9, -9
  br i1 %10, label %24, label %11

11:                                               ; preds = %6
  %12 = zext nneg i32 %8 to i64
  %13 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !77
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %15
  %17 = load i64, ptr %16, align 8, !tbaa !162
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %11
  tail call void @fancy_abort(ptr noundef nonnull @.str.35, i32 noundef 1622, ptr noundef nonnull @.str.1) #18
  br label %20

20:                                               ; preds = %19, %11
  %21 = getelementptr inbounds i8, ptr %0, i64 %17
  %22 = getelementptr inbounds ptr, ptr %21, i64 1
  %23 = load ptr, ptr %22, align 8, !tbaa !62
  br label %24

24:                                               ; preds = %6, %20
  %25 = phi ptr [ %23, %20 ], [ null, %6 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #18
  %26 = load i64, ptr %25, align 8
  %27 = and i64 %26, 65535
  %28 = icmp eq i64 %27, 41
  br i1 %28, label %29, label %46

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.tree_exp, ptr %25, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !73
  %32 = load i64, ptr %31, align 8
  %33 = and i64 %32, 65535
  %34 = icmp eq i64 %33, 34
  br i1 %34, label %35, label %46

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.tree_common, ptr %31, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !73
  %38 = call fastcc zeroext i8 @type_like_member_ptr_p(ptr noundef %37, ptr noundef nonnull %2, ptr noundef nonnull %3), !range !166
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.tree_exp, ptr %25, i64 1
  %42 = load ptr, ptr %41, align 8, !tbaa !73
  %43 = load ptr, ptr %2, align 8, !tbaa !62
  %44 = icmp eq ptr %42, %43
  %45 = select i1 %44, ptr %31, ptr null
  br label %46

46:                                               ; preds = %24, %29, %35, %40
  %47 = phi ptr [ null, %24 ], [ null, %35 ], [ null, %29 ], [ %45, %40 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #18
  br label %48

48:                                               ; preds = %1, %46
  %49 = phi ptr [ %47, %46 ], [ null, %1 ]
  ret ptr %49
}

declare ptr @last_stmt(ptr noundef) local_unnamed_addr #3

declare i32 @integer_zerop(ptr noundef) local_unnamed_addr #3

declare i32 @integer_onep(ptr noundef) local_unnamed_addr #3

declare i32 @compute_call_stmt_bb_frequency(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @cgraph_node(ptr noundef) local_unnamed_addr #3

declare ptr @cgraph_create_edge(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @ggc_alloc_stat(i64 noundef) local_unnamed_addr #3

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

declare void @cgraph_remove_edge_removal_hook(ptr noundef) local_unnamed_addr #3

declare void @cgraph_remove_node_removal_hook(ptr noundef) local_unnamed_addr #3

declare void @cgraph_remove_edge_duplication_hook(ptr noundef) local_unnamed_addr #3

declare void @cgraph_remove_node_duplication_hook(ptr noundef) local_unnamed_addr #3

declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @vec_heap_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare i32 @lto_cgraph_encoder_encode(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @bitpack_create() local_unnamed_addr #3

declare void @bp_pack_value(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare void @lto_output_bitpack(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @bitpack_delete(ptr noundef) local_unnamed_addr #3

declare void @lto_output_tree(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @lto_output_sleb128_stream(ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @lto_data_in_create(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i64 @lto_input_uleb128(ptr noundef) local_unnamed_addr #3

declare ptr @lto_cgraph_encoder_deref(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @lto_free_section_data(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @lto_data_in_delete(ptr noundef) local_unnamed_addr #3

declare ptr @lto_input_bitpack(ptr noundef) local_unnamed_addr #3

declare i64 @bp_unpack_value(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @lto_input_tree(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i64 @lto_input_sleb128(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #17

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #17

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
attributes #10 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nofree nounwind }
attributes #18 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!60}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59}
!35 = !{ptr @ipa_push_func_to_list_1, ptr @xcalloc, i64 1}
!36 = !{ptr @ipa_init_func_list, ptr @xcalloc, i64 39}
!37 = !{ptr @ipa_pop_func_from_list, ptr @free, i64 40}
!38 = !{ptr @ipa_initialize_node_params, ptr @xcalloc, i64 39}
!39 = !{ptr @ipa_detect_param_modifications, ptr @walk_stmt_load_store_addr_ops, i64 355160}
!40 = !{ptr @ipa_compute_jump_functions, ptr @ggc_alloc_cleared_stat, i64 52782}
!41 = !{ptr @ipa_compute_jump_functions, ptr @is_gimple_ip_invariant, i64 52782}
!42 = !{ptr @ipa_propagate_indirect_call_infos, ptr @propagate_info_to_inlined_callees, i64 40}
!43 = !{ptr @propagate_info_to_inlined_callees, ptr @propagate_info_to_inlined_callees, i64 2}
!44 = !{ptr @ipa_free_all_edge_args, ptr @ggc_free, i64 52785}
!45 = !{ptr @ipa_free_all_node_params, ptr @free, i64 81}
!46 = !{ptr @ipa_register_cgraph_hooks, ptr @cgraph_add_edge_removal_hook, i64 1}
!47 = !{ptr @ipa_register_cgraph_hooks, ptr @cgraph_add_node_removal_hook, i64 1}
!48 = !{ptr @ipa_register_cgraph_hooks, ptr @cgraph_add_edge_duplication_hook, i64 1}
!49 = !{ptr @ipa_register_cgraph_hooks, ptr @cgraph_add_node_duplication_hook, i64 1}
!50 = !{ptr @ipa_edge_duplication_hook, ptr @vec_gc_o_reserve_exact, i64 39}
!51 = !{ptr @ipa_edge_duplication_hook, ptr @ggc_alloc_stat, i64 2}
!52 = !{ptr @ipa_node_duplication_hook, ptr @xmalloc, i64 41}
!53 = !{ptr @ipa_unregister_cgraph_hooks, ptr @cgraph_remove_edge_removal_hook, i64 1}
!54 = !{ptr @ipa_unregister_cgraph_hooks, ptr @cgraph_remove_node_removal_hook, i64 1}
!55 = !{ptr @ipa_unregister_cgraph_hooks, ptr @cgraph_remove_edge_duplication_hook, i64 1}
!56 = !{ptr @ipa_unregister_cgraph_hooks, ptr @cgraph_remove_node_duplication_hook, i64 1}
!57 = !{ptr @free_all_ipa_structures_after_iinln, ptr @ipa_free_all_edge_args, i64 1}
!58 = !{ptr @free_all_ipa_structures_after_iinln, ptr @ipa_free_all_node_params, i64 1}
!59 = !{ptr @free_all_ipa_structures_after_iinln, ptr @ipa_unregister_cgraph_hooks, i64 1}
!60 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!61 = !{!"function_entry_count", i64 0}
!62 = !{!63, !63, i64 0}
!63 = !{!"any pointer", !64, i64 0}
!64 = !{!"omnipotent char", !65, i64 0}
!65 = !{!"Simple C/C++ TBAA"}
!66 = !{!67, !63, i64 8}
!67 = !{!"_IO_FILE", !68, i64 0, !63, i64 8, !63, i64 16, !63, i64 24, !63, i64 32, !63, i64 40, !63, i64 48, !63, i64 56, !63, i64 64, !63, i64 72, !63, i64 80, !63, i64 88, !63, i64 96, !63, i64 104, !68, i64 112, !68, i64 116, !69, i64 120, !70, i64 128, !64, i64 130, !64, i64 131, !63, i64 136, !69, i64 144, !63, i64 152, !63, i64 160, !63, i64 168, !63, i64 176, !69, i64 184, !68, i64 192, !64, i64 196}
!68 = !{!"int", !64, i64 0}
!69 = !{!"long", !64, i64 0}
!70 = !{!"short", !64, i64 0}
!71 = !{!67, !63, i64 16}
!72 = !{!"branch_weights", i32 2000, i32 1}
!73 = !{!64, !64, i64 0}
!74 = !{!67, !63, i64 40}
!75 = !{!67, !63, i64 48}
!76 = !{!67, !68, i64 0}
!77 = !{!68, !68, i64 0}
!78 = distinct !{!78, !79, !80}
!79 = !{!"llvm.loop.mustprogress"}
!80 = !{!"llvm.loop.unroll.disable"}
!81 = !{!"function_entry_count", i64 1}
!82 = !{!83, !63, i64 0}
!83 = !{!"ipa_func_list", !63, i64 0, !63, i64 8}
!84 = !{!83, !63, i64 8}
!85 = !{!"branch_weights", i32 1, i32 127}
!86 = !{!"branch_weights", i32 35, i32 39}
!87 = !{!88, !68, i64 296}
!88 = !{!"cgraph_node", !63, i64 0, !63, i64 8, !63, i64 16, !63, i64 24, !63, i64 32, !63, i64 40, !63, i64 48, !63, i64 56, !63, i64 64, !63, i64 72, !63, i64 80, !63, i64 88, !63, i64 96, !63, i64 104, !63, i64 112, !63, i64 120, !63, i64 128, !63, i64 136, !89, i64 144, !91, i64 184, !92, i64 224, !93, i64 232, !94, i64 256, !69, i64 288, !68, i64 296, !68, i64 300, !68, i64 304, !68, i64 308, !68, i64 308, !68, i64 308, !68, i64 308, !68, i64 308, !68, i64 308, !68, i64 308, !68, i64 308, !68, i64 309, !68, i64 309}
!89 = !{!"cgraph_local_info", !63, i64 0, !90, i64 8, !68, i64 32, !68, i64 32, !68, i64 32, !68, i64 32, !68, i64 32, !68, i64 32, !68, i64 32, !68, i64 32}
!90 = !{!"inline_summary", !69, i64 0, !68, i64 8, !68, i64 12, !68, i64 16, !68, i64 20}
!91 = !{!"cgraph_global_info", !69, i64 0, !69, i64 8, !63, i64 16, !68, i64 24, !68, i64 28, !68, i64 32, !64, i64 36}
!92 = !{!"cgraph_rtl_info", !68, i64 0}
!93 = !{!"cgraph_clone_info", !63, i64 0, !63, i64 8, !63, i64 16}
!94 = !{!"cgraph_thunk_info", !69, i64 0, !69, i64 8, !63, i64 16, !64, i64 24, !64, i64 25, !64, i64 26}
!95 = !{!"branch_weights", i32 0, i32 39}
!96 = !{!"branch_weights", i32 127, i32 9345}
!97 = distinct !{!97, !79, !80}
!98 = !{!"function_entry_count", i64 40}
!99 = !{!"function_entry_count", i64 39}
!100 = !{!101, !63, i64 8}
!101 = !{!"ipa_node_params", !68, i64 0, !63, i64 8, !63, i64 16, !63, i64 24, !69, i64 32, !68, i64 40, !68, i64 40, !68, i64 40, !68, i64 40}
!102 = !{!"branch_weights", i32 39, i32 0}
!103 = !{!88, !63, i64 0}
!104 = !{!"branch_weights", i32 1, i32 155}
!105 = !{!"branch_weights", i32 155, i32 1}
!106 = distinct !{!106, !79, !80}
!107 = !{!101, !68, i64 0}
!108 = !{!109, !63, i64 16}
!109 = !{!"ipa_param_descriptor", !110, i64 0, !63, i64 16, !68, i64 24}
!110 = !{!"ipcp_lattice", !68, i64 0, !63, i64 8}
!111 = distinct !{!111, !79, !80}
!112 = !{!113, !63, i64 8}
!113 = !{!"function", !63, i64 0, !63, i64 8, !63, i64 16, !63, i64 24, !63, i64 32, !63, i64 40, !63, i64 48, !63, i64 56, !63, i64 64, !63, i64 72, !63, i64 80, !63, i64 88, !63, i64 96, !68, i64 104, !68, i64 108, !68, i64 112, !68, i64 116, !68, i64 120, !68, i64 124, !63, i64 128, !68, i64 136, !68, i64 137, !68, i64 138, !68, i64 138, !68, i64 138, !68, i64 138, !68, i64 138, !68, i64 138, !68, i64 138, !68, i64 139, !68, i64 139, !68, i64 139, !68, i64 139, !68, i64 139, !68, i64 139, !68, i64 139}
!114 = !{!115, !63, i64 0}
!115 = !{!"control_flow_graph", !63, i64 0, !63, i64 8, !63, i64 16, !68, i64 24, !68, i64 28, !68, i64 32, !63, i64 40, !68, i64 48, !64, i64 52, !64, i64 60, !68, i64 68, !68, i64 72}
!116 = !{!117, !63, i64 56}
!117 = !{!"basic_block_def", !63, i64 0, !63, i64 8, !63, i64 16, !63, i64 24, !64, i64 32, !63, i64 48, !63, i64 56, !64, i64 64, !69, i64 72, !68, i64 80, !68, i64 84, !68, i64 88, !68, i64 92, !68, i64 96}
!118 = !{!115, !63, i64 8}
!119 = !{!"branch_weights", i32 155, i32 586129}
!120 = distinct !{!120, !79, !80}
!121 = !{!117, !68, i64 96}
!122 = !{!123}
!123 = distinct !{!123, !124, !"gsi_start_bb: argument 0"}
!124 = distinct !{!124, !"gsi_start_bb"}
!125 = !{!"branch_weights", i32 146571, i32 0}
!126 = !{!"branch_weights", i32 0, i32 146571}
!127 = !{!128, !63, i64 0}
!128 = !{!"gimple_bb_info", !63, i64 0, !63, i64 8}
!129 = !{!130, !63, i64 0}
!130 = !{!"gimple_seq_d", !63, i64 0, !63, i64 8, !63, i64 16}
!131 = !{!"branch_weights", i32 1, i32 146570}
!132 = !{!133, !63, i64 0}
!133 = !{!"gimple_seq_node_d", !63, i64 0, !63, i64 8, !63, i64 16}
!134 = !{!133, !63, i64 16}
!135 = !{!"branch_weights", i32 146570, i32 208590}
!136 = distinct !{!136, !79, !80}
!137 = !{!"function_entry_count", i64 135}
!138 = !{!"ipa-prop.c;visit_store_addr_for_mod_analysis"}
!139 = !{!"branch_weights", i32 0, i32 135}
!140 = distinct !{!140, !79, !80}
!141 = !{!"function_entry_count", i64 52782}
!142 = !{!143, !63, i64 56}
!143 = !{!"cgraph_edge", !69, i64 0, !63, i64 8, !63, i64 16, !63, i64 24, !63, i64 32, !63, i64 40, !63, i64 48, !63, i64 56, !63, i64 64, !68, i64 72, !68, i64 76, !68, i64 80, !68, i64 84, !70, i64 88, !68, i64 90, !68, i64 90, !68, i64 90}
!144 = !{!"branch_weights", i32 52782, i32 0}
!145 = !{!"branch_weights", i32 0, i32 52782}
!146 = !{!147, !68, i64 0}
!147 = !{!"VEC_ipa_edge_args_t_base", !68, i64 0, !68, i64 4, !64, i64 8}
!148 = !{!147, !68, i64 4}
!149 = !{}
!150 = !{!143, !68, i64 84}
!151 = !{!152, !68, i64 0}
!152 = !{!"ipa_edge_args", !68, i64 0, !63, i64 8}
!153 = !{!143, !63, i64 16}
!154 = !{!152, !63, i64 8}
!155 = !{!156, !68, i64 0}
!156 = !{!"ipa_jump_func", !68, i64 0, !64, i64 8}
!157 = distinct !{!157, !79, !80}
!158 = distinct !{!158, !79, !80}
!159 = distinct !{!159, !79, !80}
!160 = !{!143, !63, i64 8}
!161 = !{!"branch_weights", i32 1, i32 52781}
!162 = !{!69, !69, i64 0}
!163 = !{!"branch_weights", i32 1, i32 0}
!164 = distinct !{!164, !79, !80}
!165 = distinct !{!165, !79, !80}
!166 = !{i8 0, i8 2}
!167 = !{i64 0, i64 8, !62, i64 8, i64 8, !62, i64 16, i64 8, !62}
!168 = !{!133, !63, i64 8}
!169 = distinct !{!169, !79, !80}
!170 = distinct !{!170, !79, !80}
!171 = distinct !{!171, !79, !80}
!172 = !{!173}
!173 = distinct !{!173, !174, !"gsi_start_bb: argument 0"}
!174 = distinct !{!174, !"gsi_start_bb"}
!175 = !{!"branch_weights", i32 69128, i32 286032}
!176 = !{!"branch_weights", i32 0, i32 69128}
!177 = !{!178, !68, i64 28}
!178 = !{!"ipa_param_call_note", !69, i64 0, !63, i64 8, !63, i64 16, !68, i64 24, !68, i64 28, !68, i64 32, !70, i64 36, !64, i64 38}
!179 = !{!178, !63, i64 16}
!180 = !{!178, !68, i64 24}
!181 = !{!117, !69, i64 72}
!182 = !{!178, !69, i64 0}
!183 = !{!178, !68, i64 32}
!184 = !{!117, !68, i64 84}
!185 = !{!178, !70, i64 36}
!186 = !{!101, !63, i64 16}
!187 = !{!178, !63, i64 8}
!188 = !{!189, !63, i64 24}
!189 = !{!"ssa_use_operand_d", !63, i64 0, !63, i64 8, !64, i64 16, !63, i64 24}
!190 = !{!117, !63, i64 0}
!191 = !{!192, !68, i64 0}
!192 = !{!"VEC_edge_base", !68, i64 0, !68, i64 4, !64, i64 8}
!193 = !{!117, !63, i64 8}
!194 = !{!195, !63, i64 0}
!195 = !{!"edge_def", !63, i64 0, !63, i64 8, !64, i64 16, !63, i64 24, !63, i64 32, !68, i64 40, !68, i64 44, !68, i64 48, !68, i64 52, !69, i64 56}
!196 = !{!195, !63, i64 8}
!197 = distinct !{!197, !79, !80}
!198 = !{!"function_entry_count", i64 46}
!199 = !{!"branch_weights", i32 0, i32 46}
!200 = !{!"branch_weights", i32 6, i32 40}
!201 = !{!"branch_weights", i32 0, i32 40}
!202 = !{!"function_entry_count", i64 42}
!203 = !{!"ipa-prop.c;propagate_info_to_inlined_callees"}
!204 = !{!178, !64, i64 38}
!205 = !{!143, !68, i64 76}
!206 = !{!207, !68, i64 4}
!207 = !{!"VEC_cgraph_edge_p_base", !68, i64 0, !68, i64 4, !64, i64 8}
!208 = !{!207, !68, i64 0}
!209 = distinct !{!209, !79, !80}
!210 = !{!"branch_weights", i32 1, i32 167}
!211 = !{!143, !68, i64 72}
!212 = !{!"branch_weights", i32 2, i32 44}
!213 = !{!"branch_weights", i32 0, i32 1}
!214 = !{i64 0, i64 4, !77, i64 8, i64 8, !62, i64 8, i64 8, !62, i64 16, i64 4, !77, i64 20, i64 4, !77, i64 8, i64 8, !162, i64 16, i64 8, !62, i64 24, i64 4, !77, i64 8, i64 8, !62, i64 16, i64 8, !62}
!215 = distinct !{!215, !79, !80}
!216 = !{!"branch_weights", i32 167, i32 17}
!217 = distinct !{!217, !79, !80}
!218 = !{!"branch_weights", i32 0, i32 69175}
!219 = !{!"branch_weights", i32 1, i32 69174}
!220 = !{!"branch_weights", i32 16390, i32 52784}
!221 = distinct !{!221, !79, !80}
!222 = !{!"branch_weights", i32 611, i32 80}
!223 = distinct !{!223, !79, !80}
!224 = !{!"branch_weights", i32 0, i32 692}
!225 = !{!226, !68, i64 0}
!226 = !{!"VEC_ipa_node_params_t_base", !68, i64 0, !68, i64 4, !64, i64 8}
!227 = !{!"branch_weights", i32 1, i32 691}
!228 = distinct !{!228, !79, !80}
!229 = !{!"function_entry_count", i64 2}
!230 = !{!"branch_weights", i32 1, i32 1}
!231 = !{!"function_entry_count", i64 45}
!232 = !{!"ipa-prop.c;ipa_edge_duplication_hook"}
!233 = !{!"branch_weights", i32 0, i32 45}
!234 = !{!"branch_weights", i32 6, i32 39}
!235 = !{!"VP", i32 1, i64 39, i64 16, i64 39}
!236 = !{!"branch_weights", i32 43, i32 2}
!237 = !{!"VP", i32 1, i64 2, i64 32, i64 2}
!238 = !{!"function_entry_count", i64 41}
!239 = !{!"ipa-prop.c;ipa_node_duplication_hook"}
!240 = !{!"branch_weights", i32 0, i32 41}
!241 = !{!"branch_weights", i32 41, i32 0}
!242 = !{!226, !68, i64 4}
!243 = !{!"VP", i32 1, i64 41, i64 32, i64 41}
!244 = !{!101, !63, i64 24}
!245 = !{!101, !69, i64 32}
!246 = distinct !{!246, !79, !80}
!247 = !{!"ipa-prop.c;ipa_unregister_cgraph_hooks"}
!248 = !{!249, !63, i64 176}
!249 = !{!"lang_hooks", !63, i64 0, !69, i64 8, !63, i64 16, !63, i64 24, !63, i64 32, !63, i64 40, !63, i64 48, !63, i64 56, !63, i64 64, !63, i64 72, !63, i64 80, !63, i64 88, !63, i64 96, !63, i64 104, !63, i64 112, !63, i64 120, !63, i64 128, !63, i64 136, !63, i64 144, !63, i64 152, !63, i64 160, !63, i64 168, !63, i64 176, !63, i64 184, !63, i64 192, !63, i64 200, !63, i64 208, !63, i64 216, !63, i64 224, !63, i64 232, !250, i64 240, !251, i64 248, !252, i64 256, !253, i64 272, !254, i64 432, !255, i64 560, !63, i64 584, !63, i64 592, !63, i64 600, !63, i64 608, !63, i64 616, !63, i64 624, !63, i64 632, !63, i64 640, !63, i64 648, !63, i64 656, !63, i64 664, !64, i64 672}
!250 = !{!"lang_hooks_for_tree_inlining", !63, i64 0}
!251 = !{!"lang_hooks_for_callgraph", !63, i64 0}
!252 = !{!"lang_hooks_for_tree_dump", !63, i64 0, !63, i64 8}
!253 = !{!"lang_hooks_for_decls", !63, i64 0, !63, i64 8, !63, i64 16, !63, i64 24, !63, i64 32, !63, i64 40, !63, i64 48, !63, i64 56, !63, i64 64, !63, i64 72, !63, i64 80, !63, i64 88, !63, i64 96, !63, i64 104, !63, i64 112, !63, i64 120, !63, i64 128, !63, i64 136, !63, i64 144, !63, i64 152}
!254 = !{!"lang_hooks_for_types", !63, i64 0, !63, i64 8, !63, i64 16, !63, i64 24, !63, i64 32, !63, i64 40, !63, i64 48, !63, i64 56, !63, i64 64, !63, i64 72, !63, i64 80, !63, i64 88, !63, i64 96, !63, i64 104, !63, i64 112, !64, i64 120}
!255 = !{!"lang_hooks_for_lto", !63, i64 0, !63, i64 8, !63, i64 16}
!256 = distinct !{!256, !79, !80}
!257 = distinct !{!257, !79, !80}
!258 = !{!259, !68, i64 0}
!259 = !{!"VEC_tree_base", !68, i64 0, !68, i64 4, !64, i64 8}
!260 = distinct !{!260, !79, !80}
!261 = !{!262, !68, i64 0}
!262 = !{!"VEC_ipa_parm_adjustment_t_base", !68, i64 0, !68, i64 4, !64, i64 8}
!263 = distinct !{!263, !79, !80}
!264 = distinct !{!264, !79, !80}
!265 = !{!266, !68, i64 48}
!266 = !{!"ipa_parm_adjustment", !63, i64 0, !63, i64 8, !63, i64 16, !63, i64 24, !63, i64 32, !69, i64 40, !68, i64 48, !68, i64 52, !68, i64 52, !68, i64 52}
!267 = !{!266, !63, i64 0}
!268 = !{!266, !63, i64 8}
!269 = !{!266, !63, i64 16}
!270 = distinct !{!270, !79, !80}
!271 = !{!266, !69, i64 40}
!272 = distinct !{!272, !79, !80}
!273 = !{i64 0, i64 8, !62, i64 8, i64 8, !62, i64 16, i64 8, !62, i64 24, i64 8, !62, i64 32, i64 8, !62, i64 40, i64 8, !162, i64 48, i64 4, !77, i64 52, i64 4, !77, i64 52, i64 4, !77, i64 52, i64 4, !77}
!274 = distinct !{!274, !79, !80}
!275 = distinct !{!275, !79, !80}
!276 = distinct !{!276, !79, !80}
!277 = distinct !{!277, !79, !80}
!278 = !{!266, !63, i64 24}
!279 = distinct !{!279, !79, !80}
!280 = !{!281, !63, i64 48}
!281 = !{!"output_block", !68, i64 0, !63, i64 8, !63, i64 16, !63, i64 24, !63, i64 32, !63, i64 40, !63, i64 48, !63, i64 56, !68, i64 64, !68, i64 68, !64, i64 72, !63, i64 80}
!282 = !{!283, !63, i64 8}
!283 = !{!"cgraph_node_set_def", !63, i64 0, !63, i64 8, !63, i64 16}
!284 = !{!285, !68, i64 0}
!285 = !{!"VEC_cgraph_node_ptr_base", !68, i64 0, !68, i64 4, !64, i64 8}
!286 = distinct !{!286, !79, !80}
!287 = !{!281, !63, i64 16}
!288 = !{!281, !63, i64 8}
!289 = !{!290, !63, i64 168}
!290 = !{!"lto_out_decl_state", !64, i64 0, !63, i64 168, !63, i64 176}
!291 = distinct !{!291, !79, !80}
!292 = distinct !{!292, !79, !80}
!293 = distinct !{!293, !79, !80}
!294 = distinct !{!294, !79, !80}
!295 = distinct !{!295, !79, !80}
!296 = distinct !{!296, !79, !80}
!297 = !{!298, !68, i64 24}
!298 = !{!"lto_function_header", !299, i64 0, !68, i64 8, !68, i64 12, !68, i64 16, !68, i64 20, !68, i64 24, !68, i64 28, !68, i64 32}
!299 = !{!"lto_header", !70, i64 0, !70, i64 2, !68, i64 4}
!300 = !{!298, !68, i64 28}
!301 = !{!302, !63, i64 0}
!302 = !{!"lto_input_block", !63, i64 0, !68, i64 8, !68, i64 12}
!303 = !{!302, !68, i64 8}
!304 = !{!302, !68, i64 12}
!305 = !{!298, !68, i64 32}
!306 = !{!307, !63, i64 16}
!307 = !{!"lto_file_decl_data", !63, i64 0, !63, i64 8, !63, i64 16, !63, i64 24, !63, i64 32, !68, i64 40, !63, i64 48, !63, i64 56}
!308 = distinct !{!308, !79, !80}
!309 = distinct !{!309, !79, !80}
!310 = distinct !{!310, !79, !80}
!311 = distinct !{!311, !79, !80}
!312 = distinct !{!312, !79, !80}
!313 = distinct !{!313, !79, !80}
!314 = distinct !{!314, !79, !80}
!315 = distinct !{!315, !79, !80}
!316 = distinct !{!316, !79, !80}
!317 = distinct !{!317, !79, !80}
!318 = !{!"ipa-prop.c;type_like_member_ptr_p"}

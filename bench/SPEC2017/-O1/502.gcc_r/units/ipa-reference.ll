; ModuleID = 'ipa-reference.c'
source_filename = "ipa-reference.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ipa_opt_pass_d = type { %struct.opt_pass, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.ggc_root_tab = type { ptr, i64, i64, ptr, ptr }
%struct.bitmap_obstack = type { ptr, ptr, %struct.obstack }
%struct.obstack = type { i64, ptr, ptr, ptr, ptr, i64, i32, ptr, ptr, ptr, i8 }
%struct.bitmap_element_def = type { ptr, ptr, i32, [2 x i64] }
%struct.lang_hooks = type { ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lang_hooks_for_tree_inlining, %struct.lang_hooks_for_callgraph, %struct.lang_hooks_for_tree_dump, %struct.lang_hooks_for_decls, %struct.lang_hooks_for_types, %struct.lang_hooks_for_lto, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_tree_inlining = type { ptr }
%struct.lang_hooks_for_callgraph = type { ptr }
%struct.lang_hooks_for_tree_dump = type { ptr, ptr }
%struct.lang_hooks_for_decls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lang_hooks_for_types = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_lto = type { ptr, ptr, ptr }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.cgraph_node = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.cgraph_local_info, %struct.cgraph_global_info, %struct.cgraph_rtl_info, %struct.cgraph_clone_info, %struct.cgraph_thunk_info, i64, i32, i32, i32, i16 }
%struct.cgraph_local_info = type { ptr, %struct.inline_summary, i8 }
%struct.inline_summary = type { i64, i32, i32, i32, i32 }
%struct.cgraph_global_info = type { i64, i64, ptr, i32, i32, i32, i8 }
%struct.cgraph_rtl_info = type { i32 }
%struct.cgraph_clone_info = type { ptr, ptr, ptr }
%struct.cgraph_thunk_info = type { i64, i64, ptr, i8, i8, i8 }
%struct.VEC_ipa_reference_vars_info_t_base = type { i32, i32, [1 x ptr] }
%struct.ipa_reference_vars_info_d = type { ptr, ptr }
%struct.ipa_reference_global_vars_info_d = type { ptr, ptr, ptr, ptr }
%struct.diagnostic_context = type { ptr, [12 x i32], i8, i8, [870 x i32], i8, i8, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.ipa_reference_local_vars_info_d = type { ptr, ptr, i8, i8 }
%struct.cgraph_edge = type { i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i8 }
%struct.ipa_dfs_info = type { i32, i32, i8, i8, ptr, ptr }
%struct.splay_tree_node_s = type { i64, i64, ptr, ptr }
%struct.walk_stmt_info = type { %struct.gimple_stmt_iterator, ptr, ptr, i8, i8, i8, i8, ptr }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.varpool_node = type { ptr, ptr, ptr, ptr, i32, i8 }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.cgraph_node_set_def = type { ptr, ptr, ptr }
%struct.VEC_cgraph_node_ptr_base = type { i32, i32, [1 x ptr] }
%struct.lto_simple_output_block = type { i32, ptr, ptr }
%struct.lto_out_decl_state = type { [7 x %struct.lto_tree_ref_encoder], ptr, ptr }
%struct.lto_tree_ref_encoder = type { ptr, i32, ptr }
%struct.lto_file_decl_data = type { ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr }
%struct.lto_tree_ref_table = type { ptr, i32 }
%struct.tree_function_decl = type { %struct.tree_decl_non_common, ptr, ptr, ptr, ptr, i32 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.gimple_statement_asm = type { %struct.gimple_statement_with_memory_ops_base, ptr, i8, i8, i8, i8, [1 x ptr] }
%struct.gimple_statement_with_memory_ops_base = type { %struct.gimple_statement_with_ops_base, ptr, ptr }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.tree_list = type { %struct.tree_common, ptr, ptr }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [11 x i8] c"static-var\00", align 1
@pass_ipa_reference = dso_local local_unnamed_addr global %struct.ipa_opt_pass_d { %struct.opt_pass { i32 3, ptr @.str, ptr @gate_reference, ptr @propagate, ptr null, ptr null, i32 0, i32 16, i32 0, i32 0, i32 0, i32 0, i32 0 }, ptr @generate_summary, ptr @ipa_reference_write_summary, ptr @ipa_reference_read_summary, ptr null, ptr null, i32 0, ptr null, ptr null }, align 8
@reference_vars_to_consider = internal global ptr null, align 8
@gt_ggc_r_gt_ipa_reference_h = dso_local local_unnamed_addr constant [2 x %struct.ggc_root_tab] [%struct.ggc_root_tab { ptr @reference_vars_to_consider, i64 1, i64 8, ptr @gt_ggc_m_IP9tree_node12splay_tree_s, ptr @gt_pch_n_IP9tree_node12splay_tree_s }, %struct.ggc_root_tab zeroinitializer], align 16
@memory_identifier_string = dso_local local_unnamed_addr global ptr null, align 8
@ipa_reference_vars_vector = internal unnamed_addr global ptr null, align 8
@flag_ipa_reference = external local_unnamed_addr global i32, align 4
@global_dc = external local_unnamed_addr global ptr, align 8
@cgraph_n_nodes = external local_unnamed_addr global i32, align 4
@function_insertion_hook_holder = internal unnamed_addr global ptr null, align 8
@dump_file = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"reduced\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"ipa-reference.c\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@all_module_statics = internal unnamed_addr global ptr null, align 8
@global_info_obstack = internal global %struct.bitmap_obstack zeroinitializer, align 8
@.str.4 = private unnamed_addr constant [22 x i8] c"\0AFunction name:%s/%i:\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"\0A  locals read: \00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"\0A  locals written: \00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"\0A  next cycle: %s/%i \00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"\0A    locals read: \00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"\0A    locals written: \00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"\0A  globals read: \00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"ALL\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"\0A  globals written: \00", align 1
@cgraph_nodes = external local_unnamed_addr global ptr, align 8
@local_info_obstack = internal global %struct.bitmap_obstack zeroinitializer, align 8
@bitmap_zero_bits = external local_unnamed_addr global %struct.bitmap_element_def, align 8
@lang_hooks = external local_unnamed_addr global %struct.lang_hooks, align 8
@visited_nodes = internal unnamed_addr global ptr null, align 8
@module_statics_escape = internal unnamed_addr global ptr null, align 8
@module_statics_written = internal unnamed_addr global ptr null, align 8
@.str.14 = private unnamed_addr constant [29 x i8] c"Not TREE_ADDRESSABLE var %s\0A\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"read-only var %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"\0APromotable global:%s\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"\0A  calls read all: \00", align 1
@ipa_init.init_p = internal unnamed_addr global i1 false, align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"memory\00", align 1
@node_removal_hook_holder = internal unnamed_addr global ptr null, align 8
@node_duplication_hook_holder = internal unnamed_addr global ptr null, align 8
@varpool_nodes_queue = external local_unnamed_addr global ptr, align 8
@.str.19 = private unnamed_addr constant [11 x i8] c"./cgraph.h\00", align 1
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@.str.20 = private unnamed_addr constant [24 x i8] c"\0A local analysis of %s\0A\00", align 1
@current_function_decl = external local_unnamed_addr global ptr, align 8
@.str.22 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@.str.23 = private unnamed_addr constant [17 x i8] c"./lto-streamer.h\00", align 1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !88 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !89
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !88 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !89
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !88 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !93
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !98
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !99

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #17
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !93
  %11 = load i8, ptr %3, align 1, !tbaa !100
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !88 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !93
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !98
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !99

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #17
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !93
  %11 = load i8, ptr %3, align 1, !tbaa !100
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !88 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !89
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !93
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !98
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !99

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #17
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !93
  %11 = load i8, ptr %3, align 1, !tbaa !100
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !88 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !89
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !88 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !101
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !102
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !99

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #17
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !101
  store i8 %12, ptr %4, align 1, !tbaa !100
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !88 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !101
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !102
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !99

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #17
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !101
  store i8 %12, ptr %4, align 1, !tbaa !100
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !88 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !89
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !101
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !102
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !99

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #17
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !101
  store i8 %12, ptr %4, align 1, !tbaa !100
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !88 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #17
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !88 {
  %2 = load i32, ptr %0, align 8, !tbaa !103
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !88 {
  %2 = load i32, ptr %0, align 8, !tbaa !103
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !88 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #17
  %6 = load ptr, ptr %5, align 8, !tbaa !89
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !104
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !88 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #17
  %6 = load ptr, ptr %5, align 8, !tbaa !89
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !104
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !88 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !88 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !88 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !88 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #17
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
  br i1 %23, label %7, label %24, !llvm.loop !105

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !88 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @ipa_reference_get_read_global(ptr nocapture noundef readonly %0) local_unnamed_addr #9 !prof !88 {
  %2 = load ptr, ptr @ipa_reference_vars_vector, align 8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %2, align 8, !tbaa !108
  %6 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 24
  %7 = load i32, ptr %6, align 8, !tbaa !110
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %13

9:                                                ; preds = %4
  %10 = zext i32 %7 to i64
  %11 = getelementptr inbounds %struct.VEC_ipa_reference_vars_info_t_base, ptr %2, i64 0, i32 2, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !89
  br label %13

13:                                               ; preds = %9, %4, %1
  %14 = phi ptr [ %12, %9 ], [ null, %4 ], [ null, %1 ]
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.ipa_reference_vars_info_d, ptr %14, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !118
  br label %19

19:                                               ; preds = %13, %16
  %20 = phi ptr [ %18, %16 ], [ null, %13 ]
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %19
  %23 = load ptr, ptr %20, align 8, !tbaa !120
  br label %24

24:                                               ; preds = %19, %22
  %25 = phi ptr [ %23, %22 ], [ null, %19 ]
  ret ptr %25
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @ipa_reference_get_written_global(ptr nocapture noundef readonly %0) local_unnamed_addr #9 !prof !88 {
  %2 = load ptr, ptr @ipa_reference_vars_vector, align 8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %2, align 8, !tbaa !108
  %6 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 24
  %7 = load i32, ptr %6, align 8, !tbaa !110
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %13

9:                                                ; preds = %4
  %10 = zext i32 %7 to i64
  %11 = getelementptr inbounds %struct.VEC_ipa_reference_vars_info_t_base, ptr %2, i64 0, i32 2, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !89
  br label %13

13:                                               ; preds = %9, %4, %1
  %14 = phi ptr [ %12, %9 ], [ null, %4 ], [ null, %1 ]
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.ipa_reference_vars_info_d, ptr %14, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !118
  br label %19

19:                                               ; preds = %13, %16
  %20 = phi ptr [ %18, %16 ], [ null, %13 ]
  %21 = icmp eq ptr %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.ipa_reference_global_vars_info_d, ptr %20, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !122
  br label %25

25:                                               ; preds = %19, %22
  %26 = phi ptr [ %24, %22 ], [ null, %19 ]
  ret ptr %26
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @ipa_reference_get_not_read_global(ptr nocapture noundef readonly %0) local_unnamed_addr #9 !prof !88 {
  %2 = load ptr, ptr @ipa_reference_vars_vector, align 8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %2, align 8, !tbaa !108
  %6 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 24
  %7 = load i32, ptr %6, align 8, !tbaa !110
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %13

9:                                                ; preds = %4
  %10 = zext i32 %7 to i64
  %11 = getelementptr inbounds %struct.VEC_ipa_reference_vars_info_t_base, ptr %2, i64 0, i32 2, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !89
  br label %13

13:                                               ; preds = %9, %4, %1
  %14 = phi ptr [ %12, %9 ], [ null, %4 ], [ null, %1 ]
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.ipa_reference_vars_info_d, ptr %14, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !118
  br label %19

19:                                               ; preds = %13, %16
  %20 = phi ptr [ %18, %16 ], [ null, %13 ]
  %21 = icmp eq ptr %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.ipa_reference_global_vars_info_d, ptr %20, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !123
  br label %25

25:                                               ; preds = %19, %22
  %26 = phi ptr [ %24, %22 ], [ null, %19 ]
  ret ptr %26
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @ipa_reference_get_not_written_global(ptr nocapture noundef readonly %0) local_unnamed_addr #9 !prof !88 {
  %2 = load ptr, ptr @ipa_reference_vars_vector, align 8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %2, align 8, !tbaa !108
  %6 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 24
  %7 = load i32, ptr %6, align 8, !tbaa !110
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %13

9:                                                ; preds = %4
  %10 = zext i32 %7 to i64
  %11 = getelementptr inbounds %struct.VEC_ipa_reference_vars_info_t_base, ptr %2, i64 0, i32 2, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !89
  br label %13

13:                                               ; preds = %9, %4, %1
  %14 = phi ptr [ %12, %9 ], [ null, %4 ], [ null, %1 ]
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.ipa_reference_vars_info_d, ptr %14, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !118
  br label %19

19:                                               ; preds = %13, %16
  %20 = phi ptr [ %18, %16 ], [ null, %13 ]
  %21 = icmp eq ptr %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.ipa_reference_global_vars_info_d, ptr %20, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !124
  br label %25

25:                                               ; preds = %19, %22
  %26 = phi ptr [ %24, %22 ], [ null, %19 ]
  ret ptr %26
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_reference() #9 !prof !125 !PGOFuncName !126 {
  %1 = load i32, ptr @flag_ipa_reference, align 4, !tbaa !104
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %13, label %3, !prof !127

3:                                                ; preds = %0
  %4 = load ptr, ptr @global_dc, align 8, !tbaa !89
  %5 = getelementptr inbounds %struct.diagnostic_context, ptr %4, i64 0, i32 1, i64 4
  %6 = load i32, ptr %5, align 8, !tbaa !104
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %13, !prof !128

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.diagnostic_context, ptr %4, i64 0, i32 1, i64 5
  %10 = load i32, ptr %9, align 4, !tbaa !104
  %11 = icmp eq i32 %10, 0
  %12 = zext i1 %11 to i8
  br label %13

13:                                               ; preds = %3, %8, %0
  %14 = phi i8 [ 0, %0 ], [ 0, %3 ], [ %12, %8 ]
  ret i8 %14
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @propagate() #10 !prof !129 !PGOFuncName !130 {
  %1 = load i32, ptr @cgraph_n_nodes, align 4, !tbaa !104
  %2 = sext i32 %1 to i64
  %3 = tail call ptr @xcalloc(i64 noundef %2, i64 noundef 8) #17
  %4 = tail call i32 @ipa_utils_reduced_inorder(ptr noundef %3, i8 noundef zeroext 0, i8 noundef zeroext 1, ptr noundef null) #17
  %5 = load ptr, ptr @function_insertion_hook_holder, align 8, !tbaa !89
  tail call void @cgraph_remove_function_insertion_hook(ptr noundef %5) #17
  %6 = load ptr, ptr @dump_file, align 8, !tbaa !89
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8, !prof !131

8:                                                ; preds = %0
  tail call void @dump_cgraph(ptr noundef nonnull %6) #17
  br label %9

9:                                                ; preds = %8, %0
  %10 = tail call i32 @ipa_utils_reduced_inorder(ptr noundef %3, i8 noundef zeroext 1, i8 noundef zeroext 1, ptr noundef null) #17
  %11 = load ptr, ptr @dump_file, align 8, !tbaa !89
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13, !prof !131

13:                                               ; preds = %9
  tail call void @ipa_utils_print_order(ptr noundef nonnull %11, ptr noundef nonnull @.str.1, ptr noundef %3, i32 noundef %10) #17
  br label %14

14:                                               ; preds = %13, %9
  %15 = icmp sgt i32 %10, 0
  br i1 %15, label %16, label %287, !prof !132

16:                                               ; preds = %14
  %17 = zext nneg i32 %10 to i64
  br label %18

18:                                               ; preds = %16, %284
  %19 = phi i64 [ 0, %16 ], [ %285, %284 ]
  %20 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 32) #17
  %21 = getelementptr inbounds ptr, ptr %3, i64 %19
  %22 = load ptr, ptr %21, align 8, !tbaa !89
  %23 = load ptr, ptr @ipa_reference_vars_vector, align 8
  %24 = icmp eq ptr %23, null
  br i1 %24, label %34, label %25, !prof !133

25:                                               ; preds = %18
  %26 = load i32, ptr %23, align 8, !tbaa !108
  %27 = getelementptr inbounds %struct.cgraph_node, ptr %22, i64 0, i32 24
  %28 = load i32, ptr %27, align 8, !tbaa !110
  %29 = icmp ugt i32 %26, %28
  br i1 %29, label %30, label %34, !prof !134

30:                                               ; preds = %25
  %31 = zext i32 %28 to i64
  %32 = getelementptr inbounds %struct.VEC_ipa_reference_vars_info_t_base, ptr %23, i64 0, i32 2, i64 %31
  %33 = load ptr, ptr %32, align 8, !tbaa !89
  br label %34

34:                                               ; preds = %18, %25, %30
  %35 = phi ptr [ %33, %30 ], [ null, %25 ], [ null, %18 ]
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %40, !prof !133

37:                                               ; preds = %34
  %38 = load ptr, ptr @stderr, align 8, !tbaa !89
  tail call void @dump_cgraph_node(ptr noundef %38, ptr noundef %22) #17
  %39 = load ptr, ptr @stderr, align 8, !tbaa !89
  tail call void @dump_cgraph(ptr noundef %39) #17
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1245, ptr noundef nonnull @.str.3) #17
  br label %40

40:                                               ; preds = %37, %34
  %41 = getelementptr inbounds %struct.ipa_reference_vars_info_d, ptr %35, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !118
  %43 = icmp eq ptr %42, null
  br i1 %43, label %45, label %44, !prof !134

44:                                               ; preds = %40
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1248, ptr noundef nonnull @.str.3) #17
  br label %45

45:                                               ; preds = %40, %44
  %46 = load ptr, ptr %35, align 8, !tbaa !135
  %47 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %46, i64 0, i32 2
  %48 = load i8, ptr %47, align 8, !tbaa !136
  %49 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %46, i64 0, i32 3
  %50 = load i8, ptr %49, align 1, !tbaa !138
  %51 = tail call i32 @cgraph_function_body_availability(ptr noundef %22) #17
  %52 = icmp ult i32 %51, 3
  br i1 %52, label %53, label %65, !prof !133

53:                                               ; preds = %45
  %54 = load ptr, ptr %22, align 8, !tbaa !139
  %55 = tail call i32 @flags_from_decl_or_type(ptr noundef %54) #17
  %56 = and i32 %55, 1
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %53
  %59 = and i32 %55, 2
  %60 = icmp ne i32 %59, 0
  %61 = and i32 %55, 72
  %62 = icmp eq i32 %61, 72
  %63 = or i1 %60, %62
  %64 = select i1 %63, i8 %50, i8 1
  br label %65

65:                                               ; preds = %58, %53, %45
  %66 = phi i8 [ %50, %45 ], [ %50, %53 ], [ %64, %58 ]
  %67 = phi i8 [ %48, %45 ], [ %48, %53 ], [ 1, %58 ]
  %68 = getelementptr inbounds %struct.cgraph_node, ptr %22, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !89
  %70 = icmp eq ptr %69, null
  br i1 %70, label %98, label %71, !prof !140

71:                                               ; preds = %65, %92
  %72 = phi ptr [ %96, %92 ], [ %69, %65 ]
  %73 = phi i8 [ %94, %92 ], [ %67, %65 ]
  %74 = phi i8 [ %93, %92 ], [ %66, %65 ]
  %75 = getelementptr inbounds %struct.cgraph_edge, ptr %72, i64 0, i32 2
  %76 = load ptr, ptr %75, align 8, !tbaa !141
  %77 = tail call i32 @cgraph_function_body_availability(ptr noundef %76) #17
  %78 = icmp ult i32 %77, 3
  br i1 %78, label %79, label %92, !prof !143

79:                                               ; preds = %71
  %80 = load ptr, ptr %75, align 8, !tbaa !141
  %81 = load ptr, ptr %80, align 8, !tbaa !139
  %82 = tail call i32 @flags_from_decl_or_type(ptr noundef %81) #17
  %83 = and i32 %82, 1
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %92, !prof !144

85:                                               ; preds = %79
  %86 = and i32 %82, 2
  %87 = icmp ne i32 %86, 0
  %88 = and i32 %82, 72
  %89 = icmp eq i32 %88, 72
  %90 = or i1 %87, %89
  %91 = select i1 %90, i8 %74, i8 1, !prof !145
  br label %92

92:                                               ; preds = %85, %79, %71
  %93 = phi i8 [ %74, %71 ], [ %74, %79 ], [ %91, %85 ]
  %94 = phi i8 [ %73, %71 ], [ %73, %79 ], [ 1, %85 ]
  %95 = getelementptr inbounds %struct.cgraph_edge, ptr %72, i64 0, i32 6
  %96 = load ptr, ptr %95, align 8, !tbaa !89
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %71, !prof !146, !llvm.loop !147

98:                                               ; preds = %92, %65
  %99 = phi i8 [ %66, %65 ], [ %93, %92 ]
  %100 = phi i8 [ %67, %65 ], [ %94, %92 ]
  %101 = getelementptr inbounds %struct.cgraph_node, ptr %22, i64 0, i32 16
  %102 = load ptr, ptr %101, align 8, !tbaa !148
  %103 = getelementptr inbounds %struct.ipa_dfs_info, ptr %102, i64 0, i32 4
  %104 = load ptr, ptr %103, align 8, !tbaa !149
  %105 = icmp eq ptr %104, null
  br i1 %105, label %180, label %106, !prof !131

106:                                              ; preds = %98, %166
  %107 = phi ptr [ %178, %166 ], [ %104, %98 ]
  %108 = phi i8 [ %171, %166 ], [ %100, %98 ]
  %109 = phi i8 [ %174, %166 ], [ %99, %98 ]
  %110 = load ptr, ptr @ipa_reference_vars_vector, align 8, !nonnull !151, !noundef !151
  %111 = load i32, ptr %110, align 8, !tbaa !108
  %112 = getelementptr inbounds %struct.cgraph_node, ptr %107, i64 0, i32 24
  %113 = load i32, ptr %112, align 8, !tbaa !110
  %114 = icmp ugt i32 %111, %113
  tail call void @llvm.assume(i1 %114)
  %115 = zext i32 %113 to i64
  %116 = getelementptr inbounds %struct.VEC_ipa_reference_vars_info_t_base, ptr %110, i64 0, i32 2, i64 %115
  %117 = load ptr, ptr %116, align 8, !tbaa !89
  %118 = load ptr, ptr %117, align 8, !tbaa !135
  %119 = tail call i32 @cgraph_function_body_availability(ptr noundef nonnull %107) #17
  %120 = icmp ult i32 %119, 3
  br i1 %120, label %121, label %133

121:                                              ; preds = %106
  %122 = load ptr, ptr %107, align 8, !tbaa !139
  %123 = tail call i32 @flags_from_decl_or_type(ptr noundef %122) #17
  %124 = and i32 %123, 1
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %133

126:                                              ; preds = %121
  %127 = and i32 %123, 2
  %128 = icmp ne i32 %127, 0
  %129 = and i32 %123, 72
  %130 = icmp eq i32 %129, 72
  %131 = or i1 %128, %130
  %132 = select i1 %131, i8 %109, i8 1
  br label %133

133:                                              ; preds = %126, %121, %106
  %134 = phi i8 [ %109, %106 ], [ %109, %121 ], [ %132, %126 ]
  %135 = phi i8 [ %108, %106 ], [ %108, %121 ], [ 1, %126 ]
  %136 = getelementptr inbounds %struct.cgraph_node, ptr %107, i64 0, i32 1
  %137 = load ptr, ptr %136, align 8, !tbaa !89
  %138 = icmp eq ptr %137, null
  br i1 %138, label %166, label %139

139:                                              ; preds = %133, %160
  %140 = phi ptr [ %164, %160 ], [ %137, %133 ]
  %141 = phi i8 [ %162, %160 ], [ %135, %133 ]
  %142 = phi i8 [ %161, %160 ], [ %134, %133 ]
  %143 = getelementptr inbounds %struct.cgraph_edge, ptr %140, i64 0, i32 2
  %144 = load ptr, ptr %143, align 8, !tbaa !141
  %145 = tail call i32 @cgraph_function_body_availability(ptr noundef %144) #17
  %146 = icmp ult i32 %145, 3
  br i1 %146, label %147, label %160

147:                                              ; preds = %139
  %148 = load ptr, ptr %143, align 8, !tbaa !141
  %149 = load ptr, ptr %148, align 8, !tbaa !139
  %150 = tail call i32 @flags_from_decl_or_type(ptr noundef %149) #17
  %151 = and i32 %150, 1
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %160

153:                                              ; preds = %147
  %154 = and i32 %150, 2
  %155 = icmp ne i32 %154, 0
  %156 = and i32 %150, 72
  %157 = icmp eq i32 %156, 72
  %158 = or i1 %155, %157
  %159 = select i1 %158, i8 %142, i8 1
  br label %160

160:                                              ; preds = %153, %147, %139
  %161 = phi i8 [ %142, %139 ], [ %142, %147 ], [ %159, %153 ]
  %162 = phi i8 [ %141, %139 ], [ %141, %147 ], [ 1, %153 ]
  %163 = getelementptr inbounds %struct.cgraph_edge, ptr %140, i64 0, i32 6
  %164 = load ptr, ptr %163, align 8, !tbaa !89
  %165 = icmp eq ptr %164, null
  br i1 %165, label %166, label %139, !llvm.loop !152

166:                                              ; preds = %160, %133
  %167 = phi i8 [ %134, %133 ], [ %161, %160 ]
  %168 = phi i8 [ %135, %133 ], [ %162, %160 ]
  %169 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %118, i64 0, i32 2
  %170 = load i8, ptr %169, align 8, !tbaa !136
  %171 = or i8 %170, %168
  %172 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %118, i64 0, i32 3
  %173 = load i8, ptr %172, align 1, !tbaa !138
  %174 = or i8 %173, %167
  %175 = getelementptr inbounds %struct.cgraph_node, ptr %107, i64 0, i32 16
  %176 = load ptr, ptr %175, align 8, !tbaa !148
  %177 = getelementptr inbounds %struct.ipa_dfs_info, ptr %176, i64 0, i32 4
  %178 = load ptr, ptr %177, align 8, !tbaa !149
  %179 = icmp eq ptr %178, null
  br i1 %179, label %180, label %106, !prof !131, !llvm.loop !153

180:                                              ; preds = %166, %98
  %181 = phi i8 [ %99, %98 ], [ %174, %166 ]
  %182 = phi i8 [ %100, %98 ], [ %171, %166 ]
  %183 = icmp eq i8 %182, 0
  br i1 %183, label %186, label %184, !prof !133

184:                                              ; preds = %180
  %185 = load ptr, ptr @all_module_statics, align 8, !tbaa !89
  store ptr %185, ptr %20, align 8, !tbaa !120
  br label %189

186:                                              ; preds = %180
  %187 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @global_info_obstack) #17
  store ptr %187, ptr %20, align 8, !tbaa !120
  %188 = load ptr, ptr %46, align 8, !tbaa !154
  tail call void @bitmap_copy(ptr noundef %187, ptr noundef %188) #17
  br label %189

189:                                              ; preds = %186, %184
  %190 = icmp eq i8 %181, 0
  %191 = getelementptr inbounds %struct.ipa_reference_global_vars_info_d, ptr %20, i64 0, i32 1
  br i1 %190, label %194, label %192, !prof !133

192:                                              ; preds = %189
  %193 = load ptr, ptr @all_module_statics, align 8, !tbaa !89
  store ptr %193, ptr %191, align 8, !tbaa !122
  br label %198

194:                                              ; preds = %189
  %195 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @global_info_obstack) #17
  store ptr %195, ptr %191, align 8, !tbaa !122
  %196 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %46, i64 0, i32 1
  %197 = load ptr, ptr %196, align 8, !tbaa !155
  tail call void @bitmap_copy(ptr noundef %195, ptr noundef %197) #17
  br label %198

198:                                              ; preds = %194, %192
  tail call fastcc void @propagate_bits(ptr noundef %20, ptr noundef %22)
  %199 = load ptr, ptr %101, align 8, !tbaa !148
  %200 = getelementptr inbounds %struct.ipa_dfs_info, ptr %199, i64 0, i32 4
  %201 = load ptr, ptr %200, align 8, !tbaa !149
  %202 = icmp eq ptr %201, null
  br i1 %202, label %231, label %203, !prof !131

203:                                              ; preds = %198, %225
  %204 = phi ptr [ %229, %225 ], [ %201, %198 ]
  %205 = load ptr, ptr @ipa_reference_vars_vector, align 8, !nonnull !151, !noundef !151
  %206 = load i32, ptr %205, align 8, !tbaa !108
  %207 = getelementptr inbounds %struct.cgraph_node, ptr %204, i64 0, i32 24
  %208 = load i32, ptr %207, align 8, !tbaa !110
  %209 = icmp ugt i32 %206, %208
  tail call void @llvm.assume(i1 %209)
  %210 = zext i32 %208 to i64
  %211 = getelementptr inbounds %struct.VEC_ipa_reference_vars_info_t_base, ptr %205, i64 0, i32 2, i64 %210
  %212 = load ptr, ptr %211, align 8, !tbaa !89
  %213 = load ptr, ptr %212, align 8, !tbaa !135
  br i1 %183, label %214, label %218

214:                                              ; preds = %203
  %215 = load ptr, ptr %20, align 8, !tbaa !120
  %216 = load ptr, ptr %213, align 8, !tbaa !154
  %217 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %215, ptr noundef %216) #17
  br label %218

218:                                              ; preds = %214, %203
  br i1 %190, label %219, label %225

219:                                              ; preds = %218
  %220 = getelementptr inbounds %struct.ipa_reference_global_vars_info_d, ptr %20, i64 0, i32 1
  %221 = load ptr, ptr %220, align 8, !tbaa !122
  %222 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %213, i64 0, i32 1
  %223 = load ptr, ptr %222, align 8, !tbaa !155
  %224 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %221, ptr noundef %223) #17
  br label %225

225:                                              ; preds = %219, %218
  tail call fastcc void @propagate_bits(ptr noundef %20, ptr noundef nonnull %204)
  %226 = getelementptr inbounds %struct.cgraph_node, ptr %204, i64 0, i32 16
  %227 = load ptr, ptr %226, align 8, !tbaa !148
  %228 = getelementptr inbounds %struct.ipa_dfs_info, ptr %227, i64 0, i32 4
  %229 = load ptr, ptr %228, align 8, !tbaa !149
  %230 = icmp eq ptr %229, null
  br i1 %230, label %231, label %203, !prof !131, !llvm.loop !156

231:                                              ; preds = %225, %198
  store ptr %20, ptr %41, align 8, !tbaa !118
  %232 = load ptr, ptr %101, align 8, !tbaa !148
  %233 = getelementptr inbounds %struct.ipa_dfs_info, ptr %232, i64 0, i32 4
  %234 = load ptr, ptr %233, align 8, !tbaa !149
  %235 = icmp eq ptr %234, null
  br i1 %235, label %284, label %236, !prof !131

236:                                              ; preds = %231, %275
  %237 = phi ptr [ %282, %275 ], [ %234, %231 ]
  %238 = load ptr, ptr @ipa_reference_vars_vector, align 8
  %239 = icmp eq ptr %238, null
  br i1 %239, label %249, label %240

240:                                              ; preds = %236
  %241 = load i32, ptr %238, align 8, !tbaa !108
  %242 = getelementptr inbounds %struct.cgraph_node, ptr %237, i64 0, i32 24
  %243 = load i32, ptr %242, align 8, !tbaa !110
  %244 = icmp ugt i32 %241, %243
  br i1 %244, label %245, label %249

245:                                              ; preds = %240
  %246 = zext i32 %243 to i64
  %247 = getelementptr inbounds %struct.VEC_ipa_reference_vars_info_t_base, ptr %238, i64 0, i32 2, i64 %246
  %248 = load ptr, ptr %247, align 8, !tbaa !89
  br label %249

249:                                              ; preds = %236, %240, %245
  %250 = phi ptr [ %248, %245 ], [ null, %240 ], [ null, %236 ]
  %251 = getelementptr inbounds %struct.ipa_reference_vars_info_d, ptr %250, i64 0, i32 1
  %252 = load ptr, ptr %251, align 8, !tbaa !118
  %253 = icmp eq ptr %252, null
  br i1 %253, label %255, label %254

254:                                              ; preds = %249
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1339, ptr noundef nonnull @.str.3) #17
  br label %255

255:                                              ; preds = %249, %254
  %256 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 32) #17
  store ptr %256, ptr %251, align 8, !tbaa !118
  %257 = load ptr, ptr %20, align 8, !tbaa !120
  %258 = icmp eq ptr %257, null
  br i1 %258, label %264, label %259

259:                                              ; preds = %255
  %260 = load ptr, ptr @all_module_statics, align 8, !tbaa !89
  %261 = icmp eq ptr %260, %257
  br i1 %261, label %264, label %262

262:                                              ; preds = %259
  %263 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @global_info_obstack) #17
  tail call void @bitmap_copy(ptr noundef %263, ptr noundef nonnull %257) #17
  br label %264

264:                                              ; preds = %255, %259, %262
  %265 = phi ptr [ %263, %262 ], [ null, %255 ], [ %260, %259 ]
  %266 = getelementptr inbounds %struct.ipa_reference_global_vars_info_d, ptr %20, i64 0, i32 1
  %267 = load ptr, ptr %251, align 8, !tbaa !118
  store ptr %265, ptr %267, align 8, !tbaa !120
  %268 = load ptr, ptr %266, align 8, !tbaa !122
  %269 = icmp eq ptr %268, null
  br i1 %269, label %275, label %270

270:                                              ; preds = %264
  %271 = load ptr, ptr @all_module_statics, align 8, !tbaa !89
  %272 = icmp eq ptr %271, %268
  br i1 %272, label %275, label %273

273:                                              ; preds = %270
  %274 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @global_info_obstack) #17
  tail call void @bitmap_copy(ptr noundef %274, ptr noundef nonnull %268) #17
  br label %275

275:                                              ; preds = %264, %270, %273
  %276 = phi ptr [ %274, %273 ], [ null, %264 ], [ %271, %270 ]
  %277 = load ptr, ptr %251, align 8, !tbaa !118
  %278 = getelementptr inbounds %struct.ipa_reference_global_vars_info_d, ptr %277, i64 0, i32 1
  store ptr %276, ptr %278, align 8, !tbaa !122
  %279 = getelementptr inbounds %struct.cgraph_node, ptr %237, i64 0, i32 16
  %280 = load ptr, ptr %279, align 8, !tbaa !148
  %281 = getelementptr inbounds %struct.ipa_dfs_info, ptr %280, i64 0, i32 4
  %282 = load ptr, ptr %281, align 8, !tbaa !149
  %283 = icmp eq ptr %282, null
  br i1 %283, label %284, label %236, !prof !131, !llvm.loop !157

284:                                              ; preds = %275, %231
  %285 = add nuw nsw i64 %19, 1
  %286 = icmp eq i64 %285, %17
  br i1 %286, label %287, label %18, !prof !158, !llvm.loop !159

287:                                              ; preds = %284, %14
  %288 = load ptr, ptr @dump_file, align 8, !tbaa !89
  %289 = icmp eq ptr %288, null
  br i1 %289, label %922, label %290, !prof !131

290:                                              ; preds = %287
  %291 = icmp sgt i32 %10, 0
  br i1 %291, label %292, label %922

292:                                              ; preds = %290
  %293 = zext nneg i32 %10 to i64
  br label %294

294:                                              ; preds = %292, %919
  %295 = phi i64 [ 0, %292 ], [ %920, %919 ]
  %296 = getelementptr inbounds ptr, ptr %3, i64 %295
  %297 = load ptr, ptr %296, align 8, !tbaa !89
  %298 = load ptr, ptr @ipa_reference_vars_vector, align 8, !nonnull !151, !noundef !151
  %299 = load i32, ptr %298, align 8, !tbaa !108
  %300 = getelementptr inbounds %struct.cgraph_node, ptr %297, i64 0, i32 24
  %301 = load i32, ptr %300, align 8, !tbaa !110
  %302 = icmp ugt i32 %299, %301
  tail call void @llvm.assume(i1 %302)
  %303 = zext i32 %301 to i64
  %304 = getelementptr inbounds %struct.VEC_ipa_reference_vars_info_t_base, ptr %298, i64 0, i32 2, i64 %303
  %305 = load ptr, ptr %304, align 8, !tbaa !89
  %306 = getelementptr inbounds %struct.ipa_reference_vars_info_d, ptr %305, i64 0, i32 1
  %307 = load ptr, ptr %306, align 8, !tbaa !118
  %308 = load ptr, ptr %305, align 8, !tbaa !135
  %309 = load ptr, ptr @dump_file, align 8, !tbaa !89
  %310 = tail call ptr @cgraph_node_name(ptr noundef %297) #17
  %311 = load i32, ptr %300, align 8, !tbaa !110
  %312 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %309, ptr noundef nonnull @.str.4, ptr noundef %310, i32 noundef %311)
  %313 = load ptr, ptr @dump_file, align 8, !tbaa !89
  %314 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 16, i64 1, ptr %313)
  %315 = load ptr, ptr %308, align 8, !tbaa !154
  %316 = icmp eq ptr %315, null
  br i1 %316, label %407, label %317

317:                                              ; preds = %294
  %318 = load ptr, ptr %315, align 8, !tbaa !160
  %319 = icmp eq ptr %318, null
  %320 = select i1 %319, ptr @bitmap_zero_bits, ptr %318
  %321 = getelementptr inbounds %struct.bitmap_element_def, ptr %320, i64 0, i32 2
  %322 = load i32, ptr %321, align 8, !tbaa !162
  %323 = shl i32 %322, 7
  %324 = getelementptr inbounds %struct.bitmap_element_def, ptr %320, i64 0, i32 3
  %325 = load i64, ptr %324, align 8, !tbaa !164
  %326 = icmp eq i64 %325, 0
  %327 = zext i1 %326 to i32
  %328 = or disjoint i32 %323, %327
  br label %329

329:                                              ; preds = %402, %317
  %330 = phi i32 [ %328, %317 ], [ %406, %402 ]
  %331 = phi i64 [ %325, %317 ], [ %405, %402 ]
  %332 = phi i32 [ 0, %317 ], [ %387, %402 ]
  %333 = phi ptr [ %320, %317 ], [ %388, %402 ]
  %334 = icmp eq i64 %331, 0
  br i1 %334, label %349, label %335

335:                                              ; preds = %363, %329
  %336 = phi i32 [ %330, %329 ], [ %365, %363 ]
  %337 = phi i64 [ %331, %329 ], [ %368, %363 ]
  %338 = phi i32 [ %332, %329 ], [ %364, %363 ]
  %339 = phi ptr [ %333, %329 ], [ %356, %363 ]
  %340 = and i64 %337, 1
  %341 = icmp eq i64 %340, 0
  br i1 %341, label %342, label %384

342:                                              ; preds = %335, %342
  %343 = phi i64 [ %345, %342 ], [ %337, %335 ]
  %344 = phi i32 [ %346, %342 ], [ %336, %335 ]
  %345 = lshr exact i64 %343, 1
  %346 = add i32 %344, 1
  %347 = and i64 %343, 2
  %348 = icmp eq i64 %347, 0
  br i1 %348, label %342, label %384, !llvm.loop !165

349:                                              ; preds = %329
  %350 = add i32 %330, 63
  %351 = and i32 %350, -64
  %352 = add i32 %332, 1
  br label %353

353:                                              ; preds = %380, %349
  %354 = phi i32 [ %351, %349 ], [ %383, %380 ]
  %355 = phi i64 [ %331, %349 ], [ %376, %380 ]
  %356 = phi ptr [ %333, %349 ], [ %378, %380 ]
  %357 = phi i32 [ %352, %349 ], [ 0, %380 ]
  %358 = icmp eq i32 %357, 2
  br i1 %358, label %374, label %359

359:                                              ; preds = %353
  %360 = add i32 %354, 128
  %361 = shl i32 %357, 6
  %362 = sub i32 %360, %361
  br label %363

363:                                              ; preds = %359, %370
  %364 = phi i32 [ %372, %370 ], [ %357, %359 ]
  %365 = phi i32 [ %371, %370 ], [ %354, %359 ]
  %366 = zext i32 %364 to i64
  %367 = getelementptr inbounds %struct.bitmap_element_def, ptr %356, i64 0, i32 3, i64 %366
  %368 = load i64, ptr %367, align 8, !tbaa !164
  %369 = icmp eq i64 %368, 0
  br i1 %369, label %370, label %335

370:                                              ; preds = %363
  %371 = add i32 %365, 64
  %372 = add i32 %364, 1
  %373 = icmp eq i32 %372, 2
  br i1 %373, label %374, label %363, !llvm.loop !166

374:                                              ; preds = %370, %353
  %375 = phi i32 [ %354, %353 ], [ %362, %370 ]
  %376 = phi i64 [ %355, %353 ], [ %368, %370 ]
  %377 = phi i32 [ %357, %353 ], [ 2, %370 ]
  %378 = load ptr, ptr %356, align 8, !tbaa !167
  %379 = icmp eq ptr %378, null
  br i1 %379, label %384, label %380

380:                                              ; preds = %374
  %381 = getelementptr inbounds %struct.bitmap_element_def, ptr %378, i64 0, i32 2
  %382 = load i32, ptr %381, align 8, !tbaa !162
  %383 = shl i32 %382, 7
  br label %353, !llvm.loop !168

384:                                              ; preds = %374, %342, %335
  %385 = phi i32 [ %336, %335 ], [ %346, %342 ], [ %375, %374 ]
  %386 = phi i64 [ %337, %335 ], [ %345, %342 ], [ %376, %374 ]
  %387 = phi i32 [ %338, %335 ], [ %338, %342 ], [ %377, %374 ]
  %388 = phi ptr [ %339, %335 ], [ %339, %342 ], [ %378, %374 ]
  %389 = phi i1 [ false, %335 ], [ false, %342 ], [ true, %374 ]
  br i1 %389, label %407, label %390

390:                                              ; preds = %384
  %391 = load ptr, ptr @dump_file, align 8, !tbaa !89
  %392 = load ptr, ptr @reference_vars_to_consider, align 8, !tbaa !89
  %393 = sext i32 %385 to i64
  %394 = tail call ptr @splay_tree_lookup(ptr noundef %392, i64 noundef %393) #17
  %395 = icmp eq ptr %394, null
  br i1 %395, label %402, label %396

396:                                              ; preds = %390
  %397 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 22), align 8, !tbaa !169
  %398 = getelementptr inbounds %struct.splay_tree_node_s, ptr %394, i64 0, i32 1
  %399 = load i64, ptr %398, align 8, !tbaa !177
  %400 = inttoptr i64 %399 to ptr
  %401 = tail call ptr %397(ptr noundef %400, i32 noundef 2) #17
  br label %402

402:                                              ; preds = %390, %396
  %403 = phi ptr [ %401, %396 ], [ null, %390 ]
  %404 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %391, ptr noundef nonnull @.str.6, ptr noundef %403)
  %405 = lshr i64 %386, 1
  %406 = add i32 %385, 1
  br label %329, !llvm.loop !179

407:                                              ; preds = %384, %294
  %408 = load ptr, ptr @dump_file, align 8, !tbaa !89
  %409 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 19, i64 1, ptr %408)
  %410 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %308, i64 0, i32 1
  %411 = load ptr, ptr %410, align 8, !tbaa !155
  %412 = icmp eq ptr %411, null
  br i1 %412, label %503, label %413

413:                                              ; preds = %407
  %414 = load ptr, ptr %411, align 8, !tbaa !160
  %415 = icmp eq ptr %414, null
  %416 = select i1 %415, ptr @bitmap_zero_bits, ptr %414
  %417 = getelementptr inbounds %struct.bitmap_element_def, ptr %416, i64 0, i32 2
  %418 = load i32, ptr %417, align 8, !tbaa !162
  %419 = shl i32 %418, 7
  %420 = getelementptr inbounds %struct.bitmap_element_def, ptr %416, i64 0, i32 3
  %421 = load i64, ptr %420, align 8, !tbaa !164
  %422 = icmp eq i64 %421, 0
  %423 = zext i1 %422 to i32
  %424 = or disjoint i32 %419, %423
  br label %425

425:                                              ; preds = %498, %413
  %426 = phi i32 [ %424, %413 ], [ %502, %498 ]
  %427 = phi i64 [ %421, %413 ], [ %501, %498 ]
  %428 = phi i32 [ 0, %413 ], [ %483, %498 ]
  %429 = phi ptr [ %416, %413 ], [ %484, %498 ]
  %430 = icmp eq i64 %427, 0
  br i1 %430, label %445, label %431

431:                                              ; preds = %459, %425
  %432 = phi i32 [ %426, %425 ], [ %461, %459 ]
  %433 = phi i64 [ %427, %425 ], [ %464, %459 ]
  %434 = phi i32 [ %428, %425 ], [ %460, %459 ]
  %435 = phi ptr [ %429, %425 ], [ %452, %459 ]
  %436 = and i64 %433, 1
  %437 = icmp eq i64 %436, 0
  br i1 %437, label %438, label %480

438:                                              ; preds = %431, %438
  %439 = phi i64 [ %441, %438 ], [ %433, %431 ]
  %440 = phi i32 [ %442, %438 ], [ %432, %431 ]
  %441 = lshr exact i64 %439, 1
  %442 = add i32 %440, 1
  %443 = and i64 %439, 2
  %444 = icmp eq i64 %443, 0
  br i1 %444, label %438, label %480, !llvm.loop !165

445:                                              ; preds = %425
  %446 = add i32 %426, 63
  %447 = and i32 %446, -64
  %448 = add i32 %428, 1
  br label %449

449:                                              ; preds = %476, %445
  %450 = phi i32 [ %447, %445 ], [ %479, %476 ]
  %451 = phi i64 [ %427, %445 ], [ %472, %476 ]
  %452 = phi ptr [ %429, %445 ], [ %474, %476 ]
  %453 = phi i32 [ %448, %445 ], [ 0, %476 ]
  %454 = icmp eq i32 %453, 2
  br i1 %454, label %470, label %455

455:                                              ; preds = %449
  %456 = add i32 %450, 128
  %457 = shl i32 %453, 6
  %458 = sub i32 %456, %457
  br label %459

459:                                              ; preds = %455, %466
  %460 = phi i32 [ %468, %466 ], [ %453, %455 ]
  %461 = phi i32 [ %467, %466 ], [ %450, %455 ]
  %462 = zext i32 %460 to i64
  %463 = getelementptr inbounds %struct.bitmap_element_def, ptr %452, i64 0, i32 3, i64 %462
  %464 = load i64, ptr %463, align 8, !tbaa !164
  %465 = icmp eq i64 %464, 0
  br i1 %465, label %466, label %431

466:                                              ; preds = %459
  %467 = add i32 %461, 64
  %468 = add i32 %460, 1
  %469 = icmp eq i32 %468, 2
  br i1 %469, label %470, label %459, !llvm.loop !166

470:                                              ; preds = %466, %449
  %471 = phi i32 [ %450, %449 ], [ %458, %466 ]
  %472 = phi i64 [ %451, %449 ], [ %464, %466 ]
  %473 = phi i32 [ %453, %449 ], [ 2, %466 ]
  %474 = load ptr, ptr %452, align 8, !tbaa !167
  %475 = icmp eq ptr %474, null
  br i1 %475, label %480, label %476

476:                                              ; preds = %470
  %477 = getelementptr inbounds %struct.bitmap_element_def, ptr %474, i64 0, i32 2
  %478 = load i32, ptr %477, align 8, !tbaa !162
  %479 = shl i32 %478, 7
  br label %449, !llvm.loop !168

480:                                              ; preds = %470, %438, %431
  %481 = phi i32 [ %432, %431 ], [ %442, %438 ], [ %471, %470 ]
  %482 = phi i64 [ %433, %431 ], [ %441, %438 ], [ %472, %470 ]
  %483 = phi i32 [ %434, %431 ], [ %434, %438 ], [ %473, %470 ]
  %484 = phi ptr [ %435, %431 ], [ %435, %438 ], [ %474, %470 ]
  %485 = phi i1 [ false, %431 ], [ false, %438 ], [ true, %470 ]
  br i1 %485, label %503, label %486

486:                                              ; preds = %480
  %487 = load ptr, ptr @dump_file, align 8, !tbaa !89
  %488 = load ptr, ptr @reference_vars_to_consider, align 8, !tbaa !89
  %489 = sext i32 %481 to i64
  %490 = tail call ptr @splay_tree_lookup(ptr noundef %488, i64 noundef %489) #17
  %491 = icmp eq ptr %490, null
  br i1 %491, label %498, label %492

492:                                              ; preds = %486
  %493 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 22), align 8, !tbaa !169
  %494 = getelementptr inbounds %struct.splay_tree_node_s, ptr %490, i64 0, i32 1
  %495 = load i64, ptr %494, align 8, !tbaa !177
  %496 = inttoptr i64 %495 to ptr
  %497 = tail call ptr %493(ptr noundef %496, i32 noundef 2) #17
  br label %498

498:                                              ; preds = %486, %492
  %499 = phi ptr [ %497, %492 ], [ null, %486 ]
  %500 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %487, ptr noundef nonnull @.str.6, ptr noundef %499)
  %501 = lshr i64 %482, 1
  %502 = add i32 %481, 1
  br label %425, !llvm.loop !180

503:                                              ; preds = %480, %407
  %504 = getelementptr inbounds %struct.cgraph_node, ptr %297, i64 0, i32 16
  %505 = load ptr, ptr %504, align 8, !tbaa !148
  %506 = getelementptr inbounds %struct.ipa_dfs_info, ptr %505, i64 0, i32 4
  %507 = load ptr, ptr %506, align 8, !tbaa !149
  %508 = icmp eq ptr %507, null
  br i1 %508, label %720, label %509

509:                                              ; preds = %503, %714
  %510 = phi ptr [ %718, %714 ], [ %507, %503 ]
  %511 = load ptr, ptr @ipa_reference_vars_vector, align 8, !nonnull !151, !noundef !151
  %512 = load i32, ptr %511, align 8, !tbaa !108
  %513 = getelementptr inbounds %struct.cgraph_node, ptr %510, i64 0, i32 24
  %514 = load i32, ptr %513, align 8, !tbaa !110
  %515 = icmp ugt i32 %512, %514
  tail call void @llvm.assume(i1 %515)
  %516 = zext i32 %514 to i64
  %517 = getelementptr inbounds %struct.VEC_ipa_reference_vars_info_t_base, ptr %511, i64 0, i32 2, i64 %516
  %518 = load ptr, ptr %517, align 8, !tbaa !89
  %519 = load ptr, ptr %518, align 8, !tbaa !135
  %520 = load ptr, ptr @dump_file, align 8, !tbaa !89
  %521 = tail call ptr @cgraph_node_name(ptr noundef nonnull %510) #17
  %522 = load i32, ptr %513, align 8, !tbaa !110
  %523 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %520, ptr noundef nonnull @.str.8, ptr noundef %521, i32 noundef %522)
  %524 = load ptr, ptr @dump_file, align 8, !tbaa !89
  %525 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 18, i64 1, ptr %524)
  %526 = load ptr, ptr %519, align 8, !tbaa !154
  %527 = icmp eq ptr %526, null
  br i1 %527, label %618, label %528

528:                                              ; preds = %509
  %529 = load ptr, ptr %526, align 8, !tbaa !160
  %530 = icmp eq ptr %529, null
  %531 = select i1 %530, ptr @bitmap_zero_bits, ptr %529
  %532 = getelementptr inbounds %struct.bitmap_element_def, ptr %531, i64 0, i32 2
  %533 = load i32, ptr %532, align 8, !tbaa !162
  %534 = shl i32 %533, 7
  %535 = getelementptr inbounds %struct.bitmap_element_def, ptr %531, i64 0, i32 3
  %536 = load i64, ptr %535, align 8, !tbaa !164
  %537 = icmp eq i64 %536, 0
  %538 = zext i1 %537 to i32
  %539 = or disjoint i32 %534, %538
  br label %540

540:                                              ; preds = %613, %528
  %541 = phi i32 [ %539, %528 ], [ %617, %613 ]
  %542 = phi i64 [ %536, %528 ], [ %616, %613 ]
  %543 = phi i32 [ 0, %528 ], [ %598, %613 ]
  %544 = phi ptr [ %531, %528 ], [ %599, %613 ]
  %545 = icmp eq i64 %542, 0
  br i1 %545, label %560, label %546

546:                                              ; preds = %574, %540
  %547 = phi i32 [ %541, %540 ], [ %576, %574 ]
  %548 = phi i64 [ %542, %540 ], [ %579, %574 ]
  %549 = phi i32 [ %543, %540 ], [ %575, %574 ]
  %550 = phi ptr [ %544, %540 ], [ %567, %574 ]
  %551 = and i64 %548, 1
  %552 = icmp eq i64 %551, 0
  br i1 %552, label %553, label %595

553:                                              ; preds = %546, %553
  %554 = phi i64 [ %556, %553 ], [ %548, %546 ]
  %555 = phi i32 [ %557, %553 ], [ %547, %546 ]
  %556 = lshr exact i64 %554, 1
  %557 = add i32 %555, 1
  %558 = and i64 %554, 2
  %559 = icmp eq i64 %558, 0
  br i1 %559, label %553, label %595, !llvm.loop !165

560:                                              ; preds = %540
  %561 = add i32 %541, 63
  %562 = and i32 %561, -64
  %563 = add i32 %543, 1
  br label %564

564:                                              ; preds = %591, %560
  %565 = phi i32 [ %562, %560 ], [ %594, %591 ]
  %566 = phi i64 [ %542, %560 ], [ %587, %591 ]
  %567 = phi ptr [ %544, %560 ], [ %589, %591 ]
  %568 = phi i32 [ %563, %560 ], [ 0, %591 ]
  %569 = icmp eq i32 %568, 2
  br i1 %569, label %585, label %570

570:                                              ; preds = %564
  %571 = add i32 %565, 128
  %572 = shl i32 %568, 6
  %573 = sub i32 %571, %572
  br label %574

574:                                              ; preds = %570, %581
  %575 = phi i32 [ %583, %581 ], [ %568, %570 ]
  %576 = phi i32 [ %582, %581 ], [ %565, %570 ]
  %577 = zext i32 %575 to i64
  %578 = getelementptr inbounds %struct.bitmap_element_def, ptr %567, i64 0, i32 3, i64 %577
  %579 = load i64, ptr %578, align 8, !tbaa !164
  %580 = icmp eq i64 %579, 0
  br i1 %580, label %581, label %546

581:                                              ; preds = %574
  %582 = add i32 %576, 64
  %583 = add i32 %575, 1
  %584 = icmp eq i32 %583, 2
  br i1 %584, label %585, label %574, !llvm.loop !166

585:                                              ; preds = %581, %564
  %586 = phi i32 [ %565, %564 ], [ %573, %581 ]
  %587 = phi i64 [ %566, %564 ], [ %579, %581 ]
  %588 = phi i32 [ %568, %564 ], [ 2, %581 ]
  %589 = load ptr, ptr %567, align 8, !tbaa !167
  %590 = icmp eq ptr %589, null
  br i1 %590, label %595, label %591

591:                                              ; preds = %585
  %592 = getelementptr inbounds %struct.bitmap_element_def, ptr %589, i64 0, i32 2
  %593 = load i32, ptr %592, align 8, !tbaa !162
  %594 = shl i32 %593, 7
  br label %564, !llvm.loop !168

595:                                              ; preds = %585, %553, %546
  %596 = phi i32 [ %547, %546 ], [ %557, %553 ], [ %586, %585 ]
  %597 = phi i64 [ %548, %546 ], [ %556, %553 ], [ %587, %585 ]
  %598 = phi i32 [ %549, %546 ], [ %549, %553 ], [ %588, %585 ]
  %599 = phi ptr [ %550, %546 ], [ %550, %553 ], [ %589, %585 ]
  %600 = phi i1 [ false, %546 ], [ false, %553 ], [ true, %585 ]
  br i1 %600, label %618, label %601

601:                                              ; preds = %595
  %602 = load ptr, ptr @dump_file, align 8, !tbaa !89
  %603 = load ptr, ptr @reference_vars_to_consider, align 8, !tbaa !89
  %604 = sext i32 %596 to i64
  %605 = tail call ptr @splay_tree_lookup(ptr noundef %603, i64 noundef %604) #17
  %606 = icmp eq ptr %605, null
  br i1 %606, label %613, label %607

607:                                              ; preds = %601
  %608 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 22), align 8, !tbaa !169
  %609 = getelementptr inbounds %struct.splay_tree_node_s, ptr %605, i64 0, i32 1
  %610 = load i64, ptr %609, align 8, !tbaa !177
  %611 = inttoptr i64 %610 to ptr
  %612 = tail call ptr %608(ptr noundef %611, i32 noundef 2) #17
  br label %613

613:                                              ; preds = %601, %607
  %614 = phi ptr [ %612, %607 ], [ null, %601 ]
  %615 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %602, ptr noundef nonnull @.str.6, ptr noundef %614)
  %616 = lshr i64 %597, 1
  %617 = add i32 %596, 1
  br label %540, !llvm.loop !181

618:                                              ; preds = %595, %509
  %619 = load ptr, ptr @dump_file, align 8, !tbaa !89
  %620 = tail call i64 @fwrite(ptr nonnull @.str.10, i64 21, i64 1, ptr %619)
  %621 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %519, i64 0, i32 1
  %622 = load ptr, ptr %621, align 8, !tbaa !155
  %623 = icmp eq ptr %622, null
  br i1 %623, label %714, label %624

624:                                              ; preds = %618
  %625 = load ptr, ptr %622, align 8, !tbaa !160
  %626 = icmp eq ptr %625, null
  %627 = select i1 %626, ptr @bitmap_zero_bits, ptr %625
  %628 = getelementptr inbounds %struct.bitmap_element_def, ptr %627, i64 0, i32 2
  %629 = load i32, ptr %628, align 8, !tbaa !162
  %630 = shl i32 %629, 7
  %631 = getelementptr inbounds %struct.bitmap_element_def, ptr %627, i64 0, i32 3
  %632 = load i64, ptr %631, align 8, !tbaa !164
  %633 = icmp eq i64 %632, 0
  %634 = zext i1 %633 to i32
  %635 = or disjoint i32 %630, %634
  br label %636

636:                                              ; preds = %709, %624
  %637 = phi i32 [ %635, %624 ], [ %713, %709 ]
  %638 = phi i64 [ %632, %624 ], [ %712, %709 ]
  %639 = phi i32 [ 0, %624 ], [ %694, %709 ]
  %640 = phi ptr [ %627, %624 ], [ %695, %709 ]
  %641 = icmp eq i64 %638, 0
  br i1 %641, label %656, label %642

642:                                              ; preds = %670, %636
  %643 = phi i32 [ %637, %636 ], [ %672, %670 ]
  %644 = phi i64 [ %638, %636 ], [ %675, %670 ]
  %645 = phi i32 [ %639, %636 ], [ %671, %670 ]
  %646 = phi ptr [ %640, %636 ], [ %663, %670 ]
  %647 = and i64 %644, 1
  %648 = icmp eq i64 %647, 0
  br i1 %648, label %649, label %691

649:                                              ; preds = %642, %649
  %650 = phi i64 [ %652, %649 ], [ %644, %642 ]
  %651 = phi i32 [ %653, %649 ], [ %643, %642 ]
  %652 = lshr exact i64 %650, 1
  %653 = add i32 %651, 1
  %654 = and i64 %650, 2
  %655 = icmp eq i64 %654, 0
  br i1 %655, label %649, label %691, !llvm.loop !165

656:                                              ; preds = %636
  %657 = add i32 %637, 63
  %658 = and i32 %657, -64
  %659 = add i32 %639, 1
  br label %660

660:                                              ; preds = %687, %656
  %661 = phi i32 [ %658, %656 ], [ %690, %687 ]
  %662 = phi i64 [ %638, %656 ], [ %683, %687 ]
  %663 = phi ptr [ %640, %656 ], [ %685, %687 ]
  %664 = phi i32 [ %659, %656 ], [ 0, %687 ]
  %665 = icmp eq i32 %664, 2
  br i1 %665, label %681, label %666

666:                                              ; preds = %660
  %667 = add i32 %661, 128
  %668 = shl i32 %664, 6
  %669 = sub i32 %667, %668
  br label %670

670:                                              ; preds = %666, %677
  %671 = phi i32 [ %679, %677 ], [ %664, %666 ]
  %672 = phi i32 [ %678, %677 ], [ %661, %666 ]
  %673 = zext i32 %671 to i64
  %674 = getelementptr inbounds %struct.bitmap_element_def, ptr %663, i64 0, i32 3, i64 %673
  %675 = load i64, ptr %674, align 8, !tbaa !164
  %676 = icmp eq i64 %675, 0
  br i1 %676, label %677, label %642

677:                                              ; preds = %670
  %678 = add i32 %672, 64
  %679 = add i32 %671, 1
  %680 = icmp eq i32 %679, 2
  br i1 %680, label %681, label %670, !llvm.loop !166

681:                                              ; preds = %677, %660
  %682 = phi i32 [ %661, %660 ], [ %669, %677 ]
  %683 = phi i64 [ %662, %660 ], [ %675, %677 ]
  %684 = phi i32 [ %664, %660 ], [ 2, %677 ]
  %685 = load ptr, ptr %663, align 8, !tbaa !167
  %686 = icmp eq ptr %685, null
  br i1 %686, label %691, label %687

687:                                              ; preds = %681
  %688 = getelementptr inbounds %struct.bitmap_element_def, ptr %685, i64 0, i32 2
  %689 = load i32, ptr %688, align 8, !tbaa !162
  %690 = shl i32 %689, 7
  br label %660, !llvm.loop !168

691:                                              ; preds = %681, %649, %642
  %692 = phi i32 [ %643, %642 ], [ %653, %649 ], [ %682, %681 ]
  %693 = phi i64 [ %644, %642 ], [ %652, %649 ], [ %683, %681 ]
  %694 = phi i32 [ %645, %642 ], [ %645, %649 ], [ %684, %681 ]
  %695 = phi ptr [ %646, %642 ], [ %646, %649 ], [ %685, %681 ]
  %696 = phi i1 [ false, %642 ], [ false, %649 ], [ true, %681 ]
  br i1 %696, label %714, label %697

697:                                              ; preds = %691
  %698 = load ptr, ptr @dump_file, align 8, !tbaa !89
  %699 = load ptr, ptr @reference_vars_to_consider, align 8, !tbaa !89
  %700 = sext i32 %692 to i64
  %701 = tail call ptr @splay_tree_lookup(ptr noundef %699, i64 noundef %700) #17
  %702 = icmp eq ptr %701, null
  br i1 %702, label %709, label %703

703:                                              ; preds = %697
  %704 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 22), align 8, !tbaa !169
  %705 = getelementptr inbounds %struct.splay_tree_node_s, ptr %701, i64 0, i32 1
  %706 = load i64, ptr %705, align 8, !tbaa !177
  %707 = inttoptr i64 %706 to ptr
  %708 = tail call ptr %704(ptr noundef %707, i32 noundef 2) #17
  br label %709

709:                                              ; preds = %697, %703
  %710 = phi ptr [ %708, %703 ], [ null, %697 ]
  %711 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %698, ptr noundef nonnull @.str.6, ptr noundef %710)
  %712 = lshr i64 %693, 1
  %713 = add i32 %692, 1
  br label %636, !llvm.loop !182

714:                                              ; preds = %691, %618
  %715 = getelementptr inbounds %struct.cgraph_node, ptr %510, i64 0, i32 16
  %716 = load ptr, ptr %715, align 8, !tbaa !148
  %717 = getelementptr inbounds %struct.ipa_dfs_info, ptr %716, i64 0, i32 4
  %718 = load ptr, ptr %717, align 8, !tbaa !149
  %719 = icmp eq ptr %718, null
  br i1 %719, label %720, label %509, !llvm.loop !183

720:                                              ; preds = %714, %503
  %721 = load ptr, ptr @dump_file, align 8, !tbaa !89
  %722 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 17, i64 1, ptr %721)
  %723 = load ptr, ptr %307, align 8, !tbaa !120
  %724 = load ptr, ptr @all_module_statics, align 8, !tbaa !89
  %725 = icmp eq ptr %723, %724
  br i1 %725, label %726, label %729

726:                                              ; preds = %720
  %727 = load ptr, ptr @dump_file, align 8, !tbaa !89
  %728 = tail call i64 @fwrite(ptr nonnull @.str.12, i64 3, i64 1, ptr %727)
  br label %819

729:                                              ; preds = %720
  %730 = load ptr, ptr %723, align 8, !tbaa !160
  %731 = icmp eq ptr %730, null
  %732 = select i1 %731, ptr @bitmap_zero_bits, ptr %730
  %733 = getelementptr inbounds %struct.bitmap_element_def, ptr %732, i64 0, i32 2
  %734 = load i32, ptr %733, align 8, !tbaa !162
  %735 = shl i32 %734, 7
  %736 = getelementptr inbounds %struct.bitmap_element_def, ptr %732, i64 0, i32 3
  %737 = load i64, ptr %736, align 8, !tbaa !164
  %738 = icmp eq i64 %737, 0
  %739 = zext i1 %738 to i32
  %740 = or disjoint i32 %735, %739
  br label %741

741:                                              ; preds = %814, %729
  %742 = phi i32 [ %740, %729 ], [ %818, %814 ]
  %743 = phi i64 [ %737, %729 ], [ %817, %814 ]
  %744 = phi i32 [ 0, %729 ], [ %799, %814 ]
  %745 = phi ptr [ %732, %729 ], [ %800, %814 ]
  %746 = icmp eq i64 %743, 0
  br i1 %746, label %761, label %747

747:                                              ; preds = %775, %741
  %748 = phi i32 [ %742, %741 ], [ %777, %775 ]
  %749 = phi i64 [ %743, %741 ], [ %780, %775 ]
  %750 = phi i32 [ %744, %741 ], [ %776, %775 ]
  %751 = phi ptr [ %745, %741 ], [ %768, %775 ]
  %752 = and i64 %749, 1
  %753 = icmp eq i64 %752, 0
  br i1 %753, label %754, label %796

754:                                              ; preds = %747, %754
  %755 = phi i64 [ %757, %754 ], [ %749, %747 ]
  %756 = phi i32 [ %758, %754 ], [ %748, %747 ]
  %757 = lshr exact i64 %755, 1
  %758 = add i32 %756, 1
  %759 = and i64 %755, 2
  %760 = icmp eq i64 %759, 0
  br i1 %760, label %754, label %796, !llvm.loop !165

761:                                              ; preds = %741
  %762 = add i32 %742, 63
  %763 = and i32 %762, -64
  %764 = add i32 %744, 1
  br label %765

765:                                              ; preds = %792, %761
  %766 = phi i32 [ %763, %761 ], [ %795, %792 ]
  %767 = phi i64 [ %743, %761 ], [ %788, %792 ]
  %768 = phi ptr [ %745, %761 ], [ %790, %792 ]
  %769 = phi i32 [ %764, %761 ], [ 0, %792 ]
  %770 = icmp eq i32 %769, 2
  br i1 %770, label %786, label %771

771:                                              ; preds = %765
  %772 = add i32 %766, 128
  %773 = shl i32 %769, 6
  %774 = sub i32 %772, %773
  br label %775

775:                                              ; preds = %771, %782
  %776 = phi i32 [ %784, %782 ], [ %769, %771 ]
  %777 = phi i32 [ %783, %782 ], [ %766, %771 ]
  %778 = zext i32 %776 to i64
  %779 = getelementptr inbounds %struct.bitmap_element_def, ptr %768, i64 0, i32 3, i64 %778
  %780 = load i64, ptr %779, align 8, !tbaa !164
  %781 = icmp eq i64 %780, 0
  br i1 %781, label %782, label %747

782:                                              ; preds = %775
  %783 = add i32 %777, 64
  %784 = add i32 %776, 1
  %785 = icmp eq i32 %784, 2
  br i1 %785, label %786, label %775, !llvm.loop !166

786:                                              ; preds = %782, %765
  %787 = phi i32 [ %766, %765 ], [ %774, %782 ]
  %788 = phi i64 [ %767, %765 ], [ %780, %782 ]
  %789 = phi i32 [ %769, %765 ], [ 2, %782 ]
  %790 = load ptr, ptr %768, align 8, !tbaa !167
  %791 = icmp eq ptr %790, null
  br i1 %791, label %796, label %792

792:                                              ; preds = %786
  %793 = getelementptr inbounds %struct.bitmap_element_def, ptr %790, i64 0, i32 2
  %794 = load i32, ptr %793, align 8, !tbaa !162
  %795 = shl i32 %794, 7
  br label %765, !llvm.loop !168

796:                                              ; preds = %786, %754, %747
  %797 = phi i32 [ %748, %747 ], [ %758, %754 ], [ %787, %786 ]
  %798 = phi i64 [ %749, %747 ], [ %757, %754 ], [ %788, %786 ]
  %799 = phi i32 [ %750, %747 ], [ %750, %754 ], [ %789, %786 ]
  %800 = phi ptr [ %751, %747 ], [ %751, %754 ], [ %790, %786 ]
  %801 = phi i1 [ false, %747 ], [ false, %754 ], [ true, %786 ]
  br i1 %801, label %819, label %802

802:                                              ; preds = %796
  %803 = load ptr, ptr @dump_file, align 8, !tbaa !89
  %804 = load ptr, ptr @reference_vars_to_consider, align 8, !tbaa !89
  %805 = sext i32 %797 to i64
  %806 = tail call ptr @splay_tree_lookup(ptr noundef %804, i64 noundef %805) #17
  %807 = icmp eq ptr %806, null
  br i1 %807, label %814, label %808

808:                                              ; preds = %802
  %809 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 22), align 8, !tbaa !169
  %810 = getelementptr inbounds %struct.splay_tree_node_s, ptr %806, i64 0, i32 1
  %811 = load i64, ptr %810, align 8, !tbaa !177
  %812 = inttoptr i64 %811 to ptr
  %813 = tail call ptr %809(ptr noundef %812, i32 noundef 2) #17
  br label %814

814:                                              ; preds = %802, %808
  %815 = phi ptr [ %813, %808 ], [ null, %802 ]
  %816 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %803, ptr noundef nonnull @.str.6, ptr noundef %815)
  %817 = lshr i64 %798, 1
  %818 = add i32 %797, 1
  br label %741, !llvm.loop !184

819:                                              ; preds = %796, %726
  %820 = load ptr, ptr @dump_file, align 8, !tbaa !89
  %821 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 20, i64 1, ptr %820)
  %822 = getelementptr inbounds %struct.ipa_reference_global_vars_info_d, ptr %307, i64 0, i32 1
  %823 = load ptr, ptr %822, align 8, !tbaa !122
  %824 = load ptr, ptr @all_module_statics, align 8, !tbaa !89
  %825 = icmp eq ptr %823, %824
  br i1 %825, label %826, label %829

826:                                              ; preds = %819
  %827 = load ptr, ptr @dump_file, align 8, !tbaa !89
  %828 = tail call i64 @fwrite(ptr nonnull @.str.12, i64 3, i64 1, ptr %827)
  br label %919

829:                                              ; preds = %819
  %830 = load ptr, ptr %823, align 8, !tbaa !160
  %831 = icmp eq ptr %830, null
  %832 = select i1 %831, ptr @bitmap_zero_bits, ptr %830
  %833 = getelementptr inbounds %struct.bitmap_element_def, ptr %832, i64 0, i32 2
  %834 = load i32, ptr %833, align 8, !tbaa !162
  %835 = shl i32 %834, 7
  %836 = getelementptr inbounds %struct.bitmap_element_def, ptr %832, i64 0, i32 3
  %837 = load i64, ptr %836, align 8, !tbaa !164
  %838 = icmp eq i64 %837, 0
  %839 = zext i1 %838 to i32
  %840 = or disjoint i32 %835, %839
  br label %841

841:                                              ; preds = %914, %829
  %842 = phi i32 [ %840, %829 ], [ %918, %914 ]
  %843 = phi i64 [ %837, %829 ], [ %917, %914 ]
  %844 = phi i32 [ 0, %829 ], [ %899, %914 ]
  %845 = phi ptr [ %832, %829 ], [ %900, %914 ]
  %846 = icmp eq i64 %843, 0
  br i1 %846, label %861, label %847

847:                                              ; preds = %875, %841
  %848 = phi i32 [ %842, %841 ], [ %877, %875 ]
  %849 = phi i64 [ %843, %841 ], [ %880, %875 ]
  %850 = phi i32 [ %844, %841 ], [ %876, %875 ]
  %851 = phi ptr [ %845, %841 ], [ %868, %875 ]
  %852 = and i64 %849, 1
  %853 = icmp eq i64 %852, 0
  br i1 %853, label %854, label %896

854:                                              ; preds = %847, %854
  %855 = phi i64 [ %857, %854 ], [ %849, %847 ]
  %856 = phi i32 [ %858, %854 ], [ %848, %847 ]
  %857 = lshr exact i64 %855, 1
  %858 = add i32 %856, 1
  %859 = and i64 %855, 2
  %860 = icmp eq i64 %859, 0
  br i1 %860, label %854, label %896, !llvm.loop !165

861:                                              ; preds = %841
  %862 = add i32 %842, 63
  %863 = and i32 %862, -64
  %864 = add i32 %844, 1
  br label %865

865:                                              ; preds = %892, %861
  %866 = phi i32 [ %863, %861 ], [ %895, %892 ]
  %867 = phi i64 [ %843, %861 ], [ %888, %892 ]
  %868 = phi ptr [ %845, %861 ], [ %890, %892 ]
  %869 = phi i32 [ %864, %861 ], [ 0, %892 ]
  %870 = icmp eq i32 %869, 2
  br i1 %870, label %886, label %871

871:                                              ; preds = %865
  %872 = add i32 %866, 128
  %873 = shl i32 %869, 6
  %874 = sub i32 %872, %873
  br label %875

875:                                              ; preds = %871, %882
  %876 = phi i32 [ %884, %882 ], [ %869, %871 ]
  %877 = phi i32 [ %883, %882 ], [ %866, %871 ]
  %878 = zext i32 %876 to i64
  %879 = getelementptr inbounds %struct.bitmap_element_def, ptr %868, i64 0, i32 3, i64 %878
  %880 = load i64, ptr %879, align 8, !tbaa !164
  %881 = icmp eq i64 %880, 0
  br i1 %881, label %882, label %847

882:                                              ; preds = %875
  %883 = add i32 %877, 64
  %884 = add i32 %876, 1
  %885 = icmp eq i32 %884, 2
  br i1 %885, label %886, label %875, !llvm.loop !166

886:                                              ; preds = %882, %865
  %887 = phi i32 [ %866, %865 ], [ %874, %882 ]
  %888 = phi i64 [ %867, %865 ], [ %880, %882 ]
  %889 = phi i32 [ %869, %865 ], [ 2, %882 ]
  %890 = load ptr, ptr %868, align 8, !tbaa !167
  %891 = icmp eq ptr %890, null
  br i1 %891, label %896, label %892

892:                                              ; preds = %886
  %893 = getelementptr inbounds %struct.bitmap_element_def, ptr %890, i64 0, i32 2
  %894 = load i32, ptr %893, align 8, !tbaa !162
  %895 = shl i32 %894, 7
  br label %865, !llvm.loop !168

896:                                              ; preds = %886, %854, %847
  %897 = phi i32 [ %848, %847 ], [ %858, %854 ], [ %887, %886 ]
  %898 = phi i64 [ %849, %847 ], [ %857, %854 ], [ %888, %886 ]
  %899 = phi i32 [ %850, %847 ], [ %850, %854 ], [ %889, %886 ]
  %900 = phi ptr [ %851, %847 ], [ %851, %854 ], [ %890, %886 ]
  %901 = phi i1 [ false, %847 ], [ false, %854 ], [ true, %886 ]
  br i1 %901, label %919, label %902

902:                                              ; preds = %896
  %903 = load ptr, ptr @dump_file, align 8, !tbaa !89
  %904 = load ptr, ptr @reference_vars_to_consider, align 8, !tbaa !89
  %905 = sext i32 %897 to i64
  %906 = tail call ptr @splay_tree_lookup(ptr noundef %904, i64 noundef %905) #17
  %907 = icmp eq ptr %906, null
  br i1 %907, label %914, label %908

908:                                              ; preds = %902
  %909 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 22), align 8, !tbaa !169
  %910 = getelementptr inbounds %struct.splay_tree_node_s, ptr %906, i64 0, i32 1
  %911 = load i64, ptr %910, align 8, !tbaa !177
  %912 = inttoptr i64 %911 to ptr
  %913 = tail call ptr %909(ptr noundef %912, i32 noundef 2) #17
  br label %914

914:                                              ; preds = %902, %908
  %915 = phi ptr [ %913, %908 ], [ null, %902 ]
  %916 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %903, ptr noundef nonnull @.str.6, ptr noundef %915)
  %917 = lshr i64 %898, 1
  %918 = add i32 %897, 1
  br label %841, !llvm.loop !185

919:                                              ; preds = %896, %826
  %920 = add nuw nsw i64 %295, 1
  %921 = icmp eq i64 %920, %293
  br i1 %921, label %922, label %294, !llvm.loop !186

922:                                              ; preds = %919, %290, %287
  %923 = icmp sgt i32 %10, 0
  br i1 %923, label %924, label %961, !prof !132

924:                                              ; preds = %922
  %925 = zext nneg i32 %10 to i64
  br label %926

926:                                              ; preds = %924, %958
  %927 = phi i64 [ 0, %924 ], [ %959, %958 ]
  %928 = getelementptr inbounds ptr, ptr %3, i64 %927
  %929 = load ptr, ptr %928, align 8, !tbaa !89
  %930 = load ptr, ptr @ipa_reference_vars_vector, align 8, !nonnull !151, !noundef !151
  %931 = load i32, ptr %930, align 8, !tbaa !108
  %932 = getelementptr inbounds %struct.cgraph_node, ptr %929, i64 0, i32 24
  %933 = load i32, ptr %932, align 8, !tbaa !110
  %934 = icmp ugt i32 %931, %933
  tail call void @llvm.assume(i1 %934)
  %935 = zext i32 %933 to i64
  %936 = getelementptr inbounds %struct.VEC_ipa_reference_vars_info_t_base, ptr %930, i64 0, i32 2, i64 %935
  %937 = load ptr, ptr %936, align 8, !tbaa !89
  %938 = getelementptr inbounds %struct.ipa_reference_vars_info_d, ptr %937, i64 0, i32 1
  %939 = load ptr, ptr %938, align 8, !tbaa !118
  %940 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @global_info_obstack) #17
  %941 = getelementptr inbounds %struct.ipa_reference_global_vars_info_d, ptr %939, i64 0, i32 2
  store ptr %940, ptr %941, align 8, !tbaa !123
  %942 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @global_info_obstack) #17
  %943 = getelementptr inbounds %struct.ipa_reference_global_vars_info_d, ptr %939, i64 0, i32 3
  store ptr %942, ptr %943, align 8, !tbaa !124
  %944 = load ptr, ptr %939, align 8, !tbaa !120
  %945 = load ptr, ptr @all_module_statics, align 8, !tbaa !89
  %946 = icmp eq ptr %944, %945
  br i1 %946, label %950, label %947, !prof !134

947:                                              ; preds = %926
  %948 = load ptr, ptr %941, align 8, !tbaa !123
  %949 = tail call zeroext i8 @bitmap_and_compl(ptr noundef %948, ptr noundef %945, ptr noundef %944) #17
  br label %950

950:                                              ; preds = %947, %926
  %951 = getelementptr inbounds %struct.ipa_reference_global_vars_info_d, ptr %939, i64 0, i32 1
  %952 = load ptr, ptr %951, align 8, !tbaa !122
  %953 = load ptr, ptr @all_module_statics, align 8, !tbaa !89
  %954 = icmp eq ptr %952, %953
  br i1 %954, label %958, label %955, !prof !134

955:                                              ; preds = %950
  %956 = load ptr, ptr %943, align 8, !tbaa !124
  %957 = tail call zeroext i8 @bitmap_and_compl(ptr noundef %956, ptr noundef %953, ptr noundef %952) #17
  br label %958

958:                                              ; preds = %955, %950
  %959 = add nuw nsw i64 %927, 1
  %960 = icmp eq i64 %959, %925
  br i1 %960, label %961, label %926, !prof !158, !llvm.loop !187

961:                                              ; preds = %958, %922
  tail call void @free(ptr noundef %3)
  %962 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !89
  %963 = icmp eq ptr %962, null
  br i1 %963, label %1020, label %964, !prof !188

964:                                              ; preds = %961, %1016
  %965 = phi ptr [ %1018, %1016 ], [ %962, %961 ]
  %966 = load ptr, ptr @ipa_reference_vars_vector, align 8
  %967 = icmp eq ptr %966, null
  br i1 %967, label %977, label %968, !prof !189

968:                                              ; preds = %964
  %969 = load i32, ptr %966, align 8, !tbaa !108
  %970 = getelementptr inbounds %struct.cgraph_node, ptr %965, i64 0, i32 24
  %971 = load i32, ptr %970, align 8, !tbaa !110
  %972 = icmp ugt i32 %969, %971
  br i1 %972, label %973, label %977, !prof !190

973:                                              ; preds = %968
  %974 = zext i32 %971 to i64
  %975 = getelementptr inbounds %struct.VEC_ipa_reference_vars_info_t_base, ptr %966, i64 0, i32 2, i64 %974
  %976 = load ptr, ptr %975, align 8, !tbaa !89
  br label %977

977:                                              ; preds = %964, %968, %973
  %978 = phi ptr [ %976, %973 ], [ null, %968 ], [ null, %964 ]
  %979 = getelementptr inbounds %struct.cgraph_node, ptr %965, i64 0, i32 16
  %980 = load ptr, ptr %979, align 8, !tbaa !148
  %981 = icmp eq ptr %980, null
  br i1 %981, label %983, label %982, !prof !191

982:                                              ; preds = %977
  tail call void @free(ptr noundef %980)
  store ptr null, ptr %979, align 8, !tbaa !148
  br label %983

983:                                              ; preds = %982, %977
  %984 = tail call i32 @cgraph_function_body_availability(ptr noundef nonnull %965) #17
  %985 = icmp eq i32 %984, 2
  br i1 %985, label %986, label %987, !prof !189

986:                                              ; preds = %983
  tail call fastcc void @clean_function(ptr noundef nonnull %965)
  br label %1016

987:                                              ; preds = %983
  %988 = icmp eq ptr %978, null
  br i1 %988, label %1016, label %989, !prof !191

989:                                              ; preds = %987
  %990 = load ptr, ptr @ipa_reference_vars_vector, align 8, !nonnull !151, !noundef !151
  %991 = load i32, ptr %990, align 8, !tbaa !108
  %992 = getelementptr inbounds %struct.cgraph_node, ptr %965, i64 0, i32 24
  %993 = load i32, ptr %992, align 8, !tbaa !110
  %994 = icmp ugt i32 %991, %993
  tail call void @llvm.assume(i1 %994)
  %995 = zext i32 %993 to i64
  %996 = getelementptr inbounds %struct.VEC_ipa_reference_vars_info_t_base, ptr %990, i64 0, i32 2, i64 %995
  %997 = load ptr, ptr %996, align 8, !tbaa !89
  %998 = load ptr, ptr %997, align 8, !tbaa !135
  %999 = icmp eq ptr %998, null
  br i1 %999, label %1016, label %1000, !prof !192

1000:                                             ; preds = %989
  %1001 = load ptr, ptr %998, align 8, !tbaa !154
  %1002 = icmp eq ptr %1001, null
  %1003 = load ptr, ptr @all_module_statics, align 8
  %1004 = icmp eq ptr %1001, %1003
  %1005 = select i1 %1002, i1 true, i1 %1004, !prof !133
  br i1 %1005, label %1007, label %1006, !prof !133

1006:                                             ; preds = %1000
  tail call void @bitmap_obstack_free(ptr noundef nonnull %1001) #17
  store ptr null, ptr %998, align 8, !tbaa !154
  br label %1007

1007:                                             ; preds = %1006, %1000
  %1008 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %998, i64 0, i32 1
  %1009 = load ptr, ptr %1008, align 8, !tbaa !155
  %1010 = icmp eq ptr %1009, null
  %1011 = load ptr, ptr @all_module_statics, align 8
  %1012 = icmp eq ptr %1009, %1011
  %1013 = select i1 %1010, i1 true, i1 %1012, !prof !133
  br i1 %1013, label %1015, label %1014, !prof !133

1014:                                             ; preds = %1007
  tail call void @bitmap_obstack_free(ptr noundef nonnull %1009) #17
  store ptr null, ptr %1008, align 8, !tbaa !155
  br label %1015

1015:                                             ; preds = %1014, %1007
  tail call void @free(ptr noundef %998)
  store ptr null, ptr %997, align 8, !tbaa !135
  br label %1016

1016:                                             ; preds = %1015, %989, %987, %986
  %1017 = getelementptr inbounds %struct.cgraph_node, ptr %965, i64 0, i32 3
  %1018 = load ptr, ptr %1017, align 8, !tbaa !89
  %1019 = icmp eq ptr %1018, null
  br i1 %1019, label %1020, label %964, !prof !193, !llvm.loop !194

1020:                                             ; preds = %1016, %961
  tail call void @bitmap_obstack_release(ptr noundef nonnull @local_info_obstack) #17
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @generate_summary() #10 !prof !129 !PGOFuncName !195 {
  %1 = alloca %struct.walk_stmt_info, align 8
  tail call fastcc void @ipa_init()
  %2 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @local_info_obstack) #17
  %3 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @local_info_obstack) #17
  %4 = load ptr, ptr @varpool_nodes_queue, align 8, !tbaa !89
  %5 = icmp eq ptr %4, null
  br i1 %5, label %22, label %6, !prof !196

6:                                                ; preds = %0, %18
  %7 = phi ptr [ %20, %18 ], [ %4, %0 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !197
  %9 = load i64, ptr %8, align 8
  %10 = and i64 %9, 65535
  %11 = icmp eq i64 %10, 32
  br i1 %11, label %13, label %12, !prof !131

12:                                               ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str.19, i32 noundef 595, ptr noundef nonnull @.str.3) #17
  br label %13

13:                                               ; preds = %12, %6
  %14 = load ptr, ptr %7, align 8, !tbaa !197
  %15 = getelementptr inbounds %struct.tree_decl_common, ptr %14, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !100
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %22, !prof !196

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.varpool_node, ptr %7, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !89
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %6, !prof !196, !llvm.loop !199

22:                                               ; preds = %13, %18, %0
  %23 = phi ptr [ null, %0 ], [ %7, %13 ], [ null, %18 ]
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25, !prof !188

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.walk_stmt_info, ptr %1, i64 0, i32 2
  br label %30

27:                                               ; preds = %52, %22
  %28 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !89
  %29 = icmp eq ptr %28, null
  br i1 %29, label %64, label %55, !prof !188

30:                                               ; preds = %25, %52
  %31 = phi ptr [ %23, %25 ], [ %53, %52 ]
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %1) #17
  %32 = load ptr, ptr %31, align 8, !tbaa !197
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %1, i8 0, i64 56, i1 false)
  %33 = load ptr, ptr @visited_nodes, align 8, !tbaa !89
  store ptr %33, ptr %26, align 8, !tbaa !200
  %34 = getelementptr inbounds %struct.tree_decl_common, ptr %32, i64 0, i32 5
  %35 = call ptr @walk_tree_1(ptr noundef nonnull %34, ptr noundef nonnull @scan_initializer_for_static_refs, ptr noundef nonnull %1, ptr noundef %33, ptr noundef null) #17
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %1) #17
  br label %36

36:                                               ; preds = %47, %30
  %37 = phi ptr [ %31, %30 ], [ %39, %47 ]
  %38 = getelementptr inbounds %struct.varpool_node, ptr %37, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !203
  %40 = icmp eq ptr %39, null
  br i1 %40, label %52, label %41, !prof !204

41:                                               ; preds = %36
  %42 = load ptr, ptr %39, align 8, !tbaa !197
  %43 = load i64, ptr %42, align 8
  %44 = and i64 %43, 65535
  %45 = icmp eq i64 %44, 32
  br i1 %45, label %47, label %46, !prof !205

46:                                               ; preds = %41
  call void @fancy_abort(ptr noundef nonnull @.str.19, i32 noundef 608, ptr noundef nonnull @.str.3) #17
  br label %47

47:                                               ; preds = %46, %41
  %48 = load ptr, ptr %39, align 8, !tbaa !197
  %49 = getelementptr inbounds %struct.tree_decl_common, ptr %48, i64 0, i32 5
  %50 = load ptr, ptr %49, align 8, !tbaa !100
  %51 = icmp eq ptr %50, null
  br i1 %51, label %36, label %52, !prof !206, !llvm.loop !207

52:                                               ; preds = %47, %36
  %53 = phi ptr [ null, %36 ], [ %39, %47 ]
  %54 = icmp eq ptr %53, null
  br i1 %54, label %27, label %30, !prof !208, !llvm.loop !209

55:                                               ; preds = %27, %60
  %56 = phi ptr [ %62, %60 ], [ %28, %27 ]
  %57 = call i32 @cgraph_function_body_availability(ptr noundef nonnull %56) #17
  %58 = icmp ugt i32 %57, 1
  br i1 %58, label %59, label %60, !prof !210

59:                                               ; preds = %55
  call fastcc void @analyze_function(ptr noundef nonnull %56)
  br label %60

60:                                               ; preds = %55, %59
  %61 = getelementptr inbounds %struct.cgraph_node, ptr %56, i64 0, i32 3
  %62 = load ptr, ptr %61, align 8, !tbaa !89
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %55, !prof !211, !llvm.loop !212

64:                                               ; preds = %60, %27
  %65 = load ptr, ptr @visited_nodes, align 8, !tbaa !89
  call void @pointer_set_destroy(ptr noundef %65) #17
  store ptr null, ptr @visited_nodes, align 8, !tbaa !89
  %66 = load ptr, ptr @module_statics_escape, align 8, !tbaa !89
  %67 = load ptr, ptr %66, align 8, !tbaa !160
  %68 = icmp eq ptr %67, null
  %69 = select i1 %68, ptr @bitmap_zero_bits, ptr %67, !prof !196
  %70 = getelementptr inbounds %struct.bitmap_element_def, ptr %69, i64 0, i32 2
  %71 = load i32, ptr %70, align 8, !tbaa !162
  %72 = shl i32 %71, 7
  %73 = getelementptr inbounds %struct.bitmap_element_def, ptr %69, i64 0, i32 3
  %74 = load i64, ptr %73, align 8, !tbaa !164
  %75 = icmp eq i64 %74, 0
  %76 = zext i1 %75 to i32
  %77 = or disjoint i32 %72, %76
  br label %78

78:                                               ; preds = %139, %64
  %79 = phi i64 [ %74, %64 ], [ %142, %139 ]
  %80 = phi i32 [ 0, %64 ], [ %135, %139 ]
  %81 = phi ptr [ %69, %64 ], [ %136, %139 ]
  %82 = phi i32 [ %77, %64 ], [ %143, %139 ]
  %83 = icmp eq i64 %79, 0
  br i1 %83, label %98, label %84, !prof !213

84:                                               ; preds = %112, %78
  %85 = phi i64 [ %79, %78 ], [ %117, %112 ]
  %86 = phi i32 [ %80, %78 ], [ %113, %112 ]
  %87 = phi ptr [ %81, %78 ], [ %104, %112 ]
  %88 = phi i32 [ %82, %78 ], [ %114, %112 ]
  %89 = and i64 %85, 1
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %133, !prof !214

91:                                               ; preds = %84, %91
  %92 = phi i32 [ %95, %91 ], [ %88, %84 ]
  %93 = phi i64 [ %94, %91 ], [ %85, %84 ]
  %94 = lshr exact i64 %93, 1
  %95 = add i32 %92, 1
  %96 = and i64 %93, 2
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %91, label %133, !prof !215, !llvm.loop !165

98:                                               ; preds = %78
  %99 = add i32 %82, 63
  %100 = and i32 %99, -64
  %101 = add i32 %80, 1
  br label %102

102:                                              ; preds = %129, %98
  %103 = phi i64 [ %79, %98 ], [ %124, %129 ]
  %104 = phi ptr [ %81, %98 ], [ %127, %129 ]
  %105 = phi i32 [ %100, %98 ], [ %132, %129 ]
  %106 = phi i32 [ %101, %98 ], [ 0, %129 ]
  %107 = icmp eq i32 %106, 2
  br i1 %107, label %123, label %108, !prof !188

108:                                              ; preds = %102
  %109 = add i32 %105, 128
  %110 = shl i32 %106, 6
  %111 = sub i32 %109, %110
  br label %112

112:                                              ; preds = %108, %119
  %113 = phi i32 [ %121, %119 ], [ %106, %108 ]
  %114 = phi i32 [ %120, %119 ], [ %105, %108 ]
  %115 = zext i32 %113 to i64
  %116 = getelementptr inbounds %struct.bitmap_element_def, ptr %104, i64 0, i32 3, i64 %115
  %117 = load i64, ptr %116, align 8, !tbaa !164
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %119, label %84, !prof !216

119:                                              ; preds = %112
  %120 = add i32 %114, 64
  %121 = add i32 %113, 1
  %122 = icmp eq i32 %121, 2
  br i1 %122, label %123, label %112, !prof !217, !llvm.loop !166

123:                                              ; preds = %119, %102
  %124 = phi i64 [ %103, %102 ], [ %117, %119 ]
  %125 = phi i32 [ %105, %102 ], [ %111, %119 ]
  %126 = phi i32 [ %106, %102 ], [ 2, %119 ]
  %127 = load ptr, ptr %104, align 8, !tbaa !167
  %128 = icmp eq ptr %127, null
  br i1 %128, label %133, label %129, !prof !218

129:                                              ; preds = %123
  %130 = getelementptr inbounds %struct.bitmap_element_def, ptr %127, i64 0, i32 2
  %131 = load i32, ptr %130, align 8, !tbaa !162
  %132 = shl i32 %131, 7
  br label %102, !llvm.loop !168

133:                                              ; preds = %123, %91, %84
  %134 = phi i64 [ %85, %84 ], [ %94, %91 ], [ %124, %123 ]
  %135 = phi i32 [ %86, %84 ], [ %86, %91 ], [ %126, %123 ]
  %136 = phi ptr [ %87, %84 ], [ %87, %91 ], [ %127, %123 ]
  %137 = phi i32 [ %88, %84 ], [ %95, %91 ], [ %125, %123 ]
  %138 = phi i1 [ false, %84 ], [ false, %91 ], [ true, %123 ]
  br i1 %138, label %144, label %139, !prof !204

139:                                              ; preds = %133
  %140 = load ptr, ptr @reference_vars_to_consider, align 8, !tbaa !89
  %141 = zext i32 %137 to i64
  call void @splay_tree_remove(ptr noundef %140, i64 noundef %141) #17
  %142 = lshr i64 %134, 1
  %143 = add i32 %137, 1
  br label %78, !llvm.loop !219

144:                                              ; preds = %133
  %145 = load ptr, ptr @all_module_statics, align 8, !tbaa !89
  %146 = load ptr, ptr @module_statics_escape, align 8, !tbaa !89
  %147 = call zeroext i8 @bitmap_and_compl_into(ptr noundef %145, ptr noundef %146) #17
  %148 = load ptr, ptr @all_module_statics, align 8, !tbaa !89
  %149 = load ptr, ptr @module_statics_written, align 8, !tbaa !89
  %150 = call zeroext i8 @bitmap_and_compl(ptr noundef %2, ptr noundef %148, ptr noundef %149) #17
  %151 = load ptr, ptr @all_module_statics, align 8, !tbaa !89
  %152 = load ptr, ptr %151, align 8, !tbaa !160
  %153 = icmp eq ptr %152, null
  %154 = select i1 %153, ptr @bitmap_zero_bits, ptr %152, !prof !131
  %155 = getelementptr inbounds %struct.bitmap_element_def, ptr %154, i64 0, i32 2
  %156 = load i32, ptr %155, align 8, !tbaa !162
  %157 = shl i32 %156, 7
  %158 = getelementptr inbounds %struct.bitmap_element_def, ptr %154, i64 0, i32 3
  %159 = load i64, ptr %158, align 8, !tbaa !164
  %160 = icmp eq i64 %159, 0
  %161 = zext i1 %160 to i32
  %162 = or disjoint i32 %157, %161
  br label %163

163:                                              ; preds = %249, %144
  %164 = phi i64 [ %159, %144 ], [ %250, %249 ]
  %165 = phi i32 [ 0, %144 ], [ %220, %249 ]
  %166 = phi ptr [ %154, %144 ], [ %221, %249 ]
  %167 = phi i32 [ %162, %144 ], [ %251, %249 ]
  %168 = icmp eq i64 %164, 0
  br i1 %168, label %183, label %169, !prof !131

169:                                              ; preds = %197, %163
  %170 = phi i64 [ %164, %163 ], [ %202, %197 ]
  %171 = phi i32 [ %165, %163 ], [ %198, %197 ]
  %172 = phi ptr [ %166, %163 ], [ %189, %197 ]
  %173 = phi i32 [ %167, %163 ], [ %199, %197 ]
  %174 = and i64 %170, 1
  %175 = icmp eq i64 %174, 0
  br i1 %175, label %176, label %218

176:                                              ; preds = %169, %176
  %177 = phi i32 [ %180, %176 ], [ %173, %169 ]
  %178 = phi i64 [ %179, %176 ], [ %170, %169 ]
  %179 = lshr exact i64 %178, 1
  %180 = add i32 %177, 1
  %181 = and i64 %178, 2
  %182 = icmp eq i64 %181, 0
  br i1 %182, label %176, label %218, !llvm.loop !165

183:                                              ; preds = %163
  %184 = add i32 %167, 63
  %185 = and i32 %184, -64
  %186 = add i32 %165, 1
  br label %187

187:                                              ; preds = %214, %183
  %188 = phi i64 [ %164, %183 ], [ %209, %214 ]
  %189 = phi ptr [ %166, %183 ], [ %212, %214 ]
  %190 = phi i32 [ %185, %183 ], [ %217, %214 ]
  %191 = phi i32 [ %186, %183 ], [ 0, %214 ]
  %192 = icmp eq i32 %191, 2
  br i1 %192, label %208, label %193, !prof !188

193:                                              ; preds = %187
  %194 = add i32 %190, 128
  %195 = shl i32 %191, 6
  %196 = sub i32 %194, %195
  br label %197

197:                                              ; preds = %193, %204
  %198 = phi i32 [ %206, %204 ], [ %191, %193 ]
  %199 = phi i32 [ %205, %204 ], [ %190, %193 ]
  %200 = zext i32 %198 to i64
  %201 = getelementptr inbounds %struct.bitmap_element_def, ptr %189, i64 0, i32 3, i64 %200
  %202 = load i64, ptr %201, align 8, !tbaa !164
  %203 = icmp eq i64 %202, 0
  br i1 %203, label %204, label %169, !prof !131

204:                                              ; preds = %197
  %205 = add i32 %199, 64
  %206 = add i32 %198, 1
  %207 = icmp eq i32 %206, 2
  br i1 %207, label %208, label %197, !prof !132, !llvm.loop !166

208:                                              ; preds = %204, %187
  %209 = phi i64 [ %188, %187 ], [ %202, %204 ]
  %210 = phi i32 [ %190, %187 ], [ %196, %204 ]
  %211 = phi i32 [ %191, %187 ], [ 2, %204 ]
  %212 = load ptr, ptr %189, align 8, !tbaa !167
  %213 = icmp eq ptr %212, null
  br i1 %213, label %218, label %214, !prof !131

214:                                              ; preds = %208
  %215 = getelementptr inbounds %struct.bitmap_element_def, ptr %212, i64 0, i32 2
  %216 = load i32, ptr %215, align 8, !tbaa !162
  %217 = shl i32 %216, 7
  br label %187, !llvm.loop !168

218:                                              ; preds = %208, %176, %169
  %219 = phi i64 [ %170, %169 ], [ %179, %176 ], [ %209, %208 ]
  %220 = phi i32 [ %171, %169 ], [ %171, %176 ], [ %211, %208 ]
  %221 = phi ptr [ %172, %169 ], [ %172, %176 ], [ %212, %208 ]
  %222 = phi i32 [ %173, %169 ], [ %180, %176 ], [ %210, %208 ]
  %223 = phi i1 [ false, %169 ], [ false, %176 ], [ true, %208 ]
  br i1 %223, label %252, label %224, !prof !131

224:                                              ; preds = %218
  %225 = load ptr, ptr @reference_vars_to_consider, align 8, !tbaa !89
  %226 = sext i32 %222 to i64
  %227 = call ptr @splay_tree_lookup(ptr noundef %225, i64 noundef %226) #17
  %228 = icmp ne ptr %227, null
  call void @llvm.assume(i1 %228)
  %229 = getelementptr inbounds %struct.splay_tree_node_s, ptr %227, i64 0, i32 1
  %230 = load i64, ptr %229, align 8, !tbaa !177
  %231 = inttoptr i64 %230 to ptr
  %232 = load i64, ptr %231, align 8
  %233 = and i64 %232, -262145
  store i64 %233, ptr %231, align 8
  %234 = load ptr, ptr @dump_file, align 8, !tbaa !89
  %235 = icmp eq ptr %234, null
  br i1 %235, label %249, label %236

236:                                              ; preds = %224
  %237 = load ptr, ptr @reference_vars_to_consider, align 8, !tbaa !89
  %238 = call ptr @splay_tree_lookup(ptr noundef %237, i64 noundef %226) #17
  %239 = icmp eq ptr %238, null
  br i1 %239, label %246, label %240

240:                                              ; preds = %236
  %241 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 22), align 8, !tbaa !169
  %242 = getelementptr inbounds %struct.splay_tree_node_s, ptr %238, i64 0, i32 1
  %243 = load i64, ptr %242, align 8, !tbaa !177
  %244 = inttoptr i64 %243 to ptr
  %245 = call ptr %241(ptr noundef %244, i32 noundef 2) #17
  br label %246

246:                                              ; preds = %236, %240
  %247 = phi ptr [ %245, %240 ], [ null, %236 ]
  %248 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %234, ptr noundef nonnull @.str.14, ptr noundef %247)
  br label %249

249:                                              ; preds = %246, %224
  %250 = lshr i64 %219, 1
  %251 = add i32 %222, 1
  br label %163, !llvm.loop !220

252:                                              ; preds = %218
  %253 = load ptr, ptr @all_module_statics, align 8, !tbaa !89
  %254 = load ptr, ptr @module_statics_written, align 8, !tbaa !89
  %255 = call zeroext i8 @bitmap_and_compl(ptr noundef %2, ptr noundef %253, ptr noundef %254) #17
  %256 = load ptr, ptr %2, align 8, !tbaa !160
  %257 = icmp eq ptr %256, null
  %258 = select i1 %257, ptr @bitmap_zero_bits, ptr %256, !prof !131
  %259 = getelementptr inbounds %struct.bitmap_element_def, ptr %258, i64 0, i32 2
  %260 = load i32, ptr %259, align 8, !tbaa !162
  %261 = shl i32 %260, 7
  %262 = getelementptr inbounds %struct.bitmap_element_def, ptr %258, i64 0, i32 3
  %263 = load i64, ptr %262, align 8, !tbaa !164
  %264 = icmp eq i64 %263, 0
  %265 = zext i1 %264 to i32
  %266 = or disjoint i32 %261, %265
  br label %267

267:                                              ; preds = %360, %252
  %268 = phi i64 [ %263, %252 ], [ %361, %360 ]
  %269 = phi i32 [ 0, %252 ], [ %324, %360 ]
  %270 = phi ptr [ %258, %252 ], [ %325, %360 ]
  %271 = phi i32 [ %266, %252 ], [ %362, %360 ]
  %272 = icmp eq i64 %268, 0
  br i1 %272, label %287, label %273, !prof !131

273:                                              ; preds = %301, %267
  %274 = phi i64 [ %268, %267 ], [ %306, %301 ]
  %275 = phi i32 [ %269, %267 ], [ %302, %301 ]
  %276 = phi ptr [ %270, %267 ], [ %293, %301 ]
  %277 = phi i32 [ %271, %267 ], [ %303, %301 ]
  %278 = and i64 %274, 1
  %279 = icmp eq i64 %278, 0
  br i1 %279, label %280, label %322

280:                                              ; preds = %273, %280
  %281 = phi i32 [ %284, %280 ], [ %277, %273 ]
  %282 = phi i64 [ %283, %280 ], [ %274, %273 ]
  %283 = lshr exact i64 %282, 1
  %284 = add i32 %281, 1
  %285 = and i64 %282, 2
  %286 = icmp eq i64 %285, 0
  br i1 %286, label %280, label %322, !llvm.loop !165

287:                                              ; preds = %267
  %288 = add i32 %271, 63
  %289 = and i32 %288, -64
  %290 = add i32 %269, 1
  br label %291

291:                                              ; preds = %318, %287
  %292 = phi i64 [ %268, %287 ], [ %313, %318 ]
  %293 = phi ptr [ %270, %287 ], [ %316, %318 ]
  %294 = phi i32 [ %289, %287 ], [ %321, %318 ]
  %295 = phi i32 [ %290, %287 ], [ 0, %318 ]
  %296 = icmp eq i32 %295, 2
  br i1 %296, label %312, label %297, !prof !188

297:                                              ; preds = %291
  %298 = add i32 %294, 128
  %299 = shl i32 %295, 6
  %300 = sub i32 %298, %299
  br label %301

301:                                              ; preds = %297, %308
  %302 = phi i32 [ %310, %308 ], [ %295, %297 ]
  %303 = phi i32 [ %309, %308 ], [ %294, %297 ]
  %304 = zext i32 %302 to i64
  %305 = getelementptr inbounds %struct.bitmap_element_def, ptr %293, i64 0, i32 3, i64 %304
  %306 = load i64, ptr %305, align 8, !tbaa !164
  %307 = icmp eq i64 %306, 0
  br i1 %307, label %308, label %273, !prof !131

308:                                              ; preds = %301
  %309 = add i32 %303, 64
  %310 = add i32 %302, 1
  %311 = icmp eq i32 %310, 2
  br i1 %311, label %312, label %301, !prof !132, !llvm.loop !166

312:                                              ; preds = %308, %291
  %313 = phi i64 [ %292, %291 ], [ %306, %308 ]
  %314 = phi i32 [ %294, %291 ], [ %300, %308 ]
  %315 = phi i32 [ %295, %291 ], [ 2, %308 ]
  %316 = load ptr, ptr %293, align 8, !tbaa !167
  %317 = icmp eq ptr %316, null
  br i1 %317, label %322, label %318, !prof !131

318:                                              ; preds = %312
  %319 = getelementptr inbounds %struct.bitmap_element_def, ptr %316, i64 0, i32 2
  %320 = load i32, ptr %319, align 8, !tbaa !162
  %321 = shl i32 %320, 7
  br label %291, !llvm.loop !168

322:                                              ; preds = %312, %280, %273
  %323 = phi i64 [ %274, %273 ], [ %283, %280 ], [ %313, %312 ]
  %324 = phi i32 [ %275, %273 ], [ %275, %280 ], [ %315, %312 ]
  %325 = phi ptr [ %276, %273 ], [ %276, %280 ], [ %316, %312 ]
  %326 = phi i32 [ %277, %273 ], [ %284, %280 ], [ %314, %312 ]
  %327 = phi i1 [ false, %273 ], [ false, %280 ], [ true, %312 ]
  br i1 %327, label %363, label %328, !prof !131

328:                                              ; preds = %322
  %329 = load ptr, ptr @reference_vars_to_consider, align 8, !tbaa !89
  %330 = sext i32 %326 to i64
  %331 = call ptr @splay_tree_lookup(ptr noundef %329, i64 noundef %330) #17
  %332 = icmp eq ptr %331, null
  br i1 %332, label %337, label %333

333:                                              ; preds = %328
  %334 = getelementptr inbounds %struct.splay_tree_node_s, ptr %331, i64 0, i32 1
  %335 = load i64, ptr %334, align 8, !tbaa !177
  %336 = inttoptr i64 %335 to ptr
  br label %337

337:                                              ; preds = %328, %333
  %338 = phi ptr [ %336, %333 ], [ null, %328 ]
  %339 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %338, i64 0, i32 2
  %340 = load ptr, ptr %339, align 8, !tbaa !100
  %341 = icmp eq ptr %340, null
  br i1 %341, label %342, label %360

342:                                              ; preds = %337
  %343 = load i64, ptr %338, align 8
  %344 = or i64 %343, 1048576
  store i64 %344, ptr %338, align 8
  %345 = load ptr, ptr @dump_file, align 8, !tbaa !89
  %346 = icmp eq ptr %345, null
  br i1 %346, label %360, label %347

347:                                              ; preds = %342
  %348 = load ptr, ptr @reference_vars_to_consider, align 8, !tbaa !89
  %349 = call ptr @splay_tree_lookup(ptr noundef %348, i64 noundef %330) #17
  %350 = icmp eq ptr %349, null
  br i1 %350, label %357, label %351

351:                                              ; preds = %347
  %352 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 22), align 8, !tbaa !169
  %353 = getelementptr inbounds %struct.splay_tree_node_s, ptr %349, i64 0, i32 1
  %354 = load i64, ptr %353, align 8, !tbaa !177
  %355 = inttoptr i64 %354 to ptr
  %356 = call ptr %352(ptr noundef %355, i32 noundef 2) #17
  br label %357

357:                                              ; preds = %347, %351
  %358 = phi ptr [ %356, %351 ], [ null, %347 ]
  %359 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %345, ptr noundef nonnull @.str.15, ptr noundef %358)
  br label %360

360:                                              ; preds = %342, %357, %337
  %361 = lshr i64 %323, 1
  %362 = add i32 %326, 1
  br label %267, !llvm.loop !221

363:                                              ; preds = %322
  %364 = load ptr, ptr @module_statics_escape, align 8, !tbaa !89
  call void @bitmap_obstack_free(ptr noundef %364) #17
  store ptr null, ptr @module_statics_escape, align 8, !tbaa !89
  %365 = load ptr, ptr @module_statics_written, align 8, !tbaa !89
  call void @bitmap_obstack_free(ptr noundef %365) #17
  store ptr null, ptr @module_statics_written, align 8, !tbaa !89
  store ptr null, ptr @module_statics_escape, align 8, !tbaa !89
  store ptr null, ptr @module_statics_written, align 8, !tbaa !89
  %366 = load ptr, ptr @dump_file, align 8, !tbaa !89
  %367 = icmp eq ptr %366, null
  br i1 %367, label %459, label %368, !prof !131

368:                                              ; preds = %363
  %369 = load ptr, ptr @all_module_statics, align 8, !tbaa !89
  %370 = load ptr, ptr %369, align 8, !tbaa !160
  %371 = icmp eq ptr %370, null
  %372 = select i1 %371, ptr @bitmap_zero_bits, ptr %370
  %373 = getelementptr inbounds %struct.bitmap_element_def, ptr %372, i64 0, i32 2
  %374 = load i32, ptr %373, align 8, !tbaa !162
  %375 = shl i32 %374, 7
  %376 = getelementptr inbounds %struct.bitmap_element_def, ptr %372, i64 0, i32 3
  %377 = load i64, ptr %376, align 8, !tbaa !164
  %378 = icmp eq i64 %377, 0
  %379 = zext i1 %378 to i32
  %380 = or disjoint i32 %375, %379
  br label %381

381:                                              ; preds = %454, %368
  %382 = phi i64 [ %377, %368 ], [ %457, %454 ]
  %383 = phi i32 [ 0, %368 ], [ %438, %454 ]
  %384 = phi ptr [ %372, %368 ], [ %439, %454 ]
  %385 = phi i32 [ %380, %368 ], [ %458, %454 ]
  %386 = icmp eq i64 %382, 0
  br i1 %386, label %401, label %387

387:                                              ; preds = %415, %381
  %388 = phi i64 [ %382, %381 ], [ %420, %415 ]
  %389 = phi i32 [ %383, %381 ], [ %416, %415 ]
  %390 = phi ptr [ %384, %381 ], [ %407, %415 ]
  %391 = phi i32 [ %385, %381 ], [ %417, %415 ]
  %392 = and i64 %388, 1
  %393 = icmp eq i64 %392, 0
  br i1 %393, label %394, label %436

394:                                              ; preds = %387, %394
  %395 = phi i32 [ %398, %394 ], [ %391, %387 ]
  %396 = phi i64 [ %397, %394 ], [ %388, %387 ]
  %397 = lshr exact i64 %396, 1
  %398 = add i32 %395, 1
  %399 = and i64 %396, 2
  %400 = icmp eq i64 %399, 0
  br i1 %400, label %394, label %436, !llvm.loop !165

401:                                              ; preds = %381
  %402 = add i32 %385, 63
  %403 = and i32 %402, -64
  %404 = add i32 %383, 1
  br label %405

405:                                              ; preds = %432, %401
  %406 = phi i64 [ %382, %401 ], [ %427, %432 ]
  %407 = phi ptr [ %384, %401 ], [ %430, %432 ]
  %408 = phi i32 [ %403, %401 ], [ %435, %432 ]
  %409 = phi i32 [ %404, %401 ], [ 0, %432 ]
  %410 = icmp eq i32 %409, 2
  br i1 %410, label %426, label %411

411:                                              ; preds = %405
  %412 = add i32 %408, 128
  %413 = shl i32 %409, 6
  %414 = sub i32 %412, %413
  br label %415

415:                                              ; preds = %411, %422
  %416 = phi i32 [ %424, %422 ], [ %409, %411 ]
  %417 = phi i32 [ %423, %422 ], [ %408, %411 ]
  %418 = zext i32 %416 to i64
  %419 = getelementptr inbounds %struct.bitmap_element_def, ptr %407, i64 0, i32 3, i64 %418
  %420 = load i64, ptr %419, align 8, !tbaa !164
  %421 = icmp eq i64 %420, 0
  br i1 %421, label %422, label %387

422:                                              ; preds = %415
  %423 = add i32 %417, 64
  %424 = add i32 %416, 1
  %425 = icmp eq i32 %424, 2
  br i1 %425, label %426, label %415, !llvm.loop !166

426:                                              ; preds = %422, %405
  %427 = phi i64 [ %406, %405 ], [ %420, %422 ]
  %428 = phi i32 [ %408, %405 ], [ %414, %422 ]
  %429 = phi i32 [ %409, %405 ], [ 2, %422 ]
  %430 = load ptr, ptr %407, align 8, !tbaa !167
  %431 = icmp eq ptr %430, null
  br i1 %431, label %436, label %432

432:                                              ; preds = %426
  %433 = getelementptr inbounds %struct.bitmap_element_def, ptr %430, i64 0, i32 2
  %434 = load i32, ptr %433, align 8, !tbaa !162
  %435 = shl i32 %434, 7
  br label %405, !llvm.loop !168

436:                                              ; preds = %426, %394, %387
  %437 = phi i64 [ %388, %387 ], [ %397, %394 ], [ %427, %426 ]
  %438 = phi i32 [ %389, %387 ], [ %389, %394 ], [ %429, %426 ]
  %439 = phi ptr [ %390, %387 ], [ %390, %394 ], [ %430, %426 ]
  %440 = phi i32 [ %391, %387 ], [ %398, %394 ], [ %428, %426 ]
  %441 = phi i1 [ false, %387 ], [ false, %394 ], [ true, %426 ]
  br i1 %441, label %459, label %442

442:                                              ; preds = %436
  %443 = load ptr, ptr @dump_file, align 8, !tbaa !89
  %444 = load ptr, ptr @reference_vars_to_consider, align 8, !tbaa !89
  %445 = sext i32 %440 to i64
  %446 = call ptr @splay_tree_lookup(ptr noundef %444, i64 noundef %445) #17
  %447 = icmp eq ptr %446, null
  br i1 %447, label %454, label %448

448:                                              ; preds = %442
  %449 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 22), align 8, !tbaa !169
  %450 = getelementptr inbounds %struct.splay_tree_node_s, ptr %446, i64 0, i32 1
  %451 = load i64, ptr %450, align 8, !tbaa !177
  %452 = inttoptr i64 %451 to ptr
  %453 = call ptr %449(ptr noundef %452, i32 noundef 2) #17
  br label %454

454:                                              ; preds = %442, %448
  %455 = phi ptr [ %453, %448 ], [ null, %442 ]
  %456 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %443, ptr noundef nonnull @.str.16, ptr noundef %455)
  %457 = lshr i64 %437, 1
  %458 = add i32 %440, 1
  br label %381, !llvm.loop !222

459:                                              ; preds = %436, %363
  %460 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !89
  %461 = icmp eq ptr %460, null
  br i1 %461, label %490, label %462, !prof !188

462:                                              ; preds = %459, %486
  %463 = phi ptr [ %488, %486 ], [ %460, %459 ]
  %464 = call i32 @cgraph_function_body_availability(ptr noundef nonnull %463) #17
  %465 = icmp ugt i32 %464, 1
  br i1 %465, label %466, label %486, !prof !210

466:                                              ; preds = %462
  %467 = load ptr, ptr @ipa_reference_vars_vector, align 8, !nonnull !151, !noundef !151
  %468 = load i32, ptr %467, align 8, !tbaa !108
  %469 = getelementptr inbounds %struct.cgraph_node, ptr %463, i64 0, i32 24
  %470 = load i32, ptr %469, align 8, !tbaa !110
  %471 = icmp ugt i32 %468, %470
  call void @llvm.assume(i1 %471)
  %472 = zext i32 %470 to i64
  %473 = getelementptr inbounds %struct.VEC_ipa_reference_vars_info_t_base, ptr %467, i64 0, i32 2, i64 %472
  %474 = load ptr, ptr %473, align 8, !tbaa !89
  %475 = load ptr, ptr %474, align 8, !tbaa !135
  %476 = load ptr, ptr %475, align 8, !tbaa !154
  %477 = icmp eq ptr %476, null
  br i1 %477, label %480, label %478, !prof !223

478:                                              ; preds = %466
  %479 = load ptr, ptr @all_module_statics, align 8, !tbaa !89
  call void @bitmap_and_into(ptr noundef nonnull %476, ptr noundef %479) #17
  br label %480

480:                                              ; preds = %478, %466
  %481 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %475, i64 0, i32 1
  %482 = load ptr, ptr %481, align 8, !tbaa !155
  %483 = icmp eq ptr %482, null
  br i1 %483, label %486, label %484, !prof !223

484:                                              ; preds = %480
  %485 = load ptr, ptr @all_module_statics, align 8, !tbaa !89
  call void @bitmap_and_into(ptr noundef nonnull %482, ptr noundef %485) #17
  br label %486

486:                                              ; preds = %480, %484, %462
  %487 = getelementptr inbounds %struct.cgraph_node, ptr %463, i64 0, i32 3
  %488 = load ptr, ptr %487, align 8, !tbaa !89
  %489 = icmp eq ptr %488, null
  br i1 %489, label %490, label %462, !prof !211, !llvm.loop !224

490:                                              ; preds = %486, %459
  call void @bitmap_obstack_free(ptr noundef nonnull %2) #17
  call void @bitmap_obstack_free(ptr noundef %3) #17
  %491 = load ptr, ptr @dump_file, align 8, !tbaa !89
  %492 = icmp eq ptr %491, null
  br i1 %492, label %722, label %493, !prof !131

493:                                              ; preds = %490
  %494 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !89
  %495 = icmp eq ptr %494, null
  br i1 %495, label %722, label %496

496:                                              ; preds = %493, %718
  %497 = phi ptr [ %720, %718 ], [ %494, %493 ]
  %498 = call i32 @cgraph_function_body_availability(ptr noundef nonnull %497) #17
  %499 = icmp ugt i32 %498, 1
  br i1 %499, label %500, label %718

500:                                              ; preds = %496
  %501 = load ptr, ptr @ipa_reference_vars_vector, align 8, !nonnull !151, !noundef !151
  %502 = load i32, ptr %501, align 8, !tbaa !108
  %503 = getelementptr inbounds %struct.cgraph_node, ptr %497, i64 0, i32 24
  %504 = load i32, ptr %503, align 8, !tbaa !110
  %505 = icmp ugt i32 %502, %504
  call void @llvm.assume(i1 %505)
  %506 = zext i32 %504 to i64
  %507 = getelementptr inbounds %struct.VEC_ipa_reference_vars_info_t_base, ptr %501, i64 0, i32 2, i64 %506
  %508 = load ptr, ptr %507, align 8, !tbaa !89
  %509 = load ptr, ptr %508, align 8, !tbaa !135
  %510 = load ptr, ptr @dump_file, align 8, !tbaa !89
  %511 = call ptr @cgraph_node_name(ptr noundef nonnull %497) #17
  %512 = load i32, ptr %503, align 8, !tbaa !110
  %513 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %510, ptr noundef nonnull @.str.4, ptr noundef %511, i32 noundef %512)
  %514 = load ptr, ptr @dump_file, align 8, !tbaa !89
  %515 = call i64 @fwrite(ptr nonnull @.str.5, i64 16, i64 1, ptr %514)
  %516 = load ptr, ptr %509, align 8, !tbaa !154
  %517 = icmp eq ptr %516, null
  br i1 %517, label %608, label %518

518:                                              ; preds = %500
  %519 = load ptr, ptr %516, align 8, !tbaa !160
  %520 = icmp eq ptr %519, null
  %521 = select i1 %520, ptr @bitmap_zero_bits, ptr %519
  %522 = getelementptr inbounds %struct.bitmap_element_def, ptr %521, i64 0, i32 2
  %523 = load i32, ptr %522, align 8, !tbaa !162
  %524 = shl i32 %523, 7
  %525 = getelementptr inbounds %struct.bitmap_element_def, ptr %521, i64 0, i32 3
  %526 = load i64, ptr %525, align 8, !tbaa !164
  %527 = icmp eq i64 %526, 0
  %528 = zext i1 %527 to i32
  %529 = or disjoint i32 %524, %528
  br label %530

530:                                              ; preds = %603, %518
  %531 = phi i32 [ %529, %518 ], [ %607, %603 ]
  %532 = phi i64 [ %526, %518 ], [ %606, %603 ]
  %533 = phi i32 [ 0, %518 ], [ %588, %603 ]
  %534 = phi ptr [ %521, %518 ], [ %589, %603 ]
  %535 = icmp eq i64 %532, 0
  br i1 %535, label %550, label %536

536:                                              ; preds = %564, %530
  %537 = phi i32 [ %531, %530 ], [ %566, %564 ]
  %538 = phi i64 [ %532, %530 ], [ %569, %564 ]
  %539 = phi i32 [ %533, %530 ], [ %565, %564 ]
  %540 = phi ptr [ %534, %530 ], [ %557, %564 ]
  %541 = and i64 %538, 1
  %542 = icmp eq i64 %541, 0
  br i1 %542, label %543, label %585

543:                                              ; preds = %536, %543
  %544 = phi i64 [ %546, %543 ], [ %538, %536 ]
  %545 = phi i32 [ %547, %543 ], [ %537, %536 ]
  %546 = lshr exact i64 %544, 1
  %547 = add i32 %545, 1
  %548 = and i64 %544, 2
  %549 = icmp eq i64 %548, 0
  br i1 %549, label %543, label %585, !llvm.loop !165

550:                                              ; preds = %530
  %551 = add i32 %531, 63
  %552 = and i32 %551, -64
  %553 = add i32 %533, 1
  br label %554

554:                                              ; preds = %581, %550
  %555 = phi i32 [ %552, %550 ], [ %584, %581 ]
  %556 = phi i64 [ %532, %550 ], [ %577, %581 ]
  %557 = phi ptr [ %534, %550 ], [ %579, %581 ]
  %558 = phi i32 [ %553, %550 ], [ 0, %581 ]
  %559 = icmp eq i32 %558, 2
  br i1 %559, label %575, label %560

560:                                              ; preds = %554
  %561 = add i32 %555, 128
  %562 = shl i32 %558, 6
  %563 = sub i32 %561, %562
  br label %564

564:                                              ; preds = %560, %571
  %565 = phi i32 [ %573, %571 ], [ %558, %560 ]
  %566 = phi i32 [ %572, %571 ], [ %555, %560 ]
  %567 = zext i32 %565 to i64
  %568 = getelementptr inbounds %struct.bitmap_element_def, ptr %557, i64 0, i32 3, i64 %567
  %569 = load i64, ptr %568, align 8, !tbaa !164
  %570 = icmp eq i64 %569, 0
  br i1 %570, label %571, label %536

571:                                              ; preds = %564
  %572 = add i32 %566, 64
  %573 = add i32 %565, 1
  %574 = icmp eq i32 %573, 2
  br i1 %574, label %575, label %564, !llvm.loop !166

575:                                              ; preds = %571, %554
  %576 = phi i32 [ %555, %554 ], [ %563, %571 ]
  %577 = phi i64 [ %556, %554 ], [ %569, %571 ]
  %578 = phi i32 [ %558, %554 ], [ 2, %571 ]
  %579 = load ptr, ptr %557, align 8, !tbaa !167
  %580 = icmp eq ptr %579, null
  br i1 %580, label %585, label %581

581:                                              ; preds = %575
  %582 = getelementptr inbounds %struct.bitmap_element_def, ptr %579, i64 0, i32 2
  %583 = load i32, ptr %582, align 8, !tbaa !162
  %584 = shl i32 %583, 7
  br label %554, !llvm.loop !168

585:                                              ; preds = %575, %543, %536
  %586 = phi i32 [ %537, %536 ], [ %547, %543 ], [ %576, %575 ]
  %587 = phi i64 [ %538, %536 ], [ %546, %543 ], [ %577, %575 ]
  %588 = phi i32 [ %539, %536 ], [ %539, %543 ], [ %578, %575 ]
  %589 = phi ptr [ %540, %536 ], [ %540, %543 ], [ %579, %575 ]
  %590 = phi i1 [ false, %536 ], [ false, %543 ], [ true, %575 ]
  br i1 %590, label %608, label %591

591:                                              ; preds = %585
  %592 = load ptr, ptr @dump_file, align 8, !tbaa !89
  %593 = load ptr, ptr @reference_vars_to_consider, align 8, !tbaa !89
  %594 = sext i32 %586 to i64
  %595 = call ptr @splay_tree_lookup(ptr noundef %593, i64 noundef %594) #17
  %596 = icmp eq ptr %595, null
  br i1 %596, label %603, label %597

597:                                              ; preds = %591
  %598 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 22), align 8, !tbaa !169
  %599 = getelementptr inbounds %struct.splay_tree_node_s, ptr %595, i64 0, i32 1
  %600 = load i64, ptr %599, align 8, !tbaa !177
  %601 = inttoptr i64 %600 to ptr
  %602 = call ptr %598(ptr noundef %601, i32 noundef 2) #17
  br label %603

603:                                              ; preds = %591, %597
  %604 = phi ptr [ %602, %597 ], [ null, %591 ]
  %605 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %592, ptr noundef nonnull @.str.6, ptr noundef %604)
  %606 = lshr i64 %587, 1
  %607 = add i32 %586, 1
  br label %530, !llvm.loop !225

608:                                              ; preds = %585, %500
  %609 = load ptr, ptr @dump_file, align 8, !tbaa !89
  %610 = call i64 @fwrite(ptr nonnull @.str.7, i64 19, i64 1, ptr %609)
  %611 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %509, i64 0, i32 1
  %612 = load ptr, ptr %611, align 8, !tbaa !155
  %613 = icmp eq ptr %612, null
  br i1 %613, label %704, label %614

614:                                              ; preds = %608
  %615 = load ptr, ptr %612, align 8, !tbaa !160
  %616 = icmp eq ptr %615, null
  %617 = select i1 %616, ptr @bitmap_zero_bits, ptr %615
  %618 = getelementptr inbounds %struct.bitmap_element_def, ptr %617, i64 0, i32 2
  %619 = load i32, ptr %618, align 8, !tbaa !162
  %620 = shl i32 %619, 7
  %621 = getelementptr inbounds %struct.bitmap_element_def, ptr %617, i64 0, i32 3
  %622 = load i64, ptr %621, align 8, !tbaa !164
  %623 = icmp eq i64 %622, 0
  %624 = zext i1 %623 to i32
  %625 = or disjoint i32 %620, %624
  br label %626

626:                                              ; preds = %699, %614
  %627 = phi i32 [ %625, %614 ], [ %703, %699 ]
  %628 = phi i64 [ %622, %614 ], [ %702, %699 ]
  %629 = phi i32 [ 0, %614 ], [ %684, %699 ]
  %630 = phi ptr [ %617, %614 ], [ %685, %699 ]
  %631 = icmp eq i64 %628, 0
  br i1 %631, label %646, label %632

632:                                              ; preds = %660, %626
  %633 = phi i32 [ %627, %626 ], [ %662, %660 ]
  %634 = phi i64 [ %628, %626 ], [ %665, %660 ]
  %635 = phi i32 [ %629, %626 ], [ %661, %660 ]
  %636 = phi ptr [ %630, %626 ], [ %653, %660 ]
  %637 = and i64 %634, 1
  %638 = icmp eq i64 %637, 0
  br i1 %638, label %639, label %681

639:                                              ; preds = %632, %639
  %640 = phi i64 [ %642, %639 ], [ %634, %632 ]
  %641 = phi i32 [ %643, %639 ], [ %633, %632 ]
  %642 = lshr exact i64 %640, 1
  %643 = add i32 %641, 1
  %644 = and i64 %640, 2
  %645 = icmp eq i64 %644, 0
  br i1 %645, label %639, label %681, !llvm.loop !165

646:                                              ; preds = %626
  %647 = add i32 %627, 63
  %648 = and i32 %647, -64
  %649 = add i32 %629, 1
  br label %650

650:                                              ; preds = %677, %646
  %651 = phi i32 [ %648, %646 ], [ %680, %677 ]
  %652 = phi i64 [ %628, %646 ], [ %673, %677 ]
  %653 = phi ptr [ %630, %646 ], [ %675, %677 ]
  %654 = phi i32 [ %649, %646 ], [ 0, %677 ]
  %655 = icmp eq i32 %654, 2
  br i1 %655, label %671, label %656

656:                                              ; preds = %650
  %657 = add i32 %651, 128
  %658 = shl i32 %654, 6
  %659 = sub i32 %657, %658
  br label %660

660:                                              ; preds = %656, %667
  %661 = phi i32 [ %669, %667 ], [ %654, %656 ]
  %662 = phi i32 [ %668, %667 ], [ %651, %656 ]
  %663 = zext i32 %661 to i64
  %664 = getelementptr inbounds %struct.bitmap_element_def, ptr %653, i64 0, i32 3, i64 %663
  %665 = load i64, ptr %664, align 8, !tbaa !164
  %666 = icmp eq i64 %665, 0
  br i1 %666, label %667, label %632

667:                                              ; preds = %660
  %668 = add i32 %662, 64
  %669 = add i32 %661, 1
  %670 = icmp eq i32 %669, 2
  br i1 %670, label %671, label %660, !llvm.loop !166

671:                                              ; preds = %667, %650
  %672 = phi i32 [ %651, %650 ], [ %659, %667 ]
  %673 = phi i64 [ %652, %650 ], [ %665, %667 ]
  %674 = phi i32 [ %654, %650 ], [ 2, %667 ]
  %675 = load ptr, ptr %653, align 8, !tbaa !167
  %676 = icmp eq ptr %675, null
  br i1 %676, label %681, label %677

677:                                              ; preds = %671
  %678 = getelementptr inbounds %struct.bitmap_element_def, ptr %675, i64 0, i32 2
  %679 = load i32, ptr %678, align 8, !tbaa !162
  %680 = shl i32 %679, 7
  br label %650, !llvm.loop !168

681:                                              ; preds = %671, %639, %632
  %682 = phi i32 [ %633, %632 ], [ %643, %639 ], [ %672, %671 ]
  %683 = phi i64 [ %634, %632 ], [ %642, %639 ], [ %673, %671 ]
  %684 = phi i32 [ %635, %632 ], [ %635, %639 ], [ %674, %671 ]
  %685 = phi ptr [ %636, %632 ], [ %636, %639 ], [ %675, %671 ]
  %686 = phi i1 [ false, %632 ], [ false, %639 ], [ true, %671 ]
  br i1 %686, label %704, label %687

687:                                              ; preds = %681
  %688 = load ptr, ptr @dump_file, align 8, !tbaa !89
  %689 = load ptr, ptr @reference_vars_to_consider, align 8, !tbaa !89
  %690 = sext i32 %682 to i64
  %691 = call ptr @splay_tree_lookup(ptr noundef %689, i64 noundef %690) #17
  %692 = icmp eq ptr %691, null
  br i1 %692, label %699, label %693

693:                                              ; preds = %687
  %694 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 22), align 8, !tbaa !169
  %695 = getelementptr inbounds %struct.splay_tree_node_s, ptr %691, i64 0, i32 1
  %696 = load i64, ptr %695, align 8, !tbaa !177
  %697 = inttoptr i64 %696 to ptr
  %698 = call ptr %694(ptr noundef %697, i32 noundef 2) #17
  br label %699

699:                                              ; preds = %687, %693
  %700 = phi ptr [ %698, %693 ], [ null, %687 ]
  %701 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %688, ptr noundef nonnull @.str.6, ptr noundef %700)
  %702 = lshr i64 %683, 1
  %703 = add i32 %682, 1
  br label %626, !llvm.loop !226

704:                                              ; preds = %681, %608
  %705 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %509, i64 0, i32 2
  %706 = load i8, ptr %705, align 8, !tbaa !136
  %707 = icmp eq i8 %706, 0
  br i1 %707, label %711, label %708

708:                                              ; preds = %704
  %709 = load ptr, ptr @dump_file, align 8, !tbaa !89
  %710 = call i64 @fwrite(ptr nonnull @.str.17, i64 19, i64 1, ptr %709)
  br label %711

711:                                              ; preds = %708, %704
  %712 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %509, i64 0, i32 3
  %713 = load i8, ptr %712, align 1, !tbaa !138
  %714 = icmp eq i8 %713, 0
  br i1 %714, label %718, label %715

715:                                              ; preds = %711
  %716 = load ptr, ptr @dump_file, align 8, !tbaa !89
  %717 = call i64 @fwrite(ptr nonnull @.str.17, i64 19, i64 1, ptr %716)
  br label %718

718:                                              ; preds = %711, %715, %496
  %719 = getelementptr inbounds %struct.cgraph_node, ptr %497, i64 0, i32 3
  %720 = load ptr, ptr %719, align 8, !tbaa !89
  %721 = icmp eq ptr %720, null
  br i1 %721, label %722, label %496, !llvm.loop !227

722:                                              ; preds = %718, %493, %490
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @ipa_reference_write_summary(ptr nocapture noundef readonly %0) #11 !prof !88 {
  %2 = tail call ptr @lto_create_simple_output_block(i32 noundef 6) #17
  %3 = getelementptr inbounds %struct.cgraph_node_set_def, ptr %0, i64 0, i32 1
  br label %4

4:                                                ; preds = %15, %1
  %5 = phi i64 [ %21, %15 ], [ 0, %1 ]
  %6 = phi i32 [ %20, %15 ], [ 0, %1 ]
  %7 = load ptr, ptr %3, align 8, !tbaa !228
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %4
  %10 = load i32, ptr %7, align 8, !tbaa !230
  br label %11

11:                                               ; preds = %4, %9
  %12 = phi i32 [ %10, %9 ], [ 0, %4 ]
  %13 = zext i32 %12 to i64
  %14 = icmp ult i64 %5, %13
  br i1 %14, label %15, label %22

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.VEC_cgraph_node_ptr_base, ptr %7, i64 0, i32 2, i64 %5
  %17 = load ptr, ptr %16, align 8, !tbaa !89
  %18 = tail call fastcc zeroext i8 @write_node_summary_p(ptr noundef %17), !range !232
  %19 = zext nneg i8 %18 to i32
  %20 = add i32 %6, %19
  %21 = add nuw nsw i64 %5, 1
  br label %4, !llvm.loop !233

22:                                               ; preds = %11
  %23 = getelementptr inbounds %struct.cgraph_node_set_def, ptr %0, i64 0, i32 1
  %24 = getelementptr inbounds %struct.lto_simple_output_block, ptr %2, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !234
  %26 = zext i32 %6 to i64
  tail call void @lto_output_uleb128_stream(ptr noundef %25, i64 noundef %26) #17
  %27 = getelementptr inbounds %struct.lto_simple_output_block, ptr %2, i64 0, i32 1
  br label %28

28:                                               ; preds = %253, %22
  %29 = phi i32 [ 0, %22 ], [ %254, %253 ]
  %30 = load ptr, ptr %23, align 8, !tbaa !228
  %31 = icmp eq ptr %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %28
  %33 = load i32, ptr %30, align 8, !tbaa !230
  br label %34

34:                                               ; preds = %28, %32
  %35 = phi i32 [ %33, %32 ], [ 0, %28 ]
  %36 = icmp ugt i32 %35, %29
  br i1 %36, label %37, label %255

37:                                               ; preds = %34
  %38 = zext i32 %29 to i64
  %39 = getelementptr inbounds %struct.VEC_cgraph_node_ptr_base, ptr %30, i64 0, i32 2, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !89
  %41 = tail call fastcc zeroext i8 @write_node_summary_p(ptr noundef %40), !range !232
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %253, label %43

43:                                               ; preds = %37
  %44 = load ptr, ptr @ipa_reference_vars_vector, align 8, !nonnull !151, !noundef !151
  %45 = load i32, ptr %44, align 8, !tbaa !108
  %46 = getelementptr inbounds %struct.cgraph_node, ptr %40, i64 0, i32 24
  %47 = load i32, ptr %46, align 8, !tbaa !110
  %48 = icmp ugt i32 %45, %47
  tail call void @llvm.assume(i1 %48)
  %49 = zext i32 %47 to i64
  %50 = getelementptr inbounds %struct.VEC_ipa_reference_vars_info_t_base, ptr %44, i64 0, i32 2, i64 %49
  %51 = load ptr, ptr %50, align 8, !tbaa !89
  %52 = load ptr, ptr %51, align 8, !tbaa !135
  %53 = load ptr, ptr %27, align 8, !tbaa !236
  %54 = getelementptr inbounds %struct.lto_out_decl_state, ptr %53, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !237
  %56 = tail call i32 @lto_cgraph_encoder_encode(ptr noundef %55, ptr noundef %40) #17
  %57 = load ptr, ptr %24, align 8, !tbaa !234
  %58 = sext i32 %56 to i64
  tail call void @lto_output_uleb128_stream(ptr noundef %57, i64 noundef %58) #17
  %59 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %52, i64 0, i32 2
  %60 = load i8, ptr %59, align 8, !tbaa !136
  %61 = icmp eq i8 %60, 0
  %62 = load ptr, ptr %24, align 8, !tbaa !234
  br i1 %61, label %64, label %63

63:                                               ; preds = %43
  tail call void @lto_output_sleb128_stream(ptr noundef %62, i64 noundef -1) #17
  br label %155

64:                                               ; preds = %43
  %65 = load ptr, ptr %52, align 8, !tbaa !154
  %66 = tail call i64 @bitmap_count_bits(ptr noundef %65) #17
  tail call void @lto_output_sleb128_stream(ptr noundef %62, i64 noundef %66) #17
  %67 = load ptr, ptr %52, align 8, !tbaa !154
  %68 = load ptr, ptr %67, align 8, !tbaa !160
  %69 = icmp eq ptr %68, null
  %70 = select i1 %69, ptr @bitmap_zero_bits, ptr %68
  %71 = getelementptr inbounds %struct.bitmap_element_def, ptr %70, i64 0, i32 2
  %72 = load i32, ptr %71, align 8, !tbaa !162
  %73 = shl i32 %72, 7
  %74 = getelementptr inbounds %struct.bitmap_element_def, ptr %70, i64 0, i32 3
  %75 = load i64, ptr %74, align 8, !tbaa !164
  %76 = icmp eq i64 %75, 0
  %77 = zext i1 %76 to i32
  %78 = or disjoint i32 %73, %77
  br label %79

79:                                               ; preds = %151, %64
  %80 = phi i32 [ %78, %64 ], [ %154, %151 ]
  %81 = phi i64 [ %75, %64 ], [ %153, %151 ]
  %82 = phi i32 [ 0, %64 ], [ %137, %151 ]
  %83 = phi ptr [ %70, %64 ], [ %138, %151 ]
  %84 = icmp eq i64 %81, 0
  br i1 %84, label %99, label %85

85:                                               ; preds = %113, %79
  %86 = phi i32 [ %80, %79 ], [ %115, %113 ]
  %87 = phi i64 [ %81, %79 ], [ %118, %113 ]
  %88 = phi i32 [ %82, %79 ], [ %114, %113 ]
  %89 = phi ptr [ %83, %79 ], [ %106, %113 ]
  %90 = and i64 %87, 1
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %134

92:                                               ; preds = %85, %92
  %93 = phi i64 [ %95, %92 ], [ %87, %85 ]
  %94 = phi i32 [ %96, %92 ], [ %86, %85 ]
  %95 = lshr exact i64 %93, 1
  %96 = add i32 %94, 1
  %97 = and i64 %93, 2
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %92, label %134, !llvm.loop !165

99:                                               ; preds = %79
  %100 = add i32 %80, 63
  %101 = and i32 %100, -64
  %102 = add i32 %82, 1
  br label %103

103:                                              ; preds = %130, %99
  %104 = phi i32 [ %101, %99 ], [ %133, %130 ]
  %105 = phi i64 [ %81, %99 ], [ %126, %130 ]
  %106 = phi ptr [ %83, %99 ], [ %128, %130 ]
  %107 = phi i32 [ %102, %99 ], [ 0, %130 ]
  %108 = icmp eq i32 %107, 2
  br i1 %108, label %124, label %109

109:                                              ; preds = %103
  %110 = add i32 %104, 128
  %111 = shl i32 %107, 6
  %112 = sub i32 %110, %111
  br label %113

113:                                              ; preds = %109, %120
  %114 = phi i32 [ %122, %120 ], [ %107, %109 ]
  %115 = phi i32 [ %121, %120 ], [ %104, %109 ]
  %116 = zext i32 %114 to i64
  %117 = getelementptr inbounds %struct.bitmap_element_def, ptr %106, i64 0, i32 3, i64 %116
  %118 = load i64, ptr %117, align 8, !tbaa !164
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %120, label %85

120:                                              ; preds = %113
  %121 = add i32 %115, 64
  %122 = add i32 %114, 1
  %123 = icmp eq i32 %122, 2
  br i1 %123, label %124, label %113, !llvm.loop !166

124:                                              ; preds = %120, %103
  %125 = phi i32 [ %104, %103 ], [ %112, %120 ]
  %126 = phi i64 [ %105, %103 ], [ %118, %120 ]
  %127 = phi i32 [ %107, %103 ], [ 2, %120 ]
  %128 = load ptr, ptr %106, align 8, !tbaa !167
  %129 = icmp eq ptr %128, null
  br i1 %129, label %134, label %130

130:                                              ; preds = %124
  %131 = getelementptr inbounds %struct.bitmap_element_def, ptr %128, i64 0, i32 2
  %132 = load i32, ptr %131, align 8, !tbaa !162
  %133 = shl i32 %132, 7
  br label %103, !llvm.loop !168

134:                                              ; preds = %124, %92, %85
  %135 = phi i32 [ %86, %85 ], [ %96, %92 ], [ %125, %124 ]
  %136 = phi i64 [ %87, %85 ], [ %95, %92 ], [ %126, %124 ]
  %137 = phi i32 [ %88, %85 ], [ %88, %92 ], [ %127, %124 ]
  %138 = phi ptr [ %89, %85 ], [ %89, %92 ], [ %128, %124 ]
  %139 = phi i1 [ false, %85 ], [ false, %92 ], [ true, %124 ]
  br i1 %139, label %155, label %140

140:                                              ; preds = %134
  %141 = load ptr, ptr %27, align 8, !tbaa !236
  %142 = load ptr, ptr %24, align 8, !tbaa !234
  %143 = load ptr, ptr @reference_vars_to_consider, align 8, !tbaa !89
  %144 = sext i32 %135 to i64
  %145 = tail call ptr @splay_tree_lookup(ptr noundef %143, i64 noundef %144) #17
  %146 = icmp eq ptr %145, null
  br i1 %146, label %151, label %147

147:                                              ; preds = %140
  %148 = getelementptr inbounds %struct.splay_tree_node_s, ptr %145, i64 0, i32 1
  %149 = load i64, ptr %148, align 8, !tbaa !177
  %150 = inttoptr i64 %149 to ptr
  br label %151

151:                                              ; preds = %140, %147
  %152 = phi ptr [ %150, %147 ], [ null, %140 ]
  tail call void @lto_output_var_decl_index(ptr noundef %141, ptr noundef %142, ptr noundef %152) #17
  %153 = lshr i64 %136, 1
  %154 = add i32 %135, 1
  br label %79, !llvm.loop !239

155:                                              ; preds = %134, %63
  %156 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %52, i64 0, i32 3
  %157 = load i8, ptr %156, align 1, !tbaa !138
  %158 = icmp eq i8 %157, 0
  %159 = load ptr, ptr %24, align 8, !tbaa !234
  br i1 %158, label %161, label %160

160:                                              ; preds = %155
  tail call void @lto_output_sleb128_stream(ptr noundef %159, i64 noundef -1) #17
  br label %253

161:                                              ; preds = %155
  %162 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %52, i64 0, i32 1
  %163 = load ptr, ptr %162, align 8, !tbaa !155
  %164 = tail call i64 @bitmap_count_bits(ptr noundef %163) #17
  tail call void @lto_output_sleb128_stream(ptr noundef %159, i64 noundef %164) #17
  %165 = load ptr, ptr %162, align 8, !tbaa !155
  %166 = load ptr, ptr %165, align 8, !tbaa !160
  %167 = icmp eq ptr %166, null
  %168 = select i1 %167, ptr @bitmap_zero_bits, ptr %166
  %169 = getelementptr inbounds %struct.bitmap_element_def, ptr %168, i64 0, i32 2
  %170 = load i32, ptr %169, align 8, !tbaa !162
  %171 = shl i32 %170, 7
  %172 = getelementptr inbounds %struct.bitmap_element_def, ptr %168, i64 0, i32 3
  %173 = load i64, ptr %172, align 8, !tbaa !164
  %174 = icmp eq i64 %173, 0
  %175 = zext i1 %174 to i32
  %176 = or disjoint i32 %171, %175
  br label %177

177:                                              ; preds = %249, %161
  %178 = phi i32 [ %176, %161 ], [ %252, %249 ]
  %179 = phi i64 [ %173, %161 ], [ %251, %249 ]
  %180 = phi i32 [ 0, %161 ], [ %235, %249 ]
  %181 = phi ptr [ %168, %161 ], [ %236, %249 ]
  %182 = icmp eq i64 %179, 0
  br i1 %182, label %197, label %183

183:                                              ; preds = %211, %177
  %184 = phi i32 [ %178, %177 ], [ %213, %211 ]
  %185 = phi i64 [ %179, %177 ], [ %216, %211 ]
  %186 = phi i32 [ %180, %177 ], [ %212, %211 ]
  %187 = phi ptr [ %181, %177 ], [ %204, %211 ]
  %188 = and i64 %185, 1
  %189 = icmp eq i64 %188, 0
  br i1 %189, label %190, label %232

190:                                              ; preds = %183, %190
  %191 = phi i64 [ %193, %190 ], [ %185, %183 ]
  %192 = phi i32 [ %194, %190 ], [ %184, %183 ]
  %193 = lshr exact i64 %191, 1
  %194 = add i32 %192, 1
  %195 = and i64 %191, 2
  %196 = icmp eq i64 %195, 0
  br i1 %196, label %190, label %232, !llvm.loop !165

197:                                              ; preds = %177
  %198 = add i32 %178, 63
  %199 = and i32 %198, -64
  %200 = add i32 %180, 1
  br label %201

201:                                              ; preds = %228, %197
  %202 = phi i32 [ %199, %197 ], [ %231, %228 ]
  %203 = phi i64 [ %179, %197 ], [ %224, %228 ]
  %204 = phi ptr [ %181, %197 ], [ %226, %228 ]
  %205 = phi i32 [ %200, %197 ], [ 0, %228 ]
  %206 = icmp eq i32 %205, 2
  br i1 %206, label %222, label %207

207:                                              ; preds = %201
  %208 = add i32 %202, 128
  %209 = shl i32 %205, 6
  %210 = sub i32 %208, %209
  br label %211

211:                                              ; preds = %207, %218
  %212 = phi i32 [ %220, %218 ], [ %205, %207 ]
  %213 = phi i32 [ %219, %218 ], [ %202, %207 ]
  %214 = zext i32 %212 to i64
  %215 = getelementptr inbounds %struct.bitmap_element_def, ptr %204, i64 0, i32 3, i64 %214
  %216 = load i64, ptr %215, align 8, !tbaa !164
  %217 = icmp eq i64 %216, 0
  br i1 %217, label %218, label %183

218:                                              ; preds = %211
  %219 = add i32 %213, 64
  %220 = add i32 %212, 1
  %221 = icmp eq i32 %220, 2
  br i1 %221, label %222, label %211, !llvm.loop !166

222:                                              ; preds = %218, %201
  %223 = phi i32 [ %202, %201 ], [ %210, %218 ]
  %224 = phi i64 [ %203, %201 ], [ %216, %218 ]
  %225 = phi i32 [ %205, %201 ], [ 2, %218 ]
  %226 = load ptr, ptr %204, align 8, !tbaa !167
  %227 = icmp eq ptr %226, null
  br i1 %227, label %232, label %228

228:                                              ; preds = %222
  %229 = getelementptr inbounds %struct.bitmap_element_def, ptr %226, i64 0, i32 2
  %230 = load i32, ptr %229, align 8, !tbaa !162
  %231 = shl i32 %230, 7
  br label %201, !llvm.loop !168

232:                                              ; preds = %222, %190, %183
  %233 = phi i32 [ %184, %183 ], [ %194, %190 ], [ %223, %222 ]
  %234 = phi i64 [ %185, %183 ], [ %193, %190 ], [ %224, %222 ]
  %235 = phi i32 [ %186, %183 ], [ %186, %190 ], [ %225, %222 ]
  %236 = phi ptr [ %187, %183 ], [ %187, %190 ], [ %226, %222 ]
  %237 = phi i1 [ false, %183 ], [ false, %190 ], [ true, %222 ]
  br i1 %237, label %253, label %238

238:                                              ; preds = %232
  %239 = load ptr, ptr %27, align 8, !tbaa !236
  %240 = load ptr, ptr %24, align 8, !tbaa !234
  %241 = load ptr, ptr @reference_vars_to_consider, align 8, !tbaa !89
  %242 = sext i32 %233 to i64
  %243 = tail call ptr @splay_tree_lookup(ptr noundef %241, i64 noundef %242) #17
  %244 = icmp eq ptr %243, null
  br i1 %244, label %249, label %245

245:                                              ; preds = %238
  %246 = getelementptr inbounds %struct.splay_tree_node_s, ptr %243, i64 0, i32 1
  %247 = load i64, ptr %246, align 8, !tbaa !177
  %248 = inttoptr i64 %247 to ptr
  br label %249

249:                                              ; preds = %238, %245
  %250 = phi ptr [ %248, %245 ], [ null, %238 ]
  tail call void @lto_output_var_decl_index(ptr noundef %239, ptr noundef %240, ptr noundef %250) #17
  %251 = lshr i64 %234, 1
  %252 = add i32 %233, 1
  br label %177, !llvm.loop !240

253:                                              ; preds = %232, %160, %37
  %254 = add i32 %29, 1
  br label %28, !llvm.loop !241

255:                                              ; preds = %34
  tail call void @lto_destroy_simple_output_block(ptr noundef %2) #17
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @ipa_reference_read_summary() #11 !prof !88 {
  %1 = alloca ptr, align 8
  %2 = alloca i64, align 8
  %3 = tail call ptr @lto_get_file_decl_data() #17
  tail call fastcc void @ipa_init()
  %4 = load ptr, ptr %3, align 8, !tbaa !89
  %5 = icmp eq ptr %4, null
  br i1 %5, label %123, label %6

6:                                                ; preds = %0, %117
  %7 = phi ptr [ %121, %117 ], [ %4, %0 ]
  %8 = phi i32 [ %118, %117 ], [ 1, %0 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #17
  %9 = call ptr @lto_create_simple_input_block(ptr noundef nonnull %7, i32 noundef 6, ptr noundef nonnull %1, ptr noundef nonnull %2) #17
  %10 = icmp eq ptr %9, null
  br i1 %10, label %117, label %11

11:                                               ; preds = %6
  %12 = call i64 @lto_input_uleb128(ptr noundef nonnull %9) #17
  %13 = trunc i64 %12 to i32
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %114, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.lto_file_decl_data, ptr %7, i64 0, i32 2
  br label %17

17:                                               ; preds = %15, %111
  %18 = phi i32 [ 0, %15 ], [ %112, %111 ]
  %19 = call i64 @lto_input_uleb128(ptr noundef nonnull %9) #17
  %20 = trunc i64 %19 to i32
  %21 = load ptr, ptr %16, align 8, !tbaa !242
  %22 = call ptr @lto_cgraph_encoder_deref(ptr noundef %21, i32 noundef %20) #17
  %23 = call fastcc ptr @init_function_info(ptr noundef %22)
  %24 = call i64 @lto_input_sleb128(ptr noundef nonnull %9) #17
  %25 = trunc i64 %24 to i32
  switch i32 %25, label %28 [
    i32 -1, label %26
    i32 0, label %66
  ]

26:                                               ; preds = %17
  %27 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %23, i64 0, i32 2
  store i8 1, ptr %27, align 8, !tbaa !136
  br label %66

28:                                               ; preds = %17, %60
  %29 = phi i32 [ %64, %60 ], [ 0, %17 ]
  %30 = call i64 @lto_input_uleb128(ptr noundef nonnull %9) #17
  %31 = trunc i64 %30 to i32
  %32 = load ptr, ptr %7, align 8, !tbaa !244
  %33 = getelementptr inbounds [7 x %struct.lto_tree_ref_table], ptr %32, i64 0, i64 3, i32 1
  %34 = load i32, ptr %33, align 8, !tbaa !245
  %35 = icmp ugt i32 %34, %31
  br i1 %35, label %37, label %36

36:                                               ; preds = %28
  call void @fancy_abort(ptr noundef nonnull @.str.23, i32 noundef 1044, ptr noundef nonnull @.str.3) #17
  br label %37

37:                                               ; preds = %28, %36
  %38 = getelementptr inbounds [7 x %struct.lto_tree_ref_table], ptr %32, i64 0, i64 3
  %39 = load ptr, ptr %38, align 8, !tbaa !247
  %40 = and i64 %30, 4294967295
  %41 = getelementptr inbounds ptr, ptr %39, i64 %40
  %42 = load ptr, ptr %41, align 8, !tbaa !89
  %43 = getelementptr inbounds %struct.tree_decl_minimal, ptr %42, i64 0, i32 2
  %44 = load i32, ptr %43, align 4, !tbaa !100
  %45 = load i64, ptr %42, align 8
  %46 = and i64 %45, 65535
  %47 = icmp eq i64 %46, 32
  br i1 %47, label %49, label %48

48:                                               ; preds = %37
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 293, ptr noundef nonnull @.str.3) #17
  br label %49

49:                                               ; preds = %48, %37
  %50 = load ptr, ptr @all_module_statics, align 8, !tbaa !89
  %51 = call i32 @bitmap_bit_p(ptr noundef %50, i32 noundef %44) #17
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %49
  %54 = load ptr, ptr @reference_vars_to_consider, align 8, !tbaa !89
  %55 = sext i32 %44 to i64
  %56 = ptrtoint ptr %42 to i64
  %57 = call ptr @splay_tree_insert(ptr noundef %54, i64 noundef %55, i64 noundef %56) #17
  %58 = load ptr, ptr @all_module_statics, align 8, !tbaa !89
  %59 = call zeroext i8 @bitmap_set_bit(ptr noundef %58, i32 noundef %44) #17
  br label %60

60:                                               ; preds = %49, %53
  %61 = load ptr, ptr %23, align 8, !tbaa !154
  %62 = load i32, ptr %43, align 4, !tbaa !100
  %63 = call zeroext i8 @bitmap_set_bit(ptr noundef %61, i32 noundef %62) #17
  %64 = add nuw i32 %29, 1
  %65 = icmp eq i32 %64, %25
  br i1 %65, label %66, label %28, !llvm.loop !248

66:                                               ; preds = %60, %17, %26
  %67 = call i64 @lto_input_sleb128(ptr noundef nonnull %9) #17
  %68 = trunc i64 %67 to i32
  switch i32 %68, label %69 [
    i32 -1, label %71
    i32 0, label %111
  ]

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %23, i64 0, i32 1
  br label %73

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %23, i64 0, i32 3
  store i8 1, ptr %72, align 1, !tbaa !138
  br label %111

73:                                               ; preds = %69, %105
  %74 = phi i32 [ 0, %69 ], [ %109, %105 ]
  %75 = call i64 @lto_input_uleb128(ptr noundef nonnull %9) #17
  %76 = trunc i64 %75 to i32
  %77 = load ptr, ptr %7, align 8, !tbaa !244
  %78 = getelementptr inbounds [7 x %struct.lto_tree_ref_table], ptr %77, i64 0, i64 3, i32 1
  %79 = load i32, ptr %78, align 8, !tbaa !245
  %80 = icmp ugt i32 %79, %76
  br i1 %80, label %82, label %81

81:                                               ; preds = %73
  call void @fancy_abort(ptr noundef nonnull @.str.23, i32 noundef 1044, ptr noundef nonnull @.str.3) #17
  br label %82

82:                                               ; preds = %73, %81
  %83 = getelementptr inbounds [7 x %struct.lto_tree_ref_table], ptr %77, i64 0, i64 3
  %84 = load ptr, ptr %83, align 8, !tbaa !247
  %85 = and i64 %75, 4294967295
  %86 = getelementptr inbounds ptr, ptr %84, i64 %85
  %87 = load ptr, ptr %86, align 8, !tbaa !89
  %88 = getelementptr inbounds %struct.tree_decl_minimal, ptr %87, i64 0, i32 2
  %89 = load i32, ptr %88, align 4, !tbaa !100
  %90 = load i64, ptr %87, align 8
  %91 = and i64 %90, 65535
  %92 = icmp eq i64 %91, 32
  br i1 %92, label %94, label %93

93:                                               ; preds = %82
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 293, ptr noundef nonnull @.str.3) #17
  br label %94

94:                                               ; preds = %93, %82
  %95 = load ptr, ptr @all_module_statics, align 8, !tbaa !89
  %96 = call i32 @bitmap_bit_p(ptr noundef %95, i32 noundef %89) #17
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %94
  %99 = load ptr, ptr @reference_vars_to_consider, align 8, !tbaa !89
  %100 = sext i32 %89 to i64
  %101 = ptrtoint ptr %87 to i64
  %102 = call ptr @splay_tree_insert(ptr noundef %99, i64 noundef %100, i64 noundef %101) #17
  %103 = load ptr, ptr @all_module_statics, align 8, !tbaa !89
  %104 = call zeroext i8 @bitmap_set_bit(ptr noundef %103, i32 noundef %89) #17
  br label %105

105:                                              ; preds = %94, %98
  %106 = load ptr, ptr %70, align 8, !tbaa !155
  %107 = load i32, ptr %88, align 4, !tbaa !100
  %108 = call zeroext i8 @bitmap_set_bit(ptr noundef %106, i32 noundef %107) #17
  %109 = add nuw i32 %74, 1
  %110 = icmp eq i32 %109, %68
  br i1 %110, label %111, label %73, !llvm.loop !249

111:                                              ; preds = %105, %66, %71
  %112 = add nuw i32 %18, 1
  %113 = icmp eq i32 %112, %13
  br i1 %113, label %114, label %17, !llvm.loop !250

114:                                              ; preds = %111, %11
  %115 = load ptr, ptr %1, align 8, !tbaa !89
  %116 = load i64, ptr %2, align 8, !tbaa !164
  call void @lto_destroy_simple_input_block(ptr noundef nonnull %7, i32 noundef 6, ptr noundef nonnull %9, ptr noundef %115, i64 noundef %116) #17
  br label %117

117:                                              ; preds = %114, %6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #17
  %118 = add i32 %8, 1
  %119 = zext i32 %8 to i64
  %120 = getelementptr inbounds ptr, ptr %3, i64 %119
  %121 = load ptr, ptr %120, align 8, !tbaa !89
  %122 = icmp eq ptr %121, null
  br i1 %122, label %123, label %6, !llvm.loop !251

123:                                              ; preds = %117, %0
  ret void
}

declare void @gt_ggc_m_IP9tree_node12splay_tree_s(ptr noundef) #3

declare void @gt_pch_n_IP9tree_node12splay_tree_s(ptr noundef) #3

declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare i32 @ipa_utils_reduced_inorder(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

declare void @cgraph_remove_function_insertion_hook(ptr noundef) local_unnamed_addr #3

declare void @dump_cgraph(ptr noundef) local_unnamed_addr #3

declare void @ipa_utils_print_order(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @dump_cgraph_node(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @cgraph_function_body_availability(ptr noundef) local_unnamed_addr #3

declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #3

declare void @bitmap_copy(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @propagate_bits(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #10 !prof !252 !PGOFuncName !253 {
  %3 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !89
  %5 = icmp eq ptr %4, null
  br i1 %5, label %72, label %6, !prof !140

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.ipa_reference_global_vars_info_d, ptr %0, i64 0, i32 1
  br label %8

8:                                                ; preds = %6, %68
  %9 = phi ptr [ %4, %6 ], [ %70, %68 ]
  %10 = getelementptr inbounds %struct.cgraph_edge, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !141
  %12 = tail call i32 @cgraph_function_body_availability(ptr noundef %11) #17
  %13 = icmp ugt i32 %12, 2
  br i1 %13, label %14, label %68, !prof !254

14:                                               ; preds = %8
  %15 = load ptr, ptr @ipa_reference_vars_vector, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %26, label %17, !prof !255

17:                                               ; preds = %14
  %18 = load i32, ptr %15, align 8, !tbaa !108
  %19 = getelementptr inbounds %struct.cgraph_node, ptr %11, i64 0, i32 24
  %20 = load i32, ptr %19, align 8, !tbaa !110
  %21 = icmp ugt i32 %18, %20
  br i1 %21, label %22, label %26, !prof !256

22:                                               ; preds = %17
  %23 = zext i32 %20 to i64
  %24 = getelementptr inbounds %struct.VEC_ipa_reference_vars_info_t_base, ptr %15, i64 0, i32 2, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !89
  br label %26

26:                                               ; preds = %14, %17, %22
  %27 = phi ptr [ %25, %22 ], [ null, %17 ], [ null, %14 ]
  %28 = icmp eq ptr %27, null
  br i1 %28, label %67, label %29, !prof !255

29:                                               ; preds = %26
  %30 = load i32, ptr %15, align 8, !tbaa !108
  %31 = getelementptr inbounds %struct.cgraph_node, ptr %11, i64 0, i32 24
  %32 = load i32, ptr %31, align 8, !tbaa !110
  %33 = icmp ugt i32 %30, %32
  tail call void @llvm.assume(i1 %33)
  %34 = zext i32 %32 to i64
  %35 = getelementptr inbounds %struct.VEC_ipa_reference_vars_info_t_base, ptr %15, i64 0, i32 2, i64 %34
  %36 = load ptr, ptr %35, align 8, !tbaa !89
  %37 = getelementptr inbounds %struct.ipa_reference_vars_info_d, ptr %36, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !118
  %39 = icmp eq ptr %38, null
  br i1 %39, label %68, label %40, !prof !255

40:                                               ; preds = %29
  %41 = load ptr, ptr %0, align 8, !tbaa !120
  %42 = load ptr, ptr @all_module_statics, align 8, !tbaa !89
  %43 = icmp eq ptr %41, %42
  br i1 %43, label %53, label %44, !prof !256

44:                                               ; preds = %40
  %45 = load ptr, ptr %38, align 8, !tbaa !120
  %46 = icmp eq ptr %45, %42
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  tail call void @bitmap_obstack_free(ptr noundef %41) #17
  store ptr null, ptr %0, align 8, !tbaa !120
  %48 = load ptr, ptr @all_module_statics, align 8, !tbaa !89
  store ptr %48, ptr %0, align 8, !tbaa !120
  br label %53

49:                                               ; preds = %44
  %50 = icmp eq ptr %41, %45
  br i1 %50, label %53, label %51

51:                                               ; preds = %49
  %52 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %41, ptr noundef %45) #17
  br label %53

53:                                               ; preds = %47, %51, %49, %40
  %54 = load ptr, ptr %7, align 8, !tbaa !122
  %55 = load ptr, ptr @all_module_statics, align 8, !tbaa !89
  %56 = icmp eq ptr %54, %55
  br i1 %56, label %68, label %57, !prof !256

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.ipa_reference_global_vars_info_d, ptr %38, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !122
  %60 = icmp eq ptr %59, %55
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  tail call void @bitmap_obstack_free(ptr noundef %54) #17
  store ptr null, ptr %7, align 8, !tbaa !122
  %62 = load ptr, ptr @all_module_statics, align 8, !tbaa !89
  store ptr %62, ptr %7, align 8, !tbaa !122
  br label %68

63:                                               ; preds = %57
  %64 = icmp eq ptr %54, %59
  br i1 %64, label %68, label %65

65:                                               ; preds = %63
  %66 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %54, ptr noundef %59) #17
  br label %68

67:                                               ; preds = %26
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 577, ptr noundef nonnull @.str.3) #17
  br label %68

68:                                               ; preds = %61, %65, %63, %53, %29, %8, %67
  %69 = getelementptr inbounds %struct.cgraph_edge, ptr %9, i64 0, i32 6
  %70 = load ptr, ptr %69, align 8, !tbaa !89
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %8, !prof !146, !llvm.loop !257

72:                                               ; preds = %68, %2
  ret void
}

declare zeroext i8 @bitmap_ior_into(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

declare ptr @cgraph_node_name(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @bitmap_and_compl(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: nounwind uwtable
define internal fastcc void @clean_function(ptr nocapture noundef readonly %0) unnamed_addr #10 !prof !258 !PGOFuncName !259 {
  %2 = load ptr, ptr @ipa_reference_vars_vector, align 8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4, !prof !260

4:                                                ; preds = %1
  %5 = load i32, ptr %2, align 8, !tbaa !108
  %6 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 24
  %7 = load i32, ptr %6, align 8, !tbaa !110
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %13, !prof !261

9:                                                ; preds = %4
  %10 = zext i32 %7 to i64
  %11 = getelementptr inbounds %struct.VEC_ipa_reference_vars_info_t_base, ptr %2, i64 0, i32 2, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !89
  br label %13

13:                                               ; preds = %1, %4, %9
  %14 = phi ptr [ %12, %9 ], [ null, %4 ], [ null, %1 ]
  %15 = getelementptr inbounds %struct.ipa_reference_vars_info_d, ptr %14, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !118
  %17 = load i32, ptr %2, align 8, !tbaa !108
  %18 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 24
  %19 = load i32, ptr %18, align 8, !tbaa !110
  %20 = icmp ugt i32 %17, %19
  tail call void @llvm.assume(i1 %20)
  %21 = zext i32 %19 to i64
  %22 = getelementptr inbounds %struct.VEC_ipa_reference_vars_info_t_base, ptr %2, i64 0, i32 2, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !89
  %24 = load ptr, ptr %23, align 8, !tbaa !135
  %25 = icmp eq ptr %24, null
  br i1 %25, label %42, label %26, !prof !192

26:                                               ; preds = %13
  %27 = load ptr, ptr %24, align 8, !tbaa !154
  %28 = icmp eq ptr %27, null
  %29 = load ptr, ptr @all_module_statics, align 8
  %30 = icmp eq ptr %27, %29
  %31 = select i1 %28, i1 true, i1 %30, !prof !133
  br i1 %31, label %33, label %32, !prof !133

32:                                               ; preds = %26
  tail call void @bitmap_obstack_free(ptr noundef nonnull %27) #17
  store ptr null, ptr %24, align 8, !tbaa !154
  br label %33

33:                                               ; preds = %32, %26
  %34 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %24, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !155
  %36 = icmp eq ptr %35, null
  %37 = load ptr, ptr @all_module_statics, align 8
  %38 = icmp eq ptr %35, %37
  %39 = select i1 %36, i1 true, i1 %38, !prof !133
  br i1 %39, label %41, label %40, !prof !133

40:                                               ; preds = %33
  tail call void @bitmap_obstack_free(ptr noundef nonnull %35) #17
  store ptr null, ptr %34, align 8, !tbaa !155
  br label %41

41:                                               ; preds = %40, %33
  tail call void @free(ptr noundef %24)
  store ptr null, ptr %23, align 8, !tbaa !135
  br label %42

42:                                               ; preds = %13, %41
  %43 = icmp eq ptr %16, null
  br i1 %43, label %76, label %44, !prof !260

44:                                               ; preds = %42
  %45 = load ptr, ptr %16, align 8, !tbaa !120
  %46 = icmp eq ptr %45, null
  %47 = load ptr, ptr @all_module_statics, align 8
  %48 = icmp eq ptr %45, %47
  %49 = select i1 %46, i1 true, i1 %48, !prof !260
  br i1 %49, label %51, label %50, !prof !261

50:                                               ; preds = %44
  tail call void @bitmap_obstack_free(ptr noundef nonnull %45) #17
  store ptr null, ptr %16, align 8, !tbaa !120
  br label %51

51:                                               ; preds = %50, %44
  %52 = getelementptr inbounds %struct.ipa_reference_global_vars_info_d, ptr %16, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !122
  %54 = icmp eq ptr %53, null
  %55 = load ptr, ptr @all_module_statics, align 8
  %56 = icmp eq ptr %53, %55
  %57 = select i1 %54, i1 true, i1 %56, !prof !260
  br i1 %57, label %59, label %58, !prof !261

58:                                               ; preds = %51
  tail call void @bitmap_obstack_free(ptr noundef nonnull %53) #17
  store ptr null, ptr %52, align 8, !tbaa !122
  br label %59

59:                                               ; preds = %58, %51
  %60 = getelementptr inbounds %struct.ipa_reference_global_vars_info_d, ptr %16, i64 0, i32 2
  %61 = load ptr, ptr %60, align 8, !tbaa !123
  %62 = icmp eq ptr %61, null
  %63 = load ptr, ptr @all_module_statics, align 8
  %64 = icmp eq ptr %61, %63
  %65 = select i1 %62, i1 true, i1 %64, !prof !260
  br i1 %65, label %67, label %66, !prof !260

66:                                               ; preds = %59
  tail call void @bitmap_obstack_free(ptr noundef nonnull %61) #17
  store ptr null, ptr %60, align 8, !tbaa !123
  br label %67

67:                                               ; preds = %66, %59
  %68 = getelementptr inbounds %struct.ipa_reference_global_vars_info_d, ptr %16, i64 0, i32 3
  %69 = load ptr, ptr %68, align 8, !tbaa !124
  %70 = icmp eq ptr %69, null
  %71 = load ptr, ptr @all_module_statics, align 8
  %72 = icmp eq ptr %69, %71
  %73 = select i1 %70, i1 true, i1 %72, !prof !260
  br i1 %73, label %75, label %74, !prof !260

74:                                               ; preds = %67
  tail call void @bitmap_obstack_free(ptr noundef nonnull %69) #17
  store ptr null, ptr %68, align 8, !tbaa !124
  br label %75

75:                                               ; preds = %74, %67
  tail call void @free(ptr noundef %16)
  store ptr null, ptr %15, align 8, !tbaa !118
  br label %76

76:                                               ; preds = %75, %42
  %77 = load ptr, ptr @ipa_reference_vars_vector, align 8
  %78 = icmp eq ptr %77, null
  br i1 %78, label %93, label %79, !prof !260

79:                                               ; preds = %76
  %80 = load i32, ptr %77, align 8, !tbaa !108
  %81 = load i32, ptr %18, align 8, !tbaa !110
  %82 = icmp ugt i32 %80, %81
  br i1 %82, label %83, label %87, !prof !261

83:                                               ; preds = %79
  %84 = zext i32 %81 to i64
  %85 = getelementptr inbounds %struct.VEC_ipa_reference_vars_info_t_base, ptr %77, i64 0, i32 2, i64 %84
  %86 = load ptr, ptr %85, align 8, !tbaa !89
  br label %87

87:                                               ; preds = %79, %83
  %88 = phi ptr [ %86, %83 ], [ null, %79 ]
  tail call void @free(ptr noundef %88)
  br i1 %78, label %93, label %89, !prof !260

89:                                               ; preds = %87
  %90 = load i32, ptr %77, align 8, !tbaa !108
  %91 = load i32, ptr %18, align 8, !tbaa !110
  %92 = icmp ugt i32 %90, %91
  br i1 %92, label %125, label %93, !prof !261

93:                                               ; preds = %76, %89, %87
  %94 = load i32, ptr %18, align 8, !tbaa !110
  %95 = add nsw i32 %94, 1
  br i1 %78, label %98, label %96

96:                                               ; preds = %93
  %97 = load i32, ptr %77, align 8, !tbaa !108
  br label %98

98:                                               ; preds = %96, %93
  %99 = phi i32 [ %97, %96 ], [ 0, %93 ]
  br i1 %78, label %102, label %100

100:                                              ; preds = %98
  %101 = load i32, ptr %77, align 8, !tbaa !108
  br label %102

102:                                              ; preds = %100, %98
  %103 = phi i32 [ %101, %100 ], [ 0, %98 ]
  %104 = sub nsw i32 %95, %103
  br i1 %78, label %111, label %105

105:                                              ; preds = %102
  %106 = getelementptr inbounds %struct.VEC_ipa_reference_vars_info_t_base, ptr %77, i64 0, i32 1
  %107 = load i32, ptr %106, align 4, !tbaa !262
  %108 = load i32, ptr %77, align 8, !tbaa !108
  %109 = sub i32 %107, %108
  %110 = icmp uge i32 %109, %104
  br label %113

111:                                              ; preds = %102
  %112 = icmp eq i32 %103, %95
  br label %113

113:                                              ; preds = %111, %105
  %114 = phi i1 [ %110, %105 ], [ %112, %111 ]
  br i1 %114, label %117, label %115

115:                                              ; preds = %113
  %116 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef %77, i32 noundef %104) #17
  store ptr %116, ptr @ipa_reference_vars_vector, align 8, !tbaa !89
  br label %117

117:                                              ; preds = %115, %113
  %118 = load ptr, ptr @ipa_reference_vars_vector, align 8, !tbaa !89, !nonnull !151, !noundef !151
  store i32 %95, ptr %118, align 8, !tbaa !108
  %119 = getelementptr inbounds %struct.VEC_ipa_reference_vars_info_t_base, ptr %118, i64 0, i32 2
  %120 = sext i32 %99 to i64
  %121 = getelementptr inbounds ptr, ptr %119, i64 %120
  %122 = sub nsw i32 %95, %99
  %123 = sext i32 %122 to i64
  %124 = shl nsw i64 %123, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %121, i8 0, i64 %124, i1 false)
  br label %125

125:                                              ; preds = %89, %117
  %126 = load ptr, ptr @ipa_reference_vars_vector, align 8
  %127 = load i32, ptr %18, align 8, !tbaa !110
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds %struct.VEC_ipa_reference_vars_info_t_base, ptr %126, i64 0, i32 2, i64 %128
  store ptr null, ptr %129, align 8, !tbaa !89
  ret void
}

declare void @bitmap_obstack_release(ptr noundef) local_unnamed_addr #3

declare i32 @flags_from_decl_or_type(ptr noundef) local_unnamed_addr #3

declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #3

declare ptr @splay_tree_lookup(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @ipa_init() unnamed_addr #11 !prof !129 !PGOFuncName !263 {
  %1 = load i1, ptr @ipa_init.init_p, align 1
  br i1 %1, label %12, label %2, !prof !196

2:                                                ; preds = %0
  store i1 true, ptr @ipa_init.init_p, align 1
  %3 = tail call ptr @build_string(i32 noundef 7, ptr noundef nonnull @.str.18) #17
  store ptr %3, ptr @memory_identifier_string, align 8, !tbaa !89
  %4 = tail call ptr @splay_tree_new_with_allocator(ptr noundef nonnull @splay_tree_compare_ints, ptr noundef null, ptr noundef null, ptr noundef nonnull @ggc_splay_alloc, ptr noundef nonnull @ggc_splay_dont_free, ptr noundef null) #17
  store ptr %4, ptr @reference_vars_to_consider, align 8, !tbaa !89
  tail call void @bitmap_obstack_initialize(ptr noundef nonnull @local_info_obstack) #17
  tail call void @bitmap_obstack_initialize(ptr noundef nonnull @global_info_obstack) #17
  %5 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @local_info_obstack) #17
  store ptr %5, ptr @module_statics_escape, align 8, !tbaa !89
  %6 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @local_info_obstack) #17
  store ptr %6, ptr @module_statics_written, align 8, !tbaa !89
  %7 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @global_info_obstack) #17
  store ptr %7, ptr @all_module_statics, align 8, !tbaa !89
  %8 = tail call ptr @pointer_set_create() #17
  store ptr %8, ptr @visited_nodes, align 8, !tbaa !89
  %9 = tail call ptr @cgraph_add_function_insertion_hook(ptr noundef nonnull @add_new_function, ptr noundef null) #17
  store ptr %9, ptr @function_insertion_hook_holder, align 8, !tbaa !89
  %10 = tail call ptr @cgraph_add_node_removal_hook(ptr noundef nonnull @remove_node_data, ptr noundef null) #17
  store ptr %10, ptr @node_removal_hook_holder, align 8, !tbaa !89
  %11 = tail call ptr @cgraph_add_node_duplication_hook(ptr noundef nonnull @duplicate_node_data, ptr noundef null) #17
  store ptr %11, ptr @node_duplication_hook_holder, align 8, !tbaa !89
  br label %12

12:                                               ; preds = %0, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @analyze_function(ptr noundef %0) unnamed_addr #10 !prof !264 !PGOFuncName !265 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = load ptr, ptr %0, align 8, !tbaa !139
  %4 = getelementptr inbounds %struct.tree_function_decl, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !100
  %6 = load ptr, ptr @dump_file, align 8, !tbaa !89
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8, !prof !266

8:                                                ; preds = %1
  %9 = tail call ptr @cgraph_node_name(ptr noundef nonnull %0) #17
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %6, ptr noundef nonnull @.str.20, ptr noundef %9)
  br label %11

11:                                               ; preds = %8, %1
  %12 = load ptr, ptr %4, align 8, !tbaa !100
  tail call void @push_cfun(ptr noundef %12) #17
  store ptr %3, ptr @current_function_decl, align 8, !tbaa !89
  %13 = tail call fastcc ptr @init_function_info(ptr noundef nonnull %0)
  %14 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !267
  %16 = load ptr, ptr %15, align 8, !tbaa !269
  %17 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 6
  %18 = load ptr, ptr %17, align 8, !tbaa !271
  %19 = getelementptr inbounds %struct.control_flow_graph, ptr %15, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !273
  %21 = icmp eq ptr %18, %20
  br i1 %21, label %222, label %22, !prof !274

22:                                               ; preds = %11
  %23 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 24
  br label %31

24:                                               ; preds = %218, %104
  %25 = getelementptr inbounds %struct.basic_block_def, ptr %32, i64 0, i32 6
  %26 = load ptr, ptr %25, align 8, !tbaa !271
  %27 = load ptr, ptr %14, align 8, !tbaa !267
  %28 = getelementptr inbounds %struct.control_flow_graph, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !273
  %30 = icmp eq ptr %26, %29
  br i1 %30, label %222, label %31, !prof !275, !llvm.loop !276

31:                                               ; preds = %22, %24
  %32 = phi ptr [ %18, %22 ], [ %26, %24 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #17
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %32) #17
  %33 = load ptr, ptr %2, align 8, !tbaa.struct !277
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #17
  %34 = icmp eq ptr %33, null
  br i1 %34, label %88, label %35, !prof !278

35:                                               ; preds = %31, %84
  %36 = phi ptr [ %86, %84 ], [ %33, %31 ]
  %37 = load ptr, ptr %36, align 8, !tbaa !279
  %38 = getelementptr inbounds %struct.gimple_statement_phi, ptr %37, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !100
  %40 = call zeroext i8 @is_gimple_reg(ptr noundef %39) #17
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %48, label %42, !prof !281

42:                                               ; preds = %35
  %43 = getelementptr inbounds %struct.gimple_statement_phi, ptr %37, i64 0, i32 2
  %44 = load i32, ptr %43, align 4, !tbaa !100
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %48, !prof !282

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.gimple_statement_phi, ptr %37, i64 0, i32 4, i64 0
  br label %48

48:                                               ; preds = %42, %35, %46
  %49 = phi i32 [ 1, %46 ], [ 0, %35 ], [ 0, %42 ]
  %50 = phi i32 [ %44, %46 ], [ 0, %35 ], [ %44, %42 ]
  %51 = phi ptr [ %37, %46 ], [ null, %35 ], [ %37, %42 ]
  %52 = phi i1 [ true, %46 ], [ false, %35 ], [ false, %42 ]
  %53 = phi i8 [ 0, %46 ], [ 1, %35 ], [ 1, %42 ]
  %54 = phi ptr [ %47, %46 ], [ null, %35 ], [ null, %42 ]
  br i1 %52, label %55, label %84, !prof !283

55:                                               ; preds = %48
  %56 = getelementptr inbounds %struct.gimple_statement_phi, ptr %51, i64 0, i32 1
  br label %57

57:                                               ; preds = %55, %79
  %58 = phi ptr [ %54, %55 ], [ %82, %79 ]
  %59 = phi i8 [ %53, %55 ], [ %81, %79 ]
  %60 = phi i32 [ %49, %55 ], [ %80, %79 ]
  %61 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %58, i64 0, i32 3
  %62 = load ptr, ptr %61, align 8, !tbaa !284
  %63 = load ptr, ptr %62, align 8, !tbaa !89
  %64 = load i64, ptr %63, align 8
  %65 = and i64 %64, 65535
  %66 = icmp eq i64 %65, 121
  br i1 %66, label %67, label %69, !prof !286

67:                                               ; preds = %57
  %68 = call ptr @get_base_var(ptr noundef nonnull %63) #17
  call fastcc void @mark_address_taken(ptr noundef %68)
  br label %69

69:                                               ; preds = %67, %57
  %70 = icmp slt i32 %60, %50
  br i1 %70, label %71, label %79, !prof !287

71:                                               ; preds = %69
  %72 = add nsw i32 %60, 1
  %73 = load i32, ptr %56, align 8, !tbaa !100
  %74 = icmp ult i32 %73, %60
  br i1 %74, label %75, label %76, !prof !288

75:                                               ; preds = %71
  call void @fancy_abort(ptr noundef nonnull @.str.22, i32 noundef 3103, ptr noundef nonnull @.str.3) #17
  br label %76

76:                                               ; preds = %75, %71
  %77 = zext i32 %60 to i64
  %78 = getelementptr inbounds %struct.gimple_statement_phi, ptr %51, i64 0, i32 4, i64 %77
  br label %79

79:                                               ; preds = %69, %76
  %80 = phi i32 [ %72, %76 ], [ %60, %69 ]
  %81 = phi i8 [ %59, %76 ], [ 1, %69 ]
  %82 = phi ptr [ %78, %76 ], [ null, %69 ]
  %83 = icmp eq i8 %81, 0
  br i1 %83, label %57, label %84, !prof !289, !llvm.loop !290

84:                                               ; preds = %79, %48
  %85 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %36, i64 0, i32 2
  %86 = load ptr, ptr %85, align 8, !tbaa !291
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %35, !prof !292, !llvm.loop !293

88:                                               ; preds = %84, %31
  %89 = getelementptr inbounds %struct.basic_block_def, ptr %32, i64 0, i32 13
  %90 = load i32, ptr %89, align 8, !tbaa !294, !noalias !295
  %91 = and i32 %90, 512
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %99, !prof !298

93:                                               ; preds = %88
  %94 = getelementptr inbounds %struct.basic_block_def, ptr %32, i64 0, i32 7
  %95 = load ptr, ptr %94, align 8, !tbaa !100, !noalias !295
  %96 = icmp eq ptr %95, null
  br i1 %96, label %99, label %97, !prof !299

97:                                               ; preds = %93
  %98 = load ptr, ptr %95, align 8, !tbaa !300, !noalias !295
  br label %99

99:                                               ; preds = %97, %93, %88
  %100 = phi ptr [ %98, %97 ], [ null, %93 ], [ null, %88 ]
  %101 = icmp eq ptr %100, null
  br i1 %101, label %104, label %102, !prof !299

102:                                              ; preds = %99
  %103 = load ptr, ptr %100, align 8, !tbaa !302, !noalias !295
  br label %104

104:                                              ; preds = %99, %102
  %105 = phi ptr [ %103, %102 ], [ null, %99 ]
  %106 = icmp eq ptr %105, null
  br i1 %106, label %24, label %107, !prof !304

107:                                              ; preds = %104, %218
  %108 = phi ptr [ %220, %218 ], [ %105, %104 ]
  %109 = load ptr, ptr %108, align 8, !tbaa !279
  %110 = load i32, ptr %109, align 8
  %111 = and i32 %110, 255
  %112 = icmp eq i32 %111, 2
  br i1 %112, label %218, label %113, !prof !305

113:                                              ; preds = %107
  %114 = load ptr, ptr @ipa_reference_vars_vector, align 8, !nonnull !151, !noundef !151
  %115 = load i32, ptr %114, align 8, !tbaa !108
  %116 = load i32, ptr %23, align 8, !tbaa !110
  %117 = icmp ugt i32 %115, %116
  call void @llvm.assume(i1 %117)
  %118 = zext i32 %116 to i64
  %119 = getelementptr inbounds %struct.VEC_ipa_reference_vars_info_t_base, ptr %114, i64 0, i32 2, i64 %118
  %120 = load ptr, ptr %119, align 8, !tbaa !89
  %121 = load ptr, ptr %120, align 8, !tbaa !135
  %122 = call zeroext i8 @walk_stmt_load_store_addr_ops(ptr noundef nonnull %109, ptr noundef %121, ptr noundef nonnull @mark_load, ptr noundef nonnull @mark_store, ptr noundef nonnull @mark_address) #17
  %123 = load i32, ptr %109, align 8
  %124 = trunc i32 %123 to i8
  switch i8 %124, label %218 [
    i8 8, label %134
    i8 7, label %125
  ], !prof !306

125:                                              ; preds = %113
  %126 = getelementptr inbounds %struct.gimple_statement_asm, ptr %109, i64 0, i32 4
  %127 = load i8, ptr %126, align 2, !tbaa !100
  %128 = icmp eq i8 %127, 0
  br i1 %128, label %218, label %129

129:                                              ; preds = %125
  %130 = getelementptr inbounds %struct.gimple_statement_asm, ptr %109, i64 0, i32 2
  %131 = getelementptr inbounds %struct.gimple_statement_asm, ptr %109, i64 0, i32 3
  %132 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %121, i64 0, i32 2
  %133 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %121, i64 0, i32 3
  br label %176

134:                                              ; preds = %113
  %135 = call i32 @gimple_call_flags(ptr noundef nonnull %109) #17
  %136 = load i32, ptr %109, align 8
  %137 = and i32 %136, 255
  %138 = add nsw i32 %137, -10
  %139 = icmp ult i32 %138, -9
  br i1 %139, label %153, label %140, !prof !307

140:                                              ; preds = %134
  %141 = zext nneg i32 %137 to i64
  %142 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %141
  %143 = load i32, ptr %142, align 4, !tbaa !104
  %144 = zext i32 %143 to i64
  %145 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %144
  %146 = load i64, ptr %145, align 8, !tbaa !164
  %147 = icmp eq i64 %146, 0
  br i1 %147, label %148, label %149, !prof !307

148:                                              ; preds = %140
  call void @fancy_abort(ptr noundef nonnull @.str.22, i32 noundef 1622, ptr noundef nonnull @.str.3) #17
  br label %149

149:                                              ; preds = %148, %140
  %150 = getelementptr inbounds i8, ptr %109, i64 %146
  %151 = getelementptr inbounds ptr, ptr %150, i64 1
  %152 = load ptr, ptr %151, align 8, !tbaa !89
  br label %153

153:                                              ; preds = %149, %134
  %154 = phi ptr [ %152, %149 ], [ null, %134 ]
  %155 = load i64, ptr %154, align 8
  %156 = and i64 %155, 65535
  %157 = icmp eq i64 %156, 121
  br i1 %157, label %158, label %162, !prof !308

158:                                              ; preds = %153
  %159 = getelementptr inbounds %struct.tree_exp, ptr %154, i64 0, i32 3
  %160 = load ptr, ptr %159, align 8, !tbaa !100
  %161 = icmp eq ptr %160, null
  br label %162

162:                                              ; preds = %158, %153
  %163 = phi i1 [ %161, %158 ], [ true, %153 ]
  %164 = and i32 %135, 1
  %165 = icmp eq i32 %164, 0
  %166 = select i1 %163, i1 %165, i1 false, !prof !307
  br i1 %166, label %167, label %218, !prof !307

167:                                              ; preds = %162
  %168 = and i32 %135, 2
  %169 = icmp ne i32 %168, 0
  %170 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %121, i64 0, i32 2
  store i8 1, ptr %170, align 8, !tbaa !136
  %171 = and i32 %135, 72
  %172 = icmp eq i32 %171, 72
  %173 = or i1 %169, %172
  br i1 %173, label %218, label %174

174:                                              ; preds = %167
  %175 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %121, i64 0, i32 3
  store i8 1, ptr %175, align 1, !tbaa !138
  br label %218

176:                                              ; preds = %129, %213
  %177 = phi i8 [ %127, %129 ], [ %215, %213 ]
  %178 = phi i64 [ 0, %129 ], [ %214, %213 ]
  %179 = zext i8 %177 to i32
  %180 = trunc i64 %178 to i32
  %181 = icmp ult i32 %179, %180
  br i1 %181, label %182, label %183

182:                                              ; preds = %176
  call void @fancy_abort(ptr noundef nonnull @.str.22, i32 noundef 2688, ptr noundef nonnull @.str.3) #17
  br label %183

183:                                              ; preds = %182, %176
  %184 = load i8, ptr %130, align 8, !tbaa !100
  %185 = zext i8 %184 to i64
  %186 = add nuw i64 %178, %185
  %187 = load i8, ptr %131, align 1, !tbaa !100
  %188 = zext i8 %187 to i64
  %189 = add i64 %186, %188
  %190 = load i32, ptr %109, align 8
  %191 = and i32 %190, 255
  %192 = add nsw i32 %191, -1
  %193 = icmp ult i32 %192, 9
  call void @llvm.assume(i1 %193)
  %194 = zext nneg i32 %191 to i64
  %195 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %194
  %196 = load i32, ptr %195, align 4, !tbaa !104
  %197 = zext i32 %196 to i64
  %198 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %197
  %199 = load i64, ptr %198, align 8, !tbaa !164
  %200 = icmp eq i64 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %183
  call void @fancy_abort(ptr noundef nonnull @.str.22, i32 noundef 1622, ptr noundef nonnull @.str.3) #17
  br label %202

202:                                              ; preds = %201, %183
  %203 = getelementptr inbounds i8, ptr %109, i64 %199
  %204 = and i64 %189, 4294967295
  %205 = getelementptr inbounds ptr, ptr %203, i64 %204
  %206 = load ptr, ptr %205, align 8, !tbaa !89
  %207 = getelementptr inbounds %struct.tree_list, ptr %206, i64 0, i32 2
  %208 = load ptr, ptr %207, align 8, !tbaa !100
  %209 = load ptr, ptr @memory_identifier_string, align 8, !tbaa !89
  %210 = call i32 @simple_cst_equal(ptr noundef %208, ptr noundef %209) #17
  %211 = icmp eq i32 %210, 1
  br i1 %211, label %212, label %213

212:                                              ; preds = %202
  store i8 1, ptr %132, align 8, !tbaa !136
  store i8 1, ptr %133, align 1, !tbaa !138
  br label %213

213:                                              ; preds = %212, %202
  %214 = add nuw nsw i64 %178, 1
  %215 = load i8, ptr %126, align 2, !tbaa !100
  %216 = zext i8 %215 to i64
  %217 = icmp ult i64 %214, %216
  br i1 %217, label %176, label %218, !llvm.loop !309

218:                                              ; preds = %213, %167, %125, %113, %107, %162, %174
  %219 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %108, i64 0, i32 2
  %220 = load ptr, ptr %219, align 8, !tbaa !291
  %221 = icmp eq ptr %220, null
  br i1 %221, label %24, label %107, !prof !310, !llvm.loop !311

222:                                              ; preds = %24, %11
  %223 = load ptr, ptr @ipa_reference_vars_vector, align 8, !nonnull !151, !noundef !151
  %224 = load i32, ptr %223, align 8, !tbaa !108
  %225 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 24
  %226 = load i32, ptr %225, align 8, !tbaa !110
  %227 = icmp ugt i32 %224, %226
  call void @llvm.assume(i1 %227)
  %228 = zext i32 %226 to i64
  %229 = getelementptr inbounds %struct.VEC_ipa_reference_vars_info_t_base, ptr %223, i64 0, i32 2, i64 %228
  %230 = load ptr, ptr %229, align 8, !tbaa !89
  %231 = load ptr, ptr %230, align 8, !tbaa !135
  %232 = call i32 @flags_from_decl_or_type(ptr noundef %3) #17
  %233 = and i32 %232, 72
  %234 = icmp eq i32 %233, 72
  br i1 %234, label %235, label %239, !prof !223

235:                                              ; preds = %222
  %236 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %231, i64 0, i32 3
  store i8 0, ptr %236, align 1, !tbaa !138
  %237 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %231, i64 0, i32 1
  %238 = load ptr, ptr %237, align 8, !tbaa !155
  call void @bitmap_clear(ptr noundef %238) #17
  br label %239

239:                                              ; preds = %235, %222
  %240 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %231, i64 0, i32 3
  %241 = load i8, ptr %240, align 1, !tbaa !138
  %242 = icmp eq i8 %241, 0
  br i1 %242, label %246, label %243, !prof !266

243:                                              ; preds = %239
  %244 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %231, i64 0, i32 1
  %245 = load ptr, ptr %244, align 8, !tbaa !155
  call void @bitmap_obstack_free(ptr noundef %245) #17
  store ptr null, ptr %244, align 8, !tbaa !155
  br label %246

246:                                              ; preds = %243, %239
  %247 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %231, i64 0, i32 2
  %248 = load i8, ptr %247, align 8, !tbaa !136
  %249 = icmp eq i8 %248, 0
  br i1 %249, label %252, label %250, !prof !266

250:                                              ; preds = %246
  %251 = load ptr, ptr %231, align 8, !tbaa !154
  call void @bitmap_obstack_free(ptr noundef %251) #17
  store ptr null, ptr %231, align 8, !tbaa !154
  br label %252

252:                                              ; preds = %250, %246
  call void @pop_cfun() #17
  store ptr null, ptr @current_function_decl, align 8, !tbaa !89
  ret void
}

declare void @pointer_set_destroy(ptr noundef) local_unnamed_addr #3

declare void @splay_tree_remove(ptr noundef, i64 noundef) local_unnamed_addr #3

declare zeroext i8 @bitmap_and_compl_into(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @bitmap_and_into(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build_string(i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @splay_tree_new_with_allocator(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @splay_tree_compare_ints(i64 noundef, i64 noundef) #3

declare ptr @ggc_splay_alloc(i32 noundef, ptr noundef) #3

declare void @ggc_splay_dont_free(ptr noundef, ptr noundef) #3

declare void @bitmap_obstack_initialize(ptr noundef) local_unnamed_addr #3

declare ptr @pointer_set_create() local_unnamed_addr #3

declare ptr @cgraph_add_function_insertion_hook(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal void @add_new_function(ptr noundef %0, ptr nocapture readnone %1) #11 !prof !88 {
  tail call fastcc void @analyze_function(ptr noundef %0)
  store ptr null, ptr @visited_nodes, align 8, !tbaa !89
  ret void
}

declare ptr @cgraph_add_node_removal_hook(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @remove_node_data(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #10 !prof !258 !PGOFuncName !312 {
  %3 = load ptr, ptr @ipa_reference_vars_vector, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5, !prof !260

5:                                                ; preds = %2
  %6 = load i32, ptr %3, align 8, !tbaa !108
  %7 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 24
  %8 = load i32, ptr %7, align 8, !tbaa !110
  %9 = icmp ugt i32 %6, %8
  br i1 %9, label %10, label %16, !prof !261

10:                                               ; preds = %5
  %11 = zext i32 %8 to i64
  %12 = getelementptr inbounds %struct.VEC_ipa_reference_vars_info_t_base, ptr %3, i64 0, i32 2, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !89
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15, !prof !260

15:                                               ; preds = %10
  tail call fastcc void @clean_function(ptr noundef %0)
  br label %16

16:                                               ; preds = %5, %2, %15, %10
  ret void
}

declare ptr @cgraph_add_node_duplication_hook(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @duplicate_node_data(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #10 !prof !313 !PGOFuncName !314 {
  %4 = load ptr, ptr @ipa_reference_vars_vector, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %15, label %6, !prof !315

6:                                                ; preds = %3
  %7 = load i32, ptr %4, align 8, !tbaa !108
  %8 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 24
  %9 = load i32, ptr %8, align 8, !tbaa !110
  %10 = icmp ugt i32 %7, %9
  br i1 %10, label %11, label %15, !prof !316

11:                                               ; preds = %6
  %12 = zext i32 %9 to i64
  %13 = getelementptr inbounds %struct.VEC_ipa_reference_vars_info_t_base, ptr %4, i64 0, i32 2, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !89
  br label %15

15:                                               ; preds = %11, %6, %3
  %16 = phi ptr [ %14, %11 ], [ null, %6 ], [ null, %3 ]
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18, !prof !315

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.ipa_reference_vars_info_d, ptr %16, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !118
  br label %21

21:                                               ; preds = %15, %18
  %22 = phi ptr [ %20, %18 ], [ null, %15 ]
  br i1 %5, label %32, label %23, !prof !315

23:                                               ; preds = %21
  %24 = load i32, ptr %4, align 8, !tbaa !108
  %25 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 24
  %26 = load i32, ptr %25, align 8, !tbaa !110
  %27 = icmp ugt i32 %24, %26
  br i1 %27, label %28, label %32, !prof !316

28:                                               ; preds = %23
  %29 = zext i32 %26 to i64
  %30 = getelementptr inbounds %struct.VEC_ipa_reference_vars_info_t_base, ptr %4, i64 0, i32 2, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !89
  br label %32

32:                                               ; preds = %28, %23, %21
  %33 = phi ptr [ %31, %28 ], [ null, %23 ], [ null, %21 ]
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35, !prof !315

35:                                               ; preds = %32
  %36 = load ptr, ptr %33, align 8, !tbaa !135
  br label %37

37:                                               ; preds = %32, %35
  %38 = phi ptr [ %36, %35 ], [ null, %32 ]
  %39 = icmp ne ptr %38, null
  %40 = icmp ne ptr %22, null
  %41 = select i1 %39, i1 true, i1 %40, !prof !316
  br i1 %41, label %42, label %150, !prof !316

42:                                               ; preds = %37
  %43 = tail call fastcc ptr @init_function_info(ptr noundef %1)
  br i1 %39, label %44, label %89, !prof !316

44:                                               ; preds = %42
  %45 = load ptr, ptr @ipa_reference_vars_vector, align 8
  %46 = icmp eq ptr %45, null
  br i1 %46, label %56, label %47, !prof !315

47:                                               ; preds = %44
  %48 = load i32, ptr %45, align 8, !tbaa !108
  %49 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 24
  %50 = load i32, ptr %49, align 8, !tbaa !110
  %51 = icmp ugt i32 %48, %50
  br i1 %51, label %52, label %56, !prof !316

52:                                               ; preds = %47
  %53 = zext i32 %50 to i64
  %54 = getelementptr inbounds %struct.VEC_ipa_reference_vars_info_t_base, ptr %45, i64 0, i32 2, i64 %53
  %55 = load ptr, ptr %54, align 8, !tbaa !89
  br label %56

56:                                               ; preds = %52, %47, %44
  %57 = phi ptr [ %55, %52 ], [ null, %47 ], [ null, %44 ]
  %58 = icmp eq ptr %57, null
  br i1 %58, label %61, label %59, !prof !315

59:                                               ; preds = %56
  %60 = load ptr, ptr %57, align 8, !tbaa !135
  br label %61

61:                                               ; preds = %56, %59
  %62 = phi ptr [ %60, %59 ], [ null, %56 ]
  %63 = load ptr, ptr %38, align 8, !tbaa !154
  %64 = icmp eq ptr %63, null
  br i1 %64, label %70, label %65, !prof !315

65:                                               ; preds = %61
  %66 = load ptr, ptr @all_module_statics, align 8, !tbaa !89
  %67 = icmp eq ptr %66, %63
  br i1 %67, label %70, label %68, !prof !315

68:                                               ; preds = %65
  %69 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @local_info_obstack) #17
  tail call void @bitmap_copy(ptr noundef %69, ptr noundef nonnull %63) #17
  br label %70

70:                                               ; preds = %61, %65, %68
  %71 = phi ptr [ %69, %68 ], [ null, %61 ], [ %66, %65 ]
  store ptr %71, ptr %62, align 8, !tbaa !154
  %72 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %38, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !155
  %74 = icmp eq ptr %73, null
  br i1 %74, label %80, label %75, !prof !315

75:                                               ; preds = %70
  %76 = load ptr, ptr @all_module_statics, align 8, !tbaa !89
  %77 = icmp eq ptr %76, %73
  br i1 %77, label %80, label %78, !prof !315

78:                                               ; preds = %75
  %79 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @local_info_obstack) #17
  tail call void @bitmap_copy(ptr noundef %79, ptr noundef nonnull %73) #17
  br label %80

80:                                               ; preds = %70, %75, %78
  %81 = phi ptr [ %79, %78 ], [ null, %70 ], [ %76, %75 ]
  %82 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %62, i64 0, i32 1
  store ptr %81, ptr %82, align 8, !tbaa !155
  %83 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %38, i64 0, i32 2
  %84 = load i8, ptr %83, align 8, !tbaa !136
  %85 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %62, i64 0, i32 2
  store i8 %84, ptr %85, align 8, !tbaa !136
  %86 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %38, i64 0, i32 3
  %87 = load i8, ptr %86, align 1, !tbaa !138
  %88 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %62, i64 0, i32 3
  store i8 %87, ptr %88, align 1, !tbaa !138
  br label %89

89:                                               ; preds = %80, %42
  br i1 %40, label %90, label %150, !prof !315

90:                                               ; preds = %89
  %91 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 32) #17
  %92 = load ptr, ptr @ipa_reference_vars_vector, align 8, !nonnull !151, !noundef !151
  %93 = load i32, ptr %92, align 8, !tbaa !108
  %94 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 24
  %95 = load i32, ptr %94, align 8, !tbaa !110
  %96 = icmp ugt i32 %93, %95
  tail call void @llvm.assume(i1 %96)
  %97 = zext i32 %95 to i64
  %98 = getelementptr inbounds %struct.VEC_ipa_reference_vars_info_t_base, ptr %92, i64 0, i32 2, i64 %97
  %99 = load ptr, ptr %98, align 8, !tbaa !89
  %100 = getelementptr inbounds %struct.ipa_reference_vars_info_d, ptr %99, i64 0, i32 1
  store ptr %91, ptr %100, align 8, !tbaa !118
  %101 = load ptr, ptr %98, align 8, !tbaa !89
  %102 = icmp eq ptr %101, null
  br i1 %102, label %106, label %103

103:                                              ; preds = %90
  %104 = getelementptr inbounds %struct.ipa_reference_vars_info_d, ptr %101, i64 0, i32 1
  %105 = load ptr, ptr %104, align 8, !tbaa !118
  br label %106

106:                                              ; preds = %90, %103
  %107 = phi ptr [ %105, %103 ], [ null, %90 ]
  %108 = load ptr, ptr %22, align 8, !tbaa !120
  %109 = icmp eq ptr %108, null
  br i1 %109, label %115, label %110

110:                                              ; preds = %106
  %111 = load ptr, ptr @all_module_statics, align 8, !tbaa !89
  %112 = icmp eq ptr %111, %108
  br i1 %112, label %115, label %113

113:                                              ; preds = %110
  %114 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @global_info_obstack) #17
  tail call void @bitmap_copy(ptr noundef %114, ptr noundef nonnull %108) #17
  br label %115

115:                                              ; preds = %106, %110, %113
  %116 = phi ptr [ %114, %113 ], [ null, %106 ], [ %111, %110 ]
  store ptr %116, ptr %107, align 8, !tbaa !120
  %117 = getelementptr inbounds %struct.ipa_reference_global_vars_info_d, ptr %22, i64 0, i32 1
  %118 = load ptr, ptr %117, align 8, !tbaa !122
  %119 = icmp eq ptr %118, null
  br i1 %119, label %125, label %120

120:                                              ; preds = %115
  %121 = load ptr, ptr @all_module_statics, align 8, !tbaa !89
  %122 = icmp eq ptr %121, %118
  br i1 %122, label %125, label %123

123:                                              ; preds = %120
  %124 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @global_info_obstack) #17
  tail call void @bitmap_copy(ptr noundef %124, ptr noundef nonnull %118) #17
  br label %125

125:                                              ; preds = %115, %120, %123
  %126 = phi ptr [ %124, %123 ], [ null, %115 ], [ %121, %120 ]
  %127 = getelementptr inbounds %struct.ipa_reference_global_vars_info_d, ptr %107, i64 0, i32 1
  store ptr %126, ptr %127, align 8, !tbaa !122
  %128 = getelementptr inbounds %struct.ipa_reference_global_vars_info_d, ptr %22, i64 0, i32 2
  %129 = load ptr, ptr %128, align 8, !tbaa !123
  %130 = icmp eq ptr %129, null
  br i1 %130, label %136, label %131

131:                                              ; preds = %125
  %132 = load ptr, ptr @all_module_statics, align 8, !tbaa !89
  %133 = icmp eq ptr %132, %129
  br i1 %133, label %136, label %134

134:                                              ; preds = %131
  %135 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @global_info_obstack) #17
  tail call void @bitmap_copy(ptr noundef %135, ptr noundef nonnull %129) #17
  br label %136

136:                                              ; preds = %125, %131, %134
  %137 = phi ptr [ %135, %134 ], [ null, %125 ], [ %132, %131 ]
  %138 = getelementptr inbounds %struct.ipa_reference_global_vars_info_d, ptr %107, i64 0, i32 2
  store ptr %137, ptr %138, align 8, !tbaa !123
  %139 = getelementptr inbounds %struct.ipa_reference_global_vars_info_d, ptr %22, i64 0, i32 3
  %140 = load ptr, ptr %139, align 8, !tbaa !124
  %141 = icmp eq ptr %140, null
  br i1 %141, label %147, label %142

142:                                              ; preds = %136
  %143 = load ptr, ptr @all_module_statics, align 8, !tbaa !89
  %144 = icmp eq ptr %143, %140
  br i1 %144, label %147, label %145

145:                                              ; preds = %142
  %146 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @global_info_obstack) #17
  tail call void @bitmap_copy(ptr noundef %146, ptr noundef nonnull %140) #17
  br label %147

147:                                              ; preds = %136, %142, %145
  %148 = phi ptr [ %146, %145 ], [ null, %136 ], [ %143, %142 ]
  %149 = getelementptr inbounds %struct.ipa_reference_global_vars_info_d, ptr %107, i64 0, i32 3
  store ptr %148, ptr %149, align 8, !tbaa !124
  br label %150

150:                                              ; preds = %89, %147, %37
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @init_function_info(ptr nocapture noundef readonly %0) unnamed_addr #10 !prof !252 !PGOFuncName !317 {
  %2 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 16) #17
  %3 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #17
  %4 = load ptr, ptr @ipa_reference_vars_vector, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6, !prof !318

6:                                                ; preds = %1
  %7 = load i32, ptr %4, align 8, !tbaa !108
  %8 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 24
  %9 = load i32, ptr %8, align 8, !tbaa !110
  %10 = icmp ugt i32 %7, %9
  br i1 %10, label %44, label %11, !prof !319

11:                                               ; preds = %6, %1
  %12 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 24
  %13 = load i32, ptr %12, align 8, !tbaa !110
  %14 = add nsw i32 %13, 1
  br i1 %5, label %17, label %15, !prof !131

15:                                               ; preds = %11
  %16 = load i32, ptr %4, align 8, !tbaa !108
  br label %17

17:                                               ; preds = %15, %11
  %18 = phi i32 [ %16, %15 ], [ 0, %11 ]
  br i1 %5, label %21, label %19, !prof !131

19:                                               ; preds = %17
  %20 = load i32, ptr %4, align 8, !tbaa !108
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i32 [ %20, %19 ], [ 0, %17 ]
  %23 = sub nsw i32 %14, %22
  br i1 %5, label %30, label %24, !prof !131

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.VEC_ipa_reference_vars_info_t_base, ptr %4, i64 0, i32 1
  %26 = load i32, ptr %25, align 4, !tbaa !262
  %27 = load i32, ptr %4, align 8, !tbaa !108
  %28 = sub i32 %26, %27
  %29 = icmp uge i32 %28, %23
  br label %32

30:                                               ; preds = %21
  %31 = icmp eq i32 %22, %14
  br label %32

32:                                               ; preds = %30, %24
  %33 = phi i1 [ %29, %24 ], [ %31, %30 ]
  br i1 %33, label %36, label %34, !prof !196

34:                                               ; preds = %32
  %35 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef %4, i32 noundef %23) #17
  store ptr %35, ptr @ipa_reference_vars_vector, align 8, !tbaa !89
  br label %36

36:                                               ; preds = %34, %32
  %37 = load ptr, ptr @ipa_reference_vars_vector, align 8, !tbaa !89, !nonnull !151, !noundef !151
  store i32 %14, ptr %37, align 8, !tbaa !108
  %38 = getelementptr inbounds %struct.VEC_ipa_reference_vars_info_t_base, ptr %37, i64 0, i32 2
  %39 = sext i32 %18 to i64
  %40 = getelementptr inbounds ptr, ptr %38, i64 %39
  %41 = sub nsw i32 %14, %18
  %42 = sext i32 %41 to i64
  %43 = shl nsw i64 %42, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %40, i8 0, i64 %43, i1 false), !prof !320
  br label %44

44:                                               ; preds = %6, %36
  %45 = load ptr, ptr @ipa_reference_vars_vector, align 8
  %46 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 24
  %47 = load i32, ptr %46, align 8, !tbaa !110
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.VEC_ipa_reference_vars_info_t_base, ptr %45, i64 0, i32 2, i64 %48
  store ptr %2, ptr %49, align 8, !tbaa !89
  store ptr %3, ptr %2, align 8, !tbaa !135
  %50 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @local_info_obstack) #17
  store ptr %50, ptr %3, align 8, !tbaa !154
  %51 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @local_info_obstack) #17
  %52 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %3, i64 0, i32 1
  store ptr %51, ptr %52, align 8, !tbaa !155
  ret ptr %3
}

declare ptr @walk_tree_1(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noalias noundef ptr @scan_initializer_for_static_refs(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture readnone %2) #10 !prof !264 !PGOFuncName !321 {
  %4 = load ptr, ptr %0, align 8, !tbaa !89
  %5 = load i64, ptr %4, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 121
  br i1 %7, label %8, label %10, !prof !223

8:                                                ; preds = %3
  %9 = tail call ptr @get_base_var(ptr noundef nonnull %4) #17
  tail call fastcc void @mark_address_taken(ptr noundef %9)
  br label %15

10:                                               ; preds = %3
  %11 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %6
  %12 = load i32, ptr %11, align 4, !tbaa !104
  %13 = and i32 %12, -2
  %14 = icmp eq i32 %13, 2
  br i1 %14, label %15, label %16, !prof !223

15:                                               ; preds = %10, %8
  store i32 0, ptr %1, align 4, !tbaa !104
  br label %16

16:                                               ; preds = %15, %10
  ret ptr null
}

; Function Attrs: nounwind uwtable
define internal fastcc void @mark_address_taken(ptr noundef %0) unnamed_addr #10 !prof !88 !PGOFuncName !322 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 32
  %5 = load ptr, ptr @module_statics_escape, align 8
  %6 = icmp ne ptr %5, null
  %7 = select i1 %4, i1 %6, i1 false, !prof !323
  br i1 %7, label %8, label %16, !prof !323

8:                                                ; preds = %1
  %9 = tail call fastcc zeroext i8 @has_proper_scope_for_analysis(ptr noundef nonnull %0), !range !232
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %16, label %11, !prof !324

11:                                               ; preds = %8
  %12 = load ptr, ptr @module_statics_escape, align 8, !tbaa !89
  %13 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 2
  %14 = load i32, ptr %13, align 4, !tbaa !100
  %15 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %12, i32 noundef %14) #17
  br label %16

16:                                               ; preds = %11, %8, %1
  ret void
}

declare ptr @get_base_var(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc noundef zeroext i8 @has_proper_scope_for_analysis(ptr noundef %0) unnamed_addr #14 !prof !325 !PGOFuncName !326 {
  %2 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 8192
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %49, !prof !327

6:                                                ; preds = %1
  %7 = load i64, ptr %0, align 8
  %8 = and i64 %7, 524288
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %49, !prof !327

10:                                               ; preds = %6
  %11 = and i64 %7, 67108864
  %12 = and i64 %3, 33554432
  %13 = or disjoint i64 %11, %12
  %14 = icmp ne i64 %13, 0
  %15 = and i64 %7, 134217728
  %16 = or disjoint i64 %15, %12
  %17 = icmp eq i64 %16, 0
  %18 = and i1 %14, %17
  br i1 %18, label %19, label %49, !prof !328

19:                                               ; preds = %10
  %20 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !100
  %22 = getelementptr inbounds %struct.tree_type, ptr %21, i64 0, i32 6
  %23 = load i32, ptr %22, align 4
  %24 = and i32 %23, 2048
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %49, !prof !329

26:                                               ; preds = %19
  %27 = load ptr, ptr @all_module_statics, align 8, !tbaa !89
  %28 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 2
  %29 = load i32, ptr %28, align 4, !tbaa !100
  %30 = tail call i32 @bitmap_bit_p(ptr noundef %27, i32 noundef %29) #17
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %49, !prof !330

32:                                               ; preds = %26
  %33 = load i32, ptr %28, align 4, !tbaa !100
  %34 = load i64, ptr %0, align 8
  %35 = and i64 %34, 65535
  %36 = icmp eq i64 %35, 32
  br i1 %36, label %38, label %37, !prof !205

37:                                               ; preds = %32
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 293, ptr noundef nonnull @.str.3) #17
  br label %38

38:                                               ; preds = %37, %32
  %39 = load ptr, ptr @all_module_statics, align 8, !tbaa !89
  %40 = tail call i32 @bitmap_bit_p(ptr noundef %39, i32 noundef %33) #17
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %49, !prof !205

42:                                               ; preds = %38
  %43 = load ptr, ptr @reference_vars_to_consider, align 8, !tbaa !89
  %44 = sext i32 %33 to i64
  %45 = ptrtoint ptr %0 to i64
  %46 = tail call ptr @splay_tree_insert(ptr noundef %43, i64 noundef %44, i64 noundef %45) #17
  %47 = load ptr, ptr @all_module_statics, align 8, !tbaa !89
  %48 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %47, i32 noundef %33) #17
  br label %49

49:                                               ; preds = %42, %38, %10, %26, %19, %6, %1
  %50 = phi i8 [ 0, %1 ], [ 0, %6 ], [ 0, %10 ], [ 0, %19 ], [ 1, %26 ], [ 1, %38 ], [ 1, %42 ]
  ret i8 %50
}

declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @splay_tree_insert(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @push_cfun(ptr noundef) local_unnamed_addr #3

declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #3

declare void @bitmap_clear(ptr noundef) local_unnamed_addr #3

declare void @pop_cfun() local_unnamed_addr #3

declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @walk_stmt_load_store_addr_ops(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal noundef zeroext i8 @mark_load(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #14 !prof !331 !PGOFuncName !332 {
  %4 = load i64, ptr %1, align 8
  %5 = and i64 %4, 65535
  %6 = icmp eq i64 %5, 32
  br i1 %6, label %7, label %58, !prof !333

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 2
  %9 = load i64, ptr %8, align 8
  %10 = and i64 %9, 8192
  %11 = and i64 %4, 524288
  %12 = or disjoint i64 %10, %11
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %58, !prof !334

14:                                               ; preds = %7
  %15 = and i64 %4, 67108864
  %16 = and i64 %9, 33554432
  %17 = or disjoint i64 %16, %15
  %18 = icmp ne i64 %17, 0
  %19 = and i64 %4, 134217728
  %20 = or disjoint i64 %16, %19
  %21 = icmp eq i64 %20, 0
  %22 = and i1 %18, %21
  br i1 %22, label %23, label %58, !prof !328

23:                                               ; preds = %14
  %24 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !100
  %26 = getelementptr inbounds %struct.tree_type, ptr %25, i64 0, i32 6
  %27 = load i32, ptr %26, align 4
  %28 = and i32 %27, 2048
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %58, !prof !329

30:                                               ; preds = %23
  %31 = load ptr, ptr @all_module_statics, align 8, !tbaa !89
  %32 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1, i64 0, i32 2
  %33 = load i32, ptr %32, align 4, !tbaa !100
  %34 = tail call i32 @bitmap_bit_p(ptr noundef %31, i32 noundef %33) #17
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %53, !prof !330

36:                                               ; preds = %30
  %37 = load i32, ptr %32, align 4, !tbaa !100
  %38 = load i64, ptr %1, align 8
  %39 = and i64 %38, 65535
  %40 = icmp eq i64 %39, 32
  br i1 %40, label %42, label %41, !prof !205

41:                                               ; preds = %36
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 293, ptr noundef nonnull @.str.3) #17
  br label %42

42:                                               ; preds = %41, %36
  %43 = load ptr, ptr @all_module_statics, align 8, !tbaa !89
  %44 = tail call i32 @bitmap_bit_p(ptr noundef %43, i32 noundef %37) #17
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %53, !prof !205

46:                                               ; preds = %42
  %47 = load ptr, ptr @reference_vars_to_consider, align 8, !tbaa !89
  %48 = sext i32 %37 to i64
  %49 = ptrtoint ptr %1 to i64
  %50 = tail call ptr @splay_tree_insert(ptr noundef %47, i64 noundef %48, i64 noundef %49) #17
  %51 = load ptr, ptr @all_module_statics, align 8, !tbaa !89
  %52 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %51, i32 noundef %37) #17
  br label %53

53:                                               ; preds = %46, %42, %30
  %54 = load ptr, ptr %2, align 8, !tbaa !154
  %55 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1, i64 0, i32 2
  %56 = load i32, ptr %55, align 4, !tbaa !100
  %57 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %54, i32 noundef %56) #17
  br label %58

58:                                               ; preds = %7, %14, %23, %53, %3
  ret i8 0
}

; Function Attrs: cold nounwind uwtable
define internal noundef zeroext i8 @mark_store(ptr nocapture readnone %0, ptr noundef %1, ptr noundef readonly %2) #11 !prof !129 !PGOFuncName !335 {
  %4 = load i64, ptr %1, align 8
  %5 = and i64 %4, 65535
  %6 = icmp eq i64 %5, 32
  br i1 %6, label %7, label %25, !prof !196

7:                                                ; preds = %3
  %8 = tail call fastcc zeroext i8 @has_proper_scope_for_analysis(ptr noundef nonnull %1), !range !232
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %25, label %10

10:                                               ; preds = %7
  %11 = icmp eq ptr %2, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.ipa_reference_local_vars_info_d, ptr %2, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !155
  %15 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1, i64 0, i32 2
  %16 = load i32, ptr %15, align 4, !tbaa !100
  %17 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %14, i32 noundef %16) #17
  br label %18

18:                                               ; preds = %12, %10
  %19 = load ptr, ptr @module_statics_written, align 8, !tbaa !89
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1, i64 0, i32 2
  %23 = load i32, ptr %22, align 4, !tbaa !100
  %24 = tail call zeroext i8 @bitmap_set_bit(ptr noundef nonnull %19, i32 noundef %23) #17
  br label %25

25:                                               ; preds = %18, %21, %7, %3
  ret i8 0
}

; Function Attrs: nounwind uwtable
define internal noundef zeroext i8 @mark_address(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture readnone %2) #10 !prof !336 !PGOFuncName !337 {
  br label %4

4:                                                ; preds = %14, %3
  %5 = phi ptr [ %1, %3 ], [ %16, %14 ]
  %6 = load i64, ptr %5, align 8
  %7 = trunc i64 %6 to i16
  switch i16 %7, label %8 [
    i16 42, label %14
    i16 41, label %14
    i16 45, label %14
    i16 46, label %14
    i16 118, label %14
    i16 43, label %14
    i16 44, label %14
  ], !prof !338

8:                                                ; preds = %4
  %9 = and i64 %6, 65535
  %10 = icmp eq i64 %9, 32
  %11 = load ptr, ptr @module_statics_escape, align 8
  %12 = icmp ne ptr %11, null
  %13 = select i1 %10, i1 %12, i1 false, !prof !323
  br i1 %13, label %17, label %25, !prof !323

14:                                               ; preds = %4, %4, %4, %4, %4, %4, %4
  %15 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !100
  br label %4, !llvm.loop !339

17:                                               ; preds = %8
  %18 = tail call fastcc zeroext i8 @has_proper_scope_for_analysis(ptr noundef nonnull %5), !range !232
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %25, label %20, !prof !324

20:                                               ; preds = %17
  %21 = load ptr, ptr @module_statics_escape, align 8, !tbaa !89
  %22 = getelementptr inbounds %struct.tree_decl_minimal, ptr %5, i64 0, i32 2
  %23 = load i32, ptr %22, align 4, !tbaa !100
  %24 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %21, i32 noundef %23) #17
  br label %25

25:                                               ; preds = %8, %17, %20
  ret i8 0
}

declare i32 @gimple_call_flags(ptr noundef) local_unnamed_addr #3

declare i32 @simple_cst_equal(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @lto_create_simple_output_block(i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc zeroext i8 @write_node_summary_p(ptr noundef %0) unnamed_addr #11 !prof !88 {
  %2 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 19, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !340
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1032, ptr noundef nonnull @.str.3) #17
  br label %6

6:                                                ; preds = %1, %5
  %7 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 27
  %8 = load i16, ptr %7, align 4
  %9 = and i16 %8, 32
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %28, label %11

11:                                               ; preds = %6
  %12 = tail call i32 @cgraph_function_body_availability(ptr noundef %0) #17
  %13 = icmp ugt i32 %12, 1
  br i1 %13, label %14, label %28

14:                                               ; preds = %11
  %15 = load ptr, ptr @ipa_reference_vars_vector, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %28, label %17

17:                                               ; preds = %14
  %18 = load i32, ptr %15, align 8, !tbaa !108
  %19 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 24
  %20 = load i32, ptr %19, align 8, !tbaa !110
  %21 = icmp ugt i32 %18, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = zext i32 %20 to i64
  %24 = getelementptr inbounds %struct.VEC_ipa_reference_vars_info_t_base, ptr %15, i64 0, i32 2, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !89
  %26 = icmp ne ptr %25, null
  %27 = zext i1 %26 to i8
  br label %28

28:                                               ; preds = %22, %17, %14, %11, %6
  %29 = phi i8 [ 0, %11 ], [ 0, %6 ], [ %27, %22 ], [ 0, %17 ], [ 0, %14 ]
  ret i8 %29
}

declare void @lto_output_uleb128_stream(ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @lto_cgraph_encoder_encode(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @lto_output_sleb128_stream(ptr noundef, i64 noundef) local_unnamed_addr #3

declare i64 @bitmap_count_bits(ptr noundef) local_unnamed_addr #3

declare void @lto_output_var_decl_index(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @lto_destroy_simple_output_block(ptr noundef) local_unnamed_addr #3

declare ptr @lto_get_file_decl_data() local_unnamed_addr #3

declare ptr @lto_create_simple_input_block(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i64 @lto_input_uleb128(ptr noundef) local_unnamed_addr #3

declare ptr @lto_cgraph_encoder_deref(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i64 @lto_input_sleb128(ptr noundef) local_unnamed_addr #3

declare void @lto_destroy_simple_input_block(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #16

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nofree nounwind }
attributes #17 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!87}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86}
!35 = !{ptr @propagate, ptr @xcalloc, i64 81}
!36 = !{ptr @propagate, ptr @ipa_utils_reduced_inorder, i64 2}
!37 = !{ptr @propagate, ptr @cgraph_remove_function_insertion_hook, i64 1}
!38 = !{ptr @propagate, ptr @cgraph_function_body_availability, i64 69368}
!39 = !{ptr @propagate, ptr @flags_from_decl_or_type, i64 16389}
!40 = !{ptr @propagate, ptr @propagate_bits, i64 80}
!41 = !{ptr @propagate, ptr @bitmap_obstack_alloc_stat, i64 160}
!42 = !{ptr @propagate, ptr @free, i64 133}
!43 = !{ptr @propagate, ptr @bitmap_obstack_free, i64 104}
!44 = !{ptr @propagate, ptr @bitmap_obstack_release, i64 1}
!45 = !{ptr @generate_summary, ptr @ipa_init, i64 1}
!46 = !{ptr @generate_summary, ptr @bitmap_obstack_alloc_stat, i64 2}
!47 = !{ptr @generate_summary, ptr @walk_tree_1, i64 39}
!48 = !{ptr @generate_summary, ptr @cgraph_function_body_availability, i64 148}
!49 = !{ptr @generate_summary, ptr @analyze_function, i64 39}
!50 = !{ptr @generate_summary, ptr @pointer_set_destroy, i64 1}
!51 = !{ptr @generate_summary, ptr @splay_tree_remove, i64 38}
!52 = !{ptr @generate_summary, ptr @bitmap_and_compl_into, i64 1}
!53 = !{ptr @generate_summary, ptr @bitmap_and_compl, i64 2}
!54 = !{ptr @generate_summary, ptr @bitmap_obstack_free, i64 4}
!55 = !{ptr @generate_summary, ptr @bitmap_and_into, i64 78}
!56 = !{ptr @propagate_bits, ptr @cgraph_function_body_availability, i64 69173}
!57 = !{ptr @clean_function, ptr @bitmap_obstack_free, i64 140}
!58 = !{ptr @clean_function, ptr @free, i64 112}
!59 = !{ptr @ipa_init, ptr @build_string, i64 1}
!60 = !{ptr @ipa_init, ptr @splay_tree_new_with_allocator, i64 1}
!61 = !{ptr @ipa_init, ptr @bitmap_obstack_initialize, i64 2}
!62 = !{ptr @ipa_init, ptr @bitmap_obstack_alloc_stat, i64 3}
!63 = !{ptr @ipa_init, ptr @pointer_set_create, i64 1}
!64 = !{ptr @ipa_init, ptr @cgraph_add_function_insertion_hook, i64 1}
!65 = !{ptr @ipa_init, ptr @cgraph_add_node_removal_hook, i64 1}
!66 = !{ptr @ipa_init, ptr @cgraph_add_node_duplication_hook, i64 1}
!67 = !{ptr @analyze_function, ptr @push_cfun, i64 39}
!68 = !{ptr @analyze_function, ptr @init_function_info, i64 39}
!69 = !{ptr @analyze_function, ptr @gsi_start_phis, i64 146571}
!70 = !{ptr @analyze_function, ptr @is_gimple_reg, i64 41079}
!71 = !{ptr @analyze_function, ptr @walk_stmt_load_store_addr_ops, i64 355160}
!72 = !{ptr @analyze_function, ptr @gimple_call_flags, i64 69128}
!73 = !{ptr @analyze_function, ptr @flags_from_decl_or_type, i64 39}
!74 = !{ptr @analyze_function, ptr @pop_cfun, i64 39}
!75 = !{ptr @remove_node_data, ptr @clean_function, i64 42}
!76 = !{ptr @duplicate_node_data, ptr @init_function_info, i64 41}
!77 = !{ptr @duplicate_node_data, ptr @bitmap_obstack_alloc_stat, i64 82}
!78 = !{ptr @duplicate_node_data, ptr @bitmap_copy, i64 82}
!79 = !{ptr @init_function_info, ptr @xcalloc, i64 160}
!80 = !{ptr @init_function_info, ptr @vec_heap_p_reserve_exact, i64 1}
!81 = !{ptr @init_function_info, ptr @bitmap_obstack_alloc_stat, i64 160}
!82 = !{ptr @mark_load, ptr @bitmap_bit_p, i64 99}
!83 = !{ptr @mark_load, ptr @splay_tree_insert, i64 38}
!84 = !{ptr @mark_load, ptr @bitmap_set_bit, i64 99}
!85 = !{ptr @mark_address, ptr @has_proper_scope_for_analysis, i64 61}
!86 = !{ptr @mark_address, ptr @bitmap_set_bit, i64 61}
!87 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!88 = !{!"function_entry_count", i64 0}
!89 = !{!90, !90, i64 0}
!90 = !{!"any pointer", !91, i64 0}
!91 = !{!"omnipotent char", !92, i64 0}
!92 = !{!"Simple C/C++ TBAA"}
!93 = !{!94, !90, i64 8}
!94 = !{!"_IO_FILE", !95, i64 0, !90, i64 8, !90, i64 16, !90, i64 24, !90, i64 32, !90, i64 40, !90, i64 48, !90, i64 56, !90, i64 64, !90, i64 72, !90, i64 80, !90, i64 88, !90, i64 96, !90, i64 104, !95, i64 112, !95, i64 116, !96, i64 120, !97, i64 128, !91, i64 130, !91, i64 131, !90, i64 136, !96, i64 144, !90, i64 152, !90, i64 160, !90, i64 168, !90, i64 176, !96, i64 184, !95, i64 192, !91, i64 196}
!95 = !{!"int", !91, i64 0}
!96 = !{!"long", !91, i64 0}
!97 = !{!"short", !91, i64 0}
!98 = !{!94, !90, i64 16}
!99 = !{!"branch_weights", i32 2000, i32 1}
!100 = !{!91, !91, i64 0}
!101 = !{!94, !90, i64 40}
!102 = !{!94, !90, i64 48}
!103 = !{!94, !95, i64 0}
!104 = !{!95, !95, i64 0}
!105 = distinct !{!105, !106, !107}
!106 = !{!"llvm.loop.mustprogress"}
!107 = !{!"llvm.loop.unroll.disable"}
!108 = !{!109, !95, i64 0}
!109 = !{!"VEC_ipa_reference_vars_info_t_base", !95, i64 0, !95, i64 4, !91, i64 8}
!110 = !{!111, !95, i64 296}
!111 = !{!"cgraph_node", !90, i64 0, !90, i64 8, !90, i64 16, !90, i64 24, !90, i64 32, !90, i64 40, !90, i64 48, !90, i64 56, !90, i64 64, !90, i64 72, !90, i64 80, !90, i64 88, !90, i64 96, !90, i64 104, !90, i64 112, !90, i64 120, !90, i64 128, !90, i64 136, !112, i64 144, !114, i64 184, !115, i64 224, !116, i64 232, !117, i64 256, !96, i64 288, !95, i64 296, !95, i64 300, !95, i64 304, !95, i64 308, !95, i64 308, !95, i64 308, !95, i64 308, !95, i64 308, !95, i64 308, !95, i64 308, !95, i64 308, !95, i64 309, !95, i64 309}
!112 = !{!"cgraph_local_info", !90, i64 0, !113, i64 8, !95, i64 32, !95, i64 32, !95, i64 32, !95, i64 32, !95, i64 32, !95, i64 32, !95, i64 32, !95, i64 32}
!113 = !{!"inline_summary", !96, i64 0, !95, i64 8, !95, i64 12, !95, i64 16, !95, i64 20}
!114 = !{!"cgraph_global_info", !96, i64 0, !96, i64 8, !90, i64 16, !95, i64 24, !95, i64 28, !95, i64 32, !91, i64 36}
!115 = !{!"cgraph_rtl_info", !95, i64 0}
!116 = !{!"cgraph_clone_info", !90, i64 0, !90, i64 8, !90, i64 16}
!117 = !{!"cgraph_thunk_info", !96, i64 0, !96, i64 8, !90, i64 16, !91, i64 24, !91, i64 25, !91, i64 26}
!118 = !{!119, !90, i64 8}
!119 = !{!"ipa_reference_vars_info_d", !90, i64 0, !90, i64 8}
!120 = !{!121, !90, i64 0}
!121 = !{!"ipa_reference_global_vars_info_d", !90, i64 0, !90, i64 8, !90, i64 16, !90, i64 24}
!122 = !{!121, !90, i64 8}
!123 = !{!121, !90, i64 16}
!124 = !{!121, !90, i64 24}
!125 = !{!"function_entry_count", i64 2}
!126 = !{!"ipa-reference.c;gate_reference"}
!127 = !{!"branch_weights", i32 0, i32 2}
!128 = !{!"branch_weights", i32 2, i32 0}
!129 = !{!"function_entry_count", i64 1}
!130 = !{!"ipa-reference.c;propagate"}
!131 = !{!"branch_weights", i32 1, i32 0}
!132 = !{!"branch_weights", i32 127, i32 1}
!133 = !{!"branch_weights", i32 0, i32 80}
!134 = !{!"branch_weights", i32 80, i32 0}
!135 = !{!119, !90, i64 0}
!136 = !{!137, !91, i64 16}
!137 = !{!"ipa_reference_local_vars_info_d", !90, i64 0, !90, i64 8, !91, i64 16, !91, i64 17}
!138 = !{!137, !91, i64 17}
!139 = !{!111, !90, i64 0}
!140 = !{!"branch_weights", i32 1, i32 159}
!141 = !{!142, !90, i64 16}
!142 = !{!"cgraph_edge", !96, i64 0, !90, i64 8, !90, i64 16, !90, i64 24, !90, i64 32, !90, i64 40, !90, i64 48, !90, i64 56, !90, i64 64, !95, i64 72, !95, i64 76, !95, i64 80, !95, i64 84, !97, i64 88, !95, i64 90, !95, i64 90, !95, i64 90}
!143 = !{!"branch_weights", i32 16389, i32 52784}
!144 = !{!"branch_weights", i32 16389, i32 0}
!145 = !{!"branch_weights", i32 0, i32 16389}
!146 = !{!"branch_weights", i32 159, i32 138187}
!147 = distinct !{!147, !106, !107}
!148 = !{!111, !90, i64 128}
!149 = !{!150, !90, i64 16}
!150 = !{!"ipa_dfs_info", !95, i64 0, !95, i64 4, !91, i64 8, !91, i64 9, !90, i64 16, !90, i64 24}
!151 = !{}
!152 = distinct !{!152, !106, !107}
!153 = distinct !{!153, !106, !107}
!154 = !{!137, !90, i64 0}
!155 = !{!137, !90, i64 8}
!156 = distinct !{!156, !106, !107}
!157 = distinct !{!157, !106, !107}
!158 = !{!"branch_weights", i32 127, i32 10113}
!159 = distinct !{!159, !106, !107}
!160 = !{!161, !90, i64 0}
!161 = !{!"bitmap_head_def", !90, i64 0, !90, i64 8, !95, i64 16, !90, i64 24}
!162 = !{!163, !95, i64 16}
!163 = !{!"bitmap_element_def", !90, i64 0, !90, i64 8, !95, i64 16, !91, i64 24}
!164 = !{!96, !96, i64 0}
!165 = distinct !{!165, !106, !107}
!166 = distinct !{!166, !106, !107}
!167 = !{!163, !90, i64 0}
!168 = distinct !{!168, !107}
!169 = !{!170, !90, i64 176}
!170 = !{!"lang_hooks", !90, i64 0, !96, i64 8, !90, i64 16, !90, i64 24, !90, i64 32, !90, i64 40, !90, i64 48, !90, i64 56, !90, i64 64, !90, i64 72, !90, i64 80, !90, i64 88, !90, i64 96, !90, i64 104, !90, i64 112, !90, i64 120, !90, i64 128, !90, i64 136, !90, i64 144, !90, i64 152, !90, i64 160, !90, i64 168, !90, i64 176, !90, i64 184, !90, i64 192, !90, i64 200, !90, i64 208, !90, i64 216, !90, i64 224, !90, i64 232, !171, i64 240, !172, i64 248, !173, i64 256, !174, i64 272, !175, i64 432, !176, i64 560, !90, i64 584, !90, i64 592, !90, i64 600, !90, i64 608, !90, i64 616, !90, i64 624, !90, i64 632, !90, i64 640, !90, i64 648, !90, i64 656, !90, i64 664, !91, i64 672}
!171 = !{!"lang_hooks_for_tree_inlining", !90, i64 0}
!172 = !{!"lang_hooks_for_callgraph", !90, i64 0}
!173 = !{!"lang_hooks_for_tree_dump", !90, i64 0, !90, i64 8}
!174 = !{!"lang_hooks_for_decls", !90, i64 0, !90, i64 8, !90, i64 16, !90, i64 24, !90, i64 32, !90, i64 40, !90, i64 48, !90, i64 56, !90, i64 64, !90, i64 72, !90, i64 80, !90, i64 88, !90, i64 96, !90, i64 104, !90, i64 112, !90, i64 120, !90, i64 128, !90, i64 136, !90, i64 144, !90, i64 152}
!175 = !{!"lang_hooks_for_types", !90, i64 0, !90, i64 8, !90, i64 16, !90, i64 24, !90, i64 32, !90, i64 40, !90, i64 48, !90, i64 56, !90, i64 64, !90, i64 72, !90, i64 80, !90, i64 88, !90, i64 96, !90, i64 104, !90, i64 112, !91, i64 120}
!176 = !{!"lang_hooks_for_lto", !90, i64 0, !90, i64 8, !90, i64 16}
!177 = !{!178, !96, i64 8}
!178 = !{!"splay_tree_node_s", !96, i64 0, !96, i64 8, !90, i64 16, !90, i64 24}
!179 = distinct !{!179, !106, !107}
!180 = distinct !{!180, !106, !107}
!181 = distinct !{!181, !106, !107}
!182 = distinct !{!182, !106, !107}
!183 = distinct !{!183, !106, !107}
!184 = distinct !{!184, !106, !107}
!185 = distinct !{!185, !106, !107}
!186 = distinct !{!186, !106, !107}
!187 = distinct !{!187, !106, !107}
!188 = !{!"branch_weights", i32 1, i32 127}
!189 = !{!"branch_weights", i32 0, i32 115}
!190 = !{!"branch_weights", i32 80, i32 35}
!191 = !{!"branch_weights", i32 35, i32 80}
!192 = !{!"branch_weights", i32 42, i32 80}
!193 = !{!"branch_weights", i32 127, i32 14593}
!194 = distinct !{!194, !106, !107}
!195 = !{!"ipa-reference.c;generate_summary"}
!196 = !{!"branch_weights", i32 0, i32 1}
!197 = !{!198, !90, i64 0}
!198 = !{!"varpool_node", !90, i64 0, !90, i64 8, !90, i64 16, !90, i64 24, !95, i64 32, !95, i64 36, !95, i64 36, !95, i64 36, !95, i64 36, !95, i64 36, !95, i64 36, !95, i64 36}
!199 = distinct !{!199, !106, !107}
!200 = !{!201, !90, i64 32}
!201 = !{!"walk_stmt_info", !202, i64 0, !90, i64 24, !90, i64 32, !91, i64 40, !91, i64 41, !91, i64 42, !91, i64 43, !90, i64 48}
!202 = !{!"", !90, i64 0, !90, i64 8, !90, i64 16}
!203 = !{!198, !90, i64 16}
!204 = !{!"branch_weights", i32 1, i32 38}
!205 = !{!"branch_weights", i32 38, i32 0}
!206 = !{!"branch_weights", i32 0, i32 38}
!207 = distinct !{!207, !106, !107}
!208 = !{!"branch_weights", i32 127, i32 4865}
!209 = distinct !{!209, !106, !107}
!210 = !{!"branch_weights", i32 39, i32 35}
!211 = !{!"branch_weights", i32 127, i32 9345}
!212 = distinct !{!212, !106, !107}
!213 = !{!"branch_weights", i32 35, i32 4}
!214 = !{!"branch_weights", i32 151, i32 1}
!215 = !{!"branch_weights", i32 4677, i32 151}
!216 = !{!"branch_weights", i32 29, i32 34}
!217 = !{!"branch_weights", i32 127, i32 125}
!218 = !{!"branch_weights", i32 1, i32 31}
!219 = distinct !{!219, !106, !107}
!220 = distinct !{!220, !106, !107}
!221 = distinct !{!221, !106, !107}
!222 = distinct !{!222, !106, !107}
!223 = !{!"branch_weights", i32 0, i32 39}
!224 = distinct !{!224, !106, !107}
!225 = distinct !{!225, !106, !107}
!226 = distinct !{!226, !106, !107}
!227 = distinct !{!227, !106, !107}
!228 = !{!229, !90, i64 8}
!229 = !{!"cgraph_node_set_def", !90, i64 0, !90, i64 8, !90, i64 16}
!230 = !{!231, !95, i64 0}
!231 = !{!"VEC_cgraph_node_ptr_base", !95, i64 0, !95, i64 4, !91, i64 8}
!232 = !{i8 0, i8 2}
!233 = distinct !{!233, !106, !107}
!234 = !{!235, !90, i64 16}
!235 = !{!"lto_simple_output_block", !95, i64 0, !90, i64 8, !90, i64 16}
!236 = !{!235, !90, i64 8}
!237 = !{!238, !90, i64 168}
!238 = !{!"lto_out_decl_state", !91, i64 0, !90, i64 168, !90, i64 176}
!239 = distinct !{!239, !106, !107}
!240 = distinct !{!240, !106, !107}
!241 = distinct !{!241, !106, !107}
!242 = !{!243, !90, i64 16}
!243 = !{!"lto_file_decl_data", !90, i64 0, !90, i64 8, !90, i64 16, !90, i64 24, !90, i64 32, !95, i64 40, !90, i64 48, !90, i64 56}
!244 = !{!243, !90, i64 0}
!245 = !{!246, !95, i64 8}
!246 = !{!"lto_tree_ref_table", !90, i64 0, !95, i64 8}
!247 = !{!246, !90, i64 0}
!248 = distinct !{!248, !106, !107}
!249 = distinct !{!249, !106, !107}
!250 = distinct !{!250, !106, !107}
!251 = distinct !{!251, !106, !107}
!252 = !{!"function_entry_count", i64 80}
!253 = !{!"ipa-reference.c;propagate_bits"}
!254 = !{!"branch_weights", i32 52784, i32 16389}
!255 = !{!"branch_weights", i32 0, i32 52784}
!256 = !{!"branch_weights", i32 52784, i32 0}
!257 = distinct !{!257, !106, !107}
!258 = !{!"function_entry_count", i64 42}
!259 = !{!"ipa-reference.c;clean_function"}
!260 = !{!"branch_weights", i32 0, i32 42}
!261 = !{!"branch_weights", i32 42, i32 0}
!262 = !{!109, !95, i64 4}
!263 = !{!"ipa-reference.c;ipa_init"}
!264 = !{!"function_entry_count", i64 39}
!265 = !{!"ipa-reference.c;analyze_function"}
!266 = !{!"branch_weights", i32 39, i32 0}
!267 = !{!268, !90, i64 8}
!268 = !{!"function", !90, i64 0, !90, i64 8, !90, i64 16, !90, i64 24, !90, i64 32, !90, i64 40, !90, i64 48, !90, i64 56, !90, i64 64, !90, i64 72, !90, i64 80, !90, i64 88, !90, i64 96, !95, i64 104, !95, i64 108, !95, i64 112, !95, i64 116, !95, i64 120, !95, i64 124, !90, i64 128, !95, i64 136, !95, i64 137, !95, i64 138, !95, i64 138, !95, i64 138, !95, i64 138, !95, i64 138, !95, i64 138, !95, i64 138, !95, i64 139, !95, i64 139, !95, i64 139, !95, i64 139, !95, i64 139, !95, i64 139, !95, i64 139}
!269 = !{!270, !90, i64 0}
!270 = !{!"control_flow_graph", !90, i64 0, !90, i64 8, !90, i64 16, !95, i64 24, !95, i64 28, !95, i64 32, !90, i64 40, !95, i64 48, !91, i64 52, !91, i64 60, !95, i64 68, !95, i64 72}
!271 = !{!272, !90, i64 56}
!272 = !{!"basic_block_def", !90, i64 0, !90, i64 8, !90, i64 16, !90, i64 24, !91, i64 32, !90, i64 48, !90, i64 56, !91, i64 64, !96, i64 72, !95, i64 80, !95, i64 84, !95, i64 88, !95, i64 92, !95, i64 96}
!273 = !{!270, !90, i64 8}
!274 = !{!"branch_weights", i32 1, i32 155}
!275 = !{!"branch_weights", i32 155, i32 586129}
!276 = distinct !{!276, !106, !107}
!277 = !{i64 0, i64 8, !89, i64 8, i64 8, !89, i64 16, i64 8, !89}
!278 = !{!"branch_weights", i32 105492, i32 41079}
!279 = !{!280, !90, i64 0}
!280 = !{!"gimple_seq_node_d", !90, i64 0, !90, i64 8, !90, i64 16}
!281 = !{!"branch_weights", i32 40923, i32 156}
!282 = !{!"branch_weights", i32 156, i32 0}
!283 = !{!"branch_weights", i32 41078, i32 1}
!284 = !{!285, !90, i64 24}
!285 = !{!"ssa_use_operand_d", !90, i64 0, !90, i64 8, !91, i64 16, !90, i64 24}
!286 = !{!"branch_weights", i32 0, i32 61670}
!287 = !{!"branch_weights", i32 61514, i32 156}
!288 = !{!"branch_weights", i32 0, i32 61514}
!289 = !{!"branch_weights", i32 20592, i32 41078}
!290 = distinct !{!290, !106, !107}
!291 = !{!280, !90, i64 16}
!292 = !{!"branch_weights", i32 41079, i32 0}
!293 = distinct !{!293, !106, !107}
!294 = !{!272, !95, i64 96}
!295 = !{!296}
!296 = distinct !{!296, !297, !"gsi_start_bb: argument 0"}
!297 = distinct !{!297, !"gsi_start_bb"}
!298 = !{!"branch_weights", i32 146571, i32 0}
!299 = !{!"branch_weights", i32 0, i32 146571}
!300 = !{!301, !90, i64 0}
!301 = !{!"gimple_bb_info", !90, i64 0, !90, i64 8}
!302 = !{!303, !90, i64 0}
!303 = !{!"gimple_seq_d", !90, i64 0, !90, i64 8, !90, i64 16}
!304 = !{!"branch_weights", i32 1, i32 146570}
!305 = !{!"branch_weights", i32 0, i32 355160}
!306 = !{!"branch_weights", i32 286032, i32 69128, i32 0}
!307 = !{!"branch_weights", i32 0, i32 69128}
!308 = !{!"branch_weights", i32 69128, i32 0}
!309 = distinct !{!309, !106, !107}
!310 = !{!"branch_weights", i32 146570, i32 208590}
!311 = distinct !{!311, !106, !107}
!312 = !{!"ipa-reference.c;remove_node_data"}
!313 = !{!"function_entry_count", i64 41}
!314 = !{!"ipa-reference.c;duplicate_node_data"}
!315 = !{!"branch_weights", i32 0, i32 41}
!316 = !{!"branch_weights", i32 41, i32 0}
!317 = !{!"ipa-reference.c;init_function_info"}
!318 = !{!"branch_weights", i32 1, i32 79}
!319 = !{!"branch_weights", i32 79, i32 0}
!320 = !{!"VP", i32 1, i64 1, i64 513, i64 1}
!321 = !{!"ipa-reference.c;scan_initializer_for_static_refs"}
!322 = !{!"ipa-reference.c;mark_address_taken"}
!323 = !{!"branch_weights", i32 61, i32 73}
!324 = !{!"branch_weights", i32 0, i32 61}
!325 = !{!"function_entry_count", i64 61}
!326 = !{!"ipa-reference.c;has_proper_scope_for_analysis"}
!327 = !{!"branch_weights", i32 91312, i32 0}
!328 = !{!"branch_weights", i32 61, i32 91251}
!329 = !{!"branch_weights", i32 61, i32 0}
!330 = !{!"branch_weights", i32 38, i32 23}
!331 = !{!"function_entry_count", i64 91430}
!332 = !{!"ipa-reference.c;mark_load"}
!333 = !{!"branch_weights", i32 91251, i32 179}
!334 = !{!"branch_weights", i32 -126026624, i32 0}
!335 = !{!"ipa-reference.c;mark_store"}
!336 = !{!"function_entry_count", i64 134}
!337 = !{!"ipa-reference.c;mark_address"}
!338 = !{!"branch_weights", i32 134, i32 0, i32 12, i32 128, i32 0, i32 0, i32 0, i32 0}
!339 = distinct !{!339, !106, !107}
!340 = !{!111, !90, i64 200}

; ModuleID = 'ipa-pure-const.c'
source_filename = "ipa-pure-const.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ipa_opt_pass_d = type { %struct.opt_pass, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.gimple_opt_pass = type { %struct.opt_pass }
%struct.lang_hooks = type { ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lang_hooks_for_tree_inlining, %struct.lang_hooks_for_callgraph, %struct.lang_hooks_for_tree_dump, %struct.lang_hooks_for_decls, %struct.lang_hooks_for_types, %struct.lang_hooks_for_lto, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_tree_inlining = type { ptr }
%struct.lang_hooks_for_callgraph = type { ptr }
%struct.lang_hooks_for_tree_dump = type { ptr, ptr }
%struct.lang_hooks_for_decls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lang_hooks_for_types = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_lto = type { ptr, ptr, ptr }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.diagnostic_context = type { ptr, [12 x i32], i8, i8, [870 x i32], i8, i8, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.cgraph_node = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.cgraph_local_info, %struct.cgraph_global_info, %struct.cgraph_rtl_info, %struct.cgraph_clone_info, %struct.cgraph_thunk_info, i64, i32, i32, i32, i16 }
%struct.cgraph_local_info = type { ptr, %struct.inline_summary, i8 }
%struct.inline_summary = type { i64, i32, i32, i32, i32 }
%struct.cgraph_global_info = type { i64, i64, ptr, i32, i32, i32, i8 }
%struct.cgraph_rtl_info = type { i32 }
%struct.cgraph_clone_info = type { ptr, ptr, ptr }
%struct.cgraph_thunk_info = type { i64, i64, ptr, i8, i8, i8 }
%struct.VEC_funct_state_base = type { i32, i32, [1 x ptr] }
%struct.funct_state_d = type { i32, i32, i8, i8, i8 }
%struct.cgraph_edge = type { i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i8 }
%struct.ipa_dfs_info = type { i32, i32, i8, i8, ptr, ptr }
%struct.tree_function_decl = type { %struct.tree_decl_non_common, ptr, ptr, ptr, ptr, i32 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.cgraph_node_set_def = type { ptr, ptr, ptr }
%struct.VEC_cgraph_node_ptr_base = type { i32, i32, [1 x ptr] }
%struct.lto_simple_output_block = type { i32, ptr, ptr }
%struct.lto_out_decl_state = type { [7 x %struct.lto_tree_ref_encoder], ptr, ptr }
%struct.lto_tree_ref_encoder = type { ptr, i32, ptr }
%struct.lto_file_decl_data = type { ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.gimple_statement_asm = type { %struct.gimple_statement_with_memory_ops_base, ptr, i8, i8, i8, i8, [1 x ptr] }
%struct.gimple_statement_with_memory_ops_base = type { %struct.gimple_statement_with_ops_base, ptr, ptr }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.tree_identifier = type { %struct.tree_common, %struct.ht_identifier }
%struct.ht_identifier = type { ptr, i32, i32 }
%struct.tree_list = type { %struct.tree_common, ptr, ptr }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.loops = type { i32, ptr, ptr, ptr }
%struct.VEC_int_base = type { i32, i32, [1 x i32] }
%struct.loop = type { i32, i32, ptr, ptr, %struct.lpt_decision, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.double_int, %struct.double_int, i8, i8, i32, ptr, ptr, i8, ptr }
%struct.lpt_decision = type { i32, i32 }
%struct.double_int = type { i64, i64 }
%struct.VEC_loop_p_base = type { i32, i32, [1 x ptr] }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [11 x i8] c"pure-const\00", align 1
@pass_ipa_pure_const = dso_local local_unnamed_addr global %struct.ipa_opt_pass_d { %struct.opt_pass { i32 3, ptr @.str, ptr @gate_pure_const, ptr @propagate, ptr null, ptr null, i32 0, i32 17, i32 0, i32 0, i32 0, i32 0, i32 0 }, ptr @generate_summary, ptr @pure_const_write_summary, ptr @pure_const_read_summary, ptr null, ptr null, i32 0, ptr null, ptr null }, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"local-pure-const\00", align 1
@pass_local_pure_const = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.1, ptr @gate_pure_const, ptr @local_pure_const, ptr null, ptr null, i32 0, i32 17, i32 0, i32 0, i32 0, i32 0, i32 0 } }, align 8
@flag_ipa_pure_const = external local_unnamed_addr global i32, align 4
@global_dc = external local_unnamed_addr global ptr, align 8
@cgraph_n_nodes = external local_unnamed_addr global i32, align 4
@function_insertion_hook_holder = internal unnamed_addr global ptr null, align 8
@node_duplication_hook_holder = internal unnamed_addr global ptr null, align 8
@node_removal_hook_holder = internal unnamed_addr global ptr null, align 8
@dump_file = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"reduced\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Function found to be %sconst: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"looping \00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"Function found to be %spure: %s\0A\00", align 1
@cgraph_nodes = external local_unnamed_addr global ptr, align 8
@.str.7 = private unnamed_addr constant [20 x i8] c"reduced for nothrow\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"Function found to be nothrow: %s\0A\00", align 1
@funct_state_vec = internal unnamed_addr global ptr null, align 8
@visited_nodes = internal unnamed_addr global ptr null, align 8
@register_hooks.init_p = internal unnamed_addr global i1 false, align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"ipa-pure-const.c\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@current_function_decl = external local_unnamed_addr global ptr, align 8
@.str.11 = private unnamed_addr constant [26 x i8] c"\0A\0A local analysis of %s\0A \00", align 1
@cfun = external local_unnamed_addr global ptr, align 8
@dump_flags = external local_unnamed_addr global i32, align 4
@.str.12 = private unnamed_addr constant [27 x i8] c"    has irreducible loops\0A\00", align 1
@.str.13 = private unnamed_addr constant [41 x i8] c"    can not prove finiteness of loop %i\0A\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"Function is locally looping.\0A\00", align 1
@.str.15 = private unnamed_addr constant [31 x i8] c"Function is locally throwing.\0A\00", align 1
@.str.16 = private unnamed_addr constant [28 x i8] c"Function is locally const.\0A\00", align 1
@.str.17 = private unnamed_addr constant [27 x i8] c"Function is locally pure.\0A\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"  scanning: \00", align 1
@flag_non_call_exceptions = external local_unnamed_addr global i32, align 4
@.str.19 = private unnamed_addr constant [23 x i8] c"    can throw; looping\00", align 1
@.str.20 = private unnamed_addr constant [25 x i8] c"    can throw externally\00", align 1
@.str.21 = private unnamed_addr constant [37 x i8] c"    nonlocal label is not const/pure\00", align 1
@memory_identifier_string = external local_unnamed_addr global ptr, align 8
@.str.22 = private unnamed_addr constant [41 x i8] c"    memory asm clobber is not const/pure\00", align 1
@.str.23 = private unnamed_addr constant [31 x i8] c"    volatile is not const/pure\00", align 1
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@.str.24 = private unnamed_addr constant [39 x i8] c"    Volatile operand is not const/pure\00", align 1
@.str.25 = private unnamed_addr constant [51 x i8] c"    Used static/global variable is not const/pure\0A\00", align 1
@.str.26 = private unnamed_addr constant [50 x i8] c"    static/global memory write is not const/pure\0A\00", align 1
@.str.27 = private unnamed_addr constant [37 x i8] c"    global memory read is not const\0A\00", align 1
@.str.28 = private unnamed_addr constant [37 x i8] c"    static memory read is not const\0A\00", align 1
@.str.29 = private unnamed_addr constant [45 x i8] c"    Volatile indirect ref is not const/pure\0A\00", align 1
@.str.30 = private unnamed_addr constant [40 x i8] c"    Indirect ref to local memory is OK\0A\00", align 1
@.str.31 = private unnamed_addr constant [42 x i8] c"    Indirect ref write is not const/pure\0A\00", align 1
@.str.32 = private unnamed_addr constant [36 x i8] c"    Indirect ref read is not const\0A\00", align 1
@.str.33 = private unnamed_addr constant [32 x i8] c"    operand can throw; looping\0A\00", align 1
@.str.34 = private unnamed_addr constant [34 x i8] c"    operand can throw externally\0A\00", align 1
@.str.35 = private unnamed_addr constant [30 x i8] c"    setjmp is not const/pure\0A\00", align 1
@.str.36 = private unnamed_addr constant [49 x i8] c"    longjmp and nonlocal goto is not const/pure\0A\00", align 1
@.str.37 = private unnamed_addr constant [24 x i8] c"    can throw; looping\0A\00", align 1
@.str.38 = private unnamed_addr constant [35 x i8] c"    can throw externally to lp %i\0A\00", align 1
@.str.39 = private unnamed_addr constant [16 x i8] c"     callee:%s\0A\00", align 1
@.str.40 = private unnamed_addr constant [37 x i8] c"    pure function call in not const\0A\00", align 1
@.str.41 = private unnamed_addr constant [44 x i8] c"    uknown function call is not const/pure\0A\00", align 1
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@.str.42 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@.str.43 = private unnamed_addr constant [46 x i8] c"Function called in recursive cycle; ignoring\0A\00", align 1
@.str.44 = private unnamed_addr constant [41 x i8] c"Function has wrong visibility; ignoring\0A\00", align 1
@lang_hooks = external local_unnamed_addr global %struct.lang_hooks, align 8
@.str.45 = private unnamed_addr constant [38 x i8] c"Function found to be non-looping: %s\0A\00", align 1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !75 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !76
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !75 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !76
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !75 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !80
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !85
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !86

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #20
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !80
  %11 = load i8, ptr %3, align 1, !tbaa !87
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !75 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !80
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !85
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !86

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #20
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !80
  %11 = load i8, ptr %3, align 1, !tbaa !87
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !75 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !76
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !80
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !85
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !86

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #20
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !80
  %11 = load i8, ptr %3, align 1, !tbaa !87
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !75 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !76
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !75 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !88
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !89
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !86

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #20
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !88
  store i8 %12, ptr %4, align 1, !tbaa !87
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !75 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !88
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !89
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !86

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #20
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !88
  store i8 %12, ptr %4, align 1, !tbaa !87
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !75 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !76
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !88
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !89
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !86

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #20
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !88
  store i8 %12, ptr %4, align 1, !tbaa !87
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !75 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #20
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !75 {
  %2 = load i32, ptr %0, align 8, !tbaa !90
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !75 {
  %2 = load i32, ptr %0, align 8, !tbaa !90
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !75 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #20
  %6 = load ptr, ptr %5, align 8, !tbaa !76
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !91
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !75 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #20
  %6 = load ptr, ptr %5, align 8, !tbaa !76
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !91
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !75 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !75 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !75 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !75 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #20
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
  br i1 %23, label %7, label %24, !llvm.loop !92

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !75 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_pure_const() #9 !prof !95 !PGOFuncName !96 {
  %1 = load i32, ptr @flag_ipa_pure_const, align 4, !tbaa !91
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %13, label %3, !prof !97

3:                                                ; preds = %0
  %4 = load ptr, ptr @global_dc, align 8, !tbaa !76
  %5 = getelementptr inbounds %struct.diagnostic_context, ptr %4, i64 0, i32 1, i64 4
  %6 = load i32, ptr %5, align 8, !tbaa !91
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %13, !prof !98

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.diagnostic_context, ptr %4, i64 0, i32 1, i64 5
  %10 = load i32, ptr %9, align 4, !tbaa !91
  %11 = icmp eq i32 %10, 0
  %12 = zext i1 %11 to i8
  br label %13

13:                                               ; preds = %3, %8, %0
  %14 = phi i8 [ 0, %0 ], [ 0, %3 ], [ %12, %8 ]
  ret i8 %14
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @propagate() #10 !prof !99 !PGOFuncName !100 {
  %1 = load i32, ptr @cgraph_n_nodes, align 4, !tbaa !91
  %2 = sext i32 %1 to i64
  %3 = tail call ptr @xcalloc(i64 noundef %2, i64 noundef 8) #20
  %4 = load ptr, ptr @function_insertion_hook_holder, align 8, !tbaa !76
  tail call void @cgraph_remove_function_insertion_hook(ptr noundef %4) #20
  %5 = load ptr, ptr @node_duplication_hook_holder, align 8, !tbaa !76
  tail call void @cgraph_remove_node_duplication_hook(ptr noundef %5) #20
  %6 = load ptr, ptr @node_removal_hook_holder, align 8, !tbaa !76
  tail call void @cgraph_remove_node_removal_hook(ptr noundef %6) #20
  %7 = tail call i32 @ipa_utils_reduced_inorder(ptr noundef %3, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef null) #20
  %8 = load ptr, ptr @dump_file, align 8, !tbaa !76
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10, !prof !101

10:                                               ; preds = %0
  tail call void @dump_cgraph(ptr noundef nonnull %8) #20
  %11 = load ptr, ptr @dump_file, align 8, !tbaa !76
  tail call void @ipa_utils_print_order(ptr noundef %11, ptr noundef nonnull @.str.2, ptr noundef %3, i32 noundef %7) #20
  br label %12

12:                                               ; preds = %10, %0
  %13 = icmp sgt i32 %7, 0
  br i1 %13, label %14, label %16, !prof !102

14:                                               ; preds = %12
  %15 = zext nneg i32 %7 to i64
  br label %19

16:                                               ; preds = %223, %12
  %17 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !76
  %18 = icmp eq ptr %17, null
  br i1 %18, label %236, label %226, !prof !103

19:                                               ; preds = %14, %223
  %20 = phi i64 [ 0, %14 ], [ %224, %223 ]
  %21 = getelementptr inbounds ptr, ptr %3, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !76
  br label %23

23:                                               ; preds = %129, %19
  %24 = phi i32 [ 0, %19 ], [ %130, %129 ]
  %25 = phi i8 [ 0, %19 ], [ %131, %129 ]
  %26 = phi i32 [ 0, %19 ], [ %132, %129 ]
  %27 = phi ptr [ %22, %19 ], [ %133, %129 ]
  %28 = icmp eq ptr %27, null
  br i1 %28, label %134, label %29, !prof !104

29:                                               ; preds = %23
  %30 = load ptr, ptr @funct_state_vec, align 8
  %31 = icmp eq ptr %30, null
  br i1 %31, label %41, label %32, !prof !97

32:                                               ; preds = %29
  %33 = load i32, ptr %30, align 8, !tbaa !105
  %34 = getelementptr inbounds %struct.cgraph_node, ptr %27, i64 0, i32 24
  %35 = load i32, ptr %34, align 8, !tbaa !107
  %36 = icmp ugt i32 %33, %35
  br i1 %36, label %37, label %41, !prof !98

37:                                               ; preds = %32
  %38 = zext i32 %35 to i64
  %39 = getelementptr inbounds %struct.VEC_funct_state_base, ptr %30, i64 0, i32 2, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !76
  br label %41

41:                                               ; preds = %29, %32, %37
  %42 = phi ptr [ %40, %37 ], [ null, %32 ], [ null, %29 ]
  %43 = load i32, ptr %42, align 4, !tbaa !115
  %44 = tail call i32 @llvm.umax.i32(i32 %26, i32 %43)
  %45 = getelementptr inbounds %struct.funct_state_d, ptr %42, i64 0, i32 3
  %46 = load i8, ptr %45, align 1, !tbaa !117
  %47 = icmp eq i8 %46, 0
  %48 = select i1 %47, i8 %25, i8 1, !prof !98
  %49 = tail call i32 @cgraph_function_body_availability(ptr noundef nonnull %27) #20
  %50 = icmp eq i32 %49, 2
  br i1 %50, label %51, label %58, !prof !97

51:                                               ; preds = %41
  %52 = getelementptr inbounds %struct.funct_state_d, ptr %42, i64 0, i32 2
  %53 = load i8, ptr %52, align 4, !tbaa !118
  %54 = or i8 %53, %48
  %55 = getelementptr inbounds %struct.funct_state_d, ptr %42, i64 0, i32 1
  %56 = load i32, ptr %55, align 4, !tbaa !119
  %57 = tail call i32 @llvm.umax.i32(i32 %44, i32 %56)
  br label %58

58:                                               ; preds = %51, %41
  %59 = phi i8 [ %48, %41 ], [ %54, %51 ]
  %60 = phi i32 [ %44, %41 ], [ %57, %51 ]
  %61 = icmp eq i32 %60, 2
  br i1 %61, label %129, label %62, !prof !120

62:                                               ; preds = %58
  %63 = add nsw i32 %24, 1
  %64 = icmp sgt i32 %24, 0
  %65 = select i1 %64, i8 1, i8 %59, !prof !121
  %66 = getelementptr inbounds %struct.cgraph_node, ptr %27, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !76
  %68 = icmp eq ptr %67, null
  br i1 %68, label %122, label %73, !prof !122

69:                                               ; preds = %118
  %70 = getelementptr inbounds %struct.cgraph_edge, ptr %74, i64 0, i32 6
  %71 = load ptr, ptr %70, align 8, !tbaa !76
  %72 = icmp eq ptr %71, null
  br i1 %72, label %122, label %73, !prof !123, !llvm.loop !124

73:                                               ; preds = %62, %69
  %74 = phi ptr [ %71, %69 ], [ %67, %62 ]
  %75 = phi i32 [ %121, %69 ], [ %60, %62 ]
  %76 = phi i8 [ %120, %69 ], [ %65, %62 ]
  %77 = getelementptr inbounds %struct.cgraph_edge, ptr %74, i64 0, i32 2
  %78 = load ptr, ptr %77, align 8, !tbaa !125
  %79 = tail call i32 @cgraph_function_body_availability(ptr noundef %78) #20
  %80 = icmp ugt i32 %79, 2
  br i1 %80, label %81, label %103, !prof !127

81:                                               ; preds = %73
  %82 = load ptr, ptr @funct_state_vec, align 8
  %83 = icmp eq ptr %82, null
  br i1 %83, label %93, label %84, !prof !121

84:                                               ; preds = %81
  %85 = load i32, ptr %82, align 8, !tbaa !105
  %86 = getelementptr inbounds %struct.cgraph_node, ptr %78, i64 0, i32 24
  %87 = load i32, ptr %86, align 8, !tbaa !107
  %88 = icmp ugt i32 %85, %87
  br i1 %88, label %89, label %93, !prof !128

89:                                               ; preds = %84
  %90 = zext i32 %87 to i64
  %91 = getelementptr inbounds %struct.VEC_funct_state_base, ptr %82, i64 0, i32 2, i64 %90
  %92 = load ptr, ptr %91, align 8, !tbaa !76
  br label %93

93:                                               ; preds = %81, %84, %89
  %94 = phi ptr [ %92, %89 ], [ null, %84 ], [ null, %81 ]
  %95 = load i32, ptr %94, align 4, !tbaa !115
  %96 = tail call i32 @llvm.umax.i32(i32 %75, i32 %95)
  %97 = icmp eq i32 %96, 2
  br i1 %97, label %118, label %98, !prof !128

98:                                               ; preds = %93
  %99 = getelementptr inbounds %struct.funct_state_d, ptr %94, i64 0, i32 3
  %100 = load i8, ptr %99, align 1, !tbaa !117
  %101 = icmp eq i8 %100, 0
  %102 = select i1 %101, i8 %76, i8 1
  br label %118

103:                                              ; preds = %73
  %104 = load ptr, ptr %78, align 8, !tbaa !129
  %105 = tail call i32 @flags_from_decl_or_type(ptr noundef %104) #20
  %106 = and i32 %105, 4
  %107 = icmp eq i32 %106, 0
  %108 = select i1 %107, i8 %76, i8 1, !prof !130
  %109 = and i32 %105, 1
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %118, !prof !130

111:                                              ; preds = %103
  %112 = and i32 %105, 2
  %113 = icmp ne i32 %112, 0
  %114 = icmp eq i32 %75, 0
  %115 = select i1 %113, i1 %114, i1 false, !prof !131
  %116 = select i1 %115, i8 %108, i8 1, !prof !131
  %117 = select i1 %115, i32 1, i32 2, !prof !131
  br label %118

118:                                              ; preds = %98, %93, %111, %103
  %119 = phi i1 [ true, %103 ], [ true, %111 ], [ true, %98 ], [ false, %93 ]
  %120 = phi i8 [ %108, %103 ], [ %116, %111 ], [ %102, %98 ], [ %76, %93 ]
  %121 = phi i32 [ %75, %103 ], [ %117, %111 ], [ %96, %98 ], [ %96, %93 ]
  br i1 %119, label %69, label %122, !prof !132

122:                                              ; preds = %69, %118, %62
  %123 = phi i8 [ %65, %62 ], [ %120, %118 ], [ %120, %69 ]
  %124 = phi i32 [ %60, %62 ], [ %121, %118 ], [ %121, %69 ]
  %125 = getelementptr inbounds %struct.cgraph_node, ptr %27, i64 0, i32 16
  %126 = load ptr, ptr %125, align 8, !tbaa !133
  %127 = getelementptr inbounds %struct.ipa_dfs_info, ptr %126, i64 0, i32 4
  %128 = load ptr, ptr %127, align 8, !tbaa !134
  br label %129

129:                                              ; preds = %58, %122
  %130 = phi i32 [ %63, %122 ], [ %24, %58 ]
  %131 = phi i8 [ %123, %122 ], [ %59, %58 ]
  %132 = phi i32 [ %124, %122 ], [ 2, %58 ]
  %133 = phi ptr [ %128, %122 ], [ %27, %58 ]
  br i1 %61, label %134, label %23, !prof !120

134:                                              ; preds = %129, %23
  %135 = phi i8 [ %25, %23 ], [ %131, %129 ]
  %136 = phi i32 [ %26, %23 ], [ %132, %129 ]
  %137 = icmp eq ptr %22, null
  br i1 %137, label %223, label %138, !prof !136

138:                                              ; preds = %134
  %139 = icmp eq i8 %135, 0
  br label %140

140:                                              ; preds = %138, %217
  %141 = phi ptr [ %22, %138 ], [ %221, %217 ]
  %142 = load ptr, ptr @funct_state_vec, align 8
  %143 = icmp eq ptr %142, null
  br i1 %143, label %153, label %144, !prof !97

144:                                              ; preds = %140
  %145 = load i32, ptr %142, align 8, !tbaa !105
  %146 = getelementptr inbounds %struct.cgraph_node, ptr %141, i64 0, i32 24
  %147 = load i32, ptr %146, align 8, !tbaa !107
  %148 = icmp ugt i32 %145, %147
  br i1 %148, label %149, label %153, !prof !98

149:                                              ; preds = %144
  %150 = zext i32 %147 to i64
  %151 = getelementptr inbounds %struct.VEC_funct_state_base, ptr %142, i64 0, i32 2, i64 %150
  %152 = load ptr, ptr %151, align 8, !tbaa !76
  br label %153

153:                                              ; preds = %140, %144, %149
  %154 = phi ptr [ %152, %149 ], [ null, %144 ], [ null, %140 ]
  %155 = getelementptr inbounds %struct.funct_state_d, ptr %154, i64 0, i32 1
  %156 = load i32, ptr %155, align 4, !tbaa !119
  %157 = icmp eq i32 %156, 2
  %158 = tail call i32 @llvm.umin.i32(i32 %136, i32 %156)
  %159 = select i1 %157, i32 %136, i32 %158, !prof !98
  br i1 %139, label %160, label %180, !prof !137

160:                                              ; preds = %153
  %161 = getelementptr inbounds %struct.cgraph_node, ptr %141, i64 0, i32 1
  %162 = load ptr, ptr %161, align 8, !tbaa !76
  %163 = icmp ne ptr %162, null
  br i1 %163, label %164, label %177, !prof !138

164:                                              ; preds = %160
  %165 = getelementptr inbounds %struct.cgraph_edge, ptr %162, i64 0, i32 2
  %166 = load ptr, ptr %165, align 8, !tbaa !125
  %167 = icmp eq ptr %166, %141
  br i1 %167, label %177, label %168, !prof !122

168:                                              ; preds = %164, %173
  %169 = phi ptr [ %171, %173 ], [ %162, %164 ]
  %170 = getelementptr inbounds %struct.cgraph_edge, ptr %169, i64 0, i32 6
  %171 = load ptr, ptr %170, align 8, !tbaa !76
  %172 = icmp ne ptr %171, null
  br i1 %172, label %173, label %177, !prof !139, !llvm.loop !140

173:                                              ; preds = %168
  %174 = getelementptr inbounds %struct.cgraph_edge, ptr %171, i64 0, i32 2
  %175 = load ptr, ptr %174, align 8, !tbaa !125
  %176 = icmp eq ptr %175, %141
  br i1 %176, label %177, label %168, !prof !141, !llvm.loop !140

177:                                              ; preds = %168, %173, %164, %160
  %178 = phi i1 [ %163, %160 ], [ %163, %164 ], [ %172, %173 ], [ %172, %168 ]
  %179 = zext i1 %178 to i8
  br label %180

180:                                              ; preds = %177, %153
  %181 = phi i8 [ %135, %153 ], [ %179, %177 ]
  %182 = getelementptr inbounds %struct.funct_state_d, ptr %154, i64 0, i32 2
  %183 = load i8, ptr %182, align 4, !tbaa !118
  %184 = icmp eq i8 %183, 0
  %185 = select i1 %184, i8 0, i8 %181, !prof !97
  store i32 %159, ptr %154, align 4, !tbaa !115
  %186 = getelementptr inbounds %struct.funct_state_d, ptr %154, i64 0, i32 3
  store i8 %185, ptr %186, align 1, !tbaa !117
  switch i32 %159, label %217 [
    i32 0, label %187
    i32 1, label %201
  ], !prof !142

187:                                              ; preds = %180
  %188 = load ptr, ptr %141, align 8, !tbaa !129
  %189 = load i64, ptr %188, align 8
  %190 = and i64 %189, 1048576
  %191 = icmp eq i64 %190, 0
  %192 = load ptr, ptr @dump_file, align 8
  %193 = icmp ne ptr %192, null
  %194 = select i1 %191, i1 %193, i1 false
  br i1 %194, label %195, label %200

195:                                              ; preds = %187
  %196 = icmp eq i8 %185, 0
  %197 = select i1 %196, ptr @.str.5, ptr @.str.4
  %198 = tail call ptr @cgraph_node_name(ptr noundef nonnull %141) #20
  %199 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %192, ptr noundef nonnull @.str.3, ptr noundef nonnull %197, ptr noundef %198)
  br label %200

200:                                              ; preds = %195, %187
  tail call void @cgraph_set_readonly_flag(ptr noundef nonnull %141, i8 noundef zeroext 1) #20
  br label %216

201:                                              ; preds = %180
  %202 = load ptr, ptr %141, align 8, !tbaa !129
  %203 = getelementptr inbounds %struct.tree_function_decl, ptr %202, i64 0, i32 5
  %204 = load i32, ptr %203, align 8
  %205 = and i32 %204, 134217728
  %206 = icmp eq i32 %205, 0
  %207 = load ptr, ptr @dump_file, align 8
  %208 = icmp ne ptr %207, null
  %209 = select i1 %206, i1 %208, i1 false
  br i1 %209, label %210, label %215

210:                                              ; preds = %201
  %211 = icmp eq i8 %185, 0
  %212 = select i1 %211, ptr @.str.5, ptr @.str.4
  %213 = tail call ptr @cgraph_node_name(ptr noundef nonnull %141) #20
  %214 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %207, ptr noundef nonnull @.str.6, ptr noundef nonnull %212, ptr noundef %213)
  br label %215

215:                                              ; preds = %210, %201
  tail call void @cgraph_set_pure_flag(ptr noundef nonnull %141, i8 noundef zeroext 1) #20
  br label %216

216:                                              ; preds = %200, %215
  tail call void @cgraph_set_looping_const_or_pure_flag(ptr noundef nonnull %141, i8 noundef zeroext %185) #20
  br label %217

217:                                              ; preds = %216, %180
  %218 = getelementptr inbounds %struct.cgraph_node, ptr %141, i64 0, i32 16
  %219 = load ptr, ptr %218, align 8, !tbaa !133
  %220 = getelementptr inbounds %struct.ipa_dfs_info, ptr %219, i64 0, i32 4
  %221 = load ptr, ptr %220, align 8, !tbaa !134
  %222 = icmp eq ptr %221, null
  br i1 %222, label %223, label %140, !prof !143, !llvm.loop !144

223:                                              ; preds = %217, %134
  %224 = add nuw nsw i64 %20, 1
  %225 = icmp eq i64 %224, %15
  br i1 %225, label %16, label %19, !prof !145, !llvm.loop !146

226:                                              ; preds = %16, %232
  %227 = phi ptr [ %234, %232 ], [ %17, %16 ]
  %228 = getelementptr inbounds %struct.cgraph_node, ptr %227, i64 0, i32 16
  %229 = load ptr, ptr %228, align 8, !tbaa !133
  %230 = icmp eq ptr %229, null
  br i1 %230, label %232, label %231, !prof !147

231:                                              ; preds = %226
  tail call void @free(ptr noundef %229)
  store ptr null, ptr %228, align 8, !tbaa !133
  br label %232

232:                                              ; preds = %226, %231
  %233 = getelementptr inbounds %struct.cgraph_node, ptr %227, i64 0, i32 3
  %234 = load ptr, ptr %233, align 8, !tbaa !76
  %235 = icmp eq ptr %234, null
  br i1 %235, label %236, label %226, !prof !148, !llvm.loop !149

236:                                              ; preds = %232, %16
  %237 = tail call i32 @ipa_utils_reduced_inorder(ptr noundef %3, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef nonnull @ignore_edge) #20
  %238 = load ptr, ptr @dump_file, align 8, !tbaa !76
  %239 = icmp eq ptr %238, null
  br i1 %239, label %242, label %240, !prof !101

240:                                              ; preds = %236
  tail call void @dump_cgraph(ptr noundef nonnull %238) #20
  %241 = load ptr, ptr @dump_file, align 8, !tbaa !76
  tail call void @ipa_utils_print_order(ptr noundef %241, ptr noundef nonnull @.str.7, ptr noundef %3, i32 noundef %237) #20
  br label %242

242:                                              ; preds = %240, %236
  %243 = icmp sgt i32 %237, 0
  br i1 %243, label %244, label %246, !prof !102

244:                                              ; preds = %242
  %245 = zext nneg i32 %237 to i64
  br label %249

246:                                              ; preds = %395, %242
  %247 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !76
  %248 = icmp eq ptr %247, null
  br i1 %248, label %425, label %398, !prof !103

249:                                              ; preds = %244, %395
  %250 = phi i64 [ 0, %244 ], [ %396, %395 ]
  %251 = getelementptr inbounds ptr, ptr %3, i64 %250
  %252 = load ptr, ptr %251, align 8, !tbaa !76
  br label %253

253:                                              ; preds = %340, %249
  %254 = phi i8 [ 0, %249 ], [ %341, %340 ]
  %255 = phi ptr [ %252, %249 ], [ %342, %340 ]
  %256 = icmp eq ptr %255, null
  br i1 %256, label %343, label %257, !prof !150

257:                                              ; preds = %253
  %258 = load ptr, ptr @funct_state_vec, align 8, !nonnull !151, !noundef !151
  %259 = load i32, ptr %258, align 8, !tbaa !105
  %260 = getelementptr inbounds %struct.cgraph_node, ptr %255, i64 0, i32 24
  %261 = load i32, ptr %260, align 8, !tbaa !107
  %262 = icmp ugt i32 %259, %261
  tail call void @llvm.assume(i1 %262)
  %263 = zext i32 %261 to i64
  %264 = getelementptr inbounds %struct.VEC_funct_state_base, ptr %258, i64 0, i32 2, i64 %263
  %265 = load ptr, ptr %264, align 8, !tbaa !76
  %266 = getelementptr inbounds %struct.funct_state_d, ptr %265, i64 0, i32 4
  %267 = load i8, ptr %266, align 2, !tbaa !152
  %268 = icmp eq i8 %267, 0
  br i1 %268, label %269, label %272, !prof !98

269:                                              ; preds = %257
  %270 = tail call i32 @cgraph_function_body_availability(ptr noundef nonnull %255) #20
  %271 = icmp eq i32 %270, 2
  br i1 %271, label %272, label %273, !prof !97

272:                                              ; preds = %269, %257
  br label %273

273:                                              ; preds = %272, %269
  %274 = phi i8 [ 1, %272 ], [ %254, %269 ]
  %275 = icmp eq i8 %274, 0
  br i1 %275, label %276, label %340, !prof !98

276:                                              ; preds = %273
  %277 = getelementptr inbounds %struct.cgraph_node, ptr %255, i64 0, i32 1
  %278 = load ptr, ptr %277, align 8, !tbaa !76
  %279 = icmp eq ptr %278, null
  br i1 %279, label %334, label %284, !prof !136

280:                                              ; preds = %331
  %281 = getelementptr inbounds %struct.cgraph_edge, ptr %285, i64 0, i32 6
  %282 = load ptr, ptr %281, align 8, !tbaa !76
  %283 = icmp eq ptr %282, null
  br i1 %283, label %334, label %284, !prof !153, !llvm.loop !154

284:                                              ; preds = %276, %280
  %285 = phi ptr [ %282, %280 ], [ %278, %276 ]
  %286 = phi i8 [ %333, %280 ], [ 0, %276 ]
  %287 = getelementptr inbounds %struct.cgraph_edge, ptr %285, i64 0, i32 2
  %288 = load ptr, ptr %287, align 8, !tbaa !125
  %289 = tail call i32 @cgraph_function_body_availability(ptr noundef %288) #20
  %290 = icmp ugt i32 %289, 2
  br i1 %290, label %291, label %320, !prof !155

291:                                              ; preds = %284
  %292 = load ptr, ptr @funct_state_vec, align 8
  %293 = icmp eq ptr %292, null
  br i1 %293, label %303, label %294, !prof !156

294:                                              ; preds = %291
  %295 = load i32, ptr %292, align 8, !tbaa !105
  %296 = getelementptr inbounds %struct.cgraph_node, ptr %288, i64 0, i32 24
  %297 = load i32, ptr %296, align 8, !tbaa !107
  %298 = icmp ugt i32 %295, %297
  br i1 %298, label %299, label %303, !prof !157

299:                                              ; preds = %294
  %300 = zext i32 %297 to i64
  %301 = getelementptr inbounds %struct.VEC_funct_state_base, ptr %292, i64 0, i32 2, i64 %300
  %302 = load ptr, ptr %301, align 8, !tbaa !76
  br label %303

303:                                              ; preds = %291, %294, %299
  %304 = phi ptr [ %302, %299 ], [ null, %294 ], [ null, %291 ]
  %305 = icmp eq i8 %286, 0
  br i1 %305, label %306, label %331, !prof !157

306:                                              ; preds = %303
  %307 = getelementptr inbounds %struct.funct_state_d, ptr %304, i64 0, i32 4
  %308 = load i8, ptr %307, align 2, !tbaa !152
  %309 = icmp eq i8 %308, 0
  br i1 %309, label %331, label %310, !prof !157

310:                                              ; preds = %306
  %311 = load ptr, ptr %255, align 8, !tbaa !129
  %312 = load i64, ptr %311, align 8
  %313 = and i64 %312, 33554432
  %314 = icmp eq i64 %313, 0
  br i1 %314, label %315, label %331

315:                                              ; preds = %310
  %316 = getelementptr inbounds %struct.cgraph_edge, ptr %285, i64 0, i32 14
  %317 = load i8, ptr %316, align 2
  %318 = lshr i8 %317, 2
  %319 = and i8 %318, 1
  br label %331

320:                                              ; preds = %284
  %321 = getelementptr inbounds %struct.cgraph_edge, ptr %285, i64 0, i32 14
  %322 = load i8, ptr %321, align 2
  %323 = and i8 %322, 4
  %324 = icmp eq i8 %323, 0
  br i1 %324, label %331, label %325, !prof !158

325:                                              ; preds = %320
  %326 = load ptr, ptr %288, align 8, !tbaa !129
  %327 = load i64, ptr %326, align 8
  %328 = and i64 %327, 33554432
  %329 = icmp eq i64 %328, 0
  %330 = select i1 %329, i8 1, i8 %286
  br label %331

331:                                              ; preds = %303, %310, %306, %315, %325, %320
  %332 = phi i1 [ true, %320 ], [ true, %325 ], [ false, %303 ], [ true, %315 ], [ true, %310 ], [ true, %306 ]
  %333 = phi i8 [ %286, %320 ], [ %330, %325 ], [ 1, %303 ], [ %319, %315 ], [ 0, %310 ], [ 0, %306 ]
  br i1 %332, label %280, label %334, !prof !159

334:                                              ; preds = %280, %331, %276
  %335 = phi i8 [ 0, %276 ], [ %333, %331 ], [ %333, %280 ]
  %336 = getelementptr inbounds %struct.cgraph_node, ptr %255, i64 0, i32 16
  %337 = load ptr, ptr %336, align 8, !tbaa !133
  %338 = getelementptr inbounds %struct.ipa_dfs_info, ptr %337, i64 0, i32 4
  %339 = load ptr, ptr %338, align 8, !tbaa !134
  br label %340

340:                                              ; preds = %273, %334
  %341 = phi i8 [ %335, %334 ], [ 1, %273 ]
  %342 = phi ptr [ %339, %334 ], [ %255, %273 ]
  br i1 %275, label %253, label %343, !prof !98

343:                                              ; preds = %340, %253
  %344 = phi i8 [ %254, %253 ], [ %341, %340 ]
  %345 = icmp eq ptr %252, null
  br i1 %345, label %395, label %346, !prof !136

346:                                              ; preds = %343
  %347 = icmp eq i8 %344, 0
  br label %348

348:                                              ; preds = %346, %389
  %349 = phi ptr [ %252, %346 ], [ %393, %389 ]
  %350 = load ptr, ptr @funct_state_vec, align 8
  %351 = icmp eq ptr %350, null
  br i1 %351, label %361, label %352, !prof !97

352:                                              ; preds = %348
  %353 = load i32, ptr %350, align 8, !tbaa !105
  %354 = getelementptr inbounds %struct.cgraph_node, ptr %349, i64 0, i32 24
  %355 = load i32, ptr %354, align 8, !tbaa !107
  %356 = icmp ugt i32 %353, %355
  br i1 %356, label %357, label %361, !prof !98

357:                                              ; preds = %352
  %358 = zext i32 %355 to i64
  %359 = getelementptr inbounds %struct.VEC_funct_state_base, ptr %350, i64 0, i32 2, i64 %358
  %360 = load ptr, ptr %359, align 8, !tbaa !76
  br label %361

361:                                              ; preds = %348, %352, %357
  %362 = phi ptr [ %360, %357 ], [ null, %352 ], [ null, %348 ]
  %363 = load ptr, ptr %349, align 8, !tbaa !129
  %364 = load i64, ptr %363, align 8
  %365 = and i64 %364, 33554432
  %366 = icmp eq i64 %365, 0
  br i1 %347, label %367, label %386, !prof !98

367:                                              ; preds = %361
  br i1 %366, label %368, label %389, !prof !97

368:                                              ; preds = %367
  tail call void @cgraph_set_nothrow_flag(ptr noundef nonnull %349, i8 noundef zeroext 1) #20
  %369 = getelementptr inbounds %struct.cgraph_node, ptr %349, i64 0, i32 2
  %370 = load ptr, ptr %369, align 8, !tbaa !76
  %371 = icmp eq ptr %370, null
  br i1 %371, label %380, label %372

372:                                              ; preds = %368, %372
  %373 = phi ptr [ %378, %372 ], [ %370, %368 ]
  %374 = getelementptr inbounds %struct.cgraph_edge, ptr %373, i64 0, i32 14
  %375 = load i8, ptr %374, align 2
  %376 = and i8 %375, -5
  store i8 %376, ptr %374, align 2
  %377 = getelementptr inbounds %struct.cgraph_edge, ptr %373, i64 0, i32 4
  %378 = load ptr, ptr %377, align 8, !tbaa !76
  %379 = icmp eq ptr %378, null
  br i1 %379, label %380, label %372, !llvm.loop !160

380:                                              ; preds = %372, %368
  %381 = load ptr, ptr @dump_file, align 8, !tbaa !76
  %382 = icmp eq ptr %381, null
  br i1 %382, label %389, label %383

383:                                              ; preds = %380
  %384 = tail call ptr @cgraph_node_name(ptr noundef nonnull %349) #20
  %385 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %381, ptr noundef nonnull @.str.8, ptr noundef %384)
  br label %389

386:                                              ; preds = %361
  br i1 %366, label %387, label %389

387:                                              ; preds = %386
  %388 = getelementptr inbounds %struct.funct_state_d, ptr %362, i64 0, i32 4
  store i8 1, ptr %388, align 2, !tbaa !152
  br label %389

389:                                              ; preds = %367, %380, %383, %386, %387
  %390 = getelementptr inbounds %struct.cgraph_node, ptr %349, i64 0, i32 16
  %391 = load ptr, ptr %390, align 8, !tbaa !133
  %392 = getelementptr inbounds %struct.ipa_dfs_info, ptr %391, i64 0, i32 4
  %393 = load ptr, ptr %392, align 8, !tbaa !134
  %394 = icmp eq ptr %393, null
  br i1 %394, label %395, label %348, !prof !143, !llvm.loop !161

395:                                              ; preds = %389, %343
  %396 = add nuw nsw i64 %250, 1
  %397 = icmp eq i64 %396, %245
  br i1 %397, label %246, label %249, !prof !145, !llvm.loop !162

398:                                              ; preds = %246, %421
  %399 = phi ptr [ %423, %421 ], [ %247, %246 ]
  %400 = getelementptr inbounds %struct.cgraph_node, ptr %399, i64 0, i32 16
  %401 = load ptr, ptr %400, align 8, !tbaa !133
  %402 = icmp eq ptr %401, null
  br i1 %402, label %404, label %403, !prof !147

403:                                              ; preds = %398
  tail call void @free(ptr noundef %401)
  store ptr null, ptr %400, align 8, !tbaa !133
  br label %404

404:                                              ; preds = %403, %398
  %405 = tail call i32 @cgraph_function_body_availability(ptr noundef nonnull %399) #20
  %406 = icmp ugt i32 %405, 1
  br i1 %406, label %407, label %421, !prof !163

407:                                              ; preds = %404
  %408 = load ptr, ptr @funct_state_vec, align 8
  %409 = icmp eq ptr %408, null
  br i1 %409, label %419, label %410, !prof !97

410:                                              ; preds = %407
  %411 = load i32, ptr %408, align 8, !tbaa !105
  %412 = getelementptr inbounds %struct.cgraph_node, ptr %399, i64 0, i32 24
  %413 = load i32, ptr %412, align 8, !tbaa !107
  %414 = icmp ugt i32 %411, %413
  br i1 %414, label %415, label %419, !prof !98

415:                                              ; preds = %410
  %416 = zext i32 %413 to i64
  %417 = getelementptr inbounds %struct.VEC_funct_state_base, ptr %408, i64 0, i32 2, i64 %416
  %418 = load ptr, ptr %417, align 8, !tbaa !76
  br label %419

419:                                              ; preds = %407, %410, %415
  %420 = phi ptr [ %418, %415 ], [ null, %410 ], [ null, %407 ]
  tail call void @free(ptr noundef %420)
  br label %421

421:                                              ; preds = %404, %419
  %422 = getelementptr inbounds %struct.cgraph_node, ptr %399, i64 0, i32 3
  %423 = load ptr, ptr %422, align 8, !tbaa !76
  %424 = icmp eq ptr %423, null
  br i1 %424, label %425, label %398, !prof !148, !llvm.loop !164

425:                                              ; preds = %421, %246
  tail call void @free(ptr noundef %3)
  %426 = load ptr, ptr @funct_state_vec, align 8, !tbaa !76
  %427 = icmp eq ptr %426, null
  br i1 %427, label %429, label %428, !prof !122

428:                                              ; preds = %425
  tail call void @free(ptr noundef %426)
  br label %429

429:                                              ; preds = %425, %428
  store ptr null, ptr @funct_state_vec, align 8, !tbaa !76
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @generate_summary() #10 !prof !99 !PGOFuncName !165 {
  tail call fastcc void @register_hooks()
  %1 = tail call ptr @pointer_set_create() #20
  store ptr %1, ptr @visited_nodes, align 8, !tbaa !76
  %2 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !76
  %3 = icmp eq ptr %2, null
  br i1 %3, label %60, label %4, !prof !103

4:                                                ; preds = %0, %56
  %5 = phi ptr [ %58, %56 ], [ %2, %0 ]
  %6 = tail call i32 @cgraph_function_body_availability(ptr noundef nonnull %5) #20
  %7 = icmp ugt i32 %6, 1
  br i1 %7, label %8, label %56, !prof !166

8:                                                ; preds = %4
  %9 = tail call fastcc ptr @analyze_function(ptr noundef nonnull %5, i8 noundef zeroext 1)
  %10 = load ptr, ptr @funct_state_vec, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %17, label %12, !prof !167

12:                                               ; preds = %8
  %13 = load i32, ptr %10, align 8, !tbaa !105
  %14 = getelementptr inbounds %struct.cgraph_node, ptr %5, i64 0, i32 24
  %15 = load i32, ptr %14, align 8, !tbaa !107
  %16 = icmp ugt i32 %13, %15
  br i1 %16, label %50, label %17, !prof !168

17:                                               ; preds = %12, %8
  %18 = getelementptr inbounds %struct.cgraph_node, ptr %5, i64 0, i32 24
  %19 = load i32, ptr %18, align 8, !tbaa !107
  %20 = add nsw i32 %19, 1
  br i1 %11, label %23, label %21, !prof !101

21:                                               ; preds = %17
  %22 = load i32, ptr %10, align 8, !tbaa !105
  br label %23

23:                                               ; preds = %21, %17
  %24 = phi i32 [ %22, %21 ], [ 0, %17 ]
  br i1 %11, label %27, label %25, !prof !101

25:                                               ; preds = %23
  %26 = load i32, ptr %10, align 8, !tbaa !105
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i32 [ %26, %25 ], [ 0, %23 ]
  %29 = sub nsw i32 %20, %28
  br i1 %11, label %36, label %30, !prof !101

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.VEC_funct_state_base, ptr %10, i64 0, i32 1
  %32 = load i32, ptr %31, align 4, !tbaa !169
  %33 = load i32, ptr %10, align 8, !tbaa !105
  %34 = sub i32 %32, %33
  %35 = icmp uge i32 %34, %29
  br label %38

36:                                               ; preds = %27
  %37 = icmp eq i32 %28, %20
  br label %38

38:                                               ; preds = %36, %30
  %39 = phi i1 [ %35, %30 ], [ %37, %36 ]
  br i1 %39, label %42, label %40, !prof !122

40:                                               ; preds = %38
  %41 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef %10, i32 noundef %29) #20
  store ptr %41, ptr @funct_state_vec, align 8, !tbaa !76
  br label %42

42:                                               ; preds = %40, %38
  %43 = load ptr, ptr @funct_state_vec, align 8, !tbaa !76, !nonnull !151, !noundef !151
  store i32 %20, ptr %43, align 8, !tbaa !105
  %44 = getelementptr inbounds %struct.VEC_funct_state_base, ptr %43, i64 0, i32 2
  %45 = sext i32 %24 to i64
  %46 = getelementptr inbounds ptr, ptr %44, i64 %45
  %47 = sub nsw i32 %20, %24
  %48 = sext i32 %47 to i64
  %49 = shl nsw i64 %48, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %46, i8 0, i64 %49, i1 false), !prof !170
  br label %50

50:                                               ; preds = %12, %42
  %51 = load ptr, ptr @funct_state_vec, align 8
  %52 = getelementptr inbounds %struct.cgraph_node, ptr %5, i64 0, i32 24
  %53 = load i32, ptr %52, align 8, !tbaa !107
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.VEC_funct_state_base, ptr %51, i64 0, i32 2, i64 %54
  store ptr %9, ptr %55, align 8, !tbaa !76
  br label %56

56:                                               ; preds = %4, %50
  %57 = getelementptr inbounds %struct.cgraph_node, ptr %5, i64 0, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !76
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %4, !prof !171, !llvm.loop !172

60:                                               ; preds = %56, %0
  %61 = load ptr, ptr @visited_nodes, align 8, !tbaa !76
  tail call void @pointer_set_destroy(ptr noundef %61) #20
  store ptr null, ptr @visited_nodes, align 8, !tbaa !76
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @pure_const_write_summary(ptr nocapture noundef readonly %0) #11 !prof !75 {
  %2 = tail call ptr @lto_create_simple_output_block(i32 noundef 5) #20
  %3 = getelementptr inbounds %struct.cgraph_node_set_def, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !173
  %5 = icmp eq ptr %4, null
  %6 = load ptr, ptr @funct_state_vec, align 8
  %7 = icmp eq ptr %6, null
  br label %8

8:                                                ; preds = %39, %1
  %9 = phi i32 [ 0, %1 ], [ %41, %39 ]
  %10 = phi i32 [ 0, %1 ], [ %40, %39 ]
  br i1 %5, label %13, label %11

11:                                               ; preds = %8
  %12 = load i32, ptr %4, align 8, !tbaa !175
  br label %13

13:                                               ; preds = %8, %11
  %14 = phi i32 [ %12, %11 ], [ 0, %8 ]
  %15 = icmp ugt i32 %14, %9
  br i1 %15, label %16, label %42

16:                                               ; preds = %13
  %17 = zext i32 %9 to i64
  %18 = getelementptr inbounds %struct.VEC_cgraph_node_ptr_base, ptr %4, i64 0, i32 2, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !76
  %20 = getelementptr inbounds %struct.cgraph_node, ptr %19, i64 0, i32 27
  %21 = load i16, ptr %20, align 4
  %22 = and i16 %21, 32
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %39, label %24

24:                                               ; preds = %16
  br i1 %7, label %34, label %25

25:                                               ; preds = %24
  %26 = load i32, ptr %6, align 8, !tbaa !105
  %27 = getelementptr inbounds %struct.cgraph_node, ptr %19, i64 0, i32 24
  %28 = load i32, ptr %27, align 8, !tbaa !107
  %29 = icmp ugt i32 %26, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = zext i32 %28 to i64
  %32 = getelementptr inbounds %struct.VEC_funct_state_base, ptr %6, i64 0, i32 2, i64 %31
  %33 = load ptr, ptr %32, align 8, !tbaa !76
  br label %34

34:                                               ; preds = %24, %25, %30
  %35 = phi ptr [ %33, %30 ], [ null, %25 ], [ null, %24 ]
  %36 = icmp ne ptr %35, null
  %37 = zext i1 %36 to i32
  %38 = add i32 %10, %37
  br label %39

39:                                               ; preds = %34, %16
  %40 = phi i32 [ %10, %16 ], [ %38, %34 ]
  %41 = add i32 %9, 1
  br label %8, !llvm.loop !177

42:                                               ; preds = %13
  %43 = getelementptr inbounds %struct.cgraph_node_set_def, ptr %0, i64 0, i32 1
  %44 = getelementptr inbounds %struct.lto_simple_output_block, ptr %2, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !178
  %46 = zext i32 %10 to i64
  tail call void @lto_output_uleb128_stream(ptr noundef %45, i64 noundef %46) #20
  %47 = getelementptr inbounds %struct.lto_simple_output_block, ptr %2, i64 0, i32 1
  br label %48

48:                                               ; preds = %114, %42
  %49 = phi i32 [ 0, %42 ], [ %115, %114 ]
  %50 = load ptr, ptr %43, align 8, !tbaa !173
  %51 = icmp eq ptr %50, null
  br i1 %51, label %54, label %52

52:                                               ; preds = %48
  %53 = load i32, ptr %50, align 8, !tbaa !175
  br label %54

54:                                               ; preds = %48, %52
  %55 = phi i32 [ %53, %52 ], [ 0, %48 ]
  %56 = icmp ugt i32 %55, %49
  br i1 %56, label %57, label %116

57:                                               ; preds = %54
  %58 = zext i32 %49 to i64
  %59 = getelementptr inbounds %struct.VEC_cgraph_node_ptr_base, ptr %50, i64 0, i32 2, i64 %58
  %60 = load ptr, ptr %59, align 8, !tbaa !76
  %61 = getelementptr inbounds %struct.cgraph_node, ptr %60, i64 0, i32 27
  %62 = load i16, ptr %61, align 4
  %63 = and i16 %62, 32
  %64 = icmp eq i16 %63, 0
  br i1 %64, label %114, label %65

65:                                               ; preds = %57
  %66 = load ptr, ptr @funct_state_vec, align 8
  %67 = icmp eq ptr %66, null
  br i1 %67, label %77, label %68

68:                                               ; preds = %65
  %69 = load i32, ptr %66, align 8, !tbaa !105
  %70 = getelementptr inbounds %struct.cgraph_node, ptr %60, i64 0, i32 24
  %71 = load i32, ptr %70, align 8, !tbaa !107
  %72 = icmp ugt i32 %69, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %68
  %74 = zext i32 %71 to i64
  %75 = getelementptr inbounds %struct.VEC_funct_state_base, ptr %66, i64 0, i32 2, i64 %74
  %76 = load ptr, ptr %75, align 8, !tbaa !76
  br label %77

77:                                               ; preds = %65, %68, %73
  %78 = phi ptr [ %76, %73 ], [ null, %68 ], [ null, %65 ]
  %79 = icmp eq ptr %78, null
  br i1 %79, label %114, label %80

80:                                               ; preds = %77
  br i1 %67, label %90, label %81

81:                                               ; preds = %80
  %82 = load i32, ptr %66, align 8, !tbaa !105
  %83 = getelementptr inbounds %struct.cgraph_node, ptr %60, i64 0, i32 24
  %84 = load i32, ptr %83, align 8, !tbaa !107
  %85 = icmp ugt i32 %82, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %81
  %87 = zext i32 %84 to i64
  %88 = getelementptr inbounds %struct.VEC_funct_state_base, ptr %66, i64 0, i32 2, i64 %87
  %89 = load ptr, ptr %88, align 8, !tbaa !76
  br label %90

90:                                               ; preds = %80, %81, %86
  %91 = phi ptr [ %89, %86 ], [ null, %81 ], [ null, %80 ]
  %92 = load ptr, ptr %47, align 8, !tbaa !180
  %93 = getelementptr inbounds %struct.lto_out_decl_state, ptr %92, i64 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !181
  %95 = tail call i32 @lto_cgraph_encoder_encode(ptr noundef %94, ptr noundef %60) #20
  %96 = load ptr, ptr %44, align 8, !tbaa !178
  %97 = sext i32 %95 to i64
  tail call void @lto_output_uleb128_stream(ptr noundef %96, i64 noundef %97) #20
  %98 = tail call ptr @bitpack_create() #20
  %99 = load i32, ptr %91, align 4, !tbaa !115
  %100 = zext i32 %99 to i64
  tail call void @bp_pack_value(ptr noundef %98, i64 noundef %100, i32 noundef 2) #20
  %101 = getelementptr inbounds %struct.funct_state_d, ptr %91, i64 0, i32 1
  %102 = load i32, ptr %101, align 4, !tbaa !119
  %103 = zext i32 %102 to i64
  tail call void @bp_pack_value(ptr noundef %98, i64 noundef %103, i32 noundef 2) #20
  %104 = getelementptr inbounds %struct.funct_state_d, ptr %91, i64 0, i32 2
  %105 = load i8, ptr %104, align 4, !tbaa !118
  %106 = zext i8 %105 to i64
  tail call void @bp_pack_value(ptr noundef %98, i64 noundef %106, i32 noundef 1) #20
  %107 = getelementptr inbounds %struct.funct_state_d, ptr %91, i64 0, i32 3
  %108 = load i8, ptr %107, align 1, !tbaa !117
  %109 = zext i8 %108 to i64
  tail call void @bp_pack_value(ptr noundef %98, i64 noundef %109, i32 noundef 1) #20
  %110 = getelementptr inbounds %struct.funct_state_d, ptr %91, i64 0, i32 4
  %111 = load i8, ptr %110, align 2, !tbaa !152
  %112 = zext i8 %111 to i64
  tail call void @bp_pack_value(ptr noundef %98, i64 noundef %112, i32 noundef 1) #20
  %113 = load ptr, ptr %44, align 8, !tbaa !178
  tail call void @lto_output_bitpack(ptr noundef %113, ptr noundef %98) #20
  tail call void @bitpack_delete(ptr noundef %98) #20
  br label %114

114:                                              ; preds = %57, %77, %90
  %115 = add i32 %49, 1
  br label %48, !llvm.loop !183

116:                                              ; preds = %54
  tail call void @lto_destroy_simple_output_block(ptr noundef %2) #20
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @pure_const_read_summary() #11 !prof !75 {
  %1 = alloca ptr, align 8
  %2 = alloca i64, align 8
  %3 = tail call ptr @lto_get_file_decl_data() #20
  tail call fastcc void @register_hooks()
  %4 = load ptr, ptr %3, align 8, !tbaa !76
  %5 = icmp eq ptr %4, null
  br i1 %5, label %96, label %6

6:                                                ; preds = %0, %90
  %7 = phi ptr [ %94, %90 ], [ %4, %0 ]
  %8 = phi i32 [ %91, %90 ], [ 1, %0 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #20
  %9 = call ptr @lto_create_simple_input_block(ptr noundef nonnull %7, i32 noundef 5, ptr noundef nonnull %1, ptr noundef nonnull %2) #20
  %10 = icmp eq ptr %9, null
  br i1 %10, label %90, label %11

11:                                               ; preds = %6
  %12 = call i64 @lto_input_uleb128(ptr noundef nonnull %9) #20
  %13 = trunc i64 %12 to i32
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %87, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.lto_file_decl_data, ptr %7, i64 0, i32 2
  br label %17

17:                                               ; preds = %15, %64
  %18 = phi i32 [ 0, %15 ], [ %85, %64 ]
  %19 = call ptr @xcalloc(i64 noundef 1, i64 noundef 12) #20
  %20 = call i64 @lto_input_uleb128(ptr noundef nonnull %9) #20
  %21 = trunc i64 %20 to i32
  %22 = load ptr, ptr %16, align 8, !tbaa !184
  %23 = call ptr @lto_cgraph_encoder_deref(ptr noundef %22, i32 noundef %21) #20
  %24 = load ptr, ptr @funct_state_vec, align 8
  %25 = icmp eq ptr %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %17
  %27 = load i32, ptr %24, align 8, !tbaa !105
  %28 = getelementptr inbounds %struct.cgraph_node, ptr %23, i64 0, i32 24
  %29 = load i32, ptr %28, align 8, !tbaa !107
  %30 = icmp ugt i32 %27, %29
  br i1 %30, label %64, label %31

31:                                               ; preds = %26, %17
  %32 = getelementptr inbounds %struct.cgraph_node, ptr %23, i64 0, i32 24
  %33 = load i32, ptr %32, align 8, !tbaa !107
  %34 = add nsw i32 %33, 1
  br i1 %25, label %37, label %35

35:                                               ; preds = %31
  %36 = load i32, ptr %24, align 8, !tbaa !105
  br label %37

37:                                               ; preds = %35, %31
  %38 = phi i32 [ %36, %35 ], [ 0, %31 ]
  br i1 %25, label %41, label %39

39:                                               ; preds = %37
  %40 = load i32, ptr %24, align 8, !tbaa !105
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i32 [ %40, %39 ], [ 0, %37 ]
  %43 = sub nsw i32 %34, %42
  br i1 %25, label %50, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.VEC_funct_state_base, ptr %24, i64 0, i32 1
  %46 = load i32, ptr %45, align 4, !tbaa !169
  %47 = load i32, ptr %24, align 8, !tbaa !105
  %48 = sub i32 %46, %47
  %49 = icmp uge i32 %48, %43
  br label %52

50:                                               ; preds = %41
  %51 = icmp eq i32 %42, %34
  br label %52

52:                                               ; preds = %50, %44
  %53 = phi i1 [ %49, %44 ], [ %51, %50 ]
  br i1 %53, label %56, label %54

54:                                               ; preds = %52
  %55 = call ptr @vec_heap_p_reserve_exact(ptr noundef %24, i32 noundef %43) #20
  store ptr %55, ptr @funct_state_vec, align 8, !tbaa !76
  br label %56

56:                                               ; preds = %54, %52
  %57 = load ptr, ptr @funct_state_vec, align 8, !tbaa !76, !nonnull !151, !noundef !151
  store i32 %34, ptr %57, align 8, !tbaa !105
  %58 = getelementptr inbounds %struct.VEC_funct_state_base, ptr %57, i64 0, i32 2
  %59 = sext i32 %38 to i64
  %60 = getelementptr inbounds ptr, ptr %58, i64 %59
  %61 = sub nsw i32 %34, %38
  %62 = sext i32 %61 to i64
  %63 = shl nsw i64 %62, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %60, i8 0, i64 %63, i1 false)
  br label %64

64:                                               ; preds = %26, %56
  %65 = load ptr, ptr @funct_state_vec, align 8
  %66 = getelementptr inbounds %struct.cgraph_node, ptr %23, i64 0, i32 24
  %67 = load i32, ptr %66, align 8, !tbaa !107
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.VEC_funct_state_base, ptr %65, i64 0, i32 2, i64 %68
  store ptr %19, ptr %69, align 8, !tbaa !76
  %70 = call ptr @lto_input_bitpack(ptr noundef nonnull %9) #20
  %71 = call i64 @bp_unpack_value(ptr noundef %70, i32 noundef 2) #20
  %72 = trunc i64 %71 to i32
  store i32 %72, ptr %19, align 4, !tbaa !115
  %73 = call i64 @bp_unpack_value(ptr noundef %70, i32 noundef 2) #20
  %74 = trunc i64 %73 to i32
  %75 = getelementptr inbounds %struct.funct_state_d, ptr %19, i64 0, i32 1
  store i32 %74, ptr %75, align 4, !tbaa !119
  %76 = call i64 @bp_unpack_value(ptr noundef %70, i32 noundef 1) #20
  %77 = trunc i64 %76 to i8
  %78 = getelementptr inbounds %struct.funct_state_d, ptr %19, i64 0, i32 2
  store i8 %77, ptr %78, align 4, !tbaa !118
  %79 = call i64 @bp_unpack_value(ptr noundef %70, i32 noundef 1) #20
  %80 = trunc i64 %79 to i8
  %81 = getelementptr inbounds %struct.funct_state_d, ptr %19, i64 0, i32 3
  store i8 %80, ptr %81, align 1, !tbaa !117
  %82 = call i64 @bp_unpack_value(ptr noundef %70, i32 noundef 1) #20
  %83 = trunc i64 %82 to i8
  %84 = getelementptr inbounds %struct.funct_state_d, ptr %19, i64 0, i32 4
  store i8 %83, ptr %84, align 2, !tbaa !152
  call void @bitpack_delete(ptr noundef %70) #20
  %85 = add nuw i32 %18, 1
  %86 = icmp eq i32 %85, %13
  br i1 %86, label %87, label %17, !llvm.loop !186

87:                                               ; preds = %64, %11
  %88 = load ptr, ptr %1, align 8, !tbaa !76
  %89 = load i64, ptr %2, align 8, !tbaa !187
  call void @lto_destroy_simple_input_block(ptr noundef nonnull %7, i32 noundef 5, ptr noundef nonnull %9, ptr noundef %88, i64 noundef %89) #20
  br label %90

90:                                               ; preds = %87, %6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #20
  %91 = add i32 %8, 1
  %92 = zext i32 %8 to i64
  %93 = getelementptr inbounds ptr, ptr %3, i64 %92
  %94 = load ptr, ptr %93, align 8, !tbaa !76
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %6, !llvm.loop !188

96:                                               ; preds = %90, %0
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @local_pure_const() #10 !prof !189 !PGOFuncName !190 {
  %1 = tail call zeroext i8 @function_called_by_processed_nodes_p() #20
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %8, label %3, !prof !191

3:                                                ; preds = %0
  %4 = load ptr, ptr @dump_file, align 8, !tbaa !76
  %5 = icmp eq ptr %4, null
  br i1 %5, label %126, label %6

6:                                                ; preds = %3
  %7 = tail call i64 @fwrite(ptr nonnull @.str.43, i64 45, i64 1, ptr nonnull %4)
  br label %126

8:                                                ; preds = %0
  %9 = load ptr, ptr @current_function_decl, align 8, !tbaa !76
  %10 = tail call ptr @cgraph_node(ptr noundef %9) #20
  %11 = tail call i32 @cgraph_function_body_availability(ptr noundef %10) #20
  %12 = icmp ult i32 %11, 3
  br i1 %12, label %13, label %18, !prof !192

13:                                               ; preds = %8
  %14 = load ptr, ptr @dump_file, align 8, !tbaa !76
  %15 = icmp eq ptr %14, null
  br i1 %15, label %126, label %16

16:                                               ; preds = %13
  %17 = tail call i64 @fwrite(ptr nonnull @.str.44, i64 40, i64 1, ptr nonnull %14)
  br label %126

18:                                               ; preds = %8
  %19 = tail call fastcc ptr @analyze_function(ptr noundef %10, i8 noundef zeroext 0)
  %20 = load i32, ptr %19, align 4, !tbaa !115
  switch i32 %20, label %91 [
    i32 0, label %21
    i32 1, label %56
  ], !prof !193

21:                                               ; preds = %18
  %22 = load ptr, ptr @current_function_decl, align 8, !tbaa !76
  %23 = load i64, ptr %22, align 8
  %24 = and i64 %23, 1048576
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %39, !prof !101

26:                                               ; preds = %21
  tail call void @cgraph_set_readonly_flag(ptr noundef %10, i8 noundef zeroext 1) #20
  %27 = getelementptr inbounds %struct.funct_state_d, ptr %19, i64 0, i32 3
  %28 = load i8, ptr %27, align 1, !tbaa !117
  tail call void @cgraph_set_looping_const_or_pure_flag(ptr noundef %10, i8 noundef zeroext %28) #20
  %29 = load ptr, ptr @dump_file, align 8, !tbaa !76
  %30 = icmp eq ptr %29, null
  br i1 %30, label %91, label %31, !prof !101

31:                                               ; preds = %26
  %32 = load i8, ptr %27, align 1, !tbaa !117
  %33 = icmp eq i8 %32, 0
  %34 = select i1 %33, ptr @.str.5, ptr @.str.4
  %35 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 22), align 8, !tbaa !194
  %36 = load ptr, ptr @current_function_decl, align 8, !tbaa !76
  %37 = tail call ptr %35(ptr noundef %36, i32 noundef 2) #20
  %38 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %29, ptr noundef nonnull @.str.3, ptr noundef nonnull %34, ptr noundef %37)
  br label %91

39:                                               ; preds = %21
  %40 = getelementptr inbounds %struct.tree_function_decl, ptr %22, i64 0, i32 5
  %41 = load i32, ptr %40, align 8
  %42 = and i32 %41, 268435456
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %91, label %44

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.funct_state_d, ptr %19, i64 0, i32 3
  %46 = load i8, ptr %45, align 1, !tbaa !117
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %91

48:                                               ; preds = %44
  tail call void @cgraph_set_looping_const_or_pure_flag(ptr noundef %10, i8 noundef zeroext 0) #20
  %49 = load ptr, ptr @dump_file, align 8, !tbaa !76
  %50 = icmp eq ptr %49, null
  br i1 %50, label %91, label %51

51:                                               ; preds = %48
  %52 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 22), align 8, !tbaa !194
  %53 = load ptr, ptr @current_function_decl, align 8, !tbaa !76
  %54 = tail call ptr %52(ptr noundef %53, i32 noundef 2) #20
  %55 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %49, ptr noundef nonnull @.str.45, ptr noundef %54)
  br label %91

56:                                               ; preds = %18
  %57 = load ptr, ptr @current_function_decl, align 8, !tbaa !76
  %58 = load i64, ptr %57, align 8
  %59 = and i64 %58, 1048576
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %74

61:                                               ; preds = %56
  tail call void @cgraph_set_pure_flag(ptr noundef %10, i8 noundef zeroext 1) #20
  %62 = getelementptr inbounds %struct.funct_state_d, ptr %19, i64 0, i32 3
  %63 = load i8, ptr %62, align 1, !tbaa !117
  tail call void @cgraph_set_looping_const_or_pure_flag(ptr noundef %10, i8 noundef zeroext %63) #20
  %64 = load ptr, ptr @dump_file, align 8, !tbaa !76
  %65 = icmp eq ptr %64, null
  br i1 %65, label %91, label %66

66:                                               ; preds = %61
  %67 = load i8, ptr %62, align 1, !tbaa !117
  %68 = icmp eq i8 %67, 0
  %69 = select i1 %68, ptr @.str.5, ptr @.str.4
  %70 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 22), align 8, !tbaa !194
  %71 = load ptr, ptr @current_function_decl, align 8, !tbaa !76
  %72 = tail call ptr %70(ptr noundef %71, i32 noundef 2) #20
  %73 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %64, ptr noundef nonnull @.str.6, ptr noundef nonnull %69, ptr noundef %72)
  br label %91

74:                                               ; preds = %56
  %75 = getelementptr inbounds %struct.tree_function_decl, ptr %57, i64 0, i32 5
  %76 = load i32, ptr %75, align 8
  %77 = and i32 %76, 268435456
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %91, label %79

79:                                               ; preds = %74
  %80 = getelementptr inbounds %struct.funct_state_d, ptr %19, i64 0, i32 3
  %81 = load i8, ptr %80, align 1, !tbaa !117
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %79
  tail call void @cgraph_set_looping_const_or_pure_flag(ptr noundef %10, i8 noundef zeroext 0) #20
  %84 = load ptr, ptr @dump_file, align 8, !tbaa !76
  %85 = icmp eq ptr %84, null
  br i1 %85, label %91, label %86

86:                                               ; preds = %83
  %87 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 22), align 8, !tbaa !194
  %88 = load ptr, ptr @current_function_decl, align 8, !tbaa !76
  %89 = tail call ptr %87(ptr noundef %88, i32 noundef 2) #20
  %90 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %84, ptr noundef nonnull @.str.45, ptr noundef %89)
  br label %91

91:                                               ; preds = %18, %66, %61, %83, %86, %79, %74, %31, %26, %48, %51, %44, %39
  %92 = phi i8 [ 0, %18 ], [ 0, %79 ], [ 1, %86 ], [ 1, %83 ], [ 0, %74 ], [ 1, %66 ], [ 1, %61 ], [ 0, %44 ], [ 1, %51 ], [ 1, %48 ], [ 0, %39 ], [ 1, %31 ], [ 1, %26 ]
  %93 = getelementptr inbounds %struct.funct_state_d, ptr %19, i64 0, i32 4
  %94 = load i8, ptr %93, align 2, !tbaa !152
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %96, label %121, !prof !191

96:                                               ; preds = %91
  %97 = load ptr, ptr @current_function_decl, align 8, !tbaa !76
  %98 = load i64, ptr %97, align 8
  %99 = and i64 %98, 33554432
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %121, !prof !202

101:                                              ; preds = %96
  tail call void @cgraph_set_nothrow_flag(ptr noundef %10, i8 noundef zeroext 1) #20
  %102 = getelementptr inbounds %struct.cgraph_node, ptr %10, i64 0, i32 2
  %103 = load ptr, ptr %102, align 8, !tbaa !76
  %104 = icmp eq ptr %103, null
  br i1 %104, label %113, label %105, !prof !136

105:                                              ; preds = %101, %105
  %106 = phi ptr [ %111, %105 ], [ %103, %101 ]
  %107 = getelementptr inbounds %struct.cgraph_edge, ptr %106, i64 0, i32 14
  %108 = load i8, ptr %107, align 2
  %109 = and i8 %108, -5
  store i8 %109, ptr %107, align 2
  %110 = getelementptr inbounds %struct.cgraph_edge, ptr %106, i64 0, i32 4
  %111 = load ptr, ptr %110, align 8, !tbaa !76
  %112 = icmp eq ptr %111, null
  br i1 %112, label %113, label %105, !prof !203, !llvm.loop !204

113:                                              ; preds = %105, %101
  %114 = load ptr, ptr @dump_file, align 8, !tbaa !76
  %115 = icmp eq ptr %114, null
  br i1 %115, label %121, label %116, !prof !128

116:                                              ; preds = %113
  %117 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 22), align 8, !tbaa !194
  %118 = load ptr, ptr @current_function_decl, align 8, !tbaa !76
  %119 = tail call ptr %117(ptr noundef %118, i32 noundef 2) #20
  %120 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %114, ptr noundef nonnull @.str.8, ptr noundef %119)
  br label %121

121:                                              ; preds = %91, %96, %116, %113
  %122 = phi i8 [ %92, %91 ], [ %92, %96 ], [ 1, %116 ], [ 1, %113 ]
  tail call void @free(ptr noundef %19)
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %126, label %124, !prof !205

124:                                              ; preds = %121
  %125 = tail call i32 @execute_fixup_cfg() #20
  br label %126

126:                                              ; preds = %121, %13, %16, %3, %6, %124
  %127 = phi i32 [ %125, %124 ], [ 0, %6 ], [ 0, %3 ], [ 0, %16 ], [ 0, %13 ], [ 0, %121 ]
  ret i32 %127
}

declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @cgraph_remove_function_insertion_hook(ptr noundef) local_unnamed_addr #3

declare void @cgraph_remove_node_duplication_hook(ptr noundef) local_unnamed_addr #3

declare void @cgraph_remove_node_removal_hook(ptr noundef) local_unnamed_addr #3

declare i32 @ipa_utils_reduced_inorder(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

declare void @dump_cgraph(ptr noundef) local_unnamed_addr #3

declare void @ipa_utils_print_order(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @cgraph_function_body_availability(ptr noundef) local_unnamed_addr #3

declare i32 @flags_from_decl_or_type(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

declare ptr @cgraph_node_name(ptr noundef) local_unnamed_addr #3

declare void @cgraph_set_readonly_flag(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @cgraph_set_looping_const_or_pure_flag(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @cgraph_set_pure_flag(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal zeroext i8 @ignore_edge(ptr nocapture noundef readonly %0) #13 !prof !206 !PGOFuncName !207 {
  %2 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 14
  %3 = load i8, ptr %2, align 2
  %4 = lshr i8 %3, 2
  %5 = and i8 %4, 1
  %6 = xor i8 %5, 1
  ret i8 %6
}

declare void @cgraph_set_nothrow_flag(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @register_hooks() unnamed_addr #11 !prof !99 !PGOFuncName !208 {
  %1 = load i1, ptr @register_hooks.init_p, align 1
  br i1 %1, label %6, label %2, !prof !122

2:                                                ; preds = %0
  store i1 true, ptr @register_hooks.init_p, align 1
  %3 = tail call ptr @cgraph_add_node_removal_hook(ptr noundef nonnull @remove_node_data, ptr noundef null) #20
  store ptr %3, ptr @node_removal_hook_holder, align 8, !tbaa !76
  %4 = tail call ptr @cgraph_add_node_duplication_hook(ptr noundef nonnull @duplicate_node_data, ptr noundef null) #20
  store ptr %4, ptr @node_duplication_hook_holder, align 8, !tbaa !76
  %5 = tail call ptr @cgraph_add_function_insertion_hook(ptr noundef nonnull @add_new_function, ptr noundef null) #20
  store ptr %5, ptr @function_insertion_hook_holder, align 8, !tbaa !76
  br label %6

6:                                                ; preds = %0, %2
  ret void
}

declare ptr @pointer_set_create() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @analyze_function(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #10 !prof !209 !PGOFuncName !210 {
  %3 = load ptr, ptr %0, align 8, !tbaa !129
  %4 = load ptr, ptr @current_function_decl, align 8, !tbaa !76
  %5 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 12) #20
  store i32 0, ptr %5, align 4, !tbaa !115
  %6 = getelementptr inbounds %struct.funct_state_d, ptr %5, i64 0, i32 1
  store i32 2, ptr %6, align 4, !tbaa !119
  %7 = getelementptr inbounds %struct.funct_state_d, ptr %5, i64 0, i32 2
  store i8 1, ptr %7, align 4, !tbaa !118
  %8 = getelementptr inbounds %struct.funct_state_d, ptr %5, i64 0, i32 3
  store i8 0, ptr %8, align 1, !tbaa !117
  %9 = getelementptr inbounds %struct.funct_state_d, ptr %5, i64 0, i32 4
  store i8 0, ptr %9, align 2, !tbaa !152
  %10 = load ptr, ptr @dump_file, align 8, !tbaa !76
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12, !prof !211

12:                                               ; preds = %2
  %13 = tail call ptr @cgraph_node_name(ptr noundef nonnull %0) #20
  %14 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %10, ptr noundef nonnull @.str.11, ptr noundef %13)
  br label %15

15:                                               ; preds = %12, %2
  %16 = getelementptr inbounds %struct.tree_function_decl, ptr %3, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !87
  tail call void @push_cfun(ptr noundef %17) #20
  store ptr %3, ptr @current_function_decl, align 8, !tbaa !76
  %18 = load ptr, ptr @cfun, align 8, !tbaa !76
  %19 = getelementptr inbounds %struct.function, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !212
  %21 = load ptr, ptr %20, align 8, !tbaa !214
  %22 = getelementptr inbounds %struct.basic_block_def, ptr %21, i64 0, i32 6
  %23 = load ptr, ptr %22, align 8, !tbaa !216
  %24 = getelementptr inbounds %struct.control_flow_graph, ptr %20, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !218
  %26 = icmp eq ptr %23, %25
  br i1 %26, label %393, label %27, !prof !219

27:                                               ; preds = %15
  %28 = icmp ne i8 %1, 0
  br label %29

29:                                               ; preds = %27, %384
  %30 = phi ptr [ %23, %27 ], [ %386, %384 ]
  %31 = getelementptr inbounds %struct.basic_block_def, ptr %30, i64 0, i32 13
  %32 = load i32, ptr %31, align 8, !tbaa !220, !noalias !221
  %33 = and i32 %32, 512
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %41, !prof !224

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.basic_block_def, ptr %30, i64 0, i32 7
  %37 = load ptr, ptr %36, align 8, !tbaa !87, !noalias !221
  %38 = icmp eq ptr %37, null
  br i1 %38, label %41, label %39, !prof !225

39:                                               ; preds = %35
  %40 = load ptr, ptr %37, align 8, !tbaa !226, !noalias !221
  br label %41

41:                                               ; preds = %39, %35, %29
  %42 = phi ptr [ %40, %39 ], [ null, %35 ], [ null, %29 ]
  %43 = icmp eq ptr %42, null
  br i1 %43, label %46, label %44, !prof !225

44:                                               ; preds = %41
  %45 = load ptr, ptr %42, align 8, !tbaa !228, !noalias !221
  br label %46

46:                                               ; preds = %41, %44
  %47 = phi ptr [ %45, %44 ], [ null, %41 ]
  %48 = icmp eq ptr %47, null
  br i1 %48, label %384, label %49, !prof !230

49:                                               ; preds = %46, %379
  %50 = phi i1 [ %382, %379 ], [ %48, %46 ]
  %51 = phi ptr [ %381, %379 ], [ %47, %46 ]
  %52 = load ptr, ptr %51, align 8, !tbaa !231
  %53 = load i32, ptr %52, align 8
  %54 = and i32 %53, 255
  %55 = icmp eq i32 %54, 2
  br i1 %55, label %370, label %56, !prof !233

56:                                               ; preds = %49
  %57 = load ptr, ptr @dump_file, align 8, !tbaa !76
  %58 = icmp eq ptr %57, null
  br i1 %58, label %62, label %59, !prof !234

59:                                               ; preds = %56
  %60 = tail call i64 @fwrite(ptr nonnull @.str.18, i64 12, i64 1, ptr nonnull %57)
  %61 = load ptr, ptr @dump_file, align 8, !tbaa !76
  tail call void @print_gimple_stmt(ptr noundef %61, ptr noundef %52, i32 noundef 0, i32 noundef 0) #20
  br label %62

62:                                               ; preds = %59, %56
  %63 = tail call zeroext i8 @walk_stmt_load_store_ops(ptr noundef %52, ptr noundef nonnull %5, ptr noundef nonnull @check_load, ptr noundef nonnull @check_store) #20
  %64 = load i32, ptr %52, align 8
  %65 = and i32 %64, 255
  %66 = icmp eq i32 %65, 8
  br i1 %66, label %88, label %67, !prof !235

67:                                               ; preds = %62
  %68 = tail call zeroext i8 @stmt_could_throw_p(ptr noundef nonnull %52) #20
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %88, label %70, !prof !236

70:                                               ; preds = %67
  %71 = load i32, ptr @flag_non_call_exceptions, align 4, !tbaa !91
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %79, label %73

73:                                               ; preds = %70
  %74 = load ptr, ptr @dump_file, align 8, !tbaa !76
  %75 = icmp eq ptr %74, null
  br i1 %75, label %78, label %76

76:                                               ; preds = %73
  %77 = tail call i64 @fwrite(ptr nonnull @.str.19, i64 22, i64 1, ptr nonnull %74)
  br label %78

78:                                               ; preds = %76, %73
  store i8 1, ptr %8, align 1, !tbaa !117
  br label %79

79:                                               ; preds = %78, %70
  %80 = tail call zeroext i8 @stmt_can_throw_external(ptr noundef nonnull %52) #20
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %88, label %82

82:                                               ; preds = %79
  %83 = load ptr, ptr @dump_file, align 8, !tbaa !76
  %84 = icmp eq ptr %83, null
  br i1 %84, label %87, label %85

85:                                               ; preds = %82
  %86 = tail call i64 @fwrite(ptr nonnull @.str.20, i64 24, i64 1, ptr nonnull %83)
  br label %87

87:                                               ; preds = %85, %82
  store i8 1, ptr %9, align 2, !tbaa !152
  br label %88

88:                                               ; preds = %87, %79, %67, %62
  %89 = load i32, ptr %52, align 8
  %90 = trunc i32 %89 to i8
  switch i8 %90, label %370 [
    i8 8, label %98
    i8 4, label %294
    i8 7, label %91
  ], !prof !237

91:                                               ; preds = %88
  %92 = getelementptr inbounds %struct.gimple_statement_asm, ptr %52, i64 0, i32 4
  %93 = load i8, ptr %92, align 2, !tbaa !87
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %360, label %95

95:                                               ; preds = %91
  %96 = getelementptr inbounds %struct.gimple_statement_asm, ptr %52, i64 0, i32 2
  %97 = getelementptr inbounds %struct.gimple_statement_asm, ptr %52, i64 0, i32 3
  br label %319

98:                                               ; preds = %88
  %99 = tail call i32 @gimple_call_flags(ptr noundef nonnull %52) #20
  %100 = load i32, ptr %52, align 8
  %101 = and i32 %100, 255
  %102 = add nsw i32 %101, -10
  %103 = icmp ult i32 %102, -9
  br i1 %103, label %117, label %104, !prof !238

104:                                              ; preds = %98
  %105 = zext nneg i32 %101 to i64
  %106 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %105
  %107 = load i32, ptr %106, align 4, !tbaa !91
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %108
  %110 = load i64, ptr %109, align 8, !tbaa !187
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %112, label %113, !prof !238

112:                                              ; preds = %104
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.10) #20
  br label %113

113:                                              ; preds = %112, %104
  %114 = getelementptr inbounds i8, ptr %52, i64 %110
  %115 = getelementptr inbounds ptr, ptr %114, i64 1
  %116 = load ptr, ptr %115, align 8, !tbaa !76
  br label %117

117:                                              ; preds = %113, %98
  %118 = phi ptr [ %116, %113 ], [ null, %98 ]
  %119 = load i64, ptr %118, align 8
  %120 = and i64 %119, 65535
  %121 = icmp eq i64 %120, 121
  br i1 %121, label %122, label %125, !prof !239

122:                                              ; preds = %117
  %123 = getelementptr inbounds %struct.tree_exp, ptr %118, i64 0, i32 3
  %124 = load ptr, ptr %123, align 8, !tbaa !87
  br label %125

125:                                              ; preds = %122, %117
  %126 = phi ptr [ %124, %122 ], [ null, %117 ]
  %127 = tail call zeroext i8 @stmt_could_throw_p(ptr noundef nonnull %52) #20
  %128 = icmp ne i8 %127, 0
  br i1 %128, label %129, label %132, !prof !238

129:                                              ; preds = %125
  %130 = tail call zeroext i8 @stmt_can_throw_external(ptr noundef nonnull %52) #20
  %131 = icmp ne i8 %130, 0
  br label %132

132:                                              ; preds = %129, %125
  %133 = phi i1 [ false, %125 ], [ %131, %129 ]
  %134 = icmp eq i8 %127, 0
  br i1 %134, label %204, label %135, !prof !239

135:                                              ; preds = %132
  %136 = getelementptr inbounds %struct.gimple_statement_base, ptr %52, i64 0, i32 3
  %137 = load i32, ptr %136, align 4, !tbaa !87
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %204, label %139

139:                                              ; preds = %135, %199
  %140 = phi i64 [ %200, %199 ], [ 0, %135 ]
  %141 = load i32, ptr %52, align 8
  %142 = and i32 %141, 255
  %143 = add nsw i32 %142, -10
  %144 = icmp ult i32 %143, -9
  br i1 %144, label %158, label %145

145:                                              ; preds = %139
  %146 = zext nneg i32 %142 to i64
  %147 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %146
  %148 = load i32, ptr %147, align 4, !tbaa !91
  %149 = zext i32 %148 to i64
  %150 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %149
  %151 = load i64, ptr %150, align 8, !tbaa !187
  %152 = icmp eq i64 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %145
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.10) #20
  br label %154

154:                                              ; preds = %153, %145
  %155 = getelementptr inbounds i8, ptr %52, i64 %151
  %156 = getelementptr inbounds ptr, ptr %155, i64 %140
  %157 = load ptr, ptr %156, align 8, !tbaa !76
  br label %158

158:                                              ; preds = %154, %139
  %159 = phi ptr [ %157, %154 ], [ null, %139 ]
  %160 = icmp eq ptr %159, null
  br i1 %160, label %199, label %161

161:                                              ; preds = %158
  %162 = load i32, ptr %52, align 8
  %163 = and i32 %162, 255
  %164 = add nsw i32 %163, -10
  %165 = icmp ult i32 %164, -9
  br i1 %165, label %179, label %166

166:                                              ; preds = %161
  %167 = zext nneg i32 %163 to i64
  %168 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %167
  %169 = load i32, ptr %168, align 4, !tbaa !91
  %170 = zext i32 %169 to i64
  %171 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %170
  %172 = load i64, ptr %171, align 8, !tbaa !187
  %173 = icmp eq i64 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %166
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.10) #20
  br label %175

175:                                              ; preds = %174, %166
  %176 = getelementptr inbounds i8, ptr %52, i64 %172
  %177 = getelementptr inbounds ptr, ptr %176, i64 %140
  %178 = load ptr, ptr %177, align 8, !tbaa !76
  br label %179

179:                                              ; preds = %175, %161
  %180 = phi ptr [ %178, %175 ], [ null, %161 ]
  %181 = tail call zeroext i8 @tree_could_throw_p(ptr noundef %180) #20
  %182 = icmp eq i8 %181, 0
  br i1 %182, label %199, label %183

183:                                              ; preds = %179
  %184 = load i32, ptr @flag_non_call_exceptions, align 4
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %192, label %186

186:                                              ; preds = %183
  %187 = load ptr, ptr @dump_file, align 8, !tbaa !76
  %188 = icmp eq ptr %187, null
  br i1 %188, label %191, label %189

189:                                              ; preds = %186
  %190 = tail call i64 @fwrite(ptr nonnull @.str.33, i64 31, i64 1, ptr nonnull %187)
  br label %191

191:                                              ; preds = %189, %186
  store i8 1, ptr %8, align 1, !tbaa !117
  br label %192

192:                                              ; preds = %191, %183
  br i1 %133, label %193, label %199

193:                                              ; preds = %192
  %194 = load ptr, ptr @dump_file, align 8, !tbaa !76
  %195 = icmp eq ptr %194, null
  br i1 %195, label %198, label %196

196:                                              ; preds = %193
  %197 = tail call i64 @fwrite(ptr nonnull @.str.34, i64 33, i64 1, ptr nonnull %194)
  br label %198

198:                                              ; preds = %196, %193
  store i8 1, ptr %9, align 2, !tbaa !152
  br label %199

199:                                              ; preds = %198, %192, %179, %158
  %200 = add nuw nsw i64 %140, 1
  %201 = load i32, ptr %136, align 4, !tbaa !87
  %202 = zext i32 %201 to i64
  %203 = icmp ult i64 %200, %202
  br i1 %203, label %139, label %204, !llvm.loop !240

204:                                              ; preds = %199, %135, %132
  %205 = icmp ne ptr %126, null
  br i1 %205, label %206, label %228, !prof !239

206:                                              ; preds = %204
  %207 = tail call i32 @setjmp_call_p(ptr noundef nonnull %126) #20
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %215, label %209, !prof !239

209:                                              ; preds = %206
  %210 = load ptr, ptr @dump_file, align 8, !tbaa !76
  %211 = icmp eq ptr %210, null
  br i1 %211, label %214, label %212

212:                                              ; preds = %209
  %213 = tail call i64 @fwrite(ptr nonnull @.str.35, i64 29, i64 1, ptr nonnull %210)
  br label %214

214:                                              ; preds = %212, %209
  store i8 1, ptr %8, align 1, !tbaa !117
  store i32 2, ptr %5, align 4, !tbaa !115
  br label %215

215:                                              ; preds = %214, %206
  %216 = getelementptr inbounds %struct.tree_function_decl, ptr %126, i64 0, i32 5
  %217 = load i32, ptr %216, align 8
  %218 = and i32 %217, 6144
  %219 = icmp eq i32 %218, 6144
  br i1 %219, label %220, label %228, !prof !238

220:                                              ; preds = %215
  %221 = and i32 %217, 2047
  switch i32 %221, label %228 [
    i32 490, label %222
    i32 522, label %222
  ]

222:                                              ; preds = %220, %220
  %223 = load ptr, ptr @dump_file, align 8, !tbaa !76
  %224 = icmp eq ptr %223, null
  br i1 %224, label %227, label %225

225:                                              ; preds = %222
  %226 = tail call i64 @fwrite(ptr nonnull @.str.36, i64 48, i64 1, ptr nonnull %223)
  br label %227

227:                                              ; preds = %225, %222
  store i32 2, ptr %5, align 4, !tbaa !115
  store i8 1, ptr %8, align 1, !tbaa !117
  br label %228

228:                                              ; preds = %227, %220, %215, %204
  %229 = load ptr, ptr @current_function_decl, align 8
  %230 = icmp ne ptr %126, %229
  %231 = select i1 %28, i1 true, i1 %230, !prof !241
  br i1 %231, label %233, label %232, !prof !239

232:                                              ; preds = %228
  store i8 1, ptr %8, align 1, !tbaa !117
  br label %370

233:                                              ; preds = %228
  %234 = and i1 %28, %205
  br i1 %234, label %370, label %235, !prof !241

235:                                              ; preds = %233
  %236 = load i32, ptr @flag_non_call_exceptions, align 4
  %237 = icmp ne i32 %236, 0
  %238 = select i1 %128, i1 %237, i1 false, !prof !242
  br i1 %238, label %239, label %245, !prof !242

239:                                              ; preds = %235
  %240 = load ptr, ptr @dump_file, align 8, !tbaa !76
  %241 = icmp eq ptr %240, null
  br i1 %241, label %244, label %242

242:                                              ; preds = %239
  %243 = tail call i64 @fwrite(ptr nonnull @.str.37, i64 23, i64 1, ptr nonnull %240)
  br label %244

244:                                              ; preds = %242, %239
  store i8 1, ptr %8, align 1, !tbaa !117
  br label %245

245:                                              ; preds = %244, %235
  br i1 %133, label %246, label %259, !prof !242

246:                                              ; preds = %245
  %247 = load ptr, ptr @dump_file, align 8, !tbaa !76
  %248 = icmp eq ptr %247, null
  br i1 %248, label %258, label %249

249:                                              ; preds = %246
  %250 = tail call i32 @lookup_stmt_eh_lp(ptr noundef nonnull %52) #20
  %251 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %247, ptr noundef nonnull @.str.38, i32 noundef %250)
  br i1 %205, label %252, label %258

252:                                              ; preds = %249
  %253 = load ptr, ptr @dump_file, align 8, !tbaa !76
  %254 = tail call ptr @decl_assembler_name(ptr noundef nonnull %126) #20
  %255 = getelementptr inbounds %struct.tree_identifier, ptr %254, i64 0, i32 1
  %256 = load ptr, ptr %255, align 8, !tbaa !87
  %257 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %253, ptr noundef nonnull @.str.39, ptr noundef %256)
  br label %258

258:                                              ; preds = %252, %249, %246
  store i8 1, ptr %9, align 2, !tbaa !152
  br label %259

259:                                              ; preds = %258, %245
  %260 = and i32 %99, 1
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %269, label %262, !prof !243

262:                                              ; preds = %259
  br i1 %205, label %263, label %370

263:                                              ; preds = %262
  %264 = getelementptr inbounds %struct.tree_function_decl, ptr %126, i64 0, i32 5
  %265 = load i32, ptr %264, align 8
  %266 = and i32 %265, 268435456
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %370, label %268

268:                                              ; preds = %263
  store i8 1, ptr %8, align 1, !tbaa !117
  br label %370

269:                                              ; preds = %259
  %270 = and i32 %99, 2
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %288, label %272, !prof !243

272:                                              ; preds = %269
  br i1 %205, label %273, label %279

273:                                              ; preds = %272
  %274 = getelementptr inbounds %struct.tree_function_decl, ptr %126, i64 0, i32 5
  %275 = load i32, ptr %274, align 8
  %276 = and i32 %275, 268435456
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %279, label %278

278:                                              ; preds = %273
  store i8 1, ptr %8, align 1, !tbaa !117
  br label %279

279:                                              ; preds = %278, %273, %272
  %280 = load ptr, ptr @dump_file, align 8, !tbaa !76
  %281 = icmp eq ptr %280, null
  br i1 %281, label %284, label %282

282:                                              ; preds = %279
  %283 = tail call i64 @fwrite(ptr nonnull @.str.40, i64 36, i64 1, ptr nonnull %280)
  br label %284

284:                                              ; preds = %282, %279
  %285 = load i32, ptr %5, align 4, !tbaa !115
  %286 = icmp eq i32 %285, 0
  br i1 %286, label %287, label %370

287:                                              ; preds = %284
  store i32 1, ptr %5, align 4, !tbaa !115
  br label %370

288:                                              ; preds = %269
  %289 = load ptr, ptr @dump_file, align 8, !tbaa !76
  %290 = icmp eq ptr %289, null
  br i1 %290, label %293, label %291, !prof !243

291:                                              ; preds = %288
  %292 = tail call i64 @fwrite(ptr nonnull @.str.41, i64 43, i64 1, ptr nonnull %289)
  br label %293

293:                                              ; preds = %291, %288
  store i32 2, ptr %5, align 4, !tbaa !115
  store i8 1, ptr %8, align 1, !tbaa !117
  br label %370

294:                                              ; preds = %88
  %295 = and i32 %89, 255
  %296 = add nsw i32 %295, -1
  %297 = icmp ult i32 %296, 9
  tail call void @llvm.assume(i1 %297)
  %298 = zext nneg i32 %295 to i64
  %299 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %298
  %300 = load i32, ptr %299, align 4, !tbaa !91
  %301 = zext i32 %300 to i64
  %302 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %301
  %303 = load i64, ptr %302, align 8, !tbaa !187
  %304 = icmp eq i64 %303, 0
  br i1 %304, label %305, label %306, !prof !244

305:                                              ; preds = %294
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.10) #20
  br label %306

306:                                              ; preds = %305, %294
  %307 = getelementptr inbounds i8, ptr %52, i64 %303
  %308 = load ptr, ptr %307, align 8, !tbaa !76
  %309 = getelementptr inbounds %struct.tree_decl_common, ptr %308, i64 0, i32 2
  %310 = load i64, ptr %309, align 8
  %311 = and i64 %310, 256
  %312 = icmp eq i64 %311, 0
  br i1 %312, label %370, label %313, !prof !245

313:                                              ; preds = %306
  %314 = load ptr, ptr @dump_file, align 8, !tbaa !76
  %315 = icmp eq ptr %314, null
  br i1 %315, label %318, label %316

316:                                              ; preds = %313
  %317 = tail call i64 @fwrite(ptr nonnull @.str.21, i64 36, i64 1, ptr nonnull %314)
  br label %318

318:                                              ; preds = %316, %313
  store i32 2, ptr %5, align 4, !tbaa !115
  br label %370

319:                                              ; preds = %95, %355
  %320 = phi i32 [ 0, %95 ], [ %356, %355 ]
  %321 = load i8, ptr %96, align 8, !tbaa !87
  %322 = zext i8 %321 to i32
  %323 = add nuw nsw i32 %320, %322
  %324 = load i8, ptr %97, align 1, !tbaa !87
  %325 = zext i8 %324 to i32
  %326 = add nuw nsw i32 %323, %325
  %327 = load i32, ptr %52, align 8
  %328 = and i32 %327, 255
  %329 = add nsw i32 %328, -1
  %330 = icmp ult i32 %329, 9
  tail call void @llvm.assume(i1 %330)
  %331 = zext nneg i32 %328 to i64
  %332 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %331
  %333 = load i32, ptr %332, align 4, !tbaa !91
  %334 = zext i32 %333 to i64
  %335 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %334
  %336 = load i64, ptr %335, align 8, !tbaa !187
  %337 = icmp eq i64 %336, 0
  br i1 %337, label %338, label %339

338:                                              ; preds = %319
  tail call void @fancy_abort(ptr noundef nonnull @.str.42, i32 noundef 1622, ptr noundef nonnull @.str.10) #20
  br label %339

339:                                              ; preds = %338, %319
  %340 = getelementptr inbounds i8, ptr %52, i64 %336
  %341 = zext nneg i32 %326 to i64
  %342 = getelementptr inbounds ptr, ptr %340, i64 %341
  %343 = load ptr, ptr %342, align 8, !tbaa !76
  %344 = getelementptr inbounds %struct.tree_list, ptr %343, i64 0, i32 2
  %345 = load ptr, ptr %344, align 8, !tbaa !87
  %346 = load ptr, ptr @memory_identifier_string, align 8, !tbaa !76
  %347 = tail call i32 @simple_cst_equal(ptr noundef %345, ptr noundef %346) #20
  %348 = icmp eq i32 %347, 1
  br i1 %348, label %349, label %355

349:                                              ; preds = %339
  %350 = load ptr, ptr @dump_file, align 8, !tbaa !76
  %351 = icmp eq ptr %350, null
  br i1 %351, label %354, label %352

352:                                              ; preds = %349
  %353 = tail call i64 @fwrite(ptr nonnull @.str.22, i64 40, i64 1, ptr nonnull %350)
  br label %354

354:                                              ; preds = %352, %349
  store i32 2, ptr %5, align 4, !tbaa !115
  br label %355

355:                                              ; preds = %354, %339
  %356 = add nuw nsw i32 %320, 1
  %357 = load i8, ptr %92, align 2, !tbaa !87
  %358 = zext i8 %357 to i32
  %359 = icmp ult i32 %356, %358
  br i1 %359, label %319, label %360, !llvm.loop !246

360:                                              ; preds = %355, %91
  %361 = load i32, ptr %52, align 8
  %362 = and i32 %361, 131072
  %363 = icmp eq i32 %362, 0
  br i1 %363, label %370, label %364

364:                                              ; preds = %360
  %365 = load ptr, ptr @dump_file, align 8, !tbaa !76
  %366 = icmp eq ptr %365, null
  br i1 %366, label %369, label %367

367:                                              ; preds = %364
  %368 = tail call i64 @fwrite(ptr nonnull @.str.23, i64 30, i64 1, ptr nonnull %365)
  br label %369

369:                                              ; preds = %367, %364
  store i32 2, ptr %5, align 4, !tbaa !115
  store i8 1, ptr %8, align 1, !tbaa !117
  br label %370

370:                                              ; preds = %49, %88, %232, %233, %262, %263, %268, %284, %287, %293, %306, %318, %360, %369
  %371 = load i32, ptr %5, align 4, !tbaa !115
  %372 = icmp eq i32 %371, 2
  br i1 %372, label %373, label %379, !prof !247

373:                                              ; preds = %370
  %374 = load i8, ptr %8, align 1, !tbaa !117
  %375 = icmp eq i8 %374, 0
  br i1 %375, label %379, label %376, !prof !248

376:                                              ; preds = %373
  %377 = load i8, ptr %9, align 2, !tbaa !152
  %378 = icmp eq i8 %377, 0
  br i1 %378, label %379, label %383, !prof !249

379:                                              ; preds = %370, %373, %376
  %380 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %51, i64 0, i32 2
  %381 = load ptr, ptr %380, align 8, !tbaa !250
  %382 = icmp eq ptr %381, null
  br i1 %382, label %384, label %49, !prof !251, !llvm.loop !252

383:                                              ; preds = %376
  br i1 %50, label %384, label %393, !prof !224

384:                                              ; preds = %379, %46, %383
  %385 = getelementptr inbounds %struct.basic_block_def, ptr %30, i64 0, i32 6
  %386 = load ptr, ptr %385, align 8, !tbaa !216
  %387 = load ptr, ptr @cfun, align 8, !tbaa !76
  %388 = getelementptr inbounds %struct.function, ptr %387, i64 0, i32 1
  %389 = load ptr, ptr %388, align 8, !tbaa !212
  %390 = getelementptr inbounds %struct.control_flow_graph, ptr %389, i64 0, i32 1
  %391 = load ptr, ptr %390, align 8, !tbaa !218
  %392 = icmp eq ptr %386, %391
  br i1 %392, label %393, label %29, !prof !253, !llvm.loop !254

393:                                              ; preds = %384, %383, %15
  %394 = load i32, ptr %5, align 4, !tbaa !115
  %395 = icmp eq i32 %394, 2
  br i1 %395, label %548, label %396, !prof !255

396:                                              ; preds = %393
  %397 = tail call zeroext i8 @mark_dfs_back_edges() #20
  %398 = icmp eq i8 %397, 0
  br i1 %398, label %548, label %399, !prof !256

399:                                              ; preds = %396
  tail call void @loop_optimizer_init(i32 noundef 15) #20
  %400 = load ptr, ptr @dump_file, align 8, !tbaa !76
  %401 = icmp eq ptr %400, null
  br i1 %401, label %407, label %402

402:                                              ; preds = %399
  %403 = load i32, ptr @dump_flags, align 4, !tbaa !91
  %404 = and i32 %403, 8
  %405 = icmp eq i32 %404, 0
  br i1 %405, label %407, label %406

406:                                              ; preds = %402
  tail call void @flow_loops_dump(ptr noundef nonnull %400, ptr noundef null, i32 noundef 0) #20
  br label %407

407:                                              ; preds = %406, %402, %399
  %408 = tail call zeroext i8 @mark_irreducible_loops() #20
  %409 = icmp eq i8 %408, 0
  br i1 %409, label %416, label %410

410:                                              ; preds = %407
  %411 = load ptr, ptr @dump_file, align 8, !tbaa !76
  %412 = icmp eq ptr %411, null
  br i1 %412, label %415, label %413

413:                                              ; preds = %410
  %414 = tail call i64 @fwrite(ptr nonnull @.str.12, i64 26, i64 1, ptr nonnull %411)
  br label %415

415:                                              ; preds = %413, %410
  store i8 1, ptr %8, align 1, !tbaa !117
  br label %547

416:                                              ; preds = %407
  tail call void @scev_initialize() #20
  %417 = load ptr, ptr @cfun, align 8, !tbaa !76
  %418 = getelementptr inbounds %struct.function, ptr %417, i64 0, i32 4
  %419 = load ptr, ptr %418, align 8, !tbaa !257
  %420 = icmp eq ptr %419, null
  br i1 %420, label %496, label %421

421:                                              ; preds = %416
  %422 = getelementptr inbounds %struct.loops, ptr %419, i64 0, i32 1
  %423 = load ptr, ptr %422, align 8, !tbaa !258
  %424 = icmp eq ptr %423, null
  br i1 %424, label %427, label %425

425:                                              ; preds = %421
  %426 = load i32, ptr %423, align 8, !tbaa !260
  br label %427

427:                                              ; preds = %425, %421
  %428 = phi i32 [ %426, %425 ], [ 0, %421 ]
  %429 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %428, i64 noundef 8, i64 noundef 4) #20
  %430 = load ptr, ptr @cfun, align 8, !tbaa !76
  %431 = getelementptr inbounds %struct.function, ptr %430, i64 0, i32 4
  %432 = load ptr, ptr %431, align 8, !tbaa !257
  %433 = getelementptr inbounds %struct.loops, ptr %432, i64 0, i32 3
  %434 = load ptr, ptr %433, align 8, !tbaa !262
  br label %435

435:                                              ; preds = %448, %427
  %436 = phi ptr [ %434, %427 ], [ %449, %448 ]
  %437 = load i32, ptr %436, align 8, !tbaa !263
  %438 = icmp sgt i32 %437, 0
  br i1 %438, label %439, label %444

439:                                              ; preds = %435
  %440 = load i32, ptr %429, align 4, !tbaa !267
  %441 = add i32 %440, 1
  store i32 %441, ptr %429, align 4, !tbaa !267
  %442 = zext i32 %440 to i64
  %443 = getelementptr inbounds %struct.VEC_int_base, ptr %429, i64 0, i32 2, i64 %442
  store i32 %437, ptr %443, align 4, !tbaa !91
  br label %444

444:                                              ; preds = %439, %435
  %445 = getelementptr inbounds %struct.loop, ptr %436, i64 0, i32 8
  %446 = load ptr, ptr %445, align 8, !tbaa !269
  %447 = icmp eq ptr %446, null
  br i1 %447, label %453, label %448

448:                                              ; preds = %453, %444
  %449 = phi ptr [ %446, %444 ], [ %456, %453 ]
  br label %435, !llvm.loop !270

450:                                              ; preds = %472
  %451 = icmp eq ptr %429, null
  %452 = getelementptr inbounds %struct.loops, ptr %432, i64 0, i32 1
  br label %475

453:                                              ; preds = %444, %472
  %454 = phi ptr [ %473, %472 ], [ %436, %444 ]
  %455 = getelementptr inbounds %struct.loop, ptr %454, i64 0, i32 9
  %456 = load ptr, ptr %455, align 8, !tbaa !271
  %457 = icmp eq ptr %456, null
  br i1 %457, label %458, label %448, !llvm.loop !270

458:                                              ; preds = %453
  %459 = getelementptr inbounds %struct.loop, ptr %454, i64 0, i32 7
  %460 = load ptr, ptr %459, align 8, !tbaa !272
  %461 = icmp eq ptr %460, null
  br i1 %461, label %464, label %462

462:                                              ; preds = %458
  %463 = load i32, ptr %460, align 8, !tbaa !260
  br label %464

464:                                              ; preds = %462, %458
  %465 = phi i32 [ %463, %462 ], [ 0, %458 ]
  %466 = icmp eq i32 %465, 0
  br i1 %466, label %472, label %467

467:                                              ; preds = %464
  %468 = add i32 %465, -1
  %469 = zext i32 %468 to i64
  %470 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %460, i64 0, i32 2, i64 %469
  %471 = load ptr, ptr %470, align 8, !tbaa !76
  br label %472

472:                                              ; preds = %467, %464
  %473 = phi ptr [ %471, %467 ], [ null, %464 ]
  %474 = icmp eq ptr %473, null
  br i1 %474, label %450, label %453, !llvm.loop !273

475:                                              ; preds = %450, %487
  %476 = phi i32 [ %488, %487 ], [ 0, %450 ]
  br i1 %451, label %484, label %477

477:                                              ; preds = %475
  %478 = load i32, ptr %429, align 4, !tbaa !267
  %479 = icmp ugt i32 %478, %476
  br i1 %479, label %480, label %484

480:                                              ; preds = %477
  %481 = zext i32 %476 to i64
  %482 = getelementptr inbounds %struct.VEC_int_base, ptr %429, i64 0, i32 2, i64 %481
  %483 = load i32, ptr %482, align 4, !tbaa !91
  br label %484

484:                                              ; preds = %480, %477, %475
  %485 = phi i32 [ %483, %480 ], [ 0, %477 ], [ 0, %475 ]
  %486 = phi i1 [ false, %480 ], [ true, %477 ], [ true, %475 ]
  br i1 %486, label %494, label %487

487:                                              ; preds = %484
  %488 = add i32 %476, 1
  %489 = load ptr, ptr %452, align 8, !tbaa !258
  %490 = zext i32 %485 to i64
  %491 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %489, i64 0, i32 2, i64 %490
  %492 = load ptr, ptr %491, align 8, !tbaa !76
  %493 = icmp eq ptr %492, null
  br i1 %493, label %475, label %496, !llvm.loop !274

494:                                              ; preds = %484
  br i1 %451, label %496, label %495

495:                                              ; preds = %494
  tail call void @free(ptr noundef %429)
  br label %496

496:                                              ; preds = %487, %494, %495, %416
  %497 = phi i32 [ 0, %416 ], [ %476, %495 ], [ %476, %494 ], [ %488, %487 ]
  %498 = phi ptr [ null, %416 ], [ null, %495 ], [ null, %494 ], [ %429, %487 ]
  %499 = phi ptr [ null, %416 ], [ null, %495 ], [ null, %494 ], [ %492, %487 ]
  %500 = icmp eq ptr %499, null
  br i1 %500, label %546, label %501

501:                                              ; preds = %496, %541
  %502 = phi ptr [ %544, %541 ], [ %499, %496 ]
  %503 = phi ptr [ %543, %541 ], [ %498, %496 ]
  %504 = phi i32 [ %542, %541 ], [ %497, %496 ]
  %505 = tail call zeroext i8 @finite_loop_p(ptr noundef nonnull %502) #20
  %506 = icmp eq i8 %505, 0
  br i1 %506, label %511, label %507

507:                                              ; preds = %501
  %508 = icmp eq ptr %503, null
  %509 = load ptr, ptr @cfun, align 8
  %510 = getelementptr inbounds %struct.function, ptr %509, i64 0, i32 4
  br label %518

511:                                              ; preds = %501
  %512 = load ptr, ptr @dump_file, align 8, !tbaa !76
  %513 = icmp eq ptr %512, null
  br i1 %513, label %517, label %514

514:                                              ; preds = %511
  %515 = load i32, ptr %502, align 8, !tbaa !263
  %516 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %512, ptr noundef nonnull @.str.13, i32 noundef %515)
  br label %517

517:                                              ; preds = %514, %511
  store i8 1, ptr %8, align 1, !tbaa !117
  br label %546

518:                                              ; preds = %507, %530
  %519 = phi i32 [ %531, %530 ], [ %504, %507 ]
  br i1 %508, label %527, label %520

520:                                              ; preds = %518
  %521 = load i32, ptr %503, align 4, !tbaa !267
  %522 = icmp ugt i32 %521, %519
  br i1 %522, label %523, label %527

523:                                              ; preds = %520
  %524 = zext i32 %519 to i64
  %525 = getelementptr inbounds %struct.VEC_int_base, ptr %503, i64 0, i32 2, i64 %524
  %526 = load i32, ptr %525, align 4, !tbaa !91
  br label %527

527:                                              ; preds = %523, %520, %518
  %528 = phi i32 [ %526, %523 ], [ 0, %520 ], [ 0, %518 ]
  %529 = phi i1 [ false, %523 ], [ true, %520 ], [ true, %518 ]
  br i1 %529, label %539, label %530

530:                                              ; preds = %527
  %531 = add i32 %519, 1
  %532 = load ptr, ptr %510, align 8, !tbaa !257
  %533 = getelementptr inbounds %struct.loops, ptr %532, i64 0, i32 1
  %534 = load ptr, ptr %533, align 8, !tbaa !258
  %535 = zext i32 %528 to i64
  %536 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %534, i64 0, i32 2, i64 %535
  %537 = load ptr, ptr %536, align 8, !tbaa !76
  %538 = icmp eq ptr %537, null
  br i1 %538, label %518, label %541, !llvm.loop !274

539:                                              ; preds = %527
  br i1 %508, label %541, label %540

540:                                              ; preds = %539
  tail call void @free(ptr noundef %503)
  br label %541

541:                                              ; preds = %530, %539, %540
  %542 = phi i32 [ %519, %540 ], [ %519, %539 ], [ %531, %530 ]
  %543 = phi ptr [ null, %540 ], [ null, %539 ], [ %503, %530 ]
  %544 = phi ptr [ null, %540 ], [ null, %539 ], [ %537, %530 ]
  %545 = icmp eq ptr %544, null
  br i1 %545, label %546, label %501, !llvm.loop !275

546:                                              ; preds = %541, %496, %517
  tail call void @scev_finalize() #20
  br label %547

547:                                              ; preds = %546, %415
  tail call void @loop_optimizer_finalize() #20
  br label %548

548:                                              ; preds = %396, %547, %393
  %549 = load i64, ptr %3, align 8
  %550 = and i64 %549, 1048576
  %551 = icmp eq i64 %550, 0
  br i1 %551, label %558, label %552, !prof !211

552:                                              ; preds = %548
  store i32 0, ptr %5, align 4, !tbaa !115
  store i32 0, ptr %6, align 4, !tbaa !119
  %553 = getelementptr inbounds %struct.tree_function_decl, ptr %3, i64 0, i32 5
  %554 = load i32, ptr %553, align 8
  %555 = and i32 %554, 268435456
  %556 = icmp eq i32 %555, 0
  br i1 %556, label %557, label %558

557:                                              ; preds = %552
  store i8 0, ptr %8, align 1, !tbaa !117
  store i8 0, ptr %7, align 4, !tbaa !118
  br label %558

558:                                              ; preds = %552, %557, %548
  %559 = getelementptr inbounds %struct.tree_function_decl, ptr %3, i64 0, i32 5
  %560 = load i32, ptr %559, align 8
  %561 = and i32 %560, 134217728
  %562 = icmp eq i32 %561, 0
  br i1 %562, label %572, label %563, !prof !211

563:                                              ; preds = %558
  %564 = load i32, ptr %5, align 4, !tbaa !115
  %565 = icmp eq i32 %564, 0
  br i1 %565, label %567, label %566

566:                                              ; preds = %563
  store i32 1, ptr %5, align 4, !tbaa !115
  br label %567

567:                                              ; preds = %566, %563
  store i32 1, ptr %6, align 4, !tbaa !119
  %568 = load i32, ptr %559, align 8
  %569 = and i32 %568, 268435456
  %570 = icmp eq i32 %569, 0
  br i1 %570, label %571, label %572

571:                                              ; preds = %567
  store i8 0, ptr %8, align 1, !tbaa !117
  store i8 0, ptr %7, align 4, !tbaa !118
  br label %572

572:                                              ; preds = %567, %571, %558
  %573 = load i64, ptr %3, align 8
  %574 = and i64 %573, 33554432
  %575 = icmp eq i64 %574, 0
  br i1 %575, label %577, label %576, !prof !276

576:                                              ; preds = %572
  store i8 0, ptr %9, align 2, !tbaa !152
  br label %577

577:                                              ; preds = %576, %572
  tail call void @pop_cfun() #20
  store ptr %4, ptr @current_function_decl, align 8, !tbaa !76
  %578 = load ptr, ptr @dump_file, align 8, !tbaa !76
  %579 = icmp eq ptr %578, null
  br i1 %579, label %603, label %580, !prof !211

580:                                              ; preds = %577
  %581 = load i8, ptr %8, align 1, !tbaa !117
  %582 = icmp eq i8 %581, 0
  br i1 %582, label %585, label %583

583:                                              ; preds = %580
  %584 = tail call i64 @fwrite(ptr nonnull @.str.14, i64 29, i64 1, ptr nonnull %578)
  br label %585

585:                                              ; preds = %583, %580
  %586 = load i8, ptr %9, align 2, !tbaa !152
  %587 = icmp eq i8 %586, 0
  br i1 %587, label %591, label %588

588:                                              ; preds = %585
  %589 = load ptr, ptr @dump_file, align 8, !tbaa !76
  %590 = tail call i64 @fwrite(ptr nonnull @.str.15, i64 30, i64 1, ptr %589)
  br label %591

591:                                              ; preds = %588, %585
  %592 = load i32, ptr %5, align 4, !tbaa !115
  %593 = icmp eq i32 %592, 0
  br i1 %593, label %594, label %597

594:                                              ; preds = %591
  %595 = load ptr, ptr @dump_file, align 8, !tbaa !76
  %596 = tail call i64 @fwrite(ptr nonnull @.str.16, i64 27, i64 1, ptr %595)
  br label %597

597:                                              ; preds = %594, %591
  %598 = load i32, ptr %5, align 4, !tbaa !115
  %599 = icmp eq i32 %598, 1
  br i1 %599, label %600, label %603

600:                                              ; preds = %597
  %601 = load ptr, ptr @dump_file, align 8, !tbaa !76
  %602 = tail call i64 @fwrite(ptr nonnull @.str.17, i64 26, i64 1, ptr %601)
  br label %603

603:                                              ; preds = %577, %600, %597
  ret ptr %5
}

declare void @pointer_set_destroy(ptr noundef) local_unnamed_addr #3

declare ptr @cgraph_add_node_removal_hook(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal void @remove_node_data(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #11 !prof !75 {
  %3 = load ptr, ptr @funct_state_vec, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %71, label %5

5:                                                ; preds = %2
  %6 = load i32, ptr %3, align 8, !tbaa !105
  %7 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 24
  %8 = load i32, ptr %7, align 8, !tbaa !107
  %9 = icmp ugt i32 %6, %8
  br i1 %9, label %10, label %71

10:                                               ; preds = %5
  %11 = zext i32 %8 to i64
  %12 = getelementptr inbounds %struct.VEC_funct_state_base, ptr %3, i64 0, i32 2, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !76
  %14 = icmp eq ptr %13, null
  br i1 %14, label %71, label %15

15:                                               ; preds = %10
  br i1 %4, label %32, label %16

16:                                               ; preds = %15
  %17 = load i32, ptr %3, align 8, !tbaa !105
  %18 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 24
  %19 = load i32, ptr %18, align 8, !tbaa !107
  %20 = icmp ugt i32 %17, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = zext i32 %19 to i64
  %23 = getelementptr inbounds %struct.VEC_funct_state_base, ptr %3, i64 0, i32 2, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !76
  br label %25

25:                                               ; preds = %16, %21
  %26 = phi ptr [ %24, %21 ], [ null, %16 ]
  tail call void @free(ptr noundef %26)
  br i1 %4, label %32, label %27

27:                                               ; preds = %25
  %28 = load i32, ptr %3, align 8, !tbaa !105
  %29 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 24
  %30 = load i32, ptr %29, align 8, !tbaa !107
  %31 = icmp ugt i32 %28, %30
  br i1 %31, label %65, label %32

32:                                               ; preds = %15, %27, %25
  %33 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 24
  %34 = load i32, ptr %33, align 8, !tbaa !107
  %35 = add nsw i32 %34, 1
  br i1 %4, label %38, label %36

36:                                               ; preds = %32
  %37 = load i32, ptr %3, align 8, !tbaa !105
  br label %38

38:                                               ; preds = %36, %32
  %39 = phi i32 [ %37, %36 ], [ 0, %32 ]
  br i1 %4, label %42, label %40

40:                                               ; preds = %38
  %41 = load i32, ptr %3, align 8, !tbaa !105
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i32 [ %41, %40 ], [ 0, %38 ]
  %44 = sub nsw i32 %35, %43
  br i1 %4, label %51, label %45

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.VEC_funct_state_base, ptr %3, i64 0, i32 1
  %47 = load i32, ptr %46, align 4, !tbaa !169
  %48 = load i32, ptr %3, align 8, !tbaa !105
  %49 = sub i32 %47, %48
  %50 = icmp uge i32 %49, %44
  br label %53

51:                                               ; preds = %42
  %52 = icmp eq i32 %43, %35
  br label %53

53:                                               ; preds = %51, %45
  %54 = phi i1 [ %50, %45 ], [ %52, %51 ]
  br i1 %54, label %57, label %55

55:                                               ; preds = %53
  %56 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef nonnull %3, i32 noundef %44) #20
  store ptr %56, ptr @funct_state_vec, align 8, !tbaa !76
  br label %57

57:                                               ; preds = %55, %53
  %58 = load ptr, ptr @funct_state_vec, align 8, !tbaa !76, !nonnull !151, !noundef !151
  store i32 %35, ptr %58, align 8, !tbaa !105
  %59 = getelementptr inbounds %struct.VEC_funct_state_base, ptr %58, i64 0, i32 2
  %60 = sext i32 %39 to i64
  %61 = getelementptr inbounds ptr, ptr %59, i64 %60
  %62 = sub nsw i32 %35, %39
  %63 = sext i32 %62 to i64
  %64 = shl nsw i64 %63, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %61, i8 0, i64 %64, i1 false)
  br label %65

65:                                               ; preds = %27, %57
  %66 = load ptr, ptr @funct_state_vec, align 8
  %67 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 24
  %68 = load i32, ptr %67, align 8, !tbaa !107
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds %struct.VEC_funct_state_base, ptr %66, i64 0, i32 2, i64 %69
  store ptr null, ptr %70, align 8, !tbaa !76
  br label %71

71:                                               ; preds = %5, %2, %65, %10
  ret void
}

declare ptr @cgraph_add_node_duplication_hook(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @duplicate_node_data(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #10 !prof !277 !PGOFuncName !278 {
  %4 = load ptr, ptr @funct_state_vec, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %70, label %6, !prof !279

6:                                                ; preds = %3
  %7 = load i32, ptr %4, align 8, !tbaa !105
  %8 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 24
  %9 = load i32, ptr %8, align 8, !tbaa !107
  %10 = icmp ugt i32 %7, %9
  br i1 %10, label %11, label %70, !prof !280

11:                                               ; preds = %6
  %12 = zext i32 %9 to i64
  %13 = getelementptr inbounds %struct.VEC_funct_state_base, ptr %4, i64 0, i32 2, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !76
  %15 = icmp eq ptr %14, null
  br i1 %15, label %70, label %16, !prof !279

16:                                               ; preds = %11
  %17 = tail call ptr @xmalloc(i64 noundef 12) #20
  %18 = load ptr, ptr @funct_state_vec, align 8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %31, label %20, !prof !279

20:                                               ; preds = %16
  %21 = load i32, ptr %18, align 8, !tbaa !105
  %22 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 24
  %23 = load i32, ptr %22, align 8, !tbaa !107
  %24 = icmp ugt i32 %21, %23
  br i1 %24, label %25, label %31, !prof !280

25:                                               ; preds = %20
  %26 = zext i32 %23 to i64
  %27 = getelementptr inbounds %struct.VEC_funct_state_base, ptr %18, i64 0, i32 2, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !76
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30, !prof !280

30:                                               ; preds = %25
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 621, ptr noundef nonnull @.str.10) #20
  br label %31

31:                                               ; preds = %20, %16, %25, %30
  %32 = load ptr, ptr @funct_state_vec, align 8, !nonnull !151, !noundef !151
  %33 = load i32, ptr %32, align 8, !tbaa !105
  %34 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 24
  %35 = load i32, ptr %34, align 8, !tbaa !107
  %36 = icmp ugt i32 %33, %35
  tail call void @llvm.assume(i1 %36)
  %37 = zext i32 %35 to i64
  %38 = getelementptr inbounds %struct.VEC_funct_state_base, ptr %32, i64 0, i32 2, i64 %37
  %39 = load ptr, ptr %38, align 8, !tbaa !76
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %17, ptr noundef nonnull align 4 dereferenceable(12) %39, i64 12, i1 false)
  %40 = load i32, ptr %32, align 8, !tbaa !105
  %41 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 24
  %42 = load i32, ptr %41, align 8, !tbaa !107
  %43 = icmp ugt i32 %40, %42
  br i1 %43, label %64, label %44, !prof !280

44:                                               ; preds = %31
  %45 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 24
  %46 = load i32, ptr %45, align 8, !tbaa !107
  %47 = add nsw i32 %46, 1
  %48 = load i32, ptr %32, align 8, !tbaa !105
  %49 = sub nsw i32 %47, %48
  %50 = getelementptr inbounds %struct.VEC_funct_state_base, ptr %32, i64 0, i32 1
  %51 = load i32, ptr %50, align 4, !tbaa !169
  %52 = sub i32 %51, %48
  %53 = icmp ult i32 %52, %49
  br i1 %53, label %54, label %56

54:                                               ; preds = %44
  %55 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef nonnull %32, i32 noundef %49) #20
  store ptr %55, ptr @funct_state_vec, align 8, !tbaa !76
  br label %56

56:                                               ; preds = %54, %44
  %57 = load ptr, ptr @funct_state_vec, align 8, !tbaa !76, !nonnull !151, !noundef !151
  store i32 %47, ptr %57, align 8, !tbaa !105
  %58 = getelementptr inbounds %struct.VEC_funct_state_base, ptr %57, i64 0, i32 2
  %59 = sext i32 %48 to i64
  %60 = getelementptr inbounds ptr, ptr %58, i64 %59
  %61 = sub nsw i32 %47, %48
  %62 = sext i32 %61 to i64
  %63 = shl nsw i64 %62, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %60, i8 0, i64 %63, i1 false)
  br label %64

64:                                               ; preds = %31, %56
  %65 = load ptr, ptr @funct_state_vec, align 8
  %66 = getelementptr inbounds %struct.cgraph_node, ptr %1, i64 0, i32 24
  %67 = load i32, ptr %66, align 8, !tbaa !107
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.VEC_funct_state_base, ptr %65, i64 0, i32 2, i64 %68
  store ptr %17, ptr %69, align 8, !tbaa !76
  br label %70

70:                                               ; preds = %6, %3, %64, %11
  ret void
}

declare ptr @cgraph_add_function_insertion_hook(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal void @add_new_function(ptr noundef %0, ptr nocapture readnone %1) #11 !prof !75 {
  %3 = tail call i32 @cgraph_function_body_availability(ptr noundef %0) #20
  %4 = icmp ult i32 %3, 2
  br i1 %4, label %55, label %5

5:                                                ; preds = %2
  %6 = tail call ptr @pointer_set_create() #20
  store ptr %6, ptr @visited_nodes, align 8, !tbaa !76
  %7 = tail call fastcc ptr @analyze_function(ptr noundef %0, i8 noundef zeroext 1)
  %8 = load ptr, ptr @funct_state_vec, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %5
  %11 = load i32, ptr %8, align 8, !tbaa !105
  %12 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 24
  %13 = load i32, ptr %12, align 8, !tbaa !107
  %14 = icmp ugt i32 %11, %13
  br i1 %14, label %48, label %15

15:                                               ; preds = %10, %5
  %16 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 24
  %17 = load i32, ptr %16, align 8, !tbaa !107
  %18 = add nsw i32 %17, 1
  br i1 %9, label %21, label %19

19:                                               ; preds = %15
  %20 = load i32, ptr %8, align 8, !tbaa !105
  br label %21

21:                                               ; preds = %19, %15
  %22 = phi i32 [ %20, %19 ], [ 0, %15 ]
  br i1 %9, label %25, label %23

23:                                               ; preds = %21
  %24 = load i32, ptr %8, align 8, !tbaa !105
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i32 [ %24, %23 ], [ 0, %21 ]
  %27 = sub nsw i32 %18, %26
  br i1 %9, label %34, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.VEC_funct_state_base, ptr %8, i64 0, i32 1
  %30 = load i32, ptr %29, align 4, !tbaa !169
  %31 = load i32, ptr %8, align 8, !tbaa !105
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
  %39 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef %8, i32 noundef %27) #20
  store ptr %39, ptr @funct_state_vec, align 8, !tbaa !76
  br label %40

40:                                               ; preds = %38, %36
  %41 = load ptr, ptr @funct_state_vec, align 8, !tbaa !76, !nonnull !151, !noundef !151
  store i32 %18, ptr %41, align 8, !tbaa !105
  %42 = getelementptr inbounds %struct.VEC_funct_state_base, ptr %41, i64 0, i32 2
  %43 = sext i32 %22 to i64
  %44 = getelementptr inbounds ptr, ptr %42, i64 %43
  %45 = sub nsw i32 %18, %22
  %46 = sext i32 %45 to i64
  %47 = shl nsw i64 %46, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %44, i8 0, i64 %47, i1 false)
  br label %48

48:                                               ; preds = %10, %40
  %49 = load ptr, ptr @funct_state_vec, align 8
  %50 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 24
  %51 = load i32, ptr %50, align 8, !tbaa !107
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.VEC_funct_state_base, ptr %49, i64 0, i32 2, i64 %52
  store ptr %7, ptr %53, align 8, !tbaa !76
  %54 = load ptr, ptr @visited_nodes, align 8, !tbaa !76
  tail call void @pointer_set_destroy(ptr noundef %54) #20
  store ptr null, ptr @visited_nodes, align 8, !tbaa !76
  br label %55

55:                                               ; preds = %2, %48
  ret void
}

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #14

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #15

declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @push_cfun(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @mark_dfs_back_edges() local_unnamed_addr #3

declare void @loop_optimizer_init(i32 noundef) local_unnamed_addr #3

declare void @flow_loops_dump(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @mark_irreducible_loops() local_unnamed_addr #3

declare void @scev_initialize() local_unnamed_addr #3

declare zeroext i8 @finite_loop_p(ptr noundef) local_unnamed_addr #3

declare void @scev_finalize() local_unnamed_addr #3

declare void @loop_optimizer_finalize() local_unnamed_addr #3

declare void @pop_cfun() local_unnamed_addr #3

declare void @print_gimple_stmt(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @walk_stmt_load_store_ops(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal noundef zeroext i8 @check_load(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef %2) #16 !prof !281 !PGOFuncName !282 {
  %4 = load i64, ptr %1, align 8
  %5 = and i64 %4, 65535
  %6 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !91
  %8 = icmp eq i32 %7, 3
  br i1 %8, label %9, label %72, !prof !283

9:                                                ; preds = %3
  %10 = and i64 %4, 524288
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %17, label %12, !prof !284

12:                                               ; preds = %9
  store i32 2, ptr %2, align 4, !tbaa !115
  %13 = load ptr, ptr @dump_file, align 8, !tbaa !76
  %14 = icmp eq ptr %13, null
  br i1 %14, label %112, label %15

15:                                               ; preds = %12
  %16 = tail call i64 @fwrite(ptr nonnull @.str.24, i64 38, i64 1, ptr nonnull %13)
  br label %112

17:                                               ; preds = %9
  %18 = and i64 %4, 67108864
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %25, !prof !284

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 2
  %22 = load i64, ptr %21, align 8
  %23 = and i64 %22, 33554432
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %112, label %25, !prof !285

25:                                               ; preds = %20, %17
  %26 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 2
  %27 = load i64, ptr %26, align 8
  %28 = and i64 %27, 8192
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %35, label %30, !prof !284

30:                                               ; preds = %25
  store i32 2, ptr %2, align 4, !tbaa !115
  %31 = load ptr, ptr @dump_file, align 8, !tbaa !76
  %32 = icmp eq ptr %31, null
  br i1 %32, label %112, label %33

33:                                               ; preds = %30
  %34 = tail call i64 @fwrite(ptr nonnull @.str.25, i64 50, i64 1, ptr nonnull %31)
  br label %112

35:                                               ; preds = %25
  %36 = and i64 %27, 33554432
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %41, !prof !285

38:                                               ; preds = %35
  %39 = and i64 %4, 134217728
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %60, label %41

41:                                               ; preds = %38, %35
  %42 = and i64 %4, 1048576
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %51, label %44, !prof !284

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !87
  %47 = getelementptr inbounds %struct.tree_type, ptr %46, i64 0, i32 6
  %48 = load i32, ptr %47, align 4
  %49 = and i32 %48, 2048
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %112, label %51

51:                                               ; preds = %44, %41
  %52 = load ptr, ptr @dump_file, align 8, !tbaa !76
  %53 = icmp eq ptr %52, null
  br i1 %53, label %56, label %54, !prof !284

54:                                               ; preds = %51
  %55 = tail call i64 @fwrite(ptr nonnull @.str.27, i64 36, i64 1, ptr nonnull %52)
  br label %56

56:                                               ; preds = %54, %51
  %57 = load i32, ptr %2, align 4, !tbaa !115
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %112, !prof !286

59:                                               ; preds = %56
  store i32 1, ptr %2, align 4, !tbaa !115
  br label %112

60:                                               ; preds = %38
  %61 = and i64 %4, 1048576
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %112

63:                                               ; preds = %60
  %64 = load ptr, ptr @dump_file, align 8, !tbaa !76
  %65 = icmp eq ptr %64, null
  br i1 %65, label %68, label %66

66:                                               ; preds = %63
  %67 = tail call i64 @fwrite(ptr nonnull @.str.28, i64 36, i64 1, ptr nonnull %64)
  br label %68

68:                                               ; preds = %66, %63
  %69 = load i32, ptr %2, align 4, !tbaa !115
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %112

71:                                               ; preds = %68
  store i32 1, ptr %2, align 4, !tbaa !115
  br label %112

72:                                               ; preds = %3
  %73 = tail call ptr @get_base_address(ptr noundef nonnull %1) #20
  %74 = icmp eq ptr %73, null
  br i1 %74, label %103, label %75, !prof !287

75:                                               ; preds = %72
  %76 = load i64, ptr %73, align 8
  %77 = and i64 %76, 524288
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %84, label %79, !prof !288

79:                                               ; preds = %75
  store i32 2, ptr %2, align 4, !tbaa !115
  %80 = load ptr, ptr @dump_file, align 8, !tbaa !76
  %81 = icmp eq ptr %80, null
  br i1 %81, label %112, label %82

82:                                               ; preds = %79
  %83 = tail call i64 @fwrite(ptr nonnull @.str.29, i64 44, i64 1, ptr nonnull %80)
  br label %112

84:                                               ; preds = %75
  %85 = trunc i64 %76 to i32
  %86 = and i32 %85, 65535
  %87 = add nsw i32 %86, -47
  %88 = icmp ult i32 %87, 3
  br i1 %88, label %89, label %103, !prof !288

89:                                               ; preds = %84
  %90 = getelementptr inbounds %struct.tree_exp, ptr %73, i64 0, i32 3
  %91 = load ptr, ptr %90, align 8, !tbaa !87
  %92 = load i64, ptr %91, align 8
  %93 = and i64 %92, 65535
  %94 = icmp eq i64 %93, 141
  br i1 %94, label %95, label %103, !prof !288

95:                                               ; preds = %89
  %96 = tail call zeroext i8 @ptr_deref_may_alias_global_p(ptr noundef nonnull %91) #20
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %98, label %103, !prof !287

98:                                               ; preds = %95
  %99 = load ptr, ptr @dump_file, align 8, !tbaa !76
  %100 = icmp eq ptr %99, null
  br i1 %100, label %112, label %101

101:                                              ; preds = %98
  %102 = tail call i64 @fwrite(ptr nonnull @.str.30, i64 39, i64 1, ptr nonnull %99)
  br label %112

103:                                              ; preds = %95, %89, %84, %72
  %104 = load ptr, ptr @dump_file, align 8, !tbaa !76
  %105 = icmp eq ptr %104, null
  br i1 %105, label %108, label %106, !prof !288

106:                                              ; preds = %103
  %107 = tail call i64 @fwrite(ptr nonnull @.str.32, i64 35, i64 1, ptr nonnull %104)
  br label %108

108:                                              ; preds = %106, %103
  %109 = load i32, ptr %2, align 4, !tbaa !115
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %112, !prof !289

111:                                              ; preds = %108
  store i32 1, ptr %2, align 4, !tbaa !115
  br label %112

112:                                              ; preds = %111, %108, %101, %98, %82, %79, %71, %68, %60, %59, %56, %44, %33, %30, %20, %15, %12
  ret i8 0
}

; Function Attrs: nounwind uwtable
define internal noundef zeroext i8 @check_store(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef writeonly %2) #10 !prof !290 !PGOFuncName !291 {
  %4 = load i64, ptr %1, align 8
  %5 = and i64 %4, 65535
  %6 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !91
  %8 = icmp eq i32 %7, 3
  br i1 %8, label %9, label %38, !prof !292

9:                                                ; preds = %3
  %10 = and i64 %4, 524288
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %9
  store i32 2, ptr %2, align 4, !tbaa !115
  %13 = load ptr, ptr @dump_file, align 8, !tbaa !76
  %14 = icmp eq ptr %13, null
  br i1 %14, label %74, label %15

15:                                               ; preds = %12
  %16 = tail call i64 @fwrite(ptr nonnull @.str.24, i64 38, i64 1, ptr nonnull %13)
  br label %74

17:                                               ; preds = %9
  %18 = and i64 %4, 67108864
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 2
  %22 = load i64, ptr %21, align 8
  %23 = and i64 %22, 33554432
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %74, label %25

25:                                               ; preds = %20, %17
  %26 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 2
  %27 = load i64, ptr %26, align 8
  %28 = and i64 %27, 8192
  %29 = icmp eq i64 %28, 0
  store i32 2, ptr %2, align 4, !tbaa !115
  %30 = load ptr, ptr @dump_file, align 8, !tbaa !76
  %31 = icmp eq ptr %30, null
  br i1 %29, label %35, label %32

32:                                               ; preds = %25
  br i1 %31, label %74, label %33

33:                                               ; preds = %32
  %34 = tail call i64 @fwrite(ptr nonnull @.str.25, i64 50, i64 1, ptr nonnull %30)
  br label %74

35:                                               ; preds = %25
  br i1 %31, label %74, label %36

36:                                               ; preds = %35
  %37 = tail call i64 @fwrite(ptr nonnull @.str.26, i64 49, i64 1, ptr nonnull %30)
  br label %74

38:                                               ; preds = %3
  %39 = tail call ptr @get_base_address(ptr noundef nonnull %1) #20
  %40 = icmp eq ptr %39, null
  br i1 %40, label %69, label %41, !prof !292

41:                                               ; preds = %38
  %42 = load i64, ptr %39, align 8
  %43 = and i64 %42, 524288
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %50, label %45, !prof !293

45:                                               ; preds = %41
  store i32 2, ptr %2, align 4, !tbaa !115
  %46 = load ptr, ptr @dump_file, align 8, !tbaa !76
  %47 = icmp eq ptr %46, null
  br i1 %47, label %74, label %48

48:                                               ; preds = %45
  %49 = tail call i64 @fwrite(ptr nonnull @.str.29, i64 44, i64 1, ptr nonnull %46)
  br label %74

50:                                               ; preds = %41
  %51 = trunc i64 %42 to i32
  %52 = and i32 %51, 65535
  %53 = add nsw i32 %52, -47
  %54 = icmp ult i32 %53, 3
  br i1 %54, label %55, label %69, !prof !293

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.tree_exp, ptr %39, i64 0, i32 3
  %57 = load ptr, ptr %56, align 8, !tbaa !87
  %58 = load i64, ptr %57, align 8
  %59 = and i64 %58, 65535
  %60 = icmp eq i64 %59, 141
  br i1 %60, label %61, label %69, !prof !293

61:                                               ; preds = %55
  %62 = tail call zeroext i8 @ptr_deref_may_alias_global_p(ptr noundef nonnull %57) #20
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %64, label %69, !prof !292

64:                                               ; preds = %61
  %65 = load ptr, ptr @dump_file, align 8, !tbaa !76
  %66 = icmp eq ptr %65, null
  br i1 %66, label %74, label %67

67:                                               ; preds = %64
  %68 = tail call i64 @fwrite(ptr nonnull @.str.30, i64 39, i64 1, ptr nonnull %65)
  br label %74

69:                                               ; preds = %61, %55, %50, %38
  store i32 2, ptr %2, align 4, !tbaa !115
  %70 = load ptr, ptr @dump_file, align 8, !tbaa !76
  %71 = icmp eq ptr %70, null
  br i1 %71, label %74, label %72, !prof !293

72:                                               ; preds = %69
  %73 = tail call i64 @fwrite(ptr nonnull @.str.31, i64 41, i64 1, ptr nonnull %70)
  br label %74

74:                                               ; preds = %72, %69, %67, %64, %48, %45, %36, %35, %33, %32, %20, %15, %12
  ret i8 0
}

declare zeroext i8 @stmt_could_throw_p(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @stmt_can_throw_external(ptr noundef) local_unnamed_addr #3

declare i32 @simple_cst_equal(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @get_base_address(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @ptr_deref_may_alias_global_p(ptr noundef) local_unnamed_addr #3

declare i32 @gimple_call_flags(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @tree_could_throw_p(ptr noundef) local_unnamed_addr #3

declare i32 @setjmp_call_p(ptr noundef) local_unnamed_addr #3

declare i32 @lookup_stmt_eh_lp(ptr noundef) local_unnamed_addr #3

declare ptr @decl_assembler_name(ptr noundef) local_unnamed_addr #3

declare ptr @vec_heap_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @lto_create_simple_output_block(i32 noundef) local_unnamed_addr #3

declare void @lto_output_uleb128_stream(ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @lto_cgraph_encoder_encode(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @bitpack_create() local_unnamed_addr #3

declare void @bp_pack_value(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare void @lto_output_bitpack(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @bitpack_delete(ptr noundef) local_unnamed_addr #3

declare void @lto_destroy_simple_output_block(ptr noundef) local_unnamed_addr #3

declare ptr @lto_get_file_decl_data() local_unnamed_addr #3

declare ptr @lto_create_simple_input_block(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i64 @lto_input_uleb128(ptr noundef) local_unnamed_addr #3

declare ptr @lto_cgraph_encoder_deref(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @lto_input_bitpack(ptr noundef) local_unnamed_addr #3

declare i64 @bp_unpack_value(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @lto_destroy_simple_input_block(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare zeroext i8 @function_called_by_processed_nodes_p() local_unnamed_addr #3

declare ptr @cgraph_node(ptr noundef) local_unnamed_addr #3

declare i32 @execute_fixup_cfg() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #19

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #16 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nofree nounwind }
attributes #19 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!74}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73}
!35 = !{ptr @propagate, ptr @xcalloc, i64 1}
!36 = !{ptr @propagate, ptr @cgraph_remove_function_insertion_hook, i64 1}
!37 = !{ptr @propagate, ptr @cgraph_remove_node_duplication_hook, i64 1}
!38 = !{ptr @propagate, ptr @cgraph_remove_node_removal_hook, i64 1}
!39 = !{ptr @propagate, ptr @ipa_utils_reduced_inorder, i64 2}
!40 = !{ptr @propagate, ptr @cgraph_function_body_availability, i64 69811}
!41 = !{ptr @propagate, ptr @flags_from_decl_or_type, i64 323}
!42 = !{ptr @propagate, ptr @free, i64 242}
!43 = !{ptr @generate_summary, ptr @register_hooks, i64 1}
!44 = !{ptr @generate_summary, ptr @pointer_set_create, i64 1}
!45 = !{ptr @generate_summary, ptr @cgraph_function_body_availability, i64 74}
!46 = !{ptr @generate_summary, ptr @analyze_function, i64 39}
!47 = !{ptr @generate_summary, ptr @vec_heap_p_reserve_exact, i64 1}
!48 = !{ptr @generate_summary, ptr @pointer_set_destroy, i64 1}
!49 = !{ptr @local_pure_const, ptr @function_called_by_processed_nodes_p, i64 78}
!50 = !{ptr @local_pure_const, ptr @cgraph_node, i64 78}
!51 = !{ptr @local_pure_const, ptr @cgraph_function_body_availability, i64 78}
!52 = !{ptr @local_pure_const, ptr @analyze_function, i64 78}
!53 = !{ptr @local_pure_const, ptr @cgraph_set_readonly_flag, i64 1}
!54 = !{ptr @local_pure_const, ptr @cgraph_set_looping_const_or_pure_flag, i64 1}
!55 = !{ptr @local_pure_const, ptr @cgraph_set_nothrow_flag, i64 40}
!56 = !{ptr @local_pure_const, ptr @free, i64 78}
!57 = !{ptr @local_pure_const, ptr @execute_fixup_cfg, i64 40}
!58 = !{ptr @register_hooks, ptr @cgraph_add_node_removal_hook, i64 1}
!59 = !{ptr @register_hooks, ptr @cgraph_add_node_duplication_hook, i64 1}
!60 = !{ptr @register_hooks, ptr @cgraph_add_function_insertion_hook, i64 1}
!61 = !{ptr @analyze_function, ptr @xcalloc, i64 117}
!62 = !{ptr @analyze_function, ptr @push_cfun, i64 117}
!63 = !{ptr @analyze_function, ptr @walk_stmt_load_store_ops, i64 1048433}
!64 = !{ptr @analyze_function, ptr @stmt_could_throw_p, i64 1048433}
!65 = !{ptr @analyze_function, ptr @gimple_call_flags, i64 207214}
!66 = !{ptr @analyze_function, ptr @setjmp_call_p, i64 207214}
!67 = !{ptr @analyze_function, ptr @mark_dfs_back_edges, i64 39}
!68 = !{ptr @analyze_function, ptr @pop_cfun, i64 117}
!69 = !{ptr @duplicate_node_data, ptr @xmalloc, i64 41}
!70 = !{ptr @check_load, ptr @get_base_address, i64 585}
!71 = !{ptr @check_load, ptr @ptr_deref_may_alias_global_p, i64 585}
!72 = !{ptr @check_store, ptr @get_base_address, i64 42}
!73 = !{ptr @check_store, ptr @ptr_deref_may_alias_global_p, i64 42}
!74 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!75 = !{!"function_entry_count", i64 0}
!76 = !{!77, !77, i64 0}
!77 = !{!"any pointer", !78, i64 0}
!78 = !{!"omnipotent char", !79, i64 0}
!79 = !{!"Simple C/C++ TBAA"}
!80 = !{!81, !77, i64 8}
!81 = !{!"_IO_FILE", !82, i64 0, !77, i64 8, !77, i64 16, !77, i64 24, !77, i64 32, !77, i64 40, !77, i64 48, !77, i64 56, !77, i64 64, !77, i64 72, !77, i64 80, !77, i64 88, !77, i64 96, !77, i64 104, !82, i64 112, !82, i64 116, !83, i64 120, !84, i64 128, !78, i64 130, !78, i64 131, !77, i64 136, !83, i64 144, !77, i64 152, !77, i64 160, !77, i64 168, !77, i64 176, !83, i64 184, !82, i64 192, !78, i64 196}
!82 = !{!"int", !78, i64 0}
!83 = !{!"long", !78, i64 0}
!84 = !{!"short", !78, i64 0}
!85 = !{!81, !77, i64 16}
!86 = !{!"branch_weights", i32 2000, i32 1}
!87 = !{!78, !78, i64 0}
!88 = !{!81, !77, i64 40}
!89 = !{!81, !77, i64 48}
!90 = !{!81, !82, i64 0}
!91 = !{!82, !82, i64 0}
!92 = distinct !{!92, !93, !94}
!93 = !{!"llvm.loop.mustprogress"}
!94 = !{!"llvm.loop.unroll.disable"}
!95 = !{!"function_entry_count", i64 80}
!96 = !{!"ipa-pure-const.c;gate_pure_const"}
!97 = !{!"branch_weights", i32 0, i32 80}
!98 = !{!"branch_weights", i32 80, i32 0}
!99 = !{!"function_entry_count", i64 1}
!100 = !{!"ipa-pure-const.c;propagate"}
!101 = !{!"branch_weights", i32 1, i32 0}
!102 = !{!"branch_weights", i32 127, i32 1}
!103 = !{!"branch_weights", i32 1, i32 127}
!104 = !{!"branch_weights", i32 40, i32 80}
!105 = !{!106, !82, i64 0}
!106 = !{!"VEC_funct_state_base", !82, i64 0, !82, i64 4, !78, i64 8}
!107 = !{!108, !82, i64 296}
!108 = !{!"cgraph_node", !77, i64 0, !77, i64 8, !77, i64 16, !77, i64 24, !77, i64 32, !77, i64 40, !77, i64 48, !77, i64 56, !77, i64 64, !77, i64 72, !77, i64 80, !77, i64 88, !77, i64 96, !77, i64 104, !77, i64 112, !77, i64 120, !77, i64 128, !77, i64 136, !109, i64 144, !111, i64 184, !112, i64 224, !113, i64 232, !114, i64 256, !83, i64 288, !82, i64 296, !82, i64 300, !82, i64 304, !82, i64 308, !82, i64 308, !82, i64 308, !82, i64 308, !82, i64 308, !82, i64 308, !82, i64 308, !82, i64 308, !82, i64 309, !82, i64 309}
!109 = !{!"cgraph_local_info", !77, i64 0, !110, i64 8, !82, i64 32, !82, i64 32, !82, i64 32, !82, i64 32, !82, i64 32, !82, i64 32, !82, i64 32, !82, i64 32}
!110 = !{!"inline_summary", !83, i64 0, !82, i64 8, !82, i64 12, !82, i64 16, !82, i64 20}
!111 = !{!"cgraph_global_info", !83, i64 0, !83, i64 8, !77, i64 16, !82, i64 24, !82, i64 28, !82, i64 32, !78, i64 36}
!112 = !{!"cgraph_rtl_info", !82, i64 0}
!113 = !{!"cgraph_clone_info", !77, i64 0, !77, i64 8, !77, i64 16}
!114 = !{!"cgraph_thunk_info", !83, i64 0, !83, i64 8, !77, i64 16, !78, i64 24, !78, i64 25, !78, i64 26}
!115 = !{!116, !82, i64 0}
!116 = !{!"funct_state_d", !82, i64 0, !82, i64 4, !78, i64 8, !78, i64 9, !78, i64 10}
!117 = !{!116, !78, i64 9}
!118 = !{!116, !78, i64 8}
!119 = !{!116, !82, i64 4}
!120 = !{!"branch_weights", i32 40, i32 40}
!121 = !{!"branch_weights", i32 0, i32 40}
!122 = !{!"branch_weights", i32 0, i32 1}
!123 = !{!"branch_weights", i32 0, i32 363}
!124 = distinct !{!124, !93, !94}
!125 = !{!126, !77, i64 16}
!126 = !{!"cgraph_edge", !83, i64 0, !77, i64 8, !77, i64 16, !77, i64 24, !77, i64 32, !77, i64 40, !77, i64 48, !77, i64 56, !77, i64 64, !82, i64 72, !82, i64 76, !82, i64 80, !82, i64 84, !84, i64 88, !82, i64 90, !82, i64 90, !82, i64 90}
!127 = !{!"branch_weights", i32 40, i32 323}
!128 = !{!"branch_weights", i32 40, i32 0}
!129 = !{!108, !77, i64 0}
!130 = !{!"branch_weights", i32 323, i32 0}
!131 = !{!"branch_weights", i32 0, i32 323}
!132 = !{!"branch_weights", i32 323, i32 40}
!133 = !{!108, !77, i64 128}
!134 = !{!135, !77, i64 16}
!135 = !{!"ipa_dfs_info", !82, i64 0, !82, i64 4, !78, i64 8, !78, i64 9, !77, i64 16, !77, i64 24}
!136 = !{!"branch_weights", i32 1, i32 159}
!137 = !{!"branch_weights", i32 59, i32 21}
!138 = !{!"branch_weights", i32 235, i32 1}
!139 = !{!"branch_weights", i32 269725, i32 235}
!140 = distinct !{!140, !93, !94}
!141 = !{!"branch_weights", i32 0, i32 67490}
!142 = !{!"branch_weights", i32 80, i32 0, i32 0}
!143 = !{!"branch_weights", i32 159, i32 1}
!144 = distinct !{!144, !93, !94}
!145 = !{!"branch_weights", i32 127, i32 10113}
!146 = distinct !{!146, !93, !94}
!147 = !{!"branch_weights", i32 35, i32 80}
!148 = !{!"branch_weights", i32 127, i32 14593}
!149 = distinct !{!149, !93, !94}
!150 = !{!"branch_weights", i32 80, i32 80}
!151 = !{}
!152 = !{!116, !78, i64 10}
!153 = !{!"branch_weights", i32 159, i32 138187}
!154 = distinct !{!154, !93, !94}
!155 = !{!"branch_weights", i32 52784, i32 16389}
!156 = !{!"branch_weights", i32 0, i32 52784}
!157 = !{!"branch_weights", i32 52784, i32 0}
!158 = !{!"branch_weights", i32 16389, i32 0}
!159 = !{!"branch_weights", i32 69173, i32 0}
!160 = distinct !{!160, !93, !94}
!161 = distinct !{!161, !93, !94}
!162 = distinct !{!162, !93, !94}
!163 = !{!"branch_weights", i32 80, i32 35}
!164 = distinct !{!164, !93, !94}
!165 = !{!"ipa-pure-const.c;generate_summary"}
!166 = !{!"branch_weights", i32 39, i32 35}
!167 = !{!"branch_weights", i32 1, i32 38}
!168 = !{!"branch_weights", i32 38, i32 0}
!169 = !{!106, !82, i64 4}
!170 = !{!"VP", i32 1, i64 1, i64 513, i64 1}
!171 = !{!"branch_weights", i32 127, i32 9345}
!172 = distinct !{!172, !93, !94}
!173 = !{!174, !77, i64 8}
!174 = !{!"cgraph_node_set_def", !77, i64 0, !77, i64 8, !77, i64 16}
!175 = !{!176, !82, i64 0}
!176 = !{!"VEC_cgraph_node_ptr_base", !82, i64 0, !82, i64 4, !78, i64 8}
!177 = distinct !{!177, !93, !94}
!178 = !{!179, !77, i64 16}
!179 = !{!"lto_simple_output_block", !82, i64 0, !77, i64 8, !77, i64 16}
!180 = !{!179, !77, i64 8}
!181 = !{!182, !77, i64 168}
!182 = !{!"lto_out_decl_state", !78, i64 0, !77, i64 168, !77, i64 176}
!183 = distinct !{!183, !93, !94}
!184 = !{!185, !77, i64 16}
!185 = !{!"lto_file_decl_data", !77, i64 0, !77, i64 8, !77, i64 16, !77, i64 24, !77, i64 32, !82, i64 40, !77, i64 48, !77, i64 56}
!186 = distinct !{!186, !93, !94}
!187 = !{!83, !83, i64 0}
!188 = distinct !{!188, !93, !94}
!189 = !{!"function_entry_count", i64 78}
!190 = !{!"ipa-pure-const.c;local_pure_const"}
!191 = !{!"branch_weights", i32 78, i32 0}
!192 = !{!"branch_weights", i32 0, i32 78}
!193 = !{!"branch_weights", i32 77, i32 1, i32 0}
!194 = !{!195, !77, i64 176}
!195 = !{!"lang_hooks", !77, i64 0, !83, i64 8, !77, i64 16, !77, i64 24, !77, i64 32, !77, i64 40, !77, i64 48, !77, i64 56, !77, i64 64, !77, i64 72, !77, i64 80, !77, i64 88, !77, i64 96, !77, i64 104, !77, i64 112, !77, i64 120, !77, i64 128, !77, i64 136, !77, i64 144, !77, i64 152, !77, i64 160, !77, i64 168, !77, i64 176, !77, i64 184, !77, i64 192, !77, i64 200, !77, i64 208, !77, i64 216, !77, i64 224, !77, i64 232, !196, i64 240, !197, i64 248, !198, i64 256, !199, i64 272, !200, i64 432, !201, i64 560, !77, i64 584, !77, i64 592, !77, i64 600, !77, i64 608, !77, i64 616, !77, i64 624, !77, i64 632, !77, i64 640, !77, i64 648, !77, i64 656, !77, i64 664, !78, i64 672}
!196 = !{!"lang_hooks_for_tree_inlining", !77, i64 0}
!197 = !{!"lang_hooks_for_callgraph", !77, i64 0}
!198 = !{!"lang_hooks_for_tree_dump", !77, i64 0, !77, i64 8}
!199 = !{!"lang_hooks_for_decls", !77, i64 0, !77, i64 8, !77, i64 16, !77, i64 24, !77, i64 32, !77, i64 40, !77, i64 48, !77, i64 56, !77, i64 64, !77, i64 72, !77, i64 80, !77, i64 88, !77, i64 96, !77, i64 104, !77, i64 112, !77, i64 120, !77, i64 128, !77, i64 136, !77, i64 144, !77, i64 152}
!200 = !{!"lang_hooks_for_types", !77, i64 0, !77, i64 8, !77, i64 16, !77, i64 24, !77, i64 32, !77, i64 40, !77, i64 48, !77, i64 56, !77, i64 64, !77, i64 72, !77, i64 80, !77, i64 88, !77, i64 96, !77, i64 104, !77, i64 112, !78, i64 120}
!201 = !{!"lang_hooks_for_lto", !77, i64 0, !77, i64 8, !77, i64 16}
!202 = !{!"branch_weights", i32 40, i32 38}
!203 = !{!"branch_weights", i32 159, i32 210993}
!204 = distinct !{!204, !93, !94}
!205 = !{!"branch_weights", i32 38, i32 40}
!206 = !{!"function_entry_count", i64 69173}
!207 = !{!"ipa-pure-const.c;ignore_edge"}
!208 = !{!"ipa-pure-const.c;register_hooks"}
!209 = !{!"function_entry_count", i64 117}
!210 = !{!"ipa-pure-const.c;analyze_function"}
!211 = !{!"branch_weights", i32 117, i32 0}
!212 = !{!213, !77, i64 8}
!213 = !{!"function", !77, i64 0, !77, i64 8, !77, i64 16, !77, i64 24, !77, i64 32, !77, i64 40, !77, i64 48, !77, i64 56, !77, i64 64, !77, i64 72, !77, i64 80, !77, i64 88, !77, i64 96, !82, i64 104, !82, i64 108, !82, i64 112, !82, i64 116, !82, i64 120, !82, i64 124, !77, i64 128, !82, i64 136, !82, i64 137, !82, i64 138, !82, i64 138, !82, i64 138, !82, i64 138, !82, i64 138, !82, i64 138, !82, i64 138, !82, i64 139, !82, i64 139, !82, i64 139, !82, i64 139, !82, i64 139, !82, i64 139, !82, i64 139}
!214 = !{!215, !77, i64 0}
!215 = !{!"control_flow_graph", !77, i64 0, !77, i64 8, !77, i64 16, !82, i64 24, !82, i64 28, !82, i64 32, !77, i64 40, !82, i64 48, !78, i64 52, !78, i64 60, !82, i64 68, !82, i64 72}
!216 = !{!217, !77, i64 56}
!217 = !{!"basic_block_def", !77, i64 0, !77, i64 8, !77, i64 16, !77, i64 24, !78, i64 32, !77, i64 48, !77, i64 56, !78, i64 64, !83, i64 72, !82, i64 80, !82, i64 84, !82, i64 88, !82, i64 92, !82, i64 96}
!218 = !{!215, !77, i64 8}
!219 = !{!"branch_weights", i32 1, i32 233}
!220 = !{!217, !82, i64 96}
!221 = !{!222}
!222 = distinct !{!222, !223, !"gsi_start_bb: argument 0"}
!223 = distinct !{!223, !"gsi_start_bb"}
!224 = !{!"branch_weights", i32 447205, i32 0}
!225 = !{!"branch_weights", i32 0, i32 447205}
!226 = !{!227, !77, i64 0}
!227 = !{!"gimple_bb_info", !77, i64 0, !77, i64 8}
!228 = !{!229, !77, i64 0}
!229 = !{!"gimple_seq_d", !77, i64 0, !77, i64 8, !77, i64 16}
!230 = !{!"branch_weights", i32 1, i32 447204}
!231 = !{!232, !77, i64 0}
!232 = !{!"gimple_seq_node_d", !77, i64 0, !77, i64 8, !77, i64 16}
!233 = !{!"branch_weights", i32 0, i32 1048432}
!234 = !{!"branch_weights", i32 1048432, i32 0}
!235 = !{!"branch_weights", i32 207214, i32 841218}
!236 = !{!"branch_weights", i32 841218, i32 0}
!237 = !{!"branch_weights", i32 832397, i32 207214, i32 8821, i32 0}
!238 = !{!"branch_weights", i32 0, i32 207214}
!239 = !{!"branch_weights", i32 207214, i32 0}
!240 = distinct !{!240, !93, !94}
!241 = !{!"branch_weights", i32 69128, i32 138086}
!242 = !{!"branch_weights", i32 0, i32 138086}
!243 = !{!"branch_weights", i32 138086, i32 0}
!244 = !{!"branch_weights", i32 0, i32 8821}
!245 = !{!"branch_weights", i32 8821, i32 0}
!246 = distinct !{!246, !93, !94}
!247 = !{!"branch_weights", i32 693155, i32 355277}
!248 = !{!"branch_weights", i32 3, i32 693152}
!249 = !{!"branch_weights", i32 693152, i32 0}
!250 = !{!232, !77, i64 16}
!251 = !{!"branch_weights", i32 447204, i32 601228}
!252 = distinct !{!252, !93, !94}
!253 = !{!"branch_weights", i32 233, i32 894177}
!254 = distinct !{!254, !93, !94}
!255 = !{!"branch_weights", i32 78, i32 39}
!256 = !{!"branch_weights", i32 39, i32 0}
!257 = !{!213, !77, i64 32}
!258 = !{!259, !77, i64 8}
!259 = !{!"loops", !82, i64 0, !77, i64 8, !77, i64 16, !77, i64 24}
!260 = !{!261, !82, i64 0}
!261 = !{!"VEC_loop_p_base", !82, i64 0, !82, i64 4, !78, i64 8}
!262 = !{!259, !77, i64 24}
!263 = !{!264, !82, i64 0}
!264 = !{!"loop", !82, i64 0, !82, i64 4, !77, i64 8, !77, i64 16, !265, i64 24, !82, i64 32, !82, i64 36, !77, i64 40, !77, i64 48, !77, i64 56, !77, i64 64, !77, i64 72, !266, i64 80, !266, i64 96, !78, i64 112, !78, i64 113, !82, i64 116, !77, i64 120, !77, i64 128, !78, i64 136, !77, i64 144}
!265 = !{!"lpt_decision", !82, i64 0, !82, i64 4}
!266 = !{!"", !83, i64 0, !83, i64 8}
!267 = !{!268, !82, i64 0}
!268 = !{!"VEC_int_base", !82, i64 0, !82, i64 4, !78, i64 8}
!269 = !{!264, !77, i64 48}
!270 = distinct !{!270, !94}
!271 = !{!264, !77, i64 56}
!272 = !{!264, !77, i64 40}
!273 = distinct !{!273, !93, !94}
!274 = distinct !{!274, !93, !94}
!275 = distinct !{!275, !93, !94}
!276 = !{!"branch_weights", i32 40, i32 77}
!277 = !{!"function_entry_count", i64 41}
!278 = !{!"ipa-pure-const.c;duplicate_node_data"}
!279 = !{!"branch_weights", i32 0, i32 41}
!280 = !{!"branch_weights", i32 41, i32 0}
!281 = !{!"function_entry_count", i64 260672}
!282 = !{!"ipa-pure-const.c;check_load"}
!283 = !{!"branch_weights", i32 260087, i32 585}
!284 = !{!"branch_weights", i32 260087, i32 0}
!285 = !{!"branch_weights", i32 0, i32 260087}
!286 = !{!"branch_weights", i32 31, i32 260056}
!287 = !{!"branch_weights", i32 0, i32 585}
!288 = !{!"branch_weights", i32 585, i32 0}
!289 = !{!"branch_weights", i32 47, i32 538}
!290 = !{!"function_entry_count", i64 42}
!291 = !{!"ipa-pure-const.c;check_store"}
!292 = !{!"branch_weights", i32 0, i32 42}
!293 = !{!"branch_weights", i32 42, i32 0}

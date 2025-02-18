; ModuleID = 'ipa-cp.c'
source_filename = "ipa-cp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ipa_opt_pass_d = type { %struct.opt_pass, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.cgraph_node = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.cgraph_local_info, %struct.cgraph_global_info, %struct.cgraph_rtl_info, %struct.cgraph_clone_info, %struct.cgraph_thunk_info, i64, i32, i32, i32, i16 }
%struct.cgraph_local_info = type { ptr, %struct.inline_summary, i8 }
%struct.inline_summary = type { i64, i32, i32, i32, i32 }
%struct.cgraph_global_info = type { i64, i64, ptr, i32, i32, i32, i8 }
%struct.cgraph_rtl_info = type { i32 }
%struct.cgraph_clone_info = type { ptr, ptr, ptr }
%struct.cgraph_thunk_info = type { i64, i64, ptr, i8, i8, i8 }
%struct.VEC_ipa_node_params_t_base = type { i32, i32, [1 x %struct.ipa_node_params] }
%struct.ipa_node_params = type { i32, ptr, ptr, ptr, i64, i8 }
%struct.cgraph_edge = type { i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i8 }
%struct.tree_function_decl = type { %struct.tree_decl_non_common, ptr, ptr, ptr, ptr, i32 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.ipa_param_descriptor = type { %struct.ipcp_lattice, ptr, i8 }
%struct.ipcp_lattice = type { i32, ptr }
%struct.VEC_ipa_edge_args_t_base = type { i32, i32, [1 x %struct.ipa_edge_args] }
%struct.ipa_edge_args = type { i32, ptr }
%struct.param_info = type { ptr, i32, i8, i32, i32, ptr }
%struct.ipa_replace_map = type { ptr, ptr, i8, i8 }
%struct.VEC_ipa_replace_map_p_base = type { i32, i32, [1 x ptr] }
%struct.VEC_cgraph_edge_p_base = type { i32, i32, [1 x ptr] }
%struct.ipa_jump_func = type { i32, %union.jump_func_value }
%union.jump_func_value = type { %struct.ipa_ancestor_jf_data }
%struct.ipa_ancestor_jf_data = type { i64, ptr, i32 }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [3 x i8] c"cp\00", align 1
@pass_ipa_cp = dso_local local_unnamed_addr global %struct.ipa_opt_pass_d { %struct.opt_pass { i32 3, ptr @.str, ptr @cgraph_gate_cp, ptr @ipcp_driver, ptr null, ptr null, i32 0, i32 6, i32 0, i32 0, i32 0, i32 0, i32 385 }, ptr @ipcp_generate_summary, ptr @ipcp_write_summary, ptr @ipcp_read_summary, ptr null, ptr @lto_ipa_fixup_call_notes, i32 0, ptr null, ptr null }, align 8
@flag_ipa_cp = external local_unnamed_addr global i32, align 4
@dump_file = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"\0AIPA structures before propagation:\0A\00", align 1
@dump_flags = external local_unnamed_addr global i32, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"\0AProfiling info after insert stage:\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"\0AIPA constant propagation end\0A\00", align 1
@n_cloning_candidates = internal unnamed_addr global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"\0AIPA iterate stage:\0A\0A\00", align 1
@in_lto_p = external local_unnamed_addr global i8, align 1
@cgraph_nodes = external local_unnamed_addr global ptr, align 8
@.str.5 = private unnamed_addr constant [9 x i8] c"ipa-cp.c\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"\0AIPA lattices after propagation:\0A\00", align 1
@ipa_node_params_vector = external local_unnamed_addr global ptr, align 8
@.str.8 = private unnamed_addr constant [56 x i8] c"Not considering %s for cloning; body is overwrittable.\0A\00", align 1
@.str.9 = private unnamed_addr constant [58 x i8] c"Not considering %s for cloning; body is not versionable.\0A\00", align 1
@.str.10 = private unnamed_addr constant [50 x i8] c"Not considering %s for cloning; no direct calls.\0A\00", align 1
@.str.11 = private unnamed_addr constant [48 x i8] c"Considering %s for cloning; code would shrink.\0A\00", align 1
@flag_ipa_cp_clone = external local_unnamed_addr global i32, align 4
@.str.12 = private unnamed_addr constant [58 x i8] c"Not considering %s for cloning; -fipa-cp-clone disabled.\0A\00", align 1
@.str.13 = private unnamed_addr constant [57 x i8] c"Not considering %s for cloning; optimizing it for size.\0A\00", align 1
@max_count = internal unnamed_addr global i64 0, align 8
@.str.14 = private unnamed_addr constant [54 x i8] c"Considering %s for cloning; usually called directly.\0A\00", align 1
@.str.15 = private unnamed_addr constant [47 x i8] c"Not considering %s for cloning; no hot calls.\0A\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"Considering %s for cloning.\0A\00", align 1
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@.str.17 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@.str.18 = private unnamed_addr constant [11 x i8] c"\0ALattice:\0A\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"  Node: %s:\0A\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"    param [%d]: \00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"type is CONST \00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"type is TOP\0A\00", align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"type is BOTTOM\0A\00", align 1
@.str.25 = private unnamed_addr constant [24 x i8] c"printing scale for %s: \00", align 1
@.str.26 = private unnamed_addr constant [17 x i8] c"value is  %ld  \0A\00", align 1
@ipa_edge_args_vector = external local_unnamed_addr global ptr, align 8
@cgraph_max_uid = external local_unnamed_addr global i32, align 4
@cgraph_edge_max_uid = external local_unnamed_addr global i32, align 4
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@.str.27 = private unnamed_addr constant [15 x i8] c"Forcing param \00", align 1
@.str.28 = private unnamed_addr constant [24 x i8] c" of node %s to bottom.\0A\00", align 1
@.str.29 = private unnamed_addr constant [21 x i8] c"\0AIPA insert stage:\0A\0A\00", align 1
@dead_nodes = internal unnamed_addr global ptr null, align 8
@compiler_params = external local_unnamed_addr global ptr, align 8
@.str.30 = private unnamed_addr constant [25 x i8] c"considering function %s\0A\00", align 1
@.str.31 = private unnamed_addr constant [37 x i8] c"Not versioning, cold code would grow\00", align 1
@.str.32 = private unnamed_addr constant [50 x i8] c"versioned function %s with growth %i, overall %i\0A\00", align 1
@.str.33 = private unnamed_addr constant [22 x i8] c"skipping function %s\0A\00", align 1
@.str.34 = private unnamed_addr constant [38 x i8] c"Versioning of %s will save code size\0A\00", align 1
@.str.35 = private unnamed_addr constant [51 x i8] c"Cost of versioning %s is %i, (size: %i, freq: %i)\0A\00", align 1
@.str.36 = private unnamed_addr constant [19 x i8] c"  replacing param \00", align 1
@.str.37 = private unnamed_addr constant [13 x i8] c" with const \00", align 1
@.str.38 = private unnamed_addr constant [16 x i8] c"\0ANODE COUNTS :\0A\00", align 1
@.str.39 = private unnamed_addr constant [19 x i8] c"\0ACS COUNTS stage:\0A\00", align 1
@.str.40 = private unnamed_addr constant [14 x i8] c"function %s: \00", align 1
@.str.41 = private unnamed_addr constant [17 x i8] c"count is  %ld  \0A\00", align 1
@.str.42 = private unnamed_addr constant [10 x i8] c"%s -> %s \00", align 1
@.str.43 = private unnamed_addr constant [34 x i8] c"\0AIPA constant propagation start:\0A\00", align 1
@flag_lto = external local_unnamed_addr global i32, align 4
@flag_whopr = external local_unnamed_addr global i32, align 4

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !59 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !60
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !59 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !60
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !59 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !69
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !70

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #17
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !64
  %11 = load i8, ptr %3, align 1, !tbaa !71
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !59 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !69
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !70

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #17
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !64
  %11 = load i8, ptr %3, align 1, !tbaa !71
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !59 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !60
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !64
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !69
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !70

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #17
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !64
  %11 = load i8, ptr %3, align 1, !tbaa !71
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !59 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !60
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !59 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !72
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !73
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !70

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #17
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !72
  store i8 %12, ptr %4, align 1, !tbaa !71
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !59 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !72
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !73
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !70

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #17
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !72
  store i8 %12, ptr %4, align 1, !tbaa !71
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !59 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !60
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !72
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !73
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !70

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #17
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !72
  store i8 %12, ptr %4, align 1, !tbaa !71
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !59 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #17
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !59 {
  %2 = load i32, ptr %0, align 8, !tbaa !74
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !59 {
  %2 = load i32, ptr %0, align 8, !tbaa !74
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !59 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #17
  %6 = load ptr, ptr %5, align 8, !tbaa !60
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !75
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !59 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #17
  %6 = load ptr, ptr %5, align 8, !tbaa !60
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !75
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !59 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !59 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !59 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !59 {
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
  br i1 %23, label %7, label %24, !llvm.loop !76

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !59 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @cgraph_gate_cp() #9 !prof !79 !PGOFuncName !80 {
  %1 = load i32, ptr @flag_ipa_cp, align 4, !tbaa !75
  %2 = trunc i32 %1 to i8
  ret i8 %2
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @ipcp_driver() #10 !prof !81 !PGOFuncName !82 {
  %1 = load ptr, ptr @dump_file, align 8, !tbaa !60
  %2 = tail call zeroext i8 @cgraph_remove_unreachable_nodes(i8 noundef zeroext 1, ptr noundef %1) #17
  %3 = load ptr, ptr @dump_file, align 8, !tbaa !60
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5, !prof !83

5:                                                ; preds = %0
  %6 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 36, i64 1, ptr nonnull %3)
  %7 = load i32, ptr @dump_flags, align 4, !tbaa !75
  %8 = and i32 %7, 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %5
  %11 = load ptr, ptr @dump_file, align 8, !tbaa !60
  tail call void @ipa_print_all_params(ptr noundef %11) #17
  br label %12

12:                                               ; preds = %10, %5
  %13 = load ptr, ptr @dump_file, align 8, !tbaa !60
  tail call void @ipa_print_all_jump_functions(ptr noundef %13) #17
  br label %14

14:                                               ; preds = %12, %0
  store i32 0, ptr @n_cloning_candidates, align 4, !tbaa !75
  %15 = load ptr, ptr @dump_file, align 8, !tbaa !60
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17, !prof !83

17:                                               ; preds = %14
  %18 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 21, i64 1, ptr nonnull %15)
  br label %19

19:                                               ; preds = %17, %14
  %20 = load i8, ptr @in_lto_p, align 1, !tbaa !71
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %23, label %22, !prof !83

22:                                               ; preds = %19
  tail call void @ipa_update_after_lto_read() #17
  br label %23

23:                                               ; preds = %22, %19
  %24 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !60
  %25 = icmp eq ptr %24, null
  br i1 %25, label %218, label %26, !prof !84

26:                                               ; preds = %23, %209
  %27 = phi ptr [ %216, %209 ], [ %24, %23 ]
  %28 = load ptr, ptr @ipa_node_params_vector, align 8
  %29 = getelementptr inbounds %struct.cgraph_node, ptr %27, i64 0, i32 24
  %30 = load i32, ptr %29, align 8, !tbaa !85
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.VEC_ipa_node_params_t_base, ptr %28, i64 0, i32 2, i64 %31
  %33 = getelementptr inbounds %struct.VEC_ipa_node_params_t_base, ptr %28, i64 0, i32 2, i64 %31, i32 5
  %34 = load i8, ptr %33, align 8
  %35 = and i8 %34, 1
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %173, !prof !93

37:                                               ; preds = %26
  %38 = getelementptr inbounds %struct.cgraph_node, ptr %27, i64 0, i32 27
  %39 = load i16, ptr %38, align 4
  %40 = and i16 %39, 1
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %42, label %48, !prof !94

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.cgraph_node, ptr %27, i64 0, i32 18, i32 2
  %44 = load i8, ptr %43, align 8
  %45 = lshr i8 %44, 1
  %46 = and i8 %45, 1
  %47 = xor i8 %46, 1
  br label %48

48:                                               ; preds = %42, %37
  %49 = phi i8 [ 0, %37 ], [ %47, %42 ]
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %173, !prof !95

51:                                               ; preds = %48
  br i1 %41, label %52, label %58, !prof !96

52:                                               ; preds = %51
  %53 = getelementptr inbounds %struct.cgraph_node, ptr %27, i64 0, i32 18, i32 2
  %54 = load i8, ptr %53, align 8
  %55 = lshr i8 %54, 1
  %56 = and i8 %55, 1
  %57 = xor i8 %56, 1
  br label %58

58:                                               ; preds = %52, %51
  %59 = phi i8 [ 0, %51 ], [ %57, %52 ]
  %60 = icmp ne i8 %59, 0
  %61 = and i16 %39, 32
  %62 = icmp eq i16 %61, 0
  %63 = or i1 %62, %60
  br i1 %63, label %173, label %64, !prof !97

64:                                               ; preds = %58
  %65 = tail call i32 @cgraph_function_body_availability(ptr noundef nonnull %27) #17
  %66 = icmp ult i32 %65, 3
  br i1 %66, label %67, label %73, !prof !96

67:                                               ; preds = %64
  %68 = load ptr, ptr @dump_file, align 8, !tbaa !60
  %69 = icmp eq ptr %68, null
  br i1 %69, label %173, label %70

70:                                               ; preds = %67
  %71 = tail call ptr @cgraph_node_name(ptr noundef nonnull %27) #17
  %72 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %68, ptr noundef nonnull @.str.8, ptr noundef %71)
  br label %173

73:                                               ; preds = %64
  %74 = tail call fastcc zeroext i8 @ipcp_versionable_function_p(ptr noundef nonnull %27)
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %76, label %82, !prof !96

76:                                               ; preds = %73
  %77 = load ptr, ptr @dump_file, align 8, !tbaa !60
  %78 = icmp eq ptr %77, null
  br i1 %78, label %173, label %79

79:                                               ; preds = %76
  %80 = tail call ptr @cgraph_node_name(ptr noundef nonnull %27) #17
  %81 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %77, ptr noundef nonnull @.str.9, ptr noundef %80)
  br label %173

82:                                               ; preds = %73
  %83 = getelementptr inbounds %struct.cgraph_node, ptr %27, i64 0, i32 2
  %84 = load ptr, ptr %83, align 8, !tbaa !60
  %85 = icmp eq ptr %84, null
  br i1 %85, label %101, label %86, !prof !98

86:                                               ; preds = %82, %86
  %87 = phi ptr [ %99, %86 ], [ %84, %82 ]
  %88 = phi i64 [ %92, %86 ], [ 0, %82 ]
  %89 = phi i32 [ %97, %86 ], [ 0, %82 ]
  %90 = phi i32 [ %93, %86 ], [ 0, %82 ]
  %91 = load i64, ptr %87, align 8, !tbaa !99
  %92 = add nsw i64 %91, %88
  %93 = add nuw nsw i32 %90, 1
  %94 = tail call zeroext i8 @cgraph_maybe_hot_edge_p(ptr noundef nonnull %87) #17
  %95 = icmp ne i8 %94, 0
  %96 = zext i1 %95 to i32
  %97 = add nuw nsw i32 %89, %96
  %98 = getelementptr inbounds %struct.cgraph_edge, ptr %87, i64 0, i32 4
  %99 = load ptr, ptr %98, align 8, !tbaa !60
  %100 = icmp eq ptr %99, null
  br i1 %100, label %101, label %86, !prof !101, !llvm.loop !102

101:                                              ; preds = %86, %82
  %102 = phi i32 [ 0, %82 ], [ %93, %86 ]
  %103 = phi i32 [ 0, %82 ], [ %97, %86 ]
  %104 = phi i64 [ 0, %82 ], [ %92, %86 ]
  %105 = icmp eq i32 %102, 0
  br i1 %105, label %106, label %112, !prof !103

106:                                              ; preds = %101
  %107 = load ptr, ptr @dump_file, align 8, !tbaa !60
  %108 = icmp eq ptr %107, null
  br i1 %108, label %173, label %109, !prof !104

109:                                              ; preds = %106
  %110 = tail call ptr @cgraph_node_name(ptr noundef nonnull %27) #17
  %111 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %107, ptr noundef nonnull @.str.10, ptr noundef %110)
  br label %173

112:                                              ; preds = %101
  %113 = getelementptr inbounds %struct.cgraph_node, ptr %27, i64 0, i32 18, i32 1, i32 1
  %114 = load i32, ptr %113, align 8, !tbaa !105
  %115 = icmp slt i32 %114, %102
  br i1 %115, label %116, label %122, !prof !106

116:                                              ; preds = %112
  %117 = load ptr, ptr @dump_file, align 8, !tbaa !60
  %118 = icmp eq ptr %117, null
  br i1 %118, label %170, label %119, !prof !107

119:                                              ; preds = %116
  %120 = tail call ptr @cgraph_node_name(ptr noundef nonnull %27) #17
  %121 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %117, ptr noundef nonnull @.str.11, ptr noundef %120)
  br label %170

122:                                              ; preds = %112
  %123 = load i32, ptr @flag_ipa_cp_clone, align 4, !tbaa !75
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %131, !prof !108

125:                                              ; preds = %122
  %126 = load ptr, ptr @dump_file, align 8, !tbaa !60
  %127 = icmp eq ptr %126, null
  br i1 %127, label %173, label %128

128:                                              ; preds = %125
  %129 = tail call ptr @cgraph_node_name(ptr noundef nonnull %27) #17
  %130 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %126, ptr noundef nonnull @.str.12, ptr noundef %129)
  br label %173

131:                                              ; preds = %122
  %132 = load ptr, ptr %27, align 8, !tbaa !109
  %133 = getelementptr inbounds %struct.tree_function_decl, ptr %132, i64 0, i32 1
  %134 = load ptr, ptr %133, align 8, !tbaa !71
  %135 = tail call zeroext i8 @optimize_function_for_speed_p(ptr noundef %134) #17
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %137, label %143, !prof !108

137:                                              ; preds = %131
  %138 = load ptr, ptr @dump_file, align 8, !tbaa !60
  %139 = icmp eq ptr %138, null
  br i1 %139, label %173, label %140

140:                                              ; preds = %137
  %141 = tail call ptr @cgraph_node_name(ptr noundef nonnull %27) #17
  %142 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %138, ptr noundef nonnull @.str.13, ptr noundef %141)
  br label %173

143:                                              ; preds = %131
  %144 = load i64, ptr @max_count, align 8, !tbaa !110
  %145 = icmp eq i64 %144, 0
  br i1 %145, label %158, label %146, !prof !111

146:                                              ; preds = %143
  %147 = getelementptr inbounds %struct.cgraph_node, ptr %27, i64 0, i32 23
  %148 = load i64, ptr %147, align 8, !tbaa !112
  %149 = mul nsw i64 %148, 90
  %150 = sdiv i64 %149, 100
  %151 = icmp sgt i64 %104, %150
  br i1 %151, label %152, label %158

152:                                              ; preds = %146
  %153 = load ptr, ptr @dump_file, align 8, !tbaa !60
  %154 = icmp eq ptr %153, null
  br i1 %154, label %170, label %155

155:                                              ; preds = %152
  %156 = tail call ptr @cgraph_node_name(ptr noundef nonnull %27) #17
  %157 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %153, ptr noundef nonnull @.str.14, ptr noundef %156)
  br label %170

158:                                              ; preds = %146, %143
  %159 = icmp eq i32 %103, 0
  %160 = load ptr, ptr @dump_file, align 8, !tbaa !60
  %161 = icmp eq ptr %160, null
  br i1 %159, label %162, label %166, !prof !113

162:                                              ; preds = %158
  br i1 %161, label %173, label %163, !prof !114

163:                                              ; preds = %162
  %164 = tail call ptr @cgraph_node_name(ptr noundef nonnull %27) #17
  %165 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %160, ptr noundef nonnull @.str.15, ptr noundef %164)
  br label %173

166:                                              ; preds = %158
  br i1 %161, label %170, label %167, !prof !115

167:                                              ; preds = %166
  %168 = tail call ptr @cgraph_node_name(ptr noundef nonnull %27) #17
  %169 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %160, ptr noundef nonnull @.str.16, ptr noundef %168)
  br label %170

170:                                              ; preds = %167, %166, %155, %152, %119, %116
  %171 = load i32, ptr @n_cloning_candidates, align 4, !tbaa !75
  %172 = add nsw i32 %171, 1
  store i32 %172, ptr @n_cloning_candidates, align 4, !tbaa !75
  br label %173

173:                                              ; preds = %170, %163, %162, %140, %137, %128, %125, %109, %106, %79, %76, %70, %67, %58, %48, %26
  %174 = phi i32 [ 2, %170 ], [ 0, %26 ], [ 2, %48 ], [ 0, %162 ], [ 0, %163 ], [ 0, %137 ], [ 0, %140 ], [ 0, %125 ], [ 0, %128 ], [ 0, %106 ], [ 0, %109 ], [ 0, %76 ], [ 0, %79 ], [ 0, %67 ], [ 0, %70 ], [ 0, %58 ]
  %175 = load i32, ptr %32, align 8, !tbaa !116
  %176 = icmp sgt i32 %175, 0
  br i1 %176, label %177, label %186, !prof !118

177:                                              ; preds = %173
  %178 = getelementptr inbounds %struct.VEC_ipa_node_params_t_base, ptr %28, i64 0, i32 2, i64 %31, i32 1
  %179 = load ptr, ptr %178, align 8, !tbaa !119
  %180 = zext nneg i32 %175 to i64
  br label %181

181:                                              ; preds = %177, %181
  %182 = phi i64 [ 0, %177 ], [ %184, %181 ]
  %183 = getelementptr inbounds %struct.ipa_param_descriptor, ptr %179, i64 %182
  store i32 %174, ptr %183, align 8, !tbaa !120
  %184 = add nuw nsw i64 %182, 1
  %185 = icmp eq i64 %184, %180
  br i1 %185, label %186, label %181, !prof !122, !llvm.loop !123

186:                                              ; preds = %181, %173
  %187 = getelementptr inbounds %struct.cgraph_node, ptr %27, i64 0, i32 2
  %188 = load ptr, ptr %187, align 8, !tbaa !60
  %189 = icmp eq ptr %188, null
  br i1 %189, label %198, label %190, !prof !124

190:                                              ; preds = %186, %190
  %191 = phi ptr [ %196, %190 ], [ %188, %186 ]
  %192 = phi i64 [ %194, %190 ], [ 0, %186 ]
  %193 = load i64, ptr %191, align 8, !tbaa !99
  %194 = add nsw i64 %193, %192
  %195 = getelementptr inbounds %struct.cgraph_edge, ptr %191, i64 0, i32 4
  %196 = load ptr, ptr %195, align 8, !tbaa !60
  %197 = icmp eq ptr %196, null
  br i1 %197, label %198, label %190, !prof !125, !llvm.loop !126

198:                                              ; preds = %190, %186
  %199 = phi i64 [ 0, %186 ], [ %194, %190 ]
  %200 = getelementptr inbounds %struct.cgraph_node, ptr %27, i64 0, i32 23
  %201 = load i64, ptr %200, align 8, !tbaa !112
  %202 = icmp eq i64 %201, 0
  br i1 %202, label %209, label %203, !prof !93

203:                                              ; preds = %198
  %204 = mul nsw i64 %201, 9
  %205 = sdiv i64 %204, 10
  %206 = tail call i64 @llvm.smin.i64(i64 %199, i64 %205)
  %207 = mul nsw i64 %206, 10000
  %208 = sdiv i64 %207, %201
  br label %209

209:                                              ; preds = %198, %203
  %210 = phi i64 [ %208, %203 ], [ 0, %198 ]
  %211 = load ptr, ptr @ipa_node_params_vector, align 8
  %212 = load i32, ptr %29, align 8, !tbaa !85
  %213 = zext i32 %212 to i64
  %214 = getelementptr inbounds %struct.VEC_ipa_node_params_t_base, ptr %211, i64 0, i32 2, i64 %213, i32 4
  store i64 %210, ptr %214, align 8, !tbaa !127
  %215 = getelementptr inbounds %struct.cgraph_node, ptr %27, i64 0, i32 3
  %216 = load ptr, ptr %215, align 8, !tbaa !60
  %217 = icmp eq ptr %216, null
  br i1 %217, label %218, label %26, !prof !128, !llvm.loop !129

218:                                              ; preds = %209, %23
  %219 = load ptr, ptr @dump_file, align 8, !tbaa !60
  %220 = icmp eq ptr %219, null
  br i1 %220, label %249, label %221, !prof !83

221:                                              ; preds = %218
  %222 = load i32, ptr @dump_flags, align 4, !tbaa !75
  %223 = and i32 %222, 8
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %249, label %225

225:                                              ; preds = %221
  tail call fastcc void @ipcp_print_all_lattices(ptr noundef nonnull %219)
  %226 = load ptr, ptr @dump_file, align 8, !tbaa !60
  %227 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !60
  %228 = icmp eq ptr %227, null
  br i1 %228, label %249, label %229

229:                                              ; preds = %225, %245
  %230 = phi ptr [ %247, %245 ], [ %227, %225 ]
  %231 = getelementptr inbounds %struct.cgraph_node, ptr %230, i64 0, i32 27
  %232 = load i16, ptr %231, align 4
  %233 = and i16 %232, 32
  %234 = icmp eq i16 %233, 0
  br i1 %234, label %245, label %235

235:                                              ; preds = %229
  %236 = tail call ptr @cgraph_node_name(ptr noundef nonnull %230) #17
  %237 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %226, ptr noundef nonnull @.str.25, ptr noundef %236)
  %238 = load ptr, ptr @ipa_node_params_vector, align 8
  %239 = getelementptr inbounds %struct.cgraph_node, ptr %230, i64 0, i32 24
  %240 = load i32, ptr %239, align 8, !tbaa !85
  %241 = zext i32 %240 to i64
  %242 = getelementptr inbounds %struct.VEC_ipa_node_params_t_base, ptr %238, i64 0, i32 2, i64 %241, i32 4
  %243 = load i64, ptr %242, align 8, !tbaa !127
  %244 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %226, ptr noundef nonnull @.str.26, i64 noundef %243)
  br label %245

245:                                              ; preds = %235, %229
  %246 = getelementptr inbounds %struct.cgraph_node, ptr %230, i64 0, i32 3
  %247 = load ptr, ptr %246, align 8, !tbaa !60
  %248 = icmp eq ptr %247, null
  br i1 %248, label %249, label %229, !llvm.loop !130

249:                                              ; preds = %245, %225, %221, %218
  tail call fastcc void @ipcp_propagate_stage()
  %250 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !60
  %251 = icmp eq ptr %250, null
  br i1 %251, label %294, label %252, !prof !84

252:                                              ; preds = %249, %289
  %253 = phi ptr [ %292, %289 ], [ %250, %249 ]
  %254 = phi i8 [ %290, %289 ], [ 0, %249 ]
  %255 = load ptr, ptr @ipa_node_params_vector, align 8
  %256 = getelementptr inbounds %struct.cgraph_node, ptr %253, i64 0, i32 24
  %257 = load i32, ptr %256, align 8, !tbaa !85
  %258 = zext i32 %257 to i64
  %259 = getelementptr inbounds %struct.VEC_ipa_node_params_t_base, ptr %255, i64 0, i32 2, i64 %258
  %260 = load i32, ptr %259, align 8, !tbaa !116
  %261 = icmp sgt i32 %260, 0
  br i1 %261, label %262, label %289, !prof !118

262:                                              ; preds = %252
  %263 = getelementptr inbounds %struct.VEC_ipa_node_params_t_base, ptr %255, i64 0, i32 2, i64 %258, i32 1
  %264 = zext nneg i32 %260 to i64
  br label %265

265:                                              ; preds = %262, %285
  %266 = phi i64 [ 0, %262 ], [ %287, %285 ]
  %267 = phi i8 [ %254, %262 ], [ %286, %285 ]
  %268 = load ptr, ptr %263, align 8, !tbaa !119
  %269 = getelementptr inbounds %struct.ipa_param_descriptor, ptr %268, i64 %266
  %270 = load i32, ptr %269, align 8, !tbaa !120
  %271 = icmp eq i32 %270, 2
  br i1 %271, label %272, label %285, !prof !131

272:                                              ; preds = %265
  %273 = load ptr, ptr @dump_file, align 8, !tbaa !60
  %274 = icmp eq ptr %273, null
  br i1 %274, label %284, label %275

275:                                              ; preds = %272
  %276 = tail call i64 @fwrite(ptr nonnull @.str.27, i64 14, i64 1, ptr nonnull %273)
  %277 = load ptr, ptr @dump_file, align 8, !tbaa !60
  %278 = load ptr, ptr %263, align 8, !tbaa !119
  %279 = getelementptr inbounds %struct.ipa_param_descriptor, ptr %278, i64 %266, i32 1
  %280 = load ptr, ptr %279, align 8, !tbaa !132
  tail call void @print_generic_expr(ptr noundef %277, ptr noundef %280, i32 noundef 0) #17
  %281 = load ptr, ptr @dump_file, align 8, !tbaa !60
  %282 = tail call ptr @cgraph_node_name(ptr noundef nonnull %253) #17
  %283 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %281, ptr noundef nonnull @.str.28, ptr noundef %282)
  br label %284

284:                                              ; preds = %275, %272
  store i32 0, ptr %269, align 8, !tbaa !120
  br label %285

285:                                              ; preds = %284, %265
  %286 = phi i8 [ 1, %284 ], [ %267, %265 ]
  %287 = add nuw nsw i64 %266, 1
  %288 = icmp eq i64 %287, %264
  br i1 %288, label %289, label %265, !prof !122, !llvm.loop !134

289:                                              ; preds = %285, %252
  %290 = phi i8 [ %254, %252 ], [ %286, %285 ]
  %291 = getelementptr inbounds %struct.cgraph_node, ptr %253, i64 0, i32 3
  %292 = load ptr, ptr %291, align 8, !tbaa !60
  %293 = icmp eq ptr %292, null
  br i1 %293, label %294, label %252, !prof !128, !llvm.loop !135

294:                                              ; preds = %289, %249
  %295 = phi i8 [ 0, %249 ], [ %290, %289 ]
  %296 = icmp eq i8 %295, 0
  br i1 %296, label %302, label %297, !prof !83

297:                                              ; preds = %294
  %298 = load i32, ptr @n_cloning_candidates, align 4, !tbaa !75
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %300, label %301

300:                                              ; preds = %297
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 760, ptr noundef nonnull @.str.6) #17
  br label %301

301:                                              ; preds = %300, %297
  tail call fastcc void @ipcp_propagate_stage()
  br label %302

302:                                              ; preds = %301, %294
  %303 = load ptr, ptr @dump_file, align 8, !tbaa !60
  %304 = icmp eq ptr %303, null
  br i1 %304, label %313, label %305, !prof !83

305:                                              ; preds = %302
  %306 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 33, i64 1, ptr nonnull %303)
  %307 = load ptr, ptr @dump_file, align 8, !tbaa !60
  tail call fastcc void @ipcp_print_all_lattices(ptr noundef %307)
  %308 = load i32, ptr @dump_flags, align 4, !tbaa !75
  %309 = and i32 %308, 8
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %313, label %311

311:                                              ; preds = %305
  %312 = load ptr, ptr @dump_file, align 8, !tbaa !60
  tail call fastcc void @ipcp_print_profile_data(ptr noundef %312)
  br label %313

313:                                              ; preds = %302, %305, %311
  %314 = load ptr, ptr @ipa_node_params_vector, align 8, !tbaa !60
  %315 = icmp eq ptr %314, null
  br i1 %315, label %316, label %319, !prof !136

316:                                              ; preds = %313
  %317 = load i32, ptr @cgraph_max_uid, align 4, !tbaa !75
  %318 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %317, i64 noundef 8, i64 noundef 48) #17
  store ptr %318, ptr @ipa_node_params_vector, align 8, !tbaa !60
  br label %319

319:                                              ; preds = %316, %313
  %320 = load ptr, ptr @ipa_node_params_vector, align 8
  %321 = icmp eq ptr %320, null
  br i1 %321, label %324, label %322, !prof !136

322:                                              ; preds = %319
  %323 = load i32, ptr %320, align 8, !tbaa !137
  br label %324

324:                                              ; preds = %322, %319
  %325 = phi i32 [ %323, %322 ], [ 0, %319 ]
  %326 = load i32, ptr @cgraph_max_uid, align 4, !tbaa !75
  %327 = icmp ugt i32 %325, %326
  br i1 %327, label %359, label %328, !prof !83

328:                                              ; preds = %324
  %329 = add nsw i32 %326, 1
  br i1 %321, label %332, label %330

330:                                              ; preds = %328
  %331 = load i32, ptr %320, align 8, !tbaa !137
  br label %332

332:                                              ; preds = %330, %328
  %333 = phi i32 [ %331, %330 ], [ 0, %328 ]
  br i1 %321, label %336, label %334

334:                                              ; preds = %332
  %335 = load i32, ptr %320, align 8, !tbaa !137
  br label %336

336:                                              ; preds = %334, %332
  %337 = phi i32 [ %335, %334 ], [ 0, %332 ]
  %338 = sub nsw i32 %329, %337
  br i1 %321, label %345, label %339

339:                                              ; preds = %336
  %340 = getelementptr inbounds %struct.VEC_ipa_node_params_t_base, ptr %320, i64 0, i32 1
  %341 = load i32, ptr %340, align 4, !tbaa !139
  %342 = load i32, ptr %320, align 8, !tbaa !137
  %343 = sub i32 %341, %342
  %344 = icmp uge i32 %343, %338
  br label %347

345:                                              ; preds = %336
  %346 = icmp eq i32 %337, %329
  br label %347

347:                                              ; preds = %345, %339
  %348 = phi i1 [ %344, %339 ], [ %346, %345 ]
  br i1 %348, label %351, label %349

349:                                              ; preds = %347
  %350 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef %320, i32 noundef %338, i64 noundef 8, i64 noundef 48) #17
  store ptr %350, ptr @ipa_node_params_vector, align 8, !tbaa !60
  br label %351

351:                                              ; preds = %349, %347
  %352 = load ptr, ptr @ipa_node_params_vector, align 8, !tbaa !60, !nonnull !140, !noundef !140
  store i32 %329, ptr %352, align 8, !tbaa !137
  %353 = getelementptr inbounds %struct.VEC_ipa_node_params_t_base, ptr %352, i64 0, i32 2
  %354 = sext i32 %333 to i64
  %355 = getelementptr inbounds %struct.ipa_node_params, ptr %353, i64 %354
  %356 = sub nsw i32 %329, %333
  %357 = sext i32 %356 to i64
  %358 = mul nsw i64 %357, 48
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %355, i8 0, i64 %358, i1 false)
  br label %359

359:                                              ; preds = %351, %324
  %360 = load ptr, ptr @ipa_edge_args_vector, align 8, !tbaa !60
  %361 = icmp eq ptr %360, null
  br i1 %361, label %362, label %365, !prof !136

362:                                              ; preds = %359
  %363 = load i32, ptr @cgraph_edge_max_uid, align 4, !tbaa !75
  %364 = tail call ptr @vec_gc_o_reserve_exact(ptr noundef null, i32 noundef %363, i64 noundef 8, i64 noundef 16) #17
  store ptr %364, ptr @ipa_edge_args_vector, align 8, !tbaa !60
  br label %365

365:                                              ; preds = %362, %359
  %366 = load ptr, ptr @ipa_edge_args_vector, align 8
  %367 = icmp eq ptr %366, null
  br i1 %367, label %370, label %368, !prof !136

368:                                              ; preds = %365
  %369 = load i32, ptr %366, align 8, !tbaa !141
  br label %370

370:                                              ; preds = %368, %365
  %371 = phi i32 [ %369, %368 ], [ 0, %365 ]
  %372 = load i32, ptr @cgraph_edge_max_uid, align 4, !tbaa !75
  %373 = icmp ugt i32 %371, %372
  br i1 %373, label %405, label %374, !prof !83

374:                                              ; preds = %370
  %375 = add nsw i32 %372, 1
  br i1 %367, label %378, label %376

376:                                              ; preds = %374
  %377 = load i32, ptr %366, align 8, !tbaa !141
  br label %378

378:                                              ; preds = %376, %374
  %379 = phi i32 [ %377, %376 ], [ 0, %374 ]
  br i1 %367, label %382, label %380

380:                                              ; preds = %378
  %381 = load i32, ptr %366, align 8, !tbaa !141
  br label %382

382:                                              ; preds = %380, %378
  %383 = phi i32 [ %381, %380 ], [ 0, %378 ]
  %384 = sub nsw i32 %375, %383
  br i1 %367, label %391, label %385

385:                                              ; preds = %382
  %386 = getelementptr inbounds %struct.VEC_ipa_edge_args_t_base, ptr %366, i64 0, i32 1
  %387 = load i32, ptr %386, align 4, !tbaa !143
  %388 = load i32, ptr %366, align 8, !tbaa !141
  %389 = sub i32 %387, %388
  %390 = icmp uge i32 %389, %384
  br label %393

391:                                              ; preds = %382
  %392 = icmp eq i32 %383, %375
  br label %393

393:                                              ; preds = %391, %385
  %394 = phi i1 [ %390, %385 ], [ %392, %391 ]
  br i1 %394, label %397, label %395

395:                                              ; preds = %393
  %396 = tail call ptr @vec_gc_o_reserve_exact(ptr noundef %366, i32 noundef %384, i64 noundef 8, i64 noundef 16) #17
  store ptr %396, ptr @ipa_edge_args_vector, align 8, !tbaa !60
  br label %397

397:                                              ; preds = %395, %393
  %398 = load ptr, ptr @ipa_edge_args_vector, align 8, !tbaa !60, !nonnull !140, !noundef !140
  store i32 %375, ptr %398, align 8, !tbaa !141
  %399 = getelementptr inbounds %struct.VEC_ipa_edge_args_t_base, ptr %398, i64 0, i32 2
  %400 = sext i32 %379 to i64
  %401 = getelementptr inbounds %struct.ipa_edge_args, ptr %399, i64 %400
  %402 = sub nsw i32 %375, %379
  %403 = sext i32 %402 to i64
  %404 = shl nsw i64 %403, 4
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %401, i8 0, i64 %404, i1 false)
  br label %405

405:                                              ; preds = %397, %370
  %406 = load ptr, ptr @dump_file, align 8, !tbaa !60
  %407 = icmp eq ptr %406, null
  br i1 %407, label %410, label %408, !prof !83

408:                                              ; preds = %405
  %409 = tail call i64 @fwrite(ptr nonnull @.str.29, i64 20, i64 1, ptr nonnull %406)
  br label %410

410:                                              ; preds = %408, %405
  %411 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  store ptr %411, ptr @dead_nodes, align 8, !tbaa !60
  %412 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !60
  %413 = icmp eq ptr %412, null
  br i1 %413, label %441, label %414, !prof !84

414:                                              ; preds = %410
  %415 = load i64, ptr @max_count, align 8, !tbaa !110
  br label %416

416:                                              ; preds = %414, %435
  %417 = phi ptr [ %439, %435 ], [ %412, %414 ]
  %418 = phi i64 [ %437, %435 ], [ 0, %414 ]
  %419 = phi i64 [ %436, %435 ], [ %415, %414 ]
  %420 = getelementptr inbounds %struct.cgraph_node, ptr %417, i64 0, i32 27
  %421 = load i16, ptr %420, align 4
  %422 = and i16 %421, 32
  %423 = icmp eq i16 %422, 0
  br i1 %423, label %435, label %424, !prof !144

424:                                              ; preds = %416
  %425 = getelementptr inbounds %struct.cgraph_node, ptr %417, i64 0, i32 23
  %426 = load i64, ptr %425, align 8, !tbaa !112
  %427 = icmp sgt i64 %426, %419
  br i1 %427, label %428, label %429, !prof !131

428:                                              ; preds = %424
  store i64 %426, ptr @max_count, align 8, !tbaa !110
  br label %429

429:                                              ; preds = %428, %424
  %430 = phi i64 [ %426, %428 ], [ %419, %424 ]
  %431 = getelementptr inbounds %struct.cgraph_node, ptr %417, i64 0, i32 18, i32 1, i32 1
  %432 = load i32, ptr %431, align 8, !tbaa !105
  %433 = sext i32 %432 to i64
  %434 = add nsw i64 %418, %433
  br label %435

435:                                              ; preds = %429, %416
  %436 = phi i64 [ %430, %429 ], [ %419, %416 ]
  %437 = phi i64 [ %434, %429 ], [ %418, %416 ]
  %438 = getelementptr inbounds %struct.cgraph_node, ptr %417, i64 0, i32 3
  %439 = load ptr, ptr %438, align 8, !tbaa !60
  %440 = icmp eq ptr %439, null
  br i1 %440, label %441, label %416, !prof !128, !llvm.loop !145

441:                                              ; preds = %435, %410
  %442 = phi i64 [ 0, %410 ], [ %437, %435 ]
  %443 = load ptr, ptr @compiler_params, align 8, !tbaa !60
  %444 = getelementptr inbounds %struct.param_info, ptr %443, i64 17, i32 1
  %445 = load i32, ptr %444, align 8, !tbaa !146
  %446 = sext i32 %445 to i64
  %447 = tail call i64 @llvm.smax.i64(i64 %442, i64 %446)
  %448 = getelementptr inbounds %struct.param_info, ptr %443, i64 19, i32 1
  %449 = load i32, ptr %448, align 8, !tbaa !146
  %450 = sext i32 %449 to i64
  %451 = mul nsw i64 %447, %450
  %452 = sdiv i64 %451, 100
  %453 = add nsw i64 %452, 1
  %454 = tail call ptr @fibheap_new() #17
  %455 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !60
  %456 = icmp eq ptr %455, null
  br i1 %456, label %457, label %460, !prof !84

457:                                              ; preds = %516, %441
  %458 = tail call i32 @fibheap_empty(ptr noundef %454) #17
  %459 = icmp eq i32 %458, 0
  br i1 %459, label %523, label %796, !prof !136

460:                                              ; preds = %441, %516
  %461 = phi ptr [ %518, %516 ], [ %455, %441 ]
  %462 = getelementptr inbounds %struct.cgraph_node, ptr %461, i64 0, i32 27
  %463 = load i16, ptr %462, align 4
  %464 = and i16 %463, 32
  %465 = icmp eq i16 %464, 0
  br i1 %465, label %516, label %466, !prof !144

466:                                              ; preds = %460
  %467 = tail call fastcc zeroext i8 @ipcp_versionable_function_p(ptr noundef nonnull %461)
  %468 = icmp eq i8 %467, 0
  br i1 %468, label %516, label %469, !prof !131

469:                                              ; preds = %466
  %470 = load ptr, ptr @ipa_node_params_vector, align 8
  %471 = getelementptr inbounds %struct.cgraph_node, ptr %461, i64 0, i32 24
  %472 = load i32, ptr %471, align 8, !tbaa !85
  %473 = zext i32 %472 to i64
  %474 = getelementptr inbounds %struct.VEC_ipa_node_params_t_base, ptr %470, i64 0, i32 2, i64 %473, i32 5
  %475 = load i8, ptr %474, align 8
  %476 = and i8 %475, 1
  %477 = icmp eq i8 %476, 0
  br i1 %477, label %478, label %516, !prof !122

478:                                              ; preds = %469
  %479 = getelementptr inbounds %struct.VEC_ipa_node_params_t_base, ptr %470, i64 0, i32 2, i64 %473
  %480 = load i32, ptr %479, align 8, !tbaa !116
  %481 = icmp sgt i32 %480, 0
  br i1 %481, label %482, label %509, !prof !148

482:                                              ; preds = %478
  %483 = getelementptr inbounds %struct.VEC_ipa_node_params_t_base, ptr %470, i64 0, i32 2, i64 %473, i32 1
  %484 = zext nneg i32 %480 to i64
  br label %485

485:                                              ; preds = %482, %505
  %486 = phi i64 [ 0, %482 ], [ %507, %505 ]
  %487 = phi i32 [ 0, %482 ], [ %506, %505 ]
  %488 = load ptr, ptr %483, align 8, !tbaa !119
  %489 = getelementptr inbounds %struct.ipa_param_descriptor, ptr %488, i64 %486
  %490 = getelementptr inbounds %struct.ipa_param_descriptor, ptr %488, i64 %486, i32 1
  %491 = load ptr, ptr %490, align 8, !tbaa !132
  %492 = load i32, ptr %489, align 8, !tbaa !120
  %493 = icmp eq i32 %492, 1
  br i1 %493, label %494, label %505, !prof !131

494:                                              ; preds = %485
  %495 = tail call zeroext i8 @is_gimple_reg(ptr noundef %491) #17
  %496 = icmp eq i8 %495, 0
  br i1 %496, label %503, label %497

497:                                              ; preds = %494
  %498 = load ptr, ptr %461, align 8, !tbaa !109
  %499 = getelementptr inbounds %struct.tree_function_decl, ptr %498, i64 0, i32 1
  %500 = load ptr, ptr %499, align 8, !tbaa !71
  %501 = tail call ptr @gimple_default_def(ptr noundef %500, ptr noundef %491) #17
  %502 = icmp eq ptr %501, null
  br i1 %502, label %505, label %503

503:                                              ; preds = %497, %494
  %504 = add nsw i32 %487, 1
  br label %505

505:                                              ; preds = %503, %497, %485
  %506 = phi i32 [ %504, %503 ], [ %487, %497 ], [ %487, %485 ]
  %507 = add nuw nsw i64 %486, 1
  %508 = icmp eq i64 %507, %484
  br i1 %508, label %509, label %485, !prof !148, !llvm.loop !149

509:                                              ; preds = %505, %478
  %510 = phi i32 [ 0, %478 ], [ %506, %505 ]
  %511 = icmp eq i32 %510, 0
  br i1 %511, label %516, label %512, !prof !122

512:                                              ; preds = %509
  %513 = tail call fastcc i64 @ipcp_estimate_cloning_cost(ptr noundef nonnull %461), !range !150
  %514 = tail call ptr @fibheap_insert(ptr noundef %454, i64 noundef %513, ptr noundef nonnull %461) #17
  %515 = getelementptr inbounds %struct.cgraph_node, ptr %461, i64 0, i32 16
  store ptr %514, ptr %515, align 8, !tbaa !151
  br label %516

516:                                              ; preds = %512, %509, %469, %466, %460
  %517 = getelementptr inbounds %struct.cgraph_node, ptr %461, i64 0, i32 3
  %518 = load ptr, ptr %517, align 8, !tbaa !60
  %519 = icmp eq ptr %518, null
  br i1 %519, label %457, label %460, !prof !128, !llvm.loop !152

520:                                              ; preds = %794
  %521 = tail call i32 @fibheap_empty(ptr noundef %454) #17
  %522 = icmp eq i32 %521, 0
  br i1 %522, label %523, label %796, !prof !136

523:                                              ; preds = %457, %520
  %524 = phi i64 [ %795, %520 ], [ 0, %457 ]
  %525 = tail call ptr @fibheap_extract_min(ptr noundef %454) #17
  %526 = getelementptr inbounds %struct.cgraph_node, ptr %525, i64 0, i32 16
  store ptr null, ptr %526, align 8, !tbaa !151
  %527 = load ptr, ptr @dump_file, align 8, !tbaa !60
  %528 = icmp eq ptr %527, null
  br i1 %528, label %532, label %529

529:                                              ; preds = %523
  %530 = tail call ptr @cgraph_node_name(ptr noundef %525) #17
  %531 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %527, ptr noundef nonnull @.str.30, ptr noundef %530)
  br label %532

532:                                              ; preds = %529, %523
  %533 = tail call fastcc i64 @ipcp_estimate_growth(ptr noundef %525), !range !153
  %534 = trunc i64 %533 to i32
  %535 = add nsw i64 %533, %524
  %536 = icmp sgt i64 %535, %453
  br i1 %536, label %794, label %537

537:                                              ; preds = %532
  %538 = icmp eq i32 %534, 0
  br i1 %538, label %550, label %539

539:                                              ; preds = %537
  %540 = load ptr, ptr %525, align 8, !tbaa !109
  %541 = getelementptr inbounds %struct.tree_function_decl, ptr %540, i64 0, i32 1
  %542 = load ptr, ptr %541, align 8, !tbaa !71
  %543 = tail call zeroext i8 @optimize_function_for_size_p(ptr noundef %542) #17
  %544 = icmp eq i8 %543, 0
  br i1 %544, label %550, label %545

545:                                              ; preds = %539
  %546 = load ptr, ptr @dump_file, align 8, !tbaa !60
  %547 = icmp eq ptr %546, null
  br i1 %547, label %794, label %548, !llvm.loop !154

548:                                              ; preds = %545
  %549 = tail call i64 @fwrite(ptr nonnull @.str.31, i64 36, i64 1, ptr nonnull %546)
  br label %794, !llvm.loop !154

550:                                              ; preds = %539, %537
  %551 = getelementptr inbounds %struct.cgraph_node, ptr %525, i64 0, i32 2
  %552 = load ptr, ptr %551, align 8, !tbaa !60
  %553 = icmp eq ptr %552, null
  br i1 %553, label %566, label %558

554:                                              ; preds = %563
  %555 = getelementptr inbounds %struct.cgraph_edge, ptr %559, i64 0, i32 4
  %556 = load ptr, ptr %555, align 8, !tbaa !60
  %557 = icmp eq ptr %556, null
  br i1 %557, label %566, label %558, !llvm.loop !155

558:                                              ; preds = %550, %554
  %559 = phi ptr [ %556, %554 ], [ %552, %550 ]
  %560 = getelementptr inbounds %struct.cgraph_edge, ptr %559, i64 0, i32 1
  %561 = load ptr, ptr %560, align 8, !tbaa !156
  %562 = icmp eq ptr %561, %525
  br i1 %562, label %585, label %563

563:                                              ; preds = %558
  %564 = tail call fastcc zeroext i8 @ipcp_need_redirect_p(ptr noundef nonnull %559)
  %565 = icmp eq i8 %564, 0
  br i1 %565, label %554, label %585

566:                                              ; preds = %554, %550
  %567 = getelementptr inbounds %struct.cgraph_node, ptr %525, i64 0, i32 27
  %568 = load i16, ptr %567, align 4
  %569 = and i16 %568, 1
  %570 = icmp eq i16 %569, 0
  br i1 %570, label %571, label %577

571:                                              ; preds = %566
  %572 = getelementptr inbounds %struct.cgraph_node, ptr %525, i64 0, i32 18, i32 2
  %573 = load i8, ptr %572, align 8
  %574 = lshr i8 %573, 1
  %575 = and i8 %574, 1
  %576 = xor i8 %575, 1
  br label %577

577:                                              ; preds = %571, %566
  %578 = phi i8 [ 0, %566 ], [ %576, %571 ]
  %579 = icmp eq i8 %578, 0
  br i1 %579, label %585, label %580

580:                                              ; preds = %577
  %581 = load ptr, ptr @dead_nodes, align 8, !tbaa !60
  %582 = getelementptr inbounds %struct.cgraph_node, ptr %525, i64 0, i32 24
  %583 = load i32, ptr %582, align 8, !tbaa !85
  %584 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %581, i32 noundef %583) #17
  br label %585

585:                                              ; preds = %563, %558, %580, %577
  %586 = load ptr, ptr @ipa_node_params_vector, align 8
  %587 = getelementptr inbounds %struct.cgraph_node, ptr %525, i64 0, i32 24
  %588 = load i32, ptr %587, align 8, !tbaa !85
  %589 = zext i32 %588 to i64
  %590 = getelementptr inbounds %struct.VEC_ipa_node_params_t_base, ptr %586, i64 0, i32 2, i64 %589
  %591 = load i32, ptr %590, align 8, !tbaa !116
  %592 = tail call ptr @vec_gc_p_reserve_exact(ptr noundef null, i32 noundef 1) #17
  %593 = tail call ptr @bitmap_gc_alloc_stat() #17
  %594 = icmp sgt i32 %591, 0
  br i1 %594, label %595, label %598

595:                                              ; preds = %585
  %596 = getelementptr inbounds %struct.VEC_ipa_node_params_t_base, ptr %586, i64 0, i32 2, i64 %589, i32 1
  %597 = zext nneg i32 %591 to i64
  br label %602

598:                                              ; preds = %673, %585
  %599 = phi ptr [ %592, %585 ], [ %674, %673 ]
  %600 = load ptr, ptr %551, align 8, !tbaa !60
  %601 = icmp eq ptr %600, null
  br i1 %601, label %684, label %677

602:                                              ; preds = %595, %673
  %603 = phi i64 [ 0, %595 ], [ %675, %673 ]
  %604 = phi ptr [ %592, %595 ], [ %674, %673 ]
  %605 = load ptr, ptr %596, align 8, !tbaa !119
  %606 = getelementptr inbounds %struct.ipa_param_descriptor, ptr %605, i64 %603
  %607 = getelementptr inbounds %struct.ipa_param_descriptor, ptr %605, i64 %603, i32 1
  %608 = load ptr, ptr %607, align 8, !tbaa !132
  %609 = tail call zeroext i8 @is_gimple_reg(ptr noundef %608) #17
  %610 = icmp eq i8 %609, 0
  br i1 %610, label %617, label %611

611:                                              ; preds = %602
  %612 = load ptr, ptr %525, align 8, !tbaa !109
  %613 = getelementptr inbounds %struct.tree_function_decl, ptr %612, i64 0, i32 1
  %614 = load ptr, ptr %613, align 8, !tbaa !71
  %615 = tail call ptr @gimple_default_def(ptr noundef %614, ptr noundef %608) #17
  %616 = icmp eq ptr %615, null
  br i1 %616, label %669, label %617

617:                                              ; preds = %611, %602
  %618 = load i32, ptr %606, align 8, !tbaa !120
  %619 = icmp eq i32 %618, 1
  br i1 %619, label %620, label %673

620:                                              ; preds = %617
  %621 = tail call ptr @ggc_alloc_stat(i64 noundef 24) #17
  %622 = getelementptr inbounds %struct.tree_common, ptr %608, i64 0, i32 2
  %623 = load ptr, ptr %622, align 8, !tbaa !71
  %624 = load i32, ptr %606, align 8, !tbaa !120
  %625 = icmp eq i32 %624, 1
  br i1 %625, label %627, label %626

626:                                              ; preds = %620
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 567, ptr noundef nonnull @.str.6) #17
  br label %627

627:                                              ; preds = %626, %620
  %628 = getelementptr inbounds %struct.ipcp_lattice, ptr %606, i64 0, i32 1
  %629 = load ptr, ptr %628, align 8, !tbaa !157
  %630 = getelementptr inbounds %struct.tree_common, ptr %629, i64 0, i32 2
  %631 = load ptr, ptr %630, align 8, !tbaa !71
  %632 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %623, ptr noundef %631) #17
  %633 = icmp eq i8 %632, 0
  br i1 %633, label %634, label %639

634:                                              ; preds = %627
  %635 = tail call zeroext i8 @fold_convertible_p(ptr noundef %623, ptr noundef %629) #17
  %636 = icmp eq i8 %635, 0
  %637 = select i1 %636, i32 118, i32 116
  %638 = tail call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef %637, ptr noundef %623, ptr noundef %629) #17
  br label %639

639:                                              ; preds = %634, %627
  %640 = phi ptr [ %629, %627 ], [ %638, %634 ]
  %641 = load ptr, ptr @dump_file, align 8, !tbaa !60
  %642 = icmp eq ptr %641, null
  br i1 %642, label %651, label %643

643:                                              ; preds = %639
  %644 = tail call i64 @fwrite(ptr nonnull @.str.36, i64 18, i64 1, ptr nonnull %641)
  %645 = load ptr, ptr @dump_file, align 8, !tbaa !60
  tail call void @print_generic_expr(ptr noundef %645, ptr noundef %608, i32 noundef 0) #17
  %646 = load ptr, ptr @dump_file, align 8, !tbaa !60
  %647 = tail call i64 @fwrite(ptr nonnull @.str.37, i64 12, i64 1, ptr %646)
  %648 = load ptr, ptr @dump_file, align 8, !tbaa !60
  tail call void @print_generic_expr(ptr noundef %648, ptr noundef %640, i32 noundef 0) #17
  %649 = load ptr, ptr @dump_file, align 8, !tbaa !60
  %650 = tail call i32 @fputc(i32 10, ptr %649)
  br label %651

651:                                              ; preds = %643, %639
  store ptr %608, ptr %621, align 8, !tbaa !158
  %652 = getelementptr inbounds %struct.ipa_replace_map, ptr %621, i64 0, i32 1
  store ptr %640, ptr %652, align 8, !tbaa !160
  %653 = getelementptr inbounds %struct.ipa_replace_map, ptr %621, i64 0, i32 2
  store i8 1, ptr %653, align 8, !tbaa !161
  %654 = getelementptr inbounds %struct.ipa_replace_map, ptr %621, i64 0, i32 3
  store i8 0, ptr %654, align 1, !tbaa !162
  %655 = icmp eq ptr %604, null
  br i1 %655, label %661, label %656

656:                                              ; preds = %651
  %657 = getelementptr inbounds %struct.VEC_ipa_replace_map_p_base, ptr %604, i64 0, i32 1
  %658 = load i32, ptr %657, align 4, !tbaa !163
  %659 = load i32, ptr %604, align 8, !tbaa !165
  %660 = icmp eq i32 %658, %659
  br i1 %660, label %661, label %663

661:                                              ; preds = %656, %651
  %662 = tail call ptr @vec_gc_p_reserve(ptr noundef %604, i32 noundef 1) #17
  br label %663

663:                                              ; preds = %661, %656
  %664 = phi ptr [ %662, %661 ], [ %604, %656 ]
  %665 = load i32, ptr %664, align 8, !tbaa !165
  %666 = add i32 %665, 1
  store i32 %666, ptr %664, align 8, !tbaa !165
  %667 = zext i32 %665 to i64
  %668 = getelementptr inbounds %struct.VEC_ipa_replace_map_p_base, ptr %664, i64 0, i32 2, i64 %667
  store ptr %621, ptr %668, align 8, !tbaa !60
  br label %669

669:                                              ; preds = %611, %663
  %670 = phi ptr [ %664, %663 ], [ %604, %611 ]
  %671 = trunc i64 %603 to i32
  %672 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %593, i32 noundef %671) #17
  br label %673

673:                                              ; preds = %669, %617
  %674 = phi ptr [ %604, %617 ], [ %670, %669 ]
  %675 = add nuw nsw i64 %603, 1
  %676 = icmp eq i64 %675, %597
  br i1 %676, label %598, label %602, !llvm.loop !166

677:                                              ; preds = %598, %677
  %678 = phi ptr [ %682, %677 ], [ %600, %598 ]
  %679 = phi i32 [ %680, %677 ], [ 0, %598 ]
  %680 = add nuw nsw i32 %679, 1
  %681 = getelementptr inbounds %struct.cgraph_edge, ptr %678, i64 0, i32 4
  %682 = load ptr, ptr %681, align 8, !tbaa !60
  %683 = icmp eq ptr %682, null
  br i1 %683, label %684, label %677, !llvm.loop !167

684:                                              ; preds = %677, %598
  %685 = phi i32 [ 0, %598 ], [ %680, %677 ]
  %686 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %685) #17
  %687 = load ptr, ptr %551, align 8, !tbaa !60
  %688 = icmp eq ptr %687, null
  br i1 %688, label %701, label %689

689:                                              ; preds = %684
  %690 = load i32, ptr %686, align 8, !tbaa !168
  br label %691

691:                                              ; preds = %689, %691
  %692 = phi i32 [ %690, %689 ], [ %694, %691 ]
  %693 = phi ptr [ %687, %689 ], [ %698, %691 ]
  %694 = add i32 %692, 1
  %695 = zext i32 %692 to i64
  %696 = getelementptr inbounds %struct.VEC_cgraph_edge_p_base, ptr %686, i64 0, i32 2, i64 %695
  store ptr %693, ptr %696, align 8, !tbaa !60
  %697 = getelementptr inbounds %struct.cgraph_edge, ptr %693, i64 0, i32 4
  %698 = load ptr, ptr %697, align 8, !tbaa !60
  %699 = icmp eq ptr %698, null
  br i1 %699, label %700, label %691, !llvm.loop !170

700:                                              ; preds = %691
  store i32 %694, ptr %686, align 8, !tbaa !168
  br label %701

701:                                              ; preds = %700, %684
  %702 = tail call ptr @cgraph_create_virtual_clone(ptr noundef %525, ptr noundef %686, ptr noundef %599, ptr noundef %593) #17
  %703 = icmp eq ptr %686, null
  br i1 %703, label %705, label %704

704:                                              ; preds = %701
  tail call void @free(ptr noundef %686)
  br label %705

705:                                              ; preds = %704, %701
  %706 = icmp eq ptr %702, null
  br i1 %706, label %794, label %707, !llvm.loop !154

707:                                              ; preds = %705
  %708 = load ptr, ptr @dump_file, align 8, !tbaa !60
  %709 = icmp eq ptr %708, null
  br i1 %709, label %714, label %710

710:                                              ; preds = %707
  %711 = tail call ptr @cgraph_node_name(ptr noundef %525) #17
  %712 = trunc i64 %535 to i32
  %713 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %708, ptr noundef nonnull @.str.32, ptr noundef %711, i32 noundef %534, i32 noundef %712)
  br label %714

714:                                              ; preds = %710, %707
  %715 = load ptr, ptr @ipa_node_params_vector, align 8, !tbaa !60
  %716 = icmp eq ptr %715, null
  br i1 %716, label %717, label %720

717:                                              ; preds = %714
  %718 = load i32, ptr @cgraph_max_uid, align 4, !tbaa !75
  %719 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %718, i64 noundef 8, i64 noundef 48) #17
  store ptr %719, ptr @ipa_node_params_vector, align 8, !tbaa !60
  br label %720

720:                                              ; preds = %717, %714
  %721 = load ptr, ptr @ipa_node_params_vector, align 8
  %722 = icmp eq ptr %721, null
  br i1 %722, label %725, label %723

723:                                              ; preds = %720
  %724 = load i32, ptr %721, align 8, !tbaa !137
  br label %725

725:                                              ; preds = %723, %720
  %726 = phi i32 [ %724, %723 ], [ 0, %720 ]
  %727 = load i32, ptr @cgraph_max_uid, align 4, !tbaa !75
  %728 = icmp ugt i32 %726, %727
  br i1 %728, label %760, label %729

729:                                              ; preds = %725
  %730 = add nsw i32 %727, 1
  br i1 %722, label %733, label %731

731:                                              ; preds = %729
  %732 = load i32, ptr %721, align 8, !tbaa !137
  br label %733

733:                                              ; preds = %731, %729
  %734 = phi i32 [ %732, %731 ], [ 0, %729 ]
  br i1 %722, label %737, label %735

735:                                              ; preds = %733
  %736 = load i32, ptr %721, align 8, !tbaa !137
  br label %737

737:                                              ; preds = %735, %733
  %738 = phi i32 [ %736, %735 ], [ 0, %733 ]
  %739 = sub nsw i32 %730, %738
  br i1 %722, label %746, label %740

740:                                              ; preds = %737
  %741 = getelementptr inbounds %struct.VEC_ipa_node_params_t_base, ptr %721, i64 0, i32 1
  %742 = load i32, ptr %741, align 4, !tbaa !139
  %743 = load i32, ptr %721, align 8, !tbaa !137
  %744 = sub i32 %742, %743
  %745 = icmp uge i32 %744, %739
  br label %748

746:                                              ; preds = %737
  %747 = icmp eq i32 %738, %730
  br label %748

748:                                              ; preds = %746, %740
  %749 = phi i1 [ %745, %740 ], [ %747, %746 ]
  br i1 %749, label %752, label %750

750:                                              ; preds = %748
  %751 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef %721, i32 noundef %739, i64 noundef 8, i64 noundef 48) #17
  store ptr %751, ptr @ipa_node_params_vector, align 8, !tbaa !60
  br label %752

752:                                              ; preds = %750, %748
  %753 = load ptr, ptr @ipa_node_params_vector, align 8, !tbaa !60, !nonnull !140, !noundef !140
  store i32 %730, ptr %753, align 8, !tbaa !137
  %754 = getelementptr inbounds %struct.VEC_ipa_node_params_t_base, ptr %753, i64 0, i32 2
  %755 = sext i32 %734 to i64
  %756 = getelementptr inbounds %struct.ipa_node_params, ptr %754, i64 %755
  %757 = sub nsw i32 %730, %734
  %758 = sext i32 %757 to i64
  %759 = mul nsw i64 %758, 48
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %756, i8 0, i64 %759, i1 false)
  br label %760

760:                                              ; preds = %752, %725
  tail call void @ipa_initialize_node_params(ptr noundef nonnull %702) #17
  %761 = load ptr, ptr @ipa_node_params_vector, align 8
  %762 = getelementptr inbounds %struct.cgraph_node, ptr %702, i64 0, i32 24
  %763 = load i32, ptr %762, align 8, !tbaa !85
  %764 = zext i32 %763 to i64
  %765 = getelementptr inbounds %struct.VEC_ipa_node_params_t_base, ptr %761, i64 0, i32 2, i64 %764, i32 3
  store ptr %525, ptr %765, align 8, !tbaa !171
  %766 = load ptr, ptr @dump_file, align 8, !tbaa !60
  %767 = icmp eq ptr %766, null
  br i1 %767, label %771, label %768

768:                                              ; preds = %760
  %769 = load ptr, ptr %702, align 8, !tbaa !109
  %770 = load i32, ptr @dump_flags, align 4, !tbaa !75
  tail call void @dump_function_to_file(ptr noundef %769, ptr noundef nonnull %766, i32 noundef %770) #17
  br label %771

771:                                              ; preds = %768, %760
  %772 = getelementptr inbounds %struct.cgraph_node, ptr %525, i64 0, i32 1
  %773 = load ptr, ptr %772, align 8, !tbaa !60
  %774 = icmp eq ptr %773, null
  br i1 %774, label %794, label %775

775:                                              ; preds = %771, %790
  %776 = phi ptr [ %792, %790 ], [ %773, %771 ]
  %777 = getelementptr inbounds %struct.cgraph_edge, ptr %776, i64 0, i32 2
  %778 = load ptr, ptr %777, align 8, !tbaa !172
  %779 = getelementptr inbounds %struct.cgraph_node, ptr %778, i64 0, i32 16
  %780 = load ptr, ptr %779, align 8, !tbaa !151
  %781 = icmp eq ptr %780, null
  br i1 %781, label %790, label %782

782:                                              ; preds = %775
  %783 = tail call ptr @fibheap_delete_node(ptr noundef %454, ptr noundef nonnull %780) #17
  %784 = load ptr, ptr %777, align 8, !tbaa !172
  %785 = tail call fastcc i64 @ipcp_estimate_cloning_cost(ptr noundef %784), !range !150
  %786 = load ptr, ptr %777, align 8, !tbaa !172
  %787 = tail call ptr @fibheap_insert(ptr noundef %454, i64 noundef %785, ptr noundef %786) #17
  %788 = load ptr, ptr %777, align 8, !tbaa !172
  %789 = getelementptr inbounds %struct.cgraph_node, ptr %788, i64 0, i32 16
  store ptr %787, ptr %789, align 8, !tbaa !151
  br label %790

790:                                              ; preds = %782, %775
  %791 = getelementptr inbounds %struct.cgraph_edge, ptr %776, i64 0, i32 6
  %792 = load ptr, ptr %791, align 8, !tbaa !60
  %793 = icmp eq ptr %792, null
  br i1 %793, label %794, label %775, !llvm.loop !173

794:                                              ; preds = %790, %771, %705, %548, %545, %532
  %795 = phi i64 [ %524, %532 ], [ %524, %548 ], [ %524, %545 ], [ %535, %705 ], [ %535, %771 ], [ %535, %790 ]
  br i1 %536, label %796, label %520

796:                                              ; preds = %520, %794, %457
  %797 = phi ptr [ null, %457 ], [ %525, %794 ], [ %525, %520 ]
  %798 = tail call i32 @fibheap_empty(ptr noundef %454) #17
  %799 = icmp eq i32 %798, 0
  br i1 %799, label %800, label %812, !prof !136

800:                                              ; preds = %796, %807
  %801 = phi ptr [ %808, %807 ], [ %797, %796 ]
  %802 = load ptr, ptr @dump_file, align 8, !tbaa !60
  %803 = icmp eq ptr %802, null
  br i1 %803, label %807, label %804

804:                                              ; preds = %800
  %805 = tail call ptr @cgraph_node_name(ptr noundef %801) #17
  %806 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %802, ptr noundef nonnull @.str.33, ptr noundef %805)
  br label %807

807:                                              ; preds = %804, %800
  %808 = tail call ptr @fibheap_extract_min(ptr noundef %454) #17
  %809 = getelementptr inbounds %struct.cgraph_node, ptr %808, i64 0, i32 16
  store ptr null, ptr %809, align 8, !tbaa !151
  %810 = tail call i32 @fibheap_empty(ptr noundef %454) #17
  %811 = icmp eq i32 %810, 0
  br i1 %811, label %800, label %812, !prof !136, !llvm.loop !174

812:                                              ; preds = %807, %796
  tail call void @fibheap_delete(ptr noundef %454) #17
  %813 = load ptr, ptr @dead_nodes, align 8, !tbaa !60
  tail call void @bitmap_obstack_free(ptr noundef %813) #17
  store ptr null, ptr @dead_nodes, align 8, !tbaa !60
  %814 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !60
  %815 = icmp eq ptr %814, null
  br i1 %815, label %816, label %819, !prof !84

816:                                              ; preds = %895, %812
  %817 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !60
  %818 = icmp eq ptr %817, null
  br i1 %818, label %950, label %899, !prof !84

819:                                              ; preds = %812, %895
  %820 = phi ptr [ %897, %895 ], [ %814, %812 ]
  %821 = getelementptr inbounds %struct.cgraph_node, ptr %820, i64 0, i32 27
  %822 = load i16, ptr %821, align 4
  %823 = and i16 %822, 32
  %824 = icmp eq i16 %823, 0
  br i1 %824, label %895, label %825, !prof !144

825:                                              ; preds = %819
  %826 = load ptr, ptr @ipa_node_params_vector, align 8
  %827 = getelementptr inbounds %struct.cgraph_node, ptr %820, i64 0, i32 24
  %828 = load i32, ptr %827, align 8, !tbaa !85
  %829 = zext i32 %828 to i64
  %830 = getelementptr inbounds %struct.VEC_ipa_node_params_t_base, ptr %826, i64 0, i32 2, i64 %829, i32 3
  %831 = load ptr, ptr %830, align 8, !tbaa !171
  %832 = icmp eq ptr %831, null
  br i1 %832, label %895, label %833, !prof !122

833:                                              ; preds = %825
  %834 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #17
  %835 = load ptr, ptr @ipa_node_params_vector, align 8
  %836 = load i32, ptr %827, align 8, !tbaa !85
  %837 = zext i32 %836 to i64
  %838 = getelementptr inbounds %struct.VEC_ipa_node_params_t_base, ptr %835, i64 0, i32 2, i64 %837, i32 3
  %839 = load ptr, ptr %838, align 8, !tbaa !171
  %840 = getelementptr inbounds %struct.cgraph_node, ptr %839, i64 0, i32 24
  %841 = load i32, ptr %840, align 8, !tbaa !85
  %842 = zext i32 %841 to i64
  %843 = getelementptr inbounds %struct.VEC_ipa_node_params_t_base, ptr %835, i64 0, i32 2, i64 %842
  %844 = load i32, ptr %843, align 8, !tbaa !116
  %845 = icmp sgt i32 %844, 0
  br i1 %845, label %846, label %872

846:                                              ; preds = %833
  %847 = getelementptr inbounds %struct.VEC_ipa_node_params_t_base, ptr %835, i64 0, i32 2, i64 %842, i32 1
  %848 = zext nneg i32 %844 to i64
  br label %849

849:                                              ; preds = %846, %869
  %850 = phi i64 [ 0, %846 ], [ %870, %869 ]
  %851 = load ptr, ptr %847, align 8, !tbaa !119
  %852 = getelementptr inbounds %struct.ipa_param_descriptor, ptr %851, i64 %850
  %853 = getelementptr inbounds %struct.ipa_param_descriptor, ptr %851, i64 %850, i32 1
  %854 = load ptr, ptr %853, align 8, !tbaa !132
  %855 = tail call zeroext i8 @is_gimple_reg(ptr noundef %854) #17
  %856 = icmp eq i8 %855, 0
  br i1 %856, label %863, label %857

857:                                              ; preds = %849
  %858 = load ptr, ptr %839, align 8, !tbaa !109
  %859 = getelementptr inbounds %struct.tree_function_decl, ptr %858, i64 0, i32 1
  %860 = load ptr, ptr %859, align 8, !tbaa !71
  %861 = tail call ptr @gimple_default_def(ptr noundef %860, ptr noundef %854) #17
  %862 = icmp eq ptr %861, null
  br i1 %862, label %866, label %863

863:                                              ; preds = %857, %849
  %864 = load i32, ptr %852, align 8, !tbaa !120
  %865 = icmp eq i32 %864, 1
  br i1 %865, label %866, label %869

866:                                              ; preds = %863, %857
  %867 = trunc i64 %850 to i32
  %868 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %834, i32 noundef %867) #17
  br label %869

869:                                              ; preds = %866, %863
  %870 = add nuw nsw i64 %850, 1
  %871 = icmp eq i64 %870, %848
  br i1 %871, label %872, label %849, !llvm.loop !175

872:                                              ; preds = %869, %833
  %873 = getelementptr inbounds %struct.cgraph_node, ptr %820, i64 0, i32 2
  %874 = load ptr, ptr %873, align 8, !tbaa !176
  %875 = icmp eq ptr %874, null
  br i1 %875, label %895, label %876

876:                                              ; preds = %872, %893
  %877 = phi ptr [ %879, %893 ], [ %874, %872 ]
  %878 = getelementptr inbounds %struct.cgraph_edge, ptr %877, i64 0, i32 4
  %879 = load ptr, ptr %878, align 8, !tbaa !177
  %880 = getelementptr inbounds %struct.cgraph_edge, ptr %877, i64 0, i32 1
  %881 = load ptr, ptr %880, align 8, !tbaa !156
  %882 = load ptr, ptr @ipa_node_params_vector, align 8
  %883 = getelementptr inbounds %struct.cgraph_node, ptr %881, i64 0, i32 24
  %884 = load i32, ptr %883, align 8, !tbaa !85
  %885 = zext i32 %884 to i64
  %886 = getelementptr inbounds %struct.VEC_ipa_node_params_t_base, ptr %882, i64 0, i32 2, i64 %885, i32 3
  %887 = load ptr, ptr %886, align 8, !tbaa !171
  %888 = icmp eq ptr %887, null
  br i1 %888, label %889, label %893

889:                                              ; preds = %876
  %890 = tail call fastcc zeroext i8 @ipcp_need_redirect_p(ptr noundef nonnull %877)
  %891 = icmp eq i8 %890, 0
  br i1 %891, label %893, label %892

892:                                              ; preds = %889
  tail call void @cgraph_redirect_edge_callee(ptr noundef nonnull %877, ptr noundef %839) #17
  br label %893

893:                                              ; preds = %892, %889, %876
  %894 = icmp eq ptr %879, null
  br i1 %894, label %895, label %876, !llvm.loop !178

895:                                              ; preds = %893, %872, %825, %819
  %896 = getelementptr inbounds %struct.cgraph_node, ptr %820, i64 0, i32 3
  %897 = load ptr, ptr %896, align 8, !tbaa !60
  %898 = icmp eq ptr %897, null
  br i1 %898, label %816, label %819, !prof !128, !llvm.loop !179

899:                                              ; preds = %816, %946
  %900 = phi ptr [ %948, %946 ], [ %817, %816 ]
  %901 = load ptr, ptr @ipa_node_params_vector, align 8
  %902 = getelementptr inbounds %struct.cgraph_node, ptr %900, i64 0, i32 24
  %903 = load i32, ptr %902, align 8, !tbaa !85
  %904 = zext i32 %903 to i64
  %905 = getelementptr inbounds %struct.VEC_ipa_node_params_t_base, ptr %901, i64 0, i32 2, i64 %904, i32 3
  %906 = load ptr, ptr %905, align 8, !tbaa !171
  %907 = icmp eq ptr %906, null
  br i1 %907, label %946, label %908, !prof !93

908:                                              ; preds = %899
  %909 = getelementptr inbounds %struct.cgraph_node, ptr %906, i64 0, i32 24
  %910 = load i32, ptr %909, align 8, !tbaa !85
  %911 = zext i32 %910 to i64
  %912 = getelementptr inbounds %struct.VEC_ipa_node_params_t_base, ptr %901, i64 0, i32 2, i64 %911, i32 4
  %913 = load i64, ptr %912, align 8, !tbaa !127
  %914 = getelementptr inbounds %struct.cgraph_node, ptr %906, i64 0, i32 23
  %915 = load i64, ptr %914, align 8, !tbaa !112
  %916 = mul nsw i64 %915, %913
  %917 = sdiv i64 %916, 10000
  %918 = getelementptr inbounds %struct.cgraph_node, ptr %900, i64 0, i32 23
  store i64 %917, ptr %918, align 8, !tbaa !112
  %919 = sub nsw i64 10000, %913
  %920 = load i64, ptr %914, align 8, !tbaa !112
  %921 = mul nsw i64 %920, %919
  %922 = sdiv i64 %921, 10000
  store i64 %922, ptr %914, align 8, !tbaa !112
  %923 = getelementptr inbounds %struct.cgraph_node, ptr %900, i64 0, i32 1
  %924 = load ptr, ptr %923, align 8, !tbaa !60
  %925 = icmp eq ptr %924, null
  br i1 %925, label %934, label %926

926:                                              ; preds = %908, %926
  %927 = phi ptr [ %932, %926 ], [ %924, %908 ]
  %928 = load i64, ptr %927, align 8, !tbaa !99
  %929 = mul nsw i64 %928, %913
  %930 = sdiv i64 %929, 10000
  store i64 %930, ptr %927, align 8, !tbaa !99
  %931 = getelementptr inbounds %struct.cgraph_edge, ptr %927, i64 0, i32 6
  %932 = load ptr, ptr %931, align 8, !tbaa !60
  %933 = icmp eq ptr %932, null
  br i1 %933, label %934, label %926, !llvm.loop !180

934:                                              ; preds = %926, %908
  %935 = getelementptr inbounds %struct.cgraph_node, ptr %906, i64 0, i32 1
  %936 = load ptr, ptr %935, align 8, !tbaa !60
  %937 = icmp eq ptr %936, null
  br i1 %937, label %946, label %938

938:                                              ; preds = %934, %938
  %939 = phi ptr [ %944, %938 ], [ %936, %934 ]
  %940 = load i64, ptr %939, align 8, !tbaa !99
  %941 = mul nsw i64 %940, %919
  %942 = sdiv i64 %941, 10000
  store i64 %942, ptr %939, align 8, !tbaa !99
  %943 = getelementptr inbounds %struct.cgraph_edge, ptr %939, i64 0, i32 6
  %944 = load ptr, ptr %943, align 8, !tbaa !60
  %945 = icmp eq ptr %944, null
  br i1 %945, label %946, label %938, !llvm.loop !181

946:                                              ; preds = %938, %934, %899
  %947 = getelementptr inbounds %struct.cgraph_node, ptr %900, i64 0, i32 3
  %948 = load ptr, ptr %947, align 8, !tbaa !60
  %949 = icmp eq ptr %948, null
  br i1 %949, label %950, label %899, !prof !128, !llvm.loop !182

950:                                              ; preds = %946, %816
  %951 = load ptr, ptr @dump_file, align 8, !tbaa !60
  %952 = icmp eq ptr %951, null
  br i1 %952, label %960, label %953, !prof !83

953:                                              ; preds = %950
  %954 = load i32, ptr @dump_flags, align 4, !tbaa !75
  %955 = and i32 %954, 8
  %956 = icmp eq i32 %955, 0
  br i1 %956, label %960, label %957

957:                                              ; preds = %953
  %958 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 36, i64 1, ptr nonnull %951)
  %959 = load ptr, ptr @dump_file, align 8, !tbaa !60
  tail call fastcc void @ipcp_print_profile_data(ptr noundef %959)
  br label %960

960:                                              ; preds = %957, %953, %950
  tail call void @free_all_ipa_structures_after_ipa_cp() #17
  %961 = load ptr, ptr @dump_file, align 8, !tbaa !60
  %962 = icmp eq ptr %961, null
  br i1 %962, label %965, label %963, !prof !83

963:                                              ; preds = %960
  %964 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 30, i64 1, ptr nonnull %961)
  br label %965

965:                                              ; preds = %963, %960
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @ipcp_generate_summary() #10 !prof !81 !PGOFuncName !183 {
  %1 = load ptr, ptr @dump_file, align 8, !tbaa !60
  %2 = icmp eq ptr %1, null
  br i1 %2, label %5, label %3, !prof !83

3:                                                ; preds = %0
  %4 = tail call i64 @fwrite(ptr nonnull @.str.43, i64 33, i64 1, ptr nonnull %1)
  br label %5

5:                                                ; preds = %3, %0
  %6 = load ptr, ptr @ipa_node_params_vector, align 8, !tbaa !60
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %11, !prof !83

8:                                                ; preds = %5
  %9 = load i32, ptr @cgraph_max_uid, align 4, !tbaa !75
  %10 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %9, i64 noundef 8, i64 noundef 48) #17
  store ptr %10, ptr @ipa_node_params_vector, align 8, !tbaa !60
  br label %11

11:                                               ; preds = %8, %5
  %12 = load ptr, ptr @ipa_node_params_vector, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14, !prof !136

14:                                               ; preds = %11
  %15 = load i32, ptr %12, align 8, !tbaa !137
  br label %16

16:                                               ; preds = %14, %11
  %17 = phi i32 [ %15, %14 ], [ 0, %11 ]
  %18 = load i32, ptr @cgraph_max_uid, align 4, !tbaa !75
  %19 = icmp ugt i32 %17, %18
  br i1 %19, label %51, label %20, !prof !136

20:                                               ; preds = %16
  %21 = add nsw i32 %18, 1
  br i1 %13, label %24, label %22, !prof !136

22:                                               ; preds = %20
  %23 = load i32, ptr %12, align 8, !tbaa !137
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %23, %22 ], [ 0, %20 ]
  br i1 %13, label %28, label %26, !prof !136

26:                                               ; preds = %24
  %27 = load i32, ptr %12, align 8, !tbaa !137
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi i32 [ %27, %26 ], [ 0, %24 ]
  %30 = sub nsw i32 %21, %29
  br i1 %13, label %37, label %31, !prof !136

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.VEC_ipa_node_params_t_base, ptr %12, i64 0, i32 1
  %33 = load i32, ptr %32, align 4, !tbaa !139
  %34 = load i32, ptr %12, align 8, !tbaa !137
  %35 = sub i32 %33, %34
  %36 = icmp uge i32 %35, %30
  br label %39

37:                                               ; preds = %28
  %38 = icmp eq i32 %29, %21
  br label %39

39:                                               ; preds = %37, %31
  %40 = phi i1 [ %36, %31 ], [ %38, %37 ]
  br i1 %40, label %43, label %41, !prof !136

41:                                               ; preds = %39
  %42 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef %12, i32 noundef %30, i64 noundef 8, i64 noundef 48) #17
  store ptr %42, ptr @ipa_node_params_vector, align 8, !tbaa !60
  br label %43

43:                                               ; preds = %41, %39
  %44 = load ptr, ptr @ipa_node_params_vector, align 8, !tbaa !60, !nonnull !140, !noundef !140
  store i32 %21, ptr %44, align 8, !tbaa !137
  %45 = getelementptr inbounds %struct.VEC_ipa_node_params_t_base, ptr %44, i64 0, i32 2
  %46 = sext i32 %25 to i64
  %47 = getelementptr inbounds %struct.ipa_node_params, ptr %45, i64 %46
  %48 = sub nsw i32 %21, %25
  %49 = sext i32 %48 to i64
  %50 = mul nsw i64 %49, 48
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %47, i8 0, i64 %50, i1 false), !prof !184
  br label %51

51:                                               ; preds = %16, %43
  %52 = load ptr, ptr @ipa_edge_args_vector, align 8, !tbaa !60
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %57, !prof !83

54:                                               ; preds = %51
  %55 = load i32, ptr @cgraph_edge_max_uid, align 4, !tbaa !75
  %56 = tail call ptr @vec_gc_o_reserve_exact(ptr noundef null, i32 noundef %55, i64 noundef 8, i64 noundef 16) #17
  store ptr %56, ptr @ipa_edge_args_vector, align 8, !tbaa !60
  br label %57

57:                                               ; preds = %54, %51
  %58 = load ptr, ptr @ipa_edge_args_vector, align 8
  %59 = icmp eq ptr %58, null
  br i1 %59, label %62, label %60, !prof !136

60:                                               ; preds = %57
  %61 = load i32, ptr %58, align 8, !tbaa !141
  br label %62

62:                                               ; preds = %60, %57
  %63 = phi i32 [ %61, %60 ], [ 0, %57 ]
  %64 = load i32, ptr @cgraph_edge_max_uid, align 4, !tbaa !75
  %65 = icmp ugt i32 %63, %64
  br i1 %65, label %97, label %66, !prof !136

66:                                               ; preds = %62
  %67 = add nsw i32 %64, 1
  br i1 %59, label %70, label %68, !prof !136

68:                                               ; preds = %66
  %69 = load i32, ptr %58, align 8, !tbaa !141
  br label %70

70:                                               ; preds = %68, %66
  %71 = phi i32 [ %69, %68 ], [ 0, %66 ]
  br i1 %59, label %74, label %72, !prof !136

72:                                               ; preds = %70
  %73 = load i32, ptr %58, align 8, !tbaa !141
  br label %74

74:                                               ; preds = %72, %70
  %75 = phi i32 [ %73, %72 ], [ 0, %70 ]
  %76 = sub nsw i32 %67, %75
  br i1 %59, label %83, label %77, !prof !136

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.VEC_ipa_edge_args_t_base, ptr %58, i64 0, i32 1
  %79 = load i32, ptr %78, align 4, !tbaa !143
  %80 = load i32, ptr %58, align 8, !tbaa !141
  %81 = sub i32 %79, %80
  %82 = icmp uge i32 %81, %76
  br label %85

83:                                               ; preds = %74
  %84 = icmp eq i32 %75, %67
  br label %85

85:                                               ; preds = %83, %77
  %86 = phi i1 [ %82, %77 ], [ %84, %83 ]
  br i1 %86, label %89, label %87, !prof !136

87:                                               ; preds = %85
  %88 = tail call ptr @vec_gc_o_reserve_exact(ptr noundef %58, i32 noundef %76, i64 noundef 8, i64 noundef 16) #17
  store ptr %88, ptr @ipa_edge_args_vector, align 8, !tbaa !60
  br label %89

89:                                               ; preds = %87, %85
  %90 = load ptr, ptr @ipa_edge_args_vector, align 8, !tbaa !60, !nonnull !140, !noundef !140
  store i32 %67, ptr %90, align 8, !tbaa !141
  %91 = getelementptr inbounds %struct.VEC_ipa_edge_args_t_base, ptr %90, i64 0, i32 2
  %92 = sext i32 %71 to i64
  %93 = getelementptr inbounds %struct.ipa_edge_args, ptr %91, i64 %92
  %94 = sub nsw i32 %67, %71
  %95 = sext i32 %94 to i64
  %96 = shl nsw i64 %95, 4
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %93, i8 0, i64 %96, i1 false), !prof !184
  br label %97

97:                                               ; preds = %62, %89
  tail call void @ipa_register_cgraph_hooks() #17
  %98 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !60
  %99 = icmp eq ptr %98, null
  br i1 %99, label %100, label %103, !prof !84

100:                                              ; preds = %114, %97
  %101 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !60
  %102 = icmp eq ptr %101, null
  br i1 %102, label %170, label %118, !prof !84

103:                                              ; preds = %97, %114
  %104 = phi ptr [ %116, %114 ], [ %98, %97 ]
  %105 = getelementptr inbounds %struct.cgraph_node, ptr %104, i64 0, i32 27
  %106 = load i16, ptr %105, align 4
  %107 = and i16 %106, 32
  %108 = icmp eq i16 %107, 0
  br i1 %108, label %114, label %109, !prof !144

109:                                              ; preds = %103
  %110 = and i16 %106, 9
  %111 = icmp eq i16 %110, 0
  br i1 %111, label %112, label %113, !prof !131

112:                                              ; preds = %109
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 184, ptr noundef nonnull @.str.6) #17
  br label %113

113:                                              ; preds = %112, %109
  tail call void @ipa_initialize_node_params(ptr noundef nonnull %104) #17
  tail call void @ipa_detect_param_modifications(ptr noundef nonnull %104) #17
  br label %114

114:                                              ; preds = %113, %103
  %115 = getelementptr inbounds %struct.cgraph_node, ptr %104, i64 0, i32 3
  %116 = load ptr, ptr %115, align 8, !tbaa !60
  %117 = icmp eq ptr %116, null
  br i1 %117, label %100, label %103, !prof !128, !llvm.loop !185

118:                                              ; preds = %100, %166
  %119 = phi ptr [ %168, %166 ], [ %101, %100 ]
  %120 = getelementptr inbounds %struct.cgraph_node, ptr %119, i64 0, i32 27
  %121 = load i16, ptr %120, align 4
  %122 = and i16 %121, 32
  %123 = icmp eq i16 %122, 0
  br i1 %123, label %166, label %124, !prof !144

124:                                              ; preds = %118
  %125 = getelementptr inbounds %struct.cgraph_node, ptr %119, i64 0, i32 1
  %126 = load ptr, ptr %125, align 8, !tbaa !60
  %127 = icmp eq ptr %126, null
  br i1 %127, label %166, label %128, !prof !186

128:                                              ; preds = %124, %162
  %129 = phi ptr [ %164, %162 ], [ %126, %124 ]
  %130 = getelementptr inbounds %struct.cgraph_edge, ptr %129, i64 0, i32 2
  %131 = load ptr, ptr %130, align 8, !tbaa !172
  %132 = getelementptr inbounds %struct.cgraph_node, ptr %131, i64 0, i32 27
  %133 = load i16, ptr %132, align 4
  %134 = and i16 %133, 32
  %135 = icmp ne i16 %134, 0
  %136 = load i32, ptr @flag_lto, align 4
  %137 = icmp ne i32 %136, 0
  %138 = select i1 %135, i1 true, i1 %137, !prof !187
  %139 = load i32, ptr @flag_whopr, align 4
  %140 = icmp ne i32 %139, 0
  %141 = select i1 %138, i1 true, i1 %140, !prof !187
  br i1 %141, label %142, label %162, !prof !187

142:                                              ; preds = %128
  tail call void @ipa_count_arguments(ptr noundef nonnull %129) #17
  %143 = load ptr, ptr @ipa_edge_args_vector, align 8
  %144 = getelementptr inbounds %struct.cgraph_edge, ptr %129, i64 0, i32 12
  %145 = load i32, ptr %144, align 4, !tbaa !188
  %146 = zext i32 %145 to i64
  %147 = getelementptr inbounds %struct.VEC_ipa_edge_args_t_base, ptr %143, i64 0, i32 2, i64 %146
  %148 = load i32, ptr %147, align 8, !tbaa !189
  %149 = load ptr, ptr @ipa_node_params_vector, align 8
  %150 = load ptr, ptr %130, align 8, !tbaa !172
  %151 = getelementptr inbounds %struct.cgraph_node, ptr %150, i64 0, i32 24
  %152 = load i32, ptr %151, align 8, !tbaa !85
  %153 = zext i32 %152 to i64
  %154 = getelementptr inbounds %struct.VEC_ipa_node_params_t_base, ptr %149, i64 0, i32 2, i64 %153
  %155 = load i32, ptr %154, align 8, !tbaa !116
  %156 = icmp eq i32 %148, %155
  br i1 %156, label %161, label %157, !prof !191

157:                                              ; preds = %142
  %158 = getelementptr inbounds %struct.VEC_ipa_node_params_t_base, ptr %149, i64 0, i32 2, i64 %153, i32 5
  %159 = load i8, ptr %158, align 8
  %160 = or i8 %159, 1
  store i8 %160, ptr %158, align 8
  br label %161

161:                                              ; preds = %157, %142
  tail call void @ipa_compute_jump_functions(ptr noundef nonnull %129) #17
  br label %162

162:                                              ; preds = %161, %128
  %163 = getelementptr inbounds %struct.cgraph_edge, ptr %129, i64 0, i32 6
  %164 = load ptr, ptr %163, align 8, !tbaa !60
  %165 = icmp eq ptr %164, null
  br i1 %165, label %166, label %128, !prof !192, !llvm.loop !193

166:                                              ; preds = %162, %124, %118
  %167 = getelementptr inbounds %struct.cgraph_node, ptr %119, i64 0, i32 3
  %168 = load ptr, ptr %167, align 8, !tbaa !60
  %169 = icmp eq ptr %168, null
  br i1 %169, label %170, label %118, !prof !128, !llvm.loop !194

170:                                              ; preds = %166, %100
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @ipcp_write_summary(ptr noundef %0) #11 !prof !59 {
  tail call void @ipa_prop_write_jump_functions(ptr noundef %0) #17
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @ipcp_read_summary() #11 !prof !59 {
  tail call void @ipa_prop_read_jump_functions() #17
  ret void
}

declare void @lto_ipa_fixup_call_notes(ptr noundef, ptr noundef) #3

declare zeroext i8 @cgraph_remove_unreachable_nodes(i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

declare void @ipa_print_all_params(ptr noundef) local_unnamed_addr #3

declare void @ipa_print_all_jump_functions(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @ipcp_print_profile_data(ptr nocapture noundef %0) unnamed_addr #11 !prof !59 {
  %2 = tail call i64 @fwrite(ptr nonnull @.str.38, i64 15, i64 1, ptr %0)
  %3 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !60
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %13, %5 ], [ %3, %1 ]
  %7 = tail call ptr @cgraph_node_name(ptr noundef nonnull %6) #17
  %8 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.40, ptr noundef %7)
  %9 = getelementptr inbounds %struct.cgraph_node, ptr %6, i64 0, i32 23
  %10 = load i64, ptr %9, align 8, !tbaa !112
  %11 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.41, i64 noundef %10)
  %12 = getelementptr inbounds %struct.cgraph_node, ptr %6, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !60
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %5, !llvm.loop !195

15:                                               ; preds = %5, %1
  %16 = tail call i64 @fwrite(ptr nonnull @.str.39, i64 18, i64 1, ptr %0)
  %17 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !60
  %18 = icmp eq ptr %17, null
  br i1 %18, label %42, label %19

19:                                               ; preds = %15, %38
  %20 = phi ptr [ %40, %38 ], [ %17, %15 ]
  %21 = getelementptr inbounds %struct.cgraph_node, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !60
  %23 = icmp eq ptr %22, null
  br i1 %23, label %38, label %24

24:                                               ; preds = %19, %24
  %25 = phi ptr [ %36, %24 ], [ %22, %19 ]
  %26 = getelementptr inbounds %struct.cgraph_edge, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !156
  %28 = tail call ptr @cgraph_node_name(ptr noundef %27) #17
  %29 = getelementptr inbounds %struct.cgraph_edge, ptr %25, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !172
  %31 = tail call ptr @cgraph_node_name(ptr noundef %30) #17
  %32 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.42, ptr noundef %28, ptr noundef %31)
  %33 = load i64, ptr %25, align 8, !tbaa !99
  %34 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.41, i64 noundef %33)
  %35 = getelementptr inbounds %struct.cgraph_edge, ptr %25, i64 0, i32 6
  %36 = load ptr, ptr %35, align 8, !tbaa !60
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %24, !llvm.loop !196

38:                                               ; preds = %24, %19
  %39 = getelementptr inbounds %struct.cgraph_node, ptr %20, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !60
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %19, !llvm.loop !197

42:                                               ; preds = %38, %15
  ret void
}

declare void @free_all_ipa_structures_after_ipa_cp() local_unnamed_addr #3

declare void @ipa_update_after_lto_read() local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @ipcp_print_all_lattices(ptr noundef %0) unnamed_addr #11 !prof !59 {
  %2 = tail call i64 @fwrite(ptr nonnull @.str.18, i64 10, i64 1, ptr %0)
  %3 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !60
  %4 = icmp eq ptr %3, null
  br i1 %4, label %47, label %5

5:                                                ; preds = %1, %43
  %6 = phi ptr [ %45, %43 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.cgraph_node, ptr %6, i64 0, i32 27
  %8 = load i16, ptr %7, align 4
  %9 = and i16 %8, 32
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %43, label %11

11:                                               ; preds = %5
  %12 = load ptr, ptr @ipa_node_params_vector, align 8
  %13 = getelementptr inbounds %struct.cgraph_node, ptr %6, i64 0, i32 24
  %14 = load i32, ptr %13, align 8, !tbaa !85
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.VEC_ipa_node_params_t_base, ptr %12, i64 0, i32 2, i64 %15
  %17 = tail call ptr @cgraph_node_name(ptr noundef nonnull %6) #17
  %18 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.19, ptr noundef %17)
  %19 = load i32, ptr %16, align 8, !tbaa !116
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %43

21:                                               ; preds = %11
  %22 = getelementptr inbounds %struct.VEC_ipa_node_params_t_base, ptr %12, i64 0, i32 2, i64 %15, i32 1
  %23 = zext nneg i32 %19 to i64
  br label %24

24:                                               ; preds = %21, %40
  %25 = phi i64 [ 0, %21 ], [ %41, %40 ]
  %26 = load ptr, ptr %22, align 8, !tbaa !119
  %27 = getelementptr inbounds %struct.ipa_param_descriptor, ptr %26, i64 %25
  %28 = trunc i64 %25 to i32
  %29 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.20, i32 noundef %28)
  %30 = load i32, ptr %27, align 8, !tbaa !120
  switch i32 %30, label %38 [
    i32 1, label %31
    i32 2, label %36
  ]

31:                                               ; preds = %24
  %32 = tail call i64 @fwrite(ptr nonnull @.str.21, i64 14, i64 1, ptr %0)
  %33 = getelementptr inbounds %struct.ipcp_lattice, ptr %27, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !157
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %34, i32 noundef 0) #17
  %35 = tail call i32 @fputc(i32 10, ptr %0)
  br label %40

36:                                               ; preds = %24
  %37 = tail call i64 @fwrite(ptr nonnull @.str.23, i64 12, i64 1, ptr %0)
  br label %40

38:                                               ; preds = %24
  %39 = tail call i64 @fwrite(ptr nonnull @.str.24, i64 15, i64 1, ptr %0)
  br label %40

40:                                               ; preds = %36, %38, %31
  %41 = add nuw nsw i64 %25, 1
  %42 = icmp eq i64 %41, %23
  br i1 %42, label %43, label %24, !llvm.loop !198

43:                                               ; preds = %40, %11, %5
  %44 = getelementptr inbounds %struct.cgraph_node, ptr %6, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !60
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %5, !llvm.loop !199

47:                                               ; preds = %43, %1
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @ipcp_propagate_stage() unnamed_addr #10 !prof !81 !PGOFuncName !200 {
  %1 = alloca ptr, align 8
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #17
  %3 = load ptr, ptr @ipa_node_params_vector, align 8, !tbaa !60
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %8, !prof !136

5:                                                ; preds = %0
  %6 = load i32, ptr @cgraph_max_uid, align 4, !tbaa !75
  %7 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %6, i64 noundef 8, i64 noundef 48) #17
  store ptr %7, ptr @ipa_node_params_vector, align 8, !tbaa !60
  br label %8

8:                                                ; preds = %5, %0
  %9 = load ptr, ptr @ipa_node_params_vector, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11, !prof !136

11:                                               ; preds = %8
  %12 = load i32, ptr %9, align 8, !tbaa !137
  br label %13

13:                                               ; preds = %11, %8
  %14 = phi i32 [ %12, %11 ], [ 0, %8 ]
  %15 = load i32, ptr @cgraph_max_uid, align 4, !tbaa !75
  %16 = icmp ugt i32 %14, %15
  br i1 %16, label %48, label %17, !prof !83

17:                                               ; preds = %13
  %18 = add nsw i32 %15, 1
  br i1 %10, label %21, label %19

19:                                               ; preds = %17
  %20 = load i32, ptr %9, align 8, !tbaa !137
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i32 [ %20, %19 ], [ 0, %17 ]
  br i1 %10, label %25, label %23

23:                                               ; preds = %21
  %24 = load i32, ptr %9, align 8, !tbaa !137
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i32 [ %24, %23 ], [ 0, %21 ]
  %27 = sub nsw i32 %18, %26
  br i1 %10, label %34, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.VEC_ipa_node_params_t_base, ptr %9, i64 0, i32 1
  %30 = load i32, ptr %29, align 4, !tbaa !139
  %31 = load i32, ptr %9, align 8, !tbaa !137
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
  %39 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef %9, i32 noundef %27, i64 noundef 8, i64 noundef 48) #17
  store ptr %39, ptr @ipa_node_params_vector, align 8, !tbaa !60
  br label %40

40:                                               ; preds = %38, %36
  %41 = load ptr, ptr @ipa_node_params_vector, align 8, !tbaa !60, !nonnull !140, !noundef !140
  store i32 %18, ptr %41, align 8, !tbaa !137
  %42 = getelementptr inbounds %struct.VEC_ipa_node_params_t_base, ptr %41, i64 0, i32 2
  %43 = sext i32 %22 to i64
  %44 = getelementptr inbounds %struct.ipa_node_params, ptr %42, i64 %43
  %45 = sub nsw i32 %18, %22
  %46 = sext i32 %45 to i64
  %47 = mul nsw i64 %46, 48
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %44, i8 0, i64 %47, i1 false)
  br label %48

48:                                               ; preds = %13, %40
  %49 = load ptr, ptr @ipa_edge_args_vector, align 8, !tbaa !60
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %54, !prof !136

51:                                               ; preds = %48
  %52 = load i32, ptr @cgraph_edge_max_uid, align 4, !tbaa !75
  %53 = tail call ptr @vec_gc_o_reserve_exact(ptr noundef null, i32 noundef %52, i64 noundef 8, i64 noundef 16) #17
  store ptr %53, ptr @ipa_edge_args_vector, align 8, !tbaa !60
  br label %54

54:                                               ; preds = %51, %48
  %55 = load ptr, ptr @ipa_edge_args_vector, align 8
  %56 = icmp eq ptr %55, null
  br i1 %56, label %59, label %57, !prof !136

57:                                               ; preds = %54
  %58 = load i32, ptr %55, align 8, !tbaa !141
  br label %59

59:                                               ; preds = %57, %54
  %60 = phi i32 [ %58, %57 ], [ 0, %54 ]
  %61 = load i32, ptr @cgraph_edge_max_uid, align 4, !tbaa !75
  %62 = icmp ugt i32 %60, %61
  br i1 %62, label %94, label %63, !prof !83

63:                                               ; preds = %59
  %64 = add nsw i32 %61, 1
  br i1 %56, label %67, label %65

65:                                               ; preds = %63
  %66 = load i32, ptr %55, align 8, !tbaa !141
  br label %67

67:                                               ; preds = %65, %63
  %68 = phi i32 [ %66, %65 ], [ 0, %63 ]
  br i1 %56, label %71, label %69

69:                                               ; preds = %67
  %70 = load i32, ptr %55, align 8, !tbaa !141
  br label %71

71:                                               ; preds = %69, %67
  %72 = phi i32 [ %70, %69 ], [ 0, %67 ]
  %73 = sub nsw i32 %64, %72
  br i1 %56, label %80, label %74

74:                                               ; preds = %71
  %75 = getelementptr inbounds %struct.VEC_ipa_edge_args_t_base, ptr %55, i64 0, i32 1
  %76 = load i32, ptr %75, align 4, !tbaa !143
  %77 = load i32, ptr %55, align 8, !tbaa !141
  %78 = sub i32 %76, %77
  %79 = icmp uge i32 %78, %73
  br label %82

80:                                               ; preds = %71
  %81 = icmp eq i32 %72, %64
  br label %82

82:                                               ; preds = %80, %74
  %83 = phi i1 [ %79, %74 ], [ %81, %80 ]
  br i1 %83, label %86, label %84

84:                                               ; preds = %82
  %85 = tail call ptr @vec_gc_o_reserve_exact(ptr noundef %55, i32 noundef %73, i64 noundef 8, i64 noundef 16) #17
  store ptr %85, ptr @ipa_edge_args_vector, align 8, !tbaa !60
  br label %86

86:                                               ; preds = %84, %82
  %87 = load ptr, ptr @ipa_edge_args_vector, align 8, !tbaa !60, !nonnull !140, !noundef !140
  store i32 %64, ptr %87, align 8, !tbaa !141
  %88 = getelementptr inbounds %struct.VEC_ipa_edge_args_t_base, ptr %87, i64 0, i32 2
  %89 = sext i32 %68 to i64
  %90 = getelementptr inbounds %struct.ipa_edge_args, ptr %88, i64 %89
  %91 = sub nsw i32 %64, %68
  %92 = sext i32 %91 to i64
  %93 = shl nsw i64 %92, 4
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %90, i8 0, i64 %93, i1 false)
  br label %94

94:                                               ; preds = %59, %86
  %95 = tail call ptr @ipa_init_func_list() #17
  store ptr %95, ptr %2, align 8, !tbaa !60
  %96 = icmp eq ptr %95, null
  br i1 %96, label %293, label %102, !prof !84

97:                                               ; preds = %287, %102
  %98 = phi ptr [ %104, %102 ], [ %288, %287 ]
  %99 = phi ptr [ %103, %102 ], [ %289, %287 ]
  %100 = load ptr, ptr %2, align 8, !tbaa !60
  %101 = icmp eq ptr %100, null
  br i1 %101, label %293, label %102, !prof !201, !llvm.loop !202

102:                                              ; preds = %94, %97
  %103 = phi ptr [ %99, %97 ], [ null, %94 ]
  %104 = phi ptr [ %98, %97 ], [ null, %94 ]
  %105 = call ptr @ipa_pop_func_from_list(ptr noundef nonnull %2) #17
  %106 = getelementptr inbounds %struct.cgraph_node, ptr %105, i64 0, i32 1
  %107 = load ptr, ptr %106, align 8, !tbaa !60
  %108 = icmp eq ptr %107, null
  br i1 %108, label %97, label %109, !prof !203

109:                                              ; preds = %102
  %110 = getelementptr inbounds %struct.cgraph_node, ptr %105, i64 0, i32 24
  %111 = load i32, ptr %110, align 8, !tbaa !85
  %112 = zext i32 %111 to i64
  %113 = load ptr, ptr @ipa_node_params_vector, align 8
  %114 = getelementptr inbounds %struct.VEC_ipa_node_params_t_base, ptr %113, i64 0, i32 2, i64 %112, i32 1
  br label %115

115:                                              ; preds = %109, %287
  %116 = phi ptr [ %107, %109 ], [ %291, %287 ]
  %117 = phi ptr [ %103, %109 ], [ %289, %287 ]
  %118 = phi ptr [ %104, %109 ], [ %288, %287 ]
  %119 = load ptr, ptr @ipa_node_params_vector, align 8
  %120 = getelementptr inbounds %struct.cgraph_edge, ptr %116, i64 0, i32 2
  %121 = load ptr, ptr %120, align 8, !tbaa !172
  %122 = getelementptr inbounds %struct.cgraph_node, ptr %121, i64 0, i32 24
  %123 = load i32, ptr %122, align 8, !tbaa !85
  %124 = zext i32 %123 to i64
  %125 = load ptr, ptr @ipa_edge_args_vector, align 8
  %126 = getelementptr inbounds %struct.cgraph_edge, ptr %116, i64 0, i32 12
  %127 = load i32, ptr %126, align 4, !tbaa !188
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds %struct.VEC_ipa_edge_args_t_base, ptr %125, i64 0, i32 2, i64 %128
  %130 = getelementptr inbounds %struct.VEC_ipa_node_params_t_base, ptr %119, i64 0, i32 2, i64 %124, i32 5
  %131 = load i8, ptr %130, align 8
  %132 = and i8 %131, 1
  %133 = icmp eq i8 %132, 0
  br i1 %133, label %134, label %287, !prof !204

134:                                              ; preds = %115
  %135 = getelementptr inbounds %struct.cgraph_node, ptr %121, i64 0, i32 27
  %136 = load i16, ptr %135, align 4
  %137 = and i16 %136, 32
  %138 = icmp eq i16 %137, 0
  br i1 %138, label %287, label %139, !prof !205

139:                                              ; preds = %134
  %140 = load i32, ptr %129, align 8, !tbaa !189
  %141 = icmp sgt i32 %140, 0
  br i1 %141, label %142, label %287, !prof !206

142:                                              ; preds = %139
  %143 = getelementptr inbounds %struct.VEC_ipa_edge_args_t_base, ptr %125, i64 0, i32 2, i64 %128, i32 1
  %144 = getelementptr inbounds %struct.VEC_ipa_node_params_t_base, ptr %119, i64 0, i32 2, i64 %124, i32 1
  %145 = zext nneg i32 %140 to i64
  br label %146

146:                                              ; preds = %142, %284
  %147 = phi i64 [ 0, %142 ], [ %285, %284 ]
  %148 = phi ptr [ %117, %142 ], [ %255, %284 ]
  %149 = phi ptr [ %118, %142 ], [ %221, %284 ]
  %150 = load ptr, ptr %143, align 8, !tbaa !207
  %151 = getelementptr inbounds %struct.ipa_jump_func, ptr %150, i64 %147
  %152 = load i32, ptr %151, align 8, !tbaa !208
  switch i32 %152, label %220 [
    i32 1, label %153
    i32 3, label %156
    i32 4, label %188
  ], !prof !210

153:                                              ; preds = %146
  %154 = getelementptr inbounds %struct.ipa_jump_func, ptr %150, i64 %147, i32 1
  %155 = load ptr, ptr %154, align 8, !tbaa !71
  br label %220

156:                                              ; preds = %146
  %157 = getelementptr inbounds %struct.ipa_jump_func, ptr %150, i64 %147, i32 1
  %158 = getelementptr inbounds %struct.ipa_jump_func, ptr %150, i64 %147, i32 1, i32 0, i32 1
  %159 = load i32, ptr %158, align 8, !tbaa !71
  %160 = load ptr, ptr %114, align 8, !tbaa !119
  %161 = sext i32 %159 to i64
  %162 = getelementptr inbounds %struct.ipa_param_descriptor, ptr %160, i64 %161
  %163 = load i32, ptr %162, align 8, !tbaa !120
  %164 = icmp eq i32 %163, 1
  br i1 %164, label %165, label %220, !prof !211

165:                                              ; preds = %156
  %166 = getelementptr inbounds %struct.ipcp_lattice, ptr %162, i64 0, i32 1
  %167 = load ptr, ptr %166, align 8, !tbaa !157
  %168 = getelementptr inbounds i8, ptr %151, i64 20
  %169 = load i32, ptr %168, align 4, !tbaa !71
  %170 = icmp eq i32 %169, 116
  br i1 %170, label %181, label %171

171:                                              ; preds = %165
  %172 = sext i32 %169 to i64
  %173 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %172
  %174 = load i32, ptr %173, align 4, !tbaa !75
  %175 = icmp eq i32 %174, 5
  %176 = getelementptr inbounds %struct.tree_common, ptr %167, i64 0, i32 2
  %177 = select i1 %175, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), ptr %176
  %178 = load ptr, ptr %177, align 8, !tbaa !71
  %179 = load ptr, ptr %157, align 8, !tbaa !71
  %180 = call ptr @fold_binary_loc(i32 noundef 0, i32 noundef %169, ptr noundef %178, ptr noundef %167, ptr noundef %179) #17
  br label %181

181:                                              ; preds = %171, %165
  %182 = phi ptr [ %180, %171 ], [ %167, %165 ]
  %183 = icmp eq ptr %182, null
  br i1 %183, label %187, label %184

184:                                              ; preds = %181
  %185 = call zeroext i8 @is_gimple_ip_invariant(ptr noundef nonnull %182) #17
  %186 = icmp eq i8 %185, 0
  br i1 %186, label %187, label %220

187:                                              ; preds = %184, %181
  br label %220

188:                                              ; preds = %146
  %189 = getelementptr inbounds %struct.VEC_ipa_node_params_t_base, ptr %113, i64 0, i32 2, i64 %112, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #17
  %190 = getelementptr inbounds %struct.ipa_jump_func, ptr %150, i64 %147, i32 1
  %191 = getelementptr inbounds %struct.ipa_jump_func, ptr %150, i64 %147, i32 1, i32 0, i32 2
  %192 = load i32, ptr %191, align 8, !tbaa !71
  %193 = load ptr, ptr %189, align 8, !tbaa !119
  %194 = sext i32 %192 to i64
  %195 = getelementptr inbounds %struct.ipa_param_descriptor, ptr %193, i64 %194
  %196 = load i32, ptr %195, align 8, !tbaa !120
  %197 = icmp eq i32 %196, 1
  br i1 %197, label %198, label %217

198:                                              ; preds = %188
  %199 = getelementptr inbounds %struct.ipcp_lattice, ptr %195, i64 0, i32 1
  %200 = load ptr, ptr %199, align 8, !tbaa !157
  %201 = load i64, ptr %200, align 8
  %202 = and i64 %201, 65535
  %203 = icmp eq i64 %202, 121
  br i1 %203, label %204, label %217

204:                                              ; preds = %198
  %205 = getelementptr inbounds %struct.tree_exp, ptr %200, i64 0, i32 3
  %206 = load ptr, ptr %205, align 8, !tbaa !71
  store ptr %206, ptr %1, align 8, !tbaa !60
  %207 = getelementptr inbounds %struct.tree_common, ptr %206, i64 0, i32 2
  %208 = load ptr, ptr %207, align 8, !tbaa !71
  %209 = load i64, ptr %190, align 8, !tbaa !71
  %210 = getelementptr inbounds %struct.ipa_jump_func, ptr %150, i64 %147, i32 1, i32 0, i32 1
  %211 = load ptr, ptr %210, align 8, !tbaa !71
  %212 = call zeroext i8 @build_ref_for_offset(ptr noundef nonnull %1, ptr noundef %208, i64 noundef %209, ptr noundef %211, i8 noundef zeroext 0) #17
  %213 = icmp eq i8 %212, 0
  br i1 %213, label %217, label %214

214:                                              ; preds = %204
  %215 = load ptr, ptr %1, align 8, !tbaa !60
  %216 = call ptr @build_fold_addr_expr_loc(i32 noundef 0, ptr noundef %215) #17
  br label %217

217:                                              ; preds = %204, %198, %214, %188
  %218 = phi ptr [ %216, %214 ], [ %149, %188 ], [ %149, %198 ], [ null, %204 ]
  %219 = phi i32 [ %196, %214 ], [ %196, %188 ], [ 0, %198 ], [ 0, %204 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #17
  br label %220

220:                                              ; preds = %146, %184, %187, %153, %156, %217
  %221 = phi ptr [ %218, %217 ], [ %149, %156 ], [ %155, %153 ], [ %182, %187 ], [ %182, %184 ], [ %149, %146 ]
  %222 = phi i32 [ %219, %217 ], [ %163, %156 ], [ 1, %153 ], [ 0, %187 ], [ %163, %184 ], [ 0, %146 ]
  %223 = load ptr, ptr %144, align 8, !tbaa !119
  %224 = getelementptr inbounds %struct.ipa_param_descriptor, ptr %223, i64 %147
  %225 = icmp eq i32 %222, 0
  br i1 %225, label %253, label %226, !prof !191

226:                                              ; preds = %220
  %227 = load i32, ptr %224, align 8, !tbaa !120
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %253, label %229

229:                                              ; preds = %226
  %230 = icmp eq i32 %222, 2
  br i1 %230, label %231, label %234

231:                                              ; preds = %229
  %232 = getelementptr inbounds %struct.ipcp_lattice, ptr %224, i64 0, i32 1
  %233 = load ptr, ptr %232, align 8, !tbaa !157
  br label %253

234:                                              ; preds = %229
  %235 = icmp eq i32 %227, 2
  br i1 %235, label %253, label %236

236:                                              ; preds = %234
  %237 = icmp eq i32 %222, 1
  %238 = icmp eq i32 %227, 1
  %239 = and i1 %237, %238
  br i1 %239, label %241, label %240

240:                                              ; preds = %236
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 226, ptr noundef nonnull @.str.6) #17
  br label %241

241:                                              ; preds = %240, %236
  %242 = load i32, ptr %224, align 8, !tbaa !120
  %243 = icmp eq i32 %222, %242
  br i1 %243, label %244, label %249

244:                                              ; preds = %241
  %245 = getelementptr inbounds %struct.ipcp_lattice, ptr %224, i64 0, i32 1
  %246 = load ptr, ptr %245, align 8, !tbaa !157
  %247 = call i32 @operand_equal_p(ptr noundef %221, ptr noundef %246, i32 noundef 0) #17
  %248 = icmp eq i32 %247, 0
  br label %249

249:                                              ; preds = %244, %241
  %250 = phi i1 [ true, %241 ], [ %248, %244 ]
  %251 = select i1 %250, i32 0, i32 %222
  %252 = select i1 %250, ptr %148, ptr %221
  br label %253

253:                                              ; preds = %249, %234, %220, %226, %231
  %254 = phi i32 [ %227, %231 ], [ 0, %226 ], [ 0, %220 ], [ %222, %234 ], [ %251, %249 ]
  %255 = phi ptr [ %233, %231 ], [ %148, %226 ], [ %148, %220 ], [ %221, %234 ], [ %252, %249 ]
  %256 = load i32, ptr %224, align 8, !tbaa !120
  %257 = icmp eq i32 %254, %256
  br i1 %257, label %258, label %271, !prof !212

258:                                              ; preds = %253
  %259 = icmp eq i32 %254, 1
  br i1 %259, label %260, label %284, !prof !213

260:                                              ; preds = %258
  %261 = icmp eq i32 %256, 1
  br i1 %261, label %263, label %262

262:                                              ; preds = %260
  call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 226, ptr noundef nonnull @.str.6) #17
  br label %263

263:                                              ; preds = %262, %260
  %264 = load i32, ptr %224, align 8, !tbaa !120
  %265 = icmp eq i32 %254, %264
  br i1 %265, label %266, label %271

266:                                              ; preds = %263
  %267 = getelementptr inbounds %struct.ipcp_lattice, ptr %224, i64 0, i32 1
  %268 = load ptr, ptr %267, align 8, !tbaa !157
  %269 = call i32 @operand_equal_p(ptr noundef %255, ptr noundef %268, i32 noundef 0) #17
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %271, label %284

271:                                              ; preds = %263, %266, %253
  store i32 %254, ptr %224, align 8, !tbaa !120
  %272 = getelementptr inbounds %struct.ipcp_lattice, ptr %224, i64 0, i32 1
  store ptr %255, ptr %272, align 8, !tbaa !157
  %273 = load ptr, ptr %120, align 8, !tbaa !172
  %274 = load ptr, ptr @ipa_node_params_vector, align 8
  %275 = getelementptr inbounds %struct.cgraph_node, ptr %273, i64 0, i32 24
  %276 = load i32, ptr %275, align 8, !tbaa !85
  %277 = zext i32 %276 to i64
  %278 = getelementptr inbounds %struct.VEC_ipa_node_params_t_base, ptr %274, i64 0, i32 2, i64 %277, i32 5
  %279 = load i8, ptr %278, align 8
  %280 = and i8 %279, 8
  %281 = icmp eq i8 %280, 0
  br i1 %281, label %282, label %284, !prof !214

282:                                              ; preds = %271
  %283 = getelementptr inbounds %struct.VEC_ipa_node_params_t_base, ptr %274, i64 0, i32 2, i64 %277
  call void @ipa_push_func_to_list_1(ptr noundef nonnull %2, ptr noundef %273, ptr noundef nonnull %283) #17
  br label %284

284:                                              ; preds = %266, %258, %282, %271
  %285 = add nuw nsw i64 %147, 1
  %286 = icmp eq i64 %285, %145
  br i1 %286, label %287, label %146, !prof !206, !llvm.loop !215

287:                                              ; preds = %284, %139, %115, %134
  %288 = phi ptr [ %118, %134 ], [ %118, %115 ], [ %118, %139 ], [ %221, %284 ]
  %289 = phi ptr [ %117, %134 ], [ %117, %115 ], [ %117, %139 ], [ %255, %284 ]
  %290 = getelementptr inbounds %struct.cgraph_edge, ptr %116, i64 0, i32 6
  %291 = load ptr, ptr %290, align 8, !tbaa !60
  %292 = icmp eq ptr %291, null
  br i1 %292, label %97, label %115, !prof !216, !llvm.loop !217

293:                                              ; preds = %97, %94
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #17
  ret void
}

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @cgraph_function_body_availability(ptr noundef) local_unnamed_addr #3

declare ptr @cgraph_node_name(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i8 @ipcp_versionable_function_p(ptr nocapture noundef readonly %0) unnamed_addr #10 !prof !218 !PGOFuncName !219 {
  %2 = load ptr, ptr %0, align 8, !tbaa !109
  %3 = tail call zeroext i8 @tree_versionable_function_p(ptr noundef %2) #17
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %88, label %5, !prof !220

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tree_function_decl, ptr %2, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !71
  %8 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 20
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, 4194304
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %88, !prof !221

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !222
  %15 = load ptr, ptr %14, align 8, !tbaa !224
  br label %16

16:                                               ; preds = %85, %12
  %17 = phi ptr [ %15, %12 ], [ %19, %85 ]
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 6
  %19 = load ptr, ptr %18, align 8, !tbaa !226
  %20 = load ptr, ptr %6, align 8, !tbaa !71
  %21 = getelementptr inbounds %struct.function, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !222
  %23 = getelementptr inbounds %struct.control_flow_graph, ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !228
  %25 = icmp eq ptr %19, %24
  br i1 %25, label %88, label %26, !prof !229

26:                                               ; preds = %16
  %27 = getelementptr inbounds %struct.basic_block_def, ptr %19, i64 0, i32 13
  %28 = load i32, ptr %27, align 8, !tbaa !230, !noalias !231
  %29 = and i32 %28, 512
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %37, !prof !234

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.basic_block_def, ptr %19, i64 0, i32 7
  %33 = load ptr, ptr %32, align 8, !tbaa !71, !noalias !231
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35, !prof !235

35:                                               ; preds = %31
  %36 = load ptr, ptr %33, align 8, !tbaa !236, !noalias !231
  br label %37

37:                                               ; preds = %35, %31, %26
  %38 = phi ptr [ %36, %35 ], [ null, %31 ], [ null, %26 ]
  %39 = icmp eq ptr %38, null
  br i1 %39, label %42, label %40, !prof !235

40:                                               ; preds = %37
  %41 = load ptr, ptr %38, align 8, !tbaa !238, !noalias !231
  br label %42

42:                                               ; preds = %37, %40
  %43 = phi ptr [ %41, %40 ], [ null, %37 ]
  %44 = icmp eq ptr %43, null
  br i1 %44, label %85, label %45, !prof !240

45:                                               ; preds = %42, %81
  %46 = phi ptr [ %83, %81 ], [ %43, %42 ]
  %47 = load ptr, ptr %46, align 8, !tbaa !241
  %48 = load i32, ptr %47, align 8
  %49 = and i32 %48, 255
  %50 = icmp eq i32 %49, 8
  br i1 %50, label %51, label %79, !prof !243

51:                                               ; preds = %45
  %52 = zext nneg i32 %49 to i64
  %53 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %52
  %54 = load i32, ptr %53, align 4, !tbaa !75
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %55
  %57 = load i64, ptr %56, align 8, !tbaa !110
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %60, !prof !244

59:                                               ; preds = %51
  tail call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 1622, ptr noundef nonnull @.str.6) #17
  br label %60

60:                                               ; preds = %59, %51
  %61 = getelementptr inbounds i8, ptr %47, i64 %57
  %62 = getelementptr inbounds ptr, ptr %61, i64 1
  %63 = load ptr, ptr %62, align 8, !tbaa !60
  %64 = load i64, ptr %63, align 8
  %65 = and i64 %64, 65535
  %66 = icmp eq i64 %65, 121
  br i1 %66, label %67, label %70, !prof !245

67:                                               ; preds = %60
  %68 = getelementptr inbounds %struct.tree_exp, ptr %63, i64 0, i32 3
  %69 = load ptr, ptr %68, align 8, !tbaa !71
  br label %70

70:                                               ; preds = %60, %67
  %71 = phi ptr [ %69, %67 ], [ null, %60 ]
  %72 = icmp eq ptr %71, null
  br i1 %72, label %79, label %73, !prof !244

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.tree_function_decl, ptr %71, i64 0, i32 5
  %75 = load i32, ptr %74, align 8
  %76 = and i32 %75, 8191
  %77 = icmp eq i32 %76, 6561
  %78 = zext i1 %77 to i32
  br label %79

79:                                               ; preds = %73, %70, %45
  %80 = phi i32 [ 7, %45 ], [ 7, %70 ], [ %78, %73 ]
  switch i32 %80, label %85 [
    i32 0, label %81
    i32 7, label %81
  ], !prof !246

81:                                               ; preds = %79, %79
  %82 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %46, i64 0, i32 2
  %83 = load ptr, ptr %82, align 8, !tbaa !247
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %45, !prof !248, !llvm.loop !249

85:                                               ; preds = %79, %81, %42
  %86 = phi i32 [ 0, %42 ], [ %80, %79 ], [ 0, %81 ]
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %16, label %88, !prof !234, !llvm.loop !250

88:                                               ; preds = %85, %16, %5, %1
  %89 = phi i8 [ 0, %1 ], [ 0, %5 ], [ 1, %16 ], [ 0, %85 ]
  ret i8 %89
}

declare zeroext i8 @cgraph_maybe_hot_edge_p(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @optimize_function_for_speed_p(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @tree_versionable_function_p(ptr noundef) local_unnamed_addr #3

declare void @print_generic_expr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

declare ptr @ipa_init_func_list() local_unnamed_addr #3

declare ptr @ipa_pop_func_from_list(ptr noundef) local_unnamed_addr #3

declare ptr @vec_heap_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @vec_gc_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @fold_binary_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @is_gimple_ip_invariant(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @build_ref_for_offset(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare ptr @build_fold_addr_expr_loc(i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @operand_equal_p(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @ipa_push_func_to_list_1(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #3

declare ptr @fibheap_new() local_unnamed_addr #3

declare ptr @fibheap_insert(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc i64 @ipcp_estimate_cloning_cost(ptr noundef %0) unnamed_addr #11 !prof !59 {
  %2 = tail call fastcc i64 @ipcp_estimate_growth(ptr noundef %0), !range !153
  %3 = trunc i64 %2 to i32
  %4 = mul i32 %3, 1000
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = load ptr, ptr @dump_file, align 8, !tbaa !60
  %8 = icmp eq ptr %7, null
  br i1 %8, label %72, label %9

9:                                                ; preds = %6
  %10 = tail call ptr @cgraph_node_name(ptr noundef %0) #17
  %11 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %7, ptr noundef nonnull @.str.34, ptr noundef %10)
  br label %72

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !60
  %15 = icmp eq ptr %14, null
  br i1 %15, label %45, label %16

16:                                               ; preds = %12, %37
  %17 = phi ptr [ %41, %37 ], [ %14, %12 ]
  %18 = phi i64 [ %39, %37 ], [ 1, %12 ]
  %19 = phi i32 [ %38, %37 ], [ 1, %12 ]
  %20 = load ptr, ptr @dead_nodes, align 8, !tbaa !60
  %21 = getelementptr inbounds %struct.cgraph_edge, ptr %17, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !156
  %23 = getelementptr inbounds %struct.cgraph_node, ptr %22, i64 0, i32 24
  %24 = load i32, ptr %23, align 8, !tbaa !85
  %25 = tail call i32 @bitmap_bit_p(ptr noundef %20, i32 noundef %24) #17
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %16
  %28 = tail call fastcc zeroext i8 @ipcp_need_redirect_p(ptr noundef nonnull %17)
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %27
  %31 = load i64, ptr %17, align 8, !tbaa !99
  %32 = add nsw i64 %31, %18
  %33 = getelementptr inbounds %struct.cgraph_edge, ptr %17, i64 0, i32 11
  %34 = load i32, ptr %33, align 8, !tbaa !251
  %35 = add i32 %19, 1
  %36 = add i32 %35, %34
  br label %37

37:                                               ; preds = %16, %27, %30
  %38 = phi i32 [ %19, %16 ], [ %19, %27 ], [ %36, %30 ]
  %39 = phi i64 [ %18, %16 ], [ %18, %27 ], [ %32, %30 ]
  %40 = getelementptr inbounds %struct.cgraph_edge, ptr %17, i64 0, i32 4
  %41 = load ptr, ptr %40, align 8, !tbaa !60
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %16, !llvm.loop !252

43:                                               ; preds = %37
  %44 = mul nsw i64 %39, 1000
  br label %45

45:                                               ; preds = %43, %12
  %46 = phi i32 [ 1, %12 ], [ %38, %43 ]
  %47 = phi i64 [ 1000, %12 ], [ %44, %43 ]
  %48 = load i64, ptr @max_count, align 8, !tbaa !110
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %45
  %51 = sdiv i64 %47, %48
  %52 = add nsw i64 %51, 1
  %53 = sext i32 %4 to i64
  %54 = sdiv i64 %53, %52
  %55 = trunc i64 %54 to i32
  br label %60

56:                                               ; preds = %45
  %57 = sdiv i32 %46, 10
  %58 = add nsw i32 %57, 1
  %59 = sdiv i32 %4, %58
  br label %60

60:                                               ; preds = %56, %50
  %61 = phi i32 [ %55, %50 ], [ %59, %56 ]
  %62 = load ptr, ptr @dump_file, align 8, !tbaa !60
  %63 = icmp eq ptr %62, null
  br i1 %63, label %69, label %64

64:                                               ; preds = %60
  %65 = tail call ptr @cgraph_node_name(ptr noundef %0) #17
  %66 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 18, i32 1, i32 1
  %67 = load i32, ptr %66, align 8, !tbaa !105
  %68 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %62, ptr noundef nonnull @.str.35, ptr noundef %65, i32 noundef %61, i32 noundef %67, i32 noundef %46)
  br label %69

69:                                               ; preds = %64, %60
  %70 = add nsw i32 %61, 1
  %71 = sext i32 %70 to i64
  br label %72

72:                                               ; preds = %6, %9, %69
  %73 = phi i64 [ %71, %69 ], [ 0, %9 ], [ 0, %6 ]
  ret i64 %73
}

declare i32 @fibheap_empty(ptr noundef) local_unnamed_addr #3

declare ptr @fibheap_extract_min(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc i64 @ipcp_estimate_growth(ptr noundef readonly %0) unnamed_addr #11 !prof !59 {
  %2 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 27
  %3 = load i16, ptr %2, align 4
  %4 = and i16 %3, 1
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 18, i32 2
  %8 = load i8, ptr %7, align 8
  %9 = lshr i8 %8, 1
  %10 = and i8 %9, 1
  br label %11

11:                                               ; preds = %1, %6
  %12 = phi i8 [ 1, %1 ], [ %10, %6 ]
  %13 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !60
  %15 = icmp eq ptr %14, null
  br i1 %15, label %34, label %16

16:                                               ; preds = %11, %28
  %17 = phi ptr [ %32, %28 ], [ %14, %11 ]
  %18 = phi i32 [ %30, %28 ], [ 0, %11 ]
  %19 = phi i8 [ %29, %28 ], [ %12, %11 ]
  %20 = getelementptr inbounds %struct.cgraph_edge, ptr %17, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !156
  %22 = icmp eq ptr %21, %0
  br i1 %22, label %26, label %23

23:                                               ; preds = %16
  %24 = tail call fastcc zeroext i8 @ipcp_need_redirect_p(ptr noundef nonnull %17)
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23, %16
  %27 = add nsw i32 %18, 1
  br label %28

28:                                               ; preds = %23, %26
  %29 = phi i8 [ %19, %26 ], [ 1, %23 ]
  %30 = phi i32 [ %27, %26 ], [ %18, %23 ]
  %31 = getelementptr inbounds %struct.cgraph_edge, ptr %17, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !60
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %16, !llvm.loop !253

34:                                               ; preds = %28, %11
  %35 = phi i8 [ %12, %11 ], [ %29, %28 ]
  %36 = phi i32 [ 0, %11 ], [ %30, %28 ]
  %37 = icmp eq i8 %35, 0
  br i1 %37, label %82, label %38

38:                                               ; preds = %34
  %39 = load ptr, ptr @ipa_node_params_vector, align 8
  %40 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 24
  %41 = load i32, ptr %40, align 8, !tbaa !85
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.VEC_ipa_node_params_t_base, ptr %39, i64 0, i32 2, i64 %42
  %44 = load i32, ptr %43, align 8, !tbaa !116
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %74

46:                                               ; preds = %38
  %47 = getelementptr inbounds %struct.VEC_ipa_node_params_t_base, ptr %39, i64 0, i32 2, i64 %42, i32 1
  %48 = zext nneg i32 %44 to i64
  br label %49

49:                                               ; preds = %46, %66
  %50 = phi i64 [ 0, %46 ], [ %72, %66 ]
  %51 = phi i32 [ 0, %46 ], [ %71, %66 ]
  %52 = load ptr, ptr %47, align 8, !tbaa !119
  %53 = getelementptr inbounds %struct.ipa_param_descriptor, ptr %52, i64 %50
  %54 = getelementptr inbounds %struct.ipa_param_descriptor, ptr %52, i64 %50, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !132
  %56 = tail call zeroext i8 @is_gimple_reg(ptr noundef %55) #17
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %66, label %58

58:                                               ; preds = %49
  %59 = load ptr, ptr %0, align 8, !tbaa !109
  %60 = getelementptr inbounds %struct.tree_function_decl, ptr %59, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !71
  %62 = tail call ptr @gimple_default_def(ptr noundef %61, ptr noundef %55) #17
  %63 = icmp eq ptr %62, null
  %64 = zext i1 %63 to i32
  %65 = add nsw i32 %51, %64
  br label %66

66:                                               ; preds = %58, %49
  %67 = phi i32 [ %51, %49 ], [ %65, %58 ]
  %68 = load i32, ptr %53, align 8, !tbaa !120
  %69 = icmp eq i32 %68, 1
  %70 = zext i1 %69 to i32
  %71 = add nsw i32 %67, %70
  %72 = add nuw nsw i64 %50, 1
  %73 = icmp eq i64 %72, %48
  br i1 %73, label %74, label %49, !llvm.loop !254

74:                                               ; preds = %66, %38
  %75 = phi i32 [ 0, %38 ], [ %71, %66 ]
  %76 = getelementptr inbounds %struct.cgraph_node, ptr %0, i64 0, i32 18, i32 1, i32 1
  %77 = load i32, ptr %76, align 8, !tbaa !105
  %78 = mul nsw i32 %75, %36
  %79 = sub nsw i32 %77, %78
  %80 = tail call i32 @llvm.smax.i32(i32 %79, i32 0)
  %81 = zext nneg i32 %80 to i64
  br label %82

82:                                               ; preds = %74, %34
  %83 = phi i64 [ 0, %34 ], [ %81, %74 ]
  ret i64 %83
}

declare zeroext i8 @optimize_function_for_size_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @ipcp_need_redirect_p(ptr nocapture noundef readonly %0) unnamed_addr #13 !prof !59 {
  %2 = load i32, ptr @n_cloning_candidates, align 4, !tbaa !75
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %52, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr @ipa_node_params_vector, align 8
  %6 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !156
  %8 = getelementptr inbounds %struct.cgraph_node, ptr %7, i64 0, i32 24
  %9 = load i32, ptr %8, align 8, !tbaa !85
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds %struct.VEC_ipa_node_params_t_base, ptr %5, i64 0, i32 2, i64 %10, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !171
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %52

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !172
  %17 = getelementptr inbounds %struct.cgraph_node, ptr %16, i64 0, i32 24
  %18 = load i32, ptr %17, align 8, !tbaa !85
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.VEC_ipa_node_params_t_base, ptr %5, i64 0, i32 2, i64 %19, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !171
  %22 = icmp eq ptr %21, null
  %23 = select i1 %22, ptr %16, ptr %21
  %24 = getelementptr inbounds %struct.cgraph_node, ptr %23, i64 0, i32 24
  %25 = load i32, ptr %24, align 8, !tbaa !85
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.VEC_ipa_node_params_t_base, ptr %5, i64 0, i32 2, i64 %26
  %28 = load i32, ptr %27, align 8, !tbaa !116
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %52

30:                                               ; preds = %14
  %31 = getelementptr inbounds %struct.VEC_ipa_node_params_t_base, ptr %5, i64 0, i32 2, i64 %26, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !119
  %33 = load ptr, ptr @ipa_edge_args_vector, align 8
  %34 = getelementptr inbounds %struct.cgraph_edge, ptr %0, i64 0, i32 12
  %35 = zext nneg i32 %28 to i64
  br label %36

36:                                               ; preds = %30, %49
  %37 = phi i64 [ 0, %30 ], [ %50, %49 ]
  %38 = getelementptr inbounds %struct.ipa_param_descriptor, ptr %32, i64 %37
  %39 = load i32, ptr %38, align 8, !tbaa !120
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %41, label %49

41:                                               ; preds = %36
  %42 = load i32, ptr %34, align 4, !tbaa !188
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.VEC_ipa_edge_args_t_base, ptr %33, i64 0, i32 2, i64 %43, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !207
  %46 = getelementptr inbounds %struct.ipa_jump_func, ptr %45, i64 %37
  %47 = load i32, ptr %46, align 8, !tbaa !208
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %49, label %52

49:                                               ; preds = %41, %36
  %50 = add nuw nsw i64 %37, 1
  %51 = icmp eq i64 %50, %35
  br i1 %51, label %52, label %36, !llvm.loop !255

52:                                               ; preds = %41, %49, %14, %4, %1
  %53 = phi i8 [ 0, %1 ], [ 0, %4 ], [ 0, %14 ], [ 0, %49 ], [ 1, %41 ]
  ret i8 %53
}

declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @bitmap_gc_alloc_stat() local_unnamed_addr #3

declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #3

declare ptr @gimple_default_def(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @cgraph_create_virtual_clone(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @dump_function_to_file(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @fibheap_delete_node(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @fibheap_delete(ptr noundef) local_unnamed_addr #3

declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #3

declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @vec_gc_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @ggc_alloc_stat(i64 noundef) local_unnamed_addr #3

declare zeroext i8 @useless_type_conversion_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @fold_convertible_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @fold_build1_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @vec_gc_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #14

declare void @ipa_initialize_node_params(ptr noundef) local_unnamed_addr #3

declare void @cgraph_redirect_edge_callee(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @ipa_register_cgraph_hooks() local_unnamed_addr #3

declare void @ipa_count_arguments(ptr noundef) local_unnamed_addr #3

declare void @ipa_compute_jump_functions(ptr noundef) local_unnamed_addr #3

declare void @ipa_detect_param_modifications(ptr noundef) local_unnamed_addr #3

declare void @ipa_prop_write_jump_functions(ptr noundef) local_unnamed_addr #3

declare void @ipa_prop_read_jump_functions() local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #16

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!58}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57}
!35 = !{ptr @ipcp_driver, ptr @cgraph_remove_unreachable_nodes, i64 1}
!36 = !{ptr @ipcp_driver, ptr @cgraph_function_body_availability, i64 38}
!37 = !{ptr @ipcp_driver, ptr @ipcp_versionable_function_p, i64 77}
!38 = !{ptr @ipcp_driver, ptr @cgraph_maybe_hot_edge_p, i64 52744}
!39 = !{ptr @ipcp_driver, ptr @optimize_function_for_speed_p, i64 16}
!40 = !{ptr @ipcp_driver, ptr @ipcp_propagate_stage, i64 1}
!41 = !{ptr @ipcp_driver, ptr @bitmap_obstack_alloc_stat, i64 1}
!42 = !{ptr @ipcp_driver, ptr @fibheap_new, i64 1}
!43 = !{ptr @ipcp_driver, ptr @fibheap_empty, i64 2}
!44 = !{ptr @ipcp_driver, ptr @fibheap_delete, i64 1}
!45 = !{ptr @ipcp_driver, ptr @bitmap_obstack_free, i64 1}
!46 = !{ptr @ipcp_driver, ptr @free_all_ipa_structures_after_ipa_cp, i64 1}
!47 = !{ptr @ipcp_generate_summary, ptr @vec_heap_o_reserve_exact, i64 2}
!48 = !{ptr @ipcp_generate_summary, ptr @vec_gc_o_reserve_exact, i64 2}
!49 = !{ptr @ipcp_generate_summary, ptr @ipa_register_cgraph_hooks, i64 1}
!50 = !{ptr @ipcp_generate_summary, ptr @ipa_initialize_node_params, i64 39}
!51 = !{ptr @ipcp_generate_summary, ptr @ipa_detect_param_modifications, i64 39}
!52 = !{ptr @ipcp_generate_summary, ptr @ipa_count_arguments, i64 52782}
!53 = !{ptr @ipcp_generate_summary, ptr @ipa_compute_jump_functions, i64 52782}
!54 = !{ptr @ipcp_propagate_stage, ptr @ipa_init_func_list, i64 1}
!55 = !{ptr @ipcp_propagate_stage, ptr @ipa_pop_func_from_list, i64 40}
!56 = !{ptr @ipcp_propagate_stage, ptr @ipa_push_func_to_list_1, i64 1}
!57 = !{ptr @ipcp_versionable_function_p, ptr @tree_versionable_function_p, i64 77}
!58 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!59 = !{!"function_entry_count", i64 0}
!60 = !{!61, !61, i64 0}
!61 = !{!"any pointer", !62, i64 0}
!62 = !{!"omnipotent char", !63, i64 0}
!63 = !{!"Simple C/C++ TBAA"}
!64 = !{!65, !61, i64 8}
!65 = !{!"_IO_FILE", !66, i64 0, !61, i64 8, !61, i64 16, !61, i64 24, !61, i64 32, !61, i64 40, !61, i64 48, !61, i64 56, !61, i64 64, !61, i64 72, !61, i64 80, !61, i64 88, !61, i64 96, !61, i64 104, !66, i64 112, !66, i64 116, !67, i64 120, !68, i64 128, !62, i64 130, !62, i64 131, !61, i64 136, !67, i64 144, !61, i64 152, !61, i64 160, !61, i64 168, !61, i64 176, !67, i64 184, !66, i64 192, !62, i64 196}
!66 = !{!"int", !62, i64 0}
!67 = !{!"long", !62, i64 0}
!68 = !{!"short", !62, i64 0}
!69 = !{!65, !61, i64 16}
!70 = !{!"branch_weights", i32 2000, i32 1}
!71 = !{!62, !62, i64 0}
!72 = !{!65, !61, i64 40}
!73 = !{!65, !61, i64 48}
!74 = !{!65, !66, i64 0}
!75 = !{!66, !66, i64 0}
!76 = distinct !{!76, !77, !78}
!77 = !{!"llvm.loop.mustprogress"}
!78 = !{!"llvm.loop.unroll.disable"}
!79 = !{!"function_entry_count", i64 2}
!80 = !{!"ipa-cp.c;cgraph_gate_cp"}
!81 = !{!"function_entry_count", i64 1}
!82 = !{!"ipa-cp.c;ipcp_driver"}
!83 = !{!"branch_weights", i32 1, i32 0}
!84 = !{!"branch_weights", i32 1, i32 127}
!85 = !{!86, !66, i64 296}
!86 = !{!"cgraph_node", !61, i64 0, !61, i64 8, !61, i64 16, !61, i64 24, !61, i64 32, !61, i64 40, !61, i64 48, !61, i64 56, !61, i64 64, !61, i64 72, !61, i64 80, !61, i64 88, !61, i64 96, !61, i64 104, !61, i64 112, !61, i64 120, !61, i64 128, !61, i64 136, !87, i64 144, !89, i64 184, !90, i64 224, !91, i64 232, !92, i64 256, !67, i64 288, !66, i64 296, !66, i64 300, !66, i64 304, !66, i64 308, !66, i64 308, !66, i64 308, !66, i64 308, !66, i64 308, !66, i64 308, !66, i64 308, !66, i64 308, !66, i64 309, !66, i64 309}
!87 = !{!"cgraph_local_info", !61, i64 0, !88, i64 8, !66, i64 32, !66, i64 32, !66, i64 32, !66, i64 32, !66, i64 32, !66, i64 32, !66, i64 32, !66, i64 32}
!88 = !{!"inline_summary", !67, i64 0, !66, i64 8, !66, i64 12, !66, i64 16, !66, i64 20}
!89 = !{!"cgraph_global_info", !67, i64 0, !67, i64 8, !61, i64 16, !66, i64 24, !66, i64 28, !66, i64 32, !62, i64 36}
!90 = !{!"cgraph_rtl_info", !66, i64 0}
!91 = !{!"cgraph_clone_info", !61, i64 0, !61, i64 8, !61, i64 16}
!92 = !{!"cgraph_thunk_info", !67, i64 0, !67, i64 8, !61, i64 16, !62, i64 24, !62, i64 25, !62, i64 26}
!93 = !{!"branch_weights", i32 74, i32 0}
!94 = !{!"branch_weights", i32 36, i32 38}
!95 = !{!"branch_weights", i32 38, i32 36}
!96 = !{!"branch_weights", i32 0, i32 38}
!97 = !{!"branch_weights", i32 0, i32 1444}
!98 = !{!"branch_weights", i32 1, i32 151}
!99 = !{!100, !67, i64 0}
!100 = !{!"cgraph_edge", !67, i64 0, !61, i64 8, !61, i64 16, !61, i64 24, !61, i64 32, !61, i64 40, !61, i64 48, !61, i64 56, !61, i64 64, !66, i64 72, !66, i64 76, !66, i64 80, !66, i64 84, !68, i64 88, !66, i64 90, !66, i64 90, !66, i64 90}
!101 = !{!"branch_weights", i32 151, i32 210825}
!102 = distinct !{!102, !77, !78}
!103 = !{!"branch_weights", i32 15, i32 23}
!104 = !{!"branch_weights", i32 15, i32 0}
!105 = !{!86, !66, i64 160}
!106 = !{!"branch_weights", i32 7, i32 16}
!107 = !{!"branch_weights", i32 7, i32 0}
!108 = !{!"branch_weights", i32 0, i32 16}
!109 = !{!86, !61, i64 0}
!110 = !{!67, !67, i64 0}
!111 = !{!"branch_weights", i32 16, i32 0}
!112 = !{!86, !67, i64 288}
!113 = !{!"branch_weights", i32 3, i32 13}
!114 = !{!"branch_weights", i32 3, i32 0}
!115 = !{!"branch_weights", i32 13, i32 0}
!116 = !{!117, !66, i64 0}
!117 = !{!"ipa_node_params", !66, i64 0, !61, i64 8, !61, i64 16, !61, i64 24, !67, i64 32, !66, i64 40, !66, i64 40, !66, i64 40, !66, i64 40}
!118 = !{!"branch_weights", i32 39, i32 35}
!119 = !{!117, !61, i64 8}
!120 = !{!121, !66, i64 0}
!121 = !{!"ipcp_lattice", !66, i64 0, !61, i64 8}
!122 = !{!"branch_weights", i32 39, i32 0}
!123 = distinct !{!123, !77, !78}
!124 = !{!"branch_weights", i32 1, i32 147}
!125 = !{!"branch_weights", i32 147, i32 138109}
!126 = distinct !{!126, !77, !78}
!127 = !{!117, !67, i64 32}
!128 = !{!"branch_weights", i32 127, i32 9345}
!129 = distinct !{!129, !77, !78}
!130 = distinct !{!130, !77, !78}
!131 = !{!"branch_weights", i32 0, i32 39}
!132 = !{!133, !61, i64 16}
!133 = !{!"ipa_param_descriptor", !121, i64 0, !61, i64 16, !66, i64 24}
!134 = distinct !{!134, !77, !78}
!135 = distinct !{!135, !77, !78}
!136 = !{!"branch_weights", i32 0, i32 1}
!137 = !{!138, !66, i64 0}
!138 = !{!"VEC_ipa_node_params_t_base", !66, i64 0, !66, i64 4, !62, i64 8}
!139 = !{!138, !66, i64 4}
!140 = !{}
!141 = !{!142, !66, i64 0}
!142 = !{!"VEC_ipa_edge_args_t_base", !66, i64 0, !66, i64 4, !62, i64 8}
!143 = !{!142, !66, i64 4}
!144 = !{!"branch_weights", i32 35, i32 39}
!145 = distinct !{!145, !77, !78}
!146 = !{!147, !66, i64 8}
!147 = !{!"param_info", !61, i64 0, !66, i64 8, !62, i64 12, !66, i64 16, !66, i64 20, !61, i64 24}
!148 = !{!"branch_weights", i32 155, i32 1}
!149 = distinct !{!149, !77, !78}
!150 = !{i64 -2147483648, i64 2147483648}
!151 = !{!86, !61, i64 128}
!152 = distinct !{!152, !77, !78}
!153 = !{i64 0, i64 2147483648}
!154 = distinct !{!154, !77, !78}
!155 = distinct !{!155, !77, !78}
!156 = !{!100, !61, i64 8}
!157 = !{!121, !61, i64 8}
!158 = !{!159, !61, i64 0}
!159 = !{!"ipa_replace_map", !61, i64 0, !61, i64 8, !62, i64 16, !62, i64 17}
!160 = !{!159, !61, i64 8}
!161 = !{!159, !62, i64 16}
!162 = !{!159, !62, i64 17}
!163 = !{!164, !66, i64 4}
!164 = !{!"VEC_ipa_replace_map_p_base", !66, i64 0, !66, i64 4, !62, i64 8}
!165 = !{!164, !66, i64 0}
!166 = distinct !{!166, !77, !78}
!167 = distinct !{!167, !77, !78}
!168 = !{!169, !66, i64 0}
!169 = !{!"VEC_cgraph_edge_p_base", !66, i64 0, !66, i64 4, !62, i64 8}
!170 = distinct !{!170, !77, !78}
!171 = !{!117, !61, i64 24}
!172 = !{!100, !61, i64 16}
!173 = distinct !{!173, !77, !78}
!174 = distinct !{!174, !77, !78}
!175 = distinct !{!175, !77, !78}
!176 = !{!86, !61, i64 16}
!177 = !{!100, !61, i64 32}
!178 = distinct !{!178, !77, !78}
!179 = distinct !{!179, !77, !78}
!180 = distinct !{!180, !77, !78}
!181 = distinct !{!181, !77, !78}
!182 = distinct !{!182, !77, !78}
!183 = !{!"ipa-cp.c;ipcp_generate_summary"}
!184 = !{!"VP", i32 1, i64 1, i64 513, i64 1}
!185 = distinct !{!185, !77, !78}
!186 = !{!"branch_weights", i32 1, i32 155}
!187 = !{!"branch_weights", i32 52782, i32 16346}
!188 = !{!100, !66, i64 84}
!189 = !{!190, !66, i64 0}
!190 = !{!"ipa_edge_args", !66, i64 0, !61, i64 8}
!191 = !{!"branch_weights", i32 52782, i32 0}
!192 = !{!"branch_weights", i32 155, i32 276357}
!193 = distinct !{!193, !77, !78}
!194 = distinct !{!194, !77, !78}
!195 = distinct !{!195, !77, !78}
!196 = distinct !{!196, !77, !78}
!197 = distinct !{!197, !77, !78}
!198 = distinct !{!198, !77, !78}
!199 = distinct !{!199, !77, !78}
!200 = !{!"ipa-cp.c;ipcp_propagate_stage"}
!201 = !{!"branch_weights", i32 127, i32 4993}
!202 = distinct !{!202, !77, !78}
!203 = !{!"branch_weights", i32 1, i32 159}
!204 = !{!"branch_weights", i32 69129, i32 0}
!205 = !{!"branch_weights", i32 16347, i32 52782}
!206 = !{!"branch_weights", i32 52781, i32 1}
!207 = !{!190, !61, i64 8}
!208 = !{!209, !66, i64 0}
!209 = !{!"ipa_jump_func", !66, i64 0, !62, i64 8}
!210 = !{!"branch_weights", i32 0, i32 0, i32 52782, i32 0}
!211 = !{!"branch_weights", i32 0, i32 52782}
!212 = !{!"branch_weights", i32 52761, i32 21}
!213 = !{!"branch_weights", i32 0, i32 52761}
!214 = !{!"branch_weights", i32 1, i32 20}
!215 = distinct !{!215, !77, !78}
!216 = !{!"branch_weights", i32 159, i32 276357}
!217 = distinct !{!217, !77, !78}
!218 = !{!"function_entry_count", i64 77}
!219 = !{!"ipa-cp.c;ipcp_versionable_function_p"}
!220 = !{!"branch_weights", i32 0, i32 77}
!221 = !{!"branch_weights", i32 77, i32 0}
!222 = !{!223, !61, i64 8}
!223 = !{!"function", !61, i64 0, !61, i64 8, !61, i64 16, !61, i64 24, !61, i64 32, !61, i64 40, !61, i64 48, !61, i64 56, !61, i64 64, !61, i64 72, !61, i64 80, !61, i64 88, !61, i64 96, !66, i64 104, !66, i64 108, !66, i64 112, !66, i64 116, !66, i64 120, !66, i64 124, !61, i64 128, !66, i64 136, !66, i64 137, !66, i64 138, !66, i64 138, !66, i64 138, !66, i64 138, !66, i64 138, !66, i64 138, !66, i64 138, !66, i64 139, !66, i64 139, !66, i64 139, !66, i64 139, !66, i64 139, !66, i64 139, !66, i64 139}
!224 = !{!225, !61, i64 0}
!225 = !{!"control_flow_graph", !61, i64 0, !61, i64 8, !61, i64 16, !66, i64 24, !66, i64 28, !66, i64 32, !61, i64 40, !66, i64 48, !62, i64 52, !62, i64 60, !66, i64 68, !66, i64 72}
!226 = !{!227, !61, i64 56}
!227 = !{!"basic_block_def", !61, i64 0, !61, i64 8, !61, i64 16, !61, i64 24, !62, i64 32, !61, i64 48, !61, i64 56, !62, i64 64, !67, i64 72, !66, i64 80, !66, i64 84, !66, i64 88, !66, i64 92, !66, i64 96}
!228 = !{!225, !61, i64 8}
!229 = !{!"branch_weights", i32 77, i32 293139}
!230 = !{!227, !66, i64 96}
!231 = !{!232}
!232 = distinct !{!232, !233, !"gsi_start_bb: argument 0"}
!233 = distinct !{!233, !"gsi_start_bb"}
!234 = !{!"branch_weights", i32 293139, i32 0}
!235 = !{!"branch_weights", i32 0, i32 293139}
!236 = !{!237, !61, i64 0}
!237 = !{!"gimple_bb_info", !61, i64 0, !61, i64 8}
!238 = !{!239, !61, i64 0}
!239 = !{!"gimple_seq_d", !61, i64 0, !61, i64 8, !61, i64 16}
!240 = !{!"branch_weights", i32 1, i32 293138}
!241 = !{!242, !61, i64 0}
!242 = !{!"gimple_seq_node_d", !61, i64 0, !61, i64 8, !61, i64 16}
!243 = !{!"branch_weights", i32 138255, i32 572058}
!244 = !{!"branch_weights", i32 0, i32 138255}
!245 = !{!"branch_weights", i32 138255, i32 0}
!246 = !{!"branch_weights", i32 0, i32 138255, i32 572058}
!247 = !{!242, !61, i64 16}
!248 = !{!"branch_weights", i32 293138, i32 417175}
!249 = distinct !{!249, !77, !78}
!250 = distinct !{!250, !77, !78}
!251 = !{!100, !66, i64 80}
!252 = distinct !{!252, !77, !78}
!253 = distinct !{!253, !77, !78}
!254 = distinct !{!254, !77, !78}
!255 = distinct !{!255, !77, !78}

; ModuleID = 'c-pragma.c'
source_filename = "c-pragma.c"
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
%struct.visibility_flags = type { i8, [3 x i8] }
%struct.omp_pragma_def = type { ptr, i32 }
%struct.ggc_root_tab = type { ptr, i64, i64, ptr, ptr }
%struct.cl_option = type { ptr, ptr, i16, i8, i32, i32, ptr, i32, i32 }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.tree_list = type { %struct.tree_common, ptr, ptr }
%struct.tree_identifier = type { %struct.tree_common, %struct.ht_identifier }
%struct.ht_identifier = type { ptr, i32, i32 }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_string = type { %struct.tree_common, i32, [1 x i8] }
%struct.VEC_int_base = type { i32, i32, [1 x i32] }
%struct.VEC_pragma_ns_name_base = type { i32, i32, [1 x %struct.pragma_ns_name] }
%struct.pragma_ns_name = type { ptr, ptr }
%struct.VEC_pragma_handler_base = type { i32, i32, [1 x ptr] }
%struct.tree_int_cst = type { %struct.tree_common, %struct.double_int }
%struct.double_int = type { i64, i64 }
%struct.align_stack = type { i32, ptr, ptr }
%struct.opt_stack = type { ptr, ptr, ptr, ptr, ptr }
%struct.tree_optimization_option = type { %struct.tree_common, %struct.cl_optimization }
%struct.cl_optimization = type { i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.expanded_location = type { ptr, i32, i32, i8 }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@pending_weaks = internal global ptr null, align 8
@c_global_trees = external local_unnamed_addr global [55 x ptr], align 16
@pending_redefine_extname = internal global ptr null, align 8
@.str = private unnamed_addr constant [88 x i8] c"#pragma redefine_extname ignored due to conflict with previous #pragma redefine_extname\00", align 1
@tree_contains_struct = external local_unnamed_addr global [191 x [64 x i8]], align 16
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@.str.1 = private unnamed_addr constant [61 x i8] c"asm declaration ignored due to conflict with previous rename\00", align 1
@.str.2 = private unnamed_addr constant [70 x i8] c"#pragma redefine_extname ignored due to conflict with previous rename\00", align 1
@.str.3 = private unnamed_addr constant [74 x i8] c"#pragma redefine_extname ignored due to conflict with __asm__ declaration\00", align 1
@pragma_extern_prefix = internal global ptr null, align 8
@visstack = internal unnamed_addr global ptr null, align 8
@default_visibility = external local_unnamed_addr global i32, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"internal\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"hidden\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"protected\00", align 1
@.str.8 = private unnamed_addr constant [82 x i8] c"#pragma GCC visibility push() must specify default, internal, hidden or protected\00", align 1
@visibility_options = external local_unnamed_addr global %struct.visibility_flags, align 4
@valid_location_for_stdc_pragma = internal unnamed_addr global i8 0, align 1
@omp_pragmas = internal unnamed_addr constant [14 x %struct.omp_pragma_def] [%struct.omp_pragma_def { ptr @.str.30, i32 1 }, %struct.omp_pragma_def { ptr @.str.31, i32 2 }, %struct.omp_pragma_def { ptr @.str.32, i32 3 }, %struct.omp_pragma_def { ptr @.str.33, i32 4 }, %struct.omp_pragma_def { ptr @.str.34, i32 5 }, %struct.omp_pragma_def { ptr @.str.35, i32 6 }, %struct.omp_pragma_def { ptr @.str.36, i32 7 }, %struct.omp_pragma_def { ptr @.str.37, i32 8 }, %struct.omp_pragma_def { ptr @.str.38, i32 11 }, %struct.omp_pragma_def { ptr @.str.39, i32 12 }, %struct.omp_pragma_def { ptr @.str.40, i32 13 }, %struct.omp_pragma_def { ptr @.str.41, i32 14 }, %struct.omp_pragma_def { ptr @.str.42, i32 15 }, %struct.omp_pragma_def { ptr @.str.43, i32 16 }], align 16
@.str.9 = private unnamed_addr constant [4 x i8] c"omp\00", align 1
@registered_pp_pragmas = internal unnamed_addr global ptr null, align 8
@.str.10 = private unnamed_addr constant [11 x i8] c"c-pragma.c\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@registered_pragmas = internal unnamed_addr global ptr null, align 8
@parse_in = external local_unnamed_addr global ptr, align 8
@flag_openmp = external local_unnamed_addr global i32, align 4
@flag_preprocess_only = external local_unnamed_addr global i32, align 4
@.str.12 = private unnamed_addr constant [4 x i8] c"GCC\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"pch_preprocess\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"pack\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"weak\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"visibility\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"diagnostic\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"target\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"optimize\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"push_options\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"pop_options\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"reset_options\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"STDC\00", align 1
@.str.24 = private unnamed_addr constant [22 x i8] c"FLOAT_CONST_DECIMAL64\00", align 1
@.str.25 = private unnamed_addr constant [17 x i8] c"redefine_extname\00", align 1
@.str.26 = private unnamed_addr constant [14 x i8] c"extern_prefix\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"message\00", align 1
@options_stack = internal global ptr null, align 8
@alignment_stack = internal global ptr null, align 8
@gt_ggc_r_gt_c_pragma_h = dso_local local_unnamed_addr constant [6 x %struct.ggc_root_tab] [%struct.ggc_root_tab { ptr @options_stack, i64 1, i64 8, ptr @gt_ggc_mx_opt_stack, ptr @gt_pch_nx_opt_stack }, %struct.ggc_root_tab { ptr @pragma_extern_prefix, i64 1, i64 8, ptr @gt_ggc_mx_lang_tree_node, ptr @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab { ptr @pending_redefine_extname, i64 1, i64 8, ptr @gt_ggc_mx_lang_tree_node, ptr @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab { ptr @pending_weaks, i64 1, i64 8, ptr @gt_ggc_mx_lang_tree_node, ptr @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab { ptr @alignment_stack, i64 1, i64 8, ptr @gt_ggc_mx_align_stack, ptr @gt_pch_nx_align_stack }, %struct.ggc_root_tab zeroinitializer], align 16
@.str.28 = private unnamed_addr constant [6 x i8] c"alias\00", align 1
@.str.29 = private unnamed_addr constant [75 x i8] c"applying #pragma weak %q+D after first use results in unspecified behavior\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"atomic\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"barrier\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"critical\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"flush\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"for\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"master\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"ordered\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"parallel\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"section\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"sections\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"single\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"task\00", align 1
@.str.42 = private unnamed_addr constant [9 x i8] c"taskwait\00", align 1
@.str.43 = private unnamed_addr constant [14 x i8] c"threadprivate\00", align 1
@.str.44 = private unnamed_addr constant [47 x i8] c"missing %<(%> after %<#pragma pack%> - ignored\00", align 1
@initial_max_fld_align = external local_unnamed_addr global i32, align 4
@.str.45 = private unnamed_addr constant [47 x i8] c"invalid constant in %<#pragma pack%> - ignored\00", align 1
@.str.46 = private unnamed_addr constant [37 x i8] c"malformed %<#pragma pack%> - ignored\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"push\00", align 1
@.str.48 = private unnamed_addr constant [4 x i8] c"pop\00", align 1
@.str.49 = private unnamed_addr constant [50 x i8] c"unknown action %qE for %<#pragma pack%> - ignored\00", align 1
@.str.50 = private unnamed_addr constant [56 x i8] c"malformed %<#pragma pack(push[, id][, <n>])%> - ignored\00", align 1
@.str.51 = private unnamed_addr constant [48 x i8] c"malformed %<#pragma pack(pop[, id])%> - ignored\00", align 1
@.str.52 = private unnamed_addr constant [32 x i8] c"junk at end of %<#pragma pack%>\00", align 1
@flag_pack_struct = external local_unnamed_addr global i32, align 4
@.str.53 = private unnamed_addr constant [56 x i8] c"#pragma pack has no effect with -fpack-struct - ignored\00", align 1
@maximum_field_alignment = external local_unnamed_addr global i32, align 4
@.str.54 = private unnamed_addr constant [47 x i8] c"alignment must be a small power of two, not %d\00", align 1
@default_alignment = internal unnamed_addr global i32 0, align 4
@.str.55 = private unnamed_addr constant [68 x i8] c"#pragma pack (pop) encountered without matching #pragma pack (push)\00", align 1
@.str.56 = private unnamed_addr constant [74 x i8] c"#pragma pack(pop, %E) encountered without matching #pragma pack(push, %E)\00", align 1
@.str.57 = private unnamed_addr constant [32 x i8] c"malformed #pragma weak, ignored\00", align 1
@.str.58 = private unnamed_addr constant [32 x i8] c"junk at end of %<#pragma weak%>\00", align 1
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@.str.59 = private unnamed_addr constant [55 x i8] c"#pragma GCC visibility must be followed by push or pop\00", align 1
@.str.60 = private unnamed_addr constant [52 x i8] c"no matching push for %<#pragma GCC visibility pop%>\00", align 1
@.str.61 = private unnamed_addr constant [62 x i8] c"missing %<(%> after %<#pragma GCC visibility push%> - ignored\00", align 1
@.str.62 = private unnamed_addr constant [38 x i8] c"malformed #pragma GCC visibility push\00", align 1
@.str.63 = private unnamed_addr constant [42 x i8] c"junk at end of %<#pragma GCC visibility%>\00", align 1
@cfun = external local_unnamed_addr global ptr, align 8
@.str.64 = private unnamed_addr constant [52 x i8] c"#pragma GCC diagnostic not allowed inside functions\00", align 1
@.str.65 = private unnamed_addr constant [65 x i8] c"missing [error|warning|ignored] after %<#pragma GCC diagnostic%>\00", align 1
@.str.66 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.67 = private unnamed_addr constant [8 x i8] c"warning\00", align 1
@.str.68 = private unnamed_addr constant [8 x i8] c"ignored\00", align 1
@.str.69 = private unnamed_addr constant [66 x i8] c"expected [error|warning|ignored] after %<#pragma GCC diagnostic%>\00", align 1
@.str.70 = private unnamed_addr constant [53 x i8] c"missing option after %<#pragma GCC diagnostic%> kind\00", align 1
@cl_options_count = external local_unnamed_addr constant i32, align 4
@cl_options = external local_unnamed_addr constant [0 x %struct.cl_option], align 8
@global_dc = external local_unnamed_addr global ptr, align 8
@.str.71 = private unnamed_addr constant [53 x i8] c"unknown option after %<#pragma GCC diagnostic%> kind\00", align 1
@.str.72 = private unnamed_addr constant [51 x i8] c"#pragma GCC option is not allowed inside functions\00", align 1
@.str.73 = private unnamed_addr constant [39 x i8] c"%<#pragma GCC option%> is not a string\00", align 1
@.str.74 = private unnamed_addr constant [74 x i8] c"%<#pragma GCC target (string [,string]...)%> does not have a final %<)%>.\00", align 1
@.str.75 = private unnamed_addr constant [45 x i8] c"#pragma GCC target string... is badly formed\00", align 1
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@.str.76 = private unnamed_addr constant [53 x i8] c"#pragma GCC optimize is not allowed inside functions\00", align 1
@.str.77 = private unnamed_addr constant [51 x i8] c"%<#pragma GCC optimize%> is not a string or number\00", align 1
@.str.78 = private unnamed_addr constant [76 x i8] c"%<#pragma GCC optimize (string [,string]...)%> does not have a final %<)%>.\00", align 1
@.str.79 = private unnamed_addr constant [47 x i8] c"#pragma GCC optimize string... is badly formed\00", align 1
@.str.80 = private unnamed_addr constant [40 x i8] c"junk at end of %<#pragma push_options%>\00", align 1
@.str.81 = private unnamed_addr constant [39 x i8] c"junk at end of %<#pragma pop_options%>\00", align 1
@.str.82 = private unnamed_addr constant [81 x i8] c"%<#pragma GCC pop_options%> without a corresponding %<#pragma GCC push_options%>\00", align 1
@.str.83 = private unnamed_addr constant [41 x i8] c"junk at end of %<#pragma reset_options%>\00", align 1
@c_language = external local_unnamed_addr global i32, align 4
@warn_unknown_pragmas = external local_unnamed_addr global i32, align 4
@input_location = external local_unnamed_addr global i32, align 4
@.str.84 = private unnamed_addr constant [64 x i8] c"%<#pragma STDC FLOAT_CONST_DECIMAL64%> is not supported for C++\00", align 1
@.str.85 = private unnamed_addr constant [71 x i8] c"%<#pragma STDC FLOAT_CONST_DECIMAL64%> is not supported on this target\00", align 1
@.str.86 = private unnamed_addr constant [62 x i8] c"ISO C does not support %<#pragma STDC FLOAT_CONST_DECIMAL64%>\00", align 1
@.str.87 = private unnamed_addr constant [27 x i8] c"STDC FLOAT_CONST_DECIMAL64\00", align 1
@.str.88 = private unnamed_addr constant [44 x i8] c"invalid location for %<pragma %s%>, ignored\00", align 1
@.str.89 = private unnamed_addr constant [34 x i8] c"malformed %<#pragma %s%>, ignored\00", align 1
@.str.90 = private unnamed_addr constant [3 x i8] c"ON\00", align 1
@.str.91 = private unnamed_addr constant [4 x i8] c"OFF\00", align 1
@.str.92 = private unnamed_addr constant [8 x i8] c"DEFAULT\00", align 1
@.str.93 = private unnamed_addr constant [30 x i8] c"junk at end of %<#pragma %s%>\00", align 1
@.str.94 = private unnamed_addr constant [44 x i8] c"malformed #pragma redefine_extname, ignored\00", align 1
@.str.95 = private unnamed_addr constant [44 x i8] c"junk at end of %<#pragma redefine_extname%>\00", align 1
@.str.96 = private unnamed_addr constant [41 x i8] c"malformed #pragma extern_prefix, ignored\00", align 1
@.str.97 = private unnamed_addr constant [41 x i8] c"junk at end of %<#pragma extern_prefix%>\00", align 1
@.str.98 = private unnamed_addr constant [51 x i8] c"#pragma extern_prefix not supported on this target\00", align 1
@.str.99 = private unnamed_addr constant [44 x i8] c"expected a string after %<#pragma message%>\00", align 1
@.str.100 = private unnamed_addr constant [39 x i8] c"malformed %<#pragma message%>, ignored\00", align 1
@.str.101 = private unnamed_addr constant [35 x i8] c"junk at end of %<#pragma message%>\00", align 1
@.str.102 = private unnamed_addr constant [20 x i8] c"#pragma message: %s\00", align 1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !43 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !44
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !43 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !44
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !43 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !48
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !53
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !54

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #17
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !48
  %11 = load i8, ptr %3, align 1, !tbaa !55
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !43 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !48
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !53
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !54

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #17
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !48
  %11 = load i8, ptr %3, align 1, !tbaa !55
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !43 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !44
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !48
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !53
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !54

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #17
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !48
  %11 = load i8, ptr %3, align 1, !tbaa !55
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !43 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !44
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !43 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !56
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !57
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !54

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #17
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !56
  store i8 %12, ptr %4, align 1, !tbaa !55
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !43 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !56
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !57
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !54

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #17
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !56
  store i8 %12, ptr %4, align 1, !tbaa !55
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !43 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !44
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !56
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !57
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !54

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #17
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !56
  store i8 %12, ptr %4, align 1, !tbaa !55
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !43 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #17
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !43 {
  %2 = load i32, ptr %0, align 8, !tbaa !58
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !43 {
  %2 = load i32, ptr %0, align 8, !tbaa !58
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !43 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #17
  %6 = load ptr, ptr %5, align 8, !tbaa !44
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !59
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !43 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #17
  %6 = load ptr, ptr %5, align 8, !tbaa !44
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !59
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !43 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !43 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !43 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !43 {
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
  br i1 %23, label %7, label %24, !llvm.loop !60

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !43 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local void @maybe_apply_pragma_weak(ptr noundef %0) local_unnamed_addr #9 !prof !63 {
  %2 = load ptr, ptr @pending_weaks, align 8, !tbaa !44
  %3 = icmp eq ptr %2, null
  br i1 %3, label %42, label %4, !prof !64

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %6 = load i64, ptr %5, align 8
  %7 = and i64 %6, 33554432
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %4
  %10 = load i64, ptr %0, align 8
  %11 = and i64 %10, 134217728
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %42, label %13

13:                                               ; preds = %9, %4
  %14 = load i64, ptr %0, align 8
  %15 = trunc i64 %14 to i16
  switch i16 %15, label %42 [
    i16 29, label %16
    i16 32, label %16
  ]

16:                                               ; preds = %13, %13
  %17 = tail call ptr @decl_assembler_name(ptr noundef nonnull %0) #17
  %18 = load ptr, ptr @pending_weaks, align 8, !tbaa !44
  %19 = icmp eq ptr %18, null
  br i1 %19, label %42, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.tree_list, ptr %18, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !55
  %23 = icmp eq ptr %17, %22
  br i1 %23, label %30, label %37

24:                                               ; preds = %37
  %25 = getelementptr inbounds %struct.tree_list, ptr %40, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !55
  %27 = icmp eq ptr %17, %26
  br i1 %27, label %28, label %37, !llvm.loop !65

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.tree_common, ptr %38, i64 0, i32 1
  br label %30

30:                                               ; preds = %28, %20
  %31 = phi ptr [ %18, %20 ], [ %40, %28 ]
  %32 = phi ptr [ @pending_weaks, %20 ], [ %29, %28 ]
  %33 = getelementptr inbounds %struct.tree_list, ptr %31, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !55
  tail call fastcc void @apply_pragma_weak(ptr noundef nonnull %0, ptr noundef %34)
  %35 = getelementptr inbounds %struct.tree_common, ptr %31, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !55
  store ptr %36, ptr %32, align 8, !tbaa !44
  br label %42

37:                                               ; preds = %20, %24
  %38 = phi ptr [ %40, %24 ], [ %18, %20 ]
  %39 = getelementptr inbounds %struct.tree_common, ptr %38, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !44
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %24, !llvm.loop !65

42:                                               ; preds = %37, %16, %30, %13, %9, %1
  ret void
}

declare ptr @decl_assembler_name(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @apply_pragma_weak(ptr noundef %0, ptr noundef readonly %1) unnamed_addr #10 !prof !43 {
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !44
  %4 = icmp eq ptr %1, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.tree_identifier, ptr %1, i64 0, i32 1
  %7 = getelementptr inbounds %struct.tree_identifier, ptr %1, i64 0, i32 1, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !55
  %9 = load ptr, ptr %6, align 8, !tbaa !55
  %10 = tail call ptr @build_string(i32 noundef %8, ptr noundef %9) #17
  %11 = tail call ptr @get_identifier(ptr noundef nonnull @.str.28) #17
  %12 = tail call ptr @build_tree_list_stat(ptr noundef null, ptr noundef %10) #17
  %13 = tail call ptr @build_tree_list_stat(ptr noundef %11, ptr noundef %12) #17
  %14 = call ptr @decl_attributes(ptr noundef nonnull %3, ptr noundef %13, i32 noundef 0) #17
  br label %15

15:                                               ; preds = %5, %2
  %16 = load ptr, ptr %3, align 8, !tbaa !44
  %17 = getelementptr inbounds %struct.tree_decl_common, ptr %16, i64 0, i32 2
  %18 = load i64, ptr %17, align 8
  %19 = and i64 %18, 33554432
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %38, label %21

21:                                               ; preds = %15
  %22 = load i64, ptr %16, align 8
  %23 = and i64 %22, 16777216
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %38, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %16, i64 0, i32 4
  %27 = load i32, ptr %26, align 8
  %28 = and i32 %27, 128
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %25
  %31 = call ptr @decl_assembler_name(ptr noundef nonnull %16) #17
  %32 = load i64, ptr %31, align 8
  %33 = and i64 %32, 67108864
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = load ptr, ptr %3, align 8, !tbaa !44
  %37 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 165, ptr noundef nonnull @.str.29, ptr noundef %36) #17
  br label %38

38:                                               ; preds = %35, %30, %25, %21, %15
  %39 = load ptr, ptr %3, align 8, !tbaa !44
  call void @declare_weak(ptr noundef %39) #17
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @maybe_apply_pending_pragma_weaks() local_unnamed_addr #10 !prof !66 {
  %1 = load ptr, ptr @pending_weaks, align 8, !tbaa !44
  %2 = icmp eq ptr %1, null
  br i1 %2, label %26, label %3, !prof !67

3:                                                ; preds = %0, %23
  %4 = phi ptr [ %24, %23 ], [ %1, %0 ]
  %5 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 1
  %6 = getelementptr inbounds %struct.tree_list, ptr %4, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !55
  %8 = icmp eq ptr %7, null
  br i1 %8, label %23, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.tree_list, ptr %4, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !55
  %12 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 48), align 16, !tbaa !44
  %13 = tail call ptr @build_decl_stat(i32 noundef 0, i32 noundef 29, ptr noundef %11, ptr noundef %12) #17
  %14 = getelementptr inbounds %struct.tree_decl_common, ptr %13, i64 0, i32 2
  %15 = load i64, ptr %14, align 8
  %16 = or i64 %15, 4096
  store i64 %16, ptr %14, align 8
  %17 = load i64, ptr %13, align 8
  %18 = or i64 %17, 134217728
  store i64 %18, ptr %13, align 8
  %19 = or i64 %15, 33558528
  store i64 %19, ptr %14, align 8
  %20 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %13, i64 0, i32 4
  %21 = load i32, ptr %20, align 8
  %22 = or i32 %21, 128
  store i32 %22, ptr %20, align 8
  tail call void @assemble_alias(ptr noundef nonnull %13, ptr noundef nonnull %7) #17
  br label %23

23:                                               ; preds = %3, %9
  %24 = load ptr, ptr %5, align 8, !tbaa !44
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %3, !prof !67, !llvm.loop !68

26:                                               ; preds = %23, %0
  ret void
}

declare ptr @build_decl_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @assemble_alias(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @add_to_renaming_pragma_list(ptr noundef %0, ptr noundef %1) local_unnamed_addr #10 !prof !43 {
  %3 = load ptr, ptr @pending_redefine_extname, align 8, !tbaa !44
  %4 = tail call ptr @purpose_member(ptr noundef %0, ptr noundef %3) #17
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.tree_list, ptr %4, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !55
  %9 = icmp eq ptr %8, %1
  br i1 %9, label %15, label %10

10:                                               ; preds = %6
  %11 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 165, ptr noundef nonnull @.str) #17
  br label %15

12:                                               ; preds = %2
  %13 = load ptr, ptr @pending_redefine_extname, align 8, !tbaa !44
  %14 = tail call ptr @tree_cons_stat(ptr noundef %0, ptr noundef %1, ptr noundef %13) #17
  store ptr %14, ptr @pending_redefine_extname, align 8, !tbaa !44
  br label %15

15:                                               ; preds = %6, %10, %12
  ret void
}

declare ptr @purpose_member(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @warning(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare ptr @tree_cons_stat(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @maybe_apply_renaming_pragma(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #9 !prof !69 {
  %3 = load i64, ptr %0, align 8
  %4 = trunc i64 %3 to i16
  switch i16 %4, label %140 [
    i16 29, label %5
    i16 32, label %5
  ], !prof !70

5:                                                ; preds = %2, %2
  %6 = and i64 %3, 134217728
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %13, !prof !71

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %10 = load i64, ptr %9, align 8
  %11 = and i64 %10, 33554432
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %140, label %13, !prof !72

13:                                               ; preds = %8, %5
  %14 = tail call zeroext i8 @has_c_linkage(ptr noundef nonnull %0) #17
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %140, label %16, !prof !73

16:                                               ; preds = %13
  %17 = load i64, ptr %0, align 8
  %18 = and i64 %17, 65535
  %19 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %18, i64 13
  %20 = load i8, ptr %19, align 1, !tbaa !55
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %73, label %22, !prof !73

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !55
  %25 = icmp eq ptr %24, null
  br i1 %25, label %73, label %26, !prof !74

26:                                               ; preds = %22
  %27 = tail call ptr @decl_assembler_name(ptr noundef nonnull %0) #17
  %28 = getelementptr inbounds %struct.tree_identifier, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !55
  %30 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 52), align 8, !tbaa !75
  %31 = tail call ptr %30(ptr noundef %29) #17
  %32 = icmp eq ptr %1, null
  br i1 %32, label %39, label %33

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.tree_string, ptr %1, i64 0, i32 2
  %35 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %34, ptr noundef nonnull dereferenceable(1) %31)
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %33
  %38 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 165, ptr noundef nonnull @.str.1) #17
  br label %39

39:                                               ; preds = %37, %33, %26
  %40 = load ptr, ptr @pending_redefine_extname, align 8, !tbaa !44
  %41 = icmp eq ptr %40, null
  br i1 %41, label %140, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !55
  %45 = getelementptr inbounds %struct.tree_list, ptr %40, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !55
  %47 = icmp eq ptr %44, %46
  br i1 %47, label %54, label %68

48:                                               ; preds = %68
  %49 = getelementptr inbounds %struct.tree_list, ptr %71, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !55
  %51 = icmp eq ptr %44, %50
  br i1 %51, label %52, label %68, !llvm.loop !87

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.tree_common, ptr %69, i64 0, i32 1
  br label %54

54:                                               ; preds = %52, %42
  %55 = phi ptr [ %40, %42 ], [ %71, %52 ]
  %56 = phi ptr [ @pending_redefine_extname, %42 ], [ %53, %52 ]
  %57 = getelementptr inbounds %struct.tree_list, ptr %55, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !55
  %59 = getelementptr inbounds %struct.tree_identifier, ptr %58, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !55
  %61 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %60, ptr noundef nonnull dereferenceable(1) %31)
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %54
  %64 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 165, ptr noundef nonnull @.str.2) #17
  br label %65

65:                                               ; preds = %63, %54
  %66 = getelementptr inbounds %struct.tree_common, ptr %55, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !55
  store ptr %67, ptr %56, align 8, !tbaa !44
  br label %140

68:                                               ; preds = %42, %48
  %69 = phi ptr [ %71, %48 ], [ %40, %42 ]
  %70 = getelementptr inbounds %struct.tree_common, ptr %69, i64 0, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !44
  %72 = icmp eq ptr %71, null
  br i1 %72, label %140, label %48, !llvm.loop !87

73:                                               ; preds = %22, %16
  %74 = load ptr, ptr @pending_redefine_extname, align 8, !tbaa !44
  %75 = icmp eq ptr %74, null
  br i1 %75, label %115, label %76, !prof !67

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 3
  %78 = load ptr, ptr %77, align 8, !tbaa !55
  %79 = getelementptr inbounds %struct.tree_list, ptr %74, i64 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !55
  %81 = icmp eq ptr %78, %80
  br i1 %81, label %88, label %110

82:                                               ; preds = %110
  %83 = getelementptr inbounds %struct.tree_list, ptr %113, i64 0, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !55
  %85 = icmp eq ptr %78, %84
  br i1 %85, label %86, label %110, !llvm.loop !88

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.tree_common, ptr %111, i64 0, i32 1
  br label %88

88:                                               ; preds = %86, %76
  %89 = phi ptr [ %74, %76 ], [ %113, %86 ]
  %90 = phi ptr [ @pending_redefine_extname, %76 ], [ %87, %86 ]
  %91 = getelementptr inbounds %struct.tree_list, ptr %89, i64 0, i32 2
  %92 = load ptr, ptr %91, align 8, !tbaa !55
  %93 = getelementptr inbounds %struct.tree_common, ptr %89, i64 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !55
  store ptr %94, ptr %90, align 8, !tbaa !44
  %95 = icmp eq ptr %1, null
  br i1 %95, label %104, label %96

96:                                               ; preds = %88
  %97 = getelementptr inbounds %struct.tree_string, ptr %1, i64 0, i32 2
  %98 = getelementptr inbounds %struct.tree_identifier, ptr %92, i64 0, i32 1
  %99 = load ptr, ptr %98, align 8, !tbaa !55
  %100 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %97, ptr noundef nonnull dereferenceable(1) %99)
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %140, label %102

102:                                              ; preds = %96
  %103 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 165, ptr noundef nonnull @.str.3) #17
  br label %140

104:                                              ; preds = %88
  %105 = getelementptr inbounds %struct.tree_identifier, ptr %92, i64 0, i32 1
  %106 = getelementptr inbounds %struct.tree_identifier, ptr %92, i64 0, i32 1, i32 1
  %107 = load i32, ptr %106, align 8, !tbaa !55
  %108 = load ptr, ptr %105, align 8, !tbaa !55
  %109 = tail call ptr @build_string(i32 noundef %107, ptr noundef %108) #17
  br label %140

110:                                              ; preds = %76, %82
  %111 = phi ptr [ %113, %82 ], [ %74, %76 ]
  %112 = getelementptr inbounds %struct.tree_common, ptr %111, i64 0, i32 1
  %113 = load ptr, ptr %112, align 8, !tbaa !44
  %114 = icmp eq ptr %113, null
  br i1 %114, label %115, label %82, !prof !67, !llvm.loop !88

115:                                              ; preds = %110, %73
  %116 = icmp eq ptr %1, null
  br i1 %116, label %117, label %140, !prof !89

117:                                              ; preds = %115
  %118 = load ptr, ptr @pragma_extern_prefix, align 8, !tbaa !44
  %119 = icmp eq ptr %118, null
  br i1 %119, label %140, label %120, !prof !90

120:                                              ; preds = %117
  %121 = getelementptr inbounds %struct.tree_string, ptr %118, i64 0, i32 2
  %122 = getelementptr inbounds %struct.tree_string, ptr %118, i64 0, i32 1
  %123 = load i32, ptr %122, align 8, !tbaa !55
  %124 = add nsw i32 %123, -1
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 3
  %127 = load ptr, ptr %126, align 8, !tbaa !55
  %128 = getelementptr inbounds %struct.tree_identifier, ptr %127, i64 0, i32 1
  %129 = load ptr, ptr %128, align 8, !tbaa !55
  %130 = getelementptr inbounds %struct.tree_identifier, ptr %127, i64 0, i32 1, i32 1
  %131 = load i32, ptr %130, align 8, !tbaa !55
  %132 = zext i32 %131 to i64
  %133 = add nsw i64 %132, %125
  %134 = add nsw i64 %133, 1
  %135 = alloca i8, i64 %134, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %135, ptr nonnull align 1 %121, i64 %125, i1 false)
  %136 = getelementptr inbounds i8, ptr %135, i64 %125
  %137 = add nuw nsw i64 %132, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %136, ptr noundef nonnull align 1 dereferenceable(1) %129, i64 %137, i1 false)
  %138 = trunc i64 %133 to i32
  %139 = call ptr @build_string(i32 noundef %138, ptr noundef nonnull %135) #17
  br label %140

140:                                              ; preds = %68, %39, %13, %117, %115, %104, %102, %96, %65, %8, %2, %120
  %141 = phi ptr [ %139, %120 ], [ %1, %2 ], [ %1, %8 ], [ null, %65 ], [ %109, %104 ], [ %1, %102 ], [ %1, %96 ], [ %1, %115 ], [ null, %117 ], [ %1, %13 ], [ null, %39 ], [ null, %68 ]
  ret ptr %141
}

declare zeroext i8 @has_c_linkage(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #11

declare ptr @build_string(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

; Function Attrs: cold nounwind uwtable
define dso_local void @push_visibility(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #10 !prof !43 {
  %3 = load i32, ptr @default_visibility, align 4, !tbaa !59
  %4 = shl i32 %1, 8
  %5 = or i32 %3, %4
  %6 = load ptr, ptr @visstack, align 8, !tbaa !44
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.VEC_int_base, ptr %6, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !91
  %11 = load i32, ptr %6, align 4, !tbaa !93
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %2, %8
  %14 = tail call ptr @vec_heap_o_reserve(ptr noundef %6, i32 noundef 1, i64 noundef 8, i64 noundef 4) #17
  store ptr %14, ptr @visstack, align 8, !tbaa !44
  br label %15

15:                                               ; preds = %8, %13
  %16 = load ptr, ptr @visstack, align 8, !tbaa !44
  %17 = load i32, ptr %16, align 4, !tbaa !93
  %18 = add i32 %17, 1
  store i32 %18, ptr %16, align 4, !tbaa !93
  %19 = zext i32 %17 to i64
  %20 = getelementptr inbounds %struct.VEC_int_base, ptr %16, i64 0, i32 2, i64 %19
  store i32 %5, ptr %20, align 4, !tbaa !59
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(8) @.str.4)
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %34, label %23

23:                                               ; preds = %15
  %24 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(9) @.str.5)
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %34, label %26

26:                                               ; preds = %23
  %27 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(7) @.str.6)
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %26
  %30 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(10) @.str.7)
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %29
  %33 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 165, ptr noundef nonnull @.str.8) #17
  br label %38

34:                                               ; preds = %29, %26, %23, %15
  %35 = phi i32 [ 0, %15 ], [ 3, %23 ], [ 2, %26 ], [ 1, %29 ]
  store i32 %35, ptr @default_visibility, align 4, !tbaa !59
  %36 = load i8, ptr @visibility_options, align 4
  %37 = or i8 %36, 1
  store i8 %37, ptr @visibility_options, align 4
  br label %38

38:                                               ; preds = %34, %32
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @pop_visibility(i32 noundef %0) local_unnamed_addr #13 !prof !43 {
  %2 = load ptr, ptr @visstack, align 8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %23, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %2, align 4, !tbaa !93
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %23, label %7

7:                                                ; preds = %4
  %8 = load i32, ptr %2, align 4, !tbaa !93
  %9 = add i32 %8, -1
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds %struct.VEC_int_base, ptr %2, i64 0, i32 2, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !59
  %13 = ashr i32 %12, 8
  %14 = icmp eq i32 %13, %0
  br i1 %14, label %15, label %23

15:                                               ; preds = %7
  store i32 %9, ptr %2, align 4, !tbaa !93
  %16 = and i32 %12, 255
  store i32 %16, ptr @default_visibility, align 4, !tbaa !59
  %17 = load i32, ptr %2, align 4, !tbaa !93
  %18 = icmp ne i32 %17, 0
  %19 = zext i1 %18 to i8
  %20 = load i8, ptr @visibility_options, align 4
  %21 = and i8 %20, -2
  %22 = or disjoint i8 %21, %19
  store i8 %22, ptr @visibility_options, align 4
  br label %23

23:                                               ; preds = %1, %7, %4, %15
  %24 = phi i8 [ 1, %15 ], [ 0, %4 ], [ 0, %7 ], [ 0, %1 ]
  ret i8 %24
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @mark_valid_location_for_stdc_pragma(i8 noundef zeroext %0) local_unnamed_addr #14 !prof !94 {
  store i8 %0, ptr @valid_location_for_stdc_pragma, align 1, !tbaa !55
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @valid_location_for_stdc_pragma_p() local_unnamed_addr #15 !prof !95 {
  %1 = load i8, ptr @valid_location_for_stdc_pragma, align 1, !tbaa !55
  ret i8 %1
}

; Function Attrs: cold nounwind uwtable
define dso_local void @c_pp_lookup_pragma(i32 noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #10 !prof !43 {
  br label %7

4:                                                ; preds = %7
  %5 = add nuw nsw i64 %8, 1
  %6 = icmp eq i64 %5, 14
  br i1 %6, label %15, label %7, !llvm.loop !96

7:                                                ; preds = %3, %4
  %8 = phi i64 [ 0, %3 ], [ %5, %4 ]
  %9 = getelementptr inbounds [14 x %struct.omp_pragma_def], ptr @omp_pragmas, i64 0, i64 %8, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !97
  %11 = icmp eq i32 %10, %0
  br i1 %11, label %12, label %4

12:                                               ; preds = %7
  %13 = getelementptr inbounds [14 x %struct.omp_pragma_def], ptr @omp_pragmas, i64 0, i64 %8
  store ptr @.str.9, ptr %1, align 8, !tbaa !44
  %14 = load ptr, ptr %13, align 16, !tbaa !99
  store ptr %14, ptr %2, align 8, !tbaa !44
  br label %34

15:                                               ; preds = %4
  %16 = icmp ugt i32 %0, 17
  br i1 %16, label %17, label %33

17:                                               ; preds = %15
  %18 = load ptr, ptr @registered_pp_pragmas, align 8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = load i32, ptr %18, align 8, !tbaa !100
  %22 = add i32 %21, 18
  br label %23

23:                                               ; preds = %17, %20
  %24 = phi i32 [ %22, %20 ], [ 18, %17 ]
  %25 = icmp ugt i32 %24, %0
  br i1 %25, label %26, label %33

26:                                               ; preds = %23
  %27 = add i32 %0, -18
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.VEC_pragma_ns_name_base, ptr %18, i64 0, i32 2, i64 %28
  %30 = load ptr, ptr %29, align 8, !tbaa !102
  store ptr %30, ptr %1, align 8, !tbaa !44
  %31 = getelementptr inbounds %struct.VEC_pragma_ns_name_base, ptr %18, i64 0, i32 2, i64 %28, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !104
  store ptr %32, ptr %2, align 8, !tbaa !44
  br label %34

33:                                               ; preds = %23, %15
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1198, ptr noundef nonnull @.str.11) #17
  br label %34

34:                                               ; preds = %33, %26, %12
  ret void
}

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @c_register_pragma(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !prof !43 {
  tail call fastcc void @c_register_pragma_1(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext 0)
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @c_register_pragma_1(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) unnamed_addr #10 !prof !105 !PGOFuncName !106 {
  %5 = load i32, ptr @flag_preprocess_only, align 4, !tbaa !59
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %29, label %7, !prof !107

7:                                                ; preds = %4
  %8 = icmp eq i8 %3, 0
  br i1 %8, label %27, label %9

9:                                                ; preds = %7
  %10 = load ptr, ptr @registered_pp_pragmas, align 8, !tbaa !44
  %11 = icmp eq ptr %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.VEC_pragma_ns_name_base, ptr %10, i64 0, i32 1
  %14 = load i32, ptr %13, align 4, !tbaa !108
  %15 = load i32, ptr %10, align 8, !tbaa !100
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %9, %12
  %18 = tail call ptr @vec_heap_o_reserve(ptr noundef %10, i32 noundef 1, i64 noundef 8, i64 noundef 16) #17
  store ptr %18, ptr @registered_pp_pragmas, align 8, !tbaa !44
  br label %19

19:                                               ; preds = %12, %17
  %20 = load ptr, ptr @registered_pp_pragmas, align 8
  %21 = load i32, ptr %20, align 8, !tbaa !100
  %22 = add i32 %21, 1
  store i32 %22, ptr %20, align 8, !tbaa !100
  %23 = zext i32 %21 to i64
  %24 = getelementptr inbounds %struct.VEC_pragma_ns_name_base, ptr %20, i64 0, i32 2, i64 %23
  store ptr %0, ptr %24, align 8, !tbaa.struct !109
  %25 = getelementptr inbounds i8, ptr %24, i64 8
  store ptr %1, ptr %25, align 8, !tbaa.struct !110
  %26 = add i32 %21, 18
  br label %27

27:                                               ; preds = %7, %19
  %28 = phi i32 [ %26, %19 ], [ undef, %7 ]
  br i1 %8, label %51, label %48

29:                                               ; preds = %4
  %30 = load ptr, ptr @registered_pragmas, align 8, !tbaa !44
  %31 = icmp eq ptr %30, null
  br i1 %31, label %37, label %32, !prof !111

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.VEC_pragma_handler_base, ptr %30, i64 0, i32 1
  %34 = load i32, ptr %33, align 4, !tbaa !112
  %35 = load i32, ptr %30, align 8, !tbaa !114
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %39, !prof !115

37:                                               ; preds = %29, %32
  %38 = tail call ptr @vec_heap_o_reserve(ptr noundef %30, i32 noundef 1, i64 noundef 8, i64 noundef 8) #17
  store ptr %38, ptr @registered_pragmas, align 8, !tbaa !44
  br label %39

39:                                               ; preds = %32, %37
  %40 = load ptr, ptr @registered_pragmas, align 8
  %41 = load i32, ptr %40, align 8, !tbaa !114
  %42 = add i32 %41, 1
  store i32 %42, ptr %40, align 8, !tbaa !114
  %43 = zext i32 %41 to i64
  %44 = getelementptr inbounds %struct.VEC_pragma_handler_base, ptr %40, i64 0, i32 2, i64 %43
  store ptr %2, ptr %44, align 8, !tbaa !44
  %45 = add i32 %41, 18
  %46 = icmp ult i32 %45, 64
  br i1 %46, label %48, label %47, !prof !107

47:                                               ; preds = %39
  tail call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1231, ptr noundef nonnull @.str.11) #17
  br label %48

48:                                               ; preds = %47, %39, %27
  %49 = phi i32 [ %28, %27 ], [ %45, %39 ], [ %45, %47 ]
  %50 = load ptr, ptr @parse_in, align 8, !tbaa !44
  tail call void @cpp_register_deferred_pragma(ptr noundef %50, ptr noundef %0, ptr noundef %1, i32 noundef %49, i8 noundef zeroext %3, i8 noundef zeroext 0) #17
  br label %51

51:                                               ; preds = %27, %48
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @c_register_pragma_with_expansion(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !prof !43 {
  tail call fastcc void @c_register_pragma_1(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext 1)
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @c_invoke_pragma_handler(i32 noundef %0) local_unnamed_addr #10 !prof !43 {
  %2 = add i32 %0, -18
  %3 = load ptr, ptr @registered_pragmas, align 8
  %4 = zext i32 %2 to i64
  %5 = getelementptr inbounds %struct.VEC_pragma_handler_base, ptr %3, i64 0, i32 2, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !44
  %7 = load ptr, ptr @parse_in, align 8, !tbaa !44
  tail call void %6(ptr noundef %7) #17
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @init_pragma() local_unnamed_addr #10 !prof !66 {
  %1 = load i32, ptr @flag_openmp, align 4, !tbaa !59
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %12, label %3, !prof !67

3:                                                ; preds = %0, %3
  %4 = phi i64 [ %10, %3 ], [ 0, %0 ]
  %5 = load ptr, ptr @parse_in, align 8, !tbaa !44
  %6 = getelementptr inbounds [14 x %struct.omp_pragma_def], ptr @omp_pragmas, i64 0, i64 %4
  %7 = load ptr, ptr %6, align 16, !tbaa !99
  %8 = getelementptr inbounds [14 x %struct.omp_pragma_def], ptr @omp_pragmas, i64 0, i64 %4, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !97
  tail call void @cpp_register_deferred_pragma(ptr noundef %5, ptr noundef nonnull @.str.9, ptr noundef %7, i32 noundef %9, i8 noundef zeroext 1, i8 noundef zeroext 1) #17
  %10 = add nuw nsw i64 %4, 1
  %11 = icmp eq i64 %10, 14
  br i1 %11, label %12, label %3, !llvm.loop !116

12:                                               ; preds = %3, %0
  %13 = load i32, ptr @flag_preprocess_only, align 4, !tbaa !59
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17, !prof !67

15:                                               ; preds = %12
  %16 = load ptr, ptr @parse_in, align 8, !tbaa !44
  tail call void @cpp_register_deferred_pragma(ptr noundef %16, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef 17, i8 noundef zeroext 0, i8 noundef zeroext 0) #17
  br label %17

17:                                               ; preds = %15, %12
  tail call fastcc void @c_register_pragma_1(ptr noundef null, ptr noundef nonnull @.str.14, ptr noundef nonnull @handle_pragma_pack, i8 noundef zeroext 0)
  tail call fastcc void @c_register_pragma_1(ptr noundef null, ptr noundef nonnull @.str.15, ptr noundef nonnull @handle_pragma_weak, i8 noundef zeroext 0)
  tail call fastcc void @c_register_pragma_1(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.16, ptr noundef nonnull @handle_pragma_visibility, i8 noundef zeroext 0)
  tail call fastcc void @c_register_pragma_1(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.17, ptr noundef nonnull @handle_pragma_diagnostic, i8 noundef zeroext 0)
  tail call fastcc void @c_register_pragma_1(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.18, ptr noundef nonnull @handle_pragma_target, i8 noundef zeroext 0)
  tail call fastcc void @c_register_pragma_1(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.19, ptr noundef nonnull @handle_pragma_optimize, i8 noundef zeroext 0)
  tail call fastcc void @c_register_pragma_1(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.20, ptr noundef nonnull @handle_pragma_push_options, i8 noundef zeroext 0)
  tail call fastcc void @c_register_pragma_1(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.21, ptr noundef nonnull @handle_pragma_pop_options, i8 noundef zeroext 0)
  tail call fastcc void @c_register_pragma_1(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.22, ptr noundef nonnull @handle_pragma_reset_options, i8 noundef zeroext 0)
  tail call fastcc void @c_register_pragma_1(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, ptr noundef nonnull @handle_pragma_float_const_decimal64, i8 noundef zeroext 0)
  tail call fastcc void @c_register_pragma_1(ptr noundef null, ptr noundef nonnull @.str.25, ptr noundef nonnull @handle_pragma_redefine_extname, i8 noundef zeroext 1)
  tail call fastcc void @c_register_pragma_1(ptr noundef null, ptr noundef nonnull @.str.26, ptr noundef nonnull @handle_pragma_extern_prefix, i8 noundef zeroext 0)
  tail call fastcc void @c_register_pragma_1(ptr noundef null, ptr noundef nonnull @.str.27, ptr noundef nonnull @handle_pragma_message, i8 noundef zeroext 1)
  tail call void @ix86_register_pragmas() #17
  %18 = tail call i32 @invoke_plugin_callbacks(i32 noundef 13, ptr noundef null) #17
  ret void
}

declare void @cpp_register_deferred_pragma(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal void @handle_pragma_pack(ptr nocapture readnone %0) #10 !prof !43 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #17
  %3 = call i32 @pragma_lex(ptr noundef nonnull %2) #17
  %4 = icmp eq i32 %3, 20
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 165, ptr noundef nonnull @.str.44) #17
  br label %131

7:                                                ; preds = %1
  %8 = call i32 @pragma_lex(ptr noundef nonnull %2) #17
  switch i32 %8, label %89 [
    i32 21, label %9
    i32 55, label %11
    i32 53, label %26
  ]

9:                                                ; preds = %7
  %10 = load i32, ptr @initial_max_fld_align, align 4, !tbaa !59
  br label %91

11:                                               ; preds = %7
  %12 = load ptr, ptr %2, align 8, !tbaa !44
  %13 = load i64, ptr %12, align 8
  %14 = and i64 %13, 65535
  %15 = icmp eq i64 %14, 23
  br i1 %15, label %18, label %16

16:                                               ; preds = %11
  %17 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 165, ptr noundef nonnull @.str.45) #17
  br label %131

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.tree_int_cst, ptr %12, i64 0, i32 1
  %20 = load i64, ptr %19, align 8, !tbaa !55
  %21 = trunc i64 %20 to i32
  %22 = call i32 @pragma_lex(ptr noundef nonnull %2) #17
  %23 = icmp eq i32 %22, 21
  br i1 %23, label %91, label %24

24:                                               ; preds = %18
  %25 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 165, ptr noundef nonnull @.str.46) #17
  br label %131

26:                                               ; preds = %7
  %27 = load ptr, ptr %2, align 8, !tbaa !44
  %28 = getelementptr inbounds %struct.tree_identifier, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !55
  %30 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %29, ptr noundef nonnull dereferenceable(5) @.str.47)
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %34, %26
  %33 = phi i32 [ 1, %26 ], [ 2, %34 ]
  br label %68

34:                                               ; preds = %26
  %35 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %29, ptr noundef nonnull dereferenceable(4) @.str.48)
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %32, label %37

37:                                               ; preds = %34
  %38 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 165, ptr noundef nonnull @.str.49, ptr noundef %27) #17
  br label %84

39:                                               ; preds = %68, %47
  %40 = phi ptr [ %48, %47 ], [ %71, %68 ]
  %41 = call i32 @pragma_lex(ptr noundef nonnull %2) #17
  switch i32 %41, label %78 [
    i32 19, label %42
    i32 21, label %84
  ]

42:                                               ; preds = %39
  %43 = call i32 @pragma_lex(ptr noundef nonnull %2) #17
  %44 = icmp eq i32 %43, 53
  %45 = icmp eq ptr %40, null
  %46 = select i1 %44, i1 %45, i1 false
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load ptr, ptr %2, align 8, !tbaa !44
  br label %39, !llvm.loop !117

49:                                               ; preds = %42
  %50 = icmp eq i32 %43, 55
  %51 = icmp eq i32 %70, 1
  %52 = select i1 %50, i1 %51, i1 false
  %53 = icmp eq i32 %69, -1
  %54 = select i1 %52, i1 %53, i1 false
  br i1 %54, label %55, label %72

55:                                               ; preds = %49
  %56 = load ptr, ptr %2, align 8, !tbaa !44
  %57 = load i64, ptr %56, align 8
  %58 = and i64 %57, 65535
  %59 = icmp eq i64 %58, 23
  br i1 %59, label %62, label %60

60:                                               ; preds = %55
  %61 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 165, ptr noundef nonnull @.str.45) #17
  br label %84

62:                                               ; preds = %55
  %63 = getelementptr inbounds %struct.tree_int_cst, ptr %56, i64 0, i32 1
  %64 = load i64, ptr %63, align 8, !tbaa !55
  %65 = trunc i64 %64 to i32
  %66 = icmp ne i32 %65, -1
  %67 = zext i1 %66 to i32
  br label %68, !llvm.loop !117

68:                                               ; preds = %32, %62
  %69 = phi i32 [ -1, %32 ], [ %65, %62 ]
  %70 = phi i32 [ %33, %32 ], [ %67, %62 ]
  %71 = phi ptr [ null, %32 ], [ %40, %62 ]
  br label %39

72:                                               ; preds = %49
  %73 = icmp eq i32 %70, 2
  br i1 %73, label %76, label %74

74:                                               ; preds = %72
  %75 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 165, ptr noundef nonnull @.str.50) #17
  br label %84

76:                                               ; preds = %72
  %77 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 165, ptr noundef nonnull @.str.51) #17
  br label %84

78:                                               ; preds = %39
  %79 = icmp eq i32 %70, 2
  br i1 %79, label %82, label %80

80:                                               ; preds = %78
  %81 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 165, ptr noundef nonnull @.str.50) #17
  br label %84

82:                                               ; preds = %78
  %83 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 165, ptr noundef nonnull @.str.51) #17
  br label %84

84:                                               ; preds = %39, %82, %80, %76, %74, %60, %37
  %85 = phi i32 [ -1, %37 ], [ -1, %60 ], [ %69, %74 ], [ %69, %76 ], [ %69, %80 ], [ %69, %82 ], [ %69, %39 ]
  %86 = phi i32 [ undef, %37 ], [ 1, %60 ], [ %70, %74 ], [ 2, %76 ], [ %70, %80 ], [ 2, %82 ], [ %70, %39 ]
  %87 = phi i1 [ false, %37 ], [ false, %60 ], [ false, %74 ], [ false, %76 ], [ false, %80 ], [ false, %82 ], [ true, %39 ]
  %88 = phi ptr [ null, %37 ], [ %40, %60 ], [ %40, %74 ], [ %40, %76 ], [ %40, %80 ], [ %40, %82 ], [ %40, %39 ]
  br i1 %87, label %91, label %131

89:                                               ; preds = %7
  %90 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 165, ptr noundef nonnull @.str.46) #17
  br label %131

91:                                               ; preds = %18, %84, %9
  %92 = phi i32 [ %10, %9 ], [ %21, %18 ], [ %85, %84 ]
  %93 = phi i32 [ 0, %9 ], [ 0, %18 ], [ %86, %84 ]
  %94 = phi ptr [ null, %9 ], [ null, %18 ], [ %88, %84 ]
  %95 = call i32 @pragma_lex(ptr noundef nonnull %2) #17
  %96 = icmp eq i32 %95, 22
  br i1 %96, label %99, label %97

97:                                               ; preds = %91
  %98 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 165, ptr noundef nonnull @.str.52) #17
  br label %99

99:                                               ; preds = %97, %91
  %100 = load i32, ptr @flag_pack_struct, align 4, !tbaa !59
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %104, label %102

102:                                              ; preds = %99
  %103 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 165, ptr noundef nonnull @.str.53) #17
  br label %131

104:                                              ; preds = %99
  %105 = icmp eq i32 %93, 2
  br i1 %105, label %115, label %106

106:                                              ; preds = %104
  switch i32 %92, label %113 [
    i32 0, label %107
    i32 1, label %107
    i32 2, label %107
    i32 4, label %107
    i32 8, label %107
    i32 16, label %107
    i32 -1, label %109
  ]

107:                                              ; preds = %106, %106, %106, %106, %106, %106
  %108 = shl nsw i32 %92, 3
  br label %115

109:                                              ; preds = %106
  %110 = icmp eq i32 %93, 1
  br i1 %110, label %111, label %113

111:                                              ; preds = %109
  %112 = load i32, ptr @maximum_field_alignment, align 4, !tbaa !59
  br label %115

113:                                              ; preds = %106, %109
  %114 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 165, ptr noundef nonnull @.str.54, i32 noundef %92) #17
  br label %131

115:                                              ; preds = %107, %111, %104
  %116 = phi i32 [ %112, %111 ], [ %108, %107 ], [ %92, %104 ]
  switch i32 %93, label %131 [
    i32 0, label %117
    i32 1, label %121
    i32 2, label %130
  ]

117:                                              ; preds = %115
  %118 = load ptr, ptr @alignment_stack, align 8
  %119 = icmp eq ptr %118, null
  %120 = select i1 %119, ptr @default_alignment, ptr %118
  store i32 %116, ptr %120, align 4, !tbaa !59
  store i32 %116, ptr @maximum_field_alignment, align 4, !tbaa !59
  br label %131

121:                                              ; preds = %115
  %122 = call ptr @ggc_alloc_stat(i64 noundef 24) #17
  store i32 %116, ptr %122, align 8, !tbaa !118
  %123 = getelementptr inbounds %struct.align_stack, ptr %122, i64 0, i32 1
  store ptr %94, ptr %123, align 8, !tbaa !120
  %124 = load ptr, ptr @alignment_stack, align 8, !tbaa !44
  %125 = getelementptr inbounds %struct.align_stack, ptr %122, i64 0, i32 2
  store ptr %124, ptr %125, align 8, !tbaa !121
  %126 = icmp eq ptr %124, null
  br i1 %126, label %127, label %129

127:                                              ; preds = %121
  %128 = load i32, ptr @maximum_field_alignment, align 4, !tbaa !59
  store i32 %128, ptr @default_alignment, align 4, !tbaa !59
  br label %129

129:                                              ; preds = %121, %127
  store ptr %122, ptr @alignment_stack, align 8, !tbaa !44
  store i32 %116, ptr @maximum_field_alignment, align 4, !tbaa !59
  br label %131

130:                                              ; preds = %115
  call fastcc void @pop_alignment(ptr noundef %94)
  br label %131

131:                                              ; preds = %117, %129, %130, %115, %84, %113, %102, %89, %24, %16, %5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #17
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @handle_pragma_weak(ptr nocapture readnone %0) #10 !prof !43 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #17
  store ptr null, ptr %3, align 8, !tbaa !44
  %5 = call i32 @pragma_lex(ptr noundef nonnull %2) #17
  %6 = icmp eq i32 %5, 53
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 165, ptr noundef nonnull @.str.57) #17
  br label %44

9:                                                ; preds = %1
  %10 = call i32 @pragma_lex(ptr noundef nonnull %4) #17
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %9
  %13 = call i32 @pragma_lex(ptr noundef nonnull %3) #17
  %14 = icmp eq i32 %13, 53
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 165, ptr noundef nonnull @.str.57) #17
  br label %44

17:                                               ; preds = %12
  %18 = call i32 @pragma_lex(ptr noundef nonnull %4) #17
  br label %19

19:                                               ; preds = %17, %9
  %20 = phi i32 [ %18, %17 ], [ %10, %9 ]
  %21 = icmp eq i32 %20, 22
  br i1 %21, label %24, label %22

22:                                               ; preds = %19
  %23 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 165, ptr noundef nonnull @.str.58) #17
  br label %24

24:                                               ; preds = %22, %19
  %25 = load ptr, ptr %2, align 8, !tbaa !44
  %26 = call ptr @identifier_global_value(ptr noundef %25) #17
  %27 = icmp eq ptr %26, null
  br i1 %27, label %39, label %28

28:                                               ; preds = %24
  %29 = load i64, ptr %26, align 8
  %30 = and i64 %29, 65535
  %31 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %30
  %32 = load i32, ptr %31, align 4, !tbaa !59
  %33 = icmp eq i32 %32, 3
  br i1 %33, label %34, label %39

34:                                               ; preds = %28
  %35 = load ptr, ptr %3, align 8, !tbaa !44
  call fastcc void @apply_pragma_weak(ptr noundef nonnull %26, ptr noundef %35)
  %36 = load ptr, ptr %3, align 8, !tbaa !44
  %37 = icmp eq ptr %36, null
  br i1 %37, label %44, label %38

38:                                               ; preds = %34
  call void @assemble_alias(ptr noundef nonnull %26, ptr noundef nonnull %36) #17
  br label %44

39:                                               ; preds = %28, %24
  %40 = load ptr, ptr %2, align 8, !tbaa !44
  %41 = load ptr, ptr %3, align 8, !tbaa !44
  %42 = load ptr, ptr @pending_weaks, align 8, !tbaa !44
  %43 = call ptr @tree_cons_stat(ptr noundef %40, ptr noundef %41, ptr noundef %42) #17
  store ptr %43, ptr @pending_weaks, align 8, !tbaa !44
  br label %44

44:                                               ; preds = %39, %38, %34, %15, %7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #17
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @handle_pragma_visibility(ptr nocapture readnone %0) #10 !prof !43 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #17
  %3 = call i32 @pragma_lex(ptr noundef nonnull %2) #17
  %4 = icmp eq i32 %3, 53
  br i1 %4, label %5, label %15

5:                                                ; preds = %1
  %6 = load ptr, ptr %2, align 8, !tbaa !44
  %7 = getelementptr inbounds %struct.tree_identifier, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !55
  %9 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(5) @.str.47)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %5
  %12 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(4) @.str.48)
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %13, i32 2, i32 0
  br label %15

15:                                               ; preds = %11, %5, %1
  %16 = phi i32 [ 0, %1 ], [ 1, %5 ], [ %14, %11 ]
  switch i32 %16, label %20 [
    i32 0, label %35
    i32 2, label %17
  ]

17:                                               ; preds = %15
  %18 = call zeroext i8 @pop_visibility(i32 noundef 0), !range !122
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %35, label %32

20:                                               ; preds = %15
  %21 = call i32 @pragma_lex(ptr noundef nonnull %2) #17
  %22 = icmp eq i32 %21, 20
  br i1 %22, label %23, label %35

23:                                               ; preds = %20
  %24 = call i32 @pragma_lex(ptr noundef nonnull %2) #17
  %25 = icmp eq i32 %24, 53
  br i1 %25, label %26, label %35

26:                                               ; preds = %23
  %27 = load ptr, ptr %2, align 8, !tbaa !44
  %28 = getelementptr inbounds %struct.tree_identifier, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !55
  call void @push_visibility(ptr noundef %29, i32 noundef 0)
  %30 = call i32 @pragma_lex(ptr noundef nonnull %2) #17
  %31 = icmp eq i32 %30, 21
  br i1 %31, label %32, label %35

32:                                               ; preds = %17, %26
  %33 = call i32 @pragma_lex(ptr noundef nonnull %2) #17
  %34 = icmp eq i32 %33, 22
  br i1 %34, label %38, label %35

35:                                               ; preds = %32, %26, %23, %20, %17, %15
  %36 = phi ptr [ @.str.59, %15 ], [ @.str.60, %17 ], [ @.str.61, %20 ], [ @.str.62, %23 ], [ @.str.61, %26 ], [ @.str.63, %32 ]
  %37 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 165, ptr noundef nonnull %36) #17
  br label %38

38:                                               ; preds = %35, %32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #17
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @handle_pragma_diagnostic(ptr nocapture readnone %0) #10 !prof !43 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #17
  %3 = load ptr, ptr @cfun, align 8, !tbaa !44
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.64) #17
  br label %63

6:                                                ; preds = %1
  %7 = call i32 @pragma_lex(ptr noundef nonnull %2) #17
  %8 = icmp eq i32 %7, 53
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 165, ptr noundef nonnull @.str.65) #17
  br label %63

11:                                               ; preds = %6
  %12 = load ptr, ptr %2, align 8, !tbaa !44
  %13 = getelementptr inbounds %struct.tree_identifier, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !55
  %15 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(6) @.str.66)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %11
  %18 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(8) @.str.67)
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %17
  %21 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(8) @.str.68)
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %20
  %24 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 165, ptr noundef nonnull @.str.69) #17
  br label %63

25:                                               ; preds = %20, %17, %11
  %26 = phi i1 [ true, %11 ], [ true, %17 ], [ false, %20 ]
  %27 = phi i32 [ 4, %11 ], [ 6, %17 ], [ 1, %20 ]
  %28 = call i32 @pragma_lex(ptr noundef nonnull %2) #17
  %29 = icmp eq i32 %28, 61
  br i1 %29, label %32, label %30

30:                                               ; preds = %25
  %31 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 165, ptr noundef nonnull @.str.70) #17
  br label %63

32:                                               ; preds = %25
  %33 = load ptr, ptr %2, align 8, !tbaa !44
  %34 = getelementptr inbounds %struct.tree_string, ptr %33, i64 0, i32 2
  %35 = load i32, ptr @cl_options_count, align 4, !tbaa !59
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %61, label %37

37:                                               ; preds = %32
  %38 = zext i32 %35 to i64
  br label %39

39:                                               ; preds = %37, %58
  %40 = phi i64 [ 0, %37 ], [ %59, %58 ]
  %41 = getelementptr inbounds [0 x %struct.cl_option], ptr @cl_options, i64 0, i64 %40
  %42 = load ptr, ptr %41, align 8, !tbaa !123
  %43 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %42, ptr noundef nonnull dereferenceable(1) %34)
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %58

45:                                               ; preds = %39
  %46 = trunc i64 %40 to i32
  %47 = load ptr, ptr @global_dc, align 8, !tbaa !44
  %48 = call i32 @diagnostic_classify_diagnostic(ptr noundef %47, i32 noundef %46, i32 noundef %27) #17
  %49 = getelementptr inbounds [0 x %struct.cl_option], ptr @cl_options, i64 0, i64 %40, i32 7
  %50 = load i32, ptr %49, align 8, !tbaa !125
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %45
  %53 = getelementptr inbounds [0 x %struct.cl_option], ptr @cl_options, i64 0, i64 %40, i32 6
  %54 = load ptr, ptr %53, align 8, !tbaa !126
  %55 = icmp ne ptr %54, null
  %56 = and i1 %26, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %52
  store i32 1, ptr %54, align 4, !tbaa !59
  br label %63

58:                                               ; preds = %39
  %59 = add nuw nsw i64 %40, 1
  %60 = icmp eq i64 %59, %38
  br i1 %60, label %61, label %39, !llvm.loop !127

61:                                               ; preds = %58, %32
  %62 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 165, ptr noundef nonnull @.str.71) #17
  br label %63

63:                                               ; preds = %45, %52, %57, %61, %30, %23, %9, %5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #17
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @handle_pragma_target(ptr nocapture readnone %0) #10 !prof !43 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #17
  %3 = load ptr, ptr @cfun, align 8, !tbaa !44
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.72) #17
  br label %46

6:                                                ; preds = %1
  %7 = call i32 @pragma_lex(ptr noundef nonnull %2) #17
  %8 = icmp eq i32 %7, 20
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = call i32 @pragma_lex(ptr noundef nonnull %2) #17
  br label %11

11:                                               ; preds = %9, %6
  %12 = phi i32 [ %10, %9 ], [ %7, %6 ]
  %13 = icmp eq i32 %12, 61
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 165, ptr noundef nonnull @.str.73) #17
  br label %46

16:                                               ; preds = %27
  br label %17, !llvm.loop !128

17:                                               ; preds = %11, %16
  %18 = phi ptr [ %26, %16 ], [ null, %11 ]
  %19 = load ptr, ptr %2, align 8, !tbaa !44
  %20 = getelementptr inbounds %struct.tree_string, ptr %19, i64 0, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !55
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = call ptr @tree_cons_stat(ptr noundef null, ptr noundef %19, ptr noundef %18) #17
  br label %25

25:                                               ; preds = %23, %17
  %26 = phi ptr [ %24, %23 ], [ %18, %17 ]
  br label %27

27:                                               ; preds = %27, %25
  %28 = call i32 @pragma_lex(ptr noundef nonnull %2) #17
  switch i32 %28, label %29 [
    i32 19, label %27
    i32 61, label %16
  ], !llvm.loop !128

29:                                               ; preds = %27
  br i1 %8, label %30, label %36

30:                                               ; preds = %29
  %31 = icmp eq i32 %28, 21
  br i1 %31, label %32, label %34

32:                                               ; preds = %30
  %33 = call i32 @pragma_lex(ptr noundef nonnull %2) #17
  br label %36

34:                                               ; preds = %30
  %35 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 165, ptr noundef nonnull @.str.74) #17
  br label %46

36:                                               ; preds = %32, %29
  %37 = phi i32 [ %33, %32 ], [ %28, %29 ]
  %38 = icmp eq i32 %37, 22
  br i1 %38, label %40, label %39

39:                                               ; preds = %36
  call void (ptr, ...) @error(ptr noundef nonnull @.str.75) #17
  br label %46

40:                                               ; preds = %36
  %41 = call ptr @nreverse(ptr noundef %26) #17
  %42 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 107, i32 4), align 8, !tbaa !129
  %43 = call zeroext i8 %42(ptr noundef %41, ptr noundef null) #17
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %40
  store ptr %41, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 129), align 8, !tbaa !44
  br label %46

46:                                               ; preds = %34, %39, %45, %40, %14, %5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #17
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @handle_pragma_optimize(ptr nocapture readnone %0) #10 !prof !43 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #17
  %3 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 126), align 16, !tbaa !44
  %4 = load ptr, ptr @cfun, align 8, !tbaa !44
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.76) #17
  br label %52

7:                                                ; preds = %1
  %8 = call i32 @pragma_lex(ptr noundef nonnull %2) #17
  %9 = icmp eq i32 %8, 20
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = call i32 @pragma_lex(ptr noundef nonnull %2) #17
  br label %12

12:                                               ; preds = %10, %7
  %13 = phi i32 [ %11, %10 ], [ %8, %7 ]
  switch i32 %13, label %15 [
    i32 61, label %14
    i32 55, label %14
  ]

14:                                               ; preds = %12, %12
  br label %18

15:                                               ; preds = %12
  %16 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 165, ptr noundef nonnull @.str.77) #17
  br label %52

17:                                               ; preds = %32, %32
  br label %18

18:                                               ; preds = %14, %17
  %19 = phi i32 [ %33, %17 ], [ %13, %14 ]
  %20 = phi ptr [ %31, %17 ], [ null, %14 ]
  %21 = icmp eq i32 %19, 61
  br i1 %21, label %22, label %27

22:                                               ; preds = %18
  %23 = load ptr, ptr %2, align 8, !tbaa !44
  %24 = getelementptr inbounds %struct.tree_string, ptr %23, i64 0, i32 1
  %25 = load i32, ptr %24, align 8, !tbaa !55
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22, %18
  %28 = load ptr, ptr %2, align 8, !tbaa !44
  %29 = call ptr @tree_cons_stat(ptr noundef null, ptr noundef %28, ptr noundef %20) #17
  br label %30

30:                                               ; preds = %27, %22
  %31 = phi ptr [ %29, %27 ], [ %20, %22 ]
  br label %32

32:                                               ; preds = %32, %30
  %33 = call i32 @pragma_lex(ptr noundef nonnull %2) #17
  switch i32 %33, label %34 [
    i32 19, label %32
    i32 61, label %17
    i32 55, label %17
  ], !llvm.loop !130

34:                                               ; preds = %32
  br i1 %9, label %35, label %41

35:                                               ; preds = %34
  %36 = icmp eq i32 %33, 21
  br i1 %36, label %37, label %39

37:                                               ; preds = %35
  %38 = call i32 @pragma_lex(ptr noundef nonnull %2) #17
  br label %41

39:                                               ; preds = %35
  %40 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 165, ptr noundef nonnull @.str.78) #17
  br label %52

41:                                               ; preds = %37, %34
  %42 = phi i32 [ %38, %37 ], [ %33, %34 ]
  %43 = icmp eq i32 %42, 22
  br i1 %43, label %45, label %44

44:                                               ; preds = %41
  call void (ptr, ...) @error(ptr noundef nonnull @.str.79) #17
  br label %52

45:                                               ; preds = %41
  %46 = call ptr @nreverse(ptr noundef %31) #17
  %47 = call zeroext i8 @parse_optimize_options(ptr noundef %46, i8 noundef zeroext 0) #17
  %48 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 130), align 16, !tbaa !44
  %49 = call ptr @chainon(ptr noundef %48, ptr noundef %46) #17
  store ptr %49, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 130), align 16, !tbaa !44
  %50 = call ptr @build_optimization_node() #17
  store ptr %50, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 126), align 16, !tbaa !44
  %51 = load ptr, ptr @parse_in, align 8, !tbaa !44
  call void @c_cpp_builtins_optimize_pragma(ptr noundef %51, ptr noundef %3, ptr noundef %50) #17
  br label %52

52:                                               ; preds = %39, %44, %45, %15, %6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #17
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @handle_pragma_push_options(ptr nocapture readnone %0) #10 !prof !43 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #17
  store ptr null, ptr %2, align 8, !tbaa !44
  %3 = call i32 @pragma_lex(ptr noundef nonnull %2) #17
  %4 = icmp eq i32 %3, 22
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 165, ptr noundef nonnull @.str.80) #17
  br label %20

7:                                                ; preds = %1
  %8 = call ptr @ggc_alloc_stat(i64 noundef 40) #17
  %9 = load ptr, ptr @options_stack, align 8, !tbaa !44
  store ptr %9, ptr %8, align 8, !tbaa !131
  store ptr %8, ptr @options_stack, align 8, !tbaa !44
  %10 = call ptr @build_optimization_node() #17
  %11 = getelementptr inbounds %struct.opt_stack, ptr %8, i64 0, i32 3
  store ptr %10, ptr %11, align 8, !tbaa !133
  %12 = call ptr @build_target_option_node() #17
  %13 = getelementptr inbounds %struct.opt_stack, ptr %8, i64 0, i32 1
  store ptr %12, ptr %13, align 8, !tbaa !134
  %14 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 130), align 16, !tbaa !44
  %15 = call ptr @copy_list(ptr noundef %14) #17
  %16 = getelementptr inbounds %struct.opt_stack, ptr %8, i64 0, i32 4
  store ptr %15, ptr %16, align 8, !tbaa !135
  %17 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 129), align 8, !tbaa !44
  %18 = call ptr @copy_list(ptr noundef %17) #17
  %19 = getelementptr inbounds %struct.opt_stack, ptr %8, i64 0, i32 2
  store ptr %18, ptr %19, align 8, !tbaa !136
  br label %20

20:                                               ; preds = %7, %5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #17
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @handle_pragma_pop_options(ptr nocapture readnone %0) #10 !prof !43 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #17
  store ptr null, ptr %2, align 8, !tbaa !44
  %3 = call i32 @pragma_lex(ptr noundef nonnull %2) #17
  %4 = icmp eq i32 %3, 22
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 165, ptr noundef nonnull @.str.81) #17
  br label %37

7:                                                ; preds = %1
  %8 = load ptr, ptr @options_stack, align 8, !tbaa !44
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 165, ptr noundef nonnull @.str.82) #17
  br label %37

12:                                               ; preds = %7
  %13 = load ptr, ptr %8, align 8, !tbaa !131
  store ptr %13, ptr @options_stack, align 8, !tbaa !44
  %14 = getelementptr inbounds %struct.opt_stack, ptr %8, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !134
  %16 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 128), align 16, !tbaa !44
  %17 = icmp eq ptr %15, %16
  br i1 %17, label %22, label %18

18:                                               ; preds = %12
  %19 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 107, i32 4), align 8, !tbaa !129
  %20 = call zeroext i8 %19(ptr noundef null, ptr noundef %15) #17
  %21 = load ptr, ptr %14, align 8, !tbaa !134
  store ptr %21, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 128), align 16, !tbaa !44
  br label %22

22:                                               ; preds = %18, %12
  %23 = getelementptr inbounds %struct.opt_stack, ptr %8, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !133
  %25 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 126), align 16, !tbaa !44
  %26 = icmp eq ptr %24, %25
  br i1 %26, label %32, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.tree_optimization_option, ptr %24, i64 0, i32 1
  call void @cl_optimization_restore(ptr noundef nonnull %28) #17
  %29 = load ptr, ptr @parse_in, align 8, !tbaa !44
  %30 = load ptr, ptr %23, align 8, !tbaa !133
  call void @c_cpp_builtins_optimize_pragma(ptr noundef %29, ptr noundef %25, ptr noundef %30) #17
  %31 = load ptr, ptr %23, align 8, !tbaa !133
  store ptr %31, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 126), align 16, !tbaa !44
  br label %32

32:                                               ; preds = %27, %22
  %33 = getelementptr inbounds %struct.opt_stack, ptr %8, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !136
  store ptr %34, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 129), align 8, !tbaa !44
  %35 = getelementptr inbounds %struct.opt_stack, ptr %8, i64 0, i32 4
  %36 = load ptr, ptr %35, align 8, !tbaa !135
  store ptr %36, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 130), align 16, !tbaa !44
  br label %37

37:                                               ; preds = %32, %10, %5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #17
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @handle_pragma_reset_options(ptr nocapture readnone %0) #10 !prof !43 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #17
  store ptr null, ptr %2, align 8, !tbaa !44
  %3 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 125), align 8, !tbaa !44
  %4 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 127), align 8, !tbaa !44
  %5 = call i32 @pragma_lex(ptr noundef nonnull %2) #17
  %6 = icmp eq i32 %5, 22
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 165, ptr noundef nonnull @.str.83) #17
  br label %22

9:                                                ; preds = %1
  %10 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 128), align 16, !tbaa !44
  %11 = icmp eq ptr %4, %10
  br i1 %11, label %15, label %12

12:                                               ; preds = %9
  %13 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 107, i32 4), align 8, !tbaa !129
  %14 = call zeroext i8 %13(ptr noundef null, ptr noundef %4) #17
  store ptr %4, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 128), align 16, !tbaa !44
  br label %15

15:                                               ; preds = %12, %9
  %16 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 126), align 16, !tbaa !44
  %17 = icmp eq ptr %3, %16
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.tree_optimization_option, ptr %3, i64 0, i32 1
  call void @cl_optimization_restore(ptr noundef nonnull %19) #17
  %20 = load ptr, ptr @parse_in, align 8, !tbaa !44
  call void @c_cpp_builtins_optimize_pragma(ptr noundef %20, ptr noundef %16, ptr noundef %3) #17
  store ptr %3, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 126), align 16, !tbaa !44
  br label %21

21:                                               ; preds = %18, %15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 129), i8 0, i64 16, i1 false)
  br label %22

22:                                               ; preds = %21, %7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #17
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @handle_pragma_float_const_decimal64(ptr nocapture readnone %0) #10 !prof !43 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.expanded_location, align 8
  %4 = alloca %struct.expanded_location, align 8
  %5 = load i32, ptr @c_language, align 4, !tbaa !59
  %6 = and i32 %5, 2
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %18, label %8

8:                                                ; preds = %1
  %9 = load i32, ptr @warn_unknown_pragmas, align 4, !tbaa !59
  %10 = load i32, ptr @input_location, align 4, !tbaa !59
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %3, i32 noundef %10) #17
  %11 = getelementptr inbounds %struct.expanded_location, ptr %3, i64 0, i32 3
  %12 = load i8, ptr %11, align 8, !tbaa !137
  %13 = icmp ne i8 %12, 0
  %14 = zext i1 %13 to i32
  %15 = icmp sgt i32 %9, %14
  br i1 %15, label %16, label %63

16:                                               ; preds = %8
  %17 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 212, ptr noundef nonnull @.str.84) #17
  br label %63

18:                                               ; preds = %1
  %19 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 19), align 8, !tbaa !139
  %20 = tail call zeroext i8 %19() #17
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %18
  %23 = load i32, ptr @warn_unknown_pragmas, align 4, !tbaa !59
  %24 = load i32, ptr @input_location, align 4, !tbaa !59
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %4, i32 noundef %24) #17
  %25 = getelementptr inbounds %struct.expanded_location, ptr %4, i64 0, i32 3
  %26 = load i8, ptr %25, align 8, !tbaa !137
  %27 = icmp ne i8 %26, 0
  %28 = zext i1 %27 to i32
  %29 = icmp sgt i32 %23, %28
  br i1 %29, label %30, label %63

30:                                               ; preds = %22
  %31 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 212, ptr noundef nonnull @.str.85) #17
  br label %63

32:                                               ; preds = %18
  %33 = load i32, ptr @input_location, align 4, !tbaa !59
  %34 = tail call zeroext i8 (i32, i32, ptr, ...) @pedwarn(i32 noundef %33, i32 noundef 834, ptr noundef nonnull @.str.86) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #17
  %35 = load i8, ptr @valid_location_for_stdc_pragma, align 1, !tbaa !55
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %56, label %37

37:                                               ; preds = %32
  %38 = call i32 @pragma_lex(ptr noundef nonnull %2) #17
  %39 = icmp eq i32 %38, 53
  br i1 %39, label %40, label %56

40:                                               ; preds = %37
  %41 = load ptr, ptr %2, align 8, !tbaa !44
  %42 = getelementptr inbounds %struct.tree_identifier, ptr %41, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !55
  %44 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %43, ptr noundef nonnull dereferenceable(3) @.str.90)
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %40
  %47 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %43, ptr noundef nonnull dereferenceable(4) @.str.91)
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  %50 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %43, ptr noundef nonnull dereferenceable(8) @.str.92)
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %49, %46, %40
  %53 = phi i32 [ 0, %40 ], [ 1, %46 ], [ 2, %49 ]
  %54 = call i32 @pragma_lex(ptr noundef nonnull %2) #17
  %55 = icmp eq i32 %54, 22
  br i1 %55, label %59, label %56

56:                                               ; preds = %52, %49, %37, %32
  %57 = phi ptr [ @.str.88, %32 ], [ @.str.89, %37 ], [ @.str.89, %49 ], [ @.str.93, %52 ]
  %58 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 165, ptr noundef nonnull %57, ptr noundef nonnull @.str.87) #17
  br label %59

59:                                               ; preds = %56, %52
  %60 = phi i32 [ %53, %52 ], [ 3, %56 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #17
  switch i32 %60, label %63 [
    i32 0, label %61
    i32 1, label %62
    i32 2, label %62
  ]

61:                                               ; preds = %59
  call void @set_float_const_decimal64() #17
  br label %63

62:                                               ; preds = %59, %59
  call void @clear_float_const_decimal64() #17
  br label %63

63:                                               ; preds = %22, %30, %8, %16, %59, %62, %61
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @handle_pragma_redefine_extname(ptr nocapture readnone %0) #10 !prof !43 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #17
  %5 = call i32 @pragma_lex(ptr noundef nonnull %2) #17
  %6 = icmp eq i32 %5, 53
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 165, ptr noundef nonnull @.str.94) #17
  br label %65

9:                                                ; preds = %1
  %10 = call i32 @pragma_lex(ptr noundef nonnull %3) #17
  %11 = icmp eq i32 %10, 53
  br i1 %11, label %14, label %12

12:                                               ; preds = %9
  %13 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 165, ptr noundef nonnull @.str.94) #17
  br label %65

14:                                               ; preds = %9
  %15 = call i32 @pragma_lex(ptr noundef nonnull %4) #17
  %16 = icmp eq i32 %15, 22
  br i1 %16, label %19, label %17

17:                                               ; preds = %14
  %18 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 165, ptr noundef nonnull @.str.95) #17
  br label %19

19:                                               ; preds = %17, %14
  %20 = load ptr, ptr %2, align 8, !tbaa !44
  %21 = call ptr @identifier_global_value(ptr noundef %20) #17
  %22 = icmp eq ptr %21, null
  br i1 %22, label %62, label %23

23:                                               ; preds = %19
  %24 = load i64, ptr %21, align 8
  %25 = and i64 %24, 134217728
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.tree_decl_common, ptr %21, i64 0, i32 2
  %29 = load i64, ptr %28, align 8
  %30 = and i64 %29, 33554432
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %62, label %32

32:                                               ; preds = %27, %23
  %33 = trunc i64 %24 to i16
  switch i16 %33, label %62 [
    i16 29, label %34
    i16 32, label %34
  ]

34:                                               ; preds = %32, %32
  %35 = call zeroext i8 @has_c_linkage(ptr noundef nonnull %21) #17
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %62, label %37

37:                                               ; preds = %34
  %38 = load i64, ptr %21, align 8
  %39 = and i64 %38, 65535
  %40 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %39, i64 13
  %41 = load i8, ptr %40, align 1, !tbaa !55
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %60, label %43

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %21, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !55
  %46 = icmp eq ptr %45, null
  br i1 %46, label %60, label %47

47:                                               ; preds = %43
  %48 = call ptr @decl_assembler_name(ptr noundef nonnull %21) #17
  %49 = getelementptr inbounds %struct.tree_identifier, ptr %48, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !55
  %51 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 52), align 8, !tbaa !75
  %52 = call ptr %51(ptr noundef %50) #17
  %53 = load ptr, ptr %3, align 8, !tbaa !44
  %54 = getelementptr inbounds %struct.tree_identifier, ptr %53, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !55
  %56 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %52, ptr noundef nonnull dereferenceable(1) %55)
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %65, label %58

58:                                               ; preds = %47
  %59 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 165, ptr noundef nonnull @.str.2) #17
  br label %65

60:                                               ; preds = %43, %37
  %61 = load ptr, ptr %3, align 8, !tbaa !44
  call void @change_decl_assembler_name(ptr noundef nonnull %21, ptr noundef %61) #17
  br label %65

62:                                               ; preds = %34, %32, %27, %19
  %63 = load ptr, ptr %2, align 8, !tbaa !44
  %64 = load ptr, ptr %3, align 8, !tbaa !44
  call void @add_to_renaming_pragma_list(ptr noundef %63, ptr noundef %64)
  br label %65

65:                                               ; preds = %62, %60, %58, %47, %12, %7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #17
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @handle_pragma_extern_prefix(ptr nocapture readnone %0) #10 !prof !43 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca %struct.expanded_location, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #17
  %5 = call i32 @pragma_lex(ptr noundef nonnull %2) #17
  %6 = icmp eq i32 %5, 61
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 165, ptr noundef nonnull @.str.96) #17
  br label %33

9:                                                ; preds = %1
  %10 = call i32 @pragma_lex(ptr noundef nonnull %3) #17
  %11 = icmp eq i32 %10, 22
  br i1 %11, label %14, label %12

12:                                               ; preds = %9
  %13 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 165, ptr noundef nonnull @.str.97) #17
  br label %14

14:                                               ; preds = %12, %9
  %15 = load i8, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 118), align 1, !tbaa !140
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %14
  %18 = load ptr, ptr %2, align 8
  %19 = getelementptr inbounds %struct.tree_string, ptr %18, i64 0, i32 1
  %20 = load i32, ptr %19, align 8, !tbaa !55
  %21 = icmp sgt i32 %20, 1
  %22 = select i1 %21, ptr %18, ptr null
  store ptr %22, ptr @pragma_extern_prefix, align 8, !tbaa !44
  br label %33

23:                                               ; preds = %14
  %24 = load i32, ptr @warn_unknown_pragmas, align 4, !tbaa !59
  %25 = load i32, ptr @input_location, align 4, !tbaa !59
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %4, i32 noundef %25) #17
  %26 = getelementptr inbounds %struct.expanded_location, ptr %4, i64 0, i32 3
  %27 = load i8, ptr %26, align 8, !tbaa !137
  %28 = icmp ne i8 %27, 0
  %29 = zext i1 %28 to i32
  %30 = icmp sgt i32 %24, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %23
  %32 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 212, ptr noundef nonnull @.str.98) #17
  br label %33

33:                                               ; preds = %17, %31, %23, %7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #17
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal void @handle_pragma_message(ptr nocapture readnone %0) #10 !prof !43 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #17
  %3 = call i32 @pragma_lex(ptr noundef nonnull %2) #17
  switch i32 %3, label %17 [
    i32 20, label %4
    i32 61, label %15
  ]

4:                                                ; preds = %1
  %5 = call i32 @pragma_lex(ptr noundef nonnull %2) #17
  %6 = icmp eq i32 %5, 61
  br i1 %6, label %7, label %11

7:                                                ; preds = %4
  %8 = load ptr, ptr %2, align 8, !tbaa !44
  %9 = call i32 @pragma_lex(ptr noundef nonnull %2) #17
  %10 = icmp eq i32 %9, 21
  br i1 %10, label %19, label %13

11:                                               ; preds = %4
  %12 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 165, ptr noundef nonnull @.str.99) #17
  br label %35

13:                                               ; preds = %7
  %14 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 165, ptr noundef nonnull @.str.100) #17
  br label %35

15:                                               ; preds = %1
  %16 = load ptr, ptr %2, align 8, !tbaa !44
  br label %19

17:                                               ; preds = %1
  %18 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 165, ptr noundef nonnull @.str.99) #17
  br label %35

19:                                               ; preds = %7, %15
  %20 = phi ptr [ %8, %7 ], [ %16, %15 ]
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  call void @fancy_abort(ptr noundef nonnull @.str.10, i32 noundef 1018, ptr noundef nonnull @.str.11) #17
  br label %23

23:                                               ; preds = %19, %22
  %24 = call i32 @pragma_lex(ptr noundef nonnull %2) #17
  %25 = icmp eq i32 %24, 22
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  %27 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 165, ptr noundef nonnull @.str.101) #17
  br label %28

28:                                               ; preds = %26, %23
  %29 = getelementptr inbounds %struct.tree_string, ptr %20, i64 0, i32 1
  %30 = load i32, ptr %29, align 8, !tbaa !55
  %31 = icmp sgt i32 %30, 1
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load i32, ptr @input_location, align 4, !tbaa !59
  %34 = getelementptr inbounds %struct.tree_string, ptr %20, i64 0, i32 2
  call void (i32, ptr, ...) @inform(i32 noundef %33, ptr noundef nonnull @.str.102, ptr noundef nonnull %34) #17
  br label %35

35:                                               ; preds = %28, %32, %17, %13, %11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #17
  ret void
}

declare void @ix86_register_pragmas() local_unnamed_addr #3

declare i32 @invoke_plugin_callbacks(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_ggc_mx_opt_stack(ptr noundef %0) #10 !prof !43 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %30, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #17
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %30

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 8, !tbaa !131
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @gt_ggc_mx_opt_stack(ptr noundef nonnull %7)
  br label %10

10:                                               ; preds = %6, %9
  %11 = getelementptr inbounds %struct.opt_stack, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !134
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %12) #17
  br label %15

15:                                               ; preds = %10, %14
  %16 = getelementptr inbounds %struct.opt_stack, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !136
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %17) #17
  br label %20

20:                                               ; preds = %15, %19
  %21 = getelementptr inbounds %struct.opt_stack, ptr %0, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !133
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %22) #17
  br label %25

25:                                               ; preds = %20, %24
  %26 = getelementptr inbounds %struct.opt_stack, ptr %0, i64 0, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !135
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %27) #17
  br label %30

30:                                               ; preds = %1, %25, %29, %3
  ret void
}

declare i32 @ggc_set_mark(ptr noundef) local_unnamed_addr #3

declare void @gt_ggc_mx_lang_tree_node(ptr noundef) #3

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_ggc_mx_align_stack(ptr noundef %0) #10 !prof !43 {
  br label %2

2:                                                ; preds = %13, %1
  %3 = phi ptr [ %0, %1 ], [ %15, %13 ]
  %4 = icmp ult ptr %3, inttoptr (i64 2 to ptr)
  br i1 %4, label %17, label %5

5:                                                ; preds = %2
  %6 = tail call i32 @ggc_set_mark(ptr noundef nonnull %3) #17
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %17

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.align_stack, ptr %3, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !120
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %10) #17
  br label %13

13:                                               ; preds = %8, %12
  %14 = getelementptr inbounds %struct.align_stack, ptr %3, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !121
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %2

17:                                               ; preds = %2, %13, %5
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_nx_opt_stack(ptr noundef %0) #10 !prof !43 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_9opt_stack, i32 noundef 19) #17
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %28, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8, !tbaa !131
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @gt_pch_nx_opt_stack(ptr noundef nonnull %5)
  br label %8

8:                                                ; preds = %4, %7
  %9 = getelementptr inbounds %struct.opt_stack, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !134
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %10) #17
  br label %13

13:                                               ; preds = %8, %12
  %14 = getelementptr inbounds %struct.opt_stack, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !136
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %15) #17
  br label %18

18:                                               ; preds = %13, %17
  %19 = getelementptr inbounds %struct.opt_stack, ptr %0, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !133
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %20) #17
  br label %23

23:                                               ; preds = %18, %22
  %24 = getelementptr inbounds %struct.opt_stack, ptr %0, i64 0, i32 4
  %25 = load ptr, ptr %24, align 8, !tbaa !135
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %25) #17
  br label %28

28:                                               ; preds = %23, %27, %1
  ret void
}

declare i32 @gt_pch_note_object(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_p_9opt_stack(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #10 !prof !43 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %11

6:                                                ; preds = %4
  tail call void %2(ptr noundef %1, ptr noundef %3) #17
  %7 = getelementptr inbounds %struct.opt_stack, ptr %1, i64 0, i32 1
  tail call void %2(ptr noundef nonnull %7, ptr noundef %3) #17
  %8 = getelementptr inbounds %struct.opt_stack, ptr %1, i64 0, i32 2
  tail call void %2(ptr noundef nonnull %8, ptr noundef %3) #17
  %9 = getelementptr inbounds %struct.opt_stack, ptr %1, i64 0, i32 3
  tail call void %2(ptr noundef nonnull %9, ptr noundef %3) #17
  %10 = getelementptr inbounds %struct.opt_stack, ptr %1, i64 0, i32 4
  tail call void %2(ptr noundef nonnull %10, ptr noundef %3) #17
  br label %11

11:                                               ; preds = %4, %6
  ret void
}

declare void @gt_pch_nx_lang_tree_node(ptr noundef) #3

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_nx_align_stack(ptr noundef %0) #10 !prof !43 {
  br label %2

2:                                                ; preds = %11, %1
  %3 = phi ptr [ %0, %1 ], [ %13, %11 ]
  %4 = tail call i32 @gt_pch_note_object(ptr noundef %3, ptr noundef %3, ptr noundef nonnull @gt_pch_p_11align_stack, i32 noundef 20) #17
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %15, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.align_stack, ptr %3, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !120
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %8) #17
  br label %11

11:                                               ; preds = %6, %10
  %12 = getelementptr inbounds %struct.align_stack, ptr %3, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !121
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %2

15:                                               ; preds = %11, %2
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @gt_pch_p_11align_stack(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #10 !prof !43 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %9

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.align_stack, ptr %1, i64 0, i32 1
  tail call void %2(ptr noundef nonnull %7, ptr noundef %3) #17
  %8 = getelementptr inbounds %struct.align_stack, ptr %1, i64 0, i32 2
  tail call void %2(ptr noundef nonnull %8, ptr noundef %3) #17
  br label %9

9:                                                ; preds = %4, %6
  ret void
}

declare ptr @decl_attributes(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @build_tree_list_stat(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @get_identifier(ptr noundef) local_unnamed_addr #3

declare void @declare_weak(ptr noundef) local_unnamed_addr #3

declare ptr @vec_heap_o_reserve(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare i32 @pragma_lex(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @pop_alignment(ptr noundef %0) unnamed_addr #10 !prof !43 {
  %2 = load ptr, ptr @alignment_stack, align 8, !tbaa !44
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 165, ptr noundef nonnull @.str.55) #17
  br label %27

6:                                                ; preds = %1
  %7 = icmp eq ptr %0, null
  br i1 %7, label %20, label %8

8:                                                ; preds = %6, %14
  %9 = phi ptr [ %16, %14 ], [ %2, %6 ]
  %10 = getelementptr inbounds %struct.align_stack, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !120
  %12 = icmp eq ptr %11, %0
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  store ptr %9, ptr @alignment_stack, align 8, !tbaa !44
  br label %20

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.align_stack, ptr %9, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !121
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %8, !llvm.loop !141

18:                                               ; preds = %14
  %19 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 165, ptr noundef nonnull @.str.56, ptr noundef nonnull %0, ptr noundef nonnull %0) #17
  br label %20

20:                                               ; preds = %13, %18, %6
  %21 = load ptr, ptr @alignment_stack, align 8, !tbaa !44
  %22 = getelementptr inbounds %struct.align_stack, ptr %21, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !121
  %24 = icmp eq ptr %23, null
  %25 = select i1 %24, ptr @default_alignment, ptr %23
  %26 = load i32, ptr %25, align 4, !tbaa !59
  store i32 %26, ptr @maximum_field_alignment, align 4, !tbaa !59
  store ptr %23, ptr @alignment_stack, align 8, !tbaa !44
  br label %27

27:                                               ; preds = %20, %4
  ret void
}

declare ptr @ggc_alloc_stat(i64 noundef) local_unnamed_addr #3

declare ptr @identifier_global_value(ptr noundef) local_unnamed_addr #3

declare void @error(ptr noundef, ...) local_unnamed_addr #3

declare i32 @diagnostic_classify_diagnostic(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @nreverse(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @parse_optimize_options(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare ptr @chainon(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build_optimization_node() local_unnamed_addr #3

declare void @c_cpp_builtins_optimize_pragma(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build_target_option_node() local_unnamed_addr #3

declare ptr @copy_list(ptr noundef) local_unnamed_addr #3

declare void @cl_optimization_restore(ptr noundef) local_unnamed_addr #3

declare void @expand_location(ptr dead_on_unwind writable sret(%struct.expanded_location) align 8, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @pedwarn(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @set_float_const_decimal64() local_unnamed_addr #3

declare void @clear_float_const_decimal64() local_unnamed_addr #3

declare void @change_decl_assembler_name(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @inform(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #16

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #17 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!42}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41}
!35 = !{ptr @maybe_apply_renaming_pragma, ptr @has_c_linkage, i64 5480}
!36 = !{ptr @c_register_pragma_1, ptr @vec_heap_o_reserve, i64 3}
!37 = !{ptr @c_register_pragma_1, ptr @cpp_register_deferred_pragma, i64 13}
!38 = !{ptr @init_pragma, ptr @cpp_register_deferred_pragma, i64 1}
!39 = !{ptr @init_pragma, ptr @c_register_pragma_1, i64 13}
!40 = !{ptr @init_pragma, ptr @ix86_register_pragmas, i64 1}
!41 = !{ptr @init_pragma, ptr @invoke_plugin_callbacks, i64 1}
!42 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!43 = !{!"function_entry_count", i64 0}
!44 = !{!45, !45, i64 0}
!45 = !{!"any pointer", !46, i64 0}
!46 = !{!"omnipotent char", !47, i64 0}
!47 = !{!"Simple C/C++ TBAA"}
!48 = !{!49, !45, i64 8}
!49 = !{!"_IO_FILE", !50, i64 0, !45, i64 8, !45, i64 16, !45, i64 24, !45, i64 32, !45, i64 40, !45, i64 48, !45, i64 56, !45, i64 64, !45, i64 72, !45, i64 80, !45, i64 88, !45, i64 96, !45, i64 104, !50, i64 112, !50, i64 116, !51, i64 120, !52, i64 128, !46, i64 130, !46, i64 131, !45, i64 136, !51, i64 144, !45, i64 152, !45, i64 160, !45, i64 168, !45, i64 176, !51, i64 184, !50, i64 192, !46, i64 196}
!50 = !{!"int", !46, i64 0}
!51 = !{!"long", !46, i64 0}
!52 = !{!"short", !46, i64 0}
!53 = !{!49, !45, i64 16}
!54 = !{!"branch_weights", i32 2000, i32 1}
!55 = !{!46, !46, i64 0}
!56 = !{!49, !45, i64 40}
!57 = !{!49, !45, i64 48}
!58 = !{!49, !50, i64 0}
!59 = !{!50, !50, i64 0}
!60 = distinct !{!60, !61, !62}
!61 = !{!"llvm.loop.mustprogress"}
!62 = !{!"llvm.loop.unroll.disable"}
!63 = !{!"function_entry_count", i64 21016}
!64 = !{!"branch_weights", i32 21016, i32 0}
!65 = distinct !{!65, !61, !62}
!66 = !{!"function_entry_count", i64 1}
!67 = !{!"branch_weights", i32 1, i32 0}
!68 = distinct !{!68, !61, !62}
!69 = !{!"function_entry_count", i64 5480}
!70 = !{!"branch_weights", i32 0, i32 4728, i32 752}
!71 = !{!"branch_weights", i32 93, i32 5387}
!72 = !{!"branch_weights", i32 0, i32 93}
!73 = !{!"branch_weights", i32 0, i32 5480}
!74 = !{!"branch_weights", i32 5480, i32 0}
!75 = !{!76, !45, i64 1136}
!76 = !{!"gcc_target", !77, i64 0, !79, i64 368, !80, i64 664, !50, i64 744, !45, i64 752, !45, i64 760, !45, i64 768, !45, i64 776, !45, i64 784, !45, i64 792, !45, i64 800, !45, i64 808, !45, i64 816, !45, i64 824, !45, i64 832, !45, i64 840, !45, i64 848, !45, i64 856, !45, i64 864, !45, i64 872, !45, i64 880, !45, i64 888, !45, i64 896, !45, i64 904, !45, i64 912, !45, i64 920, !45, i64 928, !45, i64 936, !45, i64 944, !45, i64 952, !45, i64 960, !45, i64 968, !45, i64 976, !45, i64 984, !45, i64 992, !45, i64 1000, !45, i64 1008, !45, i64 1016, !45, i64 1024, !45, i64 1032, !45, i64 1040, !45, i64 1048, !45, i64 1056, !51, i64 1064, !51, i64 1072, !45, i64 1080, !45, i64 1088, !45, i64 1096, !45, i64 1104, !45, i64 1112, !45, i64 1120, !45, i64 1128, !45, i64 1136, !45, i64 1144, !45, i64 1152, !45, i64 1160, !45, i64 1168, !81, i64 1176, !45, i64 1232, !45, i64 1240, !45, i64 1248, !45, i64 1256, !45, i64 1264, !45, i64 1272, !45, i64 1280, !45, i64 1288, !45, i64 1296, !45, i64 1304, !45, i64 1312, !45, i64 1320, !45, i64 1328, !45, i64 1336, !45, i64 1344, !45, i64 1352, !45, i64 1360, !45, i64 1368, !45, i64 1376, !45, i64 1384, !45, i64 1392, !45, i64 1400, !45, i64 1408, !45, i64 1416, !45, i64 1424, !45, i64 1432, !45, i64 1440, !45, i64 1448, !45, i64 1456, !51, i64 1464, !82, i64 1472, !45, i64 1664, !45, i64 1672, !45, i64 1680, !45, i64 1688, !45, i64 1696, !45, i64 1704, !45, i64 1712, !45, i64 1720, !45, i64 1728, !45, i64 1736, !45, i64 1744, !45, i64 1752, !45, i64 1760, !45, i64 1768, !45, i64 1776, !83, i64 1784, !84, i64 1792, !85, i64 1896, !86, i64 1968, !45, i64 2016, !46, i64 2024, !46, i64 2025, !46, i64 2026, !46, i64 2027, !46, i64 2028, !46, i64 2029, !46, i64 2030, !46, i64 2031, !46, i64 2032, !46, i64 2033, !46, i64 2034, !46, i64 2035}
!77 = !{!"asm_out", !45, i64 0, !45, i64 8, !45, i64 16, !78, i64 24, !78, i64 56, !45, i64 88, !45, i64 96, !45, i64 104, !45, i64 112, !45, i64 120, !45, i64 128, !45, i64 136, !45, i64 144, !45, i64 152, !45, i64 160, !45, i64 168, !45, i64 176, !45, i64 184, !45, i64 192, !45, i64 200, !45, i64 208, !45, i64 216, !45, i64 224, !45, i64 232, !45, i64 240, !45, i64 248, !45, i64 256, !45, i64 264, !45, i64 272, !45, i64 280, !45, i64 288, !45, i64 296, !45, i64 304, !45, i64 312, !45, i64 320, !45, i64 328, !45, i64 336, !45, i64 344, !45, i64 352, !45, i64 360}
!78 = !{!"asm_int_op", !45, i64 0, !45, i64 8, !45, i64 16, !45, i64 24}
!79 = !{!"sched", !45, i64 0, !45, i64 8, !45, i64 16, !45, i64 24, !45, i64 32, !45, i64 40, !45, i64 48, !45, i64 56, !45, i64 64, !45, i64 72, !45, i64 80, !45, i64 88, !45, i64 96, !45, i64 104, !45, i64 112, !45, i64 120, !45, i64 128, !45, i64 136, !45, i64 144, !45, i64 152, !45, i64 160, !45, i64 168, !45, i64 176, !45, i64 184, !45, i64 192, !45, i64 200, !45, i64 208, !45, i64 216, !45, i64 224, !45, i64 232, !45, i64 240, !45, i64 248, !45, i64 256, !45, i64 264, !45, i64 272, !45, i64 280, !45, i64 288}
!80 = !{!"vectorize", !45, i64 0, !45, i64 8, !45, i64 16, !45, i64 24, !45, i64 32, !45, i64 40, !45, i64 48, !45, i64 56, !45, i64 64, !45, i64 72}
!81 = !{!"addr_space", !45, i64 0, !45, i64 8, !45, i64 16, !45, i64 24, !45, i64 32, !45, i64 40, !45, i64 48}
!82 = !{!"calls", !45, i64 0, !45, i64 8, !45, i64 16, !45, i64 24, !45, i64 32, !45, i64 40, !45, i64 48, !45, i64 56, !45, i64 64, !45, i64 72, !45, i64 80, !45, i64 88, !45, i64 96, !45, i64 104, !45, i64 112, !45, i64 120, !45, i64 128, !45, i64 136, !45, i64 144, !45, i64 152, !45, i64 160, !45, i64 168, !45, i64 176, !45, i64 184}
!83 = !{!"c", !45, i64 0}
!84 = !{!"cxx", !45, i64 0, !45, i64 8, !45, i64 16, !45, i64 24, !45, i64 32, !45, i64 40, !45, i64 48, !45, i64 56, !45, i64 64, !45, i64 72, !45, i64 80, !45, i64 88, !45, i64 96}
!85 = !{!"emutls", !45, i64 0, !45, i64 8, !45, i64 16, !45, i64 24, !45, i64 32, !45, i64 40, !45, i64 48, !45, i64 56, !46, i64 64, !46, i64 65}
!86 = !{!"target_option_hooks", !45, i64 0, !45, i64 8, !45, i64 16, !45, i64 24, !45, i64 32, !45, i64 40}
!87 = distinct !{!87, !61, !62}
!88 = distinct !{!88, !61, !62}
!89 = !{!"branch_weights", i32 5479, i32 1}
!90 = !{!"branch_weights", i32 5479, i32 0}
!91 = !{!92, !50, i64 4}
!92 = !{!"VEC_int_base", !50, i64 0, !50, i64 4, !46, i64 8}
!93 = !{!92, !50, i64 0}
!94 = !{!"function_entry_count", i64 164633}
!95 = !{!"function_entry_count", i64 44217}
!96 = distinct !{!96, !61, !62}
!97 = !{!98, !50, i64 8}
!98 = !{!"omp_pragma_def", !45, i64 0, !50, i64 8}
!99 = !{!98, !45, i64 0}
!100 = !{!101, !50, i64 0}
!101 = !{!"VEC_pragma_ns_name_base", !50, i64 0, !50, i64 4, !46, i64 8}
!102 = !{!103, !45, i64 0}
!103 = !{!"", !45, i64 0, !45, i64 8}
!104 = !{!103, !45, i64 8}
!105 = !{!"function_entry_count", i64 13}
!106 = !{!"c-pragma.c;c_register_pragma_1"}
!107 = !{!"branch_weights", i32 13, i32 0}
!108 = !{!101, !50, i64 4}
!109 = !{i64 0, i64 8, !44, i64 8, i64 8, !44}
!110 = !{i64 0, i64 8, !44}
!111 = !{!"branch_weights", i32 1, i32 12}
!112 = !{!113, !50, i64 4}
!113 = !{!"VEC_pragma_handler_base", !50, i64 0, !50, i64 4, !46, i64 8}
!114 = !{!113, !50, i64 0}
!115 = !{!"branch_weights", i32 2, i32 10}
!116 = distinct !{!116, !61, !62}
!117 = distinct !{!117, !61, !62}
!118 = !{!119, !50, i64 0}
!119 = !{!"align_stack", !50, i64 0, !45, i64 8, !45, i64 16}
!120 = !{!119, !45, i64 8}
!121 = !{!119, !45, i64 16}
!122 = !{i8 0, i8 2}
!123 = !{!124, !45, i64 0}
!124 = !{!"cl_option", !45, i64 0, !45, i64 8, !52, i64 16, !46, i64 18, !50, i64 20, !50, i64 24, !45, i64 32, !50, i64 40, !50, i64 44}
!125 = !{!124, !50, i64 40}
!126 = !{!124, !45, i64 32}
!127 = distinct !{!127, !61, !62}
!128 = distinct !{!128, !61, !62}
!129 = !{!76, !45, i64 2000}
!130 = distinct !{!130, !61, !62}
!131 = !{!132, !45, i64 0}
!132 = !{!"opt_stack", !45, i64 0, !45, i64 8, !45, i64 16, !45, i64 24, !45, i64 32}
!133 = !{!132, !45, i64 24}
!134 = !{!132, !45, i64 8}
!135 = !{!132, !45, i64 32}
!136 = !{!132, !45, i64 16}
!137 = !{!138, !46, i64 16}
!138 = !{!"", !45, i64 0, !50, i64 8, !50, i64 12, !46, i64 16}
!139 = !{!76, !45, i64 872}
!140 = !{!76, !46, i64 2033}
!141 = distinct !{!141, !61, !62}

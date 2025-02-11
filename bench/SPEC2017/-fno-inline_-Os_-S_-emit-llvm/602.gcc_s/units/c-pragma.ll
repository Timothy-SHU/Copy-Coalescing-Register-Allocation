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
%struct.cl_option = type { ptr, ptr, i16, i8, i32, i32, ptr, i32, i32 }
%struct.ggc_root_tab = type { ptr, i64, i64, ptr, ptr }
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
%struct.pragma_ns_name = type { ptr, ptr }
%struct.VEC_pragma_ns_name_base = type { i32, i32, [1 x %struct.pragma_ns_name] }
%struct.VEC_pragma_handler_base = type { i32, i32, [1 x ptr] }
%struct.tree_int_cst = type { %struct.tree_common, %struct.double_int }
%struct.double_int = type { i64, i64 }
%struct.opt_stack = type { ptr, ptr, ptr, ptr, ptr }
%struct.tree_optimization_option = type { %struct.tree_common, %struct.cl_optimization }
%struct.cl_optimization = type { i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.expanded_location = type { ptr, i32, i32, i8 }
%struct.align_stack = type { i32, ptr, ptr }

@pending_weaks = internal global ptr null, align 8
@.str = private unnamed_addr constant [6 x i8] c"alias\00", align 1
@.str.1 = private unnamed_addr constant [75 x i8] c"applying #pragma weak %q+D after first use results in unspecified behavior\00", align 1
@c_global_trees = external local_unnamed_addr global [55 x ptr], align 16
@pending_redefine_extname = internal global ptr null, align 8
@.str.2 = private unnamed_addr constant [88 x i8] c"#pragma redefine_extname ignored due to conflict with previous #pragma redefine_extname\00", align 1
@tree_contains_struct = external local_unnamed_addr global [191 x [64 x i8]], align 16
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@.str.3 = private unnamed_addr constant [61 x i8] c"asm declaration ignored due to conflict with previous rename\00", align 1
@.str.4 = private unnamed_addr constant [70 x i8] c"#pragma redefine_extname ignored due to conflict with previous rename\00", align 1
@.str.5 = private unnamed_addr constant [74 x i8] c"#pragma redefine_extname ignored due to conflict with __asm__ declaration\00", align 1
@pragma_extern_prefix = internal global ptr null, align 8
@visstack = internal unnamed_addr global ptr null, align 8
@default_visibility = external local_unnamed_addr global i32, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"internal\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"hidden\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"protected\00", align 1
@.str.10 = private unnamed_addr constant [82 x i8] c"#pragma GCC visibility push() must specify default, internal, hidden or protected\00", align 1
@visibility_options = external local_unnamed_addr global %struct.visibility_flags, align 4
@valid_location_for_stdc_pragma = internal unnamed_addr global i8 0, align 1
@omp_pragmas = internal unnamed_addr constant [14 x %struct.omp_pragma_def] [%struct.omp_pragma_def { ptr @.str.14, i32 1 }, %struct.omp_pragma_def { ptr @.str.15, i32 2 }, %struct.omp_pragma_def { ptr @.str.16, i32 3 }, %struct.omp_pragma_def { ptr @.str.17, i32 4 }, %struct.omp_pragma_def { ptr @.str.18, i32 5 }, %struct.omp_pragma_def { ptr @.str.19, i32 6 }, %struct.omp_pragma_def { ptr @.str.20, i32 7 }, %struct.omp_pragma_def { ptr @.str.21, i32 8 }, %struct.omp_pragma_def { ptr @.str.22, i32 11 }, %struct.omp_pragma_def { ptr @.str.23, i32 12 }, %struct.omp_pragma_def { ptr @.str.24, i32 13 }, %struct.omp_pragma_def { ptr @.str.25, i32 14 }, %struct.omp_pragma_def { ptr @.str.26, i32 15 }, %struct.omp_pragma_def { ptr @.str.27, i32 16 }], align 16
@.str.11 = private unnamed_addr constant [4 x i8] c"omp\00", align 1
@registered_pp_pragmas = internal unnamed_addr global ptr null, align 8
@.str.12 = private unnamed_addr constant [11 x i8] c"c-pragma.c\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"atomic\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"barrier\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"critical\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"flush\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"for\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"master\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"ordered\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"parallel\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"section\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"sections\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"single\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"task\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"taskwait\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"threadprivate\00", align 1
@flag_preprocess_only = external local_unnamed_addr global i32, align 4
@registered_pragmas = internal unnamed_addr global ptr null, align 8
@parse_in = external local_unnamed_addr global ptr, align 8
@flag_openmp = external local_unnamed_addr global i32, align 4
@.str.28 = private unnamed_addr constant [4 x i8] c"GCC\00", align 1
@.str.29 = private unnamed_addr constant [15 x i8] c"pch_preprocess\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"pack\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"weak\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"visibility\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"diagnostic\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"target\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"optimize\00", align 1
@.str.36 = private unnamed_addr constant [13 x i8] c"push_options\00", align 1
@.str.37 = private unnamed_addr constant [12 x i8] c"pop_options\00", align 1
@.str.38 = private unnamed_addr constant [14 x i8] c"reset_options\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"STDC\00", align 1
@.str.40 = private unnamed_addr constant [22 x i8] c"FLOAT_CONST_DECIMAL64\00", align 1
@.str.41 = private unnamed_addr constant [17 x i8] c"redefine_extname\00", align 1
@.str.42 = private unnamed_addr constant [14 x i8] c"extern_prefix\00", align 1
@.str.43 = private unnamed_addr constant [8 x i8] c"message\00", align 1
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
@alignment_stack = internal global ptr null, align 8
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
@options_stack = internal global ptr null, align 8
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
@gt_ggc_r_gt_c_pragma_h = dso_local local_unnamed_addr constant [6 x %struct.ggc_root_tab] [%struct.ggc_root_tab { ptr @options_stack, i64 1, i64 8, ptr @gt_ggc_mx_opt_stack, ptr @gt_pch_nx_opt_stack }, %struct.ggc_root_tab { ptr @pragma_extern_prefix, i64 1, i64 8, ptr @gt_ggc_mx_lang_tree_node, ptr @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab { ptr @pending_redefine_extname, i64 1, i64 8, ptr @gt_ggc_mx_lang_tree_node, ptr @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab { ptr @pending_weaks, i64 1, i64 8, ptr @gt_ggc_mx_lang_tree_node, ptr @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab { ptr @alignment_stack, i64 1, i64 8, ptr @gt_ggc_mx_align_stack, ptr @gt_pch_nx_align_stack }, %struct.ggc_root_tab zeroinitializer], align 16

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @maybe_apply_pragma_weak(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @pending_weaks, align 8, !tbaa !6
  %3 = icmp eq ptr %2, null
  br i1 %3, label %41, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %6 = load i64, ptr %5, align 8
  %7 = and i64 %6, 33554432
  %8 = icmp eq i64 %7, 0
  %9 = load i64, ptr %0, align 8
  %10 = and i64 %9, 134217728
  %11 = icmp eq i64 %10, 0
  %12 = select i1 %8, i1 %11, i1 false
  br i1 %12, label %41, label %13

13:                                               ; preds = %4
  %14 = trunc i64 %9 to i16
  switch i16 %14, label %41 [
    i16 29, label %15
    i16 32, label %15
  ]

15:                                               ; preds = %13, %13
  %16 = tail call ptr @decl_assembler_name(ptr noundef nonnull %0) #12
  %17 = load ptr, ptr @pending_weaks, align 8, !tbaa !6
  %18 = icmp eq ptr %17, null
  br i1 %18, label %41, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.tree_list, ptr %17, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !10
  %22 = icmp eq ptr %16, %21
  br i1 %22, label %29, label %36

23:                                               ; preds = %36
  %24 = getelementptr inbounds %struct.tree_list, ptr %39, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !10
  %26 = icmp eq ptr %16, %25
  br i1 %26, label %27, label %36, !llvm.loop !11

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.tree_common, ptr %37, i64 0, i32 1
  br label %29

29:                                               ; preds = %27, %19
  %30 = phi ptr [ %17, %19 ], [ %39, %27 ]
  %31 = phi ptr [ @pending_weaks, %19 ], [ %28, %27 ]
  %32 = getelementptr inbounds %struct.tree_list, ptr %30, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !10
  tail call fastcc void @apply_pragma_weak(ptr noundef nonnull %0, ptr noundef %33) #13
  %34 = getelementptr inbounds %struct.tree_common, ptr %30, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !10
  store ptr %35, ptr %31, align 8, !tbaa !6
  br label %41

36:                                               ; preds = %19, %23
  %37 = phi ptr [ %39, %23 ], [ %17, %19 ]
  %38 = getelementptr inbounds %struct.tree_common, ptr %37, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !6
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %23, !llvm.loop !11

41:                                               ; preds = %36, %4, %15, %29, %13, %1
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @decl_assembler_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @apply_pragma_weak(ptr noundef %0, ptr noundef readonly %1) unnamed_addr #0 {
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !6
  %4 = icmp eq ptr %1, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.tree_identifier, ptr %1, i64 0, i32 1
  %7 = getelementptr inbounds %struct.tree_identifier, ptr %1, i64 0, i32 1, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !10
  %9 = load ptr, ptr %6, align 8, !tbaa !10
  %10 = tail call ptr @build_string(i32 noundef %8, ptr noundef %9) #12
  %11 = tail call ptr @get_identifier(ptr noundef nonnull @.str) #12
  %12 = tail call ptr @build_tree_list_stat(ptr noundef null, ptr noundef %10) #12
  %13 = tail call ptr @build_tree_list_stat(ptr noundef %11, ptr noundef %12) #12
  %14 = call ptr @decl_attributes(ptr noundef nonnull %3, ptr noundef %13, i32 noundef 0) #12
  %15 = load ptr, ptr %3, align 8, !tbaa !6
  br label %16

16:                                               ; preds = %5, %2
  %17 = phi ptr [ %15, %5 ], [ %0, %2 ]
  %18 = getelementptr inbounds %struct.tree_decl_common, ptr %17, i64 0, i32 2
  %19 = load i64, ptr %18, align 8
  %20 = and i64 %19, 33554432
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %40, label %22

22:                                               ; preds = %16
  %23 = load i64, ptr %17, align 8
  %24 = and i64 %23, 16777216
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %40, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %17, i64 0, i32 4
  %28 = load i32, ptr %27, align 8
  %29 = and i32 %28, 128
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %26
  %32 = call ptr @decl_assembler_name(ptr noundef nonnull %17) #12
  %33 = load i64, ptr %32, align 8
  %34 = and i64 %33, 67108864
  %35 = icmp eq i64 %34, 0
  %36 = load ptr, ptr %3, align 8, !tbaa !6
  br i1 %35, label %40, label %37

37:                                               ; preds = %31
  %38 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 165, ptr noundef nonnull @.str.1, ptr noundef %36) #12
  %39 = load ptr, ptr %3, align 8, !tbaa !6
  br label %40

40:                                               ; preds = %37, %31, %26, %22, %16
  %41 = phi ptr [ %39, %37 ], [ %36, %31 ], [ %17, %26 ], [ %17, %22 ], [ %17, %16 ]
  call void @declare_weak(ptr noundef %41) #12
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @build_string(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @decl_attributes(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build_tree_list_stat(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @get_identifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @warning(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare void @declare_weak(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @maybe_apply_pending_pragma_weaks() local_unnamed_addr #0 {
  %1 = load ptr, ptr @pending_weaks, align 8, !tbaa !6
  %2 = icmp eq ptr %1, null
  br i1 %2, label %25, label %3

3:                                                ; preds = %0, %22
  %4 = phi ptr [ %23, %22 ], [ %1, %0 ]
  %5 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 1
  %6 = getelementptr inbounds %struct.tree_list, ptr %4, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !10
  %8 = icmp eq ptr %7, null
  br i1 %8, label %22, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.tree_list, ptr %4, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !10
  %12 = load ptr, ptr getelementptr inbounds ([55 x ptr], ptr @c_global_trees, i64 0, i64 48), align 16, !tbaa !6
  %13 = tail call ptr @build_decl_stat(i32 noundef 0, i32 noundef 29, ptr noundef %11, ptr noundef %12) #12
  %14 = getelementptr inbounds %struct.tree_decl_common, ptr %13, i64 0, i32 2
  %15 = load i64, ptr %14, align 8
  %16 = load i64, ptr %13, align 8
  %17 = or i64 %16, 134217728
  store i64 %17, ptr %13, align 8
  %18 = or i64 %15, 33558528
  store i64 %18, ptr %14, align 8
  %19 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %13, i64 0, i32 4
  %20 = load i32, ptr %19, align 8
  %21 = or i32 %20, 128
  store i32 %21, ptr %19, align 8
  tail call void @assemble_alias(ptr noundef nonnull %13, ptr noundef nonnull %7) #12
  br label %22

22:                                               ; preds = %3, %9
  %23 = load ptr, ptr %5, align 8, !tbaa !6
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %3, !llvm.loop !13

25:                                               ; preds = %22, %0
  ret void
}

; Function Attrs: optsize
declare ptr @build_decl_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @assemble_alias(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @add_to_renaming_pragma_list(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @pending_redefine_extname, align 8, !tbaa !6
  %4 = tail call ptr @purpose_member(ptr noundef %0, ptr noundef %3) #12
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.tree_list, ptr %4, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !10
  %9 = icmp eq ptr %8, %1
  br i1 %9, label %15, label %10

10:                                               ; preds = %6
  %11 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 165, ptr noundef nonnull @.str.2) #12
  br label %15

12:                                               ; preds = %2
  %13 = load ptr, ptr @pending_redefine_extname, align 8, !tbaa !6
  %14 = tail call ptr @tree_cons_stat(ptr noundef %0, ptr noundef %1, ptr noundef %13) #12
  store ptr %14, ptr @pending_redefine_extname, align 8, !tbaa !6
  br label %15

15:                                               ; preds = %6, %10, %12
  ret void
}

; Function Attrs: optsize
declare ptr @purpose_member(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @tree_cons_stat(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @maybe_apply_renaming_pragma(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = load i64, ptr %0, align 8
  %4 = trunc i64 %3 to i16
  switch i16 %4, label %140 [
    i16 29, label %5
    i16 32, label %5
  ]

5:                                                ; preds = %2, %2
  %6 = and i64 %3, 134217728
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %10 = load i64, ptr %9, align 8
  %11 = and i64 %10, 33554432
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %140, label %13

13:                                               ; preds = %8, %5
  %14 = tail call zeroext i8 @has_c_linkage(ptr noundef nonnull %0) #12
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %140, label %16

16:                                               ; preds = %13
  %17 = load i64, ptr %0, align 8
  %18 = and i64 %17, 65535
  %19 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %18, i64 13
  %20 = load i8, ptr %19, align 1, !tbaa !10
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %73, label %22

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !10
  %25 = icmp eq ptr %24, null
  br i1 %25, label %73, label %26

26:                                               ; preds = %22
  %27 = tail call ptr @decl_assembler_name(ptr noundef nonnull %0) #12
  %28 = getelementptr inbounds %struct.tree_identifier, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !10
  %30 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 52), align 8, !tbaa !14
  %31 = tail call ptr %30(ptr noundef %29) #12
  %32 = icmp eq ptr %1, null
  br i1 %32, label %39, label %33

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.tree_string, ptr %1, i64 0, i32 2
  %35 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %34, ptr noundef nonnull dereferenceable(1) %31) #13
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %33
  %38 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 165, ptr noundef nonnull @.str.3) #12
  br label %39

39:                                               ; preds = %37, %33, %26
  %40 = load ptr, ptr @pending_redefine_extname, align 8, !tbaa !6
  %41 = icmp eq ptr %40, null
  br i1 %41, label %140, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !10
  %45 = getelementptr inbounds %struct.tree_list, ptr %40, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !10
  %47 = icmp eq ptr %44, %46
  br i1 %47, label %54, label %68

48:                                               ; preds = %68
  %49 = getelementptr inbounds %struct.tree_list, ptr %71, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !10
  %51 = icmp eq ptr %44, %50
  br i1 %51, label %52, label %68, !llvm.loop !28

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.tree_common, ptr %69, i64 0, i32 1
  br label %54

54:                                               ; preds = %52, %42
  %55 = phi ptr [ %40, %42 ], [ %71, %52 ]
  %56 = phi ptr [ @pending_redefine_extname, %42 ], [ %53, %52 ]
  %57 = getelementptr inbounds %struct.tree_list, ptr %55, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !10
  %59 = getelementptr inbounds %struct.tree_identifier, ptr %58, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !10
  %61 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %60, ptr noundef nonnull dereferenceable(1) %31) #13
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %54
  %64 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 165, ptr noundef nonnull @.str.4) #12
  br label %65

65:                                               ; preds = %63, %54
  %66 = getelementptr inbounds %struct.tree_common, ptr %55, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !10
  store ptr %67, ptr %56, align 8, !tbaa !6
  br label %140

68:                                               ; preds = %42, %48
  %69 = phi ptr [ %71, %48 ], [ %40, %42 ]
  %70 = getelementptr inbounds %struct.tree_common, ptr %69, i64 0, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !6
  %72 = icmp eq ptr %71, null
  br i1 %72, label %140, label %48, !llvm.loop !28

73:                                               ; preds = %22, %16
  %74 = load ptr, ptr @pending_redefine_extname, align 8, !tbaa !6
  %75 = icmp eq ptr %74, null
  br i1 %75, label %115, label %76

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 3
  %78 = load ptr, ptr %77, align 8, !tbaa !10
  %79 = getelementptr inbounds %struct.tree_list, ptr %74, i64 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !10
  %81 = icmp eq ptr %78, %80
  br i1 %81, label %88, label %110

82:                                               ; preds = %110
  %83 = getelementptr inbounds %struct.tree_list, ptr %113, i64 0, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !10
  %85 = icmp eq ptr %78, %84
  br i1 %85, label %86, label %110, !llvm.loop !29

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.tree_common, ptr %111, i64 0, i32 1
  br label %88

88:                                               ; preds = %86, %76
  %89 = phi ptr [ %74, %76 ], [ %113, %86 ]
  %90 = phi ptr [ @pending_redefine_extname, %76 ], [ %87, %86 ]
  %91 = getelementptr inbounds %struct.tree_list, ptr %89, i64 0, i32 2
  %92 = load ptr, ptr %91, align 8, !tbaa !10
  %93 = getelementptr inbounds %struct.tree_common, ptr %89, i64 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !10
  store ptr %94, ptr %90, align 8, !tbaa !6
  %95 = icmp eq ptr %1, null
  br i1 %95, label %104, label %96

96:                                               ; preds = %88
  %97 = getelementptr inbounds %struct.tree_string, ptr %1, i64 0, i32 2
  %98 = getelementptr inbounds %struct.tree_identifier, ptr %92, i64 0, i32 1
  %99 = load ptr, ptr %98, align 8, !tbaa !10
  %100 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %97, ptr noundef nonnull dereferenceable(1) %99) #13
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %140, label %102

102:                                              ; preds = %96
  %103 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 165, ptr noundef nonnull @.str.5) #12
  br label %140

104:                                              ; preds = %88
  %105 = getelementptr inbounds %struct.tree_identifier, ptr %92, i64 0, i32 1
  %106 = getelementptr inbounds %struct.tree_identifier, ptr %92, i64 0, i32 1, i32 1
  %107 = load i32, ptr %106, align 8, !tbaa !10
  %108 = load ptr, ptr %105, align 8, !tbaa !10
  %109 = tail call ptr @build_string(i32 noundef %107, ptr noundef %108) #12
  br label %140

110:                                              ; preds = %76, %82
  %111 = phi ptr [ %113, %82 ], [ %74, %76 ]
  %112 = getelementptr inbounds %struct.tree_common, ptr %111, i64 0, i32 1
  %113 = load ptr, ptr %112, align 8, !tbaa !6
  %114 = icmp eq ptr %113, null
  br i1 %114, label %115, label %82, !llvm.loop !29

115:                                              ; preds = %110, %73
  %116 = icmp eq ptr %1, null
  br i1 %116, label %117, label %140

117:                                              ; preds = %115
  %118 = load ptr, ptr @pragma_extern_prefix, align 8, !tbaa !6
  %119 = icmp eq ptr %118, null
  br i1 %119, label %140, label %120

120:                                              ; preds = %117
  %121 = getelementptr inbounds %struct.tree_string, ptr %118, i64 0, i32 2
  %122 = getelementptr inbounds %struct.tree_string, ptr %118, i64 0, i32 1
  %123 = load i32, ptr %122, align 8, !tbaa !10
  %124 = add nsw i32 %123, -1
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 3
  %127 = load ptr, ptr %126, align 8, !tbaa !10
  %128 = getelementptr inbounds %struct.tree_identifier, ptr %127, i64 0, i32 1
  %129 = load ptr, ptr %128, align 8, !tbaa !10
  %130 = getelementptr inbounds %struct.tree_identifier, ptr %127, i64 0, i32 1, i32 1
  %131 = load i32, ptr %130, align 8, !tbaa !10
  %132 = zext i32 %131 to i64
  %133 = add nsw i64 %132, %125
  %134 = add nsw i64 %133, 1
  %135 = alloca i8, i64 %134, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %135, ptr nonnull align 1 %121, i64 %125, i1 false)
  %136 = getelementptr inbounds i8, ptr %135, i64 %125
  %137 = add nuw nsw i64 %132, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %136, ptr noundef nonnull align 1 dereferenceable(1) %129, i64 %137, i1 false)
  %138 = trunc i64 %133 to i32
  %139 = call ptr @build_string(i32 noundef %138, ptr noundef nonnull %135) #12
  br label %140

140:                                              ; preds = %68, %39, %117, %115, %104, %102, %96, %65, %8, %13, %2, %120
  %141 = phi ptr [ %139, %120 ], [ %1, %2 ], [ %1, %13 ], [ %1, %8 ], [ null, %65 ], [ %109, %104 ], [ %1, %102 ], [ %1, %96 ], [ %1, %115 ], [ null, %117 ], [ null, %39 ], [ null, %68 ]
  ret ptr %141
}

; Function Attrs: optsize
declare zeroext i8 @has_c_linkage(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @push_visibility(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load i32, ptr @default_visibility, align 4, !tbaa !30
  %4 = shl i32 %1, 8
  %5 = or i32 %3, %4
  tail call fastcc void @VEC_int_heap_safe_push(i32 noundef %5) #13
  %6 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(8) @.str.6) #13
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %19, label %8

8:                                                ; preds = %2
  %9 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(9) @.str.7) #13
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %8
  %12 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(7) @.str.8) #13
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %11
  %15 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(10) @.str.9) #13
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %14
  %18 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 165, ptr noundef nonnull @.str.10) #12
  br label %23

19:                                               ; preds = %14, %11, %8, %2
  %20 = phi i32 [ 0, %2 ], [ 3, %8 ], [ 2, %11 ], [ 1, %14 ]
  store i32 %20, ptr @default_visibility, align 4, !tbaa !30
  %21 = load i8, ptr @visibility_options, align 4
  %22 = or i8 %21, 1
  store i8 %22, ptr @visibility_options, align 4
  br label %23

23:                                               ; preds = %19, %17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_int_heap_safe_push(i32 noundef %0) unnamed_addr #0 {
  tail call fastcc void @VEC_int_heap_reserve() #13
  %2 = load ptr, ptr @visstack, align 8, !tbaa !6
  tail call fastcc void @VEC_int_base_quick_push(ptr noundef %2, i32 noundef %0) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_int_heap_reserve() unnamed_addr #0 {
  %1 = load ptr, ptr @visstack, align 8, !tbaa !6
  %2 = tail call fastcc i32 @VEC_int_base_space(ptr noundef %1) #13
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = tail call ptr @vec_heap_o_reserve(ptr noundef %1, i32 noundef 1, i64 noundef 8, i64 noundef 4) #12
  store ptr %5, ptr @visstack, align 8, !tbaa !6
  br label %6

6:                                                ; preds = %4, %0
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_int_base_quick_push(ptr noundef %0, i32 noundef %1) unnamed_addr #5 {
  %3 = load i32, ptr %0, align 4, !tbaa !31
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 4, !tbaa !31
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %5
  store i32 %1, ptr %6, align 4, !tbaa !30
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_int_base_space(ptr noundef readonly %0) unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !33
  %6 = load i32, ptr %0, align 4, !tbaa !31
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @vec_heap_o_reserve(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @pop_visibility(i32 noundef %0) local_unnamed_addr #7 {
  %2 = load ptr, ptr @visstack, align 8
  %3 = tail call fastcc i32 @VEC_int_base_length(ptr noundef %2) #13
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %19, label %5

5:                                                ; preds = %1
  %6 = tail call fastcc i32 @VEC_int_base_last(ptr noundef %2) #13
  %7 = ashr i32 %6, 8
  %8 = icmp eq i32 %7, %0
  br i1 %8, label %9, label %19

9:                                                ; preds = %5
  %10 = tail call fastcc i32 @VEC_int_base_pop(ptr noundef %2) #13
  %11 = and i32 %10, 255
  store i32 %11, ptr @default_visibility, align 4, !tbaa !30
  %12 = load ptr, ptr @visstack, align 8
  %13 = tail call fastcc i32 @VEC_int_base_length(ptr noundef %12) #13
  %14 = icmp ne i32 %13, 0
  %15 = zext i1 %14 to i8
  %16 = load i8, ptr @visibility_options, align 4
  %17 = and i8 %16, -2
  %18 = or disjoint i8 %17, %15
  store i8 %18, ptr @visibility_options, align 4
  br label %19

19:                                               ; preds = %5, %1, %9
  %20 = phi i8 [ 1, %9 ], [ 0, %1 ], [ 0, %5 ]
  ret i8 %20
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_int_base_length(ptr noundef readonly %0) unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 4, !tbaa !31
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_int_base_last(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = load i32, ptr %0, align 4, !tbaa !31
  %3 = add i32 %2, -1
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !30
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc i32 @VEC_int_base_pop(ptr nocapture noundef %0) unnamed_addr #5 {
  %2 = load i32, ptr %0, align 4, !tbaa !31
  %3 = add i32 %2, -1
  store i32 %3, ptr %0, align 4, !tbaa !31
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !30
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @mark_valid_location_for_stdc_pragma(i8 noundef zeroext %0) local_unnamed_addr #8 {
  store i8 %0, ptr @valid_location_for_stdc_pragma, align 1, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @valid_location_for_stdc_pragma_p() local_unnamed_addr #9 {
  %1 = load i8, ptr @valid_location_for_stdc_pragma, align 1, !tbaa !10
  ret i8 %1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @c_pp_lookup_pragma(i32 noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  br label %7

4:                                                ; preds = %7
  %5 = add nuw nsw i64 %8, 1
  %6 = icmp eq i64 %5, 14
  br i1 %6, label %15, label %7, !llvm.loop !34

7:                                                ; preds = %3, %4
  %8 = phi i64 [ 0, %3 ], [ %5, %4 ]
  %9 = getelementptr inbounds [14 x %struct.omp_pragma_def], ptr @omp_pragmas, i64 0, i64 %8, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !35
  %11 = icmp eq i32 %10, %0
  br i1 %11, label %12, label %4

12:                                               ; preds = %7
  %13 = getelementptr inbounds [14 x %struct.omp_pragma_def], ptr @omp_pragmas, i64 0, i64 %8
  store ptr @.str.11, ptr %1, align 8, !tbaa !6
  %14 = load ptr, ptr %13, align 16, !tbaa !37
  store ptr %14, ptr %2, align 8, !tbaa !6
  br label %31

15:                                               ; preds = %4
  %16 = icmp ugt i32 %0, 17
  br i1 %16, label %17, label %30

17:                                               ; preds = %15
  %18 = load ptr, ptr @registered_pp_pragmas, align 8
  %19 = tail call fastcc i32 @VEC_pragma_ns_name_base_length(ptr noundef %18) #13
  %20 = add i32 %19, 18
  %21 = icmp ugt i32 %20, %0
  br i1 %21, label %22, label %30

22:                                               ; preds = %17
  %23 = add i32 %0, -18
  %24 = tail call fastcc ptr @VEC_pragma_ns_name_base_index(ptr noundef %18, i32 noundef %23) #13
  %25 = load ptr, ptr %24, align 8, !tbaa !38
  store ptr %25, ptr %1, align 8, !tbaa !6
  %26 = load ptr, ptr @registered_pp_pragmas, align 8
  %27 = tail call fastcc ptr @VEC_pragma_ns_name_base_index(ptr noundef %26, i32 noundef %23) #13
  %28 = getelementptr inbounds %struct.pragma_ns_name, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !40
  store ptr %29, ptr %2, align 8, !tbaa !6
  br label %31

30:                                               ; preds = %17, %15
  tail call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 1198, ptr noundef nonnull @.str.13) #12
  br label %31

31:                                               ; preds = %30, %22, %12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_pragma_ns_name_base_length(ptr noundef readonly %0) unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !41
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @VEC_pragma_ns_name_base_index(ptr noundef readnone %0, i32 noundef %1) unnamed_addr #10 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_pragma_ns_name_base, ptr %0, i64 0, i32 2, i64 %3
  ret ptr %4
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @c_register_pragma(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  tail call fastcc void @c_register_pragma_1(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext 0) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @c_register_pragma_1(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) unnamed_addr #0 {
  %5 = alloca ptr, align 8
  %6 = alloca %struct.pragma_ns_name, align 8
  store ptr %2, ptr %5, align 8, !tbaa !6
  %7 = load i32, ptr @flag_preprocess_only, align 4, !tbaa !30
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #14
  %10 = icmp eq i8 %3, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #14
  br label %26

12:                                               ; preds = %9
  store ptr %0, ptr %6, align 8, !tbaa !38
  %13 = getelementptr inbounds %struct.pragma_ns_name, ptr %6, i64 0, i32 1
  store ptr %1, ptr %13, align 8, !tbaa !40
  call fastcc void @VEC_pragma_ns_name_heap_safe_push(ptr noundef nonnull %6) #13
  %14 = load ptr, ptr @registered_pp_pragmas, align 8
  %15 = call fastcc i32 @VEC_pragma_ns_name_base_length(ptr noundef %14) #13
  %16 = add i32 %15, 17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #14
  br label %23

17:                                               ; preds = %4
  call fastcc void @VEC_pragma_handler_heap_safe_push(ptr noundef nonnull %5) #13
  %18 = load ptr, ptr @registered_pragmas, align 8
  %19 = call fastcc i32 @VEC_pragma_handler_base_length(ptr noundef %18) #13
  %20 = add i32 %19, 17
  %21 = icmp ult i32 %20, 64
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 1231, ptr noundef nonnull @.str.13) #12
  br label %23

23:                                               ; preds = %12, %22, %17
  %24 = phi i32 [ %16, %12 ], [ %20, %17 ], [ %20, %22 ]
  %25 = load ptr, ptr @parse_in, align 8, !tbaa !6
  call void @cpp_register_deferred_pragma(ptr noundef %25, ptr noundef %0, ptr noundef %1, i32 noundef %24, i8 noundef zeroext %3, i8 noundef zeroext 0) #12
  br label %26

26:                                               ; preds = %11, %23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_pragma_ns_name_heap_safe_push(ptr noundef %0) unnamed_addr #0 {
  tail call fastcc void @VEC_pragma_ns_name_heap_reserve() #13
  %2 = load ptr, ptr @registered_pp_pragmas, align 8, !tbaa !6
  tail call fastcc void @VEC_pragma_ns_name_base_quick_push(ptr noundef %2, ptr noundef %0) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_pragma_handler_heap_safe_push(ptr noundef %0) unnamed_addr #0 {
  tail call fastcc void @VEC_pragma_handler_heap_reserve() #13
  %2 = load ptr, ptr @registered_pragmas, align 8, !tbaa !6
  tail call fastcc void @VEC_pragma_handler_base_quick_push(ptr noundef %2, ptr noundef %0) #13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_pragma_handler_base_length(ptr noundef readonly %0) unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !43
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: optsize
declare void @cpp_register_deferred_pragma(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_pragma_ns_name_heap_reserve() unnamed_addr #0 {
  %1 = load ptr, ptr @registered_pp_pragmas, align 8, !tbaa !6
  %2 = tail call fastcc i32 @VEC_pragma_ns_name_base_space(ptr noundef %1) #13
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = tail call ptr @vec_heap_o_reserve(ptr noundef %1, i32 noundef 1, i64 noundef 8, i64 noundef 16) #12
  store ptr %5, ptr @registered_pp_pragmas, align 8, !tbaa !6
  br label %6

6:                                                ; preds = %4, %0
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_pragma_ns_name_base_quick_push(ptr noundef %0, ptr noundef readonly %1) unnamed_addr #5 {
  %3 = load i32, ptr %0, align 8, !tbaa !41
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !41
  %5 = icmp eq ptr %1, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = zext i32 %3 to i64
  %8 = getelementptr inbounds %struct.VEC_pragma_ns_name_base, ptr %0, i64 0, i32 2, i64 %7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !45
  br label %9

9:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_pragma_ns_name_base_space(ptr noundef readonly %0) unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_pragma_ns_name_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !46
  %6 = load i32, ptr %0, align 8, !tbaa !41
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_pragma_handler_heap_reserve() unnamed_addr #0 {
  %1 = load ptr, ptr @registered_pragmas, align 8, !tbaa !6
  %2 = tail call fastcc i32 @VEC_pragma_handler_base_space(ptr noundef %1) #13
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = tail call ptr @vec_heap_o_reserve(ptr noundef %1, i32 noundef 1, i64 noundef 8, i64 noundef 8) #12
  store ptr %5, ptr @registered_pragmas, align 8, !tbaa !6
  br label %6

6:                                                ; preds = %4, %0
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_pragma_handler_base_quick_push(ptr noundef %0, ptr noundef readonly %1) unnamed_addr #5 {
  %3 = load i32, ptr %0, align 8, !tbaa !43
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !43
  %5 = icmp eq ptr %1, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = zext i32 %3 to i64
  %8 = getelementptr inbounds %struct.VEC_pragma_handler_base, ptr %0, i64 0, i32 2, i64 %7
  %9 = load ptr, ptr %1, align 8, !tbaa !6
  store ptr %9, ptr %8, align 8, !tbaa !6
  br label %10

10:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_pragma_handler_base_space(ptr noundef readonly %0) unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_pragma_handler_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !47
  %6 = load i32, ptr %0, align 8, !tbaa !43
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @c_register_pragma_with_expansion(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  tail call fastcc void @c_register_pragma_1(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext 1) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @c_invoke_pragma_handler(i32 noundef %0) local_unnamed_addr #0 {
  %2 = add i32 %0, -18
  %3 = load ptr, ptr @registered_pragmas, align 8
  %4 = tail call fastcc ptr @VEC_pragma_handler_base_index(ptr noundef %3, i32 noundef %2) #13
  %5 = load ptr, ptr %4, align 8, !tbaa !6
  %6 = load ptr, ptr @parse_in, align 8, !tbaa !6
  tail call void %5(ptr noundef %6) #12
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @VEC_pragma_handler_base_index(ptr noundef readnone %0, i32 noundef %1) unnamed_addr #10 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_pragma_handler_base, ptr %0, i64 0, i32 2, i64 %3
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @init_pragma() local_unnamed_addr #0 {
  %1 = load i32, ptr @flag_openmp, align 4, !tbaa !30
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %12, label %3

3:                                                ; preds = %0, %3
  %4 = phi i64 [ %10, %3 ], [ 0, %0 ]
  %5 = load ptr, ptr @parse_in, align 8, !tbaa !6
  %6 = getelementptr inbounds [14 x %struct.omp_pragma_def], ptr @omp_pragmas, i64 0, i64 %4
  %7 = load ptr, ptr %6, align 16, !tbaa !37
  %8 = getelementptr inbounds [14 x %struct.omp_pragma_def], ptr @omp_pragmas, i64 0, i64 %4, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !35
  tail call void @cpp_register_deferred_pragma(ptr noundef %5, ptr noundef nonnull @.str.11, ptr noundef %7, i32 noundef %9, i8 noundef zeroext 1, i8 noundef zeroext 1) #12
  %10 = add nuw nsw i64 %4, 1
  %11 = icmp eq i64 %10, 14
  br i1 %11, label %12, label %3, !llvm.loop !48

12:                                               ; preds = %3, %0
  %13 = load i32, ptr @flag_preprocess_only, align 4, !tbaa !30
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = load ptr, ptr @parse_in, align 8, !tbaa !6
  tail call void @cpp_register_deferred_pragma(ptr noundef %16, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.29, i32 noundef 17, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  br label %17

17:                                               ; preds = %15, %12
  tail call void @c_register_pragma(ptr noundef null, ptr noundef nonnull @.str.30, ptr noundef nonnull @handle_pragma_pack) #13
  tail call void @c_register_pragma(ptr noundef null, ptr noundef nonnull @.str.31, ptr noundef nonnull @handle_pragma_weak) #13
  tail call void @c_register_pragma(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.32, ptr noundef nonnull @handle_pragma_visibility) #13
  tail call void @c_register_pragma(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.33, ptr noundef nonnull @handle_pragma_diagnostic) #13
  tail call void @c_register_pragma(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.34, ptr noundef nonnull @handle_pragma_target) #13
  tail call void @c_register_pragma(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.35, ptr noundef nonnull @handle_pragma_optimize) #13
  tail call void @c_register_pragma(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.36, ptr noundef nonnull @handle_pragma_push_options) #13
  tail call void @c_register_pragma(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.37, ptr noundef nonnull @handle_pragma_pop_options) #13
  tail call void @c_register_pragma(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.38, ptr noundef nonnull @handle_pragma_reset_options) #13
  tail call void @c_register_pragma(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40, ptr noundef nonnull @handle_pragma_float_const_decimal64) #13
  tail call void @c_register_pragma_with_expansion(ptr noundef null, ptr noundef nonnull @.str.41, ptr noundef nonnull @handle_pragma_redefine_extname) #13
  tail call void @c_register_pragma(ptr noundef null, ptr noundef nonnull @.str.42, ptr noundef nonnull @handle_pragma_extern_prefix) #13
  tail call void @c_register_pragma_with_expansion(ptr noundef null, ptr noundef nonnull @.str.43, ptr noundef nonnull @handle_pragma_message) #13
  tail call void @ix86_register_pragmas() #12
  %18 = tail call i32 @invoke_plugin_callbacks(i32 noundef 13, ptr noundef null) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @handle_pragma_pack(ptr nocapture readnone %0) #0 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #14
  %3 = call i32 @pragma_lex(ptr noundef nonnull %2) #12
  %4 = icmp eq i32 %3, 20
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 165, ptr noundef nonnull @.str.44) #12
  br label %117

7:                                                ; preds = %1
  %8 = call i32 @pragma_lex(ptr noundef nonnull %2) #12
  switch i32 %8, label %84 [
    i32 21, label %9
    i32 55, label %11
    i32 53, label %26
  ]

9:                                                ; preds = %7
  %10 = load i32, ptr @initial_max_fld_align, align 4, !tbaa !30
  br label %86

11:                                               ; preds = %7
  %12 = load ptr, ptr %2, align 8, !tbaa !6
  %13 = load i64, ptr %12, align 8
  %14 = and i64 %13, 65535
  %15 = icmp eq i64 %14, 23
  br i1 %15, label %18, label %16

16:                                               ; preds = %11
  %17 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 165, ptr noundef nonnull @.str.45) #12
  br label %117

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.tree_int_cst, ptr %12, i64 0, i32 1
  %20 = load i64, ptr %19, align 8, !tbaa !10
  %21 = trunc i64 %20 to i32
  %22 = call i32 @pragma_lex(ptr noundef nonnull %2) #12
  %23 = icmp eq i32 %22, 21
  br i1 %23, label %86, label %24

24:                                               ; preds = %18
  %25 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 165, ptr noundef nonnull @.str.46) #12
  br label %117

26:                                               ; preds = %7
  %27 = load ptr, ptr %2, align 8, !tbaa !6
  %28 = getelementptr inbounds %struct.tree_identifier, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !10
  %30 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %29, ptr noundef nonnull dereferenceable(5) @.str.47) #13
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %34, %26
  %33 = phi i32 [ 1, %26 ], [ 2, %34 ]
  br label %68

34:                                               ; preds = %26
  %35 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %29, ptr noundef nonnull dereferenceable(4) @.str.48) #13
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %32, label %37

37:                                               ; preds = %34
  %38 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 165, ptr noundef nonnull @.str.49, ptr noundef nonnull %27) #12
  br label %117

39:                                               ; preds = %68, %47
  %40 = phi ptr [ %48, %47 ], [ %71, %68 ]
  %41 = call i32 @pragma_lex(ptr noundef nonnull %2) #12
  switch i32 %41, label %78 [
    i32 19, label %42
    i32 21, label %86
  ]

42:                                               ; preds = %39
  %43 = call i32 @pragma_lex(ptr noundef nonnull %2) #12
  %44 = icmp eq i32 %43, 53
  %45 = icmp eq ptr %40, null
  %46 = select i1 %44, i1 %45, i1 false
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load ptr, ptr %2, align 8, !tbaa !6
  br label %39, !llvm.loop !49

49:                                               ; preds = %42
  %50 = icmp eq i32 %43, 55
  %51 = icmp eq i32 %70, 1
  %52 = select i1 %50, i1 %51, i1 false
  %53 = icmp eq i32 %69, -1
  %54 = select i1 %52, i1 %53, i1 false
  br i1 %54, label %55, label %72

55:                                               ; preds = %49
  %56 = load ptr, ptr %2, align 8, !tbaa !6
  %57 = load i64, ptr %56, align 8
  %58 = and i64 %57, 65535
  %59 = icmp eq i64 %58, 23
  br i1 %59, label %62, label %60

60:                                               ; preds = %55
  %61 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 165, ptr noundef nonnull @.str.45) #12
  br label %117

62:                                               ; preds = %55
  %63 = getelementptr inbounds %struct.tree_int_cst, ptr %56, i64 0, i32 1
  %64 = load i64, ptr %63, align 8, !tbaa !10
  %65 = trunc i64 %64 to i32
  %66 = icmp ne i32 %65, -1
  %67 = zext i1 %66 to i32
  br label %68, !llvm.loop !49

68:                                               ; preds = %32, %62
  %69 = phi i32 [ -1, %32 ], [ %65, %62 ]
  %70 = phi i32 [ %33, %32 ], [ %67, %62 ]
  %71 = phi ptr [ null, %32 ], [ %40, %62 ]
  br label %39

72:                                               ; preds = %49
  %73 = icmp eq i32 %70, 2
  br i1 %73, label %76, label %74

74:                                               ; preds = %72
  %75 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 165, ptr noundef nonnull @.str.50) #12
  br label %117

76:                                               ; preds = %72
  %77 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 165, ptr noundef nonnull @.str.51) #12
  br label %117

78:                                               ; preds = %39
  %79 = icmp eq i32 %70, 2
  br i1 %79, label %82, label %80

80:                                               ; preds = %78
  %81 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 165, ptr noundef nonnull @.str.50) #12
  br label %117

82:                                               ; preds = %78
  %83 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 165, ptr noundef nonnull @.str.51) #12
  br label %117

84:                                               ; preds = %7
  %85 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 165, ptr noundef nonnull @.str.46) #12
  br label %117

86:                                               ; preds = %39, %18, %9
  %87 = phi i32 [ %10, %9 ], [ %21, %18 ], [ %69, %39 ]
  %88 = phi i32 [ 0, %9 ], [ 0, %18 ], [ %70, %39 ]
  %89 = phi ptr [ null, %9 ], [ null, %18 ], [ %40, %39 ]
  %90 = call i32 @pragma_lex(ptr noundef nonnull %2) #12
  %91 = icmp eq i32 %90, 22
  br i1 %91, label %94, label %92

92:                                               ; preds = %86
  %93 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 165, ptr noundef nonnull @.str.52) #12
  br label %94

94:                                               ; preds = %92, %86
  %95 = load i32, ptr @flag_pack_struct, align 4, !tbaa !30
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %99, label %97

97:                                               ; preds = %94
  %98 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 165, ptr noundef nonnull @.str.53) #12
  br label %117

99:                                               ; preds = %94
  %100 = icmp eq i32 %88, 2
  br i1 %100, label %116, label %101

101:                                              ; preds = %99
  switch i32 %87, label %106 [
    i32 0, label %108
    i32 1, label %108
    i32 2, label %108
    i32 4, label %108
    i32 8, label %108
    i32 16, label %108
    i32 -1, label %102
  ]

102:                                              ; preds = %101
  %103 = icmp eq i32 %88, 1
  br i1 %103, label %104, label %106

104:                                              ; preds = %102
  %105 = load i32, ptr @maximum_field_alignment, align 4, !tbaa !30
  br label %114

106:                                              ; preds = %101, %102
  %107 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 165, ptr noundef nonnull @.str.54, i32 noundef %87) #12
  br label %117

108:                                              ; preds = %101, %101, %101, %101, %101, %101
  %109 = shl nuw nsw i32 %87, 3
  switch i32 %88, label %117 [
    i32 0, label %110
    i32 1, label %114
  ]

110:                                              ; preds = %108
  %111 = load ptr, ptr @alignment_stack, align 8
  %112 = icmp eq ptr %111, null
  %113 = select i1 %112, ptr @default_alignment, ptr %111
  store i32 %109, ptr %113, align 4, !tbaa !30
  store i32 %109, ptr @maximum_field_alignment, align 4, !tbaa !30
  br label %117

114:                                              ; preds = %104, %108
  %115 = phi i32 [ %105, %104 ], [ %109, %108 ]
  call fastcc void @push_alignment(i32 noundef %115, ptr noundef %89) #13
  br label %117

116:                                              ; preds = %99
  call fastcc void @pop_alignment(ptr noundef %89) #13
  br label %117

117:                                              ; preds = %82, %80, %76, %74, %60, %37, %110, %114, %116, %108, %106, %97, %84, %24, %16, %5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @handle_pragma_weak(ptr nocapture readnone %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #14
  store ptr null, ptr %3, align 8, !tbaa !6
  %5 = call i32 @pragma_lex(ptr noundef nonnull %2) #12
  %6 = icmp eq i32 %5, 53
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 165, ptr noundef nonnull @.str.57) #12
  br label %44

9:                                                ; preds = %1
  %10 = call i32 @pragma_lex(ptr noundef nonnull %4) #12
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %9
  %13 = call i32 @pragma_lex(ptr noundef nonnull %3) #12
  %14 = icmp eq i32 %13, 53
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 165, ptr noundef nonnull @.str.57) #12
  br label %44

17:                                               ; preds = %12
  %18 = call i32 @pragma_lex(ptr noundef nonnull %4) #12
  br label %19

19:                                               ; preds = %17, %9
  %20 = phi i32 [ %18, %17 ], [ %10, %9 ]
  %21 = icmp eq i32 %20, 22
  br i1 %21, label %24, label %22

22:                                               ; preds = %19
  %23 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 165, ptr noundef nonnull @.str.58) #12
  br label %24

24:                                               ; preds = %22, %19
  %25 = load ptr, ptr %2, align 8, !tbaa !6
  %26 = call ptr @identifier_global_value(ptr noundef %25) #12
  %27 = icmp eq ptr %26, null
  br i1 %27, label %39, label %28

28:                                               ; preds = %24
  %29 = load i64, ptr %26, align 8
  %30 = and i64 %29, 65535
  %31 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %30
  %32 = load i32, ptr %31, align 4, !tbaa !30
  %33 = icmp eq i32 %32, 3
  br i1 %33, label %34, label %39

34:                                               ; preds = %28
  %35 = load ptr, ptr %3, align 8, !tbaa !6
  call fastcc void @apply_pragma_weak(ptr noundef nonnull %26, ptr noundef %35) #13
  %36 = load ptr, ptr %3, align 8, !tbaa !6
  %37 = icmp eq ptr %36, null
  br i1 %37, label %44, label %38

38:                                               ; preds = %34
  call void @assemble_alias(ptr noundef nonnull %26, ptr noundef nonnull %36) #12
  br label %44

39:                                               ; preds = %28, %24
  %40 = load ptr, ptr %2, align 8, !tbaa !6
  %41 = load ptr, ptr %3, align 8, !tbaa !6
  %42 = load ptr, ptr @pending_weaks, align 8, !tbaa !6
  %43 = call ptr @tree_cons_stat(ptr noundef %40, ptr noundef %41, ptr noundef %42) #12
  store ptr %43, ptr @pending_weaks, align 8, !tbaa !6
  br label %44

44:                                               ; preds = %39, %38, %34, %15, %7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @handle_pragma_visibility(ptr nocapture readnone %0) #0 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #14
  %3 = call i32 @pragma_lex(ptr noundef nonnull %2) #12
  %4 = icmp eq i32 %3, 53
  br i1 %4, label %5, label %32

5:                                                ; preds = %1
  %6 = load ptr, ptr %2, align 8, !tbaa !6
  %7 = getelementptr inbounds %struct.tree_identifier, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !10
  %9 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(5) @.str.47) #13
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %5
  %12 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(4) @.str.48) #13
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %32

14:                                               ; preds = %11
  %15 = call zeroext i8 @pop_visibility(i32 noundef 0) #13, !range !50
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %32, label %29

17:                                               ; preds = %5
  %18 = call i32 @pragma_lex(ptr noundef nonnull %2) #12
  %19 = icmp eq i32 %18, 20
  br i1 %19, label %20, label %32

20:                                               ; preds = %17
  %21 = call i32 @pragma_lex(ptr noundef nonnull %2) #12
  %22 = icmp eq i32 %21, 53
  br i1 %22, label %23, label %32

23:                                               ; preds = %20
  %24 = load ptr, ptr %2, align 8, !tbaa !6
  %25 = getelementptr inbounds %struct.tree_identifier, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !10
  call void @push_visibility(ptr noundef %26, i32 noundef 0) #13
  %27 = call i32 @pragma_lex(ptr noundef nonnull %2) #12
  %28 = icmp eq i32 %27, 21
  br i1 %28, label %29, label %32

29:                                               ; preds = %14, %23
  %30 = call i32 @pragma_lex(ptr noundef nonnull %2) #12
  %31 = icmp eq i32 %30, 22
  br i1 %31, label %35, label %32

32:                                               ; preds = %29, %23, %20, %17, %14, %11, %1
  %33 = phi ptr [ @.str.59, %1 ], [ @.str.59, %11 ], [ @.str.60, %14 ], [ @.str.61, %17 ], [ @.str.62, %20 ], [ @.str.61, %23 ], [ @.str.63, %29 ]
  %34 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 165, ptr noundef nonnull %33) #12
  br label %35

35:                                               ; preds = %32, %29
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @handle_pragma_diagnostic(ptr nocapture readnone %0) #0 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #14
  %3 = load ptr, ptr @cfun, align 8, !tbaa !6
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.64) #12
  br label %63

6:                                                ; preds = %1
  %7 = call i32 @pragma_lex(ptr noundef nonnull %2) #12
  %8 = icmp eq i32 %7, 53
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 165, ptr noundef nonnull @.str.65) #12
  br label %63

11:                                               ; preds = %6
  %12 = load ptr, ptr %2, align 8, !tbaa !6
  %13 = getelementptr inbounds %struct.tree_identifier, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !10
  %15 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(6) @.str.66) #13
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %11
  %18 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(8) @.str.67) #13
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %17
  %21 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(8) @.str.68) #13
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %20
  %24 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 165, ptr noundef nonnull @.str.69) #12
  br label %63

25:                                               ; preds = %20, %17, %11
  %26 = phi i1 [ true, %11 ], [ true, %17 ], [ false, %20 ]
  %27 = phi i32 [ 4, %11 ], [ 6, %17 ], [ 1, %20 ]
  %28 = call i32 @pragma_lex(ptr noundef nonnull %2) #12
  %29 = icmp eq i32 %28, 61
  br i1 %29, label %32, label %30

30:                                               ; preds = %25
  %31 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 165, ptr noundef nonnull @.str.70) #12
  br label %63

32:                                               ; preds = %25
  %33 = load ptr, ptr %2, align 8, !tbaa !6
  %34 = getelementptr inbounds %struct.tree_string, ptr %33, i64 0, i32 2
  %35 = load i32, ptr @cl_options_count, align 4, !tbaa !30
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %61, label %37

37:                                               ; preds = %32
  %38 = zext i32 %35 to i64
  br label %39

39:                                               ; preds = %37, %58
  %40 = phi i64 [ 0, %37 ], [ %59, %58 ]
  %41 = getelementptr inbounds [0 x %struct.cl_option], ptr @cl_options, i64 0, i64 %40
  %42 = load ptr, ptr %41, align 8, !tbaa !51
  %43 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %42, ptr noundef nonnull dereferenceable(1) %34) #13
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %58

45:                                               ; preds = %39
  %46 = trunc i64 %40 to i32
  %47 = load ptr, ptr @global_dc, align 8, !tbaa !6
  %48 = call i32 @diagnostic_classify_diagnostic(ptr noundef %47, i32 noundef %46, i32 noundef %27) #12
  %49 = getelementptr inbounds [0 x %struct.cl_option], ptr @cl_options, i64 0, i64 %40, i32 7
  %50 = load i32, ptr %49, align 8, !tbaa !54
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %45
  %53 = getelementptr inbounds [0 x %struct.cl_option], ptr @cl_options, i64 0, i64 %40, i32 6
  %54 = load ptr, ptr %53, align 8, !tbaa !55
  %55 = icmp ne ptr %54, null
  %56 = and i1 %26, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %52
  store i32 1, ptr %54, align 4, !tbaa !30
  br label %63

58:                                               ; preds = %39
  %59 = add nuw nsw i64 %40, 1
  %60 = icmp eq i64 %59, %38
  br i1 %60, label %61, label %39, !llvm.loop !56

61:                                               ; preds = %58, %32
  %62 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 165, ptr noundef nonnull @.str.71) #12
  br label %63

63:                                               ; preds = %45, %52, %57, %61, %30, %23, %9, %5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @handle_pragma_target(ptr nocapture readnone %0) #0 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #14
  %3 = load ptr, ptr @cfun, align 8, !tbaa !6
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.72) #12
  br label %46

6:                                                ; preds = %1
  %7 = call i32 @pragma_lex(ptr noundef nonnull %2) #12
  %8 = icmp eq i32 %7, 20
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = call i32 @pragma_lex(ptr noundef nonnull %2) #12
  br label %11

11:                                               ; preds = %9, %6
  %12 = phi i32 [ %10, %9 ], [ %7, %6 ]
  %13 = icmp eq i32 %12, 61
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 165, ptr noundef nonnull @.str.73) #12
  br label %46

16:                                               ; preds = %27
  br label %17, !llvm.loop !57

17:                                               ; preds = %11, %16
  %18 = phi ptr [ %26, %16 ], [ null, %11 ]
  %19 = load ptr, ptr %2, align 8, !tbaa !6
  %20 = getelementptr inbounds %struct.tree_string, ptr %19, i64 0, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !10
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = call ptr @tree_cons_stat(ptr noundef null, ptr noundef nonnull %19, ptr noundef %18) #12
  br label %25

25:                                               ; preds = %23, %17
  %26 = phi ptr [ %24, %23 ], [ %18, %17 ]
  br label %27

27:                                               ; preds = %27, %25
  %28 = call i32 @pragma_lex(ptr noundef nonnull %2) #12
  switch i32 %28, label %29 [
    i32 19, label %27
    i32 61, label %16
  ], !llvm.loop !57

29:                                               ; preds = %27
  br i1 %8, label %30, label %36

30:                                               ; preds = %29
  %31 = icmp eq i32 %28, 21
  br i1 %31, label %32, label %34

32:                                               ; preds = %30
  %33 = call i32 @pragma_lex(ptr noundef nonnull %2) #12
  br label %36

34:                                               ; preds = %30
  %35 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 165, ptr noundef nonnull @.str.74) #12
  br label %46

36:                                               ; preds = %32, %29
  %37 = phi i32 [ %33, %32 ], [ %28, %29 ]
  %38 = icmp eq i32 %37, 22
  br i1 %38, label %40, label %39

39:                                               ; preds = %36
  call void (ptr, ...) @error(ptr noundef nonnull @.str.75) #12
  br label %46

40:                                               ; preds = %36
  %41 = call ptr @nreverse(ptr noundef %26) #12
  %42 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 107, i32 4), align 8, !tbaa !58
  %43 = call zeroext i8 %42(ptr noundef %41, ptr noundef null) #12
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %40
  store ptr %41, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 129), align 8, !tbaa !6
  br label %46

46:                                               ; preds = %34, %39, %45, %40, %14, %5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @handle_pragma_optimize(ptr nocapture readnone %0) #0 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #14
  %3 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 126), align 16, !tbaa !6
  %4 = load ptr, ptr @cfun, align 8, !tbaa !6
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.76) #12
  br label %51

7:                                                ; preds = %1
  %8 = call i32 @pragma_lex(ptr noundef nonnull %2) #12
  %9 = icmp eq i32 %8, 20
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = call i32 @pragma_lex(ptr noundef nonnull %2) #12
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
  %16 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 165, ptr noundef nonnull @.str.77) #12
  br label %51

17:                                               ; preds = %31, %31
  br label %18

18:                                               ; preds = %14, %17
  %19 = phi i32 [ %32, %17 ], [ %13, %14 ]
  %20 = phi ptr [ %30, %17 ], [ null, %14 ]
  %21 = icmp eq i32 %19, 61
  %22 = load ptr, ptr %2, align 8, !tbaa !6
  br i1 %21, label %23, label %27

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.tree_string, ptr %22, i64 0, i32 1
  %25 = load i32, ptr %24, align 8, !tbaa !10
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %23, %18
  %28 = call ptr @tree_cons_stat(ptr noundef null, ptr noundef %22, ptr noundef %20) #12
  br label %29

29:                                               ; preds = %27, %23
  %30 = phi ptr [ %28, %27 ], [ %20, %23 ]
  br label %31

31:                                               ; preds = %31, %29
  %32 = call i32 @pragma_lex(ptr noundef nonnull %2) #12
  switch i32 %32, label %33 [
    i32 19, label %31
    i32 61, label %17
    i32 55, label %17
  ], !llvm.loop !59

33:                                               ; preds = %31
  br i1 %9, label %34, label %40

34:                                               ; preds = %33
  %35 = icmp eq i32 %32, 21
  br i1 %35, label %36, label %38

36:                                               ; preds = %34
  %37 = call i32 @pragma_lex(ptr noundef nonnull %2) #12
  br label %40

38:                                               ; preds = %34
  %39 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 165, ptr noundef nonnull @.str.78) #12
  br label %51

40:                                               ; preds = %36, %33
  %41 = phi i32 [ %37, %36 ], [ %32, %33 ]
  %42 = icmp eq i32 %41, 22
  br i1 %42, label %44, label %43

43:                                               ; preds = %40
  call void (ptr, ...) @error(ptr noundef nonnull @.str.79) #12
  br label %51

44:                                               ; preds = %40
  %45 = call ptr @nreverse(ptr noundef %30) #12
  %46 = call zeroext i8 @parse_optimize_options(ptr noundef %45, i8 noundef zeroext 0) #12
  %47 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 130), align 16, !tbaa !6
  %48 = call ptr @chainon(ptr noundef %47, ptr noundef %45) #12
  store ptr %48, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 130), align 16, !tbaa !6
  %49 = call ptr @build_optimization_node() #12
  store ptr %49, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 126), align 16, !tbaa !6
  %50 = load ptr, ptr @parse_in, align 8, !tbaa !6
  call void @c_cpp_builtins_optimize_pragma(ptr noundef %50, ptr noundef %3, ptr noundef %49) #12
  br label %51

51:                                               ; preds = %38, %43, %44, %15, %6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @handle_pragma_push_options(ptr nocapture readnone %0) #0 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #14
  store ptr null, ptr %2, align 8, !tbaa !6
  %3 = call i32 @pragma_lex(ptr noundef nonnull %2) #12
  %4 = icmp eq i32 %3, 22
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 165, ptr noundef nonnull @.str.80) #12
  br label %20

7:                                                ; preds = %1
  %8 = call ptr @ggc_alloc_stat(i64 noundef 40) #12
  %9 = load ptr, ptr @options_stack, align 8, !tbaa !6
  store ptr %9, ptr %8, align 8, !tbaa !60
  store ptr %8, ptr @options_stack, align 8, !tbaa !6
  %10 = call ptr @build_optimization_node() #12
  %11 = getelementptr inbounds %struct.opt_stack, ptr %8, i64 0, i32 3
  store ptr %10, ptr %11, align 8, !tbaa !62
  %12 = call ptr @build_target_option_node() #12
  %13 = getelementptr inbounds %struct.opt_stack, ptr %8, i64 0, i32 1
  store ptr %12, ptr %13, align 8, !tbaa !63
  %14 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 130), align 16, !tbaa !6
  %15 = call ptr @copy_list(ptr noundef %14) #12
  %16 = getelementptr inbounds %struct.opt_stack, ptr %8, i64 0, i32 4
  store ptr %15, ptr %16, align 8, !tbaa !64
  %17 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 129), align 8, !tbaa !6
  %18 = call ptr @copy_list(ptr noundef %17) #12
  %19 = getelementptr inbounds %struct.opt_stack, ptr %8, i64 0, i32 2
  store ptr %18, ptr %19, align 8, !tbaa !65
  br label %20

20:                                               ; preds = %7, %5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @handle_pragma_pop_options(ptr nocapture readnone %0) #0 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #14
  store ptr null, ptr %2, align 8, !tbaa !6
  %3 = call i32 @pragma_lex(ptr noundef nonnull %2) #12
  %4 = icmp eq i32 %3, 22
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 165, ptr noundef nonnull @.str.81) #12
  br label %37

7:                                                ; preds = %1
  %8 = load ptr, ptr @options_stack, align 8, !tbaa !6
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 165, ptr noundef nonnull @.str.82) #12
  br label %37

12:                                               ; preds = %7
  %13 = load ptr, ptr %8, align 8, !tbaa !60
  store ptr %13, ptr @options_stack, align 8, !tbaa !6
  %14 = getelementptr inbounds %struct.opt_stack, ptr %8, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !63
  %16 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 128), align 16, !tbaa !6
  %17 = icmp eq ptr %15, %16
  br i1 %17, label %22, label %18

18:                                               ; preds = %12
  %19 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 107, i32 4), align 8, !tbaa !58
  %20 = call zeroext i8 %19(ptr noundef null, ptr noundef %15) #12
  %21 = load ptr, ptr %14, align 8, !tbaa !63
  store ptr %21, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 128), align 16, !tbaa !6
  br label %22

22:                                               ; preds = %18, %12
  %23 = getelementptr inbounds %struct.opt_stack, ptr %8, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !62
  %25 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 126), align 16, !tbaa !6
  %26 = icmp eq ptr %24, %25
  br i1 %26, label %32, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.tree_optimization_option, ptr %24, i64 0, i32 1
  call void @cl_optimization_restore(ptr noundef nonnull %28) #12
  %29 = load ptr, ptr @parse_in, align 8, !tbaa !6
  %30 = load ptr, ptr %23, align 8, !tbaa !62
  call void @c_cpp_builtins_optimize_pragma(ptr noundef %29, ptr noundef %25, ptr noundef %30) #12
  %31 = load ptr, ptr %23, align 8, !tbaa !62
  store ptr %31, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 126), align 16, !tbaa !6
  br label %32

32:                                               ; preds = %27, %22
  %33 = getelementptr inbounds %struct.opt_stack, ptr %8, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !65
  store ptr %34, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 129), align 8, !tbaa !6
  %35 = getelementptr inbounds %struct.opt_stack, ptr %8, i64 0, i32 4
  %36 = load ptr, ptr %35, align 8, !tbaa !64
  store ptr %36, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 130), align 16, !tbaa !6
  br label %37

37:                                               ; preds = %32, %10, %5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @handle_pragma_reset_options(ptr nocapture readnone %0) #0 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #14
  store ptr null, ptr %2, align 8, !tbaa !6
  %3 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 125), align 8, !tbaa !6
  %4 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 127), align 8, !tbaa !6
  %5 = call i32 @pragma_lex(ptr noundef nonnull %2) #12
  %6 = icmp eq i32 %5, 22
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 165, ptr noundef nonnull @.str.83) #12
  br label %22

9:                                                ; preds = %1
  %10 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 128), align 16, !tbaa !6
  %11 = icmp eq ptr %4, %10
  br i1 %11, label %15, label %12

12:                                               ; preds = %9
  %13 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 107, i32 4), align 8, !tbaa !58
  %14 = call zeroext i8 %13(ptr noundef null, ptr noundef %4) #12
  store ptr %4, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 128), align 16, !tbaa !6
  br label %15

15:                                               ; preds = %12, %9
  %16 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 126), align 16, !tbaa !6
  %17 = icmp eq ptr %3, %16
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.tree_optimization_option, ptr %3, i64 0, i32 1
  call void @cl_optimization_restore(ptr noundef nonnull %19) #12
  %20 = load ptr, ptr @parse_in, align 8, !tbaa !6
  call void @c_cpp_builtins_optimize_pragma(ptr noundef %20, ptr noundef %16, ptr noundef %3) #12
  store ptr %3, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 126), align 16, !tbaa !6
  br label %21

21:                                               ; preds = %18, %15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 129), i8 0, i64 16, i1 false)
  br label %22

22:                                               ; preds = %21, %7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @handle_pragma_float_const_decimal64(ptr nocapture readnone %0) #0 {
  %2 = alloca %struct.expanded_location, align 8
  %3 = alloca %struct.expanded_location, align 8
  %4 = load i32, ptr @c_language, align 4, !tbaa !30
  %5 = and i32 %4, 2
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %17, label %7

7:                                                ; preds = %1
  %8 = load i32, ptr @warn_unknown_pragmas, align 4, !tbaa !30
  %9 = load i32, ptr @input_location, align 4, !tbaa !30
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %2, i32 noundef %9) #12
  %10 = getelementptr inbounds %struct.expanded_location, ptr %2, i64 0, i32 3
  %11 = load i8, ptr %10, align 8, !tbaa !66
  %12 = icmp ne i8 %11, 0
  %13 = zext i1 %12 to i32
  %14 = icmp sgt i32 %8, %13
  br i1 %14, label %15, label %37

15:                                               ; preds = %7
  %16 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 212, ptr noundef nonnull @.str.84) #12
  br label %37

17:                                               ; preds = %1
  %18 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 19), align 8, !tbaa !68
  %19 = tail call zeroext i8 %18() #12
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %17
  %22 = load i32, ptr @warn_unknown_pragmas, align 4, !tbaa !30
  %23 = load i32, ptr @input_location, align 4, !tbaa !30
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %3, i32 noundef %23) #12
  %24 = getelementptr inbounds %struct.expanded_location, ptr %3, i64 0, i32 3
  %25 = load i8, ptr %24, align 8, !tbaa !66
  %26 = icmp ne i8 %25, 0
  %27 = zext i1 %26 to i32
  %28 = icmp sgt i32 %22, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %21
  %30 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 212, ptr noundef nonnull @.str.85) #12
  br label %37

31:                                               ; preds = %17
  %32 = load i32, ptr @input_location, align 4, !tbaa !30
  %33 = tail call zeroext i8 (i32, i32, ptr, ...) @pedwarn(i32 noundef %32, i32 noundef 834, ptr noundef nonnull @.str.86) #12
  %34 = tail call fastcc i32 @handle_stdc_pragma() #13
  switch i32 %34, label %37 [
    i32 0, label %35
    i32 1, label %36
    i32 2, label %36
  ]

35:                                               ; preds = %31
  tail call void @set_float_const_decimal64() #12
  br label %37

36:                                               ; preds = %31, %31
  tail call void @clear_float_const_decimal64() #12
  br label %37

37:                                               ; preds = %21, %29, %7, %15, %31, %36, %35
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @handle_pragma_redefine_extname(ptr nocapture readnone %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #14
  %5 = call i32 @pragma_lex(ptr noundef nonnull %2) #12
  %6 = icmp eq i32 %5, 53
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 165, ptr noundef nonnull @.str.94) #12
  br label %65

9:                                                ; preds = %1
  %10 = call i32 @pragma_lex(ptr noundef nonnull %3) #12
  %11 = icmp eq i32 %10, 53
  br i1 %11, label %14, label %12

12:                                               ; preds = %9
  %13 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 165, ptr noundef nonnull @.str.94) #12
  br label %65

14:                                               ; preds = %9
  %15 = call i32 @pragma_lex(ptr noundef nonnull %4) #12
  %16 = icmp eq i32 %15, 22
  br i1 %16, label %19, label %17

17:                                               ; preds = %14
  %18 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 165, ptr noundef nonnull @.str.95) #12
  br label %19

19:                                               ; preds = %17, %14
  %20 = load ptr, ptr %2, align 8, !tbaa !6
  %21 = call ptr @identifier_global_value(ptr noundef %20) #12
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
  %35 = call zeroext i8 @has_c_linkage(ptr noundef nonnull %21) #12
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %62, label %37

37:                                               ; preds = %34
  %38 = load i64, ptr %21, align 8
  %39 = and i64 %38, 65535
  %40 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %39, i64 13
  %41 = load i8, ptr %40, align 1, !tbaa !10
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %60, label %43

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %21, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !10
  %46 = icmp eq ptr %45, null
  br i1 %46, label %60, label %47

47:                                               ; preds = %43
  %48 = call ptr @decl_assembler_name(ptr noundef nonnull %21) #12
  %49 = getelementptr inbounds %struct.tree_identifier, ptr %48, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !10
  %51 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 52), align 8, !tbaa !14
  %52 = call ptr %51(ptr noundef %50) #12
  %53 = load ptr, ptr %3, align 8, !tbaa !6
  %54 = getelementptr inbounds %struct.tree_identifier, ptr %53, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !10
  %56 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %52, ptr noundef nonnull dereferenceable(1) %55) #13
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %65, label %58

58:                                               ; preds = %47
  %59 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 165, ptr noundef nonnull @.str.4) #12
  br label %65

60:                                               ; preds = %43, %37
  %61 = load ptr, ptr %3, align 8, !tbaa !6
  call void @change_decl_assembler_name(ptr noundef nonnull %21, ptr noundef %61) #12
  br label %65

62:                                               ; preds = %32, %34, %27, %19
  %63 = load ptr, ptr %2, align 8, !tbaa !6
  %64 = load ptr, ptr %3, align 8, !tbaa !6
  call void @add_to_renaming_pragma_list(ptr noundef %63, ptr noundef %64) #13
  br label %65

65:                                               ; preds = %62, %60, %58, %47, %12, %7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @handle_pragma_extern_prefix(ptr nocapture readnone %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca %struct.expanded_location, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #14
  %5 = call i32 @pragma_lex(ptr noundef nonnull %2) #12
  %6 = icmp eq i32 %5, 61
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 165, ptr noundef nonnull @.str.96) #12
  br label %33

9:                                                ; preds = %1
  %10 = call i32 @pragma_lex(ptr noundef nonnull %3) #12
  %11 = icmp eq i32 %10, 22
  br i1 %11, label %14, label %12

12:                                               ; preds = %9
  %13 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 165, ptr noundef nonnull @.str.97) #12
  br label %14

14:                                               ; preds = %12, %9
  %15 = load i8, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 118), align 1, !tbaa !69
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %14
  %18 = load ptr, ptr %2, align 8
  %19 = getelementptr inbounds %struct.tree_string, ptr %18, i64 0, i32 1
  %20 = load i32, ptr %19, align 8, !tbaa !10
  %21 = icmp sgt i32 %20, 1
  %22 = select i1 %21, ptr %18, ptr null
  store ptr %22, ptr @pragma_extern_prefix, align 8, !tbaa !6
  br label %33

23:                                               ; preds = %14
  %24 = load i32, ptr @warn_unknown_pragmas, align 4, !tbaa !30
  %25 = load i32, ptr @input_location, align 4, !tbaa !30
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %4, i32 noundef %25) #12
  %26 = getelementptr inbounds %struct.expanded_location, ptr %4, i64 0, i32 3
  %27 = load i8, ptr %26, align 8, !tbaa !66
  %28 = icmp ne i8 %27, 0
  %29 = zext i1 %28 to i32
  %30 = icmp sgt i32 %24, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %23
  %32 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 212, ptr noundef nonnull @.str.98) #12
  br label %33

33:                                               ; preds = %17, %31, %23, %7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @handle_pragma_message(ptr nocapture readnone %0) #0 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #14
  %3 = call i32 @pragma_lex(ptr noundef nonnull %2) #12
  switch i32 %3, label %17 [
    i32 20, label %4
    i32 61, label %15
  ]

4:                                                ; preds = %1
  %5 = call i32 @pragma_lex(ptr noundef nonnull %2) #12
  %6 = icmp eq i32 %5, 61
  br i1 %6, label %7, label %11

7:                                                ; preds = %4
  %8 = load ptr, ptr %2, align 8, !tbaa !6
  %9 = call i32 @pragma_lex(ptr noundef nonnull %2) #12
  %10 = icmp eq i32 %9, 21
  br i1 %10, label %19, label %13

11:                                               ; preds = %4
  %12 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 165, ptr noundef nonnull @.str.99) #12
  br label %35

13:                                               ; preds = %7
  %14 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 165, ptr noundef nonnull @.str.100) #12
  br label %35

15:                                               ; preds = %1
  %16 = load ptr, ptr %2, align 8, !tbaa !6
  br label %19

17:                                               ; preds = %1
  %18 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 165, ptr noundef nonnull @.str.99) #12
  br label %35

19:                                               ; preds = %7, %15
  %20 = phi ptr [ %8, %7 ], [ %16, %15 ]
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  call void @fancy_abort(ptr noundef nonnull @.str.12, i32 noundef 1018, ptr noundef nonnull @.str.13) #12
  br label %23

23:                                               ; preds = %19, %22
  %24 = call i32 @pragma_lex(ptr noundef nonnull %2) #12
  %25 = icmp eq i32 %24, 22
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  %27 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 165, ptr noundef nonnull @.str.101) #12
  br label %28

28:                                               ; preds = %26, %23
  %29 = getelementptr inbounds %struct.tree_string, ptr %20, i64 0, i32 1
  %30 = load i32, ptr %29, align 8, !tbaa !10
  %31 = icmp sgt i32 %30, 1
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load i32, ptr @input_location, align 4, !tbaa !30
  %34 = getelementptr inbounds %struct.tree_string, ptr %20, i64 0, i32 2
  call void (i32, ptr, ...) @inform(i32 noundef %33, ptr noundef nonnull @.str.102, ptr noundef nonnull %34) #12
  br label %35

35:                                               ; preds = %28, %32, %17, %13, %11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #14
  ret void
}

; Function Attrs: optsize
declare void @ix86_register_pragmas() local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @invoke_plugin_callbacks(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @pragma_lex(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @push_alignment(i32 noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call ptr @ggc_alloc_stat(i64 noundef 24) #12
  store i32 %0, ptr %3, align 8, !tbaa !70
  %4 = getelementptr inbounds %struct.align_stack, ptr %3, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !72
  %5 = load ptr, ptr @alignment_stack, align 8, !tbaa !6
  %6 = getelementptr inbounds %struct.align_stack, ptr %3, i64 0, i32 2
  store ptr %5, ptr %6, align 8, !tbaa !73
  %7 = icmp eq ptr %5, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load i32, ptr @maximum_field_alignment, align 4, !tbaa !30
  store i32 %9, ptr @default_alignment, align 4, !tbaa !30
  br label %10

10:                                               ; preds = %8, %2
  store ptr %3, ptr @alignment_stack, align 8, !tbaa !6
  store i32 %0, ptr @maximum_field_alignment, align 4, !tbaa !30
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @pop_alignment(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @alignment_stack, align 8, !tbaa !6
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 165, ptr noundef nonnull @.str.55) #12
  br label %27

6:                                                ; preds = %1
  %7 = icmp eq ptr %0, null
  br i1 %7, label %20, label %8

8:                                                ; preds = %6, %13
  %9 = phi ptr [ %15, %13 ], [ %2, %6 ]
  %10 = getelementptr inbounds %struct.align_stack, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !72
  %12 = icmp eq ptr %11, %0
  br i1 %12, label %20, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.align_stack, ptr %9, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !73
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %8, !llvm.loop !74

17:                                               ; preds = %13
  %18 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 165, ptr noundef nonnull @.str.56, ptr noundef nonnull %0, ptr noundef nonnull %0) #12
  %19 = load ptr, ptr @alignment_stack, align 8, !tbaa !6
  br label %20

20:                                               ; preds = %8, %17, %6
  %21 = phi ptr [ %19, %17 ], [ %2, %6 ], [ %9, %8 ]
  %22 = getelementptr inbounds %struct.align_stack, ptr %21, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !73
  %24 = icmp eq ptr %23, null
  %25 = select i1 %24, ptr @default_alignment, ptr %23
  %26 = load i32, ptr %25, align 4, !tbaa !30
  store i32 %26, ptr @maximum_field_alignment, align 4, !tbaa !30
  store ptr %23, ptr @alignment_stack, align 8, !tbaa !6
  br label %27

27:                                               ; preds = %20, %4
  ret void
}

; Function Attrs: optsize
declare ptr @ggc_alloc_stat(i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @identifier_global_value(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @error(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @diagnostic_classify_diagnostic(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @nreverse(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @parse_optimize_options(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @chainon(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build_optimization_node() local_unnamed_addr #2

; Function Attrs: optsize
declare void @c_cpp_builtins_optimize_pragma(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build_target_option_node() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @copy_list(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @cl_optimization_restore(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @expand_location(ptr dead_on_unwind writable sret(%struct.expanded_location) align 8, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @pedwarn(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @handle_stdc_pragma() unnamed_addr #0 {
  %1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #14
  %2 = tail call zeroext i8 @valid_location_for_stdc_pragma_p() #13
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 165, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.87) #12
  br label %31

6:                                                ; preds = %0
  %7 = call i32 @pragma_lex(ptr noundef nonnull %1) #12
  %8 = icmp eq i32 %7, 53
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 165, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.87) #12
  br label %31

11:                                               ; preds = %6
  %12 = load ptr, ptr %1, align 8, !tbaa !6
  %13 = getelementptr inbounds %struct.tree_identifier, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !10
  %15 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(3) @.str.90) #13
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %11
  %18 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(4) @.str.91) #13
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %17
  %21 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(8) @.str.92) #13
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %20
  %24 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 165, ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.87) #12
  br label %31

25:                                               ; preds = %20, %17, %11
  %26 = phi i32 [ 0, %11 ], [ 1, %17 ], [ 2, %20 ]
  %27 = call i32 @pragma_lex(ptr noundef nonnull %1) #12
  %28 = icmp eq i32 %27, 22
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  %30 = call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 165, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.87) #12
  br label %31

31:                                               ; preds = %25, %29, %23, %9, %4
  %32 = phi i32 [ 3, %9 ], [ 3, %23 ], [ 3, %29 ], [ 3, %4 ], [ %26, %25 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #14
  ret i32 %32
}

; Function Attrs: optsize
declare void @set_float_const_decimal64() local_unnamed_addr #2

; Function Attrs: optsize
declare void @clear_float_const_decimal64() local_unnamed_addr #2

; Function Attrs: optsize
declare void @change_decl_assembler_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @inform(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_mx_opt_stack(ptr noundef %0) #0 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %30, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #12
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %30

6:                                                ; preds = %3
  %7 = load ptr, ptr %0, align 8, !tbaa !60
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @gt_ggc_mx_opt_stack(ptr noundef nonnull %7) #13
  br label %10

10:                                               ; preds = %6, %9
  %11 = getelementptr inbounds %struct.opt_stack, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !63
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %12) #12
  br label %15

15:                                               ; preds = %10, %14
  %16 = getelementptr inbounds %struct.opt_stack, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !65
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %17) #12
  br label %20

20:                                               ; preds = %15, %19
  %21 = getelementptr inbounds %struct.opt_stack, ptr %0, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !62
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %22) #12
  br label %25

25:                                               ; preds = %20, %24
  %26 = getelementptr inbounds %struct.opt_stack, ptr %0, i64 0, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !64
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %27) #12
  br label %30

30:                                               ; preds = %1, %25, %29, %3
  ret void
}

; Function Attrs: optsize
declare i32 @ggc_set_mark(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @gt_ggc_mx_lang_tree_node(ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_mx_align_stack(ptr noundef %0) #0 {
  br label %2

2:                                                ; preds = %13, %1
  %3 = phi ptr [ %0, %1 ], [ %15, %13 ]
  %4 = icmp ult ptr %3, inttoptr (i64 2 to ptr)
  br i1 %4, label %17, label %5

5:                                                ; preds = %2
  %6 = tail call i32 @ggc_set_mark(ptr noundef nonnull %3) #12
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %17

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.align_stack, ptr %3, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !72
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %10) #12
  br label %13

13:                                               ; preds = %8, %12
  %14 = getelementptr inbounds %struct.align_stack, ptr %3, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !73
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %2

17:                                               ; preds = %2, %13, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_nx_opt_stack(ptr noundef %0) #0 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_9opt_stack, i32 noundef 19) #12
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %28, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %0, align 8, !tbaa !60
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @gt_pch_nx_opt_stack(ptr noundef nonnull %5) #13
  br label %8

8:                                                ; preds = %4, %7
  %9 = getelementptr inbounds %struct.opt_stack, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !63
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %10) #12
  br label %13

13:                                               ; preds = %8, %12
  %14 = getelementptr inbounds %struct.opt_stack, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !65
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %15) #12
  br label %18

18:                                               ; preds = %13, %17
  %19 = getelementptr inbounds %struct.opt_stack, ptr %0, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !62
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %20) #12
  br label %23

23:                                               ; preds = %18, %22
  %24 = getelementptr inbounds %struct.opt_stack, ptr %0, i64 0, i32 4
  %25 = load ptr, ptr %24, align 8, !tbaa !64
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %25) #12
  br label %28

28:                                               ; preds = %23, %27, %1
  ret void
}

; Function Attrs: optsize
declare i32 @gt_pch_note_object(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_p_9opt_stack(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %11

6:                                                ; preds = %4
  tail call void %2(ptr noundef %1, ptr noundef %3) #12
  %7 = getelementptr inbounds %struct.opt_stack, ptr %1, i64 0, i32 1
  tail call void %2(ptr noundef nonnull %7, ptr noundef %3) #12
  %8 = getelementptr inbounds %struct.opt_stack, ptr %1, i64 0, i32 2
  tail call void %2(ptr noundef nonnull %8, ptr noundef %3) #12
  %9 = getelementptr inbounds %struct.opt_stack, ptr %1, i64 0, i32 3
  tail call void %2(ptr noundef nonnull %9, ptr noundef %3) #12
  %10 = getelementptr inbounds %struct.opt_stack, ptr %1, i64 0, i32 4
  tail call void %2(ptr noundef nonnull %10, ptr noundef %3) #12
  br label %11

11:                                               ; preds = %4, %6
  ret void
}

; Function Attrs: optsize
declare void @gt_pch_nx_lang_tree_node(ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_nx_align_stack(ptr noundef %0) #0 {
  br label %2

2:                                                ; preds = %11, %1
  %3 = phi ptr [ %0, %1 ], [ %13, %11 ]
  %4 = tail call i32 @gt_pch_note_object(ptr noundef %3, ptr noundef %3, ptr noundef nonnull @gt_pch_p_11align_stack, i32 noundef 20) #12
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %15, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.align_stack, ptr %3, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !72
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %8) #12
  br label %11

11:                                               ; preds = %6, %10
  %12 = getelementptr inbounds %struct.align_stack, ptr %3, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !73
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %2

15:                                               ; preds = %11, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_p_11align_stack(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %9

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.align_stack, ptr %1, i64 0, i32 1
  tail call void %2(ptr noundef nonnull %7, ptr noundef %3) #12
  %8 = getelementptr inbounds %struct.align_stack, ptr %1, i64 0, i32 2
  tail call void %2(ptr noundef nonnull %8, ptr noundef %3) #12
  br label %9

9:                                                ; preds = %4, %6
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { nounwind optsize }
attributes #13 = { optsize }
attributes #14 = { nounwind }

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
!10 = !{!8, !8, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !12}
!14 = !{!15, !7, i64 1136}
!15 = !{!"gcc_target", !16, i64 0, !18, i64 368, !19, i64 664, !20, i64 744, !7, i64 752, !7, i64 760, !7, i64 768, !7, i64 776, !7, i64 784, !7, i64 792, !7, i64 800, !7, i64 808, !7, i64 816, !7, i64 824, !7, i64 832, !7, i64 840, !7, i64 848, !7, i64 856, !7, i64 864, !7, i64 872, !7, i64 880, !7, i64 888, !7, i64 896, !7, i64 904, !7, i64 912, !7, i64 920, !7, i64 928, !7, i64 936, !7, i64 944, !7, i64 952, !7, i64 960, !7, i64 968, !7, i64 976, !7, i64 984, !7, i64 992, !7, i64 1000, !7, i64 1008, !7, i64 1016, !7, i64 1024, !7, i64 1032, !7, i64 1040, !7, i64 1048, !7, i64 1056, !21, i64 1064, !21, i64 1072, !7, i64 1080, !7, i64 1088, !7, i64 1096, !7, i64 1104, !7, i64 1112, !7, i64 1120, !7, i64 1128, !7, i64 1136, !7, i64 1144, !7, i64 1152, !7, i64 1160, !7, i64 1168, !22, i64 1176, !7, i64 1232, !7, i64 1240, !7, i64 1248, !7, i64 1256, !7, i64 1264, !7, i64 1272, !7, i64 1280, !7, i64 1288, !7, i64 1296, !7, i64 1304, !7, i64 1312, !7, i64 1320, !7, i64 1328, !7, i64 1336, !7, i64 1344, !7, i64 1352, !7, i64 1360, !7, i64 1368, !7, i64 1376, !7, i64 1384, !7, i64 1392, !7, i64 1400, !7, i64 1408, !7, i64 1416, !7, i64 1424, !7, i64 1432, !7, i64 1440, !7, i64 1448, !7, i64 1456, !21, i64 1464, !23, i64 1472, !7, i64 1664, !7, i64 1672, !7, i64 1680, !7, i64 1688, !7, i64 1696, !7, i64 1704, !7, i64 1712, !7, i64 1720, !7, i64 1728, !7, i64 1736, !7, i64 1744, !7, i64 1752, !7, i64 1760, !7, i64 1768, !7, i64 1776, !24, i64 1784, !25, i64 1792, !26, i64 1896, !27, i64 1968, !7, i64 2016, !8, i64 2024, !8, i64 2025, !8, i64 2026, !8, i64 2027, !8, i64 2028, !8, i64 2029, !8, i64 2030, !8, i64 2031, !8, i64 2032, !8, i64 2033, !8, i64 2034, !8, i64 2035}
!16 = !{!"asm_out", !7, i64 0, !7, i64 8, !7, i64 16, !17, i64 24, !17, i64 56, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152, !7, i64 160, !7, i64 168, !7, i64 176, !7, i64 184, !7, i64 192, !7, i64 200, !7, i64 208, !7, i64 216, !7, i64 224, !7, i64 232, !7, i64 240, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !7, i64 280, !7, i64 288, !7, i64 296, !7, i64 304, !7, i64 312, !7, i64 320, !7, i64 328, !7, i64 336, !7, i64 344, !7, i64 352, !7, i64 360}
!17 = !{!"asm_int_op", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24}
!18 = !{!"sched", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152, !7, i64 160, !7, i64 168, !7, i64 176, !7, i64 184, !7, i64 192, !7, i64 200, !7, i64 208, !7, i64 216, !7, i64 224, !7, i64 232, !7, i64 240, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !7, i64 280, !7, i64 288}
!19 = !{!"vectorize", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72}
!20 = !{!"int", !8, i64 0}
!21 = !{!"long", !8, i64 0}
!22 = !{!"addr_space", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48}
!23 = !{!"calls", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152, !7, i64 160, !7, i64 168, !7, i64 176, !7, i64 184}
!24 = !{!"c", !7, i64 0}
!25 = !{!"cxx", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96}
!26 = !{!"emutls", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !8, i64 64, !8, i64 65}
!27 = !{!"target_option_hooks", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40}
!28 = distinct !{!28, !12}
!29 = distinct !{!29, !12}
!30 = !{!20, !20, i64 0}
!31 = !{!32, !20, i64 0}
!32 = !{!"VEC_int_base", !20, i64 0, !20, i64 4, !8, i64 8}
!33 = !{!32, !20, i64 4}
!34 = distinct !{!34, !12}
!35 = !{!36, !20, i64 8}
!36 = !{!"omp_pragma_def", !7, i64 0, !20, i64 8}
!37 = !{!36, !7, i64 0}
!38 = !{!39, !7, i64 0}
!39 = !{!"", !7, i64 0, !7, i64 8}
!40 = !{!39, !7, i64 8}
!41 = !{!42, !20, i64 0}
!42 = !{!"VEC_pragma_ns_name_base", !20, i64 0, !20, i64 4, !8, i64 8}
!43 = !{!44, !20, i64 0}
!44 = !{!"VEC_pragma_handler_base", !20, i64 0, !20, i64 4, !8, i64 8}
!45 = !{i64 0, i64 8, !6, i64 8, i64 8, !6}
!46 = !{!42, !20, i64 4}
!47 = !{!44, !20, i64 4}
!48 = distinct !{!48, !12}
!49 = distinct !{!49, !12}
!50 = !{i8 0, i8 2}
!51 = !{!52, !7, i64 0}
!52 = !{!"cl_option", !7, i64 0, !7, i64 8, !53, i64 16, !8, i64 18, !20, i64 20, !20, i64 24, !7, i64 32, !20, i64 40, !20, i64 44}
!53 = !{!"short", !8, i64 0}
!54 = !{!52, !20, i64 40}
!55 = !{!52, !7, i64 32}
!56 = distinct !{!56, !12}
!57 = distinct !{!57, !12}
!58 = !{!15, !7, i64 2000}
!59 = distinct !{!59, !12}
!60 = !{!61, !7, i64 0}
!61 = !{!"opt_stack", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32}
!62 = !{!61, !7, i64 24}
!63 = !{!61, !7, i64 8}
!64 = !{!61, !7, i64 32}
!65 = !{!61, !7, i64 16}
!66 = !{!67, !8, i64 16}
!67 = !{!"", !7, i64 0, !20, i64 8, !20, i64 12, !8, i64 16}
!68 = !{!15, !7, i64 872}
!69 = !{!15, !8, i64 2033}
!70 = !{!71, !20, i64 0}
!71 = !{!"align_stack", !20, i64 0, !7, i64 8, !7, i64 16}
!72 = !{!71, !7, i64 8}
!73 = !{!71, !7, i64 16}
!74 = distinct !{!74, !12}

; ModuleID = 'gimple-pretty-print.c'
source_filename = "gimple-pretty-print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.pretty_print_info = type { ptr, ptr, i32, i32, i32, %struct.pp_wrapping_mode_t, ptr, i8, i8, i8 }
%struct.pp_wrapping_mode_t = type { i32, i32 }
%struct.output_buffer = type { %struct.obstack, %struct.obstack, ptr, ptr, ptr, i32, [128 x i8] }
%struct.obstack = type { i64, ptr, ptr, ptr, ptr, i64, i32, ptr, ptr, ptr, i8 }
%struct.expanded_location = type { ptr, i32, i32, i8 }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_label_decl = type { %struct.tree_decl_with_rtl, i32, i32 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.gimple_statement_with_memory_ops_base = type { %struct.gimple_statement_with_ops_base, ptr, ptr }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.gimple_statement_asm = type { %struct.gimple_statement_with_memory_ops_base, ptr, i8, i8, i8, i8, [1 x ptr] }
%struct.gimple_statement_bind = type { %struct.gimple_statement_base, ptr, ptr, ptr }
%struct.gimple_statement_try = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.gimple_statement_omp = type { %struct.gimple_statement_base, ptr }
%struct.gimple_statement_omp_parallel = type { %struct.gimple_statement_omp, ptr, ptr, ptr }
%struct.gimple_statement_omp_task = type { %struct.gimple_statement_omp_parallel, ptr, ptr, ptr }
%struct.gimple_statement_omp_atomic_load = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_omp_atomic_store = type { %struct.gimple_statement_base, ptr }
%struct.gimple_statement_omp_for = type { %struct.gimple_statement_omp, ptr, i64, ptr, ptr }
%struct.gimple_omp_for_iter = type { i32, ptr, ptr, ptr, ptr }
%struct.gimple_statement_omp_continue = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_omp_single = type { %struct.gimple_statement_omp, ptr }
%struct.gimple_statement_omp_sections = type { %struct.gimple_statement_omp, ptr, ptr }
%struct.gimple_statement_omp_critical = type { %struct.gimple_statement_omp, ptr }
%struct.gimple_statement_catch = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_eh_filter = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_eh_mnt = type { %struct.gimple_statement_base, ptr }
%struct.gimple_statement_eh_ctrl = type { %struct.gimple_statement_base, i32 }
%struct.edge_iterator = type { i32, ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }

@stderr = external local_unnamed_addr global ptr, align 8
@buffer = internal global %struct.pretty_print_info zeroinitializer, align 8
@initialized = internal unnamed_addr global i1 false, align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"<&%p> \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" : \00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"] \00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"[LP %d] \00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"[MNT %d] \00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"GIMPLE_NOP\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"GIMPLE_SECTIONS_SWITCH\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"// predicted \00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"likely by \00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"unlikely by \00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c" predictor.\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"# \00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c" = VDEF <\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"# VUSE <\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"%G <%+STRING <%n%s%n>\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"OUTPUT: \00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"INPUT: \00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"CLOBBER: \00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"LABEL: \00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"__asm__\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c" __volatile__\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c" goto\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"(\22\00", align 1
@.str.27 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.28 = private unnamed_addr constant [22 x i8] c"gimple-pretty-print.c\00", align 1
@.str.29 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c");\00", align 1
@gimple_code_name = external local_unnamed_addr constant [0 x ptr], align 8
@.str.31 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@.str.33 = private unnamed_addr constant [20 x i8] c"%G <%s, %T, %T, %T>\00", align 1
@tree_code_name = external local_unnamed_addr constant [0 x ptr], align 8
@.str.34 = private unnamed_addr constant [5 x i8] c"{nt}\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"{v}\00", align 1
@gimple_rhs_class_table = external local_unnamed_addr constant [0 x i8], align 1
@.str.36 = private unnamed_addr constant [3 x i8] c") \00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c"((\00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c"))\00", align 1
@.str.39 = private unnamed_addr constant [11 x i8] c"ABS_EXPR <\00", align 1
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@_sch_toupper = external local_unnamed_addr constant [256 x i8], align 16
@.str.40 = private unnamed_addr constant [3 x i8] c" <\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"%G <\00", align 1
@.str.42 = private unnamed_addr constant [11 x i8] c"%G <%T, %T\00", align 1
@.str.43 = private unnamed_addr constant [3 x i8] c" =\00", align 1
@.str.44 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@.str.45 = private unnamed_addr constant [17 x i8] c" [static-chain: \00", align 1
@.str.46 = private unnamed_addr constant [28 x i8] c" [return slot optimization]\00", align 1
@.str.47 = private unnamed_addr constant [13 x i8] c" [tail call]\00", align 1
@.str.48 = private unnamed_addr constant [25 x i8] c"__builtin_va_arg_pack ()\00", align 1
@.str.49 = private unnamed_addr constant [24 x i8] c"%G <%s, %T, %T, %T, %T>\00", align 1
@.str.50 = private unnamed_addr constant [5 x i8] c"if (\00", align 1
@.str.51 = private unnamed_addr constant [7 x i8] c" goto \00", align 1
@.str.52 = private unnamed_addr constant [12 x i8] c" else goto \00", align 1
@.str.53 = private unnamed_addr constant [8 x i8] c"%G <%T>\00", align 1
@.str.54 = private unnamed_addr constant [13 x i8] c" [non-local]\00", align 1
@.str.55 = private unnamed_addr constant [9 x i8] c" [LP %d]\00", align 1
@.str.56 = private unnamed_addr constant [9 x i8] c"goto %T;\00", align 1
@.str.57 = private unnamed_addr constant [7 x i8] c"return\00", align 1
@.str.58 = private unnamed_addr constant [9 x i8] c"%G <%T, \00", align 1
@.str.59 = private unnamed_addr constant [9 x i8] c"switch (\00", align 1
@.str.60 = private unnamed_addr constant [4 x i8] c") <\00", align 1
@.str.61 = private unnamed_addr constant [17 x i8] c"GIMPLE_TRY_CATCH\00", align 1
@.str.62 = private unnamed_addr constant [19 x i8] c"GIMPLE_TRY_FINALLY\00", align 1
@.str.63 = private unnamed_addr constant [19 x i8] c"UNKNOWN GIMPLE_TRY\00", align 1
@.str.64 = private unnamed_addr constant [36 x i8] c"%G <%s,%+EVAL <%S>%nCLEANUP <%S>%->\00", align 1
@.str.65 = private unnamed_addr constant [4 x i8] c"try\00", align 1
@.str.66 = private unnamed_addr constant [6 x i8] c"catch\00", align 1
@.str.67 = private unnamed_addr constant [8 x i8] c"finally\00", align 1
@.str.68 = private unnamed_addr constant [24 x i8] c" <UNKNOWN GIMPLE_TRY> {\00", align 1
@.str.69 = private unnamed_addr constant [9 x i8] c" = PHI <\00", align 1
@.str.70 = private unnamed_addr constant [27 x i8] c"%G <%+BODY <%S>%nCLAUSES <\00", align 1
@.str.71 = private unnamed_addr constant [14 x i8] c" >, %T, %T%n>\00", align 1
@.str.72 = private unnamed_addr constant [21 x i8] c"#pragma omp parallel\00", align 1
@.str.73 = private unnamed_addr constant [13 x i8] c" [child fn: \00", align 1
@.str.74 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@.str.75 = private unnamed_addr constant [3 x i8] c")]\00", align 1
@.str.76 = private unnamed_addr constant [26 x i8] c" >, %T, %T, %T, %T, %T%n>\00", align 1
@.str.77 = private unnamed_addr constant [17 x i8] c"#pragma omp task\00", align 1
@.str.78 = private unnamed_addr constant [12 x i8] c"%G <%T, %T>\00", align 1
@.str.79 = private unnamed_addr constant [24 x i8] c"#pragma omp atomic_load\00", align 1
@.str.80 = private unnamed_addr constant [27 x i8] c"#pragma omp atomic_store (\00", align 1
@.str.81 = private unnamed_addr constant [4 x i8] c" >,\00", align 1
@.str.82 = private unnamed_addr constant [24 x i8] c"%+%T, %T, %T, %s, %T,%n\00", align 1
@.str.83 = private unnamed_addr constant [17 x i8] c"PRE_BODY <%S>%->\00", align 1
@.str.84 = private unnamed_addr constant [16 x i8] c"#pragma omp for\00", align 1
@.str.85 = private unnamed_addr constant [6 x i8] c"for (\00", align 1
@.str.86 = private unnamed_addr constant [4 x i8] c" = \00", align 1
@.str.87 = private unnamed_addr constant [3 x i8] c"; \00", align 1
@.str.88 = private unnamed_addr constant [3 x i8] c"<=\00", align 1
@.str.89 = private unnamed_addr constant [3 x i8] c">=\00", align 1
@.str.90 = private unnamed_addr constant [23 x i8] c"#pragma omp continue (\00", align 1
@.str.91 = private unnamed_addr constant [3 x i8] c" >\00", align 1
@.str.92 = private unnamed_addr constant [19 x i8] c"#pragma omp single\00", align 1
@.str.93 = private unnamed_addr constant [15 x i8] c"%G <nowait=%d>\00", align 1
@.str.94 = private unnamed_addr constant [19 x i8] c"#pragma omp return\00", align 1
@.str.95 = private unnamed_addr constant [9 x i8] c"(nowait)\00", align 1
@.str.96 = private unnamed_addr constant [21 x i8] c"#pragma omp sections\00", align 1
@.str.97 = private unnamed_addr constant [18 x i8] c"%G <%+BODY <%S> >\00", align 1
@.str.98 = private unnamed_addr constant [19 x i8] c"#pragma omp master\00", align 1
@.str.99 = private unnamed_addr constant [20 x i8] c"#pragma omp ordered\00", align 1
@.str.100 = private unnamed_addr constant [20 x i8] c"#pragma omp section\00", align 1
@.str.101 = private unnamed_addr constant [21 x i8] c"#pragma omp critical\00", align 1
@.str.102 = private unnamed_addr constant [24 x i8] c"%G <%T, %+CATCH <%S>%->\00", align 1
@.str.103 = private unnamed_addr constant [17 x i8] c"catch (%T)%+{%S}\00", align 1
@.str.104 = private unnamed_addr constant [26 x i8] c"%G <%T, %+FAILURE <%S>%->\00", align 1
@.str.105 = private unnamed_addr constant [31 x i8] c"<<<eh_filter (%T)>>>%+{%+%S%-}\00", align 1
@.str.106 = private unnamed_addr constant [29 x i8] c"<<<eh_must_not_throw (%T)>>>\00", align 1
@.str.107 = private unnamed_addr constant [8 x i8] c"%G <%d>\00", align 1
@.str.108 = private unnamed_addr constant [8 x i8] c"resx %d\00", align 1
@.str.109 = private unnamed_addr constant [15 x i8] c"eh_dispatch %d\00", align 1
@.str.110 = private unnamed_addr constant [17 x i8] c"%G BIND <%T, %T>\00", align 1
@.str.111 = private unnamed_addr constant [17 x i8] c"# DEBUG %T => %T\00", align 1
@.str.112 = private unnamed_addr constant [38 x i8] c"<<< Unknown GIMPLE statement: %s >>>\0A\00", align 1
@cfun = external local_unnamed_addr global ptr, align 8
@.str.113 = private unnamed_addr constant [9 x i8] c"# BLOCK \00", align 1
@.str.114 = private unnamed_addr constant [7 x i8] c" freq:\00", align 1
@.str.115 = private unnamed_addr constant [8 x i8] c" count:\00", align 1
@.str.116 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.117 = private unnamed_addr constant [20 x i8] c", starting at line \00", align 1
@.str.118 = private unnamed_addr constant [17 x i8] c", discriminator \00", align 1
@.str.119 = private unnamed_addr constant [8 x i8] c"# PRED:\00", align 1
@.str.120 = private unnamed_addr constant [6 x i8] c"ENTRY\00", align 1
@.str.121 = private unnamed_addr constant [5 x i8] c"<bb \00", align 1
@.str.122 = private unnamed_addr constant [3 x i8] c">:\00", align 1
@.str.123 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@.str.124 = private unnamed_addr constant [5 x i8] c"else\00", align 1
@.str.125 = private unnamed_addr constant [10 x i8] c"goto <bb \00", align 1
@.str.126 = private unnamed_addr constant [8 x i8] c"# SUCC:\00", align 1
@.str.127 = private unnamed_addr constant [5 x i8] c"EXIT\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_gimple_stmt(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !6
  tail call void @print_gimple_stmt(ptr noundef %2, ptr noundef %0, i32 noundef 0, i32 noundef 16448) #11
  %3 = load ptr, ptr @stderr, align 8, !tbaa !6
  %4 = tail call i32 @fputc(i32 10, ptr %3)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @print_gimple_stmt(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  tail call fastcc void @maybe_init_pretty_print(ptr noundef %0) #11
  tail call void @dump_gimple_stmt(ptr noundef nonnull @buffer, ptr noundef %1, i32 noundef %2, i32 noundef %3) #11
  tail call void @pp_base_flush(ptr noundef nonnull @buffer) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @maybe_init_pretty_print(ptr noundef %0) unnamed_addr #0 {
  %2 = load i1, ptr @initialized, align 1
  br i1 %2, label %4, label %3

3:                                                ; preds = %1
  tail call void @pp_construct(ptr noundef nonnull @buffer, ptr noundef null, i32 noundef 0) #12
  store i8 1, ptr getelementptr inbounds (%struct.pretty_print_info, ptr @buffer, i64 0, i32 8), align 1, !tbaa !10
  store i1 true, ptr @initialized, align 1
  br label %4

4:                                                ; preds = %3, %1
  %5 = load ptr, ptr @buffer, align 8, !tbaa !14
  %6 = getelementptr inbounds %struct.output_buffer, ptr %5, i64 0, i32 4
  store ptr %0, ptr %6, align 8, !tbaa !15
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_gimple_stmt(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.expanded_location, align 8
  %6 = icmp eq ptr %1, null
  br i1 %6, label %99, label %7

7:                                                ; preds = %4
  %8 = and i32 %3, 4096
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %7
  tail call void (ptr, ptr, ...) @pp_printf(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull %1) #12
  br label %11

11:                                               ; preds = %10, %7
  %12 = and i32 %3, 128
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %37, label %14

14:                                               ; preds = %11
  %15 = tail call fastcc zeroext i8 @gimple_has_location(ptr noundef nonnull %1) #11, !range !19
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %37, label %17

17:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #13
  %18 = tail call fastcc i32 @gimple_location(ptr noundef nonnull %1) #11
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %5, i32 noundef %18) #12
  call void @pp_base_character(ptr noundef %0, i32 noundef 91) #12
  %19 = load ptr, ptr %5, align 8, !tbaa !20
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  call void @pp_base_string(ptr noundef %0, ptr noundef nonnull %19) #12
  call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.2) #12
  br label %22

22:                                               ; preds = %17, %21
  %23 = load ptr, ptr %0, align 8, !tbaa !14
  %24 = getelementptr inbounds %struct.output_buffer, ptr %23, i64 0, i32 6
  %25 = getelementptr inbounds %struct.expanded_location, ptr %5, i64 0, i32 1
  %26 = load i32, ptr %25, align 8, !tbaa !22
  %27 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %24, ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %26) #11
  %28 = load ptr, ptr %0, align 8, !tbaa !14
  %29 = getelementptr inbounds %struct.output_buffer, ptr %28, i64 0, i32 6
  call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull %29) #12
  call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull @.str.4) #12
  %30 = load ptr, ptr %0, align 8, !tbaa !14
  %31 = getelementptr inbounds %struct.output_buffer, ptr %30, i64 0, i32 6
  %32 = getelementptr inbounds %struct.expanded_location, ptr %5, i64 0, i32 2
  %33 = load i32, ptr %32, align 4, !tbaa !23
  %34 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %31, ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %33) #11
  %35 = load ptr, ptr %0, align 8, !tbaa !14
  %36 = getelementptr inbounds %struct.output_buffer, ptr %35, i64 0, i32 6
  call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull %36) #12
  call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull @.str.5) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #13
  br label %37

37:                                               ; preds = %22, %14, %11
  %38 = and i32 %3, 524288
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %48, label %40

40:                                               ; preds = %37
  %41 = call i32 @lookup_stmt_eh_lp(ptr noundef nonnull %1) #12
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  call void (ptr, ptr, ...) @pp_printf(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef %41) #12
  br label %48

44:                                               ; preds = %40
  %45 = icmp slt i32 %41, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %44
  %47 = sub nsw i32 0, %41
  call void (ptr, ptr, ...) @pp_printf(ptr noundef %0, ptr noundef nonnull @.str.7, i32 noundef %47) #12
  br label %48

48:                                               ; preds = %43, %46, %44, %37
  %49 = and i32 %3, 16448
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %48
  %52 = call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef nonnull %1) #11, !range !19
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %51
  call fastcc void @dump_gimple_mem_ops(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3) #11
  br label %55

55:                                               ; preds = %54, %51, %48
  %56 = call fastcc i32 @gimple_code(ptr noundef nonnull %1) #11, !range !24
  %57 = trunc i32 %56 to i8
  switch i8 %57, label %94 [
    i8 7, label %58
    i8 6, label %59
    i8 10, label %60
    i8 8, label %61
    i8 1, label %62
    i8 4, label %63
    i8 3, label %64
    i8 18, label %65
    i8 9, label %66
    i8 5, label %67
    i8 17, label %68
    i8 16, label %69
    i8 26, label %70
    i8 27, label %71
    i8 19, label %72
    i8 20, label %73
    i8 23, label %74
    i8 21, label %75
    i8 32, label %76
    i8 28, label %77
    i8 30, label %78
    i8 31, label %79
    i8 24, label %80
    i8 25, label %80
    i8 29, label %80
    i8 22, label %81
    i8 11, label %82
    i8 12, label %83
    i8 13, label %84
    i8 14, label %85
    i8 15, label %86
    i8 2, label %87
    i8 33, label %88
  ]

58:                                               ; preds = %55
  call fastcc void @dump_gimple_asm(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3) #11
  br label %95

59:                                               ; preds = %55
  call fastcc void @dump_gimple_assign(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3) #11
  br label %95

60:                                               ; preds = %55
  call fastcc void @dump_gimple_bind(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3) #11
  br label %95

61:                                               ; preds = %55
  call fastcc void @dump_gimple_call(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3) #11
  br label %95

62:                                               ; preds = %55
  call fastcc void @dump_gimple_cond(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3) #11
  br label %95

63:                                               ; preds = %55
  call fastcc void @dump_gimple_label(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3) #11
  br label %95

64:                                               ; preds = %55
  call fastcc void @dump_gimple_goto(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3) #11
  br label %95

65:                                               ; preds = %55
  call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.8) #12
  br label %95

66:                                               ; preds = %55
  call fastcc void @dump_gimple_return(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3) #11
  br label %95

67:                                               ; preds = %55
  call fastcc void @dump_gimple_switch(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3) #11
  br label %95

68:                                               ; preds = %55
  call fastcc void @dump_gimple_try(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3) #11
  br label %95

69:                                               ; preds = %55
  call fastcc void @dump_gimple_phi(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3) #11
  br label %95

70:                                               ; preds = %55
  call fastcc void @dump_gimple_omp_parallel(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3) #11
  br label %95

71:                                               ; preds = %55
  call fastcc void @dump_gimple_omp_task(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3) #11
  br label %95

72:                                               ; preds = %55
  call fastcc void @dump_gimple_omp_atomic_load(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3) #11
  br label %95

73:                                               ; preds = %55
  call fastcc void @dump_gimple_omp_atomic_store(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3) #11
  br label %95

74:                                               ; preds = %55
  call fastcc void @dump_gimple_omp_for(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3) #11
  br label %95

75:                                               ; preds = %55
  call fastcc void @dump_gimple_omp_continue(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3) #11
  br label %95

76:                                               ; preds = %55
  call fastcc void @dump_gimple_omp_single(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3) #11
  br label %95

77:                                               ; preds = %55
  call fastcc void @dump_gimple_omp_return(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3) #11
  br label %95

78:                                               ; preds = %55
  call fastcc void @dump_gimple_omp_sections(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3) #11
  br label %95

79:                                               ; preds = %55
  call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.9) #12
  br label %95

80:                                               ; preds = %55, %55, %55
  call fastcc void @dump_gimple_omp_block(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3) #11
  br label %95

81:                                               ; preds = %55
  call fastcc void @dump_gimple_omp_critical(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3) #11
  br label %95

82:                                               ; preds = %55
  call fastcc void @dump_gimple_catch(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3) #11
  br label %95

83:                                               ; preds = %55
  call fastcc void @dump_gimple_eh_filter(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3) #11
  br label %95

84:                                               ; preds = %55
  call fastcc void @dump_gimple_eh_must_not_throw(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3) #11
  br label %95

85:                                               ; preds = %55
  call fastcc void @dump_gimple_resx(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3) #11
  br label %95

86:                                               ; preds = %55
  call fastcc void @dump_gimple_eh_dispatch(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3) #11
  br label %95

87:                                               ; preds = %55
  call fastcc void @dump_gimple_debug(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3) #11
  br label %95

88:                                               ; preds = %55
  call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.10) #12
  %89 = call fastcc i32 @gimple_predict_outcome(ptr noundef nonnull %1) #11, !range !25
  %90 = icmp eq i32 %89, 0
  %91 = select i1 %90, ptr @.str.12, ptr @.str.11
  call void @pp_base_string(ptr noundef %0, ptr noundef nonnull %91) #12
  %92 = call fastcc i32 @gimple_predict_predictor(ptr noundef nonnull %1) #11, !range !26
  %93 = call ptr @predictor_name(i32 noundef %92) #12
  call void @pp_base_string(ptr noundef %0, ptr noundef %93) #12
  call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.13) #12
  br label %95

94:                                               ; preds = %55
  call fastcc void @do_niy(ptr noundef %0, ptr noundef nonnull %1) #11
  br label %95

95:                                               ; preds = %94, %88, %87, %86, %85, %84, %83, %82, %81, %80, %79, %78, %77, %76, %75, %74, %73, %72, %71, %70, %69, %68, %67, %66, %65, %64, %63, %62, %61, %60, %59, %58
  %96 = and i32 %3, 32768
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %95
  call void @pp_write_text_to_stream(ptr noundef %0) #12
  br label %99

99:                                               ; preds = %4, %98, %95
  ret void
}

; Function Attrs: optsize
declare void @pp_base_flush(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @pp_construct(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @print_gimple_expr(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = or i32 %3, 131072
  tail call fastcc void @maybe_init_pretty_print(ptr noundef %0) #11
  tail call void @dump_gimple_stmt(ptr noundef nonnull @buffer, ptr noundef %1, i32 noundef %2, i32 noundef %5) #11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @print_gimple_seq(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  tail call fastcc void @maybe_init_pretty_print(ptr noundef %0) #11
  tail call fastcc void @dump_gimple_seq(ptr noundef nonnull @buffer, ptr noundef %1, i32 noundef %2, i32 noundef %3) #11
  tail call void @pp_base_flush(ptr noundef nonnull @buffer) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dump_gimple_seq(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #13
  call fastcc void @gsi_start(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef %1) #11
  %6 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #11, !range !19
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %23

8:                                                ; preds = %4
  %9 = icmp sgt i32 %2, 0
  br label %10

10:                                               ; preds = %8, %20
  %11 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #11
  br i1 %9, label %12, label %16

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %14, %12 ], [ 0, %10 ]
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #12
  %14 = add nuw nsw i32 %13, 1
  %15 = icmp eq i32 %14, %2
  br i1 %15, label %16, label %12, !llvm.loop !27

16:                                               ; preds = %12, %10
  tail call void @dump_gimple_stmt(ptr noundef %0, ptr noundef %11, i32 noundef %2, i32 noundef %3) #11
  %17 = tail call fastcc zeroext i8 @gsi_one_before_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #11, !range !19
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  tail call void @pp_base_newline(ptr noundef %0) #12
  br label %20

20:                                               ; preds = %19, %16
  call fastcc void @gsi_next(ptr noundef nonnull %5) #11
  %21 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #11, !range !19
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %10, label %23, !llvm.loop !29

23:                                               ; preds = %20, %4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #13
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #3 {
  %3 = tail call fastcc ptr @gimple_seq_first(ptr noundef %1) #11
  store ptr %3, ptr %0, align 8, !tbaa !30
  %4 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !32
  %5 = icmp eq ptr %3, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %3, align 8, !tbaa !33
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = tail call fastcc ptr @gimple_bb(ptr noundef nonnull %7) #11
  br label %11

11:                                               ; preds = %2, %6, %9
  %12 = phi ptr [ %10, %9 ], [ null, %6 ], [ null, %2 ]
  %13 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %12, ptr %13, align 8, !tbaa !35
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #4 {
  %2 = load ptr, ptr %0, align 8, !tbaa !30
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #5 {
  %2 = load ptr, ptr %0, align 8, !tbaa !30
  %3 = load ptr, ptr %2, align 8, !tbaa !33
  ret ptr %3
}

; Function Attrs: optsize
declare void @pp_base_character(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @gsi_one_before_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #5 {
  %2 = load ptr, ptr %0, align 8, !tbaa !30
  %3 = icmp eq ptr %2, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !36
  %7 = icmp eq ptr %6, null
  %8 = zext i1 %7 to i8
  br label %9

9:                                                ; preds = %4, %1
  %10 = phi i8 [ 0, %1 ], [ %8, %4 ]
  ret i8 %10
}

; Function Attrs: optsize
declare void @pp_base_newline(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #3 {
  %2 = load ptr, ptr %0, align 8, !tbaa !30
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !36
  store ptr %4, ptr %0, align 8, !tbaa !30
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !37
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bb(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_gimple_seq(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !6
  tail call void @print_gimple_seq(ptr noundef %2, ptr noundef %0, i32 noundef 0, i32 noundef 16448) #11
  ret void
}

; Function Attrs: optsize
declare void @pp_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_location(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = tail call fastcc i32 @gimple_location(ptr noundef %0) #11
  %3 = icmp ne i32 %2, 0
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare void @expand_location(ptr dead_on_unwind writable sret(%struct.expanded_location) align 8, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_location(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !39
  ret i32 %3
}

; Function Attrs: optsize
declare void @pp_base_string(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: optsize
declare i32 @lookup_stmt_eh_lp(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_mem_ops(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #11, !range !24
  %3 = add nsw i32 %2, -6
  %4 = icmp ult i32 %3, 4
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dump_gimple_mem_ops(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = tail call fastcc ptr @gimple_vdef(ptr noundef %1) #11
  %6 = tail call fastcc ptr @gimple_vuse(ptr noundef %1) #11
  %7 = tail call zeroext i8 @ssa_operands_active() #12
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %24, label %9

9:                                                ; preds = %4
  %10 = tail call fastcc zeroext i8 @gimple_references_memory_p(ptr noundef %1) #11, !range !19
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %24, label %12

12:                                               ; preds = %9
  %13 = icmp eq ptr %5, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %12
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.14) #12
  %15 = add nsw i32 %2, 2
  %16 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef nonnull %5, i32 noundef %15, i32 noundef %3, i8 noundef zeroext 0) #12
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.15) #12
  %17 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %6, i32 noundef %15, i32 noundef %3, i8 noundef zeroext 0) #12
  br label %23

18:                                               ; preds = %12
  %19 = icmp eq ptr %6, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %18
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.16) #12
  %21 = add nsw i32 %2, 2
  %22 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef nonnull %6, i32 noundef %21, i32 noundef %3, i8 noundef zeroext 0) #12
  br label %23

23:                                               ; preds = %20, %14
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 62) #12
  tail call fastcc void @newline_and_indent(ptr noundef %0, i32 noundef %2) #11
  br label %24

24:                                               ; preds = %23, %18, %4, %9
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dump_gimple_asm(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = and i32 %3, 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %69, label %7

7:                                                ; preds = %4
  %8 = tail call fastcc ptr @gimple_asm_string(ptr noundef %1) #11
  tail call void (ptr, i32, i32, ptr, ...) @dump_gimple_fmt(ptr noundef %0, i32 noundef %2, i32 noundef %3, ptr noundef nonnull @.str.17, ptr noundef %1, ptr noundef %8) #11
  %9 = tail call fastcc i32 @gimple_asm_noutputs(ptr noundef %1) #11, !range !24
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %23, label %11

11:                                               ; preds = %7
  %12 = add nsw i32 %2, 2
  tail call fastcc void @newline_and_indent(ptr noundef %0, i32 noundef %12) #11
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.18) #12
  %13 = add nsw i32 %9, -1
  br label %14

14:                                               ; preds = %11, %20
  %15 = phi i32 [ 0, %11 ], [ %21, %20 ]
  %16 = tail call fastcc ptr @gimple_asm_output_op(ptr noundef %1, i32 noundef %15) #11
  %17 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %16, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #12
  %18 = icmp ult i32 %15, %13
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.19) #12
  br label %20

20:                                               ; preds = %14, %19
  %21 = add nuw nsw i32 %15, 1
  %22 = icmp eq i32 %21, %9
  br i1 %22, label %23, label %14, !llvm.loop !40

23:                                               ; preds = %20, %7
  %24 = tail call fastcc i32 @gimple_asm_ninputs(ptr noundef %1) #11, !range !24
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %38, label %26

26:                                               ; preds = %23
  %27 = add nsw i32 %2, 2
  tail call fastcc void @newline_and_indent(ptr noundef %0, i32 noundef %27) #11
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.20) #12
  %28 = add nsw i32 %24, -1
  br label %29

29:                                               ; preds = %26, %35
  %30 = phi i32 [ 0, %26 ], [ %36, %35 ]
  %31 = tail call fastcc ptr @gimple_asm_input_op(ptr noundef %1, i32 noundef %30) #11
  %32 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %31, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #12
  %33 = icmp ult i32 %30, %28
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.19) #12
  br label %35

35:                                               ; preds = %29, %34
  %36 = add nuw nsw i32 %30, 1
  %37 = icmp eq i32 %36, %24
  br i1 %37, label %38, label %29, !llvm.loop !41

38:                                               ; preds = %35, %23
  %39 = tail call fastcc i32 @gimple_asm_nclobbers(ptr noundef %1) #11, !range !24
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %53, label %41

41:                                               ; preds = %38
  %42 = add nsw i32 %2, 2
  tail call fastcc void @newline_and_indent(ptr noundef %0, i32 noundef %42) #11
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.21) #12
  %43 = add nsw i32 %39, -1
  br label %44

44:                                               ; preds = %41, %50
  %45 = phi i32 [ 0, %41 ], [ %51, %50 ]
  %46 = tail call fastcc ptr @gimple_asm_clobber_op(ptr noundef %1, i32 noundef %45) #11
  %47 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %46, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #12
  %48 = icmp ult i32 %45, %43
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.19) #12
  br label %50

50:                                               ; preds = %44, %49
  %51 = add nuw nsw i32 %45, 1
  %52 = icmp eq i32 %51, %39
  br i1 %52, label %53, label %44, !llvm.loop !42

53:                                               ; preds = %50, %38
  %54 = tail call fastcc i32 @gimple_asm_nlabels(ptr noundef %1) #11, !range !24
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %68, label %56

56:                                               ; preds = %53
  %57 = add nsw i32 %2, 2
  tail call fastcc void @newline_and_indent(ptr noundef %0, i32 noundef %57) #11
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.22) #12
  %58 = add nsw i32 %54, -1
  br label %59

59:                                               ; preds = %56, %65
  %60 = phi i32 [ 0, %56 ], [ %66, %65 ]
  %61 = tail call fastcc ptr @gimple_asm_label_op(ptr noundef %1, i32 noundef %60) #11
  %62 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %61, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #12
  %63 = icmp ult i32 %60, %58
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.19) #12
  br label %65

65:                                               ; preds = %59, %64
  %66 = add nuw nsw i32 %60, 1
  %67 = icmp eq i32 %66, %54
  br i1 %67, label %68, label %59, !llvm.loop !43

68:                                               ; preds = %65, %53
  tail call fastcc void @newline_and_indent(ptr noundef %0, i32 noundef %2) #11
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 62) #12
  br label %155

69:                                               ; preds = %4
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.23) #12
  %70 = tail call fastcc zeroext i8 @gimple_asm_volatile_p(ptr noundef %1) #11, !range !19
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %69
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.24) #12
  br label %73

73:                                               ; preds = %72, %69
  %74 = tail call fastcc i32 @gimple_asm_nlabels(ptr noundef %1) #11, !range !24
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %73
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.25) #12
  br label %77

77:                                               ; preds = %76, %73
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.26) #12
  %78 = tail call fastcc ptr @gimple_asm_string(ptr noundef %1) #11
  tail call void @pp_base_string(ptr noundef %0, ptr noundef %78) #12
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.27) #12
  %79 = tail call fastcc i32 @gimple_asm_nlabels(ptr noundef %1) #11, !range !24
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %77
  %82 = tail call fastcc i32 @gimple_asm_nclobbers(ptr noundef %1) #11, !range !24
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %81
  %85 = tail call fastcc i32 @gimple_asm_ninputs(ptr noundef %1) #11, !range !24
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = tail call fastcc i32 @gimple_asm_noutputs(ptr noundef %1) #11, !range !24
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %154, label %90

90:                                               ; preds = %84, %81, %77, %87
  %91 = phi i32 [ 1, %87 ], [ 2, %84 ], [ 3, %81 ], [ 4, %77 ]
  br label %92

92:                                               ; preds = %90, %151
  %93 = phi i32 [ %152, %151 ], [ 0, %90 ]
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.2) #12
  switch i32 %93, label %150 [
    i32 0, label %94
    i32 1, label %108
    i32 2, label %122
    i32 3, label %136
  ]

94:                                               ; preds = %92
  %95 = tail call fastcc i32 @gimple_asm_noutputs(ptr noundef %1) #11, !range !24
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %151, label %97

97:                                               ; preds = %94
  %98 = add nsw i32 %95, -1
  br label %99

99:                                               ; preds = %97, %105
  %100 = phi i32 [ 0, %97 ], [ %106, %105 ]
  %101 = tail call fastcc ptr @gimple_asm_output_op(ptr noundef %1, i32 noundef %100) #11
  %102 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %101, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #12
  %103 = icmp ult i32 %100, %98
  br i1 %103, label %104, label %105

104:                                              ; preds = %99
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.19) #12
  br label %105

105:                                              ; preds = %99, %104
  %106 = add nuw nsw i32 %100, 1
  %107 = icmp eq i32 %106, %95
  br i1 %107, label %151, label %99, !llvm.loop !44

108:                                              ; preds = %92
  %109 = tail call fastcc i32 @gimple_asm_ninputs(ptr noundef %1) #11, !range !24
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %151, label %111

111:                                              ; preds = %108
  %112 = add nsw i32 %109, -1
  br label %113

113:                                              ; preds = %111, %119
  %114 = phi i32 [ 0, %111 ], [ %120, %119 ]
  %115 = tail call fastcc ptr @gimple_asm_input_op(ptr noundef %1, i32 noundef %114) #11
  %116 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %115, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #12
  %117 = icmp ult i32 %114, %112
  br i1 %117, label %118, label %119

118:                                              ; preds = %113
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.19) #12
  br label %119

119:                                              ; preds = %113, %118
  %120 = add nuw nsw i32 %114, 1
  %121 = icmp eq i32 %120, %109
  br i1 %121, label %151, label %113, !llvm.loop !45

122:                                              ; preds = %92
  %123 = tail call fastcc i32 @gimple_asm_nclobbers(ptr noundef %1) #11, !range !24
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %151, label %125

125:                                              ; preds = %122
  %126 = add nsw i32 %123, -1
  br label %127

127:                                              ; preds = %125, %133
  %128 = phi i32 [ 0, %125 ], [ %134, %133 ]
  %129 = tail call fastcc ptr @gimple_asm_clobber_op(ptr noundef %1, i32 noundef %128) #11
  %130 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %129, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #12
  %131 = icmp ult i32 %128, %126
  br i1 %131, label %132, label %133

132:                                              ; preds = %127
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.19) #12
  br label %133

133:                                              ; preds = %127, %132
  %134 = add nuw nsw i32 %128, 1
  %135 = icmp eq i32 %134, %123
  br i1 %135, label %151, label %127, !llvm.loop !46

136:                                              ; preds = %92
  %137 = tail call fastcc i32 @gimple_asm_nlabels(ptr noundef %1) #11, !range !24
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %151, label %139

139:                                              ; preds = %136
  %140 = add nsw i32 %137, -1
  br label %141

141:                                              ; preds = %139, %147
  %142 = phi i32 [ 0, %139 ], [ %148, %147 ]
  %143 = tail call fastcc ptr @gimple_asm_label_op(ptr noundef %1, i32 noundef %142) #11
  %144 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %143, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #12
  %145 = icmp ult i32 %142, %140
  br i1 %145, label %146, label %147

146:                                              ; preds = %141
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.19) #12
  br label %147

147:                                              ; preds = %141, %146
  %148 = add nuw nsw i32 %142, 1
  %149 = icmp eq i32 %148, %137
  br i1 %149, label %151, label %141, !llvm.loop !47

150:                                              ; preds = %92
  unreachable

151:                                              ; preds = %147, %133, %119, %105, %136, %122, %108, %94
  %152 = add nuw nsw i32 %93, 1
  %153 = icmp eq i32 %152, %91
  br i1 %153, label %154, label %92, !llvm.loop !48

154:                                              ; preds = %151, %87
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.30) #12
  br label %155

155:                                              ; preds = %154, %68
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dump_gimple_assign(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = and i32 %3, 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %20, label %7

7:                                                ; preds = %4
  %8 = tail call fastcc i32 @gimple_num_ops(ptr noundef %1) #11
  switch i32 %8, label %11 [
    i32 2, label %12
    i32 3, label %9
  ]

9:                                                ; preds = %7
  %10 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %1) #11
  br label %12

11:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 394, ptr noundef nonnull @.str.29) #12
  br label %12

12:                                               ; preds = %7, %9, %11
  %13 = phi ptr [ %10, %9 ], [ undef, %11 ], [ null, %7 ]
  %14 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %1) #11, !range !49
  %15 = zext nneg i32 %14 to i64
  %16 = getelementptr inbounds [0 x ptr], ptr @tree_code_name, i64 0, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !6
  %18 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %1) #11
  %19 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %1) #11
  tail call void (ptr, i32, i32, ptr, ...) @dump_gimple_fmt(ptr noundef %0, i32 noundef %2, i32 noundef %3, ptr noundef nonnull @.str.33, ptr noundef %1, ptr noundef %17, ptr noundef %18, ptr noundef %19, ptr noundef %13) #11
  br label %41

20:                                               ; preds = %4
  %21 = and i32 %3, 131072
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %20
  %24 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %1) #11
  %25 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %24, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #12
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #12
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 61) #12
  %26 = tail call fastcc zeroext i8 @gimple_assign_nontemporal_move_p(ptr noundef %1) #11, !range !19
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.34) #12
  br label %29

29:                                               ; preds = %28, %23
  %30 = tail call fastcc zeroext i8 @gimple_has_volatile_ops(ptr noundef %1) #11, !range !19
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %29
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.35) #12
  br label %33

33:                                               ; preds = %32, %29
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #12
  br label %34

34:                                               ; preds = %33, %20
  %35 = tail call fastcc i32 @gimple_num_ops(ptr noundef %1) #11
  switch i32 %35, label %38 [
    i32 2, label %36
    i32 3, label %37
  ]

36:                                               ; preds = %34
  tail call fastcc void @dump_unary_rhs(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #11
  br label %39

37:                                               ; preds = %34
  tail call fastcc void @dump_binary_rhs(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #11
  br label %39

38:                                               ; preds = %34
  tail call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 422, ptr noundef nonnull @.str.29) #12
  br label %39

39:                                               ; preds = %37, %38, %36
  br i1 %22, label %40, label %41

40:                                               ; preds = %39
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 59) #12
  br label %41

41:                                               ; preds = %39, %40, %12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dump_gimple_bind(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = and i32 %3, 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @dump_gimple_fmt(ptr noundef %0, i32 noundef %2, i32 noundef %3, ptr noundef nonnull @.str.41, ptr noundef %1) #11
  br label %9

8:                                                ; preds = %4
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 123) #12
  br label %9

9:                                                ; preds = %8, %7
  %10 = and i32 %3, 2
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %9
  %13 = tail call fastcc ptr @gimple_bind_vars(ptr noundef %1) #11
  %14 = icmp eq ptr %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %12, %15
  %16 = phi ptr [ %18, %15 ], [ %13, %12 ]
  tail call fastcc void @newline_and_indent(ptr noundef %0, i32 noundef 2) #11
  tail call void @print_declaration(ptr noundef %0, ptr noundef nonnull %16, i32 noundef %2, i32 noundef %3) #12
  %17 = getelementptr inbounds %struct.tree_common, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !39
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %15, !llvm.loop !50

20:                                               ; preds = %15, %12
  %21 = tail call fastcc ptr @gimple_bind_vars(ptr noundef %1) #11
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  tail call void @pp_base_newline(ptr noundef %0) #12
  br label %24

24:                                               ; preds = %20, %23, %9
  tail call void @pp_base_newline(ptr noundef %0) #12
  %25 = tail call fastcc ptr @gimple_bind_body(ptr noundef %1) #11
  %26 = add nsw i32 %2, 2
  tail call fastcc void @dump_gimple_seq(ptr noundef %0, ptr noundef %25, i32 noundef %26, i32 noundef %3) #11
  tail call fastcc void @newline_and_indent(ptr noundef %0, i32 noundef %2) #11
  %27 = select i1 %6, i32 125, i32 62
  tail call void @pp_base_character(ptr noundef %0, i32 noundef %27) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dump_gimple_call(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %1) #11
  %6 = and i32 %3, 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %4
  %9 = tail call fastcc ptr @gimple_call_fn(ptr noundef %1) #11
  tail call void (ptr, i32, i32, ptr, ...) @dump_gimple_fmt(ptr noundef %0, i32 noundef %2, i32 noundef %3, ptr noundef nonnull @.str.42, ptr noundef %1, ptr noundef %9, ptr noundef %5) #11
  %10 = tail call fastcc i32 @gimple_call_num_args(ptr noundef %1) #11
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %26, label %12

12:                                               ; preds = %8
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.19) #12
  tail call fastcc void @dump_gimple_call_args(ptr noundef %0, ptr noundef %1, i32 noundef %3) #11
  br label %26

13:                                               ; preds = %4
  %14 = icmp ne ptr %5, null
  %15 = and i32 %3, 131072
  %16 = icmp eq i32 %15, 0
  %17 = and i1 %16, %14
  br i1 %17, label %18, label %24

18:                                               ; preds = %13
  %19 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef nonnull %5, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #12
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.43) #12
  %20 = tail call fastcc zeroext i8 @gimple_has_volatile_ops(ptr noundef %1) #11, !range !19
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.35) #12
  br label %23

23:                                               ; preds = %22, %18
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #12
  br label %24

24:                                               ; preds = %23, %13
  %25 = tail call fastcc ptr @gimple_call_fn(ptr noundef %1) #11
  tail call void @print_call_name(ptr noundef %0, ptr noundef %25, i32 noundef %3) #12
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.44) #12
  tail call fastcc void @dump_gimple_call_args(ptr noundef %0, ptr noundef %1, i32 noundef %3) #11
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 41) #12
  br i1 %16, label %26, label %28

26:                                               ; preds = %24, %8, %12
  %27 = phi i32 [ 62, %12 ], [ 62, %8 ], [ 59, %24 ]
  tail call void @pp_base_character(ptr noundef %0, i32 noundef %27) #12
  br label %28

28:                                               ; preds = %26, %24
  %29 = tail call fastcc ptr @gimple_call_chain(ptr noundef %1) #11
  %30 = icmp eq ptr %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %28
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.45) #12
  %32 = tail call fastcc ptr @gimple_call_chain(ptr noundef %1) #11
  %33 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %32, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #12
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 93) #12
  br label %34

34:                                               ; preds = %31, %28
  %35 = tail call fastcc zeroext i8 @gimple_call_return_slot_opt_p(ptr noundef %1) #11, !range !19
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %34
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.46) #12
  br label %38

38:                                               ; preds = %37, %34
  %39 = tail call fastcc zeroext i8 @gimple_call_tail_p(ptr noundef %1) #11, !range !19
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %38
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.47) #12
  br label %42

42:                                               ; preds = %41, %38
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dump_gimple_cond(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = and i32 %3, 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %16, label %7

7:                                                ; preds = %4
  %8 = tail call fastcc i32 @gimple_cond_code(ptr noundef %1) #11, !range !49
  %9 = zext nneg i32 %8 to i64
  %10 = getelementptr inbounds [0 x ptr], ptr @tree_code_name, i64 0, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !6
  %12 = tail call fastcc ptr @gimple_cond_lhs(ptr noundef %1) #11
  %13 = tail call fastcc ptr @gimple_cond_rhs(ptr noundef %1) #11
  %14 = tail call fastcc ptr @gimple_cond_true_label(ptr noundef %1) #11
  %15 = tail call fastcc ptr @gimple_cond_false_label(ptr noundef %1) #11
  tail call void (ptr, i32, i32, ptr, ...) @dump_gimple_fmt(ptr noundef %0, i32 noundef %2, i32 noundef %3, ptr noundef nonnull @.str.49, ptr noundef %1, ptr noundef %11, ptr noundef %12, ptr noundef %13, ptr noundef %14, ptr noundef %15) #11
  br label %44

16:                                               ; preds = %4
  %17 = and i32 %3, 131072
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %37

19:                                               ; preds = %16
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.50) #12
  %20 = tail call fastcc ptr @gimple_cond_lhs(ptr noundef %1) #11
  %21 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %20, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #12
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #12
  %22 = tail call fastcc i32 @gimple_cond_code(ptr noundef %1) #11, !range !49
  %23 = tail call ptr @op_symbol_code(i32 noundef %22) #12
  tail call void @pp_base_string(ptr noundef %0, ptr noundef %23) #12
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #12
  %24 = tail call fastcc ptr @gimple_cond_rhs(ptr noundef %1) #11
  %25 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %24, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #12
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 41) #12
  %26 = tail call fastcc ptr @gimple_cond_true_label(ptr noundef %1) #11
  %27 = icmp eq ptr %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %19
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.51) #12
  %29 = tail call fastcc ptr @gimple_cond_true_label(ptr noundef %1) #11
  %30 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %29, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #12
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 59) #12
  br label %31

31:                                               ; preds = %28, %19
  %32 = tail call fastcc ptr @gimple_cond_false_label(ptr noundef %1) #11
  %33 = icmp eq ptr %32, null
  br i1 %33, label %44, label %34

34:                                               ; preds = %31
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.52) #12
  %35 = tail call fastcc ptr @gimple_cond_false_label(ptr noundef %1) #11
  %36 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %35, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #12
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 59) #12
  br label %44

37:                                               ; preds = %16
  %38 = tail call fastcc ptr @gimple_cond_lhs(ptr noundef %1) #11
  %39 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %38, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #12
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #12
  %40 = tail call fastcc i32 @gimple_cond_code(ptr noundef %1) #11, !range !49
  %41 = tail call ptr @op_symbol_code(i32 noundef %40) #12
  tail call void @pp_base_string(ptr noundef %0, ptr noundef %41) #12
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #12
  %42 = tail call fastcc ptr @gimple_cond_rhs(ptr noundef %1) #11
  %43 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %42, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #12
  br label %44

44:                                               ; preds = %37, %34, %31, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dump_gimple_label(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = tail call fastcc ptr @gimple_label_label(ptr noundef %1) #11
  %6 = and i32 %3, 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @dump_gimple_fmt(ptr noundef %0, i32 noundef %2, i32 noundef %3, ptr noundef nonnull @.str.53, ptr noundef %1, ptr noundef %5) #11
  br label %11

9:                                                ; preds = %4
  %10 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %5, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #12
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 58) #12
  br label %11

11:                                               ; preds = %9, %8
  %12 = getelementptr inbounds %struct.tree_decl_common, ptr %5, i64 0, i32 2
  %13 = load i64, ptr %12, align 8
  %14 = and i64 %13, 256
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.54) #12
  br label %17

17:                                               ; preds = %16, %11
  %18 = and i32 %3, 524288
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.tree_label_decl, ptr %5, i64 0, i32 2
  %22 = load i32, ptr %21, align 4, !tbaa !39
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  tail call void (ptr, ptr, ...) @pp_printf(ptr noundef %0, ptr noundef nonnull @.str.55, i32 noundef %22) #12
  br label %25

25:                                               ; preds = %24, %20, %17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dump_gimple_goto(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = tail call fastcc ptr @gimple_goto_dest(ptr noundef %1) #11
  %6 = and i32 %3, 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @dump_gimple_fmt(ptr noundef %0, i32 noundef %2, i32 noundef %3, ptr noundef nonnull @.str.53, ptr noundef %1, ptr noundef %5) #11
  br label %10

9:                                                ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @dump_gimple_fmt(ptr noundef %0, i32 noundef %2, i32 noundef %3, ptr noundef nonnull @.str.56, ptr noundef %5) #11
  br label %10

10:                                               ; preds = %9, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dump_gimple_return(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = tail call fastcc ptr @gimple_return_retval(ptr noundef %1) #11
  %6 = and i32 %3, 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @dump_gimple_fmt(ptr noundef %0, i32 noundef %2, i32 noundef %3, ptr noundef nonnull @.str.53, ptr noundef %1, ptr noundef %5) #11
  br label %14

9:                                                ; preds = %4
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.57) #12
  %10 = icmp eq ptr %5, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %9
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #12
  %12 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef nonnull %5, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #12
  br label %13

13:                                               ; preds = %11, %9
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 59) #12
  br label %14

14:                                               ; preds = %13, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dump_gimple_switch(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = and i32 %3, 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %4
  %8 = tail call fastcc ptr @gimple_switch_index(ptr noundef %1) #11
  tail call void (ptr, i32, i32, ptr, ...) @dump_gimple_fmt(ptr noundef %0, i32 noundef %2, i32 noundef %3, ptr noundef nonnull @.str.58, ptr noundef %1, ptr noundef %8) #11
  br label %12

9:                                                ; preds = %4
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.59) #12
  %10 = tail call fastcc ptr @gimple_switch_index(ptr noundef %1) #11
  %11 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %10, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 1) #12
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.60) #12
  br label %12

12:                                               ; preds = %9, %7
  %13 = tail call fastcc i32 @gimple_switch_num_labels(ptr noundef %1) #11
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %32, label %15

15:                                               ; preds = %12, %28
  %16 = phi i32 [ %29, %28 ], [ 0, %12 ]
  %17 = tail call fastcc ptr @gimple_switch_label(ptr noundef %1, i32 noundef %16) #11
  %18 = icmp eq ptr %17, null
  br i1 %18, label %28, label %19

19:                                               ; preds = %15
  %20 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef nonnull %17, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #12
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #12
  %21 = getelementptr inbounds %struct.tree_exp, ptr %17, i64 1, i32 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !39
  %23 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %22, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #12
  %24 = tail call fastcc i32 @gimple_switch_num_labels(ptr noundef %1) #11
  %25 = add i32 %24, -1
  %26 = icmp ult i32 %16, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.19) #12
  br label %28

28:                                               ; preds = %19, %27, %15
  %29 = add nuw i32 %16, 1
  %30 = tail call fastcc i32 @gimple_switch_num_labels(ptr noundef %1) #11
  %31 = icmp ult i32 %29, %30
  br i1 %31, label %15, label %32, !llvm.loop !51

32:                                               ; preds = %28, %12
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 62) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dump_gimple_try(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = and i32 %3, 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %15, label %7

7:                                                ; preds = %4
  %8 = tail call fastcc i32 @gimple_try_kind(ptr noundef %1) #11, !range !52
  %9 = icmp eq i32 %8, 1
  %10 = icmp eq i32 %8, 2
  %11 = select i1 %10, ptr @.str.62, ptr @.str.63
  %12 = select i1 %9, ptr @.str.61, ptr %11
  %13 = tail call fastcc ptr @gimple_try_eval(ptr noundef %1) #11
  %14 = tail call fastcc ptr @gimple_try_cleanup(ptr noundef %1) #11
  tail call void (ptr, i32, i32, ptr, ...) @dump_gimple_fmt(ptr noundef %0, i32 noundef %2, i32 noundef %3, ptr noundef nonnull @.str.64, ptr noundef %1, ptr noundef nonnull %12, ptr noundef %13, ptr noundef %14) #11
  br label %25

15:                                               ; preds = %4
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.65) #12
  %16 = add nsw i32 %2, 2
  tail call fastcc void @newline_and_indent(ptr noundef %0, i32 noundef %16) #11
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 123) #12
  tail call void @pp_base_newline(ptr noundef %0) #12
  %17 = tail call fastcc ptr @gimple_try_eval(ptr noundef %1) #11
  %18 = add nsw i32 %2, 4
  tail call fastcc void @dump_gimple_seq(ptr noundef %0, ptr noundef %17, i32 noundef %18, i32 noundef %3) #11
  tail call fastcc void @newline_and_indent(ptr noundef %0, i32 noundef %16) #11
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 125) #12
  %19 = tail call fastcc i32 @gimple_try_kind(ptr noundef %1) #11, !range !52
  switch i32 %19, label %22 [
    i32 1, label %20
    i32 2, label %21
  ]

20:                                               ; preds = %15
  tail call fastcc void @newline_and_indent(ptr noundef %0, i32 noundef %2) #11
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.66) #12
  tail call fastcc void @newline_and_indent(ptr noundef %0, i32 noundef %16) #11
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 123) #12
  br label %23

21:                                               ; preds = %15
  tail call fastcc void @newline_and_indent(ptr noundef %0, i32 noundef %2) #11
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.67) #12
  tail call fastcc void @newline_and_indent(ptr noundef %0, i32 noundef %16) #11
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 123) #12
  br label %23

22:                                               ; preds = %15
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.68) #12
  br label %23

23:                                               ; preds = %21, %22, %20
  tail call void @pp_base_newline(ptr noundef %0) #12
  %24 = tail call fastcc ptr @gimple_try_cleanup(ptr noundef %1) #11
  tail call fastcc void @dump_gimple_seq(ptr noundef %0, ptr noundef %24, i32 noundef %18, i32 noundef %3) #11
  tail call fastcc void @newline_and_indent(ptr noundef %0, i32 noundef %16) #11
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 125) #12
  br label %25

25:                                               ; preds = %23, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dump_gimple_phi(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca %struct.expanded_location, align 8
  %6 = and i32 %3, 4
  %7 = icmp eq i32 %6, 0
  %8 = tail call fastcc ptr @gimple_phi_result(ptr noundef %1) #11
  br i1 %7, label %10, label %9

9:                                                ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @dump_gimple_fmt(ptr noundef %0, i32 noundef %2, i32 noundef %3, ptr noundef nonnull @.str.58, ptr noundef %1, ptr noundef %8) #11
  br label %12

10:                                               ; preds = %4
  %11 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %8, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #12
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.69) #12
  br label %12

12:                                               ; preds = %10, %9
  %13 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %1) #11
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %65, label %15

15:                                               ; preds = %12
  %16 = and i32 %3, 128
  %17 = icmp eq i32 %16, 0
  %18 = getelementptr inbounds i8, ptr %5, i64 8
  %19 = getelementptr inbounds i8, ptr %5, i64 12
  br label %20

20:                                               ; preds = %15, %60
  %21 = phi i64 [ 0, %15 ], [ %61, %60 ]
  br i1 %17, label %43, label %22

22:                                               ; preds = %20
  %23 = call fastcc zeroext i8 @gimple_phi_arg_has_location(ptr noundef %1, i64 noundef %21) #11, !range !19
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %43, label %25

25:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #13
  %26 = call fastcc i32 @gimple_phi_arg_location(ptr noundef %1, i64 noundef %21) #11
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %5, i32 noundef %26) #12
  %27 = load ptr, ptr %5, align 8, !tbaa.struct !53
  %28 = load i32, ptr %18, align 8, !tbaa.struct !55
  %29 = load i32, ptr %19, align 4, !tbaa.struct !56
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #13
  call void @pp_base_character(ptr noundef %0, i32 noundef 91) #12
  %30 = icmp eq ptr %27, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %25
  call void @pp_base_string(ptr noundef %0, ptr noundef nonnull %27) #12
  call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.2) #12
  br label %32

32:                                               ; preds = %25, %31
  %33 = load ptr, ptr %0, align 8, !tbaa !14
  %34 = getelementptr inbounds %struct.output_buffer, ptr %33, i64 0, i32 6
  %35 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %34, ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %28) #11
  %36 = load ptr, ptr %0, align 8, !tbaa !14
  %37 = getelementptr inbounds %struct.output_buffer, ptr %36, i64 0, i32 6
  call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull %37) #12
  call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull @.str.4) #12
  %38 = load ptr, ptr %0, align 8, !tbaa !14
  %39 = getelementptr inbounds %struct.output_buffer, ptr %38, i64 0, i32 6
  %40 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %29) #11
  %41 = load ptr, ptr %0, align 8, !tbaa !14
  %42 = getelementptr inbounds %struct.output_buffer, ptr %41, i64 0, i32 6
  call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull %42) #12
  call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull @.str.5) #12
  br label %43

43:                                               ; preds = %32, %22, %20
  %44 = call fastcc ptr @gimple_phi_arg_def(ptr noundef %1, i64 noundef %21) #11
  %45 = call i32 @dump_generic_node(ptr noundef %0, ptr noundef %44, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #12
  call void @pp_base_character(ptr noundef %0, i32 noundef 40) #12
  %46 = load ptr, ptr %0, align 8, !tbaa !14
  %47 = getelementptr inbounds %struct.output_buffer, ptr %46, i64 0, i32 6
  %48 = call fastcc ptr @gimple_phi_arg_edge(ptr noundef %1, i64 noundef %21) #11
  %49 = load ptr, ptr %48, align 8, !tbaa !57
  %50 = getelementptr inbounds %struct.basic_block_def, ptr %49, i64 0, i32 9
  %51 = load i32, ptr %50, align 8, !tbaa !59
  %52 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %47, ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %51) #11
  %53 = load ptr, ptr %0, align 8, !tbaa !14
  %54 = getelementptr inbounds %struct.output_buffer, ptr %53, i64 0, i32 6
  call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull %54) #12
  call void @pp_base_character(ptr noundef nonnull %0, i32 noundef 41) #12
  %55 = call fastcc i32 @gimple_phi_num_args(ptr noundef %1) #11
  %56 = add i32 %55, -1
  %57 = zext i32 %56 to i64
  %58 = icmp ult i64 %21, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %43
  call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull @.str.19) #12
  br label %60

60:                                               ; preds = %43, %59
  %61 = add nuw nsw i64 %21, 1
  %62 = call fastcc i32 @gimple_phi_num_args(ptr noundef %1) #11
  %63 = zext i32 %62 to i64
  %64 = icmp ult i64 %61, %63
  br i1 %64, label %20, label %65, !llvm.loop !61

65:                                               ; preds = %60, %12
  call void @pp_base_character(ptr noundef %0, i32 noundef 62) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dump_gimple_omp_parallel(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = and i32 %3, 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %4
  %8 = tail call fastcc ptr @gimple_omp_body(ptr noundef %1) #11
  tail call void (ptr, i32, i32, ptr, ...) @dump_gimple_fmt(ptr noundef %0, i32 noundef %2, i32 noundef %3, ptr noundef nonnull @.str.70, ptr noundef %1, ptr noundef %8) #11
  %9 = tail call fastcc ptr @gimple_omp_parallel_clauses(ptr noundef %1) #11
  tail call void @dump_omp_clauses(ptr noundef %0, ptr noundef %9, i32 noundef %2, i32 noundef %3) #12
  %10 = tail call fastcc ptr @gimple_omp_parallel_child_fn(ptr noundef %1) #11
  %11 = tail call fastcc ptr @gimple_omp_parallel_data_arg(ptr noundef %1) #11
  tail call void (ptr, i32, i32, ptr, ...) @dump_gimple_fmt(ptr noundef %0, i32 noundef %2, i32 noundef %3, ptr noundef nonnull @.str.71, ptr noundef %10, ptr noundef %11) #11
  br label %37

12:                                               ; preds = %4
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.72) #12
  %13 = tail call fastcc ptr @gimple_omp_parallel_clauses(ptr noundef %1) #11
  tail call void @dump_omp_clauses(ptr noundef %0, ptr noundef %13, i32 noundef %2, i32 noundef %3) #12
  %14 = tail call fastcc ptr @gimple_omp_parallel_child_fn(ptr noundef %1) #11
  %15 = icmp eq ptr %14, null
  br i1 %15, label %25, label %16

16:                                               ; preds = %12
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.73) #12
  %17 = tail call fastcc ptr @gimple_omp_parallel_child_fn(ptr noundef %1) #11
  %18 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %17, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #12
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.44) #12
  %19 = tail call fastcc ptr @gimple_omp_parallel_data_arg(ptr noundef %1) #11
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %16
  %22 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef nonnull %19, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #12
  br label %24

23:                                               ; preds = %16
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.74) #12
  br label %24

24:                                               ; preds = %23, %21
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.75) #12
  br label %25

25:                                               ; preds = %24, %12
  %26 = tail call fastcc ptr @gimple_omp_body(ptr noundef %1) #11
  %27 = icmp eq ptr %26, null
  br i1 %27, label %37, label %28

28:                                               ; preds = %25
  %29 = tail call fastcc ptr @gimple_seq_first_stmt(ptr noundef nonnull %26) #11
  %30 = tail call fastcc i32 @gimple_code(ptr noundef %29) #11, !range !24
  %31 = icmp eq i32 %30, 10
  br i1 %31, label %35, label %32

32:                                               ; preds = %28
  %33 = add nsw i32 %2, 2
  tail call fastcc void @newline_and_indent(ptr noundef %0, i32 noundef %33) #11
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 123) #12
  tail call void @pp_base_newline(ptr noundef %0) #12
  %34 = add nsw i32 %2, 4
  tail call fastcc void @dump_gimple_seq(ptr noundef %0, ptr noundef nonnull %26, i32 noundef %34, i32 noundef %3) #11
  tail call fastcc void @newline_and_indent(ptr noundef %0, i32 noundef %33) #11
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 125) #12
  br label %37

35:                                               ; preds = %28
  tail call void @pp_base_newline(ptr noundef %0) #12
  %36 = add nsw i32 %2, 2
  tail call fastcc void @dump_gimple_seq(ptr noundef %0, ptr noundef nonnull %26, i32 noundef %36, i32 noundef %3) #11
  br label %37

37:                                               ; preds = %32, %35, %25, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dump_gimple_omp_task(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = and i32 %3, 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %4
  %8 = tail call fastcc ptr @gimple_omp_body(ptr noundef %1) #11
  tail call void (ptr, i32, i32, ptr, ...) @dump_gimple_fmt(ptr noundef %0, i32 noundef %2, i32 noundef %3, ptr noundef nonnull @.str.70, ptr noundef %1, ptr noundef %8) #11
  %9 = tail call fastcc ptr @gimple_omp_task_clauses(ptr noundef %1) #11
  tail call void @dump_omp_clauses(ptr noundef %0, ptr noundef %9, i32 noundef %2, i32 noundef %3) #12
  %10 = tail call fastcc ptr @gimple_omp_task_child_fn(ptr noundef %1) #11
  %11 = tail call fastcc ptr @gimple_omp_task_data_arg(ptr noundef %1) #11
  %12 = tail call fastcc ptr @gimple_omp_task_copy_fn(ptr noundef %1) #11
  %13 = tail call fastcc ptr @gimple_omp_task_arg_size(ptr noundef %1) #11
  tail call void (ptr, i32, i32, ptr, ...) @dump_gimple_fmt(ptr noundef %0, i32 noundef %2, i32 noundef %3, ptr noundef nonnull @.str.76, ptr noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef %13, ptr noundef %13) #11
  br label %39

14:                                               ; preds = %4
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.77) #12
  %15 = tail call fastcc ptr @gimple_omp_task_clauses(ptr noundef %1) #11
  tail call void @dump_omp_clauses(ptr noundef %0, ptr noundef %15, i32 noundef %2, i32 noundef %3) #12
  %16 = tail call fastcc ptr @gimple_omp_task_child_fn(ptr noundef %1) #11
  %17 = icmp eq ptr %16, null
  br i1 %17, label %27, label %18

18:                                               ; preds = %14
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.73) #12
  %19 = tail call fastcc ptr @gimple_omp_task_child_fn(ptr noundef %1) #11
  %20 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %19, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #12
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.44) #12
  %21 = tail call fastcc ptr @gimple_omp_task_data_arg(ptr noundef %1) #11
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %18
  %24 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef nonnull %21, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #12
  br label %26

25:                                               ; preds = %18
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.74) #12
  br label %26

26:                                               ; preds = %25, %23
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.75) #12
  br label %27

27:                                               ; preds = %26, %14
  %28 = tail call fastcc ptr @gimple_omp_body(ptr noundef %1) #11
  %29 = icmp eq ptr %28, null
  br i1 %29, label %39, label %30

30:                                               ; preds = %27
  %31 = tail call fastcc ptr @gimple_seq_first_stmt(ptr noundef nonnull %28) #11
  %32 = tail call fastcc i32 @gimple_code(ptr noundef %31) #11, !range !24
  %33 = icmp eq i32 %32, 10
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  %35 = add nsw i32 %2, 2
  tail call fastcc void @newline_and_indent(ptr noundef %0, i32 noundef %35) #11
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 123) #12
  tail call void @pp_base_newline(ptr noundef %0) #12
  %36 = add nsw i32 %2, 4
  tail call fastcc void @dump_gimple_seq(ptr noundef %0, ptr noundef nonnull %28, i32 noundef %36, i32 noundef %3) #11
  tail call fastcc void @newline_and_indent(ptr noundef %0, i32 noundef %35) #11
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 125) #12
  br label %39

37:                                               ; preds = %30
  tail call void @pp_base_newline(ptr noundef %0) #12
  %38 = add nsw i32 %2, 2
  tail call fastcc void @dump_gimple_seq(ptr noundef %0, ptr noundef nonnull %28, i32 noundef %38, i32 noundef %3) #11
  br label %39

39:                                               ; preds = %34, %37, %27, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dump_gimple_omp_atomic_load(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = and i32 %3, 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %4
  %8 = tail call fastcc ptr @gimple_omp_atomic_load_lhs(ptr noundef %1) #11
  %9 = tail call fastcc ptr @gimple_omp_atomic_load_rhs(ptr noundef %1) #11
  tail call void (ptr, i32, i32, ptr, ...) @dump_gimple_fmt(ptr noundef %0, i32 noundef %2, i32 noundef %3, ptr noundef nonnull @.str.78, ptr noundef %1, ptr noundef %8, ptr noundef %9) #11
  br label %16

10:                                               ; preds = %4
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.79) #12
  %11 = add nsw i32 %2, 2
  tail call fastcc void @newline_and_indent(ptr noundef %0, i32 noundef %11) #11
  %12 = tail call fastcc ptr @gimple_omp_atomic_load_lhs(ptr noundef %1) #11
  %13 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %12, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #12
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #12
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 61) #12
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #12
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 42) #12
  %14 = tail call fastcc ptr @gimple_omp_atomic_load_rhs(ptr noundef %1) #11
  %15 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %14, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #12
  br label %16

16:                                               ; preds = %10, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dump_gimple_omp_atomic_store(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = and i32 %3, 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %4
  %8 = tail call fastcc ptr @gimple_omp_atomic_store_val(ptr noundef %1) #11
  tail call void (ptr, i32, i32, ptr, ...) @dump_gimple_fmt(ptr noundef %0, i32 noundef %2, i32 noundef %3, ptr noundef nonnull @.str.53, ptr noundef %1, ptr noundef %8) #11
  br label %12

9:                                                ; preds = %4
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.80) #12
  %10 = tail call fastcc ptr @gimple_omp_atomic_store_val(ptr noundef %1) #11
  %11 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %10, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #12
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 41) #12
  br label %12

12:                                               ; preds = %9, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dump_gimple_omp_for(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = and i32 %3, 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %27, label %7

7:                                                ; preds = %4
  %8 = tail call fastcc ptr @gimple_omp_body(ptr noundef %1) #11
  tail call void (ptr, i32, i32, ptr, ...) @dump_gimple_fmt(ptr noundef %0, i32 noundef %2, i32 noundef %3, ptr noundef nonnull @.str.70, ptr noundef %1, ptr noundef %8) #11
  %9 = tail call fastcc ptr @gimple_omp_for_clauses(ptr noundef %1) #11
  tail call void @dump_omp_clauses(ptr noundef %0, ptr noundef %9, i32 noundef %2, i32 noundef %3) #12
  tail call void (ptr, i32, i32, ptr, ...) @dump_gimple_fmt(ptr noundef %0, i32 noundef %2, i32 noundef %3, ptr noundef nonnull @.str.81) #11
  %10 = tail call fastcc i64 @gimple_omp_for_collapse(ptr noundef %1) #11
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %25, label %12

12:                                               ; preds = %7, %12
  %13 = phi i64 [ %22, %12 ], [ 0, %7 ]
  %14 = tail call fastcc ptr @gimple_omp_for_index(ptr noundef %1, i64 noundef %13) #11
  %15 = tail call fastcc ptr @gimple_omp_for_initial(ptr noundef %1, i64 noundef %13) #11
  %16 = tail call fastcc ptr @gimple_omp_for_final(ptr noundef %1, i64 noundef %13) #11
  %17 = tail call fastcc i32 @gimple_omp_for_cond(ptr noundef %1, i64 noundef %13) #11
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds [0 x ptr], ptr @tree_code_name, i64 0, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !6
  %21 = tail call fastcc ptr @gimple_omp_for_incr(ptr noundef %1, i64 noundef %13) #11
  tail call void (ptr, i32, i32, ptr, ...) @dump_gimple_fmt(ptr noundef %0, i32 noundef %2, i32 noundef %3, ptr noundef nonnull @.str.82, ptr noundef %14, ptr noundef %15, ptr noundef %16, ptr noundef %20, ptr noundef %21) #11
  %22 = add nuw i64 %13, 1
  %23 = tail call fastcc i64 @gimple_omp_for_collapse(ptr noundef %1) #11
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %12, label %25, !llvm.loop !62

25:                                               ; preds = %12, %7
  %26 = tail call fastcc ptr @gimple_omp_for_pre_body(ptr noundef %1) #11
  tail call void (ptr, i32, i32, ptr, ...) @dump_gimple_fmt(ptr noundef %0, i32 noundef %2, i32 noundef %3, ptr noundef nonnull @.str.83, ptr noundef %26) #11
  br label %68

27:                                               ; preds = %4
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.84) #12
  %28 = tail call fastcc ptr @gimple_omp_for_clauses(ptr noundef %1) #11
  tail call void @dump_omp_clauses(ptr noundef %0, ptr noundef %28, i32 noundef %2, i32 noundef %3) #12
  %29 = tail call fastcc i64 @gimple_omp_for_collapse(ptr noundef %1) #11
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %59, label %31

31:                                               ; preds = %27, %49
  %32 = phi i64 [ %56, %49 ], [ 0, %27 ]
  %33 = phi i32 [ %36, %49 ], [ %2, %27 ]
  %34 = icmp eq i64 %32, 0
  %35 = add nsw i32 %33, 2
  %36 = select i1 %34, i32 %33, i32 %35
  tail call fastcc void @newline_and_indent(ptr noundef %0, i32 noundef %36) #11
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.85) #12
  %37 = tail call fastcc ptr @gimple_omp_for_index(ptr noundef %1, i64 noundef %32) #11
  %38 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %37, i32 noundef %36, i32 noundef %3, i8 noundef zeroext 0) #12
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.86) #12
  %39 = tail call fastcc ptr @gimple_omp_for_initial(ptr noundef %1, i64 noundef %32) #11
  %40 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %39, i32 noundef %36, i32 noundef %3, i8 noundef zeroext 0) #12
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.87) #12
  %41 = tail call fastcc ptr @gimple_omp_for_index(ptr noundef %1, i64 noundef %32) #11
  %42 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %41, i32 noundef %36, i32 noundef %3, i8 noundef zeroext 0) #12
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #12
  %43 = tail call fastcc i32 @gimple_omp_for_cond(ptr noundef %1, i64 noundef %32) #11
  switch i32 %43, label %48 [
    i32 97, label %44
    i32 99, label %45
    i32 98, label %46
    i32 100, label %47
  ]

44:                                               ; preds = %31
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 60) #12
  br label %49

45:                                               ; preds = %31
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 62) #12
  br label %49

46:                                               ; preds = %31
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.88) #12
  br label %49

47:                                               ; preds = %31
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.89) #12
  br label %49

48:                                               ; preds = %31
  tail call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 897, ptr noundef nonnull @.str.29) #12
  br label %49

49:                                               ; preds = %48, %47, %46, %45, %44
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #12
  %50 = tail call fastcc ptr @gimple_omp_for_final(ptr noundef %1, i64 noundef %32) #11
  %51 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %50, i32 noundef %36, i32 noundef %3, i8 noundef zeroext 0) #12
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.87) #12
  %52 = tail call fastcc ptr @gimple_omp_for_index(ptr noundef %1, i64 noundef %32) #11
  %53 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %52, i32 noundef %36, i32 noundef %3, i8 noundef zeroext 0) #12
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.86) #12
  %54 = tail call fastcc ptr @gimple_omp_for_incr(ptr noundef %1, i64 noundef %32) #11
  %55 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %54, i32 noundef %36, i32 noundef %3, i8 noundef zeroext 0) #12
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 41) #12
  %56 = add nuw i64 %32, 1
  %57 = tail call fastcc i64 @gimple_omp_for_collapse(ptr noundef %1) #11
  %58 = icmp ult i64 %56, %57
  br i1 %58, label %31, label %59, !llvm.loop !63

59:                                               ; preds = %49, %27
  %60 = phi i32 [ %2, %27 ], [ %36, %49 ]
  %61 = tail call fastcc ptr @gimple_omp_body(ptr noundef %1) #11
  %62 = tail call fastcc zeroext i8 @gimple_seq_empty_p(ptr noundef %61) #11, !range !19
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = add nsw i32 %60, 2
  tail call fastcc void @newline_and_indent(ptr noundef %0, i32 noundef %65) #11
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 123) #12
  tail call void @pp_base_newline(ptr noundef %0) #12
  %66 = tail call fastcc ptr @gimple_omp_body(ptr noundef %1) #11
  %67 = add nsw i32 %60, 4
  tail call fastcc void @dump_gimple_seq(ptr noundef %0, ptr noundef %66, i32 noundef %67, i32 noundef %3) #11
  tail call fastcc void @newline_and_indent(ptr noundef %0, i32 noundef %65) #11
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 125) #12
  br label %68

68:                                               ; preds = %59, %64, %25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dump_gimple_omp_continue(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = and i32 %3, 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %4
  %8 = tail call fastcc ptr @gimple_omp_continue_control_def(ptr noundef %1) #11
  %9 = tail call fastcc ptr @gimple_omp_continue_control_use(ptr noundef %1) #11
  tail call void (ptr, i32, i32, ptr, ...) @dump_gimple_fmt(ptr noundef %0, i32 noundef %2, i32 noundef %3, ptr noundef nonnull @.str.78, ptr noundef %1, ptr noundef %8, ptr noundef %9) #11
  br label %15

10:                                               ; preds = %4
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.90) #12
  %11 = tail call fastcc ptr @gimple_omp_continue_control_def(ptr noundef %1) #11
  %12 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %11, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #12
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 44) #12
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #12
  %13 = tail call fastcc ptr @gimple_omp_continue_control_use(ptr noundef %1) #11
  %14 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %13, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #12
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 41) #12
  br label %15

15:                                               ; preds = %10, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dump_gimple_omp_single(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = and i32 %3, 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %4
  %8 = tail call fastcc ptr @gimple_omp_body(ptr noundef %1) #11
  tail call void (ptr, i32, i32, ptr, ...) @dump_gimple_fmt(ptr noundef %0, i32 noundef %2, i32 noundef %3, ptr noundef nonnull @.str.70, ptr noundef %1, ptr noundef %8) #11
  %9 = tail call fastcc ptr @gimple_omp_single_clauses(ptr noundef %1) #11
  tail call void @dump_omp_clauses(ptr noundef %0, ptr noundef %9, i32 noundef %2, i32 noundef %3) #12
  tail call void (ptr, i32, i32, ptr, ...) @dump_gimple_fmt(ptr noundef %0, i32 noundef %2, i32 noundef %3, ptr noundef nonnull @.str.91) #11
  br label %19

10:                                               ; preds = %4
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.92) #12
  %11 = tail call fastcc ptr @gimple_omp_single_clauses(ptr noundef %1) #11
  tail call void @dump_omp_clauses(ptr noundef %0, ptr noundef %11, i32 noundef %2, i32 noundef %3) #12
  %12 = tail call fastcc ptr @gimple_omp_body(ptr noundef %1) #11
  %13 = tail call fastcc zeroext i8 @gimple_seq_empty_p(ptr noundef %12) #11, !range !19
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = add nsw i32 %2, 2
  tail call fastcc void @newline_and_indent(ptr noundef %0, i32 noundef %16) #11
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 123) #12
  tail call void @pp_base_newline(ptr noundef %0) #12
  %17 = tail call fastcc ptr @gimple_omp_body(ptr noundef %1) #11
  %18 = add nsw i32 %2, 4
  tail call fastcc void @dump_gimple_seq(ptr noundef %0, ptr noundef %17, i32 noundef %18, i32 noundef %3) #11
  tail call fastcc void @newline_and_indent(ptr noundef %0, i32 noundef %16) #11
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 125) #12
  br label %19

19:                                               ; preds = %10, %15, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dump_gimple_omp_return(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = and i32 %3, 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %4
  %8 = tail call fastcc zeroext i8 @gimple_omp_return_nowait_p(ptr noundef %1) #11, !range !19
  %9 = zext nneg i8 %8 to i32
  tail call void (ptr, i32, i32, ptr, ...) @dump_gimple_fmt(ptr noundef %0, i32 noundef %2, i32 noundef %3, ptr noundef nonnull @.str.93, ptr noundef %1, i32 noundef %9) #11
  br label %14

10:                                               ; preds = %4
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.94) #12
  %11 = tail call fastcc zeroext i8 @gimple_omp_return_nowait_p(ptr noundef %1) #11, !range !19
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %10
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.95) #12
  br label %14

14:                                               ; preds = %10, %13, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dump_gimple_omp_sections(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = and i32 %3, 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %4
  %8 = tail call fastcc ptr @gimple_omp_body(ptr noundef %1) #11
  tail call void (ptr, i32, i32, ptr, ...) @dump_gimple_fmt(ptr noundef %0, i32 noundef %2, i32 noundef %3, ptr noundef nonnull @.str.70, ptr noundef %1, ptr noundef %8) #11
  %9 = tail call fastcc ptr @gimple_omp_sections_clauses(ptr noundef %1) #11
  tail call void @dump_omp_clauses(ptr noundef %0, ptr noundef %9, i32 noundef %2, i32 noundef %3) #12
  tail call void (ptr, i32, i32, ptr, ...) @dump_gimple_fmt(ptr noundef %0, i32 noundef %2, i32 noundef %3, ptr noundef nonnull @.str.91) #11
  br label %25

10:                                               ; preds = %4
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.96) #12
  %11 = tail call fastcc ptr @gimple_omp_sections_control(ptr noundef %1) #11
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.40) #12
  %14 = tail call fastcc ptr @gimple_omp_sections_control(ptr noundef %1) #11
  %15 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %14, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #12
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 62) #12
  br label %16

16:                                               ; preds = %13, %10
  %17 = tail call fastcc ptr @gimple_omp_sections_clauses(ptr noundef %1) #11
  tail call void @dump_omp_clauses(ptr noundef %0, ptr noundef %17, i32 noundef %2, i32 noundef %3) #12
  %18 = tail call fastcc ptr @gimple_omp_body(ptr noundef %1) #11
  %19 = tail call fastcc zeroext i8 @gimple_seq_empty_p(ptr noundef %18) #11, !range !19
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = add nsw i32 %2, 2
  tail call fastcc void @newline_and_indent(ptr noundef %0, i32 noundef %22) #11
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 123) #12
  tail call void @pp_base_newline(ptr noundef %0) #12
  %23 = tail call fastcc ptr @gimple_omp_body(ptr noundef %1) #11
  %24 = add nsw i32 %2, 4
  tail call fastcc void @dump_gimple_seq(ptr noundef %0, ptr noundef %23, i32 noundef %24, i32 noundef %3) #11
  tail call fastcc void @newline_and_indent(ptr noundef %0, i32 noundef %22) #11
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 125) #12
  br label %25

25:                                               ; preds = %16, %21, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dump_gimple_omp_block(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = and i32 %3, 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %4
  %8 = tail call fastcc ptr @gimple_omp_body(ptr noundef %1) #11
  tail call void (ptr, i32, i32, ptr, ...) @dump_gimple_fmt(ptr noundef %0, i32 noundef %2, i32 noundef %3, ptr noundef nonnull @.str.97, ptr noundef %1, ptr noundef %8) #11
  br label %24

9:                                                ; preds = %4
  %10 = tail call fastcc i32 @gimple_code(ptr noundef %1) #11, !range !24
  %11 = trunc i32 %10 to i8
  switch i8 %11, label %15 [
    i8 24, label %12
    i8 25, label %13
    i8 29, label %14
  ]

12:                                               ; preds = %9
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.98) #12
  br label %16

13:                                               ; preds = %9
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.99) #12
  br label %16

14:                                               ; preds = %9
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.100) #12
  br label %16

15:                                               ; preds = %9
  tail call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 1035, ptr noundef nonnull @.str.29) #12
  br label %16

16:                                               ; preds = %15, %14, %13, %12
  %17 = tail call fastcc ptr @gimple_omp_body(ptr noundef %1) #11
  %18 = tail call fastcc zeroext i8 @gimple_seq_empty_p(ptr noundef %17) #11, !range !19
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = add nsw i32 %2, 2
  tail call fastcc void @newline_and_indent(ptr noundef %0, i32 noundef %21) #11
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 123) #12
  tail call void @pp_base_newline(ptr noundef %0) #12
  %22 = tail call fastcc ptr @gimple_omp_body(ptr noundef %1) #11
  %23 = add nsw i32 %2, 4
  tail call fastcc void @dump_gimple_seq(ptr noundef %0, ptr noundef %22, i32 noundef %23, i32 noundef %3) #11
  tail call fastcc void @newline_and_indent(ptr noundef %0, i32 noundef %21) #11
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 125) #12
  br label %24

24:                                               ; preds = %16, %20, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dump_gimple_omp_critical(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = and i32 %3, 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %4
  %8 = tail call fastcc ptr @gimple_omp_body(ptr noundef %1) #11
  tail call void (ptr, i32, i32, ptr, ...) @dump_gimple_fmt(ptr noundef %0, i32 noundef %2, i32 noundef %3, ptr noundef nonnull @.str.97, ptr noundef %1, ptr noundef %8) #11
  br label %23

9:                                                ; preds = %4
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.101) #12
  %10 = tail call fastcc ptr @gimple_omp_critical_name(ptr noundef %1) #11
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %9
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.44) #12
  %13 = tail call fastcc ptr @gimple_omp_critical_name(ptr noundef %1) #11
  %14 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %13, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #12
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 41) #12
  br label %15

15:                                               ; preds = %12, %9
  %16 = tail call fastcc ptr @gimple_omp_body(ptr noundef %1) #11
  %17 = tail call fastcc zeroext i8 @gimple_seq_empty_p(ptr noundef %16) #11, !range !19
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = add nsw i32 %2, 2
  tail call fastcc void @newline_and_indent(ptr noundef %0, i32 noundef %20) #11
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 123) #12
  tail call void @pp_base_newline(ptr noundef %0) #12
  %21 = tail call fastcc ptr @gimple_omp_body(ptr noundef %1) #11
  %22 = add nsw i32 %2, 4
  tail call fastcc void @dump_gimple_seq(ptr noundef %0, ptr noundef %21, i32 noundef %22, i32 noundef %3) #11
  tail call fastcc void @newline_and_indent(ptr noundef %0, i32 noundef %20) #11
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 125) #12
  br label %23

23:                                               ; preds = %15, %19, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dump_gimple_catch(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = and i32 %3, 4
  %6 = icmp eq i32 %5, 0
  %7 = tail call fastcc ptr @gimple_catch_types(ptr noundef %1) #11
  %8 = tail call fastcc ptr @gimple_catch_handler(ptr noundef %1) #11
  br i1 %6, label %10, label %9

9:                                                ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @dump_gimple_fmt(ptr noundef %0, i32 noundef %2, i32 noundef %3, ptr noundef nonnull @.str.102, ptr noundef %1, ptr noundef %7, ptr noundef %8) #11
  br label %11

10:                                               ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @dump_gimple_fmt(ptr noundef %0, i32 noundef %2, i32 noundef %3, ptr noundef nonnull @.str.103, ptr noundef %7, ptr noundef %8) #11
  br label %11

11:                                               ; preds = %10, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dump_gimple_eh_filter(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = and i32 %3, 4
  %6 = icmp eq i32 %5, 0
  %7 = tail call fastcc ptr @gimple_eh_filter_types(ptr noundef %1) #11
  %8 = tail call fastcc ptr @gimple_eh_filter_failure(ptr noundef %1) #11
  br i1 %6, label %10, label %9

9:                                                ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @dump_gimple_fmt(ptr noundef %0, i32 noundef %2, i32 noundef %3, ptr noundef nonnull @.str.104, ptr noundef %1, ptr noundef %7, ptr noundef %8) #11
  br label %11

10:                                               ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @dump_gimple_fmt(ptr noundef %0, i32 noundef %2, i32 noundef %3, ptr noundef nonnull @.str.105, ptr noundef %7, ptr noundef %8) #11
  br label %11

11:                                               ; preds = %10, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dump_gimple_eh_must_not_throw(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = and i32 %3, 4
  %6 = icmp eq i32 %5, 0
  %7 = tail call fastcc ptr @gimple_eh_must_not_throw_fndecl(ptr noundef %1) #11
  br i1 %6, label %9, label %8

8:                                                ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @dump_gimple_fmt(ptr noundef %0, i32 noundef %2, i32 noundef %3, ptr noundef nonnull @.str.53, ptr noundef %1, ptr noundef %7) #11
  br label %10

9:                                                ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @dump_gimple_fmt(ptr noundef %0, i32 noundef %2, i32 noundef %3, ptr noundef nonnull @.str.106, ptr noundef %7) #11
  br label %10

10:                                               ; preds = %9, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dump_gimple_resx(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = and i32 %3, 4
  %6 = icmp eq i32 %5, 0
  %7 = tail call fastcc i32 @gimple_resx_region(ptr noundef %1) #11
  br i1 %6, label %9, label %8

8:                                                ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @dump_gimple_fmt(ptr noundef %0, i32 noundef %2, i32 noundef %3, ptr noundef nonnull @.str.107, ptr noundef %1, i32 noundef %7) #11
  br label %10

9:                                                ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @dump_gimple_fmt(ptr noundef %0, i32 noundef %2, i32 noundef %3, ptr noundef nonnull @.str.108, i32 noundef %7) #11
  br label %10

10:                                               ; preds = %9, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dump_gimple_eh_dispatch(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = and i32 %3, 4
  %6 = icmp eq i32 %5, 0
  %7 = tail call fastcc i32 @gimple_eh_dispatch_region(ptr noundef %1) #11
  br i1 %6, label %9, label %8

8:                                                ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @dump_gimple_fmt(ptr noundef %0, i32 noundef %2, i32 noundef %3, ptr noundef nonnull @.str.107, ptr noundef %1, i32 noundef %7) #11
  br label %10

9:                                                ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @dump_gimple_fmt(ptr noundef %0, i32 noundef %2, i32 noundef %3, ptr noundef nonnull @.str.109, i32 noundef %7) #11
  br label %10

10:                                               ; preds = %9, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dump_gimple_debug(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = load i32, ptr %1, align 8
  %6 = icmp ult i32 %5, 65536
  br i1 %6, label %7, label %14

7:                                                ; preds = %4
  %8 = and i32 %3, 4
  %9 = icmp eq i32 %8, 0
  %10 = tail call fastcc ptr @gimple_debug_bind_get_var(ptr noundef nonnull %1) #11
  %11 = tail call fastcc ptr @gimple_debug_bind_get_value(ptr noundef nonnull %1) #11
  br i1 %9, label %13, label %12

12:                                               ; preds = %7
  tail call void (ptr, i32, i32, ptr, ...) @dump_gimple_fmt(ptr noundef %0, i32 noundef %2, i32 noundef %3, ptr noundef nonnull @.str.110, ptr noundef nonnull %1, ptr noundef %10, ptr noundef %11) #11
  br label %15

13:                                               ; preds = %7
  tail call void (ptr, i32, i32, ptr, ...) @dump_gimple_fmt(ptr noundef %0, i32 noundef %2, i32 noundef %3, ptr noundef nonnull @.str.111, ptr noundef %10, ptr noundef %11) #11
  br label %15

14:                                               ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 835, ptr noundef nonnull @.str.29) #12
  br label %15

15:                                               ; preds = %12, %13, %14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_predict_outcome(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 31
  ret i32 %3
}

; Function Attrs: optsize
declare ptr @predictor_name(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_predict_predictor(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 16
  %4 = and i32 %3, 32767
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_niy(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = tail call fastcc i32 @gimple_code(ptr noundef %1) #11, !range !24
  %4 = zext nneg i32 %3 to i64
  %5 = getelementptr inbounds [0 x ptr], ptr @gimple_code_name, i64 0, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !6
  tail call void (ptr, ptr, ...) @pp_printf(ptr noundef %0, ptr noundef nonnull @.str.112, ptr noundef %6) #12
  ret void
}

; Function Attrs: optsize
declare void @pp_write_text_to_stream(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vdef(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #11, !range !19
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !39
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vuse(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #11, !range !19
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !39
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: optsize
declare zeroext i8 @ssa_operands_active() local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_references_memory_p(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #11, !range !19
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_vuse(ptr noundef %0) #11
  %6 = icmp ne ptr %5, null
  %7 = zext i1 %6 to i8
  br label %8

8:                                                ; preds = %4, %1
  %9 = phi i8 [ 0, %1 ], [ %7, %4 ]
  ret i8 %9
}

; Function Attrs: optsize
declare i32 @dump_generic_node(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @newline_and_indent(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  tail call void @pp_base_newline(ptr noundef %0) #12
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %2, %4
  %5 = phi i32 [ %6, %4 ], [ 0, %2 ]
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #12
  %6 = add nuw nsw i32 %5, 1
  %7 = icmp eq i32 %6, %1
  br i1 %7, label %8, label %4, !llvm.loop !64

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @dump_gimple_fmt(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, ...) unnamed_addr #0 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #13
  call void @llvm.va_start(ptr nonnull %5)
  %6 = getelementptr inbounds %struct.__va_list_tag, ptr %5, i64 0, i32 2
  %7 = getelementptr inbounds %struct.__va_list_tag, ptr %5, i64 0, i32 3
  br label %8

8:                                                ; preds = %107, %4
  %9 = phi ptr [ %3, %4 ], [ %110, %107 ]
  %10 = phi i32 [ %1, %4 ], [ %109, %107 ]
  %11 = load i8, ptr %9, align 1, !tbaa !39
  switch i8 %11, label %105 [
    i8 0, label %111
    i8 37, label %12
  ]

12:                                               ; preds = %8
  %13 = getelementptr inbounds i8, ptr %9, i64 1
  %14 = load i8, ptr %13, align 1, !tbaa !39
  switch i8 %14, label %104 [
    i8 71, label %15
    i8 83, label %33
    i8 84, label %48
    i8 100, label %66
    i8 115, label %85
    i8 110, label %99
    i8 43, label %100
    i8 45, label %102
  ]

15:                                               ; preds = %12
  %16 = load i32, ptr %5, align 16
  %17 = icmp ult i32 %16, 41
  br i1 %17, label %18, label %23

18:                                               ; preds = %15
  %19 = load ptr, ptr %7, align 16
  %20 = zext nneg i32 %16 to i64
  %21 = getelementptr i8, ptr %19, i64 %20
  %22 = add nuw nsw i32 %16, 8
  store i32 %22, ptr %5, align 16
  br label %26

23:                                               ; preds = %15
  %24 = load ptr, ptr %6, align 8
  %25 = getelementptr i8, ptr %24, i64 8
  store ptr %25, ptr %6, align 8
  br label %26

26:                                               ; preds = %23, %18
  %27 = phi ptr [ %21, %18 ], [ %24, %23 ]
  %28 = load ptr, ptr %27, align 8
  %29 = call fastcc i32 @gimple_code(ptr noundef %28) #11, !range !24
  %30 = zext nneg i32 %29 to i64
  %31 = getelementptr inbounds [0 x ptr], ptr @gimple_code_name, i64 0, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !6
  call void @pp_base_string(ptr noundef %0, ptr noundef %32) #12
  br label %107

33:                                               ; preds = %12
  %34 = load i32, ptr %5, align 16
  %35 = icmp ult i32 %34, 41
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = load ptr, ptr %7, align 16
  %38 = zext nneg i32 %34 to i64
  %39 = getelementptr i8, ptr %37, i64 %38
  %40 = add nuw nsw i32 %34, 8
  store i32 %40, ptr %5, align 16
  br label %44

41:                                               ; preds = %33
  %42 = load ptr, ptr %6, align 8
  %43 = getelementptr i8, ptr %42, i64 8
  store ptr %43, ptr %6, align 8
  br label %44

44:                                               ; preds = %41, %36
  %45 = phi ptr [ %39, %36 ], [ %42, %41 ]
  %46 = load ptr, ptr %45, align 8
  call void @pp_base_newline(ptr noundef %0) #12
  %47 = add nsw i32 %10, 2
  call fastcc void @dump_gimple_seq(ptr noundef %0, ptr noundef %46, i32 noundef %47, i32 noundef %2) #11
  call fastcc void @newline_and_indent(ptr noundef %0, i32 noundef %10) #11
  br label %107

48:                                               ; preds = %12
  %49 = load i32, ptr %5, align 16
  %50 = icmp ult i32 %49, 41
  br i1 %50, label %51, label %56

51:                                               ; preds = %48
  %52 = load ptr, ptr %7, align 16
  %53 = zext nneg i32 %49 to i64
  %54 = getelementptr i8, ptr %52, i64 %53
  %55 = add nuw nsw i32 %49, 8
  store i32 %55, ptr %5, align 16
  br label %59

56:                                               ; preds = %48
  %57 = load ptr, ptr %6, align 8
  %58 = getelementptr i8, ptr %57, i64 8
  store ptr %58, ptr %6, align 8
  br label %59

59:                                               ; preds = %56, %51
  %60 = phi ptr [ %54, %51 ], [ %57, %56 ]
  %61 = load ptr, ptr %60, align 8
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.31) #12
  br label %107

64:                                               ; preds = %59
  %65 = call i32 @dump_generic_node(ptr noundef %0, ptr noundef nonnull %61, i32 noundef %10, i32 noundef %2, i8 noundef zeroext 0) #12
  br label %107

66:                                               ; preds = %12
  %67 = load ptr, ptr %0, align 8, !tbaa !14
  %68 = getelementptr inbounds %struct.output_buffer, ptr %67, i64 0, i32 6
  %69 = load i32, ptr %5, align 16
  %70 = icmp ult i32 %69, 41
  br i1 %70, label %71, label %76

71:                                               ; preds = %66
  %72 = load ptr, ptr %7, align 16
  %73 = zext nneg i32 %69 to i64
  %74 = getelementptr i8, ptr %72, i64 %73
  %75 = add nuw nsw i32 %69, 8
  store i32 %75, ptr %5, align 16
  br label %79

76:                                               ; preds = %66
  %77 = load ptr, ptr %6, align 8
  %78 = getelementptr i8, ptr %77, i64 8
  store ptr %78, ptr %6, align 8
  br label %79

79:                                               ; preds = %76, %71
  %80 = phi ptr [ %74, %71 ], [ %77, %76 ]
  %81 = load i32, ptr %80, align 4
  %82 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %68, ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %81) #11
  %83 = load ptr, ptr %0, align 8, !tbaa !14
  %84 = getelementptr inbounds %struct.output_buffer, ptr %83, i64 0, i32 6
  call void @pp_base_string(ptr noundef nonnull %0, ptr noundef nonnull %84) #12
  br label %107

85:                                               ; preds = %12
  %86 = load i32, ptr %5, align 16
  %87 = icmp ult i32 %86, 41
  br i1 %87, label %88, label %93

88:                                               ; preds = %85
  %89 = load ptr, ptr %7, align 16
  %90 = zext nneg i32 %86 to i64
  %91 = getelementptr i8, ptr %89, i64 %90
  %92 = add nuw nsw i32 %86, 8
  store i32 %92, ptr %5, align 16
  br label %96

93:                                               ; preds = %85
  %94 = load ptr, ptr %6, align 8
  %95 = getelementptr i8, ptr %94, i64 8
  store ptr %95, ptr %6, align 8
  br label %96

96:                                               ; preds = %93, %88
  %97 = phi ptr [ %91, %88 ], [ %94, %93 ]
  %98 = load ptr, ptr %97, align 8
  call void @pp_base_string(ptr noundef %0, ptr noundef %98) #12
  br label %107

99:                                               ; preds = %12
  call fastcc void @newline_and_indent(ptr noundef %0, i32 noundef %10) #11
  br label %107

100:                                              ; preds = %12
  %101 = add nsw i32 %10, 2
  call fastcc void @newline_and_indent(ptr noundef %0, i32 noundef %101) #11
  br label %107

102:                                              ; preds = %12
  %103 = add nsw i32 %10, -2
  call fastcc void @newline_and_indent(ptr noundef %0, i32 noundef %103) #11
  br label %107

104:                                              ; preds = %12
  call void @fancy_abort(ptr noundef nonnull @.str.28, i32 noundef 229, ptr noundef nonnull @.str.29) #12
  br label %107

105:                                              ; preds = %8
  %106 = sext i8 %11 to i32
  call void @pp_base_character(ptr noundef %0, i32 noundef %106) #12
  br label %107

107:                                              ; preds = %26, %44, %79, %96, %99, %100, %102, %104, %64, %63, %105
  %108 = phi ptr [ %9, %105 ], [ %13, %63 ], [ %13, %64 ], [ %13, %104 ], [ %13, %102 ], [ %13, %100 ], [ %13, %99 ], [ %13, %96 ], [ %13, %79 ], [ %13, %44 ], [ %13, %26 ]
  %109 = phi i32 [ %10, %105 ], [ %10, %63 ], [ %10, %64 ], [ %10, %104 ], [ %103, %102 ], [ %101, %100 ], [ %10, %99 ], [ %10, %96 ], [ %10, %79 ], [ %10, %44 ], [ %10, %26 ]
  %110 = getelementptr inbounds i8, ptr %108, i64 1
  br label %8, !llvm.loop !65

111:                                              ; preds = %8
  call void @llvm.va_end(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_asm_string(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_asm_noutputs(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !39
  %4 = zext i8 %3 to i32
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_asm_output_op(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 3
  %4 = load i8, ptr %3, align 1, !tbaa !39
  %5 = zext i8 %4 to i32
  %6 = icmp ult i32 %5, %1
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.32, i32 noundef 2655, ptr noundef nonnull @.str.29) #12
  br label %8

8:                                                ; preds = %2, %7
  %9 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 2
  %10 = load i8, ptr %9, align 8, !tbaa !39
  %11 = zext i8 %10 to i32
  %12 = add i32 %11, %1
  %13 = tail call fastcc ptr @gimple_op(ptr noundef nonnull %0, i32 noundef %12) #11
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_asm_ninputs(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 2
  %3 = load i8, ptr %2, align 8, !tbaa !39
  %4 = zext i8 %3 to i32
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_asm_input_op(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 2
  %4 = load i8, ptr %3, align 8, !tbaa !39
  %5 = zext i8 %4 to i32
  %6 = icmp ult i32 %5, %1
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.32, i32 noundef 2622, ptr noundef nonnull @.str.29) #12
  br label %8

8:                                                ; preds = %2, %7
  %9 = tail call fastcc ptr @gimple_op(ptr noundef nonnull %0, i32 noundef %1) #11
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_asm_nclobbers(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 4
  %3 = load i8, ptr %2, align 2, !tbaa !39
  %4 = zext i8 %3 to i32
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_asm_clobber_op(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 4
  %4 = load i8, ptr %3, align 2, !tbaa !39
  %5 = zext i8 %4 to i32
  %6 = icmp ult i32 %5, %1
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.32, i32 noundef 2688, ptr noundef nonnull @.str.29) #12
  br label %8

8:                                                ; preds = %2, %7
  %9 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 2
  %10 = load i8, ptr %9, align 8, !tbaa !39
  %11 = zext i8 %10 to i32
  %12 = add nuw nsw i32 %11, %1
  %13 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 3
  %14 = load i8, ptr %13, align 1, !tbaa !39
  %15 = zext i8 %14 to i32
  %16 = add nuw nsw i32 %12, %15
  %17 = tail call fastcc ptr @gimple_op(ptr noundef nonnull %0, i32 noundef %16) #11
  ret ptr %17
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_asm_nlabels(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 5
  %3 = load i8, ptr %2, align 1, !tbaa !39
  %4 = zext i8 %3 to i32
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_asm_label_op(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 5
  %4 = load i8, ptr %3, align 1, !tbaa !39
  %5 = zext i8 %4 to i32
  %6 = icmp ult i32 %5, %1
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.32, i32 noundef 2710, ptr noundef nonnull @.str.29) #12
  br label %8

8:                                                ; preds = %2, %7
  %9 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 2
  %10 = load i8, ptr %9, align 8, !tbaa !39
  %11 = zext i8 %10 to i32
  %12 = add nuw nsw i32 %11, %1
  %13 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 4
  %14 = load i8, ptr %13, align 2, !tbaa !39
  %15 = zext i8 %14 to i32
  %16 = add nuw nsw i32 %12, %15
  %17 = tail call fastcc ptr @gimple_op(ptr noundef nonnull %0, i32 noundef %16) #11
  ret ptr %17
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_asm_volatile_p(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 17
  %4 = trunc i32 %3 to i8
  %5 = and i8 %4, 1
  ret i8 %5
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #11, !range !19
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #11
  %7 = zext i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !6
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #11, !range !24
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #11
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !66
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.32, i32 noundef 1622, ptr noundef nonnull @.str.29) #12
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #11, !range !24
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #11
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #8 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !54
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_num_ops(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !39
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs2(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #11
  %3 = icmp ugt i32 %2, 2
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 2) #11
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi ptr [ %5, %4 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_expr_code(ptr noundef %0) #11, !range !49
  %3 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %2) #11, !range !24
  %4 = icmp eq i32 %3, 3
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #11
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i32
  %9 = and i32 %8, 65535
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi i32 [ %9, %5 ], [ %2, %1 ]
  ret i32 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_lhs(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #11
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs1(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #11
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_assign_nontemporal_move_p(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 10
  %4 = trunc i32 %3 to i8
  %5 = and i8 %4, 1
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_volatile_ops(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #11, !range !19
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %0, align 8
  %6 = lshr i32 %5, 14
  %7 = trunc i32 %6 to i8
  %8 = and i8 %7, 1
  br label %9

9:                                                ; preds = %1, %4
  %10 = phi i8 [ %8, %4 ], [ 0, %1 ]
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dump_unary_rhs(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %1) #11, !range !49
  %6 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %1) #11
  %7 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %1) #11
  %8 = trunc i32 %5 to i16
  switch i16 %8, label %26 [
    i16 118, label %9
    i16 148, label %9
    i16 115, label %11
    i16 114, label %11
    i16 77, label %11
    i16 78, label %11
    i16 116, label %11
    i16 113, label %11
    i16 112, label %22
    i16 82, label %24
  ]

9:                                                ; preds = %4, %4
  %10 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %7, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #12
  br label %55

11:                                               ; preds = %4, %4, %4, %4, %4, %4
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 40) #12
  %12 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !39
  %14 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %13, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #12
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.36) #12
  %15 = tail call i32 @op_prio(ptr noundef %7) #12
  %16 = tail call i32 @op_code_prio(i32 noundef %5) #12
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %11
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 40) #12
  %19 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %7, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #12
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 41) #12
  br label %55

20:                                               ; preds = %11
  %21 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %7, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #12
  br label %55

22:                                               ; preds = %4
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.37) #12
  %23 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %7, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #12
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.38) #12
  br label %55

24:                                               ; preds = %4
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.39) #12
  %25 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %7, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #12
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 62) #12
  br label %55

26:                                               ; preds = %4
  %27 = zext nneg i32 %5 to i64
  %28 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %27
  %29 = load i32, ptr %28, align 4, !tbaa !54
  switch i32 %29, label %30 [
    i32 3, label %38
    i32 1, label %38
  ]

30:                                               ; preds = %26
  %31 = icmp eq i32 %29, 4
  %32 = icmp eq i32 %5, 141
  %33 = select i1 %31, i1 true, i1 %32
  %34 = icmp eq i32 %5, 121
  %35 = select i1 %33, i1 true, i1 %34
  %36 = icmp eq i32 %5, 51
  %37 = select i1 %35, i1 true, i1 %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %26, %26, %30
  %39 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %7, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #12
  br label %55

40:                                               ; preds = %30
  switch i16 %8, label %44 [
    i16 90, label %41
    i16 96, label %42
    i16 79, label %43
  ]

41:                                               ; preds = %40
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 126) #12
  br label %47

42:                                               ; preds = %40
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 33) #12
  br label %47

43:                                               ; preds = %40
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 45) #12
  br label %47

44:                                               ; preds = %40
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 91) #12
  %45 = getelementptr inbounds [0 x ptr], ptr @tree_code_name, i64 0, i64 %27
  %46 = load ptr, ptr %45, align 8, !tbaa !6
  tail call void @pp_base_string(ptr noundef %0, ptr noundef %46) #12
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.5) #12
  br label %47

47:                                               ; preds = %41, %43, %44, %42
  %48 = tail call i32 @op_prio(ptr noundef %7) #12
  %49 = tail call i32 @op_code_prio(i32 noundef %5) #12
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 40) #12
  %52 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %7, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #12
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 41) #12
  br label %55

53:                                               ; preds = %47
  %54 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %7, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #12
  br label %55

55:                                               ; preds = %51, %53, %18, %20, %38, %24, %22, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dump_binary_rhs(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %1) #11, !range !49
  %6 = trunc i32 %5 to i16
  switch i16 %6, label %28 [
    i16 123, label %7
    i16 80, label %7
    i16 81, label %7
    i16 172, label %7
    i16 173, label %7
    i16 178, label %7
    i16 179, label %7
    i16 180, label %7
    i16 181, label %7
    i16 182, label %7
    i16 183, label %7
    i16 184, label %7
  ]

7:                                                ; preds = %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4
  %8 = zext nneg i32 %5 to i64
  %9 = getelementptr inbounds [0 x ptr], ptr @tree_code_name, i64 0, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !6
  %11 = load i8, ptr %10, align 1, !tbaa !39
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %23, label %13

13:                                               ; preds = %7, %13
  %14 = phi i8 [ %21, %13 ], [ %11, %7 ]
  %15 = phi ptr [ %20, %13 ], [ %10, %7 ]
  %16 = zext i8 %14 to i64
  %17 = getelementptr inbounds [256 x i8], ptr @_sch_toupper, i64 0, i64 %16
  %18 = load i8, ptr %17, align 1, !tbaa !39
  %19 = zext i8 %18 to i32
  tail call void @pp_base_character(ptr noundef %0, i32 noundef %19) #12
  %20 = getelementptr inbounds i8, ptr %15, i64 1
  %21 = load i8, ptr %20, align 1, !tbaa !39
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %13, !llvm.loop !67

23:                                               ; preds = %13, %7
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.40) #12
  %24 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %1) #11
  %25 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %24, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #12
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.19) #12
  %26 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %1) #11
  %27 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %26, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #12
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 62) #12
  br label %52

28:                                               ; preds = %4
  %29 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %1) #11
  %30 = tail call i32 @op_prio(ptr noundef %29) #12
  %31 = tail call i32 @op_code_prio(i32 noundef %5) #12
  %32 = icmp sgt i32 %30, %31
  br i1 %32, label %36, label %33

33:                                               ; preds = %28
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 40) #12
  %34 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %1) #11
  %35 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %34, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #12
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 41) #12
  br label %39

36:                                               ; preds = %28
  %37 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %1) #11
  %38 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %37, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #12
  br label %39

39:                                               ; preds = %36, %33
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #12
  %40 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %1) #11, !range !49
  %41 = tail call ptr @op_symbol_code(i32 noundef %40) #12
  tail call void @pp_base_string(ptr noundef %0, ptr noundef %41) #12
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #12
  %42 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %1) #11
  %43 = tail call i32 @op_prio(ptr noundef %42) #12
  %44 = tail call i32 @op_code_prio(i32 noundef %5) #12
  %45 = icmp sgt i32 %43, %44
  br i1 %45, label %49, label %46

46:                                               ; preds = %39
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 40) #12
  %47 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %1) #11
  %48 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %47, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #12
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 41) #12
  br label %52

49:                                               ; preds = %39
  %50 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %1) #11
  %51 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %50, i32 noundef %2, i32 noundef %3, i8 noundef zeroext 0) #12
  br label %52

52:                                               ; preds = %46, %49, %23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_expr_code(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #11, !range !24
  %3 = trunc i32 %2 to i8
  switch i8 %3, label %7 [
    i8 6, label %4
    i8 1, label %4
    i8 8, label %8
  ]

4:                                                ; preds = %1, %1
  %5 = load i32, ptr %0, align 8
  %6 = lshr i32 %5, 16
  br label %8

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.32, i32 noundef 1446, ptr noundef nonnull @.str.29) #12
  br label %8

8:                                                ; preds = %1, %7, %4
  %9 = phi i32 [ %6, %4 ], [ 0, %7 ], [ 59, %1 ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @get_gimple_rhs_class(i32 noundef %0) unnamed_addr #8 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %2
  %4 = load i8, ptr %3, align 1, !tbaa !39
  %5 = zext i8 %4 to i32
  ret i32 %5
}

; Function Attrs: optsize
declare i32 @op_prio(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @op_code_prio(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @op_symbol_code(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bind_vars(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.gimple_statement_bind, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  ret ptr %3
}

; Function Attrs: optsize
declare void @print_declaration(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bind_body(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.gimple_statement_bind, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_lhs(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #11
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fn(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #11
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_call_num_args(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #11
  %3 = add i32 %2, -3
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dump_gimple_call_args(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = tail call fastcc i32 @gimple_call_num_args(ptr noundef %1) #11
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %24, label %6

6:                                                ; preds = %3, %16
  %7 = phi i64 [ %17, %16 ], [ 0, %3 ]
  %8 = trunc i64 %7 to i32
  %9 = tail call fastcc ptr @gimple_call_arg(ptr noundef %1, i32 noundef %8) #11
  %10 = tail call i32 @dump_generic_node(ptr noundef %0, ptr noundef %9, i32 noundef 0, i32 noundef %2, i8 noundef zeroext 0) #12
  %11 = tail call fastcc i32 @gimple_call_num_args(ptr noundef %1) #11
  %12 = add i32 %11, -1
  %13 = zext i32 %12 to i64
  %14 = icmp ult i64 %7, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %6
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.19) #12
  br label %16

16:                                               ; preds = %6, %15
  %17 = add nuw nsw i64 %7, 1
  %18 = tail call fastcc i32 @gimple_call_num_args(ptr noundef %1) #11
  %19 = zext i32 %18 to i64
  %20 = icmp ult i64 %17, %19
  br i1 %20, label %6, label %21, !llvm.loop !68

21:                                               ; preds = %16
  %22 = tail call fastcc zeroext i8 @gimple_call_va_arg_pack_p(ptr noundef %1) #11, !range !19
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %31, label %27

24:                                               ; preds = %3
  %25 = tail call fastcc zeroext i8 @gimple_call_va_arg_pack_p(ptr noundef %1) #11, !range !19
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %31, label %30

27:                                               ; preds = %21
  %28 = icmp eq i32 %18, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %27
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 44) #12
  tail call void @pp_base_character(ptr noundef %0, i32 noundef 32) #12
  br label %30

30:                                               ; preds = %24, %29, %27
  tail call void @pp_base_string(ptr noundef %0, ptr noundef nonnull @.str.48) #12
  br label %31

31:                                               ; preds = %24, %30, %21
  ret void
}

; Function Attrs: optsize
declare void @print_call_name(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_chain(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 2) #11
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_call_return_slot_opt_p(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 18
  %4 = trunc i32 %3 to i8
  %5 = and i8 %4, 1
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_call_tail_p(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 19
  %4 = trunc i32 %3 to i8
  %5 = and i8 %4, 1
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = add i32 %1, 3
  %4 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %3) #11
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_call_va_arg_pack_p(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 20
  %4 = trunc i32 %3 to i8
  %5 = and i8 %4, 1
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_cond_code(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 16
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_cond_lhs(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #11
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_cond_rhs(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #11
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_cond_true_label(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 2) #11
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_cond_false_label(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 3) #11
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_label_label(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #11
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_goto_dest(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #11
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_return_retval(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #11
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_switch_index(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #11
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_switch_num_labels(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #11
  %3 = icmp ugt i32 %2, 1
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.32, i32 noundef 3162, ptr noundef nonnull @.str.29) #12
  br label %5

5:                                                ; preds = %1, %4
  %6 = add i32 %2, -1
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_switch_label(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #11
  %4 = add i32 %1, 1
  %5 = icmp ugt i32 %3, %4
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.32, i32 noundef 3215, ptr noundef nonnull @.str.29) #12
  br label %7

7:                                                ; preds = %2, %6
  %8 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %4) #11
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_try_kind(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 16
  %4 = and i32 %3, 3
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_try_eval(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.gimple_statement_try, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_try_cleanup(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.gimple_statement_try, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_phi_result(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_phi_num_args(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !39
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @gimple_phi_arg_has_location(ptr noundef %0, i64 noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc i32 @gimple_phi_arg_location(ptr noundef %0, i64 noundef %1) #11
  %4 = icmp ne i32 %3, 0
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_phi_arg_location(ptr noundef %0, i64 noundef %1) unnamed_addr #0 {
  %3 = trunc i64 %1 to i32
  %4 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %3) #11
  %5 = getelementptr inbounds %struct.phi_arg_d, ptr %4, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !69
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_phi_arg_def(ptr noundef %0, i64 noundef %1) unnamed_addr #0 {
  %3 = trunc i64 %1 to i32
  %4 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %3) #11
  %5 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %4) #11
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gimple_phi_arg_edge(ptr nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #5 {
  %3 = tail call fastcc ptr @gimple_bb(ptr noundef %0) #11
  %4 = load ptr, ptr %3, align 8, !tbaa !72
  %5 = trunc i64 %1 to i32
  %6 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %4, i32 noundef %5) #11
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !39
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.32, i32 noundef 3103, ptr noundef nonnull @.str.29) #12
  br label %7

7:                                                ; preds = %2, %6
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %8
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_use_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !73
  %4 = load ptr, ptr %3, align 8, !tbaa !6
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #4 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !6
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_omp_body(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  ret ptr %3
}

; Function Attrs: optsize
declare void @dump_omp_clauses(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_omp_parallel_clauses(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_omp_parallel_child_fn(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_omp_parallel_data_arg(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gimple_seq_first_stmt(ptr noundef readonly %0) unnamed_addr #5 {
  %2 = tail call fastcc ptr @gimple_seq_first(ptr noundef %0) #11
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %2, align 8, !tbaa !33
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi ptr [ %5, %4 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_omp_task_clauses(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_omp_task_child_fn(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_omp_task_data_arg(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp_parallel, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_omp_task_copy_fn(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp_task, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_omp_task_arg_size(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp_task, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_omp_atomic_load_lhs(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp_atomic_load, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_omp_atomic_load_rhs(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp_atomic_load, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_omp_atomic_store_val(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp_atomic_store, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_omp_for_clauses(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i64 @gimple_omp_for_collapse(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !39
  ret i64 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_omp_for_index(ptr nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 2
  %4 = load i64, ptr %3, align 8, !tbaa !39
  %5 = icmp ugt i64 %4, %1
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.32, i32 noundef 3453, ptr noundef nonnull @.str.29) #12
  br label %7

7:                                                ; preds = %2, %6
  %8 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !39
  %10 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %9, i64 %1, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !74
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_omp_for_initial(ptr nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 2
  %4 = load i64, ptr %3, align 8, !tbaa !39
  %5 = icmp ugt i64 %4, %1
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.32, i32 noundef 3486, ptr noundef nonnull @.str.29) #12
  br label %7

7:                                                ; preds = %2, %6
  %8 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !39
  %10 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %9, i64 %1, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !76
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_omp_for_final(ptr nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 2
  %4 = load i64, ptr %3, align 8, !tbaa !39
  %5 = icmp ugt i64 %4, %1
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.32, i32 noundef 3519, ptr noundef nonnull @.str.29) #12
  br label %7

7:                                                ; preds = %2, %6
  %8 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !39
  %10 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %9, i64 %1, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !77
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_omp_for_cond(ptr nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 2
  %4 = load i64, ptr %3, align 8, !tbaa !39
  %5 = icmp ugt i64 %4, %1
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.32, i32 noundef 4088, ptr noundef nonnull @.str.29) #12
  br label %7

7:                                                ; preds = %2, %6
  %8 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !39
  %10 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %9, i64 %1
  %11 = load i32, ptr %10, align 8, !tbaa !78
  ret i32 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_omp_for_incr(ptr nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 2
  %4 = load i64, ptr %3, align 8, !tbaa !39
  %5 = icmp ugt i64 %4, %1
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.32, i32 noundef 3552, ptr noundef nonnull @.str.29) #12
  br label %7

7:                                                ; preds = %2, %6
  %8 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !39
  %10 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %9, i64 %1, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !79
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_omp_for_pre_body(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_seq_empty_p(ptr noundef readonly %0) unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !37
  %5 = icmp eq ptr %4, null
  %6 = zext i1 %5 to i8
  br label %7

7:                                                ; preds = %3, %1
  %8 = phi i8 [ 1, %1 ], [ %6, %3 ]
  ret i8 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_omp_continue_control_def(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp_continue, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_omp_continue_control_use(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp_continue, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_omp_single_clauses(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp_single, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @gimple_omp_return_nowait_p(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_omp_subcode(ptr noundef %0) #11, !range !49
  %3 = trunc i32 %2 to i8
  %4 = and i8 %3, 1
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_omp_subcode(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #11, !range !24
  %3 = add nsw i32 %2, -19
  %4 = icmp ult i32 %3, 14
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.32, i32 noundef 1511, ptr noundef nonnull @.str.29) #12
  br label %6

6:                                                ; preds = %1, %5
  %7 = load i32, ptr %0, align 8
  %8 = lshr i32 %7, 16
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_omp_sections_clauses(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp_sections, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_omp_sections_control(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp_sections, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_omp_critical_name(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp_critical, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_catch_types(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.gimple_statement_catch, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_catch_handler(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.gimple_statement_catch, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_eh_filter_types(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.gimple_statement_eh_filter, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_eh_filter_failure(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.gimple_statement_eh_filter, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_eh_must_not_throw_fndecl(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.gimple_statement_eh_mnt, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_resx_region(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.gimple_statement_eh_ctrl, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !39
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_eh_dispatch_region(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.gimple_statement_eh_ctrl, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !39
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_debug_bind_get_var(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #11
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_debug_bind_get_value(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #11
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gimple_dump_bb(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  tail call fastcc void @maybe_init_pretty_print(ptr noundef %1) #11
  tail call fastcc void @gimple_dump_bb_buff(ptr noundef %0, i32 noundef %2, i32 noundef %3) #11
  tail call void @pp_base_flush(ptr noundef nonnull @buffer) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_dump_bb_buff(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #13
  %5 = tail call i32 @llvm.smax.i32(i32 %1, i32 2)
  %6 = add nsw i32 %5, -2
  tail call fastcc void @dump_bb_header(ptr noundef %0, i32 noundef %1, i32 noundef %2) #11
  tail call fastcc void @dump_phi_nodes(ptr noundef %0, i32 noundef %1, i32 noundef %2) #11
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %0) #11
  %7 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #11, !range !19
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %26

9:                                                ; preds = %3, %19
  %10 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #11
  %11 = tail call fastcc i32 @gimple_code(ptr noundef %10) #11, !range !24
  %12 = icmp eq i32 %11, 4
  %13 = select i1 %12, i32 %6, i32 %1
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %9, %15
  %16 = phi i32 [ %17, %15 ], [ 0, %9 ]
  tail call void @pp_base_character(ptr noundef nonnull @buffer, i32 noundef 32) #12
  %17 = add nuw nsw i32 %16, 1
  %18 = icmp eq i32 %17, %13
  br i1 %18, label %19, label %15, !llvm.loop !80

19:                                               ; preds = %15, %9
  tail call void @dump_gimple_stmt(ptr noundef nonnull @buffer, ptr noundef %10, i32 noundef %13, i32 noundef %2) #11
  tail call void @pp_base_newline(ptr noundef nonnull @buffer) #12
  %20 = load ptr, ptr @cfun, align 8, !tbaa !6
  %21 = load ptr, ptr @buffer, align 8, !tbaa !14
  %22 = getelementptr inbounds %struct.output_buffer, ptr %21, i64 0, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !15
  tail call void @dump_histograms_for_stmt(ptr noundef %20, ptr noundef %23, ptr noundef %10) #12
  call fastcc void @gsi_next(ptr noundef nonnull %4) #11
  %24 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #11, !range !19
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %9, label %26, !llvm.loop !81

26:                                               ; preds = %19, %3
  tail call fastcc void @dump_implicit_edges(ptr noundef %0, i32 noundef %1, i32 noundef %2) #11
  %27 = and i32 %2, 32
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  tail call fastcc void @dump_bb_end(ptr noundef %0, i32 noundef %1, i32 noundef %2) #11
  br label %30

30:                                               ; preds = %29, %26
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dump_bb_header(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca %struct.edge_iterator, align 8
  %6 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #13
  %7 = and i32 %2, 32
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %116, label %9

9:                                                ; preds = %3
  %10 = icmp sgt i32 %1, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %9, %11
  %12 = phi i32 [ %13, %11 ], [ 0, %9 ]
  tail call void @pp_base_character(ptr noundef nonnull @buffer, i32 noundef 32) #12
  %13 = add nuw nsw i32 %12, 1
  %14 = icmp eq i32 %13, %1
  br i1 %14, label %15, label %11, !llvm.loop !82

15:                                               ; preds = %11, %9
  tail call void @pp_base_string(ptr noundef nonnull @buffer, ptr noundef nonnull @.str.113) #12
  %16 = load ptr, ptr @buffer, align 8, !tbaa !14
  %17 = getelementptr inbounds %struct.output_buffer, ptr %16, i64 0, i32 6
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %19 = load i32, ptr %18, align 8, !tbaa !59
  %20 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %17, ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %19) #11
  %21 = load ptr, ptr @buffer, align 8, !tbaa !14
  %22 = getelementptr inbounds %struct.output_buffer, ptr %21, i64 0, i32 6
  tail call void @pp_base_string(ptr noundef nonnull @buffer, ptr noundef nonnull %22) #12
  %23 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 11
  %24 = load i32, ptr %23, align 8, !tbaa !83
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %15
  tail call void @pp_base_string(ptr noundef nonnull @buffer, ptr noundef nonnull @.str.114) #12
  %27 = load ptr, ptr @buffer, align 8, !tbaa !14
  %28 = getelementptr inbounds %struct.output_buffer, ptr %27, i64 0, i32 6
  %29 = load i32, ptr %23, align 8, !tbaa !83
  %30 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %28, ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %29) #11
  %31 = load ptr, ptr @buffer, align 8, !tbaa !14
  %32 = getelementptr inbounds %struct.output_buffer, ptr %31, i64 0, i32 6
  tail call void @pp_base_string(ptr noundef nonnull @buffer, ptr noundef nonnull %32) #12
  br label %33

33:                                               ; preds = %26, %15
  %34 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 8
  %35 = load i64, ptr %34, align 8, !tbaa !84
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %33
  tail call void @pp_base_string(ptr noundef nonnull @buffer, ptr noundef nonnull @.str.115) #12
  %38 = load ptr, ptr @buffer, align 8, !tbaa !14
  %39 = getelementptr inbounds %struct.output_buffer, ptr %38, i64 0, i32 6
  %40 = load i64, ptr %34, align 8, !tbaa !84
  %41 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(1) @.str.116, i64 noundef %40) #11
  %42 = load ptr, ptr @buffer, align 8, !tbaa !14
  %43 = getelementptr inbounds %struct.output_buffer, ptr %42, i64 0, i32 6
  tail call void @pp_base_string(ptr noundef nonnull @buffer, ptr noundef nonnull %43) #12
  br label %44

44:                                               ; preds = %37, %33
  %45 = and i32 %2, 128
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %80, label %47

47:                                               ; preds = %44
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #13
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %6, ptr noundef nonnull %0) #11
  %48 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %6) #11, !range !19
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %68

50:                                               ; preds = %47, %65
  %51 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %6) #11
  %52 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %51) #11, !range !19
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %50
  %55 = tail call fastcc i32 @get_lineno(ptr noundef %51) #11
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %65, label %57

57:                                               ; preds = %54
  tail call void @pp_base_string(ptr noundef nonnull @buffer, ptr noundef nonnull @.str.117) #12
  %58 = load ptr, ptr @buffer, align 8, !tbaa !14
  %59 = getelementptr inbounds %struct.output_buffer, ptr %58, i64 0, i32 6
  %60 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %6) #11
  %61 = tail call fastcc i32 @get_lineno(ptr noundef %60) #11
  %62 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %59, ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %61) #11
  %63 = load ptr, ptr @buffer, align 8, !tbaa !14
  %64 = getelementptr inbounds %struct.output_buffer, ptr %63, i64 0, i32 6
  tail call void @pp_base_string(ptr noundef nonnull @buffer, ptr noundef nonnull %64) #12
  br label %68

65:                                               ; preds = %50, %54
  call fastcc void @gsi_next(ptr noundef nonnull %6) #11
  %66 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %6) #11, !range !19
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %50, label %68, !llvm.loop !85

68:                                               ; preds = %65, %47, %57
  %69 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 12
  %70 = load i32, ptr %69, align 4, !tbaa !86
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %79, label %72

72:                                               ; preds = %68
  tail call void @pp_base_string(ptr noundef nonnull @buffer, ptr noundef nonnull @.str.118) #12
  %73 = load ptr, ptr @buffer, align 8, !tbaa !14
  %74 = getelementptr inbounds %struct.output_buffer, ptr %73, i64 0, i32 6
  %75 = load i32, ptr %69, align 4, !tbaa !86
  %76 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %74, ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %75) #11
  %77 = load ptr, ptr @buffer, align 8, !tbaa !14
  %78 = getelementptr inbounds %struct.output_buffer, ptr %77, i64 0, i32 6
  tail call void @pp_base_string(ptr noundef nonnull @buffer, ptr noundef nonnull %78) #12
  br label %79

79:                                               ; preds = %72, %68
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #13
  br label %80

80:                                               ; preds = %79, %44
  tail call fastcc void @newline_and_indent(ptr noundef nonnull @buffer, i32 noundef %1) #11
  tail call void @pp_base_string(ptr noundef nonnull @buffer, ptr noundef nonnull @.str.119) #12
  tail call void @pp_write_text_to_stream(ptr noundef nonnull @buffer) #12
  %81 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %0) #11
  store i32 0, ptr %5, align 8, !tbaa.struct !87
  %82 = getelementptr inbounds i8, ptr %5, i64 8
  store ptr %81, ptr %82, align 8, !tbaa.struct !88
  %83 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %81, ptr noundef nonnull %4) #11, !range !19
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %138, label %85

85:                                               ; preds = %80
  %86 = and i32 %2, 2
  %87 = icmp eq i32 %86, 0
  br label %88

88:                                               ; preds = %85, %111
  br i1 %87, label %106, label %89

89:                                               ; preds = %88
  tail call void @pp_base_character(ptr noundef nonnull @buffer, i32 noundef 32) #12
  %90 = load ptr, ptr %4, align 8, !tbaa !6
  %91 = load ptr, ptr %90, align 8, !tbaa !57
  %92 = load ptr, ptr @cfun, align 8, !tbaa !6
  %93 = getelementptr inbounds %struct.function, ptr %92, i64 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !89
  %95 = load ptr, ptr %94, align 8, !tbaa !91
  %96 = icmp eq ptr %91, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %89
  tail call void @pp_base_string(ptr noundef nonnull @buffer, ptr noundef nonnull @.str.120) #12
  br label %111

98:                                               ; preds = %89
  %99 = load ptr, ptr @buffer, align 8, !tbaa !14
  %100 = getelementptr inbounds %struct.output_buffer, ptr %99, i64 0, i32 6
  %101 = getelementptr inbounds %struct.basic_block_def, ptr %91, i64 0, i32 9
  %102 = load i32, ptr %101, align 8, !tbaa !59
  %103 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %100, ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %102) #11
  %104 = load ptr, ptr @buffer, align 8, !tbaa !14
  %105 = getelementptr inbounds %struct.output_buffer, ptr %104, i64 0, i32 6
  tail call void @pp_base_string(ptr noundef nonnull @buffer, ptr noundef nonnull %105) #12
  br label %111

106:                                              ; preds = %88
  %107 = load ptr, ptr @buffer, align 8, !tbaa !14
  %108 = getelementptr inbounds %struct.output_buffer, ptr %107, i64 0, i32 4
  %109 = load ptr, ptr %108, align 8, !tbaa !15
  %110 = load ptr, ptr %4, align 8, !tbaa !6
  tail call void @dump_edge_info(ptr noundef %109, ptr noundef %110, i32 noundef 0) #12
  br label %111

111:                                              ; preds = %106, %98, %97
  call fastcc void @ei_next(ptr noundef nonnull %5) #11
  %112 = load i32, ptr %5, align 8
  %113 = load ptr, ptr %82, align 8
  %114 = call fastcc zeroext i8 @ei_cond(i32 %112, ptr %113, ptr noundef nonnull %4) #11, !range !19
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %138, label %88, !llvm.loop !93

116:                                              ; preds = %3
  %117 = tail call ptr @first_stmt(ptr noundef %0) #12
  %118 = icmp eq ptr %117, null
  br i1 %118, label %122, label %119

119:                                              ; preds = %116
  %120 = tail call fastcc i32 @gimple_code(ptr noundef nonnull %117) #11, !range !24
  %121 = icmp eq i32 %120, 4
  br i1 %121, label %139, label %122

122:                                              ; preds = %116, %119
  %123 = icmp sgt i32 %1, 2
  br i1 %123, label %124, label %130

124:                                              ; preds = %122
  %125 = add nsw i32 %1, -3
  br label %126

126:                                              ; preds = %124, %126
  %127 = phi i32 [ %128, %126 ], [ 0, %124 ]
  tail call void @pp_base_character(ptr noundef nonnull @buffer, i32 noundef 32) #12
  %128 = add nuw nsw i32 %127, 1
  %129 = icmp eq i32 %127, %125
  br i1 %129, label %130, label %126, !llvm.loop !94

130:                                              ; preds = %126, %122
  tail call void @pp_base_string(ptr noundef nonnull @buffer, ptr noundef nonnull @.str.121) #12
  %131 = load ptr, ptr @buffer, align 8, !tbaa !14
  %132 = getelementptr inbounds %struct.output_buffer, ptr %131, i64 0, i32 6
  %133 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %134 = load i32, ptr %133, align 8, !tbaa !59
  %135 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %132, ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %134) #11
  %136 = load ptr, ptr @buffer, align 8, !tbaa !14
  %137 = getelementptr inbounds %struct.output_buffer, ptr %136, i64 0, i32 6
  tail call void @pp_base_string(ptr noundef nonnull @buffer, ptr noundef nonnull %137) #12
  tail call void @pp_base_string(ptr noundef nonnull @buffer, ptr noundef nonnull @.str.122) #12
  br label %138

138:                                              ; preds = %111, %80, %130
  tail call void @pp_base_newline(ptr noundef nonnull @buffer) #12
  br label %139

139:                                              ; preds = %138, %119
  tail call void @pp_write_text_to_stream(ptr noundef nonnull @buffer) #12
  %140 = load ptr, ptr @buffer, align 8, !tbaa !14
  %141 = getelementptr inbounds %struct.output_buffer, ptr %140, i64 0, i32 4
  %142 = load ptr, ptr %141, align 8, !tbaa !15
  tail call void @check_bb_profile(ptr noundef %0, ptr noundef %142) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dump_phi_nodes(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #13
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %0) #12
  %5 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #11, !range !19
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %26

7:                                                ; preds = %3
  %8 = and i32 %2, 64
  %9 = icmp eq i32 %8, 0
  %10 = icmp sgt i32 %1, 0
  br label %11

11:                                               ; preds = %7, %23
  %12 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #11
  %13 = call fastcc ptr @gimple_phi_result(ptr noundef %12) #11
  %14 = call zeroext i8 @is_gimple_reg(ptr noundef %13) #12
  %15 = icmp eq i8 %14, 0
  %16 = and i1 %9, %15
  br i1 %16, label %23, label %17

17:                                               ; preds = %11
  br i1 %10, label %18, label %22

18:                                               ; preds = %17, %18
  %19 = phi i32 [ %20, %18 ], [ 0, %17 ]
  call void @pp_base_character(ptr noundef nonnull @buffer, i32 noundef 32) #12
  %20 = add nuw nsw i32 %19, 1
  %21 = icmp eq i32 %20, %1
  br i1 %21, label %22, label %18, !llvm.loop !95

22:                                               ; preds = %18, %17
  call void @pp_base_string(ptr noundef nonnull @buffer, ptr noundef nonnull @.str.14) #12
  call fastcc void @dump_gimple_phi(ptr noundef nonnull @buffer, ptr noundef %12, i32 noundef %1, i32 noundef %2) #11
  call void @pp_base_newline(ptr noundef nonnull @buffer) #12
  br label %23

23:                                               ; preds = %11, %22
  call fastcc void @gsi_next(ptr noundef nonnull %4) #11
  %24 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #11, !range !19
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %11, label %26, !llvm.loop !96

26:                                               ; preds = %23, %3
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #3 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #11
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #11
  store ptr %4, ptr %0, align 8, !tbaa !30
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !32
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !35
  ret void
}

; Function Attrs: optsize
declare void @dump_histograms_for_stmt(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dump_implicit_edges(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca %struct.edge_iterator, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca %struct.expanded_location, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #13
  %9 = tail call ptr @last_stmt(ptr noundef %0) #12
  %10 = icmp eq ptr %9, null
  br i1 %10, label %36, label %11

11:                                               ; preds = %3
  %12 = tail call fastcc i32 @gimple_code(ptr noundef nonnull %9) #11, !range !24
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %36

14:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #13
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !97
  %17 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %16) #11
  %18 = icmp eq i32 %17, 2
  br i1 %18, label %19, label %35

19:                                               ; preds = %14
  call void @extract_true_false_edges_from_block(ptr noundef nonnull %0, ptr noundef nonnull %6, ptr noundef nonnull %7) #12
  %20 = add i32 %1, 2
  %21 = icmp sgt i32 %1, -2
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  %23 = call i32 @llvm.smax.i32(i32 %20, i32 1)
  br label %24

24:                                               ; preds = %22, %24
  %25 = phi i32 [ %26, %24 ], [ 0, %22 ]
  call void @pp_base_character(ptr noundef nonnull @buffer, i32 noundef 32) #12
  %26 = add nuw nsw i32 %25, 1
  %27 = icmp eq i32 %26, %23
  br i1 %27, label %28, label %24, !llvm.loop !98

28:                                               ; preds = %24, %19
  %29 = load ptr, ptr %6, align 8, !tbaa !6
  %30 = getelementptr inbounds %struct.edge_def, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !99
  call fastcc void @pp_cfg_jump(ptr noundef %31) #11
  call fastcc void @newline_and_indent(ptr noundef nonnull @buffer, i32 noundef %1) #11
  call void @pp_base_string(ptr noundef nonnull @buffer, ptr noundef nonnull @.str.124) #12
  call fastcc void @newline_and_indent(ptr noundef nonnull @buffer, i32 noundef %20) #11
  %32 = load ptr, ptr %7, align 8, !tbaa !6
  %33 = getelementptr inbounds %struct.edge_def, ptr %32, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !99
  call fastcc void @pp_cfg_jump(ptr noundef %34) #11
  call void @pp_base_newline(ptr noundef nonnull @buffer) #12
  br label %35

35:                                               ; preds = %14, %28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #13
  br label %97

36:                                               ; preds = %11, %3
  %37 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %38 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %37) #11
  store i32 0, ptr %5, align 8, !tbaa.struct !87
  %39 = getelementptr inbounds i8, ptr %5, i64 8
  store ptr %38, ptr %39, align 8, !tbaa.struct !88
  %40 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %38, ptr noundef nonnull %4) #11, !range !19
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %53, label %42

42:                                               ; preds = %36, %48
  %43 = load ptr, ptr %4, align 8, !tbaa !6
  %44 = getelementptr inbounds %struct.edge_def, ptr %43, i64 0, i32 7
  %45 = load i32, ptr %44, align 8, !tbaa !100
  %46 = and i32 %45, 1
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %42
  call fastcc void @ei_next(ptr noundef nonnull %5) #11
  %49 = load i32, ptr %5, align 8
  %50 = load ptr, ptr %39, align 8
  %51 = call fastcc zeroext i8 @ei_cond(i32 %49, ptr %50, ptr noundef nonnull %4) #11, !range !19
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %53, label %42, !llvm.loop !101

53:                                               ; preds = %48, %36
  %54 = load ptr, ptr %4, align 8, !tbaa !6
  %55 = icmp eq ptr %54, null
  br i1 %55, label %97, label %56

56:                                               ; preds = %42, %53
  %57 = phi ptr [ %54, %53 ], [ %43, %42 ]
  %58 = getelementptr inbounds %struct.edge_def, ptr %57, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !99
  %60 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 6
  %61 = load ptr, ptr %60, align 8, !tbaa !102
  %62 = icmp eq ptr %59, %61
  br i1 %62, label %97, label %63

63:                                               ; preds = %56
  %64 = icmp sgt i32 %1, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %63, %65
  %66 = phi i32 [ %67, %65 ], [ 0, %63 ]
  tail call void @pp_base_character(ptr noundef nonnull @buffer, i32 noundef 32) #12
  %67 = add nuw nsw i32 %66, 1
  %68 = icmp eq i32 %67, %1
  br i1 %68, label %69, label %65, !llvm.loop !103

69:                                               ; preds = %65, %63
  %70 = and i32 %2, 128
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %95, label %72

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.edge_def, ptr %57, i64 0, i32 5
  %74 = load i32, ptr %73, align 8, !tbaa !104
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %95, label %76

76:                                               ; preds = %72
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #13
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %8, i32 noundef %74) #12
  %77 = load ptr, ptr %8, align 8, !tbaa.struct !53
  %78 = getelementptr inbounds i8, ptr %8, i64 8
  %79 = load i32, ptr %78, align 8, !tbaa.struct !55
  %80 = getelementptr inbounds i8, ptr %8, i64 12
  %81 = load i32, ptr %80, align 4, !tbaa.struct !56
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #13
  call void @pp_base_character(ptr noundef nonnull @buffer, i32 noundef 91) #12
  %82 = icmp eq ptr %77, null
  br i1 %82, label %84, label %83

83:                                               ; preds = %76
  call void @pp_base_string(ptr noundef nonnull @buffer, ptr noundef nonnull %77) #12
  call void @pp_base_string(ptr noundef nonnull @buffer, ptr noundef nonnull @.str.2) #12
  br label %84

84:                                               ; preds = %76, %83
  %85 = load ptr, ptr @buffer, align 8, !tbaa !14
  %86 = getelementptr inbounds %struct.output_buffer, ptr %85, i64 0, i32 6
  %87 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %86, ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %79) #11
  %88 = load ptr, ptr @buffer, align 8, !tbaa !14
  %89 = getelementptr inbounds %struct.output_buffer, ptr %88, i64 0, i32 6
  call void @pp_base_string(ptr noundef nonnull @buffer, ptr noundef nonnull %89) #12
  call void @pp_base_string(ptr noundef nonnull @buffer, ptr noundef nonnull @.str.2) #12
  %90 = load ptr, ptr @buffer, align 8, !tbaa !14
  %91 = getelementptr inbounds %struct.output_buffer, ptr %90, i64 0, i32 6
  %92 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %91, ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %81) #11
  %93 = load ptr, ptr @buffer, align 8, !tbaa !14
  %94 = getelementptr inbounds %struct.output_buffer, ptr %93, i64 0, i32 6
  call void @pp_base_string(ptr noundef nonnull @buffer, ptr noundef nonnull %94) #12
  call void @pp_base_string(ptr noundef nonnull @buffer, ptr noundef nonnull @.str.5) #12
  br label %95

95:                                               ; preds = %84, %72, %69
  %96 = load ptr, ptr %58, align 8, !tbaa !99
  call fastcc void @pp_cfg_jump(ptr noundef %96) #11
  call void @pp_base_newline(ptr noundef nonnull @buffer) #12
  br label %97

97:                                               ; preds = %53, %56, %95, %35
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dump_bb_end(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #13
  %6 = icmp sgt i32 %1, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %3, %7
  %8 = phi i32 [ %9, %7 ], [ 0, %3 ]
  tail call void @pp_base_character(ptr noundef nonnull @buffer, i32 noundef 32) #12
  %9 = add nuw nsw i32 %8, 1
  %10 = icmp eq i32 %9, %1
  br i1 %10, label %11, label %7, !llvm.loop !105

11:                                               ; preds = %7, %3
  tail call void @pp_base_string(ptr noundef nonnull @buffer, ptr noundef nonnull @.str.126) #12
  tail call void @pp_write_text_to_stream(ptr noundef nonnull @buffer) #12
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %13 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %12) #11
  store i32 0, ptr %5, align 8, !tbaa.struct !87
  %14 = getelementptr inbounds i8, ptr %5, i64 8
  store ptr %13, ptr %14, align 8, !tbaa.struct !88
  %15 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %13, ptr noundef nonnull %4) #11, !range !19
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %50, label %17

17:                                               ; preds = %11
  %18 = and i32 %2, 2
  %19 = icmp eq i32 %18, 0
  br label %20

20:                                               ; preds = %17, %45
  br i1 %19, label %40, label %21

21:                                               ; preds = %20
  tail call void @pp_base_character(ptr noundef nonnull @buffer, i32 noundef 32) #12
  %22 = load ptr, ptr %4, align 8, !tbaa !6
  %23 = getelementptr inbounds %struct.edge_def, ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !99
  %25 = load ptr, ptr @cfun, align 8, !tbaa !6
  %26 = getelementptr inbounds %struct.function, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !89
  %28 = getelementptr inbounds %struct.control_flow_graph, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !106
  %30 = icmp eq ptr %24, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %21
  tail call void @pp_base_string(ptr noundef nonnull @buffer, ptr noundef nonnull @.str.127) #12
  br label %45

32:                                               ; preds = %21
  %33 = load ptr, ptr @buffer, align 8, !tbaa !14
  %34 = getelementptr inbounds %struct.output_buffer, ptr %33, i64 0, i32 6
  %35 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 9
  %36 = load i32, ptr %35, align 8, !tbaa !59
  %37 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %34, ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %36) #11
  %38 = load ptr, ptr @buffer, align 8, !tbaa !14
  %39 = getelementptr inbounds %struct.output_buffer, ptr %38, i64 0, i32 6
  tail call void @pp_base_string(ptr noundef nonnull @buffer, ptr noundef nonnull %39) #12
  br label %45

40:                                               ; preds = %20
  %41 = load ptr, ptr @buffer, align 8, !tbaa !14
  %42 = getelementptr inbounds %struct.output_buffer, ptr %41, i64 0, i32 4
  %43 = load ptr, ptr %42, align 8, !tbaa !15
  %44 = load ptr, ptr %4, align 8, !tbaa !6
  tail call void @dump_edge_info(ptr noundef %43, ptr noundef %44, i32 noundef 1) #12
  br label %45

45:                                               ; preds = %40, %32, %31
  call fastcc void @ei_next(ptr noundef nonnull %5) #11
  %46 = load i32, ptr %5, align 8
  %47 = load ptr, ptr %14, align 8
  %48 = call fastcc zeroext i8 @ei_cond(i32 %46, ptr %47, ptr noundef nonnull %4) #11, !range !19
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %20, !llvm.loop !107

50:                                               ; preds = %45, %11
  tail call void @pp_base_newline(ptr noundef nonnull @buffer) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_debug(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #11, !range !24
  %3 = icmp eq i32 %2, 2
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @get_lineno(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = alloca %struct.expanded_location, align 8
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %1
  %5 = tail call fastcc i32 @gimple_location(ptr noundef nonnull %0) #11
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %4
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %2, i32 noundef %5) #12
  %8 = getelementptr inbounds %struct.expanded_location, ptr %2, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !22
  br label %10

10:                                               ; preds = %4, %1, %7
  %11 = phi i32 [ %9, %7 ], [ -1, %1 ], [ -1, %4 ]
  ret i32 %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #8 {
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #11, !range !19
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #11
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !6
  ret i8 %10
}

; Function Attrs: optsize
declare void @dump_edge_info(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #11
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #11
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #11
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.123, i32 noundef 738, ptr noundef nonnull @.str.29) #12
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !108
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !108
  ret void
}

; Function Attrs: optsize
declare ptr @first_stmt(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @check_bb_profile(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #11
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #11
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %8) #11
  %10 = icmp eq i32 %9, %0
  %11 = zext i1 %10 to i8
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #11
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #11
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #11
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !110
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.123, i32 noundef 687, ptr noundef nonnull @.str.29) #12
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !6
  ret ptr %5
}

; Function Attrs: optsize
declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !112
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !39
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !113
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: optsize
declare ptr @last_stmt(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @extract_true_false_edges_from_block(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @pp_cfg_jump(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call ptr @first_stmt(ptr noundef %0) #12
  tail call void @pp_base_string(ptr noundef nonnull @buffer, ptr noundef nonnull @.str.125) #12
  %3 = load ptr, ptr @buffer, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.output_buffer, ptr %3, i64 0, i32 6
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %6 = load i32, ptr %5, align 8, !tbaa !59
  %7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %6) #11
  %8 = load ptr, ptr @buffer, align 8, !tbaa !14
  %9 = getelementptr inbounds %struct.output_buffer, ptr %8, i64 0, i32 6
  tail call void @pp_base_string(ptr noundef nonnull @buffer, ptr noundef nonnull %9) #12
  tail call void @pp_base_character(ptr noundef nonnull @buffer, i32 noundef 62) #12
  %10 = icmp eq ptr %2, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %1
  %12 = tail call fastcc i32 @gimple_code(ptr noundef nonnull %2) #11, !range !24
  %13 = icmp eq i32 %12, 4
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  tail call void @pp_base_string(ptr noundef nonnull @buffer, ptr noundef nonnull @.str.44) #12
  %15 = tail call fastcc ptr @gimple_label_label(ptr noundef nonnull %2) #11
  %16 = tail call i32 @dump_generic_node(ptr noundef nonnull @buffer, ptr noundef %15, i32 noundef 0, i32 noundef 0, i8 noundef zeroext 0) #12
  tail call void @pp_base_character(ptr noundef nonnull @buffer, i32 noundef 41) #12
  br label %17

17:                                               ; preds = %1, %11, %14
  tail call void @pp_base_character(ptr noundef nonnull @buffer, i32 noundef 59) #12
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { optsize }
attributes #12 = { nounwind optsize }
attributes #13 = { nounwind }

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
!10 = !{!11, !8, i64 49}
!11 = !{!"pretty_print_info", !7, i64 0, !7, i64 8, !12, i64 16, !12, i64 20, !12, i64 24, !13, i64 28, !7, i64 40, !8, i64 48, !8, i64 49, !8, i64 50}
!12 = !{!"int", !8, i64 0}
!13 = !{!"", !12, i64 0, !12, i64 4}
!14 = !{!11, !7, i64 0}
!15 = !{!16, !7, i64 192}
!16 = !{!"", !17, i64 0, !17, i64 88, !7, i64 176, !7, i64 184, !7, i64 192, !12, i64 200, !8, i64 204}
!17 = !{!"obstack", !18, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !18, i64 40, !12, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !12, i64 80, !12, i64 80, !12, i64 80}
!18 = !{!"long", !8, i64 0}
!19 = !{i8 0, i8 2}
!20 = !{!21, !7, i64 0}
!21 = !{!"", !7, i64 0, !12, i64 8, !12, i64 12, !8, i64 16}
!22 = !{!21, !12, i64 8}
!23 = !{!21, !12, i64 12}
!24 = !{i32 0, i32 256}
!25 = !{i32 0, i32 2}
!26 = !{i32 0, i32 32768}
!27 = distinct !{!27, !28}
!28 = !{!"llvm.loop.mustprogress"}
!29 = distinct !{!29, !28}
!30 = !{!31, !7, i64 0}
!31 = !{!"", !7, i64 0, !7, i64 8, !7, i64 16}
!32 = !{!31, !7, i64 8}
!33 = !{!34, !7, i64 0}
!34 = !{!"gimple_seq_node_d", !7, i64 0, !7, i64 8, !7, i64 16}
!35 = !{!31, !7, i64 16}
!36 = !{!34, !7, i64 16}
!37 = !{!38, !7, i64 0}
!38 = !{!"gimple_seq_d", !7, i64 0, !7, i64 8, !7, i64 16}
!39 = !{!8, !8, i64 0}
!40 = distinct !{!40, !28}
!41 = distinct !{!41, !28}
!42 = distinct !{!42, !28}
!43 = distinct !{!43, !28}
!44 = distinct !{!44, !28}
!45 = distinct !{!45, !28}
!46 = distinct !{!46, !28}
!47 = distinct !{!47, !28}
!48 = distinct !{!48, !28}
!49 = !{i32 0, i32 65536}
!50 = distinct !{!50, !28}
!51 = distinct !{!51, !28}
!52 = !{i32 0, i32 4}
!53 = !{i64 0, i64 8, !6, i64 8, i64 4, !54, i64 12, i64 4, !54, i64 16, i64 1, !39}
!54 = !{!12, !12, i64 0}
!55 = !{i64 0, i64 4, !54, i64 4, i64 4, !54, i64 8, i64 1, !39}
!56 = !{i64 0, i64 4, !54, i64 4, i64 1, !39}
!57 = !{!58, !7, i64 0}
!58 = !{!"edge_def", !7, i64 0, !7, i64 8, !8, i64 16, !7, i64 24, !7, i64 32, !12, i64 40, !12, i64 44, !12, i64 48, !12, i64 52, !18, i64 56}
!59 = !{!60, !12, i64 80}
!60 = !{!"basic_block_def", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !8, i64 32, !7, i64 48, !7, i64 56, !8, i64 64, !18, i64 72, !12, i64 80, !12, i64 84, !12, i64 88, !12, i64 92, !12, i64 96}
!61 = distinct !{!61, !28}
!62 = distinct !{!62, !28}
!63 = distinct !{!63, !28}
!64 = distinct !{!64, !28}
!65 = distinct !{!65, !28}
!66 = !{!18, !18, i64 0}
!67 = distinct !{!67, !28}
!68 = distinct !{!68, !28}
!69 = !{!70, !12, i64 40}
!70 = !{!"phi_arg_d", !71, i64 0, !7, i64 32, !12, i64 40}
!71 = !{!"ssa_use_operand_d", !7, i64 0, !7, i64 8, !8, i64 16, !7, i64 24}
!72 = !{!60, !7, i64 0}
!73 = !{!71, !7, i64 24}
!74 = !{!75, !7, i64 8}
!75 = !{!"gimple_omp_for_iter", !12, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32}
!76 = !{!75, !7, i64 16}
!77 = !{!75, !7, i64 24}
!78 = !{!75, !12, i64 0}
!79 = !{!75, !7, i64 32}
!80 = distinct !{!80, !28}
!81 = distinct !{!81, !28}
!82 = distinct !{!82, !28}
!83 = !{!60, !12, i64 88}
!84 = !{!60, !18, i64 72}
!85 = distinct !{!85, !28}
!86 = !{!60, !12, i64 92}
!87 = !{i64 0, i64 4, !54, i64 8, i64 8, !6}
!88 = !{i64 0, i64 8, !6}
!89 = !{!90, !7, i64 8}
!90 = !{!"function", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !12, i64 104, !12, i64 108, !12, i64 112, !12, i64 116, !12, i64 120, !12, i64 124, !7, i64 128, !12, i64 136, !12, i64 137, !12, i64 138, !12, i64 138, !12, i64 138, !12, i64 138, !12, i64 138, !12, i64 138, !12, i64 138, !12, i64 139, !12, i64 139, !12, i64 139, !12, i64 139, !12, i64 139, !12, i64 139, !12, i64 139}
!91 = !{!92, !7, i64 0}
!92 = !{!"control_flow_graph", !7, i64 0, !7, i64 8, !7, i64 16, !12, i64 24, !12, i64 28, !12, i64 32, !7, i64 40, !12, i64 48, !8, i64 52, !8, i64 60, !12, i64 68, !12, i64 72}
!93 = distinct !{!93, !28}
!94 = distinct !{!94, !28}
!95 = distinct !{!95, !28}
!96 = distinct !{!96, !28}
!97 = !{!60, !7, i64 8}
!98 = distinct !{!98, !28}
!99 = !{!58, !7, i64 8}
!100 = !{!58, !12, i64 48}
!101 = distinct !{!101, !28}
!102 = !{!60, !7, i64 56}
!103 = distinct !{!103, !28}
!104 = !{!58, !12, i64 40}
!105 = distinct !{!105, !28}
!106 = !{!92, !7, i64 8}
!107 = distinct !{!107, !28}
!108 = !{!109, !12, i64 0}
!109 = !{!"", !12, i64 0, !7, i64 8}
!110 = !{!111, !12, i64 0}
!111 = !{!"VEC_edge_base", !12, i64 0, !12, i64 4, !8, i64 8}
!112 = !{!60, !12, i64 96}
!113 = !{!114, !7, i64 0}
!114 = !{!"gimple_bb_info", !7, i64 0, !7, i64 8}

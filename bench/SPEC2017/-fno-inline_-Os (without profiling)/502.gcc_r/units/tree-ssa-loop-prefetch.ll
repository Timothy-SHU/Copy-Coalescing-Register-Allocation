; ModuleID = 'tree-ssa-loop-prefetch.c'
source_filename = "tree-ssa-loop-prefetch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.eni_weights_d = type { i32, i32, i32, i32, i8 }
%struct.optab_d = type { i32, ptr, i8, ptr, [87 x %struct.optab_handlers] }
%struct.optab_handlers = type { i32 }
%struct.loop_iterator = type { ptr, i32 }
%struct.param_info = type { ptr, i32, i8, i32, i32, ptr }
%struct.tree_function_decl = type { %struct.tree_decl_non_common, ptr, ptr, ptr, ptr, i32 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.loops = type { i32, ptr, ptr, ptr }
%struct.loop = type { i32, i32, ptr, ptr, %struct.lpt_decision, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.double_int, %struct.double_int, i8, i8, i32, ptr, ptr, i8, ptr }
%struct.lpt_decision = type { i32, i32 }
%struct.double_int = type { i64, i64 }
%struct.tree_niter_desc = type { ptr, ptr, ptr, %struct.double_int, %struct.affine_iv, ptr, i32 }
%struct.affine_iv = type { ptr, ptr, i8 }
%struct.VEC_int_base = type { i32, i32, [1 x i32] }
%struct.VEC_loop_p_base = type { i32, i32, [1 x ptr] }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.mem_ref_group = type { ptr, i64, ptr, ptr }
%struct.mem_ref = type { ptr, ptr, i64, ptr, i64, i64, i32, ptr, i8 }
%struct.data_reference = type { ptr, ptr, ptr, i8, %struct.innermost_loop_behavior, %struct.indices, %struct.dr_alias, ptr }
%struct.innermost_loop_behavior = type { ptr, ptr, ptr, ptr, ptr }
%struct.indices = type { ptr, ptr }
%struct.dr_alias = type { ptr, ptr }
%struct.data_dependence_relation = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8 }
%struct.gimple_statement_with_memory_ops_base = type { %struct.gimple_statement_with_ops_base, ptr, ptr }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.ar_data = type { ptr, ptr, ptr, ptr }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.tree_field_decl = type { %struct.tree_decl_common, ptr, ptr, ptr, ptr, ptr }
%struct.tree_int_cst = type { %struct.tree_common, %struct.double_int }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.VEC_data_reference_p_base = type { i32, i32, [1 x ptr] }
%struct.VEC_ddr_p_base = type { i32, i32, [1 x ptr] }
%struct.VEC_lambda_vector_base = type { i32, i32, [1 x ptr] }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }

@x86_prefetch_sse = external local_unnamed_addr global i32, align 4
@ix86_isa_flags = external local_unnamed_addr global i32, align 4
@compiler_params = external local_unnamed_addr global ptr, align 8
@dump_file = external local_unnamed_addr global ptr, align 8
@dump_flags = external local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [25 x i8] c"Prefetching parameters:\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"    simultaneous prefetches: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"    prefetch latency: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"    prefetch block size: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"    L1 cache size: %d lines, %d kB\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"    L1 cache line size: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"    L2 cache size: %d kB\0A\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"    min insn-to-prefetch ratio: %d \0A\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"    min insn-to-mem ratio: %d \0A\00", align 1
@built_in_decls = external local_unnamed_addr global [721 x ptr], align 16
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@.str.10 = private unnamed_addr constant [19 x i8] c"__builtin_prefetch\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"tree-ssa-loop-prefetch.c\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"Processing loop %d:\0A\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@cfun = external local_unnamed_addr global ptr, align 8
@.str.15 = private unnamed_addr constant [23 x i8] c"  ignored (cold area)\0A\00", align 1
@eni_time_weights = external global %struct.eni_weights_d, align 4
@eni_size_weights = external global %struct.eni_weights_d, align 4
@.str.16 = private unnamed_addr constant [95 x i8] c"Ahead %d, unroll factor %d, trip count %ld\0Ainsn count %d, mem ref count %d, prefetch count %d\0A\00", align 1
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@.str.17 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@.str.18 = private unnamed_addr constant [15 x i8] c"Reference %p:\0A\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"  group %p (base \00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c", step \00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"  delta \00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"  %s\0A\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"Reference %p:\00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c" no restrictions\00", align 1
@.str.29 = private unnamed_addr constant [17 x i8] c" do not prefetch\00", align 1
@.str.30 = private unnamed_addr constant [15 x i8] c" prefetch once\00", align 1
@.str.31 = private unnamed_addr constant [18 x i8] c" prefetch before \00", align 1
@.str.32 = private unnamed_addr constant [15 x i8] c" prefetch mod \00", align 1
@chrec_known = external local_unnamed_addr global ptr, align 8
@chrec_dont_know = external local_unnamed_addr global ptr, align 8
@.str.33 = private unnamed_addr constant [18 x i8] c"Reuse distances:\0A\00", align 1
@.str.34 = private unnamed_addr constant [21 x i8] c" ref %p distance %u\0A\00", align 1
@.str.35 = private unnamed_addr constant [57 x i8] c"Not prefetching -- loop estimated to roll only %d times\0A\00", align 1
@x86_mfence = external local_unnamed_addr global ptr, align 8
@.str.36 = private unnamed_addr constant [45 x i8] c"Marked reference %p as a nontemporal store.\0A\00", align 1
@optab_table = external local_unnamed_addr global [159 x %struct.optab_d], align 16
@.str.37 = private unnamed_addr constant [52 x i8] c"Each prefetch instruction takes %u prefetch slots.\0A\00", align 1
@.str.38 = private unnamed_addr constant [27 x i8] c"Issued%s prefetch for %p.\0A\00", align 1
@.str.39 = private unnamed_addr constant [13 x i8] c" nontemporal\00", align 1
@.str.40 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@integer_types = external local_unnamed_addr global [11 x ptr], align 16

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @tree_ssa_prefetch_arrays() local_unnamed_addr #0 {
  %1 = alloca %struct.loop_iterator, align 8
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #19
  %3 = load i32, ptr @x86_prefetch_sse, align 4, !tbaa !5
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %0
  %6 = load i32, ptr @ix86_isa_flags, align 4, !tbaa !5
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %122, label %9

9:                                                ; preds = %5, %0
  %10 = load ptr, ptr @compiler_params, align 8, !tbaa !9
  %11 = getelementptr inbounds %struct.param_info, ptr %10, i64 100, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %122, label %14

14:                                               ; preds = %9
  %15 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %16 = icmp eq ptr %15, null
  br i1 %16, label %69, label %17

17:                                               ; preds = %14
  %18 = load i32, ptr @dump_flags, align 4, !tbaa !5
  %19 = and i32 %18, 8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %69, label %21

21:                                               ; preds = %17
  %22 = tail call i64 @fwrite(ptr nonnull @.str, i64 24, i64 1, ptr nonnull %15)
  %23 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %24 = load ptr, ptr @compiler_params, align 8, !tbaa !9
  %25 = getelementptr inbounds %struct.param_info, ptr %24, i64 98, i32 1
  %26 = load i32, ptr %25, align 8, !tbaa !11
  %27 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %23, ptr noundef nonnull @.str.1, i32 noundef %26) #20
  %28 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %29 = load ptr, ptr @compiler_params, align 8, !tbaa !9
  %30 = getelementptr inbounds %struct.param_info, ptr %29, i64 97, i32 1
  %31 = load i32, ptr %30, align 8, !tbaa !11
  %32 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %28, ptr noundef nonnull @.str.2, i32 noundef %31) #20
  %33 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %34 = load ptr, ptr @compiler_params, align 8, !tbaa !9
  %35 = getelementptr inbounds %struct.param_info, ptr %34, i64 100, i32 1
  %36 = load i32, ptr %35, align 8, !tbaa !11
  %37 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %33, ptr noundef nonnull @.str.3, i32 noundef %36) #20
  %38 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %39 = load ptr, ptr @compiler_params, align 8, !tbaa !9
  %40 = getelementptr inbounds %struct.param_info, ptr %39, i64 99, i32 1
  %41 = load i32, ptr %40, align 8, !tbaa !11
  %42 = shl nsw i32 %41, 10
  %43 = getelementptr inbounds %struct.param_info, ptr %39, i64 100, i32 1
  %44 = load i32, ptr %43, align 8, !tbaa !11
  %45 = udiv i32 %42, %44
  %46 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %38, ptr noundef nonnull @.str.4, i32 noundef %45, i32 noundef %41) #20
  %47 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %48 = load ptr, ptr @compiler_params, align 8, !tbaa !9
  %49 = getelementptr inbounds %struct.param_info, ptr %48, i64 100, i32 1
  %50 = load i32, ptr %49, align 8, !tbaa !11
  %51 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %47, ptr noundef nonnull @.str.5, i32 noundef %50) #20
  %52 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %53 = load ptr, ptr @compiler_params, align 8, !tbaa !9
  %54 = getelementptr inbounds %struct.param_info, ptr %53, i64 101, i32 1
  %55 = load i32, ptr %54, align 8, !tbaa !11
  %56 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %52, ptr noundef nonnull @.str.6, i32 noundef %55) #20
  %57 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %58 = load ptr, ptr @compiler_params, align 8, !tbaa !9
  %59 = getelementptr inbounds %struct.param_info, ptr %58, i64 114, i32 1
  %60 = load i32, ptr %59, align 8, !tbaa !11
  %61 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %57, ptr noundef nonnull @.str.7, i32 noundef %60) #20
  %62 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %63 = load ptr, ptr @compiler_params, align 8, !tbaa !9
  %64 = getelementptr inbounds %struct.param_info, ptr %63, i64 115, i32 1
  %65 = load i32, ptr %64, align 8, !tbaa !11
  %66 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %62, ptr noundef nonnull @.str.8, i32 noundef %65) #20
  %67 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %68 = tail call i32 @fputc(i32 10, ptr %67)
  br label %69

69:                                               ; preds = %21, %17, %14
  tail call void @initialize_original_copy_tables() #21
  %70 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 501), align 8, !tbaa !9
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %81

72:                                               ; preds = %69
  %73 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !9
  %74 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 40), align 16, !tbaa !9
  %75 = tail call ptr @tree_cons_stat(ptr noundef null, ptr noundef %74, ptr noundef null) #21
  %76 = tail call ptr @build_function_type(ptr noundef %73, ptr noundef %75) #21
  %77 = tail call ptr @add_builtin_function(ptr noundef nonnull @.str.10, ptr noundef %76, i32 noundef 501, i32 noundef 3, ptr noundef null, ptr noundef null) #21
  %78 = getelementptr inbounds %struct.tree_function_decl, ptr %77, i64 0, i32 5
  %79 = load i32, ptr %78, align 8
  %80 = or i32 %79, 131072
  store i32 %80, ptr %78, align 8
  store ptr %77, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 501), align 8, !tbaa !9
  br label %81

81:                                               ; preds = %72, %69
  %82 = load ptr, ptr @compiler_params, align 8, !tbaa !9
  %83 = getelementptr inbounds %struct.param_info, ptr %82, i64 100, i32 1
  %84 = load i32, ptr %83, align 8, !tbaa !11
  %85 = tail call i32 @llvm.ctpop.i32(i32 %84), !range !13
  %86 = icmp ult i32 %85, 2
  br i1 %86, label %88, label %87

87:                                               ; preds = %81
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 1721, ptr noundef nonnull @.str.12) #21
  br label %88

88:                                               ; preds = %81, %87
  call fastcc void @fel_init(ptr noundef nonnull %1, ptr noundef nonnull %2) #20
  %89 = load ptr, ptr %2, align 8, !tbaa !9
  %90 = icmp eq ptr %89, null
  br i1 %90, label %120, label %91

91:                                               ; preds = %88, %114
  %92 = phi ptr [ %115, %114 ], [ %89, %88 ]
  %93 = phi i8 [ %105, %114 ], [ 0, %88 ]
  %94 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %95 = icmp eq ptr %94, null
  br i1 %95, label %103, label %96

96:                                               ; preds = %91
  %97 = load i32, ptr @dump_flags, align 4, !tbaa !5
  %98 = and i32 %97, 8
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %96
  %101 = load i32, ptr %92, align 8, !tbaa !14
  %102 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %94, ptr noundef nonnull @.str.13, i32 noundef %101) #20
  br label %103

103:                                              ; preds = %100, %96, %91
  %104 = tail call fastcc zeroext i8 @loop_prefetch_arrays(ptr noundef nonnull %92) #20, !range !19
  %105 = or i8 %104, %93
  %106 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %107 = icmp eq ptr %106, null
  br i1 %107, label %114, label %108

108:                                              ; preds = %103
  %109 = load i32, ptr @dump_flags, align 4, !tbaa !5
  %110 = and i32 %109, 8
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %114, label %112

112:                                              ; preds = %108
  %113 = tail call i64 @fwrite(ptr nonnull @.str.14, i64 2, i64 1, ptr nonnull %106)
  br label %114

114:                                              ; preds = %103, %108, %112
  call fastcc void @fel_next(ptr noundef nonnull %1, ptr noundef nonnull %2) #20
  %115 = load ptr, ptr %2, align 8, !tbaa !9
  %116 = icmp eq ptr %115, null
  br i1 %116, label %117, label %91, !llvm.loop !20

117:                                              ; preds = %114
  %118 = icmp eq i8 %105, 0
  br i1 %118, label %120, label %119

119:                                              ; preds = %117
  tail call void @scev_reset() #21
  br label %120

120:                                              ; preds = %88, %119, %117
  %121 = phi i32 [ 32, %119 ], [ 0, %117 ], [ 0, %88 ]
  tail call void @free_original_copy_tables() #21
  br label %122

122:                                              ; preds = %5, %9, %120
  %123 = phi i32 [ %121, %120 ], [ 0, %9 ], [ 0, %5 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #19
  ret i32 %123
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare void @initialize_original_copy_tables() local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @build_function_type(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @tree_cons_stat(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @add_builtin_function(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fel_init(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.loop_iterator, ptr %0, i64 0, i32 1
  store i32 0, ptr %3, align 8, !tbaa !22
  %4 = load ptr, ptr @cfun, align 8, !tbaa !9
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !24
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store ptr null, ptr %0, align 8, !tbaa !26
  store ptr null, ptr %1, align 8, !tbaa !9
  br label %43

9:                                                ; preds = %2
  %10 = tail call fastcc i32 @number_of_loops() #20
  %11 = tail call fastcc ptr @VEC_int_heap_alloc(i32 noundef %10) #20
  store ptr %11, ptr %0, align 8, !tbaa !26
  %12 = load ptr, ptr @cfun, align 8, !tbaa !9
  %13 = getelementptr inbounds %struct.function, ptr %12, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !24
  %15 = getelementptr inbounds %struct.loops, ptr %14, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !27
  br label %17

17:                                               ; preds = %17, %9
  %18 = phi ptr [ %16, %9 ], [ %20, %17 ]
  %19 = getelementptr inbounds %struct.loop, ptr %18, i64 0, i32 8
  %20 = load ptr, ptr %19, align 8, !tbaa !29
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %17, !llvm.loop !30

22:                                               ; preds = %17, %40
  %23 = phi ptr [ %41, %40 ], [ %18, %17 ]
  %24 = load i32, ptr %23, align 8, !tbaa !14
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load ptr, ptr %0, align 8, !tbaa !26
  tail call fastcc void @VEC_int_base_quick_push(ptr noundef %27, i32 noundef %24) #20
  br label %28

28:                                               ; preds = %26, %22
  %29 = getelementptr inbounds %struct.loop, ptr %23, i64 0, i32 9
  %30 = load ptr, ptr %29, align 8, !tbaa !31
  %31 = icmp eq ptr %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %28, %32
  %33 = phi ptr [ %35, %32 ], [ %30, %28 ]
  %34 = getelementptr inbounds %struct.loop, ptr %33, i64 0, i32 8
  %35 = load ptr, ptr %34, align 8, !tbaa !29
  %36 = icmp eq ptr %35, null
  br i1 %36, label %40, label %32, !llvm.loop !32

37:                                               ; preds = %28
  %38 = tail call fastcc ptr @loop_outer(ptr noundef nonnull %23) #20
  %39 = icmp eq ptr %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %32, %37
  %41 = phi ptr [ %38, %37 ], [ %33, %32 ]
  br label %22

42:                                               ; preds = %37
  tail call fastcc void @fel_next(ptr noundef nonnull %0, ptr noundef %1) #20
  br label %43

43:                                               ; preds = %42, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @loop_prefetch_arrays(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.tree_niter_desc, align 8
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #19
  %5 = tail call zeroext i8 @optimize_loop_nest_for_size_p(ptr noundef %0) #21
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %16, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %9 = icmp eq ptr %8, null
  br i1 %9, label %58, label %10

10:                                               ; preds = %7
  %11 = load i32, ptr @dump_flags, align 4, !tbaa !5
  %12 = and i32 %11, 8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %58, label %14

14:                                               ; preds = %10
  %15 = tail call i64 @fwrite(ptr nonnull @.str.15, i64 22, i64 1, ptr nonnull %8)
  br label %58

16:                                               ; preds = %1
  %17 = call fastcc ptr @gather_memory_references(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4) #20
  tail call fastcc void @prune_by_reuse(ptr noundef %17) #20
  %18 = tail call fastcc i32 @estimate_prefetch_count(ptr noundef %17) #20
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %56, label %20

20:                                               ; preds = %16
  %21 = load i8, ptr %3, align 1, !tbaa !33
  tail call fastcc void @determine_loop_nest_reuse(ptr noundef %0, ptr noundef %17, i8 noundef zeroext %21) #20
  %22 = tail call i32 @tree_num_loop_insns(ptr noundef %0, ptr noundef nonnull @eni_time_weights) #21
  %23 = load ptr, ptr @compiler_params, align 8, !tbaa !9
  %24 = getelementptr inbounds %struct.param_info, ptr %23, i64 97, i32 1
  %25 = load i32, ptr %24, align 8, !tbaa !11
  %26 = add i32 %22, -1
  %27 = add i32 %26, %25
  %28 = udiv i32 %27, %22
  %29 = tail call i64 @estimated_loop_iterations_int(ptr noundef %0, i8 noundef zeroext 0) #21
  %30 = tail call i32 @tree_num_loop_insns(ptr noundef %0, ptr noundef nonnull @eni_size_weights) #21
  %31 = call fastcc i32 @determine_unroll_factor(ptr noundef %0, ptr noundef %17, i32 noundef %30, ptr noundef nonnull %2, i64 noundef %29) #20
  %32 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %20
  %35 = load i32, ptr %4, align 4, !tbaa !5
  br label %43

36:                                               ; preds = %20
  %37 = load i32, ptr @dump_flags, align 4, !tbaa !5
  %38 = and i32 %37, 8
  %39 = icmp eq i32 %38, 0
  %40 = load i32, ptr %4, align 4, !tbaa !5
  br i1 %39, label %43, label %41

41:                                               ; preds = %36
  %42 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %32, ptr noundef nonnull @.str.16, i32 noundef %28, i32 noundef %31, i64 noundef %29, i32 noundef %30, i32 noundef %40, i32 noundef %18) #20
  br label %43

43:                                               ; preds = %34, %41, %36
  %44 = phi i32 [ %35, %34 ], [ %40, %41 ], [ %40, %36 ]
  %45 = call fastcc zeroext i8 @is_loop_prefetching_profitable(i32 noundef %28, i64 noundef %29, i32 noundef %30, i32 noundef %18, i32 noundef %44) #20, !range !19
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %56, label %47

47:                                               ; preds = %43
  call fastcc void @mark_nontemporal_stores(ptr noundef %0, ptr noundef %17) #20
  %48 = call fastcc zeroext i8 @schedule_prefetches(ptr noundef %17, i32 noundef %31, i32 noundef %28) #20, !range !19
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %47
  %51 = icmp eq i32 %31, 1
  br i1 %51, label %54, label %52

52:                                               ; preds = %50
  %53 = call ptr @single_dom_exit(ptr noundef %0) #21
  call void @tree_unroll_loop(ptr noundef %0, i32 noundef %31, ptr noundef %53, ptr noundef nonnull %2) #21
  br label %54

54:                                               ; preds = %52, %50
  %55 = phi i8 [ 1, %52 ], [ 0, %50 ]
  call fastcc void @issue_prefetches(ptr noundef %17, i32 noundef %31, i32 noundef %28) #20
  br label %56

56:                                               ; preds = %47, %43, %16, %54
  %57 = phi i8 [ 0, %16 ], [ %55, %54 ], [ 0, %47 ], [ 0, %43 ]
  call fastcc void @release_mem_refs(ptr noundef %17) #20
  br label %58

58:                                               ; preds = %7, %10, %14, %56
  %59 = phi i8 [ %57, %56 ], [ 0, %14 ], [ 0, %10 ], [ 0, %7 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %2) #19
  ret i8 %59
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fel_next(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #19
  %4 = getelementptr inbounds %struct.loop_iterator, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !22
  br label %6

6:                                                ; preds = %11, %2
  %7 = phi i32 [ %12, %11 ], [ %5, %2 ]
  %8 = load ptr, ptr %0, align 8, !tbaa !26
  %9 = call fastcc i32 @VEC_int_base_iterate(ptr noundef %8, i32 noundef %7, ptr noundef nonnull %3) #20, !range !34
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %6
  %12 = add i32 %7, 1
  store i32 %12, ptr %4, align 8, !tbaa !22
  %13 = load i32, ptr %3, align 4, !tbaa !5
  %14 = tail call fastcc ptr @get_loop(i32 noundef %13) #20
  store ptr %14, ptr %1, align 8, !tbaa !9
  %15 = icmp eq ptr %14, null
  br i1 %15, label %6, label %17, !llvm.loop !35

16:                                               ; preds = %6
  tail call fastcc void @VEC_int_heap_free(ptr noundef nonnull %0) #20
  store ptr null, ptr %1, align 8, !tbaa !9
  br label %17

17:                                               ; preds = %11, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #19
  ret void
}

; Function Attrs: optsize
declare void @scev_reset() local_unnamed_addr #3

; Function Attrs: optsize
declare void @free_original_copy_tables() local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_int_heap_alloc(i32 noundef %0) unnamed_addr #0 {
  %2 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %0, i64 noundef 8, i64 noundef 4) #21
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @number_of_loops() unnamed_addr #4 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !9
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !24
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.loops, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !36
  %8 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %7) #20
  br label %9

9:                                                ; preds = %0, %5
  %10 = phi i32 [ %8, %5 ], [ 0, %0 ]
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_int_base_quick_push(ptr noundef %0, i32 noundef %1) unnamed_addr #5 {
  %3 = load i32, ptr %0, align 4, !tbaa !37
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 4, !tbaa !37
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %5
  store i32 %1, ptr %6, align 4, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @loop_outer(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  %4 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %3) #20
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = add i32 %4, -1
  %8 = tail call fastcc ptr @VEC_loop_p_base_index(ptr noundef %3, i32 noundef %7) #20
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: optsize
declare ptr @vec_heap_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_loop_p_base_length(ptr noundef readonly %0) unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !40
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_loop_p_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #6 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !9
  ret ptr %5
}

; Function Attrs: optsize
declare zeroext i8 @optimize_loop_nest_for_size_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gather_memory_references(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = alloca ptr, align 8
  %6 = tail call ptr @get_loop_body_in_dom_order(ptr noundef %0) #21
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  store ptr null, ptr %5, align 8, !tbaa !9
  store i8 1, ptr %1, align 1, !tbaa !33
  store i32 0, ptr %2, align 4, !tbaa !5
  %7 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %8 = load i32, ptr %7, align 4, !tbaa !42
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %71, label %10

10:                                               ; preds = %3, %64
  %11 = phi i64 [ %65, %64 ], [ 0, %3 ]
  %12 = getelementptr inbounds ptr, ptr %6, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !9
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !43
  %16 = icmp eq ptr %15, %0
  br i1 %16, label %17, label %64

17:                                               ; preds = %10
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef nonnull %13) #20
  %18 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #20, !range !19
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %64

20:                                               ; preds = %17, %61
  %21 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #20
  %22 = tail call fastcc i32 @gimple_code(ptr noundef %21) #20, !range !45
  %23 = icmp eq i32 %22, 6
  br i1 %23, label %35, label %24

24:                                               ; preds = %20
  %25 = tail call fastcc ptr @gimple_vuse(ptr noundef %21) #20
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %34

27:                                               ; preds = %24
  %28 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %21) #20, !range !19
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %61, label %30

30:                                               ; preds = %27
  %31 = tail call i32 @gimple_call_flags(ptr noundef %21) #21
  %32 = and i32 %31, 1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %61

34:                                               ; preds = %30, %24
  store i8 0, ptr %1, align 1, !tbaa !33
  br label %61

35:                                               ; preds = %20
  %36 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %21) #20
  %37 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %21) #20
  %38 = load i64, ptr %37, align 8
  %39 = and i64 %38, 65535
  %40 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %39
  %41 = load i32, ptr %40, align 4, !tbaa !5
  %42 = icmp eq i32 %41, 4
  br i1 %42, label %43, label %49

43:                                               ; preds = %35
  %44 = call fastcc zeroext i8 @gather_memory_references_ref(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %37, i8 noundef zeroext 0, ptr noundef %21) #20, !range !19
  %45 = load i8, ptr %1, align 1, !tbaa !33
  %46 = and i8 %45, %44
  store i8 %46, ptr %1, align 1, !tbaa !33
  %47 = load i32, ptr %2, align 4, !tbaa !5
  %48 = add i32 %47, 1
  store i32 %48, ptr %2, align 4, !tbaa !5
  br label %49

49:                                               ; preds = %43, %35
  %50 = load i64, ptr %36, align 8
  %51 = and i64 %50, 65535
  %52 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %51
  %53 = load i32, ptr %52, align 4, !tbaa !5
  %54 = icmp eq i32 %53, 4
  br i1 %54, label %55, label %61

55:                                               ; preds = %49
  %56 = call fastcc zeroext i8 @gather_memory_references_ref(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %36, i8 noundef zeroext 1, ptr noundef %21) #20, !range !19
  %57 = load i8, ptr %1, align 1, !tbaa !33
  %58 = and i8 %57, %56
  store i8 %58, ptr %1, align 1, !tbaa !33
  %59 = load i32, ptr %2, align 4, !tbaa !5
  %60 = add i32 %59, 1
  store i32 %60, ptr %2, align 4, !tbaa !5
  br label %61

61:                                               ; preds = %49, %55, %27, %30, %34
  call fastcc void @gsi_next(ptr noundef nonnull %4) #20
  %62 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #20, !range !19
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %20, label %64, !llvm.loop !46

64:                                               ; preds = %61, %17, %10
  %65 = add nuw nsw i64 %11, 1
  %66 = load i32, ptr %7, align 4, !tbaa !42
  %67 = zext i32 %66 to i64
  %68 = icmp ult i64 %65, %67
  br i1 %68, label %10, label %69, !llvm.loop !47

69:                                               ; preds = %64
  %70 = load ptr, ptr %5, align 8, !tbaa !9
  br label %71

71:                                               ; preds = %69, %3
  %72 = phi ptr [ %70, %69 ], [ null, %3 ]
  tail call void @free(ptr noundef %6) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #19
  ret ptr %72
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @prune_by_reuse(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %1, %3
  %4 = phi ptr [ %6, %3 ], [ %0, %1 ]
  tail call fastcc void @prune_group_by_reuse(ptr noundef nonnull %4) #20
  %5 = getelementptr inbounds %struct.mem_ref_group, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %3, !llvm.loop !50

8:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @estimate_prefetch_count(ptr noundef readonly %0) unnamed_addr #7 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %23, label %3

3:                                                ; preds = %1, %18
  %4 = phi i32 [ %19, %18 ], [ 0, %1 ]
  %5 = phi ptr [ %21, %18 ], [ %0, %1 ]
  %6 = getelementptr inbounds %struct.mem_ref_group, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !9
  %8 = icmp eq ptr %7, null
  br i1 %8, label %18, label %9

9:                                                ; preds = %3, %9
  %10 = phi ptr [ %16, %9 ], [ %7, %3 ]
  %11 = phi i32 [ %14, %9 ], [ %4, %3 ]
  %12 = tail call fastcc zeroext i8 @should_issue_prefetch_p(ptr noundef nonnull %10) #20, !range !19
  %13 = zext nneg i8 %12 to i32
  %14 = add nsw i32 %11, %13
  %15 = getelementptr inbounds %struct.mem_ref, ptr %10, i64 0, i32 7
  %16 = load ptr, ptr %15, align 8, !tbaa !9
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %9, !llvm.loop !51

18:                                               ; preds = %9, %3
  %19 = phi i32 [ %4, %3 ], [ %14, %9 ]
  %20 = getelementptr inbounds %struct.mem_ref_group, ptr %5, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !48
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %3, !llvm.loop !52

23:                                               ; preds = %18, %1
  %24 = phi i32 [ 0, %1 ], [ %19, %18 ]
  ret i32 %24
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @determine_loop_nest_reuse(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  store ptr null, ptr %4, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  store ptr null, ptr %5, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #19
  store ptr null, ptr %6, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #19
  %9 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 8
  %10 = load ptr, ptr %9, align 8, !tbaa !29
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %247

12:                                               ; preds = %3
  %13 = load ptr, ptr @cfun, align 8, !tbaa !9
  %14 = getelementptr inbounds %struct.function, ptr %13, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !24
  %16 = getelementptr inbounds %struct.loops, ptr %15, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !27
  br label %18

18:                                               ; preds = %12, %22
  %19 = phi ptr [ %20, %22 ], [ %0, %12 ]
  %20 = tail call fastcc ptr @loop_outer(ptr noundef nonnull %19) #20
  %21 = icmp eq ptr %20, %17
  br i1 %21, label %28, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.loop, ptr %20, i64 0, i32 8
  %24 = load ptr, ptr %23, align 8, !tbaa !29
  %25 = getelementptr inbounds %struct.loop, ptr %24, i64 0, i32 9
  %26 = load ptr, ptr %25, align 8, !tbaa !31
  %27 = icmp eq ptr %26, null
  br i1 %27, label %18, label %28

28:                                               ; preds = %18, %22
  %29 = call zeroext i8 @find_loop_nest(ptr noundef nonnull %19, ptr noundef nonnull %6) #21
  %30 = load ptr, ptr %6, align 8
  %31 = call fastcc i32 @VEC_loop_p_base_length(ptr noundef %30) #20
  %32 = zext i32 %31 to i64
  %33 = shl nuw nsw i64 %32, 2
  %34 = call ptr @xmalloc(i64 noundef %33) #21
  %35 = call fastcc i32 @volume_of_references(ptr noundef %1) #20
  br label %36

36:                                               ; preds = %62, %28
  %37 = phi i32 [ %54, %62 ], [ %31, %28 ]
  %38 = phi i32 [ %65, %62 ], [ %35, %28 ]
  %39 = load ptr, ptr @compiler_params, align 8
  %40 = getelementptr inbounds %struct.param_info, ptr %39, i64 101, i32 1
  %41 = zext i32 %37 to i64
  br label %42

42:                                               ; preds = %36, %47
  %43 = phi i64 [ %41, %36 ], [ %48, %47 ]
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = icmp eq ptr %1, null
  br i1 %46, label %68, label %76

47:                                               ; preds = %42
  %48 = add nsw i64 %43, -1
  %49 = getelementptr inbounds i32, ptr %34, i64 %48
  store i32 %38, ptr %49, align 4, !tbaa !5
  %50 = load i32, ptr %40, align 8, !tbaa !11
  %51 = shl nsw i32 %50, 10
  %52 = icmp ugt i32 %38, %51
  br i1 %52, label %42, label %53, !llvm.loop !53

53:                                               ; preds = %47
  %54 = trunc i64 %48 to i32
  %55 = load ptr, ptr %6, align 8
  %56 = call fastcc ptr @VEC_loop_p_base_index(ptr noundef %55, i32 noundef %54) #20
  %57 = call i64 @estimated_loop_iterations_int(ptr noundef %56, i8 noundef zeroext 0) #21
  %58 = icmp slt i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  %60 = call i32 @expected_loop_iterations(ptr noundef %56) #21
  %61 = zext i32 %60 to i64
  br label %62

62:                                               ; preds = %59, %53
  %63 = phi i64 [ %61, %59 ], [ %57, %53 ]
  %64 = trunc i64 %63 to i32
  %65 = mul i32 %38, %64
  br label %36, !llvm.loop !53

66:                                               ; preds = %103
  %67 = load ptr, ptr %4, align 8
  br label %68

68:                                               ; preds = %66, %45
  %69 = phi ptr [ null, %45 ], [ %67, %66 ]
  %70 = phi ptr [ undef, %45 ], [ %104, %66 ]
  %71 = phi i8 [ %2, %45 ], [ %105, %66 ]
  store ptr %70, ptr %7, align 8, !tbaa !9
  %72 = call fastcc i32 @VEC_data_reference_p_base_iterate(ptr noundef %69, i32 noundef 0, ptr noundef nonnull %7) #20, !range !34
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %128, label %74

74:                                               ; preds = %68
  %75 = icmp eq i8 %71, 0
  br label %109

76:                                               ; preds = %45, %103
  %77 = phi i8 [ %105, %103 ], [ %2, %45 ]
  %78 = phi ptr [ %107, %103 ], [ %1, %45 ]
  %79 = phi ptr [ %104, %103 ], [ undef, %45 ]
  %80 = getelementptr inbounds %struct.mem_ref_group, ptr %78, i64 0, i32 2
  %81 = load ptr, ptr %80, align 8, !tbaa !9
  %82 = icmp eq ptr %81, null
  br i1 %82, label %103, label %83

83:                                               ; preds = %76, %98
  %84 = phi ptr [ %101, %98 ], [ %81, %76 ]
  %85 = phi i8 [ %99, %98 ], [ %77, %76 ]
  %86 = getelementptr inbounds %struct.mem_ref, ptr %84, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !54
  %88 = load ptr, ptr %84, align 8, !tbaa !56
  %89 = getelementptr inbounds %struct.mem_ref, ptr %84, i64 0, i32 8
  %90 = load i8, ptr %89, align 8
  %91 = and i8 %90, 1
  %92 = xor i8 %91, 1
  %93 = call ptr @create_data_ref(ptr noundef %19, ptr noundef %87, ptr noundef %88, i8 noundef zeroext %92) #21
  %94 = icmp eq ptr %93, null
  br i1 %94, label %98, label %95

95:                                               ; preds = %83
  %96 = getelementptr inbounds %struct.mem_ref, ptr %84, i64 0, i32 6
  store i32 %38, ptr %96, align 8, !tbaa !57
  %97 = getelementptr inbounds %struct.data_reference, ptr %93, i64 0, i32 2
  store ptr %84, ptr %97, align 8, !tbaa !58
  call fastcc void @VEC_data_reference_p_heap_safe_push(ptr noundef nonnull %4, ptr noundef nonnull %93) #20
  br label %98

98:                                               ; preds = %83, %95
  %99 = phi i8 [ %85, %95 ], [ 0, %83 ]
  %100 = getelementptr inbounds %struct.mem_ref, ptr %84, i64 0, i32 7
  %101 = load ptr, ptr %100, align 8, !tbaa !9
  %102 = icmp eq ptr %101, null
  br i1 %102, label %103, label %83, !llvm.loop !63

103:                                              ; preds = %98, %76
  %104 = phi ptr [ %79, %76 ], [ %93, %98 ]
  %105 = phi i8 [ %77, %76 ], [ %99, %98 ]
  %106 = getelementptr inbounds %struct.mem_ref_group, ptr %78, i64 0, i32 3
  %107 = load ptr, ptr %106, align 8, !tbaa !48
  %108 = icmp eq ptr %107, null
  br i1 %108, label %66, label %76, !llvm.loop !64

109:                                              ; preds = %74, %124
  %110 = phi i32 [ 0, %74 ], [ %125, %124 ]
  %111 = load ptr, ptr %7, align 8, !tbaa !9
  %112 = call fastcc i32 @self_reuse_distance(ptr noundef %111, ptr noundef %34, i32 noundef %31, ptr noundef %0) #20, !range !65
  %113 = getelementptr inbounds %struct.data_reference, ptr %111, i64 0, i32 2
  %114 = load ptr, ptr %113, align 8, !tbaa !58
  %115 = getelementptr inbounds %struct.mem_ref, ptr %114, i64 0, i32 6
  %116 = load i32, ptr %115, align 8, !tbaa !57
  %117 = icmp ugt i32 %116, %112
  br i1 %117, label %118, label %119

118:                                              ; preds = %109
  store i32 %112, ptr %115, align 8, !tbaa !57
  br label %119

119:                                              ; preds = %118, %109
  br i1 %75, label %124, label %120

120:                                              ; preds = %119
  %121 = getelementptr inbounds %struct.mem_ref, ptr %114, i64 0, i32 8
  %122 = load i8, ptr %121, align 8
  %123 = or i8 %122, 2
  store i8 %123, ptr %121, align 8
  br label %124

124:                                              ; preds = %119, %120
  %125 = add i32 %110, 1
  %126 = call fastcc i32 @VEC_data_reference_p_base_iterate(ptr noundef %69, i32 noundef %125, ptr noundef nonnull %7) #20, !range !34
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %109, !llvm.loop !66

128:                                              ; preds = %124, %68
  %129 = load ptr, ptr %6, align 8, !tbaa !9
  call void @compute_all_dependences(ptr noundef %69, ptr noundef nonnull %5, ptr noundef %129, i8 noundef zeroext 1) #21
  %130 = load ptr, ptr %5, align 8
  %131 = call fastcc i32 @VEC_ddr_p_base_iterate(ptr noundef %130, i32 noundef 0, ptr noundef nonnull %8) #20, !range !34
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %219, label %133

133:                                              ; preds = %128
  %134 = add i32 %31, -1
  %135 = zext i32 %134 to i64
  br label %136

136:                                              ; preds = %133, %214
  %137 = phi i32 [ 0, %133 ], [ %215, %214 ]
  %138 = load ptr, ptr %8, align 8, !tbaa !9
  %139 = getelementptr inbounds %struct.data_dependence_relation, ptr %138, i64 0, i32 2
  %140 = load ptr, ptr %139, align 8, !tbaa !67
  %141 = load ptr, ptr @chrec_known, align 8, !tbaa !9
  %142 = icmp eq ptr %140, %141
  br i1 %142, label %214, label %143

143:                                              ; preds = %136
  %144 = load ptr, ptr %138, align 8, !tbaa !69
  %145 = getelementptr inbounds %struct.data_reference, ptr %144, i64 0, i32 2
  %146 = load ptr, ptr %145, align 8, !tbaa !58
  %147 = getelementptr inbounds %struct.data_dependence_relation, ptr %138, i64 0, i32 1
  %148 = load ptr, ptr %147, align 8, !tbaa !70
  %149 = getelementptr inbounds %struct.data_reference, ptr %148, i64 0, i32 2
  %150 = load ptr, ptr %149, align 8, !tbaa !58
  %151 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !9
  %152 = icmp eq ptr %140, %151
  br i1 %152, label %162, label %153

153:                                              ; preds = %143
  %154 = getelementptr inbounds %struct.data_dependence_relation, ptr %138, i64 0, i32 6
  %155 = load ptr, ptr %154, align 8, !tbaa !71
  %156 = call fastcc i32 @VEC_lambda_vector_base_length(ptr noundef %155) #20
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %162, label %158

158:                                              ; preds = %153
  %159 = icmp eq ptr %146, %150
  %160 = getelementptr inbounds %struct.mem_ref, ptr %146, i64 0, i32 8
  %161 = getelementptr inbounds %struct.mem_ref, ptr %150, i64 0, i32 8
  br label %169

162:                                              ; preds = %153, %143
  %163 = getelementptr inbounds %struct.mem_ref, ptr %146, i64 0, i32 8
  %164 = load i8, ptr %163, align 8
  %165 = and i8 %164, -3
  store i8 %165, ptr %163, align 8
  %166 = getelementptr inbounds %struct.mem_ref, ptr %150, i64 0, i32 8
  %167 = load i8, ptr %166, align 8
  %168 = and i8 %167, -3
  store i8 %168, ptr %166, align 8
  br label %203

169:                                              ; preds = %158, %190
  %170 = phi ptr [ %155, %158 ], [ %191, %190 ]
  %171 = phi i32 [ %38, %158 ], [ %199, %190 ]
  %172 = phi i32 [ 0, %158 ], [ %200, %190 ]
  %173 = call fastcc ptr @VEC_lambda_vector_base_index(ptr noundef %170, i32 noundef %172) #20
  %174 = call fastcc i32 @volume_of_dist_vector(ptr noundef %173, ptr noundef %34, i32 noundef %31) #20
  %175 = load ptr, ptr %154, align 8, !tbaa !71
  %176 = call fastcc ptr @VEC_lambda_vector_base_index(ptr noundef %175, i32 noundef %172) #20
  %177 = call fastcc zeroext i8 @lambda_vector_zerop(ptr noundef %176, i32 noundef %134) #20, !range !19
  %178 = icmp eq i8 %177, 0
  br i1 %178, label %190, label %179

179:                                              ; preds = %169
  br i1 %159, label %180, label %184

180:                                              ; preds = %179
  %181 = getelementptr inbounds i32, ptr %176, i64 %135
  %182 = load i32, ptr %181, align 4, !tbaa !5
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %190, label %184

184:                                              ; preds = %180, %179
  %185 = load i8, ptr %160, align 8
  %186 = and i8 %185, -3
  store i8 %186, ptr %160, align 8
  %187 = load i8, ptr %161, align 8
  %188 = and i8 %187, -3
  store i8 %188, ptr %161, align 8
  %189 = load ptr, ptr %154, align 8, !tbaa !71
  br label %190

190:                                              ; preds = %184, %180, %169
  %191 = phi ptr [ %189, %184 ], [ %175, %180 ], [ %175, %169 ]
  %192 = load ptr, ptr @compiler_params, align 8, !tbaa !9
  %193 = getelementptr inbounds %struct.param_info, ptr %192, i64 99, i32 1
  %194 = load i32, ptr %193, align 8, !tbaa !11
  %195 = shl i32 %194, 6
  %196 = and i32 %195, 268435392
  %197 = icmp ult i32 %174, %196
  %198 = call i32 @llvm.umin.i32(i32 %174, i32 %171)
  %199 = select i1 %197, i32 %171, i32 %198
  %200 = add nuw i32 %172, 1
  %201 = call fastcc i32 @VEC_lambda_vector_base_length(ptr noundef %191) #20
  %202 = icmp ult i32 %200, %201
  br i1 %202, label %169, label %203, !llvm.loop !72

203:                                              ; preds = %190, %162
  %204 = phi i32 [ 0, %162 ], [ %199, %190 ]
  %205 = getelementptr inbounds %struct.mem_ref, ptr %146, i64 0, i32 6
  %206 = load i32, ptr %205, align 8, !tbaa !57
  %207 = icmp ugt i32 %206, %204
  br i1 %207, label %208, label %209

208:                                              ; preds = %203
  store i32 %204, ptr %205, align 8, !tbaa !57
  br label %209

209:                                              ; preds = %208, %203
  %210 = getelementptr inbounds %struct.mem_ref, ptr %150, i64 0, i32 6
  %211 = load i32, ptr %210, align 8, !tbaa !57
  %212 = icmp ugt i32 %211, %204
  br i1 %212, label %213, label %214

213:                                              ; preds = %209
  store i32 %204, ptr %210, align 8, !tbaa !57
  br label %214

214:                                              ; preds = %209, %213, %136
  %215 = add i32 %137, 1
  %216 = load ptr, ptr %5, align 8
  %217 = call fastcc i32 @VEC_ddr_p_base_iterate(ptr noundef %216, i32 noundef %215, ptr noundef nonnull %8) #20, !range !34
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %219, label %136, !llvm.loop !73

219:                                              ; preds = %214, %128
  %220 = phi ptr [ %130, %128 ], [ %216, %214 ]
  call void @free_dependence_relations(ptr noundef %220) #21
  call void @free_data_refs(ptr noundef %69) #21
  call void @free(ptr noundef %34) #20
  %221 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %222 = icmp eq ptr %221, null
  br i1 %222, label %247, label %223

223:                                              ; preds = %219
  %224 = load i32, ptr @dump_flags, align 4, !tbaa !5
  %225 = and i32 %224, 8
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %247, label %227

227:                                              ; preds = %223
  %228 = call i64 @fwrite(ptr nonnull @.str.33, i64 17, i64 1, ptr nonnull %221)
  br i1 %46, label %247, label %229

229:                                              ; preds = %227, %243
  %230 = phi ptr [ %245, %243 ], [ %1, %227 ]
  %231 = getelementptr inbounds %struct.mem_ref_group, ptr %230, i64 0, i32 2
  %232 = load ptr, ptr %231, align 8, !tbaa !9
  %233 = icmp eq ptr %232, null
  br i1 %233, label %243, label %234

234:                                              ; preds = %229, %234
  %235 = phi ptr [ %241, %234 ], [ %232, %229 ]
  %236 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %237 = getelementptr inbounds %struct.mem_ref, ptr %235, i64 0, i32 6
  %238 = load i32, ptr %237, align 8, !tbaa !57
  %239 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %236, ptr noundef nonnull @.str.34, ptr noundef nonnull %235, i32 noundef %238) #20
  %240 = getelementptr inbounds %struct.mem_ref, ptr %235, i64 0, i32 7
  %241 = load ptr, ptr %240, align 8, !tbaa !9
  %242 = icmp eq ptr %241, null
  br i1 %242, label %243, label %234, !llvm.loop !74

243:                                              ; preds = %234, %229
  %244 = getelementptr inbounds %struct.mem_ref_group, ptr %230, i64 0, i32 3
  %245 = load ptr, ptr %244, align 8, !tbaa !48
  %246 = icmp eq ptr %245, null
  br i1 %246, label %247, label %229, !llvm.loop !75

247:                                              ; preds = %243, %227, %219, %223, %3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  ret void
}

; Function Attrs: optsize
declare i32 @tree_num_loop_insns(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i64 @estimated_loop_iterations_int(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @determine_unroll_factor(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2, ptr noundef %3, i64 noundef %4) unnamed_addr #0 {
  %6 = load ptr, ptr @compiler_params, align 8, !tbaa !9
  %7 = getelementptr inbounds %struct.param_info, ptr %6, i64 26, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !11
  %9 = udiv i32 %8, %2
  %10 = icmp sgt i64 %4, -1
  %11 = zext i32 %9 to i64
  %12 = icmp ugt i64 %11, %4
  %13 = select i1 %10, i1 %12, i1 false
  %14 = trunc i64 %4 to i32
  %15 = select i1 %13, i32 %14, i32 %9
  %16 = icmp ult i32 %15, 2
  br i1 %16, label %52, label %17

17:                                               ; preds = %5
  %18 = icmp eq ptr %1, null
  br i1 %18, label %47, label %19

19:                                               ; preds = %17, %42
  %20 = phi ptr [ %45, %42 ], [ %1, %17 ]
  %21 = phi i32 [ %43, %42 ], [ 1, %17 ]
  %22 = getelementptr inbounds %struct.mem_ref_group, ptr %20, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !9
  %24 = icmp eq ptr %23, null
  br i1 %24, label %42, label %25

25:                                               ; preds = %19, %37
  %26 = phi ptr [ %40, %37 ], [ %23, %19 ]
  %27 = phi i32 [ %38, %37 ], [ %21, %19 ]
  %28 = tail call fastcc zeroext i8 @should_issue_prefetch_p(ptr noundef nonnull %26) #20, !range !19
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.mem_ref, ptr %26, i64 0, i32 4
  %32 = load i64, ptr %31, align 8, !tbaa !76
  %33 = trunc i64 %32 to i32
  %34 = tail call i32 @least_common_multiple(i32 noundef %33, i32 noundef %27) #21
  %35 = icmp ugt i32 %34, %15
  %36 = select i1 %35, i32 %27, i32 %34
  br label %37

37:                                               ; preds = %30, %25
  %38 = phi i32 [ %27, %25 ], [ %36, %30 ]
  %39 = getelementptr inbounds %struct.mem_ref, ptr %26, i64 0, i32 7
  %40 = load ptr, ptr %39, align 8, !tbaa !9
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %25, !llvm.loop !77

42:                                               ; preds = %37, %19
  %43 = phi i32 [ %21, %19 ], [ %38, %37 ]
  %44 = getelementptr inbounds %struct.mem_ref_group, ptr %20, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !48
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %19, !llvm.loop !78

47:                                               ; preds = %42, %17
  %48 = phi i32 [ 1, %17 ], [ %43, %42 ]
  %49 = tail call fastcc zeroext i8 @should_unroll_loop_p(ptr noundef %0, ptr noundef %3, i32 noundef %48) #20, !range !19
  %50 = icmp eq i8 %49, 0
  %51 = select i1 %50, i32 1, i32 %48
  br label %52

52:                                               ; preds = %47, %5
  %53 = phi i32 [ 1, %5 ], [ %51, %47 ]
  ret i32 %53
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @is_loop_prefetching_profitable(i32 noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #8 {
  %6 = icmp eq i32 %4, 0
  br i1 %6, label %34, label %7

7:                                                ; preds = %5
  %8 = udiv i32 %2, %4
  %9 = load ptr, ptr @compiler_params, align 8, !tbaa !9
  %10 = getelementptr inbounds %struct.param_info, ptr %9, i64 115, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !11
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %34, label %13

13:                                               ; preds = %7
  %14 = icmp slt i64 %1, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %13
  %16 = udiv i32 %2, %3
  %17 = getelementptr inbounds %struct.param_info, ptr %9, i64 114, i32 1
  %18 = load i32, ptr %17, align 8, !tbaa !11
  %19 = icmp sge i32 %16, %18
  %20 = zext i1 %19 to i8
  br label %34

21:                                               ; preds = %13
  %22 = zext i32 %0 to i64
  %23 = icmp ult i64 %22, %1
  br i1 %23, label %34, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %26 = icmp eq ptr %25, null
  br i1 %26, label %34, label %27

27:                                               ; preds = %24
  %28 = load i32, ptr @dump_flags, align 4, !tbaa !5
  %29 = and i32 %28, 8
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = trunc i64 %1 to i32
  %33 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %25, ptr noundef nonnull @.str.35, i32 noundef %32) #20
  br label %34

34:                                               ; preds = %21, %24, %27, %31, %7, %5, %15
  %35 = phi i8 [ %20, %15 ], [ 0, %5 ], [ 0, %7 ], [ 0, %31 ], [ 0, %27 ], [ 0, %24 ], [ 1, %21 ]
  ret i8 %35
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @mark_nontemporal_stores(ptr noundef %0, ptr noundef readonly %1) unnamed_addr #0 {
  %3 = tail call fastcc zeroext i8 @may_use_storent_in_loop_p(ptr noundef %0) #20, !range !19
  %4 = icmp eq i8 %3, 0
  %5 = icmp eq ptr %1, null
  %6 = or i1 %4, %5
  br i1 %6, label %32, label %7

7:                                                ; preds = %2, %21
  %8 = phi i8 [ %22, %21 ], [ 0, %2 ]
  %9 = phi ptr [ %24, %21 ], [ %1, %2 ]
  %10 = getelementptr inbounds %struct.mem_ref_group, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !9
  %12 = icmp eq ptr %11, null
  br i1 %12, label %21, label %13

13:                                               ; preds = %7, %13
  %14 = phi ptr [ %19, %13 ], [ %11, %7 ]
  %15 = phi i8 [ %17, %13 ], [ %8, %7 ]
  %16 = tail call fastcc zeroext i8 @mark_nontemporal_store(ptr noundef nonnull %14) #20, !range !19
  %17 = or i8 %16, %15
  %18 = getelementptr inbounds %struct.mem_ref, ptr %14, i64 0, i32 7
  %19 = load ptr, ptr %18, align 8, !tbaa !9
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %13, !llvm.loop !79

21:                                               ; preds = %13, %7
  %22 = phi i8 [ %8, %7 ], [ %17, %13 ]
  %23 = getelementptr inbounds %struct.mem_ref_group, ptr %9, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !48
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %7, !llvm.loop !80

26:                                               ; preds = %21
  %27 = icmp ne i8 %22, 0
  %28 = load ptr, ptr @x86_mfence, align 8
  %29 = icmp ne ptr %28, null
  %30 = select i1 %27, i1 %29, i1 false
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  tail call fastcc void @emit_mfence_after_loop(ptr noundef %0) #20
  br label %32

32:                                               ; preds = %26, %31, %2
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @schedule_prefetches(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #8 {
  %4 = load ptr, ptr @compiler_params, align 8, !tbaa !9
  %5 = getelementptr inbounds %struct.param_info, ptr %4, i64 98, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !11
  %7 = lshr i32 %1, 1
  %8 = add i32 %7, %2
  %9 = udiv i32 %8, %1
  %10 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %11 = icmp eq ptr %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %3
  %13 = load i32, ptr @dump_flags, align 4, !tbaa !5
  %14 = and i32 %13, 8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %10, ptr noundef nonnull @.str.37, i32 noundef %9) #20
  br label %18

18:                                               ; preds = %16, %12, %3
  %19 = icmp eq ptr %0, null
  br i1 %19, label %64, label %20

20:                                               ; preds = %18
  %21 = zext i32 %1 to i64
  %22 = add nsw i64 %21, -1
  br label %23

23:                                               ; preds = %20, %58
  %24 = phi i8 [ 0, %20 ], [ %60, %58 ]
  %25 = phi ptr [ %0, %20 ], [ %62, %58 ]
  %26 = phi i32 [ %6, %20 ], [ %59, %58 ]
  %27 = getelementptr inbounds %struct.mem_ref_group, ptr %25, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !9
  %29 = icmp eq ptr %28, null
  br i1 %29, label %58, label %30

30:                                               ; preds = %23, %52
  %31 = phi ptr [ %56, %52 ], [ %28, %23 ]
  %32 = phi i8 [ %54, %52 ], [ %24, %23 ]
  %33 = phi i32 [ %53, %52 ], [ %26, %23 ]
  %34 = tail call fastcc zeroext i8 @should_issue_prefetch_p(ptr noundef nonnull %31) #20, !range !19
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %52, label %36

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.mem_ref, ptr %31, i64 0, i32 4
  %38 = load i64, ptr %37, align 8, !tbaa !76
  %39 = add i64 %22, %38
  %40 = udiv i64 %39, %38
  %41 = trunc i64 %40 to i32
  %42 = mul i32 %9, %41
  %43 = shl i32 %33, 1
  %44 = icmp ult i32 %43, %42
  br i1 %44, label %52, label %45

45:                                               ; preds = %36
  %46 = getelementptr inbounds %struct.mem_ref, ptr %31, i64 0, i32 8
  %47 = load i8, ptr %46, align 8
  %48 = or i8 %47, 4
  store i8 %48, ptr %46, align 8
  %49 = icmp ugt i32 %33, %42
  br i1 %49, label %50, label %64

50:                                               ; preds = %45
  %51 = sub i32 %33, %42
  br label %52

52:                                               ; preds = %36, %30, %50
  %53 = phi i32 [ %33, %36 ], [ %51, %50 ], [ %33, %30 ]
  %54 = phi i8 [ %32, %36 ], [ 1, %50 ], [ %32, %30 ]
  %55 = getelementptr inbounds %struct.mem_ref, ptr %31, i64 0, i32 7
  %56 = load ptr, ptr %55, align 8, !tbaa !9
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %30, !llvm.loop !81

58:                                               ; preds = %52, %23
  %59 = phi i32 [ %26, %23 ], [ %53, %52 ]
  %60 = phi i8 [ %24, %23 ], [ %54, %52 ]
  %61 = getelementptr inbounds %struct.mem_ref_group, ptr %25, i64 0, i32 3
  %62 = load ptr, ptr %61, align 8, !tbaa !48
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %23, !llvm.loop !82

64:                                               ; preds = %58, %45, %18
  %65 = phi i8 [ 0, %18 ], [ 1, %45 ], [ %60, %58 ]
  ret i8 %65
}

; Function Attrs: optsize
declare void @tree_unroll_loop(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @single_dom_exit(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @issue_prefetches(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %25, label %5

5:                                                ; preds = %3, %21
  %6 = phi ptr [ %23, %21 ], [ %0, %3 ]
  %7 = getelementptr inbounds %struct.mem_ref_group, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !9
  %9 = icmp eq ptr %8, null
  br i1 %9, label %21, label %10

10:                                               ; preds = %5, %17
  %11 = phi ptr [ %19, %17 ], [ %8, %5 ]
  %12 = getelementptr inbounds %struct.mem_ref, ptr %11, i64 0, i32 8
  %13 = load i8, ptr %12, align 8
  %14 = and i8 %13, 4
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %10
  tail call fastcc void @issue_prefetch_ref(ptr noundef nonnull %11, i32 noundef %1, i32 noundef %2) #20
  br label %17

17:                                               ; preds = %10, %16
  %18 = getelementptr inbounds %struct.mem_ref, ptr %11, i64 0, i32 7
  %19 = load ptr, ptr %18, align 8, !tbaa !9
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %10, !llvm.loop !83

21:                                               ; preds = %17, %5
  %22 = getelementptr inbounds %struct.mem_ref_group, ptr %6, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !48
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %5, !llvm.loop !84

25:                                               ; preds = %21, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @release_mem_refs(ptr noundef %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %17, label %3

3:                                                ; preds = %1, %15
  %4 = phi ptr [ %6, %15 ], [ %0, %1 ]
  %5 = getelementptr inbounds %struct.mem_ref_group, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = getelementptr inbounds %struct.mem_ref_group, ptr %4, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !85
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %3, %10
  %11 = phi ptr [ %13, %10 ], [ %8, %3 ]
  %12 = getelementptr inbounds %struct.mem_ref, ptr %11, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !86
  tail call void @free(ptr noundef nonnull %11) #20
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %10, !llvm.loop !87

15:                                               ; preds = %10, %3
  tail call void @free(ptr noundef %4) #20
  %16 = icmp eq ptr %6, null
  br i1 %16, label %17, label %3, !llvm.loop !88

17:                                               ; preds = %15, %1
  ret void
}

; Function Attrs: optsize
declare ptr @get_loop_body_in_dom_order(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #9 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #20
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #20
  store ptr %4, ptr %0, align 8, !tbaa !89
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !91
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !92
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #6 {
  %2 = load ptr, ptr %0, align 8, !tbaa !89
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #4 {
  %2 = load ptr, ptr %0, align 8, !tbaa !89
  %3 = load ptr, ptr %2, align 8, !tbaa !93
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vuse(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #20, !range !19
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !33
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_call(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !45
  %3 = icmp eq i32 %2, 8
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare i32 @gimple_call_flags(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_lhs(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #20
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs1(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #20
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @gather_memory_references_ref(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2, i8 noundef zeroext %3, ptr noundef %4) unnamed_addr #0 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store ptr %2, ptr %6, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #19
  %10 = tail call ptr @get_base_address(ptr noundef %2) #21
  %11 = icmp eq ptr %10, null
  br i1 %11, label %21, label %12

12:                                               ; preds = %5
  %13 = call fastcc zeroext i8 @analyze_ref(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef %4) #20
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %12
  %16 = load ptr, ptr %7, align 8, !tbaa !9
  %17 = load i64, ptr %8, align 8, !tbaa !95
  %18 = call fastcc ptr @find_or_create_group(ptr noundef %1, ptr noundef %16, i64 noundef %17) #20
  %19 = load ptr, ptr %6, align 8, !tbaa !9
  %20 = load i64, ptr %9, align 8, !tbaa !95
  call fastcc void @record_ref(ptr noundef %18, ptr noundef %4, ptr noundef %19, i64 noundef %20, i8 noundef zeroext %3) #20
  br label %21

21:                                               ; preds = %12, %5, %15
  %22 = phi i8 [ 1, %15 ], [ 0, %5 ], [ 0, %12 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #19
  ret i8 %22
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #9 {
  %2 = load ptr, ptr %0, align 8, !tbaa !89
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !96
  store ptr %4, ptr %0, align 8, !tbaa !89
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !97
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !33
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !98
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !100
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_mem_ops(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !45
  %3 = add nsw i32 %2, -6
  %4 = icmp ult i32 %3, 4
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #20, !range !19
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #20
  %7 = zext nneg i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !9
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !45
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #20
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !95
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.17, i32 noundef 1622, ptr noundef nonnull @.str.12) #21
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #20, !range !45
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #20
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #12 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !5
  ret i32 %4
}

; Function Attrs: optsize
declare ptr @get_base_address(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @analyze_ref(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 {
  %7 = alloca %struct.ar_data, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #19
  %8 = load ptr, ptr %1, align 8, !tbaa !9
  store i64 0, ptr %3, align 8, !tbaa !95
  store i64 0, ptr %4, align 8, !tbaa !95
  %9 = load i64, ptr %8, align 8
  %10 = and i64 %9, 65535
  %11 = icmp eq i64 %10, 41
  br i1 %11, label %12, label %22

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 1
  %14 = load ptr, ptr %13, align 8, !tbaa !33
  %15 = getelementptr inbounds %struct.tree_decl_common, ptr %14, i64 0, i32 2
  %16 = load i64, ptr %15, align 8
  %17 = and i64 %16, 67108864
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !33
  br label %22

22:                                               ; preds = %19, %12, %6
  %23 = phi ptr [ %21, %19 ], [ %8, %12 ], [ %8, %6 ]
  store ptr %23, ptr %1, align 8, !tbaa !9
  %24 = load i64, ptr %23, align 8
  %25 = and i64 %24, 65535
  %26 = icmp eq i64 %25, 41
  br i1 %26, label %27, label %49

27:                                               ; preds = %22, %41
  %28 = phi i64 [ %44, %41 ], [ 0, %22 ]
  %29 = phi ptr [ %45, %41 ], [ %23, %22 ]
  %30 = getelementptr inbounds %struct.tree_exp, ptr %29, i64 0, i32 3
  %31 = getelementptr inbounds %struct.tree_exp, ptr %29, i64 1
  %32 = load ptr, ptr %31, align 8, !tbaa !33
  %33 = getelementptr inbounds %struct.tree_field_decl, ptr %32, i64 0, i32 4
  %34 = load ptr, ptr %33, align 8, !tbaa !33
  %35 = getelementptr inbounds %struct.tree_int_cst, ptr %34, i64 0, i32 1
  %36 = load i64, ptr %35, align 8, !tbaa !33
  %37 = and i64 %36, 7
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %27
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 453, ptr noundef nonnull @.str.12) #21
  %40 = load i64, ptr %4, align 8, !tbaa !95
  br label %41

41:                                               ; preds = %27, %39
  %42 = phi i64 [ %28, %27 ], [ %40, %39 ]
  %43 = sdiv i64 %36, 8
  %44 = add nsw i64 %42, %43
  store i64 %44, ptr %4, align 8, !tbaa !95
  %45 = load ptr, ptr %30, align 8, !tbaa !33
  %46 = load i64, ptr %45, align 8
  %47 = and i64 %46, 65535
  %48 = icmp eq i64 %47, 41
  br i1 %48, label %27, label %49, !llvm.loop !102

49:                                               ; preds = %41, %22
  %50 = phi ptr [ %23, %22 ], [ %45, %41 ]
  %51 = tail call ptr @unshare_expr(ptr noundef nonnull %50) #21
  store ptr %51, ptr %2, align 8, !tbaa !9
  store ptr %0, ptr %7, align 8, !tbaa !103
  %52 = getelementptr inbounds %struct.ar_data, ptr %7, i64 0, i32 1
  store ptr %5, ptr %52, align 8, !tbaa !105
  %53 = getelementptr inbounds %struct.ar_data, ptr %7, i64 0, i32 2
  store ptr %3, ptr %53, align 8, !tbaa !106
  %54 = getelementptr inbounds %struct.ar_data, ptr %7, i64 0, i32 3
  store ptr %4, ptr %54, align 8, !tbaa !107
  %55 = call zeroext i8 @for_each_index(ptr noundef nonnull %2, ptr noundef nonnull @idx_analyze_ref, ptr noundef nonnull %7) #21
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #19
  ret i8 %55
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @find_or_create_group(ptr nocapture noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !9
  %5 = icmp eq ptr %4, null
  br i1 %5, label %28, label %10

6:                                                ; preds = %24
  %7 = getelementptr inbounds %struct.mem_ref_group, ptr %26, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !9
  %9 = icmp eq ptr %8, null
  br i1 %9, label %28, label %10, !llvm.loop !108

10:                                               ; preds = %3, %6
  %11 = phi ptr [ %8, %6 ], [ %4, %3 ]
  %12 = phi ptr [ %7, %6 ], [ %0, %3 ]
  %13 = getelementptr inbounds %struct.mem_ref_group, ptr %11, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !109
  %15 = icmp eq i64 %14, %2
  br i1 %15, label %16, label %24

16:                                               ; preds = %10
  %17 = load ptr, ptr %11, align 8, !tbaa !110
  %18 = tail call i32 @operand_equal_p(ptr noundef %17, ptr noundef %1, i32 noundef 0) #21
  %19 = icmp eq i32 %18, 0
  %20 = load ptr, ptr %12, align 8, !tbaa !9
  br i1 %19, label %21, label %35

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.mem_ref_group, ptr %20, i64 0, i32 1
  %23 = load i64, ptr %22, align 8, !tbaa !109
  br label %24

24:                                               ; preds = %21, %10
  %25 = phi i64 [ %23, %21 ], [ %14, %10 ]
  %26 = phi ptr [ %20, %21 ], [ %11, %10 ]
  %27 = icmp slt i64 %25, %2
  br i1 %27, label %28, label %6

28:                                               ; preds = %6, %24, %3
  %29 = phi ptr [ %0, %3 ], [ %12, %24 ], [ %7, %6 ]
  %30 = tail call ptr @xmalloc(i64 noundef 32) #21
  store ptr %1, ptr %30, align 8, !tbaa !110
  %31 = getelementptr inbounds %struct.mem_ref_group, ptr %30, i64 0, i32 1
  store i64 %2, ptr %31, align 8, !tbaa !109
  %32 = getelementptr inbounds %struct.mem_ref_group, ptr %30, i64 0, i32 2
  store ptr null, ptr %32, align 8, !tbaa !85
  %33 = load ptr, ptr %29, align 8, !tbaa !9
  %34 = getelementptr inbounds %struct.mem_ref_group, ptr %30, i64 0, i32 3
  store ptr %33, ptr %34, align 8, !tbaa !48
  store ptr %30, ptr %29, align 8, !tbaa !9
  br label %35

35:                                               ; preds = %16, %28
  %36 = phi ptr [ %30, %28 ], [ %20, %16 ]
  ret ptr %36
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @record_ref(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i8 noundef zeroext %4) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.mem_ref_group, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !9
  %8 = icmp eq ptr %7, null
  br i1 %8, label %28, label %9

9:                                                ; preds = %5
  %10 = icmp eq i8 %4, 0
  br label %11

11:                                               ; preds = %9, %22
  %12 = phi ptr [ %7, %9 ], [ %24, %22 ]
  br i1 %10, label %13, label %18

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.mem_ref, ptr %12, i64 0, i32 8
  %15 = load i8, ptr %14, align 8
  %16 = and i8 %15, 1
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %13, %11
  %19 = getelementptr inbounds %struct.mem_ref, ptr %12, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !111
  %21 = icmp eq i64 %20, %3
  br i1 %21, label %67, label %22

22:                                               ; preds = %18, %13
  %23 = getelementptr inbounds %struct.mem_ref, ptr %12, i64 0, i32 7
  %24 = load ptr, ptr %23, align 8, !tbaa !9
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %11, !llvm.loop !112

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.mem_ref, ptr %12, i64 0, i32 7
  br label %28

28:                                               ; preds = %26, %5
  %29 = phi ptr [ %6, %5 ], [ %27, %26 ]
  %30 = tail call ptr @xmalloc(i64 noundef 72) #21
  store ptr %30, ptr %29, align 8, !tbaa !9
  store ptr %1, ptr %30, align 8, !tbaa !56
  %31 = load ptr, ptr %29, align 8, !tbaa !9
  %32 = getelementptr inbounds %struct.mem_ref, ptr %31, i64 0, i32 1
  store ptr %2, ptr %32, align 8, !tbaa !54
  %33 = load ptr, ptr %29, align 8, !tbaa !9
  %34 = getelementptr inbounds %struct.mem_ref, ptr %33, i64 0, i32 2
  store i64 %3, ptr %34, align 8, !tbaa !111
  %35 = getelementptr inbounds %struct.mem_ref, ptr %33, i64 0, i32 8
  %36 = load i8, ptr %35, align 8
  %37 = and i8 %4, 1
  %38 = and i8 %36, -2
  %39 = or disjoint i8 %38, %37
  store i8 %39, ptr %35, align 8
  %40 = load ptr, ptr %29, align 8, !tbaa !9
  %41 = getelementptr inbounds %struct.mem_ref, ptr %40, i64 0, i32 5
  store i64 -1, ptr %41, align 8, !tbaa !113
  %42 = getelementptr inbounds %struct.mem_ref, ptr %40, i64 0, i32 4
  store i64 1, ptr %42, align 8, !tbaa !76
  %43 = getelementptr inbounds %struct.mem_ref, ptr %40, i64 0, i32 6
  store i32 0, ptr %43, align 8, !tbaa !57
  %44 = getelementptr inbounds %struct.mem_ref, ptr %40, i64 0, i32 8
  %45 = load i8, ptr %44, align 8
  %46 = and i8 %45, -5
  store i8 %46, ptr %44, align 8
  %47 = load ptr, ptr %29, align 8, !tbaa !9
  %48 = getelementptr inbounds %struct.mem_ref, ptr %47, i64 0, i32 3
  store ptr %0, ptr %48, align 8, !tbaa !114
  %49 = load ptr, ptr %29, align 8, !tbaa !9
  %50 = getelementptr inbounds %struct.mem_ref, ptr %49, i64 0, i32 7
  store ptr null, ptr %50, align 8, !tbaa !86
  %51 = load ptr, ptr %29, align 8, !tbaa !9
  %52 = getelementptr inbounds %struct.mem_ref, ptr %51, i64 0, i32 8
  %53 = load i8, ptr %52, align 8
  %54 = and i8 %53, -3
  store i8 %54, ptr %52, align 8
  %55 = load ptr, ptr %29, align 8, !tbaa !9
  %56 = getelementptr inbounds %struct.mem_ref, ptr %55, i64 0, i32 8
  %57 = load i8, ptr %56, align 8
  %58 = and i8 %57, -9
  store i8 %58, ptr %56, align 8
  %59 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %60 = icmp eq ptr %59, null
  br i1 %60, label %67, label %61

61:                                               ; preds = %28
  %62 = load i32, ptr @dump_flags, align 4, !tbaa !5
  %63 = and i32 %62, 8
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %61
  %66 = load ptr, ptr %29, align 8, !tbaa !9
  tail call fastcc void @dump_mem_ref(ptr noundef nonnull %59, ptr noundef %66) #20
  br label %67

67:                                               ; preds = %18, %28, %61, %65
  ret void
}

; Function Attrs: optsize
declare ptr @unshare_expr(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @for_each_index(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef zeroext i8 @idx_analyze_ref(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.affine_iv, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #19
  %5 = load i64, ptr %0, align 8
  %6 = and i64 %5, 65534
  %7 = icmp eq i64 %6, 48
  br i1 %7, label %73, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr %2, align 8, !tbaa !103
  %10 = getelementptr inbounds %struct.ar_data, ptr %2, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !105
  %12 = tail call fastcc ptr @loop_containing_stmt(ptr noundef %11) #20
  %13 = load ptr, ptr %1, align 8, !tbaa !9
  %14 = call zeroext i8 @simple_iv(ptr noundef %9, ptr noundef %12, ptr noundef %13, ptr noundef nonnull %4, i8 noundef zeroext 0) #21
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %73, label %16

16:                                               ; preds = %8
  %17 = load ptr, ptr %4, align 8, !tbaa !115
  %18 = getelementptr inbounds %struct.affine_iv, ptr %4, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !117
  %20 = call zeroext i8 @cst_and_fits_in_hwi(ptr noundef %19) #21
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %73, label %22

22:                                               ; preds = %16
  %23 = call i64 @int_cst_value(ptr noundef %19) #21
  %24 = load i64, ptr %17, align 8
  %25 = and i64 %24, 65535
  %26 = icmp eq i64 %25, 66
  br i1 %26, label %27, label %37

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.tree_exp, ptr %17, i64 1
  %29 = load ptr, ptr %28, align 8, !tbaa !33
  %30 = call zeroext i8 @cst_and_fits_in_hwi(ptr noundef %29) #21
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.tree_exp, ptr %17, i64 0, i32 3
  %34 = load ptr, ptr %28, align 8, !tbaa !33
  %35 = call i64 @int_cst_value(ptr noundef %34) #21
  %36 = load ptr, ptr %33, align 8, !tbaa !33
  br label %37

37:                                               ; preds = %32, %27, %22
  %38 = phi ptr [ %36, %32 ], [ %17, %27 ], [ %17, %22 ]
  %39 = phi i64 [ %35, %32 ], [ 0, %27 ], [ 0, %22 ]
  %40 = call zeroext i8 @cst_and_fits_in_hwi(ptr noundef %38) #21
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %37
  %43 = call i64 @int_cst_value(ptr noundef %38) #21
  %44 = add nsw i64 %43, %39
  %45 = getelementptr inbounds %struct.tree_common, ptr %38, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !33
  %47 = call ptr @build_int_cst(ptr noundef %46, i64 noundef 0) #21
  br label %48

48:                                               ; preds = %42, %37
  %49 = phi ptr [ %47, %42 ], [ %38, %37 ]
  %50 = phi i64 [ %44, %42 ], [ %39, %37 ]
  %51 = load i64, ptr %0, align 8
  %52 = and i64 %51, 65535
  %53 = icmp eq i64 %52, 45
  br i1 %53, label %54, label %62

54:                                               ; preds = %48
  %55 = call ptr @array_ref_element_size(ptr noundef nonnull %0) #21
  %56 = call zeroext i8 @cst_and_fits_in_hwi(ptr noundef %55) #21
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %73, label %58

58:                                               ; preds = %54
  %59 = call i64 @int_cst_value(ptr noundef %55) #21
  %60 = mul nsw i64 %59, %23
  %61 = mul nsw i64 %59, %50
  br label %62

62:                                               ; preds = %58, %48
  %63 = phi i64 [ %60, %58 ], [ %23, %48 ]
  %64 = phi i64 [ %61, %58 ], [ %50, %48 ]
  %65 = getelementptr inbounds %struct.ar_data, ptr %2, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !106
  %67 = load i64, ptr %66, align 8, !tbaa !95
  %68 = add nsw i64 %67, %63
  store i64 %68, ptr %66, align 8, !tbaa !95
  %69 = getelementptr inbounds %struct.ar_data, ptr %2, i64 0, i32 3
  %70 = load ptr, ptr %69, align 8, !tbaa !107
  %71 = load i64, ptr %70, align 8, !tbaa !95
  %72 = add nsw i64 %71, %64
  store i64 %72, ptr %70, align 8, !tbaa !95
  store ptr %49, ptr %1, align 8, !tbaa !9
  br label %73

73:                                               ; preds = %3, %54, %16, %8, %62
  %74 = phi i8 [ 1, %62 ], [ 0, %3 ], [ 0, %8 ], [ 0, %16 ], [ 0, %54 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #19
  ret i8 %74
}

; Function Attrs: optsize
declare zeroext i8 @simple_iv(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @loop_containing_stmt(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = tail call fastcc ptr @gimple_bb(ptr noundef %0) #20
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !43
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: optsize
declare zeroext i8 @cst_and_fits_in_hwi(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i64 @int_cst_value(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @build_int_cst(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @array_ref_element_size(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bb(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !33
  ret ptr %3
}

; Function Attrs: optsize
declare i32 @operand_equal_p(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dump_mem_ref(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.18, ptr noundef %1) #20
  %4 = getelementptr inbounds %struct.mem_ref, ptr %1, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !114
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.19, ptr noundef %5) #20
  %7 = load ptr, ptr %4, align 8, !tbaa !114
  %8 = load ptr, ptr %7, align 8, !tbaa !110
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %8, i32 noundef 2) #21
  %9 = tail call i64 @fwrite(ptr nonnull @.str.20, i64 7, i64 1, ptr %0)
  %10 = load ptr, ptr %4, align 8, !tbaa !114
  %11 = getelementptr inbounds %struct.mem_ref_group, ptr %10, i64 0, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !109
  %13 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.21, i64 noundef %12) #20
  %14 = tail call i64 @fwrite(ptr nonnull @.str.22, i64 2, i64 1, ptr %0)
  %15 = tail call i64 @fwrite(ptr nonnull @.str.23, i64 8, i64 1, ptr %0)
  %16 = getelementptr inbounds %struct.mem_ref, ptr %1, i64 0, i32 2
  %17 = load i64, ptr %16, align 8, !tbaa !111
  %18 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.21, i64 noundef %17) #20
  %19 = tail call i32 @fputc(i32 10, ptr %0)
  %20 = getelementptr inbounds %struct.mem_ref, ptr %1, i64 0, i32 8
  %21 = load i8, ptr %20, align 8
  %22 = and i8 %21, 1
  %23 = icmp eq i8 %22, 0
  %24 = select i1 %23, ptr @.str.26, ptr @.str.25
  %25 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.24, ptr noundef nonnull %24) #20
  %26 = tail call i32 @fputc(i32 10, ptr %0)
  ret void
}

; Function Attrs: optsize
declare void @print_generic_expr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @prune_group_by_reuse(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.mem_ref_group, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !9
  %4 = icmp eq ptr %3, null
  br i1 %4, label %58, label %5

5:                                                ; preds = %1, %54
  %6 = phi ptr [ %56, %54 ], [ %3, %1 ]
  %7 = load ptr, ptr %2, align 8, !tbaa !85
  tail call fastcc void @prune_ref_by_reuse(ptr noundef nonnull %6, ptr noundef %7) #20
  %8 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %9 = icmp eq ptr %8, null
  br i1 %9, label %54, label %10

10:                                               ; preds = %5
  %11 = load i32, ptr @dump_flags, align 4, !tbaa !5
  %12 = and i32 %11, 8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %54, label %14

14:                                               ; preds = %10
  %15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %8, ptr noundef nonnull @.str.27, ptr noundef nonnull %6) #20
  %16 = getelementptr inbounds %struct.mem_ref, ptr %6, i64 0, i32 5
  %17 = load i64, ptr %16, align 8, !tbaa !113
  switch i64 %17, label %27 [
    i64 -1, label %18
    i64 0, label %24
  ]

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.mem_ref, ptr %6, i64 0, i32 4
  %20 = load i64, ptr %19, align 8, !tbaa !76
  switch i64 %20, label %41 [
    i64 1, label %21
    i64 -1, label %31
  ]

21:                                               ; preds = %18
  %22 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %23 = tail call i64 @fwrite(ptr nonnull @.str.28, i64 16, i64 1, ptr %22)
  br label %51

24:                                               ; preds = %14
  %25 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %26 = tail call i64 @fwrite(ptr nonnull @.str.29, i64 16, i64 1, ptr %25)
  br label %51

27:                                               ; preds = %14
  %28 = getelementptr inbounds %struct.mem_ref, ptr %6, i64 0, i32 4
  %29 = load i64, ptr %28, align 8, !tbaa !76
  %30 = icmp ugt i64 %17, %29
  br i1 %30, label %34, label %31

31:                                               ; preds = %18, %27
  %32 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %33 = tail call i64 @fwrite(ptr nonnull @.str.30, i64 14, i64 1, ptr %32)
  br label %51

34:                                               ; preds = %27
  %35 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %36 = tail call i64 @fwrite(ptr nonnull @.str.31, i64 17, i64 1, ptr %35)
  %37 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %38 = load i64, ptr %16, align 8, !tbaa !113
  %39 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %37, ptr noundef nonnull @.str.21, i64 noundef %38) #20
  %40 = load i64, ptr %28, align 8, !tbaa !76
  br label %41

41:                                               ; preds = %18, %34
  %42 = phi i64 [ %40, %34 ], [ %20, %18 ]
  %43 = phi ptr [ %28, %34 ], [ %19, %18 ]
  %44 = icmp eq i64 %42, 1
  br i1 %44, label %51, label %45

45:                                               ; preds = %41
  %46 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %47 = tail call i64 @fwrite(ptr nonnull @.str.32, i64 14, i64 1, ptr %46)
  %48 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %49 = load i64, ptr %43, align 8, !tbaa !76
  %50 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %48, ptr noundef nonnull @.str.21, i64 noundef %49) #20
  br label %51

51:                                               ; preds = %24, %41, %45, %31, %21
  %52 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %53 = tail call i32 @fputc(i32 10, ptr %52)
  br label %54

54:                                               ; preds = %5, %10, %51
  %55 = getelementptr inbounds %struct.mem_ref, ptr %6, i64 0, i32 7
  %56 = load ptr, ptr %55, align 8, !tbaa !9
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %5, !llvm.loop !118

58:                                               ; preds = %54, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @prune_ref_by_reuse(ptr noundef %0, ptr noundef readonly %1) unnamed_addr #0 {
  tail call fastcc void @prune_ref_by_self_reuse(ptr noundef %0) #20
  %3 = icmp eq ptr %1, null
  br i1 %3, label %25, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.mem_ref, ptr %0, i64 0, i32 8
  br label %6

6:                                                ; preds = %4, %20
  %7 = phi i8 [ 1, %4 ], [ %21, %20 ]
  %8 = phi ptr [ %1, %4 ], [ %23, %20 ]
  %9 = icmp eq ptr %8, %0
  br i1 %9, label %20, label %10

10:                                               ; preds = %6
  %11 = load i8, ptr %5, align 8
  %12 = and i8 %11, 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.mem_ref, ptr %8, i64 0, i32 8
  %16 = load i8, ptr %15, align 8
  %17 = and i8 %16, 1
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14, %10
  tail call fastcc void @prune_ref_by_group_reuse(ptr noundef nonnull %0, ptr noundef nonnull %8, i8 noundef zeroext %7) #20
  br label %20

20:                                               ; preds = %6, %14, %19
  %21 = phi i8 [ %7, %19 ], [ %7, %14 ], [ 0, %6 ]
  %22 = getelementptr inbounds %struct.mem_ref, ptr %8, i64 0, i32 7
  %23 = load ptr, ptr %22, align 8, !tbaa !86
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %6, !llvm.loop !119

25:                                               ; preds = %20, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @prune_ref_by_self_reuse(ptr nocapture noundef %0) unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.mem_ref, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !114
  %4 = getelementptr inbounds %struct.mem_ref_group, ptr %3, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !109
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.mem_ref, ptr %0, i64 0, i32 5
  store i64 1, ptr %8, align 8, !tbaa !113
  br label %21

9:                                                ; preds = %1
  %10 = tail call i64 @llvm.abs.i64(i64 %5, i1 true)
  %11 = load ptr, ptr @compiler_params, align 8, !tbaa !9
  %12 = getelementptr inbounds %struct.param_info, ptr %11, i64 100, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !11
  %14 = sext i32 %13 to i64
  %15 = icmp sgt i64 %10, %14
  br i1 %15, label %21, label %16

16:                                               ; preds = %9
  %17 = trunc i64 %10 to i32
  %18 = udiv i32 %13, %17
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.mem_ref, ptr %0, i64 0, i32 4
  store i64 %19, ptr %20, align 8, !tbaa !76
  br label %21

21:                                               ; preds = %9, %16, %7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @prune_ref_by_group_reuse(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.mem_ref, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !114
  %6 = getelementptr inbounds %struct.mem_ref_group, ptr %5, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !109
  %8 = getelementptr inbounds %struct.mem_ref, ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !111
  %10 = getelementptr inbounds %struct.mem_ref, ptr %1, i64 0, i32 2
  %11 = load i64, ptr %10, align 8, !tbaa !111
  %12 = sub nsw i64 %11, %9
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = icmp eq i8 %2, 0
  br i1 %15, label %122, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.mem_ref, ptr %0, i64 0, i32 5
  store i64 0, ptr %17, align 8, !tbaa !113
  br label %122

18:                                               ; preds = %3
  %19 = icmp eq i64 %7, 0
  br i1 %19, label %20, label %37

20:                                               ; preds = %18
  %21 = icmp eq i8 %2, 0
  br i1 %21, label %122, label %22

22:                                               ; preds = %20
  %23 = load ptr, ptr @compiler_params, align 8, !tbaa !9
  %24 = getelementptr inbounds %struct.param_info, ptr %23, i64 100, i32 1
  %25 = load i32, ptr %24, align 8, !tbaa !11
  %26 = sext i32 %25 to i64
  %27 = tail call fastcc i64 @ddown(i64 noundef %9, i64 noundef %26) #20
  %28 = load i64, ptr %10, align 8, !tbaa !111
  %29 = load ptr, ptr @compiler_params, align 8, !tbaa !9
  %30 = getelementptr inbounds %struct.param_info, ptr %29, i64 100, i32 1
  %31 = load i32, ptr %30, align 8, !tbaa !11
  %32 = sext i32 %31 to i64
  %33 = tail call fastcc i64 @ddown(i64 noundef %28, i64 noundef %32) #20
  %34 = icmp eq i64 %27, %33
  br i1 %34, label %35, label %122

35:                                               ; preds = %22
  %36 = getelementptr inbounds %struct.mem_ref, ptr %0, i64 0, i32 5
  store i64 0, ptr %36, align 8, !tbaa !113
  br label %122

37:                                               ; preds = %18
  %38 = icmp sgt i64 %7, -1
  br i1 %38, label %51, label %39

39:                                               ; preds = %37
  %40 = icmp sgt i64 %12, 0
  br i1 %40, label %122, label %41

41:                                               ; preds = %39
  %42 = sub nsw i64 0, %12
  %43 = sub nsw i64 0, %7
  %44 = load ptr, ptr @compiler_params, align 8, !tbaa !9
  %45 = getelementptr inbounds %struct.param_info, ptr %44, i64 100, i32 1
  %46 = load i32, ptr %45, align 8, !tbaa !11
  %47 = add nsw i32 %46, -1
  %48 = sext i32 %47 to i64
  %49 = sub nsw i64 %48, %9
  %50 = sub nsw i64 %48, %11
  br label %57

51:                                               ; preds = %37
  %52 = icmp slt i64 %12, 0
  br i1 %52, label %122, label %53

53:                                               ; preds = %51
  %54 = load ptr, ptr @compiler_params, align 8, !tbaa !9
  %55 = getelementptr inbounds %struct.param_info, ptr %54, i64 100, i32 1
  %56 = load i32, ptr %55, align 8, !tbaa !11
  br label %57

57:                                               ; preds = %53, %41
  %58 = phi i32 [ %46, %41 ], [ %56, %53 ]
  %59 = phi i64 [ %42, %41 ], [ %12, %53 ]
  %60 = phi i64 [ %50, %41 ], [ %11, %53 ]
  %61 = phi i64 [ %49, %41 ], [ %9, %53 ]
  %62 = phi i64 [ %43, %41 ], [ %7, %53 ]
  %63 = sext i32 %58 to i64
  %64 = icmp sgt i64 %62, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %57
  %66 = and i64 %62, 1
  %67 = icmp eq i64 %66, 0
  %68 = icmp ugt i32 %58, 1
  %69 = and i1 %67, %68
  br i1 %69, label %85, label %94

70:                                               ; preds = %57
  %71 = tail call fastcc i64 @ddown(i64 noundef %60, i64 noundef %63) #20
  %72 = load ptr, ptr @compiler_params, align 8, !tbaa !9
  %73 = getelementptr inbounds %struct.param_info, ptr %72, i64 100, i32 1
  %74 = load i32, ptr %73, align 8, !tbaa !11
  %75 = sext i32 %74 to i64
  %76 = mul nsw i64 %71, %75
  %77 = xor i64 %61, -1
  %78 = add i64 %62, %77
  %79 = add i64 %78, %76
  %80 = sdiv i64 %79, %62
  %81 = getelementptr inbounds %struct.mem_ref, ptr %0, i64 0, i32 5
  %82 = load i64, ptr %81, align 8, !tbaa !113
  %83 = icmp ult i64 %80, %82
  br i1 %83, label %84, label %122

84:                                               ; preds = %70
  store i64 %80, ptr %81, align 8, !tbaa !113
  br label %122

85:                                               ; preds = %65, %85
  %86 = phi i64 [ %89, %85 ], [ %63, %65 ]
  %87 = phi i64 [ %88, %85 ], [ %62, %65 ]
  %88 = ashr i64 %87, 1
  %89 = lshr i64 %86, 1
  %90 = and i64 %87, 2
  %91 = icmp eq i64 %90, 0
  %92 = icmp ugt i64 %86, 3
  %93 = select i1 %91, i1 %92, i1 false
  br i1 %93, label %85, label %94, !llvm.loop !120

94:                                               ; preds = %85, %65
  %95 = phi i64 [ %63, %65 ], [ %89, %85 ]
  %96 = sdiv i64 %59, %62
  %97 = srem i64 %59, %62
  %98 = getelementptr inbounds %struct.mem_ref, ptr %0, i64 0, i32 1
  %99 = load ptr, ptr %98, align 8, !tbaa !54
  %100 = getelementptr inbounds %struct.tree_common, ptr %99, i64 0, i32 2
  %101 = load ptr, ptr %100, align 8, !tbaa !33
  %102 = getelementptr inbounds %struct.tree_type, ptr %101, i64 0, i32 7
  %103 = load i32, ptr %102, align 8, !tbaa !33
  %104 = lshr i32 %103, 3
  %105 = tail call fastcc i32 @compute_miss_rate(i64 noundef %63, i64 noundef %62, i64 noundef %97, i64 noundef %95, i32 noundef %104) #20
  %106 = icmp slt i32 %105, 51
  br i1 %106, label %107, label %112

107:                                              ; preds = %94
  %108 = getelementptr inbounds %struct.mem_ref, ptr %0, i64 0, i32 5
  %109 = load i64, ptr %108, align 8, !tbaa !113
  %110 = icmp ult i64 %96, %109
  br i1 %110, label %111, label %122

111:                                              ; preds = %107
  store i64 %96, ptr %108, align 8, !tbaa !113
  br label %122

112:                                              ; preds = %94
  %113 = add i64 %96, 1
  %114 = sub nsw i64 %62, %97
  %115 = tail call fastcc i32 @compute_miss_rate(i64 noundef %63, i64 noundef %62, i64 noundef %114, i64 noundef %95, i32 noundef %104) #20
  %116 = icmp slt i32 %115, 51
  br i1 %116, label %117, label %122

117:                                              ; preds = %112
  %118 = getelementptr inbounds %struct.mem_ref, ptr %0, i64 0, i32 5
  %119 = load i64, ptr %118, align 8, !tbaa !113
  %120 = icmp ult i64 %113, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %117
  store i64 %113, ptr %118, align 8, !tbaa !113
  br label %122

122:                                              ; preds = %112, %117, %121, %107, %111, %70, %84, %51, %39, %22, %20, %14, %16, %35
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i64 @ddown(i64 noundef %0, i64 noundef %1) unnamed_addr #0 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 588, ptr noundef nonnull @.str.12) #21
  br label %5

5:                                                ; preds = %2, %4
  %6 = add i64 %0, -1
  %7 = add i64 %6, %1
  %8 = icmp slt i64 %0, 0
  %9 = select i1 %8, i64 %7, i64 %0
  %10 = udiv i64 %9, %1
  ret i64 %10
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(none) uwtable
define internal fastcc i32 @compute_miss_rate(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i32 noundef %4) unnamed_addr #13 {
  %6 = icmp eq i64 %0, 0
  br i1 %6, label %44, label %7

7:                                                ; preds = %5
  %8 = icmp eq i64 %3, 0
  %9 = trunc i64 %1 to i32
  %10 = trunc i64 %2 to i32
  br label %11

11:                                               ; preds = %7, %35
  %12 = phi i32 [ 0, %7 ], [ %38, %35 ]
  %13 = phi i32 [ 0, %7 ], [ %37, %35 ]
  %14 = phi i32 [ 0, %7 ], [ %36, %35 ]
  br i1 %8, label %35, label %15

15:                                               ; preds = %11, %15
  %16 = phi i32 [ %32, %15 ], [ 0, %11 ]
  %17 = phi i32 [ %28, %15 ], [ %13, %11 ]
  %18 = phi i32 [ %31, %15 ], [ %14, %11 ]
  %19 = mul i32 %16, %9
  %20 = add i32 %19, %12
  %21 = sext i32 %20 to i64
  %22 = add i32 %20, %10
  %23 = udiv i64 %21, %0
  %24 = trunc i64 %23 to i32
  %25 = sext i32 %22 to i64
  %26 = udiv i64 %25, %0
  %27 = trunc i64 %26 to i32
  %28 = add nsw i32 %17, 1
  %29 = icmp ne i32 %24, %27
  %30 = zext i1 %29 to i32
  %31 = add nsw i32 %18, %30
  %32 = add i32 %16, 1
  %33 = zext i32 %32 to i64
  %34 = icmp ult i64 %33, %3
  br i1 %34, label %15, label %35, !llvm.loop !121

35:                                               ; preds = %15, %11
  %36 = phi i32 [ %14, %11 ], [ %31, %15 ]
  %37 = phi i32 [ %13, %11 ], [ %28, %15 ]
  %38 = add i32 %12, %4
  %39 = zext i32 %38 to i64
  %40 = icmp ult i64 %39, %0
  br i1 %40, label %11, label %41, !llvm.loop !122

41:                                               ; preds = %35
  %42 = mul nsw i32 %36, 1000
  %43 = sdiv i32 %42, %37
  br label %44

44:                                               ; preds = %41, %5
  %45 = phi i32 [ poison, %5 ], [ %43, %41 ]
  ret i32 %45
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @should_issue_prefetch_p(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.mem_ref, ptr %0, i64 0, i32 5
  %3 = load i64, ptr %2, align 8, !tbaa !113
  %4 = icmp eq i64 %3, -1
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.mem_ref, ptr %0, i64 0, i32 8
  %7 = load i8, ptr %6, align 8
  %8 = lshr i8 %7, 3
  %9 = and i8 %8, 1
  %10 = xor i8 %9, 1
  br label %11

11:                                               ; preds = %5, %1
  %12 = phi i8 [ 0, %1 ], [ %10, %5 ]
  ret i8 %12
}

; Function Attrs: optsize
declare zeroext i8 @find_loop_nest(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @volume_of_references(ptr noundef readonly %0) unnamed_addr #7 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %36, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr @compiler_params, align 8
  %5 = getelementptr inbounds %struct.param_info, ptr %4, i64 100, i32 1
  br label %6

6:                                                ; preds = %3, %31
  %7 = phi ptr [ %0, %3 ], [ %34, %31 ]
  %8 = phi i32 [ 0, %3 ], [ %32, %31 ]
  %9 = getelementptr inbounds %struct.mem_ref_group, ptr %7, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !9
  %11 = icmp eq ptr %10, null
  br i1 %11, label %31, label %12

12:                                               ; preds = %6, %26
  %13 = phi ptr [ %29, %26 ], [ %10, %6 ]
  %14 = phi i32 [ %27, %26 ], [ %8, %6 ]
  %15 = getelementptr inbounds %struct.mem_ref, ptr %13, i64 0, i32 5
  %16 = load i64, ptr %15, align 8, !tbaa !113
  %17 = icmp eq i64 %16, -1
  br i1 %17, label %18, label %26

18:                                               ; preds = %12
  %19 = load i32, ptr %5, align 8, !tbaa !11
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.mem_ref, ptr %13, i64 0, i32 4
  %22 = load i64, ptr %21, align 8, !tbaa !76
  %23 = udiv i64 %20, %22
  %24 = trunc i64 %23 to i32
  %25 = add i32 %14, %24
  br label %26

26:                                               ; preds = %12, %18
  %27 = phi i32 [ %14, %12 ], [ %25, %18 ]
  %28 = getelementptr inbounds %struct.mem_ref, ptr %13, i64 0, i32 7
  %29 = load ptr, ptr %28, align 8, !tbaa !9
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %12, !llvm.loop !123

31:                                               ; preds = %26, %6
  %32 = phi i32 [ %8, %6 ], [ %27, %26 ]
  %33 = getelementptr inbounds %struct.mem_ref_group, ptr %7, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !48
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %6, !llvm.loop !124

36:                                               ; preds = %31, %1
  %37 = phi i32 [ 0, %1 ], [ %32, %31 ]
  ret i32 %37
}

; Function Attrs: optsize
declare i32 @expected_loop_iterations(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @create_data_ref(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_data_reference_p_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call fastcc void @VEC_data_reference_p_heap_reserve(ptr noundef %0) #20
  %3 = load ptr, ptr %0, align 8, !tbaa !9
  tail call fastcc void @VEC_data_reference_p_base_quick_push(ptr noundef %3, ptr noundef %1) #20
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_data_reference_p_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #5 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !125
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_data_reference_p_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !9
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !9
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @self_reuse_distance(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #0 {
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  %6 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !127
  %8 = zext i32 %2 to i64
  %9 = tail call ptr @xcalloc(i64 noundef %8, i64 noundef 8) #21
  %10 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 5, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !128
  %12 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %11, i32 noundef 0, ptr noundef nonnull %5) #20, !range !34
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %4, %60
  %15 = phi i32 [ %65, %60 ], [ 0, %4 ]
  %16 = phi ptr [ %61, %60 ], [ %7, %4 ]
  %17 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %16) #20, !range !19
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %37, label %27

19:                                               ; preds = %60, %4
  %20 = icmp eq i32 %2, 0
  br i1 %20, label %84, label %21

21:                                               ; preds = %19
  %22 = load ptr, ptr @compiler_params, align 8, !tbaa !9
  %23 = getelementptr inbounds %struct.param_info, ptr %22, i64 100, i32 1
  %24 = load i32, ptr %23, align 8, !tbaa !11
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.param_info, ptr %22, i64 99, i32 1
  br label %68

27:                                               ; preds = %14, %32
  %28 = phi ptr [ %34, %32 ], [ %16, %14 ]
  %29 = load i64, ptr %28, align 8
  %30 = and i64 %29, 65535
  %31 = icmp eq i64 %30, 45
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.tree_exp, ptr %28, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !33
  %35 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %34) #20, !range !19
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %27, !llvm.loop !129

37:                                               ; preds = %27, %32, %14
  %38 = phi ptr [ %16, %14 ], [ %34, %32 ], [ %28, %27 ]
  %39 = load i64, ptr %38, align 8
  %40 = and i64 %39, 65535
  %41 = icmp eq i64 %40, 45
  br i1 %41, label %42, label %60

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.tree_common, ptr %38, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !33
  %45 = getelementptr inbounds %struct.tree_type, ptr %44, i64 0, i32 3
  %46 = load ptr, ptr %45, align 8, !tbaa !33
  %47 = tail call i32 @host_integerp(ptr noundef %46, i32 noundef 1) #21
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %42
  %50 = tail call i64 @tree_low_cst(ptr noundef %46, i32 noundef 1) #21
  br label %56

51:                                               ; preds = %42
  %52 = load ptr, ptr @compiler_params, align 8, !tbaa !9
  %53 = getelementptr inbounds %struct.param_info, ptr %52, i64 100, i32 1
  %54 = load i32, ptr %53, align 8, !tbaa !11
  %55 = zext i32 %54 to i64
  br label %56

56:                                               ; preds = %51, %49
  %57 = phi i64 [ %50, %49 ], [ %55, %51 ]
  %58 = getelementptr inbounds %struct.tree_exp, ptr %38, i64 0, i32 3
  %59 = load ptr, ptr %58, align 8, !tbaa !33
  br label %60

60:                                               ; preds = %37, %56
  %61 = phi ptr [ %59, %56 ], [ %38, %37 ]
  %62 = phi i64 [ %57, %56 ], [ 1, %37 ]
  %63 = load ptr, ptr %5, align 8, !tbaa !9
  %64 = trunc i64 %62 to i32
  tail call fastcc void @add_subscript_strides(ptr noundef %63, i32 noundef %64, ptr noundef %9, i32 noundef %2, ptr noundef %3) #20
  %65 = add i32 %15, 1
  %66 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %11, i32 noundef %65, ptr noundef nonnull %5) #20, !range !34
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %19, label %14, !llvm.loop !130

68:                                               ; preds = %21, %82
  %69 = phi i64 [ %8, %21 ], [ %70, %82 ]
  %70 = add nsw i64 %69, -1
  %71 = getelementptr inbounds i64, ptr %9, i64 %70
  %72 = load i64, ptr %71, align 8, !tbaa !95
  %73 = tail call i64 @llvm.abs.i64(i64 %72, i1 true)
  %74 = icmp ult i64 %73, %25
  br i1 %74, label %75, label %82

75:                                               ; preds = %68
  %76 = getelementptr inbounds i32, ptr %1, i64 %70
  %77 = load i32, ptr %76, align 4, !tbaa !5
  %78 = load i32, ptr %26, align 8, !tbaa !11
  %79 = shl i32 %78, 6
  %80 = and i32 %79, 268435392
  %81 = icmp ugt i32 %77, %80
  br i1 %81, label %84, label %82

82:                                               ; preds = %68, %75
  %83 = icmp eq i64 %70, 0
  br i1 %83, label %84, label %68

84:                                               ; preds = %82, %75, %19
  %85 = phi i32 [ -1, %19 ], [ %77, %75 ], [ -1, %82 ]
  tail call void @free(ptr noundef %9) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  ret i32 %85
}

; Function Attrs: optsize
declare void @compute_all_dependences(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_ddr_p_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #5 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !131
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_ddr_p_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !9
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !9
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_lambda_vector_base_length(ptr noundef readonly %0) unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !133
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @volume_of_dist_vector(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %17, label %5

5:                                                ; preds = %3
  %6 = zext i32 %2 to i64
  br label %7

7:                                                ; preds = %5, %12
  %8 = phi i64 [ 0, %5 ], [ %13, %12 ]
  %9 = getelementptr inbounds i32, ptr %0, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !5
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %7
  %13 = add nuw nsw i64 %8, 1
  %14 = icmp eq i64 %13, %6
  br i1 %14, label %32, label %7, !llvm.loop !135

15:                                               ; preds = %7
  %16 = trunc i64 %8 to i32
  br label %17

17:                                               ; preds = %15, %3
  %18 = phi i32 [ 0, %3 ], [ %16, %15 ]
  %19 = icmp eq i32 %18, %2
  br i1 %19, label %32, label %20

20:                                               ; preds = %17
  %21 = zext i32 %18 to i64
  %22 = getelementptr inbounds i32, ptr %0, i64 %21
  %23 = load i32, ptr %22, align 4, !tbaa !5
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %20
  tail call void @fancy_abort(ptr noundef nonnull @.str.11, i32 noundef 1242, ptr noundef nonnull @.str.12) #21
  %26 = load i32, ptr %22, align 4, !tbaa !5
  br label %27

27:                                               ; preds = %20, %25
  %28 = phi i32 [ %23, %20 ], [ %26, %25 ]
  %29 = getelementptr inbounds i32, ptr %1, i64 %21
  %30 = load i32, ptr %29, align 4, !tbaa !5
  %31 = mul i32 %28, %30
  br label %32

32:                                               ; preds = %12, %17, %27
  %33 = phi i32 [ %31, %27 ], [ 0, %17 ], [ 0, %12 ]
  ret i32 %33
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_lambda_vector_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #6 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_lambda_vector_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !9
  ret ptr %5
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable
define internal fastcc noundef zeroext i8 @lambda_vector_zerop(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #14 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %14

4:                                                ; preds = %2
  %5 = zext nneg i32 %1 to i64
  br label %9

6:                                                ; preds = %9
  %7 = add nuw nsw i64 %10, 1
  %8 = icmp eq i64 %7, %5
  br i1 %8, label %14, label %9, !llvm.loop !136

9:                                                ; preds = %4, %6
  %10 = phi i64 [ 0, %4 ], [ %7, %6 ]
  %11 = getelementptr inbounds i32, ptr %0, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !5
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %6, label %14

14:                                               ; preds = %9, %6, %2
  %15 = phi i8 [ 1, %2 ], [ 1, %6 ], [ 0, %9 ]
  ret i8 %15
}

; Function Attrs: optsize
declare void @free_dependence_relations(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @free_data_refs(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_data_reference_p_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !9
  %3 = tail call fastcc i32 @VEC_data_reference_p_base_space(ptr noundef %2) #20
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef 1) #21
  store ptr %6, ptr %0, align 8, !tbaa !9
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_data_reference_p_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #5 {
  %3 = load i32, ptr %0, align 8, !tbaa !125
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !125
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_data_reference_p_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !9
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_data_reference_p_base_space(ptr noundef readonly %0) unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_data_reference_p_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !137
  %6 = load i32, ptr %0, align 8, !tbaa !125
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_tree_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #5 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !138
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !9
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !9
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i8 @handled_component_p(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i16
  switch i16 %3, label %4 [
    i16 42, label %5
    i16 41, label %5
    i16 45, label %5
    i16 46, label %5
    i16 118, label %5
    i16 43, label %5
    i16 44, label %5
  ]

4:                                                ; preds = %1
  br label %5

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %4
  %6 = phi i8 [ 0, %4 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ]
  ret i8 %6
}

; Function Attrs: optsize
declare i32 @host_integerp(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare i64 @tree_low_cst(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_subscript_strides(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4) unnamed_addr #0 {
  %6 = tail call fastcc i32 @loop_depth(ptr noundef %4) #20
  %7 = sub i32 %6, %3
  %8 = load i64, ptr %0, align 8
  %9 = and i64 %8, 65535
  %10 = icmp eq i64 %9, 146
  br i1 %10, label %11, label %48

11:                                               ; preds = %5
  %12 = zext i32 %1 to i64
  br label %13

13:                                               ; preds = %11, %44
  %14 = phi ptr [ %0, %11 ], [ %19, %44 ]
  %15 = tail call fastcc ptr @get_chrec_loop(ptr noundef nonnull %14) #20
  %16 = getelementptr inbounds %struct.tree_exp, ptr %14, i64 1, i32 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !33
  %18 = getelementptr inbounds %struct.tree_exp, ptr %14, i64 1
  %19 = load ptr, ptr %18, align 8, !tbaa !33
  %20 = tail call fastcc i32 @loop_depth(ptr noundef %15) #20
  %21 = icmp ugt i32 %20, %7
  br i1 %21, label %22, label %44

22:                                               ; preds = %13
  %23 = tail call i32 @host_integerp(ptr noundef %17, i32 noundef 0) #21
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %22
  %26 = tail call i64 @tree_low_cst(ptr noundef %17, i32 noundef 0) #21
  br label %32

27:                                               ; preds = %22
  %28 = load ptr, ptr @compiler_params, align 8, !tbaa !9
  %29 = getelementptr inbounds %struct.param_info, ptr %28, i64 100, i32 1
  %30 = load i32, ptr %29, align 8, !tbaa !11
  %31 = sext i32 %30 to i64
  br label %32

32:                                               ; preds = %27, %25
  %33 = phi i64 [ %26, %25 ], [ %31, %27 ]
  %34 = mul nsw i64 %33, %12
  %35 = tail call fastcc i32 @loop_depth(ptr noundef %4) #20
  %36 = xor i32 %35, -1
  %37 = add i32 %36, %3
  %38 = tail call fastcc i32 @loop_depth(ptr noundef %15) #20
  %39 = add i32 %37, %38
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i64, ptr %2, i64 %40
  %42 = load i64, ptr %41, align 8, !tbaa !95
  %43 = add nsw i64 %42, %34
  store i64 %43, ptr %41, align 8, !tbaa !95
  br label %44

44:                                               ; preds = %32, %13
  %45 = load i64, ptr %19, align 8
  %46 = and i64 %45, 65535
  %47 = icmp eq i64 %46, 146
  br i1 %47, label %13, label %48, !llvm.loop !140

48:                                               ; preds = %44, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @loop_depth(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  %4 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %3) #20
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_chrec_loop(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !33
  %4 = getelementptr inbounds %struct.tree_int_cst, ptr %3, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !33
  %6 = trunc i64 %5 to i32
  %7 = tail call fastcc ptr @get_loop(i32 noundef %6) #20
  ret ptr %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_loop(i32 noundef %0) unnamed_addr #4 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !9
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !24
  %5 = getelementptr inbounds %struct.loops, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !36
  %7 = tail call fastcc ptr @VEC_loop_p_base_index(ptr noundef %6, i32 noundef %0) #20
  ret ptr %7
}

; Function Attrs: optsize
declare i32 @least_common_multiple(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @should_unroll_loop_p(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = tail call zeroext i8 @can_unroll_loop_p(ptr noundef %0, i32 noundef %2, ptr noundef %1) #21
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %8 = load i32, ptr %7, align 4, !tbaa !42
  %9 = icmp ult i32 %8, 3
  %10 = zext i1 %9 to i8
  br label %11

11:                                               ; preds = %6, %3
  %12 = phi i8 [ 0, %3 ], [ %10, %6 ]
  ret i8 %12
}

; Function Attrs: optsize
declare zeroext i8 @can_unroll_loop_p(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @may_use_storent_in_loop_p(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !29
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %40

7:                                                ; preds = %1
  %8 = load ptr, ptr @x86_mfence, align 8, !tbaa !9
  %9 = icmp eq ptr %8, null
  br i1 %9, label %40, label %10

10:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #19
  %11 = tail call ptr @get_loop_exit_edges(ptr noundef nonnull %0) #21
  store ptr %11, ptr %2, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  %12 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef %11, i32 noundef 0, ptr noundef nonnull %3) #20, !range !34
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %38, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr @cfun, align 8
  %16 = getelementptr inbounds %struct.function, ptr %15, i64 0, i32 1
  br label %17

17:                                               ; preds = %14, %33
  %18 = phi i32 [ 0, %14 ], [ %35, %33 ]
  %19 = phi i8 [ 1, %14 ], [ %34, %33 ]
  %20 = load ptr, ptr %3, align 8, !tbaa !9
  %21 = getelementptr inbounds %struct.edge_def, ptr %20, i64 0, i32 7
  %22 = load i32, ptr %21, align 8, !tbaa !141
  %23 = and i32 %22, 2
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.edge_def, ptr %20, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !143
  %28 = load ptr, ptr %16, align 8, !tbaa !144
  %29 = getelementptr inbounds %struct.control_flow_graph, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !145
  %31 = icmp eq ptr %27, %30
  %32 = select i1 %31, i8 0, i8 %19
  br label %33

33:                                               ; preds = %25, %17
  %34 = phi i8 [ %19, %17 ], [ %32, %25 ]
  %35 = add i32 %18, 1
  %36 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef %11, i32 noundef %35, ptr noundef nonnull %3) #20, !range !34
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %17, !llvm.loop !147

38:                                               ; preds = %33, %10
  %39 = phi i8 [ 1, %10 ], [ %34, %33 ]
  call fastcc void @VEC_edge_heap_free(ptr noundef nonnull %2) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #19
  br label %40

40:                                               ; preds = %7, %38, %1
  %41 = phi i8 [ 0, %1 ], [ %39, %38 ], [ 1, %7 ]
  ret i8 %41
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @mark_nontemporal_store(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc zeroext i8 @nontemporal_store_p(ptr noundef %0) #20, !range !19
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %18, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %4
  %8 = load i32, ptr @dump_flags, align 4, !tbaa !5
  %9 = and i32 %8, 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %5, ptr noundef nonnull @.str.36, ptr noundef %0) #20
  br label %13

13:                                               ; preds = %11, %7, %4
  %14 = load ptr, ptr %0, align 8, !tbaa !56
  tail call fastcc void @gimple_assign_set_nontemporal_move(ptr noundef %14) #20
  %15 = getelementptr inbounds %struct.mem_ref, ptr %0, i64 0, i32 8
  %16 = load i8, ptr %15, align 8
  %17 = or i8 %16, 8
  store i8 %17, ptr %15, align 8
  br label %18

18:                                               ; preds = %1, %13
  %19 = phi i8 [ 1, %13 ], [ 0, %1 ]
  ret i8 %19
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @emit_mfence_after_loop(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #19
  %6 = tail call ptr @get_loop_exit_edges(ptr noundef %0) #21
  store ptr %6, ptr %2, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #19
  %7 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef %6, i32 noundef 0, ptr noundef nonnull %3) #20, !range !34
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %31, label %9

9:                                                ; preds = %1, %26
  %10 = phi i32 [ %28, %26 ], [ 0, %1 ]
  %11 = load ptr, ptr @x86_mfence, align 8, !tbaa !9
  %12 = call ptr (ptr, i32, ...) @gimple_build_call(ptr noundef %11, i32 noundef 0) #21
  %13 = load ptr, ptr %3, align 8, !tbaa !9
  %14 = getelementptr inbounds %struct.edge_def, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !143
  %16 = call fastcc zeroext i8 @single_pred_p(ptr noundef %15) #20, !range !19
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct.edge_def, ptr %13, i64 0, i32 7
  %20 = load i32, ptr %19, align 8, !tbaa !141
  %21 = and i32 %20, 2
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = call ptr @split_loop_exit_edge(ptr noundef nonnull %13) #21
  %25 = load ptr, ptr %14, align 8, !tbaa !143
  br label %26

26:                                               ; preds = %23, %18, %9
  %27 = phi ptr [ %25, %23 ], [ %15, %18 ], [ %15, %9 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #19
  call fastcc void @gsi_after_labels(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef %27) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !148
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #19
  call void @gsi_insert_before(ptr noundef nonnull %4, ptr noundef %12, i32 noundef 0) #21
  call void @mark_virtual_ops_for_renaming(ptr noundef %12) #21
  %28 = add i32 %10, 1
  %29 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef %6, i32 noundef %28, ptr noundef nonnull %3) #20, !range !34
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %9, !llvm.loop !149

31:                                               ; preds = %26, %1
  call fastcc void @VEC_edge_heap_free(ptr noundef nonnull %2) #20
  call void @update_ssa(i32 noundef 16384) #21
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #19
  ret void
}

; Function Attrs: optsize
declare ptr @get_loop_exit_edges(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_edge_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #5 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !150
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !9
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !9
  ret i32 %14
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_edge_heap_free(ptr nocapture noundef %0) unnamed_addr #15 {
  %2 = load ptr, ptr %0, align 8, !tbaa !9
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #20
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @nontemporal_store_p(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.mem_ref, ptr %0, i64 0, i32 8
  %3 = load i8, ptr %2, align 8
  %4 = and i8 %3, 3
  %5 = icmp eq i8 %4, 3
  br i1 %5, label %6, label %38

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.mem_ref, ptr %0, i64 0, i32 6
  %8 = load i32, ptr %7, align 8, !tbaa !57
  %9 = load ptr, ptr @compiler_params, align 8, !tbaa !9
  %10 = getelementptr inbounds %struct.param_info, ptr %9, i64 101, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !11
  %12 = shl nsw i32 %11, 10
  %13 = icmp ult i32 %8, %12
  br i1 %13, label %38, label %14

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.mem_ref, ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !54
  %17 = getelementptr inbounds %struct.tree_common, ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !33
  %19 = load i64, ptr %18, align 8
  %20 = and i64 %19, 65535
  %21 = icmp eq i64 %20, 14
  br i1 %21, label %22, label %24

22:                                               ; preds = %14
  %23 = tail call i32 @vector_type_mode(ptr noundef nonnull %18) #21
  br label %29

24:                                               ; preds = %14
  %25 = getelementptr inbounds %struct.tree_type, ptr %18, i64 0, i32 6
  %26 = load i32, ptr %25, align 4
  %27 = lshr i32 %26, 16
  %28 = and i32 %27, 255
  br label %29

29:                                               ; preds = %24, %22
  %30 = phi i32 [ %23, %22 ], [ %28, %24 ]
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %38, label %32

32:                                               ; preds = %29
  %33 = sext i32 %30 to i64
  %34 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 63, i32 4, i64 %33
  %35 = load i32, ptr %34, align 4, !tbaa !152
  %36 = icmp ne i32 %35, 2956
  %37 = zext i1 %36 to i8
  br label %38

38:                                               ; preds = %29, %1, %6, %32
  %39 = phi i8 [ %37, %32 ], [ 0, %6 ], [ 0, %1 ], [ 0, %29 ]
  ret i8 %39
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @gimple_assign_set_nontemporal_move(ptr nocapture noundef %0) unnamed_addr #5 {
  %2 = load i32, ptr %0, align 8
  %3 = or i32 %2, 1024
  store i32 %3, ptr %0, align 8
  ret void
}

; Function Attrs: optsize
declare i32 @vector_type_mode(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @gimple_build_call(ptr noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_pred_p(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = load ptr, ptr %0, align 8, !tbaa !154
  %3 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %2) #20
  %4 = icmp eq i32 %3, 1
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: optsize
declare ptr @split_loop_exit_edge(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_after_labels(ptr dead_on_unwind noalias nocapture writable sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #16 {
  tail call fastcc void @gsi_start_bb(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) #20
  %3 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #20, !range !19
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %2, %9
  %6 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #20
  %7 = tail call fastcc i32 @gimple_code(ptr noundef %6) #20, !range !45
  %8 = icmp eq i32 %7, 4
  br i1 %8, label %9, label %12

9:                                                ; preds = %5
  tail call fastcc void @gsi_next(ptr noundef %0) #20
  %10 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #20, !range !19
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %5, label %12, !llvm.loop !155

12:                                               ; preds = %5, %9, %2
  ret void
}

; Function Attrs: optsize
declare void @gsi_insert_before(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @mark_virtual_ops_for_renaming(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @update_ssa(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !150
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @issue_prefetch_ref(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #19
  %5 = getelementptr inbounds %struct.mem_ref, ptr %0, i64 0, i32 6
  %6 = load i32, ptr %5, align 8, !tbaa !57
  %7 = load ptr, ptr @compiler_params, align 8, !tbaa !9
  %8 = getelementptr inbounds %struct.param_info, ptr %7, i64 101, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !11
  %10 = shl nsw i32 %9, 10
  %11 = icmp ult i32 %6, %10
  %12 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %13 = icmp eq ptr %12, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %3
  %15 = load i32, ptr @dump_flags, align 4, !tbaa !5
  %16 = and i32 %15, 8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = select i1 %11, ptr @.str.40, ptr @.str.39
  %20 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %12, ptr noundef nonnull @.str.38, ptr noundef nonnull %19, ptr noundef nonnull %0) #20
  br label %21

21:                                               ; preds = %18, %14, %3
  %22 = load ptr, ptr %0, align 8, !tbaa !56
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %22) #21
  %23 = zext i32 %1 to i64
  %24 = getelementptr inbounds %struct.mem_ref, ptr %0, i64 0, i32 4
  %25 = load i64, ptr %24, align 8, !tbaa !76
  %26 = add nsw i64 %23, -1
  %27 = add i64 %26, %25
  %28 = udiv i64 %27, %25
  %29 = getelementptr inbounds %struct.mem_ref, ptr %0, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !54
  %31 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !9
  %32 = call ptr @build_fold_addr_expr_with_type_loc(i32 noundef 0, ptr noundef %30, ptr noundef %31) #21
  %33 = call ptr @unshare_expr(ptr noundef %32) #21
  %34 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %4, ptr noundef %33, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #21
  %35 = getelementptr inbounds %struct.mem_ref, ptr %0, i64 0, i32 8
  %36 = load i8, ptr %35, align 8
  %37 = and i8 %36, 1
  %38 = icmp eq i8 %37, 0
  %39 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 14), align 16
  %40 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8
  %41 = select i1 %38, ptr %40, ptr %39
  %42 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !9
  %43 = select i1 %11, i64 3, i64 0
  %44 = call ptr @build_int_cst(ptr noundef %42, i64 noundef %43) #21
  %45 = and i64 %28, 4294967295
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %69, label %47

47:                                               ; preds = %21
  %48 = zext i32 %2 to i64
  %49 = getelementptr inbounds %struct.mem_ref, ptr %0, i64 0, i32 3
  %50 = and i64 %28, 4294967295
  br label %51

51:                                               ; preds = %47, %51
  %52 = phi i64 [ 0, %47 ], [ %67, %51 ]
  %53 = load i64, ptr %24, align 8, !tbaa !76
  %54 = mul i64 %53, %52
  %55 = add i64 %54, %48
  %56 = load ptr, ptr %49, align 8, !tbaa !114
  %57 = getelementptr inbounds %struct.mem_ref_group, ptr %56, i64 0, i32 1
  %58 = load i64, ptr %57, align 8, !tbaa !109
  %59 = mul i64 %55, %58
  %60 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !9
  %61 = call ptr @size_int_kind(i64 noundef %59, i32 noundef 0) #21
  %62 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 66, ptr noundef %60, ptr noundef %34, ptr noundef %61) #21
  %63 = call ptr @unshare_expr(ptr noundef %62) #21
  %64 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %4, ptr noundef %63, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #21
  %65 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 501), align 8, !tbaa !9
  %66 = call ptr (ptr, i32, ...) @gimple_build_call(ptr noundef %65, i32 noundef 3, ptr noundef %64, ptr noundef %41, ptr noundef %44) #21
  call void @gsi_insert_before(ptr noundef nonnull %4, ptr noundef %66, i32 noundef 1) #21
  %67 = add nuw nsw i64 %52, 1
  %68 = icmp ult i64 %67, %50
  br i1 %68, label %51, label %69, !llvm.loop !156

69:                                               ; preds = %51, %21
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #19
  ret void
}

; Function Attrs: optsize
declare void @gsi_for_stmt(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @build_fold_addr_expr_with_type_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @force_gimple_operand_gsi(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @fold_build2_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @size_int_kind(i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_int_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #5 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 4, !tbaa !37
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !5
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi i32 [ %11, %8 ], [ 0, %5 ], [ 0, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store i32 %13, ptr %2, align 4, !tbaa !5
  ret i32 %14
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_int_heap_free(ptr nocapture noundef %0) unnamed_addr #15 {
  %2 = load ptr, ptr %0, align 8, !tbaa !9
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #20
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !9
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #17

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #18

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree noinline norecurse nosync nounwind optsize memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nounwind }
attributes #20 = { optsize }
attributes #21 = { nounwind optsize }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !7, i64 0}
!11 = !{!12, !6, i64 8}
!12 = !{!"param_info", !10, i64 0, !6, i64 8, !7, i64 12, !6, i64 16, !6, i64 20, !10, i64 24}
!13 = !{i32 0, i32 33}
!14 = !{!15, !6, i64 0}
!15 = !{!"loop", !6, i64 0, !6, i64 4, !10, i64 8, !10, i64 16, !16, i64 24, !6, i64 32, !6, i64 36, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !17, i64 80, !17, i64 96, !7, i64 112, !7, i64 113, !6, i64 116, !10, i64 120, !10, i64 128, !7, i64 136, !10, i64 144}
!16 = !{!"lpt_decision", !6, i64 0, !6, i64 4}
!17 = !{!"", !18, i64 0, !18, i64 8}
!18 = !{!"long", !7, i64 0}
!19 = !{i8 0, i8 2}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.mustprogress"}
!22 = !{!23, !6, i64 8}
!23 = !{!"", !10, i64 0, !6, i64 8}
!24 = !{!25, !10, i64 32}
!25 = !{!"function", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !10, i64 128, !6, i64 136, !6, i64 137, !6, i64 138, !6, i64 138, !6, i64 138, !6, i64 138, !6, i64 138, !6, i64 138, !6, i64 138, !6, i64 139, !6, i64 139, !6, i64 139, !6, i64 139, !6, i64 139, !6, i64 139, !6, i64 139}
!26 = !{!23, !10, i64 0}
!27 = !{!28, !10, i64 24}
!28 = !{!"loops", !6, i64 0, !10, i64 8, !10, i64 16, !10, i64 24}
!29 = !{!15, !10, i64 48}
!30 = distinct !{!30, !21}
!31 = !{!15, !10, i64 56}
!32 = distinct !{!32, !21}
!33 = !{!7, !7, i64 0}
!34 = !{i32 0, i32 2}
!35 = distinct !{!35, !21}
!36 = !{!28, !10, i64 8}
!37 = !{!38, !6, i64 0}
!38 = !{!"VEC_int_base", !6, i64 0, !6, i64 4, !7, i64 8}
!39 = !{!15, !10, i64 40}
!40 = !{!41, !6, i64 0}
!41 = !{!"VEC_loop_p_base", !6, i64 0, !6, i64 4, !7, i64 8}
!42 = !{!15, !6, i64 36}
!43 = !{!44, !10, i64 24}
!44 = !{!"basic_block_def", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !7, i64 32, !10, i64 48, !10, i64 56, !7, i64 64, !18, i64 72, !6, i64 80, !6, i64 84, !6, i64 88, !6, i64 92, !6, i64 96}
!45 = !{i32 0, i32 256}
!46 = distinct !{!46, !21}
!47 = distinct !{!47, !21}
!48 = !{!49, !10, i64 24}
!49 = !{!"mem_ref_group", !10, i64 0, !18, i64 8, !10, i64 16, !10, i64 24}
!50 = distinct !{!50, !21}
!51 = distinct !{!51, !21}
!52 = distinct !{!52, !21}
!53 = distinct !{!53, !21}
!54 = !{!55, !10, i64 8}
!55 = !{!"mem_ref", !10, i64 0, !10, i64 8, !18, i64 16, !10, i64 24, !18, i64 32, !18, i64 40, !6, i64 48, !10, i64 56, !6, i64 64, !6, i64 64, !6, i64 64, !6, i64 64}
!56 = !{!55, !10, i64 0}
!57 = !{!55, !6, i64 48}
!58 = !{!59, !10, i64 16}
!59 = !{!"data_reference", !10, i64 0, !10, i64 8, !10, i64 16, !7, i64 24, !60, i64 32, !61, i64 72, !62, i64 88, !10, i64 104}
!60 = !{!"innermost_loop_behavior", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32}
!61 = !{!"indices", !10, i64 0, !10, i64 8}
!62 = !{!"dr_alias", !10, i64 0, !10, i64 8}
!63 = distinct !{!63, !21}
!64 = distinct !{!64, !21}
!65 = !{i32 1, i32 0}
!66 = distinct !{!66, !21}
!67 = !{!68, !10, i64 16}
!68 = !{!"data_dependence_relation", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !6, i64 56, !7, i64 60, !7, i64 61, !7, i64 62}
!69 = !{!68, !10, i64 0}
!70 = !{!68, !10, i64 8}
!71 = !{!68, !10, i64 48}
!72 = distinct !{!72, !21}
!73 = distinct !{!73, !21}
!74 = distinct !{!74, !21}
!75 = distinct !{!75, !21}
!76 = !{!55, !18, i64 32}
!77 = distinct !{!77, !21}
!78 = distinct !{!78, !21}
!79 = distinct !{!79, !21}
!80 = distinct !{!80, !21}
!81 = distinct !{!81, !21}
!82 = distinct !{!82, !21}
!83 = distinct !{!83, !21}
!84 = distinct !{!84, !21}
!85 = !{!49, !10, i64 16}
!86 = !{!55, !10, i64 56}
!87 = distinct !{!87, !21}
!88 = distinct !{!88, !21}
!89 = !{!90, !10, i64 0}
!90 = !{!"", !10, i64 0, !10, i64 8, !10, i64 16}
!91 = !{!90, !10, i64 8}
!92 = !{!90, !10, i64 16}
!93 = !{!94, !10, i64 0}
!94 = !{!"gimple_seq_node_d", !10, i64 0, !10, i64 8, !10, i64 16}
!95 = !{!18, !18, i64 0}
!96 = !{!94, !10, i64 16}
!97 = !{!44, !6, i64 96}
!98 = !{!99, !10, i64 0}
!99 = !{!"gimple_bb_info", !10, i64 0, !10, i64 8}
!100 = !{!101, !10, i64 0}
!101 = !{!"gimple_seq_d", !10, i64 0, !10, i64 8, !10, i64 16}
!102 = distinct !{!102, !21}
!103 = !{!104, !10, i64 0}
!104 = !{!"ar_data", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24}
!105 = !{!104, !10, i64 8}
!106 = !{!104, !10, i64 16}
!107 = !{!104, !10, i64 24}
!108 = distinct !{!108, !21}
!109 = !{!49, !18, i64 8}
!110 = !{!49, !10, i64 0}
!111 = !{!55, !18, i64 16}
!112 = distinct !{!112, !21}
!113 = !{!55, !18, i64 40}
!114 = !{!55, !10, i64 24}
!115 = !{!116, !10, i64 0}
!116 = !{!"", !10, i64 0, !10, i64 8, !7, i64 16}
!117 = !{!116, !10, i64 8}
!118 = distinct !{!118, !21}
!119 = distinct !{!119, !21}
!120 = distinct !{!120, !21}
!121 = distinct !{!121, !21}
!122 = distinct !{!122, !21}
!123 = distinct !{!123, !21}
!124 = distinct !{!124, !21}
!125 = !{!126, !6, i64 0}
!126 = !{!"VEC_data_reference_p_base", !6, i64 0, !6, i64 4, !7, i64 8}
!127 = !{!59, !10, i64 8}
!128 = !{!59, !10, i64 80}
!129 = distinct !{!129, !21}
!130 = distinct !{!130, !21}
!131 = !{!132, !6, i64 0}
!132 = !{!"VEC_ddr_p_base", !6, i64 0, !6, i64 4, !7, i64 8}
!133 = !{!134, !6, i64 0}
!134 = !{!"VEC_lambda_vector_base", !6, i64 0, !6, i64 4, !7, i64 8}
!135 = distinct !{!135, !21}
!136 = distinct !{!136, !21}
!137 = !{!126, !6, i64 4}
!138 = !{!139, !6, i64 0}
!139 = !{!"VEC_tree_base", !6, i64 0, !6, i64 4, !7, i64 8}
!140 = distinct !{!140, !21}
!141 = !{!142, !6, i64 48}
!142 = !{!"edge_def", !10, i64 0, !10, i64 8, !7, i64 16, !10, i64 24, !10, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !18, i64 56}
!143 = !{!142, !10, i64 8}
!144 = !{!25, !10, i64 8}
!145 = !{!146, !10, i64 8}
!146 = !{!"control_flow_graph", !10, i64 0, !10, i64 8, !10, i64 16, !6, i64 24, !6, i64 28, !6, i64 32, !10, i64 40, !6, i64 48, !7, i64 52, !7, i64 60, !6, i64 68, !6, i64 72}
!147 = distinct !{!147, !21}
!148 = !{i64 0, i64 8, !9, i64 8, i64 8, !9, i64 16, i64 8, !9}
!149 = distinct !{!149, !21}
!150 = !{!151, !6, i64 0}
!151 = !{!"VEC_edge_base", !6, i64 0, !6, i64 4, !7, i64 8}
!152 = !{!153, !6, i64 0}
!153 = !{!"optab_handlers", !6, i64 0}
!154 = !{!44, !10, i64 0}
!155 = distinct !{!155, !21}
!156 = distinct !{!156, !21}

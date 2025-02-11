; ModuleID = 'tree-parloops.c'
source_filename = "tree-parloops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lang_hooks = type { ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lang_hooks_for_tree_inlining, %struct.lang_hooks_for_callgraph, %struct.lang_hooks_for_tree_dump, %struct.lang_hooks_for_decls, %struct.lang_hooks_for_types, %struct.lang_hooks_for_lto, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_tree_inlining = type { ptr }
%struct.lang_hooks_for_callgraph = type { ptr }
%struct.lang_hooks_for_tree_dump = type { ptr, ptr }
%struct.lang_hooks_for_decls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lang_hooks_for_types = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_lto = type { ptr, ptr, ptr }
%struct.ggc_root_tab = type { ptr, i64, i64, ptr, ptr }
%struct.tree_niter_desc = type { ptr, ptr, ptr, %struct.double_int, %struct.affine_iv, ptr, i32 }
%struct.double_int = type { i64, i64 }
%struct.affine_iv = type { ptr, ptr, i8 }
%struct.loop_iterator = type { ptr, i32 }
%struct.expanded_location = type { ptr, i32, i32, i8 }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.loop = type { i32, i32, ptr, ptr, %struct.lpt_decision, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.double_int, %struct.double_int, i8, i8, i32, ptr, ptr, i8, ptr }
%struct.lpt_decision = type { i32, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.gimple_df = type { ptr, ptr, ptr, ptr, %struct.pt_solution, %struct.pt_solution, ptr, ptr, ptr, ptr, i8, %struct.ssa_operands }
%struct.pt_solution = type { i8, ptr }
%struct.ssa_operands = type { ptr, i32, i32, i8, ptr, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.reduction_info = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.loops = type { i32, ptr, ptr, ptr }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.immediate_use_iterator_d = type { ptr, ptr, %struct.ssa_use_operand_d, ptr }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.clsn_data = type { ptr, ptr, ptr, ptr }
%struct.VEC_int_base = type { i32, i32, [1 x i32] }
%struct.VEC_loop_p_base = type { i32, i32, [1 x ptr] }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.tree_omp_clause = type { %struct.tree_common, i32, i32, %union.omp_clause_subcode, ptr, ptr, [1 x ptr] }
%union.omp_clause_subcode = type { i32 }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_function_decl = type { %struct.tree_decl_non_common, ptr, ptr, ptr, ptr, i32 }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.VEC_basic_block_base = type { i32, i32, [1 x ptr] }
%struct.elv_data = type { %struct.walk_stmt_info, ptr, ptr, i8 }
%struct.walk_stmt_info = type { %struct.gimple_stmt_iterator, ptr, ptr, i8, i8, i8, i8, ptr }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.int_tree_map = type { i32, ptr }
%struct.ssa_operand_iterator_d = type { i8, i32, ptr, ptr, i32, i32, ptr }
%struct.name_to_copy_elt = type { i32, ptr, ptr }
%struct.def_optype_d = type { ptr, ptr }
%struct.use_optype_d = type { ptr, %struct.ssa_use_operand_d }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_with_memory_ops_base = type { %struct.gimple_statement_with_ops_base, ptr, ptr }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }
%struct.gimple_seq_d = type { ptr, ptr, ptr }
%struct.gimple_statement_omp_for = type { %struct.gimple_statement_omp, ptr, i64, ptr, ptr }
%struct.gimple_statement_omp = type { %struct.gimple_statement_base, ptr }
%struct.gimple_omp_for_iter = type { i32, ptr, ptr, ptr, ptr }

@flag_tree_parallelize_loops = external local_unnamed_addr global i32, align 4
@cfun = external local_unnamed_addr global ptr, align 8
@dump_file = external local_unnamed_addr global ptr, align 8
@dump_flags = external local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [29 x i8] c"Trying loop %d as candidate\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"loop %d is not innermost\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"loop %d is innermost\0A\00", align 1
@flag_loop_parallelize_all = external local_unnamed_addr global i32, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"loop is not parallel according to graphite\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"loop is !single_dom_exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"parallelizing outer loop %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"parallelizing inner loop %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"\0Aloop at %s:%d: \00", align 1
@parallelized_functions = internal global ptr null, align 8
@htab_hash_pointer = external local_unnamed_addr global ptr, align 8
@.str.8 = private unnamed_addr constant [16 x i8] c"tree-parloops.c\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.10 = private unnamed_addr constant [42 x i8] c"  FAILED: number of iterations not known\0A\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"phi is \00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"arg of phi to exit:   value \00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c" used outside loop\0A\00", align 1
@.str.14 = private unnamed_addr constant [49 x i8] c"  checking if it a part of reduction pattern:  \0A\00", align 1
@.str.15 = private unnamed_addr constant [42 x i8] c"  FAILED: it is not a part of reduction.\0A\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"reduction phi is  \00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"reduction stmt is  \00", align 1
@.str.18 = private unnamed_addr constant [48 x i8] c"  FAILED: scalar dependency between iterations\0A\00", align 1
@vect_dump = external local_unnamed_addr global ptr, align 8
@.str.19 = private unnamed_addr constant [41 x i8] c"Detected reduction. reduction stmt is: \0A\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gimple_rhs_class_table = external local_unnamed_addr constant [0 x i8], align 1
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@.str.22 = private unnamed_addr constant [21 x i8] c"Considering loop %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"loop is innermost\0A\00", align 1
@.str.24 = private unnamed_addr constant [20 x i8] c"loop NOT innermost\0A\00", align 1
@.str.25 = private unnamed_addr constant [32 x i8] c"  SUCCESS: may be parallelized\0A\00", align 1
@.str.26 = private unnamed_addr constant [53 x i8] c"  FAILED: data dependencies exist across iterations\0A\00", align 1
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@.str.27 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"reduction\00", align 1
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@current_function_decl = external local_unnamed_addr global ptr, align 8
@lang_hooks = external local_unnamed_addr global %struct.lang_hooks, align 8
@.str.29 = private unnamed_addr constant [12 x i8] c".paral_data\00", align 1
@.str.30 = private unnamed_addr constant [18 x i8] c".paral_data_store\00", align 1
@.str.31 = private unnamed_addr constant [17 x i8] c".paral_data_load\00", align 1
@integer_types = external local_unnamed_addr global [11 x ptr], align 16
@create_loop_fn.loopfn_num = internal unnamed_addr global i32 0, align 4
@.str.33 = private unnamed_addr constant [11 x i8] c"%s.$loopfn\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"%s.%lu\00", align 1
@.str.35 = private unnamed_addr constant [18 x i8] c".paral_data_param\00", align 1
@gt_ggc_r_gt_tree_parloops_h = dso_local local_unnamed_addr constant [2 x %struct.ggc_root_tab] [%struct.ggc_root_tab { ptr @parallelized_functions, i64 1, i64 8, ptr @gt_ggc_mx_bitmap_head_def, ptr @gt_pch_nx_bitmap_head_def }, %struct.ggc_root_tab zeroinitializer], align 16

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @parallelize_loops() local_unnamed_addr #0 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.tree_niter_desc, align 8
  %3 = alloca %struct.loop_iterator, align 8
  %4 = alloca %struct.expanded_location, align 8
  %5 = alloca %struct.expanded_location, align 8
  %6 = load i32, ptr @flag_tree_parallelize_loops, align 4, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #18
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %2) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #18
  %7 = load ptr, ptr @cfun, align 8, !tbaa !10
  %8 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !12
  %10 = tail call fastcc zeroext i8 @parallelized_function_p(ptr noundef %9) #19
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %153

12:                                               ; preds = %0
  %13 = load ptr, ptr @cfun, align 8, !tbaa !10
  %14 = getelementptr inbounds %struct.function, ptr %13, i64 0, i32 20
  %15 = load i32, ptr %14, align 8
  %16 = and i32 %15, 1048576
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %153

18:                                               ; preds = %12
  %19 = tail call ptr @htab_create(i64 noundef 10, ptr noundef nonnull @reduction_info_hash, ptr noundef nonnull @reduction_info_eq, ptr noundef nonnull @free) #20
  tail call void @init_stmt_vec_info_vec() #20
  call fastcc void @fel_init(ptr noundef nonnull %3, ptr noundef nonnull %1) #19
  %20 = load ptr, ptr %1, align 8, !tbaa !10
  %21 = icmp eq ptr %20, null
  br i1 %21, label %141, label %22

22:                                               ; preds = %18
  %23 = zext i32 %6 to i64
  %24 = mul nuw nsw i64 %23, 100
  %25 = getelementptr inbounds %struct.expanded_location, ptr %5, i64 0, i32 1
  br label %26

26:                                               ; preds = %22, %137
  %27 = phi ptr [ %20, %22 ], [ %139, %137 ]
  %28 = phi i8 [ 0, %22 ], [ %138, %137 ]
  call void @htab_empty(ptr noundef %19) #20
  %29 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %30 = icmp eq ptr %29, null
  br i1 %30, label %45, label %31

31:                                               ; preds = %26
  %32 = load i32, ptr @dump_flags, align 4, !tbaa !6
  %33 = and i32 %32, 8
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %45, label %35

35:                                               ; preds = %31
  %36 = load i32, ptr %27, align 8, !tbaa !14
  %37 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %29, ptr noundef nonnull @.str, i32 noundef %36) #19
  %38 = getelementptr inbounds %struct.loop, ptr %27, i64 0, i32 8
  %39 = load ptr, ptr %38, align 8, !tbaa !19
  %40 = icmp eq ptr %39, null
  %41 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %42 = load i32, ptr %27, align 8, !tbaa !14
  %43 = select i1 %40, ptr @.str.2, ptr @.str.1
  %44 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %41, ptr noundef nonnull %43, i32 noundef %42) #19
  br label %45

45:                                               ; preds = %35, %31, %26
  %46 = load i32, ptr @flag_loop_parallelize_all, align 4, !tbaa !6
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %61, label %48

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.loop, ptr %27, i64 0, i32 19
  %50 = load i8, ptr %49, align 8, !tbaa !20
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %48
  %53 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %54 = icmp eq ptr %53, null
  br i1 %54, label %137, label %55

55:                                               ; preds = %52
  %56 = load i32, ptr @dump_flags, align 4, !tbaa !6
  %57 = and i32 %56, 8
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %137, label %59

59:                                               ; preds = %55
  %60 = call i64 @fwrite(ptr nonnull @.str.3, i64 43, i64 1, ptr nonnull %53)
  br label %137

61:                                               ; preds = %48, %45
  %62 = call ptr @single_dom_exit(ptr noundef nonnull %27) #20
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %73

64:                                               ; preds = %61
  %65 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %66 = icmp eq ptr %65, null
  br i1 %66, label %137, label %67

67:                                               ; preds = %64
  %68 = load i32, ptr @dump_flags, align 4, !tbaa !6
  %69 = and i32 %68, 8
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %137, label %71

71:                                               ; preds = %67
  %72 = call i64 @fwrite(ptr nonnull @.str.4, i64 25, i64 1, ptr nonnull %65)
  br label %137

73:                                               ; preds = %61
  %74 = call zeroext i8 @can_duplicate_loop_p(ptr noundef nonnull %27) #20
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %137, label %76

76:                                               ; preds = %73
  %77 = call fastcc zeroext i8 @loop_has_blocks_with_irreducible_flag(ptr noundef nonnull %27) #19, !range !21
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %79, label %137

79:                                               ; preds = %76
  %80 = call ptr @loop_preheader_edge(ptr noundef nonnull %27) #20
  %81 = load ptr, ptr %80, align 8, !tbaa !22
  %82 = getelementptr inbounds %struct.basic_block_def, ptr %81, i64 0, i32 13
  %83 = load i32, ptr %82, align 8, !tbaa !24
  %84 = and i32 %83, 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %137

86:                                               ; preds = %79
  %87 = call fastcc zeroext i8 @loop_has_vector_phi_nodes(ptr noundef nonnull %27) #19, !range !21
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %89, label %137

89:                                               ; preds = %86
  %90 = call i64 @estimated_loop_iterations_int(ptr noundef nonnull %27, i8 noundef zeroext 0) #20
  %91 = load i32, ptr @flag_loop_parallelize_all, align 4, !tbaa !6
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %89
  %94 = icmp eq i64 %90, -1
  %95 = icmp sgt i64 %90, %24
  %96 = select i1 %94, i1 true, i1 %95
  br i1 %96, label %97, label %137

97:                                               ; preds = %93
  %98 = call zeroext i8 @optimize_loop_nest_for_size_p(ptr noundef nonnull %27) #20
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %100, label %137

100:                                              ; preds = %97, %89
  %101 = call fastcc zeroext i8 @try_get_loop_niter(ptr noundef nonnull %27, ptr noundef nonnull %2) #19, !range !21
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %137, label %103

103:                                              ; preds = %100
  %104 = call fastcc zeroext i8 @try_create_reduction_list(ptr noundef nonnull %27, ptr noundef %19) #19
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %137, label %106

106:                                              ; preds = %103
  %107 = load i32, ptr @flag_loop_parallelize_all, align 4, !tbaa !6
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %106
  %110 = call fastcc zeroext i8 @loop_parallel_p(ptr noundef nonnull %27) #19, !range !21
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %137, label %112

112:                                              ; preds = %109, %106
  %113 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %114 = icmp eq ptr %113, null
  br i1 %114, label %136, label %115

115:                                              ; preds = %112
  %116 = load i32, ptr @dump_flags, align 4, !tbaa !6
  %117 = and i32 %116, 8
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %136, label %119

119:                                              ; preds = %115
  %120 = getelementptr inbounds %struct.loop, ptr %27, i64 0, i32 8
  %121 = load ptr, ptr %120, align 8, !tbaa !19
  %122 = icmp eq ptr %121, null
  %123 = getelementptr inbounds %struct.loop, ptr %27, i64 0, i32 2
  %124 = load ptr, ptr %123, align 8, !tbaa !26
  %125 = getelementptr inbounds %struct.basic_block_def, ptr %124, i64 0, i32 9
  %126 = load i32, ptr %125, align 8, !tbaa !27
  %127 = select i1 %122, ptr @.str.6, ptr @.str.5
  %128 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %113, ptr noundef nonnull %127, i32 noundef %126) #19
  %129 = call i32 @find_loop_location(ptr noundef nonnull %27) #20
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %136, label %131

131:                                              ; preds = %119
  %132 = load ptr, ptr @dump_file, align 8, !tbaa !10
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %4, i32 noundef %129) #20
  %133 = load ptr, ptr %4, align 8, !tbaa !28
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %5, i32 noundef %129) #20
  %134 = load i32, ptr %25, align 8, !tbaa !30
  %135 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %132, ptr noundef nonnull @.str.7, ptr noundef %133, i32 noundef %134) #19
  br label %136

136:                                              ; preds = %119, %131, %115, %112
  call fastcc void @gen_parallel_loop(ptr noundef nonnull %27, ptr noundef %19, i32 noundef %6, ptr noundef nonnull %2) #19
  call void @verify_flow_info() #20
  call void @verify_dominators(i32 noundef 1) #20
  call void @verify_loop_structure() #20
  call void @verify_loop_closed_ssa() #20
  br label %137

137:                                              ; preds = %93, %109, %103, %100, %97, %73, %76, %79, %86, %64, %67, %71, %52, %55, %59, %136
  %138 = phi i8 [ %28, %76 ], [ %28, %79 ], [ %28, %86 ], [ 1, %136 ], [ %28, %109 ], [ %28, %103 ], [ %28, %100 ], [ %28, %97 ], [ %28, %73 ], [ %28, %71 ], [ %28, %67 ], [ %28, %64 ], [ %28, %59 ], [ %28, %55 ], [ %28, %52 ], [ %28, %93 ]
  call fastcc void @fel_next(ptr noundef nonnull %3, ptr noundef nonnull %1) #19
  %139 = load ptr, ptr %1, align 8, !tbaa !10
  %140 = icmp eq ptr %139, null
  br i1 %140, label %141, label %26, !llvm.loop !31

141:                                              ; preds = %137, %18
  %142 = phi i8 [ 0, %18 ], [ %138, %137 ]
  call void @free_stmt_vec_info_vec() #20
  call void @htab_delete(ptr noundef %19) #20
  %143 = icmp eq i8 %142, 0
  br i1 %143, label %153, label %144

144:                                              ; preds = %141
  %145 = load ptr, ptr @cfun, align 8, !tbaa !10
  %146 = getelementptr inbounds %struct.function, ptr %145, i64 0, i32 3
  %147 = load ptr, ptr %146, align 8, !tbaa !33
  %148 = getelementptr inbounds %struct.gimple_df, ptr %147, i64 0, i32 4
  call void @pt_solution_reset(ptr noundef nonnull %148) #20
  %149 = load ptr, ptr @cfun, align 8, !tbaa !10
  %150 = getelementptr inbounds %struct.function, ptr %149, i64 0, i32 3
  %151 = load ptr, ptr %150, align 8, !tbaa !33
  %152 = getelementptr inbounds %struct.gimple_df, ptr %151, i64 0, i32 5
  call void @pt_solution_reset(ptr noundef nonnull %152) #20
  br label %153

153:                                              ; preds = %141, %144, %12, %0
  %154 = phi i8 [ 0, %0 ], [ 0, %12 ], [ %142, %144 ], [ 0, %141 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %2) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #18
  ret i8 %154
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @parallelized_function_p(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = load ptr, ptr @parallelized_functions, align 8, !tbaa !10
  %3 = icmp eq ptr %2, null
  br i1 %3, label %14, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %6 = load i64, ptr %5, align 8
  %7 = and i64 %6, 4096
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !34
  %12 = tail call i32 @bitmap_bit_p(ptr noundef nonnull %2, i32 noundef %11) #20
  %13 = trunc i32 %12 to i8
  br label %14

14:                                               ; preds = %1, %4, %9
  %15 = phi i8 [ %13, %9 ], [ 0, %4 ], [ 0, %1 ]
  ret i8 %15
}

; Function Attrs: optsize
declare ptr @htab_create(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @reduction_info_hash(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr @htab_hash_pointer, align 8, !tbaa !10
  %3 = getelementptr inbounds %struct.reduction_info, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !35
  %5 = tail call i32 %2(ptr noundef %4) #20
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @reduction_info_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #3 {
  %3 = getelementptr inbounds %struct.reduction_info, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !35
  %5 = getelementptr inbounds %struct.reduction_info, ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = icmp eq ptr %4, %6
  %8 = zext i1 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) #4

; Function Attrs: optsize
declare void @init_stmt_vec_info_vec() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fel_init(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.loop_iterator, ptr %0, i64 0, i32 1
  store i32 0, ptr %3, align 8, !tbaa !37
  %4 = load ptr, ptr @cfun, align 8, !tbaa !10
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !39
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store ptr null, ptr %0, align 8, !tbaa !40
  store ptr null, ptr %1, align 8, !tbaa !10
  br label %38

9:                                                ; preds = %2
  %10 = tail call fastcc i32 @number_of_loops() #19
  %11 = tail call fastcc ptr @VEC_int_heap_alloc(i32 noundef %10) #19
  store ptr %11, ptr %0, align 8, !tbaa !40
  %12 = load ptr, ptr @cfun, align 8, !tbaa !10
  %13 = getelementptr inbounds %struct.function, ptr %12, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !39
  %15 = getelementptr inbounds %struct.loops, ptr %14, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !41
  br label %17

17:                                               ; preds = %27, %9
  %18 = phi ptr [ %16, %9 ], [ %28, %27 ]
  %19 = load i32, ptr %18, align 8, !tbaa !14
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load ptr, ptr %0, align 8, !tbaa !40
  tail call fastcc void @VEC_int_base_quick_push(ptr noundef %22, i32 noundef %19) #19
  br label %23

23:                                               ; preds = %21, %17
  %24 = getelementptr inbounds %struct.loop, ptr %18, i64 0, i32 8
  %25 = load ptr, ptr %24, align 8, !tbaa !19
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %29, %23
  %28 = phi ptr [ %25, %23 ], [ %32, %29 ]
  br label %17

29:                                               ; preds = %23, %34
  %30 = phi ptr [ %35, %34 ], [ %18, %23 ]
  %31 = getelementptr inbounds %struct.loop, ptr %30, i64 0, i32 9
  %32 = load ptr, ptr %31, align 8, !tbaa !43
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %27

34:                                               ; preds = %29
  %35 = tail call fastcc ptr @loop_outer(ptr noundef nonnull %30) #19
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %29, !llvm.loop !44

37:                                               ; preds = %34
  tail call fastcc void @fel_next(ptr noundef nonnull %0, ptr noundef %1) #19
  br label %38

38:                                               ; preds = %37, %8
  ret void
}

; Function Attrs: optsize
declare void @htab_empty(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @single_dom_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @can_duplicate_loop_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @loop_has_blocks_with_irreducible_flag(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call ptr @get_loop_body_in_dom_order(ptr noundef %0) #20
  %3 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %4 = load i32, ptr %3, align 4, !tbaa !45
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %1
  %7 = zext i32 %4 to i64
  br label %11

8:                                                ; preds = %11
  %9 = add nuw nsw i64 %12, 1
  %10 = icmp eq i64 %9, %7
  br i1 %10, label %19, label %11, !llvm.loop !46

11:                                               ; preds = %6, %8
  %12 = phi i64 [ 0, %6 ], [ %9, %8 ]
  %13 = getelementptr inbounds ptr, ptr %2, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !10
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %14, i64 0, i32 13
  %16 = load i32, ptr %15, align 8, !tbaa !24
  %17 = and i32 %16, 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %8, label %19

19:                                               ; preds = %11, %8, %1
  %20 = phi i8 [ 0, %1 ], [ 0, %8 ], [ 1, %11 ]
  tail call void @free(ptr noundef %2) #19
  ret i8 %20
}

; Function Attrs: optsize
declare ptr @loop_preheader_edge(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @loop_has_vector_phi_nodes(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = tail call ptr @get_loop_body_in_dom_order(ptr noundef %0) #20
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #18
  %4 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %5 = load i32, ptr %4, align 4, !tbaa !45
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %30, label %7

7:                                                ; preds = %1, %25
  %8 = phi i64 [ %26, %25 ], [ 0, %1 ]
  %9 = getelementptr inbounds ptr, ptr %3, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !10
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %10) #20
  %11 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #19, !range !21
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %25

13:                                               ; preds = %7, %22
  %14 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #19
  %15 = call fastcc ptr @gimple_phi_result_ptr(ptr noundef %14) #19
  %16 = call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %15) #19
  %17 = getelementptr inbounds %struct.tree_common, ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !34
  %19 = load i64, ptr %18, align 8
  %20 = and i64 %19, 65535
  %21 = icmp eq i64 %20, 14
  br i1 %21, label %30, label %22

22:                                               ; preds = %13
  call fastcc void @gsi_next(ptr noundef nonnull %2) #19
  %23 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #19, !range !21
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %13, label %25, !llvm.loop !47

25:                                               ; preds = %22, %7
  %26 = add nuw nsw i64 %8, 1
  %27 = load i32, ptr %4, align 4, !tbaa !45
  %28 = zext i32 %27 to i64
  %29 = icmp ult i64 %26, %28
  br i1 %29, label %7, label %30, !llvm.loop !48

30:                                               ; preds = %25, %13, %1
  %31 = phi i8 [ 0, %1 ], [ 1, %13 ], [ 0, %25 ]
  call void @free(ptr noundef %3) #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #18
  ret i8 %31
}

; Function Attrs: optsize
declare i64 @estimated_loop_iterations_int(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @optimize_loop_nest_for_size_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @try_get_loop_niter(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call ptr @single_dom_exit(ptr noundef %0) #20
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1766, ptr noundef nonnull @.str.9) #20
  br label %6

6:                                                ; preds = %2, %5
  %7 = tail call zeroext i8 @number_of_iterations_exit(ptr noundef %0, ptr noundef %3, ptr noundef %1, i8 noundef zeroext 0) #20
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %6
  %10 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %11 = icmp eq ptr %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %9
  %13 = load i32, ptr @dump_flags, align 4, !tbaa !6
  %14 = and i32 %13, 8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = tail call i64 @fwrite(ptr nonnull @.str.10, i64 41, i64 1, ptr nonnull %10)
  br label %18

18:                                               ; preds = %6, %9, %12, %16
  %19 = phi i8 [ 0, %16 ], [ 0, %12 ], [ 0, %9 ], [ 1, %6 ]
  ret i8 %19
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @try_create_reduction_list(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca %struct.immediate_use_iterator_d, align 8
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  %6 = alloca %struct.affine_iv, align 8
  %7 = tail call ptr @single_dom_exit(ptr noundef %0) #20
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #18
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1790, ptr noundef nonnull @.str.9) #20
  br label %10

10:                                               ; preds = %2, %9
  tail call fastcc void @gather_scalar_reductions(ptr noundef %0, ptr noundef %1) #19
  %11 = getelementptr inbounds %struct.edge_def, ptr %7, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !49
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %12) #20
  %13 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #19, !range !21
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %97

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.edge_def, ptr %7, i64 0, i32 6
  br label %17

17:                                               ; preds = %15, %94
  %18 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #19
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #18
  %19 = load i32, ptr %16, align 4, !tbaa !50
  %20 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %18, i32 noundef %19) #19
  %21 = call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %20) #19
  %22 = call zeroext i8 @is_gimple_reg(ptr noundef %21) #20
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %94, label %24

24:                                               ; preds = %17
  %25 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %26 = icmp eq ptr %25, null
  br i1 %26, label %41, label %27

27:                                               ; preds = %24
  %28 = load i32, ptr @dump_flags, align 4, !tbaa !6
  %29 = and i32 %28, 8
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %41, label %31

31:                                               ; preds = %27
  %32 = call i64 @fwrite(ptr nonnull @.str.11, i64 7, i64 1, ptr nonnull %25)
  %33 = load ptr, ptr @dump_file, align 8, !tbaa !10
  call void @print_gimple_stmt(ptr noundef %33, ptr noundef %18, i32 noundef 0, i32 noundef 0) #20
  %34 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %35 = call i64 @fwrite(ptr nonnull @.str.12, i64 28, i64 1, ptr %34)
  %36 = load ptr, ptr @dump_file, align 8, !tbaa !10
  call void @print_generic_expr(ptr noundef %36, ptr noundef %21, i32 noundef 0) #20
  %37 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %38 = call i64 @fwrite(ptr nonnull @.str.13, i64 19, i64 1, ptr %37)
  %39 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %40 = call i64 @fwrite(ptr nonnull @.str.14, i64 48, i64 1, ptr %39)
  br label %41

41:                                               ; preds = %31, %27, %24
  %42 = call i64 @htab_elements(ptr noundef %1) #20
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %41
  %45 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %46 = icmp eq ptr %45, null
  br i1 %46, label %130, label %47

47:                                               ; preds = %44
  %48 = load i32, ptr @dump_flags, align 4, !tbaa !6
  %49 = and i32 %48, 8
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %130, label %127

51:                                               ; preds = %41
  %52 = call fastcc ptr @first_readonly_imm_use(ptr noundef nonnull %4, ptr noundef %21) #19
  %53 = call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %4) #19, !range !21
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %69

55:                                               ; preds = %51, %65
  %56 = phi ptr [ %66, %65 ], [ %52, %51 ]
  %57 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %56, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !34
  %59 = call fastcc ptr @gimple_bb(ptr noundef %58) #19
  %60 = call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %0, ptr noundef %59) #20
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %55
  %63 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %56, i64 0, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !34
  br label %69

65:                                               ; preds = %55
  %66 = call fastcc ptr @next_readonly_imm_use(ptr noundef nonnull %4) #19
  %67 = call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %4) #19, !range !21
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %55, label %69, !llvm.loop !51

69:                                               ; preds = %65, %51, %62
  %70 = phi ptr [ %64, %62 ], [ null, %51 ], [ null, %65 ]
  %71 = call fastcc ptr @reduction_phi(ptr noundef %1, ptr noundef %70) #19
  %72 = icmp eq ptr %71, null
  %73 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %74 = icmp eq ptr %73, null
  br i1 %72, label %75, label %80

75:                                               ; preds = %69
  br i1 %74, label %130, label %76

76:                                               ; preds = %75
  %77 = load i32, ptr @dump_flags, align 4, !tbaa !6
  %78 = and i32 %77, 8
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %130, label %127

80:                                               ; preds = %69
  br i1 %74, label %94, label %81

81:                                               ; preds = %80
  %82 = load i32, ptr @dump_flags, align 4, !tbaa !6
  %83 = and i32 %82, 8
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %94, label %85

85:                                               ; preds = %81
  %86 = call i64 @fwrite(ptr nonnull @.str.16, i64 18, i64 1, ptr nonnull %73)
  %87 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %88 = getelementptr inbounds %struct.reduction_info, ptr %71, i64 0, i32 1
  %89 = load ptr, ptr %88, align 8, !tbaa !35
  call void @print_gimple_stmt(ptr noundef %87, ptr noundef %89, i32 noundef 0, i32 noundef 0) #20
  %90 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %91 = call i64 @fwrite(ptr nonnull @.str.17, i64 19, i64 1, ptr %90)
  %92 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %93 = load ptr, ptr %71, align 8, !tbaa !52
  call void @print_gimple_stmt(ptr noundef %92, ptr noundef %93, i32 noundef 0, i32 noundef 0) #20
  br label %94

94:                                               ; preds = %17, %85, %81, %80
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #18
  call fastcc void @gsi_next(ptr noundef nonnull %3) #19
  %95 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #19, !range !21
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %17, label %97, !llvm.loop !53

97:                                               ; preds = %94, %10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #18
  %98 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %99 = load ptr, ptr %98, align 8, !tbaa !26
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef %99) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !54
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #18
  %100 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #19, !range !21
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %102, label %131

102:                                              ; preds = %97, %123
  %103 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #19
  %104 = call fastcc ptr @gimple_phi_result_ptr(ptr noundef %103) #19
  %105 = call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %104) #19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #18
  %106 = call zeroext i8 @is_gimple_reg(ptr noundef %105) #20
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %123, label %108

108:                                              ; preds = %102
  %109 = call zeroext i8 @simple_iv(ptr noundef %0, ptr noundef %0, ptr noundef %105, ptr noundef nonnull %6, i8 noundef zeroext 1) #20
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %111, label %123

111:                                              ; preds = %108
  %112 = call fastcc ptr @reduction_phi(ptr noundef %1, ptr noundef %103) #19
  %113 = icmp eq ptr %112, null
  br i1 %113, label %114, label %123

114:                                              ; preds = %111
  %115 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %116 = icmp eq ptr %115, null
  br i1 %116, label %126, label %117

117:                                              ; preds = %114
  %118 = load i32, ptr @dump_flags, align 4, !tbaa !6
  %119 = and i32 %118, 8
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %126, label %121

121:                                              ; preds = %117
  %122 = call i64 @fwrite(ptr nonnull @.str.18, i64 47, i64 1, ptr nonnull %115)
  br label %126

123:                                              ; preds = %111, %108, %102
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #18
  call fastcc void @gsi_next(ptr noundef nonnull %3) #19
  %124 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #19, !range !21
  %125 = icmp eq i8 %124, 0
  br i1 %125, label %102, label %131, !llvm.loop !55

126:                                              ; preds = %121, %117, %114
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #18
  br label %131

127:                                              ; preds = %76, %47
  %128 = phi ptr [ %45, %47 ], [ %73, %76 ]
  %129 = call i64 @fwrite(ptr nonnull @.str.15, i64 41, i64 1, ptr nonnull %128)
  br label %130

130:                                              ; preds = %127, %75, %76, %44, %47
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #18
  br label %131

131:                                              ; preds = %123, %97, %126, %130
  %132 = phi i8 [ 0, %126 ], [ 0, %130 ], [ 1, %97 ], [ 1, %123 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #18
  ret i8 %132
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @loop_parallel_p(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #18
  %4 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %5 = icmp eq ptr %4, null
  br i1 %5, label %21, label %6

6:                                                ; preds = %1
  %7 = load i32, ptr @dump_flags, align 4, !tbaa !6
  %8 = and i32 %7, 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %6
  %11 = load i32, ptr %0, align 8, !tbaa !14
  %12 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %4, ptr noundef nonnull @.str.22, i32 noundef %11) #19
  %13 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 8
  %14 = load ptr, ptr %13, align 8, !tbaa !19
  %15 = icmp eq ptr %14, null
  %16 = load ptr, ptr @dump_file, align 8, !tbaa !10
  br i1 %15, label %17, label %19

17:                                               ; preds = %10
  %18 = tail call i64 @fwrite(ptr nonnull @.str.23, i64 18, i64 1, ptr %16)
  br label %21

19:                                               ; preds = %10
  %20 = tail call i64 @fwrite(ptr nonnull @.str.24, i64 19, i64 1, ptr %16)
  br label %21

21:                                               ; preds = %17, %19, %6, %1
  %22 = tail call fastcc ptr @VEC_data_reference_p_heap_alloc() #19
  store ptr %22, ptr %3, align 8, !tbaa !10
  %23 = tail call fastcc ptr @VEC_ddr_p_heap_alloc() #19
  store ptr %23, ptr %2, align 8, !tbaa !10
  %24 = call zeroext i8 @compute_data_dependences_for_loop(ptr noundef %0, i8 noundef zeroext 1, ptr noundef nonnull %3, ptr noundef nonnull %2) #20
  %25 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %26 = icmp eq ptr %25, null
  br i1 %26, label %33, label %27

27:                                               ; preds = %21
  %28 = load i32, ptr @dump_flags, align 4, !tbaa !6
  %29 = and i32 %28, 8
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr %2, align 8, !tbaa !10
  call void @dump_data_dependence_relations(ptr noundef nonnull %25, ptr noundef %32) #20
  br label %33

33:                                               ; preds = %31, %27, %21
  %34 = call ptr @lambda_trans_matrix_new(i32 noundef 1, i32 noundef 1) #20
  %35 = load ptr, ptr %34, align 8, !tbaa !56
  %36 = load ptr, ptr %35, align 8, !tbaa !10
  store i32 -1, ptr %36, align 4, !tbaa !6
  %37 = load ptr, ptr %2, align 8, !tbaa !10
  %38 = call zeroext i8 @lambda_transform_legal_p(ptr noundef nonnull %34, i32 noundef 1, ptr noundef %37) #20
  %39 = icmp eq i8 %38, 0
  %40 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %41 = icmp eq ptr %40, null
  br i1 %39, label %49, label %42

42:                                               ; preds = %33
  br i1 %41, label %56, label %43

43:                                               ; preds = %42
  %44 = load i32, ptr @dump_flags, align 4, !tbaa !6
  %45 = and i32 %44, 8
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %56, label %47

47:                                               ; preds = %43
  %48 = call i64 @fwrite(ptr nonnull @.str.25, i64 31, i64 1, ptr nonnull %40)
  br label %56

49:                                               ; preds = %33
  br i1 %41, label %56, label %50

50:                                               ; preds = %49
  %51 = load i32, ptr @dump_flags, align 4, !tbaa !6
  %52 = and i32 %51, 8
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %50
  %55 = call i64 @fwrite(ptr nonnull @.str.26, i64 52, i64 1, ptr nonnull %40)
  br label %56

56:                                               ; preds = %49, %50, %54, %42, %43, %47
  %57 = phi i8 [ 1, %47 ], [ 1, %43 ], [ 1, %42 ], [ 0, %54 ], [ 0, %50 ], [ 0, %49 ]
  %58 = load ptr, ptr %2, align 8, !tbaa !10
  call void @free_dependence_relations(ptr noundef %58) #20
  %59 = load ptr, ptr %3, align 8, !tbaa !10
  call void @free_data_refs(ptr noundef %59) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #18
  ret i8 %57
}

; Function Attrs: optsize
declare i32 @find_loop_location(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @expand_location(ptr dead_on_unwind writable sret(%struct.expanded_location) align 8, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gen_parallel_loop(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #0 {
  %5 = alloca ptr, align 8
  %6 = alloca %struct.loop_iterator, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca %struct.clsn_data, align 8
  store ptr %0, ptr %5, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #18
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %11) #18
  %12 = getelementptr inbounds %struct.tree_niter_desc, ptr %3, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !58
  %14 = getelementptr inbounds %struct.tree_common, ptr %13, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !34
  %16 = tail call ptr @unshare_expr(ptr noundef %13) #20
  %17 = call ptr @force_gimple_operand(ptr noundef %16, ptr noundef nonnull %10, i8 noundef zeroext 1, ptr noundef null) #20
  store ptr %17, ptr %7, align 8, !tbaa !10
  %18 = load ptr, ptr %10, align 8, !tbaa !10
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %4
  %21 = call ptr @loop_preheader_edge(ptr noundef %0) #20
  %22 = load ptr, ptr %10, align 8, !tbaa !10
  %23 = call ptr @gsi_insert_seq_on_edge_immediate(ptr noundef %21, ptr noundef %22) #20
  br label %24

24:                                               ; preds = %20, %4
  %25 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !10
  %26 = mul i32 %2, 100
  %27 = zext i32 %26 to i64
  %28 = call ptr @build_int_cst(ptr noundef %15, i64 noundef %27) #20
  %29 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 100, ptr noundef %25, ptr noundef %17, ptr noundef %28) #20
  %30 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !10
  %31 = getelementptr inbounds %struct.tree_niter_desc, ptr %3, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !61
  %33 = call ptr @unshare_expr(ptr noundef %32) #20
  %34 = call ptr @invert_truthvalue_loc(i32 noundef 0, ptr noundef %33) #20
  %35 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 93, ptr noundef %30, ptr noundef %34, ptr noundef %29) #20
  %36 = call ptr @force_gimple_operand(ptr noundef %35, ptr noundef nonnull %10, i8 noundef zeroext 0, ptr noundef null) #20
  %37 = load ptr, ptr %10, align 8, !tbaa !10
  %38 = icmp eq ptr %37, null
  br i1 %38, label %43, label %39

39:                                               ; preds = %24
  %40 = call ptr @loop_preheader_edge(ptr noundef %0) #20
  %41 = load ptr, ptr %10, align 8, !tbaa !10
  %42 = call ptr @gsi_insert_seq_on_edge_immediate(ptr noundef %40, ptr noundef %41) #20
  br label %43

43:                                               ; preds = %39, %24
  %44 = call zeroext i8 @is_gimple_condexpr(ptr noundef %36) #20
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %43
  %47 = call ptr @force_gimple_operand(ptr noundef %36, ptr noundef nonnull %10, i8 noundef zeroext 1, ptr noundef null) #20
  %48 = load ptr, ptr %10, align 8, !tbaa !10
  %49 = icmp eq ptr %48, null
  br i1 %49, label %54, label %50

50:                                               ; preds = %46
  %51 = call ptr @loop_preheader_edge(ptr noundef %0) #20
  %52 = load ptr, ptr %10, align 8, !tbaa !10
  %53 = call ptr @gsi_insert_seq_on_edge_immediate(ptr noundef %51, ptr noundef %52) #20
  br label %54

54:                                               ; preds = %46, %50, %43
  %55 = phi ptr [ %36, %43 ], [ %47, %50 ], [ %47, %46 ]
  call void @initialize_original_copy_tables() #20
  %56 = call ptr @loop_version(ptr noundef %0, ptr noundef %55, ptr noundef null, i32 noundef 8000, i32 noundef 8000, i32 noundef 2000, i8 noundef zeroext 1) #20
  call void @update_ssa(i32 noundef 2048) #20
  call void @free_original_copy_tables() #20
  %57 = call ptr @canonicalize_loop_ivs(ptr noundef %0, ptr noundef nonnull %7, i8 noundef zeroext 1) #20
  %58 = load ptr, ptr %7, align 8, !tbaa !10
  call fastcc void @transform_to_exit_first_loop(ptr noundef %0, ptr noundef %1, ptr noundef %58) #19
  %59 = call i64 @htab_elements(ptr noundef %1) #20
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %54
  call void @htab_traverse(ptr noundef %1, ptr noundef nonnull @initialize_reductions, ptr noundef %0) #20
  br label %62

62:                                               ; preds = %61, %54
  %63 = call ptr @single_exit(ptr noundef %0) #20
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1643, ptr noundef nonnull @.str.9) #20
  br label %66

66:                                               ; preds = %62, %65
  %67 = call ptr @loop_preheader_edge(ptr noundef %0) #20
  %68 = call ptr @single_dom_exit(ptr noundef %0) #20
  call fastcc void @eliminate_local_variables(ptr noundef %67, ptr noundef %68) #19
  call fastcc void @separate_decls_in_region(ptr noundef %67, ptr noundef %68, ptr noundef %1, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %11) #19
  %69 = call fastcc ptr @create_loop_fn() #19
  %70 = load ptr, ptr %8, align 8, !tbaa !10
  %71 = load ptr, ptr %9, align 8, !tbaa !10
  %72 = call fastcc ptr @create_parallel_loop(ptr noundef %0, ptr noundef %69, ptr noundef %70, ptr noundef %71, i32 noundef %2) #19
  %73 = call i64 @htab_elements(ptr noundef %1) #20
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %66
  call fastcc void @create_call_for_reduction(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %11) #19
  br label %76

76:                                               ; preds = %75, %66
  call void @scev_reset() #20
  call void @cancel_loop_tree(ptr noundef %0) #20
  call fastcc void @fel_init(ptr noundef nonnull %6, ptr noundef nonnull %5) #19
  %77 = load ptr, ptr %5, align 8, !tbaa !10
  %78 = icmp eq ptr %77, null
  br i1 %78, label %83, label %79

79:                                               ; preds = %76, %79
  %80 = phi ptr [ %81, %79 ], [ %77, %76 ]
  call void @free_numbers_of_iterations_estimates_loop(ptr noundef nonnull %80) #20
  call fastcc void @fel_next(ptr noundef nonnull %6, ptr noundef nonnull %5) #19
  %81 = load ptr, ptr %5, align 8, !tbaa !10
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %79, !llvm.loop !62

83:                                               ; preds = %79, %76
  call void @omp_expand_local(ptr noundef %72) #20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #18
  ret void
}

; Function Attrs: optsize
declare void @verify_flow_info() local_unnamed_addr #2

; Function Attrs: optsize
declare void @verify_dominators(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @verify_loop_structure() local_unnamed_addr #2

; Function Attrs: optsize
declare void @verify_loop_closed_ssa() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fel_next(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #18
  %4 = getelementptr inbounds %struct.loop_iterator, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !37
  br label %6

6:                                                ; preds = %11, %2
  %7 = phi i32 [ %12, %11 ], [ %5, %2 ]
  %8 = load ptr, ptr %0, align 8, !tbaa !40
  %9 = call fastcc i32 @VEC_int_base_iterate(ptr noundef %8, i32 noundef %7, ptr noundef nonnull %3) #19, !range !63
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %6
  %12 = add i32 %7, 1
  store i32 %12, ptr %4, align 8, !tbaa !37
  %13 = load i32, ptr %3, align 4, !tbaa !6
  %14 = tail call fastcc ptr @get_loop(i32 noundef %13) #19
  store ptr %14, ptr %1, align 8, !tbaa !10
  %15 = icmp eq ptr %14, null
  br i1 %15, label %6, label %17, !llvm.loop !64

16:                                               ; preds = %6
  tail call fastcc void @VEC_int_heap_free(ptr noundef nonnull %0) #19
  store ptr null, ptr %1, align 8, !tbaa !10
  br label %17

17:                                               ; preds = %11, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #18
  ret void
}

; Function Attrs: optsize
declare void @free_stmt_vec_info_vec() local_unnamed_addr #2

; Function Attrs: optsize
declare void @htab_delete(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @pt_solution_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_int_heap_alloc(i32 noundef %0) unnamed_addr #0 {
  %2 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %0, i64 noundef 8, i64 noundef 4) #20
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @number_of_loops() unnamed_addr #6 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !10
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !39
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.loops, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !65
  %8 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %7) #19
  br label %9

9:                                                ; preds = %0, %5
  %10 = phi i32 [ %8, %5 ], [ 0, %0 ]
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_int_base_quick_push(ptr noundef %0, i32 noundef %1) unnamed_addr #7 {
  %3 = load i32, ptr %0, align 4, !tbaa !66
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 4, !tbaa !66
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %5
  store i32 %1, ptr %6, align 4, !tbaa !6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @loop_outer(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !68
  %4 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %3) #19
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = add i32 %4, -1
  %8 = tail call fastcc ptr @VEC_loop_p_base_index(ptr noundef %3, i32 noundef %7) #19
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: optsize
declare ptr @vec_heap_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_loop_p_base_length(ptr noundef readonly %0) unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !69
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_loop_p_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #3 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !10
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @get_loop_body_in_dom_order(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #3 {
  %2 = load ptr, ptr %0, align 8, !tbaa !71
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @get_def_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = load ptr, ptr %0, align 8, !tbaa !10
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @gimple_phi_result_ptr(ptr noundef readnone %0) unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #6 {
  %2 = load ptr, ptr %0, align 8, !tbaa !71
  %3 = load ptr, ptr %2, align 8, !tbaa !73
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #10 {
  %2 = load ptr, ptr %0, align 8, !tbaa !71
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !75
  store ptr %4, ptr %0, align 8, !tbaa !71
  ret void
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @number_of_iterations_exit(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gather_scalar_reductions(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca %struct.affine_iv, align 8
  %5 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #18
  store ptr null, ptr @vect_dump, align 8, !tbaa !10
  %6 = tail call ptr @vect_analyze_loop_form(ptr noundef %0) #20
  %7 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !26
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %8) #20
  %9 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #19, !range !21
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %33

11:                                               ; preds = %2
  %12 = icmp ne ptr %6, null
  br label %13

13:                                               ; preds = %11, %30
  %14 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #18
  %15 = call fastcc ptr @gimple_phi_result_ptr(ptr noundef %14) #19
  %16 = call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %15) #19
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #18
  %17 = call zeroext i8 @is_gimple_reg(ptr noundef %16) #20
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %30, label %19

19:                                               ; preds = %13
  %20 = call zeroext i8 @simple_iv(ptr noundef %0, ptr noundef %0, ptr noundef %16, ptr noundef nonnull %4, i8 noundef zeroext 1) #20
  %21 = icmp eq i8 %20, 0
  %22 = select i1 %21, i1 %12, i1 false
  br i1 %22, label %23, label %30

23:                                               ; preds = %19
  %24 = call ptr @vect_is_simple_reduction(ptr noundef nonnull %6, ptr noundef %14, i8 noundef zeroext 1, ptr noundef nonnull %5) #20
  %25 = icmp eq ptr %24, null
  %26 = load i8, ptr %5, align 1
  %27 = icmp ne i8 %26, 0
  %28 = select i1 %25, i1 true, i1 %27
  br i1 %28, label %30, label %29

29:                                               ; preds = %23
  call fastcc void @build_new_reduction(ptr noundef %1, ptr noundef nonnull %24, ptr noundef %14) #19
  br label %30

30:                                               ; preds = %19, %29, %23, %13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #18
  call fastcc void @gsi_next(ptr noundef nonnull %3) #19
  %31 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #19, !range !21
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %13, label %33, !llvm.loop !76

33:                                               ; preds = %30, %2
  call void @destroy_loop_vec_info(ptr noundef %6, i8 noundef zeroext 1) #20
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_use_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !77
  %4 = load ptr, ptr %3, align 8, !tbaa !10
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %1) #19
  ret ptr %3
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @print_gimple_stmt(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @print_generic_expr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @htab_elements(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc ptr @first_readonly_imm_use(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5
  %4 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !79
  %5 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !81
  store ptr %6, ptr %0, align 8, !tbaa !82
  %7 = tail call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %0) #19, !range !21
  %8 = icmp eq i8 %7, 0
  %9 = select i1 %8, ptr %6, ptr null
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @end_readonly_imm_use_p(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = load ptr, ptr %0, align 8, !tbaa !82
  %3 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !79
  %5 = icmp eq ptr %2, %4
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: optsize
declare zeroext i8 @flow_bb_inside_loop_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bb(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @next_readonly_imm_use(ptr nocapture noundef %0) unnamed_addr #10 {
  %2 = load ptr, ptr %0, align 8, !tbaa !82
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !81
  store ptr %4, ptr %0, align 8, !tbaa !82
  %5 = tail call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %0) #19, !range !21
  %6 = icmp eq i8 %5, 0
  %7 = select i1 %6, ptr %4, ptr null
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @reduction_phi(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.reduction_info, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #18
  %4 = tail call i64 @htab_elements(ptr noundef %0) #20
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.reduction_info, ptr %3, i64 0, i32 1
  store ptr %1, ptr %7, align 8, !tbaa !35
  %8 = call ptr @htab_find(ptr noundef %0, ptr noundef nonnull %3) #20
  br label %9

9:                                                ; preds = %2, %6
  %10 = phi ptr [ %8, %6 ], [ null, %2 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #18
  ret ptr %10
}

; Function Attrs: optsize
declare zeroext i8 @simple_iv(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @vect_analyze_loop_form(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @vect_is_simple_reduction(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @build_new_reduction(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %5 = icmp eq ptr %4, null
  br i1 %5, label %15, label %6

6:                                                ; preds = %3
  %7 = load i32, ptr @dump_flags, align 4, !tbaa !6
  %8 = and i32 %7, 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %6
  %11 = tail call i64 @fwrite(ptr nonnull @.str.19, i64 40, i64 1, ptr nonnull %4)
  %12 = load ptr, ptr @dump_file, align 8, !tbaa !10
  tail call void @print_gimple_stmt(ptr noundef %12, ptr noundef %1, i32 noundef 0, i32 noundef 0) #20
  %13 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %14 = tail call i32 @fputc(i32 10, ptr %13)
  br label %15

15:                                               ; preds = %10, %6, %3
  %16 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 64) #20
  store ptr %1, ptr %16, align 8, !tbaa !52
  %17 = getelementptr inbounds %struct.reduction_info, ptr %16, i64 0, i32 1
  store ptr %2, ptr %17, align 8, !tbaa !35
  %18 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %1) #19, !range !83
  %19 = getelementptr inbounds %struct.reduction_info, ptr %16, i64 0, i32 2
  store i32 %18, ptr %19, align 8, !tbaa !84
  %20 = tail call ptr @htab_find_slot(ptr noundef %0, ptr noundef nonnull %16, i32 noundef 1) #20
  store ptr %16, ptr %20, align 8, !tbaa !10
  ret void
}

; Function Attrs: optsize
declare void @destroy_loop_vec_info(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_expr_code(ptr noundef %0) #19, !range !83
  %3 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %2) #19, !range !85
  %4 = icmp eq i32 %3, 3
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #19
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i32
  %9 = and i32 %8, 65535
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi i32 [ %9, %5 ], [ %2, %1 ]
  ret i32 %11
}

; Function Attrs: optsize
declare ptr @htab_find_slot(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_expr_code(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !85
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
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 1446, ptr noundef nonnull @.str.9) #20
  br label %8

8:                                                ; preds = %1, %7, %4
  %9 = phi i32 [ %6, %4 ], [ 0, %7 ], [ 59, %1 ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @get_gimple_rhs_class(i32 noundef %0) unnamed_addr #9 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %2
  %4 = load i8, ptr %3, align 1, !tbaa !34
  %5 = zext i8 %4 to i32
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs1(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #19
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #19, !range !21
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #19
  %7 = zext nneg i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !10
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !85
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #19
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !86
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 1622, ptr noundef nonnull @.str.9) #20
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !85
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #19
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #9 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !6
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !34
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 3103, ptr noundef nonnull @.str.9) #20
  br label %7

7:                                                ; preds = %2, %6
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %8
  ret ptr %9
}

; Function Attrs: optsize
declare ptr @htab_find(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_data_reference_p_heap_alloc() unnamed_addr #0 {
  %1 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 10) #20
  ret ptr %1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_ddr_p_heap_alloc() unnamed_addr #0 {
  %1 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 100) #20
  ret ptr %1
}

; Function Attrs: optsize
declare zeroext i8 @compute_data_dependences_for_loop(ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @dump_data_dependence_relations(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @lambda_trans_matrix_new(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @lambda_transform_legal_p(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @free_dependence_relations(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @free_data_refs(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @force_gimple_operand(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @unshare_expr(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gsi_insert_seq_on_edge_immediate(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @fold_build2_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build_int_cst(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @invert_truthvalue_loc(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @is_gimple_condexpr(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @initialize_original_copy_tables() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @loop_version(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @update_ssa(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @free_original_copy_tables() local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @canonicalize_loop_ivs(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @transform_to_exit_first_loop(ptr noundef %0, ptr noundef %1, ptr noundef readnone %2) unnamed_addr #0 {
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  %6 = alloca %struct.gimple_stmt_iterator, align 8
  %7 = tail call ptr @single_dom_exit(ptr noundef %0) #20
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #18
  %8 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !26
  %10 = tail call ptr @split_block_after_labels(ptr noundef %9) #20
  %11 = load ptr, ptr %8, align 8, !tbaa !26
  %12 = tail call fastcc ptr @single_succ(ptr noundef %11) #19
  %13 = load ptr, ptr %8, align 8, !tbaa !26
  %14 = tail call fastcc ptr @single_succ_edge(ptr noundef %13) #19
  %15 = load ptr, ptr %7, align 8, !tbaa !22
  %16 = tail call ptr @last_stmt(ptr noundef %15) #20
  %17 = tail call fastcc ptr @gimple_cond_lhs(ptr noundef %16) #19
  %18 = tail call fastcc ptr @gimple_cond_rhs(ptr noundef %16) #19
  %19 = icmp eq ptr %18, %2
  br i1 %19, label %21, label %20

20:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1311, ptr noundef nonnull @.str.9) #20
  br label %21

21:                                               ; preds = %3, %20
  %22 = load ptr, ptr %8, align 8, !tbaa !26
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %22) #20
  %23 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #19, !range !21
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %41

25:                                               ; preds = %21, %37
  %26 = phi ptr [ %38, %37 ], [ %17, %21 ]
  %27 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #19
  %28 = call fastcc ptr @gimple_phi_result_ptr(ptr noundef %27) #19
  %29 = call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %28) #19
  %30 = getelementptr inbounds %struct.tree_ssa_name, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !34
  %32 = call fastcc ptr @make_ssa_name(ptr noundef %31, ptr noundef %27) #19
  store ptr %32, ptr %28, align 8, !tbaa !10
  %33 = call ptr @create_phi_node(ptr noundef %29, ptr noundef %12) #20
  %34 = getelementptr inbounds %struct.tree_ssa_name, ptr %29, i64 0, i32 2
  store ptr %33, ptr %34, align 8, !tbaa !34
  call void @add_phi_arg(ptr noundef %33, ptr noundef %32, ptr noundef %14, i32 noundef 0) #20
  %35 = icmp eq ptr %29, %26
  br i1 %35, label %36, label %37

36:                                               ; preds = %25
  call fastcc void @gimple_cond_set_lhs(ptr noundef %16, ptr noundef %32) #19
  call fastcc void @update_stmt(ptr noundef %16) #19
  br label %37

37:                                               ; preds = %25, %36
  %38 = phi ptr [ %32, %36 ], [ %26, %25 ]
  call fastcc void @gsi_next(ptr noundef nonnull %4) #19
  %39 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #19, !range !21
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %25, label %41, !llvm.loop !87

41:                                               ; preds = %37, %21
  %42 = phi ptr [ %17, %21 ], [ %38, %37 ]
  %43 = call ptr @get_loop_body_in_dom_order(ptr noundef %0) #20
  %44 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !88
  br label %46

46:                                               ; preds = %46, %41
  %47 = phi i32 [ 0, %41 ], [ %52, %46 ]
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds ptr, ptr %43, i64 %48
  %50 = load ptr, ptr %49, align 8, !tbaa !10
  %51 = icmp eq ptr %50, %45
  %52 = add i32 %47, 1
  br i1 %51, label %53, label %46, !llvm.loop !89

53:                                               ; preds = %46
  %54 = shl nuw nsw i64 %48, 3
  %55 = call ptr @xmalloc(i64 noundef %54) #20
  %56 = load ptr, ptr %8, align 8, !tbaa !26
  %57 = call fastcc ptr @single_succ_edge(ptr noundef %56) #19
  %58 = getelementptr inbounds ptr, ptr %43, i64 1
  %59 = call zeroext i8 @gimple_duplicate_sese_tail(ptr noundef %57, ptr noundef nonnull %7, ptr noundef nonnull %58, i32 noundef %47, ptr noundef %55) #20
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %53
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1339, ptr noundef nonnull @.str.9) #20
  br label %62

62:                                               ; preds = %53, %61
  call void @free(ptr noundef nonnull %43) #19
  %63 = load ptr, ptr %55, align 8, !tbaa !10
  call void @free(ptr noundef %55) #19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #18
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef %63) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !54
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #18
  %64 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #19, !range !21
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %66, label %114

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.tree_ssa_name, ptr %42, i64 0, i32 1
  br label %68

68:                                               ; preds = %66, %107
  %69 = phi ptr [ %7, %66 ], [ %83, %107 ]
  %70 = phi ptr [ null, %66 ], [ %76, %107 ]
  br label %71

71:                                               ; preds = %68, %95
  %72 = phi ptr [ %69, %68 ], [ %83, %95 ]
  br label %73

73:                                               ; preds = %71, %79
  %74 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #19
  %75 = call fastcc ptr @gimple_phi_result_ptr(ptr noundef %74) #19
  %76 = call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %75) #19
  %77 = call zeroext i8 @is_gimple_reg(ptr noundef %76) #20
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %73
  call fastcc void @gsi_next(ptr noundef nonnull %4) #19
  %80 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #19, !range !21
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %73, label %110, !llvm.loop !90

82:                                               ; preds = %73
  %83 = call ptr @single_dom_exit(ptr noundef %0) #20
  %84 = call i64 @htab_elements(ptr noundef %1) #20
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %99, label %86

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.edge_def, ptr %83, i64 0, i32 6
  %88 = load i32, ptr %87, align 4, !tbaa !50
  %89 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %74, i32 noundef %88) #19
  %90 = call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %89) #19
  %91 = getelementptr inbounds %struct.tree_ssa_name, ptr %90, i64 0, i32 2
  %92 = load ptr, ptr %91, align 8, !tbaa !34
  %93 = call fastcc ptr @reduction_phi(ptr noundef %1, ptr noundef %92) #19
  %94 = icmp eq ptr %93, null
  br i1 %94, label %99, label %95

95:                                               ; preds = %86
  %96 = getelementptr inbounds %struct.reduction_info, ptr %93, i64 0, i32 3
  store ptr %74, ptr %96, align 8, !tbaa !91
  call fastcc void @gsi_next(ptr noundef nonnull %4) #19
  %97 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #19, !range !21
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %71, label %110

99:                                               ; preds = %86, %82
  %100 = icmp eq ptr %70, null
  br i1 %100, label %101, label %106

101:                                              ; preds = %99
  %102 = getelementptr inbounds %struct.tree_ssa_name, ptr %76, i64 0, i32 1
  %103 = load ptr, ptr %102, align 8, !tbaa !34
  %104 = load ptr, ptr %67, align 8, !tbaa !34
  %105 = icmp eq ptr %103, %104
  br i1 %105, label %107, label %106

106:                                              ; preds = %101, %99
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1379, ptr noundef nonnull @.str.9) #20
  br label %107

107:                                              ; preds = %101, %106
  call void @remove_phi_node(ptr noundef nonnull %4, i8 noundef zeroext 0) #20
  %108 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #19, !range !21
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %68, label %110, !llvm.loop !90

110:                                              ; preds = %107, %95, %79
  %111 = phi ptr [ %70, %79 ], [ %70, %95 ], [ %76, %107 ]
  %112 = phi ptr [ %72, %79 ], [ %83, %95 ], [ %83, %107 ]
  %113 = icmp eq ptr %111, null
  br i1 %113, label %114, label %116

114:                                              ; preds = %62, %110
  %115 = phi ptr [ %112, %110 ], [ %7, %62 ]
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1383, ptr noundef nonnull @.str.9) #20
  br label %116

116:                                              ; preds = %110, %114
  %117 = phi ptr [ %112, %110 ], [ %115, %114 ]
  %118 = phi ptr [ %111, %110 ], [ null, %114 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #18
  call fastcc void @gsi_after_labels(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %6, ptr noundef %63) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !54
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #18
  %119 = load ptr, ptr %117, align 8, !tbaa !22
  %120 = call ptr @last_stmt(ptr noundef %119) #20
  %121 = call fastcc ptr @gimple_cond_rhs(ptr noundef %120) #19
  %122 = getelementptr inbounds %struct.tree_common, ptr %118, i64 0, i32 2
  %123 = load ptr, ptr %122, align 8, !tbaa !34
  %124 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %123, ptr noundef %121) #20
  %125 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %4, ptr noundef %124, i8 noundef zeroext 0, ptr noundef null, i8 noundef zeroext 0, i32 noundef 1) #20
  %126 = call ptr @gimple_build_assign_stat(ptr noundef %118, ptr noundef %125) #20
  call void @gsi_insert_before(ptr noundef nonnull %4, ptr noundef %126, i32 noundef 0) #20
  %127 = getelementptr inbounds %struct.tree_ssa_name, ptr %118, i64 0, i32 2
  store ptr %126, ptr %127, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #18
  ret void
}

; Function Attrs: optsize
declare void @htab_traverse(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @initialize_reductions(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !10
  %4 = getelementptr inbounds %struct.reduction_info, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !35
  %6 = tail call fastcc ptr @gimple_phi_result_ptr(ptr noundef %5) #19
  %7 = tail call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %6) #19
  %8 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  %10 = tail call ptr @create_tmp_var(ptr noundef %9, ptr noundef nonnull @.str.28) #20
  %11 = tail call zeroext i8 @add_referenced_var(ptr noundef %10) #20
  %12 = load ptr, ptr %3, align 8, !tbaa !52
  %13 = tail call fastcc i32 @gimple_location(ptr noundef %12) #19
  %14 = tail call ptr @build_omp_clause(i32 noundef %13, i32 noundef 5) #20
  %15 = getelementptr inbounds %struct.reduction_info, ptr %3, i64 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !84
  %17 = getelementptr inbounds %struct.tree_omp_clause, ptr %14, i64 0, i32 3
  store i32 %16, ptr %17, align 8, !tbaa !34
  %18 = load ptr, ptr %3, align 8, !tbaa !52
  %19 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %18) #19
  %20 = getelementptr inbounds %struct.tree_ssa_name, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !34
  %22 = getelementptr inbounds %struct.tree_omp_clause, ptr %14, i64 0, i32 6
  store ptr %21, ptr %22, align 8, !tbaa !34
  %23 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !34
  %25 = tail call ptr @omp_reduction_init(ptr noundef %14, ptr noundef %24) #20
  %26 = getelementptr inbounds %struct.reduction_info, ptr %3, i64 0, i32 6
  store ptr %25, ptr %26, align 8, !tbaa !92
  %27 = tail call ptr @loop_preheader_edge(ptr noundef %1) #20
  %28 = load ptr, ptr %4, align 8, !tbaa !35
  %29 = getelementptr inbounds %struct.edge_def, ptr %27, i64 0, i32 6
  %30 = load i32, ptr %29, align 4, !tbaa !50
  %31 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %28, i32 noundef %30) #19
  %32 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %31) #19
  %33 = load ptr, ptr %4, align 8, !tbaa !35
  %34 = tail call ptr @loop_preheader_edge(ptr noundef %1) #20
  %35 = getelementptr inbounds %struct.edge_def, ptr %34, i64 0, i32 6
  %36 = load i32, ptr %35, align 4, !tbaa !50
  %37 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %33, i32 noundef %36) #19
  tail call fastcc void @set_ssa_use_from_ptr(ptr noundef nonnull %37, ptr noundef %25) #19
  %38 = getelementptr inbounds %struct.reduction_info, ptr %3, i64 0, i32 4
  store ptr %32, ptr %38, align 8, !tbaa !93
  ret i32 1
}

; Function Attrs: optsize
declare ptr @single_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @eliminate_local_variables(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #18
  %6 = tail call fastcc ptr @VEC_basic_block_heap_alloc() #19
  store ptr %6, ptr %4, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #18
  %7 = tail call ptr @htab_create(i64 noundef 10, ptr noundef nonnull @int_tree_map_hash, ptr noundef nonnull @int_tree_map_eq, ptr noundef nonnull @free) #20
  %8 = load ptr, ptr %0, align 8, !tbaa !22
  %9 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !49
  call void @gather_blocks_in_sese_region(ptr noundef %8, ptr noundef %10, ptr noundef nonnull %4) #20
  %11 = load ptr, ptr %4, align 8
  %12 = call fastcc i32 @VEC_basic_block_base_iterate(ptr noundef %11, i32 noundef 0, ptr noundef nonnull %3) #19, !range !63
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %32, label %14

14:                                               ; preds = %2, %27
  %15 = phi i32 [ %28, %27 ], [ 0, %2 ]
  %16 = load ptr, ptr %3, align 8, !tbaa !10
  %17 = icmp eq ptr %16, %8
  %18 = icmp eq ptr %16, %10
  %19 = or i1 %17, %18
  br i1 %19, label %27, label %20

20:                                               ; preds = %14
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef %16) #19
  %21 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #19, !range !21
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %20, %23
  %24 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #19
  call fastcc void @eliminate_local_variables_stmt(ptr noundef nonnull %0, ptr noundef %24, ptr noundef %7) #19
  call fastcc void @gsi_next(ptr noundef nonnull %5) #19
  %25 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #19, !range !21
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %23, label %27, !llvm.loop !94

27:                                               ; preds = %23, %20, %14
  %28 = add i32 %15, 1
  %29 = load ptr, ptr %4, align 8
  %30 = call fastcc i32 @VEC_basic_block_base_iterate(ptr noundef %29, i32 noundef %28, ptr noundef nonnull %3) #19, !range !63
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %14, !llvm.loop !95

32:                                               ; preds = %27, %2
  call void @htab_delete(ptr noundef %7) #20
  call fastcc void @VEC_basic_block_heap_free(ptr noundef nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @separate_decls_in_region(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4, ptr noundef %5) unnamed_addr #0 {
  %7 = alloca %struct.gimple_stmt_iterator, align 8
  %8 = alloca %struct.clsn_data, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca %struct.gimple_stmt_iterator, align 8
  %12 = alloca %struct.gimple_stmt_iterator, align 8
  %13 = tail call ptr @split_edge(ptr noundef %0) #20
  %14 = tail call fastcc ptr @single_pred(ptr noundef %13) #19
  %15 = tail call ptr @htab_create(i64 noundef 10, ptr noundef nonnull @name_to_copy_elt_hash, ptr noundef nonnull @name_to_copy_elt_eq, ptr noundef nonnull @free) #20
  %16 = tail call ptr @htab_create(i64 noundef 10, ptr noundef nonnull @int_tree_map_hash, ptr noundef nonnull @int_tree_map_eq, ptr noundef nonnull @free) #20
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #18
  %17 = tail call fastcc ptr @VEC_basic_block_heap_alloc() #19
  store ptr %17, ptr %9, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #18
  %18 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !49
  %20 = tail call fastcc ptr @single_succ_edge(ptr noundef %13) #19
  call void @gather_blocks_in_sese_region(ptr noundef %13, ptr noundef %19, ptr noundef nonnull %9) #20
  %21 = load ptr, ptr %9, align 8
  %22 = call fastcc i32 @VEC_basic_block_base_iterate(ptr noundef %21, i32 noundef 0, ptr noundef nonnull %10) #19, !range !63
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %88, label %24

24:                                               ; preds = %6, %51
  %25 = phi i32 [ %53, %51 ], [ 0, %6 ]
  %26 = phi i8 [ %52, %51 ], [ 0, %6 ]
  %27 = load ptr, ptr %10, align 8, !tbaa !10
  %28 = icmp eq ptr %27, %13
  %29 = icmp eq ptr %27, %19
  %30 = select i1 %28, i1 true, i1 %29
  br i1 %30, label %51, label %31

31:                                               ; preds = %24
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %7, ptr noundef %27) #20
  %32 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %7) #19, !range !21
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %31, %34
  %35 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %7) #19
  call fastcc void @separate_decls_in_region_stmt(ptr noundef %20, ptr noundef %1, ptr noundef %35, ptr noundef %15, ptr noundef %16) #19
  call fastcc void @gsi_next(ptr noundef nonnull %7) #19
  %36 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %7) #19, !range !21
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %34, label %38, !llvm.loop !96

38:                                               ; preds = %34, %31
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #18
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %11, ptr noundef %27) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %11, i64 24, i1 false), !tbaa.struct !54
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #18
  %39 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %7) #19, !range !21
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %38, %47
  %42 = phi i8 [ %48, %47 ], [ %26, %38 ]
  %43 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %7) #19
  %44 = call fastcc zeroext i8 @is_gimple_debug(ptr noundef %43) #19, !range !21
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  call fastcc void @separate_decls_in_region_stmt(ptr noundef %20, ptr noundef %1, ptr noundef %43, ptr noundef %15, ptr noundef %16) #19
  br label %47

47:                                               ; preds = %41, %46
  %48 = phi i8 [ %42, %46 ], [ 1, %41 ]
  call fastcc void @gsi_next(ptr noundef nonnull %7) #19
  %49 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %7) #19, !range !21
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %41, label %51, !llvm.loop !97

51:                                               ; preds = %47, %38, %24
  %52 = phi i8 [ %26, %24 ], [ %26, %38 ], [ %48, %47 ]
  %53 = add i32 %25, 1
  %54 = load ptr, ptr %9, align 8
  %55 = call fastcc i32 @VEC_basic_block_base_iterate(ptr noundef %54, i32 noundef %53, ptr noundef nonnull %10) #19, !range !63
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %24, !llvm.loop !98

57:                                               ; preds = %51
  %58 = icmp eq i8 %52, 0
  br i1 %58, label %88, label %59

59:                                               ; preds = %57
  %60 = call fastcc i32 @VEC_basic_block_base_iterate(ptr noundef %54, i32 noundef 0, ptr noundef nonnull %10) #19, !range !63
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %88, label %62

62:                                               ; preds = %59, %83
  %63 = phi i32 [ %84, %83 ], [ 0, %59 ]
  %64 = load ptr, ptr %10, align 8, !tbaa !10
  %65 = icmp eq ptr %64, %13
  %66 = icmp eq ptr %64, %19
  %67 = select i1 %65, i1 true, i1 %66
  br i1 %67, label %83, label %68

68:                                               ; preds = %62
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %12) #18
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %12, ptr noundef %64) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %12, i64 24, i1 false), !tbaa.struct !54
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12) #18
  %69 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %7) #19, !range !21
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %71, label %83

71:                                               ; preds = %68, %80
  %72 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %7) #19
  %73 = call fastcc zeroext i8 @gimple_debug_bind_p(ptr noundef %72) #19, !range !21
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %71
  %76 = call fastcc zeroext i8 @separate_decls_in_region_debug_bind(ptr noundef %72, ptr noundef %15, ptr noundef %16) #19, !range !21
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %75
  call void @gsi_remove(ptr noundef nonnull %7, i8 noundef zeroext 1) #20
  br label %80, !llvm.loop !99

79:                                               ; preds = %75, %71
  call fastcc void @gsi_next(ptr noundef nonnull %7) #19
  br label %80

80:                                               ; preds = %79, %78
  %81 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %7) #19, !range !21
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %71, label %83

83:                                               ; preds = %80, %68, %62
  %84 = add i32 %63, 1
  %85 = load ptr, ptr %9, align 8
  %86 = call fastcc i32 @VEC_basic_block_base_iterate(ptr noundef %85, i32 noundef %84, ptr noundef nonnull %10) #19, !range !63
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %62, !llvm.loop !100

88:                                               ; preds = %83, %6, %59, %57
  call fastcc void @VEC_basic_block_heap_free(ptr noundef nonnull %9) #19
  %89 = call i64 @htab_elements(ptr noundef %15) #20
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %88
  %92 = call i64 @htab_elements(ptr noundef %2) #20
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %91
  store ptr null, ptr %3, align 8, !tbaa !10
  store ptr null, ptr %4, align 8, !tbaa !10
  br label %127

95:                                               ; preds = %91, %88
  %96 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34), align 8, !tbaa !101
  %97 = call ptr %96(i32 noundef 16) #20
  %98 = call ptr @create_tmp_var_name(ptr noundef nonnull @.str.29) #20
  %99 = call ptr @build_decl_stat(i32 noundef 1, i32 noundef 35, ptr noundef %98, ptr noundef %97) #20
  %100 = getelementptr inbounds %struct.tree_type, ptr %97, i64 0, i32 12
  store ptr %99, ptr %100, align 8, !tbaa !34
  call void @htab_traverse(ptr noundef %15, ptr noundef nonnull @add_field_for_name, ptr noundef %97) #20
  %101 = icmp eq ptr %2, null
  br i1 %101, label %106, label %102

102:                                              ; preds = %95
  %103 = call i64 @htab_elements(ptr noundef nonnull %2) #20
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %102
  call void @htab_traverse(ptr noundef nonnull %2, ptr noundef nonnull @add_field_for_reduction, ptr noundef nonnull %97) #20
  br label %106

106:                                              ; preds = %105, %102, %95
  call void @layout_type(ptr noundef nonnull %97) #20
  %107 = call ptr @create_tmp_var(ptr noundef nonnull %97, ptr noundef nonnull @.str.30) #20
  store ptr %107, ptr %3, align 8, !tbaa !10
  %108 = call zeroext i8 @add_referenced_var(ptr noundef %107) #20
  %109 = call ptr @build_pointer_type(ptr noundef nonnull %97) #20
  %110 = call ptr @create_tmp_var(ptr noundef %109, ptr noundef nonnull @.str.31) #20
  %111 = call zeroext i8 @add_referenced_var(ptr noundef %110) #20
  %112 = call fastcc ptr @make_ssa_name(ptr noundef %110, ptr noundef null) #19
  store ptr %112, ptr %4, align 8, !tbaa !10
  %113 = load ptr, ptr %3, align 8, !tbaa !10
  store ptr %113, ptr %5, align 8, !tbaa !109
  %114 = load ptr, ptr %4, align 8, !tbaa !10
  %115 = getelementptr inbounds %struct.clsn_data, ptr %5, i64 0, i32 1
  store ptr %114, ptr %115, align 8, !tbaa !111
  %116 = getelementptr inbounds %struct.clsn_data, ptr %5, i64 0, i32 2
  store ptr %14, ptr %116, align 8, !tbaa !112
  %117 = getelementptr inbounds %struct.clsn_data, ptr %5, i64 0, i32 3
  store ptr %13, ptr %117, align 8, !tbaa !113
  call void @htab_traverse(ptr noundef %15, ptr noundef nonnull @create_loads_and_stores_for_name, ptr noundef nonnull %5) #20
  br i1 %101, label %127, label %118

118:                                              ; preds = %106
  %119 = call i64 @htab_elements(ptr noundef nonnull %2) #20
  %120 = icmp eq i64 %119, 0
  br i1 %120, label %127, label %121

121:                                              ; preds = %118
  call void @htab_traverse(ptr noundef nonnull %2, ptr noundef nonnull @create_stores_for_reduction, ptr noundef nonnull %5) #20
  %122 = call fastcc ptr @make_ssa_name(ptr noundef %110, ptr noundef null) #19
  %123 = getelementptr inbounds %struct.clsn_data, ptr %8, i64 0, i32 1
  store ptr %122, ptr %123, align 8, !tbaa !111
  %124 = load ptr, ptr %18, align 8, !tbaa !49
  %125 = getelementptr inbounds %struct.clsn_data, ptr %8, i64 0, i32 3
  store ptr %124, ptr %125, align 8, !tbaa !113
  %126 = load ptr, ptr %5, align 8, !tbaa !109
  store ptr %126, ptr %8, align 8, !tbaa !109
  call fastcc void @create_final_loads_for_reduction(ptr noundef nonnull %2, ptr noundef nonnull %8) #19
  br label %127

127:                                              ; preds = %106, %118, %121, %94
  call void @htab_delete(ptr noundef %16) #20
  call void @htab_delete(ptr noundef %15) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @create_parallel_loop(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = alloca %struct.gimple_stmt_iterator, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca %struct.gimple_stmt_iterator, align 8
  %10 = alloca %struct.gimple_stmt_iterator, align 8
  %11 = alloca %struct.gimple_stmt_iterator, align 8
  %12 = alloca %struct.gimple_stmt_iterator, align 8
  %13 = alloca %struct.gimple_stmt_iterator, align 8
  %14 = alloca %struct.gimple_stmt_iterator, align 8
  %15 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #18
  %16 = tail call ptr @loop_preheader_edge(ptr noundef %0) #20
  %17 = load ptr, ptr %16, align 8, !tbaa !22
  %18 = tail call fastcc ptr @single_pred(ptr noundef %17) #19
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %6, ptr noundef %18) #19
  %19 = tail call ptr @build_omp_clause(i32 noundef 1, i32 noundef 9) #20
  %20 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !10
  %21 = zext i32 %4 to i64
  %22 = tail call ptr @build_int_cst(ptr noundef %20, i64 noundef %21) #20
  %23 = getelementptr inbounds %struct.tree_omp_clause, ptr %19, i64 0, i32 6
  store ptr %22, ptr %23, align 8, !tbaa !34
  %24 = tail call ptr @gimple_build_omp_parallel(ptr noundef null, ptr noundef %19, ptr noundef %1, ptr noundef %2) #20
  call void @gsi_insert_after(ptr noundef nonnull %6, ptr noundef %24, i32 noundef 0) #20
  %25 = icmp eq ptr %2, null
  br i1 %25, label %38, label %26

26:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #18
  call fastcc void @gsi_after_labels(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %9, ptr noundef %17) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false), !tbaa.struct !54
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #18
  %27 = getelementptr inbounds %struct.tree_decl_non_common, ptr %1, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !34
  %29 = call fastcc ptr @make_ssa_name(ptr noundef %28, ptr noundef null) #19
  %30 = call ptr @build_fold_addr_expr_loc(i32 noundef 0, ptr noundef nonnull %2) #20
  %31 = call ptr @gimple_build_assign_stat(ptr noundef %29, ptr noundef %30) #20
  call void @gsi_insert_before(ptr noundef nonnull %6, ptr noundef %31, i32 noundef 1) #20
  %32 = getelementptr inbounds %struct.tree_ssa_name, ptr %29, i64 0, i32 2
  store ptr %31, ptr %32, align 8, !tbaa !34
  %33 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !34
  %35 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %34, ptr noundef %29) #20
  %36 = call ptr @gimple_build_assign_stat(ptr noundef %3, ptr noundef %35) #20
  call void @gsi_insert_before(ptr noundef nonnull %6, ptr noundef %36, i32 noundef 1) #20
  %37 = getelementptr inbounds %struct.tree_ssa_name, ptr %3, i64 0, i32 2
  store ptr %36, ptr %37, align 8, !tbaa !34
  br label %38

38:                                               ; preds = %26, %5
  %39 = call ptr @single_dom_exit(ptr noundef %0) #20
  %40 = call ptr @split_loop_exit_edge(ptr noundef %39) #20
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #18
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %10, ptr noundef %40) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false), !tbaa.struct !54
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #18
  %41 = call ptr @gimple_build_omp_return(i8 noundef zeroext 0) #20
  call void @gsi_insert_after(ptr noundef nonnull %6, ptr noundef %41, i32 noundef 0) #20
  %42 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !26
  %44 = call ptr @single_dom_exit(ptr noundef %0) #20
  %45 = load ptr, ptr %44, align 8, !tbaa !22
  %46 = icmp eq ptr %43, %45
  br i1 %46, label %48, label %47

47:                                               ; preds = %38
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1449, ptr noundef nonnull @.str.9) #20
  br label %48

48:                                               ; preds = %38, %47
  %49 = load ptr, ptr %42, align 8, !tbaa !26
  %50 = call ptr @last_stmt(ptr noundef %49) #20
  %51 = call fastcc ptr @gimple_cond_lhs(ptr noundef %50) #19
  %52 = getelementptr inbounds %struct.tree_ssa_name, ptr %51, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !34
  %54 = getelementptr inbounds %struct.tree_ssa_name, ptr %51, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !34
  %56 = call ptr @loop_preheader_edge(ptr noundef nonnull %0) #20
  %57 = getelementptr inbounds %struct.edge_def, ptr %56, i64 0, i32 6
  %58 = load i32, ptr %57, align 4, !tbaa !50
  %59 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %55, i32 noundef %58) #19
  %60 = call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %59) #19
  %61 = call fastcc ptr @make_ssa_name(ptr noundef %53, ptr noundef null) #19
  %62 = call ptr @loop_preheader_edge(ptr noundef nonnull %0) #20
  %63 = getelementptr inbounds %struct.edge_def, ptr %62, i64 0, i32 6
  %64 = load i32, ptr %63, align 4, !tbaa !50
  %65 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %55, i32 noundef %64) #19
  call fastcc void @set_ssa_use_from_ptr(ptr noundef nonnull %65, ptr noundef %61) #19
  %66 = call ptr @loop_latch_edge(ptr noundef nonnull %0) #20
  %67 = getelementptr inbounds %struct.edge_def, ptr %66, i64 0, i32 6
  %68 = load i32, ptr %67, align 4, !tbaa !50
  %69 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %55, i32 noundef %68) #19
  %70 = call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %69) #19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #18
  %71 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 3
  %72 = load ptr, ptr %71, align 8, !tbaa !88
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %11, ptr noundef %72) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %11, i64 24, i1 false), !tbaa.struct !54
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #18
  %73 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %6) #19
  %74 = getelementptr inbounds %struct.tree_ssa_name, ptr %70, i64 0, i32 2
  %75 = load ptr, ptr %74, align 8, !tbaa !34
  %76 = icmp eq ptr %73, %75
  br i1 %76, label %78, label %77

77:                                               ; preds = %48
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1462, ptr noundef nonnull @.str.9) #20
  br label %78

78:                                               ; preds = %48, %77
  call void @gsi_remove(ptr noundef nonnull %6, i8 noundef zeroext 1) #20
  %79 = call ptr @loop_preheader_edge(ptr noundef nonnull %0) #20
  %80 = call ptr @split_edge(ptr noundef %79) #20
  %81 = call ptr @single_dom_exit(ptr noundef nonnull %0) #20
  %82 = call ptr @split_loop_exit_edge(ptr noundef %81) #20
  %83 = load ptr, ptr %42, align 8, !tbaa !26
  call void @extract_true_false_edges_from_block(ptr noundef %83, ptr noundef nonnull %8, ptr noundef nonnull %7) #20
  %84 = load ptr, ptr %7, align 8, !tbaa !10
  %85 = call ptr @single_dom_exit(ptr noundef nonnull %0) #20
  %86 = icmp eq ptr %84, %85
  br i1 %86, label %88, label %87

87:                                               ; preds = %78
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1469, ptr noundef nonnull @.str.9) #20
  br label %88

88:                                               ; preds = %78, %87
  %89 = call ptr @make_edge(ptr noundef %80, ptr noundef %82, i32 noundef 0) #20
  %90 = load ptr, ptr %71, align 8, !tbaa !88
  %91 = call fastcc ptr @single_succ_edge(ptr noundef %90) #19
  %92 = getelementptr inbounds %struct.edge_def, ptr %91, i64 0, i32 7
  store i32 0, ptr %92, align 8, !tbaa !114
  %93 = load ptr, ptr %71, align 8, !tbaa !88
  %94 = call ptr @make_edge(ptr noundef %93, ptr noundef %82, i32 noundef 1) #20
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %12) #18
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %12, ptr noundef %82) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %12, i64 24, i1 false), !tbaa.struct !54
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12) #18
  %95 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %6) #19, !range !21
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %97, label %122

97:                                               ; preds = %88, %97
  %98 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %6) #19
  %99 = load ptr, ptr %7, align 8, !tbaa !10
  %100 = getelementptr inbounds %struct.edge_def, ptr %99, i64 0, i32 6
  %101 = load i32, ptr %100, align 4, !tbaa !50
  %102 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %98, i32 noundef %101) #19
  %103 = call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %102) #19
  %104 = getelementptr inbounds %struct.tree_ssa_name, ptr %103, i64 0, i32 2
  %105 = load ptr, ptr %104, align 8, !tbaa !34
  %106 = call ptr @loop_preheader_edge(ptr noundef %0) #20
  %107 = getelementptr inbounds %struct.edge_def, ptr %106, i64 0, i32 6
  %108 = load i32, ptr %107, align 4, !tbaa !50
  %109 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %105, i32 noundef %108) #19
  %110 = call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %109) #19
  %111 = call ptr @loop_preheader_edge(ptr noundef %0) #20
  %112 = call fastcc i32 @gimple_phi_arg_location_from_edge(ptr noundef %105, ptr noundef %111) #19
  call void @add_phi_arg(ptr noundef %98, ptr noundef %110, ptr noundef %89, i32 noundef %112) #20
  %113 = call ptr @loop_latch_edge(ptr noundef %0) #20
  %114 = getelementptr inbounds %struct.edge_def, ptr %113, i64 0, i32 6
  %115 = load i32, ptr %114, align 4, !tbaa !50
  %116 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %105, i32 noundef %115) #19
  %117 = call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %116) #19
  %118 = call ptr @loop_latch_edge(ptr noundef %0) #20
  %119 = call fastcc i32 @gimple_phi_arg_location_from_edge(ptr noundef %105, ptr noundef %118) #19
  call void @add_phi_arg(ptr noundef %98, ptr noundef %117, ptr noundef %94, i32 noundef %119) #20
  call fastcc void @gsi_next(ptr noundef nonnull %6) #19
  %120 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %6) #19, !range !21
  %121 = icmp eq i8 %120, 0
  br i1 %121, label %97, label %122, !llvm.loop !115

122:                                              ; preds = %97, %88
  %123 = load ptr, ptr %7, align 8, !tbaa !10
  %124 = load ptr, ptr %8, align 8, !tbaa !10
  %125 = getelementptr inbounds %struct.edge_def, ptr %124, i64 0, i32 1
  %126 = load ptr, ptr %125, align 8, !tbaa !49
  %127 = call ptr @redirect_edge_and_branch(ptr noundef %123, ptr noundef %126) #20
  %128 = getelementptr inbounds %struct.edge_def, ptr %127, i64 0, i32 2
  store ptr null, ptr %128, align 8, !tbaa !34
  call fastcc void @gimple_cond_set_lhs(ptr noundef %50, ptr noundef %53) #19
  %129 = getelementptr inbounds %struct.tree_common, ptr %51, i64 0, i32 2
  %130 = load ptr, ptr %129, align 8, !tbaa !34
  %131 = call ptr @build_omp_clause(i32 noundef 1, i32 noundef 10) #20
  %132 = getelementptr inbounds %struct.tree_omp_clause, ptr %131, i64 0, i32 3
  store i32 0, ptr %132, align 8, !tbaa !34
  %133 = call ptr @gimple_build_omp_for(ptr noundef null, ptr noundef %131, i64 noundef 1, ptr noundef null) #20
  call fastcc void @gimple_omp_for_set_index(ptr noundef %133, ptr noundef %61) #19
  call fastcc void @gimple_omp_for_set_initial(ptr noundef %133, ptr noundef %60) #19
  %134 = call fastcc ptr @gimple_cond_rhs(ptr noundef %50) #19
  call fastcc void @gimple_omp_for_set_final(ptr noundef %133, ptr noundef %134) #19
  %135 = call fastcc i32 @gimple_cond_code(ptr noundef %50) #19, !range !83
  call fastcc void @gimple_omp_for_set_cond(ptr noundef %133, i32 noundef %135) #19
  %136 = call ptr @build_int_cst(ptr noundef %130, i64 noundef 1) #20
  %137 = call ptr @build2_stat(i32 noundef 63, ptr noundef %130, ptr noundef %53, ptr noundef %136) #20
  call fastcc void @gimple_omp_for_set_incr(ptr noundef %133, ptr noundef %137) #19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %13) #18
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %13, ptr noundef %80) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %13, i64 24, i1 false), !tbaa.struct !54
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %13) #18
  call void @gsi_insert_after(ptr noundef nonnull %6, ptr noundef %133, i32 noundef 0) #20
  %138 = getelementptr inbounds %struct.tree_ssa_name, ptr %61, i64 0, i32 2
  store ptr %133, ptr %138, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %14) #18
  %139 = load ptr, ptr %71, align 8, !tbaa !88
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %14, ptr noundef %139) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %14, i64 24, i1 false), !tbaa.struct !54
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %14) #18
  %140 = call ptr @gimple_build_omp_continue(ptr noundef %70, ptr noundef %51) #20
  call void @gsi_insert_after(ptr noundef nonnull %6, ptr noundef %140, i32 noundef 0) #20
  store ptr %140, ptr %74, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %15) #18
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %15, ptr noundef %82) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %15, i64 24, i1 false), !tbaa.struct !54
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %15) #18
  %141 = call ptr @gimple_build_omp_return(i8 noundef zeroext 1) #20
  call void @gsi_insert_after(ptr noundef nonnull %6, ptr noundef %141, i32 noundef 0) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #18
  ret ptr %18
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @create_loop_fn() unnamed_addr #0 {
  %1 = alloca [100 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %1) #18
  %2 = load ptr, ptr @cfun, align 8, !tbaa !10
  %3 = tail call ptr @current_function_name() #20
  %4 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %1, i64 noundef 100, ptr noundef nonnull @.str.33, ptr noundef %3) #19
  %5 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #19
  %6 = add i64 %5, 32
  %7 = alloca i8, i64 %6, align 16
  %8 = load i32, ptr @create_loop_fn.loopfn_num, align 4, !tbaa !6
  %9 = add i32 %8, 1
  store i32 %9, ptr @create_loop_fn.loopfn_num, align 4, !tbaa !6
  %10 = zext i32 %8 to i64
  %11 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) @.str.34, ptr noundef nonnull %1, i64 noundef %10) #19
  call void @clean_symbol_name(ptr noundef nonnull %7) #20
  %12 = call ptr @get_identifier(ptr noundef nonnull %7) #20
  %13 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !10
  %14 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !10
  %15 = call ptr (ptr, ...) @build_function_type_list(ptr noundef %13, ptr noundef %14, ptr noundef null) #20
  %16 = call ptr @build_decl_stat(i32 noundef 1, i32 noundef 29, ptr noundef %12, ptr noundef %15) #20
  %17 = load ptr, ptr @parallelized_functions, align 8, !tbaa !10
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %0
  %20 = call ptr @bitmap_gc_alloc_stat() #20
  store ptr %20, ptr @parallelized_functions, align 8, !tbaa !10
  br label %21

21:                                               ; preds = %19, %0
  %22 = phi ptr [ %20, %19 ], [ %17, %0 ]
  %23 = getelementptr inbounds %struct.tree_decl_minimal, ptr %16, i64 0, i32 2
  %24 = load i32, ptr %23, align 4, !tbaa !34
  %25 = call zeroext i8 @bitmap_set_bit(ptr noundef %22, i32 noundef %24) #20
  %26 = load i64, ptr %16, align 8
  %27 = getelementptr inbounds %struct.tree_decl_common, ptr %16, i64 0, i32 2
  %28 = load i64, ptr %27, align 8
  %29 = and i64 %26, -218103809
  %30 = or disjoint i64 %29, 83886080
  store i64 %30, ptr %16, align 8
  %31 = getelementptr inbounds %struct.tree_function_decl, ptr %16, i64 0, i32 5
  %32 = load i32, ptr %31, align 8
  %33 = or i32 %32, 32768
  store i32 %33, ptr %31, align 8
  %34 = and i64 %28, -33559553
  %35 = or disjoint i64 %34, 4096
  store i64 %35, ptr %27, align 8
  %36 = getelementptr inbounds %struct.tree_decl_minimal, ptr %16, i64 0, i32 4
  store ptr null, ptr %36, align 8, !tbaa !34
  %37 = call ptr @make_node_stat(i32 noundef 4) #20
  %38 = getelementptr inbounds %struct.tree_decl_common, ptr %16, i64 0, i32 5
  store ptr %37, ptr %38, align 8, !tbaa !34
  %39 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !10
  %40 = call ptr @build_decl_stat(i32 noundef 1, i32 noundef 36, ptr noundef null, ptr noundef %39) #20
  %41 = getelementptr inbounds %struct.tree_decl_common, ptr %40, i64 0, i32 2
  %42 = load i64, ptr %41, align 8
  %43 = or i64 %42, 5120
  store i64 %43, ptr %41, align 8
  %44 = getelementptr inbounds %struct.tree_decl_non_common, ptr %16, i64 0, i32 3
  store ptr %40, ptr %44, align 8, !tbaa !34
  %45 = call ptr @get_identifier(ptr noundef nonnull @.str.35) #20
  %46 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !10
  %47 = call ptr @build_decl_stat(i32 noundef 1, i32 noundef 34, ptr noundef %45, ptr noundef %46) #20
  %48 = getelementptr inbounds %struct.tree_decl_common, ptr %47, i64 0, i32 2
  %49 = load i64, ptr %48, align 8
  %50 = or i64 %49, 4096
  store i64 %50, ptr %48, align 8
  %51 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !10
  %52 = getelementptr inbounds %struct.tree_decl_common, ptr %47, i64 0, i32 5
  store ptr %51, ptr %52, align 8, !tbaa !34
  %53 = getelementptr inbounds %struct.tree_decl_minimal, ptr %47, i64 0, i32 4
  store ptr %16, ptr %53, align 8, !tbaa !34
  %54 = load i64, ptr %47, align 8
  %55 = or i64 %54, 16777216
  store i64 %55, ptr %47, align 8
  %56 = getelementptr inbounds %struct.tree_decl_non_common, ptr %16, i64 0, i32 2
  store ptr %47, ptr %56, align 8, !tbaa !34
  call void @allocate_struct_function(ptr noundef nonnull %16, i8 noundef zeroext 0) #20
  call void @set_cfun(ptr noundef %2) #20
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %1) #18
  ret ptr %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @create_call_for_reduction(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  tail call void @htab_traverse(ptr noundef %1, ptr noundef nonnull @create_phi_for_local_result, ptr noundef %0) #20
  %4 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !88
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !116
  %8 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %7, i32 noundef 0) #19
  %9 = getelementptr inbounds %struct.edge_def, ptr %8, i64 0, i32 7
  %10 = load i32, ptr %9, align 8, !tbaa !114
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %7, i32 noundef 1) #19
  br label %15

15:                                               ; preds = %3, %13
  %16 = phi ptr [ %14, %13 ], [ %8, %3 ]
  %17 = getelementptr inbounds %struct.edge_def, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !49
  %19 = getelementptr inbounds %struct.clsn_data, ptr %2, i64 0, i32 3
  store ptr %18, ptr %19, align 8, !tbaa !113
  tail call void @htab_traverse(ptr noundef %1, ptr noundef nonnull @create_call_for_reduction_1, ptr noundef %2) #20
  ret void
}

; Function Attrs: optsize
declare void @scev_reset() local_unnamed_addr #2

; Function Attrs: optsize
declare void @cancel_loop_tree(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @free_numbers_of_iterations_estimates_loop(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @omp_expand_local(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @split_block_after_labels(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @single_succ_edge(ptr noundef %0) #19
  %3 = getelementptr inbounds %struct.edge_def, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !49
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ_edge(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %0) #19, !range !21
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.27, i32 noundef 645, ptr noundef nonnull @.str.9) #20
  br label %5

5:                                                ; preds = %1, %4
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !116
  %8 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %7, i32 noundef 0) #19
  ret ptr %8
}

; Function Attrs: optsize
declare ptr @last_stmt(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_cond_lhs(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #19
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_cond_rhs(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #19
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @make_ssa_name(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr @cfun, align 8, !tbaa !10
  %4 = tail call ptr @make_ssa_name_fn(ptr noundef %3, ptr noundef %0, ptr noundef %1) #20
  ret ptr %4
}

; Function Attrs: optsize
declare ptr @create_phi_node(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @add_phi_arg(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_cond_set_lhs(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 0, ptr noundef %1) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_stmt(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #19, !range !21
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @gimple_set_modified(ptr noundef %0, i8 noundef zeroext 1) #20
  tail call void @update_stmt_operands(ptr noundef %0) #20
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @gimple_duplicate_sese_tail(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @remove_phi_node(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_after_labels(ptr dead_on_unwind noalias nocapture writable sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #11 {
  tail call fastcc void @gsi_start_bb(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) #19
  %3 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #19, !range !21
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %2, %9
  %6 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #19
  %7 = tail call fastcc i32 @gimple_code(ptr noundef %6) #19, !range !85
  %8 = icmp eq i32 %7, 4
  br i1 %8, label %9, label %12

9:                                                ; preds = %5
  tail call fastcc void @gsi_next(ptr noundef %0) #19
  %10 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #19, !range !21
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %5, label %12, !llvm.loop !117

12:                                               ; preds = %5, %9, %2
  ret void
}

; Function Attrs: optsize
declare ptr @force_gimple_operand_gsi(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @fold_convert_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gimple_build_assign_stat(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @gsi_insert_before(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_succ_p(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !116
  %4 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %3) #19
  %5 = icmp eq i32 %4, 1
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #3 {
  %3 = zext nneg i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !10
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !118
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: optsize
declare ptr @make_ssa_name_fn(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_set_op(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #19, !range !21
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #19
  %8 = icmp ugt i32 %7, %1
  br i1 %8, label %10, label %9

9:                                                ; preds = %6, %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 1665, ptr noundef nonnull @.str.9) #20
  br label %10

10:                                               ; preds = %6, %9
  %11 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #19
  %12 = zext nneg i32 %1 to i64
  %13 = getelementptr inbounds ptr, ptr %11, i64 %12
  store ptr %2, ptr %13, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_num_ops(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !34
  ret i32 %3
}

; Function Attrs: optsize
declare void @gimple_set_modified(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @update_stmt_operands(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #10 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #19
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #19
  store ptr %4, ptr %0, align 8, !tbaa !71
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !120
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !121
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !24
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !122
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !124
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: optsize
declare ptr @create_tmp_var(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @add_referenced_var(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build_omp_clause(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_location(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !34
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_lhs(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #19
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @omp_reduction_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @set_ssa_use_from_ptr(ptr noundef %0, ptr noundef %1) unnamed_addr #12 {
  tail call fastcc void @delink_imm_use(ptr noundef %0) #19
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !77
  store ptr %1, ptr %4, align 8, !tbaa !10
  tail call fastcc void @link_imm_use(ptr noundef %0, ptr noundef %1) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @delink_imm_use(ptr nocapture noundef %0) unnamed_addr #12 {
  %2 = load ptr, ptr %0, align 8, !tbaa !126
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !81
  %7 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  store ptr %6, ptr %7, align 8, !tbaa !81
  store ptr %2, ptr %6, align 8, !tbaa !126
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %8

8:                                                ; preds = %1, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @link_imm_use(ptr noundef %0, ptr noundef %1) unnamed_addr #12 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %9, label %8

8:                                                ; preds = %4, %2
  store ptr null, ptr %0, align 8, !tbaa !126
  br label %11

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5
  tail call fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef nonnull %10) #19
  br label %11

11:                                               ; preds = %9, %8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef %1) unnamed_addr #12 {
  store ptr %1, ptr %0, align 8, !tbaa !126
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !81
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !81
  store ptr %0, ptr %4, align 8, !tbaa !126
  store ptr %0, ptr %3, align 8, !tbaa !81
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_basic_block_heap_alloc() unnamed_addr #0 {
  %1 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 3) #20
  ret ptr %1
}

; Function Attrs: optsize
declare i32 @int_tree_map_hash(ptr noundef) #2

; Function Attrs: optsize
declare i32 @int_tree_map_eq(ptr noundef, ptr noundef) #2

; Function Attrs: optsize
declare void @gather_blocks_in_sese_region(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_basic_block_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #7 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !127
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !10
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !10
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @eliminate_local_variables_stmt(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.elv_data, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %4) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false)
  %5 = getelementptr inbounds %struct.elv_data, ptr %4, i64 0, i32 1
  store ptr %0, ptr %5, align 8, !tbaa !129
  %6 = getelementptr inbounds %struct.elv_data, ptr %4, i64 0, i32 2
  store ptr %2, ptr %6, align 8, !tbaa !132
  %7 = getelementptr inbounds %struct.elv_data, ptr %4, i64 0, i32 3
  store i8 0, ptr %7, align 8, !tbaa !133
  %8 = tail call fastcc zeroext i8 @gimple_debug_bind_p(ptr noundef %1) #19, !range !21
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = tail call fastcc ptr @gimple_debug_bind_get_value_ptr(ptr noundef %1) #19
  %12 = call ptr @walk_tree_1(ptr noundef %11, ptr noundef nonnull @eliminate_local_variables_1, ptr noundef nonnull %4, ptr noundef null, ptr noundef null) #20
  br label %15

13:                                               ; preds = %3
  %14 = call ptr @walk_gimple_op(ptr noundef %1, ptr noundef nonnull @eliminate_local_variables_1, ptr noundef nonnull %4) #20
  br label %15

15:                                               ; preds = %13, %10
  %16 = load i8, ptr %7, align 8, !tbaa !133
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %15
  call fastcc void @update_stmt(ptr noundef %1) #19
  br label %19

19:                                               ; preds = %18, %15
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %4) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_basic_block_heap_free(ptr nocapture noundef %0) unnamed_addr #13 {
  %2 = load ptr, ptr %0, align 8, !tbaa !10
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #19
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #14

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_debug_bind_p(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %0) #19, !range !21
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %0, align 8
  %6 = icmp ult i32 %5, 65536
  %7 = zext i1 %6 to i8
  br label %8

8:                                                ; preds = %1, %4
  %9 = phi i8 [ %7, %4 ], [ 0, %1 ]
  ret i8 %9
}

; Function Attrs: optsize
declare ptr @walk_tree_1(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_debug_bind_get_value_ptr(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op_ptr(ptr noundef %0) #19
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noalias noundef ptr @eliminate_local_variables_1(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef %2) #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !10
  %5 = load i64, ptr %4, align 8
  %6 = and i64 %5, 65535
  %7 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !6
  %9 = icmp eq i32 %8, 3
  br i1 %9, label %10, label %37

10:                                               ; preds = %3
  store i32 0, ptr %1, align 4, !tbaa !6
  %11 = load i64, ptr %4, align 8
  %12 = trunc i64 %11 to i16
  switch i16 %12, label %73 [
    i16 32, label %18
    i16 34, label %18
    i16 36, label %18
    i16 141, label %13
  ]

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.tree_ssa_name, ptr %4, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !34
  %16 = load i64, ptr %15, align 8
  %17 = trunc i64 %16 to i16
  switch i16 %17, label %73 [
    i16 32, label %18
    i16 34, label %18
    i16 36, label %18
  ]

18:                                               ; preds = %13, %13, %13, %10, %10, %10
  %19 = getelementptr inbounds %struct.tree_decl_common, ptr %4, i64 0, i32 2
  %20 = load i64, ptr %19, align 8
  %21 = and i64 %20, 33554432
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %73

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !34
  %26 = tail call ptr @build_pointer_type(ptr noundef %25) #20
  %27 = getelementptr inbounds %struct.elv_data, ptr %2, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !129
  %29 = getelementptr inbounds %struct.elv_data, ptr %2, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !132
  %31 = tail call fastcc ptr @take_address_of(ptr noundef nonnull %4, ptr noundef %26, ptr noundef %28, ptr noundef %30) #19
  %32 = load ptr, ptr %0, align 8, !tbaa !10
  %33 = getelementptr inbounds %struct.tree_common, ptr %32, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !34
  %35 = tail call ptr @build1_stat(i32 noundef 47, ptr noundef %34, ptr noundef %31) #20
  store ptr %35, ptr %0, align 8, !tbaa !10
  %36 = getelementptr inbounds %struct.elv_data, ptr %2, i64 0, i32 3
  store i8 1, ptr %36, align 8, !tbaa !133
  br label %73

37:                                               ; preds = %3
  %38 = icmp eq i64 %6, 121
  br i1 %38, label %39, label %69

39:                                               ; preds = %37
  %40 = tail call zeroext i8 @is_gimple_val(ptr noundef nonnull %4) #20
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %73, label %42

42:                                               ; preds = %39
  store i32 0, ptr %1, align 4, !tbaa !6
  %43 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !34
  %45 = tail call ptr @get_base_address(ptr noundef %44) #20
  %46 = icmp eq ptr %45, null
  br i1 %46, label %73, label %47

47:                                               ; preds = %42
  %48 = load i64, ptr %45, align 8
  %49 = trunc i64 %48 to i16
  switch i16 %49, label %73 [
    i16 32, label %55
    i16 34, label %55
    i16 36, label %55
    i16 141, label %50
  ]

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.tree_ssa_name, ptr %45, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !34
  %53 = load i64, ptr %52, align 8
  %54 = trunc i64 %53 to i16
  switch i16 %54, label %73 [
    i16 32, label %55
    i16 34, label %55
    i16 36, label %55
  ]

55:                                               ; preds = %50, %50, %50, %47, %47, %47
  %56 = getelementptr inbounds %struct.tree_decl_common, ptr %45, i64 0, i32 2
  %57 = load i64, ptr %56, align 8
  %58 = and i64 %57, 33554432
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %73

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !34
  %63 = getelementptr inbounds %struct.elv_data, ptr %2, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !129
  %65 = getelementptr inbounds %struct.elv_data, ptr %2, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !132
  %67 = tail call fastcc ptr @take_address_of(ptr noundef %44, ptr noundef %62, ptr noundef %64, ptr noundef %66) #19
  store ptr %67, ptr %0, align 8, !tbaa !10
  %68 = getelementptr inbounds %struct.elv_data, ptr %2, i64 0, i32 3
  store i8 1, ptr %68, align 8, !tbaa !133
  br label %73

69:                                               ; preds = %37
  %70 = add i32 %8, -4
  %71 = icmp ult i32 %70, 7
  br i1 %71, label %73, label %72

72:                                               ; preds = %69
  store i32 0, ptr %1, align 4, !tbaa !6
  br label %73

73:                                               ; preds = %72, %69, %42, %55, %47, %50, %39, %18, %10, %13, %60, %23
  ret ptr null
}

; Function Attrs: optsize
declare ptr @walk_gimple_op(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_debug(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !85
  %3 = icmp eq i32 %2, 2
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op_ptr(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #19, !range !21
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #19
  %6 = getelementptr inbounds ptr, ptr %5, i64 1
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: optsize
declare ptr @build_pointer_type(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @take_address_of(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca ptr, align 8
  %6 = alloca %struct.int_tree_map, align 8
  %7 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #18
  %8 = tail call ptr @unshare_expr(ptr noundef %0) #20
  store ptr %8, ptr %5, align 8, !tbaa !10
  br label %9

9:                                                ; preds = %9, %4
  %10 = phi ptr [ %5, %4 ], [ %14, %9 ]
  %11 = load ptr, ptr %10, align 8, !tbaa !10
  %12 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %11) #19, !range !21
  %13 = icmp eq i8 %12, 0
  %14 = getelementptr inbounds %struct.tree_exp, ptr %11, i64 0, i32 3
  br i1 %13, label %15, label %9, !llvm.loop !134

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.tree_decl_minimal, ptr %11, i64 0, i32 2
  %17 = load i32, ptr %16, align 4, !tbaa !34
  store i32 %17, ptr %6, align 8, !tbaa !135
  %18 = call ptr @htab_find_slot_with_hash(ptr noundef %3, ptr noundef nonnull %6, i32 noundef %17, i32 noundef 1) #20
  %19 = load ptr, ptr %18, align 8, !tbaa !10
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %36

21:                                               ; preds = %15
  %22 = load ptr, ptr %10, align 8, !tbaa !10
  %23 = load ptr, ptr @current_function_decl, align 8, !tbaa !10
  %24 = call ptr @build_addr(ptr noundef %22, ptr noundef %23) #20
  %25 = getelementptr inbounds %struct.tree_common, ptr %24, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !34
  %27 = load ptr, ptr %10, align 8, !tbaa !10
  %28 = call ptr @get_name(ptr noundef %27) #20
  %29 = call ptr @create_tmp_var(ptr noundef %26, ptr noundef %28) #20
  %30 = call zeroext i8 @add_referenced_var(ptr noundef %29) #20
  %31 = call ptr @gimple_build_assign_stat(ptr noundef %29, ptr noundef %24) #20
  %32 = call fastcc ptr @make_ssa_name(ptr noundef %29, ptr noundef %31) #19
  call fastcc void @gimple_assign_set_lhs(ptr noundef %31, ptr noundef %32) #19
  %33 = call ptr @gsi_insert_on_edge_immediate(ptr noundef %2, ptr noundef %31) #20
  %34 = call ptr @xmalloc(i64 noundef 16) #20
  store i32 %17, ptr %34, align 8, !tbaa !135
  %35 = getelementptr inbounds %struct.int_tree_map, ptr %34, i64 0, i32 1
  store ptr %32, ptr %35, align 8, !tbaa !137
  store ptr %34, ptr %18, align 8, !tbaa !10
  br label %39

36:                                               ; preds = %15
  %37 = getelementptr inbounds %struct.int_tree_map, ptr %19, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !137
  br label %39

39:                                               ; preds = %36, %21
  %40 = phi ptr [ %38, %36 ], [ %32, %21 ]
  %41 = icmp eq ptr %10, %5
  br i1 %41, label %56, label %42

42:                                               ; preds = %39
  %43 = load ptr, ptr %10, align 8, !tbaa !10
  %44 = getelementptr inbounds %struct.tree_common, ptr %43, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !34
  %46 = call ptr @build1_stat(i32 noundef 47, ptr noundef %45, ptr noundef %40) #20
  store ptr %46, ptr %10, align 8, !tbaa !10
  %47 = load ptr, ptr %5, align 8, !tbaa !10
  %48 = load ptr, ptr @current_function_decl, align 8, !tbaa !10
  %49 = call ptr @build_addr(ptr noundef %47, ptr noundef %48) #20
  %50 = call ptr @force_gimple_operand(ptr noundef %49, ptr noundef nonnull %7, i8 noundef zeroext 1, ptr noundef null) #20
  %51 = load ptr, ptr %7, align 8, !tbaa !10
  %52 = call fastcc zeroext i8 @gimple_seq_empty_p(ptr noundef %51) #19, !range !21
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %42
  %55 = call ptr @gsi_insert_seq_on_edge_immediate(ptr noundef %2, ptr noundef %51) #20
  br label %56

56:                                               ; preds = %42, %54, %39
  %57 = phi ptr [ %50, %42 ], [ %50, %54 ], [ %40, %39 ]
  %58 = getelementptr inbounds %struct.tree_common, ptr %57, i64 0, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !34
  %60 = icmp eq ptr %59, %1
  br i1 %60, label %69, label %61

61:                                               ; preds = %56
  %62 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %1, ptr noundef nonnull %57) #20
  %63 = call ptr @force_gimple_operand(ptr noundef %62, ptr noundef nonnull %7, i8 noundef zeroext 1, ptr noundef null) #20
  %64 = load ptr, ptr %7, align 8, !tbaa !10
  %65 = call fastcc zeroext i8 @gimple_seq_empty_p(ptr noundef %64) #19, !range !21
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %61
  %68 = call ptr @gsi_insert_seq_on_edge_immediate(ptr noundef %2, ptr noundef %64) #20
  br label %69

69:                                               ; preds = %61, %67, %56
  %70 = phi ptr [ %63, %61 ], [ %63, %67 ], [ %57, %56 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #18
  ret ptr %70
}

; Function Attrs: optsize
declare ptr @build1_stat(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @is_gimple_val(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @get_base_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i8 @handled_component_p(ptr nocapture noundef readonly %0) unnamed_addr #3 {
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
declare ptr @htab_find_slot_with_hash(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build_addr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @get_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_assign_set_lhs(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 0, ptr noundef %1) #19
  %3 = icmp eq ptr %1, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 2
  store ptr %0, ptr %9, align 8, !tbaa !34
  br label %10

10:                                               ; preds = %8, %4, %2
  ret void
}

; Function Attrs: optsize
declare ptr @gsi_insert_on_edge_immediate(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_seq_empty_p(ptr noundef readonly %0) unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !124
  %5 = icmp eq ptr %4, null
  %6 = zext i1 %5 to i8
  br label %7

7:                                                ; preds = %3, %1
  %8 = phi i8 [ 1, %1 ], [ %6, %3 ]
  ret i8 %8
}

; Function Attrs: optsize
declare ptr @split_edge(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_pred(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @single_pred_edge(ptr noundef %0) #19
  %3 = load ptr, ptr %2, align 8, !tbaa !22
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @name_to_copy_elt_hash(ptr nocapture noundef readonly %0) #3 {
  %2 = load i32, ptr %0, align 8, !tbaa !138
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @name_to_copy_elt_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #3 {
  %3 = load i32, ptr %0, align 8, !tbaa !138
  %4 = load i32, ptr %1, align 8, !tbaa !138
  %5 = icmp eq i32 %3, %4
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @separate_decls_in_region_stmt(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = alloca %struct.ssa_operand_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #18
  tail call void @mark_virtual_ops_for_renaming(ptr noundef %2) #20
  %7 = tail call fastcc i32 @gimple_code(ptr noundef %2) #19, !range !85
  %8 = icmp eq i32 %7, 16
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = call fastcc ptr @op_iter_init_phidef(ptr noundef nonnull %6, ptr noundef %2) #19
  br label %13

11:                                               ; preds = %5
  %12 = call fastcc ptr @op_iter_init_def(ptr noundef nonnull %6, ptr noundef %2) #19
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi ptr [ %10, %9 ], [ %12, %11 ]
  %15 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %6) #19
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %32

17:                                               ; preds = %13, %28
  %18 = phi ptr [ %29, %28 ], [ %14, %13 ]
  %19 = tail call fastcc ptr @get_def_from_ptr(ptr noundef %18) #19
  %20 = load i64, ptr %19, align 8
  %21 = and i64 %20, 65535
  %22 = icmp eq i64 %21, 141
  br i1 %22, label %24, label %23

23:                                               ; preds = %17
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 687, ptr noundef nonnull @.str.9) #20
  br label %24

24:                                               ; preds = %17, %23
  %25 = tail call fastcc ptr @separate_decls_in_region_name(ptr noundef nonnull %19, ptr noundef %3, ptr noundef %4, i8 noundef zeroext 0) #19
  %26 = icmp eq ptr %25, %19
  br i1 %26, label %28, label %27

27:                                               ; preds = %24
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 690, ptr noundef nonnull @.str.9) #20
  br label %28

28:                                               ; preds = %24, %27
  %29 = call fastcc ptr @op_iter_next_def(ptr noundef nonnull %6) #19
  %30 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %6) #19
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %17, label %32, !llvm.loop !140

32:                                               ; preds = %28, %13
  %33 = tail call fastcc i32 @gimple_code(ptr noundef %2) #19, !range !85
  %34 = icmp eq i32 %33, 16
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = call fastcc ptr @op_iter_init_phiuse(ptr noundef nonnull %6, ptr noundef %2) #19
  br label %39

37:                                               ; preds = %32
  %38 = call fastcc ptr @op_iter_init_use(ptr noundef nonnull %6, ptr noundef %2) #19
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi ptr [ %36, %35 ], [ %38, %37 ]
  %41 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %6) #19
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %56

43:                                               ; preds = %39, %52
  %44 = phi ptr [ %53, %52 ], [ %40, %39 ]
  %45 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %44) #19
  %46 = load i64, ptr %45, align 8
  %47 = and i64 %46, 65535
  %48 = icmp eq i64 %47, 141
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = tail call fastcc zeroext i8 @expr_invariant_in_region_p(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %45) #19, !range !21
  %51 = tail call fastcc ptr @separate_decls_in_region_name(ptr noundef nonnull %45, ptr noundef %3, ptr noundef %4, i8 noundef zeroext %50) #19
  tail call fastcc void @set_ssa_use_from_ptr(ptr noundef %44, ptr noundef %51) #19
  br label %52

52:                                               ; preds = %43, %49
  %53 = call fastcc ptr @op_iter_next_use(ptr noundef nonnull %6) #19
  %54 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %6) #19
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %43, label %56, !llvm.loop !141

56:                                               ; preds = %52, %39
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @separate_decls_in_region_debug_bind(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.ssa_operand_iterator_d, align 8
  %5 = alloca %struct.int_tree_map, align 8
  %6 = alloca %struct.name_to_copy_elt, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #18
  %7 = tail call fastcc ptr @gimple_debug_bind_get_var(ptr noundef %0) #19
  %8 = load i64, ptr %7, align 8
  %9 = and i64 %8, 65535
  %10 = icmp eq i64 %9, 37
  br i1 %10, label %62, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %9
  %13 = load i32, ptr %12, align 4, !tbaa !6
  %14 = icmp eq i32 %13, 3
  br i1 %14, label %15, label %22

15:                                               ; preds = %11
  %16 = trunc i64 %8 to i16
  switch i16 %16, label %22 [
    i16 32, label %23
    i16 34, label %23
    i16 36, label %23
    i16 141, label %17
  ]

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.tree_ssa_name, ptr %7, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !34
  %20 = load i64, ptr %19, align 8
  %21 = trunc i64 %20 to i16
  switch i16 %21, label %22 [
    i16 32, label %23
    i16 34, label %23
    i16 36, label %23
  ]

22:                                               ; preds = %17, %15, %11
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 727, ptr noundef nonnull @.str.9) #20
  br label %23

23:                                               ; preds = %17, %17, %17, %15, %15, %15, %22
  %24 = getelementptr inbounds %struct.tree_decl_minimal, ptr %7, i64 0, i32 2
  %25 = load i32, ptr %24, align 4, !tbaa !34
  store i32 %25, ptr %5, align 8, !tbaa !135
  %26 = call ptr @htab_find_slot_with_hash(ptr noundef %2, ptr noundef nonnull %5, i32 noundef %25, i32 noundef 0) #20
  %27 = icmp eq ptr %26, null
  br i1 %27, label %62, label %28

28:                                               ; preds = %23
  %29 = load ptr, ptr %26, align 8, !tbaa !10
  %30 = getelementptr inbounds %struct.int_tree_map, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !137
  call fastcc void @gimple_debug_bind_set_var(ptr noundef %0, ptr noundef %31) #19
  %32 = call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !85
  %33 = icmp eq i32 %32, 16
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = call fastcc ptr @op_iter_init_phiuse(ptr noundef nonnull %4, ptr noundef %0) #19
  br label %38

36:                                               ; preds = %28
  %37 = call fastcc ptr @op_iter_init_use(ptr noundef nonnull %4, ptr noundef %0) #19
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi ptr [ %35, %34 ], [ %37, %36 ]
  %40 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %4) #19
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %62

42:                                               ; preds = %38, %58
  %43 = phi ptr [ %59, %58 ], [ %39, %38 ]
  %44 = call fastcc ptr @get_use_from_ptr(ptr noundef %43) #19
  %45 = load i64, ptr %44, align 8
  %46 = and i64 %45, 65535
  %47 = icmp eq i64 %46, 141
  br i1 %47, label %48, label %58

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.tree_ssa_name, ptr %44, i64 0, i32 3
  %50 = load i32, ptr %49, align 8, !tbaa !34
  store i32 %50, ptr %6, align 8, !tbaa !138
  %51 = call ptr @htab_find_slot_with_hash(ptr noundef %1, ptr noundef nonnull %6, i32 noundef %50, i32 noundef 0) #20
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  call fastcc void @gimple_debug_bind_reset_value(ptr noundef %0) #19
  call fastcc void @update_stmt(ptr noundef %0) #19
  br label %62

54:                                               ; preds = %48
  %55 = load ptr, ptr %51, align 8, !tbaa !10
  %56 = getelementptr inbounds %struct.name_to_copy_elt, ptr %55, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !142
  call fastcc void @set_ssa_use_from_ptr(ptr noundef %43, ptr noundef %57) #19
  br label %58

58:                                               ; preds = %42, %54
  %59 = call fastcc ptr @op_iter_next_use(ptr noundef nonnull %4) #19
  %60 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %4) #19
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %42, label %62, !llvm.loop !143

62:                                               ; preds = %58, %38, %53, %23, %3
  %63 = phi i8 [ 1, %3 ], [ 1, %23 ], [ 0, %53 ], [ 0, %38 ], [ 0, %58 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #18
  ret i8 %63
}

; Function Attrs: optsize
declare void @gsi_remove(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build_decl_stat(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @create_tmp_var_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @add_field_for_name(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !10
  %4 = load ptr, ptr @cfun, align 8, !tbaa !10
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !33
  %7 = getelementptr inbounds %struct.gimple_df, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !144
  %9 = load i32, ptr %3, align 8, !tbaa !138
  %10 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %8, i32 noundef %9) #19
  %11 = getelementptr inbounds %struct.tree_ssa_name, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !34
  %13 = getelementptr inbounds %struct.tree_decl_minimal, ptr %12, i64 0, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !34
  %15 = getelementptr inbounds %struct.tree_decl_minimal, ptr %12, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !34
  %17 = getelementptr inbounds %struct.tree_common, ptr %12, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !34
  %19 = tail call ptr @build_decl_stat(i32 noundef %14, i32 noundef 31, ptr noundef %16, ptr noundef %18) #20
  tail call void @insert_field_into_struct(ptr noundef %1, ptr noundef %19) #20
  %20 = getelementptr inbounds %struct.name_to_copy_elt, ptr %3, i64 0, i32 2
  store ptr %19, ptr %20, align 8, !tbaa !148
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @add_field_for_reduction(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !10
  %4 = load ptr, ptr %3, align 8, !tbaa !52
  %5 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %4) #19
  %6 = getelementptr inbounds %struct.tree_ssa_name, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = load ptr, ptr %3, align 8, !tbaa !52
  %9 = tail call fastcc i32 @gimple_location(ptr noundef %8) #19
  %10 = getelementptr inbounds %struct.tree_decl_minimal, ptr %7, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  %12 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !34
  %14 = tail call ptr @build_decl_stat(i32 noundef %9, i32 noundef 31, ptr noundef %11, ptr noundef %13) #20
  tail call void @insert_field_into_struct(ptr noundef %1, ptr noundef %14) #20
  %15 = getelementptr inbounds %struct.reduction_info, ptr %3, i64 0, i32 5
  store ptr %14, ptr %15, align 8, !tbaa !149
  ret i32 1
}

; Function Attrs: optsize
declare void @layout_type(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @create_loads_and_stores_for_name(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = load ptr, ptr %0, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #18
  %6 = getelementptr inbounds %struct.name_to_copy_elt, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !142
  %8 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  %10 = getelementptr inbounds %struct.clsn_data, ptr %1, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !111
  %12 = getelementptr inbounds %struct.tree_common, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !34
  %14 = getelementptr inbounds %struct.tree_common, ptr %13, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !34
  %16 = getelementptr inbounds %struct.clsn_data, ptr %1, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !112
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %17) #19
  %18 = load ptr, ptr %1, align 8, !tbaa !109
  %19 = getelementptr inbounds %struct.name_to_copy_elt, ptr %5, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !148
  %21 = tail call ptr @build3_stat(i32 noundef 41, ptr noundef %9, ptr noundef %18, ptr noundef %20, ptr noundef null) #20
  %22 = load ptr, ptr @cfun, align 8, !tbaa !10
  %23 = getelementptr inbounds %struct.function, ptr %22, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !33
  %25 = getelementptr inbounds %struct.gimple_df, ptr %24, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !144
  %27 = load i32, ptr %5, align 8, !tbaa !138
  %28 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %26, i32 noundef %27) #19
  %29 = tail call ptr @gimple_build_assign_stat(ptr noundef %21, ptr noundef %28) #20
  tail call void @mark_virtual_ops_for_renaming(ptr noundef %29) #20
  call void @gsi_insert_after(ptr noundef nonnull %3, ptr noundef %29, i32 noundef 0) #20
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #18
  %30 = getelementptr inbounds %struct.clsn_data, ptr %1, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !113
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %31) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !54
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #18
  %32 = load ptr, ptr %10, align 8, !tbaa !111
  %33 = call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef 47, ptr noundef %15, ptr noundef %32) #20
  %34 = load ptr, ptr %19, align 8, !tbaa !148
  %35 = call ptr @build3_stat(i32 noundef 41, ptr noundef %9, ptr noundef %33, ptr noundef %34, ptr noundef null) #20
  %36 = load ptr, ptr %6, align 8, !tbaa !142
  %37 = call ptr @gimple_build_assign_stat(ptr noundef %36, ptr noundef %35) #20
  %38 = load ptr, ptr %6, align 8, !tbaa !142
  %39 = getelementptr inbounds %struct.tree_ssa_name, ptr %38, i64 0, i32 2
  store ptr %37, ptr %39, align 8, !tbaa !34
  call void @gsi_insert_after(ptr noundef nonnull %3, ptr noundef %37, i32 noundef 0) #20
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #18
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @create_stores_for_reduction(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = load ptr, ptr %0, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #18
  %5 = load ptr, ptr %4, align 8, !tbaa !52
  %6 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %5) #19
  %7 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = getelementptr inbounds %struct.clsn_data, ptr %1, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !112
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %10) #19
  %11 = load ptr, ptr %1, align 8, !tbaa !109
  %12 = getelementptr inbounds %struct.reduction_info, ptr %4, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !149
  %14 = tail call ptr @build3_stat(i32 noundef 41, ptr noundef %8, ptr noundef %11, ptr noundef %13, ptr noundef null) #20
  %15 = getelementptr inbounds %struct.reduction_info, ptr %4, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !93
  %17 = tail call ptr @gimple_build_assign_stat(ptr noundef %14, ptr noundef %16) #20
  tail call void @mark_virtual_ops_for_renaming(ptr noundef %17) #20
  call void @gsi_insert_after(ptr noundef nonnull %3, ptr noundef %17, i32 noundef 0) #20
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #18
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @create_final_loads_for_reduction(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #18
  %4 = getelementptr inbounds %struct.clsn_data, ptr %1, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !113
  call fastcc void @gsi_after_labels(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %5) #19
  %6 = load ptr, ptr %1, align 8, !tbaa !109
  %7 = tail call ptr @build_fold_addr_expr_loc(i32 noundef 0, ptr noundef %6) #20
  %8 = getelementptr inbounds %struct.clsn_data, ptr %1, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !111
  %10 = tail call ptr @gimple_build_assign_stat(ptr noundef %9, ptr noundef %7) #20
  call void @gsi_insert_before(ptr noundef nonnull %3, ptr noundef %10, i32 noundef 0) #20
  %11 = load ptr, ptr %8, align 8, !tbaa !111
  %12 = getelementptr inbounds %struct.tree_ssa_name, ptr %11, i64 0, i32 2
  store ptr %10, ptr %12, align 8, !tbaa !34
  call void @htab_traverse(ptr noundef %0, ptr noundef nonnull @create_loads_for_reductions, ptr noundef nonnull %1) #20
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_pred_edge(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %0) #19, !range !21
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.27, i32 noundef 655, ptr noundef nonnull @.str.9) #20
  br label %5

5:                                                ; preds = %1, %4
  %6 = load ptr, ptr %0, align 8, !tbaa !150
  %7 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %6, i32 noundef 0) #19
  ret ptr %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_pred_p(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = load ptr, ptr %0, align 8, !tbaa !150
  %3 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %2) #19
  %4 = icmp eq i32 %3, 1
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: optsize
declare void @mark_virtual_ops_for_renaming(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @op_iter_init_phidef(ptr nocapture noundef writeonly %0, ptr noundef readonly %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @gimple_phi_result_ptr(ptr noundef %1) #19
  %4 = tail call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %3) #19
  tail call fastcc void @clear_and_done_ssa_iter(ptr noundef %0) #19
  store i8 0, ptr %0, align 8, !tbaa !151
  %5 = tail call zeroext i8 @is_gimple_reg(ptr noundef %4) #20
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  store i8 1, ptr %0, align 8, !tbaa !151
  br label %10

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 3, ptr %9, align 4, !tbaa !153
  br label %10

10:                                               ; preds = %8, %7
  %11 = phi ptr [ null, %7 ], [ %3, %8 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @op_iter_init_def(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #10 {
  tail call fastcc void @op_iter_init(ptr noundef %0, ptr noundef %1, i32 noundef 2) #19
  %3 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 3, ptr %3, align 4, !tbaa !153
  %4 = tail call fastcc ptr @op_iter_next_def(ptr noundef %0) #19
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @op_iter_done(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = load i8, ptr %0, align 8, !tbaa !151
  ret i8 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @separate_decls_in_region_name(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) unnamed_addr #0 {
  %5 = alloca %struct.int_tree_map, align 8
  %6 = alloca %struct.name_to_copy_elt, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #18
  %7 = load i64, ptr %0, align 8
  %8 = and i64 %7, 65535
  %9 = icmp eq i64 %8, 141
  br i1 %9, label %10, label %71

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !34
  store i32 %12, ptr %6, align 8, !tbaa !138
  %13 = icmp ne i8 %3, 0
  %14 = zext i1 %13 to i32
  %15 = call ptr @htab_find_slot_with_hash(ptr noundef %1, ptr noundef nonnull %6, i32 noundef %12, i32 noundef %14) #20
  %16 = icmp eq ptr %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %10
  %18 = load ptr, ptr %15, align 8, !tbaa !10
  %19 = icmp eq ptr %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.name_to_copy_elt, ptr %18, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !142
  br label %71

23:                                               ; preds = %17, %10
  %24 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !34
  %26 = getelementptr inbounds %struct.tree_decl_minimal, ptr %25, i64 0, i32 2
  %27 = load i32, ptr %26, align 4, !tbaa !34
  store i32 %27, ptr %5, align 8, !tbaa !135
  %28 = call ptr @htab_find_slot_with_hash(ptr noundef %2, ptr noundef nonnull %5, i32 noundef %27, i32 noundef 1) #20
  %29 = load ptr, ptr %28, align 8, !tbaa !10
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %55

31:                                               ; preds = %23
  %32 = getelementptr inbounds %struct.tree_common, ptr %25, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !34
  %34 = call ptr @get_name(ptr noundef nonnull %25) #20
  %35 = call ptr @create_tmp_var(ptr noundef %33, ptr noundef %34) #20
  %36 = getelementptr inbounds %struct.tree_decl_common, ptr %25, i64 0, i32 2
  %37 = load i64, ptr %36, align 8
  %38 = and i64 %37, 134217728
  %39 = getelementptr inbounds %struct.tree_decl_common, ptr %35, i64 0, i32 2
  %40 = load i64, ptr %39, align 8
  %41 = and i64 %40, -134217729
  %42 = or disjoint i64 %41, %38
  store i64 %42, ptr %39, align 8
  %43 = call zeroext i8 @add_referenced_var(ptr noundef %35) #20
  %44 = call ptr @xmalloc(i64 noundef 16) #20
  store i32 %27, ptr %44, align 8, !tbaa !135
  %45 = getelementptr inbounds %struct.int_tree_map, ptr %44, i64 0, i32 1
  store ptr %35, ptr %45, align 8, !tbaa !137
  store ptr %44, ptr %28, align 8, !tbaa !10
  %46 = getelementptr inbounds %struct.tree_decl_minimal, ptr %35, i64 0, i32 2
  %47 = load i32, ptr %46, align 4, !tbaa !34
  store i32 %47, ptr %5, align 8, !tbaa !135
  %48 = call ptr @htab_find_slot_with_hash(ptr noundef %2, ptr noundef nonnull %5, i32 noundef %47, i32 noundef 1) #20
  %49 = load ptr, ptr %48, align 8, !tbaa !10
  %50 = icmp eq ptr %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %31
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 637, ptr noundef nonnull @.str.9) #20
  br label %52

52:                                               ; preds = %31, %51
  %53 = call ptr @xmalloc(i64 noundef 16) #20
  store i32 %47, ptr %53, align 8, !tbaa !135
  %54 = getelementptr inbounds %struct.int_tree_map, ptr %53, i64 0, i32 1
  store ptr %35, ptr %54, align 8, !tbaa !137
  store ptr %53, ptr %48, align 8, !tbaa !10
  br label %58

55:                                               ; preds = %23
  %56 = getelementptr inbounds %struct.int_tree_map, ptr %29, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !137
  br label %58

58:                                               ; preds = %55, %52
  %59 = phi ptr [ %57, %55 ], [ %35, %52 ]
  %60 = icmp eq i8 %3, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %58
  %62 = call ptr @duplicate_ssa_name(ptr noundef nonnull %0, ptr noundef null) #20
  %63 = call ptr @xmalloc(i64 noundef 24) #20
  store i32 %12, ptr %63, align 8, !tbaa !138
  %64 = getelementptr inbounds %struct.name_to_copy_elt, ptr %63, i64 0, i32 1
  store ptr %62, ptr %64, align 8, !tbaa !142
  %65 = getelementptr inbounds %struct.name_to_copy_elt, ptr %63, i64 0, i32 2
  store ptr null, ptr %65, align 8, !tbaa !148
  store ptr %63, ptr %15, align 8, !tbaa !10
  br label %68

66:                                               ; preds = %58
  br i1 %16, label %68, label %67

67:                                               ; preds = %66
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 657, ptr noundef nonnull @.str.9) #20
  br label %68

68:                                               ; preds = %67, %66, %61
  %69 = phi ptr [ %62, %61 ], [ %0, %66 ], [ %0, %67 ]
  %70 = getelementptr inbounds %struct.tree_ssa_name, ptr %69, i64 0, i32 1
  store ptr %59, ptr %70, align 8, !tbaa !34
  br label %71

71:                                               ; preds = %4, %68, %20
  %72 = phi ptr [ %22, %20 ], [ %69, %68 ], [ %0, %4 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #18
  ret ptr %72
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @op_iter_next_def(ptr nocapture noundef %0) unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !154
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.def_optype_d, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !155
  %8 = load ptr, ptr %3, align 8, !tbaa !157
  store ptr %8, ptr %2, align 8, !tbaa !154
  br label %10

9:                                                ; preds = %1
  store i8 1, ptr %0, align 8, !tbaa !151
  br label %10

10:                                               ; preds = %9, %5
  %11 = phi ptr [ %7, %5 ], [ null, %9 ]
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_phiuse(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @gimple_phi_result(ptr noundef %1) #19
  tail call fastcc void @clear_and_done_ssa_iter(ptr noundef %0) #19
  store i8 0, ptr %0, align 8, !tbaa !151
  %4 = tail call zeroext i8 @is_gimple_reg(ptr noundef %3) #20
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  store i8 1, ptr %0, align 8, !tbaa !151
  br label %13

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 6
  store ptr %1, ptr %8, align 8, !tbaa !158
  %9 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %1) #19
  %10 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 5
  store i32 %9, ptr %10, align 4, !tbaa !159
  %11 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 2, ptr %11, align 4, !tbaa !153
  %12 = tail call fastcc ptr @op_iter_next_use(ptr noundef nonnull %0) #19
  br label %13

13:                                               ; preds = %7, %6
  %14 = phi ptr [ null, %6 ], [ %12, %7 ]
  ret ptr %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_use(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  tail call fastcc void @op_iter_init(ptr noundef %0, ptr noundef %1, i32 noundef 1) #19
  %3 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 2, ptr %3, align 4, !tbaa !153
  %4 = tail call fastcc ptr @op_iter_next_use(ptr noundef %0) #19
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @expr_invariant_in_region_p(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !22
  %5 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !49
  %7 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %2) #20
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %25

9:                                                ; preds = %3
  %10 = load i64, ptr %2, align 8
  %11 = and i64 %10, 65535
  %12 = icmp eq i64 %11, 141
  br i1 %12, label %13, label %25

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.tree_ssa_name, ptr %2, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !34
  %16 = tail call fastcc ptr @gimple_bb(ptr noundef %15) #19
  %17 = icmp eq ptr %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %13
  %19 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef nonnull %16, ptr noundef %4) #20
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef nonnull %16, ptr noundef %6) #20
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %21, %18, %13
  br label %25

25:                                               ; preds = %9, %21, %3, %24
  %26 = phi i8 [ 1, %24 ], [ 1, %3 ], [ 0, %21 ], [ 0, %9 ]
  ret i8 %26
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_next_use(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !160
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.use_optype_d, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %3, align 8, !tbaa !161
  store ptr %7, ptr %2, align 8, !tbaa !160
  br label %20

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !163
  %11 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 5
  %12 = load i32, ptr %11, align 4, !tbaa !159
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !158
  %17 = add nsw i32 %10, 1
  store i32 %17, ptr %9, align 8, !tbaa !163
  %18 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %16, i32 noundef %10) #19
  br label %20

19:                                               ; preds = %8
  store i8 1, ptr %0, align 8, !tbaa !151
  br label %20

20:                                               ; preds = %19, %14, %5
  %21 = phi ptr [ %6, %5 ], [ %18, %14 ], [ null, %19 ]
  ret ptr %21
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @clear_and_done_ssa_iter(ptr nocapture noundef writeonly %0) unnamed_addr #15 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %2, i8 0, i64 36, i1 false)
  store i8 1, ptr %0, align 8, !tbaa !151
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @op_iter_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #10 {
  %4 = and i32 %2, 10
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr null, ptr %7, align 8, !tbaa !154
  br label %17

8:                                                ; preds = %3
  %9 = tail call fastcc ptr @gimple_def_ops(ptr noundef %1) #19
  %10 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr %9, ptr %10, align 8, !tbaa !154
  %11 = icmp eq ptr %9, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %8
  %13 = tail call fastcc ptr @gimple_vdef(ptr noundef %1) #19
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = load ptr, ptr %9, align 8, !tbaa !157
  store ptr %16, ptr %10, align 8, !tbaa !154
  br label %17

17:                                               ; preds = %6, %15, %12, %8
  %18 = and i32 %2, 5
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr null, ptr %21, align 8, !tbaa !160
  br label %31

22:                                               ; preds = %17
  %23 = tail call fastcc ptr @gimple_use_ops(ptr noundef %1) #19
  %24 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr %23, ptr %24, align 8, !tbaa !160
  %25 = icmp eq ptr %23, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %22
  %27 = tail call fastcc ptr @gimple_vuse(ptr noundef %1) #19
  %28 = icmp eq ptr %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %26
  %30 = load ptr, ptr %23, align 8, !tbaa !161
  store ptr %30, ptr %24, align 8, !tbaa !160
  br label %31

31:                                               ; preds = %20, %29, %26, %22
  store i8 0, ptr %0, align 8, !tbaa !151
  %32 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %32, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_def_ops(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #19, !range !21
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vdef(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #19, !range !21
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_use_ops(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #19, !range !21
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vuse(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #19, !range !21
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_mem_ops(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !85
  %3 = add nsw i32 %2, -6
  %4 = icmp ult i32 %3, 4
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: optsize
declare ptr @duplicate_ssa_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_phi_result(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_phi_num_args(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !34
  ret i32 %3
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_min_invariant(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @dominated_by_p(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_debug_bind_get_var(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #19
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_debug_bind_set_var(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 0, ptr noundef %1) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_debug_bind_reset_value(ptr noundef %0) unnamed_addr #0 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 1, ptr noundef null) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_tree_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #3 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !10
  ret ptr %5
}

; Function Attrs: optsize
declare void @insert_field_into_struct(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_last_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #10 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #19
  %4 = tail call fastcc ptr @gimple_seq_last(ptr noundef %3) #19
  store ptr %4, ptr %0, align 8, !tbaa !71
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !120
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !121
  ret void
}

; Function Attrs: optsize
declare ptr @build3_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @gsi_insert_after(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @fold_build1_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_last(ptr noundef readonly %0) unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.gimple_seq_d, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !164
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi ptr [ %5, %3 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: optsize
declare ptr @build_fold_addr_expr_loc(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @create_loads_for_reductions(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = load ptr, ptr %0, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #18
  %6 = load ptr, ptr %5, align 8, !tbaa !52
  %7 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %6) #19
  %8 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  %10 = getelementptr inbounds %struct.clsn_data, ptr %1, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !111
  %12 = getelementptr inbounds %struct.tree_common, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !34
  %14 = getelementptr inbounds %struct.tree_common, ptr %13, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !34
  %16 = getelementptr inbounds %struct.clsn_data, ptr %1, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !113
  call fastcc void @gsi_after_labels(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %17) #19
  %18 = load ptr, ptr %10, align 8, !tbaa !111
  %19 = tail call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef 47, ptr noundef %15, ptr noundef %18) #20
  %20 = getelementptr inbounds %struct.reduction_info, ptr %5, i64 0, i32 5
  %21 = load ptr, ptr %20, align 8, !tbaa !149
  %22 = tail call ptr @build3_stat(i32 noundef 41, ptr noundef %9, ptr noundef %19, ptr noundef %21, ptr noundef null) #20
  %23 = getelementptr inbounds %struct.reduction_info, ptr %5, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !91
  %25 = tail call fastcc ptr @gimple_phi_result_ptr(ptr noundef %24) #19
  %26 = tail call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %25) #19
  %27 = tail call ptr @gimple_build_assign_stat(ptr noundef %26, ptr noundef %22) #20
  %28 = getelementptr inbounds %struct.tree_ssa_name, ptr %26, i64 0, i32 2
  store ptr %27, ptr %28, align 8, !tbaa !34
  call void @gsi_insert_after(ptr noundef nonnull %3, ptr noundef %27, i32 noundef 0) #20
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #18
  %29 = load ptr, ptr %23, align 8, !tbaa !91
  %30 = call fastcc ptr @gimple_bb(ptr noundef %29) #19
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %30) #20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !54
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #18
  %31 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #19, !range !21
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %2
  %34 = load ptr, ptr %23, align 8, !tbaa !91
  br label %35

35:                                               ; preds = %33, %39
  %36 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #19
  %37 = icmp eq ptr %36, %34
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  call void @remove_phi_node(ptr noundef nonnull %3, i8 noundef zeroext 0) #20
  br label %43

39:                                               ; preds = %35
  call fastcc void @gsi_next(ptr noundef nonnull %3) #19
  %40 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #19, !range !21
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %35, label %42, !llvm.loop !165

42:                                               ; preds = %39, %2
  call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 953, ptr noundef nonnull @.str.9) #20
  br label %43

43:                                               ; preds = %42, %38
  %44 = phi i32 [ 1, %38 ], [ 0, %42 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #18
  ret i32 %44
}

; Function Attrs: optsize
declare ptr @gimple_build_omp_parallel(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @split_loop_exit_edge(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gimple_build_omp_return(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @loop_latch_edge(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @extract_true_false_edges_from_block(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @make_edge(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_phi_arg_location_from_edge(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 6
  %4 = load i32, ptr %3, align 4, !tbaa !50
  %5 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %4) #19
  %6 = getelementptr inbounds %struct.phi_arg_d, ptr %5, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !166
  ret i32 %7
}

; Function Attrs: optsize
declare ptr @redirect_edge_and_branch(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gimple_build_omp_for(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_omp_for_set_index(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 2
  %4 = load i64, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 3475, ptr noundef nonnull @.str.9) #20
  br label %7

7:                                                ; preds = %2, %6
  %8 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  %10 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %9, i64 0, i32 1
  store ptr %1, ptr %10, align 8, !tbaa !168
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_omp_for_set_initial(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 2
  %4 = load i64, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 3508, ptr noundef nonnull @.str.9) #20
  br label %7

7:                                                ; preds = %2, %6
  %8 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  %10 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %9, i64 0, i32 2
  store ptr %1, ptr %10, align 8, !tbaa !170
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_omp_for_set_final(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 2
  %4 = load i64, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 3541, ptr noundef nonnull @.str.9) #20
  br label %7

7:                                                ; preds = %2, %6
  %8 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  %10 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %9, i64 0, i32 3
  store ptr %1, ptr %10, align 8, !tbaa !171
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_omp_for_set_cond(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = zext nneg i32 %1 to i64
  %4 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !6
  %6 = icmp eq i32 %5, 5
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 4076, ptr noundef nonnull @.str.9) #20
  br label %8

8:                                                ; preds = %2, %7
  %9 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 2
  %10 = load i64, ptr %9, align 8, !tbaa !34
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 4077, ptr noundef nonnull @.str.9) #20
  br label %13

13:                                               ; preds = %8, %12
  %14 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !34
  store i32 %1, ptr %15, align 8, !tbaa !172
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_cond_code(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 16
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_omp_for_set_incr(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 2
  %4 = load i64, ptr %3, align 8, !tbaa !34
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.21, i32 noundef 3574, ptr noundef nonnull @.str.9) #20
  br label %7

7:                                                ; preds = %2, %6
  %8 = getelementptr inbounds %struct.gimple_statement_omp_for, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  %10 = getelementptr inbounds %struct.gimple_omp_for_iter, ptr %9, i64 0, i32 4
  store ptr %1, ptr %10, align 8, !tbaa !173
  ret void
}

; Function Attrs: optsize
declare ptr @build2_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gimple_build_omp_continue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i64 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: optsize
declare ptr @current_function_name() local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #16

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: optsize
declare void @clean_symbol_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @get_identifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @build_function_type_list(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @bitmap_gc_alloc_stat() local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @make_node_stat(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @allocate_struct_function(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @set_cfun(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @create_phi_for_local_result(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !10
  %4 = getelementptr inbounds %struct.loop, ptr %1, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !88
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !116
  %8 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %7, i32 noundef 0) #19
  %9 = getelementptr inbounds %struct.edge_def, ptr %8, i64 0, i32 7
  %10 = load i32, ptr %9, align 8, !tbaa !114
  %11 = and i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.edge_def, ptr %8, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !49
  %16 = load ptr, ptr %15, align 8, !tbaa !150
  %17 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %16, i32 noundef 0) #19
  br label %25

18:                                               ; preds = %2
  %19 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %7, i32 noundef 1) #19
  %20 = getelementptr inbounds %struct.edge_def, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !49
  %22 = load ptr, ptr %21, align 8, !tbaa !150
  %23 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %22, i32 noundef 0) #19
  %24 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %7, i32 noundef 1) #19
  br label %25

25:                                               ; preds = %13, %18
  %26 = phi ptr [ %23, %18 ], [ %17, %13 ]
  %27 = phi ptr [ %22, %18 ], [ %16, %13 ]
  %28 = phi ptr [ %21, %18 ], [ %15, %13 ]
  %29 = phi ptr [ %24, %18 ], [ %8, %13 ]
  %30 = icmp eq ptr %26, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %27, i32 noundef 1) #19
  br label %33

33:                                               ; preds = %25, %31
  %34 = phi ptr [ %32, %31 ], [ %26, %25 ]
  %35 = load ptr, ptr %3, align 8, !tbaa !52
  %36 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %35) #19
  %37 = getelementptr inbounds %struct.tree_ssa_name, ptr %36, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !34
  %39 = tail call fastcc ptr @make_ssa_name(ptr noundef %38, ptr noundef null) #19
  %40 = load ptr, ptr %3, align 8, !tbaa !52
  %41 = tail call fastcc i32 @gimple_location(ptr noundef %40) #19
  %42 = tail call ptr @create_phi_node(ptr noundef %39, ptr noundef nonnull %28) #20
  %43 = getelementptr inbounds %struct.tree_ssa_name, ptr %39, i64 0, i32 2
  store ptr %42, ptr %43, align 8, !tbaa !34
  %44 = getelementptr inbounds %struct.reduction_info, ptr %3, i64 0, i32 6
  %45 = load ptr, ptr %44, align 8, !tbaa !92
  tail call void @add_phi_arg(ptr noundef %42, ptr noundef %45, ptr noundef %34, i32 noundef %41) #20
  %46 = load ptr, ptr %3, align 8, !tbaa !52
  %47 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %46) #19
  %48 = load ptr, ptr %4, align 8, !tbaa !88
  %49 = getelementptr inbounds %struct.basic_block_def, ptr %48, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !116
  %51 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %50, i32 noundef 0) #19
  %52 = getelementptr inbounds %struct.edge_def, ptr %51, i64 0, i32 7
  %53 = load i32, ptr %52, align 8, !tbaa !114
  %54 = and i32 %53, 1
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %33
  %57 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %50, i32 noundef 1) #19
  br label %58

58:                                               ; preds = %33, %56
  %59 = phi ptr [ %57, %56 ], [ %51, %33 ]
  tail call void @add_phi_arg(ptr noundef %42, ptr noundef %47, ptr noundef %59, i32 noundef %41) #20
  %60 = getelementptr inbounds %struct.reduction_info, ptr %3, i64 0, i32 7
  store ptr %42, ptr %60, align 8, !tbaa !174
  ret i32 1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @create_call_for_reduction_1(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = load ptr, ptr %0, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #18
  %6 = getelementptr inbounds %struct.reduction_info, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !35
  %8 = tail call fastcc ptr @gimple_phi_result_ptr(ptr noundef %7) #19
  %9 = tail call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %8) #19
  %10 = getelementptr inbounds %struct.tree_common, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  %12 = getelementptr inbounds %struct.clsn_data, ptr %1, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !111
  %14 = getelementptr inbounds %struct.tree_common, ptr %13, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !34
  %16 = getelementptr inbounds %struct.tree_common, ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !34
  %18 = tail call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef 47, ptr noundef %17, ptr noundef %13) #20
  %19 = getelementptr inbounds %struct.reduction_info, ptr %5, i64 0, i32 5
  %20 = load ptr, ptr %19, align 8, !tbaa !149
  %21 = tail call ptr @build3_stat(i32 noundef 41, ptr noundef %11, ptr noundef %18, ptr noundef %20, ptr noundef null) #20
  %22 = load ptr, ptr @current_function_decl, align 8, !tbaa !10
  %23 = tail call ptr @build_addr(ptr noundef %21, ptr noundef %22) #20
  %24 = getelementptr inbounds %struct.clsn_data, ptr %1, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !113
  %26 = tail call ptr @split_block(ptr noundef %25, ptr noundef %21) #20
  %27 = getelementptr inbounds %struct.edge_def, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !49
  %29 = getelementptr inbounds %struct.tree_common, ptr %23, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !34
  %31 = getelementptr inbounds %struct.tree_common, ptr %30, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !34
  %33 = tail call ptr @create_tmp_var(ptr noundef %32, ptr noundef null) #20
  %34 = tail call zeroext i8 @add_referenced_var(ptr noundef %33) #20
  %35 = tail call fastcc ptr @make_ssa_name(ptr noundef %33, ptr noundef null) #19
  %36 = tail call ptr @gimple_build_omp_atomic_load(ptr noundef %35, ptr noundef %23) #20
  %37 = getelementptr inbounds %struct.tree_ssa_name, ptr %35, i64 0, i32 2
  store ptr %36, ptr %37, align 8, !tbaa !34
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %28) #19
  call void @gsi_insert_after(ptr noundef nonnull %3, ptr noundef %36, i32 noundef 0) #20
  %38 = call ptr @split_block(ptr noundef %28, ptr noundef %36) #20
  %39 = getelementptr inbounds %struct.edge_def, ptr %38, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #18
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %40) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !54
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #18
  %41 = getelementptr inbounds %struct.reduction_info, ptr %5, i64 0, i32 2
  %42 = load i32, ptr %41, align 8, !tbaa !84
  %43 = getelementptr inbounds %struct.reduction_info, ptr %5, i64 0, i32 7
  %44 = load ptr, ptr %43, align 8, !tbaa !174
  %45 = call fastcc ptr @gimple_phi_result_ptr(ptr noundef %44) #19
  %46 = call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %45) #19
  %47 = getelementptr inbounds %struct.tree_common, ptr %46, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !34
  %49 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef %42, ptr noundef %48, ptr noundef %35, ptr noundef %46) #20
  %50 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %3, ptr noundef %49, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 2) #20
  %51 = call ptr @gimple_build_omp_atomic_store(ptr noundef %50) #20
  call void @gsi_insert_after(ptr noundef nonnull %3, ptr noundef %51, i32 noundef 0) #20
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #18
  ret i32 1
}

; Function Attrs: optsize
declare ptr @split_block(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gimple_build_omp_atomic_load(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gimple_build_omp_atomic_store(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_int_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #7 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 4, !tbaa !66
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !6
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi i32 [ %11, %8 ], [ 0, %5 ], [ 0, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store i32 %13, ptr %2, align 4, !tbaa !6
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_loop(i32 noundef %0) unnamed_addr #6 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !10
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !39
  %5 = getelementptr inbounds %struct.loops, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !65
  %7 = tail call fastcc ptr @VEC_loop_p_base_index(ptr noundef %6, i32 noundef %0) #19
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_int_heap_free(ptr nocapture noundef %0) unnamed_addr #13 {
  %2 = load ptr, ptr %0, align 8, !tbaa !10
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #19
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !10
  ret void
}

; Function Attrs: optsize
declare void @gt_ggc_mx_bitmap_head_def(ptr noundef) #2

; Function Attrs: optsize
declare void @gt_pch_nx_bitmap_head_def(ptr noundef) #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #17

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #17

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #15 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind }
attributes #18 = { nounwind }
attributes #19 = { optsize }
attributes #20 = { nounwind optsize }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"any pointer", !8, i64 0}
!12 = !{!13, !11, i64 48}
!13 = !{!"function", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !7, i64 104, !7, i64 108, !7, i64 112, !7, i64 116, !7, i64 120, !7, i64 124, !11, i64 128, !7, i64 136, !7, i64 137, !7, i64 138, !7, i64 138, !7, i64 138, !7, i64 138, !7, i64 138, !7, i64 138, !7, i64 138, !7, i64 139, !7, i64 139, !7, i64 139, !7, i64 139, !7, i64 139, !7, i64 139, !7, i64 139}
!14 = !{!15, !7, i64 0}
!15 = !{!"loop", !7, i64 0, !7, i64 4, !11, i64 8, !11, i64 16, !16, i64 24, !7, i64 32, !7, i64 36, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !17, i64 80, !17, i64 96, !8, i64 112, !8, i64 113, !7, i64 116, !11, i64 120, !11, i64 128, !8, i64 136, !11, i64 144}
!16 = !{!"lpt_decision", !7, i64 0, !7, i64 4}
!17 = !{!"", !18, i64 0, !18, i64 8}
!18 = !{!"long", !8, i64 0}
!19 = !{!15, !11, i64 48}
!20 = !{!15, !8, i64 136}
!21 = !{i8 0, i8 2}
!22 = !{!23, !11, i64 0}
!23 = !{!"edge_def", !11, i64 0, !11, i64 8, !8, i64 16, !11, i64 24, !11, i64 32, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !18, i64 56}
!24 = !{!25, !7, i64 96}
!25 = !{!"basic_block_def", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !8, i64 32, !11, i64 48, !11, i64 56, !8, i64 64, !18, i64 72, !7, i64 80, !7, i64 84, !7, i64 88, !7, i64 92, !7, i64 96}
!26 = !{!15, !11, i64 8}
!27 = !{!25, !7, i64 80}
!28 = !{!29, !11, i64 0}
!29 = !{!"", !11, i64 0, !7, i64 8, !7, i64 12, !8, i64 16}
!30 = !{!29, !7, i64 8}
!31 = distinct !{!31, !32}
!32 = !{!"llvm.loop.mustprogress"}
!33 = !{!13, !11, i64 24}
!34 = !{!8, !8, i64 0}
!35 = !{!36, !11, i64 8}
!36 = !{!"reduction_info", !11, i64 0, !11, i64 8, !7, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56}
!37 = !{!38, !7, i64 8}
!38 = !{!"", !11, i64 0, !7, i64 8}
!39 = !{!13, !11, i64 32}
!40 = !{!38, !11, i64 0}
!41 = !{!42, !11, i64 24}
!42 = !{!"loops", !7, i64 0, !11, i64 8, !11, i64 16, !11, i64 24}
!43 = !{!15, !11, i64 56}
!44 = distinct !{!44, !32}
!45 = !{!15, !7, i64 36}
!46 = distinct !{!46, !32}
!47 = distinct !{!47, !32}
!48 = distinct !{!48, !32}
!49 = !{!23, !11, i64 8}
!50 = !{!23, !7, i64 44}
!51 = distinct !{!51, !32}
!52 = !{!36, !11, i64 0}
!53 = distinct !{!53, !32}
!54 = !{i64 0, i64 8, !10, i64 8, i64 8, !10, i64 16, i64 8, !10}
!55 = distinct !{!55, !32}
!56 = !{!57, !11, i64 0}
!57 = !{!"lambda_trans_matrix_s", !11, i64 0, !7, i64 8, !7, i64 12, !7, i64 16}
!58 = !{!59, !11, i64 16}
!59 = !{!"tree_niter_desc", !11, i64 0, !11, i64 8, !11, i64 16, !17, i64 24, !60, i64 40, !11, i64 64, !7, i64 72}
!60 = !{!"", !11, i64 0, !11, i64 8, !8, i64 16}
!61 = !{!59, !11, i64 8}
!62 = distinct !{!62, !32}
!63 = !{i32 0, i32 2}
!64 = distinct !{!64, !32}
!65 = !{!42, !11, i64 8}
!66 = !{!67, !7, i64 0}
!67 = !{!"VEC_int_base", !7, i64 0, !7, i64 4, !8, i64 8}
!68 = !{!15, !11, i64 40}
!69 = !{!70, !7, i64 0}
!70 = !{!"VEC_loop_p_base", !7, i64 0, !7, i64 4, !8, i64 8}
!71 = !{!72, !11, i64 0}
!72 = !{!"", !11, i64 0, !11, i64 8, !11, i64 16}
!73 = !{!74, !11, i64 0}
!74 = !{!"gimple_seq_node_d", !11, i64 0, !11, i64 8, !11, i64 16}
!75 = !{!74, !11, i64 16}
!76 = distinct !{!76, !32}
!77 = !{!78, !11, i64 24}
!78 = !{!"ssa_use_operand_d", !11, i64 0, !11, i64 8, !8, i64 16, !11, i64 24}
!79 = !{!80, !11, i64 8}
!80 = !{!"immediate_use_iterator_d", !11, i64 0, !11, i64 8, !78, i64 16, !11, i64 48}
!81 = !{!78, !11, i64 8}
!82 = !{!80, !11, i64 0}
!83 = !{i32 0, i32 65536}
!84 = !{!36, !7, i64 16}
!85 = !{i32 0, i32 256}
!86 = !{!18, !18, i64 0}
!87 = distinct !{!87, !32}
!88 = !{!15, !11, i64 16}
!89 = distinct !{!89, !32}
!90 = distinct !{!90, !32}
!91 = !{!36, !11, i64 24}
!92 = !{!36, !11, i64 48}
!93 = !{!36, !11, i64 32}
!94 = distinct !{!94, !32}
!95 = distinct !{!95, !32}
!96 = distinct !{!96, !32}
!97 = distinct !{!97, !32}
!98 = distinct !{!98, !32}
!99 = distinct !{!99, !32}
!100 = distinct !{!100, !32}
!101 = !{!102, !11, i64 432}
!102 = !{!"lang_hooks", !11, i64 0, !18, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !11, i64 168, !11, i64 176, !11, i64 184, !11, i64 192, !11, i64 200, !11, i64 208, !11, i64 216, !11, i64 224, !11, i64 232, !103, i64 240, !104, i64 248, !105, i64 256, !106, i64 272, !107, i64 432, !108, i64 560, !11, i64 584, !11, i64 592, !11, i64 600, !11, i64 608, !11, i64 616, !11, i64 624, !11, i64 632, !11, i64 640, !11, i64 648, !11, i64 656, !11, i64 664, !8, i64 672}
!103 = !{!"lang_hooks_for_tree_inlining", !11, i64 0}
!104 = !{!"lang_hooks_for_callgraph", !11, i64 0}
!105 = !{!"lang_hooks_for_tree_dump", !11, i64 0, !11, i64 8}
!106 = !{!"lang_hooks_for_decls", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152}
!107 = !{!"lang_hooks_for_types", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !8, i64 120}
!108 = !{!"lang_hooks_for_lto", !11, i64 0, !11, i64 8, !11, i64 16}
!109 = !{!110, !11, i64 0}
!110 = !{!"clsn_data", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24}
!111 = !{!110, !11, i64 8}
!112 = !{!110, !11, i64 16}
!113 = !{!110, !11, i64 24}
!114 = !{!23, !7, i64 48}
!115 = distinct !{!115, !32}
!116 = !{!25, !11, i64 8}
!117 = distinct !{!117, !32}
!118 = !{!119, !7, i64 0}
!119 = !{!"VEC_edge_base", !7, i64 0, !7, i64 4, !8, i64 8}
!120 = !{!72, !11, i64 8}
!121 = !{!72, !11, i64 16}
!122 = !{!123, !11, i64 0}
!123 = !{!"gimple_bb_info", !11, i64 0, !11, i64 8}
!124 = !{!125, !11, i64 0}
!125 = !{!"gimple_seq_d", !11, i64 0, !11, i64 8, !11, i64 16}
!126 = !{!78, !11, i64 0}
!127 = !{!128, !7, i64 0}
!128 = !{!"VEC_basic_block_base", !7, i64 0, !7, i64 4, !8, i64 8}
!129 = !{!130, !11, i64 56}
!130 = !{!"elv_data", !131, i64 0, !11, i64 56, !11, i64 64, !8, i64 72}
!131 = !{!"walk_stmt_info", !72, i64 0, !11, i64 24, !11, i64 32, !8, i64 40, !8, i64 41, !8, i64 42, !8, i64 43, !11, i64 48}
!132 = !{!130, !11, i64 64}
!133 = !{!130, !8, i64 72}
!134 = distinct !{!134, !32}
!135 = !{!136, !7, i64 0}
!136 = !{!"int_tree_map", !7, i64 0, !11, i64 8}
!137 = !{!136, !11, i64 8}
!138 = !{!139, !7, i64 0}
!139 = !{!"name_to_copy_elt", !7, i64 0, !11, i64 8, !11, i64 16}
!140 = distinct !{!140, !32}
!141 = distinct !{!141, !32}
!142 = !{!139, !11, i64 8}
!143 = distinct !{!143, !32}
!144 = !{!145, !11, i64 16}
!145 = !{!"gimple_df", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !146, i64 32, !146, i64 48, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !7, i64 96, !147, i64 104}
!146 = !{!"pt_solution", !7, i64 0, !7, i64 0, !7, i64 0, !7, i64 0, !7, i64 0, !7, i64 0, !11, i64 8}
!147 = !{!"ssa_operands", !11, i64 0, !7, i64 8, !7, i64 12, !8, i64 16, !11, i64 24, !11, i64 32}
!148 = !{!139, !11, i64 16}
!149 = !{!36, !11, i64 40}
!150 = !{!25, !11, i64 0}
!151 = !{!152, !8, i64 0}
!152 = !{!"ssa_operand_iterator_d", !8, i64 0, !7, i64 4, !11, i64 8, !11, i64 16, !7, i64 24, !7, i64 28, !11, i64 32}
!153 = !{!152, !7, i64 4}
!154 = !{!152, !11, i64 8}
!155 = !{!156, !11, i64 8}
!156 = !{!"def_optype_d", !11, i64 0, !11, i64 8}
!157 = !{!156, !11, i64 0}
!158 = !{!152, !11, i64 32}
!159 = !{!152, !7, i64 28}
!160 = !{!152, !11, i64 16}
!161 = !{!162, !11, i64 0}
!162 = !{!"use_optype_d", !11, i64 0, !78, i64 8}
!163 = !{!152, !7, i64 24}
!164 = !{!125, !11, i64 8}
!165 = distinct !{!165, !32}
!166 = !{!167, !7, i64 40}
!167 = !{!"phi_arg_d", !78, i64 0, !11, i64 32, !7, i64 40}
!168 = !{!169, !11, i64 8}
!169 = !{!"gimple_omp_for_iter", !7, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32}
!170 = !{!169, !11, i64 16}
!171 = !{!169, !11, i64 24}
!172 = !{!169, !7, i64 0}
!173 = !{!169, !11, i64 32}
!174 = !{!36, !11, i64 56}

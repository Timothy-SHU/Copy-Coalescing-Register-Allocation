; ModuleID = 'tree-ssa-math-opts.c'
source_filename = "tree-ssa-math-opts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gimple_opt_pass = type { %struct.opt_pass }
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
%struct.optab_d = type { i32, ptr, i8, ptr, [87 x %struct.optab_handlers] }
%struct.optab_handlers = type { i32 }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.immediate_use_iterator_d = type { ptr, ptr, %struct.ssa_use_operand_d, ptr }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.tree_function_decl = type { %struct.tree_decl_non_common, ptr, ptr, ptr, ptr, i32 }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.tree_list = type { %struct.tree_common, ptr, ptr }
%struct.occurrence = type { ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.ssa_operand_iterator_d = type { i8, i32, ptr, ptr, i32, i32, ptr }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.use_optype_d = type { ptr, %struct.ssa_use_operand_d }
%struct.def_optype_d = type { ptr, ptr }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_with_memory_ops_base = type { %struct.gimple_statement_with_ops_base, ptr, ptr }
%struct.VEC_gimple_base = type { i32, i32, [1 x ptr] }
%struct.symbolic_number = type { i64, i32 }
%struct.tree_int_cst = type { %struct.tree_common, %struct.double_int }
%struct.double_int = type { i64, i64 }

@.str = private unnamed_addr constant [6 x i8] c"recip\00", align 1
@pass_cse_reciprocals = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str, ptr @gate_cse_reciprocals, ptr @execute_cse_reciprocals, ptr null, ptr null, i32 0, i32 0, i32 32, i32 0, i32 0, i32 0, i32 2069 } }, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"sincos\00", align 1
@pass_cse_sincos = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.1, ptr @gate_cse_sincos, ptr @execute_cse_sincos, ptr null, ptr null, i32 0, i32 0, i32 32, i32 0, i32 0, i32 0, i32 2069 } }, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"bswap\00", align 1
@pass_optimize_bswap = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.2, ptr @gate_optimize_bswap, ptr @execute_optimize_bswap, ptr null, ptr null, i32 0, i32 0, i32 32, i32 0, i32 0, i32 0, i32 0 } }, align 8
@optimize = external local_unnamed_addr global i32, align 4
@flag_reciprocal_math = external local_unnamed_addr global i32, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"dominators for recip\00", align 1
@cfun = external local_unnamed_addr global ptr, align 8
@occ_pool = internal unnamed_addr global ptr null, align 8
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@.str.4 = private unnamed_addr constant [21 x i8] c"tree-ssa-math-opts.c\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@occ_head = internal global ptr null, align 8
@flag_exceptions = external local_unnamed_addr global i32, align 4
@flag_trapping_math = external local_unnamed_addr global i32, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c"reciptmp\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"./tree-flow-inline.h\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gimple_rhs_class_table = external local_unnamed_addr constant [0 x i8], align 1
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@linux_uclibc = external local_unnamed_addr global i32, align 4
@.str.9 = private unnamed_addr constant [10 x i8] c"sincostmp\00", align 1
@flag_expensive_optimizations = external local_unnamed_addr global i32, align 4
@built_in_decls = external local_unnamed_addr global [721 x ptr], align 16
@optab_table = external local_unnamed_addr global [159 x %struct.optab_d], align 16
@word_mode = external local_unnamed_addr global i32, align 4
@.str.10 = private unnamed_addr constant [9 x i8] c"bswapsrc\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"bswapdst\00", align 1
@dump_file = external local_unnamed_addr global ptr, align 8
@.str.12 = private unnamed_addr constant [39 x i8] c"%d bit bswap implementation found at: \00", align 1
@global_trees = external local_unnamed_addr global [131 x ptr], align 16

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_cse_reciprocals() #0 !prof !104 !PGOFuncName !105 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !106
  %2 = icmp ne i32 %1, 0
  %3 = load i32, ptr @flag_reciprocal_math, align 4
  %4 = icmp ne i32 %3, 0
  %5 = select i1 %2, i1 %4, i1 false, !prof !110
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @execute_cse_reciprocals() #1 !prof !111 !PGOFuncName !112 {
  %1 = alloca %struct.gimple_stmt_iterator, align 8
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = alloca %struct.immediate_use_iterator_d, align 8
  %6 = load ptr, ptr @cfun, align 8, !tbaa !113
  %7 = getelementptr inbounds %struct.function, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !115
  %9 = getelementptr inbounds %struct.control_flow_graph, ptr %8, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !117
  %11 = sdiv i32 %10, 3
  %12 = add nsw i32 %11, 1
  %13 = sext i32 %12 to i64
  %14 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.3, i64 noundef 48, i64 noundef %13) #17
  store ptr %14, ptr @occ_pool, align 8, !tbaa !113
  tail call void @calculate_dominance_info(i32 noundef 1) #17
  tail call void @calculate_dominance_info(i32 noundef 2) #17
  %15 = load ptr, ptr @cfun, align 8, !tbaa !113
  %16 = getelementptr inbounds %struct.function, ptr %15, i64 0, i32 6
  %17 = load ptr, ptr %16, align 8, !tbaa !119
  %18 = getelementptr inbounds %struct.tree_decl_non_common, ptr %17, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !120
  %20 = icmp eq ptr %19, null
  br i1 %20, label %49, label %21

21:                                               ; preds = %0, %43
  %22 = phi ptr [ %45, %43 ], [ %19, %0 ]
  %23 = load ptr, ptr @cfun, align 8, !tbaa !113
  %24 = tail call ptr @gimple_default_def(ptr noundef %23, ptr noundef nonnull %22) #17
  %25 = icmp eq ptr %24, null
  br i1 %25, label %43, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.tree_common, ptr %22, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !120
  %29 = load i64, ptr %28, align 8
  %30 = trunc i64 %29 to i16
  switch i16 %30, label %43 [
    i16 9, label %37
    i16 13, label %31
    i16 14, label %31
  ]

31:                                               ; preds = %26, %26
  %32 = getelementptr inbounds %struct.tree_common, ptr %28, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !120
  %34 = load i64, ptr %33, align 8
  %35 = and i64 %34, 65535
  %36 = icmp eq i64 %35, 9
  br i1 %36, label %37, label %43

37:                                               ; preds = %26, %31
  %38 = tail call zeroext i8 @is_gimple_reg(ptr noundef nonnull %22) #17
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = load ptr, ptr @cfun, align 8, !tbaa !113
  %42 = tail call ptr @gimple_default_def(ptr noundef %41, ptr noundef nonnull %22) #17
  tail call fastcc void @execute_cse_reciprocals_1(ptr noundef null, ptr noundef %42) #18
  br label %43

43:                                               ; preds = %26, %21, %31, %37, %40
  %44 = getelementptr inbounds %struct.tree_common, ptr %22, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !120
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %21, !llvm.loop !121

47:                                               ; preds = %43
  %48 = load ptr, ptr @cfun, align 8, !tbaa !113
  br label %49

49:                                               ; preds = %47, %0
  %50 = phi ptr [ %48, %47 ], [ %15, %0 ]
  %51 = getelementptr inbounds %struct.function, ptr %50, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !115
  %53 = load ptr, ptr %52, align 8, !tbaa !123
  %54 = getelementptr inbounds %struct.basic_block_def, ptr %53, i64 0, i32 6
  %55 = load ptr, ptr %54, align 8, !tbaa !124
  %56 = getelementptr inbounds %struct.control_flow_graph, ptr %52, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !127
  %58 = icmp eq ptr %55, %57
  br i1 %58, label %205, label %59

59:                                               ; preds = %49, %196
  %60 = phi ptr [ %198, %196 ], [ %55, %49 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #19
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %60) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !128
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #19
  %61 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #18, !range !129
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %63, label %84

63:                                               ; preds = %59, %81
  %64 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #18
  %65 = call fastcc ptr @gimple_phi_result_ptr(ptr noundef %64) #18
  %66 = call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %65) #18
  %67 = getelementptr inbounds %struct.tree_common, ptr %66, i64 0, i32 2
  %68 = load ptr, ptr %67, align 8, !tbaa !120
  %69 = load i64, ptr %68, align 8
  %70 = trunc i64 %69 to i16
  switch i16 %70, label %81 [
    i16 9, label %77
    i16 13, label %71
    i16 14, label %71
  ]

71:                                               ; preds = %63, %63
  %72 = getelementptr inbounds %struct.tree_common, ptr %68, i64 0, i32 2
  %73 = load ptr, ptr %72, align 8, !tbaa !120
  %74 = load i64, ptr %73, align 8
  %75 = and i64 %74, 65535
  %76 = icmp eq i64 %75, 9
  br i1 %76, label %77, label %81

77:                                               ; preds = %63, %71
  %78 = call zeroext i8 @is_gimple_reg(ptr noundef nonnull %66) #17
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %77
  call fastcc void @execute_cse_reciprocals_1(ptr noundef null, ptr noundef nonnull %66) #18
  br label %81

81:                                               ; preds = %63, %71, %77, %80
  call fastcc void @gsi_next(ptr noundef nonnull %1) #18
  %82 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #18, !range !129
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %63, label %84, !llvm.loop !130

84:                                               ; preds = %81, %59
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #19
  call fastcc void @gsi_after_labels(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %60) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !128
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #19
  %85 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #18, !range !129
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %87, label %113

87:                                               ; preds = %84, %110
  %88 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #18
  %89 = call fastcc zeroext i8 @gimple_has_lhs(ptr noundef %88) #18, !range !129
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %110, label %91

91:                                               ; preds = %87
  %92 = call fastcc ptr @single_ssa_tree_operand(ptr noundef %88) #18
  %93 = icmp eq ptr %92, null
  br i1 %93, label %110, label %94

94:                                               ; preds = %91
  %95 = getelementptr inbounds %struct.tree_common, ptr %92, i64 0, i32 2
  %96 = load ptr, ptr %95, align 8, !tbaa !120
  %97 = load i64, ptr %96, align 8
  %98 = trunc i64 %97 to i16
  switch i16 %98, label %110 [
    i16 9, label %105
    i16 13, label %99
    i16 14, label %99
  ]

99:                                               ; preds = %94, %94
  %100 = getelementptr inbounds %struct.tree_common, ptr %96, i64 0, i32 2
  %101 = load ptr, ptr %100, align 8, !tbaa !120
  %102 = load i64, ptr %101, align 8
  %103 = and i64 %102, 65535
  %104 = icmp eq i64 %103, 9
  br i1 %104, label %105, label %110

105:                                              ; preds = %94, %99
  %106 = load i64, ptr %92, align 8
  %107 = and i64 %106, 65535
  %108 = icmp eq i64 %107, 141
  br i1 %108, label %109, label %110

109:                                              ; preds = %105
  call fastcc void @execute_cse_reciprocals_1(ptr noundef nonnull %1, ptr noundef nonnull %92) #18
  br label %110

110:                                              ; preds = %94, %109, %105, %99, %91, %87
  call fastcc void @gsi_next(ptr noundef nonnull %1) #18
  %111 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #18, !range !129
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %87, label %113, !llvm.loop !131

113:                                              ; preds = %110, %84
  %114 = call zeroext i8 @optimize_bb_for_size_p(ptr noundef %60) #17
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %116, label %196

116:                                              ; preds = %113
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #19
  call fastcc void @gsi_after_labels(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %60) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !128
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #19
  %117 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #18, !range !129
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %119, label %196

119:                                              ; preds = %116, %193
  %120 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #18
  %121 = call fastcc zeroext i8 @is_gimple_assign(ptr noundef %120) #18, !range !129
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %193, label %123

123:                                              ; preds = %119
  %124 = call fastcc i32 @gimple_assign_rhs_code(ptr noundef %120) #18, !range !132
  %125 = icmp eq i32 %124, 75
  br i1 %125, label %126, label %193

126:                                              ; preds = %123
  %127 = call fastcc ptr @gimple_assign_rhs2(ptr noundef %120) #18
  %128 = load i64, ptr %127, align 8
  %129 = and i64 %128, 65535
  %130 = icmp eq i64 %129, 141
  br i1 %130, label %131, label %193

131:                                              ; preds = %126
  %132 = getelementptr inbounds %struct.tree_ssa_name, ptr %127, i64 0, i32 2
  %133 = load ptr, ptr %132, align 8, !tbaa !120
  %134 = call fastcc zeroext i8 @is_gimple_call(ptr noundef %133) #18, !range !129
  %135 = icmp eq i8 %134, 0
  br i1 %135, label %193, label %136

136:                                              ; preds = %131
  %137 = call fastcc ptr @gimple_call_lhs(ptr noundef %133) #18
  %138 = icmp eq ptr %137, null
  br i1 %138, label %193, label %139

139:                                              ; preds = %136
  %140 = call fastcc ptr @gimple_call_fndecl(ptr noundef %133) #18
  %141 = icmp eq ptr %140, null
  br i1 %141, label %193, label %142

142:                                              ; preds = %139
  %143 = getelementptr inbounds %struct.tree_function_decl, ptr %140, i64 0, i32 5
  %144 = load i32, ptr %143, align 8
  %145 = and i32 %144, 4096
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %193, label %147

147:                                              ; preds = %142
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #19
  %148 = and i32 %144, 2047
  %149 = and i32 %144, 6144
  %150 = icmp eq i32 %149, 4096
  %151 = zext i1 %150 to i8
  %152 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 28), align 8, !tbaa !133
  %153 = call ptr %152(i32 noundef %148, i8 noundef zeroext %151, i8 noundef zeroext 0) #17
  %154 = icmp eq ptr %153, null
  br i1 %154, label %192, label %155

155:                                              ; preds = %147
  %156 = call fastcc ptr @first_readonly_imm_use(ptr noundef nonnull %5, ptr noundef nonnull %127) #18
  %157 = call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %5) #18, !range !129
  %158 = icmp eq i8 %157, 0
  br i1 %158, label %159, label %181

159:                                              ; preds = %155, %177
  %160 = phi ptr [ %178, %177 ], [ %156, %155 ]
  %161 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %160, i64 0, i32 2
  %162 = load ptr, ptr %161, align 8, !tbaa !120
  %163 = call fastcc zeroext i8 @is_gimple_debug(ptr noundef %162) #18, !range !129
  %164 = icmp eq i8 %163, 0
  br i1 %164, label %165, label %177

165:                                              ; preds = %159
  %166 = call fastcc zeroext i8 @is_gimple_assign(ptr noundef %162) #18, !range !129
  %167 = icmp eq i8 %166, 0
  br i1 %167, label %192, label %168

168:                                              ; preds = %165
  %169 = call fastcc i32 @gimple_assign_rhs_code(ptr noundef %162) #18, !range !132
  %170 = icmp eq i32 %169, 75
  br i1 %170, label %171, label %192

171:                                              ; preds = %168
  %172 = call fastcc ptr @gimple_assign_rhs1(ptr noundef %162) #18
  %173 = icmp eq ptr %172, %127
  br i1 %173, label %192, label %174

174:                                              ; preds = %171
  %175 = call fastcc ptr @gimple_assign_rhs2(ptr noundef %162) #18
  %176 = icmp eq ptr %175, %127
  br i1 %176, label %177, label %192

177:                                              ; preds = %159, %174
  %178 = call fastcc ptr @next_readonly_imm_use(ptr noundef nonnull %5) #18
  %179 = call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %5) #18, !range !129
  %180 = icmp eq i8 %179, 0
  br i1 %180, label %159, label %181, !llvm.loop !145

181:                                              ; preds = %177, %155
  call void @gimple_replace_lhs(ptr noundef %133, ptr noundef nonnull %127) #17
  call fastcc void @gimple_call_set_fndecl(ptr noundef %133, ptr noundef nonnull %153) #18
  call fastcc void @update_stmt(ptr noundef %133) #18
  %182 = call fastcc ptr @first_imm_use_stmt(ptr noundef nonnull %5, ptr noundef nonnull %127) #18
  %183 = call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %5) #18, !range !129
  %184 = icmp eq i8 %183, 0
  br i1 %184, label %185, label %191

185:                                              ; preds = %181, %185
  %186 = phi ptr [ %188, %185 ], [ %182, %181 ]
  call fastcc void @gimple_assign_set_rhs_code(ptr noundef %186) #18
  %187 = call zeroext i8 @fold_stmt_inplace(ptr noundef %186) #17
  call fastcc void @update_stmt(ptr noundef %186) #18
  %188 = call fastcc ptr @next_imm_use_stmt(ptr noundef nonnull %5) #18
  %189 = call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %5) #18, !range !129
  %190 = icmp eq i8 %189, 0
  br i1 %190, label %185, label %191, !llvm.loop !146

191:                                              ; preds = %185, %181
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #19
  br label %193

192:                                              ; preds = %171, %168, %165, %174, %147
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #19
  br label %193

193:                                              ; preds = %131, %136, %139, %142, %191, %192, %126, %119, %123
  call fastcc void @gsi_next(ptr noundef nonnull %1) #18
  %194 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #18, !range !129
  %195 = icmp eq i8 %194, 0
  br i1 %195, label %119, label %196, !llvm.loop !147

196:                                              ; preds = %193, %116, %113
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #19
  %197 = getelementptr inbounds %struct.basic_block_def, ptr %60, i64 0, i32 6
  %198 = load ptr, ptr %197, align 8, !tbaa !124
  %199 = load ptr, ptr @cfun, align 8, !tbaa !113
  %200 = getelementptr inbounds %struct.function, ptr %199, i64 0, i32 1
  %201 = load ptr, ptr %200, align 8, !tbaa !115
  %202 = getelementptr inbounds %struct.control_flow_graph, ptr %201, i64 0, i32 1
  %203 = load ptr, ptr %202, align 8, !tbaa !127
  %204 = icmp eq ptr %198, %203
  br i1 %204, label %205, label %59, !llvm.loop !148

205:                                              ; preds = %196, %49
  call void @free_dominance_info(i32 noundef 1) #17
  call void @free_dominance_info(i32 noundef 2) #17
  %206 = load ptr, ptr @occ_pool, align 8, !tbaa !113
  call void @free_alloc_pool(ptr noundef %206) #17
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_cse_sincos() #0 !prof !104 !PGOFuncName !149 {
  %1 = load i32, ptr @linux_uclibc, align 4, !tbaa !106
  %2 = and i32 %1, 1
  %3 = icmp eq i32 %2, 0
  %4 = load i32, ptr @optimize, align 4
  %5 = icmp ne i32 %4, 0
  %6 = select i1 %3, i1 %5, i1 false, !prof !110
  %7 = zext i1 %6 to i8
  ret i8 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @execute_cse_sincos() #1 !prof !104 !PGOFuncName !150 {
  %1 = alloca %struct.gimple_stmt_iterator, align 8
  tail call void @calculate_dominance_info(i32 noundef 1) #17
  %2 = load ptr, ptr @cfun, align 8, !tbaa !113
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !115
  %5 = load ptr, ptr %4, align 8, !tbaa !123
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !124
  %8 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !127
  %10 = icmp eq ptr %7, %9
  br i1 %10, label %50, label %11, !prof !151

11:                                               ; preds = %0, %41
  %12 = phi ptr [ %43, %41 ], [ %7, %0 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #19
  call fastcc void @gsi_after_labels(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %1, ptr noundef %12) #18
  %13 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #18, !range !129
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %41, !prof !152

15:                                               ; preds = %11, %38
  %16 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #18
  %17 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %16) #18, !range !129
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %38, label %19, !prof !153

19:                                               ; preds = %15
  %20 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %16) #18
  %21 = icmp eq ptr %20, null
  br i1 %21, label %38, label %22, !prof !154

22:                                               ; preds = %19
  %23 = tail call fastcc ptr @gimple_call_fndecl(ptr noundef %16) #18
  %24 = icmp eq ptr %23, null
  br i1 %24, label %38, label %25, !prof !155

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.tree_function_decl, ptr %23, i64 0, i32 5
  %27 = load i32, ptr %26, align 8
  %28 = and i32 %27, 6144
  %29 = icmp eq i32 %28, 6144
  br i1 %29, label %30, label %38, !prof !155

30:                                               ; preds = %25
  %31 = and i32 %27, 2047
  switch i32 %31, label %38 [
    i32 30, label %32
    i32 31, label %32
    i32 35, label %32
    i32 219, label %32
    i32 223, label %32
    i32 227, label %32
    i32 285, label %32
    i32 286, label %32
    i32 287, label %32
  ]

32:                                               ; preds = %30, %30, %30, %30, %30, %30, %30, %30, %30
  %33 = tail call fastcc ptr @gimple_call_arg(ptr noundef %16) #18
  %34 = load i64, ptr %33, align 8
  %35 = and i64 %34, 65535
  %36 = icmp eq i64 %35, 141
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  tail call fastcc void @execute_cse_sincos_1(ptr noundef nonnull %33) #18
  br label %38

38:                                               ; preds = %37, %32, %30, %25, %22, %19, %15
  call fastcc void @gsi_next(ptr noundef nonnull %1) #18
  %39 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #18, !range !129
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %15, label %41, !prof !156, !llvm.loop !157

41:                                               ; preds = %38, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #19
  %42 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 6
  %43 = load ptr, ptr %42, align 8, !tbaa !124
  %44 = load ptr, ptr @cfun, align 8, !tbaa !113
  %45 = getelementptr inbounds %struct.function, ptr %44, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !115
  %47 = getelementptr inbounds %struct.control_flow_graph, ptr %46, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !127
  %49 = icmp eq ptr %43, %48
  br i1 %49, label %50, label %11, !prof !158, !llvm.loop !159

50:                                               ; preds = %41, %0
  tail call void @free_dominance_info(i32 noundef 1) #17
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_optimize_bswap() #0 !prof !104 !PGOFuncName !160 {
  %1 = load i32, ptr @flag_expensive_optimizations, align 4, !tbaa !106
  %2 = icmp ne i32 %1, 0
  %3 = load i32, ptr @optimize, align 4
  %4 = icmp ne i32 %3, 0
  %5 = select i1 %2, i1 %4, i1 false, !prof !110
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @execute_optimize_bswap() #1 !prof !104 !PGOFuncName !161 {
  %1 = alloca %struct.gimple_stmt_iterator, align 8
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 419), align 8, !tbaa !113
  %4 = icmp ne ptr %3, null
  %5 = load i32, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 68, i32 4, i64 16), align 16
  %6 = icmp ne i32 %5, 2956
  %7 = select i1 %4, i1 %6, i1 false, !prof !110
  %8 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 420), align 16, !tbaa !113
  %9 = icmp eq ptr %8, null
  br i1 %9, label %17, label %10, !prof !162

10:                                               ; preds = %0
  %11 = load i32, ptr getelementptr inbounds ([159 x %struct.optab_d], ptr @optab_table, i64 0, i64 68, i32 4, i64 17), align 4, !tbaa !163
  %12 = icmp eq i32 %11, 2956
  br i1 %12, label %13, label %20, !prof !110

13:                                               ; preds = %10
  %14 = load i32, ptr @word_mode, align 4
  %15 = icmp eq i32 %14, 16
  %16 = select i1 %7, i1 %15, i1 false, !prof !110
  br label %17

17:                                               ; preds = %13, %0
  %18 = phi i1 [ false, %0 ], [ %16, %13 ]
  %19 = select i1 %7, i1 true, i1 %18
  br i1 %19, label %20, label %126, !prof !165

20:                                               ; preds = %10, %17
  %21 = phi i1 [ %18, %17 ], [ true, %10 ]
  br i1 %7, label %22, label %29, !prof !110

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !120
  %25 = getelementptr inbounds %struct.tree_type, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !120
  %27 = getelementptr inbounds %struct.tree_list, ptr %26, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !120
  br label %29

29:                                               ; preds = %22, %20
  %30 = phi ptr [ %28, %22 ], [ null, %20 ]
  br i1 %21, label %31, label %38, !prof !110

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !120
  %34 = getelementptr inbounds %struct.tree_type, ptr %33, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !120
  %36 = getelementptr inbounds %struct.tree_list, ptr %35, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !120
  br label %38

38:                                               ; preds = %31, %29
  %39 = phi ptr [ %37, %31 ], [ null, %29 ]
  %40 = load ptr, ptr @cfun, align 8, !tbaa !113
  %41 = getelementptr inbounds %struct.function, ptr %40, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !115
  %43 = load ptr, ptr %42, align 8, !tbaa !123
  %44 = getelementptr inbounds %struct.basic_block_def, ptr %43, i64 0, i32 6
  %45 = load ptr, ptr %44, align 8, !tbaa !124
  %46 = getelementptr inbounds %struct.control_flow_graph, ptr %42, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !127
  %48 = icmp eq ptr %45, %47
  br i1 %48, label %126, label %49, !prof !151

49:                                               ; preds = %38, %113
  %50 = phi ptr [ %116, %113 ], [ %45, %38 ]
  %51 = phi i8 [ %114, %113 ], [ 0, %38 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #19
  call fastcc void @gsi_after_labels(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %50) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !128
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #19
  %52 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #18, !range !129
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %113, !prof !152

54:                                               ; preds = %49, %109
  %55 = phi i8 [ %110, %109 ], [ %51, %49 ]
  %56 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #18
  %57 = call fastcc zeroext i8 @is_gimple_assign(ptr noundef %56) #18, !range !129
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %109, label %59, !prof !166

59:                                               ; preds = %54
  %60 = call fastcc i32 @gimple_assign_rhs_code(ptr noundef %56) #18, !range !132
  %61 = icmp eq i32 %60, 87
  br i1 %61, label %62, label %109, !prof !167

62:                                               ; preds = %59
  %63 = call fastcc ptr @gimple_expr_type(ptr noundef %56) #18
  %64 = getelementptr inbounds %struct.tree_type, ptr %63, i64 0, i32 6
  %65 = load i32, ptr %64, align 4
  %66 = and i32 %65, 1023
  switch i32 %66, label %109 [
    i32 32, label %67
    i32 64, label %68
  ], !prof !168

67:                                               ; preds = %62
  br i1 %7, label %69, label %109, !prof !169

68:                                               ; preds = %62
  br i1 %21, label %69, label %109

69:                                               ; preds = %68, %67
  %70 = phi ptr [ %30, %67 ], [ %39, %68 ]
  %71 = phi ptr [ getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 419), %67 ], [ getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 420), %68 ]
  %72 = load ptr, ptr %71, align 8
  %73 = icmp eq ptr %72, null
  br i1 %73, label %109, label %74, !prof !170

74:                                               ; preds = %69
  %75 = call fastcc ptr @find_bswap(ptr noundef %56) #18
  %76 = icmp eq ptr %75, null
  br i1 %76, label %109, label %77, !prof !169

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.tree_common, ptr %75, i64 0, i32 2
  %79 = load ptr, ptr %78, align 8, !tbaa !120
  %80 = call zeroext i8 @useless_type_conversion_p(ptr noundef %79, ptr noundef %70) #17
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %77
  %83 = call ptr @create_tmp_var(ptr noundef %70, ptr noundef nonnull @.str.10) #17
  %84 = call zeroext i8 @add_referenced_var(ptr noundef %83) #17
  %85 = call fastcc ptr @make_ssa_name(ptr noundef %83) #18
  %86 = call ptr @gimple_build_assign_with_ops_stat(i32 noundef 113, ptr noundef %85, ptr noundef nonnull %75, ptr noundef null) #17
  call void @gsi_insert_before(ptr noundef nonnull %1, ptr noundef %86, i32 noundef 1) #17
  br label %87

87:                                               ; preds = %82, %77
  %88 = phi ptr [ %75, %77 ], [ %85, %82 ]
  %89 = call ptr (ptr, i32, ...) @gimple_build_call(ptr noundef nonnull %72, i32 noundef 1, ptr noundef %88) #17
  %90 = call fastcc ptr @gimple_assign_lhs(ptr noundef %56) #18
  %91 = getelementptr inbounds %struct.tree_common, ptr %90, i64 0, i32 2
  %92 = load ptr, ptr %91, align 8, !tbaa !120
  %93 = call zeroext i8 @useless_type_conversion_p(ptr noundef %92, ptr noundef %70) #17
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %87
  %96 = call ptr @create_tmp_var(ptr noundef %70, ptr noundef nonnull @.str.11) #17
  %97 = call zeroext i8 @add_referenced_var(ptr noundef %96) #17
  %98 = call fastcc ptr @make_ssa_name(ptr noundef %96) #18
  %99 = call fastcc ptr @gimple_assign_lhs(ptr noundef %56) #18
  %100 = call ptr @gimple_build_assign_with_ops_stat(i32 noundef 113, ptr noundef %99, ptr noundef %98, ptr noundef null) #17
  call void @gsi_insert_after(ptr noundef nonnull %1, ptr noundef %100, i32 noundef 1) #17
  br label %101

101:                                              ; preds = %95, %87
  %102 = phi ptr [ %90, %87 ], [ %98, %95 ]
  call fastcc void @gimple_call_set_lhs(ptr noundef %89, ptr noundef %102) #18
  %103 = load ptr, ptr @dump_file, align 8, !tbaa !113
  %104 = icmp eq ptr %103, null
  br i1 %104, label %108, label %105

105:                                              ; preds = %101
  %106 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %103, ptr noundef nonnull @.str.12, i32 noundef %66) #18
  %107 = load ptr, ptr @dump_file, align 8, !tbaa !113
  call void @print_gimple_stmt(ptr noundef %107, ptr noundef %56, i32 noundef 0, i32 noundef 0) #17
  br label %108

108:                                              ; preds = %105, %101
  call void @gsi_insert_after(ptr noundef nonnull %1, ptr noundef %89, i32 noundef 1) #17
  call void @gsi_remove(ptr noundef nonnull %1, i8 noundef zeroext 1) #17
  br label %109

109:                                              ; preds = %68, %67, %74, %69, %62, %54, %59, %108
  %110 = phi i8 [ 1, %108 ], [ %55, %59 ], [ %55, %54 ], [ %55, %62 ], [ %55, %69 ], [ %55, %74 ], [ %55, %68 ], [ %55, %67 ]
  call fastcc void @gsi_next(ptr noundef nonnull %1) #18
  %111 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #18, !range !129
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %54, label %113, !prof !156, !llvm.loop !171

113:                                              ; preds = %109, %49
  %114 = phi i8 [ %51, %49 ], [ %110, %109 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #19
  %115 = getelementptr inbounds %struct.basic_block_def, ptr %50, i64 0, i32 6
  %116 = load ptr, ptr %115, align 8, !tbaa !124
  %117 = load ptr, ptr @cfun, align 8, !tbaa !113
  %118 = getelementptr inbounds %struct.function, ptr %117, i64 0, i32 1
  %119 = load ptr, ptr %118, align 8, !tbaa !115
  %120 = getelementptr inbounds %struct.control_flow_graph, ptr %119, i64 0, i32 1
  %121 = load ptr, ptr %120, align 8, !tbaa !127
  %122 = icmp eq ptr %116, %121
  br i1 %122, label %123, label %49, !prof !158, !llvm.loop !172

123:                                              ; preds = %113
  %124 = icmp eq i8 %114, 0
  %125 = select i1 %124, i32 0, i32 2069
  br label %126

126:                                              ; preds = %38, %123, %17
  %127 = phi i32 [ 0, %17 ], [ 0, %38 ], [ %125, %123 ]
  ret i32 %127
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare ptr @create_alloc_pool(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @calculate_dominance_info(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @gimple_default_def(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @execute_cse_reciprocals_1(ptr noundef %0, ptr noundef %1) unnamed_addr #1 !prof !111 !PGOFuncName !173 {
  %3 = alloca %struct.immediate_use_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #19
  %4 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !120
  %6 = load i64, ptr %5, align 8
  %7 = trunc i64 %6 to i16
  switch i16 %7, label %17 [
    i16 9, label %14
    i16 13, label %8
    i16 14, label %8
  ]

8:                                                ; preds = %2, %2
  %9 = getelementptr inbounds %struct.tree_common, ptr %5, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !120
  %11 = load i64, ptr %10, align 8
  %12 = and i64 %11, 65535
  %13 = icmp eq i64 %12, 9
  br i1 %13, label %14, label %17

14:                                               ; preds = %2, %8
  %15 = tail call zeroext i8 @is_gimple_reg(ptr noundef nonnull %1) #17
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2, %14, %8
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 411, ptr noundef nonnull @.str.5) #17
  br label %18

18:                                               ; preds = %14, %17
  %19 = call fastcc ptr @first_readonly_imm_use(ptr noundef nonnull %3, ptr noundef nonnull %1) #18
  %20 = call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %3) #18, !range !129
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %37

22:                                               ; preds = %18, %32
  %23 = phi ptr [ %34, %32 ], [ %19, %18 ]
  %24 = phi i32 [ %33, %32 ], [ 0, %18 ]
  %25 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %23, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !120
  %27 = tail call fastcc zeroext i8 @is_division_by(ptr noundef %26, ptr noundef %1) #18, !range !129
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %22
  %30 = tail call fastcc ptr @gimple_bb(ptr noundef %26) #18
  tail call fastcc void @register_division_in(ptr noundef %30) #18
  %31 = add nsw i32 %24, 1
  br label %32

32:                                               ; preds = %29, %22
  %33 = phi i32 [ %31, %29 ], [ %24, %22 ]
  %34 = call fastcc ptr @next_readonly_imm_use(ptr noundef nonnull %3) #18
  %35 = call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %3) #18, !range !129
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %22, label %37, !llvm.loop !174

37:                                               ; preds = %32, %18
  %38 = phi i32 [ 0, %18 ], [ %33, %32 ]
  %39 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 54), align 8, !tbaa !175
  %40 = load ptr, ptr %4, align 8, !tbaa !120
  %41 = load i64, ptr %40, align 8
  %42 = and i64 %41, 65535
  %43 = icmp eq i64 %42, 14
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = tail call i32 @vector_type_mode(ptr noundef nonnull %40) #17
  br label %51

46:                                               ; preds = %37
  %47 = getelementptr inbounds %struct.tree_type, ptr %40, i64 0, i32 6
  %48 = load i32, ptr %47, align 4
  %49 = lshr i32 %48, 16
  %50 = and i32 %49, 255
  br label %51

51:                                               ; preds = %46, %44
  %52 = phi i32 [ %45, %44 ], [ %50, %46 ]
  %53 = tail call i32 %39(i32 noundef %52) #17
  %54 = icmp slt i32 %38, %53
  br i1 %54, label %84, label %55

55:                                               ; preds = %51
  %56 = load ptr, ptr @occ_head, align 8, !tbaa !113
  %57 = icmp eq ptr %56, null
  br i1 %57, label %63, label %58

58:                                               ; preds = %55, %58
  %59 = phi ptr [ %61, %58 ], [ %56, %55 ]
  tail call fastcc void @compute_merit(ptr noundef nonnull %59) #18
  tail call fastcc void @insert_reciprocals(ptr noundef %0, ptr noundef nonnull %59, ptr noundef %1, ptr noundef null, i32 noundef %53) #18
  %60 = getelementptr inbounds %struct.occurrence, ptr %59, i64 0, i32 4
  %61 = load ptr, ptr %60, align 8, !tbaa !113
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %58, !llvm.loop !176

63:                                               ; preds = %58, %55
  %64 = call fastcc ptr @first_imm_use_stmt(ptr noundef nonnull %3, ptr noundef %1) #18
  %65 = call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %3) #18, !range !129
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %67, label %84

67:                                               ; preds = %63, %80
  %68 = phi ptr [ %81, %80 ], [ %64, %63 ]
  %69 = call fastcc zeroext i8 @is_division_by(ptr noundef %68, ptr noundef %1) #18, !range !129
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %80, label %71

71:                                               ; preds = %67
  %72 = call fastcc ptr @first_imm_use_on_stmt(ptr noundef nonnull %3) #18
  %73 = call fastcc zeroext i8 @end_imm_use_on_stmt_p(ptr noundef nonnull %3) #18, !range !129
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %71, %75
  %76 = phi ptr [ %77, %75 ], [ %72, %71 ]
  call fastcc void @replace_reciprocal(ptr noundef %76) #18
  %77 = call fastcc ptr @next_imm_use_on_stmt(ptr noundef nonnull %3) #18
  %78 = call fastcc zeroext i8 @end_imm_use_on_stmt_p(ptr noundef nonnull %3) #18, !range !129
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %75, label %80, !llvm.loop !177

80:                                               ; preds = %75, %71, %67
  %81 = call fastcc ptr @next_imm_use_stmt(ptr noundef nonnull %3) #18
  %82 = call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %3) #18, !range !129
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %67, label %84, !llvm.loop !178

84:                                               ; preds = %80, %63, %51
  %85 = load ptr, ptr @occ_head, align 8, !tbaa !113
  %86 = icmp eq ptr %85, null
  br i1 %86, label %91, label %87

87:                                               ; preds = %84, %87
  %88 = phi ptr [ %89, %87 ], [ %85, %84 ]
  %89 = call fastcc ptr @free_bb(ptr noundef nonnull %88) #18
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %87, !llvm.loop !179

91:                                               ; preds = %87, %84
  store ptr null, ptr @occ_head, align 8, !tbaa !113
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #19
  ret void
}

; Function Attrs: optsize
declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #5 !prof !180 !PGOFuncName !181 {
  %2 = load ptr, ptr %0, align 8, !tbaa !182
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #6 !prof !184 !PGOFuncName !185 {
  %2 = load ptr, ptr %0, align 8, !tbaa !182
  %3 = load ptr, ptr %2, align 8, !tbaa !186
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @get_def_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !111 !PGOFuncName !188 {
  %2 = load ptr, ptr %0, align 8, !tbaa !113
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @gimple_phi_result_ptr(ptr noundef readnone %0) unnamed_addr #7 !prof !111 !PGOFuncName !189 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #8 !prof !190 !PGOFuncName !191 {
  %2 = load ptr, ptr %0, align 8, !tbaa !182
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !192
  store ptr %4, ptr %0, align 8, !tbaa !182
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_after_labels(ptr dead_on_unwind noalias nocapture writable sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #9 !prof !193 !PGOFuncName !194 {
  tail call fastcc void @gsi_start_bb(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) #18
  %3 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #18, !range !129
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %12, !prof !195

5:                                                ; preds = %2, %9
  %6 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #18
  %7 = tail call fastcc i32 @gimple_code(ptr noundef %6) #18, !range !196
  %8 = icmp eq i32 %7, 4
  br i1 %8, label %9, label %12, !prof !197

9:                                                ; preds = %5
  tail call fastcc void @gsi_next(ptr noundef %0) #18
  %10 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #18, !range !129
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %5, label %12, !prof !198, !llvm.loop !199

12:                                               ; preds = %5, %9, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @gimple_has_lhs(ptr noundef %0) unnamed_addr #1 !prof !111 !PGOFuncName !200 {
  %2 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %0) #18, !range !129
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %11

4:                                                ; preds = %1
  %5 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %0) #18, !range !129
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %4
  %8 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %0) #18
  %9 = icmp ne ptr %8, null
  %10 = zext i1 %9 to i8
  br label %11

11:                                               ; preds = %4, %7, %1
  %12 = phi i8 [ 1, %1 ], [ 0, %4 ], [ %10, %7 ]
  ret i8 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_ssa_tree_operand(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !111 !PGOFuncName !201 {
  %2 = alloca %struct.ssa_operand_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #19
  %3 = call fastcc ptr @op_iter_init_tree(ptr noundef nonnull %2, ptr noundef %0) #18
  %4 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %2) #18
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = call fastcc ptr @op_iter_next_tree(ptr noundef nonnull %2) #18
  %8 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %2) #18
  %9 = icmp eq i8 %8, 0
  %10 = select i1 %9, ptr null, ptr %3
  br label %11

11:                                               ; preds = %6, %1
  %12 = phi ptr [ null, %1 ], [ %10, %6 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #19
  ret ptr %12
}

; Function Attrs: optsize
declare zeroext i8 @optimize_bb_for_size_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_assign(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !202 !PGOFuncName !203 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #18, !range !196
  %3 = icmp eq i32 %2, 6
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) unnamed_addr #1 !prof !204 !PGOFuncName !205 {
  %2 = tail call fastcc i32 @gimple_expr_code(ptr noundef %0) #18, !range !132
  %3 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %2) #18, !range !196
  %4 = icmp eq i32 %3, 3
  br i1 %4, label %5, label %10, !prof !206

5:                                                ; preds = %1
  %6 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #18
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i32
  %9 = and i32 %8, 65535
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi i32 [ %9, %5 ], [ %2, %1 ]
  ret i32 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs2(ptr noundef %0) unnamed_addr #1 !prof !207 !PGOFuncName !208 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #18
  %3 = icmp ugt i32 %2, 2
  br i1 %3, label %4, label %6, !prof !169

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 2) #18
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi ptr [ %5, %4 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_call(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !209 !PGOFuncName !210 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #18, !range !196
  %3 = icmp eq i32 %2, 8
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_lhs(ptr noundef %0) unnamed_addr #1 !prof !211 !PGOFuncName !212 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #18
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fndecl(ptr noundef %0) unnamed_addr #1 !prof !213 !PGOFuncName !214 {
  %2 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #18
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 121
  br i1 %5, label %6, label %9, !prof !215

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !120
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc ptr @first_readonly_imm_use(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #10 !prof !111 !PGOFuncName !216 {
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5
  %4 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !217
  %5 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !220
  store ptr %6, ptr %0, align 8, !tbaa !221
  %7 = tail call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %0) #18, !range !129
  %8 = icmp eq i8 %7, 0
  %9 = select i1 %8, ptr %6, ptr null
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @end_readonly_imm_use_p(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !111 !PGOFuncName !222 {
  %2 = load ptr, ptr %0, align 8, !tbaa !221
  %3 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !217
  %5 = icmp eq ptr %2, %4
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_debug(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !111 !PGOFuncName !223 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #18, !range !196
  %3 = icmp eq i32 %2, 2
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs1(ptr noundef %0) unnamed_addr #1 !prof !224 !PGOFuncName !225 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #18
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @next_readonly_imm_use(ptr nocapture noundef %0) unnamed_addr #8 !prof !111 !PGOFuncName !226 {
  %2 = load ptr, ptr %0, align 8, !tbaa !221
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !220
  store ptr %4, ptr %0, align 8, !tbaa !221
  %5 = tail call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %0) #18, !range !129
  %6 = icmp eq i8 %5, 0
  %7 = select i1 %6, ptr %4, ptr null
  ret ptr %7
}

; Function Attrs: optsize
declare void @gimple_replace_lhs(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_call_set_fndecl(ptr noundef %0, ptr noundef %1) unnamed_addr #1 !prof !111 !PGOFuncName !227 {
  %3 = tail call fastcc i32 @gimple_location(ptr noundef %0) #18
  %4 = tail call ptr @build_fold_addr_expr_loc(i32 noundef %3, ptr noundef %1) #17
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 1, ptr noundef %4) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_stmt(ptr noundef %0) unnamed_addr #1 !prof !111 !PGOFuncName !228 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #18, !range !129
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @gimple_set_modified(ptr noundef %0, i8 noundef zeroext 1) #17
  tail call void @update_stmt_operands(ptr noundef %0) #17
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @first_imm_use_stmt(ptr noundef %0, ptr noundef %1) unnamed_addr #1 !prof !111 !PGOFuncName !229 {
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5
  %4 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !217
  %5 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !220
  store ptr %6, ptr %0, align 8, !tbaa !221
  %7 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %7, i8 0, i64 40, i1 false)
  %8 = tail call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %0) #18, !range !129
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  tail call fastcc void @link_use_stmts_after(ptr noundef %6, ptr noundef nonnull %0) #18
  %11 = load ptr, ptr %0, align 8, !tbaa !221
  %12 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !120
  br label %14

14:                                               ; preds = %2, %10
  %15 = phi ptr [ %13, %10 ], [ null, %2 ]
  ret ptr %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @end_imm_use_stmt_p(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !111 !PGOFuncName !230 {
  %2 = load ptr, ptr %0, align 8, !tbaa !221
  %3 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !217
  %5 = icmp eq ptr %2, %4
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @gimple_assign_set_rhs_code(ptr nocapture noundef %0) unnamed_addr #10 !prof !111 !PGOFuncName !231 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 65535
  %4 = or disjoint i32 %3, 4259840
  store i32 %4, ptr %0, align 8
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @fold_stmt_inplace(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @next_imm_use_stmt(ptr noundef %0) unnamed_addr #1 !prof !111 !PGOFuncName !232 {
  %2 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2
  %3 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !233
  store ptr %4, ptr %0, align 8, !tbaa !221
  %5 = tail call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %0) #18, !range !129
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %2, align 8, !tbaa !234
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %7
  tail call fastcc void @delink_imm_use(ptr noundef nonnull %2) #18
  br label %15

11:                                               ; preds = %1
  tail call fastcc void @link_use_stmts_after(ptr noundef %4, ptr noundef nonnull %0) #18
  %12 = load ptr, ptr %0, align 8, !tbaa !221
  %13 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !120
  br label %15

15:                                               ; preds = %7, %10, %11
  %16 = phi ptr [ %14, %11 ], [ null, %10 ], [ null, %7 ]
  ret ptr %16
}

; Function Attrs: optsize
declare void @free_dominance_info(i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @free_alloc_pool(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @is_division_by(ptr noundef %0, ptr noundef readnone %1) unnamed_addr #1 !prof !111 !PGOFuncName !235 {
  %3 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %0) #18, !range !129
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %15, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #18, !range !132
  %7 = icmp eq i32 %6, 75
  br i1 %7, label %8, label %15

8:                                                ; preds = %5
  %9 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %0) #18
  %10 = icmp eq ptr %9, %1
  br i1 %10, label %11, label %15

11:                                               ; preds = %8
  %12 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #18
  %13 = icmp ne ptr %12, %1
  %14 = zext i1 %13 to i8
  br label %15

15:                                               ; preds = %11, %8, %5, %2
  %16 = phi i8 [ 0, %8 ], [ 0, %5 ], [ 0, %2 ], [ %14, %11 ]
  ret i8 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @register_division_in(ptr noundef %0) unnamed_addr #1 !prof !111 !PGOFuncName !236 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !237
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  %6 = tail call fastcc ptr @occ_new(ptr noundef nonnull %0, ptr noundef null) #18
  %7 = load ptr, ptr @cfun, align 8, !tbaa !113
  %8 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !115
  %10 = load ptr, ptr %9, align 8, !tbaa !123
  tail call fastcc void @insert_bb(ptr noundef %6, ptr noundef %10, ptr noundef nonnull @occ_head) #18
  br label %11

11:                                               ; preds = %5, %1
  %12 = phi ptr [ %3, %1 ], [ %6, %5 ]
  %13 = getelementptr inbounds %struct.occurrence, ptr %12, i64 0, i32 6
  store i8 1, ptr %13, align 4, !tbaa !238
  %14 = getelementptr inbounds %struct.occurrence, ptr %12, i64 0, i32 5
  %15 = load i32, ptr %14, align 8, !tbaa !240
  %16 = add nsw i32 %15, 1
  store i32 %16, ptr %14, align 8, !tbaa !240
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bb(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !111 !PGOFuncName !241 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !120
  ret ptr %3
}

; Function Attrs: optsize
declare i32 @vector_type_mode(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @compute_merit(ptr nocapture noundef %0) unnamed_addr #1 !prof !111 !PGOFuncName !242 {
  %2 = load ptr, ptr %0, align 8, !tbaa !243
  %3 = getelementptr inbounds %struct.occurrence, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !113
  %5 = icmp eq ptr %4, null
  br i1 %5, label %33, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.occurrence, ptr %0, i64 0, i32 5
  br label %8

8:                                                ; preds = %6, %29
  %9 = phi ptr [ %4, %6 ], [ %31, %29 ]
  %10 = getelementptr inbounds %struct.occurrence, ptr %9, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !244
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  tail call fastcc void @compute_merit(ptr noundef nonnull %9) #18
  br label %14

14:                                               ; preds = %13, %8
  %15 = load i32, ptr @flag_exceptions, align 4, !tbaa !106
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %14
  %18 = tail call ptr @single_noncomplex_succ(ptr noundef %2) #17
  br label %19

19:                                               ; preds = %14, %17
  %20 = phi ptr [ %18, %17 ], [ %2, %14 ]
  %21 = load ptr, ptr %9, align 8, !tbaa !243
  %22 = tail call zeroext i8 @dominated_by_p(i32 noundef 2, ptr noundef %20, ptr noundef %21) #17
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.occurrence, ptr %9, i64 0, i32 5
  %26 = load i32, ptr %25, align 8, !tbaa !240
  %27 = load i32, ptr %7, align 8, !tbaa !240
  %28 = add nsw i32 %27, %26
  store i32 %28, ptr %7, align 8, !tbaa !240
  br label %29

29:                                               ; preds = %24, %19
  %30 = getelementptr inbounds %struct.occurrence, ptr %9, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !113
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %8, !llvm.loop !245

33:                                               ; preds = %29, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @insert_reciprocals(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #1 !prof !111 !PGOFuncName !246 {
  %6 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #19
  %7 = icmp eq ptr %3, null
  br i1 %7, label %8, label %50

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.occurrence, ptr %1, i64 0, i32 6
  %10 = load i8, ptr %9, align 4, !tbaa !238
  %11 = icmp eq i8 %10, 0
  %12 = load i32, ptr @flag_trapping_math, align 4
  %13 = icmp ne i32 %12, 0
  %14 = select i1 %11, i1 %13, i1 false
  br i1 %14, label %50, label %15

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.occurrence, ptr %1, i64 0, i32 5
  %17 = load i32, ptr %16, align 8, !tbaa !240
  %18 = icmp slt i32 %17, %4
  br i1 %18, label %50, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !120
  %22 = tail call ptr @make_rename_temp(ptr noundef %21, ptr noundef nonnull @.str.6) #17
  %23 = tail call ptr @build_one_cst(ptr noundef %21) #17
  %24 = tail call ptr @gimple_build_assign_with_ops_stat(i32 noundef 75, ptr noundef %22, ptr noundef %23, ptr noundef %2) #17
  %25 = load i8, ptr %9, align 4, !tbaa !238
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %39, label %27

27:                                               ; preds = %19
  %28 = load ptr, ptr %1, align 8, !tbaa !243
  call fastcc void @gsi_after_labels(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %6, ptr noundef %28) #18
  %29 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %6) #18, !range !129
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %27, %35
  %32 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %6) #18
  %33 = tail call fastcc zeroext i8 @is_division_by(ptr noundef %32, ptr noundef %2) #18, !range !129
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  call fastcc void @gsi_next(ptr noundef nonnull %6) #18
  %36 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %6) #18, !range !129
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %31, label %38, !llvm.loop !247

38:                                               ; preds = %31, %35, %27
  call void @gsi_insert_before(ptr noundef nonnull %6, ptr noundef %24, i32 noundef 1) #17
  br label %48

39:                                               ; preds = %19
  %40 = icmp eq ptr %0, null
  %41 = load ptr, ptr %1, align 8, !tbaa !243
  br i1 %40, label %47, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !248
  %45 = icmp eq ptr %41, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  tail call void @gsi_insert_after(ptr noundef nonnull %0, ptr noundef %24, i32 noundef 0) #17
  br label %48

47:                                               ; preds = %42, %39
  call fastcc void @gsi_after_labels(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %6, ptr noundef %41) #18
  call void @gsi_insert_before(ptr noundef nonnull %6, ptr noundef %24, i32 noundef 1) #17
  br label %48

48:                                               ; preds = %46, %47, %38
  %49 = getelementptr inbounds %struct.occurrence, ptr %1, i64 0, i32 2
  store ptr %24, ptr %49, align 8, !tbaa !249
  br label %50

50:                                               ; preds = %8, %48, %15, %5
  %51 = phi ptr [ %3, %5 ], [ null, %8 ], [ %22, %48 ], [ null, %15 ]
  %52 = getelementptr inbounds %struct.occurrence, ptr %1, i64 0, i32 1
  store ptr %51, ptr %52, align 8, !tbaa !250
  %53 = getelementptr inbounds %struct.occurrence, ptr %1, i64 0, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !113
  %55 = icmp eq ptr %54, null
  br i1 %55, label %61, label %56

56:                                               ; preds = %50, %56
  %57 = phi ptr [ %59, %56 ], [ %54, %50 ]
  call fastcc void @insert_reciprocals(ptr noundef %0, ptr noundef nonnull %57, ptr noundef %2, ptr noundef %51, i32 noundef %4) #18
  %58 = getelementptr inbounds %struct.occurrence, ptr %57, i64 0, i32 4
  %59 = load ptr, ptr %58, align 8, !tbaa !113
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %56, !llvm.loop !251

61:                                               ; preds = %56, %50
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #19
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @first_imm_use_on_stmt(ptr nocapture noundef %0) unnamed_addr #8 !prof !111 !PGOFuncName !252 {
  %2 = load ptr, ptr %0, align 8, !tbaa !221
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !220
  %5 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 3
  store ptr %4, ptr %5, align 8, !tbaa !253
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @end_imm_use_on_stmt_p(ptr noundef readonly %0) unnamed_addr #5 !prof !111 !PGOFuncName !254 {
  %2 = load ptr, ptr %0, align 8, !tbaa !221
  %3 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2
  %4 = icmp eq ptr %2, %3
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @replace_reciprocal(ptr noundef %0) unnamed_addr #1 !prof !111 !PGOFuncName !255 {
  %2 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !120
  %4 = tail call fastcc ptr @gimple_bb(ptr noundef %3) #18
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !237
  %7 = tail call zeroext i8 @optimize_bb_for_speed_p(ptr noundef %4) #17
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %20, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.occurrence, ptr %6, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !250
  %12 = icmp eq ptr %11, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.occurrence, ptr %6, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !249
  %16 = icmp eq ptr %3, %15
  br i1 %16, label %20, label %17

17:                                               ; preds = %13
  tail call fastcc void @gimple_assign_set_rhs_code(ptr noundef %3) #18
  %18 = load ptr, ptr %10, align 8, !tbaa !250
  tail call fastcc void @set_ssa_use_from_ptr(ptr noundef nonnull %0, ptr noundef %18) #18
  %19 = tail call zeroext i8 @fold_stmt_inplace(ptr noundef %3) #17
  tail call fastcc void @update_stmt(ptr noundef %3) #18
  br label %20

20:                                               ; preds = %17, %13, %9, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @next_imm_use_on_stmt(ptr noundef %0) unnamed_addr #8 !prof !111 !PGOFuncName !256 {
  %2 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !253
  store ptr %3, ptr %0, align 8, !tbaa !221
  %4 = tail call fastcc zeroext i8 @end_imm_use_on_stmt_p(ptr noundef nonnull %0) #18, !range !129
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %3, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !220
  store ptr %8, ptr %2, align 8, !tbaa !253
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %3, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @free_bb(ptr noundef %0) unnamed_addr #1 !prof !111 !PGOFuncName !257 {
  %2 = getelementptr inbounds %struct.occurrence, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !258
  %4 = getelementptr inbounds %struct.occurrence, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !244
  %6 = load ptr, ptr %0, align 8, !tbaa !243
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 2
  store ptr null, ptr %7, align 8, !tbaa !237
  %8 = load ptr, ptr @occ_pool, align 8, !tbaa !113
  tail call void @pool_free(ptr noundef %8, ptr noundef nonnull %0) #17
  %9 = icmp eq ptr %5, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %1
  %11 = icmp eq ptr %3, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %10, %12
  %13 = phi ptr [ %14, %12 ], [ %3, %10 ]
  %14 = tail call fastcc ptr @free_bb(ptr noundef nonnull %13) #18
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %12, !llvm.loop !259

16:                                               ; preds = %12, %10, %1
  %17 = phi ptr [ %3, %1 ], [ %5, %10 ], [ %5, %12 ]
  ret ptr %17
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @occ_new(ptr noundef %0, ptr noundef %1) unnamed_addr #1 !prof !111 !PGOFuncName !260 {
  %3 = load ptr, ptr @occ_pool, align 8, !tbaa !113
  %4 = tail call ptr @pool_alloc(ptr noundef %3) #17
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 2
  store ptr %4, ptr %5, align 8, !tbaa !237
  %6 = getelementptr inbounds i8, ptr %4, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %6, i8 0, i64 40, i1 false)
  store ptr %0, ptr %4, align 8, !tbaa !243
  %7 = getelementptr inbounds %struct.occurrence, ptr %4, i64 0, i32 3
  store ptr %1, ptr %7, align 8, !tbaa !244
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @insert_bb(ptr noundef %0, ptr noundef readnone %1, ptr nocapture noundef %2) unnamed_addr #1 !prof !111 !PGOFuncName !261 {
  %4 = load ptr, ptr %2, align 8, !tbaa !113
  %5 = icmp eq ptr %4, null
  br i1 %5, label %51, label %6

6:                                                ; preds = %3, %26
  %7 = phi ptr [ %28, %26 ], [ %4, %3 ]
  %8 = phi ptr [ %27, %26 ], [ %2, %3 ]
  %9 = phi ptr [ %16, %26 ], [ %1, %3 ]
  %10 = phi ptr [ %13, %26 ], [ %0, %3 ]
  br label %11

11:                                               ; preds = %6, %44
  %12 = phi ptr [ %7, %6 ], [ %47, %44 ]
  %13 = phi ptr [ %10, %6 ], [ %46, %44 ]
  %14 = phi ptr [ %8, %6 ], [ %45, %44 ]
  %15 = load ptr, ptr %13, align 8, !tbaa !243
  %16 = load ptr, ptr %12, align 8, !tbaa !243
  %17 = tail call ptr @nearest_common_dominator(i32 noundef 1, ptr noundef %16, ptr noundef %15) #17
  %18 = icmp eq ptr %17, %15
  br i1 %18, label %19, label %24

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.occurrence, ptr %12, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !258
  store ptr %21, ptr %14, align 8, !tbaa !113
  %22 = getelementptr inbounds %struct.occurrence, ptr %13, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !244
  store ptr %23, ptr %20, align 8, !tbaa !258
  store ptr %12, ptr %22, align 8, !tbaa !244
  br label %44

24:                                               ; preds = %11
  %25 = icmp eq ptr %17, %16
  br i1 %25, label %26, label %30

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.occurrence, ptr %12, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !113
  %29 = icmp eq ptr %28, null
  br i1 %29, label %51, label %6

30:                                               ; preds = %24
  %31 = icmp eq ptr %17, %9
  br i1 %31, label %42, label %32

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !237
  %35 = icmp eq ptr %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %32
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 204, ptr noundef nonnull @.str.5) #17
  br label %37

37:                                               ; preds = %32, %36
  %38 = getelementptr inbounds %struct.occurrence, ptr %12, i64 0, i32 4
  %39 = load ptr, ptr %38, align 8, !tbaa !258
  store ptr %39, ptr %14, align 8, !tbaa !113
  %40 = getelementptr inbounds %struct.occurrence, ptr %13, i64 0, i32 4
  store ptr %12, ptr %40, align 8, !tbaa !258
  store ptr null, ptr %38, align 8, !tbaa !258
  %41 = tail call fastcc ptr @occ_new(ptr noundef nonnull %17, ptr noundef nonnull %13) #18
  br label %44

42:                                               ; preds = %30
  %43 = getelementptr inbounds %struct.occurrence, ptr %12, i64 0, i32 4
  br label %44

44:                                               ; preds = %19, %37, %42
  %45 = phi ptr [ %14, %19 ], [ %14, %37 ], [ %43, %42 ]
  %46 = phi ptr [ %13, %19 ], [ %41, %37 ], [ %13, %42 ]
  %47 = load ptr, ptr %45, align 8, !tbaa !113
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %11, !llvm.loop !262

49:                                               ; preds = %44
  %50 = load ptr, ptr %8, align 8, !tbaa !113
  br label %51

51:                                               ; preds = %26, %49, %3
  %52 = phi ptr [ null, %3 ], [ %50, %49 ], [ null, %26 ]
  %53 = phi ptr [ %2, %3 ], [ %8, %49 ], [ %27, %26 ]
  %54 = phi ptr [ %0, %3 ], [ %46, %49 ], [ %13, %26 ]
  %55 = getelementptr inbounds %struct.occurrence, ptr %54, i64 0, i32 4
  store ptr %52, ptr %55, align 8, !tbaa !258
  store ptr %54, ptr %53, align 8, !tbaa !113
  ret void
}

; Function Attrs: optsize
declare ptr @pool_alloc(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

; Function Attrs: optsize
declare ptr @nearest_common_dominator(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @single_noncomplex_succ(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @dominated_by_p(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @make_rename_temp(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @gimple_build_assign_with_ops_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @build_one_cst(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @gsi_insert_before(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @gsi_insert_after(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @optimize_bb_for_speed_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @set_ssa_use_from_ptr(ptr noundef %0, ptr noundef %1) unnamed_addr #12 !prof !111 !PGOFuncName !263 {
  tail call fastcc void @delink_imm_use(ptr noundef %0) #18
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !264
  store ptr %1, ptr %4, align 8, !tbaa !113
  tail call fastcc void @link_imm_use(ptr noundef %0, ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @delink_imm_use(ptr nocapture noundef %0) unnamed_addr #12 !prof !111 !PGOFuncName !265 {
  %2 = load ptr, ptr %0, align 8, !tbaa !266
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !220
  %7 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  store ptr %6, ptr %7, align 8, !tbaa !220
  store ptr %2, ptr %6, align 8, !tbaa !266
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %8

8:                                                ; preds = %1, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @link_imm_use(ptr noundef %0, ptr noundef %1) unnamed_addr #12 !prof !111 !PGOFuncName !267 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %9, label %8

8:                                                ; preds = %4, %2
  store ptr null, ptr %0, align 8, !tbaa !266
  br label %11

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5
  tail call fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef nonnull %10) #18
  br label %11

11:                                               ; preds = %9, %8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef %1) unnamed_addr #12 !prof !111 !PGOFuncName !268 {
  store ptr %1, ptr %0, align 8, !tbaa !266
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !220
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !220
  store ptr %0, ptr %4, align 8, !tbaa !266
  store ptr %0, ptr %3, align 8, !tbaa !220
  ret void
}

; Function Attrs: optsize
declare void @pool_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #8 !prof !193 !PGOFuncName !269 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #18
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #18
  store ptr %4, ptr %0, align 8, !tbaa !182
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !270
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !248
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !271 !PGOFuncName !272 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !193 !PGOFuncName !273 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !274
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12, !prof !275

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !120
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10, !prof !276

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !277
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #5 !prof !193 !PGOFuncName !279 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !276

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !280
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_tree(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #1 !prof !111 !PGOFuncName !282 {
  tail call fastcc void @op_iter_init(ptr noundef %0, ptr noundef %1, i32 noundef 2) #18
  %3 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 1, ptr %3, align 4, !tbaa !283
  %4 = tail call fastcc ptr @op_iter_next_tree(ptr noundef %0) #18
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @op_iter_done(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !111 !PGOFuncName !285 {
  %2 = load i8, ptr %0, align 8, !tbaa !286
  ret i8 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @op_iter_next_tree(ptr nocapture noundef %0) unnamed_addr #8 !prof !111 !PGOFuncName !287 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !288
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.use_optype_d, ptr %3, i64 0, i32 1
  %7 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %6) #18
  %8 = load ptr, ptr %3, align 8, !tbaa !289
  store ptr %8, ptr %2, align 8, !tbaa !288
  br label %19

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !291
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.def_optype_d, ptr %11, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !292
  %16 = tail call fastcc ptr @get_def_from_ptr(ptr noundef %15) #18
  %17 = load ptr, ptr %11, align 8, !tbaa !294
  store ptr %17, ptr %10, align 8, !tbaa !291
  br label %19

18:                                               ; preds = %9
  store i8 1, ptr %0, align 8, !tbaa !286
  br label %19

19:                                               ; preds = %18, %13, %5
  %20 = phi ptr [ %7, %5 ], [ %16, %13 ], [ null, %18 ]
  ret ptr %20
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @op_iter_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #1 !prof !111 !PGOFuncName !295 {
  %4 = and i32 %2, 4
  %5 = icmp ne i32 %4, 0
  %6 = and i32 %2, 5
  %7 = icmp eq i32 %6, 4
  br i1 %7, label %8, label %9

8:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 747, ptr noundef nonnull @.str.5) #17
  br label %9

9:                                                ; preds = %3, %8
  %10 = and i32 %2, 10
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr null, ptr %13, align 8, !tbaa !291
  br label %23

14:                                               ; preds = %9
  %15 = tail call fastcc ptr @gimple_def_ops(ptr noundef %1) #18
  %16 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr %15, ptr %16, align 8, !tbaa !291
  %17 = icmp eq ptr %15, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %14
  %19 = tail call fastcc ptr @gimple_vdef(ptr noundef %1) #18
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  %22 = load ptr, ptr %15, align 8, !tbaa !294
  store ptr %22, ptr %16, align 8, !tbaa !291
  br label %23

23:                                               ; preds = %12, %21, %18, %14
  %24 = icmp eq i32 %6, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr null, ptr %26, align 8, !tbaa !288
  br label %37

27:                                               ; preds = %23
  %28 = tail call fastcc ptr @gimple_use_ops(ptr noundef %1) #18
  %29 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr %28, ptr %29, align 8, !tbaa !288
  %30 = icmp eq ptr %28, null
  %31 = select i1 %5, i1 true, i1 %30
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = tail call fastcc ptr @gimple_vuse(ptr noundef %1) #18
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %32
  %36 = load ptr, ptr %28, align 8, !tbaa !289
  store ptr %36, ptr %29, align 8, !tbaa !288
  br label %37

37:                                               ; preds = %25, %35, %32, %27
  store i8 0, ptr %0, align 8, !tbaa !286
  %38 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %38, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_def_ops(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !111 !PGOFuncName !296 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #18, !range !129
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !120
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vdef(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !111 !PGOFuncName !297 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #18, !range !129
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !120
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_use_ops(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !111 !PGOFuncName !298 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #18, !range !129
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !120
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vuse(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !111 !PGOFuncName !299 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #18, !range !129
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !120
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !300 !PGOFuncName !301 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #18, !range !196
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_mem_ops(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !111 !PGOFuncName !302 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #18, !range !196
  %3 = add nsw i32 %2, -6
  %4 = icmp ult i32 %3, 4
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_use_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !111 !PGOFuncName !303 {
  %2 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !264
  %4 = load ptr, ptr %3, align 8, !tbaa !113
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_expr_code(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !204 !PGOFuncName !304 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #18, !range !196
  %3 = trunc i32 %2 to i8
  switch i8 %3, label %7 [
    i8 6, label %4
    i8 1, label %4
    i8 8, label %8
  ], !prof !305

4:                                                ; preds = %1, %1
  %5 = load i32, ptr %0, align 8
  %6 = lshr i32 %5, 16
  br label %8

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1446, ptr noundef nonnull @.str.5) #17
  br label %8

8:                                                ; preds = %1, %7, %4
  %9 = phi i32 [ %6, %4 ], [ 0, %7 ], [ 59, %1 ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @get_gimple_rhs_class(i32 noundef %0) unnamed_addr #7 !prof !306 !PGOFuncName !307 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %2
  %4 = load i8, ptr %3, align 1, !tbaa !120
  %5 = zext i8 %4 to i32
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_num_ops(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !207 !PGOFuncName !308 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !120
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %1) unnamed_addr #1 !prof !300 !PGOFuncName !309 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #18, !range !129
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5, !prof !310

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #18
  %7 = zext nneg i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !113
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #1 !prof !300 !PGOFuncName !311 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #18
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !312
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8, !prof !310

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1622, ptr noundef nonnull @.str.5) #17
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !300 !PGOFuncName !313 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #18, !range !196
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #18
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #7 !prof !300 !PGOFuncName !314 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !106
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fn(ptr noundef %0) unnamed_addr #1 !prof !213 !PGOFuncName !315 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #18
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_set_op(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #1 !prof !111 !PGOFuncName !316 {
  %4 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #18, !range !129
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #18
  %8 = icmp ugt i32 %7, %1
  br i1 %8, label %10, label %9

9:                                                ; preds = %6, %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 1665, ptr noundef nonnull @.str.5) #17
  br label %10

10:                                               ; preds = %6, %9
  %11 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #18
  %12 = zext nneg i32 %1 to i64
  %13 = getelementptr inbounds ptr, ptr %11, i64 %12
  store ptr %2, ptr %13, align 8, !tbaa !113
  ret void
}

; Function Attrs: optsize
declare ptr @build_fold_addr_expr_loc(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_location(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !111 !PGOFuncName !317 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !120
  ret i32 %3
}

; Function Attrs: optsize
declare void @gimple_set_modified(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare void @update_stmt_operands(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @link_use_stmts_after(ptr noundef %0, ptr noundef %1) unnamed_addr #1 !prof !111 !PGOFuncName !318 {
  %3 = alloca %struct.ssa_operand_iterator_d, align 8
  %4 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !120
  %6 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %0) #18
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #19
  %7 = tail call zeroext i8 @is_gimple_reg(ptr noundef %6) #17
  %8 = icmp eq i8 %7, 0
  %9 = tail call fastcc i32 @gimple_code(ptr noundef %5) #18, !range !196
  %10 = icmp eq i32 %9, 16
  br i1 %10, label %11, label %28

11:                                               ; preds = %2
  %12 = select i1 %8, i32 4, i32 1
  %13 = call fastcc ptr @op_iter_init_phiuse(ptr noundef nonnull %3, ptr noundef %5, i32 noundef %12) #18
  %14 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #18
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %53

16:                                               ; preds = %11, %23
  %17 = phi ptr [ %25, %23 ], [ %13, %11 ]
  %18 = phi ptr [ %24, %23 ], [ %0, %11 ]
  %19 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %17) #18
  %20 = icmp eq ptr %19, %6
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = tail call fastcc ptr @move_use_after_head(ptr noundef %17, ptr noundef %0, ptr noundef %18) #18
  br label %23

23:                                               ; preds = %16, %21
  %24 = phi ptr [ %22, %21 ], [ %18, %16 ]
  %25 = call fastcc ptr @op_iter_next_use(ptr noundef nonnull %3) #18
  %26 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #18
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %16, label %53, !llvm.loop !319

28:                                               ; preds = %2
  br i1 %8, label %45, label %29

29:                                               ; preds = %28
  %30 = call fastcc ptr @op_iter_init_use(ptr noundef nonnull %3, ptr noundef %5, i32 noundef 1) #18
  %31 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #18
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %53

33:                                               ; preds = %29, %40
  %34 = phi ptr [ %42, %40 ], [ %30, %29 ]
  %35 = phi ptr [ %41, %40 ], [ %0, %29 ]
  %36 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %34) #18
  %37 = icmp eq ptr %36, %6
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = tail call fastcc ptr @move_use_after_head(ptr noundef %34, ptr noundef %0, ptr noundef %35) #18
  br label %40

40:                                               ; preds = %33, %38
  %41 = phi ptr [ %39, %38 ], [ %35, %33 ]
  %42 = call fastcc ptr @op_iter_next_use(ptr noundef nonnull %3) #18
  %43 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #18
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %33, label %53, !llvm.loop !320

45:                                               ; preds = %28
  %46 = tail call fastcc ptr @gimple_vuse_op(ptr noundef %5) #18
  %47 = icmp eq ptr %46, null
  br i1 %47, label %53, label %48

48:                                               ; preds = %45
  %49 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %46) #18
  %50 = icmp eq ptr %49, %6
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = tail call fastcc ptr @move_use_after_head(ptr noundef nonnull %46, ptr noundef nonnull %0, ptr noundef nonnull %0) #18
  br label %53

53:                                               ; preds = %40, %23, %29, %11, %48, %51, %45
  %54 = phi ptr [ %52, %51 ], [ %0, %48 ], [ %0, %45 ], [ %0, %11 ], [ %0, %29 ], [ %24, %23 ], [ %41, %40 ]
  %55 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %1, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !234
  %57 = icmp eq ptr %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %53
  tail call fastcc void @delink_imm_use(ptr noundef nonnull %55) #18
  br label %59

59:                                               ; preds = %58, %53
  tail call fastcc void @link_imm_use_to_list(ptr noundef nonnull %55, ptr noundef %54) #18
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_phiuse(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #1 !prof !111 !PGOFuncName !321 {
  %4 = tail call fastcc ptr @gimple_phi_result(ptr noundef %1) #18
  tail call fastcc void @clear_and_done_ssa_iter(ptr noundef %0) #18
  store i8 0, ptr %0, align 8, !tbaa !286
  %5 = and i32 %2, 5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 918, ptr noundef nonnull @.str.5) #17
  br label %8

8:                                                ; preds = %3, %7
  %9 = tail call zeroext i8 @is_gimple_reg(ptr noundef %4) #17
  %10 = icmp eq i8 %9, 0
  %11 = select i1 %10, i32 4, i32 1
  %12 = and i32 %11, %2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  store i8 1, ptr %0, align 8, !tbaa !286
  br label %21

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 6
  store ptr %1, ptr %16, align 8, !tbaa !322
  %17 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %1) #18
  %18 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 5
  store i32 %17, ptr %18, align 4, !tbaa !323
  %19 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 2, ptr %19, align 4, !tbaa !283
  %20 = tail call fastcc ptr @op_iter_next_use(ptr noundef nonnull %0) #18
  br label %21

21:                                               ; preds = %15, %14
  %22 = phi ptr [ null, %14 ], [ %20, %15 ]
  ret ptr %22
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef ptr @move_use_after_head(ptr noundef %0, ptr noundef readnone %1, ptr noundef %2) unnamed_addr #12 !prof !111 !PGOFuncName !324 {
  %4 = icmp eq ptr %0, %1
  br i1 %4, label %10, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !220
  %8 = icmp eq ptr %7, %0
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call fastcc void @delink_imm_use(ptr noundef %0) #18
  tail call fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef nonnull %2) #18
  br label %10

10:                                               ; preds = %5, %9, %3
  %11 = phi ptr [ %0, %9 ], [ %2, %3 ], [ %0, %5 ]
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_next_use(ptr nocapture noundef %0) unnamed_addr #1 !prof !111 !PGOFuncName !325 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !288
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.use_optype_d, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %3, align 8, !tbaa !289
  store ptr %7, ptr %2, align 8, !tbaa !288
  br label %20

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !326
  %11 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 5
  %12 = load i32, ptr %11, align 4, !tbaa !323
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !322
  %17 = add nsw i32 %10, 1
  store i32 %17, ptr %9, align 8, !tbaa !326
  %18 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %16, i32 noundef %10) #18
  br label %20

19:                                               ; preds = %8
  store i8 1, ptr %0, align 8, !tbaa !286
  br label %20

20:                                               ; preds = %19, %14, %5
  %21 = phi ptr [ %6, %5 ], [ %18, %14 ], [ null, %19 ]
  ret ptr %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_use(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #1 !prof !111 !PGOFuncName !327 {
  %4 = and i32 %2, 11
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 771, ptr noundef nonnull @.str.5) #17
  br label %7

7:                                                ; preds = %3, %6
  tail call fastcc void @op_iter_init(ptr noundef %0, ptr noundef %1, i32 noundef %2) #18
  %8 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 2, ptr %8, align 4, !tbaa !283
  %9 = tail call fastcc ptr @op_iter_next_use(ptr noundef %0) #18
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gimple_vuse_op(ptr noundef readonly %0) unnamed_addr #6 !prof !111 !PGOFuncName !328 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #18, !range !129
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %15, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !120
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.use_optype_d, ptr %6, i64 0, i32 1, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !329
  %11 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  %12 = icmp eq ptr %10, %11
  %13 = getelementptr inbounds %struct.use_optype_d, ptr %6, i64 0, i32 1
  %14 = select i1 %12, ptr %13, ptr null
  br label %15

15:                                               ; preds = %8, %4, %1
  %16 = phi ptr [ null, %1 ], [ null, %4 ], [ %14, %8 ]
  ret ptr %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_phi_result(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !111 !PGOFuncName !330 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !120
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @clear_and_done_ssa_iter(ptr nocapture noundef writeonly %0) unnamed_addr #13 !prof !111 !PGOFuncName !331 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %2, i8 0, i64 36, i1 false)
  store i8 1, ptr %0, align 8, !tbaa !286
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_phi_num_args(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !111 !PGOFuncName !332 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !120
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #1 !prof !111 !PGOFuncName !333 {
  %3 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %1) #18
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #1 !prof !111 !PGOFuncName !334 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !120
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 3103, ptr noundef nonnull @.str.5) #17
  br label %7

7:                                                ; preds = %2, %6
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %8
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_arg(ptr noundef %0) unnamed_addr #1 !prof !111 !PGOFuncName !335 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 3) #18
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @execute_cse_sincos_1(ptr noundef %0) unnamed_addr #1 !prof !111 !PGOFuncName !336 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca %struct.immediate_use_iterator_d, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #19
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  store ptr null, ptr %5, align 8, !tbaa !113
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #19
  store ptr null, ptr %6, align 8, !tbaa !113
  %8 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !120
  %10 = call fastcc ptr @first_imm_use_stmt(ptr noundef nonnull %3, ptr noundef %0) #18
  %11 = call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %3) #18, !range !129
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %106

13:                                               ; preds = %1, %45
  %14 = phi i32 [ %48, %45 ], [ 0, %1 ]
  %15 = phi i32 [ %47, %45 ], [ 0, %1 ]
  %16 = phi i32 [ %46, %45 ], [ 0, %1 ]
  %17 = phi ptr [ %49, %45 ], [ %10, %1 ]
  %18 = call fastcc i32 @gimple_code(ptr noundef %17) #18, !range !196
  %19 = icmp eq i32 %18, 8
  br i1 %19, label %20, label %45

20:                                               ; preds = %13
  %21 = call fastcc ptr @gimple_call_lhs(ptr noundef %17) #18
  %22 = icmp eq ptr %21, null
  br i1 %22, label %45, label %23

23:                                               ; preds = %20
  %24 = call fastcc ptr @gimple_call_fndecl(ptr noundef %17) #18
  %25 = icmp eq ptr %24, null
  br i1 %25, label %45, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.tree_function_decl, ptr %24, i64 0, i32 5
  %28 = load i32, ptr %27, align 8
  %29 = and i32 %28, 6144
  %30 = icmp eq i32 %29, 6144
  br i1 %30, label %31, label %45

31:                                               ; preds = %26
  %32 = and i32 %28, 2047
  switch i32 %32, label %45 [
    i32 30, label %33
    i32 31, label %33
    i32 35, label %33
    i32 219, label %37
    i32 223, label %37
    i32 227, label %37
    i32 285, label %41
    i32 286, label %41
    i32 287, label %41
  ]

33:                                               ; preds = %31, %31, %31
  %34 = call fastcc zeroext i8 @maybe_record_sincos(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef %17) #18, !range !129
  %35 = zext nneg i8 %34 to i32
  %36 = or i32 %16, %35
  br label %45

37:                                               ; preds = %31, %31, %31
  %38 = call fastcc zeroext i8 @maybe_record_sincos(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef %17) #18, !range !129
  %39 = zext nneg i8 %38 to i32
  %40 = or i32 %15, %39
  br label %45

41:                                               ; preds = %31, %31, %31
  %42 = call fastcc zeroext i8 @maybe_record_sincos(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef %17) #18, !range !129
  %43 = zext nneg i8 %42 to i32
  %44 = or i32 %14, %43
  br label %45

45:                                               ; preds = %33, %37, %41, %31, %13, %20, %23, %26
  %46 = phi i32 [ %16, %13 ], [ %16, %26 ], [ %16, %31 ], [ %16, %41 ], [ %16, %37 ], [ %36, %33 ], [ %16, %23 ], [ %16, %20 ]
  %47 = phi i32 [ %15, %13 ], [ %15, %26 ], [ %15, %31 ], [ %15, %41 ], [ %40, %37 ], [ %15, %33 ], [ %15, %23 ], [ %15, %20 ]
  %48 = phi i32 [ %14, %13 ], [ %14, %26 ], [ %14, %31 ], [ %44, %41 ], [ %14, %37 ], [ %14, %33 ], [ %14, %23 ], [ %14, %20 ]
  %49 = call fastcc ptr @next_imm_use_stmt(ptr noundef nonnull %3) #18
  %50 = call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %3) #18, !range !129
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %13, label %52, !llvm.loop !337

52:                                               ; preds = %45
  %53 = add nuw nsw i32 %47, %46
  %54 = add nuw nsw i32 %53, %48
  %55 = icmp slt i32 %54, 2
  store ptr %49, ptr %4, align 8, !tbaa !113
  br i1 %55, label %106, label %56

56:                                               ; preds = %52
  %57 = call ptr @mathfn_built_in(ptr noundef %9, i32 noundef 285) #17
  %58 = icmp eq ptr %57, null
  br i1 %58, label %107, label %59

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.tree_common, ptr %57, i64 0, i32 2
  %61 = load ptr, ptr %60, align 8, !tbaa !120
  %62 = getelementptr inbounds %struct.tree_common, ptr %61, i64 0, i32 2
  %63 = load ptr, ptr %62, align 8, !tbaa !120
  %64 = call ptr @make_rename_temp(ptr noundef %63, ptr noundef nonnull @.str.9) #17
  %65 = call ptr (ptr, i32, ...) @gimple_build_call(ptr noundef nonnull %57, i32 noundef 1, ptr noundef %0) #17
  call fastcc void @gimple_call_set_lhs(ptr noundef %65, ptr noundef %64) #18
  %66 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !120
  %68 = load i64, ptr %0, align 8
  %69 = and i64 %68, 4294967296
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %59
  %72 = load ptr, ptr %6, align 8, !tbaa !113
  br label %81

73:                                               ; preds = %59
  %74 = call fastcc i32 @gimple_code(ptr noundef %67) #18, !range !196
  %75 = icmp eq i32 %74, 16
  %76 = load ptr, ptr %6, align 8, !tbaa !113
  br i1 %75, label %81, label %77

77:                                               ; preds = %73
  %78 = call fastcc ptr @gimple_bb(ptr noundef %67) #18
  %79 = icmp eq ptr %78, %76
  br i1 %79, label %80, label %81

80:                                               ; preds = %77
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %67) #17
  call void @gsi_insert_after(ptr noundef nonnull %2, ptr noundef %65, i32 noundef 1) #17
  br label %83

81:                                               ; preds = %71, %77, %73
  %82 = phi ptr [ %72, %71 ], [ %76, %77 ], [ %76, %73 ]
  call fastcc void @gsi_after_labels(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %82) #18
  call void @gsi_insert_before(ptr noundef nonnull %2, ptr noundef %65, i32 noundef 1) #17
  br label %83

83:                                               ; preds = %81, %80
  call fastcc void @update_stmt(ptr noundef %65) #18
  %84 = load ptr, ptr %5, align 8
  %85 = call fastcc i32 @VEC_gimple_base_iterate(ptr noundef %84, i32 noundef 0, ptr noundef nonnull %4) #18, !range !338
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %106, label %87

87:                                               ; preds = %83, %99
  %88 = phi i32 [ %103, %99 ], [ 0, %83 ]
  %89 = load ptr, ptr %4, align 8, !tbaa !113
  %90 = call fastcc ptr @gimple_call_fndecl(ptr noundef %89) #18
  %91 = getelementptr inbounds %struct.tree_function_decl, ptr %90, i64 0, i32 5
  %92 = load i32, ptr %91, align 8
  %93 = and i32 %92, 2047
  switch i32 %93, label %98 [
    i32 30, label %94
    i32 31, label %94
    i32 35, label %94
    i32 219, label %96
    i32 223, label %96
    i32 227, label %96
    i32 285, label %99
    i32 286, label %99
    i32 287, label %99
  ]

94:                                               ; preds = %87, %87, %87
  %95 = call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef 43, ptr noundef %9, ptr noundef %64) #17
  br label %99

96:                                               ; preds = %87, %87, %87
  %97 = call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef 44, ptr noundef %9, ptr noundef %64) #17
  br label %99

98:                                               ; preds = %87
  call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 733, ptr noundef nonnull @.str.5) #17
  br label %99

99:                                               ; preds = %87, %87, %87, %98, %96, %94
  %100 = phi ptr [ null, %98 ], [ %97, %96 ], [ %95, %94 ], [ %64, %87 ], [ %64, %87 ], [ %64, %87 ]
  %101 = call fastcc ptr @gimple_call_lhs(ptr noundef %89) #18
  %102 = call ptr @gimple_build_assign_stat(ptr noundef %101, ptr noundef %100) #17
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #19
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %7, ptr noundef %89) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !128
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #19
  call void @gsi_insert_after(ptr noundef nonnull %2, ptr noundef %102, i32 noundef 1) #17
  call void @gsi_remove(ptr noundef nonnull %2, i8 noundef zeroext 1) #17
  %103 = add nuw nsw i32 %88, 1
  %104 = call fastcc i32 @VEC_gimple_base_iterate(ptr noundef %84, i32 noundef %103, ptr noundef nonnull %4) #18, !range !338
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %87, !llvm.loop !339

106:                                              ; preds = %99, %83, %52, %1
  call fastcc void @VEC_gimple_heap_free(ptr noundef nonnull %5) #18
  br label %107

107:                                              ; preds = %106, %56
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @maybe_record_sincos(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr noundef %2) unnamed_addr #1 !prof !111 !PGOFuncName !340 {
  %4 = tail call fastcc ptr @gimple_bb(ptr noundef %2) #18
  %5 = load ptr, ptr %1, align 8, !tbaa !113
  %6 = icmp eq ptr %5, null
  br i1 %6, label %19, label %7

7:                                                ; preds = %3
  %8 = icmp eq ptr %5, %4
  br i1 %8, label %12, label %9

9:                                                ; preds = %7
  %10 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %4, ptr noundef nonnull %5) #17
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %9, %7
  tail call fastcc void @VEC_gimple_heap_safe_push(ptr noundef %0, ptr noundef %2) #18
  br label %20

13:                                               ; preds = %9
  %14 = load ptr, ptr %1, align 8, !tbaa !113
  %15 = icmp eq ptr %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef nonnull %14, ptr noundef %4) #17
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %3, %16, %13
  tail call fastcc void @VEC_gimple_heap_safe_push(ptr noundef %0, ptr noundef %2) #18
  store ptr %4, ptr %1, align 8, !tbaa !113
  br label %20

20:                                               ; preds = %12, %19, %16
  %21 = phi i8 [ 0, %16 ], [ 1, %19 ], [ 1, %12 ]
  ret i8 %21
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_gimple_heap_free(ptr nocapture noundef %0) unnamed_addr #14 !prof !111 !PGOFuncName !341 {
  %2 = load ptr, ptr %0, align 8, !tbaa !113
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #18
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !113
  ret void
}

; Function Attrs: optsize
declare ptr @mathfn_built_in(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @gimple_build_call(ptr noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_call_set_lhs(ptr noundef %0, ptr noundef %1) unnamed_addr #1 !prof !111 !PGOFuncName !342 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 0, ptr noundef %1) #18
  %3 = icmp eq ptr %1, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 2
  store ptr %0, ptr %9, align 8, !tbaa !120
  br label %10

10:                                               ; preds = %8, %4, %2
  ret void
}

; Function Attrs: optsize
declare void @gsi_for_stmt(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_gimple_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #10 !prof !111 !PGOFuncName !343 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !344
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_gimple_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !113
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !113
  ret i32 %14
}

; Function Attrs: optsize
declare ptr @fold_build1_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @gimple_build_assign_stat(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @gsi_remove(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_gimple_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #1 !prof !111 !PGOFuncName !346 {
  tail call fastcc void @VEC_gimple_heap_reserve(ptr noundef %0) #18
  %3 = load ptr, ptr %0, align 8, !tbaa !113
  tail call fastcc void @VEC_gimple_base_quick_push(ptr noundef %3, ptr noundef %1) #18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_gimple_heap_reserve(ptr nocapture noundef %0) unnamed_addr #1 !prof !111 !PGOFuncName !347 {
  %2 = load ptr, ptr %0, align 8, !tbaa !113
  %3 = tail call fastcc i32 @VEC_gimple_base_space(ptr noundef %2) #18
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef 1) #17
  store ptr %6, ptr %0, align 8, !tbaa !113
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_gimple_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #10 !prof !111 !PGOFuncName !348 {
  %3 = load i32, ptr %0, align 8, !tbaa !344
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !344
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_gimple_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !113
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_gimple_base_space(ptr noundef readonly %0) unnamed_addr #5 !prof !111 !PGOFuncName !349 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_gimple_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !350
  %6 = load i32, ptr %0, align 8, !tbaa !344
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_expr_type(ptr noundef %0) unnamed_addr #1 !prof !351 !PGOFuncName !352 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #18, !range !196
  %3 = trunc i32 %2 to i8
  switch i8 %3, label %19 [
    i8 8, label %4
    i8 6, label %6
    i8 1, label %17
  ], !prof !353

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_call_return_type(ptr noundef %0) #18
  br label %21

6:                                                ; preds = %1
  %7 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #18, !range !132
  %8 = icmp eq i32 %7, 66
  br i1 %8, label %9, label %13, !prof !354

9:                                                ; preds = %6
  %10 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #18
  %11 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !120
  br label %21

13:                                               ; preds = %6
  %14 = tail call ptr @gimple_get_lhs(ptr noundef %0) #17
  %15 = getelementptr inbounds %struct.tree_common, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !120
  br label %21

17:                                               ; preds = %1
  %18 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !113
  br label %21

19:                                               ; preds = %1
  %20 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !113
  br label %21

21:                                               ; preds = %4, %13, %9, %19, %17
  %22 = phi ptr [ %18, %17 ], [ %20, %19 ], [ %5, %4 ], [ %12, %9 ], [ %16, %13 ]
  ret ptr %22
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @find_bswap(ptr noundef %0) unnamed_addr #1 !prof !207 !PGOFuncName !355 {
  %2 = alloca %struct.symbolic_number, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #19
  %3 = tail call fastcc ptr @gimple_expr_type(ptr noundef %0) #18
  %4 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !120
  %6 = getelementptr inbounds %struct.tree_int_cst, ptr %5, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !120
  %8 = trunc i64 %7 to i32
  %9 = add i32 %8, 1
  %10 = call fastcc ptr @find_bswap_1(ptr noundef %0, ptr noundef nonnull %2, i32 noundef %9) #18
  %11 = icmp eq ptr %10, null
  br i1 %11, label %32, label %12, !prof !169

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.symbolic_number, ptr %2, i64 0, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !356
  %15 = icmp slt i32 %14, 8
  %16 = load i64, ptr %2, align 8, !tbaa !358
  br i1 %15, label %17, label %27

17:                                               ; preds = %12
  %18 = shl nsw i32 %14, 3
  %19 = zext nneg i32 %18 to i64
  %20 = shl nsw i64 -1, %19
  %21 = xor i64 %20, -1
  %22 = and i64 %16, %21
  %23 = sext i32 %14 to i64
  %24 = shl nsw i64 %23, 3
  %25 = sub nsw i64 64, %24
  %26 = lshr i64 72623859790382856, %25
  br label %27

27:                                               ; preds = %17, %12
  %28 = phi i64 [ %22, %17 ], [ %16, %12 ]
  %29 = phi i64 [ %26, %17 ], [ 72623859790382856, %12 ]
  %30 = icmp eq i64 %29, %28
  %31 = select i1 %30, ptr %10, ptr null
  br label %32

32:                                               ; preds = %27, %1
  %33 = phi ptr [ null, %1 ], [ %31, %27 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #19
  ret ptr %33
}

; Function Attrs: optsize
declare zeroext i8 @useless_type_conversion_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @create_tmp_var(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @add_referenced_var(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @make_ssa_name(ptr noundef %0) unnamed_addr #1 !prof !111 !PGOFuncName !359 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !113
  %3 = tail call ptr @make_ssa_name_fn(ptr noundef %2, ptr noundef %0, ptr noundef null) #17
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_lhs(ptr noundef %0) unnamed_addr #1 !prof !111 !PGOFuncName !360 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #18
  ret ptr %2
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #16

; Function Attrs: optsize
declare void @print_gimple_stmt(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_return_type(ptr noundef %0) unnamed_addr #1 !prof !111 !PGOFuncName !361 {
  %2 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #18
  %3 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !120
  %5 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !120
  %7 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !120
  ret ptr %8
}

; Function Attrs: optsize
declare ptr @gimple_get_lhs(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @find_bswap_1(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2) unnamed_addr #1 !prof !362 !PGOFuncName !363 {
  %4 = alloca %struct.symbolic_number, align 8
  %5 = alloca %struct.symbolic_number, align 8
  %6 = icmp eq i32 %2, 0
  br i1 %6, label %125, label %7, !prof !364

7:                                                ; preds = %3
  %8 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %0) #18, !range !129
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %125, label %10, !prof !364

10:                                               ; preds = %7
  %11 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #18
  %12 = load i64, ptr %11, align 8
  %13 = and i64 %12, 65535
  %14 = icmp eq i64 %13, 141
  br i1 %14, label %15, label %125, !prof !365

15:                                               ; preds = %10
  %16 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #18, !range !132
  %17 = tail call fastcc i32 @gimple_assign_rhs_class(ptr noundef %0) #18, !range !196
  %18 = getelementptr inbounds %struct.tree_ssa_name, ptr %11, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !120
  %20 = trunc i32 %17 to i8
  switch i8 %20, label %125 [
    i8 1, label %21
    i8 2, label %26
  ], !prof !366

21:                                               ; preds = %15
  %22 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %0) #18
  %23 = load i64, ptr %22, align 8
  %24 = and i64 %23, 65535
  %25 = icmp eq i64 %24, 23
  br i1 %25, label %26, label %96, !prof !367

26:                                               ; preds = %15, %21
  %27 = phi ptr [ %22, %21 ], [ null, %15 ]
  %28 = trunc i32 %16 to i16
  switch i16 %28, label %125 [
    i16 116, label %29
    i16 113, label %29
    i16 89, label %29
    i16 86, label %29
    i16 85, label %29
    i16 84, label %29
    i16 83, label %29
  ]

29:                                               ; preds = %26, %26, %26, %26, %26, %26, %26
  %30 = add nsw i32 %2, -1
  %31 = tail call fastcc ptr @find_bswap_1(ptr noundef %19, ptr noundef %1, i32 noundef %30) #18
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %50, !prof !368

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.tree_common, ptr %11, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !120
  %36 = getelementptr inbounds %struct.tree_type, ptr %35, i64 0, i32 6
  %37 = load i32, ptr %36, align 4
  %38 = and i32 %37, 1023
  %39 = getelementptr inbounds %struct.symbolic_number, ptr %1, i64 0, i32 1
  store i32 %38, ptr %39, align 8, !tbaa !356
  %40 = and i32 %37, 7
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %125, !prof !368

42:                                               ; preds = %33
  %43 = lshr exact i32 %38, 3
  store i32 %43, ptr %39, align 8, !tbaa !356
  %44 = icmp ult i32 %38, 64
  %45 = zext nneg i32 %38 to i64
  %46 = shl nsw i64 -1, %45
  %47 = and i64 %46, 1976943448883713
  %48 = xor i64 %47, 1976943448883713
  %49 = select i1 %44, i64 %48, i64 578437695752307201, !prof !368
  store i64 %49, ptr %1, align 8, !tbaa !358
  br label %50

50:                                               ; preds = %42, %29
  %51 = phi ptr [ %31, %29 ], [ %11, %42 ]
  switch i16 %28, label %125 [
    i16 89, label %52
    i16 83, label %68
    i16 84, label %68
    i16 85, label %68
    i16 86, label %68
    i16 116, label %74
    i16 113, label %74
  ], !prof !369

52:                                               ; preds = %50
  %53 = tail call i64 @widest_int_cst_value(ptr noundef %27) #17
  %54 = getelementptr inbounds %struct.symbolic_number, ptr %1, i64 0, i32 1
  %55 = load i32, ptr %54, align 8, !tbaa !356
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %52, %61
  %58 = phi i64 [ %63, %61 ], [ %53, %52 ]
  %59 = phi i32 [ %62, %61 ], [ 0, %52 ]
  %60 = trunc i64 %58 to i8
  switch i8 %60, label %125 [
    i8 0, label %61
    i8 -1, label %61
  ]

61:                                               ; preds = %57, %57
  %62 = add nuw nsw i32 %59, 1
  %63 = lshr i64 %58, 8
  %64 = icmp eq i32 %62, %55
  br i1 %64, label %65, label %57, !llvm.loop !370

65:                                               ; preds = %61, %52
  %66 = load i64, ptr %1, align 8, !tbaa !358
  %67 = and i64 %66, %53
  store i64 %67, ptr %1, align 8, !tbaa !358
  br label %92

68:                                               ; preds = %50, %50, %50, %50
  %69 = getelementptr inbounds %struct.tree_int_cst, ptr %27, i64 0, i32 1
  %70 = load i64, ptr %69, align 8, !tbaa !120
  %71 = trunc i64 %70 to i32
  %72 = tail call fastcc zeroext i8 @do_shift_rotate(i32 noundef %16, ptr noundef %1, i32 noundef %71) #18, !range !129
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %125, label %92

74:                                               ; preds = %50, %50
  %75 = tail call fastcc ptr @gimple_expr_type(ptr noundef %0) #18
  %76 = getelementptr inbounds %struct.tree_type, ptr %75, i64 0, i32 6
  %77 = load i32, ptr %76, align 4
  %78 = and i32 %77, 1023
  %79 = and i32 %77, 7
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %125, !prof !368

81:                                               ; preds = %74
  %82 = lshr exact i32 %78, 3
  %83 = icmp ult i32 %78, 64
  br i1 %83, label %84, label %90, !prof !368

84:                                               ; preds = %81
  %85 = zext nneg i32 %78 to i64
  %86 = shl nsw i64 -1, %85
  %87 = xor i64 %86, -1
  %88 = load i64, ptr %1, align 8, !tbaa !358
  %89 = and i64 %88, %87
  store i64 %89, ptr %1, align 8, !tbaa !358
  br label %90

90:                                               ; preds = %84, %81
  %91 = getelementptr inbounds %struct.symbolic_number, ptr %1, i64 0, i32 1
  store i32 %82, ptr %91, align 8, !tbaa !356
  br label %92

92:                                               ; preds = %90, %65, %68
  %93 = tail call fastcc zeroext i8 @verify_symbolic_number_p(ptr noundef %1, ptr noundef %0) #18, !range !129
  %94 = icmp eq i8 %93, 0
  %95 = select i1 %94, ptr null, ptr %51, !prof !371
  br label %125

96:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #19
  %97 = icmp eq i32 %16, 87
  %98 = icmp eq i64 %24, 141
  %99 = and i1 %97, %98
  br i1 %99, label %100, label %123, !prof !372

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.tree_ssa_name, ptr %22, i64 0, i32 2
  %102 = load ptr, ptr %101, align 8, !tbaa !120
  %103 = add nsw i32 %2, -1
  %104 = call fastcc ptr @find_bswap_1(ptr noundef %19, ptr noundef nonnull %4, i32 noundef %103) #18
  %105 = icmp eq ptr %104, null
  br i1 %105, label %123, label %106, !prof !367

106:                                              ; preds = %100
  %107 = call fastcc ptr @find_bswap_1(ptr noundef %102, ptr noundef nonnull %5, i32 noundef %103) #18
  %108 = icmp eq ptr %104, %107
  br i1 %108, label %109, label %123, !prof !367

109:                                              ; preds = %106
  %110 = getelementptr inbounds %struct.symbolic_number, ptr %4, i64 0, i32 1
  %111 = load i32, ptr %110, align 8, !tbaa !356
  %112 = getelementptr inbounds %struct.symbolic_number, ptr %5, i64 0, i32 1
  %113 = load i32, ptr %112, align 8, !tbaa !356
  %114 = icmp eq i32 %111, %113
  br i1 %114, label %115, label %123

115:                                              ; preds = %109
  %116 = getelementptr inbounds %struct.symbolic_number, ptr %1, i64 0, i32 1
  store i32 %111, ptr %116, align 8, !tbaa !356
  %117 = load i64, ptr %4, align 8, !tbaa !358
  %118 = load i64, ptr %5, align 8, !tbaa !358
  %119 = or i64 %118, %117
  store i64 %119, ptr %1, align 8, !tbaa !358
  %120 = tail call fastcc zeroext i8 @verify_symbolic_number_p(ptr noundef nonnull %1, ptr noundef %0) #18, !range !129
  %121 = icmp eq i8 %120, 0
  %122 = select i1 %121, ptr null, ptr %104
  br label %123

123:                                              ; preds = %115, %106, %109, %100, %96
  %124 = phi ptr [ null, %96 ], [ null, %100 ], [ null, %109 ], [ null, %106 ], [ %122, %115 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #19
  br label %125

125:                                              ; preds = %57, %15, %74, %50, %68, %33, %26, %10, %3, %7, %123, %92
  %126 = phi ptr [ %95, %92 ], [ %124, %123 ], [ null, %7 ], [ null, %3 ], [ null, %10 ], [ null, %26 ], [ null, %33 ], [ null, %68 ], [ null, %50 ], [ null, %74 ], [ null, %15 ], [ null, %57 ]
  ret ptr %126
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_assign_rhs_class(ptr noundef %0) unnamed_addr #1 !prof !373 !PGOFuncName !374 {
  %2 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #18, !range !132
  %3 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %2) #18, !range !196
  ret i32 %3
}

; Function Attrs: optsize
declare i64 @widest_int_cst_value(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef zeroext i8 @do_shift_rotate(i32 noundef %0, ptr nocapture noundef %1, i32 noundef %2) unnamed_addr #10 !prof !111 !PGOFuncName !375 {
  %4 = and i32 %2, 7
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %46

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.symbolic_number, ptr %1, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !356
  %9 = icmp slt i32 %8, 8
  br i1 %9, label %10, label %17

10:                                               ; preds = %6
  %11 = shl nsw i32 %8, 3
  %12 = zext nneg i32 %11 to i64
  %13 = shl nsw i64 -1, %12
  %14 = xor i64 %13, -1
  %15 = load i64, ptr %1, align 8, !tbaa !358
  %16 = and i64 %15, %14
  store i64 %16, ptr %1, align 8, !tbaa !358
  br label %17

17:                                               ; preds = %10, %6
  switch i32 %0, label %46 [
    i32 83, label %18
    i32 84, label %22
    i32 85, label %26
    i32 86, label %35
  ]

18:                                               ; preds = %17
  %19 = load i64, ptr %1, align 8, !tbaa !358
  %20 = zext nneg i32 %2 to i64
  %21 = shl i64 %19, %20
  br label %44

22:                                               ; preds = %17
  %23 = load i64, ptr %1, align 8, !tbaa !358
  %24 = zext nneg i32 %2 to i64
  %25 = lshr i64 %23, %24
  br label %44

26:                                               ; preds = %17
  %27 = load i64, ptr %1, align 8, !tbaa !358
  %28 = zext nneg i32 %2 to i64
  %29 = shl i64 %27, %28
  %30 = shl nsw i32 %8, 3
  %31 = sub nsw i32 %30, %2
  %32 = zext nneg i32 %31 to i64
  %33 = lshr i64 %27, %32
  %34 = or i64 %29, %33
  br label %44

35:                                               ; preds = %17
  %36 = load i64, ptr %1, align 8, !tbaa !358
  %37 = zext nneg i32 %2 to i64
  %38 = lshr i64 %36, %37
  %39 = shl nsw i32 %8, 3
  %40 = sub nsw i32 %39, %2
  %41 = zext nneg i32 %40 to i64
  %42 = shl i64 %36, %41
  %43 = or i64 %38, %42
  br label %44

44:                                               ; preds = %35, %26, %22, %18
  %45 = phi i64 [ %21, %18 ], [ %25, %22 ], [ %34, %26 ], [ %43, %35 ]
  store i64 %45, ptr %1, align 8, !tbaa !358
  br label %46

46:                                               ; preds = %44, %17, %3
  %47 = phi i8 [ 0, %3 ], [ 0, %17 ], [ 1, %44 ]
  ret i8 %47
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @verify_symbolic_number_p(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #1 !prof !376 !PGOFuncName !377 {
  %3 = tail call fastcc ptr @gimple_expr_type(ptr noundef %1) #18
  %4 = load i64, ptr %3, align 8
  %5 = and i64 %4, 65535
  %6 = icmp eq i64 %5, 8
  br i1 %6, label %7, label %16, !prof !368

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 6
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 1023
  %11 = getelementptr inbounds %struct.symbolic_number, ptr %0, i64 0, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !356
  %13 = shl nsw i32 %12, 3
  %14 = icmp eq i32 %10, %13
  %15 = zext i1 %14 to i8
  br label %16

16:                                               ; preds = %7, %2
  %17 = phi i8 [ 0, %2 ], [ %15, %7 ]
  ret i8 %17
}

; Function Attrs: optsize
declare ptr @make_ssa_name_fn(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nounwind optsize }
attributes #18 = { optsize }
attributes #19 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!103}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 41384367471}
!4 = !{!"MaxCount", i64 1634498074}
!5 = !{!"MaxInternalCount", i64 547036138}
!6 = !{!"MaxFunctionCount", i64 1634498074}
!7 = !{!"NumCounts", i64 195328}
!8 = !{!"NumFunctions", i64 22513}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1634498074, i32 1}
!14 = !{i32 100000, i64 272534181, i32 9}
!15 = !{i32 200000, i64 109006700, i32 29}
!16 = !{i32 300000, i64 55802042, i32 85}
!17 = !{i32 400000, i64 37542678, i32 177}
!18 = !{i32 500000, i64 23214123, i32 321}
!19 = !{i32 600000, i64 14141732, i32 538}
!20 = !{i32 700000, i64 7343732, i32 948}
!21 = !{i32 800000, i64 3522590, i32 1768}
!22 = !{i32 900000, i64 1189516, i32 3798}
!23 = !{i32 950000, i64 537165, i32 6437}
!24 = !{i32 990000, i64 138704, i32 12217}
!25 = !{i32 999000, i64 22717, i32 17399}
!26 = !{i32 999900, i64 2200, i32 21474}
!27 = !{i32 999990, i64 190, i32 26113}
!28 = !{i32 999999, i64 38, i32 30999}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102}
!35 = !{ptr @execute_cse_sincos, ptr @calculate_dominance_info, i64 38}
!36 = !{ptr @execute_cse_sincos, ptr @gsi_after_labels, i64 153088}
!37 = !{ptr @execute_cse_sincos, ptr @gsi_end_p, i64 482026}
!38 = !{ptr @execute_cse_sincos, ptr @gsi_stmt, i64 328938}
!39 = !{ptr @execute_cse_sincos, ptr @is_gimple_call, i64 328938}
!40 = !{ptr @execute_cse_sincos, ptr @gimple_call_lhs, i64 67357}
!41 = !{ptr @execute_cse_sincos, ptr @gimple_call_fndecl, i64 65141}
!42 = !{ptr @execute_cse_sincos, ptr @gimple_call_arg, i64 1}
!43 = !{ptr @execute_cse_sincos, ptr @gsi_next, i64 328938}
!44 = !{ptr @execute_cse_sincos, ptr @free_dominance_info, i64 38}
!45 = !{ptr @execute_optimize_bswap, ptr @gsi_after_labels, i64 151175}
!46 = !{ptr @execute_optimize_bswap, ptr @gsi_end_p, i64 476001}
!47 = !{ptr @execute_optimize_bswap, ptr @gsi_stmt, i64 324826}
!48 = !{ptr @execute_optimize_bswap, ptr @is_gimple_assign, i64 324826}
!49 = !{ptr @execute_optimize_bswap, ptr @gimple_assign_rhs_code, i64 122555}
!50 = !{ptr @execute_optimize_bswap, ptr @gimple_expr_type, i64 9199}
!51 = !{ptr @execute_optimize_bswap, ptr @find_bswap, i64 4}
!52 = !{ptr @execute_optimize_bswap, ptr @useless_type_conversion_p, i64 2}
!53 = !{ptr @execute_optimize_bswap, ptr @gimple_build_call, i64 1}
!54 = !{ptr @execute_optimize_bswap, ptr @gimple_assign_lhs, i64 1}
!55 = !{ptr @execute_optimize_bswap, ptr @gimple_call_set_lhs, i64 1}
!56 = !{ptr @execute_optimize_bswap, ptr @gsi_insert_after, i64 1}
!57 = !{ptr @execute_optimize_bswap, ptr @gsi_remove, i64 1}
!58 = !{ptr @execute_optimize_bswap, ptr @gsi_next, i64 324826}
!59 = !{ptr @gsi_after_labels, ptr @gsi_start_bb, i64 314232}
!60 = !{ptr @gsi_after_labels, ptr @gsi_end_p, i64 320109}
!61 = !{ptr @gsi_after_labels, ptr @gsi_stmt, i64 319584}
!62 = !{ptr @gsi_after_labels, ptr @gimple_code, i64 319584}
!63 = !{ptr @gsi_after_labels, ptr @gsi_next, i64 5877}
!64 = !{ptr @is_gimple_assign, ptr @gimple_code, i64 337608}
!65 = !{ptr @gimple_assign_rhs_code, ptr @gimple_expr_code, i64 136965}
!66 = !{ptr @gimple_assign_rhs_code, ptr @get_gimple_rhs_class, i64 136965}
!67 = !{ptr @gimple_assign_rhs_code, ptr @gimple_assign_rhs1, i64 79562}
!68 = !{ptr @gimple_assign_rhs2, ptr @gimple_num_ops, i64 3}
!69 = !{ptr @gimple_assign_rhs2, ptr @gimple_op, i64 2}
!70 = !{ptr @is_gimple_call, ptr @gimple_code, i64 337593}
!71 = !{ptr @gimple_call_lhs, ptr @gimple_op, i64 69129}
!72 = !{ptr @gimple_call_fndecl, ptr @gimple_call_fn, i64 66855}
!73 = !{ptr @gimple_assign_rhs1, ptr @gimple_op, i64 79577}
!74 = !{ptr @gsi_start_bb, ptr @bb_seq, i64 314232}
!75 = !{ptr @gsi_start_bb, ptr @gimple_seq_first, i64 314232}
!76 = !{ptr @gimple_has_ops, ptr @gimple_code, i64 215564}
!77 = !{ptr @gimple_expr_code, ptr @gimple_code, i64 136965}
!78 = !{ptr @gimple_op, ptr @gimple_has_ops, i64 215564}
!79 = !{ptr @gimple_op, ptr @gimple_ops, i64 215563}
!80 = !{ptr @gimple_ops, ptr @gimple_statement_structure, i64 215564}
!81 = !{ptr @gimple_ops, ptr @fancy_abort, i64 1}
!82 = !{ptr @gimple_statement_structure, ptr @gimple_code, i64 215564}
!83 = !{ptr @gimple_statement_structure, ptr @gss_for_code, i64 215564}
!84 = !{ptr @gimple_call_fn, ptr @gimple_op, i64 66855}
!85 = !{ptr @gimple_expr_type, ptr @gimple_code, i64 9575}
!86 = !{ptr @gimple_expr_type, ptr @gimple_assign_rhs_code, i64 9574}
!87 = !{ptr @gimple_expr_type, ptr @gimple_assign_rhs1, i64 1}
!88 = !{ptr @gimple_expr_type, ptr @gimple_get_lhs, i64 9573}
!89 = !{ptr @find_bswap, ptr @gimple_expr_type, i64 3}
!90 = !{ptr @find_bswap, ptr @find_bswap_1, i64 3}
!91 = !{ptr @find_bswap_1, ptr @is_gimple_assign, i64 14}
!92 = !{ptr @find_bswap_1, ptr @gimple_assign_rhs1, i64 13}
!93 = !{ptr @find_bswap_1, ptr @gimple_assign_rhs_code, i64 8}
!94 = !{ptr @find_bswap_1, ptr @gimple_assign_rhs_class, i64 8}
!95 = !{ptr @find_bswap_1, ptr @gimple_assign_rhs2, i64 3}
!96 = !{ptr @find_bswap_1, ptr @find_bswap_1, i64 7}
!97 = !{ptr @find_bswap_1, ptr @do_shift_rotate, i64 1}
!98 = !{ptr @find_bswap_1, ptr @gimple_expr_type, i64 2}
!99 = !{ptr @find_bswap_1, ptr @verify_symbolic_number_p, i64 3}
!100 = !{ptr @gimple_assign_rhs_class, ptr @gimple_assign_rhs_code, i64 9}
!101 = !{ptr @gimple_assign_rhs_class, ptr @get_gimple_rhs_class, i64 9}
!102 = !{ptr @verify_symbolic_number_p, ptr @gimple_expr_type, i64 6}
!103 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!104 = !{!"function_entry_count", i64 38}
!105 = !{!"tree-ssa-math-opts.c:gate_cse_reciprocals"}
!106 = !{!107, !107, i64 0}
!107 = !{!"int", !108, i64 0}
!108 = !{!"omnipotent char", !109, i64 0}
!109 = !{!"Simple C/C++ TBAA"}
!110 = !{!"branch_weights", i32 39, i32 1}
!111 = !{!"function_entry_count", i64 0}
!112 = !{!"tree-ssa-math-opts.c:execute_cse_reciprocals"}
!113 = !{!114, !114, i64 0}
!114 = !{!"any pointer", !108, i64 0}
!115 = !{!116, !114, i64 8}
!116 = !{!"function", !114, i64 0, !114, i64 8, !114, i64 16, !114, i64 24, !114, i64 32, !114, i64 40, !114, i64 48, !114, i64 56, !114, i64 64, !114, i64 72, !114, i64 80, !114, i64 88, !114, i64 96, !107, i64 104, !107, i64 108, !107, i64 112, !107, i64 116, !107, i64 120, !107, i64 124, !114, i64 128, !107, i64 136, !107, i64 137, !107, i64 138, !107, i64 138, !107, i64 138, !107, i64 138, !107, i64 138, !107, i64 138, !107, i64 138, !107, i64 139, !107, i64 139, !107, i64 139, !107, i64 139, !107, i64 139, !107, i64 139, !107, i64 139}
!117 = !{!118, !107, i64 24}
!118 = !{!"control_flow_graph", !114, i64 0, !114, i64 8, !114, i64 16, !107, i64 24, !107, i64 28, !107, i64 32, !114, i64 40, !107, i64 48, !108, i64 52, !108, i64 60, !107, i64 68, !107, i64 72}
!119 = !{!116, !114, i64 48}
!120 = !{!108, !108, i64 0}
!121 = distinct !{!121, !122}
!122 = !{!"llvm.loop.mustprogress"}
!123 = !{!118, !114, i64 0}
!124 = !{!125, !114, i64 56}
!125 = !{!"basic_block_def", !114, i64 0, !114, i64 8, !114, i64 16, !114, i64 24, !108, i64 32, !114, i64 48, !114, i64 56, !108, i64 64, !126, i64 72, !107, i64 80, !107, i64 84, !107, i64 88, !107, i64 92, !107, i64 96}
!126 = !{!"long", !108, i64 0}
!127 = !{!118, !114, i64 8}
!128 = !{i64 0, i64 8, !113, i64 8, i64 8, !113, i64 16, i64 8, !113}
!129 = !{i8 0, i8 2}
!130 = distinct !{!130, !122}
!131 = distinct !{!131, !122}
!132 = !{i32 0, i32 65536}
!133 = !{!134, !114, i64 944}
!134 = !{!"gcc_target", !135, i64 0, !137, i64 368, !138, i64 664, !107, i64 744, !114, i64 752, !114, i64 760, !114, i64 768, !114, i64 776, !114, i64 784, !114, i64 792, !114, i64 800, !114, i64 808, !114, i64 816, !114, i64 824, !114, i64 832, !114, i64 840, !114, i64 848, !114, i64 856, !114, i64 864, !114, i64 872, !114, i64 880, !114, i64 888, !114, i64 896, !114, i64 904, !114, i64 912, !114, i64 920, !114, i64 928, !114, i64 936, !114, i64 944, !114, i64 952, !114, i64 960, !114, i64 968, !114, i64 976, !114, i64 984, !114, i64 992, !114, i64 1000, !114, i64 1008, !114, i64 1016, !114, i64 1024, !114, i64 1032, !114, i64 1040, !114, i64 1048, !114, i64 1056, !126, i64 1064, !126, i64 1072, !114, i64 1080, !114, i64 1088, !114, i64 1096, !114, i64 1104, !114, i64 1112, !114, i64 1120, !114, i64 1128, !114, i64 1136, !114, i64 1144, !114, i64 1152, !114, i64 1160, !114, i64 1168, !139, i64 1176, !114, i64 1232, !114, i64 1240, !114, i64 1248, !114, i64 1256, !114, i64 1264, !114, i64 1272, !114, i64 1280, !114, i64 1288, !114, i64 1296, !114, i64 1304, !114, i64 1312, !114, i64 1320, !114, i64 1328, !114, i64 1336, !114, i64 1344, !114, i64 1352, !114, i64 1360, !114, i64 1368, !114, i64 1376, !114, i64 1384, !114, i64 1392, !114, i64 1400, !114, i64 1408, !114, i64 1416, !114, i64 1424, !114, i64 1432, !114, i64 1440, !114, i64 1448, !114, i64 1456, !126, i64 1464, !140, i64 1472, !114, i64 1664, !114, i64 1672, !114, i64 1680, !114, i64 1688, !114, i64 1696, !114, i64 1704, !114, i64 1712, !114, i64 1720, !114, i64 1728, !114, i64 1736, !114, i64 1744, !114, i64 1752, !114, i64 1760, !114, i64 1768, !114, i64 1776, !141, i64 1784, !142, i64 1792, !143, i64 1896, !144, i64 1968, !114, i64 2016, !108, i64 2024, !108, i64 2025, !108, i64 2026, !108, i64 2027, !108, i64 2028, !108, i64 2029, !108, i64 2030, !108, i64 2031, !108, i64 2032, !108, i64 2033, !108, i64 2034, !108, i64 2035}
!135 = !{!"asm_out", !114, i64 0, !114, i64 8, !114, i64 16, !136, i64 24, !136, i64 56, !114, i64 88, !114, i64 96, !114, i64 104, !114, i64 112, !114, i64 120, !114, i64 128, !114, i64 136, !114, i64 144, !114, i64 152, !114, i64 160, !114, i64 168, !114, i64 176, !114, i64 184, !114, i64 192, !114, i64 200, !114, i64 208, !114, i64 216, !114, i64 224, !114, i64 232, !114, i64 240, !114, i64 248, !114, i64 256, !114, i64 264, !114, i64 272, !114, i64 280, !114, i64 288, !114, i64 296, !114, i64 304, !114, i64 312, !114, i64 320, !114, i64 328, !114, i64 336, !114, i64 344, !114, i64 352, !114, i64 360}
!136 = !{!"asm_int_op", !114, i64 0, !114, i64 8, !114, i64 16, !114, i64 24}
!137 = !{!"sched", !114, i64 0, !114, i64 8, !114, i64 16, !114, i64 24, !114, i64 32, !114, i64 40, !114, i64 48, !114, i64 56, !114, i64 64, !114, i64 72, !114, i64 80, !114, i64 88, !114, i64 96, !114, i64 104, !114, i64 112, !114, i64 120, !114, i64 128, !114, i64 136, !114, i64 144, !114, i64 152, !114, i64 160, !114, i64 168, !114, i64 176, !114, i64 184, !114, i64 192, !114, i64 200, !114, i64 208, !114, i64 216, !114, i64 224, !114, i64 232, !114, i64 240, !114, i64 248, !114, i64 256, !114, i64 264, !114, i64 272, !114, i64 280, !114, i64 288}
!138 = !{!"vectorize", !114, i64 0, !114, i64 8, !114, i64 16, !114, i64 24, !114, i64 32, !114, i64 40, !114, i64 48, !114, i64 56, !114, i64 64, !114, i64 72}
!139 = !{!"addr_space", !114, i64 0, !114, i64 8, !114, i64 16, !114, i64 24, !114, i64 32, !114, i64 40, !114, i64 48}
!140 = !{!"calls", !114, i64 0, !114, i64 8, !114, i64 16, !114, i64 24, !114, i64 32, !114, i64 40, !114, i64 48, !114, i64 56, !114, i64 64, !114, i64 72, !114, i64 80, !114, i64 88, !114, i64 96, !114, i64 104, !114, i64 112, !114, i64 120, !114, i64 128, !114, i64 136, !114, i64 144, !114, i64 152, !114, i64 160, !114, i64 168, !114, i64 176, !114, i64 184}
!141 = !{!"c", !114, i64 0}
!142 = !{!"cxx", !114, i64 0, !114, i64 8, !114, i64 16, !114, i64 24, !114, i64 32, !114, i64 40, !114, i64 48, !114, i64 56, !114, i64 64, !114, i64 72, !114, i64 80, !114, i64 88, !114, i64 96}
!143 = !{!"emutls", !114, i64 0, !114, i64 8, !114, i64 16, !114, i64 24, !114, i64 32, !114, i64 40, !114, i64 48, !114, i64 56, !108, i64 64, !108, i64 65}
!144 = !{!"target_option_hooks", !114, i64 0, !114, i64 8, !114, i64 16, !114, i64 24, !114, i64 32, !114, i64 40}
!145 = distinct !{!145, !122}
!146 = distinct !{!146, !122}
!147 = distinct !{!147, !122}
!148 = distinct !{!148, !122}
!149 = !{!"tree-ssa-math-opts.c:gate_cse_sincos"}
!150 = !{!"tree-ssa-math-opts.c:execute_cse_sincos"}
!151 = !{!"branch_weights", i32 1, i32 155}
!152 = !{!"branch_weights", i32 157116, i32 1}
!153 = !{!"branch_weights", i32 268465, i32 69130}
!154 = !{!"branch_weights", i32 2275, i32 66856}
!155 = !{!"branch_weights", i32 1, i32 66856}
!156 = !{!"branch_weights", i32 180478, i32 157116}
!157 = distinct !{!157, !122}
!158 = !{!"branch_weights", i32 155, i32 628313}
!159 = distinct !{!159, !122}
!160 = !{!"tree-ssa-math-opts.c:gate_optimize_bswap"}
!161 = !{!"tree-ssa-math-opts.c:execute_optimize_bswap"}
!162 = !{!"branch_weights", i32 1, i32 39}
!163 = !{!164, !107, i64 0}
!164 = !{!"optab_handlers", !107, i64 0}
!165 = !{!"branch_weights", i32 2119969443, i32 27514205}
!166 = !{!"branch_weights", i32 210222, i32 127373}
!167 = !{!"branch_weights", i32 9561, i32 117813}
!168 = !{!"branch_weights", i32 9558, i32 4, i32 1}
!169 = !{!"branch_weights", i32 4, i32 1}
!170 = !{!"branch_weights", i32 0, i32 -2147483648}
!171 = distinct !{!171, !122}
!172 = distinct !{!172, !122}
!173 = !{!"tree-ssa-math-opts.c:execute_cse_reciprocals_1"}
!174 = distinct !{!174, !122}
!175 = !{!134, !114, i64 1152}
!176 = distinct !{!176, !122}
!177 = distinct !{!177, !122}
!178 = distinct !{!178, !122}
!179 = distinct !{!179, !122}
!180 = !{!"function_entry_count", i64 1309536}
!181 = !{!"tree-ssa-math-opts.c:gsi_end_p"}
!182 = !{!183, !114, i64 0}
!183 = !{!"", !114, i64 0, !114, i64 8, !114, i64 16}
!184 = !{!"function_entry_count", i64 969590}
!185 = !{!"tree-ssa-math-opts.c:gsi_stmt"}
!186 = !{!187, !114, i64 0}
!187 = !{!"gimple_seq_node_d", !114, i64 0, !114, i64 8, !114, i64 16}
!188 = !{!"tree-ssa-math-opts.c:get_def_from_ptr"}
!189 = !{!"tree-ssa-math-opts.c:gimple_phi_result_ptr"}
!190 = !{!"function_entry_count", i64 681072}
!191 = !{!"tree-ssa-math-opts.c:gsi_next"}
!192 = !{!187, !114, i64 16}
!193 = !{!"function_entry_count", i64 314232}
!194 = !{!"tree-ssa-math-opts.c:gsi_after_labels"}
!195 = !{!"branch_weights", i32 25714, i32 1}
!196 = !{i32 0, i32 256}
!197 = !{!"branch_weights", i32 5887, i32 314233}
!198 = !{!"branch_weights", i32 268691, i32 25714}
!199 = distinct !{!199, !122}
!200 = !{!"tree-ssa-math-opts.c:gimple_has_lhs"}
!201 = !{!"tree-ssa-math-opts.c:single_ssa_tree_operand"}
!202 = !{!"function_entry_count", i64 337608}
!203 = !{!"tree-ssa-math-opts.c:is_gimple_assign"}
!204 = !{!"function_entry_count", i64 136965}
!205 = !{!"tree-ssa-math-opts.c:gimple_assign_rhs_code"}
!206 = !{!"branch_weights", i32 79563, i32 57404}
!207 = !{!"function_entry_count", i64 3}
!208 = !{!"tree-ssa-math-opts.c:gimple_assign_rhs2"}
!209 = !{!"function_entry_count", i64 337593}
!210 = !{!"tree-ssa-math-opts.c:is_gimple_call"}
!211 = !{!"function_entry_count", i64 69129}
!212 = !{!"tree-ssa-math-opts.c:gimple_call_lhs"}
!213 = !{!"function_entry_count", i64 66855}
!214 = !{!"tree-ssa-math-opts.c:gimple_call_fndecl"}
!215 = !{!"branch_weights", i32 66856, i32 1}
!216 = !{!"tree-ssa-math-opts.c:first_readonly_imm_use"}
!217 = !{!218, !114, i64 8}
!218 = !{!"immediate_use_iterator_d", !114, i64 0, !114, i64 8, !219, i64 16, !114, i64 48}
!219 = !{!"ssa_use_operand_d", !114, i64 0, !114, i64 8, !108, i64 16, !114, i64 24}
!220 = !{!219, !114, i64 8}
!221 = !{!218, !114, i64 0}
!222 = !{!"tree-ssa-math-opts.c:end_readonly_imm_use_p"}
!223 = !{!"tree-ssa-math-opts.c:is_gimple_debug"}
!224 = !{!"function_entry_count", i64 79577}
!225 = !{!"tree-ssa-math-opts.c:gimple_assign_rhs1"}
!226 = !{!"tree-ssa-math-opts.c:next_readonly_imm_use"}
!227 = !{!"tree-ssa-math-opts.c:gimple_call_set_fndecl"}
!228 = !{!"tree-ssa-math-opts.c:update_stmt"}
!229 = !{!"tree-ssa-math-opts.c:first_imm_use_stmt"}
!230 = !{!"tree-ssa-math-opts.c:end_imm_use_stmt_p"}
!231 = !{!"tree-ssa-math-opts.c:gimple_assign_set_rhs_code"}
!232 = !{!"tree-ssa-math-opts.c:next_imm_use_stmt"}
!233 = !{!218, !114, i64 24}
!234 = !{!218, !114, i64 16}
!235 = !{!"tree-ssa-math-opts.c:is_division_by"}
!236 = !{!"tree-ssa-math-opts.c:register_division_in"}
!237 = !{!125, !114, i64 16}
!238 = !{!239, !108, i64 44}
!239 = !{!"occurrence", !114, i64 0, !114, i64 8, !114, i64 16, !114, i64 24, !114, i64 32, !107, i64 40, !108, i64 44}
!240 = !{!239, !107, i64 40}
!241 = !{!"tree-ssa-math-opts.c:gimple_bb"}
!242 = !{!"tree-ssa-math-opts.c:compute_merit"}
!243 = !{!239, !114, i64 0}
!244 = !{!239, !114, i64 24}
!245 = distinct !{!245, !122}
!246 = !{!"tree-ssa-math-opts.c:insert_reciprocals"}
!247 = distinct !{!247, !122}
!248 = !{!183, !114, i64 16}
!249 = !{!239, !114, i64 16}
!250 = !{!239, !114, i64 8}
!251 = distinct !{!251, !122}
!252 = !{!"tree-ssa-math-opts.c:first_imm_use_on_stmt"}
!253 = !{!218, !114, i64 48}
!254 = !{!"tree-ssa-math-opts.c:end_imm_use_on_stmt_p"}
!255 = !{!"tree-ssa-math-opts.c:replace_reciprocal"}
!256 = !{!"tree-ssa-math-opts.c:next_imm_use_on_stmt"}
!257 = !{!"tree-ssa-math-opts.c:free_bb"}
!258 = !{!239, !114, i64 32}
!259 = distinct !{!259, !122}
!260 = !{!"tree-ssa-math-opts.c:occ_new"}
!261 = !{!"tree-ssa-math-opts.c:insert_bb"}
!262 = distinct !{!262, !122}
!263 = !{!"tree-ssa-math-opts.c:set_ssa_use_from_ptr"}
!264 = !{!219, !114, i64 24}
!265 = !{!"tree-ssa-math-opts.c:delink_imm_use"}
!266 = !{!219, !114, i64 0}
!267 = !{!"tree-ssa-math-opts.c:link_imm_use"}
!268 = !{!"tree-ssa-math-opts.c:link_imm_use_to_list"}
!269 = !{!"tree-ssa-math-opts.c:gsi_start_bb"}
!270 = !{!183, !114, i64 8}
!271 = !{!"function_entry_count", i64 1762837}
!272 = !{!"tree-ssa-math-opts.c:gimple_code"}
!273 = !{!"tree-ssa-math-opts.c:bb_seq"}
!274 = !{!125, !107, i64 96}
!275 = !{!"branch_weights", i32 314233, i32 1}
!276 = !{!"branch_weights", i32 1, i32 314233}
!277 = !{!278, !114, i64 0}
!278 = !{!"gimple_bb_info", !114, i64 0, !114, i64 8}
!279 = !{!"tree-ssa-math-opts.c:gimple_seq_first"}
!280 = !{!281, !114, i64 0}
!281 = !{!"gimple_seq_d", !114, i64 0, !114, i64 8, !114, i64 16}
!282 = !{!"tree-ssa-math-opts.c:op_iter_init_tree"}
!283 = !{!284, !107, i64 4}
!284 = !{!"ssa_operand_iterator_d", !108, i64 0, !107, i64 4, !114, i64 8, !114, i64 16, !107, i64 24, !107, i64 28, !114, i64 32}
!285 = !{!"tree-ssa-math-opts.c:op_iter_done"}
!286 = !{!284, !108, i64 0}
!287 = !{!"tree-ssa-math-opts.c:op_iter_next_tree"}
!288 = !{!284, !114, i64 16}
!289 = !{!290, !114, i64 0}
!290 = !{!"use_optype_d", !114, i64 0, !219, i64 8}
!291 = !{!284, !114, i64 8}
!292 = !{!293, !114, i64 8}
!293 = !{!"def_optype_d", !114, i64 0, !114, i64 8}
!294 = !{!293, !114, i64 0}
!295 = !{!"tree-ssa-math-opts.c:op_iter_init"}
!296 = !{!"tree-ssa-math-opts.c:gimple_def_ops"}
!297 = !{!"tree-ssa-math-opts.c:gimple_vdef"}
!298 = !{!"tree-ssa-math-opts.c:gimple_use_ops"}
!299 = !{!"tree-ssa-math-opts.c:gimple_vuse"}
!300 = !{!"function_entry_count", i64 215564}
!301 = !{!"tree-ssa-math-opts.c:gimple_has_ops"}
!302 = !{!"tree-ssa-math-opts.c:gimple_has_mem_ops"}
!303 = !{!"tree-ssa-math-opts.c:get_use_from_ptr"}
!304 = !{!"tree-ssa-math-opts.c:gimple_expr_code"}
!305 = !{!"branch_weights", i32 1, i32 547864, i32 2, i32 1}
!306 = !{!"function_entry_count", i64 136974}
!307 = !{!"tree-ssa-math-opts.c:get_gimple_rhs_class"}
!308 = !{!"tree-ssa-math-opts.c:gimple_num_ops"}
!309 = !{!"tree-ssa-math-opts.c:gimple_op"}
!310 = !{!"branch_weights", i32 1, i32 215565}
!311 = !{!"tree-ssa-math-opts.c:gimple_ops"}
!312 = !{!126, !126, i64 0}
!313 = !{!"tree-ssa-math-opts.c:gimple_statement_structure"}
!314 = !{!"tree-ssa-math-opts.c:gss_for_code"}
!315 = !{!"tree-ssa-math-opts.c:gimple_call_fn"}
!316 = !{!"tree-ssa-math-opts.c:gimple_set_op"}
!317 = !{!"tree-ssa-math-opts.c:gimple_location"}
!318 = !{!"tree-ssa-math-opts.c:link_use_stmts_after"}
!319 = distinct !{!319, !122}
!320 = distinct !{!320, !122}
!321 = !{!"tree-ssa-math-opts.c:op_iter_init_phiuse"}
!322 = !{!284, !114, i64 32}
!323 = !{!284, !107, i64 28}
!324 = !{!"tree-ssa-math-opts.c:move_use_after_head"}
!325 = !{!"tree-ssa-math-opts.c:op_iter_next_use"}
!326 = !{!284, !107, i64 24}
!327 = !{!"tree-ssa-math-opts.c:op_iter_init_use"}
!328 = !{!"tree-ssa-math-opts.c:gimple_vuse_op"}
!329 = !{!290, !114, i64 32}
!330 = !{!"tree-ssa-math-opts.c:gimple_phi_result"}
!331 = !{!"tree-ssa-math-opts.c:clear_and_done_ssa_iter"}
!332 = !{!"tree-ssa-math-opts.c:gimple_phi_num_args"}
!333 = !{!"tree-ssa-math-opts.c:gimple_phi_arg_imm_use_ptr"}
!334 = !{!"tree-ssa-math-opts.c:gimple_phi_arg"}
!335 = !{!"tree-ssa-math-opts.c:gimple_call_arg"}
!336 = !{!"tree-ssa-math-opts.c:execute_cse_sincos_1"}
!337 = distinct !{!337, !122}
!338 = !{i32 0, i32 2}
!339 = distinct !{!339, !122}
!340 = !{!"tree-ssa-math-opts.c:maybe_record_sincos"}
!341 = !{!"tree-ssa-math-opts.c:VEC_gimple_heap_free"}
!342 = !{!"tree-ssa-math-opts.c:gimple_call_set_lhs"}
!343 = !{!"tree-ssa-math-opts.c:VEC_gimple_base_iterate"}
!344 = !{!345, !107, i64 0}
!345 = !{!"VEC_gimple_base", !107, i64 0, !107, i64 4, !108, i64 8}
!346 = !{!"tree-ssa-math-opts.c:VEC_gimple_heap_safe_push"}
!347 = !{!"tree-ssa-math-opts.c:VEC_gimple_heap_reserve"}
!348 = !{!"tree-ssa-math-opts.c:VEC_gimple_base_quick_push"}
!349 = !{!"tree-ssa-math-opts.c:VEC_gimple_base_space"}
!350 = !{!345, !107, i64 4}
!351 = !{!"function_entry_count", i64 9575}
!352 = !{!"tree-ssa-math-opts.c:gimple_expr_type"}
!353 = !{!"branch_weights", i32 1, i32 2, i32 38304, i32 1}
!354 = !{!"branch_weights", i32 1, i32 9576}
!355 = !{!"tree-ssa-math-opts.c:find_bswap"}
!356 = !{!357, !107, i64 8}
!357 = !{!"symbolic_number", !126, i64 0, !107, i64 8}
!358 = !{!357, !126, i64 0}
!359 = !{!"tree-ssa-math-opts.c:make_ssa_name"}
!360 = !{!"tree-ssa-math-opts.c:gimple_assign_lhs"}
!361 = !{!"tree-ssa-math-opts.c:gimple_call_return_type"}
!362 = !{!"function_entry_count", i64 15}
!363 = !{!"tree-ssa-math-opts.c:find_bswap_1"}
!364 = !{!"branch_weights", i32 1, i32 16}
!365 = !{!"branch_weights", i32 10, i32 7}
!366 = !{!"branch_weights", i32 0, i32 -2147483648, i32 -536870912}
!367 = !{!"branch_weights", i32 1, i32 4}
!368 = !{!"branch_weights", i32 7, i32 1}
!369 = !{!"branch_weights", i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 7, i32 1}
!370 = distinct !{!370, !122}
!371 = !{!"branch_weights", i32 1, i32 7}
!372 = !{!"branch_weights", i32 16, i32 9}
!373 = !{!"function_entry_count", i64 9}
!374 = !{!"tree-ssa-math-opts.c:gimple_assign_rhs_class"}
!375 = !{!"tree-ssa-math-opts.c:do_shift_rotate"}
!376 = !{!"function_entry_count", i64 6}
!377 = !{!"tree-ssa-math-opts.c:verify_symbolic_number_p"}

; ModuleID = 'tree-stdarg.c'
source_filename = "tree-stdarg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gimple_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.lang_hooks = type { ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lang_hooks_for_tree_inlining, %struct.lang_hooks_for_callgraph, %struct.lang_hooks_for_tree_dump, %struct.lang_hooks_for_decls, %struct.lang_hooks_for_types, %struct.lang_hooks_for_lto, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_tree_inlining = type { ptr }
%struct.lang_hooks_for_callgraph = type { ptr }
%struct.lang_hooks_for_tree_dump = type { ptr, ptr }
%struct.lang_hooks_for_decls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lang_hooks_for_types = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_lto = type { ptr, ptr, ptr }
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
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.stdarg_info = type { ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr }
%struct.walk_stmt_info = type { %struct.gimple_stmt_iterator, ptr, ptr, i8, i8, i8, i8, ptr }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.ssa_operand_iterator_d = type { i8, i32, ptr, ptr, i32, i32, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.tree_function_decl = type { %struct.tree_decl_non_common, ptr, ptr, ptr, ptr, i32 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.use_optype_d = type { ptr, %struct.ssa_use_operand_d }
%struct.edge_iterator = type { i32, ptr }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.simple_bitmap_def = type { ptr, i32, i32, [1 x i64] }
%struct.gimple_df = type { ptr, ptr, ptr, ptr, %struct.pt_solution, %struct.pt_solution, ptr, ptr, ptr, ptr, i8, %struct.ssa_operands }
%struct.pt_solution = type { i8, ptr }
%struct.ssa_operands = type { ptr, i32, i32, i8, ptr, ptr }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.def_optype_d = type { ptr, ptr }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }

@.str = private unnamed_addr constant [7 x i8] c"stdarg\00", align 1
@pass_stdarg = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str, ptr @gate_optimize_stdarg, ptr @execute_optimize_stdarg, ptr null, ptr null, i32 0, i32 0, i32 40, i32 0, i32 0, i32 0, i32 1 } }, align 8
@cfun = external local_unnamed_addr global ptr, align 8
@dump_file = external local_unnamed_addr global ptr, align 8
@lang_hooks = external local_unnamed_addr global %struct.lang_hooks, align 8
@current_function_decl = external local_unnamed_addr global ptr, align 8
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@integer_types = external local_unnamed_addr global [11 x ptr], align 16
@.str.1 = private unnamed_addr constant [14 x i8] c"tree-stdarg.c\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@dump_flags = external local_unnamed_addr global i32, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"va_list escapes in \00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"%s: va_list escapes %d, needs to save \00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c" GPR units and \00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c" FPR units.\0A\00", align 1
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@.str.9 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@.str.11 = private unnamed_addr constant [64 x i8] c"bb%d will %sbe executed at most once for each va_start in bb%d\0A\00", align 1
@.str.12 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"not \00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@gimple_rhs_class_table = external local_unnamed_addr constant [0 x i8], align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_optimize_stdarg() #0 !prof !34 !PGOFuncName !35 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !36
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 20
  %3 = load i32, ptr %2, align 8
  %4 = lshr i32 %3, 22
  %5 = trunc i32 %4 to i8
  %6 = and i8 %5, 1
  ret i8 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @execute_optimize_stdarg() #1 !prof !40 !PGOFuncName !41 {
  %1 = alloca %struct.stdarg_info, align 8
  %2 = alloca %struct.walk_stmt_info, align 8
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = alloca %struct.ssa_operand_iterator_d, align 8
  %6 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %1) #15
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #15
  %7 = load ptr, ptr @cfun, align 8, !tbaa !36
  %8 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 20
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, -65536
  store i32 %10, ptr %8, align 8
  %11 = getelementptr inbounds i8, ptr %1, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %11, i8 0, i64 48, i1 false)
  %12 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #16
  store ptr %12, ptr %1, align 8, !tbaa !42
  %13 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #16
  %14 = getelementptr inbounds %struct.stdarg_info, ptr %1, i64 0, i32 1
  store ptr %13, ptr %14, align 8, !tbaa !45
  %15 = load ptr, ptr @dump_file, align 8, !tbaa !36
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %0
  %18 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 22), align 8, !tbaa !46
  %19 = load ptr, ptr @current_function_decl, align 8, !tbaa !36
  %20 = tail call ptr %18(ptr noundef %19, i32 noundef 2) #16
  br label %21

21:                                               ; preds = %17, %0
  %22 = phi ptr [ %20, %17 ], [ null, %0 ]
  %23 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 70), align 8, !tbaa !55
  %24 = load ptr, ptr @cfun, align 8, !tbaa !36
  %25 = getelementptr inbounds %struct.function, ptr %24, i64 0, i32 6
  %26 = load ptr, ptr %25, align 8, !tbaa !67
  %27 = tail call ptr %23(ptr noundef %26) #16
  %28 = load i64, ptr %27, align 8
  %29 = trunc i64 %28 to i16
  switch i16 %29, label %38 [
    i16 10, label %30
    i16 12, label %30
  ]

30:                                               ; preds = %21, %21
  %31 = getelementptr inbounds %struct.tree_common, ptr %27, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !69
  %33 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !36
  %34 = icmp eq ptr %32, %33
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = load ptr, ptr @integer_types, align 16, !tbaa !36
  %37 = icmp eq ptr %32, %36
  br label %38

38:                                               ; preds = %21, %30, %35
  %39 = phi i1 [ true, %30 ], [ %37, %35 ], [ false, %21 ]
  %40 = tail call zeroext i8 @is_gimple_reg_type(ptr noundef nonnull %27) #16
  %41 = zext i1 %39 to i8
  %42 = icmp eq i8 %40, %41
  br i1 %42, label %44, label %43

43:                                               ; preds = %38
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 612, ptr noundef nonnull @.str.2) #16
  br label %44

44:                                               ; preds = %38, %43
  %45 = load ptr, ptr @cfun, align 8, !tbaa !36
  %46 = getelementptr inbounds %struct.function, ptr %45, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !70
  %48 = load ptr, ptr %47, align 8, !tbaa !71
  %49 = getelementptr inbounds %struct.stdarg_info, ptr %1, i64 0, i32 4
  %50 = getelementptr inbounds %struct.stdarg_info, ptr %1, i64 0, i32 7
  %51 = getelementptr inbounds %struct.stdarg_info, ptr %1, i64 0, i32 8
  br label %52

52:                                               ; preds = %136, %44
  %53 = phi ptr [ %48, %44 ], [ %55, %136 ]
  %54 = getelementptr inbounds %struct.basic_block_def, ptr %53, i64 0, i32 6
  %55 = load ptr, ptr %54, align 8, !tbaa !73
  %56 = load ptr, ptr @cfun, align 8, !tbaa !36
  %57 = getelementptr inbounds %struct.function, ptr %56, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !70
  %59 = getelementptr inbounds %struct.control_flow_graph, ptr %58, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !75
  %61 = icmp eq ptr %55, %60
  br i1 %61, label %139, label %62

62:                                               ; preds = %52
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %55) #17
  %63 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #17, !range !76
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %65, label %136

65:                                               ; preds = %62
  %66 = load ptr, ptr %1, align 8
  %67 = load i32, ptr %49, align 4, !tbaa !77
  br label %68

68:                                               ; preds = %65, %131
  %69 = phi i32 [ %67, %65 ], [ %132, %131 ]
  %70 = phi i8 [ 0, %65 ], [ %133, %131 ]
  %71 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #17
  %72 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %71) #17, !range !76
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %131, label %74

74:                                               ; preds = %68
  %75 = tail call fastcc ptr @gimple_call_fndecl(ptr noundef %71) #17
  %76 = icmp eq ptr %75, null
  br i1 %76, label %131, label %77

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.tree_function_decl, ptr %75, i64 0, i32 5
  %79 = load i32, ptr %78, align 8
  %80 = and i32 %79, 6144
  %81 = icmp eq i32 %80, 6144
  br i1 %81, label %82, label %131

82:                                               ; preds = %77
  %83 = and i32 %79, 2047
  switch i32 %83, label %84 [
    i32 515, label %85
    i32 505, label %131
    i32 418, label %131
    i32 492, label %131
  ]

84:                                               ; preds = %82
  br label %131

85:                                               ; preds = %82
  %86 = add nsw i32 %69, 1
  store i32 %86, ptr %49, align 4, !tbaa !77
  %87 = tail call fastcc ptr @gimple_call_arg(ptr noundef %71) #17
  %88 = load i64, ptr %87, align 8
  %89 = and i64 %88, 65535
  %90 = icmp eq i64 %89, 121
  br i1 %90, label %91, label %130

91:                                               ; preds = %85
  %92 = getelementptr inbounds %struct.tree_exp, ptr %87, i64 0, i32 3
  %93 = load ptr, ptr %92, align 8, !tbaa !69
  %94 = load i64, ptr %93, align 8
  %95 = and i64 %94, 65535
  %96 = icmp eq i64 %95, 45
  br i1 %96, label %97, label %105

97:                                               ; preds = %91
  %98 = getelementptr inbounds %struct.tree_exp, ptr %93, i64 1
  %99 = load ptr, ptr %98, align 8, !tbaa !69
  %100 = tail call i32 @integer_zerop(ptr noundef %99) #16
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %130, label %102

102:                                              ; preds = %97
  %103 = getelementptr inbounds %struct.tree_exp, ptr %93, i64 0, i32 3
  %104 = load ptr, ptr %103, align 8, !tbaa !69
  br label %105

105:                                              ; preds = %102, %91
  %106 = phi ptr [ %104, %102 ], [ %93, %91 ]
  %107 = getelementptr inbounds %struct.tree_common, ptr %106, i64 0, i32 2
  %108 = load ptr, ptr %107, align 8, !tbaa !69
  %109 = getelementptr inbounds %struct.tree_type, ptr %108, i64 0, i32 16
  %110 = load ptr, ptr %109, align 8, !tbaa !69
  %111 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 70), align 8, !tbaa !55
  %112 = load ptr, ptr @cfun, align 8, !tbaa !36
  %113 = getelementptr inbounds %struct.function, ptr %112, i64 0, i32 6
  %114 = load ptr, ptr %113, align 8, !tbaa !67
  %115 = tail call ptr %111(ptr noundef %114) #16
  %116 = getelementptr inbounds %struct.tree_type, ptr %115, i64 0, i32 16
  %117 = load ptr, ptr %116, align 8, !tbaa !69
  %118 = icmp eq ptr %110, %117
  br i1 %118, label %119, label %130

119:                                              ; preds = %105
  %120 = load i64, ptr %106, align 8
  %121 = and i64 %120, 65535
  %122 = icmp eq i64 %121, 32
  br i1 %122, label %123, label %130

123:                                              ; preds = %119
  %124 = tail call fastcc zeroext i8 @is_global_var(ptr noundef nonnull %106) #17, !range !76
  %125 = icmp eq i8 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %123
  %127 = getelementptr inbounds %struct.tree_decl_minimal, ptr %106, i64 0, i32 2
  %128 = load i32, ptr %127, align 4, !tbaa !69
  %129 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %66, i32 noundef %128) #16
  store ptr %55, ptr %50, align 8, !tbaa !78
  store ptr %106, ptr %51, align 8, !tbaa !79
  br label %131

130:                                              ; preds = %85, %97, %119, %105, %123
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  br label %334

131:                                              ; preds = %84, %126, %68, %77, %74, %82, %82, %82
  %132 = phi i32 [ %69, %82 ], [ %69, %82 ], [ %69, %82 ], [ %69, %74 ], [ %69, %77 ], [ %69, %68 ], [ %86, %126 ], [ %69, %84 ]
  %133 = phi i8 [ 1, %82 ], [ 1, %82 ], [ 1, %82 ], [ %70, %74 ], [ %70, %77 ], [ %70, %68 ], [ %70, %126 ], [ %70, %84 ]
  call fastcc void @gsi_next(ptr noundef nonnull %3) #17
  %134 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #17, !range !76
  %135 = icmp eq i8 %134, 0
  br i1 %135, label %68, label %136, !llvm.loop !80

136:                                              ; preds = %131, %62
  %137 = phi i8 [ 0, %62 ], [ %133, %131 ]
  %138 = icmp eq i8 %137, 0
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  br i1 %138, label %52, label %334

139:                                              ; preds = %52
  %140 = load i32, ptr %49, align 4
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %341, label %142

142:                                              ; preds = %139
  %143 = icmp sgt i32 %140, 1
  %144 = and i1 %39, %143
  br i1 %144, label %334, label %145

145:                                              ; preds = %142
  %146 = xor i1 %39, true
  %147 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 45), align 8
  %148 = icmp eq ptr %147, null
  %149 = select i1 %146, i1 %148, i1 false
  %150 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 46), align 16
  %151 = icmp eq ptr %150, null
  %152 = select i1 %149, i1 %151, i1 false
  br i1 %152, label %334, label %153

153:                                              ; preds = %145
  br i1 %39, label %154, label %158

154:                                              ; preds = %153
  %155 = getelementptr inbounds %struct.function, ptr %56, i64 0, i32 20
  %156 = load i32, ptr %155, align 8
  %157 = or i32 %156, 65280
  store i32 %157, ptr %155, align 8
  br label %158

158:                                              ; preds = %154, %153
  tail call void @calculate_dominance_info(i32 noundef 1) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, i8 0, i64 56, i1 false)
  %159 = load ptr, ptr %1, align 8, !tbaa !42
  %160 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 1
  store ptr %159, ptr %160, align 8, !tbaa !82
  %161 = load ptr, ptr @cfun, align 8, !tbaa !36
  %162 = getelementptr inbounds %struct.function, ptr %161, i64 0, i32 1
  %163 = load ptr, ptr %162, align 8, !tbaa !70
  %164 = load ptr, ptr %163, align 8, !tbaa !71
  %165 = getelementptr inbounds %struct.stdarg_info, ptr %1, i64 0, i32 3
  %166 = getelementptr inbounds %struct.stdarg_info, ptr %1, i64 0, i32 2
  %167 = getelementptr inbounds %struct.stdarg_info, ptr %1, i64 0, i32 5
  br label %168

168:                                              ; preds = %323, %158
  %169 = phi ptr [ %164, %158 ], [ %171, %323 ]
  %170 = getelementptr inbounds %struct.basic_block_def, ptr %169, i64 0, i32 6
  %171 = load ptr, ptr %170, align 8, !tbaa !73
  %172 = load ptr, ptr @cfun, align 8, !tbaa !36
  %173 = getelementptr inbounds %struct.function, ptr %172, i64 0, i32 1
  %174 = load ptr, ptr %173, align 8, !tbaa !70
  %175 = getelementptr inbounds %struct.control_flow_graph, ptr %174, i64 0, i32 1
  %176 = load ptr, ptr %175, align 8, !tbaa !75
  %177 = icmp eq ptr %171, %176
  br i1 %177, label %326, label %178

178:                                              ; preds = %168
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #15
  store i32 -1, ptr %165, align 8, !tbaa !85
  store ptr %171, ptr %166, align 8, !tbaa !86
  br i1 %39, label %179, label %229

179:                                              ; preds = %178
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #15
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %171) #16
  %180 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #17, !range !76
  %181 = icmp eq i8 %180, 0
  br i1 %181, label %182, label %227

182:                                              ; preds = %179, %223
  %183 = phi i8 [ %224, %223 ], [ 0, %179 ]
  %184 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #17
  %185 = call fastcc ptr @gimple_phi_result_ptr(ptr noundef %184) #17
  %186 = call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %185) #17
  %187 = call zeroext i8 @is_gimple_reg(ptr noundef %186) #16
  %188 = icmp eq i8 %187, 0
  br i1 %188, label %223, label %189

189:                                              ; preds = %182
  %190 = call fastcc ptr @op_iter_init_phiuse(ptr noundef nonnull %5, ptr noundef %184) #17
  %191 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %5) #17
  %192 = icmp eq i8 %191, 0
  br i1 %192, label %193, label %223

193:                                              ; preds = %189, %218
  %194 = phi i8 [ %219, %218 ], [ %183, %189 ]
  %195 = phi ptr [ %220, %218 ], [ %190, %189 ]
  %196 = call fastcc ptr @get_use_from_ptr(ptr noundef %195) #17
  %197 = call fastcc zeroext i8 @va_list_ptr_read(ptr noundef nonnull %1, ptr noundef %196, ptr noundef %186) #17, !range !76
  %198 = icmp eq i8 %197, 0
  br i1 %198, label %199, label %218

199:                                              ; preds = %193
  %200 = call fastcc zeroext i8 @va_list_ptr_write(ptr noundef nonnull %1, ptr noundef %186, ptr noundef %196) #17, !range !76
  %201 = icmp eq i8 %200, 0
  br i1 %201, label %202, label %218

202:                                              ; preds = %199
  call fastcc void @check_va_list_escapes(ptr noundef nonnull %1, ptr noundef %186, ptr noundef %196) #17
  %203 = load i8, ptr %167, align 8, !tbaa !87
  %204 = icmp eq i8 %203, 0
  br i1 %204, label %218, label %205

205:                                              ; preds = %202
  %206 = load ptr, ptr @dump_file, align 8, !tbaa !36
  %207 = icmp eq ptr %206, null
  br i1 %207, label %218, label %208

208:                                              ; preds = %205
  %209 = load i32, ptr @dump_flags, align 4, !tbaa !88
  %210 = and i32 %209, 8
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %218, label %212

212:                                              ; preds = %208
  %213 = call i32 @fputs(ptr noundef nonnull @.str.3, ptr noundef nonnull %206) #17
  %214 = load ptr, ptr @dump_file, align 8, !tbaa !36
  %215 = load i32, ptr @dump_flags, align 4, !tbaa !88
  call void @print_gimple_stmt(ptr noundef %214, ptr noundef %184, i32 noundef 0, i32 noundef %215) #16
  %216 = load ptr, ptr @dump_file, align 8, !tbaa !36
  %217 = call i32 @fputc(i32 noundef 10, ptr noundef %216) #17
  br label %218

218:                                              ; preds = %205, %208, %212, %202, %199, %193
  %219 = phi i8 [ %194, %193 ], [ %194, %199 ], [ %194, %202 ], [ 1, %212 ], [ 1, %208 ], [ 1, %205 ]
  %220 = call fastcc ptr @op_iter_next_use(ptr noundef nonnull %5) #17
  %221 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %5) #17
  %222 = icmp eq i8 %221, 0
  br i1 %222, label %193, label %223, !llvm.loop !89

223:                                              ; preds = %218, %189, %182
  %224 = phi i8 [ %183, %182 ], [ %183, %189 ], [ %219, %218 ]
  call fastcc void @gsi_next(ptr noundef nonnull %4) #17
  %225 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #17, !range !76
  %226 = icmp eq i8 %225, 0
  br i1 %226, label %182, label %227, !llvm.loop !90

227:                                              ; preds = %223, %179
  %228 = phi i8 [ 0, %179 ], [ %224, %223 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #15
  br label %229

229:                                              ; preds = %227, %178
  %230 = phi i8 [ %228, %227 ], [ 0, %178 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #15
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %6, ptr noundef %171) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !91
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #15
  %231 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #17, !range !76
  %232 = icmp eq i8 %231, 0
  %233 = icmp eq i8 %230, 0
  %234 = select i1 %232, i1 %233, i1 false
  br i1 %234, label %235, label %323

235:                                              ; preds = %229, %317
  %236 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #17
  %237 = call fastcc zeroext i8 @is_gimple_call(ptr noundef %236) #17, !range !76
  %238 = icmp eq i8 %237, 0
  br i1 %238, label %247, label %239

239:                                              ; preds = %235
  %240 = call fastcc ptr @gimple_call_fndecl(ptr noundef %236) #17
  %241 = icmp eq ptr %240, null
  br i1 %241, label %247, label %242

242:                                              ; preds = %239
  %243 = getelementptr inbounds %struct.tree_function_decl, ptr %240, i64 0, i32 5
  %244 = load i32, ptr %243, align 8
  %245 = and i32 %244, 8190
  %246 = icmp eq i32 %245, 6658
  br i1 %246, label %317, label %247

247:                                              ; preds = %239, %242, %235
  %248 = call fastcc zeroext i8 @is_gimple_assign(ptr noundef %236) #17, !range !76
  %249 = icmp eq i8 %248, 0
  br i1 %249, label %295, label %250

250:                                              ; preds = %247
  %251 = call fastcc ptr @gimple_assign_lhs(ptr noundef %236) #17
  %252 = call fastcc ptr @gimple_assign_rhs1(ptr noundef %236) #17
  %253 = call fastcc i32 @gimple_assign_rhs_code(ptr noundef %236) #17, !range !92
  %254 = call fastcc i32 @get_gimple_rhs_class(i32 noundef %253) #17, !range !93
  %255 = icmp eq i32 %254, 3
  br i1 %39, label %256, label %282

256:                                              ; preds = %250
  br i1 %255, label %257, label %263

257:                                              ; preds = %256
  %258 = call fastcc zeroext i8 @va_list_ptr_read(ptr noundef nonnull %1, ptr noundef %252, ptr noundef %251) #17, !range !76
  %259 = icmp eq i8 %258, 0
  br i1 %259, label %260, label %317

260:                                              ; preds = %257
  %261 = call fastcc zeroext i8 @va_list_ptr_write(ptr noundef nonnull %1, ptr noundef %251, ptr noundef %252) #17, !range !76
  %262 = icmp eq i8 %261, 0
  br i1 %262, label %263, label %317

263:                                              ; preds = %260, %256
  %264 = call fastcc i32 @gimple_assign_rhs_code(ptr noundef %236) #17, !range !92
  %265 = icmp eq i32 %264, 66
  br i1 %265, label %266, label %271

266:                                              ; preds = %263
  %267 = call fastcc ptr @gimple_assign_rhs2(ptr noundef %236) #17
  %268 = load i64, ptr %267, align 8
  %269 = and i64 %268, 65535
  %270 = icmp eq i64 %269, 23
  br i1 %270, label %281, label %271

271:                                              ; preds = %266, %263
  %272 = call fastcc i32 @gimple_assign_rhs_code(ptr noundef %236) #17, !range !92
  %273 = icmp eq i32 %272, 116
  br i1 %273, label %281, label %274

274:                                              ; preds = %271
  %275 = call fastcc i32 @gimple_assign_rhs_code(ptr noundef %236) #17, !range !92
  %276 = icmp eq i32 %275, 113
  br i1 %276, label %281, label %277

277:                                              ; preds = %274
  %278 = call fastcc i32 @gimple_assign_rhs_code(ptr noundef %236) #17, !range !92
  %279 = call fastcc i32 @get_gimple_rhs_class(i32 noundef %278) #17, !range !93
  %280 = icmp eq i32 %279, 3
  br i1 %280, label %281, label %298

281:                                              ; preds = %277, %274, %271, %266
  call fastcc void @check_va_list_escapes(ptr noundef nonnull %1, ptr noundef %251, ptr noundef %252) #17
  br label %298

282:                                              ; preds = %250
  br i1 %255, label %283, label %289

283:                                              ; preds = %282
  %284 = call fastcc zeroext i8 @va_list_counter_struct_op(ptr noundef nonnull %1, ptr noundef %251, ptr noundef %252, i8 noundef zeroext 1) #17, !range !76
  %285 = icmp eq i8 %284, 0
  br i1 %285, label %286, label %317

286:                                              ; preds = %283
  %287 = call fastcc zeroext i8 @va_list_counter_struct_op(ptr noundef nonnull %1, ptr noundef %252, ptr noundef %251, i8 noundef zeroext 0) #17, !range !76
  %288 = icmp eq i8 %287, 0
  br i1 %288, label %289, label %317

289:                                              ; preds = %286, %282
  %290 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 82), align 8, !tbaa !94
  %291 = icmp eq ptr %290, null
  br i1 %291, label %298, label %292

292:                                              ; preds = %289
  %293 = call zeroext i8 %290(ptr noundef nonnull %1, ptr noundef %236) #16
  %294 = icmp eq i8 %293, 0
  br i1 %294, label %298, label %317

295:                                              ; preds = %247
  %296 = call fastcc zeroext i8 @is_gimple_debug(ptr noundef %236) #17, !range !76
  %297 = icmp eq i8 %296, 0
  br i1 %297, label %298, label %317

298:                                              ; preds = %281, %277, %292, %289, %295
  %299 = load i8, ptr %167, align 8, !tbaa !87
  %300 = icmp eq i8 %299, 0
  br i1 %300, label %301, label %304

301:                                              ; preds = %298
  %302 = call ptr @walk_gimple_op(ptr noundef %236, ptr noundef nonnull @find_va_list_reference, ptr noundef nonnull %2) #16
  %303 = icmp eq ptr %302, null
  br i1 %303, label %317, label %304

304:                                              ; preds = %301, %298
  %305 = load ptr, ptr @dump_file, align 8, !tbaa !36
  %306 = icmp eq ptr %305, null
  br i1 %306, label %317, label %307

307:                                              ; preds = %304
  %308 = load i32, ptr @dump_flags, align 4, !tbaa !88
  %309 = and i32 %308, 8
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %317, label %311

311:                                              ; preds = %307
  %312 = call i32 @fputs(ptr noundef nonnull @.str.3, ptr noundef nonnull %305) #17
  %313 = load ptr, ptr @dump_file, align 8, !tbaa !36
  %314 = load i32, ptr @dump_flags, align 4, !tbaa !88
  call void @print_gimple_stmt(ptr noundef %313, ptr noundef %236, i32 noundef 0, i32 noundef %314) #16
  %315 = load ptr, ptr @dump_file, align 8, !tbaa !36
  %316 = call i32 @fputc(i32 noundef 10, ptr noundef %315) #17
  br label %317

317:                                              ; preds = %242, %301, %311, %307, %304, %295, %257, %260, %283, %286, %292
  %318 = phi i1 [ true, %292 ], [ true, %286 ], [ true, %283 ], [ true, %260 ], [ true, %257 ], [ true, %295 ], [ true, %301 ], [ false, %311 ], [ false, %307 ], [ false, %304 ], [ true, %242 ]
  %319 = phi i8 [ 0, %292 ], [ 0, %286 ], [ 0, %283 ], [ 0, %260 ], [ 0, %257 ], [ 0, %295 ], [ 0, %301 ], [ 1, %311 ], [ 1, %307 ], [ 1, %304 ], [ 0, %242 ]
  call fastcc void @gsi_next(ptr noundef nonnull %4) #17
  %320 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #17, !range !76
  %321 = icmp eq i8 %320, 0
  %322 = and i1 %321, %318
  br i1 %322, label %235, label %323, !llvm.loop !95

323:                                              ; preds = %317, %229
  %324 = phi i8 [ %230, %229 ], [ %319, %317 ]
  %325 = phi i1 [ %233, %229 ], [ %318, %317 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #15
  br i1 %325, label %168, label %334

326:                                              ; preds = %168
  br i1 %39, label %327, label %341

327:                                              ; preds = %326
  %328 = load ptr, ptr %14, align 8, !tbaa !45
  %329 = load ptr, ptr %328, align 8, !tbaa !96
  %330 = icmp eq ptr %329, null
  br i1 %330, label %341, label %331

331:                                              ; preds = %327
  %332 = call fastcc zeroext i8 @check_all_va_list_escapes(ptr noundef nonnull %1) #17
  %333 = icmp eq i8 %332, 0
  br i1 %333, label %341, label %334

334:                                              ; preds = %136, %323, %130, %142, %145, %331
  %335 = phi i8 [ 1, %331 ], [ 1, %145 ], [ 1, %142 ], [ 1, %130 ], [ %324, %323 ], [ %137, %136 ]
  %336 = load ptr, ptr @cfun, align 8, !tbaa !36
  %337 = getelementptr inbounds %struct.function, ptr %336, i64 0, i32 20
  %338 = load i32, ptr %337, align 8
  %339 = or i32 %338, 65535
  store i32 %339, ptr %337, align 8
  %340 = zext nneg i8 %335 to i32
  br label %341

341:                                              ; preds = %331, %139, %327, %326, %334
  %342 = phi i32 [ %340, %334 ], [ 0, %139 ], [ 0, %327 ], [ 0, %326 ], [ 0, %331 ]
  %343 = load ptr, ptr %1, align 8, !tbaa !42
  call void @bitmap_obstack_free(ptr noundef %343) #16
  store ptr null, ptr %1, align 8, !tbaa !42
  %344 = load ptr, ptr %14, align 8, !tbaa !45
  call void @bitmap_obstack_free(ptr noundef %344) #16
  store ptr null, ptr %14, align 8, !tbaa !45
  %345 = getelementptr inbounds %struct.stdarg_info, ptr %1, i64 0, i32 6
  %346 = load ptr, ptr %345, align 8, !tbaa !98
  call void @free(ptr noundef %346) #17
  %347 = load ptr, ptr @dump_file, align 8, !tbaa !36
  %348 = icmp eq ptr %347, null
  br i1 %348, label %378, label %349

349:                                              ; preds = %341
  %350 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %347, ptr noundef nonnull @.str.4, ptr noundef %22, i32 noundef %342) #17
  %351 = load ptr, ptr @cfun, align 8, !tbaa !36
  %352 = getelementptr inbounds %struct.function, ptr %351, i64 0, i32 20
  %353 = load i32, ptr %352, align 8
  %354 = and i32 %353, 255
  %355 = icmp eq i32 %354, 255
  %356 = load ptr, ptr @dump_file, align 8, !tbaa !36
  br i1 %355, label %357, label %359

357:                                              ; preds = %349
  %358 = call i32 @fputs(ptr noundef nonnull @.str.5, ptr noundef %356) #17
  br label %361

359:                                              ; preds = %349
  %360 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %356, ptr noundef nonnull @.str.6, i32 noundef %354) #17
  br label %361

361:                                              ; preds = %359, %357
  %362 = load ptr, ptr @dump_file, align 8, !tbaa !36
  %363 = call i32 @fputs(ptr noundef nonnull @.str.7, ptr noundef %362) #17
  %364 = load ptr, ptr @cfun, align 8, !tbaa !36
  %365 = getelementptr inbounds %struct.function, ptr %364, i64 0, i32 20
  %366 = load i32, ptr %365, align 8
  %367 = lshr i32 %366, 8
  %368 = and i32 %367, 255
  %369 = icmp eq i32 %368, 255
  %370 = load ptr, ptr @dump_file, align 8, !tbaa !36
  br i1 %369, label %371, label %373

371:                                              ; preds = %361
  %372 = call i32 @fputs(ptr noundef nonnull @.str.5, ptr noundef %370) #17
  br label %375

373:                                              ; preds = %361
  %374 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %370, ptr noundef nonnull @.str.6, i32 noundef %368) #17
  br label %375

375:                                              ; preds = %373, %371
  %376 = load ptr, ptr @dump_file, align 8, !tbaa !36
  %377 = call i32 @fputs(ptr noundef nonnull @.str.8, ptr noundef %376) #17
  br label %378

378:                                              ; preds = %375, %341
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #15
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %1) #15
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: optsize
declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @is_gimple_reg_type(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #5 !prof !40 !PGOFuncName !99 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #17
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #17
  store ptr %4, ptr %0, align 8, !tbaa !100
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !101
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !102
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #7 !prof !40 !PGOFuncName !103 {
  %2 = load ptr, ptr %0, align 8, !tbaa !100
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #0 !prof !40 !PGOFuncName !104 {
  %2 = load ptr, ptr %0, align 8, !tbaa !100
  %3 = load ptr, ptr %2, align 8, !tbaa !105
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_call(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !40 !PGOFuncName !107 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #17, !range !93
  %3 = icmp eq i32 %2, 8
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fndecl(ptr noundef %0) unnamed_addr #1 !prof !40 !PGOFuncName !108 {
  %2 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #17
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 121
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !69
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_arg(ptr noundef %0) unnamed_addr #1 !prof !40 !PGOFuncName !109 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 3) #17
  ret ptr %2
}

; Function Attrs: optsize
declare i32 @integer_zerop(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_global_var(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !40 !PGOFuncName !110 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 67108864
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8
  %8 = lshr i64 %7, 25
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  br label %11

11:                                               ; preds = %5, %1
  %12 = phi i8 [ 1, %1 ], [ %10, %5 ]
  ret i8 %12
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #5 !prof !40 !PGOFuncName !111 {
  %2 = load ptr, ptr %0, align 8, !tbaa !100
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !112
  store ptr %4, ptr %0, align 8, !tbaa !100
  ret void
}

; Function Attrs: optsize
declare void @calculate_dominance_info(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @get_def_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !40 !PGOFuncName !113 {
  %2 = load ptr, ptr %0, align 8, !tbaa !36
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @gimple_phi_result_ptr(ptr noundef readnone %0) unnamed_addr #8 !prof !40 !PGOFuncName !114 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  ret ptr %2
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_phiuse(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #1 !prof !40 !PGOFuncName !115 {
  %3 = tail call fastcc ptr @gimple_phi_result(ptr noundef %1) #17
  tail call fastcc void @clear_and_done_ssa_iter(ptr noundef %0) #17
  store i8 0, ptr %0, align 8, !tbaa !116
  %4 = tail call zeroext i8 @is_gimple_reg(ptr noundef %3) #16
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  store i8 1, ptr %0, align 8, !tbaa !116
  br label %13

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 6
  store ptr %1, ptr %8, align 8, !tbaa !118
  %9 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %1) #17
  %10 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 5
  store i32 %9, ptr %10, align 4, !tbaa !119
  %11 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 2, ptr %11, align 4, !tbaa !120
  %12 = tail call fastcc ptr @op_iter_next_use(ptr noundef nonnull %0) #17
  br label %13

13:                                               ; preds = %7, %6
  %14 = phi ptr [ null, %6 ], [ %12, %7 ]
  ret ptr %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @op_iter_done(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !40 !PGOFuncName !121 {
  %2 = load i8, ptr %0, align 8, !tbaa !116
  ret i8 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_use_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !40 !PGOFuncName !122 {
  %2 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !123
  %4 = load ptr, ptr %3, align 8, !tbaa !36
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @va_list_ptr_read(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 !prof !40 !PGOFuncName !125 {
  %4 = load i64, ptr %1, align 8
  %5 = and i64 %4, 65535
  %6 = icmp eq i64 %5, 32
  br i1 %6, label %7, label %80

7:                                                ; preds = %3
  %8 = load ptr, ptr %0, align 8, !tbaa !42
  %9 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !69
  %11 = tail call i32 @bitmap_bit_p(ptr noundef %8, i32 noundef %10) #16
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %80, label %13

13:                                               ; preds = %7
  %14 = load i64, ptr %2, align 8
  %15 = and i64 %14, 65535
  %16 = icmp eq i64 %15, 141
  br i1 %16, label %17, label %80

17:                                               ; preds = %13
  %18 = load ptr, ptr %0, align 8, !tbaa !42
  %19 = getelementptr inbounds %struct.tree_ssa_name, ptr %2, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !69
  %21 = getelementptr inbounds %struct.tree_decl_minimal, ptr %20, i64 0, i32 2
  %22 = load i32, ptr %21, align 4, !tbaa !69
  %23 = tail call i32 @bitmap_bit_p(ptr noundef %18, i32 noundef %22) #16
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %80

25:                                               ; preds = %17
  %26 = load ptr, ptr %19, align 8, !tbaa !69
  %27 = tail call fastcc zeroext i8 @is_global_var(ptr noundef %26) #17, !range !76
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %80

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.stdarg_info, ptr %0, i64 0, i32 3
  %31 = load i32, ptr %30, align 8, !tbaa !85
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %67

33:                                               ; preds = %29
  store i32 0, ptr %30, align 8, !tbaa !85
  %34 = getelementptr inbounds %struct.stdarg_info, ptr %0, i64 0, i32 4
  %35 = load i32, ptr %34, align 4, !tbaa !77
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %45

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.stdarg_info, ptr %0, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !86
  %40 = getelementptr inbounds %struct.stdarg_info, ptr %0, i64 0, i32 7
  %41 = load ptr, ptr %40, align 8, !tbaa !78
  %42 = tail call fastcc zeroext i8 @reachable_at_most_once(ptr noundef %39, ptr noundef %41) #17, !range !76
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %37
  store i32 1, ptr %30, align 8, !tbaa !85
  br label %45

45:                                               ; preds = %44, %37, %33
  %46 = load ptr, ptr @dump_file, align 8, !tbaa !36
  %47 = icmp eq ptr %46, null
  br i1 %47, label %65, label %48

48:                                               ; preds = %45
  %49 = load i32, ptr @dump_flags, align 4, !tbaa !88
  %50 = and i32 %49, 8
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %65, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.stdarg_info, ptr %0, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !86
  %55 = getelementptr inbounds %struct.basic_block_def, ptr %54, i64 0, i32 9
  %56 = load i32, ptr %55, align 8, !tbaa !126
  %57 = load i32, ptr %30, align 8, !tbaa !85
  %58 = icmp eq i32 %57, 0
  %59 = select i1 %58, ptr @.str.13, ptr @.str.12
  %60 = getelementptr inbounds %struct.stdarg_info, ptr %0, i64 0, i32 7
  %61 = load ptr, ptr %60, align 8, !tbaa !78
  %62 = getelementptr inbounds %struct.basic_block_def, ptr %61, i64 0, i32 9
  %63 = load i32, ptr %62, align 8, !tbaa !126
  %64 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %46, ptr noundef nonnull @.str.11, i32 noundef %56, ptr noundef nonnull %59, i32 noundef %63) #17
  br label %65

65:                                               ; preds = %52, %48, %45
  %66 = load i32, ptr %30, align 8, !tbaa !85
  br label %67

67:                                               ; preds = %65, %29
  %68 = phi i32 [ %66, %65 ], [ %31, %29 ]
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %80, label %70

70:                                               ; preds = %67
  %71 = tail call fastcc i64 @va_list_counter_bump(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i8 noundef zeroext 1) #17
  %72 = icmp eq i64 %71, -1
  br i1 %72, label %80, label %73

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.stdarg_info, ptr %0, i64 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !45
  %76 = load ptr, ptr %19, align 8, !tbaa !69
  %77 = getelementptr inbounds %struct.tree_decl_minimal, ptr %76, i64 0, i32 2
  %78 = load i32, ptr %77, align 4, !tbaa !69
  %79 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %75, i32 noundef %78) #16
  br label %80

80:                                               ; preds = %70, %67, %13, %17, %25, %3, %7, %73
  %81 = phi i8 [ 1, %73 ], [ 0, %7 ], [ 0, %3 ], [ 0, %25 ], [ 0, %17 ], [ 0, %13 ], [ 0, %67 ], [ 0, %70 ]
  ret i8 %81
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @va_list_ptr_write(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 !prof !40 !PGOFuncName !127 {
  %4 = load i64, ptr %1, align 8
  %5 = and i64 %4, 65535
  %6 = icmp eq i64 %5, 32
  br i1 %6, label %7, label %46

7:                                                ; preds = %3
  %8 = load ptr, ptr %0, align 8, !tbaa !42
  %9 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !69
  %11 = tail call i32 @bitmap_bit_p(ptr noundef %8, i32 noundef %10) #16
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %46, label %13

13:                                               ; preds = %7
  %14 = load i64, ptr %2, align 8
  %15 = and i64 %14, 65535
  %16 = icmp eq i64 %15, 141
  br i1 %16, label %17, label %46

17:                                               ; preds = %13
  %18 = load ptr, ptr %0, align 8, !tbaa !42
  %19 = getelementptr inbounds %struct.tree_ssa_name, ptr %2, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !69
  %21 = getelementptr inbounds %struct.tree_decl_minimal, ptr %20, i64 0, i32 2
  %22 = load i32, ptr %21, align 4, !tbaa !69
  %23 = tail call i32 @bitmap_bit_p(ptr noundef %18, i32 noundef %22) #16
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %46

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.stdarg_info, ptr %0, i64 0, i32 3
  %27 = load i32, ptr %26, align 8, !tbaa !85
  %28 = icmp slt i32 %27, 1
  br i1 %28, label %46, label %29

29:                                               ; preds = %25
  %30 = tail call fastcc i64 @va_list_counter_bump(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i8 noundef zeroext 1) #17
  %31 = add i64 %30, 1
  %32 = icmp ult i64 %31, 2
  br i1 %32, label %46, label %33

33:                                               ; preds = %29
  %34 = load ptr, ptr @cfun, align 8, !tbaa !36
  %35 = getelementptr inbounds %struct.function, ptr %34, i64 0, i32 20
  %36 = load i32, ptr %35, align 8
  %37 = and i32 %36, 255
  %38 = zext nneg i32 %37 to i64
  %39 = add i64 %30, %38
  %40 = icmp ult i64 %39, 255
  %41 = or i32 %36, 255
  %42 = trunc i64 %39 to i32
  %43 = and i32 %36, -256
  %44 = or disjoint i32 %43, %42
  %45 = select i1 %40, i32 %44, i32 %41
  store i32 %45, ptr %35, align 8
  br label %46

46:                                               ; preds = %29, %25, %13, %17, %3, %7, %33
  %47 = phi i8 [ 1, %33 ], [ 0, %7 ], [ 0, %3 ], [ 0, %17 ], [ 0, %13 ], [ 0, %25 ], [ 0, %29 ]
  ret i8 %47
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @check_va_list_escapes(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #1 !prof !40 !PGOFuncName !128 {
  %4 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !69
  %6 = load i64, ptr %5, align 8
  %7 = trunc i64 %6 to i16
  switch i16 %7, label %88 [
    i16 10, label %8
    i16 12, label %8
  ]

8:                                                ; preds = %3, %3
  %9 = load i64, ptr %2, align 8
  %10 = and i64 %9, 65535
  %11 = icmp eq i64 %10, 141
  br i1 %11, label %12, label %88

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.stdarg_info, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !45
  %15 = getelementptr inbounds %struct.tree_ssa_name, ptr %2, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !69
  %17 = getelementptr inbounds %struct.tree_decl_minimal, ptr %16, i64 0, i32 2
  %18 = load i32, ptr %17, align 4, !tbaa !69
  %19 = tail call i32 @bitmap_bit_p(ptr noundef %14, i32 noundef %18) #16
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %88, label %21

21:                                               ; preds = %12
  %22 = load i64, ptr %1, align 8
  %23 = and i64 %22, 65535
  %24 = icmp eq i64 %23, 141
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !69
  %28 = tail call fastcc zeroext i8 @is_global_var(ptr noundef %27) #17, !range !76
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %25, %21
  %31 = getelementptr inbounds %struct.stdarg_info, ptr %0, i64 0, i32 5
  store i8 1, ptr %31, align 8, !tbaa !87
  br label %88

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.stdarg_info, ptr %0, i64 0, i32 3
  %34 = load i32, ptr %33, align 8, !tbaa !85
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %70

36:                                               ; preds = %32
  store i32 0, ptr %33, align 8, !tbaa !85
  %37 = getelementptr inbounds %struct.stdarg_info, ptr %0, i64 0, i32 4
  %38 = load i32, ptr %37, align 4, !tbaa !77
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %48

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.stdarg_info, ptr %0, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !86
  %43 = getelementptr inbounds %struct.stdarg_info, ptr %0, i64 0, i32 7
  %44 = load ptr, ptr %43, align 8, !tbaa !78
  %45 = tail call fastcc zeroext i8 @reachable_at_most_once(ptr noundef %42, ptr noundef %44) #17, !range !76
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %40
  store i32 1, ptr %33, align 8, !tbaa !85
  br label %48

48:                                               ; preds = %47, %40, %36
  %49 = load ptr, ptr @dump_file, align 8, !tbaa !36
  %50 = icmp eq ptr %49, null
  br i1 %50, label %68, label %51

51:                                               ; preds = %48
  %52 = load i32, ptr @dump_flags, align 4, !tbaa !88
  %53 = and i32 %52, 8
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %68, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.stdarg_info, ptr %0, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !86
  %58 = getelementptr inbounds %struct.basic_block_def, ptr %57, i64 0, i32 9
  %59 = load i32, ptr %58, align 8, !tbaa !126
  %60 = load i32, ptr %33, align 8, !tbaa !85
  %61 = icmp eq i32 %60, 0
  %62 = select i1 %61, ptr @.str.13, ptr @.str.12
  %63 = getelementptr inbounds %struct.stdarg_info, ptr %0, i64 0, i32 7
  %64 = load ptr, ptr %63, align 8, !tbaa !78
  %65 = getelementptr inbounds %struct.basic_block_def, ptr %64, i64 0, i32 9
  %66 = load i32, ptr %65, align 8, !tbaa !126
  %67 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %49, ptr noundef nonnull @.str.11, i32 noundef %59, ptr noundef nonnull %62, i32 noundef %66) #17
  br label %68

68:                                               ; preds = %55, %51, %48
  %69 = load i32, ptr %33, align 8, !tbaa !85
  br label %70

70:                                               ; preds = %68, %32
  %71 = phi i32 [ %69, %68 ], [ %34, %32 ]
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.stdarg_info, ptr %0, i64 0, i32 5
  store i8 1, ptr %74, align 8, !tbaa !87
  br label %88

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.stdarg_info, ptr %0, i64 0, i32 8
  %77 = load ptr, ptr %76, align 8, !tbaa !79
  %78 = tail call fastcc i64 @va_list_counter_bump(ptr noundef nonnull %0, ptr noundef %77, ptr noundef nonnull %1, i8 noundef zeroext 1) #17
  %79 = icmp eq i64 %78, -1
  br i1 %79, label %80, label %82

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.stdarg_info, ptr %0, i64 0, i32 5
  store i8 1, ptr %81, align 8, !tbaa !87
  br label %88

82:                                               ; preds = %75
  %83 = load ptr, ptr %13, align 8, !tbaa !45
  %84 = load ptr, ptr %26, align 8, !tbaa !69
  %85 = getelementptr inbounds %struct.tree_decl_minimal, ptr %84, i64 0, i32 2
  %86 = load i32, ptr %85, align 4, !tbaa !69
  %87 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %83, i32 noundef %86) #16
  br label %88

88:                                               ; preds = %3, %8, %12, %82, %80, %73, %30
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @print_gimple_stmt(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_next_use(ptr nocapture noundef %0) unnamed_addr #1 !prof !40 !PGOFuncName !129 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !130
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.use_optype_d, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %3, align 8, !tbaa !131
  store ptr %7, ptr %2, align 8, !tbaa !130
  br label %20

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !133
  %11 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 5
  %12 = load i32, ptr %11, align 4, !tbaa !119
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !118
  %17 = add nsw i32 %10, 1
  store i32 %17, ptr %9, align 8, !tbaa !133
  %18 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %16, i32 noundef %10) #17
  br label %20

19:                                               ; preds = %8
  store i8 1, ptr %0, align 8, !tbaa !116
  br label %20

20:                                               ; preds = %19, %14, %5
  %21 = phi ptr [ %6, %5 ], [ %18, %14 ], [ null, %19 ]
  ret ptr %21
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_assign(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !40 !PGOFuncName !134 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #17, !range !93
  %3 = icmp eq i32 %2, 6
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_lhs(ptr noundef %0) unnamed_addr #1 !prof !40 !PGOFuncName !135 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #17
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs1(ptr noundef %0) unnamed_addr #1 !prof !40 !PGOFuncName !136 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #17
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @get_gimple_rhs_class(i32 noundef %0) unnamed_addr #8 !prof !40 !PGOFuncName !137 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %2
  %4 = load i8, ptr %3, align 1, !tbaa !69
  %5 = zext i8 %4 to i32
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) unnamed_addr #1 !prof !40 !PGOFuncName !138 {
  %2 = tail call fastcc i32 @gimple_expr_code(ptr noundef %0) #17, !range !92
  %3 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %2) #17, !range !93
  %4 = icmp eq i32 %3, 3
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #17
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i32
  %9 = and i32 %8, 65535
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi i32 [ %9, %5 ], [ %2, %1 ]
  ret i32 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs2(ptr noundef %0) unnamed_addr #1 !prof !40 !PGOFuncName !139 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #17
  %3 = icmp ugt i32 %2, 2
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 2) #17
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi ptr [ %5, %4 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @va_list_counter_struct_op(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) unnamed_addr #1 !prof !40 !PGOFuncName !140 {
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 41
  br i1 %7, label %8, label %46

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !69
  %11 = load i64, ptr %10, align 8
  %12 = and i64 %11, 65535
  %13 = icmp eq i64 %12, 31
  br i1 %13, label %14, label %46

14:                                               ; preds = %8
  %15 = load i64, ptr %2, align 8
  %16 = and i64 %15, 65535
  %17 = icmp eq i64 %16, 141
  br i1 %17, label %18, label %46

18:                                               ; preds = %14
  %19 = load ptr, ptr %0, align 8, !tbaa !42
  %20 = getelementptr inbounds %struct.tree_ssa_name, ptr %2, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !69
  %22 = getelementptr inbounds %struct.tree_decl_minimal, ptr %21, i64 0, i32 2
  %23 = load i32, ptr %22, align 4, !tbaa !69
  %24 = tail call i32 @bitmap_bit_p(ptr noundef %19, i32 noundef %23) #16
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %46

26:                                               ; preds = %18
  %27 = tail call ptr @get_base_address(ptr noundef nonnull %1) #16
  %28 = load i64, ptr %27, align 8
  %29 = and i64 %28, 65535
  %30 = icmp eq i64 %29, 32
  br i1 %30, label %31, label %46

31:                                               ; preds = %26
  %32 = load ptr, ptr %0, align 8, !tbaa !42
  %33 = getelementptr inbounds %struct.tree_decl_minimal, ptr %27, i64 0, i32 2
  %34 = load i32, ptr %33, align 4, !tbaa !69
  %35 = tail call i32 @bitmap_bit_p(ptr noundef %32, i32 noundef %34) #16
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %46, label %37

37:                                               ; preds = %31
  %38 = load ptr, ptr %9, align 8, !tbaa !69
  %39 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 45), align 8, !tbaa !36
  %40 = icmp eq ptr %38, %39
  br i1 %40, label %44, label %41

41:                                               ; preds = %37
  %42 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 46), align 16, !tbaa !36
  %43 = icmp eq ptr %38, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %41, %37
  %45 = phi i8 [ 1, %37 ], [ 0, %41 ]
  tail call fastcc void @va_list_counter_op(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i8 noundef zeroext %45, i8 noundef zeroext %3) #17
  br label %46

46:                                               ; preds = %44, %41, %26, %31, %14, %18, %4, %8
  %47 = phi i8 [ 0, %8 ], [ 0, %4 ], [ 0, %18 ], [ 0, %14 ], [ 0, %31 ], [ 0, %26 ], [ 1, %41 ], [ 1, %44 ]
  ret i8 %47
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_debug(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !40 !PGOFuncName !141 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #17, !range !93
  %3 = icmp eq i32 %2, 2
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare ptr @walk_gimple_op(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef ptr @find_va_list_reference(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #1 !prof !40 !PGOFuncName !142 {
  %4 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !82
  %6 = load ptr, ptr %0, align 8, !tbaa !36
  %7 = load i64, ptr %6, align 8
  %8 = and i64 %7, 65535
  %9 = icmp eq i64 %8, 141
  br i1 %9, label %10, label %14

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.tree_ssa_name, ptr %6, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !69
  %13 = load i64, ptr %12, align 8
  br label %14

14:                                               ; preds = %10, %3
  %15 = phi i64 [ %13, %10 ], [ %7, %3 ]
  %16 = phi ptr [ %12, %10 ], [ %6, %3 ]
  %17 = and i64 %15, 65535
  %18 = icmp eq i64 %17, 32
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.tree_decl_minimal, ptr %16, i64 0, i32 2
  %21 = load i32, ptr %20, align 4, !tbaa !69
  %22 = tail call i32 @bitmap_bit_p(ptr noundef %5, i32 noundef %21) #16
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19, %14
  br label %25

25:                                               ; preds = %19, %24
  %26 = phi ptr [ null, %24 ], [ %16, %19 ]
  ret ptr %26
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @check_all_va_list_escapes(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !40 !PGOFuncName !143 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca %struct.ssa_operand_iterator_d, align 8
  %4 = load ptr, ptr @cfun, align 8, !tbaa !36
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !70
  %7 = load ptr, ptr %6, align 8, !tbaa !71
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !73
  %10 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !75
  %12 = icmp eq ptr %9, %11
  br i1 %12, label %159, label %13

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.stdarg_info, ptr %0, i64 0, i32 1
  br label %15

15:                                               ; preds = %13, %150
  %16 = phi ptr [ %9, %13 ], [ %152, %150 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %16) #17
  %17 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #17, !range !76
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %150

19:                                               ; preds = %15, %147
  %20 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #17
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #15
  %21 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %20) #17, !range !76
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %147

23:                                               ; preds = %19
  %24 = call fastcc ptr @op_iter_init_tree(ptr noundef nonnull %3, ptr noundef %20) #17
  %25 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #17
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %147

27:                                               ; preds = %23, %142
  %28 = phi ptr [ %143, %142 ], [ %24, %23 ]
  %29 = load ptr, ptr %14, align 8, !tbaa !45
  %30 = getelementptr inbounds %struct.tree_ssa_name, ptr %28, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !69
  %32 = getelementptr inbounds %struct.tree_decl_minimal, ptr %31, i64 0, i32 2
  %33 = load i32, ptr %32, align 4, !tbaa !69
  %34 = tail call i32 @bitmap_bit_p(ptr noundef %29, i32 noundef %33) #16
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %142, label %36

36:                                               ; preds = %27
  %37 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %20) #17, !range !76
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %127, label %39

39:                                               ; preds = %36
  %40 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %20) #17
  %41 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %20) #17, !range !92
  %42 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %20) #17, !range !92
  %43 = icmp eq i32 %42, 47
  br i1 %43, label %44, label %87

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.tree_exp, ptr %40, i64 0, i32 3
  %46 = load ptr, ptr %45, align 8, !tbaa !69
  %47 = icmp eq ptr %46, %28
  br i1 %47, label %48, label %87

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.tree_common, ptr %40, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !69
  %51 = getelementptr inbounds %struct.tree_type, ptr %50, i64 0, i32 3
  %52 = load ptr, ptr %51, align 8, !tbaa !69
  %53 = icmp eq ptr %52, null
  br i1 %53, label %87, label %54

54:                                               ; preds = %48
  %55 = tail call i32 @host_integerp(ptr noundef nonnull %52, i32 noundef 1) #16
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %87, label %57

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.stdarg_info, ptr %0, i64 0, i32 6
  %59 = load ptr, ptr %58, align 8, !tbaa !98
  %60 = getelementptr inbounds %struct.tree_ssa_name, ptr %28, i64 0, i32 3
  %61 = load i32, ptr %60, align 8, !tbaa !69
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds i32, ptr %59, i64 %62
  %64 = load i32, ptr %63, align 4, !tbaa !88
  %65 = icmp eq i32 %64, -1
  br i1 %65, label %87, label %66

66:                                               ; preds = %57
  %67 = load ptr, ptr %49, align 8, !tbaa !69
  %68 = getelementptr inbounds %struct.tree_type, ptr %67, i64 0, i32 3
  %69 = load ptr, ptr %68, align 8, !tbaa !69
  %70 = sext i32 %64 to i64
  %71 = tail call i64 @tree_low_cst(ptr noundef %69, i32 noundef 1) #16
  %72 = add nsw i64 %71, %70
  %73 = icmp ugt i64 %72, 254
  %74 = load ptr, ptr @cfun, align 8, !tbaa !36
  %75 = getelementptr inbounds %struct.function, ptr %74, i64 0, i32 20
  %76 = load i32, ptr %75, align 8
  br i1 %73, label %77, label %79

77:                                               ; preds = %66
  %78 = or i32 %76, 255
  br label %140

79:                                               ; preds = %66
  %80 = and i32 %76, 255
  %81 = zext nneg i32 %80 to i64
  %82 = icmp ugt i64 %72, %81
  br i1 %82, label %83, label %142

83:                                               ; preds = %79
  %84 = trunc i64 %72 to i32
  %85 = and i32 %76, -256
  %86 = or disjoint i32 %85, %84
  br label %140

87:                                               ; preds = %57, %54, %48, %44, %39
  %88 = icmp eq ptr %40, %28
  br i1 %88, label %89, label %127

89:                                               ; preds = %87
  %90 = icmp eq i32 %41, 66
  br i1 %90, label %91, label %96

91:                                               ; preds = %89
  %92 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %20) #17
  %93 = load i64, ptr %92, align 8
  %94 = and i64 %93, 65535
  %95 = icmp eq i64 %94, 23
  br i1 %95, label %102, label %96

96:                                               ; preds = %91, %89
  %97 = tail call fastcc zeroext i8 @gimple_assign_cast_p(ptr noundef %20) #17, !range !76
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %96
  %100 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %41) #17, !range !93
  %101 = icmp eq i32 %100, 3
  br i1 %101, label %102, label %127

102:                                              ; preds = %99, %96, %91
  %103 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %20) #17
  %104 = load i64, ptr %103, align 8
  %105 = and i64 %104, 65535
  %106 = icmp eq i64 %105, 141
  br i1 %106, label %107, label %117

107:                                              ; preds = %102
  %108 = load ptr, ptr %14, align 8, !tbaa !45
  %109 = getelementptr inbounds %struct.tree_ssa_name, ptr %103, i64 0, i32 1
  %110 = load ptr, ptr %109, align 8, !tbaa !69
  %111 = getelementptr inbounds %struct.tree_decl_minimal, ptr %110, i64 0, i32 2
  %112 = load i32, ptr %111, align 4, !tbaa !69
  %113 = tail call i32 @bitmap_bit_p(ptr noundef %108, i32 noundef %112) #16
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %142

115:                                              ; preds = %107
  %116 = load i64, ptr %103, align 8
  br label %117

117:                                              ; preds = %115, %102
  %118 = phi i64 [ %116, %115 ], [ %104, %102 ]
  %119 = and i64 %118, 65535
  %120 = icmp eq i64 %119, 32
  br i1 %120, label %121, label %127

121:                                              ; preds = %117
  %122 = load ptr, ptr %0, align 8, !tbaa !42
  %123 = getelementptr inbounds %struct.tree_decl_minimal, ptr %103, i64 0, i32 2
  %124 = load i32, ptr %123, align 4, !tbaa !69
  %125 = tail call i32 @bitmap_bit_p(ptr noundef %122, i32 noundef %124) #16
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %142

127:                                              ; preds = %87, %99, %117, %121, %36
  %128 = load ptr, ptr @dump_file, align 8, !tbaa !36
  %129 = icmp eq ptr %128, null
  br i1 %129, label %146, label %130

130:                                              ; preds = %127
  %131 = load i32, ptr @dump_flags, align 4, !tbaa !88
  %132 = and i32 %131, 8
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %146, label %134

134:                                              ; preds = %130
  %135 = tail call i32 @fputs(ptr noundef nonnull @.str.3, ptr noundef nonnull %128) #17
  %136 = load ptr, ptr @dump_file, align 8, !tbaa !36
  %137 = load i32, ptr @dump_flags, align 4, !tbaa !88
  tail call void @print_gimple_stmt(ptr noundef %136, ptr noundef %20, i32 noundef 0, i32 noundef %137) #16
  %138 = load ptr, ptr @dump_file, align 8, !tbaa !36
  %139 = tail call i32 @fputc(i32 noundef 10, ptr noundef %138) #17
  br label %146

140:                                              ; preds = %77, %83
  %141 = phi i32 [ %86, %83 ], [ %78, %77 ]
  store i32 %141, ptr %75, align 8
  br label %142

142:                                              ; preds = %140, %121, %107, %79, %27
  %143 = call fastcc ptr @op_iter_next_tree(ptr noundef nonnull %3) #17
  %144 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #17
  %145 = icmp eq i8 %144, 0
  br i1 %145, label %27, label %147, !llvm.loop !144

146:                                              ; preds = %127, %130, %134
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  br label %159

147:                                              ; preds = %142, %23, %19
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #15
  call fastcc void @gsi_next(ptr noundef nonnull %2) #17
  %148 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #17, !range !76
  %149 = icmp eq i8 %148, 0
  br i1 %149, label %19, label %150, !llvm.loop !145

150:                                              ; preds = %147, %15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  %151 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 6
  %152 = load ptr, ptr %151, align 8, !tbaa !73
  %153 = load ptr, ptr @cfun, align 8, !tbaa !36
  %154 = getelementptr inbounds %struct.function, ptr %153, i64 0, i32 1
  %155 = load ptr, ptr %154, align 8, !tbaa !70
  %156 = getelementptr inbounds %struct.control_flow_graph, ptr %155, i64 0, i32 1
  %157 = load ptr, ptr %156, align 8, !tbaa !75
  %158 = icmp eq ptr %152, %157
  br i1 %158, label %159, label %15, !llvm.loop !146

159:                                              ; preds = %150, %1, %146
  %160 = phi i8 [ 1, %146 ], [ 0, %1 ], [ 0, %150 ]
  ret i8 %160
}

; Function Attrs: optsize
declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !40 !PGOFuncName !147 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !148
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !69
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !149
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #7 !prof !40 !PGOFuncName !151 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !152
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !40 !PGOFuncName !154 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fn(ptr noundef %0) unnamed_addr #1 !prof !40 !PGOFuncName !155 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #17
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %1) unnamed_addr #1 !prof !40 !PGOFuncName !156 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #17, !range !76
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #17
  %7 = zext nneg i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !36
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !40 !PGOFuncName !157 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #17, !range !93
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #1 !prof !40 !PGOFuncName !158 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #17
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !159
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1622, ptr noundef nonnull @.str.2) #16
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !40 !PGOFuncName !160 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #17, !range !93
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #17
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #8 !prof !40 !PGOFuncName !161 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !88
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_phi_result(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !40 !PGOFuncName !162 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !69
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @clear_and_done_ssa_iter(ptr nocapture noundef writeonly %0) unnamed_addr #11 !prof !40 !PGOFuncName !163 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %2, i8 0, i64 36, i1 false)
  store i8 1, ptr %0, align 8, !tbaa !116
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_phi_num_args(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !40 !PGOFuncName !164 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !69
  ret i32 %3
}

; Function Attrs: optsize
declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @reachable_at_most_once(ptr noundef %0, ptr noundef %1) unnamed_addr #1 !prof !40 !PGOFuncName !165 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  store ptr null, ptr %3, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #15
  %6 = icmp eq ptr %0, %1
  br i1 %6, label %79, label %7

7:                                                ; preds = %2
  %8 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %0, ptr noundef %1) #16
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %79, label %10

10:                                               ; preds = %7
  %11 = load ptr, ptr @cfun, align 8, !tbaa !36
  %12 = getelementptr inbounds %struct.function, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !70
  %14 = getelementptr inbounds %struct.control_flow_graph, ptr %13, i64 0, i32 5
  %15 = load i32, ptr %14, align 8, !tbaa !166
  %16 = tail call ptr @sbitmap_alloc(i32 noundef %15) #16
  tail call void @sbitmap_zero(ptr noundef %16) #16
  %17 = tail call fastcc ptr @ei_start_1(ptr noundef %0) #17
  store i32 0, ptr %5, align 8, !tbaa.struct !167
  %18 = getelementptr inbounds i8, ptr %5, i64 8
  store ptr %17, ptr %18, align 8, !tbaa.struct !168
  %19 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %17, ptr noundef nonnull %4) #17, !range !76
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %25, %10
  %22 = load ptr, ptr %3, align 8
  %23 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %22) #17
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %76, label %31

25:                                               ; preds = %10, %25
  %26 = load ptr, ptr %4, align 8, !tbaa !36
  call fastcc void @VEC_edge_heap_safe_push(ptr noundef nonnull %3, ptr noundef %26) #17
  call fastcc void @ei_next(ptr noundef nonnull %5) #17
  %27 = load i32, ptr %5, align 8
  %28 = load ptr, ptr %18, align 8
  %29 = call fastcc zeroext i8 @ei_cond(i32 %27, ptr %28, ptr noundef nonnull %4) #17, !range !76
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %21, label %25, !llvm.loop !169

31:                                               ; preds = %21, %72
  %32 = phi ptr [ %73, %72 ], [ %22, %21 ]
  %33 = tail call fastcc ptr @VEC_edge_base_pop(ptr noundef %32) #17
  store ptr %33, ptr %4, align 8, !tbaa !36
  %34 = load ptr, ptr %33, align 8, !tbaa !170
  %35 = getelementptr inbounds %struct.edge_def, ptr %33, i64 0, i32 7
  %36 = load i32, ptr %35, align 8, !tbaa !172
  %37 = and i32 %36, 14
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %76

39:                                               ; preds = %31
  %40 = icmp eq ptr %34, %1
  br i1 %40, label %72, label %41, !llvm.loop !173

41:                                               ; preds = %39
  %42 = icmp eq ptr %34, %0
  br i1 %42, label %76, label %43

43:                                               ; preds = %41
  %44 = load ptr, ptr @cfun, align 8, !tbaa !36
  %45 = getelementptr inbounds %struct.function, ptr %44, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !70
  %47 = load ptr, ptr %46, align 8, !tbaa !71
  %48 = icmp eq ptr %34, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 91, ptr noundef nonnull @.str.2) #16
  br label %50

50:                                               ; preds = %43, %49
  %51 = getelementptr inbounds %struct.basic_block_def, ptr %34, i64 0, i32 9
  %52 = load i32, ptr %51, align 8, !tbaa !126
  %53 = lshr i32 %52, 6
  %54 = zext nneg i32 %53 to i64
  %55 = getelementptr inbounds %struct.simple_bitmap_def, ptr %16, i64 0, i32 3, i64 %54
  %56 = load i64, ptr %55, align 8, !tbaa !159
  %57 = and i32 %52, 63
  %58 = zext nneg i32 %57 to i64
  %59 = shl nuw i64 1, %58
  %60 = and i64 %59, %56
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %72

62:                                               ; preds = %50
  tail call fastcc void @SET_BIT(ptr noundef nonnull %16, i32 noundef %52) #17
  %63 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %34) #17
  store i32 0, ptr %5, align 8, !tbaa.struct !167
  store ptr %63, ptr %18, align 8, !tbaa.struct !168
  %64 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %63, ptr noundef nonnull %4) #17, !range !76
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %72, label %66

66:                                               ; preds = %62, %66
  %67 = load ptr, ptr %4, align 8, !tbaa !36
  call fastcc void @VEC_edge_heap_safe_push(ptr noundef nonnull %3, ptr noundef %67) #17
  call fastcc void @ei_next(ptr noundef nonnull %5) #17
  %68 = load i32, ptr %5, align 8
  %69 = load ptr, ptr %18, align 8
  %70 = call fastcc zeroext i8 @ei_cond(i32 %68, ptr %69, ptr noundef nonnull %4) #17, !range !76
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %72, label %66, !llvm.loop !174

72:                                               ; preds = %66, %62, %50, %39
  %73 = load ptr, ptr %3, align 8
  %74 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %73) #17
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %31

76:                                               ; preds = %72, %31, %41, %21
  %77 = phi i8 [ 1, %21 ], [ 0, %41 ], [ 0, %31 ], [ 1, %72 ]
  call fastcc void @VEC_edge_heap_free(ptr noundef nonnull %3) #17
  %78 = load ptr, ptr %16, align 8, !tbaa !175
  tail call void @free(ptr noundef %78) #17
  tail call void @free(ptr noundef %16) #17
  br label %79

79:                                               ; preds = %7, %2, %76
  %80 = phi i8 [ %77, %76 ], [ 1, %2 ], [ 0, %7 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  ret i8 %80
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @va_list_counter_bump(ptr nocapture noundef %0, ptr noundef %1, ptr noundef readonly %2, i8 noundef zeroext %3) unnamed_addr #1 !prof !40 !PGOFuncName !177 {
  %5 = getelementptr inbounds %struct.stdarg_info, ptr %0, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !98
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %32

8:                                                ; preds = %4
  %9 = load ptr, ptr @cfun, align 8, !tbaa !36
  %10 = getelementptr inbounds %struct.function, ptr %9, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !178
  %12 = getelementptr inbounds %struct.gimple_df, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !179
  %14 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %13) #17
  %15 = zext i32 %14 to i64
  %16 = shl nuw nsw i64 %15, 2
  %17 = tail call ptr @xmalloc(i64 noundef %16) #16
  store ptr %17, ptr %5, align 8, !tbaa !98
  %18 = load ptr, ptr @cfun, align 8, !tbaa !36
  %19 = getelementptr inbounds %struct.function, ptr %18, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !178
  %21 = getelementptr inbounds %struct.gimple_df, ptr %20, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !179
  %23 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %22) #17
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %8, %25
  %26 = phi i64 [ %28, %25 ], [ 0, %8 ]
  %27 = getelementptr inbounds i32, ptr %17, i64 %26
  store i32 -1, ptr %27, align 4, !tbaa !88
  %28 = add nuw nsw i64 %26, 1
  %29 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %22) #17
  %30 = zext i32 %29 to i64
  %31 = icmp ult i64 %28, %30
  br i1 %31, label %25, label %32, !llvm.loop !183

32:                                               ; preds = %25, %8, %4
  %33 = icmp eq i8 %3, 0
  %34 = load ptr, ptr @cfun, align 8, !tbaa !36
  %35 = getelementptr inbounds %struct.function, ptr %34, i64 0, i32 20
  %36 = load i32, ptr %35, align 8
  %37 = lshr i32 %36, 8
  %38 = select i1 %33, i32 %37, i32 %36
  %39 = and i32 %38, 255
  %40 = zext nneg i32 %39 to i64
  %41 = icmp eq ptr %2, null
  br i1 %41, label %176, label %42

42:                                               ; preds = %32
  %43 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  br label %44

44:                                               ; preds = %42, %122
  %45 = phi ptr [ %2, %42 ], [ %124, %122 ]
  %46 = phi i64 [ 0, %42 ], [ %123, %122 ]
  %47 = load ptr, ptr %5, align 8, !tbaa !98
  %48 = getelementptr inbounds %struct.tree_ssa_name, ptr %45, i64 0, i32 3
  %49 = load i32, ptr %48, align 8, !tbaa !69
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i32, ptr %47, i64 %50
  %52 = load i32, ptr %51, align 4, !tbaa !88
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %60, label %54

54:                                               ; preds = %44
  %55 = icmp eq i32 %39, 255
  br i1 %55, label %126, label %56

56:                                               ; preds = %54
  %57 = sext i32 %52 to i64
  %58 = sub i64 %46, %40
  %59 = add i64 %58, %57
  br label %126

60:                                               ; preds = %44
  %61 = getelementptr inbounds %struct.tree_ssa_name, ptr %45, i64 0, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !69
  %63 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %62) #17, !range !76
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %176, label %65

65:                                               ; preds = %60
  %66 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %62) #17
  %67 = icmp eq ptr %66, %45
  br i1 %67, label %68, label %176

68:                                               ; preds = %65
  %69 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %62) #17, !range !92
  %70 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %69) #17, !range !93
  %71 = icmp eq i32 %70, 3
  br i1 %71, label %75, label %72

72:                                               ; preds = %68
  %73 = tail call fastcc zeroext i8 @gimple_assign_cast_p(ptr noundef %62) #17, !range !76
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %72, %68
  %76 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %62) #17
  %77 = load i64, ptr %76, align 8
  %78 = and i64 %77, 65535
  %79 = icmp eq i64 %78, 141
  br i1 %79, label %122, label %80, !llvm.loop !184

80:                                               ; preds = %75, %72
  %81 = trunc i32 %69 to i16
  switch i16 %81, label %95 [
    i16 66, label %82
    i16 63, label %82
  ]

82:                                               ; preds = %80, %80
  %83 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %62) #17
  %84 = load i64, ptr %83, align 8
  %85 = and i64 %84, 65535
  %86 = icmp eq i64 %85, 141
  br i1 %86, label %87, label %95

87:                                               ; preds = %82
  %88 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %62) #17
  %89 = tail call i32 @host_integerp(ptr noundef %88, i32 noundef 1) #16
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %95, label %91

91:                                               ; preds = %87
  %92 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %62) #17
  %93 = tail call i64 @tree_low_cst(ptr noundef %92, i32 noundef 1) #16
  %94 = add i64 %93, %46
  br label %122, !llvm.loop !184

95:                                               ; preds = %80, %87, %82
  br i1 %71, label %96, label %176

96:                                               ; preds = %95
  %97 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %62) #17
  %98 = load i64, ptr %1, align 8
  %99 = trunc i64 %98 to i32
  %100 = and i32 %99, 65535
  %101 = load i64, ptr %97, align 8
  %102 = trunc i64 %101 to i32
  %103 = and i32 %102, 65535
  %104 = icmp eq i32 %100, %103
  br i1 %104, label %105, label %176

105:                                              ; preds = %96
  %106 = icmp eq i32 %100, 41
  br i1 %106, label %107, label %120

107:                                              ; preds = %105
  %108 = tail call ptr @get_base_address(ptr noundef nonnull %1) #16
  %109 = tail call ptr @get_base_address(ptr noundef nonnull %97) #16
  %110 = icmp eq ptr %108, %109
  br i1 %110, label %111, label %176

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct.tree_exp, ptr %97, i64 1
  %113 = load ptr, ptr %112, align 8, !tbaa !69
  %114 = load i64, ptr %113, align 8
  %115 = and i64 %114, 65535
  %116 = icmp eq i64 %115, 31
  br i1 %116, label %117, label %176

117:                                              ; preds = %111
  %118 = load ptr, ptr %43, align 8, !tbaa !69
  %119 = icmp eq ptr %118, %113
  br i1 %119, label %126, label %176

120:                                              ; preds = %105
  %121 = icmp eq ptr %97, %1
  br i1 %121, label %126, label %176

122:                                              ; preds = %75, %91
  %123 = phi i64 [ %94, %91 ], [ %46, %75 ]
  %124 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %62) #17
  %125 = icmp eq ptr %124, null
  br i1 %125, label %126, label %44

126:                                              ; preds = %122, %117, %120, %54, %56
  %127 = phi i64 [ 255, %54 ], [ %59, %56 ], [ %46, %120 ], [ %46, %117 ], [ %123, %122 ]
  br i1 %41, label %176, label %128

128:                                              ; preds = %126
  %129 = add i64 %127, %40
  br label %130

130:                                              ; preds = %128, %172
  %131 = phi ptr [ %174, %172 ], [ %2, %128 ]
  %132 = phi i64 [ %173, %172 ], [ %129, %128 ]
  %133 = load ptr, ptr %5, align 8, !tbaa !98
  %134 = getelementptr inbounds %struct.tree_ssa_name, ptr %131, i64 0, i32 3
  %135 = load i32, ptr %134, align 8, !tbaa !69
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds i32, ptr %133, i64 %136
  %138 = load i32, ptr %137, align 4, !tbaa !88
  %139 = icmp eq i32 %138, -1
  br i1 %139, label %140, label %176

140:                                              ; preds = %130
  %141 = icmp ugt i64 %132, 254
  %142 = trunc i64 %132 to i32
  %143 = select i1 %141, i32 255, i32 %142
  store i32 %143, ptr %137, align 4, !tbaa !88
  %144 = getelementptr inbounds %struct.tree_ssa_name, ptr %131, i64 0, i32 2
  %145 = load ptr, ptr %144, align 8, !tbaa !69
  %146 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %145) #17, !range !92
  %147 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %146) #17, !range !93
  %148 = icmp eq i32 %147, 3
  br i1 %148, label %152, label %149

149:                                              ; preds = %140
  %150 = tail call fastcc zeroext i8 @gimple_assign_cast_p(ptr noundef %145) #17, !range !76
  %151 = icmp eq i8 %150, 0
  br i1 %151, label %157, label %152

152:                                              ; preds = %149, %140
  %153 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %145) #17
  %154 = load i64, ptr %153, align 8
  %155 = and i64 %154, 65535
  %156 = icmp eq i64 %155, 141
  br i1 %156, label %172, label %157, !llvm.loop !185

157:                                              ; preds = %152, %149
  %158 = trunc i32 %146 to i16
  switch i16 %158, label %176 [
    i16 66, label %159
    i16 63, label %159
  ]

159:                                              ; preds = %157, %157
  %160 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %145) #17
  %161 = load i64, ptr %160, align 8
  %162 = and i64 %161, 65535
  %163 = icmp eq i64 %162, 141
  br i1 %163, label %164, label %176

164:                                              ; preds = %159
  %165 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %145) #17
  %166 = tail call i32 @host_integerp(ptr noundef %165, i32 noundef 1) #16
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %176, label %168

168:                                              ; preds = %164
  %169 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %145) #17
  %170 = tail call i64 @tree_low_cst(ptr noundef %169, i32 noundef 1) #16
  %171 = sub i64 %132, %170
  br label %172, !llvm.loop !185

172:                                              ; preds = %152, %168
  %173 = phi i64 [ %171, %168 ], [ %132, %152 ]
  %174 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %145) #17
  %175 = icmp eq ptr %174, null
  br i1 %175, label %176, label %130

176:                                              ; preds = %60, %65, %159, %164, %157, %172, %130, %32, %120, %107, %111, %117, %96, %95, %126
  %177 = phi i64 [ %127, %126 ], [ -1, %95 ], [ -1, %96 ], [ -1, %117 ], [ -1, %111 ], [ -1, %107 ], [ -1, %120 ], [ 0, %32 ], [ %127, %130 ], [ %127, %172 ], [ %127, %157 ], [ %127, %164 ], [ %127, %159 ], [ -1, %65 ], [ -1, %60 ]
  ret i64 %177
}

; Function Attrs: optsize
declare zeroext i8 @dominated_by_p(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @sbitmap_alloc(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @sbitmap_zero(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #8 !prof !40 !PGOFuncName !186 {
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #1 !prof !40 !PGOFuncName !187 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #17, !range !76
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #17
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !36
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_edge_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #1 !prof !40 !PGOFuncName !188 {
  tail call fastcc void @VEC_edge_heap_reserve(ptr noundef %0) #17
  %3 = load ptr, ptr %0, align 8, !tbaa !36
  tail call fastcc void @VEC_edge_base_quick_push(ptr noundef %3, ptr noundef %1) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #1 !prof !40 !PGOFuncName !189 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #17
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #17
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #17
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.14, i32 noundef 738, ptr noundef nonnull @.str.2) #16
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !190
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !190
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #7 !prof !40 !PGOFuncName !192 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !193
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc ptr @VEC_edge_base_pop(ptr nocapture noundef %0) unnamed_addr #12 !prof !40 !PGOFuncName !195 {
  %2 = load i32, ptr %0, align 8, !tbaa !193
  %3 = add i32 %2, -1
  store i32 %3, ptr %0, align 8, !tbaa !193
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !36
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @SET_BIT(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #13 !prof !40 !PGOFuncName !196 {
  %3 = load ptr, ptr %0, align 8, !tbaa !175
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %11

5:                                                ; preds = %2
  %6 = and i32 %1, 63
  %7 = zext nneg i32 %6 to i64
  %8 = shl nuw i64 1, %7
  %9 = lshr i32 %1, 6
  %10 = zext nneg i32 %9 to i64
  br label %25

11:                                               ; preds = %2
  %12 = lshr i32 %1, 6
  %13 = zext nneg i32 %12 to i64
  %14 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %13
  %15 = load i64, ptr %14, align 8, !tbaa !159
  %16 = and i32 %1, 63
  %17 = zext nneg i32 %16 to i64
  %18 = shl nuw i64 1, %17
  %19 = and i64 %15, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %11
  %22 = getelementptr inbounds i8, ptr %3, i64 %13
  %23 = load i8, ptr %22, align 1, !tbaa !69
  %24 = add i8 %23, 1
  store i8 %24, ptr %22, align 1, !tbaa !69
  br label %25

25:                                               ; preds = %5, %11, %21
  %26 = phi i64 [ %10, %5 ], [ %13, %11 ], [ %13, %21 ]
  %27 = phi i64 [ %8, %5 ], [ %18, %11 ], [ %18, %21 ]
  %28 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %26
  %29 = load i64, ptr %28, align 8, !tbaa !159
  %30 = or i64 %29, %27
  store i64 %30, ptr %28, align 8, !tbaa !159
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_edge_heap_free(ptr nocapture noundef %0) unnamed_addr #14 !prof !40 !PGOFuncName !197 {
  %2 = load ptr, ptr %0, align 8, !tbaa !36
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #17
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !36
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #1 !prof !40 !PGOFuncName !198 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #17
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #17
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %8) #17
  %10 = icmp eq i32 %9, %0
  %11 = zext i1 %10 to i8
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #1 !prof !40 !PGOFuncName !199 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #17
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #17
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #17
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #1 !prof !40 !PGOFuncName !200 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.14, i32 noundef 687, ptr noundef nonnull @.str.2) #16
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !36
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #7 !prof !40 !PGOFuncName !201 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !36
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_edge_heap_reserve(ptr nocapture noundef %0) unnamed_addr #1 !prof !40 !PGOFuncName !202 {
  %2 = load ptr, ptr %0, align 8, !tbaa !36
  %3 = tail call fastcc i32 @VEC_edge_base_space(ptr noundef %2) #17
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef 1) #16
  store ptr %6, ptr %0, align 8, !tbaa !36
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_edge_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #12 !prof !40 !PGOFuncName !203 {
  %3 = load i32, ptr %0, align 8, !tbaa !193
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !193
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !36
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_space(ptr noundef readonly %0) unnamed_addr #7 !prof !40 !PGOFuncName !204 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !205
  %6 = load i32, ptr %0, align 8, !tbaa !193
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_tree_base_length(ptr noundef readonly %0) unnamed_addr #7 !prof !40 !PGOFuncName !206 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !207
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @gimple_assign_cast_p(ptr noundef %0) unnamed_addr #1 !prof !40 !PGOFuncName !209 {
  %2 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %0) #17, !range !76
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #17, !range !92
  %6 = icmp eq i32 %5, 113
  %7 = and i32 %5, 65533
  %8 = icmp eq i32 %7, 116
  %9 = or i1 %6, %8
  %10 = icmp eq i32 %5, 77
  %11 = or i1 %10, %9
  %12 = zext i1 %11 to i8
  br label %13

13:                                               ; preds = %1, %4
  %14 = phi i8 [ %12, %4 ], [ 0, %1 ]
  ret i8 %14
}

; Function Attrs: optsize
declare i32 @host_integerp(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i64 @tree_low_cst(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @get_base_address(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #1 !prof !40 !PGOFuncName !210 {
  %3 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %1) #17
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #1 !prof !40 !PGOFuncName !211 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !69
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 3103, ptr noundef nonnull @.str.2) #16
  br label %7

7:                                                ; preds = %2, %6
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %8
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_expr_code(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !40 !PGOFuncName !212 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #17, !range !93
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
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1446, ptr noundef nonnull @.str.2) #16
  br label %8

8:                                                ; preds = %1, %7, %4
  %9 = phi i32 [ %6, %4 ], [ 0, %7 ], [ 59, %1 ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_num_ops(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !40 !PGOFuncName !213 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !69
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @va_list_counter_op(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4) unnamed_addr #1 !prof !40 !PGOFuncName !214 {
  %6 = getelementptr inbounds %struct.stdarg_info, ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !85
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %41

9:                                                ; preds = %5
  store i32 0, ptr %6, align 8, !tbaa !85
  %10 = getelementptr inbounds %struct.stdarg_info, ptr %0, i64 0, i32 4
  %11 = load i32, ptr %10, align 4, !tbaa !77
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %21

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.stdarg_info, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !86
  %16 = getelementptr inbounds %struct.stdarg_info, ptr %0, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !78
  %18 = tail call fastcc zeroext i8 @reachable_at_most_once(ptr noundef %15, ptr noundef %17) #17, !range !76
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %13
  store i32 1, ptr %6, align 8, !tbaa !85
  br label %21

21:                                               ; preds = %20, %13, %9
  %22 = load ptr, ptr @dump_file, align 8, !tbaa !36
  %23 = icmp eq ptr %22, null
  br i1 %23, label %41, label %24

24:                                               ; preds = %21
  %25 = load i32, ptr @dump_flags, align 4, !tbaa !88
  %26 = and i32 %25, 8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %41, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.stdarg_info, ptr %0, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !86
  %31 = getelementptr inbounds %struct.basic_block_def, ptr %30, i64 0, i32 9
  %32 = load i32, ptr %31, align 8, !tbaa !126
  %33 = load i32, ptr %6, align 8, !tbaa !85
  %34 = icmp eq i32 %33, 0
  %35 = select i1 %34, ptr @.str.13, ptr @.str.12
  %36 = getelementptr inbounds %struct.stdarg_info, ptr %0, i64 0, i32 7
  %37 = load ptr, ptr %36, align 8, !tbaa !78
  %38 = getelementptr inbounds %struct.basic_block_def, ptr %37, i64 0, i32 9
  %39 = load i32, ptr %38, align 8, !tbaa !126
  %40 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %22, ptr noundef nonnull @.str.11, i32 noundef %32, ptr noundef nonnull %35, i32 noundef %39) #17
  br label %41

41:                                               ; preds = %21, %24, %28, %5
  %42 = icmp eq i8 %4, 0
  %43 = load i32, ptr %6, align 8, !tbaa !85
  %44 = icmp eq i32 %43, 0
  br i1 %42, label %75, label %45

45:                                               ; preds = %41
  br i1 %44, label %76, label %46

46:                                               ; preds = %45
  %47 = tail call fastcc i64 @va_list_counter_bump(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) #17
  %48 = add i64 %47, -1
  %49 = icmp ult i64 %48, -2
  br i1 %49, label %50, label %76

50:                                               ; preds = %46
  %51 = icmp eq i8 %3, 0
  %52 = load ptr, ptr @cfun, align 8, !tbaa !36
  %53 = getelementptr inbounds %struct.function, ptr %52, i64 0, i32 20
  %54 = load i32, ptr %53, align 8
  br i1 %51, label %64, label %55

55:                                               ; preds = %50
  %56 = and i32 %54, 255
  %57 = zext nneg i32 %56 to i64
  %58 = add i64 %47, %57
  %59 = icmp ult i64 %58, 255
  br i1 %59, label %60, label %81

60:                                               ; preds = %55
  %61 = trunc i64 %58 to i32
  %62 = and i32 %54, -256
  %63 = or disjoint i32 %62, %61
  store i32 %63, ptr %53, align 8
  br label %91

64:                                               ; preds = %50
  %65 = lshr i32 %54, 8
  %66 = and i32 %65, 255
  %67 = zext nneg i32 %66 to i64
  %68 = add i64 %47, %67
  %69 = icmp ult i64 %68, 255
  br i1 %69, label %70, label %86

70:                                               ; preds = %64
  %71 = trunc i64 %68 to i32
  %72 = shl nuw nsw i32 %71, 8
  %73 = and i32 %54, -65281
  %74 = or disjoint i32 %72, %73
  store i32 %74, ptr %53, align 8
  br label %91

75:                                               ; preds = %41
  br i1 %44, label %76, label %91

76:                                               ; preds = %45, %46, %75
  %77 = icmp eq i8 %3, 0
  %78 = load ptr, ptr @cfun, align 8, !tbaa !36
  %79 = getelementptr inbounds %struct.function, ptr %78, i64 0, i32 20
  %80 = load i32, ptr %79, align 8
  br i1 %77, label %86, label %81

81:                                               ; preds = %76, %55
  %82 = phi i32 [ %54, %55 ], [ %80, %76 ]
  %83 = phi ptr [ %52, %55 ], [ %78, %76 ]
  %84 = getelementptr inbounds %struct.function, ptr %83, i64 0, i32 20
  %85 = or i32 %82, 255
  store i32 %85, ptr %84, align 8
  br label %91

86:                                               ; preds = %76, %64
  %87 = phi i32 [ %54, %64 ], [ %80, %76 ]
  %88 = phi ptr [ %52, %64 ], [ %78, %76 ]
  %89 = getelementptr inbounds %struct.function, ptr %88, i64 0, i32 20
  %90 = or i32 %87, 65280
  store i32 %90, ptr %89, align 8
  br label %91

91:                                               ; preds = %75, %86, %81, %70, %60
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @op_iter_init_tree(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !prof !40 !PGOFuncName !215 {
  tail call fastcc void @op_iter_init(ptr noundef %0, ptr noundef %1) #17
  %3 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 1, ptr %3, align 4, !tbaa !120
  %4 = tail call fastcc ptr @op_iter_next_tree(ptr noundef %0) #17
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @op_iter_next_tree(ptr nocapture noundef %0) unnamed_addr #5 !prof !40 !PGOFuncName !216 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !130
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.use_optype_d, ptr %3, i64 0, i32 1
  %7 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %6) #17
  %8 = load ptr, ptr %3, align 8, !tbaa !131
  store ptr %8, ptr %2, align 8, !tbaa !130
  br label %19

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !217
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.def_optype_d, ptr %11, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !218
  %16 = tail call fastcc ptr @get_def_from_ptr(ptr noundef %15) #17
  %17 = load ptr, ptr %11, align 8, !tbaa !220
  store ptr %17, ptr %10, align 8, !tbaa !217
  br label %19

18:                                               ; preds = %9
  store i8 1, ptr %0, align 8, !tbaa !116
  br label %19

19:                                               ; preds = %18, %13, %5
  %20 = phi ptr [ %7, %5 ], [ %16, %13 ], [ null, %18 ]
  ret ptr %20
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @op_iter_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #12 !prof !40 !PGOFuncName !221 {
  %3 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr null, ptr %3, align 8, !tbaa !217
  %4 = tail call fastcc ptr @gimple_use_ops(ptr noundef %1) #17
  %5 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr %4, ptr %5, align 8, !tbaa !130
  store i8 0, ptr %0, align 8, !tbaa !116
  %6 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_use_ops(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !40 !PGOFuncName !222 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #17, !range !76
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !69
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind }
attributes #16 = { nounwind optsize }
attributes #17 = { optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

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
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 38}
!35 = !{!"tree-stdarg.c:gate_optimize_stdarg"}
!36 = !{!37, !37, i64 0}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"function_entry_count", i64 0}
!41 = !{!"tree-stdarg.c:execute_optimize_stdarg"}
!42 = !{!43, !37, i64 0}
!43 = !{!"stdarg_info", !37, i64 0, !37, i64 8, !37, i64 16, !44, i64 24, !44, i64 28, !38, i64 32, !37, i64 40, !37, i64 48, !37, i64 56}
!44 = !{!"int", !38, i64 0}
!45 = !{!43, !37, i64 8}
!46 = !{!47, !37, i64 176}
!47 = !{!"lang_hooks", !37, i64 0, !48, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !37, i64 152, !37, i64 160, !37, i64 168, !37, i64 176, !37, i64 184, !37, i64 192, !37, i64 200, !37, i64 208, !37, i64 216, !37, i64 224, !37, i64 232, !49, i64 240, !50, i64 248, !51, i64 256, !52, i64 272, !53, i64 432, !54, i64 560, !37, i64 584, !37, i64 592, !37, i64 600, !37, i64 608, !37, i64 616, !37, i64 624, !37, i64 632, !37, i64 640, !37, i64 648, !37, i64 656, !37, i64 664, !38, i64 672}
!48 = !{!"long", !38, i64 0}
!49 = !{!"lang_hooks_for_tree_inlining", !37, i64 0}
!50 = !{!"lang_hooks_for_callgraph", !37, i64 0}
!51 = !{!"lang_hooks_for_tree_dump", !37, i64 0, !37, i64 8}
!52 = !{!"lang_hooks_for_decls", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !37, i64 152}
!53 = !{!"lang_hooks_for_types", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !38, i64 120}
!54 = !{!"lang_hooks_for_lto", !37, i64 0, !37, i64 8, !37, i64 16}
!55 = !{!56, !37, i64 1328}
!56 = !{!"gcc_target", !57, i64 0, !59, i64 368, !60, i64 664, !44, i64 744, !37, i64 752, !37, i64 760, !37, i64 768, !37, i64 776, !37, i64 784, !37, i64 792, !37, i64 800, !37, i64 808, !37, i64 816, !37, i64 824, !37, i64 832, !37, i64 840, !37, i64 848, !37, i64 856, !37, i64 864, !37, i64 872, !37, i64 880, !37, i64 888, !37, i64 896, !37, i64 904, !37, i64 912, !37, i64 920, !37, i64 928, !37, i64 936, !37, i64 944, !37, i64 952, !37, i64 960, !37, i64 968, !37, i64 976, !37, i64 984, !37, i64 992, !37, i64 1000, !37, i64 1008, !37, i64 1016, !37, i64 1024, !37, i64 1032, !37, i64 1040, !37, i64 1048, !37, i64 1056, !48, i64 1064, !48, i64 1072, !37, i64 1080, !37, i64 1088, !37, i64 1096, !37, i64 1104, !37, i64 1112, !37, i64 1120, !37, i64 1128, !37, i64 1136, !37, i64 1144, !37, i64 1152, !37, i64 1160, !37, i64 1168, !61, i64 1176, !37, i64 1232, !37, i64 1240, !37, i64 1248, !37, i64 1256, !37, i64 1264, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !37, i64 1304, !37, i64 1312, !37, i64 1320, !37, i64 1328, !37, i64 1336, !37, i64 1344, !37, i64 1352, !37, i64 1360, !37, i64 1368, !37, i64 1376, !37, i64 1384, !37, i64 1392, !37, i64 1400, !37, i64 1408, !37, i64 1416, !37, i64 1424, !37, i64 1432, !37, i64 1440, !37, i64 1448, !37, i64 1456, !48, i64 1464, !62, i64 1472, !37, i64 1664, !37, i64 1672, !37, i64 1680, !37, i64 1688, !37, i64 1696, !37, i64 1704, !37, i64 1712, !37, i64 1720, !37, i64 1728, !37, i64 1736, !37, i64 1744, !37, i64 1752, !37, i64 1760, !37, i64 1768, !37, i64 1776, !63, i64 1784, !64, i64 1792, !65, i64 1896, !66, i64 1968, !37, i64 2016, !38, i64 2024, !38, i64 2025, !38, i64 2026, !38, i64 2027, !38, i64 2028, !38, i64 2029, !38, i64 2030, !38, i64 2031, !38, i64 2032, !38, i64 2033, !38, i64 2034, !38, i64 2035}
!57 = !{!"asm_out", !37, i64 0, !37, i64 8, !37, i64 16, !58, i64 24, !58, i64 56, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !37, i64 152, !37, i64 160, !37, i64 168, !37, i64 176, !37, i64 184, !37, i64 192, !37, i64 200, !37, i64 208, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !37, i64 280, !37, i64 288, !37, i64 296, !37, i64 304, !37, i64 312, !37, i64 320, !37, i64 328, !37, i64 336, !37, i64 344, !37, i64 352, !37, i64 360}
!58 = !{!"asm_int_op", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24}
!59 = !{!"sched", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !37, i64 152, !37, i64 160, !37, i64 168, !37, i64 176, !37, i64 184, !37, i64 192, !37, i64 200, !37, i64 208, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !37, i64 280, !37, i64 288}
!60 = !{!"vectorize", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72}
!61 = !{!"addr_space", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48}
!62 = !{!"calls", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !37, i64 152, !37, i64 160, !37, i64 168, !37, i64 176, !37, i64 184}
!63 = !{!"c", !37, i64 0}
!64 = !{!"cxx", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !37, i64 88, !37, i64 96}
!65 = !{!"emutls", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !38, i64 64, !38, i64 65}
!66 = !{!"target_option_hooks", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40}
!67 = !{!68, !37, i64 48}
!68 = !{!"function", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !37, i64 88, !37, i64 96, !44, i64 104, !44, i64 108, !44, i64 112, !44, i64 116, !44, i64 120, !44, i64 124, !37, i64 128, !44, i64 136, !44, i64 137, !44, i64 138, !44, i64 138, !44, i64 138, !44, i64 138, !44, i64 138, !44, i64 138, !44, i64 138, !44, i64 139, !44, i64 139, !44, i64 139, !44, i64 139, !44, i64 139, !44, i64 139, !44, i64 139}
!69 = !{!38, !38, i64 0}
!70 = !{!68, !37, i64 8}
!71 = !{!72, !37, i64 0}
!72 = !{!"control_flow_graph", !37, i64 0, !37, i64 8, !37, i64 16, !44, i64 24, !44, i64 28, !44, i64 32, !37, i64 40, !44, i64 48, !38, i64 52, !38, i64 60, !44, i64 68, !44, i64 72}
!73 = !{!74, !37, i64 56}
!74 = !{!"basic_block_def", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !38, i64 32, !37, i64 48, !37, i64 56, !38, i64 64, !48, i64 72, !44, i64 80, !44, i64 84, !44, i64 88, !44, i64 92, !44, i64 96}
!75 = !{!72, !37, i64 8}
!76 = !{i8 0, i8 2}
!77 = !{!43, !44, i64 28}
!78 = !{!43, !37, i64 48}
!79 = !{!43, !37, i64 56}
!80 = distinct !{!80, !81}
!81 = !{!"llvm.loop.mustprogress"}
!82 = !{!83, !37, i64 24}
!83 = !{!"walk_stmt_info", !84, i64 0, !37, i64 24, !37, i64 32, !38, i64 40, !38, i64 41, !38, i64 42, !38, i64 43, !37, i64 48}
!84 = !{!"", !37, i64 0, !37, i64 8, !37, i64 16}
!85 = !{!43, !44, i64 24}
!86 = !{!43, !37, i64 16}
!87 = !{!43, !38, i64 32}
!88 = !{!44, !44, i64 0}
!89 = distinct !{!89, !81}
!90 = distinct !{!90, !81}
!91 = !{i64 0, i64 8, !36, i64 8, i64 8, !36, i64 16, i64 8, !36}
!92 = !{i32 0, i32 65536}
!93 = !{i32 0, i32 256}
!94 = !{!56, !37, i64 1424}
!95 = distinct !{!95, !81}
!96 = !{!97, !37, i64 0}
!97 = !{!"bitmap_head_def", !37, i64 0, !37, i64 8, !44, i64 16, !37, i64 24}
!98 = !{!43, !37, i64 40}
!99 = !{!"tree-stdarg.c:gsi_start_bb"}
!100 = !{!84, !37, i64 0}
!101 = !{!84, !37, i64 8}
!102 = !{!84, !37, i64 16}
!103 = !{!"tree-stdarg.c:gsi_end_p"}
!104 = !{!"tree-stdarg.c:gsi_stmt"}
!105 = !{!106, !37, i64 0}
!106 = !{!"gimple_seq_node_d", !37, i64 0, !37, i64 8, !37, i64 16}
!107 = !{!"tree-stdarg.c:is_gimple_call"}
!108 = !{!"tree-stdarg.c:gimple_call_fndecl"}
!109 = !{!"tree-stdarg.c:gimple_call_arg"}
!110 = !{!"tree-stdarg.c:is_global_var"}
!111 = !{!"tree-stdarg.c:gsi_next"}
!112 = !{!106, !37, i64 16}
!113 = !{!"tree-stdarg.c:get_def_from_ptr"}
!114 = !{!"tree-stdarg.c:gimple_phi_result_ptr"}
!115 = !{!"tree-stdarg.c:op_iter_init_phiuse"}
!116 = !{!117, !38, i64 0}
!117 = !{!"ssa_operand_iterator_d", !38, i64 0, !44, i64 4, !37, i64 8, !37, i64 16, !44, i64 24, !44, i64 28, !37, i64 32}
!118 = !{!117, !37, i64 32}
!119 = !{!117, !44, i64 28}
!120 = !{!117, !44, i64 4}
!121 = !{!"tree-stdarg.c:op_iter_done"}
!122 = !{!"tree-stdarg.c:get_use_from_ptr"}
!123 = !{!124, !37, i64 24}
!124 = !{!"ssa_use_operand_d", !37, i64 0, !37, i64 8, !38, i64 16, !37, i64 24}
!125 = !{!"tree-stdarg.c:va_list_ptr_read"}
!126 = !{!74, !44, i64 80}
!127 = !{!"tree-stdarg.c:va_list_ptr_write"}
!128 = !{!"tree-stdarg.c:check_va_list_escapes"}
!129 = !{!"tree-stdarg.c:op_iter_next_use"}
!130 = !{!117, !37, i64 16}
!131 = !{!132, !37, i64 0}
!132 = !{!"use_optype_d", !37, i64 0, !124, i64 8}
!133 = !{!117, !44, i64 24}
!134 = !{!"tree-stdarg.c:is_gimple_assign"}
!135 = !{!"tree-stdarg.c:gimple_assign_lhs"}
!136 = !{!"tree-stdarg.c:gimple_assign_rhs1"}
!137 = !{!"tree-stdarg.c:get_gimple_rhs_class"}
!138 = !{!"tree-stdarg.c:gimple_assign_rhs_code"}
!139 = !{!"tree-stdarg.c:gimple_assign_rhs2"}
!140 = !{!"tree-stdarg.c:va_list_counter_struct_op"}
!141 = !{!"tree-stdarg.c:is_gimple_debug"}
!142 = !{!"tree-stdarg.c:find_va_list_reference"}
!143 = !{!"tree-stdarg.c:check_all_va_list_escapes"}
!144 = distinct !{!144, !81}
!145 = distinct !{!145, !81}
!146 = distinct !{!146, !81}
!147 = !{!"tree-stdarg.c:bb_seq"}
!148 = !{!74, !44, i64 96}
!149 = !{!150, !37, i64 0}
!150 = !{!"gimple_bb_info", !37, i64 0, !37, i64 8}
!151 = !{!"tree-stdarg.c:gimple_seq_first"}
!152 = !{!153, !37, i64 0}
!153 = !{!"gimple_seq_d", !37, i64 0, !37, i64 8, !37, i64 16}
!154 = !{!"tree-stdarg.c:gimple_code"}
!155 = !{!"tree-stdarg.c:gimple_call_fn"}
!156 = !{!"tree-stdarg.c:gimple_op"}
!157 = !{!"tree-stdarg.c:gimple_has_ops"}
!158 = !{!"tree-stdarg.c:gimple_ops"}
!159 = !{!48, !48, i64 0}
!160 = !{!"tree-stdarg.c:gimple_statement_structure"}
!161 = !{!"tree-stdarg.c:gss_for_code"}
!162 = !{!"tree-stdarg.c:gimple_phi_result"}
!163 = !{!"tree-stdarg.c:clear_and_done_ssa_iter"}
!164 = !{!"tree-stdarg.c:gimple_phi_num_args"}
!165 = !{!"tree-stdarg.c:reachable_at_most_once"}
!166 = !{!72, !44, i64 32}
!167 = !{i64 0, i64 4, !88, i64 8, i64 8, !36}
!168 = !{i64 0, i64 8, !36}
!169 = distinct !{!169, !81}
!170 = !{!171, !37, i64 0}
!171 = !{!"edge_def", !37, i64 0, !37, i64 8, !38, i64 16, !37, i64 24, !37, i64 32, !44, i64 40, !44, i64 44, !44, i64 48, !44, i64 52, !48, i64 56}
!172 = !{!171, !44, i64 48}
!173 = distinct !{!173, !81}
!174 = distinct !{!174, !81}
!175 = !{!176, !37, i64 0}
!176 = !{!"simple_bitmap_def", !37, i64 0, !44, i64 8, !44, i64 12, !38, i64 16}
!177 = !{!"tree-stdarg.c:va_list_counter_bump"}
!178 = !{!68, !37, i64 24}
!179 = !{!180, !37, i64 16}
!180 = !{!"gimple_df", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !181, i64 32, !181, i64 48, !37, i64 64, !37, i64 72, !37, i64 80, !37, i64 88, !44, i64 96, !182, i64 104}
!181 = !{!"pt_solution", !44, i64 0, !44, i64 0, !44, i64 0, !44, i64 0, !44, i64 0, !44, i64 0, !37, i64 8}
!182 = !{!"ssa_operands", !37, i64 0, !44, i64 8, !44, i64 12, !38, i64 16, !37, i64 24, !37, i64 32}
!183 = distinct !{!183, !81}
!184 = distinct !{!184, !81}
!185 = distinct !{!185, !81}
!186 = !{!"tree-stdarg.c:ei_start_1"}
!187 = !{!"tree-stdarg.c:ei_cond"}
!188 = !{!"tree-stdarg.c:VEC_edge_heap_safe_push"}
!189 = !{!"tree-stdarg.c:ei_next"}
!190 = !{!191, !44, i64 0}
!191 = !{!"", !44, i64 0, !37, i64 8}
!192 = !{!"tree-stdarg.c:VEC_edge_base_length"}
!193 = !{!194, !44, i64 0}
!194 = !{!"VEC_edge_base", !44, i64 0, !44, i64 4, !38, i64 8}
!195 = !{!"tree-stdarg.c:VEC_edge_base_pop"}
!196 = !{!"tree-stdarg.c:SET_BIT"}
!197 = !{!"tree-stdarg.c:VEC_edge_heap_free"}
!198 = !{!"tree-stdarg.c:ei_end_p"}
!199 = !{!"tree-stdarg.c:ei_edge"}
!200 = !{!"tree-stdarg.c:ei_container"}
!201 = !{!"tree-stdarg.c:VEC_edge_base_index"}
!202 = !{!"tree-stdarg.c:VEC_edge_heap_reserve"}
!203 = !{!"tree-stdarg.c:VEC_edge_base_quick_push"}
!204 = !{!"tree-stdarg.c:VEC_edge_base_space"}
!205 = !{!194, !44, i64 4}
!206 = !{!"tree-stdarg.c:VEC_tree_base_length"}
!207 = !{!208, !44, i64 0}
!208 = !{!"VEC_tree_base", !44, i64 0, !44, i64 4, !38, i64 8}
!209 = !{!"tree-stdarg.c:gimple_assign_cast_p"}
!210 = !{!"tree-stdarg.c:gimple_phi_arg_imm_use_ptr"}
!211 = !{!"tree-stdarg.c:gimple_phi_arg"}
!212 = !{!"tree-stdarg.c:gimple_expr_code"}
!213 = !{!"tree-stdarg.c:gimple_num_ops"}
!214 = !{!"tree-stdarg.c:va_list_counter_op"}
!215 = !{!"tree-stdarg.c:op_iter_init_tree"}
!216 = !{!"tree-stdarg.c:op_iter_next_tree"}
!217 = !{!117, !37, i64 8}
!218 = !{!219, !37, i64 8}
!219 = !{!"def_optype_d", !37, i64 0, !37, i64 8}
!220 = !{!219, !37, i64 0}
!221 = !{!"tree-stdarg.c:op_iter_init"}
!222 = !{!"tree-stdarg.c:gimple_use_ops"}

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

@pass_stdarg = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str, ptr @gate_optimize_stdarg, ptr @execute_optimize_stdarg, ptr null, ptr null, i32 0, i32 0, i32 40, i32 0, i32 0, i32 0, i32 1 } }, align 8
@.str = private unnamed_addr constant [7 x i8] c"stdarg\00", align 1
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
define internal zeroext i8 @gate_optimize_stdarg() #0 !prof !187 !PGOFuncName !188 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !189
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 20
  %3 = load i32, ptr %2, align 8
  %4 = lshr i32 %3, 22
  %5 = trunc i32 %4 to i8
  %6 = and i8 %5, 1
  ret i8 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @execute_optimize_stdarg() #1 !prof !193 !PGOFuncName !194 {
  %1 = alloca %struct.stdarg_info, align 8
  %2 = alloca %struct.walk_stmt_info, align 8
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = alloca %struct.ssa_operand_iterator_d, align 8
  %6 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %1) #15
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #15
  %7 = load ptr, ptr @cfun, align 8, !tbaa !189
  %8 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 20
  %9 = load i32, ptr %8, align 8
  %10 = and i32 %9, -65536
  store i32 %10, ptr %8, align 8
  %11 = getelementptr inbounds i8, ptr %1, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %11, i8 0, i64 48, i1 false)
  %12 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #16
  store ptr %12, ptr %1, align 8, !tbaa !195
  %13 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #16
  %14 = getelementptr inbounds %struct.stdarg_info, ptr %1, i64 0, i32 1
  store ptr %13, ptr %14, align 8, !tbaa !198
  %15 = load ptr, ptr @dump_file, align 8, !tbaa !189
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17, !prof !199

17:                                               ; preds = %0
  %18 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 22), align 8, !tbaa !200
  %19 = load ptr, ptr @current_function_decl, align 8, !tbaa !189
  %20 = tail call ptr %18(ptr noundef %19, i32 noundef 2) #16
  br label %21

21:                                               ; preds = %17, %0
  %22 = phi ptr [ %20, %17 ], [ null, %0 ]
  %23 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 70), align 8, !tbaa !209
  %24 = load ptr, ptr @cfun, align 8, !tbaa !189
  %25 = getelementptr inbounds %struct.function, ptr %24, i64 0, i32 6
  %26 = load ptr, ptr %25, align 8, !tbaa !221
  %27 = tail call ptr %23(ptr noundef %26) #16
  %28 = load i64, ptr %27, align 8
  %29 = trunc i64 %28 to i16
  switch i16 %29, label %38 [
    i16 10, label %30
    i16 12, label %30
  ], !prof !223

30:                                               ; preds = %21, %21
  %31 = getelementptr inbounds %struct.tree_common, ptr %27, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !224
  %33 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !189
  %34 = icmp eq ptr %32, %33
  br i1 %34, label %38, label %35, !prof !225

35:                                               ; preds = %30
  %36 = load ptr, ptr @integer_types, align 16, !tbaa !189
  %37 = icmp eq ptr %32, %36
  br label %38

38:                                               ; preds = %21, %30, %35
  %39 = phi i1 [ true, %30 ], [ %37, %35 ], [ false, %21 ]
  %40 = tail call zeroext i8 @is_gimple_reg_type(ptr noundef nonnull %27) #16
  %41 = zext i1 %39 to i8
  %42 = icmp eq i8 %40, %41
  br i1 %42, label %44, label %43, !prof !199

43:                                               ; preds = %38
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 612, ptr noundef nonnull @.str.2) #16
  br label %44

44:                                               ; preds = %38, %43
  %45 = load ptr, ptr @cfun, align 8, !tbaa !189
  %46 = getelementptr inbounds %struct.function, ptr %45, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !226
  %48 = load ptr, ptr %47, align 8, !tbaa !227
  %49 = getelementptr inbounds %struct.stdarg_info, ptr %1, i64 0, i32 4
  br label %50

50:                                               ; preds = %136, %44
  %51 = phi ptr [ %48, %44 ], [ %53, %136 ]
  %52 = getelementptr inbounds %struct.basic_block_def, ptr %51, i64 0, i32 6
  %53 = load ptr, ptr %52, align 8, !tbaa !229
  %54 = load ptr, ptr @cfun, align 8, !tbaa !189
  %55 = getelementptr inbounds %struct.function, ptr %54, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !226
  %57 = getelementptr inbounds %struct.control_flow_graph, ptr %56, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !231
  %59 = icmp eq ptr %53, %58
  br i1 %59, label %139, label %60, !prof !232

60:                                               ; preds = %50
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %53) #17
  %61 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #17, !range !233
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %63, label %136, !prof !234

63:                                               ; preds = %60
  %64 = load ptr, ptr %1, align 8
  %65 = load i32, ptr %49, align 4, !tbaa !235
  br label %66

66:                                               ; preds = %63, %131
  %67 = phi i32 [ %65, %63 ], [ %132, %131 ]
  %68 = phi i8 [ 0, %63 ], [ %133, %131 ]
  %69 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #17
  %70 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %69) #17, !range !233
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %131, label %72, !prof !236

72:                                               ; preds = %66
  %73 = tail call fastcc ptr @gimple_call_fndecl(ptr noundef %69) #17
  %74 = icmp eq ptr %73, null
  br i1 %74, label %131, label %75, !prof !237

75:                                               ; preds = %72
  %76 = getelementptr inbounds %struct.tree_function_decl, ptr %73, i64 0, i32 5
  %77 = load i32, ptr %76, align 8
  %78 = and i32 %77, 6144
  %79 = icmp eq i32 %78, 6144
  br i1 %79, label %80, label %131, !prof !238

80:                                               ; preds = %75
  %81 = and i32 %77, 2047
  switch i32 %81, label %82 [
    i32 515, label %83
    i32 505, label %131
    i32 418, label %131
    i32 492, label %131
  ], !prof !239

82:                                               ; preds = %80
  br label %131

83:                                               ; preds = %80
  %84 = add nsw i32 %67, 1
  store i32 %84, ptr %49, align 4, !tbaa !235
  %85 = tail call fastcc ptr @gimple_call_arg(ptr noundef %69) #17
  %86 = load i64, ptr %85, align 8
  %87 = and i64 %86, 65535
  %88 = icmp eq i64 %87, 121
  br i1 %88, label %89, label %130, !prof !240

89:                                               ; preds = %83
  %90 = getelementptr inbounds %struct.tree_exp, ptr %85, i64 0, i32 3
  %91 = load ptr, ptr %90, align 8, !tbaa !224
  %92 = load i64, ptr %91, align 8
  %93 = and i64 %92, 65535
  %94 = icmp eq i64 %93, 45
  br i1 %94, label %95, label %103, !prof !241

95:                                               ; preds = %89
  %96 = getelementptr inbounds %struct.tree_exp, ptr %91, i64 1
  %97 = load ptr, ptr %96, align 8, !tbaa !224
  %98 = tail call i32 @integer_zerop(ptr noundef %97) #16
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %130, label %100

100:                                              ; preds = %95
  %101 = getelementptr inbounds %struct.tree_exp, ptr %91, i64 0, i32 3
  %102 = load ptr, ptr %101, align 8, !tbaa !224
  br label %103

103:                                              ; preds = %100, %89
  %104 = phi ptr [ %102, %100 ], [ %91, %89 ]
  %105 = getelementptr inbounds %struct.tree_common, ptr %104, i64 0, i32 2
  %106 = load ptr, ptr %105, align 8, !tbaa !224
  %107 = getelementptr inbounds %struct.tree_type, ptr %106, i64 0, i32 16
  %108 = load ptr, ptr %107, align 8, !tbaa !224
  %109 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 70), align 8, !tbaa !209
  %110 = load ptr, ptr @cfun, align 8, !tbaa !189
  %111 = getelementptr inbounds %struct.function, ptr %110, i64 0, i32 6
  %112 = load ptr, ptr %111, align 8, !tbaa !221
  %113 = tail call ptr %109(ptr noundef %112) #16
  %114 = getelementptr inbounds %struct.tree_type, ptr %113, i64 0, i32 16
  %115 = load ptr, ptr %114, align 8, !tbaa !224
  %116 = icmp eq ptr %108, %115
  br i1 %116, label %117, label %130, !prof !240

117:                                              ; preds = %103
  %118 = load i64, ptr %104, align 8
  %119 = and i64 %118, 65535
  %120 = icmp eq i64 %119, 32
  br i1 %120, label %121, label %130, !prof !240

121:                                              ; preds = %117
  %122 = tail call fastcc zeroext i8 @is_global_var(ptr noundef nonnull %104) #17, !range !233
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %124, label %130, !prof !240

124:                                              ; preds = %121
  %125 = getelementptr inbounds %struct.stdarg_info, ptr %1, i64 0, i32 7
  %126 = getelementptr inbounds %struct.stdarg_info, ptr %1, i64 0, i32 8
  %127 = getelementptr inbounds %struct.tree_decl_minimal, ptr %104, i64 0, i32 2
  %128 = load i32, ptr %127, align 4, !tbaa !224
  %129 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %64, i32 noundef %128) #16
  store ptr %53, ptr %125, align 8, !tbaa !242
  store ptr %104, ptr %126, align 8, !tbaa !243
  br label %131

130:                                              ; preds = %83, %95, %117, %103, %121
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  br label %334

131:                                              ; preds = %82, %124, %66, %75, %72, %80, %80, %80
  %132 = phi i32 [ %67, %80 ], [ %67, %80 ], [ %67, %80 ], [ %67, %72 ], [ %67, %75 ], [ %67, %66 ], [ %84, %124 ], [ %67, %82 ]
  %133 = phi i8 [ 1, %80 ], [ 1, %80 ], [ 1, %80 ], [ %68, %72 ], [ %68, %75 ], [ %68, %66 ], [ %68, %124 ], [ %68, %82 ]
  call fastcc void @gsi_next(ptr noundef nonnull %3) #17
  %134 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #17, !range !233
  %135 = icmp eq i8 %134, 0
  br i1 %135, label %66, label %136, !prof !244, !llvm.loop !245

136:                                              ; preds = %131, %60
  %137 = phi i8 [ 0, %60 ], [ %133, %131 ]
  %138 = icmp eq i8 %137, 0
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  br i1 %138, label %50, label %334

139:                                              ; preds = %50
  %140 = load i32, ptr %49, align 4
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %341, label %142, !prof !247

142:                                              ; preds = %139
  %143 = icmp sgt i32 %140, 1
  %144 = and i1 %39, %143
  br i1 %144, label %334, label %145, !prof !248

145:                                              ; preds = %142
  %146 = xor i1 %39, true
  %147 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 45), align 8
  %148 = icmp eq ptr %147, null
  %149 = select i1 %146, i1 %148, i1 false
  %150 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 46), align 16
  %151 = icmp eq ptr %150, null
  %152 = select i1 %149, i1 %151, i1 false
  br i1 %152, label %334, label %153, !prof !249

153:                                              ; preds = %145
  br i1 %39, label %154, label %158, !prof !250

154:                                              ; preds = %153
  %155 = getelementptr inbounds %struct.function, ptr %54, i64 0, i32 20
  %156 = load i32, ptr %155, align 8
  %157 = or i32 %156, 65280
  store i32 %157, ptr %155, align 8
  br label %158

158:                                              ; preds = %154, %153
  tail call void @calculate_dominance_info(i32 noundef 1) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, i8 0, i64 56, i1 false)
  %159 = load ptr, ptr %1, align 8, !tbaa !195
  %160 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 1
  store ptr %159, ptr %160, align 8, !tbaa !251
  %161 = load ptr, ptr @cfun, align 8, !tbaa !189
  %162 = getelementptr inbounds %struct.function, ptr %161, i64 0, i32 1
  %163 = load ptr, ptr %162, align 8, !tbaa !226
  %164 = load ptr, ptr %163, align 8, !tbaa !227
  %165 = getelementptr inbounds %struct.stdarg_info, ptr %1, i64 0, i32 3
  %166 = getelementptr inbounds %struct.stdarg_info, ptr %1, i64 0, i32 2
  %167 = getelementptr inbounds %struct.stdarg_info, ptr %1, i64 0, i32 5
  br label %168

168:                                              ; preds = %323, %158
  %169 = phi ptr [ %164, %158 ], [ %171, %323 ]
  %170 = getelementptr inbounds %struct.basic_block_def, ptr %169, i64 0, i32 6
  %171 = load ptr, ptr %170, align 8, !tbaa !229
  %172 = load ptr, ptr @cfun, align 8, !tbaa !189
  %173 = getelementptr inbounds %struct.function, ptr %172, i64 0, i32 1
  %174 = load ptr, ptr %173, align 8, !tbaa !226
  %175 = getelementptr inbounds %struct.control_flow_graph, ptr %174, i64 0, i32 1
  %176 = load ptr, ptr %175, align 8, !tbaa !231
  %177 = icmp eq ptr %171, %176
  br i1 %177, label %326, label %178, !prof !254

178:                                              ; preds = %168
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #15
  store i32 -1, ptr %165, align 8, !tbaa !255
  store ptr %171, ptr %166, align 8, !tbaa !256
  br i1 %39, label %179, label %229, !prof !257

179:                                              ; preds = %178
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #15
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %171) #16
  %180 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #17, !range !233
  %181 = icmp eq i8 %180, 0
  br i1 %181, label %182, label %227, !prof !258

182:                                              ; preds = %179, %223
  %183 = phi i8 [ %224, %223 ], [ 0, %179 ]
  %184 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #17
  %185 = call fastcc ptr @gimple_phi_result_ptr(ptr noundef %184) #17
  %186 = call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %185) #17
  %187 = call zeroext i8 @is_gimple_reg(ptr noundef %186) #16
  %188 = icmp eq i8 %187, 0
  br i1 %188, label %223, label %189, !prof !259

189:                                              ; preds = %182
  %190 = call fastcc ptr @op_iter_init_phiuse(ptr noundef nonnull %5, ptr noundef %184) #17
  %191 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %5) #17
  %192 = icmp eq i8 %191, 0
  br i1 %192, label %193, label %223, !prof !260

193:                                              ; preds = %189, %218
  %194 = phi i8 [ %219, %218 ], [ %183, %189 ]
  %195 = phi ptr [ %220, %218 ], [ %190, %189 ]
  %196 = call fastcc ptr @get_use_from_ptr(ptr noundef %195) #17
  %197 = call fastcc zeroext i8 @va_list_ptr_read(ptr noundef nonnull %1, ptr noundef %196, ptr noundef %186) #17, !range !233
  %198 = icmp eq i8 %197, 0
  br i1 %198, label %199, label %218, !prof !261

199:                                              ; preds = %193
  %200 = call fastcc zeroext i8 @va_list_ptr_write(ptr noundef nonnull %1, ptr noundef %186, ptr noundef %196) #17, !range !233
  %201 = icmp eq i8 %200, 0
  br i1 %201, label %202, label %218, !prof !261

202:                                              ; preds = %199
  call fastcc void @check_va_list_escapes(ptr noundef nonnull %1, ptr noundef %186, ptr noundef %196) #17
  %203 = load i8, ptr %167, align 8, !tbaa !262
  %204 = icmp eq i8 %203, 0
  br i1 %204, label %218, label %205, !prof !263

205:                                              ; preds = %202
  %206 = load ptr, ptr @dump_file, align 8, !tbaa !189
  %207 = icmp eq ptr %206, null
  br i1 %207, label %218, label %208, !prof !264

208:                                              ; preds = %205
  %209 = load i32, ptr @dump_flags, align 4, !tbaa !265
  %210 = and i32 %209, 8
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %218, label %212

212:                                              ; preds = %208
  %213 = call i32 @fputs(ptr noundef nonnull @.str.3, ptr noundef nonnull %206) #17
  %214 = load ptr, ptr @dump_file, align 8, !tbaa !189
  %215 = load i32, ptr @dump_flags, align 4, !tbaa !265
  call void @print_gimple_stmt(ptr noundef %214, ptr noundef %184, i32 noundef 0, i32 noundef %215) #16
  %216 = load ptr, ptr @dump_file, align 8, !tbaa !189
  %217 = call i32 @fputc(i32 noundef 10, ptr noundef %216) #17
  br label %218

218:                                              ; preds = %205, %208, %212, %202, %199, %193
  %219 = phi i8 [ %194, %193 ], [ %194, %199 ], [ %194, %202 ], [ 1, %212 ], [ 1, %208 ], [ 1, %205 ]
  %220 = call fastcc ptr @op_iter_next_use(ptr noundef nonnull %5) #17
  %221 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %5) #17
  %222 = icmp eq i8 %221, 0
  br i1 %222, label %193, label %223, !prof !266, !llvm.loop !267

223:                                              ; preds = %218, %189, %182
  %224 = phi i8 [ %183, %182 ], [ %183, %189 ], [ %219, %218 ]
  call fastcc void @gsi_next(ptr noundef nonnull %4) #17
  %225 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #17, !range !233
  %226 = icmp eq i8 %225, 0
  br i1 %226, label %182, label %227, !prof !268, !llvm.loop !269

227:                                              ; preds = %223, %179
  %228 = phi i8 [ 0, %179 ], [ %224, %223 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #15
  br label %229

229:                                              ; preds = %227, %178
  %230 = phi i8 [ %228, %227 ], [ 0, %178 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #15
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %6, ptr noundef %171) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !270
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #15
  %231 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #17, !range !233
  %232 = icmp eq i8 %231, 0
  %233 = icmp eq i8 %230, 0
  %234 = select i1 %232, i1 %233, i1 false, !prof !271
  br i1 %234, label %235, label %323, !prof !272

235:                                              ; preds = %229, %317
  %236 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #17
  %237 = call fastcc zeroext i8 @is_gimple_call(ptr noundef %236) #17, !range !233
  %238 = icmp eq i8 %237, 0
  br i1 %238, label %247, label %239, !prof !273

239:                                              ; preds = %235
  %240 = call fastcc ptr @gimple_call_fndecl(ptr noundef %236) #17
  %241 = icmp eq ptr %240, null
  br i1 %241, label %247, label %242, !prof !274

242:                                              ; preds = %239
  %243 = getelementptr inbounds %struct.tree_function_decl, ptr %240, i64 0, i32 5
  %244 = load i32, ptr %243, align 8
  %245 = and i32 %244, 8190
  %246 = icmp eq i32 %245, 6658
  br i1 %246, label %317, label %247, !prof !275

247:                                              ; preds = %239, %242, %235
  %248 = call fastcc zeroext i8 @is_gimple_assign(ptr noundef %236) #17, !range !233
  %249 = icmp eq i8 %248, 0
  br i1 %249, label %295, label %250, !prof !276

250:                                              ; preds = %247
  %251 = call fastcc ptr @gimple_assign_lhs(ptr noundef %236) #17
  %252 = call fastcc ptr @gimple_assign_rhs1(ptr noundef %236) #17
  %253 = call fastcc i32 @gimple_assign_rhs_code(ptr noundef %236) #17, !range !277
  %254 = call fastcc i32 @get_gimple_rhs_class(i32 noundef %253) #17, !range !278
  %255 = icmp eq i32 %254, 3
  br i1 %39, label %256, label %282, !prof !279

256:                                              ; preds = %250
  br i1 %255, label %257, label %263, !prof !280

257:                                              ; preds = %256
  %258 = call fastcc zeroext i8 @va_list_ptr_read(ptr noundef nonnull %1, ptr noundef %252, ptr noundef %251) #17, !range !233
  %259 = icmp eq i8 %258, 0
  br i1 %259, label %260, label %317, !prof !281

260:                                              ; preds = %257
  %261 = call fastcc zeroext i8 @va_list_ptr_write(ptr noundef nonnull %1, ptr noundef %251, ptr noundef %252) #17, !range !233
  %262 = icmp eq i8 %261, 0
  br i1 %262, label %263, label %317, !prof !282

263:                                              ; preds = %260, %256
  %264 = call fastcc i32 @gimple_assign_rhs_code(ptr noundef %236) #17, !range !277
  %265 = icmp eq i32 %264, 66
  br i1 %265, label %266, label %271, !prof !283

266:                                              ; preds = %263
  %267 = call fastcc ptr @gimple_assign_rhs2(ptr noundef %236) #17
  %268 = load i64, ptr %267, align 8
  %269 = and i64 %268, 65535
  %270 = icmp eq i64 %269, 23
  br i1 %270, label %281, label %271, !prof !284

271:                                              ; preds = %266, %263
  %272 = call fastcc i32 @gimple_assign_rhs_code(ptr noundef %236) #17, !range !277
  %273 = icmp eq i32 %272, 116
  br i1 %273, label %281, label %274, !prof !285

274:                                              ; preds = %271
  %275 = call fastcc i32 @gimple_assign_rhs_code(ptr noundef %236) #17, !range !277
  %276 = icmp eq i32 %275, 113
  br i1 %276, label %281, label %277, !prof !286

277:                                              ; preds = %274
  %278 = call fastcc i32 @gimple_assign_rhs_code(ptr noundef %236) #17, !range !277
  %279 = call fastcc i32 @get_gimple_rhs_class(i32 noundef %278) #17, !range !278
  %280 = icmp eq i32 %279, 3
  br i1 %280, label %281, label %298, !prof !287

281:                                              ; preds = %277, %274, %271, %266
  call fastcc void @check_va_list_escapes(ptr noundef nonnull %1, ptr noundef %251, ptr noundef %252) #17
  br label %298

282:                                              ; preds = %250
  br i1 %255, label %283, label %289

283:                                              ; preds = %282
  %284 = call fastcc zeroext i8 @va_list_counter_struct_op(ptr noundef nonnull %1, ptr noundef %251, ptr noundef %252, i8 noundef zeroext 1) #17, !range !233
  %285 = icmp eq i8 %284, 0
  br i1 %285, label %286, label %317

286:                                              ; preds = %283
  %287 = call fastcc zeroext i8 @va_list_counter_struct_op(ptr noundef nonnull %1, ptr noundef %252, ptr noundef %251, i8 noundef zeroext 0) #17, !range !233
  %288 = icmp eq i8 %287, 0
  br i1 %288, label %289, label %317

289:                                              ; preds = %286, %282
  %290 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 82), align 8, !tbaa !288
  %291 = icmp eq ptr %290, null
  br i1 %291, label %298, label %292

292:                                              ; preds = %289
  %293 = call zeroext i8 %290(ptr noundef nonnull %1, ptr noundef %236) #16
  %294 = icmp eq i8 %293, 0
  br i1 %294, label %298, label %317

295:                                              ; preds = %247
  %296 = call fastcc zeroext i8 @is_gimple_debug(ptr noundef %236) #17, !range !233
  %297 = icmp eq i8 %296, 0
  br i1 %297, label %298, label %317, !prof !289

298:                                              ; preds = %281, %277, %292, %289, %295
  %299 = load i8, ptr %167, align 8, !tbaa !262
  %300 = icmp eq i8 %299, 0
  br i1 %300, label %301, label %304, !prof !290

301:                                              ; preds = %298
  %302 = call ptr @walk_gimple_op(ptr noundef %236, ptr noundef nonnull @find_va_list_reference, ptr noundef nonnull %2) #16
  %303 = icmp eq ptr %302, null
  br i1 %303, label %317, label %304, !prof !291

304:                                              ; preds = %301, %298
  %305 = load ptr, ptr @dump_file, align 8, !tbaa !189
  %306 = icmp eq ptr %305, null
  br i1 %306, label %317, label %307, !prof !292

307:                                              ; preds = %304
  %308 = load i32, ptr @dump_flags, align 4, !tbaa !265
  %309 = and i32 %308, 8
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %317, label %311

311:                                              ; preds = %307
  %312 = call i32 @fputs(ptr noundef nonnull @.str.3, ptr noundef nonnull %305) #17
  %313 = load ptr, ptr @dump_file, align 8, !tbaa !189
  %314 = load i32, ptr @dump_flags, align 4, !tbaa !265
  call void @print_gimple_stmt(ptr noundef %313, ptr noundef %236, i32 noundef 0, i32 noundef %314) #16
  %315 = load ptr, ptr @dump_file, align 8, !tbaa !189
  %316 = call i32 @fputc(i32 noundef 10, ptr noundef %315) #17
  br label %317

317:                                              ; preds = %242, %301, %311, %307, %304, %295, %257, %260, %283, %286, %292
  %318 = phi i1 [ true, %292 ], [ true, %286 ], [ true, %283 ], [ true, %260 ], [ true, %257 ], [ true, %295 ], [ true, %301 ], [ false, %311 ], [ false, %307 ], [ false, %304 ], [ true, %242 ]
  %319 = phi i8 [ 0, %292 ], [ 0, %286 ], [ 0, %283 ], [ 0, %260 ], [ 0, %257 ], [ 0, %295 ], [ 0, %301 ], [ 1, %311 ], [ 1, %307 ], [ 1, %304 ], [ 0, %242 ]
  call fastcc void @gsi_next(ptr noundef nonnull %4) #17
  %320 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #17, !range !233
  %321 = icmp eq i8 %320, 0
  %322 = and i1 %321, %318
  br i1 %322, label %235, label %323, !prof !293, !llvm.loop !294

323:                                              ; preds = %317, %229
  %324 = phi i8 [ %230, %229 ], [ %319, %317 ]
  %325 = phi i1 [ %233, %229 ], [ %318, %317 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #15
  br i1 %325, label %168, label %334

326:                                              ; preds = %168
  br i1 %39, label %327, label %341, !prof !295

327:                                              ; preds = %326
  %328 = load ptr, ptr %14, align 8, !tbaa !198
  %329 = load ptr, ptr %328, align 8, !tbaa !296
  %330 = icmp eq ptr %329, null
  br i1 %330, label %341, label %331, !prof !298

331:                                              ; preds = %327
  %332 = call fastcc zeroext i8 @check_all_va_list_escapes(ptr noundef nonnull %1) #17
  %333 = icmp eq i8 %332, 0
  br i1 %333, label %341, label %334, !prof !299

334:                                              ; preds = %136, %323, %130, %142, %145, %331
  %335 = phi i8 [ 1, %331 ], [ 1, %145 ], [ 1, %142 ], [ 1, %130 ], [ %324, %323 ], [ %137, %136 ]
  %336 = load ptr, ptr @cfun, align 8, !tbaa !189
  %337 = getelementptr inbounds %struct.function, ptr %336, i64 0, i32 20
  %338 = load i32, ptr %337, align 8
  %339 = or i32 %338, 65535
  store i32 %339, ptr %337, align 8
  %340 = zext nneg i8 %335 to i32
  br label %341

341:                                              ; preds = %331, %139, %327, %326, %334
  %342 = phi i32 [ %340, %334 ], [ 0, %139 ], [ 0, %327 ], [ 0, %326 ], [ 0, %331 ]
  %343 = load ptr, ptr %1, align 8, !tbaa !195
  call void @bitmap_obstack_free(ptr noundef %343) #16
  store ptr null, ptr %1, align 8, !tbaa !195
  %344 = load ptr, ptr %14, align 8, !tbaa !198
  call void @bitmap_obstack_free(ptr noundef %344) #16
  store ptr null, ptr %14, align 8, !tbaa !198
  %345 = getelementptr inbounds %struct.stdarg_info, ptr %1, i64 0, i32 6
  %346 = load ptr, ptr %345, align 8, !tbaa !300
  call void @free(ptr noundef %346) #17
  %347 = load ptr, ptr @dump_file, align 8, !tbaa !189
  %348 = icmp eq ptr %347, null
  br i1 %348, label %378, label %349, !prof !199

349:                                              ; preds = %341
  %350 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %347, ptr noundef nonnull @.str.4, ptr noundef %22, i32 noundef %342) #17
  %351 = load ptr, ptr @cfun, align 8, !tbaa !189
  %352 = getelementptr inbounds %struct.function, ptr %351, i64 0, i32 20
  %353 = load i32, ptr %352, align 8
  %354 = and i32 %353, 255
  %355 = icmp eq i32 %354, 255
  %356 = load ptr, ptr @dump_file, align 8, !tbaa !189
  br i1 %355, label %357, label %359

357:                                              ; preds = %349
  %358 = call i32 @fputs(ptr noundef nonnull @.str.5, ptr noundef %356) #17
  br label %361

359:                                              ; preds = %349
  %360 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %356, ptr noundef nonnull @.str.6, i32 noundef %354) #17
  br label %361

361:                                              ; preds = %359, %357
  %362 = load ptr, ptr @dump_file, align 8, !tbaa !189
  %363 = call i32 @fputs(ptr noundef nonnull @.str.7, ptr noundef %362) #17
  %364 = load ptr, ptr @cfun, align 8, !tbaa !189
  %365 = getelementptr inbounds %struct.function, ptr %364, i64 0, i32 20
  %366 = load i32, ptr %365, align 8
  %367 = lshr i32 %366, 8
  %368 = and i32 %367, 255
  %369 = icmp eq i32 %368, 255
  %370 = load ptr, ptr @dump_file, align 8, !tbaa !189
  br i1 %369, label %371, label %373

371:                                              ; preds = %361
  %372 = call i32 @fputs(ptr noundef nonnull @.str.5, ptr noundef %370) #17
  br label %375

373:                                              ; preds = %361
  %374 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %370, ptr noundef nonnull @.str.6, i32 noundef %368) #17
  br label %375

375:                                              ; preds = %373, %371
  %376 = load ptr, ptr @dump_file, align 8, !tbaa !189
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
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #5 !prof !301 !PGOFuncName !302 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #17
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #17
  store ptr %4, ptr %0, align 8, !tbaa !303
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !304
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !305
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #7 !prof !306 !PGOFuncName !307 {
  %2 = load ptr, ptr %0, align 8, !tbaa !303
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #0 !prof !308 !PGOFuncName !309 {
  %2 = load ptr, ptr %0, align 8, !tbaa !303
  %3 = load ptr, ptr %2, align 8, !tbaa !310
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_call(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !312 !PGOFuncName !313 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #17, !range !278
  %3 = icmp eq i32 %2, 8
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fndecl(ptr noundef %0) unnamed_addr #1 !prof !314 !PGOFuncName !315 {
  %2 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #17
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 121
  br i1 %5, label %6, label %9, !prof !316

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !224
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_arg(ptr noundef %0) unnamed_addr #1 !prof !317 !PGOFuncName !318 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 3) #17
  ret ptr %2
}

; Function Attrs: optsize
declare i32 @integer_zerop(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_global_var(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !319 !PGOFuncName !320 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 67108864
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %5, label %11, !prof !321

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
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #5 !prof !322 !PGOFuncName !323 {
  %2 = load ptr, ptr %0, align 8, !tbaa !303
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !324
  store ptr %4, ptr %0, align 8, !tbaa !303
  ret void
}

; Function Attrs: optsize
declare void @calculate_dominance_info(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @get_def_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !325 !PGOFuncName !326 {
  %2 = load ptr, ptr %0, align 8, !tbaa !189
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @gimple_phi_result_ptr(ptr noundef readnone %0) unnamed_addr #8 !prof !325 !PGOFuncName !327 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  ret ptr %2
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_phiuse(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #1 !prof !328 !PGOFuncName !329 {
  %3 = tail call fastcc ptr @gimple_phi_result(ptr noundef %1) #17
  tail call fastcc void @clear_and_done_ssa_iter(ptr noundef %0) #17
  store i8 0, ptr %0, align 8, !tbaa !330
  %4 = tail call zeroext i8 @is_gimple_reg(ptr noundef %3) #16
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %7, !prof !332

6:                                                ; preds = %2
  store i8 1, ptr %0, align 8, !tbaa !330
  br label %13

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 6
  store ptr %1, ptr %8, align 8, !tbaa !333
  %9 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %1) #17
  %10 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 5
  store i32 %9, ptr %10, align 4, !tbaa !334
  %11 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 2, ptr %11, align 4, !tbaa !335
  %12 = tail call fastcc ptr @op_iter_next_use(ptr noundef nonnull %0) #17
  br label %13

13:                                               ; preds = %7, %6
  %14 = phi ptr [ null, %6 ], [ %12, %7 ]
  ret ptr %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @op_iter_done(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !336 !PGOFuncName !337 {
  %2 = load i8, ptr %0, align 8, !tbaa !330
  ret i8 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_use_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !338 !PGOFuncName !339 {
  %2 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !340
  %4 = load ptr, ptr %3, align 8, !tbaa !189
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @va_list_ptr_read(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 !prof !342 !PGOFuncName !343 {
  %4 = load i64, ptr %1, align 8
  %5 = and i64 %4, 65535
  %6 = icmp eq i64 %5, 32
  br i1 %6, label %7, label %80, !prof !344

7:                                                ; preds = %3
  %8 = load ptr, ptr %0, align 8, !tbaa !195
  %9 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !224
  %11 = tail call i32 @bitmap_bit_p(ptr noundef %8, i32 noundef %10) #16
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %80, label %13, !prof !345

13:                                               ; preds = %7
  %14 = load i64, ptr %2, align 8
  %15 = and i64 %14, 65535
  %16 = icmp eq i64 %15, 141
  br i1 %16, label %17, label %80, !prof !346

17:                                               ; preds = %13
  %18 = load ptr, ptr %0, align 8, !tbaa !195
  %19 = getelementptr inbounds %struct.tree_ssa_name, ptr %2, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !224
  %21 = getelementptr inbounds %struct.tree_decl_minimal, ptr %20, i64 0, i32 2
  %22 = load i32, ptr %21, align 4, !tbaa !224
  %23 = tail call i32 @bitmap_bit_p(ptr noundef %18, i32 noundef %22) #16
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %80, !prof !346

25:                                               ; preds = %17
  %26 = load ptr, ptr %19, align 8, !tbaa !224
  %27 = tail call fastcc zeroext i8 @is_global_var(ptr noundef %26) #17, !range !233
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %80, !prof !346

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.stdarg_info, ptr %0, i64 0, i32 3
  %31 = load i32, ptr %30, align 8, !tbaa !255
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %67, !prof !346

33:                                               ; preds = %29
  store i32 0, ptr %30, align 8, !tbaa !255
  %34 = getelementptr inbounds %struct.stdarg_info, ptr %0, i64 0, i32 4
  %35 = load i32, ptr %34, align 4, !tbaa !235
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %45, !prof !346

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.stdarg_info, ptr %0, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !256
  %40 = getelementptr inbounds %struct.stdarg_info, ptr %0, i64 0, i32 7
  %41 = load ptr, ptr %40, align 8, !tbaa !242
  %42 = tail call fastcc zeroext i8 @reachable_at_most_once(ptr noundef %39, ptr noundef %41) #17, !range !233
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %45, label %44, !prof !347

44:                                               ; preds = %37
  store i32 1, ptr %30, align 8, !tbaa !255
  br label %45

45:                                               ; preds = %44, %37, %33
  %46 = load ptr, ptr @dump_file, align 8, !tbaa !189
  %47 = icmp eq ptr %46, null
  br i1 %47, label %65, label %48, !prof !346

48:                                               ; preds = %45
  %49 = load i32, ptr @dump_flags, align 4, !tbaa !265
  %50 = and i32 %49, 8
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %65, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.stdarg_info, ptr %0, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !256
  %55 = getelementptr inbounds %struct.basic_block_def, ptr %54, i64 0, i32 9
  %56 = load i32, ptr %55, align 8, !tbaa !348
  %57 = load i32, ptr %30, align 8, !tbaa !255
  %58 = icmp eq i32 %57, 0
  %59 = select i1 %58, ptr @.str.13, ptr @.str.12
  %60 = getelementptr inbounds %struct.stdarg_info, ptr %0, i64 0, i32 7
  %61 = load ptr, ptr %60, align 8, !tbaa !242
  %62 = getelementptr inbounds %struct.basic_block_def, ptr %61, i64 0, i32 9
  %63 = load i32, ptr %62, align 8, !tbaa !348
  %64 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %46, ptr noundef nonnull @.str.11, i32 noundef %56, ptr noundef nonnull %59, i32 noundef %63) #17
  br label %65

65:                                               ; preds = %52, %48, %45
  %66 = load i32, ptr %30, align 8, !tbaa !255
  br label %67

67:                                               ; preds = %65, %29
  %68 = phi i32 [ %66, %65 ], [ %31, %29 ]
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %80, label %70, !prof !347

70:                                               ; preds = %67
  %71 = tail call fastcc i64 @va_list_counter_bump(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i8 noundef zeroext 1) #17
  %72 = icmp eq i64 %71, -1
  br i1 %72, label %80, label %73, !prof !349

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.stdarg_info, ptr %0, i64 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !198
  %76 = load ptr, ptr %19, align 8, !tbaa !224
  %77 = getelementptr inbounds %struct.tree_decl_minimal, ptr %76, i64 0, i32 2
  %78 = load i32, ptr %77, align 4, !tbaa !224
  %79 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %75, i32 noundef %78) #16
  br label %80

80:                                               ; preds = %70, %67, %13, %17, %25, %3, %7, %73
  %81 = phi i8 [ 1, %73 ], [ 0, %7 ], [ 0, %3 ], [ 0, %25 ], [ 0, %17 ], [ 0, %13 ], [ 0, %67 ], [ 0, %70 ]
  ret i8 %81
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @va_list_ptr_write(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 !prof !350 !PGOFuncName !351 {
  %4 = load i64, ptr %1, align 8
  %5 = and i64 %4, 65535
  %6 = icmp eq i64 %5, 32
  br i1 %6, label %7, label %46, !prof !352

7:                                                ; preds = %3
  %8 = load ptr, ptr %0, align 8, !tbaa !195
  %9 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !224
  %11 = tail call i32 @bitmap_bit_p(ptr noundef %8, i32 noundef %10) #16
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %46, label %13, !prof !353

13:                                               ; preds = %7
  %14 = load i64, ptr %2, align 8
  %15 = and i64 %14, 65535
  %16 = icmp eq i64 %15, 141
  br i1 %16, label %17, label %46, !prof !354

17:                                               ; preds = %13
  %18 = load ptr, ptr %0, align 8, !tbaa !195
  %19 = getelementptr inbounds %struct.tree_ssa_name, ptr %2, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !224
  %21 = getelementptr inbounds %struct.tree_decl_minimal, ptr %20, i64 0, i32 2
  %22 = load i32, ptr %21, align 4, !tbaa !224
  %23 = tail call i32 @bitmap_bit_p(ptr noundef %18, i32 noundef %22) #16
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %46, !prof !354

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.stdarg_info, ptr %0, i64 0, i32 3
  %27 = load i32, ptr %26, align 8, !tbaa !255
  %28 = icmp slt i32 %27, 1
  br i1 %28, label %46, label %29, !prof !355

29:                                               ; preds = %25
  %30 = tail call fastcc i64 @va_list_counter_bump(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i8 noundef zeroext 1) #17
  %31 = add i64 %30, 1
  %32 = icmp ult i64 %31, 2
  br i1 %32, label %46, label %33, !prof !355

33:                                               ; preds = %29
  %34 = load ptr, ptr @cfun, align 8, !tbaa !189
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
  %45 = select i1 %40, i32 %44, i32 %41, !prof !354
  store i32 %45, ptr %35, align 8
  br label %46

46:                                               ; preds = %29, %25, %13, %17, %3, %7, %33
  %47 = phi i8 [ 1, %33 ], [ 0, %7 ], [ 0, %3 ], [ 0, %17 ], [ 0, %13 ], [ 0, %25 ], [ 0, %29 ]
  ret i8 %47
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @check_va_list_escapes(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #1 !prof !356 !PGOFuncName !357 {
  %4 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !224
  %6 = load i64, ptr %5, align 8
  %7 = trunc i64 %6 to i16
  switch i16 %7, label %88 [
    i16 10, label %8
    i16 12, label %8
  ], !prof !358

8:                                                ; preds = %3, %3
  %9 = load i64, ptr %2, align 8
  %10 = and i64 %9, 65535
  %11 = icmp eq i64 %10, 141
  br i1 %11, label %12, label %88, !prof !359

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.stdarg_info, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !198
  %15 = getelementptr inbounds %struct.tree_ssa_name, ptr %2, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !224
  %17 = getelementptr inbounds %struct.tree_decl_minimal, ptr %16, i64 0, i32 2
  %18 = load i32, ptr %17, align 4, !tbaa !224
  %19 = tail call i32 @bitmap_bit_p(ptr noundef %14, i32 noundef %18) #16
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %88, label %21, !prof !360

21:                                               ; preds = %12
  %22 = load i64, ptr %1, align 8
  %23 = and i64 %22, 65535
  %24 = icmp eq i64 %23, 141
  br i1 %24, label %25, label %30, !prof !361

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !224
  %28 = tail call fastcc zeroext i8 @is_global_var(ptr noundef %27) #17, !range !233
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %32, label %30, !prof !361

30:                                               ; preds = %25, %21
  %31 = getelementptr inbounds %struct.stdarg_info, ptr %0, i64 0, i32 5
  store i8 1, ptr %31, align 8, !tbaa !262
  br label %88

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.stdarg_info, ptr %0, i64 0, i32 3
  %34 = load i32, ptr %33, align 8, !tbaa !255
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %70, !prof !362

36:                                               ; preds = %32
  store i32 0, ptr %33, align 8, !tbaa !255
  %37 = getelementptr inbounds %struct.stdarg_info, ptr %0, i64 0, i32 4
  %38 = load i32, ptr %37, align 4, !tbaa !235
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %48, !prof !363

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.stdarg_info, ptr %0, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !256
  %43 = getelementptr inbounds %struct.stdarg_info, ptr %0, i64 0, i32 7
  %44 = load ptr, ptr %43, align 8, !tbaa !242
  %45 = tail call fastcc zeroext i8 @reachable_at_most_once(ptr noundef %42, ptr noundef %44) #17, !range !233
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %48, label %47, !prof !363

47:                                               ; preds = %40
  store i32 1, ptr %33, align 8, !tbaa !255
  br label %48

48:                                               ; preds = %47, %40, %36
  %49 = load ptr, ptr @dump_file, align 8, !tbaa !189
  %50 = icmp eq ptr %49, null
  br i1 %50, label %68, label %51, !prof !363

51:                                               ; preds = %48
  %52 = load i32, ptr @dump_flags, align 4, !tbaa !265
  %53 = and i32 %52, 8
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %68, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.stdarg_info, ptr %0, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !256
  %58 = getelementptr inbounds %struct.basic_block_def, ptr %57, i64 0, i32 9
  %59 = load i32, ptr %58, align 8, !tbaa !348
  %60 = load i32, ptr %33, align 8, !tbaa !255
  %61 = icmp eq i32 %60, 0
  %62 = select i1 %61, ptr @.str.13, ptr @.str.12
  %63 = getelementptr inbounds %struct.stdarg_info, ptr %0, i64 0, i32 7
  %64 = load ptr, ptr %63, align 8, !tbaa !242
  %65 = getelementptr inbounds %struct.basic_block_def, ptr %64, i64 0, i32 9
  %66 = load i32, ptr %65, align 8, !tbaa !348
  %67 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %49, ptr noundef nonnull @.str.11, i32 noundef %59, ptr noundef nonnull %62, i32 noundef %66) #17
  br label %68

68:                                               ; preds = %55, %51, %48
  %69 = load i32, ptr %33, align 8, !tbaa !255
  br label %70

70:                                               ; preds = %68, %32
  %71 = phi i32 [ %69, %68 ], [ %34, %32 ]
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %75, !prof !364

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.stdarg_info, ptr %0, i64 0, i32 5
  store i8 1, ptr %74, align 8, !tbaa !262
  br label %88

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.stdarg_info, ptr %0, i64 0, i32 8
  %77 = load ptr, ptr %76, align 8, !tbaa !243
  %78 = tail call fastcc i64 @va_list_counter_bump(ptr noundef nonnull %0, ptr noundef %77, ptr noundef nonnull %1, i8 noundef zeroext 1) #17
  %79 = icmp eq i64 %78, -1
  br i1 %79, label %80, label %82, !prof !365

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.stdarg_info, ptr %0, i64 0, i32 5
  store i8 1, ptr %81, align 8, !tbaa !262
  br label %88

82:                                               ; preds = %75
  %83 = load ptr, ptr %13, align 8, !tbaa !198
  %84 = load ptr, ptr %26, align 8, !tbaa !224
  %85 = getelementptr inbounds %struct.tree_decl_minimal, ptr %84, i64 0, i32 2
  %86 = load i32, ptr %85, align 4, !tbaa !224
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
define internal fastcc ptr @op_iter_next_use(ptr nocapture noundef %0) unnamed_addr #1 !prof !366 !PGOFuncName !367 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !368
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5, !prof !369

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.use_optype_d, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %3, align 8, !tbaa !370
  store ptr %7, ptr %2, align 8, !tbaa !368
  br label %20

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !372
  %11 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 5
  %12 = load i32, ptr %11, align 4, !tbaa !334
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %19, !prof !373

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !333
  %17 = add nsw i32 %10, 1
  store i32 %17, ptr %9, align 8, !tbaa !372
  %18 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %16, i32 noundef %10) #17
  br label %20

19:                                               ; preds = %8
  store i8 1, ptr %0, align 8, !tbaa !330
  br label %20

20:                                               ; preds = %19, %14, %5
  %21 = phi ptr [ %6, %5 ], [ %18, %14 ], [ null, %19 ]
  ret ptr %21
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_assign(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !374 !PGOFuncName !375 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #17, !range !278
  %3 = icmp eq i32 %2, 6
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_lhs(ptr noundef %0) unnamed_addr #1 !prof !376 !PGOFuncName !377 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #17
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs1(ptr noundef %0) unnamed_addr #1 !prof !378 !PGOFuncName !379 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #17
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @get_gimple_rhs_class(i32 noundef %0) unnamed_addr #8 !prof !380 !PGOFuncName !381 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %2
  %4 = load i8, ptr %3, align 1, !tbaa !224
  %5 = zext i8 %4 to i32
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) unnamed_addr #1 !prof !382 !PGOFuncName !383 {
  %2 = tail call fastcc i32 @gimple_expr_code(ptr noundef %0) #17, !range !277
  %3 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %2) #17, !range !278
  %4 = icmp eq i32 %3, 3
  br i1 %4, label %5, label %10, !prof !384

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
define internal fastcc ptr @gimple_assign_rhs2(ptr noundef %0) unnamed_addr #1 !prof !385 !PGOFuncName !386 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #17
  %3 = icmp ugt i32 %2, 2
  br i1 %3, label %4, label %6, !prof !387

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 2) #17
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi ptr [ %5, %4 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @va_list_counter_struct_op(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) unnamed_addr #1 !prof !388 !PGOFuncName !389 {
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 41
  br i1 %7, label %8, label %46

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !224
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
  %19 = load ptr, ptr %0, align 8, !tbaa !195
  %20 = getelementptr inbounds %struct.tree_ssa_name, ptr %2, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !224
  %22 = getelementptr inbounds %struct.tree_decl_minimal, ptr %21, i64 0, i32 2
  %23 = load i32, ptr %22, align 4, !tbaa !224
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
  %32 = load ptr, ptr %0, align 8, !tbaa !195
  %33 = getelementptr inbounds %struct.tree_decl_minimal, ptr %27, i64 0, i32 2
  %34 = load i32, ptr %33, align 4, !tbaa !224
  %35 = tail call i32 @bitmap_bit_p(ptr noundef %32, i32 noundef %34) #16
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %46, label %37

37:                                               ; preds = %31
  %38 = load ptr, ptr %9, align 8, !tbaa !224
  %39 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 45), align 8, !tbaa !189
  %40 = icmp eq ptr %38, %39
  br i1 %40, label %44, label %41

41:                                               ; preds = %37
  %42 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 46), align 16, !tbaa !189
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
define internal fastcc zeroext i8 @is_gimple_debug(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !390 !PGOFuncName !391 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #17, !range !278
  %3 = icmp eq i32 %2, 2
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare ptr @walk_gimple_op(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef ptr @find_va_list_reference(ptr nocapture noundef readonly %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #1 !prof !392 !PGOFuncName !393 {
  %4 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !251
  %6 = load ptr, ptr %0, align 8, !tbaa !189
  %7 = load i64, ptr %6, align 8
  %8 = and i64 %7, 65535
  %9 = icmp eq i64 %8, 141
  br i1 %9, label %10, label %14, !prof !394

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.tree_ssa_name, ptr %6, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !224
  %13 = load i64, ptr %12, align 8
  br label %14

14:                                               ; preds = %10, %3
  %15 = phi i64 [ %13, %10 ], [ %7, %3 ]
  %16 = phi ptr [ %12, %10 ], [ %6, %3 ]
  %17 = and i64 %15, 65535
  %18 = icmp eq i64 %17, 32
  br i1 %18, label %19, label %24, !prof !395

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.tree_decl_minimal, ptr %16, i64 0, i32 2
  %21 = load i32, ptr %20, align 4, !tbaa !224
  %22 = tail call i32 @bitmap_bit_p(ptr noundef %5, i32 noundef %21) #16
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25, !prof !396

24:                                               ; preds = %19, %14
  br label %25

25:                                               ; preds = %19, %24
  %26 = phi ptr [ null, %24 ], [ %16, %19 ]
  ret ptr %26
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @check_all_va_list_escapes(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !397 !PGOFuncName !398 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca %struct.ssa_operand_iterator_d, align 8
  %4 = load ptr, ptr @cfun, align 8, !tbaa !189
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !226
  %7 = load ptr, ptr %6, align 8, !tbaa !227
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !229
  %10 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !231
  %12 = icmp eq ptr %9, %11
  br i1 %12, label %159, label %13, !prof !399

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.stdarg_info, ptr %0, i64 0, i32 1
  br label %15

15:                                               ; preds = %13, %150
  %16 = phi ptr [ %9, %13 ], [ %152, %150 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #15
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %16) #17
  %17 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #17, !range !233
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %150, !prof !400

19:                                               ; preds = %15, %147
  %20 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #17
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #15
  %21 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %20) #17, !range !233
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %147, !prof !401

23:                                               ; preds = %19
  %24 = call fastcc ptr @op_iter_init_tree(ptr noundef nonnull %3, ptr noundef %20) #17
  %25 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #17
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %147, !prof !402

27:                                               ; preds = %23, %142
  %28 = phi ptr [ %143, %142 ], [ %24, %23 ]
  %29 = load ptr, ptr %14, align 8, !tbaa !198
  %30 = getelementptr inbounds %struct.tree_ssa_name, ptr %28, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !224
  %32 = getelementptr inbounds %struct.tree_decl_minimal, ptr %31, i64 0, i32 2
  %33 = load i32, ptr %32, align 4, !tbaa !224
  %34 = tail call i32 @bitmap_bit_p(ptr noundef %29, i32 noundef %33) #16
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %142, label %36, !prof !403

36:                                               ; preds = %27
  %37 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %20) #17, !range !233
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %127, label %39, !prof !404

39:                                               ; preds = %36
  %40 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %20) #17
  %41 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %20) #17, !range !277
  %42 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %20) #17, !range !277
  %43 = icmp eq i32 %42, 47
  br i1 %43, label %44, label %87, !prof !405

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.tree_exp, ptr %40, i64 0, i32 3
  %46 = load ptr, ptr %45, align 8, !tbaa !224
  %47 = icmp eq ptr %46, %28
  br i1 %47, label %48, label %87, !prof !406

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.tree_common, ptr %40, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !224
  %51 = getelementptr inbounds %struct.tree_type, ptr %50, i64 0, i32 3
  %52 = load ptr, ptr %51, align 8, !tbaa !224
  %53 = icmp eq ptr %52, null
  br i1 %53, label %87, label %54, !prof !407

54:                                               ; preds = %48
  %55 = tail call i32 @host_integerp(ptr noundef nonnull %52, i32 noundef 1) #16
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %87, label %57, !prof !407

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.stdarg_info, ptr %0, i64 0, i32 6
  %59 = load ptr, ptr %58, align 8, !tbaa !300
  %60 = getelementptr inbounds %struct.tree_ssa_name, ptr %28, i64 0, i32 3
  %61 = load i32, ptr %60, align 8, !tbaa !224
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds i32, ptr %59, i64 %62
  %64 = load i32, ptr %63, align 4, !tbaa !265
  %65 = icmp eq i32 %64, -1
  br i1 %65, label %87, label %66, !prof !407

66:                                               ; preds = %57
  %67 = load ptr, ptr %49, align 8, !tbaa !224
  %68 = getelementptr inbounds %struct.tree_type, ptr %67, i64 0, i32 3
  %69 = load ptr, ptr %68, align 8, !tbaa !224
  %70 = sext i32 %64 to i64
  %71 = tail call i64 @tree_low_cst(ptr noundef %69, i32 noundef 1) #16
  %72 = add nsw i64 %71, %70
  %73 = icmp ugt i64 %72, 254
  %74 = load ptr, ptr @cfun, align 8, !tbaa !189
  %75 = getelementptr inbounds %struct.function, ptr %74, i64 0, i32 20
  %76 = load i32, ptr %75, align 8
  br i1 %73, label %77, label %79, !prof !407

77:                                               ; preds = %66
  %78 = or i32 %76, 255
  br label %140

79:                                               ; preds = %66
  %80 = and i32 %76, 255
  %81 = zext nneg i32 %80 to i64
  %82 = icmp ugt i64 %72, %81
  br i1 %82, label %83, label %142, !prof !407

83:                                               ; preds = %79
  %84 = trunc i64 %72 to i32
  %85 = and i32 %76, -256
  %86 = or disjoint i32 %85, %84
  br label %140

87:                                               ; preds = %57, %54, %48, %44, %39
  %88 = icmp eq ptr %40, %28
  br i1 %88, label %89, label %127, !prof !408

89:                                               ; preds = %87
  %90 = icmp eq i32 %41, 66
  br i1 %90, label %91, label %96, !prof !409

91:                                               ; preds = %89
  %92 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %20) #17
  %93 = load i64, ptr %92, align 8
  %94 = and i64 %93, 65535
  %95 = icmp eq i64 %94, 23
  br i1 %95, label %102, label %96, !prof !406

96:                                               ; preds = %91, %89
  %97 = tail call fastcc zeroext i8 @gimple_assign_cast_p(ptr noundef %20) #17, !range !233
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %99, label %102, !prof !410

99:                                               ; preds = %96
  %100 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %41) #17, !range !278
  %101 = icmp eq i32 %100, 3
  br i1 %101, label %102, label %127, !prof !406

102:                                              ; preds = %99, %96, %91
  %103 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %20) #17
  %104 = load i64, ptr %103, align 8
  %105 = and i64 %104, 65535
  %106 = icmp eq i64 %105, 141
  br i1 %106, label %107, label %117, !prof !411

107:                                              ; preds = %102
  %108 = load ptr, ptr %14, align 8, !tbaa !198
  %109 = getelementptr inbounds %struct.tree_ssa_name, ptr %103, i64 0, i32 1
  %110 = load ptr, ptr %109, align 8, !tbaa !224
  %111 = getelementptr inbounds %struct.tree_decl_minimal, ptr %110, i64 0, i32 2
  %112 = load i32, ptr %111, align 4, !tbaa !224
  %113 = tail call i32 @bitmap_bit_p(ptr noundef %108, i32 noundef %112) #16
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %142, !prof !412

115:                                              ; preds = %107
  %116 = load i64, ptr %103, align 8
  br label %117

117:                                              ; preds = %115, %102
  %118 = phi i64 [ %116, %115 ], [ %104, %102 ]
  %119 = and i64 %118, 65535
  %120 = icmp eq i64 %119, 32
  br i1 %120, label %121, label %127, !prof !406

121:                                              ; preds = %117
  %122 = load ptr, ptr %0, align 8, !tbaa !195
  %123 = getelementptr inbounds %struct.tree_decl_minimal, ptr %103, i64 0, i32 2
  %124 = load i32, ptr %123, align 4, !tbaa !224
  %125 = tail call i32 @bitmap_bit_p(ptr noundef %122, i32 noundef %124) #16
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %142, !prof !407

127:                                              ; preds = %87, %99, %117, %121, %36
  %128 = load ptr, ptr @dump_file, align 8, !tbaa !189
  %129 = icmp eq ptr %128, null
  br i1 %129, label %146, label %130, !prof !292

130:                                              ; preds = %127
  %131 = load i32, ptr @dump_flags, align 4, !tbaa !265
  %132 = and i32 %131, 8
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %146, label %134

134:                                              ; preds = %130
  %135 = tail call i32 @fputs(ptr noundef nonnull @.str.3, ptr noundef nonnull %128) #17
  %136 = load ptr, ptr @dump_file, align 8, !tbaa !189
  %137 = load i32, ptr @dump_flags, align 4, !tbaa !265
  tail call void @print_gimple_stmt(ptr noundef %136, ptr noundef %20, i32 noundef 0, i32 noundef %137) #16
  %138 = load ptr, ptr @dump_file, align 8, !tbaa !189
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
  br i1 %145, label %27, label %147, !prof !413, !llvm.loop !414

146:                                              ; preds = %127, %130, %134
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  br label %159

147:                                              ; preds = %142, %23, %19
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #15
  call fastcc void @gsi_next(ptr noundef nonnull %2) #17
  %148 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #17, !range !233
  %149 = icmp eq i8 %148, 0
  br i1 %149, label %19, label %150, !prof !415, !llvm.loop !416

150:                                              ; preds = %147, %15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #15
  %151 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 6
  %152 = load ptr, ptr %151, align 8, !tbaa !229
  %153 = load ptr, ptr @cfun, align 8, !tbaa !189
  %154 = getelementptr inbounds %struct.function, ptr %153, i64 0, i32 1
  %155 = load ptr, ptr %154, align 8, !tbaa !226
  %156 = getelementptr inbounds %struct.control_flow_graph, ptr %155, i64 0, i32 1
  %157 = load ptr, ptr %156, align 8, !tbaa !231
  %158 = icmp eq ptr %152, %157
  br i1 %158, label %159, label %15, !prof !417, !llvm.loop !418

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
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !301 !PGOFuncName !419 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !420
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12, !prof !421

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !224
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10, !prof !422

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !423
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #7 !prof !301 !PGOFuncName !425 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !422

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !426
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !428 !PGOFuncName !429 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fn(ptr noundef %0) unnamed_addr #1 !prof !314 !PGOFuncName !430 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #17
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %1) unnamed_addr #1 !prof !431 !PGOFuncName !432 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #17, !range !233
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5, !prof !433

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #17
  %7 = zext nneg i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !189
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !434 !PGOFuncName !435 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #17, !range !278
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #1 !prof !431 !PGOFuncName !436 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #17
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !437
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8, !prof !433

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1622, ptr noundef nonnull @.str.2) #16
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !431 !PGOFuncName !438 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #17, !range !278
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #17
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #8 !prof !431 !PGOFuncName !439 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !265
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_phi_result(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !328 !PGOFuncName !440 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !224
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @clear_and_done_ssa_iter(ptr nocapture noundef writeonly %0) unnamed_addr #11 !prof !328 !PGOFuncName !441 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %2, i8 0, i64 36, i1 false)
  store i8 1, ptr %0, align 8, !tbaa !330
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_phi_num_args(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !328 !PGOFuncName !442 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !224
  ret i32 %3
}

; Function Attrs: optsize
declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @reachable_at_most_once(ptr noundef %0, ptr noundef %1) unnamed_addr #1 !prof !443 !PGOFuncName !444 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  store ptr null, ptr %3, align 8, !tbaa !189
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #15
  %6 = icmp eq ptr %0, %1
  br i1 %6, label %79, label %7, !prof !445

7:                                                ; preds = %2
  %8 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %0, ptr noundef %1) #16
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %79, label %10, !prof !446

10:                                               ; preds = %7
  %11 = load ptr, ptr @cfun, align 8, !tbaa !189
  %12 = getelementptr inbounds %struct.function, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !226
  %14 = getelementptr inbounds %struct.control_flow_graph, ptr %13, i64 0, i32 5
  %15 = load i32, ptr %14, align 8, !tbaa !447
  %16 = tail call ptr @sbitmap_alloc(i32 noundef %15) #16
  tail call void @sbitmap_zero(ptr noundef %16) #16
  %17 = tail call fastcc ptr @ei_start_1(ptr noundef %0) #17
  store i32 0, ptr %5, align 8, !tbaa.struct !448
  %18 = getelementptr inbounds i8, ptr %5, i64 8
  store ptr %17, ptr %18, align 8, !tbaa.struct !449
  %19 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %17, ptr noundef nonnull %4) #17, !range !233
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %25, !prof !450

21:                                               ; preds = %25, %10
  %22 = load ptr, ptr %3, align 8
  %23 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %22) #17
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %76, label %31, !prof !451

25:                                               ; preds = %10, %25
  %26 = load ptr, ptr %4, align 8, !tbaa !189
  call fastcc void @VEC_edge_heap_safe_push(ptr noundef nonnull %3, ptr noundef %26) #17
  call fastcc void @ei_next(ptr noundef nonnull %5) #17
  %27 = load i32, ptr %5, align 8
  %28 = load ptr, ptr %18, align 8
  %29 = call fastcc zeroext i8 @ei_cond(i32 %27, ptr %28, ptr noundef nonnull %4) #17, !range !233
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %21, label %25, !prof !452, !llvm.loop !453

31:                                               ; preds = %21, %72
  %32 = phi ptr [ %73, %72 ], [ %22, %21 ]
  %33 = tail call fastcc ptr @VEC_edge_base_pop(ptr noundef %32) #17
  store ptr %33, ptr %4, align 8, !tbaa !189
  %34 = load ptr, ptr %33, align 8, !tbaa !454
  %35 = getelementptr inbounds %struct.edge_def, ptr %33, i64 0, i32 7
  %36 = load i32, ptr %35, align 8, !tbaa !456
  %37 = and i32 %36, 14
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %76, !prof !457

39:                                               ; preds = %31
  %40 = icmp eq ptr %34, %1
  br i1 %40, label %72, label %41, !prof !458, !llvm.loop !459

41:                                               ; preds = %39
  %42 = icmp eq ptr %34, %0
  br i1 %42, label %76, label %43, !prof !460

43:                                               ; preds = %41
  %44 = load ptr, ptr @cfun, align 8, !tbaa !189
  %45 = getelementptr inbounds %struct.function, ptr %44, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !226
  %47 = load ptr, ptr %46, align 8, !tbaa !227
  %48 = icmp eq ptr %34, %47
  br i1 %48, label %49, label %50, !prof !461

49:                                               ; preds = %43
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 91, ptr noundef nonnull @.str.2) #16
  br label %50

50:                                               ; preds = %43, %49
  %51 = getelementptr inbounds %struct.basic_block_def, ptr %34, i64 0, i32 9
  %52 = load i32, ptr %51, align 8, !tbaa !348
  %53 = lshr i32 %52, 6
  %54 = zext nneg i32 %53 to i64
  %55 = getelementptr inbounds %struct.simple_bitmap_def, ptr %16, i64 0, i32 3, i64 %54
  %56 = load i64, ptr %55, align 8, !tbaa !437
  %57 = and i32 %52, 63
  %58 = zext nneg i32 %57 to i64
  %59 = shl nuw i64 1, %58
  %60 = and i64 %59, %56
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %72, !prof !462

62:                                               ; preds = %50
  tail call fastcc void @SET_BIT(ptr noundef nonnull %16, i32 noundef %52) #17
  %63 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %34) #17
  store i32 0, ptr %5, align 8, !tbaa.struct !448
  store ptr %63, ptr %18, align 8, !tbaa.struct !449
  %64 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %63, ptr noundef nonnull %4) #17, !range !233
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %72, label %66, !prof !463

66:                                               ; preds = %62, %66
  %67 = load ptr, ptr %4, align 8, !tbaa !189
  call fastcc void @VEC_edge_heap_safe_push(ptr noundef nonnull %3, ptr noundef %67) #17
  call fastcc void @ei_next(ptr noundef nonnull %5) #17
  %68 = load i32, ptr %5, align 8
  %69 = load ptr, ptr %18, align 8
  %70 = call fastcc zeroext i8 @ei_cond(i32 %68, ptr %69, ptr noundef nonnull %4) #17, !range !233
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %72, label %66, !prof !464, !llvm.loop !465

72:                                               ; preds = %66, %62, %50, %39
  %73 = load ptr, ptr %3, align 8
  %74 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %73) #17
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %31, !prof !466

76:                                               ; preds = %72, %31, %41, %21
  %77 = phi i8 [ 1, %21 ], [ 0, %41 ], [ 0, %31 ], [ 1, %72 ]
  call fastcc void @VEC_edge_heap_free(ptr noundef nonnull %3) #17
  %78 = load ptr, ptr %16, align 8, !tbaa !467
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
define internal fastcc i64 @va_list_counter_bump(ptr nocapture noundef %0, ptr noundef %1, ptr noundef readonly %2, i8 noundef zeroext %3) unnamed_addr #1 !prof !469 !PGOFuncName !470 {
  %5 = getelementptr inbounds %struct.stdarg_info, ptr %0, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !300
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %32, !prof !471

8:                                                ; preds = %4
  %9 = load ptr, ptr @cfun, align 8, !tbaa !189
  %10 = getelementptr inbounds %struct.function, ptr %9, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !472
  %12 = getelementptr inbounds %struct.gimple_df, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !473
  %14 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %13) #17
  %15 = zext i32 %14 to i64
  %16 = shl nuw nsw i64 %15, 2
  %17 = tail call ptr @xmalloc(i64 noundef %16) #16
  store ptr %17, ptr %5, align 8, !tbaa !300
  %18 = load ptr, ptr @cfun, align 8, !tbaa !189
  %19 = getelementptr inbounds %struct.function, ptr %18, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !472
  %21 = getelementptr inbounds %struct.gimple_df, ptr %20, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !473
  %23 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %22) #17
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %32, label %25, !prof !477

25:                                               ; preds = %8, %25
  %26 = phi i64 [ %28, %25 ], [ 0, %8 ]
  %27 = getelementptr inbounds i32, ptr %17, i64 %26
  store i32 -1, ptr %27, align 4, !tbaa !265
  %28 = add nuw nsw i64 %26, 1
  %29 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %22) #17
  %30 = zext i32 %29 to i64
  %31 = icmp ult i64 %28, %30
  br i1 %31, label %25, label %32, !prof !478, !llvm.loop !479

32:                                               ; preds = %25, %8, %4
  %33 = icmp eq i8 %3, 0
  %34 = load ptr, ptr @cfun, align 8, !tbaa !189
  %35 = getelementptr inbounds %struct.function, ptr %34, i64 0, i32 20
  %36 = load i32, ptr %35, align 8
  %37 = lshr i32 %36, 8
  %38 = select i1 %33, i32 %37, i32 %36, !prof !480
  %39 = and i32 %38, 255
  %40 = zext nneg i32 %39 to i64
  %41 = icmp eq ptr %2, null
  br i1 %41, label %176, label %42, !prof !481

42:                                               ; preds = %32
  %43 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  br label %44

44:                                               ; preds = %42, %122
  %45 = phi ptr [ %2, %42 ], [ %124, %122 ]
  %46 = phi i64 [ 0, %42 ], [ %123, %122 ]
  %47 = load ptr, ptr %5, align 8, !tbaa !300
  %48 = getelementptr inbounds %struct.tree_ssa_name, ptr %45, i64 0, i32 3
  %49 = load i32, ptr %48, align 8, !tbaa !224
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i32, ptr %47, i64 %50
  %52 = load i32, ptr %51, align 4, !tbaa !265
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %60, label %54, !prof !482

54:                                               ; preds = %44
  %55 = icmp eq i32 %39, 255
  br i1 %55, label %126, label %56, !prof !483

56:                                               ; preds = %54
  %57 = sext i32 %52 to i64
  %58 = sub i64 %46, %40
  %59 = add i64 %58, %57
  br label %126

60:                                               ; preds = %44
  %61 = getelementptr inbounds %struct.tree_ssa_name, ptr %45, i64 0, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !224
  %63 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %62) #17, !range !233
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %176, label %65, !prof !484

65:                                               ; preds = %60
  %66 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %62) #17
  %67 = icmp eq ptr %66, %45
  br i1 %67, label %68, label %176, !prof !485

68:                                               ; preds = %65
  %69 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %62) #17, !range !277
  %70 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %69) #17, !range !278
  %71 = icmp eq i32 %70, 3
  br i1 %71, label %75, label %72, !prof !486

72:                                               ; preds = %68
  %73 = tail call fastcc zeroext i8 @gimple_assign_cast_p(ptr noundef %62) #17, !range !233
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %80, label %75, !prof !487

75:                                               ; preds = %72, %68
  %76 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %62) #17
  %77 = load i64, ptr %76, align 8
  %78 = and i64 %77, 65535
  %79 = icmp eq i64 %78, 141
  br i1 %79, label %122, label %80, !prof !488, !llvm.loop !489

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
  br i1 %86, label %87, label %95, !prof !354

87:                                               ; preds = %82
  %88 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %62) #17
  %89 = tail call i32 @host_integerp(ptr noundef %88, i32 noundef 1) #16
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %95, label %91, !prof !355

91:                                               ; preds = %87
  %92 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %62) #17
  %93 = tail call i64 @tree_low_cst(ptr noundef %92, i32 noundef 1) #16
  %94 = add i64 %93, %46
  br label %122, !llvm.loop !489

95:                                               ; preds = %80, %87, %82
  br i1 %71, label %96, label %176, !prof !361

96:                                               ; preds = %95
  %97 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %62) #17
  %98 = load i64, ptr %1, align 8
  %99 = trunc i64 %98 to i32
  %100 = and i32 %99, 65535
  %101 = load i64, ptr %97, align 8
  %102 = trunc i64 %101 to i32
  %103 = and i32 %102, 65535
  %104 = icmp eq i32 %100, %103
  br i1 %104, label %105, label %176, !prof !361

105:                                              ; preds = %96
  %106 = icmp eq i32 %100, 41
  br i1 %106, label %107, label %120, !prof !349

107:                                              ; preds = %105
  %108 = tail call ptr @get_base_address(ptr noundef nonnull %1) #16
  %109 = tail call ptr @get_base_address(ptr noundef nonnull %97) #16
  %110 = icmp eq ptr %108, %109
  br i1 %110, label %111, label %176

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct.tree_exp, ptr %97, i64 1
  %113 = load ptr, ptr %112, align 8, !tbaa !224
  %114 = load i64, ptr %113, align 8
  %115 = and i64 %114, 65535
  %116 = icmp eq i64 %115, 31
  br i1 %116, label %117, label %176

117:                                              ; preds = %111
  %118 = load ptr, ptr %43, align 8, !tbaa !224
  %119 = icmp eq ptr %118, %113
  br i1 %119, label %126, label %176

120:                                              ; preds = %105
  %121 = icmp eq ptr %97, %1
  br i1 %121, label %126, label %176, !prof !361

122:                                              ; preds = %75, %91
  %123 = phi i64 [ %94, %91 ], [ %46, %75 ]
  %124 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %62) #17
  %125 = icmp eq ptr %124, null
  br i1 %125, label %126, label %44, !prof !490

126:                                              ; preds = %122, %117, %120, %54, %56
  %127 = phi i64 [ 255, %54 ], [ %59, %56 ], [ %46, %120 ], [ %46, %117 ], [ %123, %122 ]
  br i1 %41, label %176, label %128, !prof !247

128:                                              ; preds = %126
  %129 = add i64 %127, %40
  br label %130

130:                                              ; preds = %128, %172
  %131 = phi ptr [ %174, %172 ], [ %2, %128 ]
  %132 = phi i64 [ %173, %172 ], [ %129, %128 ]
  %133 = load ptr, ptr %5, align 8, !tbaa !300
  %134 = getelementptr inbounds %struct.tree_ssa_name, ptr %131, i64 0, i32 3
  %135 = load i32, ptr %134, align 8, !tbaa !224
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds i32, ptr %133, i64 %136
  %138 = load i32, ptr %137, align 4, !tbaa !265
  %139 = icmp eq i32 %138, -1
  br i1 %139, label %140, label %176, !prof !482

140:                                              ; preds = %130
  %141 = icmp ugt i64 %132, 254
  %142 = trunc i64 %132 to i32
  %143 = select i1 %141, i32 255, i32 %142, !prof !484
  store i32 %143, ptr %137, align 4, !tbaa !265
  %144 = getelementptr inbounds %struct.tree_ssa_name, ptr %131, i64 0, i32 2
  %145 = load ptr, ptr %144, align 8, !tbaa !224
  %146 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %145) #17, !range !277
  %147 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %146) #17, !range !278
  %148 = icmp eq i32 %147, 3
  br i1 %148, label %152, label %149, !prof !486

149:                                              ; preds = %140
  %150 = tail call fastcc zeroext i8 @gimple_assign_cast_p(ptr noundef %145) #17, !range !233
  %151 = icmp eq i8 %150, 0
  br i1 %151, label %157, label %152, !prof !487

152:                                              ; preds = %149, %140
  %153 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %145) #17
  %154 = load i64, ptr %153, align 8
  %155 = and i64 %154, 65535
  %156 = icmp eq i64 %155, 141
  br i1 %156, label %172, label %157, !prof !488, !llvm.loop !491

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
  br i1 %163, label %164, label %176, !prof !354

164:                                              ; preds = %159
  %165 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %145) #17
  %166 = tail call i32 @host_integerp(ptr noundef %165, i32 noundef 1) #16
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %176, label %168, !prof !355

168:                                              ; preds = %164
  %169 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %145) #17
  %170 = tail call i64 @tree_low_cst(ptr noundef %169, i32 noundef 1) #16
  %171 = sub i64 %132, %170
  br label %172, !llvm.loop !491

172:                                              ; preds = %152, %168
  %173 = phi i64 [ %171, %168 ], [ %132, %152 ]
  %174 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %145) #17
  %175 = icmp eq ptr %174, null
  br i1 %175, label %176, label %130, !prof !492

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
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #8 !prof !493 !PGOFuncName !494 {
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #1 !prof !495 !PGOFuncName !496 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #17, !range !233
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8, !prof !497

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #17
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !189
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_edge_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #1 !prof !498 !PGOFuncName !499 {
  tail call fastcc void @VEC_edge_heap_reserve(ptr noundef %0) #17
  %3 = load ptr, ptr %0, align 8, !tbaa !189
  tail call fastcc void @VEC_edge_base_quick_push(ptr noundef %3, ptr noundef %1) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #1 !prof !498 !PGOFuncName !500 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #17
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7, !prof !501

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #17
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #17
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14, !prof !502

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.14, i32 noundef 738, ptr noundef nonnull @.str.2) #16
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !503
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !503
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #7 !prof !505 !PGOFuncName !506 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !507

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !508
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc ptr @VEC_edge_base_pop(ptr nocapture noundef %0) unnamed_addr #12 !prof !510 !PGOFuncName !511 {
  %2 = load i32, ptr %0, align 8, !tbaa !508
  %3 = add i32 %2, -1
  store i32 %3, ptr %0, align 8, !tbaa !508
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !189
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @SET_BIT(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #13 !prof !512 !PGOFuncName !513 {
  %3 = load ptr, ptr %0, align 8, !tbaa !467
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %11, !prof !514

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
  %15 = load i64, ptr %14, align 8, !tbaa !437
  %16 = and i32 %1, 63
  %17 = zext nneg i32 %16 to i64
  %18 = shl nuw i64 1, %17
  %19 = and i64 %15, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %11
  %22 = getelementptr inbounds i8, ptr %3, i64 %13
  %23 = load i8, ptr %22, align 1, !tbaa !224
  %24 = add i8 %23, 1
  store i8 %24, ptr %22, align 1, !tbaa !224
  br label %25

25:                                               ; preds = %5, %11, %21
  %26 = phi i64 [ %10, %5 ], [ %13, %11 ], [ %13, %21 ]
  %27 = phi i64 [ %8, %5 ], [ %18, %11 ], [ %18, %21 ]
  %28 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %26
  %29 = load i64, ptr %28, align 8, !tbaa !437
  %30 = or i64 %29, %27
  store i64 %30, ptr %28, align 8, !tbaa !437
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_edge_heap_free(ptr nocapture noundef %0) unnamed_addr #14 !prof !515 !PGOFuncName !516 {
  %2 = load ptr, ptr %0, align 8, !tbaa !189
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !446

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #17
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !189
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #1 !prof !495 !PGOFuncName !517 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #17
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !518

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
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #1 !prof !498 !PGOFuncName !519 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #17
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !501

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #17
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #17
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #1 !prof !520 !PGOFuncName !521 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !522

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.14, i32 noundef 687, ptr noundef nonnull @.str.2) #16
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !189
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #7 !prof !498 !PGOFuncName !523 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !189
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_edge_heap_reserve(ptr nocapture noundef %0) unnamed_addr #1 !prof !498 !PGOFuncName !524 {
  %2 = load ptr, ptr %0, align 8, !tbaa !189
  %3 = tail call fastcc i32 @VEC_edge_base_space(ptr noundef %2) #17
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !525

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef 1) #16
  store ptr %6, ptr %0, align 8, !tbaa !189
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_edge_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #12 !prof !498 !PGOFuncName !526 {
  %3 = load i32, ptr %0, align 8, !tbaa !508
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !508
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !189
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_space(ptr noundef readonly %0) unnamed_addr #7 !prof !498 !PGOFuncName !527 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3, !prof !528

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !529
  %6 = load i32, ptr %0, align 8, !tbaa !508
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
define internal fastcc i32 @VEC_tree_base_length(ptr noundef readonly %0) unnamed_addr #7 !prof !530 !PGOFuncName !531 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !532

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !533
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @gimple_assign_cast_p(ptr noundef %0) unnamed_addr #1 !prof !535 !PGOFuncName !536 {
  %2 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %0) #17, !range !233
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %13, label %4, !prof !537

4:                                                ; preds = %1
  %5 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #17, !range !277
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
define internal fastcc nonnull ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #1 !prof !538 !PGOFuncName !539 {
  %3 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %1) #17
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #1 !prof !538 !PGOFuncName !540 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !224
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %7, !prof !541

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 3103, ptr noundef nonnull @.str.2) #16
  br label %7

7:                                                ; preds = %2, %6
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %8
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_expr_code(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !382 !PGOFuncName !542 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #17, !range !278
  %3 = trunc i32 %2 to i8
  switch i8 %3, label %7 [
    i8 6, label %4
    i8 1, label %4
    i8 8, label %8
  ], !prof !543

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
define internal fastcc i32 @gimple_num_ops(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !385 !PGOFuncName !544 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !224
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @va_list_counter_op(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4) unnamed_addr #1 !prof !388 !PGOFuncName !545 {
  %6 = getelementptr inbounds %struct.stdarg_info, ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !255
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %41

9:                                                ; preds = %5
  store i32 0, ptr %6, align 8, !tbaa !255
  %10 = getelementptr inbounds %struct.stdarg_info, ptr %0, i64 0, i32 4
  %11 = load i32, ptr %10, align 4, !tbaa !235
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %21

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.stdarg_info, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !256
  %16 = getelementptr inbounds %struct.stdarg_info, ptr %0, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !242
  %18 = tail call fastcc zeroext i8 @reachable_at_most_once(ptr noundef %15, ptr noundef %17) #17, !range !233
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %13
  store i32 1, ptr %6, align 8, !tbaa !255
  br label %21

21:                                               ; preds = %20, %13, %9
  %22 = load ptr, ptr @dump_file, align 8, !tbaa !189
  %23 = icmp eq ptr %22, null
  br i1 %23, label %41, label %24

24:                                               ; preds = %21
  %25 = load i32, ptr @dump_flags, align 4, !tbaa !265
  %26 = and i32 %25, 8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %41, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.stdarg_info, ptr %0, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !256
  %31 = getelementptr inbounds %struct.basic_block_def, ptr %30, i64 0, i32 9
  %32 = load i32, ptr %31, align 8, !tbaa !348
  %33 = load i32, ptr %6, align 8, !tbaa !255
  %34 = icmp eq i32 %33, 0
  %35 = select i1 %34, ptr @.str.13, ptr @.str.12
  %36 = getelementptr inbounds %struct.stdarg_info, ptr %0, i64 0, i32 7
  %37 = load ptr, ptr %36, align 8, !tbaa !242
  %38 = getelementptr inbounds %struct.basic_block_def, ptr %37, i64 0, i32 9
  %39 = load i32, ptr %38, align 8, !tbaa !348
  %40 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %22, ptr noundef nonnull @.str.11, i32 noundef %32, ptr noundef nonnull %35, i32 noundef %39) #17
  br label %41

41:                                               ; preds = %21, %24, %28, %5
  %42 = icmp eq i8 %4, 0
  %43 = load i32, ptr %6, align 8, !tbaa !255
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
  %52 = load ptr, ptr @cfun, align 8, !tbaa !189
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
  %78 = load ptr, ptr @cfun, align 8, !tbaa !189
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
define internal fastcc ptr @op_iter_init_tree(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !prof !546 !PGOFuncName !547 {
  tail call fastcc void @op_iter_init(ptr noundef %0, ptr noundef %1) #17
  %3 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 1, ptr %3, align 4, !tbaa !335
  %4 = tail call fastcc ptr @op_iter_next_tree(ptr noundef %0) #17
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @op_iter_next_tree(ptr nocapture noundef %0) unnamed_addr #5 !prof !548 !PGOFuncName !549 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !368
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !550

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.use_optype_d, ptr %3, i64 0, i32 1
  %7 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %6) #17
  %8 = load ptr, ptr %3, align 8, !tbaa !370
  store ptr %8, ptr %2, align 8, !tbaa !368
  br label %19

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !551
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13, !prof !552

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.def_optype_d, ptr %11, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !553
  %16 = tail call fastcc ptr @get_def_from_ptr(ptr noundef %15) #17
  %17 = load ptr, ptr %11, align 8, !tbaa !555
  store ptr %17, ptr %10, align 8, !tbaa !551
  br label %19

18:                                               ; preds = %9
  store i8 1, ptr %0, align 8, !tbaa !330
  br label %19

19:                                               ; preds = %18, %13, %5
  %20 = phi ptr [ %7, %5 ], [ %16, %13 ], [ null, %18 ]
  ret ptr %20
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @op_iter_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #12 !prof !546 !PGOFuncName !556 {
  %3 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr null, ptr %3, align 8, !tbaa !551
  %4 = tail call fastcc ptr @gimple_use_ops(ptr noundef %1) #17
  %5 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr %4, ptr %5, align 8, !tbaa !368
  store i8 0, ptr %0, align 8, !tbaa !330
  %6 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_use_ops(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !546 !PGOFuncName !557 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #17, !range !233
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4, !prof !558

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !224
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

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!186}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 82626029451}
!4 = !{!"MaxCount", i64 1293550144}
!5 = !{!"MaxInternalCount", i64 1293550144}
!6 = !{!"MaxFunctionCount", i64 1044599277}
!7 = !{!"NumCounts", i64 195328}
!8 = !{!"NumFunctions", i64 22513}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1293550144, i32 1}
!14 = !{i32 100000, i64 238791438, i32 19}
!15 = !{i32 200000, i64 112342198, i32 73}
!16 = !{i32 300000, i64 73330888, i32 164}
!17 = !{i32 400000, i64 47991750, i32 301}
!18 = !{i32 500000, i64 28421743, i32 535}
!19 = !{i32 600000, i64 17738858, i32 910}
!20 = !{i32 700000, i64 10364112, i32 1511}
!21 = !{i32 800000, i64 5164088, i32 2659}
!22 = !{i32 900000, i64 1953302, i32 5305}
!23 = !{i32 950000, i64 847371, i32 8456}
!24 = !{i32 990000, i64 164662, i32 16525}
!25 = !{i32 999000, i64 16513, i32 27926}
!26 = !{i32 999900, i64 2384, i32 37409}
!27 = !{i32 999990, i64 310, i32 44222}
!28 = !{i32 999999, i64 42, i32 49712}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 7, !"openmp", i32 51}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{i32 5, !"CG Profile", !35}
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185}
!36 = !{ptr @execute_optimize_stdarg, ptr @bitmap_obstack_alloc_stat, i64 92}
!37 = !{ptr @execute_optimize_stdarg, ptr @is_gimple_reg_type, i64 46}
!38 = !{ptr @execute_optimize_stdarg, ptr @fancy_abort, i64 1}
!39 = !{ptr @execute_optimize_stdarg, ptr @gsi_start_bb, i64 580}
!40 = !{ptr @execute_optimize_stdarg, ptr @gsi_end_p, i64 3045}
!41 = !{ptr @execute_optimize_stdarg, ptr @gsi_stmt, i64 2153}
!42 = !{ptr @execute_optimize_stdarg, ptr @is_gimple_call, i64 2005}
!43 = !{ptr @execute_optimize_stdarg, ptr @gimple_call_fndecl, i64 481}
!44 = !{ptr @execute_optimize_stdarg, ptr @gimple_call_arg, i64 35}
!45 = !{ptr @execute_optimize_stdarg, ptr @integer_zerop, i64 1}
!46 = !{ptr @execute_optimize_stdarg, ptr @is_global_var, i64 33}
!47 = !{ptr @execute_optimize_stdarg, ptr @bitmap_set_bit, i64 33}
!48 = !{ptr @execute_optimize_stdarg, ptr @gsi_next, i64 2150}
!49 = !{ptr @execute_optimize_stdarg, ptr @calculate_dominance_info, i64 33}
!50 = !{ptr @execute_optimize_stdarg, ptr @gsi_start_phis, i64 315}
!51 = !{ptr @execute_optimize_stdarg, ptr @gimple_phi_result_ptr, i64 148}
!52 = !{ptr @execute_optimize_stdarg, ptr @get_def_from_ptr, i64 148}
!53 = !{ptr @execute_optimize_stdarg, ptr @is_gimple_reg, i64 148}
!54 = !{ptr @execute_optimize_stdarg, ptr @op_iter_init_phiuse, i64 92}
!55 = !{ptr @execute_optimize_stdarg, ptr @op_iter_done, i64 309}
!56 = !{ptr @execute_optimize_stdarg, ptr @get_use_from_ptr, i64 217}
!57 = !{ptr @execute_optimize_stdarg, ptr @va_list_ptr_read, i64 593}
!58 = !{ptr @execute_optimize_stdarg, ptr @va_list_ptr_write, i64 562}
!59 = !{ptr @execute_optimize_stdarg, ptr @check_va_list_escapes, i64 645}
!60 = !{ptr @execute_optimize_stdarg, ptr @op_iter_next_use, i64 217}
!61 = !{ptr @execute_optimize_stdarg, ptr @is_gimple_assign, i64 950}
!62 = !{ptr @execute_optimize_stdarg, ptr @gimple_assign_lhs, i64 558}
!63 = !{ptr @execute_optimize_stdarg, ptr @gimple_assign_rhs1, i64 558}
!64 = !{ptr @execute_optimize_stdarg, ptr @gimple_assign_rhs_code, i64 2400}
!65 = !{ptr @execute_optimize_stdarg, ptr @get_gimple_rhs_class, i64 976}
!66 = !{ptr @execute_optimize_stdarg, ptr @gimple_assign_rhs2, i64 33}
!67 = !{ptr @execute_optimize_stdarg, ptr @va_list_counter_struct_op, i64 1}
!68 = !{ptr @execute_optimize_stdarg, ptr @is_gimple_debug, i64 392}
!69 = !{ptr @execute_optimize_stdarg, ptr @walk_gimple_op, i64 905}
!70 = !{ptr @execute_optimize_stdarg, ptr @fputs, i64 3}
!71 = !{ptr @execute_optimize_stdarg, ptr @print_gimple_stmt, i64 1}
!72 = !{ptr @execute_optimize_stdarg, ptr @fputc, i64 1}
!73 = !{ptr @execute_optimize_stdarg, ptr @check_all_va_list_escapes, i64 14}
!74 = !{ptr @execute_optimize_stdarg, ptr @bitmap_obstack_free, i64 92}
!75 = !{ptr @execute_optimize_stdarg, ptr @free, i64 46}
!76 = !{ptr @execute_optimize_stdarg, ptr @fprintf, i64 1}
!77 = !{ptr @gsi_start_bb, ptr @bb_seq, i64 828}
!78 = !{ptr @gsi_start_bb, ptr @gimple_seq_first, i64 828}
!79 = !{ptr @is_gimple_call, ptr @gimple_code, i64 2310}
!80 = !{ptr @gimple_call_fndecl, ptr @gimple_call_fn, i64 552}
!81 = !{ptr @gimple_call_arg, ptr @gimple_op, i64 48}
!82 = !{ptr @op_iter_init_phiuse, ptr @gimple_phi_result, i64 88}
!83 = !{ptr @op_iter_init_phiuse, ptr @clear_and_done_ssa_iter, i64 88}
!84 = !{ptr @op_iter_init_phiuse, ptr @is_gimple_reg, i64 88}
!85 = !{ptr @op_iter_init_phiuse, ptr @gimple_phi_num_args, i64 87}
!86 = !{ptr @op_iter_init_phiuse, ptr @op_iter_next_use, i64 87}
!87 = !{ptr @va_list_ptr_read, ptr @bitmap_bit_p, i64 193}
!88 = !{ptr @va_list_ptr_read, ptr @is_global_var, i64 33}
!89 = !{ptr @va_list_ptr_read, ptr @reachable_at_most_once, i64 30}
!90 = !{ptr @va_list_ptr_read, ptr @va_list_counter_bump, i64 26}
!91 = !{ptr @va_list_ptr_read, ptr @bitmap_set_bit, i64 25}
!92 = !{ptr @va_list_ptr_write, ptr @bitmap_bit_p, i64 24}
!93 = !{ptr @va_list_ptr_write, ptr @va_list_counter_bump, i64 9}
!94 = !{ptr @check_va_list_escapes, ptr @bitmap_bit_p, i64 189}
!95 = !{ptr @check_va_list_escapes, ptr @is_global_var, i64 28}
!96 = !{ptr @check_va_list_escapes, ptr @reachable_at_most_once, i64 3}
!97 = !{ptr @check_va_list_escapes, ptr @va_list_counter_bump, i64 21}
!98 = !{ptr @check_va_list_escapes, ptr @bitmap_set_bit, i64 20}
!99 = !{ptr @op_iter_next_use, ptr @gimple_phi_arg_imm_use_ptr, i64 209}
!100 = !{ptr @is_gimple_assign, ptr @gimple_code, i64 1088}
!101 = !{ptr @gimple_assign_lhs, ptr @gimple_op, i64 617}
!102 = !{ptr @gimple_assign_rhs1, ptr @gimple_op, i64 2514}
!103 = !{ptr @gimple_assign_rhs_code, ptr @gimple_expr_code, i64 2565}
!104 = !{ptr @gimple_assign_rhs_code, ptr @get_gimple_rhs_class, i64 2565}
!105 = !{ptr @gimple_assign_rhs_code, ptr @gimple_assign_rhs1, i64 1765}
!106 = !{ptr @gimple_assign_rhs2, ptr @gimple_num_ops, i64 85}
!107 = !{ptr @gimple_assign_rhs2, ptr @gimple_op, i64 84}
!108 = !{ptr @is_gimple_debug, ptr @gimple_code, i64 984}
!109 = !{ptr @find_va_list_reference, ptr @bitmap_bit_p, i64 1297}
!110 = !{ptr @check_all_va_list_escapes, ptr @gsi_start_bb, i64 135}
!111 = !{ptr @check_all_va_list_escapes, ptr @gsi_end_p, i64 593}
!112 = !{ptr @check_all_va_list_escapes, ptr @gsi_stmt, i64 477}
!113 = !{ptr @check_all_va_list_escapes, ptr @is_gimple_debug, i64 477}
!114 = !{ptr @check_all_va_list_escapes, ptr @op_iter_init_tree, i64 477}
!115 = !{ptr @check_all_va_list_escapes, ptr @op_iter_done, i64 1177}
!116 = !{ptr @check_all_va_list_escapes, ptr @bitmap_bit_p, i64 743}
!117 = !{ptr @check_all_va_list_escapes, ptr @is_gimple_assign, i64 49}
!118 = !{ptr @check_all_va_list_escapes, ptr @gimple_assign_rhs1, i64 32}
!119 = !{ptr @check_all_va_list_escapes, ptr @gimple_assign_rhs_code, i64 64}
!120 = !{ptr @check_all_va_list_escapes, ptr @host_integerp, i64 7}
!121 = !{ptr @check_all_va_list_escapes, ptr @tree_low_cst, i64 6}
!122 = !{ptr @check_all_va_list_escapes, ptr @gimple_assign_rhs2, i64 9}
!123 = !{ptr @check_all_va_list_escapes, ptr @gimple_assign_cast_p, i64 17}
!124 = !{ptr @check_all_va_list_escapes, ptr @get_gimple_rhs_class, i64 9}
!125 = !{ptr @check_all_va_list_escapes, ptr @gimple_assign_lhs, i64 25}
!126 = !{ptr @check_all_va_list_escapes, ptr @op_iter_next_tree, i64 700}
!127 = !{ptr @check_all_va_list_escapes, ptr @gsi_next, i64 458}
!128 = !{ptr @gimple_call_fn, ptr @gimple_op, i64 552}
!129 = !{ptr @gimple_op, ptr @gimple_has_ops, i64 3816}
!130 = !{ptr @gimple_op, ptr @gimple_ops, i64 3815}
!131 = !{ptr @gimple_has_ops, ptr @gimple_code, i64 4423}
!132 = !{ptr @gimple_ops, ptr @gimple_statement_structure, i64 3816}
!133 = !{ptr @gimple_ops, ptr @fancy_abort, i64 1}
!134 = !{ptr @gimple_statement_structure, ptr @gimple_code, i64 3816}
!135 = !{ptr @gimple_statement_structure, ptr @gss_for_code, i64 3816}
!136 = !{ptr @reachable_at_most_once, ptr @dominated_by_p, i64 28}
!137 = !{ptr @reachable_at_most_once, ptr @sbitmap_alloc, i64 28}
!138 = !{ptr @reachable_at_most_once, ptr @sbitmap_zero, i64 28}
!139 = !{ptr @reachable_at_most_once, ptr @ei_start_1, i64 151}
!140 = !{ptr @reachable_at_most_once, ptr @ei_cond, i64 388}
!141 = !{ptr @reachable_at_most_once, ptr @VEC_edge_base_length, i64 242}
!142 = !{ptr @reachable_at_most_once, ptr @VEC_edge_heap_safe_push, i64 237}
!143 = !{ptr @reachable_at_most_once, ptr @ei_next, i64 237}
!144 = !{ptr @reachable_at_most_once, ptr @VEC_edge_base_pop, i64 224}
!145 = !{ptr @reachable_at_most_once, ptr @fancy_abort, i64 1}
!146 = !{ptr @reachable_at_most_once, ptr @SET_BIT, i64 123}
!147 = !{ptr @reachable_at_most_once, ptr @VEC_edge_heap_free, i64 28}
!148 = !{ptr @reachable_at_most_once, ptr @free, i64 56}
!149 = !{ptr @va_list_counter_bump, ptr @VEC_tree_base_length, i64 1146}
!150 = !{ptr @va_list_counter_bump, ptr @xmalloc, i64 25}
!151 = !{ptr @va_list_counter_bump, ptr @is_gimple_assign, i64 70}
!152 = !{ptr @va_list_counter_bump, ptr @gimple_assign_lhs, i64 69}
!153 = !{ptr @va_list_counter_bump, ptr @gimple_assign_rhs_code, i64 139}
!154 = !{ptr @va_list_counter_bump, ptr @get_gimple_rhs_class, i64 139}
!155 = !{ptr @va_list_counter_bump, ptr @gimple_assign_cast_p, i64 61}
!156 = !{ptr @va_list_counter_bump, ptr @gimple_assign_rhs1, i64 342}
!157 = !{ptr @va_list_counter_bump, ptr @gimple_assign_rhs2, i64 187}
!158 = !{ptr @va_list_counter_bump, ptr @host_integerp, i64 97}
!159 = !{ptr @va_list_counter_bump, ptr @tree_low_cst, i64 90}
!160 = !{ptr @ei_cond, ptr @ei_end_p, i64 436}
!161 = !{ptr @ei_cond, ptr @ei_edge, i64 267}
!162 = !{ptr @VEC_edge_heap_safe_push, ptr @VEC_edge_heap_reserve, i64 267}
!163 = !{ptr @VEC_edge_heap_safe_push, ptr @VEC_edge_base_quick_push, i64 267}
!164 = !{ptr @ei_next, ptr @ei_container, i64 533}
!165 = !{ptr @ei_next, ptr @VEC_edge_base_length, i64 267}
!166 = !{ptr @ei_next, ptr @fancy_abort, i64 1}
!167 = !{ptr @VEC_edge_heap_free, ptr @free, i64 28}
!168 = !{ptr @ei_end_p, ptr @ei_container, i64 871}
!169 = !{ptr @ei_end_p, ptr @VEC_edge_base_length, i64 436}
!170 = !{ptr @ei_edge, ptr @ei_container, i64 533}
!171 = !{ptr @ei_edge, ptr @VEC_edge_base_index, i64 267}
!172 = !{ptr @ei_container, ptr @fancy_abort, i64 1}
!173 = !{ptr @VEC_edge_heap_reserve, ptr @VEC_edge_base_space, i64 267}
!174 = !{ptr @VEC_edge_heap_reserve, ptr @vec_heap_p_reserve, i64 41}
!175 = !{ptr @gimple_assign_cast_p, ptr @is_gimple_assign, i64 64}
!176 = !{ptr @gimple_assign_cast_p, ptr @gimple_assign_rhs_code, i64 63}
!177 = !{ptr @gimple_phi_arg_imm_use_ptr, ptr @gimple_phi_arg, i64 210}
!178 = !{ptr @gimple_phi_arg, ptr @fancy_abort, i64 1}
!179 = !{ptr @gimple_expr_code, ptr @gimple_code, i64 2565}
!180 = !{ptr @op_iter_init_tree, ptr @op_iter_init, i64 607}
!181 = !{ptr @op_iter_init_tree, ptr @op_iter_next_tree, i64 607}
!182 = !{ptr @op_iter_next_tree, ptr @get_use_from_ptr, i64 899}
!183 = !{ptr @op_iter_next_tree, ptr @get_def_from_ptr, i64 1}
!184 = !{ptr @op_iter_init, ptr @gimple_use_ops, i64 607}
!185 = !{ptr @gimple_use_ops, ptr @gimple_has_ops, i64 607}
!186 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!187 = !{!"function_entry_count", i64 6652}
!188 = !{!"tree-stdarg.c:gate_optimize_stdarg"}
!189 = !{!190, !190, i64 0}
!190 = !{!"any pointer", !191, i64 0}
!191 = !{!"omnipotent char", !192, i64 0}
!192 = !{!"Simple C/C++ TBAA"}
!193 = !{!"function_entry_count", i64 46}
!194 = !{!"tree-stdarg.c:execute_optimize_stdarg"}
!195 = !{!196, !190, i64 0}
!196 = !{!"stdarg_info", !190, i64 0, !190, i64 8, !190, i64 16, !197, i64 24, !197, i64 28, !191, i64 32, !190, i64 40, !190, i64 48, !190, i64 56}
!197 = !{!"int", !191, i64 0}
!198 = !{!196, !190, i64 8}
!199 = !{!"branch_weights", i32 47, i32 1}
!200 = !{!201, !190, i64 176}
!201 = !{!"lang_hooks", !190, i64 0, !202, i64 8, !190, i64 16, !190, i64 24, !190, i64 32, !190, i64 40, !190, i64 48, !190, i64 56, !190, i64 64, !190, i64 72, !190, i64 80, !190, i64 88, !190, i64 96, !190, i64 104, !190, i64 112, !190, i64 120, !190, i64 128, !190, i64 136, !190, i64 144, !190, i64 152, !190, i64 160, !190, i64 168, !190, i64 176, !190, i64 184, !190, i64 192, !190, i64 200, !190, i64 208, !190, i64 216, !190, i64 224, !190, i64 232, !203, i64 240, !204, i64 248, !205, i64 256, !206, i64 272, !207, i64 432, !208, i64 560, !190, i64 584, !190, i64 592, !190, i64 600, !190, i64 608, !190, i64 616, !190, i64 624, !190, i64 632, !190, i64 640, !190, i64 648, !190, i64 656, !190, i64 664, !191, i64 672}
!202 = !{!"long", !191, i64 0}
!203 = !{!"lang_hooks_for_tree_inlining", !190, i64 0}
!204 = !{!"lang_hooks_for_callgraph", !190, i64 0}
!205 = !{!"lang_hooks_for_tree_dump", !190, i64 0, !190, i64 8}
!206 = !{!"lang_hooks_for_decls", !190, i64 0, !190, i64 8, !190, i64 16, !190, i64 24, !190, i64 32, !190, i64 40, !190, i64 48, !190, i64 56, !190, i64 64, !190, i64 72, !190, i64 80, !190, i64 88, !190, i64 96, !190, i64 104, !190, i64 112, !190, i64 120, !190, i64 128, !190, i64 136, !190, i64 144, !190, i64 152}
!207 = !{!"lang_hooks_for_types", !190, i64 0, !190, i64 8, !190, i64 16, !190, i64 24, !190, i64 32, !190, i64 40, !190, i64 48, !190, i64 56, !190, i64 64, !190, i64 72, !190, i64 80, !190, i64 88, !190, i64 96, !190, i64 104, !190, i64 112, !191, i64 120}
!208 = !{!"lang_hooks_for_lto", !190, i64 0, !190, i64 8, !190, i64 16}
!209 = !{!210, !190, i64 1328}
!210 = !{!"gcc_target", !211, i64 0, !213, i64 368, !214, i64 664, !197, i64 744, !190, i64 752, !190, i64 760, !190, i64 768, !190, i64 776, !190, i64 784, !190, i64 792, !190, i64 800, !190, i64 808, !190, i64 816, !190, i64 824, !190, i64 832, !190, i64 840, !190, i64 848, !190, i64 856, !190, i64 864, !190, i64 872, !190, i64 880, !190, i64 888, !190, i64 896, !190, i64 904, !190, i64 912, !190, i64 920, !190, i64 928, !190, i64 936, !190, i64 944, !190, i64 952, !190, i64 960, !190, i64 968, !190, i64 976, !190, i64 984, !190, i64 992, !190, i64 1000, !190, i64 1008, !190, i64 1016, !190, i64 1024, !190, i64 1032, !190, i64 1040, !190, i64 1048, !190, i64 1056, !202, i64 1064, !202, i64 1072, !190, i64 1080, !190, i64 1088, !190, i64 1096, !190, i64 1104, !190, i64 1112, !190, i64 1120, !190, i64 1128, !190, i64 1136, !190, i64 1144, !190, i64 1152, !190, i64 1160, !190, i64 1168, !215, i64 1176, !190, i64 1232, !190, i64 1240, !190, i64 1248, !190, i64 1256, !190, i64 1264, !190, i64 1272, !190, i64 1280, !190, i64 1288, !190, i64 1296, !190, i64 1304, !190, i64 1312, !190, i64 1320, !190, i64 1328, !190, i64 1336, !190, i64 1344, !190, i64 1352, !190, i64 1360, !190, i64 1368, !190, i64 1376, !190, i64 1384, !190, i64 1392, !190, i64 1400, !190, i64 1408, !190, i64 1416, !190, i64 1424, !190, i64 1432, !190, i64 1440, !190, i64 1448, !190, i64 1456, !202, i64 1464, !216, i64 1472, !190, i64 1664, !190, i64 1672, !190, i64 1680, !190, i64 1688, !190, i64 1696, !190, i64 1704, !190, i64 1712, !190, i64 1720, !190, i64 1728, !190, i64 1736, !190, i64 1744, !190, i64 1752, !190, i64 1760, !190, i64 1768, !190, i64 1776, !217, i64 1784, !218, i64 1792, !219, i64 1896, !220, i64 1968, !190, i64 2016, !191, i64 2024, !191, i64 2025, !191, i64 2026, !191, i64 2027, !191, i64 2028, !191, i64 2029, !191, i64 2030, !191, i64 2031, !191, i64 2032, !191, i64 2033, !191, i64 2034, !191, i64 2035}
!211 = !{!"asm_out", !190, i64 0, !190, i64 8, !190, i64 16, !212, i64 24, !212, i64 56, !190, i64 88, !190, i64 96, !190, i64 104, !190, i64 112, !190, i64 120, !190, i64 128, !190, i64 136, !190, i64 144, !190, i64 152, !190, i64 160, !190, i64 168, !190, i64 176, !190, i64 184, !190, i64 192, !190, i64 200, !190, i64 208, !190, i64 216, !190, i64 224, !190, i64 232, !190, i64 240, !190, i64 248, !190, i64 256, !190, i64 264, !190, i64 272, !190, i64 280, !190, i64 288, !190, i64 296, !190, i64 304, !190, i64 312, !190, i64 320, !190, i64 328, !190, i64 336, !190, i64 344, !190, i64 352, !190, i64 360}
!212 = !{!"asm_int_op", !190, i64 0, !190, i64 8, !190, i64 16, !190, i64 24}
!213 = !{!"sched", !190, i64 0, !190, i64 8, !190, i64 16, !190, i64 24, !190, i64 32, !190, i64 40, !190, i64 48, !190, i64 56, !190, i64 64, !190, i64 72, !190, i64 80, !190, i64 88, !190, i64 96, !190, i64 104, !190, i64 112, !190, i64 120, !190, i64 128, !190, i64 136, !190, i64 144, !190, i64 152, !190, i64 160, !190, i64 168, !190, i64 176, !190, i64 184, !190, i64 192, !190, i64 200, !190, i64 208, !190, i64 216, !190, i64 224, !190, i64 232, !190, i64 240, !190, i64 248, !190, i64 256, !190, i64 264, !190, i64 272, !190, i64 280, !190, i64 288}
!214 = !{!"vectorize", !190, i64 0, !190, i64 8, !190, i64 16, !190, i64 24, !190, i64 32, !190, i64 40, !190, i64 48, !190, i64 56, !190, i64 64, !190, i64 72}
!215 = !{!"addr_space", !190, i64 0, !190, i64 8, !190, i64 16, !190, i64 24, !190, i64 32, !190, i64 40, !190, i64 48}
!216 = !{!"calls", !190, i64 0, !190, i64 8, !190, i64 16, !190, i64 24, !190, i64 32, !190, i64 40, !190, i64 48, !190, i64 56, !190, i64 64, !190, i64 72, !190, i64 80, !190, i64 88, !190, i64 96, !190, i64 104, !190, i64 112, !190, i64 120, !190, i64 128, !190, i64 136, !190, i64 144, !190, i64 152, !190, i64 160, !190, i64 168, !190, i64 176, !190, i64 184}
!217 = !{!"c", !190, i64 0}
!218 = !{!"cxx", !190, i64 0, !190, i64 8, !190, i64 16, !190, i64 24, !190, i64 32, !190, i64 40, !190, i64 48, !190, i64 56, !190, i64 64, !190, i64 72, !190, i64 80, !190, i64 88, !190, i64 96}
!219 = !{!"emutls", !190, i64 0, !190, i64 8, !190, i64 16, !190, i64 24, !190, i64 32, !190, i64 40, !190, i64 48, !190, i64 56, !191, i64 64, !191, i64 65}
!220 = !{!"target_option_hooks", !190, i64 0, !190, i64 8, !190, i64 16, !190, i64 24, !190, i64 32, !190, i64 40}
!221 = !{!222, !190, i64 48}
!222 = !{!"function", !190, i64 0, !190, i64 8, !190, i64 16, !190, i64 24, !190, i64 32, !190, i64 40, !190, i64 48, !190, i64 56, !190, i64 64, !190, i64 72, !190, i64 80, !190, i64 88, !190, i64 96, !197, i64 104, !197, i64 108, !197, i64 112, !197, i64 116, !197, i64 120, !197, i64 124, !190, i64 128, !197, i64 136, !197, i64 137, !197, i64 138, !197, i64 138, !197, i64 138, !197, i64 138, !197, i64 138, !197, i64 138, !197, i64 138, !197, i64 139, !197, i64 139, !197, i64 139, !197, i64 139, !197, i64 139, !197, i64 139, !197, i64 139}
!223 = !{!"branch_weights", i32 1, i32 94, i32 1}
!224 = !{!191, !191, i64 0}
!225 = !{!"branch_weights", i32 1, i32 47}
!226 = !{!222, !190, i64 8}
!227 = !{!228, !190, i64 0}
!228 = !{!"control_flow_graph", !190, i64 0, !190, i64 8, !190, i64 16, !197, i64 24, !197, i64 28, !197, i64 32, !190, i64 40, !197, i64 48, !191, i64 52, !191, i64 60, !197, i64 68, !197, i64 72}
!229 = !{!230, !190, i64 56}
!230 = !{!"basic_block_def", !190, i64 0, !190, i64 8, !190, i64 16, !190, i64 24, !191, i64 32, !190, i64 48, !190, i64 56, !191, i64 64, !202, i64 72, !197, i64 80, !197, i64 84, !197, i64 88, !197, i64 92, !197, i64 96}
!231 = !{!228, !190, i64 8}
!232 = !{!"branch_weights", i32 47, i32 354}
!233 = !{i8 0, i8 2}
!234 = !{!"branch_weights", i32 353, i32 1}
!235 = !{!196, !197, i64 28}
!236 = !{!"branch_weights", i32 1016, i32 317}
!237 = !{!"branch_weights", i32 3, i32 315}
!238 = !{!"branch_weights", i32 223, i32 93}
!239 = !{!"branch_weights", i32 175, i32 49, i32 1, i32 1, i32 1}
!240 = !{!"branch_weights", i32 49, i32 1}
!241 = !{!"branch_weights", i32 1, i32 49}
!242 = !{!196, !190, i64 48}
!243 = !{!196, !190, i64 56}
!244 = !{!"branch_weights", i32 979, i32 353}
!245 = distinct !{!245, !246}
!246 = !{!"llvm.loop.mustprogress"}
!247 = !{!"branch_weights", i32 0, i32 -2147483648}
!248 = !{!"branch_weights", i32 141, i32 2163}
!249 = !{!"branch_weights", i32 1, i32 183}
!250 = !{!"branch_weights", i32 45, i32 1}
!251 = !{!252, !190, i64 24}
!252 = !{!"walk_stmt_info", !253, i64 0, !190, i64 24, !190, i64 32, !191, i64 40, !191, i64 41, !191, i64 42, !191, i64 43, !190, i64 48}
!253 = !{!"", !190, i64 0, !190, i64 8, !190, i64 16}
!254 = !{!"branch_weights", i32 22, i32 304}
!255 = !{!196, !197, i64 24}
!256 = !{!196, !190, i64 16}
!257 = !{!"branch_weights", i32 304, i32 1}
!258 = !{!"branch_weights", i32 143, i32 161}
!259 = !{!"branch_weights", i32 55, i32 89}
!260 = !{!"branch_weights", i32 177, i32 1}
!261 = !{!"branch_weights", i32 211, i32 1}
!262 = !{!196, !191, i64 32}
!263 = !{!"branch_weights", i32 205, i32 7}
!264 = !{!"branch_weights", i32 7, i32 1}
!265 = !{!197, !197, i64 0}
!266 = !{!"branch_weights", i32 245, i32 177}
!267 = distinct !{!267, !246}
!268 = !{!"branch_weights", i32 0, i32 143}
!269 = distinct !{!269, !246}
!270 = !{i64 0, i64 8, !189, i64 8, i64 8, !189, i64 16, i64 8, !189}
!271 = !{!"branch_weights", i32 1003, i32 281}
!272 = !{!"branch_weights", i32 303, i32 1}
!273 = !{!"branch_weights", i32 744, i32 237}
!274 = !{!"branch_weights", i32 3, i32 235}
!275 = !{!"branch_weights", i32 1325940, i32 3385800}
!276 = !{!"branch_weights", i32 378, i32 538}
!277 = !{i32 0, i32 65536}
!278 = !{i32 0, i32 256}
!279 = !{!"branch_weights", i32 538, i32 1}
!280 = !{!"branch_weights", i32 364, i32 175}
!281 = !{!"branch_weights", i32 336, i32 29}
!282 = !{!"branch_weights", i32 325, i32 12}
!283 = !{!"branch_weights", i32 32, i32 468}
!284 = !{!"branch_weights", i32 29, i32 4}
!285 = !{!"branch_weights", i32 61, i32 411}
!286 = !{!"branch_weights", i32 5, i32 407}
!287 = !{!"branch_weights", i32 325, i32 83}
!288 = !{!210, !190, i64 1424}
!289 = !{!"branch_weights", i32 378, i32 1}
!290 = !{!"branch_weights", i32 876, i32 1}
!291 = !{!"branch_weights", i32 856, i32 21}
!292 = !{!"branch_weights", i32 21, i32 1}
!293 = !{!"branch_weights", i32 677, i32 303}
!294 = distinct !{!294, !246}
!295 = !{!"branch_weights", i32 1406622087, i32 740861561}
!296 = !{!297, !190, i64 0}
!297 = !{!"bitmap_head_def", !190, i64 0, !190, i64 8, !197, i64 16, !190, i64 24}
!298 = !{!"branch_weights", i32 1, i32 22}
!299 = !{!"branch_weights", i32 2, i32 21}
!300 = !{!196, !190, i64 40}
!301 = !{!"function_entry_count", i64 828}
!302 = !{!"tree-stdarg.c:gsi_start_bb"}
!303 = !{!253, !190, i64 0}
!304 = !{!253, !190, i64 8}
!305 = !{!253, !190, i64 16}
!306 = !{!"function_entry_count", i64 4170}
!307 = !{!"tree-stdarg.c:gsi_end_p"}
!308 = !{!"function_entry_count", i64 3059}
!309 = !{!"tree-stdarg.c:gsi_stmt"}
!310 = !{!311, !190, i64 0}
!311 = !{!"gimple_seq_node_d", !190, i64 0, !190, i64 8, !190, i64 16}
!312 = !{!"function_entry_count", i64 2310}
!313 = !{!"tree-stdarg.c:is_gimple_call"}
!314 = !{!"function_entry_count", i64 552}
!315 = !{!"tree-stdarg.c:gimple_call_fndecl"}
!316 = !{!"branch_weights", i32 549, i32 5}
!317 = !{!"function_entry_count", i64 48}
!318 = !{!"tree-stdarg.c:gimple_call_arg"}
!319 = !{!"function_entry_count", i64 110}
!320 = !{!"tree-stdarg.c:is_global_var"}
!321 = !{!"branch_weights", i32 111, i32 1}
!322 = !{!"function_entry_count", i64 3039}
!323 = !{!"tree-stdarg.c:gsi_next"}
!324 = !{!311, !190, i64 16}
!325 = !{!"function_entry_count", i64 142}
!326 = !{!"tree-stdarg.c:get_def_from_ptr"}
!327 = !{!"tree-stdarg.c:gimple_phi_result_ptr"}
!328 = !{!"function_entry_count", i64 88}
!329 = !{!"tree-stdarg.c:op_iter_init_phiuse"}
!330 = !{!331, !191, i64 0}
!331 = !{!"ssa_operand_iterator_d", !191, i64 0, !197, i64 4, !190, i64 8, !190, i64 16, !197, i64 24, !197, i64 28, !190, i64 32}
!332 = !{!"branch_weights", i32 1, i32 89}
!333 = !{!331, !190, i64 32}
!334 = !{!331, !197, i64 28}
!335 = !{!331, !197, i64 4}
!336 = !{!"function_entry_count", i64 1784}
!337 = !{!"tree-stdarg.c:op_iter_done"}
!338 = !{!"function_entry_count", i64 1109}
!339 = !{!"tree-stdarg.c:get_use_from_ptr"}
!340 = !{!341, !190, i64 24}
!341 = !{!"ssa_use_operand_d", !190, i64 0, !190, i64 8, !191, i64 16, !190, i64 24}
!342 = !{!"function_entry_count", i64 573}
!343 = !{!"tree-stdarg.c:va_list_ptr_read"}
!344 = !{!"branch_weights", i32 160, i32 415}
!345 = !{!"branch_weights", i32 126, i32 35}
!346 = !{!"branch_weights", i32 35, i32 1}
!347 = !{!"branch_weights", i32 7, i32 29}
!348 = !{!230, !197, i64 80}
!349 = !{!"branch_weights", i32 1, i32 29}
!350 = !{!"function_entry_count", i64 545}
!351 = !{!"tree-stdarg.c:va_list_ptr_write"}
!352 = !{!"branch_weights", i32 14, i32 533}
!353 = !{!"branch_weights", i32 3, i32 12}
!354 = !{!"branch_weights", i32 12, i32 1}
!355 = !{!"branch_weights", i32 1, i32 12}
!356 = !{!"function_entry_count", i64 626}
!357 = !{!"tree-stdarg.c:check_va_list_escapes"}
!358 = !{!"branch_weights", i32 44100, i32 88198, i32 210}
!359 = !{!"branch_weights", i32 190, i32 229}
!360 = !{!"branch_weights", i32 162, i32 29}
!361 = !{!"branch_weights", i32 29, i32 1}
!362 = !{!"branch_weights", i32 4, i32 26}
!363 = !{!"branch_weights", i32 4, i32 1}
!364 = !{!"branch_weights", i32 7, i32 23}
!365 = !{!"branch_weights", i32 1, i32 23}
!366 = !{!"function_entry_count", i64 298}
!367 = !{!"tree-stdarg.c:op_iter_next_use"}
!368 = !{!331, !190, i64 16}
!369 = !{!"branch_weights", i32 299, i32 1}
!370 = !{!371, !190, i64 0}
!371 = !{!"use_optype_d", !190, i64 0, !341, i64 8}
!372 = !{!331, !197, i64 24}
!373 = !{!"branch_weights", i32 211, i32 89}
!374 = !{!"function_entry_count", i64 1088}
!375 = !{!"tree-stdarg.c:is_gimple_assign"}
!376 = !{!"function_entry_count", i64 617}
!377 = !{!"tree-stdarg.c:gimple_assign_lhs"}
!378 = !{!"function_entry_count", i64 2514}
!379 = !{!"tree-stdarg.c:gimple_assign_rhs1"}
!380 = !{!"function_entry_count", i64 3646}
!381 = !{!"tree-stdarg.c:get_gimple_rhs_class"}
!382 = !{!"function_entry_count", i64 2565}
!383 = !{!"tree-stdarg.c:gimple_assign_rhs_code"}
!384 = !{!"branch_weights", i32 1766, i32 801}
!385 = !{!"function_entry_count", i64 85}
!386 = !{!"tree-stdarg.c:gimple_assign_rhs2"}
!387 = !{!"branch_weights", i32 86, i32 1}
!388 = !{!"function_entry_count", i64 0}
!389 = !{!"tree-stdarg.c:va_list_counter_struct_op"}
!390 = !{!"function_entry_count", i64 984}
!391 = !{!"tree-stdarg.c:is_gimple_debug"}
!392 = !{!"function_entry_count", i64 3409}
!393 = !{!"tree-stdarg.c:find_va_list_reference"}
!394 = !{!"branch_weights", i32 1240, i32 2171}
!395 = !{!"branch_weights", i32 1298, i32 2113}
!396 = !{!"branch_weights", i32 1278, i32 21}
!397 = !{!"function_entry_count", i64 21}
!398 = !{!"tree-stdarg.c:check_all_va_list_escapes"}
!399 = !{!"branch_weights", i32 1, i32 127}
!400 = !{!"branch_weights", i32 152, i32 1}
!401 = !{!"branch_weights", i32 608, i32 1}
!402 = !{!"branch_weights", i32 587, i32 1}
!403 = !{!"branch_weights", i32 840, i32 61}
!404 = !{!"branch_weights", i32 21, i32 41}
!405 = !{!"branch_weights", i32 11, i32 31}
!406 = !{!"branch_weights", i32 11, i32 1}
!407 = !{!"branch_weights", i32 1, i32 11}
!408 = !{!"branch_weights", i32 31, i32 1}
!409 = !{!"branch_weights", i32 11, i32 21}
!410 = !{!"branch_weights", i32 11, i32 11}
!411 = !{!"branch_weights", i32 21, i32 11}
!412 = !{!"branch_weights", i32 1, i32 21}
!413 = !{!"branch_weights", i32 313, i32 587}
!414 = distinct !{!414, !246}
!415 = !{!"branch_weights", i32 456, i32 152}
!416 = distinct !{!416, !246}
!417 = !{!"branch_weights", i32 127, i32 10945}
!418 = distinct !{!418, !246}
!419 = !{!"tree-stdarg.c:bb_seq"}
!420 = !{!230, !197, i64 96}
!421 = !{!"branch_weights", i32 829, i32 1}
!422 = !{!"branch_weights", i32 1, i32 829}
!423 = !{!424, !190, i64 0}
!424 = !{!"gimple_bb_info", !190, i64 0, !190, i64 8}
!425 = !{!"tree-stdarg.c:gimple_seq_first"}
!426 = !{!427, !190, i64 0}
!427 = !{!"gimple_seq_d", !190, i64 0, !190, i64 8, !190, i64 16}
!428 = !{!"function_entry_count", i64 19609}
!429 = !{!"tree-stdarg.c:gimple_code"}
!430 = !{!"tree-stdarg.c:gimple_call_fn"}
!431 = !{!"function_entry_count", i64 3816}
!432 = !{!"tree-stdarg.c:gimple_op"}
!433 = !{!"branch_weights", i32 1, i32 3817}
!434 = !{!"function_entry_count", i64 4423}
!435 = !{!"tree-stdarg.c:gimple_has_ops"}
!436 = !{!"tree-stdarg.c:gimple_ops"}
!437 = !{!202, !202, i64 0}
!438 = !{!"tree-stdarg.c:gimple_statement_structure"}
!439 = !{!"tree-stdarg.c:gss_for_code"}
!440 = !{!"tree-stdarg.c:gimple_phi_result"}
!441 = !{!"tree-stdarg.c:clear_and_done_ssa_iter"}
!442 = !{!"tree-stdarg.c:gimple_phi_num_args"}
!443 = !{!"function_entry_count", i64 37}
!444 = !{!"tree-stdarg.c:reachable_at_most_once"}
!445 = !{!"branch_weights", i32 9, i32 30}
!446 = !{!"branch_weights", i32 1, i32 30}
!447 = !{!228, !197, i64 32}
!448 = !{i64 0, i64 4, !265, i64 8, i64 8, !189}
!449 = !{i64 0, i64 8, !189}
!450 = !{!"branch_weights", i32 1, i32 239}
!451 = !{!"branch_weights", i32 1, i32 167}
!452 = !{!"branch_weights", i32 239, i32 81}
!453 = distinct !{!453, !246}
!454 = !{!455, !190, i64 0}
!455 = !{!"edge_def", !190, i64 0, !190, i64 8, !191, i64 16, !190, i64 24, !190, i64 32, !197, i64 40, !197, i64 44, !197, i64 48, !197, i64 52, !202, i64 56}
!456 = !{!455, !197, i64 48}
!457 = !{!"branch_weights", i32 252, i32 1}
!458 = !{!"branch_weights", i32 59, i32 194}
!459 = distinct !{!459, !246}
!460 = !{!"branch_weights", i32 10, i32 185}
!461 = !{!"branch_weights", i32 1, i32 185}
!462 = !{!"branch_weights", i32 141, i32 45}
!463 = !{!"branch_weights", i32 1, i32 140}
!464 = !{!"branch_weights", i32 140, i32 89}
!465 = distinct !{!465, !246}
!466 = !{!"branch_weights", i32 167, i32 1849}
!467 = !{!468, !190, i64 0}
!468 = !{!"simple_bitmap_def", !190, i64 0, !197, i64 8, !197, i64 12, !191, i64 16}
!469 = !{!"function_entry_count", i64 61}
!470 = !{!"tree-stdarg.c:va_list_counter_bump"}
!471 = !{!"branch_weights", i32 26, i32 37}
!472 = !{!222, !190, i64 24}
!473 = !{!474, !190, i64 16}
!474 = !{!"gimple_df", !190, i64 0, !190, i64 8, !190, i64 16, !190, i64 24, !475, i64 32, !475, i64 48, !190, i64 64, !190, i64 72, !190, i64 80, !190, i64 88, !197, i64 96, !476, i64 104}
!475 = !{!"pt_solution", !197, i64 0, !197, i64 0, !197, i64 0, !197, i64 0, !197, i64 0, !197, i64 0, !190, i64 8}
!476 = !{!"ssa_operands", !190, i64 0, !197, i64 8, !197, i64 12, !191, i64 16, !190, i64 24, !190, i64 32}
!477 = !{!"branch_weights", i32 1, i32 207}
!478 = !{!"branch_weights", i32 8849, i32 207}
!479 = distinct !{!479, !246}
!480 = !{!"branch_weights", i32 1, i32 62}
!481 = !{!"branch_weights", i32 1, i32 231}
!482 = !{!"branch_weights", i32 51, i32 34}
!483 = !{!"branch_weights", i32 1, i32 34}
!484 = !{!"branch_weights", i32 1, i32 51}
!485 = !{!"branch_weights", i32 51, i32 1}
!486 = !{!"branch_weights", i32 29, i32 23}
!487 = !{!"branch_weights", i32 12, i32 12}
!488 = !{!"branch_weights", i32 12, i32 29}
!489 = distinct !{!489, !246}
!490 = !{!"branch_weights", i32 102519339, i32 2044964309}
!491 = distinct !{!491, !246}
!492 = !{!"branch_weights", i32 33067358, i32 2114416290}
!493 = !{!"function_entry_count", i64 169}
!494 = !{!"tree-stdarg.c:ei_start_1"}
!495 = !{!"function_entry_count", i64 436}
!496 = !{!"tree-stdarg.c:ei_cond"}
!497 = !{!"branch_weights", i32 268, i32 170}
!498 = !{!"function_entry_count", i64 267}
!499 = !{!"tree-stdarg.c:VEC_edge_heap_safe_push"}
!500 = !{!"tree-stdarg.c:ei_next"}
!501 = !{!"branch_weights", i32 1, i32 268}
!502 = !{!"branch_weights", i32 268, i32 1}
!503 = !{!504, !197, i64 0}
!504 = !{!"", !197, i64 0, !190, i64 8}
!505 = !{!"function_entry_count", i64 974}
!506 = !{!"tree-stdarg.c:VEC_edge_base_length"}
!507 = !{!"branch_weights", i32 1, i32 975}
!508 = !{!509, !197, i64 0}
!509 = !{!"VEC_edge_base", !197, i64 0, !197, i64 4, !191, i64 8}
!510 = !{!"function_entry_count", i64 251}
!511 = !{!"tree-stdarg.c:VEC_edge_base_pop"}
!512 = !{!"function_entry_count", i64 140}
!513 = !{!"tree-stdarg.c:SET_BIT"}
!514 = !{!"branch_weights", i32 141, i32 1}
!515 = !{!"function_entry_count", i64 29}
!516 = !{!"tree-stdarg.c:VEC_edge_heap_free"}
!517 = !{!"tree-stdarg.c:ei_end_p"}
!518 = !{!"branch_weights", i32 1, i32 437}
!519 = !{!"tree-stdarg.c:ei_edge"}
!520 = !{!"function_entry_count", i64 1940}
!521 = !{!"tree-stdarg.c:ei_container"}
!522 = !{!"branch_weights", i32 1, i32 1941}
!523 = !{!"tree-stdarg.c:VEC_edge_base_index"}
!524 = !{!"tree-stdarg.c:VEC_edge_heap_reserve"}
!525 = !{!"branch_weights", i32 41, i32 228}
!526 = !{!"tree-stdarg.c:VEC_edge_base_quick_push"}
!527 = !{!"tree-stdarg.c:VEC_edge_base_space"}
!528 = !{!"branch_weights", i32 30, i32 239}
!529 = !{!509, !197, i64 4}
!530 = !{!"function_entry_count", i64 1181}
!531 = !{!"tree-stdarg.c:VEC_tree_base_length"}
!532 = !{!"branch_weights", i32 1, i32 1182}
!533 = !{!534, !197, i64 0}
!534 = !{!"VEC_tree_base", !197, i64 0, !197, i64 4, !191, i64 8}
!535 = !{!"function_entry_count", i64 64}
!536 = !{!"tree-stdarg.c:gimple_assign_cast_p"}
!537 = !{!"branch_weights", i32 1, i32 65}
!538 = !{!"function_entry_count", i64 210}
!539 = !{!"tree-stdarg.c:gimple_phi_arg_imm_use_ptr"}
!540 = !{!"tree-stdarg.c:gimple_phi_arg"}
!541 = !{!"branch_weights", i32 1, i32 211}
!542 = !{!"tree-stdarg.c:gimple_expr_code"}
!543 = !{!"branch_weights", i32 1, i32 10264, i32 2, i32 1}
!544 = !{!"tree-stdarg.c:gimple_num_ops"}
!545 = !{!"tree-stdarg.c:va_list_counter_op"}
!546 = !{!"function_entry_count", i64 607}
!547 = !{!"tree-stdarg.c:op_iter_init_tree"}
!548 = !{!"function_entry_count", i64 1486}
!549 = !{!"tree-stdarg.c:op_iter_next_tree"}
!550 = !{!"branch_weights", i32 588, i32 900}
!551 = !{!331, !190, i64 8}
!552 = !{!"branch_weights", i32 588, i32 1}
!553 = !{!554, !190, i64 8}
!554 = !{!"def_optype_d", !190, i64 0, !190, i64 8}
!555 = !{!554, !190, i64 0}
!556 = !{!"tree-stdarg.c:op_iter_init"}
!557 = !{!"tree-stdarg.c:gimple_use_ops"}
!558 = !{!"branch_weights", i32 1, i32 608}

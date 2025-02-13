; ModuleID = 'tree-tailcall.c'
source_filename = "tree-tailcall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gimple_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.edge_iterator = type { i32, ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.tailcall = type { %struct.gimple_stmt_iterator, i8, ptr, ptr, ptr }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.referenced_var_iterator = type { %struct.htab_iterator }
%struct.htab_iterator = type { ptr, ptr, ptr }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.gimple_bb_info = type { ptr, ptr }
%struct.gimple_df = type { ptr, ptr, ptr, ptr, %struct.pt_solution, %struct.pt_solution, ptr, ptr, ptr, ptr, i8, %struct.ssa_operands }
%struct.pt_solution = type { i8, ptr }
%struct.ssa_operands = type { ptr, i32, i32, i8, ptr, ptr }
%struct.htab = type { ptr, ptr, ptr, ptr, i64, i64, i64, i32, i32, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.gimple_seq_d = type { ptr, ptr, ptr }
%struct.gimple_statement_with_memory_ops_base = type { %struct.gimple_statement_with_ops_base, ptr, ptr }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.tree_var_decl = type { %struct.tree_decl_with_vis, ptr }
%struct.tree_parm_decl = type { %struct.tree_decl_with_rtl, ptr, ptr }
%struct.tree_result_decl = type { %struct.tree_decl_with_rtl, ptr }

@pass_tail_recursion = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str, ptr @gate_tail_calls, ptr @execute_tail_recursion, ptr null, ptr null, i32 0, i32 0, i32 40, i32 0, i32 0, i32 0, i32 5 } }, align 8
@.str = private unnamed_addr constant [6 x i8] c"tailr\00", align 1
@flag_optimize_sibling_calls = external local_unnamed_addr global i32, align 4
@cfun = external local_unnamed_addr global ptr, align 8
@m_acc = internal unnamed_addr global ptr null, align 8
@a_acc = internal unnamed_addr global ptr null, align 8
@current_function_decl = external local_unnamed_addr global ptr, align 8
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"add_acc\00", align 1
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@.str.2 = private unnamed_addr constant [9 x i8] c"mult_acc\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@.str.5 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@flag_associative_math = external local_unnamed_addr global i32, align 4
@gimple_rhs_class_table = external local_unnamed_addr constant [0 x i8], align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"tree-tailcall.c\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"./tree-flow-inline.h\00", align 1
@dump_file = external local_unnamed_addr global ptr, align 8
@dump_flags = external local_unnamed_addr global i32, align 4
@.str.8 = private unnamed_addr constant [17 x i8] c"Found tail call \00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c" in bb %i\0A\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"Eliminated tail recursion in bb %d : \00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"acc_tmp\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"mul_tmp\00", align 1
@pass_tail_calls = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.14, ptr @gate_tail_calls, ptr @execute_tail_calls, ptr null, ptr null, i32 0, i32 0, i32 40, i32 0, i32 0, i32 0, i32 5 } }, align 8
@.str.14 = private unnamed_addr constant [6 x i8] c"tailc\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define internal zeroext i8 @gate_tail_calls() #0 !prof !299 !PGOFuncName !300 {
  %1 = load i32, ptr @flag_optimize_sibling_calls, align 4, !tbaa !301
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %7, label %3, !prof !305

3:                                                ; preds = %0
  %4 = tail call zeroext i8 @dbg_cnt(i32 noundef 37) #14
  %5 = icmp ne i8 %4, 0
  %6 = zext i1 %5 to i8
  br label %7

7:                                                ; preds = %3, %0
  %8 = phi i8 [ 0, %0 ], [ %6, %3 ]
  ret i8 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @execute_tail_recursion() #0 !prof !306 !PGOFuncName !307 {
  %1 = tail call fastcc i32 @tree_optimize_tail_calls_1(i8 noundef zeroext 0) #15, !range !308
  ret i32 %1
}

; Function Attrs: optsize
declare zeroext i8 @dbg_cnt(i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @tree_optimize_tail_calls_1(i8 noundef zeroext %0) unnamed_addr #0 !prof !299 !PGOFuncName !309 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  store ptr null, ptr %3, align 8, !tbaa !310
  %5 = load ptr, ptr @cfun, align 8, !tbaa !310
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !312
  %8 = load ptr, ptr %7, align 8, !tbaa !314
  %9 = tail call fastcc ptr @single_succ(ptr noundef %8) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #16
  %10 = tail call fastcc zeroext i8 @suitable_for_tail_opt_p() #15, !range !316
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %181, label %12, !prof !317

12:                                               ; preds = %1
  %13 = icmp eq i8 %0, 0
  br i1 %13, label %16, label %14, !prof !318

14:                                               ; preds = %12
  %15 = tail call fastcc zeroext i8 @suitable_for_tail_call_opt_p() #15, !range !316
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi i8 [ %15, %14 ], [ 0, %12 ]
  %18 = load ptr, ptr @cfun, align 8, !tbaa !310
  %19 = getelementptr inbounds %struct.function, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !312
  %21 = getelementptr inbounds %struct.control_flow_graph, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !319
  %23 = tail call fastcc ptr @ei_start_1(ptr noundef %22) #15
  store i32 0, ptr %4, align 8, !tbaa.struct !320
  %24 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %23, ptr %24, align 8, !tbaa.struct !321
  %25 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %23, ptr noundef nonnull %2) #15, !range !316
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %42, label %27, !prof !322

27:                                               ; preds = %16, %37
  %28 = load ptr, ptr %2, align 8, !tbaa !310
  %29 = load ptr, ptr %28, align 8, !tbaa !323
  %30 = tail call ptr @last_stmt(ptr noundef %29) #14
  %31 = icmp eq ptr %30, null
  br i1 %31, label %37, label %32, !prof !326

32:                                               ; preds = %27
  %33 = tail call fastcc i32 @gimple_code(ptr noundef nonnull %30) #15, !range !327
  %34 = icmp eq i32 %33, 9
  br i1 %34, label %35, label %37, !prof !328

35:                                               ; preds = %32
  %36 = load ptr, ptr %28, align 8, !tbaa !323
  call fastcc void @find_tail_calls(ptr noundef %36, ptr noundef nonnull %3) #15
  br label %37

37:                                               ; preds = %27, %32, %35
  call fastcc void @ei_next(ptr noundef nonnull %4) #15
  %38 = load i32, ptr %4, align 8
  %39 = load ptr, ptr %24, align 8
  %40 = call fastcc zeroext i8 @ei_cond(i32 %38, ptr %39, ptr noundef nonnull %2) #15, !range !316
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %27, !prof !329, !llvm.loop !330

42:                                               ; preds = %37, %16
  store ptr null, ptr @m_acc, align 8, !tbaa !310
  store ptr null, ptr @a_acc, align 8, !tbaa !310
  %43 = load ptr, ptr %3, align 8, !tbaa !310
  %44 = icmp eq ptr %43, null
  br i1 %44, label %141, label %45, !prof !332

45:                                               ; preds = %42, %123
  %46 = phi ptr [ %127, %123 ], [ %43, %42 ]
  %47 = phi i8 [ %125, %123 ], [ 0, %42 ]
  %48 = phi ptr [ %124, %123 ], [ %9, %42 ]
  %49 = getelementptr inbounds %struct.tailcall, ptr %46, i64 0, i32 1
  %50 = load i8, ptr %49, align 8, !tbaa !333
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %123, label %52, !prof !336

52:                                               ; preds = %45
  %53 = icmp eq i8 %47, 0
  br i1 %53, label %54, label %102, !prof !337

54:                                               ; preds = %52
  %55 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %48) #15, !range !316
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %61, label %57, !prof !338

57:                                               ; preds = %54
  %58 = tail call fastcc ptr @phi_nodes(ptr noundef %48) #15
  %59 = tail call fastcc zeroext i8 @gimple_seq_empty_p(ptr noundef %58) #15, !range !316
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %61, label %68, !prof !339

61:                                               ; preds = %57, %54
  %62 = load ptr, ptr @cfun, align 8, !tbaa !310
  %63 = getelementptr inbounds %struct.function, ptr %62, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !312
  %65 = load ptr, ptr %64, align 8, !tbaa !314
  %66 = tail call fastcc ptr @single_succ_edge(ptr noundef %65) #15
  %67 = tail call ptr @split_edge(ptr noundef %66) #14
  br label %68

68:                                               ; preds = %61, %57
  %69 = phi ptr [ %48, %57 ], [ %67, %61 ]
  %70 = load ptr, ptr @current_function_decl, align 8, !tbaa !310
  %71 = getelementptr inbounds %struct.tree_decl_non_common, ptr %70, i64 0, i32 2
  %72 = load ptr, ptr %71, align 8, !tbaa !340
  %73 = icmp eq ptr %72, null
  br i1 %73, label %102, label %74, !prof !341

74:                                               ; preds = %68, %98
  %75 = phi ptr [ %100, %98 ], [ %72, %68 ]
  %76 = tail call fastcc zeroext i8 @arg_needs_copy_p(ptr noundef nonnull %75) #15, !range !316
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %98, label %78, !prof !342

78:                                               ; preds = %74
  %79 = load ptr, ptr @cfun, align 8, !tbaa !310
  %80 = tail call ptr @gimple_default_def(ptr noundef %79, ptr noundef nonnull %75) #14
  %81 = getelementptr inbounds %struct.tree_ssa_name, ptr %80, i64 0, i32 2
  %82 = load ptr, ptr %81, align 8, !tbaa !340
  %83 = tail call fastcc ptr @make_ssa_name(ptr noundef nonnull %75, ptr noundef %82) #15
  tail call void @set_default_def(ptr noundef nonnull %75, ptr noundef %83) #14
  %84 = tail call ptr @create_phi_node(ptr noundef %80, ptr noundef %69) #14
  store ptr %84, ptr %81, align 8, !tbaa !340
  %85 = tail call fastcc ptr @single_pred_edge(ptr noundef %69) #15
  %86 = load i64, ptr %75, align 8
  %87 = and i64 %86, 65535
  %88 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %87
  %89 = load i32, ptr %88, align 4, !tbaa !301
  %90 = icmp ugt i32 %89, 3
  br i1 %90, label %91, label %96, !prof !343

91:                                               ; preds = %78
  %92 = icmp ult i32 %89, 11
  br i1 %92, label %93, label %96

93:                                               ; preds = %91
  %94 = getelementptr inbounds %struct.tree_exp, ptr %75, i64 0, i32 1
  %95 = load i32, ptr %94, align 8, !tbaa !340
  br label %96

96:                                               ; preds = %78, %91, %93
  %97 = phi i32 [ %95, %93 ], [ 0, %91 ], [ 0, %78 ]
  tail call void @add_phi_arg(ptr noundef %84, ptr noundef %83, ptr noundef %85, i32 noundef %97) #14
  br label %98

98:                                               ; preds = %74, %96
  %99 = getelementptr inbounds %struct.tree_common, ptr %75, i64 0, i32 1
  %100 = load ptr, ptr %99, align 8, !tbaa !340
  %101 = icmp eq ptr %100, null
  br i1 %101, label %102, label %74, !prof !344, !llvm.loop !345

102:                                              ; preds = %98, %68, %52
  %103 = phi ptr [ %48, %52 ], [ %69, %68 ], [ %69, %98 ]
  %104 = getelementptr inbounds %struct.tailcall, ptr %46, i64 0, i32 3
  %105 = load ptr, ptr %104, align 8, !tbaa !346
  %106 = icmp eq ptr %105, null
  %107 = load ptr, ptr @a_acc, align 8
  %108 = icmp ne ptr %107, null
  %109 = select i1 %106, i1 true, i1 %108
  br i1 %109, label %113, label %110, !prof !347

110:                                              ; preds = %102
  %111 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !310
  %112 = tail call fastcc ptr @create_tailcall_accumulator(ptr noundef nonnull @.str.1, ptr noundef %103, ptr noundef %111) #15
  store ptr %112, ptr @a_acc, align 8, !tbaa !310
  br label %113

113:                                              ; preds = %110, %102
  %114 = getelementptr inbounds %struct.tailcall, ptr %46, i64 0, i32 2
  %115 = load ptr, ptr %114, align 8, !tbaa !348
  %116 = icmp eq ptr %115, null
  br i1 %116, label %123, label %117, !prof !349

117:                                              ; preds = %113
  %118 = load ptr, ptr @m_acc, align 8, !tbaa !310
  %119 = icmp eq ptr %118, null
  br i1 %119, label %120, label %123, !prof !350

120:                                              ; preds = %117
  %121 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 14), align 16, !tbaa !310
  %122 = tail call fastcc ptr @create_tailcall_accumulator(ptr noundef nonnull @.str.2, ptr noundef %103, ptr noundef %121) #15
  store ptr %122, ptr @m_acc, align 8, !tbaa !310
  br label %123

123:                                              ; preds = %113, %117, %120, %45
  %124 = phi ptr [ %103, %117 ], [ %103, %120 ], [ %103, %113 ], [ %48, %45 ]
  %125 = phi i8 [ 1, %117 ], [ 1, %120 ], [ 1, %113 ], [ %47, %45 ]
  %126 = getelementptr inbounds %struct.tailcall, ptr %46, i64 0, i32 4
  %127 = load ptr, ptr %126, align 8, !tbaa !310
  %128 = icmp eq ptr %127, null
  br i1 %128, label %129, label %45, !prof !351, !llvm.loop !352

129:                                              ; preds = %123
  %130 = icmp eq i8 %125, 0
  br i1 %44, label %141, label %131, !prof !353

131:                                              ; preds = %129, %131
  %132 = phi i8 [ %137, %131 ], [ 0, %129 ]
  %133 = phi ptr [ %135, %131 ], [ %43, %129 ]
  %134 = getelementptr inbounds %struct.tailcall, ptr %133, i64 0, i32 4
  %135 = load ptr, ptr %134, align 8, !tbaa !354
  %136 = tail call fastcc zeroext i8 @optimize_tail_call(ptr noundef nonnull %133, i8 noundef zeroext %17) #15, !range !316
  %137 = or i8 %136, %132
  tail call void @free(ptr noundef nonnull %133) #15
  %138 = icmp eq ptr %135, null
  br i1 %138, label %139, label %131, !prof !351, !llvm.loop !355

139:                                              ; preds = %131
  %140 = icmp eq i8 %137, 0
  br label %141

141:                                              ; preds = %42, %139, %129
  %142 = phi i1 [ %130, %129 ], [ %130, %139 ], [ true, %42 ]
  %143 = phi i1 [ true, %129 ], [ %140, %139 ], [ true, %42 ]
  store ptr null, ptr %3, align 8, !tbaa !310
  %144 = load ptr, ptr @a_acc, align 8, !tbaa !310
  %145 = icmp ne ptr %144, null
  %146 = load ptr, ptr @m_acc, align 8
  %147 = icmp ne ptr %146, null
  %148 = select i1 %145, i1 true, i1 %147
  br i1 %148, label %149, label %175, !prof !356

149:                                              ; preds = %141
  %150 = load ptr, ptr @cfun, align 8, !tbaa !310
  %151 = getelementptr inbounds %struct.function, ptr %150, i64 0, i32 1
  %152 = load ptr, ptr %151, align 8, !tbaa !312
  %153 = getelementptr inbounds %struct.control_flow_graph, ptr %152, i64 0, i32 1
  %154 = load ptr, ptr %153, align 8, !tbaa !319
  %155 = tail call fastcc ptr @ei_start_1(ptr noundef %154) #15
  store i32 0, ptr %4, align 8, !tbaa.struct !320
  store ptr %155, ptr %24, align 8, !tbaa.struct !321
  %156 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %155, ptr noundef nonnull %2) #15, !range !316
  %157 = icmp eq i8 %156, 0
  br i1 %157, label %175, label %158, !prof !357

158:                                              ; preds = %149, %170
  %159 = load ptr, ptr %2, align 8, !tbaa !310
  %160 = load ptr, ptr %159, align 8, !tbaa !323
  %161 = tail call ptr @last_stmt(ptr noundef %160) #14
  %162 = icmp eq ptr %161, null
  br i1 %162, label %170, label %163, !prof !358

163:                                              ; preds = %158
  %164 = tail call fastcc i32 @gimple_code(ptr noundef nonnull %161) #15, !range !327
  %165 = icmp eq i32 %164, 9
  br i1 %165, label %166, label %170, !prof !359

166:                                              ; preds = %163
  %167 = load ptr, ptr %159, align 8, !tbaa !323
  %168 = load ptr, ptr @m_acc, align 8, !tbaa !310
  %169 = load ptr, ptr @a_acc, align 8, !tbaa !310
  tail call fastcc void @adjust_return_value(ptr noundef %167, ptr noundef %168, ptr noundef %169) #15
  br label %170

170:                                              ; preds = %158, %163, %166
  call fastcc void @ei_next(ptr noundef nonnull %4) #15
  %171 = load i32, ptr %4, align 8
  %172 = load ptr, ptr %24, align 8
  %173 = call fastcc zeroext i8 @ei_cond(i32 %171, ptr %172, ptr noundef nonnull %2) #15, !range !316
  %174 = icmp eq i8 %173, 0
  br i1 %174, label %175, label %158, !prof !360, !llvm.loop !361

175:                                              ; preds = %170, %149, %141
  br i1 %143, label %177, label %176, !prof !362

176:                                              ; preds = %175
  tail call void @free_dominance_info(i32 noundef 1) #14
  br label %177

177:                                              ; preds = %176, %175
  br i1 %142, label %179, label %178, !prof !362

178:                                              ; preds = %177
  tail call fastcc void @add_virtual_phis() #15
  br label %179

179:                                              ; preds = %178, %177
  %180 = select i1 %143, i32 0, i32 16416, !prof !362
  br label %181

181:                                              ; preds = %179, %1
  %182 = phi i32 [ 0, %1 ], [ %180, %179 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #16
  ret i32 %182
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !363 !PGOFuncName !364 {
  %2 = tail call fastcc ptr @single_succ_edge(ptr noundef %0) #15
  %3 = getelementptr inbounds %struct.edge_def, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !365
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @suitable_for_tail_opt_p() unnamed_addr #0 !prof !299 !PGOFuncName !366 {
  %1 = alloca %struct.referenced_var_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #16
  %2 = load ptr, ptr @cfun, align 8, !tbaa !310
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 20
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 4194304
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %22, !prof !367

7:                                                ; preds = %0
  %8 = call fastcc ptr @first_referenced_var(ptr noundef nonnull %1) #15
  %9 = call fastcc zeroext i8 @end_referenced_vars_p(ptr noundef nonnull %1) #15, !range !316
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %22, !prof !368

11:                                               ; preds = %7, %18
  %12 = phi ptr [ %19, %18 ], [ %8, %7 ]
  %13 = tail call fastcc zeroext i8 @is_global_var(ptr noundef %12) #15, !range !316
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %18, !prof !369

15:                                               ; preds = %11
  %16 = tail call fastcc zeroext i8 @is_call_used(ptr noundef %12) #15, !range !316
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %22, !prof !370

18:                                               ; preds = %11, %15
  %19 = call fastcc ptr @next_referenced_var(ptr noundef nonnull %1) #15
  %20 = call fastcc zeroext i8 @end_referenced_vars_p(ptr noundef nonnull %1) #15, !range !316
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %11, label %22, !prof !371, !llvm.loop !372

22:                                               ; preds = %15, %18, %7, %0
  %23 = phi i8 [ 0, %0 ], [ 1, %7 ], [ 0, %15 ], [ 1, %18 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #16
  ret i8 %23
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @suitable_for_tail_call_opt_p() unnamed_addr #3 !prof !373 !PGOFuncName !374 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !310
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 20
  %3 = load i32, ptr %2, align 8
  %4 = and i32 %3, 786432
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %20, !prof !375

6:                                                ; preds = %0
  %7 = load ptr, ptr @current_function_decl, align 8, !tbaa !310
  %8 = getelementptr inbounds %struct.tree_decl_non_common, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !340
  %10 = icmp eq ptr %9, null
  br i1 %10, label %20, label %15, !prof !376

11:                                               ; preds = %15
  %12 = getelementptr inbounds %struct.tree_common, ptr %16, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !340
  %14 = icmp eq ptr %13, null
  br i1 %14, label %20, label %15, !prof !377, !llvm.loop !378

15:                                               ; preds = %6, %11
  %16 = phi ptr [ %13, %11 ], [ %9, %6 ]
  %17 = load i64, ptr %16, align 8
  %18 = and i64 %17, 262144
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %11, label %20, !prof !379

20:                                               ; preds = %15, %11, %6, %0
  %21 = phi i8 [ 0, %0 ], [ 1, %6 ], [ 0, %15 ], [ 1, %11 ]
  ret i8 %21
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #4 !prof !380 !PGOFuncName !381 {
  ret ptr %0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !prof !382 !PGOFuncName !383 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #15, !range !316
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8, !prof !384

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #15
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !310
  ret i8 %10
}

; Function Attrs: optsize
declare ptr @last_stmt(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !385 !PGOFuncName !386 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @find_tail_calls(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 !prof !387 !PGOFuncName !388 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %struct.edge_iterator, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  store ptr null, ptr %3, align 8, !tbaa !310
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  %10 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %0) #15, !range !316
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %178, label %12, !prof !389

12:                                               ; preds = %2
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %0) #15
  %13 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #15, !range !316
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %34, !prof !390

15:                                               ; preds = %12, %31
  %16 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #15
  %17 = tail call fastcc i32 @gimple_code(ptr noundef %16) #15, !range !327
  %18 = icmp eq i32 %17, 4
  br i1 %18, label %31, label %19, !prof !391

19:                                               ; preds = %15
  %20 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %16) #15, !range !316
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %31, !prof !392

22:                                               ; preds = %19
  %23 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %16) #15, !range !316
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %47, !prof !393

25:                                               ; preds = %22
  %26 = tail call fastcc zeroext i8 @gimple_references_memory_p(ptr noundef %16) #15, !range !316
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %178, !prof !394

28:                                               ; preds = %25
  %29 = tail call fastcc zeroext i8 @gimple_has_volatile_ops(ptr noundef %16) #15, !range !316
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %178, !prof !395

31:                                               ; preds = %28, %15, %19
  call fastcc void @gsi_prev(ptr noundef nonnull %4) #15
  %32 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #15, !range !316
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %15, label %34, !prof !396, !llvm.loop !397

34:                                               ; preds = %31, %12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #16
  %35 = tail call fastcc ptr @ei_start_1(ptr noundef %0) #15
  store i32 0, ptr %7, align 8, !tbaa.struct !320
  %36 = getelementptr inbounds i8, ptr %7, i64 8
  store ptr %35, ptr %36, align 8, !tbaa.struct !321
  %37 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %35, ptr noundef nonnull %6) #15, !range !316
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %46, label %39, !prof !398

39:                                               ; preds = %34, %39
  %40 = load ptr, ptr %6, align 8, !tbaa !310
  %41 = load ptr, ptr %40, align 8, !tbaa !323
  tail call fastcc void @find_tail_calls(ptr noundef %41, ptr noundef %1) #15
  call fastcc void @ei_next(ptr noundef nonnull %7) #15
  %42 = load i32, ptr %7, align 8
  %43 = load ptr, ptr %36, align 8
  %44 = call fastcc zeroext i8 @ei_cond(i32 %42, ptr %43, ptr noundef nonnull %6) #15, !range !316
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %39, !prof !399, !llvm.loop !400

46:                                               ; preds = %39, %34
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #16
  br label %178

47:                                               ; preds = %22
  %48 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %16) #15
  store ptr %48, ptr %3, align 8, !tbaa !310
  %49 = icmp eq ptr %48, null
  br i1 %49, label %53, label %50, !prof !401

50:                                               ; preds = %47
  %51 = tail call zeroext i8 @is_gimple_reg(ptr noundef nonnull %48) #14
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %178, label %53, !prof !402

53:                                               ; preds = %50, %47
  %54 = tail call fastcc ptr @gimple_call_fndecl(ptr noundef %16) #15
  %55 = load ptr, ptr @current_function_decl, align 8, !tbaa !310
  %56 = icmp eq ptr %54, %55
  br i1 %56, label %57, label %98, !prof !403

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.tree_decl_non_common, ptr %54, i64 0, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !340
  %60 = icmp eq ptr %59, null
  br i1 %60, label %90, label %61, !prof !404

61:                                               ; preds = %57, %85
  %62 = phi ptr [ %88, %85 ], [ %59, %57 ]
  %63 = phi i64 [ %87, %85 ], [ 0, %57 ]
  %64 = tail call fastcc i32 @gimple_call_num_args(ptr noundef %16) #15
  %65 = zext i32 %64 to i64
  %66 = icmp ult i64 %63, %65
  br i1 %66, label %67, label %90, !prof !405

67:                                               ; preds = %61
  %68 = trunc i64 %63 to i32
  %69 = tail call fastcc ptr @gimple_call_arg(ptr noundef %16, i32 noundef %68) #15
  %70 = icmp eq ptr %62, %69
  br i1 %70, label %85, label %71, !prof !406

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.tree_common, ptr %62, i64 0, i32 2
  %73 = load ptr, ptr %72, align 8, !tbaa !340
  %74 = tail call zeroext i8 @is_gimple_reg_type(ptr noundef %73) #14
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %90, label %76, !prof !406

76:                                               ; preds = %71
  %77 = load ptr, ptr %72, align 8, !tbaa !340
  %78 = getelementptr inbounds %struct.tree_common, ptr %69, i64 0, i32 2
  %79 = load ptr, ptr %78, align 8, !tbaa !340
  %80 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %77, ptr noundef %79) #14
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %90, label %82, !prof !407

82:                                               ; preds = %76
  %83 = tail call zeroext i8 @is_gimple_reg(ptr noundef nonnull %62) #14
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %90, label %85, !prof !408

85:                                               ; preds = %67, %82
  %86 = getelementptr inbounds %struct.tree_common, ptr %62, i64 0, i32 1
  %87 = add nuw nsw i64 %63, 1
  %88 = load ptr, ptr %86, align 8, !tbaa !340
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %61, !prof !409, !llvm.loop !410

90:                                               ; preds = %61, %76, %71, %82, %85, %57
  %91 = phi i64 [ 0, %57 ], [ %87, %85 ], [ %63, %82 ], [ %63, %71 ], [ %63, %76 ], [ %63, %61 ]
  %92 = phi i1 [ true, %57 ], [ true, %85 ], [ false, %82 ], [ false, %71 ], [ false, %76 ], [ false, %61 ]
  %93 = tail call fastcc i32 @gimple_call_num_args(ptr noundef %16) #15
  %94 = zext i32 %93 to i64
  %95 = icmp eq i64 %91, %94
  %96 = and i1 %92, %95
  %97 = zext i1 %96 to i8
  br label %98

98:                                               ; preds = %90, %53
  %99 = phi i8 [ %97, %90 ], [ 0, %53 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !411
  br label %100

100:                                              ; preds = %156, %98
  %101 = phi ptr [ %48, %98 ], [ %159, %156 ]
  %102 = phi ptr [ null, %98 ], [ %157, %156 ]
  %103 = phi ptr [ null, %98 ], [ %158, %156 ]
  %104 = phi ptr [ %0, %98 ], [ %117, %156 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #16
  store ptr null, ptr %8, align 8, !tbaa !310
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #16
  store ptr null, ptr %9, align 8, !tbaa !310
  call fastcc void @gsi_next(ptr noundef nonnull %5) #15
  %105 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #15, !range !316
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %115, label %107, !prof !412

107:                                              ; preds = %100, %107
  %108 = phi ptr [ %112, %107 ], [ %104, %100 ]
  %109 = phi ptr [ %111, %107 ], [ %101, %100 ]
  %110 = tail call fastcc ptr @single_succ_edge(ptr noundef %108) #15
  %111 = tail call fastcc ptr @propagate_through_phis(ptr noundef %109, ptr noundef %110) #15
  %112 = tail call fastcc ptr @single_succ(ptr noundef %108) #15
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef %112) #15
  %113 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #15, !range !316
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %115, label %107, !prof !413, !llvm.loop !414

115:                                              ; preds = %107, %100
  %116 = phi ptr [ %101, %100 ], [ %111, %107 ]
  %117 = phi ptr [ %104, %100 ], [ %112, %107 ]
  store ptr %116, ptr %3, align 8, !tbaa !310
  %118 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #15
  %119 = tail call fastcc i32 @gimple_code(ptr noundef %118) #15, !range !327
  %120 = trunc i32 %119 to i8
  switch i8 %120, label %121 [
    i8 4, label %156
    i8 9, label %160
  ], !prof !415

121:                                              ; preds = %115
  %122 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %118) #15, !range !316
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %124, label %156, !prof !416

124:                                              ; preds = %121
  %125 = icmp eq i32 %119, 6
  br i1 %125, label %126, label %155, !prof !416

126:                                              ; preds = %124
  %127 = call fastcc zeroext i8 @process_assignment(ptr noundef %118, ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef nonnull %9, ptr noundef nonnull %8, ptr noundef nonnull %3) #15, !range !316
  %128 = icmp eq i8 %127, 0
  br i1 %128, label %155, label %129, !prof !417

129:                                              ; preds = %126
  %130 = load ptr, ptr %8, align 8, !tbaa !310
  %131 = icmp eq ptr %130, null
  br i1 %131, label %138, label %132, !prof !418

132:                                              ; preds = %129
  %133 = icmp eq ptr %103, null
  br i1 %133, label %138, label %134, !prof !419

134:                                              ; preds = %132
  %135 = getelementptr inbounds %struct.tree_common, ptr %130, i64 0, i32 2
  %136 = load ptr, ptr %135, align 8, !tbaa !340
  %137 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef %136, ptr noundef nonnull %103, ptr noundef nonnull %130) #14
  br label %138

138:                                              ; preds = %132, %134, %129
  %139 = phi ptr [ %137, %134 ], [ %103, %129 ], [ %130, %132 ]
  %140 = load ptr, ptr %9, align 8, !tbaa !310
  %141 = icmp eq ptr %140, null
  br i1 %141, label %156, label %142, !prof !420

142:                                              ; preds = %138
  %143 = icmp eq ptr %102, null
  br i1 %143, label %148, label %144, !prof !421

144:                                              ; preds = %142
  %145 = getelementptr inbounds %struct.tree_common, ptr %140, i64 0, i32 2
  %146 = load ptr, ptr %145, align 8, !tbaa !340
  %147 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 65, ptr noundef %146, ptr noundef nonnull %102, ptr noundef nonnull %140) #14
  br label %148

148:                                              ; preds = %142, %144
  %149 = phi ptr [ %147, %144 ], [ %140, %142 ]
  %150 = icmp eq ptr %139, null
  br i1 %150, label %156, label %151, !prof !421

151:                                              ; preds = %148
  %152 = getelementptr inbounds %struct.tree_common, ptr %140, i64 0, i32 2
  %153 = load ptr, ptr %152, align 8, !tbaa !340
  %154 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 65, ptr noundef %153, ptr noundef nonnull %139, ptr noundef nonnull %140) #14
  br label %156

155:                                              ; preds = %124, %126
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #16
  br label %178

156:                                              ; preds = %115, %138, %151, %148, %121
  %157 = phi ptr [ %102, %115 ], [ %102, %121 ], [ %149, %151 ], [ %149, %148 ], [ %102, %138 ]
  %158 = phi ptr [ %103, %115 ], [ %103, %121 ], [ %154, %151 ], [ null, %148 ], [ %139, %138 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #16
  %159 = load ptr, ptr %3, align 8, !tbaa !310
  br label %100

160:                                              ; preds = %115
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #16
  %161 = tail call fastcc ptr @gimple_return_retval(ptr noundef %118) #15
  %162 = icmp eq ptr %161, null
  %163 = icmp eq ptr %161, %116
  %164 = select i1 %162, i1 true, i1 %163
  br i1 %164, label %165, label %178, !prof !422

165:                                              ; preds = %160
  %166 = icmp eq i8 %99, 0
  br i1 %166, label %167, label %171, !prof !423

167:                                              ; preds = %165
  %168 = icmp ne ptr %102, null
  %169 = icmp ne ptr %103, null
  %170 = select i1 %168, i1 true, i1 %169
  br i1 %170, label %178, label %171, !prof !424

171:                                              ; preds = %167, %165
  %172 = tail call ptr @xmalloc(i64 noundef 56) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %172, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !411
  %173 = getelementptr inbounds %struct.tailcall, ptr %172, i64 0, i32 1
  store i8 %99, ptr %173, align 8, !tbaa !333
  %174 = getelementptr inbounds %struct.tailcall, ptr %172, i64 0, i32 2
  store ptr %102, ptr %174, align 8, !tbaa !348
  %175 = getelementptr inbounds %struct.tailcall, ptr %172, i64 0, i32 3
  store ptr %103, ptr %175, align 8, !tbaa !346
  %176 = load ptr, ptr %1, align 8, !tbaa !310
  %177 = getelementptr inbounds %struct.tailcall, ptr %172, i64 0, i32 4
  store ptr %176, ptr %177, align 8, !tbaa !354
  store ptr %172, ptr %1, align 8, !tbaa !310
  br label %178

178:                                              ; preds = %25, %28, %155, %167, %160, %50, %2, %171, %46
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 !prof !425 !PGOFuncName !426 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #15
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7, !prof !427

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #15
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #15
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14, !prof !428

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 738, ptr noundef nonnull @.str.4) #14
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !429
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !429
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_pred_p(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !431 !PGOFuncName !432 {
  %2 = load ptr, ptr %0, align 8, !tbaa !433
  %3 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %2) #15
  %4 = icmp eq i32 %3, 1
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_seq_empty_p(ptr noundef readonly %0) unnamed_addr #6 !prof !435 !PGOFuncName !436 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3, !prof !437

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !438
  %5 = icmp eq ptr %4, null
  %6 = zext i1 %5 to i8
  br label %7

7:                                                ; preds = %3, %1
  %8 = phi i8 [ 1, %1 ], [ %6, %3 ]
  ret i8 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @phi_nodes(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !435 !PGOFuncName !440 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !441
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6, !prof !442

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 510, ptr noundef nonnull @.str.4) #14
  br label %7

7:                                                ; preds = %1, %6
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !340
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11, !prof !338

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.gimple_bb_info, ptr %9, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !443
  br label %14

14:                                               ; preds = %7, %11
  %15 = phi ptr [ %13, %11 ], [ null, %7 ]
  ret ptr %15
}

; Function Attrs: optsize
declare ptr @split_edge(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ_edge(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !445 !PGOFuncName !446 {
  %2 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %0) #15, !range !316
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5, !prof !447

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 645, ptr noundef nonnull @.str.4) #14
  br label %5

5:                                                ; preds = %1, %4
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !448
  %8 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %7, i32 noundef 0) #15
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @arg_needs_copy_p(ptr noundef %0) unnamed_addr #0 !prof !449 !PGOFuncName !450 {
  %2 = tail call zeroext i8 @is_gimple_reg(ptr noundef %0) #14
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %12, label %4, !prof !451

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @var_ann(ptr noundef %0) #15
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7, !prof !452

7:                                                ; preds = %4
  %8 = load ptr, ptr @cfun, align 8, !tbaa !310
  %9 = tail call ptr @gimple_default_def(ptr noundef %8, ptr noundef %0) #14
  %10 = icmp ne ptr %9, null
  %11 = zext i1 %10 to i8
  br label %12

12:                                               ; preds = %7, %1, %4
  %13 = phi i8 [ 0, %4 ], [ 0, %1 ], [ %11, %7 ]
  ret i8 %13
}

; Function Attrs: optsize
declare ptr @gimple_default_def(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @make_ssa_name(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !453 !PGOFuncName !454 {
  %3 = load ptr, ptr @cfun, align 8, !tbaa !310
  %4 = tail call ptr @make_ssa_name_fn(ptr noundef %3, ptr noundef %0, ptr noundef %1) #14
  ret ptr %4
}

; Function Attrs: optsize
declare void @set_default_def(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @create_phi_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @add_phi_arg(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_pred_edge(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !455 !PGOFuncName !456 {
  %2 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %0) #15, !range !316
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5, !prof !457

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 655, ptr noundef nonnull @.str.4) #14
  br label %5

5:                                                ; preds = %1, %4
  %6 = load ptr, ptr %0, align 8, !tbaa !433
  %7 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %6, i32 noundef 0) #15
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @create_tailcall_accumulator(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !458 !PGOFuncName !459 {
  %4 = load ptr, ptr @current_function_decl, align 8, !tbaa !310
  %5 = getelementptr inbounds %struct.tree_decl_non_common, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !340
  %7 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !340
  %9 = tail call ptr @create_tmp_var(ptr noundef %8, ptr noundef %0) #14
  %10 = load i64, ptr %8, align 8
  %11 = trunc i64 %10 to i32
  %12 = and i32 %11, 65535
  %13 = add nsw i32 %12, -13
  %14 = icmp ult i32 %13, 2
  br i1 %14, label %15, label %19, !prof !460

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.tree_decl_common, ptr %9, i64 0, i32 2
  %17 = load i64, ptr %16, align 8
  %18 = or i64 %17, 134217728
  store i64 %18, ptr %16, align 8
  br label %19

19:                                               ; preds = %3, %15
  %20 = tail call zeroext i8 @add_referenced_var(ptr noundef %9) #14
  %21 = tail call ptr @create_phi_node(ptr noundef %9, ptr noundef %1) #14
  %22 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef nonnull %8, ptr noundef %2) #14
  %23 = tail call fastcc ptr @single_pred_edge(ptr noundef %1) #15
  tail call void @add_phi_arg(ptr noundef %21, ptr noundef %22, ptr noundef %23, i32 noundef 0) #14
  %24 = tail call fastcc ptr @gimple_phi_result_ptr(ptr noundef %21) #15
  %25 = tail call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %24) #15
  ret ptr %25
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @optimize_tail_call(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 !prof !461 !PGOFuncName !462 {
  %3 = getelementptr inbounds %struct.tailcall, ptr %0, i64 0, i32 1
  %4 = load i8, ptr %3, align 8, !tbaa !333
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %7, label %6, !prof !336

6:                                                ; preds = %2
  tail call fastcc void @eliminate_tail_call(ptr noundef nonnull %0) #15
  br label %26

7:                                                ; preds = %2
  %8 = icmp eq i8 %1, 0
  br i1 %8, label %26, label %9, !prof !463

9:                                                ; preds = %7
  %10 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %0) #15
  tail call fastcc void @gimple_call_set_tail(ptr noundef %10) #15
  %11 = load ptr, ptr @dump_file, align 8, !tbaa !310
  %12 = icmp eq ptr %11, null
  br i1 %12, label %26, label %13, !prof !464

13:                                               ; preds = %9
  %14 = load i32, ptr @dump_flags, align 4, !tbaa !301
  %15 = and i32 %14, 8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %13
  %18 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 16, i64 1, ptr nonnull %11)
  %19 = load ptr, ptr @dump_file, align 8, !tbaa !310
  %20 = load i32, ptr @dump_flags, align 4, !tbaa !301
  tail call void @print_gimple_stmt(ptr noundef %19, ptr noundef %10, i32 noundef 0, i32 noundef %20) #14
  %21 = load ptr, ptr @dump_file, align 8, !tbaa !310
  %22 = tail call fastcc ptr @gsi_bb(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %0) #15
  %23 = getelementptr inbounds %struct.basic_block_def, ptr %22, i64 0, i32 9
  %24 = load i32, ptr %23, align 8, !tbaa !465
  %25 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef nonnull @.str.9, i32 noundef %24) #15
  br label %26

26:                                               ; preds = %7, %17, %13, %9, %6
  %27 = phi i8 [ 1, %6 ], [ 0, %9 ], [ 0, %13 ], [ 0, %17 ], [ 0, %7 ]
  ret i8 %27
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @adjust_return_value(ptr noundef %0, ptr noundef readnone %1, ptr noundef readnone %2) unnamed_addr #0 !prof !458 !PGOFuncName !466 {
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = tail call fastcc ptr @bb_seq(ptr noundef %0) #15
  %6 = tail call fastcc ptr @gimple_seq_last_stmt(ptr noundef %5) #15
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #16
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %0) #15
  %7 = tail call fastcc i32 @gimple_code(ptr noundef %6) #15, !range !327
  %8 = icmp eq i32 %7, 9
  br i1 %8, label %10, label %9, !prof !359

9:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 689, ptr noundef nonnull @.str.4) #14
  br label %10

10:                                               ; preds = %3, %9
  %11 = tail call fastcc ptr @gimple_return_retval(ptr noundef %6) #15
  %12 = icmp eq ptr %11, null
  %13 = load ptr, ptr @global_trees, align 16
  %14 = icmp eq ptr %11, %13
  %15 = select i1 %12, i1 true, i1 %14
  br i1 %15, label %29, label %16, !prof !460

16:                                               ; preds = %10
  %17 = icmp eq ptr %1, null
  br i1 %17, label %21, label %18, !prof !467

18:                                               ; preds = %16
  %19 = load ptr, ptr @m_acc, align 8, !tbaa !310
  %20 = tail call fastcc ptr @adjust_return_value_with_ops(i32 noundef 65, ptr noundef nonnull @.str.13, ptr noundef %19, ptr noundef nonnull %11, ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #15
  br label %21

21:                                               ; preds = %18, %16
  %22 = phi ptr [ %20, %18 ], [ %11, %16 ]
  %23 = icmp eq ptr %2, null
  br i1 %23, label %27, label %24, !prof !468

24:                                               ; preds = %21
  %25 = load ptr, ptr @a_acc, align 8, !tbaa !310
  %26 = tail call fastcc ptr @adjust_return_value_with_ops(i32 noundef 63, ptr noundef nonnull @.str.12, ptr noundef %25, ptr noundef %22, ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #15
  br label %27

27:                                               ; preds = %24, %21
  %28 = phi ptr [ %26, %24 ], [ %22, %21 ]
  tail call fastcc void @gimple_return_set_retval(ptr noundef %6, ptr noundef %28) #15
  tail call fastcc void @update_stmt(ptr noundef %6) #15
  br label %29

29:                                               ; preds = %10, %27
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #16
  ret void
}

; Function Attrs: optsize
declare void @free_dominance_info(i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_virtual_phis() unnamed_addr #0 !prof !435 !PGOFuncName !469 {
  %1 = alloca %struct.referenced_var_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #16
  %2 = call fastcc ptr @first_referenced_var(ptr noundef nonnull %1) #15
  %3 = call fastcc zeroext i8 @end_referenced_vars_p(ptr noundef nonnull %1) #15, !range !316
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %18, !prof !470

5:                                                ; preds = %0, %14
  %6 = phi ptr [ %15, %14 ], [ %2, %0 ]
  %7 = tail call zeroext i8 @is_gimple_reg(ptr noundef %6) #14
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %14, !prof !471

9:                                                ; preds = %5
  %10 = load ptr, ptr @cfun, align 8, !tbaa !310
  %11 = tail call ptr @gimple_default_def(ptr noundef %10, ptr noundef %6) #14
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13, !prof !472

13:                                               ; preds = %9
  tail call void @mark_sym_for_renaming(ptr noundef %6) #14
  br label %14

14:                                               ; preds = %5, %9, %13
  %15 = call fastcc ptr @next_referenced_var(ptr noundef nonnull %1) #15
  %16 = call fastcc zeroext i8 @end_referenced_vars_p(ptr noundef nonnull %1) #15, !range !316
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %5, label %18, !prof !473, !llvm.loop !474

18:                                               ; preds = %14, %0
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #16
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @first_referenced_var(ptr nocapture noundef %0) unnamed_addr #0 !prof !475 !PGOFuncName !476 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !310
  %3 = tail call fastcc ptr @gimple_referenced_vars(ptr noundef %2) #15
  %4 = tail call fastcc ptr @first_htab_element(ptr noundef %0, ptr noundef %3) #15
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @end_referenced_vars_p(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !477 !PGOFuncName !478 {
  %2 = tail call fastcc zeroext i8 @end_htab_p(ptr noundef %0) #15, !range !316
  ret i8 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_global_var(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !479 !PGOFuncName !480 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 67108864
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %5, label %11, !prof !481

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

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @is_call_used(ptr noundef %0) unnamed_addr #0 !prof !482 !PGOFuncName !483 {
  %2 = tail call fastcc zeroext i8 @is_call_clobbered(ptr noundef %0) #15, !range !316
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %15, !prof !484

4:                                                ; preds = %1
  %5 = tail call fastcc zeroext i8 @may_be_aliased(ptr noundef %0) #15, !range !316
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %15, label %7, !prof !485

7:                                                ; preds = %4
  %8 = load ptr, ptr @cfun, align 8, !tbaa !310
  %9 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !486
  %11 = getelementptr inbounds %struct.gimple_df, ptr %10, i64 0, i32 5
  %12 = tail call zeroext i8 @pt_solution_includes(ptr noundef nonnull %11, ptr noundef %0) #14
  %13 = icmp ne i8 %12, 0
  %14 = zext i1 %13 to i8
  br label %15

15:                                               ; preds = %4, %7, %1
  %16 = phi i8 [ 1, %1 ], [ 0, %4 ], [ %14, %7 ]
  ret i8 %16
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @next_referenced_var(ptr nocapture noundef %0) unnamed_addr #9 !prof !487 !PGOFuncName !488 {
  %2 = tail call fastcc ptr @next_htab_element(ptr noundef %0) #15
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @first_htab_element(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !475 !PGOFuncName !489 {
  store ptr %1, ptr %0, align 8, !tbaa !490
  %3 = getelementptr inbounds %struct.htab, ptr %1, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !491
  %5 = getelementptr inbounds %struct.htab_iterator, ptr %0, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !493
  %6 = tail call i64 @htab_size(ptr noundef %1) #14
  %7 = getelementptr inbounds ptr, ptr %4, i64 %6
  %8 = getelementptr inbounds %struct.htab_iterator, ptr %0, i64 0, i32 2
  store ptr %7, ptr %8, align 8, !tbaa !494
  %9 = load ptr, ptr %5, align 8, !tbaa !493
  br label %10

10:                                               ; preds = %14, %2
  %11 = phi ptr [ %15, %14 ], [ %9, %2 ]
  %12 = load ptr, ptr %11, align 8, !tbaa !310
  %13 = icmp ult ptr %12, inttoptr (i64 2 to ptr)
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = getelementptr inbounds ptr, ptr %11, i64 1
  store ptr %15, ptr %5, align 8, !tbaa !493
  %16 = icmp ult ptr %15, %7
  br i1 %16, label %10, label %17, !prof !495, !llvm.loop !496

17:                                               ; preds = %10, %14
  %18 = phi ptr [ %11, %10 ], [ %15, %14 ]
  %19 = icmp ult ptr %18, %7
  br i1 %19, label %20, label %22, !prof !497

20:                                               ; preds = %17
  %21 = load ptr, ptr %18, align 8, !tbaa !310
  br label %22

22:                                               ; preds = %17, %20
  %23 = phi ptr [ %21, %20 ], [ null, %17 ]
  ret ptr %23
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gimple_referenced_vars(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !475 !PGOFuncName !498 {
  %2 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !486
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !499

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !500
  br label %7

7:                                                ; preds = %1, %5
  %8 = phi ptr [ %6, %5 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: optsize
declare i64 @htab_size(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @end_htab_p(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !477 !PGOFuncName !504 {
  %2 = getelementptr inbounds %struct.htab_iterator, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !493
  %4 = getelementptr inbounds %struct.htab_iterator, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !494
  %6 = icmp uge ptr %3, %5
  %7 = zext i1 %6 to i8
  ret i8 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @is_call_clobbered(ptr noundef %0) unnamed_addr #0 !prof !482 !PGOFuncName !505 {
  %2 = tail call fastcc zeroext i8 @is_global_var(ptr noundef %0) #15, !range !316
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %15, !prof !506

4:                                                ; preds = %1
  %5 = tail call fastcc zeroext i8 @may_be_aliased(ptr noundef %0) #15, !range !316
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %15, label %7, !prof !507

7:                                                ; preds = %4
  %8 = load ptr, ptr @cfun, align 8, !tbaa !310
  %9 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !486
  %11 = getelementptr inbounds %struct.gimple_df, ptr %10, i64 0, i32 4
  %12 = tail call zeroext i8 @pt_solution_includes(ptr noundef nonnull %11, ptr noundef %0) #14
  %13 = icmp ne i8 %12, 0
  %14 = zext i1 %13 to i8
  br label %15

15:                                               ; preds = %4, %7, %1
  %16 = phi i8 [ 1, %1 ], [ 0, %4 ], [ %14, %7 ]
  ret i8 %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @may_be_aliased(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !508 !PGOFuncName !509 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 33
  br i1 %4, label %38, label %5, !prof !510

5:                                                ; preds = %1
  %6 = and i64 %2, 134217728
  %7 = icmp ne i64 %6, 0
  %8 = and i64 %2, 201326592
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %15, !prof !511

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %12 = load i64, ptr %11, align 8
  %13 = and i64 %12, 33554432
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %29, label %15, !prof !512

15:                                               ; preds = %10, %5
  %16 = and i64 %2, 1048576
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %28, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !340
  %21 = getelementptr inbounds %struct.tree_type, ptr %20, i64 0, i32 6
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, 2048
  %24 = icmp eq i32 %23, 0
  %25 = or i1 %7, %24
  %26 = xor i1 %24, true
  %27 = zext i1 %26 to i8
  br i1 %25, label %38, label %29, !prof !513

28:                                               ; preds = %15
  br i1 %7, label %38, label %29, !prof !514

29:                                               ; preds = %18, %10, %28
  %30 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %31 = load i64, ptr %30, align 8
  %32 = and i64 %31, 33554432
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %38, !prof !512

34:                                               ; preds = %29
  %35 = lshr i64 %2, 18
  %36 = trunc i64 %35 to i8
  %37 = and i8 %36, 1
  br label %38

38:                                               ; preds = %18, %28, %29, %34, %1
  %39 = phi i8 [ %27, %18 ], [ 0, %1 ], [ 1, %29 ], [ 1, %28 ], [ %37, %34 ]
  ret i8 %39
}

; Function Attrs: optsize
declare zeroext i8 @pt_solution_includes(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @next_htab_element(ptr nocapture noundef %0) unnamed_addr #9 !prof !487 !PGOFuncName !515 {
  %2 = getelementptr inbounds %struct.htab_iterator, ptr %0, i64 0, i32 1
  %3 = getelementptr inbounds %struct.htab_iterator, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !494
  %5 = load ptr, ptr %2, align 8, !tbaa !493
  br label %6

6:                                                ; preds = %10, %1
  %7 = phi ptr [ %5, %1 ], [ %8, %10 ]
  %8 = getelementptr inbounds ptr, ptr %7, i64 1
  store ptr %8, ptr %2, align 8, !tbaa !493
  %9 = icmp ult ptr %8, %4
  br i1 %9, label %10, label %13, !prof !516

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !310
  %12 = icmp ult ptr %11, inttoptr (i64 2 to ptr)
  br i1 %12, label %6, label %13

13:                                               ; preds = %10, %6
  %14 = phi ptr [ %11, %10 ], [ null, %6 ]
  ret ptr %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 !prof !382 !PGOFuncName !517 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #15
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !518

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #15
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %8) #15
  %10 = icmp eq i32 %9, %0
  %11 = zext i1 %10 to i8
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 !prof !425 !PGOFuncName !519 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #15
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !427

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #15
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #15
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #6 !prof !520 !PGOFuncName !521 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !522

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !523
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #0 !prof !525 !PGOFuncName !526 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !527

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 687, ptr noundef nonnull @.str.4) #14
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !310
  ret ptr %5
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #6 !prof !528 !PGOFuncName !529 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !310
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_succ_p(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !530 !PGOFuncName !531 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !448
  %4 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %3) #15
  %5 = icmp eq i32 %4, 1
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_last_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #10 !prof !532 !PGOFuncName !533 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #15
  %4 = tail call fastcc ptr @gimple_seq_last(ptr noundef %3) #15
  store ptr %4, ptr %0, align 8, !tbaa !490
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !493
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !494
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #6 !prof !534 !PGOFuncName !535 {
  %2 = load ptr, ptr %0, align 8, !tbaa !490
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #7 !prof !536 !PGOFuncName !537 {
  %2 = load ptr, ptr %0, align 8, !tbaa !490
  %3 = load ptr, ptr %2, align 8, !tbaa !538
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_debug(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !540 !PGOFuncName !541 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #15, !range !327
  %3 = icmp eq i32 %2, 2
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_call(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !542 !PGOFuncName !543 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #15, !range !327
  %3 = icmp eq i32 %2, 8
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_lhs(ptr noundef %0) unnamed_addr #0 !prof !544 !PGOFuncName !545 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #15
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_references_memory_p(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !546 !PGOFuncName !547 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #15, !range !316
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %8, label %4, !prof !548

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_vuse(ptr noundef %0) #15
  %6 = icmp ne ptr %5, null
  %7 = zext i1 %6 to i8
  br label %8

8:                                                ; preds = %4, %1
  %9 = phi i8 [ 0, %1 ], [ %7, %4 ]
  ret i8 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_volatile_ops(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !549 !PGOFuncName !550 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #15, !range !316
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %9, label %4, !prof !551

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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_prev(ptr nocapture noundef %0) unnamed_addr #10 !prof !552 !PGOFuncName !553 {
  %2 = load ptr, ptr %0, align 8, !tbaa !490
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !554
  store ptr %4, ptr %0, align 8, !tbaa !490
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fndecl(ptr noundef %0) unnamed_addr #0 !prof !555 !PGOFuncName !556 {
  %2 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #15
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 121
  br i1 %5, label %6, label %9, !prof !557

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !340
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_call_num_args(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !558 !PGOFuncName !559 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #15
  %3 = add i32 %2, -3
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !560 !PGOFuncName !561 {
  %3 = add i32 %1, 3
  %4 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %3) #15
  ret ptr %4
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_reg_type(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @useless_type_conversion_p(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #10 !prof !562 !PGOFuncName !563 {
  %2 = load ptr, ptr %0, align 8, !tbaa !490
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !564
  store ptr %4, ptr %0, align 8, !tbaa !490
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @propagate_through_phis(ptr noundef readnone %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !565 !PGOFuncName !566 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !365
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #16
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %5) #14
  %6 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #15, !range !316
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %22, !prof !567

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 6
  br label %10

10:                                               ; preds = %8, %19
  %11 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #15
  %12 = load i32, ptr %9, align 4, !tbaa !568
  %13 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %11, i32 noundef %12) #15
  %14 = call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %13) #15
  %15 = icmp eq ptr %14, %0
  br i1 %15, label %16, label %19, !prof !569

16:                                               ; preds = %10
  %17 = call fastcc ptr @gimple_phi_result_ptr(ptr noundef %11) #15
  %18 = call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %17) #15
  br label %22

19:                                               ; preds = %10
  call fastcc void @gsi_next(ptr noundef nonnull %3) #15
  %20 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #15, !range !316
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %10, label %22, !prof !570, !llvm.loop !571

22:                                               ; preds = %19, %2, %16
  %23 = phi ptr [ %18, %16 ], [ %0, %2 ], [ %0, %19 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #16
  ret ptr %23
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #10 !prof !565 !PGOFuncName !572 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #15
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #15
  store ptr %4, ptr %0, align 8, !tbaa !490
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !493
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !494
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @process_assignment(ptr noundef %0, ptr nocapture noundef byval(%struct.gimple_stmt_iterator) align 8 %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef %4) unnamed_addr #0 !prof !573 !PGOFuncName !574 {
  %6 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %0) #15
  %7 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #15, !range !575
  %8 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %7) #15, !range !327
  %9 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #15
  %10 = icmp eq i32 %8, 3
  br i1 %10, label %14, label %11, !prof !576

11:                                               ; preds = %5
  %12 = tail call fastcc zeroext i8 @gimple_assign_cast_p(ptr noundef %0) #15, !range !316
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %54, label %14, !prof !577

14:                                               ; preds = %11, %5
  %15 = load i64, ptr %9, align 8
  %16 = and i64 %15, 65535
  %17 = icmp eq i64 %16, 141
  br i1 %17, label %18, label %54, !prof !578

18:                                               ; preds = %14
  %19 = tail call fastcc zeroext i8 @gimple_assign_cast_p(ptr noundef %0) #15, !range !316
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %51, label %21, !prof !341

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !340
  %24 = load i64, ptr %23, align 8
  %25 = and i64 %24, 65535
  %26 = icmp eq i64 %25, 14
  br i1 %26, label %27, label %29, !prof !341

27:                                               ; preds = %21
  %28 = tail call i32 @vector_type_mode(ptr noundef nonnull %23) #14
  br label %34

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.tree_type, ptr %23, i64 0, i32 6
  %31 = load i32, ptr %30, align 4
  %32 = lshr i32 %31, 16
  %33 = and i32 %32, 255
  br label %34

34:                                               ; preds = %29, %27
  %35 = phi i32 [ %28, %27 ], [ %33, %29 ]
  %36 = getelementptr inbounds %struct.tree_common, ptr %9, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !340
  %38 = load i64, ptr %37, align 8
  %39 = and i64 %38, 65535
  %40 = icmp eq i64 %39, 14
  br i1 %40, label %41, label %43, !prof !341

41:                                               ; preds = %34
  %42 = tail call i32 @vector_type_mode(ptr noundef nonnull %37) #14
  br label %48

43:                                               ; preds = %34
  %44 = getelementptr inbounds %struct.tree_type, ptr %37, i64 0, i32 6
  %45 = load i32, ptr %44, align 4
  %46 = lshr i32 %45, 16
  %47 = and i32 %46, 255
  br label %48

48:                                               ; preds = %43, %41
  %49 = phi i32 [ %42, %41 ], [ %47, %43 ]
  %50 = icmp eq i32 %35, %49
  br i1 %50, label %51, label %96, !prof !579

51:                                               ; preds = %48, %18
  %52 = load ptr, ptr %4, align 8, !tbaa !310
  %53 = icmp eq ptr %9, %52
  br i1 %53, label %95, label %96, !prof !580

54:                                               ; preds = %14, %11
  %55 = icmp eq i32 %8, 1
  br i1 %55, label %56, label %96, !prof !581

56:                                               ; preds = %54
  %57 = load i32, ptr @flag_associative_math, align 4, !tbaa !301
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %73, !prof !582

59:                                               ; preds = %56
  %60 = load ptr, ptr @current_function_decl, align 8, !tbaa !310
  %61 = getelementptr inbounds %struct.tree_decl_non_common, ptr %60, i64 0, i32 3
  %62 = load ptr, ptr %61, align 8, !tbaa !340
  %63 = getelementptr inbounds %struct.tree_common, ptr %62, i64 0, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !340
  %65 = load i64, ptr %64, align 8
  %66 = trunc i64 %65 to i16
  switch i16 %66, label %73 [
    i16 9, label %96
    i16 13, label %67
    i16 14, label %67
  ], !prof !583

67:                                               ; preds = %59, %59
  %68 = getelementptr inbounds %struct.tree_common, ptr %64, i64 0, i32 2
  %69 = load ptr, ptr %68, align 8, !tbaa !340
  %70 = load i64, ptr %69, align 8
  %71 = and i64 %70, 65535
  %72 = icmp eq i64 %71, 9
  br i1 %72, label %96, label %73

73:                                               ; preds = %59, %67, %56
  %74 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #15
  %75 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %0) #15
  %76 = load ptr, ptr %4, align 8, !tbaa !310
  %77 = icmp eq ptr %74, %76
  br i1 %77, label %78, label %83, !prof !584

78:                                               ; preds = %73
  %79 = tail call fastcc ptr @independent_of_stmt_p(ptr noundef %75, ptr noundef %0, ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #15
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %89, !prof !585

81:                                               ; preds = %78
  %82 = load ptr, ptr %4, align 8, !tbaa !310
  br label %83

83:                                               ; preds = %81, %73
  %84 = phi ptr [ %82, %81 ], [ %76, %73 ]
  %85 = icmp eq ptr %75, %84
  br i1 %85, label %86, label %96, !prof !586

86:                                               ; preds = %83
  %87 = tail call fastcc ptr @independent_of_stmt_p(ptr noundef %74, ptr noundef %0, ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #15
  %88 = icmp eq ptr %87, null
  br i1 %88, label %96, label %89, !prof !587

89:                                               ; preds = %86, %78
  %90 = phi ptr [ %79, %78 ], [ %87, %86 ]
  %91 = trunc i32 %7 to i16
  switch i16 %91, label %96 [
    i16 63, label %93
    i16 65, label %92
  ], !prof !588

92:                                               ; preds = %89
  br label %93

93:                                               ; preds = %89, %92
  %94 = phi ptr [ %2, %92 ], [ %3, %89 ]
  store ptr %90, ptr %94, align 8, !tbaa !310
  br label %95

95:                                               ; preds = %93, %51
  store ptr %6, ptr %4, align 8, !tbaa !310
  br label %96

96:                                               ; preds = %95, %89, %83, %86, %67, %59, %54, %51, %48
  %97 = phi i8 [ 0, %48 ], [ 0, %51 ], [ 0, %54 ], [ 0, %59 ], [ 0, %67 ], [ 0, %86 ], [ 0, %83 ], [ 0, %89 ], [ 1, %95 ]
  ret i8 %97
}

; Function Attrs: optsize
declare ptr @fold_build2_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_return_retval(ptr noundef %0) unnamed_addr #0 !prof !589 !PGOFuncName !590 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #15
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !591 !PGOFuncName !592 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !441
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12, !prof !593

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !340
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10, !prof !594

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !595
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_last(ptr noundef readonly %0) unnamed_addr #6 !prof !596 !PGOFuncName !597 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3, !prof !598

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.gimple_seq_d, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !599
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi ptr [ %5, %3 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !600 !PGOFuncName !601 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #15, !range !316
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5, !prof !602

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #15
  %7 = zext i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !310
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !603 !PGOFuncName !604 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #15, !range !327
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #0 !prof !605 !PGOFuncName !606 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #15
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !607
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8, !prof !608

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1622, ptr noundef nonnull @.str.4) #14
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !605 !PGOFuncName !609 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #15, !range !327
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #15
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #4 !prof !605 !PGOFuncName !610 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !301
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_mem_ops(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !611 !PGOFuncName !612 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #15, !range !327
  %3 = add nsw i32 %2, -6
  %4 = icmp ult i32 %3, 4
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vuse(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !546 !PGOFuncName !613 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #15, !range !316
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4, !prof !548

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !340
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fn(ptr noundef %0) unnamed_addr #0 !prof !555 !PGOFuncName !614 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #15
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_num_ops(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !615 !PGOFuncName !616 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !340
  ret i32 %3
}

; Function Attrs: optsize
declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_use_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !617 !PGOFuncName !618 {
  %2 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !619
  %4 = load ptr, ptr %3, align 8, !tbaa !310
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !617 !PGOFuncName !621 {
  %3 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %1) #15
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @get_def_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !622 !PGOFuncName !623 {
  %2 = load ptr, ptr %0, align 8, !tbaa !310
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @gimple_phi_result_ptr(ptr noundef readnone %0) unnamed_addr #4 !prof !622 !PGOFuncName !624 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #0 !prof !617 !PGOFuncName !625 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !340
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %7, !prof !626

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 3103, ptr noundef nonnull @.str.4) #14
  br label %7

7:                                                ; preds = %2, %6
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %8
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #6 !prof !565 !PGOFuncName !627 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !628

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !438
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_lhs(ptr noundef %0) unnamed_addr #0 !prof !573 !PGOFuncName !629 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #15
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) unnamed_addr #0 !prof !630 !PGOFuncName !631 {
  %2 = tail call fastcc i32 @gimple_expr_code(ptr noundef %0) #15, !range !575
  %3 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %2) #15, !range !327
  %4 = icmp eq i32 %3, 3
  br i1 %4, label %5, label %10, !prof !632

5:                                                ; preds = %1
  %6 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #15
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i32
  %9 = and i32 %8, 65535
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi i32 [ %9, %5 ], [ %2, %1 ]
  ret i32 %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @get_gimple_rhs_class(i32 noundef %0) unnamed_addr #4 !prof !633 !PGOFuncName !634 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %2
  %4 = load i8, ptr %3, align 1, !tbaa !340
  %5 = zext i8 %4 to i32
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs1(ptr noundef %0) unnamed_addr #0 !prof !635 !PGOFuncName !636 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #15
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @gimple_assign_cast_p(ptr noundef %0) unnamed_addr #0 !prof !637 !PGOFuncName !638 {
  %2 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %0) #15, !range !316
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %13, label %4, !prof !639

4:                                                ; preds = %1
  %5 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #15, !range !575
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
declare i32 @vector_type_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs2(ptr noundef %0) unnamed_addr #0 !prof !640 !PGOFuncName !641 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #15
  %3 = icmp ugt i32 %2, 2
  br i1 %3, label %4, label %6, !prof !642

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 2) #15
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi ptr [ %5, %4 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @independent_of_stmt_p(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef byval(%struct.gimple_stmt_iterator) align 8 %2) unnamed_addr #0 !prof !643 !PGOFuncName !644 {
  %4 = alloca ptr, align 8
  %5 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #16
  %6 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %0) #14
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %85, !prof !645

8:                                                ; preds = %3
  %9 = load i64, ptr %0, align 8
  %10 = and i64 %9, 65535
  %11 = icmp eq i64 %10, 141
  br i1 %11, label %12, label %85, !prof !646

12:                                               ; preds = %8
  %13 = tail call fastcc ptr @gimple_bb(ptr noundef %1) #15
  %14 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #15
  %15 = tail call fastcc ptr @gimple_bb(ptr noundef %14) #15
  %16 = icmp eq ptr %15, %13
  br i1 %16, label %22, label %17, !prof !647

17:                                               ; preds = %12, %17
  %18 = phi ptr [ %20, %17 ], [ %15, %12 ]
  %19 = getelementptr inbounds %struct.basic_block_def, ptr %18, i64 0, i32 2
  store ptr %19, ptr %19, align 8, !tbaa !648
  %20 = tail call fastcc ptr @single_succ(ptr noundef %18) #15
  %21 = icmp eq ptr %20, %13
  br i1 %21, label %22, label %17, !prof !649, !llvm.loop !650

22:                                               ; preds = %17, %12
  %23 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 2
  store ptr %23, ptr %23, align 8, !tbaa !648
  br label %24

24:                                               ; preds = %68, %22
  %25 = phi ptr [ %0, %22 ], [ %73, %68 ]
  %26 = getelementptr inbounds %struct.tree_ssa_name, ptr %25, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !340
  %28 = tail call fastcc ptr @gimple_bb(ptr noundef %27) #15
  %29 = icmp eq ptr %28, null
  br i1 %29, label %77, label %30, !prof !651

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.basic_block_def, ptr %28, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !648
  %33 = icmp eq ptr %32, null
  br i1 %33, label %77, label %34, !prof !652

34:                                               ; preds = %30
  %35 = icmp eq ptr %28, %15
  br i1 %35, label %36, label %45, !prof !653

36:                                               ; preds = %34
  %37 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #15, !range !316
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %77, !prof !654

39:                                               ; preds = %36, %42
  %40 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #15
  %41 = icmp eq ptr %40, %27
  br i1 %41, label %77, label %42, !prof !655

42:                                               ; preds = %39
  call fastcc void @gsi_next(ptr noundef nonnull %2) #15
  %43 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #15, !range !316
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %39, label %77, !prof !656, !llvm.loop !657

45:                                               ; preds = %34
  %46 = tail call fastcc i32 @gimple_code(ptr noundef %27) #15, !range !327
  %47 = icmp eq i32 %46, 16
  br i1 %47, label %48, label %77

48:                                               ; preds = %45
  %49 = getelementptr inbounds i8, ptr %5, i64 8
  %50 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %28) #15
  store i32 0, ptr %5, align 8, !tbaa.struct !320
  store ptr %50, ptr %49, align 8, !tbaa.struct !321
  %51 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %50, ptr noundef nonnull %4) #15, !range !316
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %64, label %53

53:                                               ; preds = %48, %59
  %54 = load ptr, ptr %4, align 8, !tbaa !310
  %55 = load ptr, ptr %54, align 8, !tbaa !323
  %56 = getelementptr inbounds %struct.basic_block_def, ptr %55, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !648
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %68

59:                                               ; preds = %53
  call fastcc void @ei_next(ptr noundef nonnull %5) #15
  %60 = load i32, ptr %5, align 8
  %61 = load ptr, ptr %49, align 8
  %62 = call fastcc zeroext i8 @ei_cond(i32 %60, ptr %61, ptr noundef nonnull %4) #15, !range !316
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %64, label %53, !llvm.loop !658

64:                                               ; preds = %59, %48
  %65 = load ptr, ptr %4, align 8, !tbaa !310
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 242, ptr noundef nonnull @.str.4) #14
  unreachable

68:                                               ; preds = %53, %64
  %69 = phi ptr [ %65, %64 ], [ %54, %53 ]
  %70 = getelementptr inbounds %struct.edge_def, ptr %69, i64 0, i32 6
  %71 = load i32, ptr %70, align 4, !tbaa !568
  %72 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %27, i32 noundef %71) #15
  %73 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %72) #15
  %74 = load i64, ptr %73, align 8
  %75 = and i64 %74, 65535
  %76 = icmp eq i64 %75, 141
  br i1 %76, label %24, label %77

77:                                               ; preds = %45, %68, %24, %30, %42, %39, %36
  %78 = phi ptr [ %25, %36 ], [ %25, %42 ], [ null, %39 ], [ null, %45 ], [ %25, %24 ], [ %25, %30 ], [ %73, %68 ]
  br i1 %16, label %84, label %79, !prof !647

79:                                               ; preds = %77, %79
  %80 = phi ptr [ %82, %79 ], [ %15, %77 ]
  %81 = getelementptr inbounds %struct.basic_block_def, ptr %80, i64 0, i32 2
  store ptr null, ptr %81, align 8, !tbaa !648
  %82 = tail call fastcc ptr @single_succ(ptr noundef %80) #15
  %83 = icmp eq ptr %82, %13
  br i1 %83, label %84, label %79, !prof !649, !llvm.loop !659

84:                                               ; preds = %79, %77
  store ptr null, ptr %23, align 8, !tbaa !648
  br label %85

85:                                               ; preds = %8, %3, %84
  %86 = phi ptr [ %78, %84 ], [ %0, %3 ], [ null, %8 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  ret ptr %86
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_expr_code(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !630 !PGOFuncName !660 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #15, !range !327
  %3 = trunc i32 %2 to i8
  switch i8 %3, label %7 [
    i8 6, label %4
    i8 1, label %4
    i8 8, label %8
  ], !prof !661

4:                                                ; preds = %1, %1
  %5 = load i32, ptr %0, align 8
  %6 = lshr i32 %5, 16
  br label %8

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1446, ptr noundef nonnull @.str.4) #14
  br label %8

8:                                                ; preds = %1, %7, %4
  %9 = phi i32 [ %6, %4 ], [ 0, %7 ], [ 59, %1 ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_assign(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !637 !PGOFuncName !662 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #15, !range !327
  %3 = icmp eq i32 %2, 6
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_min_invariant(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bb(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !663 !PGOFuncName !664 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !340
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @var_ann(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !449 !PGOFuncName !665 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i16
  switch i16 %3, label %13 [
    i16 32, label %4
    i16 34, label %6
    i16 36, label %8
  ], !prof !666

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.tree_var_decl, ptr %0, i64 0, i32 1
  br label %10

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_parm_decl, ptr %0, i64 0, i32 2
  br label %10

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.tree_result_decl, ptr %0, i64 0, i32 1
  br label %10

10:                                               ; preds = %4, %6, %8
  %11 = phi ptr [ %9, %8 ], [ %7, %6 ], [ %5, %4 ]
  %12 = load ptr, ptr %11, align 8, !tbaa !310
  br label %13

13:                                               ; preds = %1, %10
  %14 = phi ptr [ %12, %10 ], [ null, %1 ]
  ret ptr %14
}

; Function Attrs: optsize
declare ptr @make_ssa_name_fn(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @create_tmp_var(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @add_referenced_var(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @fold_convert_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @eliminate_tail_call(ptr noundef %0) unnamed_addr #0 !prof !667 !PGOFuncName !668 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #16
  %4 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #15
  %5 = tail call fastcc ptr @gsi_bb(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #15
  %6 = load ptr, ptr @dump_file, align 8, !tbaa !310
  %7 = icmp eq ptr %6, null
  br i1 %7, label %19, label %8, !prof !669

8:                                                ; preds = %1
  %9 = load i32, ptr @dump_flags, align 4, !tbaa !301
  %10 = and i32 %9, 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 9
  %14 = load i32, ptr %13, align 8, !tbaa !465
  %15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %6, ptr noundef nonnull @.str.10, i32 noundef %14) #15
  %16 = load ptr, ptr @dump_file, align 8, !tbaa !310
  tail call void @print_gimple_stmt(ptr noundef %16, ptr noundef %4, i32 noundef 0, i32 noundef 2) #14
  %17 = load ptr, ptr @dump_file, align 8, !tbaa !310
  %18 = tail call i32 @fputc(i32 10, ptr %17)
  br label %19

19:                                               ; preds = %12, %8, %1
  %20 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %4) #15, !range !316
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %23, !prof !670

22:                                               ; preds = %19
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 774, ptr noundef nonnull @.str.4) #14
  br label %23

23:                                               ; preds = %19, %22
  %24 = load ptr, ptr @cfun, align 8, !tbaa !310
  %25 = getelementptr inbounds %struct.function, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !312
  %27 = load ptr, ptr %26, align 8, !tbaa !314
  %28 = tail call fastcc ptr @single_succ(ptr noundef %27) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !411
  call fastcc void @gsi_next(ptr noundef nonnull %2) #15
  %29 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #15, !range !316
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %38, !prof !671

31:                                               ; preds = %23, %35
  %32 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #15
  %33 = call fastcc i32 @gimple_code(ptr noundef %32) #15, !range !327
  %34 = icmp eq i32 %33, 9
  br i1 %34, label %38, label %35, !prof !672

35:                                               ; preds = %31
  call void @gsi_remove(ptr noundef nonnull %2, i8 noundef zeroext 1) #14
  call void @release_defs(ptr noundef %32) #14
  %36 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #15, !range !316
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %31, label %38, !prof !673

38:                                               ; preds = %35, %31, %23
  %39 = call fastcc ptr @gsi_bb(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #15
  %40 = call fastcc ptr @single_succ_edge(ptr noundef %39) #15
  %41 = load ptr, ptr @cfun, align 8, !tbaa !310
  %42 = getelementptr inbounds %struct.function, ptr %41, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !312
  %44 = getelementptr inbounds %struct.control_flow_graph, ptr %43, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !319
  %46 = getelementptr inbounds %struct.edge_def, ptr %40, i64 0, i32 9
  %47 = load i64, ptr %46, align 8, !tbaa !674
  %48 = load ptr, ptr %40, align 8, !tbaa !323
  %49 = getelementptr inbounds %struct.basic_block_def, ptr %48, i64 0, i32 11
  %50 = load i32, ptr %49, align 8, !tbaa !675
  %51 = getelementptr inbounds %struct.edge_def, ptr %40, i64 0, i32 8
  %52 = load i32, ptr %51, align 4, !tbaa !676
  %53 = mul nsw i32 %52, %50
  %54 = add nsw i32 %53, 5000
  %55 = sdiv i32 %54, 10000
  call fastcc void @decrease_profile(ptr noundef %45, i64 noundef %47, i32 noundef %55) #15
  %56 = load ptr, ptr @cfun, align 8, !tbaa !310
  %57 = getelementptr inbounds %struct.function, ptr %56, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !312
  %59 = load ptr, ptr %58, align 8, !tbaa !314
  %60 = load i64, ptr %46, align 8, !tbaa !674
  %61 = load ptr, ptr %40, align 8, !tbaa !323
  %62 = getelementptr inbounds %struct.basic_block_def, ptr %61, i64 0, i32 11
  %63 = load i32, ptr %62, align 8, !tbaa !675
  %64 = load i32, ptr %51, align 4, !tbaa !676
  %65 = mul nsw i32 %64, %63
  %66 = add nsw i32 %65, 5000
  %67 = sdiv i32 %66, 10000
  call fastcc void @decrease_profile(ptr noundef %59, i64 noundef %60, i32 noundef %67) #15
  %68 = getelementptr inbounds %struct.edge_def, ptr %40, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !365
  %70 = load ptr, ptr @cfun, align 8, !tbaa !310
  %71 = getelementptr inbounds %struct.function, ptr %70, i64 0, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !312
  %73 = getelementptr inbounds %struct.control_flow_graph, ptr %72, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !319
  %75 = icmp eq ptr %69, %74
  br i1 %75, label %85, label %76, !prof !670

76:                                               ; preds = %38
  %77 = load i64, ptr %46, align 8, !tbaa !674
  %78 = load ptr, ptr %40, align 8, !tbaa !323
  %79 = getelementptr inbounds %struct.basic_block_def, ptr %78, i64 0, i32 11
  %80 = load i32, ptr %79, align 8, !tbaa !675
  %81 = load i32, ptr %51, align 4, !tbaa !676
  %82 = mul nsw i32 %81, %80
  %83 = add nsw i32 %82, 5000
  %84 = sdiv i32 %83, 10000
  call fastcc void @decrease_profile(ptr noundef %69, i64 noundef %77, i32 noundef %84) #15
  br label %85

85:                                               ; preds = %76, %38
  %86 = call fastcc ptr @gsi_bb(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #15
  %87 = call fastcc ptr @single_succ_edge(ptr noundef %86) #15
  %88 = call ptr @redirect_edge_and_branch(ptr noundef %87, ptr noundef %28) #14
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %91, !prof !670

90:                                               ; preds = %85
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 805, ptr noundef nonnull @.str.4) #14
  br label %91

91:                                               ; preds = %85, %90
  %92 = getelementptr inbounds %struct.edge_def, ptr %88, i64 0, i32 2
  store ptr null, ptr %92, align 8, !tbaa !340
  %93 = load ptr, ptr @current_function_decl, align 8, !tbaa !310
  %94 = getelementptr inbounds %struct.tree_decl_non_common, ptr %93, i64 0, i32 2
  %95 = load ptr, ptr %94, align 8, !tbaa !340
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #16
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %28) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !411
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #16
  %96 = icmp eq ptr %95, null
  br i1 %96, label %118, label %97, !prof !677

97:                                               ; preds = %91, %113
  %98 = phi ptr [ %115, %113 ], [ %95, %91 ]
  %99 = phi i32 [ %116, %113 ], [ 0, %91 ]
  %100 = call fastcc zeroext i8 @arg_needs_copy_p(ptr noundef nonnull %98) #15, !range !316
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %113, label %102, !prof !678

102:                                              ; preds = %97
  %103 = call fastcc ptr @gimple_call_arg(ptr noundef %4, i32 noundef %99) #15
  %104 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #15
  %105 = call fastcc ptr @gimple_phi_result_ptr(ptr noundef %104) #15
  %106 = call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %105) #15
  %107 = getelementptr inbounds %struct.tree_ssa_name, ptr %106, i64 0, i32 1
  %108 = load ptr, ptr %107, align 8, !tbaa !340
  %109 = icmp eq ptr %98, %108
  br i1 %109, label %111, label %110, !prof !679

110:                                              ; preds = %102
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 820, ptr noundef nonnull @.str.4) #14
  br label %111

111:                                              ; preds = %102, %110
  %112 = call fastcc i32 @gimple_location(ptr noundef %4) #15
  call void @add_phi_arg(ptr noundef %104, ptr noundef %103, ptr noundef %88, i32 noundef %112) #14
  call fastcc void @gsi_next(ptr noundef nonnull %2) #15
  br label %113

113:                                              ; preds = %97, %111
  %114 = getelementptr inbounds %struct.tree_common, ptr %98, i64 0, i32 1
  %115 = load ptr, ptr %114, align 8, !tbaa !340
  %116 = add i32 %99, 1
  %117 = icmp eq ptr %115, null
  br i1 %117, label %118, label %97, !prof !680, !llvm.loop !681

118:                                              ; preds = %113, %91
  %119 = getelementptr inbounds %struct.tailcall, ptr %0, i64 0, i32 2
  %120 = load ptr, ptr %119, align 8, !tbaa !348
  %121 = getelementptr inbounds %struct.tailcall, ptr %0, i64 0, i32 3
  %122 = load ptr, ptr %121, align 8, !tbaa !346
  call fastcc void @adjust_accumulator_values(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %120, ptr noundef %122, ptr noundef %88) #15
  %123 = call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #15
  %124 = call fastcc ptr @gimple_call_lhs(ptr noundef %123) #15
  %125 = icmp eq ptr %124, null
  br i1 %125, label %129, label %126, !prof !682

126:                                              ; preds = %118
  %127 = call ptr @gimple_build_nop() #14
  %128 = getelementptr inbounds %struct.tree_ssa_name, ptr %124, i64 0, i32 2
  store ptr %127, ptr %128, align 8, !tbaa !340
  br label %129

129:                                              ; preds = %126, %118
  call void @gsi_remove(ptr noundef nonnull %0, i8 noundef zeroext 1) #14
  call void @release_defs(ptr noundef %123) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #16
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @gimple_call_set_tail(ptr nocapture noundef %0) unnamed_addr #11 !prof !683 !PGOFuncName !684 {
  %2 = load i32, ptr %0, align 8
  %3 = or i32 %2, 524288
  store i32 %3, ptr %0, align 8
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #12

; Function Attrs: optsize
declare void @print_gimple_stmt(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gsi_bb(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #6 !prof !685 !PGOFuncName !686 {
  %2 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !494
  ret ptr %3
}

; Function Attrs: optsize
declare void @gsi_remove(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @release_defs(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @decrease_profile(ptr nocapture noundef %0, i64 noundef %1, i32 noundef %2) unnamed_addr #0 !prof !685 !PGOFuncName !687 {
  %4 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 8
  %5 = load i64, ptr %4, align 8, !tbaa !688
  %6 = sub nsw i64 %5, %1
  %7 = icmp slt i64 %6, 0
  br i1 %7, label %8, label %9, !prof !689

8:                                                ; preds = %3
  br label %9

9:                                                ; preds = %8, %3
  %10 = phi i64 [ 0, %8 ], [ %6, %3 ]
  store i64 %10, ptr %4, align 8, !tbaa !688
  %11 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 11
  %12 = load i32, ptr %11, align 8, !tbaa !675
  %13 = sub nsw i32 %12, %2
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %16, !prof !690

15:                                               ; preds = %9
  br label %16

16:                                               ; preds = %15, %9
  %17 = phi i32 [ 0, %15 ], [ %13, %9 ]
  store i32 %17, ptr %11, align 8, !tbaa !675
  %18 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef nonnull %0) #15, !range !316
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %26, !prof !691

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !448
  %23 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %22) #15
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %35, label %25, !prof !669

25:                                               ; preds = %20
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 719, ptr noundef nonnull @.str.4) #14
  br label %35

26:                                               ; preds = %16
  %27 = tail call fastcc ptr @single_succ_edge(ptr noundef nonnull %0) #15
  %28 = getelementptr inbounds %struct.edge_def, ptr %27, i64 0, i32 9
  %29 = load i64, ptr %28, align 8, !tbaa !674
  %30 = sub nsw i64 %29, %1
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %33, !prof !692

32:                                               ; preds = %26
  br label %33

33:                                               ; preds = %32, %26
  %34 = phi i64 [ 0, %32 ], [ %30, %26 ]
  store i64 %34, ptr %28, align 8, !tbaa !674
  br label %35

35:                                               ; preds = %25, %20, %33
  ret void
}

; Function Attrs: optsize
declare ptr @redirect_edge_and_branch(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_location(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !693 !PGOFuncName !694 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !340
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @adjust_accumulator_values(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !prof !667 !PGOFuncName !695 {
  %5 = icmp eq ptr %1, null
  br i1 %5, label %8, label %6, !prof !349

6:                                                ; preds = %4
  %7 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %0, ptr noundef nonnull %1, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #14
  br label %8

8:                                                ; preds = %6, %4
  %9 = phi ptr [ %7, %6 ], [ null, %4 ]
  %10 = icmp eq ptr %2, null
  br i1 %10, label %11, label %14, !prof !696

11:                                               ; preds = %8
  %12 = load ptr, ptr @a_acc, align 8, !tbaa !310
  %13 = load ptr, ptr @m_acc, align 8, !tbaa !310
  br label %31

14:                                               ; preds = %8
  %15 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %0, ptr noundef nonnull %2, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #14
  %16 = load ptr, ptr @a_acc, align 8, !tbaa !310
  %17 = load ptr, ptr @m_acc, align 8, !tbaa !310
  %18 = icmp eq ptr %15, null
  br i1 %18, label %31, label %19, !prof !353

19:                                               ; preds = %14
  %20 = icmp eq ptr %17, null
  br i1 %20, label %27, label %21, !prof !697

21:                                               ; preds = %19
  %22 = call i32 @integer_onep(ptr noundef nonnull %15) #14
  %23 = icmp eq i32 %22, 0
  %24 = load ptr, ptr @m_acc, align 8, !tbaa !310
  br i1 %23, label %25, label %27

25:                                               ; preds = %21
  %26 = call fastcc ptr @adjust_return_value_with_ops(i32 noundef 65, ptr noundef nonnull @.str.12, ptr noundef %24, ptr noundef nonnull %15, ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %0) #15
  br label %27

27:                                               ; preds = %21, %19, %25
  %28 = phi ptr [ %26, %25 ], [ %15, %19 ], [ %24, %21 ]
  %29 = load ptr, ptr @a_acc, align 8, !tbaa !310
  %30 = call fastcc ptr @update_accumulator_with_ops(i32 noundef 63, ptr noundef %29, ptr noundef %28, ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %0) #15
  br label %31

31:                                               ; preds = %11, %27, %14
  %32 = phi ptr [ %17, %27 ], [ %17, %14 ], [ %13, %11 ]
  %33 = phi ptr [ %30, %27 ], [ %16, %14 ], [ %12, %11 ]
  %34 = icmp eq ptr %9, null
  br i1 %34, label %38, label %35, !prof !349

35:                                               ; preds = %31
  %36 = load ptr, ptr @m_acc, align 8, !tbaa !310
  %37 = call fastcc ptr @update_accumulator_with_ops(i32 noundef 65, ptr noundef %36, ptr noundef nonnull %9, ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %0) #15
  br label %38

38:                                               ; preds = %35, %31
  %39 = phi ptr [ %37, %35 ], [ %32, %31 ]
  %40 = load ptr, ptr @a_acc, align 8, !tbaa !310
  %41 = icmp eq ptr %40, null
  br i1 %41, label %43, label %42, !prof !696

42:                                               ; preds = %38
  call fastcc void @add_successor_phi_arg(ptr noundef %3, ptr noundef nonnull %40, ptr noundef %33) #15
  br label %43

43:                                               ; preds = %42, %38
  %44 = load ptr, ptr @m_acc, align 8, !tbaa !310
  %45 = icmp eq ptr %44, null
  br i1 %45, label %47, label %46, !prof !698

46:                                               ; preds = %43
  call fastcc void @add_successor_phi_arg(ptr noundef %3, ptr noundef nonnull %44, ptr noundef %39) #15
  br label %47

47:                                               ; preds = %46, %43
  ret void
}

; Function Attrs: optsize
declare ptr @gimple_build_nop() local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @force_gimple_operand_gsi(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @integer_onep(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @adjust_return_value_with_ops(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %4) unnamed_addr #0 !prof !458 !PGOFuncName !699 {
  %6 = load ptr, ptr @current_function_decl, align 8, !tbaa !310
  %7 = getelementptr inbounds %struct.tree_decl_non_common, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !340
  %9 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !340
  %11 = tail call ptr @create_tmp_var(ptr noundef %10, ptr noundef %1) #14
  %12 = load i64, ptr %10, align 8
  %13 = trunc i64 %12 to i32
  %14 = and i32 %13, 65535
  %15 = add nsw i32 %14, -13
  %16 = icmp ult i32 %15, 2
  br i1 %16, label %17, label %21, !prof !460

17:                                               ; preds = %5
  %18 = getelementptr inbounds %struct.tree_decl_common, ptr %11, i64 0, i32 2
  %19 = load i64, ptr %18, align 8
  %20 = or i64 %19, 134217728
  store i64 %20, ptr %18, align 8
  br label %21

21:                                               ; preds = %5, %17
  %22 = tail call zeroext i8 @add_referenced_var(ptr noundef %11) #14
  %23 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !340
  %25 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !340
  %27 = tail call zeroext i8 @types_compatible_p(ptr noundef %24, ptr noundef %26) #14
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %31, label %29, !prof !358

29:                                               ; preds = %21
  %30 = tail call ptr @gimple_build_assign_with_ops_stat(i32 noundef %0, ptr noundef %11, ptr noundef nonnull %2, ptr noundef nonnull %3) #14
  br label %39

31:                                               ; preds = %21
  %32 = load ptr, ptr %23, align 8, !tbaa !340
  %33 = load ptr, ptr %25, align 8, !tbaa !340
  %34 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %33, ptr noundef nonnull %2) #14
  %35 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef %0, ptr noundef %33, ptr noundef %34, ptr noundef nonnull %3) #14
  %36 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %32, ptr noundef %35) #14
  %37 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %4, ptr noundef %36, i8 noundef zeroext 0, ptr noundef null, i8 noundef zeroext 1, i32 noundef 2) #14
  %38 = call ptr @gimple_build_assign_stat(ptr noundef null, ptr noundef %37) #14
  br label %39

39:                                               ; preds = %31, %29
  %40 = phi ptr [ %30, %29 ], [ %38, %31 ]
  %41 = call fastcc ptr @make_ssa_name(ptr noundef %11, ptr noundef %40) #15
  call fastcc void @gimple_assign_set_lhs(ptr noundef %40, ptr noundef %41) #15
  call fastcc void @update_stmt(ptr noundef %40) #15
  call void @gsi_insert_before(ptr noundef nonnull %4, ptr noundef %40, i32 noundef 0) #14
  ret ptr %41
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @update_accumulator_with_ops(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %3) unnamed_addr #0 !prof !458 !PGOFuncName !700 {
  %5 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !340
  %7 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !340
  %9 = tail call zeroext i8 @types_compatible_p(ptr noundef %6, ptr noundef %8) #14
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %15, label %11, !prof !358

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !340
  %14 = tail call ptr @gimple_build_assign_with_ops_stat(i32 noundef %0, ptr noundef %13, ptr noundef nonnull %1, ptr noundef nonnull %2) #14
  br label %23

15:                                               ; preds = %4
  %16 = load ptr, ptr %5, align 8, !tbaa !340
  %17 = load ptr, ptr %7, align 8, !tbaa !340
  %18 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %17, ptr noundef nonnull %1) #14
  %19 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef %0, ptr noundef %17, ptr noundef %18, ptr noundef nonnull %2) #14
  %20 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %16, ptr noundef %19) #14
  %21 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %3, ptr noundef %20, i8 noundef zeroext 0, ptr noundef null, i8 noundef zeroext 0, i32 noundef 2) #14
  %22 = call ptr @gimple_build_assign_stat(ptr noundef null, ptr noundef %21) #14
  br label %23

23:                                               ; preds = %15, %11
  %24 = phi ptr [ %14, %11 ], [ %22, %15 ]
  %25 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !340
  %27 = call fastcc ptr @make_ssa_name(ptr noundef %26, ptr noundef %24) #15
  call fastcc void @gimple_assign_set_lhs(ptr noundef %24, ptr noundef %27) #15
  call fastcc void @update_stmt(ptr noundef %24) #15
  call void @gsi_insert_after(ptr noundef nonnull %3, ptr noundef %24, i32 noundef 0) #14
  ret ptr %27
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_successor_phi_arg(ptr noundef %0, ptr noundef readnone %1, ptr noundef %2) unnamed_addr #0 !prof !701 !PGOFuncName !702 {
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #16
  %5 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !365
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %6) #14
  %7 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #15, !range !316
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %17, !prof !703

9:                                                ; preds = %3, %14
  %10 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #15
  %11 = call fastcc ptr @gimple_phi_result_ptr(ptr noundef %10) #15
  %12 = call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %11) #15
  %13 = icmp eq ptr %12, %1
  br i1 %13, label %18, label %14, !prof !704

14:                                               ; preds = %9
  call fastcc void @gsi_next(ptr noundef nonnull %4) #15
  %15 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #15, !range !316
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %9, label %17, !prof !705, !llvm.loop !706

17:                                               ; preds = %14, %3
  call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 562, ptr noundef nonnull @.str.4) #14
  br label %18

18:                                               ; preds = %9, %17
  %19 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #15
  call void @add_phi_arg(ptr noundef %19, ptr noundef %2, ptr noundef %0, i32 noundef 0) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #16
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @types_compatible_p(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @gimple_build_assign_with_ops_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @gimple_build_assign_stat(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_assign_set_lhs(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !707 !PGOFuncName !708 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, ptr noundef %1) #15
  %3 = icmp eq ptr %1, null
  br i1 %3, label %10, label %4, !prof !709

4:                                                ; preds = %2
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %8, label %10, !prof !710

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 2
  store ptr %0, ptr %9, align 8, !tbaa !340
  br label %10

10:                                               ; preds = %8, %4, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_stmt(ptr noundef %0) unnamed_addr #0 !prof !711 !PGOFuncName !712 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #15, !range !316
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %5, label %4, !prof !713

4:                                                ; preds = %1
  tail call void @gimple_set_modified(ptr noundef %0, i8 noundef zeroext 1) #14
  tail call void @update_stmt_operands(ptr noundef %0) #14
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: optsize
declare void @gsi_insert_before(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_set_op(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !711 !PGOFuncName !714 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #15, !range !316
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %8, label %5, !prof !713

5:                                                ; preds = %2
  %6 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #15
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9, !prof !713

8:                                                ; preds = %5, %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 1665, ptr noundef nonnull @.str.4) #14
  br label %9

9:                                                ; preds = %5, %8
  %10 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #15
  store ptr %1, ptr %10, align 8, !tbaa !310
  ret void
}

; Function Attrs: optsize
declare void @gimple_set_modified(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @update_stmt_operands(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @gsi_insert_after(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gimple_seq_last_stmt(ptr noundef readonly %0) unnamed_addr #7 !prof !458 !PGOFuncName !715 {
  %2 = tail call fastcc ptr @gimple_seq_last(ptr noundef %0) #15
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4, !prof !358

4:                                                ; preds = %1
  %5 = load ptr, ptr %2, align 8, !tbaa !538
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi ptr [ %5, %4 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_return_set_retval(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !458 !PGOFuncName !716 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, ptr noundef %1) #15
  ret void
}

; Function Attrs: optsize
declare void @mark_sym_for_renaming(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @execute_tail_calls() #0 !prof !717 !PGOFuncName !718 {
  %1 = tail call fastcc i32 @tree_optimize_tail_calls_1(i8 noundef zeroext 1) #15, !range !308
  ret i32 %1
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #13

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind }
attributes #14 = { nounwind optsize }
attributes #15 = { optsize }
attributes #16 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!298}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297}
!36 = !{ptr @gate_tail_calls, ptr @dbg_cnt, i64 22267}
!37 = !{ptr @execute_tail_recursion, ptr @tree_optimize_tail_calls_1, i64 15616}
!38 = !{ptr @tree_optimize_tail_calls_1, ptr @single_succ, i64 22268}
!39 = !{ptr @tree_optimize_tail_calls_1, ptr @suitable_for_tail_opt_p, i64 22268}
!40 = !{ptr @tree_optimize_tail_calls_1, ptr @suitable_for_tail_call_opt_p, i64 5684}
!41 = !{ptr @tree_optimize_tail_calls_1, ptr @ei_start_1, i64 19246}
!42 = !{ptr @tree_optimize_tail_calls_1, ptr @ei_cond, i64 38426}
!43 = !{ptr @tree_optimize_tail_calls_1, ptr @last_stmt, i64 19180}
!44 = !{ptr @tree_optimize_tail_calls_1, ptr @gimple_code, i64 19178}
!45 = !{ptr @tree_optimize_tail_calls_1, ptr @find_tail_calls, i64 19171}
!46 = !{ptr @tree_optimize_tail_calls_1, ptr @ei_next, i64 19180}
!47 = !{ptr @tree_optimize_tail_calls_1, ptr @single_pred_p, i64 173}
!48 = !{ptr @tree_optimize_tail_calls_1, ptr @phi_nodes, i64 172}
!49 = !{ptr @tree_optimize_tail_calls_1, ptr @gimple_seq_empty_p, i64 172}
!50 = !{ptr @tree_optimize_tail_calls_1, ptr @single_succ_edge, i64 4}
!51 = !{ptr @tree_optimize_tail_calls_1, ptr @split_edge, i64 4}
!52 = !{ptr @tree_optimize_tail_calls_1, ptr @arg_needs_copy_p, i64 379}
!53 = !{ptr @tree_optimize_tail_calls_1, ptr @gimple_default_def, i64 376}
!54 = !{ptr @tree_optimize_tail_calls_1, ptr @make_ssa_name, i64 376}
!55 = !{ptr @tree_optimize_tail_calls_1, ptr @set_default_def, i64 376}
!56 = !{ptr @tree_optimize_tail_calls_1, ptr @create_phi_node, i64 376}
!57 = !{ptr @tree_optimize_tail_calls_1, ptr @single_pred_edge, i64 376}
!58 = !{ptr @tree_optimize_tail_calls_1, ptr @add_phi_arg, i64 376}
!59 = !{ptr @tree_optimize_tail_calls_1, ptr @create_tailcall_accumulator, i64 5}
!60 = !{ptr @tree_optimize_tail_calls_1, ptr @optimize_tail_call, i64 12234}
!61 = !{ptr @tree_optimize_tail_calls_1, ptr @free, i64 12234}
!62 = !{ptr @tree_optimize_tail_calls_1, ptr @adjust_return_value, i64 5}
!63 = !{ptr @tree_optimize_tail_calls_1, ptr @free_dominance_info, i64 173}
!64 = !{ptr @tree_optimize_tail_calls_1, ptr @add_virtual_phis, i64 173}
!65 = !{ptr @single_succ, ptr @single_succ_edge, i64 34350}
!66 = !{ptr @suitable_for_tail_opt_p, ptr @first_referenced_var, i64 22129}
!67 = !{ptr @suitable_for_tail_opt_p, ptr @end_referenced_vars_p, i64 754714}
!68 = !{ptr @suitable_for_tail_opt_p, ptr @is_global_var, i64 735486}
!69 = !{ptr @suitable_for_tail_opt_p, ptr @is_call_used, i64 665749}
!70 = !{ptr @suitable_for_tail_opt_p, ptr @next_referenced_var, i64 732585}
!71 = !{ptr @ei_cond, ptr @ei_end_p, i64 163472}
!72 = !{ptr @ei_cond, ptr @ei_edge, i64 124704}
!73 = !{ptr @find_tail_calls, ptr @single_succ_p, i64 124700}
!74 = !{ptr @find_tail_calls, ptr @gsi_last_bb, i64 47132}
!75 = !{ptr @find_tail_calls, ptr @gsi_end_p, i64 124763}
!76 = !{ptr @find_tail_calls, ptr @gsi_stmt, i64 97622}
!77 = !{ptr @find_tail_calls, ptr @gimple_code, i64 97622}
!78 = !{ptr @find_tail_calls, ptr @is_gimple_debug, i64 67336}
!79 = !{ptr @find_tail_calls, ptr @is_gimple_call, i64 66153}
!80 = !{ptr @find_tail_calls, ptr @gimple_references_memory_p, i64 45441}
!81 = !{ptr @find_tail_calls, ptr @gimple_has_volatile_ops, i64 31477}
!82 = !{ptr @find_tail_calls, ptr @gsi_prev, i64 35795}
!83 = !{ptr @find_tail_calls, ptr @ei_start_1, i64 12456}
!84 = !{ptr @find_tail_calls, ptr @ei_cond, i64 79782}
!85 = !{ptr @find_tail_calls, ptr @find_tail_calls, i64 67326}
!86 = !{ptr @find_tail_calls, ptr @ei_next, i64 67326}
!87 = !{ptr @find_tail_calls, ptr @gimple_call_lhs, i64 20712}
!88 = !{ptr @find_tail_calls, ptr @is_gimple_reg, i64 9636}
!89 = !{ptr @find_tail_calls, ptr @gimple_call_fndecl, i64 20707}
!90 = !{ptr @find_tail_calls, ptr @gimple_call_num_args, i64 1660}
!91 = !{ptr @find_tail_calls, ptr @gimple_call_arg, i64 736}
!92 = !{ptr @find_tail_calls, ptr @is_gimple_reg_type, i64 735}
!93 = !{ptr @find_tail_calls, ptr @useless_type_conversion_p, i64 735}
!94 = !{ptr @find_tail_calls, ptr @gsi_next, i64 27150}
!95 = !{ptr @find_tail_calls, ptr @single_succ_edge, i64 14686}
!96 = !{ptr @find_tail_calls, ptr @propagate_through_phis, i64 14686}
!97 = !{ptr @find_tail_calls, ptr @single_succ, i64 14686}
!98 = !{ptr @find_tail_calls, ptr @gsi_start_bb, i64 14686}
!99 = !{ptr @find_tail_calls, ptr @process_assignment, i64 1179}
!100 = !{ptr @find_tail_calls, ptr @fold_build2_stat_loc, i64 21}
!101 = !{ptr @find_tail_calls, ptr @gimple_return_retval, i64 19798}
!102 = !{ptr @find_tail_calls, ptr @xmalloc, i64 15361}
!103 = !{ptr @ei_next, ptr @ei_container, i64 249409}
!104 = !{ptr @ei_next, ptr @VEC_edge_base_length, i64 124705}
!105 = !{ptr @ei_next, ptr @fancy_abort, i64 1}
!106 = !{ptr @single_pred_p, ptr @VEC_edge_base_length, i64 554}
!107 = !{ptr @phi_nodes, ptr @fancy_abort, i64 1}
!108 = !{ptr @single_succ_edge, ptr @single_succ_p, i64 47561}
!109 = !{ptr @single_succ_edge, ptr @fancy_abort, i64 1}
!110 = !{ptr @single_succ_edge, ptr @VEC_edge_base_index, i64 47561}
!111 = !{ptr @arg_needs_copy_p, ptr @is_gimple_reg, i64 1362}
!112 = !{ptr @arg_needs_copy_p, ptr @var_ann, i64 1361}
!113 = !{ptr @arg_needs_copy_p, ptr @gimple_default_def, i64 1356}
!114 = !{ptr @make_ssa_name, ptr @make_ssa_name_fn, i64 387}
!115 = !{ptr @single_pred_edge, ptr @single_pred_p, i64 382}
!116 = !{ptr @single_pred_edge, ptr @fancy_abort, i64 1}
!117 = !{ptr @single_pred_edge, ptr @VEC_edge_base_index, i64 382}
!118 = !{ptr @create_tailcall_accumulator, ptr @create_tmp_var, i64 5}
!119 = !{ptr @create_tailcall_accumulator, ptr @add_referenced_var, i64 5}
!120 = !{ptr @create_tailcall_accumulator, ptr @create_phi_node, i64 5}
!121 = !{ptr @create_tailcall_accumulator, ptr @fold_convert_loc, i64 5}
!122 = !{ptr @create_tailcall_accumulator, ptr @single_pred_edge, i64 5}
!123 = !{ptr @create_tailcall_accumulator, ptr @add_phi_arg, i64 5}
!124 = !{ptr @create_tailcall_accumulator, ptr @gimple_phi_result_ptr, i64 5}
!125 = !{ptr @create_tailcall_accumulator, ptr @get_def_from_ptr, i64 5}
!126 = !{ptr @optimize_tail_call, ptr @eliminate_tail_call, i64 380}
!127 = !{ptr @optimize_tail_call, ptr @gsi_stmt, i64 3465}
!128 = !{ptr @optimize_tail_call, ptr @gimple_call_set_tail, i64 3465}
!129 = !{ptr @adjust_return_value, ptr @bb_seq, i64 5}
!130 = !{ptr @adjust_return_value, ptr @gimple_seq_last_stmt, i64 5}
!131 = !{ptr @adjust_return_value, ptr @gsi_last_bb, i64 5}
!132 = !{ptr @adjust_return_value, ptr @gimple_code, i64 5}
!133 = !{ptr @adjust_return_value, ptr @fancy_abort, i64 1}
!134 = !{ptr @adjust_return_value, ptr @gimple_return_retval, i64 5}
!135 = !{ptr @adjust_return_value, ptr @adjust_return_value_with_ops, i64 4}
!136 = !{ptr @adjust_return_value, ptr @gimple_return_set_retval, i64 4}
!137 = !{ptr @adjust_return_value, ptr @update_stmt, i64 4}
!138 = !{ptr @add_virtual_phis, ptr @first_referenced_var, i64 172}
!139 = !{ptr @add_virtual_phis, ptr @end_referenced_vars_p, i64 8366}
!140 = !{ptr @add_virtual_phis, ptr @is_gimple_reg, i64 8194}
!141 = !{ptr @add_virtual_phis, ptr @gimple_default_def, i64 646}
!142 = !{ptr @add_virtual_phis, ptr @mark_sym_for_renaming, i64 172}
!143 = !{ptr @add_virtual_phis, ptr @next_referenced_var, i64 8194}
!144 = !{ptr @first_referenced_var, ptr @gimple_referenced_vars, i64 22302}
!145 = !{ptr @first_referenced_var, ptr @first_htab_element, i64 22302}
!146 = !{ptr @end_referenced_vars_p, ptr @end_htab_p, i64 760720}
!147 = !{ptr @is_call_used, ptr @is_call_clobbered, i64 663560}
!148 = !{ptr @is_call_used, ptr @may_be_aliased, i64 660700}
!149 = !{ptr @is_call_used, ptr @pt_solution_includes, i64 196}
!150 = !{ptr @next_referenced_var, ptr @next_htab_element, i64 738418}
!151 = !{ptr @first_htab_element, ptr @htab_size, i64 22302}
!152 = !{ptr @is_call_clobbered, ptr @is_global_var, i64 663560}
!153 = !{ptr @is_call_clobbered, ptr @may_be_aliased, i64 663559}
!154 = !{ptr @is_call_clobbered, ptr @pt_solution_includes, i64 3055}
!155 = !{ptr @ei_end_p, ptr @ei_container, i64 326449}
!156 = !{ptr @ei_end_p, ptr @VEC_edge_base_length, i64 163472}
!157 = !{ptr @ei_edge, ptr @ei_container, i64 249409}
!158 = !{ptr @ei_edge, ptr @VEC_edge_base_index, i64 124705}
!159 = !{ptr @ei_container, ptr @fancy_abort, i64 1}
!160 = !{ptr @single_succ_p, ptr @VEC_edge_base_length, i64 173398}
!161 = !{ptr @gsi_last_bb, ptr @bb_seq, i64 47137}
!162 = !{ptr @gsi_last_bb, ptr @gimple_seq_last, i64 47137}
!163 = !{ptr @is_gimple_debug, ptr @gimple_code, i64 53615}
!164 = !{ptr @is_gimple_call, ptr @gimple_code, i64 53054}
!165 = !{ptr @gimple_call_lhs, ptr @gimple_op, i64 16871}
!166 = !{ptr @gimple_references_memory_p, ptr @gimple_has_mem_ops, i64 36183}
!167 = !{ptr @gimple_references_memory_p, ptr @gimple_vuse, i64 36182}
!168 = !{ptr @gimple_has_volatile_ops, ptr @gimple_has_mem_ops, i64 25065}
!169 = !{ptr @gimple_call_fndecl, ptr @gimple_call_fn, i64 16489}
!170 = !{ptr @gimple_call_num_args, ptr @gimple_num_ops, i64 1658}
!171 = !{ptr @gimple_call_arg, ptr @gimple_op, i64 2149}
!172 = !{ptr @propagate_through_phis, ptr @gsi_start_phis, i64 11693}
!173 = !{ptr @propagate_through_phis, ptr @gsi_end_p, i64 14895}
!174 = !{ptr @propagate_through_phis, ptr @gsi_stmt, i64 11167}
!175 = !{ptr @propagate_through_phis, ptr @gimple_phi_arg_imm_use_ptr, i64 11167}
!176 = !{ptr @propagate_through_phis, ptr @get_use_from_ptr, i64 11167}
!177 = !{ptr @propagate_through_phis, ptr @gimple_phi_result_ptr, i64 7965}
!178 = !{ptr @propagate_through_phis, ptr @get_def_from_ptr, i64 7965}
!179 = !{ptr @propagate_through_phis, ptr @gsi_next, i64 3202}
!180 = !{ptr @gsi_start_bb, ptr @bb_seq, i64 11693}
!181 = !{ptr @gsi_start_bb, ptr @gimple_seq_first, i64 11693}
!182 = !{ptr @process_assignment, ptr @gimple_assign_lhs, i64 940}
!183 = !{ptr @process_assignment, ptr @gimple_assign_rhs_code, i64 940}
!184 = !{ptr @process_assignment, ptr @get_gimple_rhs_class, i64 940}
!185 = !{ptr @process_assignment, ptr @gimple_assign_rhs1, i64 1692}
!186 = !{ptr @process_assignment, ptr @gimple_assign_cast_p, i64 1097}
!187 = !{ptr @process_assignment, ptr @vector_type_mode, i64 2}
!188 = !{ptr @process_assignment, ptr @gimple_assign_rhs2, i64 752}
!189 = !{ptr @process_assignment, ptr @independent_of_stmt_p, i64 741}
!190 = !{ptr @gimple_return_retval, ptr @gimple_op, i64 15770}
!191 = !{ptr @gimple_op, ptr @gimple_has_ops, i64 54682}
!192 = !{ptr @gimple_op, ptr @gimple_ops, i64 54681}
!193 = !{ptr @gimple_has_ops, ptr @gimple_code, i64 54712}
!194 = !{ptr @gimple_ops, ptr @gimple_statement_structure, i64 54697}
!195 = !{ptr @gimple_ops, ptr @fancy_abort, i64 1}
!196 = !{ptr @gimple_statement_structure, ptr @gimple_code, i64 54697}
!197 = !{ptr @gimple_statement_structure, ptr @gss_for_code, i64 54697}
!198 = !{ptr @gimple_has_mem_ops, ptr @gimple_code, i64 97431}
!199 = !{ptr @gimple_vuse, ptr @gimple_has_mem_ops, i64 36183}
!200 = !{ptr @gimple_call_fn, ptr @gimple_op, i64 16489}
!201 = !{ptr @gimple_phi_arg_imm_use_ptr, ptr @gimple_phi_arg, i64 6642}
!202 = !{ptr @gimple_phi_arg, ptr @fancy_abort, i64 1}
!203 = !{ptr @gimple_assign_lhs, ptr @gimple_op, i64 940}
!204 = !{ptr @gimple_assign_rhs_code, ptr @gimple_expr_code, i64 2038}
!205 = !{ptr @gimple_assign_rhs_code, ptr @get_gimple_rhs_class, i64 2038}
!206 = !{ptr @gimple_assign_rhs_code, ptr @gimple_assign_rhs1, i64 14}
!207 = !{ptr @gimple_assign_rhs1, ptr @gimple_op, i64 1708}
!208 = !{ptr @gimple_assign_cast_p, ptr @is_gimple_assign, i64 1098}
!209 = !{ptr @gimple_assign_cast_p, ptr @gimple_assign_rhs_code, i64 1097}
!210 = !{ptr @gimple_assign_rhs2, ptr @gimple_num_ops, i64 755}
!211 = !{ptr @gimple_assign_rhs2, ptr @gimple_op, i64 754}
!212 = !{ptr @independent_of_stmt_p, ptr @is_gimple_min_invariant, i64 744}
!213 = !{ptr @independent_of_stmt_p, ptr @gimple_bb, i64 472}
!214 = !{ptr @independent_of_stmt_p, ptr @gsi_stmt, i64 432}
!215 = !{ptr @independent_of_stmt_p, ptr @single_succ, i64 12}
!216 = !{ptr @independent_of_stmt_p, ptr @gsi_end_p, i64 402}
!217 = !{ptr @independent_of_stmt_p, ptr @gsi_next, i64 274}
!218 = !{ptr @independent_of_stmt_p, ptr @gimple_code, i64 1}
!219 = !{ptr @independent_of_stmt_p, ptr @ei_start_1, i64 1}
!220 = !{ptr @independent_of_stmt_p, ptr @ei_cond, i64 10}
!221 = !{ptr @independent_of_stmt_p, ptr @ei_next, i64 9}
!222 = !{ptr @independent_of_stmt_p, ptr @gimple_phi_arg_imm_use_ptr, i64 1}
!223 = !{ptr @independent_of_stmt_p, ptr @get_use_from_ptr, i64 1}
!224 = !{ptr @gimple_expr_code, ptr @gimple_code, i64 2038}
!225 = !{ptr @is_gimple_assign, ptr @gimple_code, i64 1098}
!226 = !{ptr @eliminate_tail_call, ptr @gsi_stmt, i64 1743}
!227 = !{ptr @eliminate_tail_call, ptr @gsi_bb, i64 1137}
!228 = !{ptr @eliminate_tail_call, ptr @is_gimple_call, i64 379}
!229 = !{ptr @eliminate_tail_call, ptr @fancy_abort, i64 3}
!230 = !{ptr @eliminate_tail_call, ptr @single_succ, i64 379}
!231 = !{ptr @eliminate_tail_call, ptr @gsi_next, i64 1357}
!232 = !{ptr @eliminate_tail_call, ptr @gsi_end_p, i64 385}
!233 = !{ptr @eliminate_tail_call, ptr @gimple_code, i64 7}
!234 = !{ptr @eliminate_tail_call, ptr @gsi_remove, i64 385}
!235 = !{ptr @eliminate_tail_call, ptr @release_defs, i64 385}
!236 = !{ptr @eliminate_tail_call, ptr @single_succ_edge, i64 758}
!237 = !{ptr @eliminate_tail_call, ptr @decrease_profile, i64 1136}
!238 = !{ptr @eliminate_tail_call, ptr @redirect_edge_and_branch, i64 379}
!239 = !{ptr @eliminate_tail_call, ptr @gsi_start_phis, i64 379}
!240 = !{ptr @eliminate_tail_call, ptr @arg_needs_copy_p, i64 981}
!241 = !{ptr @eliminate_tail_call, ptr @gimple_call_arg, i64 978}
!242 = !{ptr @eliminate_tail_call, ptr @gimple_phi_result_ptr, i64 978}
!243 = !{ptr @eliminate_tail_call, ptr @get_def_from_ptr, i64 978}
!244 = !{ptr @eliminate_tail_call, ptr @gimple_location, i64 978}
!245 = !{ptr @eliminate_tail_call, ptr @add_phi_arg, i64 978}
!246 = !{ptr @eliminate_tail_call, ptr @adjust_accumulator_values, i64 379}
!247 = !{ptr @eliminate_tail_call, ptr @gimple_call_lhs, i64 379}
!248 = !{ptr @eliminate_tail_call, ptr @gimple_build_nop, i64 210}
!249 = !{ptr @decrease_profile, ptr @single_succ_p, i64 1137}
!250 = !{ptr @decrease_profile, ptr @VEC_edge_base_length, i64 379}
!251 = !{ptr @decrease_profile, ptr @fancy_abort, i64 1}
!252 = !{ptr @decrease_profile, ptr @single_succ_edge, i64 758}
!253 = !{ptr @adjust_accumulator_values, ptr @force_gimple_operand_gsi, i64 7}
!254 = !{ptr @adjust_accumulator_values, ptr @integer_onep, i64 1}
!255 = !{ptr @adjust_accumulator_values, ptr @update_accumulator_with_ops, i64 7}
!256 = !{ptr @adjust_accumulator_values, ptr @add_successor_phi_arg, i64 9}
!257 = !{ptr @adjust_return_value_with_ops, ptr @create_tmp_var, i64 5}
!258 = !{ptr @adjust_return_value_with_ops, ptr @add_referenced_var, i64 5}
!259 = !{ptr @adjust_return_value_with_ops, ptr @types_compatible_p, i64 5}
!260 = !{ptr @adjust_return_value_with_ops, ptr @gimple_build_assign_with_ops_stat, i64 4}
!261 = !{ptr @adjust_return_value_with_ops, ptr @fold_convert_loc, i64 2}
!262 = !{ptr @adjust_return_value_with_ops, ptr @fold_build2_stat_loc, i64 1}
!263 = !{ptr @adjust_return_value_with_ops, ptr @force_gimple_operand_gsi, i64 1}
!264 = !{ptr @adjust_return_value_with_ops, ptr @gimple_build_assign_stat, i64 1}
!265 = !{ptr @adjust_return_value_with_ops, ptr @make_ssa_name, i64 5}
!266 = !{ptr @adjust_return_value_with_ops, ptr @gimple_assign_set_lhs, i64 5}
!267 = !{ptr @adjust_return_value_with_ops, ptr @update_stmt, i64 5}
!268 = !{ptr @adjust_return_value_with_ops, ptr @gsi_insert_before, i64 5}
!269 = !{ptr @update_accumulator_with_ops, ptr @types_compatible_p, i64 5}
!270 = !{ptr @update_accumulator_with_ops, ptr @gimple_build_assign_with_ops_stat, i64 4}
!271 = !{ptr @update_accumulator_with_ops, ptr @fold_convert_loc, i64 2}
!272 = !{ptr @update_accumulator_with_ops, ptr @fold_build2_stat_loc, i64 1}
!273 = !{ptr @update_accumulator_with_ops, ptr @force_gimple_operand_gsi, i64 1}
!274 = !{ptr @update_accumulator_with_ops, ptr @gimple_build_assign_stat, i64 1}
!275 = !{ptr @update_accumulator_with_ops, ptr @make_ssa_name, i64 5}
!276 = !{ptr @update_accumulator_with_ops, ptr @gimple_assign_set_lhs, i64 5}
!277 = !{ptr @update_accumulator_with_ops, ptr @update_stmt, i64 5}
!278 = !{ptr @update_accumulator_with_ops, ptr @gsi_insert_after, i64 5}
!279 = !{ptr @add_successor_phi_arg, ptr @gsi_start_phis, i64 7}
!280 = !{ptr @add_successor_phi_arg, ptr @gsi_end_p, i64 19}
!281 = !{ptr @add_successor_phi_arg, ptr @gsi_stmt, i64 25}
!282 = !{ptr @add_successor_phi_arg, ptr @gimple_phi_result_ptr, i64 18}
!283 = !{ptr @add_successor_phi_arg, ptr @get_def_from_ptr, i64 18}
!284 = !{ptr @add_successor_phi_arg, ptr @gsi_next, i64 12}
!285 = !{ptr @add_successor_phi_arg, ptr @fancy_abort, i64 1}
!286 = !{ptr @add_successor_phi_arg, ptr @add_phi_arg, i64 7}
!287 = !{ptr @gimple_assign_set_lhs, ptr @gimple_set_op, i64 10}
!288 = !{ptr @update_stmt, ptr @gimple_has_ops, i64 15}
!289 = !{ptr @update_stmt, ptr @gimple_set_modified, i64 14}
!290 = !{ptr @update_stmt, ptr @update_stmt_operands, i64 14}
!291 = !{ptr @gimple_set_op, ptr @gimple_has_ops, i64 15}
!292 = !{ptr @gimple_set_op, ptr @gimple_num_ops, i64 14}
!293 = !{ptr @gimple_set_op, ptr @fancy_abort, i64 2}
!294 = !{ptr @gimple_set_op, ptr @gimple_ops, i64 15}
!295 = !{ptr @gimple_seq_last_stmt, ptr @gimple_seq_last, i64 5}
!296 = !{ptr @gimple_return_set_retval, ptr @gimple_set_op, i64 5}
!297 = !{ptr @execute_tail_calls, ptr @tree_optimize_tail_calls_1, i64 6652}
!298 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!299 = !{!"function_entry_count", i64 22268}
!300 = !{!"tree-tailcall.c:gate_tail_calls"}
!301 = !{!302, !302, i64 0}
!302 = !{!"int", !303, i64 0}
!303 = !{!"omnipotent char", !304, i64 0}
!304 = !{!"Simple C/C++ TBAA"}
!305 = !{!"branch_weights", i32 1, i32 22269}
!306 = !{!"function_entry_count", i64 15616}
!307 = !{!"tree-tailcall.c:execute_tail_recursion"}
!308 = !{i32 0, i32 16417}
!309 = !{!"tree-tailcall.c:tree_optimize_tail_calls_1"}
!310 = !{!311, !311, i64 0}
!311 = !{!"any pointer", !303, i64 0}
!312 = !{!313, !311, i64 8}
!313 = !{!"function", !311, i64 0, !311, i64 8, !311, i64 16, !311, i64 24, !311, i64 32, !311, i64 40, !311, i64 48, !311, i64 56, !311, i64 64, !311, i64 72, !311, i64 80, !311, i64 88, !311, i64 96, !302, i64 104, !302, i64 108, !302, i64 112, !302, i64 116, !302, i64 120, !302, i64 124, !311, i64 128, !302, i64 136, !302, i64 137, !302, i64 138, !302, i64 138, !302, i64 138, !302, i64 138, !302, i64 138, !302, i64 138, !302, i64 138, !302, i64 139, !302, i64 139, !302, i64 139, !302, i64 139, !302, i64 139, !302, i64 139, !302, i64 139}
!314 = !{!315, !311, i64 0}
!315 = !{!"control_flow_graph", !311, i64 0, !311, i64 8, !311, i64 16, !302, i64 24, !302, i64 28, !302, i64 32, !311, i64 40, !302, i64 48, !303, i64 52, !303, i64 60, !302, i64 68, !302, i64 72}
!316 = !{i8 0, i8 2}
!317 = !{!"branch_weights", i32 3029, i32 19241}
!318 = !{!"branch_weights", i32 13557, i32 5685}
!319 = !{!315, !311, i64 8}
!320 = !{i64 0, i64 4, !301, i64 8, i64 8, !310}
!321 = !{i64 0, i64 8, !310}
!322 = !{!"branch_weights", i32 66, i32 19175}
!323 = !{!324, !311, i64 0}
!324 = !{!"edge_def", !311, i64 0, !311, i64 8, !303, i64 16, !311, i64 24, !311, i64 32, !302, i64 40, !302, i64 44, !302, i64 48, !302, i64 52, !325, i64 56}
!325 = !{!"long", !303, i64 0}
!326 = !{!"branch_weights", i32 1, i32 19175}
!327 = !{i32 0, i32 256}
!328 = !{!"branch_weights", i32 19175, i32 1}
!329 = !{!"branch_weights", i32 19175, i32 0}
!330 = distinct !{!330, !331}
!331 = !{!"llvm.loop.mustprogress"}
!332 = !{!"branch_weights", i32 7006, i32 12235}
!333 = !{!334, !303, i64 24}
!334 = !{!"tailcall", !335, i64 0, !303, i64 24, !311, i64 32, !311, i64 40, !311, i64 48}
!335 = !{!"", !311, i64 0, !311, i64 8, !311, i64 16}
!336 = !{!"branch_weights", i32 11856, i32 380}
!337 = !{!"branch_weights", i32 173, i32 208}
!338 = !{!"branch_weights", i32 1, i32 173}
!339 = !{!"branch_weights", i32 3, i32 171}
!340 = !{!303, !303, i64 0}
!341 = !{!"branch_weights", i32 1, i32 172}
!342 = !{!"branch_weights", i32 3, i32 378}
!343 = !{!"branch_weights", i32 1, i32 378}
!344 = !{!"branch_weights", i32 172, i32 208}
!345 = distinct !{!345, !331}
!346 = !{!334, !311, i64 40}
!347 = !{!"branch_weights", i32 2261, i32 25}
!348 = !{!334, !311, i64 32}
!349 = !{!"branch_weights", i32 379, i32 2}
!350 = !{!"branch_weights", i32 2, i32 1}
!351 = !{!"branch_weights", i32 12235, i32 0}
!352 = distinct !{!352, !331}
!353 = !{!"branch_weights", i32 0, i32 -2147483648}
!354 = !{!334, !311, i64 48}
!355 = distinct !{!355, !331}
!356 = !{!"branch_weights", i32 134664, i32 370042932}
!357 = !{!"branch_weights", i32 1, i32 191}
!358 = !{!"branch_weights", i32 1, i32 6}
!359 = !{!"branch_weights", i32 6, i32 1}
!360 = !{!"branch_weights", i32 191, i32 1}
!361 = distinct !{!361, !331}
!362 = !{!"branch_weights", i32 19069, i32 173}
!363 = !{!"function_entry_count", i64 34350}
!364 = !{!"tree-tailcall.c:single_succ"}
!365 = !{!324, !311, i64 8}
!366 = !{!"tree-tailcall.c:suitable_for_tail_opt_p"}
!367 = !{!"branch_weights", i32 22131, i32 139}
!368 = !{!"branch_weights", i32 19240, i32 1}
!369 = !{!"branch_weights", i32 663561, i32 69508}
!370 = !{!"branch_weights", i32 660671, i32 2891}
!371 = !{!"branch_weights", i32 713828, i32 19240}
!372 = distinct !{!372, !331}
!373 = !{!"function_entry_count", i64 5684}
!374 = !{!"tree-tailcall.c:suitable_for_tail_call_opt_p"}
!375 = !{!"branch_weights", i32 31516996, i32 409894}
!376 = !{!"branch_weights", i32 1, i32 5613}
!377 = !{!"branch_weights", i32 5613, i32 5716}
!378 = distinct !{!378, !331}
!379 = !{!"branch_weights", i32 11329, i32 1}
!380 = !{!"function_entry_count", i64 38767}
!381 = !{!"tree-tailcall.c:ei_start_1"}
!382 = !{!"function_entry_count", i64 163472}
!383 = !{!"tree-tailcall.c:ei_cond"}
!384 = !{!"branch_weights", i32 124706, i32 38768}
!385 = !{!"function_entry_count", i64 583352}
!386 = !{!"tree-tailcall.c:gimple_code"}
!387 = !{!"function_entry_count", i64 124700}
!388 = !{!"tree-tailcall.c:find_tail_calls"}
!389 = !{!"branch_weights", i32 77569, i32 47133}
!390 = !{!"branch_weights", i32 19522, i32 1}
!391 = !{!"branch_weights", i32 3438, i32 52676}
!392 = !{!"branch_weights", i32 52676, i32 1}
!393 = !{!"branch_weights", i32 36184, i32 16493}
!394 = !{!"branch_weights", i32 25066, i32 11119}
!395 = !{!"branch_weights", i32 25066, i32 1}
!396 = !{!"branch_weights", i32 36591, i32 19522}
!397 = distinct !{!397, !331}
!398 = !{!"branch_weights", i32 1, i32 19522}
!399 = !{!"branch_weights", i32 19522, i32 86005}
!400 = distinct !{!400, !331}
!401 = !{!"branch_weights", i32 9403, i32 7091}
!402 = !{!"branch_weights", i32 4, i32 7088}
!403 = !{!"branch_weights", i32 491, i32 16000}
!404 = !{!"branch_weights", i32 1, i32 486}
!405 = !{!"branch_weights", i32 1169, i32 487}
!406 = !{!"branch_weights", i32 1, i32 1169}
!407 = !{!"branch_weights", i32 5, i32 1165}
!408 = !{!"branch_weights", i32 1, i32 1165}
!409 = !{!"branch_weights", i32 486, i32 683}
!410 = distinct !{!410, !331}
!411 = !{i64 0, i64 8, !310, i64 8, i64 8, !310, i64 16, i64 8, !310}
!412 = !{!"branch_weights", i32 9924, i32 11694}
!413 = !{!"branch_weights", i32 11694, i32 0}
!414 = distinct !{!414, !331}
!415 = !{!"branch_weights", i32 15720346, i32 82081491, i32 263386796}
!416 = !{!"branch_weights", i32 941, i32 1}
!417 = !{!"branch_weights", i32 725, i32 217}
!418 = !{!"branch_weights", i32 78, i32 140}
!419 = !{!"branch_weights", i32 126, i32 15}
!420 = !{!"branch_weights", i32 210, i32 8}
!421 = !{!"branch_weights", i32 8, i32 1}
!422 = !{!"branch_weights", i32 121116923, i32 33431211}
!423 = !{!"branch_weights", i32 11977, i32 380}
!424 = !{!"branch_weights", i32 1472440, i32 141928176}
!425 = !{!"function_entry_count", i64 124705}
!426 = !{!"tree-tailcall.c:ei_next"}
!427 = !{!"branch_weights", i32 1, i32 124706}
!428 = !{!"branch_weights", i32 124706, i32 1}
!429 = !{!430, !302, i64 0}
!430 = !{!"", !302, i64 0, !311, i64 8}
!431 = !{!"function_entry_count", i64 554}
!432 = !{!"tree-tailcall.c:single_pred_p"}
!433 = !{!434, !311, i64 0}
!434 = !{!"basic_block_def", !311, i64 0, !311, i64 8, !311, i64 16, !311, i64 24, !303, i64 32, !311, i64 48, !311, i64 56, !303, i64 64, !325, i64 72, !302, i64 80, !302, i64 84, !302, i64 88, !302, i64 92, !302, i64 96}
!435 = !{!"function_entry_count", i64 172}
!436 = !{!"tree-tailcall.c:gimple_seq_empty_p"}
!437 = !{!"branch_weights", i32 169, i32 5}
!438 = !{!439, !311, i64 0}
!439 = !{!"gimple_seq_d", !311, i64 0, !311, i64 8, !311, i64 16}
!440 = !{!"tree-tailcall.c:phi_nodes"}
!441 = !{!434, !302, i64 96}
!442 = !{!"branch_weights", i32 173, i32 1}
!443 = !{!444, !311, i64 8}
!444 = !{!"gimple_bb_info", !311, i64 0, !311, i64 8}
!445 = !{!"function_entry_count", i64 47561}
!446 = !{!"tree-tailcall.c:single_succ_edge"}
!447 = !{!"branch_weights", i32 1, i32 47562}
!448 = !{!434, !311, i64 8}
!449 = !{!"function_entry_count", i64 1362}
!450 = !{!"tree-tailcall.c:arg_needs_copy_p"}
!451 = !{!"branch_weights", i32 1, i32 1363}
!452 = !{!"branch_weights", i32 5, i32 1359}
!453 = !{!"function_entry_count", i64 387}
!454 = !{!"tree-tailcall.c:make_ssa_name"}
!455 = !{!"function_entry_count", i64 382}
!456 = !{!"tree-tailcall.c:single_pred_edge"}
!457 = !{!"branch_weights", i32 1, i32 383}
!458 = !{!"function_entry_count", i64 5}
!459 = !{!"tree-tailcall.c:create_tailcall_accumulator"}
!460 = !{!"branch_weights", i32 13, i32 36}
!461 = !{!"function_entry_count", i64 12234}
!462 = !{!"tree-tailcall.c:optimize_tail_call"}
!463 = !{!"branch_weights", i32 8391, i32 3466}
!464 = !{!"branch_weights", i32 3466, i32 1}
!465 = !{!434, !302, i64 80}
!466 = !{!"tree-tailcall.c:adjust_return_value"}
!467 = !{!"branch_weights", i32 5, i32 2}
!468 = !{!"branch_weights", i32 2, i32 5}
!469 = !{!"tree-tailcall.c:add_virtual_phis"}
!470 = !{!"branch_weights", i32 172, i32 1}
!471 = !{!"branch_weights", i32 650, i32 7593}
!472 = !{!"branch_weights", i32 478, i32 173}
!473 = !{!"branch_weights", i32 8070, i32 172}
!474 = distinct !{!474, !331}
!475 = !{!"function_entry_count", i64 22302}
!476 = !{!"tree-tailcall.c:first_referenced_var"}
!477 = !{!"function_entry_count", i64 760720}
!478 = !{!"tree-tailcall.c:end_referenced_vars_p"}
!479 = !{!"function_entry_count", i64 1396627}
!480 = !{!"tree-tailcall.c:is_global_var"}
!481 = !{!"branch_weights", i32 1332312, i32 64317}
!482 = !{!"function_entry_count", i64 663560}
!483 = !{!"tree-tailcall.c:is_call_used"}
!484 = !{!"branch_weights", i32 660702, i32 2860}
!485 = !{!"branch_weights", i32 660507, i32 196}
!486 = !{!313, !311, i64 24}
!487 = !{!"function_entry_count", i64 738418}
!488 = !{!"tree-tailcall.c:next_referenced_var"}
!489 = !{!"tree-tailcall.c:first_htab_element"}
!490 = !{!335, !311, i64 0}
!491 = !{!492, !311, i64 24}
!492 = !{!"htab", !311, i64 0, !311, i64 8, !311, i64 16, !311, i64 24, !325, i64 32, !325, i64 40, !325, i64 48, !302, i64 56, !302, i64 60, !311, i64 64, !311, i64 72, !311, i64 80, !311, i64 88, !311, i64 96, !302, i64 104}
!493 = !{!335, !311, i64 8}
!494 = !{!335, !311, i64 16}
!495 = !{!"branch_weights", i32 94501, i32 1}
!496 = distinct !{!496, !331}
!497 = !{!"branch_weights", i32 22303, i32 1}
!498 = !{!"tree-tailcall.c:gimple_referenced_vars"}
!499 = !{!"branch_weights", i32 1, i32 22303}
!500 = !{!501, !311, i64 0}
!501 = !{!"gimple_df", !311, i64 0, !311, i64 8, !311, i64 16, !311, i64 24, !502, i64 32, !502, i64 48, !311, i64 64, !311, i64 72, !311, i64 80, !311, i64 88, !302, i64 96, !503, i64 104}
!502 = !{!"pt_solution", !302, i64 0, !302, i64 0, !302, i64 0, !302, i64 0, !302, i64 0, !302, i64 0, !311, i64 8}
!503 = !{!"ssa_operands", !311, i64 0, !302, i64 8, !302, i64 12, !303, i64 16, !311, i64 24, !311, i64 32}
!504 = !{!"tree-tailcall.c:end_htab_p"}
!505 = !{!"tree-tailcall.c:is_call_clobbered"}
!506 = !{!"branch_weights", i32 663561, i32 1}
!507 = !{!"branch_weights", i32 660507, i32 3055}
!508 = !{!"function_entry_count", i64 1324261}
!509 = !{!"tree-tailcall.c:may_be_aliased"}
!510 = !{!"branch_weights", i32 1, i32 1324262}
!511 = !{!"branch_weights", i32 -869830881, i32 5172}
!512 = !{!"branch_weights", i32 1324262, i32 1}
!513 = !{!"branch_weights", i32 -1192850347, i32 1192850347}
!514 = !{!"branch_weights", i32 954633301, i32 1192850347}
!515 = !{!"tree-tailcall.c:next_htab_element"}
!516 = !{!"branch_weights", i32 1818606, i32 19413}
!517 = !{!"tree-tailcall.c:ei_end_p"}
!518 = !{!"branch_weights", i32 495, i32 162979}
!519 = !{!"tree-tailcall.c:ei_edge"}
!520 = !{!"function_entry_count", i64 462508}
!521 = !{!"tree-tailcall.c:VEC_edge_base_length"}
!522 = !{!"branch_weights", i32 1253, i32 461257}
!523 = !{!524, !302, i64 0}
!524 = !{!"VEC_edge_base", !302, i64 0, !302, i64 4, !303, i64 8}
!525 = !{!"function_entry_count", i64 825270}
!526 = !{!"tree-tailcall.c:ei_container"}
!527 = !{!"branch_weights", i32 1, i32 825271}
!528 = !{!"function_entry_count", i64 172648}
!529 = !{!"tree-tailcall.c:VEC_edge_base_index"}
!530 = !{!"function_entry_count", i64 173398}
!531 = !{!"tree-tailcall.c:single_succ_p"}
!532 = !{!"function_entry_count", i64 47137}
!533 = !{!"tree-tailcall.c:gsi_last_bb"}
!534 = !{!"function_entry_count", i64 159510}
!535 = !{!"tree-tailcall.c:gsi_end_p"}
!536 = !{!"function_entry_count", i64 90048}
!537 = !{!"tree-tailcall.c:gsi_stmt"}
!538 = !{!539, !311, i64 0}
!539 = !{!"gimple_seq_node_d", !311, i64 0, !311, i64 8, !311, i64 16}
!540 = !{!"function_entry_count", i64 53615}
!541 = !{!"tree-tailcall.c:is_gimple_debug"}
!542 = !{!"function_entry_count", i64 53054}
!543 = !{!"tree-tailcall.c:is_gimple_call"}
!544 = !{!"function_entry_count", i64 16871}
!545 = !{!"tree-tailcall.c:gimple_call_lhs"}
!546 = !{!"function_entry_count", i64 36183}
!547 = !{!"tree-tailcall.c:gimple_references_memory_p"}
!548 = !{!"branch_weights", i32 1, i32 36184}
!549 = !{!"function_entry_count", i64 25065}
!550 = !{!"tree-tailcall.c:gimple_has_volatile_ops"}
!551 = !{!"branch_weights", i32 1, i32 25066}
!552 = !{!"function_entry_count", i64 28502}
!553 = !{!"tree-tailcall.c:gsi_prev"}
!554 = !{!539, !311, i64 8}
!555 = !{!"function_entry_count", i64 16489}
!556 = !{!"tree-tailcall.c:gimple_call_fndecl"}
!557 = !{!"branch_weights", i32 15138, i32 1353}
!558 = !{!"function_entry_count", i64 1658}
!559 = !{!"tree-tailcall.c:gimple_call_num_args"}
!560 = !{!"function_entry_count", i64 2149}
!561 = !{!"tree-tailcall.c:gimple_call_arg"}
!562 = !{!"function_entry_count", i64 25177}
!563 = !{!"tree-tailcall.c:gsi_next"}
!564 = !{!539, !311, i64 16}
!565 = !{!"function_entry_count", i64 11693}
!566 = !{!"tree-tailcall.c:propagate_through_phis"}
!567 = !{!"branch_weights", i32 6643, i32 313}
!568 = !{!324, !302, i64 44}
!569 = !{!"branch_weights", i32 4739, i32 1905}
!570 = !{!"branch_weights", i32 0, i32 6643}
!571 = distinct !{!571, !331}
!572 = !{!"tree-tailcall.c:gsi_start_bb"}
!573 = !{!"function_entry_count", i64 940}
!574 = !{!"tree-tailcall.c:process_assignment"}
!575 = !{i32 0, i32 65536}
!576 = !{!"branch_weights", i32 14, i32 928}
!577 = !{!"branch_weights", i32 757, i32 172}
!578 = !{!"branch_weights", i32 172, i32 14}
!579 = !{!"branch_weights", i32 85, i32 88}
!580 = !{!"branch_weights", i32 71, i32 15}
!581 = !{!"branch_weights", i32 757, i32 14}
!582 = !{!"branch_weights", i32 757, i32 1}
!583 = !{!"branch_weights", i32 432081216, i32 1146098, i32 572292, i32 571536}
!584 = !{!"branch_weights", i32 607, i32 150}
!585 = !{!"branch_weights", i32 1, i32 607}
!586 = !{!"branch_weights", i32 139, i32 12}
!587 = !{!"branch_weights", i32 1, i32 139}
!588 = !{!"branch_weights", i32 599, i32 140, i32 8}
!589 = !{!"function_entry_count", i64 15770}
!590 = !{!"tree-tailcall.c:gimple_return_retval"}
!591 = !{!"function_entry_count", i64 58835}
!592 = !{!"tree-tailcall.c:bb_seq"}
!593 = !{!"branch_weights", i32 58836, i32 1}
!594 = !{!"branch_weights", i32 474, i32 58363}
!595 = !{!444, !311, i64 0}
!596 = !{!"function_entry_count", i64 47142}
!597 = !{!"tree-tailcall.c:gimple_seq_last"}
!598 = !{!"branch_weights", i32 474, i32 46670}
!599 = !{!439, !311, i64 8}
!600 = !{!"function_entry_count", i64 54682}
!601 = !{!"tree-tailcall.c:gimple_op"}
!602 = !{!"branch_weights", i32 1, i32 54683}
!603 = !{!"function_entry_count", i64 54712}
!604 = !{!"tree-tailcall.c:gimple_has_ops"}
!605 = !{!"function_entry_count", i64 54697}
!606 = !{!"tree-tailcall.c:gimple_ops"}
!607 = !{!325, !325, i64 0}
!608 = !{!"branch_weights", i32 1, i32 54698}
!609 = !{!"tree-tailcall.c:gimple_statement_structure"}
!610 = !{!"tree-tailcall.c:gss_for_code"}
!611 = !{!"function_entry_count", i64 97431}
!612 = !{!"tree-tailcall.c:gimple_has_mem_ops"}
!613 = !{!"tree-tailcall.c:gimple_vuse"}
!614 = !{!"tree-tailcall.c:gimple_call_fn"}
!615 = !{!"function_entry_count", i64 2428}
!616 = !{!"tree-tailcall.c:gimple_num_ops"}
!617 = !{!"function_entry_count", i64 6642}
!618 = !{!"tree-tailcall.c:get_use_from_ptr"}
!619 = !{!620, !311, i64 24}
!620 = !{!"ssa_use_operand_d", !311, i64 0, !311, i64 8, !303, i64 16, !311, i64 24}
!621 = !{!"tree-tailcall.c:gimple_phi_arg_imm_use_ptr"}
!622 = !{!"function_entry_count", i64 5745}
!623 = !{!"tree-tailcall.c:get_def_from_ptr"}
!624 = !{!"tree-tailcall.c:gimple_phi_result_ptr"}
!625 = !{!"tree-tailcall.c:gimple_phi_arg"}
!626 = !{!"branch_weights", i32 1, i32 6643}
!627 = !{!"tree-tailcall.c:gimple_seq_first"}
!628 = !{!"branch_weights", i32 1, i32 11694}
!629 = !{!"tree-tailcall.c:gimple_assign_lhs"}
!630 = !{!"function_entry_count", i64 2038}
!631 = !{!"tree-tailcall.c:gimple_assign_rhs_code"}
!632 = !{!"branch_weights", i32 14, i32 2026}
!633 = !{!"function_entry_count", i64 2978}
!634 = !{!"tree-tailcall.c:get_gimple_rhs_class"}
!635 = !{!"function_entry_count", i64 1708}
!636 = !{!"tree-tailcall.c:gimple_assign_rhs1"}
!637 = !{!"function_entry_count", i64 1098}
!638 = !{!"tree-tailcall.c:gimple_assign_cast_p"}
!639 = !{!"branch_weights", i32 1, i32 1099}
!640 = !{!"function_entry_count", i64 755}
!641 = !{!"tree-tailcall.c:gimple_assign_rhs2"}
!642 = !{!"branch_weights", i32 756, i32 1}
!643 = !{!"function_entry_count", i64 744}
!644 = !{!"tree-tailcall.c:independent_of_stmt_p"}
!645 = !{!"branch_weights", i32 158, i32 588}
!646 = !{!"branch_weights", i32 158, i32 1}
!647 = !{!"branch_weights", i32 152, i32 6}
!648 = !{!434, !311, i64 16}
!649 = !{!"branch_weights", i32 6, i32 0}
!650 = distinct !{!650, !331}
!651 = !{!"branch_weights", i32 2, i32 157}
!652 = !{!"branch_weights", i32 27, i32 131}
!653 = !{!"branch_weights", i32 131, i32 1}
!654 = !{!"branch_weights", i32 130, i32 1}
!655 = !{!"branch_weights", i32 1, i32 283}
!656 = !{!"branch_weights", i32 153, i32 130}
!657 = distinct !{!657, !331}
!658 = distinct !{!658, !331}
!659 = distinct !{!659, !331}
!660 = !{!"tree-tailcall.c:gimple_expr_code"}
!661 = !{!"branch_weights", i32 1, i32 8156, i32 2, i32 1}
!662 = !{!"tree-tailcall.c:is_gimple_assign"}
!663 = !{!"function_entry_count", i64 471}
!664 = !{!"tree-tailcall.c:gimple_bb"}
!665 = !{!"tree-tailcall.c:var_ann"}
!666 = !{!"branch_weights", i32 1857769, i32 1860496, i32 -1760970380, i32 1363}
!667 = !{!"function_entry_count", i64 379}
!668 = !{!"tree-tailcall.c:eliminate_tail_call"}
!669 = !{!"branch_weights", i32 380, i32 1}
!670 = !{!"branch_weights", i32 1, i32 380}
!671 = !{!"branch_weights", i32 7, i32 373}
!672 = !{!"branch_weights", i32 1, i32 7}
!673 = !{!"branch_weights", i32 0, i32 7}
!674 = !{!324, !325, i64 56}
!675 = !{!434, !302, i64 88}
!676 = !{!324, !302, i64 52}
!677 = !{!"branch_weights", i32 1, i32 379}
!678 = !{!"branch_weights", i32 3, i32 982}
!679 = !{!"branch_weights", i32 982, i32 1}
!680 = !{!"branch_weights", i32 379, i32 605}
!681 = distinct !{!681, !331}
!682 = !{!"branch_weights", i32 170, i32 211}
!683 = !{!"function_entry_count", i64 3465}
!684 = !{!"tree-tailcall.c:gimple_call_set_tail"}
!685 = !{!"function_entry_count", i64 1137}
!686 = !{!"tree-tailcall.c:gsi_bb"}
!687 = !{!"tree-tailcall.c:decrease_profile"}
!688 = !{!434, !325, i64 72}
!689 = !{!"branch_weights", i32 1, i32 1138}
!690 = !{!"branch_weights", i32 5, i32 1134}
!691 = !{!"branch_weights", i32 380, i32 759}
!692 = !{!"branch_weights", i32 1, i32 759}
!693 = !{!"function_entry_count", i64 981}
!694 = !{!"tree-tailcall.c:gimple_location"}
!695 = !{!"tree-tailcall.c:adjust_accumulator_values"}
!696 = !{!"branch_weights", i32 376, i32 5}
!697 = !{!"branch_weights", i32 5, i32 1}
!698 = !{!"branch_weights", i32 377, i32 4}
!699 = !{!"tree-tailcall.c:adjust_return_value_with_ops"}
!700 = !{!"tree-tailcall.c:update_accumulator_with_ops"}
!701 = !{!"function_entry_count", i64 7}
!702 = !{!"tree-tailcall.c:add_successor_phi_arg"}
!703 = !{!"branch_weights", i32 127, i32 1}
!704 = !{!"branch_weights", i32 8, i32 15}
!705 = !{!"branch_weights", i32 2689, i32 127}
!706 = distinct !{!706, !331}
!707 = !{!"function_entry_count", i64 10}
!708 = !{!"tree-tailcall.c:gimple_assign_set_lhs"}
!709 = !{!"branch_weights", i32 1, i32 11}
!710 = !{!"branch_weights", i32 11, i32 1}
!711 = !{!"function_entry_count", i64 15}
!712 = !{!"tree-tailcall.c:update_stmt"}
!713 = !{!"branch_weights", i32 1, i32 16}
!714 = !{!"tree-tailcall.c:gimple_set_op"}
!715 = !{!"tree-tailcall.c:gimple_seq_last_stmt"}
!716 = !{!"tree-tailcall.c:gimple_return_set_retval"}
!717 = !{!"function_entry_count", i64 6652}
!718 = !{!"tree-tailcall.c:execute_tail_calls"}

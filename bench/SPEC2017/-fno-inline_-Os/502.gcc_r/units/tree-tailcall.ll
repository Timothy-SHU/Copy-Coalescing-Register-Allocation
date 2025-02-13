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

@.str = private unnamed_addr constant [6 x i8] c"tailr\00", align 1
@pass_tail_recursion = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str, ptr @gate_tail_calls, ptr @execute_tail_recursion, ptr null, ptr null, i32 0, i32 0, i32 40, i32 0, i32 0, i32 0, i32 5 } }, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"tailc\00", align 1
@pass_tail_calls = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.1, ptr @gate_tail_calls, ptr @execute_tail_calls, ptr null, ptr null, i32 0, i32 0, i32 40, i32 0, i32 0, i32 0, i32 5 } }, align 8
@flag_optimize_sibling_calls = external local_unnamed_addr global i32, align 4
@cfun = external local_unnamed_addr global ptr, align 8
@m_acc = internal unnamed_addr global ptr null, align 8
@a_acc = internal unnamed_addr global ptr null, align 8
@current_function_decl = external local_unnamed_addr global ptr, align 8
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"add_acc\00", align 1
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@.str.3 = private unnamed_addr constant [9 x i8] c"mult_acc\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@.str.6 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@flag_associative_math = external local_unnamed_addr global i32, align 4
@gimple_rhs_class_table = external local_unnamed_addr constant [0 x i8], align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"tree-tailcall.c\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"./tree-flow-inline.h\00", align 1
@dump_file = external local_unnamed_addr global ptr, align 8
@dump_flags = external local_unnamed_addr global i32, align 4
@.str.9 = private unnamed_addr constant [17 x i8] c"Found tail call \00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c" in bb %i\0A\00", align 1
@.str.11 = private unnamed_addr constant [38 x i8] c"Eliminated tail recursion in bb %d : \00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"acc_tmp\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"mul_tmp\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define internal zeroext i8 @gate_tail_calls() #0 !prof !187 !PGOFuncName !188 {
  %1 = load i32, ptr @flag_optimize_sibling_calls, align 4, !tbaa !189
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %7, label %3, !prof !193

3:                                                ; preds = %0
  %4 = tail call zeroext i8 @dbg_cnt(i32 noundef 37) #15
  %5 = icmp ne i8 %4, 0
  %6 = zext i1 %5 to i8
  br label %7

7:                                                ; preds = %3, %0
  %8 = phi i8 [ 0, %0 ], [ %6, %3 ]
  ret i8 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @execute_tail_recursion() #0 !prof !194 !PGOFuncName !195 {
  %1 = tail call fastcc i32 @tree_optimize_tail_calls_1(i8 noundef zeroext 0) #16, !range !196
  ret i32 %1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @execute_tail_calls() #0 !prof !197 !PGOFuncName !198 {
  %1 = tail call fastcc i32 @tree_optimize_tail_calls_1(i8 noundef zeroext 1) #16, !range !196
  ret i32 %1
}

; Function Attrs: optsize
declare zeroext i8 @dbg_cnt(i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @tree_optimize_tail_calls_1(i8 noundef zeroext %0) unnamed_addr #0 !prof !187 !PGOFuncName !199 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #17
  store ptr null, ptr %3, align 8, !tbaa !200
  %5 = load ptr, ptr @cfun, align 8, !tbaa !200
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !202
  %8 = load ptr, ptr %7, align 8, !tbaa !204
  %9 = tail call fastcc ptr @single_succ(ptr noundef %8) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #17
  %10 = tail call fastcc zeroext i8 @suitable_for_tail_opt_p() #16, !range !206
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %183, label %12, !prof !193

12:                                               ; preds = %1
  %13 = icmp eq i8 %0, 0
  br i1 %13, label %16, label %14, !prof !207

14:                                               ; preds = %12
  %15 = tail call fastcc zeroext i8 @suitable_for_tail_call_opt_p() #16, !range !206
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi i8 [ %15, %14 ], [ 0, %12 ]
  %18 = load ptr, ptr @cfun, align 8, !tbaa !200
  %19 = getelementptr inbounds %struct.function, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !202
  %21 = getelementptr inbounds %struct.control_flow_graph, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !208
  %23 = tail call fastcc ptr @ei_start_1(ptr noundef %22) #16
  store i32 0, ptr %4, align 8, !tbaa.struct !209
  %24 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %23, ptr %24, align 8, !tbaa.struct !210
  %25 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %23, ptr noundef nonnull %2) #16, !range !206
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %42, label %27, !prof !211

27:                                               ; preds = %16, %37
  %28 = load ptr, ptr %2, align 8, !tbaa !200
  %29 = load ptr, ptr %28, align 8, !tbaa !212
  %30 = tail call ptr @last_stmt(ptr noundef %29) #15
  %31 = icmp eq ptr %30, null
  br i1 %31, label %37, label %32, !prof !193

32:                                               ; preds = %27
  %33 = tail call fastcc i32 @gimple_code(ptr noundef nonnull %30) #16, !range !215
  %34 = icmp eq i32 %33, 9
  br i1 %34, label %35, label %37, !prof !216

35:                                               ; preds = %32
  %36 = load ptr, ptr %28, align 8, !tbaa !212
  call fastcc void @find_tail_calls(ptr noundef %36, ptr noundef nonnull %3) #16
  br label %37

37:                                               ; preds = %27, %32, %35
  call fastcc void @ei_next(ptr noundef nonnull %4) #16
  %38 = load i32, ptr %4, align 8
  %39 = load ptr, ptr %24, align 8
  %40 = call fastcc zeroext i8 @ei_cond(i32 %38, ptr %39, ptr noundef nonnull %2) #16, !range !206
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %27, !prof !217, !llvm.loop !218

42:                                               ; preds = %37, %16
  store ptr null, ptr @m_acc, align 8, !tbaa !200
  store ptr null, ptr @a_acc, align 8, !tbaa !200
  %43 = load ptr, ptr %3, align 8, !tbaa !200
  %44 = icmp eq ptr %43, null
  br i1 %44, label %143, label %45, !prof !211

45:                                               ; preds = %42, %123
  %46 = phi ptr [ %124, %123 ], [ null, %42 ]
  %47 = phi ptr [ %128, %123 ], [ %43, %42 ]
  %48 = phi i8 [ %126, %123 ], [ 0, %42 ]
  %49 = phi ptr [ %125, %123 ], [ %9, %42 ]
  %50 = getelementptr inbounds %struct.tailcall, ptr %47, i64 0, i32 1
  %51 = load i8, ptr %50, align 8, !tbaa !220
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %123, label %53, !prof !223

53:                                               ; preds = %45
  %54 = icmp eq i8 %48, 0
  br i1 %54, label %55, label %102

55:                                               ; preds = %53
  %56 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %49) #16, !range !206
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %55
  %59 = tail call fastcc ptr @phi_nodes(ptr noundef %49) #16
  %60 = tail call fastcc zeroext i8 @gimple_seq_empty_p(ptr noundef %59) #16, !range !206
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %58, %55
  %63 = load ptr, ptr @cfun, align 8, !tbaa !200
  %64 = getelementptr inbounds %struct.function, ptr %63, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !202
  %66 = load ptr, ptr %65, align 8, !tbaa !204
  %67 = tail call fastcc ptr @single_succ_edge(ptr noundef %66) #16
  %68 = tail call ptr @split_edge(ptr noundef %67) #15
  br label %69

69:                                               ; preds = %62, %58
  %70 = phi ptr [ %49, %58 ], [ %68, %62 ]
  %71 = load ptr, ptr @current_function_decl, align 8, !tbaa !200
  %72 = getelementptr inbounds %struct.tree_decl_non_common, ptr %71, i64 0, i32 2
  %73 = load ptr, ptr %72, align 8, !tbaa !224
  %74 = icmp eq ptr %73, null
  br i1 %74, label %102, label %75

75:                                               ; preds = %69, %98
  %76 = phi ptr [ %100, %98 ], [ %73, %69 ]
  %77 = tail call fastcc zeroext i8 @arg_needs_copy_p(ptr noundef nonnull %76) #16, !range !206
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %98, label %79

79:                                               ; preds = %75
  %80 = load ptr, ptr @cfun, align 8, !tbaa !200
  %81 = tail call ptr @gimple_default_def(ptr noundef %80, ptr noundef nonnull %76) #15
  %82 = getelementptr inbounds %struct.tree_ssa_name, ptr %81, i64 0, i32 2
  %83 = load ptr, ptr %82, align 8, !tbaa !224
  %84 = tail call fastcc ptr @make_ssa_name(ptr noundef nonnull %76, ptr noundef %83) #16
  tail call void @set_default_def(ptr noundef nonnull %76, ptr noundef %84) #15
  %85 = tail call ptr @create_phi_node(ptr noundef %81, ptr noundef %70) #15
  store ptr %85, ptr %82, align 8, !tbaa !224
  %86 = tail call fastcc ptr @single_pred_edge(ptr noundef %70) #16
  %87 = load i64, ptr %76, align 8
  %88 = and i64 %87, 65535
  %89 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %88
  %90 = load i32, ptr %89, align 4, !tbaa !189
  %91 = add i32 %90, -4
  %92 = icmp ult i32 %91, 7
  br i1 %92, label %93, label %96

93:                                               ; preds = %79
  %94 = getelementptr inbounds %struct.tree_exp, ptr %76, i64 0, i32 1
  %95 = load i32, ptr %94, align 8, !tbaa !224
  br label %96

96:                                               ; preds = %79, %93
  %97 = phi i32 [ %95, %93 ], [ 0, %79 ]
  tail call void @add_phi_arg(ptr noundef %85, ptr noundef %84, ptr noundef %86, i32 noundef %97) #15
  br label %98

98:                                               ; preds = %75, %96
  %99 = getelementptr inbounds %struct.tree_common, ptr %76, i64 0, i32 1
  %100 = load ptr, ptr %99, align 8, !tbaa !224
  %101 = icmp eq ptr %100, null
  br i1 %101, label %102, label %75, !llvm.loop !225

102:                                              ; preds = %98, %69, %53
  %103 = phi ptr [ %49, %53 ], [ %70, %69 ], [ %70, %98 ]
  %104 = getelementptr inbounds %struct.tailcall, ptr %47, i64 0, i32 3
  %105 = load ptr, ptr %104, align 8, !tbaa !226
  %106 = icmp eq ptr %105, null
  %107 = load ptr, ptr @a_acc, align 8
  %108 = icmp ne ptr %107, null
  %109 = select i1 %106, i1 true, i1 %108
  br i1 %109, label %113, label %110

110:                                              ; preds = %102
  %111 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !200
  %112 = tail call fastcc ptr @create_tailcall_accumulator(ptr noundef nonnull @.str.2, ptr noundef %103, ptr noundef %111) #16
  store ptr %112, ptr @a_acc, align 8, !tbaa !200
  br label %113

113:                                              ; preds = %110, %102
  %114 = getelementptr inbounds %struct.tailcall, ptr %47, i64 0, i32 2
  %115 = load ptr, ptr %114, align 8, !tbaa !227
  %116 = icmp eq ptr %115, null
  %117 = load ptr, ptr @m_acc, align 8
  %118 = icmp ne ptr %117, null
  %119 = select i1 %116, i1 true, i1 %118
  br i1 %119, label %123, label %120

120:                                              ; preds = %113
  %121 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 14), align 16, !tbaa !200
  %122 = tail call fastcc ptr @create_tailcall_accumulator(ptr noundef nonnull @.str.3, ptr noundef %103, ptr noundef %121) #16
  store ptr %122, ptr @m_acc, align 8, !tbaa !200
  br label %123

123:                                              ; preds = %113, %120, %45
  %124 = phi ptr [ %117, %113 ], [ %122, %120 ], [ %46, %45 ]
  %125 = phi ptr [ %103, %113 ], [ %103, %120 ], [ %49, %45 ]
  %126 = phi i8 [ 1, %113 ], [ 1, %120 ], [ %48, %45 ]
  %127 = getelementptr inbounds %struct.tailcall, ptr %47, i64 0, i32 4
  %128 = load ptr, ptr %127, align 8, !tbaa !200
  %129 = icmp eq ptr %128, null
  br i1 %129, label %130, label %45, !prof !228, !llvm.loop !229

130:                                              ; preds = %123
  %131 = icmp eq i8 %126, 0
  br i1 %44, label %143, label %132, !prof !230

132:                                              ; preds = %130, %132
  %133 = phi i8 [ %138, %132 ], [ 0, %130 ]
  %134 = phi ptr [ %136, %132 ], [ %43, %130 ]
  %135 = getelementptr inbounds %struct.tailcall, ptr %134, i64 0, i32 4
  %136 = load ptr, ptr %135, align 8, !tbaa !231
  %137 = tail call fastcc zeroext i8 @optimize_tail_call(ptr noundef nonnull %134, i8 noundef zeroext %17) #16, !range !206
  %138 = or i8 %137, %133
  tail call void @free(ptr noundef nonnull %134) #16
  %139 = icmp eq ptr %136, null
  br i1 %139, label %140, label %132, !prof !228, !llvm.loop !232

140:                                              ; preds = %132
  %141 = load ptr, ptr @m_acc, align 8
  %142 = icmp eq i8 %138, 0
  br label %143

143:                                              ; preds = %42, %140, %130
  %144 = phi i1 [ %131, %130 ], [ %131, %140 ], [ true, %42 ]
  %145 = phi ptr [ %124, %130 ], [ %141, %140 ], [ null, %42 ]
  %146 = phi i1 [ true, %130 ], [ %142, %140 ], [ true, %42 ]
  store ptr null, ptr %3, align 8, !tbaa !200
  %147 = load ptr, ptr @a_acc, align 8, !tbaa !200
  %148 = icmp ne ptr %147, null
  %149 = icmp ne ptr %145, null
  %150 = select i1 %148, i1 true, i1 %149
  br i1 %150, label %151, label %177, !prof !233

151:                                              ; preds = %143
  %152 = load ptr, ptr @cfun, align 8, !tbaa !200
  %153 = getelementptr inbounds %struct.function, ptr %152, i64 0, i32 1
  %154 = load ptr, ptr %153, align 8, !tbaa !202
  %155 = getelementptr inbounds %struct.control_flow_graph, ptr %154, i64 0, i32 1
  %156 = load ptr, ptr %155, align 8, !tbaa !208
  %157 = tail call fastcc ptr @ei_start_1(ptr noundef %156) #16
  store i32 0, ptr %4, align 8, !tbaa.struct !209
  store ptr %157, ptr %24, align 8, !tbaa.struct !210
  %158 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %157, ptr noundef nonnull %2) #16, !range !206
  %159 = icmp eq i8 %158, 0
  br i1 %159, label %177, label %160

160:                                              ; preds = %151, %172
  %161 = load ptr, ptr %2, align 8, !tbaa !200
  %162 = load ptr, ptr %161, align 8, !tbaa !212
  %163 = tail call ptr @last_stmt(ptr noundef %162) #15
  %164 = icmp eq ptr %163, null
  br i1 %164, label %172, label %165

165:                                              ; preds = %160
  %166 = tail call fastcc i32 @gimple_code(ptr noundef nonnull %163) #16, !range !215
  %167 = icmp eq i32 %166, 9
  br i1 %167, label %168, label %172

168:                                              ; preds = %165
  %169 = load ptr, ptr %161, align 8, !tbaa !212
  %170 = load ptr, ptr @m_acc, align 8, !tbaa !200
  %171 = load ptr, ptr @a_acc, align 8, !tbaa !200
  tail call fastcc void @adjust_return_value(ptr noundef %169, ptr noundef %170, ptr noundef %171) #16
  br label %172

172:                                              ; preds = %160, %165, %168
  call fastcc void @ei_next(ptr noundef nonnull %4) #16
  %173 = load i32, ptr %4, align 8
  %174 = load ptr, ptr %24, align 8
  %175 = call fastcc zeroext i8 @ei_cond(i32 %173, ptr %174, ptr noundef nonnull %2) #16, !range !206
  %176 = icmp eq i8 %175, 0
  br i1 %176, label %177, label %160, !llvm.loop !234

177:                                              ; preds = %172, %151, %143
  br i1 %146, label %179, label %178, !prof !216

178:                                              ; preds = %177
  tail call void @free_dominance_info(i32 noundef 1) #15
  br label %179

179:                                              ; preds = %178, %177
  br i1 %144, label %181, label %180, !prof !216

180:                                              ; preds = %179
  tail call fastcc void @add_virtual_phis() #16
  br label %181

181:                                              ; preds = %180, %179
  %182 = select i1 %146, i32 0, i32 16416, !prof !216
  br label %183

183:                                              ; preds = %181, %1
  %184 = phi i32 [ 0, %1 ], [ %182, %181 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #17
  ret i32 %184
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !235 !PGOFuncName !236 {
  %2 = tail call fastcc ptr @single_succ_edge(ptr noundef %0) #16
  %3 = getelementptr inbounds %struct.edge_def, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !237
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @suitable_for_tail_opt_p() unnamed_addr #0 !prof !187 !PGOFuncName !238 {
  %1 = alloca %struct.referenced_var_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #17
  %2 = load ptr, ptr @cfun, align 8, !tbaa !200
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 20
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 4194304
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %22, !prof !216

7:                                                ; preds = %0
  %8 = call fastcc ptr @first_referenced_var(ptr noundef nonnull %1) #16
  %9 = call fastcc zeroext i8 @end_referenced_vars_p(ptr noundef nonnull %1) #16, !range !206
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %22, !prof !217

11:                                               ; preds = %7, %18
  %12 = phi ptr [ %19, %18 ], [ %8, %7 ]
  %13 = tail call fastcc zeroext i8 @is_global_var(ptr noundef %12) #16, !range !206
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %18, !prof !239

15:                                               ; preds = %11
  %16 = tail call fastcc zeroext i8 @is_call_used(ptr noundef %12) #16, !range !206
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %22, !prof !240

18:                                               ; preds = %11, %15
  %19 = call fastcc ptr @next_referenced_var(ptr noundef nonnull %1) #16
  %20 = call fastcc zeroext i8 @end_referenced_vars_p(ptr noundef nonnull %1) #16, !range !206
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %11, label %22, !prof !241, !llvm.loop !242

22:                                               ; preds = %15, %18, %7, %0
  %23 = phi i8 [ 0, %0 ], [ 1, %7 ], [ 0, %15 ], [ 1, %18 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #17
  ret i8 %23
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @suitable_for_tail_call_opt_p() unnamed_addr #3 !prof !197 !PGOFuncName !243 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !200
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 20
  %3 = load i32, ptr %2, align 8
  %4 = and i32 %3, 786432
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %20, !prof !244

6:                                                ; preds = %0
  %7 = load ptr, ptr @current_function_decl, align 8, !tbaa !200
  %8 = getelementptr inbounds %struct.tree_decl_non_common, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !224
  %10 = icmp eq ptr %9, null
  br i1 %10, label %20, label %15, !prof !245

11:                                               ; preds = %15
  %12 = getelementptr inbounds %struct.tree_common, ptr %16, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !224
  %14 = icmp eq ptr %13, null
  br i1 %14, label %20, label %15, !prof !246, !llvm.loop !247

15:                                               ; preds = %6, %11
  %16 = phi ptr [ %13, %11 ], [ %9, %6 ]
  %17 = load i64, ptr %16, align 8
  %18 = and i64 %17, 262144
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %11, label %20, !prof !248

20:                                               ; preds = %15, %11, %6, %0
  %21 = phi i8 [ 0, %0 ], [ 1, %6 ], [ 0, %15 ], [ 1, %11 ]
  ret i8 %21
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #4 !prof !249 !PGOFuncName !250 {
  ret ptr %0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !prof !251 !PGOFuncName !252 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #16, !range !206
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8, !prof !253

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #16
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !200
  ret i8 %10
}

; Function Attrs: optsize
declare ptr @last_stmt(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !254 !PGOFuncName !255 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @find_tail_calls(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 !prof !256 !PGOFuncName !257 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %struct.edge_iterator, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #17
  store ptr null, ptr %3, align 8, !tbaa !200
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #17
  %10 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %0) #16, !range !206
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %178, label %12, !prof !258

12:                                               ; preds = %2
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %0) #16
  %13 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #16, !range !206
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %34, !prof !259

15:                                               ; preds = %12, %31
  %16 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #16
  %17 = tail call fastcc i32 @gimple_code(ptr noundef %16) #16, !range !215
  %18 = icmp eq i32 %17, 4
  br i1 %18, label %31, label %19, !prof !260

19:                                               ; preds = %15
  %20 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %16) #16, !range !206
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %31, !prof !261

22:                                               ; preds = %19
  %23 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %16) #16, !range !206
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %47, !prof !262

25:                                               ; preds = %22
  %26 = tail call fastcc zeroext i8 @gimple_references_memory_p(ptr noundef %16) #16, !range !206
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %178, !prof !263

28:                                               ; preds = %25
  %29 = tail call fastcc zeroext i8 @gimple_has_volatile_ops(ptr noundef %16) #16, !range !206
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %178, !prof !264

31:                                               ; preds = %28, %15, %19
  call fastcc void @gsi_prev(ptr noundef nonnull %4) #16
  %32 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #16, !range !206
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %15, label %34, !prof !265, !llvm.loop !266

34:                                               ; preds = %31, %12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #17
  %35 = tail call fastcc ptr @ei_start_1(ptr noundef %0) #16
  store i32 0, ptr %7, align 8, !tbaa.struct !209
  %36 = getelementptr inbounds i8, ptr %7, i64 8
  store ptr %35, ptr %36, align 8, !tbaa.struct !210
  %37 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %35, ptr noundef nonnull %6) #16, !range !206
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %46, label %39, !prof !267

39:                                               ; preds = %34, %39
  %40 = load ptr, ptr %6, align 8, !tbaa !200
  %41 = load ptr, ptr %40, align 8, !tbaa !212
  tail call fastcc void @find_tail_calls(ptr noundef %41, ptr noundef %1) #16
  call fastcc void @ei_next(ptr noundef nonnull %7) #16
  %42 = load i32, ptr %7, align 8
  %43 = load ptr, ptr %36, align 8
  %44 = call fastcc zeroext i8 @ei_cond(i32 %42, ptr %43, ptr noundef nonnull %6) #16, !range !206
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %39, !prof !268, !llvm.loop !269

46:                                               ; preds = %39, %34
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #17
  br label %178

47:                                               ; preds = %22
  %48 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %16) #16
  store ptr %48, ptr %3, align 8, !tbaa !200
  %49 = icmp eq ptr %48, null
  br i1 %49, label %53, label %50, !prof !270

50:                                               ; preds = %47
  %51 = tail call zeroext i8 @is_gimple_reg(ptr noundef nonnull %48) #15
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %178, label %53, !prof !271

53:                                               ; preds = %50, %47
  %54 = tail call fastcc ptr @gimple_call_fndecl(ptr noundef %16) #16
  %55 = load ptr, ptr @current_function_decl, align 8, !tbaa !200
  %56 = icmp eq ptr %54, %55
  br i1 %56, label %57, label %98, !prof !272

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.tree_decl_non_common, ptr %54, i64 0, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !224
  %60 = icmp eq ptr %59, null
  br i1 %60, label %90, label %61

61:                                               ; preds = %57, %85
  %62 = phi ptr [ %88, %85 ], [ %59, %57 ]
  %63 = phi i64 [ %87, %85 ], [ 0, %57 ]
  %64 = tail call fastcc i32 @gimple_call_num_args(ptr noundef %16) #16
  %65 = zext i32 %64 to i64
  %66 = icmp ult i64 %63, %65
  br i1 %66, label %67, label %90

67:                                               ; preds = %61
  %68 = trunc i64 %63 to i32
  %69 = tail call fastcc ptr @gimple_call_arg(ptr noundef %16, i32 noundef %68) #16
  %70 = icmp eq ptr %62, %69
  br i1 %70, label %85, label %71

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.tree_common, ptr %62, i64 0, i32 2
  %73 = load ptr, ptr %72, align 8, !tbaa !224
  %74 = tail call zeroext i8 @is_gimple_reg_type(ptr noundef %73) #15
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %90, label %76

76:                                               ; preds = %71
  %77 = load ptr, ptr %72, align 8, !tbaa !224
  %78 = getelementptr inbounds %struct.tree_common, ptr %69, i64 0, i32 2
  %79 = load ptr, ptr %78, align 8, !tbaa !224
  %80 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %77, ptr noundef %79) #15
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %90, label %82

82:                                               ; preds = %76
  %83 = tail call zeroext i8 @is_gimple_reg(ptr noundef nonnull %62) #15
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %90, label %85

85:                                               ; preds = %67, %82
  %86 = getelementptr inbounds %struct.tree_common, ptr %62, i64 0, i32 1
  %87 = add nuw nsw i64 %63, 1
  %88 = load ptr, ptr %86, align 8, !tbaa !224
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %61, !llvm.loop !273

90:                                               ; preds = %61, %76, %71, %82, %85, %57
  %91 = phi i64 [ 0, %57 ], [ %87, %85 ], [ %63, %82 ], [ %63, %71 ], [ %63, %76 ], [ %63, %61 ]
  %92 = phi i1 [ true, %57 ], [ true, %85 ], [ false, %82 ], [ false, %71 ], [ false, %76 ], [ false, %61 ]
  %93 = tail call fastcc i32 @gimple_call_num_args(ptr noundef %16) #16
  %94 = zext i32 %93 to i64
  %95 = icmp eq i64 %91, %94
  %96 = and i1 %92, %95
  %97 = zext i1 %96 to i8
  br label %98

98:                                               ; preds = %90, %53
  %99 = phi i8 [ %97, %90 ], [ 0, %53 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !274
  br label %100

100:                                              ; preds = %156, %98
  %101 = phi ptr [ %48, %98 ], [ %159, %156 ]
  %102 = phi ptr [ null, %98 ], [ %157, %156 ]
  %103 = phi ptr [ null, %98 ], [ %158, %156 ]
  %104 = phi ptr [ %0, %98 ], [ %117, %156 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #17
  store ptr null, ptr %8, align 8, !tbaa !200
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #17
  store ptr null, ptr %9, align 8, !tbaa !200
  call fastcc void @gsi_next(ptr noundef nonnull %5) #16
  %105 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #16, !range !206
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %115, label %107, !prof !275

107:                                              ; preds = %100, %107
  %108 = phi ptr [ %112, %107 ], [ %104, %100 ]
  %109 = phi ptr [ %111, %107 ], [ %101, %100 ]
  %110 = tail call fastcc ptr @single_succ_edge(ptr noundef %108) #16
  %111 = tail call fastcc ptr @propagate_through_phis(ptr noundef %109, ptr noundef %110) #16
  %112 = tail call fastcc ptr @single_succ(ptr noundef %108) #16
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef %112) #16
  %113 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #16, !range !206
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %115, label %107, !prof !276, !llvm.loop !277

115:                                              ; preds = %107, %100
  %116 = phi ptr [ %101, %100 ], [ %111, %107 ]
  %117 = phi ptr [ %104, %100 ], [ %112, %107 ]
  store ptr %116, ptr %3, align 8, !tbaa !200
  %118 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #16
  %119 = tail call fastcc i32 @gimple_code(ptr noundef %118) #16, !range !215
  %120 = trunc i32 %119 to i8
  switch i8 %120, label %121 [
    i8 4, label %156
    i8 9, label %160
  ], !prof !278

121:                                              ; preds = %115
  %122 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %118) #16, !range !206
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %124, label %156, !prof !279

124:                                              ; preds = %121
  %125 = icmp eq i32 %119, 6
  br i1 %125, label %126, label %155, !prof !279

126:                                              ; preds = %124
  %127 = call fastcc zeroext i8 @process_assignment(ptr noundef %118, ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef nonnull %9, ptr noundef nonnull %8, ptr noundef nonnull %3) #16, !range !206
  %128 = icmp eq i8 %127, 0
  br i1 %128, label %155, label %129, !prof !280

129:                                              ; preds = %126
  %130 = load ptr, ptr %8, align 8, !tbaa !200
  %131 = icmp eq ptr %130, null
  br i1 %131, label %138, label %132, !prof !281

132:                                              ; preds = %129
  %133 = icmp eq ptr %103, null
  br i1 %133, label %138, label %134, !prof !282

134:                                              ; preds = %132
  %135 = getelementptr inbounds %struct.tree_common, ptr %130, i64 0, i32 2
  %136 = load ptr, ptr %135, align 8, !tbaa !224
  %137 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef %136, ptr noundef nonnull %103, ptr noundef nonnull %130) #15
  br label %138

138:                                              ; preds = %132, %134, %129
  %139 = phi ptr [ %137, %134 ], [ %103, %129 ], [ %130, %132 ]
  %140 = load ptr, ptr %9, align 8, !tbaa !200
  %141 = icmp eq ptr %140, null
  br i1 %141, label %156, label %142, !prof !283

142:                                              ; preds = %138
  %143 = icmp eq ptr %102, null
  br i1 %143, label %148, label %144

144:                                              ; preds = %142
  %145 = getelementptr inbounds %struct.tree_common, ptr %140, i64 0, i32 2
  %146 = load ptr, ptr %145, align 8, !tbaa !224
  %147 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 65, ptr noundef %146, ptr noundef nonnull %102, ptr noundef nonnull %140) #15
  br label %148

148:                                              ; preds = %142, %144
  %149 = phi ptr [ %147, %144 ], [ %140, %142 ]
  %150 = icmp eq ptr %139, null
  br i1 %150, label %156, label %151

151:                                              ; preds = %148
  %152 = getelementptr inbounds %struct.tree_common, ptr %140, i64 0, i32 2
  %153 = load ptr, ptr %152, align 8, !tbaa !224
  %154 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 65, ptr noundef %153, ptr noundef nonnull %139, ptr noundef nonnull %140) #15
  br label %156

155:                                              ; preds = %124, %126
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #17
  br label %178

156:                                              ; preds = %115, %138, %151, %148, %121
  %157 = phi ptr [ %102, %115 ], [ %102, %121 ], [ %149, %151 ], [ %149, %148 ], [ %102, %138 ]
  %158 = phi ptr [ %103, %115 ], [ %103, %121 ], [ %154, %151 ], [ null, %148 ], [ %139, %138 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #17
  %159 = load ptr, ptr %3, align 8, !tbaa !200
  br label %100

160:                                              ; preds = %115
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #17
  %161 = tail call fastcc ptr @gimple_return_retval(ptr noundef %118) #16
  %162 = icmp eq ptr %161, null
  %163 = icmp eq ptr %161, %116
  %164 = select i1 %162, i1 true, i1 %163
  br i1 %164, label %165, label %178, !prof !284

165:                                              ; preds = %160
  %166 = icmp eq i8 %99, 0
  br i1 %166, label %167, label %171, !prof !285

167:                                              ; preds = %165
  %168 = icmp ne ptr %102, null
  %169 = icmp ne ptr %103, null
  %170 = select i1 %168, i1 true, i1 %169
  br i1 %170, label %178, label %171, !prof !286

171:                                              ; preds = %167, %165
  %172 = tail call ptr @xmalloc(i64 noundef 56) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %172, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !274
  %173 = getelementptr inbounds %struct.tailcall, ptr %172, i64 0, i32 1
  store i8 %99, ptr %173, align 8, !tbaa !220
  %174 = getelementptr inbounds %struct.tailcall, ptr %172, i64 0, i32 2
  store ptr %102, ptr %174, align 8, !tbaa !227
  %175 = getelementptr inbounds %struct.tailcall, ptr %172, i64 0, i32 3
  store ptr %103, ptr %175, align 8, !tbaa !226
  %176 = load ptr, ptr %1, align 8, !tbaa !200
  %177 = getelementptr inbounds %struct.tailcall, ptr %172, i64 0, i32 4
  store ptr %176, ptr %177, align 8, !tbaa !231
  store ptr %172, ptr %1, align 8, !tbaa !200
  br label %178

178:                                              ; preds = %25, %28, %155, %167, %160, %50, %2, %171, %46
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 !prof !256 !PGOFuncName !287 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #16
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7, !prof !288

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #16
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #16
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14, !prof !289

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 738, ptr noundef nonnull @.str.5) #15
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !290
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !290
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_pred_p(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !292 !PGOFuncName !293 {
  %2 = load ptr, ptr %0, align 8, !tbaa !294
  %3 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %2) #16
  %4 = icmp eq i32 %3, 1
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_seq_empty_p(ptr noundef readonly %0) unnamed_addr #6 !prof !292 !PGOFuncName !296 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !297
  %5 = icmp eq ptr %4, null
  %6 = zext i1 %5 to i8
  br label %7

7:                                                ; preds = %3, %1
  %8 = phi i8 [ 1, %1 ], [ %6, %3 ]
  ret i8 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @phi_nodes(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !292 !PGOFuncName !299 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !300
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 510, ptr noundef nonnull @.str.5) #15
  br label %7

7:                                                ; preds = %1, %6
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !224
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.gimple_bb_info, ptr %9, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !301
  br label %14

14:                                               ; preds = %7, %11
  %15 = phi ptr [ %13, %11 ], [ null, %7 ]
  ret ptr %15
}

; Function Attrs: optsize
declare ptr @split_edge(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ_edge(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !303 !PGOFuncName !304 {
  %2 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %0) #16, !range !206
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5, !prof !305

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 645, ptr noundef nonnull @.str.5) #15
  br label %5

5:                                                ; preds = %1, %4
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !306
  %8 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %7, i32 noundef 0) #16
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @arg_needs_copy_p(ptr noundef %0) unnamed_addr #0 !prof !292 !PGOFuncName !307 {
  %2 = tail call zeroext i8 @is_gimple_reg(ptr noundef %0) #15
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %12, label %4

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @var_ann(ptr noundef %0) #16
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %4
  %8 = load ptr, ptr @cfun, align 8, !tbaa !200
  %9 = tail call ptr @gimple_default_def(ptr noundef %8, ptr noundef %0) #15
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
define internal fastcc ptr @make_ssa_name(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !292 !PGOFuncName !308 {
  %3 = load ptr, ptr @cfun, align 8, !tbaa !200
  %4 = tail call ptr @make_ssa_name_fn(ptr noundef %3, ptr noundef %0, ptr noundef %1) #15
  ret ptr %4
}

; Function Attrs: optsize
declare void @set_default_def(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @create_phi_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @add_phi_arg(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_pred_edge(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !292 !PGOFuncName !309 {
  %2 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %0) #16, !range !206
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 655, ptr noundef nonnull @.str.5) #15
  br label %5

5:                                                ; preds = %1, %4
  %6 = load ptr, ptr %0, align 8, !tbaa !294
  %7 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %6, i32 noundef 0) #16
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @create_tailcall_accumulator(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !292 !PGOFuncName !310 {
  %4 = load ptr, ptr @current_function_decl, align 8, !tbaa !200
  %5 = getelementptr inbounds %struct.tree_decl_non_common, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !224
  %7 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !224
  %9 = tail call ptr @create_tmp_var(ptr noundef %8, ptr noundef %0) #15
  %10 = load i64, ptr %8, align 8
  %11 = trunc i64 %10 to i32
  %12 = and i32 %11, 65535
  %13 = add nsw i32 %12, -13
  %14 = icmp ult i32 %13, 2
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.tree_decl_common, ptr %9, i64 0, i32 2
  %17 = load i64, ptr %16, align 8
  %18 = or i64 %17, 134217728
  store i64 %18, ptr %16, align 8
  br label %19

19:                                               ; preds = %3, %15
  %20 = tail call zeroext i8 @add_referenced_var(ptr noundef %9) #15
  %21 = tail call ptr @create_phi_node(ptr noundef %9, ptr noundef %1) #15
  %22 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef nonnull %8, ptr noundef %2) #15
  %23 = tail call fastcc ptr @single_pred_edge(ptr noundef %1) #16
  tail call void @add_phi_arg(ptr noundef %21, ptr noundef %22, ptr noundef %23, i32 noundef 0) #15
  %24 = tail call fastcc ptr @gimple_phi_result_ptr(ptr noundef %21) #16
  %25 = tail call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %24) #16
  ret ptr %25
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @optimize_tail_call(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 !prof !311 !PGOFuncName !312 {
  %3 = getelementptr inbounds %struct.tailcall, ptr %0, i64 0, i32 1
  %4 = load i8, ptr %3, align 8, !tbaa !220
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %7, label %6, !prof !223

6:                                                ; preds = %2
  tail call fastcc void @eliminate_tail_call(ptr noundef nonnull %0) #16
  br label %26

7:                                                ; preds = %2
  %8 = icmp eq i8 %1, 0
  br i1 %8, label %26, label %9, !prof !313

9:                                                ; preds = %7
  %10 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %0) #16
  tail call fastcc void @gimple_call_set_tail(ptr noundef %10) #16
  %11 = load ptr, ptr @dump_file, align 8, !tbaa !200
  %12 = icmp eq ptr %11, null
  br i1 %12, label %26, label %13, !prof !314

13:                                               ; preds = %9
  %14 = load i32, ptr @dump_flags, align 4, !tbaa !189
  %15 = and i32 %14, 8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %13
  %18 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 16, i64 1, ptr nonnull %11)
  %19 = load ptr, ptr @dump_file, align 8, !tbaa !200
  %20 = load i32, ptr @dump_flags, align 4, !tbaa !189
  tail call void @print_gimple_stmt(ptr noundef %19, ptr noundef %10, i32 noundef 0, i32 noundef %20) #15
  %21 = load ptr, ptr @dump_file, align 8, !tbaa !200
  %22 = tail call fastcc ptr @gsi_bb(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %0) #16
  %23 = getelementptr inbounds %struct.basic_block_def, ptr %22, i64 0, i32 9
  %24 = load i32, ptr %23, align 8, !tbaa !315
  %25 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef nonnull @.str.10, i32 noundef %24) #16
  br label %26

26:                                               ; preds = %7, %17, %13, %9, %6
  %27 = phi i8 [ 1, %6 ], [ 0, %9 ], [ 0, %13 ], [ 0, %17 ], [ 0, %7 ]
  ret i8 %27
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @adjust_return_value(ptr noundef %0, ptr noundef readnone %1, ptr noundef readnone %2) unnamed_addr #0 !prof !292 !PGOFuncName !316 {
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = tail call fastcc ptr @bb_seq(ptr noundef %0) #16
  %6 = tail call fastcc ptr @gimple_seq_last_stmt(ptr noundef %5) #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #17
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %0) #16
  %7 = tail call fastcc i32 @gimple_code(ptr noundef %6) #16, !range !215
  %8 = icmp eq i32 %7, 9
  br i1 %8, label %10, label %9

9:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 689, ptr noundef nonnull @.str.5) #15
  br label %10

10:                                               ; preds = %3, %9
  %11 = tail call fastcc ptr @gimple_return_retval(ptr noundef %6) #16
  %12 = icmp eq ptr %11, null
  %13 = load ptr, ptr @global_trees, align 16
  %14 = icmp eq ptr %11, %13
  %15 = select i1 %12, i1 true, i1 %14
  br i1 %15, label %29, label %16

16:                                               ; preds = %10
  %17 = icmp eq ptr %1, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %16
  %19 = load ptr, ptr @m_acc, align 8, !tbaa !200
  %20 = tail call fastcc ptr @adjust_return_value_with_ops(i32 noundef 65, ptr noundef nonnull @.str.14, ptr noundef %19, ptr noundef nonnull %11, ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #16
  br label %21

21:                                               ; preds = %18, %16
  %22 = phi ptr [ %20, %18 ], [ %11, %16 ]
  %23 = icmp eq ptr %2, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr @a_acc, align 8, !tbaa !200
  %26 = tail call fastcc ptr @adjust_return_value_with_ops(i32 noundef 63, ptr noundef nonnull @.str.13, ptr noundef %25, ptr noundef %22, ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #16
  br label %27

27:                                               ; preds = %24, %21
  %28 = phi ptr [ %26, %24 ], [ %22, %21 ]
  tail call fastcc void @gimple_return_set_retval(ptr noundef %6, ptr noundef %28) #16
  tail call fastcc void @update_stmt(ptr noundef %6) #16
  br label %29

29:                                               ; preds = %10, %27
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #17
  ret void
}

; Function Attrs: optsize
declare void @free_dominance_info(i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_virtual_phis() unnamed_addr #0 !prof !292 !PGOFuncName !317 {
  %1 = alloca %struct.referenced_var_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #17
  %2 = call fastcc ptr @first_referenced_var(ptr noundef nonnull %1) #16
  %3 = call fastcc zeroext i8 @end_referenced_vars_p(ptr noundef nonnull %1) #16, !range !206
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %18

5:                                                ; preds = %0, %14
  %6 = phi ptr [ %15, %14 ], [ %2, %0 ]
  %7 = tail call zeroext i8 @is_gimple_reg(ptr noundef %6) #15
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %5
  %10 = load ptr, ptr @cfun, align 8, !tbaa !200
  %11 = tail call ptr @gimple_default_def(ptr noundef %10, ptr noundef %6) #15
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void @mark_sym_for_renaming(ptr noundef %6) #15
  br label %14

14:                                               ; preds = %5, %9, %13
  %15 = call fastcc ptr @next_referenced_var(ptr noundef nonnull %1) #16
  %16 = call fastcc zeroext i8 @end_referenced_vars_p(ptr noundef nonnull %1) #16, !range !206
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %5, label %18, !llvm.loop !318

18:                                               ; preds = %14, %0
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @first_referenced_var(ptr nocapture noundef %0) unnamed_addr #0 !prof !187 !PGOFuncName !319 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !200
  %3 = tail call fastcc ptr @gimple_referenced_vars(ptr noundef %2) #16
  %4 = tail call fastcc ptr @first_htab_element(ptr noundef %0, ptr noundef %3) #16
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @end_referenced_vars_p(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !320 !PGOFuncName !321 {
  %2 = tail call fastcc zeroext i8 @end_htab_p(ptr noundef %0) #16, !range !206
  ret i8 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_global_var(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !322 !PGOFuncName !323 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 67108864
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %5, label %11, !prof !324

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
define internal fastcc zeroext i8 @is_call_used(ptr noundef %0) unnamed_addr #0 !prof !325 !PGOFuncName !326 {
  %2 = tail call fastcc zeroext i8 @is_call_clobbered(ptr noundef %0) #16, !range !206
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %15, !prof !240

4:                                                ; preds = %1
  %5 = tail call fastcc zeroext i8 @may_be_aliased(ptr noundef %0) #16, !range !206
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %15, label %7, !prof !240

7:                                                ; preds = %4
  %8 = load ptr, ptr @cfun, align 8, !tbaa !200
  %9 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !327
  %11 = getelementptr inbounds %struct.gimple_df, ptr %10, i64 0, i32 5
  %12 = tail call zeroext i8 @pt_solution_includes(ptr noundef nonnull %11, ptr noundef %0) #15
  %13 = icmp ne i8 %12, 0
  %14 = zext i1 %13 to i8
  br label %15

15:                                               ; preds = %4, %7, %1
  %16 = phi i8 [ 1, %1 ], [ 0, %4 ], [ %14, %7 ]
  ret i8 %16
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @next_referenced_var(ptr nocapture noundef %0) unnamed_addr #9 !prof !328 !PGOFuncName !329 {
  %2 = tail call fastcc ptr @next_htab_element(ptr noundef %0) #16
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @first_htab_element(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !187 !PGOFuncName !330 {
  store ptr %1, ptr %0, align 8, !tbaa !331
  %3 = getelementptr inbounds %struct.htab, ptr %1, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !332
  %5 = getelementptr inbounds %struct.htab_iterator, ptr %0, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !334
  %6 = tail call i64 @htab_size(ptr noundef %1) #15
  %7 = getelementptr inbounds ptr, ptr %4, i64 %6
  %8 = getelementptr inbounds %struct.htab_iterator, ptr %0, i64 0, i32 2
  store ptr %7, ptr %8, align 8, !tbaa !335
  %9 = load ptr, ptr %5, align 8, !tbaa !334
  br label %10

10:                                               ; preds = %14, %2
  %11 = phi ptr [ %15, %14 ], [ %9, %2 ]
  %12 = load ptr, ptr %11, align 8, !tbaa !200
  %13 = icmp ult ptr %12, inttoptr (i64 2 to ptr)
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = getelementptr inbounds ptr, ptr %11, i64 1
  store ptr %15, ptr %5, align 8, !tbaa !334
  %16 = icmp ult ptr %15, %7
  br i1 %16, label %10, label %17, !prof !336, !llvm.loop !337

17:                                               ; preds = %10, %14
  %18 = phi ptr [ %11, %10 ], [ %15, %14 ]
  %19 = icmp ult ptr %18, %7
  br i1 %19, label %20, label %22, !prof !216

20:                                               ; preds = %17
  %21 = load ptr, ptr %18, align 8, !tbaa !200
  br label %22

22:                                               ; preds = %17, %20
  %23 = phi ptr [ %21, %20 ], [ null, %17 ]
  ret ptr %23
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gimple_referenced_vars(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !187 !PGOFuncName !338 {
  %2 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !327
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !193

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !339
  br label %7

7:                                                ; preds = %1, %5
  %8 = phi ptr [ %6, %5 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: optsize
declare i64 @htab_size(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @end_htab_p(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !320 !PGOFuncName !343 {
  %2 = getelementptr inbounds %struct.htab_iterator, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !334
  %4 = getelementptr inbounds %struct.htab_iterator, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !335
  %6 = icmp uge ptr %3, %5
  %7 = zext i1 %6 to i8
  ret i8 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @is_call_clobbered(ptr noundef %0) unnamed_addr #0 !prof !325 !PGOFuncName !344 {
  %2 = tail call fastcc zeroext i8 @is_global_var(ptr noundef %0) #16, !range !206
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %15, !prof !240

4:                                                ; preds = %1
  %5 = tail call fastcc zeroext i8 @may_be_aliased(ptr noundef %0) #16, !range !206
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %15, label %7, !prof !240

7:                                                ; preds = %4
  %8 = load ptr, ptr @cfun, align 8, !tbaa !200
  %9 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !327
  %11 = getelementptr inbounds %struct.gimple_df, ptr %10, i64 0, i32 4
  %12 = tail call zeroext i8 @pt_solution_includes(ptr noundef nonnull %11, ptr noundef %0) #15
  %13 = icmp ne i8 %12, 0
  %14 = zext i1 %13 to i8
  br label %15

15:                                               ; preds = %4, %7, %1
  %16 = phi i8 [ 1, %1 ], [ 0, %4 ], [ %14, %7 ]
  ret i8 %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @may_be_aliased(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !345 !PGOFuncName !346 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 33
  br i1 %4, label %38, label %5, !prof !347

5:                                                ; preds = %1
  %6 = and i64 %2, 134217728
  %7 = icmp ne i64 %6, 0
  %8 = and i64 %2, 201326592
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %15, !prof !348

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %12 = load i64, ptr %11, align 8
  %13 = and i64 %12, 33554432
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %29, label %15, !prof !349

15:                                               ; preds = %10, %5
  %16 = and i64 %2, 1048576
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %28, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !224
  %21 = getelementptr inbounds %struct.tree_type, ptr %20, i64 0, i32 6
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, 2048
  %24 = icmp eq i32 %23, 0
  %25 = or i1 %7, %24
  %26 = xor i1 %24, true
  %27 = zext i1 %26 to i8
  br i1 %25, label %38, label %29, !prof !350

28:                                               ; preds = %15
  br i1 %7, label %38, label %29, !prof !351

29:                                               ; preds = %18, %10, %28
  %30 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %31 = load i64, ptr %30, align 8
  %32 = and i64 %31, 33554432
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %38, !prof !349

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
define internal fastcc ptr @next_htab_element(ptr nocapture noundef %0) unnamed_addr #9 !prof !328 !PGOFuncName !352 {
  %2 = getelementptr inbounds %struct.htab_iterator, ptr %0, i64 0, i32 1
  %3 = getelementptr inbounds %struct.htab_iterator, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !335
  %5 = load ptr, ptr %2, align 8, !tbaa !334
  br label %6

6:                                                ; preds = %10, %1
  %7 = phi ptr [ %5, %1 ], [ %8, %10 ]
  %8 = getelementptr inbounds ptr, ptr %7, i64 1
  store ptr %8, ptr %2, align 8, !tbaa !334
  %9 = icmp ult ptr %8, %4
  br i1 %9, label %10, label %13, !prof !353

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !200
  %12 = icmp ult ptr %11, inttoptr (i64 2 to ptr)
  br i1 %12, label %6, label %13

13:                                               ; preds = %10, %6
  %14 = phi ptr [ %11, %10 ], [ null, %6 ]
  ret ptr %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 !prof !251 !PGOFuncName !354 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #16
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !355

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #16
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %8) #16
  %10 = icmp eq i32 %9, %0
  %11 = zext i1 %10 to i8
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 !prof !256 !PGOFuncName !356 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #16
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !288

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #16
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #16
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #6 !prof !357 !PGOFuncName !358 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !359

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !360
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #0 !prof !362 !PGOFuncName !363 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !364

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 687, ptr noundef nonnull @.str.5) #15
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !200
  ret ptr %5
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #6 !prof !365 !PGOFuncName !366 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !200
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_succ_p(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !365 !PGOFuncName !367 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !306
  %4 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %3) #16
  %5 = icmp eq i32 %4, 1
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_last_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #10 !prof !368 !PGOFuncName !369 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #16
  %4 = tail call fastcc ptr @gimple_seq_last(ptr noundef %3) #16
  store ptr %4, ptr %0, align 8, !tbaa !331
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !334
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !335
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #6 !prof !370 !PGOFuncName !371 {
  %2 = load ptr, ptr %0, align 8, !tbaa !331
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #7 !prof !372 !PGOFuncName !373 {
  %2 = load ptr, ptr %0, align 8, !tbaa !331
  %3 = load ptr, ptr %2, align 8, !tbaa !374
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_debug(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !376 !PGOFuncName !377 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #16, !range !215
  %3 = icmp eq i32 %2, 2
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_call(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !378 !PGOFuncName !379 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #16, !range !215
  %3 = icmp eq i32 %2, 8
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_lhs(ptr noundef %0) unnamed_addr #0 !prof !380 !PGOFuncName !381 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #16
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_references_memory_p(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !382 !PGOFuncName !383 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #16, !range !206
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %8, label %4, !prof !384

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_vuse(ptr noundef %0) #16
  %6 = icmp ne ptr %5, null
  %7 = zext i1 %6 to i8
  br label %8

8:                                                ; preds = %4, %1
  %9 = phi i8 [ 0, %1 ], [ %7, %4 ]
  ret i8 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_volatile_ops(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !385 !PGOFuncName !386 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #16, !range !206
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %9, label %4, !prof !387

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
define internal fastcc void @gsi_prev(ptr nocapture noundef %0) unnamed_addr #10 !prof !388 !PGOFuncName !389 {
  %2 = load ptr, ptr %0, align 8, !tbaa !331
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !390
  store ptr %4, ptr %0, align 8, !tbaa !331
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fndecl(ptr noundef %0) unnamed_addr #0 !prof !380 !PGOFuncName !391 {
  %2 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #16
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 121
  br i1 %5, label %6, label %9, !prof !392

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !224
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_call_num_args(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !292 !PGOFuncName !393 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #16
  %3 = add i32 %2, -3
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !292 !PGOFuncName !394 {
  %3 = add i32 %1, 3
  %4 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %3) #16
  ret ptr %4
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_reg_type(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @useless_type_conversion_p(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #10 !prof !395 !PGOFuncName !396 {
  %2 = load ptr, ptr %0, align 8, !tbaa !331
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !397
  store ptr %4, ptr %0, align 8, !tbaa !331
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @propagate_through_phis(ptr noundef readnone %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !398 !PGOFuncName !399 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !237
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #17
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %5) #15
  %6 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #16, !range !206
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %22, !prof !400

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 6
  br label %10

10:                                               ; preds = %8, %19
  %11 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #16
  %12 = load i32, ptr %9, align 4, !tbaa !401
  %13 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %11, i32 noundef %12) #16
  %14 = call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %13) #16
  %15 = icmp eq ptr %14, %0
  br i1 %15, label %16, label %19, !prof !402

16:                                               ; preds = %10
  %17 = call fastcc ptr @gimple_phi_result_ptr(ptr noundef %11) #16
  %18 = call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %17) #16
  br label %22

19:                                               ; preds = %10
  call fastcc void @gsi_next(ptr noundef nonnull %3) #16
  %20 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #16, !range !206
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %10, label %22, !prof !403, !llvm.loop !404

22:                                               ; preds = %19, %2, %16
  %23 = phi ptr [ %18, %16 ], [ %0, %2 ], [ %0, %19 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #17
  ret ptr %23
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #10 !prof !398 !PGOFuncName !405 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #16
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #16
  store ptr %4, ptr %0, align 8, !tbaa !331
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !334
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !335
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @process_assignment(ptr noundef %0, ptr nocapture noundef byval(%struct.gimple_stmt_iterator) align 8 %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef %4) unnamed_addr #0 !prof !406 !PGOFuncName !407 {
  %6 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %0) #16
  %7 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #16, !range !408
  %8 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %7) #16, !range !215
  %9 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #16
  %10 = icmp eq i32 %8, 3
  br i1 %10, label %14, label %11, !prof !409

11:                                               ; preds = %5
  %12 = tail call fastcc zeroext i8 @gimple_assign_cast_p(ptr noundef %0) #16, !range !206
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %54, label %14, !prof !410

14:                                               ; preds = %11, %5
  %15 = load i64, ptr %9, align 8
  %16 = and i64 %15, 65535
  %17 = icmp eq i64 %16, 141
  br i1 %17, label %18, label %54, !prof !411

18:                                               ; preds = %14
  %19 = tail call fastcc zeroext i8 @gimple_assign_cast_p(ptr noundef %0) #16, !range !206
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %51, label %21, !prof !412

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !224
  %24 = load i64, ptr %23, align 8
  %25 = and i64 %24, 65535
  %26 = icmp eq i64 %25, 14
  br i1 %26, label %27, label %29, !prof !412

27:                                               ; preds = %21
  %28 = tail call i32 @vector_type_mode(ptr noundef nonnull %23) #15
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
  %37 = load ptr, ptr %36, align 8, !tbaa !224
  %38 = load i64, ptr %37, align 8
  %39 = and i64 %38, 65535
  %40 = icmp eq i64 %39, 14
  br i1 %40, label %41, label %43, !prof !412

41:                                               ; preds = %34
  %42 = tail call i32 @vector_type_mode(ptr noundef nonnull %37) #15
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
  br i1 %50, label %51, label %96, !prof !412

51:                                               ; preds = %48, %18
  %52 = load ptr, ptr %4, align 8, !tbaa !200
  %53 = icmp eq ptr %9, %52
  br i1 %53, label %95, label %96

54:                                               ; preds = %14, %11
  %55 = icmp eq i32 %8, 1
  br i1 %55, label %56, label %96, !prof !413

56:                                               ; preds = %54
  %57 = load i32, ptr @flag_associative_math, align 4, !tbaa !189
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %73, !prof !413

59:                                               ; preds = %56
  %60 = load ptr, ptr @current_function_decl, align 8, !tbaa !200
  %61 = getelementptr inbounds %struct.tree_decl_non_common, ptr %60, i64 0, i32 3
  %62 = load ptr, ptr %61, align 8, !tbaa !224
  %63 = getelementptr inbounds %struct.tree_common, ptr %62, i64 0, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !224
  %65 = load i64, ptr %64, align 8
  %66 = trunc i64 %65 to i16
  switch i16 %66, label %73 [
    i16 9, label %96
    i16 13, label %67
    i16 14, label %67
  ], !prof !414

67:                                               ; preds = %59, %59
  %68 = getelementptr inbounds %struct.tree_common, ptr %64, i64 0, i32 2
  %69 = load ptr, ptr %68, align 8, !tbaa !224
  %70 = load i64, ptr %69, align 8
  %71 = and i64 %70, 65535
  %72 = icmp eq i64 %71, 9
  br i1 %72, label %96, label %73

73:                                               ; preds = %59, %67, %56
  %74 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #16
  %75 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %0) #16
  %76 = load ptr, ptr %4, align 8, !tbaa !200
  %77 = icmp eq ptr %74, %76
  br i1 %77, label %78, label %83, !prof !415

78:                                               ; preds = %73
  %79 = tail call fastcc ptr @independent_of_stmt_p(ptr noundef %75, ptr noundef %0, ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #16
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %89, !prof !416

81:                                               ; preds = %78
  %82 = load ptr, ptr %4, align 8, !tbaa !200
  br label %83

83:                                               ; preds = %81, %73
  %84 = phi ptr [ %82, %81 ], [ %76, %73 ]
  %85 = icmp eq ptr %75, %84
  br i1 %85, label %86, label %96, !prof !417

86:                                               ; preds = %83
  %87 = tail call fastcc ptr @independent_of_stmt_p(ptr noundef %74, ptr noundef %0, ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #16
  %88 = icmp eq ptr %87, null
  br i1 %88, label %96, label %89, !prof !418

89:                                               ; preds = %86, %78
  %90 = phi ptr [ %79, %78 ], [ %87, %86 ]
  %91 = trunc i32 %7 to i16
  switch i16 %91, label %96 [
    i16 63, label %93
    i16 65, label %92
  ], !prof !419

92:                                               ; preds = %89
  br label %93

93:                                               ; preds = %89, %92
  %94 = phi ptr [ %2, %92 ], [ %3, %89 ]
  store ptr %90, ptr %94, align 8, !tbaa !200
  br label %95

95:                                               ; preds = %93, %51
  store ptr %6, ptr %4, align 8, !tbaa !200
  br label %96

96:                                               ; preds = %95, %89, %83, %86, %67, %59, %54, %51, %48
  %97 = phi i8 [ 0, %48 ], [ 0, %51 ], [ 0, %54 ], [ 0, %59 ], [ 0, %67 ], [ 0, %86 ], [ 0, %83 ], [ 0, %89 ], [ 1, %95 ]
  ret i8 %97
}

; Function Attrs: optsize
declare ptr @fold_build2_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_return_retval(ptr noundef %0) unnamed_addr #0 !prof !398 !PGOFuncName !420 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #16
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !421 !PGOFuncName !422 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !300
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12, !prof !423

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !224
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10, !prof !424

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !425
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_last(ptr noundef readonly %0) unnamed_addr #6 !prof !368 !PGOFuncName !426 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3, !prof !427

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.gimple_seq_d, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !428
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi ptr [ %5, %3 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !429 !PGOFuncName !430 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #16, !range !206
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5, !prof !431

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #16
  %7 = zext i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !200
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !429 !PGOFuncName !432 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #16, !range !215
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #0 !prof !429 !PGOFuncName !433 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #16
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !434
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8, !prof !431

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 1622, ptr noundef nonnull @.str.5) #15
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !429 !PGOFuncName !435 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #16, !range !215
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #16
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #4 !prof !429 !PGOFuncName !436 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !189
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_mem_ops(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !437 !PGOFuncName !438 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #16, !range !215
  %3 = add nsw i32 %2, -6
  %4 = icmp ult i32 %3, 4
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vuse(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !382 !PGOFuncName !439 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #16, !range !206
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4, !prof !384

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !224
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fn(ptr noundef %0) unnamed_addr #0 !prof !380 !PGOFuncName !440 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #16
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_num_ops(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !441 !PGOFuncName !442 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !224
  ret i32 %3
}

; Function Attrs: optsize
declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_use_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !398 !PGOFuncName !443 {
  %2 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !444
  %4 = load ptr, ptr %3, align 8, !tbaa !200
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !398 !PGOFuncName !446 {
  %3 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %1) #16
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @get_def_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !447 !PGOFuncName !448 {
  %2 = load ptr, ptr %0, align 8, !tbaa !200
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @gimple_phi_result_ptr(ptr noundef readnone %0) unnamed_addr #4 !prof !447 !PGOFuncName !449 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #0 !prof !398 !PGOFuncName !450 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !224
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %7, !prof !451

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 3103, ptr noundef nonnull @.str.5) #15
  br label %7

7:                                                ; preds = %2, %6
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %8
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #6 !prof !398 !PGOFuncName !452 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !451

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !297
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_lhs(ptr noundef %0) unnamed_addr #0 !prof !406 !PGOFuncName !453 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #16
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) unnamed_addr #0 !prof !454 !PGOFuncName !455 {
  %2 = tail call fastcc i32 @gimple_expr_code(ptr noundef %0) #16, !range !408
  %3 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %2) #16, !range !215
  %4 = icmp eq i32 %3, 3
  br i1 %4, label %5, label %10, !prof !456

5:                                                ; preds = %1
  %6 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #16
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i32
  %9 = and i32 %8, 65535
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi i32 [ %9, %5 ], [ %2, %1 ]
  ret i32 %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @get_gimple_rhs_class(i32 noundef %0) unnamed_addr #4 !prof !457 !PGOFuncName !458 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %2
  %4 = load i8, ptr %3, align 1, !tbaa !224
  %5 = zext i8 %4 to i32
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs1(ptr noundef %0) unnamed_addr #0 !prof !459 !PGOFuncName !460 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #16
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @gimple_assign_cast_p(ptr noundef %0) unnamed_addr #0 !prof !461 !PGOFuncName !462 {
  %2 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %0) #16, !range !206
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %13, label %4, !prof !463

4:                                                ; preds = %1
  %5 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #16, !range !408
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
define internal fastcc ptr @gimple_assign_rhs2(ptr noundef %0) unnamed_addr #0 !prof !441 !PGOFuncName !464 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #16
  %3 = icmp ugt i32 %2, 2
  br i1 %3, label %4, label %6, !prof !413

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 2) #16
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi ptr [ %5, %4 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @independent_of_stmt_p(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef byval(%struct.gimple_stmt_iterator) align 8 %2) unnamed_addr #0 !prof !441 !PGOFuncName !465 {
  %4 = alloca ptr, align 8
  %5 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #17
  %6 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %0) #15
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %85, !prof !466

8:                                                ; preds = %3
  %9 = load i64, ptr %0, align 8
  %10 = and i64 %9, 65535
  %11 = icmp eq i64 %10, 141
  br i1 %11, label %12, label %85, !prof !417

12:                                               ; preds = %8
  %13 = tail call fastcc ptr @gimple_bb(ptr noundef %1) #16
  %14 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #16
  %15 = tail call fastcc ptr @gimple_bb(ptr noundef %14) #16
  %16 = icmp eq ptr %15, %13
  br i1 %16, label %22, label %17, !prof !467

17:                                               ; preds = %12, %17
  %18 = phi ptr [ %20, %17 ], [ %15, %12 ]
  %19 = getelementptr inbounds %struct.basic_block_def, ptr %18, i64 0, i32 2
  store ptr %19, ptr %19, align 8, !tbaa !468
  %20 = tail call fastcc ptr @single_succ(ptr noundef %18) #16
  %21 = icmp eq ptr %20, %13
  br i1 %21, label %22, label %17, !prof !469, !llvm.loop !470

22:                                               ; preds = %17, %12
  %23 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 2
  store ptr %23, ptr %23, align 8, !tbaa !468
  br label %24

24:                                               ; preds = %68, %22
  %25 = phi ptr [ %0, %22 ], [ %73, %68 ]
  %26 = getelementptr inbounds %struct.tree_ssa_name, ptr %25, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !224
  %28 = tail call fastcc ptr @gimple_bb(ptr noundef %27) #16
  %29 = icmp eq ptr %28, null
  br i1 %29, label %77, label %30, !prof !418

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.basic_block_def, ptr %28, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !468
  %33 = icmp eq ptr %32, null
  br i1 %33, label %77, label %34, !prof !418

34:                                               ; preds = %30
  %35 = icmp eq ptr %28, %15
  br i1 %35, label %36, label %45, !prof !417

36:                                               ; preds = %34
  %37 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #16, !range !206
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %77, !prof !467

39:                                               ; preds = %36, %42
  %40 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #16
  %41 = icmp eq ptr %40, %27
  br i1 %41, label %77, label %42, !prof !471

42:                                               ; preds = %39
  call fastcc void @gsi_next(ptr noundef nonnull %2) #16
  %43 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #16, !range !206
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %39, label %77, !prof !472, !llvm.loop !473

45:                                               ; preds = %34
  %46 = tail call fastcc i32 @gimple_code(ptr noundef %27) #16, !range !215
  %47 = icmp eq i32 %46, 16
  br i1 %47, label %48, label %77

48:                                               ; preds = %45
  %49 = getelementptr inbounds i8, ptr %5, i64 8
  %50 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %28) #16
  store i32 0, ptr %5, align 8, !tbaa.struct !209
  store ptr %50, ptr %49, align 8, !tbaa.struct !210
  %51 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %50, ptr noundef nonnull %4) #16, !range !206
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %64, label %53

53:                                               ; preds = %48, %59
  %54 = load ptr, ptr %4, align 8, !tbaa !200
  %55 = load ptr, ptr %54, align 8, !tbaa !212
  %56 = getelementptr inbounds %struct.basic_block_def, ptr %55, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !468
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %68

59:                                               ; preds = %53
  call fastcc void @ei_next(ptr noundef nonnull %5) #16
  %60 = load i32, ptr %5, align 8
  %61 = load ptr, ptr %49, align 8
  %62 = call fastcc zeroext i8 @ei_cond(i32 %60, ptr %61, ptr noundef nonnull %4) #16, !range !206
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %64, label %53, !llvm.loop !474

64:                                               ; preds = %59, %48
  %65 = load ptr, ptr %4, align 8, !tbaa !200
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 242, ptr noundef nonnull @.str.5) #15
  unreachable

68:                                               ; preds = %53, %64
  %69 = phi ptr [ %65, %64 ], [ %54, %53 ]
  %70 = getelementptr inbounds %struct.edge_def, ptr %69, i64 0, i32 6
  %71 = load i32, ptr %70, align 4, !tbaa !401
  %72 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %27, i32 noundef %71) #16
  %73 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %72) #16
  %74 = load i64, ptr %73, align 8
  %75 = and i64 %74, 65535
  %76 = icmp eq i64 %75, 141
  br i1 %76, label %24, label %77

77:                                               ; preds = %45, %68, %24, %30, %42, %39, %36
  %78 = phi ptr [ %25, %36 ], [ %25, %42 ], [ null, %39 ], [ null, %45 ], [ %25, %24 ], [ %25, %30 ], [ %73, %68 ]
  br i1 %16, label %84, label %79, !prof !467

79:                                               ; preds = %77, %79
  %80 = phi ptr [ %82, %79 ], [ %15, %77 ]
  %81 = getelementptr inbounds %struct.basic_block_def, ptr %80, i64 0, i32 2
  store ptr null, ptr %81, align 8, !tbaa !468
  %82 = tail call fastcc ptr @single_succ(ptr noundef %80) #16
  %83 = icmp eq ptr %82, %13
  br i1 %83, label %84, label %79, !prof !469, !llvm.loop !475

84:                                               ; preds = %79, %77
  store ptr null, ptr %23, align 8, !tbaa !468
  br label %85

85:                                               ; preds = %8, %3, %84
  %86 = phi ptr [ %78, %84 ], [ %0, %3 ], [ null, %8 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #17
  ret ptr %86
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_expr_code(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !454 !PGOFuncName !476 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #16, !range !215
  %3 = trunc i32 %2 to i8
  switch i8 %3, label %7 [
    i8 6, label %4
    i8 1, label %4
    i8 8, label %8
  ], !prof !477

4:                                                ; preds = %1, %1
  %5 = load i32, ptr %0, align 8
  %6 = lshr i32 %5, 16
  br label %8

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 1446, ptr noundef nonnull @.str.5) #15
  br label %8

8:                                                ; preds = %1, %7, %4
  %9 = phi i32 [ %6, %4 ], [ 0, %7 ], [ 59, %1 ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_assign(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !461 !PGOFuncName !478 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #16, !range !215
  %3 = icmp eq i32 %2, 6
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_min_invariant(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bb(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !479 !PGOFuncName !480 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !224
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @var_ann(ptr nocapture noundef readonly %0) unnamed_addr #7 !prof !292 !PGOFuncName !481 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i16
  switch i16 %3, label %8 [
    i16 32, label %4
    i16 34, label %6
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.tree_var_decl, ptr %0, i64 0, i32 1
  br label %12

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_parm_decl, ptr %0, i64 0, i32 2
  br label %12

8:                                                ; preds = %1
  %9 = and i64 %2, 65535
  %10 = icmp eq i64 %9, 36
  %11 = getelementptr inbounds %struct.tree_result_decl, ptr %0, i64 0, i32 1
  br i1 %10, label %12, label %15

12:                                               ; preds = %8, %4, %6
  %13 = phi ptr [ %7, %6 ], [ %5, %4 ], [ %11, %8 ]
  %14 = load ptr, ptr %13, align 8, !tbaa !200
  br label %15

15:                                               ; preds = %8, %12
  %16 = phi ptr [ %14, %12 ], [ null, %8 ]
  ret ptr %16
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
define internal fastcc void @eliminate_tail_call(ptr noundef %0) unnamed_addr #0 !prof !292 !PGOFuncName !482 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #17
  %4 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #16
  %5 = tail call fastcc ptr @gsi_bb(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #16
  %6 = load ptr, ptr @dump_file, align 8, !tbaa !200
  %7 = icmp eq ptr %6, null
  br i1 %7, label %19, label %8

8:                                                ; preds = %1
  %9 = load i32, ptr @dump_flags, align 4, !tbaa !189
  %10 = and i32 %9, 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 9
  %14 = load i32, ptr %13, align 8, !tbaa !315
  %15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %6, ptr noundef nonnull @.str.11, i32 noundef %14) #16
  %16 = load ptr, ptr @dump_file, align 8, !tbaa !200
  tail call void @print_gimple_stmt(ptr noundef %16, ptr noundef %4, i32 noundef 0, i32 noundef 2) #15
  %17 = load ptr, ptr @dump_file, align 8, !tbaa !200
  %18 = tail call i32 @fputc(i32 10, ptr %17)
  br label %19

19:                                               ; preds = %12, %8, %1
  %20 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %4) #16, !range !206
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 774, ptr noundef nonnull @.str.5) #15
  br label %23

23:                                               ; preds = %19, %22
  %24 = load ptr, ptr @cfun, align 8, !tbaa !200
  %25 = getelementptr inbounds %struct.function, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !202
  %27 = load ptr, ptr %26, align 8, !tbaa !204
  %28 = tail call fastcc ptr @single_succ(ptr noundef %27) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !274
  call fastcc void @gsi_next(ptr noundef nonnull %2) #16
  %29 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #16, !range !206
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %23, %35
  %32 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #16
  %33 = call fastcc i32 @gimple_code(ptr noundef %32) #16, !range !215
  %34 = icmp eq i32 %33, 9
  br i1 %34, label %38, label %35

35:                                               ; preds = %31
  call void @gsi_remove(ptr noundef nonnull %2, i8 noundef zeroext 1) #15
  call void @release_defs(ptr noundef %32) #15
  %36 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #16, !range !206
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %31, label %38

38:                                               ; preds = %35, %31, %23
  %39 = call fastcc ptr @gsi_bb(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #16
  %40 = call fastcc ptr @single_succ_edge(ptr noundef %39) #16
  %41 = load ptr, ptr @cfun, align 8, !tbaa !200
  %42 = getelementptr inbounds %struct.function, ptr %41, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !202
  %44 = getelementptr inbounds %struct.control_flow_graph, ptr %43, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !208
  %46 = getelementptr inbounds %struct.edge_def, ptr %40, i64 0, i32 9
  %47 = load i64, ptr %46, align 8, !tbaa !483
  %48 = load ptr, ptr %40, align 8, !tbaa !212
  %49 = getelementptr inbounds %struct.basic_block_def, ptr %48, i64 0, i32 11
  %50 = load i32, ptr %49, align 8, !tbaa !484
  %51 = getelementptr inbounds %struct.edge_def, ptr %40, i64 0, i32 8
  %52 = load i32, ptr %51, align 4, !tbaa !485
  %53 = mul nsw i32 %52, %50
  %54 = add nsw i32 %53, 5000
  %55 = sdiv i32 %54, 10000
  call fastcc void @decrease_profile(ptr noundef %45, i64 noundef %47, i32 noundef %55) #16
  %56 = load ptr, ptr @cfun, align 8, !tbaa !200
  %57 = getelementptr inbounds %struct.function, ptr %56, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !202
  %59 = load ptr, ptr %58, align 8, !tbaa !204
  %60 = load i64, ptr %46, align 8, !tbaa !483
  %61 = load ptr, ptr %40, align 8, !tbaa !212
  %62 = getelementptr inbounds %struct.basic_block_def, ptr %61, i64 0, i32 11
  %63 = load i32, ptr %62, align 8, !tbaa !484
  %64 = load i32, ptr %51, align 4, !tbaa !485
  %65 = mul nsw i32 %64, %63
  %66 = add nsw i32 %65, 5000
  %67 = sdiv i32 %66, 10000
  call fastcc void @decrease_profile(ptr noundef %59, i64 noundef %60, i32 noundef %67) #16
  %68 = getelementptr inbounds %struct.edge_def, ptr %40, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !237
  %70 = load ptr, ptr @cfun, align 8, !tbaa !200
  %71 = getelementptr inbounds %struct.function, ptr %70, i64 0, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !202
  %73 = getelementptr inbounds %struct.control_flow_graph, ptr %72, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !208
  %75 = icmp eq ptr %69, %74
  br i1 %75, label %85, label %76

76:                                               ; preds = %38
  %77 = load i64, ptr %46, align 8, !tbaa !483
  %78 = load ptr, ptr %40, align 8, !tbaa !212
  %79 = getelementptr inbounds %struct.basic_block_def, ptr %78, i64 0, i32 11
  %80 = load i32, ptr %79, align 8, !tbaa !484
  %81 = load i32, ptr %51, align 4, !tbaa !485
  %82 = mul nsw i32 %81, %80
  %83 = add nsw i32 %82, 5000
  %84 = sdiv i32 %83, 10000
  call fastcc void @decrease_profile(ptr noundef %69, i64 noundef %77, i32 noundef %84) #16
  br label %85

85:                                               ; preds = %76, %38
  %86 = call fastcc ptr @gsi_bb(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #16
  %87 = call fastcc ptr @single_succ_edge(ptr noundef %86) #16
  %88 = call ptr @redirect_edge_and_branch(ptr noundef %87, ptr noundef %28) #15
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %91

90:                                               ; preds = %85
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 805, ptr noundef nonnull @.str.5) #15
  br label %91

91:                                               ; preds = %85, %90
  %92 = getelementptr inbounds %struct.edge_def, ptr %88, i64 0, i32 2
  store ptr null, ptr %92, align 8, !tbaa !224
  %93 = load ptr, ptr @current_function_decl, align 8, !tbaa !200
  %94 = getelementptr inbounds %struct.tree_decl_non_common, ptr %93, i64 0, i32 2
  %95 = load ptr, ptr %94, align 8, !tbaa !224
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #17
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %28) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !274
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #17
  %96 = icmp eq ptr %95, null
  br i1 %96, label %118, label %97

97:                                               ; preds = %91, %113
  %98 = phi ptr [ %115, %113 ], [ %95, %91 ]
  %99 = phi i32 [ %116, %113 ], [ 0, %91 ]
  %100 = call fastcc zeroext i8 @arg_needs_copy_p(ptr noundef nonnull %98) #16, !range !206
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %113, label %102

102:                                              ; preds = %97
  %103 = call fastcc ptr @gimple_call_arg(ptr noundef %4, i32 noundef %99) #16
  %104 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #16
  %105 = call fastcc ptr @gimple_phi_result_ptr(ptr noundef %104) #16
  %106 = call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %105) #16
  %107 = getelementptr inbounds %struct.tree_ssa_name, ptr %106, i64 0, i32 1
  %108 = load ptr, ptr %107, align 8, !tbaa !224
  %109 = icmp eq ptr %98, %108
  br i1 %109, label %111, label %110

110:                                              ; preds = %102
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 820, ptr noundef nonnull @.str.5) #15
  br label %111

111:                                              ; preds = %102, %110
  %112 = call fastcc i32 @gimple_location(ptr noundef %4) #16
  call void @add_phi_arg(ptr noundef %104, ptr noundef %103, ptr noundef %88, i32 noundef %112) #15
  call fastcc void @gsi_next(ptr noundef nonnull %2) #16
  br label %113

113:                                              ; preds = %97, %111
  %114 = getelementptr inbounds %struct.tree_common, ptr %98, i64 0, i32 1
  %115 = load ptr, ptr %114, align 8, !tbaa !224
  %116 = add i32 %99, 1
  %117 = icmp eq ptr %115, null
  br i1 %117, label %118, label %97, !llvm.loop !486

118:                                              ; preds = %113, %91
  %119 = getelementptr inbounds %struct.tailcall, ptr %0, i64 0, i32 2
  %120 = load ptr, ptr %119, align 8, !tbaa !227
  %121 = getelementptr inbounds %struct.tailcall, ptr %0, i64 0, i32 3
  %122 = load ptr, ptr %121, align 8, !tbaa !226
  call fastcc void @adjust_accumulator_values(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %120, ptr noundef %122, ptr noundef %88) #16
  %123 = call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #16
  %124 = call fastcc ptr @gimple_call_lhs(ptr noundef %123) #16
  %125 = icmp eq ptr %124, null
  br i1 %125, label %129, label %126

126:                                              ; preds = %118
  %127 = call ptr @gimple_build_nop() #15
  %128 = getelementptr inbounds %struct.tree_ssa_name, ptr %124, i64 0, i32 2
  store ptr %127, ptr %128, align 8, !tbaa !224
  br label %129

129:                                              ; preds = %126, %118
  call void @gsi_remove(ptr noundef nonnull %0, i8 noundef zeroext 1) #15
  call void @release_defs(ptr noundef %123) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @gimple_call_set_tail(ptr nocapture noundef %0) unnamed_addr #11 !prof !487 !PGOFuncName !488 {
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
define internal fastcc ptr @gsi_bb(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #6 !prof !292 !PGOFuncName !489 {
  %2 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !335
  ret ptr %3
}

; Function Attrs: optsize
declare void @gsi_remove(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @release_defs(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @decrease_profile(ptr nocapture noundef %0, i64 noundef %1, i32 noundef %2) unnamed_addr #0 !prof !292 !PGOFuncName !490 {
  %4 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 8
  %5 = load i64, ptr %4, align 8, !tbaa !491
  %6 = sub nsw i64 %5, %1
  %7 = tail call i64 @llvm.smax.i64(i64 %6, i64 0)
  store i64 %7, ptr %4, align 8, !tbaa !491
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 11
  %9 = load i32, ptr %8, align 8, !tbaa !484
  %10 = sub nsw i32 %9, %2
  %11 = tail call i32 @llvm.smax.i32(i32 %10, i32 0)
  store i32 %11, ptr %8, align 8, !tbaa !484
  %12 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %0) #16, !range !206
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !306
  %17 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %16) #16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %14
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 719, ptr noundef nonnull @.str.5) #15
  br label %26

20:                                               ; preds = %3
  %21 = tail call fastcc ptr @single_succ_edge(ptr noundef nonnull %0) #16
  %22 = getelementptr inbounds %struct.edge_def, ptr %21, i64 0, i32 9
  %23 = load i64, ptr %22, align 8, !tbaa !483
  %24 = sub nsw i64 %23, %1
  %25 = tail call i64 @llvm.smax.i64(i64 %24, i64 0)
  store i64 %25, ptr %22, align 8, !tbaa !483
  br label %26

26:                                               ; preds = %19, %14, %20
  ret void
}

; Function Attrs: optsize
declare ptr @redirect_edge_and_branch(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_location(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !292 !PGOFuncName !492 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !224
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @adjust_accumulator_values(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !prof !292 !PGOFuncName !493 {
  %5 = icmp eq ptr %1, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %4
  %7 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %0, ptr noundef nonnull %1, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #15
  br label %8

8:                                                ; preds = %6, %4
  %9 = phi ptr [ %7, %6 ], [ null, %4 ]
  %10 = icmp eq ptr %2, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = load ptr, ptr @a_acc, align 8, !tbaa !200
  %13 = load ptr, ptr @m_acc, align 8, !tbaa !200
  br label %31

14:                                               ; preds = %8
  %15 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %0, ptr noundef nonnull %2, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #15
  %16 = load ptr, ptr @a_acc, align 8, !tbaa !200
  %17 = load ptr, ptr @m_acc, align 8, !tbaa !200
  %18 = icmp eq ptr %15, null
  br i1 %18, label %31, label %19

19:                                               ; preds = %14
  %20 = icmp eq ptr %17, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %19
  %22 = call i32 @integer_onep(ptr noundef nonnull %15) #15
  %23 = icmp eq i32 %22, 0
  %24 = load ptr, ptr @m_acc, align 8, !tbaa !200
  br i1 %23, label %25, label %27

25:                                               ; preds = %21
  %26 = call fastcc ptr @adjust_return_value_with_ops(i32 noundef 65, ptr noundef nonnull @.str.13, ptr noundef %24, ptr noundef nonnull %15, ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %0) #16
  br label %27

27:                                               ; preds = %21, %19, %25
  %28 = phi ptr [ %26, %25 ], [ %15, %19 ], [ %24, %21 ]
  %29 = load ptr, ptr @a_acc, align 8, !tbaa !200
  %30 = call fastcc ptr @update_accumulator_with_ops(i32 noundef 63, ptr noundef %29, ptr noundef %28, ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %0) #16
  br label %31

31:                                               ; preds = %11, %27, %14
  %32 = phi ptr [ %17, %27 ], [ %17, %14 ], [ %13, %11 ]
  %33 = phi ptr [ %30, %27 ], [ %16, %14 ], [ %12, %11 ]
  %34 = icmp eq ptr %9, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %31
  %36 = load ptr, ptr @m_acc, align 8, !tbaa !200
  %37 = call fastcc ptr @update_accumulator_with_ops(i32 noundef 65, ptr noundef %36, ptr noundef nonnull %9, ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %0) #16
  br label %38

38:                                               ; preds = %35, %31
  %39 = phi ptr [ %37, %35 ], [ %32, %31 ]
  %40 = load ptr, ptr @a_acc, align 8, !tbaa !200
  %41 = icmp eq ptr %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %38
  call fastcc void @add_successor_phi_arg(ptr noundef %3, ptr noundef nonnull %40, ptr noundef %33) #16
  br label %43

43:                                               ; preds = %42, %38
  %44 = load ptr, ptr @m_acc, align 8, !tbaa !200
  %45 = icmp eq ptr %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %43
  call fastcc void @add_successor_phi_arg(ptr noundef %3, ptr noundef nonnull %44, ptr noundef %39) #16
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
define internal fastcc noundef ptr @adjust_return_value_with_ops(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %4) unnamed_addr #0 !prof !292 !PGOFuncName !494 {
  %6 = load ptr, ptr @current_function_decl, align 8, !tbaa !200
  %7 = getelementptr inbounds %struct.tree_decl_non_common, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !224
  %9 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !224
  %11 = tail call ptr @create_tmp_var(ptr noundef %10, ptr noundef %1) #15
  %12 = load i64, ptr %10, align 8
  %13 = trunc i64 %12 to i32
  %14 = and i32 %13, 65535
  %15 = add nsw i32 %14, -13
  %16 = icmp ult i32 %15, 2
  br i1 %16, label %17, label %21

17:                                               ; preds = %5
  %18 = getelementptr inbounds %struct.tree_decl_common, ptr %11, i64 0, i32 2
  %19 = load i64, ptr %18, align 8
  %20 = or i64 %19, 134217728
  store i64 %20, ptr %18, align 8
  br label %21

21:                                               ; preds = %5, %17
  %22 = tail call zeroext i8 @add_referenced_var(ptr noundef %11) #15
  %23 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !224
  %25 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !224
  %27 = tail call zeroext i8 @types_compatible_p(ptr noundef %24, ptr noundef %26) #15
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %21
  %30 = tail call ptr @gimple_build_assign_with_ops_stat(i32 noundef %0, ptr noundef %11, ptr noundef nonnull %2, ptr noundef nonnull %3) #15
  br label %39

31:                                               ; preds = %21
  %32 = load ptr, ptr %23, align 8, !tbaa !224
  %33 = load ptr, ptr %25, align 8, !tbaa !224
  %34 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %33, ptr noundef nonnull %2) #15
  %35 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef %0, ptr noundef %33, ptr noundef %34, ptr noundef nonnull %3) #15
  %36 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %32, ptr noundef %35) #15
  %37 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %4, ptr noundef %36, i8 noundef zeroext 0, ptr noundef null, i8 noundef zeroext 1, i32 noundef 2) #15
  %38 = call ptr @gimple_build_assign_stat(ptr noundef null, ptr noundef %37) #15
  br label %39

39:                                               ; preds = %31, %29
  %40 = phi ptr [ %30, %29 ], [ %38, %31 ]
  %41 = call fastcc ptr @make_ssa_name(ptr noundef %11, ptr noundef %40) #16
  call fastcc void @gimple_assign_set_lhs(ptr noundef %40, ptr noundef %41) #16
  call fastcc void @update_stmt(ptr noundef %40) #16
  call void @gsi_insert_before(ptr noundef nonnull %4, ptr noundef %40, i32 noundef 0) #15
  ret ptr %41
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @update_accumulator_with_ops(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %3) unnamed_addr #0 !prof !292 !PGOFuncName !495 {
  %5 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !224
  %7 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !224
  %9 = tail call zeroext i8 @types_compatible_p(ptr noundef %6, ptr noundef %8) #15
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !224
  %14 = tail call ptr @gimple_build_assign_with_ops_stat(i32 noundef %0, ptr noundef %13, ptr noundef nonnull %1, ptr noundef nonnull %2) #15
  br label %23

15:                                               ; preds = %4
  %16 = load ptr, ptr %5, align 8, !tbaa !224
  %17 = load ptr, ptr %7, align 8, !tbaa !224
  %18 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %17, ptr noundef nonnull %1) #15
  %19 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef %0, ptr noundef %17, ptr noundef %18, ptr noundef nonnull %2) #15
  %20 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %16, ptr noundef %19) #15
  %21 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %3, ptr noundef %20, i8 noundef zeroext 0, ptr noundef null, i8 noundef zeroext 0, i32 noundef 2) #15
  %22 = call ptr @gimple_build_assign_stat(ptr noundef null, ptr noundef %21) #15
  br label %23

23:                                               ; preds = %15, %11
  %24 = phi ptr [ %14, %11 ], [ %22, %15 ]
  %25 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !224
  %27 = call fastcc ptr @make_ssa_name(ptr noundef %26, ptr noundef %24) #16
  call fastcc void @gimple_assign_set_lhs(ptr noundef %24, ptr noundef %27) #16
  call fastcc void @update_stmt(ptr noundef %24) #16
  call void @gsi_insert_after(ptr noundef nonnull %3, ptr noundef %24, i32 noundef 0) #15
  ret ptr %27
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_successor_phi_arg(ptr noundef %0, ptr noundef readnone %1, ptr noundef %2) unnamed_addr #0 !prof !292 !PGOFuncName !496 {
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #17
  %5 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !237
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %6) #15
  %7 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #16, !range !206
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %3, %14
  %10 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #16
  %11 = call fastcc ptr @gimple_phi_result_ptr(ptr noundef %10) #16
  %12 = call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %11) #16
  %13 = icmp eq ptr %12, %1
  br i1 %13, label %18, label %14

14:                                               ; preds = %9
  call fastcc void @gsi_next(ptr noundef nonnull %4) #16
  %15 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #16, !range !206
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %9, label %17, !llvm.loop !497

17:                                               ; preds = %14, %3
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 562, ptr noundef nonnull @.str.5) #15
  br label %18

18:                                               ; preds = %9, %17
  %19 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #16
  call void @add_phi_arg(ptr noundef %19, ptr noundef %2, ptr noundef %0, i32 noundef 0) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #17
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @types_compatible_p(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @gimple_build_assign_with_ops_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @gimple_build_assign_stat(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_assign_set_lhs(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !292 !PGOFuncName !498 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, ptr noundef %1) #16
  %3 = icmp eq ptr %1, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 2
  store ptr %0, ptr %9, align 8, !tbaa !224
  br label %10

10:                                               ; preds = %8, %4, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_stmt(ptr noundef %0) unnamed_addr #0 !prof !292 !PGOFuncName !499 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #16, !range !206
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @gimple_set_modified(ptr noundef %0, i8 noundef zeroext 1) #15
  tail call void @update_stmt_operands(ptr noundef %0) #15
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: optsize
declare void @gsi_insert_before(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_set_op(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !292 !PGOFuncName !500 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #16, !range !206
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #16
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %5, %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 1665, ptr noundef nonnull @.str.5) #15
  br label %9

9:                                                ; preds = %5, %8
  %10 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #16
  store ptr %1, ptr %10, align 8, !tbaa !200
  ret void
}

; Function Attrs: optsize
declare void @gimple_set_modified(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @update_stmt_operands(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @gsi_insert_after(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gimple_seq_last_stmt(ptr noundef readonly %0) unnamed_addr #7 !prof !292 !PGOFuncName !501 {
  %2 = tail call fastcc ptr @gimple_seq_last(ptr noundef %0) #16
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %2, align 8, !tbaa !374
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi ptr [ %5, %4 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_return_set_retval(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !292 !PGOFuncName !502 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, ptr noundef %1) #16
  ret void
}

; Function Attrs: optsize
declare void @mark_sym_for_renaming(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #14

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
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind optsize }
attributes #16 = { optsize }
attributes #17 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!186}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185}
!35 = !{ptr @gate_tail_calls, ptr @dbg_cnt, i64 115}
!36 = !{ptr @execute_tail_recursion, ptr @tree_optimize_tail_calls_1, i64 78}
!37 = !{ptr @execute_tail_calls, ptr @tree_optimize_tail_calls_1, i64 38}
!38 = !{ptr @tree_optimize_tail_calls_1, ptr @single_succ, i64 116}
!39 = !{ptr @tree_optimize_tail_calls_1, ptr @suitable_for_tail_opt_p, i64 116}
!40 = !{ptr @tree_optimize_tail_calls_1, ptr @suitable_for_tail_call_opt_p, i64 38}
!41 = !{ptr @tree_optimize_tail_calls_1, ptr @ei_start_1, i64 117}
!42 = !{ptr @tree_optimize_tail_calls_1, ptr @ei_cond, i64 271}
!43 = !{ptr @tree_optimize_tail_calls_1, ptr @last_stmt, i64 154}
!44 = !{ptr @tree_optimize_tail_calls_1, ptr @gimple_code, i64 138}
!45 = !{ptr @tree_optimize_tail_calls_1, ptr @find_tail_calls, i64 113}
!46 = !{ptr @tree_optimize_tail_calls_1, ptr @ei_next, i64 154}
!47 = !{ptr @tree_optimize_tail_calls_1, ptr @arg_needs_copy_p, i64 7}
!48 = !{ptr @tree_optimize_tail_calls_1, ptr @gimple_default_def, i64 5}
!49 = !{ptr @tree_optimize_tail_calls_1, ptr @make_ssa_name, i64 5}
!50 = !{ptr @tree_optimize_tail_calls_1, ptr @set_default_def, i64 5}
!51 = !{ptr @tree_optimize_tail_calls_1, ptr @create_phi_node, i64 5}
!52 = !{ptr @tree_optimize_tail_calls_1, ptr @single_pred_edge, i64 5}
!53 = !{ptr @tree_optimize_tail_calls_1, ptr @add_phi_arg, i64 5}
!54 = !{ptr @tree_optimize_tail_calls_1, ptr @optimize_tail_call, i64 372}
!55 = !{ptr @tree_optimize_tail_calls_1, ptr @free, i64 372}
!56 = !{ptr @tree_optimize_tail_calls_1, ptr @adjust_return_value, i64 12}
!57 = !{ptr @tree_optimize_tail_calls_1, ptr @free_dominance_info, i64 1}
!58 = !{ptr @tree_optimize_tail_calls_1, ptr @add_virtual_phis, i64 1}
!59 = !{ptr @single_succ, ptr @single_succ_edge, i64 1164}
!60 = !{ptr @suitable_for_tail_opt_p, ptr @first_referenced_var, i64 115}
!61 = !{ptr @suitable_for_tail_opt_p, ptr @end_referenced_vars_p, i64 311788}
!62 = !{ptr @suitable_for_tail_opt_p, ptr @is_global_var, i64 311674}
!63 = !{ptr @suitable_for_tail_opt_p, ptr @is_call_used, i64 311081}
!64 = !{ptr @suitable_for_tail_opt_p, ptr @next_referenced_var, i64 311673}
!65 = !{ptr @ei_cond, ptr @ei_end_p, i64 212153}
!66 = !{ptr @ei_cond, ptr @ei_edge, i64 203657}
!67 = !{ptr @find_tail_calls, ptr @single_succ_p, i64 203658}
!68 = !{ptr @find_tail_calls, ptr @gsi_last_bb, i64 10318}
!69 = !{ptr @find_tail_calls, ptr @gsi_end_p, i64 20009}
!70 = !{ptr @find_tail_calls, ptr @gsi_stmt, i64 10789}
!71 = !{ptr @find_tail_calls, ptr @gimple_code, i64 10789}
!72 = !{ptr @find_tail_calls, ptr @is_gimple_debug, i64 7724}
!73 = !{ptr @find_tail_calls, ptr @is_gimple_call, i64 6538}
!74 = !{ptr @find_tail_calls, ptr @gimple_references_memory_p, i64 4722}
!75 = !{ptr @find_tail_calls, ptr @gimple_has_volatile_ops, i64 4151}
!76 = !{ptr @find_tail_calls, ptr @gsi_prev, i64 4780}
!77 = !{ptr @find_tail_calls, ptr @ei_start_1, i64 7929}
!78 = !{ptr @find_tail_calls, ptr @ei_cond, i64 200530}
!79 = !{ptr @find_tail_calls, ptr @find_tail_calls, i64 192601}
!80 = !{ptr @find_tail_calls, ptr @ei_next, i64 192601}
!81 = !{ptr @find_tail_calls, ptr @gimple_call_lhs, i64 1816}
!82 = !{ptr @find_tail_calls, ptr @is_gimple_reg, i64 1599}
!83 = !{ptr @find_tail_calls, ptr @gimple_call_fndecl, i64 1815}
!84 = !{ptr @find_tail_calls, ptr @gimple_call_num_args, i64 8}
!85 = !{ptr @find_tail_calls, ptr @gimple_call_arg, i64 6}
!86 = !{ptr @find_tail_calls, ptr @is_gimple_reg_type, i64 4}
!87 = !{ptr @find_tail_calls, ptr @useless_type_conversion_p, i64 4}
!88 = !{ptr @find_tail_calls, ptr @gsi_next, i64 3621}
!89 = !{ptr @find_tail_calls, ptr @single_succ_edge, i64 1290}
!90 = !{ptr @find_tail_calls, ptr @propagate_through_phis, i64 1290}
!91 = !{ptr @find_tail_calls, ptr @single_succ, i64 1290}
!92 = !{ptr @find_tail_calls, ptr @gsi_start_bb, i64 1290}
!93 = !{ptr @find_tail_calls, ptr @process_assignment, i64 1182}
!94 = !{ptr @find_tail_calls, ptr @fold_build2_stat_loc, i64 57}
!95 = !{ptr @find_tail_calls, ptr @gimple_return_retval, i64 1289}
!96 = !{ptr @find_tail_calls, ptr @xmalloc, i64 464}
!97 = !{ptr @ei_next, ptr @ei_container, i64 407315}
!98 = !{ptr @ei_next, ptr @VEC_edge_base_length, i64 203658}
!99 = !{ptr @ei_next, ptr @fancy_abort, i64 1}
!100 = !{ptr @single_succ_edge, ptr @single_succ_p, i64 2212}
!101 = !{ptr @single_succ_edge, ptr @fancy_abort, i64 1}
!102 = !{ptr @single_succ_edge, ptr @VEC_edge_base_index, i64 2212}
!103 = !{ptr @optimize_tail_call, ptr @eliminate_tail_call, i64 1}
!104 = !{ptr @optimize_tail_call, ptr @gsi_stmt, i64 125}
!105 = !{ptr @optimize_tail_call, ptr @gimple_call_set_tail, i64 125}
!106 = !{ptr @first_referenced_var, ptr @gimple_referenced_vars, i64 116}
!107 = !{ptr @first_referenced_var, ptr @first_htab_element, i64 116}
!108 = !{ptr @end_referenced_vars_p, ptr @end_htab_p, i64 319883}
!109 = !{ptr @is_call_used, ptr @is_call_clobbered, i64 319160}
!110 = !{ptr @is_call_used, ptr @may_be_aliased, i64 319159}
!111 = !{ptr @is_call_used, ptr @pt_solution_includes, i64 1}
!112 = !{ptr @next_referenced_var, ptr @next_htab_element, i64 319767}
!113 = !{ptr @first_htab_element, ptr @htab_size, i64 116}
!114 = !{ptr @is_call_clobbered, ptr @is_global_var, i64 319160}
!115 = !{ptr @is_call_clobbered, ptr @may_be_aliased, i64 319159}
!116 = !{ptr @is_call_clobbered, ptr @pt_solution_includes, i64 1}
!117 = !{ptr @ei_end_p, ptr @ei_container, i64 424305}
!118 = !{ptr @ei_end_p, ptr @VEC_edge_base_length, i64 212153}
!119 = !{ptr @ei_edge, ptr @ei_container, i64 407315}
!120 = !{ptr @ei_edge, ptr @VEC_edge_base_index, i64 203658}
!121 = !{ptr @ei_container, ptr @fancy_abort, i64 1}
!122 = !{ptr @single_succ_p, ptr @VEC_edge_base_length, i64 205870}
!123 = !{ptr @gsi_last_bb, ptr @bb_seq, i64 10317}
!124 = !{ptr @gsi_last_bb, ptr @gimple_seq_last, i64 10317}
!125 = !{ptr @is_gimple_debug, ptr @gimple_code, i64 6274}
!126 = !{ptr @is_gimple_call, ptr @gimple_code, i64 5311}
!127 = !{ptr @gimple_call_lhs, ptr @gimple_op, i64 1475}
!128 = !{ptr @gimple_references_memory_p, ptr @gimple_has_mem_ops, i64 3836}
!129 = !{ptr @gimple_references_memory_p, ptr @gimple_vuse, i64 3835}
!130 = !{ptr @gimple_has_volatile_ops, ptr @gimple_has_mem_ops, i64 3373}
!131 = !{ptr @gimple_call_fndecl, ptr @gimple_call_fn, i64 1475}
!132 = !{ptr @propagate_through_phis, ptr @gsi_start_phis, i64 1048}
!133 = !{ptr @propagate_through_phis, ptr @gsi_end_p, i64 1256}
!134 = !{ptr @propagate_through_phis, ptr @gsi_stmt, i64 1215}
!135 = !{ptr @propagate_through_phis, ptr @gimple_phi_arg_imm_use_ptr, i64 1215}
!136 = !{ptr @propagate_through_phis, ptr @get_use_from_ptr, i64 1215}
!137 = !{ptr @propagate_through_phis, ptr @gimple_phi_result_ptr, i64 1007}
!138 = !{ptr @propagate_through_phis, ptr @get_def_from_ptr, i64 1007}
!139 = !{ptr @propagate_through_phis, ptr @gsi_next, i64 208}
!140 = !{ptr @gsi_start_bb, ptr @bb_seq, i64 1048}
!141 = !{ptr @gsi_start_bb, ptr @gimple_seq_first, i64 1048}
!142 = !{ptr @process_assignment, ptr @gimple_assign_lhs, i64 963}
!143 = !{ptr @process_assignment, ptr @gimple_assign_rhs_code, i64 963}
!144 = !{ptr @process_assignment, ptr @get_gimple_rhs_class, i64 963}
!145 = !{ptr @process_assignment, ptr @gimple_assign_rhs1, i64 1886}
!146 = !{ptr @process_assignment, ptr @gimple_assign_cast_p, i64 999}
!147 = !{ptr @process_assignment, ptr @vector_type_mode, i64 2}
!148 = !{ptr @process_assignment, ptr @gimple_assign_rhs2, i64 923}
!149 = !{ptr @process_assignment, ptr @independent_of_stmt_p, i64 923}
!150 = !{ptr @gimple_return_retval, ptr @gimple_op, i64 1048}
!151 = !{ptr @gimple_op, ptr @gimple_has_ops, i64 7778}
!152 = !{ptr @gimple_op, ptr @gimple_ops, i64 7777}
!153 = !{ptr @gimple_has_ops, ptr @gimple_code, i64 7778}
!154 = !{ptr @gimple_ops, ptr @gimple_statement_structure, i64 7778}
!155 = !{ptr @gimple_ops, ptr @fancy_abort, i64 1}
!156 = !{ptr @gimple_statement_structure, ptr @gimple_code, i64 7778}
!157 = !{ptr @gimple_statement_structure, ptr @gss_for_code, i64 7778}
!158 = !{ptr @gimple_has_mem_ops, ptr @gimple_code, i64 11045}
!159 = !{ptr @gimple_vuse, ptr @gimple_has_mem_ops, i64 3836}
!160 = !{ptr @gimple_call_fn, ptr @gimple_op, i64 1475}
!161 = !{ptr @gimple_phi_arg_imm_use_ptr, ptr @gimple_phi_arg, i64 1048}
!162 = !{ptr @gimple_phi_arg, ptr @fancy_abort, i64 1}
!163 = !{ptr @gimple_assign_lhs, ptr @gimple_op, i64 963}
!164 = !{ptr @gimple_assign_rhs_code, ptr @gimple_expr_code, i64 1962}
!165 = !{ptr @gimple_assign_rhs_code, ptr @get_gimple_rhs_class, i64 1962}
!166 = !{ptr @gimple_assign_rhs_code, ptr @gimple_assign_rhs1, i64 1}
!167 = !{ptr @gimple_assign_rhs1, ptr @gimple_op, i64 1890}
!168 = !{ptr @gimple_assign_cast_p, ptr @is_gimple_assign, i64 999}
!169 = !{ptr @gimple_assign_cast_p, ptr @gimple_assign_rhs_code, i64 998}
!170 = !{ptr @gimple_assign_rhs2, ptr @gimple_num_ops, i64 927}
!171 = !{ptr @gimple_assign_rhs2, ptr @gimple_op, i64 926}
!172 = !{ptr @independent_of_stmt_p, ptr @is_gimple_min_invariant, i64 927}
!173 = !{ptr @independent_of_stmt_p, ptr @gimple_bb, i64 1384}
!174 = !{ptr @independent_of_stmt_p, ptr @gsi_stmt, i64 1420}
!175 = !{ptr @independent_of_stmt_p, ptr @single_succ, i64 2}
!176 = !{ptr @independent_of_stmt_p, ptr @gsi_end_p, i64 1417}
!177 = !{ptr @independent_of_stmt_p, ptr @gsi_next, i64 958}
!178 = !{ptr @independent_of_stmt_p, ptr @gimple_code, i64 1}
!179 = !{ptr @independent_of_stmt_p, ptr @ei_start_1, i64 1}
!180 = !{ptr @independent_of_stmt_p, ptr @ei_cond, i64 10}
!181 = !{ptr @independent_of_stmt_p, ptr @ei_next, i64 9}
!182 = !{ptr @independent_of_stmt_p, ptr @gimple_phi_arg_imm_use_ptr, i64 1}
!183 = !{ptr @independent_of_stmt_p, ptr @get_use_from_ptr, i64 1}
!184 = !{ptr @gimple_expr_code, ptr @gimple_code, i64 1962}
!185 = !{ptr @is_gimple_assign, ptr @gimple_code, i64 999}
!186 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!187 = !{!"function_entry_count", i64 116}
!188 = !{!"tree-tailcall.c:gate_tail_calls"}
!189 = !{!190, !190, i64 0}
!190 = !{!"int", !191, i64 0}
!191 = !{!"omnipotent char", !192, i64 0}
!192 = !{!"Simple C/C++ TBAA"}
!193 = !{!"branch_weights", i32 1, i32 117}
!194 = !{!"function_entry_count", i64 78}
!195 = !{!"tree-tailcall.c:execute_tail_recursion"}
!196 = !{i32 0, i32 16417}
!197 = !{!"function_entry_count", i64 38}
!198 = !{!"tree-tailcall.c:execute_tail_calls"}
!199 = !{!"tree-tailcall.c:tree_optimize_tail_calls_1"}
!200 = !{!201, !201, i64 0}
!201 = !{!"any pointer", !191, i64 0}
!202 = !{!203, !201, i64 8}
!203 = !{!"function", !201, i64 0, !201, i64 8, !201, i64 16, !201, i64 24, !201, i64 32, !201, i64 40, !201, i64 48, !201, i64 56, !201, i64 64, !201, i64 72, !201, i64 80, !201, i64 88, !201, i64 96, !190, i64 104, !190, i64 108, !190, i64 112, !190, i64 116, !190, i64 120, !190, i64 124, !201, i64 128, !190, i64 136, !190, i64 137, !190, i64 138, !190, i64 138, !190, i64 138, !190, i64 138, !190, i64 138, !190, i64 138, !190, i64 138, !190, i64 139, !190, i64 139, !190, i64 139, !190, i64 139, !190, i64 139, !190, i64 139, !190, i64 139}
!204 = !{!205, !201, i64 0}
!205 = !{!"control_flow_graph", !201, i64 0, !201, i64 8, !201, i64 16, !190, i64 24, !190, i64 28, !190, i64 32, !201, i64 40, !190, i64 48, !191, i64 52, !191, i64 60, !190, i64 68, !190, i64 72}
!206 = !{i8 0, i8 2}
!207 = !{!"branch_weights", i32 79, i32 39}
!208 = !{!205, !201, i64 8}
!209 = !{i64 0, i64 4, !189, i64 8, i64 8, !200}
!210 = !{i64 0, i64 8, !200}
!211 = !{!"branch_weights", i32 1, i32 233}
!212 = !{!213, !201, i64 0}
!213 = !{!"edge_def", !201, i64 0, !201, i64 8, !191, i64 16, !201, i64 24, !201, i64 32, !190, i64 40, !190, i64 44, !190, i64 48, !190, i64 52, !214, i64 56}
!214 = !{!"long", !191, i64 0}
!215 = !{i32 0, i32 256}
!216 = !{!"branch_weights", i32 117, i32 1}
!217 = !{!"branch_weights", i32 233, i32 1}
!218 = distinct !{!218, !219}
!219 = !{!"llvm.loop.mustprogress"}
!220 = !{!221, !191, i64 24}
!221 = !{!"tailcall", !222, i64 0, !191, i64 24, !201, i64 32, !201, i64 40, !201, i64 48}
!222 = !{!"", !201, i64 0, !201, i64 8, !201, i64 16}
!223 = !{!"branch_weights", i32 378, i32 1}
!224 = !{!191, !191, i64 0}
!225 = distinct !{!225, !219}
!226 = !{!221, !201, i64 40}
!227 = !{!221, !201, i64 32}
!228 = !{!"branch_weights", i32 233, i32 523}
!229 = distinct !{!229, !219}
!230 = !{!"branch_weights", i32 0, i32 -2147483648}
!231 = !{!221, !201, i64 48}
!232 = distinct !{!232, !219}
!233 = !{!"branch_weights", i32 235, i32 13689}
!234 = distinct !{!234, !219}
!235 = !{!"function_entry_count", i64 1164}
!236 = !{!"tree-tailcall.c:single_succ"}
!237 = !{!213, !201, i64 8}
!238 = !{!"tree-tailcall.c:suitable_for_tail_opt_p"}
!239 = !{!"branch_weights", i32 319161, i32 608}
!240 = !{!"branch_weights", i32 319161, i32 1}
!241 = !{!"branch_weights", i32 639303, i32 233}
!242 = distinct !{!242, !219}
!243 = !{!"tree-tailcall.c:suitable_for_tail_call_opt_p"}
!244 = !{!"branch_weights", i32 1521, i32 79}
!245 = !{!"branch_weights", i32 1, i32 155}
!246 = !{!"branch_weights", i32 155, i32 1}
!247 = distinct !{!247, !219}
!248 = !{!"branch_weights", i32 39, i32 1}
!249 = !{!"function_entry_count", i64 8495}
!250 = !{!"tree-tailcall.c:ei_start_1"}
!251 = !{!"function_entry_count", i64 212153}
!252 = !{!"tree-tailcall.c:ei_cond"}
!253 = !{!"branch_weights", i32 203659, i32 8496}
!254 = !{!"function_entry_count", i64 71823}
!255 = !{!"tree-tailcall.c:gimple_code"}
!256 = !{!"function_entry_count", i64 203658}
!257 = !{!"tree-tailcall.c:find_tail_calls"}
!258 = !{!"branch_weights", i32 193342, i32 10318}
!259 = !{!"branch_weights", i32 5822, i32 2558}
!260 = !{!"branch_weights", i32 511, i32 5312}
!261 = !{!"branch_weights", i32 5312, i32 1}
!262 = !{!"branch_weights", i32 3837, i32 1476}
!263 = !{!"branch_weights", i32 3374, i32 464}
!264 = !{!"branch_weights", i32 3374, i32 1}
!265 = !{!"branch_weights", i32 0, i32 5822}
!266 = distinct !{!266, !219}
!267 = !{!"branch_weights", i32 1, i32 8379}
!268 = !{!"branch_weights", i32 8379, i32 195164}
!269 = distinct !{!269, !219}
!270 = !{!"branch_weights", i32 180, i32 1297}
!271 = !{!"branch_weights", i32 1, i32 1297}
!272 = !{!"branch_weights", i32 1, i32 1476}
!273 = distinct !{!273, !219}
!274 = !{i64 0, i64 8, !200, i64 8, i64 8, !200, i64 16, i64 8, !200}
!275 = !{!"branch_weights", i32 1894, i32 1049}
!276 = !{!"branch_weights", i32 1049, i32 0}
!277 = distinct !{!277, !219}
!278 = !{!"branch_weights", i32 1939568, i32 1876116, i32 2110588}
!279 = !{!"branch_weights", i32 964, i32 1}
!280 = !{!"branch_weights", i32 428, i32 537}
!281 = !{!"branch_weights", i32 1, i32 537}
!282 = !{!"branch_weights", i32 493, i32 45}
!283 = !{!"branch_weights", i32 537, i32 1}
!284 = !{!"branch_weights", i32 913680, i32 188820}
!285 = !{!"branch_weights", i32 870, i32 1}
!286 = !{!"branch_weights", i32 429781, i32 328860}
!287 = !{!"tree-tailcall.c:ei_next"}
!288 = !{!"branch_weights", i32 1, i32 203659}
!289 = !{!"branch_weights", i32 203659, i32 1}
!290 = !{!291, !190, i64 0}
!291 = !{!"", !190, i64 0, !201, i64 8}
!292 = !{!"function_entry_count", i64 0}
!293 = !{!"tree-tailcall.c:single_pred_p"}
!294 = !{!295, !201, i64 0}
!295 = !{!"basic_block_def", !201, i64 0, !201, i64 8, !201, i64 16, !201, i64 24, !191, i64 32, !201, i64 48, !201, i64 56, !191, i64 64, !214, i64 72, !190, i64 80, !190, i64 84, !190, i64 88, !190, i64 92, !190, i64 96}
!296 = !{!"tree-tailcall.c:gimple_seq_empty_p"}
!297 = !{!298, !201, i64 0}
!298 = !{!"gimple_seq_d", !201, i64 0, !201, i64 8, !201, i64 16}
!299 = !{!"tree-tailcall.c:phi_nodes"}
!300 = !{!295, !190, i64 96}
!301 = !{!302, !201, i64 8}
!302 = !{!"gimple_bb_info", !201, i64 0, !201, i64 8}
!303 = !{!"function_entry_count", i64 2212}
!304 = !{!"tree-tailcall.c:single_succ_edge"}
!305 = !{!"branch_weights", i32 1, i32 2213}
!306 = !{!295, !201, i64 8}
!307 = !{!"tree-tailcall.c:arg_needs_copy_p"}
!308 = !{!"tree-tailcall.c:make_ssa_name"}
!309 = !{!"tree-tailcall.c:single_pred_edge"}
!310 = !{!"tree-tailcall.c:create_tailcall_accumulator"}
!311 = !{!"function_entry_count", i64 377}
!312 = !{!"tree-tailcall.c:optimize_tail_call"}
!313 = !{!"branch_weights", i32 253, i32 126}
!314 = !{!"branch_weights", i32 126, i32 1}
!315 = !{!295, !190, i64 80}
!316 = !{!"tree-tailcall.c:adjust_return_value"}
!317 = !{!"tree-tailcall.c:add_virtual_phis"}
!318 = distinct !{!318, !219}
!319 = !{!"tree-tailcall.c:first_referenced_var"}
!320 = !{!"function_entry_count", i64 319883}
!321 = !{!"tree-tailcall.c:end_referenced_vars_p"}
!322 = !{!"function_entry_count", i64 638927}
!323 = !{!"tree-tailcall.c:is_global_var"}
!324 = !{!"branch_weights", i32 638696, i32 233}
!325 = !{!"function_entry_count", i64 319160}
!326 = !{!"tree-tailcall.c:is_call_used"}
!327 = !{!203, !201, i64 24}
!328 = !{!"function_entry_count", i64 319767}
!329 = !{!"tree-tailcall.c:next_referenced_var"}
!330 = !{!"tree-tailcall.c:first_htab_element"}
!331 = !{!222, !201, i64 0}
!332 = !{!333, !201, i64 24}
!333 = !{!"htab", !201, i64 0, !201, i64 8, !201, i64 16, !201, i64 24, !214, i64 32, !214, i64 40, !214, i64 48, !190, i64 56, !190, i64 60, !201, i64 64, !201, i64 72, !201, i64 80, !201, i64 88, !201, i64 96, !190, i64 104}
!334 = !{!222, !201, i64 8}
!335 = !{!222, !201, i64 16}
!336 = !{!"branch_weights", i32 172, i32 1}
!337 = distinct !{!337, !219}
!338 = !{!"tree-tailcall.c:gimple_referenced_vars"}
!339 = !{!340, !201, i64 0}
!340 = !{!"gimple_df", !201, i64 0, !201, i64 8, !201, i64 16, !201, i64 24, !341, i64 32, !341, i64 48, !201, i64 64, !201, i64 72, !201, i64 80, !201, i64 88, !190, i64 96, !342, i64 104}
!341 = !{!"pt_solution", !190, i64 0, !190, i64 0, !190, i64 0, !190, i64 0, !190, i64 0, !190, i64 0, !201, i64 8}
!342 = !{!"ssa_operands", !201, i64 0, !190, i64 8, !190, i64 12, !191, i64 16, !201, i64 24, !201, i64 32}
!343 = !{!"tree-tailcall.c:end_htab_p"}
!344 = !{!"tree-tailcall.c:is_call_clobbered"}
!345 = !{!"function_entry_count", i64 638320}
!346 = !{!"tree-tailcall.c:may_be_aliased"}
!347 = !{!"branch_weights", i32 1, i32 638321}
!348 = !{!"branch_weights", i32 -1111735273, i32 9973}
!349 = !{!"branch_weights", i32 638321, i32 1}
!350 = !{!"branch_weights", i32 -1193046596, i32 1193046596}
!351 = !{!"branch_weights", i32 954437052, i32 1193046596}
!352 = !{!"tree-tailcall.c:next_htab_element"}
!353 = !{!"branch_weights", i32 710876, i32 117}
!354 = !{!"tree-tailcall.c:ei_end_p"}
!355 = !{!"branch_weights", i32 1, i32 212154}
!356 = !{!"tree-tailcall.c:ei_edge"}
!357 = !{!"function_entry_count", i64 621681}
!358 = !{!"tree-tailcall.c:VEC_edge_base_length"}
!359 = !{!"branch_weights", i32 1, i32 621682}
!360 = !{!361, !190, i64 0}
!361 = !{!"VEC_edge_base", !190, i64 0, !190, i64 4, !191, i64 8}
!362 = !{!"function_entry_count", i64 1238938}
!363 = !{!"tree-tailcall.c:ei_container"}
!364 = !{!"branch_weights", i32 1, i32 1238939}
!365 = !{!"function_entry_count", i64 205870}
!366 = !{!"tree-tailcall.c:VEC_edge_base_index"}
!367 = !{!"tree-tailcall.c:single_succ_p"}
!368 = !{!"function_entry_count", i64 10317}
!369 = !{!"tree-tailcall.c:gsi_last_bb"}
!370 = !{!"function_entry_count", i64 31163}
!371 = !{!"tree-tailcall.c:gsi_end_p"}
!372 = !{!"function_entry_count", i64 11366}
!373 = !{!"tree-tailcall.c:gsi_stmt"}
!374 = !{!375, !201, i64 0}
!375 = !{!"gimple_seq_node_d", !201, i64 0, !201, i64 8, !201, i64 16}
!376 = !{!"function_entry_count", i64 6274}
!377 = !{!"tree-tailcall.c:is_gimple_debug"}
!378 = !{!"function_entry_count", i64 5311}
!379 = !{!"tree-tailcall.c:is_gimple_call"}
!380 = !{!"function_entry_count", i64 1475}
!381 = !{!"tree-tailcall.c:gimple_call_lhs"}
!382 = !{!"function_entry_count", i64 3836}
!383 = !{!"tree-tailcall.c:gimple_references_memory_p"}
!384 = !{!"branch_weights", i32 1, i32 3837}
!385 = !{!"function_entry_count", i64 3373}
!386 = !{!"tree-tailcall.c:gimple_has_volatile_ops"}
!387 = !{!"branch_weights", i32 1, i32 3374}
!388 = !{!"function_entry_count", i64 3883}
!389 = !{!"tree-tailcall.c:gsi_prev"}
!390 = !{!375, !201, i64 8}
!391 = !{!"tree-tailcall.c:gimple_call_fndecl"}
!392 = !{!"branch_weights", i32 1476, i32 1}
!393 = !{!"tree-tailcall.c:gimple_call_num_args"}
!394 = !{!"tree-tailcall.c:gimple_call_arg"}
!395 = !{!"function_entry_count", i64 4089}
!396 = !{!"tree-tailcall.c:gsi_next"}
!397 = !{!375, !201, i64 16}
!398 = !{!"function_entry_count", i64 1048}
!399 = !{!"tree-tailcall.c:propagate_through_phis"}
!400 = !{!"branch_weights", i32 179, i32 1}
!401 = !{!213, !190, i64 44}
!402 = !{!"branch_weights", i32 870, i32 180}
!403 = !{!"branch_weights", i32 870, i32 179}
!404 = distinct !{!404, !219}
!405 = !{!"tree-tailcall.c:gsi_start_bb"}
!406 = !{!"function_entry_count", i64 963}
!407 = !{!"tree-tailcall.c:process_assignment"}
!408 = !{i32 0, i32 65536}
!409 = !{!"branch_weights", i32 1, i32 964}
!410 = !{!"branch_weights", i32 928, i32 37}
!411 = !{!"branch_weights", i32 37, i32 1}
!412 = !{!"branch_weights", i32 1, i32 37}
!413 = !{!"branch_weights", i32 928, i32 1}
!414 = !{!"branch_weights", i32 799178752, i32 863041, i32 862112, i32 861184}
!415 = !{!"branch_weights", i32 466, i32 463}
!416 = !{!"branch_weights", i32 1, i32 466}
!417 = !{!"branch_weights", i32 463, i32 1}
!418 = !{!"branch_weights", i32 1, i32 463}
!419 = !{!"branch_weights", i32 392, i32 537, i32 1}
!420 = !{!"tree-tailcall.c:gimple_return_retval"}
!421 = !{!"function_entry_count", i64 11365}
!422 = !{!"tree-tailcall.c:bb_seq"}
!423 = !{!"branch_weights", i32 11366, i32 1}
!424 = !{!"branch_weights", i32 1, i32 11366}
!425 = !{!302, !201, i64 0}
!426 = !{!"tree-tailcall.c:gimple_seq_last"}
!427 = !{!"branch_weights", i32 1, i32 10318}
!428 = !{!298, !201, i64 8}
!429 = !{!"function_entry_count", i64 7778}
!430 = !{!"tree-tailcall.c:gimple_op"}
!431 = !{!"branch_weights", i32 1, i32 7779}
!432 = !{!"tree-tailcall.c:gimple_has_ops"}
!433 = !{!"tree-tailcall.c:gimple_ops"}
!434 = !{!214, !214, i64 0}
!435 = !{!"tree-tailcall.c:gimple_statement_structure"}
!436 = !{!"tree-tailcall.c:gss_for_code"}
!437 = !{!"function_entry_count", i64 11045}
!438 = !{!"tree-tailcall.c:gimple_has_mem_ops"}
!439 = !{!"tree-tailcall.c:gimple_vuse"}
!440 = !{!"tree-tailcall.c:gimple_call_fn"}
!441 = !{!"function_entry_count", i64 927}
!442 = !{!"tree-tailcall.c:gimple_num_ops"}
!443 = !{!"tree-tailcall.c:get_use_from_ptr"}
!444 = !{!445, !201, i64 24}
!445 = !{!"ssa_use_operand_d", !201, i64 0, !201, i64 8, !191, i64 16, !201, i64 24}
!446 = !{!"tree-tailcall.c:gimple_phi_arg_imm_use_ptr"}
!447 = !{!"function_entry_count", i64 869}
!448 = !{!"tree-tailcall.c:get_def_from_ptr"}
!449 = !{!"tree-tailcall.c:gimple_phi_result_ptr"}
!450 = !{!"tree-tailcall.c:gimple_phi_arg"}
!451 = !{!"branch_weights", i32 1, i32 1049}
!452 = !{!"tree-tailcall.c:gimple_seq_first"}
!453 = !{!"tree-tailcall.c:gimple_assign_lhs"}
!454 = !{!"function_entry_count", i64 1962}
!455 = !{!"tree-tailcall.c:gimple_assign_rhs_code"}
!456 = !{!"branch_weights", i32 1, i32 1963}
!457 = !{!"function_entry_count", i64 2925}
!458 = !{!"tree-tailcall.c:get_gimple_rhs_class"}
!459 = !{!"function_entry_count", i64 1890}
!460 = !{!"tree-tailcall.c:gimple_assign_rhs1"}
!461 = !{!"function_entry_count", i64 999}
!462 = !{!"tree-tailcall.c:gimple_assign_cast_p"}
!463 = !{!"branch_weights", i32 1, i32 1000}
!464 = !{!"tree-tailcall.c:gimple_assign_rhs2"}
!465 = !{!"tree-tailcall.c:independent_of_stmt_p"}
!466 = !{!"branch_weights", i32 463, i32 466}
!467 = !{!"branch_weights", i32 462, i32 1}
!468 = !{!295, !201, i64 16}
!469 = !{!"branch_weights", i32 1, i32 0}
!470 = distinct !{!470, !219}
!471 = !{!"branch_weights", i32 1, i32 969}
!472 = !{!"branch_weights", i32 507, i32 462}
!473 = distinct !{!473, !219}
!474 = distinct !{!474, !219}
!475 = distinct !{!475, !219}
!476 = !{!"tree-tailcall.c:gimple_expr_code"}
!477 = !{!"branch_weights", i32 1, i32 7852, i32 2, i32 1}
!478 = !{!"tree-tailcall.c:is_gimple_assign"}
!479 = !{!"function_entry_count", i64 1386}
!480 = !{!"tree-tailcall.c:gimple_bb"}
!481 = !{!"tree-tailcall.c:var_ann"}
!482 = !{!"tree-tailcall.c:eliminate_tail_call"}
!483 = !{!213, !214, i64 56}
!484 = !{!295, !190, i64 88}
!485 = !{!213, !190, i64 52}
!486 = distinct !{!486, !219}
!487 = !{!"function_entry_count", i64 125}
!488 = !{!"tree-tailcall.c:gimple_call_set_tail"}
!489 = !{!"tree-tailcall.c:gsi_bb"}
!490 = !{!"tree-tailcall.c:decrease_profile"}
!491 = !{!295, !214, i64 72}
!492 = !{!"tree-tailcall.c:gimple_location"}
!493 = !{!"tree-tailcall.c:adjust_accumulator_values"}
!494 = !{!"tree-tailcall.c:adjust_return_value_with_ops"}
!495 = !{!"tree-tailcall.c:update_accumulator_with_ops"}
!496 = !{!"tree-tailcall.c:add_successor_phi_arg"}
!497 = distinct !{!497, !219}
!498 = !{!"tree-tailcall.c:gimple_assign_set_lhs"}
!499 = !{!"tree-tailcall.c:update_stmt"}
!500 = !{!"tree-tailcall.c:gimple_set_op"}
!501 = !{!"tree-tailcall.c:gimple_seq_last_stmt"}
!502 = !{!"tree-tailcall.c:gimple_return_set_retval"}

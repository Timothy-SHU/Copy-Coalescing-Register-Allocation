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
define internal zeroext i8 @gate_tail_calls() #0 {
  %1 = load i32, ptr @flag_optimize_sibling_calls, align 4, !tbaa !5
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %7, label %3

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
define internal i32 @execute_tail_recursion() #0 {
  %1 = tail call fastcc i32 @tree_optimize_tail_calls_1(i8 noundef zeroext 0) #16, !range !9
  ret i32 %1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @execute_tail_calls() #0 {
  %1 = tail call fastcc i32 @tree_optimize_tail_calls_1(i8 noundef zeroext 1) #16, !range !9
  ret i32 %1
}

; Function Attrs: optsize
declare zeroext i8 @dbg_cnt(i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @tree_optimize_tail_calls_1(i8 noundef zeroext %0) unnamed_addr #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #17
  store ptr null, ptr %3, align 8, !tbaa !10
  %5 = load ptr, ptr @cfun, align 8, !tbaa !10
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !12
  %8 = load ptr, ptr %7, align 8, !tbaa !14
  %9 = tail call fastcc ptr @single_succ(ptr noundef %8) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #17
  %10 = tail call fastcc zeroext i8 @suitable_for_tail_opt_p() #16, !range !16
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %183, label %12

12:                                               ; preds = %1
  %13 = icmp eq i8 %0, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %12
  %15 = tail call fastcc zeroext i8 @suitable_for_tail_call_opt_p() #16, !range !16
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi i8 [ %15, %14 ], [ 0, %12 ]
  %18 = load ptr, ptr @cfun, align 8, !tbaa !10
  %19 = getelementptr inbounds %struct.function, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !12
  %21 = getelementptr inbounds %struct.control_flow_graph, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !17
  %23 = tail call fastcc ptr @ei_start_1(ptr noundef %22) #16
  store i32 0, ptr %4, align 8, !tbaa.struct !18
  %24 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %23, ptr %24, align 8, !tbaa.struct !19
  %25 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %23, ptr noundef nonnull %2) #16, !range !16
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %42, label %27

27:                                               ; preds = %16, %37
  %28 = load ptr, ptr %2, align 8, !tbaa !10
  %29 = load ptr, ptr %28, align 8, !tbaa !20
  %30 = tail call ptr @last_stmt(ptr noundef %29) #15
  %31 = icmp eq ptr %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = tail call fastcc i32 @gimple_code(ptr noundef nonnull %30) #16, !range !23
  %34 = icmp eq i32 %33, 9
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = load ptr, ptr %28, align 8, !tbaa !20
  call fastcc void @find_tail_calls(ptr noundef %36, ptr noundef nonnull %3) #16
  br label %37

37:                                               ; preds = %27, %32, %35
  call fastcc void @ei_next(ptr noundef nonnull %4) #16
  %38 = load i32, ptr %4, align 8
  %39 = load ptr, ptr %24, align 8
  %40 = call fastcc zeroext i8 @ei_cond(i32 %38, ptr %39, ptr noundef nonnull %2) #16, !range !16
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %27, !llvm.loop !24

42:                                               ; preds = %37, %16
  store ptr null, ptr @m_acc, align 8, !tbaa !10
  store ptr null, ptr @a_acc, align 8, !tbaa !10
  %43 = load ptr, ptr %3, align 8, !tbaa !10
  %44 = icmp eq ptr %43, null
  br i1 %44, label %143, label %45

45:                                               ; preds = %42, %123
  %46 = phi ptr [ %124, %123 ], [ null, %42 ]
  %47 = phi ptr [ %128, %123 ], [ %43, %42 ]
  %48 = phi i8 [ %126, %123 ], [ 0, %42 ]
  %49 = phi ptr [ %125, %123 ], [ %9, %42 ]
  %50 = getelementptr inbounds %struct.tailcall, ptr %47, i64 0, i32 1
  %51 = load i8, ptr %50, align 8, !tbaa !26
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %123, label %53

53:                                               ; preds = %45
  %54 = icmp eq i8 %48, 0
  br i1 %54, label %55, label %102

55:                                               ; preds = %53
  %56 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %49) #16, !range !16
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %55
  %59 = tail call fastcc ptr @phi_nodes(ptr noundef %49) #16
  %60 = tail call fastcc zeroext i8 @gimple_seq_empty_p(ptr noundef %59) #16, !range !16
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %58, %55
  %63 = load ptr, ptr @cfun, align 8, !tbaa !10
  %64 = getelementptr inbounds %struct.function, ptr %63, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !12
  %66 = load ptr, ptr %65, align 8, !tbaa !14
  %67 = tail call fastcc ptr @single_succ_edge(ptr noundef %66) #16
  %68 = tail call ptr @split_edge(ptr noundef %67) #15
  br label %69

69:                                               ; preds = %62, %58
  %70 = phi ptr [ %49, %58 ], [ %68, %62 ]
  %71 = load ptr, ptr @current_function_decl, align 8, !tbaa !10
  %72 = getelementptr inbounds %struct.tree_decl_non_common, ptr %71, i64 0, i32 2
  %73 = load ptr, ptr %72, align 8, !tbaa !29
  %74 = icmp eq ptr %73, null
  br i1 %74, label %102, label %75

75:                                               ; preds = %69, %98
  %76 = phi ptr [ %100, %98 ], [ %73, %69 ]
  %77 = tail call fastcc zeroext i8 @arg_needs_copy_p(ptr noundef nonnull %76) #16, !range !16
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %98, label %79

79:                                               ; preds = %75
  %80 = load ptr, ptr @cfun, align 8, !tbaa !10
  %81 = tail call ptr @gimple_default_def(ptr noundef %80, ptr noundef nonnull %76) #15
  %82 = getelementptr inbounds %struct.tree_ssa_name, ptr %81, i64 0, i32 2
  %83 = load ptr, ptr %82, align 8, !tbaa !29
  %84 = tail call fastcc ptr @make_ssa_name(ptr noundef nonnull %76, ptr noundef %83) #16
  tail call void @set_default_def(ptr noundef nonnull %76, ptr noundef %84) #15
  %85 = tail call ptr @create_phi_node(ptr noundef %81, ptr noundef %70) #15
  store ptr %85, ptr %82, align 8, !tbaa !29
  %86 = tail call fastcc ptr @single_pred_edge(ptr noundef %70) #16
  %87 = load i64, ptr %76, align 8
  %88 = and i64 %87, 65535
  %89 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %88
  %90 = load i32, ptr %89, align 4, !tbaa !5
  %91 = add i32 %90, -4
  %92 = icmp ult i32 %91, 7
  br i1 %92, label %93, label %96

93:                                               ; preds = %79
  %94 = getelementptr inbounds %struct.tree_exp, ptr %76, i64 0, i32 1
  %95 = load i32, ptr %94, align 8, !tbaa !29
  br label %96

96:                                               ; preds = %79, %93
  %97 = phi i32 [ %95, %93 ], [ 0, %79 ]
  tail call void @add_phi_arg(ptr noundef %85, ptr noundef %84, ptr noundef %86, i32 noundef %97) #15
  br label %98

98:                                               ; preds = %75, %96
  %99 = getelementptr inbounds %struct.tree_common, ptr %76, i64 0, i32 1
  %100 = load ptr, ptr %99, align 8, !tbaa !29
  %101 = icmp eq ptr %100, null
  br i1 %101, label %102, label %75, !llvm.loop !30

102:                                              ; preds = %98, %69, %53
  %103 = phi ptr [ %49, %53 ], [ %70, %69 ], [ %70, %98 ]
  %104 = getelementptr inbounds %struct.tailcall, ptr %47, i64 0, i32 3
  %105 = load ptr, ptr %104, align 8, !tbaa !31
  %106 = icmp eq ptr %105, null
  %107 = load ptr, ptr @a_acc, align 8
  %108 = icmp ne ptr %107, null
  %109 = select i1 %106, i1 true, i1 %108
  br i1 %109, label %113, label %110

110:                                              ; preds = %102
  %111 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !10
  %112 = tail call fastcc ptr @create_tailcall_accumulator(ptr noundef nonnull @.str.2, ptr noundef %103, ptr noundef %111) #16
  store ptr %112, ptr @a_acc, align 8, !tbaa !10
  br label %113

113:                                              ; preds = %110, %102
  %114 = getelementptr inbounds %struct.tailcall, ptr %47, i64 0, i32 2
  %115 = load ptr, ptr %114, align 8, !tbaa !32
  %116 = icmp eq ptr %115, null
  %117 = load ptr, ptr @m_acc, align 8
  %118 = icmp ne ptr %117, null
  %119 = select i1 %116, i1 true, i1 %118
  br i1 %119, label %123, label %120

120:                                              ; preds = %113
  %121 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 14), align 16, !tbaa !10
  %122 = tail call fastcc ptr @create_tailcall_accumulator(ptr noundef nonnull @.str.3, ptr noundef %103, ptr noundef %121) #16
  store ptr %122, ptr @m_acc, align 8, !tbaa !10
  br label %123

123:                                              ; preds = %113, %120, %45
  %124 = phi ptr [ %117, %113 ], [ %122, %120 ], [ %46, %45 ]
  %125 = phi ptr [ %103, %113 ], [ %103, %120 ], [ %49, %45 ]
  %126 = phi i8 [ 1, %113 ], [ 1, %120 ], [ %48, %45 ]
  %127 = getelementptr inbounds %struct.tailcall, ptr %47, i64 0, i32 4
  %128 = load ptr, ptr %127, align 8, !tbaa !10
  %129 = icmp eq ptr %128, null
  br i1 %129, label %130, label %45, !llvm.loop !33

130:                                              ; preds = %123
  %131 = icmp eq i8 %126, 0
  br i1 %44, label %143, label %132

132:                                              ; preds = %130, %132
  %133 = phi i8 [ %138, %132 ], [ 0, %130 ]
  %134 = phi ptr [ %136, %132 ], [ %43, %130 ]
  %135 = getelementptr inbounds %struct.tailcall, ptr %134, i64 0, i32 4
  %136 = load ptr, ptr %135, align 8, !tbaa !34
  %137 = tail call fastcc zeroext i8 @optimize_tail_call(ptr noundef nonnull %134, i8 noundef zeroext %17) #16, !range !16
  %138 = or i8 %137, %133
  tail call void @free(ptr noundef nonnull %134) #16
  %139 = icmp eq ptr %136, null
  br i1 %139, label %140, label %132, !llvm.loop !35

140:                                              ; preds = %132
  %141 = load ptr, ptr @m_acc, align 8
  %142 = icmp eq i8 %138, 0
  br label %143

143:                                              ; preds = %42, %140, %130
  %144 = phi i1 [ %131, %130 ], [ %131, %140 ], [ true, %42 ]
  %145 = phi ptr [ %124, %130 ], [ %141, %140 ], [ null, %42 ]
  %146 = phi i1 [ true, %130 ], [ %142, %140 ], [ true, %42 ]
  store ptr null, ptr %3, align 8, !tbaa !10
  %147 = load ptr, ptr @a_acc, align 8, !tbaa !10
  %148 = icmp ne ptr %147, null
  %149 = icmp ne ptr %145, null
  %150 = select i1 %148, i1 true, i1 %149
  br i1 %150, label %151, label %177

151:                                              ; preds = %143
  %152 = load ptr, ptr @cfun, align 8, !tbaa !10
  %153 = getelementptr inbounds %struct.function, ptr %152, i64 0, i32 1
  %154 = load ptr, ptr %153, align 8, !tbaa !12
  %155 = getelementptr inbounds %struct.control_flow_graph, ptr %154, i64 0, i32 1
  %156 = load ptr, ptr %155, align 8, !tbaa !17
  %157 = tail call fastcc ptr @ei_start_1(ptr noundef %156) #16
  store i32 0, ptr %4, align 8, !tbaa.struct !18
  store ptr %157, ptr %24, align 8, !tbaa.struct !19
  %158 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %157, ptr noundef nonnull %2) #16, !range !16
  %159 = icmp eq i8 %158, 0
  br i1 %159, label %177, label %160

160:                                              ; preds = %151, %172
  %161 = load ptr, ptr %2, align 8, !tbaa !10
  %162 = load ptr, ptr %161, align 8, !tbaa !20
  %163 = tail call ptr @last_stmt(ptr noundef %162) #15
  %164 = icmp eq ptr %163, null
  br i1 %164, label %172, label %165

165:                                              ; preds = %160
  %166 = tail call fastcc i32 @gimple_code(ptr noundef nonnull %163) #16, !range !23
  %167 = icmp eq i32 %166, 9
  br i1 %167, label %168, label %172

168:                                              ; preds = %165
  %169 = load ptr, ptr %161, align 8, !tbaa !20
  %170 = load ptr, ptr @m_acc, align 8, !tbaa !10
  %171 = load ptr, ptr @a_acc, align 8, !tbaa !10
  tail call fastcc void @adjust_return_value(ptr noundef %169, ptr noundef %170, ptr noundef %171) #16
  br label %172

172:                                              ; preds = %160, %165, %168
  call fastcc void @ei_next(ptr noundef nonnull %4) #16
  %173 = load i32, ptr %4, align 8
  %174 = load ptr, ptr %24, align 8
  %175 = call fastcc zeroext i8 @ei_cond(i32 %173, ptr %174, ptr noundef nonnull %2) #16, !range !16
  %176 = icmp eq i8 %175, 0
  br i1 %176, label %177, label %160, !llvm.loop !36

177:                                              ; preds = %172, %151, %143
  br i1 %146, label %179, label %178

178:                                              ; preds = %177
  tail call void @free_dominance_info(i32 noundef 1) #15
  br label %179

179:                                              ; preds = %178, %177
  br i1 %144, label %181, label %180

180:                                              ; preds = %179
  tail call fastcc void @add_virtual_phis() #16
  br label %181

181:                                              ; preds = %180, %179
  %182 = select i1 %146, i32 0, i32 16416
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
define internal fastcc ptr @single_succ(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @single_succ_edge(ptr noundef %0) #16
  %3 = getelementptr inbounds %struct.edge_def, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !37
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @suitable_for_tail_opt_p() unnamed_addr #0 {
  %1 = alloca %struct.referenced_var_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #17
  %2 = load ptr, ptr @cfun, align 8, !tbaa !10
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 20
  %4 = load i32, ptr %3, align 8
  %5 = and i32 %4, 4194304
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %22

7:                                                ; preds = %0
  %8 = call fastcc ptr @first_referenced_var(ptr noundef nonnull %1) #16
  %9 = call fastcc zeroext i8 @end_referenced_vars_p(ptr noundef nonnull %1) #16, !range !16
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %7, %18
  %12 = phi ptr [ %19, %18 ], [ %8, %7 ]
  %13 = tail call fastcc zeroext i8 @is_global_var(ptr noundef %12) #16, !range !16
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = tail call fastcc zeroext i8 @is_call_used(ptr noundef %12) #16, !range !16
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %11, %15
  %19 = call fastcc ptr @next_referenced_var(ptr noundef nonnull %1) #16
  %20 = call fastcc zeroext i8 @end_referenced_vars_p(ptr noundef nonnull %1) #16, !range !16
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %11, label %22, !llvm.loop !38

22:                                               ; preds = %15, %18, %7, %0
  %23 = phi i8 [ 0, %0 ], [ 1, %7 ], [ 0, %15 ], [ 1, %18 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #17
  ret i8 %23
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @suitable_for_tail_call_opt_p() unnamed_addr #3 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !10
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 20
  %3 = load i32, ptr %2, align 8
  %4 = and i32 %3, 786432
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %20

6:                                                ; preds = %0
  %7 = load ptr, ptr @current_function_decl, align 8, !tbaa !10
  %8 = getelementptr inbounds %struct.tree_decl_non_common, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !29
  %10 = icmp eq ptr %9, null
  br i1 %10, label %20, label %15

11:                                               ; preds = %15
  %12 = getelementptr inbounds %struct.tree_common, ptr %16, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !29
  %14 = icmp eq ptr %13, null
  br i1 %14, label %20, label %15, !llvm.loop !39

15:                                               ; preds = %6, %11
  %16 = phi ptr [ %13, %11 ], [ %9, %6 ]
  %17 = load i64, ptr %16, align 8
  %18 = and i64 %17, 262144
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %11, label %20

20:                                               ; preds = %15, %11, %6, %0
  %21 = phi i8 [ 0, %0 ], [ 1, %6 ], [ 0, %15 ], [ 1, %11 ]
  ret i8 %21
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #4 {
  ret ptr %0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #16, !range !16
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #16
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !10
  ret i8 %10
}

; Function Attrs: optsize
declare ptr @last_stmt(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @find_tail_calls(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %struct.edge_iterator, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #17
  store ptr null, ptr %3, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #17
  %10 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %0) #16, !range !16
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %178, label %12

12:                                               ; preds = %2
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %0) #16
  %13 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #16, !range !16
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %34

15:                                               ; preds = %12, %31
  %16 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #16
  %17 = tail call fastcc i32 @gimple_code(ptr noundef %16) #16, !range !23
  %18 = icmp eq i32 %17, 4
  br i1 %18, label %31, label %19

19:                                               ; preds = %15
  %20 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %16) #16, !range !16
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %19
  %23 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %16) #16, !range !16
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %47

25:                                               ; preds = %22
  %26 = tail call fastcc zeroext i8 @gimple_references_memory_p(ptr noundef %16) #16, !range !16
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %178

28:                                               ; preds = %25
  %29 = tail call fastcc zeroext i8 @gimple_has_volatile_ops(ptr noundef %16) #16, !range !16
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %178

31:                                               ; preds = %28, %15, %19
  call fastcc void @gsi_prev(ptr noundef nonnull %4) #16
  %32 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #16, !range !16
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %15, label %34, !llvm.loop !40

34:                                               ; preds = %31, %12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #17
  %35 = tail call fastcc ptr @ei_start_1(ptr noundef %0) #16
  store i32 0, ptr %7, align 8, !tbaa.struct !18
  %36 = getelementptr inbounds i8, ptr %7, i64 8
  store ptr %35, ptr %36, align 8, !tbaa.struct !19
  %37 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %35, ptr noundef nonnull %6) #16, !range !16
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %34, %39
  %40 = load ptr, ptr %6, align 8, !tbaa !10
  %41 = load ptr, ptr %40, align 8, !tbaa !20
  tail call fastcc void @find_tail_calls(ptr noundef %41, ptr noundef %1) #16
  call fastcc void @ei_next(ptr noundef nonnull %7) #16
  %42 = load i32, ptr %7, align 8
  %43 = load ptr, ptr %36, align 8
  %44 = call fastcc zeroext i8 @ei_cond(i32 %42, ptr %43, ptr noundef nonnull %6) #16, !range !16
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %39, !llvm.loop !41

46:                                               ; preds = %39, %34
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #17
  br label %178

47:                                               ; preds = %22
  %48 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %16) #16
  store ptr %48, ptr %3, align 8, !tbaa !10
  %49 = icmp eq ptr %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %47
  %51 = tail call zeroext i8 @is_gimple_reg(ptr noundef nonnull %48) #15
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %178, label %53

53:                                               ; preds = %50, %47
  %54 = tail call fastcc ptr @gimple_call_fndecl(ptr noundef %16) #16
  %55 = load ptr, ptr @current_function_decl, align 8, !tbaa !10
  %56 = icmp eq ptr %54, %55
  br i1 %56, label %57, label %98

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.tree_decl_non_common, ptr %54, i64 0, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !29
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
  %73 = load ptr, ptr %72, align 8, !tbaa !29
  %74 = tail call zeroext i8 @is_gimple_reg_type(ptr noundef %73) #15
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %90, label %76

76:                                               ; preds = %71
  %77 = load ptr, ptr %72, align 8, !tbaa !29
  %78 = getelementptr inbounds %struct.tree_common, ptr %69, i64 0, i32 2
  %79 = load ptr, ptr %78, align 8, !tbaa !29
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
  %88 = load ptr, ptr %86, align 8, !tbaa !29
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %61, !llvm.loop !42

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
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !43
  br label %100

100:                                              ; preds = %156, %98
  %101 = phi ptr [ %48, %98 ], [ %159, %156 ]
  %102 = phi ptr [ null, %98 ], [ %157, %156 ]
  %103 = phi ptr [ null, %98 ], [ %158, %156 ]
  %104 = phi ptr [ %0, %98 ], [ %117, %156 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #17
  store ptr null, ptr %8, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #17
  store ptr null, ptr %9, align 8, !tbaa !10
  call fastcc void @gsi_next(ptr noundef nonnull %5) #16
  %105 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #16, !range !16
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %115, label %107

107:                                              ; preds = %100, %107
  %108 = phi ptr [ %112, %107 ], [ %104, %100 ]
  %109 = phi ptr [ %111, %107 ], [ %101, %100 ]
  %110 = tail call fastcc ptr @single_succ_edge(ptr noundef %108) #16
  %111 = tail call fastcc ptr @propagate_through_phis(ptr noundef %109, ptr noundef %110) #16
  %112 = tail call fastcc ptr @single_succ(ptr noundef %108) #16
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef %112) #16
  %113 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #16, !range !16
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %115, label %107, !llvm.loop !44

115:                                              ; preds = %107, %100
  %116 = phi ptr [ %101, %100 ], [ %111, %107 ]
  %117 = phi ptr [ %104, %100 ], [ %112, %107 ]
  store ptr %116, ptr %3, align 8, !tbaa !10
  %118 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #16
  %119 = tail call fastcc i32 @gimple_code(ptr noundef %118) #16, !range !23
  %120 = trunc i32 %119 to i8
  switch i8 %120, label %121 [
    i8 4, label %156
    i8 9, label %160
  ]

121:                                              ; preds = %115
  %122 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %118) #16, !range !16
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %124, label %156

124:                                              ; preds = %121
  %125 = icmp eq i32 %119, 6
  br i1 %125, label %126, label %155

126:                                              ; preds = %124
  %127 = call fastcc zeroext i8 @process_assignment(ptr noundef %118, ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef nonnull %9, ptr noundef nonnull %8, ptr noundef nonnull %3) #16, !range !16
  %128 = icmp eq i8 %127, 0
  br i1 %128, label %155, label %129

129:                                              ; preds = %126
  %130 = load ptr, ptr %8, align 8, !tbaa !10
  %131 = icmp eq ptr %130, null
  br i1 %131, label %138, label %132

132:                                              ; preds = %129
  %133 = icmp eq ptr %103, null
  br i1 %133, label %138, label %134

134:                                              ; preds = %132
  %135 = getelementptr inbounds %struct.tree_common, ptr %130, i64 0, i32 2
  %136 = load ptr, ptr %135, align 8, !tbaa !29
  %137 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef %136, ptr noundef nonnull %103, ptr noundef nonnull %130) #15
  br label %138

138:                                              ; preds = %132, %134, %129
  %139 = phi ptr [ %137, %134 ], [ %103, %129 ], [ %130, %132 ]
  %140 = load ptr, ptr %9, align 8, !tbaa !10
  %141 = icmp eq ptr %140, null
  br i1 %141, label %156, label %142

142:                                              ; preds = %138
  %143 = icmp eq ptr %102, null
  br i1 %143, label %148, label %144

144:                                              ; preds = %142
  %145 = getelementptr inbounds %struct.tree_common, ptr %140, i64 0, i32 2
  %146 = load ptr, ptr %145, align 8, !tbaa !29
  %147 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 65, ptr noundef %146, ptr noundef nonnull %102, ptr noundef nonnull %140) #15
  br label %148

148:                                              ; preds = %142, %144
  %149 = phi ptr [ %147, %144 ], [ %140, %142 ]
  %150 = icmp eq ptr %139, null
  br i1 %150, label %156, label %151

151:                                              ; preds = %148
  %152 = getelementptr inbounds %struct.tree_common, ptr %140, i64 0, i32 2
  %153 = load ptr, ptr %152, align 8, !tbaa !29
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
  %159 = load ptr, ptr %3, align 8, !tbaa !10
  br label %100

160:                                              ; preds = %115
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #17
  %161 = tail call fastcc ptr @gimple_return_retval(ptr noundef %118) #16
  %162 = icmp eq ptr %161, null
  %163 = icmp eq ptr %161, %116
  %164 = select i1 %162, i1 true, i1 %163
  br i1 %164, label %165, label %178

165:                                              ; preds = %160
  %166 = icmp eq i8 %99, 0
  br i1 %166, label %167, label %171

167:                                              ; preds = %165
  %168 = icmp ne ptr %102, null
  %169 = icmp ne ptr %103, null
  %170 = select i1 %168, i1 true, i1 %169
  br i1 %170, label %178, label %171

171:                                              ; preds = %167, %165
  %172 = tail call ptr @xmalloc(i64 noundef 56) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %172, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !43
  %173 = getelementptr inbounds %struct.tailcall, ptr %172, i64 0, i32 1
  store i8 %99, ptr %173, align 8, !tbaa !26
  %174 = getelementptr inbounds %struct.tailcall, ptr %172, i64 0, i32 2
  store ptr %102, ptr %174, align 8, !tbaa !32
  %175 = getelementptr inbounds %struct.tailcall, ptr %172, i64 0, i32 3
  store ptr %103, ptr %175, align 8, !tbaa !31
  %176 = load ptr, ptr %1, align 8, !tbaa !10
  %177 = getelementptr inbounds %struct.tailcall, ptr %172, i64 0, i32 4
  store ptr %176, ptr %177, align 8, !tbaa !34
  store ptr %172, ptr %1, align 8, !tbaa !10
  br label %178

178:                                              ; preds = %25, %28, %155, %167, %160, %50, %2, %171, %46
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #16
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #16
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #16
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 738, ptr noundef nonnull @.str.5) #15
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !45
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !45
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_pred_p(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = load ptr, ptr %0, align 8, !tbaa !47
  %3 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %2) #16
  %4 = icmp eq i32 %3, 1
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_seq_empty_p(ptr noundef readonly %0) unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !49
  %5 = icmp eq ptr %4, null
  %6 = zext i1 %5 to i8
  br label %7

7:                                                ; preds = %3, %1
  %8 = phi i8 [ 1, %1 ], [ %6, %3 ]
  ret i8 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @phi_nodes(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !51
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.8, i32 noundef 510, ptr noundef nonnull @.str.5) #15
  br label %7

7:                                                ; preds = %1, %6
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !29
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.gimple_bb_info, ptr %9, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !52
  br label %14

14:                                               ; preds = %7, %11
  %15 = phi ptr [ %13, %11 ], [ null, %7 ]
  ret ptr %15
}

; Function Attrs: optsize
declare ptr @split_edge(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ_edge(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %0) #16, !range !16
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 645, ptr noundef nonnull @.str.5) #15
  br label %5

5:                                                ; preds = %1, %4
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !54
  %8 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %7, i32 noundef 0) #16
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @arg_needs_copy_p(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call zeroext i8 @is_gimple_reg(ptr noundef %0) #15
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %12, label %4

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @var_ann(ptr noundef %0) #16
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %4
  %8 = load ptr, ptr @cfun, align 8, !tbaa !10
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
define internal fastcc ptr @make_ssa_name(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr @cfun, align 8, !tbaa !10
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
define internal fastcc ptr @single_pred_edge(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %0) #16, !range !16
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 655, ptr noundef nonnull @.str.5) #15
  br label %5

5:                                                ; preds = %1, %4
  %6 = load ptr, ptr %0, align 8, !tbaa !47
  %7 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %6, i32 noundef 0) #16
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @create_tailcall_accumulator(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = load ptr, ptr @current_function_decl, align 8, !tbaa !10
  %5 = getelementptr inbounds %struct.tree_decl_non_common, ptr %4, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !29
  %7 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !29
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
define internal fastcc noundef zeroext i8 @optimize_tail_call(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.tailcall, ptr %0, i64 0, i32 1
  %4 = load i8, ptr %3, align 8, !tbaa !26
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call fastcc void @eliminate_tail_call(ptr noundef nonnull %0) #16
  br label %26

7:                                                ; preds = %2
  %8 = icmp eq i8 %1, 0
  br i1 %8, label %26, label %9

9:                                                ; preds = %7
  %10 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %0) #16
  tail call fastcc void @gimple_call_set_tail(ptr noundef %10) #16
  %11 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %12 = icmp eq ptr %11, null
  br i1 %12, label %26, label %13

13:                                               ; preds = %9
  %14 = load i32, ptr @dump_flags, align 4, !tbaa !5
  %15 = and i32 %14, 8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %13
  %18 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 16, i64 1, ptr nonnull %11)
  %19 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %20 = load i32, ptr @dump_flags, align 4, !tbaa !5
  tail call void @print_gimple_stmt(ptr noundef %19, ptr noundef %10, i32 noundef 0, i32 noundef %20) #15
  %21 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %22 = tail call fastcc ptr @gsi_bb(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %0) #16
  %23 = getelementptr inbounds %struct.basic_block_def, ptr %22, i64 0, i32 9
  %24 = load i32, ptr %23, align 8, !tbaa !55
  %25 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef nonnull @.str.10, i32 noundef %24) #16
  br label %26

26:                                               ; preds = %7, %17, %13, %9, %6
  %27 = phi i8 [ 1, %6 ], [ 0, %9 ], [ 0, %13 ], [ 0, %17 ], [ 0, %7 ]
  ret i8 %27
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @adjust_return_value(ptr noundef %0, ptr noundef readnone %1, ptr noundef readnone %2) unnamed_addr #0 {
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = tail call fastcc ptr @bb_seq(ptr noundef %0) #16
  %6 = tail call fastcc ptr @gimple_seq_last_stmt(ptr noundef %5) #16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #17
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %0) #16
  %7 = tail call fastcc i32 @gimple_code(ptr noundef %6) #16, !range !23
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
  %19 = load ptr, ptr @m_acc, align 8, !tbaa !10
  %20 = tail call fastcc ptr @adjust_return_value_with_ops(i32 noundef 65, ptr noundef nonnull @.str.14, ptr noundef %19, ptr noundef nonnull %11, ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #16
  br label %21

21:                                               ; preds = %18, %16
  %22 = phi ptr [ %20, %18 ], [ %11, %16 ]
  %23 = icmp eq ptr %2, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr @a_acc, align 8, !tbaa !10
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
define internal fastcc void @add_virtual_phis() unnamed_addr #0 {
  %1 = alloca %struct.referenced_var_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #17
  %2 = call fastcc ptr @first_referenced_var(ptr noundef nonnull %1) #16
  %3 = call fastcc zeroext i8 @end_referenced_vars_p(ptr noundef nonnull %1) #16, !range !16
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %18

5:                                                ; preds = %0, %14
  %6 = phi ptr [ %15, %14 ], [ %2, %0 ]
  %7 = tail call zeroext i8 @is_gimple_reg(ptr noundef %6) #15
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %5
  %10 = load ptr, ptr @cfun, align 8, !tbaa !10
  %11 = tail call ptr @gimple_default_def(ptr noundef %10, ptr noundef %6) #15
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void @mark_sym_for_renaming(ptr noundef %6) #15
  br label %14

14:                                               ; preds = %5, %9, %13
  %15 = call fastcc ptr @next_referenced_var(ptr noundef nonnull %1) #16
  %16 = call fastcc zeroext i8 @end_referenced_vars_p(ptr noundef nonnull %1) #16, !range !16
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %5, label %18, !llvm.loop !56

18:                                               ; preds = %14, %0
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @first_referenced_var(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !10
  %3 = tail call fastcc ptr @gimple_referenced_vars(ptr noundef %2) #16
  %4 = tail call fastcc ptr @first_htab_element(ptr noundef %0, ptr noundef %3) #16
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @end_referenced_vars_p(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = tail call fastcc zeroext i8 @end_htab_p(ptr noundef %0) #16, !range !16
  ret i8 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_global_var(ptr nocapture noundef readonly %0) unnamed_addr #6 {
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

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @is_call_used(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc zeroext i8 @is_call_clobbered(ptr noundef %0) #16, !range !16
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %15

4:                                                ; preds = %1
  %5 = tail call fastcc zeroext i8 @may_be_aliased(ptr noundef %0) #16, !range !16
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %15, label %7

7:                                                ; preds = %4
  %8 = load ptr, ptr @cfun, align 8, !tbaa !10
  %9 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !57
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
define internal fastcc ptr @next_referenced_var(ptr nocapture noundef %0) unnamed_addr #9 {
  %2 = tail call fastcc ptr @next_htab_element(ptr noundef %0) #16
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @first_htab_element(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  store ptr %1, ptr %0, align 8, !tbaa !58
  %3 = getelementptr inbounds %struct.htab, ptr %1, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !59
  %5 = getelementptr inbounds %struct.htab_iterator, ptr %0, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !61
  %6 = tail call i64 @htab_size(ptr noundef %1) #15
  %7 = getelementptr inbounds ptr, ptr %4, i64 %6
  %8 = getelementptr inbounds %struct.htab_iterator, ptr %0, i64 0, i32 2
  store ptr %7, ptr %8, align 8, !tbaa !62
  %9 = load ptr, ptr %5, align 8, !tbaa !61
  br label %10

10:                                               ; preds = %14, %2
  %11 = phi ptr [ %15, %14 ], [ %9, %2 ]
  %12 = load ptr, ptr %11, align 8, !tbaa !10
  %13 = icmp ult ptr %12, inttoptr (i64 2 to ptr)
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = getelementptr inbounds ptr, ptr %11, i64 1
  store ptr %15, ptr %5, align 8, !tbaa !61
  %16 = icmp ult ptr %15, %7
  br i1 %16, label %10, label %17, !llvm.loop !63

17:                                               ; preds = %10, %14
  %18 = phi ptr [ %11, %10 ], [ %15, %14 ]
  %19 = icmp ult ptr %18, %7
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = load ptr, ptr %18, align 8, !tbaa !10
  br label %22

22:                                               ; preds = %17, %20
  %23 = phi ptr [ %21, %20 ], [ null, %17 ]
  ret ptr %23
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gimple_referenced_vars(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !57
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !64
  br label %7

7:                                                ; preds = %1, %5
  %8 = phi ptr [ %6, %5 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: optsize
declare i64 @htab_size(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @end_htab_p(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.htab_iterator, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !61
  %4 = getelementptr inbounds %struct.htab_iterator, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = icmp uge ptr %3, %5
  %7 = zext i1 %6 to i8
  ret i8 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @is_call_clobbered(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc zeroext i8 @is_global_var(ptr noundef %0) #16, !range !16
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %15

4:                                                ; preds = %1
  %5 = tail call fastcc zeroext i8 @may_be_aliased(ptr noundef %0) #16, !range !16
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %15, label %7

7:                                                ; preds = %4
  %8 = load ptr, ptr @cfun, align 8, !tbaa !10
  %9 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !57
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
define internal fastcc zeroext i8 @may_be_aliased(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 33
  br i1 %4, label %38, label %5

5:                                                ; preds = %1
  %6 = and i64 %2, 134217728
  %7 = icmp ne i64 %6, 0
  %8 = and i64 %2, 201326592
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %12 = load i64, ptr %11, align 8
  %13 = and i64 %12, 33554432
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %29, label %15

15:                                               ; preds = %10, %5
  %16 = and i64 %2, 1048576
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %28, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !29
  %21 = getelementptr inbounds %struct.tree_type, ptr %20, i64 0, i32 6
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, 2048
  %24 = icmp eq i32 %23, 0
  %25 = or i1 %7, %24
  %26 = xor i1 %24, true
  %27 = zext i1 %26 to i8
  br i1 %25, label %38, label %29

28:                                               ; preds = %15
  br i1 %7, label %38, label %29

29:                                               ; preds = %18, %10, %28
  %30 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %31 = load i64, ptr %30, align 8
  %32 = and i64 %31, 33554432
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %38

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
define internal fastcc ptr @next_htab_element(ptr nocapture noundef %0) unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.htab_iterator, ptr %0, i64 0, i32 1
  %3 = getelementptr inbounds %struct.htab_iterator, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !62
  %5 = load ptr, ptr %2, align 8, !tbaa !61
  br label %6

6:                                                ; preds = %10, %1
  %7 = phi ptr [ %5, %1 ], [ %8, %10 ]
  %8 = getelementptr inbounds ptr, ptr %7, i64 1
  store ptr %8, ptr %2, align 8, !tbaa !61
  %9 = icmp ult ptr %8, %4
  br i1 %9, label %10, label %13

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !10
  %12 = icmp ult ptr %11, inttoptr (i64 2 to ptr)
  br i1 %12, label %6, label %13

13:                                               ; preds = %10, %6
  %14 = phi ptr [ %11, %10 ], [ null, %6 ]
  ret ptr %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #16
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

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
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #16
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #16
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #16
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !68
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
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 687, ptr noundef nonnull @.str.5) #15
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !10
  ret ptr %5
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #6 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !10
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_succ_p(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !54
  %4 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %3) #16
  %5 = icmp eq i32 %4, 1
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_last_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #10 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #16
  %4 = tail call fastcc ptr @gimple_seq_last(ptr noundef %3) #16
  store ptr %4, ptr %0, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !61
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !62
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #6 {
  %2 = load ptr, ptr %0, align 8, !tbaa !58
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #7 {
  %2 = load ptr, ptr %0, align 8, !tbaa !58
  %3 = load ptr, ptr %2, align 8, !tbaa !70
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_debug(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #16, !range !23
  %3 = icmp eq i32 %2, 2
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_call(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #16, !range !23
  %3 = icmp eq i32 %2, 8
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_lhs(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #16
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_references_memory_p(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #16, !range !16
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %8, label %4

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
define internal fastcc zeroext i8 @gimple_has_volatile_ops(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #16, !range !16
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_prev(ptr nocapture noundef %0) unnamed_addr #10 {
  %2 = load ptr, ptr %0, align 8, !tbaa !58
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !72
  store ptr %4, ptr %0, align 8, !tbaa !58
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fndecl(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #16
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 121
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !29
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_call_num_args(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #16
  %3 = add i32 %2, -3
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = add i32 %1, 3
  %4 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %3) #16
  ret ptr %4
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_reg_type(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @useless_type_conversion_p(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #10 {
  %2 = load ptr, ptr %0, align 8, !tbaa !58
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !73
  store ptr %4, ptr %0, align 8, !tbaa !58
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @propagate_through_phis(ptr noundef readnone %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #17
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %5) #15
  %6 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #16, !range !16
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %22

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 6
  br label %10

10:                                               ; preds = %8, %19
  %11 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #16
  %12 = load i32, ptr %9, align 4, !tbaa !74
  %13 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %11, i32 noundef %12) #16
  %14 = call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %13) #16
  %15 = icmp eq ptr %14, %0
  br i1 %15, label %16, label %19

16:                                               ; preds = %10
  %17 = call fastcc ptr @gimple_phi_result_ptr(ptr noundef %11) #16
  %18 = call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %17) #16
  br label %22

19:                                               ; preds = %10
  call fastcc void @gsi_next(ptr noundef nonnull %3) #16
  %20 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #16, !range !16
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %10, label %22, !llvm.loop !75

22:                                               ; preds = %19, %2, %16
  %23 = phi ptr [ %18, %16 ], [ %0, %2 ], [ %0, %19 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #17
  ret ptr %23
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #10 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #16
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #16
  store ptr %4, ptr %0, align 8, !tbaa !58
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !61
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !62
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @process_assignment(ptr noundef %0, ptr nocapture noundef byval(%struct.gimple_stmt_iterator) align 8 %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef %4) unnamed_addr #0 {
  %6 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %0) #16
  %7 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #16, !range !76
  %8 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %7) #16, !range !23
  %9 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #16
  %10 = icmp eq i32 %8, 3
  br i1 %10, label %14, label %11

11:                                               ; preds = %5
  %12 = tail call fastcc zeroext i8 @gimple_assign_cast_p(ptr noundef %0) #16, !range !16
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %54, label %14

14:                                               ; preds = %11, %5
  %15 = load i64, ptr %9, align 8
  %16 = and i64 %15, 65535
  %17 = icmp eq i64 %16, 141
  br i1 %17, label %18, label %54

18:                                               ; preds = %14
  %19 = tail call fastcc zeroext i8 @gimple_assign_cast_p(ptr noundef %0) #16, !range !16
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %51, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !29
  %24 = load i64, ptr %23, align 8
  %25 = and i64 %24, 65535
  %26 = icmp eq i64 %25, 14
  br i1 %26, label %27, label %29

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
  %37 = load ptr, ptr %36, align 8, !tbaa !29
  %38 = load i64, ptr %37, align 8
  %39 = and i64 %38, 65535
  %40 = icmp eq i64 %39, 14
  br i1 %40, label %41, label %43

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
  br i1 %50, label %51, label %96

51:                                               ; preds = %48, %18
  %52 = load ptr, ptr %4, align 8, !tbaa !10
  %53 = icmp eq ptr %9, %52
  br i1 %53, label %95, label %96

54:                                               ; preds = %14, %11
  %55 = icmp eq i32 %8, 1
  br i1 %55, label %56, label %96

56:                                               ; preds = %54
  %57 = load i32, ptr @flag_associative_math, align 4, !tbaa !5
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %73

59:                                               ; preds = %56
  %60 = load ptr, ptr @current_function_decl, align 8, !tbaa !10
  %61 = getelementptr inbounds %struct.tree_decl_non_common, ptr %60, i64 0, i32 3
  %62 = load ptr, ptr %61, align 8, !tbaa !29
  %63 = getelementptr inbounds %struct.tree_common, ptr %62, i64 0, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !29
  %65 = load i64, ptr %64, align 8
  %66 = trunc i64 %65 to i16
  switch i16 %66, label %73 [
    i16 9, label %96
    i16 13, label %67
    i16 14, label %67
  ]

67:                                               ; preds = %59, %59
  %68 = getelementptr inbounds %struct.tree_common, ptr %64, i64 0, i32 2
  %69 = load ptr, ptr %68, align 8, !tbaa !29
  %70 = load i64, ptr %69, align 8
  %71 = and i64 %70, 65535
  %72 = icmp eq i64 %71, 9
  br i1 %72, label %96, label %73

73:                                               ; preds = %59, %67, %56
  %74 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #16
  %75 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %0) #16
  %76 = load ptr, ptr %4, align 8, !tbaa !10
  %77 = icmp eq ptr %74, %76
  br i1 %77, label %78, label %83

78:                                               ; preds = %73
  %79 = tail call fastcc ptr @independent_of_stmt_p(ptr noundef %75, ptr noundef %0, ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #16
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %89

81:                                               ; preds = %78
  %82 = load ptr, ptr %4, align 8, !tbaa !10
  br label %83

83:                                               ; preds = %81, %73
  %84 = phi ptr [ %82, %81 ], [ %76, %73 ]
  %85 = icmp eq ptr %75, %84
  br i1 %85, label %86, label %96

86:                                               ; preds = %83
  %87 = tail call fastcc ptr @independent_of_stmt_p(ptr noundef %74, ptr noundef %0, ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #16
  %88 = icmp eq ptr %87, null
  br i1 %88, label %96, label %89

89:                                               ; preds = %86, %78
  %90 = phi ptr [ %79, %78 ], [ %87, %86 ]
  %91 = trunc i32 %7 to i16
  switch i16 %91, label %96 [
    i16 63, label %93
    i16 65, label %92
  ]

92:                                               ; preds = %89
  br label %93

93:                                               ; preds = %89, %92
  %94 = phi ptr [ %2, %92 ], [ %3, %89 ]
  store ptr %90, ptr %94, align 8, !tbaa !10
  br label %95

95:                                               ; preds = %93, %51
  store ptr %6, ptr %4, align 8, !tbaa !10
  br label %96

96:                                               ; preds = %95, %89, %83, %86, %67, %59, %54, %51, %48
  %97 = phi i8 [ 0, %48 ], [ 0, %51 ], [ 0, %54 ], [ 0, %59 ], [ 0, %67 ], [ 0, %86 ], [ 0, %83 ], [ 0, %89 ], [ 1, %95 ]
  ret i8 %97
}

; Function Attrs: optsize
declare ptr @fold_build2_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_return_retval(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #16
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !51
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !29
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !77
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_last(ptr noundef readonly %0) unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.gimple_seq_d, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !78
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi ptr [ %5, %3 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #16, !range !16
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #16
  %7 = zext i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !10
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #16, !range !23
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #16
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !79
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 1622, ptr noundef nonnull @.str.5) #15
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #16, !range !23
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #16
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #4 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !5
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_mem_ops(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #16, !range !23
  %3 = add nsw i32 %2, -6
  %4 = icmp ult i32 %3, 4
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vuse(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #16, !range !16
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !29
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fn(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #16
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_num_ops(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !29
  ret i32 %3
}

; Function Attrs: optsize
declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_use_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !80
  %4 = load ptr, ptr %3, align 8, !tbaa !10
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %1) #16
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @get_def_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = load ptr, ptr %0, align 8, !tbaa !10
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @gimple_phi_result_ptr(ptr noundef readnone %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !29
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 3103, ptr noundef nonnull @.str.5) #15
  br label %7

7:                                                ; preds = %2, %6
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %8
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !49
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_lhs(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #16
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_expr_code(ptr noundef %0) #16, !range !76
  %3 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %2) #16, !range !23
  %4 = icmp eq i32 %3, 3
  br i1 %4, label %5, label %10

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
define internal fastcc i32 @get_gimple_rhs_class(i32 noundef %0) unnamed_addr #4 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %2
  %4 = load i8, ptr %3, align 1, !tbaa !29
  %5 = zext i8 %4 to i32
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs1(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #16
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @gimple_assign_cast_p(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %0) #16, !range !16
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #16, !range !76
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
define internal fastcc ptr @gimple_assign_rhs2(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #16
  %3 = icmp ugt i32 %2, 2
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 2) #16
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi ptr [ %5, %4 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @independent_of_stmt_p(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef byval(%struct.gimple_stmt_iterator) align 8 %2) unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #17
  %6 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %0) #15
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %85

8:                                                ; preds = %3
  %9 = load i64, ptr %0, align 8
  %10 = and i64 %9, 65535
  %11 = icmp eq i64 %10, 141
  br i1 %11, label %12, label %85

12:                                               ; preds = %8
  %13 = tail call fastcc ptr @gimple_bb(ptr noundef %1) #16
  %14 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #16
  %15 = tail call fastcc ptr @gimple_bb(ptr noundef %14) #16
  %16 = icmp eq ptr %15, %13
  br i1 %16, label %22, label %17

17:                                               ; preds = %12, %17
  %18 = phi ptr [ %20, %17 ], [ %15, %12 ]
  %19 = getelementptr inbounds %struct.basic_block_def, ptr %18, i64 0, i32 2
  store ptr %19, ptr %19, align 8, !tbaa !82
  %20 = tail call fastcc ptr @single_succ(ptr noundef %18) #16
  %21 = icmp eq ptr %20, %13
  br i1 %21, label %22, label %17, !llvm.loop !83

22:                                               ; preds = %17, %12
  %23 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 2
  store ptr %23, ptr %23, align 8, !tbaa !82
  %24 = getelementptr inbounds i8, ptr %5, i64 8
  br label %25

25:                                               ; preds = %68, %22
  %26 = phi ptr [ %0, %22 ], [ %73, %68 ]
  %27 = getelementptr inbounds %struct.tree_ssa_name, ptr %26, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !29
  %29 = tail call fastcc ptr @gimple_bb(ptr noundef %28) #16
  %30 = icmp eq ptr %29, null
  br i1 %30, label %77, label %31

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !82
  %34 = icmp eq ptr %33, null
  br i1 %34, label %77, label %35

35:                                               ; preds = %31
  %36 = icmp eq ptr %29, %15
  br i1 %36, label %37, label %46

37:                                               ; preds = %35
  %38 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #16, !range !16
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %77

40:                                               ; preds = %37, %43
  %41 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #16
  %42 = icmp eq ptr %41, %28
  br i1 %42, label %77, label %43

43:                                               ; preds = %40
  call fastcc void @gsi_next(ptr noundef nonnull %2) #16
  %44 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #16, !range !16
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %40, label %77, !llvm.loop !84

46:                                               ; preds = %35
  %47 = tail call fastcc i32 @gimple_code(ptr noundef %28) #16, !range !23
  %48 = icmp eq i32 %47, 16
  br i1 %48, label %49, label %77

49:                                               ; preds = %46
  %50 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %29) #16
  store i32 0, ptr %5, align 8, !tbaa.struct !18
  store ptr %50, ptr %24, align 8, !tbaa.struct !19
  %51 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %50, ptr noundef nonnull %4) #16, !range !16
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %64, label %53

53:                                               ; preds = %49, %59
  %54 = load ptr, ptr %4, align 8, !tbaa !10
  %55 = load ptr, ptr %54, align 8, !tbaa !20
  %56 = getelementptr inbounds %struct.basic_block_def, ptr %55, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !82
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %68

59:                                               ; preds = %53
  call fastcc void @ei_next(ptr noundef nonnull %5) #16
  %60 = load i32, ptr %5, align 8
  %61 = load ptr, ptr %24, align 8
  %62 = call fastcc zeroext i8 @ei_cond(i32 %60, ptr %61, ptr noundef nonnull %4) #16, !range !16
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %64, label %53, !llvm.loop !85

64:                                               ; preds = %59, %49
  %65 = load ptr, ptr %4, align 8, !tbaa !10
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 242, ptr noundef nonnull @.str.5) #15
  unreachable

68:                                               ; preds = %53, %64
  %69 = phi ptr [ %65, %64 ], [ %54, %53 ]
  %70 = getelementptr inbounds %struct.edge_def, ptr %69, i64 0, i32 6
  %71 = load i32, ptr %70, align 4, !tbaa !74
  %72 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %28, i32 noundef %71) #16
  %73 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %72) #16
  %74 = load i64, ptr %73, align 8
  %75 = and i64 %74, 65535
  %76 = icmp eq i64 %75, 141
  br i1 %76, label %25, label %77

77:                                               ; preds = %46, %68, %25, %31, %40, %43, %37
  %78 = phi ptr [ %26, %37 ], [ null, %40 ], [ %26, %43 ], [ null, %46 ], [ %26, %25 ], [ %26, %31 ], [ %73, %68 ]
  br i1 %16, label %84, label %79

79:                                               ; preds = %77, %79
  %80 = phi ptr [ %82, %79 ], [ %15, %77 ]
  %81 = getelementptr inbounds %struct.basic_block_def, ptr %80, i64 0, i32 2
  store ptr null, ptr %81, align 8, !tbaa !82
  %82 = tail call fastcc ptr @single_succ(ptr noundef %80) #16
  %83 = icmp eq ptr %82, %13
  br i1 %83, label %84, label %79, !llvm.loop !86

84:                                               ; preds = %79, %77
  store ptr null, ptr %23, align 8, !tbaa !82
  br label %85

85:                                               ; preds = %8, %3, %84
  %86 = phi ptr [ %78, %84 ], [ %0, %3 ], [ null, %8 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #17
  ret ptr %86
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_expr_code(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #16, !range !23
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
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 1446, ptr noundef nonnull @.str.5) #15
  br label %8

8:                                                ; preds = %1, %7, %4
  %9 = phi i32 [ %6, %4 ], [ 0, %7 ], [ 59, %1 ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_assign(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #16, !range !23
  %3 = icmp eq i32 %2, 6
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_min_invariant(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bb(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !29
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @var_ann(ptr nocapture noundef readonly %0) unnamed_addr #7 {
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
  %14 = load ptr, ptr %13, align 8, !tbaa !10
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
define internal fastcc void @eliminate_tail_call(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #17
  %4 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #16
  %5 = tail call fastcc ptr @gsi_bb(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #16
  %6 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %7 = icmp eq ptr %6, null
  br i1 %7, label %19, label %8

8:                                                ; preds = %1
  %9 = load i32, ptr @dump_flags, align 4, !tbaa !5
  %10 = and i32 %9, 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %5, i64 0, i32 9
  %14 = load i32, ptr %13, align 8, !tbaa !55
  %15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %6, ptr noundef nonnull @.str.11, i32 noundef %14) #16
  %16 = load ptr, ptr @dump_file, align 8, !tbaa !10
  tail call void @print_gimple_stmt(ptr noundef %16, ptr noundef %4, i32 noundef 0, i32 noundef 2) #15
  %17 = load ptr, ptr @dump_file, align 8, !tbaa !10
  %18 = tail call i32 @fputc(i32 10, ptr %17)
  br label %19

19:                                               ; preds = %12, %8, %1
  %20 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %4) #16, !range !16
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 774, ptr noundef nonnull @.str.5) #15
  br label %23

23:                                               ; preds = %19, %22
  %24 = load ptr, ptr @cfun, align 8, !tbaa !10
  %25 = getelementptr inbounds %struct.function, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !12
  %27 = load ptr, ptr %26, align 8, !tbaa !14
  %28 = tail call fastcc ptr @single_succ(ptr noundef %27) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !43
  call fastcc void @gsi_next(ptr noundef nonnull %2) #16
  %29 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #16, !range !16
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %23, %35
  %32 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #16
  %33 = call fastcc i32 @gimple_code(ptr noundef %32) #16, !range !23
  %34 = icmp eq i32 %33, 9
  br i1 %34, label %38, label %35

35:                                               ; preds = %31
  call void @gsi_remove(ptr noundef nonnull %2, i8 noundef zeroext 1) #15
  call void @release_defs(ptr noundef %32) #15
  %36 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #16, !range !16
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %31, label %38

38:                                               ; preds = %35, %31, %23
  %39 = call fastcc ptr @gsi_bb(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #16
  %40 = call fastcc ptr @single_succ_edge(ptr noundef %39) #16
  %41 = load ptr, ptr @cfun, align 8, !tbaa !10
  %42 = getelementptr inbounds %struct.function, ptr %41, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !12
  %44 = getelementptr inbounds %struct.control_flow_graph, ptr %43, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !17
  %46 = getelementptr inbounds %struct.edge_def, ptr %40, i64 0, i32 9
  %47 = load i64, ptr %46, align 8, !tbaa !87
  %48 = load ptr, ptr %40, align 8, !tbaa !20
  %49 = getelementptr inbounds %struct.basic_block_def, ptr %48, i64 0, i32 11
  %50 = load i32, ptr %49, align 8, !tbaa !88
  %51 = getelementptr inbounds %struct.edge_def, ptr %40, i64 0, i32 8
  %52 = load i32, ptr %51, align 4, !tbaa !89
  %53 = mul nsw i32 %52, %50
  %54 = add nsw i32 %53, 5000
  %55 = sdiv i32 %54, 10000
  call fastcc void @decrease_profile(ptr noundef %45, i64 noundef %47, i32 noundef %55) #16
  %56 = load ptr, ptr @cfun, align 8, !tbaa !10
  %57 = getelementptr inbounds %struct.function, ptr %56, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !12
  %59 = load ptr, ptr %58, align 8, !tbaa !14
  %60 = load i64, ptr %46, align 8, !tbaa !87
  %61 = load ptr, ptr %40, align 8, !tbaa !20
  %62 = getelementptr inbounds %struct.basic_block_def, ptr %61, i64 0, i32 11
  %63 = load i32, ptr %62, align 8, !tbaa !88
  %64 = load i32, ptr %51, align 4, !tbaa !89
  %65 = mul nsw i32 %64, %63
  %66 = add nsw i32 %65, 5000
  %67 = sdiv i32 %66, 10000
  call fastcc void @decrease_profile(ptr noundef %59, i64 noundef %60, i32 noundef %67) #16
  %68 = getelementptr inbounds %struct.edge_def, ptr %40, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !37
  %70 = load ptr, ptr @cfun, align 8, !tbaa !10
  %71 = getelementptr inbounds %struct.function, ptr %70, i64 0, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !12
  %73 = getelementptr inbounds %struct.control_flow_graph, ptr %72, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !17
  %75 = icmp eq ptr %69, %74
  br i1 %75, label %85, label %76

76:                                               ; preds = %38
  %77 = load i64, ptr %46, align 8, !tbaa !87
  %78 = load ptr, ptr %40, align 8, !tbaa !20
  %79 = getelementptr inbounds %struct.basic_block_def, ptr %78, i64 0, i32 11
  %80 = load i32, ptr %79, align 8, !tbaa !88
  %81 = load i32, ptr %51, align 4, !tbaa !89
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
  store ptr null, ptr %92, align 8, !tbaa !29
  %93 = load ptr, ptr @current_function_decl, align 8, !tbaa !10
  %94 = getelementptr inbounds %struct.tree_decl_non_common, ptr %93, i64 0, i32 2
  %95 = load ptr, ptr %94, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #17
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %28) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !43
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #17
  %96 = icmp eq ptr %95, null
  br i1 %96, label %118, label %97

97:                                               ; preds = %91, %113
  %98 = phi ptr [ %115, %113 ], [ %95, %91 ]
  %99 = phi i32 [ %116, %113 ], [ 0, %91 ]
  %100 = call fastcc zeroext i8 @arg_needs_copy_p(ptr noundef nonnull %98) #16, !range !16
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %113, label %102

102:                                              ; preds = %97
  %103 = call fastcc ptr @gimple_call_arg(ptr noundef %4, i32 noundef %99) #16
  %104 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #16
  %105 = call fastcc ptr @gimple_phi_result_ptr(ptr noundef %104) #16
  %106 = call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %105) #16
  %107 = getelementptr inbounds %struct.tree_ssa_name, ptr %106, i64 0, i32 1
  %108 = load ptr, ptr %107, align 8, !tbaa !29
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
  %115 = load ptr, ptr %114, align 8, !tbaa !29
  %116 = add i32 %99, 1
  %117 = icmp eq ptr %115, null
  br i1 %117, label %118, label %97, !llvm.loop !90

118:                                              ; preds = %113, %91
  %119 = getelementptr inbounds %struct.tailcall, ptr %0, i64 0, i32 2
  %120 = load ptr, ptr %119, align 8, !tbaa !32
  %121 = getelementptr inbounds %struct.tailcall, ptr %0, i64 0, i32 3
  %122 = load ptr, ptr %121, align 8, !tbaa !31
  call fastcc void @adjust_accumulator_values(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %120, ptr noundef %122, ptr noundef %88) #16
  %123 = call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #16
  %124 = call fastcc ptr @gimple_call_lhs(ptr noundef %123) #16
  %125 = icmp eq ptr %124, null
  br i1 %125, label %129, label %126

126:                                              ; preds = %118
  %127 = call ptr @gimple_build_nop() #15
  %128 = getelementptr inbounds %struct.tree_ssa_name, ptr %124, i64 0, i32 2
  store ptr %127, ptr %128, align 8, !tbaa !29
  br label %129

129:                                              ; preds = %126, %118
  call void @gsi_remove(ptr noundef nonnull %0, i8 noundef zeroext 1) #15
  call void @release_defs(ptr noundef %123) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @gimple_call_set_tail(ptr nocapture noundef %0) unnamed_addr #11 {
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
define internal fastcc ptr @gsi_bb(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !62
  ret ptr %3
}

; Function Attrs: optsize
declare void @gsi_remove(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @release_defs(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @decrease_profile(ptr nocapture noundef %0, i64 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 8
  %5 = load i64, ptr %4, align 8, !tbaa !91
  %6 = sub nsw i64 %5, %1
  %7 = tail call i64 @llvm.smax.i64(i64 %6, i64 0)
  store i64 %7, ptr %4, align 8, !tbaa !91
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 11
  %9 = load i32, ptr %8, align 8, !tbaa !88
  %10 = sub nsw i32 %9, %2
  %11 = tail call i32 @llvm.smax.i32(i32 %10, i32 0)
  store i32 %11, ptr %8, align 8, !tbaa !88
  %12 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %0) #16, !range !16
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !54
  %17 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %16) #16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %14
  tail call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 719, ptr noundef nonnull @.str.5) #15
  br label %26

20:                                               ; preds = %3
  %21 = tail call fastcc ptr @single_succ_edge(ptr noundef nonnull %0) #16
  %22 = getelementptr inbounds %struct.edge_def, ptr %21, i64 0, i32 9
  %23 = load i64, ptr %22, align 8, !tbaa !87
  %24 = sub nsw i64 %23, %1
  %25 = tail call i64 @llvm.smax.i64(i64 %24, i64 0)
  store i64 %25, ptr %22, align 8, !tbaa !87
  br label %26

26:                                               ; preds = %19, %14, %20
  ret void
}

; Function Attrs: optsize
declare ptr @redirect_edge_and_branch(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_location(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !29
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @adjust_accumulator_values(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
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
  %12 = load ptr, ptr @a_acc, align 8, !tbaa !10
  %13 = load ptr, ptr @m_acc, align 8, !tbaa !10
  br label %31

14:                                               ; preds = %8
  %15 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %0, ptr noundef nonnull %2, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #15
  %16 = load ptr, ptr @a_acc, align 8, !tbaa !10
  %17 = load ptr, ptr @m_acc, align 8, !tbaa !10
  %18 = icmp eq ptr %15, null
  br i1 %18, label %31, label %19

19:                                               ; preds = %14
  %20 = icmp eq ptr %17, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %19
  %22 = call i32 @integer_onep(ptr noundef nonnull %15) #15
  %23 = icmp eq i32 %22, 0
  %24 = load ptr, ptr @m_acc, align 8, !tbaa !10
  br i1 %23, label %25, label %27

25:                                               ; preds = %21
  %26 = call fastcc ptr @adjust_return_value_with_ops(i32 noundef 65, ptr noundef nonnull @.str.13, ptr noundef %24, ptr noundef nonnull %15, ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %0) #16
  br label %27

27:                                               ; preds = %21, %19, %25
  %28 = phi ptr [ %26, %25 ], [ %15, %19 ], [ %24, %21 ]
  %29 = load ptr, ptr @a_acc, align 8, !tbaa !10
  %30 = call fastcc ptr @update_accumulator_with_ops(i32 noundef 63, ptr noundef %29, ptr noundef %28, ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %0) #16
  br label %31

31:                                               ; preds = %11, %27, %14
  %32 = phi ptr [ %17, %27 ], [ %17, %14 ], [ %13, %11 ]
  %33 = phi ptr [ %30, %27 ], [ %16, %14 ], [ %12, %11 ]
  %34 = icmp eq ptr %9, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %31
  %36 = load ptr, ptr @m_acc, align 8, !tbaa !10
  %37 = call fastcc ptr @update_accumulator_with_ops(i32 noundef 65, ptr noundef %36, ptr noundef nonnull %9, ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %0) #16
  br label %38

38:                                               ; preds = %35, %31
  %39 = phi ptr [ %37, %35 ], [ %32, %31 ]
  %40 = load ptr, ptr @a_acc, align 8, !tbaa !10
  %41 = icmp eq ptr %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %38
  call fastcc void @add_successor_phi_arg(ptr noundef %3, ptr noundef nonnull %40, ptr noundef %33) #16
  br label %43

43:                                               ; preds = %42, %38
  %44 = load ptr, ptr @m_acc, align 8, !tbaa !10
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
define internal fastcc noundef ptr @adjust_return_value_with_ops(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %4) unnamed_addr #0 {
  %6 = load ptr, ptr @current_function_decl, align 8, !tbaa !10
  %7 = getelementptr inbounds %struct.tree_decl_non_common, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !29
  %9 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !29
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
  %24 = load ptr, ptr %23, align 8, !tbaa !29
  %25 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !29
  %27 = tail call zeroext i8 @types_compatible_p(ptr noundef %24, ptr noundef %26) #15
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %21
  %30 = tail call ptr @gimple_build_assign_with_ops_stat(i32 noundef %0, ptr noundef %11, ptr noundef nonnull %2, ptr noundef nonnull %3) #15
  br label %39

31:                                               ; preds = %21
  %32 = load ptr, ptr %23, align 8, !tbaa !29
  %33 = load ptr, ptr %25, align 8, !tbaa !29
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
define internal fastcc noundef ptr @update_accumulator_with_ops(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !29
  %7 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !29
  %9 = tail call zeroext i8 @types_compatible_p(ptr noundef %6, ptr noundef %8) #15
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !29
  %14 = tail call ptr @gimple_build_assign_with_ops_stat(i32 noundef %0, ptr noundef %13, ptr noundef nonnull %1, ptr noundef nonnull %2) #15
  br label %23

15:                                               ; preds = %4
  %16 = load ptr, ptr %5, align 8, !tbaa !29
  %17 = load ptr, ptr %7, align 8, !tbaa !29
  %18 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %17, ptr noundef nonnull %1) #15
  %19 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef %0, ptr noundef %17, ptr noundef %18, ptr noundef nonnull %2) #15
  %20 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %16, ptr noundef %19) #15
  %21 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %3, ptr noundef %20, i8 noundef zeroext 0, ptr noundef null, i8 noundef zeroext 0, i32 noundef 2) #15
  %22 = call ptr @gimple_build_assign_stat(ptr noundef null, ptr noundef %21) #15
  br label %23

23:                                               ; preds = %15, %11
  %24 = phi ptr [ %14, %11 ], [ %22, %15 ]
  %25 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !29
  %27 = call fastcc ptr @make_ssa_name(ptr noundef %26, ptr noundef %24) #16
  call fastcc void @gimple_assign_set_lhs(ptr noundef %24, ptr noundef %27) #16
  call fastcc void @update_stmt(ptr noundef %24) #16
  call void @gsi_insert_after(ptr noundef nonnull %3, ptr noundef %24, i32 noundef 0) #15
  ret ptr %27
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_successor_phi_arg(ptr noundef %0, ptr noundef readnone %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #17
  %5 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !37
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %6) #15
  %7 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #16, !range !16
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
  %15 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #16, !range !16
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %9, label %17, !llvm.loop !92

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
define internal fastcc void @gimple_assign_set_lhs(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
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
  store ptr %0, ptr %9, align 8, !tbaa !29
  br label %10

10:                                               ; preds = %8, %4, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_stmt(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #16, !range !16
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
define internal fastcc void @gimple_set_op(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #16, !range !16
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
  store ptr %1, ptr %10, align 8, !tbaa !10
  ret void
}

; Function Attrs: optsize
declare void @gimple_set_modified(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @update_stmt_operands(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @gsi_insert_after(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gimple_seq_last_stmt(ptr noundef readonly %0) unnamed_addr #7 {
  %2 = tail call fastcc ptr @gimple_seq_last(ptr noundef %0) #16
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %2, align 8, !tbaa !70
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi ptr [ %5, %4 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_return_set_retval(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
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
!9 = !{i32 0, i32 16417}
!10 = !{!11, !11, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!13, !11, i64 8}
!13 = !{!"function", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !11, i64 128, !6, i64 136, !6, i64 137, !6, i64 138, !6, i64 138, !6, i64 138, !6, i64 138, !6, i64 138, !6, i64 138, !6, i64 138, !6, i64 139, !6, i64 139, !6, i64 139, !6, i64 139, !6, i64 139, !6, i64 139, !6, i64 139}
!14 = !{!15, !11, i64 0}
!15 = !{!"control_flow_graph", !11, i64 0, !11, i64 8, !11, i64 16, !6, i64 24, !6, i64 28, !6, i64 32, !11, i64 40, !6, i64 48, !7, i64 52, !7, i64 60, !6, i64 68, !6, i64 72}
!16 = !{i8 0, i8 2}
!17 = !{!15, !11, i64 8}
!18 = !{i64 0, i64 4, !5, i64 8, i64 8, !10}
!19 = !{i64 0, i64 8, !10}
!20 = !{!21, !11, i64 0}
!21 = !{!"edge_def", !11, i64 0, !11, i64 8, !7, i64 16, !11, i64 24, !11, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !22, i64 56}
!22 = !{!"long", !7, i64 0}
!23 = !{i32 0, i32 256}
!24 = distinct !{!24, !25}
!25 = !{!"llvm.loop.mustprogress"}
!26 = !{!27, !7, i64 24}
!27 = !{!"tailcall", !28, i64 0, !7, i64 24, !11, i64 32, !11, i64 40, !11, i64 48}
!28 = !{!"", !11, i64 0, !11, i64 8, !11, i64 16}
!29 = !{!7, !7, i64 0}
!30 = distinct !{!30, !25}
!31 = !{!27, !11, i64 40}
!32 = !{!27, !11, i64 32}
!33 = distinct !{!33, !25}
!34 = !{!27, !11, i64 48}
!35 = distinct !{!35, !25}
!36 = distinct !{!36, !25}
!37 = !{!21, !11, i64 8}
!38 = distinct !{!38, !25}
!39 = distinct !{!39, !25}
!40 = distinct !{!40, !25}
!41 = distinct !{!41, !25}
!42 = distinct !{!42, !25}
!43 = !{i64 0, i64 8, !10, i64 8, i64 8, !10, i64 16, i64 8, !10}
!44 = distinct !{!44, !25}
!45 = !{!46, !6, i64 0}
!46 = !{!"", !6, i64 0, !11, i64 8}
!47 = !{!48, !11, i64 0}
!48 = !{!"basic_block_def", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !7, i64 32, !11, i64 48, !11, i64 56, !7, i64 64, !22, i64 72, !6, i64 80, !6, i64 84, !6, i64 88, !6, i64 92, !6, i64 96}
!49 = !{!50, !11, i64 0}
!50 = !{!"gimple_seq_d", !11, i64 0, !11, i64 8, !11, i64 16}
!51 = !{!48, !6, i64 96}
!52 = !{!53, !11, i64 8}
!53 = !{!"gimple_bb_info", !11, i64 0, !11, i64 8}
!54 = !{!48, !11, i64 8}
!55 = !{!48, !6, i64 80}
!56 = distinct !{!56, !25}
!57 = !{!13, !11, i64 24}
!58 = !{!28, !11, i64 0}
!59 = !{!60, !11, i64 24}
!60 = !{!"htab", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !22, i64 32, !22, i64 40, !22, i64 48, !6, i64 56, !6, i64 60, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !6, i64 104}
!61 = !{!28, !11, i64 8}
!62 = !{!28, !11, i64 16}
!63 = distinct !{!63, !25}
!64 = !{!65, !11, i64 0}
!65 = !{!"gimple_df", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !66, i64 32, !66, i64 48, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !6, i64 96, !67, i64 104}
!66 = !{!"pt_solution", !6, i64 0, !6, i64 0, !6, i64 0, !6, i64 0, !6, i64 0, !6, i64 0, !11, i64 8}
!67 = !{!"ssa_operands", !11, i64 0, !6, i64 8, !6, i64 12, !7, i64 16, !11, i64 24, !11, i64 32}
!68 = !{!69, !6, i64 0}
!69 = !{!"VEC_edge_base", !6, i64 0, !6, i64 4, !7, i64 8}
!70 = !{!71, !11, i64 0}
!71 = !{!"gimple_seq_node_d", !11, i64 0, !11, i64 8, !11, i64 16}
!72 = !{!71, !11, i64 8}
!73 = !{!71, !11, i64 16}
!74 = !{!21, !6, i64 44}
!75 = distinct !{!75, !25}
!76 = !{i32 0, i32 65536}
!77 = !{!53, !11, i64 0}
!78 = !{!50, !11, i64 8}
!79 = !{!22, !22, i64 0}
!80 = !{!81, !11, i64 24}
!81 = !{!"ssa_use_operand_d", !11, i64 0, !11, i64 8, !7, i64 16, !11, i64 24}
!82 = !{!48, !11, i64 16}
!83 = distinct !{!83, !25}
!84 = distinct !{!84, !25}
!85 = distinct !{!85, !25}
!86 = distinct !{!86, !25}
!87 = !{!21, !22, i64 56}
!88 = !{!48, !6, i64 88}
!89 = !{!21, !6, i64 52}
!90 = distinct !{!90, !25}
!91 = !{!48, !22, i64 72}
!92 = distinct !{!92, !25}

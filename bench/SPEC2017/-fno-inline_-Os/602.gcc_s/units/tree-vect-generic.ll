; ModuleID = 'tree-vect-generic.c'
source_filename = "tree-vect-generic.c"
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
%struct.ggc_root_tab = type { ptr, i64, i64, ptr, ptr }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.optab_d = type { i32, ptr, i8, ptr, [87 x %struct.optab_handlers] }
%struct.optab_handlers = type { i32 }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.constructor_elt_d = type { ptr, ptr }
%struct.VEC_constructor_elt_base = type { i32, i32, [1 x %struct.constructor_elt_d] }

@pass_lower_vector = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str, ptr null, ptr @expand_vector_operations, ptr null, ptr null, i32 0, i32 0, i32 8, i32 0, i32 0, i32 0, i32 19 } }, align 8
@.str = private unnamed_addr constant [9 x i8] c"veclower\00", align 1
@cfun = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"tree-vect-generic.c\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@mode_class = external local_unnamed_addr constant [87 x i8], align 16
@.str.3 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gimple_rhs_class_table = external local_unnamed_addr constant [0 x i8], align 1
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@mode_inner = external local_unnamed_addr constant [87 x i8], align 16
@mode_nunits = external local_unnamed_addr constant [87 x i8], align 16
@mode_wider = external local_unnamed_addr constant [87 x i8], align 16
@lang_hooks = external local_unnamed_addr global %struct.lang_hooks, align 8
@flag_trapv = external local_unnamed_addr global i32, align 4
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@mode_mask_array = external local_unnamed_addr constant [87 x i64], align 16
@word_mode = external local_unnamed_addr global i32, align 4
@vector_inner_type = internal global ptr null, align 8
@vector_last_nunits = internal global i32 0, align 4
@vector_last_type = internal global ptr null, align 8
@pass_lower_vector_ssa = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.4, ptr @gate_expand_vector_operations, ptr @expand_vector_operations, ptr null, ptr null, i32 0, i32 0, i32 8, i32 0, i32 0, i32 0, i32 2077 } }, align 8
@.str.4 = private unnamed_addr constant [10 x i8] c"veclower2\00", align 1
@flag_tree_vectorize = external local_unnamed_addr global i32, align 4
@gt_ggc_r_gt_tree_vect_generic_h = dso_local local_unnamed_addr constant [3 x %struct.ggc_root_tab] [%struct.ggc_root_tab { ptr @vector_last_type, i64 1, i64 8, ptr @gt_ggc_mx_lang_tree_node, ptr @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab { ptr @vector_inner_type, i64 1, i64 8, ptr @gt_ggc_mx_lang_tree_node, ptr @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab zeroinitializer], align 16
@gt_pch_rs_gt_tree_vect_generic_h = dso_local local_unnamed_addr constant [2 x %struct.ggc_root_tab] [%struct.ggc_root_tab { ptr @vector_last_nunits, i64 1, i64 4, ptr null, ptr null }, %struct.ggc_root_tab zeroinitializer], align 16

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @expand_vector_operations() #0 !prof !94 !PGOFuncName !95 {
  %1 = alloca %struct.gimple_stmt_iterator, align 8
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #10
  %3 = load ptr, ptr @cfun, align 8, !tbaa !96
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !100
  %6 = load ptr, ptr %5, align 8, !tbaa !103
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !105
  %9 = getelementptr inbounds %struct.control_flow_graph, ptr %5, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !108
  %11 = icmp eq ptr %8, %10
  br i1 %11, label %29, label %21, !prof !109

12:                                               ; preds = %25, %21
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %22, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !105
  %15 = load ptr, ptr @cfun, align 8, !tbaa !96
  %16 = getelementptr inbounds %struct.function, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !100
  %18 = getelementptr inbounds %struct.control_flow_graph, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !108
  %20 = icmp eq ptr %14, %19
  br i1 %20, label %29, label %21, !prof !110, !llvm.loop !111

21:                                               ; preds = %0, %12
  %22 = phi ptr [ %14, %12 ], [ %8, %0 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #10
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %22) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !113
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #10
  %23 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #11, !range !114
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %12, !prof !115

25:                                               ; preds = %21, %25
  call fastcc void @expand_vector_operations_1(ptr noundef nonnull %1) #11
  %26 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #11
  call fastcc void @update_stmt_if_modified(ptr noundef %26) #11
  call fastcc void @gsi_next(ptr noundef nonnull %1) #11
  %27 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #11, !range !114
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %25, label %12, !prof !116, !llvm.loop !117

29:                                               ; preds = %12, %0
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #10
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #2 !prof !118 !PGOFuncName !119 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #11
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #11
  store ptr %4, ptr %0, align 8, !tbaa !120
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !122
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !123
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #4 !prof !124 !PGOFuncName !125 {
  %2 = load ptr, ptr %0, align 8, !tbaa !120
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @expand_vector_operations_1(ptr noundef %0) unnamed_addr #0 !prof !126 !PGOFuncName !127 {
  %2 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #11
  %3 = tail call fastcc i32 @gimple_code(ptr noundef %2) #11, !range !128
  %4 = icmp eq i32 %3, 6
  br i1 %4, label %5, label %308, !prof !129

5:                                                ; preds = %1
  %6 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %2) #11, !range !130
  %7 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %6) #11, !range !128
  %8 = add nsw i32 %7, -3
  %9 = icmp ult i32 %8, -2
  br i1 %9, label %308, label %10, !prof !131

10:                                               ; preds = %5
  %11 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %2) #11
  %12 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %2) #11
  %13 = tail call fastcc ptr @gimple_expr_type(ptr noundef %2) #11
  %14 = icmp eq i32 %7, 1
  br i1 %14, label %15, label %17, !prof !132

15:                                               ; preds = %10
  %16 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %2) #11
  br label %17

17:                                               ; preds = %15, %10
  %18 = phi ptr [ %16, %15 ], [ null, %10 ]
  %19 = load i64, ptr %13, align 8
  %20 = and i64 %19, 65535
  %21 = icmp eq i64 %20, 14
  br i1 %21, label %22, label %308, !prof !133

22:                                               ; preds = %17
  %23 = add nsw i32 %6, -77
  %24 = icmp ult i32 %23, 2
  %25 = and i32 %6, 65533
  %26 = icmp eq i32 %25, 116
  %27 = or i1 %26, %24
  br i1 %27, label %308, label %28, !prof !134

28:                                               ; preds = %22
  %29 = icmp eq i32 %6, 113
  br i1 %29, label %30, label %31, !prof !135

30:                                               ; preds = %28
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 426, ptr noundef nonnull @.str.2) #12
  br label %173

31:                                               ; preds = %28
  %32 = and i32 %6, 65534
  %33 = icmp eq i32 %32, 176
  br i1 %33, label %34, label %37, !prof !136

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.tree_common, ptr %12, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !137
  br label %173

37:                                               ; preds = %31
  %38 = add nsw i32 %6, -83
  %39 = icmp ult i32 %38, 4
  br i1 %39, label %40, label %173, !prof !138

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.tree_common, ptr %18, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !137
  %43 = load i64, ptr %42, align 8
  %44 = and i64 %43, 65535
  %45 = icmp eq i64 %44, 14
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = tail call i32 @vector_type_mode(ptr noundef nonnull %42) #12
  br label %53

48:                                               ; preds = %40
  %49 = getelementptr inbounds %struct.tree_type, ptr %42, i64 0, i32 6
  %50 = load i32, ptr %49, align 4
  %51 = lshr i32 %50, 16
  %52 = and i32 %51, 255
  br label %53

53:                                               ; preds = %48, %46
  %54 = phi i32 [ %47, %46 ], [ %52, %48 ]
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %55
  %57 = load i8, ptr %56, align 1, !tbaa !137
  %58 = icmp eq i8 %57, 12
  br i1 %58, label %149, label %59

59:                                               ; preds = %53
  %60 = load ptr, ptr %41, align 8, !tbaa !137
  %61 = load i64, ptr %60, align 8
  %62 = and i64 %61, 65535
  %63 = icmp eq i64 %62, 14
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = tail call i32 @vector_type_mode(ptr noundef nonnull %60) #12
  br label %71

66:                                               ; preds = %59
  %67 = getelementptr inbounds %struct.tree_type, ptr %60, i64 0, i32 6
  %68 = load i32, ptr %67, align 4
  %69 = lshr i32 %68, 16
  %70 = and i32 %69, 255
  br label %71

71:                                               ; preds = %66, %64
  %72 = phi i32 [ %65, %64 ], [ %70, %66 ]
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %73
  %75 = load i8, ptr %74, align 1, !tbaa !137
  %76 = icmp eq i8 %75, 17
  br i1 %76, label %149, label %77

77:                                               ; preds = %71
  %78 = load ptr, ptr %41, align 8, !tbaa !137
  %79 = load i64, ptr %78, align 8
  %80 = and i64 %79, 65535
  %81 = icmp eq i64 %80, 14
  br i1 %81, label %82, label %84

82:                                               ; preds = %77
  %83 = tail call i32 @vector_type_mode(ptr noundef nonnull %78) #12
  br label %89

84:                                               ; preds = %77
  %85 = getelementptr inbounds %struct.tree_type, ptr %78, i64 0, i32 6
  %86 = load i32, ptr %85, align 4
  %87 = lshr i32 %86, 16
  %88 = and i32 %87, 255
  br label %89

89:                                               ; preds = %84, %82
  %90 = phi i32 [ %83, %82 ], [ %88, %84 ]
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %91
  %93 = load i8, ptr %92, align 1, !tbaa !137
  %94 = icmp eq i8 %93, 13
  br i1 %94, label %149, label %95

95:                                               ; preds = %89
  %96 = load ptr, ptr %41, align 8, !tbaa !137
  %97 = load i64, ptr %96, align 8
  %98 = and i64 %97, 65535
  %99 = icmp eq i64 %98, 14
  br i1 %99, label %100, label %102

100:                                              ; preds = %95
  %101 = tail call i32 @vector_type_mode(ptr noundef nonnull %96) #12
  br label %107

102:                                              ; preds = %95
  %103 = getelementptr inbounds %struct.tree_type, ptr %96, i64 0, i32 6
  %104 = load i32, ptr %103, align 4
  %105 = lshr i32 %104, 16
  %106 = and i32 %105, 255
  br label %107

107:                                              ; preds = %102, %100
  %108 = phi i32 [ %101, %100 ], [ %106, %102 ]
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %109
  %111 = load i8, ptr %110, align 1, !tbaa !137
  %112 = icmp eq i8 %111, 14
  br i1 %112, label %149, label %113

113:                                              ; preds = %107
  %114 = load ptr, ptr %41, align 8, !tbaa !137
  %115 = load i64, ptr %114, align 8
  %116 = and i64 %115, 65535
  %117 = icmp eq i64 %116, 14
  br i1 %117, label %118, label %120

118:                                              ; preds = %113
  %119 = tail call i32 @vector_type_mode(ptr noundef nonnull %114) #12
  br label %125

120:                                              ; preds = %113
  %121 = getelementptr inbounds %struct.tree_type, ptr %114, i64 0, i32 6
  %122 = load i32, ptr %121, align 4
  %123 = lshr i32 %122, 16
  %124 = and i32 %123, 255
  br label %125

125:                                              ; preds = %120, %118
  %126 = phi i32 [ %119, %118 ], [ %124, %120 ]
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %127
  %129 = load i8, ptr %128, align 1, !tbaa !137
  %130 = icmp eq i8 %129, 15
  br i1 %130, label %149, label %131

131:                                              ; preds = %125
  %132 = load ptr, ptr %41, align 8, !tbaa !137
  %133 = load i64, ptr %132, align 8
  %134 = and i64 %133, 65535
  %135 = icmp eq i64 %134, 14
  br i1 %135, label %136, label %138

136:                                              ; preds = %131
  %137 = tail call i32 @vector_type_mode(ptr noundef nonnull %132) #12
  br label %143

138:                                              ; preds = %131
  %139 = getelementptr inbounds %struct.tree_type, ptr %132, i64 0, i32 6
  %140 = load i32, ptr %139, align 4
  %141 = lshr i32 %140, 16
  %142 = and i32 %141, 255
  br label %143

143:                                              ; preds = %138, %136
  %144 = phi i32 [ %137, %136 ], [ %142, %138 ]
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %145
  %147 = load i8, ptr %146, align 1, !tbaa !137
  %148 = icmp eq i8 %147, 16
  br i1 %148, label %149, label %151

149:                                              ; preds = %143, %125, %107, %89, %71, %53
  %150 = tail call ptr @optab_for_tree_code(i32 noundef %6, ptr noundef nonnull %13, i32 noundef 2) #12
  br label %177

151:                                              ; preds = %143
  %152 = tail call ptr @optab_for_tree_code(i32 noundef %6, ptr noundef nonnull %13, i32 noundef 1) #12
  %153 = icmp eq ptr %152, null
  br i1 %153, label %171, label %154

154:                                              ; preds = %151
  %155 = load i64, ptr %13, align 8
  %156 = and i64 %155, 65535
  %157 = icmp eq i64 %156, 14
  br i1 %157, label %158, label %160

158:                                              ; preds = %154
  %159 = tail call i32 @vector_type_mode(ptr noundef nonnull %13) #12
  br label %165

160:                                              ; preds = %154
  %161 = getelementptr inbounds %struct.tree_type, ptr %13, i64 0, i32 6
  %162 = load i32, ptr %161, align 4
  %163 = lshr i32 %162, 16
  %164 = and i32 %163, 255
  br label %165

165:                                              ; preds = %160, %158
  %166 = phi i32 [ %159, %158 ], [ %164, %160 ]
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.optab_d, ptr %152, i64 0, i32 4, i64 %167
  %169 = load i32, ptr %168, align 4, !tbaa !139
  %170 = icmp eq i32 %169, 2956
  br i1 %170, label %171, label %177

171:                                              ; preds = %165, %151
  %172 = tail call ptr @optab_for_tree_code(i32 noundef %6, ptr noundef nonnull %13, i32 noundef 2) #12
  br label %177

173:                                              ; preds = %34, %30, %37
  %174 = phi ptr [ %13, %37 ], [ %13, %30 ], [ %36, %34 ]
  %175 = phi i32 [ %32, %37 ], [ 112, %30 ], [ 176, %34 ]
  %176 = tail call ptr @optab_for_tree_code(i32 noundef %6, ptr noundef %174, i32 noundef 0) #12
  br label %177

177:                                              ; preds = %149, %171, %165, %173
  %178 = phi ptr [ %13, %149 ], [ %13, %171 ], [ %13, %165 ], [ %174, %173 ]
  %179 = phi i32 [ %32, %149 ], [ %32, %171 ], [ %32, %165 ], [ %175, %173 ]
  %180 = phi ptr [ %150, %149 ], [ %172, %171 ], [ %152, %165 ], [ %176, %173 ]
  %181 = and i32 %6, 65531
  %182 = icmp eq i32 %181, 168
  %183 = add nsw i32 %6, -173
  %184 = icmp ult i32 %183, 3
  %185 = or i1 %182, %184
  %186 = icmp eq i32 %179, 178
  %187 = or i1 %185, %186
  %188 = icmp eq i32 %6, 180
  %189 = or i1 %188, %187
  br i1 %189, label %190, label %193, !prof !141

190:                                              ; preds = %177
  %191 = getelementptr inbounds %struct.tree_common, ptr %12, i64 0, i32 2
  %192 = load ptr, ptr %191, align 8, !tbaa !137
  br label %193

193:                                              ; preds = %177, %190
  %194 = phi ptr [ %192, %190 ], [ %178, %177 ]
  %195 = icmp eq ptr %180, null
  %196 = icmp eq i32 %6, 79
  %197 = and i1 %196, %195
  br i1 %197, label %198, label %208, !prof !142

198:                                              ; preds = %193
  %199 = getelementptr inbounds %struct.tree_common, ptr %194, i64 0, i32 2
  %200 = load ptr, ptr %199, align 8, !tbaa !137
  %201 = load i64, ptr %200, align 8
  %202 = trunc i64 %201 to i32
  %203 = and i32 %202, 65535
  %204 = add nsw i32 %203, -6
  %205 = icmp ult i32 %204, 3
  br i1 %205, label %206, label %208

206:                                              ; preds = %198
  %207 = tail call ptr @optab_for_tree_code(i32 noundef 64, ptr noundef nonnull %194, i32 noundef 0) #12
  br label %208

208:                                              ; preds = %198, %206, %193
  %209 = phi ptr [ %207, %206 ], [ %180, %193 ], [ null, %198 ]
  %210 = load i64, ptr %194, align 8
  %211 = and i64 %210, 65535
  %212 = icmp eq i64 %211, 14
  br i1 %212, label %213, label %215, !prof !143

213:                                              ; preds = %208
  %214 = tail call i32 @vector_type_mode(ptr noundef nonnull %194) #12
  br label %220

215:                                              ; preds = %208
  %216 = getelementptr inbounds %struct.tree_type, ptr %194, i64 0, i32 6
  %217 = load i32, ptr %216, align 4
  %218 = lshr i32 %217, 16
  %219 = and i32 %218, 255
  br label %220

220:                                              ; preds = %215, %213
  %221 = phi i32 [ %214, %213 ], [ %219, %215 ]
  %222 = icmp eq i32 %221, 1
  %223 = icmp ne ptr %209, null
  %224 = select i1 %222, i1 %223, i1 false
  br i1 %224, label %225, label %261, !prof !142

225:                                              ; preds = %220
  %226 = getelementptr inbounds %struct.tree_common, ptr %194, i64 0, i32 2
  %227 = load ptr, ptr %226, align 8, !tbaa !137
  %228 = load i64, ptr %227, align 8
  %229 = and i64 %228, 65535
  %230 = icmp eq i64 %229, 14
  br i1 %230, label %231, label %235

231:                                              ; preds = %225
  %232 = tail call i32 @vector_type_mode(ptr noundef nonnull %227) #12
  %233 = load ptr, ptr %226, align 8, !tbaa !137
  %234 = load i64, ptr %233, align 8
  br label %240

235:                                              ; preds = %225
  %236 = getelementptr inbounds %struct.tree_type, ptr %227, i64 0, i32 6
  %237 = load i32, ptr %236, align 4
  %238 = lshr i32 %237, 16
  %239 = and i32 %238, 255
  br label %240

240:                                              ; preds = %235, %231
  %241 = phi i64 [ %234, %231 ], [ %228, %235 ]
  %242 = phi i32 [ %232, %231 ], [ %239, %235 ]
  %243 = trunc i64 %241 to i32
  %244 = lshr i32 %243, 31
  %245 = tail call fastcc ptr @type_for_widest_vector_mode(i32 noundef %242, ptr noundef nonnull %209, i32 noundef %244) #11
  %246 = icmp eq ptr %245, null
  br i1 %246, label %261, label %247

247:                                              ; preds = %240
  %248 = getelementptr inbounds %struct.tree_type, ptr %245, i64 0, i32 6
  %249 = load i32, ptr %248, align 4
  %250 = and i32 %249, 1023
  %251 = zext nneg i32 %250 to i64
  %252 = shl nuw i64 1, %251
  %253 = getelementptr inbounds %struct.tree_type, ptr %194, i64 0, i32 6
  %254 = load i32, ptr %253, align 4
  %255 = and i32 %254, 1023
  %256 = zext nneg i32 %255 to i64
  %257 = shl nuw i64 1, %256
  %258 = icmp ult i64 %252, %257
  %259 = select i1 %258, ptr %245, ptr %194
  %260 = icmp eq ptr %259, %194
  br i1 %260, label %261, label %289, !prof !144

261:                                              ; preds = %240, %220, %247
  %262 = load i64, ptr %194, align 8
  %263 = and i64 %262, 65535
  %264 = icmp eq i64 %263, 14
  br i1 %264, label %265, label %267, !prof !143

265:                                              ; preds = %261
  %266 = tail call i32 @vector_type_mode(ptr noundef nonnull %194) #12
  br label %272

267:                                              ; preds = %261
  %268 = getelementptr inbounds %struct.tree_type, ptr %194, i64 0, i32 6
  %269 = load i32, ptr %268, align 4
  %270 = lshr i32 %269, 16
  %271 = and i32 %270, 255
  br label %272

272:                                              ; preds = %267, %265
  %273 = phi i32 [ %266, %265 ], [ %271, %267 ]
  %274 = zext i32 %273 to i64
  %275 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %274
  %276 = load i8, ptr %275, align 1, !tbaa !137
  switch i8 %276, label %277 [
    i8 12, label %280
    i8 17, label %280
    i8 13, label %280
    i8 14, label %280
    i8 15, label %280
  ], !prof !145

277:                                              ; preds = %272
  %278 = icmp eq i8 %276, 16
  %279 = select i1 %278, i1 %223, i1 false
  br i1 %279, label %281, label %286, !prof !142

280:                                              ; preds = %272, %272, %272, %272, %272
  br i1 %223, label %281, label %286

281:                                              ; preds = %277, %280
  %282 = sext i32 %273 to i64
  %283 = getelementptr inbounds %struct.optab_d, ptr %209, i64 0, i32 4, i64 %282
  %284 = load i32, ptr %283, align 4, !tbaa !139
  %285 = icmp eq i32 %284, 2956
  br i1 %285, label %286, label %308

286:                                              ; preds = %281, %280, %277
  %287 = getelementptr inbounds %struct.tree_common, ptr %194, i64 0, i32 2
  %288 = load ptr, ptr %287, align 8, !tbaa !137
  br label %289

289:                                              ; preds = %286, %247
  %290 = phi ptr [ %288, %286 ], [ %259, %247 ]
  %291 = add nsw i32 %6, -172
  %292 = icmp ult i32 %291, -2
  br i1 %292, label %294, label %293, !prof !146

293:                                              ; preds = %289
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 511, ptr noundef nonnull @.str.2) #12
  br label %294

294:                                              ; preds = %289, %293
  %295 = tail call fastcc ptr @expand_vector_operation(ptr noundef %0, ptr noundef nonnull %194, ptr noundef %290, ptr noundef %2, i32 noundef %6) #11
  %296 = getelementptr inbounds %struct.tree_common, ptr %11, i64 0, i32 2
  %297 = load ptr, ptr %296, align 8, !tbaa !137
  %298 = getelementptr inbounds %struct.tree_common, ptr %295, i64 0, i32 2
  %299 = load ptr, ptr %298, align 8, !tbaa !137
  %300 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %297, ptr noundef %299) #12
  %301 = icmp eq i8 %300, 0
  br i1 %301, label %302, label %305, !prof !143

302:                                              ; preds = %294
  %303 = load ptr, ptr %296, align 8, !tbaa !137
  %304 = tail call ptr @gimplify_build1(ptr noundef %0, i32 noundef 118, ptr noundef %303, ptr noundef nonnull %295) #12
  br label %305

305:                                              ; preds = %302, %294
  %306 = phi ptr [ %295, %294 ], [ %304, %302 ]
  tail call void @gimple_assign_set_rhs_from_tree(ptr noundef %0, ptr noundef %306) #12
  %307 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #11
  tail call void @gimple_set_modified(ptr noundef %307, i8 noundef zeroext 1) #12
  br label %308

308:                                              ; preds = %281, %22, %17, %5, %1, %305
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_stmt_if_modified(ptr noundef %0) unnamed_addr #0 !prof !126 !PGOFuncName !147 {
  %2 = tail call fastcc zeroext i8 @gimple_modified_p(ptr noundef %0) #11, !range !114
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %5, label %4, !prof !148

4:                                                ; preds = %1
  tail call void @update_stmt_operands(ptr noundef %0) #12
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #5 !prof !149 !PGOFuncName !150 {
  %2 = load ptr, ptr %0, align 8, !tbaa !120
  %3 = load ptr, ptr %2, align 8, !tbaa !151
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #2 !prof !126 !PGOFuncName !153 {
  %2 = load ptr, ptr %0, align 8, !tbaa !120
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !154
  store ptr %4, ptr %0, align 8, !tbaa !120
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !118 !PGOFuncName !155 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !156
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12, !prof !157

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !137
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10, !prof !158

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !159
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #4 !prof !118 !PGOFuncName !161 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !158

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !162
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !164 !PGOFuncName !165 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) unnamed_addr #0 !prof !166 !PGOFuncName !167 {
  %2 = tail call fastcc i32 @gimple_expr_code(ptr noundef %0) #11, !range !130
  %3 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %2) #11, !range !128
  %4 = icmp eq i32 %3, 3
  br i1 %4, label %5, label %10, !prof !168

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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @get_gimple_rhs_class(i32 noundef %0) unnamed_addr #6 !prof !169 !PGOFuncName !170 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %2
  %4 = load i8, ptr %3, align 1, !tbaa !137
  %5 = zext i8 %4 to i32
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_lhs(ptr noundef %0) unnamed_addr #0 !prof !171 !PGOFuncName !172 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #11
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs1(ptr noundef %0) unnamed_addr #0 !prof !173 !PGOFuncName !174 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #11
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_expr_type(ptr noundef %0) unnamed_addr #0 !prof !171 !PGOFuncName !175 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #11, !range !128
  %3 = trunc i32 %2 to i8
  switch i8 %3, label %19 [
    i8 8, label %4
    i8 6, label %6
    i8 1, label %17
  ], !prof !176

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_call_return_type(ptr noundef %0) #11
  br label %21

6:                                                ; preds = %1
  %7 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #11, !range !130
  %8 = icmp eq i32 %7, 66
  br i1 %8, label %9, label %13, !prof !177

9:                                                ; preds = %6
  %10 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #11
  %11 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !137
  br label %21

13:                                               ; preds = %6
  %14 = tail call ptr @gimple_get_lhs(ptr noundef %0) #12
  %15 = getelementptr inbounds %struct.tree_common, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !137
  br label %21

17:                                               ; preds = %1
  %18 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !96
  br label %21

19:                                               ; preds = %1
  %20 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !96
  br label %21

21:                                               ; preds = %4, %13, %9, %19, %17
  %22 = phi ptr [ %18, %17 ], [ %20, %19 ], [ %5, %4 ], [ %12, %9 ], [ %16, %13 ]
  ret ptr %22
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs2(ptr noundef %0) unnamed_addr #0 !prof !178 !PGOFuncName !179 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #11
  %3 = icmp ugt i32 %2, 2
  br i1 %3, label %4, label %6, !prof !180

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 2) #11
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi ptr [ %5, %4 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare i32 @vector_type_mode(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @optab_for_tree_code(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @type_for_widest_vector_mode(i32 noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 !prof !181 !PGOFuncName !182 {
  %4 = zext i32 %0 to i64
  %5 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %4
  %6 = load i8, ptr %5, align 1, !tbaa !137
  switch i8 %6, label %7 [
    i8 8, label %8
    i8 9, label %8
    i8 4, label %48
    i8 5, label %48
    i8 6, label %48
    i8 7, label %48
  ]

7:                                                ; preds = %3
  br label %8

8:                                                ; preds = %7, %3, %3
  %9 = phi i32 [ 78, %3 ], [ 78, %3 ], [ 55, %7 ]
  br label %10

10:                                               ; preds = %8, %30
  %11 = phi i32 [ %32, %30 ], [ 0, %8 ]
  %12 = phi i32 [ %35, %30 ], [ %9, %8 ]
  %13 = phi i32 [ %31, %30 ], [ 0, %8 ]
  %14 = zext nneg i32 %12 to i64
  %15 = getelementptr inbounds [87 x i8], ptr @mode_inner, i64 0, i64 %14
  %16 = load i8, ptr %15, align 1, !tbaa !137
  %17 = zext i8 %16 to i32
  %18 = icmp eq i32 %17, %0
  br i1 %18, label %19, label %30

19:                                               ; preds = %10
  %20 = getelementptr inbounds [87 x i8], ptr @mode_nunits, i64 0, i64 %14
  %21 = load i8, ptr %20, align 1, !tbaa !137
  %22 = zext i8 %21 to i32
  %23 = icmp slt i32 %11, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.optab_d, ptr %1, i64 0, i32 4, i64 %14
  %26 = load i32, ptr %25, align 4, !tbaa !139
  %27 = icmp eq i32 %26, 2956
  %28 = select i1 %27, i32 %13, i32 %12
  %29 = select i1 %27, i32 %11, i32 %22
  br label %30

30:                                               ; preds = %24, %10, %19
  %31 = phi i32 [ %13, %19 ], [ %13, %10 ], [ %28, %24 ]
  %32 = phi i32 [ %11, %19 ], [ %11, %10 ], [ %29, %24 ]
  %33 = getelementptr inbounds [87 x i8], ptr @mode_wider, i64 0, i64 %14
  %34 = load i8, ptr %33, align 1, !tbaa !137
  %35 = zext i8 %34 to i32
  %36 = icmp eq i8 %34, 0
  br i1 %36, label %37, label %10, !llvm.loop !183

37:                                               ; preds = %30
  %38 = icmp eq i32 %31, 0
  br i1 %38, label %48, label %39

39:                                               ; preds = %37
  %40 = zext i32 %31 to i64
  %41 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %40
  %42 = load i8, ptr %41, align 1, !tbaa !137
  switch i8 %42, label %43 [
    i8 4, label %44
    i8 13, label %44
    i8 6, label %44
    i8 15, label %44
    i8 5, label %44
    i8 14, label %44
    i8 7, label %44
    i8 16, label %44
  ]

43:                                               ; preds = %39
  br label %44

44:                                               ; preds = %39, %39, %39, %39, %39, %39, %39, %39, %43
  %45 = phi i32 [ 1, %43 ], [ %2, %39 ], [ %2, %39 ], [ %2, %39 ], [ %2, %39 ], [ %2, %39 ], [ %2, %39 ], [ %2, %39 ], [ %2, %39 ]
  %46 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 2), align 8, !tbaa !184
  %47 = tail call ptr %46(i32 noundef %31, i32 noundef %45) #12
  br label %48

48:                                               ; preds = %44, %3, %3, %3, %3, %37
  %49 = phi ptr [ null, %37 ], [ null, %3 ], [ null, %3 ], [ null, %3 ], [ null, %3 ], [ %47, %44 ]
  ret ptr %49
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @expand_vector_operation(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 !prof !192 !PGOFuncName !193 {
  %6 = load i64, ptr %2, align 8
  %7 = and i64 %6, 65535
  %8 = icmp eq i64 %7, 14
  br i1 %8, label %9, label %11, !prof !135

9:                                                ; preds = %5
  %10 = tail call i32 @vector_type_mode(ptr noundef nonnull %2) #12
  br label %16

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 6
  %13 = load i32, ptr %12, align 4
  %14 = lshr i32 %13, 16
  %15 = and i32 %14, 255
  br label %16

16:                                               ; preds = %11, %9
  %17 = phi i32 [ %10, %9 ], [ %15, %11 ]
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %18
  %20 = load i8, ptr %19, align 1, !tbaa !137
  %21 = add i8 %20, -12
  %22 = icmp ult i8 %21, 6
  br i1 %22, label %52, label %23, !prof !194

23:                                               ; preds = %16
  switch i32 %4, label %52 [
    i32 63, label %24
    i32 64, label %24
    i32 79, label %35
    i32 89, label %45
    i32 87, label %45
    i32 88, label %45
    i32 90, label %49
  ], !prof !195

24:                                               ; preds = %23, %23
  %25 = load i64, ptr %1, align 8
  %26 = and i64 %25, 2097152
  %27 = icmp eq i64 %26, 0
  %28 = load i32, ptr @flag_trapv, align 4
  %29 = icmp ne i32 %28, 0
  %30 = select i1 %27, i1 %29, i1 false
  br i1 %30, label %52, label %31

31:                                               ; preds = %24
  %32 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %3) #11
  %33 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %3) #11
  %34 = tail call fastcc ptr @expand_vector_addition(ptr noundef %0, ptr noundef nonnull @do_binop, ptr noundef nonnull @do_plus_minus, ptr noundef nonnull %1, ptr noundef %32, ptr noundef %33, i32 noundef %4) #11
  br label %63

35:                                               ; preds = %23
  %36 = load i64, ptr %1, align 8
  %37 = and i64 %36, 2097152
  %38 = icmp eq i64 %37, 0
  %39 = load i32, ptr @flag_trapv, align 4
  %40 = icmp ne i32 %39, 0
  %41 = select i1 %38, i1 %40, i1 false
  br i1 %41, label %52, label %42

42:                                               ; preds = %35
  %43 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %3) #11
  %44 = tail call fastcc ptr @expand_vector_addition(ptr noundef %0, ptr noundef nonnull @do_unop, ptr noundef nonnull @do_negate, ptr noundef nonnull %1, ptr noundef %43, ptr noundef null, i32 noundef 79) #11
  br label %63

45:                                               ; preds = %23, %23, %23
  %46 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %3) #11
  %47 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %3) #11
  %48 = tail call fastcc ptr @expand_vector_parallel(ptr noundef %0, ptr noundef nonnull @do_binop, ptr noundef %1, ptr noundef %46, ptr noundef %47, i32 noundef %4) #11
  br label %63

49:                                               ; preds = %23
  %50 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %3) #11
  %51 = tail call fastcc ptr @expand_vector_parallel(ptr noundef %0, ptr noundef nonnull @do_unop, ptr noundef %1, ptr noundef %50, ptr noundef null, i32 noundef 90) #11
  br label %63

52:                                               ; preds = %16, %24, %35, %23
  %53 = zext nneg i32 %4 to i64
  %54 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %53
  %55 = load i32, ptr %54, align 4, !tbaa !196
  %56 = icmp eq i32 %55, 6
  %57 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %3) #11
  br i1 %56, label %58, label %60

58:                                               ; preds = %52
  %59 = tail call fastcc ptr @expand_vector_piecewise(ptr noundef %0, ptr noundef nonnull @do_unop, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %57, ptr noundef null, i32 noundef %4) #11
  br label %63

60:                                               ; preds = %52
  %61 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %3) #11
  %62 = tail call fastcc ptr @expand_vector_piecewise(ptr noundef %0, ptr noundef nonnull @do_binop, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %57, ptr noundef %61, i32 noundef %4) #11
  br label %63

63:                                               ; preds = %60, %58, %49, %45, %42, %31
  %64 = phi ptr [ %59, %58 ], [ %62, %60 ], [ %51, %49 ], [ %48, %45 ], [ %44, %42 ], [ %34, %31 ]
  ret ptr %64
}

; Function Attrs: optsize
declare zeroext i8 @useless_type_conversion_p(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @gimplify_build1(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @gimple_assign_set_rhs_from_tree(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @gimple_set_modified(ptr noundef, i8 noundef zeroext) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_expr_code(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !166 !PGOFuncName !197 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #11, !range !128
  %3 = trunc i32 %2 to i8
  switch i8 %3, label %7 [
    i8 6, label %4
    i8 1, label %4
    i8 8, label %8
  ], !prof !198

4:                                                ; preds = %1, %1
  %5 = load i32, ptr %0, align 8
  %6 = lshr i32 %5, 16
  br label %8

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1446, ptr noundef nonnull @.str.2) #12
  br label %8

8:                                                ; preds = %1, %7, %4
  %9 = phi i32 [ %6, %4 ], [ 0, %7 ], [ 59, %1 ]
  ret i32 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !199 !PGOFuncName !200 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #11, !range !114
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5, !prof !201

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #11
  %7 = zext nneg i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !96
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !202 !PGOFuncName !203 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #11, !range !128
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #0 !prof !199 !PGOFuncName !204 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #11
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !205
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8, !prof !201

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.2) #12
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !199 !PGOFuncName !206 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #11, !range !128
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #11
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #6 !prof !199 !PGOFuncName !207 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !196
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_return_type(ptr noundef %0) unnamed_addr #0 !prof !181 !PGOFuncName !208 {
  %2 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #11
  %3 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !137
  %5 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !137
  %7 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !137
  ret ptr %8
}

; Function Attrs: optsize
declare ptr @gimple_get_lhs(ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fn(ptr noundef %0) unnamed_addr #0 !prof !181 !PGOFuncName !209 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #11
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_num_ops(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !178 !PGOFuncName !210 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !137
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @expand_vector_addition(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6) unnamed_addr #0 !prof !181 !PGOFuncName !211 {
  %8 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !137
  %10 = getelementptr inbounds %struct.tree_type, ptr %9, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !137
  %12 = tail call i64 @tree_low_cst(ptr noundef %11, i32 noundef 1) #12
  %13 = sdiv i64 4, %12
  %14 = trunc i64 %13 to i32
  %15 = load ptr, ptr %8, align 8, !tbaa !137
  %16 = load i64, ptr %15, align 8
  %17 = trunc i64 %16 to i32
  %18 = and i32 %17, 65534
  %19 = icmp eq i32 %18, 6
  br i1 %19, label %25, label %20

20:                                               ; preds = %7
  %21 = and i32 %17, 65535
  %22 = icmp eq i32 %21, 8
  %23 = icmp sgt i32 %14, 3
  %24 = and i1 %23, %22
  br i1 %24, label %27, label %34

25:                                               ; preds = %7
  %26 = icmp sgt i32 %14, 3
  br i1 %26, label %27, label %34

27:                                               ; preds = %20, %25
  %28 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 6
  %29 = load i32, ptr %28, align 4
  %30 = and i32 %29, 1022
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %27
  %33 = tail call fastcc ptr @expand_vector_parallel(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %3, ptr noundef %4, ptr noundef %5, i32 noundef %6) #11
  br label %36

34:                                               ; preds = %27, %25, %20
  %35 = tail call fastcc ptr @expand_vector_piecewise(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %15, ptr noundef %4, ptr noundef %5, i32 noundef %6) #11
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi ptr [ %33, %32 ], [ %35, %34 ]
  ret ptr %37
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @do_binop(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6) #0 !prof !192 !PGOFuncName !212 {
  %8 = tail call fastcc ptr @tree_vec_extract(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %5, ptr noundef %4) #11
  %9 = tail call fastcc ptr @tree_vec_extract(ptr noundef %0, ptr noundef %1, ptr noundef %3, ptr noundef %5, ptr noundef %4) #11
  %10 = tail call ptr @gimplify_build2(ptr noundef %0, i32 noundef %6, ptr noundef %1, ptr noundef %8, ptr noundef %9) #12
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @do_plus_minus(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6) #0 !prof !181 !PGOFuncName !213 {
  %8 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !137
  %10 = getelementptr inbounds %struct.tree_common, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !137
  %12 = load i64, ptr %11, align 8
  %13 = and i64 %12, 65535
  %14 = icmp eq i64 %13, 14
  br i1 %14, label %15, label %17

15:                                               ; preds = %7
  %16 = tail call i32 @vector_type_mode(ptr noundef nonnull %11) #12
  br label %22

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.tree_type, ptr %11, i64 0, i32 6
  %19 = load i32, ptr %18, align 4
  %20 = lshr i32 %19, 16
  %21 = and i32 %20, 255
  br label %22

22:                                               ; preds = %17, %15
  %23 = phi i32 [ %16, %15 ], [ %21, %17 ]
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %24
  %26 = load i64, ptr %25, align 8, !tbaa !205
  %27 = lshr i64 %26, 1
  %28 = tail call fastcc ptr @build_replicated_const(ptr noundef %1, ptr noundef nonnull %11, i64 noundef %27) #11
  %29 = xor i64 %27, -1
  %30 = and i64 %26, %29
  %31 = tail call fastcc ptr @build_replicated_const(ptr noundef %1, ptr noundef nonnull %11, i64 noundef %30) #11
  %32 = tail call fastcc ptr @tree_vec_extract(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %5, ptr noundef %4) #11
  %33 = tail call fastcc ptr @tree_vec_extract(ptr noundef %0, ptr noundef %1, ptr noundef %3, ptr noundef %5, ptr noundef %4) #11
  %34 = tail call ptr @gimplify_build2(ptr noundef %0, i32 noundef 88, ptr noundef %1, ptr noundef %32, ptr noundef %33) #12
  %35 = tail call ptr @gimplify_build2(ptr noundef %0, i32 noundef 89, ptr noundef %1, ptr noundef %33, ptr noundef %28) #12
  %36 = icmp eq i32 %6, 63
  br i1 %36, label %37, label %39

37:                                               ; preds = %22
  %38 = tail call ptr @gimplify_build2(ptr noundef %0, i32 noundef 89, ptr noundef %1, ptr noundef %32, ptr noundef %28) #12
  br label %42

39:                                               ; preds = %22
  %40 = tail call ptr @gimplify_build2(ptr noundef %0, i32 noundef 87, ptr noundef %1, ptr noundef %32, ptr noundef %31) #12
  %41 = tail call ptr @gimplify_build1(ptr noundef %0, i32 noundef 90, ptr noundef %1, ptr noundef %34) #12
  br label %42

42:                                               ; preds = %39, %37
  %43 = phi ptr [ %38, %37 ], [ %40, %39 ]
  %44 = phi ptr [ %34, %37 ], [ %41, %39 ]
  %45 = tail call ptr @gimplify_build2(ptr noundef %0, i32 noundef 89, ptr noundef %1, ptr noundef %44, ptr noundef %31) #12
  %46 = tail call ptr @gimplify_build2(ptr noundef %0, i32 noundef %6, ptr noundef %1, ptr noundef %43, ptr noundef %35) #12
  %47 = tail call ptr @gimplify_build2(ptr noundef %0, i32 noundef 88, ptr noundef %1, ptr noundef %46, ptr noundef %45) #12
  ret ptr %47
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @do_unop(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture readnone %3, ptr noundef %4, ptr noundef %5, i32 noundef %6) #0 !prof !181 !PGOFuncName !214 {
  %8 = tail call fastcc ptr @tree_vec_extract(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %5, ptr noundef %4) #11
  %9 = tail call ptr @gimplify_build1(ptr noundef %0, i32 noundef %6, ptr noundef %1, ptr noundef %8) #12
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @do_negate(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture readnone %3, ptr noundef %4, ptr noundef %5, i32 %6) #0 !prof !181 !PGOFuncName !215 {
  %8 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !137
  %10 = getelementptr inbounds %struct.tree_common, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !137
  %12 = load i64, ptr %11, align 8
  %13 = and i64 %12, 65535
  %14 = icmp eq i64 %13, 14
  br i1 %14, label %15, label %17

15:                                               ; preds = %7
  %16 = tail call i32 @vector_type_mode(ptr noundef nonnull %11) #12
  br label %22

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.tree_type, ptr %11, i64 0, i32 6
  %19 = load i32, ptr %18, align 4
  %20 = lshr i32 %19, 16
  %21 = and i32 %20, 255
  br label %22

22:                                               ; preds = %17, %15
  %23 = phi i32 [ %16, %15 ], [ %21, %17 ]
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds [87 x i64], ptr @mode_mask_array, i64 0, i64 %24
  %26 = load i64, ptr %25, align 8, !tbaa !205
  %27 = ashr i64 %26, 1
  %28 = tail call fastcc ptr @build_replicated_const(ptr noundef %1, ptr noundef nonnull %11, i64 noundef %27) #11
  %29 = xor i64 %27, -1
  %30 = and i64 %26, %29
  %31 = tail call fastcc ptr @build_replicated_const(ptr noundef %1, ptr noundef nonnull %11, i64 noundef %30) #11
  %32 = tail call fastcc ptr @tree_vec_extract(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %5, ptr noundef %4) #11
  %33 = tail call ptr @gimplify_build2(ptr noundef %0, i32 noundef 89, ptr noundef %1, ptr noundef %32, ptr noundef %28) #12
  %34 = tail call ptr @gimplify_build1(ptr noundef %0, i32 noundef 90, ptr noundef %1, ptr noundef %32) #12
  %35 = tail call ptr @gimplify_build2(ptr noundef %0, i32 noundef 89, ptr noundef %1, ptr noundef %34, ptr noundef %31) #12
  %36 = tail call ptr @gimplify_build2(ptr noundef %0, i32 noundef 64, ptr noundef %1, ptr noundef %31, ptr noundef %33) #12
  %37 = tail call ptr @gimplify_build2(ptr noundef %0, i32 noundef 88, ptr noundef %1, ptr noundef %36, ptr noundef %35) #12
  ret ptr %37
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @expand_vector_parallel(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) unnamed_addr #0 !prof !192 !PGOFuncName !216 {
  %7 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !137
  %9 = tail call i64 @tree_low_cst(ptr noundef %8, i32 noundef 1) #12
  %10 = sdiv i64 %9, 4
  %11 = trunc i64 %10 to i32
  %12 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !137
  %14 = load i64, ptr %13, align 8
  %15 = and i64 %14, 65535
  %16 = icmp eq i64 %15, 14
  br i1 %16, label %17, label %19, !prof !135

17:                                               ; preds = %6
  %18 = tail call i32 @vector_type_mode(ptr noundef nonnull %13) #12
  br label %24

19:                                               ; preds = %6
  %20 = getelementptr inbounds %struct.tree_type, ptr %13, i64 0, i32 6
  %21 = load i32, ptr %20, align 4
  %22 = lshr i32 %21, 16
  %23 = and i32 %22, 255
  br label %24

24:                                               ; preds = %19, %17
  %25 = phi i32 [ %18, %17 ], [ %23, %19 ]
  %26 = load i32, ptr @word_mode, align 4, !tbaa !196
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %31, !prof !135

28:                                               ; preds = %24
  %29 = load ptr, ptr %12, align 8, !tbaa !137
  %30 = tail call fastcc ptr @expand_vector_piecewise(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %29, ptr noundef %3, ptr noundef %4, i32 noundef %5) #11
  br label %48

31:                                               ; preds = %24
  %32 = icmp sgt i32 %11, 1
  br i1 %32, label %33, label %39, !prof !135

33:                                               ; preds = %31
  %34 = tail call fastcc ptr @build_word_mode_vector_type(i32 noundef %11) #11
  %35 = getelementptr inbounds %struct.tree_common, ptr %34, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !137
  %37 = tail call fastcc ptr @expand_vector_piecewise(ptr noundef %0, ptr noundef %1, ptr noundef %34, ptr noundef %36, ptr noundef %3, ptr noundef %4, i32 noundef %5) #11
  %38 = tail call ptr @force_gimple_operand_gsi(ptr noundef %0, ptr noundef %37, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #12
  br label %48

39:                                               ; preds = %31
  %40 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !137
  %42 = tail call i64 @tree_low_cst(ptr noundef %41, i32 noundef 1) #12
  %43 = trunc i64 %42 to i32
  %44 = tail call i32 @mode_for_size(i32 noundef %43, i32 noundef 2, i32 noundef 0) #12
  %45 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 2), align 8, !tbaa !184
  %46 = tail call ptr %45(i32 noundef %44, i32 noundef 1) #12
  %47 = tail call ptr %1(ptr noundef %0, ptr noundef %46, ptr noundef %3, ptr noundef %4, ptr noundef null, ptr noundef null, i32 noundef %5) #12, !callees !217
  br label %48

48:                                               ; preds = %39, %33, %28
  %49 = phi ptr [ %30, %28 ], [ %38, %33 ], [ %47, %39 ]
  ret ptr %49
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @expand_vector_piecewise(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6) unnamed_addr #0 !prof !181 !PGOFuncName !218 {
  %8 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !137
  %10 = tail call ptr @size_int_kind(i64 noundef 0, i32 noundef 2) #12
  %11 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 6
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %12, 1023
  %14 = zext nneg i32 %13 to i64
  %15 = shl nuw i64 1, %14
  %16 = trunc i64 %15 to i32
  %17 = tail call i64 @tree_low_cst(ptr noundef %9, i32 noundef 1) #12
  %18 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !137
  %20 = getelementptr inbounds %struct.tree_type, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !137
  %22 = tail call i64 @tree_low_cst(ptr noundef %21, i32 noundef 1) #12
  %23 = sdiv i64 %17, %22
  %24 = trunc i64 %23 to i32
  %25 = add i32 %16, -1
  %26 = add i32 %25, %24
  %27 = sdiv i32 %26, %24
  %28 = tail call fastcc ptr @VEC_constructor_elt_gc_alloc(i32 noundef %27) #11
  %29 = icmp sgt i32 %16, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %7, %30
  %31 = phi ptr [ %37, %30 ], [ %10, %7 ]
  %32 = phi i32 [ %36, %30 ], [ 0, %7 ]
  %33 = tail call ptr %1(ptr noundef %0, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %31, ptr noundef %9, i32 noundef %6) #12, !callees !217
  %34 = tail call fastcc ptr @VEC_constructor_elt_base_quick_push(ptr noundef %28) #11
  store ptr null, ptr %34, align 8, !tbaa !219
  %35 = getelementptr inbounds %struct.constructor_elt_d, ptr %34, i64 0, i32 1
  store ptr %33, ptr %35, align 8, !tbaa !221
  %36 = add nsw i32 %32, %24
  %37 = tail call ptr @int_const_binop(i32 noundef 63, ptr noundef %31, ptr noundef %9, i32 noundef 0) #12
  %38 = icmp slt i32 %36, %16
  br i1 %38, label %30, label %39, !llvm.loop !222

39:                                               ; preds = %30, %7
  %40 = tail call ptr @build_constructor(ptr noundef %2, ptr noundef %28) #12
  ret ptr %40
}

; Function Attrs: optsize
declare i64 @tree_low_cst(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @tree_vec_extract(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 !prof !223 !PGOFuncName !224 {
  %6 = icmp eq ptr %4, null
  br i1 %6, label %9, label %7, !prof !225

7:                                                ; preds = %5
  %8 = tail call ptr @gimplify_build3(ptr noundef %0, i32 noundef 42, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4) #12
  br label %11

9:                                                ; preds = %5
  %10 = tail call ptr @gimplify_build1(ptr noundef %0, i32 noundef 118, ptr noundef %1, ptr noundef %2) #12
  br label %11

11:                                               ; preds = %9, %7
  %12 = phi ptr [ %8, %7 ], [ %10, %9 ]
  ret ptr %12
}

; Function Attrs: optsize
declare ptr @gimplify_build2(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @gimplify_build3(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @build_replicated_const(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) unnamed_addr #0 !prof !181 !PGOFuncName !226 {
  %4 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !137
  %6 = tail call i64 @tree_low_cst(ptr noundef %5, i32 noundef 1) #12
  %7 = trunc i64 %6 to i32
  %8 = sdiv i32 64, %7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 51, ptr noundef nonnull @.str.2) #12
  br label %11

11:                                               ; preds = %3, %10
  %12 = icmp eq i32 %7, 64
  br i1 %12, label %20, label %13

13:                                               ; preds = %11
  %14 = and i64 %6, 4294967295
  %15 = shl nsw i64 -1, %14
  %16 = xor i64 %15, -1
  %17 = udiv i64 -1, %16
  %18 = and i64 %16, %2
  %19 = mul i64 %17, %18
  br label %20

20:                                               ; preds = %11, %13
  %21 = phi i64 [ %19, %13 ], [ %2, %11 ]
  %22 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %23 = load i32, ptr %22, align 4
  %24 = and i32 %23, 1023
  %25 = icmp ult i32 %24, 64
  br i1 %25, label %26, label %31

26:                                               ; preds = %20
  %27 = zext nneg i32 %24 to i64
  %28 = shl nsw i64 -1, %27
  %29 = xor i64 %28, -1
  %30 = and i64 %21, %29
  br label %34

31:                                               ; preds = %20
  switch i32 %24, label %33 [
    i32 64, label %34
    i32 128, label %32
  ]

32:                                               ; preds = %31
  br label %34

33:                                               ; preds = %31
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 68, ptr noundef nonnull @.str.2) #12
  unreachable

34:                                               ; preds = %31, %32, %26
  %35 = phi i64 [ 0, %26 ], [ %21, %32 ], [ 0, %31 ]
  %36 = phi i64 [ %30, %26 ], [ %21, %32 ], [ %21, %31 ]
  %37 = tail call ptr @build_int_cst_wide(ptr noundef nonnull %0, i64 noundef %36, i64 noundef %35) #12
  ret ptr %37
}

; Function Attrs: optsize
declare ptr @build_int_cst_wide(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @build_word_mode_vector_type(i32 noundef %0) unnamed_addr #0 !prof !181 !PGOFuncName !227 {
  %2 = load ptr, ptr @vector_inner_type, align 8, !tbaa !96
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 2), align 8, !tbaa !184
  %6 = load i32, ptr @word_mode, align 4, !tbaa !196
  %7 = tail call ptr %5(i32 noundef %6, i32 noundef 1) #12
  store ptr %7, ptr @vector_inner_type, align 8, !tbaa !96
  br label %18

8:                                                ; preds = %1
  %9 = load i32, ptr @vector_last_nunits, align 4, !tbaa !196
  %10 = icmp eq i32 %9, %0
  br i1 %10, label %11, label %18

11:                                               ; preds = %8
  %12 = load ptr, ptr @vector_last_type, align 8, !tbaa !96
  %13 = load i64, ptr %12, align 8
  %14 = and i64 %13, 65535
  %15 = icmp eq i64 %14, 14
  br i1 %15, label %22, label %16

16:                                               ; preds = %11
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 87, ptr noundef nonnull @.str.2) #12
  %17 = load ptr, ptr @vector_last_type, align 8, !tbaa !96
  br label %22

18:                                               ; preds = %8, %4
  %19 = phi ptr [ %2, %8 ], [ %7, %4 ]
  store i32 %0, ptr @vector_last_nunits, align 4, !tbaa !196
  %20 = tail call ptr @build_vector_type(ptr noundef %19, i32 noundef %0) #12
  %21 = tail call ptr @type_hash_canon(i32 noundef %0, ptr noundef %20) #12
  store ptr %21, ptr @vector_last_type, align 8, !tbaa !96
  br label %22

22:                                               ; preds = %16, %11, %18
  %23 = phi ptr [ %21, %18 ], [ %12, %11 ], [ %17, %16 ]
  ret ptr %23
}

; Function Attrs: optsize
declare ptr @force_gimple_operand_gsi(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare i32 @mode_for_size(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @type_hash_canon(i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @build_vector_type(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @size_int_kind(i64 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_constructor_elt_gc_alloc(i32 noundef %0) unnamed_addr #0 !prof !181 !PGOFuncName !228 {
  %2 = tail call ptr @vec_gc_o_reserve_exact(ptr noundef null, i32 noundef %0, i64 noundef 8, i64 noundef 16) #12
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc nonnull ptr @VEC_constructor_elt_base_quick_push(ptr noundef %0) unnamed_addr #8 !prof !181 !PGOFuncName !229 {
  %2 = load i32, ptr %0, align 8, !tbaa !230
  %3 = add i32 %2, 1
  store i32 %3, ptr %0, align 8, !tbaa !230
  %4 = zext i32 %2 to i64
  %5 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %0, i64 0, i32 2, i64 %4
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @int_const_binop(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @build_constructor(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @vec_gc_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_modified_p(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !126 !PGOFuncName !232 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #11, !range !114
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %9, label %4, !prof !233

4:                                                ; preds = %1
  %5 = load i32, ptr %0, align 8
  %6 = lshr i32 %5, 13
  %7 = trunc i32 %6 to i8
  %8 = and i8 %7, 1
  br label %9

9:                                                ; preds = %1, %4
  %10 = phi i8 [ %8, %4 ], [ 0, %1 ]
  ret i8 %10
}

; Function Attrs: optsize
declare void @update_stmt_operands(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_expand_vector_operations() #9 !prof !234 !PGOFuncName !235 {
  %1 = load i32, ptr @flag_tree_vectorize, align 4, !tbaa !196
  %2 = icmp ne i32 %1, 0
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: optsize
declare void @gt_ggc_mx_lang_tree_node(ptr noundef) #7

; Function Attrs: optsize
declare void @gt_pch_nx_lang_tree_node(ptr noundef) #7

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind }
attributes #11 = { optsize }
attributes #12 = { nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!93}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92}
!36 = !{ptr @expand_vector_operations, ptr @gsi_start_bb, i64 448694}
!37 = !{ptr @expand_vector_operations, ptr @gsi_end_p, i64 1699130}
!38 = !{ptr @expand_vector_operations, ptr @expand_vector_operations_1, i64 1250436}
!39 = !{ptr @expand_vector_operations, ptr @gsi_stmt, i64 1250436}
!40 = !{ptr @expand_vector_operations, ptr @update_stmt_if_modified, i64 1250436}
!41 = !{ptr @expand_vector_operations, ptr @gsi_next, i64 1250436}
!42 = !{ptr @gsi_start_bb, ptr @bb_seq, i64 448722}
!43 = !{ptr @gsi_start_bb, ptr @gimple_seq_first, i64 448722}
!44 = !{ptr @expand_vector_operations_1, ptr @gsi_stmt, i64 1250516}
!45 = !{ptr @expand_vector_operations_1, ptr @gimple_code, i64 1250515}
!46 = !{ptr @expand_vector_operations_1, ptr @gimple_assign_rhs_code, i64 772950}
!47 = !{ptr @expand_vector_operations_1, ptr @get_gimple_rhs_class, i64 772950}
!48 = !{ptr @expand_vector_operations_1, ptr @gimple_assign_lhs, i64 234114}
!49 = !{ptr @expand_vector_operations_1, ptr @gimple_assign_rhs1, i64 234114}
!50 = !{ptr @expand_vector_operations_1, ptr @gimple_expr_type, i64 234114}
!51 = !{ptr @expand_vector_operations_1, ptr @gimple_assign_rhs2, i64 157873}
!52 = !{ptr @expand_vector_operations_1, ptr @optab_for_tree_code, i64 1}
!53 = !{ptr @expand_vector_operations_1, ptr @vector_type_mode, i64 2}
!54 = !{ptr @expand_vector_operations_1, ptr @expand_vector_operation, i64 1}
!55 = !{ptr @expand_vector_operations_1, ptr @useless_type_conversion_p, i64 1}
!56 = !{ptr @expand_vector_operations_1, ptr @gimplify_build1, i64 1}
!57 = !{ptr @expand_vector_operations_1, ptr @gimple_assign_set_rhs_from_tree, i64 1}
!58 = !{ptr @expand_vector_operations_1, ptr @gimple_set_modified, i64 1}
!59 = !{ptr @update_stmt_if_modified, ptr @gimple_modified_p, i64 1250515}
!60 = !{ptr @update_stmt_if_modified, ptr @update_stmt_operands, i64 569814}
!61 = !{ptr @gimple_assign_rhs_code, ptr @gimple_expr_code, i64 1007063}
!62 = !{ptr @gimple_assign_rhs_code, ptr @get_gimple_rhs_class, i64 1007063}
!63 = !{ptr @gimple_assign_rhs_code, ptr @gimple_assign_rhs1, i64 538837}
!64 = !{ptr @gimple_assign_lhs, ptr @gimple_op, i64 234113}
!65 = !{ptr @gimple_assign_rhs1, ptr @gimple_op, i64 798261}
!66 = !{ptr @gimple_expr_type, ptr @gimple_code, i64 234113}
!67 = !{ptr @gimple_expr_type, ptr @gimple_assign_rhs_code, i64 234112}
!68 = !{ptr @gimple_expr_type, ptr @gimple_assign_rhs1, i64 25310}
!69 = !{ptr @gimple_expr_type, ptr @gimple_get_lhs, i64 208802}
!70 = !{ptr @gimple_assign_rhs2, ptr @gimple_num_ops, i64 157875}
!71 = !{ptr @gimple_assign_rhs2, ptr @gimple_op, i64 157874}
!72 = !{ptr @expand_vector_operation, ptr @vector_type_mode, i64 1}
!73 = !{ptr @expand_vector_operation, ptr @gimple_assign_rhs1, i64 2}
!74 = !{ptr @expand_vector_operation, ptr @expand_vector_piecewise, i64 2}
!75 = !{ptr @expand_vector_operation, ptr @gimple_assign_rhs2, i64 1}
!76 = !{ptr @gimple_expr_code, ptr @gimple_code, i64 1007063}
!77 = !{ptr @gimple_op, ptr @gimple_has_ops, i64 1190249}
!78 = !{ptr @gimple_op, ptr @gimple_ops, i64 1190248}
!79 = !{ptr @gimple_has_ops, ptr @gimple_code, i64 2440764}
!80 = !{ptr @gimple_ops, ptr @gimple_statement_structure, i64 1190249}
!81 = !{ptr @gimple_ops, ptr @fancy_abort, i64 1}
!82 = !{ptr @gimple_statement_structure, ptr @gimple_code, i64 1190249}
!83 = !{ptr @gimple_statement_structure, ptr @gss_for_code, i64 1190249}
!84 = !{ptr @do_binop, ptr @tree_vec_extract, i64 4}
!85 = !{ptr @do_binop, ptr @gimplify_build2, i64 2}
!86 = !{ptr @expand_vector_parallel, ptr @tree_low_cst, i64 3}
!87 = !{ptr @expand_vector_parallel, ptr @vector_type_mode, i64 1}
!88 = !{ptr @expand_vector_parallel, ptr @expand_vector_piecewise, i64 1}
!89 = !{ptr @expand_vector_parallel, ptr @mode_for_size, i64 1}
!90 = !{ptr @tree_vec_extract, ptr @gimplify_build3, i64 1}
!91 = !{ptr @tree_vec_extract, ptr @gimplify_build1, i64 3}
!92 = !{ptr @gimple_modified_p, ptr @gimple_has_ops, i64 1250515}
!93 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!94 = !{!"function_entry_count", i64 15616}
!95 = !{!"tree-vect-generic.c:expand_vector_operations"}
!96 = !{!97, !97, i64 0}
!97 = !{!"any pointer", !98, i64 0}
!98 = !{!"omnipotent char", !99, i64 0}
!99 = !{!"Simple C/C++ TBAA"}
!100 = !{!101, !97, i64 8}
!101 = !{!"function", !97, i64 0, !97, i64 8, !97, i64 16, !97, i64 24, !97, i64 32, !97, i64 40, !97, i64 48, !97, i64 56, !97, i64 64, !97, i64 72, !97, i64 80, !97, i64 88, !97, i64 96, !102, i64 104, !102, i64 108, !102, i64 112, !102, i64 116, !102, i64 120, !102, i64 124, !97, i64 128, !102, i64 136, !102, i64 137, !102, i64 138, !102, i64 138, !102, i64 138, !102, i64 138, !102, i64 138, !102, i64 138, !102, i64 138, !102, i64 139, !102, i64 139, !102, i64 139, !102, i64 139, !102, i64 139, !102, i64 139, !102, i64 139}
!102 = !{!"int", !98, i64 0}
!103 = !{!104, !97, i64 0}
!104 = !{!"control_flow_graph", !97, i64 0, !97, i64 8, !97, i64 16, !102, i64 24, !102, i64 28, !102, i64 32, !97, i64 40, !102, i64 48, !98, i64 52, !98, i64 60, !102, i64 68, !102, i64 72}
!105 = !{!106, !97, i64 56}
!106 = !{!"basic_block_def", !97, i64 0, !97, i64 8, !97, i64 16, !97, i64 24, !98, i64 32, !97, i64 48, !97, i64 56, !98, i64 64, !107, i64 72, !102, i64 80, !102, i64 84, !102, i64 88, !102, i64 92, !102, i64 96}
!107 = !{!"long", !98, i64 0}
!108 = !{!104, !97, i64 8}
!109 = !{!"branch_weights", i32 1, i32 15616}
!110 = !{!"branch_weights", i32 15616, i32 433107}
!111 = distinct !{!111, !112}
!112 = !{!"llvm.loop.mustprogress"}
!113 = !{i64 0, i64 8, !96, i64 8, i64 8, !96, i64 16, i64 8, !96}
!114 = !{i8 0, i8 2}
!115 = !{!"branch_weights", i32 448722, i32 1}
!116 = !{!"branch_weights", i32 801794, i32 448722}
!117 = distinct !{!117, !112}
!118 = !{!"function_entry_count", i64 448722}
!119 = !{!"tree-vect-generic.c:gsi_start_bb"}
!120 = !{!121, !97, i64 0}
!121 = !{!"", !97, i64 0, !97, i64 8, !97, i64 16}
!122 = !{!121, !97, i64 8}
!123 = !{!121, !97, i64 16}
!124 = !{!"function_entry_count", i64 1699237}
!125 = !{!"tree-vect-generic.c:gsi_end_p"}
!126 = !{!"function_entry_count", i64 1250515}
!127 = !{!"tree-vect-generic.c:expand_vector_operations_1"}
!128 = !{i32 0, i32 256}
!129 = !{!"branch_weights", i32 772951, i32 477566}
!130 = !{i32 0, i32 65536}
!131 = !{!"branch_weights", i32 -1362042595, i32 1274301343}
!132 = !{!"branch_weights", i32 157874, i32 76241}
!133 = !{!"branch_weights", i32 3, i32 234112}
!134 = !{!"branch_weights", i32 175, i32 81}
!135 = !{!"branch_weights", i32 1, i32 3}
!136 = !{!"branch_weights", i32 1252698794, i32 894784854}
!137 = !{!98, !98, i64 0}
!138 = !{!"branch_weights", i32 -2147483648, i32 0}
!139 = !{!140, !102, i64 0}
!140 = !{!"optab_handlers", !102, i64 0}
!141 = !{!"branch_weights", i32 58975, i32 6561}
!142 = !{!"branch_weights", i32 1, i32 7}
!143 = !{!"branch_weights", i32 3, i32 1}
!144 = !{!"branch_weights", i32 0, i32 -2147483648}
!145 = !{!"branch_weights", i32 243, i32 256, i32 192, i32 144, i32 108, i32 81}
!146 = !{!"branch_weights", i32 9, i32 7}
!147 = !{!"tree-vect-generic.c:update_stmt_if_modified"}
!148 = !{!"branch_weights", i32 680702, i32 569815}
!149 = !{!"function_entry_count", i64 2501032}
!150 = !{!"tree-vect-generic.c:gsi_stmt"}
!151 = !{!152, !97, i64 0}
!152 = !{!"gimple_seq_node_d", !97, i64 0, !97, i64 8, !97, i64 16}
!153 = !{!"tree-vect-generic.c:gsi_next"}
!154 = !{!152, !97, i64 16}
!155 = !{!"tree-vect-generic.c:bb_seq"}
!156 = !{!106, !102, i64 96}
!157 = !{!"branch_weights", i32 448723, i32 1}
!158 = !{!"branch_weights", i32 1, i32 448723}
!159 = !{!160, !97, i64 0}
!160 = !{!"gimple_bb_info", !97, i64 0, !97, i64 8}
!161 = !{!"tree-vect-generic.c:gimple_seq_first"}
!162 = !{!163, !97, i64 0}
!163 = !{!"gimple_seq_d", !97, i64 0, !97, i64 8, !97, i64 16}
!164 = !{!"function_entry_count", i64 8563468}
!165 = !{!"tree-vect-generic.c:gimple_code"}
!166 = !{!"function_entry_count", i64 1007063}
!167 = !{!"tree-vect-generic.c:gimple_assign_rhs_code"}
!168 = !{!"branch_weights", i32 538838, i32 468227}
!169 = !{!"function_entry_count", i64 1780013}
!170 = !{!"tree-vect-generic.c:get_gimple_rhs_class"}
!171 = !{!"function_entry_count", i64 234113}
!172 = !{!"tree-vect-generic.c:gimple_assign_lhs"}
!173 = !{!"function_entry_count", i64 798261}
!174 = !{!"tree-vect-generic.c:gimple_assign_rhs1"}
!175 = !{!"tree-vect-generic.c:gimple_expr_type"}
!176 = !{!"branch_weights", i32 1, i32 2, i32 936456, i32 1}
!177 = !{!"branch_weights", i32 25310, i32 208805}
!178 = !{!"function_entry_count", i64 157875}
!179 = !{!"tree-vect-generic.c:gimple_assign_rhs2"}
!180 = !{!"branch_weights", i32 157876, i32 1}
!181 = !{!"function_entry_count", i64 0}
!182 = !{!"tree-vect-generic.c:type_for_widest_vector_mode"}
!183 = distinct !{!183, !112}
!184 = !{!185, !97, i64 448}
!185 = !{!"lang_hooks", !97, i64 0, !107, i64 8, !97, i64 16, !97, i64 24, !97, i64 32, !97, i64 40, !97, i64 48, !97, i64 56, !97, i64 64, !97, i64 72, !97, i64 80, !97, i64 88, !97, i64 96, !97, i64 104, !97, i64 112, !97, i64 120, !97, i64 128, !97, i64 136, !97, i64 144, !97, i64 152, !97, i64 160, !97, i64 168, !97, i64 176, !97, i64 184, !97, i64 192, !97, i64 200, !97, i64 208, !97, i64 216, !97, i64 224, !97, i64 232, !186, i64 240, !187, i64 248, !188, i64 256, !189, i64 272, !190, i64 432, !191, i64 560, !97, i64 584, !97, i64 592, !97, i64 600, !97, i64 608, !97, i64 616, !97, i64 624, !97, i64 632, !97, i64 640, !97, i64 648, !97, i64 656, !97, i64 664, !98, i64 672}
!186 = !{!"lang_hooks_for_tree_inlining", !97, i64 0}
!187 = !{!"lang_hooks_for_callgraph", !97, i64 0}
!188 = !{!"lang_hooks_for_tree_dump", !97, i64 0, !97, i64 8}
!189 = !{!"lang_hooks_for_decls", !97, i64 0, !97, i64 8, !97, i64 16, !97, i64 24, !97, i64 32, !97, i64 40, !97, i64 48, !97, i64 56, !97, i64 64, !97, i64 72, !97, i64 80, !97, i64 88, !97, i64 96, !97, i64 104, !97, i64 112, !97, i64 120, !97, i64 128, !97, i64 136, !97, i64 144, !97, i64 152}
!190 = !{!"lang_hooks_for_types", !97, i64 0, !97, i64 8, !97, i64 16, !97, i64 24, !97, i64 32, !97, i64 40, !97, i64 48, !97, i64 56, !97, i64 64, !97, i64 72, !97, i64 80, !97, i64 88, !97, i64 96, !97, i64 104, !97, i64 112, !98, i64 120}
!191 = !{!"lang_hooks_for_lto", !97, i64 0, !97, i64 8, !97, i64 16}
!192 = !{!"function_entry_count", i64 2}
!193 = !{!"tree-vect-generic.c:expand_vector_operation"}
!194 = !{!"branch_weights", i32 3367, i32 729}
!195 = !{!"branch_weights", i32 1, i32 1, i32 1, i32 1, i32 3, i32 1, i32 1, i32 1}
!196 = !{!102, !102, i64 0}
!197 = !{!"tree-vect-generic.c:gimple_expr_code"}
!198 = !{!"branch_weights", i32 1, i32 4028256, i32 2, i32 1}
!199 = !{!"function_entry_count", i64 1190249}
!200 = !{!"tree-vect-generic.c:gimple_op"}
!201 = !{!"branch_weights", i32 1, i32 1190250}
!202 = !{!"function_entry_count", i64 2440764}
!203 = !{!"tree-vect-generic.c:gimple_has_ops"}
!204 = !{!"tree-vect-generic.c:gimple_ops"}
!205 = !{!107, !107, i64 0}
!206 = !{!"tree-vect-generic.c:gimple_statement_structure"}
!207 = !{!"tree-vect-generic.c:gss_for_code"}
!208 = !{!"tree-vect-generic.c:gimple_call_return_type"}
!209 = !{!"tree-vect-generic.c:gimple_call_fn"}
!210 = !{!"tree-vect-generic.c:gimple_num_ops"}
!211 = !{!"tree-vect-generic.c:expand_vector_addition"}
!212 = !{!"tree-vect-generic.c:do_binop"}
!213 = !{!"tree-vect-generic.c:do_plus_minus"}
!214 = !{!"tree-vect-generic.c:do_unop"}
!215 = !{!"tree-vect-generic.c:do_negate"}
!216 = !{!"tree-vect-generic.c:expand_vector_parallel"}
!217 = !{ptr @do_binop, ptr @do_negate, ptr @do_plus_minus, ptr @do_unop}
!218 = !{!"tree-vect-generic.c:expand_vector_piecewise"}
!219 = !{!220, !97, i64 0}
!220 = !{!"constructor_elt_d", !97, i64 0, !97, i64 8}
!221 = !{!220, !97, i64 8}
!222 = distinct !{!222, !112}
!223 = !{!"function_entry_count", i64 4}
!224 = !{!"tree-vect-generic.c:tree_vec_extract"}
!225 = !{!"branch_weights", i32 5, i32 1}
!226 = !{!"tree-vect-generic.c:build_replicated_const"}
!227 = !{!"tree-vect-generic.c:build_word_mode_vector_type"}
!228 = !{!"tree-vect-generic.c:VEC_constructor_elt_gc_alloc"}
!229 = !{!"tree-vect-generic.c:VEC_constructor_elt_base_quick_push"}
!230 = !{!231, !102, i64 0}
!231 = !{!"VEC_constructor_elt_base", !102, i64 0, !102, i64 4, !98, i64 8}
!232 = !{!"tree-vect-generic.c:gimple_modified_p"}
!233 = !{!"branch_weights", i32 1034, i32 1249483}
!234 = !{!"function_entry_count", i64 6652}
!235 = !{!"tree-vect-generic.c:gate_expand_vector_operations"}

; ModuleID = 'tree-vect-patterns.c'
source_filename = "tree-vect-patterns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.real_value = type { i32, [3 x i64] }
%struct.insn_data = type { ptr, %union.anon.0, ptr, ptr, i8, i8, i8, i8 }
%union.anon.0 = type { ptr }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct._loop_vec_info = type { ptr, ptr, ptr, ptr, i32, i8, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i32 }
%struct.loop = type { i32, i32, ptr, ptr, %struct.lpt_decision, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.double_int, %struct.double_int, i8, i8, i32, ptr, ptr, i8, ptr }
%struct.lpt_decision = type { i32, i32 }
%struct.double_int = type { i64, i64 }
%struct._stmt_vec_info = type { i32, ptr, ptr, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, i32, ptr, ptr, i32, i32, i32, ptr, i8, %struct.anon, i32, ptr }
%struct.anon = type { i32, i32 }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%union.tree_type_symtab = type { ptr }
%struct.optab_d = type { i32, ptr, i8, ptr, [87 x %struct.optab_handlers] }
%struct.optab_handlers = type { i32 }
%struct.insn_operand_data = type { ptr, ptr, i16, i8, i8 }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.tree_function_decl = type { %struct.tree_decl_non_common, ptr, ptr, ptr, ptr, i32 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_real_cst = type { %struct.tree_common, ptr }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.VEC_vec_void_p_base = type { i32, i32, [1 x ptr] }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }

@vect_dump = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [27 x i8] c"=== vect_pattern_recog ===\00", align 1
@vect_vect_recog_func_ptrs = internal unnamed_addr constant [4 x ptr] [ptr @vect_recog_widen_mult_pattern, ptr @vect_recog_widen_sum_pattern, ptr @vect_recog_dot_prod_pattern, ptr @vect_recog_pow_pattern], align 16
@.str.1 = private unnamed_addr constant [42 x i8] c"vect_recog_widen_mult_pattern: detected: \00", align 1
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@gimple_rhs_class_table = external local_unnamed_addr constant [0 x i8], align 1
@stmt_vec_info_vec = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [20 x i8] c"./tree-vectorizer.h\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"patt\00", align 1
@cfun = external local_unnamed_addr global ptr, align 8
@.str.6 = private unnamed_addr constant [41 x i8] c"vect_recog_widen_sum_pattern: detected: \00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"tree-vect-patterns.c\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"vect_recog_dot_prod_pattern: detected: \00", align 1
@dconst2 = external global %struct.real_value, align 8
@dconsthalf = external global %struct.real_value, align 8
@mode_class = external local_unnamed_addr constant [87 x i8], align 16
@insn_data = external local_unnamed_addr constant [0 x %struct.insn_data], align 8
@.str.9 = private unnamed_addr constant [21 x i8] c"pattern recognized: \00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @vect_pattern_recog(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = load ptr, ptr %0, align 8, !tbaa !5
  %5 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !11
  %7 = getelementptr inbounds %struct.loop, ptr %4, i64 0, i32 6
  %8 = load i32, ptr %7, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #11
  %9 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #12
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load ptr, ptr @vect_dump, align 8, !tbaa !17
  %13 = tail call i64 @fwrite(ptr nonnull @.str, i64 26, i64 1, ptr %12)
  br label %14

14:                                               ; preds = %11, %1
  %15 = icmp eq i32 %8, 0
  br i1 %15, label %38, label %16

16:                                               ; preds = %14
  %17 = zext i32 %8 to i64
  br label %18

18:                                               ; preds = %16, %35
  %19 = phi i64 [ 0, %16 ], [ %36, %35 ]
  %20 = getelementptr inbounds ptr, ptr %6, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #11
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %21) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #11
  %22 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #13, !range !19
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %18, %30
  %25 = phi i64 [ %31, %30 ], [ 0, %18 ]
  %26 = getelementptr inbounds [4 x ptr], ptr @vect_vect_recog_func_ptrs, i64 0, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !17
  tail call fastcc void @vect_pattern_recog_1(ptr noundef %27, ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #13
  %28 = add nuw nsw i64 %25, 1
  %29 = icmp eq i64 %28, 4
  br i1 %29, label %32, label %30

30:                                               ; preds = %24, %32
  %31 = phi i64 [ %28, %24 ], [ 0, %32 ]
  br label %24, !llvm.loop !20

32:                                               ; preds = %24
  call fastcc void @gsi_next(ptr noundef nonnull %2) #13
  %33 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #13, !range !19
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %30, label %35

35:                                               ; preds = %32, %18
  %36 = add nuw nsw i64 %19, 1
  %37 = icmp eq i64 %36, %17
  br i1 %37, label %38, label %18, !llvm.loop !22

38:                                               ; preds = %35, %14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #11
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare zeroext i8 @vect_print_dump_info(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #3 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #13
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #13
  store ptr %4, ptr %0, align 8, !tbaa !23
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !25
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !26
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #5 {
  %2 = load ptr, ptr %0, align 8, !tbaa !23
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @vect_pattern_recog_1(ptr nocapture noundef readonly %0, ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %1) unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #13
  %6 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef %5) #13
  %7 = getelementptr inbounds %struct._stmt_vec_info, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %9 = call ptr %0(ptr noundef %5, ptr noundef nonnull %3, ptr noundef nonnull %4) #12
  %10 = icmp eq ptr %9, null
  br i1 %10, label %207, label %11

11:                                               ; preds = %2
  %12 = load ptr, ptr %3, align 8, !tbaa !17
  %13 = load i64, ptr %12, align 8
  %14 = and i64 %13, 65535
  %15 = icmp eq i64 %14, 14
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = call i32 @vector_type_mode(ptr noundef nonnull %12) #12
  %18 = load ptr, ptr %3, align 8, !tbaa !17
  br label %24

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.tree_type, ptr %12, i64 0, i32 6
  %21 = load i32, ptr %20, align 4
  %22 = lshr i32 %21, 16
  %23 = and i32 %22, 255
  br label %24

24:                                               ; preds = %19, %16
  %25 = phi ptr [ %18, %16 ], [ %12, %19 ]
  %26 = phi i32 [ %17, %16 ], [ %23, %19 ]
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %27
  %29 = load i8, ptr %28, align 1, !tbaa !30
  %30 = icmp eq i8 %29, 12
  br i1 %30, label %189, label %31

31:                                               ; preds = %24
  %32 = load i64, ptr %25, align 8
  %33 = and i64 %32, 65535
  %34 = icmp eq i64 %33, 14
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = call i32 @vector_type_mode(ptr noundef nonnull %25) #12
  %37 = load ptr, ptr %3, align 8, !tbaa !17
  br label %43

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.tree_type, ptr %25, i64 0, i32 6
  %40 = load i32, ptr %39, align 4
  %41 = lshr i32 %40, 16
  %42 = and i32 %41, 255
  br label %43

43:                                               ; preds = %38, %35
  %44 = phi ptr [ %37, %35 ], [ %25, %38 ]
  %45 = phi i32 [ %36, %35 ], [ %42, %38 ]
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %46
  %48 = load i8, ptr %47, align 1, !tbaa !30
  %49 = icmp eq i8 %48, 17
  br i1 %49, label %189, label %50

50:                                               ; preds = %43
  %51 = load i64, ptr %44, align 8
  %52 = and i64 %51, 65535
  %53 = icmp eq i64 %52, 14
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = call i32 @vector_type_mode(ptr noundef nonnull %44) #12
  %56 = load ptr, ptr %3, align 8, !tbaa !17
  br label %62

57:                                               ; preds = %50
  %58 = getelementptr inbounds %struct.tree_type, ptr %44, i64 0, i32 6
  %59 = load i32, ptr %58, align 4
  %60 = lshr i32 %59, 16
  %61 = and i32 %60, 255
  br label %62

62:                                               ; preds = %57, %54
  %63 = phi ptr [ %56, %54 ], [ %44, %57 ]
  %64 = phi i32 [ %55, %54 ], [ %61, %57 ]
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %65
  %67 = load i8, ptr %66, align 1, !tbaa !30
  %68 = icmp eq i8 %67, 13
  br i1 %68, label %189, label %69

69:                                               ; preds = %62
  %70 = load i64, ptr %63, align 8
  %71 = and i64 %70, 65535
  %72 = icmp eq i64 %71, 14
  br i1 %72, label %73, label %76

73:                                               ; preds = %69
  %74 = call i32 @vector_type_mode(ptr noundef nonnull %63) #12
  %75 = load ptr, ptr %3, align 8, !tbaa !17
  br label %81

76:                                               ; preds = %69
  %77 = getelementptr inbounds %struct.tree_type, ptr %63, i64 0, i32 6
  %78 = load i32, ptr %77, align 4
  %79 = lshr i32 %78, 16
  %80 = and i32 %79, 255
  br label %81

81:                                               ; preds = %76, %73
  %82 = phi ptr [ %75, %73 ], [ %63, %76 ]
  %83 = phi i32 [ %74, %73 ], [ %80, %76 ]
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %84
  %86 = load i8, ptr %85, align 1, !tbaa !30
  %87 = icmp eq i8 %86, 14
  br i1 %87, label %189, label %88

88:                                               ; preds = %81
  %89 = load i64, ptr %82, align 8
  %90 = and i64 %89, 65535
  %91 = icmp eq i64 %90, 14
  br i1 %91, label %92, label %95

92:                                               ; preds = %88
  %93 = call i32 @vector_type_mode(ptr noundef nonnull %82) #12
  %94 = load ptr, ptr %3, align 8, !tbaa !17
  br label %100

95:                                               ; preds = %88
  %96 = getelementptr inbounds %struct.tree_type, ptr %82, i64 0, i32 6
  %97 = load i32, ptr %96, align 4
  %98 = lshr i32 %97, 16
  %99 = and i32 %98, 255
  br label %100

100:                                              ; preds = %95, %92
  %101 = phi ptr [ %94, %92 ], [ %82, %95 ]
  %102 = phi i32 [ %93, %92 ], [ %99, %95 ]
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %103
  %105 = load i8, ptr %104, align 1, !tbaa !30
  %106 = icmp eq i8 %105, 15
  br i1 %106, label %189, label %107

107:                                              ; preds = %100
  %108 = load i64, ptr %101, align 8
  %109 = and i64 %108, 65535
  %110 = icmp eq i64 %109, 14
  br i1 %110, label %111, label %114

111:                                              ; preds = %107
  %112 = call i32 @vector_type_mode(ptr noundef nonnull %101) #12
  %113 = load ptr, ptr %3, align 8, !tbaa !17
  br label %119

114:                                              ; preds = %107
  %115 = getelementptr inbounds %struct.tree_type, ptr %101, i64 0, i32 6
  %116 = load i32, ptr %115, align 4
  %117 = lshr i32 %116, 16
  %118 = and i32 %117, 255
  br label %119

119:                                              ; preds = %114, %111
  %120 = phi ptr [ %113, %111 ], [ %101, %114 ]
  %121 = phi i32 [ %112, %111 ], [ %118, %114 ]
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %122
  %124 = load i8, ptr %123, align 1, !tbaa !30
  %125 = icmp eq i8 %124, 16
  br i1 %125, label %189, label %126

126:                                              ; preds = %119
  %127 = call ptr @get_vectype_for_scalar_type(ptr noundef %120) #12
  %128 = icmp eq ptr %127, null
  br i1 %128, label %207, label %129

129:                                              ; preds = %126
  %130 = call fastcc zeroext i8 @is_gimple_assign(ptr noundef nonnull %9) #13, !range !19
  %131 = icmp eq i8 %130, 0
  br i1 %131, label %134, label %132

132:                                              ; preds = %129
  %133 = call fastcc i32 @gimple_assign_rhs_code(ptr noundef nonnull %9) #13, !range !31
  br label %138

134:                                              ; preds = %129
  %135 = call fastcc zeroext i8 @is_gimple_call(ptr noundef nonnull %9) #13, !range !19
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %134
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 697, ptr noundef nonnull @.str.3) #12
  br label %138

138:                                              ; preds = %137, %134, %132
  %139 = phi i32 [ %133, %132 ], [ 59, %134 ], [ 59, %137 ]
  %140 = call ptr @optab_for_tree_code(i32 noundef %139, ptr noundef nonnull %127, i32 noundef 0) #12
  %141 = load i64, ptr %127, align 8
  %142 = and i64 %141, 65535
  %143 = icmp eq i64 %142, 14
  br i1 %143, label %144, label %146

144:                                              ; preds = %138
  %145 = call i32 @vector_type_mode(ptr noundef nonnull %127) #12
  br label %151

146:                                              ; preds = %138
  %147 = getelementptr inbounds %struct.tree_type, ptr %127, i64 0, i32 6
  %148 = load i32, ptr %147, align 4
  %149 = lshr i32 %148, 16
  %150 = and i32 %149, 255
  br label %151

151:                                              ; preds = %146, %144
  %152 = phi i32 [ %145, %144 ], [ %150, %146 ]
  %153 = icmp eq ptr %140, null
  br i1 %153, label %207, label %154

154:                                              ; preds = %151
  %155 = sext i32 %152 to i64
  %156 = getelementptr inbounds %struct.optab_d, ptr %140, i64 0, i32 4, i64 %155
  %157 = load i32, ptr %156, align 4, !tbaa !32
  %158 = icmp eq i32 %157, 2956
  br i1 %158, label %207, label %159

159:                                              ; preds = %154
  %160 = load ptr, ptr %4, align 8, !tbaa !17
  %161 = icmp eq ptr %160, null
  br i1 %161, label %189, label %162

162:                                              ; preds = %159
  %163 = call ptr @get_vectype_for_scalar_type(ptr noundef nonnull %160) #12
  %164 = icmp eq ptr %163, null
  br i1 %164, label %207, label %165

165:                                              ; preds = %162
  %166 = zext i32 %157 to i64
  %167 = getelementptr inbounds [0 x %struct.insn_data], ptr @insn_data, i64 0, i64 %166, i32 3
  %168 = load ptr, ptr %167, align 8, !tbaa !34
  %169 = getelementptr inbounds %struct.insn_operand_data, ptr %168, i64 0, i32 2
  %170 = load i16, ptr %169, align 8
  %171 = zext i16 %170 to i32
  %172 = load ptr, ptr %4, align 8, !tbaa !17
  %173 = call ptr @get_vectype_for_scalar_type(ptr noundef %172) #12
  %174 = load i64, ptr %173, align 8
  %175 = and i64 %174, 65535
  %176 = icmp eq i64 %175, 14
  %177 = load ptr, ptr %4, align 8, !tbaa !17
  %178 = call ptr @get_vectype_for_scalar_type(ptr noundef %177) #12
  br i1 %176, label %179, label %181

179:                                              ; preds = %165
  %180 = call i32 @vector_type_mode(ptr noundef %178) #12
  br label %186

181:                                              ; preds = %165
  %182 = getelementptr inbounds %struct.tree_type, ptr %178, i64 0, i32 6
  %183 = load i32, ptr %182, align 4
  %184 = lshr i32 %183, 16
  %185 = and i32 %184, 255
  br label %186

186:                                              ; preds = %181, %179
  %187 = phi i32 [ %180, %179 ], [ %185, %181 ]
  %188 = icmp eq i32 %187, %171
  br i1 %188, label %189, label %207

189:                                              ; preds = %24, %43, %62, %81, %100, %119, %159, %186
  %190 = phi ptr [ %127, %186 ], [ %127, %159 ], [ %120, %119 ], [ %101, %100 ], [ %82, %81 ], [ %63, %62 ], [ %44, %43 ], [ %25, %24 ]
  %191 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #12
  %192 = icmp eq i8 %191, 0
  br i1 %192, label %197, label %193

193:                                              ; preds = %189
  %194 = load ptr, ptr @vect_dump, align 8, !tbaa !17
  %195 = call i64 @fwrite(ptr nonnull @.str.9, i64 20, i64 1, ptr %194)
  %196 = load ptr, ptr @vect_dump, align 8, !tbaa !17
  call void @print_gimple_stmt(ptr noundef %196, ptr noundef nonnull %9, i32 noundef 0, i32 noundef 2) #12
  br label %197

197:                                              ; preds = %193, %189
  call void @gsi_insert_before(ptr noundef nonnull %1, ptr noundef nonnull %9, i32 noundef 1) #12
  %198 = call ptr @new_stmt_vec_info(ptr noundef nonnull %9, ptr noundef %8, ptr noundef null) #12
  call fastcc void @set_vinfo_for_stmt(ptr noundef nonnull %9, ptr noundef %198) #13
  %199 = call fastcc ptr @vinfo_for_stmt(ptr noundef nonnull %9) #13
  %200 = getelementptr inbounds %struct._stmt_vec_info, ptr %199, i64 0, i32 14
  store ptr %5, ptr %200, align 8, !tbaa !36
  %201 = getelementptr inbounds %struct._stmt_vec_info, ptr %6, i64 0, i32 16
  %202 = load i32, ptr %201, align 8, !tbaa !37
  %203 = getelementptr inbounds %struct._stmt_vec_info, ptr %199, i64 0, i32 16
  store i32 %202, ptr %203, align 8, !tbaa !37
  %204 = getelementptr inbounds %struct._stmt_vec_info, ptr %199, i64 0, i32 5
  store ptr %190, ptr %204, align 8, !tbaa !38
  %205 = getelementptr inbounds %struct._stmt_vec_info, ptr %6, i64 0, i32 13
  store i8 1, ptr %205, align 8, !tbaa !39
  %206 = getelementptr inbounds %struct._stmt_vec_info, ptr %6, i64 0, i32 14
  store ptr %9, ptr %206, align 8, !tbaa !36
  br label %207

207:                                              ; preds = %126, %186, %162, %154, %151, %2, %197
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #3 {
  %2 = load ptr, ptr %0, align 8, !tbaa !23
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !40
  store ptr %4, ptr %0, align 8, !tbaa !23
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !42
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !30
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !44
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !46
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @vect_recog_widen_mult_pattern(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #11
  %12 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %0) #13, !range !19
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %65, label %14

14:                                               ; preds = %3
  %15 = tail call fastcc ptr @gimple_expr_type(ptr noundef %0) #13
  %16 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #13, !range !31
  %17 = icmp eq i32 %16, 65
  br i1 %17, label %18, label %65

18:                                               ; preds = %14
  %19 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #13
  %20 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %0) #13
  %21 = getelementptr inbounds %struct.tree_common, ptr %19, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !30
  %23 = tail call zeroext i8 @types_compatible_p(ptr noundef %22, ptr noundef %15) #12
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %65, label %25

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.tree_common, ptr %20, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !30
  %28 = tail call zeroext i8 @types_compatible_p(ptr noundef %27, ptr noundef %15) #12
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %65, label %30

30:                                               ; preds = %25
  %31 = call fastcc zeroext i8 @widened_name_p(ptr noundef nonnull %19, ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %4) #13, !range !19
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %65, label %33

33:                                               ; preds = %30
  %34 = load ptr, ptr %4, align 8, !tbaa !17
  %35 = call fastcc ptr @gimple_assign_rhs1(ptr noundef %34) #13
  %36 = call fastcc zeroext i8 @widened_name_p(ptr noundef nonnull %20, ptr noundef %0, ptr noundef nonnull %7, ptr noundef nonnull %5) #13, !range !19
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %65, label %38

38:                                               ; preds = %33
  %39 = load ptr, ptr %5, align 8, !tbaa !17
  %40 = call fastcc ptr @gimple_assign_rhs1(ptr noundef %39) #13
  %41 = load ptr, ptr %6, align 8, !tbaa !17
  %42 = load ptr, ptr %7, align 8, !tbaa !17
  %43 = call zeroext i8 @types_compatible_p(ptr noundef %41, ptr noundef %42) #12
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %65, label %45

45:                                               ; preds = %38
  %46 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #12
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %45
  %49 = load ptr, ptr @vect_dump, align 8, !tbaa !17
  %50 = call i64 @fwrite(ptr nonnull @.str.1, i64 41, i64 1, ptr %49)
  br label %51

51:                                               ; preds = %48, %45
  %52 = call ptr @get_vectype_for_scalar_type(ptr noundef %41) #12
  %53 = icmp eq ptr %52, null
  br i1 %53, label %65, label %54

54:                                               ; preds = %51
  %55 = call zeroext i8 @supportable_widening_operation(i32 noundef 169, ptr noundef %0, ptr noundef nonnull %52, ptr noundef nonnull %8, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %11) #12
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %65, label %57

57:                                               ; preds = %54
  store ptr %52, ptr %1, align 8, !tbaa !17
  store ptr null, ptr %2, align 8, !tbaa !17
  %58 = call fastcc ptr @vect_recog_temp_ssa_var(ptr noundef %15, ptr noundef null) #13
  %59 = call ptr @gimple_build_assign_with_ops_stat(i32 noundef 169, ptr noundef %58, ptr noundef %35, ptr noundef %40) #12
  %60 = getelementptr inbounds %struct.tree_ssa_name, ptr %58, i64 0, i32 2
  store ptr %59, ptr %60, align 8, !tbaa !30
  %61 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #12
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %57
  %64 = load ptr, ptr @vect_dump, align 8, !tbaa !17
  call void @print_gimple_stmt(ptr noundef %64, ptr noundef %59, i32 noundef 0, i32 noundef 2) #12
  br label %65

65:                                               ; preds = %57, %63, %51, %54, %38, %33, %30, %18, %25, %14, %3
  %66 = phi ptr [ null, %3 ], [ null, %14 ], [ null, %25 ], [ null, %18 ], [ null, %30 ], [ null, %33 ], [ null, %38 ], [ null, %54 ], [ null, %51 ], [ %59, %63 ], [ %59, %57 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  ret ptr %66
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @vect_recog_widen_sum_pattern(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %6 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef %0) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  %7 = getelementptr inbounds %struct._stmt_vec_info, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !27
  %9 = load ptr, ptr %8, align 8, !tbaa !5
  %10 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %0) #13, !range !19
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %52, label %12

12:                                               ; preds = %3
  %13 = tail call fastcc ptr @gimple_expr_type(ptr noundef %0) #13
  %14 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #13, !range !31
  %15 = icmp eq i32 %14, 63
  br i1 %15, label %16, label %52

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct._stmt_vec_info, ptr %6, i64 0, i32 16
  %18 = load i32, ptr %17, align 8, !tbaa !37
  %19 = icmp eq i32 %18, 5
  br i1 %19, label %20, label %52

20:                                               ; preds = %16
  %21 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #13
  %22 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %0) #13
  %23 = getelementptr inbounds %struct.tree_common, ptr %21, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !30
  %25 = tail call zeroext i8 @types_compatible_p(ptr noundef %24, ptr noundef %13) #12
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %52, label %27

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.tree_common, ptr %22, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !30
  %30 = tail call zeroext i8 @types_compatible_p(ptr noundef %29, ptr noundef %13) #12
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %52, label %32

32:                                               ; preds = %27
  %33 = call fastcc zeroext i8 @widened_name_p(ptr noundef nonnull %21, ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %4) #13, !range !19
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %52, label %35

35:                                               ; preds = %32
  %36 = load ptr, ptr %4, align 8, !tbaa !17
  %37 = call fastcc ptr @gimple_assign_rhs1(ptr noundef %36) #13
  %38 = load ptr, ptr %5, align 8, !tbaa !17
  store ptr %38, ptr %1, align 8, !tbaa !17
  store ptr %13, ptr %2, align 8, !tbaa !17
  %39 = call fastcc ptr @vect_recog_temp_ssa_var(ptr noundef %13, ptr noundef null) #13
  %40 = call ptr @gimple_build_assign_with_ops_stat(i32 noundef 168, ptr noundef %39, ptr noundef %37, ptr noundef nonnull %22) #12
  %41 = getelementptr inbounds %struct.tree_ssa_name, ptr %39, i64 0, i32 2
  store ptr %40, ptr %41, align 8, !tbaa !30
  %42 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #12
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %35
  %45 = load ptr, ptr @vect_dump, align 8, !tbaa !17
  %46 = call i64 @fwrite(ptr nonnull @.str.6, i64 40, i64 1, ptr %45)
  %47 = load ptr, ptr @vect_dump, align 8, !tbaa !17
  call void @print_gimple_stmt(ptr noundef %47, ptr noundef %40, i32 noundef 0, i32 noundef 2) #12
  br label %48

48:                                               ; preds = %44, %35
  %49 = call fastcc zeroext i8 @nested_in_vect_loop_p(ptr noundef %9, ptr noundef %0) #13, !range !19
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %48
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 631, ptr noundef nonnull @.str.3) #12
  br label %52

52:                                               ; preds = %51, %48, %32, %20, %27, %16, %12, %3
  %53 = phi ptr [ null, %3 ], [ null, %12 ], [ null, %16 ], [ null, %27 ], [ null, %20 ], [ null, %32 ], [ %40, %48 ], [ %40, %51 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  ret ptr %53
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @vect_recog_dot_prod_pattern(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef %0) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  %10 = getelementptr inbounds %struct._stmt_vec_info, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !27
  %12 = load ptr, ptr %11, align 8, !tbaa !5
  %13 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %0) #13, !range !19
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %158, label %15

15:                                               ; preds = %3
  %16 = tail call fastcc ptr @gimple_expr_type(ptr noundef %0) #13
  %17 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #13, !range !31
  %18 = icmp eq i32 %17, 63
  br i1 %18, label %19, label %158

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct._stmt_vec_info, ptr %9, i64 0, i32 13
  %21 = load i8, ptr %20, align 8, !tbaa !39
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %34, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._stmt_vec_info, ptr %9, i64 0, i32 14
  %25 = load ptr, ptr %24, align 8, !tbaa !36
  %26 = tail call fastcc ptr @gimple_expr_type(ptr noundef %25) #13
  %27 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %25) #13, !range !31
  %28 = icmp eq i32 %27, 168
  br i1 %28, label %29, label %158

29:                                               ; preds = %23
  %30 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %25) #13
  %31 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %25) #13
  %32 = getelementptr inbounds %struct.tree_common, ptr %30, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !30
  store ptr %33, ptr %4, align 8, !tbaa !17
  br label %62

34:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  %35 = getelementptr inbounds %struct._stmt_vec_info, ptr %9, i64 0, i32 16
  %36 = load i32, ptr %35, align 8, !tbaa !37
  %37 = icmp eq i32 %36, 5
  br i1 %37, label %38, label %58

38:                                               ; preds = %34
  %39 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #13
  %40 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %0) #13
  %41 = getelementptr inbounds %struct.tree_common, ptr %39, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !30
  %43 = tail call zeroext i8 @types_compatible_p(ptr noundef %42, ptr noundef %16) #12
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %58, label %45

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.tree_common, ptr %40, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !30
  %48 = tail call zeroext i8 @types_compatible_p(ptr noundef %47, ptr noundef %16) #12
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %58, label %50

50:                                               ; preds = %45
  %51 = call fastcc zeroext i8 @widened_name_p(ptr noundef nonnull %39, ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5) #13, !range !19
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %50
  %54 = load ptr, ptr %5, align 8, !tbaa !17
  %55 = call fastcc ptr @gimple_assign_rhs1(ptr noundef %54) #13
  %56 = load ptr, ptr %4, align 8, !tbaa !17
  br label %59

57:                                               ; preds = %50
  store ptr %16, ptr %4, align 8, !tbaa !17
  br label %59

58:                                               ; preds = %34, %45, %38
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  br label %158

59:                                               ; preds = %53, %57
  %60 = phi ptr [ %56, %53 ], [ %16, %57 ]
  %61 = phi ptr [ %55, %53 ], [ %39, %57 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  br label %62

62:                                               ; preds = %59, %29
  %63 = phi ptr [ %33, %29 ], [ %60, %59 ]
  %64 = phi ptr [ %26, %29 ], [ %16, %59 ]
  %65 = phi ptr [ %31, %29 ], [ %40, %59 ]
  %66 = phi ptr [ %30, %29 ], [ %61, %59 ]
  %67 = getelementptr inbounds %struct.tree_ssa_name, ptr %66, i64 0, i32 2
  %68 = load ptr, ptr %67, align 8, !tbaa !30
  %69 = call fastcc zeroext i8 @is_gimple_assign(ptr noundef %68) #13, !range !19
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %158, label %71

71:                                               ; preds = %62
  %72 = call fastcc ptr @vinfo_for_stmt(ptr noundef %68) #13
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 262, ptr noundef nonnull @.str.3) #12
  br label %75

75:                                               ; preds = %71, %74
  %76 = getelementptr inbounds %struct._stmt_vec_info, ptr %72, i64 0, i32 16
  %77 = load i32, ptr %76, align 8, !tbaa !37
  %78 = icmp eq i32 %77, 3
  br i1 %78, label %79, label %158

79:                                               ; preds = %75
  %80 = call fastcc i32 @gimple_assign_rhs_code(ptr noundef %68) #13, !range !31
  %81 = icmp eq i32 %80, 65
  br i1 %81, label %82, label %158

82:                                               ; preds = %79
  %83 = getelementptr inbounds %struct._stmt_vec_info, ptr %72, i64 0, i32 13
  %84 = load i8, ptr %83, align 8, !tbaa !39
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %103, label %86

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct._stmt_vec_info, ptr %72, i64 0, i32 14
  %88 = load ptr, ptr %87, align 8, !tbaa !36
  %89 = call fastcc i32 @gimple_assign_rhs_code(ptr noundef %88) #13, !range !31
  %90 = icmp eq i32 %89, 169
  br i1 %90, label %91, label %158

91:                                               ; preds = %86
  %92 = call fastcc ptr @vinfo_for_stmt(ptr noundef %88) #13
  %93 = icmp eq ptr %92, null
  br i1 %93, label %94, label %95

94:                                               ; preds = %91
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 275, ptr noundef nonnull @.str.3) #12
  br label %95

95:                                               ; preds = %91, %94
  %96 = getelementptr inbounds %struct._stmt_vec_info, ptr %92, i64 0, i32 16
  %97 = load i32, ptr %96, align 8, !tbaa !37
  %98 = icmp eq i32 %97, 3
  br i1 %98, label %100, label %99

99:                                               ; preds = %95
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 276, ptr noundef nonnull @.str.3) #12
  br label %100

100:                                              ; preds = %95, %99
  %101 = call fastcc ptr @gimple_assign_rhs1(ptr noundef %88) #13
  %102 = call fastcc ptr @gimple_assign_rhs2(ptr noundef %88) #13
  br label %140

103:                                              ; preds = %82
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #11
  %104 = call fastcc ptr @gimple_assign_rhs1(ptr noundef %68) #13
  %105 = call fastcc ptr @gimple_assign_rhs2(ptr noundef %68) #13
  %106 = getelementptr inbounds %struct.tree_common, ptr %104, i64 0, i32 2
  %107 = load ptr, ptr %106, align 8, !tbaa !30
  %108 = call zeroext i8 @types_compatible_p(ptr noundef %107, ptr noundef %63) #12
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %130, label %110

110:                                              ; preds = %103
  %111 = getelementptr inbounds %struct.tree_common, ptr %105, i64 0, i32 2
  %112 = load ptr, ptr %111, align 8, !tbaa !30
  %113 = call zeroext i8 @types_compatible_p(ptr noundef %112, ptr noundef %63) #12
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %130, label %115

115:                                              ; preds = %110
  %116 = call fastcc zeroext i8 @widened_name_p(ptr noundef nonnull %104, ptr noundef %68, ptr noundef nonnull %6, ptr noundef nonnull %8) #13, !range !19
  %117 = icmp eq i8 %116, 0
  br i1 %117, label %130, label %118

118:                                              ; preds = %115
  %119 = load ptr, ptr %8, align 8, !tbaa !17
  %120 = call fastcc ptr @gimple_assign_rhs1(ptr noundef %119) #13
  %121 = call fastcc zeroext i8 @widened_name_p(ptr noundef nonnull %105, ptr noundef %68, ptr noundef nonnull %7, ptr noundef nonnull %8) #13, !range !19
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %130, label %123

123:                                              ; preds = %118
  %124 = load ptr, ptr %8, align 8, !tbaa !17
  %125 = call fastcc ptr @gimple_assign_rhs1(ptr noundef %124) #13
  %126 = load ptr, ptr %6, align 8, !tbaa !17
  %127 = load ptr, ptr %7, align 8, !tbaa !17
  %128 = call zeroext i8 @types_compatible_p(ptr noundef %126, ptr noundef %127) #12
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %110, %103, %115, %118, %123
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  br label %158

131:                                              ; preds = %123
  %132 = getelementptr inbounds %struct.tree_type, ptr %63, i64 0, i32 6
  %133 = load i32, ptr %132, align 4
  %134 = and i32 %133, 1023
  %135 = getelementptr inbounds %struct.tree_type, ptr %126, i64 0, i32 6
  %136 = load i32, ptr %135, align 4
  %137 = shl i32 %136, 1
  %138 = and i32 %137, 2046
  %139 = icmp eq i32 %134, %138
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  br i1 %139, label %140, label %158

140:                                              ; preds = %131, %100
  %141 = phi ptr [ %102, %100 ], [ %125, %131 ]
  %142 = phi ptr [ %101, %100 ], [ %120, %131 ]
  %143 = getelementptr inbounds %struct.tree_common, ptr %142, i64 0, i32 2
  %144 = load ptr, ptr %143, align 8, !tbaa !30
  store ptr %144, ptr %1, align 8, !tbaa !17
  store ptr %64, ptr %2, align 8, !tbaa !17
  %145 = call fastcc ptr @vect_recog_temp_ssa_var(ptr noundef %64, ptr noundef null) #13
  %146 = call ptr @build3_stat(i32 noundef 167, ptr noundef %64, ptr noundef %142, ptr noundef %141, ptr noundef %65) #12
  %147 = call ptr @gimple_build_assign_stat(ptr noundef %145, ptr noundef %146) #12
  %148 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #12
  %149 = icmp eq i8 %148, 0
  br i1 %149, label %154, label %150

150:                                              ; preds = %140
  %151 = load ptr, ptr @vect_dump, align 8, !tbaa !17
  %152 = call i64 @fwrite(ptr nonnull @.str.8, i64 39, i64 1, ptr %151)
  %153 = load ptr, ptr @vect_dump, align 8, !tbaa !17
  call void @print_gimple_stmt(ptr noundef %153, ptr noundef %147, i32 noundef 0, i32 noundef 2) #12
  br label %154

154:                                              ; preds = %150, %140
  %155 = call fastcc zeroext i8 @nested_in_vect_loop_p(ptr noundef %12, ptr noundef %0) #13, !range !19
  %156 = icmp eq i8 %155, 0
  br i1 %156, label %158, label %157

157:                                              ; preds = %154
  call void @fancy_abort(ptr noundef nonnull @.str.7, i32 noundef 320, ptr noundef nonnull @.str.3) #12
  br label %158

158:                                              ; preds = %130, %58, %157, %154, %86, %79, %75, %62, %23, %15, %3, %131
  %159 = phi ptr [ null, %131 ], [ null, %3 ], [ null, %15 ], [ null, %23 ], [ null, %62 ], [ null, %75 ], [ null, %79 ], [ null, %86 ], [ %147, %154 ], [ %147, %157 ], [ null, %58 ], [ null, %130 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  ret ptr %159
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @vect_recog_pow_pattern(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %0) #13, !range !19
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %69, label %6

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %0) #13
  %8 = icmp eq ptr %7, null
  br i1 %8, label %69, label %9

9:                                                ; preds = %6
  %10 = tail call fastcc ptr @gimple_call_fndecl(ptr noundef %0) #13
  %11 = getelementptr inbounds %struct.tree_function_decl, ptr %10, i64 0, i32 5
  %12 = load i32, ptr %11, align 8
  %13 = and i32 %12, 2047
  switch i32 %13, label %69 [
    i32 186, label %14
    i32 185, label %14
    i32 184, label %14
    i32 180, label %14
  ]

14:                                               ; preds = %9, %9, %9, %9
  %15 = tail call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef 0) #13
  %16 = tail call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef 1) #13
  %17 = load i64, ptr %16, align 8
  %18 = trunc i64 %17 to i32
  %19 = and i32 %18, 65535
  %20 = add nsw i32 %19, -23
  %21 = icmp ult i32 %20, 2
  br i1 %21, label %22, label %69

22:                                               ; preds = %14
  store ptr null, ptr %2, align 8, !tbaa !17
  %23 = tail call i32 @host_integerp(ptr noundef nonnull %16, i32 noundef 0) #12
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = tail call i64 @tree_low_cst(ptr noundef nonnull %16, i32 noundef 0) #12
  %27 = icmp eq i64 %26, 2
  br i1 %27, label %39, label %28

28:                                               ; preds = %25, %22
  %29 = load i64, ptr %16, align 8
  %30 = and i64 %29, 65535
  %31 = icmp eq i64 %30, 24
  br i1 %31, label %32, label %45

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.tree_real_cst, ptr %16, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !30
  %35 = tail call zeroext i8 @real_compare(i32 noundef 101, ptr noundef %34, ptr noundef nonnull @dconst2) #12
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i64, ptr %16, align 8
  br label %45

39:                                               ; preds = %32, %25
  %40 = getelementptr inbounds %struct.tree_common, ptr %15, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !30
  store ptr %41, ptr %1, align 8, !tbaa !17
  %42 = tail call fastcc ptr @vect_recog_temp_ssa_var(ptr noundef %41, ptr noundef null) #13
  %43 = tail call ptr @gimple_build_assign_with_ops_stat(i32 noundef 65, ptr noundef %42, ptr noundef %15, ptr noundef %15) #12
  %44 = getelementptr inbounds %struct.tree_ssa_name, ptr %42, i64 0, i32 2
  store ptr %43, ptr %44, align 8, !tbaa !30
  br label %69

45:                                               ; preds = %37, %28
  %46 = phi i64 [ %38, %37 ], [ %29, %28 ]
  %47 = and i64 %46, 65535
  %48 = icmp eq i64 %47, 24
  br i1 %48, label %49, label %69

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.tree_real_cst, ptr %16, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !30
  %52 = tail call zeroext i8 @real_compare(i32 noundef 101, ptr noundef %51, ptr noundef nonnull @dconsthalf) #12
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %69, label %54

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.tree_common, ptr %15, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !30
  %57 = tail call ptr @mathfn_built_in(ptr noundef %56, i32 noundef 228) #12
  %58 = load ptr, ptr %55, align 8, !tbaa !30
  %59 = tail call ptr @get_vectype_for_scalar_type(ptr noundef %58) #12
  store ptr %59, ptr %1, align 8, !tbaa !17
  %60 = icmp eq ptr %59, null
  br i1 %60, label %69, label %61

61:                                               ; preds = %54
  %62 = tail call ptr (ptr, i32, ...) @gimple_build_call(ptr noundef %57, i32 noundef 1, ptr noundef nonnull %15) #12
  %63 = load ptr, ptr %1, align 8, !tbaa !17
  %64 = tail call ptr @vectorizable_function(ptr noundef %62, ptr noundef %63, ptr noundef %63) #12
  %65 = icmp eq ptr %64, null
  br i1 %65, label %69, label %66

66:                                               ; preds = %61
  %67 = load ptr, ptr %55, align 8, !tbaa !30
  %68 = tail call fastcc ptr @vect_recog_temp_ssa_var(ptr noundef %67, ptr noundef %62) #13
  tail call fastcc void @gimple_call_set_lhs(ptr noundef %62, ptr noundef %68) #13
  br label %69

69:                                               ; preds = %61, %54, %45, %49, %66, %14, %9, %3, %6, %39
  %70 = phi ptr [ %43, %39 ], [ %62, %66 ], [ null, %6 ], [ null, %3 ], [ null, %14 ], [ null, %9 ], [ null, %49 ], [ null, %45 ], [ null, %54 ], [ null, %61 ]
  ret ptr %70
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_assign(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #13, !range !48
  %3 = icmp eq i32 %2, 6
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_expr_type(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #13, !range !48
  %3 = trunc i32 %2 to i8
  switch i8 %3, label %19 [
    i8 8, label %4
    i8 6, label %6
    i8 1, label %17
  ]

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_call_return_type(ptr noundef %0) #13
  br label %21

6:                                                ; preds = %1
  %7 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #13, !range !31
  %8 = icmp eq i32 %7, 66
  br i1 %8, label %9, label %13

9:                                                ; preds = %6
  %10 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #13
  %11 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !30
  br label %21

13:                                               ; preds = %6
  %14 = tail call ptr @gimple_get_lhs(ptr noundef %0) #12
  %15 = getelementptr inbounds %struct.tree_common, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !30
  br label %21

17:                                               ; preds = %1
  %18 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !17
  br label %21

19:                                               ; preds = %1
  %20 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !17
  br label %21

21:                                               ; preds = %4, %13, %9, %19, %17
  %22 = phi ptr [ %18, %17 ], [ %20, %19 ], [ %5, %4 ], [ %12, %9 ], [ %16, %13 ]
  ret ptr %22
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_expr_code(ptr noundef %0) #13, !range !31
  %3 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %2) #13, !range !48
  %4 = icmp eq i32 %3, 3
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #13
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i32
  %9 = and i32 %8, 65535
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi i32 [ %9, %5 ], [ %2, %1 ]
  ret i32 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs1(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #13
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs2(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #13
  %3 = icmp ugt i32 %2, 2
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 2) #13
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi ptr [ %5, %4 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: optsize
declare zeroext i8 @types_compatible_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @widened_name_p(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #11
  %9 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #11
  %11 = tail call fastcc ptr @vinfo_for_stmt(ptr noundef %1) #13
  %12 = getelementptr inbounds %struct._stmt_vec_info, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !27
  %14 = call zeroext i8 @vect_is_simple_use(ptr noundef %0, ptr noundef %13, ptr noundef null, ptr noundef %3, ptr noundef nonnull %8, ptr noundef nonnull %7) #12
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %62, label %16

16:                                               ; preds = %4
  %17 = load i32, ptr %7, align 4
  %18 = add i32 %17, -4
  %19 = icmp ult i32 %18, -3
  br i1 %19, label %62, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %3, align 8, !tbaa !17
  %22 = icmp eq ptr %21, null
  br i1 %22, label %62, label %23

23:                                               ; preds = %20
  %24 = call fastcc zeroext i8 @is_gimple_assign(ptr noundef nonnull %21) #13, !range !19
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %62, label %26

26:                                               ; preds = %23
  %27 = call fastcc i32 @gimple_assign_rhs_code(ptr noundef nonnull %21) #13, !range !31
  %28 = icmp eq i32 %27, 116
  br i1 %28, label %29, label %62

29:                                               ; preds = %26
  %30 = load ptr, ptr %3, align 8, !tbaa !17
  %31 = call fastcc ptr @gimple_assign_rhs1(ptr noundef %30) #13
  %32 = getelementptr inbounds %struct.tree_common, ptr %31, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !30
  store ptr %33, ptr %2, align 8, !tbaa !17
  %34 = load i64, ptr %10, align 8
  %35 = trunc i64 %34 to i32
  %36 = and i32 %35, 65535
  %37 = add nsw i32 %36, -6
  %38 = icmp ult i32 %37, 3
  br i1 %38, label %39, label %62

39:                                               ; preds = %29
  %40 = load i64, ptr %33, align 8
  %41 = trunc i64 %40 to i32
  %42 = and i32 %41, 65535
  %43 = add nsw i32 %42, -6
  %44 = icmp ult i32 %43, 3
  br i1 %44, label %45, label %62

45:                                               ; preds = %39
  %46 = xor i64 %40, %34
  %47 = and i64 %46, 2097152
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %62

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.tree_type, ptr %10, i64 0, i32 6
  %51 = load i32, ptr %50, align 4
  %52 = and i32 %51, 1023
  %53 = getelementptr inbounds %struct.tree_type, ptr %33, i64 0, i32 6
  %54 = load i32, ptr %53, align 4
  %55 = shl i32 %54, 1
  %56 = and i32 %55, 2046
  %57 = icmp ult i32 %52, %56
  br i1 %57, label %62, label %58

58:                                               ; preds = %49
  %59 = call zeroext i8 @vect_is_simple_use(ptr noundef nonnull %31, ptr noundef %13, ptr noundef null, ptr noundef nonnull %6, ptr noundef nonnull %5, ptr noundef nonnull %7) #12
  %60 = icmp ne i8 %59, 0
  %61 = zext i1 %60 to i8
  br label %62

62:                                               ; preds = %39, %29, %58, %45, %49, %26, %23, %20, %16, %4
  %63 = phi i8 [ 0, %4 ], [ 0, %16 ], [ 0, %20 ], [ 0, %23 ], [ 0, %26 ], [ 0, %39 ], [ 0, %29 ], [ 0, %49 ], [ 0, %45 ], [ %61, %58 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  ret i8 %63
}

; Function Attrs: optsize
declare ptr @get_vectype_for_scalar_type(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @supportable_widening_operation(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @vect_recog_temp_ssa_var(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call ptr @create_tmp_var(ptr noundef %0, ptr noundef nonnull @.str.5) #12
  %4 = tail call zeroext i8 @add_referenced_var(ptr noundef %3) #12
  %5 = tail call fastcc ptr @make_ssa_name(ptr noundef %3, ptr noundef %1) #13
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @gimple_build_assign_with_ops_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @print_gimple_stmt(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_return_type(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #13
  %3 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !30
  %5 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !30
  %7 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !30
  ret ptr %8
}

; Function Attrs: optsize
declare ptr @gimple_get_lhs(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fn(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #13
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #13, !range !19
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #13
  %7 = zext nneg i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !17
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #13, !range !48
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #13
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !49
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1622, ptr noundef nonnull @.str.3) #12
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #13, !range !48
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #13
  ret i32 %3
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #7 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !50
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_expr_code(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #13, !range !48
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
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1446, ptr noundef nonnull @.str.3) #12
  br label %8

8:                                                ; preds = %1, %7, %4
  %9 = phi i32 [ %6, %4 ], [ 0, %7 ], [ 59, %1 ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @get_gimple_rhs_class(i32 noundef %0) unnamed_addr #7 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %2
  %4 = load i8, ptr %3, align 1, !tbaa !30
  %5 = zext i8 %4 to i32
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_num_ops(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !30
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @vinfo_for_stmt(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_uid(ptr noundef %0) #13
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %14, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr @stmt_vec_info_vec, align 8
  %6 = tail call fastcc i32 @VEC_vec_void_p_base_length(ptr noundef %5) #13
  %7 = icmp ugt i32 %2, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 629, ptr noundef nonnull @.str.3) #12
  %9 = load ptr, ptr @stmt_vec_info_vec, align 8
  br label %10

10:                                               ; preds = %4, %8
  %11 = phi ptr [ %5, %4 ], [ %9, %8 ]
  %12 = add i32 %2, -1
  %13 = tail call fastcc ptr @VEC_vec_void_p_base_index(ptr noundef %11, i32 noundef %12) #13
  br label %14

14:                                               ; preds = %1, %10
  %15 = phi ptr [ %13, %10 ], [ null, %1 ]
  ret ptr %15
}

; Function Attrs: optsize
declare zeroext i8 @vect_is_simple_use(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_uid(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !30
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_vec_void_p_base_length(ptr noundef readonly %0) unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !51
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_vec_void_p_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !17
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @create_tmp_var(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @add_referenced_var(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @make_ssa_name(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr @cfun, align 8, !tbaa !17
  %4 = tail call ptr @make_ssa_name_fn(ptr noundef %3, ptr noundef %0, ptr noundef %1) #12
  ret ptr %4
}

; Function Attrs: optsize
declare ptr @make_ssa_name_fn(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @nested_in_vect_loop_p(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 8
  %4 = load ptr, ptr %3, align 8, !tbaa !53
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = tail call fastcc ptr @gimple_bb(ptr noundef %1) #13
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !54
  %10 = icmp eq ptr %4, %9
  %11 = zext i1 %10 to i8
  br label %12

12:                                               ; preds = %6, %2
  %13 = phi i8 [ 0, %2 ], [ %11, %6 ]
  ret i8 %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bb(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !30
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @build3_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gimple_build_assign_stat(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_call(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #13, !range !48
  %3 = icmp eq i32 %2, 8
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_lhs(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #13
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fndecl(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #13
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 121
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !30
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = add nuw nsw i32 %1, 3
  %4 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %3) #13
  ret ptr %4
}

; Function Attrs: optsize
declare i32 @host_integerp(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @tree_low_cst(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @real_compare(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @mathfn_built_in(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gimple_build_call(ptr noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @vectorizable_function(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_call_set_lhs(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, ptr noundef %1) #13
  %3 = icmp eq ptr %1, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 2
  store ptr %0, ptr %9, align 8, !tbaa !30
  br label %10

10:                                               ; preds = %8, %4, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_set_op(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #13, !range !19
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #13
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %5, %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1665, ptr noundef nonnull @.str.3) #12
  br label %9

9:                                                ; preds = %5, %8
  %10 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #13
  store ptr %1, ptr %10, align 8, !tbaa !17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #6 {
  %2 = load ptr, ptr %0, align 8, !tbaa !23
  %3 = load ptr, ptr %2, align 8, !tbaa !55
  ret ptr %3
}

; Function Attrs: optsize
declare i32 @vector_type_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @optab_for_tree_code(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @gsi_insert_before(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_vinfo_for_stmt(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc i32 @gimple_uid(ptr noundef %0) #13
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %2
  %6 = icmp eq ptr %1, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 639, ptr noundef nonnull @.str.3) #12
  br label %8

8:                                                ; preds = %5, %7
  %9 = load ptr, ptr @stmt_vec_info_vec, align 8
  %10 = tail call fastcc i32 @VEC_vec_void_p_base_length(ptr noundef %9) #13
  %11 = add i32 %10, 1
  tail call fastcc void @gimple_set_uid(ptr noundef %0, i32 noundef %11) #13
  tail call fastcc void @VEC_vec_void_p_heap_safe_push(ptr noundef %1) #13
  br label %15

12:                                               ; preds = %2
  %13 = load ptr, ptr @stmt_vec_info_vec, align 8
  %14 = add i32 %3, -1
  tail call fastcc void @VEC_vec_void_p_base_replace(ptr noundef %13, i32 noundef %14, ptr noundef %1) #13
  br label %15

15:                                               ; preds = %12, %8
  ret void
}

; Function Attrs: optsize
declare ptr @new_stmt_vec_info(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @gimple_set_uid(ptr nocapture noundef writeonly %0, i32 noundef %1) unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 1
  store i32 %1, ptr %3, align 4, !tbaa !30
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_vec_void_p_heap_safe_push(ptr noundef %0) unnamed_addr #0 {
  tail call fastcc void @VEC_vec_void_p_heap_reserve() #13
  %2 = load ptr, ptr @stmt_vec_info_vec, align 8, !tbaa !17
  tail call fastcc void @VEC_vec_void_p_base_quick_push(ptr noundef %2, ptr noundef %0) #13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_vec_void_p_base_replace(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #9 {
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %0, i64 0, i32 2, i64 %4
  store ptr %2, ptr %5, align 8, !tbaa !17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_vec_void_p_heap_reserve() unnamed_addr #0 {
  %1 = load ptr, ptr @stmt_vec_info_vec, align 8, !tbaa !17
  %2 = tail call fastcc i32 @VEC_vec_void_p_base_space(ptr noundef %1) #13
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = tail call ptr @vec_heap_p_reserve(ptr noundef %1, i32 noundef 1) #12
  store ptr %5, ptr @stmt_vec_info_vec, align 8, !tbaa !17
  br label %6

6:                                                ; preds = %4, %0
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_vec_void_p_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #9 {
  %3 = load i32, ptr %0, align 8, !tbaa !51
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !51
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_vec_void_p_base_space(ptr noundef readonly %0) unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !56
  %6 = load i32, ptr %0, align 8, !tbaa !51
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #10

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind }
attributes #11 = { nounwind }
attributes #12 = { nounwind optsize }
attributes #13 = { optsize }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"_loop_vec_info", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !10, i64 32, !8, i64 36, !10, i64 40, !7, i64 48, !10, i64 56, !10, i64 60, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !10, i64 96, !7, i64 104, !7, i64 112, !10, i64 120}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!6, !7, i64 8}
!12 = !{!13, !10, i64 36}
!13 = !{!"loop", !10, i64 0, !10, i64 4, !7, i64 8, !7, i64 16, !14, i64 24, !10, i64 32, !10, i64 36, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !15, i64 80, !15, i64 96, !8, i64 112, !8, i64 113, !10, i64 116, !7, i64 120, !7, i64 128, !8, i64 136, !7, i64 144}
!14 = !{!"lpt_decision", !10, i64 0, !10, i64 4}
!15 = !{!"", !16, i64 0, !16, i64 8}
!16 = !{!"long", !8, i64 0}
!17 = !{!7, !7, i64 0}
!18 = !{i64 0, i64 8, !17, i64 8, i64 8, !17, i64 16, i64 8, !17}
!19 = !{i8 0, i8 2}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.mustprogress"}
!22 = distinct !{!22, !21}
!23 = !{!24, !7, i64 0}
!24 = !{!"", !7, i64 0, !7, i64 8, !7, i64 16}
!25 = !{!24, !7, i64 8}
!26 = !{!24, !7, i64 16}
!27 = !{!28, !7, i64 16}
!28 = !{!"_stmt_vec_info", !10, i64 0, !7, i64 8, !7, i64 16, !10, i64 24, !8, i64 28, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !8, i64 96, !7, i64 104, !7, i64 112, !10, i64 120, !7, i64 128, !7, i64 136, !10, i64 144, !10, i64 148, !10, i64 152, !7, i64 160, !8, i64 168, !29, i64 172, !10, i64 180, !7, i64 184}
!29 = !{!"", !10, i64 0, !10, i64 4}
!30 = !{!8, !8, i64 0}
!31 = !{i32 0, i32 65536}
!32 = !{!33, !10, i64 0}
!33 = !{!"optab_handlers", !10, i64 0}
!34 = !{!35, !7, i64 24}
!35 = !{!"insn_data", !7, i64 0, !8, i64 8, !7, i64 16, !7, i64 24, !8, i64 32, !8, i64 33, !8, i64 34, !8, i64 35}
!36 = !{!28, !7, i64 104}
!37 = !{!28, !10, i64 120}
!38 = !{!28, !7, i64 32}
!39 = !{!28, !8, i64 96}
!40 = !{!41, !7, i64 16}
!41 = !{!"gimple_seq_node_d", !7, i64 0, !7, i64 8, !7, i64 16}
!42 = !{!43, !10, i64 96}
!43 = !{!"basic_block_def", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !8, i64 32, !7, i64 48, !7, i64 56, !8, i64 64, !16, i64 72, !10, i64 80, !10, i64 84, !10, i64 88, !10, i64 92, !10, i64 96}
!44 = !{!45, !7, i64 0}
!45 = !{!"gimple_bb_info", !7, i64 0, !7, i64 8}
!46 = !{!47, !7, i64 0}
!47 = !{!"gimple_seq_d", !7, i64 0, !7, i64 8, !7, i64 16}
!48 = !{i32 0, i32 256}
!49 = !{!16, !16, i64 0}
!50 = !{!10, !10, i64 0}
!51 = !{!52, !10, i64 0}
!52 = !{!"VEC_vec_void_p_base", !10, i64 0, !10, i64 4, !8, i64 8}
!53 = !{!13, !7, i64 48}
!54 = !{!43, !7, i64 24}
!55 = !{!41, !7, i64 0}
!56 = !{!52, !10, i64 4}

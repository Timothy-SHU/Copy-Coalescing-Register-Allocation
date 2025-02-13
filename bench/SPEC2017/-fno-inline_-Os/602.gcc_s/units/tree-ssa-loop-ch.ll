; ModuleID = 'tree-ssa-loop-ch.c'
source_filename = "tree-ssa-loop-ch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gimple_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.eni_weights_d = type { i32, i32, i32, i32, i8 }
%struct.loop_iterator = type { ptr, i32 }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.loop = type { i32, i32, ptr, ptr, %struct.lpt_decision, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.double_int, %struct.double_int, i8, i8, i32, ptr, ptr, i8, ptr }
%struct.lpt_decision = type { i32, i32 }
%struct.double_int = type { i64, i64 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.loops = type { i32, ptr, ptr, ptr }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.VEC_int_base = type { i32, i32, [1 x i32] }
%struct.VEC_loop_p_base = type { i32, i32, [1 x ptr] }

@pass_ch = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str, ptr @gate_ch, ptr @copy_loop_headers, ptr null, ptr null, i32 0, i32 102, i32 40, i32 0, i32 0, i32 0, i32 37 } }, align 8
@.str = private unnamed_addr constant [3 x i8] c"ch\00", align 1
@flag_tree_ch = external local_unnamed_addr global i32, align 4
@cfun = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"tree-ssa-loop-ch.c\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@dump_file = external local_unnamed_addr global ptr, align 8
@dump_flags = external local_unnamed_addr global i32, align 4
@.str.3 = private unnamed_addr constant [54 x i8] c"Duplicating header of the loop %d up to edge %d->%d.\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Duplication failed.\0A\00", align 1
@warn_strict_overflow = external local_unnamed_addr global i32, align 4
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@eni_size_weights = external global %struct.eni_weights_d, align 4
@.str.5 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gimple_rhs_class_table = external local_unnamed_addr constant [0 x i8], align 1
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_ch() #0 !prof !104 !PGOFuncName !105 {
  %1 = load i32, ptr @flag_tree_ch, align 4, !tbaa !106
  %2 = icmp ne i32 %1, 0
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @copy_loop_headers() #1 !prof !104 !PGOFuncName !110 {
  %1 = alloca %struct.loop_iterator, align 8
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #13
  tail call void @loop_optimizer_init(i32 noundef 3) #14
  %5 = tail call fastcc i32 @number_of_loops() #15
  %6 = icmp ult i32 %5, 2
  br i1 %6, label %138, label %7, !prof !111

7:                                                ; preds = %0
  %8 = load ptr, ptr @cfun, align 8, !tbaa !112
  %9 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !114
  %11 = getelementptr inbounds %struct.control_flow_graph, ptr %10, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !116
  %13 = sext i32 %12 to i64
  %14 = shl nsw i64 %13, 3
  %15 = tail call ptr @xmalloc(i64 noundef %14) #14
  %16 = load ptr, ptr @cfun, align 8, !tbaa !112
  %17 = getelementptr inbounds %struct.function, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !114
  %19 = getelementptr inbounds %struct.control_flow_graph, ptr %18, i64 0, i32 3
  %20 = load i32, ptr %19, align 8, !tbaa !116
  %21 = sext i32 %20 to i64
  %22 = shl nsw i64 %21, 3
  %23 = tail call ptr @xmalloc(i64 noundef %22) #14
  %24 = load ptr, ptr @cfun, align 8, !tbaa !112
  %25 = getelementptr inbounds %struct.function, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !114
  %27 = getelementptr inbounds %struct.control_flow_graph, ptr %26, i64 0, i32 3
  %28 = load i32, ptr %27, align 8, !tbaa !116
  call fastcc void @fel_init(ptr noundef nonnull %1, ptr noundef nonnull %2) #15
  %29 = load ptr, ptr %2, align 8, !tbaa !112
  %30 = icmp eq ptr %29, null
  br i1 %30, label %137, label %31, !prof !118

31:                                               ; preds = %7, %134
  %32 = phi ptr [ %135, %134 ], [ %29, %7 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  store i32 20, ptr %3, align 4, !tbaa !106
  %33 = getelementptr inbounds %struct.loop, ptr %32, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !119
  %35 = tail call fastcc zeroext i8 @do_while_loop_p(ptr noundef nonnull %32) #15, !range !124
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %134, !prof !125

37:                                               ; preds = %31
  %38 = call fastcc zeroext i8 @should_duplicate_loop_header_p(ptr noundef %34, ptr noundef nonnull %32, ptr noundef nonnull %3) #15, !range !124
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %134, label %40, !prof !126

40:                                               ; preds = %37, %58
  %41 = phi ptr [ %60, %58 ], [ %34, %37 ]
  %42 = phi i32 [ %53, %58 ], [ 0, %37 ]
  %43 = getelementptr inbounds %struct.basic_block_def, ptr %41, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !127
  %45 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %44, i32 noundef 0) #15
  %46 = getelementptr inbounds %struct.edge_def, ptr %45, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !129
  %48 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef nonnull %32, ptr noundef %47) #14
  %49 = icmp eq i8 %48, 0
  %50 = load ptr, ptr %43, align 8, !tbaa !127
  %51 = zext i1 %49 to i32
  %52 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %50, i32 noundef %51) #15
  %53 = add i32 %42, 1
  %54 = zext i32 %42 to i64
  %55 = getelementptr inbounds ptr, ptr %15, i64 %54
  store ptr %41, ptr %55, align 8, !tbaa !112
  %56 = icmp ugt i32 %28, %53
  br i1 %56, label %58, label %57, !prof !131

57:                                               ; preds = %40
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 190, ptr noundef nonnull @.str.2) #14
  br label %58

58:                                               ; preds = %40, %57
  %59 = getelementptr inbounds %struct.edge_def, ptr %52, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !129
  %61 = call fastcc zeroext i8 @should_duplicate_loop_header_p(ptr noundef %60, ptr noundef nonnull %32, ptr noundef nonnull %3) #15, !range !124
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %63, label %40, !prof !132, !llvm.loop !133

63:                                               ; preds = %58
  %64 = load ptr, ptr @dump_file, align 8, !tbaa !112
  %65 = icmp eq ptr %64, null
  br i1 %65, label %80, label %66, !prof !135

66:                                               ; preds = %63
  %67 = load i32, ptr @dump_flags, align 4, !tbaa !106
  %68 = and i32 %67, 8
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %80, label %70

70:                                               ; preds = %66
  %71 = load i32, ptr %32, align 8, !tbaa !136
  %72 = load ptr, ptr %52, align 8, !tbaa !137
  %73 = getelementptr inbounds %struct.basic_block_def, ptr %72, i64 0, i32 9
  %74 = load i32, ptr %73, align 8, !tbaa !138
  %75 = getelementptr inbounds %struct.edge_def, ptr %52, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !129
  %77 = getelementptr inbounds %struct.basic_block_def, ptr %76, i64 0, i32 9
  %78 = load i32, ptr %77, align 8, !tbaa !138
  %79 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %64, ptr noundef nonnull @.str.3, i32 noundef %71, i32 noundef %74, i32 noundef %78) #15
  br label %80

80:                                               ; preds = %70, %66, %63
  %81 = getelementptr inbounds %struct.edge_def, ptr %52, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !129
  %83 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %82) #15, !range !124
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %85, label %88, !prof !139

85:                                               ; preds = %80
  %86 = tail call ptr @split_edge(ptr noundef nonnull %52) #14
  %87 = tail call fastcc ptr @single_pred_edge(ptr noundef %86) #15
  br label %88

88:                                               ; preds = %85, %80
  %89 = phi ptr [ %52, %80 ], [ %87, %85 ]
  %90 = tail call ptr @loop_preheader_edge(ptr noundef nonnull %32) #14
  %91 = tail call zeroext i8 @gimple_duplicate_sese_region(ptr noundef %90, ptr noundef %89, ptr noundef nonnull %15, i32 noundef %53, ptr noundef %23) #14
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %93, label %96, !prof !139

93:                                               ; preds = %88
  %94 = load ptr, ptr @dump_file, align 8, !tbaa !112
  %95 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 20, i64 1, ptr %94)
  br label %134

96:                                               ; preds = %88
  %97 = load i32, ptr @warn_strict_overflow, align 4, !tbaa !106
  %98 = icmp sgt i32 %97, 0
  br i1 %98, label %99, label %129, !prof !139

99:                                               ; preds = %96
  %100 = icmp eq i32 %53, 0
  br i1 %100, label %129, label %101

101:                                              ; preds = %99
  %102 = zext i32 %53 to i64
  br label %103

103:                                              ; preds = %101, %126
  %104 = phi i64 [ 0, %101 ], [ %127, %126 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #13
  %105 = getelementptr inbounds ptr, ptr %23, i64 %104
  %106 = load ptr, ptr %105, align 8, !tbaa !112
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %106) #15
  %107 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #15, !range !124
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %109, label %126

109:                                              ; preds = %103, %123
  %110 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #15
  %111 = tail call fastcc i32 @gimple_code(ptr noundef %110) #15, !range !140
  %112 = icmp eq i32 %111, 1
  br i1 %112, label %122, label %113

113:                                              ; preds = %109
  %114 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %110) #15, !range !124
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %123, label %116

116:                                              ; preds = %113
  %117 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %110) #15, !range !141
  %118 = zext nneg i32 %117 to i64
  %119 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %118
  %120 = load i32, ptr %119, align 4, !tbaa !106
  %121 = icmp eq i32 %120, 5
  br i1 %121, label %122, label %123

122:                                              ; preds = %116, %109
  tail call fastcc void @gimple_set_no_warning(ptr noundef %110) #15
  br label %123

123:                                              ; preds = %122, %116, %113
  call fastcc void @gsi_next(ptr noundef nonnull %4) #15
  %124 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #15, !range !124
  %125 = icmp eq i8 %124, 0
  br i1 %125, label %109, label %126, !llvm.loop !142

126:                                              ; preds = %123, %103
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #13
  %127 = add nuw nsw i64 %104, 1
  %128 = icmp eq i64 %127, %102
  br i1 %128, label %129, label %103, !llvm.loop !143

129:                                              ; preds = %126, %99, %96
  %130 = tail call ptr @loop_preheader_edge(ptr noundef nonnull %32) #14
  %131 = tail call ptr @split_edge(ptr noundef %130) #14
  %132 = tail call ptr @loop_latch_edge(ptr noundef nonnull %32) #14
  %133 = tail call ptr @split_edge(ptr noundef %132) #14
  br label %134

134:                                              ; preds = %37, %31, %129, %93
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  call fastcc void @fel_next(ptr noundef nonnull %1, ptr noundef nonnull %2) #15
  %135 = load ptr, ptr %2, align 8, !tbaa !112
  %136 = icmp eq ptr %135, null
  br i1 %136, label %137, label %31, !prof !144, !llvm.loop !145

137:                                              ; preds = %134, %7
  tail call void @free(ptr noundef %15) #15
  tail call void @free(ptr noundef %23) #15
  br label %138

138:                                              ; preds = %0, %137
  tail call void @loop_optimizer_finalize() #14
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #13
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare void @loop_optimizer_init(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @number_of_loops() unnamed_addr #4 !prof !146 !PGOFuncName !147 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !112
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !148
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !149

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.loops, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !150
  %8 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %7) #15
  br label %9

9:                                                ; preds = %0, %5
  %10 = phi i32 [ %8, %5 ], [ 0, %0 ]
  ret i32 %10
}

; Function Attrs: optsize
declare void @loop_optimizer_finalize() local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fel_init(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #1 !prof !152 !PGOFuncName !153 {
  %3 = getelementptr inbounds %struct.loop_iterator, ptr %0, i64 0, i32 1
  store i32 0, ptr %3, align 8, !tbaa !154
  %4 = load ptr, ptr @cfun, align 8, !tbaa !112
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !148
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9, !prof !156

8:                                                ; preds = %2
  store ptr null, ptr %0, align 8, !tbaa !157
  store ptr null, ptr %1, align 8, !tbaa !112
  br label %38

9:                                                ; preds = %2
  %10 = tail call fastcc i32 @number_of_loops() #15
  %11 = tail call fastcc ptr @VEC_int_heap_alloc(i32 noundef %10) #15
  store ptr %11, ptr %0, align 8, !tbaa !157
  %12 = load ptr, ptr @cfun, align 8, !tbaa !112
  %13 = getelementptr inbounds %struct.function, ptr %12, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !148
  %15 = getelementptr inbounds %struct.loops, ptr %14, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !158
  br label %17

17:                                               ; preds = %27, %9
  %18 = phi ptr [ %16, %9 ], [ %28, %27 ]
  %19 = load i32, ptr %18, align 8, !tbaa !136
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %23, !prof !159

21:                                               ; preds = %17
  %22 = load ptr, ptr %0, align 8, !tbaa !157
  tail call fastcc void @VEC_int_base_quick_push(ptr noundef %22, i32 noundef %19) #15
  br label %23

23:                                               ; preds = %21, %17
  %24 = getelementptr inbounds %struct.loop, ptr %18, i64 0, i32 8
  %25 = load ptr, ptr %24, align 8, !tbaa !160
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27, !prof !161

27:                                               ; preds = %29, %23
  %28 = phi ptr [ %25, %23 ], [ %32, %29 ]
  br label %17

29:                                               ; preds = %23, %34
  %30 = phi ptr [ %35, %34 ], [ %18, %23 ]
  %31 = getelementptr inbounds %struct.loop, ptr %30, i64 0, i32 9
  %32 = load ptr, ptr %31, align 8, !tbaa !162
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %27, !prof !163

34:                                               ; preds = %29
  %35 = tail call fastcc ptr @loop_outer(ptr noundef nonnull %30) #15
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %29, !prof !164, !llvm.loop !165

37:                                               ; preds = %34
  tail call fastcc void @fel_next(ptr noundef nonnull %0, ptr noundef %1) #15
  br label %38

38:                                               ; preds = %37, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @do_while_loop_p(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !166 !PGOFuncName !167 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !168
  %4 = tail call ptr @last_stmt(ptr noundef %3) #14
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6, !prof !169

6:                                                ; preds = %1
  %7 = tail call fastcc i32 @gimple_code(ptr noundef nonnull %4) #15, !range !140
  %8 = icmp eq i32 %7, 4
  br i1 %8, label %9, label %18, !prof !170

9:                                                ; preds = %6, %1
  %10 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !119
  %12 = tail call ptr @last_and_only_stmt(ptr noundef %11) #14
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14, !prof !171

14:                                               ; preds = %9
  %15 = tail call fastcc i32 @gimple_code(ptr noundef nonnull %12) #15, !range !140
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %18, label %17, !prof !172

17:                                               ; preds = %14, %9
  br label %18

18:                                               ; preds = %14, %6, %17
  %19 = phi i8 [ 1, %17 ], [ 0, %6 ], [ 0, %14 ]
  ret i8 %19
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @should_duplicate_loop_header_p(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #1 !prof !173 !PGOFuncName !174 {
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #13
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !175
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %66, !prof !176

8:                                                ; preds = %3
  %9 = tail call zeroext i8 @optimize_loop_for_size_p(ptr noundef %1) #14
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %66, !prof !177

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !127
  %14 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %13) #15
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17, !prof !178

16:                                               ; preds = %11
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 68, ptr noundef nonnull @.str.2) #14
  br label %17

17:                                               ; preds = %11, %16
  %18 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef nonnull %0) #15, !range !124
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %66, !prof !179

20:                                               ; preds = %17
  %21 = load ptr, ptr %12, align 8, !tbaa !127
  %22 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %21, i32 noundef 0) #15
  %23 = getelementptr inbounds %struct.edge_def, ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !129
  %25 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %1, ptr noundef %24) #14
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %34, label %27, !prof !180

27:                                               ; preds = %20
  %28 = load ptr, ptr %12, align 8, !tbaa !127
  %29 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %28, i32 noundef 1) #15
  %30 = getelementptr inbounds %struct.edge_def, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !129
  %32 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %1, ptr noundef %31) #14
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %66, !prof !181

34:                                               ; preds = %27, %20
  %35 = getelementptr inbounds %struct.loop, ptr %1, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !119
  %37 = icmp eq ptr %36, %0
  br i1 %37, label %41, label %38, !prof !182

38:                                               ; preds = %34
  %39 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef nonnull %0) #15, !range !124
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %66, label %41, !prof !183

41:                                               ; preds = %38, %34
  %42 = tail call ptr @last_stmt(ptr noundef nonnull %0) #14
  %43 = tail call fastcc i32 @gimple_code(ptr noundef %42) #15, !range !140
  %44 = icmp eq i32 %43, 1
  br i1 %44, label %45, label %66, !prof !184

45:                                               ; preds = %41
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef nonnull %0) #15
  %46 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #15, !range !124
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %66, !prof !185

48:                                               ; preds = %45, %63
  %49 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #15
  %50 = tail call fastcc i32 @gimple_code(ptr noundef %49) #15, !range !140
  %51 = icmp eq i32 %50, 4
  br i1 %51, label %63, label %52, !prof !186

52:                                               ; preds = %48
  %53 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %49) #15, !range !124
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %63, !prof !187

55:                                               ; preds = %52
  %56 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %49) #15, !range !124
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %58, label %66, !prof !188

58:                                               ; preds = %55
  %59 = tail call i32 @estimate_num_insns(ptr noundef %49, ptr noundef nonnull @eni_size_weights) #14
  %60 = load i32, ptr %2, align 4, !tbaa !106
  %61 = sub nsw i32 %60, %59
  store i32 %61, ptr %2, align 4, !tbaa !106
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %66, label %63, !prof !189

63:                                               ; preds = %58, %52, %48
  call fastcc void @gsi_next(ptr noundef nonnull %4) #15
  %64 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #15, !range !124
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %48, label %66, !prof !190, !llvm.loop !191

66:                                               ; preds = %55, %58, %63, %45, %41, %38, %27, %17, %8, %3
  %67 = phi i8 [ 0, %3 ], [ 0, %8 ], [ 0, %17 ], [ 0, %27 ], [ 0, %38 ], [ 0, %41 ], [ 1, %45 ], [ 0, %55 ], [ 0, %58 ], [ 1, %63 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #13
  ret i8 %67
}

; Function Attrs: optsize
declare zeroext i8 @flow_bb_inside_loop_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 !prof !192 !PGOFuncName !193 {
  %3 = zext nneg i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !112
  ret ptr %5
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_pred_p(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !194 !PGOFuncName !195 {
  %2 = load ptr, ptr %0, align 8, !tbaa !196
  %3 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %2) #15
  %4 = icmp eq i32 %3, 1
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_pred_edge(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !197 !PGOFuncName !198 {
  %2 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %0) #15, !range !124
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 655, ptr noundef nonnull @.str.2) #14
  br label %5

5:                                                ; preds = %1, %4
  %6 = load ptr, ptr %0, align 8, !tbaa !196
  %7 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %6, i32 noundef 0) #15
  ret ptr %7
}

; Function Attrs: optsize
declare ptr @split_edge(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @loop_preheader_edge(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @gimple_duplicate_sese_region(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #7 !prof !199 !PGOFuncName !200 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #15
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #15
  store ptr %4, ptr %0, align 8, !tbaa !201
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !203
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !204
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #5 !prof !205 !PGOFuncName !206 {
  %2 = load ptr, ptr %0, align 8, !tbaa !201
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #4 !prof !207 !PGOFuncName !208 {
  %2 = load ptr, ptr %0, align 8, !tbaa !201
  %3 = load ptr, ptr %2, align 8, !tbaa !209
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !211 !PGOFuncName !212 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @gimple_set_no_warning(ptr nocapture noundef %0) unnamed_addr #8 !prof !197 !PGOFuncName !213 {
  %2 = load i32, ptr %0, align 8
  %3 = or i32 %2, 256
  store i32 %3, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_assign(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !197 !PGOFuncName !214 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #15, !range !140
  %3 = icmp eq i32 %2, 6
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) unnamed_addr #1 !prof !197 !PGOFuncName !215 {
  %2 = tail call fastcc i32 @gimple_expr_code(ptr noundef %0) #15, !range !141
  %3 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %2) #15, !range !140
  %4 = icmp eq i32 %3, 3
  br i1 %4, label %5, label %10

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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #7 !prof !216 !PGOFuncName !217 {
  %2 = load ptr, ptr %0, align 8, !tbaa !201
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !218
  store ptr %4, ptr %0, align 8, !tbaa !201
  ret void
}

; Function Attrs: optsize
declare ptr @loop_latch_edge(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fel_next(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #1 !prof !219 !PGOFuncName !220 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  %4 = getelementptr inbounds %struct.loop_iterator, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !154
  br label %6

6:                                                ; preds = %11, %2
  %7 = phi i32 [ %12, %11 ], [ %5, %2 ]
  %8 = load ptr, ptr %0, align 8, !tbaa !157
  %9 = call fastcc i32 @VEC_int_base_iterate(ptr noundef %8, i32 noundef %7, ptr noundef nonnull %3) #15, !range !221
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11, !prof !222

11:                                               ; preds = %6
  %12 = add i32 %7, 1
  store i32 %12, ptr %4, align 8, !tbaa !154
  %13 = load i32, ptr %3, align 4, !tbaa !106
  %14 = tail call fastcc ptr @get_loop(i32 noundef %13) #15
  store ptr %14, ptr %1, align 8, !tbaa !112
  %15 = icmp eq ptr %14, null
  br i1 %15, label %6, label %17, !prof !223, !llvm.loop !224

16:                                               ; preds = %6
  tail call fastcc void @VEC_int_heap_free(ptr noundef nonnull %0) #15
  store ptr null, ptr %1, align 8, !tbaa !112
  br label %17

17:                                               ; preds = %11, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_loop_p_base_length(ptr noundef readonly %0) unnamed_addr #5 !prof !225 !PGOFuncName !226 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !227

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !228
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_int_heap_alloc(i32 noundef %0) unnamed_addr #1 !prof !152 !PGOFuncName !230 {
  %2 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %0, i64 noundef 8, i64 noundef 4) #14
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_int_base_quick_push(ptr noundef %0, i32 noundef %1) unnamed_addr #8 !prof !166 !PGOFuncName !231 {
  %3 = load i32, ptr %0, align 4, !tbaa !232
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 4, !tbaa !232
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %5
  store i32 %1, ptr %6, align 4, !tbaa !106
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @loop_outer(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !234 !PGOFuncName !235 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !236
  %4 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %3) #15
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6, !prof !237

6:                                                ; preds = %1
  %7 = add i32 %4, -1
  %8 = tail call fastcc ptr @VEC_loop_p_base_index(ptr noundef %3, i32 noundef %7) #15
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: optsize
declare ptr @vec_heap_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_loop_p_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 !prof !238 !PGOFuncName !239 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !112
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @last_stmt(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @last_and_only_stmt(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @optimize_loop_for_size_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #5 !prof !240 !PGOFuncName !241 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !242

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !243
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_succ_p(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !245 !PGOFuncName !246 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !127
  %4 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %3) #15
  %5 = icmp eq i32 %4, 1
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_debug(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !247 !PGOFuncName !248 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #15, !range !140
  %3 = icmp eq i32 %2, 2
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_call(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !247 !PGOFuncName !249 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #15, !range !140
  %3 = icmp eq i32 %2, 8
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare i32 @estimate_num_insns(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #4 !prof !199 !PGOFuncName !250 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !251
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12, !prof !252

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !253
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10, !prof !254

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !255
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #5 !prof !199 !PGOFuncName !257 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !254

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !258
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_expr_code(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !197 !PGOFuncName !260 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #15, !range !140
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
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 1446, ptr noundef nonnull @.str.2) #14
  br label %8

8:                                                ; preds = %1, %7, %4
  %9 = phi i32 [ %6, %4 ], [ 0, %7 ], [ 59, %1 ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @get_gimple_rhs_class(i32 noundef %0) unnamed_addr #10 !prof !197 !PGOFuncName !261 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %2
  %4 = load i8, ptr %3, align 1, !tbaa !253
  %5 = zext i8 %4 to i32
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs1(ptr noundef %0) unnamed_addr #1 !prof !197 !PGOFuncName !262 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0) #15
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0) unnamed_addr #1 !prof !197 !PGOFuncName !263 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #15, !range !124
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #15
  %6 = getelementptr inbounds ptr, ptr %5, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !112
  br label %8

8:                                                ; preds = %1, %4
  %9 = phi ptr [ %7, %4 ], [ null, %1 ]
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !197 !PGOFuncName !264 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #15, !range !140
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #1 !prof !197 !PGOFuncName !265 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #15
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !266
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.6, i32 noundef 1622, ptr noundef nonnull @.str.2) #14
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !197 !PGOFuncName !267 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #15, !range !140
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #15
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #10 !prof !197 !PGOFuncName !268 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !106
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_int_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #8 !prof !219 !PGOFuncName !269 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5, !prof !270

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 4, !tbaa !232
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12, !prof !159

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !106
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi i32 [ %11, %8 ], [ 0, %5 ], [ 0, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store i32 %13, ptr %2, align 4, !tbaa !106
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_loop(i32 noundef %0) unnamed_addr #4 !prof !166 !PGOFuncName !271 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !112
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !148
  %5 = getelementptr inbounds %struct.loops, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !150
  %7 = tail call fastcc ptr @VEC_loop_p_base_index(ptr noundef %6, i32 noundef %0) #15
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_int_heap_free(ptr nocapture noundef %0) unnamed_addr #11 !prof !152 !PGOFuncName !272 {
  %2 = load ptr, ptr %0, align 8, !tbaa !112
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !156

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #15
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !112
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #12

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind }
attributes #13 = { nounwind }
attributes #14 = { nounwind optsize }
attributes #15 = { optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!103}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102}
!36 = !{ptr @copy_loop_headers, ptr @loop_optimizer_init, i64 6652}
!37 = !{ptr @copy_loop_headers, ptr @number_of_loops, i64 6652}
!38 = !{ptr @copy_loop_headers, ptr @xmalloc, i64 5258}
!39 = !{ptr @copy_loop_headers, ptr @fel_init, i64 2629}
!40 = !{ptr @copy_loop_headers, ptr @do_while_loop_p, i64 14073}
!41 = !{ptr @copy_loop_headers, ptr @should_duplicate_loop_header_p, i64 21508}
!42 = !{ptr @copy_loop_headers, ptr @VEC_edge_base_index, i64 20192}
!43 = !{ptr @copy_loop_headers, ptr @flow_bb_inside_loop_p, i64 10096}
!44 = !{ptr @copy_loop_headers, ptr @fancy_abort, i64 1}
!45 = !{ptr @copy_loop_headers, ptr @fprintf, i64 1}
!46 = !{ptr @copy_loop_headers, ptr @single_pred_p, i64 10096}
!47 = !{ptr @copy_loop_headers, ptr @split_edge, i64 20191}
!48 = !{ptr @copy_loop_headers, ptr @single_pred_edge, i64 1}
!49 = !{ptr @copy_loop_headers, ptr @loop_preheader_edge, i64 20191}
!50 = !{ptr @copy_loop_headers, ptr @gimple_duplicate_sese_region, i64 10096}
!51 = !{ptr @copy_loop_headers, ptr @fwrite, i64 1}
!52 = !{ptr @copy_loop_headers, ptr @gsi_start_bb, i64 23}
!53 = !{ptr @copy_loop_headers, ptr @gsi_end_p, i64 303}
!54 = !{ptr @copy_loop_headers, ptr @gsi_stmt, i64 280}
!55 = !{ptr @copy_loop_headers, ptr @gimple_code, i64 280}
!56 = !{ptr @copy_loop_headers, ptr @is_gimple_assign, i64 140}
!57 = !{ptr @copy_loop_headers, ptr @gimple_assign_rhs_code, i64 88}
!58 = !{ptr @copy_loop_headers, ptr @gimple_set_no_warning, i64 184}
!59 = !{ptr @copy_loop_headers, ptr @gsi_next, i64 280}
!60 = !{ptr @copy_loop_headers, ptr @loop_latch_edge, i64 10095}
!61 = !{ptr @copy_loop_headers, ptr @fel_next, i64 14073}
!62 = !{ptr @copy_loop_headers, ptr @free, i64 5258}
!63 = !{ptr @copy_loop_headers, ptr @loop_optimizer_finalize, i64 6652}
!64 = !{ptr @number_of_loops, ptr @VEC_loop_p_base_length, i64 9280}
!65 = !{ptr @fel_init, ptr @number_of_loops, i64 2628}
!66 = !{ptr @fel_init, ptr @VEC_int_heap_alloc, i64 2628}
!67 = !{ptr @fel_init, ptr @VEC_int_base_quick_push, i64 27304}
!68 = !{ptr @fel_init, ptr @loop_outer, i64 16693}
!69 = !{ptr @fel_init, ptr @fel_next, i64 2628}
!70 = !{ptr @do_while_loop_p, ptr @last_stmt, i64 14076}
!71 = !{ptr @do_while_loop_p, ptr @gimple_code, i64 11477}
!72 = !{ptr @do_while_loop_p, ptr @last_and_only_stmt, i64 3311}
!73 = !{ptr @should_duplicate_loop_header_p, ptr @optimize_loop_for_size_p, i64 21513}
!74 = !{ptr @should_duplicate_loop_header_p, ptr @VEC_edge_base_length, i64 19170}
!75 = !{ptr @should_duplicate_loop_header_p, ptr @fancy_abort, i64 1}
!76 = !{ptr @should_duplicate_loop_header_p, ptr @single_succ_p, i64 19170}
!77 = !{ptr @should_duplicate_loop_header_p, ptr @VEC_edge_base_index, i64 28783}
!78 = !{ptr @should_duplicate_loop_header_p, ptr @flow_bb_inside_loop_p, i64 28783}
!79 = !{ptr @should_duplicate_loop_header_p, ptr @single_pred_p, i64 1993}
!80 = !{ptr @should_duplicate_loop_header_p, ptr @last_stmt, i64 10841}
!81 = !{ptr @should_duplicate_loop_header_p, ptr @gimple_code, i64 30063}
!82 = !{ptr @should_duplicate_loop_header_p, ptr @gsi_start_bb, i64 10631}
!83 = !{ptr @should_duplicate_loop_header_p, ptr @gsi_end_p, i64 29301}
!84 = !{ptr @should_duplicate_loop_header_p, ptr @gsi_stmt, i64 19222}
!85 = !{ptr @should_duplicate_loop_header_p, ptr @is_gimple_debug, i64 19210}
!86 = !{ptr @should_duplicate_loop_header_p, ptr @is_gimple_call, i64 19209}
!87 = !{ptr @should_duplicate_loop_header_p, ptr @estimate_num_insns, i64 18666}
!88 = !{ptr @should_duplicate_loop_header_p, ptr @gsi_next, i64 18670}
!89 = !{ptr @single_pred_p, ptr @VEC_edge_base_length, i64 10632}
!90 = !{ptr @gsi_start_bb, ptr @bb_seq, i64 10634}
!91 = !{ptr @gsi_start_bb, ptr @gimple_seq_first, i64 10634}
!92 = !{ptr @fel_next, ptr @VEC_int_base_iterate, i64 16706}
!93 = !{ptr @fel_next, ptr @get_loop, i64 14076}
!94 = !{ptr @fel_next, ptr @VEC_int_heap_free, i64 2630}
!95 = !{ptr @VEC_int_heap_alloc, ptr @vec_heap_o_reserve_exact, i64 2629}
!96 = !{ptr @loop_outer, ptr @VEC_loop_p_base_length, i64 10082}
!97 = !{ptr @loop_outer, ptr @VEC_loop_p_base_index, i64 7453}
!98 = !{ptr @single_succ_p, ptr @VEC_edge_base_length, i64 19172}
!99 = !{ptr @is_gimple_debug, ptr @gimple_code, i64 18698}
!100 = !{ptr @is_gimple_call, ptr @gimple_code, i64 18698}
!101 = !{ptr @get_loop, ptr @VEC_loop_p_base_index, i64 14076}
!102 = !{ptr @VEC_int_heap_free, ptr @free, i64 2628}
!103 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!104 = !{!"function_entry_count", i64 6652}
!105 = !{!"tree-ssa-loop-ch.c:gate_ch"}
!106 = !{!107, !107, i64 0}
!107 = !{!"int", !108, i64 0}
!108 = !{!"omnipotent char", !109, i64 0}
!109 = !{!"Simple C/C++ TBAA"}
!110 = !{!"tree-ssa-loop-ch.c:copy_loop_headers"}
!111 = !{!"branch_weights", i32 4024, i32 2630}
!112 = !{!113, !113, i64 0}
!113 = !{!"any pointer", !108, i64 0}
!114 = !{!115, !113, i64 8}
!115 = !{!"function", !113, i64 0, !113, i64 8, !113, i64 16, !113, i64 24, !113, i64 32, !113, i64 40, !113, i64 48, !113, i64 56, !113, i64 64, !113, i64 72, !113, i64 80, !113, i64 88, !113, i64 96, !107, i64 104, !107, i64 108, !107, i64 112, !107, i64 116, !107, i64 120, !107, i64 124, !113, i64 128, !107, i64 136, !107, i64 137, !107, i64 138, !107, i64 138, !107, i64 138, !107, i64 138, !107, i64 138, !107, i64 138, !107, i64 138, !107, i64 139, !107, i64 139, !107, i64 139, !107, i64 139, !107, i64 139, !107, i64 139, !107, i64 139}
!116 = !{!117, !107, i64 24}
!117 = !{!"control_flow_graph", !113, i64 0, !113, i64 8, !113, i64 16, !107, i64 24, !107, i64 28, !107, i64 32, !113, i64 40, !107, i64 48, !108, i64 52, !108, i64 60, !107, i64 68, !107, i64 72}
!118 = !{!"branch_weights", i32 1, i32 2629}
!119 = !{!120, !113, i64 8}
!120 = !{!"loop", !107, i64 0, !107, i64 4, !113, i64 8, !113, i64 16, !121, i64 24, !107, i64 32, !107, i64 36, !113, i64 40, !113, i64 48, !113, i64 56, !113, i64 64, !113, i64 72, !122, i64 80, !122, i64 96, !108, i64 112, !108, i64 113, !107, i64 116, !113, i64 120, !113, i64 128, !108, i64 136, !113, i64 144}
!121 = !{!"lpt_decision", !107, i64 0, !107, i64 4}
!122 = !{!"", !123, i64 0, !123, i64 8}
!123 = !{!"long", !108, i64 0}
!124 = !{i8 0, i8 2}
!125 = !{!"branch_weights", i32 11416, i32 2662}
!126 = !{!"branch_weights", i32 1316, i32 10100}
!127 = !{!128, !113, i64 8}
!128 = !{!"basic_block_def", !113, i64 0, !113, i64 8, !113, i64 16, !113, i64 24, !108, i64 32, !113, i64 48, !113, i64 56, !108, i64 64, !123, i64 72, !107, i64 80, !107, i64 84, !107, i64 88, !107, i64 92, !107, i64 96}
!129 = !{!130, !113, i64 8}
!130 = !{!"edge_def", !113, i64 0, !113, i64 8, !108, i64 16, !113, i64 24, !113, i64 32, !107, i64 40, !107, i64 44, !107, i64 48, !107, i64 52, !123, i64 56}
!131 = !{!"branch_weights", i32 10100, i32 1}
!132 = !{!"branch_weights", i32 10100, i32 0}
!133 = distinct !{!133, !134}
!134 = !{!"llvm.loop.mustprogress"}
!135 = !{!"branch_weights", i32 8640, i32 1}
!136 = !{!120, !107, i64 0}
!137 = !{!130, !113, i64 0}
!138 = !{!128, !107, i64 80}
!139 = !{!"branch_weights", i32 1, i32 8640}
!140 = !{i32 0, i32 256}
!141 = !{i32 0, i32 65536}
!142 = distinct !{!142, !134}
!143 = distinct !{!143, !134}
!144 = !{!"branch_weights", i32 2629, i32 11448}
!145 = distinct !{!145, !134}
!146 = !{!"function_entry_count", i64 9281}
!147 = !{!"tree-ssa-loop-ch.c:number_of_loops"}
!148 = !{!115, !113, i64 32}
!149 = !{!"branch_weights", i32 1, i32 9282}
!150 = !{!151, !113, i64 8}
!151 = !{!"loops", !107, i64 0, !113, i64 8, !113, i64 16, !113, i64 24}
!152 = !{!"function_entry_count", i64 2629}
!153 = !{!"tree-ssa-loop-ch.c:fel_init"}
!154 = !{!155, !107, i64 8}
!155 = !{!"", !113, i64 0, !107, i64 8}
!156 = !{!"branch_weights", i32 1, i32 2630}
!157 = !{!155, !113, i64 0}
!158 = !{!151, !113, i64 24}
!159 = !{!"branch_weights", i32 14077, i32 2630}
!160 = !{!120, !113, i64 48}
!161 = !{!"branch_weights", i32 9253, i32 7454}
!162 = !{!120, !113, i64 56}
!163 = !{!"branch_weights", i32 10083, i32 9253}
!164 = !{!"branch_weights", i32 2630, i32 14076}
!165 = distinct !{!165, !134}
!166 = !{!"function_entry_count", i64 14076}
!167 = !{!"tree-ssa-loop-ch.c:do_while_loop_p"}
!168 = !{!120, !113, i64 16}
!169 = !{!"branch_weights", i32 3278, i32 10800}
!170 = !{!"branch_weights", i32 33, i32 10768}
!171 = !{!"branch_weights", i32 2632, i32 679}
!172 = !{!"branch_weights", i32 649, i32 31}
!173 = !{!"function_entry_count", i64 21514}
!174 = !{!"tree-ssa-loop-ch.c:should_duplicate_loop_header_p"}
!175 = !{!128, !113, i64 16}
!176 = !{!"branch_weights", i32 21515, i32 1}
!177 = !{!"branch_weights", i32 19173, i32 2343}
!178 = !{!"branch_weights", i32 1, i32 19173}
!179 = !{!"branch_weights", i32 15223, i32 3951}
!180 = !{!"branch_weights", i32 1658, i32 13566}
!181 = !{!"branch_weights", i32 9187, i32 4380}
!182 = !{!"branch_weights", i32 8851, i32 1994}
!183 = !{!"branch_weights", i32 1, i32 1994}
!184 = !{!"branch_weights", i32 10635, i32 210}
!185 = !{!"branch_weights", i32 10099, i32 1}
!186 = !{!"branch_weights", i32 11, i32 18699}
!187 = !{!"branch_weights", i32 18699, i32 1}
!188 = !{!"branch_weights", i32 18171, i32 529}
!189 = !{!"branch_weights", i32 8, i32 18164}
!190 = !{!"branch_weights", i32 8610, i32 10099}
!191 = distinct !{!191, !134}
!192 = !{!"function_entry_count", i64 48985}
!193 = !{!"tree-ssa-loop-ch.c:VEC_edge_base_index"}
!194 = !{!"function_entry_count", i64 10632}
!195 = !{!"tree-ssa-loop-ch.c:single_pred_p"}
!196 = !{!128, !113, i64 0}
!197 = !{!"function_entry_count", i64 0}
!198 = !{!"tree-ssa-loop-ch.c:single_pred_edge"}
!199 = !{!"function_entry_count", i64 10634}
!200 = !{!"tree-ssa-loop-ch.c:gsi_start_bb"}
!201 = !{!202, !113, i64 0}
!202 = !{!"", !113, i64 0, !113, i64 8, !113, i64 16}
!203 = !{!202, !113, i64 8}
!204 = !{!202, !113, i64 16}
!205 = !{!"function_entry_count", i64 28807}
!206 = !{!"tree-ssa-loop-ch.c:gsi_end_p"}
!207 = !{!"function_entry_count", i64 18708}
!208 = !{!"tree-ssa-loop-ch.c:gsi_stmt"}
!209 = !{!210, !113, i64 0}
!210 = !{!"gimple_seq_node_d", !113, i64 0, !113, i64 8, !113, i64 16}
!211 = !{!"function_entry_count", i64 78424}
!212 = !{!"tree-ssa-loop-ch.c:gimple_code"}
!213 = !{!"tree-ssa-loop-ch.c:gimple_set_no_warning"}
!214 = !{!"tree-ssa-loop-ch.c:is_gimple_assign"}
!215 = !{!"tree-ssa-loop-ch.c:gimple_assign_rhs_code"}
!216 = !{!"function_entry_count", i64 18173}
!217 = !{!"tree-ssa-loop-ch.c:gsi_next"}
!218 = !{!210, !113, i64 16}
!219 = !{!"function_entry_count", i64 16705}
!220 = !{!"tree-ssa-loop-ch.c:fel_next"}
!221 = !{i32 0, i32 2}
!222 = !{!"branch_weights", i32 2630, i32 14077}
!223 = !{!"branch_weights", i32 1, i32 14077}
!224 = distinct !{!224, !134}
!225 = !{!"function_entry_count", i64 19363}
!226 = !{!"tree-ssa-loop-ch.c:VEC_loop_p_base_length"}
!227 = !{!"branch_weights", i32 2630, i32 16735}
!228 = !{!229, !107, i64 0}
!229 = !{!"VEC_loop_p_base", !107, i64 0, !107, i64 4, !108, i64 8}
!230 = !{!"tree-ssa-loop-ch.c:VEC_int_heap_alloc"}
!231 = !{!"tree-ssa-loop-ch.c:VEC_int_base_quick_push"}
!232 = !{!233, !107, i64 0}
!233 = !{!"VEC_int_base", !107, i64 0, !107, i64 4, !108, i64 8}
!234 = !{!"function_entry_count", i64 10082}
!235 = !{!"tree-ssa-loop-ch.c:loop_outer"}
!236 = !{!120, !113, i64 40}
!237 = !{!"branch_weights", i32 2630, i32 7454}
!238 = !{!"function_entry_count", i64 21529}
!239 = !{!"tree-ssa-loop-ch.c:VEC_loop_p_base_index"}
!240 = !{!"function_entry_count", i64 48976}
!241 = !{!"tree-ssa-loop-ch.c:VEC_edge_base_length"}
!242 = !{!"branch_weights", i32 1, i32 48977}
!243 = !{!244, !107, i64 0}
!244 = !{!"VEC_edge_base", !107, i64 0, !107, i64 4, !108, i64 8}
!245 = !{!"function_entry_count", i64 19172}
!246 = !{!"tree-ssa-loop-ch.c:single_succ_p"}
!247 = !{!"function_entry_count", i64 18698}
!248 = !{!"tree-ssa-loop-ch.c:is_gimple_debug"}
!249 = !{!"tree-ssa-loop-ch.c:is_gimple_call"}
!250 = !{!"tree-ssa-loop-ch.c:bb_seq"}
!251 = !{!128, !107, i64 96}
!252 = !{!"branch_weights", i32 10635, i32 1}
!253 = !{!108, !108, i64 0}
!254 = !{!"branch_weights", i32 1, i32 10635}
!255 = !{!256, !113, i64 0}
!256 = !{!"gimple_bb_info", !113, i64 0, !113, i64 8}
!257 = !{!"tree-ssa-loop-ch.c:gimple_seq_first"}
!258 = !{!259, !113, i64 0}
!259 = !{!"gimple_seq_d", !113, i64 0, !113, i64 8, !113, i64 16}
!260 = !{!"tree-ssa-loop-ch.c:gimple_expr_code"}
!261 = !{!"tree-ssa-loop-ch.c:get_gimple_rhs_class"}
!262 = !{!"tree-ssa-loop-ch.c:gimple_assign_rhs1"}
!263 = !{!"tree-ssa-loop-ch.c:gimple_op"}
!264 = !{!"tree-ssa-loop-ch.c:gimple_has_ops"}
!265 = !{!"tree-ssa-loop-ch.c:gimple_ops"}
!266 = !{!123, !123, i64 0}
!267 = !{!"tree-ssa-loop-ch.c:gimple_statement_structure"}
!268 = !{!"tree-ssa-loop-ch.c:gss_for_code"}
!269 = !{!"tree-ssa-loop-ch.c:VEC_int_base_iterate"}
!270 = !{!"branch_weights", i32 1, i32 16706}
!271 = !{!"tree-ssa-loop-ch.c:get_loop"}
!272 = !{!"tree-ssa-loop-ch.c:VEC_int_heap_free"}

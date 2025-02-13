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

@.str = private unnamed_addr constant [3 x i8] c"ch\00", align 1
@pass_ch = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str, ptr @gate_ch, ptr @copy_loop_headers, ptr null, ptr null, i32 0, i32 102, i32 40, i32 0, i32 0, i32 0, i32 37 } }, align 8
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
define internal zeroext i8 @gate_ch() #0 {
  %1 = load i32, ptr @flag_tree_ch, align 4, !tbaa !5
  %2 = icmp ne i32 %1, 0
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @copy_loop_headers() #1 {
  %1 = alloca %struct.loop_iterator, align 8
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #13
  tail call void @loop_optimizer_init(i32 noundef 3) #14
  %5 = tail call fastcc i32 @number_of_loops() #15
  %6 = icmp ult i32 %5, 2
  br i1 %6, label %138, label %7

7:                                                ; preds = %0
  %8 = load ptr, ptr @cfun, align 8, !tbaa !9
  %9 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !11
  %11 = getelementptr inbounds %struct.control_flow_graph, ptr %10, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !13
  %13 = sext i32 %12 to i64
  %14 = shl nsw i64 %13, 3
  %15 = tail call ptr @xmalloc(i64 noundef %14) #14
  %16 = load ptr, ptr @cfun, align 8, !tbaa !9
  %17 = getelementptr inbounds %struct.function, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !11
  %19 = getelementptr inbounds %struct.control_flow_graph, ptr %18, i64 0, i32 3
  %20 = load i32, ptr %19, align 8, !tbaa !13
  %21 = sext i32 %20 to i64
  %22 = shl nsw i64 %21, 3
  %23 = tail call ptr @xmalloc(i64 noundef %22) #14
  %24 = load ptr, ptr @cfun, align 8, !tbaa !9
  %25 = getelementptr inbounds %struct.function, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !11
  %27 = getelementptr inbounds %struct.control_flow_graph, ptr %26, i64 0, i32 3
  %28 = load i32, ptr %27, align 8, !tbaa !13
  call fastcc void @fel_init(ptr noundef nonnull %1, ptr noundef nonnull %2) #15
  %29 = load ptr, ptr %2, align 8, !tbaa !9
  %30 = icmp eq ptr %29, null
  br i1 %30, label %137, label %31

31:                                               ; preds = %7, %134
  %32 = phi ptr [ %135, %134 ], [ %29, %7 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  store i32 20, ptr %3, align 4, !tbaa !5
  %33 = getelementptr inbounds %struct.loop, ptr %32, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !15
  %35 = tail call fastcc zeroext i8 @do_while_loop_p(ptr noundef nonnull %32) #15, !range !20
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %134

37:                                               ; preds = %31
  %38 = call fastcc zeroext i8 @should_duplicate_loop_header_p(ptr noundef %34, ptr noundef nonnull %32, ptr noundef nonnull %3) #15, !range !20
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %134, label %40

40:                                               ; preds = %37, %58
  %41 = phi ptr [ %60, %58 ], [ %34, %37 ]
  %42 = phi i32 [ %53, %58 ], [ 0, %37 ]
  %43 = getelementptr inbounds %struct.basic_block_def, ptr %41, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !21
  %45 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %44, i32 noundef 0) #15
  %46 = getelementptr inbounds %struct.edge_def, ptr %45, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !23
  %48 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef nonnull %32, ptr noundef %47) #14
  %49 = icmp eq i8 %48, 0
  %50 = load ptr, ptr %43, align 8, !tbaa !21
  %51 = zext i1 %49 to i32
  %52 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %50, i32 noundef %51) #15
  %53 = add i32 %42, 1
  %54 = zext i32 %42 to i64
  %55 = getelementptr inbounds ptr, ptr %15, i64 %54
  store ptr %41, ptr %55, align 8, !tbaa !9
  %56 = icmp ugt i32 %28, %53
  br i1 %56, label %58, label %57

57:                                               ; preds = %40
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 190, ptr noundef nonnull @.str.2) #14
  br label %58

58:                                               ; preds = %40, %57
  %59 = getelementptr inbounds %struct.edge_def, ptr %52, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !23
  %61 = call fastcc zeroext i8 @should_duplicate_loop_header_p(ptr noundef %60, ptr noundef nonnull %32, ptr noundef nonnull %3) #15, !range !20
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %63, label %40, !llvm.loop !25

63:                                               ; preds = %58
  %64 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %65 = icmp eq ptr %64, null
  br i1 %65, label %80, label %66

66:                                               ; preds = %63
  %67 = load i32, ptr @dump_flags, align 4, !tbaa !5
  %68 = and i32 %67, 8
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %80, label %70

70:                                               ; preds = %66
  %71 = load i32, ptr %32, align 8, !tbaa !27
  %72 = load ptr, ptr %52, align 8, !tbaa !28
  %73 = getelementptr inbounds %struct.basic_block_def, ptr %72, i64 0, i32 9
  %74 = load i32, ptr %73, align 8, !tbaa !29
  %75 = getelementptr inbounds %struct.edge_def, ptr %52, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !23
  %77 = getelementptr inbounds %struct.basic_block_def, ptr %76, i64 0, i32 9
  %78 = load i32, ptr %77, align 8, !tbaa !29
  %79 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %64, ptr noundef nonnull @.str.3, i32 noundef %71, i32 noundef %74, i32 noundef %78) #15
  br label %80

80:                                               ; preds = %70, %66, %63
  %81 = getelementptr inbounds %struct.edge_def, ptr %52, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !23
  %83 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %82) #15, !range !20
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %80
  %86 = tail call ptr @split_edge(ptr noundef nonnull %52) #14
  %87 = tail call fastcc ptr @single_pred_edge(ptr noundef %86) #15
  br label %88

88:                                               ; preds = %85, %80
  %89 = phi ptr [ %52, %80 ], [ %87, %85 ]
  %90 = tail call ptr @loop_preheader_edge(ptr noundef nonnull %32) #14
  %91 = tail call zeroext i8 @gimple_duplicate_sese_region(ptr noundef %90, ptr noundef %89, ptr noundef nonnull %15, i32 noundef %53, ptr noundef %23) #14
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %88
  %94 = load ptr, ptr @dump_file, align 8, !tbaa !9
  %95 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 20, i64 1, ptr %94)
  br label %134

96:                                               ; preds = %88
  %97 = load i32, ptr @warn_strict_overflow, align 4, !tbaa !5
  %98 = icmp sgt i32 %97, 0
  %99 = icmp ne i32 %53, 0
  %100 = and i1 %98, %99
  br i1 %100, label %101, label %129

101:                                              ; preds = %96
  %102 = zext i32 %53 to i64
  br label %103

103:                                              ; preds = %101, %126
  %104 = phi i64 [ 0, %101 ], [ %127, %126 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #13
  %105 = getelementptr inbounds ptr, ptr %23, i64 %104
  %106 = load ptr, ptr %105, align 8, !tbaa !9
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %106) #15
  %107 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #15, !range !20
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %109, label %126

109:                                              ; preds = %103, %123
  %110 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #15
  %111 = tail call fastcc i32 @gimple_code(ptr noundef %110) #15, !range !30
  %112 = icmp eq i32 %111, 1
  br i1 %112, label %122, label %113

113:                                              ; preds = %109
  %114 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %110) #15, !range !20
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %123, label %116

116:                                              ; preds = %113
  %117 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %110) #15, !range !31
  %118 = zext nneg i32 %117 to i64
  %119 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %118
  %120 = load i32, ptr %119, align 4, !tbaa !5
  %121 = icmp eq i32 %120, 5
  br i1 %121, label %122, label %123

122:                                              ; preds = %116, %109
  tail call fastcc void @gimple_set_no_warning(ptr noundef %110) #15
  br label %123

123:                                              ; preds = %122, %116, %113
  call fastcc void @gsi_next(ptr noundef nonnull %4) #15
  %124 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #15, !range !20
  %125 = icmp eq i8 %124, 0
  br i1 %125, label %109, label %126, !llvm.loop !32

126:                                              ; preds = %123, %103
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #13
  %127 = add nuw nsw i64 %104, 1
  %128 = icmp eq i64 %127, %102
  br i1 %128, label %129, label %103, !llvm.loop !33

129:                                              ; preds = %126, %96
  %130 = tail call ptr @loop_preheader_edge(ptr noundef nonnull %32) #14
  %131 = tail call ptr @split_edge(ptr noundef %130) #14
  %132 = tail call ptr @loop_latch_edge(ptr noundef nonnull %32) #14
  %133 = tail call ptr @split_edge(ptr noundef %132) #14
  br label %134

134:                                              ; preds = %37, %31, %129, %93
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  call fastcc void @fel_next(ptr noundef nonnull %1, ptr noundef nonnull %2) #15
  %135 = load ptr, ptr %2, align 8, !tbaa !9
  %136 = icmp eq ptr %135, null
  br i1 %136, label %137, label %31, !llvm.loop !34

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
define internal fastcc i32 @number_of_loops() unnamed_addr #4 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !9
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !35
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.loops, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !36
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
define internal fastcc void @fel_init(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.loop_iterator, ptr %0, i64 0, i32 1
  store i32 0, ptr %3, align 8, !tbaa !38
  %4 = load ptr, ptr @cfun, align 8, !tbaa !9
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store ptr null, ptr %0, align 8, !tbaa !40
  store ptr null, ptr %1, align 8, !tbaa !9
  br label %38

9:                                                ; preds = %2
  %10 = tail call fastcc i32 @number_of_loops() #15
  %11 = tail call fastcc ptr @VEC_int_heap_alloc(i32 noundef %10) #15
  store ptr %11, ptr %0, align 8, !tbaa !40
  %12 = load ptr, ptr @cfun, align 8, !tbaa !9
  %13 = getelementptr inbounds %struct.function, ptr %12, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !35
  %15 = getelementptr inbounds %struct.loops, ptr %14, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !41
  br label %17

17:                                               ; preds = %27, %9
  %18 = phi ptr [ %16, %9 ], [ %28, %27 ]
  %19 = load i32, ptr %18, align 8, !tbaa !27
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load ptr, ptr %0, align 8, !tbaa !40
  tail call fastcc void @VEC_int_base_quick_push(ptr noundef %22, i32 noundef %19) #15
  br label %23

23:                                               ; preds = %21, %17
  %24 = getelementptr inbounds %struct.loop, ptr %18, i64 0, i32 8
  %25 = load ptr, ptr %24, align 8, !tbaa !42
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
  %35 = tail call fastcc ptr @loop_outer(ptr noundef nonnull %30) #15
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %29, !llvm.loop !44

37:                                               ; preds = %34
  tail call fastcc void @fel_next(ptr noundef nonnull %0, ptr noundef %1) #15
  br label %38

38:                                               ; preds = %37, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @do_while_loop_p(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = tail call ptr @last_stmt(ptr noundef %3) #14
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = tail call fastcc i32 @gimple_code(ptr noundef nonnull %4) #15, !range !30
  %8 = icmp eq i32 %7, 4
  br i1 %8, label %9, label %18

9:                                                ; preds = %6, %1
  %10 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !15
  %12 = tail call ptr @last_and_only_stmt(ptr noundef %11) #14
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %9
  %15 = tail call fastcc i32 @gimple_code(ptr noundef nonnull %12) #15, !range !30
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %18, label %17

17:                                               ; preds = %14, %9
  br label %18

18:                                               ; preds = %14, %6, %17
  %19 = phi i8 [ 1, %17 ], [ 0, %6 ], [ 0, %14 ]
  ret i8 %19
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @should_duplicate_loop_header_p(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #1 {
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #13
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %66

8:                                                ; preds = %3
  %9 = tail call zeroext i8 @optimize_loop_for_size_p(ptr noundef %1) #14
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %66

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !21
  %14 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %13) #15
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 68, ptr noundef nonnull @.str.2) #14
  br label %17

17:                                               ; preds = %11, %16
  %18 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef nonnull %0) #15, !range !20
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %66

20:                                               ; preds = %17
  %21 = load ptr, ptr %12, align 8, !tbaa !21
  %22 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %21, i32 noundef 0) #15
  %23 = getelementptr inbounds %struct.edge_def, ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !23
  %25 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %1, ptr noundef %24) #14
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %20
  %28 = load ptr, ptr %12, align 8, !tbaa !21
  %29 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %28, i32 noundef 1) #15
  %30 = getelementptr inbounds %struct.edge_def, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !23
  %32 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %1, ptr noundef %31) #14
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %66

34:                                               ; preds = %27, %20
  %35 = getelementptr inbounds %struct.loop, ptr %1, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !15
  %37 = icmp eq ptr %36, %0
  br i1 %37, label %41, label %38

38:                                               ; preds = %34
  %39 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef nonnull %0) #15, !range !20
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %66, label %41

41:                                               ; preds = %38, %34
  %42 = tail call ptr @last_stmt(ptr noundef nonnull %0) #14
  %43 = tail call fastcc i32 @gimple_code(ptr noundef %42) #15, !range !30
  %44 = icmp eq i32 %43, 1
  br i1 %44, label %45, label %66

45:                                               ; preds = %41
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef nonnull %0) #15
  %46 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #15, !range !20
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %66

48:                                               ; preds = %45, %63
  %49 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #15
  %50 = tail call fastcc i32 @gimple_code(ptr noundef %49) #15, !range !30
  %51 = icmp eq i32 %50, 4
  br i1 %51, label %63, label %52

52:                                               ; preds = %48
  %53 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %49) #15, !range !20
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %52
  %56 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %49) #15, !range !20
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %55
  %59 = tail call i32 @estimate_num_insns(ptr noundef %49, ptr noundef nonnull @eni_size_weights) #14
  %60 = load i32, ptr %2, align 4, !tbaa !5
  %61 = sub nsw i32 %60, %59
  store i32 %61, ptr %2, align 4, !tbaa !5
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %58, %52, %48
  call fastcc void @gsi_next(ptr noundef nonnull %4) #15
  %64 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #15, !range !20
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %48, label %66, !llvm.loop !47

66:                                               ; preds = %55, %58, %63, %45, %41, %38, %27, %17, %8, %3
  %67 = phi i8 [ 0, %3 ], [ 0, %8 ], [ 0, %17 ], [ 0, %27 ], [ 0, %38 ], [ 0, %41 ], [ 1, %45 ], [ 0, %55 ], [ 0, %58 ], [ 1, %63 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #13
  ret i8 %67
}

; Function Attrs: optsize
declare zeroext i8 @flow_bb_inside_loop_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 {
  %3 = zext nneg i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !9
  ret ptr %5
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_pred_p(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = load ptr, ptr %0, align 8, !tbaa !48
  %3 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %2) #15
  %4 = icmp eq i32 %3, 1
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_pred_edge(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %0) #15, !range !20
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.5, i32 noundef 655, ptr noundef nonnull @.str.2) #14
  br label %5

5:                                                ; preds = %1, %4
  %6 = load ptr, ptr %0, align 8, !tbaa !48
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
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #7 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #15
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #15
  store ptr %4, ptr %0, align 8, !tbaa !49
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !51
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !52
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #5 {
  %2 = load ptr, ptr %0, align 8, !tbaa !49
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #4 {
  %2 = load ptr, ptr %0, align 8, !tbaa !49
  %3 = load ptr, ptr %2, align 8, !tbaa !53
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @gimple_set_no_warning(ptr nocapture noundef %0) unnamed_addr #8 {
  %2 = load i32, ptr %0, align 8
  %3 = or i32 %2, 256
  store i32 %3, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_assign(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #15, !range !30
  %3 = icmp eq i32 %2, 6
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call fastcc i32 @gimple_expr_code(ptr noundef %0) #15, !range !31
  %3 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %2) #15, !range !30
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
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #7 {
  %2 = load ptr, ptr %0, align 8, !tbaa !49
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !55
  store ptr %4, ptr %0, align 8, !tbaa !49
  ret void
}

; Function Attrs: optsize
declare ptr @loop_latch_edge(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fel_next(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #1 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  %4 = getelementptr inbounds %struct.loop_iterator, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !38
  br label %6

6:                                                ; preds = %11, %2
  %7 = phi i32 [ %12, %11 ], [ %5, %2 ]
  %8 = load ptr, ptr %0, align 8, !tbaa !40
  %9 = call fastcc i32 @VEC_int_base_iterate(ptr noundef %8, i32 noundef %7, ptr noundef nonnull %3) #15, !range !56
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %6
  %12 = add i32 %7, 1
  store i32 %12, ptr %4, align 8, !tbaa !38
  %13 = load i32, ptr %3, align 4, !tbaa !5
  %14 = tail call fastcc ptr @get_loop(i32 noundef %13) #15
  store ptr %14, ptr %1, align 8, !tbaa !9
  %15 = icmp eq ptr %14, null
  br i1 %15, label %6, label %17, !llvm.loop !57

16:                                               ; preds = %6
  tail call fastcc void @VEC_int_heap_free(ptr noundef nonnull %0) #15
  store ptr null, ptr %1, align 8, !tbaa !9
  br label %17

17:                                               ; preds = %11, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_loop_p_base_length(ptr noundef readonly %0) unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !58
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_int_heap_alloc(i32 noundef %0) unnamed_addr #1 {
  %2 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %0, i64 noundef 8, i64 noundef 4) #14
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_int_base_quick_push(ptr noundef %0, i32 noundef %1) unnamed_addr #8 {
  %3 = load i32, ptr %0, align 4, !tbaa !60
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 4, !tbaa !60
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %5
  store i32 %1, ptr %6, align 4, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @loop_outer(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !62
  %4 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %3) #15
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

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
define internal fastcc ptr @VEC_loop_p_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !9
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @last_stmt(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare ptr @last_and_only_stmt(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare zeroext i8 @optimize_loop_for_size_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !63
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_succ_p(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !21
  %4 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %3) #15
  %5 = icmp eq i32 %4, 1
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_debug(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #15, !range !30
  %3 = icmp eq i32 %2, 2
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_call(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #15, !range !30
  %3 = icmp eq i32 %2, 8
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare i32 @estimate_num_insns(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !65
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !66
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !67
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
  %4 = load ptr, ptr %0, align 8, !tbaa !69
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_expr_code(ptr nocapture noundef readonly %0) unnamed_addr #1 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #15, !range !30
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
define internal fastcc i32 @get_gimple_rhs_class(i32 noundef %0) unnamed_addr #10 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %2
  %4 = load i8, ptr %3, align 1, !tbaa !66
  %5 = zext i8 %4 to i32
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs1(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0) #15
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0) unnamed_addr #1 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #15, !range !20
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #15
  %6 = getelementptr inbounds ptr, ptr %5, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !9
  br label %8

8:                                                ; preds = %1, %4
  %9 = phi ptr [ %7, %4 ], [ null, %1 ]
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #15, !range !30
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #1 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #15
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !71
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
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #15, !range !30
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #15
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #10 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !5
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_int_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #8 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 4, !tbaa !60
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !5
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi i32 [ %11, %8 ], [ 0, %5 ], [ 0, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store i32 %13, ptr %2, align 4, !tbaa !5
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_loop(i32 noundef %0) unnamed_addr #4 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !9
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !35
  %5 = getelementptr inbounds %struct.loops, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !36
  %7 = tail call fastcc ptr @VEC_loop_p_base_index(ptr noundef %6, i32 noundef %0) #15
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_int_heap_free(ptr nocapture noundef %0) unnamed_addr #11 {
  %2 = load ptr, ptr %0, align 8, !tbaa !9
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #15
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !9
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
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !7, i64 0}
!11 = !{!12, !10, i64 8}
!12 = !{!"function", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !10, i64 128, !6, i64 136, !6, i64 137, !6, i64 138, !6, i64 138, !6, i64 138, !6, i64 138, !6, i64 138, !6, i64 138, !6, i64 138, !6, i64 139, !6, i64 139, !6, i64 139, !6, i64 139, !6, i64 139, !6, i64 139, !6, i64 139}
!13 = !{!14, !6, i64 24}
!14 = !{!"control_flow_graph", !10, i64 0, !10, i64 8, !10, i64 16, !6, i64 24, !6, i64 28, !6, i64 32, !10, i64 40, !6, i64 48, !7, i64 52, !7, i64 60, !6, i64 68, !6, i64 72}
!15 = !{!16, !10, i64 8}
!16 = !{!"loop", !6, i64 0, !6, i64 4, !10, i64 8, !10, i64 16, !17, i64 24, !6, i64 32, !6, i64 36, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !18, i64 80, !18, i64 96, !7, i64 112, !7, i64 113, !6, i64 116, !10, i64 120, !10, i64 128, !7, i64 136, !10, i64 144}
!17 = !{!"lpt_decision", !6, i64 0, !6, i64 4}
!18 = !{!"", !19, i64 0, !19, i64 8}
!19 = !{!"long", !7, i64 0}
!20 = !{i8 0, i8 2}
!21 = !{!22, !10, i64 8}
!22 = !{!"basic_block_def", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !7, i64 32, !10, i64 48, !10, i64 56, !7, i64 64, !19, i64 72, !6, i64 80, !6, i64 84, !6, i64 88, !6, i64 92, !6, i64 96}
!23 = !{!24, !10, i64 8}
!24 = !{!"edge_def", !10, i64 0, !10, i64 8, !7, i64 16, !10, i64 24, !10, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !19, i64 56}
!25 = distinct !{!25, !26}
!26 = !{!"llvm.loop.mustprogress"}
!27 = !{!16, !6, i64 0}
!28 = !{!24, !10, i64 0}
!29 = !{!22, !6, i64 80}
!30 = !{i32 0, i32 256}
!31 = !{i32 0, i32 65536}
!32 = distinct !{!32, !26}
!33 = distinct !{!33, !26}
!34 = distinct !{!34, !26}
!35 = !{!12, !10, i64 32}
!36 = !{!37, !10, i64 8}
!37 = !{!"loops", !6, i64 0, !10, i64 8, !10, i64 16, !10, i64 24}
!38 = !{!39, !6, i64 8}
!39 = !{!"", !10, i64 0, !6, i64 8}
!40 = !{!39, !10, i64 0}
!41 = !{!37, !10, i64 24}
!42 = !{!16, !10, i64 48}
!43 = !{!16, !10, i64 56}
!44 = distinct !{!44, !26}
!45 = !{!16, !10, i64 16}
!46 = !{!22, !10, i64 16}
!47 = distinct !{!47, !26}
!48 = !{!22, !10, i64 0}
!49 = !{!50, !10, i64 0}
!50 = !{!"", !10, i64 0, !10, i64 8, !10, i64 16}
!51 = !{!50, !10, i64 8}
!52 = !{!50, !10, i64 16}
!53 = !{!54, !10, i64 0}
!54 = !{!"gimple_seq_node_d", !10, i64 0, !10, i64 8, !10, i64 16}
!55 = !{!54, !10, i64 16}
!56 = !{i32 0, i32 2}
!57 = distinct !{!57, !26}
!58 = !{!59, !6, i64 0}
!59 = !{!"VEC_loop_p_base", !6, i64 0, !6, i64 4, !7, i64 8}
!60 = !{!61, !6, i64 0}
!61 = !{!"VEC_int_base", !6, i64 0, !6, i64 4, !7, i64 8}
!62 = !{!16, !10, i64 40}
!63 = !{!64, !6, i64 0}
!64 = !{!"VEC_edge_base", !6, i64 0, !6, i64 4, !7, i64 8}
!65 = !{!22, !6, i64 96}
!66 = !{!7, !7, i64 0}
!67 = !{!68, !10, i64 0}
!68 = !{!"gimple_bb_info", !10, i64 0, !10, i64 8}
!69 = !{!70, !10, i64 0}
!70 = !{!"gimple_seq_d", !10, i64 0, !10, i64 8, !10, i64 16}
!71 = !{!19, !19, i64 0}

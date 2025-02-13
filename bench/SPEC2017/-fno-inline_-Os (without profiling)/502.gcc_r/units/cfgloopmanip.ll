; ModuleID = 'cfgloopmanip.c'
source_filename = "cfgloopmanip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.bitmap_element_def = type { ptr, ptr, i32, [2 x i64] }
%struct.edge_iterator = type { i32, ptr }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.loop = type { i32, i32, ptr, ptr, %struct.lpt_decision, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.double_int, %struct.double_int, i8, i8, i32, ptr, ptr, i8, ptr }
%struct.lpt_decision = type { i32, i32 }
%struct.double_int = type { i64, i64 }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.simple_bitmap_def = type { ptr, i32, i32, [1 x i64] }
%struct.loops = type { i32, ptr, ptr, ptr }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.bitmap_iterator = type { ptr, ptr, i32, i64 }
%struct.VEC_basic_block_base = type { i32, i32, [1 x ptr] }
%struct.rtl_bb_info = type { ptr, ptr, ptr, ptr, i32 }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.loop_iterator = type { ptr, i32 }
%struct.VEC_loop_p_base = type { i32, i32, [1 x ptr] }
%struct.gimple_seq_d = type { ptr, ptr, ptr }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.VEC_int_base = type { i32, i32, [1 x i32] }

@cfun = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [15 x i8] c"cfgloopmanip.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@mfb_kj_edge = dso_local local_unnamed_addr global ptr null, align 8
@dump_file = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [37 x i8] c"Created preheader block for loop %i\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@.str.4 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@bitmap_zero_bits = external global %struct.bitmap_element_def, align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @remove_path(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i8, align 1
  %6 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #17
  store i8 0, ptr %5, align 1, !tbaa !5
  %7 = tail call zeroext i8 @can_remove_branch_p(ptr noundef %0) #18
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %207, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 7
  %11 = load i32, ptr %10, align 8, !tbaa !8
  %12 = and i32 %11, 128
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %9
  store i8 1, ptr %5, align 1, !tbaa !5
  br label %15

15:                                               ; preds = %14, %9
  %16 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !13
  %18 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %17) #19, !range !14
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = tail call ptr @split_edge(ptr noundef nonnull %0) #18
  %22 = tail call fastcc ptr @single_pred_edge(ptr noundef %21) #19
  br label %23

23:                                               ; preds = %20, %15
  %24 = phi ptr [ %0, %15 ], [ %22, %20 ]
  %25 = load ptr, ptr %24, align 8, !tbaa !15
  %26 = getelementptr inbounds %struct.basic_block_def, ptr %25, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !16
  %28 = tail call fastcc ptr @loop_outer(ptr noundef %27) #19
  %29 = icmp eq ptr %28, null
  br i1 %29, label %48, label %30

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.edge_def, ptr %24, i64 0, i32 1
  br label %32

32:                                               ; preds = %30, %39
  %33 = phi ptr [ %27, %30 ], [ %45, %39 ]
  %34 = getelementptr inbounds %struct.loop, ptr %33, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !18
  %36 = load ptr, ptr %31, align 8, !tbaa !13
  %37 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %35, ptr noundef %36) #18
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %48, label %39

39:                                               ; preds = %32
  %40 = load ptr, ptr %24, align 8, !tbaa !15
  %41 = getelementptr inbounds %struct.basic_block_def, ptr %40, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !16
  call fastcc void @unloop(ptr noundef %42, ptr noundef nonnull %5) #19
  %43 = load ptr, ptr %24, align 8, !tbaa !15
  %44 = getelementptr inbounds %struct.basic_block_def, ptr %43, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !16
  %46 = tail call fastcc ptr @loop_outer(ptr noundef %45) #19
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %32, !llvm.loop !22

48:                                               ; preds = %32, %39, %23
  %49 = call fastcc i32 @find_path(ptr noundef nonnull %24, ptr noundef nonnull %3) #19
  %50 = load ptr, ptr @cfun, align 8, !tbaa !24
  %51 = getelementptr inbounds %struct.function, ptr %50, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !25
  %53 = getelementptr inbounds %struct.control_flow_graph, ptr %52, i64 0, i32 3
  %54 = load i32, ptr %53, align 8, !tbaa !27
  %55 = sext i32 %54 to i64
  %56 = tail call ptr @xcalloc(i64 noundef %55, i64 noundef 8) #18
  %57 = load ptr, ptr @cfun, align 8, !tbaa !24
  %58 = getelementptr inbounds %struct.function, ptr %57, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !25
  %60 = getelementptr inbounds %struct.control_flow_graph, ptr %59, i64 0, i32 5
  %61 = load i32, ptr %60, align 8, !tbaa !29
  %62 = tail call ptr @sbitmap_alloc(i32 noundef %61) #18
  tail call void @sbitmap_zero(ptr noundef %62) #18
  %63 = icmp sgt i32 %49, 0
  %64 = load ptr, ptr %3, align 8, !tbaa !24
  br i1 %63, label %67, label %65

65:                                               ; preds = %48
  %66 = load i8, ptr %5, align 1, !tbaa !5
  br label %140

67:                                               ; preds = %48
  %68 = zext nneg i32 %49 to i64
  br label %74

69:                                               ; preds = %74
  %70 = load i8, ptr %5, align 1, !tbaa !5
  br i1 %63, label %71, label %140

71:                                               ; preds = %69
  %72 = getelementptr inbounds i8, ptr %6, i64 8
  %73 = zext nneg i32 %49 to i64
  br label %82

74:                                               ; preds = %67, %74
  %75 = phi i64 [ 0, %67 ], [ %80, %74 ]
  %76 = getelementptr inbounds ptr, ptr %64, i64 %75
  %77 = load ptr, ptr %76, align 8, !tbaa !24
  %78 = getelementptr inbounds %struct.basic_block_def, ptr %77, i64 0, i32 9
  %79 = load i32, ptr %78, align 8, !tbaa !30
  tail call fastcc void @SET_BIT(ptr noundef %62, i32 noundef %79) #19
  %80 = add nuw nsw i64 %75, 1
  %81 = icmp eq i64 %80, %68
  br i1 %81, label %69, label %74, !llvm.loop !31

82:                                               ; preds = %71, %133
  %83 = phi i64 [ 0, %71 ], [ %136, %133 ]
  %84 = phi i32 [ 0, %71 ], [ %135, %133 ]
  %85 = phi i8 [ %70, %71 ], [ %134, %133 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #17
  %86 = getelementptr inbounds ptr, ptr %64, i64 %83
  %87 = load ptr, ptr %86, align 8, !tbaa !24
  %88 = getelementptr inbounds %struct.basic_block_def, ptr %87, i64 0, i32 1
  %89 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %88) #19
  store i32 0, ptr %6, align 8, !tbaa.struct !32
  store ptr %89, ptr %72, align 8, !tbaa.struct !34
  %90 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %89, ptr noundef nonnull %2) #19, !range !14
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %133, label %92

92:                                               ; preds = %82, %126
  %93 = phi i32 [ %128, %126 ], [ %84, %82 ]
  %94 = phi i8 [ %127, %126 ], [ %85, %82 ]
  %95 = load ptr, ptr %2, align 8, !tbaa !24
  %96 = getelementptr inbounds %struct.edge_def, ptr %95, i64 0, i32 1
  %97 = load ptr, ptr %96, align 8, !tbaa !13
  %98 = load ptr, ptr @cfun, align 8, !tbaa !24
  %99 = getelementptr inbounds %struct.function, ptr %98, i64 0, i32 1
  %100 = load ptr, ptr %99, align 8, !tbaa !25
  %101 = getelementptr inbounds %struct.control_flow_graph, ptr %100, i64 0, i32 1
  %102 = load ptr, ptr %101, align 8, !tbaa !35
  %103 = icmp eq ptr %97, %102
  br i1 %103, label %126, label %104

104:                                              ; preds = %92
  %105 = getelementptr inbounds %struct.basic_block_def, ptr %97, i64 0, i32 9
  %106 = load i32, ptr %105, align 8, !tbaa !30
  %107 = lshr i32 %106, 6
  %108 = zext nneg i32 %107 to i64
  %109 = getelementptr inbounds %struct.simple_bitmap_def, ptr %62, i64 0, i32 3, i64 %108
  %110 = load i64, ptr %109, align 8, !tbaa !36
  %111 = and i32 %106, 63
  %112 = zext nneg i32 %111 to i64
  %113 = shl nuw i64 1, %112
  %114 = and i64 %113, %110
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %126

116:                                              ; preds = %104
  tail call fastcc void @SET_BIT(ptr noundef nonnull %62, i32 noundef %106) #19
  %117 = load ptr, ptr %96, align 8, !tbaa !13
  %118 = add nsw i32 %93, 1
  %119 = sext i32 %93 to i64
  %120 = getelementptr inbounds ptr, ptr %56, i64 %119
  store ptr %117, ptr %120, align 8, !tbaa !24
  %121 = getelementptr inbounds %struct.edge_def, ptr %95, i64 0, i32 7
  %122 = load i32, ptr %121, align 8, !tbaa !8
  %123 = and i32 %122, 128
  %124 = icmp eq i32 %123, 0
  %125 = select i1 %124, i8 %94, i8 1
  br label %126

126:                                              ; preds = %116, %92, %104
  %127 = phi i8 [ %94, %104 ], [ %94, %92 ], [ %125, %116 ]
  %128 = phi i32 [ %93, %104 ], [ %93, %92 ], [ %118, %116 ]
  call fastcc void @ei_next(ptr noundef nonnull %6) #19
  %129 = load i32, ptr %6, align 8
  %130 = load ptr, ptr %72, align 8
  %131 = call fastcc zeroext i8 @ei_cond(i32 %129, ptr %130, ptr noundef nonnull %2) #19, !range !14
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %133, label %92, !llvm.loop !37

133:                                              ; preds = %126, %82
  %134 = phi i8 [ %85, %82 ], [ %127, %126 ]
  %135 = phi i32 [ %84, %82 ], [ %128, %126 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #17
  %136 = add nuw nsw i64 %83, 1
  %137 = icmp eq i64 %136, %73
  br i1 %137, label %138, label %82, !llvm.loop !38

138:                                              ; preds = %133
  %139 = load ptr, ptr %3, align 8, !tbaa !24
  br label %140

140:                                              ; preds = %65, %138, %69
  %141 = phi ptr [ %64, %69 ], [ %139, %138 ], [ %64, %65 ]
  %142 = phi i8 [ %70, %69 ], [ %134, %138 ], [ %66, %65 ]
  %143 = phi i32 [ 0, %69 ], [ %135, %138 ], [ 0, %65 ]
  store i8 %142, ptr %5, align 1, !tbaa !5
  %144 = load ptr, ptr %24, align 8, !tbaa !15
  tail call void @remove_branch(ptr noundef nonnull %24) #18
  store ptr null, ptr %4, align 8, !tbaa !24
  br i1 %63, label %145, label %160

145:                                              ; preds = %140
  %146 = zext nneg i32 %49 to i64
  br label %147

147:                                              ; preds = %145, %157
  %148 = phi i64 [ 0, %145 ], [ %158, %157 ]
  %149 = getelementptr inbounds ptr, ptr %141, i64 %148
  %150 = load ptr, ptr %149, align 8, !tbaa !24
  %151 = getelementptr inbounds %struct.basic_block_def, ptr %150, i64 0, i32 3
  %152 = load ptr, ptr %151, align 8, !tbaa !16
  %153 = getelementptr inbounds %struct.loop, ptr %152, i64 0, i32 2
  %154 = load ptr, ptr %153, align 8, !tbaa !39
  %155 = icmp eq ptr %154, %150
  br i1 %155, label %156, label %157

156:                                              ; preds = %147
  tail call void @cancel_loop_tree(ptr noundef nonnull %152) #18
  br label %157

157:                                              ; preds = %147, %156
  %158 = add nuw nsw i64 %148, 1
  %159 = icmp eq i64 %158, %146
  br i1 %159, label %160, label %147, !llvm.loop !40

160:                                              ; preds = %157, %140
  tail call fastcc void @remove_bbs(ptr noundef %141, i32 noundef %49) #19
  tail call void @free(ptr noundef %141) #19
  tail call void @sbitmap_zero(ptr noundef %62) #18
  %161 = icmp sgt i32 %143, 0
  br i1 %161, label %162, label %196

162:                                              ; preds = %160
  %163 = zext nneg i32 %143 to i64
  br label %164

164:                                              ; preds = %162, %191
  %165 = phi i64 [ 0, %162 ], [ %192, %191 ]
  %166 = getelementptr inbounds ptr, ptr %56, i64 %165
  %167 = load ptr, ptr %166, align 8, !tbaa !24
  %168 = tail call ptr @get_immediate_dominator(i32 noundef 1, ptr noundef %167) #18
  %169 = getelementptr inbounds %struct.basic_block_def, ptr %168, i64 0, i32 9
  %170 = load i32, ptr %169, align 8, !tbaa !30
  %171 = lshr i32 %170, 6
  %172 = zext nneg i32 %171 to i64
  %173 = getelementptr inbounds %struct.simple_bitmap_def, ptr %62, i64 0, i32 3, i64 %172
  %174 = load i64, ptr %173, align 8, !tbaa !36
  %175 = and i32 %170, 63
  %176 = zext nneg i32 %175 to i64
  %177 = shl nuw i64 1, %176
  %178 = and i64 %177, %174
  %179 = icmp eq i64 %178, 0
  br i1 %179, label %180, label %191

180:                                              ; preds = %164
  tail call fastcc void @SET_BIT(ptr noundef nonnull %62, i32 noundef %170) #19
  %181 = tail call ptr @first_dom_son(i32 noundef 1, ptr noundef nonnull %168) #18
  %182 = icmp eq ptr %181, null
  br i1 %182, label %191, label %183

183:                                              ; preds = %180, %188
  %184 = phi ptr [ %189, %188 ], [ %181, %180 ]
  %185 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %144, ptr noundef nonnull %184) #18
  %186 = icmp eq i8 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %183
  call fastcc void @VEC_basic_block_heap_safe_push(ptr noundef nonnull %4, ptr noundef nonnull %184) #19
  br label %188

188:                                              ; preds = %183, %187
  %189 = tail call ptr @next_dom_son(i32 noundef 1, ptr noundef nonnull %184) #18
  %190 = icmp eq ptr %189, null
  br i1 %190, label %191, label %183, !llvm.loop !41

191:                                              ; preds = %188, %180, %164
  %192 = add nuw nsw i64 %165, 1
  %193 = icmp eq i64 %192, %163
  br i1 %193, label %194, label %164, !llvm.loop !42

194:                                              ; preds = %191
  %195 = load ptr, ptr %4, align 8, !tbaa !24
  br label %196

196:                                              ; preds = %194, %160
  %197 = phi ptr [ %195, %194 ], [ null, %160 ]
  tail call void @free(ptr noundef %62) #19
  tail call void @iterate_fix_dominators(i32 noundef 1, ptr noundef %197, i8 noundef zeroext 1) #18
  call fastcc void @VEC_basic_block_heap_free(ptr noundef nonnull %4) #19
  tail call void @free(ptr noundef %56) #19
  call fastcc void @fix_bb_placements(ptr noundef %144, ptr noundef nonnull %5) #19
  %198 = getelementptr inbounds %struct.basic_block_def, ptr %144, i64 0, i32 3
  %199 = load ptr, ptr %198, align 8, !tbaa !16
  call fastcc void @fix_loop_placements(ptr noundef %199, ptr noundef nonnull %5) #19
  %200 = load i8, ptr %5, align 1, !tbaa !5
  %201 = icmp eq i8 %200, 0
  br i1 %201, label %207, label %202

202:                                              ; preds = %196
  %203 = tail call fastcc zeroext i8 @loops_state_satisfies_p(i32 noundef 4) #19, !range !14
  %204 = icmp eq i8 %203, 0
  br i1 %204, label %207, label %205

205:                                              ; preds = %202
  %206 = tail call zeroext i8 @mark_irreducible_loops() #18
  br label %207

207:                                              ; preds = %196, %202, %205, %1
  %208 = phi i8 [ 0, %1 ], [ 1, %205 ], [ 1, %202 ], [ 1, %196 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #17
  ret i8 %208
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare zeroext i8 @can_remove_branch_p(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_pred_p(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = load ptr, ptr %0, align 8, !tbaa !43
  %3 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %2) #19
  %4 = icmp eq i32 %3, 1
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_pred_edge(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %0) #19, !range !14
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 655, ptr noundef nonnull @.str.1) #18
  br label %5

5:                                                ; preds = %1, %4
  %6 = load ptr, ptr %0, align 8, !tbaa !43
  %7 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %6, i32 noundef 0) #19
  ret ptr %7
}

; Function Attrs: optsize
declare ptr @split_edge(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @loop_outer(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !44
  %4 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %3) #19
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = add i32 %4, -1
  %8 = tail call fastcc ptr @VEC_loop_p_base_index(ptr noundef %3, i32 noundef %7) #19
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: optsize
declare zeroext i8 @dominated_by_p(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @unloop(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 {
  %3 = alloca i8, align 1
  %4 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #17
  %6 = tail call ptr @loop_preheader_edge(ptr noundef %0) #18
  %7 = getelementptr inbounds %struct.edge_def, ptr %6, i64 0, i32 7
  %8 = load i32, ptr %7, align 8, !tbaa !8
  %9 = and i32 %8, 128
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i8 1, ptr %1, align 1, !tbaa !5
  br label %12

12:                                               ; preds = %11, %2
  %13 = tail call ptr @get_loop_body(ptr noundef nonnull %0) #18
  %14 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %15 = load i32, ptr %14, align 4, !tbaa !45
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %32, label %17

17:                                               ; preds = %12
  %18 = zext i32 %15 to i64
  br label %19

19:                                               ; preds = %17, %29
  %20 = phi i64 [ 0, %17 ], [ %30, %29 ]
  %21 = getelementptr inbounds ptr, ptr %13, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !24
  %23 = getelementptr inbounds %struct.basic_block_def, ptr %22, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !16
  %25 = icmp eq ptr %24, %0
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  tail call void @remove_bb_from_loops(ptr noundef nonnull %22) #18
  %27 = load ptr, ptr %21, align 8, !tbaa !24
  %28 = tail call fastcc ptr @loop_outer(ptr noundef %0) #19
  tail call void @add_bb_to_loop(ptr noundef %27, ptr noundef %28) #18
  br label %29

29:                                               ; preds = %19, %26
  %30 = add nuw nsw i64 %20, 1
  %31 = icmp eq i64 %30, %18
  br i1 %31, label %32, label %19, !llvm.loop !46

32:                                               ; preds = %29, %12
  tail call void @free(ptr noundef %13) #19
  %33 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 8
  %34 = load ptr, ptr %33, align 8, !tbaa !47
  %35 = icmp eq ptr %34, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %32, %36
  %37 = phi ptr [ %39, %36 ], [ %34, %32 ]
  tail call void @flow_loop_tree_node_remove(ptr noundef nonnull %37) #18
  %38 = tail call fastcc ptr @loop_outer(ptr noundef nonnull %0) #19
  tail call void @flow_loop_tree_node_add(ptr noundef %38, ptr noundef nonnull %37) #18
  %39 = load ptr, ptr %33, align 8, !tbaa !47
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %36, !llvm.loop !48

41:                                               ; preds = %36, %32
  tail call void @delete_loop(ptr noundef nonnull %0) #18
  %42 = tail call fastcc ptr @single_succ_edge(ptr noundef %5) #19
  tail call void @remove_edge(ptr noundef %42) #18
  call fastcc void @fix_bb_placements(ptr noundef %5, ptr noundef nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @find_path(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !13
  %5 = load ptr, ptr %4, align 8, !tbaa !43
  %6 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %5) #19
  %7 = icmp ult i32 %6, 2
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 75, ptr noundef nonnull @.str.1) #18
  br label %9

9:                                                ; preds = %2, %8
  %10 = load ptr, ptr @cfun, align 8, !tbaa !24
  %11 = getelementptr inbounds %struct.function, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !25
  %13 = getelementptr inbounds %struct.control_flow_graph, ptr %12, i64 0, i32 3
  %14 = load i32, ptr %13, align 8, !tbaa !27
  %15 = sext i32 %14 to i64
  %16 = tail call ptr @xcalloc(i64 noundef %15, i64 noundef 8) #18
  store ptr %16, ptr %1, align 8, !tbaa !24
  %17 = load ptr, ptr %3, align 8, !tbaa !13
  %18 = load ptr, ptr @cfun, align 8, !tbaa !24
  %19 = getelementptr inbounds %struct.function, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !25
  %21 = getelementptr inbounds %struct.control_flow_graph, ptr %20, i64 0, i32 3
  %22 = load i32, ptr %21, align 8, !tbaa !27
  %23 = tail call i32 @dfs_enumerate_from(ptr noundef %17, i32 noundef 0, ptr noundef nonnull @rpe_enum_p, ptr noundef %16, i32 noundef %22, ptr noundef %17) #18
  ret i32 %23
}

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @sbitmap_alloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @sbitmap_zero(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @SET_BIT(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #4 {
  %3 = load ptr, ptr %0, align 8, !tbaa !49
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
  %15 = load i64, ptr %14, align 8, !tbaa !36
  %16 = and i32 %1, 63
  %17 = zext nneg i32 %16 to i64
  %18 = shl nuw i64 1, %17
  %19 = and i64 %15, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %11
  %22 = getelementptr inbounds i8, ptr %3, i64 %13
  %23 = load i8, ptr %22, align 1, !tbaa !5
  %24 = add i8 %23, 1
  store i8 %24, ptr %22, align 1, !tbaa !5
  br label %25

25:                                               ; preds = %5, %11, %21
  %26 = phi i64 [ %10, %5 ], [ %13, %11 ], [ %13, %21 ]
  %27 = phi i64 [ %8, %5 ], [ %18, %11 ], [ %18, %21 ]
  %28 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %26
  %29 = load i64, ptr %28, align 8, !tbaa !36
  %30 = or i64 %29, %27
  store i64 %30, ptr %28, align 8, !tbaa !36
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #5 {
  ret ptr %0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #19, !range !14
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #19
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !24
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #19
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #19
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #19
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 738, ptr noundef nonnull @.str.1) #18
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !51
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !51
  ret void
}

; Function Attrs: optsize
declare void @remove_branch(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @cancel_loop_tree(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @remove_bbs(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %12

4:                                                ; preds = %2
  %5 = zext nneg i32 %1 to i64
  br label %6

6:                                                ; preds = %4, %6
  %7 = phi i64 [ 0, %4 ], [ %10, %6 ]
  %8 = getelementptr inbounds ptr, ptr %0, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !24
  tail call void @delete_basic_block(ptr noundef %9) #18
  %10 = add nuw nsw i64 %7, 1
  %11 = icmp eq i64 %10, %5
  br i1 %11, label %12, label %6, !llvm.loop !53

12:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare ptr @get_immediate_dominator(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @first_dom_son(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_basic_block_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call fastcc void @VEC_basic_block_heap_reserve(ptr noundef %0) #19
  %3 = load ptr, ptr %0, align 8, !tbaa !24
  tail call fastcc void @VEC_basic_block_base_quick_push(ptr noundef %3, ptr noundef %1) #19
  ret void
}

; Function Attrs: optsize
declare ptr @next_dom_son(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @iterate_fix_dominators(i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_basic_block_heap_free(ptr nocapture noundef %0) unnamed_addr #8 {
  %2 = load ptr, ptr %0, align 8, !tbaa !24
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #19
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fix_bb_placements(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #17
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !16
  %7 = load ptr, ptr @cfun, align 8, !tbaa !24
  %8 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !54
  %10 = getelementptr inbounds %struct.loops, ptr %9, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !55
  %12 = icmp eq ptr %6, %11
  br i1 %12, label %140, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !25
  %16 = getelementptr inbounds %struct.control_flow_graph, ptr %15, i64 0, i32 5
  %17 = load i32, ptr %16, align 8, !tbaa !29
  %18 = tail call ptr @sbitmap_alloc(i32 noundef %17) #18
  tail call void @sbitmap_zero(ptr noundef %18) #18
  %19 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %20 = load i32, ptr %19, align 8, !tbaa !30
  tail call fastcc void @SET_BIT(ptr noundef %18, i32 noundef %20) #19
  %21 = getelementptr inbounds %struct.loop, ptr %6, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !39
  %23 = getelementptr inbounds %struct.basic_block_def, ptr %22, i64 0, i32 9
  %24 = load i32, ptr %23, align 8, !tbaa !30
  tail call fastcc void @SET_BIT(ptr noundef %18, i32 noundef %24) #19
  %25 = getelementptr inbounds %struct.loop, ptr %6, i64 0, i32 6
  %26 = load i32, ptr %25, align 4, !tbaa !45
  %27 = add i32 %26, 1
  %28 = zext i32 %27 to i64
  %29 = shl nuw nsw i64 %28, 3
  %30 = tail call ptr @xmalloc(i64 noundef %29) #18
  %31 = load i32, ptr %25, align 4, !tbaa !45
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds ptr, ptr %30, i64 %32
  %34 = getelementptr inbounds ptr, ptr %30, i64 1
  store ptr %0, ptr %30, align 8, !tbaa !24
  %35 = getelementptr inbounds i8, ptr %4, i64 8
  br label %36

36:                                               ; preds = %13, %136
  %37 = phi ptr [ %30, %13 ], [ %42, %136 ]
  %38 = phi ptr [ %34, %13 ], [ %137, %136 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #17
  %39 = load ptr, ptr %37, align 8, !tbaa !24
  %40 = getelementptr inbounds ptr, ptr %37, i64 1
  %41 = icmp eq ptr %37, %33
  %42 = select i1 %41, ptr %30, ptr %40
  %43 = getelementptr inbounds %struct.basic_block_def, ptr %39, i64 0, i32 9
  %44 = load i32, ptr %43, align 8, !tbaa !30
  tail call fastcc void @RESET_BIT(ptr noundef %18, i32 noundef %44) #19
  %45 = getelementptr inbounds %struct.basic_block_def, ptr %39, i64 0, i32 3
  %46 = load ptr, ptr %45, align 8, !tbaa !16
  %47 = getelementptr inbounds %struct.loop, ptr %46, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !39
  %49 = icmp eq ptr %48, %39
  br i1 %49, label %50, label %53

50:                                               ; preds = %36
  %51 = tail call fastcc zeroext i8 @fix_loop_placement(ptr noundef nonnull %46) #19, !range !14
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %136, label %56, !llvm.loop !57

53:                                               ; preds = %36
  %54 = tail call fastcc zeroext i8 @fix_bb_placement(ptr noundef nonnull %39) #19, !range !14
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %136, label %56, !llvm.loop !57

56:                                               ; preds = %53, %50
  %57 = getelementptr inbounds %struct.basic_block_def, ptr %39, i64 0, i32 1
  %58 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %57) #19
  store i32 0, ptr %4, align 8, !tbaa.struct !32
  store ptr %58, ptr %35, align 8, !tbaa.struct !34
  %59 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %58, ptr noundef nonnull %3) #19, !range !14
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %73, label %61

61:                                               ; preds = %56, %68
  %62 = load ptr, ptr %3, align 8, !tbaa !24
  %63 = getelementptr inbounds %struct.edge_def, ptr %62, i64 0, i32 7
  %64 = load i32, ptr %63, align 8, !tbaa !8
  %65 = and i32 %64, 128
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %61
  store i8 1, ptr %1, align 1, !tbaa !5
  br label %68

68:                                               ; preds = %61, %67
  call fastcc void @ei_next(ptr noundef nonnull %4) #19
  %69 = load i32, ptr %4, align 8
  %70 = load ptr, ptr %35, align 8
  %71 = call fastcc zeroext i8 @ei_cond(i32 %69, ptr %70, ptr noundef nonnull %3) #19, !range !14
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %73, label %61, !llvm.loop !58

73:                                               ; preds = %68, %56
  %74 = tail call fastcc ptr @ei_start_1(ptr noundef %39) #19
  store i32 0, ptr %4, align 8, !tbaa.struct !32
  store ptr %74, ptr %35, align 8, !tbaa.struct !34
  %75 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %74, ptr noundef nonnull %3) #19, !range !14
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %136, label %77

77:                                               ; preds = %73, %130
  %78 = phi ptr [ %131, %130 ], [ %38, %73 ]
  %79 = load ptr, ptr %3, align 8, !tbaa !24
  %80 = load ptr, ptr %79, align 8, !tbaa !15
  %81 = getelementptr inbounds %struct.edge_def, ptr %79, i64 0, i32 7
  %82 = load i32, ptr %81, align 8, !tbaa !8
  %83 = and i32 %82, 128
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %77
  store i8 1, ptr %1, align 1, !tbaa !5
  br label %86

86:                                               ; preds = %85, %77
  %87 = getelementptr inbounds %struct.basic_block_def, ptr %80, i64 0, i32 9
  %88 = load i32, ptr %87, align 8, !tbaa !30
  %89 = lshr i32 %88, 6
  %90 = zext nneg i32 %89 to i64
  %91 = getelementptr inbounds %struct.simple_bitmap_def, ptr %18, i64 0, i32 3, i64 %90
  %92 = load i64, ptr %91, align 8, !tbaa !36
  %93 = and i32 %88, 63
  %94 = zext nneg i32 %93 to i64
  %95 = shl nuw i64 1, %94
  %96 = and i64 %95, %92
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %130

98:                                               ; preds = %86
  %99 = getelementptr inbounds %struct.basic_block_def, ptr %80, i64 0, i32 3
  %100 = load ptr, ptr %99, align 8, !tbaa !16
  %101 = tail call ptr @find_common_loop(ptr noundef %100, ptr noundef %6) #18
  %102 = load ptr, ptr %99, align 8, !tbaa !16
  %103 = icmp eq ptr %102, %6
  %104 = icmp eq ptr %101, %102
  %105 = select i1 %103, i1 true, i1 %104
  br i1 %105, label %109, label %106

106:                                              ; preds = %98
  %107 = getelementptr inbounds %struct.loop, ptr %102, i64 0, i32 2
  %108 = load ptr, ptr %107, align 8, !tbaa !39
  br label %113

109:                                              ; preds = %98
  %110 = load ptr, ptr %45, align 8, !tbaa !16
  %111 = tail call zeroext i8 @flow_loop_nested_p(ptr noundef %110, ptr noundef %102) #18
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %130, label %113

113:                                              ; preds = %109, %106
  %114 = phi ptr [ %108, %106 ], [ %80, %109 ]
  %115 = getelementptr inbounds %struct.basic_block_def, ptr %114, i64 0, i32 9
  %116 = load i32, ptr %115, align 8, !tbaa !30
  %117 = lshr i32 %116, 6
  %118 = zext nneg i32 %117 to i64
  %119 = getelementptr inbounds %struct.simple_bitmap_def, ptr %18, i64 0, i32 3, i64 %118
  %120 = load i64, ptr %119, align 8, !tbaa !36
  %121 = and i32 %116, 63
  %122 = zext nneg i32 %121 to i64
  %123 = shl nuw i64 1, %122
  %124 = and i64 %123, %120
  %125 = icmp eq i64 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %113
  store ptr %114, ptr %78, align 8, !tbaa !24
  %127 = getelementptr inbounds ptr, ptr %78, i64 1
  %128 = icmp eq ptr %78, %33
  %129 = select i1 %128, ptr %30, ptr %127
  tail call fastcc void @SET_BIT(ptr noundef nonnull %18, i32 noundef %116) #19
  br label %130

130:                                              ; preds = %113, %109, %86, %126
  %131 = phi ptr [ %129, %126 ], [ %78, %86 ], [ %78, %109 ], [ %78, %113 ]
  call fastcc void @ei_next(ptr noundef nonnull %4) #19
  %132 = load i32, ptr %4, align 8
  %133 = load ptr, ptr %35, align 8
  %134 = call fastcc zeroext i8 @ei_cond(i32 %132, ptr %133, ptr noundef nonnull %3) #19, !range !14
  %135 = icmp eq i8 %134, 0
  br i1 %135, label %136, label %77, !llvm.loop !59

136:                                              ; preds = %130, %73, %53, %50
  %137 = phi ptr [ %38, %50 ], [ %38, %53 ], [ %38, %73 ], [ %131, %130 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #17
  %138 = icmp eq ptr %42, %137
  br i1 %138, label %139, label %36

139:                                              ; preds = %136
  tail call void @free(ptr noundef %18) #19
  tail call void @free(ptr noundef %30) #19
  br label %140

140:                                              ; preds = %2, %139
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fix_loop_placements(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @loop_outer(ptr noundef %0) #19
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %2, %10
  %6 = phi ptr [ %13, %10 ], [ %3, %2 ]
  %7 = phi ptr [ %6, %10 ], [ %0, %2 ]
  %8 = tail call fastcc zeroext i8 @fix_loop_placement(ptr noundef %7) #19, !range !14
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %5
  %11 = tail call ptr @loop_preheader_edge(ptr noundef %7) #18
  %12 = load ptr, ptr %11, align 8, !tbaa !15
  tail call fastcc void @fix_bb_placements(ptr noundef %12, ptr noundef %1) #19
  %13 = tail call fastcc ptr @loop_outer(ptr noundef nonnull %6) #19
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %5, !llvm.loop !60

15:                                               ; preds = %10, %5, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @loops_state_satisfies_p(i32 noundef %0) unnamed_addr #3 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !24
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !54
  %5 = load i32, ptr %4, align 8, !tbaa !61
  %6 = and i32 %5, %0
  %7 = icmp eq i32 %6, %0
  %8 = zext i1 %7 to i8
  ret i8 %8
}

; Function Attrs: optsize
declare zeroext i8 @mark_irreducible_loops() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @add_loop(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #17
  tail call fastcc void @place_new_loop(ptr noundef %0) #19
  tail call void @flow_loop_tree_node_add(ptr noundef %1, ptr noundef %0) #18
  %5 = load ptr, ptr @cfun, align 8, !tbaa !24
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !25
  %8 = getelementptr inbounds %struct.control_flow_graph, ptr %7, i64 0, i32 3
  %9 = load i32, ptr %8, align 8, !tbaa !27
  %10 = sext i32 %9 to i64
  %11 = shl nsw i64 %10, 3
  %12 = tail call ptr @xmalloc(i64 noundef %11) #18
  %13 = load ptr, ptr @cfun, align 8, !tbaa !24
  %14 = getelementptr inbounds %struct.function, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !25
  %16 = getelementptr inbounds %struct.control_flow_graph, ptr %15, i64 0, i32 3
  %17 = load i32, ptr %16, align 8, !tbaa !27
  %18 = tail call i32 @get_loop_body_with_size(ptr noundef %0, ptr noundef %12, i32 noundef %17) #18
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %66

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %22 = zext nneg i32 %18 to i64
  br label %27

23:                                               ; preds = %46
  br i1 %19, label %24, label %66

24:                                               ; preds = %23
  %25 = getelementptr inbounds i8, ptr %4, i64 8
  %26 = zext nneg i32 %18 to i64
  br label %49

27:                                               ; preds = %20, %46
  %28 = phi i64 [ 0, %20 ], [ %47, %46 ]
  %29 = getelementptr inbounds ptr, ptr %12, i64 %28
  %30 = load ptr, ptr %29, align 8, !tbaa !24
  %31 = getelementptr inbounds %struct.basic_block_def, ptr %30, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !16
  %33 = icmp eq ptr %32, %1
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  tail call void @remove_bb_from_loops(ptr noundef nonnull %30) #18
  %35 = load ptr, ptr %29, align 8, !tbaa !24
  tail call void @add_bb_to_loop(ptr noundef %35, ptr noundef %0) #18
  br label %46

36:                                               ; preds = %27
  %37 = load i32, ptr %21, align 4, !tbaa !45
  %38 = add i32 %37, 1
  store i32 %38, ptr %21, align 4, !tbaa !45
  %39 = tail call fastcc ptr @loop_outer(ptr noundef %32) #19
  %40 = icmp eq ptr %39, %1
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.loop, ptr %32, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !39
  %44 = icmp eq ptr %43, %30
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  tail call void @flow_loop_tree_node_remove(ptr noundef nonnull %32) #18
  tail call void @flow_loop_tree_node_add(ptr noundef nonnull %0, ptr noundef nonnull %32) #18
  br label %46

46:                                               ; preds = %36, %41, %45, %34
  %47 = add nuw nsw i64 %28, 1
  %48 = icmp eq i64 %47, %22
  br i1 %48, label %23, label %27, !llvm.loop !62

49:                                               ; preds = %24, %63
  %50 = phi i64 [ 0, %24 ], [ %64, %63 ]
  %51 = getelementptr inbounds ptr, ptr %12, i64 %50
  %52 = load ptr, ptr %51, align 8, !tbaa !24
  %53 = getelementptr inbounds %struct.basic_block_def, ptr %52, i64 0, i32 1
  %54 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %53) #19
  store i32 0, ptr %4, align 8, !tbaa.struct !32
  store ptr %54, ptr %25, align 8, !tbaa.struct !34
  %55 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %54, ptr noundef nonnull %3) #19, !range !14
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %49, %57
  %58 = load ptr, ptr %3, align 8, !tbaa !24
  tail call void @rescan_loop_exit(ptr noundef %58, i8 noundef zeroext 0, i8 noundef zeroext 0) #18
  call fastcc void @ei_next(ptr noundef nonnull %4) #19
  %59 = load i32, ptr %4, align 8
  %60 = load ptr, ptr %25, align 8
  %61 = call fastcc zeroext i8 @ei_cond(i32 %59, ptr %60, ptr noundef nonnull %3) #19, !range !14
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %63, label %57, !llvm.loop !63

63:                                               ; preds = %57, %49
  %64 = add nuw nsw i64 %50, 1
  %65 = icmp eq i64 %64, %26
  br i1 %65, label %66, label %49, !llvm.loop !64

66:                                               ; preds = %63, %2, %23
  tail call void @free(ptr noundef %12) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @place_new_loop(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @number_of_loops() #19
  store i32 %2, ptr %0, align 8, !tbaa !65
  %3 = load ptr, ptr @cfun, align 8, !tbaa !24
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !54
  %6 = getelementptr inbounds %struct.loops, ptr %5, i64 0, i32 1
  tail call fastcc void @VEC_loop_p_gc_safe_push(ptr noundef nonnull %6, ptr noundef nonnull %0) #19
  ret void
}

; Function Attrs: optsize
declare void @flow_loop_tree_node_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @get_loop_body_with_size(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @remove_bb_from_loops(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @add_bb_to_loop(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @flow_loop_tree_node_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @rescan_loop_exit(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @scale_loop_frequencies(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @get_loop_body(ptr noundef %0) #18
  %5 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %6 = load i32, ptr %5, align 4, !tbaa !45
  tail call void @scale_bbs_frequencies_int(ptr noundef %4, i32 noundef %6, i32 noundef %1, i32 noundef %2) #18
  tail call void @free(ptr noundef %4) #19
  ret void
}

; Function Attrs: optsize
declare ptr @get_loop_body(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @scale_bbs_frequencies_int(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @create_empty_if_region_on_edge(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #17
  %5 = tail call ptr @split_edge(ptr noundef %0) #18
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %5) #19
  %6 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %3, ptr noundef %1, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 0, i32 noundef 0) #18
  %7 = call ptr @gimple_build_cond_from_tree(ptr noundef %6, ptr noundef null, ptr noundef null) #18
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #17
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %5) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !66
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #17
  call void @gsi_insert_after(ptr noundef nonnull %3, ptr noundef %7, i32 noundef 0) #18
  %8 = call fastcc ptr @single_succ_edge(ptr noundef %5) #19
  %9 = call ptr @split_edge(ptr noundef %8) #18
  %10 = call fastcc ptr @single_succ_edge(ptr noundef %5) #19
  %11 = call ptr @split_edge(ptr noundef %10) #18
  %12 = call ptr @make_edge(ptr noundef %5, ptr noundef %9, i32 noundef 0) #18
  %13 = call ptr @split_edge(ptr noundef %12) #18
  %14 = getelementptr inbounds %struct.edge_def, ptr %10, i64 0, i32 7
  %15 = load i32, ptr %14, align 8, !tbaa !8
  %16 = and i32 %15, -1026
  %17 = or disjoint i32 %16, 1024
  store i32 %17, ptr %14, align 8, !tbaa !8
  %18 = getelementptr inbounds %struct.edge_def, ptr %12, i64 0, i32 7
  %19 = load i32, ptr %18, align 8, !tbaa !8
  %20 = and i32 %19, -2050
  %21 = or disjoint i32 %20, 2048
  store i32 %21, ptr %18, align 8, !tbaa !8
  %22 = load ptr, ptr %0, align 8, !tbaa !15
  call void @set_immediate_dominator(i32 noundef 1, ptr noundef %5, ptr noundef %22) #18
  call void @set_immediate_dominator(i32 noundef 1, ptr noundef %11, ptr noundef %5) #18
  call void @set_immediate_dominator(i32 noundef 1, ptr noundef %13, ptr noundef %5) #18
  call void @set_immediate_dominator(i32 noundef 1, ptr noundef %9, ptr noundef %5) #18
  %23 = call fastcc ptr @single_succ_edge(ptr noundef %9) #19
  %24 = getelementptr inbounds %struct.edge_def, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !13
  %26 = call fastcc zeroext i8 @single_pred_p(ptr noundef %25) #19, !range !14
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %2
  call void @set_immediate_dominator(i32 noundef 1, ptr noundef %25, ptr noundef %9) #18
  br label %29

29:                                               ; preds = %28, %2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #17
  ret ptr %23
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_last_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #9 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #19
  %4 = tail call fastcc ptr @gimple_seq_last(ptr noundef %3) #19
  store ptr %4, ptr %0, align 8, !tbaa !67
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !69
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !70
  ret void
}

; Function Attrs: optsize
declare ptr @force_gimple_operand_gsi(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gimple_build_cond_from_tree(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @gsi_insert_after(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ_edge(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %0) #19, !range !14
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 645, ptr noundef nonnull @.str.1) #18
  br label %5

5:                                                ; preds = %1, %4
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !71
  %8 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %7, i32 noundef 0) #19
  ret ptr %8
}

; Function Attrs: optsize
declare ptr @make_edge(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @set_immediate_dominator(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @create_empty_loop_on_edge(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #0 {
  %9 = alloca %struct.gimple_stmt_iterator, align 8
  %10 = alloca ptr, align 8
  %11 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #17
  %12 = insertelement <4 x ptr> poison, ptr %1, i64 0
  %13 = insertelement <4 x ptr> %12, ptr %0, i64 1
  %14 = insertelement <4 x ptr> %13, ptr %2, i64 2
  %15 = insertelement <4 x ptr> %14, ptr %3, i64 3
  %16 = icmp ne ptr %4, null
  %17 = icmp eq <4 x ptr> %15, zeroinitializer
  %18 = bitcast <4 x i1> %17 to i4
  %19 = icmp eq i4 %18, 0
  %20 = and i1 %19, %16
  br i1 %20, label %22, label %21

21:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 630, ptr noundef nonnull @.str.1) #18
  br label %22

22:                                               ; preds = %8, %21
  %23 = load ptr, ptr %0, align 8, !tbaa !15
  %24 = tail call ptr @split_edge(ptr noundef nonnull %0) #18
  %25 = tail call fastcc ptr @single_succ_edge(ptr noundef %24) #19
  %26 = tail call ptr @split_edge(ptr noundef %25) #18
  %27 = tail call fastcc ptr @single_succ(ptr noundef %26) #19
  %28 = tail call ptr @make_edge(ptr noundef %24, ptr noundef %27, i32 noundef 0) #18
  %29 = tail call fastcc ptr @single_succ_edge(ptr noundef %26) #19
  %30 = tail call ptr @redirect_edge_succ_nodup(ptr noundef %29, ptr noundef %24) #18
  tail call void @set_immediate_dominator(i32 noundef 1, ptr noundef %24, ptr noundef %23) #18
  tail call void @set_immediate_dominator(i32 noundef 1, ptr noundef %26, ptr noundef %24) #18
  tail call void @set_immediate_dominator(i32 noundef 1, ptr noundef %27, ptr noundef %24) #18
  %31 = tail call ptr @alloc_loop() #18
  %32 = getelementptr inbounds %struct.loop, ptr %31, i64 0, i32 2
  store ptr %24, ptr %32, align 8, !tbaa !39
  %33 = getelementptr inbounds %struct.loop, ptr %31, i64 0, i32 3
  store ptr %26, ptr %33, align 8, !tbaa !18
  tail call void @add_loop(ptr noundef %31, ptr noundef %7) #19
  tail call void @scale_loop_frequencies(ptr noundef %31, i32 noundef 5000, i32 noundef 10000) #19
  tail call fastcc void @update_dominators_in_loop(ptr noundef %31) #19
  %34 = tail call ptr @single_exit(ptr noundef %31) #18
  %35 = getelementptr inbounds %struct.edge_def, ptr %34, i64 0, i32 7
  store i32 2560, ptr %35, align 8, !tbaa !8
  %36 = tail call fastcc ptr @single_pred_edge(ptr noundef %26) #19
  %37 = getelementptr inbounds %struct.edge_def, ptr %36, i64 0, i32 7
  store i32 1024, ptr %37, align 8, !tbaa !8
  %38 = call ptr @force_gimple_operand(ptr noundef %1, ptr noundef nonnull %10, i8 noundef zeroext 1, ptr noundef %4) #18
  %39 = load ptr, ptr %10, align 8, !tbaa !24
  %40 = icmp eq ptr %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %22
  %42 = call ptr @loop_preheader_edge(ptr noundef nonnull %31) #18
  %43 = load ptr, ptr %10, align 8, !tbaa !24
  call void @gsi_insert_seq_on_edge(ptr noundef %42, ptr noundef %43) #18
  call void @gsi_commit_edge_inserts() #18
  br label %44

44:                                               ; preds = %41, %22
  %45 = call ptr @force_gimple_operand(ptr noundef %3, ptr noundef nonnull %10, i8 noundef zeroext 1, ptr noundef null) #18
  %46 = load ptr, ptr %10, align 8, !tbaa !24
  %47 = icmp eq ptr %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %44
  %49 = call ptr @loop_preheader_edge(ptr noundef nonnull %31) #18
  %50 = load ptr, ptr %10, align 8, !tbaa !24
  call void @gsi_insert_seq_on_edge(ptr noundef %49, ptr noundef %50) #18
  call void @gsi_commit_edge_inserts() #18
  br label %51

51:                                               ; preds = %48, %44
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %9, ptr noundef %24) #19
  call void @create_iv(ptr noundef %38, ptr noundef %2, ptr noundef %4, ptr noundef nonnull %31, ptr noundef nonnull %9, i8 noundef zeroext 0, ptr noundef %5, ptr noundef %6) #18
  %52 = load ptr, ptr %5, align 8, !tbaa !24
  %53 = call ptr @gimple_build_cond(i32 noundef 97, ptr noundef %52, ptr noundef %45, ptr noundef null, ptr noundef null) #18
  %54 = call fastcc ptr @gimple_cond_lhs(ptr noundef %53) #19
  %55 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %9, ptr noundef %54, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 0, i32 noundef 0) #18
  call fastcc void @gimple_cond_set_lhs(ptr noundef %53, ptr noundef %55) #19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #17
  %56 = load ptr, ptr %34, align 8, !tbaa !15
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %11, ptr noundef %56) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %11, i64 24, i1 false), !tbaa.struct !66
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #17
  call void @gsi_insert_after(ptr noundef nonnull %9, ptr noundef %53, i32 noundef 0) #18
  %57 = call ptr @split_block_after_labels(ptr noundef %24) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #17
  ret ptr %31
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @single_succ_edge(ptr noundef %0) #19
  %3 = getelementptr inbounds %struct.edge_def, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !13
  ret ptr %4
}

; Function Attrs: optsize
declare ptr @redirect_edge_succ_nodup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @alloc_loop() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_dominators_in_loop(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #17
  store ptr null, ptr %2, align 8, !tbaa !24
  %3 = load ptr, ptr @cfun, align 8, !tbaa !24
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !25
  %6 = getelementptr inbounds %struct.control_flow_graph, ptr %5, i64 0, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !29
  %8 = tail call ptr @sbitmap_alloc(i32 noundef %7) #18
  tail call void @sbitmap_zero(ptr noundef %8) #18
  %9 = tail call ptr @get_loop_body(ptr noundef %0) #18
  %10 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %11 = load i32, ptr %10, align 4, !tbaa !45
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %55, label %15

13:                                               ; preds = %15
  %14 = icmp eq i32 %22, 0
  br i1 %14, label %55, label %25

15:                                               ; preds = %1, %15
  %16 = phi i64 [ %21, %15 ], [ 0, %1 ]
  %17 = getelementptr inbounds ptr, ptr %9, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !24
  %19 = getelementptr inbounds %struct.basic_block_def, ptr %18, i64 0, i32 9
  %20 = load i32, ptr %19, align 8, !tbaa !30
  tail call fastcc void @SET_BIT(ptr noundef %8, i32 noundef %20) #19
  %21 = add nuw nsw i64 %16, 1
  %22 = load i32, ptr %10, align 4, !tbaa !45
  %23 = zext i32 %22 to i64
  %24 = icmp ult i64 %21, %23
  br i1 %24, label %15, label %13, !llvm.loop !72

25:                                               ; preds = %13, %48
  %26 = phi i64 [ %49, %48 ], [ 0, %13 ]
  %27 = getelementptr inbounds ptr, ptr %9, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !24
  %29 = tail call ptr @first_dom_son(i32 noundef 1, ptr noundef %28) #18
  %30 = icmp eq ptr %29, null
  br i1 %30, label %48, label %31

31:                                               ; preds = %25, %45
  %32 = phi ptr [ %46, %45 ], [ %29, %25 ]
  %33 = getelementptr inbounds %struct.basic_block_def, ptr %32, i64 0, i32 9
  %34 = load i32, ptr %33, align 8, !tbaa !30
  %35 = lshr i32 %34, 6
  %36 = zext nneg i32 %35 to i64
  %37 = getelementptr inbounds %struct.simple_bitmap_def, ptr %8, i64 0, i32 3, i64 %36
  %38 = load i64, ptr %37, align 8, !tbaa !36
  %39 = and i32 %34, 63
  %40 = zext nneg i32 %39 to i64
  %41 = shl nuw i64 1, %40
  %42 = and i64 %41, %38
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %31
  tail call fastcc void @SET_BIT(ptr noundef nonnull %8, i32 noundef %34) #19
  call fastcc void @VEC_basic_block_heap_safe_push(ptr noundef nonnull %2, ptr noundef nonnull %32) #19
  br label %45

45:                                               ; preds = %31, %44
  %46 = tail call ptr @next_dom_son(i32 noundef 1, ptr noundef nonnull %32) #18
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %31, !llvm.loop !73

48:                                               ; preds = %45, %25
  %49 = add nuw nsw i64 %26, 1
  %50 = load i32, ptr %10, align 4, !tbaa !45
  %51 = zext i32 %50 to i64
  %52 = icmp ult i64 %49, %51
  br i1 %52, label %25, label %53, !llvm.loop !74

53:                                               ; preds = %48
  %54 = load ptr, ptr %2, align 8, !tbaa !24
  br label %55

55:                                               ; preds = %1, %53, %13
  %56 = phi ptr [ %54, %53 ], [ null, %13 ], [ null, %1 ]
  tail call void @iterate_fix_dominators(i32 noundef 1, ptr noundef %56, i8 noundef zeroext 0) #18
  tail call void @free(ptr noundef %9) #19
  tail call void @free(ptr noundef %8) #19
  call fastcc void @VEC_basic_block_heap_free(ptr noundef nonnull %2) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #17
  ret void
}

; Function Attrs: optsize
declare ptr @single_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @force_gimple_operand(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @gsi_insert_seq_on_edge(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @loop_preheader_edge(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @gsi_commit_edge_inserts() local_unnamed_addr #2

; Function Attrs: optsize
declare void @create_iv(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gimple_build_cond(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_cond_lhs(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0) #19
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_cond_set_lhs(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, ptr noundef %1) #19
  ret void
}

; Function Attrs: optsize
declare ptr @split_block_after_labels(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @loopify(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i8 noundef zeroext %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #0 {
  %9 = alloca ptr, align 8
  %10 = alloca %struct.edge_iterator, align 8
  %11 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !13
  %13 = load ptr, ptr %1, align 8, !tbaa !15
  %14 = tail call ptr @alloc_loop() #18
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !16
  %17 = tail call fastcc ptr @loop_outer(ptr noundef %16) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #17
  %18 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !13
  %20 = getelementptr inbounds %struct.loop, ptr %14, i64 0, i32 2
  store ptr %19, ptr %20, align 8, !tbaa !39
  %21 = load ptr, ptr %0, align 8, !tbaa !15
  %22 = getelementptr inbounds %struct.loop, ptr %14, i64 0, i32 3
  store ptr %21, ptr %22, align 8, !tbaa !18
  %23 = load ptr, ptr %1, align 8, !tbaa !15
  %24 = getelementptr inbounds %struct.basic_block_def, ptr %23, i64 0, i32 11
  %25 = load i32, ptr %24, align 8, !tbaa !75
  %26 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 8
  %27 = load i32, ptr %26, align 4, !tbaa !76
  %28 = mul nsw i32 %27, %25
  %29 = add nsw i32 %28, 5000
  %30 = sdiv i32 %29, 10000
  %31 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 9
  %32 = load i64, ptr %31, align 8, !tbaa !77
  tail call fastcc void @loop_redirect_edge(ptr noundef nonnull %0, ptr noundef %19) #19
  tail call fastcc void @loop_redirect_edge(ptr noundef %3, ptr noundef %12) #19
  %33 = icmp eq i8 %5, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %8
  tail call fastcc void @loop_redirect_edge(ptr noundef nonnull %1, ptr noundef %2) #19
  %35 = load ptr, ptr %20, align 8, !tbaa !39
  tail call fastcc void @loop_redirect_edge(ptr noundef %4, ptr noundef %35) #19
  tail call void @set_immediate_dominator(i32 noundef 1, ptr noundef %2, ptr noundef %13) #18
  %36 = load ptr, ptr %20, align 8, !tbaa !39
  tail call void @set_immediate_dominator(i32 noundef 1, ptr noundef %36, ptr noundef %2) #18
  br label %37

37:                                               ; preds = %34, %8
  tail call void @set_immediate_dominator(i32 noundef 1, ptr noundef nonnull %12, ptr noundef %2) #18
  tail call void @add_loop(ptr noundef nonnull %14, ptr noundef %17) #19
  %38 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !16
  %40 = icmp eq ptr %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %37
  tail call void @remove_bb_from_loops(ptr noundef nonnull %2) #18
  br label %42

42:                                               ; preds = %41, %37
  tail call void @add_bb_to_loop(ptr noundef nonnull %2, ptr noundef %17) #18
  br i1 %33, label %64, label %43

43:                                               ; preds = %42
  %44 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 11
  store i32 %30, ptr %44, align 8, !tbaa !75
  %45 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 8
  store i64 %32, ptr %45, align 8, !tbaa !78
  %46 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 1
  %47 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %46) #19
  store i32 0, ptr %10, align 8, !tbaa.struct !32
  %48 = getelementptr inbounds i8, ptr %10, i64 8
  store ptr %47, ptr %48, align 8, !tbaa.struct !34
  %49 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %47, ptr noundef nonnull %9) #19, !range !14
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %64, label %51

51:                                               ; preds = %43, %51
  %52 = load i64, ptr %45, align 8, !tbaa !78
  %53 = load ptr, ptr %9, align 8, !tbaa !24
  %54 = getelementptr inbounds %struct.edge_def, ptr %53, i64 0, i32 8
  %55 = load i32, ptr %54, align 4, !tbaa !76
  %56 = sext i32 %55 to i64
  %57 = mul nsw i64 %52, %56
  %58 = sdiv i64 %57, 10000
  %59 = getelementptr inbounds %struct.edge_def, ptr %53, i64 0, i32 9
  store i64 %58, ptr %59, align 8, !tbaa !77
  call fastcc void @ei_next(ptr noundef nonnull %10) #19
  %60 = load i32, ptr %10, align 8
  %61 = load ptr, ptr %48, align 8
  %62 = call fastcc zeroext i8 @ei_cond(i32 %60, ptr %61, ptr noundef nonnull %9) #19, !range !14
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %64, label %51, !llvm.loop !79

64:                                               ; preds = %51, %43, %42
  tail call void @scale_loop_frequencies(ptr noundef %14, i32 noundef %7, i32 noundef 10000) #19
  %65 = load ptr, ptr %15, align 8, !tbaa !16
  tail call void @scale_loop_frequencies(ptr noundef %65, i32 noundef %6, i32 noundef 10000) #19
  tail call fastcc void @update_dominators_in_loop(ptr noundef %14) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #17
  ret ptr %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @loop_redirect_edge(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !13
  %5 = icmp eq ptr %4, %1
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @redirect_edge_and_branch_force(ptr noundef nonnull %0, ptr noundef %1) #18
  br label %8

8:                                                ; preds = %2, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @duplicate_loop(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @alloc_loop() #18
  tail call fastcc void @place_new_loop(ptr noundef %3) #19
  tail call void @set_loop_copy(ptr noundef %0, ptr noundef %3) #18
  tail call void @flow_loop_tree_node_add(ptr noundef %1, ptr noundef %3) #18
  ret ptr %3
}

; Function Attrs: optsize
declare void @set_loop_copy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @duplicate_subloops(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 8
  %4 = load ptr, ptr %3, align 8, !tbaa !24
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %2, %6
  %7 = phi ptr [ %10, %6 ], [ %4, %2 ]
  %8 = tail call ptr @duplicate_loop(ptr noundef nonnull %7, ptr noundef %1) #19
  tail call void @duplicate_subloops(ptr noundef nonnull %7, ptr noundef %8) #19
  %9 = getelementptr inbounds %struct.loop, ptr %7, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !24
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %6, !llvm.loop !80

12:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @can_duplicate_loop_p(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @get_loop_body(ptr noundef %0) #18
  %3 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %4 = load i32, ptr %3, align 4, !tbaa !45
  %5 = tail call zeroext i8 @can_copy_bbs_p(ptr noundef %2, i32 noundef %4) #18
  tail call void @free(ptr noundef %2) #19
  ret i8 %5
}

; Function Attrs: optsize
declare zeroext i8 @can_copy_bbs_p(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @duplicate_loop_to_header_edge(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, ptr noundef %4, ptr noundef %5, i32 noundef %6) local_unnamed_addr #0 {
  %8 = alloca ptr, align 8
  %9 = alloca [2 x ptr], align 16
  %10 = alloca [2 x ptr], align 16
  %11 = alloca i32, align 4
  %12 = alloca %struct.bitmap_iterator, align 8
  %13 = alloca %struct.edge_iterator, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !39
  %18 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #17
  %20 = load ptr, ptr %1, align 8, !tbaa !15
  %21 = icmp eq ptr %19, %20
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %12) #17
  %22 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !13
  %24 = icmp eq ptr %23, %17
  br i1 %24, label %26, label %25

25:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 998, ptr noundef nonnull @.str.1) #18
  br label %26

26:                                               ; preds = %7, %25
  %27 = icmp eq i32 %2, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %26
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 999, ptr noundef nonnull @.str.1) #18
  br label %29

29:                                               ; preds = %26, %28
  %30 = icmp eq ptr %4, null
  br i1 %30, label %42, label %31

31:                                               ; preds = %29
  %32 = load ptr, ptr %4, align 8, !tbaa !15
  %33 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef nonnull %0, ptr noundef %32) #18
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1004, ptr noundef nonnull @.str.1) #18
  br label %36

36:                                               ; preds = %31, %35
  %37 = getelementptr inbounds %struct.edge_def, ptr %4, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !13
  %39 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef nonnull %0, ptr noundef %38) #18
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %36
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1005, ptr noundef nonnull @.str.1) #18
  br label %42

42:                                               ; preds = %41, %36, %29
  %43 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %44 = load i32, ptr %43, align 4, !tbaa !45
  %45 = tail call ptr @get_loop_body_in_dom_order(ptr noundef nonnull %0) #18
  %46 = load ptr, ptr %45, align 8, !tbaa !24
  %47 = load ptr, ptr %16, align 8, !tbaa !39
  %48 = icmp eq ptr %46, %47
  br i1 %48, label %50, label %49

49:                                               ; preds = %42
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1010, ptr noundef nonnull @.str.1) #18
  br label %50

50:                                               ; preds = %42, %49
  %51 = add i32 %44, -1
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds ptr, ptr %45, i64 %52
  %54 = load ptr, ptr %53, align 8, !tbaa !24
  %55 = load ptr, ptr %18, align 8, !tbaa !18
  %56 = icmp eq ptr %54, %55
  br i1 %56, label %58, label %57

57:                                               ; preds = %50
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1011, ptr noundef nonnull @.str.1) #18
  br label %58

58:                                               ; preds = %50, %57
  %59 = load i32, ptr %43, align 4, !tbaa !45
  %60 = tail call zeroext i8 @can_copy_bbs_p(ptr noundef nonnull %45, i32 noundef %59) #18
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  tail call void @free(ptr noundef nonnull %45) #19
  br label %544

63:                                               ; preds = %58
  %64 = load i32, ptr %43, align 4, !tbaa !45
  %65 = zext i32 %64 to i64
  %66 = shl nuw nsw i64 %65, 3
  %67 = tail call ptr @xmalloc(i64 noundef %66) #18
  %68 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 7
  %69 = load i32, ptr %68, align 8, !tbaa !8
  %70 = and i32 %69, 128
  %71 = icmp ne i32 %70, 0
  %72 = select i1 %21, i1 %71, i1 false
  br i1 %72, label %73, label %74

73:                                               ; preds = %63
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1024, ptr noundef nonnull @.str.1) #18
  br label %74

74:                                               ; preds = %63, %73
  %75 = tail call ptr @loop_latch_edge(ptr noundef nonnull %0) #18
  %76 = and i32 %6, 1
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %262, label %78

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 11
  %80 = load i32, ptr %79, align 8, !tbaa !75
  %81 = load ptr, ptr %75, align 8, !tbaa !15
  %82 = getelementptr inbounds %struct.basic_block_def, ptr %81, i64 0, i32 11
  %83 = load i32, ptr %82, align 8, !tbaa !75
  %84 = getelementptr inbounds %struct.edge_def, ptr %75, i64 0, i32 8
  %85 = load i32, ptr %84, align 4, !tbaa !76
  %86 = mul nsw i32 %85, %83
  %87 = add nsw i32 %86, 5000
  %88 = sdiv i32 %87, 10000
  %89 = tail call i32 @llvm.umax.i32(i32 %80, i32 1)
  %90 = tail call i32 @llvm.smax.i32(i32 %89, i32 %88)
  br i1 %30, label %101, label %91

91:                                               ; preds = %78
  %92 = load ptr, ptr %4, align 8, !tbaa !15
  %93 = getelementptr inbounds %struct.basic_block_def, ptr %92, i64 0, i32 11
  %94 = load i32, ptr %93, align 8, !tbaa !75
  %95 = getelementptr inbounds %struct.edge_def, ptr %4, i64 0, i32 8
  %96 = load i32, ptr %95, align 4, !tbaa !76
  %97 = mul nsw i32 %96, %94
  %98 = add nsw i32 %97, 5000
  %99 = sdiv i32 %98, 10000
  %100 = sub nsw i32 %90, %88
  br label %103

101:                                              ; preds = %78
  %102 = sub nsw i32 %90, %88
  br label %103

103:                                              ; preds = %101, %91
  %104 = phi i32 [ %102, %101 ], [ %100, %91 ]
  %105 = phi i32 [ %102, %101 ], [ %99, %91 ]
  %106 = tail call i32 @llvm.smin.i32(i32 %105, i32 %104)
  %107 = mul nsw i32 %88, 10000
  %108 = sdiv i32 %90, 2
  %109 = add nsw i32 %108, %107
  %110 = sdiv i32 %109, %90
  %111 = add nsw i32 %106, %88
  %112 = mul nsw i32 %111, 10000
  %113 = add nsw i32 %112, %108
  %114 = sdiv i32 %113, %90
  br i1 %30, label %143, label %115

115:                                              ; preds = %103
  %116 = getelementptr inbounds %struct.edge_def, ptr %4, i64 0, i32 8
  %117 = load i32, ptr %116, align 4, !tbaa !76
  %118 = icmp eq i32 %117, 10000
  br i1 %118, label %143, label %119

119:                                              ; preds = %115
  %120 = sub nsw i32 10000, %117
  %121 = sdiv i32 %120, 2
  %122 = add nsw i32 %121, 100000000
  %123 = sdiv i32 %122, %120
  %124 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #18
  %125 = icmp eq i32 %44, 0
  br i1 %125, label %143, label %126

126:                                              ; preds = %119
  %127 = zext i32 %44 to i64
  br label %128

128:                                              ; preds = %126, %140
  %129 = phi i64 [ 0, %126 ], [ %141, %140 ]
  %130 = getelementptr inbounds ptr, ptr %45, i64 %129
  %131 = load ptr, ptr %130, align 8, !tbaa !24
  %132 = load ptr, ptr %4, align 8, !tbaa !15
  %133 = icmp eq ptr %131, %132
  br i1 %133, label %140, label %134

134:                                              ; preds = %128
  %135 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %131, ptr noundef %132) #18
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %140, label %137

137:                                              ; preds = %134
  %138 = trunc i64 %129 to i32
  %139 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %124, i32 noundef %138) #18
  br label %140

140:                                              ; preds = %128, %134, %137
  %141 = add nuw nsw i64 %129, 1
  %142 = icmp eq i64 %141, %127
  br i1 %142, label %143, label %128, !llvm.loop !81

143:                                              ; preds = %140, %119, %115, %103
  %144 = phi i32 [ 0, %115 ], [ 0, %103 ], [ %123, %119 ], [ %123, %140 ]
  %145 = phi ptr [ null, %115 ], [ null, %103 ], [ %124, %119 ], [ %124, %140 ]
  %146 = zext i32 %2 to i64
  %147 = shl nuw nsw i64 %146, 2
  %148 = tail call ptr @xmalloc(i64 noundef %147) #18
  br i1 %27, label %168, label %149

149:                                              ; preds = %143
  %150 = add i32 %2, 1
  %151 = tail call i32 @llvm.umax.i32(i32 %150, i32 2)
  %152 = zext i32 %151 to i64
  %153 = getelementptr i32, ptr %148, i64 -1
  br label %154

154:                                              ; preds = %149, %154
  %155 = phi i64 [ 1, %149 ], [ %166, %154 ]
  %156 = lshr i64 %155, 6
  %157 = and i64 %156, 67108863
  %158 = getelementptr inbounds %struct.simple_bitmap_def, ptr %3, i64 0, i32 3, i64 %157
  %159 = load i64, ptr %158, align 8, !tbaa !36
  %160 = and i64 %155, 63
  %161 = shl nuw i64 1, %160
  %162 = and i64 %159, %161
  %163 = icmp eq i64 %162, 0
  %164 = select i1 %163, i32 %110, i32 %114
  %165 = getelementptr i32, ptr %153, i64 %155
  store i32 %164, ptr %165, align 4, !tbaa !33
  %166 = add nuw nsw i64 %155, 1
  %167 = icmp eq i64 %166, %152
  br i1 %167, label %168, label %154, !llvm.loop !82

168:                                              ; preds = %154, %143
  %169 = and i32 %6, 4
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %202, label %171

171:                                              ; preds = %168
  %172 = load ptr, ptr %1, align 8, !tbaa !15
  %173 = getelementptr inbounds %struct.basic_block_def, ptr %172, i64 0, i32 11
  %174 = load i32, ptr %173, align 8, !tbaa !75
  %175 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 8
  %176 = load i32, ptr %175, align 4, !tbaa !76
  %177 = mul nsw i32 %176, %174
  %178 = add nsw i32 %177, 5000
  %179 = sdiv i32 %178, 10000
  %180 = tail call i32 @llvm.smin.i32(i32 %179, i32 %90)
  br i1 %21, label %181, label %182

181:                                              ; preds = %171
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1078, ptr noundef nonnull @.str.1) #18
  br label %182

182:                                              ; preds = %171, %181
  %183 = mul nsw i32 %180, 10000
  %184 = add nsw i32 %183, %108
  %185 = sdiv i32 %184, %90
  br i1 %27, label %200, label %186

186:                                              ; preds = %182, %186
  %187 = phi i64 [ %194, %186 ], [ 0, %182 ]
  %188 = phi i32 [ %193, %186 ], [ %180, %182 ]
  %189 = getelementptr inbounds i32, ptr %148, i64 %187
  %190 = load i32, ptr %189, align 4, !tbaa !33
  %191 = mul nsw i32 %190, %188
  %192 = add nsw i32 %191, 5000
  %193 = sdiv i32 %192, 10000
  %194 = add nuw nsw i64 %187, 1
  %195 = icmp eq i64 %194, %146
  br i1 %195, label %196, label %186, !llvm.loop !83

196:                                              ; preds = %186
  %197 = mul nsw i32 %193, 10000
  %198 = add nsw i32 %197, %108
  %199 = sdiv i32 %198, %90
  br label %200

200:                                              ; preds = %196, %182
  %201 = phi i32 [ %199, %196 ], [ %185, %182 ]
  store i32 %2, ptr %11, align 4, !tbaa !33
  br label %243

202:                                              ; preds = %168
  br i1 %21, label %204, label %203

203:                                              ; preds = %202
  br i1 %27, label %240, label %230

204:                                              ; preds = %202
  %205 = getelementptr inbounds %struct.simple_bitmap_def, ptr %3, i64 0, i32 3
  %206 = load i64, ptr %205, align 8, !tbaa !36
  %207 = and i64 %206, 1
  %208 = icmp eq i64 %207, 0
  %209 = select i1 %208, i32 %110, i32 %114
  br i1 %27, label %222, label %210

210:                                              ; preds = %204, %210
  %211 = phi i64 [ %220, %210 ], [ 0, %204 ]
  %212 = phi i32 [ %219, %210 ], [ %209, %204 ]
  %213 = phi i32 [ %214, %210 ], [ 10000, %204 ]
  %214 = add nsw i32 %212, %213
  %215 = getelementptr inbounds i32, ptr %148, i64 %211
  %216 = load i32, ptr %215, align 4, !tbaa !33
  %217 = mul nsw i32 %216, %212
  %218 = add nsw i32 %217, 5000
  %219 = sdiv i32 %218, 10000
  %220 = add nuw nsw i64 %211, 1
  %221 = icmp eq i64 %220, %146
  br i1 %221, label %222, label %210, !llvm.loop !84

222:                                              ; preds = %210, %204
  %223 = phi i32 [ 10000, %204 ], [ %214, %210 ]
  store i32 %2, ptr %11, align 4, !tbaa !33
  %224 = sdiv i32 %223, 2
  %225 = add nsw i32 %224, 100000000
  %226 = sdiv i32 %225, %223
  %227 = mul nsw i32 %226, %209
  %228 = add nsw i32 %227, 5000
  %229 = sdiv i32 %228, 10000
  br label %243

230:                                              ; preds = %203, %230
  %231 = phi i64 [ %238, %230 ], [ 0, %203 ]
  %232 = phi i32 [ %237, %230 ], [ 10000, %203 ]
  %233 = getelementptr inbounds i32, ptr %148, i64 %231
  %234 = load i32, ptr %233, align 4, !tbaa !33
  %235 = mul nsw i32 %234, %232
  %236 = add nsw i32 %235, 5000
  %237 = sdiv i32 %236, 10000
  %238 = add nuw nsw i64 %231, 1
  %239 = icmp eq i64 %238, %146
  br i1 %239, label %240, label %230, !llvm.loop !85

240:                                              ; preds = %230, %203
  %241 = phi i32 [ 10000, %203 ], [ %237, %230 ]
  store i32 %2, ptr %11, align 4, !tbaa !33
  %242 = sub nsw i32 10000, %110
  br label %243

243:                                              ; preds = %222, %240, %200
  %244 = phi i32 [ %201, %200 ], [ %226, %222 ], [ %241, %240 ]
  %245 = phi i32 [ %185, %200 ], [ %229, %222 ], [ %242, %240 ]
  br i1 %27, label %255, label %246

246:                                              ; preds = %243, %252
  %247 = phi i64 [ %253, %252 ], [ 0, %243 ]
  %248 = getelementptr inbounds i32, ptr %148, i64 %247
  %249 = load i32, ptr %248, align 4, !tbaa !33
  %250 = icmp ult i32 %249, 10001
  br i1 %250, label %252, label %251

251:                                              ; preds = %246
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1113, ptr noundef nonnull @.str.1) #18
  br label %252

252:                                              ; preds = %246, %251
  %253 = add nuw nsw i64 %247, 1
  %254 = icmp eq i64 %253, %146
  br i1 %254, label %255, label %246, !llvm.loop !86

255:                                              ; preds = %252, %243
  %256 = icmp ult i32 %244, 10001
  %257 = icmp sgt i32 %245, -1
  %258 = select i1 %256, i1 %257, i1 false
  %259 = icmp slt i32 %245, 10001
  %260 = select i1 %258, i1 %259, i1 false
  br i1 %260, label %262, label %261

261:                                              ; preds = %255
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1115, ptr noundef nonnull @.str.1) #18
  br label %262

262:                                              ; preds = %261, %255, %74
  %263 = phi ptr [ %148, %255 ], [ %148, %261 ], [ null, %74 ]
  %264 = phi i32 [ %244, %255 ], [ %244, %261 ], [ 0, %74 ]
  %265 = phi i32 [ %144, %255 ], [ %144, %261 ], [ 0, %74 ]
  %266 = phi i32 [ %245, %255 ], [ %245, %261 ], [ 0, %74 ]
  %267 = phi ptr [ %145, %255 ], [ %145, %261 ], [ null, %74 ]
  %268 = load ptr, ptr %1, align 8, !tbaa !15
  %269 = getelementptr inbounds %struct.basic_block_def, ptr %268, i64 0, i32 3
  %270 = load ptr, ptr %269, align 8, !tbaa !16
  %271 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 8
  %272 = load ptr, ptr %271, align 8, !tbaa !24
  %273 = icmp eq ptr %272, null
  br i1 %273, label %281, label %274

274:                                              ; preds = %262, %274
  %275 = phi ptr [ %279, %274 ], [ %272, %262 ]
  %276 = phi i32 [ %277, %274 ], [ 0, %262 ]
  %277 = add i32 %276, 1
  %278 = getelementptr inbounds %struct.loop, ptr %275, i64 0, i32 9
  %279 = load ptr, ptr %278, align 8, !tbaa !24
  %280 = icmp eq ptr %279, null
  br i1 %280, label %281, label %274, !llvm.loop !87

281:                                              ; preds = %274, %262
  %282 = phi i32 [ 0, %262 ], [ %277, %274 ]
  %283 = zext i32 %282 to i64
  %284 = tail call ptr @xcalloc(i64 noundef %283, i64 noundef 8) #18
  %285 = load ptr, ptr %271, align 8, !tbaa !24
  %286 = icmp eq ptr %285, null
  br i1 %286, label %296, label %287

287:                                              ; preds = %281, %287
  %288 = phi ptr [ %294, %287 ], [ %285, %281 ]
  %289 = phi i32 [ %293, %287 ], [ 0, %281 ]
  %290 = zext i32 %289 to i64
  %291 = getelementptr inbounds ptr, ptr %284, i64 %290
  store ptr %288, ptr %291, align 8, !tbaa !24
  %292 = getelementptr inbounds %struct.loop, ptr %288, i64 0, i32 9
  %293 = add i32 %289, 1
  %294 = load ptr, ptr %292, align 8, !tbaa !24
  %295 = icmp eq ptr %294, null
  br i1 %295, label %296, label %287, !llvm.loop !88

296:                                              ; preds = %287, %281
  %297 = phi i32 [ 0, %281 ], [ %293, %287 ]
  store i32 %297, ptr %11, align 4, !tbaa !33
  tail call void @set_loop_copy(ptr noundef %0, ptr noundef %270) #18
  %298 = zext i32 %44 to i64
  %299 = shl nuw nsw i64 %298, 3
  %300 = tail call ptr @xmalloc(i64 noundef %299) #18
  br i1 %21, label %301, label %302

301:                                              ; preds = %296
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %300, ptr nonnull align 8 %45, i64 %299, i1 false)
  br label %302

302:                                              ; preds = %301, %296
  %303 = phi ptr [ %19, %301 ], [ null, %296 ]
  %304 = getelementptr inbounds [2 x ptr], ptr %9, i64 0, i64 1
  store ptr %4, ptr %304, align 8, !tbaa !24
  store ptr %75, ptr %9, align 16, !tbaa !24
  br i1 %27, label %478, label %305

305:                                              ; preds = %302
  %306 = load ptr, ptr %1, align 8, !tbaa !15
  %307 = and i32 %6, 2
  %308 = icmp eq i32 %307, 0
  %309 = icmp eq i32 %44, 0
  %310 = getelementptr inbounds i8, ptr %13, i64 8
  %311 = getelementptr inbounds ptr, ptr %67, i64 %52
  %312 = icmp eq ptr %5, null
  %313 = getelementptr inbounds [2 x ptr], ptr %10, i64 0, i64 1
  %314 = icmp eq ptr %267, null
  %315 = zext i32 %2 to i64
  br label %316

316:                                              ; preds = %305, %474
  %317 = phi i64 [ 0, %305 ], [ %476, %474 ]
  %318 = phi ptr [ %1, %305 ], [ %435, %474 ]
  %319 = phi ptr [ %306, %305 ], [ %325, %474 ]
  %320 = phi ptr [ %19, %305 ], [ %434, %474 ]
  %321 = phi ptr [ %303, %305 ], [ %467, %474 ]
  %322 = phi ptr [ %75, %305 ], [ %433, %474 ]
  %323 = phi i32 [ %266, %305 ], [ %475, %474 ]
  call fastcc void @copy_loops_to(ptr noundef %284, i32 noundef %282, ptr noundef %270) #19
  call void @copy_bbs(ptr noundef nonnull %45, i32 noundef %44, ptr noundef %67, ptr noundef nonnull %9, i32 noundef 2, ptr noundef nonnull %10, ptr noundef %0, ptr noundef %319) #18
  %324 = load ptr, ptr %10, align 16, !tbaa !24
  %325 = load ptr, ptr %324, align 8, !tbaa !15
  br i1 %308, label %345, label %326

326:                                              ; preds = %316
  br i1 %309, label %344, label %327

327:                                              ; preds = %326
  %328 = add nuw nsw i64 %317, 1
  %329 = inttoptr i64 %328 to ptr
  br label %330

330:                                              ; preds = %327, %339
  %331 = phi i64 [ 0, %327 ], [ %342, %339 ]
  %332 = getelementptr inbounds ptr, ptr %67, i64 %331
  %333 = load ptr, ptr %332, align 8, !tbaa !24
  %334 = getelementptr inbounds %struct.basic_block_def, ptr %333, i64 0, i32 2
  %335 = load ptr, ptr %334, align 8, !tbaa !89
  %336 = icmp eq ptr %335, null
  br i1 %336, label %339, label %337

337:                                              ; preds = %330
  call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1155, ptr noundef nonnull @.str.1) #18
  %338 = load ptr, ptr %332, align 8, !tbaa !24
  br label %339

339:                                              ; preds = %330, %337
  %340 = phi ptr [ %333, %330 ], [ %338, %337 ]
  %341 = getelementptr inbounds %struct.basic_block_def, ptr %340, i64 0, i32 2
  store ptr %329, ptr %341, align 8, !tbaa !89
  %342 = add nuw nsw i64 %331, 1
  %343 = icmp eq i64 %342, %298
  br i1 %343, label %344, label %330, !llvm.loop !90

344:                                              ; preds = %339, %326
  store i32 %44, ptr %11, align 4, !tbaa !33
  br label %345

345:                                              ; preds = %344, %316
  br i1 %71, label %346, label %413

346:                                              ; preds = %345
  br i1 %309, label %412, label %348

347:                                              ; preds = %348
  store i32 %44, ptr %11, align 4, !tbaa !33
  br i1 %309, label %412, label %358

348:                                              ; preds = %346, %348
  %349 = phi i64 [ %355, %348 ], [ 0, %346 ]
  %350 = getelementptr inbounds ptr, ptr %67, i64 %349
  %351 = load ptr, ptr %350, align 8, !tbaa !24
  %352 = getelementptr inbounds %struct.basic_block_def, ptr %351, i64 0, i32 13
  %353 = load i32, ptr %352, align 8, !tbaa !91
  %354 = or i32 %353, 128
  store i32 %354, ptr %352, align 8, !tbaa !91
  %355 = add nuw nsw i64 %349, 1
  %356 = icmp eq i64 %355, %298
  br i1 %356, label %347, label %348, !llvm.loop !92

357:                                              ; preds = %400
  br i1 %309, label %412, label %403

358:                                              ; preds = %347, %400
  %359 = phi i64 [ %401, %400 ], [ 0, %347 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #17
  %360 = getelementptr inbounds ptr, ptr %67, i64 %359
  %361 = load ptr, ptr %360, align 8, !tbaa !24
  %362 = getelementptr inbounds %struct.basic_block_def, ptr %361, i64 0, i32 3
  %363 = load ptr, ptr %362, align 8, !tbaa !16
  %364 = icmp eq ptr %363, %270
  br i1 %364, label %365, label %369

365:                                              ; preds = %358
  %366 = getelementptr inbounds %struct.basic_block_def, ptr %361, i64 0, i32 13
  %367 = load i32, ptr %366, align 8, !tbaa !91
  %368 = or i32 %367, 4
  store i32 %368, ptr %366, align 8, !tbaa !91
  br label %369

369:                                              ; preds = %365, %358
  %370 = getelementptr inbounds %struct.basic_block_def, ptr %361, i64 0, i32 1
  %371 = call fastcc ptr @ei_start_1(ptr noundef nonnull %370) #19
  store i32 0, ptr %13, align 8, !tbaa.struct !32
  store ptr %371, ptr %310, align 8, !tbaa.struct !34
  %372 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %371, ptr noundef nonnull %8) #19, !range !14
  %373 = icmp eq i8 %372, 0
  br i1 %373, label %400, label %374

374:                                              ; preds = %369, %395
  %375 = load ptr, ptr %8, align 8, !tbaa !24
  %376 = getelementptr inbounds %struct.edge_def, ptr %375, i64 0, i32 1
  %377 = load ptr, ptr %376, align 8, !tbaa !13
  %378 = getelementptr inbounds %struct.basic_block_def, ptr %377, i64 0, i32 13
  %379 = load i32, ptr %378, align 8, !tbaa !91
  %380 = and i32 %379, 128
  %381 = icmp eq i32 %380, 0
  br i1 %381, label %395, label %382

382:                                              ; preds = %374
  %383 = load ptr, ptr %375, align 8, !tbaa !15
  %384 = getelementptr inbounds %struct.basic_block_def, ptr %383, i64 0, i32 3
  %385 = load ptr, ptr %384, align 8, !tbaa !16
  %386 = icmp eq ptr %385, %270
  br i1 %386, label %391, label %387

387:                                              ; preds = %382
  %388 = getelementptr inbounds %struct.basic_block_def, ptr %377, i64 0, i32 3
  %389 = load ptr, ptr %388, align 8, !tbaa !16
  %390 = icmp eq ptr %389, %270
  br i1 %390, label %391, label %395

391:                                              ; preds = %387, %382
  %392 = getelementptr inbounds %struct.edge_def, ptr %375, i64 0, i32 7
  %393 = load i32, ptr %392, align 8, !tbaa !8
  %394 = or i32 %393, 128
  store i32 %394, ptr %392, align 8, !tbaa !8
  br label %395

395:                                              ; preds = %374, %387, %391
  call fastcc void @ei_next(ptr noundef nonnull %13) #19
  %396 = load i32, ptr %13, align 8
  %397 = load ptr, ptr %310, align 8
  %398 = call fastcc zeroext i8 @ei_cond(i32 %396, ptr %397, ptr noundef nonnull %8) #19, !range !14
  %399 = icmp eq i8 %398, 0
  br i1 %399, label %400, label %374, !llvm.loop !93

400:                                              ; preds = %395, %369
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #17
  %401 = add nuw nsw i64 %359, 1
  %402 = icmp eq i64 %401, %298
  br i1 %402, label %357, label %358, !llvm.loop !94

403:                                              ; preds = %357, %403
  %404 = phi i64 [ %410, %403 ], [ 0, %357 ]
  %405 = getelementptr inbounds ptr, ptr %67, i64 %404
  %406 = load ptr, ptr %405, align 8, !tbaa !24
  %407 = getelementptr inbounds %struct.basic_block_def, ptr %406, i64 0, i32 13
  %408 = load i32, ptr %407, align 8, !tbaa !91
  %409 = and i32 %408, -129
  store i32 %409, ptr %407, align 8, !tbaa !91
  %410 = add nuw nsw i64 %404, 1
  %411 = icmp eq i64 %410, %298
  br i1 %411, label %412, label %403, !llvm.loop !95

412:                                              ; preds = %403, %347, %346, %357
  store i32 %44, ptr %11, align 4, !tbaa !33
  br label %413

413:                                              ; preds = %412, %345
  br i1 %21, label %414, label %423

414:                                              ; preds = %413
  %415 = load ptr, ptr %67, align 8, !tbaa !24
  %416 = call ptr @redirect_edge_and_branch_force(ptr noundef %322, ptr noundef %415) #18
  %417 = load ptr, ptr %10, align 16, !tbaa !24
  %418 = load ptr, ptr %16, align 8, !tbaa !39
  %419 = call ptr @redirect_edge_and_branch_force(ptr noundef %417, ptr noundef %418) #18
  %420 = load ptr, ptr %67, align 8, !tbaa !24
  call void @set_immediate_dominator(i32 noundef 1, ptr noundef %420, ptr noundef %320) #18
  %421 = load ptr, ptr %311, align 8, !tbaa !24
  store ptr %421, ptr %18, align 8, !tbaa !18
  %422 = load ptr, ptr %10, align 16, !tbaa !24
  br label %432

423:                                              ; preds = %413
  %424 = load ptr, ptr %10, align 16, !tbaa !24
  %425 = load ptr, ptr %16, align 8, !tbaa !39
  %426 = call ptr @redirect_edge_and_branch_force(ptr noundef %424, ptr noundef %425) #18
  %427 = load ptr, ptr %67, align 8, !tbaa !24
  %428 = call ptr @redirect_edge_and_branch_force(ptr noundef %318, ptr noundef %427) #18
  %429 = load ptr, ptr %67, align 8, !tbaa !24
  %430 = load ptr, ptr %318, align 8, !tbaa !15
  call void @set_immediate_dominator(i32 noundef 1, ptr noundef %429, ptr noundef %430) #18
  %431 = load ptr, ptr %10, align 16, !tbaa !24
  br label %432

432:                                              ; preds = %423, %414
  %433 = phi ptr [ %422, %414 ], [ %322, %423 ]
  %434 = phi ptr [ %421, %414 ], [ %320, %423 ]
  %435 = phi ptr [ %422, %414 ], [ %431, %423 ]
  br i1 %30, label %462, label %436

436:                                              ; preds = %432
  %437 = trunc i64 %317 to i32
  %438 = add i32 %437, 1
  %439 = lshr i32 %438, 6
  %440 = zext nneg i32 %439 to i64
  %441 = getelementptr inbounds %struct.simple_bitmap_def, ptr %3, i64 0, i32 3, i64 %440
  %442 = load i64, ptr %441, align 8, !tbaa !36
  %443 = and i32 %438, 63
  %444 = zext nneg i32 %443 to i64
  %445 = shl nuw i64 1, %444
  %446 = and i64 %442, %445
  %447 = icmp eq i64 %446, 0
  br i1 %447, label %462, label %448

448:                                              ; preds = %436
  br i1 %312, label %451, label %449

449:                                              ; preds = %448
  %450 = load ptr, ptr %313, align 8, !tbaa !24
  call fastcc void @VEC_edge_heap_safe_push(ptr noundef nonnull %5, ptr noundef %450) #19
  br label %451

451:                                              ; preds = %449, %448
  %452 = load ptr, ptr %313, align 8, !tbaa !24
  call fastcc void @set_zero_probability(ptr noundef %452) #19
  br i1 %314, label %462, label %453

453:                                              ; preds = %451
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %12, ptr noundef nonnull %267, ptr noundef nonnull %11) #19
  %454 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %12, ptr noundef nonnull %11) #19, !range !14
  %455 = icmp eq i8 %454, 0
  br i1 %455, label %462, label %456

456:                                              ; preds = %453, %456
  %457 = load i32, ptr %11, align 4, !tbaa !33
  %458 = zext i32 %457 to i64
  %459 = getelementptr inbounds ptr, ptr %67, i64 %458
  call void @scale_bbs_frequencies_int(ptr noundef %459, i32 noundef 1, i32 noundef %265, i32 noundef 10000) #18
  call fastcc void @bmp_iter_next(ptr noundef nonnull %12, ptr noundef nonnull %11) #19
  %460 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %12, ptr noundef nonnull %11) #19, !range !14
  %461 = icmp eq i8 %460, 0
  br i1 %461, label %462, label %456, !llvm.loop !96

462:                                              ; preds = %456, %453, %451, %436, %432
  %463 = icmp eq ptr %321, null
  br i1 %463, label %464, label %466

464:                                              ; preds = %462
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %300, ptr align 8 %67, i64 %299, i1 false)
  %465 = load ptr, ptr %311, align 8, !tbaa !24
  br label %466

466:                                              ; preds = %464, %462
  %467 = phi ptr [ %321, %462 ], [ %465, %464 ]
  br i1 %77, label %474, label %468

468:                                              ; preds = %466
  call void @scale_bbs_frequencies_int(ptr noundef %67, i32 noundef %44, i32 noundef %323, i32 noundef 10000) #18
  %469 = getelementptr inbounds i32, ptr %263, i64 %317
  %470 = load i32, ptr %469, align 4, !tbaa !33
  %471 = mul nsw i32 %470, %323
  %472 = add nsw i32 %471, 5000
  %473 = sdiv i32 %472, 10000
  br label %474

474:                                              ; preds = %466, %468
  %475 = phi i32 [ %473, %468 ], [ %323, %466 ]
  %476 = add nuw nsw i64 %317, 1
  %477 = icmp eq i64 %476, %315
  br i1 %477, label %478, label %316, !llvm.loop !97

478:                                              ; preds = %474, %302
  %479 = phi ptr [ %303, %302 ], [ %467, %474 ]
  %480 = phi ptr [ %1, %302 ], [ %435, %474 ]
  call void @free(ptr noundef %67) #19
  call void @free(ptr noundef %284) #19
  br i1 %30, label %500, label %481

481:                                              ; preds = %478
  %482 = getelementptr inbounds %struct.simple_bitmap_def, ptr %3, i64 0, i32 3
  %483 = load i64, ptr %482, align 8, !tbaa !36
  %484 = and i64 %483, 1
  %485 = icmp eq i64 %484, 0
  br i1 %485, label %500, label %486

486:                                              ; preds = %481
  %487 = icmp eq ptr %5, null
  br i1 %487, label %489, label %488

488:                                              ; preds = %486
  call fastcc void @VEC_edge_heap_safe_push(ptr noundef nonnull %5, ptr noundef nonnull %4) #19
  br label %489

489:                                              ; preds = %488, %486
  call fastcc void @set_zero_probability(ptr noundef nonnull %4) #19
  %490 = icmp eq ptr %267, null
  br i1 %490, label %500, label %491

491:                                              ; preds = %489
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %12, ptr noundef nonnull %267, ptr noundef nonnull %11) #19
  %492 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %12, ptr noundef nonnull %11) #19, !range !14
  %493 = icmp eq i8 %492, 0
  br i1 %493, label %500, label %494

494:                                              ; preds = %491, %494
  %495 = load i32, ptr %11, align 4, !tbaa !33
  %496 = zext i32 %495 to i64
  %497 = getelementptr inbounds ptr, ptr %45, i64 %496
  call void @scale_bbs_frequencies_int(ptr noundef nonnull %497, i32 noundef 1, i32 noundef %265, i32 noundef 10000) #18
  call fastcc void @bmp_iter_next(ptr noundef nonnull %12, ptr noundef nonnull %11) #19
  %498 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %12, ptr noundef nonnull %11) #19, !range !14
  %499 = icmp eq i8 %498, 0
  br i1 %499, label %500, label %494, !llvm.loop !98

500:                                              ; preds = %494, %491, %489, %481, %478
  br i1 %21, label %505, label %501

501:                                              ; preds = %500
  %502 = getelementptr inbounds %struct.edge_def, ptr %480, i64 0, i32 1
  %503 = load ptr, ptr %502, align 8, !tbaa !13
  %504 = load ptr, ptr %480, align 8, !tbaa !15
  call void @set_immediate_dominator(i32 noundef 1, ptr noundef %503, ptr noundef %504) #18
  br label %505

505:                                              ; preds = %501, %500
  br i1 %77, label %507, label %506

506:                                              ; preds = %505
  call void @scale_bbs_frequencies_int(ptr noundef nonnull %45, i32 noundef %44, i32 noundef %264, i32 noundef 10000) #18
  call void @free(ptr noundef %263) #19
  br label %507

507:                                              ; preds = %506, %505
  store i32 0, ptr %11, align 4, !tbaa !33
  %508 = icmp eq i32 %44, 0
  br i1 %508, label %543, label %509

509:                                              ; preds = %507, %539
  %510 = phi i32 [ %541, %539 ], [ 0, %507 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #17
  %511 = zext i32 %510 to i64
  %512 = getelementptr inbounds ptr, ptr %45, i64 %511
  %513 = load ptr, ptr %512, align 8, !tbaa !24
  %514 = getelementptr inbounds %struct.basic_block_def, ptr %513, i64 0, i32 2
  store ptr null, ptr %514, align 8, !tbaa !89
  %515 = call ptr @get_dominated_by(i32 noundef 1, ptr noundef %513) #18
  store ptr %515, ptr %15, align 8, !tbaa !24
  %516 = call fastcc i32 @VEC_basic_block_base_iterate(ptr noundef %515, i32 noundef 0, ptr noundef nonnull %14) #19, !range !99
  %517 = icmp eq i32 %516, 0
  br i1 %517, label %539, label %518

518:                                              ; preds = %509, %532
  %519 = phi ptr [ %533, %532 ], [ %515, %509 ]
  %520 = phi i32 [ %534, %532 ], [ 0, %509 ]
  %521 = load ptr, ptr %14, align 8, !tbaa !24
  %522 = call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %0, ptr noundef %521) #18
  %523 = icmp eq i8 %522, 0
  br i1 %523, label %524, label %532

524:                                              ; preds = %518
  %525 = load i32, ptr %11, align 4, !tbaa !33
  %526 = zext i32 %525 to i64
  %527 = getelementptr inbounds ptr, ptr %300, i64 %526
  %528 = load ptr, ptr %527, align 8, !tbaa !24
  %529 = call ptr @nearest_common_dominator(i32 noundef 1, ptr noundef %528, ptr noundef %479) #18
  %530 = load ptr, ptr %14, align 8, !tbaa !24
  call void @set_immediate_dominator(i32 noundef 1, ptr noundef %530, ptr noundef %529) #18
  %531 = load ptr, ptr %15, align 8
  br label %532

532:                                              ; preds = %518, %524
  %533 = phi ptr [ %519, %518 ], [ %531, %524 ]
  %534 = add i32 %520, 1
  %535 = call fastcc i32 @VEC_basic_block_base_iterate(ptr noundef %533, i32 noundef %534, ptr noundef nonnull %14) #19, !range !99
  %536 = icmp eq i32 %535, 0
  br i1 %536, label %537, label %518, !llvm.loop !100

537:                                              ; preds = %532
  %538 = load i32, ptr %11, align 4, !tbaa !33
  br label %539

539:                                              ; preds = %537, %509
  %540 = phi i32 [ %538, %537 ], [ %510, %509 ]
  call fastcc void @VEC_basic_block_heap_free(ptr noundef nonnull %15) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #17
  %541 = add i32 %540, 1
  store i32 %541, ptr %11, align 4, !tbaa !33
  %542 = icmp ult i32 %541, %44
  br i1 %542, label %509, label %543, !llvm.loop !101

543:                                              ; preds = %539, %507
  call void @free(ptr noundef %300) #19
  call void @free(ptr noundef %45) #19
  call void @bitmap_obstack_free(ptr noundef %267) #18
  br label %544

544:                                              ; preds = %543, %62
  %545 = phi i8 [ 1, %543 ], [ 0, %62 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #17
  ret i8 %545
}

; Function Attrs: optsize
declare zeroext i8 @flow_bb_inside_loop_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @get_loop_body_in_dom_order(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @loop_latch_edge(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @copy_loops_to(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = icmp sgt i32 %1, 0
  br i1 %4, label %5, label %15

5:                                                ; preds = %3
  %6 = zext nneg i32 %1 to i64
  br label %7

7:                                                ; preds = %5, %7
  %8 = phi i64 [ 0, %5 ], [ %13, %7 ]
  %9 = getelementptr inbounds ptr, ptr %0, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !24
  %11 = tail call ptr @duplicate_loop(ptr noundef %10, ptr noundef %2) #19
  %12 = load ptr, ptr %9, align 8, !tbaa !24
  tail call void @duplicate_subloops(ptr noundef %12, ptr noundef %11) #19
  %13 = add nuw nsw i64 %8, 1
  %14 = icmp eq i64 %13, %6
  br i1 %14, label %15, label %7, !llvm.loop !102

15:                                               ; preds = %7, %3
  ret void
}

; Function Attrs: optsize
declare void @copy_bbs(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @redirect_edge_and_branch_force(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_edge_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call fastcc void @VEC_edge_heap_reserve(ptr noundef %0) #19
  %3 = load ptr, ptr %0, align 8, !tbaa !24
  tail call fastcc void @VEC_edge_base_quick_push(ptr noundef %3, ptr noundef %1) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_zero_probability(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.edge_iterator, align 8
  %3 = alloca ptr, align 8
  %4 = load ptr, ptr %0, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #17
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !71
  %7 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %6) #19
  %8 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 9
  %9 = load i64, ptr %8, align 8, !tbaa !77
  %10 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 8
  %11 = load i32, ptr %10, align 4, !tbaa !76
  %12 = icmp ugt i32 %7, 1
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 938, ptr noundef nonnull @.str.1) #18
  br label %14

14:                                               ; preds = %1, %13
  %15 = add i32 %7, -1
  %16 = zext i32 %15 to i64
  %17 = sdiv i64 %9, %16
  %18 = srem i64 %9, %16
  %19 = udiv i32 %11, %15
  %20 = urem i32 %11, %15
  %21 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %5) #19
  store i32 0, ptr %2, align 8, !tbaa.struct !32
  %22 = getelementptr inbounds i8, ptr %2, i64 8
  store ptr %21, ptr %22, align 8, !tbaa.struct !34
  %23 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %21, ptr noundef nonnull %3) #19, !range !14
  %24 = icmp ne i8 %23, 0
  tail call void @llvm.assume(i1 %24)
  br label %25

25:                                               ; preds = %14, %36
  %26 = phi ptr [ %37, %36 ], [ null, %14 ]
  %27 = load ptr, ptr %3, align 8, !tbaa !24
  %28 = icmp eq ptr %27, %0
  br i1 %28, label %36, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.edge_def, ptr %27, i64 0, i32 8
  %31 = load i32, ptr %30, align 4, !tbaa !76
  %32 = add i32 %31, %19
  store i32 %32, ptr %30, align 4, !tbaa !76
  %33 = getelementptr inbounds %struct.edge_def, ptr %27, i64 0, i32 9
  %34 = load i64, ptr %33, align 8, !tbaa !77
  %35 = add nsw i64 %34, %17
  store i64 %35, ptr %33, align 8, !tbaa !77
  br label %36

36:                                               ; preds = %25, %29
  %37 = phi ptr [ %26, %25 ], [ %27, %29 ]
  call fastcc void @ei_next(ptr noundef nonnull %2) #19
  %38 = load i32, ptr %2, align 8
  %39 = load ptr, ptr %22, align 8
  %40 = call fastcc zeroext i8 @ei_cond(i32 %38, ptr %39, ptr noundef nonnull %3) #19, !range !14
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %25, !llvm.loop !103

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.edge_def, ptr %37, i64 0, i32 8
  %44 = load i32, ptr %43, align 4, !tbaa !76
  %45 = add i32 %44, %20
  store i32 %45, ptr %43, align 4, !tbaa !76
  %46 = getelementptr inbounds %struct.edge_def, ptr %37, i64 0, i32 9
  %47 = load i64, ptr %46, align 8, !tbaa !77
  %48 = add nsw i64 %47, %18
  store i64 %48, ptr %46, align 8, !tbaa !77
  store i32 0, ptr %10, align 4, !tbaa !76
  store i64 0, ptr %8, align 8, !tbaa !77
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bmp_iter_set_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #9 {
  %4 = load ptr, ptr %1, align 8, !tbaa !104
  store ptr %4, ptr %0, align 8, !tbaa !106
  %5 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !108
  %6 = icmp eq ptr %4, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !106
  br label %8

8:                                                ; preds = %3, %7
  %9 = phi ptr [ %4, %3 ], [ @bitmap_zero_bits, %7 ]
  %10 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !109
  %12 = shl i32 %11, 7
  %13 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %13, align 8, !tbaa !111
  %14 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 3
  %15 = load i64, ptr %14, align 8, !tbaa !36
  %16 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  store i64 %15, ptr %16, align 8, !tbaa !112
  %17 = icmp eq i64 %15, 0
  %18 = zext i1 %17 to i32
  %19 = or disjoint i32 %12, %18
  store i32 %19, ptr %2, align 4, !tbaa !33
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_set(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #10 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !112
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6

6:                                                ; preds = %31, %2
  %7 = phi i64 [ %4, %2 ], [ %35, %31 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %51

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4, !tbaa !33
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %14 = phi i64 [ %7, %10 ], [ %15, %12 ]
  %15 = lshr exact i64 %14, 1
  %16 = add i32 %13, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %50, !llvm.loop !113

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !33
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !33
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !111
  %25 = add i32 %24, 1
  %26 = load ptr, ptr %0, align 8, !tbaa !106
  br label %27

27:                                               ; preds = %19, %46
  %28 = phi ptr [ %26, %19 ], [ %44, %46 ]
  %29 = phi i32 [ %25, %19 ], [ 0, %46 ]
  store i32 %29, ptr %23, align 8, !tbaa !111
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %43, label %31

31:                                               ; preds = %27, %37
  %32 = phi i32 [ %41, %37 ], [ %29, %27 ]
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !36
  store i64 %35, ptr %3, align 8, !tbaa !112
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %6

37:                                               ; preds = %31
  %38 = load i32, ptr %1, align 4, !tbaa !33
  %39 = add i32 %38, 64
  store i32 %39, ptr %1, align 4, !tbaa !33
  %40 = load i32, ptr %23, align 8, !tbaa !111
  %41 = add i32 %40, 1
  store i32 %41, ptr %23, align 8, !tbaa !111
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %31, !llvm.loop !114

43:                                               ; preds = %37, %27
  %44 = load ptr, ptr %28, align 8, !tbaa !115
  store ptr %44, ptr %0, align 8, !tbaa !106
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !109
  %49 = shl i32 %48, 7
  store i32 %49, ptr %1, align 4, !tbaa !33
  br label %27

50:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !112
  store i32 %16, ptr %1, align 4, !tbaa !33
  br label %51

51:                                               ; preds = %43, %6, %50
  %52 = phi i8 [ 1, %50 ], [ 1, %6 ], [ 0, %43 ]
  ret i8 %52
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @bmp_iter_next(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #11 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !112
  %5 = lshr i64 %4, 1
  store i64 %5, ptr %3, align 8, !tbaa !112
  %6 = load i32, ptr %1, align 4, !tbaa !33
  %7 = add i32 %6, 1
  store i32 %7, ptr %1, align 4, !tbaa !33
  ret void
}

; Function Attrs: optsize
declare ptr @get_dominated_by(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_basic_block_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #11 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !116
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !24
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !24
  ret i32 %14
}

; Function Attrs: optsize
declare ptr @nearest_common_dominator(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @mfb_keep_just(ptr noundef readnone %0) #12 {
  %2 = load ptr, ptr @mfb_kj_edge, align 8, !tbaa !24
  %3 = icmp ne ptr %2, %0
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @create_preheader(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #17
  %5 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !39
  %7 = tail call fastcc ptr @ei_start_1(ptr noundef %6) #19
  store i32 0, ptr %4, align 8, !tbaa.struct !32
  %8 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %7, ptr %8, align 8, !tbaa.struct !34
  %9 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %7, ptr noundef nonnull %3) #19, !range !14
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %43, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 3
  br label %13

13:                                               ; preds = %11, %32
  %14 = phi i32 [ 0, %11 ], [ %36, %32 ]
  %15 = phi i8 [ 0, %11 ], [ %35, %32 ]
  %16 = phi ptr [ null, %11 ], [ %34, %32 ]
  %17 = phi ptr [ null, %11 ], [ %33, %32 ]
  %18 = load ptr, ptr %3, align 8
  %19 = load ptr, ptr %18, align 8, !tbaa !15
  %20 = load ptr, ptr %12, align 8, !tbaa !18
  %21 = icmp eq ptr %19, %20
  br i1 %21, label %32, label %22

22:                                               ; preds = %13
  %23 = getelementptr inbounds %struct.edge_def, ptr %18, i64 0, i32 7
  %24 = load i32, ptr %23, align 8, !tbaa !8
  %25 = trunc i32 %24 to i8
  %26 = lshr i8 %25, 7
  %27 = or i8 %26, %15
  %28 = add nsw i32 %14, 1
  %29 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %19) #19, !range !14
  %30 = icmp eq i8 %29, 0
  %31 = select i1 %30, ptr %17, ptr %18
  br label %32

32:                                               ; preds = %22, %13
  %33 = phi ptr [ %17, %13 ], [ %31, %22 ]
  %34 = phi ptr [ %16, %13 ], [ %18, %22 ]
  %35 = phi i8 [ %15, %13 ], [ %27, %22 ]
  %36 = phi i32 [ %14, %13 ], [ %28, %22 ]
  call fastcc void @ei_next(ptr noundef nonnull %4) #19
  %37 = load i32, ptr %4, align 8
  %38 = load ptr, ptr %8, align 8
  %39 = call fastcc zeroext i8 @ei_cond(i32 %37, ptr %38, ptr noundef nonnull %3) #19, !range !14
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %13, !llvm.loop !118

41:                                               ; preds = %32
  %42 = icmp eq i8 %35, 0
  switch i32 %36, label %73 [
    i32 0, label %43
    i32 1, label %46
  ]

43:                                               ; preds = %2, %41
  %44 = phi i1 [ %42, %41 ], [ true, %2 ]
  %45 = phi ptr [ %33, %41 ], [ null, %2 ]
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1346, ptr noundef nonnull @.str.1) #18
  br label %73

46:                                               ; preds = %41
  %47 = load ptr, ptr %34, align 8, !tbaa !15
  %48 = load ptr, ptr @cfun, align 8, !tbaa !24
  %49 = getelementptr inbounds %struct.function, ptr %48, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !25
  %51 = load ptr, ptr %50, align 8, !tbaa !119
  %52 = icmp eq ptr %47, %51
  br i1 %52, label %73, label %53

53:                                               ; preds = %46
  %54 = and i32 %1, 1
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %53
  %57 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %47) #19, !range !14
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %73, label %59

59:                                               ; preds = %56, %53
  %60 = and i32 %1, 2
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %128, label %62

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.basic_block_def, ptr %47, i64 0, i32 7
  %64 = load ptr, ptr %63, align 8, !tbaa !5
  %65 = getelementptr inbounds %struct.rtl_bb_info, ptr %64, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !120
  %67 = load i32, ptr %66, align 8
  %68 = and i32 %67, 65535
  %69 = icmp eq i32 %68, 9
  br i1 %69, label %73, label %70

70:                                               ; preds = %62
  %71 = tail call fastcc zeroext i8 @has_preds_from_loop(ptr noundef nonnull %47, ptr noundef nonnull %0) #19, !range !14
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %128, label %73

73:                                               ; preds = %46, %56, %70, %62, %43, %41
  %74 = phi i1 [ %42, %46 ], [ %42, %56 ], [ %42, %70 ], [ %42, %62 ], [ %44, %43 ], [ %42, %41 ]
  %75 = phi ptr [ %33, %46 ], [ %33, %56 ], [ %33, %70 ], [ %33, %62 ], [ %45, %43 ], [ %33, %41 ]
  %76 = tail call ptr @loop_latch_edge(ptr noundef nonnull %0) #18
  store ptr %76, ptr @mfb_kj_edge, align 8, !tbaa !24
  %77 = getelementptr inbounds %struct.edge_def, ptr %76, i64 0, i32 7
  %78 = load i32, ptr %77, align 8, !tbaa !8
  %79 = load ptr, ptr %5, align 8, !tbaa !39
  %80 = tail call ptr @make_forwarder_block(ptr noundef %79, ptr noundef nonnull @mfb_keep_just, ptr noundef null) #18
  %81 = load ptr, ptr %80, align 8, !tbaa !15
  %82 = getelementptr inbounds %struct.edge_def, ptr %80, i64 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !13
  store ptr %83, ptr %5, align 8, !tbaa !39
  %84 = and i32 %78, 1
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %95, label %86

86:                                               ; preds = %73
  %87 = icmp eq ptr %75, null
  br i1 %87, label %88, label %91

88:                                               ; preds = %86
  %89 = load ptr, ptr %81, align 8, !tbaa !43
  %90 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %89, i32 noundef 0) #19
  br label %91

91:                                               ; preds = %86, %88
  %92 = phi ptr [ %90, %88 ], [ %75, %86 ]
  store ptr %92, ptr %3, align 8, !tbaa !24
  %93 = load ptr, ptr %92, align 8, !tbaa !15
  %94 = tail call zeroext i8 @move_block_after(ptr noundef %81, ptr noundef %93) #18
  br label %95

95:                                               ; preds = %91, %73
  br i1 %74, label %104, label %96

96:                                               ; preds = %95
  %97 = getelementptr inbounds %struct.basic_block_def, ptr %81, i64 0, i32 13
  %98 = load i32, ptr %97, align 8, !tbaa !91
  %99 = or i32 %98, 4
  store i32 %99, ptr %97, align 8, !tbaa !91
  %100 = tail call fastcc ptr @single_succ_edge(ptr noundef %81) #19
  %101 = getelementptr inbounds %struct.edge_def, ptr %100, i64 0, i32 7
  %102 = load i32, ptr %101, align 8, !tbaa !8
  %103 = or i32 %102, 128
  store i32 %103, ptr %101, align 8, !tbaa !8
  br label %104

104:                                              ; preds = %96, %95
  %105 = load ptr, ptr @dump_file, align 8, !tbaa !24
  %106 = icmp eq ptr %105, null
  br i1 %106, label %110, label %107

107:                                              ; preds = %104
  %108 = load i32, ptr %0, align 8, !tbaa !65
  %109 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %105, ptr noundef nonnull @.str.2, i32 noundef %108) #19
  br label %110

110:                                              ; preds = %107, %104
  %111 = and i32 %1, 2
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %128, label %113

113:                                              ; preds = %110
  %114 = tail call fastcc ptr @single_succ_edge(ptr noundef %81) #19
  %115 = getelementptr inbounds %struct.edge_def, ptr %114, i64 0, i32 7
  %116 = load i32, ptr %115, align 8, !tbaa !8
  %117 = and i32 %116, 1
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %127, label %119

119:                                              ; preds = %113
  %120 = getelementptr inbounds %struct.basic_block_def, ptr %81, i64 0, i32 7
  %121 = load ptr, ptr %120, align 8, !tbaa !5
  %122 = getelementptr inbounds %struct.rtl_bb_info, ptr %121, i64 0, i32 1
  %123 = load ptr, ptr %122, align 8, !tbaa !120
  %124 = load i32, ptr %123, align 8
  %125 = and i32 %124, 65535
  %126 = icmp eq i32 %125, 9
  br i1 %126, label %127, label %128

127:                                              ; preds = %119, %113
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1409, ptr noundef nonnull @.str.1) #18
  br label %128

128:                                              ; preds = %59, %70, %110, %119, %127
  %129 = phi ptr [ %81, %127 ], [ %81, %119 ], [ %81, %110 ], [ null, %70 ], [ null, %59 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  ret ptr %129
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_succ_p(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !71
  %4 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %3) #19
  %5 = icmp eq i32 %4, 1
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @has_preds_from_loop(ptr noundef %0, ptr noundef readnone %1) unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #17
  %5 = tail call fastcc ptr @ei_start_1(ptr noundef %0) #19
  store i32 0, ptr %4, align 8, !tbaa.struct !32
  %6 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %5, ptr %6, align 8, !tbaa.struct !34
  %7 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %5, ptr noundef nonnull %3) #19, !range !14
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %20, label %9

9:                                                ; preds = %2, %15
  %10 = load ptr, ptr %3, align 8, !tbaa !24
  %11 = load ptr, ptr %10, align 8, !tbaa !15
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %11, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !16
  %14 = icmp eq ptr %13, %1
  br i1 %14, label %20, label %15

15:                                               ; preds = %9
  call fastcc void @ei_next(ptr noundef nonnull %4) #19
  %16 = load i32, ptr %4, align 8
  %17 = load ptr, ptr %6, align 8
  %18 = call fastcc zeroext i8 @ei_cond(i32 %16, ptr %17, ptr noundef nonnull %3) #19, !range !14
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %9, !llvm.loop !122

20:                                               ; preds = %9, %15, %2
  %21 = phi i8 [ 0, %2 ], [ 0, %15 ], [ 1, %9 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  ret i8 %21
}

; Function Attrs: optsize
declare ptr @make_forwarder_block(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #13 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !24
  ret ptr %5
}

; Function Attrs: optsize
declare zeroext i8 @move_block_after(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #14

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @create_preheaders(i32 noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.loop_iterator, align 8
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #17
  %4 = load ptr, ptr @cfun, align 8, !tbaa !24
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !54
  %7 = icmp eq ptr %6, null
  br i1 %7, label %17, label %8

8:                                                ; preds = %1
  call fastcc void @fel_init(ptr noundef nonnull %2, ptr noundef nonnull %3, i32 noundef 0) #19
  %9 = load ptr, ptr %3, align 8, !tbaa !24
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %8, %11
  %12 = phi ptr [ %14, %11 ], [ %9, %8 ]
  %13 = tail call ptr @create_preheader(ptr noundef nonnull %12, i32 noundef %0) #19
  call fastcc void @fel_next(ptr noundef nonnull %2, ptr noundef nonnull %3) #19
  %14 = load ptr, ptr %3, align 8, !tbaa !24
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %11, !llvm.loop !123

16:                                               ; preds = %11, %8
  tail call fastcc void @loops_state_set(i32 noundef 1) #19
  br label %17

17:                                               ; preds = %1, %16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fel_init(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.loop_iterator, ptr %0, i64 0, i32 1
  store i32 0, ptr %4, align 8, !tbaa !124
  %5 = load ptr, ptr @cfun, align 8, !tbaa !24
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !54
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  store ptr null, ptr %0, align 8, !tbaa !126
  store ptr null, ptr %1, align 8, !tbaa !24
  br label %68

10:                                               ; preds = %3
  %11 = tail call fastcc i32 @number_of_loops() #19
  %12 = tail call fastcc ptr @VEC_int_heap_alloc(i32 noundef %11) #19
  store ptr %12, ptr %0, align 8, !tbaa !126
  %13 = and i32 %2, 1
  %14 = xor i32 %13, 1
  %15 = and i32 %2, 2
  %16 = icmp eq i32 %15, 0
  %17 = load ptr, ptr @cfun, align 8, !tbaa !24
  %18 = getelementptr inbounds %struct.function, ptr %17, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !54
  %20 = getelementptr inbounds %struct.loops, ptr %19, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !55
  br i1 %16, label %47, label %22

22:                                               ; preds = %10, %22
  %23 = phi ptr [ %25, %22 ], [ %21, %10 ]
  %24 = getelementptr inbounds %struct.loop, ptr %23, i64 0, i32 8
  %25 = load ptr, ptr %24, align 8, !tbaa !47
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %22, !llvm.loop !127

27:                                               ; preds = %22, %45
  %28 = phi ptr [ %46, %45 ], [ %23, %22 ]
  %29 = load i32, ptr %28, align 8, !tbaa !65
  %30 = icmp slt i32 %29, %14
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr %0, align 8, !tbaa !126
  tail call fastcc void @VEC_int_base_quick_push(ptr noundef %32, i32 noundef %29) #19
  br label %33

33:                                               ; preds = %31, %27
  %34 = getelementptr inbounds %struct.loop, ptr %28, i64 0, i32 9
  %35 = load ptr, ptr %34, align 8, !tbaa !128
  %36 = icmp eq ptr %35, null
  br i1 %36, label %42, label %37

37:                                               ; preds = %33, %37
  %38 = phi ptr [ %40, %37 ], [ %35, %33 ]
  %39 = getelementptr inbounds %struct.loop, ptr %38, i64 0, i32 8
  %40 = load ptr, ptr %39, align 8, !tbaa !47
  %41 = icmp eq ptr %40, null
  br i1 %41, label %45, label %37, !llvm.loop !129

42:                                               ; preds = %33
  %43 = tail call fastcc ptr @loop_outer(ptr noundef nonnull %28) #19
  %44 = icmp eq ptr %43, null
  br i1 %44, label %67, label %45

45:                                               ; preds = %37, %42
  %46 = phi ptr [ %43, %42 ], [ %38, %37 ]
  br label %27

47:                                               ; preds = %10, %57
  %48 = phi ptr [ %58, %57 ], [ %21, %10 ]
  %49 = load i32, ptr %48, align 8, !tbaa !65
  %50 = icmp slt i32 %49, %14
  br i1 %50, label %53, label %51

51:                                               ; preds = %47
  %52 = load ptr, ptr %0, align 8, !tbaa !126
  tail call fastcc void @VEC_int_base_quick_push(ptr noundef %52, i32 noundef %49) #19
  br label %53

53:                                               ; preds = %51, %47
  %54 = getelementptr inbounds %struct.loop, ptr %48, i64 0, i32 8
  %55 = load ptr, ptr %54, align 8, !tbaa !47
  %56 = icmp eq ptr %55, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %59, %53
  %58 = phi ptr [ %55, %53 ], [ %62, %59 ]
  br label %47

59:                                               ; preds = %53, %64
  %60 = phi ptr [ %65, %64 ], [ %48, %53 ]
  %61 = getelementptr inbounds %struct.loop, ptr %60, i64 0, i32 9
  %62 = load ptr, ptr %61, align 8, !tbaa !128
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %57

64:                                               ; preds = %59
  %65 = tail call fastcc ptr @loop_outer(ptr noundef nonnull %60) #19
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %59, !llvm.loop !130

67:                                               ; preds = %42, %64
  tail call fastcc void @fel_next(ptr noundef nonnull %0, ptr noundef %1) #19
  br label %68

68:                                               ; preds = %67, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fel_next(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #17
  %4 = getelementptr inbounds %struct.loop_iterator, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !124
  br label %6

6:                                                ; preds = %11, %2
  %7 = phi i32 [ %12, %11 ], [ %5, %2 ]
  %8 = load ptr, ptr %0, align 8, !tbaa !126
  %9 = call fastcc i32 @VEC_int_base_iterate(ptr noundef %8, i32 noundef %7, ptr noundef nonnull %3) #19, !range !99
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %6
  %12 = add i32 %7, 1
  store i32 %12, ptr %4, align 8, !tbaa !124
  %13 = load i32, ptr %3, align 4, !tbaa !33
  %14 = tail call fastcc ptr @get_loop(i32 noundef %13) #19
  store ptr %14, ptr %1, align 8, !tbaa !24
  %15 = icmp eq ptr %14, null
  br i1 %15, label %6, label %17, !llvm.loop !131

16:                                               ; preds = %6
  tail call fastcc void @VEC_int_heap_free(ptr noundef nonnull %0) #19
  store ptr null, ptr %1, align 8, !tbaa !24
  br label %17

17:                                               ; preds = %11, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @loops_state_set(i32 noundef %0) unnamed_addr #4 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !24
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !54
  %5 = load i32, ptr %4, align 8, !tbaa !61
  %6 = or i32 %5, %0
  store i32 %6, ptr %4, align 8, !tbaa !61
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @force_single_succ_latches() local_unnamed_addr #0 {
  %1 = alloca %struct.loop_iterator, align 8
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #17
  call fastcc void @fel_init(ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef 0) #19
  %3 = load ptr, ptr %2, align 8, !tbaa !24
  %4 = icmp eq ptr %3, null
  br i1 %4, label %21, label %5

5:                                                ; preds = %0, %18
  %6 = phi ptr [ %19, %18 ], [ %3, %0 ]
  %7 = getelementptr inbounds %struct.loop, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !18
  %9 = getelementptr inbounds %struct.loop, ptr %6, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !39
  %11 = icmp eq ptr %8, %10
  br i1 %11, label %15, label %12

12:                                               ; preds = %5
  %13 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %8) #19, !range !14
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %12, %5
  %16 = tail call ptr @find_edge(ptr noundef %8, ptr noundef %10) #18
  %17 = tail call ptr @split_edge(ptr noundef %16) #18
  br label %18

18:                                               ; preds = %12, %15
  call fastcc void @fel_next(ptr noundef nonnull %1, ptr noundef nonnull %2) #19
  %19 = load ptr, ptr %2, align 8, !tbaa !24
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %5, !llvm.loop !132

21:                                               ; preds = %18, %0
  tail call fastcc void @loops_state_set(i32 noundef 2) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #17
  ret void
}

; Function Attrs: optsize
declare ptr @find_edge(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @loop_version(ptr noundef %0, ptr noundef %1, ptr noundef writeonly %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i8 noundef zeroext %6) local_unnamed_addr #0 {
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #17
  %10 = tail call ptr @loop_preheader_edge(ptr noundef %0) #18
  %11 = getelementptr inbounds %struct.edge_def, ptr %10, i64 0, i32 7
  %12 = load i32, ptr %11, align 8, !tbaa !8
  %13 = and i32 %12, 128
  %14 = and i32 %12, -129
  store i32 %14, ptr %11, align 8, !tbaa !8
  %15 = getelementptr inbounds %struct.edge_def, ptr %10, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !13
  %17 = tail call zeroext i8 @cfg_hook_duplicate_loop_to_header_edge(ptr noundef %0, ptr noundef %10, i32 noundef 1, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0) #18
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %83, label %19

19:                                               ; preds = %7
  %20 = load ptr, ptr %15, align 8, !tbaa !13
  %21 = tail call fastcc ptr @lv_adjust_loop_entry_edge(ptr noundef %16, ptr noundef %20, ptr noundef nonnull %10, ptr noundef %1, i32 noundef %3) #19
  %22 = icmp eq ptr %2, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  store ptr %21, ptr %2, align 8, !tbaa !24
  br label %24

24:                                               ; preds = %23, %19
  %25 = icmp eq ptr %21, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %24
  %27 = load i32, ptr %11, align 8, !tbaa !8
  %28 = or i32 %27, %13
  store i32 %28, ptr %11, align 8, !tbaa !8
  br label %83

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !18
  %32 = tail call ptr @get_bb_copy(ptr noundef %31) #18
  %33 = tail call fastcc ptr @single_succ_edge(ptr noundef %32) #19
  call void @extract_cond_bb_edges(ptr noundef nonnull %21, ptr noundef nonnull %8, ptr noundef nonnull %9) #18
  %34 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !39
  %36 = call ptr @get_bb_copy(ptr noundef %35) #18
  %37 = call fastcc ptr @single_pred_edge(ptr noundef %36) #19
  %38 = load ptr, ptr %8, align 8, !tbaa !24
  %39 = load ptr, ptr %9, align 8, !tbaa !24
  %40 = call ptr @loopify(ptr noundef %33, ptr noundef %37, ptr noundef nonnull %21, ptr noundef %38, ptr noundef %39, i8 noundef zeroext 0, i32 noundef %4, i32 noundef %5) #19
  call void @lv_flush_pending_stmts(ptr noundef %33) #18
  call void @extract_cond_bb_edges(ptr noundef nonnull %21, ptr noundef nonnull %8, ptr noundef nonnull %9) #18
  %41 = load ptr, ptr %9, align 8, !tbaa !24
  call void @lv_flush_pending_stmts(ptr noundef %41) #18
  %42 = icmp eq i32 %13, 0
  br i1 %42, label %59, label %43

43:                                               ; preds = %29
  %44 = getelementptr inbounds %struct.basic_block_def, ptr %21, i64 0, i32 13
  %45 = load i32, ptr %44, align 8, !tbaa !91
  %46 = or i32 %45, 4
  store i32 %46, ptr %44, align 8, !tbaa !91
  %47 = call ptr @loop_preheader_edge(ptr noundef nonnull %0) #18
  %48 = getelementptr inbounds %struct.edge_def, ptr %47, i64 0, i32 7
  %49 = load i32, ptr %48, align 8, !tbaa !8
  %50 = or i32 %49, 128
  store i32 %50, ptr %48, align 8, !tbaa !8
  %51 = call ptr @loop_preheader_edge(ptr noundef %40) #18
  %52 = getelementptr inbounds %struct.edge_def, ptr %51, i64 0, i32 7
  %53 = load i32, ptr %52, align 8, !tbaa !8
  %54 = or i32 %53, 128
  store i32 %54, ptr %52, align 8, !tbaa !8
  %55 = call fastcc ptr @single_pred_edge(ptr noundef nonnull %21) #19
  %56 = getelementptr inbounds %struct.edge_def, ptr %55, i64 0, i32 7
  %57 = load i32, ptr %56, align 8, !tbaa !8
  %58 = or i32 %57, 128
  store i32 %58, ptr %56, align 8, !tbaa !8
  br label %59

59:                                               ; preds = %43, %29
  %60 = icmp eq i8 %6, 0
  br i1 %60, label %78, label %61

61:                                               ; preds = %59
  %62 = call ptr @get_loop_body_in_dom_order(ptr noundef %40) #18
  %63 = getelementptr inbounds %struct.loop, ptr %40, i64 0, i32 6
  %64 = load i32, ptr %63, align 4, !tbaa !45
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %77, label %66

66:                                               ; preds = %61, %66
  %67 = phi i64 [ %73, %66 ], [ 0, %61 ]
  %68 = phi ptr [ %70, %66 ], [ %30, %61 ]
  %69 = load ptr, ptr %68, align 8, !tbaa !24
  %70 = getelementptr inbounds ptr, ptr %62, i64 %67
  %71 = load ptr, ptr %70, align 8, !tbaa !24
  %72 = call zeroext i8 @move_block_after(ptr noundef %71, ptr noundef %69) #18
  %73 = add nuw nsw i64 %67, 1
  %74 = load i32, ptr %63, align 4, !tbaa !45
  %75 = zext i32 %74 to i64
  %76 = icmp ult i64 %73, %75
  br i1 %76, label %66, label %77, !llvm.loop !133

77:                                               ; preds = %66, %61
  call void @free(ptr noundef %62) #19
  br label %78

78:                                               ; preds = %77, %59
  %79 = call ptr @loop_preheader_edge(ptr noundef %0) #18
  %80 = call ptr @split_edge(ptr noundef %79) #18
  %81 = call ptr @loop_preheader_edge(ptr noundef %40) #18
  %82 = call ptr @split_edge(ptr noundef %81) #18
  br label %83

83:                                               ; preds = %7, %78, %26
  %84 = phi ptr [ %40, %78 ], [ null, %26 ], [ null, %7 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #17
  ret ptr %84
}

; Function Attrs: optsize
declare zeroext i8 @cfg_hook_duplicate_loop_to_header_edge(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @lv_adjust_loop_entry_edge(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.edge_def, ptr %2, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !13
  %8 = icmp eq ptr %7, %1
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 1474, ptr noundef nonnull @.str.1) #18
  br label %10

10:                                               ; preds = %5, %9
  %11 = tail call ptr @split_edge(ptr noundef nonnull %2) #18
  tail call void @lv_add_condition_to_bb(ptr noundef %0, ptr noundef %1, ptr noundef %11, ptr noundef %3) #18
  %12 = tail call fastcc ptr @single_succ_edge(ptr noundef %11) #19
  %13 = tail call i32 @current_ir_type() #18
  %14 = icmp eq i32 %13, 0
  %15 = select i1 %14, i32 1024, i32 0
  %16 = tail call ptr @make_edge(ptr noundef %11, ptr noundef %0, i32 noundef %15) #18
  %17 = getelementptr inbounds %struct.edge_def, ptr %16, i64 0, i32 8
  store i32 %4, ptr %17, align 4, !tbaa !76
  %18 = sub i32 10000, %4
  %19 = getelementptr inbounds %struct.edge_def, ptr %12, i64 0, i32 8
  store i32 %18, ptr %19, align 4, !tbaa !76
  %20 = getelementptr inbounds %struct.edge_def, ptr %12, i64 0, i32 9
  %21 = load i64, ptr %20, align 8, !tbaa !77
  %22 = load i32, ptr %17, align 4, !tbaa !76
  %23 = sext i32 %22 to i64
  %24 = mul nsw i64 %21, %23
  %25 = add nsw i64 %24, 5000
  %26 = sdiv i64 %25, 10000
  %27 = getelementptr inbounds %struct.edge_def, ptr %16, i64 0, i32 9
  store i64 %26, ptr %27, align 8, !tbaa !77
  %28 = load i64, ptr %20, align 8, !tbaa !77
  %29 = sext i32 %18 to i64
  %30 = mul nsw i64 %28, %29
  %31 = add nsw i64 %30, 5000
  %32 = sdiv i64 %31, 10000
  store i64 %32, ptr %20, align 8, !tbaa !77
  tail call void @set_immediate_dominator(i32 noundef 1, ptr noundef %0, ptr noundef %11) #18
  tail call void @set_immediate_dominator(i32 noundef 1, ptr noundef %1, ptr noundef %11) #18
  tail call void @lv_adjust_loop_header_phi(ptr noundef %0, ptr noundef %1, ptr noundef %11, ptr noundef %16) #18
  ret ptr %11
}

; Function Attrs: optsize
declare ptr @get_bb_copy(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @extract_cond_bb_edges(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @lv_flush_pending_stmts(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @fix_loop_structure(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.loop_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #17
  %4 = tail call fastcc i32 @number_of_loops() #19
  %5 = zext i32 %4 to i64
  %6 = shl nuw nsw i64 %5, 3
  %7 = tail call ptr @xmalloc(i64 noundef %6) #18
  %8 = load ptr, ptr @cfun, align 8, !tbaa !24
  %9 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !25
  %11 = load ptr, ptr %10, align 8, !tbaa !119
  %12 = getelementptr inbounds %struct.control_flow_graph, ptr %10, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !35
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %11, i64 0, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !134
  %16 = icmp eq ptr %15, %13
  br i1 %16, label %37, label %17

17:                                               ; preds = %1
  %18 = icmp eq ptr %0, null
  %19 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !54
  %21 = getelementptr inbounds %struct.loops, ptr %20, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !55
  br label %23

23:                                               ; preds = %17, %32
  %24 = phi ptr [ %15, %17 ], [ %35, %32 ]
  br i1 %18, label %32, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !16
  %28 = tail call fastcc i32 @loop_depth(ptr noundef %27) #19
  %29 = zext i32 %28 to i64
  %30 = inttoptr i64 %29 to ptr
  %31 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 2
  store ptr %30, ptr %31, align 8, !tbaa !89
  br label %32

32:                                               ; preds = %25, %23
  %33 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 3
  store ptr %22, ptr %33, align 8, !tbaa !16
  %34 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 6
  %35 = load ptr, ptr %34, align 8, !tbaa !134
  %36 = icmp eq ptr %35, %13
  br i1 %36, label %37, label %23, !llvm.loop !135

37:                                               ; preds = %32, %1
  %38 = tail call fastcc zeroext i8 @loops_state_satisfies_p(i32 noundef 8) #19, !range !14
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %37
  tail call void @release_recorded_exits() #18
  br label %41

41:                                               ; preds = %40, %37
  call fastcc void @fel_init(ptr noundef nonnull %3, ptr noundef nonnull %2, i32 noundef 2) #19
  %42 = load ptr, ptr %2, align 8, !tbaa !24
  %43 = icmp eq ptr %42, null
  br i1 %43, label %62, label %44

44:                                               ; preds = %41, %59
  %45 = phi ptr [ %60, %59 ], [ %42, %41 ]
  %46 = getelementptr inbounds %struct.loop, ptr %45, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !39
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %59

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.loop, ptr %45, i64 0, i32 8
  %51 = load ptr, ptr %50, align 8, !tbaa !47
  %52 = icmp eq ptr %51, null
  br i1 %52, label %58, label %53

53:                                               ; preds = %49, %53
  %54 = phi ptr [ %56, %53 ], [ %51, %49 ]
  tail call void @flow_loop_tree_node_remove(ptr noundef nonnull %54) #18
  %55 = tail call fastcc ptr @loop_outer(ptr noundef nonnull %45) #19
  tail call void @flow_loop_tree_node_add(ptr noundef %55, ptr noundef nonnull %54) #18
  %56 = load ptr, ptr %50, align 8, !tbaa !47
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %53, !llvm.loop !136

58:                                               ; preds = %53, %49
  tail call void @delete_loop(ptr noundef nonnull %45) #18
  br label %59

59:                                               ; preds = %44, %58
  call fastcc void @fel_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #19
  %60 = load ptr, ptr %2, align 8, !tbaa !24
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %44, !llvm.loop !137

62:                                               ; preds = %59, %41
  %63 = load ptr, ptr @cfun, align 8, !tbaa !24
  %64 = getelementptr inbounds %struct.function, ptr %63, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !25
  %66 = getelementptr inbounds %struct.control_flow_graph, ptr %65, i64 0, i32 3
  %67 = load i32, ptr %66, align 8, !tbaa !27
  %68 = getelementptr inbounds %struct.function, ptr %63, i64 0, i32 4
  %69 = load ptr, ptr %68, align 8, !tbaa !54
  %70 = getelementptr inbounds %struct.loops, ptr %69, i64 0, i32 3
  %71 = load ptr, ptr %70, align 8, !tbaa !55
  %72 = getelementptr inbounds %struct.loop, ptr %71, i64 0, i32 6
  store i32 %67, ptr %72, align 4, !tbaa !45
  call fastcc void @fel_init(ptr noundef nonnull %3, ptr noundef nonnull %2, i32 noundef 0) #19
  %73 = load ptr, ptr %2, align 8, !tbaa !24
  %74 = icmp eq ptr %73, null
  br i1 %74, label %89, label %75

75:                                               ; preds = %62, %75
  %76 = phi ptr [ %87, %75 ], [ %73, %62 ]
  %77 = getelementptr inbounds %struct.loop, ptr %76, i64 0, i32 2
  %78 = load ptr, ptr %77, align 8, !tbaa !39
  %79 = getelementptr inbounds %struct.basic_block_def, ptr %78, i64 0, i32 3
  %80 = load ptr, ptr %79, align 8, !tbaa !16
  %81 = load i32, ptr %76, align 8, !tbaa !65
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds ptr, ptr %7, i64 %82
  store ptr %80, ptr %83, align 8, !tbaa !24
  %84 = load ptr, ptr %77, align 8, !tbaa !39
  %85 = tail call i32 @flow_loop_nodes_find(ptr noundef %84, ptr noundef nonnull %76) #18
  %86 = getelementptr inbounds %struct.loop, ptr %76, i64 0, i32 6
  store i32 %85, ptr %86, align 4, !tbaa !45
  call fastcc void @fel_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #19
  %87 = load ptr, ptr %2, align 8, !tbaa !24
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %75, !llvm.loop !138

89:                                               ; preds = %75, %62
  call fastcc void @fel_init(ptr noundef nonnull %3, ptr noundef nonnull %2, i32 noundef 0) #19
  %90 = load ptr, ptr %2, align 8, !tbaa !24
  %91 = icmp eq ptr %90, null
  br i1 %91, label %104, label %92

92:                                               ; preds = %89, %101
  %93 = phi ptr [ %102, %101 ], [ %90, %89 ]
  %94 = load i32, ptr %93, align 8, !tbaa !65
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds ptr, ptr %7, i64 %95
  %97 = load ptr, ptr %96, align 8, !tbaa !24
  %98 = tail call fastcc ptr @loop_outer(ptr noundef nonnull %93) #19
  %99 = icmp eq ptr %97, %98
  br i1 %99, label %101, label %100

100:                                              ; preds = %92
  tail call void @flow_loop_tree_node_remove(ptr noundef nonnull %93) #18
  tail call void @flow_loop_tree_node_add(ptr noundef %97, ptr noundef nonnull %93) #18
  br label %101

101:                                              ; preds = %92, %100
  call fastcc void @fel_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #19
  %102 = load ptr, ptr %2, align 8, !tbaa !24
  %103 = icmp eq ptr %102, null
  br i1 %103, label %104, label %92, !llvm.loop !139

104:                                              ; preds = %101, %89
  tail call void @free(ptr noundef %7) #19
  %105 = icmp eq ptr %0, null
  br i1 %105, label %141, label %106

106:                                              ; preds = %104
  %107 = load ptr, ptr @cfun, align 8, !tbaa !24
  %108 = getelementptr inbounds %struct.function, ptr %107, i64 0, i32 1
  %109 = load ptr, ptr %108, align 8, !tbaa !25
  %110 = load ptr, ptr %109, align 8, !tbaa !119
  %111 = getelementptr inbounds %struct.basic_block_def, ptr %110, i64 0, i32 6
  %112 = load ptr, ptr %111, align 8, !tbaa !134
  %113 = getelementptr inbounds %struct.control_flow_graph, ptr %109, i64 0, i32 1
  %114 = load ptr, ptr %113, align 8, !tbaa !35
  %115 = icmp eq ptr %112, %114
  br i1 %115, label %141, label %116

116:                                              ; preds = %106, %132
  %117 = phi ptr [ %133, %132 ], [ %107, %106 ]
  %118 = phi ptr [ %135, %132 ], [ %112, %106 ]
  %119 = getelementptr inbounds %struct.basic_block_def, ptr %118, i64 0, i32 3
  %120 = load ptr, ptr %119, align 8, !tbaa !16
  %121 = tail call fastcc i32 @loop_depth(ptr noundef %120) #19
  %122 = zext i32 %121 to i64
  %123 = inttoptr i64 %122 to ptr
  %124 = getelementptr inbounds %struct.basic_block_def, ptr %118, i64 0, i32 2
  %125 = load ptr, ptr %124, align 8, !tbaa !89
  %126 = icmp eq ptr %125, %123
  br i1 %126, label %132, label %127

127:                                              ; preds = %116
  %128 = getelementptr inbounds %struct.basic_block_def, ptr %118, i64 0, i32 9
  %129 = load i32, ptr %128, align 8, !tbaa !30
  %130 = tail call zeroext i8 @bitmap_set_bit(ptr noundef nonnull %0, i32 noundef %129) #18
  %131 = load ptr, ptr @cfun, align 8, !tbaa !24
  br label %132

132:                                              ; preds = %127, %116
  %133 = phi ptr [ %131, %127 ], [ %117, %116 ]
  store ptr null, ptr %124, align 8, !tbaa !89
  %134 = getelementptr inbounds %struct.basic_block_def, ptr %118, i64 0, i32 6
  %135 = load ptr, ptr %134, align 8, !tbaa !134
  %136 = getelementptr inbounds %struct.function, ptr %133, i64 0, i32 1
  %137 = load ptr, ptr %136, align 8, !tbaa !25
  %138 = getelementptr inbounds %struct.control_flow_graph, ptr %137, i64 0, i32 1
  %139 = load ptr, ptr %138, align 8, !tbaa !35
  %140 = icmp eq ptr %135, %139
  br i1 %140, label %141, label %116, !llvm.loop !140

141:                                              ; preds = %132, %106, %104
  %142 = tail call fastcc zeroext i8 @loops_state_satisfies_p(i32 noundef 1) #19, !range !14
  %143 = icmp eq i8 %142, 0
  br i1 %143, label %145, label %144

144:                                              ; preds = %141
  tail call void @create_preheaders(i32 noundef 1) #19
  br label %145

145:                                              ; preds = %144, %141
  %146 = tail call fastcc zeroext i8 @loops_state_satisfies_p(i32 noundef 2) #19, !range !14
  %147 = icmp eq i8 %146, 0
  br i1 %147, label %149, label %148

148:                                              ; preds = %145
  tail call void @force_single_succ_latches() #19
  br label %149

149:                                              ; preds = %148, %145
  %150 = tail call fastcc zeroext i8 @loops_state_satisfies_p(i32 noundef 4) #19, !range !14
  %151 = icmp eq i8 %150, 0
  br i1 %151, label %154, label %152

152:                                              ; preds = %149
  %153 = tail call zeroext i8 @mark_irreducible_loops() #18
  br label %154

154:                                              ; preds = %152, %149
  br i1 %39, label %156, label %155

155:                                              ; preds = %154
  tail call void @record_loop_exits() #18
  br label %156

156:                                              ; preds = %155, %154
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @number_of_loops() unnamed_addr #3 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !24
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !54
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.loops, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !141
  %8 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %7) #19
  br label %9

9:                                                ; preds = %0, %5
  %10 = phi i32 [ %8, %5 ], [ 0, %0 ]
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @loop_depth(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !44
  %4 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %3) #19
  ret i32 %4
}

; Function Attrs: optsize
declare void @release_recorded_exits() local_unnamed_addr #2

; Function Attrs: optsize
declare void @delete_loop(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @flow_loop_nodes_find(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @record_loop_exits() local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #13 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !142
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_loop_p_base_length(ptr noundef readonly %0) unnamed_addr #13 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !144
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_loop_p_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #13 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !24
  ret ptr %5
}

; Function Attrs: optsize
declare i32 @dfs_enumerate_from(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal zeroext i8 @rpe_enum_p(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %0, ptr noundef %1) #18
  ret i8 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #19
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #19
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %8) #19
  %10 = icmp eq i32 %9, %0
  %11 = zext i1 %10 to i8
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #19
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #19
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #19
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 687, ptr noundef nonnull @.str.1) #18
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !24
  ret ptr %5
}

; Function Attrs: optsize
declare void @delete_basic_block(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_basic_block_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !24
  %3 = tail call fastcc i32 @VEC_basic_block_base_space(ptr noundef %2) #19
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef 1) #18
  store ptr %6, ptr %0, align 8, !tbaa !24
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_basic_block_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #11 {
  %3 = load i32, ptr %0, align 8, !tbaa !116
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !116
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_basic_block_base_space(ptr noundef readonly %0) unnamed_addr #13 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !146
  %6 = load i32, ptr %0, align 8, !tbaa !116
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @RESET_BIT(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #4 {
  %3 = load ptr, ptr %0, align 8, !tbaa !49
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
  %15 = load i64, ptr %14, align 8, !tbaa !36
  %16 = and i32 %1, 63
  %17 = zext nneg i32 %16 to i64
  %18 = shl nuw i64 1, %17
  %19 = and i64 %15, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %11
  %22 = getelementptr inbounds i8, ptr %3, i64 %13
  %23 = load i8, ptr %22, align 1, !tbaa !5
  %24 = add i8 %23, -1
  store i8 %24, ptr %22, align 1, !tbaa !5
  br label %25

25:                                               ; preds = %5, %11, %21
  %26 = phi i64 [ %10, %5 ], [ %13, %11 ], [ %13, %21 ]
  %27 = phi i64 [ %8, %5 ], [ %18, %11 ], [ %18, %21 ]
  %28 = xor i64 %27, -1
  %29 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %26
  %30 = load i64, ptr %29, align 8, !tbaa !36
  %31 = and i64 %30, %28
  store i64 %31, ptr %29, align 8, !tbaa !36
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @fix_loop_placement(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #17
  %4 = tail call ptr @get_loop_exit_edges(ptr noundef %0) #18
  store ptr %4, ptr %3, align 8, !tbaa !24
  %5 = load ptr, ptr @cfun, align 8, !tbaa !24
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !54
  %8 = getelementptr inbounds %struct.loops, ptr %7, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !55
  %10 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef %4, i32 noundef 0, ptr noundef nonnull %2) #19, !range !99
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %27, label %12

12:                                               ; preds = %1, %12
  %13 = phi ptr [ %23, %12 ], [ %9, %1 ]
  %14 = phi i32 [ %24, %12 ], [ 0, %1 ]
  %15 = load ptr, ptr %2, align 8, !tbaa !24
  %16 = getelementptr inbounds %struct.edge_def, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !13
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !16
  %20 = tail call ptr @find_common_loop(ptr noundef %0, ptr noundef %19) #18
  %21 = tail call zeroext i8 @flow_loop_nested_p(ptr noundef %13, ptr noundef %20) #18
  %22 = icmp eq i8 %21, 0
  %23 = select i1 %22, ptr %13, ptr %20
  %24 = add i32 %14, 1
  %25 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef %4, i32 noundef %24, ptr noundef nonnull %2) #19, !range !99
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %12, !llvm.loop !147

27:                                               ; preds = %12, %1
  %28 = phi ptr [ %9, %1 ], [ %23, %12 ]
  %29 = tail call fastcc ptr @loop_outer(ptr noundef %0) #19
  %30 = icmp eq ptr %28, %29
  br i1 %30, label %50, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  br label %33

33:                                               ; preds = %31, %33
  %34 = phi ptr [ %29, %31 ], [ %39, %33 ]
  %35 = load i32, ptr %32, align 4, !tbaa !45
  %36 = getelementptr inbounds %struct.loop, ptr %34, i64 0, i32 6
  %37 = load i32, ptr %36, align 4, !tbaa !45
  %38 = sub i32 %37, %35
  store i32 %38, ptr %36, align 4, !tbaa !45
  %39 = tail call fastcc ptr @loop_outer(ptr noundef %34) #19
  %40 = icmp eq ptr %39, %28
  br i1 %40, label %41, label %33, !llvm.loop !148

41:                                               ; preds = %33
  tail call void @flow_loop_tree_node_remove(ptr noundef nonnull %0) #18
  tail call void @flow_loop_tree_node_add(ptr noundef %28, ptr noundef nonnull %0) #18
  %42 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef %4, i32 noundef 0, ptr noundef nonnull %2) #19, !range !99
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %41, %44
  %45 = phi i32 [ %47, %44 ], [ 0, %41 ]
  %46 = load ptr, ptr %2, align 8, !tbaa !24
  tail call void @rescan_loop_exit(ptr noundef %46, i8 noundef zeroext 0, i8 noundef zeroext 0) #18
  %47 = add i32 %45, 1
  %48 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef %4, i32 noundef %47, ptr noundef nonnull %2) #19, !range !99
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %44, !llvm.loop !149

50:                                               ; preds = %44, %41, %27
  %51 = phi i8 [ 0, %27 ], [ 1, %41 ], [ 1, %44 ]
  call fastcc void @VEC_edge_heap_free(ptr noundef nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #17
  ret i8 %51
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @fix_bb_placement(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #17
  %4 = load ptr, ptr @cfun, align 8, !tbaa !24
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !54
  %7 = getelementptr inbounds %struct.loops, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !55
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %10 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %9) #19
  store i32 0, ptr %3, align 8, !tbaa.struct !32
  %11 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %10, ptr %11, align 8, !tbaa.struct !34
  %12 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %10, ptr noundef nonnull %2) #19, !range !14
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %44, label %14

14:                                               ; preds = %1, %38
  %15 = phi ptr [ %39, %38 ], [ %8, %1 ]
  %16 = load ptr, ptr %2, align 8, !tbaa !24
  %17 = getelementptr inbounds %struct.edge_def, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !13
  %19 = load ptr, ptr @cfun, align 8, !tbaa !24
  %20 = getelementptr inbounds %struct.function, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !25
  %22 = getelementptr inbounds %struct.control_flow_graph, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !35
  %24 = icmp eq ptr %18, %23
  br i1 %24, label %38, label %25

25:                                               ; preds = %14
  %26 = getelementptr inbounds %struct.basic_block_def, ptr %18, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !16
  %28 = getelementptr inbounds %struct.loop, ptr %27, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !39
  %30 = icmp eq ptr %29, %18
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = tail call fastcc ptr @loop_outer(ptr noundef nonnull %27) #19
  br label %33

33:                                               ; preds = %31, %25
  %34 = phi ptr [ %32, %31 ], [ %27, %25 ]
  %35 = tail call zeroext i8 @flow_loop_nested_p(ptr noundef %15, ptr noundef %34) #18
  %36 = icmp eq i8 %35, 0
  %37 = select i1 %36, ptr %15, ptr %34
  br label %38

38:                                               ; preds = %33, %14
  %39 = phi ptr [ %15, %14 ], [ %37, %33 ]
  call fastcc void @ei_next(ptr noundef nonnull %3) #19
  %40 = load i32, ptr %3, align 8
  %41 = load ptr, ptr %11, align 8
  %42 = call fastcc zeroext i8 @ei_cond(i32 %40, ptr %41, ptr noundef nonnull %2) #19, !range !14
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %14, !llvm.loop !150

44:                                               ; preds = %38, %1
  %45 = phi ptr [ %8, %1 ], [ %39, %38 ]
  %46 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !16
  %48 = icmp eq ptr %45, %47
  br i1 %48, label %50, label %49

49:                                               ; preds = %44
  tail call void @remove_bb_from_loops(ptr noundef nonnull %0) #18
  tail call void @add_bb_to_loop(ptr noundef nonnull %0, ptr noundef %45) #18
  br label %50

50:                                               ; preds = %44, %49
  %51 = phi i8 [ 1, %49 ], [ 0, %44 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #17
  ret i8 %51
}

; Function Attrs: optsize
declare ptr @find_common_loop(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @flow_loop_nested_p(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @get_loop_exit_edges(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_edge_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #11 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !142
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !24
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !24
  ret i32 %14
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_edge_heap_free(ptr nocapture noundef %0) unnamed_addr #8 {
  %2 = load ptr, ptr %0, align 8, !tbaa !24
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #19
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_loop_p_gc_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call fastcc void @VEC_loop_p_gc_reserve(ptr noundef %0) #19
  %3 = load ptr, ptr %0, align 8, !tbaa !24
  tail call fastcc void @VEC_loop_p_base_quick_push(ptr noundef %3, ptr noundef %1) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_loop_p_gc_reserve(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !24
  %3 = tail call fastcc i32 @VEC_loop_p_base_space(ptr noundef %2) #19
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_gc_p_reserve(ptr noundef %2, i32 noundef 1) #18
  store ptr %6, ptr %0, align 8, !tbaa !24
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_loop_p_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #11 {
  %3 = load i32, ptr %0, align 8, !tbaa !144
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !144
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_loop_p_base_space(ptr noundef readonly %0) unnamed_addr #13 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !151
  %6 = load i32, ptr %0, align 8, !tbaa !144
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @vec_gc_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !91
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !5
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !152
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_last(ptr noundef readonly %0) unnamed_addr #13 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.gimple_seq_d, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !154
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi ptr [ %5, %3 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #19, !range !14
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #19
  %6 = load ptr, ptr %5, align 8, !tbaa !24
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #13 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !156
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #19
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !36
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1622, ptr noundef nonnull @.str.1) #18
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #13 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #13 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !156
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #19
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #5 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !33
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_set_op(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #19, !range !14
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #19
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %5, %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.4, i32 noundef 1665, ptr noundef nonnull @.str.1) #18
  br label %9

9:                                                ; preds = %5, %8
  %10 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #19
  store ptr %1, ptr %10, align 8, !tbaa !24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_num_ops(ptr nocapture noundef readonly %0) unnamed_addr #13 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !5
  ret i32 %3
}

; Function Attrs: optsize
declare void @remove_edge(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_edge_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !24
  %3 = tail call fastcc i32 @VEC_edge_base_space(ptr noundef %2) #19
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef 1) #18
  store ptr %6, ptr %0, align 8, !tbaa !24
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_edge_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #11 {
  %3 = load i32, ptr %0, align 8, !tbaa !142
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !142
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_space(ptr noundef readonly %0) unnamed_addr #13 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !157
  %6 = load i32, ptr %0, align 8, !tbaa !142
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_int_heap_alloc(i32 noundef %0) unnamed_addr #0 {
  %2 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %0, i64 noundef 8, i64 noundef 4) #18
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_int_base_quick_push(ptr noundef %0, i32 noundef %1) unnamed_addr #11 {
  %3 = load i32, ptr %0, align 4, !tbaa !158
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 4, !tbaa !158
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %5
  store i32 %1, ptr %6, align 4, !tbaa !33
  ret void
}

; Function Attrs: optsize
declare ptr @vec_heap_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_int_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #11 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 4, !tbaa !158
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !33
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi i32 [ %11, %8 ], [ 0, %5 ], [ 0, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store i32 %13, ptr %2, align 4, !tbaa !33
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_loop(i32 noundef %0) unnamed_addr #3 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !24
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !54
  %5 = getelementptr inbounds %struct.loops, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !141
  %7 = tail call fastcc ptr @VEC_loop_p_base_index(ptr noundef %6, i32 noundef %0) #19
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_int_heap_free(ptr nocapture noundef %0) unnamed_addr #8 {
  %2 = load ptr, ptr %0, align 8, !tbaa !24
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #19
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !24
  ret void
}

; Function Attrs: optsize
declare void @lv_add_condition_to_bb(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @current_ir_type() local_unnamed_addr #2

; Function Attrs: optsize
declare void @lv_adjust_loop_header_phi(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #15

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nounwind }
attributes #18 = { nounwind optsize }
attributes #19 = { optsize }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !11, i64 48}
!9 = !{!"edge_def", !10, i64 0, !10, i64 8, !6, i64 16, !10, i64 24, !10, i64 32, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !12, i64 56}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"int", !6, i64 0}
!12 = !{!"long", !6, i64 0}
!13 = !{!9, !10, i64 8}
!14 = !{i8 0, i8 2}
!15 = !{!9, !10, i64 0}
!16 = !{!17, !10, i64 24}
!17 = !{!"basic_block_def", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !6, i64 32, !10, i64 48, !10, i64 56, !6, i64 64, !12, i64 72, !11, i64 80, !11, i64 84, !11, i64 88, !11, i64 92, !11, i64 96}
!18 = !{!19, !10, i64 16}
!19 = !{!"loop", !11, i64 0, !11, i64 4, !10, i64 8, !10, i64 16, !20, i64 24, !11, i64 32, !11, i64 36, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !21, i64 80, !21, i64 96, !6, i64 112, !6, i64 113, !11, i64 116, !10, i64 120, !10, i64 128, !6, i64 136, !10, i64 144}
!20 = !{!"lpt_decision", !11, i64 0, !11, i64 4}
!21 = !{!"", !12, i64 0, !12, i64 8}
!22 = distinct !{!22, !23}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{!10, !10, i64 0}
!25 = !{!26, !10, i64 8}
!26 = !{!"function", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !11, i64 104, !11, i64 108, !11, i64 112, !11, i64 116, !11, i64 120, !11, i64 124, !10, i64 128, !11, i64 136, !11, i64 137, !11, i64 138, !11, i64 138, !11, i64 138, !11, i64 138, !11, i64 138, !11, i64 138, !11, i64 138, !11, i64 139, !11, i64 139, !11, i64 139, !11, i64 139, !11, i64 139, !11, i64 139, !11, i64 139}
!27 = !{!28, !11, i64 24}
!28 = !{!"control_flow_graph", !10, i64 0, !10, i64 8, !10, i64 16, !11, i64 24, !11, i64 28, !11, i64 32, !10, i64 40, !11, i64 48, !6, i64 52, !6, i64 60, !11, i64 68, !11, i64 72}
!29 = !{!28, !11, i64 32}
!30 = !{!17, !11, i64 80}
!31 = distinct !{!31, !23}
!32 = !{i64 0, i64 4, !33, i64 8, i64 8, !24}
!33 = !{!11, !11, i64 0}
!34 = !{i64 0, i64 8, !24}
!35 = !{!28, !10, i64 8}
!36 = !{!12, !12, i64 0}
!37 = distinct !{!37, !23}
!38 = distinct !{!38, !23}
!39 = !{!19, !10, i64 8}
!40 = distinct !{!40, !23}
!41 = distinct !{!41, !23}
!42 = distinct !{!42, !23}
!43 = !{!17, !10, i64 0}
!44 = !{!19, !10, i64 40}
!45 = !{!19, !11, i64 36}
!46 = distinct !{!46, !23}
!47 = !{!19, !10, i64 48}
!48 = distinct !{!48, !23}
!49 = !{!50, !10, i64 0}
!50 = !{!"simple_bitmap_def", !10, i64 0, !11, i64 8, !11, i64 12, !6, i64 16}
!51 = !{!52, !11, i64 0}
!52 = !{!"", !11, i64 0, !10, i64 8}
!53 = distinct !{!53, !23}
!54 = !{!26, !10, i64 32}
!55 = !{!56, !10, i64 24}
!56 = !{!"loops", !11, i64 0, !10, i64 8, !10, i64 16, !10, i64 24}
!57 = distinct !{!57, !23}
!58 = distinct !{!58, !23}
!59 = distinct !{!59, !23}
!60 = distinct !{!60, !23}
!61 = !{!56, !11, i64 0}
!62 = distinct !{!62, !23}
!63 = distinct !{!63, !23}
!64 = distinct !{!64, !23}
!65 = !{!19, !11, i64 0}
!66 = !{i64 0, i64 8, !24, i64 8, i64 8, !24, i64 16, i64 8, !24}
!67 = !{!68, !10, i64 0}
!68 = !{!"", !10, i64 0, !10, i64 8, !10, i64 16}
!69 = !{!68, !10, i64 8}
!70 = !{!68, !10, i64 16}
!71 = !{!17, !10, i64 8}
!72 = distinct !{!72, !23}
!73 = distinct !{!73, !23}
!74 = distinct !{!74, !23}
!75 = !{!17, !11, i64 88}
!76 = !{!9, !11, i64 52}
!77 = !{!9, !12, i64 56}
!78 = !{!17, !12, i64 72}
!79 = distinct !{!79, !23}
!80 = distinct !{!80, !23}
!81 = distinct !{!81, !23}
!82 = distinct !{!82, !23}
!83 = distinct !{!83, !23}
!84 = distinct !{!84, !23}
!85 = distinct !{!85, !23}
!86 = distinct !{!86, !23}
!87 = distinct !{!87, !23}
!88 = distinct !{!88, !23}
!89 = !{!17, !10, i64 16}
!90 = distinct !{!90, !23}
!91 = !{!17, !11, i64 96}
!92 = distinct !{!92, !23}
!93 = distinct !{!93, !23}
!94 = distinct !{!94, !23}
!95 = distinct !{!95, !23}
!96 = distinct !{!96, !23}
!97 = distinct !{!97, !23}
!98 = distinct !{!98, !23}
!99 = !{i32 0, i32 2}
!100 = distinct !{!100, !23}
!101 = distinct !{!101, !23}
!102 = distinct !{!102, !23}
!103 = distinct !{!103, !23}
!104 = !{!105, !10, i64 0}
!105 = !{!"bitmap_head_def", !10, i64 0, !10, i64 8, !11, i64 16, !10, i64 24}
!106 = !{!107, !10, i64 0}
!107 = !{!"", !10, i64 0, !10, i64 8, !11, i64 16, !12, i64 24}
!108 = !{!107, !10, i64 8}
!109 = !{!110, !11, i64 16}
!110 = !{!"bitmap_element_def", !10, i64 0, !10, i64 8, !11, i64 16, !6, i64 24}
!111 = !{!107, !11, i64 16}
!112 = !{!107, !12, i64 24}
!113 = distinct !{!113, !23}
!114 = distinct !{!114, !23}
!115 = !{!110, !10, i64 0}
!116 = !{!117, !11, i64 0}
!117 = !{!"VEC_basic_block_base", !11, i64 0, !11, i64 4, !6, i64 8}
!118 = distinct !{!118, !23}
!119 = !{!28, !10, i64 0}
!120 = !{!121, !10, i64 8}
!121 = !{!"rtl_bb_info", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !11, i64 32}
!122 = distinct !{!122, !23}
!123 = distinct !{!123, !23}
!124 = !{!125, !11, i64 8}
!125 = !{!"", !10, i64 0, !11, i64 8}
!126 = !{!125, !10, i64 0}
!127 = distinct !{!127, !23}
!128 = !{!19, !10, i64 56}
!129 = distinct !{!129, !23}
!130 = distinct !{!130, !23}
!131 = distinct !{!131, !23}
!132 = distinct !{!132, !23}
!133 = distinct !{!133, !23}
!134 = !{!17, !10, i64 56}
!135 = distinct !{!135, !23}
!136 = distinct !{!136, !23}
!137 = distinct !{!137, !23}
!138 = distinct !{!138, !23}
!139 = distinct !{!139, !23}
!140 = distinct !{!140, !23}
!141 = !{!56, !10, i64 8}
!142 = !{!143, !11, i64 0}
!143 = !{!"VEC_edge_base", !11, i64 0, !11, i64 4, !6, i64 8}
!144 = !{!145, !11, i64 0}
!145 = !{!"VEC_loop_p_base", !11, i64 0, !11, i64 4, !6, i64 8}
!146 = !{!117, !11, i64 4}
!147 = distinct !{!147, !23}
!148 = distinct !{!148, !23}
!149 = distinct !{!149, !23}
!150 = distinct !{!150, !23}
!151 = !{!145, !11, i64 4}
!152 = !{!153, !10, i64 0}
!153 = !{!"gimple_bb_info", !10, i64 0, !10, i64 8}
!154 = !{!155, !10, i64 8}
!155 = !{!"gimple_seq_d", !10, i64 0, !10, i64 8, !10, i64 16}
!156 = !{i32 0, i32 256}
!157 = !{!143, !11, i64 4}
!158 = !{!159, !11, i64 0}
!159 = !{!"VEC_int_base", !11, i64 0, !11, i64 4, !6, i64 8}

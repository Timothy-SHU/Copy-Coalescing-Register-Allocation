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
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.VEC_loop_p_base = type { i32, i32, [1 x ptr] }
%struct.VEC_basic_block_base = type { i32, i32, [1 x ptr] }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.gimple_seq_d = type { ptr, ptr, ptr }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.bitmap_iterator = type { ptr, ptr, i32, i64 }
%struct.rtl_bb_info = type { ptr, ptr, ptr, ptr, i32 }
%struct.loop_iterator = type { ptr, i32 }
%struct.VEC_int_base = type { i32, i32, [1 x i32] }

@mfb_kj_edge = dso_local local_unnamed_addr global ptr null, align 8
@cfun = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"cfgloopmanip.c\00", align 1
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@.str.3 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@bitmap_zero_bits = external global %struct.bitmap_element_def, align 8
@dump_file = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [37 x i8] c"Created preheader block for loop %i\0A\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @remove_path(ptr noundef %0) local_unnamed_addr #0 !prof !296 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i8, align 1
  %6 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #17
  store i8 0, ptr %5, align 1, !tbaa !297
  %7 = tail call zeroext i8 @can_remove_branch_p(ptr noundef %0) #18
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %207, label %9, !prof !300

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 7
  %11 = load i32, ptr %10, align 8, !tbaa !301
  %12 = and i32 %11, 128
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14, !prof !306

14:                                               ; preds = %9
  store i8 1, ptr %5, align 1, !tbaa !297
  br label %15

15:                                               ; preds = %14, %9
  %16 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !307
  %18 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %17) #19, !range !308
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %23, !prof !309

20:                                               ; preds = %15
  %21 = tail call ptr @split_edge(ptr noundef nonnull %0) #18
  %22 = tail call fastcc ptr @single_pred_edge(ptr noundef %21) #19
  br label %23

23:                                               ; preds = %20, %15
  %24 = phi ptr [ %0, %15 ], [ %22, %20 ]
  %25 = load ptr, ptr %24, align 8, !tbaa !310
  %26 = getelementptr inbounds %struct.basic_block_def, ptr %25, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !311
  %28 = tail call fastcc ptr @loop_outer(ptr noundef %27) #19
  %29 = icmp eq ptr %28, null
  br i1 %29, label %48, label %30, !prof !313

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct.edge_def, ptr %24, i64 0, i32 1
  br label %32

32:                                               ; preds = %30, %39
  %33 = phi ptr [ %27, %30 ], [ %45, %39 ]
  %34 = getelementptr inbounds %struct.loop, ptr %33, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !314
  %36 = load ptr, ptr %31, align 8, !tbaa !307
  %37 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %35, ptr noundef %36) #18
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %48, label %39, !prof !306

39:                                               ; preds = %32
  %40 = load ptr, ptr %24, align 8, !tbaa !310
  %41 = getelementptr inbounds %struct.basic_block_def, ptr %40, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !311
  call fastcc void @unloop(ptr noundef %42, ptr noundef nonnull %5) #19
  %43 = load ptr, ptr %24, align 8, !tbaa !310
  %44 = getelementptr inbounds %struct.basic_block_def, ptr %43, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !311
  %46 = tail call fastcc ptr @loop_outer(ptr noundef %45) #19
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %32, !prof !318, !llvm.loop !319

48:                                               ; preds = %32, %39, %23
  %49 = call fastcc i32 @find_path(ptr noundef nonnull %24, ptr noundef nonnull %3) #19
  %50 = load ptr, ptr @cfun, align 8, !tbaa !321
  %51 = getelementptr inbounds %struct.function, ptr %50, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !322
  %53 = getelementptr inbounds %struct.control_flow_graph, ptr %52, i64 0, i32 3
  %54 = load i32, ptr %53, align 8, !tbaa !324
  %55 = sext i32 %54 to i64
  %56 = tail call ptr @xcalloc(i64 noundef %55, i64 noundef 8) #18
  %57 = load ptr, ptr @cfun, align 8, !tbaa !321
  %58 = getelementptr inbounds %struct.function, ptr %57, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !322
  %60 = getelementptr inbounds %struct.control_flow_graph, ptr %59, i64 0, i32 5
  %61 = load i32, ptr %60, align 8, !tbaa !326
  %62 = tail call ptr @sbitmap_alloc(i32 noundef %61) #18
  tail call void @sbitmap_zero(ptr noundef %62) #18
  %63 = icmp sgt i32 %49, 0
  %64 = load ptr, ptr %3, align 8, !tbaa !321
  br i1 %63, label %67, label %65, !prof !327

65:                                               ; preds = %48
  %66 = load i8, ptr %5, align 1, !tbaa !297
  br label %140

67:                                               ; preds = %48
  %68 = zext nneg i32 %49 to i64
  br label %74

69:                                               ; preds = %74
  %70 = load i8, ptr %5, align 1, !tbaa !297
  br i1 %63, label %71, label %140, !prof !328

71:                                               ; preds = %69
  %72 = getelementptr inbounds i8, ptr %6, i64 8
  %73 = zext nneg i32 %49 to i64
  br label %82

74:                                               ; preds = %67, %74
  %75 = phi i64 [ 0, %67 ], [ %80, %74 ]
  %76 = getelementptr inbounds ptr, ptr %64, i64 %75
  %77 = load ptr, ptr %76, align 8, !tbaa !321
  %78 = getelementptr inbounds %struct.basic_block_def, ptr %77, i64 0, i32 9
  %79 = load i32, ptr %78, align 8, !tbaa !329
  tail call fastcc void @SET_BIT(ptr noundef %62, i32 noundef %79) #19
  %80 = add nuw nsw i64 %75, 1
  %81 = icmp eq i64 %80, %68
  br i1 %81, label %69, label %74, !prof !330, !llvm.loop !331

82:                                               ; preds = %71, %133
  %83 = phi i64 [ 0, %71 ], [ %136, %133 ]
  %84 = phi i32 [ 0, %71 ], [ %135, %133 ]
  %85 = phi i8 [ %70, %71 ], [ %134, %133 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #17
  %86 = getelementptr inbounds ptr, ptr %64, i64 %83
  %87 = load ptr, ptr %86, align 8, !tbaa !321
  %88 = getelementptr inbounds %struct.basic_block_def, ptr %87, i64 0, i32 1
  %89 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %88) #19
  store i32 0, ptr %6, align 8, !tbaa.struct !332
  store ptr %89, ptr %72, align 8, !tbaa.struct !334
  %90 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %89, ptr noundef nonnull %2) #19, !range !308
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %133, label %92, !prof !300

92:                                               ; preds = %82, %126
  %93 = phi i32 [ %128, %126 ], [ %84, %82 ]
  %94 = phi i8 [ %127, %126 ], [ %85, %82 ]
  %95 = load ptr, ptr %2, align 8, !tbaa !321
  %96 = getelementptr inbounds %struct.edge_def, ptr %95, i64 0, i32 1
  %97 = load ptr, ptr %96, align 8, !tbaa !307
  %98 = load ptr, ptr @cfun, align 8, !tbaa !321
  %99 = getelementptr inbounds %struct.function, ptr %98, i64 0, i32 1
  %100 = load ptr, ptr %99, align 8, !tbaa !322
  %101 = getelementptr inbounds %struct.control_flow_graph, ptr %100, i64 0, i32 1
  %102 = load ptr, ptr %101, align 8, !tbaa !335
  %103 = icmp eq ptr %97, %102
  br i1 %103, label %126, label %104, !prof !336

104:                                              ; preds = %92
  %105 = getelementptr inbounds %struct.basic_block_def, ptr %97, i64 0, i32 9
  %106 = load i32, ptr %105, align 8, !tbaa !329
  %107 = lshr i32 %106, 6
  %108 = zext nneg i32 %107 to i64
  %109 = getelementptr inbounds %struct.simple_bitmap_def, ptr %62, i64 0, i32 3, i64 %108
  %110 = load i64, ptr %109, align 8, !tbaa !337
  %111 = and i32 %106, 63
  %112 = zext nneg i32 %111 to i64
  %113 = shl nuw i64 1, %112
  %114 = and i64 %113, %110
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %126, !prof !338

116:                                              ; preds = %104
  tail call fastcc void @SET_BIT(ptr noundef nonnull %62, i32 noundef %106) #19
  %117 = load ptr, ptr %96, align 8, !tbaa !307
  %118 = add nsw i32 %93, 1
  %119 = sext i32 %93 to i64
  %120 = getelementptr inbounds ptr, ptr %56, i64 %119
  store ptr %117, ptr %120, align 8, !tbaa !321
  %121 = getelementptr inbounds %struct.edge_def, ptr %95, i64 0, i32 7
  %122 = load i32, ptr %121, align 8, !tbaa !301
  %123 = and i32 %122, 128
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %126, label %125, !prof !339

125:                                              ; preds = %116
  br label %126

126:                                              ; preds = %92, %104, %125, %116
  %127 = phi i8 [ %94, %104 ], [ 1, %125 ], [ %94, %116 ], [ %94, %92 ]
  %128 = phi i32 [ %93, %104 ], [ %118, %125 ], [ %118, %116 ], [ %93, %92 ]
  call fastcc void @ei_next(ptr noundef nonnull %6) #19
  %129 = load i32, ptr %6, align 8
  %130 = load ptr, ptr %72, align 8
  %131 = call fastcc zeroext i8 @ei_cond(i32 %129, ptr %130, ptr noundef nonnull %2) #19, !range !308
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %133, label %92, !prof !340, !llvm.loop !341

133:                                              ; preds = %126, %82
  %134 = phi i8 [ %85, %82 ], [ %127, %126 ]
  %135 = phi i32 [ %84, %82 ], [ %128, %126 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #17
  %136 = add nuw nsw i64 %83, 1
  %137 = icmp eq i64 %136, %73
  br i1 %137, label %138, label %82, !prof !330, !llvm.loop !342

138:                                              ; preds = %133
  %139 = load ptr, ptr %3, align 8, !tbaa !321
  br label %140

140:                                              ; preds = %65, %138, %69
  %141 = phi ptr [ %64, %69 ], [ %139, %138 ], [ %64, %65 ]
  %142 = phi i8 [ %70, %69 ], [ %134, %138 ], [ %66, %65 ]
  %143 = phi i32 [ 0, %69 ], [ %135, %138 ], [ 0, %65 ]
  store i8 %142, ptr %5, align 1, !tbaa !297
  %144 = load ptr, ptr %24, align 8, !tbaa !310
  tail call void @remove_branch(ptr noundef nonnull %24) #18
  store ptr null, ptr %4, align 8, !tbaa !321
  br i1 %63, label %145, label %160, !prof !327

145:                                              ; preds = %140
  %146 = zext nneg i32 %49 to i64
  br label %147

147:                                              ; preds = %145, %157
  %148 = phi i64 [ 0, %145 ], [ %158, %157 ]
  %149 = getelementptr inbounds ptr, ptr %141, i64 %148
  %150 = load ptr, ptr %149, align 8, !tbaa !321
  %151 = getelementptr inbounds %struct.basic_block_def, ptr %150, i64 0, i32 3
  %152 = load ptr, ptr %151, align 8, !tbaa !311
  %153 = getelementptr inbounds %struct.loop, ptr %152, i64 0, i32 2
  %154 = load ptr, ptr %153, align 8, !tbaa !343
  %155 = icmp eq ptr %154, %150
  br i1 %155, label %156, label %157, !prof !344

156:                                              ; preds = %147
  tail call void @cancel_loop_tree(ptr noundef nonnull %152) #18
  br label %157

157:                                              ; preds = %147, %156
  %158 = add nuw nsw i64 %148, 1
  %159 = icmp eq i64 %158, %146
  br i1 %159, label %160, label %147, !prof !330, !llvm.loop !345

160:                                              ; preds = %157, %140
  tail call fastcc void @remove_bbs(ptr noundef %141, i32 noundef %49) #19
  tail call void @free(ptr noundef %141) #19
  tail call void @sbitmap_zero(ptr noundef %62) #18
  %161 = icmp sgt i32 %143, 0
  br i1 %161, label %162, label %196, !prof !327

162:                                              ; preds = %160
  %163 = zext nneg i32 %143 to i64
  br label %164

164:                                              ; preds = %162, %191
  %165 = phi i64 [ 0, %162 ], [ %192, %191 ]
  %166 = getelementptr inbounds ptr, ptr %56, i64 %165
  %167 = load ptr, ptr %166, align 8, !tbaa !321
  %168 = tail call ptr @get_immediate_dominator(i32 noundef 1, ptr noundef %167) #18
  %169 = getelementptr inbounds %struct.basic_block_def, ptr %168, i64 0, i32 9
  %170 = load i32, ptr %169, align 8, !tbaa !329
  %171 = lshr i32 %170, 6
  %172 = zext nneg i32 %171 to i64
  %173 = getelementptr inbounds %struct.simple_bitmap_def, ptr %62, i64 0, i32 3, i64 %172
  %174 = load i64, ptr %173, align 8, !tbaa !337
  %175 = and i32 %170, 63
  %176 = zext nneg i32 %175 to i64
  %177 = shl nuw i64 1, %176
  %178 = and i64 %177, %174
  %179 = icmp eq i64 %178, 0
  br i1 %179, label %180, label %191, !prof !346

180:                                              ; preds = %164
  tail call fastcc void @SET_BIT(ptr noundef nonnull %62, i32 noundef %170) #19
  %181 = tail call ptr @first_dom_son(i32 noundef 1, ptr noundef nonnull %168) #18
  %182 = icmp eq ptr %181, null
  br i1 %182, label %191, label %183, !prof !347

183:                                              ; preds = %180, %188
  %184 = phi ptr [ %189, %188 ], [ %181, %180 ]
  %185 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %144, ptr noundef nonnull %184) #18
  %186 = icmp eq i8 %185, 0
  br i1 %186, label %187, label %188, !prof !348

187:                                              ; preds = %183
  call fastcc void @VEC_basic_block_heap_safe_push(ptr noundef nonnull %4, ptr noundef nonnull %184) #19
  br label %188

188:                                              ; preds = %183, %187
  %189 = tail call ptr @next_dom_son(i32 noundef 1, ptr noundef nonnull %184) #18
  %190 = icmp eq ptr %189, null
  br i1 %190, label %191, label %183, !prof !349, !llvm.loop !350

191:                                              ; preds = %188, %180, %164
  %192 = add nuw nsw i64 %165, 1
  %193 = icmp eq i64 %192, %163
  br i1 %193, label %194, label %164, !prof !351, !llvm.loop !352

194:                                              ; preds = %191
  %195 = load ptr, ptr %4, align 8, !tbaa !321
  br label %196

196:                                              ; preds = %194, %160
  %197 = phi ptr [ %195, %194 ], [ null, %160 ]
  tail call void @free(ptr noundef %62) #19
  tail call void @iterate_fix_dominators(i32 noundef 1, ptr noundef %197, i8 noundef zeroext 1) #18
  call fastcc void @VEC_basic_block_heap_free(ptr noundef nonnull %4) #19
  tail call void @free(ptr noundef %56) #19
  call fastcc void @fix_bb_placements(ptr noundef %144, ptr noundef nonnull %5) #19
  %198 = getelementptr inbounds %struct.basic_block_def, ptr %144, i64 0, i32 3
  %199 = load ptr, ptr %198, align 8, !tbaa !311
  call fastcc void @fix_loop_placements(ptr noundef %199, ptr noundef nonnull %5) #19
  %200 = load i8, ptr %5, align 1, !tbaa !297
  %201 = icmp eq i8 %200, 0
  br i1 %201, label %207, label %202, !prof !306

202:                                              ; preds = %196
  %203 = tail call fastcc zeroext i8 @loops_state_satisfies_p(i32 noundef 4) #19, !range !308
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
define internal fastcc zeroext i8 @single_pred_p(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !353 !PGOFuncName !354 {
  %2 = load ptr, ptr %0, align 8, !tbaa !355
  %3 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %2) #19
  %4 = icmp eq i32 %3, 1
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_pred_edge(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !356 !PGOFuncName !357 {
  %2 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %0) #19, !range !308
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5, !prof !358

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 655, ptr noundef nonnull @.str.1) #18
  br label %5

5:                                                ; preds = %1, %4
  %6 = load ptr, ptr %0, align 8, !tbaa !355
  %7 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %6, i32 noundef 0) #19
  ret ptr %7
}

; Function Attrs: optsize
declare ptr @split_edge(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @loop_outer(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !359 !PGOFuncName !360 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !361
  %4 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %3) #19
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6, !prof !362

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
define internal fastcc void @unloop(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 !prof !363 !PGOFuncName !364 {
  %3 = alloca i8, align 1
  %4 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !314
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #17
  %6 = tail call ptr @loop_preheader_edge(ptr noundef %0) #18
  %7 = getelementptr inbounds %struct.edge_def, ptr %6, i64 0, i32 7
  %8 = load i32, ptr %7, align 8, !tbaa !301
  %9 = and i32 %8, 128
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i8 1, ptr %1, align 1, !tbaa !297
  br label %12

12:                                               ; preds = %11, %2
  %13 = tail call ptr @get_loop_body(ptr noundef nonnull %0) #18
  %14 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %15 = load i32, ptr %14, align 4, !tbaa !365
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %32, label %17

17:                                               ; preds = %12
  %18 = zext i32 %15 to i64
  br label %19

19:                                               ; preds = %17, %29
  %20 = phi i64 [ 0, %17 ], [ %30, %29 ]
  %21 = getelementptr inbounds ptr, ptr %13, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !321
  %23 = getelementptr inbounds %struct.basic_block_def, ptr %22, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !311
  %25 = icmp eq ptr %24, %0
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  tail call void @remove_bb_from_loops(ptr noundef nonnull %22) #18
  %27 = load ptr, ptr %21, align 8, !tbaa !321
  %28 = tail call fastcc ptr @loop_outer(ptr noundef %0) #19
  tail call void @add_bb_to_loop(ptr noundef %27, ptr noundef %28) #18
  br label %29

29:                                               ; preds = %19, %26
  %30 = add nuw nsw i64 %20, 1
  %31 = icmp eq i64 %30, %18
  br i1 %31, label %32, label %19, !llvm.loop !366

32:                                               ; preds = %29, %12
  tail call void @free(ptr noundef %13) #19
  %33 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 8
  %34 = load ptr, ptr %33, align 8, !tbaa !367
  %35 = icmp eq ptr %34, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %32, %36
  %37 = phi ptr [ %39, %36 ], [ %34, %32 ]
  tail call void @flow_loop_tree_node_remove(ptr noundef nonnull %37) #18
  %38 = tail call fastcc ptr @loop_outer(ptr noundef nonnull %0) #19
  tail call void @flow_loop_tree_node_add(ptr noundef %38, ptr noundef nonnull %37) #18
  %39 = load ptr, ptr %33, align 8, !tbaa !367
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %36, !llvm.loop !368

41:                                               ; preds = %36, %32
  tail call void @delete_loop(ptr noundef nonnull %0) #18
  %42 = tail call fastcc ptr @single_succ_edge(ptr noundef %5) #19
  tail call void @remove_edge(ptr noundef %42) #18
  call fastcc void @fix_bb_placements(ptr noundef %5, ptr noundef nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @find_path(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 !prof !296 !PGOFuncName !369 {
  %3 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !307
  %5 = load ptr, ptr %4, align 8, !tbaa !355
  %6 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %5) #19
  %7 = icmp ult i32 %6, 2
  br i1 %7, label %9, label %8, !prof !306

8:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 75, ptr noundef nonnull @.str.1) #18
  br label %9

9:                                                ; preds = %2, %8
  %10 = load ptr, ptr @cfun, align 8, !tbaa !321
  %11 = getelementptr inbounds %struct.function, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !322
  %13 = getelementptr inbounds %struct.control_flow_graph, ptr %12, i64 0, i32 3
  %14 = load i32, ptr %13, align 8, !tbaa !324
  %15 = sext i32 %14 to i64
  %16 = tail call ptr @xcalloc(i64 noundef %15, i64 noundef 8) #18
  store ptr %16, ptr %1, align 8, !tbaa !321
  %17 = load ptr, ptr %3, align 8, !tbaa !307
  %18 = load ptr, ptr @cfun, align 8, !tbaa !321
  %19 = getelementptr inbounds %struct.function, ptr %18, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !322
  %21 = getelementptr inbounds %struct.control_flow_graph, ptr %20, i64 0, i32 3
  %22 = load i32, ptr %21, align 8, !tbaa !324
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
define internal fastcc void @SET_BIT(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #4 !prof !370 !PGOFuncName !371 {
  %3 = load ptr, ptr %0, align 8, !tbaa !372
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %11, !prof !374

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
  %15 = load i64, ptr %14, align 8, !tbaa !337
  %16 = and i32 %1, 63
  %17 = zext nneg i32 %16 to i64
  %18 = shl nuw i64 1, %17
  %19 = and i64 %15, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %11
  %22 = getelementptr inbounds i8, ptr %3, i64 %13
  %23 = load i8, ptr %22, align 1, !tbaa !297
  %24 = add i8 %23, 1
  store i8 %24, ptr %22, align 1, !tbaa !297
  br label %25

25:                                               ; preds = %5, %11, %21
  %26 = phi i64 [ %10, %5 ], [ %13, %11 ], [ %13, %21 ]
  %27 = phi i64 [ %8, %5 ], [ %18, %11 ], [ %18, %21 ]
  %28 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %26
  %29 = load i64, ptr %28, align 8, !tbaa !337
  %30 = or i64 %29, %27
  store i64 %30, ptr %28, align 8, !tbaa !337
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #5 !prof !375 !PGOFuncName !376 {
  ret ptr %0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !prof !377 !PGOFuncName !378 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #19, !range !308
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8, !prof !379

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #19
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !321
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 !prof !380 !PGOFuncName !381 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #19
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7, !prof !382

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #19
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #19
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14, !prof !383

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 738, ptr noundef nonnull @.str.1) #18
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !384
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !384
  ret void
}

; Function Attrs: optsize
declare void @remove_branch(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @cancel_loop_tree(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @remove_bbs(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 !prof !296 !PGOFuncName !386 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %12, !prof !327

4:                                                ; preds = %2
  %5 = zext nneg i32 %1 to i64
  br label %6

6:                                                ; preds = %4, %6
  %7 = phi i64 [ 0, %4 ], [ %10, %6 ]
  %8 = getelementptr inbounds ptr, ptr %0, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !321
  tail call void @delete_basic_block(ptr noundef %9) #18
  %10 = add nuw nsw i64 %7, 1
  %11 = icmp eq i64 %10, %5
  br i1 %11, label %12, label %6, !prof !330, !llvm.loop !387

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
define internal fastcc void @VEC_basic_block_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !388 !PGOFuncName !389 {
  tail call fastcc void @VEC_basic_block_heap_reserve(ptr noundef %0) #19
  %3 = load ptr, ptr %0, align 8, !tbaa !321
  tail call fastcc void @VEC_basic_block_base_quick_push(ptr noundef %3, ptr noundef %1) #19
  ret void
}

; Function Attrs: optsize
declare ptr @next_dom_son(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @iterate_fix_dominators(i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_basic_block_heap_free(ptr nocapture noundef %0) unnamed_addr #8 !prof !390 !PGOFuncName !391 {
  %2 = load ptr, ptr %0, align 8, !tbaa !321
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !392

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #19
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !321
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fix_bb_placements(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 !prof !296 !PGOFuncName !393 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #17
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !311
  %7 = load ptr, ptr @cfun, align 8, !tbaa !321
  %8 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !394
  %10 = getelementptr inbounds %struct.loops, ptr %9, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !395
  %12 = icmp eq ptr %6, %11
  br i1 %12, label %142, label %13, !prof !397

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !322
  %16 = getelementptr inbounds %struct.control_flow_graph, ptr %15, i64 0, i32 5
  %17 = load i32, ptr %16, align 8, !tbaa !326
  %18 = tail call ptr @sbitmap_alloc(i32 noundef %17) #18
  tail call void @sbitmap_zero(ptr noundef %18) #18
  %19 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %20 = load i32, ptr %19, align 8, !tbaa !329
  tail call fastcc void @SET_BIT(ptr noundef %18, i32 noundef %20) #19
  %21 = getelementptr inbounds %struct.loop, ptr %6, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !343
  %23 = getelementptr inbounds %struct.basic_block_def, ptr %22, i64 0, i32 9
  %24 = load i32, ptr %23, align 8, !tbaa !329
  tail call fastcc void @SET_BIT(ptr noundef %18, i32 noundef %24) #19
  %25 = getelementptr inbounds %struct.loop, ptr %6, i64 0, i32 6
  %26 = load i32, ptr %25, align 4, !tbaa !365
  %27 = add i32 %26, 1
  %28 = zext i32 %27 to i64
  %29 = shl nuw nsw i64 %28, 3
  %30 = tail call ptr @xmalloc(i64 noundef %29) #18
  %31 = load i32, ptr %25, align 4, !tbaa !365
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds ptr, ptr %30, i64 %32
  %34 = getelementptr inbounds ptr, ptr %30, i64 1
  store ptr %0, ptr %30, align 8, !tbaa !321
  br label %35

35:                                               ; preds = %13, %138
  %36 = phi ptr [ %30, %13 ], [ %43, %138 ]
  %37 = phi ptr [ %34, %13 ], [ %139, %138 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #17
  %38 = load ptr, ptr %36, align 8, !tbaa !321
  %39 = getelementptr inbounds ptr, ptr %36, i64 1
  %40 = icmp eq ptr %36, %33
  br i1 %40, label %41, label %42, !prof !398

41:                                               ; preds = %35
  br label %42

42:                                               ; preds = %41, %35
  %43 = phi ptr [ %30, %41 ], [ %39, %35 ]
  %44 = getelementptr inbounds %struct.basic_block_def, ptr %38, i64 0, i32 9
  %45 = load i32, ptr %44, align 8, !tbaa !329
  tail call fastcc void @RESET_BIT(ptr noundef %18, i32 noundef %45) #19
  %46 = getelementptr inbounds %struct.basic_block_def, ptr %38, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !311
  %48 = getelementptr inbounds %struct.loop, ptr %47, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !343
  %50 = icmp eq ptr %49, %38
  br i1 %50, label %51, label %54, !prof !399

51:                                               ; preds = %42
  %52 = tail call fastcc zeroext i8 @fix_loop_placement(ptr noundef nonnull %47) #19, !range !308
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %138, label %57, !prof !400, !llvm.loop !401

54:                                               ; preds = %42
  %55 = tail call fastcc zeroext i8 @fix_bb_placement(ptr noundef nonnull %38) #19, !range !308
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %138, label %57, !prof !402, !llvm.loop !401

57:                                               ; preds = %54, %51
  %58 = getelementptr inbounds i8, ptr %4, i64 8
  %59 = getelementptr inbounds %struct.basic_block_def, ptr %38, i64 0, i32 1
  %60 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %59) #19
  store i32 0, ptr %4, align 8, !tbaa.struct !332
  store ptr %60, ptr %58, align 8, !tbaa.struct !334
  %61 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %60, ptr noundef nonnull %3) #19, !range !308
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %75, label %63

63:                                               ; preds = %57, %70
  %64 = load ptr, ptr %3, align 8, !tbaa !321
  %65 = getelementptr inbounds %struct.edge_def, ptr %64, i64 0, i32 7
  %66 = load i32, ptr %65, align 8, !tbaa !301
  %67 = and i32 %66, 128
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %63
  store i8 1, ptr %1, align 1, !tbaa !297
  br label %70

70:                                               ; preds = %63, %69
  call fastcc void @ei_next(ptr noundef nonnull %4) #19
  %71 = load i32, ptr %4, align 8
  %72 = load ptr, ptr %58, align 8
  %73 = call fastcc zeroext i8 @ei_cond(i32 %71, ptr %72, ptr noundef nonnull %3) #19, !range !308
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %75, label %63, !llvm.loop !403

75:                                               ; preds = %70, %57
  %76 = tail call fastcc ptr @ei_start_1(ptr noundef %38) #19
  store i32 0, ptr %4, align 8, !tbaa.struct !332
  store ptr %76, ptr %58, align 8, !tbaa.struct !334
  %77 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %76, ptr noundef nonnull %3) #19, !range !308
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %138, label %79

79:                                               ; preds = %75, %132
  %80 = phi ptr [ %133, %132 ], [ %37, %75 ]
  %81 = load ptr, ptr %3, align 8, !tbaa !321
  %82 = load ptr, ptr %81, align 8, !tbaa !310
  %83 = getelementptr inbounds %struct.edge_def, ptr %81, i64 0, i32 7
  %84 = load i32, ptr %83, align 8, !tbaa !301
  %85 = and i32 %84, 128
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %79
  store i8 1, ptr %1, align 1, !tbaa !297
  br label %88

88:                                               ; preds = %87, %79
  %89 = getelementptr inbounds %struct.basic_block_def, ptr %82, i64 0, i32 9
  %90 = load i32, ptr %89, align 8, !tbaa !329
  %91 = lshr i32 %90, 6
  %92 = zext nneg i32 %91 to i64
  %93 = getelementptr inbounds %struct.simple_bitmap_def, ptr %18, i64 0, i32 3, i64 %92
  %94 = load i64, ptr %93, align 8, !tbaa !337
  %95 = and i32 %90, 63
  %96 = zext nneg i32 %95 to i64
  %97 = shl nuw i64 1, %96
  %98 = and i64 %97, %94
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %132

100:                                              ; preds = %88
  %101 = getelementptr inbounds %struct.basic_block_def, ptr %82, i64 0, i32 3
  %102 = load ptr, ptr %101, align 8, !tbaa !311
  %103 = tail call ptr @find_common_loop(ptr noundef %102, ptr noundef %6) #18
  %104 = load ptr, ptr %101, align 8, !tbaa !311
  %105 = icmp eq ptr %104, %6
  %106 = icmp eq ptr %103, %104
  %107 = select i1 %105, i1 true, i1 %106
  br i1 %107, label %111, label %108

108:                                              ; preds = %100
  %109 = getelementptr inbounds %struct.loop, ptr %104, i64 0, i32 2
  %110 = load ptr, ptr %109, align 8, !tbaa !343
  br label %115

111:                                              ; preds = %100
  %112 = load ptr, ptr %46, align 8, !tbaa !311
  %113 = tail call zeroext i8 @flow_loop_nested_p(ptr noundef %112, ptr noundef %104) #18
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %132, label %115

115:                                              ; preds = %111, %108
  %116 = phi ptr [ %110, %108 ], [ %82, %111 ]
  %117 = getelementptr inbounds %struct.basic_block_def, ptr %116, i64 0, i32 9
  %118 = load i32, ptr %117, align 8, !tbaa !329
  %119 = lshr i32 %118, 6
  %120 = zext nneg i32 %119 to i64
  %121 = getelementptr inbounds %struct.simple_bitmap_def, ptr %18, i64 0, i32 3, i64 %120
  %122 = load i64, ptr %121, align 8, !tbaa !337
  %123 = and i32 %118, 63
  %124 = zext nneg i32 %123 to i64
  %125 = shl nuw i64 1, %124
  %126 = and i64 %125, %122
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %115
  store ptr %116, ptr %80, align 8, !tbaa !321
  %129 = getelementptr inbounds ptr, ptr %80, i64 1
  %130 = icmp eq ptr %80, %33
  %131 = select i1 %130, ptr %30, ptr %129
  tail call fastcc void @SET_BIT(ptr noundef nonnull %18, i32 noundef %118) #19
  br label %132

132:                                              ; preds = %115, %111, %88, %128
  %133 = phi ptr [ %131, %128 ], [ %80, %88 ], [ %80, %111 ], [ %80, %115 ]
  call fastcc void @ei_next(ptr noundef nonnull %4) #19
  %134 = load i32, ptr %4, align 8
  %135 = load ptr, ptr %58, align 8
  %136 = call fastcc zeroext i8 @ei_cond(i32 %134, ptr %135, ptr noundef nonnull %3) #19, !range !308
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %138, label %79, !llvm.loop !404

138:                                              ; preds = %132, %75, %54, %51
  %139 = phi ptr [ %37, %51 ], [ %37, %54 ], [ %37, %75 ], [ %133, %132 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #17
  %140 = icmp eq ptr %43, %139
  br i1 %140, label %141, label %35, !prof !318

141:                                              ; preds = %138
  tail call void @free(ptr noundef %18) #19
  tail call void @free(ptr noundef %30) #19
  br label %142

142:                                              ; preds = %2, %141
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fix_loop_placements(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 !prof !296 !PGOFuncName !405 {
  %3 = tail call fastcc ptr @loop_outer(ptr noundef %0) #19
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %5, !prof !313

5:                                                ; preds = %2, %10
  %6 = phi ptr [ %13, %10 ], [ %3, %2 ]
  %7 = phi ptr [ %6, %10 ], [ %0, %2 ]
  %8 = tail call fastcc zeroext i8 @fix_loop_placement(ptr noundef %7) #19, !range !308
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %15, label %10, !prof !406

10:                                               ; preds = %5
  %11 = tail call ptr @loop_preheader_edge(ptr noundef %7) #18
  %12 = load ptr, ptr %11, align 8, !tbaa !310
  tail call fastcc void @fix_bb_placements(ptr noundef %12, ptr noundef %1) #19
  %13 = tail call fastcc ptr @loop_outer(ptr noundef nonnull %6) #19
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %5, !prof !318, !llvm.loop !407

15:                                               ; preds = %10, %5, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @loops_state_satisfies_p(i32 noundef %0) unnamed_addr #3 !prof !408 !PGOFuncName !409 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !321
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !394
  %5 = load i32, ptr %4, align 8, !tbaa !410
  %6 = and i32 %5, %0
  %7 = icmp eq i32 %6, %0
  %8 = zext i1 %7 to i8
  ret i8 %8
}

; Function Attrs: optsize
declare zeroext i8 @mark_irreducible_loops() local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #9 !prof !411 !PGOFuncName !412 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !413

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !414
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #9 !prof !416 !PGOFuncName !417 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !321
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_loop_p_base_length(ptr noundef readonly %0) unnamed_addr #9 !prof !418 !PGOFuncName !419 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !420

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !421
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_loop_p_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #9 !prof !423 !PGOFuncName !424 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !321
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @loop_preheader_edge(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @get_loop_body(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @remove_bb_from_loops(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @add_bb_to_loop(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @flow_loop_tree_node_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @flow_loop_tree_node_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @delete_loop(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @remove_edge(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ_edge(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !425 !PGOFuncName !426 {
  %2 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %0) #19, !range !308
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5, !prof !427

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 645, ptr noundef nonnull @.str.1) #18
  br label %5

5:                                                ; preds = %1, %4
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !428
  %8 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %7, i32 noundef 0) #19
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_succ_p(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !429 !PGOFuncName !430 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !428
  %4 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %3) #19
  %5 = icmp eq i32 %4, 1
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: optsize
declare i32 @dfs_enumerate_from(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal zeroext i8 @rpe_enum_p(ptr noundef %0, ptr noundef %1) #0 !prof !431 !PGOFuncName !432 {
  %3 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %0, ptr noundef %1) #18
  ret i8 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 !prof !377 !PGOFuncName !433 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #19
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !434

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
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 !prof !380 !PGOFuncName !435 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #19
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !382

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #19
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #19
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #0 !prof !436 !PGOFuncName !437 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !438

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str, i32 noundef 687, ptr noundef nonnull @.str.1) #18
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !321
  ret ptr %5
}

; Function Attrs: optsize
declare void @delete_basic_block(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_basic_block_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 !prof !388 !PGOFuncName !439 {
  %2 = load ptr, ptr %0, align 8, !tbaa !321
  %3 = tail call fastcc i32 @VEC_basic_block_base_space(ptr noundef %2) #19
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !440

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef 1) #18
  store ptr %6, ptr %0, align 8, !tbaa !321
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_basic_block_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #10 !prof !388 !PGOFuncName !441 {
  %3 = load i32, ptr %0, align 8, !tbaa !442
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !442
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !321
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_basic_block_base_space(ptr noundef readonly %0) unnamed_addr #9 !prof !388 !PGOFuncName !444 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3, !prof !445

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !446
  %6 = load i32, ptr %0, align 8, !tbaa !442
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @RESET_BIT(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #4 !prof !447 !PGOFuncName !448 {
  %3 = load ptr, ptr %0, align 8, !tbaa !372
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %11, !prof !406

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
  %15 = load i64, ptr %14, align 8, !tbaa !337
  %16 = and i32 %1, 63
  %17 = zext nneg i32 %16 to i64
  %18 = shl nuw i64 1, %17
  %19 = and i64 %15, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %11
  %22 = getelementptr inbounds i8, ptr %3, i64 %13
  %23 = load i8, ptr %22, align 1, !tbaa !297
  %24 = add i8 %23, -1
  store i8 %24, ptr %22, align 1, !tbaa !297
  br label %25

25:                                               ; preds = %5, %11, %21
  %26 = phi i64 [ %10, %5 ], [ %13, %11 ], [ %13, %21 ]
  %27 = phi i64 [ %8, %5 ], [ %18, %11 ], [ %18, %21 ]
  %28 = xor i64 %27, -1
  %29 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %26
  %30 = load i64, ptr %29, align 8, !tbaa !337
  %31 = and i64 %30, %28
  store i64 %31, ptr %29, align 8, !tbaa !337
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @fix_loop_placement(ptr noundef %0) unnamed_addr #0 !prof !449 !PGOFuncName !450 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #17
  %4 = tail call ptr @get_loop_exit_edges(ptr noundef %0) #18
  store ptr %4, ptr %3, align 8, !tbaa !321
  %5 = load ptr, ptr @cfun, align 8, !tbaa !321
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !394
  %8 = getelementptr inbounds %struct.loops, ptr %7, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !395
  %10 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef %4, i32 noundef 0, ptr noundef nonnull %2) #19, !range !451
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %27, label %12, !prof !452

12:                                               ; preds = %1, %12
  %13 = phi ptr [ %23, %12 ], [ %9, %1 ]
  %14 = phi i32 [ %24, %12 ], [ 0, %1 ]
  %15 = load ptr, ptr %2, align 8, !tbaa !321
  %16 = getelementptr inbounds %struct.edge_def, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !307
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !311
  %20 = tail call ptr @find_common_loop(ptr noundef %0, ptr noundef %19) #18
  %21 = tail call zeroext i8 @flow_loop_nested_p(ptr noundef %13, ptr noundef %20) #18
  %22 = icmp eq i8 %21, 0
  %23 = select i1 %22, ptr %13, ptr %20, !prof !453
  %24 = add i32 %14, 1
  %25 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef %4, i32 noundef %24, ptr noundef nonnull %2) #19, !range !451
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %12, !prof !454, !llvm.loop !455

27:                                               ; preds = %12, %1
  %28 = phi ptr [ %9, %1 ], [ %23, %12 ]
  %29 = tail call fastcc ptr @loop_outer(ptr noundef %0) #19
  %30 = icmp eq ptr %28, %29
  br i1 %30, label %50, label %31, !prof !456

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  br label %33

33:                                               ; preds = %31, %33
  %34 = phi ptr [ %29, %31 ], [ %39, %33 ]
  %35 = load i32, ptr %32, align 4, !tbaa !365
  %36 = getelementptr inbounds %struct.loop, ptr %34, i64 0, i32 6
  %37 = load i32, ptr %36, align 4, !tbaa !365
  %38 = sub i32 %37, %35
  store i32 %38, ptr %36, align 4, !tbaa !365
  %39 = tail call fastcc ptr @loop_outer(ptr noundef %34) #19
  %40 = icmp eq ptr %39, %28
  br i1 %40, label %41, label %33, !llvm.loop !457

41:                                               ; preds = %33
  tail call void @flow_loop_tree_node_remove(ptr noundef nonnull %0) #18
  tail call void @flow_loop_tree_node_add(ptr noundef %28, ptr noundef nonnull %0) #18
  %42 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef %4, i32 noundef 0, ptr noundef nonnull %2) #19, !range !451
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %41, %44
  %45 = phi i32 [ %47, %44 ], [ 0, %41 ]
  %46 = load ptr, ptr %2, align 8, !tbaa !321
  tail call void @rescan_loop_exit(ptr noundef %46, i8 noundef zeroext 0, i8 noundef zeroext 0) #18
  %47 = add i32 %45, 1
  %48 = call fastcc i32 @VEC_edge_base_iterate(ptr noundef %4, i32 noundef %47, ptr noundef nonnull %2) #19, !range !451
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %44, !llvm.loop !458

50:                                               ; preds = %44, %41, %27
  %51 = phi i8 [ 0, %27 ], [ 1, %41 ], [ 1, %44 ]
  call fastcc void @VEC_edge_heap_free(ptr noundef nonnull %3) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #17
  ret i8 %51
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @fix_bb_placement(ptr noundef %0) unnamed_addr #0 !prof !459 !PGOFuncName !460 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #17
  %4 = load ptr, ptr @cfun, align 8, !tbaa !321
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !394
  %7 = getelementptr inbounds %struct.loops, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !395
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %10 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %9) #19
  store i32 0, ptr %3, align 8, !tbaa.struct !332
  %11 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %10, ptr %11, align 8, !tbaa.struct !334
  %12 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %10, ptr noundef nonnull %2) #19, !range !308
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %44, label %14, !prof !461

14:                                               ; preds = %1, %38
  %15 = phi ptr [ %39, %38 ], [ %8, %1 ]
  %16 = load ptr, ptr %2, align 8, !tbaa !321
  %17 = getelementptr inbounds %struct.edge_def, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !307
  %19 = load ptr, ptr @cfun, align 8, !tbaa !321
  %20 = getelementptr inbounds %struct.function, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !322
  %22 = getelementptr inbounds %struct.control_flow_graph, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !335
  %24 = icmp eq ptr %18, %23
  br i1 %24, label %38, label %25, !prof !462

25:                                               ; preds = %14
  %26 = getelementptr inbounds %struct.basic_block_def, ptr %18, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !311
  %28 = getelementptr inbounds %struct.loop, ptr %27, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !343
  %30 = icmp eq ptr %29, %18
  br i1 %30, label %31, label %33, !prof !462

31:                                               ; preds = %25
  %32 = tail call fastcc ptr @loop_outer(ptr noundef nonnull %27) #19
  br label %33

33:                                               ; preds = %31, %25
  %34 = phi ptr [ %32, %31 ], [ %27, %25 ]
  %35 = tail call zeroext i8 @flow_loop_nested_p(ptr noundef %15, ptr noundef %34) #18
  %36 = icmp eq i8 %35, 0
  %37 = select i1 %36, ptr %15, ptr %34, !prof !462
  br label %38

38:                                               ; preds = %33, %14
  %39 = phi ptr [ %15, %14 ], [ %37, %33 ]
  call fastcc void @ei_next(ptr noundef nonnull %3) #19
  %40 = load i32, ptr %3, align 8
  %41 = load ptr, ptr %11, align 8
  %42 = call fastcc zeroext i8 @ei_cond(i32 %40, ptr %41, ptr noundef nonnull %2) #19, !range !308
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %14, !prof !463, !llvm.loop !464

44:                                               ; preds = %38, %1
  %45 = phi ptr [ %8, %1 ], [ %39, %38 ]
  %46 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !311
  %48 = icmp eq ptr %45, %47
  br i1 %48, label %50, label %49, !prof !402

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
define internal fastcc noundef i32 @VEC_edge_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #10 !prof !465 !PGOFuncName !466 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5, !prof !467

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !414
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12, !prof !468

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !321
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !321
  ret i32 %14
}

; Function Attrs: optsize
declare void @rescan_loop_exit(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_edge_heap_free(ptr nocapture noundef %0) unnamed_addr #8 !prof !449 !PGOFuncName !469 {
  %2 = load ptr, ptr %0, align 8, !tbaa !321
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !470

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #19
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !321
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @add_loop(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !471 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #17
  tail call fastcc void @place_new_loop(ptr noundef %0) #19
  tail call void @flow_loop_tree_node_add(ptr noundef %1, ptr noundef %0) #18
  %5 = load ptr, ptr @cfun, align 8, !tbaa !321
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !322
  %8 = getelementptr inbounds %struct.control_flow_graph, ptr %7, i64 0, i32 3
  %9 = load i32, ptr %8, align 8, !tbaa !324
  %10 = sext i32 %9 to i64
  %11 = shl nsw i64 %10, 3
  %12 = tail call ptr @xmalloc(i64 noundef %11) #18
  %13 = load ptr, ptr @cfun, align 8, !tbaa !321
  %14 = getelementptr inbounds %struct.function, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !322
  %16 = getelementptr inbounds %struct.control_flow_graph, ptr %15, i64 0, i32 3
  %17 = load i32, ptr %16, align 8, !tbaa !324
  %18 = tail call i32 @get_loop_body_with_size(ptr noundef %0, ptr noundef %12, i32 noundef %17) #18
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %66, !prof !472

20:                                               ; preds = %2
  %21 = zext nneg i32 %18 to i64
  br label %26

22:                                               ; preds = %46
  br i1 %19, label %23, label %66, !prof !328

23:                                               ; preds = %22
  %24 = getelementptr inbounds i8, ptr %4, i64 8
  %25 = zext nneg i32 %18 to i64
  br label %49

26:                                               ; preds = %20, %46
  %27 = phi i64 [ 0, %20 ], [ %47, %46 ]
  %28 = getelementptr inbounds ptr, ptr %12, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !321
  %30 = getelementptr inbounds %struct.basic_block_def, ptr %29, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !311
  %32 = icmp eq ptr %31, %1
  br i1 %32, label %33, label %35, !prof !473

33:                                               ; preds = %26
  tail call void @remove_bb_from_loops(ptr noundef nonnull %29) #18
  %34 = load ptr, ptr %28, align 8, !tbaa !321
  tail call void @add_bb_to_loop(ptr noundef %34, ptr noundef %0) #18
  br label %46

35:                                               ; preds = %26
  %36 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %37 = load i32, ptr %36, align 4, !tbaa !365
  %38 = add i32 %37, 1
  store i32 %38, ptr %36, align 4, !tbaa !365
  %39 = tail call fastcc ptr @loop_outer(ptr noundef %31) #19
  %40 = icmp eq ptr %39, %1
  br i1 %40, label %41, label %46, !prof !474

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.loop, ptr %31, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !343
  %44 = icmp eq ptr %43, %29
  br i1 %44, label %45, label %46, !prof !475

45:                                               ; preds = %41
  tail call void @flow_loop_tree_node_remove(ptr noundef nonnull %31) #18
  tail call void @flow_loop_tree_node_add(ptr noundef nonnull %0, ptr noundef nonnull %31) #18
  br label %46

46:                                               ; preds = %35, %41, %45, %33
  %47 = add nuw nsw i64 %27, 1
  %48 = icmp eq i64 %47, %21
  br i1 %48, label %22, label %26, !prof !476, !llvm.loop !477

49:                                               ; preds = %23, %63
  %50 = phi i64 [ 0, %23 ], [ %64, %63 ]
  %51 = getelementptr inbounds ptr, ptr %12, i64 %50
  %52 = load ptr, ptr %51, align 8, !tbaa !321
  %53 = getelementptr inbounds %struct.basic_block_def, ptr %52, i64 0, i32 1
  %54 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %53) #19
  store i32 0, ptr %4, align 8, !tbaa.struct !332
  store ptr %54, ptr %24, align 8, !tbaa.struct !334
  %55 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %54, ptr noundef nonnull %3) #19, !range !308
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %63, label %57, !prof !478

57:                                               ; preds = %49, %57
  %58 = load ptr, ptr %3, align 8, !tbaa !321
  tail call void @rescan_loop_exit(ptr noundef %58, i8 noundef zeroext 0, i8 noundef zeroext 0) #18
  call fastcc void @ei_next(ptr noundef nonnull %4) #19
  %59 = load i32, ptr %4, align 8
  %60 = load ptr, ptr %24, align 8
  %61 = call fastcc zeroext i8 @ei_cond(i32 %59, ptr %60, ptr noundef nonnull %3) #19, !range !308
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %63, label %57, !prof !479, !llvm.loop !480

63:                                               ; preds = %57, %49
  %64 = add nuw nsw i64 %50, 1
  %65 = icmp eq i64 %64, %25
  br i1 %65, label %66, label %49, !prof !476, !llvm.loop !481

66:                                               ; preds = %63, %2, %22
  tail call void @free(ptr noundef %12) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @place_new_loop(ptr noundef %0) unnamed_addr #0 !prof !482 !PGOFuncName !483 {
  %2 = tail call fastcc i32 @number_of_loops() #19
  store i32 %2, ptr %0, align 8, !tbaa !484
  %3 = load ptr, ptr @cfun, align 8, !tbaa !321
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !394
  %6 = getelementptr inbounds %struct.loops, ptr %5, i64 0, i32 1
  tail call fastcc void @VEC_loop_p_gc_safe_push(ptr noundef nonnull %6, ptr noundef nonnull %0) #19
  ret void
}

; Function Attrs: optsize
declare i32 @get_loop_body_with_size(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @number_of_loops() unnamed_addr #3 !prof !485 !PGOFuncName !486 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !321
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !394
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !487

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.loops, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !488
  %8 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %7) #19
  br label %9

9:                                                ; preds = %0, %5
  %10 = phi i32 [ %8, %5 ], [ 0, %0 ]
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_loop_p_gc_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !482 !PGOFuncName !489 {
  tail call fastcc void @VEC_loop_p_gc_reserve(ptr noundef %0) #19
  %3 = load ptr, ptr %0, align 8, !tbaa !321
  tail call fastcc void @VEC_loop_p_base_quick_push(ptr noundef %3, ptr noundef %1) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_loop_p_gc_reserve(ptr nocapture noundef %0) unnamed_addr #0 !prof !482 !PGOFuncName !490 {
  %2 = load ptr, ptr %0, align 8, !tbaa !321
  %3 = tail call fastcc i32 @VEC_loop_p_base_space(ptr noundef %2) #19
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !491

5:                                                ; preds = %1
  %6 = tail call ptr @vec_gc_p_reserve(ptr noundef %2, i32 noundef 1) #18
  store ptr %6, ptr %0, align 8, !tbaa !321
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_loop_p_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #10 !prof !482 !PGOFuncName !492 {
  %3 = load i32, ptr %0, align 8, !tbaa !421
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !421
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !321
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_loop_p_base_space(ptr noundef readonly %0) unnamed_addr #9 !prof !482 !PGOFuncName !493 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3, !prof !494

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !495
  %6 = load i32, ptr %0, align 8, !tbaa !421
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @vec_gc_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @scale_loop_frequencies(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !496 {
  %4 = tail call ptr @get_loop_body(ptr noundef %0) #18
  %5 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %6 = load i32, ptr %5, align 4, !tbaa !365
  tail call void @scale_bbs_frequencies_int(ptr noundef %4, i32 noundef %6, i32 noundef %1, i32 noundef %2) #18
  tail call void @free(ptr noundef %4) #19
  ret void
}

; Function Attrs: optsize
declare void @scale_bbs_frequencies_int(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @create_empty_if_region_on_edge(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !363 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #17
  %5 = tail call ptr @split_edge(ptr noundef %0) #18
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %5) #19
  %6 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %3, ptr noundef %1, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 0, i32 noundef 0) #18
  %7 = call ptr @gimple_build_cond_from_tree(ptr noundef %6, ptr noundef null, ptr noundef null) #18
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #17
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %5) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !497
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #17
  call void @gsi_insert_after(ptr noundef nonnull %3, ptr noundef %7, i32 noundef 0) #18
  %8 = call fastcc ptr @single_succ_edge(ptr noundef %5) #19
  %9 = call ptr @split_edge(ptr noundef %8) #18
  %10 = call fastcc ptr @single_succ_edge(ptr noundef %5) #19
  %11 = call ptr @split_edge(ptr noundef %10) #18
  %12 = call ptr @make_edge(ptr noundef %5, ptr noundef %9, i32 noundef 0) #18
  %13 = call ptr @split_edge(ptr noundef %12) #18
  %14 = getelementptr inbounds %struct.edge_def, ptr %10, i64 0, i32 7
  %15 = load i32, ptr %14, align 8, !tbaa !301
  %16 = and i32 %15, -1026
  %17 = or disjoint i32 %16, 1024
  store i32 %17, ptr %14, align 8, !tbaa !301
  %18 = getelementptr inbounds %struct.edge_def, ptr %12, i64 0, i32 7
  %19 = load i32, ptr %18, align 8, !tbaa !301
  %20 = and i32 %19, -2050
  %21 = or disjoint i32 %20, 2048
  store i32 %21, ptr %18, align 8, !tbaa !301
  %22 = load ptr, ptr %0, align 8, !tbaa !310
  call void @set_immediate_dominator(i32 noundef 1, ptr noundef %5, ptr noundef %22) #18
  call void @set_immediate_dominator(i32 noundef 1, ptr noundef %11, ptr noundef %5) #18
  call void @set_immediate_dominator(i32 noundef 1, ptr noundef %13, ptr noundef %5) #18
  call void @set_immediate_dominator(i32 noundef 1, ptr noundef %9, ptr noundef %5) #18
  %23 = call fastcc ptr @single_succ_edge(ptr noundef %9) #19
  %24 = getelementptr inbounds %struct.edge_def, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !307
  %26 = call fastcc zeroext i8 @single_pred_p(ptr noundef %25) #19, !range !308
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
define internal fastcc void @gsi_last_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #11 !prof !363 !PGOFuncName !498 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #19
  %4 = tail call fastcc ptr @gimple_seq_last(ptr noundef %3) #19
  store ptr %4, ptr %0, align 8, !tbaa !499
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !501
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !502
  ret void
}

; Function Attrs: optsize
declare ptr @force_gimple_operand_gsi(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gimple_build_cond_from_tree(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @gsi_insert_after(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @make_edge(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @set_immediate_dominator(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !363 !PGOFuncName !503 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !504
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !297
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !505
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_last(ptr noundef readonly %0) unnamed_addr #9 !prof !363 !PGOFuncName !507 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.gimple_seq_d, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !508
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi ptr [ %5, %3 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @create_empty_loop_on_edge(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #0 !prof !363 {
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
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 630, ptr noundef nonnull @.str.1) #18
  br label %22

22:                                               ; preds = %8, %21
  %23 = load ptr, ptr %0, align 8, !tbaa !310
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
  store ptr %24, ptr %32, align 8, !tbaa !343
  %33 = getelementptr inbounds %struct.loop, ptr %31, i64 0, i32 3
  store ptr %26, ptr %33, align 8, !tbaa !314
  tail call void @add_loop(ptr noundef %31, ptr noundef %7) #19
  tail call void @scale_loop_frequencies(ptr noundef %31, i32 noundef 5000, i32 noundef 10000) #19
  tail call fastcc void @update_dominators_in_loop(ptr noundef %31) #19
  %34 = tail call ptr @single_exit(ptr noundef %31) #18
  %35 = getelementptr inbounds %struct.edge_def, ptr %34, i64 0, i32 7
  store i32 2560, ptr %35, align 8, !tbaa !301
  %36 = tail call fastcc ptr @single_pred_edge(ptr noundef %26) #19
  %37 = getelementptr inbounds %struct.edge_def, ptr %36, i64 0, i32 7
  store i32 1024, ptr %37, align 8, !tbaa !301
  %38 = call ptr @force_gimple_operand(ptr noundef %1, ptr noundef nonnull %10, i8 noundef zeroext 1, ptr noundef %4) #18
  %39 = load ptr, ptr %10, align 8, !tbaa !321
  %40 = icmp eq ptr %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %22
  %42 = call ptr @loop_preheader_edge(ptr noundef nonnull %31) #18
  %43 = load ptr, ptr %10, align 8, !tbaa !321
  call void @gsi_insert_seq_on_edge(ptr noundef %42, ptr noundef %43) #18
  call void @gsi_commit_edge_inserts() #18
  br label %44

44:                                               ; preds = %41, %22
  %45 = call ptr @force_gimple_operand(ptr noundef %3, ptr noundef nonnull %10, i8 noundef zeroext 1, ptr noundef null) #18
  %46 = load ptr, ptr %10, align 8, !tbaa !321
  %47 = icmp eq ptr %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %44
  %49 = call ptr @loop_preheader_edge(ptr noundef nonnull %31) #18
  %50 = load ptr, ptr %10, align 8, !tbaa !321
  call void @gsi_insert_seq_on_edge(ptr noundef %49, ptr noundef %50) #18
  call void @gsi_commit_edge_inserts() #18
  br label %51

51:                                               ; preds = %48, %44
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %9, ptr noundef %24) #19
  call void @create_iv(ptr noundef %38, ptr noundef %2, ptr noundef %4, ptr noundef nonnull %31, ptr noundef nonnull %9, i8 noundef zeroext 0, ptr noundef %5, ptr noundef %6) #18
  %52 = load ptr, ptr %5, align 8, !tbaa !321
  %53 = call ptr @gimple_build_cond(i32 noundef 97, ptr noundef %52, ptr noundef %45, ptr noundef null, ptr noundef null) #18
  %54 = call fastcc ptr @gimple_cond_lhs(ptr noundef %53) #19
  %55 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %9, ptr noundef %54, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 0, i32 noundef 0) #18
  call fastcc void @gimple_cond_set_lhs(ptr noundef %53, ptr noundef %55) #19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #17
  %56 = load ptr, ptr %34, align 8, !tbaa !310
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %11, ptr noundef %56) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %11, i64 24, i1 false), !tbaa.struct !497
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #17
  call void @gsi_insert_after(ptr noundef nonnull %9, ptr noundef %53, i32 noundef 0) #18
  %57 = call ptr @split_block_after_labels(ptr noundef %24) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #17
  ret ptr %31
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !363 !PGOFuncName !510 {
  %2 = tail call fastcc ptr @single_succ_edge(ptr noundef %0) #19
  %3 = getelementptr inbounds %struct.edge_def, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !307
  ret ptr %4
}

; Function Attrs: optsize
declare ptr @redirect_edge_succ_nodup(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @alloc_loop() local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_dominators_in_loop(ptr noundef %0) unnamed_addr #0 !prof !511 !PGOFuncName !512 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #17
  store ptr null, ptr %2, align 8, !tbaa !321
  %3 = load ptr, ptr @cfun, align 8, !tbaa !321
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !322
  %6 = getelementptr inbounds %struct.control_flow_graph, ptr %5, i64 0, i32 5
  %7 = load i32, ptr %6, align 8, !tbaa !326
  %8 = tail call ptr @sbitmap_alloc(i32 noundef %7) #18
  tail call void @sbitmap_zero(ptr noundef %8) #18
  %9 = tail call ptr @get_loop_body(ptr noundef %0) #18
  %10 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %11 = load i32, ptr %10, align 4, !tbaa !365
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %55, label %15, !prof !513

13:                                               ; preds = %15
  %14 = icmp eq i32 %22, 0
  br i1 %14, label %55, label %25, !prof !514

15:                                               ; preds = %1, %15
  %16 = phi i64 [ %21, %15 ], [ 0, %1 ]
  %17 = getelementptr inbounds ptr, ptr %9, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !321
  %19 = getelementptr inbounds %struct.basic_block_def, ptr %18, i64 0, i32 9
  %20 = load i32, ptr %19, align 8, !tbaa !329
  tail call fastcc void @SET_BIT(ptr noundef %8, i32 noundef %20) #19
  %21 = add nuw nsw i64 %16, 1
  %22 = load i32, ptr %10, align 4, !tbaa !365
  %23 = zext i32 %22 to i64
  %24 = icmp ult i64 %21, %23
  br i1 %24, label %15, label %13, !prof !515, !llvm.loop !516

25:                                               ; preds = %13, %48
  %26 = phi i64 [ %49, %48 ], [ 0, %13 ]
  %27 = getelementptr inbounds ptr, ptr %9, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !321
  %29 = tail call ptr @first_dom_son(i32 noundef 1, ptr noundef %28) #18
  %30 = icmp eq ptr %29, null
  br i1 %30, label %48, label %31, !prof !517

31:                                               ; preds = %25, %45
  %32 = phi ptr [ %46, %45 ], [ %29, %25 ]
  %33 = getelementptr inbounds %struct.basic_block_def, ptr %32, i64 0, i32 9
  %34 = load i32, ptr %33, align 8, !tbaa !329
  %35 = lshr i32 %34, 6
  %36 = zext nneg i32 %35 to i64
  %37 = getelementptr inbounds %struct.simple_bitmap_def, ptr %8, i64 0, i32 3, i64 %36
  %38 = load i64, ptr %37, align 8, !tbaa !337
  %39 = and i32 %34, 63
  %40 = zext nneg i32 %39 to i64
  %41 = shl nuw i64 1, %40
  %42 = and i64 %41, %38
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %45, !prof !518

44:                                               ; preds = %31
  tail call fastcc void @SET_BIT(ptr noundef nonnull %8, i32 noundef %34) #19
  call fastcc void @VEC_basic_block_heap_safe_push(ptr noundef nonnull %2, ptr noundef nonnull %32) #19
  br label %45

45:                                               ; preds = %31, %44
  %46 = tail call ptr @next_dom_son(i32 noundef 1, ptr noundef nonnull %32) #18
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %31, !prof !519, !llvm.loop !520

48:                                               ; preds = %45, %25
  %49 = add nuw nsw i64 %26, 1
  %50 = load i32, ptr %10, align 4, !tbaa !365
  %51 = zext i32 %50 to i64
  %52 = icmp ult i64 %49, %51
  br i1 %52, label %25, label %53, !prof !515, !llvm.loop !521

53:                                               ; preds = %48
  %54 = load ptr, ptr %2, align 8, !tbaa !321
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
declare void @gsi_commit_edge_inserts() local_unnamed_addr #2

; Function Attrs: optsize
declare void @create_iv(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @gimple_build_cond(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_cond_lhs(ptr noundef %0) unnamed_addr #0 !prof !363 !PGOFuncName !522 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0) #19
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_cond_set_lhs(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !363 !PGOFuncName !523 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, ptr noundef %1) #19
  ret void
}

; Function Attrs: optsize
declare ptr @split_block_after_labels(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0) unnamed_addr #0 !prof !363 !PGOFuncName !524 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #19, !range !308
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #19
  %6 = load ptr, ptr %5, align 8, !tbaa !321
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #9 !prof !363 !PGOFuncName !525 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !526
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #0 !prof !363 !PGOFuncName !527 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #19
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !337
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1622, ptr noundef nonnull @.str.1) #18
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #9 !prof !363 !PGOFuncName !528 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #9 !prof !363 !PGOFuncName !529 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #19, !range !526
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #19
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #5 !prof !363 !PGOFuncName !530 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !333
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_set_op(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !363 !PGOFuncName !531 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #19, !range !308
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #19
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %5, %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1665, ptr noundef nonnull @.str.1) #18
  br label %9

9:                                                ; preds = %5, %8
  %10 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #19
  store ptr %1, ptr %10, align 8, !tbaa !321
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_num_ops(ptr nocapture noundef readonly %0) unnamed_addr #9 !prof !363 !PGOFuncName !532 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !297
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @loopify(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i8 noundef zeroext %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #0 !prof !511 {
  %9 = alloca ptr, align 8
  %10 = alloca %struct.edge_iterator, align 8
  %11 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !307
  %13 = load ptr, ptr %1, align 8, !tbaa !310
  %14 = tail call ptr @alloc_loop() #18
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !311
  %17 = tail call fastcc ptr @loop_outer(ptr noundef %16) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #17
  %18 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !307
  %20 = getelementptr inbounds %struct.loop, ptr %14, i64 0, i32 2
  store ptr %19, ptr %20, align 8, !tbaa !343
  %21 = load ptr, ptr %0, align 8, !tbaa !310
  %22 = getelementptr inbounds %struct.loop, ptr %14, i64 0, i32 3
  store ptr %21, ptr %22, align 8, !tbaa !314
  %23 = load ptr, ptr %1, align 8, !tbaa !310
  %24 = getelementptr inbounds %struct.basic_block_def, ptr %23, i64 0, i32 11
  %25 = load i32, ptr %24, align 8, !tbaa !533
  %26 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 8
  %27 = load i32, ptr %26, align 4, !tbaa !534
  %28 = mul nsw i32 %27, %25
  %29 = add nsw i32 %28, 5000
  %30 = sdiv i32 %29, 10000
  %31 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 9
  %32 = load i64, ptr %31, align 8, !tbaa !535
  tail call fastcc void @loop_redirect_edge(ptr noundef nonnull %0, ptr noundef %19) #19
  tail call fastcc void @loop_redirect_edge(ptr noundef %3, ptr noundef %12) #19
  %33 = icmp eq i8 %5, 0
  br i1 %33, label %37, label %34, !prof !536

34:                                               ; preds = %8
  tail call fastcc void @loop_redirect_edge(ptr noundef nonnull %1, ptr noundef %2) #19
  %35 = load ptr, ptr %20, align 8, !tbaa !343
  tail call fastcc void @loop_redirect_edge(ptr noundef %4, ptr noundef %35) #19
  tail call void @set_immediate_dominator(i32 noundef 1, ptr noundef %2, ptr noundef %13) #18
  %36 = load ptr, ptr %20, align 8, !tbaa !343
  tail call void @set_immediate_dominator(i32 noundef 1, ptr noundef %36, ptr noundef %2) #18
  br label %37

37:                                               ; preds = %34, %8
  tail call void @set_immediate_dominator(i32 noundef 1, ptr noundef nonnull %12, ptr noundef %2) #18
  tail call void @add_loop(ptr noundef nonnull %14, ptr noundef %17) #19
  %38 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !311
  %40 = icmp eq ptr %39, null
  br i1 %40, label %42, label %41, !prof !537

41:                                               ; preds = %37
  tail call void @remove_bb_from_loops(ptr noundef nonnull %2) #18
  br label %42

42:                                               ; preds = %41, %37
  tail call void @add_bb_to_loop(ptr noundef nonnull %2, ptr noundef %17) #18
  br i1 %33, label %64, label %43, !prof !536

43:                                               ; preds = %42
  %44 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 11
  store i32 %30, ptr %44, align 8, !tbaa !533
  %45 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 8
  store i64 %32, ptr %45, align 8, !tbaa !538
  %46 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 1
  %47 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %46) #19
  store i32 0, ptr %10, align 8, !tbaa.struct !332
  %48 = getelementptr inbounds i8, ptr %10, i64 8
  store ptr %47, ptr %48, align 8, !tbaa.struct !334
  %49 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %47, ptr noundef nonnull %9) #19, !range !308
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %64, label %51, !prof !539

51:                                               ; preds = %43, %51
  %52 = load i64, ptr %45, align 8, !tbaa !538
  %53 = load ptr, ptr %9, align 8, !tbaa !321
  %54 = getelementptr inbounds %struct.edge_def, ptr %53, i64 0, i32 8
  %55 = load i32, ptr %54, align 4, !tbaa !534
  %56 = sext i32 %55 to i64
  %57 = mul nsw i64 %52, %56
  %58 = sdiv i64 %57, 10000
  %59 = getelementptr inbounds %struct.edge_def, ptr %53, i64 0, i32 9
  store i64 %58, ptr %59, align 8, !tbaa !535
  call fastcc void @ei_next(ptr noundef nonnull %10) #19
  %60 = load i32, ptr %10, align 8
  %61 = load ptr, ptr %48, align 8
  %62 = call fastcc zeroext i8 @ei_cond(i32 %60, ptr %61, ptr noundef nonnull %9) #19, !range !308
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %64, label %51, !prof !540, !llvm.loop !541

64:                                               ; preds = %51, %43, %42
  tail call void @scale_loop_frequencies(ptr noundef %14, i32 noundef %7, i32 noundef 10000) #19
  %65 = load ptr, ptr %15, align 8, !tbaa !311
  tail call void @scale_loop_frequencies(ptr noundef %65, i32 noundef %6, i32 noundef 10000) #19
  tail call fastcc void @update_dominators_in_loop(ptr noundef %14) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #17
  ret ptr %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @loop_redirect_edge(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !542 !PGOFuncName !543 {
  %3 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !307
  %5 = icmp eq ptr %4, %1
  br i1 %5, label %8, label %6, !prof !544

6:                                                ; preds = %2
  %7 = tail call ptr @redirect_edge_and_branch_force(ptr noundef nonnull %0, ptr noundef %1) #18
  br label %8

8:                                                ; preds = %2, %6
  ret void
}

; Function Attrs: optsize
declare ptr @redirect_edge_and_branch_force(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @duplicate_loop(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !545 {
  %3 = tail call ptr @alloc_loop() #18
  tail call fastcc void @place_new_loop(ptr noundef %3) #19
  tail call void @set_loop_copy(ptr noundef %0, ptr noundef %3) #18
  tail call void @flow_loop_tree_node_add(ptr noundef %1, ptr noundef %3) #18
  ret ptr %3
}

; Function Attrs: optsize
declare void @set_loop_copy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @duplicate_subloops(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !363 {
  %3 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 8
  %4 = load ptr, ptr %3, align 8, !tbaa !321
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %2, %6
  %7 = phi ptr [ %10, %6 ], [ %4, %2 ]
  %8 = tail call ptr @duplicate_loop(ptr noundef nonnull %7, ptr noundef %1) #19
  tail call void @duplicate_subloops(ptr noundef nonnull %7, ptr noundef %8) #19
  %9 = getelementptr inbounds %struct.loop, ptr %7, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !321
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %6, !llvm.loop !546

12:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @can_duplicate_loop_p(ptr noundef %0) local_unnamed_addr #0 !prof !547 {
  %2 = tail call ptr @get_loop_body(ptr noundef %0) #18
  %3 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %4 = load i32, ptr %3, align 4, !tbaa !365
  %5 = tail call zeroext i8 @can_copy_bbs_p(ptr noundef %2, i32 noundef %4) #18
  tail call void @free(ptr noundef %2) #19
  ret i8 %5
}

; Function Attrs: optsize
declare zeroext i8 @can_copy_bbs_p(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @duplicate_loop_to_header_edge(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, ptr noundef %4, ptr noundef %5, i32 noundef %6) local_unnamed_addr #0 !prof !548 {
  %8 = alloca ptr, align 8
  %9 = alloca [2 x ptr], align 16
  %10 = alloca [2 x ptr], align 16
  %11 = alloca i32, align 4
  %12 = alloca %struct.bitmap_iterator, align 8
  %13 = alloca %struct.edge_iterator, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !343
  %18 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !314
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #17
  %20 = load ptr, ptr %1, align 8, !tbaa !310
  %21 = icmp eq ptr %19, %20
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %12) #17
  %22 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !307
  %24 = icmp eq ptr %23, %17
  br i1 %24, label %26, label %25, !prof !549

25:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 998, ptr noundef nonnull @.str.1) #18
  br label %26

26:                                               ; preds = %7, %25
  %27 = icmp eq i32 %2, 0
  br i1 %27, label %28, label %29, !prof !550

28:                                               ; preds = %26
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 999, ptr noundef nonnull @.str.1) #18
  br label %29

29:                                               ; preds = %26, %28
  %30 = icmp eq ptr %4, null
  br i1 %30, label %42, label %31, !prof !551

31:                                               ; preds = %29
  %32 = load ptr, ptr %4, align 8, !tbaa !310
  %33 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef nonnull %0, ptr noundef %32) #18
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %36, !prof !552

35:                                               ; preds = %31
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1004, ptr noundef nonnull @.str.1) #18
  br label %36

36:                                               ; preds = %31, %35
  %37 = getelementptr inbounds %struct.edge_def, ptr %4, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !307
  %39 = tail call zeroext i8 @flow_bb_inside_loop_p(ptr noundef nonnull %0, ptr noundef %38) #18
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %42, label %41, !prof !553

41:                                               ; preds = %36
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1005, ptr noundef nonnull @.str.1) #18
  br label %42

42:                                               ; preds = %41, %36, %29
  %43 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %44 = load i32, ptr %43, align 4, !tbaa !365
  %45 = tail call ptr @get_loop_body_in_dom_order(ptr noundef nonnull %0) #18
  %46 = load ptr, ptr %45, align 8, !tbaa !321
  %47 = load ptr, ptr %16, align 8, !tbaa !343
  %48 = icmp eq ptr %46, %47
  br i1 %48, label %50, label %49, !prof !549

49:                                               ; preds = %42
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1010, ptr noundef nonnull @.str.1) #18
  br label %50

50:                                               ; preds = %42, %49
  %51 = add i32 %44, -1
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds ptr, ptr %45, i64 %52
  %54 = load ptr, ptr %53, align 8, !tbaa !321
  %55 = load ptr, ptr %18, align 8, !tbaa !314
  %56 = icmp eq ptr %54, %55
  br i1 %56, label %58, label %57, !prof !549

57:                                               ; preds = %50
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1011, ptr noundef nonnull @.str.1) #18
  br label %58

58:                                               ; preds = %50, %57
  %59 = load i32, ptr %43, align 4, !tbaa !365
  %60 = tail call zeroext i8 @can_copy_bbs_p(ptr noundef nonnull %45, i32 noundef %59) #18
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %62, label %63, !prof !550

62:                                               ; preds = %58
  tail call void @free(ptr noundef nonnull %45) #19
  br label %553

63:                                               ; preds = %58
  %64 = load i32, ptr %43, align 4, !tbaa !365
  %65 = zext i32 %64 to i64
  %66 = shl nuw nsw i64 %65, 3
  %67 = tail call ptr @xmalloc(i64 noundef %66) #18
  %68 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 7
  %69 = load i32, ptr %68, align 8, !tbaa !301
  %70 = and i32 %69, 128
  br i1 %21, label %71, label %74, !prof !550

71:                                               ; preds = %63
  %72 = icmp eq i32 %70, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %71
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1024, ptr noundef nonnull @.str.1) #18
  br label %74

74:                                               ; preds = %63, %71, %73
  %75 = tail call ptr @loop_latch_edge(ptr noundef nonnull %0) #18
  %76 = and i32 %6, 1
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %268, label %78, !prof !551

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 11
  %80 = load i32, ptr %79, align 8, !tbaa !533
  %81 = load ptr, ptr %75, align 8, !tbaa !310
  %82 = getelementptr inbounds %struct.basic_block_def, ptr %81, i64 0, i32 11
  %83 = load i32, ptr %82, align 8, !tbaa !533
  %84 = getelementptr inbounds %struct.edge_def, ptr %75, i64 0, i32 8
  %85 = load i32, ptr %84, align 4, !tbaa !534
  %86 = mul nsw i32 %85, %83
  %87 = add nsw i32 %86, 5000
  %88 = sdiv i32 %87, 10000
  %89 = tail call i32 @llvm.umax.i32(i32 %80, i32 1)
  %90 = icmp slt i32 %89, %88
  br i1 %90, label %91, label %92, !prof !552

91:                                               ; preds = %78
  br label %92

92:                                               ; preds = %91, %78
  %93 = phi i32 [ %88, %91 ], [ %89, %78 ]
  br i1 %30, label %104, label %94, !prof !552

94:                                               ; preds = %92
  %95 = load ptr, ptr %4, align 8, !tbaa !310
  %96 = getelementptr inbounds %struct.basic_block_def, ptr %95, i64 0, i32 11
  %97 = load i32, ptr %96, align 8, !tbaa !533
  %98 = getelementptr inbounds %struct.edge_def, ptr %4, i64 0, i32 8
  %99 = load i32, ptr %98, align 4, !tbaa !534
  %100 = mul nsw i32 %99, %97
  %101 = add nsw i32 %100, 5000
  %102 = sdiv i32 %101, 10000
  %103 = sub nsw i32 %93, %88
  br label %106

104:                                              ; preds = %92
  %105 = sub nsw i32 %93, %88
  br label %106

106:                                              ; preds = %104, %94
  %107 = phi i32 [ %105, %104 ], [ %103, %94 ]
  %108 = phi i32 [ %105, %104 ], [ %102, %94 ]
  %109 = tail call i32 @llvm.smin.i32(i32 %108, i32 %107)
  %110 = mul nsw i32 %88, 10000
  %111 = sdiv i32 %93, 2
  %112 = add nsw i32 %111, %110
  %113 = sdiv i32 %112, %93
  %114 = add nsw i32 %109, %88
  %115 = mul nsw i32 %114, 10000
  %116 = add nsw i32 %115, %111
  %117 = sdiv i32 %116, %93
  br i1 %30, label %146, label %118, !prof !552

118:                                              ; preds = %106
  %119 = getelementptr inbounds %struct.edge_def, ptr %4, i64 0, i32 8
  %120 = load i32, ptr %119, align 4, !tbaa !534
  %121 = icmp eq i32 %120, 10000
  br i1 %121, label %146, label %122, !prof !552

122:                                              ; preds = %118
  %123 = sub nsw i32 10000, %120
  %124 = sdiv i32 %123, 2
  %125 = add nsw i32 %124, 100000000
  %126 = sdiv i32 %125, %123
  %127 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #18
  %128 = icmp eq i32 %44, 0
  br i1 %128, label %146, label %129, !prof !554

129:                                              ; preds = %122
  %130 = zext i32 %44 to i64
  br label %131

131:                                              ; preds = %129, %143
  %132 = phi i64 [ 0, %129 ], [ %144, %143 ]
  %133 = getelementptr inbounds ptr, ptr %45, i64 %132
  %134 = load ptr, ptr %133, align 8, !tbaa !321
  %135 = load ptr, ptr %4, align 8, !tbaa !310
  %136 = icmp eq ptr %134, %135
  br i1 %136, label %143, label %137, !prof !555

137:                                              ; preds = %131
  %138 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %134, ptr noundef %135) #18
  %139 = icmp eq i8 %138, 0
  br i1 %139, label %143, label %140, !prof !556

140:                                              ; preds = %137
  %141 = trunc i64 %132 to i32
  %142 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %127, i32 noundef %141) #18
  br label %143

143:                                              ; preds = %131, %137, %140
  %144 = add nuw nsw i64 %132, 1
  %145 = icmp eq i64 %144, %130
  br i1 %145, label %146, label %131, !prof !557, !llvm.loop !558

146:                                              ; preds = %143, %122, %118, %106
  %147 = phi i32 [ 0, %118 ], [ 0, %106 ], [ %126, %122 ], [ %126, %143 ]
  %148 = phi ptr [ null, %118 ], [ null, %106 ], [ %127, %122 ], [ %127, %143 ]
  %149 = zext i32 %2 to i64
  %150 = shl nuw nsw i64 %149, 2
  %151 = tail call ptr @xmalloc(i64 noundef %150) #18
  br i1 %27, label %171, label %152, !prof !554

152:                                              ; preds = %146
  %153 = add i32 %2, 1
  %154 = tail call i32 @llvm.umax.i32(i32 %153, i32 2)
  %155 = zext i32 %154 to i64
  %156 = getelementptr i32, ptr %151, i64 -1
  br label %157

157:                                              ; preds = %152, %157
  %158 = phi i64 [ 1, %152 ], [ %169, %157 ]
  %159 = lshr i64 %158, 6
  %160 = and i64 %159, 67108863
  %161 = getelementptr inbounds %struct.simple_bitmap_def, ptr %3, i64 0, i32 3, i64 %160
  %162 = load i64, ptr %161, align 8, !tbaa !337
  %163 = and i64 %158, 63
  %164 = shl nuw i64 1, %163
  %165 = and i64 %162, %164
  %166 = icmp eq i64 %165, 0
  %167 = select i1 %166, i32 %113, i32 %117, !prof !559
  %168 = getelementptr i32, ptr %156, i64 %158
  store i32 %167, ptr %168, align 4, !tbaa !333
  %169 = add nuw nsw i64 %158, 1
  %170 = icmp eq i64 %169, %155
  br i1 %170, label %171, label %157, !prof !560, !llvm.loop !561

171:                                              ; preds = %157, %146
  %172 = and i32 %6, 4
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %208, label %174, !prof !552

174:                                              ; preds = %171
  %175 = load ptr, ptr %1, align 8, !tbaa !310
  %176 = getelementptr inbounds %struct.basic_block_def, ptr %175, i64 0, i32 11
  %177 = load i32, ptr %176, align 8, !tbaa !533
  %178 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 8
  %179 = load i32, ptr %178, align 4, !tbaa !534
  %180 = mul nsw i32 %179, %177
  %181 = add nsw i32 %180, 5000
  %182 = sdiv i32 %181, 10000
  %183 = icmp sgt i32 %182, %93
  br i1 %183, label %184, label %185, !prof !552

184:                                              ; preds = %174
  br label %185

185:                                              ; preds = %184, %174
  %186 = phi i32 [ %93, %184 ], [ %182, %174 ]
  br i1 %21, label %187, label %188, !prof !552

187:                                              ; preds = %185
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1078, ptr noundef nonnull @.str.1) #18
  br label %188

188:                                              ; preds = %185, %187
  %189 = mul nsw i32 %186, 10000
  %190 = add nsw i32 %189, %111
  %191 = sdiv i32 %190, %93
  br i1 %27, label %206, label %192, !prof !554

192:                                              ; preds = %188, %192
  %193 = phi i64 [ %200, %192 ], [ 0, %188 ]
  %194 = phi i32 [ %199, %192 ], [ %186, %188 ]
  %195 = getelementptr inbounds i32, ptr %151, i64 %193
  %196 = load i32, ptr %195, align 4, !tbaa !333
  %197 = mul nsw i32 %196, %194
  %198 = add nsw i32 %197, 5000
  %199 = sdiv i32 %198, 10000
  %200 = add nuw nsw i64 %193, 1
  %201 = icmp eq i64 %200, %149
  br i1 %201, label %202, label %192, !prof !560, !llvm.loop !562

202:                                              ; preds = %192
  %203 = mul nsw i32 %199, 10000
  %204 = add nsw i32 %203, %111
  %205 = sdiv i32 %204, %93
  br label %206

206:                                              ; preds = %202, %188
  %207 = phi i32 [ %205, %202 ], [ %191, %188 ]
  store i32 %2, ptr %11, align 4, !tbaa !333
  br label %249

208:                                              ; preds = %171
  br i1 %21, label %210, label %209

209:                                              ; preds = %208
  br i1 %27, label %246, label %236

210:                                              ; preds = %208
  %211 = getelementptr inbounds %struct.simple_bitmap_def, ptr %3, i64 0, i32 3
  %212 = load i64, ptr %211, align 8, !tbaa !337
  %213 = and i64 %212, 1
  %214 = icmp eq i64 %213, 0
  %215 = select i1 %214, i32 %113, i32 %117
  br i1 %27, label %228, label %216

216:                                              ; preds = %210, %216
  %217 = phi i64 [ %226, %216 ], [ 0, %210 ]
  %218 = phi i32 [ %225, %216 ], [ %215, %210 ]
  %219 = phi i32 [ %220, %216 ], [ 10000, %210 ]
  %220 = add nsw i32 %218, %219
  %221 = getelementptr inbounds i32, ptr %151, i64 %217
  %222 = load i32, ptr %221, align 4, !tbaa !333
  %223 = mul nsw i32 %222, %218
  %224 = add nsw i32 %223, 5000
  %225 = sdiv i32 %224, 10000
  %226 = add nuw nsw i64 %217, 1
  %227 = icmp eq i64 %226, %149
  br i1 %227, label %228, label %216, !llvm.loop !563

228:                                              ; preds = %216, %210
  %229 = phi i32 [ 10000, %210 ], [ %220, %216 ]
  store i32 %2, ptr %11, align 4, !tbaa !333
  %230 = sdiv i32 %229, 2
  %231 = add nsw i32 %230, 100000000
  %232 = sdiv i32 %231, %229
  %233 = mul nsw i32 %232, %215
  %234 = add nsw i32 %233, 5000
  %235 = sdiv i32 %234, 10000
  br label %249

236:                                              ; preds = %209, %236
  %237 = phi i64 [ %244, %236 ], [ 0, %209 ]
  %238 = phi i32 [ %243, %236 ], [ 10000, %209 ]
  %239 = getelementptr inbounds i32, ptr %151, i64 %237
  %240 = load i32, ptr %239, align 4, !tbaa !333
  %241 = mul nsw i32 %240, %238
  %242 = add nsw i32 %241, 5000
  %243 = sdiv i32 %242, 10000
  %244 = add nuw nsw i64 %237, 1
  %245 = icmp eq i64 %244, %149
  br i1 %245, label %246, label %236, !llvm.loop !564

246:                                              ; preds = %236, %209
  %247 = phi i32 [ 10000, %209 ], [ %243, %236 ]
  store i32 %2, ptr %11, align 4, !tbaa !333
  %248 = sub nsw i32 10000, %113
  br label %249

249:                                              ; preds = %228, %246, %206
  %250 = phi i32 [ %207, %206 ], [ %232, %228 ], [ %247, %246 ]
  %251 = phi i32 [ %191, %206 ], [ %235, %228 ], [ %248, %246 ]
  br i1 %27, label %261, label %252, !prof !554

252:                                              ; preds = %249, %258
  %253 = phi i64 [ %259, %258 ], [ 0, %249 ]
  %254 = getelementptr inbounds i32, ptr %151, i64 %253
  %255 = load i32, ptr %254, align 4, !tbaa !333
  %256 = icmp ult i32 %255, 10001
  br i1 %256, label %258, label %257, !prof !565

257:                                              ; preds = %252
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1113, ptr noundef nonnull @.str.1) #18
  br label %258

258:                                              ; preds = %252, %257
  %259 = add nuw nsw i64 %253, 1
  %260 = icmp eq i64 %259, %149
  br i1 %260, label %261, label %252, !prof !560, !llvm.loop !566

261:                                              ; preds = %258, %249
  %262 = icmp ult i32 %250, 10001
  %263 = icmp sgt i32 %251, -1
  %264 = select i1 %262, i1 %263, i1 false
  %265 = icmp slt i32 %251, 10001
  %266 = select i1 %264, i1 %265, i1 false
  br i1 %266, label %268, label %267, !prof !567

267:                                              ; preds = %261
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1115, ptr noundef nonnull @.str.1) #18
  br label %268

268:                                              ; preds = %267, %261, %74
  %269 = phi ptr [ %151, %261 ], [ %151, %267 ], [ null, %74 ]
  %270 = phi i32 [ %250, %261 ], [ %250, %267 ], [ 0, %74 ]
  %271 = phi i32 [ %147, %261 ], [ %147, %267 ], [ 0, %74 ]
  %272 = phi i32 [ %251, %261 ], [ %251, %267 ], [ 0, %74 ]
  %273 = phi ptr [ %148, %261 ], [ %148, %267 ], [ null, %74 ]
  %274 = load ptr, ptr %1, align 8, !tbaa !310
  %275 = getelementptr inbounds %struct.basic_block_def, ptr %274, i64 0, i32 3
  %276 = load ptr, ptr %275, align 8, !tbaa !311
  %277 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 8
  %278 = load ptr, ptr %277, align 8, !tbaa !321
  %279 = icmp eq ptr %278, null
  br i1 %279, label %287, label %280, !prof !568

280:                                              ; preds = %268, %280
  %281 = phi ptr [ %285, %280 ], [ %278, %268 ]
  %282 = phi i32 [ %283, %280 ], [ 0, %268 ]
  %283 = add i32 %282, 1
  %284 = getelementptr inbounds %struct.loop, ptr %281, i64 0, i32 9
  %285 = load ptr, ptr %284, align 8, !tbaa !321
  %286 = icmp eq ptr %285, null
  br i1 %286, label %287, label %280, !prof !569, !llvm.loop !570

287:                                              ; preds = %280, %268
  %288 = phi i32 [ 0, %268 ], [ %283, %280 ]
  %289 = zext i32 %288 to i64
  %290 = tail call ptr @xcalloc(i64 noundef %289, i64 noundef 8) #18
  %291 = load ptr, ptr %277, align 8, !tbaa !321
  %292 = icmp eq ptr %291, null
  br i1 %292, label %302, label %293, !prof !568

293:                                              ; preds = %287, %293
  %294 = phi ptr [ %300, %293 ], [ %291, %287 ]
  %295 = phi i32 [ %299, %293 ], [ 0, %287 ]
  %296 = zext i32 %295 to i64
  %297 = getelementptr inbounds ptr, ptr %290, i64 %296
  store ptr %294, ptr %297, align 8, !tbaa !321
  %298 = getelementptr inbounds %struct.loop, ptr %294, i64 0, i32 9
  %299 = add i32 %295, 1
  %300 = load ptr, ptr %298, align 8, !tbaa !321
  %301 = icmp eq ptr %300, null
  br i1 %301, label %302, label %293, !prof !569, !llvm.loop !571

302:                                              ; preds = %293, %287
  %303 = phi i32 [ 0, %287 ], [ %299, %293 ]
  store i32 %303, ptr %11, align 4, !tbaa !333
  tail call void @set_loop_copy(ptr noundef %0, ptr noundef %276) #18
  %304 = zext i32 %44 to i64
  %305 = shl nuw nsw i64 %304, 3
  %306 = tail call ptr @xmalloc(i64 noundef %305) #18
  br i1 %21, label %307, label %308, !prof !550

307:                                              ; preds = %302
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %306, ptr nonnull align 8 %45, i64 %305, i1 false)
  br label %308

308:                                              ; preds = %307, %302
  %309 = phi ptr [ %19, %307 ], [ null, %302 ]
  %310 = getelementptr inbounds [2 x ptr], ptr %9, i64 0, i64 1
  store ptr %4, ptr %310, align 8, !tbaa !321
  store ptr %75, ptr %9, align 16, !tbaa !321
  br i1 %27, label %487, label %311, !prof !572

311:                                              ; preds = %308
  %312 = load ptr, ptr %1, align 8, !tbaa !310
  %313 = and i32 %6, 2
  %314 = icmp eq i32 %313, 0
  %315 = icmp eq i32 %70, 0
  %316 = getelementptr inbounds ptr, ptr %67, i64 %52
  %317 = icmp eq ptr %5, null
  %318 = getelementptr inbounds [2 x ptr], ptr %10, i64 0, i64 1
  %319 = icmp eq ptr %273, null
  %320 = zext i32 %2 to i64
  br label %321

321:                                              ; preds = %311, %483
  %322 = phi i64 [ 0, %311 ], [ %485, %483 ]
  %323 = phi ptr [ %1, %311 ], [ %444, %483 ]
  %324 = phi ptr [ %312, %311 ], [ %330, %483 ]
  %325 = phi ptr [ %19, %311 ], [ %443, %483 ]
  %326 = phi ptr [ %309, %311 ], [ %476, %483 ]
  %327 = phi ptr [ %75, %311 ], [ %442, %483 ]
  %328 = phi i32 [ %272, %311 ], [ %484, %483 ]
  call fastcc void @copy_loops_to(ptr noundef %290, i32 noundef %288, ptr noundef %276) #19
  call void @copy_bbs(ptr noundef nonnull %45, i32 noundef %44, ptr noundef %67, ptr noundef nonnull %9, i32 noundef 2, ptr noundef nonnull %10, ptr noundef %0, ptr noundef %324) #18
  %329 = load ptr, ptr %10, align 16, !tbaa !321
  %330 = load ptr, ptr %329, align 8, !tbaa !310
  br i1 %314, label %351, label %331, !prof !573

331:                                              ; preds = %321
  %332 = icmp eq i32 %44, 0
  br i1 %332, label %350, label %333

333:                                              ; preds = %331
  %334 = add nuw nsw i64 %322, 1
  %335 = inttoptr i64 %334 to ptr
  br label %336

336:                                              ; preds = %333, %345
  %337 = phi i64 [ 0, %333 ], [ %348, %345 ]
  %338 = getelementptr inbounds ptr, ptr %67, i64 %337
  %339 = load ptr, ptr %338, align 8, !tbaa !321
  %340 = getelementptr inbounds %struct.basic_block_def, ptr %339, i64 0, i32 2
  %341 = load ptr, ptr %340, align 8, !tbaa !574
  %342 = icmp eq ptr %341, null
  br i1 %342, label %345, label %343

343:                                              ; preds = %336
  call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1155, ptr noundef nonnull @.str.1) #18
  %344 = load ptr, ptr %338, align 8, !tbaa !321
  br label %345

345:                                              ; preds = %336, %343
  %346 = phi ptr [ %339, %336 ], [ %344, %343 ]
  %347 = getelementptr inbounds %struct.basic_block_def, ptr %346, i64 0, i32 2
  store ptr %335, ptr %347, align 8, !tbaa !574
  %348 = add nuw nsw i64 %337, 1
  %349 = icmp eq i64 %348, %304
  br i1 %349, label %350, label %336, !llvm.loop !575

350:                                              ; preds = %345, %331
  store i32 %44, ptr %11, align 4, !tbaa !333
  br label %351

351:                                              ; preds = %350, %321
  br i1 %315, label %422, label %352, !prof !573

352:                                              ; preds = %351
  %353 = icmp eq i32 %44, 0
  br i1 %353, label %421, label %357

354:                                              ; preds = %357
  store i32 %44, ptr %11, align 4, !tbaa !333
  br i1 %353, label %421, label %355

355:                                              ; preds = %354
  %356 = getelementptr inbounds i8, ptr %13, i64 8
  br label %367

357:                                              ; preds = %352, %357
  %358 = phi i64 [ %364, %357 ], [ 0, %352 ]
  %359 = getelementptr inbounds ptr, ptr %67, i64 %358
  %360 = load ptr, ptr %359, align 8, !tbaa !321
  %361 = getelementptr inbounds %struct.basic_block_def, ptr %360, i64 0, i32 13
  %362 = load i32, ptr %361, align 8, !tbaa !504
  %363 = or i32 %362, 128
  store i32 %363, ptr %361, align 8, !tbaa !504
  %364 = add nuw nsw i64 %358, 1
  %365 = icmp eq i64 %364, %304
  br i1 %365, label %354, label %357, !llvm.loop !576

366:                                              ; preds = %409
  br i1 %353, label %421, label %412

367:                                              ; preds = %355, %409
  %368 = phi i64 [ %410, %409 ], [ 0, %355 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #17
  %369 = getelementptr inbounds ptr, ptr %67, i64 %368
  %370 = load ptr, ptr %369, align 8, !tbaa !321
  %371 = getelementptr inbounds %struct.basic_block_def, ptr %370, i64 0, i32 3
  %372 = load ptr, ptr %371, align 8, !tbaa !311
  %373 = icmp eq ptr %372, %276
  br i1 %373, label %374, label %378

374:                                              ; preds = %367
  %375 = getelementptr inbounds %struct.basic_block_def, ptr %370, i64 0, i32 13
  %376 = load i32, ptr %375, align 8, !tbaa !504
  %377 = or i32 %376, 4
  store i32 %377, ptr %375, align 8, !tbaa !504
  br label %378

378:                                              ; preds = %374, %367
  %379 = getelementptr inbounds %struct.basic_block_def, ptr %370, i64 0, i32 1
  %380 = call fastcc ptr @ei_start_1(ptr noundef nonnull %379) #19
  store i32 0, ptr %13, align 8, !tbaa.struct !332
  store ptr %380, ptr %356, align 8, !tbaa.struct !334
  %381 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %380, ptr noundef nonnull %8) #19, !range !308
  %382 = icmp eq i8 %381, 0
  br i1 %382, label %409, label %383

383:                                              ; preds = %378, %404
  %384 = load ptr, ptr %8, align 8, !tbaa !321
  %385 = getelementptr inbounds %struct.edge_def, ptr %384, i64 0, i32 1
  %386 = load ptr, ptr %385, align 8, !tbaa !307
  %387 = getelementptr inbounds %struct.basic_block_def, ptr %386, i64 0, i32 13
  %388 = load i32, ptr %387, align 8, !tbaa !504
  %389 = and i32 %388, 128
  %390 = icmp eq i32 %389, 0
  br i1 %390, label %404, label %391

391:                                              ; preds = %383
  %392 = load ptr, ptr %384, align 8, !tbaa !310
  %393 = getelementptr inbounds %struct.basic_block_def, ptr %392, i64 0, i32 3
  %394 = load ptr, ptr %393, align 8, !tbaa !311
  %395 = icmp eq ptr %394, %276
  br i1 %395, label %400, label %396

396:                                              ; preds = %391
  %397 = getelementptr inbounds %struct.basic_block_def, ptr %386, i64 0, i32 3
  %398 = load ptr, ptr %397, align 8, !tbaa !311
  %399 = icmp eq ptr %398, %276
  br i1 %399, label %400, label %404

400:                                              ; preds = %396, %391
  %401 = getelementptr inbounds %struct.edge_def, ptr %384, i64 0, i32 7
  %402 = load i32, ptr %401, align 8, !tbaa !301
  %403 = or i32 %402, 128
  store i32 %403, ptr %401, align 8, !tbaa !301
  br label %404

404:                                              ; preds = %383, %396, %400
  call fastcc void @ei_next(ptr noundef nonnull %13) #19
  %405 = load i32, ptr %13, align 8
  %406 = load ptr, ptr %356, align 8
  %407 = call fastcc zeroext i8 @ei_cond(i32 %405, ptr %406, ptr noundef nonnull %8) #19, !range !308
  %408 = icmp eq i8 %407, 0
  br i1 %408, label %409, label %383, !llvm.loop !577

409:                                              ; preds = %404, %378
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #17
  %410 = add nuw nsw i64 %368, 1
  %411 = icmp eq i64 %410, %304
  br i1 %411, label %366, label %367, !llvm.loop !578

412:                                              ; preds = %366, %412
  %413 = phi i64 [ %419, %412 ], [ 0, %366 ]
  %414 = getelementptr inbounds ptr, ptr %67, i64 %413
  %415 = load ptr, ptr %414, align 8, !tbaa !321
  %416 = getelementptr inbounds %struct.basic_block_def, ptr %415, i64 0, i32 13
  %417 = load i32, ptr %416, align 8, !tbaa !504
  %418 = and i32 %417, -129
  store i32 %418, ptr %416, align 8, !tbaa !504
  %419 = add nuw nsw i64 %413, 1
  %420 = icmp eq i64 %419, %304
  br i1 %420, label %421, label %412, !llvm.loop !579

421:                                              ; preds = %412, %354, %352, %366
  store i32 %44, ptr %11, align 4, !tbaa !333
  br label %422

422:                                              ; preds = %421, %351
  br i1 %21, label %423, label %432, !prof !358

423:                                              ; preds = %422
  %424 = load ptr, ptr %67, align 8, !tbaa !321
  %425 = call ptr @redirect_edge_and_branch_force(ptr noundef %327, ptr noundef %424) #18
  %426 = load ptr, ptr %10, align 16, !tbaa !321
  %427 = load ptr, ptr %16, align 8, !tbaa !343
  %428 = call ptr @redirect_edge_and_branch_force(ptr noundef %426, ptr noundef %427) #18
  %429 = load ptr, ptr %67, align 8, !tbaa !321
  call void @set_immediate_dominator(i32 noundef 1, ptr noundef %429, ptr noundef %325) #18
  %430 = load ptr, ptr %316, align 8, !tbaa !321
  store ptr %430, ptr %18, align 8, !tbaa !314
  %431 = load ptr, ptr %10, align 16, !tbaa !321
  br label %441

432:                                              ; preds = %422
  %433 = load ptr, ptr %10, align 16, !tbaa !321
  %434 = load ptr, ptr %16, align 8, !tbaa !343
  %435 = call ptr @redirect_edge_and_branch_force(ptr noundef %433, ptr noundef %434) #18
  %436 = load ptr, ptr %67, align 8, !tbaa !321
  %437 = call ptr @redirect_edge_and_branch_force(ptr noundef %323, ptr noundef %436) #18
  %438 = load ptr, ptr %67, align 8, !tbaa !321
  %439 = load ptr, ptr %323, align 8, !tbaa !310
  call void @set_immediate_dominator(i32 noundef 1, ptr noundef %438, ptr noundef %439) #18
  %440 = load ptr, ptr %10, align 16, !tbaa !321
  br label %441

441:                                              ; preds = %432, %423
  %442 = phi ptr [ %431, %423 ], [ %327, %432 ]
  %443 = phi ptr [ %430, %423 ], [ %325, %432 ]
  %444 = phi ptr [ %431, %423 ], [ %440, %432 ]
  br i1 %30, label %471, label %445, !prof !580

445:                                              ; preds = %441
  %446 = trunc i64 %322 to i32
  %447 = add i32 %446, 1
  %448 = lshr i32 %447, 6
  %449 = zext nneg i32 %448 to i64
  %450 = getelementptr inbounds %struct.simple_bitmap_def, ptr %3, i64 0, i32 3, i64 %449
  %451 = load i64, ptr %450, align 8, !tbaa !337
  %452 = and i32 %447, 63
  %453 = zext nneg i32 %452 to i64
  %454 = shl nuw i64 1, %453
  %455 = and i64 %451, %454
  %456 = icmp eq i64 %455, 0
  br i1 %456, label %471, label %457, !prof !559

457:                                              ; preds = %445
  br i1 %317, label %460, label %458, !prof !559

458:                                              ; preds = %457
  %459 = load ptr, ptr %318, align 8, !tbaa !321
  call fastcc void @VEC_edge_heap_safe_push(ptr noundef nonnull %5, ptr noundef %459) #19
  br label %460

460:                                              ; preds = %458, %457
  %461 = load ptr, ptr %318, align 8, !tbaa !321
  call fastcc void @set_zero_probability(ptr noundef %461) #19
  br i1 %319, label %471, label %462, !prof !559

462:                                              ; preds = %460
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %12, ptr noundef nonnull %273, ptr noundef nonnull %11) #19
  %463 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %12, ptr noundef nonnull %11) #19, !range !308
  %464 = icmp eq i8 %463, 0
  br i1 %464, label %471, label %465, !prof !581

465:                                              ; preds = %462, %465
  %466 = load i32, ptr %11, align 4, !tbaa !333
  %467 = zext i32 %466 to i64
  %468 = getelementptr inbounds ptr, ptr %67, i64 %467
  call void @scale_bbs_frequencies_int(ptr noundef %468, i32 noundef 1, i32 noundef %271, i32 noundef 10000) #18
  call fastcc void @bmp_iter_next(ptr noundef nonnull %12, ptr noundef nonnull %11) #19
  %469 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %12, ptr noundef nonnull %11) #19, !range !308
  %470 = icmp eq i8 %469, 0
  br i1 %470, label %471, label %465, !prof !582, !llvm.loop !583

471:                                              ; preds = %465, %462, %460, %445, %441
  %472 = icmp eq ptr %326, null
  br i1 %472, label %473, label %475, !prof !584

473:                                              ; preds = %471
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %306, ptr align 8 %67, i64 %305, i1 false)
  %474 = load ptr, ptr %316, align 8, !tbaa !321
  br label %475

475:                                              ; preds = %473, %471
  %476 = phi ptr [ %326, %471 ], [ %474, %473 ]
  br i1 %77, label %483, label %477, !prof !580

477:                                              ; preds = %475
  call void @scale_bbs_frequencies_int(ptr noundef %67, i32 noundef %44, i32 noundef %328, i32 noundef 10000) #18
  %478 = getelementptr inbounds i32, ptr %269, i64 %322
  %479 = load i32, ptr %478, align 4, !tbaa !333
  %480 = mul nsw i32 %479, %328
  %481 = add nsw i32 %480, 5000
  %482 = sdiv i32 %481, 10000
  br label %483

483:                                              ; preds = %475, %477
  %484 = phi i32 [ %482, %477 ], [ %328, %475 ]
  %485 = add nuw nsw i64 %322, 1
  %486 = icmp eq i64 %485, %320
  br i1 %486, label %487, label %321, !prof !585, !llvm.loop !586

487:                                              ; preds = %483, %308
  %488 = phi ptr [ %309, %308 ], [ %476, %483 ]
  %489 = phi ptr [ %1, %308 ], [ %444, %483 ]
  call void @free(ptr noundef %67) #19
  call void @free(ptr noundef %290) #19
  br i1 %30, label %509, label %490, !prof !551

490:                                              ; preds = %487
  %491 = getelementptr inbounds %struct.simple_bitmap_def, ptr %3, i64 0, i32 3
  %492 = load i64, ptr %491, align 8, !tbaa !337
  %493 = and i64 %492, 1
  %494 = icmp eq i64 %493, 0
  br i1 %494, label %509, label %495, !prof !553

495:                                              ; preds = %490
  %496 = icmp eq ptr %5, null
  br i1 %496, label %498, label %497

497:                                              ; preds = %495
  call fastcc void @VEC_edge_heap_safe_push(ptr noundef nonnull %5, ptr noundef nonnull %4) #19
  br label %498

498:                                              ; preds = %497, %495
  call fastcc void @set_zero_probability(ptr noundef nonnull %4) #19
  %499 = icmp eq ptr %273, null
  br i1 %499, label %509, label %500

500:                                              ; preds = %498
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %12, ptr noundef nonnull %273, ptr noundef nonnull %11) #19
  %501 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %12, ptr noundef nonnull %11) #19, !range !308
  %502 = icmp eq i8 %501, 0
  br i1 %502, label %509, label %503

503:                                              ; preds = %500, %503
  %504 = load i32, ptr %11, align 4, !tbaa !333
  %505 = zext i32 %504 to i64
  %506 = getelementptr inbounds ptr, ptr %45, i64 %505
  call void @scale_bbs_frequencies_int(ptr noundef nonnull %506, i32 noundef 1, i32 noundef %271, i32 noundef 10000) #18
  call fastcc void @bmp_iter_next(ptr noundef nonnull %12, ptr noundef nonnull %11) #19
  %507 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %12, ptr noundef nonnull %11) #19, !range !308
  %508 = icmp eq i8 %507, 0
  br i1 %508, label %509, label %503, !llvm.loop !587

509:                                              ; preds = %503, %500, %498, %490, %487
  br i1 %21, label %514, label %510, !prof !550

510:                                              ; preds = %509
  %511 = getelementptr inbounds %struct.edge_def, ptr %489, i64 0, i32 1
  %512 = load ptr, ptr %511, align 8, !tbaa !307
  %513 = load ptr, ptr %489, align 8, !tbaa !310
  call void @set_immediate_dominator(i32 noundef 1, ptr noundef %512, ptr noundef %513) #18
  br label %514

514:                                              ; preds = %510, %509
  br i1 %77, label %516, label %515, !prof !551

515:                                              ; preds = %514
  call void @scale_bbs_frequencies_int(ptr noundef nonnull %45, i32 noundef %44, i32 noundef %270, i32 noundef 10000) #18
  call void @free(ptr noundef %269) #19
  br label %516

516:                                              ; preds = %515, %514
  store i32 0, ptr %11, align 4, !tbaa !333
  %517 = icmp eq i32 %44, 0
  br i1 %517, label %552, label %518, !prof !572

518:                                              ; preds = %516, %548
  %519 = phi i32 [ %550, %548 ], [ 0, %516 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #17
  %520 = zext i32 %519 to i64
  %521 = getelementptr inbounds ptr, ptr %45, i64 %520
  %522 = load ptr, ptr %521, align 8, !tbaa !321
  %523 = getelementptr inbounds %struct.basic_block_def, ptr %522, i64 0, i32 2
  store ptr null, ptr %523, align 8, !tbaa !574
  %524 = call ptr @get_dominated_by(i32 noundef 1, ptr noundef %522) #18
  store ptr %524, ptr %15, align 8, !tbaa !321
  %525 = call fastcc i32 @VEC_basic_block_base_iterate(ptr noundef %524, i32 noundef 0, ptr noundef nonnull %14) #19, !range !451
  %526 = icmp eq i32 %525, 0
  br i1 %526, label %548, label %527, !prof !588

527:                                              ; preds = %518, %541
  %528 = phi ptr [ %542, %541 ], [ %524, %518 ]
  %529 = phi i32 [ %543, %541 ], [ 0, %518 ]
  %530 = load ptr, ptr %14, align 8, !tbaa !321
  %531 = call zeroext i8 @flow_bb_inside_loop_p(ptr noundef %0, ptr noundef %530) #18
  %532 = icmp eq i8 %531, 0
  br i1 %532, label %533, label %541, !prof !589

533:                                              ; preds = %527
  %534 = load i32, ptr %11, align 4, !tbaa !333
  %535 = zext i32 %534 to i64
  %536 = getelementptr inbounds ptr, ptr %306, i64 %535
  %537 = load ptr, ptr %536, align 8, !tbaa !321
  %538 = call ptr @nearest_common_dominator(i32 noundef 1, ptr noundef %537, ptr noundef %488) #18
  %539 = load ptr, ptr %14, align 8, !tbaa !321
  call void @set_immediate_dominator(i32 noundef 1, ptr noundef %539, ptr noundef %538) #18
  %540 = load ptr, ptr %15, align 8
  br label %541

541:                                              ; preds = %527, %533
  %542 = phi ptr [ %528, %527 ], [ %540, %533 ]
  %543 = add i32 %529, 1
  %544 = call fastcc i32 @VEC_basic_block_base_iterate(ptr noundef %542, i32 noundef %543, ptr noundef nonnull %14) #19, !range !451
  %545 = icmp eq i32 %544, 0
  br i1 %545, label %546, label %527, !prof !590, !llvm.loop !591

546:                                              ; preds = %541
  %547 = load i32, ptr %11, align 4, !tbaa !333
  br label %548

548:                                              ; preds = %546, %518
  %549 = phi i32 [ %547, %546 ], [ %519, %518 ]
  call fastcc void @VEC_basic_block_heap_free(ptr noundef nonnull %15) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #17
  %550 = add i32 %549, 1
  store i32 %550, ptr %11, align 4, !tbaa !333
  %551 = icmp ult i32 %550, %44
  br i1 %551, label %518, label %552, !prof !592, !llvm.loop !593

552:                                              ; preds = %548, %516
  call void @free(ptr noundef %306) #19
  call void @free(ptr noundef %45) #19
  call void @bitmap_obstack_free(ptr noundef %273) #18
  br label %553

553:                                              ; preds = %552, %62
  %554 = phi i8 [ 1, %552 ], [ 0, %62 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #17
  ret i8 %554
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
define internal fastcc void @copy_loops_to(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 !prof !356 !PGOFuncName !594 {
  %4 = icmp sgt i32 %1, 0
  br i1 %4, label %5, label %15, !prof !595

5:                                                ; preds = %3
  %6 = zext nneg i32 %1 to i64
  br label %7

7:                                                ; preds = %5, %7
  %8 = phi i64 [ 0, %5 ], [ %13, %7 ]
  %9 = getelementptr inbounds ptr, ptr %0, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !321
  %11 = tail call ptr @duplicate_loop(ptr noundef %10, ptr noundef %2) #19
  %12 = load ptr, ptr %9, align 8, !tbaa !321
  tail call void @duplicate_subloops(ptr noundef %12, ptr noundef %11) #19
  %13 = add nuw nsw i64 %8, 1
  %14 = icmp eq i64 %13, %6
  br i1 %14, label %15, label %7, !prof !569, !llvm.loop !596

15:                                               ; preds = %7, %3
  ret void
}

; Function Attrs: optsize
declare void @copy_bbs(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_edge_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !597 !PGOFuncName !598 {
  tail call fastcc void @VEC_edge_heap_reserve(ptr noundef %0) #19
  %3 = load ptr, ptr %0, align 8, !tbaa !321
  tail call fastcc void @VEC_edge_base_quick_push(ptr noundef %3, ptr noundef %1) #19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_zero_probability(ptr noundef %0) unnamed_addr #0 !prof !597 !PGOFuncName !599 {
  %2 = alloca %struct.edge_iterator, align 8
  %3 = alloca ptr, align 8
  %4 = load ptr, ptr %0, align 8, !tbaa !310
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #17
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !428
  %7 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %6) #19
  %8 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 9
  %9 = load i64, ptr %8, align 8, !tbaa !535
  %10 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 8
  %11 = load i32, ptr %10, align 4, !tbaa !534
  %12 = icmp ugt i32 %7, 1
  br i1 %12, label %14, label %13, !prof !600

13:                                               ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 938, ptr noundef nonnull @.str.1) #18
  br label %14

14:                                               ; preds = %1, %13
  %15 = add i32 %7, -1
  %16 = zext i32 %15 to i64
  %17 = sdiv i64 %9, %16
  %18 = srem i64 %9, %16
  %19 = udiv i32 %11, %15
  %20 = urem i32 %11, %15
  %21 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %5) #19
  store i32 0, ptr %2, align 8, !tbaa.struct !332
  %22 = getelementptr inbounds i8, ptr %2, i64 8
  store ptr %21, ptr %22, align 8, !tbaa.struct !334
  %23 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %21, ptr noundef nonnull %3) #19, !range !308
  %24 = icmp ne i8 %23, 0
  tail call void @llvm.assume(i1 %24)
  br label %25

25:                                               ; preds = %14, %36
  %26 = phi ptr [ %37, %36 ], [ null, %14 ]
  %27 = load ptr, ptr %3, align 8, !tbaa !321
  %28 = icmp eq ptr %27, %0
  br i1 %28, label %36, label %29, !prof !601

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.edge_def, ptr %27, i64 0, i32 8
  %31 = load i32, ptr %30, align 4, !tbaa !534
  %32 = add i32 %31, %19
  store i32 %32, ptr %30, align 4, !tbaa !534
  %33 = getelementptr inbounds %struct.edge_def, ptr %27, i64 0, i32 9
  %34 = load i64, ptr %33, align 8, !tbaa !535
  %35 = add nsw i64 %34, %17
  store i64 %35, ptr %33, align 8, !tbaa !535
  br label %36

36:                                               ; preds = %25, %29
  %37 = phi ptr [ %26, %25 ], [ %27, %29 ]
  call fastcc void @ei_next(ptr noundef nonnull %2) #19
  %38 = load i32, ptr %2, align 8
  %39 = load ptr, ptr %22, align 8
  %40 = call fastcc zeroext i8 @ei_cond(i32 %38, ptr %39, ptr noundef nonnull %3) #19, !range !308
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %25, !prof !602, !llvm.loop !603

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.edge_def, ptr %37, i64 0, i32 8
  %44 = load i32, ptr %43, align 4, !tbaa !534
  %45 = add i32 %44, %20
  store i32 %45, ptr %43, align 4, !tbaa !534
  %46 = getelementptr inbounds %struct.edge_def, ptr %37, i64 0, i32 9
  %47 = load i64, ptr %46, align 8, !tbaa !535
  %48 = add nsw i64 %47, %18
  store i64 %48, ptr %46, align 8, !tbaa !535
  store i32 0, ptr %10, align 4, !tbaa !534
  store i64 0, ptr %8, align 8, !tbaa !535
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bmp_iter_set_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #11 !prof !597 !PGOFuncName !604 {
  %4 = load ptr, ptr %1, align 8, !tbaa !605
  store ptr %4, ptr %0, align 8, !tbaa !607
  %5 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !609
  %6 = icmp eq ptr %4, null
  br i1 %6, label %7, label %8, !prof !559

7:                                                ; preds = %3
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !607
  br label %8

8:                                                ; preds = %3, %7
  %9 = phi ptr [ %4, %3 ], [ @bitmap_zero_bits, %7 ]
  %10 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !610
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %15, label %13, !prof !600

13:                                               ; preds = %8
  %14 = shl i32 %11, 7
  br label %15

15:                                               ; preds = %13, %8
  %16 = phi i32 [ %14, %13 ], [ 0, %8 ]
  %17 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %17, align 8, !tbaa !612
  %18 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 3
  %19 = load i64, ptr %18, align 8, !tbaa !337
  %20 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  store i64 %19, ptr %20, align 8, !tbaa !613
  %21 = icmp eq i64 %19, 0
  %22 = zext i1 %21 to i32
  %23 = or disjoint i32 %16, %22
  store i32 %23, ptr %2, align 4, !tbaa !333
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_set(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #12 !prof !614 !PGOFuncName !615 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !613
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6, !prof !616

6:                                                ; preds = %31, %2
  %7 = phi i64 [ %4, %2 ], [ %35, %31 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %51, !prof !617

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4, !tbaa !333
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %14 = phi i64 [ %7, %10 ], [ %15, %12 ]
  %15 = lshr exact i64 %14, 1
  %16 = add i32 %13, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %50, !prof !618, !llvm.loop !619

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !333
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !333
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !612
  %25 = add i32 %24, 1
  %26 = load ptr, ptr %0, align 8, !tbaa !607
  br label %27

27:                                               ; preds = %19, %46
  %28 = phi ptr [ %26, %19 ], [ %44, %46 ]
  %29 = phi i32 [ %25, %19 ], [ 0, %46 ]
  store i32 %29, ptr %23, align 8, !tbaa !612
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %43, label %31, !prof !581

31:                                               ; preds = %27, %37
  %32 = phi i32 [ %41, %37 ], [ %29, %27 ]
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !337
  store i64 %35, ptr %3, align 8, !tbaa !613
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %6, !prof !600

37:                                               ; preds = %31
  %38 = load i32, ptr %1, align 4, !tbaa !333
  %39 = add i32 %38, 64
  store i32 %39, ptr %1, align 4, !tbaa !333
  %40 = load i32, ptr %23, align 8, !tbaa !612
  %41 = add i32 %40, 1
  store i32 %41, ptr %23, align 8, !tbaa !612
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %31, !prof !620, !llvm.loop !621

43:                                               ; preds = %37, %27
  %44 = load ptr, ptr %28, align 8, !tbaa !622
  store ptr %44, ptr %0, align 8, !tbaa !607
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46, !prof !600

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !610
  %49 = shl i32 %48, 7
  store i32 %49, ptr %1, align 4, !tbaa !333
  br label %27

50:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !613
  store i32 %16, ptr %1, align 4, !tbaa !333
  br label %51

51:                                               ; preds = %43, %6, %50
  %52 = phi i8 [ 1, %50 ], [ 1, %6 ], [ 0, %43 ]
  ret i8 %52
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @bmp_iter_next(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #10 !prof !623 !PGOFuncName !624 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !613
  %5 = lshr i64 %4, 1
  store i64 %5, ptr %3, align 8, !tbaa !613
  %6 = load i32, ptr %1, align 4, !tbaa !333
  %7 = add i32 %6, 1
  store i32 %7, ptr %1, align 4, !tbaa !333
  ret void
}

; Function Attrs: optsize
declare ptr @get_dominated_by(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_basic_block_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #10 !prof !625 !PGOFuncName !626 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5, !prof !627

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !442
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12, !prof !628

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !321
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !321
  ret i32 %14
}

; Function Attrs: optsize
declare ptr @nearest_common_dominator(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_edge_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 !prof !597 !PGOFuncName !629 {
  %2 = load ptr, ptr %0, align 8, !tbaa !321
  %3 = tail call fastcc i32 @VEC_edge_base_space(ptr noundef %2) #19
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !630

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef 1) #18
  store ptr %6, ptr %0, align 8, !tbaa !321
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_edge_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #10 !prof !597 !PGOFuncName !631 {
  %3 = load i32, ptr %0, align 8, !tbaa !414
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !414
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !321
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_space(ptr noundef readonly %0) unnamed_addr #9 !prof !597 !PGOFuncName !632 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3, !prof !633

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !634
  %6 = load i32, ptr %0, align 8, !tbaa !414
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @mfb_keep_just(ptr noundef readnone %0) #13 !prof !635 {
  %2 = load ptr, ptr @mfb_kj_edge, align 8, !tbaa !321
  %3 = icmp ne ptr %2, %0
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @create_preheader(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !636 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #17
  %5 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !343
  %7 = tail call fastcc ptr @ei_start_1(ptr noundef %6) #19
  store i32 0, ptr %4, align 8, !tbaa.struct !332
  %8 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %7, ptr %8, align 8, !tbaa.struct !334
  %9 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %7, ptr noundef nonnull %3) #19, !range !308
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %43, label %11, !prof !637

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 3
  br label %13

13:                                               ; preds = %11, %32
  %14 = phi i32 [ 0, %11 ], [ %36, %32 ]
  %15 = phi i8 [ 0, %11 ], [ %35, %32 ]
  %16 = phi ptr [ null, %11 ], [ %34, %32 ]
  %17 = phi ptr [ null, %11 ], [ %33, %32 ]
  %18 = load ptr, ptr %3, align 8
  %19 = load ptr, ptr %18, align 8, !tbaa !310
  %20 = load ptr, ptr %12, align 8, !tbaa !314
  %21 = icmp eq ptr %19, %20
  br i1 %21, label %32, label %22, !prof !638

22:                                               ; preds = %13
  %23 = getelementptr inbounds %struct.edge_def, ptr %18, i64 0, i32 7
  %24 = load i32, ptr %23, align 8, !tbaa !301
  %25 = trunc i32 %24 to i8
  %26 = lshr i8 %25, 7
  %27 = or i8 %26, %15
  %28 = add nsw i32 %14, 1
  %29 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %19) #19, !range !308
  %30 = icmp eq i8 %29, 0
  %31 = select i1 %30, ptr %17, ptr %18, !prof !639
  br label %32

32:                                               ; preds = %22, %13
  %33 = phi ptr [ %17, %13 ], [ %31, %22 ]
  %34 = phi ptr [ %16, %13 ], [ %18, %22 ]
  %35 = phi i8 [ %15, %13 ], [ %27, %22 ]
  %36 = phi i32 [ %14, %13 ], [ %28, %22 ]
  call fastcc void @ei_next(ptr noundef nonnull %4) #19
  %37 = load i32, ptr %4, align 8
  %38 = load ptr, ptr %8, align 8
  %39 = call fastcc zeroext i8 @ei_cond(i32 %37, ptr %38, ptr noundef nonnull %3) #19, !range !308
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %13, !prof !640, !llvm.loop !641

41:                                               ; preds = %32
  %42 = icmp eq i8 %35, 0
  switch i32 %36, label %73 [
    i32 0, label %43
    i32 1, label %46
  ], !prof !642

43:                                               ; preds = %2, %41
  %44 = phi i1 [ %42, %41 ], [ true, %2 ]
  %45 = phi ptr [ %33, %41 ], [ null, %2 ]
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1346, ptr noundef nonnull @.str.1) #18
  br label %73

46:                                               ; preds = %41
  %47 = load ptr, ptr %34, align 8, !tbaa !310
  %48 = load ptr, ptr @cfun, align 8, !tbaa !321
  %49 = getelementptr inbounds %struct.function, ptr %48, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !322
  %51 = load ptr, ptr %50, align 8, !tbaa !643
  %52 = icmp eq ptr %47, %51
  br i1 %52, label %73, label %53, !prof !644

53:                                               ; preds = %46
  %54 = and i32 %1, 1
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %59, label %56, !prof !645

56:                                               ; preds = %53
  %57 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %47) #19, !range !308
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %73, label %59, !prof !646

59:                                               ; preds = %56, %53
  %60 = and i32 %1, 2
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %128, label %62, !prof !647

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.basic_block_def, ptr %47, i64 0, i32 7
  %64 = load ptr, ptr %63, align 8, !tbaa !297
  %65 = getelementptr inbounds %struct.rtl_bb_info, ptr %64, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !648
  %67 = load i32, ptr %66, align 8
  %68 = and i32 %67, 65535
  %69 = icmp eq i32 %68, 9
  br i1 %69, label %73, label %70

70:                                               ; preds = %62
  %71 = tail call fastcc zeroext i8 @has_preds_from_loop(ptr noundef nonnull %47, ptr noundef nonnull %0) #19, !range !308
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %128, label %73

73:                                               ; preds = %46, %56, %70, %62, %43, %41
  %74 = phi i1 [ %42, %46 ], [ %42, %56 ], [ %42, %70 ], [ %42, %62 ], [ %44, %43 ], [ %42, %41 ]
  %75 = phi ptr [ %33, %46 ], [ %33, %56 ], [ %33, %70 ], [ %33, %62 ], [ %45, %43 ], [ %33, %41 ]
  %76 = tail call ptr @loop_latch_edge(ptr noundef nonnull %0) #18
  store ptr %76, ptr @mfb_kj_edge, align 8, !tbaa !321
  %77 = getelementptr inbounds %struct.edge_def, ptr %76, i64 0, i32 7
  %78 = load i32, ptr %77, align 8, !tbaa !301
  %79 = load ptr, ptr %5, align 8, !tbaa !343
  %80 = tail call ptr @make_forwarder_block(ptr noundef %79, ptr noundef nonnull @mfb_keep_just, ptr noundef null) #18
  %81 = load ptr, ptr %80, align 8, !tbaa !310
  %82 = getelementptr inbounds %struct.edge_def, ptr %80, i64 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !307
  store ptr %83, ptr %5, align 8, !tbaa !343
  %84 = and i32 %78, 1
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %95, label %86, !prof !650

86:                                               ; preds = %73
  %87 = icmp eq ptr %75, null
  br i1 %87, label %88, label %91, !prof !651

88:                                               ; preds = %86
  %89 = load ptr, ptr %81, align 8, !tbaa !355
  %90 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %89, i32 noundef 0) #19
  br label %91

91:                                               ; preds = %86, %88
  %92 = phi ptr [ %90, %88 ], [ %75, %86 ]
  store ptr %92, ptr %3, align 8, !tbaa !321
  %93 = load ptr, ptr %92, align 8, !tbaa !310
  %94 = tail call zeroext i8 @move_block_after(ptr noundef %81, ptr noundef %93) #18
  br label %95

95:                                               ; preds = %91, %73
  br i1 %74, label %104, label %96, !prof !652

96:                                               ; preds = %95
  %97 = getelementptr inbounds %struct.basic_block_def, ptr %81, i64 0, i32 13
  %98 = load i32, ptr %97, align 8, !tbaa !504
  %99 = or i32 %98, 4
  store i32 %99, ptr %97, align 8, !tbaa !504
  %100 = tail call fastcc ptr @single_succ_edge(ptr noundef %81) #19
  %101 = getelementptr inbounds %struct.edge_def, ptr %100, i64 0, i32 7
  %102 = load i32, ptr %101, align 8, !tbaa !301
  %103 = or i32 %102, 128
  store i32 %103, ptr %101, align 8, !tbaa !301
  br label %104

104:                                              ; preds = %96, %95
  %105 = load ptr, ptr @dump_file, align 8, !tbaa !321
  %106 = icmp eq ptr %105, null
  br i1 %106, label %110, label %107, !prof !653

107:                                              ; preds = %104
  %108 = load i32, ptr %0, align 8, !tbaa !484
  %109 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %105, ptr noundef nonnull @.str.4, i32 noundef %108) #19
  br label %110

110:                                              ; preds = %107, %104
  %111 = and i32 %1, 2
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %128, label %113, !prof !653

113:                                              ; preds = %110
  %114 = tail call fastcc ptr @single_succ_edge(ptr noundef %81) #19
  %115 = getelementptr inbounds %struct.edge_def, ptr %114, i64 0, i32 7
  %116 = load i32, ptr %115, align 8, !tbaa !301
  %117 = and i32 %116, 1
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %127, label %119

119:                                              ; preds = %113
  %120 = getelementptr inbounds %struct.basic_block_def, ptr %81, i64 0, i32 7
  %121 = load ptr, ptr %120, align 8, !tbaa !297
  %122 = getelementptr inbounds %struct.rtl_bb_info, ptr %121, i64 0, i32 1
  %123 = load ptr, ptr %122, align 8, !tbaa !648
  %124 = load i32, ptr %123, align 8
  %125 = and i32 %124, 65535
  %126 = icmp eq i32 %125, 9
  br i1 %126, label %127, label %128

127:                                              ; preds = %119, %113
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1409, ptr noundef nonnull @.str.1) #18
  br label %128

128:                                              ; preds = %59, %70, %110, %119, %127
  %129 = phi ptr [ %81, %127 ], [ %81, %119 ], [ %81, %110 ], [ null, %70 ], [ null, %59 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  ret ptr %129
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @has_preds_from_loop(ptr noundef %0, ptr noundef readnone %1) unnamed_addr #0 !prof !363 !PGOFuncName !654 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #17
  %5 = tail call fastcc ptr @ei_start_1(ptr noundef %0) #19
  store i32 0, ptr %4, align 8, !tbaa.struct !332
  %6 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %5, ptr %6, align 8, !tbaa.struct !334
  %7 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %5, ptr noundef nonnull %3) #19, !range !308
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %20, label %9

9:                                                ; preds = %2, %15
  %10 = load ptr, ptr %3, align 8, !tbaa !321
  %11 = load ptr, ptr %10, align 8, !tbaa !310
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %11, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !311
  %14 = icmp eq ptr %13, %1
  br i1 %14, label %20, label %15

15:                                               ; preds = %9
  call fastcc void @ei_next(ptr noundef nonnull %4) #19
  %16 = load i32, ptr %4, align 8
  %17 = load ptr, ptr %6, align 8
  %18 = call fastcc zeroext i8 @ei_cond(i32 %16, ptr %17, ptr noundef nonnull %3) #19, !range !308
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %9, !llvm.loop !655

20:                                               ; preds = %9, %15, %2
  %21 = phi i8 [ 0, %2 ], [ 0, %15 ], [ 1, %9 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  ret i8 %21
}

; Function Attrs: optsize
declare ptr @make_forwarder_block(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @move_block_after(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #14

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @create_preheaders(i32 noundef %0) local_unnamed_addr #0 !prof !656 {
  %2 = alloca %struct.loop_iterator, align 8
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #17
  %4 = load ptr, ptr @cfun, align 8, !tbaa !321
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !394
  %7 = icmp eq ptr %6, null
  br i1 %7, label %17, label %8, !prof !657

8:                                                ; preds = %1
  call fastcc void @fel_init(ptr noundef nonnull %2, ptr noundef nonnull %3, i32 noundef 0) #19
  %9 = load ptr, ptr %3, align 8, !tbaa !321
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11, !prof !658

11:                                               ; preds = %8, %11
  %12 = phi ptr [ %14, %11 ], [ %9, %8 ]
  %13 = tail call ptr @create_preheader(ptr noundef nonnull %12, i32 noundef %0) #19
  call fastcc void @fel_next(ptr noundef nonnull %2, ptr noundef nonnull %3) #19
  %14 = load ptr, ptr %3, align 8, !tbaa !321
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %11, !prof !659, !llvm.loop !660

16:                                               ; preds = %11, %8
  tail call fastcc void @loops_state_set(i32 noundef 1) #19
  br label %17

17:                                               ; preds = %1, %16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fel_init(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2) unnamed_addr #0 !prof !661 !PGOFuncName !662 {
  %4 = getelementptr inbounds %struct.loop_iterator, ptr %0, i64 0, i32 1
  store i32 0, ptr %4, align 8, !tbaa !663
  %5 = load ptr, ptr @cfun, align 8, !tbaa !321
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !394
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10, !prof !665

9:                                                ; preds = %3
  store ptr null, ptr %0, align 8, !tbaa !666
  store ptr null, ptr %1, align 8, !tbaa !321
  br label %68

10:                                               ; preds = %3
  %11 = tail call fastcc i32 @number_of_loops() #19
  %12 = tail call fastcc ptr @VEC_int_heap_alloc(i32 noundef %11) #19
  store ptr %12, ptr %0, align 8, !tbaa !666
  %13 = and i32 %2, 1
  %14 = xor i32 %13, 1
  %15 = and i32 %2, 2
  %16 = icmp eq i32 %15, 0
  %17 = load ptr, ptr @cfun, align 8, !tbaa !321
  %18 = getelementptr inbounds %struct.function, ptr %17, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !394
  %20 = getelementptr inbounds %struct.loops, ptr %19, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !395
  br i1 %16, label %47, label %22, !prof !667

22:                                               ; preds = %10, %22
  %23 = phi ptr [ %25, %22 ], [ %21, %10 ]
  %24 = getelementptr inbounds %struct.loop, ptr %23, i64 0, i32 8
  %25 = load ptr, ptr %24, align 8, !tbaa !367
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %22, !prof !668, !llvm.loop !669

27:                                               ; preds = %22, %45
  %28 = phi ptr [ %46, %45 ], [ %23, %22 ]
  %29 = load i32, ptr %28, align 8, !tbaa !484
  %30 = icmp slt i32 %29, %14
  br i1 %30, label %33, label %31, !prof !670

31:                                               ; preds = %27
  %32 = load ptr, ptr %0, align 8, !tbaa !666
  tail call fastcc void @VEC_int_base_quick_push(ptr noundef %32, i32 noundef %29) #19
  br label %33

33:                                               ; preds = %31, %27
  %34 = getelementptr inbounds %struct.loop, ptr %28, i64 0, i32 9
  %35 = load ptr, ptr %34, align 8, !tbaa !671
  %36 = icmp eq ptr %35, null
  br i1 %36, label %42, label %37, !prof !672

37:                                               ; preds = %33, %37
  %38 = phi ptr [ %40, %37 ], [ %35, %33 ]
  %39 = getelementptr inbounds %struct.loop, ptr %38, i64 0, i32 8
  %40 = load ptr, ptr %39, align 8, !tbaa !367
  %41 = icmp eq ptr %40, null
  br i1 %41, label %45, label %37, !prof !673, !llvm.loop !674

42:                                               ; preds = %33
  %43 = tail call fastcc ptr @loop_outer(ptr noundef nonnull %28) #19
  %44 = icmp eq ptr %43, null
  br i1 %44, label %67, label %45, !prof !675

45:                                               ; preds = %37, %42
  %46 = phi ptr [ %43, %42 ], [ %38, %37 ]
  br label %27

47:                                               ; preds = %10, %57
  %48 = phi ptr [ %58, %57 ], [ %21, %10 ]
  %49 = load i32, ptr %48, align 8, !tbaa !484
  %50 = icmp slt i32 %49, %14
  br i1 %50, label %53, label %51, !prof !676

51:                                               ; preds = %47
  %52 = load ptr, ptr %0, align 8, !tbaa !666
  tail call fastcc void @VEC_int_base_quick_push(ptr noundef %52, i32 noundef %49) #19
  br label %53

53:                                               ; preds = %51, %47
  %54 = getelementptr inbounds %struct.loop, ptr %48, i64 0, i32 8
  %55 = load ptr, ptr %54, align 8, !tbaa !367
  %56 = icmp eq ptr %55, null
  br i1 %56, label %59, label %57, !prof !677

57:                                               ; preds = %59, %53
  %58 = phi ptr [ %55, %53 ], [ %62, %59 ]
  br label %47

59:                                               ; preds = %53, %64
  %60 = phi ptr [ %65, %64 ], [ %48, %53 ]
  %61 = getelementptr inbounds %struct.loop, ptr %60, i64 0, i32 9
  %62 = load ptr, ptr %61, align 8, !tbaa !671
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %57, !prof !678

64:                                               ; preds = %59
  %65 = tail call fastcc ptr @loop_outer(ptr noundef nonnull %60) #19
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %59, !prof !679, !llvm.loop !680

67:                                               ; preds = %42, %64
  tail call fastcc void @fel_next(ptr noundef nonnull %0, ptr noundef %1) #19
  br label %68

68:                                               ; preds = %67, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fel_next(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 !prof !681 !PGOFuncName !682 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #17
  %4 = getelementptr inbounds %struct.loop_iterator, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !663
  br label %6

6:                                                ; preds = %11, %2
  %7 = phi i32 [ %12, %11 ], [ %5, %2 ]
  %8 = load ptr, ptr %0, align 8, !tbaa !666
  %9 = call fastcc i32 @VEC_int_base_iterate(ptr noundef %8, i32 noundef %7, ptr noundef nonnull %3) #19, !range !451
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11, !prof !683

11:                                               ; preds = %6
  %12 = add i32 %7, 1
  store i32 %12, ptr %4, align 8, !tbaa !663
  %13 = load i32, ptr %3, align 4, !tbaa !333
  %14 = tail call fastcc ptr @get_loop(i32 noundef %13) #19
  store ptr %14, ptr %1, align 8, !tbaa !321
  %15 = icmp eq ptr %14, null
  br i1 %15, label %6, label %17, !prof !684, !llvm.loop !685

16:                                               ; preds = %6
  tail call fastcc void @VEC_int_heap_free(ptr noundef nonnull %0) #19
  store ptr null, ptr %1, align 8, !tbaa !321
  br label %17

17:                                               ; preds = %11, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @loops_state_set(i32 noundef %0) unnamed_addr #4 !prof !686 !PGOFuncName !687 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !321
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !394
  %5 = load i32, ptr %4, align 8, !tbaa !410
  %6 = or i32 %5, %0
  store i32 %6, ptr %4, align 8, !tbaa !410
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_int_heap_alloc(i32 noundef %0) unnamed_addr #0 !prof !661 !PGOFuncName !688 {
  %2 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %0, i64 noundef 8, i64 noundef 4) #18
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_int_base_quick_push(ptr noundef %0, i32 noundef %1) unnamed_addr #10 !prof !689 !PGOFuncName !690 {
  %3 = load i32, ptr %0, align 4, !tbaa !691
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 4, !tbaa !691
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %5
  store i32 %1, ptr %6, align 4, !tbaa !333
  ret void
}

; Function Attrs: optsize
declare ptr @vec_heap_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_int_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #10 !prof !681 !PGOFuncName !693 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5, !prof !694

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 4, !tbaa !691
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12, !prof !695

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !333
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi i32 [ %11, %8 ], [ 0, %5 ], [ 0, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store i32 %13, ptr %2, align 4, !tbaa !333
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_loop(i32 noundef %0) unnamed_addr #3 !prof !689 !PGOFuncName !696 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !321
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !394
  %5 = getelementptr inbounds %struct.loops, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !488
  %7 = tail call fastcc ptr @VEC_loop_p_base_index(ptr noundef %6, i32 noundef %0) #19
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_int_heap_free(ptr nocapture noundef %0) unnamed_addr #8 !prof !661 !PGOFuncName !697 {
  %2 = load ptr, ptr %0, align 8, !tbaa !321
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !665

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #19
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !321
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @force_single_succ_latches() local_unnamed_addr #0 !prof !698 {
  %1 = alloca %struct.loop_iterator, align 8
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #17
  call fastcc void @fel_init(ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef 0) #19
  %3 = load ptr, ptr %2, align 8, !tbaa !321
  %4 = icmp eq ptr %3, null
  br i1 %4, label %21, label %5, !prof !699

5:                                                ; preds = %0, %18
  %6 = phi ptr [ %19, %18 ], [ %3, %0 ]
  %7 = getelementptr inbounds %struct.loop, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !314
  %9 = getelementptr inbounds %struct.loop, ptr %6, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !343
  %11 = icmp eq ptr %8, %10
  br i1 %11, label %15, label %12, !prof !700

12:                                               ; preds = %5
  %13 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %8) #19, !range !308
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %18, !prof !701

15:                                               ; preds = %12, %5
  %16 = tail call ptr @find_edge(ptr noundef %8, ptr noundef %10) #18
  %17 = tail call ptr @split_edge(ptr noundef %16) #18
  br label %18

18:                                               ; preds = %12, %15
  call fastcc void @fel_next(ptr noundef nonnull %1, ptr noundef nonnull %2) #19
  %19 = load ptr, ptr %2, align 8, !tbaa !321
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %5, !prof !702, !llvm.loop !703

21:                                               ; preds = %18, %0
  tail call fastcc void @loops_state_set(i32 noundef 2) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #17
  ret void
}

; Function Attrs: optsize
declare ptr @find_edge(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @loop_version(ptr noundef %0, ptr noundef %1, ptr noundef writeonly %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i8 noundef zeroext %6) local_unnamed_addr #0 !prof !704 {
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #17
  %10 = tail call ptr @loop_preheader_edge(ptr noundef %0) #18
  %11 = getelementptr inbounds %struct.edge_def, ptr %10, i64 0, i32 7
  %12 = load i32, ptr %11, align 8, !tbaa !301
  %13 = and i32 %12, 128
  %14 = and i32 %12, -129
  store i32 %14, ptr %11, align 8, !tbaa !301
  %15 = getelementptr inbounds %struct.edge_def, ptr %10, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !307
  %17 = tail call zeroext i8 @cfg_hook_duplicate_loop_to_header_edge(ptr noundef %0, ptr noundef %10, i32 noundef 1, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0) #18
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %83, label %19, !prof !705

19:                                               ; preds = %7
  %20 = load ptr, ptr %15, align 8, !tbaa !307
  %21 = tail call fastcc ptr @lv_adjust_loop_entry_edge(ptr noundef %16, ptr noundef %20, ptr noundef nonnull %10, ptr noundef %1, i32 noundef %3) #19
  %22 = icmp eq ptr %2, null
  br i1 %22, label %24, label %23, !prof !706

23:                                               ; preds = %19
  store ptr %21, ptr %2, align 8, !tbaa !321
  br label %24

24:                                               ; preds = %23, %19
  %25 = icmp eq ptr %21, null
  br i1 %25, label %26, label %29, !prof !705

26:                                               ; preds = %24
  %27 = load i32, ptr %11, align 8, !tbaa !301
  %28 = or i32 %27, %13
  store i32 %28, ptr %11, align 8, !tbaa !301
  br label %83

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !314
  %32 = tail call ptr @get_bb_copy(ptr noundef %31) #18
  %33 = tail call fastcc ptr @single_succ_edge(ptr noundef %32) #19
  call void @extract_cond_bb_edges(ptr noundef nonnull %21, ptr noundef nonnull %8, ptr noundef nonnull %9) #18
  %34 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !343
  %36 = call ptr @get_bb_copy(ptr noundef %35) #18
  %37 = call fastcc ptr @single_pred_edge(ptr noundef %36) #19
  %38 = load ptr, ptr %8, align 8, !tbaa !321
  %39 = load ptr, ptr %9, align 8, !tbaa !321
  %40 = call ptr @loopify(ptr noundef %33, ptr noundef %37, ptr noundef nonnull %21, ptr noundef %38, ptr noundef %39, i8 noundef zeroext 0, i32 noundef %4, i32 noundef %5) #19
  call void @lv_flush_pending_stmts(ptr noundef %33) #18
  call void @extract_cond_bb_edges(ptr noundef nonnull %21, ptr noundef nonnull %8, ptr noundef nonnull %9) #18
  %41 = load ptr, ptr %9, align 8, !tbaa !321
  call void @lv_flush_pending_stmts(ptr noundef %41) #18
  %42 = icmp eq i32 %13, 0
  br i1 %42, label %59, label %43, !prof !706

43:                                               ; preds = %29
  %44 = getelementptr inbounds %struct.basic_block_def, ptr %21, i64 0, i32 13
  %45 = load i32, ptr %44, align 8, !tbaa !504
  %46 = or i32 %45, 4
  store i32 %46, ptr %44, align 8, !tbaa !504
  %47 = call ptr @loop_preheader_edge(ptr noundef nonnull %0) #18
  %48 = getelementptr inbounds %struct.edge_def, ptr %47, i64 0, i32 7
  %49 = load i32, ptr %48, align 8, !tbaa !301
  %50 = or i32 %49, 128
  store i32 %50, ptr %48, align 8, !tbaa !301
  %51 = call ptr @loop_preheader_edge(ptr noundef %40) #18
  %52 = getelementptr inbounds %struct.edge_def, ptr %51, i64 0, i32 7
  %53 = load i32, ptr %52, align 8, !tbaa !301
  %54 = or i32 %53, 128
  store i32 %54, ptr %52, align 8, !tbaa !301
  %55 = call fastcc ptr @single_pred_edge(ptr noundef nonnull %21) #19
  %56 = getelementptr inbounds %struct.edge_def, ptr %55, i64 0, i32 7
  %57 = load i32, ptr %56, align 8, !tbaa !301
  %58 = or i32 %57, 128
  store i32 %58, ptr %56, align 8, !tbaa !301
  br label %59

59:                                               ; preds = %43, %29
  %60 = icmp eq i8 %6, 0
  br i1 %60, label %78, label %61, !prof !706

61:                                               ; preds = %59
  %62 = call ptr @get_loop_body_in_dom_order(ptr noundef %40) #18
  %63 = getelementptr inbounds %struct.loop, ptr %40, i64 0, i32 6
  %64 = load i32, ptr %63, align 4, !tbaa !365
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %77, label %66

66:                                               ; preds = %61, %66
  %67 = phi i64 [ %73, %66 ], [ 0, %61 ]
  %68 = phi ptr [ %70, %66 ], [ %30, %61 ]
  %69 = load ptr, ptr %68, align 8, !tbaa !321
  %70 = getelementptr inbounds ptr, ptr %62, i64 %67
  %71 = load ptr, ptr %70, align 8, !tbaa !321
  %72 = call zeroext i8 @move_block_after(ptr noundef %71, ptr noundef %69) #18
  %73 = add nuw nsw i64 %67, 1
  %74 = load i32, ptr %63, align 4, !tbaa !365
  %75 = zext i32 %74 to i64
  %76 = icmp ult i64 %73, %75
  br i1 %76, label %66, label %77, !llvm.loop !707

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
define internal fastcc noundef ptr @lv_adjust_loop_entry_edge(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 !prof !704 !PGOFuncName !708 {
  %6 = getelementptr inbounds %struct.edge_def, ptr %2, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !307
  %8 = icmp eq ptr %7, %1
  br i1 %8, label %10, label %9, !prof !706

9:                                                ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str.2, i32 noundef 1474, ptr noundef nonnull @.str.1) #18
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
  store i32 %4, ptr %17, align 4, !tbaa !534
  %18 = sub i32 10000, %4
  %19 = getelementptr inbounds %struct.edge_def, ptr %12, i64 0, i32 8
  store i32 %18, ptr %19, align 4, !tbaa !534
  %20 = getelementptr inbounds %struct.edge_def, ptr %12, i64 0, i32 9
  %21 = load i64, ptr %20, align 8, !tbaa !535
  %22 = load i32, ptr %17, align 4, !tbaa !534
  %23 = sext i32 %22 to i64
  %24 = mul nsw i64 %21, %23
  %25 = add nsw i64 %24, 5000
  %26 = sdiv i64 %25, 10000
  %27 = getelementptr inbounds %struct.edge_def, ptr %16, i64 0, i32 9
  store i64 %26, ptr %27, align 8, !tbaa !535
  %28 = load i64, ptr %20, align 8, !tbaa !535
  %29 = sext i32 %18 to i64
  %30 = mul nsw i64 %28, %29
  %31 = add nsw i64 %30, 5000
  %32 = sdiv i64 %31, 10000
  store i64 %32, ptr %20, align 8, !tbaa !535
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

; Function Attrs: optsize
declare void @lv_add_condition_to_bb(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @current_ir_type() local_unnamed_addr #2

; Function Attrs: optsize
declare void @lv_adjust_loop_header_phi(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @fix_loop_structure(ptr noundef %0) local_unnamed_addr #0 !prof !709 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.loop_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #17
  %4 = tail call fastcc i32 @number_of_loops() #19
  %5 = zext i32 %4 to i64
  %6 = shl nuw nsw i64 %5, 3
  %7 = tail call ptr @xmalloc(i64 noundef %6) #18
  %8 = load ptr, ptr @cfun, align 8, !tbaa !321
  %9 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !322
  %11 = load ptr, ptr %10, align 8, !tbaa !643
  %12 = getelementptr inbounds %struct.control_flow_graph, ptr %10, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !335
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %11, i64 0, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !710
  %16 = icmp eq ptr %15, %13
  br i1 %16, label %37, label %17, !prof !711

17:                                               ; preds = %1
  %18 = icmp eq ptr %0, null
  %19 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !394
  %21 = getelementptr inbounds %struct.loops, ptr %20, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !395
  br label %23

23:                                               ; preds = %17, %32
  %24 = phi ptr [ %15, %17 ], [ %35, %32 ]
  br i1 %18, label %32, label %25, !prof !712

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !311
  %28 = tail call fastcc i32 @loop_depth(ptr noundef %27) #19
  %29 = zext i32 %28 to i64
  %30 = inttoptr i64 %29 to ptr
  %31 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 2
  store ptr %30, ptr %31, align 8, !tbaa !574
  br label %32

32:                                               ; preds = %25, %23
  %33 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 3
  store ptr %22, ptr %33, align 8, !tbaa !311
  %34 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 6
  %35 = load ptr, ptr %34, align 8, !tbaa !710
  %36 = icmp eq ptr %35, %13
  br i1 %36, label %37, label %23, !prof !713, !llvm.loop !714

37:                                               ; preds = %32, %1
  %38 = tail call fastcc zeroext i8 @loops_state_satisfies_p(i32 noundef 8) #19, !range !308
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %41, label %40, !prof !715

40:                                               ; preds = %37
  tail call void @release_recorded_exits() #18
  br label %41

41:                                               ; preds = %40, %37
  call fastcc void @fel_init(ptr noundef nonnull %3, ptr noundef nonnull %2, i32 noundef 2) #19
  %42 = load ptr, ptr %2, align 8, !tbaa !321
  %43 = icmp eq ptr %42, null
  br i1 %43, label %62, label %44, !prof !711

44:                                               ; preds = %41, %59
  %45 = phi ptr [ %60, %59 ], [ %42, %41 ]
  %46 = getelementptr inbounds %struct.loop, ptr %45, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !343
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %59, !prof !716

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.loop, ptr %45, i64 0, i32 8
  %51 = load ptr, ptr %50, align 8, !tbaa !367
  %52 = icmp eq ptr %51, null
  br i1 %52, label %58, label %53, !prof !717

53:                                               ; preds = %49, %53
  %54 = phi ptr [ %56, %53 ], [ %51, %49 ]
  tail call void @flow_loop_tree_node_remove(ptr noundef nonnull %54) #18
  %55 = tail call fastcc ptr @loop_outer(ptr noundef nonnull %45) #19
  tail call void @flow_loop_tree_node_add(ptr noundef %55, ptr noundef nonnull %54) #18
  %56 = load ptr, ptr %50, align 8, !tbaa !367
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %53, !prof !569, !llvm.loop !718

58:                                               ; preds = %53, %49
  tail call void @delete_loop(ptr noundef nonnull %45) #18
  br label %59

59:                                               ; preds = %44, %58
  call fastcc void @fel_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #19
  %60 = load ptr, ptr %2, align 8, !tbaa !321
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %44, !prof !719, !llvm.loop !720

62:                                               ; preds = %59, %41
  %63 = load ptr, ptr @cfun, align 8, !tbaa !321
  %64 = getelementptr inbounds %struct.function, ptr %63, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !322
  %66 = getelementptr inbounds %struct.control_flow_graph, ptr %65, i64 0, i32 3
  %67 = load i32, ptr %66, align 8, !tbaa !324
  %68 = getelementptr inbounds %struct.function, ptr %63, i64 0, i32 4
  %69 = load ptr, ptr %68, align 8, !tbaa !394
  %70 = getelementptr inbounds %struct.loops, ptr %69, i64 0, i32 3
  %71 = load ptr, ptr %70, align 8, !tbaa !395
  %72 = getelementptr inbounds %struct.loop, ptr %71, i64 0, i32 6
  store i32 %67, ptr %72, align 4, !tbaa !365
  call fastcc void @fel_init(ptr noundef nonnull %3, ptr noundef nonnull %2, i32 noundef 0) #19
  %73 = load ptr, ptr %2, align 8, !tbaa !321
  %74 = icmp eq ptr %73, null
  br i1 %74, label %89, label %75, !prof !711

75:                                               ; preds = %62, %75
  %76 = phi ptr [ %87, %75 ], [ %73, %62 ]
  %77 = getelementptr inbounds %struct.loop, ptr %76, i64 0, i32 2
  %78 = load ptr, ptr %77, align 8, !tbaa !343
  %79 = getelementptr inbounds %struct.basic_block_def, ptr %78, i64 0, i32 3
  %80 = load ptr, ptr %79, align 8, !tbaa !311
  %81 = load i32, ptr %76, align 8, !tbaa !484
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds ptr, ptr %7, i64 %82
  store ptr %80, ptr %83, align 8, !tbaa !321
  %84 = load ptr, ptr %77, align 8, !tbaa !343
  %85 = tail call i32 @flow_loop_nodes_find(ptr noundef %84, ptr noundef nonnull %76) #18
  %86 = getelementptr inbounds %struct.loop, ptr %76, i64 0, i32 6
  store i32 %85, ptr %86, align 4, !tbaa !365
  call fastcc void @fel_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #19
  %87 = load ptr, ptr %2, align 8, !tbaa !321
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %75, !prof !721, !llvm.loop !722

89:                                               ; preds = %75, %62
  call fastcc void @fel_init(ptr noundef nonnull %3, ptr noundef nonnull %2, i32 noundef 0) #19
  %90 = load ptr, ptr %2, align 8, !tbaa !321
  %91 = icmp eq ptr %90, null
  br i1 %91, label %104, label %92, !prof !711

92:                                               ; preds = %89, %101
  %93 = phi ptr [ %102, %101 ], [ %90, %89 ]
  %94 = load i32, ptr %93, align 8, !tbaa !484
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds ptr, ptr %7, i64 %95
  %97 = load ptr, ptr %96, align 8, !tbaa !321
  %98 = tail call fastcc ptr @loop_outer(ptr noundef nonnull %93) #19
  %99 = icmp eq ptr %97, %98
  br i1 %99, label %101, label %100, !prof !723

100:                                              ; preds = %92
  tail call void @flow_loop_tree_node_remove(ptr noundef nonnull %93) #18
  tail call void @flow_loop_tree_node_add(ptr noundef %97, ptr noundef nonnull %93) #18
  br label %101

101:                                              ; preds = %92, %100
  call fastcc void @fel_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #19
  %102 = load ptr, ptr %2, align 8, !tbaa !321
  %103 = icmp eq ptr %102, null
  br i1 %103, label %104, label %92, !prof !721, !llvm.loop !724

104:                                              ; preds = %101, %89
  tail call void @free(ptr noundef %7) #19
  %105 = icmp eq ptr %0, null
  br i1 %105, label %141, label %106, !prof !715

106:                                              ; preds = %104
  %107 = load ptr, ptr @cfun, align 8, !tbaa !321
  %108 = getelementptr inbounds %struct.function, ptr %107, i64 0, i32 1
  %109 = load ptr, ptr %108, align 8, !tbaa !322
  %110 = load ptr, ptr %109, align 8, !tbaa !643
  %111 = getelementptr inbounds %struct.basic_block_def, ptr %110, i64 0, i32 6
  %112 = load ptr, ptr %111, align 8, !tbaa !710
  %113 = getelementptr inbounds %struct.control_flow_graph, ptr %109, i64 0, i32 1
  %114 = load ptr, ptr %113, align 8, !tbaa !335
  %115 = icmp eq ptr %112, %114
  br i1 %115, label %141, label %116, !prof !711

116:                                              ; preds = %106, %132
  %117 = phi ptr [ %133, %132 ], [ %107, %106 ]
  %118 = phi ptr [ %135, %132 ], [ %112, %106 ]
  %119 = getelementptr inbounds %struct.basic_block_def, ptr %118, i64 0, i32 3
  %120 = load ptr, ptr %119, align 8, !tbaa !311
  %121 = tail call fastcc i32 @loop_depth(ptr noundef %120) #19
  %122 = zext i32 %121 to i64
  %123 = inttoptr i64 %122 to ptr
  %124 = getelementptr inbounds %struct.basic_block_def, ptr %118, i64 0, i32 2
  %125 = load ptr, ptr %124, align 8, !tbaa !574
  %126 = icmp eq ptr %125, %123
  br i1 %126, label %132, label %127, !prof !725

127:                                              ; preds = %116
  %128 = getelementptr inbounds %struct.basic_block_def, ptr %118, i64 0, i32 9
  %129 = load i32, ptr %128, align 8, !tbaa !329
  %130 = tail call zeroext i8 @bitmap_set_bit(ptr noundef nonnull %0, i32 noundef %129) #18
  %131 = load ptr, ptr @cfun, align 8, !tbaa !321
  br label %132

132:                                              ; preds = %127, %116
  %133 = phi ptr [ %131, %127 ], [ %117, %116 ]
  store ptr null, ptr %124, align 8, !tbaa !574
  %134 = getelementptr inbounds %struct.basic_block_def, ptr %118, i64 0, i32 6
  %135 = load ptr, ptr %134, align 8, !tbaa !710
  %136 = getelementptr inbounds %struct.function, ptr %133, i64 0, i32 1
  %137 = load ptr, ptr %136, align 8, !tbaa !322
  %138 = getelementptr inbounds %struct.control_flow_graph, ptr %137, i64 0, i32 1
  %139 = load ptr, ptr %138, align 8, !tbaa !335
  %140 = icmp eq ptr %135, %139
  br i1 %140, label %141, label %116, !prof !713, !llvm.loop !726

141:                                              ; preds = %132, %106, %104
  %142 = tail call fastcc zeroext i8 @loops_state_satisfies_p(i32 noundef 1) #19, !range !308
  %143 = icmp eq i8 %142, 0
  br i1 %143, label %145, label %144, !prof !715

144:                                              ; preds = %141
  tail call void @create_preheaders(i32 noundef 1) #19
  br label %145

145:                                              ; preds = %144, %141
  %146 = tail call fastcc zeroext i8 @loops_state_satisfies_p(i32 noundef 2) #19, !range !308
  %147 = icmp eq i8 %146, 0
  br i1 %147, label %149, label %148, !prof !715

148:                                              ; preds = %145
  tail call void @force_single_succ_latches() #19
  br label %149

149:                                              ; preds = %148, %145
  %150 = tail call fastcc zeroext i8 @loops_state_satisfies_p(i32 noundef 4) #19, !range !308
  %151 = icmp eq i8 %150, 0
  br i1 %151, label %154, label %152, !prof !715

152:                                              ; preds = %149
  %153 = tail call zeroext i8 @mark_irreducible_loops() #18
  br label %154

154:                                              ; preds = %152, %149
  br i1 %39, label %156, label %155, !prof !715

155:                                              ; preds = %154
  tail call void @record_loop_exits() #18
  br label %156

156:                                              ; preds = %155, %154
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @loop_depth(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !727 !PGOFuncName !728 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !361
  %4 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %3) #19
  ret i32 %4
}

; Function Attrs: optsize
declare void @release_recorded_exits() local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @flow_loop_nodes_find(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @record_loop_exits() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

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
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nounwind }
attributes #18 = { nounwind optsize }
attributes #19 = { optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!295}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294}
!36 = !{ptr @remove_path, ptr @can_remove_branch_p, i64 1434}
!37 = !{ptr @remove_path, ptr @single_pred_p, i64 1433}
!38 = !{ptr @remove_path, ptr @split_edge, i64 1393}
!39 = !{ptr @remove_path, ptr @single_pred_edge, i64 1393}
!40 = !{ptr @remove_path, ptr @loop_outer, i64 1433}
!41 = !{ptr @remove_path, ptr @dominated_by_p, i64 3782}
!42 = !{ptr @remove_path, ptr @find_path, i64 1433}
!43 = !{ptr @remove_path, ptr @xcalloc, i64 1433}
!44 = !{ptr @remove_path, ptr @sbitmap_alloc, i64 1433}
!45 = !{ptr @remove_path, ptr @sbitmap_zero, i64 2866}
!46 = !{ptr @remove_path, ptr @SET_BIT, i64 4307}
!47 = !{ptr @remove_path, ptr @ei_start_1, i64 1434}
!48 = !{ptr @remove_path, ptr @ei_cond, i64 2876}
!49 = !{ptr @remove_path, ptr @ei_next, i64 1442}
!50 = !{ptr @remove_path, ptr @remove_branch, i64 1433}
!51 = !{ptr @remove_path, ptr @cancel_loop_tree, i64 1}
!52 = !{ptr @remove_path, ptr @remove_bbs, i64 1433}
!53 = !{ptr @remove_path, ptr @free, i64 4299}
!54 = !{ptr @remove_path, ptr @get_immediate_dominator, i64 1440}
!55 = !{ptr @remove_path, ptr @first_dom_son, i64 1435}
!56 = !{ptr @remove_path, ptr @VEC_basic_block_heap_safe_push, i64 2878}
!57 = !{ptr @remove_path, ptr @next_dom_son, i64 3167}
!58 = !{ptr @remove_path, ptr @iterate_fix_dominators, i64 1433}
!59 = !{ptr @remove_path, ptr @VEC_basic_block_heap_free, i64 1433}
!60 = !{ptr @remove_path, ptr @fix_bb_placements, i64 1433}
!61 = !{ptr @remove_path, ptr @fix_loop_placements, i64 1433}
!62 = !{ptr @remove_path, ptr @loops_state_satisfies_p, i64 1}
!63 = !{ptr @remove_path, ptr @mark_irreducible_loops, i64 1}
!64 = !{ptr @single_pred_p, ptr @VEC_edge_base_length, i64 3260}
!65 = !{ptr @single_pred_edge, ptr @single_pred_p, i64 1826}
!66 = !{ptr @single_pred_edge, ptr @fancy_abort, i64 1}
!67 = !{ptr @single_pred_edge, ptr @VEC_edge_base_index, i64 1826}
!68 = !{ptr @loop_outer, ptr @VEC_loop_p_base_length, i64 473055}
!69 = !{ptr @loop_outer, ptr @VEC_loop_p_base_index, i64 278428}
!70 = !{ptr @find_path, ptr @VEC_edge_base_length, i64 1434}
!71 = !{ptr @find_path, ptr @fancy_abort, i64 1}
!72 = !{ptr @find_path, ptr @xcalloc, i64 1434}
!73 = !{ptr @find_path, ptr @dfs_enumerate_from, i64 1434}
!74 = !{ptr @ei_cond, ptr @ei_end_p, i64 565256}
!75 = !{ptr @ei_cond, ptr @ei_edge, i64 376788}
!76 = !{ptr @ei_next, ptr @ei_container, i64 753575}
!77 = !{ptr @ei_next, ptr @VEC_edge_base_length, i64 376788}
!78 = !{ptr @ei_next, ptr @fancy_abort, i64 1}
!79 = !{ptr @remove_bbs, ptr @delete_basic_block, i64 1435}
!80 = !{ptr @VEC_basic_block_heap_safe_push, ptr @VEC_basic_block_heap_reserve, i64 3111}
!81 = !{ptr @VEC_basic_block_heap_safe_push, ptr @VEC_basic_block_base_quick_push, i64 3111}
!82 = !{ptr @VEC_basic_block_heap_free, ptr @free, i64 4415}
!83 = !{ptr @fix_bb_placements, ptr @sbitmap_alloc, i64 430}
!84 = !{ptr @fix_bb_placements, ptr @sbitmap_zero, i64 430}
!85 = !{ptr @fix_bb_placements, ptr @SET_BIT, i64 865}
!86 = !{ptr @fix_bb_placements, ptr @xmalloc, i64 430}
!87 = !{ptr @fix_bb_placements, ptr @RESET_BIT, i64 430}
!88 = !{ptr @fix_bb_placements, ptr @fix_loop_placement, i64 71}
!89 = !{ptr @fix_bb_placements, ptr @fix_bb_placement, i64 360}
!90 = !{ptr @fix_bb_placements, ptr @ei_start_1, i64 4}
!91 = !{ptr @fix_bb_placements, ptr @ei_cond, i64 84}
!92 = !{ptr @fix_bb_placements, ptr @ei_next, i64 80}
!93 = !{ptr @fix_bb_placements, ptr @find_common_loop, i64 15}
!94 = !{ptr @fix_bb_placements, ptr @flow_loop_nested_p, i64 7}
!95 = !{ptr @fix_bb_placements, ptr @free, i64 860}
!96 = !{ptr @fix_loop_placements, ptr @loop_outer, i64 1435}
!97 = !{ptr @fix_loop_placements, ptr @fix_loop_placement, i64 615}
!98 = !{ptr @fix_loop_placements, ptr @loop_preheader_edge, i64 1}
!99 = !{ptr @fix_loop_placements, ptr @fix_bb_placements, i64 1}
!100 = !{ptr @single_succ_edge, ptr @single_succ_p, i64 864}
!101 = !{ptr @single_succ_edge, ptr @fancy_abort, i64 1}
!102 = !{ptr @single_succ_edge, ptr @VEC_edge_base_index, i64 864}
!103 = !{ptr @single_succ_p, ptr @VEC_edge_base_length, i64 544258}
!104 = !{ptr @rpe_enum_p, ptr @dominated_by_p, i64 1443}
!105 = !{ptr @ei_end_p, ptr @ei_container, i64 1130511}
!106 = !{ptr @ei_end_p, ptr @VEC_edge_base_length, i64 565256}
!107 = !{ptr @ei_edge, ptr @ei_container, i64 753575}
!108 = !{ptr @ei_edge, ptr @VEC_edge_base_index, i64 376788}
!109 = !{ptr @ei_container, ptr @fancy_abort, i64 1}
!110 = !{ptr @VEC_basic_block_heap_reserve, ptr @VEC_basic_block_base_space, i64 3111}
!111 = !{ptr @VEC_basic_block_heap_reserve, ptr @vec_heap_p_reserve, i64 1597}
!112 = !{ptr @fix_loop_placement, ptr @get_loop_exit_edges, i64 500}
!113 = !{ptr @fix_loop_placement, ptr @VEC_edge_base_iterate, i64 1829}
!114 = !{ptr @fix_loop_placement, ptr @find_common_loop, i64 1308}
!115 = !{ptr @fix_loop_placement, ptr @flow_loop_nested_p, i64 1308}
!116 = !{ptr @fix_loop_placement, ptr @loop_outer, i64 532}
!117 = !{ptr @fix_loop_placement, ptr @flow_loop_tree_node_remove, i64 1}
!118 = !{ptr @fix_loop_placement, ptr @flow_loop_tree_node_add, i64 1}
!119 = !{ptr @fix_loop_placement, ptr @rescan_loop_exit, i64 20}
!120 = !{ptr @fix_loop_placement, ptr @VEC_edge_heap_free, i64 500}
!121 = !{ptr @fix_bb_placement, ptr @ei_start_1, i64 360}
!122 = !{ptr @fix_bb_placement, ptr @ei_cond, i64 720}
!123 = !{ptr @fix_bb_placement, ptr @loop_outer, i64 1}
!124 = !{ptr @fix_bb_placement, ptr @flow_loop_nested_p, i64 359}
!125 = !{ptr @fix_bb_placement, ptr @ei_next, i64 360}
!126 = !{ptr @fix_bb_placement, ptr @remove_bb_from_loops, i64 1}
!127 = !{ptr @fix_bb_placement, ptr @add_bb_to_loop, i64 1}
!128 = !{ptr @VEC_edge_heap_free, ptr @free, i64 499}
!129 = !{ptr @add_loop, ptr @place_new_loop, i64 610}
!130 = !{ptr @add_loop, ptr @flow_loop_tree_node_add, i64 658}
!131 = !{ptr @add_loop, ptr @xmalloc, i64 610}
!132 = !{ptr @add_loop, ptr @get_loop_body_with_size, i64 610}
!133 = !{ptr @add_loop, ptr @remove_bb_from_loops, i64 4747}
!134 = !{ptr @add_loop, ptr @add_bb_to_loop, i64 4747}
!135 = !{ptr @add_loop, ptr @loop_outer, i64 388}
!136 = !{ptr @add_loop, ptr @flow_loop_tree_node_remove, i64 48}
!137 = !{ptr @add_loop, ptr @ei_start_1, i64 5136}
!138 = !{ptr @add_loop, ptr @ei_cond, i64 13588}
!139 = !{ptr @add_loop, ptr @rescan_loop_exit, i64 8452}
!140 = !{ptr @add_loop, ptr @ei_next, i64 8452}
!141 = !{ptr @add_loop, ptr @free, i64 610}
!142 = !{ptr @place_new_loop, ptr @number_of_loops, i64 646}
!143 = !{ptr @place_new_loop, ptr @VEC_loop_p_gc_safe_push, i64 646}
!144 = !{ptr @number_of_loops, ptr @VEC_loop_p_base_length, i64 199189}
!145 = !{ptr @VEC_loop_p_gc_safe_push, ptr @VEC_loop_p_gc_reserve, i64 646}
!146 = !{ptr @VEC_loop_p_gc_safe_push, ptr @VEC_loop_p_base_quick_push, i64 646}
!147 = !{ptr @VEC_loop_p_gc_reserve, ptr @VEC_loop_p_base_space, i64 646}
!148 = !{ptr @VEC_loop_p_gc_reserve, ptr @vec_gc_p_reserve, i64 176}
!149 = !{ptr @scale_loop_frequencies, ptr @get_loop_body, i64 940}
!150 = !{ptr @scale_loop_frequencies, ptr @scale_bbs_frequencies_int, i64 940}
!151 = !{ptr @scale_loop_frequencies, ptr @free, i64 940}
!152 = !{ptr @update_dominators_in_loop, ptr @sbitmap_alloc, i64 470}
!153 = !{ptr @update_dominators_in_loop, ptr @sbitmap_zero, i64 470}
!154 = !{ptr @update_dominators_in_loop, ptr @get_loop_body, i64 470}
!155 = !{ptr @update_dominators_in_loop, ptr @SET_BIT, i64 4364}
!156 = !{ptr @update_dominators_in_loop, ptr @first_dom_son, i64 4137}
!157 = !{ptr @update_dominators_in_loop, ptr @VEC_basic_block_heap_safe_push, i64 227}
!158 = !{ptr @update_dominators_in_loop, ptr @next_dom_son, i64 3895}
!159 = !{ptr @update_dominators_in_loop, ptr @iterate_fix_dominators, i64 470}
!160 = !{ptr @update_dominators_in_loop, ptr @free, i64 940}
!161 = !{ptr @update_dominators_in_loop, ptr @VEC_basic_block_heap_free, i64 470}
!162 = !{ptr @loopify, ptr @alloc_loop, i64 470}
!163 = !{ptr @loopify, ptr @loop_outer, i64 470}
!164 = !{ptr @loopify, ptr @loop_redirect_edge, i64 1020}
!165 = !{ptr @loopify, ptr @set_immediate_dominator, i64 550}
!166 = !{ptr @loopify, ptr @add_loop, i64 470}
!167 = !{ptr @loopify, ptr @remove_bb_from_loops, i64 430}
!168 = !{ptr @loopify, ptr @add_bb_to_loop, i64 470}
!169 = !{ptr @loopify, ptr @ei_start_1, i64 40}
!170 = !{ptr @loopify, ptr @ei_cond, i64 119}
!171 = !{ptr @loopify, ptr @ei_next, i64 79}
!172 = !{ptr @loopify, ptr @scale_loop_frequencies, i64 940}
!173 = !{ptr @loopify, ptr @update_dominators_in_loop, i64 470}
!174 = !{ptr @loop_redirect_edge, ptr @redirect_edge_and_branch_force, i64 587}
!175 = !{ptr @duplicate_loop, ptr @alloc_loop, i64 36}
!176 = !{ptr @duplicate_loop, ptr @place_new_loop, i64 36}
!177 = !{ptr @duplicate_loop, ptr @set_loop_copy, i64 36}
!178 = !{ptr @duplicate_loop, ptr @flow_loop_tree_node_add, i64 36}
!179 = !{ptr @can_duplicate_loop_p, ptr @get_loop_body, i64 9312}
!180 = !{ptr @can_duplicate_loop_p, ptr @can_copy_bbs_p, i64 9312}
!181 = !{ptr @can_duplicate_loop_p, ptr @free, i64 9312}
!182 = !{ptr @duplicate_loop_to_header_edge, ptr @fancy_abort, i64 25}
!183 = !{ptr @duplicate_loop_to_header_edge, ptr @flow_bb_inside_loop_p, i64 5452}
!184 = !{ptr @duplicate_loop_to_header_edge, ptr @get_loop_body_in_dom_order, i64 742}
!185 = !{ptr @duplicate_loop_to_header_edge, ptr @can_copy_bbs_p, i64 742}
!186 = !{ptr @duplicate_loop_to_header_edge, ptr @free, i64 3237}
!187 = !{ptr @duplicate_loop_to_header_edge, ptr @xmalloc, i64 1754}
!188 = !{ptr @duplicate_loop_to_header_edge, ptr @loop_latch_edge, i64 741}
!189 = !{ptr @duplicate_loop_to_header_edge, ptr @bitmap_obstack_alloc_stat, i64 270}
!190 = !{ptr @duplicate_loop_to_header_edge, ptr @dominated_by_p, i64 696}
!191 = !{ptr @duplicate_loop_to_header_edge, ptr @bitmap_set_bit, i64 448}
!192 = !{ptr @duplicate_loop_to_header_edge, ptr @xcalloc, i64 741}
!193 = !{ptr @duplicate_loop_to_header_edge, ptr @set_loop_copy, i64 741}
!194 = !{ptr @duplicate_loop_to_header_edge, ptr @copy_loops_to, i64 1822}
!195 = !{ptr @duplicate_loop_to_header_edge, ptr @copy_bbs, i64 1822}
!196 = !{ptr @duplicate_loop_to_header_edge, ptr @ei_start_1, i64 12}
!197 = !{ptr @duplicate_loop_to_header_edge, ptr @ei_cond, i64 261}
!198 = !{ptr @duplicate_loop_to_header_edge, ptr @ei_next, i64 249}
!199 = !{ptr @duplicate_loop_to_header_edge, ptr @redirect_edge_and_branch_force, i64 3644}
!200 = !{ptr @duplicate_loop_to_header_edge, ptr @set_immediate_dominator, i64 3102}
!201 = !{ptr @duplicate_loop_to_header_edge, ptr @VEC_edge_heap_safe_push, i64 1352}
!202 = !{ptr @duplicate_loop_to_header_edge, ptr @set_zero_probability, i64 1353}
!203 = !{ptr @duplicate_loop_to_header_edge, ptr @bmp_iter_set_init, i64 1352}
!204 = !{ptr @duplicate_loop_to_header_edge, ptr @bmp_iter_set, i64 3258}
!205 = !{ptr @duplicate_loop_to_header_edge, ptr @scale_bbs_frequencies_int, i64 3531}
!206 = !{ptr @duplicate_loop_to_header_edge, ptr @bmp_iter_next, i64 1906}
!207 = !{ptr @duplicate_loop_to_header_edge, ptr @get_dominated_by, i64 5108}
!208 = !{ptr @duplicate_loop_to_header_edge, ptr @VEC_basic_block_base_iterate, i64 10016}
!209 = !{ptr @duplicate_loop_to_header_edge, ptr @nearest_common_dominator, i64 540}
!210 = !{ptr @duplicate_loop_to_header_edge, ptr @VEC_basic_block_heap_free, i64 5108}
!211 = !{ptr @duplicate_loop_to_header_edge, ptr @bitmap_obstack_free, i64 741}
!212 = !{ptr @copy_loops_to, ptr @duplicate_loop, i64 1}
!213 = !{ptr @copy_loops_to, ptr @duplicate_subloops, i64 1}
!214 = !{ptr @VEC_edge_heap_safe_push, ptr @VEC_edge_heap_reserve, i64 1356}
!215 = !{ptr @VEC_edge_heap_safe_push, ptr @VEC_edge_base_quick_push, i64 1356}
!216 = !{ptr @set_zero_probability, ptr @VEC_edge_base_length, i64 1356}
!217 = !{ptr @set_zero_probability, ptr @fancy_abort, i64 1}
!218 = !{ptr @set_zero_probability, ptr @ei_start_1, i64 1356}
!219 = !{ptr @set_zero_probability, ptr @ei_cond, i64 4069}
!220 = !{ptr @set_zero_probability, ptr @ei_next, i64 2713}
!221 = !{ptr @VEC_edge_heap_reserve, ptr @VEC_edge_base_space, i64 1356}
!222 = !{ptr @VEC_edge_heap_reserve, ptr @vec_heap_p_reserve, i64 409}
!223 = !{ptr @create_preheader, ptr @ei_start_1, i64 180135}
!224 = !{ptr @create_preheader, ptr @ei_cond, i64 543864}
!225 = !{ptr @create_preheader, ptr @single_succ_p, i64 361213}
!226 = !{ptr @create_preheader, ptr @ei_next, i64 363729}
!227 = !{ptr @create_preheader, ptr @fancy_abort, i64 2}
!228 = !{ptr @create_preheader, ptr @loop_latch_edge, i64 31547}
!229 = !{ptr @create_preheader, ptr @make_forwarder_block, i64 31547}
!230 = !{ptr @create_preheader, ptr @VEC_edge_base_index, i64 11092}
!231 = !{ptr @create_preheader, ptr @move_block_after, i64 12504}
!232 = !{ptr @create_preheader, ptr @single_succ_edge, i64 4}
!233 = !{ptr @create_preheader, ptr @fprintf, i64 1}
!234 = !{ptr @create_preheaders, ptr @fel_init, i64 85251}
!235 = !{ptr @create_preheaders, ptr @create_preheader, i64 180132}
!236 = !{ptr @create_preheaders, ptr @fel_next, i64 180132}
!237 = !{ptr @create_preheaders, ptr @loops_state_set, i64 85251}
!238 = !{ptr @fel_init, ptr @number_of_loops, i64 192618}
!239 = !{ptr @fel_init, ptr @VEC_int_heap_alloc, i64 192618}
!240 = !{ptr @fel_init, ptr @VEC_int_base_quick_push, i64 881486}
!241 = !{ptr @fel_init, ptr @loop_outer, i64 636571}
!242 = !{ptr @fel_init, ptr @fel_next, i64 192618}
!243 = !{ptr @fel_next, ptr @VEC_int_base_iterate, i64 651197}
!244 = !{ptr @fel_next, ptr @get_loop, i64 458577}
!245 = !{ptr @fel_next, ptr @VEC_int_heap_free, i64 192620}
!246 = !{ptr @VEC_int_heap_alloc, ptr @vec_heap_o_reserve_exact, i64 192619}
!247 = !{ptr @get_loop, ptr @VEC_loop_p_base_index, i64 458577}
!248 = !{ptr @VEC_int_heap_free, ptr @free, i64 192618}
!249 = !{ptr @force_single_succ_latches, ptr @fel_init, i64 89592}
!250 = !{ptr @force_single_succ_latches, ptr @single_succ_p, i64 182174}
!251 = !{ptr @force_single_succ_latches, ptr @find_edge, i64 55715}
!252 = !{ptr @force_single_succ_latches, ptr @split_edge, i64 55715}
!253 = !{ptr @force_single_succ_latches, ptr @fel_next, i64 196694}
!254 = !{ptr @force_single_succ_latches, ptr @loops_state_set, i64 89592}
!255 = !{ptr @loop_version, ptr @loop_preheader_edge, i64 1291}
!256 = !{ptr @loop_version, ptr @cfg_hook_duplicate_loop_to_header_edge, i64 431}
!257 = !{ptr @loop_version, ptr @lv_adjust_loop_entry_edge, i64 430}
!258 = !{ptr @loop_version, ptr @get_bb_copy, i64 858}
!259 = !{ptr @loop_version, ptr @single_succ_edge, i64 429}
!260 = !{ptr @loop_version, ptr @extract_cond_bb_edges, i64 858}
!261 = !{ptr @loop_version, ptr @single_pred_edge, i64 430}
!262 = !{ptr @loop_version, ptr @loopify, i64 429}
!263 = !{ptr @loop_version, ptr @lv_flush_pending_stmts, i64 858}
!264 = !{ptr @loop_version, ptr @get_loop_body_in_dom_order, i64 1}
!265 = !{ptr @loop_version, ptr @move_block_after, i64 20}
!266 = !{ptr @loop_version, ptr @free, i64 1}
!267 = !{ptr @loop_version, ptr @split_edge, i64 858}
!268 = !{ptr @lv_adjust_loop_entry_edge, ptr @fancy_abort, i64 1}
!269 = !{ptr @lv_adjust_loop_entry_edge, ptr @split_edge, i64 431}
!270 = !{ptr @lv_adjust_loop_entry_edge, ptr @lv_add_condition_to_bb, i64 431}
!271 = !{ptr @lv_adjust_loop_entry_edge, ptr @single_succ_edge, i64 431}
!272 = !{ptr @lv_adjust_loop_entry_edge, ptr @current_ir_type, i64 431}
!273 = !{ptr @lv_adjust_loop_entry_edge, ptr @make_edge, i64 431}
!274 = !{ptr @lv_adjust_loop_entry_edge, ptr @set_immediate_dominator, i64 862}
!275 = !{ptr @lv_adjust_loop_entry_edge, ptr @lv_adjust_loop_header_phi, i64 431}
!276 = !{ptr @fix_loop_structure, ptr @number_of_loops, i64 5925}
!277 = !{ptr @fix_loop_structure, ptr @xmalloc, i64 5925}
!278 = !{ptr @fix_loop_structure, ptr @loop_depth, i64 908561}
!279 = !{ptr @fix_loop_structure, ptr @loops_state_satisfies_p, i64 23700}
!280 = !{ptr @fix_loop_structure, ptr @release_recorded_exits, i64 5924}
!281 = !{ptr @fix_loop_structure, ptr @fel_init, i64 17775}
!282 = !{ptr @fix_loop_structure, ptr @flow_loop_tree_node_remove, i64 4}
!283 = !{ptr @fix_loop_structure, ptr @loop_outer, i64 27107}
!284 = !{ptr @fix_loop_structure, ptr @flow_loop_tree_node_add, i64 4}
!285 = !{ptr @fix_loop_structure, ptr @delete_loop, i64 418}
!286 = !{ptr @fix_loop_structure, ptr @fel_next, i64 81735}
!287 = !{ptr @fix_loop_structure, ptr @flow_loop_nodes_find, i64 27106}
!288 = !{ptr @fix_loop_structure, ptr @free, i64 5925}
!289 = !{ptr @fix_loop_structure, ptr @bitmap_set_bit, i64 286}
!290 = !{ptr @fix_loop_structure, ptr @create_preheaders, i64 5924}
!291 = !{ptr @fix_loop_structure, ptr @force_single_succ_latches, i64 5924}
!292 = !{ptr @fix_loop_structure, ptr @mark_irreducible_loops, i64 5924}
!293 = !{ptr @fix_loop_structure, ptr @record_loop_exits, i64 5924}
!294 = !{ptr @loop_depth, ptr @VEC_loop_p_base_length, i64 908790}
!295 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!296 = !{!"function_entry_count", i64 1434}
!297 = !{!298, !298, i64 0}
!298 = !{!"omnipotent char", !299, i64 0}
!299 = !{!"Simple C/C++ TBAA"}
!300 = !{!"branch_weights", i32 1, i32 1435}
!301 = !{!302, !304, i64 48}
!302 = !{!"edge_def", !303, i64 0, !303, i64 8, !298, i64 16, !303, i64 24, !303, i64 32, !304, i64 40, !304, i64 44, !304, i64 48, !304, i64 52, !305, i64 56}
!303 = !{!"any pointer", !298, i64 0}
!304 = !{!"int", !298, i64 0}
!305 = !{!"long", !298, i64 0}
!306 = !{!"branch_weights", i32 1435, i32 1}
!307 = !{!302, !303, i64 8}
!308 = !{i8 0, i8 2}
!309 = !{!"branch_weights", i32 1396, i32 40}
!310 = !{!302, !303, i64 0}
!311 = !{!312, !303, i64 24}
!312 = !{!"basic_block_def", !303, i64 0, !303, i64 8, !303, i64 16, !303, i64 24, !298, i64 32, !303, i64 48, !303, i64 56, !298, i64 64, !305, i64 72, !304, i64 80, !304, i64 84, !304, i64 88, !304, i64 92, !304, i64 96}
!313 = !{!"branch_weights", i32 574, i32 431}
!314 = !{!315, !303, i64 16}
!315 = !{!"loop", !304, i64 0, !304, i64 4, !303, i64 8, !303, i64 16, !316, i64 24, !304, i64 32, !304, i64 36, !303, i64 40, !303, i64 48, !303, i64 56, !303, i64 64, !303, i64 72, !317, i64 80, !317, i64 96, !298, i64 112, !298, i64 113, !304, i64 116, !303, i64 120, !303, i64 128, !298, i64 136, !303, i64 144}
!316 = !{!"lpt_decision", !304, i64 0, !304, i64 4}
!317 = !{!"", !305, i64 0, !305, i64 8}
!318 = !{!"branch_weights", i32 431, i32 0}
!319 = distinct !{!319, !320}
!320 = !{!"llvm.loop.mustprogress"}
!321 = !{!303, !303, i64 0}
!322 = !{!323, !303, i64 8}
!323 = !{!"function", !303, i64 0, !303, i64 8, !303, i64 16, !303, i64 24, !303, i64 32, !303, i64 40, !303, i64 48, !303, i64 56, !303, i64 64, !303, i64 72, !303, i64 80, !303, i64 88, !303, i64 96, !304, i64 104, !304, i64 108, !304, i64 112, !304, i64 116, !304, i64 120, !304, i64 124, !303, i64 128, !304, i64 136, !304, i64 137, !304, i64 138, !304, i64 138, !304, i64 138, !304, i64 138, !304, i64 138, !304, i64 138, !304, i64 138, !304, i64 139, !304, i64 139, !304, i64 139, !304, i64 139, !304, i64 139, !304, i64 139, !304, i64 139}
!324 = !{!325, !304, i64 24}
!325 = !{!"control_flow_graph", !303, i64 0, !303, i64 8, !303, i64 16, !304, i64 24, !304, i64 28, !304, i64 32, !303, i64 40, !304, i64 48, !298, i64 52, !298, i64 60, !304, i64 68, !304, i64 72}
!326 = !{!325, !304, i64 32}
!327 = !{!"branch_weights", i32 1434, i32 1}
!328 = !{!"branch_weights", i32 -2147483648, i32 0}
!329 = !{!312, !304, i64 80}
!330 = !{!"branch_weights", i32 1434, i32 2}
!331 = distinct !{!331, !320}
!332 = !{i64 0, i64 4, !333, i64 8, i64 8, !321}
!333 = !{!304, !304, i64 0}
!334 = !{i64 0, i64 8, !321}
!335 = !{!325, !303, i64 8}
!336 = !{!"branch_weights", i32 1, i32 1444}
!337 = !{!305, !305, i64 0}
!338 = !{!"branch_weights", i32 1442, i32 3}
!339 = !{!"branch_weights", i32 1442, i32 1}
!340 = !{!"branch_weights", i32 1435, i32 9}
!341 = distinct !{!341, !320}
!342 = distinct !{!342, !320}
!343 = !{!315, !303, i64 8}
!344 = !{!"branch_weights", i32 1, i32 1436}
!345 = distinct !{!345, !320}
!346 = !{!"branch_weights", i32 1438, i32 5}
!347 = !{!"branch_weights", i32 1, i32 1437}
!348 = !{!"branch_weights", i32 2885, i32 290}
!349 = !{!"branch_weights", i32 1437, i32 1737}
!350 = distinct !{!350, !320}
!351 = !{!"branch_weights", i32 1434, i32 8}
!352 = distinct !{!352, !320}
!353 = !{!"function_entry_count", i64 3260}
!354 = !{!"cfgloopmanip.c:single_pred_p"}
!355 = !{!312, !303, i64 0}
!356 = !{!"function_entry_count", i64 1826}
!357 = !{!"cfgloopmanip.c:single_pred_edge"}
!358 = !{!"branch_weights", i32 1, i32 1827}
!359 = !{!"function_entry_count", i64 473055}
!360 = !{!"cfgloopmanip.c:loop_outer"}
!361 = !{!315, !303, i64 40}
!362 = !{!"branch_weights", i32 194628, i32 278429}
!363 = !{!"function_entry_count", i64 0}
!364 = !{!"cfgloopmanip.c:unloop"}
!365 = !{!315, !304, i64 36}
!366 = distinct !{!366, !320}
!367 = !{!315, !303, i64 48}
!368 = distinct !{!368, !320}
!369 = !{!"cfgloopmanip.c:find_path"}
!370 = !{!"function_entry_count", i64 9545}
!371 = !{!"cfgloopmanip.c:SET_BIT"}
!372 = !{!373, !303, i64 0}
!373 = !{!"simple_bitmap_def", !303, i64 0, !304, i64 8, !304, i64 12, !298, i64 16}
!374 = !{!"branch_weights", i32 9546, i32 1}
!375 = !{!"function_entry_count", i64 188468}
!376 = !{!"cfgloopmanip.c:ei_start_1"}
!377 = !{!"function_entry_count", i64 565256}
!378 = !{!"cfgloopmanip.c:ei_cond"}
!379 = !{!"branch_weights", i32 376789, i32 188469}
!380 = !{!"function_entry_count", i64 376788}
!381 = !{!"cfgloopmanip.c:ei_next"}
!382 = !{!"branch_weights", i32 1, i32 376789}
!383 = !{!"branch_weights", i32 376789, i32 1}
!384 = !{!385, !304, i64 0}
!385 = !{!"", !304, i64 0, !303, i64 8}
!386 = !{!"cfgloopmanip.c:remove_bbs"}
!387 = distinct !{!387, !320}
!388 = !{!"function_entry_count", i64 3111}
!389 = !{!"cfgloopmanip.c:VEC_basic_block_heap_safe_push"}
!390 = !{!"function_entry_count", i64 7025}
!391 = !{!"cfgloopmanip.c:VEC_basic_block_heap_free"}
!392 = !{!"branch_weights", i32 2611, i32 4416}
!393 = !{!"cfgloopmanip.c:fix_bb_placements"}
!394 = !{!323, !303, i64 32}
!395 = !{!396, !303, i64 24}
!396 = !{!"loops", !304, i64 0, !303, i64 8, !303, i64 16, !303, i64 24}
!397 = !{!"branch_weights", i32 1005, i32 431}
!398 = !{!"branch_weights", i32 1, i32 431}
!399 = !{!"branch_weights", i32 71, i32 361}
!400 = !{!"branch_weights", i32 71, i32 1}
!401 = distinct !{!401, !320}
!402 = !{!"branch_weights", i32 361, i32 1}
!403 = distinct !{!403, !320}
!404 = distinct !{!404, !320}
!405 = !{!"cfgloopmanip.c:fix_loop_placements"}
!406 = !{!"branch_weights", i32 431, i32 1}
!407 = distinct !{!407, !320}
!408 = !{!"function_entry_count", i64 23700}
!409 = !{!"cfgloopmanip.c:loops_state_satisfies_p"}
!410 = !{!396, !304, i64 0}
!411 = !{!"function_entry_count", i64 1492352}
!412 = !{!"cfgloopmanip.c:VEC_edge_base_length"}
!413 = !{!"branch_weights", i32 1, i32 1492353}
!414 = !{!415, !304, i64 0}
!415 = !{!"VEC_edge_base", !304, i64 0, !304, i64 4, !298, i64 8}
!416 = !{!"function_entry_count", i64 390569}
!417 = !{!"cfgloopmanip.c:VEC_edge_base_index"}
!418 = !{!"function_entry_count", i64 1581035}
!419 = !{!"cfgloopmanip.c:VEC_loop_p_base_length"}
!420 = !{!"branch_weights", i32 651589, i32 929448}
!421 = !{!422, !304, i64 0}
!422 = !{!"VEC_loop_p_base", !304, i64 0, !304, i64 4, !298, i64 8}
!423 = !{!"function_entry_count", i64 737005}
!424 = !{!"cfgloopmanip.c:VEC_loop_p_base_index"}
!425 = !{!"function_entry_count", i64 864}
!426 = !{!"cfgloopmanip.c:single_succ_edge"}
!427 = !{!"branch_weights", i32 1, i32 865}
!428 = !{!312, !303, i64 8}
!429 = !{!"function_entry_count", i64 544258}
!430 = !{!"cfgloopmanip.c:single_succ_p"}
!431 = !{!"function_entry_count", i64 1443}
!432 = !{!"cfgloopmanip.c:rpe_enum_p"}
!433 = !{!"cfgloopmanip.c:ei_end_p"}
!434 = !{!"branch_weights", i32 1, i32 565257}
!435 = !{!"cfgloopmanip.c:ei_edge"}
!436 = !{!"function_entry_count", i64 2637664}
!437 = !{!"cfgloopmanip.c:ei_container"}
!438 = !{!"branch_weights", i32 1, i32 2637665}
!439 = !{!"cfgloopmanip.c:VEC_basic_block_heap_reserve"}
!440 = !{!"branch_weights", i32 1598, i32 1515}
!441 = !{!"cfgloopmanip.c:VEC_basic_block_base_quick_push"}
!442 = !{!443, !304, i64 0}
!443 = !{!"VEC_basic_block_base", !304, i64 0, !304, i64 4, !298, i64 8}
!444 = !{!"cfgloopmanip.c:VEC_basic_block_base_space"}
!445 = !{!"branch_weights", i32 1546, i32 1567}
!446 = !{!443, !304, i64 4}
!447 = !{!"function_entry_count", i64 430}
!448 = !{!"cfgloopmanip.c:RESET_BIT"}
!449 = !{!"function_entry_count", i64 500}
!450 = !{!"cfgloopmanip.c:fix_loop_placement"}
!451 = !{i32 0, i32 2}
!452 = !{!"branch_weights", i32 1, i32 500}
!453 = !{!"branch_weights", i32 1213, i32 99}
!454 = !{!"branch_weights", i32 500, i32 811}
!455 = distinct !{!455, !320}
!456 = !{!"branch_weights", i32 501, i32 1}
!457 = distinct !{!457, !320}
!458 = distinct !{!458, !320}
!459 = !{!"function_entry_count", i64 360}
!460 = !{!"cfgloopmanip.c:fix_bb_placement"}
!461 = !{!"branch_weights", i32 1, i32 360}
!462 = !{!"branch_weights", i32 1, i32 361}
!463 = !{!"branch_weights", i32 360, i32 1}
!464 = distinct !{!464, !320}
!465 = !{!"function_entry_count", i64 1810}
!466 = !{!"cfgloopmanip.c:VEC_edge_base_iterate"}
!467 = !{!"branch_weights", i32 1, i32 1811}
!468 = !{!"branch_weights", i32 1311, i32 501}
!469 = !{!"cfgloopmanip.c:VEC_edge_heap_free"}
!470 = !{!"branch_weights", i32 1, i32 501}
!471 = !{!"function_entry_count", i64 610}
!472 = !{!"branch_weights", i32 610, i32 1}
!473 = !{!"branch_weights", i32 4756, i32 389}
!474 = !{!"branch_weights", i32 93, i32 297}
!475 = !{!"branch_weights", i32 49, i32 45}
!476 = !{!"branch_weights", i32 610, i32 4534}
!477 = distinct !{!477, !320}
!478 = !{!"branch_weights", i32 1, i32 5143}
!479 = !{!"branch_weights", i32 5143, i32 3323}
!480 = distinct !{!480, !320}
!481 = distinct !{!481, !320}
!482 = !{!"function_entry_count", i64 646}
!483 = !{!"cfgloopmanip.c:place_new_loop"}
!484 = !{!315, !304, i64 0}
!485 = !{!"function_entry_count", i64 199190}
!486 = !{!"cfgloopmanip.c:number_of_loops"}
!487 = !{!"branch_weights", i32 1, i32 199191}
!488 = !{!396, !303, i64 8}
!489 = !{!"cfgloopmanip.c:VEC_loop_p_gc_safe_push"}
!490 = !{!"cfgloopmanip.c:VEC_loop_p_gc_reserve"}
!491 = !{!"branch_weights", i32 177, i32 471}
!492 = !{!"cfgloopmanip.c:VEC_loop_p_base_quick_push"}
!493 = !{!"cfgloopmanip.c:VEC_loop_p_base_space"}
!494 = !{!"branch_weights", i32 1, i32 647}
!495 = !{!422, !304, i64 4}
!496 = !{!"function_entry_count", i64 940}
!497 = !{i64 0, i64 8, !321, i64 8, i64 8, !321, i64 16, i64 8, !321}
!498 = !{!"cfgloopmanip.c:gsi_last_bb"}
!499 = !{!500, !303, i64 0}
!500 = !{!"", !303, i64 0, !303, i64 8, !303, i64 16}
!501 = !{!500, !303, i64 8}
!502 = !{!500, !303, i64 16}
!503 = !{!"cfgloopmanip.c:bb_seq"}
!504 = !{!312, !304, i64 96}
!505 = !{!506, !303, i64 0}
!506 = !{!"gimple_bb_info", !303, i64 0, !303, i64 8}
!507 = !{!"cfgloopmanip.c:gimple_seq_last"}
!508 = !{!509, !303, i64 8}
!509 = !{!"gimple_seq_d", !303, i64 0, !303, i64 8, !303, i64 16}
!510 = !{!"cfgloopmanip.c:single_succ"}
!511 = !{!"function_entry_count", i64 470}
!512 = !{!"cfgloopmanip.c:update_dominators_in_loop"}
!513 = !{!"branch_weights", i32 1, i32 470}
!514 = !{!"branch_weights", i32 0, i32 -2147483648}
!515 = !{!"branch_weights", i32 3676, i32 470}
!516 = distinct !{!516, !320}
!517 = !{!"branch_weights", i32 243, i32 3903}
!518 = !{!"branch_weights", i32 228, i32 3676}
!519 = !{!"branch_weights", i32 3903, i32 0}
!520 = distinct !{!520, !320}
!521 = distinct !{!521, !320}
!522 = !{!"cfgloopmanip.c:gimple_cond_lhs"}
!523 = !{!"cfgloopmanip.c:gimple_cond_set_lhs"}
!524 = !{!"cfgloopmanip.c:gimple_op"}
!525 = !{!"cfgloopmanip.c:gimple_has_ops"}
!526 = !{i32 0, i32 256}
!527 = !{!"cfgloopmanip.c:gimple_ops"}
!528 = !{!"cfgloopmanip.c:gimple_code"}
!529 = !{!"cfgloopmanip.c:gimple_statement_structure"}
!530 = !{!"cfgloopmanip.c:gss_for_code"}
!531 = !{!"cfgloopmanip.c:gimple_set_op"}
!532 = !{!"cfgloopmanip.c:gimple_num_ops"}
!533 = !{!312, !304, i64 88}
!534 = !{!302, !304, i64 52}
!535 = !{!302, !305, i64 56}
!536 = !{!"branch_weights", i32 432, i32 40}
!537 = !{!"branch_weights", i32 40, i32 432}
!538 = !{!312, !305, i64 72}
!539 = !{!"branch_weights", i32 1, i32 159}
!540 = !{!"branch_weights", i32 159, i32 157}
!541 = distinct !{!541, !320}
!542 = !{!"function_entry_count", i64 1018}
!543 = !{!"cfgloopmanip.c:loop_redirect_edge"}
!544 = !{!"branch_weights", i32 432, i32 588}
!545 = !{!"function_entry_count", i64 36}
!546 = distinct !{!546, !320}
!547 = !{!"function_entry_count", i64 9312}
!548 = !{!"function_entry_count", i64 742}
!549 = !{!"branch_weights", i32 743, i32 1}
!550 = !{!"branch_weights", i32 1, i32 743}
!551 = !{!"branch_weights", i32 471, i32 273}
!552 = !{!"branch_weights", i32 1, i32 273}
!553 = !{!"branch_weights", i32 273, i32 1}
!554 = !{!"branch_weights", i32 1, i32 272}
!555 = !{!"branch_weights", i32 273, i32 705}
!556 = !{!"branch_weights", i32 252, i32 454}
!557 = !{!"branch_weights", i32 272, i32 705}
!558 = distinct !{!558, !320}
!559 = !{!"branch_weights", i32 1, i32 1357}
!560 = !{!"branch_weights", i32 272, i32 1085}
!561 = distinct !{!561, !320}
!562 = distinct !{!562, !320}
!563 = distinct !{!563, !320}
!564 = distinct !{!564, !320}
!565 = !{!"branch_weights", i32 1841449, i32 2715}
!566 = distinct !{!566, !320}
!567 = !{!"branch_weights", i32 -1517681376, i32 40916967}
!568 = !{!"branch_weights", i32 742, i32 1}
!569 = !{!"branch_weights", i32 1, i32 0}
!570 = distinct !{!570, !320}
!571 = distinct !{!571, !320}
!572 = !{!"branch_weights", i32 1, i32 742}
!573 = !{!"branch_weights", i32 1827, i32 1}
!574 = !{!312, !303, i64 16}
!575 = distinct !{!575, !320}
!576 = distinct !{!576, !320}
!577 = distinct !{!577, !320}
!578 = distinct !{!578, !320}
!579 = distinct !{!579, !320}
!580 = !{!"branch_weights", i32 471, i32 1357}
!581 = !{!"branch_weights", i32 1, i32 1356}
!582 = !{!"branch_weights", i32 1356, i32 547}
!583 = distinct !{!583, !320}
!584 = !{!"branch_weights", i32 743, i32 1085}
!585 = !{!"branch_weights", i32 742, i32 1085}
!586 = distinct !{!586, !320}
!587 = distinct !{!587, !320}
!588 = !{!"branch_weights", i32 201, i32 4921}
!589 = !{!"branch_weights", i32 542, i32 4380}
!590 = !{!"branch_weights", i32 4921, i32 0}
!591 = distinct !{!591, !320}
!592 = !{!"branch_weights", i32 4380, i32 742}
!593 = distinct !{!593, !320}
!594 = !{!"cfgloopmanip.c:copy_loops_to"}
!595 = !{!"branch_weights", i32 1, i32 1826}
!596 = distinct !{!596, !320}
!597 = !{!"function_entry_count", i64 1356}
!598 = !{!"cfgloopmanip.c:VEC_edge_heap_safe_push"}
!599 = !{!"cfgloopmanip.c:set_zero_probability"}
!600 = !{!"branch_weights", i32 1357, i32 1}
!601 = !{!"branch_weights", i32 1357, i32 1357}
!602 = !{!"branch_weights", i32 1356, i32 1357}
!603 = distinct !{!603, !320}
!604 = !{!"cfgloopmanip.c:bmp_iter_set_init"}
!605 = !{!606, !303, i64 0}
!606 = !{!"bitmap_head_def", !303, i64 0, !303, i64 8, !304, i64 16, !303, i64 24}
!607 = !{!608, !303, i64 0}
!608 = !{!"", !303, i64 0, !303, i64 8, !304, i64 16, !305, i64 24}
!609 = !{!608, !303, i64 8}
!610 = !{!611, !304, i64 16}
!611 = !{!"bitmap_element_def", !303, i64 0, !303, i64 8, !304, i64 16, !298, i64 24}
!612 = !{!608, !304, i64 16}
!613 = !{!608, !305, i64 24}
!614 = !{!"function_entry_count", i64 3258}
!615 = !{!"cfgloopmanip.c:bmp_iter_set"}
!616 = !{!"branch_weights", i32 1357, i32 1903}
!617 = !{!"branch_weights", i32 1902, i32 1}
!618 = !{!"branch_weights", i32 674, i32 1902}
!619 = distinct !{!619, !320}
!620 = !{!"branch_weights", i32 1356, i32 1}
!621 = distinct !{!621, !320}
!622 = !{!611, !303, i64 0}
!623 = !{!"function_entry_count", i64 1902}
!624 = !{!"cfgloopmanip.c:bmp_iter_next"}
!625 = !{!"function_entry_count", i64 10041}
!626 = !{!"cfgloopmanip.c:VEC_basic_block_base_iterate"}
!627 = !{!"branch_weights", i32 2252, i32 7791}
!628 = !{!"branch_weights", i32 4921, i32 2871}
!629 = !{!"cfgloopmanip.c:VEC_edge_heap_reserve"}
!630 = !{!"branch_weights", i32 410, i32 948}
!631 = !{!"cfgloopmanip.c:VEC_edge_base_quick_push"}
!632 = !{!"cfgloopmanip.c:VEC_edge_base_space"}
!633 = !{!"branch_weights", i32 273, i32 1085}
!634 = !{!415, !304, i64 4}
!635 = !{!"function_entry_count", i64 69242}
!636 = !{!"function_entry_count", i64 180135}
!637 = !{!"branch_weights", i32 1, i32 180135}
!638 = !{!"branch_weights", i32 180136, i32 183596}
!639 = !{!"branch_weights", i32 32923, i32 150674}
!640 = !{!"branch_weights", i32 180135, i32 183596}
!641 = distinct !{!641, !320}
!642 = !{!"branch_weights", i32 28277540, i32 0, i32 2119206108}
!643 = !{!325, !303, i64 0}
!644 = !{!"branch_weights", i32 142, i32 177624}
!645 = !{!"branch_weights", i32 1, i32 177624}
!646 = !{!"branch_weights", i32 29032, i32 148593}
!647 = !{!"branch_weights", i32 148593, i32 1}
!648 = !{!649, !303, i64 8}
!649 = !{!"rtl_bb_info", !303, i64 0, !303, i64 8, !303, i64 16, !303, i64 24, !304, i64 32}
!650 = !{!"branch_weights", i32 19042, i32 12503}
!651 = !{!"branch_weights", i32 11092, i32 1412}
!652 = !{!"branch_weights", i32 31542, i32 3}
!653 = !{!"branch_weights", i32 31544, i32 1}
!654 = !{!"cfgloopmanip.c:has_preds_from_loop"}
!655 = distinct !{!655, !320}
!656 = !{!"function_entry_count", i64 85252}
!657 = !{!"branch_weights", i32 1, i32 85253}
!658 = !{!"branch_weights", i32 1, i32 85252}
!659 = !{!"branch_weights", i32 85252, i32 94884}
!660 = distinct !{!660, !320}
!661 = !{!"function_entry_count", i64 192619}
!662 = !{!"cfgloopmanip.c:fel_init"}
!663 = !{!664, !304, i64 8}
!664 = !{!"", !303, i64 0, !304, i64 8}
!665 = !{!"branch_weights", i32 1, i32 192620}
!666 = !{!664, !303, i64 0}
!667 = !{!"branch_weights", i32 186695, i32 5926}
!668 = !{!"branch_weights", i32 5926, i32 6362}
!669 = distinct !{!669, !320}
!670 = !{!"branch_weights", i32 5926, i32 27528}
!671 = !{!315, !303, i64 56}
!672 = !{!"branch_weights", i32 18835, i32 14619}
!673 = !{!"branch_weights", i32 14619, i32 6549}
!674 = distinct !{!674, !320}
!675 = !{!"branch_weights", i32 5926, i32 12910}
!676 = !{!"branch_weights", i32 186695, i32 431051}
!677 = !{!"branch_weights", i32 394893, i32 222853}
!678 = !{!"branch_weights", i32 409547, i32 394893}
!679 = !{!"branch_weights", i32 186695, i32 431050}
!680 = distinct !{!680, !320}
!681 = !{!"function_entry_count", i64 651196}
!682 = !{!"cfgloopmanip.c:fel_next"}
!683 = !{!"branch_weights", i32 192620, i32 458578}
!684 = !{!"branch_weights", i32 1, i32 458578}
!685 = distinct !{!685, !320}
!686 = !{!"function_entry_count", i64 174844}
!687 = !{!"cfgloopmanip.c:loops_state_set"}
!688 = !{!"cfgloopmanip.c:VEC_int_heap_alloc"}
!689 = !{!"function_entry_count", i64 458577}
!690 = !{!"cfgloopmanip.c:VEC_int_base_quick_push"}
!691 = !{!692, !304, i64 0}
!692 = !{!"VEC_int_base", !304, i64 0, !304, i64 4, !298, i64 8}
!693 = !{!"cfgloopmanip.c:VEC_int_base_iterate"}
!694 = !{!"branch_weights", i32 1, i32 651197}
!695 = !{!"branch_weights", i32 458578, i32 192620}
!696 = !{!"cfgloopmanip.c:get_loop"}
!697 = !{!"cfgloopmanip.c:VEC_int_heap_free"}
!698 = !{!"function_entry_count", i64 89592}
!699 = !{!"branch_weights", i32 1, i32 89592}
!700 = !{!"branch_weights", i32 14520, i32 182177}
!701 = !{!"branch_weights", i32 41196, i32 140982}
!702 = !{!"branch_weights", i32 89592, i32 107104}
!703 = distinct !{!703, !320}
!704 = !{!"function_entry_count", i64 431}
!705 = !{!"branch_weights", i32 1, i32 432}
!706 = !{!"branch_weights", i32 432, i32 1}
!707 = distinct !{!707, !320}
!708 = !{!"cfgloopmanip.c:lv_adjust_loop_entry_edge"}
!709 = !{!"function_entry_count", i64 5925}
!710 = !{!312, !303, i64 56}
!711 = !{!"branch_weights", i32 1, i32 5925}
!712 = !{!"branch_weights", i32 1, i32 454396}
!713 = !{!"branch_weights", i32 5925, i32 448471}
!714 = distinct !{!714, !320}
!715 = !{!"branch_weights", i32 1, i32 5926}
!716 = !{!"branch_weights", i32 418, i32 27111}
!717 = !{!"branch_weights", i32 417, i32 1}
!718 = distinct !{!718, !320}
!719 = !{!"branch_weights", i32 5925, i32 21603}
!720 = distinct !{!720, !320}
!721 = !{!"branch_weights", i32 5925, i32 21186}
!722 = distinct !{!722, !320}
!723 = !{!"branch_weights", i32 27109, i32 3}
!724 = distinct !{!724, !320}
!725 = !{!"branch_weights", i32 454111, i32 286}
!726 = distinct !{!726, !320}
!727 = !{!"function_entry_count", i64 908790}
!728 = !{!"cfgloopmanip.c:loop_depth"}

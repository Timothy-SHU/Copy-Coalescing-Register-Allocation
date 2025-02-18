; ModuleID = 'blender/source/blender/bmesh/operators/bmo_fill_grid.c'
source_filename = "blender/source/blender/bmesh/operators/bmo_fill_grid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ListBase = type { ptr, ptr }
%struct.LinkData = type { ptr, ptr, ptr }
%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMDiskLink = type { ptr, ptr }
%struct.BMLoop = type { %struct.BMHeader, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }
%struct.BMFlagLayer = type { i16 }
%struct.BMOperator = type { [16 x %struct.BMOpSlot], [16 x %struct.BMOpSlot], ptr, ptr, i32, i32, i32 }
%struct.BMOpSlot = type { ptr, i32, %union.eBMOpSlotSubType_Union, i32, %union.anon }
%union.eBMOpSlotSubType_Union = type { i32 }
%union.anon = type { ptr, [8 x i8] }

@.str = private unnamed_addr constant [7 x i8] c"mat_nr\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"use_smooth\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"use_interp_simple\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"edges\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Select two edge loops\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"Edge loop vertex count mismatch\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"Closed loops unsupported\00", align 1
@.str.7 = private unnamed_addr constant [47 x i8] c"Loops are not connected by wire/boundary edges\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"Connecting edges vertex mismatch\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"Connecting edge loops overlap\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"faces.out\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@__func__.bm_grid_fill = private unnamed_addr constant [13 x i8] c"bm_grid_fill\00", align 1
@__const.bm_grid_fill.lb_iter_dir = private unnamed_addr constant [4 x i32] [i32 -1, i32 1, i32 1, i32 -1], align 16
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@__func__.bm_grid_fill_array = private unnamed_addr constant [19 x i8] c"bm_grid_fill_array\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @bmo_grid_fill_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [2 x ptr], align 16
  %4 = alloca [2 x float], align 4
  %5 = alloca [2 x ptr], align 16
  %6 = alloca [2 x float], align 4
  %7 = alloca [4 x ptr], align 16
  %8 = alloca [2 x float], align 4
  %9 = alloca [4 x [2 x float]], align 16
  %10 = alloca [3 x [3 x float]], align 16
  %11 = alloca [3 x [3 x float]], align 16
  %12 = alloca [3 x [3 x float]], align 16
  %13 = alloca [3 x float], align 4
  %14 = alloca [3 x float], align 4
  %15 = alloca [3 x float], align 4
  %16 = alloca [4 x ptr], align 16
  %17 = alloca [4 x ptr], align 16
  %18 = alloca [4 x ptr], align 16
  %19 = alloca %struct.ListBase, align 8
  %20 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %19) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %19, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %20) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %20, i8 0, i64 16, i1 false)
  %21 = tail call i32 @BMO_slot_int_get(ptr noundef %1, ptr noundef nonnull @.str) #7
  %22 = trunc i32 %21 to i16
  %23 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str.1) #7
  %24 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str.2) #7
  tail call void @BMO_slot_buffer_flag_enable(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @.str.3, i8 noundef zeroext 2, i16 noundef signext 4) #7
  %25 = call i32 @BM_mesh_edgeloops_find(ptr noundef %0, ptr noundef nonnull %19, ptr noundef nonnull @bm_edge_test_cb, ptr noundef %0) #7
  %26 = icmp eq i32 %25, 2
  br i1 %26, label %27, label %817

27:                                               ; preds = %2
  %28 = load ptr, ptr %19, align 8, !tbaa !34
  %29 = getelementptr inbounds %struct.ListBase, ptr %19, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !39
  %31 = call ptr @BM_edgeloop_verts_get(ptr noundef %28) #7
  %32 = load ptr, ptr %31, align 8, !tbaa !34
  %33 = getelementptr inbounds %struct.LinkData, ptr %32, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !40
  %35 = call ptr @BM_edgeloop_verts_get(ptr noundef %28) #7
  %36 = getelementptr inbounds %struct.ListBase, ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !39
  %38 = getelementptr inbounds %struct.LinkData, ptr %37, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !40
  %40 = call ptr @BM_edgeloop_verts_get(ptr noundef %30) #7
  %41 = load ptr, ptr %40, align 8, !tbaa !34
  %42 = getelementptr inbounds %struct.LinkData, ptr %41, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !40
  %44 = call ptr @BM_edgeloop_verts_get(ptr noundef %30) #7
  %45 = getelementptr inbounds %struct.ListBase, ptr %44, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !39
  %47 = getelementptr inbounds %struct.LinkData, ptr %46, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !40
  %49 = call i32 @BM_edgeloop_length_get(ptr noundef %28) #7
  %50 = call i32 @BM_edgeloop_length_get(ptr noundef %30) #7
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %817

52:                                               ; preds = %27
  %53 = call zeroext i8 @BM_edgeloop_is_closed(ptr noundef %28) #7
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %817

55:                                               ; preds = %52
  %56 = call zeroext i8 @BM_edgeloop_is_closed(ptr noundef %30) #7
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %58, label %817

58:                                               ; preds = %55
  %59 = call zeroext i8 @BM_mesh_edgeloops_find_path(ptr noundef %0, ptr noundef nonnull %20, ptr noundef nonnull @bm_edge_test_rail_cb, ptr noundef %0, ptr noundef %34, ptr noundef %43) #7
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %817, label %61

61:                                               ; preds = %58
  %62 = call zeroext i8 @BM_mesh_edgeloops_find_path(ptr noundef %0, ptr noundef nonnull %20, ptr noundef nonnull @bm_edge_test_rail_cb, ptr noundef %0, ptr noundef %34, ptr noundef %48) #7
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %817, label %64

64:                                               ; preds = %61
  %65 = load ptr, ptr %20, align 8, !tbaa !34
  %66 = getelementptr inbounds %struct.ListBase, ptr %20, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !39
  %68 = call i32 @BM_edgeloop_length_get(ptr noundef %65) #7
  %69 = call i32 @BM_edgeloop_length_get(ptr noundef %67) #7
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %64
  call void @BLI_remlink(ptr noundef nonnull %20, ptr noundef %67) #7
  call void @BM_edgeloop_free(ptr noundef %67) #7
  br label %73

72:                                               ; preds = %64
  call void @BLI_remlink(ptr noundef nonnull %20, ptr noundef %65) #7
  call void @BM_edgeloop_free(ptr noundef %65) #7
  call void @BM_edgeloop_flip(ptr noundef %0, ptr noundef %30) #7
  br label %73

73:                                               ; preds = %72, %71
  %74 = phi ptr [ %43, %72 ], [ %48, %71 ]
  %75 = phi ptr [ %67, %72 ], [ %65, %71 ]
  %76 = call zeroext i8 @BM_mesh_edgeloops_find_path(ptr noundef %0, ptr noundef nonnull %20, ptr noundef nonnull @bm_edge_test_rail_cb, ptr noundef %0, ptr noundef %39, ptr noundef %74) #7
  %77 = load ptr, ptr %66, align 8, !tbaa !39
  %78 = call i32 @BM_edgeloop_length_get(ptr noundef %75) #7
  %79 = call i32 @BM_edgeloop_length_get(ptr noundef %77) #7
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %817

81:                                               ; preds = %73
  %82 = call zeroext i8 @BM_edgeloop_overlap_check(ptr noundef %75, ptr noundef %77) #7
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %84, label %817

84:                                               ; preds = %81
  %85 = call i32 @BM_edgeloop_length_get(ptr noundef %28) #7
  %86 = call i32 @BM_edgeloop_length_get(ptr noundef %75) #7
  %87 = call ptr @BM_edgeloop_verts_get(ptr noundef %28) #7
  %88 = call ptr @BM_edgeloop_verts_get(ptr noundef %30) #7
  %89 = call ptr @BM_edgeloop_verts_get(ptr noundef %75) #7
  %90 = call ptr @BM_edgeloop_verts_get(ptr noundef %77) #7
  %91 = load ptr, ptr @MEM_callocN, align 8, !tbaa !42
  %92 = mul i32 %86, %85
  %93 = zext i32 %92 to i64
  %94 = shl nuw nsw i64 %93, 3
  %95 = call ptr %91(i64 noundef %94, ptr noundef nonnull @__func__.bm_grid_fill) #7
  %96 = load ptr, ptr %87, align 8, !tbaa !42
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %103

98:                                               ; preds = %103, %84
  %99 = load ptr, ptr %88, align 8, !tbaa !42
  %100 = icmp eq ptr %99, null
  br i1 %100, label %113, label %101

101:                                              ; preds = %98
  %102 = sub i32 %92, %85
  br label %116

103:                                              ; preds = %84, %103
  %104 = phi ptr [ %111, %103 ], [ %96, %84 ]
  %105 = phi i32 [ %110, %103 ], [ 0, %84 ]
  %106 = getelementptr inbounds %struct.LinkData, ptr %104, i64 0, i32 2
  %107 = load ptr, ptr %106, align 8, !tbaa !40
  %108 = zext i32 %105 to i64
  %109 = getelementptr inbounds ptr, ptr %95, i64 %108
  store ptr %107, ptr %109, align 8, !tbaa !42
  %110 = add i32 %105, 1
  %111 = load ptr, ptr %104, align 8, !tbaa !42
  %112 = icmp eq ptr %111, null
  br i1 %112, label %98, label %103, !llvm.loop !43

113:                                              ; preds = %116, %98
  %114 = load ptr, ptr %89, align 8, !tbaa !42
  %115 = icmp eq ptr %114, null
  br i1 %115, label %127, label %132

116:                                              ; preds = %116, %101
  %117 = phi ptr [ %99, %101 ], [ %125, %116 ]
  %118 = phi i32 [ 0, %101 ], [ %124, %116 ]
  %119 = getelementptr inbounds %struct.LinkData, ptr %117, i64 0, i32 2
  %120 = load ptr, ptr %119, align 8, !tbaa !40
  %121 = add i32 %102, %118
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds ptr, ptr %95, i64 %122
  store ptr %120, ptr %123, align 8, !tbaa !42
  %124 = add i32 %118, 1
  %125 = load ptr, ptr %117, align 8, !tbaa !42
  %126 = icmp eq ptr %125, null
  br i1 %126, label %113, label %116, !llvm.loop !46

127:                                              ; preds = %132, %113
  %128 = load ptr, ptr %90, align 8, !tbaa !42
  %129 = icmp eq ptr %128, null
  br i1 %129, label %155, label %130

130:                                              ; preds = %127
  %131 = add i32 %85, -1
  br label %143

132:                                              ; preds = %113, %132
  %133 = phi ptr [ %141, %132 ], [ %114, %113 ]
  %134 = phi i32 [ %140, %132 ], [ 0, %113 ]
  %135 = getelementptr inbounds %struct.LinkData, ptr %133, i64 0, i32 2
  %136 = load ptr, ptr %135, align 8, !tbaa !40
  %137 = mul i32 %134, %85
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds ptr, ptr %95, i64 %138
  store ptr %136, ptr %139, align 8, !tbaa !42
  %140 = add i32 %134, 1
  %141 = load ptr, ptr %133, align 8, !tbaa !42
  %142 = icmp eq ptr %141, null
  br i1 %142, label %127, label %132, !llvm.loop !47

143:                                              ; preds = %143, %130
  %144 = phi ptr [ %128, %130 ], [ %153, %143 ]
  %145 = phi i32 [ 0, %130 ], [ %152, %143 ]
  %146 = getelementptr inbounds %struct.LinkData, ptr %144, i64 0, i32 2
  %147 = load ptr, ptr %146, align 8, !tbaa !40
  %148 = mul i32 %145, %85
  %149 = add i32 %131, %148
  %150 = zext i32 %149 to i64
  %151 = getelementptr inbounds ptr, ptr %95, i64 %150
  store ptr %147, ptr %151, align 8, !tbaa !42
  %152 = add i32 %145, 1
  %153 = load ptr, ptr %144, align 8, !tbaa !42
  %154 = icmp eq ptr %153, null
  br i1 %154, label %155, label %143, !llvm.loop !48

155:                                              ; preds = %143, %127
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %18) #7
  store ptr %87, ptr %18, align 16, !tbaa !42
  %156 = getelementptr inbounds ptr, ptr %18, i64 1
  store ptr %88, ptr %156, align 8, !tbaa !42
  %157 = getelementptr inbounds ptr, ptr %18, i64 2
  store ptr %89, ptr %157, align 16, !tbaa !42
  %158 = getelementptr inbounds ptr, ptr %18, i64 3
  store ptr %90, ptr %158, align 8, !tbaa !42
  br label %159

159:                                              ; preds = %203, %155
  %160 = phi i64 [ 0, %155 ], [ %205, %203 ]
  %161 = phi i32 [ 0, %155 ], [ %204, %203 ]
  %162 = getelementptr inbounds [4 x ptr], ptr %18, i64 0, i64 %160
  %163 = load ptr, ptr %162, align 8, !tbaa !42
  %164 = load ptr, ptr %163, align 8, !tbaa !42
  %165 = icmp eq ptr %164, null
  br i1 %165, label %203, label %166

166:                                              ; preds = %159
  %167 = getelementptr inbounds [4 x i32], ptr @__const.bm_grid_fill.lb_iter_dir, i64 0, i64 %160
  br label %168

168:                                              ; preds = %199, %166
  %169 = phi ptr [ %164, %166 ], [ %201, %199 ]
  %170 = phi i32 [ %161, %166 ], [ %200, %199 ]
  %171 = load ptr, ptr %169, align 8, !tbaa !49
  %172 = icmp eq ptr %171, null
  br i1 %172, label %203, label %173

173:                                              ; preds = %168
  %174 = getelementptr inbounds %struct.LinkData, ptr %169, i64 0, i32 2
  %175 = load ptr, ptr %174, align 8, !tbaa !40
  %176 = getelementptr inbounds %struct.LinkData, ptr %171, i64 0, i32 2
  %177 = load ptr, ptr %176, align 8, !tbaa !40
  %178 = call ptr @BM_edge_exists(ptr noundef %175, ptr noundef %177) #7
  %179 = getelementptr inbounds %struct.BMEdge, ptr %178, i64 0, i32 4
  %180 = load ptr, ptr %179, align 8, !tbaa !50
  %181 = icmp eq ptr %180, null
  br i1 %181, label %187, label %182

182:                                              ; preds = %173
  %183 = getelementptr inbounds %struct.BMLoop, ptr %180, i64 0, i32 4
  %184 = load ptr, ptr %183, align 8, !tbaa !55
  %185 = icmp eq ptr %184, %180
  %186 = zext i1 %185 to i8
  br label %187

187:                                              ; preds = %182, %173
  %188 = phi i8 [ 0, %173 ], [ %186, %182 ]
  %189 = icmp eq i8 %188, 0
  br i1 %189, label %199, label %190

190:                                              ; preds = %187
  %191 = getelementptr inbounds %struct.BMLoop, ptr %180, i64 0, i32 1
  %192 = load ptr, ptr %191, align 8, !tbaa !57
  %193 = load ptr, ptr %174, align 8, !tbaa !40
  %194 = icmp eq ptr %192, %193
  %195 = load i32, ptr %167, align 4, !tbaa !58
  %196 = sub nsw i32 0, %195
  %197 = select i1 %194, i32 %195, i32 %196
  %198 = add nsw i32 %197, %170
  br label %199

199:                                              ; preds = %190, %187
  %200 = phi i32 [ %198, %190 ], [ %170, %187 ]
  %201 = load ptr, ptr %169, align 8, !tbaa !42
  %202 = icmp eq ptr %201, null
  br i1 %202, label %203, label %168, !llvm.loop !59

203:                                              ; preds = %199, %168, %159
  %204 = phi i32 [ %161, %159 ], [ %170, %168 ], [ %200, %199 ]
  %205 = add nuw nsw i64 %160, 1
  %206 = icmp eq i64 %205, 4
  br i1 %206, label %207, label %159, !llvm.loop !60

207:                                              ; preds = %203
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %18) #7
  %208 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 24
  %209 = call zeroext i8 @CustomData_has_interp(ptr noundef nonnull %208) #7
  %210 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 26
  %211 = call zeroext i8 @CustomData_has_interp(ptr noundef nonnull %210) #7
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %10) #7
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %11) #7
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %12) #7
  %212 = load ptr, ptr %95, align 8, !tbaa !42
  %213 = getelementptr inbounds %struct.BMVert, ptr %212, i64 0, i32 2
  %214 = add i32 %85, -1
  %215 = zext i32 %214 to i64
  %216 = getelementptr inbounds ptr, ptr %95, i64 %215
  %217 = load ptr, ptr %216, align 8, !tbaa !42
  %218 = getelementptr inbounds %struct.BMVert, ptr %217, i64 0, i32 2
  %219 = zext i32 %85 to i64
  %220 = getelementptr inbounds ptr, ptr %95, i64 %219
  %221 = load ptr, ptr %220, align 8, !tbaa !42
  %222 = getelementptr inbounds %struct.BMVert, ptr %221, i64 0, i32 2
  %223 = add i32 %214, %85
  %224 = zext i32 %223 to i64
  %225 = getelementptr inbounds ptr, ptr %95, i64 %224
  %226 = load ptr, ptr %225, align 8, !tbaa !42
  %227 = getelementptr inbounds %struct.BMVert, ptr %226, i64 0, i32 2
  call fastcc void @quad_verts_to_barycentric_tri(ptr noundef nonnull %10, ptr noundef nonnull %213, ptr noundef nonnull %218, ptr noundef nonnull %222, ptr noundef nonnull %227, ptr noundef null, ptr noundef null, i8 noundef zeroext 0)
  %228 = add i32 %86, -1
  %229 = mul i32 %228, %85
  %230 = zext i32 %229 to i64
  %231 = getelementptr inbounds ptr, ptr %95, i64 %230
  %232 = load ptr, ptr %231, align 8, !tbaa !42
  %233 = getelementptr inbounds %struct.BMVert, ptr %232, i64 0, i32 2
  %234 = add i32 %229, %214
  %235 = zext i32 %234 to i64
  %236 = getelementptr inbounds ptr, ptr %95, i64 %235
  %237 = load ptr, ptr %236, align 8, !tbaa !42
  %238 = getelementptr inbounds %struct.BMVert, ptr %237, i64 0, i32 2
  %239 = add i32 %86, -2
  %240 = mul i32 %239, %85
  %241 = zext i32 %240 to i64
  %242 = getelementptr inbounds ptr, ptr %95, i64 %241
  %243 = load ptr, ptr %242, align 8, !tbaa !42
  %244 = getelementptr inbounds %struct.BMVert, ptr %243, i64 0, i32 2
  %245 = add i32 %240, %214
  %246 = zext i32 %245 to i64
  %247 = getelementptr inbounds ptr, ptr %95, i64 %246
  %248 = load ptr, ptr %247, align 8, !tbaa !42
  %249 = getelementptr inbounds %struct.BMVert, ptr %248, i64 0, i32 2
  call fastcc void @quad_verts_to_barycentric_tri(ptr noundef nonnull %11, ptr noundef nonnull %233, ptr noundef nonnull %238, ptr noundef nonnull %244, ptr noundef nonnull %249, ptr noundef null, ptr noundef null, i8 noundef zeroext 1)
  %250 = icmp ne i8 %24, 0
  %251 = icmp ne i8 %209, 0
  %252 = select i1 %250, i1 true, i1 %251
  %253 = icmp ne i8 %211, 0
  %254 = select i1 %252, i1 true, i1 %253
  br i1 %254, label %255, label %295

255:                                              ; preds = %207
  %256 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !42
  %257 = shl nuw nsw i64 %93, 4
  %258 = call ptr %256(i64 noundef %257, ptr noundef nonnull @__func__.bm_grid_fill_array) #7
  %259 = uitofp i32 %214 to float
  %260 = fdiv float 1.000000e+00, %259
  %261 = uitofp i32 %228 to float
  %262 = fdiv float 1.000000e+00, %261
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #7
  %263 = icmp eq i32 %86, 0
  br i1 %263, label %294, label %264

264:                                              ; preds = %255
  %265 = getelementptr inbounds [2 x float], ptr %8, i64 0, i64 1
  %266 = icmp eq i32 %85, 0
  %267 = getelementptr inbounds float, ptr %9, i64 1
  %268 = getelementptr inbounds [2 x float], ptr %9, i64 1
  %269 = getelementptr inbounds [2 x float], ptr %9, i64 1, i64 1
  %270 = getelementptr inbounds [2 x float], ptr %9, i64 2
  %271 = getelementptr inbounds [2 x float], ptr %9, i64 2, i64 1
  %272 = getelementptr inbounds [2 x float], ptr %9, i64 3
  %273 = getelementptr inbounds [2 x float], ptr %9, i64 3, i64 1
  br label %274

274:                                              ; preds = %290, %264
  %275 = phi i32 [ 0, %264 ], [ %292, %290 ]
  %276 = phi i32 [ 0, %264 ], [ %291, %290 ]
  %277 = uitofp i32 %275 to float
  %278 = fmul float %262, %277
  store float %278, ptr %265, align 4, !tbaa !61
  br i1 %266, label %290, label %279

279:                                              ; preds = %274, %279
  %280 = phi i32 [ %288, %279 ], [ 0, %274 ]
  %281 = phi i32 [ %285, %279 ], [ %276, %274 ]
  %282 = uitofp i32 %280 to float
  %283 = fmul float %260, %282
  store float %283, ptr %8, align 4, !tbaa !61
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #7
  store float %283, ptr %9, align 16, !tbaa !61
  store float 0.000000e+00, ptr %267, align 4, !tbaa !61
  store float 0.000000e+00, ptr %268, align 8, !tbaa !61
  %284 = load float, ptr %265, align 4, !tbaa !61
  store float %284, ptr %269, align 4, !tbaa !61
  store float %283, ptr %270, align 16, !tbaa !61
  store float 1.000000e+00, ptr %271, align 4, !tbaa !61
  store float 1.000000e+00, ptr %272, align 8, !tbaa !61
  store float %284, ptr %273, align 4, !tbaa !61
  %285 = add i32 %281, 1
  %286 = zext i32 %281 to i64
  %287 = getelementptr inbounds [4 x float], ptr %258, i64 %286
  call void @barycentric_weights_v2_quad(ptr noundef nonnull %9, ptr noundef nonnull %268, ptr noundef nonnull %270, ptr noundef nonnull %272, ptr noundef nonnull %8, ptr noundef %287) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #7
  %288 = add nuw i32 %280, 1
  %289 = icmp eq i32 %288, %85
  br i1 %289, label %290, label %279, !llvm.loop !63

290:                                              ; preds = %279, %274
  %291 = phi i32 [ %276, %274 ], [ %285, %279 ]
  %292 = add nuw i32 %275, 1
  %293 = icmp eq i32 %292, %86
  br i1 %293, label %294, label %274, !llvm.loop !64

294:                                              ; preds = %290, %255
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #7
  br label %295

295:                                              ; preds = %294, %207
  %296 = phi ptr [ %258, %294 ], [ null, %207 ]
  %297 = icmp eq i8 %211, 0
  br i1 %297, label %467, label %298

298:                                              ; preds = %295
  %299 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !42
  %300 = shl nuw nsw i64 %215, 4
  %301 = call ptr %299(i64 noundef %300, ptr noundef nonnull @__func__.bm_grid_fill_array) #7
  %302 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !42
  %303 = call ptr %302(i64 noundef %300, ptr noundef nonnull @__func__.bm_grid_fill_array) #7
  %304 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !42
  %305 = zext i32 %228 to i64
  %306 = shl nuw nsw i64 %305, 4
  %307 = call ptr %304(i64 noundef %306, ptr noundef nonnull @__func__.bm_grid_fill_array) #7
  %308 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !42
  %309 = call ptr %308(i64 noundef %306, ptr noundef nonnull @__func__.bm_grid_fill_array) #7
  %310 = icmp eq i32 %214, 0
  br i1 %310, label %311, label %313

311:                                              ; preds = %386, %298
  %312 = icmp eq i32 %228, 0
  br i1 %312, label %467, label %388

313:                                              ; preds = %298, %386
  %314 = phi i64 [ %317, %386 ], [ 0, %298 ]
  %315 = getelementptr inbounds ptr, ptr %95, i64 %314
  %316 = load ptr, ptr %315, align 8, !tbaa !42
  %317 = add nuw nsw i64 %314, 1
  %318 = getelementptr inbounds ptr, ptr %95, i64 %317
  %319 = load ptr, ptr %318, align 8, !tbaa !42
  %320 = getelementptr inbounds [2 x ptr], ptr %301, i64 %314
  %321 = call ptr @BM_edge_exists(ptr noundef %316, ptr noundef %319) #7
  %322 = getelementptr inbounds %struct.BMEdge, ptr %321, i64 0, i32 4
  %323 = load ptr, ptr %322, align 8, !tbaa !50
  %324 = icmp eq ptr %323, null
  br i1 %324, label %338, label %325

325:                                              ; preds = %313
  %326 = getelementptr inbounds %struct.BMLoop, ptr %323, i64 0, i32 1
  %327 = load ptr, ptr %326, align 8, !tbaa !57
  %328 = icmp eq ptr %327, %316
  %329 = getelementptr inbounds ptr, ptr %320, i64 1
  br i1 %328, label %330, label %334

330:                                              ; preds = %325
  store ptr %323, ptr %320, align 8, !tbaa !42
  %331 = load ptr, ptr %322, align 8, !tbaa !50
  %332 = getelementptr inbounds %struct.BMLoop, ptr %331, i64 0, i32 6
  %333 = load ptr, ptr %332, align 8, !tbaa !65
  store ptr %333, ptr %329, align 8, !tbaa !42
  br label %339

334:                                              ; preds = %325
  %335 = getelementptr inbounds %struct.BMLoop, ptr %323, i64 0, i32 6
  %336 = load ptr, ptr %335, align 8, !tbaa !65
  store ptr %336, ptr %320, align 8, !tbaa !42
  %337 = load ptr, ptr %322, align 8, !tbaa !50
  store ptr %337, ptr %329, align 8, !tbaa !42
  br label %339

338:                                              ; preds = %313
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %320, i8 0, i64 16, i1 false)
  br label %339

339:                                              ; preds = %338, %334, %330
  %340 = trunc i64 %314 to i32
  %341 = add i32 %229, %340
  %342 = zext i32 %341 to i64
  %343 = getelementptr inbounds ptr, ptr %95, i64 %342
  %344 = load ptr, ptr %343, align 8, !tbaa !42
  %345 = trunc i64 %317 to i32
  %346 = add i32 %229, %345
  %347 = zext i32 %346 to i64
  %348 = getelementptr inbounds ptr, ptr %95, i64 %347
  %349 = load ptr, ptr %348, align 8, !tbaa !42
  %350 = getelementptr inbounds [2 x ptr], ptr %303, i64 %314
  %351 = call ptr @BM_edge_exists(ptr noundef %344, ptr noundef %349) #7
  %352 = getelementptr inbounds %struct.BMEdge, ptr %351, i64 0, i32 4
  %353 = load ptr, ptr %352, align 8, !tbaa !50
  %354 = icmp eq ptr %353, null
  br i1 %354, label %368, label %355

355:                                              ; preds = %339
  %356 = getelementptr inbounds %struct.BMLoop, ptr %353, i64 0, i32 1
  %357 = load ptr, ptr %356, align 8, !tbaa !57
  %358 = icmp eq ptr %357, %344
  %359 = getelementptr inbounds ptr, ptr %350, i64 1
  br i1 %358, label %360, label %364

360:                                              ; preds = %355
  store ptr %353, ptr %350, align 8, !tbaa !42
  %361 = load ptr, ptr %352, align 8, !tbaa !50
  %362 = getelementptr inbounds %struct.BMLoop, ptr %361, i64 0, i32 6
  %363 = load ptr, ptr %362, align 8, !tbaa !65
  store ptr %363, ptr %359, align 8, !tbaa !42
  br label %369

364:                                              ; preds = %355
  %365 = getelementptr inbounds %struct.BMLoop, ptr %353, i64 0, i32 6
  %366 = load ptr, ptr %365, align 8, !tbaa !65
  store ptr %366, ptr %350, align 8, !tbaa !42
  %367 = load ptr, ptr %352, align 8, !tbaa !50
  store ptr %367, ptr %359, align 8, !tbaa !42
  br label %369

368:                                              ; preds = %339
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %350, i8 0, i64 16, i1 false)
  br label %369

369:                                              ; preds = %368, %364, %360
  %370 = load ptr, ptr %320, align 8, !tbaa !42
  %371 = icmp ne ptr %370, null
  br i1 %371, label %372, label %375

372:                                              ; preds = %369
  %373 = load ptr, ptr %350, align 8, !tbaa !42
  %374 = icmp eq ptr %373, null
  br i1 %374, label %379, label %375

375:                                              ; preds = %372, %369
  %376 = load ptr, ptr %350, align 8, !tbaa !42
  %377 = icmp eq ptr %376, null
  %378 = or i1 %371, %377
  br i1 %378, label %386, label %379

379:                                              ; preds = %375, %372
  %380 = phi ptr [ %320, %372 ], [ %350, %375 ]
  %381 = phi ptr [ %350, %372 ], [ %320, %375 ]
  %382 = getelementptr inbounds ptr, ptr %380, i64 1
  %383 = load ptr, ptr %382, align 8, !tbaa !42
  store ptr %383, ptr %381, align 8, !tbaa !42
  %384 = load ptr, ptr %380, align 8, !tbaa !42
  %385 = getelementptr inbounds ptr, ptr %381, i64 1
  store ptr %384, ptr %385, align 8, !tbaa !42
  br label %386

386:                                              ; preds = %379, %375
  %387 = icmp eq i64 %317, %215
  br i1 %387, label %311, label %313, !llvm.loop !66

388:                                              ; preds = %311, %465
  %389 = phi i64 [ %395, %465 ], [ 0, %311 ]
  %390 = trunc i64 %389 to i32
  %391 = mul i32 %85, %390
  %392 = zext i32 %391 to i64
  %393 = getelementptr inbounds ptr, ptr %95, i64 %392
  %394 = load ptr, ptr %393, align 8, !tbaa !42
  %395 = add nuw nsw i64 %389, 1
  %396 = trunc i64 %395 to i32
  %397 = mul i32 %85, %396
  %398 = zext i32 %397 to i64
  %399 = getelementptr inbounds ptr, ptr %95, i64 %398
  %400 = load ptr, ptr %399, align 8, !tbaa !42
  %401 = getelementptr inbounds [2 x ptr], ptr %307, i64 %389
  %402 = call ptr @BM_edge_exists(ptr noundef %394, ptr noundef %400) #7
  %403 = getelementptr inbounds %struct.BMEdge, ptr %402, i64 0, i32 4
  %404 = load ptr, ptr %403, align 8, !tbaa !50
  %405 = icmp eq ptr %404, null
  br i1 %405, label %419, label %406

406:                                              ; preds = %388
  %407 = getelementptr inbounds %struct.BMLoop, ptr %404, i64 0, i32 1
  %408 = load ptr, ptr %407, align 8, !tbaa !57
  %409 = icmp eq ptr %408, %394
  %410 = getelementptr inbounds ptr, ptr %401, i64 1
  br i1 %409, label %411, label %415

411:                                              ; preds = %406
  store ptr %404, ptr %401, align 8, !tbaa !42
  %412 = load ptr, ptr %403, align 8, !tbaa !50
  %413 = getelementptr inbounds %struct.BMLoop, ptr %412, i64 0, i32 6
  %414 = load ptr, ptr %413, align 8, !tbaa !65
  store ptr %414, ptr %410, align 8, !tbaa !42
  br label %420

415:                                              ; preds = %406
  %416 = getelementptr inbounds %struct.BMLoop, ptr %404, i64 0, i32 6
  %417 = load ptr, ptr %416, align 8, !tbaa !65
  store ptr %417, ptr %401, align 8, !tbaa !42
  %418 = load ptr, ptr %403, align 8, !tbaa !50
  store ptr %418, ptr %410, align 8, !tbaa !42
  br label %420

419:                                              ; preds = %388
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %401, i8 0, i64 16, i1 false)
  br label %420

420:                                              ; preds = %419, %415, %411
  %421 = add i32 %391, %214
  %422 = zext i32 %421 to i64
  %423 = getelementptr inbounds ptr, ptr %95, i64 %422
  %424 = load ptr, ptr %423, align 8, !tbaa !42
  %425 = add i32 %397, %214
  %426 = zext i32 %425 to i64
  %427 = getelementptr inbounds ptr, ptr %95, i64 %426
  %428 = load ptr, ptr %427, align 8, !tbaa !42
  %429 = getelementptr inbounds [2 x ptr], ptr %309, i64 %389
  %430 = call ptr @BM_edge_exists(ptr noundef %424, ptr noundef %428) #7
  %431 = getelementptr inbounds %struct.BMEdge, ptr %430, i64 0, i32 4
  %432 = load ptr, ptr %431, align 8, !tbaa !50
  %433 = icmp eq ptr %432, null
  br i1 %433, label %447, label %434

434:                                              ; preds = %420
  %435 = getelementptr inbounds %struct.BMLoop, ptr %432, i64 0, i32 1
  %436 = load ptr, ptr %435, align 8, !tbaa !57
  %437 = icmp eq ptr %436, %424
  %438 = getelementptr inbounds ptr, ptr %429, i64 1
  br i1 %437, label %439, label %443

439:                                              ; preds = %434
  store ptr %432, ptr %429, align 8, !tbaa !42
  %440 = load ptr, ptr %431, align 8, !tbaa !50
  %441 = getelementptr inbounds %struct.BMLoop, ptr %440, i64 0, i32 6
  %442 = load ptr, ptr %441, align 8, !tbaa !65
  store ptr %442, ptr %438, align 8, !tbaa !42
  br label %448

443:                                              ; preds = %434
  %444 = getelementptr inbounds %struct.BMLoop, ptr %432, i64 0, i32 6
  %445 = load ptr, ptr %444, align 8, !tbaa !65
  store ptr %445, ptr %429, align 8, !tbaa !42
  %446 = load ptr, ptr %431, align 8, !tbaa !50
  store ptr %446, ptr %438, align 8, !tbaa !42
  br label %448

447:                                              ; preds = %420
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %429, i8 0, i64 16, i1 false)
  br label %448

448:                                              ; preds = %447, %443, %439
  %449 = load ptr, ptr %401, align 8, !tbaa !42
  %450 = icmp ne ptr %449, null
  br i1 %450, label %451, label %454

451:                                              ; preds = %448
  %452 = load ptr, ptr %429, align 8, !tbaa !42
  %453 = icmp eq ptr %452, null
  br i1 %453, label %458, label %454

454:                                              ; preds = %451, %448
  %455 = load ptr, ptr %429, align 8, !tbaa !42
  %456 = icmp eq ptr %455, null
  %457 = or i1 %450, %456
  br i1 %457, label %465, label %458

458:                                              ; preds = %454, %451
  %459 = phi ptr [ %401, %451 ], [ %429, %454 ]
  %460 = phi ptr [ %429, %451 ], [ %401, %454 ]
  %461 = getelementptr inbounds ptr, ptr %459, i64 1
  %462 = load ptr, ptr %461, align 8, !tbaa !42
  store ptr %462, ptr %460, align 8, !tbaa !42
  %463 = load ptr, ptr %459, align 8, !tbaa !42
  %464 = getelementptr inbounds ptr, ptr %460, i64 1
  store ptr %463, ptr %464, align 8, !tbaa !42
  br label %465

465:                                              ; preds = %458, %454
  %466 = icmp eq i64 %395, %305
  br i1 %466, label %467, label %388, !llvm.loop !67

467:                                              ; preds = %465, %311, %295
  %468 = phi ptr [ undef, %295 ], [ %309, %311 ], [ %309, %465 ]
  %469 = phi ptr [ undef, %295 ], [ %307, %311 ], [ %307, %465 ]
  %470 = phi ptr [ undef, %295 ], [ %303, %311 ], [ %303, %465 ]
  %471 = phi ptr [ undef, %295 ], [ %301, %311 ], [ %301, %465 ]
  %472 = icmp ugt i32 %228, 1
  br i1 %472, label %473, label %494

473:                                              ; preds = %467
  %474 = icmp ugt i32 %214, 1
  %475 = icmp eq i8 %24, 0
  %476 = getelementptr inbounds float, ptr %13, i64 1
  %477 = getelementptr inbounds float, ptr %13, i64 2
  %478 = getelementptr inbounds [3 x [3 x float]], ptr %12, i64 0, i64 1
  %479 = getelementptr inbounds [3 x [3 x float]], ptr %12, i64 0, i64 2
  %480 = getelementptr inbounds [3 x [3 x float]], ptr %10, i64 0, i64 1
  %481 = getelementptr inbounds [3 x [3 x float]], ptr %10, i64 0, i64 2
  %482 = sub i32 %92, %85
  %483 = getelementptr inbounds [3 x [3 x float]], ptr %11, i64 0, i64 1
  %484 = getelementptr inbounds [3 x [3 x float]], ptr %11, i64 0, i64 2
  %485 = uitofp i32 %86 to float
  %486 = fadd float %485, -1.000000e+00
  %487 = icmp eq i8 %209, 0
  %488 = getelementptr inbounds ptr, ptr %16, i64 1
  %489 = getelementptr inbounds ptr, ptr %16, i64 2
  %490 = getelementptr inbounds ptr, ptr %16, i64 3
  %491 = zext i32 %228 to i64
  br label %514

492:                                              ; preds = %642, %514
  %493 = icmp eq i64 %527, %491
  br i1 %493, label %494, label %514, !llvm.loop !68

494:                                              ; preds = %492, %467
  %495 = icmp eq i32 %214, 0
  br i1 %495, label %804, label %496

496:                                              ; preds = %494
  %497 = icmp eq i32 %228, 0
  %498 = icmp sgt i32 %204, -1
  %499 = getelementptr inbounds [4 x ptr], ptr %17, i64 0, i64 1
  %500 = getelementptr inbounds [4 x ptr], ptr %17, i64 0, i64 3
  %501 = getelementptr inbounds [4 x ptr], ptr %17, i64 0, i64 2
  %502 = uitofp i32 %214 to float
  %503 = getelementptr inbounds ptr, ptr %3, i64 1
  %504 = getelementptr inbounds float, ptr %4, i64 1
  %505 = uitofp i32 %228 to float
  %506 = getelementptr inbounds ptr, ptr %5, i64 1
  %507 = getelementptr inbounds float, ptr %6, i64 1
  %508 = getelementptr inbounds ptr, ptr %7, i64 1
  %509 = getelementptr inbounds ptr, ptr %7, i64 2
  %510 = getelementptr inbounds ptr, ptr %7, i64 3
  %511 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %512 = icmp eq i8 %23, 0
  %513 = zext i32 %228 to i64
  br label %645

514:                                              ; preds = %492, %473
  %515 = phi i64 [ 1, %473 ], [ %527, %492 ]
  %516 = trunc i64 %515 to i32
  %517 = mul i32 %85, %516
  %518 = zext i32 %517 to i64
  %519 = getelementptr inbounds ptr, ptr %95, i64 %518
  %520 = load ptr, ptr %519, align 8, !tbaa !42
  %521 = getelementptr inbounds %struct.BMVert, ptr %520, i64 0, i32 2
  %522 = add i32 %517, %214
  %523 = zext i32 %522 to i64
  %524 = getelementptr inbounds ptr, ptr %95, i64 %523
  %525 = load ptr, ptr %524, align 8, !tbaa !42
  %526 = getelementptr inbounds %struct.BMVert, ptr %525, i64 0, i32 2
  %527 = add nuw nsw i64 %515, 1
  %528 = trunc i64 %527 to i32
  %529 = mul i32 %85, %528
  %530 = zext i32 %529 to i64
  %531 = getelementptr inbounds ptr, ptr %95, i64 %530
  %532 = load ptr, ptr %531, align 8, !tbaa !42
  %533 = getelementptr inbounds %struct.BMVert, ptr %532, i64 0, i32 2
  %534 = add i32 %529, %214
  %535 = zext i32 %534 to i64
  %536 = getelementptr inbounds ptr, ptr %95, i64 %535
  %537 = load ptr, ptr %536, align 8, !tbaa !42
  %538 = getelementptr inbounds %struct.BMVert, ptr %537, i64 0, i32 2
  %539 = add i32 %516, -1
  %540 = mul i32 %539, %85
  %541 = zext i32 %540 to i64
  %542 = getelementptr inbounds ptr, ptr %95, i64 %541
  %543 = load ptr, ptr %542, align 8, !tbaa !42
  %544 = getelementptr inbounds %struct.BMVert, ptr %543, i64 0, i32 2
  %545 = add i32 %540, %214
  %546 = zext i32 %545 to i64
  %547 = getelementptr inbounds ptr, ptr %95, i64 %546
  %548 = load ptr, ptr %547, align 8, !tbaa !42
  %549 = getelementptr inbounds %struct.BMVert, ptr %548, i64 0, i32 2
  call fastcc void @quad_verts_to_barycentric_tri(ptr noundef nonnull %12, ptr noundef nonnull %521, ptr noundef nonnull %526, ptr noundef nonnull %533, ptr noundef nonnull %538, ptr noundef nonnull %544, ptr noundef nonnull %549, i8 noundef zeroext 0)
  br i1 %474, label %550, label %492

550:                                              ; preds = %514
  %551 = uitofp i32 %516 to float
  %552 = fdiv float %551, %486
  br label %553

553:                                              ; preds = %642, %550
  %554 = phi i64 [ 1, %550 ], [ %643, %642 ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #7
  br i1 %475, label %555, label %565

555:                                              ; preds = %553
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #7
  %556 = getelementptr inbounds ptr, ptr %95, i64 %554
  %557 = load ptr, ptr %556, align 8, !tbaa !42
  %558 = getelementptr inbounds %struct.BMVert, ptr %557, i64 0, i32 2
  call void @transform_point_by_tri_v3(ptr noundef nonnull %14, ptr noundef nonnull %558, ptr noundef nonnull %12, ptr noundef nonnull %478, ptr noundef nonnull %479, ptr noundef nonnull %10, ptr noundef nonnull %480, ptr noundef nonnull %481) #7
  %559 = trunc i64 %554 to i32
  %560 = add i32 %482, %559
  %561 = zext i32 %560 to i64
  %562 = getelementptr inbounds ptr, ptr %95, i64 %561
  %563 = load ptr, ptr %562, align 8, !tbaa !42
  %564 = getelementptr inbounds %struct.BMVert, ptr %563, i64 0, i32 2
  call void @transform_point_by_tri_v3(ptr noundef nonnull %15, ptr noundef nonnull %564, ptr noundef nonnull %12, ptr noundef nonnull %478, ptr noundef nonnull %479, ptr noundef nonnull %11, ptr noundef nonnull %483, ptr noundef nonnull %484) #7
  call void @interp_v3_v3v3(ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef nonnull %15, float noundef %552) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #7
  br label %621

565:                                              ; preds = %553
  %566 = trunc i64 %554 to i32
  %567 = add i32 %517, %566
  %568 = zext i32 %567 to i64
  %569 = getelementptr inbounds [4 x float], ptr %296, i64 %568
  store float 0.000000e+00, ptr %13, align 4, !tbaa !61
  store float 0.000000e+00, ptr %476, align 4, !tbaa !61
  store float 0.000000e+00, ptr %477, align 4, !tbaa !61
  %570 = getelementptr inbounds ptr, ptr %95, i64 %554
  %571 = load ptr, ptr %570, align 8, !tbaa !42
  %572 = getelementptr inbounds %struct.BMVert, ptr %571, i64 0, i32 2
  %573 = load float, ptr %569, align 4, !tbaa !61
  %574 = load float, ptr %572, align 4, !tbaa !61
  %575 = call float @llvm.fmuladd.f32(float %574, float %573, float 0.000000e+00)
  store float %575, ptr %13, align 4, !tbaa !61
  %576 = getelementptr inbounds %struct.BMVert, ptr %571, i64 0, i32 2, i64 1
  %577 = load float, ptr %576, align 4, !tbaa !61
  %578 = call float @llvm.fmuladd.f32(float %577, float %573, float 0.000000e+00)
  store float %578, ptr %476, align 4, !tbaa !61
  %579 = getelementptr inbounds %struct.BMVert, ptr %571, i64 0, i32 2, i64 2
  %580 = load float, ptr %579, align 4, !tbaa !61
  %581 = call float @llvm.fmuladd.f32(float %580, float %573, float 0.000000e+00)
  store float %581, ptr %477, align 4, !tbaa !61
  %582 = load ptr, ptr %519, align 8, !tbaa !42
  %583 = getelementptr inbounds %struct.BMVert, ptr %582, i64 0, i32 2
  %584 = getelementptr inbounds float, ptr %569, i64 1
  %585 = load float, ptr %584, align 4, !tbaa !61
  %586 = load float, ptr %583, align 4, !tbaa !61
  %587 = call float @llvm.fmuladd.f32(float %586, float %585, float %575)
  store float %587, ptr %13, align 4, !tbaa !61
  %588 = getelementptr inbounds %struct.BMVert, ptr %582, i64 0, i32 2, i64 1
  %589 = load float, ptr %588, align 4, !tbaa !61
  %590 = call float @llvm.fmuladd.f32(float %589, float %585, float %578)
  store float %590, ptr %476, align 4, !tbaa !61
  %591 = getelementptr inbounds %struct.BMVert, ptr %582, i64 0, i32 2, i64 2
  %592 = load float, ptr %591, align 4, !tbaa !61
  %593 = call float @llvm.fmuladd.f32(float %592, float %585, float %581)
  store float %593, ptr %477, align 4, !tbaa !61
  %594 = add i32 %229, %566
  %595 = zext i32 %594 to i64
  %596 = getelementptr inbounds ptr, ptr %95, i64 %595
  %597 = load ptr, ptr %596, align 8, !tbaa !42
  %598 = getelementptr inbounds %struct.BMVert, ptr %597, i64 0, i32 2
  %599 = getelementptr inbounds float, ptr %569, i64 2
  %600 = load float, ptr %599, align 4, !tbaa !61
  %601 = load float, ptr %598, align 4, !tbaa !61
  %602 = call float @llvm.fmuladd.f32(float %601, float %600, float %587)
  store float %602, ptr %13, align 4, !tbaa !61
  %603 = getelementptr inbounds %struct.BMVert, ptr %597, i64 0, i32 2, i64 1
  %604 = load float, ptr %603, align 4, !tbaa !61
  %605 = call float @llvm.fmuladd.f32(float %604, float %600, float %590)
  store float %605, ptr %476, align 4, !tbaa !61
  %606 = getelementptr inbounds %struct.BMVert, ptr %597, i64 0, i32 2, i64 2
  %607 = load float, ptr %606, align 4, !tbaa !61
  %608 = call float @llvm.fmuladd.f32(float %607, float %600, float %593)
  store float %608, ptr %477, align 4, !tbaa !61
  %609 = load ptr, ptr %524, align 8, !tbaa !42
  %610 = getelementptr inbounds %struct.BMVert, ptr %609, i64 0, i32 2
  %611 = getelementptr inbounds float, ptr %569, i64 3
  %612 = load float, ptr %611, align 4, !tbaa !61
  %613 = load float, ptr %610, align 4, !tbaa !61
  %614 = call float @llvm.fmuladd.f32(float %613, float %612, float %602)
  store float %614, ptr %13, align 4, !tbaa !61
  %615 = getelementptr inbounds %struct.BMVert, ptr %609, i64 0, i32 2, i64 1
  %616 = load float, ptr %615, align 4, !tbaa !61
  %617 = call float @llvm.fmuladd.f32(float %616, float %612, float %605)
  store float %617, ptr %476, align 4, !tbaa !61
  %618 = getelementptr inbounds %struct.BMVert, ptr %609, i64 0, i32 2, i64 2
  %619 = load float, ptr %618, align 4, !tbaa !61
  %620 = call float @llvm.fmuladd.f32(float %619, float %612, float %608)
  store float %620, ptr %477, align 4, !tbaa !61
  br label %621

621:                                              ; preds = %565, %555
  %622 = call ptr @BM_vert_create(ptr noundef %0, ptr noundef nonnull %13, ptr noundef null, i32 noundef 0) #7
  %623 = trunc i64 %554 to i32
  %624 = add i32 %517, %623
  %625 = zext i32 %624 to i64
  %626 = getelementptr inbounds ptr, ptr %95, i64 %625
  store ptr %622, ptr %626, align 8, !tbaa !42
  br i1 %487, label %642, label %627

627:                                              ; preds = %621
  %628 = getelementptr inbounds [4 x float], ptr %296, i64 %625
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %16) #7
  %629 = getelementptr inbounds ptr, ptr %95, i64 %554
  %630 = load ptr, ptr %629, align 8, !tbaa !42
  %631 = load ptr, ptr %630, align 8, !tbaa !69
  store ptr %631, ptr %16, align 16, !tbaa !42
  %632 = load ptr, ptr %519, align 8, !tbaa !42
  %633 = load ptr, ptr %632, align 8, !tbaa !69
  store ptr %633, ptr %488, align 8, !tbaa !42
  %634 = add i32 %229, %623
  %635 = zext i32 %634 to i64
  %636 = getelementptr inbounds ptr, ptr %95, i64 %635
  %637 = load ptr, ptr %636, align 8, !tbaa !42
  %638 = load ptr, ptr %637, align 8, !tbaa !69
  store ptr %638, ptr %489, align 16, !tbaa !42
  %639 = load ptr, ptr %524, align 8, !tbaa !42
  %640 = load ptr, ptr %639, align 8, !tbaa !69
  store ptr %640, ptr %490, align 8, !tbaa !42
  %641 = load ptr, ptr %622, align 8, !tbaa !69
  call void @CustomData_bmesh_interp(ptr noundef nonnull %208, ptr noundef nonnull %16, ptr noundef %628, ptr noundef null, i32 noundef 4, ptr noundef %641) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %16) #7
  br label %642

642:                                              ; preds = %627, %621
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #7
  %643 = add nuw nsw i64 %554, 1
  %644 = icmp eq i64 %643, %215
  br i1 %644, label %492, label %553, !llvm.loop !71

645:                                              ; preds = %801, %496
  %646 = phi i64 [ 0, %496 ], [ %802, %801 ]
  br i1 %497, label %801, label %647

647:                                              ; preds = %645
  %648 = add nuw nsw i64 %646, 1
  %649 = getelementptr inbounds [2 x ptr], ptr %471, i64 %646
  %650 = select i1 %498, i64 %648, i64 %646
  %651 = trunc i64 %650 to i32
  %652 = select i1 %498, i64 %646, i64 %648
  %653 = trunc i64 %652 to i32
  br label %654

654:                                              ; preds = %798, %647
  %655 = phi i64 [ 0, %647 ], [ %799, %798 ]
  %656 = trunc i64 %655 to i32
  %657 = mul i32 %85, %656
  %658 = add i32 %656, 1
  %659 = mul i32 %658, %85
  %660 = add i32 %657, %651
  %661 = zext i32 %660 to i64
  %662 = getelementptr inbounds ptr, ptr %95, i64 %661
  %663 = load ptr, ptr %662, align 8, !tbaa !42
  %664 = add i32 %659, %651
  %665 = zext i32 %664 to i64
  %666 = getelementptr inbounds ptr, ptr %95, i64 %665
  %667 = load ptr, ptr %666, align 8, !tbaa !42
  %668 = add i32 %659, %653
  %669 = zext i32 %668 to i64
  %670 = getelementptr inbounds ptr, ptr %95, i64 %669
  %671 = load ptr, ptr %670, align 8, !tbaa !42
  %672 = add i32 %657, %653
  %673 = zext i32 %672 to i64
  %674 = getelementptr inbounds ptr, ptr %95, i64 %673
  %675 = load ptr, ptr %674, align 8, !tbaa !42
  %676 = call ptr @BM_face_create_quad_tri(ptr noundef %0, ptr noundef %663, ptr noundef %667, ptr noundef %671, ptr noundef %675, ptr noundef null, i32 noundef 0) #7
  br i1 %253, label %677, label %784

677:                                              ; preds = %654
  %678 = load ptr, ptr %649, align 8, !tbaa !42
  %679 = icmp eq ptr %678, null
  br i1 %679, label %680, label %684

680:                                              ; preds = %677
  %681 = getelementptr inbounds [2 x ptr], ptr %469, i64 %655
  %682 = load ptr, ptr %681, align 8, !tbaa !42
  %683 = icmp eq ptr %682, null
  br i1 %683, label %784, label %684

684:                                              ; preds = %680, %677
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %17) #7
  %685 = load ptr, ptr %649, align 8, !tbaa !42
  %686 = icmp ne ptr %685, null
  %687 = getelementptr inbounds [2 x ptr], ptr %469, i64 %655
  %688 = load ptr, ptr %687, align 8, !tbaa !42
  %689 = icmp eq ptr %688, null
  %690 = select i1 %686, ptr %685, ptr %688
  %691 = select i1 %686, i1 %689, i1 false
  %692 = getelementptr inbounds %struct.BMLoop, ptr %690, i64 0, i32 3
  %693 = load ptr, ptr %692, align 8, !tbaa !72
  call void @BM_elem_attrs_copy(ptr noundef %0, ptr noundef %0, ptr noundef %693, ptr noundef %676) #7
  call void @BM_face_as_array_loop_quad(ptr noundef %676, ptr noundef nonnull %17) #7
  %694 = getelementptr inbounds %struct.BMFace, ptr %676, i64 0, i32 2
  %695 = load ptr, ptr %694, align 8, !tbaa !73
  %696 = getelementptr inbounds %struct.BMLoop, ptr %695, i64 0, i32 6
  br i1 %498, label %703, label %697

697:                                              ; preds = %684
  store ptr %695, ptr %17, align 16, !tbaa !42
  %698 = load ptr, ptr %696, align 8, !tbaa !65
  store ptr %698, ptr %499, align 8, !tbaa !42
  %699 = getelementptr inbounds %struct.BMLoop, ptr %698, i64 0, i32 6
  %700 = load ptr, ptr %699, align 8, !tbaa !65
  store ptr %700, ptr %500, align 8, !tbaa !42
  %701 = getelementptr inbounds %struct.BMLoop, ptr %700, i64 0, i32 6
  %702 = load ptr, ptr %701, align 8, !tbaa !65
  store ptr %702, ptr %501, align 16, !tbaa !42
  br label %709

703:                                              ; preds = %684
  store ptr %695, ptr %501, align 16, !tbaa !42
  %704 = load ptr, ptr %696, align 8, !tbaa !65
  store ptr %704, ptr %500, align 8, !tbaa !42
  %705 = getelementptr inbounds %struct.BMLoop, ptr %704, i64 0, i32 6
  %706 = load ptr, ptr %705, align 8, !tbaa !65
  store ptr %706, ptr %499, align 8, !tbaa !42
  %707 = getelementptr inbounds %struct.BMLoop, ptr %706, i64 0, i32 6
  %708 = load ptr, ptr %707, align 8, !tbaa !65
  store ptr %708, ptr %17, align 16, !tbaa !42
  br label %709

709:                                              ; preds = %703, %697
  %710 = xor i1 %686, true
  %711 = select i1 %710, i1 true, i1 %689
  br label %712

712:                                              ; preds = %709, %780
  %713 = phi i64 [ %781, %780 ], [ 0, %709 ]
  %714 = phi i32 [ %777, %780 ], [ 0, %709 ]
  %715 = add nuw nsw i64 %713, %646
  %716 = trunc i64 %715 to i32
  %717 = uitofp i32 %716 to float
  %718 = fdiv float %717, %502
  %719 = fsub float 1.000000e+00, %718
  %720 = getelementptr inbounds [2 x ptr], ptr %471, i64 %646, i64 %713
  %721 = getelementptr inbounds [2 x ptr], ptr %470, i64 %646, i64 %713
  br label %722

722:                                              ; preds = %776, %712
  %723 = phi i64 [ 0, %712 ], [ %778, %776 ]
  %724 = phi i32 [ %714, %712 ], [ %777, %776 ]
  br i1 %711, label %747, label %725

725:                                              ; preds = %722
  %726 = add nuw nsw i64 %723, %655
  %727 = trunc i64 %726 to i32
  %728 = mul i32 %85, %727
  %729 = add i32 %728, %716
  %730 = zext i32 %729 to i64
  %731 = getelementptr inbounds [4 x float], ptr %296, i64 %730
  %732 = load ptr, ptr %720, align 8, !tbaa !42
  %733 = getelementptr inbounds [2 x ptr], ptr %469, i64 %655, i64 %723
  %734 = load ptr, ptr %733, align 8, !tbaa !42
  %735 = load ptr, ptr %721, align 8, !tbaa !42
  %736 = getelementptr inbounds [2 x ptr], ptr %468, i64 %655, i64 %723
  %737 = load ptr, ptr %736, align 8, !tbaa !42
  %738 = add i32 %724, 1
  %739 = zext i32 %724 to i64
  %740 = getelementptr inbounds [4 x ptr], ptr %17, i64 0, i64 %739
  %741 = load ptr, ptr %740, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #7
  %742 = load ptr, ptr %732, align 8, !tbaa !76
  store ptr %742, ptr %7, align 16, !tbaa !42
  %743 = load ptr, ptr %734, align 8, !tbaa !76
  store ptr %743, ptr %508, align 8, !tbaa !42
  %744 = load ptr, ptr %735, align 8, !tbaa !76
  store ptr %744, ptr %509, align 16, !tbaa !42
  %745 = load ptr, ptr %737, align 8, !tbaa !76
  store ptr %745, ptr %510, align 8, !tbaa !42
  %746 = load ptr, ptr %741, align 8, !tbaa !76
  call void @CustomData_bmesh_interp(ptr noundef nonnull %210, ptr noundef nonnull %7, ptr noundef %731, ptr noundef null, i32 noundef 4, ptr noundef %746) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #7
  br label %776

747:                                              ; preds = %722
  br i1 %691, label %748, label %763

748:                                              ; preds = %747
  %749 = add nuw nsw i64 %723, %655
  %750 = trunc i64 %749 to i32
  %751 = uitofp i32 %750 to float
  %752 = fdiv float %751, %505
  %753 = load ptr, ptr %720, align 8, !tbaa !42
  %754 = load ptr, ptr %721, align 8, !tbaa !42
  %755 = add i32 %724, 1
  %756 = zext i32 %724 to i64
  %757 = getelementptr inbounds [4 x ptr], ptr %17, i64 0, i64 %756
  %758 = load ptr, ptr %757, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #7
  %759 = load ptr, ptr %753, align 8, !tbaa !76
  store ptr %759, ptr %5, align 16, !tbaa !42
  %760 = load ptr, ptr %754, align 8, !tbaa !76
  store ptr %760, ptr %506, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #7
  %761 = fsub float 1.000000e+00, %752
  store float %761, ptr %6, align 4, !tbaa !61
  store float %752, ptr %507, align 4, !tbaa !61
  %762 = load ptr, ptr %758, align 8, !tbaa !76
  call void @CustomData_bmesh_interp(ptr noundef nonnull %210, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef null, i32 noundef 2, ptr noundef %762) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #7
  br label %776

763:                                              ; preds = %747
  br i1 %686, label %776, label %764

764:                                              ; preds = %763
  %765 = getelementptr inbounds [2 x ptr], ptr %469, i64 %655, i64 %723
  %766 = load ptr, ptr %765, align 8, !tbaa !42
  %767 = getelementptr inbounds [2 x ptr], ptr %468, i64 %655, i64 %723
  %768 = load ptr, ptr %767, align 8, !tbaa !42
  %769 = add i32 %724, 1
  %770 = zext i32 %724 to i64
  %771 = getelementptr inbounds [4 x ptr], ptr %17, i64 0, i64 %770
  %772 = load ptr, ptr %771, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7
  %773 = load ptr, ptr %766, align 8, !tbaa !76
  store ptr %773, ptr %3, align 16, !tbaa !42
  %774 = load ptr, ptr %768, align 8, !tbaa !76
  store ptr %774, ptr %503, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #7
  store float %719, ptr %4, align 4, !tbaa !61
  store float %718, ptr %504, align 4, !tbaa !61
  %775 = load ptr, ptr %772, align 8, !tbaa !76
  call void @CustomData_bmesh_interp(ptr noundef nonnull %210, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef null, i32 noundef 2, ptr noundef %775) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7
  br label %776

776:                                              ; preds = %764, %763, %748, %725
  %777 = phi i32 [ %738, %725 ], [ %755, %748 ], [ %769, %764 ], [ %724, %763 ]
  %778 = add nuw nsw i64 %723, 1
  %779 = icmp eq i64 %723, 0
  br i1 %779, label %722, label %780, !llvm.loop !77

780:                                              ; preds = %776
  %781 = add nuw nsw i64 %713, 1
  %782 = icmp eq i64 %713, 0
  br i1 %782, label %712, label %783, !llvm.loop !78

783:                                              ; preds = %780
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %17) #7
  br label %784

784:                                              ; preds = %783, %680, %654
  %785 = getelementptr inbounds %struct.BMFace, ptr %676, i64 0, i32 1
  %786 = load ptr, ptr %785, align 8, !tbaa !79
  %787 = load i32, ptr %511, align 8, !tbaa !80
  %788 = sext i32 %787 to i64
  %789 = getelementptr %struct.BMFlagLayer, ptr %786, i64 %788
  %790 = getelementptr %struct.BMFlagLayer, ptr %789, i64 -1
  %791 = load i16, ptr %790, align 2, !tbaa !83
  %792 = or i16 %791, 16
  store i16 %792, ptr %790, align 2, !tbaa !83
  %793 = getelementptr inbounds %struct.BMFace, ptr %676, i64 0, i32 5
  store i16 %22, ptr %793, align 8, !tbaa !85
  br i1 %512, label %798, label %794

794:                                              ; preds = %784
  %795 = getelementptr inbounds %struct.BMHeader, ptr %676, i64 0, i32 3
  %796 = load i8, ptr %795, align 1, !tbaa !86
  %797 = or i8 %796, 8
  store i8 %797, ptr %795, align 1, !tbaa !86
  br label %798

798:                                              ; preds = %794, %784
  %799 = add nuw nsw i64 %655, 1
  %800 = icmp eq i64 %799, %513
  br i1 %800, label %801, label %654, !llvm.loop !87

801:                                              ; preds = %798, %645
  %802 = add nuw nsw i64 %646, 1
  %803 = icmp eq i64 %802, %215
  br i1 %803, label %804, label %645, !llvm.loop !88

804:                                              ; preds = %801, %494
  br i1 %297, label %810, label %805

805:                                              ; preds = %804
  %806 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  call void %806(ptr noundef %471) #7
  %807 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  call void %807(ptr noundef %469) #7
  %808 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  call void %808(ptr noundef %470) #7
  %809 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  call void %809(ptr noundef %468) #7
  br label %810

810:                                              ; preds = %805, %804
  %811 = icmp eq ptr %296, null
  br i1 %811, label %814, label %812

812:                                              ; preds = %810
  %813 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  call void %813(ptr noundef nonnull %296) #7
  br label %814

814:                                              ; preds = %810, %812
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %12) #7
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %11) #7
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %10) #7
  %815 = load ptr, ptr @MEM_freeN, align 8, !tbaa !42
  call void %815(ptr noundef %95) #7
  call void @BM_mesh_edgeloops_free(ptr noundef nonnull %19) #7
  call void @BM_mesh_edgeloops_free(ptr noundef nonnull %20) #7
  %816 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 1
  call void @BMO_slot_buffer_from_enabled_flag(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %816, ptr noundef nonnull @.str.10, i8 noundef zeroext 8, i16 noundef signext 16) #7
  br label %819

817:                                              ; preds = %81, %73, %61, %58, %52, %55, %27, %2
  %818 = phi ptr [ @.str.4, %2 ], [ @.str.5, %27 ], [ @.str.6, %55 ], [ @.str.6, %52 ], [ @.str.7, %58 ], [ @.str.7, %61 ], [ @.str.8, %73 ], [ @.str.9, %81 ]
  call void @BMO_error_raise(ptr noundef %0, ptr noundef %1, i32 noundef 8, ptr noundef nonnull %818) #7
  call void @BM_mesh_edgeloops_free(ptr noundef nonnull %19) #7
  call void @BM_mesh_edgeloops_free(ptr noundef nonnull %20) #7
  br label %819

819:                                              ; preds = %817, %814
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %20) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %19) #7
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

declare i32 @BMO_slot_int_get(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @BMO_slot_bool_get(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BMO_slot_buffer_flag_enable(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i16 noundef signext) local_unnamed_addr #3

declare i32 @BM_mesh_edgeloops_find(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal zeroext i8 @bm_edge_test_cb(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #4 {
  %3 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !89
  %5 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 22
  %6 = load i32, ptr %5, align 8, !tbaa !80
  %7 = sext i32 %6 to i64
  %8 = getelementptr %struct.BMFlagLayer, ptr %4, i64 %7
  %9 = getelementptr %struct.BMFlagLayer, ptr %8, i64 -1
  %10 = load i16, ptr %9, align 2, !tbaa !83
  %11 = trunc i16 %10 to i8
  %12 = lshr i8 %11, 2
  %13 = and i8 %12, 1
  ret i8 %13
}

declare void @BMO_error_raise(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @BM_edgeloop_verts_get(ptr noundef) local_unnamed_addr #3

declare i32 @BM_edgeloop_length_get(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @BM_edgeloop_is_closed(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @BM_mesh_edgeloops_find_path(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal zeroext i8 @bm_edge_test_rail_cb(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #4 {
  %3 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %4 = load i8, ptr %3, align 1, !tbaa !86
  %5 = and i8 %4, 2
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %15

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.BMEdge, ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !50
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.BMLoop, ptr %9, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !55
  %14 = icmp eq ptr %13, %9
  br label %15

15:                                               ; preds = %7, %11, %2
  %16 = phi i1 [ false, %2 ], [ %10, %7 ], [ %14, %11 ]
  %17 = zext i1 %16 to i8
  ret i8 %17
}

declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BM_edgeloop_free(ptr noundef) local_unnamed_addr #3

declare void @BM_edgeloop_flip(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare zeroext i8 @BM_edgeloop_overlap_check(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BM_mesh_edgeloops_free(ptr noundef) local_unnamed_addr #3

declare void @BMO_slot_buffer_from_enabled_flag(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i16 noundef signext) local_unnamed_addr #3

declare ptr @BM_edge_exists(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @CustomData_has_interp(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @quad_verts_to_barycentric_tri(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr noundef readonly %5, ptr nocapture noundef readonly %6, i8 noundef zeroext %7) unnamed_addr #0 {
  %9 = load float, ptr %1, align 4, !tbaa !61
  store float %9, ptr %0, align 4, !tbaa !61
  %10 = getelementptr inbounds float, ptr %1, i64 1
  %11 = load float, ptr %10, align 4, !tbaa !61
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !61
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !61
  %15 = getelementptr inbounds float, ptr %0, i64 2
  store float %14, ptr %15, align 4, !tbaa !61
  %16 = getelementptr inbounds [3 x float], ptr %0, i64 1
  %17 = load float, ptr %2, align 4, !tbaa !61
  store float %17, ptr %16, align 4, !tbaa !61
  %18 = getelementptr inbounds float, ptr %2, i64 1
  %19 = load float, ptr %18, align 4, !tbaa !61
  %20 = getelementptr inbounds [3 x float], ptr %0, i64 1, i64 1
  store float %19, ptr %20, align 4, !tbaa !61
  %21 = getelementptr inbounds float, ptr %2, i64 2
  %22 = load float, ptr %21, align 4, !tbaa !61
  %23 = getelementptr inbounds [3 x float], ptr %0, i64 1, i64 2
  store float %22, ptr %23, align 4, !tbaa !61
  %24 = load float, ptr %3, align 4, !tbaa !61
  %25 = load float, ptr %1, align 4, !tbaa !61
  %26 = fsub float %24, %25
  %27 = getelementptr inbounds float, ptr %3, i64 1
  %28 = load float, ptr %27, align 4, !tbaa !61
  %29 = load float, ptr %10, align 4, !tbaa !61
  %30 = fsub float %28, %29
  %31 = getelementptr inbounds float, ptr %3, i64 2
  %32 = load float, ptr %31, align 4, !tbaa !61
  %33 = load float, ptr %13, align 4, !tbaa !61
  %34 = fsub float %32, %33
  %35 = load float, ptr %4, align 4, !tbaa !61
  %36 = load float, ptr %2, align 4, !tbaa !61
  %37 = fsub float %35, %36
  %38 = getelementptr inbounds float, ptr %4, i64 1
  %39 = load float, ptr %38, align 4, !tbaa !61
  %40 = load float, ptr %18, align 4, !tbaa !61
  %41 = fsub float %39, %40
  %42 = getelementptr inbounds float, ptr %4, i64 2
  %43 = load float, ptr %42, align 4, !tbaa !61
  %44 = load float, ptr %21, align 4, !tbaa !61
  %45 = fsub float %43, %44
  %46 = fmul float %30, %30
  %47 = tail call float @llvm.fmuladd.f32(float %26, float %26, float %46)
  %48 = tail call float @llvm.fmuladd.f32(float %34, float %34, float %47)
  %49 = fcmp ogt float %48, 0x38AA95A5C0000000
  br i1 %49, label %50, label %56

50:                                               ; preds = %8
  %51 = tail call float @sqrtf(float noundef %48) #7
  %52 = fdiv float 1.000000e+00, %51
  %53 = fmul float %26, %52
  %54 = fmul float %30, %52
  %55 = fmul float %34, %52
  br label %56

56:                                               ; preds = %50, %8
  %57 = phi float [ %54, %50 ], [ 0.000000e+00, %8 ]
  %58 = phi float [ %53, %50 ], [ 0.000000e+00, %8 ]
  %59 = phi float [ %55, %50 ], [ 0.000000e+00, %8 ]
  %60 = fmul float %41, %41
  %61 = tail call float @llvm.fmuladd.f32(float %37, float %37, float %60)
  %62 = tail call float @llvm.fmuladd.f32(float %45, float %45, float %61)
  %63 = fcmp ogt float %62, 0x38AA95A5C0000000
  br i1 %63, label %64, label %70

64:                                               ; preds = %56
  %65 = tail call float @sqrtf(float noundef %62) #7
  %66 = fdiv float 1.000000e+00, %65
  %67 = fmul float %37, %66
  %68 = fmul float %41, %66
  %69 = fmul float %45, %66
  br label %70

70:                                               ; preds = %64, %56
  %71 = phi float [ %68, %64 ], [ 0.000000e+00, %56 ]
  %72 = phi float [ %67, %64 ], [ 0.000000e+00, %56 ]
  %73 = phi float [ %69, %64 ], [ 0.000000e+00, %56 ]
  %74 = fadd float %58, %72
  %75 = fadd float %57, %71
  %76 = fadd float %59, %73
  %77 = fmul float %75, %75
  %78 = tail call float @llvm.fmuladd.f32(float %74, float %74, float %77)
  %79 = tail call float @llvm.fmuladd.f32(float %76, float %76, float %78)
  %80 = fcmp ogt float %79, 0x38AA95A5C0000000
  br i1 %80, label %81, label %87

81:                                               ; preds = %70
  %82 = tail call float @sqrtf(float noundef %79) #7
  %83 = fdiv float 1.000000e+00, %82
  %84 = fmul float %74, %83
  %85 = fmul float %75, %83
  %86 = fmul float %76, %83
  br label %87

87:                                               ; preds = %70, %81
  %88 = phi float [ %85, %81 ], [ 0.000000e+00, %70 ]
  %89 = phi float [ %84, %81 ], [ 0.000000e+00, %70 ]
  %90 = phi float [ %86, %81 ], [ 0.000000e+00, %70 ]
  %91 = icmp eq ptr %5, null
  br i1 %91, label %173, label %92

92:                                               ; preds = %87
  %93 = load float, ptr %1, align 4, !tbaa !61
  %94 = load float, ptr %5, align 4, !tbaa !61
  %95 = fsub float %93, %94
  %96 = load float, ptr %10, align 4, !tbaa !61
  %97 = getelementptr inbounds float, ptr %5, i64 1
  %98 = load float, ptr %97, align 4, !tbaa !61
  %99 = fsub float %96, %98
  %100 = load float, ptr %13, align 4, !tbaa !61
  %101 = getelementptr inbounds float, ptr %5, i64 2
  %102 = load float, ptr %101, align 4, !tbaa !61
  %103 = fsub float %100, %102
  %104 = load float, ptr %2, align 4, !tbaa !61
  %105 = load float, ptr %6, align 4, !tbaa !61
  %106 = fsub float %104, %105
  %107 = load float, ptr %18, align 4, !tbaa !61
  %108 = getelementptr inbounds float, ptr %6, i64 1
  %109 = load float, ptr %108, align 4, !tbaa !61
  %110 = fsub float %107, %109
  %111 = load float, ptr %21, align 4, !tbaa !61
  %112 = getelementptr inbounds float, ptr %6, i64 2
  %113 = load float, ptr %112, align 4, !tbaa !61
  %114 = fsub float %111, %113
  %115 = fmul float %99, %99
  %116 = tail call float @llvm.fmuladd.f32(float %95, float %95, float %115)
  %117 = tail call float @llvm.fmuladd.f32(float %103, float %103, float %116)
  %118 = fcmp ogt float %117, 0x38AA95A5C0000000
  br i1 %118, label %119, label %125

119:                                              ; preds = %92
  %120 = tail call float @sqrtf(float noundef %117) #7
  %121 = fdiv float 1.000000e+00, %120
  %122 = fmul float %95, %121
  %123 = fmul float %99, %121
  %124 = fmul float %103, %121
  br label %125

125:                                              ; preds = %119, %92
  %126 = phi float [ %123, %119 ], [ 0.000000e+00, %92 ]
  %127 = phi float [ %122, %119 ], [ 0.000000e+00, %92 ]
  %128 = phi float [ %124, %119 ], [ 0.000000e+00, %92 ]
  %129 = fmul float %110, %110
  %130 = tail call float @llvm.fmuladd.f32(float %106, float %106, float %129)
  %131 = tail call float @llvm.fmuladd.f32(float %114, float %114, float %130)
  %132 = fcmp ogt float %131, 0x38AA95A5C0000000
  br i1 %132, label %133, label %139

133:                                              ; preds = %125
  %134 = tail call float @sqrtf(float noundef %131) #7
  %135 = fdiv float 1.000000e+00, %134
  %136 = fmul float %106, %135
  %137 = fmul float %110, %135
  %138 = fmul float %114, %135
  br label %139

139:                                              ; preds = %133, %125
  %140 = phi float [ %137, %133 ], [ 0.000000e+00, %125 ]
  %141 = phi float [ %136, %133 ], [ 0.000000e+00, %125 ]
  %142 = phi float [ %138, %133 ], [ 0.000000e+00, %125 ]
  %143 = fadd float %127, %141
  %144 = fadd float %126, %140
  %145 = fadd float %128, %142
  %146 = fmul float %144, %144
  %147 = tail call float @llvm.fmuladd.f32(float %143, float %143, float %146)
  %148 = tail call float @llvm.fmuladd.f32(float %145, float %145, float %147)
  %149 = fcmp ogt float %148, 0x38AA95A5C0000000
  br i1 %149, label %150, label %156

150:                                              ; preds = %139
  %151 = tail call float @sqrtf(float noundef %148) #7
  %152 = fdiv float 1.000000e+00, %151
  %153 = fmul float %143, %152
  %154 = fmul float %144, %152
  %155 = fmul float %145, %152
  br label %156

156:                                              ; preds = %139, %150
  %157 = phi float [ %154, %150 ], [ 0.000000e+00, %139 ]
  %158 = phi float [ %153, %150 ], [ 0.000000e+00, %139 ]
  %159 = phi float [ %155, %150 ], [ 0.000000e+00, %139 ]
  %160 = fadd float %89, %158
  %161 = fadd float %88, %157
  %162 = fadd float %90, %159
  %163 = fmul float %161, %161
  %164 = tail call float @llvm.fmuladd.f32(float %160, float %160, float %163)
  %165 = tail call float @llvm.fmuladd.f32(float %162, float %162, float %164)
  %166 = fcmp ogt float %165, 0x38AA95A5C0000000
  br i1 %166, label %167, label %173

167:                                              ; preds = %156
  %168 = tail call float @sqrtf(float noundef %165) #7
  %169 = fdiv float 1.000000e+00, %168
  %170 = fmul float %160, %169
  %171 = fmul float %161, %169
  %172 = fmul float %162, %169
  br label %173

173:                                              ; preds = %167, %156, %87
  %174 = phi float [ %90, %87 ], [ %172, %167 ], [ 0.000000e+00, %156 ]
  %175 = phi float [ %88, %87 ], [ %171, %167 ], [ 0.000000e+00, %156 ]
  %176 = phi float [ %89, %87 ], [ %170, %167 ], [ 0.000000e+00, %156 ]
  %177 = icmp eq i8 %7, 0
  %178 = fneg float %176
  %179 = fneg float %175
  %180 = fneg float %174
  %181 = select i1 %177, float %174, float %180
  %182 = select i1 %177, float %175, float %179
  %183 = select i1 %177, float %176, float %178
  %184 = load float, ptr %16, align 4, !tbaa !61
  %185 = load float, ptr %0, align 4, !tbaa !61
  %186 = fsub float %184, %185
  %187 = load float, ptr %20, align 4, !tbaa !61
  %188 = load float, ptr %12, align 4, !tbaa !61
  %189 = fsub float %187, %188
  %190 = load float, ptr %23, align 4, !tbaa !61
  %191 = load float, ptr %15, align 4, !tbaa !61
  %192 = fsub float %190, %191
  %193 = fmul float %189, %189
  %194 = tail call float @llvm.fmuladd.f32(float %186, float %186, float %193)
  %195 = tail call float @llvm.fmuladd.f32(float %192, float %192, float %194)
  %196 = tail call float @sqrtf(float noundef %195) #7
  %197 = fmul float %183, %196
  %198 = fmul float %182, %196
  %199 = fmul float %181, %196
  %200 = getelementptr inbounds [3 x float], ptr %0, i64 2
  tail call void @mid_v3_v3v3(ptr noundef nonnull %200, ptr noundef nonnull %0, ptr noundef nonnull %16) #7
  %201 = load float, ptr %200, align 4, !tbaa !61
  %202 = fadd float %197, %201
  store float %202, ptr %200, align 4, !tbaa !61
  %203 = getelementptr inbounds [3 x float], ptr %0, i64 2, i64 1
  %204 = load float, ptr %203, align 4, !tbaa !61
  %205 = fadd float %198, %204
  store float %205, ptr %203, align 4, !tbaa !61
  %206 = getelementptr inbounds [3 x float], ptr %0, i64 2, i64 2
  %207 = load float, ptr %206, align 4, !tbaa !61
  %208 = fadd float %199, %207
  store float %208, ptr %206, align 4, !tbaa !61
  ret void
}

declare void @transform_point_by_tri_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @interp_v3_v3v3(ptr noundef, ptr noundef, ptr noundef, float noundef) local_unnamed_addr #3

declare ptr @BM_vert_create(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @CustomData_bmesh_interp(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @BM_face_create_quad_tri(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @BM_elem_attrs_copy(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @BM_face_as_array_loop_quad(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @mid_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

declare void @barycentric_weights_v2_quad(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 7547212}
!8 = !{!"MaxCount", i64 1843200}
!9 = !{!"MaxInternalCount", i64 1843200}
!10 = !{!"MaxFunctionCount", i64 6}
!11 = !{!"NumCounts", i64 213}
!12 = !{!"NumFunctions", i64 14}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 1843200, i32 1}
!18 = !{i32 100000, i64 1843200, i32 1}
!19 = !{i32 200000, i64 1843200, i32 1}
!20 = !{i32 300000, i64 921600, i32 7}
!21 = !{i32 400000, i64 921600, i32 7}
!22 = !{i32 500000, i64 921600, i32 7}
!23 = !{i32 600000, i64 921600, i32 7}
!24 = !{i32 700000, i64 921600, i32 7}
!25 = !{i32 800000, i64 921600, i32 7}
!26 = !{i32 900000, i64 921600, i32 7}
!27 = !{i32 950000, i64 921600, i32 7}
!28 = !{i32 990000, i64 115200, i32 8}
!29 = !{i32 999000, i64 14400, i32 12}
!30 = !{i32 999900, i64 1440, i32 13}
!31 = !{i32 999990, i64 21, i32 15}
!32 = !{i32 999999, i64 1, i32 48}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !36, i64 0}
!35 = !{!"ListBase", !36, i64 0, !36, i64 8}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!35, !36, i64 8}
!40 = !{!41, !36, i64 16}
!41 = !{!"LinkData", !36, i64 0, !36, i64 8, !36, i64 16}
!42 = !{!36, !36, i64 0}
!43 = distinct !{!43, !44, !45}
!44 = !{!"llvm.loop.mustprogress"}
!45 = !{!"llvm.loop.unroll.disable"}
!46 = distinct !{!46, !44, !45}
!47 = distinct !{!47, !44, !45}
!48 = distinct !{!48, !44, !45}
!49 = !{!41, !36, i64 0}
!50 = !{!51, !36, i64 40}
!51 = !{!"BMEdge", !52, i64 0, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !54, i64 48, !54, i64 64}
!52 = !{!"BMHeader", !36, i64 0, !53, i64 8, !37, i64 12, !37, i64 13, !37, i64 14}
!53 = !{!"int", !37, i64 0}
!54 = !{!"BMDiskLink", !36, i64 0, !36, i64 8}
!55 = !{!56, !36, i64 40}
!56 = !{!"BMLoop", !52, i64 0, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64}
!57 = !{!56, !36, i64 16}
!58 = !{!53, !53, i64 0}
!59 = distinct !{!59, !44, !45}
!60 = distinct !{!60, !44, !45}
!61 = !{!62, !62, i64 0}
!62 = !{!"float", !37, i64 0}
!63 = distinct !{!63, !44, !45}
!64 = distinct !{!64, !44, !45}
!65 = !{!56, !36, i64 56}
!66 = distinct !{!66, !44, !45}
!67 = distinct !{!67, !44, !45}
!68 = distinct !{!68, !44, !45}
!69 = !{!70, !36, i64 0}
!70 = !{!"BMVert", !52, i64 0, !36, i64 16, !37, i64 24, !37, i64 36, !36, i64 48}
!71 = distinct !{!71, !44, !45}
!72 = !{!56, !36, i64 32}
!73 = !{!74, !36, i64 24}
!74 = !{!"BMFace", !52, i64 0, !36, i64 16, !36, i64 24, !53, i64 32, !37, i64 36, !75, i64 48}
!75 = !{!"short", !37, i64 0}
!76 = !{!56, !36, i64 0}
!77 = distinct !{!77, !44, !45}
!78 = distinct !{!78, !44, !45}
!79 = !{!74, !36, i64 16}
!80 = !{!81, !53, i64 128}
!81 = !{!"BMesh", !53, i64 0, !53, i64 4, !53, i64 8, !53, i64 12, !53, i64 16, !53, i64 20, !53, i64 24, !37, i64 28, !37, i64 29, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !53, i64 88, !53, i64 92, !53, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !53, i64 128, !36, i64 136, !82, i64 144, !82, i64 344, !82, i64 544, !82, i64 744, !75, i64 944, !53, i64 948, !53, i64 952, !53, i64 956, !35, i64 960, !36, i64 976, !35, i64 984, !36, i64 1000}
!82 = !{!"CustomData", !36, i64 0, !37, i64 8, !53, i64 172, !53, i64 176, !53, i64 180, !36, i64 184, !36, i64 192}
!83 = !{!84, !75, i64 0}
!84 = !{!"BMFlagLayer", !75, i64 0}
!85 = !{!74, !75, i64 48}
!86 = !{!52, !37, i64 13}
!87 = distinct !{!87, !44, !45}
!88 = distinct !{!88, !44, !45}
!89 = !{!51, !36, i64 16}

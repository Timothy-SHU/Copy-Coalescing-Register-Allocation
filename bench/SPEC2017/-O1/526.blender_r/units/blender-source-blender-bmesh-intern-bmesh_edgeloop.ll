; ModuleID = 'blender/source/blender/bmesh/intern/bmesh_edgeloop.c'
source_filename = "blender/source/blender/bmesh/intern/bmesh_edgeloop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.BMIter = type { %union.anon, ptr, ptr, i32, i8 }
%union.anon = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMDiskLink = type { ptr, ptr }
%struct.BMEdgeLoopStore = type { ptr, ptr, %struct.ListBase, i32, i32, [3 x float], [3 x float] }
%struct.LinkData = type { ptr, ptr, ptr }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct.VertStep = type { ptr, ptr, ptr }

@MEM_callocN = external local_unnamed_addr global ptr, align 8
@__func__.BM_mesh_edgeloops_find = private unnamed_addr constant [23 x i8] c"BM_mesh_edgeloops_find\00", align 1
@__func__.BM_mesh_edgeloops_find_path = private unnamed_addr constant [28 x i8] c"BM_mesh_edgeloops_find_path\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@__func__.BM_edgeloop_copy = private unnamed_addr constant [17 x i8] c"BM_edgeloop_copy\00", align 1
@__func__.BM_edgeloop_from_verts = private unnamed_addr constant [23 x i8] c"BM_edgeloop_from_verts\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_dupallocN = external local_unnamed_addr global ptr, align 8
@__func__.bm_loop_build = private unnamed_addr constant [14 x i8] c"bm_loop_build\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @BM_mesh_edgeloops_find(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.BMIter, align 8
  %6 = alloca %struct.BMIter, align 8
  %7 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #11
  %8 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 4
  store i8 1, ptr %8, align 4, !tbaa !34
  %9 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %9, align 8, !tbaa !40
  %10 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %10, align 8, !tbaa !41
  %11 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 9
  %12 = load ptr, ptr %11, align 8, !tbaa !42
  store ptr %12, ptr %7, align 8, !tbaa !47
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %7) #11
  %13 = load ptr, ptr %10, align 8, !tbaa !41
  %14 = call ptr %13(ptr noundef nonnull %7) #11
  %15 = icmp eq ptr %14, null
  br i1 %15, label %24, label %16

16:                                               ; preds = %4, %16
  %17 = phi ptr [ %22, %16 ], [ %14, %4 ]
  %18 = getelementptr inbounds %struct.BMHeader, ptr %17, i64 0, i32 3
  %19 = load i8, ptr %18, align 1, !tbaa !48
  %20 = and i8 %19, 127
  store i8 %20, ptr %18, align 1, !tbaa !48
  %21 = load ptr, ptr %10, align 8, !tbaa !41
  %22 = call ptr %21(ptr noundef nonnull %7) #11
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %16, !llvm.loop !50

24:                                               ; preds = %16, %4
  store i8 2, ptr %8, align 4, !tbaa !34
  store ptr @bmiter__elem_of_mesh_begin, ptr %9, align 8, !tbaa !40
  store ptr @bmiter__elem_of_mesh_step, ptr %10, align 8, !tbaa !41
  %25 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 10
  %26 = load ptr, ptr %25, align 8, !tbaa !53
  store ptr %26, ptr %7, align 8, !tbaa !47
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %7) #11
  %27 = load ptr, ptr %10, align 8, !tbaa !41
  %28 = call ptr %27(ptr noundef nonnull %7) #11
  %29 = icmp eq ptr %28, null
  br i1 %29, label %54, label %30

30:                                               ; preds = %24, %50
  %31 = phi ptr [ %52, %50 ], [ %28, %24 ]
  %32 = call zeroext i8 %2(ptr noundef nonnull %31, ptr noundef %3) #11
  %33 = icmp eq i8 %32, 0
  %34 = getelementptr inbounds %struct.BMHeader, ptr %31, i64 0, i32 3
  %35 = load i8, ptr %34, align 1, !tbaa !48
  br i1 %33, label %48, label %36

36:                                               ; preds = %30
  %37 = or i8 %35, -128
  store i8 %37, ptr %34, align 1, !tbaa !48
  %38 = getelementptr inbounds %struct.BMEdge, ptr %31, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !54
  %40 = getelementptr inbounds %struct.BMHeader, ptr %39, i64 0, i32 3
  %41 = load i8, ptr %40, align 1, !tbaa !48
  %42 = or i8 %41, -128
  store i8 %42, ptr %40, align 1, !tbaa !48
  %43 = getelementptr inbounds %struct.BMEdge, ptr %31, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !57
  %45 = getelementptr inbounds %struct.BMHeader, ptr %44, i64 0, i32 3
  %46 = load i8, ptr %45, align 1, !tbaa !48
  %47 = or i8 %46, -128
  store i8 %47, ptr %45, align 1, !tbaa !48
  br label %50

48:                                               ; preds = %30
  %49 = and i8 %35, 127
  store i8 %49, ptr %34, align 1, !tbaa !48
  br label %50

50:                                               ; preds = %36, %48
  %51 = load ptr, ptr %10, align 8, !tbaa !41
  %52 = call ptr %51(ptr noundef nonnull %7) #11
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %30, !llvm.loop !58

54:                                               ; preds = %50, %24
  store i8 2, ptr %8, align 4, !tbaa !34
  store ptr @bmiter__elem_of_mesh_begin, ptr %9, align 8, !tbaa !40
  store ptr @bmiter__elem_of_mesh_step, ptr %10, align 8, !tbaa !41
  %55 = load ptr, ptr %25, align 8, !tbaa !53
  store ptr %55, ptr %7, align 8, !tbaa !47
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %7) #11
  %56 = load ptr, ptr %10, align 8, !tbaa !41
  %57 = call ptr %56(ptr noundef nonnull %7) #11
  %58 = icmp eq ptr %57, null
  br i1 %58, label %244, label %59

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 4
  %61 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  %62 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  %63 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 4
  %64 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  %65 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  br label %66

66:                                               ; preds = %59, %239
  %67 = phi ptr [ %57, %59 ], [ %242, %239 ]
  %68 = phi i32 [ 0, %59 ], [ %240, %239 ]
  %69 = getelementptr inbounds %struct.BMHeader, ptr %67, i64 0, i32 3
  %70 = load i8, ptr %69, align 1, !tbaa !48
  %71 = icmp sgt i8 %70, -1
  br i1 %71, label %239, label %72

72:                                               ; preds = %66
  %73 = load ptr, ptr @MEM_callocN, align 8, !tbaa !59
  %74 = call ptr %73(i64 noundef 64, ptr noundef nonnull @__func__.BM_mesh_edgeloops_find) #11
  %75 = getelementptr inbounds %struct.BMEdge, ptr %67, i64 0, i32 2
  %76 = getelementptr inbounds %struct.BMEdge, ptr %67, i64 0, i32 3
  %77 = load ptr, ptr %76, align 8, !tbaa !57
  %78 = getelementptr inbounds %struct.BMHeader, ptr %77, i64 0, i32 3
  %79 = load i8, ptr %78, align 1, !tbaa !48
  %80 = icmp sgt i8 %79, -1
  br i1 %80, label %152, label %81

81:                                               ; preds = %72
  %82 = load ptr, ptr %75, align 8, !tbaa !54
  %83 = getelementptr inbounds %struct.BMEdgeLoopStore, ptr %74, i64 0, i32 2
  %84 = getelementptr inbounds %struct.BMEdgeLoopStore, ptr %74, i64 0, i32 4
  %85 = getelementptr inbounds %struct.BMEdgeLoopStore, ptr %74, i64 0, i32 3
  br label %86

86:                                               ; preds = %81, %148
  %87 = phi ptr [ %149, %148 ], [ %77, %81 ]
  %88 = phi ptr [ %151, %148 ], [ %82, %81 ]
  %89 = icmp eq ptr %87, null
  br i1 %89, label %152, label %90

90:                                               ; preds = %86
  %91 = load ptr, ptr @MEM_callocN, align 8, !tbaa !59
  %92 = call ptr %91(i64 noundef 24, ptr noundef nonnull @__func__.bm_loop_build) #11
  %93 = getelementptr inbounds %struct.LinkData, ptr %92, i64 0, i32 2
  store ptr %87, ptr %93, align 8, !tbaa !60
  call void @BLI_addhead(ptr noundef nonnull %83, ptr noundef %92) #11, !callees !62
  %94 = load i32, ptr %84, align 4, !tbaa !63
  %95 = add nsw i32 %94, 1
  store i32 %95, ptr %84, align 4, !tbaa !63
  %96 = getelementptr inbounds %struct.BMHeader, ptr %87, i64 0, i32 3
  %97 = load i8, ptr %96, align 1, !tbaa !48
  %98 = and i8 %97, 127
  store i8 %98, ptr %96, align 1, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #11
  store i8 4, ptr %60, align 4, !tbaa !34
  store ptr @bmiter__edge_of_vert_begin, ptr %61, align 8, !tbaa !40
  store ptr @bmiter__edge_of_vert_step, ptr %62, align 8, !tbaa !41
  store ptr %87, ptr %6, align 8, !tbaa !47
  call void @bmiter__edge_of_vert_begin(ptr noundef nonnull %6) #11
  %99 = load ptr, ptr %62, align 8, !tbaa !41
  %100 = call ptr %99(ptr noundef nonnull %6) #11
  %101 = icmp eq ptr %100, null
  br i1 %101, label %128, label %102

102:                                              ; preds = %90, %122
  %103 = phi ptr [ %126, %122 ], [ %100, %90 ]
  %104 = phi i32 [ %124, %122 ], [ 0, %90 ]
  %105 = phi ptr [ %123, %122 ], [ null, %90 ]
  %106 = getelementptr inbounds %struct.BMHeader, ptr %103, i64 0, i32 3
  %107 = load i8, ptr %106, align 1, !tbaa !48
  %108 = icmp sgt i8 %107, -1
  br i1 %108, label %122, label %109

109:                                              ; preds = %102
  %110 = getelementptr inbounds %struct.BMEdge, ptr %103, i64 0, i32 2
  %111 = load ptr, ptr %110, align 8, !tbaa !54
  %112 = icmp eq ptr %111, %87
  %113 = getelementptr inbounds %struct.BMEdge, ptr %103, i64 0, i32 3
  %114 = load ptr, ptr %113, align 8, !tbaa !57
  %115 = icmp eq ptr %114, %87
  %116 = select i1 %115, ptr %111, ptr null
  %117 = select i1 %112, ptr %114, ptr %116
  %118 = icmp ne ptr %117, %88
  %119 = select i1 %118, ptr %103, ptr %105
  %120 = zext i1 %118 to i32
  %121 = add i32 %104, %120
  br label %122

122:                                              ; preds = %109, %102
  %123 = phi ptr [ %119, %109 ], [ %105, %102 ]
  %124 = phi i32 [ %121, %109 ], [ %104, %102 ]
  %125 = load ptr, ptr %62, align 8, !tbaa !41
  %126 = call ptr %125(ptr noundef nonnull %6) #11
  %127 = icmp eq ptr %126, null
  br i1 %127, label %128, label %102, !llvm.loop !65

128:                                              ; preds = %122, %90
  %129 = phi ptr [ null, %90 ], [ %123, %122 ]
  %130 = phi i32 [ 0, %90 ], [ %124, %122 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #11
  switch i32 %130, label %148 [
    i32 1, label %131
    i32 0, label %147
  ]

131:                                              ; preds = %128
  %132 = getelementptr inbounds %struct.BMEdge, ptr %129, i64 0, i32 2
  %133 = load ptr, ptr %132, align 8, !tbaa !54
  %134 = icmp eq ptr %133, %87
  %135 = getelementptr inbounds %struct.BMEdge, ptr %129, i64 0, i32 3
  %136 = load ptr, ptr %135, align 8, !tbaa !57
  %137 = icmp eq ptr %136, %87
  %138 = select i1 %137, ptr %133, ptr null
  %139 = select i1 %134, ptr %136, ptr %138
  %140 = getelementptr inbounds %struct.BMHeader, ptr %129, i64 0, i32 3
  %141 = load i8, ptr %140, align 1, !tbaa !48
  %142 = and i8 %141, 127
  store i8 %142, ptr %140, align 1, !tbaa !48
  %143 = icmp eq ptr %139, %77
  br i1 %143, label %144, label %148

144:                                              ; preds = %131
  %145 = load i32, ptr %85, align 8, !tbaa !66
  %146 = or i32 %145, 1
  store i32 %146, ptr %85, align 8, !tbaa !66
  br label %148

147:                                              ; preds = %128
  br label %148

148:                                              ; preds = %147, %144, %131, %128
  %149 = phi ptr [ %87, %128 ], [ null, %144 ], [ %139, %131 ], [ null, %147 ]
  %150 = phi i1 [ false, %128 ], [ true, %144 ], [ true, %131 ], [ true, %147 ]
  %151 = phi ptr [ %88, %128 ], [ %87, %144 ], [ %87, %131 ], [ %87, %147 ]
  br i1 %150, label %86, label %236, !llvm.loop !67

152:                                              ; preds = %86, %72
  %153 = load ptr, ptr %75, align 8, !tbaa !54
  %154 = getelementptr inbounds %struct.BMHeader, ptr %153, i64 0, i32 3
  %155 = load i8, ptr %154, align 1, !tbaa !48
  %156 = icmp sgt i8 %155, -1
  br i1 %156, label %228, label %157

157:                                              ; preds = %152
  %158 = load ptr, ptr %76, align 8, !tbaa !57
  %159 = getelementptr inbounds %struct.BMEdgeLoopStore, ptr %74, i64 0, i32 2
  %160 = getelementptr inbounds %struct.BMEdgeLoopStore, ptr %74, i64 0, i32 4
  %161 = getelementptr inbounds %struct.BMEdgeLoopStore, ptr %74, i64 0, i32 3
  br label %162

162:                                              ; preds = %157, %224
  %163 = phi ptr [ %225, %224 ], [ %153, %157 ]
  %164 = phi ptr [ %227, %224 ], [ %158, %157 ]
  %165 = icmp eq ptr %163, null
  br i1 %165, label %228, label %166

166:                                              ; preds = %162
  %167 = load ptr, ptr @MEM_callocN, align 8, !tbaa !59
  %168 = call ptr %167(i64 noundef 24, ptr noundef nonnull @__func__.bm_loop_build) #11
  %169 = getelementptr inbounds %struct.LinkData, ptr %168, i64 0, i32 2
  store ptr %163, ptr %169, align 8, !tbaa !60
  call void @BLI_addtail(ptr noundef nonnull %159, ptr noundef %168) #11, !callees !62
  %170 = load i32, ptr %160, align 4, !tbaa !63
  %171 = add nsw i32 %170, 1
  store i32 %171, ptr %160, align 4, !tbaa !63
  %172 = getelementptr inbounds %struct.BMHeader, ptr %163, i64 0, i32 3
  %173 = load i8, ptr %172, align 1, !tbaa !48
  %174 = and i8 %173, 127
  store i8 %174, ptr %172, align 1, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #11
  store i8 4, ptr %63, align 4, !tbaa !34
  store ptr @bmiter__edge_of_vert_begin, ptr %64, align 8, !tbaa !40
  store ptr @bmiter__edge_of_vert_step, ptr %65, align 8, !tbaa !41
  store ptr %163, ptr %5, align 8, !tbaa !47
  call void @bmiter__edge_of_vert_begin(ptr noundef nonnull %5) #11
  %175 = load ptr, ptr %65, align 8, !tbaa !41
  %176 = call ptr %175(ptr noundef nonnull %5) #11
  %177 = icmp eq ptr %176, null
  br i1 %177, label %204, label %178

178:                                              ; preds = %166, %198
  %179 = phi ptr [ %202, %198 ], [ %176, %166 ]
  %180 = phi i32 [ %200, %198 ], [ 0, %166 ]
  %181 = phi ptr [ %199, %198 ], [ null, %166 ]
  %182 = getelementptr inbounds %struct.BMHeader, ptr %179, i64 0, i32 3
  %183 = load i8, ptr %182, align 1, !tbaa !48
  %184 = icmp sgt i8 %183, -1
  br i1 %184, label %198, label %185

185:                                              ; preds = %178
  %186 = getelementptr inbounds %struct.BMEdge, ptr %179, i64 0, i32 2
  %187 = load ptr, ptr %186, align 8, !tbaa !54
  %188 = icmp eq ptr %187, %163
  %189 = getelementptr inbounds %struct.BMEdge, ptr %179, i64 0, i32 3
  %190 = load ptr, ptr %189, align 8, !tbaa !57
  %191 = icmp eq ptr %190, %163
  %192 = select i1 %191, ptr %187, ptr null
  %193 = select i1 %188, ptr %190, ptr %192
  %194 = icmp ne ptr %193, %164
  %195 = select i1 %194, ptr %179, ptr %181
  %196 = zext i1 %194 to i32
  %197 = add i32 %180, %196
  br label %198

198:                                              ; preds = %185, %178
  %199 = phi ptr [ %195, %185 ], [ %181, %178 ]
  %200 = phi i32 [ %197, %185 ], [ %180, %178 ]
  %201 = load ptr, ptr %65, align 8, !tbaa !41
  %202 = call ptr %201(ptr noundef nonnull %5) #11
  %203 = icmp eq ptr %202, null
  br i1 %203, label %204, label %178, !llvm.loop !65

204:                                              ; preds = %198, %166
  %205 = phi ptr [ null, %166 ], [ %199, %198 ]
  %206 = phi i32 [ 0, %166 ], [ %200, %198 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #11
  switch i32 %206, label %224 [
    i32 1, label %207
    i32 0, label %223
  ]

207:                                              ; preds = %204
  %208 = getelementptr inbounds %struct.BMEdge, ptr %205, i64 0, i32 2
  %209 = load ptr, ptr %208, align 8, !tbaa !54
  %210 = icmp eq ptr %209, %163
  %211 = getelementptr inbounds %struct.BMEdge, ptr %205, i64 0, i32 3
  %212 = load ptr, ptr %211, align 8, !tbaa !57
  %213 = icmp eq ptr %212, %163
  %214 = select i1 %213, ptr %209, ptr null
  %215 = select i1 %210, ptr %212, ptr %214
  %216 = getelementptr inbounds %struct.BMHeader, ptr %205, i64 0, i32 3
  %217 = load i8, ptr %216, align 1, !tbaa !48
  %218 = and i8 %217, 127
  store i8 %218, ptr %216, align 1, !tbaa !48
  %219 = icmp eq ptr %215, %153
  br i1 %219, label %220, label %224

220:                                              ; preds = %207
  %221 = load i32, ptr %161, align 8, !tbaa !66
  %222 = or i32 %221, 1
  store i32 %222, ptr %161, align 8, !tbaa !66
  br label %224

223:                                              ; preds = %204
  br label %224

224:                                              ; preds = %223, %220, %207, %204
  %225 = phi ptr [ %163, %204 ], [ null, %220 ], [ %215, %207 ], [ null, %223 ]
  %226 = phi i1 [ false, %204 ], [ true, %220 ], [ true, %207 ], [ true, %223 ]
  %227 = phi ptr [ %164, %204 ], [ %163, %220 ], [ %163, %207 ], [ %163, %223 ]
  br i1 %226, label %162, label %236, !llvm.loop !67

228:                                              ; preds = %162, %152
  %229 = getelementptr inbounds %struct.BMEdgeLoopStore, ptr %74, i64 0, i32 4
  %230 = load i32, ptr %229, align 4, !tbaa !63
  %231 = icmp sgt i32 %230, 1
  br i1 %231, label %232, label %236

232:                                              ; preds = %228
  call void @BLI_addtail(ptr noundef %1, ptr noundef %74) #11
  %233 = load i8, ptr %69, align 1, !tbaa !48
  %234 = and i8 %233, 127
  store i8 %234, ptr %69, align 1, !tbaa !48
  %235 = add nsw i32 %68, 1
  br label %239

236:                                              ; preds = %148, %224, %228
  %237 = getelementptr inbounds %struct.BMEdgeLoopStore, ptr %74, i64 0, i32 2
  call void @BLI_freelistN(ptr noundef nonnull %237) #11
  %238 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  call void %238(ptr noundef %74) #11
  br label %239

239:                                              ; preds = %232, %236, %66
  %240 = phi i32 [ %68, %66 ], [ %235, %232 ], [ %68, %236 ]
  %241 = load ptr, ptr %10, align 8, !tbaa !41
  %242 = call ptr %241(ptr noundef nonnull %7) #11
  %243 = icmp eq ptr %242, null
  br i1 %243, label %244, label %66, !llvm.loop !68

244:                                              ; preds = %239, %54
  %245 = phi i32 [ 0, %54 ], [ %240, %239 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #11
  ret i32 %245
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @BM_edgeloop_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.BMEdgeLoopStore, ptr %0, i64 0, i32 2
  tail call void @BLI_freelistN(ptr noundef nonnull %2) #11
  %3 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  tail call void %3(ptr noundef %0) #11
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @BM_mesh_edgeloops_find_path(ptr nocapture noundef %0, ptr noundef %1, ptr noundef readonly %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = alloca %struct.BMIter, align 8
  %8 = alloca [2 x ptr], align 16
  %9 = alloca %struct.ListBase, align 8
  %10 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #11
  %11 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 4
  store i8 1, ptr %11, align 4, !tbaa !34
  %12 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %12, align 8, !tbaa !40
  %13 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %13, align 8, !tbaa !41
  %14 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 9
  %15 = load ptr, ptr %14, align 8, !tbaa !42
  store ptr %15, ptr %7, align 8, !tbaa !47
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %7) #11
  %16 = load ptr, ptr %13, align 8, !tbaa !41
  %17 = call ptr %16(ptr noundef nonnull %7) #11
  %18 = icmp eq ptr %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %6, %19
  %20 = phi ptr [ %23, %19 ], [ %17, %6 ]
  %21 = getelementptr inbounds %struct.BMHeader, ptr %20, i64 0, i32 1
  store i32 0, ptr %21, align 8, !tbaa !69
  %22 = load ptr, ptr %13, align 8, !tbaa !41
  %23 = call ptr %22(ptr noundef nonnull %7) #11
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %19, !llvm.loop !70

25:                                               ; preds = %19, %6
  %26 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 7
  %27 = load i8, ptr %26, align 4, !tbaa !71
  %28 = or i8 %27, 1
  store i8 %28, ptr %26, align 4, !tbaa !71
  %29 = icmp eq ptr %2, null
  store i8 2, ptr %11, align 4, !tbaa !34
  store ptr @bmiter__elem_of_mesh_begin, ptr %12, align 8, !tbaa !40
  store ptr @bmiter__elem_of_mesh_step, ptr %13, align 8, !tbaa !41
  %30 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 10
  %31 = load ptr, ptr %30, align 8, !tbaa !53
  store ptr %31, ptr %7, align 8, !tbaa !47
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %7) #11
  %32 = load ptr, ptr %13, align 8, !tbaa !41
  %33 = call ptr %32(ptr noundef nonnull %7) #11
  %34 = icmp eq ptr %33, null
  br i1 %29, label %60, label %35

35:                                               ; preds = %25
  br i1 %34, label %79, label %36

36:                                               ; preds = %35, %56
  %37 = phi ptr [ %58, %56 ], [ %33, %35 ]
  %38 = call zeroext i8 %2(ptr noundef nonnull %37, ptr noundef %3) #11
  %39 = icmp eq i8 %38, 0
  %40 = getelementptr inbounds %struct.BMHeader, ptr %37, i64 0, i32 3
  %41 = load i8, ptr %40, align 1, !tbaa !48
  br i1 %39, label %54, label %42

42:                                               ; preds = %36
  %43 = or i8 %41, -128
  store i8 %43, ptr %40, align 1, !tbaa !48
  %44 = getelementptr inbounds %struct.BMEdge, ptr %37, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !54
  %46 = getelementptr inbounds %struct.BMHeader, ptr %45, i64 0, i32 3
  %47 = load i8, ptr %46, align 1, !tbaa !48
  %48 = or i8 %47, -128
  store i8 %48, ptr %46, align 1, !tbaa !48
  %49 = getelementptr inbounds %struct.BMEdge, ptr %37, i64 0, i32 3
  %50 = load ptr, ptr %49, align 8, !tbaa !57
  %51 = getelementptr inbounds %struct.BMHeader, ptr %50, i64 0, i32 3
  %52 = load i8, ptr %51, align 1, !tbaa !48
  %53 = or i8 %52, -128
  store i8 %53, ptr %51, align 1, !tbaa !48
  br label %56

54:                                               ; preds = %36
  %55 = and i8 %41, 127
  store i8 %55, ptr %40, align 1, !tbaa !48
  br label %56

56:                                               ; preds = %42, %54
  %57 = load ptr, ptr %13, align 8, !tbaa !41
  %58 = call ptr %57(ptr noundef nonnull %7) #11
  %59 = icmp eq ptr %58, null
  br i1 %59, label %79, label %36, !llvm.loop !72

60:                                               ; preds = %25
  br i1 %34, label %79, label %61

61:                                               ; preds = %60, %61
  %62 = phi ptr [ %77, %61 ], [ %33, %60 ]
  %63 = getelementptr inbounds %struct.BMHeader, ptr %62, i64 0, i32 3
  %64 = load i8, ptr %63, align 1, !tbaa !48
  %65 = or i8 %64, -128
  store i8 %65, ptr %63, align 1, !tbaa !48
  %66 = getelementptr inbounds %struct.BMEdge, ptr %62, i64 0, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !54
  %68 = getelementptr inbounds %struct.BMHeader, ptr %67, i64 0, i32 3
  %69 = load i8, ptr %68, align 1, !tbaa !48
  %70 = or i8 %69, -128
  store i8 %70, ptr %68, align 1, !tbaa !48
  %71 = getelementptr inbounds %struct.BMEdge, ptr %62, i64 0, i32 3
  %72 = load ptr, ptr %71, align 8, !tbaa !57
  %73 = getelementptr inbounds %struct.BMHeader, ptr %72, i64 0, i32 3
  %74 = load i8, ptr %73, align 1, !tbaa !48
  %75 = or i8 %74, -128
  store i8 %75, ptr %73, align 1, !tbaa !48
  %76 = load ptr, ptr %13, align 8, !tbaa !41
  %77 = call ptr %76(ptr noundef nonnull %7) #11
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %61, !llvm.loop !73

79:                                               ; preds = %56, %61, %35, %60
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  %80 = call ptr @BLI_mempool_create(i32 noundef 24, i32 noundef 0, i32 noundef 512, i32 noundef 0) #11
  %81 = getelementptr inbounds %struct.BMVert, ptr %4, i64 0, i32 4
  %82 = load ptr, ptr %81, align 8, !tbaa !74
  %83 = call ptr @BLI_mempool_alloc(ptr noundef %80) #11
  %84 = getelementptr inbounds %struct.VertStep, ptr %83, i64 0, i32 2
  store ptr %4, ptr %84, align 8, !tbaa !76
  %85 = getelementptr inbounds %struct.BMHeader, ptr %4, i64 0, i32 1
  store i32 1, ptr %85, align 8, !tbaa !69
  store ptr %82, ptr %81, align 8, !tbaa !74
  call void @BLI_addtail(ptr noundef nonnull %9, ptr noundef %83) #11
  %86 = getelementptr inbounds %struct.BMVert, ptr %5, i64 0, i32 4
  %87 = load ptr, ptr %86, align 8, !tbaa !74
  %88 = call ptr @BLI_mempool_alloc(ptr noundef %80) #11
  %89 = getelementptr inbounds %struct.VertStep, ptr %88, i64 0, i32 2
  store ptr %5, ptr %89, align 8, !tbaa !76
  %90 = getelementptr inbounds %struct.BMHeader, ptr %5, i64 0, i32 1
  store i32 -1, ptr %90, align 8, !tbaa !69
  store ptr %87, ptr %86, align 8, !tbaa !74
  call void @BLI_addtail(ptr noundef nonnull %10, ptr noundef %88) #11
  %91 = load i8, ptr %26, align 4, !tbaa !71
  %92 = or i8 %91, 1
  store i8 %92, ptr %26, align 4, !tbaa !71
  br label %93

93:                                               ; preds = %99, %79
  %94 = call fastcc zeroext i8 @bm_loop_path_build_step(ptr noundef %80, ptr noundef nonnull %9, i32 noundef 1, ptr noundef nonnull %8)
  %95 = icmp eq i8 %94, 0
  %96 = load ptr, ptr %8, align 16
  %97 = icmp ne ptr %96, null
  %98 = select i1 %95, i1 true, i1 %97
  br i1 %98, label %105, label %99

99:                                               ; preds = %93
  %100 = call fastcc zeroext i8 @bm_loop_path_build_step(ptr noundef %80, ptr noundef nonnull %10, i32 noundef -1, ptr noundef nonnull %8)
  %101 = icmp eq i8 %100, 0
  %102 = load ptr, ptr %8, align 16
  %103 = icmp ne ptr %102, null
  %104 = select i1 %101, i1 true, i1 %103
  br i1 %104, label %105, label %93, !llvm.loop !78

105:                                              ; preds = %99, %93
  call void @BLI_mempool_destroy(ptr noundef %80) #11
  %106 = load ptr, ptr %8, align 16, !tbaa !59
  %107 = icmp ne ptr %106, null
  br i1 %107, label %108, label %160

108:                                              ; preds = %105
  %109 = load ptr, ptr @MEM_callocN, align 8, !tbaa !59
  %110 = call ptr %109(i64 noundef 64, ptr noundef nonnull @__func__.BM_mesh_edgeloops_find_path) #11
  %111 = getelementptr inbounds %struct.BMEdgeLoopStore, ptr %110, i64 0, i32 2
  %112 = getelementptr inbounds %struct.BMEdgeLoopStore, ptr %110, i64 0, i32 4
  br label %113

113:                                              ; preds = %132, %108
  %114 = phi ptr [ %106, %108 ], [ %133, %132 ]
  %115 = load ptr, ptr @MEM_callocN, align 8, !tbaa !59
  %116 = call ptr %115(i64 noundef 24, ptr noundef nonnull @__func__.BM_mesh_edgeloops_find_path) #11
  %117 = getelementptr inbounds %struct.LinkData, ptr %116, i64 0, i32 2
  store ptr %114, ptr %117, align 8, !tbaa !60
  call void @BLI_addhead(ptr noundef nonnull %111, ptr noundef %116) #11
  %118 = load i32, ptr %112, align 4, !tbaa !63
  %119 = add nsw i32 %118, 1
  store i32 %119, ptr %112, align 4, !tbaa !63
  %120 = icmp eq ptr %114, %4
  br i1 %120, label %132, label %121

121:                                              ; preds = %113
  %122 = getelementptr inbounds %struct.BMVert, ptr %114, i64 0, i32 4
  %123 = load ptr, ptr %122, align 8, !tbaa !74
  %124 = getelementptr inbounds %struct.BMEdge, ptr %123, i64 0, i32 2
  %125 = load ptr, ptr %124, align 8, !tbaa !54
  %126 = icmp eq ptr %125, %114
  %127 = getelementptr inbounds %struct.BMEdge, ptr %123, i64 0, i32 3
  %128 = load ptr, ptr %127, align 8, !tbaa !57
  br i1 %126, label %132, label %129

129:                                              ; preds = %121
  %130 = icmp eq ptr %128, %114
  %131 = select i1 %130, ptr %125, ptr null
  br label %132

132:                                              ; preds = %121, %129, %113
  %133 = phi ptr [ %114, %113 ], [ %131, %129 ], [ %128, %121 ]
  br i1 %120, label %134, label %113

134:                                              ; preds = %132
  %135 = getelementptr inbounds %struct.BMEdgeLoopStore, ptr %110, i64 0, i32 4
  %136 = getelementptr inbounds [2 x ptr], ptr %8, i64 0, i64 1
  %137 = load ptr, ptr %136, align 8, !tbaa !59
  br label %138

138:                                              ; preds = %157, %134
  %139 = phi ptr [ %137, %134 ], [ %158, %157 ]
  %140 = load ptr, ptr @MEM_callocN, align 8, !tbaa !59
  %141 = call ptr %140(i64 noundef 24, ptr noundef nonnull @__func__.BM_mesh_edgeloops_find_path) #11
  %142 = getelementptr inbounds %struct.LinkData, ptr %141, i64 0, i32 2
  store ptr %139, ptr %142, align 8, !tbaa !60
  call void @BLI_addtail(ptr noundef nonnull %111, ptr noundef %141) #11
  %143 = load i32, ptr %135, align 4, !tbaa !63
  %144 = add nsw i32 %143, 1
  store i32 %144, ptr %135, align 4, !tbaa !63
  %145 = icmp eq ptr %139, %5
  br i1 %145, label %157, label %146

146:                                              ; preds = %138
  %147 = getelementptr inbounds %struct.BMVert, ptr %139, i64 0, i32 4
  %148 = load ptr, ptr %147, align 8, !tbaa !74
  %149 = getelementptr inbounds %struct.BMEdge, ptr %148, i64 0, i32 2
  %150 = load ptr, ptr %149, align 8, !tbaa !54
  %151 = icmp eq ptr %150, %139
  %152 = getelementptr inbounds %struct.BMEdge, ptr %148, i64 0, i32 3
  %153 = load ptr, ptr %152, align 8, !tbaa !57
  br i1 %151, label %157, label %154

154:                                              ; preds = %146
  %155 = icmp eq ptr %153, %139
  %156 = select i1 %155, ptr %150, ptr null
  br label %157

157:                                              ; preds = %146, %154, %138
  %158 = phi ptr [ %139, %138 ], [ %156, %154 ], [ %153, %146 ]
  br i1 %145, label %159, label %138

159:                                              ; preds = %157
  call void @BLI_addtail(ptr noundef %1, ptr noundef %110) #11
  br label %160

160:                                              ; preds = %105, %159
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #11
  %161 = zext i1 %107 to i8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #11
  ret i8 %161
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

declare ptr @BLI_mempool_create(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @bm_loop_path_build_step(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 {
  %5 = alloca %struct.ListBase, align 8
  %6 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %7 = load ptr, ptr %1, align 8, !tbaa !79
  %8 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 4
  %9 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  %10 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  %11 = icmp eq i32 %2, 1
  %12 = getelementptr inbounds ptr, ptr %3, i64 1
  %13 = getelementptr inbounds ptr, ptr %3, i64 1
  br label %14

14:                                               ; preds = %64, %4
  %15 = phi ptr [ %7, %4 ], [ %23, %64 ]
  %16 = icmp eq ptr %15, null
  br i1 %16, label %66, label %17

17:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #11
  %18 = getelementptr inbounds %struct.VertStep, ptr %15, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !76
  %20 = getelementptr inbounds %struct.BMHeader, ptr %19, i64 0, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !69
  %22 = add nsw i32 %21, %2
  %23 = load ptr, ptr %15, align 8, !tbaa !80
  store i8 4, ptr %8, align 4, !tbaa !34
  store ptr @bmiter__edge_of_vert_begin, ptr %9, align 8, !tbaa !40
  store ptr @bmiter__edge_of_vert_step, ptr %10, align 8, !tbaa !41
  store ptr %19, ptr %6, align 8, !tbaa !47
  call void @bmiter__edge_of_vert_begin(ptr noundef nonnull %6) #11
  %24 = load ptr, ptr %10, align 8, !tbaa !41
  %25 = call ptr %24(ptr noundef nonnull %6) #11
  %26 = icmp eq ptr %25, null
  br i1 %26, label %62, label %27

27:                                               ; preds = %17, %58
  %28 = phi i1 [ %61, %58 ], [ %26, %17 ]
  %29 = phi ptr [ %60, %58 ], [ %25, %17 ]
  %30 = getelementptr inbounds %struct.BMHeader, ptr %29, i64 0, i32 3
  %31 = load i8, ptr %30, align 1, !tbaa !48
  %32 = icmp sgt i8 %31, -1
  br i1 %32, label %58, label %33

33:                                               ; preds = %27
  %34 = load ptr, ptr %18, align 8, !tbaa !76
  %35 = getelementptr inbounds %struct.BMEdge, ptr %29, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !54
  %37 = icmp eq ptr %36, %34
  %38 = getelementptr inbounds %struct.BMEdge, ptr %29, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !57
  %40 = icmp eq ptr %39, %34
  %41 = select i1 %40, ptr %36, ptr null
  %42 = select i1 %37, ptr %39, ptr %41
  %43 = getelementptr inbounds %struct.BMHeader, ptr %42, i64 0, i32 1
  %44 = load i32, ptr %43, align 8, !tbaa !69
  %45 = and i8 %31, 127
  store i8 %45, ptr %30, align 1, !tbaa !48
  %46 = icmp eq i32 %44, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %33
  %48 = call ptr @BLI_mempool_alloc(ptr noundef %0) #11
  %49 = getelementptr inbounds %struct.VertStep, ptr %48, i64 0, i32 2
  store ptr %42, ptr %49, align 8, !tbaa !76
  store i32 %22, ptr %43, align 8, !tbaa !69
  %50 = getelementptr inbounds %struct.BMVert, ptr %42, i64 0, i32 4
  store ptr %29, ptr %50, align 8, !tbaa !74
  call void @BLI_addtail(ptr noundef nonnull %5, ptr noundef %48) #11
  br label %58

51:                                               ; preds = %33
  %52 = xor i32 %44, %2
  %53 = icmp sgt i32 %52, -1
  br i1 %53, label %58, label %54

54:                                               ; preds = %51
  br i1 %11, label %55, label %56

55:                                               ; preds = %54
  store ptr %34, ptr %3, align 8, !tbaa !59
  store ptr %42, ptr %13, align 8, !tbaa !59
  br label %64

56:                                               ; preds = %54
  store ptr %42, ptr %3, align 8, !tbaa !59
  %57 = load ptr, ptr %18, align 8, !tbaa !76
  store ptr %57, ptr %12, align 8, !tbaa !59
  br label %64

58:                                               ; preds = %51, %47, %27
  %59 = load ptr, ptr %10, align 8, !tbaa !41
  %60 = call ptr %59(ptr noundef nonnull %6) #11
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %27, !llvm.loop !81

62:                                               ; preds = %58, %17
  %63 = phi i1 [ %26, %17 ], [ %61, %58 ]
  call void @BLI_mempool_free(ptr noundef %0, ptr noundef nonnull %15) #11
  br label %64

64:                                               ; preds = %56, %55, %62
  %65 = phi i1 [ %28, %56 ], [ %28, %55 ], [ %63, %62 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #11
  br i1 %65, label %14, label %70, !llvm.loop !82

66:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !83
  %67 = load ptr, ptr %1, align 8, !tbaa !79
  %68 = icmp ne ptr %67, null
  %69 = zext i1 %68 to i8
  br label %70

70:                                               ; preds = %64, %66
  %71 = phi i8 [ %69, %66 ], [ 1, %64 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #11
  ret i8 %71
}

declare void @BLI_mempool_destroy(ptr noundef) local_unnamed_addr #2

declare void @BLI_addhead(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @BM_mesh_edgeloops_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @BLI_pophead(ptr noundef %0) #11
  %3 = icmp eq ptr %2, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %8, %4 ], [ %2, %1 ]
  %6 = getelementptr inbounds %struct.BMEdgeLoopStore, ptr %5, i64 0, i32 2
  tail call void @BLI_freelistN(ptr noundef nonnull %6) #11
  %7 = load ptr, ptr @MEM_freeN, align 8, !tbaa !59
  tail call void %7(ptr noundef nonnull %5) #11
  %8 = tail call ptr @BLI_pophead(ptr noundef %0) #11
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %4, !llvm.loop !84

10:                                               ; preds = %4, %1
  ret void
}

declare ptr @BLI_pophead(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable
define dso_local void @BM_mesh_edgeloops_calc_center(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 {
  %3 = load ptr, ptr %1, align 8, !tbaa !59
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %2, %5
  %6 = phi ptr [ %7, %5 ], [ %3, %2 ]
  tail call void @BM_edgeloop_calc_center(ptr poison, ptr noundef nonnull %6)
  %7 = load ptr, ptr %6, align 8, !tbaa !59
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %5, !llvm.loop !85

9:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable
define dso_local void @BM_edgeloop_calc_center(ptr nocapture readnone %0, ptr nocapture noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.BMEdgeLoopStore, ptr %1, i64 0, i32 2
  %4 = getelementptr inbounds %struct.BMEdgeLoopStore, ptr %1, i64 0, i32 2, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !86
  %6 = getelementptr inbounds %struct.LinkData, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !87
  %8 = load ptr, ptr %3, align 8, !tbaa !88
  %9 = getelementptr inbounds %struct.LinkData, ptr %7, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !60
  %11 = getelementptr inbounds %struct.BMVert, ptr %10, i64 0, i32 2
  %12 = getelementptr inbounds %struct.LinkData, ptr %5, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !60
  %14 = getelementptr inbounds %struct.BMVert, ptr %13, i64 0, i32 2
  %15 = getelementptr inbounds %struct.LinkData, ptr %8, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !60
  %17 = getelementptr inbounds %struct.BMVert, ptr %16, i64 0, i32 2
  %18 = getelementptr inbounds %struct.BMEdgeLoopStore, ptr %1, i64 0, i32 5
  store float 0.000000e+00, ptr %18, align 4, !tbaa !89
  %19 = getelementptr inbounds %struct.BMEdgeLoopStore, ptr %1, i64 0, i32 5, i64 1
  store float 0.000000e+00, ptr %19, align 4, !tbaa !89
  %20 = getelementptr inbounds %struct.BMEdgeLoopStore, ptr %1, i64 0, i32 5, i64 2
  store float 0.000000e+00, ptr %20, align 4, !tbaa !89
  %21 = load float, ptr %14, align 4, !tbaa !89
  %22 = load float, ptr %11, align 4, !tbaa !89
  %23 = fsub float %21, %22
  %24 = getelementptr inbounds %struct.BMVert, ptr %13, i64 0, i32 2, i64 1
  %25 = load float, ptr %24, align 4, !tbaa !89
  %26 = getelementptr inbounds %struct.BMVert, ptr %10, i64 0, i32 2, i64 1
  %27 = load float, ptr %26, align 4, !tbaa !89
  %28 = fsub float %25, %27
  %29 = getelementptr inbounds %struct.BMVert, ptr %13, i64 0, i32 2, i64 2
  %30 = load float, ptr %29, align 4, !tbaa !89
  %31 = getelementptr inbounds %struct.BMVert, ptr %10, i64 0, i32 2, i64 2
  %32 = load float, ptr %31, align 4, !tbaa !89
  %33 = fsub float %30, %32
  %34 = fmul float %28, %28
  %35 = tail call float @llvm.fmuladd.f32(float %23, float %23, float %34)
  %36 = tail call float @llvm.fmuladd.f32(float %33, float %33, float %35)
  %37 = tail call float @sqrtf(float noundef %36) #11
  br label %38

38:                                               ; preds = %78, %2
  %39 = phi ptr [ %8, %2 ], [ %72, %78 ]
  %40 = phi ptr [ %14, %2 ], [ %79, %78 ]
  %41 = phi ptr [ %17, %2 ], [ %80, %78 ]
  %42 = phi float [ 0.000000e+00, %2 ], [ %71, %78 ]
  %43 = phi float [ %37, %2 ], [ %60, %78 ]
  %44 = load float, ptr %41, align 4, !tbaa !89
  %45 = load float, ptr %40, align 4, !tbaa !89
  %46 = fsub float %44, %45
  %47 = getelementptr inbounds float, ptr %41, i64 1
  %48 = load float, ptr %47, align 4, !tbaa !89
  %49 = getelementptr inbounds float, ptr %40, i64 1
  %50 = load float, ptr %49, align 4, !tbaa !89
  %51 = fsub float %48, %50
  %52 = getelementptr inbounds float, ptr %41, i64 2
  %53 = load float, ptr %52, align 4, !tbaa !89
  %54 = getelementptr inbounds float, ptr %40, i64 2
  %55 = load float, ptr %54, align 4, !tbaa !89
  %56 = fsub float %53, %55
  %57 = fmul float %51, %51
  %58 = tail call float @llvm.fmuladd.f32(float %46, float %46, float %57)
  %59 = tail call float @llvm.fmuladd.f32(float %56, float %56, float %58)
  %60 = tail call float @sqrtf(float noundef %59) #11
  %61 = fadd float %43, %60
  %62 = load float, ptr %40, align 4, !tbaa !89
  %63 = load float, ptr %18, align 4, !tbaa !89
  %64 = tail call float @llvm.fmuladd.f32(float %62, float %61, float %63)
  store float %64, ptr %18, align 4, !tbaa !89
  %65 = load float, ptr %49, align 4, !tbaa !89
  %66 = load float, ptr %19, align 4, !tbaa !89
  %67 = tail call float @llvm.fmuladd.f32(float %65, float %61, float %66)
  store float %67, ptr %19, align 4, !tbaa !89
  %68 = load float, ptr %54, align 4, !tbaa !89
  %69 = load float, ptr %20, align 4, !tbaa !89
  %70 = tail call float @llvm.fmuladd.f32(float %68, float %61, float %69)
  store float %70, ptr %20, align 4, !tbaa !89
  %71 = fadd float %42, %61
  %72 = load ptr, ptr %39, align 8, !tbaa !91
  %73 = icmp eq ptr %72, null
  br i1 %73, label %78, label %74

74:                                               ; preds = %38
  %75 = getelementptr inbounds %struct.LinkData, ptr %72, i64 0, i32 2
  %76 = load ptr, ptr %75, align 8, !tbaa !60
  %77 = getelementptr inbounds %struct.BMVert, ptr %76, i64 0, i32 2
  br label %78

78:                                               ; preds = %38, %74
  %79 = phi ptr [ %41, %74 ], [ %40, %38 ]
  %80 = phi ptr [ %77, %74 ], [ %41, %38 ]
  br i1 %73, label %81, label %38

81:                                               ; preds = %78
  %82 = fcmp une float %71, 0.000000e+00
  br i1 %82, label %83, label %88

83:                                               ; preds = %81
  %84 = fdiv float 1.000000e+00, %71
  %85 = fmul float %64, %84
  store float %85, ptr %18, align 4, !tbaa !89
  %86 = fmul float %84, %67
  store float %86, ptr %19, align 4, !tbaa !89
  %87 = fmul float %84, %70
  store float %87, ptr %20, align 4, !tbaa !89
  br label %88

88:                                               ; preds = %83, %81
  ret void
}

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable
define dso_local void @BM_mesh_edgeloops_calc_normal(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 {
  %3 = load ptr, ptr %1, align 8, !tbaa !59
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %2, %5
  %6 = phi ptr [ %8, %5 ], [ %3, %2 ]
  %7 = tail call zeroext i8 @BM_edgeloop_calc_normal(ptr poison, ptr noundef nonnull %6), !range !92
  %8 = load ptr, ptr %6, align 8, !tbaa !59
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %5, !llvm.loop !93

10:                                               ; preds = %5, %2
  ret void
}

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable
define dso_local zeroext i8 @BM_edgeloop_calc_normal(ptr nocapture readnone %0, ptr nocapture noundef %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.BMEdgeLoopStore, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !88
  %5 = getelementptr inbounds %struct.BMEdgeLoopStore, ptr %1, i64 0, i32 2, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !86
  %7 = getelementptr inbounds %struct.LinkData, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !60
  %9 = getelementptr inbounds %struct.BMVert, ptr %8, i64 0, i32 2
  %10 = getelementptr inbounds %struct.LinkData, ptr %4, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !60
  %12 = getelementptr inbounds %struct.BMEdgeLoopStore, ptr %1, i64 0, i32 6
  store float 0.000000e+00, ptr %12, align 4, !tbaa !89
  %13 = getelementptr inbounds %struct.BMEdgeLoopStore, ptr %1, i64 0, i32 6, i64 1
  store float 0.000000e+00, ptr %13, align 4, !tbaa !89
  %14 = getelementptr inbounds %struct.BMEdgeLoopStore, ptr %1, i64 0, i32 6, i64 2
  store float 0.000000e+00, ptr %14, align 4, !tbaa !89
  br label %15

15:                                               ; preds = %50, %2
  %16 = phi float [ 0.000000e+00, %2 ], [ %47, %50 ]
  %17 = phi float [ 0.000000e+00, %2 ], [ %40, %50 ]
  %18 = phi float [ 0.000000e+00, %2 ], [ %33, %50 ]
  %19 = phi ptr [ %4, %2 ], [ %48, %50 ]
  %20 = phi ptr [ %9, %2 ], [ %22, %50 ]
  %21 = phi ptr [ %11, %2 ], [ %52, %50 ]
  %22 = getelementptr inbounds %struct.BMVert, ptr %21, i64 0, i32 2
  %23 = getelementptr inbounds float, ptr %20, i64 1
  %24 = load float, ptr %23, align 4, !tbaa !89
  %25 = getelementptr inbounds %struct.BMVert, ptr %21, i64 0, i32 2, i64 1
  %26 = load float, ptr %25, align 4, !tbaa !89
  %27 = fsub float %24, %26
  %28 = getelementptr inbounds float, ptr %20, i64 2
  %29 = load float, ptr %28, align 4, !tbaa !89
  %30 = getelementptr inbounds %struct.BMVert, ptr %21, i64 0, i32 2, i64 2
  %31 = load float, ptr %30, align 4, !tbaa !89
  %32 = fadd float %29, %31
  %33 = tail call float @llvm.fmuladd.f32(float %27, float %32, float %18)
  store float %33, ptr %12, align 4, !tbaa !89
  %34 = load float, ptr %28, align 4, !tbaa !89
  %35 = load float, ptr %30, align 4, !tbaa !89
  %36 = fsub float %34, %35
  %37 = load float, ptr %20, align 4, !tbaa !89
  %38 = load float, ptr %22, align 4, !tbaa !89
  %39 = fadd float %37, %38
  %40 = tail call float @llvm.fmuladd.f32(float %36, float %39, float %17)
  store float %40, ptr %13, align 4, !tbaa !89
  %41 = load float, ptr %20, align 4, !tbaa !89
  %42 = load float, ptr %22, align 4, !tbaa !89
  %43 = fsub float %41, %42
  %44 = load float, ptr %23, align 4, !tbaa !89
  %45 = load float, ptr %25, align 4, !tbaa !89
  %46 = fadd float %44, %45
  %47 = tail call float @llvm.fmuladd.f32(float %43, float %46, float %16)
  store float %47, ptr %14, align 4, !tbaa !89
  %48 = load ptr, ptr %19, align 8, !tbaa !91
  %49 = icmp eq ptr %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %15
  %51 = getelementptr inbounds %struct.LinkData, ptr %48, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !60
  br label %15, !llvm.loop !94

53:                                               ; preds = %15
  %54 = fmul float %40, %40
  %55 = tail call float @llvm.fmuladd.f32(float %33, float %33, float %54)
  %56 = tail call float @llvm.fmuladd.f32(float %47, float %47, float %55)
  %57 = fcmp ogt float %56, 0x38AA95A5C0000000
  br i1 %57, label %58, label %68

58:                                               ; preds = %53
  %59 = tail call float @sqrtf(float noundef %56) #11
  %60 = fdiv float 1.000000e+00, %59
  %61 = load float, ptr %12, align 4, !tbaa !89
  %62 = fmul float %61, %60
  store float %62, ptr %12, align 4, !tbaa !89
  %63 = load float, ptr %13, align 4, !tbaa !89
  %64 = fmul float %60, %63
  store float %64, ptr %13, align 4, !tbaa !89
  %65 = load float, ptr %14, align 4, !tbaa !89
  %66 = fmul float %60, %65
  %67 = fcmp olt float %59, 0x3EE4F8B580000000
  br label %69

68:                                               ; preds = %53
  store float 0.000000e+00, ptr %12, align 4, !tbaa !89
  store float 0.000000e+00, ptr %13, align 4, !tbaa !89
  br label %69

69:                                               ; preds = %58, %68
  %70 = phi float [ 0.000000e+00, %68 ], [ %66, %58 ]
  %71 = phi i1 [ true, %68 ], [ %67, %58 ]
  %72 = select i1 %71, float 1.000000e+00, float %70
  store float %72, ptr %14, align 4
  %73 = xor i1 %71, true
  %74 = zext i1 %73 to i8
  ret i8 %74
}

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable
define dso_local void @BM_mesh_edgeloops_calc_normal_aligned(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #4 {
  %4 = load ptr, ptr %1, align 8, !tbaa !59
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %9, %6 ], [ %4, %3 ]
  %8 = tail call zeroext i8 @BM_edgeloop_calc_normal_aligned(ptr poison, ptr noundef nonnull %7, ptr noundef %2), !range !92
  %9 = load ptr, ptr %7, align 8, !tbaa !59
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %6, !llvm.loop !95

11:                                               ; preds = %6, %3
  ret void
}

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable
define dso_local zeroext i8 @BM_edgeloop_calc_normal_aligned(ptr nocapture readnone %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #4 {
  %4 = getelementptr inbounds %struct.BMEdgeLoopStore, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !88
  %6 = getelementptr inbounds %struct.BMEdgeLoopStore, ptr %1, i64 0, i32 2, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !86
  %8 = getelementptr inbounds %struct.LinkData, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !60
  %10 = getelementptr inbounds %struct.BMVert, ptr %9, i64 0, i32 2
  %11 = getelementptr inbounds %struct.LinkData, ptr %5, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !60
  %13 = getelementptr inbounds %struct.BMVert, ptr %12, i64 0, i32 2
  %14 = getelementptr inbounds %struct.BMEdgeLoopStore, ptr %1, i64 0, i32 6
  store float 0.000000e+00, ptr %14, align 4, !tbaa !89
  %15 = getelementptr inbounds %struct.BMEdgeLoopStore, ptr %1, i64 0, i32 6, i64 1
  store float 0.000000e+00, ptr %15, align 4, !tbaa !89
  %16 = getelementptr inbounds %struct.BMEdgeLoopStore, ptr %1, i64 0, i32 6, i64 2
  store float 0.000000e+00, ptr %16, align 4, !tbaa !89
  %17 = getelementptr inbounds float, ptr %2, i64 1
  %18 = getelementptr inbounds float, ptr %2, i64 2
  br label %19

19:                                               ; preds = %69, %3
  %20 = phi ptr [ %5, %3 ], [ %63, %69 ]
  %21 = phi ptr [ %10, %3 ], [ %70, %69 ]
  %22 = phi ptr [ %13, %3 ], [ %71, %69 ]
  %23 = load float, ptr %22, align 4, !tbaa !89
  %24 = load float, ptr %21, align 4, !tbaa !89
  %25 = fsub float %23, %24
  %26 = getelementptr inbounds float, ptr %22, i64 1
  %27 = load float, ptr %26, align 4, !tbaa !89
  %28 = getelementptr inbounds float, ptr %21, i64 1
  %29 = load float, ptr %28, align 4, !tbaa !89
  %30 = fsub float %27, %29
  %31 = getelementptr inbounds float, ptr %22, i64 2
  %32 = load float, ptr %31, align 4, !tbaa !89
  %33 = getelementptr inbounds float, ptr %21, i64 2
  %34 = load float, ptr %33, align 4, !tbaa !89
  %35 = fsub float %32, %34
  %36 = load float, ptr %17, align 4, !tbaa !89
  %37 = load float, ptr %18, align 4, !tbaa !89
  %38 = fneg float %37
  %39 = fmul float %30, %38
  %40 = tail call float @llvm.fmuladd.f32(float %36, float %35, float %39)
  %41 = load float, ptr %2, align 4, !tbaa !89
  %42 = fneg float %41
  %43 = fmul float %35, %42
  %44 = tail call float @llvm.fmuladd.f32(float %37, float %25, float %43)
  %45 = fneg float %36
  %46 = fmul float %25, %45
  %47 = tail call float @llvm.fmuladd.f32(float %41, float %30, float %46)
  %48 = fneg float %35
  %49 = fmul float %44, %48
  %50 = tail call float @llvm.fmuladd.f32(float %30, float %47, float %49)
  %51 = fneg float %25
  %52 = fmul float %47, %51
  %53 = tail call float @llvm.fmuladd.f32(float %35, float %40, float %52)
  %54 = fneg float %30
  %55 = fmul float %40, %54
  %56 = tail call float @llvm.fmuladd.f32(float %25, float %44, float %55)
  %57 = load float, ptr %14, align 4, !tbaa !89
  %58 = fadd float %57, %50
  store float %58, ptr %14, align 4, !tbaa !89
  %59 = load float, ptr %15, align 4, !tbaa !89
  %60 = fadd float %59, %53
  store float %60, ptr %15, align 4, !tbaa !89
  %61 = load float, ptr %16, align 4, !tbaa !89
  %62 = fadd float %56, %61
  store float %62, ptr %16, align 4, !tbaa !89
  %63 = load ptr, ptr %20, align 8, !tbaa !91
  %64 = icmp eq ptr %63, null
  br i1 %64, label %69, label %65

65:                                               ; preds = %19
  %66 = getelementptr inbounds %struct.LinkData, ptr %63, i64 0, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !60
  %68 = getelementptr inbounds %struct.BMVert, ptr %67, i64 0, i32 2
  br label %69

69:                                               ; preds = %19, %65
  %70 = phi ptr [ %22, %65 ], [ %21, %19 ]
  %71 = phi ptr [ %68, %65 ], [ %22, %19 ]
  br i1 %64, label %72, label %19

72:                                               ; preds = %69
  %73 = fmul float %60, %60
  %74 = tail call float @llvm.fmuladd.f32(float %58, float %58, float %73)
  %75 = tail call float @llvm.fmuladd.f32(float %62, float %62, float %74)
  %76 = fcmp ogt float %75, 0x38AA95A5C0000000
  br i1 %76, label %77, label %87

77:                                               ; preds = %72
  %78 = tail call float @sqrtf(float noundef %75) #11
  %79 = fdiv float 1.000000e+00, %78
  %80 = load float, ptr %14, align 4, !tbaa !89
  %81 = fmul float %80, %79
  store float %81, ptr %14, align 4, !tbaa !89
  %82 = load float, ptr %15, align 4, !tbaa !89
  %83 = fmul float %79, %82
  store float %83, ptr %15, align 4, !tbaa !89
  %84 = load float, ptr %16, align 4, !tbaa !89
  %85 = fmul float %79, %84
  %86 = fcmp olt float %78, 0x3EE4F8B580000000
  br label %88

87:                                               ; preds = %72
  store float 0.000000e+00, ptr %14, align 4, !tbaa !89
  store float 0.000000e+00, ptr %15, align 4, !tbaa !89
  br label %88

88:                                               ; preds = %77, %87
  %89 = phi float [ 0.000000e+00, %87 ], [ %85, %77 ]
  %90 = phi i1 [ true, %87 ], [ %86, %77 ]
  %91 = select i1 %90, float 1.000000e+00, float %89
  store float %91, ptr %16, align 4
  %92 = xor i1 %90, true
  %93 = zext i1 %92 to i8
  ret i8 %93
}

; Function Attrs: nounwind uwtable
define dso_local void @BM_mesh_edgeloops_calc_order(ptr nocapture noundef readnone %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca %struct.ListBase, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %5 = load ptr, ptr %1, align 8, !tbaa !59
  %6 = icmp eq ptr %5, null
  br i1 %6, label %27, label %7

7:                                                ; preds = %3, %7
  %8 = phi ptr [ %23, %7 ], [ %5, %3 ]
  %9 = phi i32 [ %22, %7 ], [ 0, %3 ]
  %10 = phi float [ %15, %7 ], [ 0.000000e+00, %3 ]
  %11 = phi float [ %18, %7 ], [ 0.000000e+00, %3 ]
  %12 = phi float [ %21, %7 ], [ 0.000000e+00, %3 ]
  %13 = getelementptr inbounds %struct.BMEdgeLoopStore, ptr %8, i64 0, i32 5
  %14 = load float, ptr %13, align 4, !tbaa !89
  %15 = fadd float %10, %14
  %16 = getelementptr inbounds %struct.BMEdgeLoopStore, ptr %8, i64 0, i32 5, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !89
  %18 = fadd float %11, %17
  %19 = getelementptr inbounds %struct.BMEdgeLoopStore, ptr %8, i64 0, i32 5, i64 2
  %20 = load float, ptr %19, align 4, !tbaa !89
  %21 = fadd float %12, %20
  %22 = add nuw nsw i32 %9, 1
  %23 = load ptr, ptr %8, align 8, !tbaa !59
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %7, !llvm.loop !96

25:                                               ; preds = %7
  %26 = sitofp i32 %22 to float
  br label %27

27:                                               ; preds = %25, %3
  %28 = phi float [ 0.000000e+00, %3 ], [ %21, %25 ]
  %29 = phi float [ 0.000000e+00, %3 ], [ %18, %25 ]
  %30 = phi float [ 0.000000e+00, %3 ], [ %15, %25 ]
  %31 = phi float [ 0.000000e+00, %3 ], [ %26, %25 ]
  %32 = fdiv float 1.000000e+00, %31
  %33 = fmul float %30, %32
  %34 = fmul float %29, %32
  %35 = fmul float %28, %32
  %36 = load ptr, ptr %1, align 8, !tbaa !59
  %37 = icmp eq ptr %36, null
  br i1 %37, label %59, label %38

38:                                               ; preds = %27, %38
  %39 = phi ptr [ %57, %38 ], [ %36, %27 ]
  %40 = phi ptr [ %56, %38 ], [ null, %27 ]
  %41 = phi float [ %55, %38 ], [ -1.000000e+00, %27 ]
  %42 = getelementptr inbounds %struct.BMEdgeLoopStore, ptr %39, i64 0, i32 5
  %43 = load float, ptr %42, align 4, !tbaa !89
  %44 = fsub float %43, %33
  %45 = getelementptr inbounds %struct.BMEdgeLoopStore, ptr %39, i64 0, i32 5, i64 1
  %46 = load float, ptr %45, align 4, !tbaa !89
  %47 = fsub float %46, %34
  %48 = getelementptr inbounds %struct.BMEdgeLoopStore, ptr %39, i64 0, i32 5, i64 2
  %49 = load float, ptr %48, align 4, !tbaa !89
  %50 = fsub float %49, %35
  %51 = fmul float %47, %47
  %52 = tail call float @llvm.fmuladd.f32(float %44, float %44, float %51)
  %53 = tail call float @llvm.fmuladd.f32(float %50, float %50, float %52)
  %54 = fcmp ogt float %53, %41
  %55 = select i1 %54, float %53, float %41
  %56 = select i1 %54, ptr %39, ptr %40
  %57 = load ptr, ptr %39, align 8, !tbaa !59
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %38, !llvm.loop !97

59:                                               ; preds = %38, %27
  %60 = phi ptr [ null, %27 ], [ %56, %38 ]
  tail call void @BLI_remlink(ptr noundef nonnull %1, ptr noundef %60) #11
  call void @BLI_addtail(ptr noundef nonnull %4, ptr noundef %60) #11
  %61 = load ptr, ptr %1, align 8, !tbaa !79
  %62 = icmp eq ptr %61, null
  br i1 %62, label %158, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.ListBase, ptr %4, i64 0, i32 1
  %65 = icmp eq i8 %2, 0
  br label %66

66:                                               ; preds = %63, %154
  %67 = load ptr, ptr %64, align 8, !tbaa !98
  %68 = getelementptr inbounds %struct.BMEdgeLoopStore, ptr %67, i64 0, i32 5
  %69 = getelementptr inbounds %struct.BMEdgeLoopStore, ptr %67, i64 0, i32 6
  %70 = load ptr, ptr %1, align 8, !tbaa !59
  %71 = icmp eq ptr %70, null
  br i1 %71, label %154, label %72

72:                                               ; preds = %66
  %73 = getelementptr inbounds %struct.BMEdgeLoopStore, ptr %67, i64 0, i32 5, i64 1
  %74 = getelementptr inbounds %struct.BMEdgeLoopStore, ptr %67, i64 0, i32 5, i64 2
  %75 = getelementptr inbounds %struct.BMEdgeLoopStore, ptr %67, i64 0, i32 6, i64 1
  %76 = getelementptr inbounds %struct.BMEdgeLoopStore, ptr %67, i64 0, i32 6, i64 2
  %77 = getelementptr inbounds %struct.BMEdgeLoopStore, ptr %67, i64 0, i32 5, i64 1
  %78 = getelementptr inbounds %struct.BMEdgeLoopStore, ptr %67, i64 0, i32 5, i64 2
  br label %79

79:                                               ; preds = %72, %147
  %80 = phi ptr [ %70, %72 ], [ %152, %147 ]
  %81 = phi float [ 0x47EFFFFFE0000000, %72 ], [ %151, %147 ]
  %82 = phi ptr [ null, %72 ], [ %150, %147 ]
  %83 = getelementptr inbounds %struct.BMEdgeLoopStore, ptr %80, i64 0, i32 5
  br i1 %65, label %132, label %84

84:                                               ; preds = %79
  %85 = load float, ptr %68, align 4, !tbaa !89
  %86 = load float, ptr %83, align 4, !tbaa !89
  %87 = fsub float %85, %86
  %88 = load float, ptr %73, align 4, !tbaa !89
  %89 = getelementptr inbounds %struct.BMEdgeLoopStore, ptr %80, i64 0, i32 5, i64 1
  %90 = load float, ptr %89, align 4, !tbaa !89
  %91 = fsub float %88, %90
  %92 = load float, ptr %74, align 4, !tbaa !89
  %93 = getelementptr inbounds %struct.BMEdgeLoopStore, ptr %80, i64 0, i32 5, i64 2
  %94 = load float, ptr %93, align 4, !tbaa !89
  %95 = fsub float %92, %94
  %96 = fmul float %91, %91
  %97 = call float @llvm.fmuladd.f32(float %87, float %87, float %96)
  %98 = call float @llvm.fmuladd.f32(float %95, float %95, float %97)
  %99 = fcmp ogt float %98, 0x38AA95A5C0000000
  br i1 %99, label %100, label %106

100:                                              ; preds = %84
  %101 = call float @sqrtf(float noundef %98) #11
  %102 = fdiv float 1.000000e+00, %101
  %103 = fmul float %87, %102
  %104 = fmul float %91, %102
  %105 = fmul float %95, %102
  br label %106

106:                                              ; preds = %84, %100
  %107 = phi float [ %104, %100 ], [ 0.000000e+00, %84 ]
  %108 = phi float [ %103, %100 ], [ 0.000000e+00, %84 ]
  %109 = phi float [ %105, %100 ], [ 0.000000e+00, %84 ]
  %110 = phi float [ %101, %100 ], [ 0.000000e+00, %84 ]
  %111 = load float, ptr %69, align 4, !tbaa !89
  %112 = load float, ptr %75, align 4, !tbaa !89
  %113 = fmul float %107, %112
  %114 = call float @llvm.fmuladd.f32(float %108, float %111, float %113)
  %115 = load float, ptr %76, align 4, !tbaa !89
  %116 = call float @llvm.fmuladd.f32(float %109, float %115, float %114)
  %117 = call float @llvm.fabs.f32(float %116)
  %118 = fsub float 1.000000e+00, %117
  %119 = getelementptr inbounds %struct.BMEdgeLoopStore, ptr %80, i64 0, i32 6
  %120 = load float, ptr %119, align 4, !tbaa !89
  %121 = getelementptr inbounds %struct.BMEdgeLoopStore, ptr %80, i64 0, i32 6, i64 1
  %122 = load float, ptr %121, align 4, !tbaa !89
  %123 = fmul float %107, %122
  %124 = call float @llvm.fmuladd.f32(float %108, float %120, float %123)
  %125 = getelementptr inbounds %struct.BMEdgeLoopStore, ptr %80, i64 0, i32 6, i64 2
  %126 = load float, ptr %125, align 4, !tbaa !89
  %127 = call float @llvm.fmuladd.f32(float %109, float %126, float %124)
  %128 = call float @llvm.fabs.f32(float %127)
  %129 = fsub float 1.000000e+00, %128
  %130 = fadd float %118, %129
  %131 = fmul float %110, %130
  br label %147

132:                                              ; preds = %79
  %133 = load float, ptr %83, align 4, !tbaa !89
  %134 = load float, ptr %68, align 4, !tbaa !89
  %135 = fsub float %133, %134
  %136 = getelementptr inbounds %struct.BMEdgeLoopStore, ptr %80, i64 0, i32 5, i64 1
  %137 = load float, ptr %136, align 4, !tbaa !89
  %138 = load float, ptr %77, align 4, !tbaa !89
  %139 = fsub float %137, %138
  %140 = getelementptr inbounds %struct.BMEdgeLoopStore, ptr %80, i64 0, i32 5, i64 2
  %141 = load float, ptr %140, align 4, !tbaa !89
  %142 = load float, ptr %78, align 4, !tbaa !89
  %143 = fsub float %141, %142
  %144 = fmul float %139, %139
  %145 = call float @llvm.fmuladd.f32(float %135, float %135, float %144)
  %146 = call float @llvm.fmuladd.f32(float %143, float %143, float %145)
  br label %147

147:                                              ; preds = %132, %106
  %148 = phi float [ %131, %106 ], [ %146, %132 ]
  %149 = fcmp olt float %148, %81
  %150 = select i1 %149, ptr %80, ptr %82
  %151 = select i1 %149, float %148, float %81
  %152 = load ptr, ptr %80, align 8, !tbaa !59
  %153 = icmp eq ptr %152, null
  br i1 %153, label %154, label %79, !llvm.loop !99

154:                                              ; preds = %147, %66
  %155 = phi ptr [ null, %66 ], [ %150, %147 ]
  call void @BLI_remlink(ptr noundef nonnull %1, ptr noundef %155) #11
  call void @BLI_addtail(ptr noundef nonnull %4, ptr noundef %155) #11
  %156 = load ptr, ptr %1, align 8, !tbaa !79
  %157 = icmp eq ptr %156, null
  br i1 %157, label %158, label %66, !llvm.loop !100

158:                                              ; preds = %154, %59
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !83
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  ret void
}

declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @BM_edgeloop_copy(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !59
  %3 = tail call ptr %2(i64 noundef 64, ptr noundef nonnull @__func__.BM_edgeloop_copy) #11
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(64) %0, i64 64, i1 false), !tbaa.struct !101
  %4 = getelementptr inbounds %struct.BMEdgeLoopStore, ptr %3, i64 0, i32 2
  %5 = getelementptr inbounds %struct.BMEdgeLoopStore, ptr %0, i64 0, i32 2
  tail call void @BLI_duplicatelist(ptr noundef nonnull %4, ptr noundef nonnull %5) #11
  ret ptr %3
}

declare void @BLI_duplicatelist(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @BM_edgeloop_from_verts(ptr nocapture noundef readonly %0, i32 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr @MEM_callocN, align 8, !tbaa !59
  %5 = tail call ptr %4(i64 noundef 64, ptr noundef nonnull @__func__.BM_edgeloop_from_verts) #11
  %6 = icmp sgt i32 %1, 0
  br i1 %6, label %7, label %19

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.BMEdgeLoopStore, ptr %5, i64 0, i32 2
  %9 = zext nneg i32 %1 to i64
  br label %10

10:                                               ; preds = %7, %10
  %11 = phi i64 [ 0, %7 ], [ %17, %10 ]
  %12 = load ptr, ptr @MEM_callocN, align 8, !tbaa !59
  %13 = tail call ptr %12(i64 noundef 24, ptr noundef nonnull @__func__.BM_edgeloop_from_verts) #11
  %14 = getelementptr inbounds ptr, ptr %0, i64 %11
  %15 = load ptr, ptr %14, align 8, !tbaa !59
  %16 = getelementptr inbounds %struct.LinkData, ptr %13, i64 0, i32 2
  store ptr %15, ptr %16, align 8, !tbaa !60
  tail call void @BLI_addtail(ptr noundef nonnull %8, ptr noundef %13) #11
  %17 = add nuw nsw i64 %11, 1
  %18 = icmp eq i64 %17, %9
  br i1 %18, label %19, label %10, !llvm.loop !103

19:                                               ; preds = %10, %3
  %20 = getelementptr inbounds %struct.BMEdgeLoopStore, ptr %5, i64 0, i32 4
  store i32 %1, ptr %20, align 4, !tbaa !63
  %21 = icmp eq i8 %2, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.BMEdgeLoopStore, ptr %5, i64 0, i32 3
  %24 = load i32, ptr %23, align 8, !tbaa !66
  %25 = or i32 %24, 1
  store i32 %25, ptr %23, align 8, !tbaa !66
  br label %26

26:                                               ; preds = %22, %19
  ret ptr %5
}

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @BM_edgeloop_is_closed(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.BMEdgeLoopStore, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !66
  %4 = trunc i32 %3 to i8
  %5 = and i8 %4, 1
  ret i8 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local nonnull ptr @BM_edgeloop_verts_get(ptr noundef readnone %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.BMEdgeLoopStore, ptr %0, i64 0, i32 2
  ret ptr %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @BM_edgeloop_length_get(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.BMEdgeLoopStore, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !63
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local nonnull ptr @BM_edgeloop_normal_get(ptr noundef readnone %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.BMEdgeLoopStore, ptr %0, i64 0, i32 6
  ret ptr %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local nonnull ptr @BM_edgeloop_center_get(ptr noundef readnone %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.BMEdgeLoopStore, ptr %0, i64 0, i32 5
  ret ptr %2
}

; Function Attrs: nounwind uwtable
define dso_local void @BM_edgeloop_edges_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.BMEdgeLoopStore, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !59
  %5 = icmp eq ptr %4, null
  br i1 %5, label %24, label %6

6:                                                ; preds = %2, %11
  %7 = phi i64 [ %17, %11 ], [ 0, %2 ]
  %8 = phi ptr [ %19, %11 ], [ %4, %2 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !91
  %10 = icmp eq ptr %9, null
  br i1 %10, label %21, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.LinkData, ptr %8, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !60
  %14 = getelementptr inbounds %struct.LinkData, ptr %9, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !60
  %16 = tail call ptr @BM_edge_exists(ptr noundef %13, ptr noundef %15) #11
  %17 = add nuw i64 %7, 1
  %18 = getelementptr inbounds ptr, ptr %1, i64 %7
  store ptr %16, ptr %18, align 8, !tbaa !59
  %19 = load ptr, ptr %8, align 8, !tbaa !59
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %6, !llvm.loop !104

21:                                               ; preds = %11, %6
  %22 = phi i64 [ %7, %6 ], [ %17, %11 ]
  %23 = and i64 %22, 4294967295
  br label %24

24:                                               ; preds = %21, %2
  %25 = phi i64 [ 0, %2 ], [ %23, %21 ]
  %26 = getelementptr inbounds %struct.BMEdgeLoopStore, ptr %0, i64 0, i32 3
  %27 = load i32, ptr %26, align 8, !tbaa !66
  %28 = and i32 %27, 1
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %40, label %30

30:                                               ; preds = %24
  %31 = load ptr, ptr %3, align 8, !tbaa !88
  %32 = getelementptr inbounds %struct.LinkData, ptr %31, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !60
  %34 = getelementptr inbounds %struct.BMEdgeLoopStore, ptr %0, i64 0, i32 2, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !86
  %36 = getelementptr inbounds %struct.LinkData, ptr %35, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !60
  %38 = tail call ptr @BM_edge_exists(ptr noundef %33, ptr noundef %37) #11
  %39 = getelementptr inbounds ptr, ptr %1, i64 %25
  store ptr %38, ptr %39, align 8, !tbaa !59
  br label %40

40:                                               ; preds = %30, %24
  ret void
}

declare ptr @BM_edge_exists(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @BM_edgeloop_flip(ptr nocapture noundef readnone %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.BMEdgeLoopStore, ptr %1, i64 0, i32 6
  %4 = load float, ptr %3, align 4, !tbaa !89
  %5 = fneg float %4
  store float %5, ptr %3, align 4, !tbaa !89
  %6 = getelementptr inbounds %struct.BMEdgeLoopStore, ptr %1, i64 0, i32 6, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !89
  %8 = fneg float %7
  store float %8, ptr %6, align 4, !tbaa !89
  %9 = getelementptr inbounds %struct.BMEdgeLoopStore, ptr %1, i64 0, i32 6, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !89
  %11 = fneg float %10
  store float %11, ptr %9, align 4, !tbaa !89
  %12 = getelementptr inbounds %struct.BMEdgeLoopStore, ptr %1, i64 0, i32 2
  tail call void @BLI_listbase_reverse(ptr noundef nonnull %12) #11
  ret void
}

declare void @BLI_listbase_reverse(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @BM_edgeloop_expand(ptr nocapture noundef readnone %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.BMEdgeLoopStore, ptr %1, i64 0, i32 4
  %5 = load i32, ptr %4, align 4, !tbaa !63
  %6 = shl nsw i32 %5, 1
  %7 = icmp slt i32 %6, %2
  br i1 %7, label %8, label %25

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.BMEdgeLoopStore, ptr %1, i64 0, i32 2
  br label %14

10:                                               ; preds = %17, %14
  %11 = load i32, ptr %4, align 4, !tbaa !63
  %12 = shl nsw i32 %11, 1
  %13 = icmp slt i32 %12, %2
  br i1 %13, label %14, label %25, !llvm.loop !105

14:                                               ; preds = %8, %10
  %15 = load ptr, ptr %9, align 8, !tbaa !59
  %16 = icmp eq ptr %15, null
  br i1 %16, label %10, label %17

17:                                               ; preds = %14, %17
  %18 = phi ptr [ %23, %17 ], [ %15, %14 ]
  %19 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !59
  %20 = tail call ptr %19(ptr noundef nonnull %18) #11
  tail call void @BLI_insertlinkafter(ptr noundef nonnull %9, ptr noundef nonnull %18, ptr noundef %20) #11
  %21 = load i32, ptr %4, align 4, !tbaa !63
  %22 = add nsw i32 %21, 1
  store i32 %22, ptr %4, align 4, !tbaa !63
  %23 = load ptr, ptr %20, align 8, !tbaa !59
  %24 = icmp eq ptr %23, null
  br i1 %24, label %10, label %17, !llvm.loop !106

25:                                               ; preds = %10, %3
  %26 = phi i32 [ %5, %3 ], [ %11, %10 ]
  %27 = icmp slt i32 %26, %2
  br i1 %27, label %28, label %43

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.BMEdgeLoopStore, ptr %1, i64 0, i32 2
  br label %30

30:                                               ; preds = %30, %28
  %31 = phi ptr [ %29, %28 ], [ %39, %30 ]
  %32 = load ptr, ptr %31, align 8, !tbaa !59
  %33 = load ptr, ptr %29, align 8, !tbaa !88
  %34 = icmp eq ptr %33, null
  %35 = icmp eq ptr %32, null
  %36 = select i1 %35, ptr %33, ptr %32
  %37 = select i1 %34, ptr %32, ptr %36
  %38 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !59
  %39 = tail call ptr %38(ptr noundef %37) #11
  tail call void @BLI_insertlinkafter(ptr noundef nonnull %29, ptr noundef %37, ptr noundef %39) #11
  %40 = load i32, ptr %4, align 4, !tbaa !63
  %41 = add nsw i32 %40, 1
  store i32 %41, ptr %4, align 4, !tbaa !63
  %42 = icmp slt i32 %41, %2
  br i1 %42, label %30, label %43, !llvm.loop !107

43:                                               ; preds = %30, %25
  ret void
}

declare void @BLI_insertlinkafter(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @BM_edgeloop_overlap_check(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #9 {
  %3 = getelementptr inbounds %struct.BMEdgeLoopStore, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !59
  %5 = icmp eq ptr %4, null
  br i1 %5, label %15, label %6

6:                                                ; preds = %2, %6
  %7 = phi ptr [ %13, %6 ], [ %4, %2 ]
  %8 = getelementptr inbounds %struct.LinkData, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !60
  %10 = getelementptr inbounds %struct.BMHeader, ptr %9, i64 0, i32 3
  %11 = load i8, ptr %10, align 1, !tbaa !48
  %12 = and i8 %11, 127
  store i8 %12, ptr %10, align 1, !tbaa !48
  %13 = load ptr, ptr %7, align 8, !tbaa !59
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %6, !llvm.loop !108

15:                                               ; preds = %6, %2
  %16 = getelementptr inbounds %struct.BMEdgeLoopStore, ptr %1, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !59
  %18 = icmp eq ptr %17, null
  br i1 %18, label %28, label %19

19:                                               ; preds = %15, %19
  %20 = phi ptr [ %26, %19 ], [ %17, %15 ]
  %21 = getelementptr inbounds %struct.LinkData, ptr %20, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !60
  %23 = getelementptr inbounds %struct.BMHeader, ptr %22, i64 0, i32 3
  %24 = load i8, ptr %23, align 1, !tbaa !48
  %25 = or i8 %24, -128
  store i8 %25, ptr %23, align 1, !tbaa !48
  %26 = load ptr, ptr %20, align 8, !tbaa !59
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %19, !llvm.loop !109

28:                                               ; preds = %19, %15
  br label %29

29:                                               ; preds = %28, %33
  %30 = phi ptr [ %31, %33 ], [ %3, %28 ]
  %31 = load ptr, ptr %30, align 8, !tbaa !59
  %32 = icmp eq ptr %31, null
  br i1 %32, label %39, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.LinkData, ptr %31, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !60
  %36 = getelementptr inbounds %struct.BMHeader, ptr %35, i64 0, i32 3
  %37 = load i8, ptr %36, align 1, !tbaa !48
  %38 = icmp sgt i8 %37, -1
  br i1 %38, label %29, label %39, !llvm.loop !110

39:                                               ; preds = %29, %33
  %40 = phi i8 [ 1, %33 ], [ 0, %29 ]
  ret i8 %40
}

declare void @bmiter__elem_of_mesh_begin(ptr noundef) #2

declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #2

declare void @bmiter__edge_of_vert_begin(ptr noundef) #2

declare ptr @bmiter__edge_of_vert_step(ptr noundef) #2

declare ptr @BLI_mempool_alloc(ptr noundef) local_unnamed_addr #2

declare void @BLI_mempool_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind }

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
!34 = !{!35, !36, i64 60}
!35 = !{!"BMIter", !36, i64 0, !38, i64 40, !38, i64 48, !39, i64 56, !36, i64 60}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!"any pointer", !36, i64 0}
!39 = !{!"int", !36, i64 0}
!40 = !{!35, !38, i64 40}
!41 = !{!35, !38, i64 48}
!42 = !{!43, !38, i64 32}
!43 = !{!"BMesh", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !36, i64 28, !36, i64 29, !38, i64 32, !38, i64 40, !38, i64 48, !38, i64 56, !38, i64 64, !38, i64 72, !38, i64 80, !39, i64 88, !39, i64 92, !39, i64 96, !38, i64 104, !38, i64 112, !38, i64 120, !39, i64 128, !38, i64 136, !44, i64 144, !44, i64 344, !44, i64 544, !44, i64 744, !45, i64 944, !39, i64 948, !39, i64 952, !39, i64 956, !46, i64 960, !38, i64 976, !46, i64 984, !38, i64 1000}
!44 = !{!"CustomData", !38, i64 0, !36, i64 8, !39, i64 172, !39, i64 176, !39, i64 180, !38, i64 184, !38, i64 192}
!45 = !{!"short", !36, i64 0}
!46 = !{!"ListBase", !38, i64 0, !38, i64 8}
!47 = !{!36, !36, i64 0}
!48 = !{!49, !36, i64 13}
!49 = !{!"BMHeader", !38, i64 0, !39, i64 8, !36, i64 12, !36, i64 13, !36, i64 14}
!50 = distinct !{!50, !51, !52}
!51 = !{!"llvm.loop.mustprogress"}
!52 = !{!"llvm.loop.unroll.disable"}
!53 = !{!43, !38, i64 40}
!54 = !{!55, !38, i64 24}
!55 = !{!"BMEdge", !49, i64 0, !38, i64 16, !38, i64 24, !38, i64 32, !38, i64 40, !56, i64 48, !56, i64 64}
!56 = !{!"BMDiskLink", !38, i64 0, !38, i64 8}
!57 = !{!55, !38, i64 32}
!58 = distinct !{!58, !51, !52}
!59 = !{!38, !38, i64 0}
!60 = !{!61, !38, i64 16}
!61 = !{!"LinkData", !38, i64 0, !38, i64 8, !38, i64 16}
!62 = !{ptr @BLI_addhead, ptr @BLI_addtail}
!63 = !{!64, !39, i64 36}
!64 = !{!"BMEdgeLoopStore", !38, i64 0, !38, i64 8, !46, i64 16, !39, i64 32, !39, i64 36, !36, i64 40, !36, i64 52}
!65 = distinct !{!65, !51, !52}
!66 = !{!64, !39, i64 32}
!67 = distinct !{!67, !51, !52}
!68 = distinct !{!68, !51, !52}
!69 = !{!49, !39, i64 8}
!70 = distinct !{!70, !51, !52}
!71 = !{!43, !36, i64 28}
!72 = distinct !{!72, !51, !52}
!73 = distinct !{!73, !51, !52}
!74 = !{!75, !38, i64 48}
!75 = !{!"BMVert", !49, i64 0, !38, i64 16, !36, i64 24, !36, i64 36, !38, i64 48}
!76 = !{!77, !38, i64 16}
!77 = !{!"VertStep", !38, i64 0, !38, i64 8, !38, i64 16}
!78 = distinct !{!78, !52}
!79 = !{!46, !38, i64 0}
!80 = !{!77, !38, i64 0}
!81 = distinct !{!81, !51, !52}
!82 = distinct !{!82, !51, !52}
!83 = !{i64 0, i64 8, !59, i64 8, i64 8, !59}
!84 = distinct !{!84, !51, !52}
!85 = distinct !{!85, !51, !52}
!86 = !{!64, !38, i64 24}
!87 = !{!61, !38, i64 8}
!88 = !{!64, !38, i64 16}
!89 = !{!90, !90, i64 0}
!90 = !{!"float", !36, i64 0}
!91 = !{!61, !38, i64 0}
!92 = !{i8 0, i8 2}
!93 = distinct !{!93, !51, !52}
!94 = distinct !{!94, !52}
!95 = distinct !{!95, !51, !52}
!96 = distinct !{!96, !51, !52}
!97 = distinct !{!97, !51, !52}
!98 = !{!46, !38, i64 8}
!99 = distinct !{!99, !51, !52}
!100 = distinct !{!100, !51, !52}
!101 = !{i64 0, i64 8, !59, i64 8, i64 8, !59, i64 16, i64 8, !59, i64 24, i64 8, !59, i64 32, i64 4, !102, i64 36, i64 4, !102, i64 40, i64 12, !47, i64 52, i64 12, !47}
!102 = !{!39, !39, i64 0}
!103 = distinct !{!103, !51, !52}
!104 = distinct !{!104, !51, !52}
!105 = distinct !{!105, !51, !52}
!106 = distinct !{!106, !51, !52}
!107 = distinct !{!107, !51, !52}
!108 = distinct !{!108, !51, !52}
!109 = distinct !{!109, !51, !52}
!110 = distinct !{!110, !51, !52}

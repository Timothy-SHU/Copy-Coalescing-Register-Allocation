; ModuleID = 'blender/source/blender/bmesh/operators/bmo_join_triangles.c'
source_filename = "blender/source/blender/bmesh/operators/bmo_join_triangles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.BMIter = type { %union.anon.0, ptr, ptr, i32, i8 }
%union.anon.0 = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.BMOIter = type { ptr, i32, %struct.GHashIterator, ptr, i8 }
%struct.GHashIterator = type { ptr, ptr, i32 }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMFlagLayer = type { i16 }
%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMDiskLink = type { ptr, ptr }
%struct.BMLoop = type { %struct.BMHeader, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct.SortPointerByFloat = type { float, ptr }
%struct.BMOperator = type { [16 x %struct.BMOpSlot], [16 x %struct.BMOpSlot], ptr, ptr, i32, i32, i32 }
%struct.BMOpSlot = type { ptr, i32, %union.eBMOpSlotSubType_Union, i32, %union.anon }
%union.eBMOpSlotSubType_Union = type { i32 }
%union.anon = type { ptr, [8 x i8] }

@.str = private unnamed_addr constant [10 x i8] c"cmp_sharp\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"cmp_uvs\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"cmp_vcols\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"cmp_materials\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"limit\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"faces\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@__func__.bmo_join_triangles_exec = private unnamed_addr constant [24 x i8] c"bmo_join_triangles_exec\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.6 = private unnamed_addr constant [10 x i8] c"faces.out\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @bmo_join_triangles_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca %struct.BMIter, align 8
  %10 = alloca %struct.BMOIter, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str) #7
  %16 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str.1) #7
  %17 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str.2) #7
  %18 = tail call zeroext i8 @BMO_slot_bool_get(ptr noundef %1, ptr noundef nonnull @.str.3) #7
  %19 = tail call float @BMO_slot_float_get(ptr noundef %1, ptr noundef nonnull @.str.4) #7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #7
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %10) #7
  %20 = call ptr @BMO_iter_new(ptr noundef nonnull %10, ptr noundef %1, ptr noundef nonnull @.str.5, i8 noundef zeroext 8) #7
  %21 = icmp eq ptr %20, null
  br i1 %21, label %41, label %22

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  br label %24

24:                                               ; preds = %22, %38
  %25 = phi ptr [ %20, %22 ], [ %39, %38 ]
  %26 = getelementptr inbounds %struct.BMFace, ptr %25, i64 0, i32 3
  %27 = load i32, ptr %26, align 8, !tbaa !34
  %28 = icmp eq i32 %27, 3
  br i1 %28, label %29, label %38

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.BMFace, ptr %25, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !42
  %32 = load i32, ptr %23, align 8, !tbaa !43
  %33 = sext i32 %32 to i64
  %34 = getelementptr %struct.BMFlagLayer, ptr %31, i64 %33
  %35 = getelementptr %struct.BMFlagLayer, ptr %34, i64 -1
  %36 = load i16, ptr %35, align 2, !tbaa !47
  %37 = or i16 %36, 2
  store i16 %37, ptr %35, align 2, !tbaa !47
  br label %38

38:                                               ; preds = %24, %29
  %39 = call ptr @BMO_iter_step(ptr noundef nonnull %10) #7
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %24, !llvm.loop !49

41:                                               ; preds = %38, %2
  %42 = getelementptr inbounds %struct.BMIter, ptr %9, i64 0, i32 4
  store i8 2, ptr %42, align 4, !tbaa !52
  %43 = getelementptr inbounds %struct.BMIter, ptr %9, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %43, align 8, !tbaa !54
  %44 = getelementptr inbounds %struct.BMIter, ptr %9, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %44, align 8, !tbaa !55
  %45 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 10
  %46 = load ptr, ptr %45, align 8, !tbaa !56
  store ptr %46, ptr %9, align 8, !tbaa !57
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %9) #7
  %47 = load ptr, ptr %44, align 8, !tbaa !55
  %48 = call ptr %47(ptr noundef nonnull %9) #7
  %49 = icmp eq ptr %48, null
  br i1 %49, label %90, label %50

50:                                               ; preds = %41
  %51 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  br label %52

52:                                               ; preds = %50, %85
  %53 = phi ptr [ %48, %50 ], [ %88, %85 ]
  %54 = phi i32 [ 0, %50 ], [ %86, %85 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #7
  %55 = call zeroext i8 @BM_edge_face_pair(ptr noundef nonnull %53, ptr noundef nonnull %11, ptr noundef nonnull %12) #7
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %85, label %57

57:                                               ; preds = %52
  %58 = load ptr, ptr %11, align 8, !tbaa !58
  %59 = getelementptr inbounds %struct.BMFace, ptr %58, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !42
  %61 = load i32, ptr %51, align 8, !tbaa !43
  %62 = sext i32 %61 to i64
  %63 = getelementptr %struct.BMFlagLayer, ptr %60, i64 %62
  %64 = getelementptr %struct.BMFlagLayer, ptr %63, i64 -1
  %65 = load i16, ptr %64, align 2, !tbaa !47
  %66 = and i16 %65, 2
  %67 = icmp eq i16 %66, 0
  br i1 %67, label %85, label %68

68:                                               ; preds = %57
  %69 = load ptr, ptr %12, align 8, !tbaa !58
  %70 = getelementptr inbounds %struct.BMFace, ptr %69, i64 0, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !42
  %72 = getelementptr %struct.BMFlagLayer, ptr %71, i64 %62
  %73 = getelementptr %struct.BMFlagLayer, ptr %72, i64 -1
  %74 = load i16, ptr %73, align 2, !tbaa !47
  %75 = and i16 %74, 2
  %76 = icmp eq i16 %75, 0
  br i1 %76, label %85, label %77

77:                                               ; preds = %68
  %78 = getelementptr inbounds %struct.BMEdge, ptr %53, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !59
  %80 = getelementptr %struct.BMFlagLayer, ptr %79, i64 %62
  %81 = getelementptr %struct.BMFlagLayer, ptr %80, i64 -1
  %82 = load i16, ptr %81, align 2, !tbaa !47
  %83 = or i16 %82, 1
  store i16 %83, ptr %81, align 2, !tbaa !47
  %84 = add i32 %54, 1
  br label %85

85:                                               ; preds = %77, %68, %57, %52
  %86 = phi i32 [ %84, %77 ], [ %54, %68 ], [ %54, %57 ], [ %54, %52 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #7
  %87 = load ptr, ptr %44, align 8, !tbaa !55
  %88 = call ptr %87(ptr noundef nonnull %9) #7
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %52, !llvm.loop !62

90:                                               ; preds = %85, %41
  %91 = phi i32 [ 0, %41 ], [ %86, %85 ]
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %740, label %93

93:                                               ; preds = %90
  %94 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !58
  %95 = zext i32 %91 to i64
  %96 = shl nuw nsw i64 %95, 4
  %97 = call ptr %94(i64 noundef %96, ptr noundef nonnull @__func__.bmo_join_triangles_exec) #7
  store i8 2, ptr %42, align 4, !tbaa !52
  store ptr @bmiter__elem_of_mesh_begin, ptr %43, align 8, !tbaa !54
  store ptr @bmiter__elem_of_mesh_step, ptr %44, align 8, !tbaa !55
  %98 = load ptr, ptr %45, align 8, !tbaa !56
  store ptr %98, ptr %9, align 8, !tbaa !57
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %9) #7
  %99 = load ptr, ptr %44, align 8, !tbaa !55
  %100 = call ptr %99(ptr noundef nonnull %9) #7
  %101 = icmp eq ptr %100, null
  br i1 %101, label %529, label %102

102:                                              ; preds = %93
  %103 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %104 = icmp eq i8 %15, 0
  %105 = icmp eq i8 %18, 0
  %106 = icmp ne i8 %16, 0
  %107 = icmp ne i8 %17, 0
  %108 = select i1 %106, i1 true, i1 %107
  %109 = icmp eq i8 %16, 0
  %110 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 26
  %111 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 27
  %112 = icmp eq i8 %17, 0
  %113 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 26
  %114 = getelementptr inbounds float, ptr %3, i64 1
  %115 = getelementptr inbounds float, ptr %4, i64 1
  %116 = getelementptr inbounds float, ptr %3, i64 2
  %117 = getelementptr inbounds float, ptr %4, i64 2
  %118 = getelementptr inbounds float, ptr %3, i64 1
  %119 = getelementptr inbounds float, ptr %4, i64 1
  %120 = getelementptr inbounds float, ptr %3, i64 2
  %121 = getelementptr inbounds float, ptr %4, i64 2
  %122 = getelementptr inbounds float, ptr %5, i64 1
  %123 = getelementptr inbounds float, ptr %5, i64 2
  %124 = getelementptr inbounds float, ptr %6, i64 1
  %125 = getelementptr inbounds float, ptr %6, i64 2
  %126 = getelementptr inbounds float, ptr %7, i64 1
  %127 = getelementptr inbounds float, ptr %7, i64 2
  %128 = getelementptr inbounds float, ptr %8, i64 1
  %129 = getelementptr inbounds float, ptr %8, i64 2
  br label %130

130:                                              ; preds = %102, %524
  %131 = phi ptr [ %100, %102 ], [ %527, %524 ]
  %132 = phi i32 [ 0, %102 ], [ %525, %524 ]
  %133 = getelementptr inbounds %struct.BMEdge, ptr %131, i64 0, i32 1
  %134 = load ptr, ptr %133, align 8, !tbaa !59
  %135 = load i32, ptr %103, align 8, !tbaa !43
  %136 = sext i32 %135 to i64
  %137 = getelementptr %struct.BMFlagLayer, ptr %134, i64 %136
  %138 = getelementptr %struct.BMFlagLayer, ptr %137, i64 -1
  %139 = load i16, ptr %138, align 2, !tbaa !47
  %140 = and i16 %139, 1
  %141 = icmp eq i16 %140, 0
  br i1 %141, label %524, label %142

142:                                              ; preds = %130
  %143 = getelementptr inbounds %struct.BMEdge, ptr %131, i64 0, i32 4
  %144 = load ptr, ptr %143, align 8, !tbaa !63
  %145 = getelementptr inbounds %struct.BMLoop, ptr %144, i64 0, i32 3
  %146 = load ptr, ptr %145, align 8, !tbaa !64
  %147 = getelementptr inbounds %struct.BMLoop, ptr %144, i64 0, i32 4
  %148 = load ptr, ptr %147, align 8, !tbaa !66
  %149 = getelementptr inbounds %struct.BMLoop, ptr %148, i64 0, i32 3
  %150 = load ptr, ptr %149, align 8, !tbaa !64
  br i1 %104, label %156, label %151

151:                                              ; preds = %142
  %152 = getelementptr inbounds %struct.BMHeader, ptr %131, i64 0, i32 3
  %153 = load i8, ptr %152, align 1, !tbaa !67
  %154 = and i8 %153, 8
  %155 = icmp eq i8 %154, 0
  br i1 %155, label %524, label %156

156:                                              ; preds = %151, %142
  br i1 %105, label %163, label %157

157:                                              ; preds = %156
  %158 = getelementptr inbounds %struct.BMFace, ptr %146, i64 0, i32 5
  %159 = load i16, ptr %158, align 8, !tbaa !68
  %160 = getelementptr inbounds %struct.BMFace, ptr %150, i64 0, i32 5
  %161 = load i16, ptr %160, align 8, !tbaa !68
  %162 = icmp eq i16 %159, %161
  br i1 %162, label %163, label %524

163:                                              ; preds = %157, %156
  br i1 %108, label %164, label %303

164:                                              ; preds = %163
  %165 = getelementptr inbounds %struct.BMLoop, ptr %144, i64 0, i32 1
  %166 = load ptr, ptr %165, align 8, !tbaa !69
  %167 = getelementptr inbounds %struct.BMLoop, ptr %148, i64 0, i32 1
  %168 = load ptr, ptr %167, align 8, !tbaa !69
  %169 = icmp eq ptr %166, %168
  %170 = getelementptr inbounds %struct.BMLoop, ptr %144, i64 0, i32 6
  %171 = load ptr, ptr %170, align 8, !tbaa !70
  br i1 %169, label %172, label %175

172:                                              ; preds = %164
  %173 = getelementptr inbounds %struct.BMLoop, ptr %171, i64 0, i32 6
  %174 = load ptr, ptr %173, align 8, !tbaa !70
  br label %178

175:                                              ; preds = %164
  %176 = getelementptr inbounds %struct.BMLoop, ptr %148, i64 0, i32 6
  %177 = load ptr, ptr %176, align 8, !tbaa !70
  br label %178

178:                                              ; preds = %175, %172
  %179 = phi ptr [ %148, %172 ], [ %177, %175 ]
  %180 = phi ptr [ %174, %172 ], [ %148, %175 ]
  br i1 %109, label %234, label %181

181:                                              ; preds = %178
  %182 = load ptr, ptr %144, align 8, !tbaa !71
  %183 = call ptr @CustomData_bmesh_get(ptr noundef nonnull %110, ptr noundef %182, i32 noundef 16) #7
  %184 = load ptr, ptr %171, align 8, !tbaa !71
  %185 = call ptr @CustomData_bmesh_get(ptr noundef nonnull %110, ptr noundef %184, i32 noundef 16) #7
  %186 = load ptr, ptr %179, align 8, !tbaa !71
  %187 = call ptr @CustomData_bmesh_get(ptr noundef nonnull %110, ptr noundef %186, i32 noundef 16) #7
  %188 = load ptr, ptr %180, align 8, !tbaa !71
  %189 = call ptr @CustomData_bmesh_get(ptr noundef nonnull %110, ptr noundef %188, i32 noundef 16) #7
  %190 = icmp eq ptr %183, null
  br i1 %190, label %219, label %191

191:                                              ; preds = %181
  %192 = load float, ptr %183, align 4, !tbaa !72
  %193 = load float, ptr %187, align 4, !tbaa !72
  %194 = fsub float %192, %193
  %195 = call float @llvm.fabs.f32(float %194)
  %196 = fcmp ugt float %195, 0x3F747AE140000000
  br i1 %196, label %524, label %197

197:                                              ; preds = %191
  %198 = getelementptr inbounds float, ptr %183, i64 1
  %199 = load float, ptr %198, align 4, !tbaa !72
  %200 = getelementptr inbounds float, ptr %187, i64 1
  %201 = load float, ptr %200, align 4, !tbaa !72
  %202 = fsub float %199, %201
  %203 = call float @llvm.fabs.f32(float %202)
  %204 = fcmp ugt float %203, 0x3F747AE140000000
  br i1 %204, label %524, label %205

205:                                              ; preds = %197
  %206 = load float, ptr %185, align 4, !tbaa !72
  %207 = load float, ptr %189, align 4, !tbaa !72
  %208 = fsub float %206, %207
  %209 = call float @llvm.fabs.f32(float %208)
  %210 = fcmp ugt float %209, 0x3F747AE140000000
  br i1 %210, label %524, label %211

211:                                              ; preds = %205
  %212 = getelementptr inbounds float, ptr %185, i64 1
  %213 = load float, ptr %212, align 4, !tbaa !72
  %214 = getelementptr inbounds float, ptr %189, i64 1
  %215 = load float, ptr %214, align 4, !tbaa !72
  %216 = fsub float %213, %215
  %217 = call float @llvm.fabs.f32(float %216)
  %218 = fcmp ugt float %217, 0x3F747AE140000000
  br i1 %218, label %524, label %219

219:                                              ; preds = %181, %211
  %220 = load ptr, ptr %145, align 8, !tbaa !64
  %221 = load ptr, ptr %220, align 8, !tbaa !74
  %222 = call ptr @CustomData_bmesh_get(ptr noundef nonnull %111, ptr noundef %221, i32 noundef 15) #7
  %223 = getelementptr inbounds %struct.BMLoop, ptr %171, i64 0, i32 3
  %224 = load ptr, ptr %223, align 8, !tbaa !64
  %225 = load ptr, ptr %224, align 8, !tbaa !74
  %226 = call ptr @CustomData_bmesh_get(ptr noundef nonnull %111, ptr noundef %225, i32 noundef 15) #7
  %227 = icmp eq ptr %222, null
  br i1 %227, label %234, label %228

228:                                              ; preds = %219
  %229 = load ptr, ptr %222, align 8, !tbaa !75
  %230 = load ptr, ptr %226, align 8, !tbaa !75
  %231 = icmp ne ptr %229, %230
  %232 = select i1 %231, i1 true, i1 %112
  %233 = xor i1 %231, true
  br i1 %232, label %301, label %235

234:                                              ; preds = %178, %219
  br i1 %112, label %303, label %235

235:                                              ; preds = %228, %234
  %236 = load ptr, ptr %144, align 8, !tbaa !71
  %237 = call ptr @CustomData_bmesh_get(ptr noundef nonnull %113, ptr noundef %236, i32 noundef 17) #7
  %238 = load ptr, ptr %171, align 8, !tbaa !71
  %239 = call ptr @CustomData_bmesh_get(ptr noundef nonnull %113, ptr noundef %238, i32 noundef 17) #7
  %240 = load ptr, ptr %179, align 8, !tbaa !71
  %241 = call ptr @CustomData_bmesh_get(ptr noundef nonnull %113, ptr noundef %240, i32 noundef 17) #7
  %242 = load ptr, ptr %180, align 8, !tbaa !71
  %243 = call ptr @CustomData_bmesh_get(ptr noundef nonnull %113, ptr noundef %242, i32 noundef 17) #7
  %244 = icmp eq ptr %237, null
  br i1 %244, label %303, label %245

245:                                              ; preds = %235
  %246 = load i8, ptr %237, align 1, !tbaa !57
  %247 = zext i8 %246 to i32
  %248 = load i8, ptr %241, align 1, !tbaa !57
  %249 = zext i8 %248 to i32
  %250 = sub nsw i32 %247, %249
  %251 = call i32 @llvm.abs.i32(i32 %250, i1 true)
  %252 = icmp ult i32 %251, 3
  br i1 %252, label %253, label %524

253:                                              ; preds = %245
  %254 = getelementptr inbounds i8, ptr %237, i64 1
  %255 = load i8, ptr %254, align 1, !tbaa !57
  %256 = zext i8 %255 to i32
  %257 = getelementptr inbounds i8, ptr %241, i64 1
  %258 = load i8, ptr %257, align 1, !tbaa !57
  %259 = zext i8 %258 to i32
  %260 = sub nsw i32 %256, %259
  %261 = call i32 @llvm.abs.i32(i32 %260, i1 true)
  %262 = icmp ult i32 %261, 3
  br i1 %262, label %263, label %524

263:                                              ; preds = %253
  %264 = getelementptr inbounds i8, ptr %237, i64 2
  %265 = load i8, ptr %264, align 1, !tbaa !57
  %266 = zext i8 %265 to i32
  %267 = getelementptr inbounds i8, ptr %241, i64 2
  %268 = load i8, ptr %267, align 1, !tbaa !57
  %269 = zext i8 %268 to i32
  %270 = sub nsw i32 %266, %269
  %271 = call i32 @llvm.abs.i32(i32 %270, i1 true)
  %272 = icmp ugt i32 %271, 2
  br i1 %272, label %524, label %273

273:                                              ; preds = %263
  %274 = load i8, ptr %239, align 1, !tbaa !57
  %275 = zext i8 %274 to i32
  %276 = load i8, ptr %243, align 1, !tbaa !57
  %277 = zext i8 %276 to i32
  %278 = sub nsw i32 %275, %277
  %279 = call i32 @llvm.abs.i32(i32 %278, i1 true)
  %280 = icmp ult i32 %279, 3
  br i1 %280, label %281, label %524

281:                                              ; preds = %273
  %282 = getelementptr inbounds i8, ptr %239, i64 1
  %283 = load i8, ptr %282, align 1, !tbaa !57
  %284 = zext i8 %283 to i32
  %285 = getelementptr inbounds i8, ptr %243, i64 1
  %286 = load i8, ptr %285, align 1, !tbaa !57
  %287 = zext i8 %286 to i32
  %288 = sub nsw i32 %284, %287
  %289 = call i32 @llvm.abs.i32(i32 %288, i1 true)
  %290 = icmp ult i32 %289, 3
  br i1 %290, label %291, label %524

291:                                              ; preds = %281
  %292 = getelementptr inbounds i8, ptr %239, i64 2
  %293 = load i8, ptr %292, align 1, !tbaa !57
  %294 = zext i8 %293 to i32
  %295 = getelementptr inbounds i8, ptr %243, i64 2
  %296 = load i8, ptr %295, align 1, !tbaa !57
  %297 = zext i8 %296 to i32
  %298 = sub nsw i32 %294, %297
  %299 = call i32 @llvm.abs.i32(i32 %298, i1 true)
  %300 = icmp ult i32 %299, 3
  br label %301

301:                                              ; preds = %228, %291
  %302 = phi i1 [ %233, %228 ], [ %300, %291 ]
  br i1 %302, label %303, label %524

303:                                              ; preds = %234, %235, %163, %301
  %304 = load ptr, ptr %143, align 8, !tbaa !63
  %305 = getelementptr inbounds %struct.BMLoop, ptr %304, i64 0, i32 1
  %306 = load ptr, ptr %305, align 8, !tbaa !69
  %307 = getelementptr inbounds %struct.BMLoop, ptr %304, i64 0, i32 7
  %308 = load ptr, ptr %307, align 8, !tbaa !77
  %309 = getelementptr inbounds %struct.BMLoop, ptr %308, i64 0, i32 1
  %310 = load ptr, ptr %309, align 8, !tbaa !69
  %311 = getelementptr inbounds %struct.BMLoop, ptr %304, i64 0, i32 6
  %312 = load ptr, ptr %311, align 8, !tbaa !70
  %313 = getelementptr inbounds %struct.BMLoop, ptr %312, i64 0, i32 1
  %314 = load ptr, ptr %313, align 8, !tbaa !69
  %315 = getelementptr inbounds %struct.BMLoop, ptr %304, i64 0, i32 4
  %316 = load ptr, ptr %315, align 8, !tbaa !66
  %317 = getelementptr inbounds %struct.BMLoop, ptr %316, i64 0, i32 7
  %318 = load ptr, ptr %317, align 8, !tbaa !77
  %319 = getelementptr inbounds %struct.BMLoop, ptr %318, i64 0, i32 1
  %320 = load ptr, ptr %319, align 8, !tbaa !69
  %321 = getelementptr inbounds %struct.BMVert, ptr %306, i64 0, i32 2
  %322 = getelementptr inbounds %struct.BMVert, ptr %310, i64 0, i32 2
  %323 = getelementptr inbounds %struct.BMVert, ptr %314, i64 0, i32 2
  %324 = getelementptr inbounds %struct.BMVert, ptr %320, i64 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #7
  %325 = call float @normal_tri_v3(ptr noundef nonnull %3, ptr noundef nonnull %321, ptr noundef nonnull %322, ptr noundef nonnull %323) #7
  %326 = call float @normal_tri_v3(ptr noundef nonnull %4, ptr noundef nonnull %321, ptr noundef nonnull %323, ptr noundef nonnull %324) #7
  %327 = load float, ptr %3, align 4, !tbaa !72
  %328 = load float, ptr %4, align 4, !tbaa !72
  %329 = fsub float %327, %328
  %330 = call float @llvm.fabs.f32(float %329)
  %331 = fcmp ugt float %330, 0x3E80000000000000
  br i1 %331, label %344, label %332

332:                                              ; preds = %303
  %333 = load float, ptr %114, align 4, !tbaa !72
  %334 = load float, ptr %115, align 4, !tbaa !72
  %335 = fsub float %333, %334
  %336 = call float @llvm.fabs.f32(float %335)
  %337 = fcmp ugt float %336, 0x3E80000000000000
  br i1 %337, label %344, label %338

338:                                              ; preds = %332
  %339 = load float, ptr %116, align 4, !tbaa !72
  %340 = load float, ptr %117, align 4, !tbaa !72
  %341 = fsub float %339, %340
  %342 = call float @llvm.fabs.f32(float %341)
  %343 = fcmp ugt float %342, 0x3E80000000000000
  br i1 %343, label %344, label %346

344:                                              ; preds = %338, %332, %303
  %345 = call float @angle_normalized_v3v3(ptr noundef nonnull %3, ptr noundef nonnull %4) #7
  br label %346

346:                                              ; preds = %338, %344
  %347 = phi float [ %345, %344 ], [ 0.000000e+00, %338 ]
  %348 = call float @normal_tri_v3(ptr noundef nonnull %3, ptr noundef nonnull %322, ptr noundef nonnull %323, ptr noundef nonnull %324) #7
  %349 = call float @normal_tri_v3(ptr noundef nonnull %4, ptr noundef nonnull %324, ptr noundef nonnull %321, ptr noundef nonnull %322) #7
  %350 = load float, ptr %3, align 4, !tbaa !72
  %351 = load float, ptr %4, align 4, !tbaa !72
  %352 = fsub float %350, %351
  %353 = call float @llvm.fabs.f32(float %352)
  %354 = fcmp ugt float %353, 0x3E80000000000000
  br i1 %354, label %367, label %355

355:                                              ; preds = %346
  %356 = load float, ptr %118, align 4, !tbaa !72
  %357 = load float, ptr %119, align 4, !tbaa !72
  %358 = fsub float %356, %357
  %359 = call float @llvm.fabs.f32(float %358)
  %360 = fcmp ugt float %359, 0x3E80000000000000
  br i1 %360, label %367, label %361

361:                                              ; preds = %355
  %362 = load float, ptr %120, align 4, !tbaa !72
  %363 = load float, ptr %121, align 4, !tbaa !72
  %364 = fsub float %362, %363
  %365 = call float @llvm.fabs.f32(float %364)
  %366 = fcmp ugt float %365, 0x3E80000000000000
  br i1 %366, label %367, label %369

367:                                              ; preds = %361, %355, %346
  %368 = call float @angle_normalized_v3v3(ptr noundef nonnull %3, ptr noundef nonnull %4) #7
  br label %369

369:                                              ; preds = %361, %367
  %370 = phi float [ %368, %367 ], [ 0.000000e+00, %361 ]
  %371 = fadd float %347, %370
  %372 = call float @llvm.fmuladd.f32(float %371, float 5.000000e-01, float 0.000000e+00)
  %373 = fcmp ogt float %372, %19
  br i1 %373, label %516, label %374

374:                                              ; preds = %369
  %375 = load float, ptr %321, align 4, !tbaa !72
  %376 = load float, ptr %322, align 4, !tbaa !72
  %377 = fsub float %375, %376
  store float %377, ptr %5, align 4, !tbaa !72
  %378 = getelementptr inbounds %struct.BMVert, ptr %306, i64 0, i32 2, i64 1
  %379 = load float, ptr %378, align 4, !tbaa !72
  %380 = getelementptr inbounds %struct.BMVert, ptr %310, i64 0, i32 2, i64 1
  %381 = load float, ptr %380, align 4, !tbaa !72
  %382 = fsub float %379, %381
  store float %382, ptr %122, align 4, !tbaa !72
  %383 = getelementptr inbounds %struct.BMVert, ptr %306, i64 0, i32 2, i64 2
  %384 = load float, ptr %383, align 4, !tbaa !72
  %385 = getelementptr inbounds %struct.BMVert, ptr %310, i64 0, i32 2, i64 2
  %386 = load float, ptr %385, align 4, !tbaa !72
  %387 = fsub float %384, %386
  store float %387, ptr %123, align 4, !tbaa !72
  %388 = load float, ptr %323, align 4, !tbaa !72
  %389 = fsub float %376, %388
  store float %389, ptr %6, align 4, !tbaa !72
  %390 = getelementptr inbounds %struct.BMVert, ptr %314, i64 0, i32 2, i64 1
  %391 = load float, ptr %390, align 4, !tbaa !72
  %392 = fsub float %381, %391
  store float %392, ptr %124, align 4, !tbaa !72
  %393 = getelementptr inbounds %struct.BMVert, ptr %314, i64 0, i32 2, i64 2
  %394 = load float, ptr %393, align 4, !tbaa !72
  %395 = fsub float %386, %394
  store float %395, ptr %125, align 4, !tbaa !72
  %396 = load float, ptr %324, align 4, !tbaa !72
  %397 = fsub float %388, %396
  store float %397, ptr %7, align 4, !tbaa !72
  %398 = getelementptr inbounds %struct.BMVert, ptr %320, i64 0, i32 2, i64 1
  %399 = load float, ptr %398, align 4, !tbaa !72
  %400 = fsub float %391, %399
  store float %400, ptr %126, align 4, !tbaa !72
  %401 = getelementptr inbounds %struct.BMVert, ptr %320, i64 0, i32 2, i64 2
  %402 = load float, ptr %401, align 4, !tbaa !72
  %403 = fsub float %394, %402
  store float %403, ptr %127, align 4, !tbaa !72
  %404 = fsub float %396, %375
  store float %404, ptr %8, align 4, !tbaa !72
  %405 = fsub float %399, %379
  store float %405, ptr %128, align 4, !tbaa !72
  %406 = fsub float %402, %384
  store float %406, ptr %129, align 4, !tbaa !72
  %407 = fmul float %382, %382
  %408 = call float @llvm.fmuladd.f32(float %377, float %377, float %407)
  %409 = call float @llvm.fmuladd.f32(float %387, float %387, float %408)
  %410 = fcmp ogt float %409, 0x38AA95A5C0000000
  br i1 %410, label %411, label %420

411:                                              ; preds = %374
  %412 = call float @sqrtf(float noundef %409) #7
  %413 = fdiv float 1.000000e+00, %412
  %414 = load float, ptr %5, align 4, !tbaa !72
  %415 = fmul float %414, %413
  store float %415, ptr %5, align 4, !tbaa !72
  %416 = load float, ptr %122, align 4, !tbaa !72
  %417 = fmul float %413, %416
  store float %417, ptr %122, align 4, !tbaa !72
  %418 = load float, ptr %123, align 4, !tbaa !72
  %419 = fmul float %413, %418
  br label %421

420:                                              ; preds = %374
  store float 0.000000e+00, ptr %5, align 4, !tbaa !72
  store float 0.000000e+00, ptr %122, align 4, !tbaa !72
  br label %421

421:                                              ; preds = %420, %411
  %422 = phi float [ 0.000000e+00, %420 ], [ %419, %411 ]
  store float %422, ptr %123, align 4, !tbaa !72
  %423 = load float, ptr %6, align 4, !tbaa !72
  %424 = load float, ptr %124, align 4, !tbaa !72
  %425 = fmul float %424, %424
  %426 = call float @llvm.fmuladd.f32(float %423, float %423, float %425)
  %427 = load float, ptr %125, align 4, !tbaa !72
  %428 = call float @llvm.fmuladd.f32(float %427, float %427, float %426)
  %429 = fcmp ogt float %428, 0x38AA95A5C0000000
  br i1 %429, label %430, label %439

430:                                              ; preds = %421
  %431 = call float @sqrtf(float noundef %428) #7
  %432 = fdiv float 1.000000e+00, %431
  %433 = load float, ptr %6, align 4, !tbaa !72
  %434 = fmul float %433, %432
  store float %434, ptr %6, align 4, !tbaa !72
  %435 = load float, ptr %124, align 4, !tbaa !72
  %436 = fmul float %432, %435
  store float %436, ptr %124, align 4, !tbaa !72
  %437 = load float, ptr %125, align 4, !tbaa !72
  %438 = fmul float %432, %437
  br label %440

439:                                              ; preds = %421
  store float 0.000000e+00, ptr %6, align 4, !tbaa !72
  store float 0.000000e+00, ptr %124, align 4, !tbaa !72
  br label %440

440:                                              ; preds = %439, %430
  %441 = phi float [ 0.000000e+00, %439 ], [ %438, %430 ]
  store float %441, ptr %125, align 4, !tbaa !72
  %442 = load float, ptr %7, align 4, !tbaa !72
  %443 = load float, ptr %126, align 4, !tbaa !72
  %444 = fmul float %443, %443
  %445 = call float @llvm.fmuladd.f32(float %442, float %442, float %444)
  %446 = load float, ptr %127, align 4, !tbaa !72
  %447 = call float @llvm.fmuladd.f32(float %446, float %446, float %445)
  %448 = fcmp ogt float %447, 0x38AA95A5C0000000
  br i1 %448, label %449, label %458

449:                                              ; preds = %440
  %450 = call float @sqrtf(float noundef %447) #7
  %451 = fdiv float 1.000000e+00, %450
  %452 = load float, ptr %7, align 4, !tbaa !72
  %453 = fmul float %452, %451
  store float %453, ptr %7, align 4, !tbaa !72
  %454 = load float, ptr %126, align 4, !tbaa !72
  %455 = fmul float %451, %454
  store float %455, ptr %126, align 4, !tbaa !72
  %456 = load float, ptr %127, align 4, !tbaa !72
  %457 = fmul float %451, %456
  br label %459

458:                                              ; preds = %440
  store float 0.000000e+00, ptr %7, align 4, !tbaa !72
  store float 0.000000e+00, ptr %126, align 4, !tbaa !72
  br label %459

459:                                              ; preds = %458, %449
  %460 = phi float [ 0.000000e+00, %458 ], [ %457, %449 ]
  store float %460, ptr %127, align 4, !tbaa !72
  %461 = load float, ptr %8, align 4, !tbaa !72
  %462 = load float, ptr %128, align 4, !tbaa !72
  %463 = fmul float %462, %462
  %464 = call float @llvm.fmuladd.f32(float %461, float %461, float %463)
  %465 = load float, ptr %129, align 4, !tbaa !72
  %466 = call float @llvm.fmuladd.f32(float %465, float %465, float %464)
  %467 = fcmp ogt float %466, 0x38AA95A5C0000000
  br i1 %467, label %468, label %477

468:                                              ; preds = %459
  %469 = call float @sqrtf(float noundef %466) #7
  %470 = fdiv float 1.000000e+00, %469
  %471 = load float, ptr %8, align 4, !tbaa !72
  %472 = fmul float %471, %470
  store float %472, ptr %8, align 4, !tbaa !72
  %473 = load float, ptr %128, align 4, !tbaa !72
  %474 = fmul float %470, %473
  store float %474, ptr %128, align 4, !tbaa !72
  %475 = load float, ptr %129, align 4, !tbaa !72
  %476 = fmul float %470, %475
  br label %478

477:                                              ; preds = %459
  store float 0.000000e+00, ptr %8, align 4, !tbaa !72
  store float 0.000000e+00, ptr %128, align 4, !tbaa !72
  br label %478

478:                                              ; preds = %477, %468
  %479 = phi float [ 0.000000e+00, %477 ], [ %476, %468 ]
  store float %479, ptr %129, align 4, !tbaa !72
  %480 = call float @angle_normalized_v3v3(ptr noundef nonnull %5, ptr noundef nonnull %6) #7
  %481 = fadd float %480, 0xBFF921FB60000000
  %482 = call float @llvm.fabs.f32(float %481)
  %483 = call float @angle_normalized_v3v3(ptr noundef nonnull %6, ptr noundef nonnull %7) #7
  %484 = fadd float %483, 0xBFF921FB60000000
  %485 = call float @llvm.fabs.f32(float %484)
  %486 = fadd float %482, %485
  %487 = call float @angle_normalized_v3v3(ptr noundef nonnull %7, ptr noundef nonnull %8) #7
  %488 = fadd float %487, 0xBFF921FB60000000
  %489 = call float @llvm.fabs.f32(float %488)
  %490 = fadd float %486, %489
  %491 = call float @angle_normalized_v3v3(ptr noundef nonnull %8, ptr noundef nonnull %5) #7
  %492 = fadd float %491, 0xBFF921FB60000000
  %493 = call float @llvm.fabs.f32(float %492)
  %494 = fadd float %490, %493
  %495 = fmul float %494, 2.500000e-01
  %496 = fcmp une float %495, 0.000000e+00
  br i1 %496, label %497, label %516

497:                                              ; preds = %478
  %498 = fadd float %372, %495
  %499 = fcmp ogt float %498, %19
  br i1 %499, label %516, label %500

500:                                              ; preds = %497
  %501 = call float @area_tri_v3(ptr noundef nonnull %321, ptr noundef nonnull %322, ptr noundef nonnull %323) #7
  %502 = call float @area_tri_v3(ptr noundef nonnull %321, ptr noundef nonnull %323, ptr noundef nonnull %324) #7
  %503 = fadd float %501, %502
  %504 = call float @area_tri_v3(ptr noundef nonnull %322, ptr noundef nonnull %323, ptr noundef nonnull %324) #7
  %505 = call float @area_tri_v3(ptr noundef nonnull %324, ptr noundef nonnull %321, ptr noundef nonnull %322) #7
  %506 = fadd float %504, %505
  %507 = fcmp ole float %503, %506
  %508 = select i1 %507, float %503, float %506
  %509 = fcmp oge float %503, %506
  %510 = select i1 %509, float %503, float %506
  %511 = fcmp une float %510, 0.000000e+00
  %512 = fdiv float %508, %510
  %513 = fsub float 1.000000e+00, %512
  %514 = select i1 %511, float %513, float 1.000000e+00
  %515 = fadd float %498, %514
  br label %516

516:                                              ; preds = %369, %478, %497, %500
  %517 = phi float [ %515, %500 ], [ %372, %369 ], [ 0.000000e+00, %478 ], [ %498, %497 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #7
  %518 = fcmp olt float %517, %19
  br i1 %518, label %519, label %524

519:                                              ; preds = %516
  %520 = zext i32 %132 to i64
  %521 = getelementptr inbounds %struct.SortPointerByFloat, ptr %97, i64 %520
  %522 = getelementptr inbounds %struct.SortPointerByFloat, ptr %97, i64 %520, i32 1
  store ptr %131, ptr %522, align 8, !tbaa !78
  store float %517, ptr %521, align 8, !tbaa !80
  %523 = add i32 %132, 1
  br label %524

524:                                              ; preds = %245, %273, %197, %191, %211, %205, %263, %253, %281, %516, %519, %301, %157, %151, %130
  %525 = phi i32 [ %132, %130 ], [ %132, %151 ], [ %132, %157 ], [ %132, %301 ], [ %523, %519 ], [ %132, %516 ], [ %132, %281 ], [ %132, %253 ], [ %132, %263 ], [ %132, %205 ], [ %132, %211 ], [ %132, %191 ], [ %132, %197 ], [ %132, %273 ], [ %132, %245 ]
  %526 = load ptr, ptr %44, align 8, !tbaa !55
  %527 = call ptr %526(ptr noundef nonnull %9) #7
  %528 = icmp eq ptr %527, null
  br i1 %528, label %529, label %130, !llvm.loop !81

529:                                              ; preds = %524, %93
  %530 = phi i32 [ 0, %93 ], [ %525, %524 ]
  %531 = zext i32 %530 to i64
  call void @qsort(ptr noundef %97, i64 noundef %531, i64 noundef 16, ptr noundef nonnull @BLI_sortutil_cmp_float) #7
  %532 = icmp eq i32 %530, 0
  br i1 %532, label %582, label %533

533:                                              ; preds = %529
  %534 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %535 = load i32, ptr %534, align 8, !tbaa !43
  %536 = sext i32 %535 to i64
  %537 = zext i32 %530 to i64
  br label %538

538:                                              ; preds = %533, %579
  %539 = phi i64 [ 0, %533 ], [ %580, %579 ]
  %540 = getelementptr inbounds %struct.SortPointerByFloat, ptr %97, i64 %539, i32 1
  %541 = load ptr, ptr %540, align 8, !tbaa !78
  %542 = getelementptr inbounds %struct.BMEdge, ptr %541, i64 0, i32 4
  %543 = load ptr, ptr %542, align 8, !tbaa !63
  %544 = getelementptr inbounds %struct.BMLoop, ptr %543, i64 0, i32 3
  %545 = load ptr, ptr %544, align 8, !tbaa !64
  %546 = getelementptr inbounds %struct.BMLoop, ptr %543, i64 0, i32 4
  %547 = load ptr, ptr %546, align 8, !tbaa !66
  %548 = getelementptr inbounds %struct.BMLoop, ptr %547, i64 0, i32 3
  %549 = load ptr, ptr %548, align 8, !tbaa !64
  %550 = getelementptr inbounds %struct.BMFace, ptr %545, i64 0, i32 1
  %551 = load ptr, ptr %550, align 8, !tbaa !42
  %552 = getelementptr %struct.BMFlagLayer, ptr %551, i64 %536
  %553 = getelementptr %struct.BMFlagLayer, ptr %552, i64 -1
  %554 = load i16, ptr %553, align 2, !tbaa !47
  %555 = and i16 %554, 1
  %556 = icmp eq i16 %555, 0
  br i1 %556, label %565, label %557

557:                                              ; preds = %538
  %558 = getelementptr inbounds %struct.BMFace, ptr %549, i64 0, i32 1
  %559 = load ptr, ptr %558, align 8, !tbaa !42
  %560 = getelementptr %struct.BMFlagLayer, ptr %559, i64 %536
  %561 = getelementptr %struct.BMFlagLayer, ptr %560, i64 -1
  %562 = load i16, ptr %561, align 2, !tbaa !47
  %563 = and i16 %562, 1
  %564 = icmp eq i16 %563, 0
  br i1 %564, label %565, label %579

565:                                              ; preds = %557, %538
  %566 = or i16 %554, 1
  store i16 %566, ptr %553, align 2, !tbaa !47
  %567 = getelementptr inbounds %struct.BMFace, ptr %549, i64 0, i32 1
  %568 = load ptr, ptr %567, align 8, !tbaa !42
  %569 = getelementptr %struct.BMFlagLayer, ptr %568, i64 %536
  %570 = getelementptr %struct.BMFlagLayer, ptr %569, i64 -1
  %571 = load i16, ptr %570, align 2, !tbaa !47
  %572 = or i16 %571, 1
  store i16 %572, ptr %570, align 2, !tbaa !47
  %573 = getelementptr inbounds %struct.BMEdge, ptr %541, i64 0, i32 1
  %574 = load ptr, ptr %573, align 8, !tbaa !59
  %575 = getelementptr %struct.BMFlagLayer, ptr %574, i64 %536
  %576 = getelementptr %struct.BMFlagLayer, ptr %575, i64 -1
  %577 = load i16, ptr %576, align 2, !tbaa !47
  %578 = or i16 %577, 2
  store i16 %578, ptr %576, align 2, !tbaa !47
  br label %579

579:                                              ; preds = %565, %557
  %580 = add nuw nsw i64 %539, 1
  %581 = icmp eq i64 %580, %537
  br i1 %581, label %582, label %538, !llvm.loop !82

582:                                              ; preds = %579, %529
  %583 = load ptr, ptr @MEM_freeN, align 8, !tbaa !58
  call void %583(ptr noundef %97) #7
  store i8 2, ptr %42, align 4, !tbaa !52
  store ptr @bmiter__elem_of_mesh_begin, ptr %43, align 8, !tbaa !54
  store ptr @bmiter__elem_of_mesh_step, ptr %44, align 8, !tbaa !55
  %584 = load ptr, ptr %45, align 8, !tbaa !56
  store ptr %584, ptr %9, align 8, !tbaa !57
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %9) #7
  %585 = load ptr, ptr %44, align 8, !tbaa !55
  %586 = call ptr %585(ptr noundef nonnull %9) #7
  %587 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  br label %588

588:                                              ; preds = %630, %582
  %589 = phi ptr [ undef, %582 ], [ %596, %630 ]
  %590 = phi ptr [ %586, %582 ], [ %596, %630 ]
  %591 = icmp eq ptr %590, null
  br i1 %591, label %595, label %592

592:                                              ; preds = %588
  %593 = load ptr, ptr %44, align 8, !tbaa !55
  %594 = call ptr %593(ptr noundef nonnull %9) #7
  br label %595

595:                                              ; preds = %588, %592
  %596 = phi ptr [ %594, %592 ], [ %589, %588 ]
  br i1 %591, label %631, label %597

597:                                              ; preds = %595
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #7
  %598 = getelementptr inbounds %struct.BMEdge, ptr %590, i64 0, i32 1
  %599 = load ptr, ptr %598, align 8, !tbaa !59
  %600 = load i32, ptr %587, align 8, !tbaa !43
  %601 = sext i32 %600 to i64
  %602 = getelementptr %struct.BMFlagLayer, ptr %599, i64 %601
  %603 = getelementptr %struct.BMFlagLayer, ptr %602, i64 -1
  %604 = load i16, ptr %603, align 2, !tbaa !47
  %605 = and i16 %604, 2
  %606 = icmp eq i16 %605, 0
  br i1 %606, label %630, label %607

607:                                              ; preds = %597
  %608 = call zeroext i8 @BM_edge_face_pair(ptr noundef nonnull %590, ptr noundef nonnull %13, ptr noundef nonnull %14) #7
  %609 = load ptr, ptr %13, align 8, !tbaa !58
  %610 = getelementptr inbounds %struct.BMFace, ptr %609, i64 0, i32 3
  %611 = load i32, ptr %610, align 8, !tbaa !34
  %612 = icmp eq i32 %611, 3
  br i1 %612, label %613, label %630

613:                                              ; preds = %607
  %614 = load ptr, ptr %14, align 8, !tbaa !58
  %615 = getelementptr inbounds %struct.BMFace, ptr %614, i64 0, i32 3
  %616 = load i32, ptr %615, align 8, !tbaa !34
  %617 = icmp eq i32 %616, 3
  br i1 %617, label %618, label %630

618:                                              ; preds = %613
  %619 = call ptr @BM_faces_join_pair(ptr noundef %0, ptr noundef %609, ptr noundef %614, ptr noundef nonnull %590, i8 noundef zeroext 1) #7
  %620 = icmp eq ptr %619, null
  br i1 %620, label %630, label %621

621:                                              ; preds = %618
  %622 = getelementptr inbounds %struct.BMFace, ptr %619, i64 0, i32 1
  %623 = load ptr, ptr %622, align 8, !tbaa !42
  %624 = load i32, ptr %587, align 8, !tbaa !43
  %625 = sext i32 %624 to i64
  %626 = getelementptr %struct.BMFlagLayer, ptr %623, i64 %625
  %627 = getelementptr %struct.BMFlagLayer, ptr %626, i64 -1
  %628 = load i16, ptr %627, align 2, !tbaa !47
  %629 = or i16 %628, 1
  store i16 %629, ptr %627, align 2, !tbaa !47
  br label %630

630:                                              ; preds = %607, %613, %621, %618, %597
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #7
  br label %588, !llvm.loop !83

631:                                              ; preds = %595
  store i8 2, ptr %42, align 4, !tbaa !52
  store ptr @bmiter__elem_of_mesh_begin, ptr %43, align 8, !tbaa !54
  store ptr @bmiter__elem_of_mesh_step, ptr %44, align 8, !tbaa !55
  %632 = load ptr, ptr %45, align 8, !tbaa !56
  store ptr %632, ptr %9, align 8, !tbaa !57
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %9) #7
  %633 = load ptr, ptr %44, align 8, !tbaa !55
  %634 = call ptr %633(ptr noundef nonnull %9) #7
  %635 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  br label %636

636:                                              ; preds = %667, %631
  %637 = phi ptr [ %596, %631 ], [ %644, %667 ]
  %638 = phi ptr [ %634, %631 ], [ %644, %667 ]
  %639 = icmp eq ptr %638, null
  br i1 %639, label %643, label %640

640:                                              ; preds = %636
  %641 = load ptr, ptr %44, align 8, !tbaa !55
  %642 = call ptr %641(ptr noundef nonnull %9) #7
  br label %643

643:                                              ; preds = %636, %640
  %644 = phi ptr [ %642, %640 ], [ %637, %636 ]
  br i1 %639, label %738, label %645

645:                                              ; preds = %643
  %646 = getelementptr inbounds %struct.BMEdge, ptr %638, i64 0, i32 1
  %647 = load ptr, ptr %646, align 8, !tbaa !59
  %648 = load i32, ptr %635, align 8, !tbaa !43
  %649 = sext i32 %648 to i64
  %650 = getelementptr %struct.BMFlagLayer, ptr %647, i64 %649
  %651 = getelementptr %struct.BMFlagLayer, ptr %650, i64 -1
  %652 = load i16, ptr %651, align 2, !tbaa !47
  %653 = and i16 %652, 1
  %654 = icmp eq i16 %653, 0
  br i1 %654, label %667, label %655

655:                                              ; preds = %645
  %656 = getelementptr inbounds %struct.BMEdge, ptr %638, i64 0, i32 4
  %657 = load ptr, ptr %656, align 8, !tbaa !63
  %658 = getelementptr inbounds %struct.BMLoop, ptr %657, i64 0, i32 4
  %659 = load ptr, ptr %658, align 8, !tbaa !66
  %660 = getelementptr inbounds %struct.BMLoop, ptr %657, i64 0, i32 3
  %661 = load ptr, ptr %660, align 8, !tbaa !64
  %662 = getelementptr inbounds %struct.BMLoop, ptr %659, i64 0, i32 3
  %663 = load ptr, ptr %662, align 8, !tbaa !64
  %664 = getelementptr inbounds %struct.BMFace, ptr %661, i64 0, i32 3
  %665 = load i32, ptr %664, align 8, !tbaa !34
  %666 = icmp eq i32 %665, 3
  br i1 %666, label %668, label %667

667:                                              ; preds = %655, %668, %672, %684, %696, %708, %720, %729, %726, %645
  br label %636, !llvm.loop !84

668:                                              ; preds = %655
  %669 = getelementptr inbounds %struct.BMFace, ptr %663, i64 0, i32 3
  %670 = load i32, ptr %669, align 8, !tbaa !34
  %671 = icmp eq i32 %670, 3
  br i1 %671, label %672, label %667

672:                                              ; preds = %668
  %673 = getelementptr inbounds %struct.BMLoop, ptr %657, i64 0, i32 6
  %674 = load ptr, ptr %673, align 8, !tbaa !70
  %675 = getelementptr inbounds %struct.BMLoop, ptr %674, i64 0, i32 2
  %676 = load ptr, ptr %675, align 8, !tbaa !85
  %677 = getelementptr inbounds %struct.BMEdge, ptr %676, i64 0, i32 1
  %678 = load ptr, ptr %677, align 8, !tbaa !59
  %679 = getelementptr %struct.BMFlagLayer, ptr %678, i64 %649
  %680 = getelementptr %struct.BMFlagLayer, ptr %679, i64 -1
  %681 = load i16, ptr %680, align 2, !tbaa !47
  %682 = and i16 %681, 1
  %683 = icmp eq i16 %682, 0
  br i1 %683, label %684, label %667

684:                                              ; preds = %672
  %685 = getelementptr inbounds %struct.BMLoop, ptr %657, i64 0, i32 7
  %686 = load ptr, ptr %685, align 8, !tbaa !77
  %687 = getelementptr inbounds %struct.BMLoop, ptr %686, i64 0, i32 2
  %688 = load ptr, ptr %687, align 8, !tbaa !85
  %689 = getelementptr inbounds %struct.BMEdge, ptr %688, i64 0, i32 1
  %690 = load ptr, ptr %689, align 8, !tbaa !59
  %691 = getelementptr %struct.BMFlagLayer, ptr %690, i64 %649
  %692 = getelementptr %struct.BMFlagLayer, ptr %691, i64 -1
  %693 = load i16, ptr %692, align 2, !tbaa !47
  %694 = and i16 %693, 1
  %695 = icmp eq i16 %694, 0
  br i1 %695, label %696, label %667

696:                                              ; preds = %684
  %697 = getelementptr inbounds %struct.BMLoop, ptr %659, i64 0, i32 6
  %698 = load ptr, ptr %697, align 8, !tbaa !70
  %699 = getelementptr inbounds %struct.BMLoop, ptr %698, i64 0, i32 2
  %700 = load ptr, ptr %699, align 8, !tbaa !85
  %701 = getelementptr inbounds %struct.BMEdge, ptr %700, i64 0, i32 1
  %702 = load ptr, ptr %701, align 8, !tbaa !59
  %703 = getelementptr %struct.BMFlagLayer, ptr %702, i64 %649
  %704 = getelementptr %struct.BMFlagLayer, ptr %703, i64 -1
  %705 = load i16, ptr %704, align 2, !tbaa !47
  %706 = and i16 %705, 1
  %707 = icmp eq i16 %706, 0
  br i1 %707, label %708, label %667

708:                                              ; preds = %696
  %709 = getelementptr inbounds %struct.BMLoop, ptr %659, i64 0, i32 7
  %710 = load ptr, ptr %709, align 8, !tbaa !77
  %711 = getelementptr inbounds %struct.BMLoop, ptr %710, i64 0, i32 2
  %712 = load ptr, ptr %711, align 8, !tbaa !85
  %713 = getelementptr inbounds %struct.BMEdge, ptr %712, i64 0, i32 1
  %714 = load ptr, ptr %713, align 8, !tbaa !59
  %715 = getelementptr %struct.BMFlagLayer, ptr %714, i64 %649
  %716 = getelementptr %struct.BMFlagLayer, ptr %715, i64 -1
  %717 = load i16, ptr %716, align 2, !tbaa !47
  %718 = and i16 %717, 1
  %719 = icmp eq i16 %718, 0
  br i1 %719, label %720, label %667

720:                                              ; preds = %708
  %721 = getelementptr inbounds %struct.BMLoop, ptr %686, i64 0, i32 1
  %722 = load ptr, ptr %721, align 8, !tbaa !69
  %723 = getelementptr inbounds %struct.BMLoop, ptr %710, i64 0, i32 1
  %724 = load ptr, ptr %723, align 8, !tbaa !69
  %725 = icmp eq ptr %722, %724
  br i1 %725, label %667, label %726

726:                                              ; preds = %720
  %727 = call ptr @BM_faces_join_pair(ptr noundef %0, ptr noundef %661, ptr noundef %663, ptr noundef nonnull %638, i8 noundef zeroext 1) #7
  %728 = icmp eq ptr %727, null
  br i1 %728, label %667, label %729

729:                                              ; preds = %726
  %730 = getelementptr inbounds %struct.BMFace, ptr %727, i64 0, i32 1
  %731 = load ptr, ptr %730, align 8, !tbaa !42
  %732 = load i32, ptr %635, align 8, !tbaa !43
  %733 = sext i32 %732 to i64
  %734 = getelementptr %struct.BMFlagLayer, ptr %731, i64 %733
  %735 = getelementptr %struct.BMFlagLayer, ptr %734, i64 -1
  %736 = load i16, ptr %735, align 2, !tbaa !47
  %737 = or i16 %736, 1
  store i16 %737, ptr %735, align 2, !tbaa !47
  br label %667

738:                                              ; preds = %643
  %739 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 1
  call void @BMO_slot_buffer_from_enabled_flag(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %739, ptr noundef nonnull @.str.6, i8 noundef zeroext 8, i16 noundef signext 1) #7
  br label %740

740:                                              ; preds = %90, %738
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %10) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #7
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare zeroext i8 @BMO_slot_bool_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare float @BMO_slot_float_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BMO_iter_new(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @BMO_iter_step(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BM_edge_face_pair(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #3

declare i32 @BLI_sortutil_cmp_float(ptr noundef, ptr noundef) #2

declare ptr @BM_faces_join_pair(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @BMO_slot_buffer_from_enabled_flag(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i16 noundef signext) local_unnamed_addr #2

declare void @bmiter__elem_of_mesh_begin(ptr noundef) #2

declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #2

declare ptr @CustomData_bmesh_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #4

declare float @normal_tri_v3(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare float @angle_normalized_v3v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

declare float @area_tri_v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!34 = !{!35, !40, i64 32}
!35 = !{!"BMFace", !36, i64 0, !37, i64 16, !37, i64 24, !40, i64 32, !38, i64 36, !41, i64 48}
!36 = !{!"BMHeader", !37, i64 0, !40, i64 8, !38, i64 12, !38, i64 13, !38, i64 14}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"int", !38, i64 0}
!41 = !{!"short", !38, i64 0}
!42 = !{!35, !37, i64 16}
!43 = !{!44, !40, i64 128}
!44 = !{!"BMesh", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !38, i64 28, !38, i64 29, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !40, i64 88, !40, i64 92, !40, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !40, i64 128, !37, i64 136, !45, i64 144, !45, i64 344, !45, i64 544, !45, i64 744, !41, i64 944, !40, i64 948, !40, i64 952, !40, i64 956, !46, i64 960, !37, i64 976, !46, i64 984, !37, i64 1000}
!45 = !{!"CustomData", !37, i64 0, !38, i64 8, !40, i64 172, !40, i64 176, !40, i64 180, !37, i64 184, !37, i64 192}
!46 = !{!"ListBase", !37, i64 0, !37, i64 8}
!47 = !{!48, !41, i64 0}
!48 = !{!"BMFlagLayer", !41, i64 0}
!49 = distinct !{!49, !50, !51}
!50 = !{!"llvm.loop.mustprogress"}
!51 = !{!"llvm.loop.unroll.disable"}
!52 = !{!53, !38, i64 60}
!53 = !{!"BMIter", !38, i64 0, !37, i64 40, !37, i64 48, !40, i64 56, !38, i64 60}
!54 = !{!53, !37, i64 40}
!55 = !{!53, !37, i64 48}
!56 = !{!44, !37, i64 40}
!57 = !{!38, !38, i64 0}
!58 = !{!37, !37, i64 0}
!59 = !{!60, !37, i64 16}
!60 = !{!"BMEdge", !36, i64 0, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !61, i64 48, !61, i64 64}
!61 = !{!"BMDiskLink", !37, i64 0, !37, i64 8}
!62 = distinct !{!62, !50, !51}
!63 = !{!60, !37, i64 40}
!64 = !{!65, !37, i64 32}
!65 = !{!"BMLoop", !36, i64 0, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64}
!66 = !{!65, !37, i64 40}
!67 = !{!36, !38, i64 13}
!68 = !{!35, !41, i64 48}
!69 = !{!65, !37, i64 16}
!70 = !{!65, !37, i64 56}
!71 = !{!65, !37, i64 0}
!72 = !{!73, !73, i64 0}
!73 = !{!"float", !38, i64 0}
!74 = !{!35, !37, i64 0}
!75 = !{!76, !37, i64 0}
!76 = !{!"MTexPoly", !37, i64 0, !38, i64 8, !38, i64 9, !41, i64 10, !41, i64 12, !41, i64 14}
!77 = !{!65, !37, i64 64}
!78 = !{!79, !37, i64 8}
!79 = !{!"SortPointerByFloat", !73, i64 0, !37, i64 8}
!80 = !{!79, !73, i64 0}
!81 = distinct !{!81, !50, !51}
!82 = distinct !{!82, !50, !51}
!83 = distinct !{!83, !50, !51}
!84 = distinct !{!84, !50, !51}
!85 = !{!65, !37, i64 24}

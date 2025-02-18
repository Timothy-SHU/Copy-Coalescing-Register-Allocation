; ModuleID = 'blender/source/blender/blenkernel/intern/modifiers_bmesh.c'
source_filename = "blender/source/blender/blenkernel/intern/modifiers_bmesh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.BMAllocTemplate = type { i32, i32, i32, i32 }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.DerivedMesh = type { %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, float, i32, i32, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.MVert = type { [3 x float], [3 x i16], i8, i8 }
%struct.MEdge = type { i32, i32, i8, i8, i16 }
%struct.MLoop = type { i32, i32 }
%struct.MPoly = type { i32, i32, i16, i8, i8 }
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }
%struct.BMLoop = type { %struct.BMHeader, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@CD_MASK_DERIVEDMESH = external local_unnamed_addr constant i64, align 8
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@__func__.DM_to_bmesh_ex = private unnamed_addr constant [15 x i8] c"DM_to_bmesh_ex\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@bm_mesh_allocsize_default = external constant %struct.BMAllocTemplate, align 4

; Function Attrs: nounwind uwtable
define dso_local void @DM_to_bmesh_ex(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = load i32, ptr %1, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %14

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !43
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 3
  %12 = load i32, ptr %11, align 4, !tbaa !44
  %13 = icmp eq i32 %12, 0
  br label %14

14:                                               ; preds = %10, %6, %3
  %15 = phi i1 [ false, %6 ], [ false, %3 ], [ %13, %10 ]
  %16 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 14
  %17 = load i32, ptr %16, align 8, !tbaa !45
  %18 = icmp eq i32 %17, 0
  br i1 %15, label %34, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 24
  %21 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %20, i32 noundef 7) #3
  %22 = icmp ne i8 %21, 0
  %23 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 25
  %24 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %23, i32 noundef 7) #3
  %25 = icmp eq i8 %24, 0
  %26 = select i1 %25, i8 0, i8 2
  %27 = zext i1 %22 to i8
  %28 = or disjoint i8 %26, %27
  %29 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 27
  %30 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %29, i32 noundef 7) #3
  %31 = icmp eq i8 %30, 0
  %32 = select i1 %31, i8 0, i8 8
  %33 = or disjoint i8 %28, %32
  br label %34

34:                                               ; preds = %19, %14
  %35 = phi i8 [ %33, %19 ], [ 0, %14 ]
  %36 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 24
  %37 = load i64, ptr @CD_MASK_DERIVEDMESH, align 8, !tbaa !48
  %38 = tail call zeroext i8 @CustomData_bmesh_merge(ptr noundef %0, ptr noundef nonnull %36, i64 noundef %37, i32 noundef 1, ptr noundef nonnull %1, i8 noundef zeroext 1) #3
  %39 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 1
  %40 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 25
  %41 = tail call zeroext i8 @CustomData_bmesh_merge(ptr noundef nonnull %39, ptr noundef nonnull %40, i64 noundef %37, i32 noundef 1, ptr noundef nonnull %1, i8 noundef zeroext 2) #3
  %42 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 3
  %43 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 26
  %44 = tail call zeroext i8 @CustomData_bmesh_merge(ptr noundef nonnull %42, ptr noundef nonnull %43, i64 noundef %37, i32 noundef 1, ptr noundef nonnull %1, i8 noundef zeroext 4) #3
  %45 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 4
  %46 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 27
  %47 = tail call zeroext i8 @CustomData_bmesh_merge(ptr noundef nonnull %45, ptr noundef nonnull %46, i64 noundef %37, i32 noundef 1, ptr noundef nonnull %1, i8 noundef zeroext 8) #3
  br i1 %15, label %48, label %51

48:                                               ; preds = %34
  %49 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 19
  %50 = load i8, ptr %49, align 8, !tbaa !50
  tail call void @BM_mesh_cd_flag_apply(ptr noundef nonnull %1, i8 noundef zeroext %50) #3
  br label %51

51:                                               ; preds = %48, %34
  %52 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %36, i32 noundef 29) #3
  %53 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %40, i32 noundef 29) #3
  %54 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %40, i32 noundef 30) #3
  %55 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 23
  %56 = load ptr, ptr %55, align 8, !tbaa !51
  %57 = tail call i32 %56(ptr noundef %0) #3
  %58 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 24
  %59 = load ptr, ptr %58, align 8, !tbaa !52
  %60 = tail call i32 %59(ptr noundef %0) #3
  %61 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !53
  %62 = sext i32 %57 to i64
  %63 = shl nsw i64 %62, 3
  %64 = tail call ptr %61(i64 noundef %63, ptr noundef nonnull @__func__.DM_to_bmesh_ex) #3
  %65 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !53
  %66 = sext i32 %60 to i64
  %67 = shl nsw i64 %66, 3
  %68 = tail call ptr %65(i64 noundef %67, ptr noundef nonnull @__func__.DM_to_bmesh_ex) #3
  %69 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 41
  %70 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 31
  %71 = select i1 %18, ptr %70, ptr %69
  %72 = load ptr, ptr %71, align 8, !tbaa !53
  %73 = tail call ptr %72(ptr noundef %0) #3
  %74 = icmp sgt i32 %57, 0
  br i1 %74, label %75, label %123

75:                                               ; preds = %51
  %76 = icmp eq i32 %52, -1
  %77 = sext i32 %52 to i64
  %78 = and i8 %35, 1
  %79 = icmp eq i8 %78, 0
  %80 = zext nneg i32 %57 to i64
  br label %81

81:                                               ; preds = %75, %119
  %82 = phi i64 [ 0, %75 ], [ %120, %119 ]
  %83 = phi ptr [ %73, %75 ], [ %121, %119 ]
  %84 = tail call ptr @BM_vert_create(ptr noundef nonnull %1, ptr noundef %83, ptr noundef null, i32 noundef 4) #3
  %85 = getelementptr inbounds %struct.BMVert, ptr %84, i64 0, i32 3
  %86 = getelementptr inbounds %struct.MVert, ptr %83, i64 0, i32 1
  %87 = load i16, ptr %86, align 2, !tbaa !54
  %88 = sitofp i16 %87 to float
  %89 = fmul float %88, 0x3F00002000000000
  store float %89, ptr %85, align 4, !tbaa !55
  %90 = getelementptr inbounds %struct.MVert, ptr %83, i64 0, i32 1, i64 1
  %91 = load i16, ptr %90, align 2, !tbaa !54
  %92 = sitofp i16 %91 to float
  %93 = fmul float %92, 0x3F00002000000000
  %94 = getelementptr inbounds %struct.BMVert, ptr %84, i64 0, i32 3, i64 1
  store float %93, ptr %94, align 4, !tbaa !55
  %95 = getelementptr inbounds %struct.MVert, ptr %83, i64 0, i32 1, i64 2
  %96 = load i16, ptr %95, align 2, !tbaa !54
  %97 = sitofp i16 %96 to float
  %98 = fmul float %97, 0x3F00002000000000
  %99 = getelementptr inbounds %struct.BMVert, ptr %84, i64 0, i32 3, i64 2
  store float %98, ptr %99, align 4, !tbaa !55
  %100 = getelementptr inbounds %struct.MVert, ptr %83, i64 0, i32 2
  %101 = load i8, ptr %100, align 2, !tbaa !56
  %102 = tail call zeroext i8 @BM_vert_flag_from_mflag(i8 noundef zeroext %101) #3
  %103 = getelementptr inbounds %struct.BMHeader, ptr %84, i64 0, i32 3
  store i8 %102, ptr %103, align 1, !tbaa !58
  %104 = getelementptr inbounds %struct.BMHeader, ptr %84, i64 0, i32 1
  %105 = trunc i64 %82 to i32
  store i32 %105, ptr %104, align 8, !tbaa !61
  %106 = trunc i64 %82 to i32
  tail call void @CustomData_to_bmesh_block(ptr noundef %0, ptr noundef nonnull %36, i32 noundef %106, ptr noundef %84, i8 noundef zeroext 1) #3
  %107 = getelementptr inbounds ptr, ptr %64, i64 %82
  store ptr %84, ptr %107, align 8, !tbaa !53
  br i1 %76, label %115, label %108

108:                                              ; preds = %81
  %109 = getelementptr inbounds %struct.MVert, ptr %83, i64 0, i32 3
  %110 = load i8, ptr %109, align 1, !tbaa !62
  %111 = uitofp i8 %110 to float
  %112 = fdiv float %111, 2.550000e+02
  %113 = load ptr, ptr %84, align 8, !tbaa !63
  %114 = getelementptr inbounds i8, ptr %113, i64 %77
  store float %112, ptr %114, align 4, !tbaa !55
  br label %115

115:                                              ; preds = %108, %81
  br i1 %79, label %119, label %116

116:                                              ; preds = %115
  %117 = load ptr, ptr %84, align 8, !tbaa !63
  %118 = tail call ptr @CustomData_bmesh_get(ptr noundef nonnull %36, ptr noundef %117, i32 noundef 7) #3
  store i32 -1, ptr %118, align 4, !tbaa !64
  br label %119

119:                                              ; preds = %115, %116
  %120 = add nuw nsw i64 %82, 1
  %121 = getelementptr inbounds %struct.MVert, ptr %83, i64 1
  %122 = icmp eq i64 %120, %80
  br i1 %122, label %123, label %81, !llvm.loop !65

123:                                              ; preds = %119, %51
  br i1 %18, label %126, label %124

124:                                              ; preds = %123
  %125 = load ptr, ptr @MEM_freeN, align 8, !tbaa !53
  tail call void %125(ptr noundef %73) #3
  br label %126

126:                                              ; preds = %124, %123
  br i1 %15, label %127, label %131

127:                                              ; preds = %126
  %128 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 7
  %129 = load i8, ptr %128, align 4, !tbaa !68
  %130 = and i8 %129, -2
  store i8 %130, ptr %128, align 4, !tbaa !68
  br label %131

131:                                              ; preds = %127, %126
  %132 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 42
  %133 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 32
  %134 = select i1 %18, ptr %133, ptr %132
  %135 = load ptr, ptr %134, align 8, !tbaa !53
  %136 = tail call ptr %135(ptr noundef %0) #3
  %137 = icmp sgt i32 %60, 0
  br i1 %137, label %138, label %190

138:                                              ; preds = %131
  %139 = icmp eq i32 %53, -1
  %140 = sext i32 %53 to i64
  %141 = icmp eq i32 %54, -1
  %142 = sext i32 %54 to i64
  %143 = and i8 %35, 2
  %144 = icmp eq i8 %143, 0
  %145 = zext nneg i32 %60 to i64
  br label %146

146:                                              ; preds = %138, %186
  %147 = phi i64 [ 0, %138 ], [ %187, %186 ]
  %148 = phi ptr [ %136, %138 ], [ %188, %186 ]
  %149 = load i32, ptr %148, align 4, !tbaa !69
  %150 = zext i32 %149 to i64
  %151 = getelementptr inbounds ptr, ptr %64, i64 %150
  %152 = load ptr, ptr %151, align 8, !tbaa !53
  %153 = getelementptr inbounds %struct.MEdge, ptr %148, i64 0, i32 1
  %154 = load i32, ptr %153, align 4, !tbaa !71
  %155 = zext i32 %154 to i64
  %156 = getelementptr inbounds ptr, ptr %64, i64 %155
  %157 = load ptr, ptr %156, align 8, !tbaa !53
  %158 = tail call ptr @BM_edge_create(ptr noundef nonnull %1, ptr noundef %152, ptr noundef %157, ptr noundef null, i32 noundef 4) #3
  %159 = getelementptr inbounds %struct.MEdge, ptr %148, i64 0, i32 4
  %160 = load i16, ptr %159, align 2, !tbaa !72
  %161 = tail call zeroext i8 @BM_edge_flag_from_mflag(i16 noundef signext %160) #3
  %162 = getelementptr inbounds %struct.BMHeader, ptr %158, i64 0, i32 3
  store i8 %161, ptr %162, align 1, !tbaa !73
  %163 = getelementptr inbounds %struct.BMHeader, ptr %158, i64 0, i32 1
  %164 = trunc i64 %147 to i32
  store i32 %164, ptr %163, align 8, !tbaa !61
  %165 = trunc i64 %147 to i32
  tail call void @CustomData_to_bmesh_block(ptr noundef nonnull %39, ptr noundef nonnull %40, i32 noundef %165, ptr noundef %158, i8 noundef zeroext 1) #3
  %166 = getelementptr inbounds ptr, ptr %68, i64 %147
  store ptr %158, ptr %166, align 8, !tbaa !53
  br i1 %139, label %174, label %167

167:                                              ; preds = %146
  %168 = getelementptr inbounds %struct.MEdge, ptr %148, i64 0, i32 3
  %169 = load i8, ptr %168, align 1, !tbaa !76
  %170 = uitofp i8 %169 to float
  %171 = fdiv float %170, 2.550000e+02
  %172 = load ptr, ptr %158, align 8, !tbaa !77
  %173 = getelementptr inbounds i8, ptr %172, i64 %140
  store float %171, ptr %173, align 4, !tbaa !55
  br label %174

174:                                              ; preds = %167, %146
  br i1 %141, label %182, label %175

175:                                              ; preds = %174
  %176 = getelementptr inbounds %struct.MEdge, ptr %148, i64 0, i32 2
  %177 = load i8, ptr %176, align 4, !tbaa !78
  %178 = uitofp i8 %177 to float
  %179 = fdiv float %178, 2.550000e+02
  %180 = load ptr, ptr %158, align 8, !tbaa !77
  %181 = getelementptr inbounds i8, ptr %180, i64 %142
  store float %179, ptr %181, align 4, !tbaa !55
  br label %182

182:                                              ; preds = %175, %174
  br i1 %144, label %186, label %183

183:                                              ; preds = %182
  %184 = load ptr, ptr %158, align 8, !tbaa !77
  %185 = tail call ptr @CustomData_bmesh_get(ptr noundef nonnull %40, ptr noundef %184, i32 noundef 7) #3
  store i32 -1, ptr %185, align 4, !tbaa !64
  br label %186

186:                                              ; preds = %182, %183
  %187 = add nuw nsw i64 %147, 1
  %188 = getelementptr inbounds %struct.MEdge, ptr %148, i64 1
  %189 = icmp eq i64 %187, %145
  br i1 %189, label %190, label %146, !llvm.loop !79

190:                                              ; preds = %186, %131
  br i1 %18, label %193, label %191

191:                                              ; preds = %190
  %192 = load ptr, ptr @MEM_freeN, align 8, !tbaa !53
  tail call void %192(ptr noundef %136) #3
  br label %193

193:                                              ; preds = %191, %190
  br i1 %15, label %194, label %198

194:                                              ; preds = %193
  %195 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 7
  %196 = load i8, ptr %195, align 4, !tbaa !68
  %197 = and i8 %196, -3
  store i8 %197, ptr %195, align 4, !tbaa !68
  br label %198

198:                                              ; preds = %194, %193
  %199 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 35
  %200 = load ptr, ptr %199, align 8, !tbaa !80
  %201 = tail call ptr %200(ptr noundef %0) #3
  %202 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 34
  %203 = load ptr, ptr %202, align 8, !tbaa !81
  %204 = tail call ptr %203(ptr noundef %0) #3
  %205 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 16
  %206 = load i32, ptr %205, align 8, !tbaa !82
  %207 = and i32 %206, 4
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %211

209:                                              ; preds = %198
  %210 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %45, i32 noundef 8) #3
  br label %211

211:                                              ; preds = %198, %209
  %212 = phi ptr [ %210, %209 ], [ null, %198 ]
  %213 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 9
  %214 = load i32, ptr %213, align 8, !tbaa !83
  %215 = icmp sgt i32 %214, 0
  br i1 %215, label %216, label %276

216:                                              ; preds = %211
  %217 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 3
  %218 = icmp eq i8 %2, 0
  %219 = icmp eq ptr %212, null
  %220 = and i8 %35, 8
  %221 = icmp eq i8 %220, 0
  br label %222

222:                                              ; preds = %216, %270
  %223 = phi i64 [ 0, %216 ], [ %271, %270 ]
  %224 = phi ptr [ %201, %216 ], [ %272, %270 ]
  %225 = load i32, ptr %224, align 4, !tbaa !84
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.MLoop, ptr %204, i64 %226
  %228 = tail call fastcc ptr @bm_face_create_from_mpoly(ptr noundef nonnull %224, ptr noundef %227, ptr noundef nonnull %1, ptr noundef %64, ptr noundef %68)
  %229 = icmp eq ptr %228, null
  br i1 %229, label %270, label %230

230:                                              ; preds = %222
  %231 = getelementptr inbounds %struct.MPoly, ptr %224, i64 0, i32 3
  %232 = load i8, ptr %231, align 2, !tbaa !86
  %233 = tail call zeroext i8 @BM_face_flag_from_mflag(i8 noundef zeroext %232) #3
  %234 = getelementptr inbounds %struct.BMHeader, ptr %228, i64 0, i32 3
  store i8 %233, ptr %234, align 1, !tbaa !87
  %235 = load i32, ptr %217, align 4, !tbaa !44
  %236 = add nsw i32 %235, -1
  %237 = getelementptr inbounds %struct.BMHeader, ptr %228, i64 0, i32 1
  store i32 %236, ptr %237, align 8, !tbaa !61
  %238 = getelementptr inbounds %struct.MPoly, ptr %224, i64 0, i32 2
  %239 = load i16, ptr %238, align 4, !tbaa !89
  %240 = getelementptr inbounds %struct.BMFace, ptr %228, i64 0, i32 5
  store i16 %239, ptr %240, align 8, !tbaa !90
  %241 = load i32, ptr %224, align 4, !tbaa !84
  %242 = getelementptr inbounds %struct.BMFace, ptr %228, i64 0, i32 2
  %243 = load ptr, ptr %242, align 8, !tbaa !91
  br label %244

244:                                              ; preds = %244, %230
  %245 = phi i32 [ %241, %230 ], [ %247, %244 ]
  %246 = phi ptr [ %243, %230 ], [ %250, %244 ]
  tail call void @CustomData_to_bmesh_block(ptr noundef nonnull %42, ptr noundef nonnull %43, i32 noundef %245, ptr noundef %246, i8 noundef zeroext 1) #3
  %247 = add nsw i32 %245, 1
  %248 = getelementptr inbounds %struct.BMHeader, ptr %246, i64 0, i32 1
  store i32 %245, ptr %248, align 8, !tbaa !61
  %249 = getelementptr inbounds %struct.BMLoop, ptr %246, i64 0, i32 6
  %250 = load ptr, ptr %249, align 8, !tbaa !92
  %251 = icmp eq ptr %250, %243
  br i1 %251, label %252, label %244, !llvm.loop !94

252:                                              ; preds = %244
  %253 = trunc i64 %223 to i32
  tail call void @CustomData_to_bmesh_block(ptr noundef nonnull %45, ptr noundef nonnull %46, i32 noundef %253, ptr noundef nonnull %228, i8 noundef zeroext 1) #3
  br i1 %218, label %266, label %254

254:                                              ; preds = %252
  br i1 %219, label %265, label %255

255:                                              ; preds = %254
  %256 = getelementptr inbounds %struct.BMFace, ptr %228, i64 0, i32 4
  %257 = getelementptr inbounds [3 x float], ptr %212, i64 %223
  %258 = load float, ptr %257, align 4, !tbaa !55
  store float %258, ptr %256, align 4, !tbaa !55
  %259 = getelementptr inbounds float, ptr %257, i64 1
  %260 = load float, ptr %259, align 4, !tbaa !55
  %261 = getelementptr inbounds %struct.BMFace, ptr %228, i64 0, i32 4, i64 1
  store float %260, ptr %261, align 4, !tbaa !55
  %262 = getelementptr inbounds float, ptr %257, i64 2
  %263 = load float, ptr %262, align 4, !tbaa !55
  %264 = getelementptr inbounds %struct.BMFace, ptr %228, i64 0, i32 4, i64 2
  store float %263, ptr %264, align 4, !tbaa !55
  br label %266

265:                                              ; preds = %254
  tail call void @BM_face_normal_update(ptr noundef nonnull %228) #3
  br label %266

266:                                              ; preds = %255, %265, %252
  br i1 %221, label %270, label %267

267:                                              ; preds = %266
  %268 = load ptr, ptr %228, align 8, !tbaa !95
  %269 = tail call ptr @CustomData_bmesh_get(ptr noundef nonnull %46, ptr noundef %268, i32 noundef 7) #3
  store i32 -1, ptr %269, align 4, !tbaa !64
  br label %270

270:                                              ; preds = %266, %267, %222
  %271 = add nuw nsw i64 %223, 1
  %272 = getelementptr inbounds %struct.MPoly, ptr %224, i64 1
  %273 = load i32, ptr %213, align 8, !tbaa !83
  %274 = sext i32 %273 to i64
  %275 = icmp slt i64 %271, %274
  br i1 %275, label %222, label %276, !llvm.loop !96

276:                                              ; preds = %270, %211
  br i1 %15, label %277, label %281

277:                                              ; preds = %276
  %278 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 7
  %279 = load i8, ptr %278, align 4, !tbaa !68
  %280 = and i8 %279, -13
  store i8 %280, ptr %278, align 4, !tbaa !68
  br label %281

281:                                              ; preds = %277, %276
  %282 = load ptr, ptr @MEM_freeN, align 8, !tbaa !53
  tail call void %282(ptr noundef %64) #3
  %283 = load ptr, ptr @MEM_freeN, align 8, !tbaa !53
  tail call void %283(ptr noundef %68) #3
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare zeroext i8 @CustomData_has_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i8 @CustomData_bmesh_merge(ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @BM_mesh_cd_flag_apply(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare i32 @CustomData_get_offset(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @BM_vert_create(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i8 @BM_vert_flag_from_mflag(i8 noundef zeroext) local_unnamed_addr #2

declare void @CustomData_to_bmesh_block(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare ptr @CustomData_bmesh_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @BM_edge_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i8 @BM_edge_flag_from_mflag(i16 noundef signext) local_unnamed_addr #2

declare ptr @CustomData_get_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @bm_face_create_from_mpoly(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.MPoly, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !97
  %8 = sext i32 %7 to i64
  %9 = shl nsw i64 %8, 3
  %10 = alloca i8, i64 %9, align 16
  %11 = alloca i8, i64 %9, align 16
  %12 = icmp sgt i32 %7, 0
  br i1 %12, label %13, label %32

13:                                               ; preds = %5
  %14 = zext nneg i32 %7 to i64
  br label %15

15:                                               ; preds = %13, %15
  %16 = phi i64 [ 0, %13 ], [ %29, %15 ]
  %17 = phi ptr [ %1, %13 ], [ %30, %15 ]
  %18 = load i32, ptr %17, align 4, !tbaa !98
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds ptr, ptr %3, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !53
  %22 = getelementptr inbounds ptr, ptr %10, i64 %16
  store ptr %21, ptr %22, align 8, !tbaa !53
  %23 = getelementptr inbounds %struct.MLoop, ptr %17, i64 0, i32 1
  %24 = load i32, ptr %23, align 4, !tbaa !100
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds ptr, ptr %4, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !53
  %28 = getelementptr inbounds ptr, ptr %11, i64 %16
  store ptr %27, ptr %28, align 8, !tbaa !53
  %29 = add nuw nsw i64 %16, 1
  %30 = getelementptr inbounds %struct.MLoop, ptr %17, i64 1
  %31 = icmp eq i64 %29, %14
  br i1 %31, label %32, label %15, !llvm.loop !101

32:                                               ; preds = %15, %5
  %33 = call ptr @BM_face_create(ptr noundef %2, ptr noundef nonnull %10, ptr noundef nonnull %11, i32 noundef %7, ptr noundef null, i32 noundef 4) #3
  ret ptr %33
}

declare zeroext i8 @BM_face_flag_from_mflag(i8 noundef zeroext) local_unnamed_addr #2

declare void @BM_face_normal_update(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @DM_to_editbmesh(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %3
  %6 = load ptr, ptr %1, align 8, !tbaa !102
  br label %9

7:                                                ; preds = %3
  %8 = tail call ptr @BM_mesh_create(ptr noundef nonnull @bm_mesh_allocsize_default) #3
  br label %9

9:                                                ; preds = %7, %5
  %10 = phi ptr [ %6, %5 ], [ %8, %7 ]
  tail call void @DM_to_bmesh_ex(ptr noundef %0, ptr noundef %10, i8 noundef zeroext %2)
  br i1 %4, label %11, label %13

11:                                               ; preds = %9
  %12 = tail call ptr @BKE_editmesh_create(ptr noundef %10, i8 noundef zeroext %2) #3
  br label %16

13:                                               ; preds = %9
  %14 = icmp eq i8 %2, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %13
  tail call void @BKE_editmesh_tessface_calc(ptr noundef nonnull %1) #3
  br label %16

16:                                               ; preds = %13, %15, %11
  %17 = phi ptr [ %1, %15 ], [ %1, %13 ], [ %12, %11 ]
  ret ptr %17
}

declare ptr @BM_mesh_create(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_editmesh_create(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @BKE_editmesh_tessface_calc(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @DM_to_bmesh(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMAllocTemplate, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #3
  %4 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 23
  %5 = load ptr, ptr %4, align 8, !tbaa !51
  %6 = tail call i32 %5(ptr noundef %0) #3
  store i32 %6, ptr %3, align 4, !tbaa !104
  %7 = getelementptr inbounds %struct.BMAllocTemplate, ptr %3, i64 0, i32 1
  %8 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 24
  %9 = load ptr, ptr %8, align 8, !tbaa !52
  %10 = tail call i32 %9(ptr noundef %0) #3
  store i32 %10, ptr %7, align 4, !tbaa !106
  %11 = getelementptr inbounds %struct.BMAllocTemplate, ptr %3, i64 0, i32 2
  %12 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 26
  %13 = load ptr, ptr %12, align 8, !tbaa !107
  %14 = tail call i32 %13(ptr noundef %0) #3
  store i32 %14, ptr %11, align 4, !tbaa !108
  %15 = getelementptr inbounds %struct.BMAllocTemplate, ptr %3, i64 0, i32 3
  %16 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 27
  %17 = load ptr, ptr %16, align 8, !tbaa !109
  %18 = tail call i32 %17(ptr noundef %0) #3
  store i32 %18, ptr %15, align 4, !tbaa !110
  %19 = call ptr @BM_mesh_create(ptr noundef nonnull %3) #3
  call void @DM_to_bmesh_ex(ptr noundef %0, ptr noundef %19, i8 noundef zeroext %1)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #3
  ret ptr %19
}

declare ptr @BM_face_create(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
!35 = !{!"BMesh", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !37, i64 28, !37, i64 29, !39, i64 32, !39, i64 40, !39, i64 48, !39, i64 56, !39, i64 64, !39, i64 72, !39, i64 80, !36, i64 88, !36, i64 92, !36, i64 96, !39, i64 104, !39, i64 112, !39, i64 120, !36, i64 128, !39, i64 136, !40, i64 144, !40, i64 344, !40, i64 544, !40, i64 744, !41, i64 944, !36, i64 948, !36, i64 952, !36, i64 956, !42, i64 960, !39, i64 976, !42, i64 984, !39, i64 1000}
!36 = !{!"int", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"any pointer", !37, i64 0}
!40 = !{!"CustomData", !39, i64 0, !37, i64 8, !36, i64 172, !36, i64 176, !36, i64 180, !39, i64 184, !39, i64 192}
!41 = !{!"short", !37, i64 0}
!42 = !{!"ListBase", !39, i64 0, !39, i64 8}
!43 = !{!35, !36, i64 4}
!44 = !{!35, !36, i64 12}
!45 = !{!46, !36, i64 1048}
!46 = !{!"DerivedMesh", !40, i64 0, !40, i64 200, !40, i64 400, !40, i64 600, !40, i64 800, !36, i64 1000, !36, i64 1004, !36, i64 1008, !36, i64 1012, !36, i64 1016, !36, i64 1020, !36, i64 1024, !39, i64 1032, !39, i64 1040, !36, i64 1048, !47, i64 1052, !36, i64 1056, !36, i64 1060, !39, i64 1064, !37, i64 1072, !39, i64 1080, !39, i64 1088, !39, i64 1096, !39, i64 1104, !39, i64 1112, !39, i64 1120, !39, i64 1128, !39, i64 1136, !39, i64 1144, !39, i64 1152, !39, i64 1160, !39, i64 1168, !39, i64 1176, !39, i64 1184, !39, i64 1192, !39, i64 1200, !39, i64 1208, !39, i64 1216, !39, i64 1224, !39, i64 1232, !39, i64 1240, !39, i64 1248, !39, i64 1256, !39, i64 1264, !39, i64 1272, !39, i64 1280, !39, i64 1288, !39, i64 1296, !39, i64 1304, !39, i64 1312, !39, i64 1320, !39, i64 1328, !39, i64 1336, !39, i64 1344, !39, i64 1352, !39, i64 1360, !39, i64 1368, !39, i64 1376, !39, i64 1384, !39, i64 1392, !39, i64 1400, !39, i64 1408, !39, i64 1416, !39, i64 1424, !39, i64 1432, !39, i64 1440, !39, i64 1448, !39, i64 1456, !39, i64 1464, !39, i64 1472, !39, i64 1480, !39, i64 1488, !39, i64 1496, !39, i64 1504, !39, i64 1512, !39, i64 1520, !39, i64 1528, !39, i64 1536, !39, i64 1544, !39, i64 1552, !39, i64 1560, !39, i64 1568, !39, i64 1576, !39, i64 1584, !39, i64 1592, !39, i64 1600, !39, i64 1608, !39, i64 1616, !39, i64 1624, !39, i64 1632, !39, i64 1640, !39, i64 1648, !39, i64 1656, !39, i64 1664, !39, i64 1672, !39, i64 1680}
!47 = !{!"float", !37, i64 0}
!48 = !{!49, !49, i64 0}
!49 = !{!"long", !37, i64 0}
!50 = !{!46, !37, i64 1072}
!51 = !{!46, !39, i64 1104}
!52 = !{!46, !39, i64 1112}
!53 = !{!39, !39, i64 0}
!54 = !{!41, !41, i64 0}
!55 = !{!47, !47, i64 0}
!56 = !{!57, !37, i64 18}
!57 = !{!"MVert", !37, i64 0, !37, i64 12, !37, i64 18, !37, i64 19}
!58 = !{!59, !37, i64 13}
!59 = !{!"BMVert", !60, i64 0, !39, i64 16, !37, i64 24, !37, i64 36, !39, i64 48}
!60 = !{!"BMHeader", !39, i64 0, !36, i64 8, !37, i64 12, !37, i64 13, !37, i64 14}
!61 = !{!60, !36, i64 8}
!62 = !{!57, !37, i64 19}
!63 = !{!59, !39, i64 0}
!64 = !{!36, !36, i64 0}
!65 = distinct !{!65, !66, !67}
!66 = !{!"llvm.loop.mustprogress"}
!67 = !{!"llvm.loop.unroll.disable"}
!68 = !{!35, !37, i64 28}
!69 = !{!70, !36, i64 0}
!70 = !{!"MEdge", !36, i64 0, !36, i64 4, !37, i64 8, !37, i64 9, !41, i64 10}
!71 = !{!70, !36, i64 4}
!72 = !{!70, !41, i64 10}
!73 = !{!74, !37, i64 13}
!74 = !{!"BMEdge", !60, i64 0, !39, i64 16, !39, i64 24, !39, i64 32, !39, i64 40, !75, i64 48, !75, i64 64}
!75 = !{!"BMDiskLink", !39, i64 0, !39, i64 8}
!76 = !{!70, !37, i64 9}
!77 = !{!74, !39, i64 0}
!78 = !{!70, !37, i64 8}
!79 = distinct !{!79, !66, !67}
!80 = !{!46, !39, i64 1200}
!81 = !{!46, !39, i64 1192}
!82 = !{!46, !36, i64 1056}
!83 = !{!46, !36, i64 1016}
!84 = !{!85, !36, i64 0}
!85 = !{!"MPoly", !36, i64 0, !36, i64 4, !41, i64 8, !37, i64 10, !37, i64 11}
!86 = !{!85, !37, i64 10}
!87 = !{!88, !37, i64 13}
!88 = !{!"BMFace", !60, i64 0, !39, i64 16, !39, i64 24, !36, i64 32, !37, i64 36, !41, i64 48}
!89 = !{!85, !41, i64 8}
!90 = !{!88, !41, i64 48}
!91 = !{!88, !39, i64 24}
!92 = !{!93, !39, i64 56}
!93 = !{!"BMLoop", !60, i64 0, !39, i64 16, !39, i64 24, !39, i64 32, !39, i64 40, !39, i64 48, !39, i64 56, !39, i64 64}
!94 = distinct !{!94, !66, !67}
!95 = !{!88, !39, i64 0}
!96 = distinct !{!96, !66, !67}
!97 = !{!85, !36, i64 4}
!98 = !{!99, !36, i64 0}
!99 = !{!"MLoop", !36, i64 0, !36, i64 4}
!100 = !{!99, !36, i64 4}
!101 = distinct !{!101, !66, !67}
!102 = !{!103, !39, i64 0}
!103 = !{!"BMEditMesh", !39, i64 0, !39, i64 8, !36, i64 16, !39, i64 24, !36, i64 32, !39, i64 40, !39, i64 48, !49, i64 56, !39, i64 64, !36, i64 72, !39, i64 80, !36, i64 88, !41, i64 92, !41, i64 94, !39, i64 96, !36, i64 104}
!104 = !{!105, !36, i64 0}
!105 = !{!"BMAllocTemplate", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12}
!106 = !{!105, !36, i64 4}
!107 = !{!46, !39, i64 1128}
!108 = !{!105, !36, i64 8}
!109 = !{!46, !39, i64 1136}
!110 = !{!105, !36, i64 12}

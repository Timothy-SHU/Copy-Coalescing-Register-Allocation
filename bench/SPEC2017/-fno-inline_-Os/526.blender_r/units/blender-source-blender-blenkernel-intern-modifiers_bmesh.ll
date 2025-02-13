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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @DM_to_bmesh_ex(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = load i32, ptr %1, align 8, !tbaa !34
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !43
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %6, %3
  %11 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 14
  %12 = load i32, ptr %11, align 8, !tbaa !44
  %13 = icmp eq i32 %12, 0
  br label %21

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 3
  %16 = load i32, ptr %15, align 4, !tbaa !47
  %17 = icmp eq i32 %16, 0
  %18 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 14
  %19 = load i32, ptr %18, align 8, !tbaa !44
  %20 = icmp eq i32 %19, 0
  br i1 %17, label %37, label %21

21:                                               ; preds = %10, %14
  %22 = phi i1 [ %13, %10 ], [ %20, %14 ]
  %23 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 24
  %24 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %23, i32 noundef 7) #5
  %25 = icmp ne i8 %24, 0
  %26 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 25
  %27 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %26, i32 noundef 7) #5
  %28 = icmp eq i8 %27, 0
  %29 = select i1 %28, i8 0, i8 2
  %30 = zext i1 %25 to i8
  %31 = or disjoint i8 %29, %30
  %32 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 27
  %33 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %32, i32 noundef 7) #5
  %34 = icmp eq i8 %33, 0
  %35 = select i1 %34, i8 0, i8 8
  %36 = or disjoint i8 %31, %35
  br label %37

37:                                               ; preds = %21, %14
  %38 = phi i1 [ %22, %21 ], [ %20, %14 ]
  %39 = phi i1 [ false, %21 ], [ true, %14 ]
  %40 = phi i8 [ %36, %21 ], [ 0, %14 ]
  %41 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 24
  %42 = load i64, ptr @CD_MASK_DERIVEDMESH, align 8, !tbaa !48
  %43 = tail call zeroext i8 @CustomData_bmesh_merge(ptr noundef nonnull %0, ptr noundef nonnull %41, i64 noundef %42, i32 noundef 1, ptr noundef nonnull %1, i8 noundef zeroext 1) #5
  %44 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 1
  %45 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 25
  %46 = tail call zeroext i8 @CustomData_bmesh_merge(ptr noundef nonnull %44, ptr noundef nonnull %45, i64 noundef %42, i32 noundef 1, ptr noundef nonnull %1, i8 noundef zeroext 2) #5
  %47 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 3
  %48 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 26
  %49 = tail call zeroext i8 @CustomData_bmesh_merge(ptr noundef nonnull %47, ptr noundef nonnull %48, i64 noundef %42, i32 noundef 1, ptr noundef nonnull %1, i8 noundef zeroext 4) #5
  %50 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 4
  %51 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 27
  %52 = tail call zeroext i8 @CustomData_bmesh_merge(ptr noundef nonnull %50, ptr noundef nonnull %51, i64 noundef %42, i32 noundef 1, ptr noundef nonnull %1, i8 noundef zeroext 8) #5
  br i1 %39, label %53, label %56

53:                                               ; preds = %37
  %54 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 19
  %55 = load i8, ptr %54, align 8, !tbaa !50
  tail call void @BM_mesh_cd_flag_apply(ptr noundef nonnull %1, i8 noundef zeroext %55) #5
  br label %56

56:                                               ; preds = %53, %37
  %57 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %41, i32 noundef 29) #5
  %58 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %45, i32 noundef 29) #5
  %59 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %45, i32 noundef 30) #5
  %60 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 23
  %61 = load ptr, ptr %60, align 8, !tbaa !51
  %62 = tail call i32 %61(ptr noundef nonnull %0) #5
  %63 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 24
  %64 = load ptr, ptr %63, align 8, !tbaa !52
  %65 = tail call i32 %64(ptr noundef nonnull %0) #5
  %66 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !53
  %67 = sext i32 %62 to i64
  %68 = shl nsw i64 %67, 3
  %69 = tail call ptr %66(i64 noundef %68, ptr noundef nonnull @__func__.DM_to_bmesh_ex) #5
  %70 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !53
  %71 = sext i32 %65 to i64
  %72 = shl nsw i64 %71, 3
  %73 = tail call ptr %70(i64 noundef %72, ptr noundef nonnull @__func__.DM_to_bmesh_ex) #5
  %74 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 41
  %75 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 31
  %76 = select i1 %38, ptr %75, ptr %74
  %77 = load ptr, ptr %76, align 8, !tbaa !53
  %78 = tail call ptr %77(ptr noundef nonnull %0) #5
  %79 = icmp sgt i32 %62, 0
  br i1 %79, label %80, label %113

80:                                               ; preds = %56
  %81 = icmp eq i32 %57, -1
  %82 = sext i32 %57 to i64
  %83 = and i8 %40, 1
  %84 = icmp eq i8 %83, 0
  %85 = zext nneg i32 %62 to i64
  br label %86

86:                                               ; preds = %80, %109
  %87 = phi i64 [ 0, %80 ], [ %110, %109 ]
  %88 = phi ptr [ %78, %80 ], [ %111, %109 ]
  %89 = tail call ptr @BM_vert_create(ptr noundef nonnull %1, ptr noundef %88, ptr noundef null, i32 noundef 4) #5
  %90 = getelementptr inbounds %struct.BMVert, ptr %89, i64 0, i32 3
  %91 = getelementptr inbounds %struct.MVert, ptr %88, i64 0, i32 1
  tail call fastcc void @normal_short_to_float_v3(ptr noundef nonnull %90, ptr noundef nonnull %91) #6
  %92 = getelementptr inbounds %struct.MVert, ptr %88, i64 0, i32 2
  %93 = load i8, ptr %92, align 2, !tbaa !54
  %94 = tail call zeroext i8 @BM_vert_flag_from_mflag(i8 noundef zeroext %93) #5
  %95 = getelementptr inbounds %struct.BMHeader, ptr %89, i64 0, i32 3
  store i8 %94, ptr %95, align 1, !tbaa !56
  %96 = trunc i64 %87 to i32
  tail call fastcc void @_bm_elem_index_set(ptr noundef %89, i32 noundef %96) #6
  tail call void @CustomData_to_bmesh_block(ptr noundef %0, ptr noundef nonnull %41, i32 noundef %96, ptr noundef %89, i8 noundef zeroext 1) #5
  %97 = getelementptr inbounds ptr, ptr %69, i64 %87
  store ptr %89, ptr %97, align 8, !tbaa !53
  br i1 %81, label %105, label %98

98:                                               ; preds = %86
  %99 = getelementptr inbounds %struct.MVert, ptr %88, i64 0, i32 3
  %100 = load i8, ptr %99, align 1, !tbaa !59
  %101 = uitofp i8 %100 to float
  %102 = fdiv float %101, 2.550000e+02
  %103 = load ptr, ptr %89, align 8, !tbaa !60
  %104 = getelementptr inbounds i8, ptr %103, i64 %82
  store float %102, ptr %104, align 4, !tbaa !61
  br label %105

105:                                              ; preds = %98, %86
  br i1 %84, label %109, label %106

106:                                              ; preds = %105
  %107 = load ptr, ptr %89, align 8, !tbaa !60
  %108 = tail call ptr @CustomData_bmesh_get(ptr noundef nonnull %41, ptr noundef %107, i32 noundef 7) #5
  store i32 -1, ptr %108, align 4, !tbaa !62
  br label %109

109:                                              ; preds = %105, %106
  %110 = add nuw nsw i64 %87, 1
  %111 = getelementptr inbounds %struct.MVert, ptr %88, i64 1
  %112 = icmp eq i64 %110, %85
  br i1 %112, label %113, label %86, !llvm.loop !63

113:                                              ; preds = %109, %56
  br i1 %38, label %116, label %114

114:                                              ; preds = %113
  %115 = load ptr, ptr @MEM_freeN, align 8, !tbaa !53
  tail call void %115(ptr noundef %78) #5
  br label %116

116:                                              ; preds = %114, %113
  br i1 %39, label %117, label %121

117:                                              ; preds = %116
  %118 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 7
  %119 = load i8, ptr %118, align 4, !tbaa !65
  %120 = and i8 %119, -2
  store i8 %120, ptr %118, align 4, !tbaa !65
  br label %121

121:                                              ; preds = %117, %116
  %122 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 42
  %123 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 32
  %124 = select i1 %38, ptr %123, ptr %122
  %125 = load ptr, ptr %124, align 8, !tbaa !53
  %126 = tail call ptr %125(ptr noundef %0) #5
  %127 = icmp sgt i32 %65, 0
  br i1 %127, label %128, label %178

128:                                              ; preds = %121
  %129 = icmp eq i32 %58, -1
  %130 = sext i32 %58 to i64
  %131 = icmp eq i32 %59, -1
  %132 = sext i32 %59 to i64
  %133 = and i8 %40, 2
  %134 = icmp eq i8 %133, 0
  %135 = zext nneg i32 %65 to i64
  br label %136

136:                                              ; preds = %128, %174
  %137 = phi i64 [ 0, %128 ], [ %175, %174 ]
  %138 = phi ptr [ %126, %128 ], [ %176, %174 ]
  %139 = load i32, ptr %138, align 4, !tbaa !66
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds ptr, ptr %69, i64 %140
  %142 = load ptr, ptr %141, align 8, !tbaa !53
  %143 = getelementptr inbounds %struct.MEdge, ptr %138, i64 0, i32 1
  %144 = load i32, ptr %143, align 4, !tbaa !68
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds ptr, ptr %69, i64 %145
  %147 = load ptr, ptr %146, align 8, !tbaa !53
  %148 = tail call ptr @BM_edge_create(ptr noundef nonnull %1, ptr noundef %142, ptr noundef %147, ptr noundef null, i32 noundef 4) #5
  %149 = getelementptr inbounds %struct.MEdge, ptr %138, i64 0, i32 4
  %150 = load i16, ptr %149, align 2, !tbaa !69
  %151 = tail call zeroext i8 @BM_edge_flag_from_mflag(i16 noundef signext %150) #5
  %152 = getelementptr inbounds %struct.BMHeader, ptr %148, i64 0, i32 3
  store i8 %151, ptr %152, align 1, !tbaa !70
  %153 = trunc i64 %137 to i32
  tail call fastcc void @_bm_elem_index_set(ptr noundef %148, i32 noundef %153) #6
  tail call void @CustomData_to_bmesh_block(ptr noundef nonnull %44, ptr noundef nonnull %45, i32 noundef %153, ptr noundef %148, i8 noundef zeroext 1) #5
  %154 = getelementptr inbounds ptr, ptr %73, i64 %137
  store ptr %148, ptr %154, align 8, !tbaa !53
  br i1 %129, label %162, label %155

155:                                              ; preds = %136
  %156 = getelementptr inbounds %struct.MEdge, ptr %138, i64 0, i32 3
  %157 = load i8, ptr %156, align 1, !tbaa !73
  %158 = uitofp i8 %157 to float
  %159 = fdiv float %158, 2.550000e+02
  %160 = load ptr, ptr %148, align 8, !tbaa !74
  %161 = getelementptr inbounds i8, ptr %160, i64 %130
  store float %159, ptr %161, align 4, !tbaa !61
  br label %162

162:                                              ; preds = %155, %136
  br i1 %131, label %170, label %163

163:                                              ; preds = %162
  %164 = getelementptr inbounds %struct.MEdge, ptr %138, i64 0, i32 2
  %165 = load i8, ptr %164, align 4, !tbaa !75
  %166 = uitofp i8 %165 to float
  %167 = fdiv float %166, 2.550000e+02
  %168 = load ptr, ptr %148, align 8, !tbaa !74
  %169 = getelementptr inbounds i8, ptr %168, i64 %132
  store float %167, ptr %169, align 4, !tbaa !61
  br label %170

170:                                              ; preds = %163, %162
  br i1 %134, label %174, label %171

171:                                              ; preds = %170
  %172 = load ptr, ptr %148, align 8, !tbaa !74
  %173 = tail call ptr @CustomData_bmesh_get(ptr noundef nonnull %45, ptr noundef %172, i32 noundef 7) #5
  store i32 -1, ptr %173, align 4, !tbaa !62
  br label %174

174:                                              ; preds = %170, %171
  %175 = add nuw nsw i64 %137, 1
  %176 = getelementptr inbounds %struct.MEdge, ptr %138, i64 1
  %177 = icmp eq i64 %175, %135
  br i1 %177, label %178, label %136, !llvm.loop !76

178:                                              ; preds = %174, %121
  br i1 %38, label %181, label %179

179:                                              ; preds = %178
  %180 = load ptr, ptr @MEM_freeN, align 8, !tbaa !53
  tail call void %180(ptr noundef %126) #5
  br label %181

181:                                              ; preds = %179, %178
  br i1 %39, label %182, label %186

182:                                              ; preds = %181
  %183 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 7
  %184 = load i8, ptr %183, align 4, !tbaa !65
  %185 = and i8 %184, -3
  store i8 %185, ptr %183, align 4, !tbaa !65
  br label %186

186:                                              ; preds = %182, %181
  %187 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 35
  %188 = load ptr, ptr %187, align 8, !tbaa !77
  %189 = tail call ptr %188(ptr noundef %0) #5
  %190 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 34
  %191 = load ptr, ptr %190, align 8, !tbaa !78
  %192 = tail call ptr %191(ptr noundef %0) #5
  %193 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 16
  %194 = load i32, ptr %193, align 8, !tbaa !79
  %195 = and i32 %194, 4
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %199

197:                                              ; preds = %186
  %198 = tail call ptr @CustomData_get_layer(ptr noundef nonnull %50, i32 noundef 8) #5
  br label %199

199:                                              ; preds = %186, %197
  %200 = phi ptr [ %198, %197 ], [ null, %186 ]
  %201 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 9
  %202 = load i32, ptr %201, align 8, !tbaa !80
  %203 = icmp sgt i32 %202, 0
  br i1 %203, label %204, label %255

204:                                              ; preds = %199
  %205 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 3
  %206 = icmp eq i8 %2, 0
  %207 = icmp eq ptr %200, null
  %208 = and i8 %40, 8
  %209 = icmp eq i8 %208, 0
  br label %210

210:                                              ; preds = %204, %249
  %211 = phi i64 [ 0, %204 ], [ %250, %249 ]
  %212 = phi ptr [ %189, %204 ], [ %251, %249 ]
  %213 = load i32, ptr %212, align 4, !tbaa !81
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds %struct.MLoop, ptr %192, i64 %214
  %216 = tail call fastcc ptr @bm_face_create_from_mpoly(ptr noundef nonnull %212, ptr noundef %215, ptr noundef nonnull %1, ptr noundef %69, ptr noundef %73) #6
  %217 = icmp eq ptr %216, null
  br i1 %217, label %249, label %218

218:                                              ; preds = %210
  %219 = getelementptr inbounds %struct.MPoly, ptr %212, i64 0, i32 3
  %220 = load i8, ptr %219, align 2, !tbaa !83
  %221 = tail call zeroext i8 @BM_face_flag_from_mflag(i8 noundef zeroext %220) #5
  %222 = getelementptr inbounds %struct.BMHeader, ptr %216, i64 0, i32 3
  store i8 %221, ptr %222, align 1, !tbaa !84
  %223 = load i32, ptr %205, align 4, !tbaa !47
  %224 = add nsw i32 %223, -1
  tail call fastcc void @_bm_elem_index_set(ptr noundef nonnull %216, i32 noundef %224) #6
  %225 = getelementptr inbounds %struct.MPoly, ptr %212, i64 0, i32 2
  %226 = load i16, ptr %225, align 4, !tbaa !86
  %227 = getelementptr inbounds %struct.BMFace, ptr %216, i64 0, i32 5
  store i16 %226, ptr %227, align 8, !tbaa !87
  %228 = load i32, ptr %212, align 4, !tbaa !81
  %229 = getelementptr inbounds %struct.BMFace, ptr %216, i64 0, i32 2
  %230 = load ptr, ptr %229, align 8, !tbaa !88
  br label %231

231:                                              ; preds = %231, %218
  %232 = phi i32 [ %228, %218 ], [ %234, %231 ]
  %233 = phi ptr [ %230, %218 ], [ %236, %231 ]
  tail call void @CustomData_to_bmesh_block(ptr noundef nonnull %47, ptr noundef nonnull %48, i32 noundef %232, ptr noundef %233, i8 noundef zeroext 1) #5
  %234 = add nsw i32 %232, 1
  tail call fastcc void @_bm_elem_index_set(ptr noundef %233, i32 noundef %232) #6
  %235 = getelementptr inbounds %struct.BMLoop, ptr %233, i64 0, i32 6
  %236 = load ptr, ptr %235, align 8, !tbaa !89
  %237 = icmp eq ptr %236, %230
  br i1 %237, label %238, label %231, !llvm.loop !91

238:                                              ; preds = %231
  %239 = trunc i64 %211 to i32
  tail call void @CustomData_to_bmesh_block(ptr noundef nonnull %50, ptr noundef nonnull %51, i32 noundef %239, ptr noundef nonnull %216, i8 noundef zeroext 1) #5
  br i1 %206, label %245, label %240

240:                                              ; preds = %238
  br i1 %207, label %244, label %241

241:                                              ; preds = %240
  %242 = getelementptr inbounds %struct.BMFace, ptr %216, i64 0, i32 4
  %243 = getelementptr inbounds [3 x float], ptr %200, i64 %211
  tail call fastcc void @copy_v3_v3(ptr noundef nonnull %242, ptr noundef nonnull %243) #6
  br label %245

244:                                              ; preds = %240
  tail call void @BM_face_normal_update(ptr noundef nonnull %216) #5
  br label %245

245:                                              ; preds = %241, %244, %238
  br i1 %209, label %249, label %246

246:                                              ; preds = %245
  %247 = load ptr, ptr %216, align 8, !tbaa !92
  %248 = tail call ptr @CustomData_bmesh_get(ptr noundef nonnull %51, ptr noundef %247, i32 noundef 7) #5
  store i32 -1, ptr %248, align 4, !tbaa !62
  br label %249

249:                                              ; preds = %245, %246, %210
  %250 = add nuw nsw i64 %211, 1
  %251 = getelementptr inbounds %struct.MPoly, ptr %212, i64 1
  %252 = load i32, ptr %201, align 8, !tbaa !80
  %253 = sext i32 %252 to i64
  %254 = icmp slt i64 %250, %253
  br i1 %254, label %210, label %255, !llvm.loop !93

255:                                              ; preds = %249, %199
  br i1 %39, label %256, label %260

256:                                              ; preds = %255
  %257 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 7
  %258 = load i8, ptr %257, align 4, !tbaa !65
  %259 = and i8 %258, -13
  store i8 %259, ptr %257, align 4, !tbaa !65
  br label %260

260:                                              ; preds = %256, %255
  %261 = load ptr, ptr @MEM_freeN, align 8, !tbaa !53
  tail call void %261(ptr noundef %69) #5
  %262 = load ptr, ptr @MEM_freeN, align 8, !tbaa !53
  tail call void %262(ptr noundef %73) #5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare zeroext i8 @CustomData_has_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @CustomData_bmesh_merge(ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_mesh_cd_flag_apply(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @CustomData_get_offset(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BM_vert_create(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @normal_short_to_float_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !94 {
  %3 = load <2 x i16>, ptr %1, align 2, !tbaa !95
  %4 = sitofp <2 x i16> %3 to <2 x float>
  %5 = fmul <2 x float> %4, <float 0x3F00002000000000, float 0x3F00002000000000>
  store <2 x float> %5, ptr %0, align 4, !tbaa !61
  %6 = getelementptr inbounds i16, ptr %1, i64 2
  %7 = load i16, ptr %6, align 2, !tbaa !95
  %8 = sitofp i16 %7 to float
  %9 = fmul float %8, 0x3F00002000000000
  %10 = getelementptr inbounds float, ptr %0, i64 2
  store float %9, ptr %10, align 4, !tbaa !61
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @BM_vert_flag_from_mflag(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @_bm_elem_index_set(ptr nocapture noundef writeonly %0, i32 noundef %1) unnamed_addr #4 !PGOFuncName !96 {
  %3 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 1
  store i32 %1, ptr %3, align 8, !tbaa !97
  ret void
}

; Function Attrs: optsize
declare void @CustomData_to_bmesh_block(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @CustomData_bmesh_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BM_edge_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BM_edge_flag_from_mflag(i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CustomData_get_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @bm_face_create_from_mpoly(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4) unnamed_addr #0 !PGOFuncName !98 {
  %6 = getelementptr inbounds %struct.MPoly, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !99
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
  %18 = load i32, ptr %17, align 4, !tbaa !100
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds ptr, ptr %3, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !53
  %22 = getelementptr inbounds ptr, ptr %10, i64 %16
  store ptr %21, ptr %22, align 8, !tbaa !53
  %23 = getelementptr inbounds %struct.MLoop, ptr %17, i64 0, i32 1
  %24 = load i32, ptr %23, align 4, !tbaa !102
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds ptr, ptr %4, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !53
  %28 = getelementptr inbounds ptr, ptr %11, i64 %16
  store ptr %27, ptr %28, align 8, !tbaa !53
  %29 = add nuw nsw i64 %16, 1
  %30 = getelementptr inbounds %struct.MLoop, ptr %17, i64 1
  %31 = icmp eq i64 %29, %14
  br i1 %31, label %32, label %15, !llvm.loop !103

32:                                               ; preds = %15, %5
  %33 = call ptr @BM_face_create(ptr noundef %2, ptr noundef nonnull %10, ptr noundef nonnull %11, i32 noundef %7, ptr noundef null, i32 noundef 4) #5
  ret ptr %33
}

; Function Attrs: optsize
declare zeroext i8 @BM_face_flag_from_mflag(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !104 {
  %3 = load float, ptr %1, align 4, !tbaa !61
  store float %3, ptr %0, align 4, !tbaa !61
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !61
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !61
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !61
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !61
  ret void
}

; Function Attrs: optsize
declare void @BM_face_normal_update(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @DM_to_editbmesh(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %3
  %6 = tail call ptr @BM_mesh_create(ptr noundef nonnull @bm_mesh_allocsize_default) #5
  tail call void @DM_to_bmesh_ex(ptr noundef %0, ptr noundef %6, i8 noundef zeroext %2) #6
  %7 = tail call ptr @BKE_editmesh_create(ptr noundef %6, i8 noundef zeroext %2) #5
  br label %12

8:                                                ; preds = %3
  %9 = load ptr, ptr %1, align 8, !tbaa !105
  tail call void @DM_to_bmesh_ex(ptr noundef %0, ptr noundef %9, i8 noundef zeroext %2) #6
  %10 = icmp eq i8 %2, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  tail call void @BKE_editmesh_tessface_calc(ptr noundef nonnull %1) #5
  br label %12

12:                                               ; preds = %8, %11, %5
  %13 = phi ptr [ %1, %11 ], [ %1, %8 ], [ %7, %5 ]
  ret ptr %13
}

; Function Attrs: optsize
declare ptr @BM_mesh_create(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_editmesh_create(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_editmesh_tessface_calc(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @DM_to_bmesh(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMAllocTemplate, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7
  %4 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 23
  %5 = load ptr, ptr %4, align 8, !tbaa !51
  %6 = tail call i32 %5(ptr noundef %0) #5
  store i32 %6, ptr %3, align 4, !tbaa !107
  %7 = getelementptr inbounds %struct.BMAllocTemplate, ptr %3, i64 0, i32 1
  %8 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 24
  %9 = load ptr, ptr %8, align 8, !tbaa !52
  %10 = tail call i32 %9(ptr noundef %0) #5
  store i32 %10, ptr %7, align 4, !tbaa !109
  %11 = getelementptr inbounds %struct.BMAllocTemplate, ptr %3, i64 0, i32 2
  %12 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 26
  %13 = load ptr, ptr %12, align 8, !tbaa !110
  %14 = tail call i32 %13(ptr noundef %0) #5
  store i32 %14, ptr %11, align 4, !tbaa !111
  %15 = getelementptr inbounds %struct.BMAllocTemplate, ptr %3, i64 0, i32 3
  %16 = getelementptr inbounds %struct.DerivedMesh, ptr %0, i64 0, i32 27
  %17 = load ptr, ptr %16, align 8, !tbaa !112
  %18 = tail call i32 %17(ptr noundef %0) #5
  store i32 %18, ptr %15, align 4, !tbaa !113
  %19 = call ptr @BM_mesh_create(ptr noundef nonnull %3) #5
  call void @DM_to_bmesh_ex(ptr noundef %0, ptr noundef %19, i8 noundef zeroext %1) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7
  ret ptr %19
}

; Function Attrs: optsize
declare ptr @BM_face_create(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind optsize }
attributes #6 = { optsize }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 6524701}
!4 = !{!"MaxCount", i64 1843200}
!5 = !{!"MaxInternalCount", i64 1843200}
!6 = !{!"MaxFunctionCount", i64 28800}
!7 = !{!"NumCounts", i64 117}
!8 = !{!"NumFunctions", i64 8}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1843200, i32 3}
!14 = !{i32 100000, i64 1843200, i32 3}
!15 = !{i32 200000, i64 1843200, i32 3}
!16 = !{i32 300000, i64 1843200, i32 3}
!17 = !{i32 400000, i64 1843200, i32 3}
!18 = !{i32 500000, i64 1843200, i32 3}
!19 = !{i32 600000, i64 1843200, i32 3}
!20 = !{i32 700000, i64 1843200, i32 3}
!21 = !{i32 800000, i64 1843200, i32 3}
!22 = !{i32 900000, i64 921600, i32 4}
!23 = !{i32 950000, i64 921600, i32 4}
!24 = !{i32 990000, i64 28800, i32 6}
!25 = !{i32 999000, i64 14400, i32 7}
!26 = !{i32 999900, i64 1440, i32 8}
!27 = !{i32 999990, i64 1440, i32 8}
!28 = !{i32 999999, i64 1, i32 37}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
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
!44 = !{!45, !36, i64 1048}
!45 = !{!"DerivedMesh", !40, i64 0, !40, i64 200, !40, i64 400, !40, i64 600, !40, i64 800, !36, i64 1000, !36, i64 1004, !36, i64 1008, !36, i64 1012, !36, i64 1016, !36, i64 1020, !36, i64 1024, !39, i64 1032, !39, i64 1040, !36, i64 1048, !46, i64 1052, !36, i64 1056, !36, i64 1060, !39, i64 1064, !37, i64 1072, !39, i64 1080, !39, i64 1088, !39, i64 1096, !39, i64 1104, !39, i64 1112, !39, i64 1120, !39, i64 1128, !39, i64 1136, !39, i64 1144, !39, i64 1152, !39, i64 1160, !39, i64 1168, !39, i64 1176, !39, i64 1184, !39, i64 1192, !39, i64 1200, !39, i64 1208, !39, i64 1216, !39, i64 1224, !39, i64 1232, !39, i64 1240, !39, i64 1248, !39, i64 1256, !39, i64 1264, !39, i64 1272, !39, i64 1280, !39, i64 1288, !39, i64 1296, !39, i64 1304, !39, i64 1312, !39, i64 1320, !39, i64 1328, !39, i64 1336, !39, i64 1344, !39, i64 1352, !39, i64 1360, !39, i64 1368, !39, i64 1376, !39, i64 1384, !39, i64 1392, !39, i64 1400, !39, i64 1408, !39, i64 1416, !39, i64 1424, !39, i64 1432, !39, i64 1440, !39, i64 1448, !39, i64 1456, !39, i64 1464, !39, i64 1472, !39, i64 1480, !39, i64 1488, !39, i64 1496, !39, i64 1504, !39, i64 1512, !39, i64 1520, !39, i64 1528, !39, i64 1536, !39, i64 1544, !39, i64 1552, !39, i64 1560, !39, i64 1568, !39, i64 1576, !39, i64 1584, !39, i64 1592, !39, i64 1600, !39, i64 1608, !39, i64 1616, !39, i64 1624, !39, i64 1632, !39, i64 1640, !39, i64 1648, !39, i64 1656, !39, i64 1664, !39, i64 1672, !39, i64 1680}
!46 = !{!"float", !37, i64 0}
!47 = !{!35, !36, i64 12}
!48 = !{!49, !49, i64 0}
!49 = !{!"long", !37, i64 0}
!50 = !{!45, !37, i64 1072}
!51 = !{!45, !39, i64 1104}
!52 = !{!45, !39, i64 1112}
!53 = !{!39, !39, i64 0}
!54 = !{!55, !37, i64 18}
!55 = !{!"MVert", !37, i64 0, !37, i64 12, !37, i64 18, !37, i64 19}
!56 = !{!57, !37, i64 13}
!57 = !{!"BMVert", !58, i64 0, !39, i64 16, !37, i64 24, !37, i64 36, !39, i64 48}
!58 = !{!"BMHeader", !39, i64 0, !36, i64 8, !37, i64 12, !37, i64 13, !37, i64 14}
!59 = !{!55, !37, i64 19}
!60 = !{!57, !39, i64 0}
!61 = !{!46, !46, i64 0}
!62 = !{!36, !36, i64 0}
!63 = distinct !{!63, !64}
!64 = !{!"llvm.loop.mustprogress"}
!65 = !{!35, !37, i64 28}
!66 = !{!67, !36, i64 0}
!67 = !{!"MEdge", !36, i64 0, !36, i64 4, !37, i64 8, !37, i64 9, !41, i64 10}
!68 = !{!67, !36, i64 4}
!69 = !{!67, !41, i64 10}
!70 = !{!71, !37, i64 13}
!71 = !{!"BMEdge", !58, i64 0, !39, i64 16, !39, i64 24, !39, i64 32, !39, i64 40, !72, i64 48, !72, i64 64}
!72 = !{!"BMDiskLink", !39, i64 0, !39, i64 8}
!73 = !{!67, !37, i64 9}
!74 = !{!71, !39, i64 0}
!75 = !{!67, !37, i64 8}
!76 = distinct !{!76, !64}
!77 = !{!45, !39, i64 1200}
!78 = !{!45, !39, i64 1192}
!79 = !{!45, !36, i64 1056}
!80 = !{!45, !36, i64 1016}
!81 = !{!82, !36, i64 0}
!82 = !{!"MPoly", !36, i64 0, !36, i64 4, !41, i64 8, !37, i64 10, !37, i64 11}
!83 = !{!82, !37, i64 10}
!84 = !{!85, !37, i64 13}
!85 = !{!"BMFace", !58, i64 0, !39, i64 16, !39, i64 24, !36, i64 32, !37, i64 36, !41, i64 48}
!86 = !{!82, !41, i64 8}
!87 = !{!85, !41, i64 48}
!88 = !{!85, !39, i64 24}
!89 = !{!90, !39, i64 56}
!90 = !{!"BMLoop", !58, i64 0, !39, i64 16, !39, i64 24, !39, i64 32, !39, i64 40, !39, i64 48, !39, i64 56, !39, i64 64}
!91 = distinct !{!91, !64}
!92 = !{!85, !39, i64 0}
!93 = distinct !{!93, !64}
!94 = !{!"modifiers_bmesh.c:normal_short_to_float_v3"}
!95 = !{!41, !41, i64 0}
!96 = !{!"modifiers_bmesh.c:_bm_elem_index_set"}
!97 = !{!58, !36, i64 8}
!98 = !{!"modifiers_bmesh.c:bm_face_create_from_mpoly"}
!99 = !{!82, !36, i64 4}
!100 = !{!101, !36, i64 0}
!101 = !{!"MLoop", !36, i64 0, !36, i64 4}
!102 = !{!101, !36, i64 4}
!103 = distinct !{!103, !64}
!104 = !{!"modifiers_bmesh.c:copy_v3_v3"}
!105 = !{!106, !39, i64 0}
!106 = !{!"BMEditMesh", !39, i64 0, !39, i64 8, !36, i64 16, !39, i64 24, !36, i64 32, !39, i64 40, !39, i64 48, !49, i64 56, !39, i64 64, !36, i64 72, !39, i64 80, !36, i64 88, !41, i64 92, !41, i64 94, !39, i64 96, !36, i64 104}
!107 = !{!108, !36, i64 0}
!108 = !{!"BMAllocTemplate", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12}
!109 = !{!108, !36, i64 4}
!110 = !{!45, !39, i64 1128}
!111 = !{!108, !36, i64 8}
!112 = !{!45, !39, i64 1136}
!113 = !{!108, !36, i64 12}

; ModuleID = 'blender/source/blender/bmesh/tools/bmesh_edgesplit.c'
source_filename = "blender/source/blender/bmesh/tools/bmesh_edgesplit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.BMIter = type { %union.anon, ptr, ptr, i32, i8 }
%union.anon = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.BMEditSelection = type { ptr, ptr, ptr, i8 }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMDiskLink = type { ptr, ptr }
%struct.BMLoop = type { %struct.BMHeader, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__func__.BM_mesh_edgesplit = private unnamed_addr constant [18 x i8] c"BM_mesh_edgesplit\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@__func__.bm_edgesplit_validate_seams = private unnamed_addr constant [28 x i8] c"bm_edgesplit_validate_seams\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @BM_mesh_edgesplit(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = alloca %struct.BMIter, align 8
  %6 = alloca %struct.BMIter, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #3
  %9 = icmp eq i8 %3, 0
  br i1 %9, label %29, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 32
  %12 = load ptr, ptr %11, align 8, !tbaa !34
  %13 = icmp eq ptr %12, null
  br i1 %13, label %29, label %14

14:                                               ; preds = %10
  %15 = tail call ptr @BLI_ghash_ptr_new(ptr noundef nonnull @__func__.BM_mesh_edgesplit) #3
  %16 = load ptr, ptr %11, align 8, !tbaa !43
  %17 = icmp eq ptr %16, null
  br i1 %17, label %29, label %18

18:                                               ; preds = %14, %26
  %19 = phi ptr [ %27, %26 ], [ %16, %14 ]
  %20 = getelementptr inbounds %struct.BMEditSelection, ptr %19, i64 0, i32 3
  %21 = load i8, ptr %20, align 8, !tbaa !44
  %22 = icmp eq i8 %21, 8
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.BMEditSelection, ptr %19, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !46
  tail call void @BLI_ghash_insert(ptr noundef %15, ptr noundef %25, ptr noundef nonnull %19) #3
  br label %26

26:                                               ; preds = %18, %23
  %27 = load ptr, ptr %19, align 8, !tbaa !43
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %18, !llvm.loop !47

29:                                               ; preds = %26, %14, %10, %4
  %30 = phi ptr [ null, %10 ], [ null, %4 ], [ %15, %14 ], [ %15, %26 ]
  %31 = phi i1 [ true, %10 ], [ true, %4 ], [ false, %14 ], [ false, %26 ]
  %32 = icmp eq i8 %2, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = icmp ne i8 %1, 0
  %35 = zext i1 %34 to i8
  %36 = or disjoint i8 %35, 2
  tail call void @BM_mesh_elem_hflag_enable_all(ptr noundef %0, i8 noundef zeroext %36, i8 noundef zeroext 16, i8 noundef zeroext 0) #3
  br label %37

37:                                               ; preds = %33, %29
  %38 = icmp eq i8 %1, 0
  br i1 %38, label %76, label %39

39:                                               ; preds = %37
  %40 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 4
  store i8 2, ptr %40, align 4, !tbaa !50
  %41 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %41, align 8, !tbaa !52
  %42 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %42, align 8, !tbaa !53
  %43 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 10
  %44 = load ptr, ptr %43, align 8, !tbaa !54
  store ptr %44, ptr %6, align 8, !tbaa !55
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %6) #3
  %45 = load ptr, ptr %42, align 8, !tbaa !53
  %46 = call ptr %45(ptr noundef nonnull %6) #3
  %47 = icmp eq ptr %46, null
  br i1 %47, label %76, label %48

48:                                               ; preds = %39, %72
  %49 = phi ptr [ %74, %72 ], [ %46, %39 ]
  %50 = getelementptr inbounds %struct.BMHeader, ptr %49, i64 0, i32 3
  %51 = load i8, ptr %50, align 1, !tbaa !56
  %52 = and i8 %51, 16
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %72, label %54

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.BMEdge, ptr %49, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !58
  %57 = getelementptr inbounds %struct.BMHeader, ptr %56, i64 0, i32 3
  %58 = load i8, ptr %57, align 1, !tbaa !56
  %59 = and i8 %58, 16
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %61, label %72

61:                                               ; preds = %54
  %62 = getelementptr inbounds %struct.BMEdge, ptr %49, i64 0, i32 3
  %63 = load ptr, ptr %62, align 8, !tbaa !61
  %64 = getelementptr inbounds %struct.BMHeader, ptr %63, i64 0, i32 3
  %65 = load i8, ptr %64, align 1, !tbaa !56
  %66 = and i8 %65, 16
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %61
  %69 = or disjoint i8 %58, 16
  store i8 %69, ptr %57, align 1, !tbaa !56
  %70 = load i8, ptr %64, align 1, !tbaa !56
  %71 = or i8 %70, 16
  store i8 %71, ptr %64, align 1, !tbaa !56
  br label %72

72:                                               ; preds = %48, %68, %61, %54
  %73 = load ptr, ptr %42, align 8, !tbaa !53
  %74 = call ptr %73(ptr noundef nonnull %6) #3
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %48, !llvm.loop !62

76:                                               ; preds = %72, %39, %37
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #3
  call void @BM_mesh_elem_index_ensure(ptr noundef %0, i8 noundef zeroext 1) #3
  %77 = load ptr, ptr @MEM_callocN, align 8, !tbaa !43
  %78 = load i32, ptr %0, align 8, !tbaa !63
  %79 = sext i32 %78 to i64
  %80 = call ptr %77(i64 noundef %79, ptr noundef nonnull @__func__.bm_edgesplit_validate_seams) #3
  %81 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 4
  store i8 2, ptr %81, align 4, !tbaa !50
  %82 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %82, align 8, !tbaa !52
  %83 = getelementptr inbounds %struct.BMIter, ptr %5, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %83, align 8, !tbaa !53
  %84 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 10
  %85 = load ptr, ptr %84, align 8, !tbaa !54
  store ptr %85, ptr %5, align 8, !tbaa !55
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %5) #3
  %86 = load ptr, ptr %83, align 8, !tbaa !53
  %87 = call ptr %86(ptr noundef nonnull %5) #3
  %88 = icmp eq ptr %87, null
  br i1 %88, label %134, label %89

89:                                               ; preds = %76, %130
  %90 = phi ptr [ %132, %130 ], [ %87, %76 ]
  %91 = getelementptr inbounds %struct.BMHeader, ptr %90, i64 0, i32 3
  %92 = load i8, ptr %91, align 1, !tbaa !56
  %93 = and i8 %92, 127
  store i8 %93, ptr %91, align 1, !tbaa !56
  %94 = getelementptr inbounds %struct.BMEdge, ptr %90, i64 0, i32 4
  %95 = load ptr, ptr %94, align 8, !tbaa !64
  %96 = icmp eq ptr %95, null
  br i1 %96, label %97, label %99

97:                                               ; preds = %89
  %98 = and i8 %92, 111
  br label %128

99:                                               ; preds = %89
  %100 = getelementptr inbounds %struct.BMLoop, ptr %95, i64 0, i32 4
  %101 = load ptr, ptr %100, align 8, !tbaa !65
  %102 = icmp eq ptr %101, %95
  br i1 %102, label %103, label %130

103:                                              ; preds = %99
  %104 = getelementptr inbounds %struct.BMEdge, ptr %90, i64 0, i32 2
  %105 = load ptr, ptr %104, align 8, !tbaa !58
  %106 = getelementptr inbounds %struct.BMHeader, ptr %105, i64 0, i32 1
  %107 = load i32, ptr %106, align 8, !tbaa !67
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8, ptr %80, i64 %108
  %110 = load i8, ptr %109, align 1, !tbaa !55
  %111 = icmp ult i8 %110, 2
  br i1 %111, label %112, label %114

112:                                              ; preds = %103
  %113 = add nuw nsw i8 %110, 1
  store i8 %113, ptr %109, align 1, !tbaa !55
  br label %114

114:                                              ; preds = %112, %103
  %115 = getelementptr inbounds %struct.BMEdge, ptr %90, i64 0, i32 3
  %116 = load ptr, ptr %115, align 8, !tbaa !61
  %117 = getelementptr inbounds %struct.BMHeader, ptr %116, i64 0, i32 1
  %118 = load i32, ptr %117, align 8, !tbaa !67
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8, ptr %80, i64 %119
  %121 = load i8, ptr %120, align 1, !tbaa !55
  %122 = icmp ult i8 %121, 2
  br i1 %122, label %123, label %125

123:                                              ; preds = %114
  %124 = add nuw nsw i8 %121, 1
  store i8 %124, ptr %120, align 1, !tbaa !55
  br label %125

125:                                              ; preds = %123, %114
  %126 = load i8, ptr %91, align 1, !tbaa !56
  %127 = and i8 %126, -17
  br label %128

128:                                              ; preds = %97, %125
  %129 = phi i8 [ %127, %125 ], [ %98, %97 ]
  store i8 %129, ptr %91, align 1, !tbaa !56
  br label %130

130:                                              ; preds = %128, %99
  %131 = load ptr, ptr %83, align 8, !tbaa !53
  %132 = call ptr %131(ptr noundef nonnull %5) #3
  %133 = icmp eq ptr %132, null
  br i1 %133, label %134, label %89, !llvm.loop !68

134:                                              ; preds = %130, %76
  store i8 2, ptr %81, align 4, !tbaa !50
  store ptr @bmiter__elem_of_mesh_begin, ptr %82, align 8, !tbaa !52
  store ptr @bmiter__elem_of_mesh_step, ptr %83, align 8, !tbaa !53
  %135 = load ptr, ptr %84, align 8, !tbaa !54
  store ptr %135, ptr %5, align 8, !tbaa !55
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %5) #3
  %136 = load ptr, ptr %83, align 8, !tbaa !53
  %137 = call ptr %136(ptr noundef nonnull %5) #3
  %138 = icmp eq ptr %137, null
  br i1 %138, label %171, label %139

139:                                              ; preds = %134, %167
  %140 = phi ptr [ %169, %167 ], [ %137, %134 ]
  %141 = getelementptr inbounds %struct.BMHeader, ptr %140, i64 0, i32 3
  %142 = load i8, ptr %141, align 1, !tbaa !56
  %143 = and i8 %142, 16
  %144 = icmp eq i8 %143, 0
  br i1 %144, label %167, label %145

145:                                              ; preds = %139
  %146 = getelementptr inbounds %struct.BMEdge, ptr %140, i64 0, i32 2
  %147 = load ptr, ptr %146, align 8, !tbaa !58
  %148 = getelementptr inbounds %struct.BMHeader, ptr %147, i64 0, i32 1
  %149 = load i32, ptr %148, align 8, !tbaa !67
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i8, ptr %80, i64 %150
  %152 = load i8, ptr %151, align 1, !tbaa !55
  %153 = icmp ult i8 %152, 2
  br i1 %153, label %154, label %156

154:                                              ; preds = %145
  %155 = add nuw nsw i8 %152, 1
  store i8 %155, ptr %151, align 1, !tbaa !55
  br label %156

156:                                              ; preds = %154, %145
  %157 = getelementptr inbounds %struct.BMEdge, ptr %140, i64 0, i32 3
  %158 = load ptr, ptr %157, align 8, !tbaa !61
  %159 = getelementptr inbounds %struct.BMHeader, ptr %158, i64 0, i32 1
  %160 = load i32, ptr %159, align 8, !tbaa !67
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i8, ptr %80, i64 %161
  %163 = load i8, ptr %162, align 1, !tbaa !55
  %164 = icmp ult i8 %163, 2
  br i1 %164, label %165, label %167

165:                                              ; preds = %156
  %166 = add nuw nsw i8 %163, 1
  store i8 %166, ptr %162, align 1, !tbaa !55
  br label %167

167:                                              ; preds = %165, %156, %139
  %168 = load ptr, ptr %83, align 8, !tbaa !53
  %169 = call ptr %168(ptr noundef nonnull %5) #3
  %170 = icmp eq ptr %169, null
  br i1 %170, label %171, label %139, !llvm.loop !69

171:                                              ; preds = %167, %134
  store i8 2, ptr %81, align 4, !tbaa !50
  store ptr @bmiter__elem_of_mesh_begin, ptr %82, align 8, !tbaa !52
  store ptr @bmiter__elem_of_mesh_step, ptr %83, align 8, !tbaa !53
  %172 = load ptr, ptr %84, align 8, !tbaa !54
  store ptr %172, ptr %5, align 8, !tbaa !55
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %5) #3
  %173 = load ptr, ptr %83, align 8, !tbaa !53
  %174 = call ptr %173(ptr noundef nonnull %5) #3
  %175 = icmp eq ptr %174, null
  br i1 %175, label %206, label %176

176:                                              ; preds = %171, %202
  %177 = phi ptr [ %204, %202 ], [ %174, %171 ]
  %178 = getelementptr inbounds %struct.BMHeader, ptr %177, i64 0, i32 3
  %179 = load i8, ptr %178, align 1, !tbaa !56
  %180 = and i8 %179, 16
  %181 = icmp eq i8 %180, 0
  br i1 %181, label %202, label %182

182:                                              ; preds = %176
  %183 = getelementptr inbounds %struct.BMEdge, ptr %177, i64 0, i32 2
  %184 = load ptr, ptr %183, align 8, !tbaa !58
  %185 = getelementptr inbounds %struct.BMHeader, ptr %184, i64 0, i32 1
  %186 = load i32, ptr %185, align 8, !tbaa !67
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i8, ptr %80, i64 %187
  %189 = load i8, ptr %188, align 1, !tbaa !55
  %190 = icmp eq i8 %189, 1
  br i1 %190, label %191, label %202

191:                                              ; preds = %182
  %192 = getelementptr inbounds %struct.BMEdge, ptr %177, i64 0, i32 3
  %193 = load ptr, ptr %192, align 8, !tbaa !61
  %194 = getelementptr inbounds %struct.BMHeader, ptr %193, i64 0, i32 1
  %195 = load i32, ptr %194, align 8, !tbaa !67
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i8, ptr %80, i64 %196
  %198 = load i8, ptr %197, align 1, !tbaa !55
  %199 = icmp eq i8 %198, 1
  br i1 %199, label %200, label %202

200:                                              ; preds = %191
  %201 = and i8 %179, -17
  store i8 %201, ptr %178, align 1, !tbaa !56
  br label %202

202:                                              ; preds = %200, %191, %182, %176
  %203 = load ptr, ptr %83, align 8, !tbaa !53
  %204 = call ptr %203(ptr noundef nonnull %5) #3
  %205 = icmp eq ptr %204, null
  br i1 %205, label %206, label %176, !llvm.loop !70

206:                                              ; preds = %202, %171
  %207 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  call void %207(ptr noundef %80) #3
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #3
  %208 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 4
  store i8 2, ptr %208, align 4, !tbaa !50
  %209 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %209, align 8, !tbaa !52
  %210 = getelementptr inbounds %struct.BMIter, ptr %6, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %210, align 8, !tbaa !53
  %211 = load ptr, ptr %84, align 8, !tbaa !54
  store ptr %211, ptr %6, align 8, !tbaa !55
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %6) #3
  %212 = load ptr, ptr %210, align 8, !tbaa !53
  %213 = call ptr %212(ptr noundef nonnull %6) #3
  %214 = icmp eq ptr %213, null
  br i1 %214, label %258, label %215

215:                                              ; preds = %206, %254
  %216 = phi ptr [ %256, %254 ], [ %213, %206 ]
  %217 = getelementptr inbounds %struct.BMHeader, ptr %216, i64 0, i32 3
  %218 = load i8, ptr %217, align 1, !tbaa !56
  %219 = and i8 %218, 16
  %220 = icmp eq i8 %219, 0
  br i1 %220, label %254, label %221

221:                                              ; preds = %215
  %222 = or i8 %218, -128
  store i8 %222, ptr %217, align 1, !tbaa !56
  %223 = getelementptr inbounds %struct.BMEdge, ptr %216, i64 0, i32 4
  br label %224

224:                                              ; preds = %239, %221
  %225 = load ptr, ptr %223, align 8, !tbaa !64
  %226 = icmp eq ptr %225, null
  br i1 %226, label %232, label %227

227:                                              ; preds = %224
  %228 = getelementptr inbounds %struct.BMLoop, ptr %225, i64 0, i32 4
  %229 = load ptr, ptr %228, align 8, !tbaa !65
  %230 = icmp eq ptr %229, %225
  %231 = zext i1 %230 to i8
  br label %232

232:                                              ; preds = %224, %227
  %233 = phi i8 [ 0, %224 ], [ %231, %227 ]
  %234 = icmp eq i8 %233, 0
  br i1 %234, label %235, label %243

235:                                              ; preds = %232
  call void @bmesh_edge_separate(ptr noundef nonnull %0, ptr noundef nonnull %216, ptr noundef %225, i8 noundef zeroext %3) #3
  br i1 %31, label %239, label %236

236:                                              ; preds = %235
  %237 = call ptr @BLI_ghash_lookup(ptr noundef %30, ptr noundef nonnull %216) #3
  %238 = icmp eq ptr %237, null
  br i1 %238, label %239, label %240

239:                                              ; preds = %236, %240, %235
  br label %224, !llvm.loop !71

240:                                              ; preds = %236
  %241 = getelementptr inbounds %struct.BMLoop, ptr %225, i64 0, i32 2
  %242 = load ptr, ptr %241, align 8, !tbaa !72
  call void @_bm_select_history_store_after_notest(ptr noundef nonnull %0, ptr noundef nonnull %237, ptr noundef %242) #3
  br label %239

243:                                              ; preds = %232
  %244 = getelementptr inbounds %struct.BMEdge, ptr %216, i64 0, i32 2
  %245 = load ptr, ptr %244, align 8, !tbaa !58
  %246 = getelementptr inbounds %struct.BMHeader, ptr %245, i64 0, i32 3
  %247 = load i8, ptr %246, align 1, !tbaa !56
  %248 = or i8 %247, 16
  store i8 %248, ptr %246, align 1, !tbaa !56
  %249 = getelementptr inbounds %struct.BMEdge, ptr %216, i64 0, i32 3
  %250 = load ptr, ptr %249, align 8, !tbaa !61
  %251 = getelementptr inbounds %struct.BMHeader, ptr %250, i64 0, i32 3
  %252 = load i8, ptr %251, align 1, !tbaa !56
  %253 = or i8 %252, 16
  store i8 %253, ptr %251, align 1, !tbaa !56
  br label %254

254:                                              ; preds = %215, %243
  %255 = load ptr, ptr %210, align 8, !tbaa !53
  %256 = call ptr %255(ptr noundef nonnull %6) #3
  %257 = icmp eq ptr %256, null
  br i1 %257, label %258, label %215, !llvm.loop !73

258:                                              ; preds = %254, %206
  br i1 %38, label %268, label %259

259:                                              ; preds = %258
  store i8 2, ptr %208, align 4, !tbaa !50
  store ptr @bmiter__elem_of_mesh_begin, ptr %209, align 8, !tbaa !52
  store ptr @bmiter__elem_of_mesh_step, ptr %210, align 8, !tbaa !53
  %260 = load ptr, ptr %84, align 8, !tbaa !54
  store ptr %260, ptr %6, align 8, !tbaa !55
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %6) #3
  %261 = load ptr, ptr %210, align 8, !tbaa !53
  %262 = call ptr %261(ptr noundef nonnull %6) #3
  %263 = icmp eq ptr %262, null
  br i1 %263, label %268, label %264

264:                                              ; preds = %259, %264
  %265 = load ptr, ptr %210, align 8, !tbaa !53
  %266 = call ptr %265(ptr noundef nonnull %6) #3
  %267 = icmp eq ptr %266, null
  br i1 %267, label %268, label %264, !llvm.loop !74

268:                                              ; preds = %264, %259, %258
  store i8 2, ptr %208, align 4, !tbaa !50
  store ptr @bmiter__elem_of_mesh_begin, ptr %209, align 8, !tbaa !52
  store ptr @bmiter__elem_of_mesh_step, ptr %210, align 8, !tbaa !53
  %269 = load ptr, ptr %84, align 8, !tbaa !54
  store ptr %269, ptr %6, align 8, !tbaa !55
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %6) #3
  %270 = load ptr, ptr %210, align 8, !tbaa !53
  %271 = call ptr %270(ptr noundef nonnull %6) #3
  %272 = icmp eq ptr %271, null
  br i1 %272, label %320, label %273

273:                                              ; preds = %268, %316
  %274 = phi ptr [ %318, %316 ], [ %271, %268 ]
  %275 = getelementptr inbounds %struct.BMHeader, ptr %274, i64 0, i32 3
  %276 = load i8, ptr %275, align 1, !tbaa !56
  %277 = and i8 %276, 16
  %278 = icmp eq i8 %277, 0
  br i1 %278, label %316, label %279

279:                                              ; preds = %273
  %280 = getelementptr inbounds %struct.BMEdge, ptr %274, i64 0, i32 2
  br label %281

281:                                              ; preds = %279, %313
  %282 = phi i64 [ 0, %279 ], [ %314, %313 ]
  %283 = getelementptr inbounds ptr, ptr %280, i64 %282
  %284 = load ptr, ptr %283, align 8, !tbaa !58
  %285 = getelementptr inbounds %struct.BMHeader, ptr %284, i64 0, i32 3
  %286 = load i8, ptr %285, align 1, !tbaa !56
  %287 = and i8 %286, 16
  %288 = icmp eq i8 %287, 0
  br i1 %288, label %313, label %289

289:                                              ; preds = %281
  %290 = and i8 %286, -17
  store i8 %290, ptr %285, align 1, !tbaa !56
  br i1 %31, label %312, label %291

291:                                              ; preds = %289
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #3
  call void @bmesh_vert_separate(ptr noundef nonnull %0, ptr noundef %284, ptr noundef nonnull %7, ptr noundef nonnull %8, i8 noundef zeroext %3) #3
  %292 = load i32, ptr %8, align 4, !tbaa !75
  %293 = icmp sgt i32 %292, 1
  br i1 %293, label %294, label %309

294:                                              ; preds = %291
  %295 = call ptr @BLI_ghash_lookup(ptr noundef %30, ptr noundef %284) #3
  %296 = icmp ne ptr %295, null
  %297 = load i32, ptr %8, align 4
  %298 = icmp sgt i32 %297, 1
  %299 = select i1 %296, i1 %298, i1 false
  br i1 %299, label %300, label %309

300:                                              ; preds = %294, %300
  %301 = phi i64 [ %305, %300 ], [ 1, %294 ]
  %302 = load ptr, ptr %7, align 8, !tbaa !43
  %303 = getelementptr inbounds ptr, ptr %302, i64 %301
  %304 = load ptr, ptr %303, align 8, !tbaa !43
  call void @_bm_select_history_store_after_notest(ptr noundef nonnull %0, ptr noundef nonnull %295, ptr noundef %304) #3
  %305 = add nuw nsw i64 %301, 1
  %306 = load i32, ptr %8, align 4, !tbaa !75
  %307 = sext i32 %306 to i64
  %308 = icmp slt i64 %305, %307
  br i1 %308, label %300, label %309, !llvm.loop !76

309:                                              ; preds = %300, %294, %291
  %310 = load ptr, ptr @MEM_freeN, align 8, !tbaa !43
  %311 = load ptr, ptr %7, align 8, !tbaa !43
  call void %310(ptr noundef %311) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #3
  br label %313

312:                                              ; preds = %289
  call void @bmesh_vert_separate(ptr noundef nonnull %0, ptr noundef %284, ptr noundef null, ptr noundef null, i8 noundef zeroext %3) #3
  br label %313

313:                                              ; preds = %309, %312, %281
  %314 = add nuw nsw i64 %282, 1
  %315 = icmp eq i64 %282, 0
  br i1 %315, label %281, label %316, !llvm.loop !77

316:                                              ; preds = %313, %273
  %317 = load ptr, ptr %210, align 8, !tbaa !53
  %318 = call ptr %317(ptr noundef nonnull %6) #3
  %319 = icmp eq ptr %318, null
  br i1 %319, label %320, label %273, !llvm.loop !78

320:                                              ; preds = %316, %268
  br i1 %31, label %322, label %321

321:                                              ; preds = %320
  call void @BLI_ghash_free(ptr noundef %30, ptr noundef null, ptr noundef null) #3
  br label %322

322:                                              ; preds = %321, %320
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #3
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @BLI_ghash_ptr_new(ptr noundef) local_unnamed_addr #2

declare void @BLI_ghash_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare void @BM_mesh_elem_hflag_enable_all(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare void @bmesh_edge_separate(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @BLI_ghash_lookup(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_bm_select_history_store_after_notest(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @bmesh_vert_separate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @BLI_ghash_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @bmiter__elem_of_mesh_begin(ptr noundef) #2

declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #2

declare void @BM_mesh_elem_index_ensure(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

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
!34 = !{!35, !39, i64 960}
!35 = !{!"BMesh", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !37, i64 28, !37, i64 29, !39, i64 32, !39, i64 40, !39, i64 48, !39, i64 56, !39, i64 64, !39, i64 72, !39, i64 80, !36, i64 88, !36, i64 92, !36, i64 96, !39, i64 104, !39, i64 112, !39, i64 120, !36, i64 128, !39, i64 136, !40, i64 144, !40, i64 344, !40, i64 544, !40, i64 744, !41, i64 944, !36, i64 948, !36, i64 952, !36, i64 956, !42, i64 960, !39, i64 976, !42, i64 984, !39, i64 1000}
!36 = !{!"int", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"any pointer", !37, i64 0}
!40 = !{!"CustomData", !39, i64 0, !37, i64 8, !36, i64 172, !36, i64 176, !36, i64 180, !39, i64 184, !39, i64 192}
!41 = !{!"short", !37, i64 0}
!42 = !{!"ListBase", !39, i64 0, !39, i64 8}
!43 = !{!39, !39, i64 0}
!44 = !{!45, !37, i64 24}
!45 = !{!"BMEditSelection", !39, i64 0, !39, i64 8, !39, i64 16, !37, i64 24}
!46 = !{!45, !39, i64 16}
!47 = distinct !{!47, !48, !49}
!48 = !{!"llvm.loop.mustprogress"}
!49 = !{!"llvm.loop.unroll.disable"}
!50 = !{!51, !37, i64 60}
!51 = !{!"BMIter", !37, i64 0, !39, i64 40, !39, i64 48, !36, i64 56, !37, i64 60}
!52 = !{!51, !39, i64 40}
!53 = !{!51, !39, i64 48}
!54 = !{!35, !39, i64 40}
!55 = !{!37, !37, i64 0}
!56 = !{!57, !37, i64 13}
!57 = !{!"BMHeader", !39, i64 0, !36, i64 8, !37, i64 12, !37, i64 13, !37, i64 14}
!58 = !{!59, !39, i64 24}
!59 = !{!"BMEdge", !57, i64 0, !39, i64 16, !39, i64 24, !39, i64 32, !39, i64 40, !60, i64 48, !60, i64 64}
!60 = !{!"BMDiskLink", !39, i64 0, !39, i64 8}
!61 = !{!59, !39, i64 32}
!62 = distinct !{!62, !48, !49}
!63 = !{!35, !36, i64 0}
!64 = !{!59, !39, i64 40}
!65 = !{!66, !39, i64 40}
!66 = !{!"BMLoop", !57, i64 0, !39, i64 16, !39, i64 24, !39, i64 32, !39, i64 40, !39, i64 48, !39, i64 56, !39, i64 64}
!67 = !{!57, !36, i64 8}
!68 = distinct !{!68, !48, !49}
!69 = distinct !{!69, !48, !49}
!70 = distinct !{!70, !48, !49}
!71 = distinct !{!71, !48, !49}
!72 = !{!66, !39, i64 24}
!73 = distinct !{!73, !48, !49}
!74 = distinct !{!74, !48, !49}
!75 = !{!36, !36, i64 0}
!76 = distinct !{!76, !48, !49}
!77 = distinct !{!77, !48, !49}
!78 = distinct !{!78, !48, !49}

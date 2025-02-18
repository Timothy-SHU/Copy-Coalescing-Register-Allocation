; ModuleID = 'blender/source/blender/bmesh/tools/bmesh_decimate_unsubdivide.c'
source_filename = "blender/source/blender/bmesh/tools/bmesh_decimate_unsubdivide.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.BMIter = type { %union.anon, ptr, ptr, i32, i8 }
%union.anon = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMDiskLink = type { ptr, ptr }
%struct.BMLoop = type { %struct.BMHeader, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }

@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@__func__.BM_mesh_decimate_unsubdivide_ex = private unnamed_addr constant [32 x i8] c"BM_mesh_decimate_unsubdivide_ex\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8

; Function Attrs: nounwind uwtable
define dso_local void @BM_mesh_decimate_unsubdivide_ex(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca %struct.BMIter, align 8
  %5 = alloca [4 x ptr], align 16
  %6 = alloca ptr, align 8
  %7 = alloca %struct.BMIter, align 8
  %8 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %9 = load i32, ptr %0, align 8, !tbaa !38
  %10 = sext i32 %9 to i64
  %11 = shl nsw i64 %10, 3
  %12 = tail call ptr %8(i64 noundef %11, ptr noundef nonnull @__func__.BM_mesh_decimate_unsubdivide_ex) #3
  %13 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !34
  %14 = load i32, ptr %0, align 8, !tbaa !38
  %15 = sext i32 %14 to i64
  %16 = shl nsw i64 %15, 3
  %17 = tail call ptr %13(i64 noundef %16, ptr noundef nonnull @__func__.BM_mesh_decimate_unsubdivide_ex) #3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #3
  %18 = icmp eq i8 %2, 0
  br i1 %18, label %19, label %36

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 4
  store i8 1, ptr %20, align 4, !tbaa !44
  %21 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %21, align 8, !tbaa !46
  %22 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %22, align 8, !tbaa !47
  %23 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 9
  %24 = load ptr, ptr %23, align 8, !tbaa !48
  store ptr %24, ptr %7, align 8, !tbaa !49
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %7) #3
  %25 = load ptr, ptr %22, align 8, !tbaa !47
  %26 = call ptr %25(ptr noundef nonnull %7) #3
  %27 = icmp eq ptr %26, null
  br i1 %27, label %36, label %28

28:                                               ; preds = %19, %28
  %29 = phi ptr [ %34, %28 ], [ %26, %19 ]
  %30 = getelementptr inbounds %struct.BMHeader, ptr %29, i64 0, i32 3
  %31 = load i8, ptr %30, align 1, !tbaa !50
  %32 = or i8 %31, 16
  store i8 %32, ptr %30, align 1, !tbaa !50
  %33 = load ptr, ptr %22, align 8, !tbaa !47
  %34 = call ptr %33(ptr noundef nonnull %7) #3
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %28, !llvm.loop !52

36:                                               ; preds = %28, %19, %3
  %37 = icmp sgt i32 %1, 0
  br i1 %37, label %38, label %348

38:                                               ; preds = %36
  %39 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 4
  %40 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 1
  %41 = getelementptr inbounds %struct.BMIter, ptr %7, i64 0, i32 2
  %42 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 9
  %43 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  %44 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  %45 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  br label %46

46:                                               ; preds = %343, %38
  %47 = phi i32 [ 0, %38 ], [ %199, %343 ]
  %48 = phi ptr [ undef, %38 ], [ %216, %343 ]
  %49 = phi i32 [ 0, %38 ], [ %345, %343 ]
  store i8 1, ptr %39, align 4, !tbaa !44
  store ptr @bmiter__elem_of_mesh_begin, ptr %40, align 8, !tbaa !46
  store ptr @bmiter__elem_of_mesh_step, ptr %41, align 8, !tbaa !47
  %50 = load ptr, ptr %42, align 8, !tbaa !48
  store ptr %50, ptr %7, align 8, !tbaa !49
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %7) #3
  %51 = load ptr, ptr %41, align 8, !tbaa !47
  %52 = call ptr %51(ptr noundef nonnull %7) #3
  %53 = icmp eq ptr %52, null
  br i1 %53, label %70, label %54

54:                                               ; preds = %46, %64
  %55 = phi ptr [ %68, %64 ], [ %52, %46 ]
  %56 = getelementptr inbounds %struct.BMHeader, ptr %55, i64 0, i32 3
  %57 = load i8, ptr %56, align 1, !tbaa !50
  %58 = and i8 %57, 16
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %54
  %61 = call fastcc zeroext i8 @bm_vert_dissolve_fan_test(ptr noundef nonnull %55), !range !55
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %60, %54
  br label %64

64:                                               ; preds = %60, %63
  %65 = phi i32 [ 1, %63 ], [ 0, %60 ]
  %66 = getelementptr inbounds %struct.BMHeader, ptr %55, i64 0, i32 1
  store i32 %65, ptr %66, align 8, !tbaa !56
  %67 = load ptr, ptr %41, align 8, !tbaa !47
  %68 = call ptr %67(ptr noundef nonnull %7) #3
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %54, !llvm.loop !57

70:                                               ; preds = %64, %46
  br label %71

71:                                               ; preds = %70, %198
  %72 = phi i32 [ %199, %198 ], [ %47, %70 ]
  store i8 1, ptr %39, align 4, !tbaa !44
  store ptr @bmiter__elem_of_mesh_begin, ptr %40, align 8, !tbaa !46
  store ptr @bmiter__elem_of_mesh_step, ptr %41, align 8, !tbaa !47
  %73 = load ptr, ptr %42, align 8, !tbaa !48
  store ptr %73, ptr %7, align 8, !tbaa !49
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %7) #3
  %74 = load ptr, ptr %41, align 8, !tbaa !47
  %75 = call ptr %74(ptr noundef nonnull %7) #3
  %76 = icmp eq ptr %75, null
  br i1 %76, label %94, label %77

77:                                               ; preds = %71, %90
  %78 = phi ptr [ %92, %90 ], [ %75, %71 ]
  %79 = getelementptr inbounds %struct.BMVert, ptr %78, i64 0, i32 4
  %80 = load ptr, ptr %79, align 8, !tbaa !58
  %81 = icmp eq ptr %80, null
  br i1 %81, label %90, label %82

82:                                               ; preds = %77
  %83 = getelementptr inbounds %struct.BMHeader, ptr %78, i64 0, i32 1
  %84 = load i32, ptr %83, align 8, !tbaa !56
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %82
  %87 = call fastcc zeroext i8 @bm_vert_dissolve_fan_test(ptr noundef nonnull %78), !range !55
  %88 = icmp eq i8 %87, 0
  %89 = select i1 %88, ptr null, ptr %78
  br label %94

90:                                               ; preds = %77, %82
  %91 = load ptr, ptr %41, align 8, !tbaa !47
  %92 = call ptr %91(ptr noundef nonnull %7) #3
  %93 = icmp eq ptr %92, null
  br i1 %93, label %94, label %77, !llvm.loop !60

94:                                               ; preds = %90, %71, %86
  %95 = phi ptr [ %89, %86 ], [ null, %71 ], [ null, %90 ]
  %96 = icmp eq ptr %95, null
  br i1 %96, label %198, label %97

97:                                               ; preds = %94
  %98 = getelementptr inbounds %struct.BMHeader, ptr %95, i64 0, i32 1
  store i32 1, ptr %98, align 8, !tbaa !56
  store ptr %95, ptr %17, align 8, !tbaa !34
  br label %99

99:                                               ; preds = %193, %97
  %100 = phi i32 [ 1, %97 ], [ %194, %193 ]
  %101 = phi i32 [ 1, %97 ], [ %196, %193 ]
  %102 = phi i32 [ %72, %97 ], [ %197, %193 ]
  %103 = and i32 %100, 1
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %109, label %105

105:                                              ; preds = %99
  %106 = icmp eq i32 %101, 0
  br i1 %106, label %148, label %107

107:                                              ; preds = %105
  %108 = zext i32 %101 to i64
  br label %113

109:                                              ; preds = %99
  %110 = icmp eq i32 %102, 0
  br i1 %110, label %186, label %111

111:                                              ; preds = %109
  %112 = zext i32 %102 to i64
  br label %151

113:                                              ; preds = %107, %144
  %114 = phi i64 [ 0, %107 ], [ %146, %144 ]
  %115 = phi i32 [ 0, %107 ], [ %145, %144 ]
  %116 = getelementptr inbounds ptr, ptr %17, i64 %114
  %117 = load ptr, ptr %116, align 8, !tbaa !34
  store i8 4, ptr %39, align 4, !tbaa !44
  store ptr @bmiter__edge_of_vert_begin, ptr %40, align 8, !tbaa !46
  store ptr @bmiter__edge_of_vert_step, ptr %41, align 8, !tbaa !47
  store ptr %117, ptr %7, align 8, !tbaa !49
  call void @bmiter__edge_of_vert_begin(ptr noundef nonnull %7) #3
  %118 = load ptr, ptr %41, align 8, !tbaa !47
  %119 = call ptr %118(ptr noundef nonnull %7) #3
  %120 = icmp eq ptr %119, null
  br i1 %120, label %144, label %121

121:                                              ; preds = %113, %139
  %122 = phi i32 [ %140, %139 ], [ %115, %113 ]
  %123 = phi ptr [ %142, %139 ], [ %119, %113 ]
  %124 = getelementptr inbounds %struct.BMEdge, ptr %123, i64 0, i32 2
  %125 = load ptr, ptr %124, align 8, !tbaa !61
  %126 = icmp eq ptr %125, %117
  %127 = getelementptr inbounds %struct.BMEdge, ptr %123, i64 0, i32 3
  %128 = load ptr, ptr %127, align 8, !tbaa !64
  %129 = icmp eq ptr %128, %117
  %130 = select i1 %129, ptr %125, ptr null
  %131 = select i1 %126, ptr %128, ptr %130
  %132 = getelementptr inbounds %struct.BMHeader, ptr %131, i64 0, i32 1
  %133 = load i32, ptr %132, align 8, !tbaa !56
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %121
  store i32 -1, ptr %132, align 8, !tbaa !56
  %136 = add i32 %122, 1
  %137 = zext i32 %122 to i64
  %138 = getelementptr inbounds ptr, ptr %12, i64 %137
  store ptr %131, ptr %138, align 8, !tbaa !34
  br label %139

139:                                              ; preds = %135, %121
  %140 = phi i32 [ %136, %135 ], [ %122, %121 ]
  %141 = load ptr, ptr %41, align 8, !tbaa !47
  %142 = call ptr %141(ptr noundef nonnull %7) #3
  %143 = icmp eq ptr %142, null
  br i1 %143, label %144, label %121, !llvm.loop !65

144:                                              ; preds = %139, %113
  %145 = phi i32 [ %115, %113 ], [ %140, %139 ]
  %146 = add nuw nsw i64 %114, 1
  %147 = icmp eq i64 %146, %108
  br i1 %147, label %148, label %113, !llvm.loop !66

148:                                              ; preds = %144, %105
  %149 = phi i32 [ 0, %105 ], [ %145, %144 ]
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %193, label %189

151:                                              ; preds = %111, %182
  %152 = phi i64 [ 0, %111 ], [ %184, %182 ]
  %153 = phi i32 [ 0, %111 ], [ %183, %182 ]
  %154 = getelementptr inbounds ptr, ptr %12, i64 %152
  %155 = load ptr, ptr %154, align 8, !tbaa !34
  store i8 4, ptr %39, align 4, !tbaa !44
  store ptr @bmiter__edge_of_vert_begin, ptr %40, align 8, !tbaa !46
  store ptr @bmiter__edge_of_vert_step, ptr %41, align 8, !tbaa !47
  store ptr %155, ptr %7, align 8, !tbaa !49
  call void @bmiter__edge_of_vert_begin(ptr noundef nonnull %7) #3
  %156 = load ptr, ptr %41, align 8, !tbaa !47
  %157 = call ptr %156(ptr noundef nonnull %7) #3
  %158 = icmp eq ptr %157, null
  br i1 %158, label %182, label %159

159:                                              ; preds = %151, %177
  %160 = phi i32 [ %178, %177 ], [ %153, %151 ]
  %161 = phi ptr [ %180, %177 ], [ %157, %151 ]
  %162 = getelementptr inbounds %struct.BMEdge, ptr %161, i64 0, i32 2
  %163 = load ptr, ptr %162, align 8, !tbaa !61
  %164 = icmp eq ptr %163, %155
  %165 = getelementptr inbounds %struct.BMEdge, ptr %161, i64 0, i32 3
  %166 = load ptr, ptr %165, align 8, !tbaa !64
  %167 = icmp eq ptr %166, %155
  %168 = select i1 %167, ptr %163, ptr null
  %169 = select i1 %164, ptr %166, ptr %168
  %170 = getelementptr inbounds %struct.BMHeader, ptr %169, i64 0, i32 1
  %171 = load i32, ptr %170, align 8, !tbaa !56
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %177

173:                                              ; preds = %159
  store i32 1, ptr %170, align 8, !tbaa !56
  %174 = add i32 %160, 1
  %175 = zext i32 %160 to i64
  %176 = getelementptr inbounds ptr, ptr %17, i64 %175
  store ptr %169, ptr %176, align 8, !tbaa !34
  br label %177

177:                                              ; preds = %173, %159
  %178 = phi i32 [ %174, %173 ], [ %160, %159 ]
  %179 = load ptr, ptr %41, align 8, !tbaa !47
  %180 = call ptr %179(ptr noundef nonnull %7) #3
  %181 = icmp eq ptr %180, null
  br i1 %181, label %182, label %159, !llvm.loop !67

182:                                              ; preds = %177, %151
  %183 = phi i32 [ %153, %151 ], [ %178, %177 ]
  %184 = add nuw nsw i64 %152, 1
  %185 = icmp eq i64 %184, %112
  br i1 %185, label %186, label %151, !llvm.loop !68

186:                                              ; preds = %182, %109
  %187 = phi i32 [ 0, %109 ], [ %183, %182 ]
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %193, label %189

189:                                              ; preds = %186, %148
  %190 = phi i32 [ %101, %148 ], [ %187, %186 ]
  %191 = phi i32 [ %149, %148 ], [ %102, %186 ]
  %192 = add i32 %100, 1
  br label %193

193:                                              ; preds = %186, %148, %189
  %194 = phi i32 [ %192, %189 ], [ %100, %148 ], [ %100, %186 ]
  %195 = phi i1 [ true, %189 ], [ false, %148 ], [ false, %186 ]
  %196 = phi i32 [ %190, %189 ], [ %101, %148 ], [ 0, %186 ]
  %197 = phi i32 [ %191, %189 ], [ 0, %148 ], [ %102, %186 ]
  br i1 %195, label %99, label %198

198:                                              ; preds = %193, %94
  %199 = phi i32 [ %72, %94 ], [ %197, %193 ]
  br i1 %96, label %200, label %71

200:                                              ; preds = %198
  store i8 1, ptr %39, align 4, !tbaa !44
  store ptr @bmiter__elem_of_mesh_begin, ptr %40, align 8, !tbaa !46
  store ptr @bmiter__elem_of_mesh_step, ptr %41, align 8, !tbaa !47
  %201 = load ptr, ptr %42, align 8, !tbaa !48
  store ptr %201, ptr %7, align 8, !tbaa !49
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %7) #3
  %202 = load ptr, ptr %41, align 8, !tbaa !47
  %203 = call ptr %202(ptr noundef nonnull %7) #3
  br label %204

204:                                              ; preds = %339, %200
  %205 = phi ptr [ %216, %339 ], [ %203, %200 ]
  %206 = phi ptr [ %216, %339 ], [ %48, %200 ]
  %207 = phi i8 [ %342, %339 ], [ 0, %200 ]
  br label %208

208:                                              ; preds = %204, %217
  %209 = phi ptr [ %216, %217 ], [ %205, %204 ]
  %210 = phi ptr [ %216, %217 ], [ %206, %204 ]
  %211 = icmp eq ptr %209, null
  br i1 %211, label %215, label %212

212:                                              ; preds = %208
  %213 = load ptr, ptr %41, align 8, !tbaa !47
  %214 = call ptr %213(ptr noundef nonnull %7) #3
  br label %215

215:                                              ; preds = %208, %212
  %216 = phi ptr [ %214, %212 ], [ %210, %208 ]
  br i1 %211, label %343, label %217

217:                                              ; preds = %215
  %218 = getelementptr inbounds %struct.BMHeader, ptr %209, i64 0, i32 1
  %219 = load i32, ptr %218, align 8, !tbaa !56
  %220 = icmp eq i32 %219, -1
  br i1 %220, label %221, label %208, !llvm.loop !69

221:                                              ; preds = %217
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #3
  store i8 4, ptr %43, align 4, !tbaa !44
  store ptr @bmiter__edge_of_vert_begin, ptr %44, align 8, !tbaa !46
  store ptr @bmiter__edge_of_vert_step, ptr %45, align 8, !tbaa !47
  store ptr %209, ptr %4, align 8, !tbaa !49
  call void @bmiter__edge_of_vert_begin(ptr noundef nonnull %4) #3
  %222 = load ptr, ptr %45, align 8, !tbaa !47
  %223 = call ptr %222(ptr noundef nonnull %4) #3
  %224 = icmp eq ptr %223, null
  br i1 %224, label %270, label %225

225:                                              ; preds = %221, %262
  %226 = phi i32 [ %265, %262 ], [ 0, %221 ]
  %227 = phi i32 [ %264, %262 ], [ 0, %221 ]
  %228 = phi i32 [ %263, %262 ], [ 0, %221 ]
  %229 = phi i32 [ %266, %262 ], [ 0, %221 ]
  %230 = phi ptr [ %268, %262 ], [ %223, %221 ]
  %231 = getelementptr inbounds %struct.BMEdge, ptr %230, i64 0, i32 4
  %232 = load ptr, ptr %231, align 8, !tbaa !70
  %233 = icmp eq ptr %232, null
  br i1 %233, label %239, label %234

234:                                              ; preds = %225
  %235 = getelementptr inbounds %struct.BMLoop, ptr %232, i64 0, i32 4
  %236 = load ptr, ptr %235, align 8, !tbaa !71
  %237 = icmp eq ptr %236, %232
  %238 = zext i1 %237 to i8
  br label %239

239:                                              ; preds = %234, %225
  %240 = phi i8 [ 0, %225 ], [ %238, %234 ]
  %241 = icmp eq i8 %240, 0
  br i1 %241, label %244, label %242

242:                                              ; preds = %239
  %243 = add i32 %228, 1
  br label %262

244:                                              ; preds = %239
  br i1 %233, label %254, label %245

245:                                              ; preds = %244
  %246 = getelementptr inbounds %struct.BMLoop, ptr %232, i64 0, i32 4
  %247 = load ptr, ptr %246, align 8, !tbaa !71
  %248 = icmp eq ptr %247, %232
  br i1 %248, label %254, label %249

249:                                              ; preds = %245
  %250 = getelementptr inbounds %struct.BMLoop, ptr %247, i64 0, i32 4
  %251 = load ptr, ptr %250, align 8, !tbaa !71
  %252 = icmp eq ptr %251, %232
  %253 = zext i1 %252 to i8
  br label %254

254:                                              ; preds = %249, %245, %244
  %255 = phi i8 [ 0, %245 ], [ 0, %244 ], [ %253, %249 ]
  %256 = icmp eq i8 %255, 0
  br i1 %256, label %259, label %257

257:                                              ; preds = %254
  %258 = add i32 %227, 1
  br label %262

259:                                              ; preds = %254
  %260 = zext i1 %233 to i32
  %261 = add i32 %226, %260
  br label %262

262:                                              ; preds = %259, %257, %242
  %263 = phi i32 [ %243, %242 ], [ %228, %257 ], [ %228, %259 ]
  %264 = phi i32 [ %227, %242 ], [ %258, %257 ], [ %227, %259 ]
  %265 = phi i32 [ %226, %242 ], [ %226, %257 ], [ %261, %259 ]
  %266 = add i32 %229, 1
  %267 = load ptr, ptr %45, align 8, !tbaa !47
  %268 = call ptr %267(ptr noundef nonnull %4) #3
  %269 = icmp eq ptr %268, null
  br i1 %269, label %270, label %225, !llvm.loop !73

270:                                              ; preds = %262, %221
  %271 = phi i32 [ 0, %221 ], [ %266, %262 ]
  %272 = phi i32 [ 0, %221 ], [ %263, %262 ]
  %273 = phi i32 [ 0, %221 ], [ %264, %262 ]
  %274 = phi i32 [ 0, %221 ], [ %265, %262 ]
  switch i32 %271, label %297 [
    i32 2, label %275
    i32 4, label %283
    i32 3, label %288
  ]

275:                                              ; preds = %270
  %276 = icmp eq i32 %274, 2
  br i1 %276, label %277, label %297

277:                                              ; preds = %275
  %278 = getelementptr inbounds %struct.BMVert, ptr %209, i64 0, i32 4
  %279 = load ptr, ptr %278, align 8, !tbaa !58
  %280 = call ptr @BM_vert_collapse_edge(ptr noundef nonnull %0, ptr noundef %279, ptr noundef nonnull %209, i8 noundef zeroext 1, i8 noundef zeroext 1) #3
  %281 = icmp ne ptr %280, null
  %282 = zext i1 %281 to i8
  br label %339

283:                                              ; preds = %270
  %284 = icmp ne i32 %272, 0
  %285 = icmp ne i32 %273, 4
  %286 = select i1 %284, i1 true, i1 %285
  %287 = select i1 %286, i32 0, i32 4
  br label %297

288:                                              ; preds = %270
  %289 = icmp eq i32 %272, 2
  %290 = icmp eq i32 %273, 1
  %291 = select i1 %289, i1 %290, i1 false
  br i1 %291, label %297, label %292

292:                                              ; preds = %288
  %293 = icmp ne i32 %272, 0
  %294 = icmp ne i32 %273, 3
  %295 = select i1 %293, i1 true, i1 %294
  %296 = select i1 %295, i32 0, i32 3
  br label %297

297:                                              ; preds = %292, %288, %283, %275, %270
  %298 = phi i1 [ true, %275 ], [ %286, %283 ], [ true, %270 ], [ false, %288 ], [ %295, %292 ]
  %299 = phi i32 [ 0, %275 ], [ %287, %283 ], [ 0, %270 ], [ 2, %288 ], [ %296, %292 ]
  br i1 %298, label %339, label %300

300:                                              ; preds = %297
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #3
  %301 = call i32 @BM_iter_as_array(ptr noundef nonnull %0, i8 noundef zeroext 6, ptr noundef nonnull %209, ptr noundef nonnull %5, i32 noundef %299) #3
  %302 = icmp eq i32 %299, 0
  br i1 %302, label %337, label %303

303:                                              ; preds = %300
  %304 = zext nneg i32 %299 to i64
  br label %305

305:                                              ; preds = %303, %334
  %306 = phi i64 [ 0, %303 ], [ %335, %334 ]
  %307 = getelementptr inbounds [4 x ptr], ptr %5, i64 0, i64 %306
  %308 = load ptr, ptr %307, align 8, !tbaa !34
  %309 = getelementptr inbounds %struct.BMLoop, ptr %308, i64 0, i32 3
  %310 = load ptr, ptr %309, align 8, !tbaa !74
  %311 = getelementptr inbounds %struct.BMFace, ptr %310, i64 0, i32 3
  %312 = load i32, ptr %311, align 8, !tbaa !75
  %313 = icmp sgt i32 %312, 3
  br i1 %313, label %314, label %334

314:                                              ; preds = %305
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #3
  %315 = getelementptr inbounds %struct.BMLoop, ptr %308, i64 0, i32 7
  %316 = load ptr, ptr %315, align 8, !tbaa !77
  %317 = getelementptr inbounds %struct.BMLoop, ptr %308, i64 0, i32 6
  %318 = load ptr, ptr %317, align 8, !tbaa !78
  %319 = call ptr @BM_face_split(ptr noundef nonnull %0, ptr noundef %310, ptr noundef %316, ptr noundef %318, ptr noundef nonnull %6, ptr noundef null, i8 noundef zeroext 1) #3
  %320 = load ptr, ptr %6, align 8, !tbaa !34
  %321 = getelementptr inbounds %struct.BMLoop, ptr %320, i64 0, i32 2
  %322 = load ptr, ptr %321, align 8, !tbaa !79
  %323 = getelementptr inbounds %struct.BMLoop, ptr %308, i64 0, i32 2
  %324 = load ptr, ptr %323, align 8, !tbaa !79
  %325 = load ptr, ptr %315, align 8, !tbaa !77
  %326 = getelementptr inbounds %struct.BMLoop, ptr %325, i64 0, i32 2
  %327 = load ptr, ptr %326, align 8, !tbaa !79
  %328 = getelementptr inbounds %struct.BMHeader, ptr %324, i64 0, i32 3
  %329 = load i8, ptr %328, align 1, !tbaa !50
  %330 = getelementptr inbounds %struct.BMHeader, ptr %327, i64 0, i32 3
  %331 = load i8, ptr %330, align 1, !tbaa !50
  %332 = or i8 %331, %329
  %333 = getelementptr inbounds %struct.BMHeader, ptr %322, i64 0, i32 3
  store i8 %332, ptr %333, align 1, !tbaa !50
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #3
  br label %334

334:                                              ; preds = %314, %305
  %335 = add nuw nsw i64 %306, 1
  %336 = icmp eq i64 %335, %304
  br i1 %336, label %337, label %305, !llvm.loop !80

337:                                              ; preds = %334, %300
  %338 = call zeroext i8 @BM_vert_dissolve(ptr noundef nonnull %0, ptr noundef nonnull %209) #3
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #3
  br label %339

339:                                              ; preds = %277, %297, %337
  %340 = phi i8 [ %282, %277 ], [ %338, %337 ], [ 0, %297 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #3
  %341 = icmp eq i8 %340, 0
  %342 = select i1 %341, i8 %207, i8 1
  br label %204, !llvm.loop !69

343:                                              ; preds = %215
  %344 = icmp eq i8 %207, 0
  %345 = add nuw nsw i32 %49, 1
  %346 = icmp eq i32 %345, %1
  %347 = select i1 %344, i1 true, i1 %346
  br i1 %347, label %348, label %46, !llvm.loop !81

348:                                              ; preds = %343, %36
  %349 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 7
  %350 = load i8, ptr %349, align 4, !tbaa !82
  %351 = or i8 %350, 1
  store i8 %351, ptr %349, align 4, !tbaa !82
  %352 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %352(ptr noundef %12) #3
  %353 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %353(ptr noundef %17) #3
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #3
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i8 @bm_vert_dissolve_fan_test(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.BMIter, align 8
  %3 = alloca [4 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #3
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #3
  %4 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 4
  store i8 4, ptr %4, align 4, !tbaa !44
  %5 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 1
  store ptr @bmiter__edge_of_vert_begin, ptr %5, align 8, !tbaa !46
  %6 = getelementptr inbounds %struct.BMIter, ptr %2, i64 0, i32 2
  store ptr @bmiter__edge_of_vert_step, ptr %6, align 8, !tbaa !47
  store ptr %0, ptr %2, align 8, !tbaa !49
  call void @bmiter__edge_of_vert_begin(ptr noundef nonnull %2) #3
  %7 = load ptr, ptr %6, align 8, !tbaa !47
  %8 = call ptr %7(ptr noundef nonnull %2) #3
  %9 = icmp eq ptr %8, null
  br i1 %9, label %69, label %10

10:                                               ; preds = %1, %52
  %11 = phi i64 [ %62, %52 ], [ 0, %1 ]
  %12 = phi i32 [ %50, %52 ], [ 0, %1 ]
  %13 = phi i32 [ %49, %52 ], [ 0, %1 ]
  %14 = phi i32 [ %48, %52 ], [ 0, %1 ]
  %15 = phi ptr [ %64, %52 ], [ %8, %1 ]
  %16 = getelementptr inbounds %struct.BMEdge, ptr %15, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !70
  %18 = icmp eq ptr %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %10
  %20 = getelementptr inbounds %struct.BMLoop, ptr %17, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !71
  %22 = icmp eq ptr %21, %17
  %23 = zext i1 %22 to i8
  br label %24

24:                                               ; preds = %10, %19
  %25 = phi i8 [ 0, %10 ], [ %23, %19 ]
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %24
  %28 = add i32 %14, 1
  br label %47

29:                                               ; preds = %24
  br i1 %18, label %39, label %30

30:                                               ; preds = %29
  %31 = getelementptr inbounds %struct.BMLoop, ptr %17, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !71
  %33 = icmp eq ptr %32, %17
  br i1 %33, label %39, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.BMLoop, ptr %32, i64 0, i32 4
  %36 = load ptr, ptr %35, align 8, !tbaa !71
  %37 = icmp eq ptr %36, %17
  %38 = zext i1 %37 to i8
  br label %39

39:                                               ; preds = %29, %30, %34
  %40 = phi i8 [ 0, %30 ], [ 0, %29 ], [ %38, %34 ]
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %39
  %43 = add i32 %13, 1
  br label %47

44:                                               ; preds = %39
  %45 = zext i1 %18 to i32
  %46 = add i32 %12, %45
  br label %47

47:                                               ; preds = %44, %42, %27
  %48 = phi i32 [ %28, %27 ], [ %14, %42 ], [ %14, %44 ]
  %49 = phi i32 [ %13, %27 ], [ %43, %42 ], [ %13, %44 ]
  %50 = phi i32 [ %12, %27 ], [ %12, %42 ], [ %46, %44 ]
  %51 = icmp eq i64 %11, 4
  br i1 %51, label %96, label %52

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.BMEdge, ptr %15, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !61
  %55 = icmp eq ptr %54, %0
  %56 = getelementptr inbounds %struct.BMEdge, ptr %15, i64 0, i32 3
  %57 = load ptr, ptr %56, align 8, !tbaa !64
  %58 = icmp eq ptr %57, %0
  %59 = select i1 %58, ptr %54, ptr null
  %60 = select i1 %55, ptr %57, ptr %59
  %61 = getelementptr inbounds [4 x ptr], ptr %3, i64 0, i64 %11
  store ptr %60, ptr %61, align 8, !tbaa !34
  %62 = add nuw nsw i64 %11, 1
  %63 = load ptr, ptr %6, align 8, !tbaa !47
  %64 = call ptr %63(ptr noundef nonnull %2) #3
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %10, !llvm.loop !83

66:                                               ; preds = %52
  %67 = trunc i64 %62 to i32
  %68 = icmp eq i32 %50, 2
  br label %69

69:                                               ; preds = %66, %1
  %70 = phi i32 [ 0, %1 ], [ %67, %66 ]
  %71 = phi i32 [ 0, %1 ], [ %48, %66 ]
  %72 = phi i32 [ 0, %1 ], [ %49, %66 ]
  %73 = phi i1 [ false, %1 ], [ %68, %66 ]
  %74 = icmp eq i32 %70, 4
  %75 = icmp eq i32 %71, 0
  %76 = select i1 %74, i1 %75, i1 false
  %77 = icmp eq i32 %72, 4
  %78 = select i1 %76, i1 %77, i1 false
  br i1 %78, label %89, label %79

79:                                               ; preds = %69
  %80 = icmp eq i32 %70, 3
  %81 = select i1 %80, i1 %75, i1 false
  %82 = icmp eq i32 %72, 3
  %83 = select i1 %81, i1 %82, i1 false
  br i1 %83, label %89, label %84

84:                                               ; preds = %79
  %85 = icmp eq i32 %71, 2
  %86 = select i1 %80, i1 %85, i1 false
  %87 = icmp eq i32 %72, 1
  %88 = select i1 %86, i1 %87, i1 false
  br i1 %88, label %89, label %92

89:                                               ; preds = %84, %79, %69
  %90 = call zeroext i8 @BM_face_exists(ptr noundef nonnull %3, i32 noundef %70, ptr noundef null) #3
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %96, label %95

92:                                               ; preds = %84
  %93 = icmp eq i32 %70, 2
  %94 = select i1 %93, i1 %73, i1 false
  br i1 %94, label %96, label %95

95:                                               ; preds = %92, %89
  br label %96

96:                                               ; preds = %47, %92, %89, %95
  %97 = phi i8 [ 0, %95 ], [ 1, %89 ], [ 1, %92 ], [ 0, %47 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #3
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #3
  ret i8 %97
}

; Function Attrs: nounwind uwtable
define dso_local void @BM_mesh_decimate_unsubdivide(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  tail call void @BM_mesh_decimate_unsubdivide_ex(ptr noundef %0, i32 noundef %1, i8 noundef zeroext 0)
  ret void
}

declare void @bmiter__elem_of_mesh_begin(ptr noundef) #2

declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #2

declare void @bmiter__edge_of_vert_begin(ptr noundef) #2

declare ptr @bmiter__edge_of_vert_step(ptr noundef) #2

declare zeroext i8 @BM_face_exists(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BM_vert_collapse_edge(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare i32 @BM_iter_as_array(ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @BM_face_split(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare zeroext i8 @BM_vert_dissolve(ptr noundef, ptr noundef) local_unnamed_addr #2

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
!34 = !{!35, !35, i64 0}
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !40, i64 0}
!39 = !{!"BMesh", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !36, i64 28, !36, i64 29, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !35, i64 72, !35, i64 80, !40, i64 88, !40, i64 92, !40, i64 96, !35, i64 104, !35, i64 112, !35, i64 120, !40, i64 128, !35, i64 136, !41, i64 144, !41, i64 344, !41, i64 544, !41, i64 744, !42, i64 944, !40, i64 948, !40, i64 952, !40, i64 956, !43, i64 960, !35, i64 976, !43, i64 984, !35, i64 1000}
!40 = !{!"int", !36, i64 0}
!41 = !{!"CustomData", !35, i64 0, !36, i64 8, !40, i64 172, !40, i64 176, !40, i64 180, !35, i64 184, !35, i64 192}
!42 = !{!"short", !36, i64 0}
!43 = !{!"ListBase", !35, i64 0, !35, i64 8}
!44 = !{!45, !36, i64 60}
!45 = !{!"BMIter", !36, i64 0, !35, i64 40, !35, i64 48, !40, i64 56, !36, i64 60}
!46 = !{!45, !35, i64 40}
!47 = !{!45, !35, i64 48}
!48 = !{!39, !35, i64 32}
!49 = !{!36, !36, i64 0}
!50 = !{!51, !36, i64 13}
!51 = !{!"BMHeader", !35, i64 0, !40, i64 8, !36, i64 12, !36, i64 13, !36, i64 14}
!52 = distinct !{!52, !53, !54}
!53 = !{!"llvm.loop.mustprogress"}
!54 = !{!"llvm.loop.unroll.disable"}
!55 = !{i8 0, i8 2}
!56 = !{!51, !40, i64 8}
!57 = distinct !{!57, !53, !54}
!58 = !{!59, !35, i64 48}
!59 = !{!"BMVert", !51, i64 0, !35, i64 16, !36, i64 24, !36, i64 36, !35, i64 48}
!60 = distinct !{!60, !53, !54}
!61 = !{!62, !35, i64 24}
!62 = !{!"BMEdge", !51, i64 0, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !63, i64 48, !63, i64 64}
!63 = !{!"BMDiskLink", !35, i64 0, !35, i64 8}
!64 = !{!62, !35, i64 32}
!65 = distinct !{!65, !53, !54}
!66 = distinct !{!66, !53, !54}
!67 = distinct !{!67, !53, !54}
!68 = distinct !{!68, !53, !54}
!69 = distinct !{!69, !53, !54}
!70 = !{!62, !35, i64 40}
!71 = !{!72, !35, i64 40}
!72 = !{!"BMLoop", !51, i64 0, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64}
!73 = distinct !{!73, !53, !54}
!74 = !{!72, !35, i64 32}
!75 = !{!76, !40, i64 32}
!76 = !{!"BMFace", !51, i64 0, !35, i64 16, !35, i64 24, !40, i64 32, !36, i64 36, !42, i64 48}
!77 = !{!72, !35, i64 64}
!78 = !{!72, !35, i64 56}
!79 = !{!72, !35, i64 24}
!80 = distinct !{!80, !53, !54}
!81 = distinct !{!81, !53, !54}
!82 = !{!39, !36, i64 28}
!83 = distinct !{!83, !53, !54}

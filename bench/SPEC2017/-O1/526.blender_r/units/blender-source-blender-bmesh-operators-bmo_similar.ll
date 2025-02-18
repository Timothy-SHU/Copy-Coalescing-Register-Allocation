; ModuleID = 'blender/source/blender/bmesh/operators/bmo_similar.c'
source_filename = "blender/source/blender/bmesh/operators/bmo_similar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.BMIter = type { %union.anon, ptr, ptr, i32, i8 }
%union.anon = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.BMOIter = type { ptr, i32, %struct.GHashIterator, ptr, i8 }
%struct.GHashIterator = type { ptr, ptr, i32 }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.ListBase = type { ptr, ptr }
%struct.BMFace = type { %struct.BMHeader, ptr, ptr, i32, [3 x float], i16 }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMFlagLayer = type { i16 }
%struct.SimSel_FaceExt = type { ptr, [3 x float], %union.anon.1 }
%union.anon.1 = type { ptr }
%struct.BMOperator = type { [16 x %struct.BMOpSlot], [16 x %struct.BMOpSlot], ptr, ptr, i32, i32, i32 }
%struct.BMOpSlot = type { ptr, i32, %union.eBMOpSlotSubType_Union, i32, %union.anon.0 }
%union.eBMOpSlotSubType_Union = type { i32 }
%union.anon.0 = type { ptr, [8 x i8] }
%struct.BMEdge = type { %struct.BMHeader, ptr, ptr, ptr, ptr, %struct.BMDiskLink, %struct.BMDiskLink }
%struct.BMDiskLink = type { ptr, ptr }
%struct.SimSel_EdgeExt = type { ptr, %union.anon.2, %union.anon.3 }
%union.anon.2 = type { [3 x float] }
%union.anon.3 = type { float }
%struct.BMVert = type { %struct.BMHeader, ptr, [3 x float], [3 x float], ptr }
%struct.SimSel_VertExt = type { ptr, %union.anon.4 }
%union.anon.4 = type { ptr }

@.str = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"thresh\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"compare\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"faces\00", align 1
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [20 x i8] c"face indices util.c\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"f_ext util.c\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str.6 = private unnamed_addr constant [10 x i8] c"faces.out\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"edges\00", align 1
@__func__.bmo_similar_edges_exec = private unnamed_addr constant [23 x i8] c"bmo_similar_edges_exec\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"edges.out\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"verts\00", align 1
@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str.10 = private unnamed_addr constant [15 x i8] c"vertex indices\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"vertex extra\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"verts.out\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @bmo_similar_faces_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = alloca %struct.BMOIter, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #5
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #5
  %5 = tail call i32 @BMO_slot_int_get(ptr noundef %1, ptr noundef nonnull @.str) #5
  %6 = tail call float @BMO_slot_float_get(ptr noundef %1, ptr noundef nonnull @.str.1) #5
  %7 = fmul float %6, 0x400921FB60000000
  %8 = tail call i32 @BMO_slot_int_get(ptr noundef %1, ptr noundef nonnull @.str.2) #5
  %9 = tail call i32 @BM_mesh_elem_count(ptr noundef %0, i8 noundef zeroext 8) #5
  %10 = call ptr @BMO_iter_new(ptr noundef nonnull %4, ptr noundef %1, ptr noundef nonnull @.str.3, i8 noundef zeroext 8) #5
  %11 = icmp eq ptr %10, null
  br i1 %11, label %33, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  br label %14

14:                                               ; preds = %12, %29
  %15 = phi ptr [ %10, %12 ], [ %31, %29 ]
  %16 = phi i32 [ 0, %12 ], [ %30, %29 ]
  %17 = getelementptr inbounds %struct.BMFace, ptr %15, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !34
  %19 = load i32, ptr %13, align 8, !tbaa !42
  %20 = sext i32 %19 to i64
  %21 = getelementptr %struct.BMFlagLayer, ptr %18, i64 %20
  %22 = getelementptr %struct.BMFlagLayer, ptr %21, i64 -1
  %23 = load i16, ptr %22, align 2, !tbaa !46
  %24 = and i16 %23, 1
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %14
  %27 = or disjoint i16 %23, 1
  store i16 %27, ptr %22, align 2, !tbaa !46
  %28 = add nsw i32 %16, 1
  br label %29

29:                                               ; preds = %14, %26
  %30 = phi i32 [ %16, %14 ], [ %28, %26 ]
  %31 = call ptr @BMO_iter_step(ptr noundef nonnull %4) #5
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %14, !llvm.loop !48

33:                                               ; preds = %29, %2
  %34 = phi i32 [ 0, %2 ], [ %30, %29 ]
  %35 = load ptr, ptr @MEM_callocN, align 8, !tbaa !51
  %36 = sext i32 %34 to i64
  %37 = shl nsw i64 %36, 2
  %38 = call ptr %35(i64 noundef %37, ptr noundef nonnull @.str.4) #5
  %39 = load ptr, ptr @MEM_callocN, align 8, !tbaa !51
  %40 = sext i32 %9 to i64
  %41 = shl nsw i64 %40, 5
  %42 = call ptr %39(i64 noundef %41, ptr noundef nonnull @.str.5) #5
  %43 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  store i8 3, ptr %43, align 4, !tbaa !52
  %44 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %44, align 8, !tbaa !54
  %45 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %45, align 8, !tbaa !55
  %46 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 12
  %47 = load ptr, ptr %46, align 8, !tbaa !56
  store ptr %47, ptr %3, align 8, !tbaa !57
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #5
  %48 = load ptr, ptr %45, align 8, !tbaa !55
  %49 = call ptr %48(ptr noundef nonnull %3) #5
  %50 = icmp eq ptr %49, null
  br i1 %50, label %78, label %51

51:                                               ; preds = %33
  %52 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  br label %53

53:                                               ; preds = %51, %72
  %54 = phi i64 [ 0, %51 ], [ %74, %72 ]
  %55 = phi ptr [ %49, %51 ], [ %76, %72 ]
  %56 = phi i32 [ 0, %51 ], [ %73, %72 ]
  %57 = getelementptr inbounds %struct.SimSel_FaceExt, ptr %42, i64 %54
  store ptr %55, ptr %57, align 8, !tbaa !58
  %58 = getelementptr inbounds %struct.BMFace, ptr %55, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !34
  %60 = load i32, ptr %52, align 8, !tbaa !42
  %61 = sext i32 %60 to i64
  %62 = getelementptr %struct.BMFlagLayer, ptr %59, i64 %61
  %63 = getelementptr %struct.BMFlagLayer, ptr %62, i64 -1
  %64 = load i16, ptr %63, align 2, !tbaa !46
  %65 = and i16 %64, 1
  %66 = icmp eq i16 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %53
  %68 = sext i32 %56 to i64
  %69 = getelementptr inbounds i32, ptr %38, i64 %68
  %70 = trunc i64 %54 to i32
  store i32 %70, ptr %69, align 4, !tbaa !60
  %71 = add nsw i32 %56, 1
  br label %72

72:                                               ; preds = %67, %53
  %73 = phi i32 [ %71, %67 ], [ %56, %53 ]
  %74 = add nuw i64 %54, 1
  %75 = load ptr, ptr %45, align 8, !tbaa !55
  %76 = call ptr %75(ptr noundef nonnull %3) #5
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %53, !llvm.loop !61

78:                                               ; preds = %72, %33
  switch i32 %5, label %143 [
    i32 207, label %79
    i32 205, label %79
    i32 203, label %79
    i32 202, label %79
  ]

79:                                               ; preds = %78, %78, %78, %78
  %80 = icmp sgt i32 %9, 0
  br i1 %80, label %81, label %143

81:                                               ; preds = %79
  %82 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 27
  %83 = zext nneg i32 %9 to i64
  br label %84

84:                                               ; preds = %81, %140
  %85 = phi i64 [ 0, %81 ], [ %141, %140 ]
  switch i32 %5, label %140 [
    i32 205, label %86
    i32 207, label %91
    i32 203, label %125
    i32 202, label %130
  ]

86:                                               ; preds = %84
  %87 = getelementptr inbounds %struct.SimSel_FaceExt, ptr %42, i64 %85
  %88 = load ptr, ptr %87, align 8, !tbaa !58
  %89 = call float @BM_face_calc_perimeter(ptr noundef %88) #5
  %90 = getelementptr inbounds %struct.SimSel_FaceExt, ptr %42, i64 %85, i32 2
  store float %89, ptr %90, align 8, !tbaa !57
  br label %140

91:                                               ; preds = %84
  %92 = getelementptr inbounds %struct.SimSel_FaceExt, ptr %42, i64 %85
  %93 = load ptr, ptr %92, align 8, !tbaa !58
  %94 = getelementptr inbounds %struct.SimSel_FaceExt, ptr %42, i64 %85, i32 1
  call void @BM_face_calc_center_mean(ptr noundef %93, ptr noundef nonnull %94) #5
  %95 = load ptr, ptr %92, align 8, !tbaa !58
  %96 = getelementptr inbounds %struct.BMFace, ptr %95, i64 0, i32 4
  %97 = load float, ptr %96, align 4, !tbaa !62
  %98 = getelementptr inbounds %struct.BMFace, ptr %95, i64 0, i32 4, i64 1
  %99 = load float, ptr %98, align 4, !tbaa !62
  %100 = getelementptr inbounds %struct.BMFace, ptr %95, i64 0, i32 4, i64 2
  %101 = load float, ptr %100, align 4, !tbaa !62
  %102 = fmul float %99, %99
  %103 = call float @llvm.fmuladd.f32(float %97, float %97, float %102)
  %104 = call float @llvm.fmuladd.f32(float %101, float %101, float %103)
  %105 = fcmp ogt float %104, 0x38AA95A5C0000000
  br i1 %105, label %106, label %112

106:                                              ; preds = %91
  %107 = call float @sqrtf(float noundef %104) #5
  %108 = fdiv float 1.000000e+00, %107
  %109 = fmul float %97, %108
  %110 = fmul float %99, %108
  %111 = fmul float %101, %108
  br label %112

112:                                              ; preds = %91, %106
  %113 = phi float [ %110, %106 ], [ 0.000000e+00, %91 ]
  %114 = phi float [ %109, %106 ], [ 0.000000e+00, %91 ]
  %115 = phi float [ %111, %106 ], [ 0.000000e+00, %91 ]
  %116 = load float, ptr %94, align 4, !tbaa !62
  %117 = getelementptr inbounds float, ptr %94, i64 1
  %118 = load float, ptr %117, align 4, !tbaa !62
  %119 = fmul float %113, %118
  %120 = call float @llvm.fmuladd.f32(float %114, float %116, float %119)
  %121 = getelementptr inbounds float, ptr %94, i64 2
  %122 = load float, ptr %121, align 4, !tbaa !62
  %123 = call float @llvm.fmuladd.f32(float %115, float %122, float %120)
  %124 = getelementptr inbounds %struct.SimSel_FaceExt, ptr %42, i64 %85, i32 2
  store float %123, ptr %124, align 8, !tbaa !57
  br label %140

125:                                              ; preds = %84
  %126 = getelementptr inbounds %struct.SimSel_FaceExt, ptr %42, i64 %85
  %127 = load ptr, ptr %126, align 8, !tbaa !58
  %128 = call float @BM_face_calc_area(ptr noundef %127) #5
  %129 = getelementptr inbounds %struct.SimSel_FaceExt, ptr %42, i64 %85, i32 2
  store float %128, ptr %129, align 8, !tbaa !57
  br label %140

130:                                              ; preds = %84
  %131 = getelementptr inbounds %struct.SimSel_FaceExt, ptr %42, i64 %85, i32 2
  store ptr null, ptr %131, align 8, !tbaa !57
  %132 = call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %82, i32 noundef 15) #5
  %133 = icmp eq i8 %132, 0
  br i1 %133, label %140, label %134

134:                                              ; preds = %130
  %135 = getelementptr inbounds %struct.SimSel_FaceExt, ptr %42, i64 %85
  %136 = load ptr, ptr %135, align 8, !tbaa !58
  %137 = load ptr, ptr %136, align 8, !tbaa !64
  %138 = call ptr @CustomData_bmesh_get(ptr noundef nonnull %82, ptr noundef %137, i32 noundef 15) #5
  %139 = load ptr, ptr %138, align 8, !tbaa !65
  store ptr %139, ptr %131, align 8, !tbaa !57
  br label %140

140:                                              ; preds = %86, %112, %125, %84, %134, %130
  %141 = add nuw nsw i64 %85, 1
  %142 = icmp eq i64 %141, %83
  br i1 %142, label %143, label %84, !llvm.loop !67

143:                                              ; preds = %140, %79, %78
  %144 = icmp sgt i32 %9, 0
  br i1 %144, label %145, label %287

145:                                              ; preds = %143
  %146 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %147 = icmp slt i32 %34, 1
  %148 = sext i32 %34 to i64
  %149 = zext nneg i32 %9 to i64
  br label %150

150:                                              ; preds = %145, %284
  %151 = phi i64 [ 0, %145 ], [ %285, %284 ]
  %152 = getelementptr inbounds %struct.SimSel_FaceExt, ptr %42, i64 %151
  %153 = load ptr, ptr %152, align 8, !tbaa !58
  %154 = getelementptr inbounds %struct.BMFace, ptr %153, i64 0, i32 1
  %155 = load ptr, ptr %154, align 8, !tbaa !34
  %156 = load i32, ptr %146, align 8, !tbaa !42
  %157 = sext i32 %156 to i64
  %158 = getelementptr %struct.BMFlagLayer, ptr %155, i64 %157
  %159 = getelementptr %struct.BMFlagLayer, ptr %158, i64 -1
  %160 = load i16, ptr %159, align 2, !tbaa !46
  %161 = and i16 %160, 1
  %162 = icmp eq i16 %161, 0
  br i1 %162, label %163, label %284

163:                                              ; preds = %150
  %164 = getelementptr inbounds %struct.BMHeader, ptr %153, i64 0, i32 3
  %165 = load i8, ptr %164, align 1, !tbaa !68
  %166 = and i8 %165, 2
  %167 = icmp ne i8 %166, 0
  %168 = or i1 %167, %147
  br i1 %168, label %284, label %169

169:                                              ; preds = %163
  %170 = getelementptr inbounds %struct.SimSel_FaceExt, ptr %42, i64 %151, i32 2
  %171 = getelementptr inbounds %struct.BMFace, ptr %153, i64 0, i32 3
  %172 = getelementptr inbounds %struct.SimSel_FaceExt, ptr %42, i64 %151, i32 2
  %173 = getelementptr inbounds %struct.BMFace, ptr %153, i64 0, i32 4
  %174 = getelementptr inbounds %struct.SimSel_FaceExt, ptr %42, i64 %151, i32 2
  %175 = getelementptr inbounds %struct.BMFace, ptr %153, i64 0, i32 4
  %176 = getelementptr inbounds %struct.SimSel_FaceExt, ptr %42, i64 %151, i32 2
  %177 = getelementptr inbounds %struct.BMFace, ptr %153, i64 0, i32 5
  br label %178

178:                                              ; preds = %169, %278
  %179 = phi i64 [ 0, %169 ], [ %280, %278 ]
  %180 = phi i8 [ 1, %169 ], [ %279, %278 ]
  %181 = getelementptr inbounds i32, ptr %38, i64 %179
  %182 = load i32, ptr %181, align 4, !tbaa !60
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.SimSel_FaceExt, ptr %42, i64 %183
  %185 = load ptr, ptr %184, align 8, !tbaa !58
  switch i32 %5, label %278 [
    i32 201, label %186
    i32 202, label %191
    i32 206, label %196
    i32 207, label %200
    i32 203, label %222
    i32 204, label %238
    i32 205, label %254
  ]

186:                                              ; preds = %178
  %187 = load i16, ptr %177, align 8, !tbaa !69
  %188 = getelementptr inbounds %struct.BMFace, ptr %185, i64 0, i32 5
  %189 = load i16, ptr %188, align 8, !tbaa !69
  %190 = icmp eq i16 %187, %189
  br i1 %190, label %270, label %278

191:                                              ; preds = %178
  %192 = load ptr, ptr %176, align 8, !tbaa !57
  %193 = getelementptr inbounds %struct.SimSel_FaceExt, ptr %42, i64 %183, i32 2
  %194 = load ptr, ptr %193, align 8, !tbaa !57
  %195 = icmp eq ptr %192, %194
  br i1 %195, label %270, label %278

196:                                              ; preds = %178
  %197 = getelementptr inbounds %struct.BMFace, ptr %185, i64 0, i32 4
  %198 = call float @angle_normalized_v3v3(ptr noundef nonnull %197, ptr noundef nonnull %175) #5
  %199 = fcmp ugt float %198, %7
  br i1 %199, label %278, label %270

200:                                              ; preds = %178
  %201 = getelementptr inbounds %struct.BMFace, ptr %185, i64 0, i32 4
  %202 = call float @angle_normalized_v3v3(ptr noundef nonnull %201, ptr noundef nonnull %173) #5
  %203 = fcmp ugt float %202, %7
  br i1 %203, label %278, label %204

204:                                              ; preds = %200
  %205 = load float, ptr %174, align 8, !tbaa !57
  %206 = load i32, ptr %181, align 4, !tbaa !60
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.SimSel_FaceExt, ptr %42, i64 %207, i32 2
  %209 = load float, ptr %208, align 8, !tbaa !57
  %210 = fsub float %205, %209
  switch i32 %8, label %278 [
    i32 0, label %211
    i32 1, label %214
    i32 2, label %217
  ]

211:                                              ; preds = %204
  %212 = call float @llvm.fabs.f32(float %210)
  %213 = fcmp ole float %212, %6
  br label %220

214:                                              ; preds = %204
  %215 = fadd float %6, %210
  %216 = fcmp oge float %215, 0.000000e+00
  br label %220

217:                                              ; preds = %204
  %218 = fsub float %210, %6
  %219 = fcmp ole float %218, 0.000000e+00
  br label %220

220:                                              ; preds = %211, %214, %217
  %221 = phi i1 [ %219, %217 ], [ %216, %214 ], [ %213, %211 ]
  br i1 %221, label %270, label %278

222:                                              ; preds = %178
  %223 = load float, ptr %172, align 8, !tbaa !57
  %224 = getelementptr inbounds %struct.SimSel_FaceExt, ptr %42, i64 %183, i32 2
  %225 = load float, ptr %224, align 8, !tbaa !57
  %226 = fsub float %223, %225
  switch i32 %8, label %278 [
    i32 0, label %227
    i32 1, label %230
    i32 2, label %233
  ]

227:                                              ; preds = %222
  %228 = call float @llvm.fabs.f32(float %226)
  %229 = fcmp ole float %228, %6
  br label %236

230:                                              ; preds = %222
  %231 = fadd float %6, %226
  %232 = fcmp oge float %231, 0.000000e+00
  br label %236

233:                                              ; preds = %222
  %234 = fsub float %226, %6
  %235 = fcmp ole float %234, 0.000000e+00
  br label %236

236:                                              ; preds = %227, %230, %233
  %237 = phi i1 [ %235, %233 ], [ %232, %230 ], [ %229, %227 ]
  br i1 %237, label %270, label %278

238:                                              ; preds = %178
  %239 = load i32, ptr %171, align 8, !tbaa !70
  %240 = getelementptr inbounds %struct.BMFace, ptr %185, i64 0, i32 3
  %241 = load i32, ptr %240, align 8, !tbaa !70
  %242 = sub nsw i32 %239, %241
  switch i32 %8, label %251 [
    i32 0, label %243
    i32 1, label %246
    i32 2, label %249
  ]

243:                                              ; preds = %238
  %244 = icmp eq i32 %239, %241
  %245 = zext i1 %244 to i32
  br label %251

246:                                              ; preds = %238
  %247 = icmp sgt i32 %242, 0
  %248 = zext i1 %247 to i32
  br label %251

249:                                              ; preds = %238
  %250 = lshr i32 %242, 31
  br label %251

251:                                              ; preds = %238, %243, %246, %249
  %252 = phi i32 [ %250, %249 ], [ %248, %246 ], [ %245, %243 ], [ 0, %238 ]
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %278, label %270

254:                                              ; preds = %178
  %255 = load float, ptr %170, align 8, !tbaa !57
  %256 = getelementptr inbounds %struct.SimSel_FaceExt, ptr %42, i64 %183, i32 2
  %257 = load float, ptr %256, align 8, !tbaa !57
  %258 = fsub float %255, %257
  switch i32 %8, label %278 [
    i32 0, label %259
    i32 1, label %262
    i32 2, label %265
  ]

259:                                              ; preds = %254
  %260 = call float @llvm.fabs.f32(float %258)
  %261 = fcmp ole float %260, %6
  br label %268

262:                                              ; preds = %254
  %263 = fadd float %6, %258
  %264 = fcmp oge float %263, 0.000000e+00
  br label %268

265:                                              ; preds = %254
  %266 = fsub float %258, %6
  %267 = fcmp ole float %266, 0.000000e+00
  br label %268

268:                                              ; preds = %259, %262, %265
  %269 = phi i1 [ %267, %265 ], [ %264, %262 ], [ %261, %259 ]
  br i1 %269, label %270, label %278

270:                                              ; preds = %268, %251, %236, %220, %196, %191, %186
  %271 = load ptr, ptr %154, align 8, !tbaa !34
  %272 = load i32, ptr %146, align 8, !tbaa !42
  %273 = sext i32 %272 to i64
  %274 = getelementptr %struct.BMFlagLayer, ptr %271, i64 %273
  %275 = getelementptr %struct.BMFlagLayer, ptr %274, i64 -1
  %276 = load i16, ptr %275, align 2, !tbaa !46
  %277 = or i16 %276, 1
  store i16 %277, ptr %275, align 2, !tbaa !46
  br label %278

278:                                              ; preds = %270, %254, %222, %204, %186, %191, %196, %220, %200, %236, %251, %268, %178
  %279 = phi i8 [ %180, %178 ], [ %180, %268 ], [ %180, %251 ], [ %180, %236 ], [ %180, %220 ], [ %180, %200 ], [ %180, %196 ], [ %180, %191 ], [ %180, %186 ], [ %180, %204 ], [ %180, %222 ], [ %180, %254 ], [ 0, %270 ]
  %280 = add nuw nsw i64 %179, 1
  %281 = icmp slt i64 %280, %148
  %282 = icmp eq i8 %279, 1
  %283 = select i1 %281, i1 %282, i1 false
  br i1 %283, label %178, label %284, !llvm.loop !71

284:                                              ; preds = %278, %163, %150
  %285 = add nuw nsw i64 %151, 1
  %286 = icmp eq i64 %285, %149
  br i1 %286, label %287, label %150, !llvm.loop !72

287:                                              ; preds = %284, %143
  %288 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  call void %288(ptr noundef %42) #5
  %289 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  call void %289(ptr noundef %38) #5
  %290 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 1
  call void @BMO_slot_buffer_from_enabled_flag(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %290, ptr noundef nonnull @.str.6, i8 noundef zeroext 8, i16 noundef signext 1) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @BMO_slot_int_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare float @BMO_slot_float_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BM_mesh_elem_count(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @BMO_iter_new(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @BMO_iter_step(ptr noundef) local_unnamed_addr #2

declare float @BM_face_calc_perimeter(ptr noundef) local_unnamed_addr #2

declare void @BM_face_calc_center_mean(ptr noundef, ptr noundef) local_unnamed_addr #2

declare float @BM_face_calc_area(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @CustomData_has_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @CustomData_bmesh_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare float @angle_normalized_v3v3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BMO_slot_buffer_from_enabled_flag(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @bmo_similar_edges_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMOIter, align 8
  %4 = alloca %struct.BMIter, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #5
  %5 = tail call i32 @BMO_slot_int_get(ptr noundef %1, ptr noundef nonnull @.str) #5
  %6 = tail call float @BMO_slot_float_get(ptr noundef %1, ptr noundef nonnull @.str.1) #5
  %7 = tail call i32 @BMO_slot_int_get(ptr noundef %1, ptr noundef nonnull @.str.2) #5
  switch i32 %5, label %16 [
    i32 105, label %8
    i32 106, label %12
  ]

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 25
  %10 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %9, i32 noundef 30) #5
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %346, label %16

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 25
  %14 = tail call zeroext i8 @CustomData_has_layer(ptr noundef nonnull %13, i32 noundef 29) #5
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %346, label %16

16:                                               ; preds = %12, %8, %2
  %17 = tail call i32 @BM_mesh_elem_count(ptr noundef %0, i8 noundef zeroext 2) #5
  %18 = call ptr @BMO_iter_new(ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.7, i8 noundef zeroext 2) #5
  %19 = icmp eq ptr %18, null
  br i1 %19, label %36, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  br label %22

22:                                               ; preds = %20, %22
  %23 = phi ptr [ %18, %20 ], [ %34, %22 ]
  %24 = phi i32 [ 0, %20 ], [ %33, %22 ]
  %25 = getelementptr inbounds %struct.BMEdge, ptr %23, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !73
  %27 = load i32, ptr %21, align 8, !tbaa !42
  %28 = sext i32 %27 to i64
  %29 = getelementptr %struct.BMFlagLayer, ptr %26, i64 %28
  %30 = getelementptr %struct.BMFlagLayer, ptr %29, i64 -1
  %31 = load i16, ptr %30, align 2, !tbaa !46
  %32 = or i16 %31, 1
  store i16 %32, ptr %30, align 2, !tbaa !46
  %33 = add nuw nsw i32 %24, 1
  %34 = call ptr @BMO_iter_step(ptr noundef nonnull %3) #5
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %22, !llvm.loop !76

36:                                               ; preds = %22, %16
  %37 = phi i32 [ 0, %16 ], [ %33, %22 ]
  %38 = load ptr, ptr @MEM_callocN, align 8, !tbaa !51
  %39 = zext nneg i32 %37 to i64
  %40 = shl nuw nsw i64 %39, 2
  %41 = call ptr %38(i64 noundef %40, ptr noundef nonnull @__func__.bmo_similar_edges_exec) #5
  %42 = load ptr, ptr @MEM_callocN, align 8, !tbaa !51
  %43 = sext i32 %17 to i64
  %44 = mul nsw i64 %43, 24
  %45 = call ptr %42(i64 noundef %44, ptr noundef nonnull @__func__.bmo_similar_edges_exec) #5
  %46 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  store i8 2, ptr %46, align 4, !tbaa !52
  %47 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %47, align 8, !tbaa !54
  %48 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %48, align 8, !tbaa !55
  %49 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 10
  %50 = load ptr, ptr %49, align 8, !tbaa !77
  store ptr %50, ptr %4, align 8, !tbaa !57
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %4) #5
  %51 = load ptr, ptr %48, align 8, !tbaa !55
  %52 = call ptr %51(ptr noundef nonnull %4) #5
  %53 = icmp eq ptr %52, null
  br i1 %53, label %81, label %54

54:                                               ; preds = %36
  %55 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  br label %56

56:                                               ; preds = %54, %75
  %57 = phi i64 [ 0, %54 ], [ %77, %75 ]
  %58 = phi ptr [ %52, %54 ], [ %79, %75 ]
  %59 = phi i32 [ 0, %54 ], [ %76, %75 ]
  %60 = getelementptr inbounds %struct.SimSel_EdgeExt, ptr %45, i64 %57
  store ptr %58, ptr %60, align 8, !tbaa !78
  %61 = getelementptr inbounds %struct.BMEdge, ptr %58, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !73
  %63 = load i32, ptr %55, align 8, !tbaa !42
  %64 = sext i32 %63 to i64
  %65 = getelementptr %struct.BMFlagLayer, ptr %62, i64 %64
  %66 = getelementptr %struct.BMFlagLayer, ptr %65, i64 -1
  %67 = load i16, ptr %66, align 2, !tbaa !46
  %68 = and i16 %67, 1
  %69 = icmp eq i16 %68, 0
  br i1 %69, label %75, label %70

70:                                               ; preds = %56
  %71 = sext i32 %59 to i64
  %72 = getelementptr inbounds i32, ptr %41, i64 %71
  %73 = trunc i64 %57 to i32
  store i32 %73, ptr %72, align 4, !tbaa !60
  %74 = add nsw i32 %59, 1
  br label %75

75:                                               ; preds = %70, %56
  %76 = phi i32 [ %74, %70 ], [ %59, %56 ]
  %77 = add nuw i64 %57, 1
  %78 = load ptr, ptr %48, align 8, !tbaa !55
  %79 = call ptr %78(ptr noundef nonnull %4) #5
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %56, !llvm.loop !80

81:                                               ; preds = %75, %36
  %82 = add i32 %5, -101
  %83 = icmp ult i32 %82, 4
  %84 = icmp sgt i32 %17, 0
  %85 = select i1 %83, i1 %84, i1 false
  br i1 %85, label %86, label %176

86:                                               ; preds = %81
  %87 = zext i32 %17 to i64
  br label %88

88:                                               ; preds = %86, %173
  %89 = phi i64 [ 0, %86 ], [ %174, %173 ]
  switch i32 %5, label %173 [
    i32 101, label %90
    i32 102, label %117
    i32 103, label %158
    i32 104, label %163
  ]

90:                                               ; preds = %88
  %91 = getelementptr inbounds %struct.SimSel_EdgeExt, ptr %45, i64 %89
  %92 = load ptr, ptr %91, align 8, !tbaa !78
  %93 = getelementptr inbounds %struct.BMEdge, ptr %92, i64 0, i32 2
  %94 = load ptr, ptr %93, align 8, !tbaa !81
  %95 = getelementptr inbounds %struct.BMVert, ptr %94, i64 0, i32 2
  %96 = getelementptr inbounds %struct.BMEdge, ptr %92, i64 0, i32 3
  %97 = load ptr, ptr %96, align 8, !tbaa !82
  %98 = getelementptr inbounds %struct.BMVert, ptr %97, i64 0, i32 2
  %99 = load float, ptr %98, align 4, !tbaa !62
  %100 = load float, ptr %95, align 4, !tbaa !62
  %101 = fsub float %99, %100
  %102 = getelementptr inbounds %struct.BMVert, ptr %97, i64 0, i32 2, i64 1
  %103 = load float, ptr %102, align 4, !tbaa !62
  %104 = getelementptr inbounds %struct.BMVert, ptr %94, i64 0, i32 2, i64 1
  %105 = load float, ptr %104, align 4, !tbaa !62
  %106 = fsub float %103, %105
  %107 = getelementptr inbounds %struct.BMVert, ptr %97, i64 0, i32 2, i64 2
  %108 = load float, ptr %107, align 4, !tbaa !62
  %109 = getelementptr inbounds %struct.BMVert, ptr %94, i64 0, i32 2, i64 2
  %110 = load float, ptr %109, align 4, !tbaa !62
  %111 = fsub float %108, %110
  %112 = fmul float %106, %106
  %113 = call float @llvm.fmuladd.f32(float %101, float %101, float %112)
  %114 = call float @llvm.fmuladd.f32(float %111, float %111, float %113)
  %115 = call float @sqrtf(float noundef %114) #5
  %116 = getelementptr inbounds %struct.SimSel_EdgeExt, ptr %45, i64 %89, i32 2
  store float %115, ptr %116, align 4, !tbaa !57
  br label %173

117:                                              ; preds = %88
  %118 = getelementptr inbounds %struct.SimSel_EdgeExt, ptr %45, i64 %89
  %119 = getelementptr inbounds %struct.SimSel_EdgeExt, ptr %45, i64 %89, i32 1
  %120 = load ptr, ptr %118, align 8, !tbaa !78
  %121 = getelementptr inbounds %struct.BMEdge, ptr %120, i64 0, i32 2
  %122 = load ptr, ptr %121, align 8, !tbaa !81
  %123 = getelementptr inbounds %struct.BMVert, ptr %122, i64 0, i32 2
  %124 = getelementptr inbounds %struct.BMEdge, ptr %120, i64 0, i32 3
  %125 = load ptr, ptr %124, align 8, !tbaa !82
  %126 = getelementptr inbounds %struct.BMVert, ptr %125, i64 0, i32 2
  %127 = load float, ptr %123, align 4, !tbaa !62
  %128 = load float, ptr %126, align 4, !tbaa !62
  %129 = fsub float %127, %128
  store float %129, ptr %119, align 4, !tbaa !62
  %130 = getelementptr inbounds %struct.BMVert, ptr %122, i64 0, i32 2, i64 1
  %131 = load float, ptr %130, align 4, !tbaa !62
  %132 = getelementptr inbounds %struct.BMVert, ptr %125, i64 0, i32 2, i64 1
  %133 = load float, ptr %132, align 4, !tbaa !62
  %134 = fsub float %131, %133
  %135 = getelementptr inbounds float, ptr %119, i64 1
  store float %134, ptr %135, align 4, !tbaa !62
  %136 = getelementptr inbounds %struct.BMVert, ptr %122, i64 0, i32 2, i64 2
  %137 = load float, ptr %136, align 4, !tbaa !62
  %138 = getelementptr inbounds %struct.BMVert, ptr %125, i64 0, i32 2, i64 2
  %139 = load float, ptr %138, align 4, !tbaa !62
  %140 = fsub float %137, %139
  %141 = getelementptr inbounds float, ptr %119, i64 2
  store float %140, ptr %141, align 4, !tbaa !62
  %142 = fmul float %134, %134
  %143 = call float @llvm.fmuladd.f32(float %129, float %129, float %142)
  %144 = call float @llvm.fmuladd.f32(float %140, float %140, float %143)
  %145 = fcmp ogt float %144, 0x38AA95A5C0000000
  br i1 %145, label %146, label %155

146:                                              ; preds = %117
  %147 = call float @sqrtf(float noundef %144) #5
  %148 = fdiv float 1.000000e+00, %147
  %149 = load float, ptr %119, align 4, !tbaa !62
  %150 = fmul float %149, %148
  store float %150, ptr %119, align 4, !tbaa !62
  %151 = load float, ptr %135, align 4, !tbaa !62
  %152 = fmul float %148, %151
  store float %152, ptr %135, align 4, !tbaa !62
  %153 = load float, ptr %141, align 4, !tbaa !62
  %154 = fmul float %148, %153
  br label %156

155:                                              ; preds = %117
  store float 0.000000e+00, ptr %119, align 4, !tbaa !62
  store float 0.000000e+00, ptr %135, align 4, !tbaa !62
  br label %156

156:                                              ; preds = %146, %155
  %157 = phi float [ 0.000000e+00, %155 ], [ %154, %146 ]
  store float %157, ptr %141, align 4, !tbaa !62
  br label %173

158:                                              ; preds = %88
  %159 = getelementptr inbounds %struct.SimSel_EdgeExt, ptr %45, i64 %89
  %160 = load ptr, ptr %159, align 8, !tbaa !78
  %161 = call i32 @BM_edge_face_count(ptr noundef %160) #5
  %162 = getelementptr inbounds %struct.SimSel_EdgeExt, ptr %45, i64 %89, i32 2
  store i32 %161, ptr %162, align 4, !tbaa !57
  br label %173

163:                                              ; preds = %88
  %164 = getelementptr inbounds %struct.SimSel_EdgeExt, ptr %45, i64 %89
  %165 = load ptr, ptr %164, align 8, !tbaa !78
  %166 = call i32 @BM_edge_face_count(ptr noundef %165) #5
  %167 = getelementptr inbounds %struct.SimSel_EdgeExt, ptr %45, i64 %89, i32 2
  store i32 %166, ptr %167, align 4, !tbaa !57
  %168 = icmp eq i32 %166, 2
  br i1 %168, label %169, label %173

169:                                              ; preds = %163
  %170 = load ptr, ptr %164, align 8, !tbaa !78
  %171 = call float @BM_edge_calc_face_angle(ptr noundef %170) #5
  %172 = getelementptr inbounds %struct.SimSel_EdgeExt, ptr %45, i64 %89, i32 1
  store float %171, ptr %172, align 8, !tbaa !57
  br label %173

173:                                              ; preds = %90, %156, %158, %88, %169, %163
  %174 = add nuw nsw i64 %89, 1
  %175 = icmp eq i64 %174, %87
  br i1 %175, label %176, label %88, !llvm.loop !83

176:                                              ; preds = %173, %81
  %177 = icmp sgt i32 %17, 0
  br i1 %177, label %178, label %342

178:                                              ; preds = %176
  %179 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %180 = icmp eq i32 %37, 0
  %181 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 25
  %182 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 25
  %183 = zext i32 %37 to i64
  %184 = zext nneg i32 %17 to i64
  br label %185

185:                                              ; preds = %178, %339
  %186 = phi i64 [ 0, %178 ], [ %340, %339 ]
  %187 = getelementptr inbounds %struct.SimSel_EdgeExt, ptr %45, i64 %186
  %188 = load ptr, ptr %187, align 8, !tbaa !78
  %189 = getelementptr inbounds %struct.BMEdge, ptr %188, i64 0, i32 1
  %190 = load ptr, ptr %189, align 8, !tbaa !73
  %191 = load i32, ptr %179, align 8, !tbaa !42
  %192 = sext i32 %191 to i64
  %193 = getelementptr %struct.BMFlagLayer, ptr %190, i64 %192
  %194 = getelementptr %struct.BMFlagLayer, ptr %193, i64 -1
  %195 = load i16, ptr %194, align 2, !tbaa !46
  %196 = and i16 %195, 1
  %197 = icmp eq i16 %196, 0
  br i1 %197, label %198, label %339

198:                                              ; preds = %185
  %199 = getelementptr inbounds %struct.BMHeader, ptr %188, i64 0, i32 3
  %200 = load i8, ptr %199, align 1, !tbaa !68
  %201 = and i8 %200, 2
  %202 = icmp ne i8 %201, 0
  %203 = or i1 %202, %180
  br i1 %203, label %339, label %204

204:                                              ; preds = %198
  %205 = getelementptr inbounds %struct.SimSel_EdgeExt, ptr %45, i64 %186, i32 2
  %206 = getelementptr inbounds %struct.SimSel_EdgeExt, ptr %45, i64 %186, i32 1
  %207 = getelementptr inbounds %struct.SimSel_EdgeExt, ptr %45, i64 %186, i32 2
  %208 = getelementptr inbounds %struct.SimSel_EdgeExt, ptr %45, i64 %186, i32 1
  %209 = getelementptr inbounds %struct.SimSel_EdgeExt, ptr %45, i64 %186, i32 2
  br label %210

210:                                              ; preds = %204, %333
  %211 = phi i64 [ 0, %204 ], [ %335, %333 ]
  %212 = phi i8 [ 1, %204 ], [ %334, %333 ]
  %213 = getelementptr inbounds i32, ptr %41, i64 %211
  %214 = load i32, ptr %213, align 4, !tbaa !60
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds %struct.SimSel_EdgeExt, ptr %45, i64 %215
  %217 = load ptr, ptr %216, align 8, !tbaa !78
  switch i32 %5, label %333 [
    i32 101, label %218
    i32 102, label %234
    i32 103, label %243
    i32 104, label %259
    i32 105, label %273
    i32 106, label %292
    i32 107, label %311
    i32 108, label %318
  ]

218:                                              ; preds = %210
  %219 = load float, ptr %209, align 4, !tbaa !57
  %220 = getelementptr inbounds %struct.SimSel_EdgeExt, ptr %45, i64 %215, i32 2
  %221 = load float, ptr %220, align 4, !tbaa !57
  %222 = fsub float %219, %221
  switch i32 %7, label %333 [
    i32 0, label %223
    i32 1, label %226
    i32 2, label %229
  ]

223:                                              ; preds = %218
  %224 = call float @llvm.fabs.f32(float %222)
  %225 = fcmp ole float %224, %6
  br label %232

226:                                              ; preds = %218
  %227 = fadd float %6, %222
  %228 = fcmp oge float %227, 0.000000e+00
  br label %232

229:                                              ; preds = %218
  %230 = fsub float %222, %6
  %231 = fcmp ole float %230, 0.000000e+00
  br label %232

232:                                              ; preds = %223, %226, %229
  %233 = phi i1 [ %231, %229 ], [ %228, %226 ], [ %225, %223 ]
  br i1 %233, label %325, label %333

234:                                              ; preds = %210
  %235 = getelementptr inbounds %struct.SimSel_EdgeExt, ptr %45, i64 %215, i32 1
  %236 = call float @angle_normalized_v3v3(ptr noundef nonnull %208, ptr noundef nonnull %235) #5
  %237 = fcmp ogt float %236, 0x3FF921FB60000000
  %238 = fadd float %236, 0xC00921FB60000000
  %239 = call float @llvm.fabs.f32(float %238)
  %240 = select i1 %237, float %239, float %236
  %241 = fdiv float %240, 0x3FF921FB60000000
  %242 = fcmp ugt float %241, %6
  br i1 %242, label %333, label %325

243:                                              ; preds = %210
  %244 = load i32, ptr %207, align 4, !tbaa !57
  %245 = getelementptr inbounds %struct.SimSel_EdgeExt, ptr %45, i64 %215, i32 2
  %246 = load i32, ptr %245, align 4, !tbaa !57
  %247 = sub nsw i32 %244, %246
  switch i32 %7, label %256 [
    i32 0, label %248
    i32 1, label %251
    i32 2, label %254
  ]

248:                                              ; preds = %243
  %249 = icmp eq i32 %244, %246
  %250 = zext i1 %249 to i32
  br label %256

251:                                              ; preds = %243
  %252 = icmp sgt i32 %247, 0
  %253 = zext i1 %252 to i32
  br label %256

254:                                              ; preds = %243
  %255 = lshr i32 %247, 31
  br label %256

256:                                              ; preds = %243, %248, %251, %254
  %257 = phi i32 [ %255, %254 ], [ %253, %251 ], [ %250, %248 ], [ 0, %243 ]
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %333, label %325

259:                                              ; preds = %210
  %260 = load i32, ptr %205, align 4, !tbaa !57
  %261 = icmp eq i32 %260, 2
  br i1 %261, label %262, label %333

262:                                              ; preds = %259
  %263 = getelementptr inbounds %struct.SimSel_EdgeExt, ptr %45, i64 %215, i32 2
  %264 = load i32, ptr %263, align 4, !tbaa !57
  %265 = icmp eq i32 %264, 2
  br i1 %265, label %266, label %333

266:                                              ; preds = %262
  %267 = load float, ptr %206, align 8, !tbaa !57
  %268 = getelementptr inbounds %struct.SimSel_EdgeExt, ptr %45, i64 %215, i32 1
  %269 = load float, ptr %268, align 8, !tbaa !57
  %270 = fsub float %267, %269
  %271 = call float @llvm.fabs.f32(float %270)
  %272 = fcmp ugt float %271, %6
  br i1 %272, label %333, label %325

273:                                              ; preds = %210
  %274 = load ptr, ptr %188, align 8, !tbaa !84
  %275 = call ptr @CustomData_bmesh_get(ptr noundef nonnull %182, ptr noundef %274, i32 noundef 30) #5
  %276 = load ptr, ptr %217, align 8, !tbaa !84
  %277 = call ptr @CustomData_bmesh_get(ptr noundef nonnull %182, ptr noundef %276, i32 noundef 30) #5
  %278 = load float, ptr %275, align 4, !tbaa !62
  %279 = load float, ptr %277, align 4, !tbaa !62
  %280 = fsub float %278, %279
  switch i32 %7, label %333 [
    i32 0, label %281
    i32 1, label %284
    i32 2, label %287
  ]

281:                                              ; preds = %273
  %282 = call float @llvm.fabs.f32(float %280)
  %283 = fcmp ole float %282, %6
  br label %290

284:                                              ; preds = %273
  %285 = fadd float %6, %280
  %286 = fcmp oge float %285, 0.000000e+00
  br label %290

287:                                              ; preds = %273
  %288 = fsub float %280, %6
  %289 = fcmp ole float %288, 0.000000e+00
  br label %290

290:                                              ; preds = %281, %284, %287
  %291 = phi i1 [ %289, %287 ], [ %286, %284 ], [ %283, %281 ]
  br i1 %291, label %325, label %333

292:                                              ; preds = %210
  %293 = load ptr, ptr %188, align 8, !tbaa !84
  %294 = call ptr @CustomData_bmesh_get(ptr noundef nonnull %181, ptr noundef %293, i32 noundef 29) #5
  %295 = load ptr, ptr %217, align 8, !tbaa !84
  %296 = call ptr @CustomData_bmesh_get(ptr noundef nonnull %181, ptr noundef %295, i32 noundef 29) #5
  %297 = load float, ptr %294, align 4, !tbaa !62
  %298 = load float, ptr %296, align 4, !tbaa !62
  %299 = fsub float %297, %298
  switch i32 %7, label %333 [
    i32 0, label %300
    i32 1, label %303
    i32 2, label %306
  ]

300:                                              ; preds = %292
  %301 = call float @llvm.fabs.f32(float %299)
  %302 = fcmp ole float %301, %6
  br label %309

303:                                              ; preds = %292
  %304 = fadd float %6, %299
  %305 = fcmp oge float %304, 0.000000e+00
  br label %309

306:                                              ; preds = %292
  %307 = fsub float %299, %6
  %308 = fcmp ole float %307, 0.000000e+00
  br label %309

309:                                              ; preds = %300, %303, %306
  %310 = phi i1 [ %308, %306 ], [ %305, %303 ], [ %302, %300 ]
  br i1 %310, label %325, label %333

311:                                              ; preds = %210
  %312 = load i8, ptr %199, align 1, !tbaa !68
  %313 = getelementptr inbounds %struct.BMHeader, ptr %217, i64 0, i32 3
  %314 = load i8, ptr %313, align 1, !tbaa !68
  %315 = xor i8 %314, %312
  %316 = and i8 %315, 4
  %317 = icmp eq i8 %316, 0
  br i1 %317, label %325, label %333

318:                                              ; preds = %210
  %319 = load i8, ptr %199, align 1, !tbaa !68
  %320 = getelementptr inbounds %struct.BMHeader, ptr %217, i64 0, i32 3
  %321 = load i8, ptr %320, align 1, !tbaa !68
  %322 = xor i8 %321, %319
  %323 = and i8 %322, 8
  %324 = icmp eq i8 %323, 0
  br i1 %324, label %325, label %333

325:                                              ; preds = %318, %311, %309, %290, %266, %256, %234, %232
  %326 = load ptr, ptr %189, align 8, !tbaa !73
  %327 = load i32, ptr %179, align 8, !tbaa !42
  %328 = sext i32 %327 to i64
  %329 = getelementptr %struct.BMFlagLayer, ptr %326, i64 %328
  %330 = getelementptr %struct.BMFlagLayer, ptr %329, i64 -1
  %331 = load i16, ptr %330, align 2, !tbaa !46
  %332 = or i16 %331, 1
  store i16 %332, ptr %330, align 2, !tbaa !46
  br label %333

333:                                              ; preds = %325, %292, %273, %218, %309, %290, %259, %232, %234, %256, %262, %266, %311, %318, %210
  %334 = phi i8 [ %212, %210 ], [ %212, %318 ], [ %212, %311 ], [ %212, %266 ], [ %212, %262 ], [ %212, %256 ], [ %212, %234 ], [ %212, %232 ], [ 0, %259 ], [ %212, %290 ], [ %212, %309 ], [ %212, %218 ], [ %212, %273 ], [ %212, %292 ], [ 0, %325 ]
  %335 = add nuw nsw i64 %211, 1
  %336 = icmp ult i64 %335, %183
  %337 = icmp eq i8 %334, 1
  %338 = select i1 %336, i1 %337, i1 false
  br i1 %338, label %210, label %339, !llvm.loop !85

339:                                              ; preds = %333, %198, %185
  %340 = add nuw nsw i64 %186, 1
  %341 = icmp eq i64 %340, %184
  br i1 %341, label %342, label %185, !llvm.loop !86

342:                                              ; preds = %339, %176
  %343 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  call void %343(ptr noundef %45) #5
  %344 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  call void %344(ptr noundef %41) #5
  %345 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 1
  call void @BMO_slot_buffer_from_enabled_flag(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %345, ptr noundef nonnull @.str.8, i8 noundef zeroext 2, i16 noundef signext 1) #5
  br label %346

346:                                              ; preds = %12, %8, %342
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #5
  ret void
}

declare i32 @BM_edge_face_count(ptr noundef) local_unnamed_addr #2

declare float @BM_edge_calc_face_angle(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #3

; Function Attrs: nounwind uwtable
define dso_local void @bmo_similar_verts_exec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.BMOIter, align 8
  %4 = alloca %struct.BMIter, align 8
  %5 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 24
  %6 = tail call i32 @CustomData_get_offset(ptr noundef nonnull %5, i32 noundef 2) #5
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #5
  %7 = tail call i32 @BMO_slot_int_get(ptr noundef %1, ptr noundef nonnull @.str) #5
  %8 = tail call float @BMO_slot_float_get(ptr noundef %1, ptr noundef nonnull @.str.1) #5
  %9 = fmul float %8, 0x400921FB60000000
  %10 = tail call i32 @BMO_slot_int_get(ptr noundef %1, ptr noundef nonnull @.str.2) #5
  %11 = tail call i32 @BM_mesh_elem_count(ptr noundef %0, i8 noundef zeroext 1) #5
  %12 = call ptr @BMO_iter_new(ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull @.str.9, i8 noundef zeroext 1) #5
  %13 = icmp eq ptr %12, null
  br i1 %13, label %30, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  br label %16

16:                                               ; preds = %14, %16
  %17 = phi ptr [ %12, %14 ], [ %28, %16 ]
  %18 = phi i32 [ 0, %14 ], [ %27, %16 ]
  %19 = getelementptr inbounds %struct.BMVert, ptr %17, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !87
  %21 = load i32, ptr %15, align 8, !tbaa !42
  %22 = sext i32 %21 to i64
  %23 = getelementptr %struct.BMFlagLayer, ptr %20, i64 %22
  %24 = getelementptr %struct.BMFlagLayer, ptr %23, i64 -1
  %25 = load i16, ptr %24, align 2, !tbaa !46
  %26 = or i16 %25, 1
  store i16 %26, ptr %24, align 2, !tbaa !46
  %27 = add nuw nsw i32 %18, 1
  %28 = call ptr @BMO_iter_step(ptr noundef nonnull %3) #5
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %16, !llvm.loop !89

30:                                               ; preds = %16, %2
  %31 = phi i32 [ 0, %2 ], [ %27, %16 ]
  %32 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !51
  %33 = zext nneg i32 %31 to i64
  %34 = shl nuw nsw i64 %33, 2
  %35 = call ptr %32(i64 noundef %34, ptr noundef nonnull @.str.10) #5
  %36 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !51
  %37 = sext i32 %11 to i64
  %38 = shl nsw i64 %37, 4
  %39 = call ptr %36(i64 noundef %38, ptr noundef nonnull @.str.11) #5
  %40 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 4
  store i8 1, ptr %40, align 4, !tbaa !52
  %41 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %41, align 8, !tbaa !54
  %42 = getelementptr inbounds %struct.BMIter, ptr %4, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %42, align 8, !tbaa !55
  %43 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 9
  %44 = load ptr, ptr %43, align 8, !tbaa !90
  store ptr %44, ptr %4, align 8, !tbaa !57
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %4) #5
  %45 = load ptr, ptr %42, align 8, !tbaa !55
  %46 = call ptr %45(ptr noundef nonnull %4) #5
  %47 = icmp eq ptr %46, null
  br i1 %47, label %52, label %48

48:                                               ; preds = %30
  %49 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %50 = icmp eq i32 %6, -1
  %51 = sext i32 %6 to i64
  br label %59

52:                                               ; preds = %93, %30
  %53 = icmp sgt i32 %11, 0
  br i1 %53, label %54, label %193

54:                                               ; preds = %52
  %55 = getelementptr inbounds %struct.BMesh, ptr %0, i64 0, i32 22
  %56 = icmp eq i32 %31, 0
  %57 = zext i32 %31 to i64
  %58 = zext nneg i32 %11 to i64
  br label %98

59:                                               ; preds = %48, %93
  %60 = phi i64 [ 0, %48 ], [ %94, %93 ]
  %61 = phi ptr [ %46, %48 ], [ %96, %93 ]
  %62 = phi i32 [ 0, %48 ], [ %79, %93 ]
  %63 = getelementptr inbounds %struct.SimSel_VertExt, ptr %39, i64 %60
  store ptr %61, ptr %63, align 8, !tbaa !91
  %64 = getelementptr inbounds %struct.BMVert, ptr %61, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !87
  %66 = load i32, ptr %49, align 8, !tbaa !42
  %67 = sext i32 %66 to i64
  %68 = getelementptr %struct.BMFlagLayer, ptr %65, i64 %67
  %69 = getelementptr %struct.BMFlagLayer, ptr %68, i64 -1
  %70 = load i16, ptr %69, align 2, !tbaa !46
  %71 = and i16 %70, 1
  %72 = icmp eq i16 %71, 0
  br i1 %72, label %78, label %73

73:                                               ; preds = %59
  %74 = sext i32 %62 to i64
  %75 = getelementptr inbounds i32, ptr %35, i64 %74
  %76 = trunc i64 %60 to i32
  store i32 %76, ptr %75, align 4, !tbaa !60
  %77 = add nsw i32 %62, 1
  br label %78

78:                                               ; preds = %73, %59
  %79 = phi i32 [ %77, %73 ], [ %62, %59 ]
  switch i32 %7, label %93 [
    i32 1, label %80
    i32 2, label %83
    i32 3, label %90
  ]

80:                                               ; preds = %78
  %81 = call i32 @BM_vert_face_count(ptr noundef nonnull %61) #5
  %82 = getelementptr inbounds %struct.SimSel_VertExt, ptr %39, i64 %60, i32 1
  store i32 %81, ptr %82, align 8, !tbaa !57
  br label %93

83:                                               ; preds = %78
  br i1 %50, label %87, label %84

84:                                               ; preds = %83
  %85 = load ptr, ptr %61, align 8, !tbaa !93
  %86 = getelementptr inbounds i8, ptr %85, i64 %51
  br label %87

87:                                               ; preds = %83, %84
  %88 = phi ptr [ %86, %84 ], [ null, %83 ]
  %89 = getelementptr inbounds %struct.SimSel_VertExt, ptr %39, i64 %60, i32 1
  store ptr %88, ptr %89, align 8, !tbaa !57
  br label %93

90:                                               ; preds = %78
  %91 = call i32 @BM_vert_edge_count(ptr noundef nonnull %61) #5
  %92 = getelementptr inbounds %struct.SimSel_VertExt, ptr %39, i64 %60, i32 1
  store i32 %91, ptr %92, align 8, !tbaa !57
  br label %93

93:                                               ; preds = %78, %90, %87, %80
  %94 = add nuw i64 %60, 1
  %95 = load ptr, ptr %42, align 8, !tbaa !55
  %96 = call ptr %95(ptr noundef nonnull %4) #5
  %97 = icmp eq ptr %96, null
  br i1 %97, label %52, label %59, !llvm.loop !94

98:                                               ; preds = %54, %190
  %99 = phi i64 [ 0, %54 ], [ %191, %190 ]
  %100 = getelementptr inbounds %struct.SimSel_VertExt, ptr %39, i64 %99
  %101 = load ptr, ptr %100, align 8, !tbaa !91
  %102 = getelementptr inbounds %struct.BMVert, ptr %101, i64 0, i32 1
  %103 = load ptr, ptr %102, align 8, !tbaa !87
  %104 = load i32, ptr %55, align 8, !tbaa !42
  %105 = sext i32 %104 to i64
  %106 = getelementptr %struct.BMFlagLayer, ptr %103, i64 %105
  %107 = getelementptr %struct.BMFlagLayer, ptr %106, i64 -1
  %108 = load i16, ptr %107, align 2, !tbaa !46
  %109 = and i16 %108, 1
  %110 = icmp eq i16 %109, 0
  br i1 %110, label %111, label %190

111:                                              ; preds = %98
  %112 = getelementptr inbounds %struct.BMHeader, ptr %101, i64 0, i32 3
  %113 = load i8, ptr %112, align 1, !tbaa !68
  %114 = and i8 %113, 2
  %115 = icmp ne i8 %114, 0
  %116 = or i1 %115, %56
  br i1 %116, label %190, label %117

117:                                              ; preds = %111
  %118 = getelementptr inbounds %struct.SimSel_VertExt, ptr %39, i64 %99, i32 1
  %119 = getelementptr inbounds %struct.SimSel_VertExt, ptr %39, i64 %99, i32 1
  %120 = getelementptr inbounds %struct.SimSel_VertExt, ptr %39, i64 %99, i32 1
  %121 = getelementptr inbounds %struct.BMVert, ptr %101, i64 0, i32 3
  br label %122

122:                                              ; preds = %117, %184
  %123 = phi i64 [ 0, %117 ], [ %186, %184 ]
  %124 = phi i8 [ 1, %117 ], [ %185, %184 ]
  %125 = getelementptr inbounds i32, ptr %35, i64 %123
  %126 = load i32, ptr %125, align 4, !tbaa !60
  %127 = sext i32 %126 to i64
  switch i32 %7, label %184 [
    i32 0, label %128
    i32 1, label %134
    i32 2, label %150
    i32 3, label %160
  ]

128:                                              ; preds = %122
  %129 = getelementptr inbounds %struct.SimSel_VertExt, ptr %39, i64 %127
  %130 = load ptr, ptr %129, align 8, !tbaa !91
  %131 = getelementptr inbounds %struct.BMVert, ptr %130, i64 0, i32 3
  %132 = call float @angle_normalized_v3v3(ptr noundef nonnull %121, ptr noundef nonnull %131) #5
  %133 = fcmp ugt float %132, %9
  br i1 %133, label %184, label %176

134:                                              ; preds = %122
  %135 = load i32, ptr %120, align 8, !tbaa !57
  %136 = getelementptr inbounds %struct.SimSel_VertExt, ptr %39, i64 %127, i32 1
  %137 = load i32, ptr %136, align 8, !tbaa !57
  %138 = sub nsw i32 %135, %137
  switch i32 %10, label %147 [
    i32 0, label %139
    i32 1, label %142
    i32 2, label %145
  ]

139:                                              ; preds = %134
  %140 = icmp eq i32 %135, %137
  %141 = zext i1 %140 to i32
  br label %147

142:                                              ; preds = %134
  %143 = icmp sgt i32 %138, 0
  %144 = zext i1 %143 to i32
  br label %147

145:                                              ; preds = %134
  %146 = lshr i32 %138, 31
  br label %147

147:                                              ; preds = %134, %139, %142, %145
  %148 = phi i32 [ %146, %145 ], [ %144, %142 ], [ %141, %139 ], [ 0, %134 ]
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %184, label %176

150:                                              ; preds = %122
  %151 = load ptr, ptr %119, align 8, !tbaa !57
  %152 = icmp eq ptr %151, null
  br i1 %152, label %184, label %153

153:                                              ; preds = %150
  %154 = getelementptr inbounds %struct.SimSel_VertExt, ptr %39, i64 %127, i32 1
  %155 = load ptr, ptr %154, align 8, !tbaa !57
  %156 = icmp eq ptr %155, null
  br i1 %156, label %184, label %157

157:                                              ; preds = %153
  %158 = call i32 @defvert_find_shared(ptr noundef nonnull %151, ptr noundef nonnull %155) #5
  %159 = icmp eq i32 %158, -1
  br i1 %159, label %184, label %176

160:                                              ; preds = %122
  %161 = load i32, ptr %118, align 8, !tbaa !57
  %162 = getelementptr inbounds %struct.SimSel_VertExt, ptr %39, i64 %127, i32 1
  %163 = load i32, ptr %162, align 8, !tbaa !57
  %164 = sub nsw i32 %161, %163
  switch i32 %10, label %173 [
    i32 0, label %165
    i32 1, label %168
    i32 2, label %171
  ]

165:                                              ; preds = %160
  %166 = icmp eq i32 %161, %163
  %167 = zext i1 %166 to i32
  br label %173

168:                                              ; preds = %160
  %169 = icmp sgt i32 %164, 0
  %170 = zext i1 %169 to i32
  br label %173

171:                                              ; preds = %160
  %172 = lshr i32 %164, 31
  br label %173

173:                                              ; preds = %160, %165, %168, %171
  %174 = phi i32 [ %172, %171 ], [ %170, %168 ], [ %167, %165 ], [ 0, %160 ]
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %184, label %176

176:                                              ; preds = %173, %157, %147, %128
  %177 = load ptr, ptr %102, align 8, !tbaa !87
  %178 = load i32, ptr %55, align 8, !tbaa !42
  %179 = sext i32 %178 to i64
  %180 = getelementptr %struct.BMFlagLayer, ptr %177, i64 %179
  %181 = getelementptr %struct.BMFlagLayer, ptr %180, i64 -1
  %182 = load i16, ptr %181, align 2, !tbaa !46
  %183 = or i16 %182, 1
  store i16 %183, ptr %181, align 2, !tbaa !46
  br label %184

184:                                              ; preds = %176, %128, %147, %157, %153, %150, %173, %122
  %185 = phi i8 [ %124, %122 ], [ %124, %173 ], [ %124, %157 ], [ %124, %153 ], [ %124, %150 ], [ %124, %147 ], [ %124, %128 ], [ 0, %176 ]
  %186 = add nuw nsw i64 %123, 1
  %187 = icmp ult i64 %186, %57
  %188 = icmp eq i8 %185, 1
  %189 = select i1 %187, i1 %188, i1 false
  br i1 %189, label %122, label %190, !llvm.loop !95

190:                                              ; preds = %184, %111, %98
  %191 = add nuw nsw i64 %99, 1
  %192 = icmp eq i64 %191, %58
  br i1 %192, label %193, label %98, !llvm.loop !96

193:                                              ; preds = %190, %52
  %194 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  call void %194(ptr noundef %35) #5
  %195 = load ptr, ptr @MEM_freeN, align 8, !tbaa !51
  call void %195(ptr noundef %39) #5
  %196 = getelementptr inbounds %struct.BMOperator, ptr %1, i64 0, i32 1
  call void @BMO_slot_buffer_from_enabled_flag(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %196, ptr noundef nonnull @.str.12, i8 noundef zeroext 1, i16 noundef signext 1) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #5
  ret void
}

declare i32 @CustomData_get_offset(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @BM_vert_face_count(ptr noundef) local_unnamed_addr #2

declare i32 @BM_vert_edge_count(ptr noundef) local_unnamed_addr #2

declare i32 @defvert_find_shared(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @bmiter__elem_of_mesh_begin(ptr noundef) #2

declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

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
!34 = !{!35, !37, i64 16}
!35 = !{!"BMFace", !36, i64 0, !37, i64 16, !37, i64 24, !40, i64 32, !38, i64 36, !41, i64 48}
!36 = !{!"BMHeader", !37, i64 0, !40, i64 8, !38, i64 12, !38, i64 13, !38, i64 14}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"int", !38, i64 0}
!41 = !{!"short", !38, i64 0}
!42 = !{!43, !40, i64 128}
!43 = !{!"BMesh", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !38, i64 28, !38, i64 29, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !40, i64 88, !40, i64 92, !40, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !40, i64 128, !37, i64 136, !44, i64 144, !44, i64 344, !44, i64 544, !44, i64 744, !41, i64 944, !40, i64 948, !40, i64 952, !40, i64 956, !45, i64 960, !37, i64 976, !45, i64 984, !37, i64 1000}
!44 = !{!"CustomData", !37, i64 0, !38, i64 8, !40, i64 172, !40, i64 176, !40, i64 180, !37, i64 184, !37, i64 192}
!45 = !{!"ListBase", !37, i64 0, !37, i64 8}
!46 = !{!47, !41, i64 0}
!47 = !{!"BMFlagLayer", !41, i64 0}
!48 = distinct !{!48, !49, !50}
!49 = !{!"llvm.loop.mustprogress"}
!50 = !{!"llvm.loop.unroll.disable"}
!51 = !{!37, !37, i64 0}
!52 = !{!53, !38, i64 60}
!53 = !{!"BMIter", !38, i64 0, !37, i64 40, !37, i64 48, !40, i64 56, !38, i64 60}
!54 = !{!53, !37, i64 40}
!55 = !{!53, !37, i64 48}
!56 = !{!43, !37, i64 56}
!57 = !{!38, !38, i64 0}
!58 = !{!59, !37, i64 0}
!59 = !{!"SimSel_FaceExt", !37, i64 0, !38, i64 8, !38, i64 24}
!60 = !{!40, !40, i64 0}
!61 = distinct !{!61, !49, !50}
!62 = !{!63, !63, i64 0}
!63 = !{!"float", !38, i64 0}
!64 = !{!35, !37, i64 0}
!65 = !{!66, !37, i64 0}
!66 = !{!"MTexPoly", !37, i64 0, !38, i64 8, !38, i64 9, !41, i64 10, !41, i64 12, !41, i64 14}
!67 = distinct !{!67, !49, !50}
!68 = !{!36, !38, i64 13}
!69 = !{!35, !41, i64 48}
!70 = !{!35, !40, i64 32}
!71 = distinct !{!71, !49, !50}
!72 = distinct !{!72, !49, !50}
!73 = !{!74, !37, i64 16}
!74 = !{!"BMEdge", !36, i64 0, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !75, i64 48, !75, i64 64}
!75 = !{!"BMDiskLink", !37, i64 0, !37, i64 8}
!76 = distinct !{!76, !49, !50}
!77 = !{!43, !37, i64 40}
!78 = !{!79, !37, i64 0}
!79 = !{!"SimSel_EdgeExt", !37, i64 0, !38, i64 8, !38, i64 20}
!80 = distinct !{!80, !49, !50}
!81 = !{!74, !37, i64 24}
!82 = !{!74, !37, i64 32}
!83 = distinct !{!83, !49, !50}
!84 = !{!74, !37, i64 0}
!85 = distinct !{!85, !49, !50}
!86 = distinct !{!86, !49, !50}
!87 = !{!88, !37, i64 16}
!88 = !{!"BMVert", !36, i64 0, !37, i64 16, !38, i64 24, !38, i64 36, !37, i64 48}
!89 = distinct !{!89, !49, !50}
!90 = !{!43, !37, i64 32}
!91 = !{!92, !37, i64 0}
!92 = !{!"SimSel_VertExt", !37, i64 0, !38, i64 8}
!93 = !{!88, !37, i64 0}
!94 = distinct !{!94, !49, !50}
!95 = distinct !{!95, !49, !50}
!96 = distinct !{!96, !49, !50}

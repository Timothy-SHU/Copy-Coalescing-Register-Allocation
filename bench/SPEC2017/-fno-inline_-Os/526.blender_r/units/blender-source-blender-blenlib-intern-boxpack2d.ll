; ModuleID = 'blender/source/blender/blenlib/intern/boxpack2d.c'
source_filename = "blender/source/blender/blenlib/intern/boxpack2d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.BoxVert = type { float, float, i32, i32, ptr, ptr, ptr, ptr, [4 x ptr], float, i32 }
%struct.BoxPack = type { float, float, float, float, [4 x ptr], i32 }

@MEM_mallocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [14 x i8] c"BoxPack Verts\00", align 1
@vertarray = internal unnamed_addr global ptr null, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"BoxPack Indices\00", align 1
@box_width = internal unnamed_addr global float 0.000000e+00, align 4
@box_height = internal unnamed_addr global float 0.000000e+00, align 4
@MEM_freeN = external local_unnamed_addr global ptr, align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @BLI_box_pack_2d(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %4
  store float 0.000000e+00, ptr %2, align 4, !tbaa !34
  store float 0.000000e+00, ptr %3, align 4, !tbaa !34
  br label %540

7:                                                ; preds = %4
  %8 = zext i32 %1 to i64
  tail call void @qsort(ptr noundef %0, i64 noundef %8, i64 noundef 56, ptr noundef nonnull @box_areasort) #9
  %9 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !38
  %10 = mul nuw nsw i64 %8, 352
  %11 = tail call ptr %9(i64 noundef %10, ptr noundef nonnull @.str) #9
  store ptr %11, ptr @vertarray, align 8, !tbaa !38
  %12 = load ptr, ptr @MEM_mallocN, align 8, !tbaa !38
  %13 = mul nuw nsw i64 %8, 12
  %14 = tail call ptr %12(i64 noundef %13, ptr noundef nonnull @.str.1) #9
  br label %15

15:                                               ; preds = %7, %15
  %16 = phi ptr [ %11, %7 ], [ %61, %15 ]
  %17 = phi ptr [ %0, %7 ], [ %64, %15 ]
  %18 = phi i32 [ 0, %7 ], [ %63, %15 ]
  %19 = phi i32 [ 0, %7 ], [ %59, %15 ]
  %20 = getelementptr inbounds %struct.BoxVert, ptr %16, i64 0, i32 5
  %21 = getelementptr inbounds %struct.BoxVert, ptr %16, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %20, i8 0, i64 56, i1 false)
  %22 = load i32, ptr %21, align 8
  %23 = getelementptr inbounds %struct.BoxVert, ptr %16, i64 0, i32 4
  store ptr %17, ptr %23, align 8, !tbaa !40
  %24 = and i32 %22, -512
  %25 = or disjoint i32 %24, 13
  store i32 %25, ptr %21, align 8
  %26 = or disjoint i32 %19, 1
  %27 = getelementptr inbounds %struct.BoxVert, ptr %16, i64 0, i32 3
  store i32 %19, ptr %27, align 4, !tbaa !43
  %28 = getelementptr inbounds %struct.BoxVert, ptr %16, i64 1
  %29 = getelementptr inbounds %struct.BoxPack, ptr %17, i64 0, i32 4
  store ptr %16, ptr %29, align 8, !tbaa !38
  %30 = getelementptr inbounds %struct.BoxVert, ptr %16, i64 1, i32 6
  %31 = getelementptr inbounds %struct.BoxVert, ptr %16, i64 1, i32 4
  store ptr null, ptr %31, align 8, !tbaa !40
  %32 = getelementptr inbounds %struct.BoxVert, ptr %16, i64 1, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %30, i8 0, i64 48, i1 false)
  %33 = load i32, ptr %32, align 8
  %34 = getelementptr inbounds %struct.BoxVert, ptr %16, i64 1, i32 5
  store ptr %17, ptr %34, align 8, !tbaa !44
  %35 = and i32 %33, -512
  %36 = or disjoint i32 %35, 14
  store i32 %36, ptr %32, align 8
  %37 = or disjoint i32 %19, 2
  %38 = getelementptr inbounds %struct.BoxVert, ptr %16, i64 1, i32 3
  store i32 %26, ptr %38, align 4, !tbaa !43
  %39 = getelementptr inbounds %struct.BoxVert, ptr %16, i64 2
  %40 = getelementptr inbounds %struct.BoxPack, ptr %17, i64 0, i32 4, i64 1
  store ptr %28, ptr %40, align 8, !tbaa !38
  %41 = getelementptr inbounds %struct.BoxVert, ptr %16, i64 2, i32 7
  %42 = getelementptr inbounds %struct.BoxVert, ptr %16, i64 2, i32 4
  %43 = getelementptr inbounds %struct.BoxVert, ptr %16, i64 2, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %42, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %41, i8 0, i64 40, i1 false)
  %44 = load i32, ptr %43, align 8
  %45 = getelementptr inbounds %struct.BoxVert, ptr %16, i64 2, i32 6
  store ptr %17, ptr %45, align 8, !tbaa !45
  %46 = and i32 %44, -512
  %47 = or disjoint i32 %46, 7
  store i32 %47, ptr %43, align 8
  %48 = or disjoint i32 %19, 3
  %49 = getelementptr inbounds %struct.BoxVert, ptr %16, i64 2, i32 3
  store i32 %37, ptr %49, align 4, !tbaa !43
  %50 = getelementptr inbounds %struct.BoxVert, ptr %16, i64 3
  %51 = getelementptr inbounds %struct.BoxPack, ptr %17, i64 0, i32 4, i64 2
  store ptr %39, ptr %51, align 8, !tbaa !38
  %52 = getelementptr inbounds %struct.BoxVert, ptr %16, i64 3, i32 8
  %53 = getelementptr inbounds %struct.BoxVert, ptr %16, i64 3, i32 4
  %54 = getelementptr inbounds %struct.BoxVert, ptr %16, i64 3, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %53, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %52, i8 0, i64 32, i1 false)
  %55 = load i32, ptr %54, align 8
  %56 = getelementptr inbounds %struct.BoxVert, ptr %16, i64 3, i32 7
  store ptr %17, ptr %56, align 8, !tbaa !46
  %57 = and i32 %55, -512
  %58 = or disjoint i32 %57, 11
  store i32 %58, ptr %54, align 8
  %59 = add i32 %19, 4
  %60 = getelementptr inbounds %struct.BoxVert, ptr %16, i64 3, i32 3
  store i32 %48, ptr %60, align 4, !tbaa !43
  %61 = getelementptr inbounds %struct.BoxVert, ptr %16, i64 4
  %62 = getelementptr inbounds %struct.BoxPack, ptr %17, i64 0, i32 4, i64 3
  store ptr %50, ptr %62, align 8, !tbaa !38
  %63 = add nuw i32 %18, 1
  %64 = getelementptr inbounds %struct.BoxPack, ptr %17, i64 1
  %65 = icmp eq i32 %63, %1
  br i1 %65, label %66, label %15, !llvm.loop !47

66:                                               ; preds = %15
  %67 = getelementptr inbounds %struct.BoxPack, ptr %0, i64 0, i32 4
  %68 = load ptr, ptr %67, align 8, !tbaa !38
  %69 = getelementptr inbounds %struct.BoxVert, ptr %68, i64 0, i32 2
  %70 = load i32, ptr %69, align 8
  %71 = and i32 %70, -256
  store i32 %71, ptr %69, align 8
  %72 = getelementptr inbounds %struct.BoxPack, ptr %0, i64 0, i32 4, i64 3
  %73 = load ptr, ptr %72, align 8, !tbaa !38
  %74 = getelementptr inbounds %struct.BoxVert, ptr %73, i64 0, i32 2
  %75 = load i32, ptr %74, align 8
  %76 = and i32 %75, -10
  store i32 %76, ptr %74, align 8
  %77 = getelementptr inbounds %struct.BoxPack, ptr %0, i64 0, i32 4, i64 2
  %78 = load ptr, ptr %77, align 8, !tbaa !38
  %79 = getelementptr inbounds %struct.BoxVert, ptr %78, i64 0, i32 2
  %80 = load i32, ptr %79, align 8
  %81 = and i32 %80, -6
  store i32 %81, ptr %79, align 8
  %82 = getelementptr inbounds %struct.BoxPack, ptr %0, i64 0, i32 2
  %83 = load float, ptr %82, align 8, !tbaa !49
  %84 = getelementptr inbounds %struct.BoxPack, ptr %0, i64 0, i32 3
  %85 = load float, ptr %84, align 4, !tbaa !51
  tail call fastcc void @box_xmin_set(ptr noundef %0, float noundef 0.000000e+00) #10
  tail call fastcc void @box_ymin_set(ptr noundef %0, float noundef 0.000000e+00) #10
  store <2 x float> zeroinitializer, ptr %0, align 8, !tbaa !34
  br label %86

86:                                               ; preds = %66, %86
  %87 = phi i64 [ 0, %66 ], [ %94, %86 ]
  %88 = getelementptr inbounds %struct.BoxPack, ptr %0, i64 0, i32 4, i64 %87
  %89 = load ptr, ptr %88, align 8, !tbaa !38
  %90 = getelementptr inbounds %struct.BoxVert, ptr %89, i64 0, i32 2
  %91 = load i32, ptr %90, align 8
  %92 = or i32 %91, 256
  store i32 %92, ptr %90, align 8
  %93 = load ptr, ptr %88, align 8, !tbaa !38
  tail call fastcc void @vert_bias_update(ptr noundef %93) #10
  %94 = add nuw nsw i64 %87, 1
  %95 = icmp eq i64 %94, 4
  br i1 %95, label %98, label %86, !llvm.loop !52

96:                                               ; preds = %98
  %97 = icmp eq i32 %1, 1
  br i1 %97, label %527, label %107

98:                                               ; preds = %86, %98
  %99 = phi i64 [ %100, %98 ], [ 0, %86 ]
  %100 = add nuw nsw i64 %99, 1
  %101 = getelementptr inbounds %struct.BoxPack, ptr %0, i64 0, i32 4, i64 %100
  %102 = load ptr, ptr %101, align 8, !tbaa !38
  %103 = getelementptr inbounds %struct.BoxVert, ptr %102, i64 0, i32 3
  %104 = load i32, ptr %103, align 4, !tbaa !43
  %105 = getelementptr inbounds i32, ptr %14, i64 %99
  store i32 %104, ptr %105, align 4, !tbaa !53
  %106 = icmp eq i64 %100, 3
  br i1 %106, label %96, label %98, !llvm.loop !54

107:                                              ; preds = %96, %521
  %108 = phi ptr [ %113, %521 ], [ %0, %96 ]
  %109 = phi float [ %524, %521 ], [ %85, %96 ]
  %110 = phi float [ %523, %521 ], [ %83, %96 ]
  %111 = phi i32 [ %525, %521 ], [ 1, %96 ]
  %112 = phi i32 [ %522, %521 ], [ 3, %96 ]
  %113 = getelementptr inbounds %struct.BoxPack, ptr %108, i64 1
  %114 = getelementptr inbounds %struct.BoxPack, ptr %108, i64 1, i32 2
  %115 = load float, ptr %114, align 8, !tbaa !49
  store float %115, ptr @box_width, align 4, !tbaa !34
  %116 = getelementptr inbounds %struct.BoxPack, ptr %108, i64 1, i32 3
  %117 = load float, ptr %116, align 4, !tbaa !51
  store float %117, ptr @box_height, align 4, !tbaa !34
  %118 = zext i32 %112 to i64
  tail call void @qsort(ptr noundef %14, i64 noundef %118, i64 noundef 4, ptr noundef nonnull @vertex_sort) #9
  %119 = load ptr, ptr @vertarray, align 8
  br label %120

120:                                              ; preds = %124, %107
  %121 = phi i32 [ %112, %107 ], [ %122, %124 ]
  %122 = add i32 %121, -1
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %135, label %124

124:                                              ; preds = %120
  %125 = zext i32 %122 to i64
  %126 = getelementptr inbounds i32, ptr %14, i64 %125
  %127 = load i32, ptr %126, align 4, !tbaa !53
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds %struct.BoxVert, ptr %119, i64 %128, i32 2
  %130 = load i32, ptr %129, align 8
  %131 = and i32 %130, 255
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %120, label %133, !llvm.loop !55

133:                                              ; preds = %124
  %134 = icmp eq i32 %121, 0
  br i1 %134, label %521, label %135

135:                                              ; preds = %120, %133
  %136 = phi i32 [ %121, %133 ], [ 1, %120 ]
  %137 = getelementptr inbounds %struct.BoxPack, ptr %108, i64 1, i32 4, i64 1
  %138 = getelementptr inbounds %struct.BoxPack, ptr %108, i64 1, i32 4, i64 2
  %139 = getelementptr inbounds %struct.BoxPack, ptr %108, i64 1, i32 4, i64 3
  %140 = getelementptr inbounds %struct.BoxPack, ptr %108, i64 1, i32 4
  %141 = getelementptr inbounds %struct.BoxPack, ptr %108, i64 1, i32 1
  %142 = zext i32 %136 to i64
  br label %143

143:                                              ; preds = %135, %518
  %144 = phi i64 [ 0, %135 ], [ %519, %518 ]
  %145 = getelementptr inbounds i32, ptr %14, i64 %144
  %146 = load i32, ptr %145, align 4, !tbaa !53
  %147 = zext i32 %146 to i64
  %148 = getelementptr inbounds %struct.BoxVert, ptr %119, i64 %147
  %149 = getelementptr inbounds %struct.BoxVert, ptr %119, i64 %147, i32 2
  %150 = getelementptr inbounds %struct.BoxVert, ptr %119, i64 %147, i32 1
  br label %151

151:                                              ; preds = %143, %515
  %152 = phi i64 [ 0, %143 ], [ %516, %515 ]
  %153 = load i32, ptr %149, align 8
  %154 = trunc i64 %152 to i32
  %155 = tail call fastcc i32 @quad_flag(i32 noundef %154) #10, !range !56
  %156 = and i32 %155, %153
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %515, label %158

158:                                              ; preds = %151
  switch i32 %154, label %171 [
    i32 0, label %159
    i32 1, label %162
    i32 2, label %165
    i32 3, label %168
  ]

159:                                              ; preds = %158
  %160 = load float, ptr %148, align 8, !tbaa !57
  tail call fastcc void @box_xmax_set(ptr noundef nonnull %113, float noundef %160) #10
  %161 = load float, ptr %150, align 4, !tbaa !58
  tail call fastcc void @box_ymax_set(ptr noundef nonnull %113, float noundef %161) #10
  br label %172

162:                                              ; preds = %158
  %163 = load float, ptr %148, align 8, !tbaa !57
  tail call fastcc void @box_xmin_set(ptr noundef nonnull %113, float noundef %163) #10
  %164 = load float, ptr %150, align 4, !tbaa !58
  tail call fastcc void @box_ymin_set(ptr noundef nonnull %113, float noundef %164) #10
  br label %172

165:                                              ; preds = %158
  %166 = load float, ptr %148, align 8, !tbaa !57
  tail call fastcc void @box_xmax_set(ptr noundef nonnull %113, float noundef %166) #10
  %167 = load float, ptr %150, align 4, !tbaa !58
  tail call fastcc void @box_ymin_set(ptr noundef nonnull %113, float noundef %167) #10
  br label %172

168:                                              ; preds = %158
  %169 = load float, ptr %148, align 8, !tbaa !57
  tail call fastcc void @box_xmin_set(ptr noundef nonnull %113, float noundef %169) #10
  %170 = load float, ptr %150, align 4, !tbaa !58
  tail call fastcc void @box_ymax_set(ptr noundef nonnull %113, float noundef %170) #10
  br label %172

171:                                              ; preds = %194, %158
  unreachable

172:                                              ; preds = %168, %165, %162, %159
  %173 = tail call fastcc float @box_xmin_get(ptr noundef nonnull %113) #10
  %174 = fcmp olt float %173, 0.000000e+00
  br i1 %174, label %515, label %175

175:                                              ; preds = %172
  %176 = tail call fastcc float @box_ymin_get(ptr noundef nonnull %113) #10
  %177 = fcmp olt float %176, 0.000000e+00
  br i1 %177, label %515, label %178

178:                                              ; preds = %175
  %179 = getelementptr inbounds %struct.BoxVert, ptr %119, i64 %147, i32 8, i64 %152
  %180 = load ptr, ptr %179, align 8, !tbaa !38
  %181 = icmp eq ptr %180, null
  br i1 %181, label %185, label %182

182:                                              ; preds = %178
  %183 = tail call fastcc zeroext i8 @box_isect(ptr noundef nonnull %113, ptr noundef nonnull %180) #10, !range !59
  %184 = icmp eq i8 %183, 0
  br i1 %184, label %185, label %515

185:                                              ; preds = %182, %178
  br label %186

186:                                              ; preds = %185, %191
  %187 = phi ptr [ %192, %191 ], [ %0, %185 ]
  %188 = tail call fastcc zeroext i8 @box_isect(ptr noundef nonnull %113, ptr noundef nonnull %187) #10, !range !59
  %189 = icmp eq i8 %188, 0
  br i1 %189, label %191, label %190

190:                                              ; preds = %186
  store ptr %187, ptr %179, align 8, !tbaa !38
  br label %515

191:                                              ; preds = %186
  %192 = getelementptr inbounds %struct.BoxPack, ptr %187, i64 1
  %193 = icmp eq ptr %187, %108
  br i1 %193, label %194, label %186, !llvm.loop !60

194:                                              ; preds = %191
  %195 = getelementptr inbounds %struct.BoxVert, ptr %119, i64 %147, i32 5
  %196 = getelementptr inbounds %struct.BoxVert, ptr %119, i64 %147, i32 6
  %197 = getelementptr inbounds %struct.BoxVert, ptr %119, i64 %147, i32 7
  %198 = getelementptr inbounds %struct.BoxVert, ptr %119, i64 %147, i32 4
  %199 = tail call fastcc float @box_xmax_get(ptr noundef nonnull %113) #10
  %200 = tail call fastcc float @max_ff(float noundef %199, float noundef %110) #10
  %201 = tail call fastcc float @box_ymax_get(ptr noundef nonnull %113) #10
  %202 = tail call fastcc float @max_ff(float noundef %201, float noundef %109) #10
  %203 = load i32, ptr %149, align 8
  %204 = xor i32 %155, -1
  %205 = and i32 %203, %204
  store i32 %205, ptr %149, align 8
  switch i32 %154, label %171 [
    i32 1, label %209
    i32 2, label %206
    i32 3, label %207
    i32 0, label %208
  ]

206:                                              ; preds = %194
  br label %209

207:                                              ; preds = %194
  br label %209

208:                                              ; preds = %194
  br label %209

209:                                              ; preds = %194, %208, %207, %206
  %210 = phi ptr [ %137, %208 ], [ %138, %207 ], [ %139, %206 ], [ %140, %194 ]
  %211 = phi ptr [ %195, %208 ], [ %196, %207 ], [ %197, %206 ], [ %198, %194 ]
  store ptr %148, ptr %210, align 8, !tbaa !38
  store ptr %113, ptr %211, align 8, !tbaa !38
  %212 = tail call fastcc float @box_xmin_get(ptr noundef nonnull %113) #10
  %213 = fcmp ugt float %212, 0.000000e+00
  br i1 %213, label %214, label %217

214:                                              ; preds = %209
  %215 = tail call fastcc float @box_ymin_get(ptr noundef nonnull %113) #10
  %216 = fcmp ugt float %215, 0.000000e+00
  br i1 %216, label %229, label %217

217:                                              ; preds = %214, %209
  %218 = phi ptr [ %138, %209 ], [ %140, %214 ]
  %219 = phi i32 [ -6, %209 ], [ -10, %214 ]
  %220 = phi ptr [ %140, %209 ], [ %139, %214 ]
  %221 = load ptr, ptr %218, align 8, !tbaa !38
  %222 = getelementptr inbounds %struct.BoxVert, ptr %221, i64 0, i32 2
  %223 = load i32, ptr %222, align 8
  %224 = and i32 %223, %219
  store i32 %224, ptr %222, align 8
  %225 = load ptr, ptr %220, align 8, !tbaa !38
  %226 = getelementptr inbounds %struct.BoxVert, ptr %225, i64 0, i32 2
  %227 = load i32, ptr %226, align 8
  %228 = and i32 %227, %219
  store i32 %228, ptr %226, align 8
  br label %229

229:                                              ; preds = %217, %214
  %230 = load ptr, ptr %197, align 8, !tbaa !46
  %231 = icmp eq ptr %230, null
  br i1 %231, label %294, label %232

232:                                              ; preds = %229
  %233 = load ptr, ptr %198, align 8, !tbaa !40
  %234 = icmp eq ptr %233, null
  br i1 %234, label %294, label %235

235:                                              ; preds = %232
  %236 = icmp eq ptr %113, %230
  %237 = icmp eq ptr %113, %233
  %238 = or i1 %236, %237
  br i1 %238, label %239, label %294

239:                                              ; preds = %235
  %240 = getelementptr inbounds %struct.BoxPack, ptr %230, i64 0, i32 3
  %241 = load float, ptr %240, align 4, !tbaa !51
  %242 = getelementptr inbounds %struct.BoxPack, ptr %233, i64 0, i32 3
  %243 = load float, ptr %242, align 4, !tbaa !51
  %244 = fsub float %241, %243
  %245 = tail call float @llvm.fabs.f32(float %244)
  %246 = fcmp olt float %245, 0x3EE4F8B580000000
  br i1 %246, label %247, label %280

247:                                              ; preds = %239
  %248 = getelementptr inbounds %struct.BoxPack, ptr %233, i64 0, i32 4, i64 2
  %249 = load ptr, ptr %248, align 8, !tbaa !38
  %250 = getelementptr inbounds %struct.BoxVert, ptr %249, i64 0, i32 2
  %251 = load i32, ptr %250, align 8
  %252 = and i32 %251, 256
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %267, label %254

254:                                              ; preds = %247
  %255 = getelementptr inbounds %struct.BoxPack, ptr %230, i64 0, i32 4, i64 1
  %256 = load ptr, ptr %255, align 8, !tbaa !38
  %257 = getelementptr inbounds %struct.BoxVert, ptr %256, i64 0, i32 2
  %258 = load i32, ptr %257, align 8
  %259 = and i32 %258, 246
  %260 = or disjoint i32 %259, -256
  %261 = and i32 %260, %251
  store i32 %261, ptr %250, align 8
  %262 = load ptr, ptr %198, align 8, !tbaa !40
  %263 = getelementptr inbounds %struct.BoxPack, ptr %262, i64 0, i32 4, i64 2
  %264 = load ptr, ptr %263, align 8, !tbaa !38
  %265 = load ptr, ptr %197, align 8, !tbaa !46
  %266 = getelementptr inbounds %struct.BoxPack, ptr %265, i64 0, i32 4, i64 1
  store ptr %264, ptr %266, align 8, !tbaa !38
  br label %359

267:                                              ; preds = %247
  %268 = and i32 %251, 246
  %269 = getelementptr inbounds %struct.BoxPack, ptr %230, i64 0, i32 4, i64 1
  %270 = load ptr, ptr %269, align 8, !tbaa !38
  %271 = getelementptr inbounds %struct.BoxVert, ptr %270, i64 0, i32 2
  %272 = load i32, ptr %271, align 8
  %273 = or disjoint i32 %268, -256
  %274 = and i32 %272, %273
  store i32 %274, ptr %271, align 8
  %275 = load ptr, ptr %197, align 8, !tbaa !46
  %276 = getelementptr inbounds %struct.BoxPack, ptr %275, i64 0, i32 4, i64 1
  %277 = load ptr, ptr %276, align 8, !tbaa !38
  %278 = load ptr, ptr %198, align 8, !tbaa !40
  %279 = getelementptr inbounds %struct.BoxPack, ptr %278, i64 0, i32 4, i64 2
  store ptr %277, ptr %279, align 8, !tbaa !38
  br label %359

280:                                              ; preds = %239
  %281 = fcmp ogt float %241, %243
  br i1 %281, label %282, label %288

282:                                              ; preds = %280
  %283 = getelementptr inbounds %struct.BoxPack, ptr %233, i64 0, i32 4, i64 2
  %284 = load ptr, ptr %283, align 8, !tbaa !38
  %285 = getelementptr inbounds %struct.BoxVert, ptr %284, i64 0, i32 2
  %286 = load i32, ptr %285, align 8
  %287 = and i32 %286, -6
  store i32 %287, ptr %285, align 8
  br label %359

288:                                              ; preds = %280
  %289 = getelementptr inbounds %struct.BoxPack, ptr %230, i64 0, i32 4, i64 1
  %290 = load ptr, ptr %289, align 8, !tbaa !38
  %291 = getelementptr inbounds %struct.BoxVert, ptr %290, i64 0, i32 2
  %292 = load i32, ptr %291, align 8
  %293 = and i32 %292, -11
  store i32 %293, ptr %291, align 8
  br label %359

294:                                              ; preds = %235, %232, %229
  %295 = load ptr, ptr %195, align 8, !tbaa !44
  %296 = icmp eq ptr %295, null
  br i1 %296, label %359, label %297

297:                                              ; preds = %294
  %298 = load ptr, ptr %196, align 8, !tbaa !45
  %299 = icmp eq ptr %298, null
  br i1 %299, label %359, label %300

300:                                              ; preds = %297
  %301 = icmp eq ptr %113, %295
  %302 = icmp eq ptr %113, %298
  %303 = or i1 %301, %302
  br i1 %303, label %304, label %359

304:                                              ; preds = %300
  %305 = getelementptr inbounds %struct.BoxPack, ptr %295, i64 0, i32 3
  %306 = load float, ptr %305, align 4, !tbaa !51
  %307 = getelementptr inbounds %struct.BoxPack, ptr %298, i64 0, i32 3
  %308 = load float, ptr %307, align 4, !tbaa !51
  %309 = fsub float %306, %308
  %310 = tail call float @llvm.fabs.f32(float %309)
  %311 = fcmp olt float %310, 0x3EE4F8B580000000
  br i1 %311, label %312, label %345

312:                                              ; preds = %304
  %313 = getelementptr inbounds %struct.BoxPack, ptr %295, i64 0, i32 4, i64 3
  %314 = load ptr, ptr %313, align 8, !tbaa !38
  %315 = getelementptr inbounds %struct.BoxVert, ptr %314, i64 0, i32 2
  %316 = load i32, ptr %315, align 8
  %317 = and i32 %316, 256
  %318 = icmp eq i32 %317, 0
  br i1 %318, label %332, label %319

319:                                              ; preds = %312
  %320 = getelementptr inbounds %struct.BoxPack, ptr %298, i64 0, i32 4
  %321 = load ptr, ptr %320, align 8, !tbaa !38
  %322 = getelementptr inbounds %struct.BoxVert, ptr %321, i64 0, i32 2
  %323 = load i32, ptr %322, align 8
  %324 = and i32 %323, 249
  %325 = or disjoint i32 %324, -256
  %326 = and i32 %325, %316
  store i32 %326, ptr %315, align 8
  %327 = load ptr, ptr %195, align 8, !tbaa !44
  %328 = getelementptr inbounds %struct.BoxPack, ptr %327, i64 0, i32 4, i64 3
  %329 = load ptr, ptr %328, align 8, !tbaa !38
  %330 = load ptr, ptr %196, align 8, !tbaa !45
  %331 = getelementptr inbounds %struct.BoxPack, ptr %330, i64 0, i32 4
  store ptr %329, ptr %331, align 8, !tbaa !38
  br label %359

332:                                              ; preds = %312
  %333 = and i32 %316, 249
  %334 = getelementptr inbounds %struct.BoxPack, ptr %298, i64 0, i32 4
  %335 = load ptr, ptr %334, align 8, !tbaa !38
  %336 = getelementptr inbounds %struct.BoxVert, ptr %335, i64 0, i32 2
  %337 = load i32, ptr %336, align 8
  %338 = or disjoint i32 %333, -256
  %339 = and i32 %337, %338
  store i32 %339, ptr %336, align 8
  %340 = load ptr, ptr %196, align 8, !tbaa !45
  %341 = getelementptr inbounds %struct.BoxPack, ptr %340, i64 0, i32 4
  %342 = load ptr, ptr %341, align 8, !tbaa !38
  %343 = load ptr, ptr %195, align 8, !tbaa !44
  %344 = getelementptr inbounds %struct.BoxPack, ptr %343, i64 0, i32 4, i64 3
  store ptr %342, ptr %344, align 8, !tbaa !38
  br label %359

345:                                              ; preds = %304
  %346 = fcmp ogt float %306, %308
  br i1 %346, label %347, label %353

347:                                              ; preds = %345
  %348 = getelementptr inbounds %struct.BoxPack, ptr %298, i64 0, i32 4
  %349 = load ptr, ptr %348, align 8, !tbaa !38
  %350 = getelementptr inbounds %struct.BoxVert, ptr %349, i64 0, i32 2
  %351 = load i32, ptr %350, align 8
  %352 = and i32 %351, -6
  store i32 %352, ptr %350, align 8
  br label %359

353:                                              ; preds = %345
  %354 = getelementptr inbounds %struct.BoxPack, ptr %295, i64 0, i32 4, i64 3
  %355 = load ptr, ptr %354, align 8, !tbaa !38
  %356 = getelementptr inbounds %struct.BoxVert, ptr %355, i64 0, i32 2
  %357 = load i32, ptr %356, align 8
  %358 = and i32 %357, -11
  store i32 %358, ptr %356, align 8
  br label %359

359:                                              ; preds = %300, %294, %297, %347, %353, %319, %332, %267, %254, %288, %282
  %360 = load ptr, ptr %197, align 8, !tbaa !46
  %361 = icmp eq ptr %360, null
  br i1 %361, label %424, label %362

362:                                              ; preds = %359
  %363 = load ptr, ptr %195, align 8, !tbaa !44
  %364 = icmp eq ptr %363, null
  br i1 %364, label %424, label %365

365:                                              ; preds = %362
  %366 = icmp eq ptr %113, %360
  %367 = icmp eq ptr %113, %363
  %368 = or i1 %366, %367
  br i1 %368, label %369, label %424

369:                                              ; preds = %365
  %370 = getelementptr inbounds %struct.BoxPack, ptr %360, i64 0, i32 2
  %371 = load float, ptr %370, align 8, !tbaa !49
  %372 = getelementptr inbounds %struct.BoxPack, ptr %363, i64 0, i32 2
  %373 = load float, ptr %372, align 8, !tbaa !49
  %374 = fsub float %371, %373
  %375 = tail call float @llvm.fabs.f32(float %374)
  %376 = fcmp olt float %375, 0x3EE4F8B580000000
  br i1 %376, label %377, label %410

377:                                              ; preds = %369
  %378 = getelementptr inbounds %struct.BoxPack, ptr %363, i64 0, i32 4, i64 2
  %379 = load ptr, ptr %378, align 8, !tbaa !38
  %380 = getelementptr inbounds %struct.BoxVert, ptr %379, i64 0, i32 2
  %381 = load i32, ptr %380, align 8
  %382 = and i32 %381, 256
  %383 = icmp eq i32 %382, 0
  br i1 %383, label %397, label %384

384:                                              ; preds = %377
  %385 = getelementptr inbounds %struct.BoxPack, ptr %360, i64 0, i32 4
  %386 = load ptr, ptr %385, align 8, !tbaa !38
  %387 = getelementptr inbounds %struct.BoxVert, ptr %386, i64 0, i32 2
  %388 = load i32, ptr %387, align 8
  %389 = and i32 %388, 245
  %390 = or disjoint i32 %389, -256
  %391 = and i32 %390, %381
  store i32 %391, ptr %380, align 8
  %392 = load ptr, ptr %195, align 8, !tbaa !44
  %393 = getelementptr inbounds %struct.BoxPack, ptr %392, i64 0, i32 4, i64 2
  %394 = load ptr, ptr %393, align 8, !tbaa !38
  %395 = load ptr, ptr %197, align 8, !tbaa !46
  %396 = getelementptr inbounds %struct.BoxPack, ptr %395, i64 0, i32 4
  store ptr %394, ptr %396, align 8, !tbaa !38
  br label %489

397:                                              ; preds = %377
  %398 = and i32 %381, 245
  %399 = getelementptr inbounds %struct.BoxPack, ptr %360, i64 0, i32 4
  %400 = load ptr, ptr %399, align 8, !tbaa !38
  %401 = getelementptr inbounds %struct.BoxVert, ptr %400, i64 0, i32 2
  %402 = load i32, ptr %401, align 8
  %403 = or disjoint i32 %398, -256
  %404 = and i32 %402, %403
  store i32 %404, ptr %401, align 8
  %405 = load ptr, ptr %197, align 8, !tbaa !46
  %406 = getelementptr inbounds %struct.BoxPack, ptr %405, i64 0, i32 4
  %407 = load ptr, ptr %406, align 8, !tbaa !38
  %408 = load ptr, ptr %195, align 8, !tbaa !44
  %409 = getelementptr inbounds %struct.BoxPack, ptr %408, i64 0, i32 4, i64 2
  store ptr %407, ptr %409, align 8, !tbaa !38
  br label %489

410:                                              ; preds = %369
  %411 = fcmp ogt float %371, %373
  br i1 %411, label %412, label %418

412:                                              ; preds = %410
  %413 = getelementptr inbounds %struct.BoxPack, ptr %363, i64 0, i32 4, i64 2
  %414 = load ptr, ptr %413, align 8, !tbaa !38
  %415 = getelementptr inbounds %struct.BoxVert, ptr %414, i64 0, i32 2
  %416 = load i32, ptr %415, align 8
  %417 = and i32 %416, -7
  store i32 %417, ptr %415, align 8
  br label %489

418:                                              ; preds = %410
  %419 = getelementptr inbounds %struct.BoxPack, ptr %360, i64 0, i32 4
  %420 = load ptr, ptr %419, align 8, !tbaa !38
  %421 = getelementptr inbounds %struct.BoxVert, ptr %420, i64 0, i32 2
  %422 = load i32, ptr %421, align 8
  %423 = and i32 %422, -10
  store i32 %423, ptr %421, align 8
  br label %489

424:                                              ; preds = %365, %362, %359
  %425 = load ptr, ptr %198, align 8, !tbaa !40
  %426 = icmp eq ptr %425, null
  br i1 %426, label %489, label %427

427:                                              ; preds = %424
  %428 = load ptr, ptr %196, align 8, !tbaa !45
  %429 = icmp eq ptr %428, null
  br i1 %429, label %489, label %430

430:                                              ; preds = %427
  %431 = icmp eq ptr %113, %425
  %432 = icmp eq ptr %113, %428
  %433 = or i1 %431, %432
  br i1 %433, label %434, label %489

434:                                              ; preds = %430
  %435 = getelementptr inbounds %struct.BoxPack, ptr %425, i64 0, i32 2
  %436 = load float, ptr %435, align 8, !tbaa !49
  %437 = getelementptr inbounds %struct.BoxPack, ptr %428, i64 0, i32 2
  %438 = load float, ptr %437, align 8, !tbaa !49
  %439 = fsub float %436, %438
  %440 = tail call float @llvm.fabs.f32(float %439)
  %441 = fcmp olt float %440, 0x3EE4F8B580000000
  br i1 %441, label %442, label %475

442:                                              ; preds = %434
  %443 = getelementptr inbounds %struct.BoxPack, ptr %428, i64 0, i32 4, i64 1
  %444 = load ptr, ptr %443, align 8, !tbaa !38
  %445 = getelementptr inbounds %struct.BoxVert, ptr %444, i64 0, i32 2
  %446 = load i32, ptr %445, align 8
  %447 = and i32 %446, 256
  %448 = icmp eq i32 %447, 0
  br i1 %448, label %462, label %449

449:                                              ; preds = %442
  %450 = getelementptr inbounds %struct.BoxPack, ptr %425, i64 0, i32 4, i64 3
  %451 = load ptr, ptr %450, align 8, !tbaa !38
  %452 = getelementptr inbounds %struct.BoxVert, ptr %451, i64 0, i32 2
  %453 = load i32, ptr %452, align 8
  %454 = and i32 %453, 250
  %455 = or disjoint i32 %454, -256
  %456 = and i32 %455, %446
  store i32 %456, ptr %445, align 8
  %457 = load ptr, ptr %196, align 8, !tbaa !45
  %458 = getelementptr inbounds %struct.BoxPack, ptr %457, i64 0, i32 4, i64 1
  %459 = load ptr, ptr %458, align 8, !tbaa !38
  %460 = load ptr, ptr %198, align 8, !tbaa !40
  %461 = getelementptr inbounds %struct.BoxPack, ptr %460, i64 0, i32 4, i64 3
  store ptr %459, ptr %461, align 8, !tbaa !38
  br label %489

462:                                              ; preds = %442
  %463 = and i32 %446, 250
  %464 = getelementptr inbounds %struct.BoxPack, ptr %425, i64 0, i32 4, i64 3
  %465 = load ptr, ptr %464, align 8, !tbaa !38
  %466 = getelementptr inbounds %struct.BoxVert, ptr %465, i64 0, i32 2
  %467 = load i32, ptr %466, align 8
  %468 = or disjoint i32 %463, -256
  %469 = and i32 %467, %468
  store i32 %469, ptr %466, align 8
  %470 = load ptr, ptr %198, align 8, !tbaa !40
  %471 = getelementptr inbounds %struct.BoxPack, ptr %470, i64 0, i32 4, i64 3
  %472 = load ptr, ptr %471, align 8, !tbaa !38
  %473 = load ptr, ptr %196, align 8, !tbaa !45
  %474 = getelementptr inbounds %struct.BoxPack, ptr %473, i64 0, i32 4, i64 1
  store ptr %472, ptr %474, align 8, !tbaa !38
  br label %489

475:                                              ; preds = %434
  %476 = fcmp ogt float %436, %438
  br i1 %476, label %477, label %483

477:                                              ; preds = %475
  %478 = getelementptr inbounds %struct.BoxPack, ptr %428, i64 0, i32 4, i64 1
  %479 = load ptr, ptr %478, align 8, !tbaa !38
  %480 = getelementptr inbounds %struct.BoxVert, ptr %479, i64 0, i32 2
  %481 = load i32, ptr %480, align 8
  %482 = and i32 %481, -7
  store i32 %482, ptr %480, align 8
  br label %489

483:                                              ; preds = %475
  %484 = getelementptr inbounds %struct.BoxPack, ptr %425, i64 0, i32 4, i64 3
  %485 = load ptr, ptr %484, align 8, !tbaa !38
  %486 = getelementptr inbounds %struct.BoxVert, ptr %485, i64 0, i32 2
  %487 = load i32, ptr %486, align 8
  %488 = and i32 %487, -10
  store i32 %488, ptr %486, align 8
  br label %489

489:                                              ; preds = %430, %424, %427, %477, %483, %449, %462, %397, %384, %418, %412
  br label %490

490:                                              ; preds = %489, %508
  %491 = phi i64 [ %510, %508 ], [ 0, %489 ]
  %492 = phi i32 [ %509, %508 ], [ %136, %489 ]
  %493 = getelementptr inbounds %struct.BoxPack, ptr %108, i64 1, i32 4, i64 %491
  %494 = load ptr, ptr %493, align 8, !tbaa !38
  %495 = getelementptr inbounds %struct.BoxVert, ptr %494, i64 0, i32 2
  %496 = load i32, ptr %495, align 8
  %497 = and i32 %496, 256
  %498 = icmp eq i32 %497, 0
  br i1 %498, label %499, label %508

499:                                              ; preds = %490
  %500 = or disjoint i32 %496, 256
  store i32 %500, ptr %495, align 8
  %501 = load ptr, ptr %493, align 8, !tbaa !38
  tail call fastcc void @vert_bias_update(ptr noundef %501) #10
  %502 = load ptr, ptr %493, align 8, !tbaa !38
  %503 = getelementptr inbounds %struct.BoxVert, ptr %502, i64 0, i32 3
  %504 = load i32, ptr %503, align 4, !tbaa !43
  %505 = zext i32 %492 to i64
  %506 = getelementptr inbounds i32, ptr %14, i64 %505
  store i32 %504, ptr %506, align 4, !tbaa !53
  %507 = add i32 %492, 1
  br label %508

508:                                              ; preds = %490, %499
  %509 = phi i32 [ %507, %499 ], [ %492, %490 ]
  %510 = add nuw nsw i64 %491, 1
  %511 = icmp eq i64 %510, 4
  br i1 %511, label %512, label %490, !llvm.loop !61

512:                                              ; preds = %508
  %513 = tail call fastcc float @box_xmin_get(ptr noundef nonnull %113) #10
  store float %513, ptr %113, align 8, !tbaa !62
  %514 = tail call fastcc float @box_ymin_get(ptr noundef nonnull %113) #10
  store float %514, ptr %141, align 4, !tbaa !63
  br label %521

515:                                              ; preds = %190, %182, %175, %172, %151
  %516 = add nuw nsw i64 %152, 1
  %517 = icmp ult i64 %152, 3
  br i1 %517, label %151, label %518, !llvm.loop !64

518:                                              ; preds = %515
  %519 = add nuw nsw i64 %144, 1
  %520 = icmp ult i64 %519, %142
  br i1 %520, label %143, label %521, !llvm.loop !65

521:                                              ; preds = %518, %512, %133
  %522 = phi i32 [ 0, %133 ], [ %509, %512 ], [ %136, %518 ]
  %523 = phi float [ %110, %133 ], [ %200, %512 ], [ %110, %518 ]
  %524 = phi float [ %109, %133 ], [ %202, %512 ], [ %109, %518 ]
  %525 = add nuw i32 %111, 1
  %526 = icmp eq i32 %525, %1
  br i1 %526, label %527, label %107, !llvm.loop !66

527:                                              ; preds = %521, %96
  %528 = phi float [ %83, %96 ], [ %523, %521 ]
  %529 = phi float [ %85, %96 ], [ %524, %521 ]
  store float %528, ptr %2, align 4, !tbaa !34
  store float %529, ptr %3, align 4, !tbaa !34
  %530 = zext i32 %1 to i64
  br label %531

531:                                              ; preds = %527, %531
  %532 = phi i64 [ 0, %527 ], [ %534, %531 ]
  %533 = getelementptr inbounds %struct.BoxPack, ptr %0, i64 %532, i32 4
  %534 = add nuw nsw i64 %532, 1
  %535 = icmp eq i64 %534, %530
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %533, i8 0, i64 32, i1 false)
  br i1 %535, label %536, label %531, !llvm.loop !67

536:                                              ; preds = %531
  %537 = load ptr, ptr @MEM_freeN, align 8, !tbaa !38
  tail call void %537(ptr noundef %14) #9
  %538 = load ptr, ptr @MEM_freeN, align 8, !tbaa !38
  %539 = load ptr, ptr @vertarray, align 8, !tbaa !38
  tail call void %538(ptr noundef %539) #9
  br label %540

540:                                              ; preds = %536, %6
  ret void
}

; Function Attrs: nofree optsize
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @box_areasort(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 !PGOFuncName !68 {
  %3 = tail call fastcc float @box_area(ptr noundef %0) #10
  %4 = tail call fastcc float @box_area(ptr noundef %1) #10
  %5 = fcmp olt float %3, %4
  %6 = fcmp ogt float %3, %4
  %7 = sext i1 %6 to i32
  %8 = select i1 %5, i32 1, i32 %7
  ret i32 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @box_xmin_set(ptr nocapture noundef readonly %0, float noundef %1) unnamed_addr #3 !PGOFuncName !69 {
  %3 = getelementptr inbounds %struct.BoxPack, ptr %0, i64 0, i32 2
  %4 = load float, ptr %3, align 8, !tbaa !49
  %5 = fadd float %4, %1
  %6 = getelementptr inbounds %struct.BoxPack, ptr %0, i64 0, i32 4
  %7 = getelementptr inbounds %struct.BoxPack, ptr %0, i64 0, i32 4, i64 1
  %8 = load ptr, ptr %7, align 8, !tbaa !38
  store float %5, ptr %8, align 8, !tbaa !57
  %9 = load ptr, ptr %6, align 8, !tbaa !38
  store float %1, ptr %9, align 8, !tbaa !57
  tail call fastcc void @box_v34x_update(ptr noundef %0) #10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @box_ymin_set(ptr nocapture noundef readonly %0, float noundef %1) unnamed_addr #3 !PGOFuncName !70 {
  %3 = getelementptr inbounds %struct.BoxPack, ptr %0, i64 0, i32 3
  %4 = load float, ptr %3, align 4, !tbaa !51
  %5 = fadd float %4, %1
  %6 = getelementptr inbounds %struct.BoxPack, ptr %0, i64 0, i32 4
  %7 = getelementptr inbounds %struct.BoxPack, ptr %0, i64 0, i32 4, i64 1
  %8 = load ptr, ptr %7, align 8, !tbaa !38
  %9 = getelementptr inbounds %struct.BoxVert, ptr %8, i64 0, i32 1
  store float %5, ptr %9, align 4, !tbaa !58
  %10 = load ptr, ptr %6, align 8, !tbaa !38
  %11 = getelementptr inbounds %struct.BoxVert, ptr %10, i64 0, i32 1
  store float %1, ptr %11, align 4, !tbaa !58
  tail call fastcc void @box_v34y_update(ptr noundef %0) #10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @vert_bias_update(ptr nocapture noundef %0) unnamed_addr #4 !PGOFuncName !71 {
  %2 = load float, ptr %0, align 8, !tbaa !57
  %3 = getelementptr inbounds %struct.BoxVert, ptr %0, i64 0, i32 1
  %4 = load float, ptr %3, align 4, !tbaa !58
  %5 = fmul float %2, %4
  %6 = fmul float %5, 0x3EB0C6F7A0000000
  %7 = getelementptr inbounds %struct.BoxVert, ptr %0, i64 0, i32 9
  store float %6, ptr %7, align 8, !tbaa !72
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @vertex_sort(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #5 !PGOFuncName !73 {
  %3 = load ptr, ptr @vertarray, align 8, !tbaa !38
  %4 = load i32, ptr %0, align 4, !tbaa !53
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds %struct.BoxVert, ptr %3, i64 %5
  %7 = load i32, ptr %1, align 4, !tbaa !53
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds %struct.BoxVert, ptr %3, i64 %8
  %10 = getelementptr inbounds %struct.BoxVert, ptr %3, i64 %5, i32 2
  %11 = load i32, ptr %10, align 8
  %12 = and i32 %11, 255
  %13 = icmp eq i32 %12, 0
  %14 = getelementptr inbounds %struct.BoxVert, ptr %3, i64 %8, i32 2
  %15 = load i32, ptr %14, align 8
  %16 = and i32 %15, 255
  br i1 %13, label %17, label %20

17:                                               ; preds = %2
  %18 = icmp ne i32 %16, 0
  %19 = zext i1 %18 to i32
  br label %47

20:                                               ; preds = %2
  %21 = icmp eq i32 %16, 0
  br i1 %21, label %47, label %22

22:                                               ; preds = %20
  %23 = load float, ptr %6, align 8, !tbaa !57
  %24 = load float, ptr @box_width, align 4, !tbaa !34
  %25 = fadd float %23, %24
  %26 = getelementptr inbounds %struct.BoxVert, ptr %3, i64 %5, i32 1
  %27 = load float, ptr %26, align 4, !tbaa !58
  %28 = load float, ptr @box_height, align 4, !tbaa !34
  %29 = fadd float %27, %28
  %30 = tail call fastcc float @max_ff(float noundef %25, float noundef %29) #10
  %31 = load float, ptr %9, align 8, !tbaa !57
  %32 = fadd float %24, %31
  %33 = getelementptr inbounds %struct.BoxVert, ptr %3, i64 %8, i32 1
  %34 = load float, ptr %33, align 4, !tbaa !58
  %35 = fadd float %28, %34
  %36 = tail call fastcc float @max_ff(float noundef %32, float noundef %35) #10
  %37 = getelementptr inbounds %struct.BoxVert, ptr %3, i64 %5, i32 9
  %38 = load float, ptr %37, align 8, !tbaa !72
  %39 = fadd float %30, %38
  %40 = getelementptr inbounds %struct.BoxVert, ptr %3, i64 %8, i32 9
  %41 = load float, ptr %40, align 8, !tbaa !72
  %42 = fadd float %36, %41
  %43 = fcmp ogt float %39, %42
  br i1 %43, label %47, label %44

44:                                               ; preds = %22
  %45 = fcmp olt float %39, %42
  %46 = sext i1 %45 to i32
  br label %47

47:                                               ; preds = %17, %44, %22, %20
  %48 = phi i32 [ -1, %20 ], [ 1, %22 ], [ %46, %44 ], [ %19, %17 ]
  ret i32 %48
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @quad_flag(i32 noundef %0) unnamed_addr #6 !PGOFuncName !74 {
  %2 = shl nuw nsw i32 1, %0
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @box_xmax_set(ptr nocapture noundef readonly %0, float noundef %1) unnamed_addr #3 !PGOFuncName !75 {
  %3 = getelementptr inbounds %struct.BoxPack, ptr %0, i64 0, i32 2
  %4 = load float, ptr %3, align 8, !tbaa !49
  %5 = fsub float %1, %4
  %6 = getelementptr inbounds %struct.BoxPack, ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !38
  store float %5, ptr %7, align 8, !tbaa !57
  %8 = getelementptr inbounds %struct.BoxPack, ptr %0, i64 0, i32 4, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !38
  store float %1, ptr %9, align 8, !tbaa !57
  tail call fastcc void @box_v34x_update(ptr noundef %0) #10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @box_ymax_set(ptr nocapture noundef readonly %0, float noundef %1) unnamed_addr #3 !PGOFuncName !76 {
  %3 = getelementptr inbounds %struct.BoxPack, ptr %0, i64 0, i32 3
  %4 = load float, ptr %3, align 4, !tbaa !51
  %5 = fsub float %1, %4
  %6 = getelementptr inbounds %struct.BoxPack, ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !38
  %8 = getelementptr inbounds %struct.BoxVert, ptr %7, i64 0, i32 1
  store float %5, ptr %8, align 4, !tbaa !58
  %9 = getelementptr inbounds %struct.BoxPack, ptr %0, i64 0, i32 4, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !38
  %11 = getelementptr inbounds %struct.BoxVert, ptr %10, i64 0, i32 1
  store float %1, ptr %11, align 4, !tbaa !58
  tail call fastcc void @box_v34y_update(ptr noundef %0) #10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc float @box_xmin_get(ptr nocapture noundef readonly %0) unnamed_addr #5 !PGOFuncName !77 {
  %2 = getelementptr inbounds %struct.BoxPack, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !38
  %4 = load float, ptr %3, align 8, !tbaa !57
  ret float %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc float @box_ymin_get(ptr nocapture noundef readonly %0) unnamed_addr #5 !PGOFuncName !78 {
  %2 = getelementptr inbounds %struct.BoxPack, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !38
  %4 = getelementptr inbounds %struct.BoxVert, ptr %3, i64 0, i32 1
  %5 = load float, ptr %4, align 4, !tbaa !58
  ret float %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @box_isect(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !79 {
  %3 = tail call fastcc float @box_xmin_get(ptr noundef %0) #10
  %4 = fadd float %3, 0x3E7AD7F2A0000000
  %5 = tail call fastcc float @box_xmax_get(ptr noundef %1) #10
  %6 = fcmp ult float %4, %5
  br i1 %6, label %7, label %23

7:                                                ; preds = %2
  %8 = tail call fastcc float @box_ymin_get(ptr noundef %0) #10
  %9 = fadd float %8, 0x3E7AD7F2A0000000
  %10 = tail call fastcc float @box_ymax_get(ptr noundef %1) #10
  %11 = fcmp ult float %9, %10
  br i1 %11, label %12, label %23

12:                                               ; preds = %7
  %13 = tail call fastcc float @box_xmax_get(ptr noundef %0) #10
  %14 = fadd float %13, 0xBE7AD7F2A0000000
  %15 = tail call fastcc float @box_xmin_get(ptr noundef %1) #10
  %16 = fcmp ugt float %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %12
  %18 = tail call fastcc float @box_ymax_get(ptr noundef %0) #10
  %19 = fadd float %18, 0xBE7AD7F2A0000000
  %20 = tail call fastcc float @box_ymin_get(ptr noundef %1) #10
  %21 = fcmp ugt float %19, %20
  %22 = zext i1 %21 to i8
  br label %23

23:                                               ; preds = %17, %12, %7, %2
  %24 = phi i8 [ 0, %12 ], [ 0, %7 ], [ 0, %2 ], [ %22, %17 ]
  ret i8 %24
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef float @max_ff(float noundef %0, float noundef %1) unnamed_addr #6 !PGOFuncName !80 {
  %3 = fcmp ogt float %1, %0
  %4 = select i1 %3, float %1, float %0
  ret float %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc float @box_xmax_get(ptr nocapture noundef readonly %0) unnamed_addr #5 !PGOFuncName !81 {
  %2 = getelementptr inbounds %struct.BoxPack, ptr %0, i64 0, i32 4, i64 1
  %3 = load ptr, ptr %2, align 8, !tbaa !38
  %4 = load float, ptr %3, align 8, !tbaa !57
  ret float %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc float @box_ymax_get(ptr nocapture noundef readonly %0) unnamed_addr #5 !PGOFuncName !82 {
  %2 = getelementptr inbounds %struct.BoxPack, ptr %0, i64 0, i32 4, i64 1
  %3 = load ptr, ptr %2, align 8, !tbaa !38
  %4 = getelementptr inbounds %struct.BoxVert, ptr %3, i64 0, i32 1
  %5 = load float, ptr %4, align 4, !tbaa !58
  ret float %5
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc float @box_area(ptr nocapture noundef readonly %0) unnamed_addr #2 !PGOFuncName !83 {
  %2 = getelementptr inbounds %struct.BoxPack, ptr %0, i64 0, i32 2
  %3 = load float, ptr %2, align 8, !tbaa !49
  %4 = getelementptr inbounds %struct.BoxPack, ptr %0, i64 0, i32 3
  %5 = load float, ptr %4, align 4, !tbaa !51
  %6 = fmul float %3, %5
  ret float %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @box_v34x_update(ptr nocapture noundef readonly %0) unnamed_addr #3 !PGOFuncName !84 {
  %2 = getelementptr inbounds %struct.BoxPack, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !38
  %4 = load float, ptr %3, align 8, !tbaa !57
  %5 = getelementptr inbounds %struct.BoxPack, ptr %0, i64 0, i32 4, i64 2
  %6 = load ptr, ptr %5, align 8, !tbaa !38
  store float %4, ptr %6, align 8, !tbaa !57
  %7 = getelementptr inbounds %struct.BoxPack, ptr %0, i64 0, i32 4, i64 1
  %8 = load ptr, ptr %7, align 8, !tbaa !38
  %9 = load float, ptr %8, align 8, !tbaa !57
  %10 = getelementptr inbounds %struct.BoxPack, ptr %0, i64 0, i32 4, i64 3
  %11 = load ptr, ptr %10, align 8, !tbaa !38
  store float %9, ptr %11, align 8, !tbaa !57
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @box_v34y_update(ptr nocapture noundef readonly %0) unnamed_addr #3 !PGOFuncName !85 {
  %2 = getelementptr inbounds %struct.BoxPack, ptr %0, i64 0, i32 4
  %3 = getelementptr inbounds %struct.BoxPack, ptr %0, i64 0, i32 4, i64 1
  %4 = load ptr, ptr %3, align 8, !tbaa !38
  %5 = getelementptr inbounds %struct.BoxVert, ptr %4, i64 0, i32 1
  %6 = load float, ptr %5, align 4, !tbaa !58
  %7 = getelementptr inbounds %struct.BoxPack, ptr %0, i64 0, i32 4, i64 2
  %8 = load ptr, ptr %7, align 8, !tbaa !38
  %9 = getelementptr inbounds %struct.BoxVert, ptr %8, i64 0, i32 1
  store float %6, ptr %9, align 4, !tbaa !58
  %10 = load ptr, ptr %2, align 8, !tbaa !38
  %11 = getelementptr inbounds %struct.BoxVert, ptr %10, i64 0, i32 1
  %12 = load float, ptr %11, align 4, !tbaa !58
  %13 = getelementptr inbounds %struct.BoxPack, ptr %0, i64 0, i32 4, i64 3
  %14 = load ptr, ptr %13, align 8, !tbaa !38
  %15 = getelementptr inbounds %struct.BoxVert, ptr %14, i64 0, i32 1
  store float %12, ptr %15, align 4, !tbaa !58
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { nounwind optsize }
attributes #10 = { optsize }

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
!34 = !{!35, !35, i64 0}
!35 = !{!"float", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !39, i64 0}
!39 = !{!"any pointer", !36, i64 0}
!40 = !{!41, !39, i64 16}
!41 = !{!"BoxVert", !35, i64 0, !35, i64 4, !42, i64 8, !42, i64 9, !42, i64 9, !42, i64 12, !39, i64 16, !39, i64 24, !39, i64 32, !39, i64 40, !36, i64 48, !35, i64 80, !42, i64 84}
!42 = !{!"int", !36, i64 0}
!43 = !{!41, !42, i64 12}
!44 = !{!41, !39, i64 24}
!45 = !{!41, !39, i64 32}
!46 = !{!41, !39, i64 40}
!47 = distinct !{!47, !48}
!48 = !{!"llvm.loop.mustprogress"}
!49 = !{!50, !35, i64 8}
!50 = !{!"BoxPack", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !36, i64 16, !42, i64 48}
!51 = !{!50, !35, i64 12}
!52 = distinct !{!52, !48}
!53 = !{!42, !42, i64 0}
!54 = distinct !{!54, !48}
!55 = distinct !{!55, !48}
!56 = !{i32 1, i32 9}
!57 = !{!41, !35, i64 0}
!58 = !{!41, !35, i64 4}
!59 = !{i8 0, i8 2}
!60 = distinct !{!60, !48}
!61 = distinct !{!61, !48}
!62 = !{!50, !35, i64 0}
!63 = !{!50, !35, i64 4}
!64 = distinct !{!64, !48}
!65 = distinct !{!65, !48}
!66 = distinct !{!66, !48}
!67 = distinct !{!67, !48}
!68 = !{!"boxpack2d.c:box_areasort"}
!69 = !{!"boxpack2d.c:box_xmin_set"}
!70 = !{!"boxpack2d.c:box_ymin_set"}
!71 = !{!"boxpack2d.c:vert_bias_update"}
!72 = !{!41, !35, i64 80}
!73 = !{!"boxpack2d.c:vertex_sort"}
!74 = !{!"boxpack2d.c:quad_flag"}
!75 = !{!"boxpack2d.c:box_xmax_set"}
!76 = !{!"boxpack2d.c:box_ymax_set"}
!77 = !{!"boxpack2d.c:box_xmin_get"}
!78 = !{!"boxpack2d.c:box_ymin_get"}
!79 = !{!"boxpack2d.c:box_isect"}
!80 = !{!"boxpack2d.c:max_ff"}
!81 = !{!"boxpack2d.c:box_xmax_get"}
!82 = !{!"boxpack2d.c:box_ymax_get"}
!83 = !{!"boxpack2d.c:box_area"}
!84 = !{!"boxpack2d.c:box_v34x_update"}
!85 = !{!"boxpack2d.c:box_v34y_update"}

; ModuleID = 'blender/intern/mikktspace/mikktspace.c'
source_filename = "blender/intern/mikktspace/mikktspace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.STriInfo = type { [3 x i32], [3 x ptr], %struct.SVec3, %struct.SVec3, float, float, i32, i32, i32, [4 x i8] }
%struct.SVec3 = type { float, float, float }
%struct.SMikkTSpaceInterface = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.STmpVert = type { [3 x float], i32 }
%union.SEdge = type { %struct.anon }
%struct.anon = type { i32, i32, i32 }
%struct.SGroup = type { i32, ptr, i32, i32 }
%struct.STSpace = type { %struct.SVec3, float, %struct.SVec3, float, i32, i32 }
%struct.SSubGroup = type { i32, ptr }

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @genTangSpaceDefault(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @genTangSpace(ptr noundef %0, float noundef 1.800000e+02), !range !34
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @genTangSpace(ptr noundef %0, float noundef %1) local_unnamed_addr #1 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca [2 x float], align 4
  %11 = alloca [2 x float], align 4
  %12 = alloca [2 x float], align 4
  %13 = alloca [2 x float], align 4
  %14 = alloca [2 x float], align 4
  %15 = alloca [2 x float], align 4
  %16 = alloca [2 x float], align 4
  %17 = alloca [2 x float], align 4
  %18 = alloca [2 x float], align 4
  %19 = alloca [3 x float], align 4
  %20 = alloca [3 x float], align 4
  %21 = alloca [3 x float], align 4
  %22 = alloca %struct.STriInfo, align 8
  %23 = alloca [3 x float], align 4
  %24 = alloca [3 x float], align 4
  %25 = alloca [3 x float], align 4
  %26 = alloca [2 x float], align 4
  %27 = alloca [3 x float], align 4
  %28 = alloca [3 x float], align 4
  %29 = alloca [2 x float], align 4
  %30 = alloca [3 x float], align 4
  %31 = alloca [3 x float], align 4
  %32 = alloca [3 x float], align 4
  %33 = alloca [3 x float], align 4
  %34 = alloca [3 x float], align 4
  %35 = alloca [2 x float], align 4
  %36 = alloca [3 x float], align 4
  %37 = alloca [3 x float], align 4
  %38 = alloca [2 x float], align 4
  %39 = alloca [3 x float], align 4
  %40 = alloca [3 x float], align 4
  %41 = alloca [3 x float], align 4
  %42 = alloca [3 x float], align 4
  %43 = alloca [3 x float], align 4
  %44 = alloca [3 x float], align 4
  %45 = alloca [3 x float], align 4
  %46 = alloca [3 x float], align 4
  %47 = alloca [2 x float], align 4
  %48 = alloca [2 x float], align 4
  %49 = alloca [2 x float], align 4
  %50 = alloca [2 x float], align 4
  %51 = alloca [3 x float], align 4
  %52 = alloca [3 x float], align 4
  %53 = load ptr, ptr %0, align 8, !tbaa !35
  %54 = load ptr, ptr %53, align 8, !tbaa !40
  %55 = tail call i32 %54(ptr noundef nonnull %0) #13
  %56 = fmul float %1, 0x400921FB60000000
  %57 = fdiv float %56, 1.800000e+02
  %58 = fpext float %57 to double
  %59 = tail call double @cos(double noundef %58) #13
  %60 = fptrunc double %59 to float
  %61 = load ptr, ptr %0, align 8, !tbaa !35
  %62 = load ptr, ptr %61, align 8, !tbaa !40
  %63 = icmp eq ptr %62, null
  br i1 %63, label %2702, label %64

64:                                               ; preds = %2
  %65 = getelementptr inbounds %struct.SMikkTSpaceInterface, ptr %61, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !42
  %67 = icmp eq ptr %66, null
  br i1 %67, label %2702, label %68

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.SMikkTSpaceInterface, ptr %61, i64 0, i32 2
  %70 = load ptr, ptr %69, align 8, !tbaa !43
  %71 = icmp eq ptr %70, null
  br i1 %71, label %2702, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.SMikkTSpaceInterface, ptr %61, i64 0, i32 3
  %74 = load ptr, ptr %73, align 8, !tbaa !44
  %75 = icmp eq ptr %74, null
  br i1 %75, label %2702, label %76

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.SMikkTSpaceInterface, ptr %61, i64 0, i32 4
  %78 = load ptr, ptr %77, align 8, !tbaa !45
  %79 = icmp eq ptr %78, null
  br i1 %79, label %2702, label %80

80:                                               ; preds = %76
  %81 = icmp sgt i32 %55, 0
  br i1 %81, label %82, label %97

82:                                               ; preds = %80, %93
  %83 = phi i32 [ %94, %93 ], [ 0, %80 ]
  %84 = phi i32 [ %95, %93 ], [ 0, %80 ]
  %85 = load ptr, ptr %0, align 8, !tbaa !35
  %86 = getelementptr inbounds %struct.SMikkTSpaceInterface, ptr %85, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !42
  %88 = tail call i32 %87(ptr noundef nonnull %0, i32 noundef %84) #13
  switch i32 %88, label %93 [
    i32 3, label %89
    i32 4, label %91
  ]

89:                                               ; preds = %82
  %90 = add nsw i32 %83, 1
  br label %93

91:                                               ; preds = %82
  %92 = add nsw i32 %83, 2
  br label %93

93:                                               ; preds = %82, %91, %89
  %94 = phi i32 [ %90, %89 ], [ %92, %91 ], [ %83, %82 ]
  %95 = add nuw nsw i32 %84, 1
  %96 = icmp eq i32 %95, %55
  br i1 %96, label %97, label %82, !llvm.loop !46

97:                                               ; preds = %93, %80
  %98 = phi i32 [ 0, %80 ], [ %94, %93 ]
  %99 = icmp slt i32 %98, 1
  br i1 %99, label %2702, label %100

100:                                              ; preds = %97
  %101 = zext nneg i32 %98 to i64
  %102 = mul nuw nsw i64 %101, 12
  %103 = tail call noalias ptr @malloc(i64 noundef %102) #14
  %104 = mul nuw nsw i64 %101, 88
  %105 = tail call noalias ptr @malloc(i64 noundef %104) #14
  %106 = icmp eq ptr %103, null
  %107 = icmp eq ptr %105, null
  %108 = or i1 %106, %107
  br i1 %108, label %127, label %109

109:                                              ; preds = %100
  %110 = load ptr, ptr %0, align 8, !tbaa !35
  %111 = load ptr, ptr %110, align 8, !tbaa !40
  %112 = tail call i32 %111(ptr noundef nonnull %0) #13
  %113 = icmp sgt i32 %112, 0
  br i1 %113, label %114, label %130

114:                                              ; preds = %109
  %115 = getelementptr inbounds [2 x float], ptr %50, i64 0, i64 1
  %116 = getelementptr inbounds [2 x float], ptr %49, i64 0, i64 1
  %117 = getelementptr inbounds [2 x float], ptr %48, i64 0, i64 1
  %118 = getelementptr inbounds [2 x float], ptr %47, i64 0, i64 1
  %119 = getelementptr inbounds [3 x float], ptr %46, i64 0, i64 1
  %120 = getelementptr inbounds [3 x float], ptr %46, i64 0, i64 2
  %121 = getelementptr inbounds [3 x float], ptr %45, i64 0, i64 1
  %122 = getelementptr inbounds [3 x float], ptr %45, i64 0, i64 2
  %123 = getelementptr inbounds [3 x float], ptr %44, i64 0, i64 1
  %124 = getelementptr inbounds [3 x float], ptr %44, i64 0, i64 2
  %125 = getelementptr inbounds [3 x float], ptr %43, i64 0, i64 1
  %126 = getelementptr inbounds [3 x float], ptr %43, i64 0, i64 2
  br label %134

127:                                              ; preds = %100
  br i1 %106, label %129, label %128

128:                                              ; preds = %127
  tail call void @free(ptr noundef %103) #13
  br label %129

129:                                              ; preds = %128, %127
  br i1 %107, label %2702, label %2699

130:                                              ; preds = %268, %109
  %131 = phi i32 [ 0, %109 ], [ %270, %268 ]
  %132 = call i32 @llvm.smax.i32(i32 %98, i32 1)
  %133 = zext nneg i32 %132 to i64
  br label %276

134:                                              ; preds = %114, %268
  %135 = phi i32 [ 0, %114 ], [ %270, %268 ]
  %136 = phi i32 [ 0, %114 ], [ %271, %268 ]
  %137 = phi i32 [ 0, %114 ], [ %269, %268 ]
  %138 = load ptr, ptr %0, align 8, !tbaa !35
  %139 = getelementptr inbounds %struct.SMikkTSpaceInterface, ptr %138, i64 0, i32 1
  %140 = load ptr, ptr %139, align 8, !tbaa !42
  %141 = call i32 %140(ptr noundef nonnull %0, i32 noundef %136) #13
  %142 = add i32 %141, -5
  %143 = icmp ult i32 %142, -2
  br i1 %143, label %268, label %144

144:                                              ; preds = %134
  %145 = sext i32 %137 to i64
  %146 = getelementptr inbounds %struct.STriInfo, ptr %105, i64 %145, i32 6
  store i32 %136, ptr %146, align 8, !tbaa !49
  %147 = getelementptr inbounds %struct.STriInfo, ptr %105, i64 %145, i32 8
  store i32 %135, ptr %147, align 8, !tbaa !54
  %148 = icmp eq i32 %141, 3
  %149 = shl i32 %136, 2
  br i1 %148, label %150, label %161

150:                                              ; preds = %144
  %151 = getelementptr inbounds %struct.STriInfo, ptr %105, i64 %145, i32 9
  store i8 0, ptr %151, align 1, !tbaa !55
  %152 = getelementptr inbounds i8, ptr %151, i64 1
  store i8 1, ptr %152, align 1, !tbaa !55
  %153 = getelementptr inbounds i8, ptr %151, i64 2
  store i8 2, ptr %153, align 1, !tbaa !55
  %154 = mul nsw i32 %137, 3
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, ptr %103, i64 %155
  store i32 %149, ptr %156, align 4, !tbaa !56
  %157 = or disjoint i32 %149, 1
  %158 = getelementptr i32, ptr %156, i64 1
  store i32 %157, ptr %158, align 4, !tbaa !56
  %159 = or disjoint i32 %149, 2
  %160 = getelementptr i32, ptr %156, i64 2
  store i32 %159, ptr %160, align 4, !tbaa !56
  br label %264

161:                                              ; preds = %144
  %162 = add nsw i32 %137, 1
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.STriInfo, ptr %105, i64 %163, i32 6
  store i32 %136, ptr %164, align 8, !tbaa !49
  %165 = getelementptr inbounds %struct.STriInfo, ptr %105, i64 %163, i32 8
  store i32 %135, ptr %165, align 8, !tbaa !54
  %166 = or disjoint i32 %149, 1
  %167 = or disjoint i32 %149, 2
  %168 = or disjoint i32 %149, 3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %50) #13
  %169 = ashr exact i32 %149, 2
  %170 = load ptr, ptr %0, align 8, !tbaa !35
  %171 = getelementptr inbounds %struct.SMikkTSpaceInterface, ptr %170, i64 0, i32 4
  %172 = load ptr, ptr %171, align 8, !tbaa !45
  call void %172(ptr noundef nonnull %0, ptr noundef nonnull %50, i32 noundef %169, i32 noundef 0) #13
  %173 = load float, ptr %50, align 4, !tbaa !57
  %174 = load float, ptr %115, align 4, !tbaa !57
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %50) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %49) #13
  %175 = load ptr, ptr %0, align 8, !tbaa !35
  %176 = getelementptr inbounds %struct.SMikkTSpaceInterface, ptr %175, i64 0, i32 4
  %177 = load ptr, ptr %176, align 8, !tbaa !45
  call void %177(ptr noundef nonnull %0, ptr noundef nonnull %49, i32 noundef %169, i32 noundef 1) #13
  %178 = load float, ptr %49, align 4, !tbaa !57
  %179 = load float, ptr %116, align 4, !tbaa !57
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %49) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %48) #13
  %180 = load ptr, ptr %0, align 8, !tbaa !35
  %181 = getelementptr inbounds %struct.SMikkTSpaceInterface, ptr %180, i64 0, i32 4
  %182 = load ptr, ptr %181, align 8, !tbaa !45
  call void %182(ptr noundef nonnull %0, ptr noundef nonnull %48, i32 noundef %169, i32 noundef 2) #13
  %183 = load float, ptr %48, align 4, !tbaa !57
  %184 = load float, ptr %117, align 4, !tbaa !57
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %48) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %47) #13
  %185 = load ptr, ptr %0, align 8, !tbaa !35
  %186 = getelementptr inbounds %struct.SMikkTSpaceInterface, ptr %185, i64 0, i32 4
  %187 = load ptr, ptr %186, align 8, !tbaa !45
  call void %187(ptr noundef nonnull %0, ptr noundef nonnull %47, i32 noundef %169, i32 noundef 3) #13
  %188 = load float, ptr %47, align 4, !tbaa !57
  %189 = load float, ptr %118, align 4, !tbaa !57
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %47) #13
  %190 = fsub float %183, %173
  %191 = fsub float %184, %174
  %192 = fmul float %191, %191
  %193 = call float @llvm.fmuladd.f32(float %190, float %190, float %192)
  %194 = fsub float %188, %178
  %195 = fsub float %189, %179
  %196 = fmul float %195, %195
  %197 = call float @llvm.fmuladd.f32(float %194, float %194, float %196)
  %198 = fcmp olt float %193, %197
  br i1 %198, label %240, label %199

199:                                              ; preds = %161
  %200 = fcmp olt float %197, %193
  br i1 %200, label %240, label %201

201:                                              ; preds = %199
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %46) #13
  %202 = load ptr, ptr %0, align 8, !tbaa !35
  %203 = getelementptr inbounds %struct.SMikkTSpaceInterface, ptr %202, i64 0, i32 2
  %204 = load ptr, ptr %203, align 8, !tbaa !43
  call void %204(ptr noundef nonnull %0, ptr noundef nonnull %46, i32 noundef %169, i32 noundef 0) #13
  %205 = load float, ptr %46, align 4, !tbaa !57
  %206 = load float, ptr %119, align 4, !tbaa !57
  %207 = load float, ptr %120, align 4, !tbaa !57
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %46) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %45) #13
  %208 = load ptr, ptr %0, align 8, !tbaa !35
  %209 = getelementptr inbounds %struct.SMikkTSpaceInterface, ptr %208, i64 0, i32 2
  %210 = load ptr, ptr %209, align 8, !tbaa !43
  call void %210(ptr noundef nonnull %0, ptr noundef nonnull %45, i32 noundef %169, i32 noundef 1) #13
  %211 = load float, ptr %45, align 4, !tbaa !57
  %212 = load float, ptr %121, align 4, !tbaa !57
  %213 = load float, ptr %122, align 4, !tbaa !57
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %45) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %44) #13
  %214 = load ptr, ptr %0, align 8, !tbaa !35
  %215 = getelementptr inbounds %struct.SMikkTSpaceInterface, ptr %214, i64 0, i32 2
  %216 = load ptr, ptr %215, align 8, !tbaa !43
  call void %216(ptr noundef nonnull %0, ptr noundef nonnull %44, i32 noundef %169, i32 noundef 2) #13
  %217 = load float, ptr %44, align 4, !tbaa !57
  %218 = load float, ptr %123, align 4, !tbaa !57
  %219 = load float, ptr %124, align 4, !tbaa !57
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %44) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %43) #13
  %220 = load ptr, ptr %0, align 8, !tbaa !35
  %221 = getelementptr inbounds %struct.SMikkTSpaceInterface, ptr %220, i64 0, i32 2
  %222 = load ptr, ptr %221, align 8, !tbaa !43
  call void %222(ptr noundef nonnull %0, ptr noundef nonnull %43, i32 noundef %169, i32 noundef 3) #13
  %223 = load float, ptr %43, align 4, !tbaa !57
  %224 = load float, ptr %125, align 4, !tbaa !57
  %225 = load float, ptr %126, align 4, !tbaa !57
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %43) #13
  %226 = fsub float %217, %205
  %227 = fsub float %218, %206
  %228 = fsub float %219, %207
  %229 = fmul float %227, %227
  %230 = call float @llvm.fmuladd.f32(float %226, float %226, float %229)
  %231 = call float @llvm.fmuladd.f32(float %228, float %228, float %230)
  %232 = fsub float %223, %211
  %233 = fsub float %224, %212
  %234 = fsub float %225, %213
  %235 = fmul float %233, %233
  %236 = call float @llvm.fmuladd.f32(float %232, float %232, float %235)
  %237 = call float @llvm.fmuladd.f32(float %234, float %234, float %236)
  %238 = fcmp uge float %237, %231
  %239 = zext i1 %238 to i32
  br label %240

240:                                              ; preds = %201, %199, %161
  %241 = phi i32 [ %239, %201 ], [ 1, %161 ], [ 0, %199 ]
  %242 = icmp eq i32 %241, 0
  %243 = getelementptr inbounds %struct.STriInfo, ptr %105, i64 %145, i32 9
  store i8 0, ptr %243, align 1, !tbaa !55
  %244 = getelementptr inbounds i8, ptr %243, i64 1
  store i8 1, ptr %244, align 1, !tbaa !55
  %245 = getelementptr inbounds i8, ptr %243, i64 2
  %246 = mul nsw i32 %137, 3
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i32, ptr %103, i64 %247
  %249 = getelementptr i32, ptr %248, i64 1
  %250 = getelementptr i32, ptr %248, i64 2
  %251 = getelementptr inbounds %struct.STriInfo, ptr %105, i64 %163, i32 9
  %252 = getelementptr inbounds i8, ptr %251, i64 1
  %253 = getelementptr inbounds i8, ptr %251, i64 2
  %254 = mul nsw i32 %162, 3
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i32, ptr %103, i64 %255
  %257 = getelementptr i32, ptr %256, i64 1
  %258 = getelementptr i32, ptr %256, i64 2
  %259 = select i1 %242, i8 3, i8 2
  %260 = select i1 %242, i32 %168, i32 %167
  %261 = trunc i32 %241 to i8
  %262 = xor i8 %261, 1
  %263 = select i1 %242, i32 %166, i32 %149
  store i8 %259, ptr %245, align 1, !tbaa !55
  store i32 %149, ptr %248, align 4, !tbaa !56
  store i32 %166, ptr %249, align 4, !tbaa !56
  store i32 %260, ptr %250, align 4, !tbaa !56
  store i8 %262, ptr %251, align 1, !tbaa !55
  store i8 2, ptr %252, align 1, !tbaa !55
  store i8 3, ptr %253, align 1, !tbaa !55
  store i32 %263, ptr %256, align 4, !tbaa !56
  store i32 %167, ptr %257, align 4, !tbaa !56
  store i32 %168, ptr %258, align 4, !tbaa !56
  br label %264

264:                                              ; preds = %240, %150
  %265 = phi i32 [ 2, %240 ], [ 1, %150 ]
  %266 = add nsw i32 %137, %265
  %267 = add nsw i32 %141, %135
  br label %268

268:                                              ; preds = %264, %134
  %269 = phi i32 [ %266, %264 ], [ %137, %134 ]
  %270 = phi i32 [ %267, %264 ], [ %135, %134 ]
  %271 = add nuw nsw i32 %136, 1
  %272 = load ptr, ptr %0, align 8, !tbaa !35
  %273 = load ptr, ptr %272, align 8, !tbaa !40
  %274 = call i32 %273(ptr noundef nonnull %0) #13
  %275 = icmp slt i32 %271, %274
  br i1 %275, label %134, label %130, !llvm.loop !58

276:                                              ; preds = %130, %276
  %277 = phi i64 [ 0, %130 ], [ %279, %276 ]
  %278 = getelementptr inbounds %struct.STriInfo, ptr %105, i64 %277, i32 7
  store i32 0, ptr %278, align 4, !tbaa !59
  %279 = add nuw nsw i64 %277, 1
  %280 = icmp eq i64 %279, %133
  br i1 %280, label %281, label %276, !llvm.loop !60

281:                                              ; preds = %276
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %42) #13
  %282 = load ptr, ptr %0, align 8, !tbaa !35
  %283 = getelementptr inbounds %struct.SMikkTSpaceInterface, ptr %282, i64 0, i32 2
  %284 = load ptr, ptr %283, align 8, !tbaa !43
  call void %284(ptr noundef nonnull %0, ptr noundef nonnull %42, i32 noundef 0, i32 noundef 0) #13
  %285 = load float, ptr %42, align 4, !tbaa !57
  %286 = getelementptr inbounds [3 x float], ptr %42, i64 0, i64 1
  %287 = load float, ptr %286, align 4, !tbaa !57
  %288 = getelementptr inbounds [3 x float], ptr %42, i64 0, i64 2
  %289 = load float, ptr %288, align 4, !tbaa !57
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %42) #13
  %290 = mul i32 %98, 3
  %291 = insertelement <2 x float> poison, float %285, i64 0
  %292 = insertelement <2 x float> %291, float %287, i64 1
  %293 = getelementptr inbounds [3 x float], ptr %41, i64 0, i64 1
  %294 = getelementptr inbounds [3 x float], ptr %41, i64 0, i64 2
  %295 = call i32 @llvm.smax.i32(i32 %290, i32 2)
  %296 = zext nneg i32 %295 to i64
  br label %297

297:                                              ; preds = %281, %341
  %298 = phi i64 [ 1, %281 ], [ %344, %341 ]
  %299 = phi float [ %289, %281 ], [ %343, %341 ]
  %300 = phi <2 x float> [ %292, %281 ], [ %336, %341 ]
  %301 = phi float [ %289, %281 ], [ %342, %341 ]
  %302 = phi <2 x float> [ %292, %281 ], [ %335, %341 ]
  %303 = getelementptr inbounds i32, ptr %103, i64 %298
  %304 = load i32, ptr %303, align 4, !tbaa !56
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %41) #13
  %305 = and i32 %304, 3
  %306 = ashr i32 %304, 2
  %307 = load ptr, ptr %0, align 8, !tbaa !35
  %308 = getelementptr inbounds %struct.SMikkTSpaceInterface, ptr %307, i64 0, i32 2
  %309 = load ptr, ptr %308, align 8, !tbaa !43
  call void %309(ptr noundef nonnull %0, ptr noundef nonnull %41, i32 noundef %306, i32 noundef %305) #13
  %310 = load float, ptr %41, align 4, !tbaa !57
  %311 = load float, ptr %293, align 4, !tbaa !57
  %312 = load float, ptr %294, align 4, !tbaa !57
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %41) #13
  %313 = extractelement <2 x float> %300, i64 0
  %314 = fcmp ogt float %313, %310
  br i1 %314, label %315, label %317

315:                                              ; preds = %297
  %316 = insertelement <2 x float> %300, float %310, i64 0
  br label %322

317:                                              ; preds = %297
  %318 = extractelement <2 x float> %302, i64 0
  %319 = fcmp olt float %318, %310
  br i1 %319, label %320, label %322

320:                                              ; preds = %317
  %321 = insertelement <2 x float> %302, float %310, i64 0
  br label %322

322:                                              ; preds = %320, %317, %315
  %323 = phi <2 x float> [ %302, %315 ], [ %321, %320 ], [ %302, %317 ]
  %324 = phi <2 x float> [ %316, %315 ], [ %300, %320 ], [ %300, %317 ]
  %325 = extractelement <2 x float> %324, i64 1
  %326 = fcmp ogt float %325, %311
  br i1 %326, label %327, label %329

327:                                              ; preds = %322
  %328 = insertelement <2 x float> %324, float %311, i64 1
  br label %334

329:                                              ; preds = %322
  %330 = extractelement <2 x float> %323, i64 1
  %331 = fcmp olt float %330, %311
  br i1 %331, label %332, label %334

332:                                              ; preds = %329
  %333 = insertelement <2 x float> %323, float %311, i64 1
  br label %334

334:                                              ; preds = %332, %329, %327
  %335 = phi <2 x float> [ %323, %327 ], [ %333, %332 ], [ %323, %329 ]
  %336 = phi <2 x float> [ %328, %327 ], [ %324, %332 ], [ %324, %329 ]
  %337 = fcmp ogt float %299, %312
  br i1 %337, label %341, label %338

338:                                              ; preds = %334
  %339 = fcmp olt float %301, %312
  br i1 %339, label %340, label %341

340:                                              ; preds = %338
  br label %341

341:                                              ; preds = %340, %338, %334
  %342 = phi float [ %312, %340 ], [ %301, %338 ], [ %301, %334 ]
  %343 = phi float [ %299, %340 ], [ %299, %338 ], [ %312, %334 ]
  %344 = add nuw nsw i64 %298, 1
  %345 = icmp eq i64 %344, %296
  br i1 %345, label %346, label %297, !llvm.loop !61

346:                                              ; preds = %341
  %347 = fsub <2 x float> %335, %336
  %348 = extractelement <2 x float> %347, i64 0
  %349 = extractelement <2 x float> %335, i64 1
  %350 = extractelement <2 x float> %336, i64 1
  %351 = fsub float %349, %350
  %352 = fsub float %342, %343
  %353 = fcmp ogt float %351, %348
  %354 = fcmp ogt float %351, %352
  %355 = select i1 %353, i1 %354, i1 false
  br i1 %355, label %361, label %356

356:                                              ; preds = %346
  %357 = extractelement <2 x float> %336, i64 0
  %358 = extractelement <2 x float> %335, i64 0
  %359 = fcmp ogt float %352, %348
  br i1 %359, label %360, label %361

360:                                              ; preds = %356
  br label %361

361:                                              ; preds = %360, %356, %346
  %362 = phi float [ %342, %360 ], [ %358, %356 ], [ %349, %346 ]
  %363 = phi float [ %343, %360 ], [ %357, %356 ], [ %350, %346 ]
  %364 = phi i1 [ false, %360 ], [ true, %356 ], [ false, %346 ]
  %365 = call noalias ptr @malloc(i64 noundef %102) #14
  %366 = call noalias dereferenceable_or_null(8192) ptr @malloc(i64 noundef 8192) #14
  %367 = call noalias dereferenceable_or_null(8192) ptr @malloc(i64 noundef 8192) #14
  %368 = call noalias dereferenceable_or_null(8192) ptr @malloc(i64 noundef 8192) #14
  %369 = icmp eq ptr %365, null
  %370 = icmp eq ptr %366, null
  %371 = or i1 %369, %370
  %372 = icmp eq ptr %367, null
  %373 = or i1 %371, %372
  %374 = icmp eq ptr %368, null
  %375 = or i1 %373, %374
  br i1 %375, label %376, label %490

376:                                              ; preds = %361
  br i1 %369, label %378, label %377

377:                                              ; preds = %376
  call void @free(ptr noundef %365) #13
  br label %378

378:                                              ; preds = %377, %376
  br i1 %370, label %380, label %379

379:                                              ; preds = %378
  call void @free(ptr noundef %366) #13
  br label %380

380:                                              ; preds = %379, %378
  br i1 %372, label %382, label %381

381:                                              ; preds = %380
  call void @free(ptr noundef %367) #13
  br label %382

382:                                              ; preds = %381, %380
  br i1 %374, label %384, label %383

383:                                              ; preds = %382
  call void @free(ptr noundef %368) #13
  br label %384

384:                                              ; preds = %382, %383
  %385 = getelementptr inbounds [3 x float], ptr %40, i64 0, i64 1
  %386 = getelementptr inbounds [3 x float], ptr %40, i64 0, i64 2
  %387 = getelementptr inbounds [3 x float], ptr %39, i64 0, i64 1
  %388 = getelementptr inbounds [3 x float], ptr %39, i64 0, i64 2
  %389 = getelementptr inbounds [2 x float], ptr %38, i64 0, i64 1
  %390 = getelementptr inbounds [3 x float], ptr %37, i64 0, i64 1
  %391 = getelementptr inbounds [3 x float], ptr %37, i64 0, i64 2
  %392 = getelementptr inbounds [3 x float], ptr %36, i64 0, i64 1
  %393 = getelementptr inbounds [3 x float], ptr %36, i64 0, i64 2
  %394 = getelementptr inbounds [2 x float], ptr %35, i64 0, i64 1
  %395 = call i32 @llvm.smax.i32(i32 %98, i32 1)
  %396 = zext nneg i32 %395 to i64
  br label %397

397:                                              ; preds = %384, %487
  %398 = phi i64 [ 0, %384 ], [ %488, %487 ]
  %399 = mul nuw nsw i64 %398, 3
  %400 = getelementptr i32, ptr %103, i64 %399
  br label %401

401:                                              ; preds = %397, %484
  %402 = phi i64 [ 0, %397 ], [ %485, %484 ]
  %403 = getelementptr i32, ptr %400, i64 %402
  %404 = load i32, ptr %403, align 4, !tbaa !56
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %40) #13
  %405 = and i32 %404, 3
  %406 = ashr i32 %404, 2
  %407 = load ptr, ptr %0, align 8, !tbaa !35
  %408 = getelementptr inbounds %struct.SMikkTSpaceInterface, ptr %407, i64 0, i32 2
  %409 = load ptr, ptr %408, align 8, !tbaa !43
  call void %409(ptr noundef nonnull %0, ptr noundef nonnull %40, i32 noundef %406, i32 noundef %405) #13
  %410 = load float, ptr %40, align 4, !tbaa !57
  %411 = load float, ptr %385, align 4, !tbaa !57
  %412 = load float, ptr %386, align 4, !tbaa !57
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %40) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %39) #13
  %413 = load ptr, ptr %0, align 8, !tbaa !35
  %414 = getelementptr inbounds %struct.SMikkTSpaceInterface, ptr %413, i64 0, i32 3
  %415 = load ptr, ptr %414, align 8, !tbaa !44
  call void %415(ptr noundef nonnull %0, ptr noundef nonnull %39, i32 noundef %406, i32 noundef %405) #13
  %416 = load float, ptr %39, align 4, !tbaa !57
  %417 = load float, ptr %387, align 4, !tbaa !57
  %418 = load float, ptr %388, align 4, !tbaa !57
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %39) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %38) #13
  %419 = load ptr, ptr %0, align 8, !tbaa !35
  %420 = getelementptr inbounds %struct.SMikkTSpaceInterface, ptr %419, i64 0, i32 4
  %421 = load ptr, ptr %420, align 8, !tbaa !45
  call void %421(ptr noundef nonnull %0, ptr noundef nonnull %38, i32 noundef %406, i32 noundef %405) #13
  %422 = load float, ptr %38, align 4, !tbaa !57
  %423 = load float, ptr %389, align 4, !tbaa !57
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %38) #13
  br label %424

424:                                              ; preds = %401, %477
  %425 = phi i32 [ 0, %401 ], [ %473, %477 ]
  %426 = phi i32 [ 0, %401 ], [ %479, %477 ]
  %427 = mul nuw nsw i32 %426, 3
  br label %428

428:                                              ; preds = %424, %471
  %429 = phi i32 [ %425, %424 ], [ %473, %471 ]
  %430 = phi i32 [ 0, %424 ], [ %472, %471 ]
  %431 = add nsw i32 %430, %427
  %432 = sext i32 %431 to i64
  %433 = getelementptr inbounds i32, ptr %103, i64 %432
  %434 = load i32, ptr %433, align 4, !tbaa !56
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %37) #13
  %435 = and i32 %434, 3
  %436 = ashr i32 %434, 2
  %437 = load ptr, ptr %0, align 8, !tbaa !35
  %438 = getelementptr inbounds %struct.SMikkTSpaceInterface, ptr %437, i64 0, i32 2
  %439 = load ptr, ptr %438, align 8, !tbaa !43
  call void %439(ptr noundef nonnull %0, ptr noundef nonnull %37, i32 noundef %436, i32 noundef %435) #13
  %440 = load float, ptr %37, align 4, !tbaa !57
  %441 = load float, ptr %390, align 4, !tbaa !57
  %442 = load float, ptr %391, align 4, !tbaa !57
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %37) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %36) #13
  %443 = load ptr, ptr %0, align 8, !tbaa !35
  %444 = getelementptr inbounds %struct.SMikkTSpaceInterface, ptr %443, i64 0, i32 3
  %445 = load ptr, ptr %444, align 8, !tbaa !44
  call void %445(ptr noundef nonnull %0, ptr noundef nonnull %36, i32 noundef %436, i32 noundef %435) #13
  %446 = load float, ptr %36, align 4, !tbaa !57
  %447 = load float, ptr %392, align 4, !tbaa !57
  %448 = load float, ptr %393, align 4, !tbaa !57
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %36) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %35) #13
  %449 = load ptr, ptr %0, align 8, !tbaa !35
  %450 = getelementptr inbounds %struct.SMikkTSpaceInterface, ptr %449, i64 0, i32 4
  %451 = load ptr, ptr %450, align 8, !tbaa !45
  call void %451(ptr noundef nonnull %0, ptr noundef nonnull %35, i32 noundef %436, i32 noundef %435) #13
  %452 = load float, ptr %35, align 4, !tbaa !57
  %453 = load float, ptr %394, align 4, !tbaa !57
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %35) #13
  %454 = fcmp une float %410, %440
  %455 = fcmp une float %411, %441
  %456 = select i1 %454, i1 true, i1 %455
  %457 = fcmp une float %412, %442
  %458 = select i1 %456, i1 true, i1 %457
  br i1 %458, label %469, label %459

459:                                              ; preds = %428
  %460 = fcmp une float %416, %446
  %461 = fcmp une float %417, %447
  %462 = select i1 %460, i1 true, i1 %461
  %463 = fcmp une float %418, %448
  %464 = select i1 %462, i1 true, i1 %463
  br i1 %464, label %469, label %465

465:                                              ; preds = %459
  %466 = fcmp une float %422, %452
  %467 = fcmp une float %423, %453
  %468 = select i1 %466, i1 true, i1 %467
  br i1 %468, label %469, label %471

469:                                              ; preds = %465, %459, %428
  %470 = add nsw i32 %430, 1
  br label %471

471:                                              ; preds = %469, %465
  %472 = phi i32 [ %470, %469 ], [ %430, %465 ]
  %473 = phi i32 [ %429, %469 ], [ 1, %465 ]
  %474 = icmp eq i32 %473, 0
  %475 = icmp slt i32 %472, 3
  %476 = select i1 %474, i1 %475, i1 false
  br i1 %476, label %428, label %477, !llvm.loop !62

477:                                              ; preds = %471
  %478 = zext i1 %474 to i32
  %479 = add nuw nsw i32 %426, %478
  %480 = icmp eq i32 %473, 0
  %481 = zext nneg i32 %479 to i64
  %482 = icmp uge i64 %398, %481
  %483 = select i1 %480, i1 %482, i1 false
  br i1 %483, label %424, label %484, !llvm.loop !63

484:                                              ; preds = %477
  store i32 -1, ptr %403, align 4, !tbaa !56
  %485 = add nuw nsw i64 %402, 1
  %486 = icmp eq i64 %485, 3
  br i1 %486, label %487, label %401, !llvm.loop !64

487:                                              ; preds = %484
  %488 = add nuw nsw i64 %398, 1
  %489 = icmp eq i64 %488, %396
  br i1 %489, label %715, label %397, !llvm.loop !65

490:                                              ; preds = %361
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(8192) %366, i8 0, i64 8192, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(8192) %368, i8 0, i64 8192, i1 false)
  %491 = getelementptr inbounds [3 x float], ptr %34, i64 0, i64 1
  %492 = getelementptr inbounds [3 x float], ptr %34, i64 0, i64 2
  %493 = call i32 @llvm.smax.i32(i32 %290, i32 1)
  %494 = zext nneg i32 %493 to i64
  br label %495

495:                                              ; preds = %490, %495
  %496 = phi i64 [ 0, %490 ], [ %514, %495 ]
  %497 = getelementptr inbounds i32, ptr %103, i64 %496
  %498 = load i32, ptr %497, align 4, !tbaa !56
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %34) #13
  %499 = and i32 %498, 3
  %500 = ashr i32 %498, 2
  %501 = load ptr, ptr %0, align 8, !tbaa !35
  %502 = getelementptr inbounds %struct.SMikkTSpaceInterface, ptr %501, i64 0, i32 2
  %503 = load ptr, ptr %502, align 8, !tbaa !43
  call void %503(ptr noundef nonnull %0, ptr noundef nonnull %34, i32 noundef %500, i32 noundef %499) #13
  %504 = load float, ptr %34, align 4, !tbaa !57
  %505 = load float, ptr %491, align 4, !tbaa !57
  %506 = load float, ptr %492, align 4, !tbaa !57
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %34) #13
  %507 = select i1 %355, float %505, float %506
  %508 = select i1 %364, float %504, float %507
  %509 = call fastcc i32 @FindGridCell(float noundef %363, float noundef %362, float noundef %508)
  %510 = sext i32 %509 to i64
  %511 = getelementptr inbounds i32, ptr %366, i64 %510
  %512 = load i32, ptr %511, align 4, !tbaa !56
  %513 = add nsw i32 %512, 1
  store i32 %513, ptr %511, align 4, !tbaa !56
  %514 = add nuw nsw i64 %496, 1
  %515 = icmp eq i64 %514, %494
  br i1 %515, label %516, label %495, !llvm.loop !66

516:                                              ; preds = %495
  store i32 0, ptr %367, align 4, !tbaa !56
  %517 = getelementptr i32, ptr %366, i64 -1
  br label %523

518:                                              ; preds = %523
  %519 = getelementptr inbounds [3 x float], ptr %33, i64 0, i64 1
  %520 = getelementptr inbounds [3 x float], ptr %33, i64 0, i64 2
  %521 = call i32 @llvm.smax.i32(i32 %290, i32 1)
  %522 = zext nneg i32 %521 to i64
  br label %532

523:                                              ; preds = %516, %523
  %524 = phi i32 [ 0, %516 ], [ %528, %523 ]
  %525 = phi i64 [ 1, %516 ], [ %530, %523 ]
  %526 = getelementptr i32, ptr %517, i64 %525
  %527 = load i32, ptr %526, align 4, !tbaa !56
  %528 = add nsw i32 %527, %524
  %529 = getelementptr inbounds i32, ptr %367, i64 %525
  store i32 %528, ptr %529, align 4, !tbaa !56
  %530 = add nuw nsw i64 %525, 1
  %531 = icmp eq i64 %530, 2048
  br i1 %531, label %518, label %523, !llvm.loop !67

532:                                              ; preds = %518, %532
  %533 = phi i64 [ 0, %518 ], [ %558, %532 ]
  %534 = getelementptr inbounds i32, ptr %103, i64 %533
  %535 = load i32, ptr %534, align 4, !tbaa !56
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %33) #13
  %536 = and i32 %535, 3
  %537 = ashr i32 %535, 2
  %538 = load ptr, ptr %0, align 8, !tbaa !35
  %539 = getelementptr inbounds %struct.SMikkTSpaceInterface, ptr %538, i64 0, i32 2
  %540 = load ptr, ptr %539, align 8, !tbaa !43
  call void %540(ptr noundef nonnull %0, ptr noundef nonnull %33, i32 noundef %537, i32 noundef %536) #13
  %541 = load float, ptr %33, align 4, !tbaa !57
  %542 = load float, ptr %519, align 4, !tbaa !57
  %543 = load float, ptr %520, align 4, !tbaa !57
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %33) #13
  %544 = select i1 %355, float %542, float %543
  %545 = select i1 %364, float %541, float %544
  %546 = call fastcc i32 @FindGridCell(float noundef %363, float noundef %362, float noundef %545)
  %547 = sext i32 %546 to i64
  %548 = getelementptr inbounds i32, ptr %367, i64 %547
  %549 = load i32, ptr %548, align 4, !tbaa !56
  %550 = sext i32 %549 to i64
  %551 = getelementptr inbounds i32, ptr %365, i64 %550
  %552 = getelementptr inbounds i32, ptr %368, i64 %547
  %553 = load i32, ptr %552, align 4, !tbaa !56
  %554 = sext i32 %553 to i64
  %555 = getelementptr inbounds i32, ptr %551, i64 %554
  %556 = trunc i64 %533 to i32
  store i32 %556, ptr %555, align 4, !tbaa !56
  %557 = add nsw i32 %553, 1
  store i32 %557, ptr %552, align 4, !tbaa !56
  %558 = add nuw nsw i64 %533, 1
  %559 = icmp eq i64 %558, %522
  br i1 %559, label %560, label %532, !llvm.loop !68

560:                                              ; preds = %532
  call void @free(ptr noundef %368) #13
  %561 = load i32, ptr %366, align 4, !tbaa !56
  br label %562

562:                                              ; preds = %560, %562
  %563 = phi i64 [ 1, %560 ], [ %568, %562 ]
  %564 = phi i32 [ %561, %560 ], [ %567, %562 ]
  %565 = getelementptr inbounds i32, ptr %366, i64 %563
  %566 = load i32, ptr %565, align 4, !tbaa !56
  %567 = call i32 @llvm.smax.i32(i32 %564, i32 %566)
  %568 = add nuw nsw i64 %563, 1
  %569 = icmp eq i64 %568, 2048
  br i1 %569, label %570, label %562, !llvm.loop !69

570:                                              ; preds = %562
  %571 = sext i32 %567 to i64
  %572 = shl nsw i64 %571, 4
  %573 = call noalias ptr @malloc(i64 noundef %572) #14
  %574 = icmp eq ptr %573, null
  %575 = getelementptr inbounds [3 x float], ptr %32, i64 0, i64 1
  %576 = getelementptr inbounds [3 x float], ptr %32, i64 0, i64 2
  %577 = getelementptr inbounds [3 x float], ptr %31, i64 0, i64 1
  %578 = getelementptr inbounds [3 x float], ptr %31, i64 0, i64 2
  %579 = getelementptr inbounds [3 x float], ptr %30, i64 0, i64 1
  %580 = getelementptr inbounds [3 x float], ptr %30, i64 0, i64 2
  %581 = getelementptr inbounds [2 x float], ptr %29, i64 0, i64 1
  %582 = getelementptr inbounds [3 x float], ptr %28, i64 0, i64 1
  %583 = getelementptr inbounds [3 x float], ptr %28, i64 0, i64 2
  %584 = getelementptr inbounds [3 x float], ptr %27, i64 0, i64 1
  %585 = getelementptr inbounds [3 x float], ptr %27, i64 0, i64 2
  %586 = getelementptr inbounds [2 x float], ptr %26, i64 0, i64 1
  br label %587

587:                                              ; preds = %570, %708
  %588 = phi i64 [ 0, %570 ], [ %709, %708 ]
  %589 = getelementptr inbounds i32, ptr %367, i64 %588
  %590 = load i32, ptr %589, align 4, !tbaa !56
  %591 = sext i32 %590 to i64
  %592 = getelementptr inbounds i32, ptr %365, i64 %591
  %593 = getelementptr inbounds i32, ptr %366, i64 %588
  %594 = load i32, ptr %593, align 4, !tbaa !56
  %595 = icmp slt i32 %594, 2
  br i1 %595, label %708, label %596

596:                                              ; preds = %587
  %597 = zext nneg i32 %594 to i64
  br i1 %574, label %621, label %598

598:                                              ; preds = %596, %598
  %599 = phi i64 [ %617, %598 ], [ 0, %596 ]
  %600 = getelementptr inbounds i32, ptr %592, i64 %599
  %601 = load i32, ptr %600, align 4, !tbaa !56
  %602 = sext i32 %601 to i64
  %603 = getelementptr inbounds i32, ptr %103, i64 %602
  %604 = load i32, ptr %603, align 4, !tbaa !56
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %32) #13
  %605 = and i32 %604, 3
  %606 = ashr i32 %604, 2
  %607 = load ptr, ptr %0, align 8, !tbaa !35
  %608 = getelementptr inbounds %struct.SMikkTSpaceInterface, ptr %607, i64 0, i32 2
  %609 = load ptr, ptr %608, align 8, !tbaa !43
  call void %609(ptr noundef nonnull %0, ptr noundef nonnull %32, i32 noundef %606, i32 noundef %605) #13
  %610 = load float, ptr %32, align 4, !tbaa !57
  %611 = load float, ptr %575, align 4, !tbaa !57
  %612 = load float, ptr %576, align 4, !tbaa !57
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %32) #13
  %613 = getelementptr inbounds %struct.STmpVert, ptr %573, i64 %599
  store float %610, ptr %613, align 4, !tbaa !57
  %614 = getelementptr inbounds [3 x float], ptr %613, i64 0, i64 1
  store float %611, ptr %614, align 4, !tbaa !57
  %615 = getelementptr inbounds [3 x float], ptr %613, i64 0, i64 2
  store float %612, ptr %615, align 4, !tbaa !57
  %616 = getelementptr inbounds %struct.STmpVert, ptr %573, i64 %599, i32 1
  store i32 %601, ptr %616, align 4, !tbaa !70
  %617 = add nuw nsw i64 %599, 1
  %618 = icmp eq i64 %617, %597
  br i1 %618, label %619, label %598, !llvm.loop !72

619:                                              ; preds = %598
  %620 = add nsw i32 %594, -1
  call fastcc void @MergeVertsFast(ptr noundef %103, ptr noundef nonnull %573, ptr noundef nonnull %0, i32 noundef 0, i32 noundef %620)
  br label %708

621:                                              ; preds = %596, %705
  %622 = phi i64 [ %706, %705 ], [ 0, %596 ]
  %623 = getelementptr inbounds i32, ptr %592, i64 %622
  %624 = load i32, ptr %623, align 4, !tbaa !56
  %625 = sext i32 %624 to i64
  %626 = getelementptr inbounds i32, ptr %103, i64 %625
  %627 = load i32, ptr %626, align 4, !tbaa !56
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %31) #13
  %628 = and i32 %627, 3
  %629 = ashr i32 %627, 2
  %630 = load ptr, ptr %0, align 8, !tbaa !35
  %631 = getelementptr inbounds %struct.SMikkTSpaceInterface, ptr %630, i64 0, i32 2
  %632 = load ptr, ptr %631, align 8, !tbaa !43
  call void %632(ptr noundef nonnull %0, ptr noundef nonnull %31, i32 noundef %629, i32 noundef %628) #13
  %633 = load float, ptr %31, align 4, !tbaa !57
  %634 = load float, ptr %577, align 4, !tbaa !57
  %635 = load float, ptr %578, align 4, !tbaa !57
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %31) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %30) #13
  %636 = load ptr, ptr %0, align 8, !tbaa !35
  %637 = getelementptr inbounds %struct.SMikkTSpaceInterface, ptr %636, i64 0, i32 3
  %638 = load ptr, ptr %637, align 8, !tbaa !44
  call void %638(ptr noundef nonnull %0, ptr noundef nonnull %30, i32 noundef %629, i32 noundef %628) #13
  %639 = load float, ptr %30, align 4, !tbaa !57
  %640 = load float, ptr %579, align 4, !tbaa !57
  %641 = load float, ptr %580, align 4, !tbaa !57
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %30) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %29) #13
  %642 = load ptr, ptr %0, align 8, !tbaa !35
  %643 = getelementptr inbounds %struct.SMikkTSpaceInterface, ptr %642, i64 0, i32 4
  %644 = load ptr, ptr %643, align 8, !tbaa !45
  call void %644(ptr noundef nonnull %0, ptr noundef nonnull %29, i32 noundef %629, i32 noundef %628) #13
  %645 = load float, ptr %29, align 4, !tbaa !57
  %646 = load float, ptr %581, align 4, !tbaa !57
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %29) #13
  %647 = icmp eq i64 %622, 0
  br i1 %647, label %698, label %648

648:                                              ; preds = %621, %692
  %649 = phi i32 [ %693, %692 ], [ 0, %621 ]
  %650 = sext i32 %649 to i64
  %651 = getelementptr inbounds i32, ptr %592, i64 %650
  %652 = load i32, ptr %651, align 4, !tbaa !56
  %653 = sext i32 %652 to i64
  %654 = getelementptr inbounds i32, ptr %103, i64 %653
  %655 = load i32, ptr %654, align 4, !tbaa !56
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %28) #13
  %656 = and i32 %655, 3
  %657 = ashr i32 %655, 2
  %658 = load ptr, ptr %0, align 8, !tbaa !35
  %659 = getelementptr inbounds %struct.SMikkTSpaceInterface, ptr %658, i64 0, i32 2
  %660 = load ptr, ptr %659, align 8, !tbaa !43
  call void %660(ptr noundef nonnull %0, ptr noundef nonnull %28, i32 noundef %657, i32 noundef %656) #13
  %661 = load float, ptr %28, align 4, !tbaa !57
  %662 = load float, ptr %582, align 4, !tbaa !57
  %663 = load float, ptr %583, align 4, !tbaa !57
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %28) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %27) #13
  %664 = load ptr, ptr %0, align 8, !tbaa !35
  %665 = getelementptr inbounds %struct.SMikkTSpaceInterface, ptr %664, i64 0, i32 3
  %666 = load ptr, ptr %665, align 8, !tbaa !44
  call void %666(ptr noundef nonnull %0, ptr noundef nonnull %27, i32 noundef %657, i32 noundef %656) #13
  %667 = load float, ptr %27, align 4, !tbaa !57
  %668 = load float, ptr %584, align 4, !tbaa !57
  %669 = load float, ptr %585, align 4, !tbaa !57
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %27) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %26) #13
  %670 = load ptr, ptr %0, align 8, !tbaa !35
  %671 = getelementptr inbounds %struct.SMikkTSpaceInterface, ptr %670, i64 0, i32 4
  %672 = load ptr, ptr %671, align 8, !tbaa !45
  call void %672(ptr noundef nonnull %0, ptr noundef nonnull %26, i32 noundef %657, i32 noundef %656) #13
  %673 = load float, ptr %26, align 4, !tbaa !57
  %674 = load float, ptr %586, align 4, !tbaa !57
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %26) #13
  %675 = fcmp une float %633, %661
  %676 = fcmp une float %634, %662
  %677 = select i1 %675, i1 true, i1 %676
  %678 = fcmp une float %635, %663
  %679 = select i1 %677, i1 true, i1 %678
  br i1 %679, label %690, label %680

680:                                              ; preds = %648
  %681 = fcmp une float %639, %667
  %682 = fcmp une float %640, %668
  %683 = select i1 %681, i1 true, i1 %682
  %684 = fcmp une float %641, %669
  %685 = select i1 %683, i1 true, i1 %684
  br i1 %685, label %690, label %686

686:                                              ; preds = %680
  %687 = fcmp une float %645, %673
  %688 = fcmp une float %646, %674
  %689 = select i1 %687, i1 true, i1 %688
  br i1 %689, label %690, label %692

690:                                              ; preds = %686, %680, %648
  %691 = add nsw i32 %649, 1
  br label %692

692:                                              ; preds = %690, %686
  %693 = phi i32 [ %691, %690 ], [ %649, %686 ]
  %694 = phi i1 [ true, %690 ], [ false, %686 ]
  %695 = sext i32 %693 to i64
  %696 = icmp sgt i64 %622, %695
  %697 = and i1 %696, %694
  br i1 %697, label %648, label %698, !llvm.loop !73

698:                                              ; preds = %692, %621
  %699 = phi i32 [ -1, %621 ], [ %652, %692 ]
  %700 = phi i1 [ true, %621 ], [ %694, %692 ]
  br i1 %700, label %705, label %701

701:                                              ; preds = %698
  %702 = sext i32 %699 to i64
  %703 = getelementptr inbounds i32, ptr %103, i64 %702
  %704 = load i32, ptr %703, align 4, !tbaa !56
  store i32 %704, ptr %626, align 4, !tbaa !56
  br label %705

705:                                              ; preds = %701, %698
  %706 = add nuw nsw i64 %622, 1
  %707 = icmp eq i64 %706, %597
  br i1 %707, label %708, label %621, !llvm.loop !74

708:                                              ; preds = %705, %619, %587
  %709 = add nuw nsw i64 %588, 1
  %710 = icmp eq i64 %709, 2048
  br i1 %710, label %711, label %587, !llvm.loop !75

711:                                              ; preds = %708
  %712 = icmp eq ptr %573, null
  br i1 %712, label %714, label %713

713:                                              ; preds = %711
  call void @free(ptr noundef %573) #13
  br label %714

714:                                              ; preds = %713, %711
  call void @free(ptr noundef %365) #13
  call void @free(ptr noundef %366) #13
  call void @free(ptr noundef %367) #13
  br label %715

715:                                              ; preds = %487, %714
  %716 = getelementptr inbounds [3 x float], ptr %25, i64 0, i64 1
  %717 = getelementptr inbounds [3 x float], ptr %25, i64 0, i64 2
  %718 = getelementptr inbounds [3 x float], ptr %24, i64 0, i64 1
  %719 = getelementptr inbounds [3 x float], ptr %24, i64 0, i64 2
  %720 = getelementptr inbounds [3 x float], ptr %23, i64 0, i64 1
  %721 = getelementptr inbounds [3 x float], ptr %23, i64 0, i64 2
  %722 = call i32 @llvm.smax.i32(i32 %98, i32 1)
  %723 = zext nneg i32 %722 to i64
  br label %724

724:                                              ; preds = %715, %780
  %725 = phi i64 [ 0, %715 ], [ %782, %780 ]
  %726 = phi i32 [ 0, %715 ], [ %781, %780 ]
  %727 = mul nuw nsw i64 %725, 3
  %728 = getelementptr inbounds i32, ptr %103, i64 %727
  %729 = load i32, ptr %728, align 4, !tbaa !56
  %730 = getelementptr i32, ptr %728, i64 1
  %731 = load i32, ptr %730, align 4, !tbaa !56
  %732 = getelementptr i32, ptr %728, i64 2
  %733 = load i32, ptr %732, align 4, !tbaa !56
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %25) #13
  %734 = and i32 %729, 3
  %735 = ashr i32 %729, 2
  %736 = load ptr, ptr %0, align 8, !tbaa !35
  %737 = getelementptr inbounds %struct.SMikkTSpaceInterface, ptr %736, i64 0, i32 2
  %738 = load ptr, ptr %737, align 8, !tbaa !43
  call void %738(ptr noundef nonnull %0, ptr noundef nonnull %25, i32 noundef %735, i32 noundef %734) #13
  %739 = load float, ptr %25, align 4, !tbaa !57
  %740 = load float, ptr %716, align 4, !tbaa !57
  %741 = load float, ptr %717, align 4, !tbaa !57
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %25) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %24) #13
  %742 = and i32 %731, 3
  %743 = ashr i32 %731, 2
  %744 = load ptr, ptr %0, align 8, !tbaa !35
  %745 = getelementptr inbounds %struct.SMikkTSpaceInterface, ptr %744, i64 0, i32 2
  %746 = load ptr, ptr %745, align 8, !tbaa !43
  call void %746(ptr noundef nonnull %0, ptr noundef nonnull %24, i32 noundef %743, i32 noundef %742) #13
  %747 = load float, ptr %24, align 4, !tbaa !57
  %748 = load float, ptr %718, align 4, !tbaa !57
  %749 = load float, ptr %719, align 4, !tbaa !57
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %24) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %23) #13
  %750 = and i32 %733, 3
  %751 = ashr i32 %733, 2
  %752 = load ptr, ptr %0, align 8, !tbaa !35
  %753 = getelementptr inbounds %struct.SMikkTSpaceInterface, ptr %752, i64 0, i32 2
  %754 = load ptr, ptr %753, align 8, !tbaa !43
  call void %754(ptr noundef nonnull %0, ptr noundef nonnull %23, i32 noundef %751, i32 noundef %750) #13
  %755 = load float, ptr %23, align 4, !tbaa !57
  %756 = load float, ptr %720, align 4, !tbaa !57
  %757 = load float, ptr %721, align 4, !tbaa !57
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %23) #13
  %758 = fcmp une float %739, %747
  %759 = fcmp une float %740, %748
  %760 = select i1 %758, i1 true, i1 %759
  %761 = fcmp une float %741, %749
  %762 = select i1 %760, i1 true, i1 %761
  br i1 %762, label %763, label %775

763:                                              ; preds = %724
  %764 = fcmp une float %739, %755
  %765 = fcmp une float %740, %756
  %766 = select i1 %764, i1 true, i1 %765
  %767 = fcmp une float %741, %757
  %768 = select i1 %766, i1 true, i1 %767
  br i1 %768, label %769, label %775

769:                                              ; preds = %763
  %770 = fcmp une float %747, %755
  %771 = fcmp une float %748, %756
  %772 = select i1 %770, i1 true, i1 %771
  %773 = fcmp une float %749, %757
  %774 = select i1 %772, i1 true, i1 %773
  br i1 %774, label %780, label %775

775:                                              ; preds = %769, %763, %724
  %776 = getelementptr inbounds %struct.STriInfo, ptr %105, i64 %725, i32 7
  %777 = load i32, ptr %776, align 4, !tbaa !59
  %778 = or i32 %777, 1
  store i32 %778, ptr %776, align 4, !tbaa !59
  %779 = add nsw i32 %726, 1
  br label %780

780:                                              ; preds = %775, %769
  %781 = phi i32 [ %779, %775 ], [ %726, %769 ]
  %782 = add nuw nsw i64 %725, 1
  %783 = icmp eq i64 %782, %723
  br i1 %783, label %784, label %724, !llvm.loop !76

784:                                              ; preds = %780
  %785 = sub i32 %98, %781
  %786 = add nsw i32 %98, -1
  %787 = icmp eq i32 %98, 1
  br i1 %787, label %788, label %790

788:                                              ; preds = %813, %784
  %789 = icmp sgt i32 %785, 0
  br i1 %789, label %820, label %816

790:                                              ; preds = %784, %813
  %791 = phi i32 [ %814, %813 ], [ 0, %784 ]
  %792 = sext i32 %791 to i64
  %793 = getelementptr inbounds %struct.STriInfo, ptr %105, i64 %792, i32 6
  %794 = load i32, ptr %793, align 8, !tbaa !49
  %795 = add nsw i32 %791, 1
  %796 = sext i32 %795 to i64
  %797 = getelementptr inbounds %struct.STriInfo, ptr %105, i64 %796, i32 6
  %798 = load i32, ptr %797, align 8, !tbaa !49
  %799 = icmp eq i32 %794, %798
  br i1 %799, label %800, label %813

800:                                              ; preds = %790
  %801 = getelementptr inbounds %struct.STriInfo, ptr %105, i64 %792, i32 7
  %802 = load i32, ptr %801, align 4, !tbaa !59
  %803 = getelementptr inbounds %struct.STriInfo, ptr %105, i64 %796, i32 7
  %804 = load i32, ptr %803, align 4, !tbaa !59
  %805 = xor i32 %804, %802
  %806 = and i32 %805, 1
  %807 = icmp eq i32 %806, 0
  br i1 %807, label %811, label %808

808:                                              ; preds = %800
  %809 = or i32 %802, 2
  store i32 %809, ptr %801, align 4, !tbaa !59
  %810 = or i32 %804, 2
  store i32 %810, ptr %803, align 4, !tbaa !59
  br label %811

811:                                              ; preds = %808, %800
  %812 = add nsw i32 %791, 2
  br label %813

813:                                              ; preds = %811, %790
  %814 = phi i32 [ %812, %811 ], [ %795, %790 ]
  %815 = icmp slt i32 %814, %786
  br i1 %815, label %790, label %788, !llvm.loop !77

816:                                              ; preds = %866, %788
  %817 = icmp sgt i32 %785, 0
  br i1 %817, label %818, label %878

818:                                              ; preds = %816
  %819 = zext nneg i32 %785 to i64
  br label %873

820:                                              ; preds = %788, %866
  %821 = phi i32 [ %869, %866 ], [ 1, %788 ]
  %822 = phi i32 [ %870, %866 ], [ 0, %788 ]
  %823 = zext nneg i32 %822 to i64
  %824 = getelementptr inbounds %struct.STriInfo, ptr %105, i64 %823
  %825 = getelementptr inbounds %struct.STriInfo, ptr %105, i64 %823, i32 7
  %826 = load i32, ptr %825, align 4, !tbaa !59
  %827 = and i32 %826, 1
  %828 = icmp eq i32 %827, 0
  br i1 %828, label %831, label %829

829:                                              ; preds = %820
  %830 = icmp slt i32 %821, %98
  br i1 %830, label %834, label %844

831:                                              ; preds = %820
  %832 = add nuw nsw i32 %822, 2
  %833 = call i32 @llvm.smax.i32(i32 %821, i32 %832)
  br label %866

834:                                              ; preds = %829, %834
  %835 = phi i32 [ %840, %834 ], [ %821, %829 ]
  %836 = sext i32 %835 to i64
  %837 = getelementptr inbounds %struct.STriInfo, ptr %105, i64 %836, i32 7
  %838 = load i32, ptr %837, align 4, !tbaa !59
  %839 = and i32 %838, 1
  %840 = add i32 %839, %835
  %841 = icmp ne i32 %839, 0
  %842 = icmp slt i32 %840, %98
  %843 = and i1 %841, %842
  br i1 %843, label %834, label %844, !llvm.loop !78

844:                                              ; preds = %834, %829
  %845 = phi i32 [ %821, %829 ], [ %840, %834 ]
  %846 = phi i1 [ true, %829 ], [ %841, %834 ]
  %847 = add nsw i32 %845, 1
  br i1 %846, label %866, label %848

848:                                              ; preds = %844
  %849 = mul nsw i32 %822, 3
  %850 = mul nsw i32 %845, 3
  %851 = sext i32 %850 to i64
  %852 = zext nneg i32 %849 to i64
  %853 = getelementptr i32, ptr %103, i64 %852
  %854 = getelementptr i32, ptr %103, i64 %851
  br label %855

855:                                              ; preds = %848, %855
  %856 = phi i64 [ 0, %848 ], [ %861, %855 ]
  %857 = getelementptr i32, ptr %853, i64 %856
  %858 = load i32, ptr %857, align 4, !tbaa !56
  %859 = getelementptr i32, ptr %854, i64 %856
  %860 = load i32, ptr %859, align 4, !tbaa !56
  store i32 %860, ptr %857, align 4, !tbaa !56
  store i32 %858, ptr %859, align 4, !tbaa !56
  %861 = add nuw nsw i64 %856, 1
  %862 = icmp eq i64 %861, 3
  br i1 %862, label %863, label %855, !llvm.loop !79

863:                                              ; preds = %855
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %22)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %22, ptr noundef nonnull align 8 dereferenceable(88) %824, i64 88, i1 false), !tbaa.struct !80
  %864 = sext i32 %845 to i64
  %865 = getelementptr inbounds %struct.STriInfo, ptr %105, i64 %864
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %824, ptr noundef nonnull align 8 dereferenceable(88) %865, i64 88, i1 false), !tbaa.struct !80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %865, ptr noundef nonnull align 8 dereferenceable(88) %22, i64 88, i1 false), !tbaa.struct !80
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %22)
  br label %866

866:                                              ; preds = %863, %844, %831
  %867 = phi i1 [ true, %831 ], [ true, %863 ], [ false, %844 ]
  %868 = phi i32 [ 1, %831 ], [ 1, %863 ], [ 0, %844 ]
  %869 = phi i32 [ %833, %831 ], [ %847, %863 ], [ %847, %844 ]
  %870 = add nuw nsw i32 %868, %822
  %871 = icmp slt i32 %870, %785
  %872 = and i1 %871, %867
  br i1 %872, label %820, label %816, !llvm.loop !81

873:                                              ; preds = %818, %899
  %874 = phi i64 [ 0, %818 ], [ %900, %899 ]
  %875 = getelementptr inbounds %struct.STriInfo, ptr %105, i64 %874
  %876 = getelementptr inbounds %struct.STriInfo, ptr %105, i64 %874, i32 2
  %877 = getelementptr inbounds %struct.STriInfo, ptr %105, i64 %874, i32 7
  br label %891

878:                                              ; preds = %899, %816
  %879 = icmp sgt i32 %785, 0
  br i1 %879, label %880, label %902

880:                                              ; preds = %878
  %881 = getelementptr inbounds [3 x float], ptr %21, i64 0, i64 1
  %882 = getelementptr inbounds [3 x float], ptr %21, i64 0, i64 2
  %883 = getelementptr inbounds [3 x float], ptr %20, i64 0, i64 1
  %884 = getelementptr inbounds [3 x float], ptr %20, i64 0, i64 2
  %885 = getelementptr inbounds [3 x float], ptr %19, i64 0, i64 1
  %886 = getelementptr inbounds [3 x float], ptr %19, i64 0, i64 2
  %887 = getelementptr inbounds [2 x float], ptr %18, i64 0, i64 1
  %888 = getelementptr inbounds [2 x float], ptr %17, i64 0, i64 1
  %889 = getelementptr inbounds [2 x float], ptr %16, i64 0, i64 1
  %890 = zext nneg i32 %785 to i64
  br label %912

891:                                              ; preds = %873, %891
  %892 = phi i64 [ 0, %873 ], [ %897, %891 ]
  %893 = getelementptr inbounds [3 x i32], ptr %875, i64 0, i64 %892
  store i32 -1, ptr %893, align 4, !tbaa !56
  %894 = getelementptr inbounds %struct.STriInfo, ptr %105, i64 %874, i32 1, i64 %892
  store ptr null, ptr %894, align 8, !tbaa !82
  %895 = load i32, ptr %877, align 4, !tbaa !59
  %896 = or i32 %895, 4
  store i32 %896, ptr %877, align 4, !tbaa !59
  %897 = add nuw nsw i64 %892, 1
  %898 = icmp eq i64 %897, 3
  br i1 %898, label %899, label %891, !llvm.loop !83

899:                                              ; preds = %891
  %900 = add nuw nsw i64 %874, 1
  %901 = icmp eq i64 %900, %819
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %876, i8 0, i64 32, i1 false)
  br i1 %901, label %878, label %873, !llvm.loop !84

902:                                              ; preds = %1056, %878
  %903 = add nsw i32 %785, -1
  %904 = icmp sgt i32 %785, 1
  br i1 %904, label %905, label %1185

905:                                              ; preds = %902
  %906 = getelementptr inbounds [2 x float], ptr %15, i64 0, i64 1
  %907 = getelementptr inbounds [2 x float], ptr %14, i64 0, i64 1
  %908 = getelementptr inbounds [2 x float], ptr %13, i64 0, i64 1
  %909 = getelementptr inbounds [2 x float], ptr %12, i64 0, i64 1
  %910 = getelementptr inbounds [2 x float], ptr %11, i64 0, i64 1
  %911 = getelementptr inbounds [2 x float], ptr %10, i64 0, i64 1
  br label %1059

912:                                              ; preds = %880, %1056
  %913 = phi i64 [ 0, %880 ], [ %1057, %1056 ]
  %914 = mul nuw nsw i64 %913, 3
  %915 = getelementptr inbounds i32, ptr %103, i64 %914
  %916 = load i32, ptr %915, align 4, !tbaa !56
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %21) #13
  %917 = and i32 %916, 3
  %918 = ashr i32 %916, 2
  %919 = load ptr, ptr %0, align 8, !tbaa !35
  %920 = getelementptr inbounds %struct.SMikkTSpaceInterface, ptr %919, i64 0, i32 2
  %921 = load ptr, ptr %920, align 8, !tbaa !43
  call void %921(ptr noundef nonnull %0, ptr noundef nonnull %21, i32 noundef %918, i32 noundef %917) #13
  %922 = load float, ptr %21, align 4, !tbaa !57
  %923 = load float, ptr %881, align 4, !tbaa !57
  %924 = load float, ptr %882, align 4, !tbaa !57
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %21) #13
  %925 = getelementptr i32, ptr %915, i64 1
  %926 = load i32, ptr %925, align 4, !tbaa !56
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %20) #13
  %927 = and i32 %926, 3
  %928 = ashr i32 %926, 2
  %929 = load ptr, ptr %0, align 8, !tbaa !35
  %930 = getelementptr inbounds %struct.SMikkTSpaceInterface, ptr %929, i64 0, i32 2
  %931 = load ptr, ptr %930, align 8, !tbaa !43
  call void %931(ptr noundef nonnull %0, ptr noundef nonnull %20, i32 noundef %928, i32 noundef %927) #13
  %932 = load float, ptr %20, align 4, !tbaa !57
  %933 = load float, ptr %883, align 4, !tbaa !57
  %934 = load float, ptr %884, align 4, !tbaa !57
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %20) #13
  %935 = getelementptr i32, ptr %915, i64 2
  %936 = load i32, ptr %935, align 4, !tbaa !56
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %19) #13
  %937 = and i32 %936, 3
  %938 = ashr i32 %936, 2
  %939 = load ptr, ptr %0, align 8, !tbaa !35
  %940 = getelementptr inbounds %struct.SMikkTSpaceInterface, ptr %939, i64 0, i32 2
  %941 = load ptr, ptr %940, align 8, !tbaa !43
  call void %941(ptr noundef nonnull %0, ptr noundef nonnull %19, i32 noundef %938, i32 noundef %937) #13
  %942 = load float, ptr %19, align 4, !tbaa !57
  %943 = load float, ptr %885, align 4, !tbaa !57
  %944 = load float, ptr %886, align 4, !tbaa !57
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %19) #13
  %945 = load i32, ptr %915, align 4, !tbaa !56
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %18) #13
  %946 = and i32 %945, 3
  %947 = ashr i32 %945, 2
  %948 = load ptr, ptr %0, align 8, !tbaa !35
  %949 = getelementptr inbounds %struct.SMikkTSpaceInterface, ptr %948, i64 0, i32 4
  %950 = load ptr, ptr %949, align 8, !tbaa !45
  call void %950(ptr noundef nonnull %0, ptr noundef nonnull %18, i32 noundef %947, i32 noundef %946) #13
  %951 = load float, ptr %18, align 4, !tbaa !57
  %952 = load float, ptr %887, align 4, !tbaa !57
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #13
  %953 = load i32, ptr %925, align 4, !tbaa !56
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #13
  %954 = and i32 %953, 3
  %955 = ashr i32 %953, 2
  %956 = load ptr, ptr %0, align 8, !tbaa !35
  %957 = getelementptr inbounds %struct.SMikkTSpaceInterface, ptr %956, i64 0, i32 4
  %958 = load ptr, ptr %957, align 8, !tbaa !45
  call void %958(ptr noundef nonnull %0, ptr noundef nonnull %17, i32 noundef %955, i32 noundef %954) #13
  %959 = load float, ptr %17, align 4, !tbaa !57
  %960 = load float, ptr %888, align 4, !tbaa !57
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #13
  %961 = load i32, ptr %935, align 4, !tbaa !56
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #13
  %962 = and i32 %961, 3
  %963 = ashr i32 %961, 2
  %964 = load ptr, ptr %0, align 8, !tbaa !35
  %965 = getelementptr inbounds %struct.SMikkTSpaceInterface, ptr %964, i64 0, i32 4
  %966 = load ptr, ptr %965, align 8, !tbaa !45
  call void %966(ptr noundef nonnull %0, ptr noundef nonnull %16, i32 noundef %963, i32 noundef %962) #13
  %967 = load float, ptr %16, align 4, !tbaa !57
  %968 = load float, ptr %889, align 4, !tbaa !57
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #13
  %969 = fsub float %959, %951
  %970 = fsub float %960, %952
  %971 = fsub float %967, %951
  %972 = fsub float %968, %952
  %973 = fsub float %932, %922
  %974 = fsub float %933, %923
  %975 = fsub float %934, %924
  %976 = fsub float %942, %922
  %977 = fsub float %943, %923
  %978 = fsub float %944, %924
  %979 = fneg float %970
  %980 = fmul float %971, %979
  %981 = call float @llvm.fmuladd.f32(float %969, float %972, float %980)
  %982 = fmul float %973, %972
  %983 = fmul float %974, %972
  %984 = fmul float %975, %972
  %985 = fmul float %976, %970
  %986 = fmul float %977, %970
  %987 = fmul float %978, %970
  %988 = fsub float %982, %985
  %989 = fsub float %983, %986
  %990 = fsub float %984, %987
  %991 = fmul float %976, %969
  %992 = fmul float %977, %969
  %993 = fmul float %978, %969
  %994 = fmul float %973, %971
  %995 = fsub float %991, %994
  %996 = fmul float %974, %971
  %997 = fsub float %992, %996
  %998 = fmul float %975, %971
  %999 = fsub float %993, %998
  %1000 = fcmp ogt float %981, 0.000000e+00
  %1001 = select i1 %1000, i32 8, i32 0
  %1002 = getelementptr inbounds %struct.STriInfo, ptr %105, i64 %913, i32 7
  %1003 = load i32, ptr %1002, align 4, !tbaa !59
  %1004 = or i32 %1001, %1003
  store i32 %1004, ptr %1002, align 4, !tbaa !59
  %1005 = call float @llvm.fabs.f32(float %981)
  %1006 = fcmp ule float %1005, 0x3810000000000000
  br i1 %1006, label %1056, label %1007

1007:                                             ; preds = %912
  %1008 = fmul float %989, %989
  %1009 = call float @llvm.fmuladd.f32(float %988, float %988, float %1008)
  %1010 = call float @llvm.fmuladd.f32(float %990, float %990, float %1009)
  %1011 = call float @sqrtf(float noundef %1010) #13
  %1012 = fmul float %997, %997
  %1013 = call float @llvm.fmuladd.f32(float %995, float %995, float %1012)
  %1014 = call float @llvm.fmuladd.f32(float %999, float %999, float %1013)
  %1015 = call float @sqrtf(float noundef %1014) #13
  %1016 = load i32, ptr %1002, align 4, !tbaa !59
  %1017 = and i32 %1016, 8
  %1018 = icmp eq i32 %1017, 0
  %1019 = select i1 %1018, float -1.000000e+00, float 1.000000e+00
  %1020 = call float @llvm.fabs.f32(float %1011)
  %1021 = fcmp ule float %1020, 0x3810000000000000
  br i1 %1021, label %1031, label %1022

1022:                                             ; preds = %1007
  %1023 = getelementptr inbounds %struct.STriInfo, ptr %105, i64 %913, i32 2
  %1024 = fdiv float %1019, %1011
  %1025 = fmul float %988, %1024
  %1026 = insertelement <2 x float> poison, float %1025, i64 0
  %1027 = fmul float %989, %1024
  %1028 = insertelement <2 x float> %1026, float %1027, i64 1
  %1029 = fmul float %990, %1024
  store <2 x float> %1028, ptr %1023, align 8, !tbaa.struct !85
  %1030 = getelementptr inbounds i8, ptr %1023, i64 8
  store float %1029, ptr %1030, align 8, !tbaa.struct !86
  br label %1031

1031:                                             ; preds = %1022, %1007
  %1032 = call float @llvm.fabs.f32(float %1015)
  %1033 = fcmp ule float %1032, 0x3810000000000000
  br i1 %1033, label %1043, label %1034

1034:                                             ; preds = %1031
  %1035 = getelementptr inbounds %struct.STriInfo, ptr %105, i64 %913, i32 3
  %1036 = fdiv float %1019, %1015
  %1037 = fmul float %995, %1036
  %1038 = insertelement <2 x float> poison, float %1037, i64 0
  %1039 = fmul float %997, %1036
  %1040 = insertelement <2 x float> %1038, float %1039, i64 1
  %1041 = fmul float %999, %1036
  store <2 x float> %1040, ptr %1035, align 4, !tbaa.struct !85
  %1042 = getelementptr inbounds i8, ptr %1035, i64 8
  store float %1041, ptr %1042, align 4, !tbaa.struct !86
  br label %1043

1043:                                             ; preds = %1034, %1031
  %1044 = fdiv float %1011, %1005
  %1045 = getelementptr inbounds %struct.STriInfo, ptr %105, i64 %913, i32 4
  store float %1044, ptr %1045, align 8, !tbaa !87
  %1046 = fdiv float %1015, %1005
  %1047 = getelementptr inbounds %struct.STriInfo, ptr %105, i64 %913, i32 5
  store float %1046, ptr %1047, align 4, !tbaa !88
  %1048 = call float @llvm.fabs.f32(float %1044)
  %1049 = fcmp ule float %1048, 0x3810000000000000
  %1050 = call float @llvm.fabs.f32(float %1046)
  %1051 = fcmp ule float %1050, 0x3810000000000000
  %1052 = select i1 %1049, i1 true, i1 %1051
  br i1 %1052, label %1056, label %1053

1053:                                             ; preds = %1043
  %1054 = load i32, ptr %1002, align 4, !tbaa !59
  %1055 = and i32 %1054, -5
  store i32 %1055, ptr %1002, align 4, !tbaa !59
  br label %1056

1056:                                             ; preds = %1053, %1043, %912
  %1057 = add nuw nsw i64 %913, 1
  %1058 = icmp eq i64 %1057, %890
  br i1 %1058, label %902, label %912, !llvm.loop !89

1059:                                             ; preds = %905, %1182
  %1060 = phi i32 [ 0, %905 ], [ %1183, %1182 ]
  %1061 = sext i32 %1060 to i64
  %1062 = getelementptr inbounds %struct.STriInfo, ptr %105, i64 %1061, i32 6
  %1063 = load i32, ptr %1062, align 8, !tbaa !49
  %1064 = add nsw i32 %1060, 1
  %1065 = sext i32 %1064 to i64
  %1066 = getelementptr inbounds %struct.STriInfo, ptr %105, i64 %1065, i32 6
  %1067 = load i32, ptr %1066, align 8, !tbaa !49
  %1068 = icmp eq i32 %1063, %1067
  br i1 %1068, label %1069, label %1182

1069:                                             ; preds = %1059
  %1070 = getelementptr inbounds %struct.STriInfo, ptr %105, i64 %1061, i32 7
  %1071 = load i32, ptr %1070, align 4, !tbaa !59
  %1072 = and i32 %1071, 1
  %1073 = icmp eq i32 %1072, 0
  %1074 = getelementptr inbounds %struct.STriInfo, ptr %105, i64 %1065, i32 7
  %1075 = load i32, ptr %1074, align 4, !tbaa !59
  %1076 = and i32 %1075, 1
  %1077 = icmp eq i32 %1076, 0
  %1078 = select i1 %1073, i1 %1077, i1 false
  br i1 %1078, label %1079, label %1180

1079:                                             ; preds = %1069
  %1080 = xor i32 %1075, %1071
  %1081 = and i32 %1080, 8
  %1082 = icmp eq i32 %1081, 0
  br i1 %1082, label %1180, label %1083

1083:                                             ; preds = %1079
  %1084 = and i32 %1075, 4
  %1085 = icmp eq i32 %1084, 0
  br i1 %1085, label %1086, label %1167

1086:                                             ; preds = %1083
  %1087 = mul nsw i32 %1060, 3
  %1088 = sext i32 %1087 to i64
  %1089 = getelementptr inbounds i32, ptr %103, i64 %1088
  %1090 = load i32, ptr %1089, align 4, !tbaa !56
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #13
  %1091 = and i32 %1090, 3
  %1092 = ashr i32 %1090, 2
  %1093 = load ptr, ptr %0, align 8, !tbaa !35
  %1094 = getelementptr inbounds %struct.SMikkTSpaceInterface, ptr %1093, i64 0, i32 4
  %1095 = load ptr, ptr %1094, align 8, !tbaa !45
  call void %1095(ptr noundef nonnull %0, ptr noundef nonnull %15, i32 noundef %1092, i32 noundef %1091) #13
  %1096 = load float, ptr %15, align 4, !tbaa !57
  %1097 = load float, ptr %906, align 4, !tbaa !57
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #13
  %1098 = getelementptr inbounds i32, ptr %1089, i64 1
  %1099 = load i32, ptr %1098, align 4, !tbaa !56
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #13
  %1100 = and i32 %1099, 3
  %1101 = ashr i32 %1099, 2
  %1102 = load ptr, ptr %0, align 8, !tbaa !35
  %1103 = getelementptr inbounds %struct.SMikkTSpaceInterface, ptr %1102, i64 0, i32 4
  %1104 = load ptr, ptr %1103, align 8, !tbaa !45
  call void %1104(ptr noundef nonnull %0, ptr noundef nonnull %14, i32 noundef %1101, i32 noundef %1100) #13
  %1105 = load float, ptr %14, align 4, !tbaa !57
  %1106 = load float, ptr %907, align 4, !tbaa !57
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #13
  %1107 = getelementptr inbounds i32, ptr %1089, i64 2
  %1108 = load i32, ptr %1107, align 4, !tbaa !56
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #13
  %1109 = and i32 %1108, 3
  %1110 = ashr i32 %1108, 2
  %1111 = load ptr, ptr %0, align 8, !tbaa !35
  %1112 = getelementptr inbounds %struct.SMikkTSpaceInterface, ptr %1111, i64 0, i32 4
  %1113 = load ptr, ptr %1112, align 8, !tbaa !45
  call void %1113(ptr noundef nonnull %0, ptr noundef nonnull %13, i32 noundef %1110, i32 noundef %1109) #13
  %1114 = load float, ptr %13, align 4, !tbaa !57
  %1115 = load float, ptr %908, align 4, !tbaa !57
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #13
  %1116 = fsub float %1105, %1096
  %1117 = fsub float %1106, %1097
  %1118 = fsub float %1114, %1096
  %1119 = fsub float %1115, %1097
  %1120 = fneg float %1117
  %1121 = fmul float %1118, %1120
  %1122 = call float @llvm.fmuladd.f32(float %1116, float %1119, float %1121)
  %1123 = fcmp olt float %1122, 0.000000e+00
  %1124 = fneg float %1122
  %1125 = select i1 %1123, float %1124, float %1122
  %1126 = mul nsw i32 %1064, 3
  %1127 = sext i32 %1126 to i64
  %1128 = getelementptr inbounds i32, ptr %103, i64 %1127
  %1129 = load i32, ptr %1128, align 4, !tbaa !56
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #13
  %1130 = and i32 %1129, 3
  %1131 = ashr i32 %1129, 2
  %1132 = load ptr, ptr %0, align 8, !tbaa !35
  %1133 = getelementptr inbounds %struct.SMikkTSpaceInterface, ptr %1132, i64 0, i32 4
  %1134 = load ptr, ptr %1133, align 8, !tbaa !45
  call void %1134(ptr noundef nonnull %0, ptr noundef nonnull %12, i32 noundef %1131, i32 noundef %1130) #13
  %1135 = load float, ptr %12, align 4, !tbaa !57
  %1136 = load float, ptr %909, align 4, !tbaa !57
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #13
  %1137 = getelementptr inbounds i32, ptr %1128, i64 1
  %1138 = load i32, ptr %1137, align 4, !tbaa !56
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #13
  %1139 = and i32 %1138, 3
  %1140 = ashr i32 %1138, 2
  %1141 = load ptr, ptr %0, align 8, !tbaa !35
  %1142 = getelementptr inbounds %struct.SMikkTSpaceInterface, ptr %1141, i64 0, i32 4
  %1143 = load ptr, ptr %1142, align 8, !tbaa !45
  call void %1143(ptr noundef nonnull %0, ptr noundef nonnull %11, i32 noundef %1140, i32 noundef %1139) #13
  %1144 = load float, ptr %11, align 4, !tbaa !57
  %1145 = load float, ptr %910, align 4, !tbaa !57
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #13
  %1146 = getelementptr inbounds i32, ptr %1128, i64 2
  %1147 = load i32, ptr %1146, align 4, !tbaa !56
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #13
  %1148 = and i32 %1147, 3
  %1149 = ashr i32 %1147, 2
  %1150 = load ptr, ptr %0, align 8, !tbaa !35
  %1151 = getelementptr inbounds %struct.SMikkTSpaceInterface, ptr %1150, i64 0, i32 4
  %1152 = load ptr, ptr %1151, align 8, !tbaa !45
  call void %1152(ptr noundef nonnull %0, ptr noundef nonnull %10, i32 noundef %1149, i32 noundef %1148) #13
  %1153 = load float, ptr %10, align 4, !tbaa !57
  %1154 = load float, ptr %911, align 4, !tbaa !57
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #13
  %1155 = fsub float %1144, %1135
  %1156 = fsub float %1145, %1136
  %1157 = fsub float %1153, %1135
  %1158 = fsub float %1154, %1136
  %1159 = fneg float %1156
  %1160 = fmul float %1157, %1159
  %1161 = call float @llvm.fmuladd.f32(float %1155, float %1158, float %1160)
  %1162 = fcmp olt float %1161, 0.000000e+00
  %1163 = fneg float %1161
  %1164 = select i1 %1162, float %1163, float %1161
  %1165 = fcmp ult float %1125, %1164
  br i1 %1165, label %1167, label %1166

1166:                                             ; preds = %1086
  br label %1167

1167:                                             ; preds = %1166, %1086, %1083
  %1168 = phi i1 [ false, %1166 ], [ true, %1086 ], [ false, %1083 ]
  %1169 = select i1 %1168, i32 %1064, i32 %1060
  %1170 = select i1 %1168, i32 %1060, i32 %1064
  %1171 = sext i32 %1170 to i64
  %1172 = getelementptr inbounds %struct.STriInfo, ptr %105, i64 %1171, i32 7
  %1173 = load i32, ptr %1172, align 4, !tbaa !59
  %1174 = and i32 %1173, -9
  store i32 %1174, ptr %1172, align 4, !tbaa !59
  %1175 = sext i32 %1169 to i64
  %1176 = getelementptr inbounds %struct.STriInfo, ptr %105, i64 %1175, i32 7
  %1177 = load i32, ptr %1176, align 4, !tbaa !59
  %1178 = and i32 %1177, 8
  %1179 = or disjoint i32 %1178, %1174
  store i32 %1179, ptr %1172, align 4, !tbaa !59
  br label %1180

1180:                                             ; preds = %1167, %1079, %1069
  %1181 = add nsw i32 %1060, 2
  br label %1182

1182:                                             ; preds = %1180, %1059
  %1183 = phi i32 [ %1181, %1180 ], [ %1064, %1059 ]
  %1184 = icmp slt i32 %1183, %903
  br i1 %1184, label %1059, label %1185, !llvm.loop !90

1185:                                             ; preds = %1182, %902
  %1186 = sext i32 %785 to i64
  %1187 = mul nsw i64 %1186, 36
  %1188 = call noalias ptr @malloc(i64 noundef %1187) #14
  %1189 = icmp eq ptr %1188, null
  %1190 = icmp sgt i32 %785, 0
  br i1 %1189, label %1194, label %1191

1191:                                             ; preds = %1185
  br i1 %1190, label %1192, label %1299

1192:                                             ; preds = %1191
  %1193 = zext nneg i32 %785 to i64
  br label %1274

1194:                                             ; preds = %1185
  br i1 %1190, label %1195, label %1479

1195:                                             ; preds = %1194
  %1196 = zext nneg i32 %785 to i64
  br label %1197

1197:                                             ; preds = %1195, %1271
  %1198 = phi i64 [ 0, %1195 ], [ %1272, %1271 ]
  %1199 = getelementptr inbounds %struct.STriInfo, ptr %105, i64 %1198
  %1200 = mul nuw nsw i64 %1198, 3
  %1201 = and i64 %1200, 4294967295
  %1202 = getelementptr i32, ptr %103, i64 %1201
  %1203 = trunc i64 %1198 to i32
  br label %1204

1204:                                             ; preds = %1197, %1268
  %1205 = phi i64 [ 0, %1197 ], [ %1269, %1268 ]
  %1206 = getelementptr inbounds [3 x i32], ptr %1199, i64 0, i64 %1205
  %1207 = load i32, ptr %1206, align 4, !tbaa !56
  %1208 = icmp eq i32 %1207, -1
  br i1 %1208, label %1209, label %1268

1209:                                             ; preds = %1204
  %1210 = getelementptr i32, ptr %1202, i64 %1205
  %1211 = load i32, ptr %1210, align 4, !tbaa !56
  %1212 = icmp eq i64 %1205, 2
  %1213 = add nuw i64 %1205, 1
  %1214 = select i1 %1212, i64 0, i64 %1213
  %1215 = add i64 %1214, %1200
  %1216 = and i64 %1215, 4294967295
  %1217 = getelementptr inbounds i32, ptr %103, i64 %1216
  %1218 = load i32, ptr %1217, align 4, !tbaa !56
  br label %1219

1219:                                             ; preds = %1209, %1253
  %1220 = phi i32 [ %1255, %1253 ], [ 0, %1209 ]
  %1221 = phi i32 [ %1258, %1253 ], [ 0, %1209 ]
  %1222 = phi i32 [ %1254, %1253 ], [ 0, %1209 ]
  %1223 = zext nneg i32 %1221 to i64
  %1224 = icmp eq i64 %1198, %1223
  br i1 %1224, label %1253, label %1225

1225:                                             ; preds = %1219
  %1226 = icmp eq i32 %1222, 0
  br i1 %1226, label %1227, label %1253

1227:                                             ; preds = %1225
  %1228 = mul nsw i32 %1221, 3
  br label %1229

1229:                                             ; preds = %1227, %1247
  %1230 = phi i32 [ 0, %1227 ], [ %1249, %1247 ]
  %1231 = phi i32 [ %1222, %1227 ], [ %1248, %1247 ]
  %1232 = icmp slt i32 %1230, 2
  %1233 = add nsw i32 %1230, 1
  %1234 = select i1 %1232, i32 %1233, i32 0
  %1235 = add nsw i32 %1234, %1228
  %1236 = sext i32 %1235 to i64
  %1237 = getelementptr inbounds i32, ptr %103, i64 %1236
  %1238 = load i32, ptr %1237, align 4, !tbaa !56
  %1239 = icmp eq i32 %1211, %1238
  br i1 %1239, label %1240, label %1246

1240:                                             ; preds = %1229
  %1241 = add nsw i32 %1230, %1228
  %1242 = sext i32 %1241 to i64
  %1243 = getelementptr inbounds i32, ptr %103, i64 %1242
  %1244 = load i32, ptr %1243, align 4, !tbaa !56
  %1245 = icmp eq i32 %1218, %1244
  br i1 %1245, label %1247, label %1246

1246:                                             ; preds = %1240, %1229
  br label %1247

1247:                                             ; preds = %1246, %1240
  %1248 = phi i32 [ %1231, %1246 ], [ 1, %1240 ]
  %1249 = phi i32 [ %1233, %1246 ], [ %1230, %1240 ]
  %1250 = icmp eq i32 %1248, 0
  %1251 = icmp slt i32 %1249, 3
  %1252 = select i1 %1250, i1 %1251, i1 false
  br i1 %1252, label %1229, label %1253, !llvm.loop !91

1253:                                             ; preds = %1247, %1225, %1219
  %1254 = phi i32 [ %1222, %1219 ], [ %1222, %1225 ], [ %1248, %1247 ]
  %1255 = phi i32 [ %1220, %1219 ], [ 0, %1225 ], [ %1249, %1247 ]
  %1256 = icmp eq i32 %1254, 0
  %1257 = zext i1 %1256 to i32
  %1258 = add nuw nsw i32 %1221, %1257
  %1259 = icmp eq i32 %1254, 0
  %1260 = icmp slt i32 %1258, %785
  %1261 = select i1 %1259, i1 %1260, i1 false
  br i1 %1261, label %1219, label %1262, !llvm.loop !92

1262:                                             ; preds = %1253
  br i1 %1259, label %1268, label %1263

1263:                                             ; preds = %1262
  store i32 %1258, ptr %1206, align 4, !tbaa !56
  %1264 = zext nneg i32 %1258 to i64
  %1265 = getelementptr inbounds %struct.STriInfo, ptr %105, i64 %1264
  %1266 = sext i32 %1255 to i64
  %1267 = getelementptr inbounds [3 x i32], ptr %1265, i64 0, i64 %1266
  store i32 %1203, ptr %1267, align 4, !tbaa !56
  br label %1268

1268:                                             ; preds = %1263, %1262, %1204
  %1269 = add nuw nsw i64 %1205, 1
  %1270 = icmp eq i64 %1269, 3
  br i1 %1270, label %1271, label %1204, !llvm.loop !93

1271:                                             ; preds = %1268
  %1272 = add nuw nsw i64 %1198, 1
  %1273 = icmp eq i64 %1272, %1196
  br i1 %1273, label %1479, label %1197, !llvm.loop !94

1274:                                             ; preds = %1192, %1296
  %1275 = phi i64 [ 0, %1192 ], [ %1297, %1296 ]
  %1276 = mul nuw nsw i64 %1275, 3
  %1277 = getelementptr i32, ptr %103, i64 %1276
  %1278 = trunc i64 %1275 to i32
  br label %1279

1279:                                             ; preds = %1274, %1279
  %1280 = phi i64 [ 0, %1274 ], [ %1285, %1279 ]
  %1281 = add nuw nsw i64 %1280, %1276
  %1282 = getelementptr inbounds i32, ptr %103, i64 %1281
  %1283 = load i32, ptr %1282, align 4, !tbaa !56
  %1284 = icmp eq i64 %1280, 2
  %1285 = add nuw nsw i64 %1280, 1
  %1286 = and i64 %1285, 4294967295
  %1287 = select i1 %1284, i64 0, i64 %1286
  %1288 = getelementptr i32, ptr %1277, i64 %1287
  %1289 = load i32, ptr %1288, align 4, !tbaa !56
  %1290 = call i32 @llvm.smin.i32(i32 %1283, i32 %1289)
  %1291 = getelementptr inbounds %union.SEdge, ptr %1188, i64 %1281
  store i32 %1290, ptr %1291, align 4, !tbaa !55
  %1292 = call i32 @llvm.smax.i32(i32 %1283, i32 %1289)
  %1293 = getelementptr inbounds %struct.anon, ptr %1291, i64 0, i32 1
  store i32 %1292, ptr %1293, align 4, !tbaa !55
  %1294 = getelementptr inbounds %struct.anon, ptr %1291, i64 0, i32 2
  store i32 %1278, ptr %1294, align 4, !tbaa !55
  %1295 = icmp eq i64 %1285, 3
  br i1 %1295, label %1296, label %1279, !llvm.loop !95

1296:                                             ; preds = %1279
  %1297 = add nuw nsw i64 %1275, 1
  %1298 = icmp eq i64 %1297, %1193
  br i1 %1298, label %1299, label %1274, !llvm.loop !96

1299:                                             ; preds = %1296, %1191
  %1300 = mul nsw i32 %785, 3
  %1301 = add nsw i32 %1300, -1
  call fastcc void @QuickSortEdges(ptr noundef nonnull %1188, i32 noundef 0, i32 noundef %1301, i32 noundef 0, i32 noundef 39871946)
  %1302 = icmp sgt i32 %785, 0
  br i1 %1302, label %1303, label %1306

1303:                                             ; preds = %1299
  %1304 = call i32 @llvm.smax.i32(i32 %1300, i32 2)
  %1305 = zext nneg i32 %1304 to i64
  br label %1311

1306:                                             ; preds = %1324, %1299
  %1307 = icmp sgt i32 %785, 0
  br i1 %1307, label %1308, label %1328

1308:                                             ; preds = %1306
  %1309 = call i32 @llvm.smax.i32(i32 %1300, i32 2)
  %1310 = zext nneg i32 %1309 to i64
  br label %1334

1311:                                             ; preds = %1303, %1324
  %1312 = phi i64 [ 1, %1303 ], [ %1326, %1324 ]
  %1313 = phi i32 [ 0, %1303 ], [ %1325, %1324 ]
  %1314 = sext i32 %1313 to i64
  %1315 = getelementptr inbounds %union.SEdge, ptr %1188, i64 %1314
  %1316 = load i32, ptr %1315, align 4, !tbaa !55
  %1317 = getelementptr inbounds %union.SEdge, ptr %1188, i64 %1312
  %1318 = load i32, ptr %1317, align 4, !tbaa !55
  %1319 = icmp eq i32 %1316, %1318
  br i1 %1319, label %1324, label %1320

1320:                                             ; preds = %1311
  %1321 = trunc i64 %1312 to i32
  %1322 = add i32 %1321, -1
  call fastcc void @QuickSortEdges(ptr noundef nonnull %1188, i32 noundef %1313, i32 noundef %1322, i32 noundef 1, i32 noundef 39871946)
  %1323 = trunc i64 %1312 to i32
  br label %1324

1324:                                             ; preds = %1320, %1311
  %1325 = phi i32 [ %1323, %1320 ], [ %1313, %1311 ]
  %1326 = add nuw nsw i64 %1312, 1
  %1327 = icmp eq i64 %1326, %1305
  br i1 %1327, label %1306, label %1311, !llvm.loop !97

1328:                                             ; preds = %1353, %1306
  %1329 = icmp sgt i32 %785, 0
  br i1 %1329, label %1330, label %1478

1330:                                             ; preds = %1328
  %1331 = zext nneg i32 %1300 to i64
  %1332 = call i32 @llvm.smax.i32(i32 %1300, i32 1)
  %1333 = zext nneg i32 %1332 to i64
  br label %1357

1334:                                             ; preds = %1308, %1353
  %1335 = phi i64 [ 1, %1308 ], [ %1355, %1353 ]
  %1336 = phi i32 [ 0, %1308 ], [ %1354, %1353 ]
  %1337 = sext i32 %1336 to i64
  %1338 = getelementptr inbounds %union.SEdge, ptr %1188, i64 %1337
  %1339 = load i32, ptr %1338, align 4, !tbaa !55
  %1340 = getelementptr inbounds %union.SEdge, ptr %1188, i64 %1335
  %1341 = load i32, ptr %1340, align 4, !tbaa !55
  %1342 = icmp eq i32 %1339, %1341
  br i1 %1342, label %1343, label %1349

1343:                                             ; preds = %1334
  %1344 = getelementptr inbounds %struct.anon, ptr %1338, i64 0, i32 1
  %1345 = load i32, ptr %1344, align 4, !tbaa !55
  %1346 = getelementptr inbounds %struct.anon, ptr %1340, i64 0, i32 1
  %1347 = load i32, ptr %1346, align 4, !tbaa !55
  %1348 = icmp eq i32 %1345, %1347
  br i1 %1348, label %1353, label %1349

1349:                                             ; preds = %1343, %1334
  %1350 = trunc i64 %1335 to i32
  %1351 = add i32 %1350, -1
  call fastcc void @QuickSortEdges(ptr noundef nonnull %1188, i32 noundef %1336, i32 noundef %1351, i32 noundef 2, i32 noundef 39871946)
  %1352 = trunc i64 %1335 to i32
  br label %1353

1353:                                             ; preds = %1349, %1343
  %1354 = phi i32 [ %1352, %1349 ], [ %1336, %1343 ]
  %1355 = add nuw nsw i64 %1335, 1
  %1356 = icmp eq i64 %1355, %1310
  br i1 %1356, label %1328, label %1334, !llvm.loop !98

1357:                                             ; preds = %1330, %1475
  %1358 = phi i64 [ 0, %1330 ], [ %1476, %1475 ]
  %1359 = getelementptr inbounds %union.SEdge, ptr %1188, i64 %1358
  %1360 = load i32, ptr %1359, align 4, !tbaa !55
  %1361 = getelementptr inbounds %struct.anon, ptr %1359, i64 0, i32 1
  %1362 = load i32, ptr %1361, align 4, !tbaa !55
  %1363 = getelementptr inbounds %struct.anon, ptr %1359, i64 0, i32 2
  %1364 = load i32, ptr %1363, align 4, !tbaa !55
  %1365 = mul nsw i32 %1364, 3
  %1366 = sext i32 %1365 to i64
  %1367 = getelementptr inbounds i32, ptr %103, i64 %1366
  %1368 = load i32, ptr %1367, align 4, !tbaa !56
  %1369 = icmp eq i32 %1368, %1360
  %1370 = icmp eq i32 %1368, %1362
  %1371 = or i1 %1369, %1370
  %1372 = getelementptr inbounds i32, ptr %1367, i64 1
  %1373 = load i32, ptr %1372, align 4, !tbaa !56
  br i1 %1371, label %1374, label %1381

1374:                                             ; preds = %1357
  %1375 = icmp eq i32 %1373, %1360
  %1376 = icmp eq i32 %1373, %1362
  %1377 = or i1 %1375, %1376
  br i1 %1377, label %1384, label %1378

1378:                                             ; preds = %1374
  %1379 = getelementptr inbounds i32, ptr %1367, i64 2
  %1380 = load i32, ptr %1379, align 4, !tbaa !56
  br label %1384

1381:                                             ; preds = %1357
  %1382 = getelementptr inbounds i32, ptr %1367, i64 2
  %1383 = load i32, ptr %1382, align 4, !tbaa !56
  br label %1384

1384:                                             ; preds = %1381, %1378, %1374
  %1385 = phi i32 [ %1380, %1378 ], [ %1373, %1381 ], [ %1368, %1374 ]
  %1386 = phi i32 [ %1368, %1378 ], [ %1383, %1381 ], [ %1373, %1374 ]
  %1387 = phi i64 [ 2, %1378 ], [ 1, %1381 ], [ 0, %1374 ]
  %1388 = sext i32 %1364 to i64
  %1389 = getelementptr inbounds %struct.STriInfo, ptr %105, i64 %1388
  %1390 = getelementptr inbounds [3 x i32], ptr %1389, i64 0, i64 %1387
  %1391 = load i32, ptr %1390, align 4, !tbaa !56
  %1392 = icmp eq i32 %1391, -1
  br i1 %1392, label %1393, label %1475

1393:                                             ; preds = %1384
  %1394 = add nuw nsw i64 %1358, 1
  %1395 = icmp ult i64 %1394, %1331
  %1396 = trunc i64 %1394 to i32
  br i1 %1395, label %1397, label %1462

1397:                                             ; preds = %1393
  %1398 = trunc i64 %1394 to i32
  %1399 = shl i64 %1394, 32
  %1400 = ashr exact i64 %1399, 32
  %1401 = getelementptr inbounds %union.SEdge, ptr %1188, i64 %1400
  %1402 = load i32, ptr %1401, align 4, !tbaa !55
  %1403 = icmp eq i32 %1360, %1402
  br i1 %1403, label %1409, label %1462

1404:                                             ; preds = %1458
  %1405 = sext i32 %1459 to i64
  %1406 = getelementptr inbounds %union.SEdge, ptr %1188, i64 %1405
  %1407 = load i32, ptr %1406, align 4, !tbaa !55
  %1408 = icmp eq i32 %1360, %1407
  br i1 %1408, label %1409, label %1462, !llvm.loop !99

1409:                                             ; preds = %1397, %1404
  %1410 = phi i32 [ %1407, %1404 ], [ %1402, %1397 ]
  %1411 = phi ptr [ %1406, %1404 ], [ %1401, %1397 ]
  %1412 = phi i32 [ %1443, %1404 ], [ 0, %1397 ]
  %1413 = phi i32 [ %1459, %1404 ], [ %1398, %1397 ]
  %1414 = phi i32 [ %1460, %1404 ], [ 1, %1397 ]
  %1415 = getelementptr inbounds %struct.anon, ptr %1411, i64 0, i32 1
  %1416 = load i32, ptr %1415, align 4, !tbaa !55
  %1417 = icmp eq i32 %1362, %1416
  %1418 = icmp ne i32 %1414, 0
  %1419 = and i1 %1418, %1417
  br i1 %1419, label %1420, label %1462

1420:                                             ; preds = %1409
  %1421 = getelementptr inbounds %struct.anon, ptr %1411, i64 0, i32 2
  %1422 = load i32, ptr %1421, align 4, !tbaa !55
  %1423 = mul nsw i32 %1422, 3
  %1424 = sext i32 %1423 to i64
  %1425 = getelementptr inbounds i32, ptr %103, i64 %1424
  %1426 = load i32, ptr %1425, align 4, !tbaa !56
  %1427 = icmp eq i32 %1426, %1410
  %1428 = icmp eq i32 %1426, %1416
  %1429 = or i1 %1427, %1428
  %1430 = getelementptr inbounds i32, ptr %1425, i64 1
  %1431 = load i32, ptr %1430, align 4, !tbaa !56
  br i1 %1429, label %1432, label %1439

1432:                                             ; preds = %1420
  %1433 = icmp eq i32 %1431, %1410
  %1434 = icmp eq i32 %1431, %1416
  %1435 = or i1 %1433, %1434
  br i1 %1435, label %1442, label %1436

1436:                                             ; preds = %1432
  %1437 = getelementptr inbounds i32, ptr %1425, i64 2
  %1438 = load i32, ptr %1437, align 4, !tbaa !56
  br label %1442

1439:                                             ; preds = %1420
  %1440 = getelementptr inbounds i32, ptr %1425, i64 2
  %1441 = load i32, ptr %1440, align 4, !tbaa !56
  br label %1442

1442:                                             ; preds = %1439, %1436, %1432
  %1443 = phi i32 [ 2, %1436 ], [ 1, %1439 ], [ 0, %1432 ]
  %1444 = phi i32 [ %1426, %1436 ], [ %1441, %1439 ], [ %1431, %1432 ]
  %1445 = phi i32 [ %1438, %1436 ], [ %1431, %1439 ], [ %1426, %1432 ]
  %1446 = icmp eq i32 %1385, %1444
  br i1 %1446, label %1447, label %1456

1447:                                             ; preds = %1442
  %1448 = sext i32 %1422 to i64
  %1449 = getelementptr inbounds %struct.STriInfo, ptr %105, i64 %1448
  %1450 = zext nneg i32 %1443 to i64
  %1451 = getelementptr inbounds [3 x i32], ptr %1449, i64 0, i64 %1450
  %1452 = load i32, ptr %1451, align 4, !tbaa !56
  %1453 = icmp eq i32 %1452, -1
  %1454 = icmp eq i32 %1386, %1445
  %1455 = select i1 %1454, i1 %1453, i1 false
  br i1 %1455, label %1458, label %1456

1456:                                             ; preds = %1447, %1442
  %1457 = add nsw i32 %1413, 1
  br label %1458

1458:                                             ; preds = %1456, %1447
  %1459 = phi i32 [ %1457, %1456 ], [ %1413, %1447 ]
  %1460 = phi i32 [ 1, %1456 ], [ 0, %1447 ]
  %1461 = icmp slt i32 %1459, %1300
  br i1 %1461, label %1404, label %1462, !llvm.loop !99

1462:                                             ; preds = %1409, %1404, %1458, %1397, %1393
  %1463 = phi i32 [ 0, %1393 ], [ 0, %1397 ], [ %1443, %1458 ], [ %1443, %1404 ], [ %1412, %1409 ]
  %1464 = phi i32 [ %1396, %1393 ], [ %1398, %1397 ], [ %1459, %1458 ], [ %1459, %1404 ], [ %1413, %1409 ]
  %1465 = phi i32 [ 1, %1393 ], [ 1, %1397 ], [ %1460, %1458 ], [ %1460, %1404 ], [ %1414, %1409 ]
  %1466 = icmp eq i32 %1465, 0
  br i1 %1466, label %1467, label %1475

1467:                                             ; preds = %1462
  %1468 = sext i32 %1464 to i64
  %1469 = getelementptr inbounds %union.SEdge, ptr %1188, i64 %1468, i32 0, i32 2
  %1470 = load i32, ptr %1469, align 4, !tbaa !55
  store i32 %1470, ptr %1390, align 4, !tbaa !56
  %1471 = sext i32 %1470 to i64
  %1472 = getelementptr inbounds %struct.STriInfo, ptr %105, i64 %1471
  %1473 = zext nneg i32 %1463 to i64
  %1474 = getelementptr inbounds [3 x i32], ptr %1472, i64 0, i64 %1473
  store i32 %1364, ptr %1474, align 4, !tbaa !56
  br label %1475

1475:                                             ; preds = %1467, %1462, %1384
  %1476 = add nuw nsw i64 %1358, 1
  %1477 = icmp eq i64 %1476, %1333
  br i1 %1477, label %1478, label %1357, !llvm.loop !100

1478:                                             ; preds = %1475, %1328
  call void @free(ptr noundef %1188) #13
  br label %1479

1479:                                             ; preds = %1271, %1194, %1478
  %1480 = mul nsw i32 %785, 3
  %1481 = sext i32 %1480 to i64
  %1482 = mul nsw i64 %1481, 24
  %1483 = call noalias ptr @malloc(i64 noundef %1482) #14
  %1484 = mul nsw i64 %1186, 12
  %1485 = call noalias ptr @malloc(i64 noundef %1484) #14
  %1486 = icmp eq ptr %1483, null
  %1487 = icmp eq ptr %1485, null
  %1488 = or i1 %1486, %1487
  br i1 %1488, label %1489, label %1492

1489:                                             ; preds = %1479
  br i1 %1486, label %1491, label %1490

1490:                                             ; preds = %1489
  call void @free(ptr noundef %1483) #13
  br label %1491

1491:                                             ; preds = %1490, %1489
  br i1 %1487, label %2696, label %2692

1492:                                             ; preds = %1479
  %1493 = icmp sgt i32 %785, 0
  br i1 %1493, label %1494, label %1559

1494:                                             ; preds = %1492
  %1495 = zext nneg i32 %785 to i64
  br label %1496

1496:                                             ; preds = %1556, %1494
  %1497 = phi i64 [ 0, %1494 ], [ %1557, %1556 ]
  %1498 = phi i32 [ 0, %1494 ], [ %1553, %1556 ]
  %1499 = phi i32 [ 0, %1494 ], [ %1552, %1556 ]
  %1500 = getelementptr inbounds %struct.STriInfo, ptr %105, i64 %1497
  %1501 = getelementptr inbounds %struct.STriInfo, ptr %105, i64 %1497, i32 7
  %1502 = mul nuw nsw i64 %1497, 3
  %1503 = and i64 %1502, 4294967295
  %1504 = getelementptr i32, ptr %103, i64 %1503
  %1505 = trunc i64 %1497 to i32
  br label %1506

1506:                                             ; preds = %1551, %1496
  %1507 = phi i64 [ 0, %1496 ], [ %1554, %1551 ]
  %1508 = phi i32 [ %1498, %1496 ], [ %1553, %1551 ]
  %1509 = phi i32 [ %1499, %1496 ], [ %1552, %1551 ]
  %1510 = load i32, ptr %1501, align 4, !tbaa !59
  %1511 = and i32 %1510, 4
  %1512 = icmp eq i32 %1511, 0
  br i1 %1512, label %1513, label %1551

1513:                                             ; preds = %1506
  %1514 = getelementptr inbounds %struct.STriInfo, ptr %105, i64 %1497, i32 1, i64 %1507
  %1515 = load ptr, ptr %1514, align 8, !tbaa !82
  %1516 = icmp eq ptr %1515, null
  br i1 %1516, label %1517, label %1551

1517:                                             ; preds = %1513
  %1518 = getelementptr i32, ptr %1504, i64 %1507
  %1519 = load i32, ptr %1518, align 4, !tbaa !56
  %1520 = sext i32 %1508 to i64
  %1521 = getelementptr inbounds %struct.SGroup, ptr %1483, i64 %1520
  store ptr %1521, ptr %1514, align 8, !tbaa !82
  %1522 = getelementptr inbounds %struct.SGroup, ptr %1483, i64 %1520, i32 2
  store i32 %1519, ptr %1522, align 8, !tbaa !101
  %1523 = lshr i32 %1510, 3
  %1524 = and i32 %1523, 1
  %1525 = getelementptr inbounds %struct.SGroup, ptr %1483, i64 %1520, i32 3
  store i32 %1524, ptr %1525, align 4, !tbaa !103
  store i32 0, ptr %1521, align 8, !tbaa !104
  %1526 = sext i32 %1509 to i64
  %1527 = getelementptr inbounds i32, ptr %1485, i64 %1526
  %1528 = getelementptr inbounds %struct.SGroup, ptr %1483, i64 %1520, i32 1
  store ptr %1527, ptr %1528, align 8, !tbaa !105
  %1529 = add nsw i32 %1508, 1
  store i32 %1505, ptr %1527, align 4, !tbaa !56
  %1530 = load i32, ptr %1521, align 8, !tbaa !104
  %1531 = add nsw i32 %1530, 1
  store i32 %1531, ptr %1521, align 8, !tbaa !104
  %1532 = getelementptr inbounds [3 x i32], ptr %1500, i64 0, i64 %1507
  %1533 = load i32, ptr %1532, align 4, !tbaa !56
  %1534 = icmp eq i64 %1507, 0
  %1535 = shl i64 %1507, 32
  %1536 = add nsw i64 %1535, -4294967296
  %1537 = ashr exact i64 %1536, 32
  %1538 = select i1 %1534, i64 2, i64 %1537
  %1539 = getelementptr inbounds [3 x i32], ptr %1500, i64 0, i64 %1538
  %1540 = load i32, ptr %1539, align 4, !tbaa !56
  %1541 = icmp sgt i32 %1533, -1
  br i1 %1541, label %1542, label %1543

1542:                                             ; preds = %1517
  call fastcc void @AssignRecur(ptr noundef %103, ptr noundef %105, i32 noundef %1533, ptr noundef nonnull %1521)
  br label %1543

1543:                                             ; preds = %1542, %1517
  %1544 = icmp sgt i32 %1540, -1
  br i1 %1544, label %1545, label %1547

1545:                                             ; preds = %1543
  %1546 = load ptr, ptr %1514, align 8, !tbaa !82
  call fastcc void @AssignRecur(ptr noundef %103, ptr noundef %105, i32 noundef %1540, ptr noundef %1546)
  br label %1547

1547:                                             ; preds = %1545, %1543
  %1548 = load ptr, ptr %1514, align 8, !tbaa !82
  %1549 = load i32, ptr %1548, align 8, !tbaa !104
  %1550 = add nsw i32 %1549, %1509
  br label %1551

1551:                                             ; preds = %1547, %1513, %1506
  %1552 = phi i32 [ %1550, %1547 ], [ %1509, %1513 ], [ %1509, %1506 ]
  %1553 = phi i32 [ %1529, %1547 ], [ %1508, %1513 ], [ %1508, %1506 ]
  %1554 = add nuw nsw i64 %1507, 1
  %1555 = icmp eq i64 %1554, 3
  br i1 %1555, label %1556, label %1506, !llvm.loop !106

1556:                                             ; preds = %1551
  %1557 = add nuw nsw i64 %1497, 1
  %1558 = icmp eq i64 %1557, %1495
  br i1 %1558, label %1559, label %1496, !llvm.loop !107

1559:                                             ; preds = %1556, %1492
  %1560 = phi i32 [ 0, %1492 ], [ %1553, %1556 ]
  %1561 = sext i32 %131 to i64
  %1562 = mul nsw i64 %1561, 40
  %1563 = call noalias ptr @malloc(i64 noundef %1562) #14
  %1564 = icmp eq ptr %1563, null
  br i1 %1564, label %2688, label %1565

1565:                                             ; preds = %1559
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %1563, i8 0, i64 %1562, i1 false)
  %1566 = icmp sgt i32 %131, 0
  br i1 %1566, label %1567, label %1581

1567:                                             ; preds = %1565
  %1568 = zext nneg i32 %131 to i64
  br label %1569

1569:                                             ; preds = %1567, %1569
  %1570 = phi i64 [ 0, %1567 ], [ %1579, %1569 ]
  %1571 = getelementptr inbounds %struct.STSpace, ptr %1563, i64 %1570
  store float 1.000000e+00, ptr %1571, align 4, !tbaa !108
  %1572 = getelementptr inbounds %struct.SVec3, ptr %1571, i64 0, i32 1
  store float 0.000000e+00, ptr %1572, align 4, !tbaa !110
  %1573 = getelementptr inbounds %struct.SVec3, ptr %1571, i64 0, i32 2
  store float 0.000000e+00, ptr %1573, align 4, !tbaa !111
  %1574 = getelementptr inbounds %struct.STSpace, ptr %1563, i64 %1570, i32 1
  store float 1.000000e+00, ptr %1574, align 4, !tbaa !112
  %1575 = getelementptr inbounds %struct.STSpace, ptr %1563, i64 %1570, i32 2
  store float 0.000000e+00, ptr %1575, align 4, !tbaa !113
  %1576 = getelementptr inbounds %struct.STSpace, ptr %1563, i64 %1570, i32 2, i32 1
  store float 1.000000e+00, ptr %1576, align 4, !tbaa !114
  %1577 = getelementptr inbounds %struct.STSpace, ptr %1563, i64 %1570, i32 2, i32 2
  store float 0.000000e+00, ptr %1577, align 4, !tbaa !115
  %1578 = getelementptr inbounds %struct.STSpace, ptr %1563, i64 %1570, i32 3
  store float 1.000000e+00, ptr %1578, align 4, !tbaa !116
  %1579 = add nuw nsw i64 %1570, 1
  %1580 = icmp eq i64 %1579, %1568
  br i1 %1580, label %1581, label %1569, !llvm.loop !117

1581:                                             ; preds = %1569, %1565
  %1582 = icmp sgt i32 %1560, 0
  br i1 %1582, label %1583, label %1593

1583:                                             ; preds = %1581
  %1584 = zext nneg i32 %1560 to i64
  br label %1585

1585:                                             ; preds = %1585, %1583
  %1586 = phi i64 [ 0, %1583 ], [ %1591, %1585 ]
  %1587 = phi i32 [ 0, %1583 ], [ %1590, %1585 ]
  %1588 = getelementptr inbounds %struct.SGroup, ptr %1483, i64 %1586
  %1589 = load i32, ptr %1588, align 8, !tbaa !104
  %1590 = call i32 @llvm.smax.i32(i32 %1587, i32 %1589)
  %1591 = add nuw nsw i64 %1586, 1
  %1592 = icmp eq i64 %1591, %1584
  br i1 %1592, label %1593, label %1585, !llvm.loop !118

1593:                                             ; preds = %1585, %1581
  %1594 = phi i32 [ 0, %1581 ], [ %1590, %1585 ]
  %1595 = icmp eq i32 %1594, 0
  br i1 %1595, label %2482, label %1596

1596:                                             ; preds = %1593
  %1597 = zext nneg i32 %1594 to i64
  %1598 = mul nuw nsw i64 %1597, 40
  %1599 = call noalias ptr @malloc(i64 noundef %1598) #14
  %1600 = shl nuw nsw i64 %1597, 4
  %1601 = call noalias ptr @malloc(i64 noundef %1600) #14
  %1602 = shl nuw nsw i64 %1597, 2
  %1603 = call noalias ptr @malloc(i64 noundef %1602) #14
  %1604 = icmp eq ptr %1599, null
  %1605 = icmp eq ptr %1601, null
  %1606 = or i1 %1604, %1605
  %1607 = icmp eq ptr %1603, null
  %1608 = or i1 %1606, %1607
  br i1 %1608, label %1622, label %1609

1609:                                             ; preds = %1596
  br i1 %1582, label %1610, label %2480

1610:                                             ; preds = %1609
  %1611 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 1
  %1612 = getelementptr inbounds [3 x float], ptr %9, i64 0, i64 2
  %1613 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 1
  %1614 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 2
  %1615 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 1
  %1616 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  %1617 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 1
  %1618 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  %1619 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 1
  %1620 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  %1621 = zext nneg i32 %1560 to i64
  br label %1631

1622:                                             ; preds = %1596
  br i1 %1604, label %1624, label %1623

1623:                                             ; preds = %1622
  call void @free(ptr noundef %1599) #13
  br label %1624

1624:                                             ; preds = %1623, %1622
  br i1 %1605, label %1626, label %1625

1625:                                             ; preds = %1624
  call void @free(ptr noundef %1601) #13
  br label %1626

1626:                                             ; preds = %1625, %1624
  br i1 %1607, label %2481, label %1627

1627:                                             ; preds = %1626
  call void @free(ptr noundef %1603) #13
  br label %2481

1628:                                             ; preds = %2478
  %1629 = add nuw nsw i64 %1632, 1
  %1630 = icmp eq i64 %1629, %1621
  br i1 %1630, label %2480, label %1631, !llvm.loop !119

1631:                                             ; preds = %1628, %1610
  %1632 = phi i64 [ 0, %1610 ], [ %1629, %1628 ]
  %1633 = getelementptr inbounds %struct.SGroup, ptr %1483, i64 %1632
  %1634 = load i32, ptr %1633, align 8, !tbaa !104
  %1635 = icmp sgt i32 %1634, 0
  br i1 %1635, label %1636, label %1645

1636:                                             ; preds = %1631
  %1637 = getelementptr inbounds %struct.SGroup, ptr %1483, i64 %1632, i32 1
  %1638 = getelementptr inbounds %struct.SGroup, ptr %1483, i64 %1632, i32 2
  %1639 = getelementptr inbounds %struct.SGroup, ptr %1483, i64 %1632, i32 3
  br label %1651

1640:                                             ; preds = %2469
  %1641 = add nuw nsw i64 %1652, 1
  %1642 = load i32, ptr %1633, align 8, !tbaa !104
  %1643 = sext i32 %1642 to i64
  %1644 = icmp slt i64 %1641, %1643
  br i1 %1644, label %1651, label %1645, !llvm.loop !120

1645:                                             ; preds = %1640, %1631
  %1646 = phi i32 [ 0, %1631 ], [ %2470, %1640 ]
  %1647 = phi i1 [ %1635, %1631 ], [ %1644, %1640 ]
  %1648 = icmp sgt i32 %1646, 0
  br i1 %1648, label %1649, label %2478

1649:                                             ; preds = %1645
  %1650 = zext nneg i32 %1646 to i64
  br label %2472

1651:                                             ; preds = %1640, %1636
  %1652 = phi i64 [ 0, %1636 ], [ %1641, %1640 ]
  %1653 = phi i1 [ true, %1636 ], [ %1644, %1640 ]
  %1654 = phi i32 [ 0, %1636 ], [ %2470, %1640 ]
  %1655 = load ptr, ptr %1637, align 8, !tbaa !105
  %1656 = getelementptr inbounds i32, ptr %1655, i64 %1652
  %1657 = load i32, ptr %1656, align 4, !tbaa !56
  %1658 = sext i32 %1657 to i64
  %1659 = getelementptr inbounds %struct.STriInfo, ptr %105, i64 %1658, i32 1
  %1660 = load ptr, ptr %1659, align 8, !tbaa !82
  %1661 = icmp eq ptr %1660, %1633
  br i1 %1661, label %1671, label %1662

1662:                                             ; preds = %1651
  %1663 = getelementptr inbounds %struct.STriInfo, ptr %105, i64 %1658, i32 1, i64 1
  %1664 = load ptr, ptr %1663, align 8, !tbaa !82
  %1665 = icmp eq ptr %1664, %1633
  br i1 %1665, label %1671, label %1666

1666:                                             ; preds = %1662
  %1667 = getelementptr inbounds %struct.STriInfo, ptr %105, i64 %1658, i32 1, i64 2
  %1668 = load ptr, ptr %1667, align 8, !tbaa !82
  %1669 = icmp eq ptr %1668, %1633
  %1670 = select i1 %1669, i32 2, i32 -1
  br label %1671

1671:                                             ; preds = %1666, %1662, %1651
  %1672 = phi i32 [ 0, %1651 ], [ 1, %1662 ], [ %1670, %1666 ]
  %1673 = mul nsw i32 %1657, 3
  %1674 = add nsw i32 %1672, %1673
  %1675 = sext i32 %1674 to i64
  %1676 = getelementptr inbounds i32, ptr %103, i64 %1675
  %1677 = load i32, ptr %1676, align 4, !tbaa !56
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #13
  %1678 = and i32 %1677, 3
  %1679 = ashr i32 %1677, 2
  %1680 = load ptr, ptr %0, align 8, !tbaa !35
  %1681 = getelementptr inbounds %struct.SMikkTSpaceInterface, ptr %1680, i64 0, i32 3
  %1682 = load ptr, ptr %1681, align 8, !tbaa !44
  call void %1682(ptr noundef nonnull %0, ptr noundef nonnull %9, i32 noundef %1679, i32 noundef %1678) #13
  %1683 = load float, ptr %9, align 4, !tbaa !57
  %1684 = load float, ptr %1611, align 4, !tbaa !57
  %1685 = load float, ptr %1612, align 4, !tbaa !57
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #13
  %1686 = getelementptr inbounds %struct.STriInfo, ptr %105, i64 %1658, i32 2
  %1687 = load <2 x float>, ptr %1686, align 8
  %1688 = getelementptr inbounds i8, ptr %1686, i64 8
  %1689 = load float, ptr %1688, align 8
  %1690 = extractelement <2 x float> %1687, i64 0
  %1691 = extractelement <2 x float> %1687, i64 1
  %1692 = fmul float %1684, %1691
  %1693 = call float @llvm.fmuladd.f32(float %1683, float %1690, float %1692)
  %1694 = call float @llvm.fmuladd.f32(float %1685, float %1689, float %1693)
  %1695 = fmul float %1683, %1694
  %1696 = fmul float %1684, %1694
  %1697 = fmul float %1685, %1694
  %1698 = fsub float %1690, %1695
  %1699 = insertelement <2 x float> poison, float %1698, i64 0
  %1700 = fsub float %1691, %1696
  %1701 = insertelement <2 x float> %1699, float %1700, i64 1
  %1702 = fsub float %1689, %1697
  %1703 = getelementptr inbounds %struct.STriInfo, ptr %105, i64 %1658, i32 3
  %1704 = load <2 x float>, ptr %1703, align 4
  %1705 = getelementptr inbounds i8, ptr %1703, i64 8
  %1706 = load float, ptr %1705, align 4
  %1707 = extractelement <2 x float> %1704, i64 0
  %1708 = extractelement <2 x float> %1704, i64 1
  %1709 = fmul float %1684, %1708
  %1710 = call float @llvm.fmuladd.f32(float %1683, float %1707, float %1709)
  %1711 = call float @llvm.fmuladd.f32(float %1685, float %1706, float %1710)
  %1712 = fmul float %1683, %1711
  %1713 = fmul float %1684, %1711
  %1714 = fmul float %1685, %1711
  %1715 = fsub float %1707, %1712
  %1716 = insertelement <2 x float> poison, float %1715, i64 0
  %1717 = fsub float %1708, %1713
  %1718 = insertelement <2 x float> %1716, float %1717, i64 1
  %1719 = fsub float %1706, %1714
  %1720 = call float @llvm.fabs.f32(float %1698)
  %1721 = fcmp ule float %1720, 0x3810000000000000
  %1722 = call float @llvm.fabs.f32(float %1700)
  %1723 = fcmp ule float %1722, 0x3810000000000000
  %1724 = select i1 %1721, i1 %1723, i1 false
  %1725 = call float @llvm.fabs.f32(float %1702)
  %1726 = fcmp ule float %1725, 0x3810000000000000
  %1727 = select i1 %1724, i1 %1726, i1 false
  br i1 %1727, label %1739, label %1728

1728:                                             ; preds = %1671
  %1729 = fmul float %1700, %1700
  %1730 = call float @llvm.fmuladd.f32(float %1698, float %1698, float %1729)
  %1731 = call float @llvm.fmuladd.f32(float %1702, float %1702, float %1730)
  %1732 = call float @sqrtf(float noundef %1731) #13
  %1733 = fdiv float 1.000000e+00, %1732
  %1734 = fmul float %1698, %1733
  %1735 = insertelement <2 x float> poison, float %1734, i64 0
  %1736 = fmul float %1700, %1733
  %1737 = insertelement <2 x float> %1735, float %1736, i64 1
  %1738 = fmul float %1702, %1733
  br label %1739

1739:                                             ; preds = %1728, %1671
  %1740 = phi <2 x float> [ %1737, %1728 ], [ %1701, %1671 ]
  %1741 = phi float [ %1738, %1728 ], [ %1702, %1671 ]
  %1742 = call float @llvm.fabs.f32(float %1715)
  %1743 = fcmp ule float %1742, 0x3810000000000000
  %1744 = call float @llvm.fabs.f32(float %1717)
  %1745 = fcmp ule float %1744, 0x3810000000000000
  %1746 = select i1 %1743, i1 %1745, i1 false
  %1747 = call float @llvm.fabs.f32(float %1719)
  %1748 = fcmp ule float %1747, 0x3810000000000000
  %1749 = select i1 %1746, i1 %1748, i1 false
  br i1 %1749, label %1761, label %1750

1750:                                             ; preds = %1739
  %1751 = fmul float %1717, %1717
  %1752 = call float @llvm.fmuladd.f32(float %1715, float %1715, float %1751)
  %1753 = call float @llvm.fmuladd.f32(float %1719, float %1719, float %1752)
  %1754 = call float @sqrtf(float noundef %1753) #13
  %1755 = fdiv float 1.000000e+00, %1754
  %1756 = fmul float %1715, %1755
  %1757 = insertelement <2 x float> poison, float %1756, i64 0
  %1758 = fmul float %1717, %1755
  %1759 = insertelement <2 x float> %1757, float %1758, i64 1
  %1760 = fmul float %1719, %1755
  br label %1761

1761:                                             ; preds = %1750, %1739
  %1762 = phi <2 x float> [ %1759, %1750 ], [ %1718, %1739 ]
  %1763 = phi float [ %1760, %1750 ], [ %1719, %1739 ]
  %1764 = getelementptr inbounds %struct.STriInfo, ptr %105, i64 %1658, i32 6
  %1765 = load i32, ptr %1764, align 8, !tbaa !49
  %1766 = load i32, ptr %1633, align 8, !tbaa !104
  %1767 = icmp sgt i32 %1766, 0
  br i1 %1767, label %1768, label %1891

1768:                                             ; preds = %1761
  %1769 = getelementptr inbounds %struct.STriInfo, ptr %105, i64 %1658, i32 7
  %1770 = extractelement <2 x float> %1762, i64 0
  %1771 = extractelement <2 x float> %1740, i64 0
  br label %1772

1772:                                             ; preds = %1885, %1768
  %1773 = phi i64 [ 0, %1768 ], [ %1887, %1885 ]
  %1774 = phi i32 [ 0, %1768 ], [ %1886, %1885 ]
  %1775 = load ptr, ptr %1637, align 8, !tbaa !105
  %1776 = getelementptr inbounds i32, ptr %1775, i64 %1773
  %1777 = load i32, ptr %1776, align 4, !tbaa !56
  %1778 = sext i32 %1777 to i64
  %1779 = getelementptr inbounds %struct.STriInfo, ptr %105, i64 %1778, i32 6
  %1780 = load i32, ptr %1779, align 8, !tbaa !49
  %1781 = getelementptr inbounds %struct.STriInfo, ptr %105, i64 %1778, i32 2
  %1782 = load <2 x float>, ptr %1781, align 8
  %1783 = getelementptr inbounds i8, ptr %1781, i64 8
  %1784 = load float, ptr %1783, align 8
  %1785 = extractelement <2 x float> %1782, i64 0
  %1786 = extractelement <2 x float> %1782, i64 1
  %1787 = fmul float %1684, %1786
  %1788 = call float @llvm.fmuladd.f32(float %1683, float %1785, float %1787)
  %1789 = call float @llvm.fmuladd.f32(float %1685, float %1784, float %1788)
  %1790 = fmul float %1683, %1789
  %1791 = fmul float %1684, %1789
  %1792 = fmul float %1685, %1789
  %1793 = fsub float %1785, %1790
  %1794 = insertelement <2 x float> poison, float %1793, i64 0
  %1795 = fsub float %1786, %1791
  %1796 = insertelement <2 x float> %1794, float %1795, i64 1
  %1797 = fsub float %1784, %1792
  %1798 = getelementptr inbounds %struct.STriInfo, ptr %105, i64 %1778, i32 3
  %1799 = load <2 x float>, ptr %1798, align 4
  %1800 = getelementptr inbounds i8, ptr %1798, i64 8
  %1801 = load float, ptr %1800, align 4
  %1802 = extractelement <2 x float> %1799, i64 0
  %1803 = extractelement <2 x float> %1799, i64 1
  %1804 = fmul float %1684, %1803
  %1805 = call float @llvm.fmuladd.f32(float %1683, float %1802, float %1804)
  %1806 = call float @llvm.fmuladd.f32(float %1685, float %1801, float %1805)
  %1807 = fmul float %1683, %1806
  %1808 = fmul float %1684, %1806
  %1809 = fmul float %1685, %1806
  %1810 = fsub float %1802, %1807
  %1811 = insertelement <2 x float> poison, float %1810, i64 0
  %1812 = fsub float %1803, %1808
  %1813 = insertelement <2 x float> %1811, float %1812, i64 1
  %1814 = fsub float %1801, %1809
  %1815 = call float @llvm.fabs.f32(float %1793)
  %1816 = fcmp ule float %1815, 0x3810000000000000
  %1817 = call float @llvm.fabs.f32(float %1795)
  %1818 = fcmp ule float %1817, 0x3810000000000000
  %1819 = select i1 %1816, i1 %1818, i1 false
  %1820 = call float @llvm.fabs.f32(float %1797)
  %1821 = fcmp ule float %1820, 0x3810000000000000
  %1822 = select i1 %1819, i1 %1821, i1 false
  br i1 %1822, label %1834, label %1823

1823:                                             ; preds = %1772
  %1824 = fmul float %1795, %1795
  %1825 = call float @llvm.fmuladd.f32(float %1793, float %1793, float %1824)
  %1826 = call float @llvm.fmuladd.f32(float %1797, float %1797, float %1825)
  %1827 = call float @sqrtf(float noundef %1826) #13
  %1828 = fdiv float 1.000000e+00, %1827
  %1829 = fmul float %1793, %1828
  %1830 = insertelement <2 x float> poison, float %1829, i64 0
  %1831 = fmul float %1795, %1828
  %1832 = insertelement <2 x float> %1830, float %1831, i64 1
  %1833 = fmul float %1797, %1828
  br label %1834

1834:                                             ; preds = %1823, %1772
  %1835 = phi <2 x float> [ %1832, %1823 ], [ %1796, %1772 ]
  %1836 = phi float [ %1833, %1823 ], [ %1797, %1772 ]
  %1837 = call float @llvm.fabs.f32(float %1810)
  %1838 = fcmp ule float %1837, 0x3810000000000000
  %1839 = call float @llvm.fabs.f32(float %1812)
  %1840 = fcmp ule float %1839, 0x3810000000000000
  %1841 = select i1 %1838, i1 %1840, i1 false
  %1842 = call float @llvm.fabs.f32(float %1814)
  %1843 = fcmp ule float %1842, 0x3810000000000000
  %1844 = select i1 %1841, i1 %1843, i1 false
  br i1 %1844, label %1856, label %1845

1845:                                             ; preds = %1834
  %1846 = fmul float %1812, %1812
  %1847 = call float @llvm.fmuladd.f32(float %1810, float %1810, float %1846)
  %1848 = call float @llvm.fmuladd.f32(float %1814, float %1814, float %1847)
  %1849 = call float @sqrtf(float noundef %1848) #13
  %1850 = fdiv float 1.000000e+00, %1849
  %1851 = fmul float %1810, %1850
  %1852 = insertelement <2 x float> poison, float %1851, i64 0
  %1853 = fmul float %1812, %1850
  %1854 = insertelement <2 x float> %1852, float %1853, i64 1
  %1855 = fmul float %1814, %1850
  br label %1856

1856:                                             ; preds = %1845, %1834
  %1857 = phi <2 x float> [ %1854, %1845 ], [ %1813, %1834 ]
  %1858 = phi float [ %1855, %1845 ], [ %1814, %1834 ]
  %1859 = load i32, ptr %1769, align 4, !tbaa !59
  %1860 = getelementptr inbounds %struct.STriInfo, ptr %105, i64 %1778, i32 7
  %1861 = load i32, ptr %1860, align 4, !tbaa !59
  %1862 = or i32 %1861, %1859
  %1863 = and i32 %1862, 4
  %1864 = icmp ne i32 %1863, 0
  %1865 = icmp eq i32 %1765, %1780
  %1866 = select i1 %1864, i1 true, i1 %1865
  br i1 %1866, label %1881, label %1867

1867:                                             ; preds = %1856
  %1868 = extractelement <2 x float> %1857, i64 0
  %1869 = fmul <2 x float> %1762, %1857
  %1870 = extractelement <2 x float> %1869, i64 1
  %1871 = call float @llvm.fmuladd.f32(float %1770, float %1868, float %1870)
  %1872 = call float @llvm.fmuladd.f32(float %1763, float %1858, float %1871)
  %1873 = extractelement <2 x float> %1835, i64 0
  %1874 = fmul <2 x float> %1740, %1835
  %1875 = extractelement <2 x float> %1874, i64 1
  %1876 = call float @llvm.fmuladd.f32(float %1771, float %1873, float %1875)
  %1877 = call float @llvm.fmuladd.f32(float %1741, float %1836, float %1876)
  %1878 = fcmp ogt float %1877, %60
  %1879 = fcmp ogt float %1872, %60
  %1880 = select i1 %1878, i1 %1879, i1 false
  br i1 %1880, label %1881, label %1885

1881:                                             ; preds = %1867, %1856
  %1882 = add nsw i32 %1774, 1
  %1883 = sext i32 %1774 to i64
  %1884 = getelementptr inbounds i32, ptr %1603, i64 %1883
  store i32 %1777, ptr %1884, align 4, !tbaa !56
  br label %1885

1885:                                             ; preds = %1881, %1867
  %1886 = phi i32 [ %1882, %1881 ], [ %1774, %1867 ]
  %1887 = add nuw nsw i64 %1773, 1
  %1888 = load i32, ptr %1633, align 8, !tbaa !104
  %1889 = sext i32 %1888 to i64
  %1890 = icmp slt i64 %1887, %1889
  br i1 %1890, label %1772, label %1891, !llvm.loop !121

1891:                                             ; preds = %1885, %1761
  %1892 = phi i32 [ 0, %1761 ], [ %1886, %1885 ]
  %1893 = icmp sgt i32 %1892, 1
  br i1 %1893, label %1894, label %1896

1894:                                             ; preds = %1891
  %1895 = add nsw i32 %1892, -1
  call fastcc void @QuickSort(ptr noundef %1603, i32 noundef 0, i32 noundef %1895, i32 noundef 39871946)
  br label %1896

1896:                                             ; preds = %1894, %1891
  %1897 = icmp sgt i32 %1654, 0
  br i1 %1897, label %1898, label %1931

1898:                                             ; preds = %1896
  %1899 = icmp slt i32 %1892, 1
  br label %1900

1900:                                             ; preds = %1924, %1898
  %1901 = phi i32 [ 0, %1898 ], [ %1927, %1924 ]
  %1902 = zext nneg i32 %1901 to i64
  %1903 = getelementptr inbounds %struct.SSubGroup, ptr %1601, i64 %1902
  %1904 = load i32, ptr %1903, align 8, !tbaa !122
  %1905 = icmp ne i32 %1892, %1904
  %1906 = or i1 %1899, %1905
  %1907 = xor i1 %1905, true
  %1908 = zext i1 %1907 to i32
  br i1 %1906, label %1924, label %1909

1909:                                             ; preds = %1900
  %1910 = getelementptr inbounds %struct.SSubGroup, ptr %1601, i64 %1902, i32 1
  %1911 = load ptr, ptr %1910, align 8, !tbaa !124
  br label %1912

1912:                                             ; preds = %1912, %1909
  %1913 = phi i32 [ 0, %1909 ], [ %1921, %1912 ]
  %1914 = zext nneg i32 %1913 to i64
  %1915 = getelementptr inbounds i32, ptr %1603, i64 %1914
  %1916 = load i32, ptr %1915, align 4, !tbaa !56
  %1917 = getelementptr inbounds i32, ptr %1911, i64 %1914
  %1918 = load i32, ptr %1917, align 4, !tbaa !56
  %1919 = icmp eq i32 %1916, %1918
  %1920 = zext i1 %1919 to i32
  %1921 = add nuw nsw i32 %1913, %1920
  %1922 = icmp slt i32 %1921, %1892
  %1923 = and i1 %1919, %1922
  br i1 %1923, label %1912, label %1924, !llvm.loop !125

1924:                                             ; preds = %1912, %1900
  %1925 = phi i32 [ %1908, %1900 ], [ %1920, %1912 ]
  %1926 = xor i32 %1925, 1
  %1927 = add nuw nsw i32 %1926, %1901
  %1928 = icmp slt i32 %1927, %1654
  %1929 = icmp eq i32 %1925, 0
  %1930 = and i1 %1929, %1928
  br i1 %1930, label %1900, label %1931, !llvm.loop !126

1931:                                             ; preds = %1924, %1896
  %1932 = phi i32 [ 0, %1896 ], [ %1927, %1924 ]
  %1933 = phi i1 [ true, %1896 ], [ %1929, %1924 ]
  br i1 %1933, label %1934, label %2314

1934:                                             ; preds = %1931
  %1935 = sext i32 %1892 to i64
  %1936 = shl nsw i64 %1935, 2
  %1937 = call noalias ptr @malloc(i64 noundef %1936) #14
  %1938 = icmp eq ptr %1937, null
  br i1 %1938, label %1939, label %1949

1939:                                             ; preds = %1934
  br i1 %1897, label %1940, label %1948

1940:                                             ; preds = %1939
  %1941 = zext nneg i32 %1654 to i64
  br label %1942

1942:                                             ; preds = %1942, %1940
  %1943 = phi i64 [ 0, %1940 ], [ %1946, %1942 ]
  %1944 = getelementptr inbounds %struct.SSubGroup, ptr %1601, i64 %1943, i32 1
  %1945 = load ptr, ptr %1944, align 8, !tbaa !124
  call void @free(ptr noundef %1945) #13
  %1946 = add nuw nsw i64 %1943, 1
  %1947 = icmp eq i64 %1946, %1941
  br i1 %1947, label %1948, label %1942, !llvm.loop !127

1948:                                             ; preds = %1942, %1939
  call void @free(ptr noundef %1601) #13
  call void @free(ptr noundef %1603) #13
  call void @free(ptr noundef %1599) #13
  br label %2312

1949:                                             ; preds = %1934
  %1950 = sext i32 %1654 to i64
  %1951 = getelementptr inbounds %struct.SSubGroup, ptr %1601, i64 %1950
  store i32 %1892, ptr %1951, align 8, !tbaa !122
  %1952 = getelementptr inbounds %struct.SSubGroup, ptr %1601, i64 %1950, i32 1
  store ptr %1937, ptr %1952, align 8, !tbaa !124
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %1937, ptr align 4 %1603, i64 %1936, i1 false)
  %1953 = getelementptr inbounds %struct.STSpace, ptr %1599, i64 %1950
  %1954 = load i32, ptr %1638, align 8, !tbaa !101
  %1955 = icmp sgt i32 %1892, 0
  br i1 %1955, label %1956, label %2246

1956:                                             ; preds = %1949
  %1957 = zext nneg i32 %1892 to i64
  br label %1958

1958:                                             ; preds = %2236, %1956
  %1959 = phi i64 [ 0, %1956 ], [ %2244, %2236 ]
  %1960 = phi float [ 0.000000e+00, %1956 ], [ %2243, %2236 ]
  %1961 = phi <2 x float> [ zeroinitializer, %1956 ], [ %2242, %2236 ]
  %1962 = phi float [ 0.000000e+00, %1956 ], [ %2241, %2236 ]
  %1963 = phi float [ 0.000000e+00, %1956 ], [ %2240, %2236 ]
  %1964 = phi <2 x float> [ zeroinitializer, %1956 ], [ %2239, %2236 ]
  %1965 = phi float [ 0.000000e+00, %1956 ], [ %2238, %2236 ]
  %1966 = phi float [ 0.000000e+00, %1956 ], [ %2237, %2236 ]
  %1967 = getelementptr inbounds i32, ptr %1603, i64 %1959
  %1968 = load i32, ptr %1967, align 4, !tbaa !56, !noalias !128
  %1969 = sext i32 %1968 to i64
  %1970 = getelementptr inbounds %struct.STriInfo, ptr %105, i64 %1969, i32 7
  %1971 = load i32, ptr %1970, align 4, !tbaa !59, !noalias !128
  %1972 = and i32 %1971, 4
  %1973 = icmp eq i32 %1972, 0
  br i1 %1973, label %1974, label %2236

1974:                                             ; preds = %1958
  %1975 = mul nsw i32 %1968, 3
  %1976 = sext i32 %1975 to i64
  %1977 = getelementptr inbounds i32, ptr %103, i64 %1976
  %1978 = load i32, ptr %1977, align 4, !tbaa !56, !noalias !128
  %1979 = icmp eq i32 %1978, %1954
  br i1 %1979, label %1989, label %1980

1980:                                             ; preds = %1974
  %1981 = getelementptr i32, ptr %1977, i64 1
  %1982 = load i32, ptr %1981, align 4, !tbaa !56, !noalias !128
  %1983 = icmp eq i32 %1982, %1954
  br i1 %1983, label %1989, label %1984

1984:                                             ; preds = %1980
  %1985 = getelementptr i32, ptr %1977, i64 2
  %1986 = load i32, ptr %1985, align 4, !tbaa !56, !noalias !128
  %1987 = icmp eq i32 %1986, %1954
  br i1 %1987, label %1988, label %1989

1988:                                             ; preds = %1984
  br label %1989

1989:                                             ; preds = %1988, %1984, %1980, %1974
  %1990 = phi i1 [ false, %1988 ], [ true, %1984 ], [ true, %1974 ], [ true, %1980 ]
  %1991 = phi i1 [ true, %1988 ], [ false, %1984 ], [ false, %1974 ], [ true, %1980 ]
  %1992 = phi i32 [ 2, %1988 ], [ -1, %1984 ], [ 0, %1974 ], [ 1, %1980 ]
  %1993 = add nsw i32 %1992, %1975
  %1994 = sext i32 %1993 to i64
  %1995 = getelementptr inbounds i32, ptr %103, i64 %1994
  %1996 = load i32, ptr %1995, align 4, !tbaa !56, !noalias !128
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #13, !noalias !128
  %1997 = and i32 %1996, 3
  %1998 = ashr i32 %1996, 2
  %1999 = load ptr, ptr %0, align 8, !tbaa !35, !noalias !128
  %2000 = getelementptr inbounds %struct.SMikkTSpaceInterface, ptr %1999, i64 0, i32 3
  %2001 = load ptr, ptr %2000, align 8, !tbaa !44, !noalias !128
  call void %2001(ptr noundef nonnull %0, ptr noundef nonnull %8, i32 noundef %1998, i32 noundef %1997) #13, !noalias !128
  %2002 = load float, ptr %8, align 4, !tbaa !57, !noalias !128
  %2003 = load float, ptr %1613, align 4, !tbaa !57, !noalias !128
  %2004 = load float, ptr %1614, align 4, !tbaa !57, !noalias !128
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #13, !noalias !128
  %2005 = getelementptr inbounds %struct.STriInfo, ptr %105, i64 %1969, i32 2
  %2006 = load <2 x float>, ptr %2005, align 8, !noalias !128
  %2007 = getelementptr inbounds i8, ptr %2005, i64 8
  %2008 = load float, ptr %2007, align 8, !noalias !128
  %2009 = extractelement <2 x float> %2006, i64 0
  %2010 = extractelement <2 x float> %2006, i64 1
  %2011 = fmul float %2003, %2010
  %2012 = call float @llvm.fmuladd.f32(float %2002, float %2009, float %2011)
  %2013 = call float @llvm.fmuladd.f32(float %2004, float %2008, float %2012)
  %2014 = fmul float %2002, %2013
  %2015 = fmul float %2003, %2013
  %2016 = fmul float %2004, %2013
  %2017 = fsub float %2009, %2014
  %2018 = insertelement <2 x float> poison, float %2017, i64 0
  %2019 = fsub float %2010, %2015
  %2020 = insertelement <2 x float> %2018, float %2019, i64 1
  %2021 = fsub float %2008, %2016
  %2022 = getelementptr inbounds %struct.STriInfo, ptr %105, i64 %1969, i32 3
  %2023 = load <2 x float>, ptr %2022, align 4, !noalias !128
  %2024 = getelementptr inbounds i8, ptr %2022, i64 8
  %2025 = load float, ptr %2024, align 4, !noalias !128
  %2026 = extractelement <2 x float> %2023, i64 0
  %2027 = extractelement <2 x float> %2023, i64 1
  %2028 = fmul float %2003, %2027
  %2029 = call float @llvm.fmuladd.f32(float %2002, float %2026, float %2028)
  %2030 = call float @llvm.fmuladd.f32(float %2004, float %2025, float %2029)
  %2031 = fmul float %2002, %2030
  %2032 = fmul float %2003, %2030
  %2033 = fmul float %2004, %2030
  %2034 = fsub float %2026, %2031
  %2035 = insertelement <2 x float> poison, float %2034, i64 0
  %2036 = fsub float %2027, %2032
  %2037 = insertelement <2 x float> %2035, float %2036, i64 1
  %2038 = fsub float %2025, %2033
  %2039 = call float @llvm.fabs.f32(float %2017)
  %2040 = fcmp ule float %2039, 0x3810000000000000
  %2041 = call float @llvm.fabs.f32(float %2019)
  %2042 = fcmp ule float %2041, 0x3810000000000000
  %2043 = select i1 %2040, i1 %2042, i1 false
  %2044 = call float @llvm.fabs.f32(float %2021)
  %2045 = fcmp ule float %2044, 0x3810000000000000
  %2046 = select i1 %2043, i1 %2045, i1 false
  br i1 %2046, label %2058, label %2047

2047:                                             ; preds = %1989
  %2048 = fmul float %2019, %2019
  %2049 = call float @llvm.fmuladd.f32(float %2017, float %2017, float %2048)
  %2050 = call float @llvm.fmuladd.f32(float %2021, float %2021, float %2049)
  %2051 = call float @sqrtf(float noundef %2050) #13, !noalias !128
  %2052 = fdiv float 1.000000e+00, %2051
  %2053 = fmul float %2017, %2052
  %2054 = insertelement <2 x float> poison, float %2053, i64 0
  %2055 = fmul float %2019, %2052
  %2056 = insertelement <2 x float> %2054, float %2055, i64 1
  %2057 = fmul float %2021, %2052
  br label %2058

2058:                                             ; preds = %2047, %1989
  %2059 = phi <2 x float> [ %2056, %2047 ], [ %2020, %1989 ]
  %2060 = phi float [ %2057, %2047 ], [ %2021, %1989 ]
  %2061 = call float @llvm.fabs.f32(float %2034)
  %2062 = fcmp ule float %2061, 0x3810000000000000
  %2063 = call float @llvm.fabs.f32(float %2036)
  %2064 = fcmp ule float %2063, 0x3810000000000000
  %2065 = select i1 %2062, i1 %2064, i1 false
  %2066 = call float @llvm.fabs.f32(float %2038)
  %2067 = fcmp ule float %2066, 0x3810000000000000
  %2068 = select i1 %2065, i1 %2067, i1 false
  br i1 %2068, label %2080, label %2069

2069:                                             ; preds = %2058
  %2070 = fmul float %2036, %2036
  %2071 = call float @llvm.fmuladd.f32(float %2034, float %2034, float %2070)
  %2072 = call float @llvm.fmuladd.f32(float %2038, float %2038, float %2071)
  %2073 = call float @sqrtf(float noundef %2072) #13, !noalias !128
  %2074 = fdiv float 1.000000e+00, %2073
  %2075 = fmul float %2034, %2074
  %2076 = insertelement <2 x float> poison, float %2075, i64 0
  %2077 = fmul float %2036, %2074
  %2078 = insertelement <2 x float> %2076, float %2077, i64 1
  %2079 = fmul float %2038, %2074
  br label %2080

2080:                                             ; preds = %2069, %2058
  %2081 = phi <2 x float> [ %2078, %2069 ], [ %2037, %2058 ]
  %2082 = phi float [ %2079, %2069 ], [ %2038, %2058 ]
  %2083 = add nsw i32 %1992, 1
  %2084 = select i1 %1990, i32 %2083, i32 0
  %2085 = add nsw i32 %2084, %1975
  %2086 = sext i32 %2085 to i64
  %2087 = getelementptr inbounds i32, ptr %103, i64 %2086
  %2088 = load i32, ptr %2087, align 4, !tbaa !56, !noalias !128
  %2089 = load i32, ptr %1995, align 4, !tbaa !56, !noalias !128
  %2090 = add nsw i32 %1992, -1
  %2091 = select i1 %1991, i32 %2090, i32 2
  %2092 = add nsw i32 %2091, %1975
  %2093 = sext i32 %2092 to i64
  %2094 = getelementptr inbounds i32, ptr %103, i64 %2093
  %2095 = load i32, ptr %2094, align 4, !tbaa !56, !noalias !128
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #13, !noalias !128
  %2096 = and i32 %2095, 3
  %2097 = ashr i32 %2095, 2
  %2098 = load ptr, ptr %0, align 8, !tbaa !35, !noalias !128
  %2099 = getelementptr inbounds %struct.SMikkTSpaceInterface, ptr %2098, i64 0, i32 2
  %2100 = load ptr, ptr %2099, align 8, !tbaa !43, !noalias !128
  call void %2100(ptr noundef nonnull %0, ptr noundef nonnull %7, i32 noundef %2097, i32 noundef %2096) #13, !noalias !128
  %2101 = load float, ptr %7, align 4, !tbaa !57, !noalias !128
  %2102 = load float, ptr %1615, align 4, !tbaa !57, !noalias !128
  %2103 = load float, ptr %1616, align 4, !tbaa !57, !noalias !128
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #13, !noalias !128
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #13, !noalias !128
  %2104 = and i32 %2089, 3
  %2105 = ashr i32 %2089, 2
  %2106 = load ptr, ptr %0, align 8, !tbaa !35, !noalias !128
  %2107 = getelementptr inbounds %struct.SMikkTSpaceInterface, ptr %2106, i64 0, i32 2
  %2108 = load ptr, ptr %2107, align 8, !tbaa !43, !noalias !128
  call void %2108(ptr noundef nonnull %0, ptr noundef nonnull %6, i32 noundef %2105, i32 noundef %2104) #13, !noalias !128
  %2109 = load float, ptr %6, align 4, !tbaa !57, !noalias !128
  %2110 = load float, ptr %1617, align 4, !tbaa !57, !noalias !128
  %2111 = load float, ptr %1618, align 4, !tbaa !57, !noalias !128
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #13, !noalias !128
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #13, !noalias !128
  %2112 = and i32 %2088, 3
  %2113 = ashr i32 %2088, 2
  %2114 = load ptr, ptr %0, align 8, !tbaa !35, !noalias !128
  %2115 = getelementptr inbounds %struct.SMikkTSpaceInterface, ptr %2114, i64 0, i32 2
  %2116 = load ptr, ptr %2115, align 8, !tbaa !43, !noalias !128
  call void %2116(ptr noundef nonnull %0, ptr noundef nonnull %5, i32 noundef %2113, i32 noundef %2112) #13, !noalias !128
  %2117 = load float, ptr %5, align 4, !tbaa !57, !noalias !128
  %2118 = load float, ptr %1619, align 4, !tbaa !57, !noalias !128
  %2119 = load float, ptr %1620, align 4, !tbaa !57, !noalias !128
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #13, !noalias !128
  %2120 = fsub float %2101, %2109
  %2121 = fsub float %2102, %2110
  %2122 = fsub float %2103, %2111
  %2123 = fsub float %2117, %2109
  %2124 = fsub float %2118, %2110
  %2125 = fsub float %2119, %2111
  %2126 = fmul float %2003, %2121
  %2127 = call float @llvm.fmuladd.f32(float %2002, float %2120, float %2126)
  %2128 = call float @llvm.fmuladd.f32(float %2004, float %2122, float %2127)
  %2129 = fmul float %2002, %2128
  %2130 = fmul float %2003, %2128
  %2131 = fmul float %2004, %2128
  %2132 = fsub float %2120, %2129
  %2133 = insertelement <2 x float> poison, float %2132, i64 0
  %2134 = fsub float %2121, %2130
  %2135 = insertelement <2 x float> %2133, float %2134, i64 1
  %2136 = fsub float %2122, %2131
  %2137 = call float @llvm.fabs.f32(float %2132)
  %2138 = fcmp ule float %2137, 0x3810000000000000
  %2139 = call float @llvm.fabs.f32(float %2134)
  %2140 = fcmp ule float %2139, 0x3810000000000000
  %2141 = select i1 %2138, i1 %2140, i1 false
  %2142 = call float @llvm.fabs.f32(float %2136)
  %2143 = fcmp ule float %2142, 0x3810000000000000
  %2144 = select i1 %2141, i1 %2143, i1 false
  br i1 %2144, label %2156, label %2145

2145:                                             ; preds = %2080
  %2146 = fmul float %2134, %2134
  %2147 = call float @llvm.fmuladd.f32(float %2132, float %2132, float %2146)
  %2148 = call float @llvm.fmuladd.f32(float %2136, float %2136, float %2147)
  %2149 = call float @sqrtf(float noundef %2148) #13, !noalias !128
  %2150 = fdiv float 1.000000e+00, %2149
  %2151 = fmul float %2132, %2150
  %2152 = insertelement <2 x float> poison, float %2151, i64 0
  %2153 = fmul float %2134, %2150
  %2154 = insertelement <2 x float> %2152, float %2153, i64 1
  %2155 = fmul float %2136, %2150
  br label %2156

2156:                                             ; preds = %2145, %2080
  %2157 = phi <2 x float> [ %2154, %2145 ], [ %2135, %2080 ]
  %2158 = phi float [ %2155, %2145 ], [ %2136, %2080 ]
  %2159 = fmul float %2003, %2124
  %2160 = call float @llvm.fmuladd.f32(float %2002, float %2123, float %2159)
  %2161 = call float @llvm.fmuladd.f32(float %2004, float %2125, float %2160)
  %2162 = fmul float %2002, %2161
  %2163 = fmul float %2003, %2161
  %2164 = fmul float %2004, %2161
  %2165 = fsub float %2123, %2162
  %2166 = insertelement <2 x float> poison, float %2165, i64 0
  %2167 = fsub float %2124, %2163
  %2168 = insertelement <2 x float> %2166, float %2167, i64 1
  %2169 = fsub float %2125, %2164
  %2170 = call float @llvm.fabs.f32(float %2165)
  %2171 = fcmp ule float %2170, 0x3810000000000000
  %2172 = call float @llvm.fabs.f32(float %2167)
  %2173 = fcmp ule float %2172, 0x3810000000000000
  %2174 = select i1 %2171, i1 %2173, i1 false
  %2175 = call float @llvm.fabs.f32(float %2169)
  %2176 = fcmp ule float %2175, 0x3810000000000000
  %2177 = select i1 %2174, i1 %2176, i1 false
  br i1 %2177, label %2189, label %2178

2178:                                             ; preds = %2156
  %2179 = fmul float %2167, %2167
  %2180 = call float @llvm.fmuladd.f32(float %2165, float %2165, float %2179)
  %2181 = call float @llvm.fmuladd.f32(float %2169, float %2169, float %2180)
  %2182 = call float @sqrtf(float noundef %2181) #13, !noalias !128
  %2183 = fdiv float 1.000000e+00, %2182
  %2184 = fmul float %2165, %2183
  %2185 = insertelement <2 x float> poison, float %2184, i64 0
  %2186 = fmul float %2167, %2183
  %2187 = insertelement <2 x float> %2185, float %2186, i64 1
  %2188 = fmul float %2169, %2183
  br label %2189

2189:                                             ; preds = %2178, %2156
  %2190 = phi <2 x float> [ %2187, %2178 ], [ %2168, %2156 ]
  %2191 = phi float [ %2188, %2178 ], [ %2169, %2156 ]
  %2192 = extractelement <2 x float> %2157, i64 0
  %2193 = extractelement <2 x float> %2190, i64 0
  %2194 = fmul <2 x float> %2157, %2190
  %2195 = extractelement <2 x float> %2194, i64 1
  %2196 = call float @llvm.fmuladd.f32(float %2192, float %2193, float %2195)
  %2197 = call float @llvm.fmuladd.f32(float %2158, float %2191, float %2196)
  %2198 = fcmp ogt float %2197, 1.000000e+00
  %2199 = fcmp olt float %2197, -1.000000e+00
  %2200 = select i1 %2199, float -1.000000e+00, float %2197
  %2201 = select i1 %2198, float 1.000000e+00, float %2200
  %2202 = fpext float %2201 to double
  %2203 = call double @acos(double noundef %2202) #13, !noalias !128
  %2204 = fptrunc double %2203 to float
  %2205 = getelementptr inbounds %struct.STriInfo, ptr %105, i64 %1969, i32 4
  %2206 = load float, ptr %2205, align 8, !tbaa !87, !noalias !128
  %2207 = getelementptr inbounds %struct.STriInfo, ptr %105, i64 %1969, i32 5
  %2208 = load float, ptr %2207, align 4, !tbaa !88, !noalias !128
  %2209 = extractelement <2 x float> %2059, i64 0
  %2210 = fmul float %2209, %2204
  %2211 = extractelement <2 x float> %2059, i64 1
  %2212 = fmul float %2211, %2204
  %2213 = fmul float %2060, %2204
  %2214 = extractelement <2 x float> %1961, i64 0
  %2215 = fadd float %2214, %2210
  %2216 = insertelement <2 x float> poison, float %2215, i64 0
  %2217 = extractelement <2 x float> %1961, i64 1
  %2218 = fadd float %2217, %2212
  %2219 = insertelement <2 x float> %2216, float %2218, i64 1
  %2220 = fadd float %1962, %2213
  %2221 = extractelement <2 x float> %2081, i64 0
  %2222 = fmul float %2221, %2204
  %2223 = extractelement <2 x float> %2081, i64 1
  %2224 = fmul float %2223, %2204
  %2225 = fmul float %2082, %2204
  %2226 = extractelement <2 x float> %1964, i64 0
  %2227 = fadd float %2226, %2222
  %2228 = insertelement <2 x float> poison, float %2227, i64 0
  %2229 = extractelement <2 x float> %1964, i64 1
  %2230 = fadd float %2229, %2224
  %2231 = insertelement <2 x float> %2228, float %2230, i64 1
  %2232 = fadd float %1965, %2225
  %2233 = call float @llvm.fmuladd.f32(float %2204, float %2206, float %1963)
  %2234 = call float @llvm.fmuladd.f32(float %2204, float %2208, float %1966)
  %2235 = fadd float %1960, %2204
  br label %2236

2236:                                             ; preds = %2189, %1958
  %2237 = phi float [ %2234, %2189 ], [ %1966, %1958 ]
  %2238 = phi float [ %2232, %2189 ], [ %1965, %1958 ]
  %2239 = phi <2 x float> [ %2231, %2189 ], [ %1964, %1958 ]
  %2240 = phi float [ %2233, %2189 ], [ %1963, %1958 ]
  %2241 = phi float [ %2220, %2189 ], [ %1962, %1958 ]
  %2242 = phi <2 x float> [ %2219, %2189 ], [ %1961, %1958 ]
  %2243 = phi float [ %2235, %2189 ], [ %1960, %1958 ]
  %2244 = add nuw nsw i64 %1959, 1
  %2245 = icmp eq i64 %2244, %1957
  br i1 %2245, label %2246, label %1958, !llvm.loop !131

2246:                                             ; preds = %2236, %1949
  %2247 = phi float [ 0.000000e+00, %1949 ], [ %2237, %2236 ]
  %2248 = phi float [ 0.000000e+00, %1949 ], [ %2238, %2236 ]
  %2249 = phi <2 x float> [ zeroinitializer, %1949 ], [ %2239, %2236 ]
  %2250 = phi float [ 0.000000e+00, %1949 ], [ %2240, %2236 ]
  %2251 = phi float [ 0.000000e+00, %1949 ], [ %2241, %2236 ]
  %2252 = phi <2 x float> [ zeroinitializer, %1949 ], [ %2242, %2236 ]
  %2253 = phi float [ 0.000000e+00, %1949 ], [ %2243, %2236 ]
  %2254 = extractelement <2 x float> %2252, i64 0
  %2255 = call float @llvm.fabs.f32(float %2254)
  %2256 = fcmp ule float %2255, 0x3810000000000000
  %2257 = extractelement <2 x float> %2252, i64 1
  %2258 = call float @llvm.fabs.f32(float %2257)
  %2259 = fcmp ule float %2258, 0x3810000000000000
  %2260 = select i1 %2256, i1 %2259, i1 false
  %2261 = call float @llvm.fabs.f32(float %2251)
  %2262 = fcmp ule float %2261, 0x3810000000000000
  %2263 = select i1 %2260, i1 %2262, i1 false
  br i1 %2263, label %2275, label %2264

2264:                                             ; preds = %2246
  %2265 = fmul float %2257, %2257
  %2266 = call float @llvm.fmuladd.f32(float %2254, float %2254, float %2265)
  %2267 = call float @llvm.fmuladd.f32(float %2251, float %2251, float %2266)
  %2268 = call float @sqrtf(float noundef %2267) #13, !noalias !128
  %2269 = fdiv float 1.000000e+00, %2268
  %2270 = fmul float %2254, %2269
  %2271 = insertelement <2 x float> poison, float %2270, i64 0
  %2272 = fmul float %2257, %2269
  %2273 = insertelement <2 x float> %2271, float %2272, i64 1
  %2274 = fmul float %2251, %2269
  br label %2275

2275:                                             ; preds = %2264, %2246
  %2276 = phi float [ %2251, %2246 ], [ %2274, %2264 ]
  %2277 = phi <2 x float> [ %2252, %2246 ], [ %2273, %2264 ]
  %2278 = extractelement <2 x float> %2249, i64 0
  %2279 = call float @llvm.fabs.f32(float %2278)
  %2280 = fcmp ule float %2279, 0x3810000000000000
  %2281 = extractelement <2 x float> %2249, i64 1
  %2282 = call float @llvm.fabs.f32(float %2281)
  %2283 = fcmp ule float %2282, 0x3810000000000000
  %2284 = select i1 %2280, i1 %2283, i1 false
  %2285 = call float @llvm.fabs.f32(float %2248)
  %2286 = fcmp ule float %2285, 0x3810000000000000
  %2287 = select i1 %2284, i1 %2286, i1 false
  br i1 %2287, label %2299, label %2288

2288:                                             ; preds = %2275
  %2289 = fmul float %2281, %2281
  %2290 = call float @llvm.fmuladd.f32(float %2278, float %2278, float %2289)
  %2291 = call float @llvm.fmuladd.f32(float %2248, float %2248, float %2290)
  %2292 = call float @sqrtf(float noundef %2291) #13, !noalias !128
  %2293 = fdiv float 1.000000e+00, %2292
  %2294 = fmul float %2278, %2293
  %2295 = insertelement <2 x float> poison, float %2294, i64 0
  %2296 = fmul float %2281, %2293
  %2297 = insertelement <2 x float> %2295, float %2296, i64 1
  %2298 = fmul float %2248, %2293
  br label %2299

2299:                                             ; preds = %2288, %2275
  %2300 = phi float [ %2248, %2275 ], [ %2298, %2288 ]
  %2301 = phi <2 x float> [ %2249, %2275 ], [ %2297, %2288 ]
  %2302 = fcmp ogt float %2253, 0.000000e+00
  %2303 = select i1 %2302, float %2253, float 1.000000e+00
  %2304 = fdiv float %2247, %2303
  %2305 = fdiv float %2250, %2303
  store <2 x float> %2277, ptr %1953, align 4, !tbaa.struct !132
  %2306 = getelementptr inbounds i8, ptr %1953, i64 8
  store float %2276, ptr %2306, align 4, !tbaa.struct !133
  %2307 = getelementptr inbounds i8, ptr %1953, i64 12
  store float %2305, ptr %2307, align 4, !tbaa.struct !134
  %2308 = getelementptr inbounds i8, ptr %1953, i64 16
  store <2 x float> %2301, ptr %2308, align 4, !tbaa.struct !135
  %2309 = getelementptr inbounds i8, ptr %1953, i64 24
  store float %2300, ptr %2309, align 4, !tbaa.struct !136
  %2310 = getelementptr inbounds i8, ptr %1953, i64 28
  store float %2304, ptr %2310, align 4, !tbaa.struct !137
  %2311 = add nsw i32 %1654, 1
  br label %2312

2312:                                             ; preds = %2299, %1948
  %2313 = phi i32 [ %1654, %1948 ], [ %2311, %2299 ]
  br i1 %1938, label %2469, label %2314

2314:                                             ; preds = %2312, %1931
  %2315 = phi i32 [ %2313, %2312 ], [ %1654, %1931 ]
  %2316 = getelementptr inbounds %struct.STriInfo, ptr %105, i64 %1658, i32 8
  %2317 = load i32, ptr %2316, align 8, !tbaa !54
  %2318 = sext i32 %1672 to i64
  %2319 = getelementptr inbounds %struct.STriInfo, ptr %105, i64 %1658, i32 9, i64 %2318
  %2320 = load i8, ptr %2319, align 1, !tbaa !55
  %2321 = zext i8 %2320 to i32
  %2322 = add nsw i32 %2317, %2321
  %2323 = sext i32 %2322 to i64
  %2324 = getelementptr inbounds %struct.STSpace, ptr %1563, i64 %2323
  %2325 = getelementptr inbounds %struct.STSpace, ptr %1563, i64 %2323, i32 4
  %2326 = load i32, ptr %2325, align 4, !tbaa !138
  %2327 = icmp eq i32 %2326, 1
  %2328 = zext nneg i32 %1932 to i64
  %2329 = getelementptr inbounds %struct.STSpace, ptr %1599, i64 %2328
  br i1 %2327, label %2330, label %2464

2330:                                             ; preds = %2314
  %2331 = getelementptr inbounds %struct.STSpace, ptr %1563, i64 %2323, i32 1
  %2332 = load float, ptr %2331, align 4, !tbaa !112, !noalias !139
  %2333 = getelementptr inbounds %struct.STSpace, ptr %1599, i64 %2328, i32 1
  %2334 = load float, ptr %2333, align 4, !tbaa !112, !noalias !139
  %2335 = fcmp oeq float %2332, %2334
  br i1 %2335, label %2336, label %2377

2336:                                             ; preds = %2330
  %2337 = getelementptr inbounds %struct.STSpace, ptr %1563, i64 %2323, i32 3
  %2338 = load float, ptr %2337, align 4, !tbaa !116, !noalias !139
  %2339 = getelementptr inbounds %struct.STSpace, ptr %1599, i64 %2328, i32 3
  %2340 = load float, ptr %2339, align 4, !tbaa !116, !noalias !139
  %2341 = fcmp oeq float %2338, %2340
  br i1 %2341, label %2342, label %2377

2342:                                             ; preds = %2336
  %2343 = load <2 x float>, ptr %2324, align 4
  %2344 = getelementptr inbounds i8, ptr %2324, i64 8
  %2345 = load float, ptr %2344, align 4
  %2346 = load <2 x float>, ptr %2329, align 4, !noalias !139
  %2347 = getelementptr inbounds i8, ptr %2329, i64 8
  %2348 = load float, ptr %2347, align 4, !noalias !139
  %2349 = extractelement <2 x float> %2343, i64 0
  %2350 = extractelement <2 x float> %2346, i64 0
  %2351 = fcmp une float %2349, %2350
  %2352 = fcmp une <2 x float> %2343, %2346
  %2353 = extractelement <2 x i1> %2352, i64 1
  %2354 = select i1 %2351, i1 true, i1 %2353
  %2355 = fcmp une float %2345, %2348
  %2356 = select i1 %2354, i1 true, i1 %2355
  br i1 %2356, label %2377, label %2357

2357:                                             ; preds = %2342
  %2358 = getelementptr inbounds %struct.STSpace, ptr %1563, i64 %2323, i32 2
  %2359 = getelementptr inbounds %struct.STSpace, ptr %1599, i64 %2328, i32 2
  %2360 = load <2 x float>, ptr %2358, align 4
  %2361 = getelementptr inbounds %struct.STSpace, ptr %1563, i64 %2323, i32 2, i32 2
  %2362 = load float, ptr %2361, align 4, !noalias !139
  %2363 = load <2 x float>, ptr %2359, align 4, !noalias !139
  %2364 = getelementptr inbounds %struct.STSpace, ptr %1599, i64 %2328, i32 2, i32 2
  %2365 = load float, ptr %2364, align 4, !noalias !139
  %2366 = extractelement <2 x float> %2360, i64 0
  %2367 = extractelement <2 x float> %2363, i64 0
  %2368 = fcmp une float %2366, %2367
  %2369 = fcmp une <2 x float> %2360, %2363
  %2370 = extractelement <2 x i1> %2369, i64 1
  %2371 = select i1 %2368, i1 true, i1 %2370
  %2372 = fcmp une float %2362, %2365
  %2373 = select i1 %2371, i1 true, i1 %2372
  br i1 %2373, label %2377, label %2374

2374:                                             ; preds = %2357
  %2375 = getelementptr inbounds i8, ptr %2358, i64 8
  %2376 = load float, ptr %2375, align 4, !tbaa.struct !86
  br label %2453

2377:                                             ; preds = %2357, %2342, %2336, %2330
  %2378 = fadd float %2332, %2334
  %2379 = fmul float %2378, 5.000000e-01
  %2380 = getelementptr inbounds %struct.STSpace, ptr %1563, i64 %2323, i32 3
  %2381 = load float, ptr %2380, align 4, !tbaa !116, !noalias !139
  %2382 = getelementptr inbounds %struct.STSpace, ptr %1599, i64 %2328, i32 3
  %2383 = load float, ptr %2382, align 4, !tbaa !116, !noalias !139
  %2384 = fadd float %2381, %2383
  %2385 = fmul float %2384, 5.000000e-01
  %2386 = load <2 x float>, ptr %2324, align 4, !noalias !139
  %2387 = getelementptr inbounds i8, ptr %2324, i64 8
  %2388 = load float, ptr %2387, align 4, !noalias !139
  %2389 = load <2 x float>, ptr %2329, align 4, !noalias !139
  %2390 = getelementptr inbounds i8, ptr %2329, i64 8
  %2391 = load float, ptr %2390, align 4, !noalias !139
  %2392 = fadd <2 x float> %2386, %2389
  %2393 = extractelement <2 x float> %2392, i64 0
  %2394 = fadd <2 x float> %2386, %2389
  %2395 = extractelement <2 x float> %2394, i64 1
  %2396 = shufflevector <2 x float> %2392, <2 x float> %2394, <2 x i32> <i32 0, i32 3>
  %2397 = fadd float %2388, %2391
  %2398 = getelementptr inbounds %struct.STSpace, ptr %1563, i64 %2323, i32 2
  %2399 = getelementptr inbounds %struct.STSpace, ptr %1599, i64 %2328, i32 2
  %2400 = load <2 x float>, ptr %2398, align 4, !noalias !139
  %2401 = getelementptr inbounds %struct.STSpace, ptr %1563, i64 %2323, i32 2, i32 2
  %2402 = load float, ptr %2401, align 4, !noalias !139
  %2403 = load <2 x float>, ptr %2399, align 4, !noalias !139
  %2404 = getelementptr inbounds %struct.STSpace, ptr %1599, i64 %2328, i32 2, i32 2
  %2405 = load float, ptr %2404, align 4, !noalias !139
  %2406 = fadd <2 x float> %2400, %2403
  %2407 = extractelement <2 x float> %2406, i64 0
  %2408 = fadd <2 x float> %2400, %2403
  %2409 = extractelement <2 x float> %2408, i64 1
  %2410 = shufflevector <2 x float> %2406, <2 x float> %2408, <2 x i32> <i32 0, i32 3>
  %2411 = fadd float %2402, %2405
  %2412 = call float @llvm.fabs.f32(float %2393)
  %2413 = fcmp ule float %2412, 0x3810000000000000
  %2414 = call float @llvm.fabs.f32(float %2395)
  %2415 = fcmp ule float %2414, 0x3810000000000000
  %2416 = select i1 %2413, i1 %2415, i1 false
  %2417 = call float @llvm.fabs.f32(float %2397)
  %2418 = fcmp ule float %2417, 0x3810000000000000
  %2419 = select i1 %2416, i1 %2418, i1 false
  br i1 %2419, label %2431, label %2420

2420:                                             ; preds = %2377
  %2421 = fmul float %2395, %2395
  %2422 = call float @llvm.fmuladd.f32(float %2393, float %2393, float %2421)
  %2423 = call float @llvm.fmuladd.f32(float %2397, float %2397, float %2422)
  %2424 = call float @sqrtf(float noundef %2423) #13, !noalias !139
  %2425 = fdiv float 1.000000e+00, %2424
  %2426 = fmul float %2393, %2425
  %2427 = insertelement <2 x float> poison, float %2426, i64 0
  %2428 = fmul float %2395, %2425
  %2429 = insertelement <2 x float> %2427, float %2428, i64 1
  %2430 = fmul float %2397, %2425
  br label %2431

2431:                                             ; preds = %2420, %2377
  %2432 = phi float [ %2397, %2377 ], [ %2430, %2420 ]
  %2433 = phi <2 x float> [ %2396, %2377 ], [ %2429, %2420 ]
  %2434 = call float @llvm.fabs.f32(float %2407)
  %2435 = fcmp ule float %2434, 0x3810000000000000
  %2436 = call float @llvm.fabs.f32(float %2409)
  %2437 = fcmp ule float %2436, 0x3810000000000000
  %2438 = select i1 %2435, i1 %2437, i1 false
  %2439 = call float @llvm.fabs.f32(float %2411)
  %2440 = fcmp ule float %2439, 0x3810000000000000
  %2441 = select i1 %2438, i1 %2440, i1 false
  br i1 %2441, label %2453, label %2442

2442:                                             ; preds = %2431
  %2443 = fmul float %2409, %2409
  %2444 = call float @llvm.fmuladd.f32(float %2407, float %2407, float %2443)
  %2445 = call float @llvm.fmuladd.f32(float %2411, float %2411, float %2444)
  %2446 = call float @sqrtf(float noundef %2445) #13, !noalias !139
  %2447 = fdiv float 1.000000e+00, %2446
  %2448 = fmul float %2407, %2447
  %2449 = insertelement <2 x float> poison, float %2448, i64 0
  %2450 = fmul float %2409, %2447
  %2451 = insertelement <2 x float> %2449, float %2450, i64 1
  %2452 = fmul float %2411, %2447
  br label %2453

2453:                                             ; preds = %2442, %2431, %2374
  %2454 = phi float [ %2385, %2431 ], [ %2385, %2442 ], [ %2338, %2374 ]
  %2455 = phi float [ %2411, %2431 ], [ %2452, %2442 ], [ %2376, %2374 ]
  %2456 = phi <2 x float> [ %2410, %2431 ], [ %2451, %2442 ], [ %2360, %2374 ]
  %2457 = phi float [ %2379, %2431 ], [ %2379, %2442 ], [ %2332, %2374 ]
  %2458 = phi float [ %2432, %2431 ], [ %2432, %2442 ], [ %2345, %2374 ]
  %2459 = phi <2 x float> [ %2433, %2431 ], [ %2433, %2442 ], [ %2343, %2374 ]
  store <2 x float> %2459, ptr %2324, align 4, !tbaa.struct !132
  %2460 = getelementptr inbounds i8, ptr %2324, i64 8
  store float %2458, ptr %2460, align 4, !tbaa.struct !133
  store float %2457, ptr %2331, align 4, !tbaa.struct !134
  %2461 = getelementptr inbounds i8, ptr %2324, i64 16
  store <2 x float> %2456, ptr %2461, align 4, !tbaa.struct !135
  %2462 = getelementptr inbounds i8, ptr %2324, i64 24
  store float %2455, ptr %2462, align 4, !tbaa.struct !136
  %2463 = getelementptr inbounds i8, ptr %2324, i64 28
  store float %2454, ptr %2463, align 4, !tbaa.struct !137
  br label %2465

2464:                                             ; preds = %2314
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %2324, ptr noundef nonnull align 4 dereferenceable(40) %2329, i64 40, i1 false), !tbaa.struct !132
  br label %2465

2465:                                             ; preds = %2453, %2464
  %2466 = phi i32 [ 1, %2464 ], [ 2, %2453 ]
  store i32 %2466, ptr %2325, align 4, !tbaa !138
  %2467 = load i32, ptr %1639, align 4, !tbaa !103
  %2468 = getelementptr inbounds %struct.STSpace, ptr %1563, i64 %2323, i32 5
  store i32 %2467, ptr %2468, align 4, !tbaa !142
  br label %2469

2469:                                             ; preds = %2465, %2312
  %2470 = phi i32 [ %2313, %2312 ], [ %2315, %2465 ]
  %2471 = phi i1 [ false, %2312 ], [ true, %2465 ]
  br i1 %2471, label %1640, label %2478

2472:                                             ; preds = %2472, %1649
  %2473 = phi i64 [ 0, %1649 ], [ %2476, %2472 ]
  %2474 = getelementptr inbounds %struct.SSubGroup, ptr %1601, i64 %2473, i32 1
  %2475 = load ptr, ptr %2474, align 8, !tbaa !124
  call void @free(ptr noundef %2475) #13
  %2476 = add nuw nsw i64 %2473, 1
  %2477 = icmp eq i64 %2476, %1650
  br i1 %2477, label %2478, label %2472, !llvm.loop !143

2478:                                             ; preds = %2469, %2472, %1645
  %2479 = phi i1 [ %1647, %1645 ], [ %1647, %2472 ], [ %1653, %2469 ]
  br i1 %2479, label %2481, label %1628

2480:                                             ; preds = %1628, %1609
  call void @free(ptr noundef %1601) #13
  call void @free(ptr noundef %1603) #13
  call void @free(ptr noundef %1599) #13
  br label %2482

2481:                                             ; preds = %2478, %1626, %1627
  call void @free(ptr noundef %1483) #13
  br label %2688

2482:                                             ; preds = %1593, %2480
  call void @free(ptr noundef %1483) #13
  call void @free(ptr noundef %1485) #13
  %2483 = icmp sgt i32 %781, 0
  br i1 %2483, label %2484, label %2486

2484:                                             ; preds = %2482
  %2485 = zext nneg i32 %98 to i64
  br label %2493

2486:                                             ; preds = %2543, %2482
  br i1 %1493, label %2487, label %2624

2487:                                             ; preds = %2486
  %2488 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 1
  %2489 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  %2490 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 1
  %2491 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  %2492 = zext nneg i32 %785 to i64
  br label %2546

2493:                                             ; preds = %2543, %2484
  %2494 = phi i64 [ %1186, %2484 ], [ %2544, %2543 ]
  %2495 = getelementptr inbounds %struct.STriInfo, ptr %105, i64 %2494, i32 7
  %2496 = load i32, ptr %2495, align 4, !tbaa !59
  %2497 = and i32 %2496, 2
  %2498 = icmp eq i32 %2497, 0
  br i1 %2498, label %2499, label %2543

2499:                                             ; preds = %2493
  %2500 = mul nsw i64 %2494, 3
  %2501 = getelementptr inbounds %struct.STriInfo, ptr %105, i64 %2494, i32 8
  %2502 = getelementptr i32, ptr %103, i64 %2500
  br label %2503

2503:                                             ; preds = %2540, %2499
  %2504 = phi i64 [ 0, %2499 ], [ %2541, %2540 ]
  %2505 = getelementptr i32, ptr %2502, i64 %2504
  %2506 = load i32, ptr %2505, align 4, !tbaa !56
  br i1 %1493, label %2507, label %2517

2507:                                             ; preds = %2503, %2507
  %2508 = phi i32 [ %2514, %2507 ], [ 0, %2503 ]
  %2509 = zext nneg i32 %2508 to i64
  %2510 = getelementptr inbounds i32, ptr %103, i64 %2509
  %2511 = load i32, ptr %2510, align 4, !tbaa !56
  %2512 = icmp ne i32 %2506, %2511
  %2513 = zext i1 %2512 to i32
  %2514 = add nuw nsw i32 %2508, %2513
  %2515 = icmp slt i32 %2514, %1480
  %2516 = select i1 %2512, i1 %2515, i1 false
  br i1 %2516, label %2507, label %2517, !llvm.loop !144

2517:                                             ; preds = %2507, %2503
  %2518 = phi i32 [ 0, %2503 ], [ %2514, %2507 ]
  %2519 = phi i1 [ true, %2503 ], [ %2512, %2507 ]
  br i1 %2519, label %2540, label %2520

2520:                                             ; preds = %2517
  %2521 = udiv i32 %2518, 3
  %2522 = urem i32 %2518, 3
  %2523 = zext nneg i32 %2521 to i64
  %2524 = zext nneg i32 %2522 to i64
  %2525 = getelementptr inbounds %struct.STriInfo, ptr %105, i64 %2523, i32 9, i64 %2524
  %2526 = load i8, ptr %2525, align 1, !tbaa !55
  %2527 = zext i8 %2526 to i32
  %2528 = getelementptr inbounds %struct.STriInfo, ptr %105, i64 %2523, i32 8
  %2529 = load i32, ptr %2528, align 8, !tbaa !54
  %2530 = getelementptr inbounds %struct.STriInfo, ptr %105, i64 %2494, i32 9, i64 %2504
  %2531 = load i8, ptr %2530, align 1, !tbaa !55
  %2532 = zext i8 %2531 to i32
  %2533 = load i32, ptr %2501, align 8, !tbaa !54
  %2534 = add nsw i32 %2533, %2532
  %2535 = sext i32 %2534 to i64
  %2536 = getelementptr inbounds %struct.STSpace, ptr %1563, i64 %2535
  %2537 = add nsw i32 %2529, %2527
  %2538 = sext i32 %2537 to i64
  %2539 = getelementptr inbounds %struct.STSpace, ptr %1563, i64 %2538
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %2536, ptr noundef nonnull align 4 dereferenceable(40) %2539, i64 40, i1 false), !tbaa.struct !132
  br label %2540

2540:                                             ; preds = %2520, %2517
  %2541 = add nuw nsw i64 %2504, 1
  %2542 = icmp eq i64 %2541, 3
  br i1 %2542, label %2543, label %2503, !llvm.loop !145

2543:                                             ; preds = %2540, %2493
  %2544 = add nsw i64 %2494, 1
  %2545 = icmp eq i64 %2544, %2485
  br i1 %2545, label %2486, label %2493, !llvm.loop !146

2546:                                             ; preds = %2621, %2487
  %2547 = phi i64 [ 0, %2487 ], [ %2622, %2621 ]
  %2548 = getelementptr inbounds %struct.STriInfo, ptr %105, i64 %2547, i32 7
  %2549 = load i32, ptr %2548, align 4, !tbaa !59
  %2550 = and i32 %2549, 2
  %2551 = icmp eq i32 %2550, 0
  br i1 %2551, label %2621, label %2552

2552:                                             ; preds = %2546
  %2553 = getelementptr inbounds %struct.STriInfo, ptr %105, i64 %2547, i32 9
  %2554 = load i8, ptr %2553, align 1, !tbaa !55
  %2555 = zext nneg i8 %2554 to i32
  %2556 = shl nuw i32 1, %2555
  %2557 = getelementptr inbounds i8, ptr %2553, i64 1
  %2558 = load i8, ptr %2557, align 1, !tbaa !55
  %2559 = zext nneg i8 %2558 to i32
  %2560 = shl nuw i32 1, %2559
  %2561 = or i32 %2560, %2556
  %2562 = getelementptr inbounds i8, ptr %2553, i64 2
  %2563 = load i8, ptr %2562, align 1, !tbaa !55
  %2564 = zext nneg i8 %2563 to i32
  %2565 = shl nuw i32 1, %2564
  %2566 = or i32 %2561, %2565
  %2567 = and i32 %2566, 2
  %2568 = icmp eq i32 %2567, 0
  br i1 %2568, label %2576, label %2569

2569:                                             ; preds = %2552
  %2570 = and i32 %2566, 4
  %2571 = icmp eq i32 %2570, 0
  br i1 %2571, label %2576, label %2572

2572:                                             ; preds = %2569
  %2573 = and i32 %2566, 8
  %2574 = icmp eq i32 %2573, 0
  %2575 = select i1 %2574, i32 3, i32 0
  br label %2576

2576:                                             ; preds = %2572, %2569, %2552
  %2577 = phi i32 [ 1, %2552 ], [ 2, %2569 ], [ %2575, %2572 ]
  %2578 = getelementptr inbounds %struct.STriInfo, ptr %105, i64 %2547, i32 6
  %2579 = load i32, ptr %2578, align 8, !tbaa !49
  %2580 = shl i32 %2579, 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #13
  %2581 = ashr exact i32 %2580, 2
  %2582 = load ptr, ptr %0, align 8, !tbaa !35
  %2583 = getelementptr inbounds %struct.SMikkTSpaceInterface, ptr %2582, i64 0, i32 2
  %2584 = load ptr, ptr %2583, align 8, !tbaa !43
  call void %2584(ptr noundef nonnull %0, ptr noundef nonnull %4, i32 noundef %2581, i32 noundef %2577) #13
  %2585 = load float, ptr %4, align 4, !tbaa !57
  %2586 = load float, ptr %2488, align 4, !tbaa !57
  %2587 = load float, ptr %2489, align 4, !tbaa !57
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #13
  %2588 = getelementptr inbounds %struct.STriInfo, ptr %105, i64 %2547, i32 8
  br label %2589

2589:                                             ; preds = %2617, %2576
  %2590 = phi i32 [ 0, %2576 ], [ %2618, %2617 ]
  %2591 = sext i32 %2590 to i64
  %2592 = getelementptr inbounds i8, ptr %2553, i64 %2591
  %2593 = load i8, ptr %2592, align 1, !tbaa !55
  %2594 = zext i8 %2593 to i32
  %2595 = and i32 %2594, 3
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #13
  %2596 = load ptr, ptr %0, align 8, !tbaa !35
  %2597 = getelementptr inbounds %struct.SMikkTSpaceInterface, ptr %2596, i64 0, i32 2
  %2598 = load ptr, ptr %2597, align 8, !tbaa !43
  call void %2598(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef %2581, i32 noundef %2595) #13
  %2599 = load float, ptr %3, align 4, !tbaa !57
  %2600 = load float, ptr %2490, align 4, !tbaa !57
  %2601 = load float, ptr %2491, align 4, !tbaa !57
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #13
  %2602 = fcmp une float %2599, %2585
  %2603 = fcmp une float %2600, %2586
  %2604 = select i1 %2602, i1 true, i1 %2603
  %2605 = fcmp une float %2601, %2587
  %2606 = select i1 %2604, i1 true, i1 %2605
  br i1 %2606, label %2615, label %2607

2607:                                             ; preds = %2589
  %2608 = load i32, ptr %2588, align 8, !tbaa !54
  %2609 = add nsw i32 %2608, %2577
  %2610 = sext i32 %2609 to i64
  %2611 = getelementptr inbounds %struct.STSpace, ptr %1563, i64 %2610
  %2612 = add nsw i32 %2608, %2594
  %2613 = sext i32 %2612 to i64
  %2614 = getelementptr inbounds %struct.STSpace, ptr %1563, i64 %2613
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %2611, ptr noundef nonnull align 4 dereferenceable(40) %2614, i64 40, i1 false), !tbaa.struct !132
  br label %2617

2615:                                             ; preds = %2589
  %2616 = add nsw i32 %2590, 1
  br label %2617

2617:                                             ; preds = %2615, %2607
  %2618 = phi i32 [ %2590, %2607 ], [ %2616, %2615 ]
  %2619 = icmp slt i32 %2618, 3
  %2620 = select i1 %2606, i1 %2619, i1 false
  br i1 %2620, label %2589, label %2621, !llvm.loop !147

2621:                                             ; preds = %2617, %2546
  %2622 = add nuw nsw i64 %2547, 1
  %2623 = icmp eq i64 %2622, %2492
  br i1 %2623, label %2624, label %2546, !llvm.loop !148

2624:                                             ; preds = %2621, %2486
  call void @free(ptr noundef %105) #13
  call void @free(ptr noundef %103) #13
  %2625 = icmp sgt i32 %55, 0
  br i1 %2625, label %2626, label %2699

2626:                                             ; preds = %2624
  %2627 = getelementptr inbounds float, ptr %51, i64 1
  %2628 = getelementptr inbounds float, ptr %51, i64 2
  %2629 = getelementptr inbounds float, ptr %52, i64 1
  %2630 = getelementptr inbounds float, ptr %52, i64 2
  br label %2631

2631:                                             ; preds = %2626, %2684
  %2632 = phi i32 [ 0, %2626 ], [ %2686, %2684 ]
  %2633 = phi i32 [ 0, %2626 ], [ %2685, %2684 ]
  %2634 = load ptr, ptr %0, align 8, !tbaa !35
  %2635 = getelementptr inbounds %struct.SMikkTSpaceInterface, ptr %2634, i64 0, i32 1
  %2636 = load ptr, ptr %2635, align 8, !tbaa !42
  %2637 = call i32 %2636(ptr noundef nonnull %0, i32 noundef %2632) #13
  %2638 = add i32 %2637, -3
  %2639 = icmp ult i32 %2638, 2
  br i1 %2639, label %2640, label %2684

2640:                                             ; preds = %2631
  %2641 = sext i32 %2633 to i64
  br label %2642

2642:                                             ; preds = %2640, %2678
  %2643 = phi i64 [ %2641, %2640 ], [ %2679, %2678 ]
  %2644 = phi i32 [ 0, %2640 ], [ %2680, %2678 ]
  %2645 = getelementptr inbounds %struct.STSpace, ptr %1563, i64 %2643
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %51) #13
  %2646 = load float, ptr %2645, align 4, !tbaa !108
  store float %2646, ptr %51, align 4, !tbaa !57
  %2647 = getelementptr inbounds %struct.SVec3, ptr %2645, i64 0, i32 1
  %2648 = load float, ptr %2647, align 4, !tbaa !110
  store float %2648, ptr %2627, align 4, !tbaa !57
  %2649 = getelementptr inbounds %struct.SVec3, ptr %2645, i64 0, i32 2
  %2650 = load float, ptr %2649, align 4, !tbaa !111
  store float %2650, ptr %2628, align 4, !tbaa !57
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %52) #13
  %2651 = getelementptr inbounds %struct.STSpace, ptr %1563, i64 %2643, i32 2
  %2652 = load float, ptr %2651, align 4, !tbaa !113
  store float %2652, ptr %52, align 4, !tbaa !57
  %2653 = getelementptr inbounds %struct.STSpace, ptr %1563, i64 %2643, i32 2, i32 1
  %2654 = load float, ptr %2653, align 4, !tbaa !114
  store float %2654, ptr %2629, align 4, !tbaa !57
  %2655 = getelementptr inbounds %struct.STSpace, ptr %1563, i64 %2643, i32 2, i32 2
  %2656 = load float, ptr %2655, align 4, !tbaa !115
  store float %2656, ptr %2630, align 4, !tbaa !57
  %2657 = load ptr, ptr %0, align 8, !tbaa !35
  %2658 = getelementptr inbounds %struct.SMikkTSpaceInterface, ptr %2657, i64 0, i32 6
  %2659 = load ptr, ptr %2658, align 8, !tbaa !149
  %2660 = icmp eq ptr %2659, null
  br i1 %2660, label %2668, label %2661

2661:                                             ; preds = %2642
  %2662 = getelementptr inbounds %struct.STSpace, ptr %1563, i64 %2643, i32 1
  %2663 = load float, ptr %2662, align 4, !tbaa !112
  %2664 = getelementptr inbounds %struct.STSpace, ptr %1563, i64 %2643, i32 3
  %2665 = load float, ptr %2664, align 4, !tbaa !116
  %2666 = getelementptr inbounds %struct.STSpace, ptr %1563, i64 %2643, i32 5
  %2667 = load i32, ptr %2666, align 4, !tbaa !142
  call void %2659(ptr noundef nonnull %0, ptr noundef nonnull %51, ptr noundef nonnull %52, float noundef %2663, float noundef %2665, i32 noundef %2667, i32 noundef %2632, i32 noundef %2644) #13
  br label %2668

2668:                                             ; preds = %2661, %2642
  %2669 = load ptr, ptr %0, align 8, !tbaa !35
  %2670 = getelementptr inbounds %struct.SMikkTSpaceInterface, ptr %2669, i64 0, i32 5
  %2671 = load ptr, ptr %2670, align 8, !tbaa !150
  %2672 = icmp eq ptr %2671, null
  br i1 %2672, label %2678, label %2673

2673:                                             ; preds = %2668
  %2674 = getelementptr inbounds %struct.STSpace, ptr %1563, i64 %2643, i32 5
  %2675 = load i32, ptr %2674, align 4, !tbaa !142
  %2676 = icmp eq i32 %2675, 1
  %2677 = select i1 %2676, float 1.000000e+00, float -1.000000e+00
  call void %2671(ptr noundef nonnull %0, ptr noundef nonnull %51, float noundef %2677, i32 noundef %2632, i32 noundef %2644) #13
  br label %2678

2678:                                             ; preds = %2673, %2668
  %2679 = add nsw i64 %2643, 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %52) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %51) #13
  %2680 = add nuw nsw i32 %2644, 1
  %2681 = icmp eq i32 %2680, %2637
  br i1 %2681, label %2682, label %2642, !llvm.loop !151

2682:                                             ; preds = %2678
  %2683 = trunc i64 %2679 to i32
  br label %2684

2684:                                             ; preds = %2682, %2631
  %2685 = phi i32 [ %2633, %2631 ], [ %2683, %2682 ]
  %2686 = add nuw nsw i32 %2632, 1
  %2687 = icmp eq i32 %2686, %55
  br i1 %2687, label %2699, label %2631, !llvm.loop !152

2688:                                             ; preds = %1559, %2481
  %2689 = phi ptr [ %1485, %2481 ], [ %103, %1559 ]
  %2690 = phi ptr [ %103, %2481 ], [ %1483, %1559 ]
  %2691 = phi ptr [ %1563, %2481 ], [ %1485, %1559 ]
  call void @free(ptr noundef %2689) #13
  br label %2692

2692:                                             ; preds = %2688, %1491
  %2693 = phi ptr [ %1485, %1491 ], [ %105, %2688 ]
  %2694 = phi ptr [ %103, %1491 ], [ %2690, %2688 ]
  %2695 = phi ptr [ %105, %1491 ], [ %2691, %2688 ]
  call void @free(ptr noundef %2693) #13
  br label %2696

2696:                                             ; preds = %2692, %1491
  %2697 = phi ptr [ %103, %1491 ], [ %2694, %2692 ]
  %2698 = phi ptr [ %105, %1491 ], [ %2695, %2692 ]
  call void @free(ptr noundef %2697) #13
  br label %2699

2699:                                             ; preds = %2684, %2696, %2624, %129
  %2700 = phi ptr [ %105, %129 ], [ %1563, %2624 ], [ %2698, %2696 ], [ %1563, %2684 ]
  %2701 = phi i32 [ 0, %129 ], [ 1, %2624 ], [ 0, %2696 ], [ 1, %2684 ]
  call void @free(ptr noundef %2700) #13
  br label %2702

2702:                                             ; preds = %2699, %129, %97, %2, %64, %68, %72, %76
  %2703 = phi i32 [ 0, %76 ], [ 0, %72 ], [ 0, %68 ], [ 0, %64 ], [ 0, %2 ], [ 0, %97 ], [ 0, %129 ], [ %2701, %2699 ]
  ret i32 %2703
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @cos(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc i32 @FindGridCell(float noundef %0, float noundef %1, float noundef %2) unnamed_addr #8 {
  %4 = fsub float %2, %0
  %5 = fsub float %1, %0
  %6 = fdiv float %4, %5
  %7 = fmul float %6, 2.048000e+03
  %8 = fptosi float %7 to i32
  %9 = tail call i32 @llvm.smax.i32(i32 %8, i32 0)
  %10 = tail call i32 @llvm.smin.i32(i32 %9, i32 2047)
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define internal fastcc void @MergeVertsFast(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #1 {
  %6 = alloca [2 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [2 x float], align 4
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 4
  %12 = alloca [3 x float], align 4
  %13 = alloca [3 x float], align 4
  %14 = alloca %struct.STmpVert, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #13
  %15 = sext i32 %3 to i64
  %16 = getelementptr inbounds %struct.STmpVert, ptr %1, i64 %15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %12, ptr noundef nonnull align 4 dereferenceable(12) %16, i64 12, i1 false), !tbaa !57
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %13, ptr noundef nonnull align 4 dereferenceable(12) %16, i64 12, i1 false), !tbaa !57
  %17 = icmp slt i32 %3, %4
  br i1 %17, label %18, label %42

18:                                               ; preds = %5
  %19 = sext i32 %4 to i64
  br label %22

20:                                               ; preds = %39
  %21 = icmp eq i64 %24, %19
  br i1 %21, label %42, label %22, !llvm.loop !153

22:                                               ; preds = %18, %20
  %23 = phi i64 [ %15, %18 ], [ %24, %20 ]
  %24 = add nsw i64 %23, 1
  %25 = getelementptr inbounds %struct.STmpVert, ptr %1, i64 %24
  br label %26

26:                                               ; preds = %22, %39
  %27 = phi i64 [ 0, %22 ], [ %40, %39 ]
  %28 = getelementptr inbounds [3 x float], ptr %12, i64 0, i64 %27
  %29 = load float, ptr %28, align 4, !tbaa !57
  %30 = getelementptr inbounds [3 x float], ptr %25, i64 0, i64 %27
  %31 = load float, ptr %30, align 4, !tbaa !57
  %32 = fcmp ogt float %29, %31
  br i1 %32, label %37, label %33

33:                                               ; preds = %26
  %34 = getelementptr inbounds [3 x float], ptr %13, i64 0, i64 %27
  %35 = load float, ptr %34, align 4, !tbaa !57
  %36 = fcmp olt float %35, %31
  br i1 %36, label %37, label %39

37:                                               ; preds = %33, %26
  %38 = phi ptr [ %28, %26 ], [ %34, %33 ]
  store float %31, ptr %38, align 4, !tbaa !57
  br label %39

39:                                               ; preds = %37, %33
  %40 = add nuw nsw i64 %27, 1
  %41 = icmp eq i64 %40, 3
  br i1 %41, label %20, label %26, !llvm.loop !154

42:                                               ; preds = %20, %5
  %43 = load float, ptr %13, align 4, !tbaa !57
  %44 = load float, ptr %12, align 4, !tbaa !57
  %45 = fsub float %43, %44
  %46 = getelementptr inbounds [3 x float], ptr %13, i64 0, i64 1
  %47 = load float, ptr %46, align 4, !tbaa !57
  %48 = getelementptr inbounds [3 x float], ptr %12, i64 0, i64 1
  %49 = load float, ptr %48, align 4, !tbaa !57
  %50 = fsub float %47, %49
  %51 = getelementptr inbounds [3 x float], ptr %13, i64 0, i64 2
  %52 = load float, ptr %51, align 4, !tbaa !57
  %53 = getelementptr inbounds [3 x float], ptr %12, i64 0, i64 2
  %54 = load float, ptr %53, align 4, !tbaa !57
  %55 = fsub float %52, %54
  %56 = fcmp ogt float %50, %45
  %57 = fcmp ogt float %50, %55
  %58 = select i1 %56, i1 %57, i1 false
  br i1 %58, label %62, label %59

59:                                               ; preds = %42
  %60 = fcmp ogt float %55, %45
  br i1 %60, label %61, label %62

61:                                               ; preds = %59
  br label %62

62:                                               ; preds = %42, %59, %61
  %63 = phi i64 [ 2, %61 ], [ 0, %59 ], [ 1, %42 ]
  %64 = getelementptr inbounds [3 x float], ptr %13, i64 0, i64 %63
  %65 = load float, ptr %64, align 4, !tbaa !57
  %66 = getelementptr inbounds [3 x float], ptr %12, i64 0, i64 %63
  %67 = load float, ptr %66, align 4, !tbaa !57
  %68 = fadd float %65, %67
  %69 = fmul float %68, 5.000000e-01
  %70 = fcmp ult float %69, %65
  %71 = fcmp ugt float %69, %67
  %72 = and i1 %70, %71
  br i1 %72, label %88, label %73

73:                                               ; preds = %62
  %74 = icmp sgt i32 %3, %4
  br i1 %74, label %243, label %75

75:                                               ; preds = %73
  %76 = getelementptr inbounds [3 x float], ptr %11, i64 0, i64 1
  %77 = getelementptr inbounds [3 x float], ptr %11, i64 0, i64 2
  %78 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 1
  %79 = getelementptr inbounds [3 x float], ptr %10, i64 0, i64 2
  %80 = getelementptr inbounds [2 x float], ptr %9, i64 0, i64 1
  %81 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 1
  %82 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 2
  %83 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 1
  %84 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  %85 = getelementptr inbounds [2 x float], ptr %6, i64 0, i64 1
  %86 = sext i32 %3 to i64
  %87 = add i32 %4, 1
  br label %93

88:                                               ; preds = %62
  %89 = icmp slt i32 %3, %4
  br i1 %89, label %90, label %220

90:                                               ; preds = %88
  %91 = getelementptr [3 x float], ptr %1, i64 0, i64 %63
  %92 = getelementptr [3 x float], ptr %1, i64 0, i64 %63
  br label %178

93:                                               ; preds = %75, %174
  %94 = phi i64 [ %15, %75 ], [ %175, %174 ]
  %95 = getelementptr inbounds %struct.STmpVert, ptr %1, i64 %94, i32 1
  %96 = load i32, ptr %95, align 4, !tbaa !70
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, ptr %0, i64 %97
  %99 = load i32, ptr %98, align 4, !tbaa !56
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #13
  %100 = and i32 %99, 3
  %101 = ashr i32 %99, 2
  %102 = load ptr, ptr %2, align 8, !tbaa !35
  %103 = getelementptr inbounds %struct.SMikkTSpaceInterface, ptr %102, i64 0, i32 2
  %104 = load ptr, ptr %103, align 8, !tbaa !43
  call void %104(ptr noundef nonnull %2, ptr noundef nonnull %11, i32 noundef %101, i32 noundef %100) #13
  %105 = load float, ptr %11, align 4, !tbaa !57
  %106 = load float, ptr %76, align 4, !tbaa !57
  %107 = load float, ptr %77, align 4, !tbaa !57
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #13
  %108 = load ptr, ptr %2, align 8, !tbaa !35
  %109 = getelementptr inbounds %struct.SMikkTSpaceInterface, ptr %108, i64 0, i32 3
  %110 = load ptr, ptr %109, align 8, !tbaa !44
  call void %110(ptr noundef nonnull %2, ptr noundef nonnull %10, i32 noundef %101, i32 noundef %100) #13
  %111 = load float, ptr %10, align 4, !tbaa !57
  %112 = load float, ptr %78, align 4, !tbaa !57
  %113 = load float, ptr %79, align 4, !tbaa !57
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #13
  %114 = load ptr, ptr %2, align 8, !tbaa !35
  %115 = getelementptr inbounds %struct.SMikkTSpaceInterface, ptr %114, i64 0, i32 4
  %116 = load ptr, ptr %115, align 8, !tbaa !45
  call void %116(ptr noundef nonnull %2, ptr noundef nonnull %9, i32 noundef %101, i32 noundef %100) #13
  %117 = load float, ptr %9, align 4, !tbaa !57
  %118 = load float, ptr %80, align 4, !tbaa !57
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #13
  %119 = icmp sgt i64 %94, %86
  br i1 %119, label %120, label %167

120:                                              ; preds = %93, %120
  %121 = phi i32 [ %163, %120 ], [ %3, %93 ]
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.STmpVert, ptr %1, i64 %122, i32 1
  %124 = load i32, ptr %123, align 4, !tbaa !70
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, ptr %0, i64 %125
  %127 = load i32, ptr %126, align 4, !tbaa !56
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #13
  %128 = and i32 %127, 3
  %129 = ashr i32 %127, 2
  %130 = load ptr, ptr %2, align 8, !tbaa !35
  %131 = getelementptr inbounds %struct.SMikkTSpaceInterface, ptr %130, i64 0, i32 2
  %132 = load ptr, ptr %131, align 8, !tbaa !43
  call void %132(ptr noundef nonnull %2, ptr noundef nonnull %8, i32 noundef %129, i32 noundef %128) #13
  %133 = load float, ptr %8, align 4, !tbaa !57
  %134 = load float, ptr %81, align 4, !tbaa !57
  %135 = load float, ptr %82, align 4, !tbaa !57
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #13
  %136 = load ptr, ptr %2, align 8, !tbaa !35
  %137 = getelementptr inbounds %struct.SMikkTSpaceInterface, ptr %136, i64 0, i32 3
  %138 = load ptr, ptr %137, align 8, !tbaa !44
  call void %138(ptr noundef nonnull %2, ptr noundef nonnull %7, i32 noundef %129, i32 noundef %128) #13
  %139 = load float, ptr %7, align 4, !tbaa !57
  %140 = load float, ptr %83, align 4, !tbaa !57
  %141 = load float, ptr %84, align 4, !tbaa !57
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #13
  %142 = load ptr, ptr %2, align 8, !tbaa !35
  %143 = getelementptr inbounds %struct.SMikkTSpaceInterface, ptr %142, i64 0, i32 4
  %144 = load ptr, ptr %143, align 8, !tbaa !45
  call void %144(ptr noundef nonnull %2, ptr noundef nonnull %6, i32 noundef %129, i32 noundef %128) #13
  %145 = load float, ptr %6, align 4, !tbaa !57
  %146 = load float, ptr %85, align 4, !tbaa !57
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #13
  %147 = fcmp une float %105, %133
  %148 = fcmp une float %106, %134
  %149 = select i1 %147, i1 true, i1 %148
  %150 = fcmp une float %107, %135
  %151 = select i1 %149, i1 true, i1 %150
  %152 = fcmp une float %111, %139
  %153 = select i1 %151, i1 true, i1 %152
  %154 = fcmp une float %112, %140
  %155 = select i1 %153, i1 true, i1 %154
  %156 = fcmp une float %113, %141
  %157 = select i1 %155, i1 true, i1 %156
  %158 = fcmp une float %117, %145
  %159 = select i1 %157, i1 true, i1 %158
  %160 = fcmp une float %118, %146
  %161 = select i1 %159, i1 true, i1 %160
  %162 = zext i1 %161 to i32
  %163 = add nsw i32 %121, %162
  %164 = sext i32 %163 to i64
  %165 = icmp sgt i64 %94, %164
  %166 = and i1 %165, %161
  br i1 %166, label %120, label %167, !llvm.loop !155

167:                                              ; preds = %120, %93
  %168 = phi i32 [ -1, %93 ], [ %124, %120 ]
  %169 = phi i1 [ true, %93 ], [ %161, %120 ]
  br i1 %169, label %174, label %170

170:                                              ; preds = %167
  %171 = sext i32 %168 to i64
  %172 = getelementptr inbounds i32, ptr %0, i64 %171
  %173 = load i32, ptr %172, align 4, !tbaa !56
  store i32 %173, ptr %98, align 4, !tbaa !56
  br label %174

174:                                              ; preds = %170, %167
  %175 = add nsw i64 %94, 1
  %176 = trunc i64 %175 to i32
  %177 = icmp eq i32 %87, %176
  br i1 %177, label %243, label %93, !llvm.loop !156

178:                                              ; preds = %90, %216
  %179 = phi i32 [ %4, %90 ], [ %218, %216 ]
  %180 = phi i32 [ %3, %90 ], [ %217, %216 ]
  br label %183

181:                                              ; preds = %183
  %182 = icmp slt i32 %191, %179
  br i1 %182, label %194, label %205

183:                                              ; preds = %178, %183
  %184 = phi i32 [ %180, %178 ], [ %191, %183 ]
  %185 = sext i32 %184 to i64
  %186 = getelementptr %struct.STmpVert, ptr %91, i64 %185
  %187 = load float, ptr %186, align 4, !tbaa !57
  %188 = fcmp uge float %187, %69
  %189 = xor i1 %188, true
  %190 = zext i1 %189 to i32
  %191 = add nsw i32 %184, %190
  %192 = icmp sge i32 %191, %179
  %193 = select i1 %188, i1 true, i1 %192
  br i1 %193, label %181, label %183, !llvm.loop !157

194:                                              ; preds = %181, %194
  %195 = phi i32 [ %202, %194 ], [ %179, %181 ]
  %196 = sext i32 %195 to i64
  %197 = getelementptr %struct.STmpVert, ptr %92, i64 %196
  %198 = load float, ptr %197, align 4, !tbaa !57
  %199 = fcmp olt float %198, %69
  %200 = xor i1 %199, true
  %201 = sext i1 %200 to i32
  %202 = add nsw i32 %195, %201
  %203 = icmp sge i32 %191, %202
  %204 = select i1 %199, i1 true, i1 %203
  br i1 %204, label %205, label %194, !llvm.loop !158

205:                                              ; preds = %194, %181
  %206 = phi i32 [ %179, %181 ], [ %202, %194 ]
  %207 = phi i1 [ false, %181 ], [ %199, %194 ]
  %208 = and i1 %188, %207
  br i1 %208, label %209, label %216

209:                                              ; preds = %205
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %14)
  %210 = sext i32 %191 to i64
  %211 = getelementptr inbounds %struct.STmpVert, ptr %1, i64 %210
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %14, ptr noundef nonnull align 4 dereferenceable(16) %211, i64 16, i1 false), !tbaa.struct !159
  %212 = sext i32 %206 to i64
  %213 = getelementptr inbounds %struct.STmpVert, ptr %1, i64 %212
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %211, ptr noundef nonnull align 4 dereferenceable(16) %213, i64 16, i1 false), !tbaa.struct !159
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %213, ptr noundef nonnull align 4 dereferenceable(16) %14, i64 16, i1 false), !tbaa.struct !159
  %214 = add nsw i32 %191, 1
  %215 = add nsw i32 %206, -1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %14)
  br label %216

216:                                              ; preds = %209, %205
  %217 = phi i32 [ %214, %209 ], [ %191, %205 ]
  %218 = phi i32 [ %215, %209 ], [ %206, %205 ]
  %219 = icmp slt i32 %217, %218
  br i1 %219, label %178, label %220, !llvm.loop !160

220:                                              ; preds = %216, %88
  %221 = phi i32 [ %3, %88 ], [ %217, %216 ]
  %222 = phi i32 [ %4, %88 ], [ %218, %216 ]
  %223 = icmp eq i32 %221, %222
  br i1 %223, label %224, label %235

224:                                              ; preds = %220
  %225 = sext i32 %222 to i64
  %226 = getelementptr inbounds %struct.STmpVert, ptr %1, i64 %225
  %227 = getelementptr inbounds [3 x float], ptr %226, i64 0, i64 %63
  %228 = load float, ptr %227, align 4, !tbaa !57
  %229 = fcmp olt float %228, %69
  %230 = zext i1 %229 to i32
  %231 = add nsw i32 %221, %230
  %232 = xor i1 %229, true
  %233 = sext i1 %232 to i32
  %234 = add nsw i32 %222, %233
  br label %235

235:                                              ; preds = %224, %220
  %236 = phi i32 [ %231, %224 ], [ %221, %220 ]
  %237 = phi i32 [ %234, %224 ], [ %222, %220 ]
  %238 = icmp sgt i32 %237, %3
  br i1 %238, label %239, label %240

239:                                              ; preds = %235
  tail call fastcc void @MergeVertsFast(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %237)
  br label %240

240:                                              ; preds = %239, %235
  %241 = icmp slt i32 %236, %4
  br i1 %241, label %242, label %243

242:                                              ; preds = %240
  tail call fastcc void @MergeVertsFast(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %236, i32 noundef %4)
  br label %243

243:                                              ; preds = %174, %73, %240, %242
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #13
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @sqrtf(float noundef) local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @QuickSortEdges(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #10 {
  %6 = alloca %struct.anon, align 8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6)
  %7 = sub nsw i32 %2, %1
  %8 = add nsw i32 %7, 1
  %9 = icmp slt i32 %7, 1
  br i1 %9, label %72, label %10

10:                                               ; preds = %5
  %11 = icmp eq i32 %8, 2
  br i1 %11, label %12, label %24

12:                                               ; preds = %10
  %13 = sext i32 %1 to i64
  %14 = getelementptr inbounds %union.SEdge, ptr %0, i64 %13
  %15 = zext nneg i32 %3 to i64
  %16 = getelementptr inbounds [3 x i32], ptr %14, i64 0, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !55
  %18 = sext i32 %2 to i64
  %19 = getelementptr inbounds %union.SEdge, ptr %0, i64 %18
  %20 = getelementptr inbounds [3 x i32], ptr %19, i64 0, i64 %15
  %21 = load i32, ptr %20, align 4, !tbaa !55
  %22 = icmp sgt i32 %17, %21
  br i1 %22, label %23, label %72

23:                                               ; preds = %12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull align 4 dereferenceable(12) %14, i64 12, i1 false), !tbaa.struct !161
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %14, ptr noundef nonnull align 4 dereferenceable(12) %19, i64 12, i1 false), !tbaa.struct !161
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %19, ptr noundef nonnull align 8 dereferenceable(12) %6, i64 12, i1 false), !tbaa.struct !161
  br label %72

24:                                               ; preds = %10
  %25 = tail call i32 @llvm.fshl.i32(i32 %4, i32 %4, i32 %4)
  %26 = add i32 %4, 3
  %27 = add i32 %26, %25
  %28 = urem i32 %27, %8
  %29 = add nsw i32 %28, %1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %union.SEdge, ptr %0, i64 %30
  %32 = zext nneg i32 %3 to i64
  %33 = getelementptr inbounds [3 x i32], ptr %31, i64 0, i64 %32
  %34 = load i32, ptr %33, align 4, !tbaa !55
  br label %35

35:                                               ; preds = %62, %24
  %36 = phi i32 [ %2, %24 ], [ %63, %62 ]
  %37 = phi i32 [ %1, %24 ], [ %64, %62 ]
  %38 = sext i32 %37 to i64
  br label %39

39:                                               ; preds = %39, %35
  %40 = phi i64 [ %45, %39 ], [ %38, %35 ]
  %41 = getelementptr inbounds %union.SEdge, ptr %0, i64 %40
  %42 = getelementptr inbounds [3 x i32], ptr %41, i64 0, i64 %32
  %43 = load i32, ptr %42, align 4, !tbaa !55
  %44 = icmp slt i32 %43, %34
  %45 = add i64 %40, 1
  br i1 %44, label %39, label %46, !llvm.loop !162

46:                                               ; preds = %39
  %47 = sext i32 %36 to i64
  br label %48

48:                                               ; preds = %48, %46
  %49 = phi i64 [ %54, %48 ], [ %47, %46 ]
  %50 = getelementptr inbounds %union.SEdge, ptr %0, i64 %49
  %51 = getelementptr inbounds [3 x i32], ptr %50, i64 0, i64 %32
  %52 = load i32, ptr %51, align 4, !tbaa !55
  %53 = icmp sgt i32 %52, %34
  %54 = add i64 %49, -1
  br i1 %53, label %48, label %55, !llvm.loop !163

55:                                               ; preds = %48
  %56 = trunc i64 %40 to i32
  %57 = trunc i64 %49 to i32
  %58 = icmp sgt i32 %56, %57
  br i1 %58, label %62, label %59

59:                                               ; preds = %55
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull align 4 dereferenceable(12) %41, i64 12, i1 false), !tbaa.struct !161
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %41, ptr noundef nonnull align 4 dereferenceable(12) %50, i64 12, i1 false), !tbaa.struct !161
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %50, ptr noundef nonnull align 8 dereferenceable(12) %6, i64 12, i1 false), !tbaa.struct !161
  %60 = add nsw i32 %56, 1
  %61 = add nsw i32 %57, -1
  br label %62

62:                                               ; preds = %55, %59
  %63 = phi i32 [ %61, %59 ], [ %57, %55 ]
  %64 = phi i32 [ %60, %59 ], [ %56, %55 ]
  %65 = icmp sgt i32 %64, %63
  br i1 %65, label %66, label %35, !llvm.loop !164

66:                                               ; preds = %62
  %67 = icmp sgt i32 %63, %1
  br i1 %67, label %68, label %69

68:                                               ; preds = %66
  tail call fastcc void @QuickSortEdges(ptr noundef %0, i32 noundef %1, i32 noundef %63, i32 noundef %3, i32 noundef %27)
  br label %69

69:                                               ; preds = %68, %66
  %70 = icmp slt i32 %64, %2
  br i1 %70, label %71, label %72

71:                                               ; preds = %69
  tail call fastcc void @QuickSortEdges(ptr noundef %0, i32 noundef %64, i32 noundef %2, i32 noundef %3, i32 noundef %27)
  br label %72

72:                                               ; preds = %69, %71, %12, %23, %5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6)
  ret void
}

; Function Attrs: nofree nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @AssignRecur(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #11 {
  br label %5

5:                                                ; preds = %82, %4
  %6 = phi i32 [ %2, %4 ], [ %79, %82 ]
  %7 = zext nneg i32 %6 to i64
  %8 = getelementptr inbounds %struct.STriInfo, ptr %1, i64 %7
  %9 = getelementptr inbounds %struct.SGroup, ptr %3, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !101
  %11 = mul nsw i32 %6, 3
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, ptr %0, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !56
  %15 = icmp eq i32 %14, %10
  br i1 %15, label %25, label %16

16:                                               ; preds = %5
  %17 = getelementptr inbounds i32, ptr %13, i64 1
  %18 = load i32, ptr %17, align 4, !tbaa !56
  %19 = icmp eq i32 %18, %10
  br i1 %19, label %25, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds i32, ptr %13, i64 2
  %22 = load i32, ptr %21, align 4, !tbaa !56
  %23 = icmp eq i32 %22, %10
  %24 = select i1 %23, i32 2, i32 -1
  br label %25

25:                                               ; preds = %20, %16, %5
  %26 = phi i1 [ false, %5 ], [ true, %16 ], [ %23, %20 ]
  %27 = phi i32 [ 0, %5 ], [ 1, %16 ], [ %24, %20 ]
  %28 = getelementptr inbounds %struct.STriInfo, ptr %1, i64 %7, i32 1
  %29 = sext i32 %27 to i64
  %30 = getelementptr inbounds %struct.STriInfo, ptr %1, i64 %7, i32 1, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !82
  %32 = icmp eq ptr %31, null
  %33 = icmp ne ptr %3, null
  %34 = and i1 %32, %33
  br i1 %34, label %35, label %84

35:                                               ; preds = %25
  %36 = getelementptr inbounds %struct.STriInfo, ptr %1, i64 %7, i32 7
  %37 = load i32, ptr %36, align 4, !tbaa !59
  %38 = and i32 %37, 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %58, label %40

40:                                               ; preds = %35
  %41 = load ptr, ptr %28, align 8, !tbaa !82
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %58

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.STriInfo, ptr %1, i64 %7, i32 1, i64 1
  %45 = load ptr, ptr %44, align 8, !tbaa !82
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %58

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.STriInfo, ptr %1, i64 %7, i32 1, i64 2
  %49 = load ptr, ptr %48, align 8, !tbaa !82
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %58

51:                                               ; preds = %47
  %52 = and i32 %37, -9
  store i32 %52, ptr %36, align 4, !tbaa !59
  %53 = getelementptr inbounds %struct.SGroup, ptr %3, i64 0, i32 3
  %54 = load i32, ptr %53, align 4, !tbaa !103
  %55 = icmp eq i32 %54, 0
  %56 = select i1 %55, i32 0, i32 8
  %57 = or disjoint i32 %56, %52
  store i32 %57, ptr %36, align 4, !tbaa !59
  br label %58

58:                                               ; preds = %40, %43, %47, %51, %35
  %59 = load i32, ptr %36, align 4, !tbaa !59
  %60 = lshr i32 %59, 3
  %61 = and i32 %60, 1
  %62 = getelementptr inbounds %struct.SGroup, ptr %3, i64 0, i32 3
  %63 = load i32, ptr %62, align 4, !tbaa !103
  %64 = icmp eq i32 %61, %63
  br i1 %64, label %65, label %84

65:                                               ; preds = %58
  %66 = getelementptr inbounds %struct.SGroup, ptr %3, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !105
  %68 = load i32, ptr %3, align 8, !tbaa !104
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, ptr %67, i64 %69
  store i32 %6, ptr %70, align 4, !tbaa !56
  %71 = load i32, ptr %3, align 8, !tbaa !104
  %72 = add nsw i32 %71, 1
  store i32 %72, ptr %3, align 8, !tbaa !104
  store ptr %3, ptr %30, align 8, !tbaa !82
  %73 = getelementptr inbounds [3 x i32], ptr %8, i64 0, i64 %29
  %74 = load i32, ptr %73, align 4, !tbaa !56
  %75 = add nsw i32 %27, -1
  %76 = sext i32 %75 to i64
  %77 = select i1 %26, i64 %76, i64 2
  %78 = getelementptr inbounds [3 x i32], ptr %8, i64 0, i64 %77
  %79 = load i32, ptr %78, align 4, !tbaa !56
  %80 = icmp sgt i32 %74, -1
  br i1 %80, label %81, label %82

81:                                               ; preds = %65
  tail call fastcc void @AssignRecur(ptr noundef %0, ptr noundef %1, i32 noundef %74, ptr noundef nonnull %3)
  br label %82

82:                                               ; preds = %81, %65
  %83 = icmp sgt i32 %79, -1
  br i1 %83, label %5, label %84

84:                                               ; preds = %82, %25, %58
  ret void
}

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @QuickSort(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #10 {
  br label %5

5:                                                ; preds = %52, %4
  %6 = phi i32 [ %1, %4 ], [ %47, %52 ]
  %7 = phi i32 [ %3, %4 ], [ %10, %52 ]
  %8 = tail call i32 @llvm.fshl.i32(i32 %7, i32 %7, i32 %7)
  %9 = add i32 %7, 3
  %10 = add i32 %9, %8
  %11 = sub i32 %2, %6
  %12 = add i32 %11, 1
  %13 = urem i32 %10, %12
  %14 = add nsw i32 %13, %6
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, ptr %0, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !56
  br label %18

18:                                               ; preds = %45, %5
  %19 = phi i32 [ %2, %5 ], [ %46, %45 ]
  %20 = phi i32 [ %6, %5 ], [ %47, %45 ]
  %21 = sext i32 %20 to i64
  br label %22

22:                                               ; preds = %22, %18
  %23 = phi i64 [ %27, %22 ], [ %21, %18 ]
  %24 = getelementptr inbounds i32, ptr %0, i64 %23
  %25 = load i32, ptr %24, align 4, !tbaa !56
  %26 = icmp slt i32 %25, %17
  %27 = add i64 %23, 1
  br i1 %26, label %22, label %28, !llvm.loop !165

28:                                               ; preds = %22
  %29 = trunc i64 %23 to i32
  %30 = sext i32 %19 to i64
  br label %31

31:                                               ; preds = %31, %28
  %32 = phi i64 [ %36, %31 ], [ %30, %28 ]
  %33 = getelementptr inbounds i32, ptr %0, i64 %32
  %34 = load i32, ptr %33, align 4, !tbaa !56
  %35 = icmp sgt i32 %34, %17
  %36 = add i64 %32, -1
  br i1 %35, label %31, label %37, !llvm.loop !166

37:                                               ; preds = %31
  %38 = trunc i64 %32 to i32
  %39 = icmp sgt i32 %29, %38
  br i1 %39, label %45, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds i32, ptr %0, i64 %23
  %42 = getelementptr inbounds i32, ptr %0, i64 %32
  store i32 %34, ptr %41, align 4, !tbaa !56
  store i32 %25, ptr %42, align 4, !tbaa !56
  %43 = add nsw i32 %29, 1
  %44 = add nsw i32 %38, -1
  br label %45

45:                                               ; preds = %37, %40
  %46 = phi i32 [ %44, %40 ], [ %38, %37 ]
  %47 = phi i32 [ %43, %40 ], [ %29, %37 ]
  %48 = icmp sgt i32 %47, %46
  br i1 %48, label %49, label %18, !llvm.loop !167

49:                                               ; preds = %45
  %50 = icmp sgt i32 %46, %6
  br i1 %50, label %51, label %52

51:                                               ; preds = %49
  tail call fastcc void @QuickSort(ptr noundef %0, i32 noundef %6, i32 noundef %46, i32 noundef %10)
  br label %52

52:                                               ; preds = %51, %49
  %53 = icmp slt i32 %47, %2
  br i1 %53, label %5, label %54

54:                                               ; preds = %52
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @acos(double noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #12

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nofree nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind }
attributes #14 = { nounwind allocsize(0) }

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
!34 = !{i32 0, i32 2}
!35 = !{!36, !37, i64 0}
!36 = !{!"SMikkTSpaceContext", !37, i64 0, !37, i64 8}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!41, !37, i64 0}
!41 = !{!"", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48}
!42 = !{!41, !37, i64 8}
!43 = !{!41, !37, i64 16}
!44 = !{!41, !37, i64 24}
!45 = !{!41, !37, i64 32}
!46 = distinct !{!46, !47, !48}
!47 = !{!"llvm.loop.mustprogress"}
!48 = !{!"llvm.loop.unroll.disable"}
!49 = !{!50, !53, i64 72}
!50 = !{!"", !38, i64 0, !38, i64 16, !51, i64 40, !51, i64 52, !52, i64 64, !52, i64 68, !53, i64 72, !53, i64 76, !53, i64 80, !38, i64 84}
!51 = !{!"", !52, i64 0, !52, i64 4, !52, i64 8}
!52 = !{!"float", !38, i64 0}
!53 = !{!"int", !38, i64 0}
!54 = !{!50, !53, i64 80}
!55 = !{!38, !38, i64 0}
!56 = !{!53, !53, i64 0}
!57 = !{!52, !52, i64 0}
!58 = distinct !{!58, !47, !48}
!59 = !{!50, !53, i64 76}
!60 = distinct !{!60, !47, !48}
!61 = distinct !{!61, !47, !48}
!62 = distinct !{!62, !47, !48}
!63 = distinct !{!63, !47, !48}
!64 = distinct !{!64, !47, !48}
!65 = distinct !{!65, !47, !48}
!66 = distinct !{!66, !47, !48}
!67 = distinct !{!67, !47, !48}
!68 = distinct !{!68, !47, !48}
!69 = distinct !{!69, !47, !48}
!70 = !{!71, !53, i64 12}
!71 = !{!"", !38, i64 0, !53, i64 12}
!72 = distinct !{!72, !47, !48}
!73 = distinct !{!73, !47, !48}
!74 = distinct !{!74, !47, !48}
!75 = distinct !{!75, !47, !48}
!76 = distinct !{!76, !47, !48}
!77 = distinct !{!77, !47, !48}
!78 = distinct !{!78, !47, !48}
!79 = distinct !{!79, !47, !48}
!80 = !{i64 0, i64 12, !55, i64 16, i64 24, !55, i64 40, i64 4, !57, i64 44, i64 4, !57, i64 48, i64 4, !57, i64 52, i64 4, !57, i64 56, i64 4, !57, i64 60, i64 4, !57, i64 64, i64 4, !57, i64 68, i64 4, !57, i64 72, i64 4, !56, i64 76, i64 4, !56, i64 80, i64 4, !56, i64 84, i64 4, !55}
!81 = distinct !{!81, !47, !48}
!82 = !{!37, !37, i64 0}
!83 = distinct !{!83, !47, !48}
!84 = distinct !{!84, !47, !48}
!85 = !{i64 0, i64 4, !57, i64 4, i64 4, !57, i64 8, i64 4, !57}
!86 = !{i64 0, i64 4, !57}
!87 = !{!50, !52, i64 64}
!88 = !{!50, !52, i64 68}
!89 = distinct !{!89, !47, !48}
!90 = distinct !{!90, !47, !48}
!91 = distinct !{!91, !47, !48}
!92 = distinct !{!92, !47, !48}
!93 = distinct !{!93, !47, !48}
!94 = distinct !{!94, !47, !48}
!95 = distinct !{!95, !47, !48}
!96 = distinct !{!96, !47, !48}
!97 = distinct !{!97, !47, !48}
!98 = distinct !{!98, !47, !48}
!99 = distinct !{!99, !47, !48}
!100 = distinct !{!100, !47, !48}
!101 = !{!102, !53, i64 16}
!102 = !{!"", !53, i64 0, !37, i64 8, !53, i64 16, !53, i64 20}
!103 = !{!102, !53, i64 20}
!104 = !{!102, !53, i64 0}
!105 = !{!102, !37, i64 8}
!106 = distinct !{!106, !47, !48}
!107 = distinct !{!107, !47, !48}
!108 = !{!109, !52, i64 0}
!109 = !{!"", !51, i64 0, !52, i64 12, !51, i64 16, !52, i64 28, !53, i64 32, !53, i64 36}
!110 = !{!109, !52, i64 4}
!111 = !{!109, !52, i64 8}
!112 = !{!109, !52, i64 12}
!113 = !{!109, !52, i64 16}
!114 = !{!109, !52, i64 20}
!115 = !{!109, !52, i64 24}
!116 = !{!109, !52, i64 28}
!117 = distinct !{!117, !47, !48}
!118 = distinct !{!118, !47, !48}
!119 = distinct !{!119, !47, !48}
!120 = distinct !{!120, !47, !48}
!121 = distinct !{!121, !47, !48}
!122 = !{!123, !53, i64 0}
!123 = !{!"", !53, i64 0, !37, i64 8}
!124 = !{!123, !37, i64 8}
!125 = distinct !{!125, !47, !48}
!126 = distinct !{!126, !47, !48}
!127 = distinct !{!127, !47, !48}
!128 = !{!129}
!129 = distinct !{!129, !130, !"EvalTspace: argument 0"}
!130 = distinct !{!130, !"EvalTspace"}
!131 = distinct !{!131, !47, !48}
!132 = !{i64 0, i64 4, !57, i64 4, i64 4, !57, i64 8, i64 4, !57, i64 12, i64 4, !57, i64 16, i64 4, !57, i64 20, i64 4, !57, i64 24, i64 4, !57, i64 28, i64 4, !57, i64 32, i64 4, !56, i64 36, i64 4, !56}
!133 = !{i64 0, i64 4, !57, i64 4, i64 4, !57, i64 8, i64 4, !57, i64 12, i64 4, !57, i64 16, i64 4, !57, i64 20, i64 4, !57, i64 24, i64 4, !56, i64 28, i64 4, !56}
!134 = !{i64 0, i64 4, !57, i64 4, i64 4, !57, i64 8, i64 4, !57, i64 12, i64 4, !57, i64 16, i64 4, !57, i64 20, i64 4, !56, i64 24, i64 4, !56}
!135 = !{i64 0, i64 4, !57, i64 4, i64 4, !57, i64 8, i64 4, !57, i64 12, i64 4, !57, i64 16, i64 4, !56, i64 20, i64 4, !56}
!136 = !{i64 0, i64 4, !57, i64 4, i64 4, !57, i64 8, i64 4, !56, i64 12, i64 4, !56}
!137 = !{i64 0, i64 4, !57, i64 4, i64 4, !56, i64 8, i64 4, !56}
!138 = !{!109, !53, i64 32}
!139 = !{!140}
!140 = distinct !{!140, !141, !"AvgTSpace: argument 0"}
!141 = distinct !{!141, !"AvgTSpace"}
!142 = !{!109, !53, i64 36}
!143 = distinct !{!143, !47, !48}
!144 = distinct !{!144, !47, !48}
!145 = distinct !{!145, !47, !48}
!146 = distinct !{!146, !47, !48}
!147 = distinct !{!147, !47, !48}
!148 = distinct !{!148, !47, !48}
!149 = !{!41, !37, i64 48}
!150 = !{!41, !37, i64 40}
!151 = distinct !{!151, !47, !48}
!152 = distinct !{!152, !47, !48}
!153 = distinct !{!153, !47, !48}
!154 = distinct !{!154, !47, !48}
!155 = distinct !{!155, !47, !48}
!156 = distinct !{!156, !47, !48}
!157 = distinct !{!157, !47, !48}
!158 = distinct !{!158, !47, !48}
!159 = !{i64 0, i64 12, !55, i64 12, i64 4, !56}
!160 = distinct !{!160, !47, !48}
!161 = !{i64 0, i64 4, !56, i64 4, i64 4, !56, i64 8, i64 4, !56, i64 0, i64 12, !55}
!162 = distinct !{!162, !47, !48}
!163 = distinct !{!163, !47, !48}
!164 = distinct !{!164, !47, !48}
!165 = distinct !{!165, !47, !48}
!166 = distinct !{!166, !47, !48}
!167 = distinct !{!167, !47, !48}

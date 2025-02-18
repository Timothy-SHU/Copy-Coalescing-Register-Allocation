; ModuleID = 'bcyl.cpp'
source_filename = "bcyl.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.pov::BCyl_Struct" = type { i32, i16, i16, ptr, ptr, ptr, ptr, ptr, ptr }
%"struct.pov::BCyl_Intersection_Struct" = type { i32, [2 x double], [2 x double] }
%"struct.pov::BCyl_Entry_Struct" = type { i16, i16, i16, i16 }

@.str = private unnamed_addr constant [9 x i8] c"bcyl.cpp\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"bounding cylinder\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"bounding cylinder data\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"lathe intersection list\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"temp lathe data\00", align 1

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN3pov14Intersect_BCylEPNS_11BCyl_StructEPdS2_(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = alloca [8 x double], align 16
  %5 = alloca [2 x double], align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5)
  %6 = load double, ptr %2, align 8, !tbaa !34
  %7 = getelementptr inbounds double, ptr %2, i64 2
  %8 = load double, ptr %7, align 8, !tbaa !34
  %9 = fmul double %8, %8
  %10 = tail call double @llvm.fmuladd.f64(double %6, double %6, double %9)
  %11 = load double, ptr %1, align 8, !tbaa !34
  %12 = getelementptr inbounds double, ptr %1, i64 2
  %13 = load double, ptr %12, align 8, !tbaa !34
  %14 = fmul double %8, %13
  %15 = tail call double @llvm.fmuladd.f64(double %11, double %6, double %14)
  %16 = fmul double %15, %15
  %17 = fmul double %15, 2.000000e+00
  %18 = fmul double %13, %13
  %19 = tail call double @llvm.fmuladd.f64(double %11, double %11, double %18)
  %20 = getelementptr inbounds double, ptr %2, i64 1
  %21 = load double, ptr %20, align 8, !tbaa !34
  %22 = fcmp olt double %21, 0xBE7AD7F29ABCAF48
  %23 = fcmp ogt double %21, 0x3E7AD7F29ABCAF48
  %24 = or i1 %22, %23
  %25 = getelementptr inbounds %"struct.pov::BCyl_Struct", ptr %0, i64 0, i32 2
  %26 = load i16, ptr %25, align 2, !tbaa !38
  %27 = icmp sgt i16 %26, 0
  br i1 %24, label %33, label %28

28:                                               ; preds = %3
  br i1 %27, label %29, label %61

29:                                               ; preds = %28
  %30 = zext nneg i16 %26 to i64
  %31 = getelementptr inbounds %"struct.pov::BCyl_Struct", ptr %0, i64 0, i32 6
  %32 = load ptr, ptr %31, align 8, !tbaa !43
  br label %56

33:                                               ; preds = %3
  br i1 %27, label %34, label %61

34:                                               ; preds = %33
  %35 = zext nneg i16 %26 to i64
  %36 = getelementptr inbounds %"struct.pov::BCyl_Struct", ptr %0, i64 0, i32 4
  %37 = load ptr, ptr %36, align 8, !tbaa !44
  %38 = getelementptr inbounds double, ptr %1, i64 1
  %39 = getelementptr inbounds %"struct.pov::BCyl_Struct", ptr %0, i64 0, i32 6
  %40 = load ptr, ptr %39, align 8, !tbaa !43
  br label %41

41:                                               ; preds = %34, %41
  %42 = phi i64 [ 0, %34 ], [ %54, %41 ]
  %43 = getelementptr inbounds double, ptr %37, i64 %42
  %44 = load double, ptr %43, align 8, !tbaa !34
  %45 = load double, ptr %38, align 8, !tbaa !34
  %46 = fsub double %44, %45
  %47 = load double, ptr %20, align 8, !tbaa !34
  %48 = fdiv double %46, %47
  %49 = getelementptr inbounds %"struct.pov::BCyl_Intersection_Struct", ptr %40, i64 %42
  store i32 1, ptr %49, align 8, !tbaa !45
  %50 = getelementptr inbounds %"struct.pov::BCyl_Intersection_Struct", ptr %40, i64 %42, i32 1
  store double %48, ptr %50, align 8, !tbaa !34
  %51 = tail call double @llvm.fmuladd.f64(double %10, double %48, double %17)
  %52 = tail call double @llvm.fmuladd.f64(double %48, double %51, double %19)
  %53 = getelementptr inbounds %"struct.pov::BCyl_Intersection_Struct", ptr %40, i64 %42, i32 2
  store double %52, ptr %53, align 8, !tbaa !34
  %54 = add nuw nsw i64 %42, 1
  %55 = icmp eq i64 %54, %35
  br i1 %55, label %61, label %41, !llvm.loop !47

56:                                               ; preds = %29, %56
  %57 = phi i64 [ 0, %29 ], [ %59, %56 ]
  %58 = getelementptr inbounds %"struct.pov::BCyl_Intersection_Struct", ptr %32, i64 %57
  store i32 0, ptr %58, align 8, !tbaa !45
  %59 = add nuw nsw i64 %57, 1
  %60 = icmp eq i64 %59, %30
  br i1 %60, label %61, label %56, !llvm.loop !50

61:                                               ; preds = %56, %41, %28, %33
  %62 = getelementptr inbounds %"struct.pov::BCyl_Struct", ptr %0, i64 0, i32 1
  %63 = load i16, ptr %62, align 4, !tbaa !51
  %64 = icmp sgt i16 %63, 0
  br i1 %64, label %65, label %106

65:                                               ; preds = %61
  %66 = getelementptr inbounds %"struct.pov::BCyl_Struct", ptr %0, i64 0, i32 5
  %67 = getelementptr inbounds %"struct.pov::BCyl_Struct", ptr %0, i64 0, i32 3
  %68 = fneg double %10
  %69 = fneg double %15
  %70 = getelementptr inbounds double, ptr %1, i64 1
  br label %71

71:                                               ; preds = %65, %101
  %72 = phi i64 [ 0, %65 ], [ %102, %101 ]
  %73 = load ptr, ptr %66, align 8, !tbaa !52
  %74 = getelementptr inbounds %"struct.pov::BCyl_Intersection_Struct", ptr %73, i64 %72
  store i32 0, ptr %74, align 8, !tbaa !45
  %75 = load ptr, ptr %67, align 8, !tbaa !53
  %76 = getelementptr inbounds double, ptr %75, i64 %72
  %77 = load double, ptr %76, align 8, !tbaa !34
  %78 = fcmp ogt double %77, 0x3E7AD7F29ABCAF48
  br i1 %78, label %79, label %101

79:                                               ; preds = %71
  %80 = fsub double %19, %77
  %81 = tail call double @llvm.fmuladd.f64(double %68, double %80, double %16)
  %82 = fcmp ogt double %81, 0.000000e+00
  br i1 %82, label %83, label %101

83:                                               ; preds = %79
  %84 = tail call double @sqrt(double noundef %81) #7
  %85 = fsub double %84, %15
  %86 = fdiv double %85, %10
  %87 = load ptr, ptr %66, align 8, !tbaa !52
  %88 = getelementptr inbounds %"struct.pov::BCyl_Intersection_Struct", ptr %87, i64 %72
  store i32 2, ptr %88, align 8, !tbaa !45
  %89 = getelementptr inbounds %"struct.pov::BCyl_Intersection_Struct", ptr %87, i64 %72, i32 1
  store double %86, ptr %89, align 8, !tbaa !34
  %90 = load double, ptr %70, align 8, !tbaa !34
  %91 = load double, ptr %20, align 8, !tbaa !34
  %92 = tail call double @llvm.fmuladd.f64(double %86, double %91, double %90)
  %93 = getelementptr inbounds %"struct.pov::BCyl_Intersection_Struct", ptr %87, i64 %72, i32 2
  store double %92, ptr %93, align 8, !tbaa !34
  %94 = fsub double %69, %84
  %95 = fdiv double %94, %10
  %96 = getelementptr inbounds %"struct.pov::BCyl_Intersection_Struct", ptr %87, i64 %72, i32 1, i64 1
  store double %95, ptr %96, align 8, !tbaa !34
  %97 = load double, ptr %70, align 8, !tbaa !34
  %98 = load double, ptr %20, align 8, !tbaa !34
  %99 = tail call double @llvm.fmuladd.f64(double %95, double %98, double %97)
  %100 = getelementptr inbounds %"struct.pov::BCyl_Intersection_Struct", ptr %87, i64 %72, i32 2, i64 1
  store double %99, ptr %100, align 8, !tbaa !34
  br label %101

101:                                              ; preds = %83, %79, %71
  %102 = add nuw nsw i64 %72, 1
  %103 = load i16, ptr %62, align 4, !tbaa !51
  %104 = sext i16 %103 to i64
  %105 = icmp slt i64 %102, %104
  br i1 %105, label %71, label %106, !llvm.loop !54

106:                                              ; preds = %101, %61
  %107 = getelementptr inbounds %"struct.pov::BCyl_Struct", ptr %0, i64 0, i32 7
  %108 = load ptr, ptr %107, align 8, !tbaa !55
  %109 = load i32, ptr %0, align 8, !tbaa !56
  %110 = icmp sgt i32 %109, 0
  br i1 %110, label %111, label %512

111:                                              ; preds = %106
  %112 = getelementptr inbounds %"struct.pov::BCyl_Struct", ptr %0, i64 0, i32 8
  %113 = getelementptr inbounds %"struct.pov::BCyl_Struct", ptr %0, i64 0, i32 6
  %114 = getelementptr inbounds %"struct.pov::BCyl_Struct", ptr %0, i64 0, i32 3
  %115 = getelementptr inbounds %"struct.pov::BCyl_Struct", ptr %0, i64 0, i32 3
  %116 = getelementptr inbounds %"struct.pov::BCyl_Struct", ptr %0, i64 0, i32 5
  %117 = getelementptr inbounds %"struct.pov::BCyl_Struct", ptr %0, i64 0, i32 4
  %118 = getelementptr inbounds %"struct.pov::BCyl_Struct", ptr %0, i64 0, i32 4
  %119 = getelementptr inbounds [8 x double], ptr %4, i64 0, i64 1
  %120 = getelementptr inbounds [8 x double], ptr %4, i64 0, i64 2
  %121 = getelementptr inbounds [8 x double], ptr %4, i64 0, i64 3
  %122 = getelementptr inbounds [8 x double], ptr %4, i64 0, i64 1
  br label %123

123:                                              ; preds = %111, %506
  %124 = phi i64 [ 0, %111 ], [ %508, %506 ]
  %125 = phi i32 [ 0, %111 ], [ %507, %506 ]
  %126 = load ptr, ptr %112, align 8, !tbaa !57
  %127 = getelementptr inbounds %"struct.pov::BCyl_Entry_Struct", ptr %126, i64 %124
  %128 = load ptr, ptr %113, align 8, !tbaa !43
  %129 = getelementptr inbounds %"struct.pov::BCyl_Entry_Struct", ptr %126, i64 %124, i32 3
  %130 = load i16, ptr %129, align 2, !tbaa !58
  %131 = sext i16 %130 to i64
  %132 = getelementptr inbounds %"struct.pov::BCyl_Intersection_Struct", ptr %128, i64 %131
  %133 = load i32, ptr %132, align 8, !tbaa !45
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %154, label %135

135:                                              ; preds = %123
  %136 = getelementptr inbounds %"struct.pov::BCyl_Intersection_Struct", ptr %128, i64 %131, i32 2
  %137 = load double, ptr %136, align 8, !tbaa !34
  %138 = load ptr, ptr %114, align 8, !tbaa !53
  %139 = load i16, ptr %127, align 2, !tbaa !60
  %140 = sext i16 %139 to i64
  %141 = getelementptr inbounds double, ptr %138, i64 %140
  %142 = load double, ptr %141, align 8, !tbaa !34
  %143 = fcmp ult double %137, %142
  br i1 %143, label %154, label %144

144:                                              ; preds = %135
  %145 = getelementptr inbounds %"struct.pov::BCyl_Entry_Struct", ptr %126, i64 %124, i32 1
  %146 = load i16, ptr %145, align 2, !tbaa !61
  %147 = sext i16 %146 to i64
  %148 = getelementptr inbounds double, ptr %138, i64 %147
  %149 = load double, ptr %148, align 8, !tbaa !34
  %150 = fcmp ugt double %137, %149
  br i1 %150, label %154, label %151

151:                                              ; preds = %144
  %152 = getelementptr inbounds %"struct.pov::BCyl_Intersection_Struct", ptr %128, i64 %131, i32 1
  %153 = load double, ptr %152, align 8, !tbaa !34
  store double %153, ptr %4, align 16, !tbaa !34
  br label %154

154:                                              ; preds = %151, %144, %135, %123
  %155 = phi i32 [ 1, %151 ], [ 0, %144 ], [ 0, %135 ], [ 0, %123 ]
  %156 = getelementptr inbounds %"struct.pov::BCyl_Entry_Struct", ptr %126, i64 %124, i32 2
  %157 = load i16, ptr %156, align 2, !tbaa !62
  %158 = sext i16 %157 to i64
  %159 = getelementptr inbounds %"struct.pov::BCyl_Intersection_Struct", ptr %128, i64 %158
  %160 = load i32, ptr %159, align 8, !tbaa !45
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %184, label %162

162:                                              ; preds = %154
  %163 = getelementptr inbounds %"struct.pov::BCyl_Intersection_Struct", ptr %128, i64 %158, i32 2
  %164 = load double, ptr %163, align 8, !tbaa !34
  %165 = load ptr, ptr %115, align 8, !tbaa !53
  %166 = load i16, ptr %127, align 2, !tbaa !60
  %167 = sext i16 %166 to i64
  %168 = getelementptr inbounds double, ptr %165, i64 %167
  %169 = load double, ptr %168, align 8, !tbaa !34
  %170 = fcmp ult double %164, %169
  br i1 %170, label %184, label %171

171:                                              ; preds = %162
  %172 = getelementptr inbounds %"struct.pov::BCyl_Entry_Struct", ptr %126, i64 %124, i32 1
  %173 = load i16, ptr %172, align 2, !tbaa !61
  %174 = sext i16 %173 to i64
  %175 = getelementptr inbounds double, ptr %165, i64 %174
  %176 = load double, ptr %175, align 8, !tbaa !34
  %177 = fcmp ugt double %164, %176
  br i1 %177, label %184, label %178

178:                                              ; preds = %171
  %179 = getelementptr inbounds %"struct.pov::BCyl_Intersection_Struct", ptr %128, i64 %158, i32 1
  %180 = load double, ptr %179, align 8, !tbaa !34
  %181 = add nuw nsw i32 %155, 1
  %182 = zext nneg i32 %155 to i64
  %183 = getelementptr inbounds double, ptr %4, i64 %182
  store double %180, ptr %183, align 8, !tbaa !34
  br label %184

184:                                              ; preds = %178, %171, %162, %154
  %185 = phi i32 [ %181, %178 ], [ %155, %171 ], [ %155, %162 ], [ %155, %154 ]
  %186 = load ptr, ptr %116, align 8, !tbaa !52
  %187 = load i16, ptr %127, align 2, !tbaa !60
  %188 = sext i16 %187 to i64
  %189 = getelementptr inbounds %"struct.pov::BCyl_Intersection_Struct", ptr %186, i64 %188
  %190 = load i32, ptr %189, align 8, !tbaa !45
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %224, label %192

192:                                              ; preds = %184
  %193 = getelementptr inbounds %"struct.pov::BCyl_Intersection_Struct", ptr %186, i64 %188, i32 2
  %194 = load double, ptr %193, align 8, !tbaa !34
  %195 = load ptr, ptr %117, align 8, !tbaa !44
  %196 = getelementptr inbounds double, ptr %195, i64 %158
  %197 = load double, ptr %196, align 8, !tbaa !34
  %198 = fcmp ult double %194, %197
  br i1 %198, label %209, label %199

199:                                              ; preds = %192
  %200 = getelementptr inbounds double, ptr %195, i64 %131
  %201 = load double, ptr %200, align 8, !tbaa !34
  %202 = fcmp ugt double %194, %201
  br i1 %202, label %209, label %203

203:                                              ; preds = %199
  %204 = getelementptr inbounds %"struct.pov::BCyl_Intersection_Struct", ptr %186, i64 %188, i32 1
  %205 = load double, ptr %204, align 8, !tbaa !34
  %206 = add nuw nsw i32 %185, 1
  %207 = zext nneg i32 %185 to i64
  %208 = getelementptr inbounds double, ptr %4, i64 %207
  store double %205, ptr %208, align 8, !tbaa !34
  br label %209

209:                                              ; preds = %203, %199, %192
  %210 = phi i32 [ %206, %203 ], [ %185, %199 ], [ %185, %192 ]
  %211 = getelementptr inbounds %"struct.pov::BCyl_Intersection_Struct", ptr %186, i64 %188, i32 2, i64 1
  %212 = load double, ptr %211, align 8, !tbaa !34
  %213 = fcmp ult double %212, %197
  br i1 %213, label %224, label %214

214:                                              ; preds = %209
  %215 = getelementptr inbounds double, ptr %195, i64 %131
  %216 = load double, ptr %215, align 8, !tbaa !34
  %217 = fcmp ugt double %212, %216
  br i1 %217, label %224, label %218

218:                                              ; preds = %214
  %219 = getelementptr inbounds %"struct.pov::BCyl_Intersection_Struct", ptr %186, i64 %188, i32 1, i64 1
  %220 = load double, ptr %219, align 8, !tbaa !34
  %221 = add nsw i32 %210, 1
  %222 = sext i32 %210 to i64
  %223 = getelementptr inbounds double, ptr %4, i64 %222
  store double %220, ptr %223, align 8, !tbaa !34
  br label %224

224:                                              ; preds = %218, %214, %209, %184
  %225 = phi i32 [ %221, %218 ], [ %210, %214 ], [ %210, %209 ], [ %185, %184 ]
  %226 = getelementptr inbounds %"struct.pov::BCyl_Entry_Struct", ptr %126, i64 %124, i32 1
  %227 = load i16, ptr %226, align 2, !tbaa !61
  %228 = sext i16 %227 to i64
  %229 = getelementptr inbounds %"struct.pov::BCyl_Intersection_Struct", ptr %186, i64 %228
  %230 = load i32, ptr %229, align 8, !tbaa !45
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %264, label %232

232:                                              ; preds = %224
  %233 = getelementptr inbounds %"struct.pov::BCyl_Intersection_Struct", ptr %186, i64 %228, i32 2
  %234 = load double, ptr %233, align 8, !tbaa !34
  %235 = load ptr, ptr %118, align 8, !tbaa !44
  %236 = getelementptr inbounds double, ptr %235, i64 %158
  %237 = load double, ptr %236, align 8, !tbaa !34
  %238 = fcmp ult double %234, %237
  br i1 %238, label %249, label %239

239:                                              ; preds = %232
  %240 = getelementptr inbounds double, ptr %235, i64 %131
  %241 = load double, ptr %240, align 8, !tbaa !34
  %242 = fcmp ugt double %234, %241
  br i1 %242, label %249, label %243

243:                                              ; preds = %239
  %244 = getelementptr inbounds %"struct.pov::BCyl_Intersection_Struct", ptr %186, i64 %228, i32 1
  %245 = load double, ptr %244, align 8, !tbaa !34
  %246 = add nsw i32 %225, 1
  %247 = sext i32 %225 to i64
  %248 = getelementptr inbounds double, ptr %4, i64 %247
  store double %245, ptr %248, align 8, !tbaa !34
  br label %249

249:                                              ; preds = %243, %239, %232
  %250 = phi i32 [ %246, %243 ], [ %225, %239 ], [ %225, %232 ]
  %251 = getelementptr inbounds %"struct.pov::BCyl_Intersection_Struct", ptr %186, i64 %228, i32 2, i64 1
  %252 = load double, ptr %251, align 8, !tbaa !34
  %253 = fcmp ult double %252, %237
  br i1 %253, label %264, label %254

254:                                              ; preds = %249
  %255 = getelementptr inbounds double, ptr %235, i64 %131
  %256 = load double, ptr %255, align 8, !tbaa !34
  %257 = fcmp ugt double %252, %256
  br i1 %257, label %264, label %258

258:                                              ; preds = %254
  %259 = getelementptr inbounds %"struct.pov::BCyl_Intersection_Struct", ptr %186, i64 %228, i32 1, i64 1
  %260 = load double, ptr %259, align 8, !tbaa !34
  %261 = add nsw i32 %250, 1
  %262 = sext i32 %250 to i64
  %263 = getelementptr inbounds double, ptr %4, i64 %262
  store double %260, ptr %263, align 8, !tbaa !34
  br label %264

264:                                              ; preds = %258, %254, %249, %224
  %265 = phi i32 [ %261, %258 ], [ %250, %254 ], [ %250, %249 ], [ %225, %224 ]
  %266 = icmp sgt i32 %265, 0
  br i1 %266, label %267, label %289

267:                                              ; preds = %264, %286
  %268 = phi i32 [ %270, %286 ], [ %265, %264 ]
  %269 = phi i32 [ %287, %286 ], [ 0, %264 ]
  %270 = add nsw i32 %268, -1
  %271 = sub nsw i32 %269, %265
  %272 = icmp slt i32 %271, -1
  br i1 %272, label %273, label %286

273:                                              ; preds = %267
  %274 = zext i32 %270 to i64
  br label %275

275:                                              ; preds = %273, %284
  %276 = phi i64 [ 0, %273 ], [ %279, %284 ]
  %277 = getelementptr inbounds double, ptr %4, i64 %276
  %278 = load double, ptr %277, align 8, !tbaa !34
  %279 = add nuw nsw i64 %276, 1
  %280 = getelementptr inbounds double, ptr %4, i64 %279
  %281 = load double, ptr %280, align 8, !tbaa !34
  %282 = fcmp ogt double %278, %281
  br i1 %282, label %283, label %284

283:                                              ; preds = %275
  store double %281, ptr %277, align 8, !tbaa !34
  store double %278, ptr %280, align 8, !tbaa !34
  br label %284

284:                                              ; preds = %283, %275
  %285 = icmp eq i64 %279, %274
  br i1 %285, label %286, label %275, !llvm.loop !63

286:                                              ; preds = %284, %267
  %287 = add nuw nsw i32 %269, 1
  %288 = icmp eq i32 %287, %265
  br i1 %288, label %289, label %267, !llvm.loop !64

289:                                              ; preds = %286, %264
  switch i32 %265, label %476 [
    i32 0, label %506
    i32 2, label %290
    i32 4, label %352
  ]

290:                                              ; preds = %289
  %291 = load double, ptr %4, align 16, !tbaa !34
  %292 = fcmp ogt double %291, 0x3E7AD7F29ABCAF48
  br i1 %292, label %293, label %322

293:                                              ; preds = %290
  %294 = sext i32 %125 to i64
  %295 = getelementptr inbounds %"struct.pov::BCyl_Intersection_Struct", ptr %108, i64 %294
  %296 = trunc i64 %124 to i32
  store i32 %296, ptr %295, align 8, !tbaa.struct !65
  %297 = getelementptr inbounds i8, ptr %295, i64 8
  store double %291, ptr %297, align 8, !tbaa.struct !68
  %298 = getelementptr inbounds i8, ptr %295, i64 16
  store double 0.000000e+00, ptr %298, align 8, !tbaa.struct !69
  %299 = getelementptr inbounds i8, ptr %295, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %299, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !70
  br label %300

300:                                              ; preds = %300, %293
  %301 = phi i64 [ %305, %300 ], [ 0, %293 ]
  %302 = getelementptr inbounds %"struct.pov::BCyl_Intersection_Struct", ptr %108, i64 %301, i32 1
  %303 = load double, ptr %302, align 8, !tbaa !34
  %304 = fcmp ogt double %291, %303
  %305 = add nuw i64 %301, 1
  br i1 %304, label %300, label %306, !llvm.loop !71

306:                                              ; preds = %300
  %307 = trunc i64 %301 to i32
  %308 = icmp sgt i32 %125, %307
  br i1 %308, label %309, label %320

309:                                              ; preds = %306
  %310 = getelementptr %"struct.pov::BCyl_Intersection_Struct", ptr %108, i64 %301
  %311 = getelementptr %"struct.pov::BCyl_Intersection_Struct", ptr %310, i64 1
  %312 = sub nsw i32 %125, %307
  %313 = sext i32 %312 to i64
  %314 = mul nsw i64 %313, 40
  %315 = tail call noundef ptr @_ZN3pov11pov_memmoveEPvS0_m(ptr noundef %311, ptr noundef %310, i64 noundef %314)
  %316 = trunc i64 %124 to i32
  store i32 %316, ptr %310, align 8, !tbaa.struct !65
  %317 = getelementptr inbounds i8, ptr %310, i64 8
  store double %291, ptr %317, align 8, !tbaa.struct !68
  %318 = getelementptr inbounds i8, ptr %310, i64 16
  store double 0.000000e+00, ptr %318, align 8, !tbaa.struct !69
  %319 = getelementptr inbounds i8, ptr %310, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %319, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !70
  br label %320

320:                                              ; preds = %306, %309
  %321 = add nsw i32 %125, 1
  br label %506

322:                                              ; preds = %290
  %323 = load double, ptr %122, align 8, !tbaa !34
  %324 = fcmp ogt double %323, 0x3E7AD7F29ABCAF48
  br i1 %324, label %325, label %506

325:                                              ; preds = %322
  %326 = sext i32 %125 to i64
  %327 = getelementptr inbounds %"struct.pov::BCyl_Intersection_Struct", ptr %108, i64 %326
  %328 = trunc i64 %124 to i32
  store i32 %328, ptr %327, align 8, !tbaa.struct !65
  %329 = getelementptr inbounds i8, ptr %327, i64 8
  %330 = getelementptr inbounds i8, ptr %327, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %329, i8 0, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %330, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !70
  br label %331

331:                                              ; preds = %331, %325
  %332 = phi i64 [ %336, %331 ], [ 0, %325 ]
  %333 = getelementptr inbounds %"struct.pov::BCyl_Intersection_Struct", ptr %108, i64 %332, i32 1
  %334 = load double, ptr %333, align 8, !tbaa !34
  %335 = fcmp olt double %334, 0.000000e+00
  %336 = add nuw i64 %332, 1
  br i1 %335, label %331, label %337, !llvm.loop !71

337:                                              ; preds = %331
  %338 = trunc i64 %332 to i32
  %339 = icmp sgt i32 %125, %338
  br i1 %339, label %340, label %350

340:                                              ; preds = %337
  %341 = getelementptr %"struct.pov::BCyl_Intersection_Struct", ptr %108, i64 %332
  %342 = getelementptr %"struct.pov::BCyl_Intersection_Struct", ptr %341, i64 1
  %343 = sub nsw i32 %125, %338
  %344 = sext i32 %343 to i64
  %345 = mul nsw i64 %344, 40
  %346 = tail call noundef ptr @_ZN3pov11pov_memmoveEPvS0_m(ptr noundef %342, ptr noundef %341, i64 noundef %345)
  %347 = trunc i64 %124 to i32
  store i32 %347, ptr %341, align 8, !tbaa.struct !65
  %348 = getelementptr inbounds i8, ptr %341, i64 8
  %349 = getelementptr inbounds i8, ptr %341, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %348, i8 0, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %349, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !70
  br label %350

350:                                              ; preds = %337, %340
  %351 = add nsw i32 %125, 1
  br label %506

352:                                              ; preds = %289
  %353 = load double, ptr %4, align 16, !tbaa !34
  %354 = fcmp ogt double %353, 0x3E7AD7F29ABCAF48
  br i1 %354, label %355, label %384

355:                                              ; preds = %352
  %356 = sext i32 %125 to i64
  %357 = getelementptr inbounds %"struct.pov::BCyl_Intersection_Struct", ptr %108, i64 %356
  %358 = trunc i64 %124 to i32
  store i32 %358, ptr %357, align 8, !tbaa.struct !65
  %359 = getelementptr inbounds i8, ptr %357, i64 8
  store double %353, ptr %359, align 8, !tbaa.struct !68
  %360 = getelementptr inbounds i8, ptr %357, i64 16
  store double 0.000000e+00, ptr %360, align 8, !tbaa.struct !69
  %361 = getelementptr inbounds i8, ptr %357, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %361, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !70
  br label %362

362:                                              ; preds = %362, %355
  %363 = phi i64 [ %367, %362 ], [ 0, %355 ]
  %364 = getelementptr inbounds %"struct.pov::BCyl_Intersection_Struct", ptr %108, i64 %363, i32 1
  %365 = load double, ptr %364, align 8, !tbaa !34
  %366 = fcmp ogt double %353, %365
  %367 = add nuw i64 %363, 1
  br i1 %366, label %362, label %368, !llvm.loop !71

368:                                              ; preds = %362
  %369 = trunc i64 %363 to i32
  %370 = icmp sgt i32 %125, %369
  br i1 %370, label %371, label %382

371:                                              ; preds = %368
  %372 = getelementptr %"struct.pov::BCyl_Intersection_Struct", ptr %108, i64 %363
  %373 = getelementptr %"struct.pov::BCyl_Intersection_Struct", ptr %372, i64 1
  %374 = sub nsw i32 %125, %369
  %375 = sext i32 %374 to i64
  %376 = mul nsw i64 %375, 40
  %377 = tail call noundef ptr @_ZN3pov11pov_memmoveEPvS0_m(ptr noundef %373, ptr noundef %372, i64 noundef %376)
  %378 = trunc i64 %124 to i32
  store i32 %378, ptr %372, align 8, !tbaa.struct !65
  %379 = getelementptr inbounds i8, ptr %372, i64 8
  store double %353, ptr %379, align 8, !tbaa.struct !68
  %380 = getelementptr inbounds i8, ptr %372, i64 16
  store double 0.000000e+00, ptr %380, align 8, !tbaa.struct !69
  %381 = getelementptr inbounds i8, ptr %372, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %381, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !70
  br label %382

382:                                              ; preds = %368, %371
  %383 = add nsw i32 %125, 1
  br label %506

384:                                              ; preds = %352
  %385 = load double, ptr %119, align 8, !tbaa !34
  %386 = fcmp ogt double %385, 0x3E7AD7F29ABCAF48
  br i1 %386, label %387, label %414

387:                                              ; preds = %384
  %388 = sext i32 %125 to i64
  %389 = getelementptr inbounds %"struct.pov::BCyl_Intersection_Struct", ptr %108, i64 %388
  %390 = trunc i64 %124 to i32
  store i32 %390, ptr %389, align 8, !tbaa.struct !65
  %391 = getelementptr inbounds i8, ptr %389, i64 8
  %392 = getelementptr inbounds i8, ptr %389, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %391, i8 0, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %392, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !70
  br label %393

393:                                              ; preds = %393, %387
  %394 = phi i64 [ %398, %393 ], [ 0, %387 ]
  %395 = getelementptr inbounds %"struct.pov::BCyl_Intersection_Struct", ptr %108, i64 %394, i32 1
  %396 = load double, ptr %395, align 8, !tbaa !34
  %397 = fcmp olt double %396, 0.000000e+00
  %398 = add nuw i64 %394, 1
  br i1 %397, label %393, label %399, !llvm.loop !71

399:                                              ; preds = %393
  %400 = trunc i64 %394 to i32
  %401 = icmp sgt i32 %125, %400
  br i1 %401, label %402, label %412

402:                                              ; preds = %399
  %403 = getelementptr %"struct.pov::BCyl_Intersection_Struct", ptr %108, i64 %394
  %404 = getelementptr %"struct.pov::BCyl_Intersection_Struct", ptr %403, i64 1
  %405 = sub nsw i32 %125, %400
  %406 = sext i32 %405 to i64
  %407 = mul nsw i64 %406, 40
  %408 = tail call noundef ptr @_ZN3pov11pov_memmoveEPvS0_m(ptr noundef %404, ptr noundef %403, i64 noundef %407)
  %409 = trunc i64 %124 to i32
  store i32 %409, ptr %403, align 8, !tbaa.struct !65
  %410 = getelementptr inbounds i8, ptr %403, i64 8
  %411 = getelementptr inbounds i8, ptr %403, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %410, i8 0, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %411, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !70
  br label %412

412:                                              ; preds = %399, %402
  %413 = add nsw i32 %125, 1
  br label %506

414:                                              ; preds = %384
  %415 = load double, ptr %120, align 16, !tbaa !34
  %416 = fcmp ogt double %415, 0x3E7AD7F29ABCAF48
  br i1 %416, label %417, label %446

417:                                              ; preds = %414
  %418 = sext i32 %125 to i64
  %419 = getelementptr inbounds %"struct.pov::BCyl_Intersection_Struct", ptr %108, i64 %418
  %420 = trunc i64 %124 to i32
  store i32 %420, ptr %419, align 8, !tbaa.struct !65
  %421 = getelementptr inbounds i8, ptr %419, i64 8
  store double %415, ptr %421, align 8, !tbaa.struct !68
  %422 = getelementptr inbounds i8, ptr %419, i64 16
  store double 0.000000e+00, ptr %422, align 8, !tbaa.struct !69
  %423 = getelementptr inbounds i8, ptr %419, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %423, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !70
  br label %424

424:                                              ; preds = %424, %417
  %425 = phi i64 [ %429, %424 ], [ 0, %417 ]
  %426 = getelementptr inbounds %"struct.pov::BCyl_Intersection_Struct", ptr %108, i64 %425, i32 1
  %427 = load double, ptr %426, align 8, !tbaa !34
  %428 = fcmp ogt double %415, %427
  %429 = add nuw i64 %425, 1
  br i1 %428, label %424, label %430, !llvm.loop !71

430:                                              ; preds = %424
  %431 = trunc i64 %425 to i32
  %432 = icmp sgt i32 %125, %431
  br i1 %432, label %433, label %444

433:                                              ; preds = %430
  %434 = getelementptr %"struct.pov::BCyl_Intersection_Struct", ptr %108, i64 %425
  %435 = getelementptr %"struct.pov::BCyl_Intersection_Struct", ptr %434, i64 1
  %436 = sub nsw i32 %125, %431
  %437 = sext i32 %436 to i64
  %438 = mul nsw i64 %437, 40
  %439 = tail call noundef ptr @_ZN3pov11pov_memmoveEPvS0_m(ptr noundef %435, ptr noundef %434, i64 noundef %438)
  %440 = trunc i64 %124 to i32
  store i32 %440, ptr %434, align 8, !tbaa.struct !65
  %441 = getelementptr inbounds i8, ptr %434, i64 8
  store double %415, ptr %441, align 8, !tbaa.struct !68
  %442 = getelementptr inbounds i8, ptr %434, i64 16
  store double 0.000000e+00, ptr %442, align 8, !tbaa.struct !69
  %443 = getelementptr inbounds i8, ptr %434, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %443, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !70
  br label %444

444:                                              ; preds = %430, %433
  %445 = add nsw i32 %125, 1
  br label %506

446:                                              ; preds = %414
  %447 = load double, ptr %121, align 8, !tbaa !34
  %448 = fcmp ogt double %447, 0x3E7AD7F29ABCAF48
  br i1 %448, label %449, label %506

449:                                              ; preds = %446
  %450 = sext i32 %125 to i64
  %451 = getelementptr inbounds %"struct.pov::BCyl_Intersection_Struct", ptr %108, i64 %450
  %452 = trunc i64 %124 to i32
  store i32 %452, ptr %451, align 8, !tbaa.struct !65
  %453 = getelementptr inbounds i8, ptr %451, i64 8
  %454 = getelementptr inbounds i8, ptr %451, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %453, i8 0, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %454, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !70
  br label %455

455:                                              ; preds = %455, %449
  %456 = phi i64 [ %460, %455 ], [ 0, %449 ]
  %457 = getelementptr inbounds %"struct.pov::BCyl_Intersection_Struct", ptr %108, i64 %456, i32 1
  %458 = load double, ptr %457, align 8, !tbaa !34
  %459 = fcmp olt double %458, 0.000000e+00
  %460 = add nuw i64 %456, 1
  br i1 %459, label %455, label %461, !llvm.loop !71

461:                                              ; preds = %455
  %462 = trunc i64 %456 to i32
  %463 = icmp sgt i32 %125, %462
  br i1 %463, label %464, label %474

464:                                              ; preds = %461
  %465 = getelementptr %"struct.pov::BCyl_Intersection_Struct", ptr %108, i64 %456
  %466 = getelementptr %"struct.pov::BCyl_Intersection_Struct", ptr %465, i64 1
  %467 = sub nsw i32 %125, %462
  %468 = sext i32 %467 to i64
  %469 = mul nsw i64 %468, 40
  %470 = tail call noundef ptr @_ZN3pov11pov_memmoveEPvS0_m(ptr noundef %466, ptr noundef %465, i64 noundef %469)
  %471 = trunc i64 %124 to i32
  store i32 %471, ptr %465, align 8, !tbaa.struct !65
  %472 = getelementptr inbounds i8, ptr %465, i64 8
  %473 = getelementptr inbounds i8, ptr %465, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %472, i8 0, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %473, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !70
  br label %474

474:                                              ; preds = %461, %464
  %475 = add nsw i32 %125, 1
  br label %506

476:                                              ; preds = %289
  %477 = load double, ptr %4, align 16, !tbaa !34
  %478 = sext i32 %125 to i64
  %479 = getelementptr inbounds %"struct.pov::BCyl_Intersection_Struct", ptr %108, i64 %478
  %480 = trunc i64 %124 to i32
  store i32 %480, ptr %479, align 8, !tbaa.struct !65
  %481 = getelementptr inbounds i8, ptr %479, i64 8
  store double %477, ptr %481, align 8, !tbaa.struct !68
  %482 = getelementptr inbounds i8, ptr %479, i64 16
  store double 0.000000e+00, ptr %482, align 8, !tbaa.struct !69
  %483 = getelementptr inbounds i8, ptr %479, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %483, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !70
  br label %484

484:                                              ; preds = %484, %476
  %485 = phi i64 [ %489, %484 ], [ 0, %476 ]
  %486 = getelementptr inbounds %"struct.pov::BCyl_Intersection_Struct", ptr %108, i64 %485, i32 1
  %487 = load double, ptr %486, align 8, !tbaa !34
  %488 = fcmp ogt double %477, %487
  %489 = add nuw i64 %485, 1
  br i1 %488, label %484, label %490, !llvm.loop !71

490:                                              ; preds = %484
  %491 = trunc i64 %485 to i32
  %492 = icmp sgt i32 %125, %491
  br i1 %492, label %493, label %504

493:                                              ; preds = %490
  %494 = getelementptr %"struct.pov::BCyl_Intersection_Struct", ptr %108, i64 %485
  %495 = getelementptr %"struct.pov::BCyl_Intersection_Struct", ptr %494, i64 1
  %496 = sub nsw i32 %125, %491
  %497 = sext i32 %496 to i64
  %498 = mul nsw i64 %497, 40
  %499 = tail call noundef ptr @_ZN3pov11pov_memmoveEPvS0_m(ptr noundef %495, ptr noundef %494, i64 noundef %498)
  %500 = trunc i64 %124 to i32
  store i32 %500, ptr %494, align 8, !tbaa.struct !65
  %501 = getelementptr inbounds i8, ptr %494, i64 8
  store double %477, ptr %501, align 8, !tbaa.struct !68
  %502 = getelementptr inbounds i8, ptr %494, i64 16
  store double 0.000000e+00, ptr %502, align 8, !tbaa.struct !69
  %503 = getelementptr inbounds i8, ptr %494, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %503, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !70
  br label %504

504:                                              ; preds = %490, %493
  %505 = add nsw i32 %125, 1
  br label %506

506:                                              ; preds = %289, %504, %322, %350, %320, %412, %446, %474, %444, %382
  %507 = phi i32 [ %505, %504 ], [ %383, %382 ], [ %413, %412 ], [ %445, %444 ], [ %475, %474 ], [ %125, %446 ], [ %321, %320 ], [ %351, %350 ], [ %125, %322 ], [ %125, %289 ]
  %508 = add nuw nsw i64 %124, 1
  %509 = load i32, ptr %0, align 8, !tbaa !56
  %510 = sext i32 %509 to i64
  %511 = icmp slt i64 %508, %510
  br i1 %511, label %123, label %512, !llvm.loop !72

512:                                              ; preds = %506, %106
  %513 = phi i32 [ 0, %106 ], [ %507, %506 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5)
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #7
  ret i32 %513
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN3pov11Create_BCylEiPdS0_S0_S0_(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4) local_unnamed_addr #0 {
  %6 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef 56, ptr noundef nonnull @.str, i32 noundef 551, ptr noundef nonnull @.str.1)
  store i32 %0, ptr %6, align 8, !tbaa !56
  %7 = sext i32 %0 to i64
  %8 = shl nsw i64 %7, 3
  %9 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef %8, ptr noundef nonnull @.str, i32 noundef 557, ptr noundef nonnull @.str.2)
  %10 = getelementptr inbounds %"struct.pov::BCyl_Struct", ptr %6, i64 0, i32 8
  store ptr %9, ptr %10, align 8, !tbaa !57
  %11 = load i32, ptr %6, align 8, !tbaa !56
  %12 = shl nsw i32 %11, 1
  %13 = sext i32 %12 to i64
  %14 = mul nsw i64 %13, 40
  %15 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef %14, ptr noundef nonnull @.str, i32 noundef 561, ptr noundef nonnull @.str.3)
  %16 = getelementptr inbounds %"struct.pov::BCyl_Struct", ptr %6, i64 0, i32 6
  store ptr %15, ptr %16, align 8, !tbaa !43
  %17 = load i32, ptr %6, align 8, !tbaa !56
  %18 = shl nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = mul nsw i64 %19, 40
  %21 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef %20, ptr noundef nonnull @.str, i32 noundef 562, ptr noundef nonnull @.str.3)
  %22 = getelementptr inbounds %"struct.pov::BCyl_Struct", ptr %6, i64 0, i32 5
  store ptr %21, ptr %22, align 8, !tbaa !52
  %23 = load i32, ptr %6, align 8, !tbaa !56
  %24 = shl nsw i32 %23, 2
  %25 = sext i32 %24 to i64
  %26 = mul nsw i64 %25, 40
  %27 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef %26, ptr noundef nonnull @.str, i32 noundef 564, ptr noundef nonnull @.str.3)
  %28 = getelementptr inbounds %"struct.pov::BCyl_Struct", ptr %6, i64 0, i32 7
  store ptr %27, ptr %28, align 8, !tbaa !55
  %29 = load i32, ptr %6, align 8, !tbaa !56
  %30 = sext i32 %29 to i64
  %31 = shl nsw i64 %30, 2
  %32 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef %31, ptr noundef nonnull @.str, i32 noundef 568, ptr noundef nonnull @.str.4)
  %33 = load i32, ptr %6, align 8, !tbaa !56
  %34 = sext i32 %33 to i64
  %35 = shl nsw i64 %34, 2
  %36 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef %35, ptr noundef nonnull @.str, i32 noundef 569, ptr noundef nonnull @.str.4)
  %37 = load i32, ptr %6, align 8, !tbaa !56
  %38 = sext i32 %37 to i64
  %39 = shl nsw i64 %38, 2
  %40 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef %39, ptr noundef nonnull @.str, i32 noundef 570, ptr noundef nonnull @.str.4)
  %41 = load i32, ptr %6, align 8, !tbaa !56
  %42 = sext i32 %41 to i64
  %43 = shl nsw i64 %42, 2
  %44 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef %43, ptr noundef nonnull @.str, i32 noundef 571, ptr noundef nonnull @.str.4)
  %45 = load i32, ptr %6, align 8, !tbaa !56
  %46 = shl nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = shl nsw i64 %47, 3
  %49 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef %48, ptr noundef nonnull @.str, i32 noundef 573, ptr noundef nonnull @.str.4)
  %50 = load i32, ptr %6, align 8, !tbaa !56
  %51 = shl nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = shl nsw i64 %52, 3
  %54 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef %53, ptr noundef nonnull @.str, i32 noundef 574, ptr noundef nonnull @.str.4)
  %55 = load i32, ptr %6, align 8, !tbaa !56
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %173

57:                                               ; preds = %5, %167
  %58 = phi i64 [ %169, %167 ], [ 0, %5 ]
  %59 = phi i32 [ %168, %167 ], [ 0, %5 ]
  %60 = phi i32 [ %116, %167 ], [ 0, %5 ]
  %61 = getelementptr inbounds i32, ptr %32, i64 %58
  store i32 -1, ptr %61, align 4, !tbaa !66
  %62 = getelementptr inbounds i32, ptr %36, i64 %58
  store i32 -1, ptr %62, align 4, !tbaa !66
  %63 = getelementptr inbounds i32, ptr %40, i64 %58
  store i32 -1, ptr %63, align 4, !tbaa !66
  %64 = getelementptr inbounds i32, ptr %44, i64 %58
  store i32 -1, ptr %64, align 4, !tbaa !66
  %65 = icmp sgt i32 %60, 0
  br i1 %65, label %66, label %80

66:                                               ; preds = %57
  %67 = getelementptr inbounds double, ptr %1, i64 %58
  %68 = load double, ptr %67, align 8, !tbaa !34
  %69 = zext nneg i32 %60 to i64
  br label %70

70:                                               ; preds = %66, %75
  %71 = phi i64 [ 0, %66 ], [ %76, %75 ]
  %72 = getelementptr inbounds double, ptr %49, i64 %71
  %73 = load double, ptr %72, align 8, !tbaa !34
  %74 = fcmp oeq double %68, %73
  br i1 %74, label %78, label %75

75:                                               ; preds = %70
  %76 = add nuw nsw i64 %71, 1
  %77 = icmp eq i64 %76, %69
  br i1 %77, label %80, label %70, !llvm.loop !73

78:                                               ; preds = %70
  %79 = trunc i64 %71 to i32
  br label %80

80:                                               ; preds = %78, %75, %57
  %81 = phi i32 [ 0, %57 ], [ %79, %78 ], [ %60, %75 ]
  %82 = icmp eq i32 %81, %60
  br i1 %82, label %83, label %89

83:                                               ; preds = %80
  %84 = getelementptr inbounds double, ptr %1, i64 %58
  %85 = load double, ptr %84, align 8, !tbaa !34
  %86 = add nsw i32 %60, 1
  %87 = sext i32 %60 to i64
  %88 = getelementptr inbounds double, ptr %49, i64 %87
  store double %85, ptr %88, align 8, !tbaa !34
  br label %89

89:                                               ; preds = %83, %80
  %90 = phi i32 [ %86, %83 ], [ %60, %80 ]
  store i32 %81, ptr %61, align 4, !tbaa !66
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %92, label %106

92:                                               ; preds = %89
  %93 = getelementptr inbounds double, ptr %2, i64 %58
  %94 = load double, ptr %93, align 8, !tbaa !34
  %95 = zext nneg i32 %90 to i64
  br label %96

96:                                               ; preds = %92, %101
  %97 = phi i64 [ 0, %92 ], [ %102, %101 ]
  %98 = getelementptr inbounds double, ptr %49, i64 %97
  %99 = load double, ptr %98, align 8, !tbaa !34
  %100 = fcmp oeq double %94, %99
  br i1 %100, label %104, label %101

101:                                              ; preds = %96
  %102 = add nuw nsw i64 %97, 1
  %103 = icmp eq i64 %102, %95
  br i1 %103, label %106, label %96, !llvm.loop !74

104:                                              ; preds = %96
  %105 = trunc i64 %97 to i32
  br label %106

106:                                              ; preds = %104, %101, %89
  %107 = phi i32 [ 0, %89 ], [ %105, %104 ], [ %90, %101 ]
  %108 = icmp eq i32 %107, %90
  br i1 %108, label %109, label %115

109:                                              ; preds = %106
  %110 = getelementptr inbounds double, ptr %2, i64 %58
  %111 = load double, ptr %110, align 8, !tbaa !34
  %112 = add nsw i32 %90, 1
  %113 = sext i32 %90 to i64
  %114 = getelementptr inbounds double, ptr %49, i64 %113
  store double %111, ptr %114, align 8, !tbaa !34
  br label %115

115:                                              ; preds = %109, %106
  %116 = phi i32 [ %112, %109 ], [ %90, %106 ]
  store i32 %107, ptr %62, align 4, !tbaa !66
  %117 = icmp sgt i32 %59, 0
  br i1 %117, label %118, label %132

118:                                              ; preds = %115
  %119 = getelementptr inbounds double, ptr %3, i64 %58
  %120 = load double, ptr %119, align 8, !tbaa !34
  %121 = zext nneg i32 %59 to i64
  br label %122

122:                                              ; preds = %118, %127
  %123 = phi i64 [ 0, %118 ], [ %128, %127 ]
  %124 = getelementptr inbounds double, ptr %54, i64 %123
  %125 = load double, ptr %124, align 8, !tbaa !34
  %126 = fcmp oeq double %120, %125
  br i1 %126, label %130, label %127

127:                                              ; preds = %122
  %128 = add nuw nsw i64 %123, 1
  %129 = icmp eq i64 %128, %121
  br i1 %129, label %132, label %122, !llvm.loop !75

130:                                              ; preds = %122
  %131 = trunc i64 %123 to i32
  br label %132

132:                                              ; preds = %130, %127, %115
  %133 = phi i32 [ 0, %115 ], [ %131, %130 ], [ %59, %127 ]
  %134 = icmp eq i32 %133, %59
  br i1 %134, label %135, label %141

135:                                              ; preds = %132
  %136 = getelementptr inbounds double, ptr %3, i64 %58
  %137 = load double, ptr %136, align 8, !tbaa !34
  %138 = add nsw i32 %59, 1
  %139 = sext i32 %59 to i64
  %140 = getelementptr inbounds double, ptr %54, i64 %139
  store double %137, ptr %140, align 8, !tbaa !34
  br label %141

141:                                              ; preds = %135, %132
  %142 = phi i32 [ %138, %135 ], [ %59, %132 ]
  store i32 %133, ptr %63, align 4, !tbaa !66
  %143 = icmp sgt i32 %142, 0
  br i1 %143, label %144, label %158

144:                                              ; preds = %141
  %145 = getelementptr inbounds double, ptr %4, i64 %58
  %146 = load double, ptr %145, align 8, !tbaa !34
  %147 = zext nneg i32 %142 to i64
  br label %148

148:                                              ; preds = %144, %153
  %149 = phi i64 [ 0, %144 ], [ %154, %153 ]
  %150 = getelementptr inbounds double, ptr %54, i64 %149
  %151 = load double, ptr %150, align 8, !tbaa !34
  %152 = fcmp oeq double %146, %151
  br i1 %152, label %156, label %153

153:                                              ; preds = %148
  %154 = add nuw nsw i64 %149, 1
  %155 = icmp eq i64 %154, %147
  br i1 %155, label %158, label %148, !llvm.loop !76

156:                                              ; preds = %148
  %157 = trunc i64 %149 to i32
  br label %158

158:                                              ; preds = %156, %153, %141
  %159 = phi i32 [ 0, %141 ], [ %157, %156 ], [ %142, %153 ]
  %160 = icmp eq i32 %159, %142
  br i1 %160, label %161, label %167

161:                                              ; preds = %158
  %162 = getelementptr inbounds double, ptr %4, i64 %58
  %163 = load double, ptr %162, align 8, !tbaa !34
  %164 = add nsw i32 %142, 1
  %165 = sext i32 %142 to i64
  %166 = getelementptr inbounds double, ptr %54, i64 %165
  store double %163, ptr %166, align 8, !tbaa !34
  br label %167

167:                                              ; preds = %161, %158
  %168 = phi i32 [ %164, %161 ], [ %142, %158 ]
  store i32 %159, ptr %64, align 4, !tbaa !66
  %169 = add nuw nsw i64 %58, 1
  %170 = load i32, ptr %6, align 8, !tbaa !56
  %171 = sext i32 %170 to i64
  %172 = icmp slt i64 %169, %171
  br i1 %172, label %57, label %173, !llvm.loop !77

173:                                              ; preds = %167, %5
  %174 = phi i32 [ 0, %5 ], [ %116, %167 ]
  %175 = phi i32 [ 0, %5 ], [ %168, %167 ]
  %176 = sext i32 %174 to i64
  %177 = shl nsw i64 %176, 3
  %178 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef %177, ptr noundef nonnull @.str, i32 noundef 651, ptr noundef nonnull @.str.2)
  %179 = getelementptr inbounds %"struct.pov::BCyl_Struct", ptr %6, i64 0, i32 3
  store ptr %178, ptr %179, align 8, !tbaa !53
  %180 = sext i32 %175 to i64
  %181 = shl nsw i64 %180, 3
  %182 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef %181, ptr noundef nonnull @.str, i32 noundef 652, ptr noundef nonnull @.str.2)
  %183 = getelementptr inbounds %"struct.pov::BCyl_Struct", ptr %6, i64 0, i32 4
  store ptr %182, ptr %183, align 8, !tbaa !44
  %184 = icmp sgt i32 %174, 0
  br i1 %184, label %185, label %188

185:                                              ; preds = %173
  %186 = load ptr, ptr %179, align 8, !tbaa !53
  %187 = zext nneg i32 %174 to i64
  br label %192

188:                                              ; preds = %192, %173
  %189 = icmp sgt i32 %175, 0
  br i1 %189, label %190, label %207

190:                                              ; preds = %188
  %191 = zext nneg i32 %175 to i64
  br label %200

192:                                              ; preds = %185, %192
  %193 = phi i64 [ 0, %185 ], [ %198, %192 ]
  %194 = getelementptr inbounds double, ptr %49, i64 %193
  %195 = load double, ptr %194, align 8, !tbaa !34
  %196 = fmul double %195, %195
  %197 = getelementptr inbounds double, ptr %186, i64 %193
  store double %196, ptr %197, align 8, !tbaa !34
  %198 = add nuw nsw i64 %193, 1
  %199 = icmp eq i64 %198, %187
  br i1 %199, label %188, label %192, !llvm.loop !78

200:                                              ; preds = %190, %200
  %201 = phi i64 [ 0, %190 ], [ %205, %200 ]
  %202 = getelementptr inbounds double, ptr %54, i64 %201
  %203 = load double, ptr %202, align 8, !tbaa !34
  %204 = getelementptr inbounds double, ptr %182, i64 %201
  store double %203, ptr %204, align 8, !tbaa !34
  %205 = add nuw nsw i64 %201, 1
  %206 = icmp eq i64 %205, %191
  br i1 %206, label %207, label %200, !llvm.loop !79

207:                                              ; preds = %200, %188
  %208 = trunc i32 %174 to i16
  %209 = getelementptr inbounds %"struct.pov::BCyl_Struct", ptr %6, i64 0, i32 1
  store i16 %208, ptr %209, align 4, !tbaa !51
  %210 = trunc i32 %175 to i16
  %211 = getelementptr inbounds %"struct.pov::BCyl_Struct", ptr %6, i64 0, i32 2
  store i16 %210, ptr %211, align 2, !tbaa !38
  %212 = load i32, ptr %6, align 8, !tbaa !56
  %213 = icmp sgt i32 %212, 0
  br i1 %213, label %214, label %237

214:                                              ; preds = %207
  %215 = load ptr, ptr %10, align 8, !tbaa !57
  %216 = zext nneg i32 %212 to i64
  br label %217

217:                                              ; preds = %214, %217
  %218 = phi i64 [ 0, %214 ], [ %235, %217 ]
  %219 = getelementptr inbounds i32, ptr %32, i64 %218
  %220 = load i32, ptr %219, align 4, !tbaa !66
  %221 = trunc i32 %220 to i16
  %222 = getelementptr inbounds %"struct.pov::BCyl_Entry_Struct", ptr %215, i64 %218
  store i16 %221, ptr %222, align 2, !tbaa !60
  %223 = getelementptr inbounds i32, ptr %36, i64 %218
  %224 = load i32, ptr %223, align 4, !tbaa !66
  %225 = trunc i32 %224 to i16
  %226 = getelementptr inbounds %"struct.pov::BCyl_Entry_Struct", ptr %215, i64 %218, i32 1
  store i16 %225, ptr %226, align 2, !tbaa !61
  %227 = getelementptr inbounds i32, ptr %40, i64 %218
  %228 = load i32, ptr %227, align 4, !tbaa !66
  %229 = trunc i32 %228 to i16
  %230 = getelementptr inbounds %"struct.pov::BCyl_Entry_Struct", ptr %215, i64 %218, i32 2
  store i16 %229, ptr %230, align 2, !tbaa !62
  %231 = getelementptr inbounds i32, ptr %44, i64 %218
  %232 = load i32, ptr %231, align 4, !tbaa !66
  %233 = trunc i32 %232 to i16
  %234 = getelementptr inbounds %"struct.pov::BCyl_Entry_Struct", ptr %215, i64 %218, i32 3
  store i16 %233, ptr %234, align 2, !tbaa !58
  %235 = add nuw nsw i64 %218, 1
  %236 = icmp eq i64 %235, %216
  br i1 %236, label %237, label %217, !llvm.loop !80

237:                                              ; preds = %217, %207
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef %54, ptr noundef nonnull @.str, i32 noundef 684)
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef %49, ptr noundef nonnull @.str, i32 noundef 685)
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef %44, ptr noundef nonnull @.str, i32 noundef 686)
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef %40, ptr noundef nonnull @.str, i32 noundef 687)
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef %36, ptr noundef nonnull @.str, i32 noundef 688)
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef %32, ptr noundef nonnull @.str, i32 noundef 689)
  ret ptr %6
}

declare noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN3pov8pov_freeEPvPKci(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3pov12Destroy_BCylEPNS_11BCyl_StructE(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %"struct.pov::BCyl_Struct", ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !57
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef %3, ptr noundef nonnull @.str, i32 noundef 726)
  store ptr null, ptr %2, align 8, !tbaa !57
  %4 = getelementptr inbounds %"struct.pov::BCyl_Struct", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !53
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef %5, ptr noundef nonnull @.str, i32 noundef 728)
  store ptr null, ptr %4, align 8, !tbaa !53
  %6 = getelementptr inbounds %"struct.pov::BCyl_Struct", ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !44
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef %7, ptr noundef nonnull @.str, i32 noundef 730)
  store ptr null, ptr %6, align 8, !tbaa !44
  %8 = getelementptr inbounds %"struct.pov::BCyl_Struct", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !52
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef %9, ptr noundef nonnull @.str, i32 noundef 732)
  store ptr null, ptr %8, align 8, !tbaa !52
  %10 = getelementptr inbounds %"struct.pov::BCyl_Struct", ptr %0, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !43
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef %11, ptr noundef nonnull @.str, i32 noundef 734)
  store ptr null, ptr %10, align 8, !tbaa !43
  %12 = getelementptr inbounds %"struct.pov::BCyl_Struct", ptr %0, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !55
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef %13, ptr noundef nonnull @.str, i32 noundef 736)
  store ptr null, ptr %12, align 8, !tbaa !55
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef 738)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

declare noundef ptr @_ZN3pov11pov_memmoveEPvS0_m(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
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
!7 = !{!"TotalCount", i64 42930506}
!8 = !{!"MaxCount", i64 10485760}
!9 = !{!"MaxInternalCount", i64 10485760}
!10 = !{!"MaxFunctionCount", i64 6}
!11 = !{!"NumCounts", i64 213}
!12 = !{!"NumFunctions", i64 14}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 10485760, i32 1}
!18 = !{i32 100000, i64 10485760, i32 1}
!19 = !{i32 200000, i64 10485760, i32 1}
!20 = !{i32 300000, i64 5242880, i32 7}
!21 = !{i32 400000, i64 5242880, i32 7}
!22 = !{i32 500000, i64 5242880, i32 7}
!23 = !{i32 600000, i64 5242880, i32 7}
!24 = !{i32 700000, i64 5242880, i32 7}
!25 = !{i32 800000, i64 5242880, i32 7}
!26 = !{i32 900000, i64 5242880, i32 7}
!27 = !{i32 950000, i64 5242880, i32 7}
!28 = !{i32 990000, i64 655360, i32 8}
!29 = !{i32 999000, i64 81920, i32 12}
!30 = !{i32 999900, i64 4096, i32 13}
!31 = !{i32 999990, i64 4096, i32 13}
!32 = !{i32 999999, i64 20, i32 16}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !35, i64 0}
!35 = !{!"double", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C++ TBAA"}
!38 = !{!39, !41, i64 6}
!39 = !{!"_ZTSN3pov11BCyl_StructE", !40, i64 0, !41, i64 4, !41, i64 6, !42, i64 8, !42, i64 16, !42, i64 24, !42, i64 32, !42, i64 40, !42, i64 48}
!40 = !{!"int", !36, i64 0}
!41 = !{!"short", !36, i64 0}
!42 = !{!"any pointer", !36, i64 0}
!43 = !{!39, !42, i64 32}
!44 = !{!39, !42, i64 16}
!45 = !{!46, !40, i64 0}
!46 = !{!"_ZTSN3pov24BCyl_Intersection_StructE", !40, i64 0, !36, i64 8, !36, i64 24}
!47 = distinct !{!47, !48, !49}
!48 = !{!"llvm.loop.mustprogress"}
!49 = !{!"llvm.loop.unroll.disable"}
!50 = distinct !{!50, !48, !49}
!51 = !{!39, !41, i64 4}
!52 = !{!39, !42, i64 24}
!53 = !{!39, !42, i64 8}
!54 = distinct !{!54, !48, !49}
!55 = !{!39, !42, i64 40}
!56 = !{!39, !40, i64 0}
!57 = !{!39, !42, i64 48}
!58 = !{!59, !41, i64 6}
!59 = !{!"_ZTSN3pov17BCyl_Entry_StructE", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6}
!60 = !{!59, !41, i64 0}
!61 = !{!59, !41, i64 2}
!62 = !{!59, !41, i64 4}
!63 = distinct !{!63, !48, !49}
!64 = distinct !{!64, !48, !49}
!65 = !{i64 0, i64 4, !66, i64 8, i64 16, !67, i64 24, i64 16, !67}
!66 = !{!40, !40, i64 0}
!67 = !{!36, !36, i64 0}
!68 = !{i64 0, i64 16, !67, i64 16, i64 16, !67}
!69 = !{i64 0, i64 8, !67, i64 8, i64 16, !67}
!70 = !{i64 0, i64 16, !67}
!71 = distinct !{!71, !48, !49}
!72 = distinct !{!72, !48, !49}
!73 = distinct !{!73, !48, !49}
!74 = distinct !{!74, !48, !49}
!75 = distinct !{!75, !48, !49}
!76 = distinct !{!76, !48, !49}
!77 = distinct !{!77, !48, !49}
!78 = distinct !{!78, !48, !49}
!79 = distinct !{!79, !48, !49}
!80 = distinct !{!80, !48, !49}

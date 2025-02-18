; ModuleID = 'bsphere.cpp'
source_filename = "bsphere.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.pov::BSphere_Tree_Struct" = type { i16, [3 x double], double, ptr }

@_ZN3povL11maxelementsE = internal unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"bsphere.cpp\00", align 1
@_ZN3povL4AxisE = internal unnamed_addr global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"blob bounding hierarchy\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Reallocing elements to %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"bounding slabs\00", align 1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3pov31Build_Bounding_Sphere_HierarchyEPPNS_19BSphere_Tree_StructEiPS2_(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  store i32 %1, ptr %4, align 4, !tbaa !34
  %5 = shl nsw i32 %1, 1
  store i32 %5, ptr @_ZN3povL11maxelementsE, align 4, !tbaa !34
  %6 = icmp sgt i32 %1, 0
  br i1 %6, label %7, label %15

7:                                                ; preds = %3
  %8 = call fastcc noundef i32 @_ZN3povL14sort_and_splitEPPNS_19BSphere_Tree_StructEPS2_Piii(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %4, i32 noundef 0, i32 noundef %1), !range !38
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %7, %10
  %11 = phi i32 [ %12, %10 ], [ %1, %7 ]
  %12 = load i32, ptr %4, align 4, !tbaa !34
  call void @_ZN3pov12Do_CooperateEi(i32 noundef 0)
  %13 = call fastcc noundef i32 @_ZN3povL14sort_and_splitEPPNS_19BSphere_Tree_StructEPS2_Piii(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %4, i32 noundef %11, i32 noundef %12), !range !38
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %10, label %15, !llvm.loop !39

15:                                               ; preds = %10, %7, %3
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i32 @_ZN3povL14sort_and_splitEPPNS_19BSphere_Tree_StructEPS2_Piii(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
  br label %6

6:                                                ; preds = %401, %5
  %7 = phi i32 [ %3, %5 ], [ %402, %401 ]
  %8 = phi i32 [ poison, %5 ], [ %404, %401 ]
  %9 = phi i1 [ false, %5 ], [ true, %401 ]
  %10 = load ptr, ptr %1, align 8, !tbaa !42
  %11 = icmp slt i32 %7, %4
  br i1 %11, label %12, label %49

12:                                               ; preds = %6
  %13 = sext i32 %7 to i64
  %14 = sext i32 %4 to i64
  br label %15

15:                                               ; preds = %12, %15
  %16 = phi i64 [ %13, %12 ], [ %43, %15 ]
  %17 = phi double [ -2.000000e+10, %12 ], [ %42, %15 ]
  %18 = phi double [ -2.000000e+10, %12 ], [ %38, %15 ]
  %19 = phi double [ -2.000000e+10, %12 ], [ %34, %15 ]
  %20 = phi double [ 2.000000e+10, %12 ], [ %40, %15 ]
  %21 = phi double [ 2.000000e+10, %12 ], [ %36, %15 ]
  %22 = phi double [ 2.000000e+10, %12 ], [ %32, %15 ]
  %23 = getelementptr inbounds ptr, ptr %10, i64 %16
  %24 = load ptr, ptr %23, align 8, !tbaa !42
  %25 = getelementptr inbounds %"struct.pov::BSphere_Tree_Struct", ptr %24, i64 0, i32 1
  %26 = load double, ptr %25, align 8, !tbaa !44
  %27 = getelementptr inbounds %"struct.pov::BSphere_Tree_Struct", ptr %24, i64 0, i32 1, i64 1
  %28 = load double, ptr %27, align 8, !tbaa !44
  %29 = getelementptr inbounds %"struct.pov::BSphere_Tree_Struct", ptr %24, i64 0, i32 1, i64 2
  %30 = load double, ptr %29, align 8, !tbaa !44
  %31 = fcmp olt double %26, %22
  %32 = select i1 %31, double %26, double %22
  %33 = fcmp olt double %19, %26
  %34 = select i1 %33, double %26, double %19
  %35 = fcmp olt double %28, %21
  %36 = select i1 %35, double %28, double %21
  %37 = fcmp olt double %18, %28
  %38 = select i1 %37, double %28, double %18
  %39 = fcmp olt double %30, %20
  %40 = select i1 %39, double %30, double %20
  %41 = fcmp olt double %17, %30
  %42 = select i1 %41, double %30, double %17
  %43 = add nsw i64 %16, 1
  %44 = icmp eq i64 %43, %14
  br i1 %44, label %45, label %15, !llvm.loop !46

45:                                               ; preds = %15
  %46 = fsub double %34, %32
  %47 = fsub double %38, %36
  %48 = fsub double %42, %40
  br label %49

49:                                               ; preds = %45, %6
  %50 = phi double [ -4.000000e+10, %6 ], [ %46, %45 ]
  %51 = phi double [ -4.000000e+10, %6 ], [ %47, %45 ]
  %52 = phi double [ -4.000000e+10, %6 ], [ %48, %45 ]
  %53 = fcmp ogt double %50, -2.000000e+10
  %54 = select i1 %53, double %50, double -2.000000e+10
  %55 = fcmp ogt double %51, %54
  %56 = zext i1 %55 to i32
  %57 = select i1 %55, double %51, double %54
  %58 = fcmp ogt double %52, %57
  %59 = select i1 %58, i32 2, i32 %56
  store i32 %59, ptr @_ZN3povL4AxisE, align 4, !tbaa !34
  %60 = sub nsw i32 %4, %7
  %61 = icmp slt i32 %60, 1
  br i1 %61, label %405, label %62

62:                                               ; preds = %49
  tail call void @_ZN3pov12Do_CooperateEi(i32 noundef 1)
  %63 = load ptr, ptr %1, align 8, !tbaa !42
  %64 = sext i32 %7 to i64
  %65 = getelementptr inbounds ptr, ptr %63, i64 %64
  %66 = zext nneg i32 %60 to i64
  tail call void @spec_qsort(ptr noundef %65, i64 noundef %66, i64 noundef 8, ptr noundef nonnull @_ZN3povL13comp_elementsEPKvS1_)
  %67 = shl nuw nsw i64 %66, 3
  %68 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef %67, ptr noundef nonnull @.str, i32 noundef 451, ptr noundef nonnull @.str.1)
  %69 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef %67, ptr noundef nonnull @.str, i32 noundef 452, ptr noundef nonnull @.str.1)
  %70 = load ptr, ptr %1, align 8, !tbaa !42
  %71 = add nsw i32 %4, -1
  %72 = icmp sgt i32 %71, %7
  %73 = select i1 %72, i32 1, i32 -1
  %74 = add nsw i32 %73, %71
  %75 = icmp eq i32 %74, %7
  br i1 %75, label %155, label %76

76:                                               ; preds = %62
  %77 = getelementptr inbounds ptr, ptr %70, i64 %64
  %78 = load ptr, ptr %77, align 8, !tbaa !42
  %79 = getelementptr inbounds %"struct.pov::BSphere_Tree_Struct", ptr %78, i64 0, i32 2
  %80 = load double, ptr %79, align 8, !tbaa !47
  %81 = getelementptr inbounds %"struct.pov::BSphere_Tree_Struct", ptr %78, i64 0, i32 1, i64 2
  %82 = load double, ptr %81, align 8, !tbaa !44
  %83 = getelementptr inbounds %"struct.pov::BSphere_Tree_Struct", ptr %78, i64 0, i32 1, i64 1
  %84 = load double, ptr %83, align 8, !tbaa !44
  %85 = getelementptr inbounds %"struct.pov::BSphere_Tree_Struct", ptr %78, i64 0, i32 1
  %86 = load double, ptr %85, align 8, !tbaa !44
  %87 = tail call i32 @llvm.smin.i32(i32 %7, i32 %71)
  %88 = sext i32 %73 to i64
  %89 = sext i32 %87 to i64
  %90 = sext i32 %71 to i64
  br label %91

91:                                               ; preds = %146, %76
  %92 = phi double [ %80, %76 ], [ %147, %146 ]
  %93 = phi double [ %82, %76 ], [ %148, %146 ]
  %94 = phi double [ %84, %76 ], [ %149, %146 ]
  %95 = phi double [ %86, %76 ], [ %150, %146 ]
  %96 = phi i64 [ %64, %76 ], [ %153, %146 ]
  %97 = getelementptr inbounds ptr, ptr %70, i64 %96
  %98 = load ptr, ptr %97, align 8, !tbaa !42
  %99 = getelementptr inbounds %"struct.pov::BSphere_Tree_Struct", ptr %98, i64 0, i32 1
  %100 = getelementptr inbounds %"struct.pov::BSphere_Tree_Struct", ptr %98, i64 0, i32 2
  %101 = load double, ptr %100, align 8, !tbaa !47
  %102 = load double, ptr %99, align 8, !tbaa !44
  %103 = fsub double %95, %102
  %104 = getelementptr inbounds %"struct.pov::BSphere_Tree_Struct", ptr %98, i64 0, i32 1, i64 1
  %105 = load double, ptr %104, align 8, !tbaa !44
  %106 = fsub double %94, %105
  %107 = getelementptr inbounds %"struct.pov::BSphere_Tree_Struct", ptr %98, i64 0, i32 1, i64 2
  %108 = load double, ptr %107, align 8, !tbaa !44
  %109 = fsub double %93, %108
  %110 = fmul double %106, %106
  %111 = tail call double @llvm.fmuladd.f64(double %103, double %103, double %110)
  %112 = tail call double @llvm.fmuladd.f64(double %109, double %109, double %111)
  %113 = tail call double @sqrt(double noundef %112) #6
  %114 = tail call double @sqrt(double noundef %92) #6
  %115 = tail call double @sqrt(double noundef %101) #6
  %116 = fadd double %113, %114
  %117 = fcmp ugt double %116, %115
  br i1 %117, label %122, label %118

118:                                              ; preds = %91
  %119 = load double, ptr %99, align 8, !tbaa !44
  %120 = load double, ptr %104, align 8, !tbaa !44
  %121 = load double, ptr %107, align 8, !tbaa !44
  br label %146

122:                                              ; preds = %91
  %123 = fadd double %113, %115
  %124 = fcmp ugt double %123, %114
  br i1 %124, label %125, label %146

125:                                              ; preds = %122
  %126 = fsub double %114, %115
  %127 = fdiv double %126, %113
  %128 = fadd double %127, 1.000000e+00
  %129 = fmul double %128, 5.000000e-01
  %130 = fsub double %115, %114
  %131 = fdiv double %130, %113
  %132 = fadd double %131, 1.000000e+00
  %133 = fmul double %132, 5.000000e-01
  %134 = load double, ptr %99, align 8, !tbaa !44
  %135 = fmul double %133, %134
  %136 = tail call double @llvm.fmuladd.f64(double %129, double %95, double %135)
  %137 = load double, ptr %104, align 8, !tbaa !44
  %138 = fmul double %133, %137
  %139 = tail call double @llvm.fmuladd.f64(double %129, double %94, double %138)
  %140 = load double, ptr %107, align 8, !tbaa !44
  %141 = fmul double %133, %140
  %142 = tail call double @llvm.fmuladd.f64(double %129, double %93, double %141)
  %143 = fadd double %116, %115
  %144 = fmul double %143, 5.000000e-01
  %145 = fmul double %144, %144
  br label %146

146:                                              ; preds = %122, %118, %125
  %147 = phi double [ %145, %125 ], [ %101, %118 ], [ %92, %122 ]
  %148 = phi double [ %142, %125 ], [ %121, %118 ], [ %93, %122 ]
  %149 = phi double [ %139, %125 ], [ %120, %118 ], [ %94, %122 ]
  %150 = phi double [ %136, %125 ], [ %119, %118 ], [ %95, %122 ]
  %151 = sub nsw i64 %96, %89
  %152 = getelementptr inbounds double, ptr %68, i64 %151
  store double %147, ptr %152, align 8, !tbaa !44
  %153 = add i64 %96, %88
  %154 = icmp eq i64 %96, %90
  br i1 %154, label %155, label %91, !llvm.loop !50

155:                                              ; preds = %146, %62
  %156 = load ptr, ptr %1, align 8, !tbaa !42
  %157 = icmp sgt i32 %4, %7
  %158 = select i1 %157, i32 -1, i32 1
  %159 = add nsw i32 %158, %7
  %160 = icmp eq i32 %159, %71
  br i1 %160, label %240, label %161

161:                                              ; preds = %155
  %162 = sext i32 %71 to i64
  %163 = getelementptr inbounds ptr, ptr %156, i64 %162
  %164 = load ptr, ptr %163, align 8, !tbaa !42
  %165 = getelementptr inbounds %"struct.pov::BSphere_Tree_Struct", ptr %164, i64 0, i32 2
  %166 = load double, ptr %165, align 8, !tbaa !47
  %167 = getelementptr inbounds %"struct.pov::BSphere_Tree_Struct", ptr %164, i64 0, i32 1, i64 2
  %168 = load double, ptr %167, align 8, !tbaa !44
  %169 = getelementptr inbounds %"struct.pov::BSphere_Tree_Struct", ptr %164, i64 0, i32 1, i64 1
  %170 = load double, ptr %169, align 8, !tbaa !44
  %171 = getelementptr inbounds %"struct.pov::BSphere_Tree_Struct", ptr %164, i64 0, i32 1
  %172 = load double, ptr %171, align 8, !tbaa !44
  %173 = tail call i32 @llvm.smin.i32(i32 %71, i32 %7)
  %174 = sext i32 %158 to i64
  %175 = sext i32 %173 to i64
  br label %176

176:                                              ; preds = %231, %161
  %177 = phi double [ %166, %161 ], [ %232, %231 ]
  %178 = phi double [ %168, %161 ], [ %233, %231 ]
  %179 = phi double [ %170, %161 ], [ %234, %231 ]
  %180 = phi double [ %172, %161 ], [ %235, %231 ]
  %181 = phi i64 [ %162, %161 ], [ %238, %231 ]
  %182 = getelementptr inbounds ptr, ptr %156, i64 %181
  %183 = load ptr, ptr %182, align 8, !tbaa !42
  %184 = getelementptr inbounds %"struct.pov::BSphere_Tree_Struct", ptr %183, i64 0, i32 1
  %185 = getelementptr inbounds %"struct.pov::BSphere_Tree_Struct", ptr %183, i64 0, i32 2
  %186 = load double, ptr %185, align 8, !tbaa !47
  %187 = load double, ptr %184, align 8, !tbaa !44
  %188 = fsub double %180, %187
  %189 = getelementptr inbounds %"struct.pov::BSphere_Tree_Struct", ptr %183, i64 0, i32 1, i64 1
  %190 = load double, ptr %189, align 8, !tbaa !44
  %191 = fsub double %179, %190
  %192 = getelementptr inbounds %"struct.pov::BSphere_Tree_Struct", ptr %183, i64 0, i32 1, i64 2
  %193 = load double, ptr %192, align 8, !tbaa !44
  %194 = fsub double %178, %193
  %195 = fmul double %191, %191
  %196 = tail call double @llvm.fmuladd.f64(double %188, double %188, double %195)
  %197 = tail call double @llvm.fmuladd.f64(double %194, double %194, double %196)
  %198 = tail call double @sqrt(double noundef %197) #6
  %199 = tail call double @sqrt(double noundef %177) #6
  %200 = tail call double @sqrt(double noundef %186) #6
  %201 = fadd double %198, %199
  %202 = fcmp ugt double %201, %200
  br i1 %202, label %207, label %203

203:                                              ; preds = %176
  %204 = load double, ptr %184, align 8, !tbaa !44
  %205 = load double, ptr %189, align 8, !tbaa !44
  %206 = load double, ptr %192, align 8, !tbaa !44
  br label %231

207:                                              ; preds = %176
  %208 = fadd double %198, %200
  %209 = fcmp ugt double %208, %199
  br i1 %209, label %210, label %231

210:                                              ; preds = %207
  %211 = fsub double %199, %200
  %212 = fdiv double %211, %198
  %213 = fadd double %212, 1.000000e+00
  %214 = fmul double %213, 5.000000e-01
  %215 = fsub double %200, %199
  %216 = fdiv double %215, %198
  %217 = fadd double %216, 1.000000e+00
  %218 = fmul double %217, 5.000000e-01
  %219 = load double, ptr %184, align 8, !tbaa !44
  %220 = fmul double %218, %219
  %221 = tail call double @llvm.fmuladd.f64(double %214, double %180, double %220)
  %222 = load double, ptr %189, align 8, !tbaa !44
  %223 = fmul double %218, %222
  %224 = tail call double @llvm.fmuladd.f64(double %214, double %179, double %223)
  %225 = load double, ptr %192, align 8, !tbaa !44
  %226 = fmul double %218, %225
  %227 = tail call double @llvm.fmuladd.f64(double %214, double %178, double %226)
  %228 = fadd double %201, %200
  %229 = fmul double %228, 5.000000e-01
  %230 = fmul double %229, %229
  br label %231

231:                                              ; preds = %207, %203, %210
  %232 = phi double [ %230, %210 ], [ %186, %203 ], [ %177, %207 ]
  %233 = phi double [ %227, %210 ], [ %206, %203 ], [ %178, %207 ]
  %234 = phi double [ %224, %210 ], [ %205, %203 ], [ %179, %207 ]
  %235 = phi double [ %221, %210 ], [ %204, %203 ], [ %180, %207 ]
  %236 = sub nsw i64 %181, %175
  %237 = getelementptr inbounds double, ptr %69, i64 %236
  store double %232, ptr %237, align 8, !tbaa !44
  %238 = add i64 %181, %174
  %239 = icmp eq i64 %181, %64
  br i1 %239, label %240, label %176, !llvm.loop !50

240:                                              ; preds = %231, %155
  %241 = icmp eq i32 %60, 1
  br i1 %241, label %272, label %242

242:                                              ; preds = %240
  %243 = add nsw i32 %60, -1
  %244 = load double, ptr %69, align 8, !tbaa !44
  %245 = add nsw i32 %60, -3
  %246 = sitofp i32 %245 to double
  %247 = fmul double %244, %246
  %248 = tail call i32 @llvm.smax.i32(i32 %243, i32 1)
  %249 = zext nneg i32 %248 to i64
  br label %250

250:                                              ; preds = %242, %250
  %251 = phi i64 [ 0, %242 ], [ %254, %250 ]
  %252 = phi double [ %247, %242 ], [ %270, %250 ]
  %253 = phi i32 [ -1, %242 ], [ %269, %250 ]
  %254 = add nuw nsw i64 %251, 1
  %255 = trunc i64 %254 to i32
  %256 = sitofp i32 %255 to double
  %257 = getelementptr inbounds double, ptr %68, i64 %251
  %258 = load double, ptr %257, align 8, !tbaa !44
  %259 = trunc i64 %251 to i32
  %260 = sub i32 %243, %259
  %261 = sitofp i32 %260 to double
  %262 = getelementptr inbounds double, ptr %69, i64 %254
  %263 = load double, ptr %262, align 8, !tbaa !44
  %264 = fmul double %263, %261
  %265 = tail call double @llvm.fmuladd.f64(double %256, double %258, double %264)
  %266 = fcmp olt double %265, %252
  %267 = trunc i64 %251 to i32
  %268 = add i32 %267, %7
  %269 = select i1 %266, i32 %268, i32 %253
  %270 = select i1 %266, double %265, double %252
  %271 = icmp eq i64 %254, %249
  br i1 %271, label %272, label %250, !llvm.loop !51

272:                                              ; preds = %250, %240
  %273 = phi i32 [ -1, %240 ], [ %269, %250 ]
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef %68, ptr noundef nonnull @.str, i32 noundef 481)
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef nonnull %69, ptr noundef nonnull @.str, i32 noundef 482)
  %274 = icmp slt i32 %60, 5
  %275 = icmp slt i32 %273, 0
  %276 = select i1 %274, i1 true, i1 %275
  br i1 %276, label %277, label %401

277:                                              ; preds = %272
  %278 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef 48, ptr noundef nonnull @.str, i32 noundef 491, ptr noundef nonnull @.str.1)
  %279 = trunc i32 %60 to i16
  store i16 %279, ptr %278, align 8, !tbaa !52
  %280 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef %67, ptr noundef nonnull @.str, i32 noundef 495, ptr noundef nonnull @.str.1)
  %281 = getelementptr inbounds %"struct.pov::BSphere_Tree_Struct", ptr %278, i64 0, i32 3
  store ptr %280, ptr %281, align 8, !tbaa !53
  %282 = sext i32 %7 to i64
  %283 = tail call i32 @llvm.smax.i32(i32 %60, i32 1)
  %284 = zext nneg i32 %283 to i64
  br label %285

285:                                              ; preds = %277, %285
  %286 = phi i64 [ 0, %277 ], [ %293, %285 ]
  %287 = load ptr, ptr %1, align 8, !tbaa !42
  %288 = getelementptr ptr, ptr %287, i64 %286
  %289 = getelementptr ptr, ptr %288, i64 %282
  %290 = load ptr, ptr %289, align 8, !tbaa !42
  %291 = load ptr, ptr %281, align 8, !tbaa !53
  %292 = getelementptr inbounds ptr, ptr %291, i64 %286
  store ptr %290, ptr %292, align 8, !tbaa !42
  %293 = add nuw nsw i64 %286, 1
  %294 = icmp eq i64 %293, %284
  br i1 %294, label %295, label %285, !llvm.loop !54

295:                                              ; preds = %285
  %296 = load ptr, ptr %281, align 8, !tbaa !53
  %297 = load ptr, ptr %296, align 8, !tbaa !42
  %298 = getelementptr inbounds %"struct.pov::BSphere_Tree_Struct", ptr %297, i64 0, i32 1
  %299 = load double, ptr %298, align 8, !tbaa !44
  %300 = getelementptr inbounds %"struct.pov::BSphere_Tree_Struct", ptr %297, i64 0, i32 1, i64 1
  %301 = load double, ptr %300, align 8, !tbaa !44
  %302 = getelementptr inbounds %"struct.pov::BSphere_Tree_Struct", ptr %297, i64 0, i32 1, i64 2
  %303 = load double, ptr %302, align 8, !tbaa !44
  %304 = getelementptr inbounds %"struct.pov::BSphere_Tree_Struct", ptr %297, i64 0, i32 2
  %305 = load double, ptr %304, align 8, !tbaa !47
  %306 = load i16, ptr %278, align 8, !tbaa !52
  %307 = icmp sgt i16 %306, 1
  br i1 %307, label %308, label %373

308:                                              ; preds = %295, %364
  %309 = phi i64 [ %369, %364 ], [ 1, %295 ]
  %310 = phi double [ %368, %364 ], [ %299, %295 ]
  %311 = phi double [ %367, %364 ], [ %301, %295 ]
  %312 = phi double [ %366, %364 ], [ %303, %295 ]
  %313 = phi double [ %365, %364 ], [ %305, %295 ]
  %314 = load ptr, ptr %281, align 8, !tbaa !53
  %315 = getelementptr inbounds ptr, ptr %314, i64 %309
  %316 = load ptr, ptr %315, align 8, !tbaa !42
  %317 = getelementptr inbounds %"struct.pov::BSphere_Tree_Struct", ptr %316, i64 0, i32 1
  %318 = getelementptr inbounds %"struct.pov::BSphere_Tree_Struct", ptr %316, i64 0, i32 2
  %319 = load double, ptr %318, align 8, !tbaa !47
  %320 = load double, ptr %317, align 8, !tbaa !44
  %321 = fsub double %310, %320
  %322 = getelementptr inbounds %"struct.pov::BSphere_Tree_Struct", ptr %316, i64 0, i32 1, i64 1
  %323 = load double, ptr %322, align 8, !tbaa !44
  %324 = fsub double %311, %323
  %325 = getelementptr inbounds %"struct.pov::BSphere_Tree_Struct", ptr %316, i64 0, i32 1, i64 2
  %326 = load double, ptr %325, align 8, !tbaa !44
  %327 = fsub double %312, %326
  %328 = fmul double %324, %324
  %329 = tail call double @llvm.fmuladd.f64(double %321, double %321, double %328)
  %330 = tail call double @llvm.fmuladd.f64(double %327, double %327, double %329)
  %331 = tail call double @sqrt(double noundef %330) #6
  %332 = tail call double @sqrt(double noundef %313) #6
  %333 = tail call double @sqrt(double noundef %319) #6
  %334 = fadd double %331, %332
  %335 = fcmp ugt double %334, %333
  br i1 %335, label %340, label %336

336:                                              ; preds = %308
  %337 = load double, ptr %317, align 8, !tbaa !44
  %338 = load double, ptr %322, align 8, !tbaa !44
  %339 = load double, ptr %325, align 8, !tbaa !44
  br label %364

340:                                              ; preds = %308
  %341 = fadd double %331, %333
  %342 = fcmp ugt double %341, %332
  br i1 %342, label %343, label %364

343:                                              ; preds = %340
  %344 = fsub double %332, %333
  %345 = fdiv double %344, %331
  %346 = fadd double %345, 1.000000e+00
  %347 = fmul double %346, 5.000000e-01
  %348 = fsub double %333, %332
  %349 = fdiv double %348, %331
  %350 = fadd double %349, 1.000000e+00
  %351 = fmul double %350, 5.000000e-01
  %352 = load double, ptr %317, align 8, !tbaa !44
  %353 = fmul double %351, %352
  %354 = tail call double @llvm.fmuladd.f64(double %347, double %310, double %353)
  %355 = load double, ptr %322, align 8, !tbaa !44
  %356 = fmul double %351, %355
  %357 = tail call double @llvm.fmuladd.f64(double %347, double %311, double %356)
  %358 = load double, ptr %325, align 8, !tbaa !44
  %359 = fmul double %351, %358
  %360 = tail call double @llvm.fmuladd.f64(double %347, double %312, double %359)
  %361 = fadd double %334, %333
  %362 = fmul double %361, 5.000000e-01
  %363 = fmul double %362, %362
  br label %364

364:                                              ; preds = %340, %336, %343
  %365 = phi double [ %363, %343 ], [ %319, %336 ], [ %313, %340 ]
  %366 = phi double [ %360, %343 ], [ %339, %336 ], [ %312, %340 ]
  %367 = phi double [ %357, %343 ], [ %338, %336 ], [ %311, %340 ]
  %368 = phi double [ %354, %343 ], [ %337, %336 ], [ %310, %340 ]
  %369 = add nuw nsw i64 %309, 1
  %370 = load i16, ptr %278, align 8, !tbaa !52
  %371 = sext i16 %370 to i64
  %372 = icmp slt i64 %369, %371
  br i1 %372, label %308, label %373, !llvm.loop !55

373:                                              ; preds = %364, %295
  %374 = phi double [ %305, %295 ], [ %365, %364 ]
  %375 = phi double [ %303, %295 ], [ %366, %364 ]
  %376 = phi double [ %301, %295 ], [ %367, %364 ]
  %377 = phi double [ %299, %295 ], [ %368, %364 ]
  %378 = getelementptr inbounds %"struct.pov::BSphere_Tree_Struct", ptr %278, i64 0, i32 1
  store double %377, ptr %378, align 8, !tbaa !44
  %379 = getelementptr inbounds %"struct.pov::BSphere_Tree_Struct", ptr %278, i64 0, i32 1, i64 1
  store double %376, ptr %379, align 8, !tbaa !44
  %380 = getelementptr inbounds %"struct.pov::BSphere_Tree_Struct", ptr %278, i64 0, i32 1, i64 2
  store double %375, ptr %380, align 8, !tbaa !44
  %381 = getelementptr inbounds %"struct.pov::BSphere_Tree_Struct", ptr %278, i64 0, i32 2
  store double %374, ptr %381, align 8, !tbaa !47
  store ptr %278, ptr %0, align 8, !tbaa !42
  %382 = load i32, ptr %2, align 4, !tbaa !34
  %383 = load i32, ptr @_ZN3povL11maxelementsE, align 4, !tbaa !34
  %384 = icmp slt i32 %382, %383
  br i1 %384, label %395, label %385

385:                                              ; preds = %373
  %386 = sitofp i32 %383 to double
  %387 = fmul double %386, 1.500000e+00
  %388 = fptosi double %387 to i32
  store i32 %388, ptr @_ZN3povL11maxelementsE, align 4, !tbaa !34
  %389 = tail call noundef i32 (ptr, ...) @_ZN3pov10Debug_InfoEPKcz(ptr noundef nonnull @.str.2, i32 noundef %388)
  %390 = load ptr, ptr %1, align 8, !tbaa !42
  %391 = load i32, ptr @_ZN3povL11maxelementsE, align 4, !tbaa !34
  %392 = sext i32 %391 to i64
  %393 = shl nsw i64 %392, 3
  %394 = tail call noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef %390, i64 noundef %393, ptr noundef nonnull @.str, i32 noundef 516, ptr noundef nonnull @.str.3)
  store ptr %394, ptr %1, align 8, !tbaa !42
  br label %395

395:                                              ; preds = %385, %373
  %396 = load ptr, ptr %1, align 8, !tbaa !42
  %397 = load i32, ptr %2, align 4, !tbaa !34
  %398 = sext i32 %397 to i64
  %399 = getelementptr inbounds ptr, ptr %396, i64 %398
  store ptr %278, ptr %399, align 8, !tbaa !42
  %400 = add nsw i32 %397, 1
  store i32 %400, ptr %2, align 4, !tbaa !34
  br label %405

401:                                              ; preds = %272
  %402 = add nuw nsw i32 %273, 1
  %403 = tail call fastcc noundef i32 @_ZN3povL14sort_and_splitEPPNS_19BSphere_Tree_StructEPS2_Piii(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, i32 noundef %7, i32 noundef %402), !range !38
  %404 = select i1 %9, i32 %8, i32 0
  br label %6

405:                                              ; preds = %49, %395
  %406 = select i1 %9, i32 %8, i32 1
  ret i32 %406
}

declare void @_ZN3pov12Do_CooperateEi(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3pov33Destroy_Bounding_Sphere_HierarchyEPNS_19BSphere_Tree_StructE(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %24, label %3

3:                                                ; preds = %1
  %4 = load i16, ptr %0, align 8, !tbaa !52
  %5 = icmp sgt i16 %4, 0
  br i1 %5, label %6, label %23

6:                                                ; preds = %3
  %7 = load i16, ptr %0, align 8, !tbaa !52
  %8 = icmp sgt i16 %7, 0
  br i1 %8, label %9, label %20

9:                                                ; preds = %6
  %10 = getelementptr inbounds %"struct.pov::BSphere_Tree_Struct", ptr %0, i64 0, i32 3
  br label %11

11:                                               ; preds = %9, %11
  %12 = phi i64 [ 0, %9 ], [ %16, %11 ]
  %13 = load ptr, ptr %10, align 8, !tbaa !53
  %14 = getelementptr inbounds ptr, ptr %13, i64 %12
  %15 = load ptr, ptr %14, align 8, !tbaa !42
  tail call void @_ZN3pov33Destroy_Bounding_Sphere_HierarchyEPNS_19BSphere_Tree_StructE(ptr noundef %15)
  %16 = add nuw nsw i64 %12, 1
  %17 = load i16, ptr %0, align 8, !tbaa !52
  %18 = sext i16 %17 to i64
  %19 = icmp slt i64 %16, %18
  br i1 %19, label %11, label %20, !llvm.loop !56

20:                                               ; preds = %11, %6
  %21 = getelementptr inbounds %"struct.pov::BSphere_Tree_Struct", ptr %0, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !53
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef %22, ptr noundef nonnull @.str, i32 noundef 651)
  store ptr null, ptr %21, align 8, !tbaa !53
  br label %23

23:                                               ; preds = %20, %3
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef nonnull %0, ptr noundef nonnull @.str, i32 noundef 654)
  br label %24

24:                                               ; preds = %23, %1
  ret void
}

declare void @_ZN3pov8pov_freeEPvPKci(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @spec_qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal noundef i32 @_ZN3povL13comp_elementsEPKvS1_(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = load ptr, ptr %0, align 8, !tbaa !42
  %4 = load i32, ptr @_ZN3povL4AxisE, align 4, !tbaa !34
  %5 = zext nneg i32 %4 to i64
  %6 = getelementptr inbounds %"struct.pov::BSphere_Tree_Struct", ptr %3, i64 0, i32 1, i64 %5
  %7 = load double, ptr %6, align 8, !tbaa !44
  %8 = load ptr, ptr %1, align 8, !tbaa !42
  %9 = getelementptr inbounds %"struct.pov::BSphere_Tree_Struct", ptr %8, i64 0, i32 1, i64 %5
  %10 = load double, ptr %9, align 8, !tbaa !44
  %11 = fadd double %10, 0xBE7AD7F29ABCAF48
  %12 = fcmp olt double %7, %11
  %13 = fadd double %10, 0x3E7AD7F29ABCAF48
  %14 = fcmp ogt double %7, %13
  %15 = zext i1 %14 to i32
  %16 = select i1 %12, i32 -1, i32 %15
  ret i32 %16
}

declare noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

declare noundef i32 @_ZN3pov10Debug_InfoEPKcz(ptr noundef, ...) local_unnamed_addr #1

declare noundef ptr @_ZN3pov11pov_reallocEPvmPKciS2_(ptr noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

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
!35 = !{!"int", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C++ TBAA"}
!38 = !{i32 0, i32 2}
!39 = distinct !{!39, !40, !41}
!40 = !{!"llvm.loop.mustprogress"}
!41 = !{!"llvm.loop.unroll.disable"}
!42 = !{!43, !43, i64 0}
!43 = !{!"any pointer", !36, i64 0}
!44 = !{!45, !45, i64 0}
!45 = !{!"double", !36, i64 0}
!46 = distinct !{!46, !40, !41}
!47 = !{!48, !45, i64 32}
!48 = !{!"_ZTSN3pov19BSphere_Tree_StructE", !49, i64 0, !36, i64 8, !45, i64 32, !43, i64 40}
!49 = !{!"short", !36, i64 0}
!50 = distinct !{!50, !40, !41}
!51 = distinct !{!51, !40, !41}
!52 = !{!48, !49, i64 0}
!53 = !{!48, !43, i64 40}
!54 = distinct !{!54, !40, !41}
!55 = distinct !{!55, !40, !41}
!56 = distinct !{!56, !40, !41}

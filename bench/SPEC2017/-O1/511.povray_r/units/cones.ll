; ModuleID = 'cones.cpp'
source_filename = "cones.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.pov::Method_Struct" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"struct.pov::Cone_Intersection_Structure" = type { double, i32 }
%"struct.pov::Cone_Struct" = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"struct.pov::Bounding_Box_Struct", ptr, ptr, float, i32, [3 x double], [3 x double], double, double, double }
%"struct.pov::Bounding_Box_Struct" = type { [3 x float], [3 x float] }
%"struct.pov::Ray_Struct" = type { [3 x double], [3 x double], i32, i32, [100 x ptr] }
%"struct.pov::Object_Struct" = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"struct.pov::Bounding_Box_Struct", ptr, ptr, float, i32 }
%"struct.pov::istack_struct" = type { ptr, ptr, i32, i32 }
%"struct.pov::istk_entry" = type { double, [3 x double], [3 x double], [3 x double], [2 x double], ptr, i32, i32, double, double, double, double, double, double, double, double, double, ptr, ptr }

@_ZN3pov12Cone_MethodsE = dso_local global %"struct.pov::Method_Struct" { ptr @_ZN3povL22All_Cone_IntersectionsEPNS_13Object_StructEPNS_10Ray_StructEPNS_13istack_structE, ptr @_ZN3povL11Inside_ConeEPdPNS_13Object_StructE, ptr @_ZN3povL11Cone_NormalEPdPNS_13Object_StructEPNS_10istk_entryE, ptr @_ZN3pov15Default_UVCoordEPdPNS_13Object_StructEPNS_10istk_entryE, ptr @_ZN3povL9Copy_ConeEPNS_13Object_StructE, ptr @_ZN3povL14Translate_ConeEPNS_13Object_StructEPdPNS_16Transform_StructE, ptr @_ZN3povL11Rotate_ConeEPNS_13Object_StructEPdPNS_16Transform_StructE, ptr @_ZN3povL10Scale_ConeEPNS_13Object_StructEPdPNS_16Transform_StructE, ptr @_ZN3povL14Transform_ConeEPNS_13Object_StructEPNS_16Transform_StructE, ptr @_ZN3povL11Invert_ConeEPNS_13Object_StructE, ptr @_ZN3povL12Destroy_ConeEPNS_13Object_StructE }, align 8
@.str = private unnamed_addr constant [10 x i8] c"cones.cpp\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"cone\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Degenerate cone/cylinder.\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"Degenerate cylinder, base point = apex point.\00", align 1
@_ZN3pov5statsE = external local_unnamed_addr global [123 x i64], align 16

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZN3povL22All_Cone_IntersectionsEPNS_13Object_StructEPNS_10Ray_StructEPNS_13istack_structE(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca [3 x double], align 16
  %5 = alloca [3 x double], align 16
  %6 = alloca [3 x double], align 16
  %7 = alloca [4 x %"struct.pov::Cone_Intersection_Structure"], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #8
  %8 = load i64, ptr getelementptr inbounds ([123 x i64], ptr @_ZN3pov5statsE, i64 0, i64 20), align 16, !tbaa !34
  %9 = add nsw i64 %8, 1
  store i64 %9, ptr getelementptr inbounds ([123 x i64], ptr @_ZN3pov5statsE, i64 0, i64 20), align 16, !tbaa !34
  %10 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %0, i64 0, i32 10
  %11 = load ptr, ptr %10, align 8, !tbaa !38
  call void @_ZN3pov14MInvTransPointEPdS0_PNS_16Transform_StructE(ptr noundef nonnull %4, ptr noundef %1, ptr noundef %11)
  %12 = getelementptr inbounds %"struct.pov::Ray_Struct", ptr %1, i64 0, i32 1
  %13 = load ptr, ptr %10, align 8, !tbaa !38
  call void @_ZN3pov18MInvTransDirectionEPdS0_PNS_16Transform_StructE(ptr noundef nonnull %5, ptr noundef nonnull %12, ptr noundef %13)
  %14 = load double, ptr %5, align 16, !tbaa !45
  %15 = getelementptr inbounds double, ptr %5, i64 1
  %16 = load double, ptr %15, align 8, !tbaa !45
  %17 = fmul double %16, %16
  %18 = call double @llvm.fmuladd.f64(double %14, double %14, double %17)
  %19 = getelementptr inbounds double, ptr %5, i64 2
  %20 = load double, ptr %19, align 16, !tbaa !45
  %21 = call double @llvm.fmuladd.f64(double %20, double %20, double %18)
  %22 = call double @sqrt(double noundef %21) #8
  %23 = fdiv double 1.000000e+00, %22
  %24 = load double, ptr %5, align 16, !tbaa !45
  %25 = fmul double %24, %23
  store double %25, ptr %5, align 16, !tbaa !45
  %26 = load double, ptr %15, align 8, !tbaa !45
  %27 = fmul double %23, %26
  store double %27, ptr %15, align 8, !tbaa !45
  %28 = load double, ptr %19, align 16, !tbaa !45
  %29 = fmul double %23, %28
  store double %29, ptr %19, align 16, !tbaa !45
  %30 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %0, i64 0, i32 13
  %31 = load i32, ptr %30, align 4, !tbaa !46
  %32 = and i32 %31, 16
  %33 = icmp eq i32 %32, 0
  %34 = fmul double %27, %27
  %35 = call double @llvm.fmuladd.f64(double %25, double %25, double %34)
  br i1 %33, label %86, label %36

36:                                               ; preds = %3
  %37 = fcmp ogt double %35, 0x3E7AD7F29ABCAF48
  br i1 %37, label %38, label %170

38:                                               ; preds = %36
  %39 = load double, ptr %4, align 16, !tbaa !45
  %40 = getelementptr inbounds [3 x double], ptr %4, i64 0, i64 1
  %41 = load double, ptr %40, align 8, !tbaa !45
  %42 = fmul double %27, %41
  %43 = call double @llvm.fmuladd.f64(double %39, double %25, double %42)
  %44 = fmul double %41, %41
  %45 = call double @llvm.fmuladd.f64(double %39, double %39, double %44)
  %46 = fadd double %45, -1.000000e+00
  %47 = fneg double %35
  %48 = fmul double %46, %47
  %49 = call double @llvm.fmuladd.f64(double %43, double %43, double %48)
  %50 = fcmp ult double %49, 0.000000e+00
  br i1 %50, label %170, label %51

51:                                               ; preds = %38
  %52 = call double @sqrt(double noundef %49) #8
  %53 = fneg double %43
  %54 = fsub double %52, %43
  %55 = fdiv double %54, %35
  %56 = fsub double %53, %52
  %57 = fdiv double %56, %35
  %58 = getelementptr inbounds [3 x double], ptr %4, i64 0, i64 2
  %59 = load double, ptr %58, align 16, !tbaa !45
  %60 = load double, ptr %19, align 16, !tbaa !45
  %61 = call double @llvm.fmuladd.f64(double %55, double %60, double %59)
  %62 = fcmp ogt double %55, 0x3EB0C6F7A0B5ED8D
  %63 = fcmp olt double %55, 1.000000e+07
  %64 = and i1 %62, %63
  %65 = fcmp oge double %61, 0.000000e+00
  %66 = select i1 %64, i1 %65, i1 false
  %67 = fcmp ole double %61, 1.000000e+00
  %68 = select i1 %66, i1 %67, i1 false
  br i1 %68, label %69, label %72

69:                                               ; preds = %51
  %70 = fdiv double %55, %22
  store double %70, ptr %7, align 16, !tbaa !47
  %71 = getelementptr inbounds %"struct.pov::Cone_Intersection_Structure", ptr %7, i64 0, i32 1
  store i32 3, ptr %71, align 8, !tbaa !49
  br label %72

72:                                               ; preds = %69, %51
  %73 = phi i32 [ 1, %69 ], [ 0, %51 ]
  %74 = call double @llvm.fmuladd.f64(double %57, double %60, double %59)
  %75 = fcmp ogt double %57, 0x3EB0C6F7A0B5ED8D
  %76 = and i1 %75, %63
  %77 = fcmp oge double %74, 0.000000e+00
  %78 = select i1 %76, i1 %77, i1 false
  %79 = fcmp ole double %74, 1.000000e+00
  %80 = select i1 %78, i1 %79, i1 false
  br i1 %80, label %81, label %170

81:                                               ; preds = %72
  %82 = fdiv double %57, %22
  %83 = zext nneg i32 %73 to i64
  %84 = getelementptr inbounds %"struct.pov::Cone_Intersection_Structure", ptr %7, i64 %83
  store double %82, ptr %84, align 16, !tbaa !47
  %85 = add nuw nsw i32 %73, 1
  br label %166

86:                                               ; preds = %3
  %87 = fneg double %29
  %88 = call double @llvm.fmuladd.f64(double %87, double %29, double %35)
  %89 = load double, ptr %4, align 16, !tbaa !45
  %90 = getelementptr inbounds [3 x double], ptr %4, i64 0, i64 1
  %91 = load double, ptr %90, align 8, !tbaa !45
  %92 = fmul double %27, %91
  %93 = call double @llvm.fmuladd.f64(double %25, double %89, double %92)
  %94 = getelementptr inbounds [3 x double], ptr %4, i64 0, i64 2
  %95 = load double, ptr %94, align 16, !tbaa !45
  %96 = call double @llvm.fmuladd.f64(double %87, double %95, double %93)
  %97 = fmul double %91, %91
  %98 = call double @llvm.fmuladd.f64(double %89, double %89, double %97)
  %99 = fneg double %95
  %100 = call double @llvm.fmuladd.f64(double %99, double %95, double %98)
  %101 = call double @llvm.fabs.f64(double %88)
  %102 = fcmp olt double %101, 0x3E7AD7F29ABCAF48
  br i1 %102, label %103, label %121

103:                                              ; preds = %86
  %104 = call double @llvm.fabs.f64(double %96)
  %105 = fcmp ogt double %104, 0x3E7AD7F29ABCAF48
  br i1 %105, label %106, label %170

106:                                              ; preds = %103
  %107 = fmul double %100, -5.000000e-01
  %108 = fdiv double %107, %96
  %109 = fcmp ogt double %108, 0x3EB0C6F7A0B5ED8D
  %110 = fcmp olt double %108, 1.000000e+07
  %111 = and i1 %109, %110
  br i1 %111, label %112, label %170

112:                                              ; preds = %106
  %113 = call double @llvm.fmuladd.f64(double %108, double %29, double %95)
  %114 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %0, i64 0, i32 18
  %115 = load double, ptr %114, align 8, !tbaa !50
  %116 = fcmp oge double %113, %115
  %117 = fcmp ole double %113, 1.000000e+00
  %118 = and i1 %117, %116
  br i1 %118, label %119, label %170

119:                                              ; preds = %112
  %120 = fdiv double %108, %22
  store double %120, ptr %7, align 16, !tbaa !47
  br label %166

121:                                              ; preds = %86
  %122 = fneg double %88
  %123 = fmul double %100, %122
  %124 = call double @llvm.fmuladd.f64(double %96, double %96, double %123)
  %125 = fcmp ult double %124, 0.000000e+00
  br i1 %125, label %170, label %126

126:                                              ; preds = %121
  %127 = call double @sqrt(double noundef %124) #8
  %128 = fneg double %96
  %129 = fsub double %128, %127
  %130 = fdiv double %129, %88
  %131 = fsub double %127, %96
  %132 = fdiv double %131, %88
  %133 = fcmp ogt double %130, 0x3EB0C6F7A0B5ED8D
  %134 = fcmp olt double %130, 1.000000e+07
  %135 = and i1 %133, %134
  br i1 %135, label %136, label %148

136:                                              ; preds = %126
  %137 = load double, ptr %19, align 16, !tbaa !45
  %138 = load double, ptr %94, align 16, !tbaa !45
  %139 = call double @llvm.fmuladd.f64(double %130, double %137, double %138)
  %140 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %0, i64 0, i32 18
  %141 = load double, ptr %140, align 8, !tbaa !50
  %142 = fcmp oge double %139, %141
  %143 = fcmp ole double %139, 1.000000e+00
  %144 = and i1 %142, %143
  br i1 %144, label %145, label %148

145:                                              ; preds = %136
  %146 = fdiv double %130, %22
  store double %146, ptr %7, align 16, !tbaa !47
  %147 = getelementptr inbounds %"struct.pov::Cone_Intersection_Structure", ptr %7, i64 0, i32 1
  store i32 3, ptr %147, align 8, !tbaa !49
  br label %148

148:                                              ; preds = %145, %136, %126
  %149 = phi i32 [ 1, %145 ], [ 0, %136 ], [ 0, %126 ]
  %150 = fcmp ogt double %132, 0x3EB0C6F7A0B5ED8D
  %151 = and i1 %150, %134
  br i1 %151, label %152, label %170

152:                                              ; preds = %148
  %153 = load double, ptr %19, align 16, !tbaa !45
  %154 = load double, ptr %94, align 16, !tbaa !45
  %155 = call double @llvm.fmuladd.f64(double %132, double %153, double %154)
  %156 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %0, i64 0, i32 18
  %157 = load double, ptr %156, align 8, !tbaa !50
  %158 = fcmp oge double %155, %157
  %159 = fcmp ole double %155, 1.000000e+00
  %160 = and i1 %158, %159
  br i1 %160, label %161, label %170

161:                                              ; preds = %152
  %162 = fdiv double %132, %22
  %163 = zext nneg i32 %149 to i64
  %164 = getelementptr inbounds %"struct.pov::Cone_Intersection_Structure", ptr %7, i64 %163
  store double %162, ptr %164, align 16, !tbaa !47
  %165 = add nuw nsw i32 %149, 1
  br label %166

166:                                              ; preds = %81, %119, %161
  %167 = phi i64 [ %163, %161 ], [ 0, %119 ], [ %83, %81 ]
  %168 = phi i32 [ %165, %161 ], [ 1, %119 ], [ %85, %81 ]
  %169 = getelementptr inbounds %"struct.pov::Cone_Intersection_Structure", ptr %7, i64 %167, i32 1
  store i32 3, ptr %169, align 8, !tbaa !49
  br label %170

170:                                              ; preds = %166, %152, %148, %121, %112, %106, %103, %72, %38, %36
  %171 = phi i32 [ %73, %72 ], [ 0, %38 ], [ 0, %36 ], [ 0, %112 ], [ 0, %106 ], [ 0, %103 ], [ %149, %152 ], [ %149, %148 ], [ 0, %121 ], [ %168, %166 ]
  %172 = load i32, ptr %30, align 4, !tbaa !46
  %173 = and i32 %172, 2
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %231, label %175

175:                                              ; preds = %170
  %176 = load double, ptr %19, align 16, !tbaa !45
  %177 = call double @llvm.fabs.f64(double %176)
  %178 = fcmp ogt double %177, 0x3E7AD7F29ABCAF48
  br i1 %178, label %179, label %231

179:                                              ; preds = %175
  %180 = getelementptr inbounds [3 x double], ptr %4, i64 0, i64 2
  %181 = load double, ptr %180, align 16, !tbaa !45
  %182 = fsub double 1.000000e+00, %181
  %183 = fdiv double %182, %176
  %184 = load double, ptr %4, align 16, !tbaa !45
  %185 = load double, ptr %5, align 16, !tbaa !45
  %186 = call double @llvm.fmuladd.f64(double %183, double %185, double %184)
  %187 = getelementptr inbounds [3 x double], ptr %4, i64 0, i64 1
  %188 = load double, ptr %187, align 8, !tbaa !45
  %189 = load double, ptr %15, align 8, !tbaa !45
  %190 = call double @llvm.fmuladd.f64(double %183, double %189, double %188)
  %191 = fmul double %186, %186
  %192 = fmul double %190, %190
  %193 = fadd double %191, %192
  %194 = fcmp ole double %193, 1.000000e+00
  %195 = fcmp ogt double %183, 0x3EB0C6F7A0B5ED8D
  %196 = select i1 %194, i1 %195, i1 false
  %197 = fcmp olt double %183, 1.000000e+07
  %198 = select i1 %196, i1 %197, i1 false
  br i1 %198, label %199, label %205

199:                                              ; preds = %179
  %200 = fdiv double %183, %22
  %201 = zext nneg i32 %171 to i64
  %202 = getelementptr inbounds %"struct.pov::Cone_Intersection_Structure", ptr %7, i64 %201
  store double %200, ptr %202, align 16, !tbaa !47
  %203 = add nuw nsw i32 %171, 1
  %204 = getelementptr inbounds %"struct.pov::Cone_Intersection_Structure", ptr %7, i64 %201, i32 1
  store i32 2, ptr %204, align 8, !tbaa !49
  br label %205

205:                                              ; preds = %199, %179
  %206 = phi i32 [ %203, %199 ], [ %171, %179 ]
  %207 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %0, i64 0, i32 18
  %208 = load double, ptr %207, align 8, !tbaa !50
  %209 = fsub double %208, %181
  %210 = fdiv double %209, %176
  %211 = call double @llvm.fmuladd.f64(double %210, double %185, double %184)
  %212 = call double @llvm.fmuladd.f64(double %210, double %189, double %188)
  %213 = fmul double %211, %211
  %214 = fmul double %212, %212
  %215 = fadd double %213, %214
  %216 = and i32 %172, 16
  %217 = icmp eq i32 %216, 0
  %218 = fmul double %208, %208
  %219 = select i1 %217, double %218, double 1.000000e+00
  %220 = fcmp ole double %215, %219
  %221 = fcmp ogt double %210, 0x3EB0C6F7A0B5ED8D
  %222 = select i1 %220, i1 %221, i1 false
  %223 = fcmp olt double %210, 1.000000e+07
  %224 = select i1 %222, i1 %223, i1 false
  br i1 %224, label %225, label %231

225:                                              ; preds = %205
  %226 = fdiv double %210, %22
  %227 = sext i32 %206 to i64
  %228 = getelementptr inbounds %"struct.pov::Cone_Intersection_Structure", ptr %7, i64 %227
  store double %226, ptr %228, align 16, !tbaa !47
  %229 = add nsw i32 %206, 1
  %230 = getelementptr inbounds %"struct.pov::Cone_Intersection_Structure", ptr %7, i64 %227, i32 1
  store i32 1, ptr %230, align 8, !tbaa !49
  br label %231

231:                                              ; preds = %225, %205, %175, %170
  %232 = phi i32 [ %229, %225 ], [ %206, %205 ], [ %171, %175 ], [ %171, %170 ]
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %285, label %234

234:                                              ; preds = %231
  %235 = load i64, ptr getelementptr inbounds ([123 x i64], ptr @_ZN3pov5statsE, i64 0, i64 21), align 8, !tbaa !34
  %236 = add nsw i64 %235, 1
  store i64 %236, ptr getelementptr inbounds ([123 x i64], ptr @_ZN3pov5statsE, i64 0, i64 21), align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #8
  %237 = icmp sgt i32 %232, 0
  br i1 %237, label %238, label %286

238:                                              ; preds = %234
  %239 = getelementptr inbounds double, ptr %1, i64 1
  %240 = getelementptr inbounds %"struct.pov::Ray_Struct", ptr %1, i64 0, i32 1, i64 1
  %241 = getelementptr inbounds double, ptr %6, i64 1
  %242 = getelementptr inbounds double, ptr %1, i64 2
  %243 = getelementptr inbounds %"struct.pov::Ray_Struct", ptr %1, i64 0, i32 1, i64 2
  %244 = getelementptr inbounds double, ptr %6, i64 2
  %245 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %0, i64 0, i32 7
  %246 = getelementptr inbounds %"struct.pov::istack_struct", ptr %2, i64 0, i32 1
  %247 = getelementptr inbounds %"struct.pov::istack_struct", ptr %2, i64 0, i32 3
  %248 = zext nneg i32 %232 to i64
  br label %249

249:                                              ; preds = %238, %281
  %250 = phi i64 [ 0, %238 ], [ %283, %281 ]
  %251 = phi i32 [ 0, %238 ], [ %282, %281 ]
  %252 = getelementptr inbounds [4 x %"struct.pov::Cone_Intersection_Structure"], ptr %7, i64 0, i64 %250
  %253 = load double, ptr %252, align 16, !tbaa !47
  %254 = load double, ptr %1, align 8, !tbaa !45
  %255 = load double, ptr %12, align 8, !tbaa !45
  %256 = call double @llvm.fmuladd.f64(double %253, double %255, double %254)
  store double %256, ptr %6, align 16, !tbaa !45
  %257 = load double, ptr %239, align 8, !tbaa !45
  %258 = load double, ptr %240, align 8, !tbaa !45
  %259 = call double @llvm.fmuladd.f64(double %253, double %258, double %257)
  store double %259, ptr %241, align 8, !tbaa !45
  %260 = load double, ptr %242, align 8, !tbaa !45
  %261 = load double, ptr %243, align 8, !tbaa !45
  %262 = call double @llvm.fmuladd.f64(double %253, double %261, double %260)
  store double %262, ptr %244, align 16, !tbaa !45
  %263 = load ptr, ptr %245, align 8, !tbaa !51
  %264 = call noundef zeroext i1 @_ZN3pov13Point_In_ClipEPdPNS_13Object_StructE(ptr noundef nonnull %6, ptr noundef %263)
  br i1 %264, label %265, label %281

265:                                              ; preds = %249
  %266 = getelementptr inbounds [4 x %"struct.pov::Cone_Intersection_Structure"], ptr %7, i64 0, i64 %250, i32 1
  %267 = load i32, ptr %266, align 8, !tbaa !49
  %268 = load ptr, ptr %246, align 8, !tbaa !53
  %269 = load i32, ptr %247, align 4, !tbaa !55
  %270 = zext i32 %269 to i64
  %271 = getelementptr inbounds %"struct.pov::istk_entry", ptr %268, i64 %270
  store double %253, ptr %271, align 8, !tbaa !56
  %272 = getelementptr inbounds %"struct.pov::istk_entry", ptr %268, i64 %270, i32 5
  store ptr %0, ptr %272, align 8, !tbaa !58
  %273 = getelementptr inbounds %"struct.pov::istk_entry", ptr %268, i64 %270, i32 6
  store i32 %267, ptr %273, align 8, !tbaa !59
  %274 = getelementptr inbounds %"struct.pov::istk_entry", ptr %268, i64 %270, i32 1
  %275 = load double, ptr %6, align 16, !tbaa !45
  store double %275, ptr %274, align 8, !tbaa !45
  %276 = load double, ptr %241, align 8, !tbaa !45
  %277 = getelementptr inbounds double, ptr %274, i64 1
  store double %276, ptr %277, align 8, !tbaa !45
  %278 = load double, ptr %244, align 16, !tbaa !45
  %279 = getelementptr inbounds double, ptr %274, i64 2
  store double %278, ptr %279, align 8, !tbaa !45
  %280 = getelementptr inbounds %"struct.pov::istk_entry", ptr %268, i64 %270, i32 18
  store ptr null, ptr %280, align 8, !tbaa !60
  call void @_ZN3pov8incstackEPNS_13istack_structE(ptr noundef %2)
  br label %281

281:                                              ; preds = %249, %265
  %282 = phi i32 [ 1, %265 ], [ %251, %249 ]
  %283 = add nuw nsw i64 %250, 1
  %284 = icmp eq i64 %283, %248
  br i1 %284, label %286, label %249, !llvm.loop !61

285:                                              ; preds = %231
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #8
  br label %286

286:                                              ; preds = %281, %234, %285
  %287 = phi i32 [ 0, %285 ], [ 0, %234 ], [ %282, %281 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #8
  ret i32 %287
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZN3povL11Inside_ConeEPdPNS_13Object_StructE(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [3 x double], align 16
  %4 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %1, i64 0, i32 13
  %5 = load i32, ptr %4, align 4, !tbaa !46
  %6 = and i32 %5, 2
  %7 = icmp eq i32 %6, 0
  %8 = select i1 %7, double 0x3E7AD7F29ABCAF48, double 0xBE7AD7F29ABCAF48
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #8
  %9 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %1, i64 0, i32 10
  %10 = load ptr, ptr %9, align 8, !tbaa !38
  call void @_ZN3pov14MInvTransPointEPdS0_PNS_16Transform_StructE(ptr noundef nonnull %3, ptr noundef %0, ptr noundef %10)
  %11 = load double, ptr %3, align 16, !tbaa !45
  %12 = getelementptr inbounds [3 x double], ptr %3, i64 0, i64 1
  %13 = load double, ptr %12, align 8, !tbaa !45
  %14 = fmul double %13, %13
  %15 = call double @llvm.fmuladd.f64(double %11, double %11, double %14)
  %16 = load i32, ptr %4, align 4, !tbaa !46
  %17 = zext i32 %16 to i64
  %18 = and i64 %17, 16
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %36, label %20

20:                                               ; preds = %2
  %21 = fadd double %8, 1.000000e+00
  %22 = fcmp ogt double %15, %21
  br i1 %22, label %30, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds [3 x double], ptr %3, i64 0, i64 2
  %25 = load double, ptr %24, align 16, !tbaa !45
  %26 = fsub double 0.000000e+00, %8
  %27 = fcmp olt double %25, %26
  %28 = fcmp ogt double %25, %21
  %29 = or i1 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %23, %20
  %31 = and i32 %16, 4
  br label %56

32:                                               ; preds = %23
  %33 = and i64 %17, 4
  %34 = icmp eq i64 %33, 0
  %35 = zext i1 %34 to i32
  br label %56

36:                                               ; preds = %2
  %37 = getelementptr inbounds [3 x double], ptr %3, i64 0, i64 2
  %38 = load double, ptr %37, align 16, !tbaa !45
  %39 = fmul double %38, %38
  %40 = fadd double %8, %39
  %41 = fcmp ogt double %15, %40
  br i1 %41, label %50, label %42

42:                                               ; preds = %36
  %43 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %1, i64 0, i32 18
  %44 = load double, ptr %43, align 8, !tbaa !50
  %45 = fsub double %44, %8
  %46 = fcmp olt double %38, %45
  %47 = fadd double %8, 1.000000e+00
  %48 = fcmp ogt double %38, %47
  %49 = or i1 %48, %46
  br i1 %49, label %50, label %52

50:                                               ; preds = %42, %36
  %51 = and i32 %16, 4
  br label %56

52:                                               ; preds = %42
  %53 = and i64 %17, 4
  %54 = icmp eq i64 %53, 0
  %55 = zext i1 %54 to i32
  br label %56

56:                                               ; preds = %52, %50, %32, %30
  %57 = phi i32 [ %31, %30 ], [ %35, %32 ], [ %51, %50 ], [ %55, %52 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #8
  ret i32 %57
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN3povL11Cone_NormalEPdPNS_13Object_StructEPNS_10istk_entryE(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %"struct.pov::istk_entry", ptr %2, i64 0, i32 1
  %5 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %1, i64 0, i32 10
  %6 = load ptr, ptr %5, align 8, !tbaa !38
  tail call void @_ZN3pov14MInvTransPointEPdS0_PNS_16Transform_StructE(ptr noundef %0, ptr noundef nonnull %4, ptr noundef %6)
  %7 = getelementptr inbounds %"struct.pov::istk_entry", ptr %2, i64 0, i32 6
  %8 = load i32, ptr %7, align 8, !tbaa !59
  switch i32 %8, label %23 [
    i32 3, label %9
    i32 1, label %19
    i32 2, label %21
  ]

9:                                                ; preds = %3
  %10 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %1, i64 0, i32 13
  %11 = load i32, ptr %10, align 4, !tbaa !46
  %12 = and i32 %11, 16
  %13 = icmp eq i32 %12, 0
  %14 = getelementptr inbounds double, ptr %0, i64 2
  br i1 %13, label %16, label %15

15:                                               ; preds = %9
  store double 0.000000e+00, ptr %14, align 8, !tbaa !45
  br label %23

16:                                               ; preds = %9
  %17 = load double, ptr %14, align 8, !tbaa !45
  %18 = fneg double %17
  store double %18, ptr %14, align 8, !tbaa !45
  br label %23

19:                                               ; preds = %3
  %20 = getelementptr inbounds double, ptr %0, i64 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  store double -1.000000e+00, ptr %20, align 8, !tbaa !45
  br label %23

21:                                               ; preds = %3
  %22 = getelementptr inbounds double, ptr %0, i64 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  store double 1.000000e+00, ptr %22, align 8, !tbaa !45
  br label %23

23:                                               ; preds = %15, %16, %3, %21, %19
  %24 = load ptr, ptr %5, align 8, !tbaa !38
  tail call void @_ZN3pov12MTransNormalEPdS0_PNS_16Transform_StructE(ptr noundef %0, ptr noundef %0, ptr noundef %24)
  %25 = load double, ptr %0, align 8, !tbaa !45
  %26 = getelementptr inbounds double, ptr %0, i64 1
  %27 = load double, ptr %26, align 8, !tbaa !45
  %28 = fmul double %27, %27
  %29 = tail call double @llvm.fmuladd.f64(double %25, double %25, double %28)
  %30 = getelementptr inbounds double, ptr %0, i64 2
  %31 = load double, ptr %30, align 8, !tbaa !45
  %32 = tail call double @llvm.fmuladd.f64(double %31, double %31, double %29)
  %33 = tail call double @sqrt(double noundef %32) #8
  %34 = fdiv double 1.000000e+00, %33
  %35 = load double, ptr %0, align 8, !tbaa !45
  %36 = fmul double %35, %34
  store double %36, ptr %0, align 8, !tbaa !45
  %37 = load double, ptr %26, align 8, !tbaa !45
  %38 = fmul double %34, %37
  store double %38, ptr %26, align 8, !tbaa !45
  %39 = load double, ptr %30, align 8, !tbaa !45
  %40 = fmul double %34, %39
  store double %40, ptr %30, align 8, !tbaa !45
  ret void
}

declare void @_ZN3pov15Default_UVCoordEPdPNS_13Object_StructEPNS_10istk_entryE(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: mustprogress uwtable
define internal noundef ptr @_ZN3povL9Copy_ConeEPNS_13Object_StructE(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef 192, ptr noundef nonnull @.str, i32 noundef 686, ptr noundef nonnull @.str.1)
  %3 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %2, i64 0, i32 1
  store i32 0, ptr %3, align 8, !tbaa !64
  store ptr @_ZN3pov12Cone_MethodsE, ptr %2, align 8, !tbaa !65
  %4 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %2, i64 0, i32 2
  %5 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %2, i64 0, i32 10
  %6 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %2, i64 0, i32 13
  %7 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %2, i64 0, i32 9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  store float -1.000000e+10, ptr %7, align 4, !tbaa !66
  %8 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %2, i64 0, i32 9, i32 0, i64 1
  store float -1.000000e+10, ptr %8, align 4, !tbaa !66
  %9 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %2, i64 0, i32 9, i32 0, i64 2
  store float -1.000000e+10, ptr %9, align 4, !tbaa !66
  %10 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %2, i64 0, i32 9, i32 1
  store float 2.000000e+10, ptr %10, align 4, !tbaa !66
  %11 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %2, i64 0, i32 9, i32 1, i64 1
  store float 2.000000e+10, ptr %11, align 4, !tbaa !66
  %12 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %2, i64 0, i32 9, i32 1, i64 2
  store float 2.000000e+10, ptr %12, align 4, !tbaa !66
  %13 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %2, i64 0, i32 14
  %14 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %2, i64 0, i32 14, i64 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %13, i8 0, i64 16, i1 false)
  store double 1.000000e+00, ptr %14, align 8, !tbaa !45
  %15 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %2, i64 0, i32 15
  %16 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %2, i64 0, i32 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %15, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %16, align 8, !tbaa !67
  %17 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %2, i64 0, i32 17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %17, i8 0, i64 16, i1 false)
  %18 = tail call noundef ptr @_ZN3pov16Create_TransformEv()
  store ptr %18, ptr %5, align 8, !tbaa !38
  %19 = load i32, ptr %6, align 4, !tbaa !46
  %20 = or i32 %19, 2
  store i32 %20, ptr %6, align 4, !tbaa !46
  store float -1.000000e+00, ptr %7, align 4, !tbaa !66
  store float -1.000000e+00, ptr %8, align 4, !tbaa !66
  store float 0.000000e+00, ptr %9, align 4, !tbaa !66
  store float 2.000000e+00, ptr %10, align 4, !tbaa !66
  store float 2.000000e+00, ptr %11, align 4, !tbaa !66
  store float 1.000000e+00, ptr %12, align 4, !tbaa !66
  tail call void @_ZN3pov17Destroy_TransformEPNS_16Transform_StructE(ptr noundef %18)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %2, ptr noundef nonnull align 8 dereferenceable(192) %0, i64 192, i1 false), !tbaa.struct !68
  %21 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %0, i64 0, i32 10
  %22 = load ptr, ptr %21, align 8, !tbaa !38
  %23 = tail call noundef ptr @_ZN3pov14Copy_TransformEPNS_16Transform_StructE(ptr noundef %22)
  store ptr %23, ptr %5, align 8, !tbaa !38
  ret ptr %2
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN3povL14Translate_ConeEPNS_13Object_StructEPdPNS_16Transform_StructE(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %0, i64 0, i32 10
  %5 = load ptr, ptr %4, align 8, !tbaa !38
  tail call void @_ZN3pov18Compose_TransformsEPNS_16Transform_StructES1_(ptr noundef %5, ptr noundef %2)
  %6 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %0, i64 0, i32 9
  %7 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %0, i64 0, i32 18
  %8 = load double, ptr %7, align 8, !tbaa !50
  %9 = fptrunc double %8 to float
  %10 = fsub double 1.000000e+00, %8
  %11 = fptrunc double %10 to float
  store float -1.000000e+00, ptr %6, align 4, !tbaa !66
  %12 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %0, i64 0, i32 9, i32 0, i64 1
  store float -1.000000e+00, ptr %12, align 4, !tbaa !66
  %13 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %0, i64 0, i32 9, i32 0, i64 2
  store float %9, ptr %13, align 4, !tbaa !66
  %14 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %0, i64 0, i32 9, i32 1
  store float 2.000000e+00, ptr %14, align 4, !tbaa !66
  %15 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %0, i64 0, i32 9, i32 1, i64 1
  store float 2.000000e+00, ptr %15, align 4, !tbaa !66
  %16 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %0, i64 0, i32 9, i32 1, i64 2
  store float %11, ptr %16, align 4, !tbaa !66
  %17 = load ptr, ptr %4, align 8, !tbaa !38
  tail call void @_ZN3pov14Recompute_BBoxEPNS_19Bounding_Box_StructEPNS_16Transform_StructE(ptr noundef nonnull %6, ptr noundef %17)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN3povL11Rotate_ConeEPNS_13Object_StructEPdPNS_16Transform_StructE(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %0, i64 0, i32 10
  %5 = load ptr, ptr %4, align 8, !tbaa !38
  tail call void @_ZN3pov18Compose_TransformsEPNS_16Transform_StructES1_(ptr noundef %5, ptr noundef %2)
  %6 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %0, i64 0, i32 9
  %7 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %0, i64 0, i32 18
  %8 = load double, ptr %7, align 8, !tbaa !50
  %9 = fptrunc double %8 to float
  %10 = fsub double 1.000000e+00, %8
  %11 = fptrunc double %10 to float
  store float -1.000000e+00, ptr %6, align 4, !tbaa !66
  %12 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %0, i64 0, i32 9, i32 0, i64 1
  store float -1.000000e+00, ptr %12, align 4, !tbaa !66
  %13 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %0, i64 0, i32 9, i32 0, i64 2
  store float %9, ptr %13, align 4, !tbaa !66
  %14 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %0, i64 0, i32 9, i32 1
  store float 2.000000e+00, ptr %14, align 4, !tbaa !66
  %15 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %0, i64 0, i32 9, i32 1, i64 1
  store float 2.000000e+00, ptr %15, align 4, !tbaa !66
  %16 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %0, i64 0, i32 9, i32 1, i64 2
  store float %11, ptr %16, align 4, !tbaa !66
  %17 = load ptr, ptr %4, align 8, !tbaa !38
  tail call void @_ZN3pov14Recompute_BBoxEPNS_19Bounding_Box_StructEPNS_16Transform_StructE(ptr noundef nonnull %6, ptr noundef %17)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN3povL10Scale_ConeEPNS_13Object_StructEPdPNS_16Transform_StructE(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %0, i64 0, i32 10
  %5 = load ptr, ptr %4, align 8, !tbaa !38
  tail call void @_ZN3pov18Compose_TransformsEPNS_16Transform_StructES1_(ptr noundef %5, ptr noundef %2)
  %6 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %0, i64 0, i32 9
  %7 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %0, i64 0, i32 18
  %8 = load double, ptr %7, align 8, !tbaa !50
  %9 = fptrunc double %8 to float
  %10 = fsub double 1.000000e+00, %8
  %11 = fptrunc double %10 to float
  store float -1.000000e+00, ptr %6, align 4, !tbaa !66
  %12 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %0, i64 0, i32 9, i32 0, i64 1
  store float -1.000000e+00, ptr %12, align 4, !tbaa !66
  %13 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %0, i64 0, i32 9, i32 0, i64 2
  store float %9, ptr %13, align 4, !tbaa !66
  %14 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %0, i64 0, i32 9, i32 1
  store float 2.000000e+00, ptr %14, align 4, !tbaa !66
  %15 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %0, i64 0, i32 9, i32 1, i64 1
  store float 2.000000e+00, ptr %15, align 4, !tbaa !66
  %16 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %0, i64 0, i32 9, i32 1, i64 2
  store float %11, ptr %16, align 4, !tbaa !66
  %17 = load ptr, ptr %4, align 8, !tbaa !38
  tail call void @_ZN3pov14Recompute_BBoxEPNS_19Bounding_Box_StructEPNS_16Transform_StructE(ptr noundef nonnull %6, ptr noundef %17)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN3povL14Transform_ConeEPNS_13Object_StructEPNS_16Transform_StructE(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %0, i64 0, i32 10
  %4 = load ptr, ptr %3, align 8, !tbaa !38
  tail call void @_ZN3pov18Compose_TransformsEPNS_16Transform_StructES1_(ptr noundef %4, ptr noundef %1)
  %5 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %0, i64 0, i32 9
  %6 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %0, i64 0, i32 18
  %7 = load double, ptr %6, align 8, !tbaa !50
  %8 = fptrunc double %7 to float
  %9 = fsub double 1.000000e+00, %7
  %10 = fptrunc double %9 to float
  store float -1.000000e+00, ptr %5, align 4, !tbaa !66
  %11 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %0, i64 0, i32 9, i32 0, i64 1
  store float -1.000000e+00, ptr %11, align 4, !tbaa !66
  %12 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %0, i64 0, i32 9, i32 0, i64 2
  store float %8, ptr %12, align 4, !tbaa !66
  %13 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %0, i64 0, i32 9, i32 1
  store float 2.000000e+00, ptr %13, align 4, !tbaa !66
  %14 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %0, i64 0, i32 9, i32 1, i64 1
  store float 2.000000e+00, ptr %14, align 4, !tbaa !66
  %15 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %0, i64 0, i32 9, i32 1, i64 2
  store float %10, ptr %15, align 4, !tbaa !66
  %16 = load ptr, ptr %3, align 8, !tbaa !38
  tail call void @_ZN3pov14Recompute_BBoxEPNS_19Bounding_Box_StructEPNS_16Transform_StructE(ptr noundef nonnull %5, ptr noundef %16)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @_ZN3povL11Invert_ConeEPNS_13Object_StructE(ptr nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 4, !tbaa !72
  %4 = xor i32 %3, 4
  store i32 %4, ptr %2, align 4, !tbaa !72
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN3povL12Destroy_ConeEPNS_13Object_StructE(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %0, i64 0, i32 10
  %3 = load ptr, ptr %2, align 8, !tbaa !38
  tail call void @_ZN3pov17Destroy_TransformEPNS_16Transform_StructE(ptr noundef %3)
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef 1013)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN3pov11Create_ConeEv() local_unnamed_addr #0 {
  %1 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef 192, ptr noundef nonnull @.str, i32 noundef 686, ptr noundef nonnull @.str.1)
  %2 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %1, i64 0, i32 1
  store i32 0, ptr %2, align 8, !tbaa !64
  store ptr @_ZN3pov12Cone_MethodsE, ptr %1, align 8, !tbaa !65
  %3 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %1, i64 0, i32 2
  %4 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %1, i64 0, i32 10
  %5 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %1, i64 0, i32 13
  %6 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %1, i64 0, i32 9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  store float -1.000000e+10, ptr %6, align 4, !tbaa !66
  %7 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %1, i64 0, i32 9, i32 0, i64 1
  store float -1.000000e+10, ptr %7, align 4, !tbaa !66
  %8 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %1, i64 0, i32 9, i32 0, i64 2
  store float -1.000000e+10, ptr %8, align 4, !tbaa !66
  %9 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %1, i64 0, i32 9, i32 1
  store float 2.000000e+10, ptr %9, align 4, !tbaa !66
  %10 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %1, i64 0, i32 9, i32 1, i64 1
  store float 2.000000e+10, ptr %10, align 4, !tbaa !66
  %11 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %1, i64 0, i32 9, i32 1, i64 2
  store float 2.000000e+10, ptr %11, align 4, !tbaa !66
  %12 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %1, i64 0, i32 14
  %13 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %1, i64 0, i32 14, i64 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, i8 0, i64 16, i1 false)
  store double 1.000000e+00, ptr %13, align 8, !tbaa !45
  %14 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %1, i64 0, i32 15
  %15 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %1, i64 0, i32 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %15, align 8, !tbaa !67
  %16 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %1, i64 0, i32 17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %16, i8 0, i64 16, i1 false)
  %17 = tail call noundef ptr @_ZN3pov16Create_TransformEv()
  store ptr %17, ptr %4, align 8, !tbaa !38
  %18 = load i32, ptr %5, align 4, !tbaa !46
  %19 = or i32 %18, 2
  store i32 %19, ptr %5, align 4, !tbaa !46
  store float -1.000000e+00, ptr %6, align 4, !tbaa !66
  store float -1.000000e+00, ptr %7, align 4, !tbaa !66
  store float 0.000000e+00, ptr %8, align 4, !tbaa !66
  store float 2.000000e+00, ptr %9, align 4, !tbaa !66
  store float 2.000000e+00, ptr %10, align 4, !tbaa !66
  store float 1.000000e+00, ptr %11, align 4, !tbaa !66
  ret ptr %1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

declare noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare noundef ptr @_ZN3pov16Create_TransformEv() local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN3pov15Create_CylinderEv() local_unnamed_addr #0 {
  %1 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef 192, ptr noundef nonnull @.str, i32 noundef 790, ptr noundef nonnull @.str.1)
  %2 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %1, i64 0, i32 1
  store i32 0, ptr %2, align 8, !tbaa !64
  store ptr @_ZN3pov12Cone_MethodsE, ptr %1, align 8, !tbaa !65
  %3 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %1, i64 0, i32 2
  %4 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %1, i64 0, i32 10
  %5 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %1, i64 0, i32 13
  %6 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %1, i64 0, i32 9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  store float -1.000000e+10, ptr %6, align 4, !tbaa !66
  %7 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %1, i64 0, i32 9, i32 0, i64 1
  store float -1.000000e+10, ptr %7, align 4, !tbaa !66
  %8 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %1, i64 0, i32 9, i32 0, i64 2
  store float -1.000000e+10, ptr %8, align 4, !tbaa !66
  %9 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %1, i64 0, i32 9, i32 1
  store float 2.000000e+10, ptr %9, align 4, !tbaa !66
  %10 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %1, i64 0, i32 9, i32 1, i64 1
  store float 2.000000e+10, ptr %10, align 4, !tbaa !66
  %11 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %1, i64 0, i32 9, i32 1, i64 2
  store float 2.000000e+10, ptr %11, align 4, !tbaa !66
  %12 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %1, i64 0, i32 14
  %13 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %1, i64 0, i32 14, i64 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, i8 0, i64 16, i1 false)
  store double 1.000000e+00, ptr %13, align 8, !tbaa !45
  %14 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %1, i64 0, i32 15
  %15 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %1, i64 0, i32 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %15, align 8, !tbaa !67
  %16 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %1, i64 0, i32 17
  store double 1.000000e+00, ptr %16, align 8, !tbaa !73
  %17 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %1, i64 0, i32 18
  store double 0.000000e+00, ptr %17, align 8, !tbaa !50
  %18 = tail call noundef ptr @_ZN3pov16Create_TransformEv()
  store ptr %18, ptr %4, align 8, !tbaa !38
  %19 = load i32, ptr %5, align 4, !tbaa !46
  %20 = or i32 %19, 18
  store i32 %20, ptr %5, align 4, !tbaa !46
  store float -1.000000e+00, ptr %6, align 4, !tbaa !66
  store float -1.000000e+00, ptr %7, align 4, !tbaa !66
  store float 0.000000e+00, ptr %8, align 4, !tbaa !66
  store float 2.000000e+00, ptr %9, align 4, !tbaa !66
  store float 2.000000e+00, ptr %10, align 4, !tbaa !66
  store float 1.000000e+00, ptr %11, align 4, !tbaa !66
  ret ptr %1
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3pov17Compute_Cone_DataEPNS_13Object_StructE(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [3 x double], align 16
  %3 = alloca [3 x double], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #8
  %4 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %0, i64 0, i32 16
  %5 = load double, ptr %4, align 8, !tbaa !67
  %6 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %0, i64 0, i32 17
  %7 = load double, ptr %6, align 8, !tbaa !73
  %8 = fsub double %5, %7
  %9 = tail call double @llvm.fabs.f64(double %8)
  %10 = fcmp olt double %9, 0x3E7AD7F29ABCAF48
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %0, i64 0, i32 13
  %13 = load i32, ptr %12, align 4, !tbaa !46
  %14 = or i32 %13, 16
  store i32 %14, ptr %12, align 4, !tbaa !46
  tail call void @_ZN3pov21Compute_Cylinder_DataEPNS_13Object_StructE(ptr noundef %0)
  br label %99

15:                                               ; preds = %1
  %16 = fcmp olt double %5, %7
  br i1 %16, label %17, label %30

17:                                               ; preds = %15
  %18 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %0, i64 0, i32 15
  %19 = load double, ptr %18, align 8, !tbaa !45
  %20 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %0, i64 0, i32 15, i64 1
  %21 = load double, ptr %20, align 8, !tbaa !45
  %22 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %0, i64 0, i32 15, i64 2
  %23 = load double, ptr %22, align 8, !tbaa !45
  %24 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %0, i64 0, i32 14
  %25 = load double, ptr %24, align 8, !tbaa !45
  store double %25, ptr %18, align 8, !tbaa !45
  %26 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %0, i64 0, i32 14, i64 1
  %27 = load double, ptr %26, align 8, !tbaa !45
  store double %27, ptr %20, align 8, !tbaa !45
  %28 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %0, i64 0, i32 14, i64 2
  %29 = load double, ptr %28, align 8, !tbaa !45
  store double %29, ptr %22, align 8, !tbaa !45
  store double %19, ptr %24, align 8, !tbaa !45
  store double %21, ptr %26, align 8, !tbaa !45
  store double %23, ptr %28, align 8, !tbaa !45
  store double %5, ptr %6, align 8, !tbaa !73
  store double %7, ptr %4, align 8, !tbaa !67
  br label %30

30:                                               ; preds = %17, %15
  %31 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %0, i64 0, i32 14
  %32 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %0, i64 0, i32 15
  %33 = load double, ptr %31, align 8, !tbaa !45
  %34 = load double, ptr %32, align 8, !tbaa !45
  %35 = fsub double %33, %34
  store double %35, ptr %2, align 16, !tbaa !45
  %36 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %0, i64 0, i32 14, i64 1
  %37 = load double, ptr %36, align 8, !tbaa !45
  %38 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %0, i64 0, i32 15, i64 1
  %39 = load double, ptr %38, align 8, !tbaa !45
  %40 = fsub double %37, %39
  %41 = getelementptr inbounds double, ptr %2, i64 1
  store double %40, ptr %41, align 8, !tbaa !45
  %42 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %0, i64 0, i32 14, i64 2
  %43 = load double, ptr %42, align 8, !tbaa !45
  %44 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %0, i64 0, i32 15, i64 2
  %45 = load double, ptr %44, align 8, !tbaa !45
  %46 = fsub double %43, %45
  %47 = getelementptr inbounds double, ptr %2, i64 2
  store double %46, ptr %47, align 16, !tbaa !45
  %48 = fmul double %40, %40
  %49 = tail call double @llvm.fmuladd.f64(double %35, double %35, double %48)
  %50 = tail call double @llvm.fmuladd.f64(double %46, double %46, double %49)
  %51 = tail call double @sqrt(double noundef %50) #8
  %52 = fcmp olt double %51, 0x3E7AD7F29ABCAF48
  br i1 %52, label %53, label %55

53:                                               ; preds = %30
  %54 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.2)
  br label %63

55:                                               ; preds = %30
  %56 = fdiv double 1.000000e+00, %51
  %57 = load double, ptr %2, align 16, !tbaa !45
  %58 = fmul double %56, %57
  store double %58, ptr %2, align 16, !tbaa !45
  %59 = load double, ptr %41, align 8, !tbaa !45
  %60 = fmul double %56, %59
  store double %60, ptr %41, align 8, !tbaa !45
  %61 = load double, ptr %47, align 16, !tbaa !45
  %62 = fmul double %56, %61
  store double %62, ptr %47, align 16, !tbaa !45
  br label %63

63:                                               ; preds = %55, %53
  %64 = load double, ptr %6, align 8, !tbaa !73
  %65 = fmul double %51, %64
  %66 = load double, ptr %4, align 8, !tbaa !67
  %67 = fsub double %66, %64
  %68 = fdiv double %65, %67
  %69 = load double, ptr %2, align 16, !tbaa !45
  %70 = fmul double %69, %68
  store double %70, ptr %3, align 16, !tbaa !45
  %71 = load double, ptr %41, align 8, !tbaa !45
  %72 = fmul double %68, %71
  %73 = getelementptr inbounds double, ptr %3, i64 1
  store double %72, ptr %73, align 8, !tbaa !45
  %74 = load double, ptr %47, align 16, !tbaa !45
  %75 = fmul double %68, %74
  %76 = getelementptr inbounds double, ptr %3, i64 2
  store double %75, ptr %76, align 16, !tbaa !45
  %77 = load double, ptr %32, align 8, !tbaa !45
  %78 = fsub double %77, %70
  store double %78, ptr %3, align 16, !tbaa !45
  %79 = load double, ptr %38, align 8, !tbaa !45
  %80 = fsub double %79, %72
  store double %80, ptr %73, align 8, !tbaa !45
  %81 = load double, ptr %44, align 8, !tbaa !45
  %82 = fsub double %81, %75
  store double %82, ptr %76, align 16, !tbaa !45
  %83 = fadd double %51, %68
  %84 = fdiv double %68, %83
  %85 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %0, i64 0, i32 18
  store double %84, ptr %85, align 8, !tbaa !50
  %86 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %0, i64 0, i32 10
  %87 = load ptr, ptr %86, align 8, !tbaa !38
  call void @_ZN3pov28Compute_Coordinate_TransformEPNS_16Transform_StructEPdS2_dd(ptr noundef %87, ptr noundef nonnull %3, ptr noundef nonnull %2, double noundef %66, double noundef %83)
  %88 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %0, i64 0, i32 9
  %89 = load double, ptr %85, align 8, !tbaa !50
  %90 = fptrunc double %89 to float
  %91 = fsub double 1.000000e+00, %89
  %92 = fptrunc double %91 to float
  store float -1.000000e+00, ptr %88, align 4, !tbaa !66
  %93 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %0, i64 0, i32 9, i32 0, i64 1
  store float -1.000000e+00, ptr %93, align 4, !tbaa !66
  %94 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %0, i64 0, i32 9, i32 0, i64 2
  store float %90, ptr %94, align 4, !tbaa !66
  %95 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %0, i64 0, i32 9, i32 1
  store float 2.000000e+00, ptr %95, align 4, !tbaa !66
  %96 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %0, i64 0, i32 9, i32 1, i64 1
  store float 2.000000e+00, ptr %96, align 4, !tbaa !66
  %97 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %0, i64 0, i32 9, i32 1, i64 2
  store float %92, ptr %97, align 4, !tbaa !66
  %98 = load ptr, ptr %86, align 8, !tbaa !38
  call void @_ZN3pov14Recompute_BBoxEPNS_19Bounding_Box_StructEPNS_16Transform_StructE(ptr noundef nonnull %88, ptr noundef %98)
  br label %99

99:                                               ; preds = %63, %11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3pov21Compute_Cylinder_DataEPNS_13Object_StructE(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [3 x double], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #8
  %3 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %0, i64 0, i32 14
  %4 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %0, i64 0, i32 15
  %5 = load double, ptr %3, align 8, !tbaa !45
  %6 = load double, ptr %4, align 8, !tbaa !45
  %7 = fsub double %5, %6
  store double %7, ptr %2, align 16, !tbaa !45
  %8 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %0, i64 0, i32 14, i64 1
  %9 = load double, ptr %8, align 8, !tbaa !45
  %10 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %0, i64 0, i32 15, i64 1
  %11 = load double, ptr %10, align 8, !tbaa !45
  %12 = fsub double %9, %11
  %13 = getelementptr inbounds double, ptr %2, i64 1
  store double %12, ptr %13, align 8, !tbaa !45
  %14 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %0, i64 0, i32 14, i64 2
  %15 = load double, ptr %14, align 8, !tbaa !45
  %16 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %0, i64 0, i32 15, i64 2
  %17 = load double, ptr %16, align 8, !tbaa !45
  %18 = fsub double %15, %17
  %19 = getelementptr inbounds double, ptr %2, i64 2
  store double %18, ptr %19, align 16, !tbaa !45
  %20 = fmul double %12, %12
  %21 = tail call double @llvm.fmuladd.f64(double %7, double %7, double %20)
  %22 = tail call double @llvm.fmuladd.f64(double %18, double %18, double %21)
  %23 = tail call double @sqrt(double noundef %22) #8
  %24 = fcmp olt double %23, 0x3E7AD7F29ABCAF48
  br i1 %24, label %25, label %27

25:                                               ; preds = %1
  %26 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.3)
  br label %39

27:                                               ; preds = %1
  %28 = fdiv double 1.000000e+00, %23
  %29 = load double, ptr %2, align 16, !tbaa !45
  %30 = fmul double %28, %29
  store double %30, ptr %2, align 16, !tbaa !45
  %31 = load double, ptr %13, align 8, !tbaa !45
  %32 = fmul double %28, %31
  store double %32, ptr %13, align 8, !tbaa !45
  %33 = load double, ptr %19, align 16, !tbaa !45
  %34 = fmul double %28, %33
  store double %34, ptr %19, align 16, !tbaa !45
  %35 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %0, i64 0, i32 10
  %36 = load ptr, ptr %35, align 8, !tbaa !38
  %37 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %0, i64 0, i32 16
  %38 = load double, ptr %37, align 8, !tbaa !67
  call void @_ZN3pov28Compute_Coordinate_TransformEPNS_16Transform_StructEPdS2_dd(ptr noundef %36, ptr noundef nonnull %4, ptr noundef nonnull %2, double noundef %38, double noundef %23)
  br label %39

39:                                               ; preds = %27, %25
  %40 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %0, i64 0, i32 18
  store double 0.000000e+00, ptr %40, align 8, !tbaa !50
  %41 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %0, i64 0, i32 9
  store float -1.000000e+00, ptr %41, align 4, !tbaa !66
  %42 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %0, i64 0, i32 9, i32 0, i64 1
  store float -1.000000e+00, ptr %42, align 4, !tbaa !66
  %43 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %0, i64 0, i32 9, i32 0, i64 2
  store float 0.000000e+00, ptr %43, align 4, !tbaa !66
  %44 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %0, i64 0, i32 9, i32 1
  store float 2.000000e+00, ptr %44, align 4, !tbaa !66
  %45 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %0, i64 0, i32 9, i32 1, i64 1
  store float 2.000000e+00, ptr %45, align 4, !tbaa !66
  %46 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %0, i64 0, i32 9, i32 1, i64 2
  store float 1.000000e+00, ptr %46, align 4, !tbaa !66
  %47 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %0, i64 0, i32 10
  %48 = load ptr, ptr %47, align 8, !tbaa !38
  call void @_ZN3pov14Recompute_BBoxEPNS_19Bounding_Box_StructEPNS_16Transform_StructE(ptr noundef nonnull %41, ptr noundef %48)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #8
  ret void
}

declare noundef i32 @_ZN3pov5ErrorEPKcz(ptr noundef, ...) local_unnamed_addr #1

declare void @_ZN3pov28Compute_Coordinate_TransformEPNS_16Transform_StructEPdS2_dd(ptr noundef, ptr noundef, ptr noundef, double noundef, double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3pov17Compute_Cone_BBoxEPNS_11Cone_StructE(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %0, i64 0, i32 9
  %3 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %0, i64 0, i32 18
  %4 = load double, ptr %3, align 8, !tbaa !50
  %5 = fptrunc double %4 to float
  %6 = fsub double 1.000000e+00, %4
  %7 = fptrunc double %6 to float
  store float -1.000000e+00, ptr %2, align 4, !tbaa !66
  %8 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %0, i64 0, i32 9, i32 0, i64 1
  store float -1.000000e+00, ptr %8, align 4, !tbaa !66
  %9 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %0, i64 0, i32 9, i32 0, i64 2
  store float %5, ptr %9, align 4, !tbaa !66
  %10 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %0, i64 0, i32 9, i32 1
  store float 2.000000e+00, ptr %10, align 4, !tbaa !66
  %11 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %0, i64 0, i32 9, i32 1, i64 1
  store float 2.000000e+00, ptr %11, align 4, !tbaa !66
  %12 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %0, i64 0, i32 9, i32 1, i64 2
  store float %7, ptr %12, align 4, !tbaa !66
  %13 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %0, i64 0, i32 10
  %14 = load ptr, ptr %13, align 8, !tbaa !38
  tail call void @_ZN3pov14Recompute_BBoxEPNS_19Bounding_Box_StructEPNS_16Transform_StructE(ptr noundef nonnull %2, ptr noundef %14)
  ret void
}

declare void @_ZN3pov14Recompute_BBoxEPNS_19Bounding_Box_StructEPNS_16Transform_StructE(ptr noundef, ptr noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN3pov13Point_In_ClipEPdPNS_13Object_StructE(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN3pov14MInvTransPointEPdS0_PNS_16Transform_StructE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN3pov18MInvTransDirectionEPdS0_PNS_16Transform_StructE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #5

declare void @_ZN3pov8incstackEPNS_13istack_structE(ptr noundef) local_unnamed_addr #1

declare void @_ZN3pov12MTransNormalEPdS0_PNS_16Transform_StructE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN3pov18Compose_TransformsEPNS_16Transform_StructES1_(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN3pov17Destroy_TransformEPNS_16Transform_StructE(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

declare noundef ptr @_ZN3pov14Copy_TransformEPNS_16Transform_StructE(ptr noundef) local_unnamed_addr #1

declare void @_ZN3pov8pov_freeEPvPKci(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind }

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
!35 = !{!"long long", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C++ TBAA"}
!38 = !{!39, !40, i64 96}
!39 = !{!"_ZTSN3pov11Cone_StructE", !40, i64 0, !41, i64 8, !40, i64 16, !40, i64 24, !40, i64 32, !40, i64 40, !40, i64 48, !40, i64 56, !40, i64 64, !42, i64 72, !40, i64 96, !40, i64 104, !43, i64 112, !41, i64 116, !36, i64 120, !36, i64 144, !44, i64 168, !44, i64 176, !44, i64 184}
!40 = !{!"any pointer", !36, i64 0}
!41 = !{!"int", !36, i64 0}
!42 = !{!"_ZTSN3pov19Bounding_Box_StructE", !36, i64 0, !36, i64 12}
!43 = !{!"float", !36, i64 0}
!44 = !{!"double", !36, i64 0}
!45 = !{!44, !44, i64 0}
!46 = !{!39, !41, i64 116}
!47 = !{!48, !44, i64 0}
!48 = !{!"_ZTSN3pov27Cone_Intersection_StructureE", !44, i64 0, !41, i64 8}
!49 = !{!48, !41, i64 8}
!50 = !{!39, !44, i64 184}
!51 = !{!52, !40, i64 56}
!52 = !{!"_ZTSN3pov13Object_StructE", !40, i64 0, !41, i64 8, !40, i64 16, !40, i64 24, !40, i64 32, !40, i64 40, !40, i64 48, !40, i64 56, !40, i64 64, !42, i64 72, !40, i64 96, !40, i64 104, !43, i64 112, !41, i64 116}
!53 = !{!54, !40, i64 8}
!54 = !{!"_ZTSN3pov13istack_structE", !40, i64 0, !40, i64 8, !41, i64 16, !41, i64 20}
!55 = !{!54, !41, i64 20}
!56 = !{!57, !44, i64 0}
!57 = !{!"_ZTSN3pov10istk_entryE", !44, i64 0, !36, i64 8, !36, i64 32, !36, i64 56, !36, i64 80, !40, i64 96, !41, i64 104, !41, i64 108, !44, i64 112, !44, i64 120, !44, i64 128, !44, i64 136, !44, i64 144, !44, i64 152, !44, i64 160, !44, i64 168, !44, i64 176, !40, i64 184, !40, i64 192}
!58 = !{!57, !40, i64 96}
!59 = !{!57, !41, i64 104}
!60 = !{!57, !40, i64 192}
!61 = distinct !{!61, !62, !63}
!62 = !{!"llvm.loop.mustprogress"}
!63 = !{!"llvm.loop.unroll.disable"}
!64 = !{!39, !41, i64 8}
!65 = !{!39, !40, i64 0}
!66 = !{!43, !43, i64 0}
!67 = !{!39, !44, i64 168}
!68 = !{i64 0, i64 8, !69, i64 8, i64 4, !70, i64 16, i64 8, !69, i64 24, i64 8, !69, i64 32, i64 8, !69, i64 40, i64 8, !69, i64 48, i64 8, !69, i64 56, i64 8, !69, i64 64, i64 8, !69, i64 72, i64 12, !71, i64 84, i64 12, !71, i64 96, i64 8, !69, i64 104, i64 8, !69, i64 112, i64 4, !66, i64 116, i64 4, !70, i64 120, i64 24, !71, i64 144, i64 24, !71, i64 168, i64 8, !45, i64 176, i64 8, !45, i64 184, i64 8, !45}
!69 = !{!40, !40, i64 0}
!70 = !{!41, !41, i64 0}
!71 = !{!36, !36, i64 0}
!72 = !{!52, !41, i64 116}
!73 = !{!39, !44, i64 176}

; ModuleID = 'fpmetric.cpp'
source_filename = "fpmetric.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.pov::Method_Struct" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"struct.pov::Ray_Struct" = type { [3 x double], [3 x double], i32, i32, [100 x ptr] }
%"struct.pov::Parametric_Struct" = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"struct.pov::Bounding_Box_Struct", ptr, ptr, float, i32, [3 x ptr], double, double, double, double, double, double, i32, i32, %union.anon, ptr, double, double }
%"struct.pov::Bounding_Box_Struct" = type { [3 x float], [3 x float] }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { [3 x double], [3 x double] }
%"struct.pov::PrecompParValues_Struct" = type { i32, i32, i8, [3 x ptr], [3 x ptr] }
%"struct.pov::istack_struct" = type { ptr, ptr, i32, i32 }
%"struct.pov::istk_entry" = type { double, [3 x double], [3 x double], [3 x double], [2 x double], ptr, i32, i32, double, double, double, double, double, double, double, double, double, ptr, ptr }

$_ZN3pov29Evaluate_Function_Interval_UVEjdPdS0_dRdS1_ = comdat any

@_ZN3pov18Parametric_MethodsE = dso_local global %"struct.pov::Method_Struct" { ptr @_ZN3povL28All_Parametric_IntersectionsEPNS_13Object_StructEPNS_10Ray_StructEPNS_13istack_structE, ptr @_ZN3povL17Inside_ParametricEPdPNS_13Object_StructE, ptr @_ZN3povL17Parametric_NormalEPdPNS_13Object_StructEPNS_10istk_entryE, ptr @_ZN3povL18Parametric_UVCoordEPdPNS_13Object_StructEPNS_10istk_entryE, ptr @_ZN3pov15Copy_ParametricEPNS_13Object_StructE, ptr @_ZN3povL20Translate_ParametricEPNS_13Object_StructEPdPNS_16Transform_StructE, ptr @_ZN3povL17Rotate_ParametricEPNS_13Object_StructEPdPNS_16Transform_StructE, ptr @_ZN3povL16Scale_ParametricEPNS_13Object_StructEPdPNS_16Transform_StructE, ptr @_ZN3povL20Transform_ParametricEPNS_13Object_StructEPNS_16Transform_StructE, ptr @_ZN3povL17Invert_ParametricEPNS_13Object_StructE, ptr @_ZN3pov18Destroy_ParametricEPNS_13Object_StructE }, align 8
@.str = private unnamed_addr constant [13 x i8] c"fpmetric.cpp\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"parametric\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"precompute\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Precompute: invalid depth\00", align 1
@_ZN3povL16PrecompLastDepthE = internal unnamed_addr global i32 0, align 4
@_ZN3povL11PrecParDataE = internal unnamed_addr global ptr null, align 8
@_ZN3povL14PrecompParFuncE = internal unnamed_addr global ptr null, align 8
@_ZN3pov5statsE = external local_unnamed_addr global [123 x i64], align 16
@_ZN3povL13Intervals_LowE = internal unnamed_addr global [2 x [32 x double]] zeroinitializer, align 16
@_ZN3povL12Intervals_HiE = internal unnamed_addr global [2 x [32 x double]] zeroinitializer, align 16
@_ZN3povL9SectorNumE = internal unnamed_addr global [32 x i32] zeroinitializer, align 16

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZN3povL28All_Parametric_IntersectionsEPNS_13Object_StructEPNS_10Ray_StructEPNS_13istack_structE(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca [3 x double], align 16
  %5 = alloca [3 x double], align 16
  %6 = alloca [3 x double], align 16
  %7 = alloca [2 x double], align 16
  %8 = alloca [2 x double], align 16
  %9 = alloca %"struct.pov::Ray_Struct", align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %0, i64 0, i32 24
  %17 = load ptr, ptr %16, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(i64 856, ptr nonnull %9) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #11
  %18 = load i64, ptr getelementptr inbounds ([123 x i64], ptr @_ZN3pov5statsE, i64 0, i64 64), align 16, !tbaa !43
  %19 = add nsw i64 %18, 1
  store i64 %19, ptr getelementptr inbounds ([123 x i64], ptr @_ZN3pov5statsE, i64 0, i64 64), align 16, !tbaa !43
  %20 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %0, i64 0, i32 22
  %21 = load i32, ptr %20, align 4, !tbaa !45
  %22 = icmp eq i32 %21, 0
  %23 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %0, i64 0, i32 10
  %24 = load ptr, ptr %23, align 8, !tbaa !46
  br i1 %22, label %70, label %25

25:                                               ; preds = %3
  %26 = icmp eq ptr %24, null
  br i1 %26, label %56, label %27

27:                                               ; preds = %25
  call void @_ZN3pov14MInvTransPointEPdS0_PNS_16Transform_StructE(ptr noundef nonnull %9, ptr noundef %1, ptr noundef nonnull %24)
  %28 = getelementptr inbounds %"struct.pov::Ray_Struct", ptr %9, i64 0, i32 1
  %29 = getelementptr inbounds %"struct.pov::Ray_Struct", ptr %1, i64 0, i32 1
  %30 = load ptr, ptr %23, align 8, !tbaa !46
  call void @_ZN3pov18MInvTransDirectionEPdS0_PNS_16Transform_StructE(ptr noundef nonnull %28, ptr noundef nonnull %29, ptr noundef %30)
  %31 = load double, ptr %28, align 8, !tbaa !47
  %32 = getelementptr inbounds %"struct.pov::Ray_Struct", ptr %9, i64 0, i32 1, i64 1
  %33 = load double, ptr %32, align 8, !tbaa !47
  %34 = fmul double %33, %33
  %35 = call double @llvm.fmuladd.f64(double %31, double %31, double %34)
  %36 = getelementptr inbounds %"struct.pov::Ray_Struct", ptr %9, i64 0, i32 1, i64 2
  %37 = load double, ptr %36, align 8, !tbaa !47
  %38 = call double @llvm.fmuladd.f64(double %37, double %37, double %35)
  %39 = call double @sqrt(double noundef %38) #11
  %40 = fdiv double 1.000000e+00, %39
  %41 = load double, ptr %28, align 8, !tbaa !47
  %42 = fmul double %41, %40
  store double %42, ptr %28, align 8, !tbaa !47
  %43 = load double, ptr %32, align 8, !tbaa !47
  %44 = fmul double %40, %43
  store double %44, ptr %32, align 8, !tbaa !47
  %45 = load double, ptr %36, align 8, !tbaa !47
  %46 = fmul double %40, %45
  store double %46, ptr %36, align 8, !tbaa !47
  %47 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %0, i64 0, i32 23
  %48 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %0, i64 0, i32 23, i32 0, i32 1
  %49 = load double, ptr %48, align 8, !tbaa !48
  %50 = fmul double %49, %49
  %51 = call noundef i32 @_ZN3pov16Intersect_SphereEPNS_10Ray_StructEPddS2_S2_(ptr noundef nonnull %9, ptr noundef nonnull %47, double noundef %50, ptr noundef nonnull %10, ptr noundef nonnull %11)
  %52 = load double, ptr %10, align 8, !tbaa !47
  %53 = fdiv double %52, %39
  store double %53, ptr %10, align 8, !tbaa !47
  %54 = load double, ptr %11, align 8, !tbaa !47
  %55 = fdiv double %54, %39
  store double %55, ptr %11, align 8, !tbaa !47
  br label %62

56:                                               ; preds = %25
  %57 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %0, i64 0, i32 23
  %58 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %0, i64 0, i32 23, i32 0, i32 1
  %59 = load double, ptr %58, align 8, !tbaa !48
  %60 = fmul double %59, %59
  %61 = call noundef i32 @_ZN3pov16Intersect_SphereEPNS_10Ray_StructEPddS2_S2_(ptr noundef %1, ptr noundef nonnull %57, double noundef %60, ptr noundef nonnull %10, ptr noundef nonnull %11)
  br label %62

62:                                               ; preds = %56, %27
  %63 = phi i32 [ %51, %27 ], [ %61, %56 ]
  %64 = load i64, ptr getelementptr inbounds ([123 x i64], ptr @_ZN3pov5statsE, i64 0, i64 70), align 16, !tbaa !43
  %65 = add nsw i64 %64, -1
  store i64 %65, ptr getelementptr inbounds ([123 x i64], ptr @_ZN3pov5statsE, i64 0, i64 70), align 16, !tbaa !43
  %66 = icmp eq i32 %63, 0
  br i1 %66, label %485, label %67

67:                                               ; preds = %62
  %68 = load i64, ptr getelementptr inbounds ([123 x i64], ptr @_ZN3pov5statsE, i64 0, i64 71), align 8, !tbaa !43
  %69 = add nsw i64 %68, -1
  store i64 %69, ptr getelementptr inbounds ([123 x i64], ptr @_ZN3pov5statsE, i64 0, i64 71), align 8, !tbaa !43
  br label %75

70:                                               ; preds = %3
  %71 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %0, i64 0, i32 23
  %72 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %0, i64 0, i32 23, i32 0, i32 1
  %73 = call noundef i32 @_ZN3pov13Intersect_BoxEPNS_10Ray_StructEPNS_16Transform_StructEPdS4_S4_S4_PiS5_(ptr noundef %1, ptr noundef %24, ptr noundef nonnull %71, ptr noundef nonnull %72, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %14, ptr noundef nonnull %15)
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %485, label %75

75:                                               ; preds = %67, %70
  %76 = load i64, ptr getelementptr inbounds ([123 x i64], ptr @_ZN3pov5statsE, i64 0, i64 65), align 8, !tbaa !43
  %77 = add nsw i64 %76, 1
  store i64 %77, ptr getelementptr inbounds ([123 x i64], ptr @_ZN3pov5statsE, i64 0, i64 65), align 8, !tbaa !43
  %78 = load i64, ptr getelementptr inbounds ([123 x i64], ptr @_ZN3pov5statsE, i64 0, i64 62), align 16, !tbaa !43
  %79 = add nsw i64 %78, 1
  store i64 %79, ptr getelementptr inbounds ([123 x i64], ptr @_ZN3pov5statsE, i64 0, i64 62), align 16, !tbaa !43
  %80 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %0, i64 0, i32 10
  %81 = load ptr, ptr %80, align 8, !tbaa !46
  %82 = icmp eq ptr %81, null
  br i1 %82, label %86, label %83

83:                                               ; preds = %75
  call void @_ZN3pov14MInvTransPointEPdS0_PNS_16Transform_StructE(ptr noundef nonnull %4, ptr noundef %1, ptr noundef nonnull %81)
  %84 = getelementptr inbounds %"struct.pov::Ray_Struct", ptr %1, i64 0, i32 1
  %85 = load ptr, ptr %80, align 8, !tbaa !46
  call void @_ZN3pov18MInvTransDirectionEPdS0_PNS_16Transform_StructE(ptr noundef nonnull %5, ptr noundef nonnull %84, ptr noundef %85)
  br label %102

86:                                               ; preds = %75
  %87 = load double, ptr %1, align 8, !tbaa !47
  store double %87, ptr %4, align 16, !tbaa !47
  %88 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 1
  %89 = load double, ptr %88, align 8, !tbaa !47
  %90 = getelementptr inbounds [3 x double], ptr %4, i64 0, i64 1
  store double %89, ptr %90, align 8, !tbaa !47
  %91 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 2
  %92 = load double, ptr %91, align 8, !tbaa !47
  %93 = getelementptr inbounds [3 x double], ptr %4, i64 0, i64 2
  store double %92, ptr %93, align 16, !tbaa !47
  %94 = getelementptr inbounds %"struct.pov::Ray_Struct", ptr %1, i64 0, i32 1
  %95 = load double, ptr %94, align 8, !tbaa !47
  store double %95, ptr %5, align 16, !tbaa !47
  %96 = getelementptr inbounds %"struct.pov::Ray_Struct", ptr %1, i64 0, i32 1, i64 1
  %97 = load double, ptr %96, align 8, !tbaa !47
  %98 = getelementptr inbounds [3 x double], ptr %5, i64 0, i64 1
  store double %97, ptr %98, align 8, !tbaa !47
  %99 = getelementptr inbounds %"struct.pov::Ray_Struct", ptr %1, i64 0, i32 1, i64 2
  %100 = load double, ptr %99, align 8, !tbaa !47
  %101 = getelementptr inbounds [3 x double], ptr %5, i64 0, i64 2
  store double %100, ptr %101, align 16, !tbaa !47
  br label %102

102:                                              ; preds = %86, %83
  %103 = load double, ptr %10, align 8, !tbaa !47
  %104 = load double, ptr %11, align 8, !tbaa !47
  %105 = fcmp oeq double %103, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %102
  store double 0.000000e+00, ptr %10, align 8, !tbaa !47
  br label %107

107:                                              ; preds = %106, %102
  %108 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %0, i64 0, i32 19
  %109 = load double, ptr %108, align 8, !tbaa !49
  %110 = load double, ptr %10, align 8, !tbaa !47
  %111 = call double @llvm.fmuladd.f64(double %109, double 4.000000e+00, double %110)
  store double %111, ptr %10, align 8, !tbaa !47
  %112 = fcmp ogt double %111, %104
  br i1 %112, label %485, label %113

113:                                              ; preds = %107
  %114 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %0, i64 0, i32 15
  %115 = load double, ptr %114, align 8, !tbaa !50
  store double %115, ptr @_ZN3povL13Intervals_LowE, align 16, !tbaa !47
  %116 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %0, i64 0, i32 16
  %117 = load double, ptr %116, align 8, !tbaa !51
  store double %117, ptr @_ZN3povL12Intervals_HiE, align 16, !tbaa !47
  %118 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %0, i64 0, i32 17
  %119 = load double, ptr %118, align 8, !tbaa !52
  store double %119, ptr getelementptr inbounds ([2 x [32 x double]], ptr @_ZN3povL13Intervals_LowE, i64 0, i64 1), align 16, !tbaa !47
  %120 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %0, i64 0, i32 18
  %121 = load double, ptr %120, align 8, !tbaa !53
  store double %121, ptr getelementptr inbounds ([2 x [32 x double]], ptr @_ZN3povL12Intervals_HiE, i64 0, i64 1), align 16, !tbaa !47
  store i32 1, ptr @_ZN3povL9SectorNumE, align 16, !tbaa !54
  %122 = icmp eq ptr %17, null
  br i1 %122, label %148, label %123

123:                                              ; preds = %113
  %124 = getelementptr inbounds %"struct.pov::PrecompParValues_Struct", ptr %17, i64 0, i32 2
  %125 = load i8, ptr %124, align 8, !tbaa !55
  %126 = and i8 %125, 1
  %127 = icmp eq i8 %126, 0
  br i1 %127, label %132, label %128

128:                                              ; preds = %123
  %129 = getelementptr inbounds %"struct.pov::PrecompParValues_Struct", ptr %17, i64 0, i32 1
  %130 = load i32, ptr %129, align 4, !tbaa !57
  %131 = shl nuw i32 1, %130
  br label %132

132:                                              ; preds = %128, %123
  %133 = phi i32 [ %131, %128 ], [ 0, %123 ]
  %134 = and i8 %125, 2
  %135 = icmp eq i8 %134, 0
  br i1 %135, label %140, label %136

136:                                              ; preds = %132
  %137 = getelementptr inbounds %"struct.pov::PrecompParValues_Struct", ptr %17, i64 0, i32 1
  %138 = load i32, ptr %137, align 4, !tbaa !57
  %139 = shl nuw i32 1, %138
  br label %140

140:                                              ; preds = %136, %132
  %141 = phi i32 [ %139, %136 ], [ 0, %132 ]
  %142 = and i8 %125, 4
  %143 = icmp eq i8 %142, 0
  br i1 %143, label %148, label %144

144:                                              ; preds = %140
  %145 = getelementptr inbounds %"struct.pov::PrecompParValues_Struct", ptr %17, i64 0, i32 1
  %146 = load i32, ptr %145, align 4, !tbaa !57
  %147 = shl nuw i32 1, %146
  br label %148

148:                                              ; preds = %140, %144, %113
  %149 = phi i32 [ %133, %144 ], [ %133, %140 ], [ 0, %113 ]
  %150 = phi i32 [ %141, %144 ], [ %141, %140 ], [ 0, %113 ]
  %151 = phi i32 [ %147, %144 ], [ 0, %140 ], [ 0, %113 ]
  %152 = getelementptr inbounds [2 x double], ptr %7, i64 0, i64 1
  %153 = getelementptr inbounds [2 x double], ptr %8, i64 0, i64 1
  %154 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %0, i64 0, i32 14
  %155 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %0, i64 0, i32 20
  %156 = getelementptr inbounds %"struct.pov::PrecompParValues_Struct", ptr %17, i64 0, i32 3
  %157 = getelementptr inbounds %"struct.pov::PrecompParValues_Struct", ptr %17, i64 0, i32 4
  %158 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %0, i64 0, i32 14, i64 1
  %159 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %0, i64 0, i32 20
  %160 = getelementptr inbounds %"struct.pov::PrecompParValues_Struct", ptr %17, i64 0, i32 3, i64 1
  %161 = getelementptr inbounds %"struct.pov::PrecompParValues_Struct", ptr %17, i64 0, i32 4, i64 1
  %162 = getelementptr inbounds [3 x double], ptr %5, i64 0, i64 1
  %163 = getelementptr inbounds [3 x double], ptr %4, i64 0, i64 1
  %164 = getelementptr inbounds [3 x double], ptr %4, i64 0, i64 1
  %165 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %0, i64 0, i32 14, i64 2
  %166 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %0, i64 0, i32 20
  %167 = getelementptr inbounds %"struct.pov::PrecompParValues_Struct", ptr %17, i64 0, i32 3, i64 2
  %168 = getelementptr inbounds %"struct.pov::PrecompParValues_Struct", ptr %17, i64 0, i32 4, i64 2
  %169 = getelementptr inbounds [3 x double], ptr %5, i64 0, i64 2
  %170 = getelementptr inbounds [3 x double], ptr %4, i64 0, i64 2
  %171 = getelementptr inbounds [3 x double], ptr %4, i64 0, i64 2
  %172 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %0, i64 0, i32 25
  %173 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %0, i64 0, i32 26
  br label %174

174:                                              ; preds = %148, %225
  %175 = phi i32 [ 0, %148 ], [ %232, %225 ]
  %176 = phi double [ 0x7FF0000000000000, %148 ], [ %231, %225 ]
  %177 = phi double [ undef, %148 ], [ %230, %225 ]
  %178 = phi double [ undef, %148 ], [ %229, %225 ]
  %179 = phi double [ undef, %148 ], [ %228, %225 ]
  %180 = phi double [ undef, %148 ], [ %227, %225 ]
  %181 = phi double [ undef, %148 ], [ %226, %225 ]
  %182 = zext nneg i32 %175 to i64
  %183 = getelementptr inbounds [32 x double], ptr @_ZN3povL13Intervals_LowE, i64 0, i64 %182
  %184 = load double, ptr %183, align 8, !tbaa !47
  store double %184, ptr %7, align 16, !tbaa !47
  %185 = getelementptr inbounds [32 x double], ptr @_ZN3povL12Intervals_HiE, i64 0, i64 %182
  %186 = load double, ptr %185, align 8, !tbaa !47
  store double %186, ptr %8, align 16, !tbaa !47
  %187 = fsub double %186, %184
  %188 = getelementptr inbounds [2 x [32 x double]], ptr @_ZN3povL13Intervals_LowE, i64 0, i64 1, i64 %182
  %189 = load double, ptr %188, align 8, !tbaa !47
  store double %189, ptr %152, align 8, !tbaa !47
  %190 = getelementptr inbounds [2 x [32 x double]], ptr @_ZN3povL12Intervals_HiE, i64 0, i64 1, i64 %182
  %191 = load double, ptr %190, align 8, !tbaa !47
  store double %191, ptr %153, align 8, !tbaa !47
  %192 = fsub double %191, %189
  %193 = fcmp ogt double %192, %187
  %194 = select i1 %193, double %192, double %187
  %195 = zext i1 %193 to i64
  %196 = getelementptr inbounds [32 x i32], ptr @_ZN3povL9SectorNumE, i64 0, i64 %182
  %197 = load i32, ptr %196, align 4, !tbaa !54
  %198 = icmp slt i32 %197, %149
  br i1 %198, label %199, label %207

199:                                              ; preds = %174
  %200 = load ptr, ptr %156, align 8, !tbaa !58
  %201 = sext i32 %197 to i64
  %202 = getelementptr inbounds double, ptr %200, i64 %201
  %203 = load double, ptr %202, align 8, !tbaa !47
  store double %203, ptr %12, align 8, !tbaa !47
  %204 = load ptr, ptr %157, align 8, !tbaa !58
  %205 = getelementptr inbounds double, ptr %204, i64 %201
  %206 = load double, ptr %205, align 8, !tbaa !47
  store double %206, ptr %13, align 8, !tbaa !47
  br label %212

207:                                              ; preds = %174
  %208 = load ptr, ptr %154, align 8, !tbaa !58
  %209 = load i32, ptr %208, align 4, !tbaa !54
  %210 = load double, ptr %108, align 8, !tbaa !49
  %211 = load double, ptr %155, align 8, !tbaa !59
  call void @_ZN3pov29Evaluate_Function_Interval_UVEjdPdS0_dRdS1_(i32 noundef %209, double noundef %210, ptr noundef nonnull %7, ptr noundef nonnull %8, double noundef %211, ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %13)
  br label %212

212:                                              ; preds = %207, %199
  %213 = load double, ptr %5, align 16, !tbaa !47
  %214 = call double @llvm.fabs.f64(double %213)
  %215 = fcmp uge double %214, 0x3E7AD7F29ABCAF48
  %216 = load double, ptr %13, align 8, !tbaa !47
  %217 = load double, ptr %4, align 16, !tbaa !47
  br i1 %215, label %234, label %218

218:                                              ; preds = %212
  %219 = fcmp olt double %216, %217
  %220 = load double, ptr %12, align 8
  %221 = fcmp ogt double %220, %217
  %222 = select i1 %219, i1 true, i1 %221
  br i1 %222, label %223, label %256

223:                                              ; preds = %218
  %224 = add nsw i32 %175, -1
  br label %225

225:                                              ; preds = %411, %414, %223, %248, %252, %287, %304, %308, %315, %355, %372, %376, %383, %390
  %226 = phi double [ %181, %223 ], [ %257, %287 ], [ %257, %355 ], [ %257, %372 ], [ %257, %376 ], [ %257, %383 ], [ %257, %390 ], [ %257, %304 ], [ %257, %308 ], [ %257, %315 ], [ %241, %248 ], [ %241, %252 ], [ %257, %414 ], [ %257, %411 ]
  %227 = phi double [ %180, %223 ], [ %180, %287 ], [ %322, %355 ], [ %322, %372 ], [ %322, %376 ], [ %322, %383 ], [ %322, %390 ], [ %297, %304 ], [ %297, %308 ], [ %297, %315 ], [ %180, %248 ], [ %180, %252 ], [ %322, %414 ], [ %322, %411 ]
  %228 = phi double [ %179, %223 ], [ %179, %287 ], [ %323, %355 ], [ %323, %372 ], [ %323, %376 ], [ %323, %383 ], [ %323, %390 ], [ %298, %304 ], [ %298, %308 ], [ %298, %315 ], [ %179, %248 ], [ %179, %252 ], [ %323, %414 ], [ %323, %411 ]
  %229 = phi double [ %178, %223 ], [ %258, %287 ], [ %324, %355 ], [ %324, %372 ], [ %365, %376 ], [ %365, %383 ], [ %365, %390 ], [ %258, %304 ], [ %297, %308 ], [ %297, %315 ], [ %178, %248 ], [ %242, %252 ], [ %397, %414 ], [ %397, %411 ]
  %230 = phi double [ %177, %223 ], [ %260, %287 ], [ %260, %355 ], [ %260, %372 ], [ %260, %376 ], [ %260, %383 ], [ %260, %390 ], [ %260, %304 ], [ %260, %308 ], [ %260, %315 ], [ %242, %248 ], [ %242, %252 ], [ %260, %414 ], [ %260, %411 ]
  %231 = phi double [ %176, %223 ], [ %176, %287 ], [ %176, %355 ], [ %176, %372 ], [ %176, %376 ], [ %176, %383 ], [ %176, %390 ], [ %176, %304 ], [ %176, %308 ], [ %176, %315 ], [ %176, %248 ], [ %176, %252 ], [ %176, %414 ], [ %412, %411 ]
  %232 = phi i32 [ %224, %223 ], [ %288, %287 ], [ %356, %355 ], [ %373, %372 ], [ %377, %376 ], [ %384, %383 ], [ %391, %390 ], [ %305, %304 ], [ %309, %308 ], [ %316, %315 ], [ %249, %248 ], [ %253, %252 ], [ %419, %414 ], [ %413, %411 ]
  %233 = icmp sgt i32 %232, -1
  br i1 %233, label %174, label %438, !llvm.loop !60

234:                                              ; preds = %212
  %235 = fsub double %216, %217
  %236 = fdiv double %235, %213
  %237 = load double, ptr %12, align 8, !tbaa !47
  %238 = fsub double %237, %217
  %239 = fdiv double %238, %213
  %240 = fcmp ogt double %236, %239
  %241 = select i1 %240, double %236, double %239
  %242 = select i1 %240, double %239, double %236
  %243 = load double, ptr %11, align 8, !tbaa !47
  %244 = fcmp ogt double %242, %243
  %245 = load double, ptr %10, align 8
  %246 = fcmp olt double %241, %245
  %247 = select i1 %244, i1 true, i1 %246
  br i1 %247, label %248, label %250

248:                                              ; preds = %234
  %249 = add nsw i32 %175, -1
  br label %225

250:                                              ; preds = %234
  %251 = fcmp ogt double %242, %176
  br i1 %251, label %252, label %254

252:                                              ; preds = %250
  %253 = add nsw i32 %175, -1
  br label %225

254:                                              ; preds = %250
  %255 = fsub double %241, %242
  br label %256

256:                                              ; preds = %218, %254
  %257 = phi double [ %241, %254 ], [ %181, %218 ]
  %258 = phi double [ %242, %254 ], [ %178, %218 ]
  %259 = phi double [ %255, %254 ], [ 0.000000e+00, %218 ]
  %260 = phi double [ %242, %254 ], [ %177, %218 ]
  %261 = load i32, ptr %196, align 4, !tbaa !54
  %262 = icmp slt i32 %261, %150
  br i1 %262, label %263, label %271

263:                                              ; preds = %256
  %264 = load ptr, ptr %160, align 8, !tbaa !58
  %265 = sext i32 %261 to i64
  %266 = getelementptr inbounds double, ptr %264, i64 %265
  %267 = load double, ptr %266, align 8, !tbaa !47
  store double %267, ptr %12, align 8, !tbaa !47
  %268 = load ptr, ptr %161, align 8, !tbaa !58
  %269 = getelementptr inbounds double, ptr %268, i64 %265
  %270 = load double, ptr %269, align 8, !tbaa !47
  store double %270, ptr %13, align 8, !tbaa !47
  br label %276

271:                                              ; preds = %256
  %272 = load ptr, ptr %158, align 8, !tbaa !58
  %273 = load i32, ptr %272, align 4, !tbaa !54
  %274 = load double, ptr %108, align 8, !tbaa !49
  %275 = load double, ptr %159, align 8, !tbaa !59
  call void @_ZN3pov29Evaluate_Function_Interval_UVEjdPdS0_dRdS1_(i32 noundef %273, double noundef %274, ptr noundef nonnull %7, ptr noundef nonnull %8, double noundef %275, ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %13)
  br label %276

276:                                              ; preds = %271, %263
  %277 = load double, ptr %162, align 8, !tbaa !47
  %278 = call double @llvm.fabs.f64(double %277)
  %279 = fcmp uge double %278, 0x3E7AD7F29ABCAF48
  %280 = load double, ptr %13, align 8, !tbaa !47
  br i1 %279, label %289, label %281

281:                                              ; preds = %276
  %282 = load double, ptr %163, align 8, !tbaa !47
  %283 = fcmp olt double %280, %282
  %284 = load double, ptr %12, align 8
  %285 = fcmp ogt double %284, %282
  %286 = select i1 %283, i1 true, i1 %285
  br i1 %286, label %287, label %321

287:                                              ; preds = %281
  %288 = add nsw i32 %175, -1
  br label %225

289:                                              ; preds = %276
  %290 = load double, ptr %164, align 8, !tbaa !47
  %291 = fsub double %280, %290
  %292 = fdiv double %291, %277
  %293 = load double, ptr %12, align 8, !tbaa !47
  %294 = fsub double %293, %290
  %295 = fdiv double %294, %277
  %296 = fcmp ogt double %292, %295
  %297 = select i1 %296, double %295, double %292
  %298 = select i1 %296, double %292, double %295
  %299 = load double, ptr %11, align 8, !tbaa !47
  %300 = fcmp ogt double %297, %299
  %301 = load double, ptr %10, align 8
  %302 = fcmp olt double %298, %301
  %303 = select i1 %300, i1 true, i1 %302
  br i1 %303, label %304, label %306

304:                                              ; preds = %289
  %305 = add nsw i32 %175, -1
  br label %225

306:                                              ; preds = %289
  %307 = fcmp ogt double %297, %176
  br i1 %307, label %308, label %310

308:                                              ; preds = %306
  %309 = add nsw i32 %175, -1
  br label %225

310:                                              ; preds = %306
  br i1 %215, label %311, label %317

311:                                              ; preds = %310
  %312 = fcmp ogt double %297, %257
  %313 = fcmp olt double %298, %260
  %314 = select i1 %312, i1 true, i1 %313
  br i1 %314, label %315, label %317

315:                                              ; preds = %311
  %316 = add nsw i32 %175, -1
  br label %225

317:                                              ; preds = %311, %310
  %318 = fsub double %298, %297
  %319 = fcmp ogt double %318, %259
  br i1 %319, label %320, label %321

320:                                              ; preds = %317
  br label %321

321:                                              ; preds = %281, %317, %320
  %322 = phi double [ %297, %320 ], [ %297, %317 ], [ %180, %281 ]
  %323 = phi double [ %298, %320 ], [ %298, %317 ], [ %179, %281 ]
  %324 = phi double [ %297, %320 ], [ %297, %317 ], [ %258, %281 ]
  %325 = phi double [ %318, %320 ], [ %259, %317 ], [ %259, %281 ]
  %326 = load i32, ptr %196, align 4, !tbaa !54
  %327 = icmp slt i32 %326, %151
  %328 = icmp sgt i32 %326, 0
  %329 = and i1 %327, %328
  br i1 %329, label %330, label %339

330:                                              ; preds = %321
  %331 = load ptr, ptr %167, align 8, !tbaa !58
  %332 = zext nneg i32 %326 to i64
  %333 = getelementptr inbounds double, ptr %331, i64 %332
  %334 = load double, ptr %333, align 8, !tbaa !47
  store double %334, ptr %12, align 8, !tbaa !47
  %335 = load ptr, ptr %168, align 8, !tbaa !58
  %336 = sext i32 %326 to i64
  %337 = getelementptr inbounds double, ptr %335, i64 %336
  %338 = load double, ptr %337, align 8, !tbaa !47
  store double %338, ptr %13, align 8, !tbaa !47
  br label %344

339:                                              ; preds = %321
  %340 = load ptr, ptr %165, align 8, !tbaa !58
  %341 = load i32, ptr %340, align 4, !tbaa !54
  %342 = load double, ptr %108, align 8, !tbaa !49
  %343 = load double, ptr %166, align 8, !tbaa !59
  call void @_ZN3pov29Evaluate_Function_Interval_UVEjdPdS0_dRdS1_(i32 noundef %341, double noundef %342, ptr noundef nonnull %7, ptr noundef nonnull %8, double noundef %343, ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %13)
  br label %344

344:                                              ; preds = %339, %330
  %345 = load double, ptr %169, align 16, !tbaa !47
  %346 = call double @llvm.fabs.f64(double %345)
  %347 = fcmp olt double %346, 0x3E7AD7F29ABCAF48
  %348 = load double, ptr %13, align 8, !tbaa !47
  br i1 %347, label %349, label %357

349:                                              ; preds = %344
  %350 = load double, ptr %171, align 16, !tbaa !47
  %351 = fcmp olt double %348, %350
  %352 = load double, ptr %12, align 8
  %353 = fcmp ogt double %352, %350
  %354 = select i1 %351, i1 true, i1 %353
  br i1 %354, label %355, label %396

355:                                              ; preds = %349
  %356 = add nsw i32 %175, -1
  br label %225

357:                                              ; preds = %344
  %358 = load double, ptr %170, align 16, !tbaa !47
  %359 = fsub double %348, %358
  %360 = fdiv double %359, %345
  %361 = load double, ptr %12, align 8, !tbaa !47
  %362 = fsub double %361, %358
  %363 = fdiv double %362, %345
  %364 = fcmp ogt double %360, %363
  %365 = select i1 %364, double %363, double %360
  %366 = select i1 %364, double %360, double %363
  %367 = load double, ptr %11, align 8, !tbaa !47
  %368 = fcmp ogt double %365, %367
  %369 = load double, ptr %10, align 8
  %370 = fcmp olt double %366, %369
  %371 = select i1 %368, i1 true, i1 %370
  br i1 %371, label %372, label %374

372:                                              ; preds = %357
  %373 = add nsw i32 %175, -1
  br label %225

374:                                              ; preds = %357
  %375 = fcmp ogt double %365, %176
  br i1 %375, label %376, label %378

376:                                              ; preds = %374
  %377 = add nsw i32 %175, -1
  br label %225

378:                                              ; preds = %374
  br i1 %215, label %379, label %385

379:                                              ; preds = %378
  %380 = fcmp ogt double %365, %257
  %381 = fcmp olt double %366, %260
  %382 = select i1 %380, i1 true, i1 %381
  br i1 %382, label %383, label %385

383:                                              ; preds = %379
  %384 = add nsw i32 %175, -1
  br label %225

385:                                              ; preds = %379, %378
  br i1 %279, label %386, label %392

386:                                              ; preds = %385
  %387 = fcmp ogt double %365, %323
  %388 = fcmp olt double %366, %322
  %389 = select i1 %387, i1 true, i1 %388
  br i1 %389, label %390, label %392

390:                                              ; preds = %386
  %391 = add nsw i32 %175, -1
  br label %225

392:                                              ; preds = %386, %385
  %393 = fsub double %366, %365
  %394 = fcmp ogt double %393, %325
  br i1 %394, label %395, label %396

395:                                              ; preds = %392
  br label %396

396:                                              ; preds = %349, %392, %395
  %397 = phi double [ %365, %395 ], [ %365, %392 ], [ %324, %349 ]
  %398 = phi double [ %393, %395 ], [ %325, %392 ], [ %325, %349 ]
  %399 = fcmp ogt double %194, %398
  %400 = select i1 %399, double %398, double %194
  %401 = load double, ptr %108, align 8, !tbaa !49
  %402 = fcmp olt double %400, %401
  br i1 %402, label %403, label %414

403:                                              ; preds = %396
  %404 = fcmp ogt double %176, %397
  %405 = load double, ptr %10, align 8
  %406 = fcmp ogt double %397, %405
  %407 = select i1 %404, i1 %406, i1 false
  br i1 %407, label %408, label %411

408:                                              ; preds = %403
  %409 = load double, ptr %7, align 16, !tbaa !47
  store double %409, ptr %172, align 8, !tbaa !63
  %410 = load double, ptr %152, align 8, !tbaa !47
  store double %410, ptr %173, align 8, !tbaa !64
  br label %411

411:                                              ; preds = %408, %403
  %412 = phi double [ %397, %408 ], [ %176, %403 ]
  %413 = add nsw i32 %175, -1
  br label %225

414:                                              ; preds = %396
  %415 = load i32, ptr %196, align 4, !tbaa !54
  %416 = shl nsw i32 %415, 1
  %417 = icmp sgt i32 %415, 4999999
  %418 = select i1 %417, i32 10000000, i32 %416
  store i32 %418, ptr %196, align 4, !tbaa !54
  %419 = add nuw nsw i32 %175, 1
  %420 = zext nneg i32 %419 to i64
  %421 = getelementptr inbounds [32 x i32], ptr @_ZN3povL9SectorNumE, i64 0, i64 %420
  store i32 %418, ptr %421, align 4, !tbaa !54
  %422 = or disjoint i32 %418, 1
  store i32 %422, ptr %196, align 4, !tbaa !54
  %423 = load double, ptr %7, align 16, !tbaa !47
  %424 = getelementptr inbounds [32 x double], ptr @_ZN3povL13Intervals_LowE, i64 0, i64 %420
  store double %423, ptr %424, align 8, !tbaa !47
  %425 = load double, ptr %8, align 16, !tbaa !47
  %426 = getelementptr inbounds [32 x double], ptr @_ZN3povL12Intervals_HiE, i64 0, i64 %420
  store double %425, ptr %426, align 8, !tbaa !47
  %427 = load double, ptr %152, align 8, !tbaa !47
  %428 = getelementptr inbounds [2 x [32 x double]], ptr @_ZN3povL13Intervals_LowE, i64 0, i64 1, i64 %420
  store double %427, ptr %428, align 8, !tbaa !47
  %429 = load double, ptr %153, align 8, !tbaa !47
  %430 = getelementptr inbounds [2 x [32 x double]], ptr @_ZN3povL12Intervals_HiE, i64 0, i64 1, i64 %420
  store double %429, ptr %430, align 8, !tbaa !47
  %431 = getelementptr inbounds [2 x [32 x double]], ptr @_ZN3povL12Intervals_HiE, i64 0, i64 %195, i64 %420
  %432 = load double, ptr %431, align 8, !tbaa !47
  %433 = getelementptr inbounds [2 x [32 x double]], ptr @_ZN3povL13Intervals_LowE, i64 0, i64 %195, i64 %420
  %434 = load double, ptr %433, align 8, !tbaa !47
  %435 = fadd double %432, %434
  %436 = fmul double %435, 5.000000e-01
  store double %436, ptr %431, align 8, !tbaa !47
  %437 = getelementptr inbounds [2 x [32 x double]], ptr @_ZN3povL13Intervals_LowE, i64 0, i64 %195, i64 %182
  store double %436, ptr %437, align 8, !tbaa !47
  br label %225

438:                                              ; preds = %225
  %439 = load double, ptr %11, align 8, !tbaa !47
  %440 = fcmp olt double %231, %439
  br i1 %440, label %441, label %485

441:                                              ; preds = %438
  %442 = load i64, ptr getelementptr inbounds ([123 x i64], ptr @_ZN3pov5statsE, i64 0, i64 63), align 8, !tbaa !43
  %443 = add nsw i64 %442, 1
  store i64 %443, ptr getelementptr inbounds ([123 x i64], ptr @_ZN3pov5statsE, i64 0, i64 63), align 8, !tbaa !43
  %444 = getelementptr inbounds %"struct.pov::Ray_Struct", ptr %1, i64 0, i32 1
  %445 = load double, ptr %444, align 8, !tbaa !47
  %446 = fmul double %231, %445
  store double %446, ptr %6, align 16, !tbaa !47
  %447 = getelementptr inbounds %"struct.pov::Ray_Struct", ptr %1, i64 0, i32 1, i64 1
  %448 = load double, ptr %447, align 8, !tbaa !47
  %449 = fmul double %231, %448
  %450 = getelementptr inbounds double, ptr %6, i64 1
  store double %449, ptr %450, align 8, !tbaa !47
  %451 = getelementptr inbounds %"struct.pov::Ray_Struct", ptr %1, i64 0, i32 1, i64 2
  %452 = load double, ptr %451, align 8, !tbaa !47
  %453 = fmul double %231, %452
  %454 = getelementptr inbounds double, ptr %6, i64 2
  store double %453, ptr %454, align 16, !tbaa !47
  %455 = load double, ptr %1, align 8, !tbaa !47
  %456 = fadd double %446, %455
  store double %456, ptr %6, align 16, !tbaa !47
  %457 = getelementptr inbounds double, ptr %1, i64 1
  %458 = load double, ptr %457, align 8, !tbaa !47
  %459 = fadd double %449, %458
  store double %459, ptr %450, align 8, !tbaa !47
  %460 = getelementptr inbounds double, ptr %1, i64 2
  %461 = load double, ptr %460, align 8, !tbaa !47
  %462 = fadd double %453, %461
  store double %462, ptr %454, align 16, !tbaa !47
  %463 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %0, i64 0, i32 7
  %464 = load ptr, ptr %463, align 8, !tbaa !65
  %465 = call noundef zeroext i1 @_ZN3pov13Point_In_ClipEPdPNS_13Object_StructE(ptr noundef nonnull %6, ptr noundef %464)
  br i1 %465, label %466, label %485

466:                                              ; preds = %441
  %467 = getelementptr inbounds %"struct.pov::istack_struct", ptr %2, i64 0, i32 1
  %468 = load ptr, ptr %467, align 8, !tbaa !66
  %469 = getelementptr inbounds %"struct.pov::istack_struct", ptr %2, i64 0, i32 3
  %470 = load i32, ptr %469, align 4, !tbaa !68
  %471 = zext i32 %470 to i64
  %472 = getelementptr inbounds %"struct.pov::istk_entry", ptr %468, i64 %471
  store double %231, ptr %472, align 8, !tbaa !69
  %473 = getelementptr inbounds %"struct.pov::istk_entry", ptr %468, i64 %471, i32 5
  store ptr %0, ptr %473, align 8, !tbaa !71
  %474 = getelementptr inbounds %"struct.pov::istk_entry", ptr %468, i64 %471, i32 1
  %475 = load double, ptr %6, align 16, !tbaa !47
  store double %475, ptr %474, align 8, !tbaa !47
  %476 = load double, ptr %450, align 8, !tbaa !47
  %477 = getelementptr inbounds double, ptr %474, i64 1
  store double %476, ptr %477, align 8, !tbaa !47
  %478 = load double, ptr %454, align 16, !tbaa !47
  %479 = getelementptr inbounds double, ptr %474, i64 2
  store double %478, ptr %479, align 8, !tbaa !47
  %480 = getelementptr inbounds %"struct.pov::istk_entry", ptr %468, i64 %471, i32 4
  %481 = load double, ptr %6, align 16, !tbaa !47
  store double %481, ptr %480, align 8, !tbaa !47
  %482 = load double, ptr %450, align 8, !tbaa !47
  %483 = getelementptr inbounds double, ptr %480, i64 1
  store double %482, ptr %483, align 8, !tbaa !47
  %484 = getelementptr inbounds %"struct.pov::istk_entry", ptr %468, i64 %471, i32 18
  store ptr null, ptr %484, align 8, !tbaa !72
  call void @_ZN3pov8incstackEPNS_13istack_structE(ptr noundef %2)
  br label %485

485:                                              ; preds = %62, %438, %441, %107, %70, %466
  %486 = phi i32 [ 1, %466 ], [ 0, %70 ], [ 0, %107 ], [ 0, %441 ], [ 0, %438 ], [ 0, %62 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 856, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #11
  ret i32 %486
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @_ZN3povL17Inside_ParametricEPdPNS_13Object_StructE(ptr nocapture readnone %0, ptr nocapture readnone %1) #1 {
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN3povL17Parametric_NormalEPdPNS_13Object_StructEPNS_10istk_entryE(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 {
  %4 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %1, i64 0, i32 25
  %5 = load double, ptr %4, align 8, !tbaa !63
  %6 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %1, i64 0, i32 26
  %7 = load double, ptr %6, align 8, !tbaa !64
  %8 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %1, i64 0, i32 14
  %9 = load ptr, ptr %8, align 8, !tbaa !58
  %10 = load i32, ptr %9, align 4, !tbaa !54
  tail call void @_ZN3pov15POVFPU_SetLocalEjd(i32 noundef 0, double noundef %5)
  tail call void @_ZN3pov15POVFPU_SetLocalEjd(i32 noundef 1, double noundef %7)
  %11 = tail call noundef double @_ZN3pov17POVFPU_RunDefaultEj(i32 noundef %10)
  %12 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %1, i64 0, i32 14, i64 1
  %13 = load ptr, ptr %12, align 8, !tbaa !58
  %14 = load i32, ptr %13, align 4, !tbaa !54
  tail call void @_ZN3pov15POVFPU_SetLocalEjd(i32 noundef 0, double noundef %5)
  tail call void @_ZN3pov15POVFPU_SetLocalEjd(i32 noundef 1, double noundef %7)
  %15 = tail call noundef double @_ZN3pov17POVFPU_RunDefaultEj(i32 noundef %14)
  %16 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %1, i64 0, i32 14, i64 2
  %17 = load ptr, ptr %16, align 8, !tbaa !58
  %18 = load i32, ptr %17, align 4, !tbaa !54
  tail call void @_ZN3pov15POVFPU_SetLocalEjd(i32 noundef 0, double noundef %5)
  tail call void @_ZN3pov15POVFPU_SetLocalEjd(i32 noundef 1, double noundef %7)
  %19 = tail call noundef double @_ZN3pov17POVFPU_RunDefaultEj(i32 noundef %18)
  %20 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %1, i64 0, i32 19
  %21 = load double, ptr %20, align 8, !tbaa !49
  %22 = fadd double %5, %21
  %23 = load ptr, ptr %8, align 8, !tbaa !58
  %24 = load i32, ptr %23, align 4, !tbaa !54
  tail call void @_ZN3pov15POVFPU_SetLocalEjd(i32 noundef 0, double noundef %22)
  tail call void @_ZN3pov15POVFPU_SetLocalEjd(i32 noundef 1, double noundef %7)
  %25 = tail call noundef double @_ZN3pov17POVFPU_RunDefaultEj(i32 noundef %24)
  %26 = fsub double %25, %11
  %27 = load ptr, ptr %12, align 8, !tbaa !58
  %28 = load i32, ptr %27, align 4, !tbaa !54
  tail call void @_ZN3pov15POVFPU_SetLocalEjd(i32 noundef 0, double noundef %22)
  tail call void @_ZN3pov15POVFPU_SetLocalEjd(i32 noundef 1, double noundef %7)
  %29 = tail call noundef double @_ZN3pov17POVFPU_RunDefaultEj(i32 noundef %28)
  %30 = fsub double %29, %15
  %31 = load ptr, ptr %16, align 8, !tbaa !58
  %32 = load i32, ptr %31, align 4, !tbaa !54
  tail call void @_ZN3pov15POVFPU_SetLocalEjd(i32 noundef 0, double noundef %22)
  tail call void @_ZN3pov15POVFPU_SetLocalEjd(i32 noundef 1, double noundef %7)
  %33 = tail call noundef double @_ZN3pov17POVFPU_RunDefaultEj(i32 noundef %32)
  %34 = fsub double %33, %19
  %35 = load double, ptr %4, align 8, !tbaa !63
  %36 = load double, ptr %20, align 8, !tbaa !49
  %37 = fadd double %7, %36
  %38 = load ptr, ptr %8, align 8, !tbaa !58
  %39 = load i32, ptr %38, align 4, !tbaa !54
  tail call void @_ZN3pov15POVFPU_SetLocalEjd(i32 noundef 0, double noundef %35)
  tail call void @_ZN3pov15POVFPU_SetLocalEjd(i32 noundef 1, double noundef %37)
  %40 = tail call noundef double @_ZN3pov17POVFPU_RunDefaultEj(i32 noundef %39)
  %41 = fsub double %40, %11
  %42 = load ptr, ptr %12, align 8, !tbaa !58
  %43 = load i32, ptr %42, align 4, !tbaa !54
  tail call void @_ZN3pov15POVFPU_SetLocalEjd(i32 noundef 0, double noundef %35)
  tail call void @_ZN3pov15POVFPU_SetLocalEjd(i32 noundef 1, double noundef %37)
  %44 = tail call noundef double @_ZN3pov17POVFPU_RunDefaultEj(i32 noundef %43)
  %45 = fsub double %44, %15
  %46 = load ptr, ptr %16, align 8, !tbaa !58
  %47 = load i32, ptr %46, align 4, !tbaa !54
  tail call void @_ZN3pov15POVFPU_SetLocalEjd(i32 noundef 0, double noundef %35)
  tail call void @_ZN3pov15POVFPU_SetLocalEjd(i32 noundef 1, double noundef %37)
  %48 = tail call noundef double @_ZN3pov17POVFPU_RunDefaultEj(i32 noundef %47)
  %49 = fsub double %48, %19
  %50 = fneg double %34
  %51 = fmul double %45, %50
  %52 = tail call double @llvm.fmuladd.f64(double %30, double %49, double %51)
  %53 = fneg double %26
  %54 = fmul double %49, %53
  %55 = tail call double @llvm.fmuladd.f64(double %34, double %41, double %54)
  %56 = fneg double %30
  %57 = fmul double %41, %56
  %58 = tail call double @llvm.fmuladd.f64(double %26, double %45, double %57)
  store double %52, ptr %0, align 8, !tbaa !47
  %59 = getelementptr inbounds double, ptr %0, i64 1
  store double %55, ptr %59, align 8, !tbaa !47
  %60 = getelementptr inbounds double, ptr %0, i64 2
  store double %58, ptr %60, align 8, !tbaa !47
  %61 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %1, i64 0, i32 10
  %62 = load ptr, ptr %61, align 8, !tbaa !46
  %63 = icmp eq ptr %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %3
  tail call void @_ZN3pov12MTransNormalEPdS0_PNS_16Transform_StructE(ptr noundef nonnull %0, ptr noundef nonnull %0, ptr noundef nonnull %62)
  br label %65

65:                                               ; preds = %64, %3
  %66 = load double, ptr %0, align 8, !tbaa !47
  %67 = load double, ptr %59, align 8, !tbaa !47
  %68 = fmul double %67, %67
  %69 = tail call double @llvm.fmuladd.f64(double %66, double %66, double %68)
  %70 = load double, ptr %60, align 8, !tbaa !47
  %71 = tail call double @llvm.fmuladd.f64(double %70, double %70, double %69)
  %72 = tail call double @sqrt(double noundef %71) #11
  %73 = fdiv double 1.000000e+00, %72
  %74 = load double, ptr %0, align 8, !tbaa !47
  %75 = fmul double %74, %73
  store double %75, ptr %0, align 8, !tbaa !47
  %76 = load double, ptr %59, align 8, !tbaa !47
  %77 = fmul double %73, %76
  store double %77, ptr %59, align 8, !tbaa !47
  %78 = load double, ptr %60, align 8, !tbaa !47
  %79 = fmul double %73, %78
  store double %79, ptr %60, align 8, !tbaa !47
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @_ZN3povL18Parametric_UVCoordEPdPNS_13Object_StructEPNS_10istk_entryE(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #2 {
  %4 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %1, i64 0, i32 25
  %5 = load double, ptr %4, align 8, !tbaa !63
  store double %5, ptr %0, align 8, !tbaa !47
  %6 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %1, i64 0, i32 26
  %7 = load double, ptr %6, align 8, !tbaa !64
  %8 = getelementptr inbounds double, ptr %0, i64 1
  store double %7, ptr %8, align 8, !tbaa !47
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN3pov15Copy_ParametricEPNS_13Object_StructE(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef 272, ptr noundef nonnull @.str, i32 noundef 860, ptr noundef nonnull @.str.1)
  %3 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %2, i64 0, i32 1
  store i32 1, ptr %3, align 8, !tbaa !73
  store ptr @_ZN3pov18Parametric_MethodsE, ptr %2, align 8, !tbaa !74
  %4 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %2, i64 0, i32 2
  %5 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %2, i64 0, i32 10
  %6 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %2, i64 0, i32 9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  store float -1.000000e+10, ptr %6, align 4, !tbaa !75
  %7 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %2, i64 0, i32 9, i32 0, i64 1
  store float -1.000000e+10, ptr %7, align 4, !tbaa !75
  %8 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %2, i64 0, i32 9, i32 0, i64 2
  store float -1.000000e+10, ptr %8, align 4, !tbaa !75
  %9 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %2, i64 0, i32 9, i32 1
  store float 2.000000e+10, ptr %9, align 4, !tbaa !75
  %10 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %2, i64 0, i32 9, i32 1, i64 1
  store float 2.000000e+10, ptr %10, align 4, !tbaa !75
  %11 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %2, i64 0, i32 9, i32 1, i64 2
  store float 2.000000e+10, ptr %11, align 4, !tbaa !75
  %12 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %2, i64 0, i32 23
  store double -1.000000e+00, ptr %12, align 8, !tbaa !47
  %13 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %2, i64 0, i32 23, i32 0, i32 0, i64 1
  store double -1.000000e+00, ptr %13, align 8, !tbaa !47
  %14 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %2, i64 0, i32 23, i32 0, i32 0, i64 2
  store double -1.000000e+00, ptr %14, align 8, !tbaa !47
  %15 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %2, i64 0, i32 23, i32 0, i32 1
  store double 1.000000e+00, ptr %15, align 8, !tbaa !47
  %16 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %2, i64 0, i32 23, i32 0, i32 1, i64 1
  store double 1.000000e+00, ptr %16, align 8, !tbaa !47
  %17 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %2, i64 0, i32 23, i32 0, i32 1, i64 2
  store double 1.000000e+00, ptr %17, align 8, !tbaa !47
  store float -1.000000e+00, ptr %6, align 4, !tbaa !75
  store float -1.000000e+00, ptr %7, align 4, !tbaa !75
  store float -1.000000e+00, ptr %8, align 4, !tbaa !75
  store float 2.000000e+00, ptr %9, align 4, !tbaa !75
  store float 2.000000e+00, ptr %10, align 4, !tbaa !75
  store float 2.000000e+00, ptr %11, align 4, !tbaa !75
  %18 = tail call noundef ptr @_ZN3pov16Create_TransformEv()
  store ptr %18, ptr %5, align 8, !tbaa !46
  %19 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %2, i64 0, i32 14
  %20 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %2, i64 0, i32 19
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, i8 0, i64 24, i1 false)
  store double 1.000000e-03, ptr %20, align 8, !tbaa !49
  %21 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %2, i64 0, i32 20
  store double 1.000000e+00, ptr %21, align 8, !tbaa !59
  %22 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %2, i64 0, i32 21
  store i32 0, ptr %22, align 8, !tbaa !76
  %23 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %2, i64 0, i32 24
  store ptr null, ptr %23, align 8, !tbaa !34
  %24 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %2, i64 0, i32 22
  store i32 0, ptr %24, align 4, !tbaa !45
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %2, ptr noundef nonnull align 8 dereferenceable(272) %0, i64 272, i1 false), !tbaa.struct !77
  %25 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %0, i64 0, i32 14
  %26 = load ptr, ptr %25, align 8, !tbaa !58
  %27 = tail call noundef ptr @_ZN3pov13Copy_FunctionEPj(ptr noundef %26)
  store ptr %27, ptr %19, align 8, !tbaa !58
  %28 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %0, i64 0, i32 14, i64 1
  %29 = load ptr, ptr %28, align 8, !tbaa !58
  %30 = tail call noundef ptr @_ZN3pov13Copy_FunctionEPj(ptr noundef %29)
  %31 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %2, i64 0, i32 14, i64 1
  store ptr %30, ptr %31, align 8, !tbaa !58
  %32 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %0, i64 0, i32 14, i64 2
  %33 = load ptr, ptr %32, align 8, !tbaa !58
  %34 = tail call noundef ptr @_ZN3pov13Copy_FunctionEPj(ptr noundef %33)
  %35 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %2, i64 0, i32 14, i64 2
  store ptr %34, ptr %35, align 8, !tbaa !58
  %36 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %0, i64 0, i32 10
  %37 = load ptr, ptr %36, align 8, !tbaa !46
  %38 = tail call noundef ptr @_ZN3pov14Copy_TransformEPNS_16Transform_StructE(ptr noundef %37)
  store ptr %38, ptr %5, align 8, !tbaa !46
  %39 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %0, i64 0, i32 24
  %40 = load ptr, ptr %39, align 8, !tbaa !34
  %41 = icmp eq ptr %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %1
  %43 = load i32, ptr %40, align 8, !tbaa !78
  %44 = add nsw i32 %43, 1
  store i32 %44, ptr %40, align 8, !tbaa !78
  br label %45

45:                                               ; preds = %1, %42
  %46 = phi ptr [ %40, %42 ], [ null, %1 ]
  store ptr %46, ptr %23, align 8, !tbaa !34
  ret ptr %2
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN3povL20Translate_ParametricEPNS_13Object_StructEPdPNS_16Transform_StructE(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %0, i64 0, i32 10
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = tail call noundef ptr @_ZN3pov16Create_TransformEv()
  store ptr %8, ptr %4, align 8, !tbaa !46
  br label %9

9:                                                ; preds = %3, %7
  %10 = load ptr, ptr %4, align 8, !tbaa !46
  tail call void @_ZN3pov18Compose_TransformsEPNS_16Transform_StructES1_(ptr noundef %10, ptr noundef %2)
  tail call void @_ZN3pov23Compute_Parametric_BBoxEPNS_17Parametric_StructE(ptr noundef %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN3povL17Rotate_ParametricEPNS_13Object_StructEPdPNS_16Transform_StructE(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %0, i64 0, i32 10
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = tail call noundef ptr @_ZN3pov16Create_TransformEv()
  store ptr %8, ptr %4, align 8, !tbaa !46
  br label %9

9:                                                ; preds = %3, %7
  %10 = load ptr, ptr %4, align 8, !tbaa !46
  tail call void @_ZN3pov18Compose_TransformsEPNS_16Transform_StructES1_(ptr noundef %10, ptr noundef %2)
  tail call void @_ZN3pov23Compute_Parametric_BBoxEPNS_17Parametric_StructE(ptr noundef %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN3povL16Scale_ParametricEPNS_13Object_StructEPdPNS_16Transform_StructE(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %0, i64 0, i32 10
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = tail call noundef ptr @_ZN3pov16Create_TransformEv()
  store ptr %8, ptr %4, align 8, !tbaa !46
  br label %9

9:                                                ; preds = %3, %7
  %10 = load ptr, ptr %4, align 8, !tbaa !46
  tail call void @_ZN3pov18Compose_TransformsEPNS_16Transform_StructES1_(ptr noundef %10, ptr noundef %2)
  tail call void @_ZN3pov23Compute_Parametric_BBoxEPNS_17Parametric_StructE(ptr noundef %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN3povL20Transform_ParametricEPNS_13Object_StructEPNS_16Transform_StructE(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %0, i64 0, i32 10
  %4 = load ptr, ptr %3, align 8, !tbaa !46
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call noundef ptr @_ZN3pov16Create_TransformEv()
  store ptr %7, ptr %3, align 8, !tbaa !46
  br label %8

8:                                                ; preds = %6, %2
  %9 = load ptr, ptr %3, align 8, !tbaa !46
  tail call void @_ZN3pov18Compose_TransformsEPNS_16Transform_StructES1_(ptr noundef %9, ptr noundef %1)
  tail call void @_ZN3pov23Compute_Parametric_BBoxEPNS_17Parametric_StructE(ptr noundef %0)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @_ZN3povL17Invert_ParametricEPNS_13Object_StructE(ptr nocapture readnone %0) #1 {
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3pov18Destroy_ParametricEPNS_13Object_StructE(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %0, i64 0, i32 10
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  tail call void @_ZN3pov17Destroy_TransformEPNS_16Transform_StructE(ptr noundef %3)
  %4 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %0, i64 0, i32 14
  %5 = load ptr, ptr %4, align 8, !tbaa !58
  tail call void @_ZN3pov16Destroy_FunctionEPj(ptr noundef %5)
  %6 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %0, i64 0, i32 14, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !58
  tail call void @_ZN3pov16Destroy_FunctionEPj(ptr noundef %7)
  %8 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %0, i64 0, i32 14, i64 2
  %9 = load ptr, ptr %8, align 8, !tbaa !58
  tail call void @_ZN3pov16Destroy_FunctionEPj(ptr noundef %9)
  %10 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %0, i64 0, i32 24
  %11 = load ptr, ptr %10, align 8, !tbaa !34
  tail call void @_ZN3pov21Destroy_PrecompParValEPNS_23PrecompParValues_StructE(ptr noundef %11)
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef 828)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3pov23Compute_Parametric_BBoxEPNS_17Parametric_StructE(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %0, i64 0, i32 22
  %3 = load i32, ptr %2, align 4, !tbaa !45
  %4 = icmp eq i32 %3, 0
  %5 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %0, i64 0, i32 9
  %6 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %0, i64 0, i32 23
  %7 = load double, ptr %6, align 8, !tbaa !48
  br i1 %4, label %27, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %0, i64 0, i32 23, i32 0, i32 1
  %10 = load double, ptr %9, align 8, !tbaa !48
  %11 = fsub double %7, %10
  %12 = fptrunc double %11 to float
  %13 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %0, i64 0, i32 23, i32 0, i32 0, i64 1
  %14 = load double, ptr %13, align 8, !tbaa !48
  %15 = fsub double %14, %10
  %16 = fptrunc double %15 to float
  %17 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %0, i64 0, i32 23, i32 0, i32 0, i64 2
  %18 = load double, ptr %17, align 8, !tbaa !48
  %19 = fsub double %18, %10
  %20 = fptrunc double %19 to float
  %21 = fmul double %10, 2.000000e+00
  %22 = fptrunc double %21 to float
  store float %12, ptr %5, align 4, !tbaa !75
  %23 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %0, i64 0, i32 9, i32 0, i64 1
  store float %16, ptr %23, align 4, !tbaa !75
  %24 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %0, i64 0, i32 9, i32 0, i64 2
  store float %20, ptr %24, align 4, !tbaa !75
  %25 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %0, i64 0, i32 9, i32 1
  store float %22, ptr %25, align 4, !tbaa !75
  %26 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %0, i64 0, i32 9, i32 1, i64 1
  store float %22, ptr %26, align 4, !tbaa !75
  br label %51

27:                                               ; preds = %1
  %28 = fptrunc double %7 to float
  store float %28, ptr %5, align 4, !tbaa !75
  %29 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %0, i64 0, i32 23, i32 0, i32 0, i64 1
  %30 = load double, ptr %29, align 8, !tbaa !47
  %31 = fptrunc double %30 to float
  %32 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %0, i64 0, i32 9, i32 0, i64 1
  store float %31, ptr %32, align 4, !tbaa !75
  %33 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %0, i64 0, i32 23, i32 0, i32 0, i64 2
  %34 = load double, ptr %33, align 8, !tbaa !47
  %35 = fptrunc double %34 to float
  %36 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %0, i64 0, i32 9, i32 0, i64 2
  store float %35, ptr %36, align 4, !tbaa !75
  %37 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %0, i64 0, i32 9, i32 1
  %38 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %0, i64 0, i32 23, i32 0, i32 1
  %39 = load double, ptr %38, align 8, !tbaa !47
  %40 = fsub double %39, %7
  %41 = fptrunc double %40 to float
  store float %41, ptr %37, align 4, !tbaa !75
  %42 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %0, i64 0, i32 23, i32 0, i32 1, i64 1
  %43 = load double, ptr %42, align 8, !tbaa !47
  %44 = fsub double %43, %30
  %45 = fptrunc double %44 to float
  %46 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %0, i64 0, i32 9, i32 1, i64 1
  store float %45, ptr %46, align 4, !tbaa !75
  %47 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %0, i64 0, i32 23, i32 0, i32 1, i64 2
  %48 = load double, ptr %47, align 8, !tbaa !47
  %49 = fsub double %48, %34
  %50 = fptrunc double %49 to float
  br label %51

51:                                               ; preds = %27, %8
  %52 = phi float [ %50, %27 ], [ %22, %8 ]
  %53 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %0, i64 0, i32 9, i32 1, i64 2
  store float %52, ptr %53, align 4, !tbaa !75
  %54 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %0, i64 0, i32 10
  %55 = load ptr, ptr %54, align 8, !tbaa !46
  %56 = icmp eq ptr %55, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %51
  %58 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %0, i64 0, i32 9
  tail call void @_ZN3pov14Recompute_BBoxEPNS_19Bounding_Box_StructEPNS_16Transform_StructE(ptr noundef nonnull %58, ptr noundef nonnull %55)
  br label %59

59:                                               ; preds = %57, %51
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

declare void @_ZN3pov14Recompute_BBoxEPNS_19Bounding_Box_StructEPNS_16Transform_StructE(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN3pov17Create_ParametricEv() local_unnamed_addr #0 {
  %1 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef 272, ptr noundef nonnull @.str, i32 noundef 860, ptr noundef nonnull @.str.1)
  %2 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %1, i64 0, i32 1
  store i32 1, ptr %2, align 8, !tbaa !73
  store ptr @_ZN3pov18Parametric_MethodsE, ptr %1, align 8, !tbaa !74
  %3 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %1, i64 0, i32 2
  %4 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %1, i64 0, i32 10
  %5 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %1, i64 0, i32 9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  store float -1.000000e+10, ptr %5, align 4, !tbaa !75
  %6 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %1, i64 0, i32 9, i32 0, i64 1
  store float -1.000000e+10, ptr %6, align 4, !tbaa !75
  %7 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %1, i64 0, i32 9, i32 0, i64 2
  store float -1.000000e+10, ptr %7, align 4, !tbaa !75
  %8 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %1, i64 0, i32 9, i32 1
  store float 2.000000e+10, ptr %8, align 4, !tbaa !75
  %9 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %1, i64 0, i32 9, i32 1, i64 1
  store float 2.000000e+10, ptr %9, align 4, !tbaa !75
  %10 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %1, i64 0, i32 9, i32 1, i64 2
  store float 2.000000e+10, ptr %10, align 4, !tbaa !75
  %11 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %1, i64 0, i32 23
  store double -1.000000e+00, ptr %11, align 8, !tbaa !47
  %12 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %1, i64 0, i32 23, i32 0, i32 0, i64 1
  store double -1.000000e+00, ptr %12, align 8, !tbaa !47
  %13 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %1, i64 0, i32 23, i32 0, i32 0, i64 2
  store double -1.000000e+00, ptr %13, align 8, !tbaa !47
  %14 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %1, i64 0, i32 23, i32 0, i32 1
  store double 1.000000e+00, ptr %14, align 8, !tbaa !47
  %15 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %1, i64 0, i32 23, i32 0, i32 1, i64 1
  store double 1.000000e+00, ptr %15, align 8, !tbaa !47
  %16 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %1, i64 0, i32 23, i32 0, i32 1, i64 2
  store double 1.000000e+00, ptr %16, align 8, !tbaa !47
  store float -1.000000e+00, ptr %5, align 4, !tbaa !75
  store float -1.000000e+00, ptr %6, align 4, !tbaa !75
  store float -1.000000e+00, ptr %7, align 4, !tbaa !75
  store float 2.000000e+00, ptr %8, align 4, !tbaa !75
  store float 2.000000e+00, ptr %9, align 4, !tbaa !75
  store float 2.000000e+00, ptr %10, align 4, !tbaa !75
  %17 = tail call noundef ptr @_ZN3pov16Create_TransformEv()
  store ptr %17, ptr %4, align 8, !tbaa !46
  %18 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %1, i64 0, i32 14
  %19 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %1, i64 0, i32 19
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  store double 1.000000e-03, ptr %19, align 8, !tbaa !49
  %20 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %1, i64 0, i32 20
  store double 1.000000e+00, ptr %20, align 8, !tbaa !59
  %21 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %1, i64 0, i32 21
  store i32 0, ptr %21, align 8, !tbaa !76
  %22 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %1, i64 0, i32 24
  store ptr null, ptr %22, align 8, !tbaa !34
  %23 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %1, i64 0, i32 22
  store i32 0, ptr %23, align 4, !tbaa !45
  ret ptr %1
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

declare noundef ptr @_ZN3pov13Copy_FunctionEPj(ptr noundef) local_unnamed_addr #4

declare noundef ptr @_ZN3pov14Copy_TransformEPNS_16Transform_StructE(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef ptr @_ZN3pov18Copy_PrecompParValEPNS_23PrecompParValues_StructE(ptr noundef %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !78
  %5 = add nsw i32 %4, 1
  store i32 %5, ptr %0, align 8, !tbaa !78
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi ptr [ %0, %3 ], [ null, %1 ]
  ret ptr %7
}

declare void @_ZN3pov17Destroy_TransformEPNS_16Transform_StructE(ptr noundef) local_unnamed_addr #4

declare void @_ZN3pov16Destroy_FunctionEPj(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3pov21Destroy_PrecompParValEPNS_23PrecompParValues_StructE(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %36, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !78
  %5 = add nsw i32 %4, -1
  store i32 %5, ptr %0, align 8, !tbaa !78
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %36

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"struct.pov::PrecompParValues_Struct", ptr %0, i64 0, i32 2
  %9 = load i8, ptr %8, align 8, !tbaa !55
  %10 = and i8 %9, 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %"struct.pov::PrecompParValues_Struct", ptr %0, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !58
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef %14, ptr noundef nonnull @.str, i32 noundef 1149)
  store ptr null, ptr %13, align 8, !tbaa !58
  %15 = getelementptr inbounds %"struct.pov::PrecompParValues_Struct", ptr %0, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !58
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef %16, ptr noundef nonnull @.str, i32 noundef 1150)
  store ptr null, ptr %15, align 8, !tbaa !58
  br label %17

17:                                               ; preds = %12, %7
  %18 = load i8, ptr %8, align 8, !tbaa !55
  %19 = and i8 %18, 2
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %"struct.pov::PrecompParValues_Struct", ptr %0, i64 0, i32 3, i64 1
  %23 = load ptr, ptr %22, align 8, !tbaa !58
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef %23, ptr noundef nonnull @.str, i32 noundef 1154)
  store ptr null, ptr %22, align 8, !tbaa !58
  %24 = getelementptr inbounds %"struct.pov::PrecompParValues_Struct", ptr %0, i64 0, i32 4, i64 1
  %25 = load ptr, ptr %24, align 8, !tbaa !58
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef %25, ptr noundef nonnull @.str, i32 noundef 1155)
  store ptr null, ptr %24, align 8, !tbaa !58
  br label %26

26:                                               ; preds = %21, %17
  %27 = load i8, ptr %8, align 8, !tbaa !55
  %28 = and i8 %27, 4
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %"struct.pov::PrecompParValues_Struct", ptr %0, i64 0, i32 3, i64 2
  %32 = load ptr, ptr %31, align 8, !tbaa !58
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef %32, ptr noundef nonnull @.str, i32 noundef 1159)
  store ptr null, ptr %31, align 8, !tbaa !58
  %33 = getelementptr inbounds %"struct.pov::PrecompParValues_Struct", ptr %0, i64 0, i32 4, i64 2
  %34 = load ptr, ptr %33, align 8, !tbaa !58
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef %34, ptr noundef nonnull @.str, i32 noundef 1160)
  store ptr null, ptr %33, align 8, !tbaa !58
  br label %35

35:                                               ; preds = %30, %26
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef nonnull %0, ptr noundef nonnull @.str, i32 noundef 1162)
  br label %36

36:                                               ; preds = %1, %35, %3
  ret void
}

declare void @_ZN3pov8pov_freeEPvPKci(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare noundef ptr @_ZN3pov16Create_TransformEv() local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN3pov28Precompute_Parametric_ValuesEPNS_17Parametric_StructEci(ptr noundef %0, i8 noundef signext %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = add i32 %2, -21
  %5 = icmp ult i32 %4, -20
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.3)
  br label %8

8:                                                ; preds = %3, %6
  %9 = shl nuw i32 1, %2
  %10 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef 64, ptr noundef nonnull @.str, i32 noundef 1045, ptr noundef nonnull @.str.2)
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  tail call void @_ZN3pov7MAErrorEPKcl(ptr noundef nonnull @.str.2, i64 noundef 64)
  br label %13

13:                                               ; preds = %12, %8
  %14 = getelementptr inbounds %"struct.pov::PrecompParValues_Struct", ptr %10, i64 0, i32 2
  store i8 %1, ptr %14, align 8, !tbaa !55
  %15 = getelementptr inbounds %"struct.pov::PrecompParValues_Struct", ptr %10, i64 0, i32 1
  store i32 %2, ptr %15, align 4, !tbaa !57
  store i32 1, ptr %10, align 8, !tbaa !78
  %16 = zext i8 %1 to i32
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %13
  %20 = sext i32 %9 to i64
  %21 = shl nsw i64 %20, 3
  %22 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef %21, ptr noundef nonnull @.str, i32 noundef 1054, ptr noundef nonnull @.str.2)
  %23 = getelementptr inbounds %"struct.pov::PrecompParValues_Struct", ptr %10, i64 0, i32 3
  store ptr %22, ptr %23, align 8, !tbaa !58
  %24 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef %21, ptr noundef nonnull @.str, i32 noundef 1055, ptr noundef nonnull @.str.2)
  %25 = getelementptr inbounds %"struct.pov::PrecompParValues_Struct", ptr %10, i64 0, i32 4
  store ptr %24, ptr %25, align 8, !tbaa !58
  br label %26

26:                                               ; preds = %19, %13
  %27 = phi ptr [ %24, %19 ], [ undef, %13 ]
  %28 = and i32 %16, 2
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %26
  %31 = sext i32 %9 to i64
  %32 = shl nsw i64 %31, 3
  %33 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef %32, ptr noundef nonnull @.str, i32 noundef 1059, ptr noundef nonnull @.str.2)
  %34 = getelementptr inbounds %"struct.pov::PrecompParValues_Struct", ptr %10, i64 0, i32 3, i64 1
  store ptr %33, ptr %34, align 8, !tbaa !58
  %35 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef %32, ptr noundef nonnull @.str, i32 noundef 1060, ptr noundef nonnull @.str.2)
  %36 = getelementptr inbounds %"struct.pov::PrecompParValues_Struct", ptr %10, i64 0, i32 4, i64 1
  store ptr %35, ptr %36, align 8, !tbaa !58
  br label %37

37:                                               ; preds = %30, %26
  %38 = phi ptr [ %35, %30 ], [ %27, %26 ]
  %39 = and i32 %16, 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %37
  %42 = sext i32 %9 to i64
  %43 = shl nsw i64 %42, 3
  %44 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef %43, ptr noundef nonnull @.str, i32 noundef 1064, ptr noundef nonnull @.str.2)
  %45 = getelementptr inbounds %"struct.pov::PrecompParValues_Struct", ptr %10, i64 0, i32 3, i64 2
  store ptr %44, ptr %45, align 8, !tbaa !58
  %46 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef %43, ptr noundef nonnull @.str, i32 noundef 1065, ptr noundef nonnull @.str.2)
  %47 = getelementptr inbounds %"struct.pov::PrecompParValues_Struct", ptr %10, i64 0, i32 4, i64 2
  store ptr %46, ptr %47, align 8, !tbaa !58
  br label %48

48:                                               ; preds = %41, %37
  %49 = phi ptr [ %46, %41 ], [ %38, %37 ]
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = sext i32 %9 to i64
  %53 = shl nsw i64 %52, 3
  tail call void @_ZN3pov7MAErrorEPKcl(ptr noundef nonnull @.str.2, i64 noundef %53)
  br label %54

54:                                               ; preds = %51, %48
  %55 = add nsw i32 %2, -1
  %56 = shl nuw i32 1, %55
  store i32 %56, ptr @_ZN3povL16PrecompLastDepthE, align 4, !tbaa !54
  store ptr %10, ptr @_ZN3povL11PrecParDataE, align 8, !tbaa !58
  store ptr %0, ptr @_ZN3povL14PrecompParFuncE, align 8, !tbaa !58
  %57 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %0, i64 0, i32 15
  %58 = load double, ptr %57, align 8, !tbaa !50
  %59 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %0, i64 0, i32 17
  %60 = load double, ptr %59, align 8, !tbaa !52
  %61 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %0, i64 0, i32 16
  %62 = load double, ptr %61, align 8, !tbaa !51
  %63 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %0, i64 0, i32 18
  %64 = load double, ptr %63, align 8, !tbaa !53
  tail call fastcc void @_ZN3povL15Precomp_Par_IntEidddd(i32 noundef 1, double noundef %58, double noundef %60, double noundef %62, double noundef %64)
  ret ptr %10
}

declare noundef i32 @_ZN3pov5ErrorEPKcz(ptr noundef, ...) local_unnamed_addr #4

declare void @_ZN3pov7MAErrorEPKcl(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN3povL15Precomp_Par_IntEidddd(i32 noundef %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4) unnamed_addr #0 {
  %6 = alloca [2 x double], align 16
  %7 = alloca [2 x double], align 16
  %8 = load i32, ptr @_ZN3povL16PrecompLastDepthE, align 4, !tbaa !54
  %9 = sdiv i32 %8, 2
  %10 = icmp eq i32 %9, %0
  br i1 %10, label %11, label %12

11:                                               ; preds = %5
  tail call void @_ZN3pov12Do_CooperateEi(i32 noundef 1)
  br label %12

12:                                               ; preds = %11, %5
  %13 = load i32, ptr @_ZN3povL16PrecompLastDepthE, align 4, !tbaa !54
  %14 = icmp sgt i32 %13, %0
  br i1 %14, label %47, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds [2 x double], ptr %6, i64 0, i64 1
  %17 = getelementptr inbounds [2 x double], ptr %7, i64 0, i64 1
  %18 = sext i32 %0 to i64
  br label %19

19:                                               ; preds = %15, %44
  %20 = phi i64 [ 0, %15 ], [ %45, %44 ]
  %21 = load ptr, ptr @_ZN3povL11PrecParDataE, align 8, !tbaa !58
  %22 = getelementptr inbounds %"struct.pov::PrecompParValues_Struct", ptr %21, i64 0, i32 2
  %23 = load i8, ptr %22, align 8, !tbaa !55
  %24 = sext i8 %23 to i32
  %25 = trunc i64 %20 to i32
  %26 = shl nuw nsw i32 1, %25
  %27 = and i32 %26, %24
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %44, label %29

29:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #11
  store double %1, ptr %6, align 16, !tbaa !47
  store double %3, ptr %7, align 16, !tbaa !47
  store double %2, ptr %16, align 8, !tbaa !47
  store double %4, ptr %17, align 8, !tbaa !47
  %30 = load ptr, ptr @_ZN3povL14PrecompParFuncE, align 8, !tbaa !58
  %31 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %30, i64 0, i32 14, i64 %20
  %32 = load ptr, ptr %31, align 8, !tbaa !58
  %33 = load i32, ptr %32, align 4, !tbaa !54
  %34 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %30, i64 0, i32 19
  %35 = load double, ptr %34, align 8, !tbaa !49
  %36 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %30, i64 0, i32 20
  %37 = load double, ptr %36, align 8, !tbaa !59
  %38 = getelementptr inbounds %"struct.pov::PrecompParValues_Struct", ptr %21, i64 0, i32 3, i64 %20
  %39 = load ptr, ptr %38, align 8, !tbaa !58
  %40 = getelementptr inbounds double, ptr %39, i64 %18
  %41 = getelementptr inbounds %"struct.pov::PrecompParValues_Struct", ptr %21, i64 0, i32 4, i64 %20
  %42 = load ptr, ptr %41, align 8, !tbaa !58
  %43 = getelementptr inbounds double, ptr %42, i64 %18
  call void @_ZN3pov29Evaluate_Function_Interval_UVEjdPdS0_dRdS1_(i32 noundef %33, double noundef %35, ptr noundef nonnull %6, ptr noundef nonnull %7, double noundef %37, ptr noundef nonnull align 8 dereferenceable(8) %40, ptr noundef nonnull align 8 dereferenceable(8) %43)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #11
  br label %44

44:                                               ; preds = %19, %29
  %45 = add nuw nsw i64 %20, 1
  %46 = icmp eq i64 %45, 3
  br i1 %46, label %98, label %19, !llvm.loop !79

47:                                               ; preds = %12
  %48 = fsub double %3, %1
  %49 = fsub double %4, %2
  %50 = fcmp olt double %48, %49
  %51 = shl nsw i32 %0, 1
  %52 = or disjoint i32 %51, 1
  br i1 %50, label %53, label %56

53:                                               ; preds = %47
  %54 = fadd double %2, %4
  %55 = fmul double %54, 5.000000e-01
  tail call fastcc void @_ZN3povL15Precomp_Par_IntEidddd(i32 noundef %51, double noundef %1, double noundef %2, double noundef %3, double noundef %55)
  tail call fastcc void @_ZN3povL15Precomp_Par_IntEidddd(i32 noundef %52, double noundef %1, double noundef %55, double noundef %3, double noundef %4)
  br label %59

56:                                               ; preds = %47
  %57 = fadd double %1, %3
  %58 = fmul double %57, 5.000000e-01
  tail call fastcc void @_ZN3povL15Precomp_Par_IntEidddd(i32 noundef %51, double noundef %1, double noundef %2, double noundef %58, double noundef %4)
  tail call fastcc void @_ZN3povL15Precomp_Par_IntEidddd(i32 noundef %52, double noundef %58, double noundef %2, double noundef %3, double noundef %4)
  br label %59

59:                                               ; preds = %56, %53
  %60 = load ptr, ptr @_ZN3povL11PrecParDataE, align 8, !tbaa !58
  %61 = getelementptr inbounds %"struct.pov::PrecompParValues_Struct", ptr %60, i64 0, i32 2
  %62 = load i8, ptr %61, align 8, !tbaa !55
  %63 = sext i8 %62 to i32
  %64 = shl nsw i32 %0, 1
  %65 = sext i32 %64 to i64
  %66 = or disjoint i32 %64, 1
  %67 = sext i32 %66 to i64
  %68 = sext i32 %0 to i64
  %69 = sext i32 %0 to i64
  br label %70

70:                                               ; preds = %59, %95
  %71 = phi i64 [ 0, %59 ], [ %96, %95 ]
  %72 = trunc i64 %71 to i32
  %73 = shl nuw nsw i32 1, %72
  %74 = and i32 %73, %63
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %95, label %76

76:                                               ; preds = %70
  %77 = getelementptr inbounds %"struct.pov::PrecompParValues_Struct", ptr %60, i64 0, i32 4, i64 %71
  %78 = load ptr, ptr %77, align 8, !tbaa !58
  %79 = getelementptr inbounds double, ptr %78, i64 %65
  %80 = load double, ptr %79, align 8, !tbaa !47
  %81 = getelementptr inbounds double, ptr %78, i64 %67
  %82 = load double, ptr %81, align 8, !tbaa !47
  %83 = fcmp ogt double %80, %82
  %84 = select i1 %83, double %80, double %82
  %85 = getelementptr inbounds double, ptr %78, i64 %68
  store double %84, ptr %85, align 8, !tbaa !47
  %86 = getelementptr inbounds %"struct.pov::PrecompParValues_Struct", ptr %60, i64 0, i32 3, i64 %71
  %87 = load ptr, ptr %86, align 8, !tbaa !58
  %88 = getelementptr inbounds double, ptr %87, i64 %65
  %89 = load double, ptr %88, align 8, !tbaa !47
  %90 = getelementptr inbounds double, ptr %87, i64 %67
  %91 = load double, ptr %90, align 8, !tbaa !47
  %92 = fcmp olt double %89, %91
  %93 = select i1 %92, double %89, double %91
  %94 = getelementptr inbounds double, ptr %87, i64 %69
  store double %93, ptr %94, align 8, !tbaa !47
  br label %95

95:                                               ; preds = %76, %70
  %96 = add nuw nsw i64 %71, 1
  %97 = icmp eq i64 %96, 3
  br i1 %97, label %98, label %70, !llvm.loop !80

98:                                               ; preds = %44, %95
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN3pov8IntervalEddddPdS0_(double noundef %0, double noundef %1, double noundef %2, double noundef %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #6 {
  %7 = fsub double %1, %2
  %8 = tail call double @llvm.fabs.f64(double %7)
  %9 = fdiv double %8, %3
  %10 = fsub double %0, %9
  %11 = fmul double %10, %3
  %12 = fmul double %11, 5.000000e-01
  %13 = fcmp olt double %12, 0.000000e+00
  %14 = select i1 %13, double 0.000000e+00, double %12
  %15 = fcmp olt double %1, %2
  %16 = select i1 %15, double %2, double %1
  %17 = fadd double %16, %14
  store double %17, ptr %5, align 8, !tbaa !47
  %18 = fcmp olt double %2, %1
  %19 = select i1 %18, double %2, double %1
  %20 = fsub double %19, %14
  store double %20, ptr %4, align 8, !tbaa !47
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #7

declare void @_ZN3pov14MInvTransPointEPdS0_PNS_16Transform_StructE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @_ZN3pov18MInvTransDirectionEPdS0_PNS_16Transform_StructE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare noundef i32 @_ZN3pov16Intersect_SphereEPNS_10Ray_StructEPddS2_S2_(ptr noundef, ptr noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare noundef i32 @_ZN3pov13Intersect_BoxEPNS_10Ray_StructEPNS_16Transform_StructEPdS4_S4_S4_PiS5_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #7

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN3pov29Evaluate_Function_Interval_UVEjdPdS0_dRdS1_(i32 noundef %0, double noundef %1, ptr noundef %2, ptr noundef %3, double noundef %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) local_unnamed_addr #8 comdat {
  %8 = load double, ptr %2, align 8, !tbaa !47
  tail call void @_ZN3pov15POVFPU_SetLocalEjd(i32 noundef 0, double noundef %8)
  %9 = getelementptr inbounds double, ptr %2, i64 1
  %10 = load double, ptr %9, align 8, !tbaa !47
  tail call void @_ZN3pov15POVFPU_SetLocalEjd(i32 noundef 1, double noundef %10)
  %11 = tail call noundef double @_ZN3pov17POVFPU_RunDefaultEj(i32 noundef %0)
  %12 = fsub double %11, %1
  %13 = load double, ptr %2, align 8, !tbaa !47
  tail call void @_ZN3pov15POVFPU_SetLocalEjd(i32 noundef 0, double noundef %13)
  %14 = getelementptr inbounds double, ptr %3, i64 1
  %15 = load double, ptr %14, align 8, !tbaa !47
  tail call void @_ZN3pov15POVFPU_SetLocalEjd(i32 noundef 1, double noundef %15)
  %16 = tail call noundef double @_ZN3pov17POVFPU_RunDefaultEj(i32 noundef %0)
  %17 = fsub double %16, %1
  %18 = load double, ptr %3, align 8, !tbaa !47
  tail call void @_ZN3pov15POVFPU_SetLocalEjd(i32 noundef 0, double noundef %18)
  %19 = load double, ptr %9, align 8, !tbaa !47
  tail call void @_ZN3pov15POVFPU_SetLocalEjd(i32 noundef 1, double noundef %19)
  %20 = tail call noundef double @_ZN3pov17POVFPU_RunDefaultEj(i32 noundef %0)
  %21 = fsub double %20, %1
  %22 = load double, ptr %3, align 8, !tbaa !47
  tail call void @_ZN3pov15POVFPU_SetLocalEjd(i32 noundef 0, double noundef %22)
  %23 = load double, ptr %14, align 8, !tbaa !47
  tail call void @_ZN3pov15POVFPU_SetLocalEjd(i32 noundef 1, double noundef %23)
  %24 = tail call noundef double @_ZN3pov17POVFPU_RunDefaultEj(i32 noundef %0)
  %25 = fsub double %24, %1
  %26 = load double, ptr %14, align 8, !tbaa !47
  %27 = load double, ptr %9, align 8, !tbaa !47
  %28 = fsub double %26, %27
  %29 = fsub double %12, %17
  %30 = tail call double @llvm.fabs.f64(double %29)
  %31 = fdiv double %30, %4
  %32 = fsub double %28, %31
  %33 = fmul double %32, %4
  %34 = fmul double %33, 5.000000e-01
  %35 = fcmp olt double %34, 0.000000e+00
  %36 = select i1 %35, double 0.000000e+00, double %34
  %37 = fcmp olt double %12, %17
  %38 = select i1 %37, double %17, double %12
  %39 = fadd double %38, %36
  %40 = fcmp olt double %17, %12
  %41 = select i1 %40, double %17, double %12
  %42 = fsub double %41, %36
  %43 = fsub double %21, %25
  %44 = tail call double @llvm.fabs.f64(double %43)
  %45 = fdiv double %44, %4
  %46 = fsub double %28, %45
  %47 = fmul double %46, %4
  %48 = fmul double %47, 5.000000e-01
  %49 = fcmp olt double %48, 0.000000e+00
  %50 = select i1 %49, double 0.000000e+00, double %48
  %51 = fcmp olt double %21, %25
  %52 = select i1 %51, double %25, double %21
  %53 = fadd double %52, %50
  %54 = fcmp olt double %25, %21
  %55 = select i1 %54, double %25, double %21
  %56 = fsub double %55, %50
  %57 = load double, ptr %3, align 8, !tbaa !47
  %58 = load double, ptr %2, align 8, !tbaa !47
  %59 = fsub double %57, %58
  %60 = fsub double %39, %53
  %61 = tail call double @llvm.fabs.f64(double %60)
  %62 = fdiv double %61, %4
  %63 = fsub double %59, %62
  %64 = fmul double %63, %4
  %65 = fmul double %64, 5.000000e-01
  %66 = fcmp olt double %65, 0.000000e+00
  %67 = select i1 %66, double 0.000000e+00, double %65
  %68 = fcmp olt double %39, %53
  %69 = select i1 %68, double %53, double %39
  %70 = fadd double %69, %67
  store double %70, ptr %6, align 8, !tbaa !47
  %71 = load double, ptr %3, align 8, !tbaa !47
  %72 = load double, ptr %2, align 8, !tbaa !47
  %73 = fsub double %71, %72
  %74 = fsub double %42, %56
  %75 = tail call double @llvm.fabs.f64(double %74)
  %76 = fdiv double %75, %4
  %77 = fsub double %73, %76
  %78 = fmul double %77, %4
  %79 = fmul double %78, 5.000000e-01
  %80 = fcmp olt double %79, 0.000000e+00
  %81 = select i1 %80, double 0.000000e+00, double %79
  %82 = fcmp olt double %56, %42
  %83 = select i1 %82, double %56, double %42
  %84 = fsub double %83, %81
  store double %84, ptr %5, align 8, !tbaa !47
  ret void
}

declare noundef zeroext i1 @_ZN3pov13Point_In_ClipEPdPNS_13Object_StructE(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #9

declare void @_ZN3pov15POVFPU_SetLocalEjd(i32 noundef, double noundef) local_unnamed_addr #4

declare noundef double @_ZN3pov17POVFPU_RunDefaultEj(i32 noundef) local_unnamed_addr #4

declare void @_ZN3pov8incstackEPNS_13istack_structE(ptr noundef) local_unnamed_addr #4

declare void @_ZN3pov12MTransNormalEPdS0_PNS_16Transform_StructE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @_ZN3pov18Compose_TransformsEPNS_16Transform_StructES1_(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @_ZN3pov12Do_CooperateEi(i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { nounwind }

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
!34 = !{!35, !36, i64 248}
!35 = !{!"_ZTSN3pov17Parametric_StructE", !36, i64 0, !39, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !40, i64 72, !36, i64 96, !36, i64 104, !41, i64 112, !39, i64 116, !37, i64 120, !42, i64 144, !42, i64 152, !42, i64 160, !42, i64 168, !42, i64 176, !42, i64 184, !39, i64 192, !39, i64 196, !37, i64 200, !36, i64 248, !42, i64 256, !42, i64 264}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C++ TBAA"}
!39 = !{!"int", !37, i64 0}
!40 = !{!"_ZTSN3pov19Bounding_Box_StructE", !37, i64 0, !37, i64 12}
!41 = !{!"float", !37, i64 0}
!42 = !{!"double", !37, i64 0}
!43 = !{!44, !44, i64 0}
!44 = !{!"long long", !37, i64 0}
!45 = !{!35, !39, i64 196}
!46 = !{!35, !36, i64 96}
!47 = !{!42, !42, i64 0}
!48 = !{!37, !37, i64 0}
!49 = !{!35, !42, i64 176}
!50 = !{!35, !42, i64 144}
!51 = !{!35, !42, i64 152}
!52 = !{!35, !42, i64 160}
!53 = !{!35, !42, i64 168}
!54 = !{!39, !39, i64 0}
!55 = !{!56, !37, i64 8}
!56 = !{!"_ZTSN3pov23PrecompParValues_StructE", !39, i64 0, !39, i64 4, !37, i64 8, !37, i64 16, !37, i64 40}
!57 = !{!56, !39, i64 4}
!58 = !{!36, !36, i64 0}
!59 = !{!35, !42, i64 184}
!60 = distinct !{!60, !61, !62}
!61 = !{!"llvm.loop.mustprogress"}
!62 = !{!"llvm.loop.unroll.disable"}
!63 = !{!35, !42, i64 256}
!64 = !{!35, !42, i64 264}
!65 = !{!35, !36, i64 56}
!66 = !{!67, !36, i64 8}
!67 = !{!"_ZTSN3pov13istack_structE", !36, i64 0, !36, i64 8, !39, i64 16, !39, i64 20}
!68 = !{!67, !39, i64 20}
!69 = !{!70, !42, i64 0}
!70 = !{!"_ZTSN3pov10istk_entryE", !42, i64 0, !37, i64 8, !37, i64 32, !37, i64 56, !37, i64 80, !36, i64 96, !39, i64 104, !39, i64 108, !42, i64 112, !42, i64 120, !42, i64 128, !42, i64 136, !42, i64 144, !42, i64 152, !42, i64 160, !42, i64 168, !42, i64 176, !36, i64 184, !36, i64 192}
!71 = !{!70, !36, i64 96}
!72 = !{!70, !36, i64 192}
!73 = !{!35, !39, i64 8}
!74 = !{!35, !36, i64 0}
!75 = !{!41, !41, i64 0}
!76 = !{!35, !39, i64 192}
!77 = !{i64 0, i64 8, !58, i64 8, i64 4, !54, i64 16, i64 8, !58, i64 24, i64 8, !58, i64 32, i64 8, !58, i64 40, i64 8, !58, i64 48, i64 8, !58, i64 56, i64 8, !58, i64 64, i64 8, !58, i64 72, i64 12, !48, i64 84, i64 12, !48, i64 96, i64 8, !58, i64 104, i64 8, !58, i64 112, i64 4, !75, i64 116, i64 4, !54, i64 120, i64 24, !48, i64 144, i64 8, !47, i64 152, i64 8, !47, i64 160, i64 8, !47, i64 168, i64 8, !47, i64 176, i64 8, !47, i64 184, i64 8, !47, i64 192, i64 4, !54, i64 196, i64 4, !54, i64 200, i64 24, !48, i64 224, i64 8, !47, i64 200, i64 24, !48, i64 224, i64 24, !48, i64 248, i64 8, !58, i64 256, i64 8, !47, i64 264, i64 8, !47}
!78 = !{!56, !39, i64 0}
!79 = distinct !{!79, !61, !62}
!80 = distinct !{!80, !61, !62}

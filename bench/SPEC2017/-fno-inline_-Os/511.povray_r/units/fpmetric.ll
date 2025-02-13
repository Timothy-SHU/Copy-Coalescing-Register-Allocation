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
%"struct.pov::istk_entry" = type { double, [3 x double], [3 x double], [3 x double], [2 x double], ptr, i32, i32, double, double, double, double, double, double, double, double, double, ptr, ptr }
%"struct.pov::istack_struct" = type { ptr, ptr, i32, i32 }

$_ZN3pov9Make_BBoxERNS_19Bounding_Box_StructEffffff = comdat any

$_ZN3pov16Assign_BBox_VectERA3_fPd = comdat any

$_ZN3pov4VSubEPfPKdS2_ = comdat any

$_ZN3pov11Make_VectorEPdddd = comdat any

$_ZSt3maxIdERKT_S2_S2_ = comdat any

$_ZSt3minIdERKT_S2_S2_ = comdat any

$_ZN3pov16Increase_CounterERx = comdat any

$_ZN3pov7VLengthERdPKd = comdat any

$_ZN3pov15VInverseScaleEqEPdd = comdat any

$_ZN3pov16Decrease_CounterERx = comdat any

$_ZN3pov29Evaluate_Function_Interval_UVEjdPdS0_dRdS1_ = comdat any

$_ZN3pov6VScaleEPdPKdd = comdat any

$_ZN3pov6VAddEqEPdPKd = comdat any

$_ZN3pov10push_entryEdPdPNS_13Object_StructEPNS_13istack_structE = comdat any

$_ZN3pov4itopEPNS_13istack_structE = comdat any

$_ZN3pov13Assign_VectorEPdS0_ = comdat any

$_ZN3pov14Assign_UV_VectEPdS0_ = comdat any

$_ZN3pov20Evaluate_Function_UVEjPd = comdat any

$_ZN3pov6VCrossEPdPKdS2_ = comdat any

$_ZN3pov10VNormalizeEPdPKd = comdat any

$_ZN3pov13VInverseScaleEPdPKdd = comdat any

@_ZN3pov18Parametric_MethodsE = dso_local global %"struct.pov::Method_Struct" { ptr @_ZN3povL28All_Parametric_IntersectionsEPNS_13Object_StructEPNS_10Ray_StructEPNS_13istack_structE, ptr @_ZN3povL17Inside_ParametricEPdPNS_13Object_StructE, ptr @_ZN3povL17Parametric_NormalEPdPNS_13Object_StructEPNS_10istk_entryE, ptr @_ZN3povL18Parametric_UVCoordEPdPNS_13Object_StructEPNS_10istk_entryE, ptr @_ZN3pov15Copy_ParametricEPNS_13Object_StructE, ptr @_ZN3povL20Translate_ParametricEPNS_13Object_StructEPdPNS_16Transform_StructE, ptr @_ZN3povL17Rotate_ParametricEPNS_13Object_StructEPdPNS_16Transform_StructE, ptr @_ZN3povL16Scale_ParametricEPNS_13Object_StructEPdPNS_16Transform_StructE, ptr @_ZN3povL20Transform_ParametricEPNS_13Object_StructEPNS_16Transform_StructE, ptr @_ZN3povL17Invert_ParametricEPNS_13Object_StructE, ptr @_ZN3pov18Destroy_ParametricEPNS_13Object_StructE }, align 8
@.str = private unnamed_addr constant [13 x i8] c"fpmetric.cpp\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"parametric\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"precompute\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Precompute: invalid depth\00", align 1
@_ZN3povL16PrecompLastDepthE = internal unnamed_addr global i32 0, align 4
@_ZN3povL11PrecParDataE = internal unnamed_addr global ptr null, align 8
@_ZN3povL14PrecompParFuncE = internal unnamed_addr global ptr null, align 8
@_ZN3pov5statsE = external global [123 x i64], align 16
@_ZN3povL13Intervals_LowE = internal unnamed_addr global [2 x [32 x double]] zeroinitializer, align 16
@_ZN3povL12Intervals_HiE = internal unnamed_addr global [2 x [32 x double]] zeroinitializer, align 16
@_ZN3povL9SectorNumE = internal unnamed_addr global [32 x i32] zeroinitializer, align 16

; Function Attrs: mustprogress noinline optsize uwtable
define internal noundef i32 @_ZN3povL28All_Parametric_IntersectionsEPNS_13Object_StructEPNS_10Ray_StructEPNS_13istack_structE(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !PGOFuncName !34 {
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
  %14 = alloca double, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %0, i64 0, i32 24
  %18 = load ptr, ptr %17, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #10
  call void @llvm.lifetime.start.p0(i64 856, ptr nonnull %9) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %16) #10
  tail call void @_ZN3pov16Increase_CounterERx(ptr noundef nonnull align 8 dereferenceable(8) getelementptr inbounds ([123 x i64], ptr @_ZN3pov5statsE, i64 0, i64 64)) #11
  %19 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %0, i64 0, i32 22
  %20 = load i32, ptr %19, align 4, !tbaa !44
  %21 = icmp eq i32 %20, 0
  %22 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %0, i64 0, i32 10
  %23 = load ptr, ptr %22, align 8, !tbaa !45
  br i1 %21, label %51, label %24

24:                                               ; preds = %3
  %25 = icmp eq ptr %23, null
  br i1 %25, label %41, label %26

26:                                               ; preds = %24
  call void @_ZN3pov14MInvTransPointEPdS0_PNS_16Transform_StructE(ptr noundef nonnull %9, ptr noundef %1, ptr noundef nonnull %23) #11
  %27 = getelementptr inbounds %"struct.pov::Ray_Struct", ptr %9, i64 0, i32 1
  %28 = getelementptr inbounds %"struct.pov::Ray_Struct", ptr %1, i64 0, i32 1
  %29 = load ptr, ptr %22, align 8, !tbaa !45
  call void @_ZN3pov18MInvTransDirectionEPdS0_PNS_16Transform_StructE(ptr noundef nonnull %27, ptr noundef nonnull %28, ptr noundef %29) #11
  call void @_ZN3pov7VLengthERdPKd(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull %27) #11
  %30 = load double, ptr %14, align 8, !tbaa !46
  call void @_ZN3pov15VInverseScaleEqEPdd(ptr noundef nonnull %27, double noundef %30) #11
  %31 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %0, i64 0, i32 23
  %32 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %0, i64 0, i32 23, i32 0, i32 1
  %33 = load double, ptr %32, align 8, !tbaa !47
  %34 = fmul double %33, %33
  %35 = call noundef i32 @_ZN3pov16Intersect_SphereEPNS_10Ray_StructEPddS2_S2_(ptr noundef nonnull %9, ptr noundef nonnull %31, double noundef %34, ptr noundef nonnull %10, ptr noundef nonnull %11) #11
  %36 = load double, ptr %10, align 8, !tbaa !46
  %37 = load double, ptr %14, align 8, !tbaa !46
  %38 = fdiv double %36, %37
  store double %38, ptr %10, align 8, !tbaa !46
  %39 = load double, ptr %11, align 8, !tbaa !46
  %40 = fdiv double %39, %37
  store double %40, ptr %11, align 8, !tbaa !46
  br label %47

41:                                               ; preds = %24
  %42 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %0, i64 0, i32 23
  %43 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %0, i64 0, i32 23, i32 0, i32 1
  %44 = load double, ptr %43, align 8, !tbaa !47
  %45 = fmul double %44, %44
  %46 = call noundef i32 @_ZN3pov16Intersect_SphereEPNS_10Ray_StructEPddS2_S2_(ptr noundef %1, ptr noundef nonnull %42, double noundef %45, ptr noundef nonnull %10, ptr noundef nonnull %11) #11
  br label %47

47:                                               ; preds = %41, %26
  %48 = phi i32 [ %35, %26 ], [ %46, %41 ]
  call void @_ZN3pov16Decrease_CounterERx(ptr noundef nonnull align 8 dereferenceable(8) getelementptr inbounds ([123 x i64], ptr @_ZN3pov5statsE, i64 0, i64 70)) #11
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %433, label %50

50:                                               ; preds = %47
  call void @_ZN3pov16Decrease_CounterERx(ptr noundef nonnull align 8 dereferenceable(8) getelementptr inbounds ([123 x i64], ptr @_ZN3pov5statsE, i64 0, i64 71)) #11
  br label %56

51:                                               ; preds = %3
  %52 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %0, i64 0, i32 23
  %53 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %0, i64 0, i32 23, i32 0, i32 1
  %54 = call noundef i32 @_ZN3pov13Intersect_BoxEPNS_10Ray_StructEPNS_16Transform_StructEPdS4_S4_S4_PiS5_(ptr noundef %1, ptr noundef %23, ptr noundef nonnull %52, ptr noundef nonnull %53, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %15, ptr noundef nonnull %16) #11
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %433, label %56

56:                                               ; preds = %50, %51
  call void @_ZN3pov16Increase_CounterERx(ptr noundef nonnull align 8 dereferenceable(8) getelementptr inbounds ([123 x i64], ptr @_ZN3pov5statsE, i64 0, i64 65)) #11
  call void @_ZN3pov16Increase_CounterERx(ptr noundef nonnull align 8 dereferenceable(8) getelementptr inbounds ([123 x i64], ptr @_ZN3pov5statsE, i64 0, i64 62)) #11
  %57 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %0, i64 0, i32 10
  %58 = load ptr, ptr %57, align 8, !tbaa !45
  %59 = icmp eq ptr %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %56
  call void @_ZN3pov14MInvTransPointEPdS0_PNS_16Transform_StructE(ptr noundef nonnull %4, ptr noundef %1, ptr noundef nonnull %58) #11
  %61 = getelementptr inbounds %"struct.pov::Ray_Struct", ptr %1, i64 0, i32 1
  %62 = load ptr, ptr %57, align 8, !tbaa !45
  call void @_ZN3pov18MInvTransDirectionEPdS0_PNS_16Transform_StructE(ptr noundef nonnull %5, ptr noundef nonnull %61, ptr noundef %62) #11
  br label %73

63:                                               ; preds = %56
  %64 = load <2 x double>, ptr %1, align 8, !tbaa !46
  store <2 x double> %64, ptr %4, align 16, !tbaa !46
  %65 = getelementptr inbounds [3 x double], ptr %1, i64 0, i64 2
  %66 = load double, ptr %65, align 8, !tbaa !46
  %67 = getelementptr inbounds [3 x double], ptr %4, i64 0, i64 2
  store double %66, ptr %67, align 16, !tbaa !46
  %68 = getelementptr inbounds %"struct.pov::Ray_Struct", ptr %1, i64 0, i32 1
  %69 = load <2 x double>, ptr %68, align 8, !tbaa !46
  store <2 x double> %69, ptr %5, align 16, !tbaa !46
  %70 = getelementptr inbounds %"struct.pov::Ray_Struct", ptr %1, i64 0, i32 1, i64 2
  %71 = load double, ptr %70, align 8, !tbaa !46
  %72 = getelementptr inbounds [3 x double], ptr %5, i64 0, i64 2
  store double %71, ptr %72, align 16, !tbaa !46
  br label %73

73:                                               ; preds = %63, %60
  %74 = load double, ptr %10, align 8, !tbaa !46
  %75 = load double, ptr %11, align 8, !tbaa !46
  %76 = fcmp oeq double %74, %75
  %77 = select i1 %76, double 0.000000e+00, double %74
  %78 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %0, i64 0, i32 19
  %79 = load double, ptr %78, align 8, !tbaa !48
  %80 = call double @llvm.fmuladd.f64(double %79, double 4.000000e+00, double %77)
  store double %80, ptr %10, align 8, !tbaa !46
  %81 = fcmp ogt double %80, %75
  br i1 %81, label %433, label %82

82:                                               ; preds = %73
  %83 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %0, i64 0, i32 15
  %84 = load double, ptr %83, align 8, !tbaa !49
  store double %84, ptr @_ZN3povL13Intervals_LowE, align 16, !tbaa !46
  %85 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %0, i64 0, i32 16
  %86 = load double, ptr %85, align 8, !tbaa !50
  store double %86, ptr @_ZN3povL12Intervals_HiE, align 16, !tbaa !46
  %87 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %0, i64 0, i32 17
  %88 = load double, ptr %87, align 8, !tbaa !51
  store double %88, ptr getelementptr inbounds ([2 x [32 x double]], ptr @_ZN3povL13Intervals_LowE, i64 0, i64 1), align 16, !tbaa !46
  %89 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %0, i64 0, i32 18
  %90 = load double, ptr %89, align 8, !tbaa !52
  store double %90, ptr getelementptr inbounds ([2 x [32 x double]], ptr @_ZN3povL12Intervals_HiE, i64 0, i64 1), align 16, !tbaa !46
  store i32 1, ptr @_ZN3povL9SectorNumE, align 16, !tbaa !53
  %91 = icmp eq ptr %18, null
  br i1 %91, label %117, label %92

92:                                               ; preds = %82
  %93 = getelementptr inbounds %"struct.pov::PrecompParValues_Struct", ptr %18, i64 0, i32 2
  %94 = load i8, ptr %93, align 8, !tbaa !54
  %95 = and i8 %94, 1
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %101, label %97

97:                                               ; preds = %92
  %98 = getelementptr inbounds %"struct.pov::PrecompParValues_Struct", ptr %18, i64 0, i32 1
  %99 = load i32, ptr %98, align 4, !tbaa !56
  %100 = shl nuw i32 1, %99
  br label %101

101:                                              ; preds = %97, %92
  %102 = phi i32 [ %100, %97 ], [ 0, %92 ]
  %103 = and i8 %94, 2
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %109, label %105

105:                                              ; preds = %101
  %106 = getelementptr inbounds %"struct.pov::PrecompParValues_Struct", ptr %18, i64 0, i32 1
  %107 = load i32, ptr %106, align 4, !tbaa !56
  %108 = shl nuw i32 1, %107
  br label %109

109:                                              ; preds = %105, %101
  %110 = phi i32 [ %108, %105 ], [ 0, %101 ]
  %111 = and i8 %94, 4
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %117, label %113

113:                                              ; preds = %109
  %114 = getelementptr inbounds %"struct.pov::PrecompParValues_Struct", ptr %18, i64 0, i32 1
  %115 = load i32, ptr %114, align 4, !tbaa !56
  %116 = shl nuw i32 1, %115
  br label %117

117:                                              ; preds = %109, %113, %82
  %118 = phi i32 [ %102, %113 ], [ %102, %109 ], [ 0, %82 ]
  %119 = phi i32 [ %110, %113 ], [ %110, %109 ], [ 0, %82 ]
  %120 = phi i32 [ %116, %113 ], [ 0, %109 ], [ 0, %82 ]
  %121 = getelementptr inbounds [2 x double], ptr %7, i64 0, i64 1
  %122 = getelementptr inbounds [2 x double], ptr %8, i64 0, i64 1
  %123 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %0, i64 0, i32 14
  %124 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %0, i64 0, i32 20
  %125 = getelementptr inbounds %"struct.pov::PrecompParValues_Struct", ptr %18, i64 0, i32 3
  %126 = getelementptr inbounds %"struct.pov::PrecompParValues_Struct", ptr %18, i64 0, i32 4
  %127 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %0, i64 0, i32 14, i64 1
  %128 = getelementptr inbounds %"struct.pov::PrecompParValues_Struct", ptr %18, i64 0, i32 3, i64 1
  %129 = getelementptr inbounds %"struct.pov::PrecompParValues_Struct", ptr %18, i64 0, i32 4, i64 1
  %130 = getelementptr inbounds [3 x double], ptr %5, i64 0, i64 1
  %131 = getelementptr inbounds [3 x double], ptr %4, i64 0, i64 1
  %132 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %0, i64 0, i32 14, i64 2
  %133 = getelementptr inbounds %"struct.pov::PrecompParValues_Struct", ptr %18, i64 0, i32 3, i64 2
  %134 = getelementptr inbounds %"struct.pov::PrecompParValues_Struct", ptr %18, i64 0, i32 4, i64 2
  %135 = getelementptr inbounds [3 x double], ptr %5, i64 0, i64 2
  %136 = getelementptr inbounds [3 x double], ptr %4, i64 0, i64 2
  %137 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %0, i64 0, i32 25
  br label %138

138:                                              ; preds = %117, %187
  %139 = phi i32 [ 0, %117 ], [ %190, %187 ]
  %140 = phi double [ 0x7FF0000000000000, %117 ], [ %189, %187 ]
  %141 = phi double [ undef, %117 ], [ %188, %187 ]
  %142 = phi <2 x double> [ undef, %117 ], [ %191, %187 ]
  %143 = phi <2 x double> [ undef, %117 ], [ %192, %187 ]
  %144 = zext nneg i32 %139 to i64
  %145 = getelementptr inbounds [32 x double], ptr @_ZN3povL13Intervals_LowE, i64 0, i64 %144
  %146 = load double, ptr %145, align 8, !tbaa !46
  store double %146, ptr %7, align 16, !tbaa !46
  %147 = getelementptr inbounds [32 x double], ptr @_ZN3povL12Intervals_HiE, i64 0, i64 %144
  %148 = load double, ptr %147, align 8, !tbaa !46
  store double %148, ptr %8, align 16, !tbaa !46
  %149 = fsub double %148, %146
  %150 = getelementptr inbounds [2 x [32 x double]], ptr @_ZN3povL13Intervals_LowE, i64 0, i64 1, i64 %144
  %151 = load double, ptr %150, align 8, !tbaa !46
  store double %151, ptr %121, align 8, !tbaa !46
  %152 = getelementptr inbounds [2 x [32 x double]], ptr @_ZN3povL12Intervals_HiE, i64 0, i64 1, i64 %144
  %153 = load double, ptr %152, align 8, !tbaa !46
  store double %153, ptr %122, align 8, !tbaa !46
  %154 = fsub double %153, %151
  %155 = fcmp ogt double %154, %149
  %156 = select i1 %155, double %154, double %149
  %157 = zext i1 %155 to i64
  %158 = getelementptr inbounds [32 x i32], ptr @_ZN3povL9SectorNumE, i64 0, i64 %144
  %159 = load i32, ptr %158, align 4, !tbaa !53
  %160 = icmp slt i32 %159, %118
  br i1 %160, label %161, label %169

161:                                              ; preds = %138
  %162 = load ptr, ptr %125, align 8, !tbaa !57
  %163 = sext i32 %159 to i64
  %164 = getelementptr inbounds double, ptr %162, i64 %163
  %165 = load double, ptr %164, align 8, !tbaa !46
  store double %165, ptr %12, align 8, !tbaa !46
  %166 = load ptr, ptr %126, align 8, !tbaa !57
  %167 = getelementptr inbounds double, ptr %166, i64 %163
  %168 = load double, ptr %167, align 8, !tbaa !46
  store double %168, ptr %13, align 8, !tbaa !46
  br label %174

169:                                              ; preds = %138
  %170 = load ptr, ptr %123, align 8, !tbaa !57
  %171 = load i32, ptr %170, align 4, !tbaa !53
  %172 = load double, ptr %78, align 8, !tbaa !48
  %173 = load double, ptr %124, align 8, !tbaa !58
  call void @_ZN3pov29Evaluate_Function_Interval_UVEjdPdS0_dRdS1_(i32 noundef %171, double noundef %172, ptr noundef nonnull %7, ptr noundef nonnull %8, double noundef %173, ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %13) #11
  br label %174

174:                                              ; preds = %169, %161
  %175 = load double, ptr %5, align 16, !tbaa !46
  %176 = call double @llvm.fabs.f64(double %175)
  %177 = fcmp uge double %176, 0x3E7AD7F29ABCAF48
  %178 = load double, ptr %13, align 8, !tbaa !46
  %179 = load double, ptr %4, align 16, !tbaa !46
  br i1 %177, label %194, label %180

180:                                              ; preds = %174
  %181 = fcmp olt double %178, %179
  %182 = load double, ptr %12, align 8
  %183 = fcmp ogt double %182, %179
  %184 = select i1 %181, i1 true, i1 %183
  br i1 %184, label %185, label %226

185:                                              ; preds = %180
  %186 = add nsw i32 %139, -1
  br label %187

187:                                              ; preds = %397, %400, %185, %218, %222, %256, %282, %286, %295, %333, %355, %359, %368, %377
  %188 = phi double [ %141, %185 ], [ %227, %256 ], [ %302, %333 ], [ %302, %355 ], [ %348, %359 ], [ %348, %368 ], [ %348, %377 ], [ %227, %282 ], [ %276, %286 ], [ %276, %295 ], [ %141, %218 ], [ %212, %222 ], [ %384, %400 ], [ %384, %397 ]
  %189 = phi double [ %140, %185 ], [ %140, %256 ], [ %140, %333 ], [ %140, %355 ], [ %140, %359 ], [ %140, %368 ], [ %140, %377 ], [ %140, %282 ], [ %140, %286 ], [ %140, %295 ], [ %140, %218 ], [ %140, %222 ], [ %140, %400 ], [ %398, %397 ]
  %190 = phi i32 [ %186, %185 ], [ %257, %256 ], [ %334, %333 ], [ %356, %355 ], [ %360, %359 ], [ %369, %368 ], [ %378, %377 ], [ %283, %282 ], [ %287, %286 ], [ %296, %295 ], [ %219, %218 ], [ %223, %222 ], [ %405, %400 ], [ %399, %397 ]
  %191 = phi <2 x double> [ %142, %185 ], [ %229, %256 ], [ %229, %333 ], [ %229, %355 ], [ %229, %359 ], [ %229, %368 ], [ %229, %377 ], [ %229, %282 ], [ %229, %286 ], [ %229, %295 ], [ %210, %218 ], [ %210, %222 ], [ %229, %400 ], [ %229, %397 ]
  %192 = phi <2 x double> [ %143, %185 ], [ %143, %256 ], [ %304, %333 ], [ %304, %355 ], [ %304, %359 ], [ %304, %368 ], [ %304, %377 ], [ %274, %282 ], [ %274, %286 ], [ %274, %295 ], [ %143, %218 ], [ %143, %222 ], [ %304, %400 ], [ %304, %397 ]
  %193 = icmp sgt i32 %190, -1
  br i1 %193, label %138, label %424, !llvm.loop !59

194:                                              ; preds = %174
  %195 = load double, ptr %12, align 8, !tbaa !46
  %196 = insertelement <2 x double> poison, double %178, i64 0
  %197 = insertelement <2 x double> %196, double %195, i64 1
  %198 = insertelement <2 x double> poison, double %179, i64 0
  %199 = shufflevector <2 x double> %198, <2 x double> poison, <2 x i32> zeroinitializer
  %200 = fsub <2 x double> %197, %199
  %201 = insertelement <2 x double> poison, double %175, i64 0
  %202 = shufflevector <2 x double> %201, <2 x double> poison, <2 x i32> zeroinitializer
  %203 = fdiv <2 x double> %200, %202
  %204 = extractelement <2 x double> %203, i64 0
  %205 = extractelement <2 x double> %203, i64 1
  %206 = fcmp ogt double %204, %205
  %207 = insertelement <2 x i1> poison, i1 %206, i64 0
  %208 = shufflevector <2 x i1> %207, <2 x i1> poison, <2 x i32> zeroinitializer
  %209 = shufflevector <2 x double> %203, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %210 = select <2 x i1> %208, <2 x double> %203, <2 x double> %209
  %211 = load double, ptr %11, align 8, !tbaa !46
  %212 = extractelement <2 x double> %210, i64 1
  %213 = fcmp ogt double %212, %211
  %214 = load double, ptr %10, align 8
  %215 = extractelement <2 x double> %210, i64 0
  %216 = fcmp olt double %215, %214
  %217 = select i1 %213, i1 true, i1 %216
  br i1 %217, label %218, label %220

218:                                              ; preds = %194
  %219 = add nsw i32 %139, -1
  br label %187

220:                                              ; preds = %194
  %221 = fcmp ogt double %212, %140
  br i1 %221, label %222, label %224

222:                                              ; preds = %220
  %223 = add nsw i32 %139, -1
  br label %187

224:                                              ; preds = %220
  %225 = fsub double %215, %212
  br label %226

226:                                              ; preds = %180, %224
  %227 = phi double [ %212, %224 ], [ %141, %180 ]
  %228 = phi double [ %225, %224 ], [ 0.000000e+00, %180 ]
  %229 = phi <2 x double> [ %210, %224 ], [ %142, %180 ]
  %230 = load i32, ptr %158, align 4, !tbaa !53
  %231 = icmp slt i32 %230, %119
  br i1 %231, label %232, label %240

232:                                              ; preds = %226
  %233 = load ptr, ptr %128, align 8, !tbaa !57
  %234 = sext i32 %230 to i64
  %235 = getelementptr inbounds double, ptr %233, i64 %234
  %236 = load double, ptr %235, align 8, !tbaa !46
  store double %236, ptr %12, align 8, !tbaa !46
  %237 = load ptr, ptr %129, align 8, !tbaa !57
  %238 = getelementptr inbounds double, ptr %237, i64 %234
  %239 = load double, ptr %238, align 8, !tbaa !46
  store double %239, ptr %13, align 8, !tbaa !46
  br label %245

240:                                              ; preds = %226
  %241 = load ptr, ptr %127, align 8, !tbaa !57
  %242 = load i32, ptr %241, align 4, !tbaa !53
  %243 = load double, ptr %78, align 8, !tbaa !48
  %244 = load double, ptr %124, align 8, !tbaa !58
  call void @_ZN3pov29Evaluate_Function_Interval_UVEjdPdS0_dRdS1_(i32 noundef %242, double noundef %243, ptr noundef nonnull %7, ptr noundef nonnull %8, double noundef %244, ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %13) #11
  br label %245

245:                                              ; preds = %240, %232
  %246 = load double, ptr %130, align 8, !tbaa !46
  %247 = call double @llvm.fabs.f64(double %246)
  %248 = fcmp uge double %247, 0x3E7AD7F29ABCAF48
  %249 = load double, ptr %13, align 8, !tbaa !46
  %250 = load double, ptr %131, align 8, !tbaa !46
  br i1 %248, label %258, label %251

251:                                              ; preds = %245
  %252 = fcmp olt double %249, %250
  %253 = load double, ptr %12, align 8
  %254 = fcmp ogt double %253, %250
  %255 = select i1 %252, i1 true, i1 %254
  br i1 %255, label %256, label %301

256:                                              ; preds = %251
  %257 = add nsw i32 %139, -1
  br label %187

258:                                              ; preds = %245
  %259 = load double, ptr %12, align 8, !tbaa !46
  %260 = insertelement <2 x double> poison, double %259, i64 0
  %261 = insertelement <2 x double> %260, double %249, i64 1
  %262 = insertelement <2 x double> poison, double %250, i64 0
  %263 = shufflevector <2 x double> %262, <2 x double> poison, <2 x i32> zeroinitializer
  %264 = fsub <2 x double> %261, %263
  %265 = insertelement <2 x double> poison, double %246, i64 0
  %266 = shufflevector <2 x double> %265, <2 x double> poison, <2 x i32> zeroinitializer
  %267 = fdiv <2 x double> %264, %266
  %268 = extractelement <2 x double> %267, i64 0
  %269 = extractelement <2 x double> %267, i64 1
  %270 = fcmp ogt double %269, %268
  %271 = insertelement <2 x i1> poison, i1 %270, i64 0
  %272 = shufflevector <2 x i1> %271, <2 x i1> poison, <2 x i32> zeroinitializer
  %273 = shufflevector <2 x double> %267, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %274 = select <2 x i1> %272, <2 x double> %267, <2 x double> %273
  %275 = load double, ptr %11, align 8, !tbaa !46
  %276 = extractelement <2 x double> %274, i64 0
  %277 = fcmp ogt double %276, %275
  %278 = load double, ptr %10, align 8
  %279 = extractelement <2 x double> %274, i64 1
  %280 = fcmp olt double %279, %278
  %281 = select i1 %277, i1 true, i1 %280
  br i1 %281, label %282, label %284

282:                                              ; preds = %258
  %283 = add nsw i32 %139, -1
  br label %187

284:                                              ; preds = %258
  %285 = fcmp ogt double %276, %140
  br i1 %285, label %286, label %288

286:                                              ; preds = %284
  %287 = add nsw i32 %139, -1
  br label %187

288:                                              ; preds = %284
  br i1 %177, label %289, label %297

289:                                              ; preds = %288
  %290 = extractelement <2 x double> %229, i64 0
  %291 = fcmp ogt double %276, %290
  %292 = extractelement <2 x double> %229, i64 1
  %293 = fcmp olt double %279, %292
  %294 = select i1 %291, i1 true, i1 %293
  br i1 %294, label %295, label %297

295:                                              ; preds = %289
  %296 = add nsw i32 %139, -1
  br label %187

297:                                              ; preds = %289, %288
  %298 = fsub double %279, %276
  %299 = fcmp ogt double %298, %228
  br i1 %299, label %300, label %301

300:                                              ; preds = %297
  br label %301

301:                                              ; preds = %251, %297, %300
  %302 = phi double [ %276, %300 ], [ %276, %297 ], [ %227, %251 ]
  %303 = phi double [ %298, %300 ], [ %228, %297 ], [ %228, %251 ]
  %304 = phi <2 x double> [ %274, %300 ], [ %274, %297 ], [ %143, %251 ]
  %305 = load i32, ptr %158, align 4, !tbaa !53
  %306 = icmp slt i32 %305, %120
  %307 = icmp sgt i32 %305, 0
  %308 = and i1 %306, %307
  br i1 %308, label %309, label %317

309:                                              ; preds = %301
  %310 = load ptr, ptr %133, align 8, !tbaa !57
  %311 = zext nneg i32 %305 to i64
  %312 = getelementptr inbounds double, ptr %310, i64 %311
  %313 = load double, ptr %312, align 8, !tbaa !46
  store double %313, ptr %12, align 8, !tbaa !46
  %314 = load ptr, ptr %134, align 8, !tbaa !57
  %315 = getelementptr inbounds double, ptr %314, i64 %311
  %316 = load double, ptr %315, align 8, !tbaa !46
  store double %316, ptr %13, align 8, !tbaa !46
  br label %322

317:                                              ; preds = %301
  %318 = load ptr, ptr %132, align 8, !tbaa !57
  %319 = load i32, ptr %318, align 4, !tbaa !53
  %320 = load double, ptr %78, align 8, !tbaa !48
  %321 = load double, ptr %124, align 8, !tbaa !58
  call void @_ZN3pov29Evaluate_Function_Interval_UVEjdPdS0_dRdS1_(i32 noundef %319, double noundef %320, ptr noundef nonnull %7, ptr noundef nonnull %8, double noundef %321, ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %13) #11
  br label %322

322:                                              ; preds = %317, %309
  %323 = load double, ptr %135, align 16, !tbaa !46
  %324 = call double @llvm.fabs.f64(double %323)
  %325 = fcmp olt double %324, 0x3E7AD7F29ABCAF48
  %326 = load double, ptr %13, align 8, !tbaa !46
  %327 = load double, ptr %136, align 16, !tbaa !46
  br i1 %325, label %328, label %335

328:                                              ; preds = %322
  %329 = fcmp olt double %326, %327
  %330 = load double, ptr %12, align 8
  %331 = fcmp ogt double %330, %327
  %332 = select i1 %329, i1 true, i1 %331
  br i1 %332, label %333, label %383

333:                                              ; preds = %328
  %334 = add nsw i32 %139, -1
  br label %187

335:                                              ; preds = %322
  %336 = load double, ptr %12, align 8, !tbaa !46
  %337 = insertelement <2 x double> poison, double %326, i64 0
  %338 = insertelement <2 x double> %337, double %336, i64 1
  %339 = insertelement <2 x double> poison, double %327, i64 0
  %340 = shufflevector <2 x double> %339, <2 x double> poison, <2 x i32> zeroinitializer
  %341 = fsub <2 x double> %338, %340
  %342 = insertelement <2 x double> poison, double %323, i64 0
  %343 = shufflevector <2 x double> %342, <2 x double> poison, <2 x i32> zeroinitializer
  %344 = fdiv <2 x double> %341, %343
  %345 = extractelement <2 x double> %344, i64 0
  %346 = extractelement <2 x double> %344, i64 1
  %347 = fcmp ogt double %345, %346
  %348 = select i1 %347, double %346, double %345
  %349 = select i1 %347, double %345, double %346
  %350 = load double, ptr %11, align 8, !tbaa !46
  %351 = fcmp ogt double %348, %350
  %352 = load double, ptr %10, align 8
  %353 = fcmp olt double %349, %352
  %354 = select i1 %351, i1 true, i1 %353
  br i1 %354, label %355, label %357

355:                                              ; preds = %335
  %356 = add nsw i32 %139, -1
  br label %187

357:                                              ; preds = %335
  %358 = fcmp ogt double %348, %140
  br i1 %358, label %359, label %361

359:                                              ; preds = %357
  %360 = add nsw i32 %139, -1
  br label %187

361:                                              ; preds = %357
  br i1 %177, label %362, label %370

362:                                              ; preds = %361
  %363 = extractelement <2 x double> %229, i64 0
  %364 = fcmp ogt double %348, %363
  %365 = extractelement <2 x double> %229, i64 1
  %366 = fcmp olt double %349, %365
  %367 = select i1 %364, i1 true, i1 %366
  br i1 %367, label %368, label %370

368:                                              ; preds = %362
  %369 = add nsw i32 %139, -1
  br label %187

370:                                              ; preds = %362, %361
  br i1 %248, label %371, label %379

371:                                              ; preds = %370
  %372 = extractelement <2 x double> %304, i64 1
  %373 = fcmp ogt double %348, %372
  %374 = extractelement <2 x double> %304, i64 0
  %375 = fcmp olt double %349, %374
  %376 = select i1 %373, i1 true, i1 %375
  br i1 %376, label %377, label %379

377:                                              ; preds = %371
  %378 = add nsw i32 %139, -1
  br label %187

379:                                              ; preds = %371, %370
  %380 = fsub double %349, %348
  %381 = fcmp ogt double %380, %303
  br i1 %381, label %382, label %383

382:                                              ; preds = %379
  br label %383

383:                                              ; preds = %328, %379, %382
  %384 = phi double [ %348, %382 ], [ %348, %379 ], [ %302, %328 ]
  %385 = phi double [ %380, %382 ], [ %303, %379 ], [ %303, %328 ]
  %386 = fcmp ogt double %156, %385
  %387 = select i1 %386, double %385, double %156
  %388 = load double, ptr %78, align 8, !tbaa !48
  %389 = fcmp olt double %387, %388
  br i1 %389, label %390, label %400

390:                                              ; preds = %383
  %391 = fcmp ogt double %140, %384
  %392 = load double, ptr %10, align 8
  %393 = fcmp ogt double %384, %392
  %394 = select i1 %391, i1 %393, i1 false
  br i1 %394, label %395, label %397

395:                                              ; preds = %390
  %396 = load <2 x double>, ptr %7, align 16, !tbaa !46
  store <2 x double> %396, ptr %137, align 8, !tbaa !46
  br label %397

397:                                              ; preds = %395, %390
  %398 = phi double [ %384, %395 ], [ %140, %390 ]
  %399 = add nsw i32 %139, -1
  br label %187

400:                                              ; preds = %383
  %401 = load i32, ptr %158, align 4, !tbaa !53
  %402 = shl nsw i32 %401, 1
  %403 = icmp sgt i32 %401, 4999999
  %404 = select i1 %403, i32 10000000, i32 %402
  %405 = add nuw nsw i32 %139, 1
  %406 = zext nneg i32 %405 to i64
  %407 = getelementptr inbounds [32 x i32], ptr @_ZN3povL9SectorNumE, i64 0, i64 %406
  store i32 %404, ptr %407, align 4, !tbaa !53
  %408 = or disjoint i32 %404, 1
  store i32 %408, ptr %158, align 4, !tbaa !53
  %409 = load double, ptr %7, align 16, !tbaa !46
  %410 = getelementptr inbounds [32 x double], ptr @_ZN3povL13Intervals_LowE, i64 0, i64 %406
  store double %409, ptr %410, align 8, !tbaa !46
  %411 = load double, ptr %8, align 16, !tbaa !46
  %412 = getelementptr inbounds [32 x double], ptr @_ZN3povL12Intervals_HiE, i64 0, i64 %406
  store double %411, ptr %412, align 8, !tbaa !46
  %413 = load double, ptr %121, align 8, !tbaa !46
  %414 = getelementptr inbounds [2 x [32 x double]], ptr @_ZN3povL13Intervals_LowE, i64 0, i64 1, i64 %406
  store double %413, ptr %414, align 8, !tbaa !46
  %415 = load double, ptr %122, align 8, !tbaa !46
  %416 = getelementptr inbounds [2 x [32 x double]], ptr @_ZN3povL12Intervals_HiE, i64 0, i64 1, i64 %406
  store double %415, ptr %416, align 8, !tbaa !46
  %417 = getelementptr inbounds [2 x [32 x double]], ptr @_ZN3povL12Intervals_HiE, i64 0, i64 %157, i64 %406
  %418 = load double, ptr %417, align 8, !tbaa !46
  %419 = getelementptr inbounds [2 x [32 x double]], ptr @_ZN3povL13Intervals_LowE, i64 0, i64 %157, i64 %406
  %420 = load double, ptr %419, align 8, !tbaa !46
  %421 = fadd double %418, %420
  %422 = fmul double %421, 5.000000e-01
  store double %422, ptr %417, align 8, !tbaa !46
  %423 = getelementptr inbounds [2 x [32 x double]], ptr @_ZN3povL13Intervals_LowE, i64 0, i64 %157, i64 %144
  store double %422, ptr %423, align 8, !tbaa !46
  br label %187

424:                                              ; preds = %187
  %425 = load double, ptr %11, align 8, !tbaa !46
  %426 = fcmp olt double %189, %425
  br i1 %426, label %427, label %433

427:                                              ; preds = %424
  call void @_ZN3pov16Increase_CounterERx(ptr noundef nonnull align 8 dereferenceable(8) getelementptr inbounds ([123 x i64], ptr @_ZN3pov5statsE, i64 0, i64 63)) #11
  %428 = getelementptr inbounds %"struct.pov::Ray_Struct", ptr %1, i64 0, i32 1
  call void @_ZN3pov6VScaleEPdPKdd(ptr noundef nonnull %6, ptr noundef nonnull %428, double noundef %189) #11
  call void @_ZN3pov6VAddEqEPdPKd(ptr noundef nonnull %6, ptr noundef %1) #11
  %429 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %0, i64 0, i32 7
  %430 = load ptr, ptr %429, align 8, !tbaa !61
  %431 = call noundef zeroext i1 @_ZN3pov13Point_In_ClipEPdPNS_13Object_StructE(ptr noundef nonnull %6, ptr noundef %430) #11
  br i1 %431, label %432, label %433

432:                                              ; preds = %427
  call void @_ZN3pov10push_entryEdPdPNS_13Object_StructEPNS_13istack_structE(double noundef %189, ptr noundef nonnull %6, ptr noundef nonnull %0, ptr noundef %2) #11
  br label %433

433:                                              ; preds = %47, %424, %427, %73, %51, %432
  %434 = phi i32 [ 1, %432 ], [ 0, %51 ], [ 0, %73 ], [ 0, %427 ], [ 0, %424 ], [ 0, %47 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 856, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #10
  ret i32 %434
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef i32 @_ZN3povL17Inside_ParametricEPdPNS_13Object_StructE(ptr nocapture readnone %0, ptr nocapture readnone %1) #1 !PGOFuncName !62 {
  ret i32 0
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal void @_ZN3povL17Parametric_NormalEPdPNS_13Object_StructEPNS_10istk_entryE(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 !PGOFuncName !63 {
  %4 = alloca [3 x double], align 16
  %5 = alloca [3 x double], align 16
  %6 = alloca [2 x double], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #10
  %7 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %1, i64 0, i32 25
  %8 = getelementptr inbounds [2 x double], ptr %6, i64 0, i64 1
  %9 = load <2 x double>, ptr %7, align 8, !tbaa !46
  store <2 x double> %9, ptr %6, align 16, !tbaa !46
  %10 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %1, i64 0, i32 14
  %11 = load ptr, ptr %10, align 8, !tbaa !57
  %12 = load i32, ptr %11, align 4, !tbaa !53
  %13 = call noundef double @_ZN3pov20Evaluate_Function_UVEjPd(i32 noundef %12, ptr noundef nonnull %6) #11
  %14 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %1, i64 0, i32 14, i64 1
  %15 = load ptr, ptr %14, align 8, !tbaa !57
  %16 = load i32, ptr %15, align 4, !tbaa !53
  %17 = call noundef double @_ZN3pov20Evaluate_Function_UVEjPd(i32 noundef %16, ptr noundef nonnull %6) #11
  %18 = getelementptr inbounds [3 x double], ptr %5, i64 0, i64 1
  %19 = getelementptr inbounds [3 x double], ptr %4, i64 0, i64 1
  %20 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %1, i64 0, i32 14, i64 2
  %21 = load ptr, ptr %20, align 8, !tbaa !57
  %22 = load i32, ptr %21, align 4, !tbaa !53
  %23 = call noundef double @_ZN3pov20Evaluate_Function_UVEjPd(i32 noundef %22, ptr noundef nonnull %6) #11
  %24 = getelementptr inbounds [3 x double], ptr %5, i64 0, i64 2
  %25 = getelementptr inbounds [3 x double], ptr %4, i64 0, i64 2
  %26 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %1, i64 0, i32 19
  %27 = load double, ptr %26, align 8, !tbaa !48
  %28 = load double, ptr %6, align 16, !tbaa !46
  %29 = fadd double %27, %28
  store double %29, ptr %6, align 16, !tbaa !46
  %30 = load ptr, ptr %10, align 8, !tbaa !57
  %31 = load i32, ptr %30, align 4, !tbaa !53
  %32 = call noundef double @_ZN3pov20Evaluate_Function_UVEjPd(i32 noundef %31, ptr noundef nonnull %6) #11
  %33 = fsub double %32, %13
  store double %33, ptr %4, align 16, !tbaa !46
  %34 = load ptr, ptr %14, align 8, !tbaa !57
  %35 = load i32, ptr %34, align 4, !tbaa !53
  %36 = call noundef double @_ZN3pov20Evaluate_Function_UVEjPd(i32 noundef %35, ptr noundef nonnull %6) #11
  %37 = fsub double %36, %17
  store double %37, ptr %19, align 8, !tbaa !46
  %38 = load ptr, ptr %20, align 8, !tbaa !57
  %39 = load i32, ptr %38, align 4, !tbaa !53
  %40 = call noundef double @_ZN3pov20Evaluate_Function_UVEjPd(i32 noundef %39, ptr noundef nonnull %6) #11
  %41 = fsub double %40, %23
  store double %41, ptr %25, align 16, !tbaa !46
  %42 = load double, ptr %7, align 8, !tbaa !64
  store double %42, ptr %6, align 16, !tbaa !46
  %43 = load double, ptr %26, align 8, !tbaa !48
  %44 = load double, ptr %8, align 8, !tbaa !46
  %45 = fadd double %43, %44
  store double %45, ptr %8, align 8, !tbaa !46
  %46 = load ptr, ptr %10, align 8, !tbaa !57
  %47 = load i32, ptr %46, align 4, !tbaa !53
  %48 = call noundef double @_ZN3pov20Evaluate_Function_UVEjPd(i32 noundef %47, ptr noundef nonnull %6) #11
  %49 = fsub double %48, %13
  store double %49, ptr %5, align 16, !tbaa !46
  %50 = load ptr, ptr %14, align 8, !tbaa !57
  %51 = load i32, ptr %50, align 4, !tbaa !53
  %52 = call noundef double @_ZN3pov20Evaluate_Function_UVEjPd(i32 noundef %51, ptr noundef nonnull %6) #11
  %53 = fsub double %52, %17
  store double %53, ptr %18, align 8, !tbaa !46
  %54 = load ptr, ptr %20, align 8, !tbaa !57
  %55 = load i32, ptr %54, align 4, !tbaa !53
  %56 = call noundef double @_ZN3pov20Evaluate_Function_UVEjPd(i32 noundef %55, ptr noundef nonnull %6) #11
  %57 = fsub double %56, %23
  store double %57, ptr %24, align 16, !tbaa !46
  call void @_ZN3pov6VCrossEPdPKdS2_(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5) #11
  %58 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %1, i64 0, i32 10
  %59 = load ptr, ptr %58, align 8, !tbaa !45
  %60 = icmp eq ptr %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %3
  call void @_ZN3pov12MTransNormalEPdS0_PNS_16Transform_StructE(ptr noundef %0, ptr noundef %0, ptr noundef nonnull %59) #11
  br label %62

62:                                               ; preds = %61, %3
  call void @_ZN3pov10VNormalizeEPdPKd(ptr noundef %0, ptr noundef %0) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @_ZN3povL18Parametric_UVCoordEPdPNS_13Object_StructEPNS_10istk_entryE(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #2 !PGOFuncName !65 {
  %4 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %1, i64 0, i32 25
  %5 = load double, ptr %4, align 8, !tbaa !64
  store double %5, ptr %0, align 8, !tbaa !46
  %6 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %1, i64 0, i32 26
  %7 = load double, ptr %6, align 8, !tbaa !66
  %8 = getelementptr inbounds double, ptr %0, i64 1
  store double %7, ptr %8, align 8, !tbaa !46
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN3pov15Copy_ParametricEPNS_13Object_StructE(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call noundef ptr @_ZN3pov17Create_ParametricEv() #11
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %2, ptr noundef nonnull align 8 dereferenceable(272) %0, i64 272, i1 false), !tbaa.struct !67
  %3 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %0, i64 0, i32 14
  %4 = load ptr, ptr %3, align 8, !tbaa !57
  %5 = tail call noundef ptr @_ZN3pov13Copy_FunctionEPj(ptr noundef %4) #11
  %6 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %2, i64 0, i32 14
  store ptr %5, ptr %6, align 8, !tbaa !57
  %7 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %0, i64 0, i32 14, i64 1
  %8 = load ptr, ptr %7, align 8, !tbaa !57
  %9 = tail call noundef ptr @_ZN3pov13Copy_FunctionEPj(ptr noundef %8) #11
  %10 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %2, i64 0, i32 14, i64 1
  store ptr %9, ptr %10, align 8, !tbaa !57
  %11 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %0, i64 0, i32 14, i64 2
  %12 = load ptr, ptr %11, align 8, !tbaa !57
  %13 = tail call noundef ptr @_ZN3pov13Copy_FunctionEPj(ptr noundef %12) #11
  %14 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %2, i64 0, i32 14, i64 2
  store ptr %13, ptr %14, align 8, !tbaa !57
  %15 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %0, i64 0, i32 10
  %16 = load ptr, ptr %15, align 8, !tbaa !45
  %17 = tail call noundef ptr @_ZN3pov14Copy_TransformEPNS_16Transform_StructE(ptr noundef %16) #11
  %18 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %2, i64 0, i32 10
  store ptr %17, ptr %18, align 8, !tbaa !45
  %19 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %0, i64 0, i32 24
  %20 = load ptr, ptr %19, align 8, !tbaa !35
  %21 = tail call noundef ptr @_ZN3pov18Copy_PrecompParValEPNS_23PrecompParValues_StructE(ptr noundef %20) #11
  %22 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %2, i64 0, i32 24
  store ptr %20, ptr %22, align 8, !tbaa !35
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal void @_ZN3povL20Translate_ParametricEPNS_13Object_StructEPdPNS_16Transform_StructE(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #0 !PGOFuncName !69 {
  tail call void @_ZN3povL20Transform_ParametricEPNS_13Object_StructEPNS_16Transform_StructE(ptr noundef %0, ptr noundef %2) #11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal void @_ZN3povL17Rotate_ParametricEPNS_13Object_StructEPdPNS_16Transform_StructE(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #0 !PGOFuncName !70 {
  tail call void @_ZN3povL20Transform_ParametricEPNS_13Object_StructEPNS_16Transform_StructE(ptr noundef %0, ptr noundef %2) #11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal void @_ZN3povL16Scale_ParametricEPNS_13Object_StructEPdPNS_16Transform_StructE(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #0 !PGOFuncName !71 {
  tail call void @_ZN3povL20Transform_ParametricEPNS_13Object_StructEPNS_16Transform_StructE(ptr noundef %0, ptr noundef %2) #11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal void @_ZN3povL20Transform_ParametricEPNS_13Object_StructEPNS_16Transform_StructE(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !72 {
  %3 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %0, i64 0, i32 10
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call noundef ptr @_ZN3pov16Create_TransformEv() #11
  store ptr %7, ptr %3, align 8, !tbaa !45
  br label %8

8:                                                ; preds = %6, %2
  %9 = phi ptr [ %7, %6 ], [ %4, %2 ]
  tail call void @_ZN3pov18Compose_TransformsEPNS_16Transform_StructES1_(ptr noundef %9, ptr noundef %1) #11
  tail call void @_ZN3pov23Compute_Parametric_BBoxEPNS_17Parametric_StructE(ptr noundef nonnull %0) #11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @_ZN3povL17Invert_ParametricEPNS_13Object_StructE(ptr nocapture readnone %0) #1 !PGOFuncName !73 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN3pov18Destroy_ParametricEPNS_13Object_StructE(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %0, i64 0, i32 10
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  tail call void @_ZN3pov17Destroy_TransformEPNS_16Transform_StructE(ptr noundef %3) #11
  %4 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %0, i64 0, i32 14
  %5 = load ptr, ptr %4, align 8, !tbaa !57
  tail call void @_ZN3pov16Destroy_FunctionEPj(ptr noundef %5) #11
  %6 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %0, i64 0, i32 14, i64 1
  %7 = load ptr, ptr %6, align 8, !tbaa !57
  tail call void @_ZN3pov16Destroy_FunctionEPj(ptr noundef %7) #11
  %8 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %0, i64 0, i32 14, i64 2
  %9 = load ptr, ptr %8, align 8, !tbaa !57
  tail call void @_ZN3pov16Destroy_FunctionEPj(ptr noundef %9) #11
  %10 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %0, i64 0, i32 24
  %11 = load ptr, ptr %10, align 8, !tbaa !35
  tail call void @_ZN3pov21Destroy_PrecompParValEPNS_23PrecompParValues_StructE(ptr noundef %11) #11
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef 828) #11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN3pov23Compute_Parametric_BBoxEPNS_17Parametric_StructE(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %0, i64 0, i32 22
  %3 = load i32, ptr %2, align 4, !tbaa !44
  %4 = icmp eq i32 %3, 0
  %5 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %0, i64 0, i32 9
  %6 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %0, i64 0, i32 23
  br i1 %4, label %23, label %7

7:                                                ; preds = %1
  %8 = load double, ptr %6, align 8, !tbaa !47
  %9 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %0, i64 0, i32 23, i32 0, i32 1
  %10 = load double, ptr %9, align 8, !tbaa !47
  %11 = fsub double %8, %10
  %12 = fptrunc double %11 to float
  %13 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %0, i64 0, i32 23, i32 0, i32 0, i64 1
  %14 = load double, ptr %13, align 8, !tbaa !47
  %15 = fsub double %14, %10
  %16 = fptrunc double %15 to float
  %17 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %0, i64 0, i32 23, i32 0, i32 0, i64 2
  %18 = load double, ptr %17, align 8, !tbaa !47
  %19 = fsub double %18, %10
  %20 = fptrunc double %19 to float
  %21 = fmul double %10, 2.000000e+00
  %22 = fptrunc double %21 to float
  tail call void @_ZN3pov9Make_BBoxERNS_19Bounding_Box_StructEffffff(ptr noundef nonnull align 4 dereferenceable(24) %5, float noundef %12, float noundef %16, float noundef %20, float noundef %22, float noundef %22, float noundef %22) #11
  br label %26

23:                                               ; preds = %1
  tail call void @_ZN3pov16Assign_BBox_VectERA3_fPd(ptr noundef nonnull align 4 dereferenceable(12) %5, ptr noundef nonnull %6) #11
  %24 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %0, i64 0, i32 9, i32 1
  %25 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %0, i64 0, i32 23, i32 0, i32 1
  tail call void @_ZN3pov4VSubEPfPKdS2_(ptr noundef nonnull %24, ptr noundef nonnull %25, ptr noundef nonnull %6) #11
  br label %26

26:                                               ; preds = %23, %7
  %27 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %0, i64 0, i32 10
  %28 = load ptr, ptr %27, align 8, !tbaa !45
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %0, i64 0, i32 9
  tail call void @_ZN3pov14Recompute_BBoxEPNS_19Bounding_Box_StructEPNS_16Transform_StructE(ptr noundef nonnull %31, ptr noundef nonnull %28) #11
  br label %32

32:                                               ; preds = %30, %26
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov9Make_BBoxERNS_19Bounding_Box_StructEffffff(ptr noundef nonnull align 4 dereferenceable(24) %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6) local_unnamed_addr #3 comdat {
  store float %1, ptr %0, align 4, !tbaa !68
  %8 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 1
  store float %2, ptr %8, align 4, !tbaa !68
  %9 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 2
  store float %3, ptr %9, align 4, !tbaa !68
  %10 = getelementptr inbounds %"struct.pov::Bounding_Box_Struct", ptr %0, i64 0, i32 1
  store float %4, ptr %10, align 4, !tbaa !68
  %11 = getelementptr inbounds %"struct.pov::Bounding_Box_Struct", ptr %0, i64 0, i32 1, i64 1
  store float %5, ptr %11, align 4, !tbaa !68
  %12 = getelementptr inbounds %"struct.pov::Bounding_Box_Struct", ptr %0, i64 0, i32 1, i64 2
  store float %6, ptr %12, align 4, !tbaa !68
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov16Assign_BBox_VectERA3_fPd(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef %1) local_unnamed_addr #3 comdat {
  %3 = load <2 x double>, ptr %1, align 8, !tbaa !46
  %4 = fptrunc <2 x double> %3 to <2 x float>
  store <2 x float> %4, ptr %0, align 4, !tbaa !68
  %5 = getelementptr inbounds double, ptr %1, i64 2
  %6 = load double, ptr %5, align 8, !tbaa !46
  %7 = fptrunc double %6 to float
  %8 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 2
  store float %7, ptr %8, align 4, !tbaa !68
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov4VSubEPfPKdS2_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 comdat {
  %4 = load <2 x double>, ptr %1, align 8, !tbaa !46
  %5 = load <2 x double>, ptr %2, align 8, !tbaa !46
  %6 = fsub <2 x double> %4, %5
  %7 = fptrunc <2 x double> %6 to <2 x float>
  store <2 x float> %7, ptr %0, align 4, !tbaa !68
  %8 = getelementptr inbounds double, ptr %1, i64 2
  %9 = load double, ptr %8, align 8, !tbaa !46
  %10 = getelementptr inbounds double, ptr %2, i64 2
  %11 = load double, ptr %10, align 8, !tbaa !46
  %12 = fsub double %9, %11
  %13 = fptrunc double %12 to float
  %14 = getelementptr inbounds float, ptr %0, i64 2
  store float %13, ptr %14, align 4, !tbaa !68
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: optsize
declare void @_ZN3pov14Recompute_BBoxEPNS_19Bounding_Box_StructEPNS_16Transform_StructE(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN3pov17Create_ParametricEv() local_unnamed_addr #0 {
  %1 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef 272, ptr noundef nonnull @.str, i32 noundef 860, ptr noundef nonnull @.str.1) #11
  %2 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %1, i64 0, i32 1
  store i32 1, ptr %2, align 8, !tbaa !74
  store ptr @_ZN3pov18Parametric_MethodsE, ptr %1, align 8, !tbaa !75
  %3 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %1, i64 0, i32 2
  %4 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %1, i64 0, i32 10
  %5 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %1, i64 0, i32 9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  tail call void @_ZN3pov9Make_BBoxERNS_19Bounding_Box_StructEffffff(ptr noundef nonnull align 4 dereferenceable(24) %5, float noundef -1.000000e+10, float noundef -1.000000e+10, float noundef -1.000000e+10, float noundef 2.000000e+10, float noundef 2.000000e+10, float noundef 2.000000e+10) #11
  %6 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %1, i64 0, i32 23
  tail call void @_ZN3pov11Make_VectorEPdddd(ptr noundef nonnull %6, double noundef -1.000000e+00, double noundef -1.000000e+00, double noundef -1.000000e+00) #11
  %7 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %1, i64 0, i32 23, i32 0, i32 1
  tail call void @_ZN3pov11Make_VectorEPdddd(ptr noundef nonnull %7, double noundef 1.000000e+00, double noundef 1.000000e+00, double noundef 1.000000e+00) #11
  tail call void @_ZN3pov9Make_BBoxERNS_19Bounding_Box_StructEffffff(ptr noundef nonnull align 4 dereferenceable(24) %5, float noundef -1.000000e+00, float noundef -1.000000e+00, float noundef -1.000000e+00, float noundef 2.000000e+00, float noundef 2.000000e+00, float noundef 2.000000e+00) #11
  %8 = tail call noundef ptr @_ZN3pov16Create_TransformEv() #11
  store ptr %8, ptr %4, align 8, !tbaa !45
  %9 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %1, i64 0, i32 14
  %10 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %1, i64 0, i32 19
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  store <2 x double> <double 1.000000e-03, double 1.000000e+00>, ptr %10, align 8, !tbaa !46
  %11 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %1, i64 0, i32 21
  store i32 0, ptr %11, align 8, !tbaa !76
  %12 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %1, i64 0, i32 24
  store ptr null, ptr %12, align 8, !tbaa !35
  %13 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %1, i64 0, i32 22
  store i32 0, ptr %13, align 4, !tbaa !44
  ret ptr %1
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: optsize
declare noundef ptr @_ZN3pov13Copy_FunctionEPj(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef ptr @_ZN3pov14Copy_TransformEPNS_16Transform_StructE(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local noundef ptr @_ZN3pov18Copy_PrecompParValEPNS_23PrecompParValues_StructE(ptr noundef returned %0) local_unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !77
  %5 = add nsw i32 %4, 1
  store i32 %5, ptr %0, align 8, !tbaa !77
  br label %6

6:                                                ; preds = %1, %3
  ret ptr %0
}

; Function Attrs: optsize
declare void @_ZN3pov17Destroy_TransformEPNS_16Transform_StructE(ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN3pov16Destroy_FunctionEPj(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN3pov21Destroy_PrecompParValEPNS_23PrecompParValues_StructE(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %38, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !77
  %5 = add nsw i32 %4, -1
  store i32 %5, ptr %0, align 8, !tbaa !77
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %38

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"struct.pov::PrecompParValues_Struct", ptr %0, i64 0, i32 2
  %9 = load i8, ptr %8, align 8, !tbaa !54
  %10 = and i8 %9, 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %"struct.pov::PrecompParValues_Struct", ptr %0, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !57
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef %14, ptr noundef nonnull @.str, i32 noundef 1149) #11
  store ptr null, ptr %13, align 8, !tbaa !57
  %15 = getelementptr inbounds %"struct.pov::PrecompParValues_Struct", ptr %0, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !57
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef %16, ptr noundef nonnull @.str, i32 noundef 1150) #11
  store ptr null, ptr %15, align 8, !tbaa !57
  %17 = load i8, ptr %8, align 8, !tbaa !54
  br label %18

18:                                               ; preds = %12, %7
  %19 = phi i8 [ %17, %12 ], [ %9, %7 ]
  %20 = and i8 %19, 2
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %"struct.pov::PrecompParValues_Struct", ptr %0, i64 0, i32 3, i64 1
  %24 = load ptr, ptr %23, align 8, !tbaa !57
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef %24, ptr noundef nonnull @.str, i32 noundef 1154) #11
  store ptr null, ptr %23, align 8, !tbaa !57
  %25 = getelementptr inbounds %"struct.pov::PrecompParValues_Struct", ptr %0, i64 0, i32 4, i64 1
  %26 = load ptr, ptr %25, align 8, !tbaa !57
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef %26, ptr noundef nonnull @.str, i32 noundef 1155) #11
  store ptr null, ptr %25, align 8, !tbaa !57
  %27 = load i8, ptr %8, align 8, !tbaa !54
  br label %28

28:                                               ; preds = %22, %18
  %29 = phi i8 [ %27, %22 ], [ %19, %18 ]
  %30 = and i8 %29, 4
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %"struct.pov::PrecompParValues_Struct", ptr %0, i64 0, i32 3, i64 2
  %34 = load ptr, ptr %33, align 8, !tbaa !57
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef %34, ptr noundef nonnull @.str, i32 noundef 1159) #11
  store ptr null, ptr %33, align 8, !tbaa !57
  %35 = getelementptr inbounds %"struct.pov::PrecompParValues_Struct", ptr %0, i64 0, i32 4, i64 2
  %36 = load ptr, ptr %35, align 8, !tbaa !57
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef %36, ptr noundef nonnull @.str, i32 noundef 1160) #11
  store ptr null, ptr %35, align 8, !tbaa !57
  br label %37

37:                                               ; preds = %32, %28
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef nonnull %0, ptr noundef nonnull @.str, i32 noundef 1162) #11
  br label %38

38:                                               ; preds = %1, %37, %3
  ret void
}

; Function Attrs: optsize
declare void @_ZN3pov8pov_freeEPvPKci(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov11Make_VectorEPdddd(ptr noundef %0, double noundef %1, double noundef %2, double noundef %3) local_unnamed_addr #3 comdat {
  store double %1, ptr %0, align 8, !tbaa !46
  %5 = getelementptr inbounds double, ptr %0, i64 1
  store double %2, ptr %5, align 8, !tbaa !46
  %6 = getelementptr inbounds double, ptr %0, i64 2
  store double %3, ptr %6, align 8, !tbaa !46
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZN3pov16Create_TransformEv() local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN3pov28Precompute_Parametric_ValuesEPNS_17Parametric_StructEci(ptr noundef %0, i8 noundef signext %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = add i32 %2, -21
  %5 = icmp ult i32 %4, -20
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.3) #11
  br label %8

8:                                                ; preds = %3, %6
  %9 = shl nuw i32 1, %2
  %10 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef 64, ptr noundef nonnull @.str, i32 noundef 1045, ptr noundef nonnull @.str.2) #11
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  tail call void @_ZN3pov7MAErrorEPKcl(ptr noundef nonnull @.str.2, i64 noundef 64) #11
  br label %13

13:                                               ; preds = %12, %8
  %14 = getelementptr inbounds %"struct.pov::PrecompParValues_Struct", ptr %10, i64 0, i32 2
  store i8 %1, ptr %14, align 8, !tbaa !54
  %15 = getelementptr inbounds %"struct.pov::PrecompParValues_Struct", ptr %10, i64 0, i32 1
  store i32 %2, ptr %15, align 4, !tbaa !56
  store i32 1, ptr %10, align 8, !tbaa !77
  %16 = zext i8 %1 to i32
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %13
  %20 = sext i32 %9 to i64
  %21 = shl nsw i64 %20, 3
  %22 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef %21, ptr noundef nonnull @.str, i32 noundef 1054, ptr noundef nonnull @.str.2) #11
  %23 = getelementptr inbounds %"struct.pov::PrecompParValues_Struct", ptr %10, i64 0, i32 3
  store ptr %22, ptr %23, align 8, !tbaa !57
  %24 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef %21, ptr noundef nonnull @.str, i32 noundef 1055, ptr noundef nonnull @.str.2) #11
  %25 = getelementptr inbounds %"struct.pov::PrecompParValues_Struct", ptr %10, i64 0, i32 4
  store ptr %24, ptr %25, align 8, !tbaa !57
  br label %26

26:                                               ; preds = %19, %13
  %27 = phi ptr [ %24, %19 ], [ undef, %13 ]
  %28 = and i32 %16, 2
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %26
  %31 = sext i32 %9 to i64
  %32 = shl nsw i64 %31, 3
  %33 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef %32, ptr noundef nonnull @.str, i32 noundef 1059, ptr noundef nonnull @.str.2) #11
  %34 = getelementptr inbounds %"struct.pov::PrecompParValues_Struct", ptr %10, i64 0, i32 3, i64 1
  store ptr %33, ptr %34, align 8, !tbaa !57
  %35 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef %32, ptr noundef nonnull @.str, i32 noundef 1060, ptr noundef nonnull @.str.2) #11
  %36 = getelementptr inbounds %"struct.pov::PrecompParValues_Struct", ptr %10, i64 0, i32 4, i64 1
  store ptr %35, ptr %36, align 8, !tbaa !57
  br label %37

37:                                               ; preds = %30, %26
  %38 = phi ptr [ %35, %30 ], [ %27, %26 ]
  %39 = and i32 %16, 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %37
  %42 = sext i32 %9 to i64
  %43 = shl nsw i64 %42, 3
  %44 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef %43, ptr noundef nonnull @.str, i32 noundef 1064, ptr noundef nonnull @.str.2) #11
  %45 = getelementptr inbounds %"struct.pov::PrecompParValues_Struct", ptr %10, i64 0, i32 3, i64 2
  store ptr %44, ptr %45, align 8, !tbaa !57
  %46 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef %43, ptr noundef nonnull @.str, i32 noundef 1065, ptr noundef nonnull @.str.2) #11
  %47 = getelementptr inbounds %"struct.pov::PrecompParValues_Struct", ptr %10, i64 0, i32 4, i64 2
  store ptr %46, ptr %47, align 8, !tbaa !57
  br label %48

48:                                               ; preds = %41, %37
  %49 = phi ptr [ %46, %41 ], [ %38, %37 ]
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = sext i32 %9 to i64
  %53 = shl nsw i64 %52, 3
  tail call void @_ZN3pov7MAErrorEPKcl(ptr noundef nonnull @.str.2, i64 noundef %53) #11
  br label %54

54:                                               ; preds = %51, %48
  %55 = add nsw i32 %2, -1
  %56 = shl nuw i32 1, %55
  store i32 %56, ptr @_ZN3povL16PrecompLastDepthE, align 4, !tbaa !53
  store ptr %10, ptr @_ZN3povL11PrecParDataE, align 8, !tbaa !57
  store ptr %0, ptr @_ZN3povL14PrecompParFuncE, align 8, !tbaa !57
  %57 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %0, i64 0, i32 15
  %58 = load double, ptr %57, align 8, !tbaa !49
  %59 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %0, i64 0, i32 17
  %60 = load double, ptr %59, align 8, !tbaa !51
  %61 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %0, i64 0, i32 16
  %62 = load double, ptr %61, align 8, !tbaa !50
  %63 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %0, i64 0, i32 18
  %64 = load double, ptr %63, align 8, !tbaa !52
  tail call fastcc void @_ZN3povL15Precomp_Par_IntEidddd(i32 noundef 1, double noundef %58, double noundef %60, double noundef %62, double noundef %64) #11
  ret ptr %10
}

; Function Attrs: optsize
declare noundef i32 @_ZN3pov5ErrorEPKcz(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN3pov7MAErrorEPKcl(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define internal fastcc void @_ZN3povL15Precomp_Par_IntEidddd(i32 noundef %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4) unnamed_addr #0 !PGOFuncName !78 {
  %6 = alloca [2 x double], align 16
  %7 = alloca [2 x double], align 16
  %8 = load i32, ptr @_ZN3povL16PrecompLastDepthE, align 4, !tbaa !53
  %9 = sdiv i32 %8, 2
  %10 = icmp eq i32 %9, %0
  br i1 %10, label %11, label %13

11:                                               ; preds = %5
  tail call void @_ZN3pov12Do_CooperateEi(i32 noundef 1) #11
  %12 = load i32, ptr @_ZN3povL16PrecompLastDepthE, align 4, !tbaa !53
  br label %13

13:                                               ; preds = %11, %5
  %14 = phi i32 [ %12, %11 ], [ %8, %5 ]
  %15 = icmp sgt i32 %14, %0
  br i1 %15, label %51, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds [2 x double], ptr %6, i64 0, i64 1
  %18 = getelementptr inbounds [2 x double], ptr %7, i64 0, i64 1
  %19 = sext i32 %0 to i64
  %20 = load ptr, ptr @_ZN3povL11PrecParDataE, align 8, !tbaa !57
  br label %21

21:                                               ; preds = %16, %47
  %22 = phi ptr [ %20, %16 ], [ %48, %47 ]
  %23 = phi i64 [ 0, %16 ], [ %49, %47 ]
  %24 = getelementptr inbounds %"struct.pov::PrecompParValues_Struct", ptr %22, i64 0, i32 2
  %25 = load i8, ptr %24, align 8, !tbaa !54
  %26 = sext i8 %25 to i32
  %27 = trunc i64 %23 to i32
  %28 = shl nuw nsw i32 1, %27
  %29 = and i32 %28, %26
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %47, label %31

31:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #10
  store double %1, ptr %6, align 16, !tbaa !46
  store double %3, ptr %7, align 16, !tbaa !46
  store double %2, ptr %17, align 8, !tbaa !46
  store double %4, ptr %18, align 8, !tbaa !46
  %32 = load ptr, ptr @_ZN3povL14PrecompParFuncE, align 8, !tbaa !57
  %33 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %32, i64 0, i32 14, i64 %23
  %34 = load ptr, ptr %33, align 8, !tbaa !57
  %35 = load i32, ptr %34, align 4, !tbaa !53
  %36 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %32, i64 0, i32 19
  %37 = load double, ptr %36, align 8, !tbaa !48
  %38 = getelementptr inbounds %"struct.pov::Parametric_Struct", ptr %32, i64 0, i32 20
  %39 = load double, ptr %38, align 8, !tbaa !58
  %40 = getelementptr inbounds %"struct.pov::PrecompParValues_Struct", ptr %22, i64 0, i32 3, i64 %23
  %41 = load ptr, ptr %40, align 8, !tbaa !57
  %42 = getelementptr inbounds double, ptr %41, i64 %19
  %43 = getelementptr inbounds %"struct.pov::PrecompParValues_Struct", ptr %22, i64 0, i32 4, i64 %23
  %44 = load ptr, ptr %43, align 8, !tbaa !57
  %45 = getelementptr inbounds double, ptr %44, i64 %19
  call void @_ZN3pov29Evaluate_Function_Interval_UVEjdPdS0_dRdS1_(i32 noundef %35, double noundef %37, ptr noundef nonnull %6, ptr noundef nonnull %7, double noundef %39, ptr noundef nonnull align 8 dereferenceable(8) %42, ptr noundef nonnull align 8 dereferenceable(8) %45) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #10
  %46 = load ptr, ptr @_ZN3povL11PrecParDataE, align 8, !tbaa !57
  br label %47

47:                                               ; preds = %21, %31
  %48 = phi ptr [ %22, %21 ], [ %46, %31 ]
  %49 = add nuw nsw i64 %23, 1
  %50 = icmp eq i64 %49, 3
  br i1 %50, label %99, label %21, !llvm.loop !79

51:                                               ; preds = %13
  %52 = fsub double %3, %1
  %53 = fsub double %4, %2
  %54 = fcmp olt double %52, %53
  %55 = shl nsw i32 %0, 1
  %56 = or disjoint i32 %55, 1
  br i1 %54, label %57, label %60

57:                                               ; preds = %51
  %58 = fadd double %2, %4
  %59 = fmul double %58, 5.000000e-01
  tail call fastcc void @_ZN3povL15Precomp_Par_IntEidddd(i32 noundef %55, double noundef %1, double noundef %2, double noundef %3, double noundef %59) #11
  tail call fastcc void @_ZN3povL15Precomp_Par_IntEidddd(i32 noundef %56, double noundef %1, double noundef %59, double noundef %3, double noundef %4) #11
  br label %63

60:                                               ; preds = %51
  %61 = fadd double %1, %3
  %62 = fmul double %61, 5.000000e-01
  tail call fastcc void @_ZN3povL15Precomp_Par_IntEidddd(i32 noundef %55, double noundef %1, double noundef %2, double noundef %62, double noundef %4) #11
  tail call fastcc void @_ZN3povL15Precomp_Par_IntEidddd(i32 noundef %56, double noundef %62, double noundef %2, double noundef %3, double noundef %4) #11
  br label %63

63:                                               ; preds = %60, %57
  %64 = load ptr, ptr @_ZN3povL11PrecParDataE, align 8, !tbaa !57
  %65 = getelementptr inbounds %"struct.pov::PrecompParValues_Struct", ptr %64, i64 0, i32 2
  %66 = load i8, ptr %65, align 8, !tbaa !54
  %67 = sext i8 %66 to i32
  %68 = sext i32 %55 to i64
  %69 = sext i32 %56 to i64
  %70 = sext i32 %0 to i64
  br label %71

71:                                               ; preds = %63, %96
  %72 = phi i64 [ 0, %63 ], [ %97, %96 ]
  %73 = trunc i64 %72 to i32
  %74 = shl nuw nsw i32 1, %73
  %75 = and i32 %74, %67
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %96, label %77

77:                                               ; preds = %71
  %78 = getelementptr inbounds %"struct.pov::PrecompParValues_Struct", ptr %64, i64 0, i32 4, i64 %72
  %79 = load ptr, ptr %78, align 8, !tbaa !57
  %80 = getelementptr inbounds double, ptr %79, i64 %68
  %81 = load double, ptr %80, align 8, !tbaa !46
  %82 = getelementptr inbounds double, ptr %79, i64 %69
  %83 = load double, ptr %82, align 8, !tbaa !46
  %84 = fcmp ogt double %81, %83
  %85 = getelementptr inbounds double, ptr %79, i64 %70
  %86 = select i1 %84, double %81, double %83
  store double %86, ptr %85, align 8, !tbaa !46
  %87 = getelementptr inbounds %"struct.pov::PrecompParValues_Struct", ptr %64, i64 0, i32 3, i64 %72
  %88 = load ptr, ptr %87, align 8, !tbaa !57
  %89 = getelementptr inbounds double, ptr %88, i64 %68
  %90 = load double, ptr %89, align 8, !tbaa !46
  %91 = getelementptr inbounds double, ptr %88, i64 %69
  %92 = load double, ptr %91, align 8, !tbaa !46
  %93 = fcmp olt double %90, %92
  %94 = select i1 %93, double %90, double %92
  %95 = getelementptr inbounds double, ptr %88, i64 %70
  store double %94, ptr %95, align 8, !tbaa !46
  br label %96

96:                                               ; preds = %77, %71
  %97 = add nuw nsw i64 %72, 1
  %98 = icmp eq i64 %97, 3
  br i1 %98, label %99, label %71, !llvm.loop !80

99:                                               ; preds = %47, %96
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN3pov8IntervalEddddPdS0_(double noundef %0, double noundef %1, double noundef %2, double noundef %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) local_unnamed_addr #3 {
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  store double %1, ptr %7, align 8, !tbaa !46
  store double %2, ptr %8, align 8, !tbaa !46
  %9 = fsub double %1, %2
  %10 = tail call double @llvm.fabs.f64(double %9)
  %11 = fdiv double %10, %3
  %12 = fsub double %0, %11
  %13 = fmul double %12, %3
  %14 = fmul double %13, 5.000000e-01
  %15 = fcmp olt double %14, 0.000000e+00
  %16 = select i1 %15, double 0.000000e+00, double %14
  %17 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %8) #11
  %18 = load double, ptr %17, align 8, !tbaa !46
  %19 = fadd double %16, %18
  store double %19, ptr %5, align 8, !tbaa !46
  %20 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %8) #11
  %21 = load double, ptr %20, align 8, !tbaa !46
  %22 = fsub double %21, %16
  store double %22, ptr %4, align 8, !tbaa !46
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #7

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat {
  %3 = load double, ptr %0, align 8, !tbaa !46
  %4 = load double, ptr %1, align 8, !tbaa !46
  %5 = fcmp olt double %3, %4
  %6 = select i1 %5, ptr %1, ptr %0
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat {
  %3 = load double, ptr %1, align 8, !tbaa !46
  %4 = load double, ptr %0, align 8, !tbaa !46
  %5 = fcmp olt double %3, %4
  %6 = select i1 %5, ptr %1, ptr %0
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov16Increase_CounterERx(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #3 comdat {
  %2 = load i64, ptr %0, align 8, !tbaa !81
  %3 = add nsw i64 %2, 1
  store i64 %3, ptr %0, align 8, !tbaa !81
  ret void
}

; Function Attrs: optsize
declare void @_ZN3pov14MInvTransPointEPdS0_PNS_16Transform_StructE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN3pov18MInvTransDirectionEPdS0_PNS_16Transform_StructE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov7VLengthERdPKd(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #3 comdat {
  %3 = load double, ptr %1, align 8, !tbaa !46
  %4 = getelementptr inbounds double, ptr %1, i64 1
  %5 = load double, ptr %4, align 8, !tbaa !46
  %6 = fmul double %5, %5
  %7 = tail call double @llvm.fmuladd.f64(double %3, double %3, double %6)
  %8 = getelementptr inbounds double, ptr %1, i64 2
  %9 = load double, ptr %8, align 8, !tbaa !46
  %10 = tail call double @llvm.fmuladd.f64(double %9, double %9, double %7)
  %11 = tail call double @llvm.sqrt.f64(double %10)
  store double %11, ptr %0, align 8, !tbaa !46
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov15VInverseScaleEqEPdd(ptr noundef %0, double noundef %1) local_unnamed_addr #3 comdat {
  %3 = fdiv double 1.000000e+00, %1
  %4 = load <2 x double>, ptr %0, align 8, !tbaa !46
  %5 = insertelement <2 x double> poison, double %3, i64 0
  %6 = shufflevector <2 x double> %5, <2 x double> poison, <2 x i32> zeroinitializer
  %7 = fmul <2 x double> %6, %4
  store <2 x double> %7, ptr %0, align 8, !tbaa !46
  %8 = getelementptr inbounds double, ptr %0, i64 2
  %9 = load double, ptr %8, align 8, !tbaa !46
  %10 = fmul double %3, %9
  store double %10, ptr %8, align 8, !tbaa !46
  ret void
}

; Function Attrs: optsize
declare noundef i32 @_ZN3pov16Intersect_SphereEPNS_10Ray_StructEPddS2_S2_(ptr noundef, ptr noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov16Decrease_CounterERx(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #3 comdat {
  %2 = load i64, ptr %0, align 8, !tbaa !81
  %3 = add nsw i64 %2, -1
  store i64 %3, ptr %0, align 8, !tbaa !81
  ret void
}

; Function Attrs: optsize
declare noundef i32 @_ZN3pov13Intersect_BoxEPNS_10Ray_StructEPNS_16Transform_StructEPdS4_S4_S4_PiS5_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #7

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN3pov29Evaluate_Function_Interval_UVEjdPdS0_dRdS1_(i32 noundef %0, double noundef %1, ptr noundef %2, ptr noundef %3, double noundef %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) local_unnamed_addr #0 comdat {
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #10
  %13 = load double, ptr %2, align 8, !tbaa !46
  tail call void @_ZN3pov15POVFPU_SetLocalEjd(i32 noundef 0, double noundef %13) #11
  %14 = getelementptr inbounds double, ptr %2, i64 1
  %15 = load double, ptr %14, align 8, !tbaa !46
  tail call void @_ZN3pov15POVFPU_SetLocalEjd(i32 noundef 1, double noundef %15) #11
  %16 = tail call noundef double @_ZN3pov17POVFPU_RunDefaultEj(i32 noundef %0) #11
  %17 = fsub double %16, %1
  %18 = load double, ptr %2, align 8, !tbaa !46
  tail call void @_ZN3pov15POVFPU_SetLocalEjd(i32 noundef 0, double noundef %18) #11
  %19 = getelementptr inbounds double, ptr %3, i64 1
  %20 = load double, ptr %19, align 8, !tbaa !46
  tail call void @_ZN3pov15POVFPU_SetLocalEjd(i32 noundef 1, double noundef %20) #11
  %21 = tail call noundef double @_ZN3pov17POVFPU_RunDefaultEj(i32 noundef %0) #11
  %22 = fsub double %21, %1
  %23 = load double, ptr %3, align 8, !tbaa !46
  tail call void @_ZN3pov15POVFPU_SetLocalEjd(i32 noundef 0, double noundef %23) #11
  %24 = load double, ptr %14, align 8, !tbaa !46
  tail call void @_ZN3pov15POVFPU_SetLocalEjd(i32 noundef 1, double noundef %24) #11
  %25 = tail call noundef double @_ZN3pov17POVFPU_RunDefaultEj(i32 noundef %0) #11
  %26 = fsub double %25, %1
  %27 = load double, ptr %3, align 8, !tbaa !46
  tail call void @_ZN3pov15POVFPU_SetLocalEjd(i32 noundef 0, double noundef %27) #11
  %28 = load double, ptr %19, align 8, !tbaa !46
  tail call void @_ZN3pov15POVFPU_SetLocalEjd(i32 noundef 1, double noundef %28) #11
  %29 = tail call noundef double @_ZN3pov17POVFPU_RunDefaultEj(i32 noundef %0) #11
  %30 = fsub double %29, %1
  %31 = load double, ptr %19, align 8, !tbaa !46
  %32 = load double, ptr %14, align 8, !tbaa !46
  %33 = fsub double %31, %32
  call void @_ZN3pov8IntervalEddddPdS0_(double noundef %33, double noundef %17, double noundef %22, double noundef %4, ptr noundef nonnull %8, ptr noundef nonnull %9) #11
  %34 = load double, ptr %19, align 8, !tbaa !46
  %35 = load double, ptr %14, align 8, !tbaa !46
  %36 = fsub double %34, %35
  call void @_ZN3pov8IntervalEddddPdS0_(double noundef %36, double noundef %26, double noundef %30, double noundef %4, ptr noundef nonnull %10, ptr noundef nonnull %11) #11
  %37 = load double, ptr %3, align 8, !tbaa !46
  %38 = load double, ptr %2, align 8, !tbaa !46
  %39 = fsub double %37, %38
  %40 = load double, ptr %9, align 8, !tbaa !46
  %41 = load double, ptr %11, align 8, !tbaa !46
  call void @_ZN3pov8IntervalEddddPdS0_(double noundef %39, double noundef %40, double noundef %41, double noundef %4, ptr noundef nonnull %12, ptr noundef nonnull %6) #11
  %42 = load double, ptr %3, align 8, !tbaa !46
  %43 = load double, ptr %2, align 8, !tbaa !46
  %44 = fsub double %42, %43
  %45 = load double, ptr %8, align 8, !tbaa !46
  %46 = load double, ptr %10, align 8, !tbaa !46
  call void @_ZN3pov8IntervalEddddPdS0_(double noundef %44, double noundef %45, double noundef %46, double noundef %4, ptr noundef nonnull %5, ptr noundef nonnull %12) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov6VScaleEPdPKdd(ptr noundef %0, ptr noundef %1, double noundef %2) local_unnamed_addr #3 comdat {
  %4 = load double, ptr %1, align 8, !tbaa !46
  %5 = fmul double %4, %2
  store double %5, ptr %0, align 8, !tbaa !46
  %6 = getelementptr inbounds double, ptr %1, i64 1
  %7 = load double, ptr %6, align 8, !tbaa !46
  %8 = fmul double %7, %2
  %9 = getelementptr inbounds double, ptr %0, i64 1
  store double %8, ptr %9, align 8, !tbaa !46
  %10 = getelementptr inbounds double, ptr %1, i64 2
  %11 = load double, ptr %10, align 8, !tbaa !46
  %12 = fmul double %11, %2
  %13 = getelementptr inbounds double, ptr %0, i64 2
  store double %12, ptr %13, align 8, !tbaa !46
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov6VAddEqEPdPKd(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 comdat {
  %3 = load double, ptr %1, align 8, !tbaa !46
  %4 = load double, ptr %0, align 8, !tbaa !46
  %5 = fadd double %3, %4
  store double %5, ptr %0, align 8, !tbaa !46
  %6 = getelementptr inbounds double, ptr %1, i64 1
  %7 = load double, ptr %6, align 8, !tbaa !46
  %8 = getelementptr inbounds double, ptr %0, i64 1
  %9 = load double, ptr %8, align 8, !tbaa !46
  %10 = fadd double %7, %9
  store double %10, ptr %8, align 8, !tbaa !46
  %11 = getelementptr inbounds double, ptr %1, i64 2
  %12 = load double, ptr %11, align 8, !tbaa !46
  %13 = getelementptr inbounds double, ptr %0, i64 2
  %14 = load double, ptr %13, align 8, !tbaa !46
  %15 = fadd double %12, %14
  store double %15, ptr %13, align 8, !tbaa !46
  ret void
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN3pov13Point_In_ClipEPdPNS_13Object_StructE(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN3pov10push_entryEdPdPNS_13Object_StructEPNS_13istack_structE(double noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat {
  %5 = tail call noundef nonnull align 8 dereferenceable(200) ptr @_ZN3pov4itopEPNS_13istack_structE(ptr noundef %3) #11
  store double %0, ptr %5, align 8, !tbaa !83
  %6 = tail call noundef nonnull align 8 dereferenceable(200) ptr @_ZN3pov4itopEPNS_13istack_structE(ptr noundef %3) #11
  %7 = getelementptr inbounds %"struct.pov::istk_entry", ptr %6, i64 0, i32 5
  store ptr %2, ptr %7, align 8, !tbaa !85
  %8 = tail call noundef nonnull align 8 dereferenceable(200) ptr @_ZN3pov4itopEPNS_13istack_structE(ptr noundef %3) #11
  %9 = getelementptr inbounds %"struct.pov::istk_entry", ptr %8, i64 0, i32 1
  tail call void @_ZN3pov13Assign_VectorEPdS0_(ptr noundef nonnull %9, ptr noundef %1) #11
  %10 = tail call noundef nonnull align 8 dereferenceable(200) ptr @_ZN3pov4itopEPNS_13istack_structE(ptr noundef %3) #11
  %11 = getelementptr inbounds %"struct.pov::istk_entry", ptr %10, i64 0, i32 4
  tail call void @_ZN3pov14Assign_UV_VectEPdS0_(ptr noundef nonnull %11, ptr noundef %1) #11
  %12 = tail call noundef nonnull align 8 dereferenceable(200) ptr @_ZN3pov4itopEPNS_13istack_structE(ptr noundef %3) #11
  %13 = getelementptr inbounds %"struct.pov::istk_entry", ptr %12, i64 0, i32 18
  store ptr null, ptr %13, align 8, !tbaa !86
  tail call void @_ZN3pov8incstackEPNS_13istack_structE(ptr noundef %3) #11
  ret void
}

; Function Attrs: optsize
declare void @_ZN3pov15POVFPU_SetLocalEjd(i32 noundef, double noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef double @_ZN3pov17POVFPU_RunDefaultEj(i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(200) ptr @_ZN3pov4itopEPNS_13istack_structE(ptr noundef %0) local_unnamed_addr #3 comdat {
  %2 = getelementptr inbounds %"struct.pov::istack_struct", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !87
  %4 = getelementptr inbounds %"struct.pov::istack_struct", ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 4, !tbaa !89
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds %"struct.pov::istk_entry", ptr %3, i64 %6
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov13Assign_VectorEPdS0_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 comdat {
  %3 = load double, ptr %1, align 8, !tbaa !46
  store double %3, ptr %0, align 8, !tbaa !46
  %4 = getelementptr inbounds double, ptr %1, i64 1
  %5 = load double, ptr %4, align 8, !tbaa !46
  %6 = getelementptr inbounds double, ptr %0, i64 1
  store double %5, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds double, ptr %1, i64 2
  %8 = load double, ptr %7, align 8, !tbaa !46
  %9 = getelementptr inbounds double, ptr %0, i64 2
  store double %8, ptr %9, align 8, !tbaa !46
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov14Assign_UV_VectEPdS0_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 comdat {
  %3 = load double, ptr %1, align 8, !tbaa !46
  store double %3, ptr %0, align 8, !tbaa !46
  %4 = getelementptr inbounds double, ptr %1, i64 1
  %5 = load double, ptr %4, align 8, !tbaa !46
  %6 = getelementptr inbounds double, ptr %0, i64 1
  store double %5, ptr %6, align 8, !tbaa !46
  ret void
}

; Function Attrs: optsize
declare void @_ZN3pov8incstackEPNS_13istack_structE(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef double @_ZN3pov20Evaluate_Function_UVEjPd(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat {
  %3 = load double, ptr %1, align 8, !tbaa !46
  tail call void @_ZN3pov15POVFPU_SetLocalEjd(i32 noundef 0, double noundef %3) #11
  %4 = getelementptr inbounds double, ptr %1, i64 1
  %5 = load double, ptr %4, align 8, !tbaa !46
  tail call void @_ZN3pov15POVFPU_SetLocalEjd(i32 noundef 1, double noundef %5) #11
  %6 = tail call noundef double @_ZN3pov17POVFPU_RunDefaultEj(i32 noundef %0) #11
  ret double %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov6VCrossEPdPKdS2_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 comdat {
  %4 = alloca [3 x double], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #10
  %5 = getelementptr inbounds double, ptr %1, i64 1
  %6 = getelementptr inbounds double, ptr %2, i64 1
  %7 = load double, ptr %2, align 8, !tbaa !46
  %8 = load double, ptr %1, align 8, !tbaa !46
  %9 = load <2 x double>, ptr %5, align 8, !tbaa !46
  %10 = load <2 x double>, ptr %6, align 8, !tbaa !46
  %11 = insertelement <2 x double> %9, double %8, i64 0
  %12 = shufflevector <2 x double> %11, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %13 = fneg <2 x double> %12
  %14 = fmul <2 x double> %10, %13
  %15 = shufflevector <2 x double> %10, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %16 = insertelement <2 x double> %15, double %7, i64 1
  %17 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %9, <2 x double> %16, <2 x double> %14)
  store <2 x double> %17, ptr %4, align 16, !tbaa !46
  %18 = extractelement <2 x double> %9, i64 0
  %19 = fneg double %18
  %20 = fmul double %7, %19
  %21 = extractelement <2 x double> %10, i64 0
  %22 = tail call double @llvm.fmuladd.f64(double %8, double %21, double %20)
  %23 = getelementptr inbounds [3 x double], ptr %4, i64 0, i64 2
  store double %22, ptr %23, align 16, !tbaa !46
  call void @_ZN3pov13Assign_VectorEPdS0_(ptr noundef %0, ptr noundef nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #10
  ret void
}

; Function Attrs: optsize
declare void @_ZN3pov12MTransNormalEPdS0_PNS_16Transform_StructE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN3pov10VNormalizeEPdPKd(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat {
  %3 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #10
  call void @_ZN3pov7VLengthERdPKd(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #11
  %4 = load double, ptr %3, align 8, !tbaa !46
  call void @_ZN3pov13VInverseScaleEPdPKdd(ptr noundef %0, ptr noundef %1, double noundef %4) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov13VInverseScaleEPdPKdd(ptr noundef %0, ptr noundef %1, double noundef %2) local_unnamed_addr #3 comdat {
  %4 = fdiv double 1.000000e+00, %2
  %5 = load double, ptr %1, align 8, !tbaa !46
  %6 = fmul double %4, %5
  store double %6, ptr %0, align 8, !tbaa !46
  %7 = getelementptr inbounds double, ptr %1, i64 1
  %8 = load double, ptr %7, align 8, !tbaa !46
  %9 = fmul double %4, %8
  %10 = getelementptr inbounds double, ptr %0, i64 1
  store double %9, ptr %10, align 8, !tbaa !46
  %11 = getelementptr inbounds double, ptr %1, i64 2
  %12 = load double, ptr %11, align 8, !tbaa !46
  %13 = fmul double %4, %12
  %14 = getelementptr inbounds double, ptr %0, i64 2
  store double %13, ptr %14, align 8, !tbaa !46
  ret void
}

; Function Attrs: optsize
declare void @_ZN3pov18Compose_TransformsEPNS_16Transform_StructES1_(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare void @_ZN3pov12Do_CooperateEi(i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #8

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #8

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { nounwind }
attributes #11 = { optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 37113910}
!4 = !{!"MaxCount", i64 10485760}
!5 = !{!"MaxInternalCount", i64 10485760}
!6 = !{!"MaxFunctionCount", i64 163840}
!7 = !{!"NumCounts", i64 117}
!8 = !{!"NumFunctions", i64 8}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 10485760, i32 3}
!14 = !{i32 100000, i64 10485760, i32 3}
!15 = !{i32 200000, i64 10485760, i32 3}
!16 = !{i32 300000, i64 10485760, i32 3}
!17 = !{i32 400000, i64 10485760, i32 3}
!18 = !{i32 500000, i64 10485760, i32 3}
!19 = !{i32 600000, i64 10485760, i32 3}
!20 = !{i32 700000, i64 10485760, i32 3}
!21 = !{i32 800000, i64 10485760, i32 3}
!22 = !{i32 900000, i64 5242880, i32 4}
!23 = !{i32 950000, i64 5242880, i32 4}
!24 = !{i32 990000, i64 163840, i32 6}
!25 = !{i32 999000, i64 81920, i32 7}
!26 = !{i32 999900, i64 4096, i32 8}
!27 = !{i32 999990, i64 4096, i32 8}
!28 = !{i32 999999, i64 21, i32 9}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"fpmetric.cpp:_ZN3povL28All_Parametric_IntersectionsEPNS_13Object_StructEPNS_10Ray_StructEPNS_13istack_structE"}
!35 = !{!36, !37, i64 248}
!36 = !{!"_ZTSN3pov17Parametric_StructE", !37, i64 0, !40, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !41, i64 72, !37, i64 96, !37, i64 104, !42, i64 112, !40, i64 116, !38, i64 120, !43, i64 144, !43, i64 152, !43, i64 160, !43, i64 168, !43, i64 176, !43, i64 184, !40, i64 192, !40, i64 196, !38, i64 200, !37, i64 248, !43, i64 256, !43, i64 264}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C++ TBAA"}
!40 = !{!"int", !38, i64 0}
!41 = !{!"_ZTSN3pov19Bounding_Box_StructE", !38, i64 0, !38, i64 12}
!42 = !{!"float", !38, i64 0}
!43 = !{!"double", !38, i64 0}
!44 = !{!36, !40, i64 196}
!45 = !{!36, !37, i64 96}
!46 = !{!43, !43, i64 0}
!47 = !{!38, !38, i64 0}
!48 = !{!36, !43, i64 176}
!49 = !{!36, !43, i64 144}
!50 = !{!36, !43, i64 152}
!51 = !{!36, !43, i64 160}
!52 = !{!36, !43, i64 168}
!53 = !{!40, !40, i64 0}
!54 = !{!55, !38, i64 8}
!55 = !{!"_ZTSN3pov23PrecompParValues_StructE", !40, i64 0, !40, i64 4, !38, i64 8, !38, i64 16, !38, i64 40}
!56 = !{!55, !40, i64 4}
!57 = !{!37, !37, i64 0}
!58 = !{!36, !43, i64 184}
!59 = distinct !{!59, !60}
!60 = !{!"llvm.loop.mustprogress"}
!61 = !{!36, !37, i64 56}
!62 = !{!"fpmetric.cpp:_ZN3povL17Inside_ParametricEPdPNS_13Object_StructE"}
!63 = !{!"fpmetric.cpp:_ZN3povL17Parametric_NormalEPdPNS_13Object_StructEPNS_10istk_entryE"}
!64 = !{!36, !43, i64 256}
!65 = !{!"fpmetric.cpp:_ZN3povL18Parametric_UVCoordEPdPNS_13Object_StructEPNS_10istk_entryE"}
!66 = !{!36, !43, i64 264}
!67 = !{i64 0, i64 8, !57, i64 8, i64 4, !53, i64 16, i64 8, !57, i64 24, i64 8, !57, i64 32, i64 8, !57, i64 40, i64 8, !57, i64 48, i64 8, !57, i64 56, i64 8, !57, i64 64, i64 8, !57, i64 72, i64 12, !47, i64 84, i64 12, !47, i64 96, i64 8, !57, i64 104, i64 8, !57, i64 112, i64 4, !68, i64 116, i64 4, !53, i64 120, i64 24, !47, i64 144, i64 8, !46, i64 152, i64 8, !46, i64 160, i64 8, !46, i64 168, i64 8, !46, i64 176, i64 8, !46, i64 184, i64 8, !46, i64 192, i64 4, !53, i64 196, i64 4, !53, i64 200, i64 24, !47, i64 224, i64 8, !46, i64 200, i64 24, !47, i64 224, i64 24, !47, i64 248, i64 8, !57, i64 256, i64 8, !46, i64 264, i64 8, !46}
!68 = !{!42, !42, i64 0}
!69 = !{!"fpmetric.cpp:_ZN3povL20Translate_ParametricEPNS_13Object_StructEPdPNS_16Transform_StructE"}
!70 = !{!"fpmetric.cpp:_ZN3povL17Rotate_ParametricEPNS_13Object_StructEPdPNS_16Transform_StructE"}
!71 = !{!"fpmetric.cpp:_ZN3povL16Scale_ParametricEPNS_13Object_StructEPdPNS_16Transform_StructE"}
!72 = !{!"fpmetric.cpp:_ZN3povL20Transform_ParametricEPNS_13Object_StructEPNS_16Transform_StructE"}
!73 = !{!"fpmetric.cpp:_ZN3povL17Invert_ParametricEPNS_13Object_StructE"}
!74 = !{!36, !40, i64 8}
!75 = !{!36, !37, i64 0}
!76 = !{!36, !40, i64 192}
!77 = !{!55, !40, i64 0}
!78 = !{!"fpmetric.cpp:_ZN3povL15Precomp_Par_IntEidddd"}
!79 = distinct !{!79, !60}
!80 = distinct !{!80, !60}
!81 = !{!82, !82, i64 0}
!82 = !{!"long long", !38, i64 0}
!83 = !{!84, !43, i64 0}
!84 = !{!"_ZTSN3pov10istk_entryE", !43, i64 0, !38, i64 8, !38, i64 32, !38, i64 56, !38, i64 80, !37, i64 96, !40, i64 104, !40, i64 108, !43, i64 112, !43, i64 120, !43, i64 128, !43, i64 136, !43, i64 144, !43, i64 152, !43, i64 160, !43, i64 168, !43, i64 176, !37, i64 184, !37, i64 192}
!85 = !{!84, !37, i64 96}
!86 = !{!84, !37, i64 192}
!87 = !{!88, !37, i64 8}
!88 = !{!"_ZTSN3pov13istack_structE", !37, i64 0, !37, i64 8, !40, i64 16, !40, i64 20}
!89 = !{!88, !40, i64 20}

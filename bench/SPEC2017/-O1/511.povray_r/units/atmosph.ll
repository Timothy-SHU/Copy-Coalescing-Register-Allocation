; ModuleID = 'atmosph.cpp'
source_filename = "atmosph.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.pov::OPTIONS_STRUCT" = type { i32, i8, i8, i8, i32, i32, [4096 x i8], [4096 x i8], [4096 x i8], [4096 x i8], [4096 x i8], float, float, i32, i32, double, i8, double, i32, [25 x ptr], i32, i32, i32, double, double, i32, i32, double, double, i32, i8, i64, i32, i32, i32, %"struct.pov::FRAMESEQ", double, i64, double, double, double, double, double, i64, i32, i64, i32, i32, i32, i32, i32, i32, double, double, double, i32, i32, ptr, ptr, i32, i8, double, double, i32, i32, i8, i32, i32, [4096 x i8], [6 x %"struct.pov::shelldata"], [4096 x i8], [4096 x i8], i32, i32, i64, i32, i32, i32, %struct.POVMSData }
%"struct.pov::FRAMESEQ" = type { i32, double, i32, i32, double, i32, i32, double, i32, double, i32, double, i8, i8 }
%"struct.pov::shelldata" = type { i32, i32, [250 x i8] }
%struct.POVMSData = type { i32, i32, %union.anon }
%union.anon = type { ptr }
%"struct.pov::Frame_Struct" = type { ptr, i32, i32, i32, ptr, ptr, double, double, double, [5 x float], [5 x float], [5 x float], ptr, ptr, ptr, ptr, ptr }
%"struct.pov::Skysphere_Struct" = type { i32, ptr, ptr }
%"struct.pov::Ray_Struct" = type { [3 x double], [3 x double], i32, i32, [100 x ptr] }
%"struct.pov::Rainbow_Struct" = type { double, double, double, double, double, double, double, [3 x double], [3 x double], [3 x double], ptr, ptr }
%"struct.pov::Fog_Struct" = type { i32, double, double, double, [5 x float], [3 x double], ptr, float, ptr }
%"struct.pov::Turb_Struct" = type { i16, ptr, ptr, [3 x double], i32, float, float }
%"struct.pov::Transform_Struct" = type { [4 x [4 x double]], [4 x [4 x double]] }

@_ZN3pov4optsE = external local_unnamed_addr global %"struct.pov::OPTIONS_STRUCT", align 8
@_ZN3pov17In_Reflection_RayE = external local_unnamed_addr global i8, align 1
@_ZN3pov21Radiosity_Trace_LevelE = external local_unnamed_addr global i32, align 4
@_ZN3pov5FrameE = external local_unnamed_addr global %"struct.pov::Frame_Struct", align 8
@.str = private unnamed_addr constant [12 x i8] c"atmosph.cpp\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"fog\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"skysphere pigment\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN3pov26Initialize_Atmosphere_CodeEv() local_unnamed_addr #0 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN3pov28Deinitialize_Atmosphere_CodeEv() local_unnamed_addr #0 {
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3pov22Do_Infinite_AtmosphereEPNS_10Ray_StructEPf(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #1 {
  %3 = alloca [5 x float], align 16
  %4 = alloca [3 x double], align 16
  %5 = load i32, ptr @_ZN3pov4optsE, align 8, !tbaa !34
  %6 = and i32 %5, 65536
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %16, label %8

8:                                                ; preds = %2
  %9 = load i8, ptr @_ZN3pov17In_Reflection_RayE, align 1, !tbaa !48, !range !49, !noundef !50
  %10 = icmp ne i8 %9, 0
  %11 = load i32, ptr @_ZN3pov21Radiosity_Trace_LevelE, align 4
  %12 = icmp sgt i32 %11, 1
  %13 = select i1 %10, i1 true, i1 %12
  br i1 %13, label %16, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds float, ptr %1, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %15, align 4, !tbaa !51
  br label %118

16:                                               ; preds = %8, %2
  %17 = load float, ptr getelementptr inbounds (%"struct.pov::Frame_Struct", ptr @_ZN3pov5FrameE, i64 0, i32 9), align 8, !tbaa !51
  store float %17, ptr %1, align 4, !tbaa !51
  %18 = load float, ptr getelementptr inbounds (%"struct.pov::Frame_Struct", ptr @_ZN3pov5FrameE, i64 0, i32 9, i64 1), align 4, !tbaa !51
  %19 = getelementptr inbounds float, ptr %1, i64 1
  store float %18, ptr %19, align 4, !tbaa !51
  %20 = load float, ptr getelementptr inbounds (%"struct.pov::Frame_Struct", ptr @_ZN3pov5FrameE, i64 0, i32 9, i64 2), align 8, !tbaa !51
  %21 = getelementptr inbounds float, ptr %1, i64 2
  store float %20, ptr %21, align 4, !tbaa !51
  %22 = load float, ptr getelementptr inbounds (%"struct.pov::Frame_Struct", ptr @_ZN3pov5FrameE, i64 0, i32 9, i64 3), align 4, !tbaa !51
  %23 = getelementptr inbounds float, ptr %1, i64 3
  store float %22, ptr %23, align 4, !tbaa !51
  %24 = load float, ptr getelementptr inbounds (%"struct.pov::Frame_Struct", ptr @_ZN3pov5FrameE, i64 0, i32 9, i64 4), align 8, !tbaa !51
  %25 = getelementptr inbounds float, ptr %1, i64 4
  store float %24, ptr %25, align 4, !tbaa !51
  store float 0.000000e+00, ptr %23, align 4, !tbaa !51
  store float 1.000000e+00, ptr %25, align 4, !tbaa !51
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #8
  %26 = load ptr, ptr getelementptr inbounds (%"struct.pov::Frame_Struct", ptr @_ZN3pov5FrameE, i64 0, i32 15), align 8, !tbaa !52
  %27 = icmp eq ptr %26, null
  br i1 %27, label %117, label %28

28:                                               ; preds = %16
  %29 = getelementptr inbounds %"struct.pov::Skysphere_Struct", ptr %26, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !54
  %31 = icmp eq ptr %30, null
  br i1 %31, label %117, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %"struct.pov::Skysphere_Struct", ptr %26, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !56
  %35 = icmp eq ptr %34, null
  %36 = getelementptr inbounds %"struct.pov::Ray_Struct", ptr %0, i64 0, i32 1
  br i1 %35, label %38, label %37

37:                                               ; preds = %32
  call void @_ZN3pov14MInvTransPointEPdS0_PNS_16Transform_StructE(ptr noundef nonnull %4, ptr noundef nonnull %36, ptr noundef nonnull %34)
  br label %46

38:                                               ; preds = %32
  %39 = load double, ptr %36, align 8, !tbaa !57
  store double %39, ptr %4, align 16, !tbaa !57
  %40 = getelementptr inbounds %"struct.pov::Ray_Struct", ptr %0, i64 0, i32 1, i64 1
  %41 = load double, ptr %40, align 8, !tbaa !57
  %42 = getelementptr inbounds double, ptr %4, i64 1
  store double %41, ptr %42, align 8, !tbaa !57
  %43 = getelementptr inbounds %"struct.pov::Ray_Struct", ptr %0, i64 0, i32 1, i64 2
  %44 = load double, ptr %43, align 8, !tbaa !57
  %45 = getelementptr inbounds double, ptr %4, i64 2
  store double %44, ptr %45, align 16, !tbaa !57
  br label %46

46:                                               ; preds = %38, %37
  %47 = load i32, ptr %26, align 8, !tbaa !58
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %95

49:                                               ; preds = %46
  %50 = getelementptr inbounds [5 x float], ptr %3, i64 0, i64 3
  %51 = getelementptr inbounds [5 x float], ptr %3, i64 0, i64 4
  %52 = getelementptr inbounds float, ptr %3, i64 1
  %53 = getelementptr inbounds float, ptr %3, i64 2
  %54 = zext nneg i32 %47 to i64
  br label %55

55:                                               ; preds = %49, %55
  %56 = phi i64 [ %54, %49 ], [ %66, %55 ]
  %57 = phi double [ 1.000000e+00, %49 ], [ %93, %55 ]
  %58 = phi float [ 1.000000e+00, %49 ], [ %85, %55 ]
  %59 = phi float [ 1.000000e+00, %49 ], [ %86, %55 ]
  %60 = phi float [ 1.000000e+00, %49 ], [ %87, %55 ]
  %61 = phi float [ 1.000000e+00, %49 ], [ %88, %55 ]
  %62 = phi float [ 1.000000e+00, %49 ], [ %89, %55 ]
  %63 = phi float [ 0.000000e+00, %49 ], [ %80, %55 ]
  %64 = phi float [ 0.000000e+00, %49 ], [ %82, %55 ]
  %65 = phi float [ 0.000000e+00, %49 ], [ %84, %55 ]
  %66 = add nsw i64 %56, -1
  %67 = load ptr, ptr %29, align 8, !tbaa !54
  %68 = getelementptr inbounds ptr, ptr %67, i64 %66
  %69 = load ptr, ptr %68, align 8, !tbaa !59
  %70 = call noundef i32 @_ZN3pov15Compute_PigmentEPfPNS_14Pigment_StructEPdPNS_10istk_entryE(ptr noundef nonnull %3, ptr noundef %69, ptr noundef nonnull %4, ptr noundef null)
  %71 = load float, ptr %50, align 4, !tbaa !51
  %72 = fpext float %71 to double
  %73 = fsub double 1.000000e+00, %72
  %74 = load float, ptr %51, align 16, !tbaa !51
  %75 = fpext float %74 to double
  %76 = fsub double %73, %75
  %77 = fmul double %57, %76
  %78 = fptrunc double %77 to float
  %79 = load float, ptr %3, align 16, !tbaa !51
  %80 = call float @llvm.fmuladd.f32(float %78, float %79, float %63)
  %81 = load float, ptr %52, align 4, !tbaa !51
  %82 = call float @llvm.fmuladd.f32(float %78, float %81, float %64)
  %83 = load float, ptr %53, align 8, !tbaa !51
  %84 = call float @llvm.fmuladd.f32(float %78, float %83, float %65)
  %85 = fmul float %58, %79
  %86 = fmul float %59, %81
  %87 = fmul float %60, %83
  %88 = fmul float %61, %71
  %89 = fmul float %62, %74
  %90 = call noundef float @llvm.fabs.f32(float %88)
  %91 = call noundef float @llvm.fabs.f32(float %89)
  %92 = fadd float %90, %91
  %93 = fpext float %92 to double
  %94 = icmp sgt i64 %56, 1
  br i1 %94, label %55, label %95, !llvm.loop !60

95:                                               ; preds = %55, %46
  %96 = phi float [ 0.000000e+00, %46 ], [ %84, %55 ]
  %97 = phi float [ 0.000000e+00, %46 ], [ %82, %55 ]
  %98 = phi float [ 0.000000e+00, %46 ], [ %80, %55 ]
  %99 = phi float [ 1.000000e+00, %46 ], [ %89, %55 ]
  %100 = phi float [ 1.000000e+00, %46 ], [ %88, %55 ]
  %101 = phi float [ 1.000000e+00, %46 ], [ %87, %55 ]
  %102 = phi float [ 1.000000e+00, %46 ], [ %86, %55 ]
  %103 = phi float [ 1.000000e+00, %46 ], [ %85, %55 ]
  %104 = load float, ptr %1, align 4, !tbaa !51
  %105 = call float @llvm.fmuladd.f32(float %103, float %100, float %99)
  %106 = call float @llvm.fmuladd.f32(float %104, float %105, float %98)
  store float %106, ptr %1, align 4, !tbaa !51
  %107 = load float, ptr %19, align 4, !tbaa !51
  %108 = call float @llvm.fmuladd.f32(float %102, float %100, float %99)
  %109 = call float @llvm.fmuladd.f32(float %107, float %108, float %97)
  store float %109, ptr %19, align 4, !tbaa !51
  %110 = load float, ptr %21, align 4, !tbaa !51
  %111 = call float @llvm.fmuladd.f32(float %101, float %100, float %99)
  %112 = call float @llvm.fmuladd.f32(float %110, float %111, float %96)
  store float %112, ptr %21, align 4, !tbaa !51
  %113 = load float, ptr %23, align 4, !tbaa !51
  %114 = fmul float %100, %113
  store float %114, ptr %23, align 4, !tbaa !51
  %115 = load float, ptr %25, align 4, !tbaa !51
  %116 = fmul float %99, %115
  store float %116, ptr %25, align 4, !tbaa !51
  br label %117

117:                                              ; preds = %16, %28, %95
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #8
  br label %118

118:                                              ; preds = %117, %14
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3pov20Do_Finite_AtmosphereEPNS_10Ray_StructEPNS_10istk_entryEPfi(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #1 {
  %5 = alloca [3 x double], align 16
  %6 = alloca [3 x double], align 16
  %7 = alloca [3 x double], align 16
  %8 = alloca [5 x float], align 16
  %9 = alloca [2 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #8
  %10 = icmp eq i32 %3, 0
  br i1 %10, label %11, label %228

11:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %8) #8
  %12 = load ptr, ptr getelementptr inbounds (%"struct.pov::Frame_Struct", ptr @_ZN3pov5FrameE, i64 0, i32 14), align 8, !tbaa !63
  %13 = icmp eq ptr %12, null
  br i1 %13, label %227, label %14

14:                                               ; preds = %11
  %15 = load ptr, ptr getelementptr inbounds (%"struct.pov::Frame_Struct", ptr @_ZN3pov5FrameE, i64 0, i32 14), align 8, !tbaa !59
  %16 = icmp eq ptr %15, null
  br i1 %16, label %204, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %"struct.pov::Ray_Struct", ptr %0, i64 0, i32 1
  %19 = getelementptr inbounds %"struct.pov::Ray_Struct", ptr %0, i64 0, i32 1, i64 1
  %20 = getelementptr inbounds %"struct.pov::Ray_Struct", ptr %0, i64 0, i32 1, i64 2
  %21 = getelementptr inbounds double, ptr %7, i64 1
  %22 = getelementptr inbounds [5 x float], ptr %8, i64 0, i64 4
  %23 = getelementptr inbounds [5 x float], ptr %8, i64 0, i64 3
  %24 = getelementptr inbounds float, ptr %2, i64 1
  %25 = getelementptr inbounds [5 x float], ptr %8, i64 0, i64 1
  %26 = getelementptr inbounds float, ptr %2, i64 2
  %27 = getelementptr inbounds [5 x float], ptr %8, i64 0, i64 2
  br label %28

28:                                               ; preds = %17, %194
  %29 = phi ptr [ %15, %17 ], [ %202, %194 ]
  %30 = phi i32 [ 0, %17 ], [ %200, %194 ]
  %31 = phi float [ 0.000000e+00, %17 ], [ %199, %194 ]
  %32 = phi float [ 0.000000e+00, %17 ], [ %198, %194 ]
  %33 = phi float [ 0.000000e+00, %17 ], [ %197, %194 ]
  %34 = phi float [ 1.000000e+00, %17 ], [ %196, %194 ]
  %35 = phi float [ 1.000000e+00, %17 ], [ %195, %194 ]
  %36 = getelementptr inbounds %"struct.pov::Rainbow_Struct", ptr %29, i64 0, i32 10
  %37 = load ptr, ptr %36, align 8, !tbaa !64
  %38 = icmp eq ptr %37, null
  br i1 %38, label %194, label %39

39:                                               ; preds = %28
  %40 = load double, ptr %29, align 8, !tbaa !66
  %41 = fcmp une double %40, 0.000000e+00
  br i1 %41, label %42, label %194

42:                                               ; preds = %39
  %43 = getelementptr inbounds %"struct.pov::Rainbow_Struct", ptr %29, i64 0, i32 3
  %44 = load double, ptr %43, align 8, !tbaa !67
  %45 = fcmp une double %44, 0.000000e+00
  br i1 %45, label %46, label %194

46:                                               ; preds = %42
  %47 = getelementptr inbounds %"struct.pov::Rainbow_Struct", ptr %29, i64 0, i32 9
  %48 = load double, ptr %18, align 8, !tbaa !57
  %49 = load double, ptr %47, align 8, !tbaa !57
  %50 = load double, ptr %19, align 8, !tbaa !57
  %51 = getelementptr inbounds %"struct.pov::Rainbow_Struct", ptr %29, i64 0, i32 9, i64 1
  %52 = load double, ptr %51, align 8, !tbaa !57
  %53 = fmul double %50, %52
  %54 = call double @llvm.fmuladd.f64(double %48, double %49, double %53)
  %55 = load double, ptr %20, align 8, !tbaa !57
  %56 = getelementptr inbounds %"struct.pov::Rainbow_Struct", ptr %29, i64 0, i32 9, i64 2
  %57 = load double, ptr %56, align 8, !tbaa !57
  %58 = call double @llvm.fmuladd.f64(double %55, double %57, double %54)
  %59 = getelementptr inbounds %"struct.pov::Rainbow_Struct", ptr %29, i64 0, i32 8
  %60 = load double, ptr %59, align 8, !tbaa !57
  %61 = getelementptr inbounds %"struct.pov::Rainbow_Struct", ptr %29, i64 0, i32 8, i64 1
  %62 = load double, ptr %61, align 8, !tbaa !57
  %63 = fmul double %50, %62
  %64 = call double @llvm.fmuladd.f64(double %48, double %60, double %63)
  %65 = getelementptr inbounds %"struct.pov::Rainbow_Struct", ptr %29, i64 0, i32 8, i64 2
  %66 = load double, ptr %65, align 8, !tbaa !57
  %67 = call double @llvm.fmuladd.f64(double %55, double %66, double %64)
  %68 = fmul double %58, %58
  %69 = fmul double %67, %67
  %70 = fadd double %68, %69
  %71 = fcmp ogt double %70, 0.000000e+00
  br i1 %71, label %72, label %75

72:                                               ; preds = %46
  %73 = call double @sqrt(double noundef %70) #8
  %74 = fdiv double %67, %73
  br label %75

75:                                               ; preds = %72, %46
  %76 = phi double [ %74, %72 ], [ %67, %46 ]
  %77 = call double @acos(double noundef %76) #8
  %78 = call double @llvm.fabs.f64(double %77)
  %79 = getelementptr inbounds %"struct.pov::Rainbow_Struct", ptr %29, i64 0, i32 4
  %80 = load double, ptr %79, align 8, !tbaa !68
  %81 = fcmp ugt double %78, %80
  br i1 %81, label %194, label %82

82:                                               ; preds = %75
  %83 = getelementptr inbounds %"struct.pov::Rainbow_Struct", ptr %29, i64 0, i32 7
  %84 = load double, ptr %18, align 8, !tbaa !57
  %85 = load double, ptr %83, align 8, !tbaa !57
  %86 = load double, ptr %19, align 8, !tbaa !57
  %87 = getelementptr inbounds %"struct.pov::Rainbow_Struct", ptr %29, i64 0, i32 7, i64 1
  %88 = load double, ptr %87, align 8, !tbaa !57
  %89 = fmul double %86, %88
  %90 = call double @llvm.fmuladd.f64(double %84, double %85, double %89)
  %91 = load double, ptr %20, align 8, !tbaa !57
  %92 = getelementptr inbounds %"struct.pov::Rainbow_Struct", ptr %29, i64 0, i32 7, i64 2
  %93 = load double, ptr %92, align 8, !tbaa !57
  %94 = call double @llvm.fmuladd.f64(double %91, double %93, double %90)
  %95 = fcmp ult double %94, 0.000000e+00
  br i1 %95, label %194, label %96

96:                                               ; preds = %82
  %97 = call double @acos(double noundef %94) #8
  %98 = getelementptr inbounds %"struct.pov::Rainbow_Struct", ptr %29, i64 0, i32 2
  %99 = load double, ptr %98, align 8, !tbaa !69
  %100 = fsub double %97, %99
  %101 = load double, ptr %43, align 8, !tbaa !67
  %102 = fdiv double %100, %101
  %103 = getelementptr inbounds %"struct.pov::Rainbow_Struct", ptr %29, i64 0, i32 1
  %104 = load double, ptr %103, align 8, !tbaa !70
  %105 = fcmp ogt double %104, 0.000000e+00
  br i1 %105, label %106, label %113

106:                                              ; preds = %96
  %107 = call noundef i32 @_ZN3pov8POV_RANDEv()
  %108 = sitofp i32 %107 to double
  %109 = fmul double %108, 0x3F0000200040021E
  %110 = call double @llvm.fmuladd.f64(double %109, double 2.000000e+00, double -1.000000e+00)
  %111 = load double, ptr %103, align 8, !tbaa !70
  %112 = call double @llvm.fmuladd.f64(double %110, double %111, double %102)
  br label %113

113:                                              ; preds = %106, %96
  %114 = phi double [ %112, %106 ], [ %102, %96 ]
  %115 = fcmp oge double %114, 0.000000e+00
  %116 = fcmp ole double %114, 0x3FEFFFFFCA501ACB
  %117 = and i1 %115, %116
  br i1 %117, label %118, label %194

118:                                              ; preds = %113
  store double %114, ptr %7, align 16, !tbaa !57
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, i8 0, i64 16, i1 false)
  %119 = load ptr, ptr %36, align 8, !tbaa !64
  %120 = call noundef i32 @_ZN3pov15Compute_PigmentEPfPNS_14Pigment_StructEPdPNS_10istk_entryE(ptr noundef nonnull %8, ptr noundef %119, ptr noundef nonnull %7, ptr noundef %1)
  %121 = getelementptr inbounds %"struct.pov::Rainbow_Struct", ptr %29, i64 0, i32 6
  %122 = load double, ptr %121, align 8, !tbaa !71
  %123 = fcmp ogt double %122, 0.000000e+00
  br i1 %123, label %124, label %134

124:                                              ; preds = %118
  %125 = getelementptr inbounds %"struct.pov::Rainbow_Struct", ptr %29, i64 0, i32 5
  %126 = load double, ptr %125, align 8, !tbaa !72
  %127 = fcmp ogt double %78, %126
  br i1 %127, label %128, label %134

128:                                              ; preds = %124
  %129 = fsub double %78, %126
  %130 = fdiv double %129, %122
  %131 = call double @llvm.fmuladd.f64(double %130, double -2.000000e+00, double 3.000000e+00)
  %132 = fmul double %130, %131
  %133 = fmul double %130, %132
  br label %134

134:                                              ; preds = %128, %124, %118
  %135 = phi double [ %133, %128 ], [ 0.000000e+00, %124 ], [ 0.000000e+00, %118 ]
  %136 = load double, ptr %1, align 8, !tbaa !73
  %137 = fneg double %136
  %138 = load double, ptr %29, align 8, !tbaa !66
  %139 = fdiv double %137, %138
  %140 = call double @exp(double noundef %139) #8
  %141 = load float, ptr %22, align 16, !tbaa !51
  %142 = fpext float %141 to double
  %143 = fsub double 1.000000e+00, %142
  %144 = call double @llvm.fmuladd.f64(double %135, double %143, double %142)
  %145 = fcmp olt double %140, %144
  %146 = select i1 %145, double %144, double %140
  %147 = fsub double 1.000000e+00, %146
  %148 = load float, ptr %23, align 4, !tbaa !51
  %149 = fpext float %148 to double
  %150 = fmul double %147, %149
  %151 = load float, ptr %2, align 4, !tbaa !51
  %152 = fpext float %151 to double
  %153 = fmul double %146, %152
  %154 = fsub double 1.000000e+00, %150
  %155 = load float, ptr %8, align 16, !tbaa !51
  %156 = fpext float %155 to double
  %157 = call double @llvm.fmuladd.f64(double %150, double %156, double %154)
  %158 = fmul double %147, %156
  %159 = call double @llvm.fmuladd.f64(double %153, double %157, double %158)
  %160 = fpext float %31 to double
  %161 = fadd double %159, %160
  %162 = fptrunc double %161 to float
  %163 = load float, ptr %24, align 4, !tbaa !51
  %164 = fpext float %163 to double
  %165 = fmul double %146, %164
  %166 = load float, ptr %25, align 4, !tbaa !51
  %167 = fpext float %166 to double
  %168 = call double @llvm.fmuladd.f64(double %150, double %167, double %154)
  %169 = fmul double %147, %167
  %170 = call double @llvm.fmuladd.f64(double %165, double %168, double %169)
  %171 = fpext float %32 to double
  %172 = fadd double %170, %171
  %173 = fptrunc double %172 to float
  %174 = load float, ptr %26, align 4, !tbaa !51
  %175 = fpext float %174 to double
  %176 = fmul double %146, %175
  %177 = load float, ptr %27, align 8, !tbaa !51
  %178 = fpext float %177 to double
  %179 = call double @llvm.fmuladd.f64(double %150, double %178, double %154)
  %180 = fmul double %147, %178
  %181 = call double @llvm.fmuladd.f64(double %176, double %179, double %180)
  %182 = fpext float %33 to double
  %183 = fadd double %181, %182
  %184 = fptrunc double %183 to float
  %185 = fmul double %146, %149
  %186 = fpext float %34 to double
  %187 = fmul double %185, %186
  %188 = fptrunc double %187 to float
  %189 = fmul double %146, %142
  %190 = fpext float %35 to double
  %191 = fmul double %189, %190
  %192 = fptrunc double %191 to float
  %193 = add nsw i32 %30, 1
  br label %194

194:                                              ; preds = %134, %113, %82, %75, %42, %39, %28
  %195 = phi float [ %35, %28 ], [ %35, %75 ], [ %35, %82 ], [ %192, %134 ], [ %35, %113 ], [ %35, %42 ], [ %35, %39 ]
  %196 = phi float [ %34, %28 ], [ %34, %75 ], [ %34, %82 ], [ %188, %134 ], [ %34, %113 ], [ %34, %42 ], [ %34, %39 ]
  %197 = phi float [ %33, %28 ], [ %33, %75 ], [ %33, %82 ], [ %184, %134 ], [ %33, %113 ], [ %33, %42 ], [ %33, %39 ]
  %198 = phi float [ %32, %28 ], [ %32, %75 ], [ %32, %82 ], [ %173, %134 ], [ %32, %113 ], [ %32, %42 ], [ %32, %39 ]
  %199 = phi float [ %31, %28 ], [ %31, %75 ], [ %31, %82 ], [ %162, %134 ], [ %31, %113 ], [ %31, %42 ], [ %31, %39 ]
  %200 = phi i32 [ %30, %28 ], [ %30, %75 ], [ %30, %82 ], [ %193, %134 ], [ %30, %113 ], [ %30, %42 ], [ %30, %39 ]
  %201 = getelementptr inbounds %"struct.pov::Rainbow_Struct", ptr %29, i64 0, i32 11
  %202 = load ptr, ptr %201, align 8, !tbaa !59
  %203 = icmp eq ptr %202, null
  br i1 %203, label %204, label %28, !llvm.loop !75

204:                                              ; preds = %194, %14
  %205 = phi float [ 1.000000e+00, %14 ], [ %195, %194 ]
  %206 = phi float [ 1.000000e+00, %14 ], [ %196, %194 ]
  %207 = phi float [ 0.000000e+00, %14 ], [ %197, %194 ]
  %208 = phi float [ 0.000000e+00, %14 ], [ %198, %194 ]
  %209 = phi float [ 0.000000e+00, %14 ], [ %199, %194 ]
  %210 = phi i32 [ 0, %14 ], [ %200, %194 ]
  %211 = icmp sgt i32 %210, 0
  br i1 %211, label %212, label %227

212:                                              ; preds = %204
  %213 = sitofp i32 %210 to double
  %214 = fdiv double 1.000000e+00, %213
  %215 = fptrunc double %214 to float
  %216 = fmul float %209, %215
  store float %216, ptr %2, align 4, !tbaa !51
  %217 = fmul float %208, %215
  %218 = getelementptr inbounds float, ptr %2, i64 1
  store float %217, ptr %218, align 4, !tbaa !51
  %219 = fmul float %207, %215
  %220 = getelementptr inbounds float, ptr %2, i64 2
  store float %219, ptr %220, align 4, !tbaa !51
  %221 = getelementptr inbounds float, ptr %2, i64 3
  %222 = load float, ptr %221, align 4, !tbaa !51
  %223 = fmul float %206, %222
  store float %223, ptr %221, align 4, !tbaa !51
  %224 = getelementptr inbounds float, ptr %2, i64 4
  %225 = load float, ptr %224, align 4, !tbaa !51
  %226 = fmul float %205, %225
  store float %226, ptr %224, align 4, !tbaa !51
  br label %227

227:                                              ; preds = %11, %204, %212
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #8
  br label %228

228:                                              ; preds = %227, %4
  %229 = load ptr, ptr getelementptr inbounds (%"struct.pov::Frame_Struct", ptr @_ZN3pov5FrameE, i64 0, i32 12), align 8, !tbaa !76
  store ptr %229, ptr %9, align 16, !tbaa !59
  %230 = getelementptr inbounds [2 x ptr], ptr %9, i64 0, i64 1
  store ptr null, ptr %230, align 8, !tbaa !59
  call void @_ZN3pov14Simulate_MediaEPPNS_12Media_StructEPNS_10Ray_StructEPNS_10istk_entryEPfi(ptr noundef nonnull %9, ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3)
  %231 = load ptr, ptr getelementptr inbounds (%"struct.pov::Frame_Struct", ptr @_ZN3pov5FrameE, i64 0, i32 13), align 8, !tbaa !77
  %232 = icmp eq ptr %231, null
  br i1 %232, label %514, label %233

233:                                              ; preds = %228
  %234 = load ptr, ptr getelementptr inbounds (%"struct.pov::Frame_Struct", ptr @_ZN3pov5FrameE, i64 0, i32 13), align 8, !tbaa !59
  %235 = icmp eq ptr %234, null
  br i1 %235, label %488, label %236

236:                                              ; preds = %233
  %237 = getelementptr inbounds %"struct.pov::Ray_Struct", ptr %0, i64 0, i32 1
  %238 = getelementptr inbounds double, ptr %0, i64 1
  %239 = getelementptr inbounds %"struct.pov::Ray_Struct", ptr %0, i64 0, i32 1, i64 1
  %240 = getelementptr inbounds double, ptr %5, i64 1
  %241 = getelementptr inbounds double, ptr %0, i64 2
  %242 = getelementptr inbounds %"struct.pov::Ray_Struct", ptr %0, i64 0, i32 1, i64 2
  %243 = getelementptr inbounds double, ptr %5, i64 2
  %244 = getelementptr inbounds %"struct.pov::Ray_Struct", ptr %0, i64 0, i32 1
  %245 = getelementptr inbounds double, ptr %0, i64 1
  %246 = getelementptr inbounds %"struct.pov::Ray_Struct", ptr %0, i64 0, i32 1, i64 1
  %247 = getelementptr inbounds double, ptr %0, i64 2
  %248 = getelementptr inbounds %"struct.pov::Ray_Struct", ptr %0, i64 0, i32 1, i64 2
  %249 = getelementptr inbounds double, ptr %6, i64 1
  %250 = getelementptr inbounds double, ptr %6, i64 2
  br label %251

251:                                              ; preds = %236, %478
  %252 = phi ptr [ %234, %236 ], [ %486, %478 ]
  %253 = phi float [ 0.000000e+00, %236 ], [ %484, %478 ]
  %254 = phi float [ 0.000000e+00, %236 ], [ %483, %478 ]
  %255 = phi float [ 0.000000e+00, %236 ], [ %482, %478 ]
  %256 = phi float [ 1.000000e+00, %236 ], [ %481, %478 ]
  %257 = phi float [ 1.000000e+00, %236 ], [ %480, %478 ]
  %258 = phi float [ 1.000000e+00, %236 ], [ %479, %478 ]
  %259 = getelementptr inbounds %"struct.pov::Fog_Struct", ptr %252, i64 0, i32 1
  %260 = load double, ptr %259, align 8, !tbaa !78
  %261 = call double @llvm.fabs.f64(double %260)
  %262 = fcmp ogt double %261, 0x3E7AD7F29ABCAF48
  br i1 %262, label %263, label %478

263:                                              ; preds = %251
  %264 = load double, ptr %1, align 8, !tbaa !73
  %265 = load i32, ptr %252, align 8, !tbaa !80
  %266 = icmp eq i32 %265, 2
  br i1 %266, label %267, label %383

267:                                              ; preds = %263
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #8
  %268 = load double, ptr %0, align 8, !tbaa !57
  %269 = load double, ptr %244, align 8, !tbaa !57
  %270 = call double @llvm.fmuladd.f64(double %269, double 0.000000e+00, double %268)
  %271 = load double, ptr %245, align 8, !tbaa !57
  %272 = load double, ptr %246, align 8, !tbaa !57
  %273 = call double @llvm.fmuladd.f64(double %272, double 0.000000e+00, double %271)
  %274 = load double, ptr %247, align 8, !tbaa !57
  %275 = load double, ptr %248, align 8, !tbaa !57
  %276 = call double @llvm.fmuladd.f64(double %275, double 0.000000e+00, double %274)
  %277 = fmul double %264, %269
  %278 = fadd double %270, %277
  %279 = fmul double %264, %272
  %280 = fadd double %273, %279
  %281 = fmul double %264, %275
  %282 = fadd double %276, %281
  %283 = getelementptr inbounds %"struct.pov::Fog_Struct", ptr %252, i64 0, i32 5
  %284 = load double, ptr %283, align 8, !tbaa !57
  %285 = getelementptr inbounds %"struct.pov::Fog_Struct", ptr %252, i64 0, i32 5, i64 1
  %286 = load double, ptr %285, align 8, !tbaa !57
  %287 = fmul double %273, %286
  %288 = call double @llvm.fmuladd.f64(double %270, double %284, double %287)
  %289 = getelementptr inbounds %"struct.pov::Fog_Struct", ptr %252, i64 0, i32 5, i64 2
  %290 = load double, ptr %289, align 8, !tbaa !57
  %291 = call double @llvm.fmuladd.f64(double %276, double %290, double %288)
  %292 = fmul double %280, %286
  %293 = call double @llvm.fmuladd.f64(double %278, double %284, double %292)
  %294 = call double @llvm.fmuladd.f64(double %282, double %290, double %293)
  %295 = getelementptr inbounds %"struct.pov::Fog_Struct", ptr %252, i64 0, i32 3
  %296 = load double, ptr %295, align 8, !tbaa !81
  %297 = fsub double %291, %296
  %298 = getelementptr inbounds %"struct.pov::Fog_Struct", ptr %252, i64 0, i32 2
  %299 = load double, ptr %298, align 8, !tbaa !82
  %300 = fdiv double %297, %299
  %301 = fsub double %294, %296
  %302 = fdiv double %301, %299
  %303 = fcmp ugt double %300, 0.000000e+00
  %304 = fcmp ugt double %302, 0.000000e+00
  br i1 %303, label %311, label %305

305:                                              ; preds = %267
  br i1 %304, label %306, label %330

306:                                              ; preds = %305
  %307 = call double @atan(double noundef %302) #8
  %308 = fsub double %307, %300
  %309 = fsub double %302, %300
  %310 = fdiv double %308, %309
  br label %330

311:                                              ; preds = %267
  br i1 %304, label %317, label %312

312:                                              ; preds = %311
  %313 = call double @atan(double noundef %300) #8
  %314 = fsub double %313, %302
  %315 = fsub double %300, %302
  %316 = fdiv double %314, %315
  br label %330

317:                                              ; preds = %311
  %318 = fsub double %300, %302
  %319 = call double @llvm.fabs.f64(double %318)
  %320 = fcmp ogt double %319, 0x3E7AD7F29ABCAF48
  br i1 %320, label %321, label %326

321:                                              ; preds = %317
  %322 = call double @atan(double noundef %300) #8
  %323 = call double @atan(double noundef %302) #8
  %324 = fsub double %322, %323
  %325 = fdiv double %324, %318
  br label %330

326:                                              ; preds = %317
  %327 = fmul double %300, %300
  %328 = fadd double %327, 1.000000e+00
  %329 = fdiv double 1.000000e+00, %328
  br label %330

330:                                              ; preds = %326, %321, %312, %306, %305
  %331 = phi double [ %310, %306 ], [ %316, %312 ], [ %325, %321 ], [ %329, %326 ], [ 1.000000e+00, %305 ]
  %332 = getelementptr inbounds %"struct.pov::Fog_Struct", ptr %252, i64 0, i32 6
  %333 = load ptr, ptr %332, align 8, !tbaa !83
  %334 = icmp eq ptr %333, null
  br i1 %334, label %366, label %335

335:                                              ; preds = %330
  %336 = fadd double %270, %278
  %337 = fmul double %336, 5.000000e-01
  store double %337, ptr %6, align 16, !tbaa !57
  %338 = fadd double %273, %280
  %339 = fmul double %338, 5.000000e-01
  store double %339, ptr %249, align 8, !tbaa !57
  %340 = fadd double %276, %282
  %341 = fmul double %340, 5.000000e-01
  store double %341, ptr %250, align 16, !tbaa !57
  %342 = getelementptr inbounds %"struct.pov::Turb_Struct", ptr %333, i64 0, i32 3
  %343 = load double, ptr %342, align 8, !tbaa !57
  %344 = fmul double %337, %343
  store double %344, ptr %6, align 16, !tbaa !57
  %345 = getelementptr inbounds %"struct.pov::Turb_Struct", ptr %333, i64 0, i32 3, i64 1
  %346 = load double, ptr %345, align 8, !tbaa !57
  %347 = fmul double %339, %346
  store double %347, ptr %249, align 8, !tbaa !57
  %348 = getelementptr inbounds %"struct.pov::Turb_Struct", ptr %333, i64 0, i32 3, i64 2
  %349 = load double, ptr %348, align 8, !tbaa !57
  %350 = fmul double %341, %349
  store double %350, ptr %250, align 16, !tbaa !57
  %351 = fneg double %264
  %352 = load double, ptr %259, align 8, !tbaa !78
  %353 = fdiv double %351, %352
  %354 = call double @exp(double noundef %353) #8
  %355 = load ptr, ptr %332, align 8, !tbaa !83
  %356 = call noundef double @_ZN3pov10TurbulenceEPdPNS_11Turb_StructEPNS_14Pattern_StructE(ptr noundef nonnull %6, ptr noundef %355, ptr noundef null)
  %357 = getelementptr inbounds %"struct.pov::Fog_Struct", ptr %252, i64 0, i32 7
  %358 = load float, ptr %357, align 8, !tbaa !84
  %359 = fpext float %358 to double
  %360 = fmul double %356, %359
  %361 = fcmp olt double %360, 1.000000e+00
  %362 = select i1 %361, double %360, double 1.000000e+00
  %363 = fneg double %354
  %364 = call double @llvm.fmuladd.f64(double %363, double %362, double 1.000000e+00)
  %365 = fmul double %264, %364
  br label %366

366:                                              ; preds = %335, %330
  %367 = phi double [ %365, %335 ], [ %264, %330 ]
  %368 = getelementptr inbounds %"struct.pov::Fog_Struct", ptr %252, i64 0, i32 4
  %369 = load float, ptr %368, align 4, !tbaa !51
  %370 = getelementptr inbounds %"struct.pov::Fog_Struct", ptr %252, i64 0, i32 4, i64 1
  %371 = load float, ptr %370, align 4, !tbaa !51
  %372 = getelementptr inbounds %"struct.pov::Fog_Struct", ptr %252, i64 0, i32 4, i64 2
  %373 = load float, ptr %372, align 4, !tbaa !51
  %374 = getelementptr inbounds %"struct.pov::Fog_Struct", ptr %252, i64 0, i32 4, i64 3
  %375 = load float, ptr %374, align 4, !tbaa !51
  %376 = getelementptr inbounds %"struct.pov::Fog_Struct", ptr %252, i64 0, i32 4, i64 4
  %377 = load float, ptr %376, align 4, !tbaa !51
  %378 = fneg double %367
  %379 = fmul double %331, %378
  %380 = load double, ptr %259, align 8, !tbaa !78
  %381 = fdiv double %379, %380
  %382 = call noundef double @exp(double noundef %381) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #8
  br label %439

383:                                              ; preds = %263
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #8
  %384 = getelementptr inbounds %"struct.pov::Fog_Struct", ptr %252, i64 0, i32 6
  %385 = load ptr, ptr %384, align 8, !tbaa !83
  %386 = icmp eq ptr %385, null
  br i1 %386, label %423, label %387

387:                                              ; preds = %383
  %388 = fmul double %264, 5.000000e-01
  %389 = fadd double %388, 0.000000e+00
  %390 = load double, ptr %0, align 8, !tbaa !57
  %391 = load double, ptr %237, align 8, !tbaa !57
  %392 = call double @llvm.fmuladd.f64(double %389, double %391, double %390)
  store double %392, ptr %5, align 16, !tbaa !57
  %393 = load double, ptr %238, align 8, !tbaa !57
  %394 = load double, ptr %239, align 8, !tbaa !57
  %395 = call double @llvm.fmuladd.f64(double %389, double %394, double %393)
  store double %395, ptr %240, align 8, !tbaa !57
  %396 = load double, ptr %241, align 8, !tbaa !57
  %397 = load double, ptr %242, align 8, !tbaa !57
  %398 = call double @llvm.fmuladd.f64(double %389, double %397, double %396)
  store double %398, ptr %243, align 16, !tbaa !57
  %399 = getelementptr inbounds %"struct.pov::Turb_Struct", ptr %385, i64 0, i32 3
  %400 = load double, ptr %399, align 8, !tbaa !57
  %401 = fmul double %392, %400
  store double %401, ptr %5, align 16, !tbaa !57
  %402 = getelementptr inbounds %"struct.pov::Turb_Struct", ptr %385, i64 0, i32 3, i64 1
  %403 = load double, ptr %402, align 8, !tbaa !57
  %404 = fmul double %395, %403
  store double %404, ptr %240, align 8, !tbaa !57
  %405 = getelementptr inbounds %"struct.pov::Turb_Struct", ptr %385, i64 0, i32 3, i64 2
  %406 = load double, ptr %405, align 8, !tbaa !57
  %407 = fmul double %398, %406
  store double %407, ptr %243, align 16, !tbaa !57
  %408 = fneg double %264
  %409 = load double, ptr %259, align 8, !tbaa !78
  %410 = fdiv double %408, %409
  %411 = call double @exp(double noundef %410) #8
  %412 = load ptr, ptr %384, align 8, !tbaa !83
  %413 = call noundef double @_ZN3pov10TurbulenceEPdPNS_11Turb_StructEPNS_14Pattern_StructE(ptr noundef nonnull %5, ptr noundef %412, ptr noundef null)
  %414 = getelementptr inbounds %"struct.pov::Fog_Struct", ptr %252, i64 0, i32 7
  %415 = load float, ptr %414, align 8, !tbaa !84
  %416 = fpext float %415 to double
  %417 = fmul double %413, %416
  %418 = fcmp olt double %417, 1.000000e+00
  %419 = select i1 %418, double %417, double 1.000000e+00
  %420 = fneg double %411
  %421 = call double @llvm.fmuladd.f64(double %420, double %419, double 1.000000e+00)
  %422 = fmul double %264, %421
  br label %423

423:                                              ; preds = %387, %383
  %424 = phi double [ %422, %387 ], [ %264, %383 ]
  %425 = getelementptr inbounds %"struct.pov::Fog_Struct", ptr %252, i64 0, i32 4
  %426 = load float, ptr %425, align 4, !tbaa !51
  %427 = getelementptr inbounds %"struct.pov::Fog_Struct", ptr %252, i64 0, i32 4, i64 1
  %428 = load float, ptr %427, align 4, !tbaa !51
  %429 = getelementptr inbounds %"struct.pov::Fog_Struct", ptr %252, i64 0, i32 4, i64 2
  %430 = load float, ptr %429, align 4, !tbaa !51
  %431 = getelementptr inbounds %"struct.pov::Fog_Struct", ptr %252, i64 0, i32 4, i64 3
  %432 = load float, ptr %431, align 4, !tbaa !51
  %433 = getelementptr inbounds %"struct.pov::Fog_Struct", ptr %252, i64 0, i32 4, i64 4
  %434 = load float, ptr %433, align 4, !tbaa !51
  %435 = fneg double %424
  %436 = load double, ptr %259, align 8, !tbaa !78
  %437 = fdiv double %435, %436
  %438 = call noundef double @exp(double noundef %437) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #8
  br label %439

439:                                              ; preds = %423, %366
  %440 = phi float [ %373, %366 ], [ %430, %423 ]
  %441 = phi float [ %371, %366 ], [ %428, %423 ]
  %442 = phi float [ %369, %366 ], [ %426, %423 ]
  %443 = phi float [ %375, %366 ], [ %432, %423 ]
  %444 = phi float [ %377, %366 ], [ %434, %423 ]
  %445 = phi double [ %382, %366 ], [ %438, %423 ]
  %446 = fpext float %444 to double
  %447 = fcmp olt double %445, %446
  %448 = select i1 %447, double %446, double %445
  %449 = fpext float %443 to double
  %450 = fsub double 1.000000e+00, %449
  %451 = fmul float %442, %443
  %452 = fpext float %451 to double
  %453 = fadd double %450, %452
  %454 = fmul double %453, %448
  %455 = fpext float %256 to double
  %456 = fmul double %454, %455
  %457 = fptrunc double %456 to float
  %458 = fmul float %441, %443
  %459 = fpext float %458 to double
  %460 = fadd double %450, %459
  %461 = fmul double %460, %448
  %462 = fpext float %257 to double
  %463 = fmul double %461, %462
  %464 = fptrunc double %463 to float
  %465 = fmul float %440, %443
  %466 = fpext float %465 to double
  %467 = fadd double %450, %466
  %468 = fmul double %467, %448
  %469 = fpext float %258 to double
  %470 = fmul double %468, %469
  %471 = fptrunc double %470 to float
  br i1 %10, label %472, label %478

472:                                              ; preds = %439
  %473 = fsub double 1.000000e+00, %448
  %474 = fptrunc double %473 to float
  %475 = call float @llvm.fmuladd.f32(float %474, float %442, float %253)
  %476 = call float @llvm.fmuladd.f32(float %474, float %441, float %254)
  %477 = call float @llvm.fmuladd.f32(float %474, float %440, float %255)
  br label %478

478:                                              ; preds = %472, %439, %251
  %479 = phi float [ %471, %472 ], [ %471, %439 ], [ %258, %251 ]
  %480 = phi float [ %464, %472 ], [ %464, %439 ], [ %257, %251 ]
  %481 = phi float [ %457, %472 ], [ %457, %439 ], [ %256, %251 ]
  %482 = phi float [ %477, %472 ], [ %255, %439 ], [ %255, %251 ]
  %483 = phi float [ %476, %472 ], [ %254, %439 ], [ %254, %251 ]
  %484 = phi float [ %475, %472 ], [ %253, %439 ], [ %253, %251 ]
  %485 = getelementptr inbounds %"struct.pov::Fog_Struct", ptr %252, i64 0, i32 8
  %486 = load ptr, ptr %485, align 8, !tbaa !59
  %487 = icmp eq ptr %486, null
  br i1 %487, label %488, label %251, !llvm.loop !85

488:                                              ; preds = %478, %233
  %489 = phi float [ 1.000000e+00, %233 ], [ %479, %478 ]
  %490 = phi float [ 1.000000e+00, %233 ], [ %480, %478 ]
  %491 = phi float [ 1.000000e+00, %233 ], [ %481, %478 ]
  %492 = phi float [ 0.000000e+00, %233 ], [ %482, %478 ]
  %493 = phi float [ 0.000000e+00, %233 ], [ %483, %478 ]
  %494 = phi float [ 0.000000e+00, %233 ], [ %484, %478 ]
  %495 = load float, ptr %2, align 4, !tbaa !51
  %496 = call float @llvm.fmuladd.f32(float %491, float %495, float %494)
  store float %496, ptr %2, align 4, !tbaa !51
  %497 = getelementptr inbounds float, ptr %2, i64 1
  %498 = load float, ptr %497, align 4, !tbaa !51
  %499 = call float @llvm.fmuladd.f32(float %490, float %498, float %493)
  store float %499, ptr %497, align 4, !tbaa !51
  %500 = getelementptr inbounds float, ptr %2, i64 2
  %501 = load float, ptr %500, align 4, !tbaa !51
  %502 = call float @llvm.fmuladd.f32(float %489, float %501, float %492)
  store float %502, ptr %500, align 4, !tbaa !51
  %503 = fpext float %491 to double
  %504 = fpext float %490 to double
  %505 = fmul double %504, 5.890000e-01
  %506 = call double @llvm.fmuladd.f64(double %503, double 2.970000e-01, double %505)
  %507 = fpext float %489 to double
  %508 = call double @llvm.fmuladd.f64(double %507, double 1.140000e-01, double %506)
  %509 = getelementptr inbounds float, ptr %2, i64 4
  %510 = load float, ptr %509, align 4, !tbaa !51
  %511 = fpext float %510 to double
  %512 = fmul double %508, %511
  %513 = fptrunc double %512 to float
  store float %513, ptr %509, align 4, !tbaa !51
  br label %514

514:                                              ; preds = %228, %488
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare void @_ZN3pov14Simulate_MediaEPPNS_12Media_StructEPNS_10Ray_StructEPNS_10istk_entryEPfi(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN3pov10Create_FogEv() local_unnamed_addr #1 {
  %1 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef 104, ptr noundef nonnull @.str, i32 noundef 867, ptr noundef nonnull @.str.1)
  store i32 1, ptr %1, align 8, !tbaa !80
  %2 = getelementptr inbounds %"struct.pov::Fog_Struct", ptr %1, i64 0, i32 1
  %3 = getelementptr inbounds %"struct.pov::Fog_Struct", ptr %1, i64 0, i32 5
  store double 0.000000e+00, ptr %3, align 8, !tbaa !57
  %4 = getelementptr inbounds %"struct.pov::Fog_Struct", ptr %1, i64 0, i32 5, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %2, i8 0, i64 44, i1 false)
  store double 1.000000e+00, ptr %4, align 8, !tbaa !57
  %5 = getelementptr inbounds %"struct.pov::Fog_Struct", ptr %1, i64 0, i32 5, i64 2
  %6 = getelementptr inbounds %"struct.pov::Fog_Struct", ptr %1, i64 0, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  store float 5.000000e-01, ptr %6, align 8, !tbaa !84
  %7 = getelementptr inbounds %"struct.pov::Fog_Struct", ptr %1, i64 0, i32 8
  store ptr null, ptr %7, align 8, !tbaa !86
  ret ptr %1
}

declare noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN3pov8Copy_FogEPNS_10Fog_StructE(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef 104, ptr noundef nonnull @.str, i32 noundef 867, ptr noundef nonnull @.str.1)
  store i32 1, ptr %2, align 8, !tbaa !80
  %3 = getelementptr inbounds %"struct.pov::Fog_Struct", ptr %2, i64 0, i32 1
  %4 = getelementptr inbounds %"struct.pov::Fog_Struct", ptr %2, i64 0, i32 5
  store double 0.000000e+00, ptr %4, align 8, !tbaa !57
  %5 = getelementptr inbounds %"struct.pov::Fog_Struct", ptr %2, i64 0, i32 5, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %3, i8 0, i64 44, i1 false)
  store double 1.000000e+00, ptr %5, align 8, !tbaa !57
  %6 = getelementptr inbounds %"struct.pov::Fog_Struct", ptr %2, i64 0, i32 5, i64 2
  %7 = getelementptr inbounds %"struct.pov::Fog_Struct", ptr %2, i64 0, i32 6
  %8 = getelementptr inbounds %"struct.pov::Fog_Struct", ptr %2, i64 0, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  store float 5.000000e-01, ptr %8, align 8, !tbaa !84
  %9 = getelementptr inbounds %"struct.pov::Fog_Struct", ptr %2, i64 0, i32 8
  store ptr null, ptr %9, align 8, !tbaa !86
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull align 8 dereferenceable(104) %0, i64 104, i1 false), !tbaa.struct !87
  %10 = getelementptr inbounds %"struct.pov::Fog_Struct", ptr %0, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !83
  %12 = tail call noundef ptr @_ZN3pov10Copy_WarpsEPNS_12Warps_StructE(ptr noundef %11)
  store ptr %12, ptr %7, align 8, !tbaa !83
  ret ptr %2
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

declare noundef ptr @_ZN3pov10Copy_WarpsEPNS_12Warps_StructE(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3pov11Destroy_FogEPNS_10Fog_StructE(ptr noundef %0) local_unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %"struct.pov::Fog_Struct", ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !83
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef nonnull %5, ptr noundef nonnull @.str, i32 noundef 966)
  store ptr null, ptr %4, align 8, !tbaa !83
  br label %8

8:                                                ; preds = %7, %3
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef nonnull %0, ptr noundef nonnull @.str, i32 noundef 968)
  br label %9

9:                                                ; preds = %8, %1
  ret void
}

declare void @_ZN3pov8pov_freeEPvPKci(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN3pov14Create_RainbowEv() local_unnamed_addr #1 {
  %1 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef 144, ptr noundef nonnull @.str, i32 noundef 1006, ptr noundef nonnull @.str.1)
  store double 1.000000e+07, ptr %1, align 8, !tbaa !66
  %2 = getelementptr inbounds %"struct.pov::Rainbow_Struct", ptr %1, i64 0, i32 1
  %3 = getelementptr inbounds %"struct.pov::Rainbow_Struct", ptr %1, i64 0, i32 6
  store double 0.000000e+00, ptr %3, align 8, !tbaa !71
  %4 = getelementptr inbounds %"struct.pov::Rainbow_Struct", ptr %1, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  store double 1.800000e+02, ptr %4, align 8, !tbaa !68
  %5 = getelementptr inbounds %"struct.pov::Rainbow_Struct", ptr %1, i64 0, i32 5
  store double 1.800000e+02, ptr %5, align 8, !tbaa !72
  %6 = getelementptr inbounds %"struct.pov::Rainbow_Struct", ptr %1, i64 0, i32 10
  store ptr null, ptr %6, align 8, !tbaa !64
  %7 = getelementptr inbounds %"struct.pov::Rainbow_Struct", ptr %1, i64 0, i32 7
  %8 = getelementptr inbounds %"struct.pov::Rainbow_Struct", ptr %1, i64 0, i32 9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %8, align 8, !tbaa !57
  %9 = getelementptr inbounds %"struct.pov::Rainbow_Struct", ptr %1, i64 0, i32 9, i64 1
  %10 = getelementptr inbounds %"struct.pov::Rainbow_Struct", ptr %1, i64 0, i32 8
  store double 0.000000e+00, ptr %10, align 8, !tbaa !57
  %11 = getelementptr inbounds %"struct.pov::Rainbow_Struct", ptr %1, i64 0, i32 8, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  store double 1.000000e+00, ptr %11, align 8, !tbaa !57
  %12 = getelementptr inbounds %"struct.pov::Rainbow_Struct", ptr %1, i64 0, i32 8, i64 2
  store double 0.000000e+00, ptr %12, align 8, !tbaa !57
  %13 = getelementptr inbounds %"struct.pov::Rainbow_Struct", ptr %1, i64 0, i32 11
  store ptr null, ptr %13, align 8, !tbaa !90
  ret ptr %1
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN3pov12Copy_RainbowEPNS_14Rainbow_StructE(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef 144, ptr noundef nonnull @.str, i32 noundef 1006, ptr noundef nonnull @.str.1)
  store double 1.000000e+07, ptr %2, align 8, !tbaa !66
  %3 = getelementptr inbounds %"struct.pov::Rainbow_Struct", ptr %2, i64 0, i32 1
  %4 = getelementptr inbounds %"struct.pov::Rainbow_Struct", ptr %2, i64 0, i32 6
  store double 0.000000e+00, ptr %4, align 8, !tbaa !71
  %5 = getelementptr inbounds %"struct.pov::Rainbow_Struct", ptr %2, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  store double 1.800000e+02, ptr %5, align 8, !tbaa !68
  %6 = getelementptr inbounds %"struct.pov::Rainbow_Struct", ptr %2, i64 0, i32 5
  store double 1.800000e+02, ptr %6, align 8, !tbaa !72
  %7 = getelementptr inbounds %"struct.pov::Rainbow_Struct", ptr %2, i64 0, i32 10
  store ptr null, ptr %7, align 8, !tbaa !64
  %8 = getelementptr inbounds %"struct.pov::Rainbow_Struct", ptr %2, i64 0, i32 7
  %9 = getelementptr inbounds %"struct.pov::Rainbow_Struct", ptr %2, i64 0, i32 9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  store double 1.000000e+00, ptr %9, align 8, !tbaa !57
  %10 = getelementptr inbounds %"struct.pov::Rainbow_Struct", ptr %2, i64 0, i32 9, i64 1
  %11 = getelementptr inbounds %"struct.pov::Rainbow_Struct", ptr %2, i64 0, i32 8
  store double 0.000000e+00, ptr %11, align 8, !tbaa !57
  %12 = getelementptr inbounds %"struct.pov::Rainbow_Struct", ptr %2, i64 0, i32 8, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  store double 1.000000e+00, ptr %12, align 8, !tbaa !57
  %13 = getelementptr inbounds %"struct.pov::Rainbow_Struct", ptr %2, i64 0, i32 8, i64 2
  store double 0.000000e+00, ptr %13, align 8, !tbaa !57
  %14 = getelementptr inbounds %"struct.pov::Rainbow_Struct", ptr %2, i64 0, i32 11
  store ptr null, ptr %14, align 8, !tbaa !90
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef nonnull align 8 dereferenceable(144) %0, i64 144, i1 false), !tbaa.struct !91
  ret ptr %2
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3pov15Destroy_RainbowEPNS_14Rainbow_StructE(ptr noundef %0) local_unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %"struct.pov::Rainbow_Struct", ptr %0, i64 0, i32 10
  %5 = load ptr, ptr %4, align 8, !tbaa !64
  tail call void @_ZN3pov15Destroy_PigmentEPNS_14Pigment_StructE(ptr noundef %5)
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef nonnull %0, ptr noundef nonnull @.str, i32 noundef 1108)
  br label %6

6:                                                ; preds = %3, %1
  ret void
}

declare void @_ZN3pov15Destroy_PigmentEPNS_14Pigment_StructE(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN3pov16Create_SkysphereEv() local_unnamed_addr #1 {
  %1 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef 24, ptr noundef nonnull @.str, i32 noundef 1146, ptr noundef nonnull @.str.1)
  store i32 0, ptr %1, align 8, !tbaa !58
  %2 = getelementptr inbounds %"struct.pov::Skysphere_Struct", ptr %1, i64 0, i32 1
  store ptr null, ptr %2, align 8, !tbaa !54
  %3 = tail call noundef ptr @_ZN3pov16Create_TransformEv()
  %4 = getelementptr inbounds %"struct.pov::Skysphere_Struct", ptr %1, i64 0, i32 2
  store ptr %3, ptr %4, align 8, !tbaa !56
  ret ptr %1
}

declare noundef ptr @_ZN3pov16Create_TransformEv() local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN3pov14Copy_SkysphereEPNS_16Skysphere_StructE(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef 24, ptr noundef nonnull @.str, i32 noundef 1146, ptr noundef nonnull @.str.1)
  store i32 0, ptr %2, align 8, !tbaa !58
  %3 = getelementptr inbounds %"struct.pov::Skysphere_Struct", ptr %2, i64 0, i32 1
  store ptr null, ptr %3, align 8, !tbaa !54
  %4 = tail call noundef ptr @_ZN3pov16Create_TransformEv()
  %5 = getelementptr inbounds %"struct.pov::Skysphere_Struct", ptr %2, i64 0, i32 2
  store ptr %4, ptr %5, align 8, !tbaa !56
  tail call void @_ZN3pov17Destroy_TransformEPNS_16Transform_StructE(ptr noundef %4)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !92
  %6 = getelementptr inbounds %"struct.pov::Skysphere_Struct", ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !56
  %8 = tail call noundef ptr @_ZN3pov14Copy_TransformEPNS_16Transform_StructE(ptr noundef %7)
  store ptr %8, ptr %5, align 8, !tbaa !56
  %9 = load i32, ptr %2, align 8, !tbaa !58
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %31

11:                                               ; preds = %1
  %12 = zext nneg i32 %9 to i64
  %13 = shl nuw nsw i64 %12, 3
  %14 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef %13, ptr noundef nonnull @.str, i32 noundef 1204, ptr noundef nonnull @.str.2)
  store ptr %14, ptr %3, align 8, !tbaa !54
  %15 = load i32, ptr %2, align 8, !tbaa !58
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %31

17:                                               ; preds = %11
  %18 = getelementptr inbounds %"struct.pov::Skysphere_Struct", ptr %0, i64 0, i32 1
  br label %19

19:                                               ; preds = %17, %19
  %20 = phi i64 [ 0, %17 ], [ %27, %19 ]
  %21 = load ptr, ptr %18, align 8, !tbaa !54
  %22 = getelementptr inbounds ptr, ptr %21, i64 %20
  %23 = load ptr, ptr %22, align 8, !tbaa !59
  %24 = tail call noundef ptr @_ZN3pov12Copy_PigmentEPNS_14Pigment_StructE(ptr noundef %23)
  %25 = load ptr, ptr %3, align 8, !tbaa !54
  %26 = getelementptr inbounds ptr, ptr %25, i64 %20
  store ptr %24, ptr %26, align 8, !tbaa !59
  %27 = add nuw nsw i64 %20, 1
  %28 = load i32, ptr %2, align 8, !tbaa !58
  %29 = sext i32 %28 to i64
  %30 = icmp slt i64 %27, %29
  br i1 %30, label %19, label %31, !llvm.loop !93

31:                                               ; preds = %19, %11, %1
  ret ptr %2
}

declare void @_ZN3pov17Destroy_TransformEPNS_16Transform_StructE(ptr noundef) local_unnamed_addr #3

declare noundef ptr @_ZN3pov14Copy_TransformEPNS_16Transform_StructE(ptr noundef) local_unnamed_addr #3

declare noundef ptr @_ZN3pov12Copy_PigmentEPNS_14Pigment_StructE(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3pov17Destroy_SkysphereEPNS_16Skysphere_StructE(ptr noundef %0) local_unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %22, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !58
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %17

6:                                                ; preds = %3
  %7 = getelementptr inbounds %"struct.pov::Skysphere_Struct", ptr %0, i64 0, i32 1
  br label %8

8:                                                ; preds = %6, %8
  %9 = phi i64 [ 0, %6 ], [ %13, %8 ]
  %10 = load ptr, ptr %7, align 8, !tbaa !54
  %11 = getelementptr inbounds ptr, ptr %10, i64 %9
  %12 = load ptr, ptr %11, align 8, !tbaa !59
  tail call void @_ZN3pov15Destroy_PigmentEPNS_14Pigment_StructE(ptr noundef %12)
  %13 = add nuw nsw i64 %9, 1
  %14 = load i32, ptr %0, align 8, !tbaa !58
  %15 = sext i32 %14 to i64
  %16 = icmp slt i64 %13, %15
  br i1 %16, label %8, label %17, !llvm.loop !94

17:                                               ; preds = %8, %3
  %18 = getelementptr inbounds %"struct.pov::Skysphere_Struct", ptr %0, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !54
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef %19, ptr noundef nonnull @.str, i32 noundef 1256)
  store ptr null, ptr %18, align 8, !tbaa !54
  %20 = getelementptr inbounds %"struct.pov::Skysphere_Struct", ptr %0, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !56
  tail call void @_ZN3pov17Destroy_TransformEPNS_16Transform_StructE(ptr noundef %21)
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef nonnull %0, ptr noundef nonnull @.str, i32 noundef 1260)
  br label %22

22:                                               ; preds = %17, %1
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3pov16Rotate_SkysphereEPNS_16Skysphere_StructEPd(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = alloca %"struct.pov::Transform_Struct", align 8
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %3) #8
  call void @_ZN3pov26Compute_Rotation_TransformEPNS_16Transform_StructEPd(ptr noundef nonnull %3, ptr noundef %1)
  %4 = getelementptr inbounds %"struct.pov::Skysphere_Struct", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !56
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = call noundef ptr @_ZN3pov16Create_TransformEv()
  store ptr %8, ptr %4, align 8, !tbaa !56
  br label %9

9:                                                ; preds = %2, %7
  %10 = load ptr, ptr %4, align 8, !tbaa !56
  call void @_ZN3pov18Compose_TransformsEPNS_16Transform_StructES1_(ptr noundef %10, ptr noundef nonnull %3)
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %3) #8
  ret void
}

declare void @_ZN3pov26Compute_Rotation_TransformEPNS_16Transform_StructEPd(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3pov19Transform_SkysphereEPNS_16Skysphere_StructEPNS_16Transform_StructE(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %"struct.pov::Skysphere_Struct", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !56
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call noundef ptr @_ZN3pov16Create_TransformEv()
  store ptr %7, ptr %3, align 8, !tbaa !56
  br label %8

8:                                                ; preds = %6, %2
  %9 = load ptr, ptr %3, align 8, !tbaa !56
  tail call void @_ZN3pov18Compose_TransformsEPNS_16Transform_StructES1_(ptr noundef %9, ptr noundef %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3pov15Scale_SkysphereEPNS_16Skysphere_StructEPd(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = alloca %"struct.pov::Transform_Struct", align 8
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %3) #8
  call void @_ZN3pov25Compute_Scaling_TransformEPNS_16Transform_StructEPd(ptr noundef nonnull %3, ptr noundef %1)
  %4 = getelementptr inbounds %"struct.pov::Skysphere_Struct", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !56
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = call noundef ptr @_ZN3pov16Create_TransformEv()
  store ptr %8, ptr %4, align 8, !tbaa !56
  br label %9

9:                                                ; preds = %2, %7
  %10 = load ptr, ptr %4, align 8, !tbaa !56
  call void @_ZN3pov18Compose_TransformsEPNS_16Transform_StructES1_(ptr noundef %10, ptr noundef nonnull %3)
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %3) #8
  ret void
}

declare void @_ZN3pov25Compute_Scaling_TransformEPNS_16Transform_StructEPd(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3pov19Translate_SkysphereEPNS_16Skysphere_StructEPd(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = alloca %"struct.pov::Transform_Struct", align 8
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %3) #8
  call void @_ZN3pov29Compute_Translation_TransformEPNS_16Transform_StructEPd(ptr noundef nonnull %3, ptr noundef %1)
  %4 = getelementptr inbounds %"struct.pov::Skysphere_Struct", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !56
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = call noundef ptr @_ZN3pov16Create_TransformEv()
  store ptr %8, ptr %4, align 8, !tbaa !56
  br label %9

9:                                                ; preds = %2, %7
  %10 = load ptr, ptr %4, align 8, !tbaa !56
  call void @_ZN3pov18Compose_TransformsEPNS_16Transform_StructES1_(ptr noundef %10, ptr noundef nonnull %3)
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %3) #8
  ret void
}

declare void @_ZN3pov29Compute_Translation_TransformEPNS_16Transform_StructEPd(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_ZN3pov18Compose_TransformsEPNS_16Transform_StructES1_(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @atan(double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @exp(double noundef) local_unnamed_addr #6

declare noundef double @_ZN3pov10TurbulenceEPdPNS_11Turb_StructEPNS_14Pattern_StructE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @acos(double noundef) local_unnamed_addr #6

declare noundef i32 @_ZN3pov8POV_RANDEv() local_unnamed_addr #3

declare noundef i32 @_ZN3pov15Compute_PigmentEPfPNS_14Pigment_StructEPdPNS_10istk_entryE(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_ZN3pov14MInvTransPointEPdS0_PNS_16Transform_StructE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!34 = !{!35, !36, i64 0}
!35 = !{!"_ZTSN3pov14OPTIONS_STRUCTE", !36, i64 0, !37, i64 4, !37, i64 5, !37, i64 6, !36, i64 8, !36, i64 12, !37, i64 16, !37, i64 4112, !37, i64 8208, !37, i64 12304, !37, i64 16400, !39, i64 20496, !39, i64 20500, !36, i64 20504, !36, i64 20508, !40, i64 20512, !41, i64 20520, !40, i64 20528, !36, i64 20536, !37, i64 20544, !36, i64 20744, !36, i64 20748, !36, i64 20752, !40, i64 20760, !40, i64 20768, !36, i64 20776, !36, i64 20780, !40, i64 20784, !40, i64 20792, !36, i64 20800, !41, i64 20804, !42, i64 20808, !36, i64 20816, !36, i64 20820, !36, i64 20824, !43, i64 20832, !40, i64 20920, !42, i64 20928, !40, i64 20936, !40, i64 20944, !40, i64 20952, !40, i64 20960, !40, i64 20968, !42, i64 20976, !36, i64 20984, !42, i64 20992, !36, i64 21000, !36, i64 21004, !36, i64 21008, !36, i64 21012, !36, i64 21016, !36, i64 21020, !40, i64 21024, !40, i64 21032, !40, i64 21040, !36, i64 21048, !36, i64 21052, !45, i64 21056, !45, i64 21064, !36, i64 21072, !41, i64 21076, !40, i64 21080, !40, i64 21088, !36, i64 21096, !36, i64 21100, !41, i64 21104, !46, i64 21108, !36, i64 21112, !37, i64 21116, !37, i64 25212, !37, i64 26772, !37, i64 30868, !36, i64 34964, !36, i64 34968, !42, i64 34976, !36, i64 34984, !36, i64 34988, !36, i64 34992, !47, i64 35000}
!36 = !{!"int", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C++ TBAA"}
!39 = !{!"float", !37, i64 0}
!40 = !{!"double", !37, i64 0}
!41 = !{!"bool", !37, i64 0}
!42 = !{!"long", !37, i64 0}
!43 = !{!"_ZTSN3pov8FRAMESEQE", !44, i64 0, !40, i64 8, !36, i64 16, !36, i64 20, !40, i64 24, !36, i64 32, !36, i64 36, !40, i64 40, !36, i64 48, !40, i64 56, !36, i64 64, !40, i64 72, !41, i64 80, !41, i64 81}
!44 = !{!"_ZTSN3pov9FRAMETYPEE", !37, i64 0}
!45 = !{!"any pointer", !37, i64 0}
!46 = !{!"_ZTSN3pov15Histogram_TypesE", !37, i64 0}
!47 = !{!"_ZTS9POVMSData", !36, i64 0, !36, i64 4, !37, i64 8}
!48 = !{!41, !41, i64 0}
!49 = !{i8 0, i8 2}
!50 = !{}
!51 = !{!39, !39, i64 0}
!52 = !{!53, !45, i64 152}
!53 = !{!"_ZTSN3pov12Frame_StructE", !45, i64 0, !36, i64 8, !36, i64 12, !36, i64 16, !45, i64 24, !45, i64 32, !40, i64 40, !40, i64 48, !40, i64 56, !37, i64 64, !37, i64 84, !37, i64 104, !45, i64 128, !45, i64 136, !45, i64 144, !45, i64 152, !45, i64 160}
!54 = !{!55, !45, i64 8}
!55 = !{!"_ZTSN3pov16Skysphere_StructE", !36, i64 0, !45, i64 8, !45, i64 16}
!56 = !{!55, !45, i64 16}
!57 = !{!40, !40, i64 0}
!58 = !{!55, !36, i64 0}
!59 = !{!45, !45, i64 0}
!60 = distinct !{!60, !61, !62}
!61 = !{!"llvm.loop.mustprogress"}
!62 = !{!"llvm.loop.unroll.disable"}
!63 = !{!53, !45, i64 144}
!64 = !{!65, !45, i64 128}
!65 = !{!"_ZTSN3pov14Rainbow_StructE", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !40, i64 32, !40, i64 40, !40, i64 48, !37, i64 56, !37, i64 80, !37, i64 104, !45, i64 128, !45, i64 136}
!66 = !{!65, !40, i64 0}
!67 = !{!65, !40, i64 24}
!68 = !{!65, !40, i64 32}
!69 = !{!65, !40, i64 16}
!70 = !{!65, !40, i64 8}
!71 = !{!65, !40, i64 48}
!72 = !{!65, !40, i64 40}
!73 = !{!74, !40, i64 0}
!74 = !{!"_ZTSN3pov10istk_entryE", !40, i64 0, !37, i64 8, !37, i64 32, !37, i64 56, !37, i64 80, !45, i64 96, !36, i64 104, !36, i64 108, !40, i64 112, !40, i64 120, !40, i64 128, !40, i64 136, !40, i64 144, !40, i64 152, !40, i64 160, !40, i64 168, !40, i64 176, !45, i64 184, !45, i64 192}
!75 = distinct !{!75, !61, !62}
!76 = !{!53, !45, i64 128}
!77 = !{!53, !45, i64 136}
!78 = !{!79, !40, i64 8}
!79 = !{!"_ZTSN3pov10Fog_StructE", !36, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !37, i64 32, !37, i64 56, !45, i64 80, !39, i64 88, !45, i64 96}
!80 = !{!79, !36, i64 0}
!81 = !{!79, !40, i64 24}
!82 = !{!79, !40, i64 16}
!83 = !{!79, !45, i64 80}
!84 = !{!79, !39, i64 88}
!85 = distinct !{!85, !61, !62}
!86 = !{!79, !45, i64 96}
!87 = !{i64 0, i64 4, !88, i64 8, i64 8, !57, i64 16, i64 8, !57, i64 24, i64 8, !57, i64 32, i64 20, !89, i64 56, i64 24, !89, i64 80, i64 8, !59, i64 88, i64 4, !51, i64 96, i64 8, !59}
!88 = !{!36, !36, i64 0}
!89 = !{!37, !37, i64 0}
!90 = !{!65, !45, i64 136}
!91 = !{i64 0, i64 8, !57, i64 8, i64 8, !57, i64 16, i64 8, !57, i64 24, i64 8, !57, i64 32, i64 8, !57, i64 40, i64 8, !57, i64 48, i64 8, !57, i64 56, i64 24, !89, i64 80, i64 24, !89, i64 104, i64 24, !89, i64 128, i64 8, !59, i64 136, i64 8, !59}
!92 = !{i64 0, i64 4, !88, i64 8, i64 8, !59, i64 16, i64 8, !59}
!93 = distinct !{!93, !61, !62}
!94 = distinct !{!94, !61, !62}

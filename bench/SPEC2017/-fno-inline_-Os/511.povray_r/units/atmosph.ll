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
%"struct.pov::Transform_Struct" = type { [4 x [4 x double]], [4 x [4 x double]] }
%"struct.pov::Turb_Struct" = type { i16, ptr, ptr, [3 x double], i32, float, float }

$_ZN3pov13Assign_ColourEPfS0_ = comdat any

$_ZN3pov12Make_ColourAEPffffff = comdat any

$_ZN3pov11Make_VectorEPdddd = comdat any

$_ZN3pov15CRGBAddScaledEqEPffPKf = comdat any

$_ZN3pov12VEvaluateRayEPdPKddS2_ = comdat any

$_ZN3pov9VLinComb2EPddPKddS2_ = comdat any

$_ZN3pov4VDotERdPKdS2_ = comdat any

$_ZN3pov3SqrEd = comdat any

$_ZN3pov5VHalfEPdPKdS2_ = comdat any

$_ZN3pov11VEvaluateEqEPdPKd = comdat any

$_ZSt3minIdERKT_S2_S2_ = comdat any

$_ZSt3maxIdERKT_S2_S2_ = comdat any

$_ZN3pov11Make_ColourEPffff = comdat any

$_ZN3pov13Assign_VectorEPdS0_ = comdat any

$_ZSt4fabsf = comdat any

@_ZN3pov4optsE = external local_unnamed_addr global %"struct.pov::OPTIONS_STRUCT", align 8
@_ZN3pov17In_Reflection_RayE = external local_unnamed_addr global i8, align 1
@_ZN3pov21Radiosity_Trace_LevelE = external local_unnamed_addr global i32, align 4
@_ZN3pov5FrameE = external global %"struct.pov::Frame_Struct", align 8
@.str = private unnamed_addr constant [12 x i8] c"atmosph.cpp\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"fog\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"skysphere pigment\00", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN3pov26Initialize_Atmosphere_CodeEv() local_unnamed_addr #0 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN3pov28Deinitialize_Atmosphere_CodeEv() local_unnamed_addr #0 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN3pov22Do_Infinite_AtmosphereEPNS_10Ray_StructEPf(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = load i32, ptr @_ZN3pov4optsE, align 8, !tbaa !34
  %4 = and i32 %3, 65536
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %14, label %6

6:                                                ; preds = %2
  %7 = load i8, ptr @_ZN3pov17In_Reflection_RayE, align 1, !tbaa !48, !range !49, !noundef !50
  %8 = icmp ne i8 %7, 0
  %9 = load i32, ptr @_ZN3pov21Radiosity_Trace_LevelE, align 4
  %10 = icmp sgt i32 %9, 1
  %11 = select i1 %8, i1 true, i1 %10
  br i1 %11, label %14, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds float, ptr %1, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %13, align 4, !tbaa !51
  br label %16

14:                                               ; preds = %6, %2
  tail call void @_ZN3pov13Assign_ColourEPfS0_(ptr noundef %1, ptr noundef nonnull getelementptr inbounds (%"struct.pov::Frame_Struct", ptr @_ZN3pov5FrameE, i64 0, i32 9)) #10
  %15 = getelementptr inbounds float, ptr %1, i64 3
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %15, align 4, !tbaa !51
  tail call fastcc void @_ZN3povL12do_skysphereEPNS_10Ray_StructEPf(ptr noundef %0, ptr noundef %1) #10
  br label %16

16:                                               ; preds = %14, %12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov13Assign_ColourEPfS0_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 comdat {
  %3 = load float, ptr %1, align 4, !tbaa !51
  store float %3, ptr %0, align 4, !tbaa !51
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !51
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !51
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !51
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !51
  %10 = getelementptr inbounds float, ptr %1, i64 3
  %11 = load float, ptr %10, align 4, !tbaa !51
  %12 = getelementptr inbounds float, ptr %0, i64 3
  store float %11, ptr %12, align 4, !tbaa !51
  %13 = getelementptr inbounds float, ptr %1, i64 4
  %14 = load float, ptr %13, align 4, !tbaa !51
  %15 = getelementptr inbounds float, ptr %0, i64 4
  store float %14, ptr %15, align 4, !tbaa !51
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal fastcc void @_ZN3povL12do_skysphereEPNS_10Ray_StructEPf(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #1 !PGOFuncName !52 {
  %3 = alloca [5 x float], align 16
  %4 = alloca [5 x float], align 16
  %5 = alloca [5 x float], align 16
  %6 = alloca [3 x double], align 16
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #11
  %7 = load ptr, ptr getelementptr inbounds (%"struct.pov::Frame_Struct", ptr @_ZN3pov5FrameE, i64 0, i32 15), align 8, !tbaa !53
  %8 = icmp eq ptr %7, null
  br i1 %8, label %83, label %9

9:                                                ; preds = %2
  call void @_ZN3pov11Make_ColourEPffff(ptr noundef nonnull %3, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00) #10
  %10 = load ptr, ptr getelementptr inbounds (%"struct.pov::Frame_Struct", ptr @_ZN3pov5FrameE, i64 0, i32 15), align 8, !tbaa !53
  %11 = icmp eq ptr %10, null
  br i1 %11, label %83, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %"struct.pov::Skysphere_Struct", ptr %10, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !55
  %15 = icmp eq ptr %14, null
  br i1 %15, label %83, label %16

16:                                               ; preds = %12
  call void @_ZN3pov12Make_ColourAEPffffff(ptr noundef nonnull %5, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00) #10
  %17 = getelementptr inbounds %"struct.pov::Skysphere_Struct", ptr %10, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !57
  %19 = icmp eq ptr %18, null
  %20 = getelementptr inbounds %"struct.pov::Ray_Struct", ptr %0, i64 0, i32 1
  br i1 %19, label %22, label %21

21:                                               ; preds = %16
  call void @_ZN3pov14MInvTransPointEPdS0_PNS_16Transform_StructE(ptr noundef nonnull %6, ptr noundef nonnull %20, ptr noundef nonnull %18) #10
  br label %23

22:                                               ; preds = %16
  call void @_ZN3pov13Assign_VectorEPdS0_(ptr noundef nonnull %6, ptr noundef nonnull %20) #10
  br label %23

23:                                               ; preds = %22, %21
  %24 = load i32, ptr %10, align 8, !tbaa !58
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %60

26:                                               ; preds = %23
  %27 = getelementptr inbounds [5 x float], ptr %4, i64 0, i64 3
  %28 = getelementptr inbounds [5 x float], ptr %4, i64 0, i64 4
  %29 = getelementptr inbounds [5 x float], ptr %5, i64 0, i64 4
  %30 = zext nneg i32 %24 to i64
  br label %31

31:                                               ; preds = %26, %31
  %32 = phi i64 [ %30, %26 ], [ %34, %31 ]
  %33 = phi double [ 1.000000e+00, %26 ], [ %58, %31 ]
  %34 = add nsw i64 %32, -1
  %35 = load ptr, ptr %13, align 8, !tbaa !55
  %36 = getelementptr inbounds ptr, ptr %35, i64 %34
  %37 = load ptr, ptr %36, align 8, !tbaa !59
  %38 = call noundef i32 @_ZN3pov15Compute_PigmentEPfPNS_14Pigment_StructEPdPNS_10istk_entryE(ptr noundef nonnull %4, ptr noundef %37, ptr noundef nonnull %6, ptr noundef null) #10
  %39 = load float, ptr %27, align 4, !tbaa !51
  %40 = fpext float %39 to double
  %41 = fsub double 1.000000e+00, %40
  %42 = load float, ptr %28, align 16, !tbaa !51
  %43 = fpext float %42 to double
  %44 = fsub double %41, %43
  %45 = fmul double %33, %44
  %46 = fptrunc double %45 to float
  call void @_ZN3pov15CRGBAddScaledEqEPffPKf(ptr noundef nonnull %3, float noundef %46, ptr noundef nonnull %4) #10
  %47 = load <4 x float>, ptr %4, align 16, !tbaa !51
  %48 = load <4 x float>, ptr %5, align 16, !tbaa !51
  %49 = fmul <4 x float> %47, %48
  store <4 x float> %49, ptr %5, align 16, !tbaa !51
  %50 = load float, ptr %28, align 16, !tbaa !51
  %51 = load float, ptr %29, align 16, !tbaa !51
  %52 = fmul float %50, %51
  store float %52, ptr %29, align 16, !tbaa !51
  %53 = extractelement <4 x float> %49, i64 3
  %54 = call noundef float @_ZSt4fabsf(float noundef %53) #10
  %55 = load float, ptr %29, align 16, !tbaa !51
  %56 = call noundef float @_ZSt4fabsf(float noundef %55) #10
  %57 = fadd float %54, %56
  %58 = fpext float %57 to double
  %59 = icmp ugt i64 %32, 1
  br i1 %59, label %31, label %60, !llvm.loop !60

60:                                               ; preds = %31, %23
  %61 = getelementptr inbounds [5 x float], ptr %5, i64 0, i64 3
  %62 = getelementptr inbounds [5 x float], ptr %3, i64 0, i64 2
  %63 = load float, ptr %62, align 8, !tbaa !51
  %64 = getelementptr inbounds float, ptr %1, i64 2
  %65 = load float, ptr %64, align 4, !tbaa !51
  %66 = getelementptr inbounds [5 x float], ptr %5, i64 0, i64 2
  %67 = load float, ptr %66, align 8, !tbaa !51
  %68 = getelementptr inbounds float, ptr %1, i64 3
  %69 = load <2 x float>, ptr %61, align 4, !tbaa !51
  %70 = extractelement <2 x float> %69, i64 0
  %71 = extractelement <2 x float> %69, i64 1
  %72 = load <2 x float>, ptr %3, align 16, !tbaa !51
  %73 = load <2 x float>, ptr %1, align 4, !tbaa !51
  %74 = load <2 x float>, ptr %5, align 16, !tbaa !51
  %75 = shufflevector <2 x float> %69, <2 x float> poison, <2 x i32> zeroinitializer
  %76 = shufflevector <2 x float> %69, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %77 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %74, <2 x float> %75, <2 x float> %76)
  %78 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %73, <2 x float> %77, <2 x float> %72)
  store <2 x float> %78, ptr %1, align 4, !tbaa !51
  %79 = call float @llvm.fmuladd.f32(float %67, float %70, float %71)
  %80 = call float @llvm.fmuladd.f32(float %65, float %79, float %63)
  store float %80, ptr %64, align 4, !tbaa !51
  %81 = load <2 x float>, ptr %68, align 4, !tbaa !51
  %82 = fmul <2 x float> %69, %81
  store <2 x float> %82, ptr %68, align 4, !tbaa !51
  br label %83

83:                                               ; preds = %9, %12, %60, %2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN3pov20Do_Finite_AtmosphereEPNS_10Ray_StructEPNS_10istk_entryEPfi(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #1 {
  %5 = alloca [2 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #11
  %6 = icmp eq i32 %3, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %4
  tail call fastcc void @_ZN3povL10do_rainbowEPNS_10Ray_StructEPNS_10istk_entryEPf(ptr noundef %0, ptr noundef %1, ptr noundef %2) #10
  br label %8

8:                                                ; preds = %7, %4
  %9 = load ptr, ptr getelementptr inbounds (%"struct.pov::Frame_Struct", ptr @_ZN3pov5FrameE, i64 0, i32 12), align 8, !tbaa !62
  store ptr %9, ptr %5, align 16, !tbaa !59
  %10 = getelementptr inbounds [2 x ptr], ptr %5, i64 0, i64 1
  store ptr null, ptr %10, align 8, !tbaa !59
  call void @_ZN3pov14Simulate_MediaEPPNS_12Media_StructEPNS_10Ray_StructEPNS_10istk_entryEPfi(ptr noundef nonnull %5, ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #10
  call fastcc void @_ZN3povL6do_fogEPNS_10Ray_StructEPNS_10istk_entryEPfi(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #11
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress noinline optsize uwtable
define internal fastcc void @_ZN3povL10do_rainbowEPNS_10Ray_StructEPNS_10istk_entryEPf(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #1 !PGOFuncName !63 {
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca [3 x double], align 16
  %9 = alloca [5 x float], align 16
  %10 = alloca [5 x float], align 16
  %11 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %9) #11
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %10) #11
  %12 = load ptr, ptr getelementptr inbounds (%"struct.pov::Frame_Struct", ptr @_ZN3pov5FrameE, i64 0, i32 14), align 8, !tbaa !64
  %13 = icmp eq ptr %12, null
  br i1 %13, label %184, label %14

14:                                               ; preds = %3
  call void @_ZN3pov12Make_ColourAEPffffff(ptr noundef nonnull %10, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00) #10
  %15 = load ptr, ptr getelementptr inbounds (%"struct.pov::Frame_Struct", ptr @_ZN3pov5FrameE, i64 0, i32 14), align 8, !tbaa !59
  %16 = icmp eq ptr %15, null
  br i1 %16, label %184, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %"struct.pov::Ray_Struct", ptr %0, i64 0, i32 1
  %19 = getelementptr inbounds [5 x float], ptr %9, i64 0, i64 4
  %20 = getelementptr inbounds [5 x float], ptr %9, i64 0, i64 3
  %21 = getelementptr inbounds float, ptr %2, i64 2
  %22 = getelementptr inbounds [5 x float], ptr %9, i64 0, i64 2
  %23 = getelementptr inbounds [5 x float], ptr %10, i64 0, i64 4
  br label %24

24:                                               ; preds = %17, %161
  %25 = phi ptr [ %15, %17 ], [ %164, %161 ]
  %26 = phi i32 [ 0, %17 ], [ %162, %161 ]
  %27 = getelementptr inbounds %"struct.pov::Rainbow_Struct", ptr %25, i64 0, i32 10
  %28 = load ptr, ptr %27, align 8, !tbaa !65
  %29 = icmp eq ptr %28, null
  br i1 %29, label %161, label %30

30:                                               ; preds = %24
  %31 = load double, ptr %25, align 8, !tbaa !67
  %32 = fcmp une double %31, 0.000000e+00
  br i1 %32, label %33, label %161

33:                                               ; preds = %30
  %34 = getelementptr inbounds %"struct.pov::Rainbow_Struct", ptr %25, i64 0, i32 3
  %35 = load double, ptr %34, align 8, !tbaa !68
  %36 = fcmp une double %35, 0.000000e+00
  br i1 %36, label %37, label %161

37:                                               ; preds = %33
  %38 = getelementptr inbounds %"struct.pov::Rainbow_Struct", ptr %25, i64 0, i32 9
  call void @_ZN3pov4VDotERdPKdS2_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %18, ptr noundef nonnull %38) #10
  %39 = getelementptr inbounds %"struct.pov::Rainbow_Struct", ptr %25, i64 0, i32 8
  call void @_ZN3pov4VDotERdPKdS2_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %18, ptr noundef nonnull %39) #10
  %40 = load double, ptr %6, align 8, !tbaa !69
  %41 = call noundef double @_ZN3pov3SqrEd(double noundef %40) #10
  %42 = load double, ptr %7, align 8, !tbaa !69
  %43 = call noundef double @_ZN3pov3SqrEd(double noundef %42) #10
  %44 = fadd double %41, %43
  %45 = fcmp ogt double %44, 0.000000e+00
  br i1 %45, label %48, label %46

46:                                               ; preds = %37
  %47 = load double, ptr %7, align 8, !tbaa !69
  br label %52

48:                                               ; preds = %37
  %49 = call double @sqrt(double noundef %44) #12
  %50 = load double, ptr %7, align 8, !tbaa !69
  %51 = fdiv double %50, %49
  store double %51, ptr %7, align 8, !tbaa !69
  br label %52

52:                                               ; preds = %46, %48
  %53 = phi double [ %47, %46 ], [ %51, %48 ]
  %54 = call double @acos(double noundef %53) #12
  %55 = call double @llvm.fabs.f64(double %54)
  %56 = getelementptr inbounds %"struct.pov::Rainbow_Struct", ptr %25, i64 0, i32 4
  %57 = load double, ptr %56, align 8, !tbaa !70
  %58 = fcmp ugt double %55, %57
  br i1 %58, label %161, label %59

59:                                               ; preds = %52
  %60 = getelementptr inbounds %"struct.pov::Rainbow_Struct", ptr %25, i64 0, i32 7
  call void @_ZN3pov4VDotERdPKdS2_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %18, ptr noundef nonnull %60) #10
  %61 = load double, ptr %4, align 8, !tbaa !69
  %62 = fcmp ult double %61, 0.000000e+00
  br i1 %62, label %161, label %63

63:                                               ; preds = %59
  %64 = call double @acos(double noundef %61) #12
  %65 = getelementptr inbounds %"struct.pov::Rainbow_Struct", ptr %25, i64 0, i32 2
  %66 = load double, ptr %65, align 8, !tbaa !71
  %67 = fsub double %64, %66
  %68 = load double, ptr %34, align 8, !tbaa !68
  %69 = fdiv double %67, %68
  %70 = getelementptr inbounds %"struct.pov::Rainbow_Struct", ptr %25, i64 0, i32 1
  %71 = load double, ptr %70, align 8, !tbaa !72
  %72 = fcmp ogt double %71, 0.000000e+00
  br i1 %72, label %73, label %80

73:                                               ; preds = %63
  %74 = call noundef i32 @_ZN3pov8POV_RANDEv() #10
  %75 = sitofp i32 %74 to double
  %76 = fmul double %75, 0x3F0000200040021E
  %77 = call double @llvm.fmuladd.f64(double %76, double 2.000000e+00, double -1.000000e+00)
  %78 = load double, ptr %70, align 8, !tbaa !72
  %79 = call double @llvm.fmuladd.f64(double %77, double %78, double %69)
  br label %80

80:                                               ; preds = %73, %63
  %81 = phi double [ %79, %73 ], [ %69, %63 ]
  %82 = fcmp oge double %81, 0.000000e+00
  %83 = fcmp ole double %81, 0x3FEFFFFFCA501ACB
  %84 = and i1 %82, %83
  br i1 %84, label %85, label %161

85:                                               ; preds = %80
  call void @_ZN3pov11Make_VectorEPdddd(ptr noundef nonnull %8, double noundef %81, double noundef 0.000000e+00, double noundef 0.000000e+00) #10
  %86 = load ptr, ptr %27, align 8, !tbaa !65
  %87 = call noundef i32 @_ZN3pov15Compute_PigmentEPfPNS_14Pigment_StructEPdPNS_10istk_entryE(ptr noundef nonnull %9, ptr noundef %86, ptr noundef nonnull %8, ptr noundef %1) #10
  %88 = getelementptr inbounds %"struct.pov::Rainbow_Struct", ptr %25, i64 0, i32 6
  %89 = load double, ptr %88, align 8, !tbaa !73
  %90 = fcmp ogt double %89, 0.000000e+00
  br i1 %90, label %91, label %101

91:                                               ; preds = %85
  %92 = getelementptr inbounds %"struct.pov::Rainbow_Struct", ptr %25, i64 0, i32 5
  %93 = load double, ptr %92, align 8, !tbaa !74
  %94 = fcmp ogt double %55, %93
  br i1 %94, label %95, label %101

95:                                               ; preds = %91
  %96 = fsub double %55, %93
  %97 = fdiv double %96, %89
  %98 = call double @llvm.fmuladd.f64(double %97, double -2.000000e+00, double 3.000000e+00)
  %99 = fmul double %97, %98
  %100 = fmul double %97, %99
  br label %101

101:                                              ; preds = %85, %91, %95
  %102 = phi double [ %100, %95 ], [ 0.000000e+00, %91 ], [ 0.000000e+00, %85 ]
  %103 = load double, ptr %1, align 8, !tbaa !75
  %104 = fneg double %103
  %105 = load double, ptr %25, align 8, !tbaa !67
  %106 = fdiv double %104, %105
  %107 = call double @exp(double noundef %106) #12
  store double %107, ptr %5, align 8, !tbaa !69
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #11
  %108 = load float, ptr %19, align 16, !tbaa !51
  %109 = fpext float %108 to double
  %110 = fsub double 1.000000e+00, %109
  %111 = call double @llvm.fmuladd.f64(double %102, double %110, double %109)
  store double %111, ptr %11, align 8, !tbaa !69
  %112 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %11) #10
  %113 = load double, ptr %112, align 8, !tbaa !69
  store double %113, ptr %5, align 8, !tbaa !69
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #11
  %114 = fsub double 1.000000e+00, %113
  %115 = load float, ptr %20, align 4, !tbaa !51
  %116 = fpext float %115 to double
  %117 = fmul double %114, %116
  %118 = fsub double 1.000000e+00, %117
  %119 = load <2 x float>, ptr %2, align 4, !tbaa !51
  %120 = fpext <2 x float> %119 to <2 x double>
  %121 = insertelement <2 x double> poison, double %113, i64 0
  %122 = shufflevector <2 x double> %121, <2 x double> poison, <2 x i32> zeroinitializer
  %123 = fmul <2 x double> %122, %120
  %124 = load <2 x float>, ptr %9, align 16, !tbaa !51
  %125 = fpext <2 x float> %124 to <2 x double>
  %126 = insertelement <2 x double> poison, double %117, i64 0
  %127 = shufflevector <2 x double> %126, <2 x double> poison, <2 x i32> zeroinitializer
  %128 = insertelement <2 x double> poison, double %118, i64 0
  %129 = shufflevector <2 x double> %128, <2 x double> poison, <2 x i32> zeroinitializer
  %130 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %127, <2 x double> %125, <2 x double> %129)
  %131 = insertelement <2 x double> poison, double %114, i64 0
  %132 = shufflevector <2 x double> %131, <2 x double> poison, <2 x i32> zeroinitializer
  %133 = fmul <2 x double> %132, %125
  %134 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %123, <2 x double> %130, <2 x double> %133)
  %135 = load float, ptr %21, align 4, !tbaa !51
  %136 = fpext float %135 to double
  %137 = fmul double %113, %136
  %138 = load float, ptr %22, align 8, !tbaa !51
  %139 = fpext float %138 to double
  %140 = call double @llvm.fmuladd.f64(double %117, double %139, double %118)
  %141 = fmul double %114, %139
  %142 = call double @llvm.fmuladd.f64(double %137, double %140, double %141)
  %143 = fmul double %113, %116
  %144 = load <4 x float>, ptr %10, align 16, !tbaa !51
  %145 = fpext <4 x float> %144 to <4 x double>
  %146 = shufflevector <2 x double> %134, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %147 = insertelement <4 x double> %146, double %142, i64 2
  %148 = insertelement <4 x double> %147, double %143, i64 3
  %149 = fadd <4 x double> %148, %145
  %150 = fmul <4 x double> %148, %145
  %151 = shufflevector <4 x double> %149, <4 x double> %150, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %152 = fptrunc <4 x double> %151 to <4 x float>
  store <4 x float> %152, ptr %10, align 16, !tbaa !51
  %153 = load float, ptr %19, align 16, !tbaa !51
  %154 = fpext float %153 to double
  %155 = fmul double %113, %154
  %156 = load float, ptr %23, align 16, !tbaa !51
  %157 = fpext float %156 to double
  %158 = fmul double %155, %157
  %159 = fptrunc double %158 to float
  store float %159, ptr %23, align 16, !tbaa !51
  %160 = add nsw i32 %26, 1
  br label %161

161:                                              ; preds = %24, %30, %33, %59, %101, %80, %52
  %162 = phi i32 [ %160, %101 ], [ %26, %80 ], [ %26, %59 ], [ %26, %52 ], [ %26, %33 ], [ %26, %30 ], [ %26, %24 ]
  %163 = getelementptr inbounds %"struct.pov::Rainbow_Struct", ptr %25, i64 0, i32 11
  %164 = load ptr, ptr %163, align 8, !tbaa !59
  %165 = icmp eq ptr %164, null
  br i1 %165, label %166, label %24, !llvm.loop !77

166:                                              ; preds = %161
  %167 = icmp sgt i32 %162, 0
  br i1 %167, label %168, label %184

168:                                              ; preds = %166
  %169 = sitofp i32 %162 to double
  %170 = fdiv double 1.000000e+00, %169
  %171 = fptrunc double %170 to float
  %172 = getelementptr inbounds float, ptr %2, i64 3
  %173 = load float, ptr %172, align 4, !tbaa !51
  %174 = load <4 x float>, ptr %10, align 16, !tbaa !51
  %175 = insertelement <4 x float> poison, float %171, i64 0
  %176 = insertelement <4 x float> %175, float %173, i64 1
  %177 = shufflevector <4 x float> %176, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %178 = fmul <4 x float> %174, %177
  store <4 x float> %178, ptr %2, align 4, !tbaa !51
  %179 = getelementptr inbounds [5 x float], ptr %10, i64 0, i64 4
  %180 = load float, ptr %179, align 16, !tbaa !51
  %181 = getelementptr inbounds float, ptr %2, i64 4
  %182 = load float, ptr %181, align 4, !tbaa !51
  %183 = fmul float %180, %182
  store float %183, ptr %181, align 4, !tbaa !51
  br label %184

184:                                              ; preds = %14, %166, %168, %3
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  ret void
}

; Function Attrs: optsize
declare void @_ZN3pov14Simulate_MediaEPPNS_12Media_StructEPNS_10Ray_StructEPNS_10istk_entryEPfi(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define internal fastcc void @_ZN3povL6do_fogEPNS_10Ray_StructEPNS_10istk_entryEPfi(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, i32 noundef %3) unnamed_addr #1 !PGOFuncName !78 {
  %5 = alloca [5 x float], align 16
  %6 = alloca [5 x float], align 16
  %7 = alloca [5 x float], align 16
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %7) #11
  %8 = load ptr, ptr getelementptr inbounds (%"struct.pov::Frame_Struct", ptr @_ZN3pov5FrameE, i64 0, i32 13), align 8, !tbaa !79
  %9 = icmp eq ptr %8, null
  br i1 %9, label %105, label %10

10:                                               ; preds = %4
  call void @_ZN3pov12Make_ColourAEPffffff(ptr noundef nonnull %6, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00, float noundef 1.000000e+00) #10
  call void @_ZN3pov12Make_ColourAEPffffff(ptr noundef nonnull %7, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00) #10
  %11 = load ptr, ptr getelementptr inbounds (%"struct.pov::Frame_Struct", ptr @_ZN3pov5FrameE, i64 0, i32 13), align 8, !tbaa !59
  %12 = icmp eq ptr %11, null
  br i1 %12, label %80, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds [5 x float], ptr %5, i64 0, i64 4
  %15 = getelementptr inbounds [5 x float], ptr %5, i64 0, i64 3
  %16 = getelementptr inbounds [5 x float], ptr %5, i64 0, i64 1
  %17 = getelementptr inbounds [5 x float], ptr %5, i64 0, i64 2
  %18 = getelementptr inbounds [5 x float], ptr %6, i64 0, i64 4
  %19 = icmp eq i32 %3, 0
  br label %20

20:                                               ; preds = %13, %76
  %21 = phi ptr [ %11, %13 ], [ %78, %76 ]
  %22 = getelementptr inbounds %"struct.pov::Fog_Struct", ptr %21, i64 0, i32 1
  %23 = load double, ptr %22, align 8, !tbaa !80
  %24 = call double @llvm.fabs.f64(double %23)
  %25 = fcmp ogt double %24, 0x3E7AD7F29ABCAF48
  br i1 %25, label %26, label %76

26:                                               ; preds = %20
  %27 = load double, ptr %1, align 8, !tbaa !75
  %28 = load i32, ptr %21, align 8, !tbaa !82
  %29 = icmp eq i32 %28, 2
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = call fastcc noundef double @_ZN3povL10ground_fogEPNS_10Ray_StructEddPNS_10Fog_StructEPf(ptr noundef %0, double noundef %27, ptr noundef nonnull %21, ptr noundef nonnull %5) #10
  br label %34

32:                                               ; preds = %26
  %33 = call fastcc noundef double @_ZN3povL12constant_fogEPNS_10Ray_StructEddPNS_10Fog_StructEPf(ptr noundef %0, double noundef %27, ptr noundef nonnull %21, ptr noundef nonnull %5) #10
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi double [ %31, %30 ], [ %33, %32 ]
  %36 = load float, ptr %14, align 16, !tbaa !51
  %37 = fpext float %36 to double
  %38 = fcmp olt double %35, %37
  %39 = select i1 %38, double %37, double %35
  %40 = load float, ptr %15, align 4, !tbaa !51
  %41 = fpext float %40 to double
  %42 = fsub double 1.000000e+00, %41
  %43 = load <4 x float>, ptr %5, align 16
  %44 = shufflevector <4 x float> %43, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %45 = load float, ptr %16, align 4, !tbaa !51
  %46 = insertelement <2 x float> %44, float %40, i64 1
  %47 = insertelement <2 x float> poison, float %40, i64 0
  %48 = insertelement <2 x float> %47, float %45, i64 1
  %49 = fmul <2 x float> %46, %48
  %50 = fpext <2 x float> %49 to <2 x double>
  %51 = insertelement <2 x double> poison, double %42, i64 0
  %52 = shufflevector <2 x double> %51, <2 x double> poison, <2 x i32> zeroinitializer
  %53 = fadd <2 x double> %52, %50
  %54 = load float, ptr %17, align 8, !tbaa !51
  %55 = fmul float %40, %54
  %56 = fpext float %55 to double
  %57 = fadd double %42, %56
  %58 = insertelement <4 x double> poison, double %39, i64 0
  %59 = shufflevector <4 x double> %58, <4 x double> poison, <4 x i32> zeroinitializer
  %60 = shufflevector <2 x double> %53, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %61 = insertelement <4 x double> %60, double %57, i64 2
  %62 = insertelement <4 x double> %61, double %41, i64 3
  %63 = fmul <4 x double> %59, %62
  %64 = load <4 x float>, ptr %6, align 16, !tbaa !51
  %65 = fpext <4 x float> %64 to <4 x double>
  %66 = fmul <4 x double> %63, %65
  %67 = fptrunc <4 x double> %66 to <4 x float>
  store <4 x float> %67, ptr %6, align 16, !tbaa !51
  %68 = fmul double %39, %37
  %69 = load float, ptr %18, align 16, !tbaa !51
  %70 = fpext float %69 to double
  %71 = fmul double %68, %70
  %72 = fptrunc double %71 to float
  store float %72, ptr %18, align 16, !tbaa !51
  br i1 %19, label %73, label %76

73:                                               ; preds = %34
  %74 = fsub double 1.000000e+00, %39
  %75 = fptrunc double %74 to float
  call void @_ZN3pov15CRGBAddScaledEqEPffPKf(ptr noundef nonnull %7, float noundef %75, ptr noundef nonnull %5) #10
  br label %76

76:                                               ; preds = %20, %73, %34
  %77 = getelementptr inbounds %"struct.pov::Fog_Struct", ptr %21, i64 0, i32 8
  %78 = load ptr, ptr %77, align 8, !tbaa !59
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %20, !llvm.loop !83

80:                                               ; preds = %76, %10
  %81 = load <2 x float>, ptr %7, align 16, !tbaa !51
  %82 = load <2 x float>, ptr %6, align 16, !tbaa !51
  %83 = load <2 x float>, ptr %2, align 4, !tbaa !51
  %84 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %82, <2 x float> %83, <2 x float> %81)
  store <2 x float> %84, ptr %2, align 4, !tbaa !51
  %85 = getelementptr inbounds [5 x float], ptr %7, i64 0, i64 2
  %86 = load float, ptr %85, align 8, !tbaa !51
  %87 = getelementptr inbounds [5 x float], ptr %6, i64 0, i64 2
  %88 = load float, ptr %87, align 8, !tbaa !51
  %89 = getelementptr inbounds float, ptr %2, i64 2
  %90 = load float, ptr %89, align 4, !tbaa !51
  %91 = call float @llvm.fmuladd.f32(float %88, float %90, float %86)
  store float %91, ptr %89, align 4, !tbaa !51
  %92 = extractelement <2 x float> %82, i64 0
  %93 = fpext float %92 to double
  %94 = extractelement <2 x float> %82, i64 1
  %95 = fpext float %94 to double
  %96 = fmul double %95, 5.890000e-01
  %97 = call double @llvm.fmuladd.f64(double %93, double 2.970000e-01, double %96)
  %98 = fpext float %88 to double
  %99 = call double @llvm.fmuladd.f64(double %98, double 1.140000e-01, double %97)
  %100 = getelementptr inbounds float, ptr %2, i64 4
  %101 = load float, ptr %100, align 4, !tbaa !51
  %102 = fpext float %101 to double
  %103 = fmul double %99, %102
  %104 = fptrunc double %103 to float
  store float %104, ptr %100, align 4, !tbaa !51
  br label %105

105:                                              ; preds = %4, %80
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #11
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN3pov10Create_FogEv() local_unnamed_addr #1 {
  %1 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef 104, ptr noundef nonnull @.str, i32 noundef 867, ptr noundef nonnull @.str.1) #10
  store i32 1, ptr %1, align 8, !tbaa !82
  %2 = getelementptr inbounds %"struct.pov::Fog_Struct", ptr %1, i64 0, i32 1
  %3 = getelementptr inbounds %"struct.pov::Fog_Struct", ptr %1, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  tail call void @_ZN3pov12Make_ColourAEPffffff(ptr noundef nonnull %3, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00) #10
  %4 = getelementptr inbounds %"struct.pov::Fog_Struct", ptr %1, i64 0, i32 5
  tail call void @_ZN3pov11Make_VectorEPdddd(ptr noundef nonnull %4, double noundef 0.000000e+00, double noundef 1.000000e+00, double noundef 0.000000e+00) #10
  %5 = getelementptr inbounds %"struct.pov::Fog_Struct", ptr %1, i64 0, i32 6
  store ptr null, ptr %5, align 8, !tbaa !84
  %6 = getelementptr inbounds %"struct.pov::Fog_Struct", ptr %1, i64 0, i32 7
  store float 5.000000e-01, ptr %6, align 8, !tbaa !85
  %7 = getelementptr inbounds %"struct.pov::Fog_Struct", ptr %1, i64 0, i32 8
  store ptr null, ptr %7, align 8, !tbaa !86
  ret ptr %1
}

; Function Attrs: optsize
declare noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov12Make_ColourAEPffffff(ptr noundef %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5) local_unnamed_addr #2 comdat {
  store float %1, ptr %0, align 4, !tbaa !51
  %7 = getelementptr inbounds float, ptr %0, i64 1
  store float %2, ptr %7, align 4, !tbaa !51
  %8 = getelementptr inbounds float, ptr %0, i64 2
  store float %3, ptr %8, align 4, !tbaa !51
  %9 = getelementptr inbounds float, ptr %0, i64 3
  store float %4, ptr %9, align 4, !tbaa !51
  %10 = getelementptr inbounds float, ptr %0, i64 4
  store float %5, ptr %10, align 4, !tbaa !51
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov11Make_VectorEPdddd(ptr noundef %0, double noundef %1, double noundef %2, double noundef %3) local_unnamed_addr #2 comdat {
  store double %1, ptr %0, align 8, !tbaa !69
  %5 = getelementptr inbounds double, ptr %0, i64 1
  store double %2, ptr %5, align 8, !tbaa !69
  %6 = getelementptr inbounds double, ptr %0, i64 2
  store double %3, ptr %6, align 8, !tbaa !69
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN3pov8Copy_FogEPNS_10Fog_StructE(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = tail call noundef ptr @_ZN3pov10Create_FogEv() #10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull align 8 dereferenceable(104) %0, i64 104, i1 false), !tbaa.struct !87
  %3 = getelementptr inbounds %"struct.pov::Fog_Struct", ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !84
  %5 = tail call noundef ptr @_ZN3pov10Copy_WarpsEPNS_12Warps_StructE(ptr noundef %4) #10
  %6 = getelementptr inbounds %"struct.pov::Fog_Struct", ptr %2, i64 0, i32 6
  store ptr %5, ptr %6, align 8, !tbaa !84
  ret ptr %2
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: optsize
declare noundef ptr @_ZN3pov10Copy_WarpsEPNS_12Warps_StructE(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN3pov11Destroy_FogEPNS_10Fog_StructE(ptr noundef %0) local_unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %"struct.pov::Fog_Struct", ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !84
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef nonnull %5, ptr noundef nonnull @.str, i32 noundef 966) #10
  store ptr null, ptr %4, align 8, !tbaa !84
  br label %8

8:                                                ; preds = %7, %3
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef nonnull %0, ptr noundef nonnull @.str, i32 noundef 968) #10
  br label %9

9:                                                ; preds = %8, %1
  ret void
}

; Function Attrs: optsize
declare void @_ZN3pov8pov_freeEPvPKci(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN3pov14Create_RainbowEv() local_unnamed_addr #1 {
  %1 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef 144, ptr noundef nonnull @.str, i32 noundef 1006, ptr noundef nonnull @.str.1) #10
  store double 1.000000e+07, ptr %1, align 8, !tbaa !67
  %2 = getelementptr inbounds %"struct.pov::Rainbow_Struct", ptr %1, i64 0, i32 1
  %3 = getelementptr inbounds %"struct.pov::Rainbow_Struct", ptr %1, i64 0, i32 6
  store double 0.000000e+00, ptr %3, align 8, !tbaa !73
  %4 = getelementptr inbounds %"struct.pov::Rainbow_Struct", ptr %1, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  store <2 x double> <double 1.800000e+02, double 1.800000e+02>, ptr %4, align 8, !tbaa !69
  %5 = getelementptr inbounds %"struct.pov::Rainbow_Struct", ptr %1, i64 0, i32 10
  store ptr null, ptr %5, align 8, !tbaa !65
  %6 = getelementptr inbounds %"struct.pov::Rainbow_Struct", ptr %1, i64 0, i32 7
  tail call void @_ZN3pov11Make_VectorEPdddd(ptr noundef nonnull %6, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00) #10
  %7 = getelementptr inbounds %"struct.pov::Rainbow_Struct", ptr %1, i64 0, i32 9
  tail call void @_ZN3pov11Make_VectorEPdddd(ptr noundef nonnull %7, double noundef 1.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00) #10
  %8 = getelementptr inbounds %"struct.pov::Rainbow_Struct", ptr %1, i64 0, i32 8
  tail call void @_ZN3pov11Make_VectorEPdddd(ptr noundef nonnull %8, double noundef 0.000000e+00, double noundef 1.000000e+00, double noundef 0.000000e+00) #10
  %9 = getelementptr inbounds %"struct.pov::Rainbow_Struct", ptr %1, i64 0, i32 11
  store ptr null, ptr %9, align 8, !tbaa !90
  ret ptr %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN3pov12Copy_RainbowEPNS_14Rainbow_StructE(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = tail call noundef ptr @_ZN3pov14Create_RainbowEv() #10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %2, ptr noundef nonnull align 8 dereferenceable(144) %0, i64 144, i1 false), !tbaa.struct !91
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN3pov15Destroy_RainbowEPNS_14Rainbow_StructE(ptr noundef %0) local_unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %"struct.pov::Rainbow_Struct", ptr %0, i64 0, i32 10
  %5 = load ptr, ptr %4, align 8, !tbaa !65
  tail call void @_ZN3pov15Destroy_PigmentEPNS_14Pigment_StructE(ptr noundef %5) #10
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef nonnull %0, ptr noundef nonnull @.str, i32 noundef 1108) #10
  br label %6

6:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: optsize
declare void @_ZN3pov15Destroy_PigmentEPNS_14Pigment_StructE(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN3pov16Create_SkysphereEv() local_unnamed_addr #1 {
  %1 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef 24, ptr noundef nonnull @.str, i32 noundef 1146, ptr noundef nonnull @.str.1) #10
  store i32 0, ptr %1, align 8, !tbaa !58
  %2 = getelementptr inbounds %"struct.pov::Skysphere_Struct", ptr %1, i64 0, i32 1
  store ptr null, ptr %2, align 8, !tbaa !55
  %3 = tail call noundef ptr @_ZN3pov16Create_TransformEv() #10
  %4 = getelementptr inbounds %"struct.pov::Skysphere_Struct", ptr %1, i64 0, i32 2
  store ptr %3, ptr %4, align 8, !tbaa !57
  ret ptr %1
}

; Function Attrs: optsize
declare noundef ptr @_ZN3pov16Create_TransformEv() local_unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN3pov14Copy_SkysphereEPNS_16Skysphere_StructE(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = tail call noundef ptr @_ZN3pov16Create_SkysphereEv() #10
  %3 = getelementptr inbounds %"struct.pov::Skysphere_Struct", ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !57
  tail call void @_ZN3pov17Destroy_TransformEPNS_16Transform_StructE(ptr noundef %4) #10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !92
  %5 = getelementptr inbounds %"struct.pov::Skysphere_Struct", ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !57
  %7 = tail call noundef ptr @_ZN3pov14Copy_TransformEPNS_16Transform_StructE(ptr noundef %6) #10
  store ptr %7, ptr %3, align 8, !tbaa !57
  %8 = load i32, ptr %2, align 8, !tbaa !58
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %31

10:                                               ; preds = %1
  %11 = zext nneg i32 %8 to i64
  %12 = shl nuw nsw i64 %11, 3
  %13 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef %12, ptr noundef nonnull @.str, i32 noundef 1204, ptr noundef nonnull @.str.2) #10
  %14 = getelementptr inbounds %"struct.pov::Skysphere_Struct", ptr %2, i64 0, i32 1
  store ptr %13, ptr %14, align 8, !tbaa !55
  %15 = load i32, ptr %2, align 8, !tbaa !58
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %31

17:                                               ; preds = %10
  %18 = getelementptr inbounds %"struct.pov::Skysphere_Struct", ptr %0, i64 0, i32 1
  br label %19

19:                                               ; preds = %17, %19
  %20 = phi i64 [ 0, %17 ], [ %27, %19 ]
  %21 = load ptr, ptr %18, align 8, !tbaa !55
  %22 = getelementptr inbounds ptr, ptr %21, i64 %20
  %23 = load ptr, ptr %22, align 8, !tbaa !59
  %24 = tail call noundef ptr @_ZN3pov12Copy_PigmentEPNS_14Pigment_StructE(ptr noundef %23) #10
  %25 = load ptr, ptr %14, align 8, !tbaa !55
  %26 = getelementptr inbounds ptr, ptr %25, i64 %20
  store ptr %24, ptr %26, align 8, !tbaa !59
  %27 = add nuw nsw i64 %20, 1
  %28 = load i32, ptr %2, align 8, !tbaa !58
  %29 = sext i32 %28 to i64
  %30 = icmp slt i64 %27, %29
  br i1 %30, label %19, label %31, !llvm.loop !93

31:                                               ; preds = %19, %10, %1
  ret ptr %2
}

; Function Attrs: optsize
declare void @_ZN3pov17Destroy_TransformEPNS_16Transform_StructE(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare noundef ptr @_ZN3pov14Copy_TransformEPNS_16Transform_StructE(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare noundef ptr @_ZN3pov12Copy_PigmentEPNS_14Pigment_StructE(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
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
  %10 = load ptr, ptr %7, align 8, !tbaa !55
  %11 = getelementptr inbounds ptr, ptr %10, i64 %9
  %12 = load ptr, ptr %11, align 8, !tbaa !59
  tail call void @_ZN3pov15Destroy_PigmentEPNS_14Pigment_StructE(ptr noundef %12) #10
  %13 = add nuw nsw i64 %9, 1
  %14 = load i32, ptr %0, align 8, !tbaa !58
  %15 = sext i32 %14 to i64
  %16 = icmp slt i64 %13, %15
  br i1 %16, label %8, label %17, !llvm.loop !94

17:                                               ; preds = %8, %3
  %18 = getelementptr inbounds %"struct.pov::Skysphere_Struct", ptr %0, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !55
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef %19, ptr noundef nonnull @.str, i32 noundef 1256) #10
  store ptr null, ptr %18, align 8, !tbaa !55
  %20 = getelementptr inbounds %"struct.pov::Skysphere_Struct", ptr %0, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !57
  tail call void @_ZN3pov17Destroy_TransformEPNS_16Transform_StructE(ptr noundef %21) #10
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef nonnull %0, ptr noundef nonnull @.str, i32 noundef 1260) #10
  br label %22

22:                                               ; preds = %17, %1
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN3pov16Rotate_SkysphereEPNS_16Skysphere_StructEPd(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = alloca %"struct.pov::Transform_Struct", align 8
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %3) #11
  call void @_ZN3pov26Compute_Rotation_TransformEPNS_16Transform_StructEPd(ptr noundef nonnull %3, ptr noundef %1) #10
  call void @_ZN3pov19Transform_SkysphereEPNS_16Skysphere_StructEPNS_16Transform_StructE(ptr noundef %0, ptr noundef nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %3) #11
  ret void
}

; Function Attrs: optsize
declare void @_ZN3pov26Compute_Rotation_TransformEPNS_16Transform_StructEPd(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN3pov19Transform_SkysphereEPNS_16Skysphere_StructEPNS_16Transform_StructE(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %"struct.pov::Skysphere_Struct", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !57
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call noundef ptr @_ZN3pov16Create_TransformEv() #10
  store ptr %7, ptr %3, align 8, !tbaa !57
  br label %8

8:                                                ; preds = %6, %2
  %9 = phi ptr [ %7, %6 ], [ %4, %2 ]
  tail call void @_ZN3pov18Compose_TransformsEPNS_16Transform_StructES1_(ptr noundef %9, ptr noundef %1) #10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN3pov15Scale_SkysphereEPNS_16Skysphere_StructEPd(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = alloca %"struct.pov::Transform_Struct", align 8
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %3) #11
  call void @_ZN3pov25Compute_Scaling_TransformEPNS_16Transform_StructEPd(ptr noundef nonnull %3, ptr noundef %1) #10
  call void @_ZN3pov19Transform_SkysphereEPNS_16Skysphere_StructEPNS_16Transform_StructE(ptr noundef %0, ptr noundef nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %3) #11
  ret void
}

; Function Attrs: optsize
declare void @_ZN3pov25Compute_Scaling_TransformEPNS_16Transform_StructEPd(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN3pov19Translate_SkysphereEPNS_16Skysphere_StructEPd(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = alloca %"struct.pov::Transform_Struct", align 8
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %3) #11
  call void @_ZN3pov29Compute_Translation_TransformEPNS_16Transform_StructEPd(ptr noundef nonnull %3, ptr noundef %1) #10
  call void @_ZN3pov19Transform_SkysphereEPNS_16Skysphere_StructEPNS_16Transform_StructE(ptr noundef %0, ptr noundef nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %3) #11
  ret void
}

; Function Attrs: optsize
declare void @_ZN3pov29Compute_Translation_TransformEPNS_16Transform_StructEPd(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN3pov18Compose_TransformsEPNS_16Transform_StructES1_(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #6

; Function Attrs: mustprogress noinline optsize uwtable
define internal fastcc noundef double @_ZN3povL10ground_fogEPNS_10Ray_StructEddPNS_10Fog_StructEPf(ptr noundef %0, double noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #1 !PGOFuncName !95 {
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca [3 x double], align 16
  %8 = alloca [3 x double], align 16
  %9 = alloca [3 x double], align 16
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #11
  %12 = getelementptr inbounds %"struct.pov::Ray_Struct", ptr %0, i64 0, i32 1
  call void @_ZN3pov12VEvaluateRayEPdPKddS2_(ptr noundef nonnull %8, ptr noundef %0, double noundef 0.000000e+00, ptr noundef nonnull %12) #10
  call void @_ZN3pov9VLinComb2EPddPKddS2_(ptr noundef nonnull %9, double noundef 1.000000e+00, ptr noundef nonnull %8, double noundef %1, ptr noundef nonnull %12) #10
  %13 = getelementptr inbounds %"struct.pov::Fog_Struct", ptr %2, i64 0, i32 5
  call void @_ZN3pov4VDotERdPKdS2_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %8, ptr noundef nonnull %13) #10
  call void @_ZN3pov4VDotERdPKdS2_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %9, ptr noundef nonnull %13) #10
  %14 = load double, ptr %5, align 8, !tbaa !69
  %15 = getelementptr inbounds %"struct.pov::Fog_Struct", ptr %2, i64 0, i32 3
  %16 = load double, ptr %15, align 8, !tbaa !96
  %17 = getelementptr inbounds %"struct.pov::Fog_Struct", ptr %2, i64 0, i32 2
  %18 = load double, ptr %17, align 8, !tbaa !97
  %19 = load double, ptr %6, align 8, !tbaa !69
  %20 = insertelement <2 x double> poison, double %19, i64 0
  %21 = insertelement <2 x double> %20, double %14, i64 1
  %22 = insertelement <2 x double> poison, double %16, i64 0
  %23 = shufflevector <2 x double> %22, <2 x double> poison, <2 x i32> zeroinitializer
  %24 = fsub <2 x double> %21, %23
  %25 = insertelement <2 x double> poison, double %18, i64 0
  %26 = shufflevector <2 x double> %25, <2 x double> poison, <2 x i32> zeroinitializer
  %27 = fdiv <2 x double> %24, %26
  %28 = fcmp ugt <2 x double> %27, zeroinitializer
  %29 = extractelement <2 x i1> %28, i64 1
  br i1 %29, label %39, label %30

30:                                               ; preds = %4
  %31 = extractelement <2 x i1> %28, i64 0
  br i1 %31, label %32, label %63

32:                                               ; preds = %30
  %33 = extractelement <2 x double> %27, i64 0
  %34 = call double @atan(double noundef %33) #12
  %35 = extractelement <2 x double> %27, i64 1
  %36 = fsub double %34, %35
  %37 = fsub double %33, %35
  %38 = fdiv double %36, %37
  br label %63

39:                                               ; preds = %4
  %40 = extractelement <2 x i1> %28, i64 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %39
  %42 = extractelement <2 x double> %27, i64 1
  %43 = call double @atan(double noundef %42) #12
  %44 = extractelement <2 x double> %27, i64 0
  %45 = fsub double %43, %44
  %46 = fsub double %42, %44
  %47 = fdiv double %45, %46
  br label %63

48:                                               ; preds = %39
  %49 = extractelement <2 x double> %27, i64 0
  %50 = extractelement <2 x double> %27, i64 1
  %51 = fsub double %50, %49
  %52 = call double @llvm.fabs.f64(double %51)
  %53 = fcmp ogt double %52, 0x3E7AD7F29ABCAF48
  br i1 %53, label %54, label %59

54:                                               ; preds = %48
  %55 = call double @atan(double noundef %50) #12
  %56 = call double @atan(double noundef %49) #12
  %57 = fsub double %55, %56
  %58 = fdiv double %57, %51
  br label %63

59:                                               ; preds = %48
  %60 = call noundef double @_ZN3pov3SqrEd(double noundef %50) #10
  %61 = fadd double %60, 1.000000e+00
  %62 = fdiv double 1.000000e+00, %61
  br label %63

63:                                               ; preds = %30, %41, %59, %54, %32
  %64 = phi double [ %38, %32 ], [ %47, %41 ], [ %58, %54 ], [ %62, %59 ], [ 1.000000e+00, %30 ]
  %65 = getelementptr inbounds %"struct.pov::Fog_Struct", ptr %2, i64 0, i32 6
  %66 = load ptr, ptr %65, align 8, !tbaa !84
  %67 = icmp eq ptr %66, null
  br i1 %67, label %87, label %68

68:                                               ; preds = %63
  call void @_ZN3pov5VHalfEPdPKdS2_(ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9) #10
  %69 = load ptr, ptr %65, align 8, !tbaa !84
  %70 = getelementptr inbounds %"struct.pov::Turb_Struct", ptr %69, i64 0, i32 3
  call void @_ZN3pov11VEvaluateEqEPdPKd(ptr noundef nonnull %7, ptr noundef nonnull %70) #10
  %71 = fneg double %1
  %72 = getelementptr inbounds %"struct.pov::Fog_Struct", ptr %2, i64 0, i32 1
  %73 = load double, ptr %72, align 8, !tbaa !80
  %74 = fdiv double %71, %73
  %75 = call double @exp(double noundef %74) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #11
  store double 1.000000e+00, ptr %10, align 8, !tbaa !69
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #11
  %76 = load ptr, ptr %65, align 8, !tbaa !84
  %77 = call noundef double @_ZN3pov10TurbulenceEPdPNS_11Turb_StructEPNS_14Pattern_StructE(ptr noundef nonnull %7, ptr noundef %76, ptr noundef null) #10
  %78 = getelementptr inbounds %"struct.pov::Fog_Struct", ptr %2, i64 0, i32 7
  %79 = load float, ptr %78, align 8, !tbaa !85
  %80 = fpext float %79 to double
  %81 = fmul double %77, %80
  store double %81, ptr %11, align 8, !tbaa !69
  %82 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %11) #10
  %83 = load double, ptr %82, align 8, !tbaa !69
  %84 = fneg double %75
  %85 = call double @llvm.fmuladd.f64(double %84, double %83, double 1.000000e+00)
  %86 = fmul double %85, %1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #11
  br label %87

87:                                               ; preds = %68, %63
  %88 = phi double [ %86, %68 ], [ %1, %63 ]
  %89 = getelementptr inbounds %"struct.pov::Fog_Struct", ptr %2, i64 0, i32 4
  call void @_ZN3pov13Assign_ColourEPfS0_(ptr noundef %3, ptr noundef nonnull %89) #10
  %90 = fneg double %88
  %91 = fmul double %64, %90
  %92 = getelementptr inbounds %"struct.pov::Fog_Struct", ptr %2, i64 0, i32 1
  %93 = load double, ptr %92, align 8, !tbaa !80
  %94 = fdiv double %91, %93
  %95 = call double @exp(double noundef %94) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  ret double %95
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal fastcc noundef double @_ZN3povL12constant_fogEPNS_10Ray_StructEddPNS_10Fog_StructEPf(ptr noundef %0, double noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #1 !PGOFuncName !98 {
  %5 = alloca [3 x double], align 16
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #11
  %8 = getelementptr inbounds %"struct.pov::Fog_Struct", ptr %2, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !84
  %10 = icmp eq ptr %9, null
  br i1 %10, label %33, label %11

11:                                               ; preds = %4
  %12 = fmul double %1, 5.000000e-01
  %13 = fadd double %12, 0.000000e+00
  %14 = getelementptr inbounds %"struct.pov::Ray_Struct", ptr %0, i64 0, i32 1
  call void @_ZN3pov12VEvaluateRayEPdPKddS2_(ptr noundef nonnull %5, ptr noundef %0, double noundef %13, ptr noundef nonnull %14) #10
  %15 = load ptr, ptr %8, align 8, !tbaa !84
  %16 = getelementptr inbounds %"struct.pov::Turb_Struct", ptr %15, i64 0, i32 3
  call void @_ZN3pov11VEvaluateEqEPdPKd(ptr noundef nonnull %5, ptr noundef nonnull %16) #10
  %17 = fneg double %1
  %18 = getelementptr inbounds %"struct.pov::Fog_Struct", ptr %2, i64 0, i32 1
  %19 = load double, ptr %18, align 8, !tbaa !80
  %20 = fdiv double %17, %19
  %21 = call double @exp(double noundef %20) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #11
  store double 1.000000e+00, ptr %6, align 8, !tbaa !69
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #11
  %22 = load ptr, ptr %8, align 8, !tbaa !84
  %23 = call noundef double @_ZN3pov10TurbulenceEPdPNS_11Turb_StructEPNS_14Pattern_StructE(ptr noundef nonnull %5, ptr noundef %22, ptr noundef null) #10
  %24 = getelementptr inbounds %"struct.pov::Fog_Struct", ptr %2, i64 0, i32 7
  %25 = load float, ptr %24, align 8, !tbaa !85
  %26 = fpext float %25 to double
  %27 = fmul double %23, %26
  store double %27, ptr %7, align 8, !tbaa !69
  %28 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7) #10
  %29 = load double, ptr %28, align 8, !tbaa !69
  %30 = fneg double %21
  %31 = call double @llvm.fmuladd.f64(double %30, double %29, double 1.000000e+00)
  %32 = fmul double %31, %1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  br label %33

33:                                               ; preds = %11, %4
  %34 = phi double [ %32, %11 ], [ %1, %4 ]
  %35 = getelementptr inbounds %"struct.pov::Fog_Struct", ptr %2, i64 0, i32 4
  call void @_ZN3pov13Assign_ColourEPfS0_(ptr noundef %3, ptr noundef nonnull %35) #10
  %36 = fneg double %34
  %37 = getelementptr inbounds %"struct.pov::Fog_Struct", ptr %2, i64 0, i32 1
  %38 = load double, ptr %37, align 8, !tbaa !80
  %39 = fdiv double %36, %38
  %40 = call double @exp(double noundef %39) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #11
  ret double %40
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov15CRGBAddScaledEqEPffPKf(ptr noundef %0, float noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat {
  %4 = load float, ptr %2, align 4, !tbaa !51
  %5 = load float, ptr %0, align 4, !tbaa !51
  %6 = tail call float @llvm.fmuladd.f32(float %1, float %4, float %5)
  store float %6, ptr %0, align 4, !tbaa !51
  %7 = getelementptr inbounds float, ptr %2, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !51
  %9 = getelementptr inbounds float, ptr %0, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !51
  %11 = tail call float @llvm.fmuladd.f32(float %1, float %8, float %10)
  store float %11, ptr %9, align 4, !tbaa !51
  %12 = getelementptr inbounds float, ptr %2, i64 2
  %13 = load float, ptr %12, align 4, !tbaa !51
  %14 = getelementptr inbounds float, ptr %0, i64 2
  %15 = load float, ptr %14, align 4, !tbaa !51
  %16 = tail call float @llvm.fmuladd.f32(float %1, float %13, float %15)
  store float %16, ptr %14, align 4, !tbaa !51
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov12VEvaluateRayEPdPKddS2_(ptr noundef %0, ptr noundef %1, double noundef %2, ptr noundef %3) local_unnamed_addr #2 comdat {
  %5 = load double, ptr %1, align 8, !tbaa !69
  %6 = load double, ptr %3, align 8, !tbaa !69
  %7 = tail call double @llvm.fmuladd.f64(double %2, double %6, double %5)
  store double %7, ptr %0, align 8, !tbaa !69
  %8 = getelementptr inbounds double, ptr %1, i64 1
  %9 = load double, ptr %8, align 8, !tbaa !69
  %10 = getelementptr inbounds double, ptr %3, i64 1
  %11 = load double, ptr %10, align 8, !tbaa !69
  %12 = tail call double @llvm.fmuladd.f64(double %2, double %11, double %9)
  %13 = getelementptr inbounds double, ptr %0, i64 1
  store double %12, ptr %13, align 8, !tbaa !69
  %14 = getelementptr inbounds double, ptr %1, i64 2
  %15 = load double, ptr %14, align 8, !tbaa !69
  %16 = getelementptr inbounds double, ptr %3, i64 2
  %17 = load double, ptr %16, align 8, !tbaa !69
  %18 = tail call double @llvm.fmuladd.f64(double %2, double %17, double %15)
  %19 = getelementptr inbounds double, ptr %0, i64 2
  store double %18, ptr %19, align 8, !tbaa !69
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov9VLinComb2EPddPKddS2_(ptr noundef %0, double noundef %1, ptr noundef %2, double noundef %3, ptr noundef %4) local_unnamed_addr #2 comdat {
  %6 = load double, ptr %2, align 8, !tbaa !69
  %7 = load double, ptr %4, align 8, !tbaa !69
  %8 = fmul double %7, %3
  %9 = tail call double @llvm.fmuladd.f64(double %1, double %6, double %8)
  store double %9, ptr %0, align 8, !tbaa !69
  %10 = getelementptr inbounds double, ptr %2, i64 1
  %11 = load double, ptr %10, align 8, !tbaa !69
  %12 = getelementptr inbounds double, ptr %4, i64 1
  %13 = load double, ptr %12, align 8, !tbaa !69
  %14 = fmul double %13, %3
  %15 = tail call double @llvm.fmuladd.f64(double %1, double %11, double %14)
  %16 = getelementptr inbounds double, ptr %0, i64 1
  store double %15, ptr %16, align 8, !tbaa !69
  %17 = getelementptr inbounds double, ptr %2, i64 2
  %18 = load double, ptr %17, align 8, !tbaa !69
  %19 = getelementptr inbounds double, ptr %4, i64 2
  %20 = load double, ptr %19, align 8, !tbaa !69
  %21 = fmul double %20, %3
  %22 = tail call double @llvm.fmuladd.f64(double %1, double %18, double %21)
  %23 = getelementptr inbounds double, ptr %0, i64 2
  store double %22, ptr %23, align 8, !tbaa !69
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov4VDotERdPKdS2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat {
  %4 = load double, ptr %1, align 8, !tbaa !69
  %5 = load double, ptr %2, align 8, !tbaa !69
  %6 = getelementptr inbounds double, ptr %1, i64 1
  %7 = load double, ptr %6, align 8, !tbaa !69
  %8 = getelementptr inbounds double, ptr %2, i64 1
  %9 = load double, ptr %8, align 8, !tbaa !69
  %10 = fmul double %7, %9
  %11 = tail call double @llvm.fmuladd.f64(double %4, double %5, double %10)
  %12 = getelementptr inbounds double, ptr %1, i64 2
  %13 = load double, ptr %12, align 8, !tbaa !69
  %14 = getelementptr inbounds double, ptr %2, i64 2
  %15 = load double, ptr %14, align 8, !tbaa !69
  %16 = tail call double @llvm.fmuladd.f64(double %13, double %15, double %11)
  store double %16, ptr %0, align 8, !tbaa !69
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @atan(double noundef) local_unnamed_addr #7

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef double @_ZN3pov3SqrEd(double noundef %0) local_unnamed_addr #2 comdat {
  %2 = fmul double %0, %0
  ret double %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov5VHalfEPdPKdS2_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat {
  %4 = load double, ptr %1, align 8, !tbaa !69
  %5 = load double, ptr %2, align 8, !tbaa !69
  %6 = fadd double %4, %5
  %7 = fmul double %6, 5.000000e-01
  store double %7, ptr %0, align 8, !tbaa !69
  %8 = getelementptr inbounds double, ptr %1, i64 1
  %9 = load double, ptr %8, align 8, !tbaa !69
  %10 = getelementptr inbounds double, ptr %2, i64 1
  %11 = load double, ptr %10, align 8, !tbaa !69
  %12 = fadd double %9, %11
  %13 = fmul double %12, 5.000000e-01
  %14 = getelementptr inbounds double, ptr %0, i64 1
  store double %13, ptr %14, align 8, !tbaa !69
  %15 = getelementptr inbounds double, ptr %1, i64 2
  %16 = load double, ptr %15, align 8, !tbaa !69
  %17 = getelementptr inbounds double, ptr %2, i64 2
  %18 = load double, ptr %17, align 8, !tbaa !69
  %19 = fadd double %16, %18
  %20 = fmul double %19, 5.000000e-01
  %21 = getelementptr inbounds double, ptr %0, i64 2
  store double %20, ptr %21, align 8, !tbaa !69
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov11VEvaluateEqEPdPKd(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 comdat {
  %3 = load double, ptr %1, align 8, !tbaa !69
  %4 = load double, ptr %0, align 8, !tbaa !69
  %5 = fmul double %3, %4
  store double %5, ptr %0, align 8, !tbaa !69
  %6 = getelementptr inbounds double, ptr %1, i64 1
  %7 = load double, ptr %6, align 8, !tbaa !69
  %8 = getelementptr inbounds double, ptr %0, i64 1
  %9 = load double, ptr %8, align 8, !tbaa !69
  %10 = fmul double %7, %9
  store double %10, ptr %8, align 8, !tbaa !69
  %11 = getelementptr inbounds double, ptr %1, i64 2
  %12 = load double, ptr %11, align 8, !tbaa !69
  %13 = getelementptr inbounds double, ptr %0, i64 2
  %14 = load double, ptr %13, align 8, !tbaa !69
  %15 = fmul double %12, %14
  store double %15, ptr %13, align 8, !tbaa !69
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @exp(double noundef) local_unnamed_addr #7

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat {
  %3 = load double, ptr %1, align 8, !tbaa !69
  %4 = load double, ptr %0, align 8, !tbaa !69
  %5 = fcmp olt double %3, %4
  %6 = select i1 %5, ptr %1, ptr %0
  ret ptr %6
}

; Function Attrs: optsize
declare noundef double @_ZN3pov10TurbulenceEPdPNS_11Turb_StructEPNS_14Pattern_StructE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @acos(double noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare noundef i32 @_ZN3pov8POV_RANDEv() local_unnamed_addr #4

; Function Attrs: optsize
declare noundef i32 @_ZN3pov15Compute_PigmentEPfPNS_14Pigment_StructEPdPNS_10istk_entryE(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat {
  %3 = load double, ptr %0, align 8, !tbaa !69
  %4 = load double, ptr %1, align 8, !tbaa !69
  %5 = fcmp olt double %3, %4
  %6 = select i1 %5, ptr %1, ptr %0
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov11Make_ColourEPffff(ptr noundef %0, float noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #2 comdat {
  store float %1, ptr %0, align 4, !tbaa !51
  %5 = getelementptr inbounds float, ptr %0, i64 1
  store float %2, ptr %5, align 4, !tbaa !51
  %6 = getelementptr inbounds float, ptr %0, i64 2
  store float %3, ptr %6, align 4, !tbaa !51
  %7 = getelementptr inbounds float, ptr %0, i64 3
  store <2 x float> zeroinitializer, ptr %7, align 4, !tbaa !51
  ret void
}

; Function Attrs: optsize
declare void @_ZN3pov14MInvTransPointEPdS0_PNS_16Transform_StructE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov13Assign_VectorEPdS0_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 comdat {
  %3 = load double, ptr %1, align 8, !tbaa !69
  store double %3, ptr %0, align 8, !tbaa !69
  %4 = getelementptr inbounds double, ptr %1, i64 1
  %5 = load double, ptr %4, align 8, !tbaa !69
  %6 = getelementptr inbounds double, ptr %0, i64 1
  store double %5, ptr %6, align 8, !tbaa !69
  %7 = getelementptr inbounds double, ptr %1, i64 2
  %8 = load double, ptr %7, align 8, !tbaa !69
  %9 = getelementptr inbounds double, ptr %0, i64 2
  store double %8, ptr %9, align 8, !tbaa !69
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef float @_ZSt4fabsf(float noundef %0) local_unnamed_addr #2 comdat {
  %2 = tail call float @llvm.fabs.f32(float %0)
  ret float %2
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #6

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #9

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { optsize }
attributes #11 = { nounwind }
attributes #12 = { nounwind optsize }

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
!52 = !{!"atmosph.cpp:_ZN3povL12do_skysphereEPNS_10Ray_StructEPf"}
!53 = !{!54, !45, i64 152}
!54 = !{!"_ZTSN3pov12Frame_StructE", !45, i64 0, !36, i64 8, !36, i64 12, !36, i64 16, !45, i64 24, !45, i64 32, !40, i64 40, !40, i64 48, !40, i64 56, !37, i64 64, !37, i64 84, !37, i64 104, !45, i64 128, !45, i64 136, !45, i64 144, !45, i64 152, !45, i64 160}
!55 = !{!56, !45, i64 8}
!56 = !{!"_ZTSN3pov16Skysphere_StructE", !36, i64 0, !45, i64 8, !45, i64 16}
!57 = !{!56, !45, i64 16}
!58 = !{!56, !36, i64 0}
!59 = !{!45, !45, i64 0}
!60 = distinct !{!60, !61}
!61 = !{!"llvm.loop.mustprogress"}
!62 = !{!54, !45, i64 128}
!63 = !{!"atmosph.cpp:_ZN3povL10do_rainbowEPNS_10Ray_StructEPNS_10istk_entryEPf"}
!64 = !{!54, !45, i64 144}
!65 = !{!66, !45, i64 128}
!66 = !{!"_ZTSN3pov14Rainbow_StructE", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !40, i64 32, !40, i64 40, !40, i64 48, !37, i64 56, !37, i64 80, !37, i64 104, !45, i64 128, !45, i64 136}
!67 = !{!66, !40, i64 0}
!68 = !{!66, !40, i64 24}
!69 = !{!40, !40, i64 0}
!70 = !{!66, !40, i64 32}
!71 = !{!66, !40, i64 16}
!72 = !{!66, !40, i64 8}
!73 = !{!66, !40, i64 48}
!74 = !{!66, !40, i64 40}
!75 = !{!76, !40, i64 0}
!76 = !{!"_ZTSN3pov10istk_entryE", !40, i64 0, !37, i64 8, !37, i64 32, !37, i64 56, !37, i64 80, !45, i64 96, !36, i64 104, !36, i64 108, !40, i64 112, !40, i64 120, !40, i64 128, !40, i64 136, !40, i64 144, !40, i64 152, !40, i64 160, !40, i64 168, !40, i64 176, !45, i64 184, !45, i64 192}
!77 = distinct !{!77, !61}
!78 = !{!"atmosph.cpp:_ZN3povL6do_fogEPNS_10Ray_StructEPNS_10istk_entryEPfi"}
!79 = !{!54, !45, i64 136}
!80 = !{!81, !40, i64 8}
!81 = !{!"_ZTSN3pov10Fog_StructE", !36, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !37, i64 32, !37, i64 56, !45, i64 80, !39, i64 88, !45, i64 96}
!82 = !{!81, !36, i64 0}
!83 = distinct !{!83, !61}
!84 = !{!81, !45, i64 80}
!85 = !{!81, !39, i64 88}
!86 = !{!81, !45, i64 96}
!87 = !{i64 0, i64 4, !88, i64 8, i64 8, !69, i64 16, i64 8, !69, i64 24, i64 8, !69, i64 32, i64 20, !89, i64 56, i64 24, !89, i64 80, i64 8, !59, i64 88, i64 4, !51, i64 96, i64 8, !59}
!88 = !{!36, !36, i64 0}
!89 = !{!37, !37, i64 0}
!90 = !{!66, !45, i64 136}
!91 = !{i64 0, i64 8, !69, i64 8, i64 8, !69, i64 16, i64 8, !69, i64 24, i64 8, !69, i64 32, i64 8, !69, i64 40, i64 8, !69, i64 48, i64 8, !69, i64 56, i64 24, !89, i64 80, i64 24, !89, i64 104, i64 24, !89, i64 128, i64 8, !59, i64 136, i64 8, !59}
!92 = !{i64 0, i64 4, !88, i64 8, i64 8, !59, i64 16, i64 8, !59}
!93 = distinct !{!93, !61}
!94 = distinct !{!94, !61}
!95 = !{!"atmosph.cpp:_ZN3povL10ground_fogEPNS_10Ray_StructEddPNS_10Fog_StructEPf"}
!96 = !{!81, !40, i64 24}
!97 = !{!81, !40, i64 16}
!98 = !{!"atmosph.cpp:_ZN3povL12constant_fogEPNS_10Ray_StructEddPNS_10Fog_StructEPf"}

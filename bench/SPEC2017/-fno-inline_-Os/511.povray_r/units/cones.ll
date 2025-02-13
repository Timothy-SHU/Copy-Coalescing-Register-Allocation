; ModuleID = 'cones.cpp'
source_filename = "cones.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.pov::Method_Struct" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"struct.pov::Cone_Intersection_Structure" = type { double, i32 }
%"struct.pov::Ray_Struct" = type { [3 x double], [3 x double], i32, i32, [100 x ptr] }
%"struct.pov::Object_Struct" = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"struct.pov::Bounding_Box_Struct", ptr, ptr, float, i32 }
%"struct.pov::Bounding_Box_Struct" = type { [3 x float], [3 x float] }
%"struct.pov::Cone_Struct" = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"struct.pov::Bounding_Box_Struct", ptr, ptr, float, i32, [3 x double], [3 x double], double, double, double }
%"struct.pov::istk_entry" = type { double, [3 x double], [3 x double], [3 x double], [2 x double], ptr, i32, i32, double, double, double, double, double, double, double, double, double, ptr, ptr }
%"struct.pov::istack_struct" = type { ptr, ptr, i32, i32 }

$_ZN3pov9Make_BBoxERNS_19Bounding_Box_StructEffffff = comdat any

$_ZN3pov11Make_VectorEPdddd = comdat any

$_ZN3pov13Assign_VectorEPdS0_ = comdat any

$_ZN3pov4VSubEPdPKdS2_ = comdat any

$_ZN3pov7VLengthERdPKd = comdat any

$_ZN3pov15VInverseScaleEqEPdd = comdat any

$_ZN3pov6VScaleEPdPKdd = comdat any

$_ZN3pov12VEvaluateRayEPdPKddS2_ = comdat any

$_ZN3pov13push_entry_i1EdPdPNS_13Object_StructEiPNS_13istack_structE = comdat any

$_ZN3pov16Increase_CounterERx = comdat any

$_ZN3pov3SqrEd = comdat any

$_ZN3pov4itopEPNS_13istack_structE = comdat any

$_ZN3pov10VNormalizeEPdPKd = comdat any

$_ZN3pov13VInverseScaleEPdPKdd = comdat any

@_ZN3pov12Cone_MethodsE = dso_local global %"struct.pov::Method_Struct" { ptr @_ZN3povL22All_Cone_IntersectionsEPNS_13Object_StructEPNS_10Ray_StructEPNS_13istack_structE, ptr @_ZN3povL11Inside_ConeEPdPNS_13Object_StructE, ptr @_ZN3povL11Cone_NormalEPdPNS_13Object_StructEPNS_10istk_entryE, ptr @_ZN3pov15Default_UVCoordEPdPNS_13Object_StructEPNS_10istk_entryE, ptr @_ZN3povL9Copy_ConeEPNS_13Object_StructE, ptr @_ZN3povL14Translate_ConeEPNS_13Object_StructEPdPNS_16Transform_StructE, ptr @_ZN3povL11Rotate_ConeEPNS_13Object_StructEPdPNS_16Transform_StructE, ptr @_ZN3povL10Scale_ConeEPNS_13Object_StructEPdPNS_16Transform_StructE, ptr @_ZN3povL14Transform_ConeEPNS_13Object_StructEPNS_16Transform_StructE, ptr @_ZN3povL11Invert_ConeEPNS_13Object_StructE, ptr @_ZN3povL12Destroy_ConeEPNS_13Object_StructE }, align 8
@.str = private unnamed_addr constant [10 x i8] c"cones.cpp\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"cone\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Degenerate cone/cylinder.\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"Degenerate cylinder, base point = apex point.\00", align 1
@_ZN3pov5statsE = external global [123 x i64], align 16

; Function Attrs: mustprogress noinline optsize uwtable
define internal noundef i32 @_ZN3povL22All_Cone_IntersectionsEPNS_13Object_StructEPNS_10Ray_StructEPNS_13istack_structE(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !PGOFuncName !34 {
  %4 = alloca [3 x double], align 16
  %5 = alloca [4 x %"struct.pov::Cone_Intersection_Structure"], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #10
  %6 = call fastcc noundef i32 @_ZN3povL14intersect_coneEPNS_10Ray_StructEPNS_11Cone_StructEPNS_27Cone_Intersection_StructureE(ptr noundef %1, ptr noundef %0, ptr noundef nonnull %5) #11
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %26

8:                                                ; preds = %3
  %9 = getelementptr inbounds %"struct.pov::Ray_Struct", ptr %1, i64 0, i32 1
  %10 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %0, i64 0, i32 7
  %11 = zext nneg i32 %6 to i64
  br label %12

12:                                               ; preds = %8, %22
  %13 = phi i64 [ 0, %8 ], [ %24, %22 ]
  %14 = phi i32 [ 0, %8 ], [ %23, %22 ]
  %15 = getelementptr inbounds [4 x %"struct.pov::Cone_Intersection_Structure"], ptr %5, i64 0, i64 %13
  %16 = load double, ptr %15, align 16, !tbaa !35
  call void @_ZN3pov12VEvaluateRayEPdPKddS2_(ptr noundef nonnull %4, ptr noundef %1, double noundef %16, ptr noundef nonnull %9) #11
  %17 = load ptr, ptr %10, align 8, !tbaa !41
  %18 = call noundef zeroext i1 @_ZN3pov13Point_In_ClipEPdPNS_13Object_StructE(ptr noundef nonnull %4, ptr noundef %17) #11
  br i1 %18, label %19, label %22

19:                                               ; preds = %12
  %20 = getelementptr inbounds [4 x %"struct.pov::Cone_Intersection_Structure"], ptr %5, i64 0, i64 %13, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !46
  call void @_ZN3pov13push_entry_i1EdPdPNS_13Object_StructEiPNS_13istack_structE(double noundef %16, ptr noundef nonnull %4, ptr noundef nonnull %0, i32 noundef %21, ptr noundef %2) #11
  br label %22

22:                                               ; preds = %12, %19
  %23 = phi i32 [ 1, %19 ], [ %14, %12 ]
  %24 = add nuw nsw i64 %13, 1
  %25 = icmp eq i64 %24, %11
  br i1 %25, label %26, label %12, !llvm.loop !47

26:                                               ; preds = %22, %3
  %27 = phi i32 [ 0, %3 ], [ %23, %22 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #10
  ret i32 %27
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal noundef i32 @_ZN3povL11Inside_ConeEPdPNS_13Object_StructE(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !49 {
  %3 = alloca [3 x double], align 16
  %4 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %1, i64 0, i32 13
  %5 = load i32, ptr %4, align 4, !tbaa !50
  %6 = and i32 %5, 2
  %7 = icmp eq i32 %6, 0
  %8 = select i1 %7, double 0x3E7AD7F29ABCAF48, double 0xBE7AD7F29ABCAF48
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #10
  %9 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %1, i64 0, i32 10
  %10 = load ptr, ptr %9, align 8, !tbaa !52
  call void @_ZN3pov14MInvTransPointEPdS0_PNS_16Transform_StructE(ptr noundef nonnull %3, ptr noundef %0, ptr noundef %10) #11
  %11 = load double, ptr %3, align 16, !tbaa !53
  %12 = getelementptr inbounds [3 x double], ptr %3, i64 0, i64 1
  %13 = load double, ptr %12, align 8, !tbaa !53
  %14 = fmul double %13, %13
  %15 = call double @llvm.fmuladd.f64(double %11, double %11, double %14)
  %16 = load i32, ptr %4, align 4, !tbaa !50
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
  %25 = load double, ptr %24, align 16, !tbaa !53
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
  %38 = load double, ptr %37, align 16, !tbaa !53
  %39 = fmul double %38, %38
  %40 = fadd double %8, %39
  %41 = fcmp ogt double %15, %40
  br i1 %41, label %50, label %42

42:                                               ; preds = %36
  %43 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %1, i64 0, i32 18
  %44 = load double, ptr %43, align 8, !tbaa !54
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
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #10
  ret i32 %57
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal void @_ZN3povL11Cone_NormalEPdPNS_13Object_StructEPNS_10istk_entryE(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 !PGOFuncName !55 {
  %4 = getelementptr inbounds %"struct.pov::istk_entry", ptr %2, i64 0, i32 1
  %5 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %1, i64 0, i32 10
  %6 = load ptr, ptr %5, align 8, !tbaa !52
  tail call void @_ZN3pov14MInvTransPointEPdS0_PNS_16Transform_StructE(ptr noundef %0, ptr noundef nonnull %4, ptr noundef %6) #11
  %7 = getelementptr inbounds %"struct.pov::istk_entry", ptr %2, i64 0, i32 6
  %8 = load i32, ptr %7, align 8, !tbaa !56
  switch i32 %8, label %21 [
    i32 3, label %9
    i32 1, label %19
    i32 2, label %20
  ]

9:                                                ; preds = %3
  %10 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %1, i64 0, i32 13
  %11 = load i32, ptr %10, align 4, !tbaa !50
  %12 = and i32 %11, 16
  %13 = icmp eq i32 %12, 0
  %14 = getelementptr inbounds double, ptr %0, i64 2
  br i1 %13, label %16, label %15

15:                                               ; preds = %9
  store double 0.000000e+00, ptr %14, align 8, !tbaa !53
  br label %21

16:                                               ; preds = %9
  %17 = load double, ptr %14, align 8, !tbaa !53
  %18 = fneg double %17
  store double %18, ptr %14, align 8, !tbaa !53
  br label %21

19:                                               ; preds = %3
  tail call void @_ZN3pov11Make_VectorEPdddd(ptr noundef %0, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef -1.000000e+00) #11
  br label %21

20:                                               ; preds = %3
  tail call void @_ZN3pov11Make_VectorEPdddd(ptr noundef %0, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 1.000000e+00) #11
  br label %21

21:                                               ; preds = %15, %16, %3, %20, %19
  %22 = load ptr, ptr %5, align 8, !tbaa !52
  tail call void @_ZN3pov12MTransNormalEPdS0_PNS_16Transform_StructE(ptr noundef %0, ptr noundef %0, ptr noundef %22) #11
  tail call void @_ZN3pov10VNormalizeEPdPKd(ptr noundef %0, ptr noundef %0) #11
  ret void
}

; Function Attrs: optsize
declare void @_ZN3pov15Default_UVCoordEPdPNS_13Object_StructEPNS_10istk_entryE(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: mustprogress noinline optsize uwtable
define internal noundef ptr @_ZN3povL9Copy_ConeEPNS_13Object_StructE(ptr nocapture noundef readonly %0) #0 !PGOFuncName !58 {
  %2 = tail call noundef ptr @_ZN3pov11Create_ConeEv() #11
  %3 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %2, i64 0, i32 10
  %4 = load ptr, ptr %3, align 8, !tbaa !52
  tail call void @_ZN3pov17Destroy_TransformEPNS_16Transform_StructE(ptr noundef %4) #11
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %2, ptr noundef nonnull align 8 dereferenceable(192) %0, i64 192, i1 false), !tbaa.struct !59
  %5 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %0, i64 0, i32 10
  %6 = load ptr, ptr %5, align 8, !tbaa !52
  %7 = tail call noundef ptr @_ZN3pov14Copy_TransformEPNS_16Transform_StructE(ptr noundef %6) #11
  store ptr %7, ptr %3, align 8, !tbaa !52
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal void @_ZN3povL14Translate_ConeEPNS_13Object_StructEPdPNS_16Transform_StructE(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #0 !PGOFuncName !64 {
  tail call void @_ZN3povL14Transform_ConeEPNS_13Object_StructEPNS_16Transform_StructE(ptr noundef %0, ptr noundef %2) #11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal void @_ZN3povL11Rotate_ConeEPNS_13Object_StructEPdPNS_16Transform_StructE(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #0 !PGOFuncName !65 {
  tail call void @_ZN3povL14Transform_ConeEPNS_13Object_StructEPNS_16Transform_StructE(ptr noundef %0, ptr noundef %2) #11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal void @_ZN3povL10Scale_ConeEPNS_13Object_StructEPdPNS_16Transform_StructE(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #0 !PGOFuncName !66 {
  tail call void @_ZN3povL14Transform_ConeEPNS_13Object_StructEPNS_16Transform_StructE(ptr noundef %0, ptr noundef %2) #11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal void @_ZN3povL14Transform_ConeEPNS_13Object_StructEPNS_16Transform_StructE(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !67 {
  %3 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %0, i64 0, i32 10
  %4 = load ptr, ptr %3, align 8, !tbaa !52
  tail call void @_ZN3pov18Compose_TransformsEPNS_16Transform_StructES1_(ptr noundef %4, ptr noundef %1) #11
  tail call void @_ZN3pov17Compute_Cone_BBoxEPNS_11Cone_StructE(ptr noundef %0) #11
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @_ZN3povL11Invert_ConeEPNS_13Object_StructE(ptr nocapture noundef %0) #2 !PGOFuncName !68 {
  %2 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 4, !tbaa !69
  %4 = xor i32 %3, 4
  store i32 %4, ptr %2, align 4, !tbaa !69
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal void @_ZN3povL12Destroy_ConeEPNS_13Object_StructE(ptr noundef %0) #0 !PGOFuncName !70 {
  %2 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %0, i64 0, i32 10
  %3 = load ptr, ptr %2, align 8, !tbaa !52
  tail call void @_ZN3pov17Destroy_TransformEPNS_16Transform_StructE(ptr noundef %3) #11
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef 1013) #11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN3pov11Create_ConeEv() local_unnamed_addr #0 {
  %1 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef 192, ptr noundef nonnull @.str, i32 noundef 686, ptr noundef nonnull @.str.1) #11
  %2 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %1, i64 0, i32 1
  store i32 0, ptr %2, align 8, !tbaa !71
  store ptr @_ZN3pov12Cone_MethodsE, ptr %1, align 8, !tbaa !72
  %3 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %1, i64 0, i32 2
  %4 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %1, i64 0, i32 10
  %5 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %1, i64 0, i32 13
  %6 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %1, i64 0, i32 9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  tail call void @_ZN3pov9Make_BBoxERNS_19Bounding_Box_StructEffffff(ptr noundef nonnull align 4 dereferenceable(24) %6, float noundef -1.000000e+10, float noundef -1.000000e+10, float noundef -1.000000e+10, float noundef 2.000000e+10, float noundef 2.000000e+10, float noundef 2.000000e+10) #11
  %7 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %1, i64 0, i32 14
  tail call void @_ZN3pov11Make_VectorEPdddd(ptr noundef nonnull %7, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 1.000000e+00) #11
  %8 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %1, i64 0, i32 15
  tail call void @_ZN3pov11Make_VectorEPdddd(ptr noundef nonnull %8, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00) #11
  %9 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %1, i64 0, i32 16
  store double 1.000000e+00, ptr %9, align 8, !tbaa !73
  %10 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %1, i64 0, i32 17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  %11 = tail call noundef ptr @_ZN3pov16Create_TransformEv() #11
  store ptr %11, ptr %4, align 8, !tbaa !52
  %12 = load i32, ptr %5, align 4, !tbaa !50
  %13 = or i32 %12, 2
  store i32 %13, ptr %5, align 4, !tbaa !50
  tail call void @_ZN3pov9Make_BBoxERNS_19Bounding_Box_StructEffffff(ptr noundef nonnull align 4 dereferenceable(24) %6, float noundef -1.000000e+00, float noundef -1.000000e+00, float noundef 0.000000e+00, float noundef 2.000000e+00, float noundef 2.000000e+00, float noundef 1.000000e+00) #11
  ret ptr %1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: optsize
declare noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov9Make_BBoxERNS_19Bounding_Box_StructEffffff(ptr noundef nonnull align 4 dereferenceable(24) %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6) local_unnamed_addr #4 comdat {
  store float %1, ptr %0, align 4, !tbaa !63
  %8 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 1
  store float %2, ptr %8, align 4, !tbaa !63
  %9 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 2
  store float %3, ptr %9, align 4, !tbaa !63
  %10 = getelementptr inbounds %"struct.pov::Bounding_Box_Struct", ptr %0, i64 0, i32 1
  store float %4, ptr %10, align 4, !tbaa !63
  %11 = getelementptr inbounds %"struct.pov::Bounding_Box_Struct", ptr %0, i64 0, i32 1, i64 1
  store float %5, ptr %11, align 4, !tbaa !63
  %12 = getelementptr inbounds %"struct.pov::Bounding_Box_Struct", ptr %0, i64 0, i32 1, i64 2
  store float %6, ptr %12, align 4, !tbaa !63
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov11Make_VectorEPdddd(ptr noundef %0, double noundef %1, double noundef %2, double noundef %3) local_unnamed_addr #4 comdat {
  store double %1, ptr %0, align 8, !tbaa !53
  %5 = getelementptr inbounds double, ptr %0, i64 1
  store double %2, ptr %5, align 8, !tbaa !53
  %6 = getelementptr inbounds double, ptr %0, i64 2
  store double %3, ptr %6, align 8, !tbaa !53
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZN3pov16Create_TransformEv() local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN3pov15Create_CylinderEv() local_unnamed_addr #0 {
  %1 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef 192, ptr noundef nonnull @.str, i32 noundef 790, ptr noundef nonnull @.str.1) #11
  %2 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %1, i64 0, i32 1
  store i32 0, ptr %2, align 8, !tbaa !71
  store ptr @_ZN3pov12Cone_MethodsE, ptr %1, align 8, !tbaa !72
  %3 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %1, i64 0, i32 2
  %4 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %1, i64 0, i32 10
  %5 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %1, i64 0, i32 13
  %6 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %1, i64 0, i32 9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  tail call void @_ZN3pov9Make_BBoxERNS_19Bounding_Box_StructEffffff(ptr noundef nonnull align 4 dereferenceable(24) %6, float noundef -1.000000e+10, float noundef -1.000000e+10, float noundef -1.000000e+10, float noundef 2.000000e+10, float noundef 2.000000e+10, float noundef 2.000000e+10) #11
  %7 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %1, i64 0, i32 14
  tail call void @_ZN3pov11Make_VectorEPdddd(ptr noundef nonnull %7, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 1.000000e+00) #11
  %8 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %1, i64 0, i32 15
  tail call void @_ZN3pov11Make_VectorEPdddd(ptr noundef nonnull %8, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00) #11
  %9 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %1, i64 0, i32 16
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, ptr %9, align 8, !tbaa !53
  %10 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %1, i64 0, i32 18
  store double 0.000000e+00, ptr %10, align 8, !tbaa !54
  %11 = tail call noundef ptr @_ZN3pov16Create_TransformEv() #11
  store ptr %11, ptr %4, align 8, !tbaa !52
  %12 = load i32, ptr %5, align 4, !tbaa !50
  %13 = or i32 %12, 18
  store i32 %13, ptr %5, align 4, !tbaa !50
  tail call void @_ZN3pov9Make_BBoxERNS_19Bounding_Box_StructEffffff(ptr noundef nonnull align 4 dereferenceable(24) %6, float noundef -1.000000e+00, float noundef -1.000000e+00, float noundef 0.000000e+00, float noundef 2.000000e+00, float noundef 2.000000e+00, float noundef 1.000000e+00) #11
  ret ptr %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN3pov17Compute_Cone_DataEPNS_13Object_StructE(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca double, align 8
  %3 = alloca [3 x double], align 16
  %4 = alloca [3 x double], align 16
  %5 = alloca [3 x double], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  %6 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %0, i64 0, i32 16
  %7 = load double, ptr %6, align 8, !tbaa !73
  %8 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %0, i64 0, i32 17
  %9 = load double, ptr %8, align 8, !tbaa !74
  %10 = fsub double %7, %9
  %11 = tail call double @llvm.fabs.f64(double %10)
  %12 = fcmp olt double %11, 0x3E7AD7F29ABCAF48
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %0, i64 0, i32 13
  %15 = load i32, ptr %14, align 4, !tbaa !50
  %16 = or i32 %15, 16
  store i32 %16, ptr %14, align 4, !tbaa !50
  tail call void @_ZN3pov21Compute_Cylinder_DataEPNS_13Object_StructE(ptr noundef nonnull %0) #11
  br label %46

17:                                               ; preds = %1
  %18 = fcmp olt double %7, %9
  br i1 %18, label %19, label %24

19:                                               ; preds = %17
  %20 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %0, i64 0, i32 15
  call void @_ZN3pov13Assign_VectorEPdS0_(ptr noundef nonnull %3, ptr noundef nonnull %20) #11
  %21 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %0, i64 0, i32 14
  call void @_ZN3pov13Assign_VectorEPdS0_(ptr noundef nonnull %20, ptr noundef nonnull %21) #11
  call void @_ZN3pov13Assign_VectorEPdS0_(ptr noundef nonnull %21, ptr noundef nonnull %3) #11
  %22 = load <2 x double>, ptr %6, align 8, !tbaa !53
  %23 = shufflevector <2 x double> %22, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %23, ptr %6, align 8, !tbaa !53
  br label %24

24:                                               ; preds = %19, %17
  %25 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %0, i64 0, i32 14
  %26 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %0, i64 0, i32 15
  call void @_ZN3pov4VSubEPdPKdS2_(ptr noundef nonnull %4, ptr noundef nonnull %25, ptr noundef nonnull %26) #11
  call void @_ZN3pov7VLengthERdPKd(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %4) #11
  %27 = load double, ptr %2, align 8, !tbaa !53
  %28 = fcmp olt double %27, 0x3E7AD7F29ABCAF48
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.2) #11
  br label %32

31:                                               ; preds = %24
  call void @_ZN3pov15VInverseScaleEqEPdd(ptr noundef nonnull %4, double noundef %27) #11
  br label %32

32:                                               ; preds = %31, %29
  %33 = load double, ptr %8, align 8, !tbaa !74
  %34 = load double, ptr %2, align 8, !tbaa !53
  %35 = fmul double %33, %34
  %36 = load double, ptr %6, align 8, !tbaa !73
  %37 = fsub double %36, %33
  %38 = fdiv double %35, %37
  call void @_ZN3pov6VScaleEPdPKdd(ptr noundef nonnull %5, ptr noundef nonnull %4, double noundef %38) #11
  call void @_ZN3pov4VSubEPdPKdS2_(ptr noundef nonnull %5, ptr noundef nonnull %26, ptr noundef nonnull %5) #11
  %39 = load double, ptr %2, align 8, !tbaa !53
  %40 = fadd double %38, %39
  %41 = fdiv double %38, %40
  %42 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %0, i64 0, i32 18
  store double %41, ptr %42, align 8, !tbaa !54
  %43 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %0, i64 0, i32 10
  %44 = load ptr, ptr %43, align 8, !tbaa !52
  %45 = load double, ptr %6, align 8, !tbaa !73
  call void @_ZN3pov28Compute_Coordinate_TransformEPNS_16Transform_StructEPdS2_dd(ptr noundef %44, ptr noundef nonnull %5, ptr noundef nonnull %4, double noundef %45, double noundef %40) #11
  call void @_ZN3pov17Compute_Cone_BBoxEPNS_11Cone_StructE(ptr noundef nonnull %0) #11
  br label %46

46:                                               ; preds = %32, %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #10
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #5

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN3pov21Compute_Cylinder_DataEPNS_13Object_StructE(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca double, align 8
  %3 = alloca [3 x double], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #10
  %4 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %0, i64 0, i32 14
  %5 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %0, i64 0, i32 15
  call void @_ZN3pov4VSubEPdPKdS2_(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #11
  call void @_ZN3pov7VLengthERdPKd(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %3) #11
  %6 = load double, ptr %2, align 8, !tbaa !53
  %7 = fcmp olt double %6, 0x3E7AD7F29ABCAF48
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.3) #11
  br label %16

10:                                               ; preds = %1
  call void @_ZN3pov15VInverseScaleEqEPdd(ptr noundef nonnull %3, double noundef %6) #11
  %11 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %0, i64 0, i32 10
  %12 = load ptr, ptr %11, align 8, !tbaa !52
  %13 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %0, i64 0, i32 16
  %14 = load double, ptr %13, align 8, !tbaa !73
  %15 = load double, ptr %2, align 8, !tbaa !53
  call void @_ZN3pov28Compute_Coordinate_TransformEPNS_16Transform_StructEPdS2_dd(ptr noundef %12, ptr noundef nonnull %5, ptr noundef nonnull %3, double noundef %14, double noundef %15) #11
  br label %16

16:                                               ; preds = %10, %8
  %17 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %0, i64 0, i32 18
  store double 0.000000e+00, ptr %17, align 8, !tbaa !54
  call void @_ZN3pov17Compute_Cone_BBoxEPNS_11Cone_StructE(ptr noundef %0) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov13Assign_VectorEPdS0_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 comdat {
  %3 = load double, ptr %1, align 8, !tbaa !53
  store double %3, ptr %0, align 8, !tbaa !53
  %4 = getelementptr inbounds double, ptr %1, i64 1
  %5 = load double, ptr %4, align 8, !tbaa !53
  %6 = getelementptr inbounds double, ptr %0, i64 1
  store double %5, ptr %6, align 8, !tbaa !53
  %7 = getelementptr inbounds double, ptr %1, i64 2
  %8 = load double, ptr %7, align 8, !tbaa !53
  %9 = getelementptr inbounds double, ptr %0, i64 2
  store double %8, ptr %9, align 8, !tbaa !53
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov4VSubEPdPKdS2_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat {
  %4 = load double, ptr %1, align 8, !tbaa !53
  %5 = load double, ptr %2, align 8, !tbaa !53
  %6 = fsub double %4, %5
  store double %6, ptr %0, align 8, !tbaa !53
  %7 = getelementptr inbounds double, ptr %1, i64 1
  %8 = load double, ptr %7, align 8, !tbaa !53
  %9 = getelementptr inbounds double, ptr %2, i64 1
  %10 = load double, ptr %9, align 8, !tbaa !53
  %11 = fsub double %8, %10
  %12 = getelementptr inbounds double, ptr %0, i64 1
  store double %11, ptr %12, align 8, !tbaa !53
  %13 = getelementptr inbounds double, ptr %1, i64 2
  %14 = load double, ptr %13, align 8, !tbaa !53
  %15 = getelementptr inbounds double, ptr %2, i64 2
  %16 = load double, ptr %15, align 8, !tbaa !53
  %17 = fsub double %14, %16
  %18 = getelementptr inbounds double, ptr %0, i64 2
  store double %17, ptr %18, align 8, !tbaa !53
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov7VLengthERdPKd(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #4 comdat {
  %3 = load double, ptr %1, align 8, !tbaa !53
  %4 = getelementptr inbounds double, ptr %1, i64 1
  %5 = load double, ptr %4, align 8, !tbaa !53
  %6 = fmul double %5, %5
  %7 = tail call double @llvm.fmuladd.f64(double %3, double %3, double %6)
  %8 = getelementptr inbounds double, ptr %1, i64 2
  %9 = load double, ptr %8, align 8, !tbaa !53
  %10 = tail call double @llvm.fmuladd.f64(double %9, double %9, double %7)
  %11 = tail call double @llvm.sqrt.f64(double %10)
  store double %11, ptr %0, align 8, !tbaa !53
  ret void
}

; Function Attrs: optsize
declare noundef i32 @_ZN3pov5ErrorEPKcz(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov15VInverseScaleEqEPdd(ptr noundef %0, double noundef %1) local_unnamed_addr #4 comdat {
  %3 = fdiv double 1.000000e+00, %1
  %4 = load <2 x double>, ptr %0, align 8, !tbaa !53
  %5 = insertelement <2 x double> poison, double %3, i64 0
  %6 = shufflevector <2 x double> %5, <2 x double> poison, <2 x i32> zeroinitializer
  %7 = fmul <2 x double> %6, %4
  store <2 x double> %7, ptr %0, align 8, !tbaa !53
  %8 = getelementptr inbounds double, ptr %0, i64 2
  %9 = load double, ptr %8, align 8, !tbaa !53
  %10 = fmul double %3, %9
  store double %10, ptr %8, align 8, !tbaa !53
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov6VScaleEPdPKdd(ptr noundef %0, ptr noundef %1, double noundef %2) local_unnamed_addr #4 comdat {
  %4 = load double, ptr %1, align 8, !tbaa !53
  %5 = fmul double %4, %2
  store double %5, ptr %0, align 8, !tbaa !53
  %6 = getelementptr inbounds double, ptr %1, i64 1
  %7 = load double, ptr %6, align 8, !tbaa !53
  %8 = fmul double %7, %2
  %9 = getelementptr inbounds double, ptr %0, i64 1
  store double %8, ptr %9, align 8, !tbaa !53
  %10 = getelementptr inbounds double, ptr %1, i64 2
  %11 = load double, ptr %10, align 8, !tbaa !53
  %12 = fmul double %11, %2
  %13 = getelementptr inbounds double, ptr %0, i64 2
  store double %12, ptr %13, align 8, !tbaa !53
  ret void
}

; Function Attrs: optsize
declare void @_ZN3pov28Compute_Coordinate_TransformEPNS_16Transform_StructEPdS2_dd(ptr noundef, ptr noundef, ptr noundef, double noundef, double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN3pov17Compute_Cone_BBoxEPNS_11Cone_StructE(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %0, i64 0, i32 9
  %3 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %0, i64 0, i32 18
  %4 = load double, ptr %3, align 8, !tbaa !54
  %5 = fptrunc double %4 to float
  %6 = fsub double 1.000000e+00, %4
  %7 = fptrunc double %6 to float
  tail call void @_ZN3pov9Make_BBoxERNS_19Bounding_Box_StructEffffff(ptr noundef nonnull align 4 dereferenceable(24) %2, float noundef -1.000000e+00, float noundef -1.000000e+00, float noundef %5, float noundef 2.000000e+00, float noundef 2.000000e+00, float noundef %7) #11
  %8 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %0, i64 0, i32 10
  %9 = load ptr, ptr %8, align 8, !tbaa !52
  tail call void @_ZN3pov14Recompute_BBoxEPNS_19Bounding_Box_StructEPNS_16Transform_StructE(ptr noundef nonnull %2, ptr noundef %9) #11
  ret void
}

; Function Attrs: optsize
declare void @_ZN3pov14Recompute_BBoxEPNS_19Bounding_Box_StructEPNS_16Transform_StructE(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define internal fastcc noundef i32 @_ZN3povL14intersect_coneEPNS_10Ray_StructEPNS_11Cone_StructEPNS_27Cone_Intersection_StructureE(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !PGOFuncName !75 {
  %4 = alloca double, align 8
  %5 = alloca [3 x double], align 16
  %6 = alloca [3 x double], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #10
  tail call void @_ZN3pov16Increase_CounterERx(ptr noundef nonnull align 8 dereferenceable(8) getelementptr inbounds ([123 x i64], ptr @_ZN3pov5statsE, i64 0, i64 20)) #11
  %7 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %1, i64 0, i32 10
  %8 = load ptr, ptr %7, align 8, !tbaa !52
  call void @_ZN3pov14MInvTransPointEPdS0_PNS_16Transform_StructE(ptr noundef nonnull %5, ptr noundef %0, ptr noundef %8) #11
  %9 = getelementptr inbounds %"struct.pov::Ray_Struct", ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %7, align 8, !tbaa !52
  call void @_ZN3pov18MInvTransDirectionEPdS0_PNS_16Transform_StructE(ptr noundef nonnull %6, ptr noundef nonnull %9, ptr noundef %10) #11
  call void @_ZN3pov7VLengthERdPKd(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %6) #11
  %11 = load double, ptr %4, align 8, !tbaa !53
  call void @_ZN3pov15VInverseScaleEqEPdd(ptr noundef nonnull %6, double noundef %11) #11
  %12 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %1, i64 0, i32 13
  %13 = load i32, ptr %12, align 4, !tbaa !50
  %14 = and i32 %13, 16
  %15 = icmp eq i32 %14, 0
  %16 = load double, ptr %6, align 16, !tbaa !53
  %17 = getelementptr inbounds [3 x double], ptr %6, i64 0, i64 1
  %18 = load double, ptr %17, align 8, !tbaa !53
  %19 = fmul double %18, %18
  %20 = call double @llvm.fmuladd.f64(double %16, double %16, double %19)
  br i1 %15, label %74, label %21

21:                                               ; preds = %3
  %22 = fcmp ogt double %20, 0x3E7AD7F29ABCAF48
  br i1 %22, label %23, label %163

23:                                               ; preds = %21
  %24 = load double, ptr %5, align 16, !tbaa !53
  %25 = getelementptr inbounds [3 x double], ptr %5, i64 0, i64 1
  %26 = load double, ptr %25, align 8, !tbaa !53
  %27 = fmul double %18, %26
  %28 = call double @llvm.fmuladd.f64(double %24, double %16, double %27)
  %29 = fmul double %26, %26
  %30 = call double @llvm.fmuladd.f64(double %24, double %24, double %29)
  %31 = fadd double %30, -1.000000e+00
  %32 = fneg double %20
  %33 = fmul double %31, %32
  %34 = call double @llvm.fmuladd.f64(double %28, double %28, double %33)
  %35 = fcmp ult double %34, 0.000000e+00
  br i1 %35, label %163, label %36

36:                                               ; preds = %23
  %37 = call double @sqrt(double noundef %34) #12
  %38 = fneg double %28
  %39 = fsub double %37, %28
  %40 = fdiv double %39, %20
  %41 = fsub double %38, %37
  %42 = fdiv double %41, %20
  %43 = getelementptr inbounds [3 x double], ptr %5, i64 0, i64 2
  %44 = load double, ptr %43, align 16, !tbaa !53
  %45 = getelementptr inbounds [3 x double], ptr %6, i64 0, i64 2
  %46 = load double, ptr %45, align 16, !tbaa !53
  %47 = call double @llvm.fmuladd.f64(double %40, double %46, double %44)
  %48 = fcmp ogt double %40, 0x3EB0C6F7A0B5ED8D
  %49 = fcmp olt double %40, 1.000000e+07
  %50 = and i1 %48, %49
  %51 = fcmp oge double %47, 0.000000e+00
  %52 = select i1 %50, i1 %51, i1 false
  %53 = fcmp ole double %47, 1.000000e+00
  %54 = select i1 %52, i1 %53, i1 false
  br i1 %54, label %55, label %59

55:                                               ; preds = %36
  %56 = load double, ptr %4, align 8, !tbaa !53
  %57 = fdiv double %40, %56
  store double %57, ptr %2, align 8, !tbaa !35
  %58 = getelementptr inbounds %"struct.pov::Cone_Intersection_Structure", ptr %2, i64 0, i32 1
  store i32 3, ptr %58, align 8, !tbaa !46
  br label %59

59:                                               ; preds = %55, %36
  %60 = phi i32 [ 1, %55 ], [ 0, %36 ]
  %61 = call double @llvm.fmuladd.f64(double %42, double %46, double %44)
  %62 = fcmp ogt double %42, 0x3EB0C6F7A0B5ED8D
  %63 = and i1 %62, %49
  %64 = fcmp oge double %61, 0.000000e+00
  %65 = select i1 %63, i1 %64, i1 false
  %66 = fcmp ole double %61, 1.000000e+00
  %67 = select i1 %65, i1 %66, i1 false
  br i1 %67, label %68, label %163

68:                                               ; preds = %59
  %69 = load double, ptr %4, align 8, !tbaa !53
  %70 = fdiv double %42, %69
  %71 = zext nneg i32 %60 to i64
  %72 = getelementptr inbounds %"struct.pov::Cone_Intersection_Structure", ptr %2, i64 %71
  store double %70, ptr %72, align 8, !tbaa !35
  %73 = add nuw nsw i32 %60, 1
  br label %159

74:                                               ; preds = %3
  %75 = getelementptr inbounds [3 x double], ptr %6, i64 0, i64 2
  %76 = load double, ptr %75, align 16, !tbaa !53
  %77 = fneg double %76
  %78 = call double @llvm.fmuladd.f64(double %77, double %76, double %20)
  %79 = load double, ptr %5, align 16, !tbaa !53
  %80 = getelementptr inbounds [3 x double], ptr %5, i64 0, i64 1
  %81 = load double, ptr %80, align 8, !tbaa !53
  %82 = fmul double %18, %81
  %83 = call double @llvm.fmuladd.f64(double %16, double %79, double %82)
  %84 = getelementptr inbounds [3 x double], ptr %5, i64 0, i64 2
  %85 = load double, ptr %84, align 16, !tbaa !53
  %86 = call double @llvm.fmuladd.f64(double %77, double %85, double %83)
  %87 = fmul double %81, %81
  %88 = call double @llvm.fmuladd.f64(double %79, double %79, double %87)
  %89 = fneg double %85
  %90 = call double @llvm.fmuladd.f64(double %89, double %85, double %88)
  %91 = call double @llvm.fabs.f64(double %78)
  %92 = fcmp olt double %91, 0x3E7AD7F29ABCAF48
  br i1 %92, label %93, label %112

93:                                               ; preds = %74
  %94 = call double @llvm.fabs.f64(double %86)
  %95 = fcmp ogt double %94, 0x3E7AD7F29ABCAF48
  br i1 %95, label %96, label %163

96:                                               ; preds = %93
  %97 = fmul double %90, -5.000000e-01
  %98 = fdiv double %97, %86
  %99 = fcmp ogt double %98, 0x3EB0C6F7A0B5ED8D
  %100 = fcmp olt double %98, 1.000000e+07
  %101 = and i1 %99, %100
  br i1 %101, label %102, label %163

102:                                              ; preds = %96
  %103 = call double @llvm.fmuladd.f64(double %98, double %76, double %85)
  %104 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %1, i64 0, i32 18
  %105 = load double, ptr %104, align 8, !tbaa !54
  %106 = fcmp oge double %103, %105
  %107 = fcmp ole double %103, 1.000000e+00
  %108 = and i1 %107, %106
  br i1 %108, label %109, label %163

109:                                              ; preds = %102
  %110 = load double, ptr %4, align 8, !tbaa !53
  %111 = fdiv double %98, %110
  store double %111, ptr %2, align 8, !tbaa !35
  br label %159

112:                                              ; preds = %74
  %113 = fneg double %78
  %114 = fmul double %90, %113
  %115 = call double @llvm.fmuladd.f64(double %86, double %86, double %114)
  %116 = fcmp ult double %115, 0.000000e+00
  br i1 %116, label %163, label %117

117:                                              ; preds = %112
  %118 = call double @sqrt(double noundef %115) #12
  %119 = fneg double %86
  %120 = fsub double %119, %118
  %121 = fdiv double %120, %78
  %122 = fsub double %118, %86
  %123 = fdiv double %122, %78
  %124 = fcmp ogt double %121, 0x3EB0C6F7A0B5ED8D
  %125 = fcmp olt double %121, 1.000000e+07
  %126 = and i1 %124, %125
  br i1 %126, label %127, label %140

127:                                              ; preds = %117
  %128 = load double, ptr %75, align 16, !tbaa !53
  %129 = load double, ptr %84, align 16, !tbaa !53
  %130 = call double @llvm.fmuladd.f64(double %121, double %128, double %129)
  %131 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %1, i64 0, i32 18
  %132 = load double, ptr %131, align 8, !tbaa !54
  %133 = fcmp oge double %130, %132
  %134 = fcmp ole double %130, 1.000000e+00
  %135 = and i1 %133, %134
  br i1 %135, label %136, label %140

136:                                              ; preds = %127
  %137 = load double, ptr %4, align 8, !tbaa !53
  %138 = fdiv double %121, %137
  store double %138, ptr %2, align 8, !tbaa !35
  %139 = getelementptr inbounds %"struct.pov::Cone_Intersection_Structure", ptr %2, i64 0, i32 1
  store i32 3, ptr %139, align 8, !tbaa !46
  br label %140

140:                                              ; preds = %136, %127, %117
  %141 = phi i32 [ 1, %136 ], [ 0, %127 ], [ 0, %117 ]
  %142 = fcmp ogt double %123, 0x3EB0C6F7A0B5ED8D
  %143 = and i1 %142, %125
  br i1 %143, label %144, label %163

144:                                              ; preds = %140
  %145 = load double, ptr %75, align 16, !tbaa !53
  %146 = load double, ptr %84, align 16, !tbaa !53
  %147 = call double @llvm.fmuladd.f64(double %123, double %145, double %146)
  %148 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %1, i64 0, i32 18
  %149 = load double, ptr %148, align 8, !tbaa !54
  %150 = fcmp oge double %147, %149
  %151 = fcmp ole double %147, 1.000000e+00
  %152 = and i1 %150, %151
  br i1 %152, label %153, label %163

153:                                              ; preds = %144
  %154 = load double, ptr %4, align 8, !tbaa !53
  %155 = fdiv double %123, %154
  %156 = zext nneg i32 %141 to i64
  %157 = getelementptr inbounds %"struct.pov::Cone_Intersection_Structure", ptr %2, i64 %156
  store double %155, ptr %157, align 8, !tbaa !35
  %158 = add nuw nsw i32 %141, 1
  br label %159

159:                                              ; preds = %68, %153, %109
  %160 = phi i64 [ 0, %109 ], [ %156, %153 ], [ %71, %68 ]
  %161 = phi i32 [ 1, %109 ], [ %158, %153 ], [ %73, %68 ]
  %162 = getelementptr inbounds %"struct.pov::Cone_Intersection_Structure", ptr %2, i64 %160, i32 1
  store i32 3, ptr %162, align 8, !tbaa !46
  br label %163

163:                                              ; preds = %159, %96, %102, %93, %140, %144, %112, %21, %59, %23
  %164 = phi i32 [ %60, %59 ], [ 0, %23 ], [ 0, %21 ], [ 0, %102 ], [ 0, %96 ], [ 0, %93 ], [ %141, %144 ], [ %141, %140 ], [ 0, %112 ], [ %161, %159 ]
  %165 = load i32, ptr %12, align 4, !tbaa !50
  %166 = and i32 %165, 2
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %238, label %168

168:                                              ; preds = %163
  %169 = getelementptr inbounds [3 x double], ptr %6, i64 0, i64 2
  %170 = load double, ptr %169, align 16, !tbaa !53
  %171 = call double @llvm.fabs.f64(double %170)
  %172 = fcmp ogt double %171, 0x3E7AD7F29ABCAF48
  br i1 %172, label %173, label %238

173:                                              ; preds = %168
  %174 = getelementptr inbounds [3 x double], ptr %5, i64 0, i64 2
  %175 = load double, ptr %174, align 16, !tbaa !53
  %176 = fsub double 1.000000e+00, %175
  %177 = fdiv double %176, %170
  %178 = load double, ptr %5, align 16, !tbaa !53
  %179 = load double, ptr %6, align 16, !tbaa !53
  %180 = call double @llvm.fmuladd.f64(double %177, double %179, double %178)
  %181 = getelementptr inbounds [3 x double], ptr %5, i64 0, i64 1
  %182 = load double, ptr %181, align 8, !tbaa !53
  %183 = getelementptr inbounds [3 x double], ptr %6, i64 0, i64 1
  %184 = load double, ptr %183, align 8, !tbaa !53
  %185 = call double @llvm.fmuladd.f64(double %177, double %184, double %182)
  %186 = call noundef double @_ZN3pov3SqrEd(double noundef %180) #11
  %187 = call noundef double @_ZN3pov3SqrEd(double noundef %185) #11
  %188 = fadd double %186, %187
  %189 = fcmp ole double %188, 1.000000e+00
  %190 = fcmp ogt double %177, 0x3EB0C6F7A0B5ED8D
  %191 = select i1 %189, i1 %190, i1 false
  %192 = fcmp olt double %177, 1.000000e+07
  %193 = select i1 %191, i1 %192, i1 false
  br i1 %193, label %194, label %201

194:                                              ; preds = %173
  %195 = load double, ptr %4, align 8, !tbaa !53
  %196 = fdiv double %177, %195
  %197 = zext nneg i32 %164 to i64
  %198 = getelementptr inbounds %"struct.pov::Cone_Intersection_Structure", ptr %2, i64 %197
  store double %196, ptr %198, align 8, !tbaa !35
  %199 = add nuw nsw i32 %164, 1
  %200 = getelementptr inbounds %"struct.pov::Cone_Intersection_Structure", ptr %2, i64 %197, i32 1
  store i32 2, ptr %200, align 8, !tbaa !46
  br label %201

201:                                              ; preds = %194, %173
  %202 = phi i32 [ %199, %194 ], [ %164, %173 ]
  %203 = getelementptr inbounds %"struct.pov::Cone_Struct", ptr %1, i64 0, i32 18
  %204 = load double, ptr %203, align 8, !tbaa !54
  %205 = load double, ptr %174, align 16, !tbaa !53
  %206 = fsub double %204, %205
  %207 = load double, ptr %169, align 16, !tbaa !53
  %208 = fdiv double %206, %207
  %209 = load double, ptr %5, align 16, !tbaa !53
  %210 = load double, ptr %6, align 16, !tbaa !53
  %211 = call double @llvm.fmuladd.f64(double %208, double %210, double %209)
  %212 = load double, ptr %181, align 8, !tbaa !53
  %213 = load double, ptr %183, align 8, !tbaa !53
  %214 = call double @llvm.fmuladd.f64(double %208, double %213, double %212)
  %215 = call noundef double @_ZN3pov3SqrEd(double noundef %211) #11
  %216 = call noundef double @_ZN3pov3SqrEd(double noundef %214) #11
  %217 = fadd double %215, %216
  %218 = load i32, ptr %12, align 4, !tbaa !50
  %219 = and i32 %218, 16
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %221, label %224

221:                                              ; preds = %201
  %222 = load double, ptr %203, align 8, !tbaa !54
  %223 = call noundef double @_ZN3pov3SqrEd(double noundef %222) #11
  br label %224

224:                                              ; preds = %201, %221
  %225 = phi double [ %223, %221 ], [ 1.000000e+00, %201 ]
  %226 = fcmp ole double %217, %225
  %227 = fcmp ogt double %208, 0x3EB0C6F7A0B5ED8D
  %228 = select i1 %226, i1 %227, i1 false
  %229 = fcmp olt double %208, 1.000000e+07
  %230 = select i1 %228, i1 %229, i1 false
  br i1 %230, label %231, label %238

231:                                              ; preds = %224
  %232 = load double, ptr %4, align 8, !tbaa !53
  %233 = fdiv double %208, %232
  %234 = zext nneg i32 %202 to i64
  %235 = getelementptr inbounds %"struct.pov::Cone_Intersection_Structure", ptr %2, i64 %234
  store double %233, ptr %235, align 8, !tbaa !35
  %236 = add nuw nsw i32 %202, 1
  %237 = getelementptr inbounds %"struct.pov::Cone_Intersection_Structure", ptr %2, i64 %234, i32 1
  store i32 1, ptr %237, align 8, !tbaa !46
  br label %241

238:                                              ; preds = %224, %168, %163
  %239 = phi i32 [ %202, %224 ], [ %164, %168 ], [ %164, %163 ]
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %243, label %241

241:                                              ; preds = %231, %238
  %242 = phi i32 [ %236, %231 ], [ %239, %238 ]
  call void @_ZN3pov16Increase_CounterERx(ptr noundef nonnull align 8 dereferenceable(8) getelementptr inbounds ([123 x i64], ptr @_ZN3pov5statsE, i64 0, i64 21)) #11
  br label %243

243:                                              ; preds = %241, %238
  %244 = phi i32 [ %242, %241 ], [ 0, %238 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  ret i32 %244
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov12VEvaluateRayEPdPKddS2_(ptr noundef %0, ptr noundef %1, double noundef %2, ptr noundef %3) local_unnamed_addr #4 comdat {
  %5 = load double, ptr %1, align 8, !tbaa !53
  %6 = load double, ptr %3, align 8, !tbaa !53
  %7 = tail call double @llvm.fmuladd.f64(double %2, double %6, double %5)
  store double %7, ptr %0, align 8, !tbaa !53
  %8 = getelementptr inbounds double, ptr %1, i64 1
  %9 = load double, ptr %8, align 8, !tbaa !53
  %10 = getelementptr inbounds double, ptr %3, i64 1
  %11 = load double, ptr %10, align 8, !tbaa !53
  %12 = tail call double @llvm.fmuladd.f64(double %2, double %11, double %9)
  %13 = getelementptr inbounds double, ptr %0, i64 1
  store double %12, ptr %13, align 8, !tbaa !53
  %14 = getelementptr inbounds double, ptr %1, i64 2
  %15 = load double, ptr %14, align 8, !tbaa !53
  %16 = getelementptr inbounds double, ptr %3, i64 2
  %17 = load double, ptr %16, align 8, !tbaa !53
  %18 = tail call double @llvm.fmuladd.f64(double %2, double %17, double %15)
  %19 = getelementptr inbounds double, ptr %0, i64 2
  store double %18, ptr %19, align 8, !tbaa !53
  ret void
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN3pov13Point_In_ClipEPdPNS_13Object_StructE(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN3pov13push_entry_i1EdPdPNS_13Object_StructEiPNS_13istack_structE(double noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 comdat {
  %6 = tail call noundef nonnull align 8 dereferenceable(200) ptr @_ZN3pov4itopEPNS_13istack_structE(ptr noundef %4) #11
  store double %0, ptr %6, align 8, !tbaa !76
  %7 = tail call noundef nonnull align 8 dereferenceable(200) ptr @_ZN3pov4itopEPNS_13istack_structE(ptr noundef %4) #11
  %8 = getelementptr inbounds %"struct.pov::istk_entry", ptr %7, i64 0, i32 5
  store ptr %2, ptr %8, align 8, !tbaa !77
  %9 = tail call noundef nonnull align 8 dereferenceable(200) ptr @_ZN3pov4itopEPNS_13istack_structE(ptr noundef %4) #11
  %10 = getelementptr inbounds %"struct.pov::istk_entry", ptr %9, i64 0, i32 6
  store i32 %3, ptr %10, align 8, !tbaa !56
  %11 = tail call noundef nonnull align 8 dereferenceable(200) ptr @_ZN3pov4itopEPNS_13istack_structE(ptr noundef %4) #11
  %12 = getelementptr inbounds %"struct.pov::istk_entry", ptr %11, i64 0, i32 1
  tail call void @_ZN3pov13Assign_VectorEPdS0_(ptr noundef nonnull %12, ptr noundef %1) #11
  %13 = tail call noundef nonnull align 8 dereferenceable(200) ptr @_ZN3pov4itopEPNS_13istack_structE(ptr noundef %4) #11
  %14 = getelementptr inbounds %"struct.pov::istk_entry", ptr %13, i64 0, i32 18
  store ptr null, ptr %14, align 8, !tbaa !78
  tail call void @_ZN3pov8incstackEPNS_13istack_structE(ptr noundef %4) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov16Increase_CounterERx(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #4 comdat {
  %2 = load i64, ptr %0, align 8, !tbaa !79
  %3 = add nsw i64 %2, 1
  store i64 %3, ptr %0, align 8, !tbaa !79
  ret void
}

; Function Attrs: optsize
declare void @_ZN3pov14MInvTransPointEPdS0_PNS_16Transform_StructE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN3pov18MInvTransDirectionEPdS0_PNS_16Transform_StructE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef double @_ZN3pov3SqrEd(double noundef %0) local_unnamed_addr #4 comdat {
  %2 = fmul double %0, %0
  ret double %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(200) ptr @_ZN3pov4itopEPNS_13istack_structE(ptr noundef %0) local_unnamed_addr #4 comdat {
  %2 = getelementptr inbounds %"struct.pov::istack_struct", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !81
  %4 = getelementptr inbounds %"struct.pov::istack_struct", ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 4, !tbaa !83
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds %"struct.pov::istk_entry", ptr %3, i64 %6
  ret ptr %7
}

; Function Attrs: optsize
declare void @_ZN3pov8incstackEPNS_13istack_structE(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN3pov12MTransNormalEPdS0_PNS_16Transform_StructE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN3pov10VNormalizeEPdPKd(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat {
  %3 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #10
  call void @_ZN3pov7VLengthERdPKd(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #11
  %4 = load double, ptr %3, align 8, !tbaa !53
  call void @_ZN3pov13VInverseScaleEPdPKdd(ptr noundef %0, ptr noundef %1, double noundef %4) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov13VInverseScaleEPdPKdd(ptr noundef %0, ptr noundef %1, double noundef %2) local_unnamed_addr #4 comdat {
  %4 = fdiv double 1.000000e+00, %2
  %5 = load double, ptr %1, align 8, !tbaa !53
  %6 = fmul double %4, %5
  store double %6, ptr %0, align 8, !tbaa !53
  %7 = getelementptr inbounds double, ptr %1, i64 1
  %8 = load double, ptr %7, align 8, !tbaa !53
  %9 = fmul double %4, %8
  %10 = getelementptr inbounds double, ptr %0, i64 1
  store double %9, ptr %10, align 8, !tbaa !53
  %11 = getelementptr inbounds double, ptr %1, i64 2
  %12 = load double, ptr %11, align 8, !tbaa !53
  %13 = fmul double %4, %12
  %14 = getelementptr inbounds double, ptr %0, i64 2
  store double %13, ptr %14, align 8, !tbaa !53
  ret void
}

; Function Attrs: optsize
declare void @_ZN3pov18Compose_TransformsEPNS_16Transform_StructES1_(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN3pov17Destroy_TransformEPNS_16Transform_StructE(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: optsize
declare noundef ptr @_ZN3pov14Copy_TransformEPNS_16Transform_StructE(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN3pov8pov_freeEPvPKci(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #8

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { nounwind }
attributes #11 = { optsize }
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
!34 = !{!"cones.cpp:_ZN3povL22All_Cone_IntersectionsEPNS_13Object_StructEPNS_10Ray_StructEPNS_13istack_structE"}
!35 = !{!36, !37, i64 0}
!36 = !{!"_ZTSN3pov27Cone_Intersection_StructureE", !37, i64 0, !40, i64 8}
!37 = !{!"double", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C++ TBAA"}
!40 = !{!"int", !38, i64 0}
!41 = !{!42, !43, i64 56}
!42 = !{!"_ZTSN3pov13Object_StructE", !43, i64 0, !40, i64 8, !43, i64 16, !43, i64 24, !43, i64 32, !43, i64 40, !43, i64 48, !43, i64 56, !43, i64 64, !44, i64 72, !43, i64 96, !43, i64 104, !45, i64 112, !40, i64 116}
!43 = !{!"any pointer", !38, i64 0}
!44 = !{!"_ZTSN3pov19Bounding_Box_StructE", !38, i64 0, !38, i64 12}
!45 = !{!"float", !38, i64 0}
!46 = !{!36, !40, i64 8}
!47 = distinct !{!47, !48}
!48 = !{!"llvm.loop.mustprogress"}
!49 = !{!"cones.cpp:_ZN3povL11Inside_ConeEPdPNS_13Object_StructE"}
!50 = !{!51, !40, i64 116}
!51 = !{!"_ZTSN3pov11Cone_StructE", !43, i64 0, !40, i64 8, !43, i64 16, !43, i64 24, !43, i64 32, !43, i64 40, !43, i64 48, !43, i64 56, !43, i64 64, !44, i64 72, !43, i64 96, !43, i64 104, !45, i64 112, !40, i64 116, !38, i64 120, !38, i64 144, !37, i64 168, !37, i64 176, !37, i64 184}
!52 = !{!51, !43, i64 96}
!53 = !{!37, !37, i64 0}
!54 = !{!51, !37, i64 184}
!55 = !{!"cones.cpp:_ZN3povL11Cone_NormalEPdPNS_13Object_StructEPNS_10istk_entryE"}
!56 = !{!57, !40, i64 104}
!57 = !{!"_ZTSN3pov10istk_entryE", !37, i64 0, !38, i64 8, !38, i64 32, !38, i64 56, !38, i64 80, !43, i64 96, !40, i64 104, !40, i64 108, !37, i64 112, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !37, i64 152, !37, i64 160, !37, i64 168, !37, i64 176, !43, i64 184, !43, i64 192}
!58 = !{!"cones.cpp:_ZN3povL9Copy_ConeEPNS_13Object_StructE"}
!59 = !{i64 0, i64 8, !60, i64 8, i64 4, !61, i64 16, i64 8, !60, i64 24, i64 8, !60, i64 32, i64 8, !60, i64 40, i64 8, !60, i64 48, i64 8, !60, i64 56, i64 8, !60, i64 64, i64 8, !60, i64 72, i64 12, !62, i64 84, i64 12, !62, i64 96, i64 8, !60, i64 104, i64 8, !60, i64 112, i64 4, !63, i64 116, i64 4, !61, i64 120, i64 24, !62, i64 144, i64 24, !62, i64 168, i64 8, !53, i64 176, i64 8, !53, i64 184, i64 8, !53}
!60 = !{!43, !43, i64 0}
!61 = !{!40, !40, i64 0}
!62 = !{!38, !38, i64 0}
!63 = !{!45, !45, i64 0}
!64 = !{!"cones.cpp:_ZN3povL14Translate_ConeEPNS_13Object_StructEPdPNS_16Transform_StructE"}
!65 = !{!"cones.cpp:_ZN3povL11Rotate_ConeEPNS_13Object_StructEPdPNS_16Transform_StructE"}
!66 = !{!"cones.cpp:_ZN3povL10Scale_ConeEPNS_13Object_StructEPdPNS_16Transform_StructE"}
!67 = !{!"cones.cpp:_ZN3povL14Transform_ConeEPNS_13Object_StructEPNS_16Transform_StructE"}
!68 = !{!"cones.cpp:_ZN3povL11Invert_ConeEPNS_13Object_StructE"}
!69 = !{!42, !40, i64 116}
!70 = !{!"cones.cpp:_ZN3povL12Destroy_ConeEPNS_13Object_StructE"}
!71 = !{!51, !40, i64 8}
!72 = !{!51, !43, i64 0}
!73 = !{!51, !37, i64 168}
!74 = !{!51, !37, i64 176}
!75 = !{!"cones.cpp:_ZN3povL14intersect_coneEPNS_10Ray_StructEPNS_11Cone_StructEPNS_27Cone_Intersection_StructureE"}
!76 = !{!57, !37, i64 0}
!77 = !{!57, !43, i64 96}
!78 = !{!57, !43, i64 192}
!79 = !{!80, !80, i64 0}
!80 = !{!"long long", !38, i64 0}
!81 = !{!82, !43, i64 8}
!82 = !{!"_ZTSN3pov13istack_structE", !43, i64 0, !43, i64 8, !40, i64 16, !40, i64 20}
!83 = !{!82, !40, i64 20}

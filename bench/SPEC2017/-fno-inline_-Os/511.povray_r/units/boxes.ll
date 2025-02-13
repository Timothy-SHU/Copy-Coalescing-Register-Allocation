; ModuleID = 'boxes.cpp'
source_filename = "boxes.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.pov::Method_Struct" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"struct.pov::Box_Struct" = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"struct.pov::Bounding_Box_Struct", ptr, ptr, float, i32, [2 x [3 x double]] }
%"struct.pov::Bounding_Box_Struct" = type { [3 x float], [3 x float] }
%"struct.pov::Ray_Struct" = type { [3 x double], [3 x double], i32, i32, [100 x ptr] }
%"struct.pov::Object_Struct" = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"struct.pov::Bounding_Box_Struct", ptr, ptr, float, i32 }
%"struct.pov::istk_entry" = type { double, [3 x double], [3 x double], [3 x double], [2 x double], ptr, i32, i32, double, double, double, double, double, double, double, double, double, ptr, ptr }
%"struct.pov::istack_struct" = type { ptr, ptr, i32, i32 }

$_ZN3pov13Assign_VectorEPdS0_ = comdat any

$_ZN3pov9Make_BBoxERNS_19Bounding_Box_StructEffffff = comdat any

$_ZN3pov11Make_VectorEPdddd = comdat any

$_ZN3pov16Assign_BBox_VectERA3_fPd = comdat any

$_ZN3pov4VSubEPfPKdS2_ = comdat any

$_ZN3pov16Increase_CounterERx = comdat any

$_ZN3pov12VEvaluateRayEPdPKddS2_ = comdat any

$_ZN3pov13push_entry_i1EdPdPNS_13Object_StructEiPNS_13istack_structE = comdat any

$_ZN3pov4itopEPNS_13istack_structE = comdat any

$_ZN3pov10VNormalizeEPdPKd = comdat any

$_ZN3pov7VLengthERdPKd = comdat any

$_ZN3pov13VInverseScaleEPdPKdd = comdat any

$_ZN3pov6VAddEqEPdPKd = comdat any

$_ZN3pov11VEvaluateEqEPdPKd = comdat any

$_ZN3pov4VSubEPdPKdS2_ = comdat any

$_ZN3pov6VSubEqEPdPKd = comdat any

$_ZN3pov6VDivEqEPdPKd = comdat any

@_ZN3pov11Box_MethodsE = dso_local global %"struct.pov::Method_Struct" { ptr @_ZN3povL21All_Box_IntersectionsEPNS_13Object_StructEPNS_10Ray_StructEPNS_13istack_structE, ptr @_ZN3povL10Inside_BoxEPdPNS_13Object_StructE, ptr @_ZN3povL10Box_NormalEPdPNS_13Object_StructEPNS_10istk_entryE, ptr @_ZN3povL11Box_UVCoordEPdPNS_13Object_StructEPNS_10istk_entryE, ptr @_ZN3pov8Copy_BoxEPNS_13Object_StructE, ptr @_ZN3povL13Translate_BoxEPNS_13Object_StructEPdPNS_16Transform_StructE, ptr @_ZN3povL10Rotate_BoxEPNS_13Object_StructEPdPNS_16Transform_StructE, ptr @_ZN3povL9Scale_BoxEPNS_13Object_StructEPdPNS_16Transform_StructE, ptr @_ZN3povL13Transform_BoxEPNS_13Object_StructEPNS_16Transform_StructE, ptr @_ZN3povL10Invert_BoxEPNS_13Object_StructE, ptr @_ZN3pov11Destroy_BoxEPNS_13Object_StructE }, align 8
@.str = private unnamed_addr constant [10 x i8] c"boxes.cpp\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"box\00", align 1
@_ZN3pov5statsE = external global [123 x i64], align 16
@.str.2 = private unnamed_addr constant [34 x i8] c"Unknown box side in Box_Normal().\00", align 1

; Function Attrs: mustprogress noinline optsize uwtable
define internal noundef i32 @_ZN3povL21All_Box_IntersectionsEPNS_13Object_StructEPNS_10Ray_StructEPNS_13istack_structE(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !PGOFuncName !34 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca [3 x double], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #9
  tail call void @_ZN3pov16Increase_CounterERx(ptr noundef nonnull align 8 dereferenceable(8) getelementptr inbounds ([123 x i64], ptr @_ZN3pov5statsE, i64 0, i64 18)) #10
  %9 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %0, i64 0, i32 10
  %10 = load ptr, ptr %9, align 8, !tbaa !35
  %11 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %0, i64 0, i32 14
  %12 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %0, i64 0, i32 14, i64 1
  %13 = call noundef i32 @_ZN3pov13Intersect_BoxEPNS_10Ray_StructEPNS_16Transform_StructEPdS4_S4_S4_PiS5_(ptr noundef %1, ptr noundef %10, ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %4, ptr noundef nonnull %5) #10, !range !43
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %36, label %15

15:                                               ; preds = %3
  %16 = load double, ptr %6, align 8, !tbaa !44
  %17 = fcmp ogt double %16, 0x3EB0C6F7A0B5ED8D
  br i1 %17, label %18, label %25

18:                                               ; preds = %15
  %19 = getelementptr inbounds %"struct.pov::Ray_Struct", ptr %1, i64 0, i32 1
  call void @_ZN3pov12VEvaluateRayEPdPKddS2_(ptr noundef nonnull %8, ptr noundef %1, double noundef %16, ptr noundef nonnull %19) #10
  %20 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %0, i64 0, i32 7
  %21 = load ptr, ptr %20, align 8, !tbaa !46
  %22 = call noundef zeroext i1 @_ZN3pov13Point_In_ClipEPdPNS_13Object_StructE(ptr noundef nonnull %8, ptr noundef %21) #10
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, ptr %4, align 4, !tbaa !48
  call void @_ZN3pov13push_entry_i1EdPdPNS_13Object_StructEiPNS_13istack_structE(double noundef %16, ptr noundef nonnull %8, ptr noundef nonnull %0, i32 noundef %24, ptr noundef %2) #10
  br label %25

25:                                               ; preds = %18, %23, %15
  %26 = phi i1 [ false, %23 ], [ true, %18 ], [ true, %15 ]
  %27 = load double, ptr %7, align 8, !tbaa !44
  %28 = getelementptr inbounds %"struct.pov::Ray_Struct", ptr %1, i64 0, i32 1
  call void @_ZN3pov12VEvaluateRayEPdPKddS2_(ptr noundef nonnull %8, ptr noundef %1, double noundef %27, ptr noundef nonnull %28) #10
  %29 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %0, i64 0, i32 7
  %30 = load ptr, ptr %29, align 8, !tbaa !46
  %31 = call noundef zeroext i1 @_ZN3pov13Point_In_ClipEPdPNS_13Object_StructE(ptr noundef nonnull %8, ptr noundef %30) #10
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = load i32, ptr %5, align 4, !tbaa !48
  call void @_ZN3pov13push_entry_i1EdPdPNS_13Object_StructEiPNS_13istack_structE(double noundef %27, ptr noundef nonnull %8, ptr noundef nonnull %0, i32 noundef %33, ptr noundef %2) #10
  br label %35

34:                                               ; preds = %25
  br i1 %26, label %36, label %35

35:                                               ; preds = %32, %34
  call void @_ZN3pov16Increase_CounterERx(ptr noundef nonnull align 8 dereferenceable(8) getelementptr inbounds ([123 x i64], ptr @_ZN3pov5statsE, i64 0, i64 19)) #10
  br label %36

36:                                               ; preds = %3, %35, %34
  %37 = phi i32 [ 1, %35 ], [ 0, %34 ], [ 0, %3 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  ret i32 %37
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal noundef i32 @_ZN3povL10Inside_BoxEPdPNS_13Object_StructE(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !49 {
  %3 = alloca [3 x double], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #9
  %4 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %1, i64 0, i32 10
  %5 = load ptr, ptr %4, align 8, !tbaa !35
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  call void @_ZN3pov14MInvTransPointEPdS0_PNS_16Transform_StructE(ptr noundef nonnull %3, ptr noundef %0, ptr noundef nonnull %5) #10
  br label %9

8:                                                ; preds = %2
  call void @_ZN3pov13Assign_VectorEPdS0_(ptr noundef nonnull %3, ptr noundef %0) #10
  br label %9

9:                                                ; preds = %8, %7
  %10 = load double, ptr %3, align 16, !tbaa !44
  %11 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %1, i64 0, i32 14
  %12 = load double, ptr %11, align 8, !tbaa !44
  %13 = fcmp olt double %10, %12
  br i1 %13, label %18, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %1, i64 0, i32 14, i64 1
  %16 = load double, ptr %15, align 8, !tbaa !44
  %17 = fcmp ogt double %10, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %14, %9
  %19 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %1, i64 0, i32 13
  %20 = load i32, ptr %19, align 4, !tbaa !50
  %21 = and i32 %20, 4
  br label %56

22:                                               ; preds = %14
  %23 = getelementptr inbounds [3 x double], ptr %3, i64 0, i64 1
  %24 = load double, ptr %23, align 8, !tbaa !44
  %25 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %1, i64 0, i32 14, i64 0, i64 1
  %26 = load double, ptr %25, align 8, !tbaa !44
  %27 = fcmp olt double %24, %26
  br i1 %27, label %32, label %28

28:                                               ; preds = %22
  %29 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %1, i64 0, i32 14, i64 1, i64 1
  %30 = load double, ptr %29, align 8, !tbaa !44
  %31 = fcmp ogt double %24, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %28, %22
  %33 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %1, i64 0, i32 13
  %34 = load i32, ptr %33, align 4, !tbaa !50
  %35 = and i32 %34, 4
  br label %56

36:                                               ; preds = %28
  %37 = getelementptr inbounds [3 x double], ptr %3, i64 0, i64 2
  %38 = load double, ptr %37, align 16, !tbaa !44
  %39 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %1, i64 0, i32 14, i64 0, i64 2
  %40 = load double, ptr %39, align 8, !tbaa !44
  %41 = fcmp olt double %38, %40
  br i1 %41, label %46, label %42

42:                                               ; preds = %36
  %43 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %1, i64 0, i32 14, i64 1, i64 2
  %44 = load double, ptr %43, align 8, !tbaa !44
  %45 = fcmp ogt double %38, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %42, %36
  %47 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %1, i64 0, i32 13
  %48 = load i32, ptr %47, align 4, !tbaa !50
  %49 = and i32 %48, 4
  br label %56

50:                                               ; preds = %42
  %51 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %1, i64 0, i32 13
  %52 = load i32, ptr %51, align 4, !tbaa !50
  %53 = lshr i32 %52, 2
  %54 = and i32 %53, 1
  %55 = xor i32 %54, 1
  br label %56

56:                                               ; preds = %50, %46, %32, %18
  %57 = phi i32 [ %21, %18 ], [ %35, %32 ], [ %49, %46 ], [ %55, %50 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #9
  ret i32 %57
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal void @_ZN3povL10Box_NormalEPdPNS_13Object_StructEPNS_10istk_entryE(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !51 {
  %4 = getelementptr inbounds %"struct.pov::istk_entry", ptr %2, i64 0, i32 6
  %5 = load i32, ptr %4, align 8, !tbaa !52
  switch i32 %5, label %12 [
    i32 1, label %6
    i32 2, label %7
    i32 3, label %8
    i32 4, label %9
    i32 5, label %10
    i32 6, label %11
  ]

6:                                                ; preds = %3
  tail call void @_ZN3pov11Make_VectorEPdddd(ptr noundef %0, double noundef -1.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00) #10
  br label %14

7:                                                ; preds = %3
  tail call void @_ZN3pov11Make_VectorEPdddd(ptr noundef %0, double noundef 1.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00) #10
  br label %14

8:                                                ; preds = %3
  tail call void @_ZN3pov11Make_VectorEPdddd(ptr noundef %0, double noundef 0.000000e+00, double noundef -1.000000e+00, double noundef 0.000000e+00) #10
  br label %14

9:                                                ; preds = %3
  tail call void @_ZN3pov11Make_VectorEPdddd(ptr noundef %0, double noundef 0.000000e+00, double noundef 1.000000e+00, double noundef 0.000000e+00) #10
  br label %14

10:                                               ; preds = %3
  tail call void @_ZN3pov11Make_VectorEPdddd(ptr noundef %0, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef -1.000000e+00) #10
  br label %14

11:                                               ; preds = %3
  tail call void @_ZN3pov11Make_VectorEPdddd(ptr noundef %0, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 1.000000e+00) #10
  br label %14

12:                                               ; preds = %3
  %13 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.2) #10
  br label %14

14:                                               ; preds = %12, %11, %10, %9, %8, %7, %6
  %15 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %1, i64 0, i32 10
  %16 = load ptr, ptr %15, align 8, !tbaa !35
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  tail call void @_ZN3pov12MTransNormalEPdS0_PNS_16Transform_StructE(ptr noundef %0, ptr noundef %0, ptr noundef nonnull %16) #10
  tail call void @_ZN3pov10VNormalizeEPdPKd(ptr noundef %0, ptr noundef %0) #10
  br label %19

19:                                               ; preds = %18, %14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal void @_ZN3povL11Box_UVCoordEPdPNS_13Object_StructEPNS_10istk_entryE(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2) #0 !PGOFuncName !54 {
  %4 = alloca [3 x double], align 16
  %5 = alloca [3 x double], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #9
  %6 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %1, i64 0, i32 10
  %7 = load ptr, ptr %6, align 8, !tbaa !35
  %8 = icmp eq ptr %7, null
  %9 = getelementptr inbounds %"struct.pov::istk_entry", ptr %2, i64 0, i32 1
  br i1 %8, label %11, label %10

10:                                               ; preds = %3
  call void @_ZN3pov14MInvTransPointEPdS0_PNS_16Transform_StructE(ptr noundef nonnull %4, ptr noundef nonnull %9, ptr noundef nonnull %7) #10
  br label %12

11:                                               ; preds = %3
  call void @_ZN3pov13Assign_VectorEPdS0_(ptr noundef nonnull %4, ptr noundef nonnull %9) #10
  br label %12

12:                                               ; preds = %11, %10
  %13 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %1, i64 0, i32 14
  %14 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %1, i64 0, i32 14, i64 1
  call void @_ZN3pov4VSubEPdPKdS2_(ptr noundef nonnull %5, ptr noundef nonnull %14, ptr noundef nonnull %13) #10
  call void @_ZN3pov6VSubEqEPdPKd(ptr noundef nonnull %4, ptr noundef nonnull %13) #10
  call void @_ZN3pov6VDivEqEPdPKd(ptr noundef nonnull %4, ptr noundef nonnull %5) #10
  %15 = getelementptr inbounds %"struct.pov::istk_entry", ptr %2, i64 0, i32 6
  %16 = load i32, ptr %15, align 8, !tbaa !52
  switch i32 %16, label %71 [
    i32 1, label %17
    i32 2, label %26
    i32 3, label %36
    i32 4, label %44
    i32 5, label %53
    i32 6, label %62
  ]

17:                                               ; preds = %12
  %18 = getelementptr inbounds [3 x double], ptr %4, i64 0, i64 2
  %19 = load double, ptr %18, align 16, !tbaa !44
  %20 = fmul double %19, 2.500000e-01
  store double %20, ptr %0, align 8, !tbaa !44
  %21 = getelementptr inbounds [3 x double], ptr %4, i64 0, i64 1
  %22 = load double, ptr %21, align 8, !tbaa !44
  %23 = fdiv double %22, 3.000000e+00
  %24 = fadd double %23, 0x3FD5555555555555
  %25 = getelementptr inbounds double, ptr %0, i64 1
  store double %24, ptr %25, align 8, !tbaa !44
  br label %73

26:                                               ; preds = %12
  %27 = getelementptr inbounds [3 x double], ptr %4, i64 0, i64 2
  %28 = load double, ptr %27, align 16, !tbaa !44
  %29 = fmul double %28, 2.500000e-01
  %30 = fsub double 7.500000e-01, %29
  store double %30, ptr %0, align 8, !tbaa !44
  %31 = getelementptr inbounds [3 x double], ptr %4, i64 0, i64 1
  %32 = load double, ptr %31, align 8, !tbaa !44
  %33 = fdiv double %32, 3.000000e+00
  %34 = fadd double %33, 0x3FD5555555555555
  %35 = getelementptr inbounds double, ptr %0, i64 1
  store double %34, ptr %35, align 8, !tbaa !44
  br label %73

36:                                               ; preds = %12
  %37 = load double, ptr %4, align 16, !tbaa !44
  %38 = fmul double %37, 2.500000e-01
  %39 = fadd double %38, 2.500000e-01
  store double %39, ptr %0, align 8, !tbaa !44
  %40 = getelementptr inbounds [3 x double], ptr %4, i64 0, i64 2
  %41 = load double, ptr %40, align 16, !tbaa !44
  %42 = fdiv double %41, 3.000000e+00
  %43 = getelementptr inbounds double, ptr %0, i64 1
  store double %42, ptr %43, align 8, !tbaa !44
  br label %73

44:                                               ; preds = %12
  %45 = load double, ptr %4, align 16, !tbaa !44
  %46 = fmul double %45, 2.500000e-01
  %47 = fadd double %46, 2.500000e-01
  store double %47, ptr %0, align 8, !tbaa !44
  %48 = getelementptr inbounds [3 x double], ptr %4, i64 0, i64 2
  %49 = load double, ptr %48, align 16, !tbaa !44
  %50 = fdiv double %49, 3.000000e+00
  %51 = fsub double 1.000000e+00, %50
  %52 = getelementptr inbounds double, ptr %0, i64 1
  store double %51, ptr %52, align 8, !tbaa !44
  br label %73

53:                                               ; preds = %12
  %54 = load double, ptr %4, align 16, !tbaa !44
  %55 = fmul double %54, 2.500000e-01
  %56 = fsub double 1.000000e+00, %55
  store double %56, ptr %0, align 8, !tbaa !44
  %57 = getelementptr inbounds [3 x double], ptr %4, i64 0, i64 1
  %58 = load double, ptr %57, align 8, !tbaa !44
  %59 = fdiv double %58, 3.000000e+00
  %60 = fadd double %59, 0x3FD5555555555555
  %61 = getelementptr inbounds double, ptr %0, i64 1
  store double %60, ptr %61, align 8, !tbaa !44
  br label %73

62:                                               ; preds = %12
  %63 = load double, ptr %4, align 16, !tbaa !44
  %64 = fmul double %63, 2.500000e-01
  %65 = fadd double %64, 2.500000e-01
  store double %65, ptr %0, align 8, !tbaa !44
  %66 = getelementptr inbounds [3 x double], ptr %4, i64 0, i64 1
  %67 = load double, ptr %66, align 8, !tbaa !44
  %68 = fdiv double %67, 3.000000e+00
  %69 = fadd double %68, 0x3FD5555555555555
  %70 = getelementptr inbounds double, ptr %0, i64 1
  store double %69, ptr %70, align 8, !tbaa !44
  br label %73

71:                                               ; preds = %12
  %72 = call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.2) #10
  br label %73

73:                                               ; preds = %71, %62, %53, %44, %36, %26, %17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #9
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN3pov8Copy_BoxEPNS_13Object_StructE(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call noundef ptr @_ZN3pov10Create_BoxEv() #10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %2, ptr noundef nonnull align 8 dereferenceable(168) %0, i64 168, i1 false), !tbaa.struct !55
  %3 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %0, i64 0, i32 10
  %4 = load ptr, ptr %3, align 8, !tbaa !35
  %5 = tail call noundef ptr @_ZN3pov14Copy_TransformEPNS_16Transform_StructE(ptr noundef %4) #10
  %6 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %2, i64 0, i32 10
  store ptr %5, ptr %6, align 8, !tbaa !35
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal void @_ZN3povL13Translate_BoxEPNS_13Object_StructEPdPNS_16Transform_StructE(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !PGOFuncName !59 {
  %4 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %0, i64 0, i32 10
  %5 = load ptr, ptr %4, align 8, !tbaa !35
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %0, i64 0, i32 14
  tail call void @_ZN3pov6VAddEqEPdPKd(ptr noundef nonnull %8, ptr noundef %1) #10
  %9 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %0, i64 0, i32 14, i64 1
  tail call void @_ZN3pov6VAddEqEPdPKd(ptr noundef nonnull %9, ptr noundef %1) #10
  tail call void @_ZN3pov16Compute_Box_BBoxEPNS_10Box_StructE(ptr noundef nonnull %0) #10
  br label %11

10:                                               ; preds = %3
  tail call void @_ZN3povL13Transform_BoxEPNS_13Object_StructEPNS_16Transform_StructE(ptr noundef nonnull %0, ptr noundef %2) #10
  br label %11

11:                                               ; preds = %10, %7
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal void @_ZN3povL10Rotate_BoxEPNS_13Object_StructEPdPNS_16Transform_StructE(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #0 !PGOFuncName !60 {
  tail call void @_ZN3povL13Transform_BoxEPNS_13Object_StructEPNS_16Transform_StructE(ptr noundef %0, ptr noundef %2) #10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal void @_ZN3povL9Scale_BoxEPNS_13Object_StructEPdPNS_16Transform_StructE(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !PGOFuncName !61 {
  %4 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %0, i64 0, i32 10
  %5 = load ptr, ptr %4, align 8, !tbaa !35
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %29

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %0, i64 0, i32 14
  tail call void @_ZN3pov11VEvaluateEqEPdPKd(ptr noundef nonnull %8, ptr noundef %1) #10
  %9 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %0, i64 0, i32 14, i64 1
  tail call void @_ZN3pov11VEvaluateEqEPdPKd(ptr noundef nonnull %9, ptr noundef %1) #10
  %10 = load double, ptr %8, align 8, !tbaa !44
  %11 = load double, ptr %9, align 8, !tbaa !44
  %12 = fcmp ogt double %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %7
  store double %11, ptr %8, align 8, !tbaa !44
  store double %10, ptr %9, align 8, !tbaa !44
  br label %14

14:                                               ; preds = %13, %7
  %15 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %0, i64 0, i32 14, i64 0, i64 1
  %16 = load double, ptr %15, align 8, !tbaa !44
  %17 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %0, i64 0, i32 14, i64 1, i64 1
  %18 = load double, ptr %17, align 8, !tbaa !44
  %19 = fcmp ogt double %16, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  store double %18, ptr %15, align 8, !tbaa !44
  store double %16, ptr %17, align 8, !tbaa !44
  br label %21

21:                                               ; preds = %20, %14
  %22 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %0, i64 0, i32 14, i64 0, i64 2
  %23 = load double, ptr %22, align 8, !tbaa !44
  %24 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %0, i64 0, i32 14, i64 1, i64 2
  %25 = load double, ptr %24, align 8, !tbaa !44
  %26 = fcmp ogt double %23, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store double %25, ptr %22, align 8, !tbaa !44
  store double %23, ptr %24, align 8, !tbaa !44
  br label %28

28:                                               ; preds = %27, %21
  tail call void @_ZN3pov16Compute_Box_BBoxEPNS_10Box_StructE(ptr noundef nonnull %0) #10
  br label %30

29:                                               ; preds = %3
  tail call void @_ZN3povL13Transform_BoxEPNS_13Object_StructEPNS_16Transform_StructE(ptr noundef nonnull %0, ptr noundef %2) #10
  br label %30

30:                                               ; preds = %29, %28
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal void @_ZN3povL13Transform_BoxEPNS_13Object_StructEPNS_16Transform_StructE(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !62 {
  %3 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %0, i64 0, i32 10
  %4 = load ptr, ptr %3, align 8, !tbaa !35
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call noundef ptr @_ZN3pov16Create_TransformEv() #10
  store ptr %7, ptr %3, align 8, !tbaa !35
  br label %8

8:                                                ; preds = %6, %2
  %9 = phi ptr [ %7, %6 ], [ %4, %2 ]
  tail call void @_ZN3pov18Compose_TransformsEPNS_16Transform_StructES1_(ptr noundef %9, ptr noundef %1) #10
  tail call void @_ZN3pov16Compute_Box_BBoxEPNS_10Box_StructE(ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @_ZN3povL10Invert_BoxEPNS_13Object_StructE(ptr nocapture noundef %0) #1 !PGOFuncName !63 {
  %2 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 4, !tbaa !64
  %4 = xor i32 %3, 4
  store i32 %4, ptr %2, align 4, !tbaa !64
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN3pov11Destroy_BoxEPNS_13Object_StructE(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %0, i64 0, i32 10
  %3 = load ptr, ptr %2, align 8, !tbaa !35
  tail call void @_ZN3pov17Destroy_TransformEPNS_16Transform_StructE(ptr noundef %3) #10
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef 992) #10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN3pov13Intersect_BoxEPNS_10Ray_StructEPNS_16Transform_StructEPdS4_S4_S4_PiS5_(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5, ptr nocapture noundef writeonly %6, ptr nocapture noundef writeonly %7) local_unnamed_addr #0 {
  %9 = alloca [3 x double], align 16
  %10 = alloca [3 x double], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #9
  %11 = icmp eq ptr %1, null
  %12 = getelementptr inbounds %"struct.pov::Ray_Struct", ptr %0, i64 0, i32 1
  br i1 %11, label %14, label %13

13:                                               ; preds = %8
  call void @_ZN3pov14MInvTransPointEPdS0_PNS_16Transform_StructE(ptr noundef nonnull %9, ptr noundef %0, ptr noundef nonnull %1) #10
  call void @_ZN3pov18MInvTransDirectionEPdS0_PNS_16Transform_StructE(ptr noundef nonnull %10, ptr noundef nonnull %12, ptr noundef nonnull %1) #10
  br label %15

14:                                               ; preds = %8
  call void @_ZN3pov13Assign_VectorEPdS0_(ptr noundef nonnull %9, ptr noundef %0) #10
  call void @_ZN3pov13Assign_VectorEPdS0_(ptr noundef nonnull %10, ptr noundef nonnull %12) #10
  br label %15

15:                                               ; preds = %14, %13
  %16 = load double, ptr %10, align 16, !tbaa !44
  %17 = fcmp olt double %16, 0xBE7AD7F29ABCAF48
  br i1 %17, label %18, label %34

18:                                               ; preds = %15
  %19 = load double, ptr %2, align 8, !tbaa !44
  %20 = load double, ptr %9, align 16, !tbaa !44
  %21 = fsub double %19, %20
  %22 = fdiv double %21, %16
  %23 = fcmp olt double %22, 0.000000e+00
  br i1 %23, label %276, label %24

24:                                               ; preds = %18
  %25 = fcmp ole double %22, 2.000000e+10
  %26 = zext i1 %25 to i32
  %27 = select i1 %25, double %22, double 2.000000e+10
  %28 = load double, ptr %3, align 8, !tbaa !44
  %29 = fsub double %28, %20
  %30 = fdiv double %29, %16
  %31 = fcmp ult double %30, 0.000000e+00
  br i1 %31, label %59, label %32

32:                                               ; preds = %24
  %33 = fcmp ogt double %30, %27
  br i1 %33, label %276, label %59

34:                                               ; preds = %15
  %35 = fcmp ogt double %16, 0x3E7AD7F29ABCAF48
  br i1 %35, label %36, label %52

36:                                               ; preds = %34
  %37 = load double, ptr %3, align 8, !tbaa !44
  %38 = load double, ptr %9, align 16, !tbaa !44
  %39 = fsub double %37, %38
  %40 = fdiv double %39, %16
  %41 = fcmp olt double %40, 0.000000e+00
  br i1 %41, label %276, label %42

42:                                               ; preds = %36
  %43 = fcmp ugt double %40, 2.000000e+10
  %44 = select i1 %43, i32 0, i32 2
  %45 = select i1 %43, double 2.000000e+10, double %40
  %46 = load double, ptr %2, align 8, !tbaa !44
  %47 = fsub double %46, %38
  %48 = fdiv double %47, %16
  %49 = fcmp ult double %48, 0.000000e+00
  br i1 %49, label %59, label %50

50:                                               ; preds = %42
  %51 = fcmp ogt double %48, %45
  br i1 %51, label %276, label %59

52:                                               ; preds = %34
  %53 = load double, ptr %9, align 16, !tbaa !44
  %54 = load double, ptr %2, align 8, !tbaa !44
  %55 = fcmp olt double %53, %54
  br i1 %55, label %276, label %56

56:                                               ; preds = %52
  %57 = load double, ptr %3, align 8, !tbaa !44
  %58 = fcmp ogt double %53, %57
  br i1 %58, label %276, label %59

59:                                               ; preds = %50, %32, %42, %56, %24
  %60 = phi i32 [ 0, %24 ], [ 0, %42 ], [ 0, %56 ], [ 2, %32 ], [ 1, %50 ]
  %61 = phi i32 [ %26, %24 ], [ %44, %42 ], [ 0, %56 ], [ %26, %32 ], [ %44, %50 ]
  %62 = phi double [ 0.000000e+00, %24 ], [ 0.000000e+00, %42 ], [ 0.000000e+00, %56 ], [ %30, %32 ], [ %48, %50 ]
  %63 = phi double [ %27, %24 ], [ %45, %42 ], [ 2.000000e+10, %56 ], [ %27, %32 ], [ %45, %50 ]
  %64 = getelementptr inbounds [3 x double], ptr %10, i64 0, i64 1
  %65 = load double, ptr %64, align 8, !tbaa !44
  %66 = fcmp olt double %65, 0xBE7AD7F29ABCAF48
  br i1 %66, label %67, label %105

67:                                               ; preds = %59
  %68 = getelementptr inbounds double, ptr %2, i64 1
  %69 = load double, ptr %68, align 8, !tbaa !44
  %70 = getelementptr inbounds [3 x double], ptr %9, i64 0, i64 1
  %71 = load double, ptr %70, align 8, !tbaa !44
  %72 = fsub double %69, %71
  %73 = fdiv double %72, %65
  %74 = fcmp olt double %73, %62
  br i1 %74, label %276, label %75

75:                                               ; preds = %67
  %76 = fadd double %63, 0xBEB0C6F7A0B5ED8D
  %77 = fcmp ugt double %73, %76
  br i1 %77, label %78, label %86

78:                                               ; preds = %75
  %79 = fadd double %63, 0x3EB0C6F7A0B5ED8D
  %80 = fcmp ugt double %73, %79
  br i1 %80, label %86, label %81

81:                                               ; preds = %78
  %82 = fneg double %65
  %83 = call double @llvm.fabs.f64(double %16)
  %84 = fcmp olt double %83, %82
  br i1 %84, label %85, label %86

85:                                               ; preds = %81
  br label %86

86:                                               ; preds = %75, %78, %85, %81
  %87 = phi i32 [ 3, %85 ], [ %61, %81 ], [ %61, %78 ], [ 3, %75 ]
  %88 = phi double [ %63, %85 ], [ %63, %81 ], [ %63, %78 ], [ %73, %75 ]
  %89 = getelementptr inbounds double, ptr %3, i64 1
  %90 = load double, ptr %89, align 8, !tbaa !44
  %91 = fsub double %90, %71
  %92 = fdiv double %91, %65
  %93 = fadd double %62, 0x3EB0C6F7A0B5ED8D
  %94 = fcmp ult double %92, %93
  br i1 %94, label %97, label %95

95:                                               ; preds = %86
  %96 = fcmp ogt double %92, %88
  br i1 %96, label %276, label %153

97:                                               ; preds = %86
  %98 = fadd double %62, 0xBEB0C6F7A0B5ED8D
  %99 = fcmp ult double %92, %98
  br i1 %99, label %153, label %100

100:                                              ; preds = %97
  %101 = fneg double %65
  %102 = call double @llvm.fabs.f64(double %16)
  %103 = fcmp olt double %102, %101
  br i1 %103, label %104, label %153

104:                                              ; preds = %100
  br label %153

105:                                              ; preds = %59
  %106 = fcmp ogt double %65, 0x3E7AD7F29ABCAF48
  br i1 %106, label %107, label %143

107:                                              ; preds = %105
  %108 = getelementptr inbounds double, ptr %3, i64 1
  %109 = load double, ptr %108, align 8, !tbaa !44
  %110 = getelementptr inbounds [3 x double], ptr %9, i64 0, i64 1
  %111 = load double, ptr %110, align 8, !tbaa !44
  %112 = fsub double %109, %111
  %113 = fdiv double %112, %65
  %114 = fcmp olt double %113, %62
  br i1 %114, label %276, label %115

115:                                              ; preds = %107
  %116 = fadd double %63, 0xBEB0C6F7A0B5ED8D
  %117 = fcmp ugt double %113, %116
  br i1 %117, label %118, label %125

118:                                              ; preds = %115
  %119 = fadd double %63, 0x3EB0C6F7A0B5ED8D
  %120 = fcmp ole double %113, %119
  %121 = call double @llvm.fabs.f64(double %16)
  %122 = fcmp ogt double %65, %121
  %123 = and i1 %122, %120
  %124 = select i1 %123, i32 4, i32 %61
  br label %125

125:                                              ; preds = %118, %115
  %126 = phi i32 [ 4, %115 ], [ %124, %118 ]
  %127 = phi double [ %113, %115 ], [ %63, %118 ]
  %128 = getelementptr inbounds double, ptr %2, i64 1
  %129 = load double, ptr %128, align 8, !tbaa !44
  %130 = fsub double %129, %111
  %131 = fdiv double %130, %65
  %132 = fadd double %62, 0x3EB0C6F7A0B5ED8D
  %133 = fcmp ult double %131, %132
  br i1 %133, label %136, label %134

134:                                              ; preds = %125
  %135 = fcmp ogt double %131, %127
  br i1 %135, label %276, label %153

136:                                              ; preds = %125
  %137 = fadd double %62, 0xBEB0C6F7A0B5ED8D
  %138 = fcmp oge double %131, %137
  %139 = call double @llvm.fabs.f64(double %16)
  %140 = fcmp ogt double %65, %139
  %141 = and i1 %140, %138
  %142 = select i1 %141, i32 3, i32 %60
  br label %153

143:                                              ; preds = %105
  %144 = getelementptr inbounds [3 x double], ptr %9, i64 0, i64 1
  %145 = load double, ptr %144, align 8, !tbaa !44
  %146 = getelementptr inbounds double, ptr %2, i64 1
  %147 = load double, ptr %146, align 8, !tbaa !44
  %148 = fcmp olt double %145, %147
  br i1 %148, label %276, label %149

149:                                              ; preds = %143
  %150 = getelementptr inbounds double, ptr %3, i64 1
  %151 = load double, ptr %150, align 8, !tbaa !44
  %152 = fcmp ogt double %145, %151
  br i1 %152, label %276, label %153

153:                                              ; preds = %136, %134, %95, %149, %100, %104, %97
  %154 = phi i32 [ 4, %104 ], [ %60, %100 ], [ %60, %97 ], [ %60, %149 ], [ 4, %95 ], [ 3, %134 ], [ %142, %136 ]
  %155 = phi i32 [ %87, %104 ], [ %87, %100 ], [ %87, %97 ], [ %61, %149 ], [ %87, %95 ], [ %126, %134 ], [ %126, %136 ]
  %156 = phi double [ %62, %104 ], [ %62, %100 ], [ %62, %97 ], [ %62, %149 ], [ %92, %95 ], [ %131, %134 ], [ %62, %136 ]
  %157 = phi double [ %88, %104 ], [ %88, %100 ], [ %88, %97 ], [ %63, %149 ], [ %88, %95 ], [ %127, %134 ], [ %127, %136 ]
  %158 = getelementptr inbounds [3 x double], ptr %10, i64 0, i64 2
  %159 = load double, ptr %158, align 16, !tbaa !44
  %160 = fcmp olt double %159, 0xBE7AD7F29ABCAF48
  br i1 %160, label %161, label %211

161:                                              ; preds = %153
  %162 = getelementptr inbounds double, ptr %2, i64 2
  %163 = load double, ptr %162, align 8, !tbaa !44
  %164 = getelementptr inbounds [3 x double], ptr %9, i64 0, i64 2
  %165 = load double, ptr %164, align 16, !tbaa !44
  %166 = fsub double %163, %165
  %167 = fdiv double %166, %159
  %168 = fcmp olt double %167, %156
  br i1 %168, label %276, label %169

169:                                              ; preds = %161
  %170 = fadd double %157, 0xBEB0C6F7A0B5ED8D
  %171 = fcmp ugt double %167, %170
  br i1 %171, label %172, label %186

172:                                              ; preds = %169
  %173 = fadd double %157, 0x3EB0C6F7A0B5ED8D
  %174 = fcmp ugt double %167, %173
  br i1 %174, label %186, label %175

175:                                              ; preds = %172
  switch i32 %155, label %186 [
    i32 1, label %176
    i32 2, label %176
    i32 3, label %181
    i32 4, label %181
  ]

176:                                              ; preds = %175, %175
  %177 = fneg double %159
  %178 = call double @llvm.fabs.f64(double %16)
  %179 = fcmp olt double %178, %177
  br i1 %179, label %180, label %186

180:                                              ; preds = %176
  br label %186

181:                                              ; preds = %175, %175
  %182 = fneg double %159
  %183 = call double @llvm.fabs.f64(double %65)
  %184 = fcmp olt double %183, %182
  br i1 %184, label %185, label %186

185:                                              ; preds = %181
  br label %186

186:                                              ; preds = %169, %172, %181, %185, %176, %180, %175
  %187 = phi i32 [ 0, %175 ], [ 5, %185 ], [ %155, %181 ], [ 5, %180 ], [ %155, %176 ], [ %155, %172 ], [ 5, %169 ]
  %188 = phi double [ %157, %175 ], [ %157, %185 ], [ %157, %181 ], [ %157, %180 ], [ %157, %176 ], [ %157, %172 ], [ %167, %169 ]
  %189 = getelementptr inbounds double, ptr %3, i64 2
  %190 = load double, ptr %189, align 8, !tbaa !44
  %191 = fsub double %190, %165
  %192 = fdiv double %191, %159
  %193 = fadd double %156, 0x3EB0C6F7A0B5ED8D
  %194 = fcmp ult double %192, %193
  br i1 %194, label %197, label %195

195:                                              ; preds = %186
  %196 = fcmp ogt double %192, %188
  br i1 %196, label %276, label %269

197:                                              ; preds = %186
  %198 = fadd double %156, 0xBEB0C6F7A0B5ED8D
  %199 = fcmp ult double %192, %198
  br i1 %199, label %269, label %200

200:                                              ; preds = %197
  switch i32 %154, label %269 [
    i32 1, label %201
    i32 2, label %201
    i32 3, label %206
    i32 4, label %206
  ]

201:                                              ; preds = %200, %200
  %202 = fneg double %159
  %203 = call double @llvm.fabs.f64(double %16)
  %204 = fcmp olt double %203, %202
  br i1 %204, label %205, label %269

205:                                              ; preds = %201
  br label %269

206:                                              ; preds = %200, %200
  %207 = fneg double %159
  %208 = call double @llvm.fabs.f64(double %65)
  %209 = fcmp olt double %208, %207
  br i1 %209, label %210, label %269

210:                                              ; preds = %206
  br label %269

211:                                              ; preds = %153
  %212 = fcmp ogt double %159, 0x3E7AD7F29ABCAF48
  br i1 %212, label %213, label %259

213:                                              ; preds = %211
  %214 = getelementptr inbounds double, ptr %3, i64 2
  %215 = load double, ptr %214, align 8, !tbaa !44
  %216 = getelementptr inbounds [3 x double], ptr %9, i64 0, i64 2
  %217 = load double, ptr %216, align 16, !tbaa !44
  %218 = fsub double %215, %217
  %219 = fdiv double %218, %159
  %220 = fcmp olt double %219, %156
  br i1 %220, label %276, label %221

221:                                              ; preds = %213
  %222 = fadd double %157, 0xBEB0C6F7A0B5ED8D
  %223 = fcmp ugt double %219, %222
  br i1 %223, label %224, label %236

224:                                              ; preds = %221
  %225 = fadd double %157, 0x3EB0C6F7A0B5ED8D
  %226 = fcmp ugt double %219, %225
  br i1 %226, label %236, label %227

227:                                              ; preds = %224
  switch i32 %155, label %236 [
    i32 1, label %228
    i32 2, label %228
    i32 3, label %232
    i32 4, label %232
  ]

228:                                              ; preds = %227, %227
  %229 = call double @llvm.fabs.f64(double %16)
  %230 = fcmp ogt double %159, %229
  br i1 %230, label %231, label %236

231:                                              ; preds = %228
  br label %236

232:                                              ; preds = %227, %227
  %233 = call double @llvm.fabs.f64(double %65)
  %234 = fcmp ogt double %159, %233
  br i1 %234, label %235, label %236

235:                                              ; preds = %232
  br label %236

236:                                              ; preds = %221, %224, %232, %235, %228, %231, %227
  %237 = phi i32 [ 0, %227 ], [ 6, %235 ], [ %155, %232 ], [ 6, %231 ], [ %155, %228 ], [ %155, %224 ], [ 6, %221 ]
  %238 = phi double [ %157, %227 ], [ %157, %235 ], [ %157, %232 ], [ %157, %231 ], [ %157, %228 ], [ %157, %224 ], [ %219, %221 ]
  %239 = getelementptr inbounds double, ptr %2, i64 2
  %240 = load double, ptr %239, align 8, !tbaa !44
  %241 = fsub double %240, %217
  %242 = fdiv double %241, %159
  %243 = fadd double %156, 0x3EB0C6F7A0B5ED8D
  %244 = fcmp ult double %242, %243
  br i1 %244, label %247, label %245

245:                                              ; preds = %236
  %246 = fcmp ogt double %242, %238
  br i1 %246, label %276, label %269

247:                                              ; preds = %236
  %248 = fadd double %156, 0xBEB0C6F7A0B5ED8D
  %249 = fcmp ult double %242, %248
  br i1 %249, label %269, label %250

250:                                              ; preds = %247
  switch i32 %154, label %269 [
    i32 1, label %251
    i32 2, label %251
    i32 3, label %255
    i32 4, label %255
  ]

251:                                              ; preds = %250, %250
  %252 = call double @llvm.fabs.f64(double %16)
  %253 = fcmp ogt double %159, %252
  br i1 %253, label %254, label %269

254:                                              ; preds = %251
  br label %269

255:                                              ; preds = %250, %250
  %256 = call double @llvm.fabs.f64(double %65)
  %257 = fcmp ogt double %159, %256
  br i1 %257, label %258, label %269

258:                                              ; preds = %255
  br label %269

259:                                              ; preds = %211
  %260 = getelementptr inbounds [3 x double], ptr %9, i64 0, i64 2
  %261 = load double, ptr %260, align 16, !tbaa !44
  %262 = getelementptr inbounds double, ptr %2, i64 2
  %263 = load double, ptr %262, align 8, !tbaa !44
  %264 = fcmp olt double %261, %263
  br i1 %264, label %276, label %265

265:                                              ; preds = %259
  %266 = getelementptr inbounds double, ptr %3, i64 2
  %267 = load double, ptr %266, align 8, !tbaa !44
  %268 = fcmp ogt double %261, %267
  br i1 %268, label %276, label %269

269:                                              ; preds = %245, %195, %247, %255, %258, %251, %254, %250, %265, %200, %205, %201, %210, %206, %197
  %270 = phi i32 [ 0, %200 ], [ 6, %210 ], [ %154, %206 ], [ 6, %205 ], [ %154, %201 ], [ %154, %197 ], [ 0, %250 ], [ 5, %258 ], [ %154, %255 ], [ 5, %254 ], [ %154, %251 ], [ %154, %247 ], [ %154, %265 ], [ 6, %195 ], [ 5, %245 ]
  %271 = phi i32 [ %187, %200 ], [ %187, %210 ], [ %187, %206 ], [ %187, %205 ], [ %187, %201 ], [ %187, %197 ], [ %237, %250 ], [ %237, %258 ], [ %237, %255 ], [ %237, %254 ], [ %237, %251 ], [ %237, %247 ], [ %155, %265 ], [ %187, %195 ], [ %237, %245 ]
  %272 = phi double [ %156, %200 ], [ %156, %210 ], [ %156, %206 ], [ %156, %205 ], [ %156, %201 ], [ %156, %197 ], [ %156, %250 ], [ %156, %258 ], [ %156, %255 ], [ %156, %254 ], [ %156, %251 ], [ %156, %247 ], [ %156, %265 ], [ %192, %195 ], [ %242, %245 ]
  %273 = phi double [ %188, %200 ], [ %188, %210 ], [ %188, %206 ], [ %188, %205 ], [ %188, %201 ], [ %188, %197 ], [ %238, %250 ], [ %238, %258 ], [ %238, %255 ], [ %238, %254 ], [ %238, %251 ], [ %238, %247 ], [ %157, %265 ], [ %188, %195 ], [ %238, %245 ]
  %274 = fcmp olt double %273, 0x3EB0C6F7A0B5ED8D
  br i1 %274, label %276, label %275

275:                                              ; preds = %269
  store double %272, ptr %4, align 8, !tbaa !44
  store double %273, ptr %5, align 8, !tbaa !44
  store i32 %270, ptr %6, align 4, !tbaa !48
  store i32 %271, ptr %7, align 4, !tbaa !48
  br label %276

276:                                              ; preds = %269, %259, %265, %245, %213, %195, %161, %143, %149, %134, %107, %95, %67, %52, %56, %50, %36, %32, %18, %275
  %277 = phi i32 [ 1, %275 ], [ 0, %18 ], [ 0, %32 ], [ 0, %36 ], [ 0, %50 ], [ 0, %56 ], [ 0, %52 ], [ 0, %67 ], [ 0, %95 ], [ 0, %107 ], [ 0, %134 ], [ 0, %149 ], [ 0, %143 ], [ 0, %161 ], [ 0, %195 ], [ 0, %213 ], [ 0, %245 ], [ 0, %265 ], [ 0, %259 ], [ 0, %269 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #9
  ret i32 %277
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare void @_ZN3pov14MInvTransPointEPdS0_PNS_16Transform_StructE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN3pov18MInvTransDirectionEPdS0_PNS_16Transform_StructE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov13Assign_VectorEPdS0_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 comdat {
  %3 = load double, ptr %1, align 8, !tbaa !44
  store double %3, ptr %0, align 8, !tbaa !44
  %4 = getelementptr inbounds double, ptr %1, i64 1
  %5 = load double, ptr %4, align 8, !tbaa !44
  %6 = getelementptr inbounds double, ptr %0, i64 1
  store double %5, ptr %6, align 8, !tbaa !44
  %7 = getelementptr inbounds double, ptr %1, i64 2
  %8 = load double, ptr %7, align 8, !tbaa !44
  %9 = getelementptr inbounds double, ptr %0, i64 2
  store double %8, ptr %9, align 8, !tbaa !44
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN3pov10Create_BoxEv() local_unnamed_addr #0 {
  %1 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef 168, ptr noundef nonnull @.str, i32 noundef 903, ptr noundef nonnull @.str.1) #10
  %2 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %1, i64 0, i32 1
  store i32 0, ptr %2, align 8, !tbaa !65
  store ptr @_ZN3pov11Box_MethodsE, ptr %1, align 8, !tbaa !66
  %3 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %1, i64 0, i32 2
  %4 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %1, i64 0, i32 10
  %5 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %1, i64 0, i32 9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  tail call void @_ZN3pov9Make_BBoxERNS_19Bounding_Box_StructEffffff(ptr noundef nonnull align 4 dereferenceable(24) %5, float noundef -1.000000e+10, float noundef -1.000000e+10, float noundef -1.000000e+10, float noundef 2.000000e+10, float noundef 2.000000e+10, float noundef 2.000000e+10) #10
  %6 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %1, i64 0, i32 14
  tail call void @_ZN3pov11Make_VectorEPdddd(ptr noundef nonnull %6, double noundef -1.000000e+00, double noundef -1.000000e+00, double noundef -1.000000e+00) #10
  %7 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %1, i64 0, i32 14, i64 1
  tail call void @_ZN3pov11Make_VectorEPdddd(ptr noundef nonnull %7, double noundef 1.000000e+00, double noundef 1.000000e+00, double noundef 1.000000e+00) #10
  tail call void @_ZN3pov9Make_BBoxERNS_19Bounding_Box_StructEffffff(ptr noundef nonnull align 4 dereferenceable(24) %5, float noundef -1.000000e+00, float noundef -1.000000e+00, float noundef -1.000000e+00, float noundef 2.000000e+00, float noundef 2.000000e+00, float noundef 2.000000e+00) #10
  store ptr null, ptr %4, align 8, !tbaa !35
  ret ptr %1
}

; Function Attrs: optsize
declare noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov9Make_BBoxERNS_19Bounding_Box_StructEffffff(ptr noundef nonnull align 4 dereferenceable(24) %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6) local_unnamed_addr #4 comdat {
  store float %1, ptr %0, align 4, !tbaa !58
  %8 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 1
  store float %2, ptr %8, align 4, !tbaa !58
  %9 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 2
  store float %3, ptr %9, align 4, !tbaa !58
  %10 = getelementptr inbounds %"struct.pov::Bounding_Box_Struct", ptr %0, i64 0, i32 1
  store float %4, ptr %10, align 4, !tbaa !58
  %11 = getelementptr inbounds %"struct.pov::Bounding_Box_Struct", ptr %0, i64 0, i32 1, i64 1
  store float %5, ptr %11, align 4, !tbaa !58
  %12 = getelementptr inbounds %"struct.pov::Bounding_Box_Struct", ptr %0, i64 0, i32 1, i64 2
  store float %6, ptr %12, align 4, !tbaa !58
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov11Make_VectorEPdddd(ptr noundef %0, double noundef %1, double noundef %2, double noundef %3) local_unnamed_addr #4 comdat {
  store double %1, ptr %0, align 8, !tbaa !44
  %5 = getelementptr inbounds double, ptr %0, i64 1
  store double %2, ptr %5, align 8, !tbaa !44
  %6 = getelementptr inbounds double, ptr %0, i64 2
  store double %3, ptr %6, align 8, !tbaa !44
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: optsize
declare noundef ptr @_ZN3pov14Copy_TransformEPNS_16Transform_StructE(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN3pov17Destroy_TransformEPNS_16Transform_StructE(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN3pov8pov_freeEPvPKci(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN3pov16Compute_Box_BBoxEPNS_10Box_StructE(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %0, i64 0, i32 9
  %3 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %0, i64 0, i32 14
  tail call void @_ZN3pov16Assign_BBox_VectERA3_fPd(ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull %3) #10
  %4 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %0, i64 0, i32 9, i32 1
  %5 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %0, i64 0, i32 14, i64 1
  tail call void @_ZN3pov4VSubEPfPKdS2_(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %3) #10
  %6 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %0, i64 0, i32 10
  %7 = load ptr, ptr %6, align 8, !tbaa !35
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  tail call void @_ZN3pov14Recompute_BBoxEPNS_19Bounding_Box_StructEPNS_16Transform_StructE(ptr noundef nonnull %2, ptr noundef nonnull %7) #10
  br label %10

10:                                               ; preds = %9, %1
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov16Assign_BBox_VectERA3_fPd(ptr noundef nonnull align 4 dereferenceable(12) %0, ptr noundef %1) local_unnamed_addr #4 comdat {
  %3 = load <2 x double>, ptr %1, align 8, !tbaa !44
  %4 = fptrunc <2 x double> %3 to <2 x float>
  store <2 x float> %4, ptr %0, align 4, !tbaa !58
  %5 = getelementptr inbounds double, ptr %1, i64 2
  %6 = load double, ptr %5, align 8, !tbaa !44
  %7 = fptrunc double %6 to float
  %8 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 2
  store float %7, ptr %8, align 4, !tbaa !58
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov4VSubEPfPKdS2_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat {
  %4 = load <2 x double>, ptr %1, align 8, !tbaa !44
  %5 = load <2 x double>, ptr %2, align 8, !tbaa !44
  %6 = fsub <2 x double> %4, %5
  %7 = fptrunc <2 x double> %6 to <2 x float>
  store <2 x float> %7, ptr %0, align 4, !tbaa !58
  %8 = getelementptr inbounds double, ptr %1, i64 2
  %9 = load double, ptr %8, align 8, !tbaa !44
  %10 = getelementptr inbounds double, ptr %2, i64 2
  %11 = load double, ptr %10, align 8, !tbaa !44
  %12 = fsub double %9, %11
  %13 = fptrunc double %12 to float
  %14 = getelementptr inbounds float, ptr %0, i64 2
  store float %13, ptr %14, align 4, !tbaa !58
  ret void
}

; Function Attrs: optsize
declare void @_ZN3pov14Recompute_BBoxEPNS_19Bounding_Box_StructEPNS_16Transform_StructE(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov16Increase_CounterERx(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #4 comdat {
  %2 = load i64, ptr %0, align 8, !tbaa !67
  %3 = add nsw i64 %2, 1
  store i64 %3, ptr %0, align 8, !tbaa !67
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov12VEvaluateRayEPdPKddS2_(ptr noundef %0, ptr noundef %1, double noundef %2, ptr noundef %3) local_unnamed_addr #4 comdat {
  %5 = load double, ptr %1, align 8, !tbaa !44
  %6 = load double, ptr %3, align 8, !tbaa !44
  %7 = tail call double @llvm.fmuladd.f64(double %2, double %6, double %5)
  store double %7, ptr %0, align 8, !tbaa !44
  %8 = getelementptr inbounds double, ptr %1, i64 1
  %9 = load double, ptr %8, align 8, !tbaa !44
  %10 = getelementptr inbounds double, ptr %3, i64 1
  %11 = load double, ptr %10, align 8, !tbaa !44
  %12 = tail call double @llvm.fmuladd.f64(double %2, double %11, double %9)
  %13 = getelementptr inbounds double, ptr %0, i64 1
  store double %12, ptr %13, align 8, !tbaa !44
  %14 = getelementptr inbounds double, ptr %1, i64 2
  %15 = load double, ptr %14, align 8, !tbaa !44
  %16 = getelementptr inbounds double, ptr %3, i64 2
  %17 = load double, ptr %16, align 8, !tbaa !44
  %18 = tail call double @llvm.fmuladd.f64(double %2, double %17, double %15)
  %19 = getelementptr inbounds double, ptr %0, i64 2
  store double %18, ptr %19, align 8, !tbaa !44
  ret void
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN3pov13Point_In_ClipEPdPNS_13Object_StructE(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN3pov13push_entry_i1EdPdPNS_13Object_StructEiPNS_13istack_structE(double noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 comdat {
  %6 = tail call noundef nonnull align 8 dereferenceable(200) ptr @_ZN3pov4itopEPNS_13istack_structE(ptr noundef %4) #10
  store double %0, ptr %6, align 8, !tbaa !69
  %7 = tail call noundef nonnull align 8 dereferenceable(200) ptr @_ZN3pov4itopEPNS_13istack_structE(ptr noundef %4) #10
  %8 = getelementptr inbounds %"struct.pov::istk_entry", ptr %7, i64 0, i32 5
  store ptr %2, ptr %8, align 8, !tbaa !70
  %9 = tail call noundef nonnull align 8 dereferenceable(200) ptr @_ZN3pov4itopEPNS_13istack_structE(ptr noundef %4) #10
  %10 = getelementptr inbounds %"struct.pov::istk_entry", ptr %9, i64 0, i32 6
  store i32 %3, ptr %10, align 8, !tbaa !52
  %11 = tail call noundef nonnull align 8 dereferenceable(200) ptr @_ZN3pov4itopEPNS_13istack_structE(ptr noundef %4) #10
  %12 = getelementptr inbounds %"struct.pov::istk_entry", ptr %11, i64 0, i32 1
  tail call void @_ZN3pov13Assign_VectorEPdS0_(ptr noundef nonnull %12, ptr noundef %1) #10
  %13 = tail call noundef nonnull align 8 dereferenceable(200) ptr @_ZN3pov4itopEPNS_13istack_structE(ptr noundef %4) #10
  %14 = getelementptr inbounds %"struct.pov::istk_entry", ptr %13, i64 0, i32 18
  store ptr null, ptr %14, align 8, !tbaa !71
  tail call void @_ZN3pov8incstackEPNS_13istack_structE(ptr noundef %4) #10
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(200) ptr @_ZN3pov4itopEPNS_13istack_structE(ptr noundef %0) local_unnamed_addr #4 comdat {
  %2 = getelementptr inbounds %"struct.pov::istack_struct", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !72
  %4 = getelementptr inbounds %"struct.pov::istack_struct", ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 4, !tbaa !74
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds %"struct.pov::istk_entry", ptr %3, i64 %6
  ret ptr %7
}

; Function Attrs: optsize
declare void @_ZN3pov8incstackEPNS_13istack_structE(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare noundef i32 @_ZN3pov5ErrorEPKcz(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN3pov12MTransNormalEPdS0_PNS_16Transform_StructE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN3pov10VNormalizeEPdPKd(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat {
  %3 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  call void @_ZN3pov7VLengthERdPKd(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #10
  %4 = load double, ptr %3, align 8, !tbaa !44
  call void @_ZN3pov13VInverseScaleEPdPKdd(ptr noundef %0, ptr noundef %1, double noundef %4) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov7VLengthERdPKd(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #4 comdat {
  %3 = load double, ptr %1, align 8, !tbaa !44
  %4 = getelementptr inbounds double, ptr %1, i64 1
  %5 = load double, ptr %4, align 8, !tbaa !44
  %6 = fmul double %5, %5
  %7 = tail call double @llvm.fmuladd.f64(double %3, double %3, double %6)
  %8 = getelementptr inbounds double, ptr %1, i64 2
  %9 = load double, ptr %8, align 8, !tbaa !44
  %10 = tail call double @llvm.fmuladd.f64(double %9, double %9, double %7)
  %11 = tail call double @llvm.sqrt.f64(double %10)
  store double %11, ptr %0, align 8, !tbaa !44
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov13VInverseScaleEPdPKdd(ptr noundef %0, ptr noundef %1, double noundef %2) local_unnamed_addr #4 comdat {
  %4 = fdiv double 1.000000e+00, %2
  %5 = load double, ptr %1, align 8, !tbaa !44
  %6 = fmul double %4, %5
  store double %6, ptr %0, align 8, !tbaa !44
  %7 = getelementptr inbounds double, ptr %1, i64 1
  %8 = load double, ptr %7, align 8, !tbaa !44
  %9 = fmul double %4, %8
  %10 = getelementptr inbounds double, ptr %0, i64 1
  store double %9, ptr %10, align 8, !tbaa !44
  %11 = getelementptr inbounds double, ptr %1, i64 2
  %12 = load double, ptr %11, align 8, !tbaa !44
  %13 = fmul double %4, %12
  %14 = getelementptr inbounds double, ptr %0, i64 2
  store double %13, ptr %14, align 8, !tbaa !44
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov6VAddEqEPdPKd(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 comdat {
  %3 = load double, ptr %1, align 8, !tbaa !44
  %4 = load double, ptr %0, align 8, !tbaa !44
  %5 = fadd double %3, %4
  store double %5, ptr %0, align 8, !tbaa !44
  %6 = getelementptr inbounds double, ptr %1, i64 1
  %7 = load double, ptr %6, align 8, !tbaa !44
  %8 = getelementptr inbounds double, ptr %0, i64 1
  %9 = load double, ptr %8, align 8, !tbaa !44
  %10 = fadd double %7, %9
  store double %10, ptr %8, align 8, !tbaa !44
  %11 = getelementptr inbounds double, ptr %1, i64 2
  %12 = load double, ptr %11, align 8, !tbaa !44
  %13 = getelementptr inbounds double, ptr %0, i64 2
  %14 = load double, ptr %13, align 8, !tbaa !44
  %15 = fadd double %12, %14
  store double %15, ptr %13, align 8, !tbaa !44
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov11VEvaluateEqEPdPKd(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 comdat {
  %3 = load double, ptr %1, align 8, !tbaa !44
  %4 = load double, ptr %0, align 8, !tbaa !44
  %5 = fmul double %3, %4
  store double %5, ptr %0, align 8, !tbaa !44
  %6 = getelementptr inbounds double, ptr %1, i64 1
  %7 = load double, ptr %6, align 8, !tbaa !44
  %8 = getelementptr inbounds double, ptr %0, i64 1
  %9 = load double, ptr %8, align 8, !tbaa !44
  %10 = fmul double %7, %9
  store double %10, ptr %8, align 8, !tbaa !44
  %11 = getelementptr inbounds double, ptr %1, i64 2
  %12 = load double, ptr %11, align 8, !tbaa !44
  %13 = getelementptr inbounds double, ptr %0, i64 2
  %14 = load double, ptr %13, align 8, !tbaa !44
  %15 = fmul double %12, %14
  store double %15, ptr %13, align 8, !tbaa !44
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZN3pov16Create_TransformEv() local_unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN3pov18Compose_TransformsEPNS_16Transform_StructES1_(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov4VSubEPdPKdS2_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat {
  %4 = load double, ptr %1, align 8, !tbaa !44
  %5 = load double, ptr %2, align 8, !tbaa !44
  %6 = fsub double %4, %5
  store double %6, ptr %0, align 8, !tbaa !44
  %7 = getelementptr inbounds double, ptr %1, i64 1
  %8 = load double, ptr %7, align 8, !tbaa !44
  %9 = getelementptr inbounds double, ptr %2, i64 1
  %10 = load double, ptr %9, align 8, !tbaa !44
  %11 = fsub double %8, %10
  %12 = getelementptr inbounds double, ptr %0, i64 1
  store double %11, ptr %12, align 8, !tbaa !44
  %13 = getelementptr inbounds double, ptr %1, i64 2
  %14 = load double, ptr %13, align 8, !tbaa !44
  %15 = getelementptr inbounds double, ptr %2, i64 2
  %16 = load double, ptr %15, align 8, !tbaa !44
  %17 = fsub double %14, %16
  %18 = getelementptr inbounds double, ptr %0, i64 2
  store double %17, ptr %18, align 8, !tbaa !44
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov6VSubEqEPdPKd(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 comdat {
  %3 = load double, ptr %1, align 8, !tbaa !44
  %4 = load double, ptr %0, align 8, !tbaa !44
  %5 = fsub double %4, %3
  store double %5, ptr %0, align 8, !tbaa !44
  %6 = getelementptr inbounds double, ptr %1, i64 1
  %7 = load double, ptr %6, align 8, !tbaa !44
  %8 = getelementptr inbounds double, ptr %0, i64 1
  %9 = load double, ptr %8, align 8, !tbaa !44
  %10 = fsub double %9, %7
  store double %10, ptr %8, align 8, !tbaa !44
  %11 = getelementptr inbounds double, ptr %1, i64 2
  %12 = load double, ptr %11, align 8, !tbaa !44
  %13 = getelementptr inbounds double, ptr %0, i64 2
  %14 = load double, ptr %13, align 8, !tbaa !44
  %15 = fsub double %14, %12
  store double %15, ptr %13, align 8, !tbaa !44
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov6VDivEqEPdPKd(ptr noundef %0, ptr noundef %1) local_unnamed_addr #4 comdat {
  %3 = load double, ptr %1, align 8, !tbaa !44
  %4 = load double, ptr %0, align 8, !tbaa !44
  %5 = fdiv double %4, %3
  store double %5, ptr %0, align 8, !tbaa !44
  %6 = getelementptr inbounds double, ptr %1, i64 1
  %7 = load double, ptr %6, align 8, !tbaa !44
  %8 = getelementptr inbounds double, ptr %0, i64 1
  %9 = load double, ptr %8, align 8, !tbaa !44
  %10 = fdiv double %9, %7
  store double %10, ptr %8, align 8, !tbaa !44
  %11 = getelementptr inbounds double, ptr %1, i64 2
  %12 = load double, ptr %11, align 8, !tbaa !44
  %13 = getelementptr inbounds double, ptr %0, i64 2
  %14 = load double, ptr %13, align 8, !tbaa !44
  %15 = fdiv double %14, %12
  store double %15, ptr %13, align 8, !tbaa !44
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #7

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { nounwind }
attributes #10 = { optsize }

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
!34 = !{!"boxes.cpp:_ZN3povL21All_Box_IntersectionsEPNS_13Object_StructEPNS_10Ray_StructEPNS_13istack_structE"}
!35 = !{!36, !37, i64 96}
!36 = !{!"_ZTSN3pov10Box_StructE", !37, i64 0, !40, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !41, i64 72, !37, i64 96, !37, i64 104, !42, i64 112, !40, i64 116, !38, i64 120}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C++ TBAA"}
!40 = !{!"int", !38, i64 0}
!41 = !{!"_ZTSN3pov19Bounding_Box_StructE", !38, i64 0, !38, i64 12}
!42 = !{!"float", !38, i64 0}
!43 = !{i32 0, i32 2}
!44 = !{!45, !45, i64 0}
!45 = !{!"double", !38, i64 0}
!46 = !{!47, !37, i64 56}
!47 = !{!"_ZTSN3pov13Object_StructE", !37, i64 0, !40, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !41, i64 72, !37, i64 96, !37, i64 104, !42, i64 112, !40, i64 116}
!48 = !{!40, !40, i64 0}
!49 = !{!"boxes.cpp:_ZN3povL10Inside_BoxEPdPNS_13Object_StructE"}
!50 = !{!36, !40, i64 116}
!51 = !{!"boxes.cpp:_ZN3povL10Box_NormalEPdPNS_13Object_StructEPNS_10istk_entryE"}
!52 = !{!53, !40, i64 104}
!53 = !{!"_ZTSN3pov10istk_entryE", !45, i64 0, !38, i64 8, !38, i64 32, !38, i64 56, !38, i64 80, !37, i64 96, !40, i64 104, !40, i64 108, !45, i64 112, !45, i64 120, !45, i64 128, !45, i64 136, !45, i64 144, !45, i64 152, !45, i64 160, !45, i64 168, !45, i64 176, !37, i64 184, !37, i64 192}
!54 = !{!"boxes.cpp:_ZN3povL11Box_UVCoordEPdPNS_13Object_StructEPNS_10istk_entryE"}
!55 = !{i64 0, i64 8, !56, i64 8, i64 4, !48, i64 16, i64 8, !56, i64 24, i64 8, !56, i64 32, i64 8, !56, i64 40, i64 8, !56, i64 48, i64 8, !56, i64 56, i64 8, !56, i64 64, i64 8, !56, i64 72, i64 12, !57, i64 84, i64 12, !57, i64 96, i64 8, !56, i64 104, i64 8, !56, i64 112, i64 4, !58, i64 116, i64 4, !48, i64 120, i64 48, !57}
!56 = !{!37, !37, i64 0}
!57 = !{!38, !38, i64 0}
!58 = !{!42, !42, i64 0}
!59 = !{!"boxes.cpp:_ZN3povL13Translate_BoxEPNS_13Object_StructEPdPNS_16Transform_StructE"}
!60 = !{!"boxes.cpp:_ZN3povL10Rotate_BoxEPNS_13Object_StructEPdPNS_16Transform_StructE"}
!61 = !{!"boxes.cpp:_ZN3povL9Scale_BoxEPNS_13Object_StructEPdPNS_16Transform_StructE"}
!62 = !{!"boxes.cpp:_ZN3povL13Transform_BoxEPNS_13Object_StructEPNS_16Transform_StructE"}
!63 = !{!"boxes.cpp:_ZN3povL10Invert_BoxEPNS_13Object_StructE"}
!64 = !{!47, !40, i64 116}
!65 = !{!36, !40, i64 8}
!66 = !{!36, !37, i64 0}
!67 = !{!68, !68, i64 0}
!68 = !{!"long long", !38, i64 0}
!69 = !{!53, !45, i64 0}
!70 = !{!53, !37, i64 96}
!71 = !{!53, !37, i64 192}
!72 = !{!73, !37, i64 8}
!73 = !{!"_ZTSN3pov13istack_structE", !37, i64 0, !37, i64 8, !40, i64 16, !40, i64 20}
!74 = !{!73, !40, i64 20}

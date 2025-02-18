; ModuleID = 'boxes.cpp'
source_filename = "boxes.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.pov::Method_Struct" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"struct.pov::Box_Struct" = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"struct.pov::Bounding_Box_Struct", ptr, ptr, float, i32, [2 x [3 x double]] }
%"struct.pov::Bounding_Box_Struct" = type { [3 x float], [3 x float] }
%"struct.pov::Ray_Struct" = type { [3 x double], [3 x double], i32, i32, [100 x ptr] }
%"struct.pov::Object_Struct" = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"struct.pov::Bounding_Box_Struct", ptr, ptr, float, i32 }
%"struct.pov::istack_struct" = type { ptr, ptr, i32, i32 }
%"struct.pov::istk_entry" = type { double, [3 x double], [3 x double], [3 x double], [2 x double], ptr, i32, i32, double, double, double, double, double, double, double, double, double, ptr, ptr }

@_ZN3pov11Box_MethodsE = dso_local global %"struct.pov::Method_Struct" { ptr @_ZN3povL21All_Box_IntersectionsEPNS_13Object_StructEPNS_10Ray_StructEPNS_13istack_structE, ptr @_ZN3povL10Inside_BoxEPdPNS_13Object_StructE, ptr @_ZN3povL10Box_NormalEPdPNS_13Object_StructEPNS_10istk_entryE, ptr @_ZN3povL11Box_UVCoordEPdPNS_13Object_StructEPNS_10istk_entryE, ptr @_ZN3pov8Copy_BoxEPNS_13Object_StructE, ptr @_ZN3povL13Translate_BoxEPNS_13Object_StructEPdPNS_16Transform_StructE, ptr @_ZN3povL10Rotate_BoxEPNS_13Object_StructEPdPNS_16Transform_StructE, ptr @_ZN3povL9Scale_BoxEPNS_13Object_StructEPdPNS_16Transform_StructE, ptr @_ZN3povL13Transform_BoxEPNS_13Object_StructEPNS_16Transform_StructE, ptr @_ZN3povL10Invert_BoxEPNS_13Object_StructE, ptr @_ZN3pov11Destroy_BoxEPNS_13Object_StructE }, align 8
@.str = private unnamed_addr constant [10 x i8] c"boxes.cpp\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"box\00", align 1
@_ZN3pov5statsE = external local_unnamed_addr global [123 x i64], align 16
@.str.2 = private unnamed_addr constant [34 x i8] c"Unknown box side in Box_Normal().\00", align 1

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZN3povL21All_Box_IntersectionsEPNS_13Object_StructEPNS_10Ray_StructEPNS_13istack_structE(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca [3 x double], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #8
  %9 = load i64, ptr getelementptr inbounds ([123 x i64], ptr @_ZN3pov5statsE, i64 0, i64 18), align 16, !tbaa !34
  %10 = add nsw i64 %9, 1
  store i64 %10, ptr getelementptr inbounds ([123 x i64], ptr @_ZN3pov5statsE, i64 0, i64 18), align 16, !tbaa !34
  %11 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %0, i64 0, i32 10
  %12 = load ptr, ptr %11, align 8, !tbaa !38
  %13 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %0, i64 0, i32 14
  %14 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %0, i64 0, i32 14, i64 1
  %15 = call noundef i32 @_ZN3pov13Intersect_BoxEPNS_10Ray_StructEPNS_16Transform_StructEPdS4_S4_S4_PiS5_(ptr noundef %1, ptr noundef %12, ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %4, ptr noundef nonnull %5), !range !44
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %96, label %17

17:                                               ; preds = %3
  %18 = load double, ptr %6, align 8, !tbaa !45
  %19 = fcmp ogt double %18, 0x3EB0C6F7A0B5ED8D
  br i1 %19, label %20, label %57

20:                                               ; preds = %17
  %21 = getelementptr inbounds %"struct.pov::Ray_Struct", ptr %1, i64 0, i32 1
  %22 = load double, ptr %1, align 8, !tbaa !45
  %23 = load double, ptr %21, align 8, !tbaa !45
  %24 = tail call double @llvm.fmuladd.f64(double %18, double %23, double %22)
  store double %24, ptr %8, align 16, !tbaa !45
  %25 = getelementptr inbounds double, ptr %1, i64 1
  %26 = load double, ptr %25, align 8, !tbaa !45
  %27 = getelementptr inbounds %"struct.pov::Ray_Struct", ptr %1, i64 0, i32 1, i64 1
  %28 = load double, ptr %27, align 8, !tbaa !45
  %29 = tail call double @llvm.fmuladd.f64(double %18, double %28, double %26)
  %30 = getelementptr inbounds double, ptr %8, i64 1
  store double %29, ptr %30, align 8, !tbaa !45
  %31 = getelementptr inbounds double, ptr %1, i64 2
  %32 = load double, ptr %31, align 8, !tbaa !45
  %33 = getelementptr inbounds %"struct.pov::Ray_Struct", ptr %1, i64 0, i32 1, i64 2
  %34 = load double, ptr %33, align 8, !tbaa !45
  %35 = tail call double @llvm.fmuladd.f64(double %18, double %34, double %32)
  %36 = getelementptr inbounds double, ptr %8, i64 2
  store double %35, ptr %36, align 16, !tbaa !45
  %37 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %0, i64 0, i32 7
  %38 = load ptr, ptr %37, align 8, !tbaa !47
  %39 = call noundef zeroext i1 @_ZN3pov13Point_In_ClipEPdPNS_13Object_StructE(ptr noundef nonnull %8, ptr noundef %38)
  br i1 %39, label %40, label %57

40:                                               ; preds = %20
  %41 = load i32, ptr %4, align 4, !tbaa !49
  %42 = getelementptr inbounds %"struct.pov::istack_struct", ptr %2, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !50
  %44 = getelementptr inbounds %"struct.pov::istack_struct", ptr %2, i64 0, i32 3
  %45 = load i32, ptr %44, align 4, !tbaa !52
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %"struct.pov::istk_entry", ptr %43, i64 %46
  store double %18, ptr %47, align 8, !tbaa !53
  %48 = getelementptr inbounds %"struct.pov::istk_entry", ptr %43, i64 %46, i32 5
  store ptr %0, ptr %48, align 8, !tbaa !55
  %49 = getelementptr inbounds %"struct.pov::istk_entry", ptr %43, i64 %46, i32 6
  store i32 %41, ptr %49, align 8, !tbaa !56
  %50 = getelementptr inbounds %"struct.pov::istk_entry", ptr %43, i64 %46, i32 1
  %51 = load double, ptr %8, align 16, !tbaa !45
  store double %51, ptr %50, align 8, !tbaa !45
  %52 = load double, ptr %30, align 8, !tbaa !45
  %53 = getelementptr inbounds double, ptr %50, i64 1
  store double %52, ptr %53, align 8, !tbaa !45
  %54 = load double, ptr %36, align 16, !tbaa !45
  %55 = getelementptr inbounds double, ptr %50, i64 2
  store double %54, ptr %55, align 8, !tbaa !45
  %56 = getelementptr inbounds %"struct.pov::istk_entry", ptr %43, i64 %46, i32 18
  store ptr null, ptr %56, align 8, !tbaa !57
  call void @_ZN3pov8incstackEPNS_13istack_structE(ptr noundef %2)
  br label %57

57:                                               ; preds = %20, %40, %17
  %58 = phi i32 [ 1, %40 ], [ 0, %20 ], [ 0, %17 ]
  %59 = load double, ptr %7, align 8, !tbaa !45
  %60 = getelementptr inbounds %"struct.pov::Ray_Struct", ptr %1, i64 0, i32 1
  %61 = load double, ptr %1, align 8, !tbaa !45
  %62 = load double, ptr %60, align 8, !tbaa !45
  %63 = call double @llvm.fmuladd.f64(double %59, double %62, double %61)
  store double %63, ptr %8, align 16, !tbaa !45
  %64 = getelementptr inbounds double, ptr %1, i64 1
  %65 = load double, ptr %64, align 8, !tbaa !45
  %66 = getelementptr inbounds %"struct.pov::Ray_Struct", ptr %1, i64 0, i32 1, i64 1
  %67 = load double, ptr %66, align 8, !tbaa !45
  %68 = call double @llvm.fmuladd.f64(double %59, double %67, double %65)
  %69 = getelementptr inbounds double, ptr %8, i64 1
  store double %68, ptr %69, align 8, !tbaa !45
  %70 = getelementptr inbounds double, ptr %1, i64 2
  %71 = load double, ptr %70, align 8, !tbaa !45
  %72 = getelementptr inbounds %"struct.pov::Ray_Struct", ptr %1, i64 0, i32 1, i64 2
  %73 = load double, ptr %72, align 8, !tbaa !45
  %74 = call double @llvm.fmuladd.f64(double %59, double %73, double %71)
  %75 = getelementptr inbounds double, ptr %8, i64 2
  store double %74, ptr %75, align 16, !tbaa !45
  %76 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %0, i64 0, i32 7
  %77 = load ptr, ptr %76, align 8, !tbaa !47
  %78 = call noundef zeroext i1 @_ZN3pov13Point_In_ClipEPdPNS_13Object_StructE(ptr noundef nonnull %8, ptr noundef %77)
  br i1 %78, label %79, label %96

79:                                               ; preds = %57
  %80 = load i32, ptr %5, align 4, !tbaa !49
  %81 = getelementptr inbounds %"struct.pov::istack_struct", ptr %2, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !50
  %83 = getelementptr inbounds %"struct.pov::istack_struct", ptr %2, i64 0, i32 3
  %84 = load i32, ptr %83, align 4, !tbaa !52
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds %"struct.pov::istk_entry", ptr %82, i64 %85
  store double %59, ptr %86, align 8, !tbaa !53
  %87 = getelementptr inbounds %"struct.pov::istk_entry", ptr %82, i64 %85, i32 5
  store ptr %0, ptr %87, align 8, !tbaa !55
  %88 = getelementptr inbounds %"struct.pov::istk_entry", ptr %82, i64 %85, i32 6
  store i32 %80, ptr %88, align 8, !tbaa !56
  %89 = getelementptr inbounds %"struct.pov::istk_entry", ptr %82, i64 %85, i32 1
  %90 = load double, ptr %8, align 16, !tbaa !45
  store double %90, ptr %89, align 8, !tbaa !45
  %91 = load double, ptr %69, align 8, !tbaa !45
  %92 = getelementptr inbounds double, ptr %89, i64 1
  store double %91, ptr %92, align 8, !tbaa !45
  %93 = load double, ptr %75, align 16, !tbaa !45
  %94 = getelementptr inbounds double, ptr %89, i64 2
  store double %93, ptr %94, align 8, !tbaa !45
  %95 = getelementptr inbounds %"struct.pov::istk_entry", ptr %82, i64 %85, i32 18
  store ptr null, ptr %95, align 8, !tbaa !57
  call void @_ZN3pov8incstackEPNS_13istack_structE(ptr noundef %2)
  br label %96

96:                                               ; preds = %57, %79, %3
  %97 = phi i32 [ 1, %79 ], [ %58, %57 ], [ 0, %3 ]
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %96
  %100 = load i64, ptr getelementptr inbounds ([123 x i64], ptr @_ZN3pov5statsE, i64 0, i64 19), align 8, !tbaa !34
  %101 = add nsw i64 %100, 1
  store i64 %101, ptr getelementptr inbounds ([123 x i64], ptr @_ZN3pov5statsE, i64 0, i64 19), align 8, !tbaa !34
  br label %102

102:                                              ; preds = %99, %96
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #8
  ret i32 %97
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZN3povL10Inside_BoxEPdPNS_13Object_StructE(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [3 x double], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #8
  %4 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %1, i64 0, i32 10
  %5 = load ptr, ptr %4, align 8, !tbaa !38
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  call void @_ZN3pov14MInvTransPointEPdS0_PNS_16Transform_StructE(ptr noundef nonnull %3, ptr noundef %0, ptr noundef nonnull %5)
  br label %16

8:                                                ; preds = %2
  %9 = load double, ptr %0, align 8, !tbaa !45
  store double %9, ptr %3, align 16, !tbaa !45
  %10 = getelementptr inbounds double, ptr %0, i64 1
  %11 = load double, ptr %10, align 8, !tbaa !45
  %12 = getelementptr inbounds double, ptr %3, i64 1
  store double %11, ptr %12, align 8, !tbaa !45
  %13 = getelementptr inbounds double, ptr %0, i64 2
  %14 = load double, ptr %13, align 8, !tbaa !45
  %15 = getelementptr inbounds double, ptr %3, i64 2
  store double %14, ptr %15, align 16, !tbaa !45
  br label %16

16:                                               ; preds = %8, %7
  %17 = load double, ptr %3, align 16, !tbaa !45
  %18 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %1, i64 0, i32 14
  %19 = load double, ptr %18, align 8, !tbaa !45
  %20 = fcmp olt double %17, %19
  br i1 %20, label %25, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %1, i64 0, i32 14, i64 1
  %23 = load double, ptr %22, align 8, !tbaa !45
  %24 = fcmp ogt double %17, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %21, %16
  %26 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %1, i64 0, i32 13
  %27 = load i32, ptr %26, align 4, !tbaa !58
  %28 = and i32 %27, 4
  br label %63

29:                                               ; preds = %21
  %30 = getelementptr inbounds [3 x double], ptr %3, i64 0, i64 1
  %31 = load double, ptr %30, align 8, !tbaa !45
  %32 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %1, i64 0, i32 14, i64 0, i64 1
  %33 = load double, ptr %32, align 8, !tbaa !45
  %34 = fcmp olt double %31, %33
  br i1 %34, label %39, label %35

35:                                               ; preds = %29
  %36 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %1, i64 0, i32 14, i64 1, i64 1
  %37 = load double, ptr %36, align 8, !tbaa !45
  %38 = fcmp ogt double %31, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %35, %29
  %40 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %1, i64 0, i32 13
  %41 = load i32, ptr %40, align 4, !tbaa !58
  %42 = and i32 %41, 4
  br label %63

43:                                               ; preds = %35
  %44 = getelementptr inbounds [3 x double], ptr %3, i64 0, i64 2
  %45 = load double, ptr %44, align 16, !tbaa !45
  %46 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %1, i64 0, i32 14, i64 0, i64 2
  %47 = load double, ptr %46, align 8, !tbaa !45
  %48 = fcmp olt double %45, %47
  br i1 %48, label %53, label %49

49:                                               ; preds = %43
  %50 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %1, i64 0, i32 14, i64 1, i64 2
  %51 = load double, ptr %50, align 8, !tbaa !45
  %52 = fcmp ogt double %45, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %49, %43
  %54 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %1, i64 0, i32 13
  %55 = load i32, ptr %54, align 4, !tbaa !58
  %56 = and i32 %55, 4
  br label %63

57:                                               ; preds = %49
  %58 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %1, i64 0, i32 13
  %59 = load i32, ptr %58, align 4, !tbaa !58
  %60 = lshr i32 %59, 2
  %61 = and i32 %60, 1
  %62 = xor i32 %61, 1
  br label %63

63:                                               ; preds = %57, %53, %39, %25
  %64 = phi i32 [ %28, %25 ], [ %42, %39 ], [ %56, %53 ], [ %62, %57 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #8
  ret i32 %64
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN3povL10Box_NormalEPdPNS_13Object_StructEPNS_10istk_entryE(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %"struct.pov::istk_entry", ptr %2, i64 0, i32 6
  %5 = load i32, ptr %4, align 8, !tbaa !56
  switch i32 %5, label %20 [
    i32 1, label %6
    i32 2, label %8
    i32 3, label %10
    i32 4, label %13
    i32 5, label %16
    i32 6, label %18
  ]

6:                                                ; preds = %3
  store double -1.000000e+00, ptr %0, align 8, !tbaa !45
  %7 = getelementptr inbounds double, ptr %0, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  br label %22

8:                                                ; preds = %3
  store double 1.000000e+00, ptr %0, align 8, !tbaa !45
  %9 = getelementptr inbounds double, ptr %0, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 0, i64 16, i1 false)
  br label %22

10:                                               ; preds = %3
  store double 0.000000e+00, ptr %0, align 8, !tbaa !45
  %11 = getelementptr inbounds double, ptr %0, i64 1
  store double -1.000000e+00, ptr %11, align 8, !tbaa !45
  %12 = getelementptr inbounds double, ptr %0, i64 2
  store double 0.000000e+00, ptr %12, align 8, !tbaa !45
  br label %22

13:                                               ; preds = %3
  store double 0.000000e+00, ptr %0, align 8, !tbaa !45
  %14 = getelementptr inbounds double, ptr %0, i64 1
  store double 1.000000e+00, ptr %14, align 8, !tbaa !45
  %15 = getelementptr inbounds double, ptr %0, i64 2
  store double 0.000000e+00, ptr %15, align 8, !tbaa !45
  br label %22

16:                                               ; preds = %3
  %17 = getelementptr inbounds double, ptr %0, i64 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  store double -1.000000e+00, ptr %17, align 8, !tbaa !45
  br label %22

18:                                               ; preds = %3
  %19 = getelementptr inbounds double, ptr %0, i64 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  store double 1.000000e+00, ptr %19, align 8, !tbaa !45
  br label %22

20:                                               ; preds = %3
  %21 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.2)
  br label %22

22:                                               ; preds = %20, %18, %16, %13, %10, %8, %6
  %23 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %1, i64 0, i32 10
  %24 = load ptr, ptr %23, align 8, !tbaa !38
  %25 = icmp eq ptr %24, null
  br i1 %25, label %43, label %26

26:                                               ; preds = %22
  tail call void @_ZN3pov12MTransNormalEPdS0_PNS_16Transform_StructE(ptr noundef %0, ptr noundef %0, ptr noundef nonnull %24)
  %27 = load double, ptr %0, align 8, !tbaa !45
  %28 = getelementptr inbounds double, ptr %0, i64 1
  %29 = load double, ptr %28, align 8, !tbaa !45
  %30 = fmul double %29, %29
  %31 = tail call double @llvm.fmuladd.f64(double %27, double %27, double %30)
  %32 = getelementptr inbounds double, ptr %0, i64 2
  %33 = load double, ptr %32, align 8, !tbaa !45
  %34 = tail call double @llvm.fmuladd.f64(double %33, double %33, double %31)
  %35 = tail call double @sqrt(double noundef %34) #8
  %36 = fdiv double 1.000000e+00, %35
  %37 = load double, ptr %0, align 8, !tbaa !45
  %38 = fmul double %37, %36
  store double %38, ptr %0, align 8, !tbaa !45
  %39 = load double, ptr %28, align 8, !tbaa !45
  %40 = fmul double %36, %39
  store double %40, ptr %28, align 8, !tbaa !45
  %41 = load double, ptr %32, align 8, !tbaa !45
  %42 = fmul double %36, %41
  store double %42, ptr %32, align 8, !tbaa !45
  br label %43

43:                                               ; preds = %26, %22
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN3povL11Box_UVCoordEPdPNS_13Object_StructEPNS_10istk_entryE(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = alloca [3 x double], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #8
  %5 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %1, i64 0, i32 10
  %6 = load ptr, ptr %5, align 8, !tbaa !38
  %7 = icmp eq ptr %6, null
  %8 = getelementptr inbounds %"struct.pov::istk_entry", ptr %2, i64 0, i32 1
  br i1 %7, label %10, label %9

9:                                                ; preds = %3
  call void @_ZN3pov14MInvTransPointEPdS0_PNS_16Transform_StructE(ptr noundef nonnull %4, ptr noundef nonnull %8, ptr noundef nonnull %6)
  br label %18

10:                                               ; preds = %3
  %11 = load double, ptr %8, align 8, !tbaa !45
  store double %11, ptr %4, align 16, !tbaa !45
  %12 = getelementptr inbounds %"struct.pov::istk_entry", ptr %2, i64 0, i32 1, i64 1
  %13 = load double, ptr %12, align 8, !tbaa !45
  %14 = getelementptr inbounds double, ptr %4, i64 1
  store double %13, ptr %14, align 8, !tbaa !45
  %15 = getelementptr inbounds %"struct.pov::istk_entry", ptr %2, i64 0, i32 1, i64 2
  %16 = load double, ptr %15, align 8, !tbaa !45
  %17 = getelementptr inbounds double, ptr %4, i64 2
  store double %16, ptr %17, align 16, !tbaa !45
  br label %18

18:                                               ; preds = %10, %9
  %19 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %1, i64 0, i32 14
  %20 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %1, i64 0, i32 14, i64 1
  %21 = load double, ptr %20, align 8, !tbaa !45
  %22 = load double, ptr %19, align 8, !tbaa !45
  %23 = fsub double %21, %22
  %24 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %1, i64 0, i32 14, i64 1, i64 1
  %25 = load double, ptr %24, align 8, !tbaa !45
  %26 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %1, i64 0, i32 14, i64 0, i64 1
  %27 = load double, ptr %26, align 8, !tbaa !45
  %28 = fsub double %25, %27
  %29 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %1, i64 0, i32 14, i64 1, i64 2
  %30 = load double, ptr %29, align 8, !tbaa !45
  %31 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %1, i64 0, i32 14, i64 0, i64 2
  %32 = load double, ptr %31, align 8, !tbaa !45
  %33 = fsub double %30, %32
  %34 = load double, ptr %4, align 16, !tbaa !45
  %35 = fsub double %34, %22
  store double %35, ptr %4, align 16, !tbaa !45
  %36 = getelementptr inbounds double, ptr %4, i64 1
  %37 = load double, ptr %36, align 8, !tbaa !45
  %38 = fsub double %37, %27
  store double %38, ptr %36, align 8, !tbaa !45
  %39 = getelementptr inbounds double, ptr %4, i64 2
  %40 = load double, ptr %39, align 16, !tbaa !45
  %41 = fsub double %40, %32
  store double %41, ptr %39, align 16, !tbaa !45
  %42 = fdiv double %35, %23
  store double %42, ptr %4, align 16, !tbaa !45
  %43 = fdiv double %38, %28
  store double %43, ptr %36, align 8, !tbaa !45
  %44 = fdiv double %41, %33
  store double %44, ptr %39, align 16, !tbaa !45
  %45 = getelementptr inbounds %"struct.pov::istk_entry", ptr %2, i64 0, i32 6
  %46 = load i32, ptr %45, align 8, !tbaa !56
  switch i32 %46, label %81 [
    i32 1, label %47
    i32 2, label %52
    i32 3, label %58
    i32 4, label %63
    i32 5, label %69
    i32 6, label %75
  ]

47:                                               ; preds = %18
  %48 = fmul double %44, 2.500000e-01
  store double %48, ptr %0, align 8, !tbaa !45
  %49 = fdiv double %43, 3.000000e+00
  %50 = fadd double %49, 0x3FD5555555555555
  %51 = getelementptr inbounds double, ptr %0, i64 1
  store double %50, ptr %51, align 8, !tbaa !45
  br label %83

52:                                               ; preds = %18
  %53 = fmul double %44, 2.500000e-01
  %54 = fsub double 7.500000e-01, %53
  store double %54, ptr %0, align 8, !tbaa !45
  %55 = fdiv double %43, 3.000000e+00
  %56 = fadd double %55, 0x3FD5555555555555
  %57 = getelementptr inbounds double, ptr %0, i64 1
  store double %56, ptr %57, align 8, !tbaa !45
  br label %83

58:                                               ; preds = %18
  %59 = fmul double %42, 2.500000e-01
  %60 = fadd double %59, 2.500000e-01
  store double %60, ptr %0, align 8, !tbaa !45
  %61 = fdiv double %44, 3.000000e+00
  %62 = getelementptr inbounds double, ptr %0, i64 1
  store double %61, ptr %62, align 8, !tbaa !45
  br label %83

63:                                               ; preds = %18
  %64 = fmul double %42, 2.500000e-01
  %65 = fadd double %64, 2.500000e-01
  store double %65, ptr %0, align 8, !tbaa !45
  %66 = fdiv double %44, 3.000000e+00
  %67 = fsub double 1.000000e+00, %66
  %68 = getelementptr inbounds double, ptr %0, i64 1
  store double %67, ptr %68, align 8, !tbaa !45
  br label %83

69:                                               ; preds = %18
  %70 = fmul double %42, 2.500000e-01
  %71 = fsub double 1.000000e+00, %70
  store double %71, ptr %0, align 8, !tbaa !45
  %72 = fdiv double %43, 3.000000e+00
  %73 = fadd double %72, 0x3FD5555555555555
  %74 = getelementptr inbounds double, ptr %0, i64 1
  store double %73, ptr %74, align 8, !tbaa !45
  br label %83

75:                                               ; preds = %18
  %76 = fmul double %42, 2.500000e-01
  %77 = fadd double %76, 2.500000e-01
  store double %77, ptr %0, align 8, !tbaa !45
  %78 = fdiv double %43, 3.000000e+00
  %79 = fadd double %78, 0x3FD5555555555555
  %80 = getelementptr inbounds double, ptr %0, i64 1
  store double %79, ptr %80, align 8, !tbaa !45
  br label %83

81:                                               ; preds = %18
  %82 = call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.2)
  br label %83

83:                                               ; preds = %81, %75, %69, %63, %58, %52, %47
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #8
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN3pov8Copy_BoxEPNS_13Object_StructE(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef 168, ptr noundef nonnull @.str, i32 noundef 903, ptr noundef nonnull @.str.1)
  %3 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %2, i64 0, i32 1
  store i32 0, ptr %3, align 8, !tbaa !59
  store ptr @_ZN3pov11Box_MethodsE, ptr %2, align 8, !tbaa !60
  %4 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %2, i64 0, i32 2
  %5 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %2, i64 0, i32 10
  %6 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %2, i64 0, i32 9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  store float -1.000000e+10, ptr %6, align 4, !tbaa !61
  %7 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %2, i64 0, i32 9, i32 0, i64 1
  store float -1.000000e+10, ptr %7, align 4, !tbaa !61
  %8 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %2, i64 0, i32 9, i32 0, i64 2
  store float -1.000000e+10, ptr %8, align 4, !tbaa !61
  %9 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %2, i64 0, i32 9, i32 1
  store float 2.000000e+10, ptr %9, align 4, !tbaa !61
  %10 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %2, i64 0, i32 9, i32 1, i64 1
  store float 2.000000e+10, ptr %10, align 4, !tbaa !61
  %11 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %2, i64 0, i32 9, i32 1, i64 2
  store float 2.000000e+10, ptr %11, align 4, !tbaa !61
  %12 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %2, i64 0, i32 14
  store double -1.000000e+00, ptr %12, align 8, !tbaa !45
  %13 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %2, i64 0, i32 14, i64 0, i64 1
  store double -1.000000e+00, ptr %13, align 8, !tbaa !45
  %14 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %2, i64 0, i32 14, i64 0, i64 2
  store double -1.000000e+00, ptr %14, align 8, !tbaa !45
  %15 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %2, i64 0, i32 14, i64 1
  store double 1.000000e+00, ptr %15, align 8, !tbaa !45
  %16 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %2, i64 0, i32 14, i64 1, i64 1
  store double 1.000000e+00, ptr %16, align 8, !tbaa !45
  %17 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %2, i64 0, i32 14, i64 1, i64 2
  store double 1.000000e+00, ptr %17, align 8, !tbaa !45
  store float -1.000000e+00, ptr %6, align 4, !tbaa !61
  store float -1.000000e+00, ptr %7, align 4, !tbaa !61
  store float -1.000000e+00, ptr %8, align 4, !tbaa !61
  store float 2.000000e+00, ptr %9, align 4, !tbaa !61
  store float 2.000000e+00, ptr %10, align 4, !tbaa !61
  store float 2.000000e+00, ptr %11, align 4, !tbaa !61
  store ptr null, ptr %5, align 8, !tbaa !38
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %2, ptr noundef nonnull align 8 dereferenceable(168) %0, i64 168, i1 false), !tbaa.struct !62
  %18 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %0, i64 0, i32 10
  %19 = load ptr, ptr %18, align 8, !tbaa !38
  %20 = tail call noundef ptr @_ZN3pov14Copy_TransformEPNS_16Transform_StructE(ptr noundef %19)
  store ptr %20, ptr %5, align 8, !tbaa !38
  ret ptr %2
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN3povL13Translate_BoxEPNS_13Object_StructEPdPNS_16Transform_StructE(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %0, i64 0, i32 10
  %5 = load ptr, ptr %4, align 8, !tbaa !38
  %6 = icmp eq ptr %5, null
  %7 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %0, i64 0, i32 14, i64 0, i64 1
  br i1 %6, label %8, label %49

8:                                                ; preds = %3
  %9 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %0, i64 0, i32 14
  %10 = load double, ptr %1, align 8, !tbaa !45
  %11 = load double, ptr %9, align 8, !tbaa !45
  %12 = fadd double %10, %11
  store double %12, ptr %9, align 8, !tbaa !45
  %13 = getelementptr inbounds double, ptr %1, i64 1
  %14 = load double, ptr %13, align 8, !tbaa !45
  %15 = load double, ptr %7, align 8, !tbaa !45
  %16 = fadd double %14, %15
  store double %16, ptr %7, align 8, !tbaa !45
  %17 = getelementptr inbounds double, ptr %1, i64 2
  %18 = load double, ptr %17, align 8, !tbaa !45
  %19 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %0, i64 0, i32 14, i64 0, i64 2
  %20 = load double, ptr %19, align 8, !tbaa !45
  %21 = fadd double %18, %20
  store double %21, ptr %19, align 8, !tbaa !45
  %22 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %0, i64 0, i32 14, i64 1
  %23 = load double, ptr %1, align 8, !tbaa !45
  %24 = load double, ptr %22, align 8, !tbaa !45
  %25 = fadd double %23, %24
  store double %25, ptr %22, align 8, !tbaa !45
  %26 = load double, ptr %13, align 8, !tbaa !45
  %27 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %0, i64 0, i32 14, i64 1, i64 1
  %28 = load double, ptr %27, align 8, !tbaa !45
  %29 = fadd double %26, %28
  store double %29, ptr %27, align 8, !tbaa !45
  %30 = load double, ptr %17, align 8, !tbaa !45
  %31 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %0, i64 0, i32 14, i64 1, i64 2
  %32 = load double, ptr %31, align 8, !tbaa !45
  %33 = fadd double %30, %32
  store double %33, ptr %31, align 8, !tbaa !45
  %34 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %0, i64 0, i32 9
  %35 = fptrunc double %12 to float
  store float %35, ptr %34, align 4, !tbaa !61
  %36 = fptrunc double %16 to float
  %37 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %0, i64 0, i32 9, i32 0, i64 1
  store float %36, ptr %37, align 4, !tbaa !61
  %38 = fptrunc double %21 to float
  %39 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %0, i64 0, i32 9, i32 0, i64 2
  store float %38, ptr %39, align 4, !tbaa !61
  %40 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %0, i64 0, i32 9, i32 1
  %41 = fsub double %25, %12
  %42 = fptrunc double %41 to float
  store float %42, ptr %40, align 4, !tbaa !61
  %43 = fsub double %29, %16
  %44 = fptrunc double %43 to float
  %45 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %0, i64 0, i32 9, i32 1, i64 1
  store float %44, ptr %45, align 4, !tbaa !61
  %46 = fsub double %33, %21
  %47 = fptrunc double %46 to float
  %48 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %0, i64 0, i32 9, i32 1, i64 2
  store float %47, ptr %48, align 4, !tbaa !61
  br label %80

49:                                               ; preds = %3
  %50 = load ptr, ptr %4, align 8, !tbaa !38
  tail call void @_ZN3pov18Compose_TransformsEPNS_16Transform_StructES1_(ptr noundef %50, ptr noundef %2)
  %51 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %0, i64 0, i32 9
  %52 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %0, i64 0, i32 14
  %53 = load double, ptr %52, align 8, !tbaa !45
  %54 = fptrunc double %53 to float
  store float %54, ptr %51, align 4, !tbaa !61
  %55 = load double, ptr %7, align 8, !tbaa !45
  %56 = fptrunc double %55 to float
  %57 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %0, i64 0, i32 9, i32 0, i64 1
  store float %56, ptr %57, align 4, !tbaa !61
  %58 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %0, i64 0, i32 14, i64 0, i64 2
  %59 = load double, ptr %58, align 8, !tbaa !45
  %60 = fptrunc double %59 to float
  %61 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %0, i64 0, i32 9, i32 0, i64 2
  store float %60, ptr %61, align 4, !tbaa !61
  %62 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %0, i64 0, i32 9, i32 1
  %63 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %0, i64 0, i32 14, i64 1
  %64 = load double, ptr %63, align 8, !tbaa !45
  %65 = fsub double %64, %53
  %66 = fptrunc double %65 to float
  store float %66, ptr %62, align 4, !tbaa !61
  %67 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %0, i64 0, i32 14, i64 1, i64 1
  %68 = load double, ptr %67, align 8, !tbaa !45
  %69 = fsub double %68, %55
  %70 = fptrunc double %69 to float
  %71 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %0, i64 0, i32 9, i32 1, i64 1
  store float %70, ptr %71, align 4, !tbaa !61
  %72 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %0, i64 0, i32 14, i64 1, i64 2
  %73 = load double, ptr %72, align 8, !tbaa !45
  %74 = fsub double %73, %59
  %75 = fptrunc double %74 to float
  %76 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %0, i64 0, i32 9, i32 1, i64 2
  store float %75, ptr %76, align 4, !tbaa !61
  %77 = load ptr, ptr %4, align 8, !tbaa !38
  %78 = icmp eq ptr %77, null
  br i1 %78, label %80, label %79

79:                                               ; preds = %49
  tail call void @_ZN3pov14Recompute_BBoxEPNS_19Bounding_Box_StructEPNS_16Transform_StructE(ptr noundef nonnull %51, ptr noundef nonnull %77)
  br label %80

80:                                               ; preds = %79, %49, %8
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN3povL10Rotate_BoxEPNS_13Object_StructEPdPNS_16Transform_StructE(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %0, i64 0, i32 10
  %5 = load ptr, ptr %4, align 8, !tbaa !38
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %3
  %8 = tail call noundef ptr @_ZN3pov16Create_TransformEv()
  store ptr %8, ptr %4, align 8, !tbaa !38
  br label %9

9:                                                ; preds = %7, %3
  %10 = load ptr, ptr %4, align 8, !tbaa !38
  tail call void @_ZN3pov18Compose_TransformsEPNS_16Transform_StructES1_(ptr noundef %10, ptr noundef %2)
  %11 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %0, i64 0, i32 9
  %12 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %0, i64 0, i32 14
  %13 = load double, ptr %12, align 8, !tbaa !45
  %14 = fptrunc double %13 to float
  store float %14, ptr %11, align 4, !tbaa !61
  %15 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %0, i64 0, i32 14, i64 0, i64 1
  %16 = load double, ptr %15, align 8, !tbaa !45
  %17 = fptrunc double %16 to float
  %18 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %0, i64 0, i32 9, i32 0, i64 1
  store float %17, ptr %18, align 4, !tbaa !61
  %19 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %0, i64 0, i32 14, i64 0, i64 2
  %20 = load double, ptr %19, align 8, !tbaa !45
  %21 = fptrunc double %20 to float
  %22 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %0, i64 0, i32 9, i32 0, i64 2
  store float %21, ptr %22, align 4, !tbaa !61
  %23 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %0, i64 0, i32 9, i32 1
  %24 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %0, i64 0, i32 14, i64 1
  %25 = load double, ptr %24, align 8, !tbaa !45
  %26 = fsub double %25, %13
  %27 = fptrunc double %26 to float
  store float %27, ptr %23, align 4, !tbaa !61
  %28 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %0, i64 0, i32 14, i64 1, i64 1
  %29 = load double, ptr %28, align 8, !tbaa !45
  %30 = fsub double %29, %16
  %31 = fptrunc double %30 to float
  %32 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %0, i64 0, i32 9, i32 1, i64 1
  store float %31, ptr %32, align 4, !tbaa !61
  %33 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %0, i64 0, i32 14, i64 1, i64 2
  %34 = load double, ptr %33, align 8, !tbaa !45
  %35 = fsub double %34, %20
  %36 = fptrunc double %35 to float
  %37 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %0, i64 0, i32 9, i32 1, i64 2
  store float %36, ptr %37, align 4, !tbaa !61
  %38 = load ptr, ptr %4, align 8, !tbaa !38
  %39 = icmp eq ptr %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %9
  tail call void @_ZN3pov14Recompute_BBoxEPNS_19Bounding_Box_StructEPNS_16Transform_StructE(ptr noundef nonnull %11, ptr noundef nonnull %38)
  br label %41

41:                                               ; preds = %9, %40
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN3povL9Scale_BoxEPNS_13Object_StructEPdPNS_16Transform_StructE(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %0, i64 0, i32 10
  %5 = load ptr, ptr %4, align 8, !tbaa !38
  %6 = icmp eq ptr %5, null
  %7 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %0, i64 0, i32 14, i64 0, i64 1
  br i1 %6, label %8, label %64

8:                                                ; preds = %3
  %9 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %0, i64 0, i32 14
  %10 = load double, ptr %1, align 8, !tbaa !45
  %11 = load double, ptr %9, align 8, !tbaa !45
  %12 = fmul double %10, %11
  store double %12, ptr %9, align 8, !tbaa !45
  %13 = getelementptr inbounds double, ptr %1, i64 1
  %14 = load double, ptr %13, align 8, !tbaa !45
  %15 = load double, ptr %7, align 8, !tbaa !45
  %16 = fmul double %14, %15
  store double %16, ptr %7, align 8, !tbaa !45
  %17 = getelementptr inbounds double, ptr %1, i64 2
  %18 = load double, ptr %17, align 8, !tbaa !45
  %19 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %0, i64 0, i32 14, i64 0, i64 2
  %20 = load double, ptr %19, align 8, !tbaa !45
  %21 = fmul double %18, %20
  store double %21, ptr %19, align 8, !tbaa !45
  %22 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %0, i64 0, i32 14, i64 1
  %23 = load double, ptr %1, align 8, !tbaa !45
  %24 = load double, ptr %22, align 8, !tbaa !45
  %25 = fmul double %23, %24
  store double %25, ptr %22, align 8, !tbaa !45
  %26 = load double, ptr %13, align 8, !tbaa !45
  %27 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %0, i64 0, i32 14, i64 1, i64 1
  %28 = load double, ptr %27, align 8, !tbaa !45
  %29 = fmul double %26, %28
  store double %29, ptr %27, align 8, !tbaa !45
  %30 = load double, ptr %17, align 8, !tbaa !45
  %31 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %0, i64 0, i32 14, i64 1, i64 2
  %32 = load double, ptr %31, align 8, !tbaa !45
  %33 = fmul double %30, %32
  store double %33, ptr %31, align 8, !tbaa !45
  %34 = fcmp ogt double %12, %25
  br i1 %34, label %35, label %36

35:                                               ; preds = %8
  store double %25, ptr %9, align 8, !tbaa !45
  store double %12, ptr %22, align 8, !tbaa !45
  br label %36

36:                                               ; preds = %35, %8
  %37 = fcmp ogt double %16, %29
  br i1 %37, label %38, label %39

38:                                               ; preds = %36
  store double %29, ptr %7, align 8, !tbaa !45
  store double %16, ptr %27, align 8, !tbaa !45
  br label %39

39:                                               ; preds = %38, %36
  %40 = fcmp ogt double %21, %33
  br i1 %40, label %41, label %42

41:                                               ; preds = %39
  store double %33, ptr %19, align 8, !tbaa !45
  store double %21, ptr %31, align 8, !tbaa !45
  br label %42

42:                                               ; preds = %41, %39
  %43 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %0, i64 0, i32 9
  %44 = load double, ptr %9, align 8, !tbaa !45
  %45 = fptrunc double %44 to float
  store float %45, ptr %43, align 4, !tbaa !61
  %46 = load double, ptr %7, align 8, !tbaa !45
  %47 = fptrunc double %46 to float
  %48 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %0, i64 0, i32 9, i32 0, i64 1
  store float %47, ptr %48, align 4, !tbaa !61
  %49 = load double, ptr %19, align 8, !tbaa !45
  %50 = fptrunc double %49 to float
  %51 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %0, i64 0, i32 9, i32 0, i64 2
  store float %50, ptr %51, align 4, !tbaa !61
  %52 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %0, i64 0, i32 9, i32 1
  %53 = load double, ptr %22, align 8, !tbaa !45
  %54 = fsub double %53, %44
  %55 = fptrunc double %54 to float
  store float %55, ptr %52, align 4, !tbaa !61
  %56 = load double, ptr %27, align 8, !tbaa !45
  %57 = fsub double %56, %46
  %58 = fptrunc double %57 to float
  %59 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %0, i64 0, i32 9, i32 1, i64 1
  store float %58, ptr %59, align 4, !tbaa !61
  %60 = load double, ptr %31, align 8, !tbaa !45
  %61 = fsub double %60, %49
  %62 = fptrunc double %61 to float
  %63 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %0, i64 0, i32 9, i32 1, i64 2
  store float %62, ptr %63, align 4, !tbaa !61
  br label %95

64:                                               ; preds = %3
  %65 = load ptr, ptr %4, align 8, !tbaa !38
  tail call void @_ZN3pov18Compose_TransformsEPNS_16Transform_StructES1_(ptr noundef %65, ptr noundef %2)
  %66 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %0, i64 0, i32 9
  %67 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %0, i64 0, i32 14
  %68 = load double, ptr %67, align 8, !tbaa !45
  %69 = fptrunc double %68 to float
  store float %69, ptr %66, align 4, !tbaa !61
  %70 = load double, ptr %7, align 8, !tbaa !45
  %71 = fptrunc double %70 to float
  %72 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %0, i64 0, i32 9, i32 0, i64 1
  store float %71, ptr %72, align 4, !tbaa !61
  %73 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %0, i64 0, i32 14, i64 0, i64 2
  %74 = load double, ptr %73, align 8, !tbaa !45
  %75 = fptrunc double %74 to float
  %76 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %0, i64 0, i32 9, i32 0, i64 2
  store float %75, ptr %76, align 4, !tbaa !61
  %77 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %0, i64 0, i32 9, i32 1
  %78 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %0, i64 0, i32 14, i64 1
  %79 = load double, ptr %78, align 8, !tbaa !45
  %80 = fsub double %79, %68
  %81 = fptrunc double %80 to float
  store float %81, ptr %77, align 4, !tbaa !61
  %82 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %0, i64 0, i32 14, i64 1, i64 1
  %83 = load double, ptr %82, align 8, !tbaa !45
  %84 = fsub double %83, %70
  %85 = fptrunc double %84 to float
  %86 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %0, i64 0, i32 9, i32 1, i64 1
  store float %85, ptr %86, align 4, !tbaa !61
  %87 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %0, i64 0, i32 14, i64 1, i64 2
  %88 = load double, ptr %87, align 8, !tbaa !45
  %89 = fsub double %88, %74
  %90 = fptrunc double %89 to float
  %91 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %0, i64 0, i32 9, i32 1, i64 2
  store float %90, ptr %91, align 4, !tbaa !61
  %92 = load ptr, ptr %4, align 8, !tbaa !38
  %93 = icmp eq ptr %92, null
  br i1 %93, label %95, label %94

94:                                               ; preds = %64
  tail call void @_ZN3pov14Recompute_BBoxEPNS_19Bounding_Box_StructEPNS_16Transform_StructE(ptr noundef nonnull %66, ptr noundef nonnull %92)
  br label %95

95:                                               ; preds = %94, %64, %42
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN3povL13Transform_BoxEPNS_13Object_StructEPNS_16Transform_StructE(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %0, i64 0, i32 10
  %4 = load ptr, ptr %3, align 8, !tbaa !38
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call noundef ptr @_ZN3pov16Create_TransformEv()
  store ptr %7, ptr %3, align 8, !tbaa !38
  br label %8

8:                                                ; preds = %6, %2
  %9 = load ptr, ptr %3, align 8, !tbaa !38
  tail call void @_ZN3pov18Compose_TransformsEPNS_16Transform_StructES1_(ptr noundef %9, ptr noundef %1)
  %10 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %0, i64 0, i32 9
  %11 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %0, i64 0, i32 14
  %12 = load double, ptr %11, align 8, !tbaa !45
  %13 = fptrunc double %12 to float
  store float %13, ptr %10, align 4, !tbaa !61
  %14 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %0, i64 0, i32 14, i64 0, i64 1
  %15 = load double, ptr %14, align 8, !tbaa !45
  %16 = fptrunc double %15 to float
  %17 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %0, i64 0, i32 9, i32 0, i64 1
  store float %16, ptr %17, align 4, !tbaa !61
  %18 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %0, i64 0, i32 14, i64 0, i64 2
  %19 = load double, ptr %18, align 8, !tbaa !45
  %20 = fptrunc double %19 to float
  %21 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %0, i64 0, i32 9, i32 0, i64 2
  store float %20, ptr %21, align 4, !tbaa !61
  %22 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %0, i64 0, i32 9, i32 1
  %23 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %0, i64 0, i32 14, i64 1
  %24 = load double, ptr %23, align 8, !tbaa !45
  %25 = fsub double %24, %12
  %26 = fptrunc double %25 to float
  store float %26, ptr %22, align 4, !tbaa !61
  %27 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %0, i64 0, i32 14, i64 1, i64 1
  %28 = load double, ptr %27, align 8, !tbaa !45
  %29 = fsub double %28, %15
  %30 = fptrunc double %29 to float
  %31 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %0, i64 0, i32 9, i32 1, i64 1
  store float %30, ptr %31, align 4, !tbaa !61
  %32 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %0, i64 0, i32 14, i64 1, i64 2
  %33 = load double, ptr %32, align 8, !tbaa !45
  %34 = fsub double %33, %19
  %35 = fptrunc double %34 to float
  %36 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %0, i64 0, i32 9, i32 1, i64 2
  store float %35, ptr %36, align 4, !tbaa !61
  %37 = load ptr, ptr %3, align 8, !tbaa !38
  %38 = icmp eq ptr %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %8
  tail call void @_ZN3pov14Recompute_BBoxEPNS_19Bounding_Box_StructEPNS_16Transform_StructE(ptr noundef nonnull %10, ptr noundef nonnull %37)
  br label %40

40:                                               ; preds = %8, %39
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @_ZN3povL10Invert_BoxEPNS_13Object_StructE(ptr nocapture noundef %0) #1 {
  %2 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 4, !tbaa !65
  %4 = xor i32 %3, 4
  store i32 %4, ptr %2, align 4, !tbaa !65
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3pov11Destroy_BoxEPNS_13Object_StructE(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %0, i64 0, i32 10
  %3 = load ptr, ptr %2, align 8, !tbaa !38
  tail call void @_ZN3pov17Destroy_TransformEPNS_16Transform_StructE(ptr noundef %3)
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef 992)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN3pov13Intersect_BoxEPNS_10Ray_StructEPNS_16Transform_StructEPdS4_S4_S4_PiS5_(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5, ptr nocapture noundef writeonly %6, ptr nocapture noundef writeonly %7) local_unnamed_addr #0 {
  %9 = alloca [3 x double], align 16
  %10 = alloca [3 x double], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #8
  %11 = icmp eq ptr %1, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  call void @_ZN3pov14MInvTransPointEPdS0_PNS_16Transform_StructE(ptr noundef nonnull %9, ptr noundef %0, ptr noundef nonnull %1)
  %13 = getelementptr inbounds %"struct.pov::Ray_Struct", ptr %0, i64 0, i32 1
  call void @_ZN3pov18MInvTransDirectionEPdS0_PNS_16Transform_StructE(ptr noundef nonnull %10, ptr noundef nonnull %13, ptr noundef nonnull %1)
  br label %30

14:                                               ; preds = %8
  %15 = load double, ptr %0, align 8, !tbaa !45
  store double %15, ptr %9, align 16, !tbaa !45
  %16 = getelementptr inbounds double, ptr %0, i64 1
  %17 = load double, ptr %16, align 8, !tbaa !45
  %18 = getelementptr inbounds double, ptr %9, i64 1
  store double %17, ptr %18, align 8, !tbaa !45
  %19 = getelementptr inbounds double, ptr %0, i64 2
  %20 = load double, ptr %19, align 8, !tbaa !45
  %21 = getelementptr inbounds double, ptr %9, i64 2
  store double %20, ptr %21, align 16, !tbaa !45
  %22 = getelementptr inbounds %"struct.pov::Ray_Struct", ptr %0, i64 0, i32 1
  %23 = load double, ptr %22, align 8, !tbaa !45
  store double %23, ptr %10, align 16, !tbaa !45
  %24 = getelementptr inbounds %"struct.pov::Ray_Struct", ptr %0, i64 0, i32 1, i64 1
  %25 = load double, ptr %24, align 8, !tbaa !45
  %26 = getelementptr inbounds double, ptr %10, i64 1
  store double %25, ptr %26, align 8, !tbaa !45
  %27 = getelementptr inbounds %"struct.pov::Ray_Struct", ptr %0, i64 0, i32 1, i64 2
  %28 = load double, ptr %27, align 8, !tbaa !45
  %29 = getelementptr inbounds double, ptr %10, i64 2
  store double %28, ptr %29, align 16, !tbaa !45
  br label %30

30:                                               ; preds = %14, %12
  %31 = load double, ptr %10, align 16, !tbaa !45
  %32 = fcmp olt double %31, 0xBE7AD7F29ABCAF48
  br i1 %32, label %33, label %49

33:                                               ; preds = %30
  %34 = load double, ptr %2, align 8, !tbaa !45
  %35 = load double, ptr %9, align 16, !tbaa !45
  %36 = fsub double %34, %35
  %37 = fdiv double %36, %31
  %38 = fcmp olt double %37, 0.000000e+00
  br i1 %38, label %291, label %39

39:                                               ; preds = %33
  %40 = fcmp ole double %37, 2.000000e+10
  %41 = zext i1 %40 to i32
  %42 = select i1 %40, double %37, double 2.000000e+10
  %43 = load double, ptr %3, align 8, !tbaa !45
  %44 = fsub double %43, %35
  %45 = fdiv double %44, %31
  %46 = fcmp ult double %45, 0.000000e+00
  br i1 %46, label %74, label %47

47:                                               ; preds = %39
  %48 = fcmp ogt double %45, %42
  br i1 %48, label %291, label %74

49:                                               ; preds = %30
  %50 = fcmp ogt double %31, 0x3E7AD7F29ABCAF48
  br i1 %50, label %51, label %67

51:                                               ; preds = %49
  %52 = load double, ptr %3, align 8, !tbaa !45
  %53 = load double, ptr %9, align 16, !tbaa !45
  %54 = fsub double %52, %53
  %55 = fdiv double %54, %31
  %56 = fcmp olt double %55, 0.000000e+00
  br i1 %56, label %291, label %57

57:                                               ; preds = %51
  %58 = fcmp ugt double %55, 2.000000e+10
  %59 = select i1 %58, i32 0, i32 2
  %60 = select i1 %58, double 2.000000e+10, double %55
  %61 = load double, ptr %2, align 8, !tbaa !45
  %62 = fsub double %61, %53
  %63 = fdiv double %62, %31
  %64 = fcmp ult double %63, 0.000000e+00
  br i1 %64, label %74, label %65

65:                                               ; preds = %57
  %66 = fcmp ogt double %63, %60
  br i1 %66, label %291, label %74

67:                                               ; preds = %49
  %68 = load double, ptr %9, align 16, !tbaa !45
  %69 = load double, ptr %2, align 8, !tbaa !45
  %70 = fcmp olt double %68, %69
  br i1 %70, label %291, label %71

71:                                               ; preds = %67
  %72 = load double, ptr %3, align 8, !tbaa !45
  %73 = fcmp ogt double %68, %72
  br i1 %73, label %291, label %74

74:                                               ; preds = %65, %47, %57, %71, %39
  %75 = phi i32 [ 0, %39 ], [ 0, %57 ], [ 0, %71 ], [ 2, %47 ], [ 1, %65 ]
  %76 = phi i32 [ %41, %39 ], [ %59, %57 ], [ 0, %71 ], [ %41, %47 ], [ %59, %65 ]
  %77 = phi double [ 0.000000e+00, %39 ], [ 0.000000e+00, %57 ], [ 0.000000e+00, %71 ], [ %45, %47 ], [ %63, %65 ]
  %78 = phi double [ %42, %39 ], [ %60, %57 ], [ 2.000000e+10, %71 ], [ %42, %47 ], [ %60, %65 ]
  %79 = getelementptr inbounds [3 x double], ptr %10, i64 0, i64 1
  %80 = load double, ptr %79, align 8, !tbaa !45
  %81 = fcmp olt double %80, 0xBE7AD7F29ABCAF48
  br i1 %81, label %82, label %120

82:                                               ; preds = %74
  %83 = getelementptr inbounds double, ptr %2, i64 1
  %84 = load double, ptr %83, align 8, !tbaa !45
  %85 = getelementptr inbounds [3 x double], ptr %9, i64 0, i64 1
  %86 = load double, ptr %85, align 8, !tbaa !45
  %87 = fsub double %84, %86
  %88 = fdiv double %87, %80
  %89 = fcmp olt double %88, %77
  br i1 %89, label %291, label %90

90:                                               ; preds = %82
  %91 = fadd double %78, 0xBEB0C6F7A0B5ED8D
  %92 = fcmp ugt double %88, %91
  br i1 %92, label %93, label %101

93:                                               ; preds = %90
  %94 = fadd double %78, 0x3EB0C6F7A0B5ED8D
  %95 = fcmp ugt double %88, %94
  br i1 %95, label %101, label %96

96:                                               ; preds = %93
  %97 = fneg double %80
  %98 = call double @llvm.fabs.f64(double %31)
  %99 = fcmp olt double %98, %97
  br i1 %99, label %100, label %101

100:                                              ; preds = %96
  br label %101

101:                                              ; preds = %90, %93, %100, %96
  %102 = phi i32 [ 3, %100 ], [ %76, %96 ], [ %76, %93 ], [ 3, %90 ]
  %103 = phi double [ %78, %100 ], [ %78, %96 ], [ %78, %93 ], [ %88, %90 ]
  %104 = getelementptr inbounds double, ptr %3, i64 1
  %105 = load double, ptr %104, align 8, !tbaa !45
  %106 = fsub double %105, %86
  %107 = fdiv double %106, %80
  %108 = fadd double %77, 0x3EB0C6F7A0B5ED8D
  %109 = fcmp ult double %107, %108
  br i1 %109, label %112, label %110

110:                                              ; preds = %101
  %111 = fcmp ogt double %107, %103
  br i1 %111, label %291, label %168

112:                                              ; preds = %101
  %113 = fadd double %77, 0xBEB0C6F7A0B5ED8D
  %114 = fcmp ult double %107, %113
  br i1 %114, label %168, label %115

115:                                              ; preds = %112
  %116 = fneg double %80
  %117 = call double @llvm.fabs.f64(double %31)
  %118 = fcmp olt double %117, %116
  br i1 %118, label %119, label %168

119:                                              ; preds = %115
  br label %168

120:                                              ; preds = %74
  %121 = fcmp ogt double %80, 0x3E7AD7F29ABCAF48
  br i1 %121, label %122, label %158

122:                                              ; preds = %120
  %123 = getelementptr inbounds double, ptr %3, i64 1
  %124 = load double, ptr %123, align 8, !tbaa !45
  %125 = getelementptr inbounds [3 x double], ptr %9, i64 0, i64 1
  %126 = load double, ptr %125, align 8, !tbaa !45
  %127 = fsub double %124, %126
  %128 = fdiv double %127, %80
  %129 = fcmp olt double %128, %77
  br i1 %129, label %291, label %130

130:                                              ; preds = %122
  %131 = fadd double %78, 0xBEB0C6F7A0B5ED8D
  %132 = fcmp ugt double %128, %131
  br i1 %132, label %133, label %140

133:                                              ; preds = %130
  %134 = fadd double %78, 0x3EB0C6F7A0B5ED8D
  %135 = fcmp ole double %128, %134
  %136 = call double @llvm.fabs.f64(double %31)
  %137 = fcmp ogt double %80, %136
  %138 = and i1 %137, %135
  %139 = select i1 %138, i32 4, i32 %76
  br label %140

140:                                              ; preds = %133, %130
  %141 = phi i32 [ 4, %130 ], [ %139, %133 ]
  %142 = phi double [ %128, %130 ], [ %78, %133 ]
  %143 = getelementptr inbounds double, ptr %2, i64 1
  %144 = load double, ptr %143, align 8, !tbaa !45
  %145 = fsub double %144, %126
  %146 = fdiv double %145, %80
  %147 = fadd double %77, 0x3EB0C6F7A0B5ED8D
  %148 = fcmp ult double %146, %147
  br i1 %148, label %151, label %149

149:                                              ; preds = %140
  %150 = fcmp ogt double %146, %142
  br i1 %150, label %291, label %168

151:                                              ; preds = %140
  %152 = fadd double %77, 0xBEB0C6F7A0B5ED8D
  %153 = fcmp oge double %146, %152
  %154 = call double @llvm.fabs.f64(double %31)
  %155 = fcmp ogt double %80, %154
  %156 = and i1 %155, %153
  %157 = select i1 %156, i32 3, i32 %75
  br label %168

158:                                              ; preds = %120
  %159 = getelementptr inbounds [3 x double], ptr %9, i64 0, i64 1
  %160 = load double, ptr %159, align 8, !tbaa !45
  %161 = getelementptr inbounds double, ptr %2, i64 1
  %162 = load double, ptr %161, align 8, !tbaa !45
  %163 = fcmp olt double %160, %162
  br i1 %163, label %291, label %164

164:                                              ; preds = %158
  %165 = getelementptr inbounds double, ptr %3, i64 1
  %166 = load double, ptr %165, align 8, !tbaa !45
  %167 = fcmp ogt double %160, %166
  br i1 %167, label %291, label %168

168:                                              ; preds = %151, %149, %110, %164, %115, %119, %112
  %169 = phi i32 [ 4, %119 ], [ %75, %115 ], [ %75, %112 ], [ %75, %164 ], [ 4, %110 ], [ 3, %149 ], [ %157, %151 ]
  %170 = phi i32 [ %102, %119 ], [ %102, %115 ], [ %102, %112 ], [ %76, %164 ], [ %102, %110 ], [ %141, %149 ], [ %141, %151 ]
  %171 = phi double [ %77, %119 ], [ %77, %115 ], [ %77, %112 ], [ %77, %164 ], [ %107, %110 ], [ %146, %149 ], [ %77, %151 ]
  %172 = phi double [ %103, %119 ], [ %103, %115 ], [ %103, %112 ], [ %78, %164 ], [ %103, %110 ], [ %142, %149 ], [ %142, %151 ]
  %173 = getelementptr inbounds [3 x double], ptr %10, i64 0, i64 2
  %174 = load double, ptr %173, align 16, !tbaa !45
  %175 = fcmp olt double %174, 0xBE7AD7F29ABCAF48
  br i1 %175, label %176, label %226

176:                                              ; preds = %168
  %177 = getelementptr inbounds double, ptr %2, i64 2
  %178 = load double, ptr %177, align 8, !tbaa !45
  %179 = getelementptr inbounds [3 x double], ptr %9, i64 0, i64 2
  %180 = load double, ptr %179, align 16, !tbaa !45
  %181 = fsub double %178, %180
  %182 = fdiv double %181, %174
  %183 = fcmp olt double %182, %171
  br i1 %183, label %291, label %184

184:                                              ; preds = %176
  %185 = fadd double %172, 0xBEB0C6F7A0B5ED8D
  %186 = fcmp ugt double %182, %185
  br i1 %186, label %187, label %201

187:                                              ; preds = %184
  %188 = fadd double %172, 0x3EB0C6F7A0B5ED8D
  %189 = fcmp ugt double %182, %188
  br i1 %189, label %201, label %190

190:                                              ; preds = %187
  switch i32 %170, label %201 [
    i32 1, label %191
    i32 2, label %191
    i32 3, label %196
    i32 4, label %196
  ]

191:                                              ; preds = %190, %190
  %192 = fneg double %174
  %193 = call double @llvm.fabs.f64(double %31)
  %194 = fcmp olt double %193, %192
  br i1 %194, label %195, label %201

195:                                              ; preds = %191
  br label %201

196:                                              ; preds = %190, %190
  %197 = fneg double %174
  %198 = call double @llvm.fabs.f64(double %80)
  %199 = fcmp olt double %198, %197
  br i1 %199, label %200, label %201

200:                                              ; preds = %196
  br label %201

201:                                              ; preds = %184, %187, %196, %200, %191, %195, %190
  %202 = phi i32 [ %170, %190 ], [ 5, %200 ], [ %170, %196 ], [ 5, %195 ], [ %170, %191 ], [ %170, %187 ], [ 5, %184 ]
  %203 = phi double [ %172, %190 ], [ %172, %200 ], [ %172, %196 ], [ %172, %195 ], [ %172, %191 ], [ %172, %187 ], [ %182, %184 ]
  %204 = getelementptr inbounds double, ptr %3, i64 2
  %205 = load double, ptr %204, align 8, !tbaa !45
  %206 = fsub double %205, %180
  %207 = fdiv double %206, %174
  %208 = fadd double %171, 0x3EB0C6F7A0B5ED8D
  %209 = fcmp ult double %207, %208
  br i1 %209, label %212, label %210

210:                                              ; preds = %201
  %211 = fcmp ogt double %207, %203
  br i1 %211, label %291, label %284

212:                                              ; preds = %201
  %213 = fadd double %171, 0xBEB0C6F7A0B5ED8D
  %214 = fcmp ult double %207, %213
  br i1 %214, label %284, label %215

215:                                              ; preds = %212
  switch i32 %169, label %284 [
    i32 1, label %216
    i32 2, label %216
    i32 3, label %221
    i32 4, label %221
  ]

216:                                              ; preds = %215, %215
  %217 = fneg double %174
  %218 = call double @llvm.fabs.f64(double %31)
  %219 = fcmp olt double %218, %217
  br i1 %219, label %220, label %284

220:                                              ; preds = %216
  br label %284

221:                                              ; preds = %215, %215
  %222 = fneg double %174
  %223 = call double @llvm.fabs.f64(double %80)
  %224 = fcmp olt double %223, %222
  br i1 %224, label %225, label %284

225:                                              ; preds = %221
  br label %284

226:                                              ; preds = %168
  %227 = fcmp ogt double %174, 0x3E7AD7F29ABCAF48
  br i1 %227, label %228, label %274

228:                                              ; preds = %226
  %229 = getelementptr inbounds double, ptr %3, i64 2
  %230 = load double, ptr %229, align 8, !tbaa !45
  %231 = getelementptr inbounds [3 x double], ptr %9, i64 0, i64 2
  %232 = load double, ptr %231, align 16, !tbaa !45
  %233 = fsub double %230, %232
  %234 = fdiv double %233, %174
  %235 = fcmp olt double %234, %171
  br i1 %235, label %291, label %236

236:                                              ; preds = %228
  %237 = fadd double %172, 0xBEB0C6F7A0B5ED8D
  %238 = fcmp ugt double %234, %237
  br i1 %238, label %239, label %251

239:                                              ; preds = %236
  %240 = fadd double %172, 0x3EB0C6F7A0B5ED8D
  %241 = fcmp ugt double %234, %240
  br i1 %241, label %251, label %242

242:                                              ; preds = %239
  switch i32 %170, label %251 [
    i32 1, label %243
    i32 2, label %243
    i32 3, label %247
    i32 4, label %247
  ]

243:                                              ; preds = %242, %242
  %244 = call double @llvm.fabs.f64(double %31)
  %245 = fcmp ogt double %174, %244
  br i1 %245, label %246, label %251

246:                                              ; preds = %243
  br label %251

247:                                              ; preds = %242, %242
  %248 = call double @llvm.fabs.f64(double %80)
  %249 = fcmp ogt double %174, %248
  br i1 %249, label %250, label %251

250:                                              ; preds = %247
  br label %251

251:                                              ; preds = %236, %239, %247, %250, %243, %246, %242
  %252 = phi i32 [ %170, %242 ], [ 6, %250 ], [ %170, %247 ], [ 6, %246 ], [ %170, %243 ], [ %170, %239 ], [ 6, %236 ]
  %253 = phi double [ %172, %242 ], [ %172, %250 ], [ %172, %247 ], [ %172, %246 ], [ %172, %243 ], [ %172, %239 ], [ %234, %236 ]
  %254 = getelementptr inbounds double, ptr %2, i64 2
  %255 = load double, ptr %254, align 8, !tbaa !45
  %256 = fsub double %255, %232
  %257 = fdiv double %256, %174
  %258 = fadd double %171, 0x3EB0C6F7A0B5ED8D
  %259 = fcmp ult double %257, %258
  br i1 %259, label %262, label %260

260:                                              ; preds = %251
  %261 = fcmp ogt double %257, %253
  br i1 %261, label %291, label %284

262:                                              ; preds = %251
  %263 = fadd double %171, 0xBEB0C6F7A0B5ED8D
  %264 = fcmp ult double %257, %263
  br i1 %264, label %284, label %265

265:                                              ; preds = %262
  switch i32 %169, label %284 [
    i32 1, label %266
    i32 2, label %266
    i32 3, label %270
    i32 4, label %270
  ]

266:                                              ; preds = %265, %265
  %267 = call double @llvm.fabs.f64(double %31)
  %268 = fcmp ogt double %174, %267
  br i1 %268, label %269, label %284

269:                                              ; preds = %266
  br label %284

270:                                              ; preds = %265, %265
  %271 = call double @llvm.fabs.f64(double %80)
  %272 = fcmp ogt double %174, %271
  br i1 %272, label %273, label %284

273:                                              ; preds = %270
  br label %284

274:                                              ; preds = %226
  %275 = getelementptr inbounds [3 x double], ptr %9, i64 0, i64 2
  %276 = load double, ptr %275, align 16, !tbaa !45
  %277 = getelementptr inbounds double, ptr %2, i64 2
  %278 = load double, ptr %277, align 8, !tbaa !45
  %279 = fcmp olt double %276, %278
  br i1 %279, label %291, label %280

280:                                              ; preds = %274
  %281 = getelementptr inbounds double, ptr %3, i64 2
  %282 = load double, ptr %281, align 8, !tbaa !45
  %283 = fcmp ogt double %276, %282
  br i1 %283, label %291, label %284

284:                                              ; preds = %260, %210, %262, %270, %273, %266, %269, %265, %280, %215, %220, %216, %225, %221, %212
  %285 = phi i32 [ %169, %215 ], [ 6, %225 ], [ %169, %221 ], [ 6, %220 ], [ %169, %216 ], [ %169, %212 ], [ %169, %265 ], [ 5, %273 ], [ %169, %270 ], [ 5, %269 ], [ %169, %266 ], [ %169, %262 ], [ %169, %280 ], [ 6, %210 ], [ 5, %260 ]
  %286 = phi i32 [ %202, %215 ], [ %202, %225 ], [ %202, %221 ], [ %202, %220 ], [ %202, %216 ], [ %202, %212 ], [ %252, %265 ], [ %252, %273 ], [ %252, %270 ], [ %252, %269 ], [ %252, %266 ], [ %252, %262 ], [ %170, %280 ], [ %202, %210 ], [ %252, %260 ]
  %287 = phi double [ %171, %215 ], [ %171, %225 ], [ %171, %221 ], [ %171, %220 ], [ %171, %216 ], [ %171, %212 ], [ %171, %265 ], [ %171, %273 ], [ %171, %270 ], [ %171, %269 ], [ %171, %266 ], [ %171, %262 ], [ %171, %280 ], [ %207, %210 ], [ %257, %260 ]
  %288 = phi double [ %203, %215 ], [ %203, %225 ], [ %203, %221 ], [ %203, %220 ], [ %203, %216 ], [ %203, %212 ], [ %253, %265 ], [ %253, %273 ], [ %253, %270 ], [ %253, %269 ], [ %253, %266 ], [ %253, %262 ], [ %172, %280 ], [ %203, %210 ], [ %253, %260 ]
  %289 = fcmp olt double %288, 0x3EB0C6F7A0B5ED8D
  br i1 %289, label %291, label %290

290:                                              ; preds = %284
  store double %287, ptr %4, align 8, !tbaa !45
  store double %288, ptr %5, align 8, !tbaa !45
  store i32 %285, ptr %6, align 4, !tbaa !49
  store i32 %286, ptr %7, align 4, !tbaa !49
  br label %291

291:                                              ; preds = %284, %274, %280, %260, %228, %210, %176, %158, %164, %149, %122, %110, %82, %67, %71, %65, %51, %47, %33, %290
  %292 = phi i32 [ 1, %290 ], [ 0, %33 ], [ 0, %47 ], [ 0, %51 ], [ 0, %65 ], [ 0, %71 ], [ 0, %67 ], [ 0, %82 ], [ 0, %110 ], [ 0, %122 ], [ 0, %149 ], [ 0, %164 ], [ 0, %158 ], [ 0, %176 ], [ 0, %210 ], [ 0, %228 ], [ 0, %260 ], [ 0, %280 ], [ 0, %274 ], [ 0, %284 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #8
  ret i32 %292
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare void @_ZN3pov14MInvTransPointEPdS0_PNS_16Transform_StructE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_ZN3pov18MInvTransDirectionEPdS0_PNS_16Transform_StructE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN3pov10Create_BoxEv() local_unnamed_addr #0 {
  %1 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef 168, ptr noundef nonnull @.str, i32 noundef 903, ptr noundef nonnull @.str.1)
  %2 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %1, i64 0, i32 1
  store i32 0, ptr %2, align 8, !tbaa !59
  store ptr @_ZN3pov11Box_MethodsE, ptr %1, align 8, !tbaa !60
  %3 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %1, i64 0, i32 2
  %4 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %1, i64 0, i32 10
  %5 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %1, i64 0, i32 9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  store float -1.000000e+10, ptr %5, align 4, !tbaa !61
  %6 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %1, i64 0, i32 9, i32 0, i64 1
  store float -1.000000e+10, ptr %6, align 4, !tbaa !61
  %7 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %1, i64 0, i32 9, i32 0, i64 2
  store float -1.000000e+10, ptr %7, align 4, !tbaa !61
  %8 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %1, i64 0, i32 9, i32 1
  store float 2.000000e+10, ptr %8, align 4, !tbaa !61
  %9 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %1, i64 0, i32 9, i32 1, i64 1
  store float 2.000000e+10, ptr %9, align 4, !tbaa !61
  %10 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %1, i64 0, i32 9, i32 1, i64 2
  store float 2.000000e+10, ptr %10, align 4, !tbaa !61
  %11 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %1, i64 0, i32 14
  store double -1.000000e+00, ptr %11, align 8, !tbaa !45
  %12 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %1, i64 0, i32 14, i64 0, i64 1
  store double -1.000000e+00, ptr %12, align 8, !tbaa !45
  %13 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %1, i64 0, i32 14, i64 0, i64 2
  store double -1.000000e+00, ptr %13, align 8, !tbaa !45
  %14 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %1, i64 0, i32 14, i64 1
  store double 1.000000e+00, ptr %14, align 8, !tbaa !45
  %15 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %1, i64 0, i32 14, i64 1, i64 1
  store double 1.000000e+00, ptr %15, align 8, !tbaa !45
  %16 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %1, i64 0, i32 14, i64 1, i64 2
  store double 1.000000e+00, ptr %16, align 8, !tbaa !45
  store float -1.000000e+00, ptr %5, align 4, !tbaa !61
  store float -1.000000e+00, ptr %6, align 4, !tbaa !61
  store float -1.000000e+00, ptr %7, align 4, !tbaa !61
  store float 2.000000e+00, ptr %8, align 4, !tbaa !61
  store float 2.000000e+00, ptr %9, align 4, !tbaa !61
  store float 2.000000e+00, ptr %10, align 4, !tbaa !61
  store ptr null, ptr %4, align 8, !tbaa !38
  ret ptr %1
}

declare noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

declare noundef ptr @_ZN3pov14Copy_TransformEPNS_16Transform_StructE(ptr noundef) local_unnamed_addr #3

declare void @_ZN3pov17Destroy_TransformEPNS_16Transform_StructE(ptr noundef) local_unnamed_addr #3

declare void @_ZN3pov8pov_freeEPvPKci(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3pov16Compute_Box_BBoxEPNS_10Box_StructE(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %0, i64 0, i32 9
  %3 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %0, i64 0, i32 14
  %4 = load double, ptr %3, align 8, !tbaa !45
  %5 = fptrunc double %4 to float
  store float %5, ptr %2, align 4, !tbaa !61
  %6 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %0, i64 0, i32 14, i64 0, i64 1
  %7 = load double, ptr %6, align 8, !tbaa !45
  %8 = fptrunc double %7 to float
  %9 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %0, i64 0, i32 9, i32 0, i64 1
  store float %8, ptr %9, align 4, !tbaa !61
  %10 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %0, i64 0, i32 14, i64 0, i64 2
  %11 = load double, ptr %10, align 8, !tbaa !45
  %12 = fptrunc double %11 to float
  %13 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %0, i64 0, i32 9, i32 0, i64 2
  store float %12, ptr %13, align 4, !tbaa !61
  %14 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %0, i64 0, i32 9, i32 1
  %15 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %0, i64 0, i32 14, i64 1
  %16 = load double, ptr %15, align 8, !tbaa !45
  %17 = fsub double %16, %4
  %18 = fptrunc double %17 to float
  store float %18, ptr %14, align 4, !tbaa !61
  %19 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %0, i64 0, i32 14, i64 1, i64 1
  %20 = load double, ptr %19, align 8, !tbaa !45
  %21 = fsub double %20, %7
  %22 = fptrunc double %21 to float
  %23 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %0, i64 0, i32 9, i32 1, i64 1
  store float %22, ptr %23, align 4, !tbaa !61
  %24 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %0, i64 0, i32 14, i64 1, i64 2
  %25 = load double, ptr %24, align 8, !tbaa !45
  %26 = fsub double %25, %11
  %27 = fptrunc double %26 to float
  %28 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %0, i64 0, i32 9, i32 1, i64 2
  store float %27, ptr %28, align 4, !tbaa !61
  %29 = getelementptr inbounds %"struct.pov::Box_Struct", ptr %0, i64 0, i32 10
  %30 = load ptr, ptr %29, align 8, !tbaa !38
  %31 = icmp eq ptr %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %1
  tail call void @_ZN3pov14Recompute_BBoxEPNS_19Bounding_Box_StructEPNS_16Transform_StructE(ptr noundef nonnull %2, ptr noundef nonnull %30)
  br label %33

33:                                               ; preds = %32, %1
  ret void
}

declare void @_ZN3pov14Recompute_BBoxEPNS_19Bounding_Box_StructEPNS_16Transform_StructE(ptr noundef, ptr noundef) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN3pov13Point_In_ClipEPdPNS_13Object_StructE(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

declare void @_ZN3pov8incstackEPNS_13istack_structE(ptr noundef) local_unnamed_addr #3

declare noundef i32 @_ZN3pov5ErrorEPKcz(ptr noundef, ...) local_unnamed_addr #3

declare void @_ZN3pov12MTransNormalEPdS0_PNS_16Transform_StructE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #6

declare noundef ptr @_ZN3pov16Create_TransformEv() local_unnamed_addr #3

declare void @_ZN3pov18Compose_TransformsEPNS_16Transform_StructES1_(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
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
!34 = !{!35, !35, i64 0}
!35 = !{!"long long", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C++ TBAA"}
!38 = !{!39, !40, i64 96}
!39 = !{!"_ZTSN3pov10Box_StructE", !40, i64 0, !41, i64 8, !40, i64 16, !40, i64 24, !40, i64 32, !40, i64 40, !40, i64 48, !40, i64 56, !40, i64 64, !42, i64 72, !40, i64 96, !40, i64 104, !43, i64 112, !41, i64 116, !36, i64 120}
!40 = !{!"any pointer", !36, i64 0}
!41 = !{!"int", !36, i64 0}
!42 = !{!"_ZTSN3pov19Bounding_Box_StructE", !36, i64 0, !36, i64 12}
!43 = !{!"float", !36, i64 0}
!44 = !{i32 0, i32 2}
!45 = !{!46, !46, i64 0}
!46 = !{!"double", !36, i64 0}
!47 = !{!48, !40, i64 56}
!48 = !{!"_ZTSN3pov13Object_StructE", !40, i64 0, !41, i64 8, !40, i64 16, !40, i64 24, !40, i64 32, !40, i64 40, !40, i64 48, !40, i64 56, !40, i64 64, !42, i64 72, !40, i64 96, !40, i64 104, !43, i64 112, !41, i64 116}
!49 = !{!41, !41, i64 0}
!50 = !{!51, !40, i64 8}
!51 = !{!"_ZTSN3pov13istack_structE", !40, i64 0, !40, i64 8, !41, i64 16, !41, i64 20}
!52 = !{!51, !41, i64 20}
!53 = !{!54, !46, i64 0}
!54 = !{!"_ZTSN3pov10istk_entryE", !46, i64 0, !36, i64 8, !36, i64 32, !36, i64 56, !36, i64 80, !40, i64 96, !41, i64 104, !41, i64 108, !46, i64 112, !46, i64 120, !46, i64 128, !46, i64 136, !46, i64 144, !46, i64 152, !46, i64 160, !46, i64 168, !46, i64 176, !40, i64 184, !40, i64 192}
!55 = !{!54, !40, i64 96}
!56 = !{!54, !41, i64 104}
!57 = !{!54, !40, i64 192}
!58 = !{!39, !41, i64 116}
!59 = !{!39, !41, i64 8}
!60 = !{!39, !40, i64 0}
!61 = !{!43, !43, i64 0}
!62 = !{i64 0, i64 8, !63, i64 8, i64 4, !49, i64 16, i64 8, !63, i64 24, i64 8, !63, i64 32, i64 8, !63, i64 40, i64 8, !63, i64 48, i64 8, !63, i64 56, i64 8, !63, i64 64, i64 8, !63, i64 72, i64 12, !64, i64 84, i64 12, !64, i64 96, i64 8, !63, i64 104, i64 8, !63, i64 112, i64 4, !61, i64 116, i64 4, !49, i64 120, i64 48, !64}
!63 = !{!40, !40, i64 0}
!64 = !{!36, !36, i64 0}
!65 = !{!48, !41, i64 116}

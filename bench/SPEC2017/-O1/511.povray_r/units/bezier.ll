; ModuleID = 'bezier.cpp'
source_filename = "bezier.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.pov::Method_Struct" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"struct.pov::Bicubic_Patch_Struct" = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"struct.pov::Bounding_Box_Struct", ptr, ptr, float, i32, i32, i32, i32, [4 x [4 x [3 x double]]], [4 x [2 x double]], [3 x double], double, double, double, ptr, ptr }
%"struct.pov::Bounding_Box_Struct" = type { [3 x float], [3 x float] }
%"struct.pov::Bezier_Node_Struct" = type { i32, [3 x double], double, i32, ptr }
%"struct.pov::Bezier_Vertices_Struct" = type { [4 x float], [4 x [3 x double]] }
%"struct.pov::istk_entry" = type { double, [3 x double], [3 x double], [3 x double], [2 x double], ptr, i32, i32, double, double, double, double, double, double, double, double, double, ptr, ptr }
%"struct.pov::Object_Struct" = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"struct.pov::Bounding_Box_Struct", ptr, ptr, float, i32 }
%"struct.pov::Ray_Struct" = type { [3 x double], [3 x double], i32, i32, [100 x ptr] }
%"struct.pov::istack_struct" = type { ptr, ptr, i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"bezier.cpp\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"bicubic patch\00", align 1
@_ZN3povL21Bicubic_Patch_MethodsE = internal global %"struct.pov::Method_Struct" { ptr @_ZN3povL31All_Bicubic_Patch_IntersectionsEPNS_13Object_StructEPNS_10Ray_StructEPNS_13istack_structE, ptr @_ZN3povL20Inside_Bicubic_PatchEPdPNS_13Object_StructE, ptr @_ZN3povL20Bicubic_Patch_NormalEPdPNS_13Object_StructEPNS_10istk_entryE, ptr @_ZN3povL21Bicubic_Patch_UVCoordEPdPNS_13Object_StructEPNS_10istk_entryE, ptr @_ZN3povL18Copy_Bicubic_PatchEPNS_13Object_StructE, ptr @_ZN3povL23Translate_Bicubic_PatchEPNS_13Object_StructEPdPNS_16Transform_StructE, ptr @_ZN3povL20Rotate_Bicubic_PatchEPNS_13Object_StructEPdPNS_16Transform_StructE, ptr @_ZN3povL19Scale_Bicubic_PatchEPNS_13Object_StructEPdPNS_16Transform_StructE, ptr @_ZN3povL23Transform_Bicubic_PatchEPNS_13Object_StructEPNS_16Transform_StructE, ptr @_ZN3povL20Invert_Bicubic_PatchEPNS_13Object_StructE, ptr @_ZN3povL21Destroy_Bicubic_PatchEPNS_13Object_StructE }, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"bezier node\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"bezier vertices\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"bezier children\00", align 1
@_ZN3pov5statsE = external local_unnamed_addr global [123 x i64], align 16
@.str.5 = private unnamed_addr constant [51 x i8] c"Bad patch type in All_Bicubic_Patch_Intersections.\00", align 1
@__const._ZN3povL12bezier_valueEPA4_A4_A3_dddPdS4_.C = private unnamed_addr constant [4 x double] [double 1.000000e+00, double 3.000000e+00, double 3.000000e+00, double 1.000000e+00], align 16
@.str.6 = private unnamed_addr constant [39 x i8] c"Bad Node type in bezier_tree_walker().\00", align 1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3pov23Precompute_Patch_ValuesEPNS_20Bicubic_Patch_StructE(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [16 x [3 x double]], align 16
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %2) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  store i32 0, ptr %3, align 4, !tbaa !34
  br label %4

4:                                                ; preds = %1, %21
  %5 = phi i64 [ 0, %1 ], [ %22, %21 ]
  %6 = shl nuw nsw i64 %5, 2
  br label %7

7:                                                ; preds = %4, %7
  %8 = phi i64 [ 0, %4 ], [ %19, %7 ]
  %9 = add nuw nsw i64 %8, %6
  %10 = getelementptr inbounds [16 x [3 x double]], ptr %2, i64 0, i64 %9
  %11 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %0, i64 0, i32 17, i64 %5, i64 %8
  %12 = load double, ptr %11, align 8, !tbaa !38
  store double %12, ptr %10, align 8, !tbaa !38
  %13 = getelementptr inbounds double, ptr %11, i64 1
  %14 = load double, ptr %13, align 8, !tbaa !38
  %15 = getelementptr inbounds double, ptr %10, i64 1
  store double %14, ptr %15, align 8, !tbaa !38
  %16 = getelementptr inbounds double, ptr %11, i64 2
  %17 = load double, ptr %16, align 8, !tbaa !38
  %18 = getelementptr inbounds double, ptr %10, i64 2
  store double %17, ptr %18, align 8, !tbaa !38
  %19 = add nuw nsw i64 %8, 1
  %20 = icmp eq i64 %19, 4
  br i1 %20, label %21, label %7, !llvm.loop !40

21:                                               ; preds = %7
  %22 = add nuw nsw i64 %5, 1
  %23 = icmp eq i64 %22, 4
  br i1 %23, label %24, label %4, !llvm.loop !43

24:                                               ; preds = %21
  %25 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %0, i64 0, i32 19
  br label %26

26:                                               ; preds = %24, %26
  %27 = phi i64 [ 0, %24 ], [ %40, %26 ]
  %28 = phi double [ 0.000000e+00, %24 ], [ %33, %26 ]
  %29 = phi double [ 0.000000e+00, %24 ], [ %39, %26 ]
  %30 = phi double [ 0.000000e+00, %24 ], [ %36, %26 ]
  %31 = getelementptr inbounds [3 x double], ptr %2, i64 %27
  %32 = load double, ptr %31, align 8, !tbaa !38
  %33 = fadd double %28, %32
  %34 = getelementptr inbounds [3 x double], ptr %2, i64 %27, i64 1
  %35 = load double, ptr %34, align 8, !tbaa !38
  %36 = fadd double %30, %35
  %37 = getelementptr inbounds [3 x double], ptr %2, i64 %27, i64 2
  %38 = load double, ptr %37, align 8, !tbaa !38
  %39 = fadd double %29, %38
  %40 = add nuw nsw i64 %27, 1
  %41 = icmp eq i64 %40, 16
  br i1 %41, label %42, label %26, !llvm.loop !44

42:                                               ; preds = %26
  %43 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %0, i64 0, i32 17
  %44 = fmul double %33, 6.250000e-02
  %45 = fmul double %36, 6.250000e-02
  %46 = fmul double %39, 6.250000e-02
  br label %47

47:                                               ; preds = %42, %47
  %48 = phi i64 [ 0, %42 ], [ %64, %47 ]
  %49 = phi double [ 0.000000e+00, %42 ], [ %63, %47 ]
  %50 = getelementptr inbounds [3 x double], ptr %2, i64 %48
  %51 = load double, ptr %50, align 8, !tbaa !38
  %52 = fsub double %51, %44
  %53 = getelementptr inbounds [3 x double], ptr %2, i64 %48, i64 1
  %54 = load double, ptr %53, align 8, !tbaa !38
  %55 = fsub double %54, %45
  %56 = getelementptr inbounds [3 x double], ptr %2, i64 %48, i64 2
  %57 = load double, ptr %56, align 8, !tbaa !38
  %58 = fsub double %57, %46
  %59 = fmul double %55, %55
  %60 = tail call double @llvm.fmuladd.f64(double %52, double %52, double %59)
  %61 = tail call double @llvm.fmuladd.f64(double %58, double %58, double %60)
  %62 = fcmp ogt double %61, %49
  %63 = select i1 %62, double %61, double %49
  %64 = add nuw nsw i64 %48, 1
  %65 = icmp eq i64 %64, 16
  br i1 %65, label %66, label %47, !llvm.loop !45

66:                                               ; preds = %47
  %67 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %0, i64 0, i32 20
  store double %44, ptr %25, align 8, !tbaa !38
  %68 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %0, i64 0, i32 19, i64 1
  store double %45, ptr %68, align 8, !tbaa !38
  %69 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %0, i64 0, i32 19, i64 2
  store double %46, ptr %69, align 8, !tbaa !38
  store double %63, ptr %67, align 8, !tbaa !38
  %70 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %0, i64 0, i32 14
  %71 = load i32, ptr %70, align 8, !tbaa !46
  %72 = icmp eq i32 %71, 1
  br i1 %72, label %73, label %80

73:                                               ; preds = %66
  %74 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %0, i64 0, i32 23
  %75 = load ptr, ptr %74, align 8, !tbaa !51
  %76 = icmp eq ptr %75, null
  br i1 %76, label %78, label %77

77:                                               ; preds = %73
  tail call fastcc void @_ZN3povL19bezier_tree_deleterEPNS_18Bezier_Node_StructE(ptr noundef nonnull %75)
  br label %78

78:                                               ; preds = %77, %73
  %79 = call fastcc noundef ptr @_ZN3povL19bezier_tree_builderEPNS_20Bicubic_Patch_StructEPA4_A4_A3_dddddiRi(ptr noundef %0, ptr noundef nonnull %43, double noundef 0.000000e+00, double noundef 1.000000e+00, double noundef 0.000000e+00, double noundef 1.000000e+00, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(4) %3)
  store ptr %79, ptr %74, align 8, !tbaa !51
  br label %80

80:                                               ; preds = %78, %66
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %2) #11
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN3povL19bezier_tree_deleterEPNS_18Bezier_Node_StructE(ptr noundef %0) unnamed_addr #0 {
  %2 = load i32, ptr %0, align 8, !tbaa !52
  switch i32 %2, label %21 [
    i32 0, label %3
    i32 1, label %18
  ]

3:                                                ; preds = %1
  %4 = getelementptr inbounds %"struct.pov::Bezier_Node_Struct", ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !54
  %6 = getelementptr inbounds %"struct.pov::Bezier_Node_Struct", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !55
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %3, %9
  %10 = phi i64 [ %13, %9 ], [ 0, %3 ]
  %11 = getelementptr inbounds [4 x ptr], ptr %5, i64 0, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !56
  tail call fastcc void @_ZN3povL19bezier_tree_deleterEPNS_18Bezier_Node_StructE(ptr noundef %12)
  %13 = add nuw nsw i64 %10, 1
  %14 = load i32, ptr %6, align 8, !tbaa !55
  %15 = sext i32 %14 to i64
  %16 = icmp slt i64 %13, %15
  br i1 %16, label %9, label %17, !llvm.loop !57

17:                                               ; preds = %9, %3
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef %5, ptr noundef nonnull @.str, i32 noundef 1532)
  br label %21

18:                                               ; preds = %1
  %19 = getelementptr inbounds %"struct.pov::Bezier_Node_Struct", ptr %0, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !54
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef %20, ptr noundef nonnull @.str, i32 noundef 1540)
  store ptr null, ptr %19, align 8, !tbaa !54
  br label %21

21:                                               ; preds = %1, %18, %17
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef nonnull %0, ptr noundef nonnull @.str, i32 noundef 1546)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef ptr @_ZN3povL19bezier_tree_builderEPNS_20Bicubic_Patch_StructEPA4_A4_A3_dddddiRi(ptr noundef %0, ptr nocapture noundef readonly %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5, i32 noundef %6, ptr noundef nonnull align 4 dereferenceable(4) %7) unnamed_addr #0 {
  %9 = alloca [4 x [4 x [3 x double]]], align 16
  %10 = alloca [4 x [4 x [3 x double]]], align 16
  %11 = alloca [4 x [4 x [3 x double]]], align 16
  %12 = alloca [4 x [4 x [3 x double]]], align 16
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %9) #11
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %10) #11
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %11) #11
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %12) #11
  %13 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef 56, ptr noundef nonnull @.str, i32 noundef 142, ptr noundef nonnull @.str.2)
  %14 = getelementptr inbounds %"struct.pov::Bezier_Node_Struct", ptr %13, i64 0, i32 4
  store ptr null, ptr %14, align 8, !tbaa !54
  %15 = load i32, ptr %7, align 4, !tbaa !34
  %16 = icmp slt i32 %15, %6
  br i1 %16, label %17, label %18

17:                                               ; preds = %8
  store i32 %6, ptr %7, align 4, !tbaa !34
  br label %18

18:                                               ; preds = %17, %8
  %19 = getelementptr inbounds %"struct.pov::Bezier_Node_Struct", ptr %13, i64 0, i32 1
  br label %20

20:                                               ; preds = %41, %18
  %21 = phi i64 [ 0, %18 ], [ %42, %41 ]
  %22 = phi double [ 0.000000e+00, %18 ], [ %38, %41 ]
  %23 = phi double [ 0.000000e+00, %18 ], [ %35, %41 ]
  %24 = phi double [ 0.000000e+00, %18 ], [ %32, %41 ]
  br label %25

25:                                               ; preds = %25, %20
  %26 = phi i64 [ 0, %20 ], [ %39, %25 ]
  %27 = phi double [ %22, %20 ], [ %38, %25 ]
  %28 = phi double [ %23, %20 ], [ %35, %25 ]
  %29 = phi double [ %24, %20 ], [ %32, %25 ]
  %30 = getelementptr inbounds [4 x [4 x [3 x double]]], ptr %1, i64 0, i64 %21, i64 %26
  %31 = load double, ptr %30, align 8, !tbaa !38
  %32 = fadd double %29, %31
  %33 = getelementptr inbounds [4 x [4 x [3 x double]]], ptr %1, i64 0, i64 %21, i64 %26, i64 1
  %34 = load double, ptr %33, align 8, !tbaa !38
  %35 = fadd double %28, %34
  %36 = getelementptr inbounds [4 x [4 x [3 x double]]], ptr %1, i64 0, i64 %21, i64 %26, i64 2
  %37 = load double, ptr %36, align 8, !tbaa !38
  %38 = fadd double %27, %37
  %39 = add nuw nsw i64 %26, 1
  %40 = icmp eq i64 %39, 4
  br i1 %40, label %41, label %25, !llvm.loop !58

41:                                               ; preds = %25
  %42 = add nuw nsw i64 %21, 1
  %43 = icmp eq i64 %42, 4
  br i1 %43, label %44, label %20, !llvm.loop !59

44:                                               ; preds = %41
  %45 = fmul double %32, 6.250000e-02
  %46 = fmul double %35, 6.250000e-02
  %47 = fmul double %38, 6.250000e-02
  br label %48

48:                                               ; preds = %70, %44
  %49 = phi i64 [ 0, %44 ], [ %71, %70 ]
  %50 = phi double [ 0.000000e+00, %44 ], [ %67, %70 ]
  br label %51

51:                                               ; preds = %51, %48
  %52 = phi i64 [ 0, %48 ], [ %68, %51 ]
  %53 = phi double [ %50, %48 ], [ %67, %51 ]
  %54 = getelementptr inbounds [4 x [4 x [3 x double]]], ptr %1, i64 0, i64 %49, i64 %52
  %55 = load double, ptr %54, align 8, !tbaa !38
  %56 = fsub double %55, %45
  %57 = getelementptr inbounds [4 x [4 x [3 x double]]], ptr %1, i64 0, i64 %49, i64 %52, i64 1
  %58 = load double, ptr %57, align 8, !tbaa !38
  %59 = fsub double %58, %46
  %60 = getelementptr inbounds [4 x [4 x [3 x double]]], ptr %1, i64 0, i64 %49, i64 %52, i64 2
  %61 = load double, ptr %60, align 8, !tbaa !38
  %62 = fsub double %61, %47
  %63 = fmul double %59, %59
  %64 = tail call double @llvm.fmuladd.f64(double %56, double %56, double %63)
  %65 = tail call double @llvm.fmuladd.f64(double %62, double %62, double %64)
  %66 = fcmp ogt double %65, %53
  %67 = select i1 %66, double %65, double %53
  %68 = add nuw nsw i64 %52, 1
  %69 = icmp eq i64 %68, 4
  br i1 %69, label %70, label %51, !llvm.loop !60

70:                                               ; preds = %51
  %71 = add nuw nsw i64 %49, 1
  %72 = icmp eq i64 %71, 4
  br i1 %72, label %73, label %48, !llvm.loop !61

73:                                               ; preds = %70
  %74 = getelementptr inbounds %"struct.pov::Bezier_Node_Struct", ptr %13, i64 0, i32 2
  store double %45, ptr %19, align 8, !tbaa !38
  %75 = getelementptr inbounds %"struct.pov::Bezier_Node_Struct", ptr %13, i64 0, i32 1, i64 1
  store double %46, ptr %75, align 8, !tbaa !38
  %76 = getelementptr inbounds %"struct.pov::Bezier_Node_Struct", ptr %13, i64 0, i32 1, i64 2
  store double %47, ptr %76, align 8, !tbaa !38
  store double %67, ptr %74, align 8, !tbaa !38
  %77 = tail call fastcc noundef i32 @_ZN3povL11flat_enoughEPNS_20Bicubic_Patch_StructEPA4_A4_A3_d(ptr noundef %0, ptr noundef %1), !range !62
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %123, label %79

79:                                               ; preds = %73
  store i32 1, ptr %13, align 8, !tbaa !52
  %80 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef 112, ptr noundef nonnull @.str, i32 noundef 181, ptr noundef nonnull @.str.3)
  %81 = getelementptr inbounds %"struct.pov::Bezier_Vertices_Struct", ptr %80, i64 0, i32 1
  %82 = load double, ptr %1, align 8, !tbaa !38
  store double %82, ptr %81, align 8, !tbaa !38
  %83 = getelementptr inbounds double, ptr %1, i64 1
  %84 = load double, ptr %83, align 8, !tbaa !38
  %85 = getelementptr inbounds %"struct.pov::Bezier_Vertices_Struct", ptr %80, i64 0, i32 1, i64 0, i64 1
  store double %84, ptr %85, align 8, !tbaa !38
  %86 = getelementptr inbounds double, ptr %1, i64 2
  %87 = load double, ptr %86, align 8, !tbaa !38
  %88 = getelementptr inbounds %"struct.pov::Bezier_Vertices_Struct", ptr %80, i64 0, i32 1, i64 0, i64 2
  store double %87, ptr %88, align 8, !tbaa !38
  %89 = getelementptr inbounds %"struct.pov::Bezier_Vertices_Struct", ptr %80, i64 0, i32 1, i64 1
  %90 = getelementptr inbounds [4 x [3 x double]], ptr %1, i64 0, i64 3
  %91 = load double, ptr %90, align 8, !tbaa !38
  store double %91, ptr %89, align 8, !tbaa !38
  %92 = getelementptr inbounds [4 x [3 x double]], ptr %1, i64 0, i64 3, i64 1
  %93 = load double, ptr %92, align 8, !tbaa !38
  %94 = getelementptr inbounds %"struct.pov::Bezier_Vertices_Struct", ptr %80, i64 0, i32 1, i64 1, i64 1
  store double %93, ptr %94, align 8, !tbaa !38
  %95 = getelementptr inbounds [4 x [3 x double]], ptr %1, i64 0, i64 3, i64 2
  %96 = load double, ptr %95, align 8, !tbaa !38
  %97 = getelementptr inbounds %"struct.pov::Bezier_Vertices_Struct", ptr %80, i64 0, i32 1, i64 1, i64 2
  store double %96, ptr %97, align 8, !tbaa !38
  %98 = getelementptr inbounds %"struct.pov::Bezier_Vertices_Struct", ptr %80, i64 0, i32 1, i64 2
  %99 = getelementptr inbounds [4 x [4 x [3 x double]]], ptr %1, i64 0, i64 3
  %100 = getelementptr inbounds [4 x [4 x [3 x double]]], ptr %1, i64 0, i64 3, i64 3
  %101 = load double, ptr %100, align 8, !tbaa !38
  store double %101, ptr %98, align 8, !tbaa !38
  %102 = getelementptr inbounds [4 x [4 x [3 x double]]], ptr %1, i64 0, i64 3, i64 3, i64 1
  %103 = load double, ptr %102, align 8, !tbaa !38
  %104 = getelementptr inbounds %"struct.pov::Bezier_Vertices_Struct", ptr %80, i64 0, i32 1, i64 2, i64 1
  store double %103, ptr %104, align 8, !tbaa !38
  %105 = getelementptr inbounds [4 x [4 x [3 x double]]], ptr %1, i64 0, i64 3, i64 3, i64 2
  %106 = load double, ptr %105, align 8, !tbaa !38
  %107 = getelementptr inbounds %"struct.pov::Bezier_Vertices_Struct", ptr %80, i64 0, i32 1, i64 2, i64 2
  store double %106, ptr %107, align 8, !tbaa !38
  %108 = getelementptr inbounds %"struct.pov::Bezier_Vertices_Struct", ptr %80, i64 0, i32 1, i64 3
  %109 = load double, ptr %99, align 8, !tbaa !38
  store double %109, ptr %108, align 8, !tbaa !38
  %110 = getelementptr inbounds [4 x [4 x [3 x double]]], ptr %1, i64 0, i64 3, i64 0, i64 1
  %111 = load double, ptr %110, align 8, !tbaa !38
  %112 = getelementptr inbounds %"struct.pov::Bezier_Vertices_Struct", ptr %80, i64 0, i32 1, i64 3, i64 1
  store double %111, ptr %112, align 8, !tbaa !38
  %113 = getelementptr inbounds [4 x [4 x [3 x double]]], ptr %1, i64 0, i64 3, i64 0, i64 2
  %114 = load double, ptr %113, align 8, !tbaa !38
  %115 = getelementptr inbounds %"struct.pov::Bezier_Vertices_Struct", ptr %80, i64 0, i32 1, i64 3, i64 2
  store double %114, ptr %115, align 8, !tbaa !38
  %116 = fptrunc double %2 to float
  store float %116, ptr %80, align 8, !tbaa !63
  %117 = fptrunc double %3 to float
  %118 = getelementptr inbounds [4 x float], ptr %80, i64 0, i64 1
  store float %117, ptr %118, align 4, !tbaa !63
  %119 = fptrunc double %4 to float
  %120 = getelementptr inbounds [4 x float], ptr %80, i64 0, i64 2
  store float %119, ptr %120, align 8, !tbaa !63
  %121 = fptrunc double %5 to float
  %122 = getelementptr inbounds [4 x float], ptr %80, i64 0, i64 3
  store float %121, ptr %122, align 4, !tbaa !63
  br label %209

123:                                              ; preds = %73
  %124 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %0, i64 0, i32 15
  %125 = load i32, ptr %124, align 4, !tbaa !64
  %126 = icmp sgt i32 %125, %6
  %127 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %0, i64 0, i32 16
  %128 = load i32, ptr %127, align 8, !tbaa !65
  %129 = icmp sgt i32 %128, %6
  br i1 %126, label %184, label %130

130:                                              ; preds = %123
  br i1 %129, label %175, label %131

131:                                              ; preds = %130
  store i32 1, ptr %13, align 8, !tbaa !52
  %132 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef 112, ptr noundef nonnull @.str, i32 noundef 181, ptr noundef nonnull @.str.3)
  %133 = getelementptr inbounds %"struct.pov::Bezier_Vertices_Struct", ptr %132, i64 0, i32 1
  %134 = load double, ptr %1, align 8, !tbaa !38
  store double %134, ptr %133, align 8, !tbaa !38
  %135 = getelementptr inbounds double, ptr %1, i64 1
  %136 = load double, ptr %135, align 8, !tbaa !38
  %137 = getelementptr inbounds %"struct.pov::Bezier_Vertices_Struct", ptr %132, i64 0, i32 1, i64 0, i64 1
  store double %136, ptr %137, align 8, !tbaa !38
  %138 = getelementptr inbounds double, ptr %1, i64 2
  %139 = load double, ptr %138, align 8, !tbaa !38
  %140 = getelementptr inbounds %"struct.pov::Bezier_Vertices_Struct", ptr %132, i64 0, i32 1, i64 0, i64 2
  store double %139, ptr %140, align 8, !tbaa !38
  %141 = getelementptr inbounds %"struct.pov::Bezier_Vertices_Struct", ptr %132, i64 0, i32 1, i64 1
  %142 = getelementptr inbounds [4 x [3 x double]], ptr %1, i64 0, i64 3
  %143 = load double, ptr %142, align 8, !tbaa !38
  store double %143, ptr %141, align 8, !tbaa !38
  %144 = getelementptr inbounds [4 x [3 x double]], ptr %1, i64 0, i64 3, i64 1
  %145 = load double, ptr %144, align 8, !tbaa !38
  %146 = getelementptr inbounds %"struct.pov::Bezier_Vertices_Struct", ptr %132, i64 0, i32 1, i64 1, i64 1
  store double %145, ptr %146, align 8, !tbaa !38
  %147 = getelementptr inbounds [4 x [3 x double]], ptr %1, i64 0, i64 3, i64 2
  %148 = load double, ptr %147, align 8, !tbaa !38
  %149 = getelementptr inbounds %"struct.pov::Bezier_Vertices_Struct", ptr %132, i64 0, i32 1, i64 1, i64 2
  store double %148, ptr %149, align 8, !tbaa !38
  %150 = getelementptr inbounds %"struct.pov::Bezier_Vertices_Struct", ptr %132, i64 0, i32 1, i64 2
  %151 = getelementptr inbounds [4 x [4 x [3 x double]]], ptr %1, i64 0, i64 3
  %152 = getelementptr inbounds [4 x [4 x [3 x double]]], ptr %1, i64 0, i64 3, i64 3
  %153 = load double, ptr %152, align 8, !tbaa !38
  store double %153, ptr %150, align 8, !tbaa !38
  %154 = getelementptr inbounds [4 x [4 x [3 x double]]], ptr %1, i64 0, i64 3, i64 3, i64 1
  %155 = load double, ptr %154, align 8, !tbaa !38
  %156 = getelementptr inbounds %"struct.pov::Bezier_Vertices_Struct", ptr %132, i64 0, i32 1, i64 2, i64 1
  store double %155, ptr %156, align 8, !tbaa !38
  %157 = getelementptr inbounds [4 x [4 x [3 x double]]], ptr %1, i64 0, i64 3, i64 3, i64 2
  %158 = load double, ptr %157, align 8, !tbaa !38
  %159 = getelementptr inbounds %"struct.pov::Bezier_Vertices_Struct", ptr %132, i64 0, i32 1, i64 2, i64 2
  store double %158, ptr %159, align 8, !tbaa !38
  %160 = getelementptr inbounds %"struct.pov::Bezier_Vertices_Struct", ptr %132, i64 0, i32 1, i64 3
  %161 = load double, ptr %151, align 8, !tbaa !38
  store double %161, ptr %160, align 8, !tbaa !38
  %162 = getelementptr inbounds [4 x [4 x [3 x double]]], ptr %1, i64 0, i64 3, i64 0, i64 1
  %163 = load double, ptr %162, align 8, !tbaa !38
  %164 = getelementptr inbounds %"struct.pov::Bezier_Vertices_Struct", ptr %132, i64 0, i32 1, i64 3, i64 1
  store double %163, ptr %164, align 8, !tbaa !38
  %165 = getelementptr inbounds [4 x [4 x [3 x double]]], ptr %1, i64 0, i64 3, i64 0, i64 2
  %166 = load double, ptr %165, align 8, !tbaa !38
  %167 = getelementptr inbounds %"struct.pov::Bezier_Vertices_Struct", ptr %132, i64 0, i32 1, i64 3, i64 2
  store double %166, ptr %167, align 8, !tbaa !38
  %168 = fptrunc double %2 to float
  store float %168, ptr %132, align 8, !tbaa !63
  %169 = fptrunc double %3 to float
  %170 = getelementptr inbounds [4 x float], ptr %132, i64 0, i64 1
  store float %169, ptr %170, align 4, !tbaa !63
  %171 = fptrunc double %4 to float
  %172 = getelementptr inbounds [4 x float], ptr %132, i64 0, i64 2
  store float %171, ptr %172, align 8, !tbaa !63
  %173 = fptrunc double %5 to float
  %174 = getelementptr inbounds [4 x float], ptr %132, i64 0, i64 3
  store float %173, ptr %174, align 4, !tbaa !63
  br label %209

175:                                              ; preds = %130
  call fastcc void @_ZN3povL20bezier_split_up_downEPA4_A4_A3_dS3_S3_(ptr noundef %1, ptr noundef nonnull %9, ptr noundef nonnull %11)
  store i32 0, ptr %13, align 8, !tbaa !52
  %176 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef 32, ptr noundef nonnull @.str, i32 noundef 218, ptr noundef nonnull @.str.4)
  %177 = fadd double %4, %5
  %178 = fmul double %177, 5.000000e-01
  %179 = add nsw i32 %6, 1
  %180 = call fastcc noundef ptr @_ZN3povL19bezier_tree_builderEPNS_20Bicubic_Patch_StructEPA4_A4_A3_dddddiRi(ptr noundef %0, ptr noundef nonnull %9, double noundef %2, double noundef %3, double noundef %4, double noundef %178, i32 noundef %179, ptr noundef nonnull align 4 dereferenceable(4) %7)
  store ptr %180, ptr %176, align 8, !tbaa !56
  %181 = call fastcc noundef ptr @_ZN3povL19bezier_tree_builderEPNS_20Bicubic_Patch_StructEPA4_A4_A3_dddddiRi(ptr noundef %0, ptr noundef nonnull %11, double noundef %2, double noundef %3, double noundef %178, double noundef %5, i32 noundef %179, ptr noundef nonnull align 4 dereferenceable(4) %7)
  %182 = getelementptr inbounds [4 x ptr], ptr %176, i64 0, i64 1
  store ptr %181, ptr %182, align 8, !tbaa !56
  %183 = getelementptr inbounds %"struct.pov::Bezier_Node_Struct", ptr %13, i64 0, i32 3
  store i32 2, ptr %183, align 8, !tbaa !55
  br label %209

184:                                              ; preds = %123
  call fastcc void @_ZN3povL23bezier_split_left_rightEPA4_A4_A3_dS3_S3_(ptr noundef %1, ptr noundef nonnull %9, ptr noundef nonnull %10)
  br i1 %129, label %194, label %185

185:                                              ; preds = %184
  store i32 0, ptr %13, align 8, !tbaa !52
  %186 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef 32, ptr noundef nonnull @.str, i32 noundef 218, ptr noundef nonnull @.str.4)
  %187 = fadd double %2, %3
  %188 = fmul double %187, 5.000000e-01
  %189 = add nsw i32 %6, 1
  %190 = call fastcc noundef ptr @_ZN3povL19bezier_tree_builderEPNS_20Bicubic_Patch_StructEPA4_A4_A3_dddddiRi(ptr noundef %0, ptr noundef nonnull %9, double noundef %2, double noundef %188, double noundef %4, double noundef %5, i32 noundef %189, ptr noundef nonnull align 4 dereferenceable(4) %7)
  store ptr %190, ptr %186, align 8, !tbaa !56
  %191 = call fastcc noundef ptr @_ZN3povL19bezier_tree_builderEPNS_20Bicubic_Patch_StructEPA4_A4_A3_dddddiRi(ptr noundef %0, ptr noundef nonnull %10, double noundef %188, double noundef %3, double noundef %4, double noundef %5, i32 noundef %189, ptr noundef nonnull align 4 dereferenceable(4) %7)
  %192 = getelementptr inbounds [4 x ptr], ptr %186, i64 0, i64 1
  store ptr %191, ptr %192, align 8, !tbaa !56
  %193 = getelementptr inbounds %"struct.pov::Bezier_Node_Struct", ptr %13, i64 0, i32 3
  store i32 2, ptr %193, align 8, !tbaa !55
  br label %209

194:                                              ; preds = %184
  call fastcc void @_ZN3povL20bezier_split_up_downEPA4_A4_A3_dS3_S3_(ptr noundef nonnull %9, ptr noundef nonnull %9, ptr noundef nonnull %11)
  call fastcc void @_ZN3povL20bezier_split_up_downEPA4_A4_A3_dS3_S3_(ptr noundef nonnull %10, ptr noundef nonnull %10, ptr noundef nonnull %12)
  store i32 0, ptr %13, align 8, !tbaa !52
  %195 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef 32, ptr noundef nonnull @.str, i32 noundef 218, ptr noundef nonnull @.str.4)
  %196 = fadd double %2, %3
  %197 = fmul double %196, 5.000000e-01
  %198 = fadd double %4, %5
  %199 = fmul double %198, 5.000000e-01
  %200 = add nsw i32 %6, 1
  %201 = call fastcc noundef ptr @_ZN3povL19bezier_tree_builderEPNS_20Bicubic_Patch_StructEPA4_A4_A3_dddddiRi(ptr noundef %0, ptr noundef nonnull %9, double noundef %2, double noundef %197, double noundef %4, double noundef %199, i32 noundef %200, ptr noundef nonnull align 4 dereferenceable(4) %7)
  store ptr %201, ptr %195, align 8, !tbaa !56
  %202 = call fastcc noundef ptr @_ZN3povL19bezier_tree_builderEPNS_20Bicubic_Patch_StructEPA4_A4_A3_dddddiRi(ptr noundef %0, ptr noundef nonnull %11, double noundef %2, double noundef %197, double noundef %199, double noundef %5, i32 noundef %200, ptr noundef nonnull align 4 dereferenceable(4) %7)
  %203 = getelementptr inbounds [4 x ptr], ptr %195, i64 0, i64 1
  store ptr %202, ptr %203, align 8, !tbaa !56
  %204 = call fastcc noundef ptr @_ZN3povL19bezier_tree_builderEPNS_20Bicubic_Patch_StructEPA4_A4_A3_dddddiRi(ptr noundef %0, ptr noundef nonnull %10, double noundef %197, double noundef %3, double noundef %4, double noundef %199, i32 noundef %200, ptr noundef nonnull align 4 dereferenceable(4) %7)
  %205 = getelementptr inbounds [4 x ptr], ptr %195, i64 0, i64 2
  store ptr %204, ptr %205, align 8, !tbaa !56
  %206 = call fastcc noundef ptr @_ZN3povL19bezier_tree_builderEPNS_20Bicubic_Patch_StructEPA4_A4_A3_dddddiRi(ptr noundef %0, ptr noundef nonnull %12, double noundef %197, double noundef %3, double noundef %199, double noundef %5, i32 noundef %200, ptr noundef nonnull align 4 dereferenceable(4) %7)
  %207 = getelementptr inbounds [4 x ptr], ptr %195, i64 0, i64 3
  store ptr %206, ptr %207, align 8, !tbaa !56
  %208 = getelementptr inbounds %"struct.pov::Bezier_Node_Struct", ptr %13, i64 0, i32 3
  store i32 4, ptr %208, align 8, !tbaa !55
  br label %209

209:                                              ; preds = %175, %131, %194, %185, %79
  %210 = phi ptr [ %176, %175 ], [ %132, %131 ], [ %195, %194 ], [ %186, %185 ], [ %80, %79 ]
  store ptr %210, ptr %14, align 8, !tbaa !54
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %9) #11
  ret ptr %13
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN3pov20Create_Bicubic_PatchEv() local_unnamed_addr #0 {
  %1 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef 648, ptr noundef nonnull @.str, i32 noundef 2079, ptr noundef nonnull @.str.1)
  %2 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %1, i64 0, i32 1
  store i32 1, ptr %2, align 8, !tbaa !66
  store ptr @_ZN3povL21Bicubic_Patch_MethodsE, ptr %1, align 8, !tbaa !67
  %3 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %1, i64 0, i32 2
  %4 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %1, i64 0, i32 10
  %5 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %1, i64 0, i32 9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  store float -1.000000e+10, ptr %5, align 4, !tbaa !63
  %6 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %1, i64 0, i32 9, i32 0, i64 1
  store float -1.000000e+10, ptr %6, align 4, !tbaa !63
  %7 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %1, i64 0, i32 9, i32 0, i64 2
  store float -1.000000e+10, ptr %7, align 4, !tbaa !63
  %8 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %1, i64 0, i32 9, i32 1
  store float 2.000000e+10, ptr %8, align 4, !tbaa !63
  %9 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %1, i64 0, i32 9, i32 1, i64 1
  store float 2.000000e+10, ptr %9, align 4, !tbaa !63
  %10 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %1, i64 0, i32 9, i32 1, i64 2
  store float 2.000000e+10, ptr %10, align 4, !tbaa !63
  %11 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %1, i64 0, i32 14
  store i32 -1, ptr %11, align 8, !tbaa !46
  %12 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %1, i64 0, i32 15
  store i32 0, ptr %12, align 4, !tbaa !64
  %13 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %1, i64 0, i32 16
  store i32 0, ptr %13, align 8, !tbaa !65
  %14 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %1, i64 0, i32 21
  store double 0.000000e+00, ptr %14, align 8, !tbaa !68
  %15 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %1, i64 0, i32 22
  store double 1.000000e-02, ptr %15, align 8, !tbaa !69
  %16 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %1, i64 0, i32 23
  %17 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %1, i64 0, i32 18
  %18 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %1, i64 0, i32 18, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %17, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %16, i8 0, i64 16, i1 false)
  store double 1.000000e+00, ptr %18, align 8, !tbaa !38
  %19 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %1, i64 0, i32 18, i64 1, i64 1
  store double 0.000000e+00, ptr %19, align 8, !tbaa !38
  %20 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %1, i64 0, i32 18, i64 2
  store double 1.000000e+00, ptr %20, align 8, !tbaa !38
  %21 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %1, i64 0, i32 18, i64 2, i64 1
  store double 1.000000e+00, ptr %21, align 8, !tbaa !38
  %22 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %1, i64 0, i32 18, i64 3
  store double 0.000000e+00, ptr %22, align 8, !tbaa !38
  %23 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %1, i64 0, i32 18, i64 3, i64 1
  store double 1.000000e+00, ptr %23, align 8, !tbaa !38
  ret ptr %1
}

declare noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_ZN3pov26Compute_Bicubic_Patch_BBoxEPNS_20Bicubic_Patch_StructE(ptr nocapture noundef %0) local_unnamed_addr #3 {
  br label %2

2:                                                ; preds = %1, %38
  %3 = phi i64 [ 0, %1 ], [ %39, %38 ]
  %4 = phi double [ -2.000000e+10, %1 ], [ %35, %38 ]
  %5 = phi double [ -2.000000e+10, %1 ], [ %33, %38 ]
  %6 = phi double [ -2.000000e+10, %1 ], [ %31, %38 ]
  %7 = phi double [ 2.000000e+10, %1 ], [ %29, %38 ]
  %8 = phi double [ 2.000000e+10, %1 ], [ %25, %38 ]
  %9 = phi double [ 2.000000e+10, %1 ], [ %21, %38 ]
  br label %10

10:                                               ; preds = %2, %10
  %11 = phi i64 [ 0, %2 ], [ %36, %10 ]
  %12 = phi double [ %4, %2 ], [ %35, %10 ]
  %13 = phi double [ %5, %2 ], [ %33, %10 ]
  %14 = phi double [ %6, %2 ], [ %31, %10 ]
  %15 = phi double [ %7, %2 ], [ %29, %10 ]
  %16 = phi double [ %8, %2 ], [ %25, %10 ]
  %17 = phi double [ %9, %2 ], [ %21, %10 ]
  %18 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %0, i64 0, i32 17, i64 %3, i64 %11
  %19 = load double, ptr %18, align 8, !tbaa !38
  %20 = fcmp olt double %19, %17
  %21 = select i1 %20, double %19, double %17
  %22 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %0, i64 0, i32 17, i64 %3, i64 %11, i64 1
  %23 = load double, ptr %22, align 8, !tbaa !38
  %24 = fcmp olt double %23, %16
  %25 = select i1 %24, double %23, double %16
  %26 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %0, i64 0, i32 17, i64 %3, i64 %11, i64 2
  %27 = load double, ptr %26, align 8, !tbaa !38
  %28 = fcmp olt double %27, %15
  %29 = select i1 %28, double %27, double %15
  %30 = fcmp olt double %14, %19
  %31 = select i1 %30, double %19, double %14
  %32 = fcmp olt double %13, %23
  %33 = select i1 %32, double %23, double %13
  %34 = fcmp olt double %12, %27
  %35 = select i1 %34, double %27, double %12
  %36 = add nuw nsw i64 %11, 1
  %37 = icmp eq i64 %36, 4
  br i1 %37, label %38, label %10, !llvm.loop !70

38:                                               ; preds = %10
  %39 = add nuw nsw i64 %3, 1
  %40 = icmp eq i64 %39, 4
  br i1 %40, label %41, label %2, !llvm.loop !71

41:                                               ; preds = %38
  %42 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %0, i64 0, i32 9
  %43 = fptrunc double %21 to float
  store float %43, ptr %42, align 4, !tbaa !63
  %44 = fptrunc double %25 to float
  %45 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %0, i64 0, i32 9, i32 0, i64 1
  store float %44, ptr %45, align 4, !tbaa !63
  %46 = fptrunc double %29 to float
  %47 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %0, i64 0, i32 9, i32 0, i64 2
  store float %46, ptr %47, align 4, !tbaa !63
  %48 = fsub double %31, %21
  %49 = fptrunc double %48 to float
  %50 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %0, i64 0, i32 9, i32 1
  store float %49, ptr %50, align 4, !tbaa !63
  %51 = fsub double %33, %25
  %52 = fptrunc double %51 to float
  %53 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %0, i64 0, i32 9, i32 1, i64 1
  store float %52, ptr %53, align 4, !tbaa !63
  %54 = fsub double %35, %29
  %55 = fptrunc double %54 to float
  %56 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %0, i64 0, i32 9, i32 1, i64 2
  store float %55, ptr %56, align 4, !tbaa !63
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: mustprogress nofree nounwind memory(write, argmem: readwrite) uwtable
define internal fastcc noundef i32 @_ZN3povL11flat_enoughEPNS_20Bicubic_Patch_StructEPA4_A4_A3_d(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 {
  %3 = load double, ptr %1, align 8, !tbaa !38
  %4 = getelementptr inbounds double, ptr %1, i64 1
  %5 = load double, ptr %4, align 8, !tbaa !38
  %6 = getelementptr inbounds double, ptr %1, i64 2
  %7 = load double, ptr %6, align 8, !tbaa !38
  %8 = getelementptr inbounds [4 x [3 x double]], ptr %1, i64 0, i64 3
  %9 = load double, ptr %8, align 8, !tbaa !38
  %10 = getelementptr inbounds [4 x [3 x double]], ptr %1, i64 0, i64 3, i64 1
  %11 = load double, ptr %10, align 8, !tbaa !38
  %12 = getelementptr inbounds [4 x [3 x double]], ptr %1, i64 0, i64 3, i64 2
  %13 = load double, ptr %12, align 8, !tbaa !38
  %14 = fsub double %3, %9
  %15 = fsub double %5, %11
  %16 = fsub double %7, %13
  %17 = fmul double %15, %15
  %18 = tail call double @llvm.fmuladd.f64(double %14, double %14, double %17)
  %19 = tail call double @llvm.fmuladd.f64(double %16, double %16, double %18)
  %20 = tail call double @sqrt(double noundef %19) #11
  %21 = tail call double @llvm.fabs.f64(double %20)
  %22 = fcmp olt double %21, 0x3E7AD7F29ABCAF48
  br i1 %22, label %23, label %59

23:                                               ; preds = %2
  %24 = getelementptr inbounds [4 x [4 x [3 x double]]], ptr %1, i64 0, i64 3, i64 3
  %25 = load double, ptr %24, align 8, !tbaa !38
  %26 = getelementptr inbounds [4 x [4 x [3 x double]]], ptr %1, i64 0, i64 3, i64 3, i64 1
  %27 = load double, ptr %26, align 8, !tbaa !38
  %28 = getelementptr inbounds [4 x [4 x [3 x double]]], ptr %1, i64 0, i64 3, i64 3, i64 2
  %29 = load double, ptr %28, align 8, !tbaa !38
  %30 = fsub double %3, %25
  %31 = fsub double %5, %27
  %32 = fsub double %7, %29
  %33 = fmul double %31, %31
  %34 = tail call double @llvm.fmuladd.f64(double %30, double %30, double %33)
  %35 = tail call double @llvm.fmuladd.f64(double %32, double %32, double %34)
  %36 = tail call double @sqrt(double noundef %35) #11
  %37 = tail call double @llvm.fabs.f64(double %36)
  %38 = fcmp olt double %37, 0x3E7AD7F29ABCAF48
  br i1 %38, label %189, label %39

39:                                               ; preds = %23
  %40 = getelementptr inbounds [4 x [4 x [3 x double]]], ptr %1, i64 0, i64 3
  %41 = load double, ptr %40, align 8, !tbaa !38
  %42 = getelementptr inbounds [4 x [4 x [3 x double]]], ptr %1, i64 0, i64 3, i64 0, i64 1
  %43 = load double, ptr %42, align 8, !tbaa !38
  %44 = getelementptr inbounds [4 x [4 x [3 x double]]], ptr %1, i64 0, i64 3, i64 0, i64 2
  %45 = load double, ptr %44, align 8, !tbaa !38
  %46 = tail call double @sqrt(double noundef %35) #11
  %47 = tail call double @llvm.fabs.f64(double %46)
  %48 = fcmp olt double %47, 0x3E7AD7F29ABCAF48
  br i1 %48, label %189, label %49

49:                                               ; preds = %39
  %50 = fsub double %25, %41
  %51 = fsub double %27, %43
  %52 = fsub double %29, %45
  %53 = fmul double %51, %51
  %54 = tail call double @llvm.fmuladd.f64(double %50, double %50, double %53)
  %55 = tail call double @llvm.fmuladd.f64(double %52, double %52, double %54)
  %56 = tail call double @sqrt(double noundef %55) #11
  %57 = tail call double @llvm.fabs.f64(double %56)
  %58 = fcmp olt double %57, 0x3E7AD7F29ABCAF48
  br i1 %58, label %189, label %105

59:                                               ; preds = %2
  %60 = getelementptr inbounds [4 x [4 x [3 x double]]], ptr %1, i64 0, i64 3
  %61 = load double, ptr %60, align 8, !tbaa !38
  %62 = getelementptr inbounds [4 x [4 x [3 x double]]], ptr %1, i64 0, i64 3, i64 0, i64 1
  %63 = load double, ptr %62, align 8, !tbaa !38
  %64 = getelementptr inbounds [4 x [4 x [3 x double]]], ptr %1, i64 0, i64 3, i64 0, i64 2
  %65 = load double, ptr %64, align 8, !tbaa !38
  %66 = tail call double @sqrt(double noundef %19) #11
  %67 = tail call double @llvm.fabs.f64(double %66)
  %68 = fcmp olt double %67, 0x3E7AD7F29ABCAF48
  br i1 %68, label %69, label %95

69:                                               ; preds = %59
  %70 = getelementptr inbounds [4 x [4 x [3 x double]]], ptr %1, i64 0, i64 3, i64 3
  %71 = load double, ptr %70, align 8, !tbaa !38
  %72 = getelementptr inbounds [4 x [4 x [3 x double]]], ptr %1, i64 0, i64 3, i64 3, i64 1
  %73 = load double, ptr %72, align 8, !tbaa !38
  %74 = getelementptr inbounds [4 x [4 x [3 x double]]], ptr %1, i64 0, i64 3, i64 3, i64 2
  %75 = load double, ptr %74, align 8, !tbaa !38
  %76 = fsub double %3, %71
  %77 = fsub double %5, %73
  %78 = fsub double %7, %75
  %79 = fmul double %77, %77
  %80 = tail call double @llvm.fmuladd.f64(double %76, double %76, double %79)
  %81 = tail call double @llvm.fmuladd.f64(double %78, double %78, double %80)
  %82 = tail call double @sqrt(double noundef %81) #11
  %83 = tail call double @llvm.fabs.f64(double %82)
  %84 = fcmp olt double %83, 0x3E7AD7F29ABCAF48
  br i1 %84, label %189, label %85

85:                                               ; preds = %69
  %86 = fsub double %9, %71
  %87 = fsub double %11, %73
  %88 = fsub double %13, %75
  %89 = fmul double %87, %87
  %90 = tail call double @llvm.fmuladd.f64(double %86, double %86, double %89)
  %91 = tail call double @llvm.fmuladd.f64(double %88, double %88, double %90)
  %92 = tail call double @sqrt(double noundef %91) #11
  %93 = tail call double @llvm.fabs.f64(double %92)
  %94 = fcmp olt double %93, 0x3E7AD7F29ABCAF48
  br i1 %94, label %189, label %105

95:                                               ; preds = %59
  %96 = fsub double %9, %61
  %97 = fsub double %11, %63
  %98 = fsub double %13, %65
  %99 = fmul double %97, %97
  %100 = tail call double @llvm.fmuladd.f64(double %96, double %96, double %99)
  %101 = tail call double @llvm.fmuladd.f64(double %98, double %98, double %100)
  %102 = tail call double @sqrt(double noundef %101) #11
  %103 = tail call double @llvm.fabs.f64(double %102)
  %104 = fcmp olt double %103, 0x3E7AD7F29ABCAF48
  br i1 %104, label %189, label %105

105:                                              ; preds = %95, %85, %49
  %106 = phi double [ %45, %49 ], [ %75, %85 ], [ %65, %95 ]
  %107 = phi double [ %43, %49 ], [ %73, %85 ], [ %63, %95 ]
  %108 = phi double [ %41, %49 ], [ %71, %85 ], [ %61, %95 ]
  %109 = phi double [ %29, %49 ], [ %13, %85 ], [ %13, %95 ]
  %110 = phi double [ %27, %49 ], [ %11, %85 ], [ %11, %95 ]
  %111 = phi double [ %25, %49 ], [ %9, %85 ], [ %9, %95 ]
  %112 = fsub double %3, %111
  %113 = fsub double %5, %110
  %114 = fsub double %7, %109
  %115 = fsub double %108, %111
  %116 = fsub double %107, %110
  %117 = fsub double %106, %109
  %118 = fneg double %114
  %119 = fmul double %116, %118
  %120 = tail call double @llvm.fmuladd.f64(double %113, double %117, double %119)
  %121 = fneg double %112
  %122 = fmul double %117, %121
  %123 = tail call double @llvm.fmuladd.f64(double %114, double %115, double %122)
  %124 = fneg double %113
  %125 = fmul double %115, %124
  %126 = tail call double @llvm.fmuladd.f64(double %112, double %116, double %125)
  %127 = fmul double %123, %123
  %128 = tail call double @llvm.fmuladd.f64(double %120, double %120, double %127)
  %129 = tail call noundef double @llvm.fmuladd.f64(double %126, double %126, double %128)
  %130 = fmul double %113, %113
  %131 = tail call double @llvm.fmuladd.f64(double %112, double %112, double %130)
  %132 = tail call noundef double @llvm.fmuladd.f64(double %114, double %114, double %131)
  %133 = fmul double %116, %116
  %134 = tail call double @llvm.fmuladd.f64(double %115, double %115, double %133)
  %135 = tail call noundef double @llvm.fmuladd.f64(double %117, double %117, double %134)
  %136 = fmul double %132, 1.000000e-10
  %137 = fmul double %135, %136
  %138 = fcmp ole double %129, %137
  br i1 %138, label %139, label %141

139:                                              ; preds = %105
  %140 = fneg double %3
  br label %151

141:                                              ; preds = %105
  %142 = tail call double @sqrt(double noundef %129) #11
  %143 = fdiv double 1.000000e+00, %142
  %144 = fmul double %120, %143
  %145 = fmul double %123, %143
  %146 = fmul double %126, %143
  %147 = fmul double %5, %145
  %148 = tail call double @llvm.fmuladd.f64(double %144, double %3, double %147)
  %149 = tail call double @llvm.fmuladd.f64(double %146, double %7, double %148)
  %150 = fsub double 0.000000e+00, %149
  br label %151

151:                                              ; preds = %141, %139
  %152 = phi double [ %144, %141 ], [ 1.000000e+00, %139 ]
  %153 = phi double [ %145, %141 ], [ 0.000000e+00, %139 ]
  %154 = phi double [ %146, %141 ], [ 0.000000e+00, %139 ]
  %155 = phi double [ %150, %141 ], [ %140, %139 ]
  br i1 %138, label %189, label %156

156:                                              ; preds = %151
  %157 = fmul double %153, %153
  %158 = tail call double @llvm.fmuladd.f64(double %152, double %152, double %157)
  %159 = tail call double @llvm.fmuladd.f64(double %154, double %154, double %158)
  br label %160

160:                                              ; preds = %156, %186
  %161 = phi i64 [ 0, %156 ], [ %187, %186 ]
  %162 = phi double [ 0.000000e+00, %156 ], [ %183, %186 ]
  br label %163

163:                                              ; preds = %160, %163
  %164 = phi i64 [ 0, %160 ], [ %184, %163 ]
  %165 = phi double [ %162, %160 ], [ %183, %163 ]
  %166 = getelementptr inbounds [4 x [4 x [3 x double]]], ptr %1, i64 0, i64 %161, i64 %164
  %167 = load double, ptr %166, align 8, !tbaa !38
  %168 = getelementptr inbounds double, ptr %166, i64 1
  %169 = load double, ptr %168, align 8, !tbaa !38
  %170 = fmul double %153, %169
  %171 = tail call double @llvm.fmuladd.f64(double %167, double %152, double %170)
  %172 = getelementptr inbounds double, ptr %166, i64 2
  %173 = load double, ptr %172, align 8, !tbaa !38
  %174 = tail call double @llvm.fmuladd.f64(double %173, double %154, double %171)
  %175 = fadd double %155, %174
  %176 = tail call double @sqrt(double noundef %159) #11
  %177 = tail call double @llvm.fabs.f64(double %176)
  %178 = fcmp olt double %177, 0x3E7AD7F29ABCAF48
  %179 = fdiv double %175, %176
  %180 = select i1 %178, double 0.000000e+00, double %179
  %181 = tail call double @llvm.fabs.f64(double %180)
  %182 = fcmp ogt double %181, %165
  %183 = select i1 %182, double %181, double %165
  %184 = add nuw nsw i64 %164, 1
  %185 = icmp eq i64 %184, 4
  br i1 %185, label %186, label %163, !llvm.loop !72

186:                                              ; preds = %163
  %187 = add nuw nsw i64 %161, 1
  %188 = icmp eq i64 %187, 4
  br i1 %188, label %189, label %160, !llvm.loop !73

189:                                              ; preds = %186, %23, %39, %49, %69, %85, %95, %151
  %190 = phi double [ -1.000000e+00, %23 ], [ -1.000000e+00, %39 ], [ -1.000000e+00, %49 ], [ -1.000000e+00, %69 ], [ -1.000000e+00, %85 ], [ -1.000000e+00, %95 ], [ -1.000000e+00, %151 ], [ %183, %186 ]
  %191 = fcmp olt double %190, 0.000000e+00
  br i1 %191, label %197, label %192

192:                                              ; preds = %189
  %193 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %0, i64 0, i32 21
  %194 = load double, ptr %193, align 8, !tbaa !68
  %195 = fcmp olt double %190, %194
  %196 = zext i1 %195 to i32
  br label %197

197:                                              ; preds = %192, %189
  %198 = phi i32 [ 0, %189 ], [ %196, %192 ]
  ret i32 %198
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZN3povL20bezier_split_up_downEPA4_A4_A3_dS3_S3_(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #3 {
  %4 = alloca [4 x [3 x double]], align 16
  %5 = alloca [4 x [3 x double]], align 16
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %5) #11
  %6 = getelementptr inbounds double, ptr %4, i64 1
  %7 = getelementptr inbounds double, ptr %4, i64 2
  %8 = getelementptr inbounds [4 x [3 x double]], ptr %4, i64 0, i64 1
  %9 = getelementptr inbounds [4 x [3 x double]], ptr %4, i64 0, i64 1, i64 1
  %10 = getelementptr inbounds [4 x [3 x double]], ptr %4, i64 0, i64 1, i64 2
  %11 = getelementptr inbounds [4 x [3 x double]], ptr %4, i64 0, i64 2
  %12 = getelementptr inbounds [4 x [3 x double]], ptr %4, i64 0, i64 2, i64 1
  %13 = getelementptr inbounds [4 x [3 x double]], ptr %4, i64 0, i64 2, i64 2
  %14 = getelementptr inbounds [4 x [3 x double]], ptr %5, i64 0, i64 2
  %15 = getelementptr inbounds [4 x [3 x double]], ptr %5, i64 0, i64 2, i64 1
  %16 = getelementptr inbounds [4 x [3 x double]], ptr %5, i64 0, i64 2, i64 2
  %17 = getelementptr inbounds [4 x [3 x double]], ptr %5, i64 0, i64 1
  %18 = getelementptr inbounds [4 x [3 x double]], ptr %5, i64 0, i64 1, i64 1
  %19 = getelementptr inbounds [4 x [3 x double]], ptr %5, i64 0, i64 1, i64 2
  %20 = getelementptr inbounds [4 x [3 x double]], ptr %4, i64 0, i64 3
  %21 = getelementptr inbounds [4 x [3 x double]], ptr %4, i64 0, i64 3, i64 1
  %22 = getelementptr inbounds [4 x [3 x double]], ptr %4, i64 0, i64 3, i64 2
  %23 = getelementptr inbounds double, ptr %5, i64 1
  %24 = getelementptr inbounds double, ptr %5, i64 2
  %25 = getelementptr inbounds [4 x [3 x double]], ptr %5, i64 0, i64 3
  %26 = getelementptr inbounds [4 x [3 x double]], ptr %5, i64 0, i64 3, i64 1
  %27 = getelementptr inbounds [4 x [3 x double]], ptr %5, i64 0, i64 3, i64 2
  br label %28

28:                                               ; preds = %3, %112
  %29 = phi i64 [ 0, %3 ], [ %113, %112 ]
  %30 = getelementptr inbounds [4 x [4 x [3 x double]]], ptr %0, i64 0, i64 %29
  %31 = load double, ptr %30, align 8, !tbaa !38
  store double %31, ptr %4, align 16, !tbaa !38
  %32 = getelementptr inbounds double, ptr %30, i64 1
  %33 = load double, ptr %32, align 8, !tbaa !38
  store double %33, ptr %6, align 8, !tbaa !38
  %34 = getelementptr inbounds double, ptr %30, i64 2
  %35 = load double, ptr %34, align 8, !tbaa !38
  store double %35, ptr %7, align 16, !tbaa !38
  %36 = getelementptr inbounds [4 x [4 x [3 x double]]], ptr %0, i64 0, i64 %29, i64 1
  %37 = load double, ptr %36, align 8, !tbaa !38
  %38 = fadd double %31, %37
  %39 = fmul double %38, 5.000000e-01
  store double %39, ptr %8, align 8, !tbaa !38
  %40 = getelementptr inbounds double, ptr %36, i64 1
  %41 = load double, ptr %40, align 8, !tbaa !38
  %42 = fadd double %33, %41
  %43 = fmul double %42, 5.000000e-01
  store double %43, ptr %9, align 16, !tbaa !38
  %44 = getelementptr inbounds double, ptr %36, i64 2
  %45 = load double, ptr %44, align 8, !tbaa !38
  %46 = fadd double %35, %45
  %47 = fmul double %46, 5.000000e-01
  store double %47, ptr %10, align 8, !tbaa !38
  %48 = getelementptr inbounds [4 x [4 x [3 x double]]], ptr %0, i64 0, i64 %29, i64 2
  %49 = load double, ptr %48, align 8, !tbaa !38
  %50 = fadd double %37, %49
  %51 = fmul double %50, 5.000000e-01
  %52 = getelementptr inbounds double, ptr %48, i64 1
  %53 = load double, ptr %52, align 8, !tbaa !38
  %54 = fadd double %41, %53
  %55 = fmul double %54, 5.000000e-01
  %56 = getelementptr inbounds double, ptr %48, i64 2
  %57 = load double, ptr %56, align 8, !tbaa !38
  %58 = fadd double %45, %57
  %59 = fmul double %58, 5.000000e-01
  %60 = fadd double %39, %51
  %61 = fmul double %60, 5.000000e-01
  store double %61, ptr %11, align 16, !tbaa !38
  %62 = fadd double %43, %55
  %63 = fmul double %62, 5.000000e-01
  store double %63, ptr %12, align 8, !tbaa !38
  %64 = fadd double %47, %59
  %65 = fmul double %64, 5.000000e-01
  store double %65, ptr %13, align 16, !tbaa !38
  %66 = getelementptr inbounds [4 x [4 x [3 x double]]], ptr %0, i64 0, i64 %29, i64 3
  %67 = load double, ptr %66, align 8, !tbaa !38
  %68 = fadd double %49, %67
  %69 = fmul double %68, 5.000000e-01
  store double %69, ptr %14, align 16, !tbaa !38
  %70 = getelementptr inbounds double, ptr %66, i64 1
  %71 = load double, ptr %70, align 8, !tbaa !38
  %72 = fadd double %53, %71
  %73 = fmul double %72, 5.000000e-01
  store double %73, ptr %15, align 8, !tbaa !38
  %74 = getelementptr inbounds double, ptr %66, i64 2
  %75 = load double, ptr %74, align 8, !tbaa !38
  %76 = fadd double %57, %75
  %77 = fmul double %76, 5.000000e-01
  store double %77, ptr %16, align 16, !tbaa !38
  %78 = fadd double %51, %69
  %79 = fmul double %78, 5.000000e-01
  store double %79, ptr %17, align 8, !tbaa !38
  %80 = fadd double %55, %73
  %81 = fmul double %80, 5.000000e-01
  store double %81, ptr %18, align 16, !tbaa !38
  %82 = fadd double %59, %77
  %83 = fmul double %82, 5.000000e-01
  store double %83, ptr %19, align 8, !tbaa !38
  %84 = fadd double %61, %79
  %85 = fmul double %84, 5.000000e-01
  store double %85, ptr %20, align 8, !tbaa !38
  %86 = fadd double %63, %81
  %87 = fmul double %86, 5.000000e-01
  store double %87, ptr %21, align 16, !tbaa !38
  %88 = fadd double %65, %83
  %89 = fmul double %88, 5.000000e-01
  store double %89, ptr %22, align 8, !tbaa !38
  store double %85, ptr %5, align 16, !tbaa !38
  store double %87, ptr %23, align 8, !tbaa !38
  store double %89, ptr %24, align 16, !tbaa !38
  store double %67, ptr %25, align 8, !tbaa !38
  store double %71, ptr %26, align 16, !tbaa !38
  store double %75, ptr %27, align 8, !tbaa !38
  br label %90

90:                                               ; preds = %28, %90
  %91 = phi i64 [ 0, %28 ], [ %110, %90 ]
  %92 = getelementptr inbounds [4 x [4 x [3 x double]]], ptr %1, i64 0, i64 %29, i64 %91
  %93 = getelementptr inbounds [4 x [3 x double]], ptr %4, i64 0, i64 %91
  %94 = load double, ptr %93, align 8, !tbaa !38
  store double %94, ptr %92, align 8, !tbaa !38
  %95 = getelementptr inbounds double, ptr %93, i64 1
  %96 = load double, ptr %95, align 8, !tbaa !38
  %97 = getelementptr inbounds double, ptr %92, i64 1
  store double %96, ptr %97, align 8, !tbaa !38
  %98 = getelementptr inbounds double, ptr %93, i64 2
  %99 = load double, ptr %98, align 8, !tbaa !38
  %100 = getelementptr inbounds double, ptr %92, i64 2
  store double %99, ptr %100, align 8, !tbaa !38
  %101 = getelementptr inbounds [4 x [4 x [3 x double]]], ptr %2, i64 0, i64 %29, i64 %91
  %102 = getelementptr inbounds [4 x [3 x double]], ptr %5, i64 0, i64 %91
  %103 = load double, ptr %102, align 8, !tbaa !38
  store double %103, ptr %101, align 8, !tbaa !38
  %104 = getelementptr inbounds double, ptr %102, i64 1
  %105 = load double, ptr %104, align 8, !tbaa !38
  %106 = getelementptr inbounds double, ptr %101, i64 1
  store double %105, ptr %106, align 8, !tbaa !38
  %107 = getelementptr inbounds double, ptr %102, i64 2
  %108 = load double, ptr %107, align 8, !tbaa !38
  %109 = getelementptr inbounds double, ptr %101, i64 2
  store double %108, ptr %109, align 8, !tbaa !38
  %110 = add nuw nsw i64 %91, 1
  %111 = icmp eq i64 %110, 4
  br i1 %111, label %112, label %90, !llvm.loop !74

112:                                              ; preds = %90
  %113 = add nuw nsw i64 %29, 1
  %114 = icmp eq i64 %113, 4
  br i1 %114, label %115, label %28, !llvm.loop !75

115:                                              ; preds = %112
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %4) #11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZN3povL23bezier_split_left_rightEPA4_A4_A3_dS3_S3_(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #3 {
  %4 = alloca [4 x [3 x double]], align 16
  %5 = alloca [4 x [3 x double]], align 16
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %5) #11
  %6 = getelementptr inbounds double, ptr %4, i64 1
  %7 = getelementptr inbounds double, ptr %4, i64 2
  %8 = getelementptr inbounds [4 x [3 x double]], ptr %4, i64 0, i64 1
  %9 = getelementptr inbounds [4 x [3 x double]], ptr %4, i64 0, i64 1, i64 1
  %10 = getelementptr inbounds [4 x [3 x double]], ptr %4, i64 0, i64 1, i64 2
  %11 = getelementptr inbounds [4 x [3 x double]], ptr %4, i64 0, i64 2
  %12 = getelementptr inbounds [4 x [3 x double]], ptr %4, i64 0, i64 2, i64 1
  %13 = getelementptr inbounds [4 x [3 x double]], ptr %4, i64 0, i64 2, i64 2
  %14 = getelementptr inbounds [4 x [3 x double]], ptr %5, i64 0, i64 2
  %15 = getelementptr inbounds [4 x [3 x double]], ptr %5, i64 0, i64 2, i64 1
  %16 = getelementptr inbounds [4 x [3 x double]], ptr %5, i64 0, i64 2, i64 2
  %17 = getelementptr inbounds [4 x [3 x double]], ptr %5, i64 0, i64 1
  %18 = getelementptr inbounds [4 x [3 x double]], ptr %5, i64 0, i64 1, i64 1
  %19 = getelementptr inbounds [4 x [3 x double]], ptr %5, i64 0, i64 1, i64 2
  %20 = getelementptr inbounds [4 x [3 x double]], ptr %4, i64 0, i64 3
  %21 = getelementptr inbounds [4 x [3 x double]], ptr %4, i64 0, i64 3, i64 1
  %22 = getelementptr inbounds [4 x [3 x double]], ptr %4, i64 0, i64 3, i64 2
  %23 = getelementptr inbounds double, ptr %5, i64 1
  %24 = getelementptr inbounds double, ptr %5, i64 2
  %25 = getelementptr inbounds [4 x [3 x double]], ptr %5, i64 0, i64 3
  %26 = getelementptr inbounds [4 x [3 x double]], ptr %5, i64 0, i64 3, i64 1
  %27 = getelementptr inbounds [4 x [3 x double]], ptr %5, i64 0, i64 3, i64 2
  br label %28

28:                                               ; preds = %3, %112
  %29 = phi i64 [ 0, %3 ], [ %113, %112 ]
  %30 = getelementptr inbounds [4 x [3 x double]], ptr %0, i64 0, i64 %29
  %31 = load double, ptr %30, align 8, !tbaa !38
  store double %31, ptr %4, align 16, !tbaa !38
  %32 = getelementptr inbounds double, ptr %30, i64 1
  %33 = load double, ptr %32, align 8, !tbaa !38
  store double %33, ptr %6, align 8, !tbaa !38
  %34 = getelementptr inbounds double, ptr %30, i64 2
  %35 = load double, ptr %34, align 8, !tbaa !38
  store double %35, ptr %7, align 16, !tbaa !38
  %36 = getelementptr inbounds [4 x [4 x [3 x double]]], ptr %0, i64 0, i64 1, i64 %29
  %37 = load double, ptr %36, align 8, !tbaa !38
  %38 = fadd double %31, %37
  %39 = fmul double %38, 5.000000e-01
  store double %39, ptr %8, align 8, !tbaa !38
  %40 = getelementptr inbounds double, ptr %36, i64 1
  %41 = load double, ptr %40, align 8, !tbaa !38
  %42 = fadd double %33, %41
  %43 = fmul double %42, 5.000000e-01
  store double %43, ptr %9, align 16, !tbaa !38
  %44 = getelementptr inbounds double, ptr %36, i64 2
  %45 = load double, ptr %44, align 8, !tbaa !38
  %46 = fadd double %35, %45
  %47 = fmul double %46, 5.000000e-01
  store double %47, ptr %10, align 8, !tbaa !38
  %48 = getelementptr inbounds [4 x [4 x [3 x double]]], ptr %0, i64 0, i64 2, i64 %29
  %49 = load double, ptr %48, align 8, !tbaa !38
  %50 = fadd double %37, %49
  %51 = fmul double %50, 5.000000e-01
  %52 = getelementptr inbounds double, ptr %48, i64 1
  %53 = load double, ptr %52, align 8, !tbaa !38
  %54 = fadd double %41, %53
  %55 = fmul double %54, 5.000000e-01
  %56 = getelementptr inbounds double, ptr %48, i64 2
  %57 = load double, ptr %56, align 8, !tbaa !38
  %58 = fadd double %45, %57
  %59 = fmul double %58, 5.000000e-01
  %60 = fadd double %39, %51
  %61 = fmul double %60, 5.000000e-01
  store double %61, ptr %11, align 16, !tbaa !38
  %62 = fadd double %43, %55
  %63 = fmul double %62, 5.000000e-01
  store double %63, ptr %12, align 8, !tbaa !38
  %64 = fadd double %47, %59
  %65 = fmul double %64, 5.000000e-01
  store double %65, ptr %13, align 16, !tbaa !38
  %66 = getelementptr inbounds [4 x [4 x [3 x double]]], ptr %0, i64 0, i64 3, i64 %29
  %67 = load double, ptr %66, align 8, !tbaa !38
  %68 = fadd double %49, %67
  %69 = fmul double %68, 5.000000e-01
  store double %69, ptr %14, align 16, !tbaa !38
  %70 = getelementptr inbounds double, ptr %66, i64 1
  %71 = load double, ptr %70, align 8, !tbaa !38
  %72 = fadd double %53, %71
  %73 = fmul double %72, 5.000000e-01
  store double %73, ptr %15, align 8, !tbaa !38
  %74 = getelementptr inbounds double, ptr %66, i64 2
  %75 = load double, ptr %74, align 8, !tbaa !38
  %76 = fadd double %57, %75
  %77 = fmul double %76, 5.000000e-01
  store double %77, ptr %16, align 16, !tbaa !38
  %78 = fadd double %51, %69
  %79 = fmul double %78, 5.000000e-01
  store double %79, ptr %17, align 8, !tbaa !38
  %80 = fadd double %55, %73
  %81 = fmul double %80, 5.000000e-01
  store double %81, ptr %18, align 16, !tbaa !38
  %82 = fadd double %59, %77
  %83 = fmul double %82, 5.000000e-01
  store double %83, ptr %19, align 8, !tbaa !38
  %84 = fadd double %61, %79
  %85 = fmul double %84, 5.000000e-01
  store double %85, ptr %20, align 8, !tbaa !38
  %86 = fadd double %63, %81
  %87 = fmul double %86, 5.000000e-01
  store double %87, ptr %21, align 16, !tbaa !38
  %88 = fadd double %65, %83
  %89 = fmul double %88, 5.000000e-01
  store double %89, ptr %22, align 8, !tbaa !38
  store double %85, ptr %5, align 16, !tbaa !38
  store double %87, ptr %23, align 8, !tbaa !38
  store double %89, ptr %24, align 16, !tbaa !38
  store double %67, ptr %25, align 8, !tbaa !38
  store double %71, ptr %26, align 16, !tbaa !38
  store double %75, ptr %27, align 8, !tbaa !38
  br label %90

90:                                               ; preds = %28, %90
  %91 = phi i64 [ 0, %28 ], [ %110, %90 ]
  %92 = getelementptr inbounds [4 x [4 x [3 x double]]], ptr %1, i64 0, i64 %91, i64 %29
  %93 = getelementptr inbounds [4 x [3 x double]], ptr %4, i64 0, i64 %91
  %94 = load double, ptr %93, align 8, !tbaa !38
  store double %94, ptr %92, align 8, !tbaa !38
  %95 = getelementptr inbounds double, ptr %93, i64 1
  %96 = load double, ptr %95, align 8, !tbaa !38
  %97 = getelementptr inbounds double, ptr %92, i64 1
  store double %96, ptr %97, align 8, !tbaa !38
  %98 = getelementptr inbounds double, ptr %93, i64 2
  %99 = load double, ptr %98, align 8, !tbaa !38
  %100 = getelementptr inbounds double, ptr %92, i64 2
  store double %99, ptr %100, align 8, !tbaa !38
  %101 = getelementptr inbounds [4 x [4 x [3 x double]]], ptr %2, i64 0, i64 %91, i64 %29
  %102 = getelementptr inbounds [4 x [3 x double]], ptr %5, i64 0, i64 %91
  %103 = load double, ptr %102, align 8, !tbaa !38
  store double %103, ptr %101, align 8, !tbaa !38
  %104 = getelementptr inbounds double, ptr %102, i64 1
  %105 = load double, ptr %104, align 8, !tbaa !38
  %106 = getelementptr inbounds double, ptr %101, i64 1
  store double %105, ptr %106, align 8, !tbaa !38
  %107 = getelementptr inbounds double, ptr %102, i64 2
  %108 = load double, ptr %107, align 8, !tbaa !38
  %109 = getelementptr inbounds double, ptr %101, i64 2
  store double %108, ptr %109, align 8, !tbaa !38
  %110 = add nuw nsw i64 %91, 1
  %111 = icmp eq i64 %110, 4
  br i1 %111, label %112, label %90, !llvm.loop !76

112:                                              ; preds = %90
  %113 = add nuw nsw i64 %29, 1
  %114 = icmp eq i64 %113, 4
  br i1 %114, label %115, label %28, !llvm.loop !77

115:                                              ; preds = %112
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %4) #11
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #6

declare void @_ZN3pov8pov_freeEPvPKci(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZN3povL31All_Bicubic_Patch_IntersectionsEPNS_13Object_StructEPNS_10Ray_StructEPNS_13istack_structE(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = load i64, ptr getelementptr inbounds ([123 x i64], ptr @_ZN3pov5statsE, i64 0, i64 10), align 16, !tbaa !78
  %5 = add nsw i64 %4, 1
  store i64 %5, ptr getelementptr inbounds ([123 x i64], ptr @_ZN3pov5statsE, i64 0, i64 10), align 16, !tbaa !78
  %6 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %0, i64 0, i32 14
  %7 = load i32, ptr %6, align 8, !tbaa !46
  switch i32 %7, label %15 [
    i32 0, label %8
    i32 1, label %11
  ]

8:                                                ; preds = %3
  %9 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %0, i64 0, i32 17
  %10 = tail call fastcc noundef i32 @_ZN3povL17bezier_subdividerEPNS_10Ray_StructEPNS_20Bicubic_Patch_StructEPA4_A4_A3_dddddiPNS_13istack_structE(ptr noundef %1, ptr noundef %0, ptr noundef nonnull %9, double noundef 0.000000e+00, double noundef 1.000000e+00, double noundef 0.000000e+00, double noundef 1.000000e+00, i32 noundef 0, ptr noundef %2)
  br label %17

11:                                               ; preds = %3
  %12 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %0, i64 0, i32 23
  %13 = load ptr, ptr %12, align 8, !tbaa !51
  %14 = tail call fastcc noundef i32 @_ZN3povL18bezier_tree_walkerEPNS_10Ray_StructEPNS_20Bicubic_Patch_StructEPNS_18Bezier_Node_StructEPNS_13istack_structE(ptr noundef %1, ptr noundef %0, ptr noundef %13, ptr noundef %2)
  br label %17

15:                                               ; preds = %3
  %16 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.5)
  br label %17

17:                                               ; preds = %15, %11, %8
  %18 = phi i32 [ 0, %15 ], [ %14, %11 ], [ %10, %8 ]
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i64, ptr getelementptr inbounds ([123 x i64], ptr @_ZN3pov5statsE, i64 0, i64 11), align 8, !tbaa !78
  %22 = add nsw i64 %21, 1
  store i64 %22, ptr getelementptr inbounds ([123 x i64], ptr @_ZN3pov5statsE, i64 0, i64 11), align 8, !tbaa !78
  br label %23

23:                                               ; preds = %20, %17
  %24 = phi i32 [ 1, %20 ], [ 0, %17 ]
  ret i32 %24
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @_ZN3povL20Inside_Bicubic_PatchEPdPNS_13Object_StructE(ptr nocapture readnone %0, ptr nocapture readnone %1) #7 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @_ZN3povL20Bicubic_Patch_NormalEPdPNS_13Object_StructEPNS_10istk_entryE(ptr nocapture noundef writeonly %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #8 {
  %4 = getelementptr inbounds %"struct.pov::istk_entry", ptr %2, i64 0, i32 2
  %5 = load double, ptr %4, align 8, !tbaa !38
  store double %5, ptr %0, align 8, !tbaa !38
  %6 = getelementptr inbounds %"struct.pov::istk_entry", ptr %2, i64 0, i32 2, i64 1
  %7 = load double, ptr %6, align 8, !tbaa !38
  %8 = getelementptr inbounds double, ptr %0, i64 1
  store double %7, ptr %8, align 8, !tbaa !38
  %9 = getelementptr inbounds %"struct.pov::istk_entry", ptr %2, i64 0, i32 2, i64 2
  %10 = load double, ptr %9, align 8, !tbaa !38
  %11 = getelementptr inbounds double, ptr %0, i64 2
  store double %10, ptr %11, align 8, !tbaa !38
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @_ZN3povL21Bicubic_Patch_UVCoordEPdPNS_13Object_StructEPNS_10istk_entryE(ptr nocapture noundef writeonly %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #8 {
  %4 = getelementptr inbounds %"struct.pov::istk_entry", ptr %2, i64 0, i32 4
  %5 = load double, ptr %4, align 8, !tbaa !38
  store double %5, ptr %0, align 8, !tbaa !38
  %6 = getelementptr inbounds %"struct.pov::istk_entry", ptr %2, i64 0, i32 4, i64 1
  %7 = load double, ptr %6, align 8, !tbaa !38
  %8 = getelementptr inbounds double, ptr %0, i64 1
  store double %7, ptr %8, align 8, !tbaa !38
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef ptr @_ZN3povL18Copy_Bicubic_PatchEPNS_13Object_StructE(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef 648, ptr noundef nonnull @.str, i32 noundef 2079, ptr noundef nonnull @.str.1)
  %3 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %2, i64 0, i32 1
  store i32 1, ptr %3, align 8, !tbaa !66
  store ptr @_ZN3povL21Bicubic_Patch_MethodsE, ptr %2, align 8, !tbaa !67
  %4 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %2, i64 0, i32 2
  %5 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %2, i64 0, i32 10
  %6 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %2, i64 0, i32 9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  store float -1.000000e+10, ptr %6, align 4, !tbaa !63
  %7 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %2, i64 0, i32 9, i32 0, i64 1
  store float -1.000000e+10, ptr %7, align 4, !tbaa !63
  %8 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %2, i64 0, i32 9, i32 0, i64 2
  store float -1.000000e+10, ptr %8, align 4, !tbaa !63
  %9 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %2, i64 0, i32 9, i32 1
  store float 2.000000e+10, ptr %9, align 4, !tbaa !63
  %10 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %2, i64 0, i32 9, i32 1, i64 1
  store float 2.000000e+10, ptr %10, align 4, !tbaa !63
  %11 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %2, i64 0, i32 9, i32 1, i64 2
  store float 2.000000e+10, ptr %11, align 4, !tbaa !63
  %12 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %2, i64 0, i32 14
  store i32 -1, ptr %12, align 8, !tbaa !46
  %13 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %2, i64 0, i32 15
  store i32 0, ptr %13, align 4, !tbaa !64
  %14 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %2, i64 0, i32 16
  store i32 0, ptr %14, align 8, !tbaa !65
  %15 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %2, i64 0, i32 21
  store double 0.000000e+00, ptr %15, align 8, !tbaa !68
  %16 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %2, i64 0, i32 22
  store double 1.000000e-02, ptr %16, align 8, !tbaa !69
  %17 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %2, i64 0, i32 23
  %18 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %2, i64 0, i32 18
  %19 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %2, i64 0, i32 18, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %18, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %17, i8 0, i64 16, i1 false)
  store double 1.000000e+00, ptr %19, align 8, !tbaa !38
  %20 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %2, i64 0, i32 18, i64 1, i64 1
  store double 0.000000e+00, ptr %20, align 8, !tbaa !38
  %21 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %2, i64 0, i32 18, i64 2
  store double 1.000000e+00, ptr %21, align 8, !tbaa !38
  %22 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %2, i64 0, i32 18, i64 2, i64 1
  store double 1.000000e+00, ptr %22, align 8, !tbaa !38
  %23 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %2, i64 0, i32 18, i64 3
  store double 0.000000e+00, ptr %23, align 8, !tbaa !38
  %24 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %2, i64 0, i32 18, i64 3, i64 1
  store double 1.000000e+00, ptr %24, align 8, !tbaa !38
  %25 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %0, i64 0, i32 12
  %26 = load float, ptr %25, align 8, !tbaa !80
  %27 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %2, i64 0, i32 12
  store float %26, ptr %27, align 8, !tbaa !82
  %28 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %0, i64 0, i32 14
  %29 = load i32, ptr %28, align 8, !tbaa !46
  store i32 %29, ptr %12, align 8, !tbaa !46
  %30 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %0, i64 0, i32 15
  %31 = load i32, ptr %30, align 4, !tbaa !64
  store i32 %31, ptr %13, align 4, !tbaa !64
  %32 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %0, i64 0, i32 16
  %33 = load i32, ptr %32, align 8, !tbaa !65
  store i32 %33, ptr %14, align 8, !tbaa !65
  %34 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %0, i64 0, i32 24
  %35 = load ptr, ptr %34, align 8, !tbaa !83
  %36 = icmp eq ptr %35, null
  br i1 %36, label %41, label %37

37:                                               ; preds = %1
  %38 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef 128, ptr noundef nonnull @.str, i32 noundef 2159, ptr noundef nonnull @.str.1)
  %39 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %2, i64 0, i32 24
  store ptr %38, ptr %39, align 8, !tbaa !83
  %40 = load ptr, ptr %34, align 8, !tbaa !83
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %38, ptr noundef nonnull align 8 dereferenceable(128) %40, i64 128, i1 false)
  br label %41

41:                                               ; preds = %37, %1
  br label %42

42:                                               ; preds = %41, %57
  %43 = phi i64 [ %58, %57 ], [ 0, %41 ]
  br label %44

44:                                               ; preds = %42, %44
  %45 = phi i64 [ 0, %42 ], [ %55, %44 ]
  %46 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %2, i64 0, i32 17, i64 %43, i64 %45
  %47 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %0, i64 0, i32 17, i64 %43, i64 %45
  %48 = load double, ptr %47, align 8, !tbaa !38
  store double %48, ptr %46, align 8, !tbaa !38
  %49 = getelementptr inbounds double, ptr %47, i64 1
  %50 = load double, ptr %49, align 8, !tbaa !38
  %51 = getelementptr inbounds double, ptr %46, i64 1
  store double %50, ptr %51, align 8, !tbaa !38
  %52 = getelementptr inbounds double, ptr %47, i64 2
  %53 = load double, ptr %52, align 8, !tbaa !38
  %54 = getelementptr inbounds double, ptr %46, i64 2
  store double %53, ptr %54, align 8, !tbaa !38
  %55 = add nuw nsw i64 %45, 1
  %56 = icmp eq i64 %55, 4
  br i1 %56, label %57, label %44, !llvm.loop !84

57:                                               ; preds = %44
  %58 = add nuw nsw i64 %43, 1
  %59 = icmp eq i64 %58, 4
  br i1 %59, label %60, label %42, !llvm.loop !85

60:                                               ; preds = %57
  %61 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %0, i64 0, i32 21
  %62 = load double, ptr %61, align 8, !tbaa !68
  store double %62, ptr %15, align 8, !tbaa !68
  tail call void @_ZN3pov23Precompute_Patch_ValuesEPNS_20Bicubic_Patch_StructE(ptr noundef %2)
  br label %63

63:                                               ; preds = %60, %72
  %64 = phi i64 [ 0, %60 ], [ %73, %72 ]
  br label %65

65:                                               ; preds = %63, %65
  %66 = phi i64 [ 0, %63 ], [ %70, %65 ]
  %67 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %0, i64 0, i32 18, i64 %64, i64 %66
  %68 = load double, ptr %67, align 8, !tbaa !38
  %69 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %2, i64 0, i32 18, i64 %64, i64 %66
  store double %68, ptr %69, align 8, !tbaa !38
  %70 = add nuw nsw i64 %66, 1
  %71 = icmp eq i64 %70, 3
  br i1 %71, label %72, label %65, !llvm.loop !86

72:                                               ; preds = %65
  %73 = add nuw nsw i64 %64, 1
  %74 = icmp eq i64 %73, 4
  br i1 %74, label %75, label %63, !llvm.loop !87

75:                                               ; preds = %72
  ret ptr %2
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN3povL23Translate_Bicubic_PatchEPNS_13Object_StructEPdPNS_16Transform_StructE(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 {
  %4 = getelementptr inbounds double, ptr %1, i64 1
  %5 = getelementptr inbounds double, ptr %1, i64 2
  br label %6

6:                                                ; preds = %3, %24
  %7 = phi i64 [ 0, %3 ], [ %25, %24 ]
  br label %8

8:                                                ; preds = %6, %8
  %9 = phi i64 [ 0, %6 ], [ %22, %8 ]
  %10 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %0, i64 0, i32 17, i64 %7, i64 %9
  %11 = load double, ptr %10, align 8, !tbaa !38
  %12 = load double, ptr %1, align 8, !tbaa !38
  %13 = fadd double %11, %12
  store double %13, ptr %10, align 8, !tbaa !38
  %14 = getelementptr inbounds double, ptr %10, i64 1
  %15 = load double, ptr %14, align 8, !tbaa !38
  %16 = load double, ptr %4, align 8, !tbaa !38
  %17 = fadd double %15, %16
  store double %17, ptr %14, align 8, !tbaa !38
  %18 = getelementptr inbounds double, ptr %10, i64 2
  %19 = load double, ptr %18, align 8, !tbaa !38
  %20 = load double, ptr %5, align 8, !tbaa !38
  %21 = fadd double %19, %20
  store double %21, ptr %18, align 8, !tbaa !38
  %22 = add nuw nsw i64 %9, 1
  %23 = icmp eq i64 %22, 4
  br i1 %23, label %24, label %8, !llvm.loop !88

24:                                               ; preds = %8
  %25 = add nuw nsw i64 %7, 1
  %26 = icmp eq i64 %25, 4
  br i1 %26, label %27, label %6, !llvm.loop !89

27:                                               ; preds = %24
  tail call void @_ZN3pov23Precompute_Patch_ValuesEPNS_20Bicubic_Patch_StructE(ptr noundef %0)
  br label %28

28:                                               ; preds = %64, %27
  %29 = phi i64 [ 0, %27 ], [ %65, %64 ]
  %30 = phi double [ -2.000000e+10, %27 ], [ %61, %64 ]
  %31 = phi double [ -2.000000e+10, %27 ], [ %59, %64 ]
  %32 = phi double [ -2.000000e+10, %27 ], [ %57, %64 ]
  %33 = phi double [ 2.000000e+10, %27 ], [ %55, %64 ]
  %34 = phi double [ 2.000000e+10, %27 ], [ %51, %64 ]
  %35 = phi double [ 2.000000e+10, %27 ], [ %47, %64 ]
  br label %36

36:                                               ; preds = %36, %28
  %37 = phi i64 [ 0, %28 ], [ %62, %36 ]
  %38 = phi double [ %30, %28 ], [ %61, %36 ]
  %39 = phi double [ %31, %28 ], [ %59, %36 ]
  %40 = phi double [ %32, %28 ], [ %57, %36 ]
  %41 = phi double [ %33, %28 ], [ %55, %36 ]
  %42 = phi double [ %34, %28 ], [ %51, %36 ]
  %43 = phi double [ %35, %28 ], [ %47, %36 ]
  %44 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %0, i64 0, i32 17, i64 %29, i64 %37
  %45 = load double, ptr %44, align 8, !tbaa !38
  %46 = fcmp olt double %45, %43
  %47 = select i1 %46, double %45, double %43
  %48 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %0, i64 0, i32 17, i64 %29, i64 %37, i64 1
  %49 = load double, ptr %48, align 8, !tbaa !38
  %50 = fcmp olt double %49, %42
  %51 = select i1 %50, double %49, double %42
  %52 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %0, i64 0, i32 17, i64 %29, i64 %37, i64 2
  %53 = load double, ptr %52, align 8, !tbaa !38
  %54 = fcmp olt double %53, %41
  %55 = select i1 %54, double %53, double %41
  %56 = fcmp olt double %40, %45
  %57 = select i1 %56, double %45, double %40
  %58 = fcmp olt double %39, %49
  %59 = select i1 %58, double %49, double %39
  %60 = fcmp olt double %38, %53
  %61 = select i1 %60, double %53, double %38
  %62 = add nuw nsw i64 %37, 1
  %63 = icmp eq i64 %62, 4
  br i1 %63, label %64, label %36, !llvm.loop !70

64:                                               ; preds = %36
  %65 = add nuw nsw i64 %29, 1
  %66 = icmp eq i64 %65, 4
  br i1 %66, label %67, label %28, !llvm.loop !71

67:                                               ; preds = %64
  %68 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %0, i64 0, i32 9
  %69 = fptrunc double %47 to float
  store float %69, ptr %68, align 4, !tbaa !63
  %70 = fptrunc double %51 to float
  %71 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %0, i64 0, i32 9, i32 0, i64 1
  store float %70, ptr %71, align 4, !tbaa !63
  %72 = fptrunc double %55 to float
  %73 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %0, i64 0, i32 9, i32 0, i64 2
  store float %72, ptr %73, align 4, !tbaa !63
  %74 = fsub double %57, %47
  %75 = fptrunc double %74 to float
  %76 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %0, i64 0, i32 9, i32 1
  store float %75, ptr %76, align 4, !tbaa !63
  %77 = fsub double %59, %51
  %78 = fptrunc double %77 to float
  %79 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %0, i64 0, i32 9, i32 1, i64 1
  store float %78, ptr %79, align 4, !tbaa !63
  %80 = fsub double %61, %55
  %81 = fptrunc double %80 to float
  %82 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %0, i64 0, i32 9, i32 1, i64 2
  store float %81, ptr %82, align 4, !tbaa !63
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN3povL20Rotate_Bicubic_PatchEPNS_13Object_StructEPdPNS_16Transform_StructE(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #0 {
  br label %4

4:                                                ; preds = %11, %3
  %5 = phi i64 [ 0, %3 ], [ %12, %11 ]
  br label %6

6:                                                ; preds = %6, %4
  %7 = phi i64 [ 0, %4 ], [ %9, %6 ]
  %8 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %0, i64 0, i32 17, i64 %5, i64 %7
  tail call void @_ZN3pov11MTransPointEPdS0_PNS_16Transform_StructE(ptr noundef nonnull %8, ptr noundef nonnull %8, ptr noundef %2)
  %9 = add nuw nsw i64 %7, 1
  %10 = icmp eq i64 %9, 4
  br i1 %10, label %11, label %6, !llvm.loop !90

11:                                               ; preds = %6
  %12 = add nuw nsw i64 %5, 1
  %13 = icmp eq i64 %12, 4
  br i1 %13, label %14, label %4, !llvm.loop !91

14:                                               ; preds = %11
  tail call void @_ZN3pov23Precompute_Patch_ValuesEPNS_20Bicubic_Patch_StructE(ptr noundef %0)
  br label %15

15:                                               ; preds = %51, %14
  %16 = phi i64 [ 0, %14 ], [ %52, %51 ]
  %17 = phi double [ -2.000000e+10, %14 ], [ %48, %51 ]
  %18 = phi double [ -2.000000e+10, %14 ], [ %46, %51 ]
  %19 = phi double [ -2.000000e+10, %14 ], [ %44, %51 ]
  %20 = phi double [ 2.000000e+10, %14 ], [ %42, %51 ]
  %21 = phi double [ 2.000000e+10, %14 ], [ %38, %51 ]
  %22 = phi double [ 2.000000e+10, %14 ], [ %34, %51 ]
  br label %23

23:                                               ; preds = %23, %15
  %24 = phi i64 [ 0, %15 ], [ %49, %23 ]
  %25 = phi double [ %17, %15 ], [ %48, %23 ]
  %26 = phi double [ %18, %15 ], [ %46, %23 ]
  %27 = phi double [ %19, %15 ], [ %44, %23 ]
  %28 = phi double [ %20, %15 ], [ %42, %23 ]
  %29 = phi double [ %21, %15 ], [ %38, %23 ]
  %30 = phi double [ %22, %15 ], [ %34, %23 ]
  %31 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %0, i64 0, i32 17, i64 %16, i64 %24
  %32 = load double, ptr %31, align 8, !tbaa !38
  %33 = fcmp olt double %32, %30
  %34 = select i1 %33, double %32, double %30
  %35 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %0, i64 0, i32 17, i64 %16, i64 %24, i64 1
  %36 = load double, ptr %35, align 8, !tbaa !38
  %37 = fcmp olt double %36, %29
  %38 = select i1 %37, double %36, double %29
  %39 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %0, i64 0, i32 17, i64 %16, i64 %24, i64 2
  %40 = load double, ptr %39, align 8, !tbaa !38
  %41 = fcmp olt double %40, %28
  %42 = select i1 %41, double %40, double %28
  %43 = fcmp olt double %27, %32
  %44 = select i1 %43, double %32, double %27
  %45 = fcmp olt double %26, %36
  %46 = select i1 %45, double %36, double %26
  %47 = fcmp olt double %25, %40
  %48 = select i1 %47, double %40, double %25
  %49 = add nuw nsw i64 %24, 1
  %50 = icmp eq i64 %49, 4
  br i1 %50, label %51, label %23, !llvm.loop !70

51:                                               ; preds = %23
  %52 = add nuw nsw i64 %16, 1
  %53 = icmp eq i64 %52, 4
  br i1 %53, label %54, label %15, !llvm.loop !71

54:                                               ; preds = %51
  %55 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %0, i64 0, i32 9
  %56 = fptrunc double %34 to float
  store float %56, ptr %55, align 4, !tbaa !63
  %57 = fptrunc double %38 to float
  %58 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %0, i64 0, i32 9, i32 0, i64 1
  store float %57, ptr %58, align 4, !tbaa !63
  %59 = fptrunc double %42 to float
  %60 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %0, i64 0, i32 9, i32 0, i64 2
  store float %59, ptr %60, align 4, !tbaa !63
  %61 = fsub double %44, %34
  %62 = fptrunc double %61 to float
  %63 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %0, i64 0, i32 9, i32 1
  store float %62, ptr %63, align 4, !tbaa !63
  %64 = fsub double %46, %38
  %65 = fptrunc double %64 to float
  %66 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %0, i64 0, i32 9, i32 1, i64 1
  store float %65, ptr %66, align 4, !tbaa !63
  %67 = fsub double %48, %42
  %68 = fptrunc double %67 to float
  %69 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %0, i64 0, i32 9, i32 1, i64 2
  store float %68, ptr %69, align 4, !tbaa !63
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN3povL19Scale_Bicubic_PatchEPNS_13Object_StructEPdPNS_16Transform_StructE(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture readnone %2) #0 {
  %4 = getelementptr inbounds double, ptr %1, i64 1
  %5 = getelementptr inbounds double, ptr %1, i64 2
  br label %6

6:                                                ; preds = %3, %24
  %7 = phi i64 [ 0, %3 ], [ %25, %24 ]
  br label %8

8:                                                ; preds = %6, %8
  %9 = phi i64 [ 0, %6 ], [ %22, %8 ]
  %10 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %0, i64 0, i32 17, i64 %7, i64 %9
  %11 = load double, ptr %10, align 8, !tbaa !38
  %12 = load double, ptr %1, align 8, !tbaa !38
  %13 = fmul double %11, %12
  store double %13, ptr %10, align 8, !tbaa !38
  %14 = getelementptr inbounds double, ptr %10, i64 1
  %15 = load double, ptr %14, align 8, !tbaa !38
  %16 = load double, ptr %4, align 8, !tbaa !38
  %17 = fmul double %15, %16
  store double %17, ptr %14, align 8, !tbaa !38
  %18 = getelementptr inbounds double, ptr %10, i64 2
  %19 = load double, ptr %18, align 8, !tbaa !38
  %20 = load double, ptr %5, align 8, !tbaa !38
  %21 = fmul double %19, %20
  store double %21, ptr %18, align 8, !tbaa !38
  %22 = add nuw nsw i64 %9, 1
  %23 = icmp eq i64 %22, 4
  br i1 %23, label %24, label %8, !llvm.loop !92

24:                                               ; preds = %8
  %25 = add nuw nsw i64 %7, 1
  %26 = icmp eq i64 %25, 4
  br i1 %26, label %27, label %6, !llvm.loop !93

27:                                               ; preds = %24
  tail call void @_ZN3pov23Precompute_Patch_ValuesEPNS_20Bicubic_Patch_StructE(ptr noundef %0)
  br label %28

28:                                               ; preds = %64, %27
  %29 = phi i64 [ 0, %27 ], [ %65, %64 ]
  %30 = phi double [ -2.000000e+10, %27 ], [ %61, %64 ]
  %31 = phi double [ -2.000000e+10, %27 ], [ %59, %64 ]
  %32 = phi double [ -2.000000e+10, %27 ], [ %57, %64 ]
  %33 = phi double [ 2.000000e+10, %27 ], [ %55, %64 ]
  %34 = phi double [ 2.000000e+10, %27 ], [ %51, %64 ]
  %35 = phi double [ 2.000000e+10, %27 ], [ %47, %64 ]
  br label %36

36:                                               ; preds = %36, %28
  %37 = phi i64 [ 0, %28 ], [ %62, %36 ]
  %38 = phi double [ %30, %28 ], [ %61, %36 ]
  %39 = phi double [ %31, %28 ], [ %59, %36 ]
  %40 = phi double [ %32, %28 ], [ %57, %36 ]
  %41 = phi double [ %33, %28 ], [ %55, %36 ]
  %42 = phi double [ %34, %28 ], [ %51, %36 ]
  %43 = phi double [ %35, %28 ], [ %47, %36 ]
  %44 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %0, i64 0, i32 17, i64 %29, i64 %37
  %45 = load double, ptr %44, align 8, !tbaa !38
  %46 = fcmp olt double %45, %43
  %47 = select i1 %46, double %45, double %43
  %48 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %0, i64 0, i32 17, i64 %29, i64 %37, i64 1
  %49 = load double, ptr %48, align 8, !tbaa !38
  %50 = fcmp olt double %49, %42
  %51 = select i1 %50, double %49, double %42
  %52 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %0, i64 0, i32 17, i64 %29, i64 %37, i64 2
  %53 = load double, ptr %52, align 8, !tbaa !38
  %54 = fcmp olt double %53, %41
  %55 = select i1 %54, double %53, double %41
  %56 = fcmp olt double %40, %45
  %57 = select i1 %56, double %45, double %40
  %58 = fcmp olt double %39, %49
  %59 = select i1 %58, double %49, double %39
  %60 = fcmp olt double %38, %53
  %61 = select i1 %60, double %53, double %38
  %62 = add nuw nsw i64 %37, 1
  %63 = icmp eq i64 %62, 4
  br i1 %63, label %64, label %36, !llvm.loop !70

64:                                               ; preds = %36
  %65 = add nuw nsw i64 %29, 1
  %66 = icmp eq i64 %65, 4
  br i1 %66, label %67, label %28, !llvm.loop !71

67:                                               ; preds = %64
  %68 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %0, i64 0, i32 9
  %69 = fptrunc double %47 to float
  store float %69, ptr %68, align 4, !tbaa !63
  %70 = fptrunc double %51 to float
  %71 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %0, i64 0, i32 9, i32 0, i64 1
  store float %70, ptr %71, align 4, !tbaa !63
  %72 = fptrunc double %55 to float
  %73 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %0, i64 0, i32 9, i32 0, i64 2
  store float %72, ptr %73, align 4, !tbaa !63
  %74 = fsub double %57, %47
  %75 = fptrunc double %74 to float
  %76 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %0, i64 0, i32 9, i32 1
  store float %75, ptr %76, align 4, !tbaa !63
  %77 = fsub double %59, %51
  %78 = fptrunc double %77 to float
  %79 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %0, i64 0, i32 9, i32 1, i64 1
  store float %78, ptr %79, align 4, !tbaa !63
  %80 = fsub double %61, %55
  %81 = fptrunc double %80 to float
  %82 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %0, i64 0, i32 9, i32 1, i64 2
  store float %81, ptr %82, align 4, !tbaa !63
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN3povL23Transform_Bicubic_PatchEPNS_13Object_StructEPNS_16Transform_StructE(ptr noundef %0, ptr noundef %1) #0 {
  br label %3

3:                                                ; preds = %2, %10
  %4 = phi i64 [ 0, %2 ], [ %11, %10 ]
  br label %5

5:                                                ; preds = %3, %5
  %6 = phi i64 [ 0, %3 ], [ %8, %5 ]
  %7 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %0, i64 0, i32 17, i64 %4, i64 %6
  tail call void @_ZN3pov11MTransPointEPdS0_PNS_16Transform_StructE(ptr noundef nonnull %7, ptr noundef nonnull %7, ptr noundef %1)
  %8 = add nuw nsw i64 %6, 1
  %9 = icmp eq i64 %8, 4
  br i1 %9, label %10, label %5, !llvm.loop !90

10:                                               ; preds = %5
  %11 = add nuw nsw i64 %4, 1
  %12 = icmp eq i64 %11, 4
  br i1 %12, label %13, label %3, !llvm.loop !91

13:                                               ; preds = %10
  tail call void @_ZN3pov23Precompute_Patch_ValuesEPNS_20Bicubic_Patch_StructE(ptr noundef %0)
  tail call void @_ZN3pov26Compute_Bicubic_Patch_BBoxEPNS_20Bicubic_Patch_StructE(ptr noundef %0)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @_ZN3povL20Invert_Bicubic_PatchEPNS_13Object_StructE(ptr nocapture readnone %0) #7 {
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN3povL21Destroy_Bicubic_PatchEPNS_13Object_StructE(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %0, i64 0, i32 14
  %3 = load i32, ptr %2, align 8, !tbaa !46
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %0, i64 0, i32 23
  %7 = load ptr, ptr %6, align 8, !tbaa !51
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call fastcc void @_ZN3povL19bezier_tree_deleterEPNS_18Bezier_Node_StructE(ptr noundef nonnull %7)
  br label %10

10:                                               ; preds = %5, %9, %1
  %11 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %0, i64 0, i32 24
  %12 = load ptr, ptr %11, align 8, !tbaa !83
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef nonnull %12, ptr noundef nonnull @.str, i32 noundef 2229)
  store ptr null, ptr %11, align 8, !tbaa !83
  br label %15

15:                                               ; preds = %14, %10
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef 2230)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i32 @_ZN3povL18bezier_tree_walkerEPNS_10Ray_StructEPNS_20Bicubic_Patch_StructEPNS_18Bezier_Node_StructEPNS_13istack_structE(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca [3 x double], align 16
  %9 = alloca [3 x double], align 16
  %10 = alloca [3 x double], align 16
  %11 = alloca [3 x double], align 16
  %12 = alloca [3 x [3 x double]], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #11
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %12) #11
  %13 = getelementptr inbounds %"struct.pov::Bezier_Node_Struct", ptr %2, i64 0, i32 1
  %14 = getelementptr inbounds %"struct.pov::Bezier_Node_Struct", ptr %2, i64 0, i32 2
  %15 = load double, ptr %14, align 8, !tbaa !94
  %16 = load double, ptr %13, align 8, !tbaa !38
  %17 = load double, ptr %0, align 8, !tbaa !38
  %18 = fsub double %16, %17
  %19 = getelementptr inbounds %"struct.pov::Bezier_Node_Struct", ptr %2, i64 0, i32 1, i64 1
  %20 = load double, ptr %19, align 8, !tbaa !38
  %21 = getelementptr inbounds [3 x double], ptr %0, i64 0, i64 1
  %22 = load double, ptr %21, align 8, !tbaa !38
  %23 = fsub double %20, %22
  %24 = getelementptr inbounds %"struct.pov::Bezier_Node_Struct", ptr %2, i64 0, i32 1, i64 2
  %25 = load double, ptr %24, align 8, !tbaa !38
  %26 = getelementptr inbounds [3 x double], ptr %0, i64 0, i64 2
  %27 = load double, ptr %26, align 8, !tbaa !38
  %28 = fsub double %25, %27
  %29 = fmul double %23, %23
  %30 = tail call double @llvm.fmuladd.f64(double %18, double %18, double %29)
  %31 = tail call double @llvm.fmuladd.f64(double %28, double %28, double %30)
  %32 = fcmp olt double %31, %15
  br i1 %32, label %49, label %33

33:                                               ; preds = %4
  %34 = getelementptr inbounds %"struct.pov::Ray_Struct", ptr %0, i64 0, i32 1
  %35 = load double, ptr %34, align 8, !tbaa !38
  %36 = getelementptr inbounds %"struct.pov::Ray_Struct", ptr %0, i64 0, i32 1, i64 1
  %37 = load double, ptr %36, align 8, !tbaa !38
  %38 = fmul double %23, %37
  %39 = tail call double @llvm.fmuladd.f64(double %18, double %35, double %38)
  %40 = getelementptr inbounds %"struct.pov::Ray_Struct", ptr %0, i64 0, i32 1, i64 2
  %41 = load double, ptr %40, align 8, !tbaa !38
  %42 = tail call double @llvm.fmuladd.f64(double %28, double %41, double %39)
  %43 = fmul double %42, %42
  %44 = fcmp ogt double %43, 0.000000e+00
  br i1 %44, label %45, label %247

45:                                               ; preds = %33
  %46 = fsub double %31, %43
  %47 = fadd double %15, 1.000000e-10
  %48 = fcmp ugt double %46, %47
  br i1 %48, label %247, label %49

49:                                               ; preds = %45, %4
  %50 = load i32, ptr %2, align 8, !tbaa !52
  switch i32 %50, label %245 [
    i32 0, label %51
    i32 1, label %68
  ]

51:                                               ; preds = %49
  %52 = getelementptr inbounds %"struct.pov::Bezier_Node_Struct", ptr %2, i64 0, i32 4
  %53 = load ptr, ptr %52, align 8, !tbaa !54
  %54 = getelementptr inbounds %"struct.pov::Bezier_Node_Struct", ptr %2, i64 0, i32 3
  %55 = load i32, ptr %54, align 8, !tbaa !55
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %247

57:                                               ; preds = %51, %57
  %58 = phi i64 [ %64, %57 ], [ 0, %51 ]
  %59 = phi i32 [ %63, %57 ], [ 0, %51 ]
  %60 = getelementptr inbounds [4 x ptr], ptr %53, i64 0, i64 %58
  %61 = load ptr, ptr %60, align 8, !tbaa !56
  %62 = tail call fastcc noundef i32 @_ZN3povL18bezier_tree_walkerEPNS_10Ray_StructEPNS_20Bicubic_Patch_StructEPNS_18Bezier_Node_StructEPNS_13istack_structE(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %61, ptr noundef %3)
  %63 = add nsw i32 %62, %59
  %64 = add nuw nsw i64 %58, 1
  %65 = load i32, ptr %54, align 8, !tbaa !55
  %66 = sext i32 %65 to i64
  %67 = icmp slt i64 %64, %66
  br i1 %67, label %57, label %247, !llvm.loop !95

68:                                               ; preds = %49
  %69 = getelementptr inbounds %"struct.pov::Bezier_Node_Struct", ptr %2, i64 0, i32 4
  %70 = load ptr, ptr %69, align 8, !tbaa !54
  %71 = getelementptr inbounds %"struct.pov::Bezier_Vertices_Struct", ptr %70, i64 0, i32 1
  %72 = load double, ptr %71, align 8, !tbaa !38
  store double %72, ptr %12, align 16, !tbaa !38
  %73 = getelementptr inbounds %"struct.pov::Bezier_Vertices_Struct", ptr %70, i64 0, i32 1, i64 0, i64 1
  %74 = load double, ptr %73, align 8, !tbaa !38
  %75 = getelementptr inbounds double, ptr %12, i64 1
  store double %74, ptr %75, align 8, !tbaa !38
  %76 = getelementptr inbounds %"struct.pov::Bezier_Vertices_Struct", ptr %70, i64 0, i32 1, i64 0, i64 2
  %77 = load double, ptr %76, align 8, !tbaa !38
  %78 = getelementptr inbounds double, ptr %12, i64 2
  store double %77, ptr %78, align 16, !tbaa !38
  %79 = getelementptr inbounds [3 x [3 x double]], ptr %12, i64 0, i64 1
  %80 = getelementptr inbounds %"struct.pov::Bezier_Vertices_Struct", ptr %70, i64 0, i32 1, i64 1
  %81 = load double, ptr %80, align 8, !tbaa !38
  store double %81, ptr %79, align 8, !tbaa !38
  %82 = getelementptr inbounds %"struct.pov::Bezier_Vertices_Struct", ptr %70, i64 0, i32 1, i64 1, i64 1
  %83 = load double, ptr %82, align 8, !tbaa !38
  %84 = getelementptr inbounds [3 x [3 x double]], ptr %12, i64 0, i64 1, i64 1
  store double %83, ptr %84, align 16, !tbaa !38
  %85 = getelementptr inbounds %"struct.pov::Bezier_Vertices_Struct", ptr %70, i64 0, i32 1, i64 1, i64 2
  %86 = load double, ptr %85, align 8, !tbaa !38
  %87 = getelementptr inbounds [3 x [3 x double]], ptr %12, i64 0, i64 1, i64 2
  store double %86, ptr %87, align 8, !tbaa !38
  %88 = getelementptr inbounds [3 x [3 x double]], ptr %12, i64 0, i64 2
  %89 = getelementptr inbounds %"struct.pov::Bezier_Vertices_Struct", ptr %70, i64 0, i32 1, i64 2
  %90 = load double, ptr %89, align 8, !tbaa !38
  store double %90, ptr %88, align 16, !tbaa !38
  %91 = getelementptr inbounds %"struct.pov::Bezier_Vertices_Struct", ptr %70, i64 0, i32 1, i64 2, i64 1
  %92 = load double, ptr %91, align 8, !tbaa !38
  %93 = getelementptr inbounds [3 x [3 x double]], ptr %12, i64 0, i64 2, i64 1
  store double %92, ptr %93, align 8, !tbaa !38
  %94 = getelementptr inbounds %"struct.pov::Bezier_Vertices_Struct", ptr %70, i64 0, i32 1, i64 2, i64 2
  %95 = load double, ptr %94, align 8, !tbaa !38
  %96 = getelementptr inbounds [3 x [3 x double]], ptr %12, i64 0, i64 2, i64 2
  store double %95, ptr %96, align 16, !tbaa !38
  %97 = load float, ptr %70, align 8, !tbaa !63
  %98 = fpext float %97 to double
  store double %98, ptr %8, align 16, !tbaa !38
  %99 = getelementptr inbounds [3 x double], ptr %8, i64 0, i64 1
  store double %98, ptr %99, align 8, !tbaa !38
  %100 = getelementptr inbounds [4 x float], ptr %70, i64 0, i64 1
  %101 = load float, ptr %100, align 4, !tbaa !63
  %102 = fpext float %101 to double
  %103 = getelementptr inbounds [3 x double], ptr %8, i64 0, i64 2
  store double %102, ptr %103, align 16, !tbaa !38
  %104 = getelementptr inbounds [4 x float], ptr %70, i64 0, i64 2
  %105 = load float, ptr %104, align 8, !tbaa !63
  %106 = fpext float %105 to double
  store double %106, ptr %9, align 16, !tbaa !38
  %107 = getelementptr inbounds [4 x float], ptr %70, i64 0, i64 3
  %108 = load float, ptr %107, align 4, !tbaa !63
  %109 = fpext float %108 to double
  %110 = getelementptr inbounds [3 x double], ptr %9, i64 0, i64 1
  store double %109, ptr %110, align 8, !tbaa !38
  %111 = getelementptr inbounds [3 x double], ptr %9, i64 0, i64 2
  store double %109, ptr %111, align 16, !tbaa !38
  %112 = call fastcc noundef i32 @_ZN3povL18intersect_subpatchEPNS_20Bicubic_Patch_StructEPNS_10Ray_StructEPA3_dPdS6_S6_S6_S6_S6_S6_(ptr noundef %1, ptr noundef nonnull %0, ptr noundef nonnull %12, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %5, ptr noundef nonnull %11, ptr noundef nonnull %10, ptr noundef nonnull %6, ptr noundef nonnull %7), !range !62
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %172, label %114

114:                                              ; preds = %68
  %115 = load double, ptr %7, align 8, !tbaa !38
  %116 = load double, ptr %6, align 8, !tbaa !38
  %117 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %1, i64 0, i32 18
  %118 = load double, ptr %117, align 8, !tbaa !38
  %119 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %1, i64 0, i32 18, i64 1
  %120 = load double, ptr %119, align 8, !tbaa !38
  %121 = fsub double %120, %118
  %122 = tail call double @llvm.fmuladd.f64(double %115, double %121, double %118)
  %123 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %1, i64 0, i32 18, i64 0, i64 1
  %124 = load double, ptr %123, align 8, !tbaa !38
  %125 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %1, i64 0, i32 18, i64 1, i64 1
  %126 = load double, ptr %125, align 8, !tbaa !38
  %127 = fsub double %126, %124
  %128 = tail call double @llvm.fmuladd.f64(double %115, double %127, double %124)
  %129 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %1, i64 0, i32 18, i64 3
  %130 = load double, ptr %129, align 8, !tbaa !38
  %131 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %1, i64 0, i32 18, i64 2
  %132 = load double, ptr %131, align 8, !tbaa !38
  %133 = fsub double %132, %130
  %134 = tail call double @llvm.fmuladd.f64(double %115, double %133, double %130)
  %135 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %1, i64 0, i32 18, i64 3, i64 1
  %136 = load double, ptr %135, align 8, !tbaa !38
  %137 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %1, i64 0, i32 18, i64 2, i64 1
  %138 = load double, ptr %137, align 8, !tbaa !38
  %139 = fsub double %138, %136
  %140 = tail call double @llvm.fmuladd.f64(double %115, double %139, double %136)
  %141 = fsub double %134, %122
  %142 = tail call double @llvm.fmuladd.f64(double %116, double %141, double %122)
  %143 = fsub double %140, %128
  %144 = tail call double @llvm.fmuladd.f64(double %116, double %143, double %128)
  %145 = load double, ptr %5, align 8, !tbaa !38
  %146 = getelementptr inbounds %"struct.pov::istack_struct", ptr %3, i64 0, i32 1
  %147 = load ptr, ptr %146, align 8, !tbaa !96
  %148 = getelementptr inbounds %"struct.pov::istack_struct", ptr %3, i64 0, i32 3
  %149 = load i32, ptr %148, align 4, !tbaa !98
  %150 = zext i32 %149 to i64
  %151 = getelementptr inbounds %"struct.pov::istk_entry", ptr %147, i64 %150
  store double %145, ptr %151, align 8, !tbaa !99
  %152 = getelementptr inbounds %"struct.pov::istk_entry", ptr %147, i64 %150, i32 5
  store ptr %1, ptr %152, align 8, !tbaa !101
  %153 = getelementptr inbounds %"struct.pov::istk_entry", ptr %147, i64 %150, i32 1
  %154 = load double, ptr %11, align 16, !tbaa !38
  store double %154, ptr %153, align 8, !tbaa !38
  %155 = getelementptr inbounds double, ptr %11, i64 1
  %156 = load double, ptr %155, align 8, !tbaa !38
  %157 = getelementptr inbounds double, ptr %153, i64 1
  store double %156, ptr %157, align 8, !tbaa !38
  %158 = getelementptr inbounds double, ptr %11, i64 2
  %159 = load double, ptr %158, align 16, !tbaa !38
  %160 = getelementptr inbounds double, ptr %153, i64 2
  store double %159, ptr %160, align 8, !tbaa !38
  %161 = getelementptr inbounds %"struct.pov::istk_entry", ptr %147, i64 %150, i32 2
  %162 = load double, ptr %10, align 16, !tbaa !38
  store double %162, ptr %161, align 8, !tbaa !38
  %163 = getelementptr inbounds double, ptr %10, i64 1
  %164 = load double, ptr %163, align 8, !tbaa !38
  %165 = getelementptr inbounds double, ptr %161, i64 1
  store double %164, ptr %165, align 8, !tbaa !38
  %166 = getelementptr inbounds double, ptr %10, i64 2
  %167 = load double, ptr %166, align 16, !tbaa !38
  %168 = getelementptr inbounds double, ptr %161, i64 2
  store double %167, ptr %168, align 8, !tbaa !38
  %169 = getelementptr inbounds %"struct.pov::istk_entry", ptr %147, i64 %150, i32 4
  store double %142, ptr %169, align 8, !tbaa !38
  %170 = getelementptr inbounds double, ptr %169, i64 1
  store double %144, ptr %170, align 8, !tbaa !38
  %171 = getelementptr inbounds %"struct.pov::istk_entry", ptr %147, i64 %150, i32 18
  store ptr null, ptr %171, align 8, !tbaa !102
  tail call void @_ZN3pov8incstackEPNS_13istack_structE(ptr noundef %3)
  br label %172

172:                                              ; preds = %114, %68
  %173 = phi i32 [ 1, %114 ], [ 0, %68 ]
  store double %90, ptr %79, align 8, !tbaa !38
  store double %92, ptr %84, align 16, !tbaa !38
  store double %95, ptr %87, align 8, !tbaa !38
  %174 = getelementptr inbounds %"struct.pov::Bezier_Vertices_Struct", ptr %70, i64 0, i32 1, i64 3
  %175 = load double, ptr %174, align 8, !tbaa !38
  store double %175, ptr %88, align 16, !tbaa !38
  %176 = getelementptr inbounds %"struct.pov::Bezier_Vertices_Struct", ptr %70, i64 0, i32 1, i64 3, i64 1
  %177 = load double, ptr %176, align 8, !tbaa !38
  store double %177, ptr %93, align 8, !tbaa !38
  %178 = getelementptr inbounds %"struct.pov::Bezier_Vertices_Struct", ptr %70, i64 0, i32 1, i64 3, i64 2
  %179 = load double, ptr %178, align 8, !tbaa !38
  store double %179, ptr %96, align 16, !tbaa !38
  store double %102, ptr %99, align 8, !tbaa !38
  %180 = load float, ptr %100, align 4, !tbaa !63
  %181 = fpext float %180 to double
  store double %181, ptr %103, align 16, !tbaa !38
  store double %109, ptr %110, align 8, !tbaa !38
  %182 = load float, ptr %104, align 8, !tbaa !63
  %183 = fpext float %182 to double
  store double %183, ptr %111, align 16, !tbaa !38
  %184 = call fastcc noundef i32 @_ZN3povL18intersect_subpatchEPNS_20Bicubic_Patch_StructEPNS_10Ray_StructEPA3_dPdS6_S6_S6_S6_S6_S6_(ptr noundef %1, ptr noundef nonnull %0, ptr noundef nonnull %12, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %5, ptr noundef nonnull %11, ptr noundef nonnull %10, ptr noundef nonnull %6, ptr noundef nonnull %7), !range !62
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %247, label %186

186:                                              ; preds = %172
  %187 = load double, ptr %7, align 8, !tbaa !38
  %188 = load double, ptr %6, align 8, !tbaa !38
  %189 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %1, i64 0, i32 18
  %190 = load double, ptr %189, align 8, !tbaa !38
  %191 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %1, i64 0, i32 18, i64 1
  %192 = load double, ptr %191, align 8, !tbaa !38
  %193 = fsub double %192, %190
  %194 = tail call double @llvm.fmuladd.f64(double %187, double %193, double %190)
  %195 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %1, i64 0, i32 18, i64 0, i64 1
  %196 = load double, ptr %195, align 8, !tbaa !38
  %197 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %1, i64 0, i32 18, i64 1, i64 1
  %198 = load double, ptr %197, align 8, !tbaa !38
  %199 = fsub double %198, %196
  %200 = tail call double @llvm.fmuladd.f64(double %187, double %199, double %196)
  %201 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %1, i64 0, i32 18, i64 3
  %202 = load double, ptr %201, align 8, !tbaa !38
  %203 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %1, i64 0, i32 18, i64 2
  %204 = load double, ptr %203, align 8, !tbaa !38
  %205 = fsub double %204, %202
  %206 = tail call double @llvm.fmuladd.f64(double %187, double %205, double %202)
  %207 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %1, i64 0, i32 18, i64 3, i64 1
  %208 = load double, ptr %207, align 8, !tbaa !38
  %209 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %1, i64 0, i32 18, i64 2, i64 1
  %210 = load double, ptr %209, align 8, !tbaa !38
  %211 = fsub double %210, %208
  %212 = tail call double @llvm.fmuladd.f64(double %187, double %211, double %208)
  %213 = fsub double %206, %194
  %214 = tail call double @llvm.fmuladd.f64(double %188, double %213, double %194)
  %215 = fsub double %212, %200
  %216 = tail call double @llvm.fmuladd.f64(double %188, double %215, double %200)
  %217 = load double, ptr %5, align 8, !tbaa !38
  %218 = getelementptr inbounds %"struct.pov::istack_struct", ptr %3, i64 0, i32 1
  %219 = load ptr, ptr %218, align 8, !tbaa !96
  %220 = getelementptr inbounds %"struct.pov::istack_struct", ptr %3, i64 0, i32 3
  %221 = load i32, ptr %220, align 4, !tbaa !98
  %222 = zext i32 %221 to i64
  %223 = getelementptr inbounds %"struct.pov::istk_entry", ptr %219, i64 %222
  store double %217, ptr %223, align 8, !tbaa !99
  %224 = getelementptr inbounds %"struct.pov::istk_entry", ptr %219, i64 %222, i32 5
  store ptr %1, ptr %224, align 8, !tbaa !101
  %225 = getelementptr inbounds %"struct.pov::istk_entry", ptr %219, i64 %222, i32 1
  %226 = load double, ptr %11, align 16, !tbaa !38
  store double %226, ptr %225, align 8, !tbaa !38
  %227 = getelementptr inbounds double, ptr %11, i64 1
  %228 = load double, ptr %227, align 8, !tbaa !38
  %229 = getelementptr inbounds double, ptr %225, i64 1
  store double %228, ptr %229, align 8, !tbaa !38
  %230 = getelementptr inbounds double, ptr %11, i64 2
  %231 = load double, ptr %230, align 16, !tbaa !38
  %232 = getelementptr inbounds double, ptr %225, i64 2
  store double %231, ptr %232, align 8, !tbaa !38
  %233 = getelementptr inbounds %"struct.pov::istk_entry", ptr %219, i64 %222, i32 2
  %234 = load double, ptr %10, align 16, !tbaa !38
  store double %234, ptr %233, align 8, !tbaa !38
  %235 = getelementptr inbounds double, ptr %10, i64 1
  %236 = load double, ptr %235, align 8, !tbaa !38
  %237 = getelementptr inbounds double, ptr %233, i64 1
  store double %236, ptr %237, align 8, !tbaa !38
  %238 = getelementptr inbounds double, ptr %10, i64 2
  %239 = load double, ptr %238, align 16, !tbaa !38
  %240 = getelementptr inbounds double, ptr %233, i64 2
  store double %239, ptr %240, align 8, !tbaa !38
  %241 = getelementptr inbounds %"struct.pov::istk_entry", ptr %219, i64 %222, i32 4
  store double %214, ptr %241, align 8, !tbaa !38
  %242 = getelementptr inbounds double, ptr %241, i64 1
  store double %216, ptr %242, align 8, !tbaa !38
  %243 = getelementptr inbounds %"struct.pov::istk_entry", ptr %219, i64 %222, i32 18
  store ptr null, ptr %243, align 8, !tbaa !102
  tail call void @_ZN3pov8incstackEPNS_13istack_structE(ptr noundef %3)
  %244 = add nuw nsw i32 %173, 1
  br label %247

245:                                              ; preds = %49
  %246 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.6)
  br label %247

247:                                              ; preds = %57, %51, %33, %45, %172, %186, %245
  %248 = phi i32 [ %244, %186 ], [ %173, %172 ], [ 0, %245 ], [ 0, %45 ], [ 0, %33 ], [ 0, %51 ], [ %63, %57 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  ret i32 %248
}

declare noundef i32 @_ZN3pov5ErrorEPKcz(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i32 @_ZN3povL17bezier_subdividerEPNS_10Ray_StructEPNS_20Bicubic_Patch_StructEPA4_A4_A3_dddddiPNS_13istack_structE(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, double noundef %3, double noundef %4, double noundef %5, double noundef %6, i32 noundef %7, ptr noundef %8) unnamed_addr #0 {
  %10 = alloca [4 x [4 x [3 x double]]], align 16
  %11 = alloca [4 x [4 x [3 x double]]], align 16
  %12 = alloca [4 x [4 x [3 x double]]], align 16
  %13 = alloca [4 x [4 x [3 x double]]], align 16
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %10) #11
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %11) #11
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %12) #11
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %13) #11
  br label %14

14:                                               ; preds = %35, %9
  %15 = phi i64 [ 0, %9 ], [ %36, %35 ]
  %16 = phi double [ 0.000000e+00, %9 ], [ %32, %35 ]
  %17 = phi double [ 0.000000e+00, %9 ], [ %29, %35 ]
  %18 = phi double [ 0.000000e+00, %9 ], [ %26, %35 ]
  br label %19

19:                                               ; preds = %19, %14
  %20 = phi i64 [ 0, %14 ], [ %33, %19 ]
  %21 = phi double [ %16, %14 ], [ %32, %19 ]
  %22 = phi double [ %17, %14 ], [ %29, %19 ]
  %23 = phi double [ %18, %14 ], [ %26, %19 ]
  %24 = getelementptr inbounds [4 x [4 x [3 x double]]], ptr %2, i64 0, i64 %15, i64 %20
  %25 = load double, ptr %24, align 8, !tbaa !38
  %26 = fadd double %23, %25
  %27 = getelementptr inbounds [4 x [4 x [3 x double]]], ptr %2, i64 0, i64 %15, i64 %20, i64 1
  %28 = load double, ptr %27, align 8, !tbaa !38
  %29 = fadd double %22, %28
  %30 = getelementptr inbounds [4 x [4 x [3 x double]]], ptr %2, i64 0, i64 %15, i64 %20, i64 2
  %31 = load double, ptr %30, align 8, !tbaa !38
  %32 = fadd double %21, %31
  %33 = add nuw nsw i64 %20, 1
  %34 = icmp eq i64 %33, 4
  br i1 %34, label %35, label %19, !llvm.loop !58

35:                                               ; preds = %19
  %36 = add nuw nsw i64 %15, 1
  %37 = icmp eq i64 %36, 4
  br i1 %37, label %38, label %14, !llvm.loop !59

38:                                               ; preds = %35
  %39 = fmul double %26, 6.250000e-02
  %40 = fmul double %29, 6.250000e-02
  %41 = fmul double %32, 6.250000e-02
  br label %42

42:                                               ; preds = %64, %38
  %43 = phi i64 [ 0, %38 ], [ %65, %64 ]
  %44 = phi double [ 0.000000e+00, %38 ], [ %61, %64 ]
  br label %45

45:                                               ; preds = %45, %42
  %46 = phi i64 [ 0, %42 ], [ %62, %45 ]
  %47 = phi double [ %44, %42 ], [ %61, %45 ]
  %48 = getelementptr inbounds [4 x [4 x [3 x double]]], ptr %2, i64 0, i64 %43, i64 %46
  %49 = load double, ptr %48, align 8, !tbaa !38
  %50 = fsub double %49, %39
  %51 = getelementptr inbounds [4 x [4 x [3 x double]]], ptr %2, i64 0, i64 %43, i64 %46, i64 1
  %52 = load double, ptr %51, align 8, !tbaa !38
  %53 = fsub double %52, %40
  %54 = getelementptr inbounds [4 x [4 x [3 x double]]], ptr %2, i64 0, i64 %43, i64 %46, i64 2
  %55 = load double, ptr %54, align 8, !tbaa !38
  %56 = fsub double %55, %41
  %57 = fmul double %53, %53
  %58 = tail call double @llvm.fmuladd.f64(double %50, double %50, double %57)
  %59 = tail call double @llvm.fmuladd.f64(double %56, double %56, double %58)
  %60 = fcmp ogt double %59, %47
  %61 = select i1 %60, double %59, double %47
  %62 = add nuw nsw i64 %46, 1
  %63 = icmp eq i64 %62, 4
  br i1 %63, label %64, label %45, !llvm.loop !60

64:                                               ; preds = %45
  %65 = add nuw nsw i64 %43, 1
  %66 = icmp eq i64 %65, 4
  br i1 %66, label %67, label %42, !llvm.loop !61

67:                                               ; preds = %64
  %68 = load double, ptr %0, align 8, !tbaa !38
  %69 = fsub double %39, %68
  %70 = getelementptr inbounds [3 x double], ptr %0, i64 0, i64 1
  %71 = load double, ptr %70, align 8, !tbaa !38
  %72 = fsub double %40, %71
  %73 = getelementptr inbounds [3 x double], ptr %0, i64 0, i64 2
  %74 = load double, ptr %73, align 8, !tbaa !38
  %75 = fsub double %41, %74
  %76 = fmul double %72, %72
  %77 = tail call double @llvm.fmuladd.f64(double %69, double %69, double %76)
  %78 = tail call double @llvm.fmuladd.f64(double %75, double %75, double %77)
  %79 = fcmp olt double %78, %61
  br i1 %79, label %96, label %80

80:                                               ; preds = %67
  %81 = getelementptr inbounds %"struct.pov::Ray_Struct", ptr %0, i64 0, i32 1
  %82 = load double, ptr %81, align 8, !tbaa !38
  %83 = getelementptr inbounds %"struct.pov::Ray_Struct", ptr %0, i64 0, i32 1, i64 1
  %84 = load double, ptr %83, align 8, !tbaa !38
  %85 = fmul double %72, %84
  %86 = tail call double @llvm.fmuladd.f64(double %69, double %82, double %85)
  %87 = getelementptr inbounds %"struct.pov::Ray_Struct", ptr %0, i64 0, i32 1, i64 2
  %88 = load double, ptr %87, align 8, !tbaa !38
  %89 = tail call double @llvm.fmuladd.f64(double %75, double %88, double %86)
  %90 = fmul double %89, %89
  %91 = fcmp ogt double %90, 0.000000e+00
  br i1 %91, label %92, label %139

92:                                               ; preds = %80
  %93 = fsub double %78, %90
  %94 = fadd double %61, 1.000000e-10
  %95 = fcmp ugt double %93, %94
  br i1 %95, label %139, label %96

96:                                               ; preds = %92, %67
  %97 = tail call fastcc noundef i32 @_ZN3povL11flat_enoughEPNS_20Bicubic_Patch_StructEPA4_A4_A3_d(ptr noundef %1, ptr noundef %2), !range !62
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %101, label %99

99:                                               ; preds = %96
  %100 = tail call fastcc noundef i32 @_ZN3povL25bezier_subpatch_intersectEPNS_10Ray_StructEPNS_20Bicubic_Patch_StructEPA4_A4_A3_dddddPNS_13istack_structE(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, double noundef %3, double noundef %4, double noundef %5, double noundef %6, ptr noundef %8), !range !103
  br label %139

101:                                              ; preds = %96
  %102 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %1, i64 0, i32 15
  %103 = load i32, ptr %102, align 4, !tbaa !64
  %104 = icmp sgt i32 %103, %7
  %105 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %1, i64 0, i32 16
  %106 = load i32, ptr %105, align 8, !tbaa !65
  %107 = icmp sgt i32 %106, %7
  br i1 %104, label %118, label %108

108:                                              ; preds = %101
  br i1 %107, label %111, label %109

109:                                              ; preds = %108
  %110 = tail call fastcc noundef i32 @_ZN3povL25bezier_subpatch_intersectEPNS_10Ray_StructEPNS_20Bicubic_Patch_StructEPA4_A4_A3_dddddPNS_13istack_structE(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, double noundef %3, double noundef %4, double noundef %5, double noundef %6, ptr noundef %8), !range !103
  br label %139

111:                                              ; preds = %108
  call fastcc void @_ZN3povL20bezier_split_up_downEPA4_A4_A3_dS3_S3_(ptr noundef %2, ptr noundef nonnull %10, ptr noundef nonnull %12)
  %112 = fadd double %5, %6
  %113 = fmul double %112, 5.000000e-01
  %114 = add nsw i32 %7, 1
  %115 = call fastcc noundef i32 @_ZN3povL17bezier_subdividerEPNS_10Ray_StructEPNS_20Bicubic_Patch_StructEPA4_A4_A3_dddddiPNS_13istack_structE(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %10, double noundef %3, double noundef %4, double noundef %5, double noundef %113, i32 noundef %114, ptr noundef %8)
  %116 = call fastcc noundef i32 @_ZN3povL17bezier_subdividerEPNS_10Ray_StructEPNS_20Bicubic_Patch_StructEPA4_A4_A3_dddddiPNS_13istack_structE(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %12, double noundef %3, double noundef %4, double noundef %113, double noundef %6, i32 noundef %114, ptr noundef %8)
  %117 = add nsw i32 %116, %115
  br label %139

118:                                              ; preds = %101
  br i1 %107, label %126, label %119

119:                                              ; preds = %118
  call fastcc void @_ZN3povL23bezier_split_left_rightEPA4_A4_A3_dS3_S3_(ptr noundef %2, ptr noundef nonnull %10, ptr noundef nonnull %11)
  %120 = fadd double %3, %4
  %121 = fmul double %120, 5.000000e-01
  %122 = add nsw i32 %7, 1
  %123 = call fastcc noundef i32 @_ZN3povL17bezier_subdividerEPNS_10Ray_StructEPNS_20Bicubic_Patch_StructEPA4_A4_A3_dddddiPNS_13istack_structE(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %10, double noundef %3, double noundef %121, double noundef %5, double noundef %6, i32 noundef %122, ptr noundef %8)
  %124 = call fastcc noundef i32 @_ZN3povL17bezier_subdividerEPNS_10Ray_StructEPNS_20Bicubic_Patch_StructEPA4_A4_A3_dddddiPNS_13istack_structE(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %11, double noundef %121, double noundef %4, double noundef %5, double noundef %6, i32 noundef %122, ptr noundef %8)
  %125 = add nsw i32 %124, %123
  br label %139

126:                                              ; preds = %118
  %127 = fadd double %3, %4
  %128 = fmul double %127, 5.000000e-01
  %129 = fadd double %5, %6
  %130 = fmul double %129, 5.000000e-01
  call fastcc void @_ZN3povL23bezier_split_left_rightEPA4_A4_A3_dS3_S3_(ptr noundef %2, ptr noundef nonnull %10, ptr noundef nonnull %11)
  call fastcc void @_ZN3povL20bezier_split_up_downEPA4_A4_A3_dS3_S3_(ptr noundef nonnull %10, ptr noundef nonnull %10, ptr noundef nonnull %12)
  call fastcc void @_ZN3povL20bezier_split_up_downEPA4_A4_A3_dS3_S3_(ptr noundef nonnull %11, ptr noundef nonnull %11, ptr noundef nonnull %13)
  %131 = add nsw i32 %7, 1
  %132 = call fastcc noundef i32 @_ZN3povL17bezier_subdividerEPNS_10Ray_StructEPNS_20Bicubic_Patch_StructEPA4_A4_A3_dddddiPNS_13istack_structE(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %10, double noundef %3, double noundef %128, double noundef %5, double noundef %130, i32 noundef %131, ptr noundef %8)
  %133 = call fastcc noundef i32 @_ZN3povL17bezier_subdividerEPNS_10Ray_StructEPNS_20Bicubic_Patch_StructEPA4_A4_A3_dddddiPNS_13istack_structE(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %12, double noundef %3, double noundef %128, double noundef %130, double noundef %6, i32 noundef %131, ptr noundef %8)
  %134 = add nsw i32 %133, %132
  %135 = call fastcc noundef i32 @_ZN3povL17bezier_subdividerEPNS_10Ray_StructEPNS_20Bicubic_Patch_StructEPA4_A4_A3_dddddiPNS_13istack_structE(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %11, double noundef %128, double noundef %4, double noundef %5, double noundef %130, i32 noundef %131, ptr noundef %8)
  %136 = add nsw i32 %134, %135
  %137 = call fastcc noundef i32 @_ZN3povL17bezier_subdividerEPNS_10Ray_StructEPNS_20Bicubic_Patch_StructEPA4_A4_A3_dddddiPNS_13istack_structE(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %13, double noundef %128, double noundef %4, double noundef %130, double noundef %6, i32 noundef %131, ptr noundef %8)
  %138 = add nsw i32 %136, %137
  br label %139

139:                                              ; preds = %80, %92, %111, %126, %119, %109, %99
  %140 = phi i32 [ %100, %99 ], [ %110, %109 ], [ %117, %111 ], [ %125, %119 ], [ %138, %126 ], [ 0, %92 ], [ 0, %80 ]
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %13) #11
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %10) #11
  ret i32 %140
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i32 @_ZN3povL25bezier_subpatch_intersectEPNS_10Ray_StructEPNS_20Bicubic_Patch_StructEPA4_A4_A3_dddddPNS_13istack_structE(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, double noundef %3, double noundef %4, double noundef %5, double noundef %6, ptr noundef %7) unnamed_addr #0 {
  %9 = alloca [3 x [3 x double]], align 16
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca [3 x double], align 16
  %14 = alloca [3 x double], align 16
  %15 = alloca [3 x double], align 16
  %16 = alloca [3 x double], align 16
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %9) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %13) #11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %14) #11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %15) #11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %16) #11
  %17 = load double, ptr %2, align 8, !tbaa !38
  store double %17, ptr %9, align 16, !tbaa !38
  %18 = getelementptr inbounds double, ptr %2, i64 1
  %19 = load double, ptr %18, align 8, !tbaa !38
  %20 = getelementptr inbounds double, ptr %9, i64 1
  store double %19, ptr %20, align 8, !tbaa !38
  %21 = getelementptr inbounds double, ptr %2, i64 2
  %22 = load double, ptr %21, align 8, !tbaa !38
  %23 = getelementptr inbounds double, ptr %9, i64 2
  store double %22, ptr %23, align 16, !tbaa !38
  %24 = getelementptr inbounds [3 x [3 x double]], ptr %9, i64 0, i64 1
  %25 = getelementptr inbounds [4 x [3 x double]], ptr %2, i64 0, i64 3
  %26 = load double, ptr %25, align 8, !tbaa !38
  store double %26, ptr %24, align 8, !tbaa !38
  %27 = getelementptr inbounds [4 x [3 x double]], ptr %2, i64 0, i64 3, i64 1
  %28 = load double, ptr %27, align 8, !tbaa !38
  %29 = getelementptr inbounds [3 x [3 x double]], ptr %9, i64 0, i64 1, i64 1
  store double %28, ptr %29, align 16, !tbaa !38
  %30 = getelementptr inbounds [4 x [3 x double]], ptr %2, i64 0, i64 3, i64 2
  %31 = load double, ptr %30, align 8, !tbaa !38
  %32 = getelementptr inbounds [3 x [3 x double]], ptr %9, i64 0, i64 1, i64 2
  store double %31, ptr %32, align 8, !tbaa !38
  %33 = getelementptr inbounds [3 x [3 x double]], ptr %9, i64 0, i64 2
  %34 = getelementptr inbounds [4 x [4 x [3 x double]]], ptr %2, i64 0, i64 3
  %35 = getelementptr inbounds [4 x [4 x [3 x double]]], ptr %2, i64 0, i64 3, i64 3
  %36 = load double, ptr %35, align 8, !tbaa !38
  store double %36, ptr %33, align 16, !tbaa !38
  %37 = getelementptr inbounds [4 x [4 x [3 x double]]], ptr %2, i64 0, i64 3, i64 3, i64 1
  %38 = load double, ptr %37, align 8, !tbaa !38
  %39 = getelementptr inbounds [3 x [3 x double]], ptr %9, i64 0, i64 2, i64 1
  store double %38, ptr %39, align 8, !tbaa !38
  %40 = getelementptr inbounds [4 x [4 x [3 x double]]], ptr %2, i64 0, i64 3, i64 3, i64 2
  %41 = load double, ptr %40, align 8, !tbaa !38
  %42 = getelementptr inbounds [3 x [3 x double]], ptr %9, i64 0, i64 2, i64 2
  store double %41, ptr %42, align 16, !tbaa !38
  store double %3, ptr %13, align 16, !tbaa !38
  %43 = getelementptr inbounds [3 x double], ptr %13, i64 0, i64 1
  store double %3, ptr %43, align 8, !tbaa !38
  %44 = getelementptr inbounds [3 x double], ptr %13, i64 0, i64 2
  store double %4, ptr %44, align 16, !tbaa !38
  store double %5, ptr %14, align 16, !tbaa !38
  %45 = getelementptr inbounds [3 x double], ptr %14, i64 0, i64 1
  store double %6, ptr %45, align 8, !tbaa !38
  %46 = getelementptr inbounds [3 x double], ptr %14, i64 0, i64 2
  store double %6, ptr %46, align 16, !tbaa !38
  %47 = call fastcc noundef i32 @_ZN3povL18intersect_subpatchEPNS_20Bicubic_Patch_StructEPNS_10Ray_StructEPA3_dPdS6_S6_S6_S6_S6_S6_(ptr noundef %1, ptr noundef %0, ptr noundef nonnull %9, ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef nonnull %12, ptr noundef nonnull %15, ptr noundef nonnull %16, ptr noundef nonnull %10, ptr noundef nonnull %11), !range !62
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %107, label %49

49:                                               ; preds = %8
  %50 = load double, ptr %11, align 8, !tbaa !38
  %51 = load double, ptr %10, align 8, !tbaa !38
  %52 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %1, i64 0, i32 18
  %53 = load double, ptr %52, align 8, !tbaa !38
  %54 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %1, i64 0, i32 18, i64 1
  %55 = load double, ptr %54, align 8, !tbaa !38
  %56 = fsub double %55, %53
  %57 = tail call double @llvm.fmuladd.f64(double %50, double %56, double %53)
  %58 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %1, i64 0, i32 18, i64 0, i64 1
  %59 = load double, ptr %58, align 8, !tbaa !38
  %60 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %1, i64 0, i32 18, i64 1, i64 1
  %61 = load double, ptr %60, align 8, !tbaa !38
  %62 = fsub double %61, %59
  %63 = tail call double @llvm.fmuladd.f64(double %50, double %62, double %59)
  %64 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %1, i64 0, i32 18, i64 3
  %65 = load double, ptr %64, align 8, !tbaa !38
  %66 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %1, i64 0, i32 18, i64 2
  %67 = load double, ptr %66, align 8, !tbaa !38
  %68 = fsub double %67, %65
  %69 = tail call double @llvm.fmuladd.f64(double %50, double %68, double %65)
  %70 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %1, i64 0, i32 18, i64 3, i64 1
  %71 = load double, ptr %70, align 8, !tbaa !38
  %72 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %1, i64 0, i32 18, i64 2, i64 1
  %73 = load double, ptr %72, align 8, !tbaa !38
  %74 = fsub double %73, %71
  %75 = tail call double @llvm.fmuladd.f64(double %50, double %74, double %71)
  %76 = fsub double %69, %57
  %77 = tail call double @llvm.fmuladd.f64(double %51, double %76, double %57)
  %78 = fsub double %75, %63
  %79 = tail call double @llvm.fmuladd.f64(double %51, double %78, double %63)
  %80 = load double, ptr %12, align 8, !tbaa !38
  %81 = getelementptr inbounds %"struct.pov::istack_struct", ptr %7, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !96
  %83 = getelementptr inbounds %"struct.pov::istack_struct", ptr %7, i64 0, i32 3
  %84 = load i32, ptr %83, align 4, !tbaa !98
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds %"struct.pov::istk_entry", ptr %82, i64 %85
  store double %80, ptr %86, align 8, !tbaa !99
  %87 = getelementptr inbounds %"struct.pov::istk_entry", ptr %82, i64 %85, i32 5
  store ptr %1, ptr %87, align 8, !tbaa !101
  %88 = getelementptr inbounds %"struct.pov::istk_entry", ptr %82, i64 %85, i32 1
  %89 = load double, ptr %15, align 16, !tbaa !38
  store double %89, ptr %88, align 8, !tbaa !38
  %90 = getelementptr inbounds double, ptr %15, i64 1
  %91 = load double, ptr %90, align 8, !tbaa !38
  %92 = getelementptr inbounds double, ptr %88, i64 1
  store double %91, ptr %92, align 8, !tbaa !38
  %93 = getelementptr inbounds double, ptr %15, i64 2
  %94 = load double, ptr %93, align 16, !tbaa !38
  %95 = getelementptr inbounds double, ptr %88, i64 2
  store double %94, ptr %95, align 8, !tbaa !38
  %96 = getelementptr inbounds %"struct.pov::istk_entry", ptr %82, i64 %85, i32 2
  %97 = load double, ptr %16, align 16, !tbaa !38
  store double %97, ptr %96, align 8, !tbaa !38
  %98 = getelementptr inbounds double, ptr %16, i64 1
  %99 = load double, ptr %98, align 8, !tbaa !38
  %100 = getelementptr inbounds double, ptr %96, i64 1
  store double %99, ptr %100, align 8, !tbaa !38
  %101 = getelementptr inbounds double, ptr %16, i64 2
  %102 = load double, ptr %101, align 16, !tbaa !38
  %103 = getelementptr inbounds double, ptr %96, i64 2
  store double %102, ptr %103, align 8, !tbaa !38
  %104 = getelementptr inbounds %"struct.pov::istk_entry", ptr %82, i64 %85, i32 4
  store double %77, ptr %104, align 8, !tbaa !38
  %105 = getelementptr inbounds double, ptr %104, i64 1
  store double %79, ptr %105, align 8, !tbaa !38
  %106 = getelementptr inbounds %"struct.pov::istk_entry", ptr %82, i64 %85, i32 18
  store ptr null, ptr %106, align 8, !tbaa !102
  tail call void @_ZN3pov8incstackEPNS_13istack_structE(ptr noundef %7)
  br label %107

107:                                              ; preds = %49, %8
  %108 = phi i32 [ 1, %49 ], [ 0, %8 ]
  store double %36, ptr %24, align 8, !tbaa !38
  store double %38, ptr %29, align 16, !tbaa !38
  store double %41, ptr %32, align 8, !tbaa !38
  %109 = load double, ptr %34, align 8, !tbaa !38
  store double %109, ptr %33, align 16, !tbaa !38
  %110 = getelementptr inbounds [4 x [4 x [3 x double]]], ptr %2, i64 0, i64 3, i64 0, i64 1
  %111 = load double, ptr %110, align 8, !tbaa !38
  store double %111, ptr %39, align 8, !tbaa !38
  %112 = getelementptr inbounds [4 x [4 x [3 x double]]], ptr %2, i64 0, i64 3, i64 0, i64 2
  %113 = load double, ptr %112, align 8, !tbaa !38
  store double %113, ptr %42, align 16, !tbaa !38
  store double %4, ptr %43, align 8, !tbaa !38
  store double %4, ptr %44, align 16, !tbaa !38
  store double %6, ptr %45, align 8, !tbaa !38
  store double %5, ptr %46, align 16, !tbaa !38
  %114 = call fastcc noundef i32 @_ZN3povL18intersect_subpatchEPNS_20Bicubic_Patch_StructEPNS_10Ray_StructEPA3_dPdS6_S6_S6_S6_S6_S6_(ptr noundef %1, ptr noundef %0, ptr noundef nonnull %9, ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef nonnull %12, ptr noundef nonnull %15, ptr noundef nonnull %16, ptr noundef nonnull %10, ptr noundef nonnull %11), !range !62
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %175, label %116

116:                                              ; preds = %107
  %117 = load double, ptr %11, align 8, !tbaa !38
  %118 = load double, ptr %10, align 8, !tbaa !38
  %119 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %1, i64 0, i32 18
  %120 = load double, ptr %119, align 8, !tbaa !38
  %121 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %1, i64 0, i32 18, i64 1
  %122 = load double, ptr %121, align 8, !tbaa !38
  %123 = fsub double %122, %120
  %124 = tail call double @llvm.fmuladd.f64(double %117, double %123, double %120)
  %125 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %1, i64 0, i32 18, i64 0, i64 1
  %126 = load double, ptr %125, align 8, !tbaa !38
  %127 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %1, i64 0, i32 18, i64 1, i64 1
  %128 = load double, ptr %127, align 8, !tbaa !38
  %129 = fsub double %128, %126
  %130 = tail call double @llvm.fmuladd.f64(double %117, double %129, double %126)
  %131 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %1, i64 0, i32 18, i64 3
  %132 = load double, ptr %131, align 8, !tbaa !38
  %133 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %1, i64 0, i32 18, i64 2
  %134 = load double, ptr %133, align 8, !tbaa !38
  %135 = fsub double %134, %132
  %136 = tail call double @llvm.fmuladd.f64(double %117, double %135, double %132)
  %137 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %1, i64 0, i32 18, i64 3, i64 1
  %138 = load double, ptr %137, align 8, !tbaa !38
  %139 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %1, i64 0, i32 18, i64 2, i64 1
  %140 = load double, ptr %139, align 8, !tbaa !38
  %141 = fsub double %140, %138
  %142 = tail call double @llvm.fmuladd.f64(double %117, double %141, double %138)
  %143 = fsub double %136, %124
  %144 = tail call double @llvm.fmuladd.f64(double %118, double %143, double %124)
  %145 = fsub double %142, %130
  %146 = tail call double @llvm.fmuladd.f64(double %118, double %145, double %130)
  %147 = load double, ptr %12, align 8, !tbaa !38
  %148 = getelementptr inbounds %"struct.pov::istack_struct", ptr %7, i64 0, i32 1
  %149 = load ptr, ptr %148, align 8, !tbaa !96
  %150 = getelementptr inbounds %"struct.pov::istack_struct", ptr %7, i64 0, i32 3
  %151 = load i32, ptr %150, align 4, !tbaa !98
  %152 = zext i32 %151 to i64
  %153 = getelementptr inbounds %"struct.pov::istk_entry", ptr %149, i64 %152
  store double %147, ptr %153, align 8, !tbaa !99
  %154 = getelementptr inbounds %"struct.pov::istk_entry", ptr %149, i64 %152, i32 5
  store ptr %1, ptr %154, align 8, !tbaa !101
  %155 = getelementptr inbounds %"struct.pov::istk_entry", ptr %149, i64 %152, i32 1
  %156 = load double, ptr %15, align 16, !tbaa !38
  store double %156, ptr %155, align 8, !tbaa !38
  %157 = getelementptr inbounds double, ptr %15, i64 1
  %158 = load double, ptr %157, align 8, !tbaa !38
  %159 = getelementptr inbounds double, ptr %155, i64 1
  store double %158, ptr %159, align 8, !tbaa !38
  %160 = getelementptr inbounds double, ptr %15, i64 2
  %161 = load double, ptr %160, align 16, !tbaa !38
  %162 = getelementptr inbounds double, ptr %155, i64 2
  store double %161, ptr %162, align 8, !tbaa !38
  %163 = getelementptr inbounds %"struct.pov::istk_entry", ptr %149, i64 %152, i32 2
  %164 = load double, ptr %16, align 16, !tbaa !38
  store double %164, ptr %163, align 8, !tbaa !38
  %165 = getelementptr inbounds double, ptr %16, i64 1
  %166 = load double, ptr %165, align 8, !tbaa !38
  %167 = getelementptr inbounds double, ptr %163, i64 1
  store double %166, ptr %167, align 8, !tbaa !38
  %168 = getelementptr inbounds double, ptr %16, i64 2
  %169 = load double, ptr %168, align 16, !tbaa !38
  %170 = getelementptr inbounds double, ptr %163, i64 2
  store double %169, ptr %170, align 8, !tbaa !38
  %171 = getelementptr inbounds %"struct.pov::istk_entry", ptr %149, i64 %152, i32 4
  store double %144, ptr %171, align 8, !tbaa !38
  %172 = getelementptr inbounds double, ptr %171, i64 1
  store double %146, ptr %172, align 8, !tbaa !38
  %173 = getelementptr inbounds %"struct.pov::istk_entry", ptr %149, i64 %152, i32 18
  store ptr null, ptr %173, align 8, !tbaa !102
  tail call void @_ZN3pov8incstackEPNS_13istack_structE(ptr noundef %7)
  %174 = add nuw nsw i32 %108, 1
  br label %175

175:                                              ; preds = %116, %107
  %176 = phi i32 [ %174, %116 ], [ %108, %107 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %16) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %15) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %14) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %13) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %9) #11
  ret i32 %176
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i32 @_ZN3povL18intersect_subpatchEPNS_20Bicubic_Patch_StructEPNS_10Ray_StructEPA3_dPdS6_S6_S6_S6_S6_S6_(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef writeonly %5, ptr nocapture noundef writeonly %6, ptr nocapture noundef %7, ptr nocapture noundef writeonly %8, ptr nocapture noundef writeonly %9) unnamed_addr #0 {
  %11 = alloca [3 x double], align 16
  %12 = alloca [3 x [3 x double]], align 16
  %13 = alloca [3 x [3 x double]], align 16
  %14 = alloca [3 x [3 x double]], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #11
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %12) #11
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %13) #11
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %14) #11
  %15 = getelementptr inbounds [3 x double], ptr %2, i64 1
  %16 = load double, ptr %15, align 8, !tbaa !38
  %17 = load double, ptr %2, align 8, !tbaa !38
  %18 = fsub double %16, %17
  store double %18, ptr %12, align 16, !tbaa !38
  %19 = getelementptr inbounds [3 x double], ptr %2, i64 1, i64 1
  %20 = load double, ptr %19, align 8, !tbaa !38
  %21 = getelementptr inbounds double, ptr %2, i64 1
  %22 = load double, ptr %21, align 8, !tbaa !38
  %23 = fsub double %20, %22
  %24 = getelementptr inbounds double, ptr %12, i64 1
  store double %23, ptr %24, align 8, !tbaa !38
  %25 = getelementptr inbounds [3 x double], ptr %2, i64 1, i64 2
  %26 = load double, ptr %25, align 8, !tbaa !38
  %27 = getelementptr inbounds double, ptr %2, i64 2
  %28 = load double, ptr %27, align 8, !tbaa !38
  %29 = fsub double %26, %28
  %30 = getelementptr inbounds double, ptr %12, i64 2
  store double %29, ptr %30, align 16, !tbaa !38
  %31 = getelementptr inbounds [3 x [3 x double]], ptr %12, i64 0, i64 1
  %32 = getelementptr inbounds [3 x double], ptr %2, i64 2
  %33 = load double, ptr %32, align 8, !tbaa !38
  %34 = fsub double %33, %17
  store double %34, ptr %31, align 8, !tbaa !38
  %35 = getelementptr inbounds [3 x double], ptr %2, i64 2, i64 1
  %36 = load double, ptr %35, align 8, !tbaa !38
  %37 = fsub double %36, %22
  %38 = getelementptr inbounds [3 x [3 x double]], ptr %12, i64 0, i64 1, i64 1
  store double %37, ptr %38, align 16, !tbaa !38
  %39 = getelementptr inbounds [3 x double], ptr %2, i64 2, i64 2
  %40 = load double, ptr %39, align 8, !tbaa !38
  %41 = fsub double %40, %28
  %42 = getelementptr inbounds [3 x [3 x double]], ptr %12, i64 0, i64 1, i64 2
  store double %41, ptr %42, align 8, !tbaa !38
  %43 = getelementptr inbounds [3 x [3 x double]], ptr %12, i64 0, i64 2
  %44 = fneg double %29
  %45 = fmul double %37, %44
  %46 = tail call double @llvm.fmuladd.f64(double %23, double %41, double %45)
  %47 = fneg double %18
  %48 = fmul double %41, %47
  %49 = tail call double @llvm.fmuladd.f64(double %29, double %34, double %48)
  %50 = fneg double %23
  %51 = fmul double %34, %50
  %52 = tail call double @llvm.fmuladd.f64(double %18, double %37, double %51)
  store double %46, ptr %43, align 16, !tbaa !38
  %53 = getelementptr inbounds [3 x [3 x double]], ptr %12, i64 0, i64 2, i64 1
  store double %49, ptr %53, align 8, !tbaa !38
  %54 = getelementptr inbounds [3 x [3 x double]], ptr %12, i64 0, i64 2, i64 2
  store double %52, ptr %54, align 16, !tbaa !38
  %55 = fmul double %49, %49
  %56 = tail call double @llvm.fmuladd.f64(double %46, double %46, double %55)
  %57 = tail call double @llvm.fmuladd.f64(double %52, double %52, double %56)
  %58 = fmul double %23, %23
  %59 = tail call double @llvm.fmuladd.f64(double %18, double %18, double %58)
  %60 = tail call noundef double @llvm.fmuladd.f64(double %29, double %29, double %59)
  %61 = fmul double %37, %37
  %62 = tail call double @llvm.fmuladd.f64(double %34, double %34, double %61)
  %63 = tail call noundef double @llvm.fmuladd.f64(double %41, double %41, double %62)
  %64 = fmul double %63, 1.000000e-10
  %65 = fmul double %60, %64
  %66 = fcmp ugt double %57, %65
  br i1 %66, label %67, label %242

67:                                               ; preds = %10
  %68 = tail call double @sqrt(double noundef %57) #11
  %69 = fdiv double 1.000000e+00, %68
  %70 = load double, ptr %43, align 16, !tbaa !38
  %71 = fmul double %70, %69
  store double %71, ptr %43, align 16, !tbaa !38
  %72 = load double, ptr %53, align 8, !tbaa !38
  %73 = fmul double %69, %72
  store double %73, ptr %53, align 8, !tbaa !38
  %74 = load double, ptr %54, align 16, !tbaa !38
  %75 = fmul double %69, %74
  store double %75, ptr %54, align 16, !tbaa !38
  %76 = call noundef i32 @_ZN3pov8MInvers3EPA3_dS1_(ptr noundef nonnull %12, ptr noundef nonnull %13)
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %242, label %78

78:                                               ; preds = %67
  %79 = getelementptr inbounds %"struct.pov::Ray_Struct", ptr %1, i64 0, i32 1
  %80 = getelementptr inbounds [3 x [3 x double]], ptr %13, i64 0, i64 2
  %81 = load double, ptr %79, align 8, !tbaa !38
  %82 = load double, ptr %80, align 16, !tbaa !38
  %83 = getelementptr inbounds %"struct.pov::Ray_Struct", ptr %1, i64 0, i32 1, i64 1
  %84 = load double, ptr %83, align 8, !tbaa !38
  %85 = getelementptr inbounds [3 x [3 x double]], ptr %13, i64 0, i64 2, i64 1
  %86 = load double, ptr %85, align 8, !tbaa !38
  %87 = fmul double %84, %86
  %88 = call double @llvm.fmuladd.f64(double %81, double %82, double %87)
  %89 = getelementptr inbounds %"struct.pov::Ray_Struct", ptr %1, i64 0, i32 1, i64 2
  %90 = load double, ptr %89, align 8, !tbaa !38
  %91 = getelementptr inbounds [3 x [3 x double]], ptr %13, i64 0, i64 2, i64 2
  %92 = load double, ptr %91, align 16, !tbaa !38
  %93 = call double @llvm.fmuladd.f64(double %90, double %92, double %88)
  %94 = call double @llvm.fabs.f64(double %93)
  %95 = fcmp olt double %94, 1.000000e-10
  br i1 %95, label %242, label %96

96:                                               ; preds = %78
  %97 = load double, ptr %2, align 8, !tbaa !38
  %98 = load double, ptr %1, align 8, !tbaa !38
  %99 = fsub double %97, %98
  %100 = load double, ptr %21, align 8, !tbaa !38
  %101 = getelementptr inbounds double, ptr %1, i64 1
  %102 = load double, ptr %101, align 8, !tbaa !38
  %103 = fsub double %100, %102
  %104 = load double, ptr %27, align 8, !tbaa !38
  %105 = getelementptr inbounds double, ptr %1, i64 2
  %106 = load double, ptr %105, align 8, !tbaa !38
  %107 = fsub double %104, %106
  %108 = fmul double %86, %103
  %109 = call double @llvm.fmuladd.f64(double %99, double %82, double %108)
  %110 = call double @llvm.fmuladd.f64(double %107, double %92, double %109)
  %111 = fdiv double %110, %93
  store double %111, ptr %5, align 8, !tbaa !38
  %112 = fcmp olt double %111, 1.000000e-05
  br i1 %112, label %242, label %113

113:                                              ; preds = %96
  %114 = load double, ptr %79, align 8, !tbaa !38
  %115 = fmul double %111, %114
  store double %115, ptr %11, align 16, !tbaa !38
  %116 = load double, ptr %83, align 8, !tbaa !38
  %117 = fmul double %111, %116
  %118 = getelementptr inbounds double, ptr %11, i64 1
  store double %117, ptr %118, align 8, !tbaa !38
  %119 = load double, ptr %89, align 8, !tbaa !38
  %120 = fmul double %111, %119
  %121 = getelementptr inbounds double, ptr %11, i64 2
  store double %120, ptr %121, align 16, !tbaa !38
  %122 = load double, ptr %1, align 8, !tbaa !38
  %123 = fadd double %115, %122
  store double %123, ptr %6, align 8, !tbaa !38
  %124 = load double, ptr %101, align 8, !tbaa !38
  %125 = fadd double %117, %124
  %126 = getelementptr inbounds double, ptr %6, i64 1
  store double %125, ptr %126, align 8, !tbaa !38
  %127 = load double, ptr %105, align 8, !tbaa !38
  %128 = fadd double %120, %127
  %129 = getelementptr inbounds double, ptr %6, i64 2
  store double %128, ptr %129, align 8, !tbaa !38
  %130 = load double, ptr %2, align 8, !tbaa !38
  %131 = fsub double %123, %130
  %132 = load double, ptr %21, align 8, !tbaa !38
  %133 = fsub double %125, %132
  %134 = load double, ptr %27, align 8, !tbaa !38
  %135 = fsub double %128, %134
  %136 = load double, ptr %13, align 16, !tbaa !38
  %137 = getelementptr inbounds double, ptr %13, i64 1
  %138 = load double, ptr %137, align 8, !tbaa !38
  %139 = fmul double %133, %138
  %140 = call double @llvm.fmuladd.f64(double %131, double %136, double %139)
  %141 = getelementptr inbounds double, ptr %13, i64 2
  %142 = load double, ptr %141, align 16, !tbaa !38
  %143 = call double @llvm.fmuladd.f64(double %135, double %142, double %140)
  %144 = getelementptr inbounds [3 x [3 x double]], ptr %13, i64 0, i64 1
  %145 = load double, ptr %144, align 8, !tbaa !38
  %146 = getelementptr inbounds [3 x [3 x double]], ptr %13, i64 0, i64 1, i64 1
  %147 = load double, ptr %146, align 16, !tbaa !38
  %148 = fmul double %133, %147
  %149 = call double @llvm.fmuladd.f64(double %131, double %145, double %148)
  %150 = getelementptr inbounds [3 x [3 x double]], ptr %13, i64 0, i64 1, i64 2
  %151 = load double, ptr %150, align 8, !tbaa !38
  %152 = call double @llvm.fmuladd.f64(double %135, double %151, double %149)
  %153 = fcmp olt double %143, 0.000000e+00
  %154 = fcmp olt double %152, 0.000000e+00
  %155 = select i1 %153, i1 true, i1 %154
  %156 = fadd double %143, %152
  %157 = fcmp ogt double %156, 1.000000e+00
  %158 = select i1 %155, i1 true, i1 %157
  br i1 %158, label %242, label %159

159:                                              ; preds = %113
  %160 = fsub double 1.000000e+00, %143
  %161 = fsub double %160, %152
  %162 = getelementptr inbounds double, ptr %7, i64 1
  %163 = getelementptr inbounds double, ptr %7, i64 2
  %164 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %0, i64 0, i32 17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %165 = load double, ptr %3, align 8, !tbaa !38
  %166 = load double, ptr %4, align 8, !tbaa !38
  call fastcc void @_ZN3povL12bezier_valueEPA4_A4_A3_dddPdS4_(ptr noundef nonnull %164, double noundef %165, double noundef %166, ptr noundef nonnull %11, ptr noundef nonnull %14)
  %167 = getelementptr inbounds double, ptr %3, i64 1
  %168 = load double, ptr %167, align 8, !tbaa !38
  %169 = getelementptr inbounds double, ptr %4, i64 1
  %170 = load double, ptr %169, align 8, !tbaa !38
  %171 = getelementptr inbounds [3 x [3 x double]], ptr %14, i64 0, i64 1
  call fastcc void @_ZN3povL12bezier_valueEPA4_A4_A3_dddPdS4_(ptr noundef nonnull %164, double noundef %168, double noundef %170, ptr noundef nonnull %11, ptr noundef nonnull %171)
  %172 = getelementptr inbounds double, ptr %3, i64 2
  %173 = load double, ptr %172, align 8, !tbaa !38
  %174 = getelementptr inbounds double, ptr %4, i64 2
  %175 = load double, ptr %174, align 8, !tbaa !38
  %176 = getelementptr inbounds [3 x [3 x double]], ptr %14, i64 0, i64 2
  call fastcc void @_ZN3povL12bezier_valueEPA4_A4_A3_dddPdS4_(ptr noundef nonnull %164, double noundef %173, double noundef %175, ptr noundef nonnull %11, ptr noundef nonnull %176)
  %177 = load double, ptr %14, align 16, !tbaa !38
  %178 = fmul double %161, %177
  store double %178, ptr %11, align 16, !tbaa !38
  %179 = getelementptr inbounds double, ptr %14, i64 1
  %180 = load double, ptr %179, align 8, !tbaa !38
  %181 = fmul double %161, %180
  store double %181, ptr %118, align 8, !tbaa !38
  %182 = getelementptr inbounds double, ptr %14, i64 2
  %183 = load double, ptr %182, align 16, !tbaa !38
  %184 = fmul double %161, %183
  store double %184, ptr %121, align 16, !tbaa !38
  %185 = load double, ptr %7, align 8, !tbaa !38
  %186 = fadd double %178, %185
  store double %186, ptr %7, align 8, !tbaa !38
  %187 = load double, ptr %162, align 8, !tbaa !38
  %188 = fadd double %181, %187
  store double %188, ptr %162, align 8, !tbaa !38
  %189 = load double, ptr %163, align 8, !tbaa !38
  %190 = fadd double %184, %189
  store double %190, ptr %163, align 8, !tbaa !38
  %191 = load double, ptr %171, align 8, !tbaa !38
  %192 = fmul double %143, %191
  store double %192, ptr %11, align 16, !tbaa !38
  %193 = getelementptr inbounds [3 x [3 x double]], ptr %14, i64 0, i64 1, i64 1
  %194 = load double, ptr %193, align 16, !tbaa !38
  %195 = fmul double %143, %194
  store double %195, ptr %118, align 8, !tbaa !38
  %196 = getelementptr inbounds [3 x [3 x double]], ptr %14, i64 0, i64 1, i64 2
  %197 = load double, ptr %196, align 8, !tbaa !38
  %198 = fmul double %143, %197
  store double %198, ptr %121, align 16, !tbaa !38
  %199 = fadd double %186, %192
  store double %199, ptr %7, align 8, !tbaa !38
  %200 = fadd double %188, %195
  store double %200, ptr %162, align 8, !tbaa !38
  %201 = fadd double %190, %198
  store double %201, ptr %163, align 8, !tbaa !38
  %202 = load double, ptr %176, align 16, !tbaa !38
  %203 = fmul double %152, %202
  store double %203, ptr %11, align 16, !tbaa !38
  %204 = getelementptr inbounds [3 x [3 x double]], ptr %14, i64 0, i64 2, i64 1
  %205 = load double, ptr %204, align 8, !tbaa !38
  %206 = fmul double %152, %205
  store double %206, ptr %118, align 8, !tbaa !38
  %207 = getelementptr inbounds [3 x [3 x double]], ptr %14, i64 0, i64 2, i64 2
  %208 = load double, ptr %207, align 16, !tbaa !38
  %209 = fmul double %152, %208
  store double %209, ptr %121, align 16, !tbaa !38
  %210 = fadd double %199, %203
  store double %210, ptr %7, align 8, !tbaa !38
  %211 = fadd double %200, %206
  store double %211, ptr %162, align 8, !tbaa !38
  %212 = fadd double %201, %209
  store double %212, ptr %163, align 8, !tbaa !38
  %213 = load double, ptr %3, align 8, !tbaa !38
  %214 = load double, ptr %167, align 8, !tbaa !38
  %215 = fmul double %143, %214
  %216 = call double @llvm.fmuladd.f64(double %161, double %213, double %215)
  %217 = load double, ptr %172, align 8, !tbaa !38
  %218 = call double @llvm.fmuladd.f64(double %152, double %217, double %216)
  store double %218, ptr %8, align 8, !tbaa !38
  %219 = load double, ptr %4, align 8, !tbaa !38
  %220 = load double, ptr %169, align 8, !tbaa !38
  %221 = fmul double %143, %220
  %222 = call double @llvm.fmuladd.f64(double %161, double %219, double %221)
  %223 = load double, ptr %174, align 8, !tbaa !38
  %224 = call double @llvm.fmuladd.f64(double %152, double %223, double %222)
  store double %224, ptr %9, align 8, !tbaa !38
  %225 = load double, ptr %7, align 8, !tbaa !38
  %226 = load double, ptr %162, align 8, !tbaa !38
  %227 = fmul double %226, %226
  %228 = call double @llvm.fmuladd.f64(double %225, double %225, double %227)
  %229 = load double, ptr %163, align 8, !tbaa !38
  %230 = call double @llvm.fmuladd.f64(double %229, double %229, double %228)
  %231 = fcmp ogt double %230, 1.000000e-10
  br i1 %231, label %232, label %241

232:                                              ; preds = %159
  %233 = call double @sqrt(double noundef %230) #11
  %234 = fdiv double 1.000000e+00, %233
  %235 = load double, ptr %7, align 8, !tbaa !38
  %236 = fmul double %235, %234
  store double %236, ptr %7, align 8, !tbaa !38
  %237 = load double, ptr %162, align 8, !tbaa !38
  %238 = fmul double %234, %237
  store double %238, ptr %162, align 8, !tbaa !38
  %239 = load double, ptr %163, align 8, !tbaa !38
  %240 = fmul double %234, %239
  store double %240, ptr %163, align 8, !tbaa !38
  br label %242

241:                                              ; preds = %159
  store double 1.000000e+00, ptr %7, align 8, !tbaa !38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %162, i8 0, i64 16, i1 false)
  br label %242

242:                                              ; preds = %232, %241, %113, %96, %78, %67, %10
  %243 = phi i32 [ 0, %10 ], [ 0, %67 ], [ 0, %78 ], [ 0, %96 ], [ 0, %113 ], [ 1, %241 ], [ 1, %232 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %14) #11
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %13) #11
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #11
  ret i32 %243
}

declare noundef i32 @_ZN3pov8MInvers3EPA3_dS1_(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind memory(write, argmem: readwrite) uwtable
define internal fastcc void @_ZN3povL12bezier_valueEPA4_A4_A3_dddPdS4_(ptr nocapture noundef readonly %0, double noundef %1, double noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef %4) unnamed_addr #5 {
  %6 = alloca [4 x double], align 16
  %7 = alloca [4 x double], align 16
  %8 = alloca [4 x double], align 16
  %9 = alloca [4 x double], align 16
  %10 = alloca [4 x double], align 16
  %11 = alloca [4 x double], align 16
  %12 = alloca [4 x double], align 16
  %13 = alloca [4 x double], align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %11) #11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %12) #11
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %13) #11
  store double 1.000000e+00, ptr %6, align 16, !tbaa !38
  store double 1.000000e+00, ptr %7, align 16, !tbaa !38
  store double 0.000000e+00, ptr %10, align 16, !tbaa !38
  store double 0.000000e+00, ptr %11, align 16, !tbaa !38
  store double 1.000000e+00, ptr %8, align 16, !tbaa !38
  store double 1.000000e+00, ptr %9, align 16, !tbaa !38
  store double 0.000000e+00, ptr %12, align 16, !tbaa !38
  store double 0.000000e+00, ptr %13, align 16, !tbaa !38
  %14 = fsub double 1.000000e+00, %1
  %15 = fsub double 1.000000e+00, %2
  %16 = load double, ptr %7, align 16
  %17 = load double, ptr %6, align 16
  br label %18

18:                                               ; preds = %5, %18
  %19 = phi double [ %17, %5 ], [ %24, %18 ]
  %20 = phi double [ %16, %5 ], [ %26, %18 ]
  %21 = phi double [ 1.000000e+00, %5 ], [ %28, %18 ]
  %22 = phi double [ 1.000000e+00, %5 ], [ %30, %18 ]
  %23 = phi i64 [ 1, %5 ], [ %45, %18 ]
  %24 = fmul double %19, %1
  %25 = getelementptr inbounds [4 x double], ptr %6, i64 0, i64 %23
  store double %24, ptr %25, align 8, !tbaa !38
  %26 = fmul double %14, %20
  %27 = getelementptr inbounds [4 x double], ptr %7, i64 0, i64 %23
  store double %26, ptr %27, align 8, !tbaa !38
  %28 = fmul double %21, %2
  %29 = getelementptr inbounds [4 x double], ptr %8, i64 0, i64 %23
  store double %28, ptr %29, align 8, !tbaa !38
  %30 = fmul double %15, %22
  %31 = getelementptr inbounds [4 x double], ptr %9, i64 0, i64 %23
  store double %30, ptr %31, align 8, !tbaa !38
  %32 = trunc i64 %23 to i32
  %33 = sitofp i32 %32 to double
  %34 = fmul double %19, %33
  %35 = getelementptr inbounds [4 x double], ptr %10, i64 0, i64 %23
  store double %34, ptr %35, align 8, !tbaa !38
  %36 = trunc i64 %23 to i32
  %37 = sub i32 0, %36
  %38 = sitofp i32 %37 to double
  %39 = fmul double %20, %38
  %40 = getelementptr inbounds [4 x double], ptr %11, i64 0, i64 %23
  store double %39, ptr %40, align 8, !tbaa !38
  %41 = fmul double %21, %33
  %42 = getelementptr inbounds [4 x double], ptr %12, i64 0, i64 %23
  store double %41, ptr %42, align 8, !tbaa !38
  %43 = fmul double %22, %38
  %44 = getelementptr inbounds [4 x double], ptr %13, i64 0, i64 %23
  store double %43, ptr %44, align 8, !tbaa !38
  %45 = add nuw nsw i64 %23, 1
  %46 = icmp eq i64 %45, 4
  br i1 %46, label %47, label %18, !llvm.loop !104

47:                                               ; preds = %18
  %48 = getelementptr inbounds double, ptr %3, i64 1
  %49 = getelementptr inbounds double, ptr %3, i64 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  br label %50

50:                                               ; preds = %47, %128
  %51 = phi i64 [ 0, %47 ], [ %129, %128 ]
  %52 = phi double [ 0.000000e+00, %47 ], [ %123, %128 ]
  %53 = phi double [ 0.000000e+00, %47 ], [ %124, %128 ]
  %54 = phi double [ 0.000000e+00, %47 ], [ %125, %128 ]
  %55 = phi double [ 0.000000e+00, %47 ], [ %111, %128 ]
  %56 = phi double [ 0.000000e+00, %47 ], [ %113, %128 ]
  %57 = phi double [ 0.000000e+00, %47 ], [ %115, %128 ]
  %58 = phi double [ 0.000000e+00, %47 ], [ %101, %128 ]
  %59 = phi double [ 0.000000e+00, %47 ], [ %104, %128 ]
  %60 = phi double [ 0.000000e+00, %47 ], [ %107, %128 ]
  %61 = getelementptr inbounds [4 x double], ptr @__const._ZN3povL12bezier_valueEPA4_A4_A3_dddPdS4_.C, i64 0, i64 %51
  %62 = load double, ptr %61, align 8, !tbaa !38
  %63 = getelementptr inbounds [4 x double], ptr %6, i64 0, i64 %51
  %64 = load double, ptr %63, align 8, !tbaa !38
  %65 = and i64 %51, 4294967295
  %66 = xor i64 %65, 3
  %67 = getelementptr inbounds [4 x double], ptr %7, i64 0, i64 %66
  %68 = load double, ptr %67, align 8, !tbaa !38
  %69 = fmul double %64, %68
  %70 = getelementptr inbounds [4 x double], ptr %10, i64 0, i64 %51
  %71 = load double, ptr %70, align 8, !tbaa !38
  %72 = getelementptr inbounds [4 x double], ptr %11, i64 0, i64 %66
  %73 = load double, ptr %72, align 8, !tbaa !38
  %74 = fmul double %64, %73
  %75 = tail call double @llvm.fmuladd.f64(double %71, double %68, double %74)
  br label %76

76:                                               ; preds = %50, %76
  %77 = phi i64 [ 0, %50 ], [ %126, %76 ]
  %78 = phi double [ %52, %50 ], [ %123, %76 ]
  %79 = phi double [ %53, %50 ], [ %124, %76 ]
  %80 = phi double [ %54, %50 ], [ %125, %76 ]
  %81 = phi double [ %55, %50 ], [ %111, %76 ]
  %82 = phi double [ %56, %50 ], [ %113, %76 ]
  %83 = phi double [ %57, %50 ], [ %115, %76 ]
  %84 = phi double [ %58, %50 ], [ %101, %76 ]
  %85 = phi double [ %59, %50 ], [ %104, %76 ]
  %86 = phi double [ %60, %50 ], [ %107, %76 ]
  %87 = getelementptr inbounds [4 x double], ptr @__const._ZN3povL12bezier_valueEPA4_A4_A3_dddPdS4_.C, i64 0, i64 %77
  %88 = load double, ptr %87, align 8, !tbaa !38
  %89 = fmul double %62, %88
  %90 = getelementptr inbounds [4 x double], ptr %8, i64 0, i64 %77
  %91 = load double, ptr %90, align 8, !tbaa !38
  %92 = and i64 %77, 4294967295
  %93 = xor i64 %92, 3
  %94 = getelementptr inbounds [4 x double], ptr %9, i64 0, i64 %93
  %95 = load double, ptr %94, align 8, !tbaa !38
  %96 = fmul double %91, %95
  %97 = fmul double %89, %69
  %98 = fmul double %97, %96
  %99 = getelementptr inbounds [4 x [4 x [3 x double]]], ptr %0, i64 0, i64 %51, i64 %77
  %100 = load double, ptr %99, align 8, !tbaa !38
  %101 = tail call double @llvm.fmuladd.f64(double %98, double %100, double %84)
  store double %101, ptr %3, align 8, !tbaa !38
  %102 = getelementptr inbounds double, ptr %99, i64 1
  %103 = load double, ptr %102, align 8, !tbaa !38
  %104 = tail call double @llvm.fmuladd.f64(double %98, double %103, double %85)
  store double %104, ptr %48, align 8, !tbaa !38
  %105 = getelementptr inbounds double, ptr %99, i64 2
  %106 = load double, ptr %105, align 8, !tbaa !38
  %107 = tail call double @llvm.fmuladd.f64(double %98, double %106, double %86)
  store double %107, ptr %49, align 8, !tbaa !38
  %108 = fmul double %89, %96
  %109 = fmul double %108, %75
  %110 = load double, ptr %99, align 8, !tbaa !38
  %111 = tail call double @llvm.fmuladd.f64(double %109, double %110, double %81)
  %112 = load double, ptr %102, align 8, !tbaa !38
  %113 = tail call double @llvm.fmuladd.f64(double %109, double %112, double %82)
  %114 = load double, ptr %105, align 8, !tbaa !38
  %115 = tail call double @llvm.fmuladd.f64(double %109, double %114, double %83)
  %116 = getelementptr inbounds [4 x double], ptr %12, i64 0, i64 %77
  %117 = load double, ptr %116, align 8, !tbaa !38
  %118 = getelementptr inbounds [4 x double], ptr %13, i64 0, i64 %93
  %119 = load double, ptr %118, align 8, !tbaa !38
  %120 = fmul double %91, %119
  %121 = tail call double @llvm.fmuladd.f64(double %117, double %95, double %120)
  %122 = fmul double %97, %121
  %123 = tail call double @llvm.fmuladd.f64(double %122, double %110, double %78)
  %124 = tail call double @llvm.fmuladd.f64(double %122, double %112, double %79)
  %125 = tail call double @llvm.fmuladd.f64(double %122, double %114, double %80)
  %126 = add nuw nsw i64 %77, 1
  %127 = icmp eq i64 %126, 4
  br i1 %127, label %128, label %76, !llvm.loop !105

128:                                              ; preds = %76
  %129 = add nuw nsw i64 %51, 1
  %130 = icmp eq i64 %129, 4
  br i1 %130, label %131, label %50, !llvm.loop !106

131:                                              ; preds = %128
  %132 = fneg double %115
  %133 = fmul double %124, %132
  %134 = tail call double @llvm.fmuladd.f64(double %113, double %125, double %133)
  %135 = fneg double %111
  %136 = fmul double %125, %135
  %137 = tail call double @llvm.fmuladd.f64(double %115, double %123, double %136)
  %138 = fneg double %113
  %139 = fmul double %123, %138
  %140 = tail call double @llvm.fmuladd.f64(double %111, double %124, double %139)
  store double %134, ptr %4, align 8, !tbaa !38
  %141 = getelementptr inbounds double, ptr %4, i64 1
  store double %137, ptr %141, align 8, !tbaa !38
  %142 = getelementptr inbounds double, ptr %4, i64 2
  store double %140, ptr %142, align 8, !tbaa !38
  %143 = fmul double %137, %137
  %144 = tail call double @llvm.fmuladd.f64(double %134, double %134, double %143)
  %145 = tail call double @llvm.fmuladd.f64(double %140, double %140, double %144)
  %146 = fmul double %113, %113
  %147 = tail call double @llvm.fmuladd.f64(double %111, double %111, double %146)
  %148 = tail call noundef double @llvm.fmuladd.f64(double %115, double %115, double %147)
  %149 = fmul double %124, %124
  %150 = tail call double @llvm.fmuladd.f64(double %123, double %123, double %149)
  %151 = tail call noundef double @llvm.fmuladd.f64(double %125, double %125, double %150)
  %152 = fmul double %148, 1.000000e-10
  %153 = fmul double %152, %151
  %154 = fcmp ogt double %145, %153
  br i1 %154, label %155, label %164

155:                                              ; preds = %131
  %156 = tail call double @sqrt(double noundef %145) #11
  %157 = fdiv double 1.000000e+00, %156
  %158 = load double, ptr %4, align 8, !tbaa !38
  %159 = fmul double %158, %157
  store double %159, ptr %4, align 8, !tbaa !38
  %160 = load double, ptr %141, align 8, !tbaa !38
  %161 = fmul double %157, %160
  store double %161, ptr %141, align 8, !tbaa !38
  %162 = load double, ptr %142, align 8, !tbaa !38
  %163 = fmul double %157, %162
  br label %165

164:                                              ; preds = %131
  store double 1.000000e+00, ptr %4, align 8, !tbaa !38
  store double 0.000000e+00, ptr %141, align 8, !tbaa !38
  br label %165

165:                                              ; preds = %164, %155
  %166 = phi double [ 0.000000e+00, %164 ], [ %163, %155 ]
  store double %166, ptr %142, align 8, !tbaa !38
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %13) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #11
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

declare void @_ZN3pov8incstackEPNS_13istack_structE(ptr noundef) local_unnamed_addr #2

declare void @_ZN3pov11MTransPointEPdS0_PNS_16Transform_StructE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nofree nounwind memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
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
!34 = !{!35, !35, i64 0}
!35 = !{!"int", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C++ TBAA"}
!38 = !{!39, !39, i64 0}
!39 = !{!"double", !36, i64 0}
!40 = distinct !{!40, !41, !42}
!41 = !{!"llvm.loop.mustprogress"}
!42 = !{!"llvm.loop.unroll.disable"}
!43 = distinct !{!43, !41, !42}
!44 = distinct !{!44, !41, !42}
!45 = distinct !{!45, !41, !42}
!46 = !{!47, !35, i64 120}
!47 = !{!"_ZTSN3pov20Bicubic_Patch_StructE", !48, i64 0, !35, i64 8, !48, i64 16, !48, i64 24, !48, i64 32, !48, i64 40, !48, i64 48, !48, i64 56, !48, i64 64, !49, i64 72, !48, i64 96, !48, i64 104, !50, i64 112, !35, i64 116, !35, i64 120, !35, i64 124, !35, i64 128, !36, i64 136, !36, i64 520, !36, i64 584, !39, i64 608, !39, i64 616, !39, i64 624, !48, i64 632, !48, i64 640}
!48 = !{!"any pointer", !36, i64 0}
!49 = !{!"_ZTSN3pov19Bounding_Box_StructE", !36, i64 0, !36, i64 12}
!50 = !{!"float", !36, i64 0}
!51 = !{!47, !48, i64 632}
!52 = !{!53, !35, i64 0}
!53 = !{!"_ZTSN3pov18Bezier_Node_StructE", !35, i64 0, !36, i64 8, !39, i64 32, !35, i64 40, !48, i64 48}
!54 = !{!53, !48, i64 48}
!55 = !{!53, !35, i64 40}
!56 = !{!48, !48, i64 0}
!57 = distinct !{!57, !41, !42}
!58 = distinct !{!58, !41, !42}
!59 = distinct !{!59, !41, !42}
!60 = distinct !{!60, !41, !42}
!61 = distinct !{!61, !41, !42}
!62 = !{i32 0, i32 2}
!63 = !{!50, !50, i64 0}
!64 = !{!47, !35, i64 124}
!65 = !{!47, !35, i64 128}
!66 = !{!47, !35, i64 8}
!67 = !{!47, !48, i64 0}
!68 = !{!47, !39, i64 616}
!69 = !{!47, !39, i64 624}
!70 = distinct !{!70, !41, !42}
!71 = distinct !{!71, !41, !42}
!72 = distinct !{!72, !41, !42}
!73 = distinct !{!73, !41, !42}
!74 = distinct !{!74, !41, !42}
!75 = distinct !{!75, !41, !42}
!76 = distinct !{!76, !41, !42}
!77 = distinct !{!77, !41, !42}
!78 = !{!79, !79, i64 0}
!79 = !{!"long long", !36, i64 0}
!80 = !{!81, !50, i64 112}
!81 = !{!"_ZTSN3pov13Object_StructE", !48, i64 0, !35, i64 8, !48, i64 16, !48, i64 24, !48, i64 32, !48, i64 40, !48, i64 48, !48, i64 56, !48, i64 64, !49, i64 72, !48, i64 96, !48, i64 104, !50, i64 112, !35, i64 116}
!82 = !{!47, !50, i64 112}
!83 = !{!47, !48, i64 640}
!84 = distinct !{!84, !41, !42}
!85 = distinct !{!85, !41, !42}
!86 = distinct !{!86, !41, !42}
!87 = distinct !{!87, !41, !42}
!88 = distinct !{!88, !41, !42}
!89 = distinct !{!89, !41, !42}
!90 = distinct !{!90, !41, !42}
!91 = distinct !{!91, !41, !42}
!92 = distinct !{!92, !41, !42}
!93 = distinct !{!93, !41, !42}
!94 = !{!53, !39, i64 32}
!95 = distinct !{!95, !41, !42}
!96 = !{!97, !48, i64 8}
!97 = !{!"_ZTSN3pov13istack_structE", !48, i64 0, !48, i64 8, !35, i64 16, !35, i64 20}
!98 = !{!97, !35, i64 20}
!99 = !{!100, !39, i64 0}
!100 = !{!"_ZTSN3pov10istk_entryE", !39, i64 0, !36, i64 8, !36, i64 32, !36, i64 56, !36, i64 80, !48, i64 96, !35, i64 104, !35, i64 108, !39, i64 112, !39, i64 120, !39, i64 128, !39, i64 136, !39, i64 144, !39, i64 152, !39, i64 160, !39, i64 168, !39, i64 176, !48, i64 184, !48, i64 192}
!101 = !{!100, !48, i64 96}
!102 = !{!100, !48, i64 192}
!103 = !{i32 0, i32 3}
!104 = distinct !{!104, !41, !42}
!105 = distinct !{!105, !41, !42}
!106 = distinct !{!106, !41, !42}

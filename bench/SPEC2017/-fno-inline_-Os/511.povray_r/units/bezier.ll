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

$_ZN3pov13Assign_VectorEPdS0_ = comdat any

$_ZN3pov9Make_BBoxERNS_19Bounding_Box_StructEffffff = comdat any

$_ZN3pov11Make_VectorEPdddd = comdat any

$_ZSt3minIdERKT_S2_S2_ = comdat any

$_ZSt3maxIdERKT_S2_S2_ = comdat any

$_ZN3pov22Make_BBox_from_min_maxERNS_19Bounding_Box_StructEPdS2_ = comdat any

$_ZN3pov4VSubEPdPKdS2_ = comdat any

$_ZN3pov7VLengthERdPKd = comdat any

$_ZN3pov6VCrossEPdPKdS2_ = comdat any

$_ZN3pov7VSumSqrEPd = comdat any

$_ZN3pov13VInverseScaleEPdPKdd = comdat any

$_ZN3pov4VDotERdPKdS2_ = comdat any

$_ZN3pov5VHalfEPdPKdS2_ = comdat any

$_ZN3pov16Increase_CounterERx = comdat any

$_ZN3pov20push_normal_uv_entryEdPdS0_S0_PNS_13Object_StructEPNS_13istack_structE = comdat any

$_ZN3pov8VScaleEqEPdd = comdat any

$_ZN3pov6VScaleEPdPKdd = comdat any

$_ZN3pov4VAddEPdPKdS2_ = comdat any

$_ZN3pov6VAddEqEPdPKd = comdat any

$_ZN3pov12VAddScaledEqEPddPKd = comdat any

$_ZN3pov4itopEPNS_13istack_structE = comdat any

$_ZN3pov14Assign_UV_VectEPdS0_ = comdat any

$_ZN3pov9VEvaluateEPdPKdS2_ = comdat any

@.str = private unnamed_addr constant [11 x i8] c"bezier.cpp\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"bicubic patch\00", align 1
@_ZN3povL21Bicubic_Patch_MethodsE = internal global %"struct.pov::Method_Struct" { ptr @_ZN3povL31All_Bicubic_Patch_IntersectionsEPNS_13Object_StructEPNS_10Ray_StructEPNS_13istack_structE, ptr @_ZN3povL20Inside_Bicubic_PatchEPdPNS_13Object_StructE, ptr @_ZN3povL20Bicubic_Patch_NormalEPdPNS_13Object_StructEPNS_10istk_entryE, ptr @_ZN3povL21Bicubic_Patch_UVCoordEPdPNS_13Object_StructEPNS_10istk_entryE, ptr @_ZN3povL18Copy_Bicubic_PatchEPNS_13Object_StructE, ptr @_ZN3povL23Translate_Bicubic_PatchEPNS_13Object_StructEPdPNS_16Transform_StructE, ptr @_ZN3povL20Rotate_Bicubic_PatchEPNS_13Object_StructEPdPNS_16Transform_StructE, ptr @_ZN3povL19Scale_Bicubic_PatchEPNS_13Object_StructEPdPNS_16Transform_StructE, ptr @_ZN3povL23Transform_Bicubic_PatchEPNS_13Object_StructEPNS_16Transform_StructE, ptr @_ZN3povL20Invert_Bicubic_PatchEPNS_13Object_StructE, ptr @_ZN3povL21Destroy_Bicubic_PatchEPNS_13Object_StructE }, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"bezier node\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"bezier vertices\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"bezier children\00", align 1
@_ZN3pov5statsE = external global [123 x i64], align 16
@.str.5 = private unnamed_addr constant [51 x i8] c"Bad patch type in All_Bicubic_Patch_Intersections.\00", align 1
@__const._ZN3povL12bezier_valueEPA4_A4_A3_dddPdS4_.C = private unnamed_addr constant [4 x double] [double 1.000000e+00, double 3.000000e+00, double 3.000000e+00, double 1.000000e+00], align 16
@.str.6 = private unnamed_addr constant [39 x i8] c"Bad Node type in bezier_tree_walker().\00", align 1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN3pov23Precompute_Patch_ValuesEPNS_20Bicubic_Patch_StructE(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [16 x [3 x double]], align 16
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %2) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  store i32 0, ptr %3, align 4, !tbaa !34
  br label %4

4:                                                ; preds = %1, %14
  %5 = phi i64 [ 0, %1 ], [ %15, %14 ]
  %6 = shl nuw nsw i64 %5, 2
  br label %7

7:                                                ; preds = %4, %7
  %8 = phi i64 [ 0, %4 ], [ %12, %7 ]
  %9 = add nuw nsw i64 %8, %6
  %10 = getelementptr inbounds [16 x [3 x double]], ptr %2, i64 0, i64 %9
  %11 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %0, i64 0, i32 17, i64 %5, i64 %8
  call void @_ZN3pov13Assign_VectorEPdS0_(ptr noundef nonnull %10, ptr noundef nonnull %11) #13
  %12 = add nuw nsw i64 %8, 1
  %13 = icmp eq i64 %12, 4
  br i1 %13, label %14, label %7, !llvm.loop !38

14:                                               ; preds = %7
  %15 = add nuw nsw i64 %5, 1
  %16 = icmp eq i64 %15, 4
  br i1 %16, label %17, label %4, !llvm.loop !40

17:                                               ; preds = %14
  %18 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %0, i64 0, i32 17
  %19 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %0, i64 0, i32 19
  %20 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %0, i64 0, i32 20
  call fastcc void @_ZN3povL12find_averageEiPA3_dPdS2_(ptr noundef nonnull %2, ptr noundef nonnull %19, ptr noundef nonnull %20) #13
  %21 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %0, i64 0, i32 14
  %22 = load i32, ptr %21, align 8, !tbaa !41
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %31

24:                                               ; preds = %17
  %25 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %0, i64 0, i32 23
  %26 = load ptr, ptr %25, align 8, !tbaa !47
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  call fastcc void @_ZN3povL19bezier_tree_deleterEPNS_18Bezier_Node_StructE(ptr noundef nonnull %26) #13
  br label %29

29:                                               ; preds = %28, %24
  %30 = call fastcc noundef ptr @_ZN3povL19bezier_tree_builderEPNS_20Bicubic_Patch_StructEPA4_A4_A3_dddddiRi(ptr noundef nonnull %0, ptr noundef nonnull %18, double noundef 0.000000e+00, double noundef 1.000000e+00, double noundef 0.000000e+00, double noundef 1.000000e+00, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(4) %3) #13
  store ptr %30, ptr %25, align 8, !tbaa !47
  br label %31

31:                                               ; preds = %29, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %2) #12
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov13Assign_VectorEPdS0_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 comdat {
  %3 = load double, ptr %1, align 8, !tbaa !48
  store double %3, ptr %0, align 8, !tbaa !48
  %4 = getelementptr inbounds double, ptr %1, i64 1
  %5 = load double, ptr %4, align 8, !tbaa !48
  %6 = getelementptr inbounds double, ptr %0, i64 1
  store double %5, ptr %6, align 8, !tbaa !48
  %7 = getelementptr inbounds double, ptr %1, i64 2
  %8 = load double, ptr %7, align 8, !tbaa !48
  %9 = getelementptr inbounds double, ptr %0, i64 2
  store double %8, ptr %9, align 8, !tbaa !48
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define internal fastcc void @_ZN3povL12find_averageEiPA3_dPdS2_(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #2 !PGOFuncName !49 {
  br label %4

4:                                                ; preds = %3, %4
  %5 = phi i64 [ 0, %3 ], [ %14, %4 ]
  %6 = phi double [ 0.000000e+00, %3 ], [ %10, %4 ]
  %7 = phi <2 x double> [ zeroinitializer, %3 ], [ %13, %4 ]
  %8 = getelementptr inbounds [3 x double], ptr %0, i64 %5
  %9 = load double, ptr %8, align 8, !tbaa !48
  %10 = fadd double %6, %9
  %11 = getelementptr inbounds [3 x double], ptr %0, i64 %5, i64 1
  %12 = load <2 x double>, ptr %11, align 8, !tbaa !48
  %13 = fadd <2 x double> %7, %12
  %14 = add nuw nsw i64 %5, 1
  %15 = icmp eq i64 %14, 16
  br i1 %15, label %16, label %4, !llvm.loop !50

16:                                               ; preds = %4
  %17 = fmul double %10, 6.250000e-02
  %18 = extractelement <2 x double> %13, i64 0
  %19 = fmul double %18, 6.250000e-02
  %20 = extractelement <2 x double> %13, i64 1
  %21 = fmul double %20, 6.250000e-02
  br label %22

22:                                               ; preds = %16, %22
  %23 = phi i64 [ 0, %16 ], [ %39, %22 ]
  %24 = phi double [ 0.000000e+00, %16 ], [ %38, %22 ]
  %25 = getelementptr inbounds [3 x double], ptr %0, i64 %23
  %26 = load double, ptr %25, align 8, !tbaa !48
  %27 = fsub double %26, %17
  %28 = getelementptr inbounds [3 x double], ptr %0, i64 %23, i64 1
  %29 = load double, ptr %28, align 8, !tbaa !48
  %30 = fsub double %29, %19
  %31 = getelementptr inbounds [3 x double], ptr %0, i64 %23, i64 2
  %32 = load double, ptr %31, align 8, !tbaa !48
  %33 = fsub double %32, %21
  %34 = fmul double %30, %30
  %35 = tail call double @llvm.fmuladd.f64(double %27, double %27, double %34)
  %36 = tail call double @llvm.fmuladd.f64(double %33, double %33, double %35)
  %37 = fcmp ogt double %36, %24
  %38 = select i1 %37, double %36, double %24
  %39 = add nuw nsw i64 %23, 1
  %40 = icmp eq i64 %39, 16
  br i1 %40, label %41, label %22, !llvm.loop !51

41:                                               ; preds = %22
  tail call void @_ZN3pov11Make_VectorEPdddd(ptr noundef %1, double noundef %17, double noundef %19, double noundef %21) #13
  store double %38, ptr %2, align 8, !tbaa !48
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal fastcc void @_ZN3povL19bezier_tree_deleterEPNS_18Bezier_Node_StructE(ptr noundef %0) unnamed_addr #0 !PGOFuncName !52 {
  %2 = load i32, ptr %0, align 8, !tbaa !53
  switch i32 %2, label %21 [
    i32 0, label %3
    i32 1, label %18
  ]

3:                                                ; preds = %1
  %4 = getelementptr inbounds %"struct.pov::Bezier_Node_Struct", ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !55
  %6 = getelementptr inbounds %"struct.pov::Bezier_Node_Struct", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !56
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %3, %9
  %10 = phi i64 [ %13, %9 ], [ 0, %3 ]
  %11 = getelementptr inbounds [4 x ptr], ptr %5, i64 0, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !57
  tail call fastcc void @_ZN3povL19bezier_tree_deleterEPNS_18Bezier_Node_StructE(ptr noundef %12) #13
  %13 = add nuw nsw i64 %10, 1
  %14 = load i32, ptr %6, align 8, !tbaa !56
  %15 = sext i32 %14 to i64
  %16 = icmp slt i64 %13, %15
  br i1 %16, label %9, label %17, !llvm.loop !58

17:                                               ; preds = %9, %3
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef %5, ptr noundef nonnull @.str, i32 noundef 1532) #13
  br label %21

18:                                               ; preds = %1
  %19 = getelementptr inbounds %"struct.pov::Bezier_Node_Struct", ptr %0, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !55
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef %20, ptr noundef nonnull @.str, i32 noundef 1540) #13
  store ptr null, ptr %19, align 8, !tbaa !55
  br label %21

21:                                               ; preds = %1, %18, %17
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef nonnull %0, ptr noundef nonnull @.str, i32 noundef 1546) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal fastcc noundef ptr @_ZN3povL19bezier_tree_builderEPNS_20Bicubic_Patch_StructEPA4_A4_A3_dddddiRi(ptr noundef %0, ptr noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5, i32 noundef %6, ptr noundef nonnull align 4 dereferenceable(4) %7) unnamed_addr #0 !PGOFuncName !59 {
  %9 = alloca [4 x [4 x [3 x double]]], align 16
  %10 = alloca [4 x [4 x [3 x double]]], align 16
  %11 = alloca [4 x [4 x [3 x double]]], align 16
  %12 = alloca [4 x [4 x [3 x double]]], align 16
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %9) #12
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %10) #12
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %11) #12
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %12) #12
  %13 = tail call fastcc noundef ptr @_ZN3povL22create_new_bezier_nodeEv() #13
  %14 = load i32, ptr %7, align 4, !tbaa !34
  %15 = icmp slt i32 %14, %6
  br i1 %15, label %16, label %17

16:                                               ; preds = %8
  store i32 %6, ptr %7, align 4, !tbaa !34
  br label %17

17:                                               ; preds = %16, %8
  %18 = getelementptr inbounds %"struct.pov::Bezier_Node_Struct", ptr %13, i64 0, i32 1
  %19 = getelementptr inbounds %"struct.pov::Bezier_Node_Struct", ptr %13, i64 0, i32 2
  tail call fastcc void @_ZN3povL22bezier_bounding_sphereEPA4_A4_A3_dPdS4_(ptr noundef %1, ptr noundef nonnull %18, ptr noundef nonnull %19) #13
  %20 = tail call fastcc noundef i32 @_ZN3povL11flat_enoughEPNS_20Bicubic_Patch_StructEPA4_A4_A3_d(ptr noundef %0, ptr noundef %1) #13, !range !60
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %36, label %22

22:                                               ; preds = %17
  store i32 1, ptr %13, align 8, !tbaa !53
  %23 = tail call fastcc noundef ptr @_ZN3povL26create_bezier_vertex_blockEv() #13
  %24 = getelementptr inbounds %"struct.pov::Bezier_Vertices_Struct", ptr %23, i64 0, i32 1
  tail call void @_ZN3pov13Assign_VectorEPdS0_(ptr noundef nonnull %24, ptr noundef %1) #13
  %25 = getelementptr inbounds %"struct.pov::Bezier_Vertices_Struct", ptr %23, i64 0, i32 1, i64 1
  %26 = getelementptr inbounds [4 x [3 x double]], ptr %1, i64 0, i64 3
  tail call void @_ZN3pov13Assign_VectorEPdS0_(ptr noundef nonnull %25, ptr noundef nonnull %26) #13
  %27 = getelementptr inbounds %"struct.pov::Bezier_Vertices_Struct", ptr %23, i64 0, i32 1, i64 2
  %28 = getelementptr inbounds [4 x [4 x [3 x double]]], ptr %1, i64 0, i64 3
  %29 = getelementptr inbounds [4 x [4 x [3 x double]]], ptr %1, i64 0, i64 3, i64 3
  tail call void @_ZN3pov13Assign_VectorEPdS0_(ptr noundef nonnull %27, ptr noundef nonnull %29) #13
  %30 = getelementptr inbounds %"struct.pov::Bezier_Vertices_Struct", ptr %23, i64 0, i32 1, i64 3
  tail call void @_ZN3pov13Assign_VectorEPdS0_(ptr noundef nonnull %30, ptr noundef nonnull %28) #13
  %31 = insertelement <4 x double> poison, double %2, i64 0
  %32 = insertelement <4 x double> %31, double %3, i64 1
  %33 = insertelement <4 x double> %32, double %4, i64 2
  %34 = insertelement <4 x double> %33, double %5, i64 3
  %35 = fptrunc <4 x double> %34 to <4 x float>
  store <4 x float> %35, ptr %23, align 8, !tbaa !61
  br label %92

36:                                               ; preds = %17
  %37 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %0, i64 0, i32 15
  %38 = load i32, ptr %37, align 4, !tbaa !62
  %39 = icmp sgt i32 %38, %6
  %40 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %0, i64 0, i32 16
  %41 = load i32, ptr %40, align 8, !tbaa !63
  %42 = icmp sgt i32 %41, %6
  br i1 %39, label %67, label %43

43:                                               ; preds = %36
  br i1 %42, label %58, label %44

44:                                               ; preds = %43
  store i32 1, ptr %13, align 8, !tbaa !53
  %45 = tail call fastcc noundef ptr @_ZN3povL26create_bezier_vertex_blockEv() #13
  %46 = getelementptr inbounds %"struct.pov::Bezier_Vertices_Struct", ptr %45, i64 0, i32 1
  tail call void @_ZN3pov13Assign_VectorEPdS0_(ptr noundef nonnull %46, ptr noundef %1) #13
  %47 = getelementptr inbounds %"struct.pov::Bezier_Vertices_Struct", ptr %45, i64 0, i32 1, i64 1
  %48 = getelementptr inbounds [4 x [3 x double]], ptr %1, i64 0, i64 3
  tail call void @_ZN3pov13Assign_VectorEPdS0_(ptr noundef nonnull %47, ptr noundef nonnull %48) #13
  %49 = getelementptr inbounds %"struct.pov::Bezier_Vertices_Struct", ptr %45, i64 0, i32 1, i64 2
  %50 = getelementptr inbounds [4 x [4 x [3 x double]]], ptr %1, i64 0, i64 3
  %51 = getelementptr inbounds [4 x [4 x [3 x double]]], ptr %1, i64 0, i64 3, i64 3
  tail call void @_ZN3pov13Assign_VectorEPdS0_(ptr noundef nonnull %49, ptr noundef nonnull %51) #13
  %52 = getelementptr inbounds %"struct.pov::Bezier_Vertices_Struct", ptr %45, i64 0, i32 1, i64 3
  tail call void @_ZN3pov13Assign_VectorEPdS0_(ptr noundef nonnull %52, ptr noundef nonnull %50) #13
  %53 = insertelement <4 x double> poison, double %2, i64 0
  %54 = insertelement <4 x double> %53, double %3, i64 1
  %55 = insertelement <4 x double> %54, double %4, i64 2
  %56 = insertelement <4 x double> %55, double %5, i64 3
  %57 = fptrunc <4 x double> %56 to <4 x float>
  store <4 x float> %57, ptr %45, align 8, !tbaa !61
  br label %92

58:                                               ; preds = %43
  call fastcc void @_ZN3povL20bezier_split_up_downEPA4_A4_A3_dS3_S3_(ptr noundef %1, ptr noundef nonnull %9, ptr noundef nonnull %11) #13
  store i32 0, ptr %13, align 8, !tbaa !53
  %59 = call fastcc noundef ptr @_ZN3povL25create_bezier_child_blockEv() #13
  %60 = fadd double %4, %5
  %61 = fmul double %60, 5.000000e-01
  %62 = add nsw i32 %6, 1
  %63 = call fastcc noundef ptr @_ZN3povL19bezier_tree_builderEPNS_20Bicubic_Patch_StructEPA4_A4_A3_dddddiRi(ptr noundef nonnull %0, ptr noundef nonnull %9, double noundef %2, double noundef %3, double noundef %4, double noundef %61, i32 noundef %62, ptr noundef nonnull align 4 dereferenceable(4) %7) #13
  store ptr %63, ptr %59, align 8, !tbaa !57
  %64 = call fastcc noundef ptr @_ZN3povL19bezier_tree_builderEPNS_20Bicubic_Patch_StructEPA4_A4_A3_dddddiRi(ptr noundef nonnull %0, ptr noundef nonnull %11, double noundef %2, double noundef %3, double noundef %61, double noundef %5, i32 noundef %62, ptr noundef nonnull align 4 dereferenceable(4) %7) #13
  %65 = getelementptr inbounds [4 x ptr], ptr %59, i64 0, i64 1
  store ptr %64, ptr %65, align 8, !tbaa !57
  %66 = getelementptr inbounds %"struct.pov::Bezier_Node_Struct", ptr %13, i64 0, i32 3
  store i32 2, ptr %66, align 8, !tbaa !56
  br label %92

67:                                               ; preds = %36
  call fastcc void @_ZN3povL23bezier_split_left_rightEPA4_A4_A3_dS3_S3_(ptr noundef %1, ptr noundef nonnull %9, ptr noundef nonnull %10) #13
  br i1 %42, label %77, label %68

68:                                               ; preds = %67
  store i32 0, ptr %13, align 8, !tbaa !53
  %69 = call fastcc noundef ptr @_ZN3povL25create_bezier_child_blockEv() #13
  %70 = fadd double %2, %3
  %71 = fmul double %70, 5.000000e-01
  %72 = add nsw i32 %6, 1
  %73 = call fastcc noundef ptr @_ZN3povL19bezier_tree_builderEPNS_20Bicubic_Patch_StructEPA4_A4_A3_dddddiRi(ptr noundef nonnull %0, ptr noundef nonnull %9, double noundef %2, double noundef %71, double noundef %4, double noundef %5, i32 noundef %72, ptr noundef nonnull align 4 dereferenceable(4) %7) #13
  store ptr %73, ptr %69, align 8, !tbaa !57
  %74 = call fastcc noundef ptr @_ZN3povL19bezier_tree_builderEPNS_20Bicubic_Patch_StructEPA4_A4_A3_dddddiRi(ptr noundef nonnull %0, ptr noundef nonnull %10, double noundef %71, double noundef %3, double noundef %4, double noundef %5, i32 noundef %72, ptr noundef nonnull align 4 dereferenceable(4) %7) #13
  %75 = getelementptr inbounds [4 x ptr], ptr %69, i64 0, i64 1
  store ptr %74, ptr %75, align 8, !tbaa !57
  %76 = getelementptr inbounds %"struct.pov::Bezier_Node_Struct", ptr %13, i64 0, i32 3
  store i32 2, ptr %76, align 8, !tbaa !56
  br label %92

77:                                               ; preds = %67
  call fastcc void @_ZN3povL20bezier_split_up_downEPA4_A4_A3_dS3_S3_(ptr noundef nonnull %9, ptr noundef nonnull %9, ptr noundef nonnull %11) #13
  call fastcc void @_ZN3povL20bezier_split_up_downEPA4_A4_A3_dS3_S3_(ptr noundef nonnull %10, ptr noundef nonnull %10, ptr noundef nonnull %12) #13
  store i32 0, ptr %13, align 8, !tbaa !53
  %78 = call fastcc noundef ptr @_ZN3povL25create_bezier_child_blockEv() #13
  %79 = fadd double %2, %3
  %80 = fmul double %79, 5.000000e-01
  %81 = fadd double %4, %5
  %82 = fmul double %81, 5.000000e-01
  %83 = add nsw i32 %6, 1
  %84 = call fastcc noundef ptr @_ZN3povL19bezier_tree_builderEPNS_20Bicubic_Patch_StructEPA4_A4_A3_dddddiRi(ptr noundef nonnull %0, ptr noundef nonnull %9, double noundef %2, double noundef %80, double noundef %4, double noundef %82, i32 noundef %83, ptr noundef nonnull align 4 dereferenceable(4) %7) #13
  store ptr %84, ptr %78, align 8, !tbaa !57
  %85 = call fastcc noundef ptr @_ZN3povL19bezier_tree_builderEPNS_20Bicubic_Patch_StructEPA4_A4_A3_dddddiRi(ptr noundef nonnull %0, ptr noundef nonnull %11, double noundef %2, double noundef %80, double noundef %82, double noundef %5, i32 noundef %83, ptr noundef nonnull align 4 dereferenceable(4) %7) #13
  %86 = getelementptr inbounds [4 x ptr], ptr %78, i64 0, i64 1
  store ptr %85, ptr %86, align 8, !tbaa !57
  %87 = call fastcc noundef ptr @_ZN3povL19bezier_tree_builderEPNS_20Bicubic_Patch_StructEPA4_A4_A3_dddddiRi(ptr noundef nonnull %0, ptr noundef nonnull %10, double noundef %80, double noundef %3, double noundef %4, double noundef %82, i32 noundef %83, ptr noundef nonnull align 4 dereferenceable(4) %7) #13
  %88 = getelementptr inbounds [4 x ptr], ptr %78, i64 0, i64 2
  store ptr %87, ptr %88, align 8, !tbaa !57
  %89 = call fastcc noundef ptr @_ZN3povL19bezier_tree_builderEPNS_20Bicubic_Patch_StructEPA4_A4_A3_dddddiRi(ptr noundef nonnull %0, ptr noundef nonnull %12, double noundef %80, double noundef %3, double noundef %82, double noundef %5, i32 noundef %83, ptr noundef nonnull align 4 dereferenceable(4) %7) #13
  %90 = getelementptr inbounds [4 x ptr], ptr %78, i64 0, i64 3
  store ptr %89, ptr %90, align 8, !tbaa !57
  %91 = getelementptr inbounds %"struct.pov::Bezier_Node_Struct", ptr %13, i64 0, i32 3
  store i32 4, ptr %91, align 8, !tbaa !56
  br label %92

92:                                               ; preds = %58, %44, %77, %68, %22
  %93 = phi ptr [ %59, %58 ], [ %45, %44 ], [ %78, %77 ], [ %69, %68 ], [ %23, %22 ]
  %94 = getelementptr inbounds %"struct.pov::Bezier_Node_Struct", ptr %13, i64 0, i32 4
  store ptr %93, ptr %94, align 8, !tbaa !55
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %12) #12
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %11) #12
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %9) #12
  ret ptr %13
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN3pov20Create_Bicubic_PatchEv() local_unnamed_addr #0 {
  %1 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef 648, ptr noundef nonnull @.str, i32 noundef 2079, ptr noundef nonnull @.str.1) #13
  %2 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %1, i64 0, i32 1
  store i32 1, ptr %2, align 8, !tbaa !64
  store ptr @_ZN3povL21Bicubic_Patch_MethodsE, ptr %1, align 8, !tbaa !65
  %3 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %1, i64 0, i32 2
  %4 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %1, i64 0, i32 10
  %5 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %1, i64 0, i32 9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  tail call void @_ZN3pov9Make_BBoxERNS_19Bounding_Box_StructEffffff(ptr noundef nonnull align 4 dereferenceable(24) %5, float noundef -1.000000e+10, float noundef -1.000000e+10, float noundef -1.000000e+10, float noundef 2.000000e+10, float noundef 2.000000e+10, float noundef 2.000000e+10) #13
  %6 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %1, i64 0, i32 14
  store i32 -1, ptr %6, align 8, !tbaa !41
  %7 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %1, i64 0, i32 15
  store i32 0, ptr %7, align 4, !tbaa !62
  %8 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %1, i64 0, i32 16
  store i32 0, ptr %8, align 8, !tbaa !63
  %9 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %1, i64 0, i32 21
  store <2 x double> <double 0.000000e+00, double 1.000000e-02>, ptr %9, align 8, !tbaa !48
  %10 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %1, i64 0, i32 23
  %11 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %1, i64 0, i32 18
  %12 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %1, i64 0, i32 18, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  store <2 x double> <double 1.000000e+00, double 0.000000e+00>, ptr %12, align 8, !tbaa !48
  %13 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %1, i64 0, i32 18, i64 2
  store <2 x double> <double 1.000000e+00, double 1.000000e+00>, ptr %13, align 8, !tbaa !48
  %14 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %1, i64 0, i32 18, i64 3
  store <2 x double> <double 0.000000e+00, double 1.000000e+00>, ptr %14, align 8, !tbaa !48
  ret ptr %1
}

; Function Attrs: optsize
declare noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov9Make_BBoxERNS_19Bounding_Box_StructEffffff(ptr noundef nonnull align 4 dereferenceable(24) %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, float noundef %6) local_unnamed_addr #2 comdat {
  store float %1, ptr %0, align 4, !tbaa !61
  %8 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 1
  store float %2, ptr %8, align 4, !tbaa !61
  %9 = getelementptr inbounds [3 x float], ptr %0, i64 0, i64 2
  store float %3, ptr %9, align 4, !tbaa !61
  %10 = getelementptr inbounds %"struct.pov::Bounding_Box_Struct", ptr %0, i64 0, i32 1
  store float %4, ptr %10, align 4, !tbaa !61
  %11 = getelementptr inbounds %"struct.pov::Bounding_Box_Struct", ptr %0, i64 0, i32 1, i64 1
  store float %5, ptr %11, align 4, !tbaa !61
  %12 = getelementptr inbounds %"struct.pov::Bounding_Box_Struct", ptr %0, i64 0, i32 1, i64 2
  store float %6, ptr %12, align 4, !tbaa !61
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN3pov26Compute_Bicubic_Patch_BBoxEPNS_20Bicubic_Patch_StructE(ptr noundef %0) local_unnamed_addr #2 {
  %2 = alloca [3 x double], align 16
  %3 = alloca [3 x double], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #12
  call void @_ZN3pov11Make_VectorEPdddd(ptr noundef nonnull %2, double noundef 2.000000e+10, double noundef 2.000000e+10, double noundef 2.000000e+10) #13
  call void @_ZN3pov11Make_VectorEPdddd(ptr noundef nonnull %3, double noundef -2.000000e+10, double noundef -2.000000e+10, double noundef -2.000000e+10) #13
  %4 = getelementptr inbounds [3 x double], ptr %2, i64 0, i64 1
  %5 = getelementptr inbounds [3 x double], ptr %2, i64 0, i64 2
  %6 = getelementptr inbounds [3 x double], ptr %3, i64 0, i64 1
  %7 = getelementptr inbounds [3 x double], ptr %3, i64 0, i64 2
  br label %8

8:                                                ; preds = %1, %29
  %9 = phi i64 [ 0, %1 ], [ %30, %29 ]
  br label %10

10:                                               ; preds = %8, %10
  %11 = phi i64 [ 0, %8 ], [ %27, %10 ]
  %12 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %0, i64 0, i32 17, i64 %9, i64 %11
  %13 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %12) #13
  %14 = load double, ptr %13, align 8, !tbaa !48
  store double %14, ptr %2, align 16, !tbaa !48
  %15 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %0, i64 0, i32 17, i64 %9, i64 %11, i64 1
  %16 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %15) #13
  %17 = load double, ptr %16, align 8, !tbaa !48
  store double %17, ptr %4, align 8, !tbaa !48
  %18 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %0, i64 0, i32 17, i64 %9, i64 %11, i64 2
  %19 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %18) #13
  %20 = load double, ptr %19, align 8, !tbaa !48
  store double %20, ptr %5, align 16, !tbaa !48
  %21 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %12) #13
  %22 = load double, ptr %21, align 8, !tbaa !48
  store double %22, ptr %3, align 16, !tbaa !48
  %23 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %15) #13
  %24 = load double, ptr %23, align 8, !tbaa !48
  store double %24, ptr %6, align 8, !tbaa !48
  %25 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %18) #13
  %26 = load double, ptr %25, align 8, !tbaa !48
  store double %26, ptr %7, align 16, !tbaa !48
  %27 = add nuw nsw i64 %11, 1
  %28 = icmp eq i64 %27, 4
  br i1 %28, label %29, label %10, !llvm.loop !66

29:                                               ; preds = %10
  %30 = add nuw nsw i64 %9, 1
  %31 = icmp eq i64 %30, 4
  br i1 %31, label %32, label %8, !llvm.loop !67

32:                                               ; preds = %29
  %33 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %0, i64 0, i32 9
  call void @_ZN3pov22Make_BBox_from_min_maxERNS_19Bounding_Box_StructEPdS2_(ptr noundef nonnull align 4 dereferenceable(24) %33, ptr noundef nonnull %2, ptr noundef nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov11Make_VectorEPdddd(ptr noundef %0, double noundef %1, double noundef %2, double noundef %3) local_unnamed_addr #2 comdat {
  store double %1, ptr %0, align 8, !tbaa !48
  %5 = getelementptr inbounds double, ptr %0, i64 1
  store double %2, ptr %5, align 8, !tbaa !48
  %6 = getelementptr inbounds double, ptr %0, i64 2
  store double %3, ptr %6, align 8, !tbaa !48
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat {
  %3 = load double, ptr %1, align 8, !tbaa !48
  %4 = load double, ptr %0, align 8, !tbaa !48
  %5 = fcmp olt double %3, %4
  %6 = select i1 %5, ptr %1, ptr %0
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxIdERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat {
  %3 = load double, ptr %0, align 8, !tbaa !48
  %4 = load double, ptr %1, align 8, !tbaa !48
  %5 = fcmp olt double %3, %4
  %6 = select i1 %5, ptr %1, ptr %0
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov22Make_BBox_from_min_maxERNS_19Bounding_Box_StructEPdS2_(ptr noundef nonnull align 4 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat {
  %4 = load double, ptr %1, align 8, !tbaa !48
  %5 = getelementptr inbounds double, ptr %1, i64 1
  %6 = load double, ptr %2, align 8, !tbaa !48
  %7 = fsub double %6, %4
  %8 = insertelement <4 x double> poison, double %4, i64 0
  %9 = getelementptr inbounds double, ptr %2, i64 1
  %10 = getelementptr inbounds %"struct.pov::Bounding_Box_Struct", ptr %0, i64 0, i32 1, i64 1
  %11 = load <2 x double>, ptr %5, align 8, !tbaa !48
  %12 = shufflevector <2 x double> %11, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %13 = shufflevector <4 x double> %8, <4 x double> %12, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %14 = insertelement <4 x double> %13, double %7, i64 3
  %15 = fptrunc <4 x double> %14 to <4 x float>
  store <4 x float> %15, ptr %0, align 4, !tbaa !61
  %16 = load <2 x double>, ptr %9, align 8, !tbaa !48
  %17 = fsub <2 x double> %16, %11
  %18 = fptrunc <2 x double> %17 to <2 x float>
  store <2 x float> %18, ptr %10, align 4, !tbaa !61
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: mustprogress noinline optsize uwtable
define internal fastcc noundef ptr @_ZN3povL22create_new_bezier_nodeEv() unnamed_addr #0 !PGOFuncName !68 {
  %1 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef 56, ptr noundef nonnull @.str, i32 noundef 142, ptr noundef nonnull @.str.2) #13
  %2 = getelementptr inbounds %"struct.pov::Bezier_Node_Struct", ptr %1, i64 0, i32 4
  store ptr null, ptr %2, align 8, !tbaa !55
  ret ptr %1
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define internal fastcc void @_ZN3povL22bezier_bounding_sphereEPA4_A4_A3_dPdS4_(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #2 !PGOFuncName !69 {
  br label %4

4:                                                ; preds = %3, %20
  %5 = phi i64 [ 0, %3 ], [ %21, %20 ]
  %6 = phi double [ 0.000000e+00, %3 ], [ %14, %20 ]
  %7 = phi <2 x double> [ zeroinitializer, %3 ], [ %17, %20 ]
  br label %8

8:                                                ; preds = %4, %8
  %9 = phi i64 [ 0, %4 ], [ %18, %8 ]
  %10 = phi double [ %6, %4 ], [ %14, %8 ]
  %11 = phi <2 x double> [ %7, %4 ], [ %17, %8 ]
  %12 = getelementptr inbounds [4 x [4 x [3 x double]]], ptr %0, i64 0, i64 %5, i64 %9
  %13 = load double, ptr %12, align 8, !tbaa !48
  %14 = fadd double %10, %13
  %15 = getelementptr inbounds [4 x [4 x [3 x double]]], ptr %0, i64 0, i64 %5, i64 %9, i64 1
  %16 = load <2 x double>, ptr %15, align 8, !tbaa !48
  %17 = fadd <2 x double> %11, %16
  %18 = add nuw nsw i64 %9, 1
  %19 = icmp eq i64 %18, 4
  br i1 %19, label %20, label %8, !llvm.loop !70

20:                                               ; preds = %8
  %21 = add nuw nsw i64 %5, 1
  %22 = icmp eq i64 %21, 4
  br i1 %22, label %23, label %4, !llvm.loop !71

23:                                               ; preds = %20
  %24 = fmul double %14, 6.250000e-02
  %25 = extractelement <2 x double> %17, i64 0
  %26 = fmul double %25, 6.250000e-02
  %27 = extractelement <2 x double> %17, i64 1
  %28 = fmul double %27, 6.250000e-02
  br label %29

29:                                               ; preds = %23, %51
  %30 = phi i64 [ 0, %23 ], [ %52, %51 ]
  %31 = phi double [ 0.000000e+00, %23 ], [ %48, %51 ]
  br label %32

32:                                               ; preds = %29, %32
  %33 = phi i64 [ 0, %29 ], [ %49, %32 ]
  %34 = phi double [ %31, %29 ], [ %48, %32 ]
  %35 = getelementptr inbounds [4 x [4 x [3 x double]]], ptr %0, i64 0, i64 %30, i64 %33
  %36 = load double, ptr %35, align 8, !tbaa !48
  %37 = fsub double %36, %24
  %38 = getelementptr inbounds [4 x [4 x [3 x double]]], ptr %0, i64 0, i64 %30, i64 %33, i64 1
  %39 = load double, ptr %38, align 8, !tbaa !48
  %40 = fsub double %39, %26
  %41 = getelementptr inbounds [4 x [4 x [3 x double]]], ptr %0, i64 0, i64 %30, i64 %33, i64 2
  %42 = load double, ptr %41, align 8, !tbaa !48
  %43 = fsub double %42, %28
  %44 = fmul double %40, %40
  %45 = tail call double @llvm.fmuladd.f64(double %37, double %37, double %44)
  %46 = tail call double @llvm.fmuladd.f64(double %43, double %43, double %45)
  %47 = fcmp ogt double %46, %34
  %48 = select i1 %47, double %46, double %34
  %49 = add nuw nsw i64 %33, 1
  %50 = icmp eq i64 %49, 4
  br i1 %50, label %51, label %32, !llvm.loop !72

51:                                               ; preds = %32
  %52 = add nuw nsw i64 %30, 1
  %53 = icmp eq i64 %52, 4
  br i1 %53, label %54, label %29, !llvm.loop !73

54:                                               ; preds = %51
  tail call void @_ZN3pov11Make_VectorEPdddd(ptr noundef %1, double noundef %24, double noundef %26, double noundef %28) #13
  store double %48, ptr %2, align 8, !tbaa !48
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define internal fastcc noundef i32 @_ZN3povL11flat_enoughEPNS_20Bicubic_Patch_StructEPA4_A4_A3_d(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #2 !PGOFuncName !74 {
  %3 = tail call fastcc noundef double @_ZN3povL27determine_subpatch_flatnessEPA4_A4_A3_d(ptr noundef %1) #13
  %4 = fcmp olt double %3, 0.000000e+00
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %0, i64 0, i32 21
  %7 = load double, ptr %6, align 8, !tbaa !75
  %8 = fcmp olt double %3, %7
  %9 = zext i1 %8 to i32
  br label %10

10:                                               ; preds = %5, %2
  %11 = phi i32 [ 0, %2 ], [ %9, %5 ]
  ret i32 %11
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal fastcc noundef ptr @_ZN3povL26create_bezier_vertex_blockEv() unnamed_addr #0 !PGOFuncName !76 {
  %1 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef 112, ptr noundef nonnull @.str, i32 noundef 181, ptr noundef nonnull @.str.3) #13
  ret ptr %1
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define internal fastcc void @_ZN3povL20bezier_split_up_downEPA4_A4_A3_dS3_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 !PGOFuncName !77 {
  %4 = alloca [4 x [3 x double]], align 16
  %5 = alloca [4 x [3 x double]], align 16
  %6 = alloca [3 x double], align 16
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #12
  %7 = getelementptr inbounds [4 x [3 x double]], ptr %4, i64 0, i64 1
  %8 = getelementptr inbounds [4 x [3 x double]], ptr %4, i64 0, i64 2
  %9 = getelementptr inbounds [4 x [3 x double]], ptr %5, i64 0, i64 2
  %10 = getelementptr inbounds [4 x [3 x double]], ptr %5, i64 0, i64 1
  %11 = getelementptr inbounds [4 x [3 x double]], ptr %4, i64 0, i64 3
  %12 = getelementptr inbounds [4 x [3 x double]], ptr %5, i64 0, i64 3
  br label %13

13:                                               ; preds = %3, %27
  %14 = phi i64 [ 0, %3 ], [ %28, %27 ]
  %15 = getelementptr inbounds [4 x [4 x [3 x double]]], ptr %0, i64 0, i64 %14
  call void @_ZN3pov13Assign_VectorEPdS0_(ptr noundef nonnull %4, ptr noundef %15) #13
  %16 = getelementptr inbounds [4 x [4 x [3 x double]]], ptr %0, i64 0, i64 %14, i64 1
  call void @_ZN3pov5VHalfEPdPKdS2_(ptr noundef nonnull %7, ptr noundef %15, ptr noundef nonnull %16) #13
  %17 = getelementptr inbounds [4 x [4 x [3 x double]]], ptr %0, i64 0, i64 %14, i64 2
  call void @_ZN3pov5VHalfEPdPKdS2_(ptr noundef nonnull %6, ptr noundef nonnull %16, ptr noundef nonnull %17) #13
  call void @_ZN3pov5VHalfEPdPKdS2_(ptr noundef nonnull %8, ptr noundef nonnull %7, ptr noundef nonnull %6) #13
  %18 = getelementptr inbounds [4 x [4 x [3 x double]]], ptr %0, i64 0, i64 %14, i64 3
  call void @_ZN3pov5VHalfEPdPKdS2_(ptr noundef nonnull %9, ptr noundef nonnull %17, ptr noundef nonnull %18) #13
  call void @_ZN3pov5VHalfEPdPKdS2_(ptr noundef nonnull %10, ptr noundef nonnull %6, ptr noundef nonnull %9) #13
  call void @_ZN3pov5VHalfEPdPKdS2_(ptr noundef nonnull %11, ptr noundef nonnull %8, ptr noundef nonnull %10) #13
  call void @_ZN3pov13Assign_VectorEPdS0_(ptr noundef nonnull %5, ptr noundef nonnull %11) #13
  call void @_ZN3pov13Assign_VectorEPdS0_(ptr noundef nonnull %12, ptr noundef nonnull %18) #13
  br label %19

19:                                               ; preds = %13, %19
  %20 = phi i64 [ 0, %13 ], [ %25, %19 ]
  %21 = getelementptr inbounds [4 x [4 x [3 x double]]], ptr %1, i64 0, i64 %14, i64 %20
  %22 = getelementptr inbounds [4 x [3 x double]], ptr %4, i64 0, i64 %20
  call void @_ZN3pov13Assign_VectorEPdS0_(ptr noundef %21, ptr noundef nonnull %22) #13
  %23 = getelementptr inbounds [4 x [4 x [3 x double]]], ptr %2, i64 0, i64 %14, i64 %20
  %24 = getelementptr inbounds [4 x [3 x double]], ptr %5, i64 0, i64 %20
  call void @_ZN3pov13Assign_VectorEPdS0_(ptr noundef %23, ptr noundef nonnull %24) #13
  %25 = add nuw nsw i64 %20, 1
  %26 = icmp eq i64 %25, 4
  br i1 %26, label %27, label %19, !llvm.loop !78

27:                                               ; preds = %19
  %28 = add nuw nsw i64 %14, 1
  %29 = icmp eq i64 %28, 4
  br i1 %29, label %30, label %13, !llvm.loop !79

30:                                               ; preds = %27
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %4) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal fastcc noundef ptr @_ZN3povL25create_bezier_child_blockEv() unnamed_addr #0 !PGOFuncName !80 {
  %1 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef 32, ptr noundef nonnull @.str, i32 noundef 218, ptr noundef nonnull @.str.4) #13
  ret ptr %1
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define internal fastcc void @_ZN3povL23bezier_split_left_rightEPA4_A4_A3_dS3_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 !PGOFuncName !81 {
  %4 = alloca [3 x double], align 16
  %5 = alloca [4 x [3 x double]], align 16
  %6 = alloca [4 x [3 x double]], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %6) #12
  %7 = getelementptr inbounds [4 x [3 x double]], ptr %5, i64 0, i64 1
  %8 = getelementptr inbounds [4 x [3 x double]], ptr %5, i64 0, i64 2
  %9 = getelementptr inbounds [4 x [3 x double]], ptr %6, i64 0, i64 2
  %10 = getelementptr inbounds [4 x [3 x double]], ptr %6, i64 0, i64 1
  %11 = getelementptr inbounds [4 x [3 x double]], ptr %5, i64 0, i64 3
  %12 = getelementptr inbounds [4 x [3 x double]], ptr %6, i64 0, i64 3
  br label %13

13:                                               ; preds = %3, %27
  %14 = phi i64 [ 0, %3 ], [ %28, %27 ]
  %15 = getelementptr inbounds [4 x [3 x double]], ptr %0, i64 0, i64 %14
  call void @_ZN3pov13Assign_VectorEPdS0_(ptr noundef nonnull %5, ptr noundef %15) #13
  %16 = getelementptr inbounds [4 x [4 x [3 x double]]], ptr %0, i64 0, i64 1, i64 %14
  call void @_ZN3pov5VHalfEPdPKdS2_(ptr noundef nonnull %7, ptr noundef %15, ptr noundef nonnull %16) #13
  %17 = getelementptr inbounds [4 x [4 x [3 x double]]], ptr %0, i64 0, i64 2, i64 %14
  call void @_ZN3pov5VHalfEPdPKdS2_(ptr noundef nonnull %4, ptr noundef nonnull %16, ptr noundef nonnull %17) #13
  call void @_ZN3pov5VHalfEPdPKdS2_(ptr noundef nonnull %8, ptr noundef nonnull %7, ptr noundef nonnull %4) #13
  %18 = getelementptr inbounds [4 x [4 x [3 x double]]], ptr %0, i64 0, i64 3, i64 %14
  call void @_ZN3pov5VHalfEPdPKdS2_(ptr noundef nonnull %9, ptr noundef nonnull %17, ptr noundef nonnull %18) #13
  call void @_ZN3pov5VHalfEPdPKdS2_(ptr noundef nonnull %10, ptr noundef nonnull %4, ptr noundef nonnull %9) #13
  call void @_ZN3pov5VHalfEPdPKdS2_(ptr noundef nonnull %11, ptr noundef nonnull %8, ptr noundef nonnull %10) #13
  call void @_ZN3pov13Assign_VectorEPdS0_(ptr noundef nonnull %6, ptr noundef nonnull %11) #13
  call void @_ZN3pov13Assign_VectorEPdS0_(ptr noundef nonnull %12, ptr noundef nonnull %18) #13
  br label %19

19:                                               ; preds = %13, %19
  %20 = phi i64 [ 0, %13 ], [ %25, %19 ]
  %21 = getelementptr inbounds [4 x [4 x [3 x double]]], ptr %1, i64 0, i64 %20, i64 %14
  %22 = getelementptr inbounds [4 x [3 x double]], ptr %5, i64 0, i64 %20
  call void @_ZN3pov13Assign_VectorEPdS0_(ptr noundef %21, ptr noundef nonnull %22) #13
  %23 = getelementptr inbounds [4 x [4 x [3 x double]]], ptr %2, i64 0, i64 %20, i64 %14
  %24 = getelementptr inbounds [4 x [3 x double]], ptr %6, i64 0, i64 %20
  call void @_ZN3pov13Assign_VectorEPdS0_(ptr noundef %23, ptr noundef nonnull %24) #13
  %25 = add nuw nsw i64 %20, 1
  %26 = icmp eq i64 %25, 4
  br i1 %26, label %27, label %19, !llvm.loop !82

27:                                               ; preds = %19
  %28 = add nuw nsw i64 %14, 1
  %29 = icmp eq i64 %28, 4
  br i1 %29, label %30, label %13, !llvm.loop !83

30:                                               ; preds = %27
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define internal fastcc noundef double @_ZN3povL27determine_subpatch_flatnessEPA4_A4_A3_d(ptr noundef %0) unnamed_addr #2 !PGOFuncName !84 {
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca [3 x double], align 16
  %5 = alloca [3 x double], align 16
  %6 = alloca [4 x [3 x double]], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %6) #12
  call void @_ZN3pov13Assign_VectorEPdS0_(ptr noundef nonnull %6, ptr noundef %0) #13
  %7 = getelementptr inbounds [4 x [3 x double]], ptr %6, i64 0, i64 1
  %8 = getelementptr inbounds [4 x [3 x double]], ptr %0, i64 0, i64 3
  call void @_ZN3pov13Assign_VectorEPdS0_(ptr noundef nonnull %7, ptr noundef nonnull %8) #13
  call void @_ZN3pov4VSubEPdPKdS2_(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #13
  call void @_ZN3pov7VLengthERdPKd(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %5) #13
  %9 = load double, ptr %3, align 8, !tbaa !48
  %10 = call double @llvm.fabs.f64(double %9)
  %11 = fcmp olt double %10, 0x3E7AD7F29ABCAF48
  br i1 %11, label %12, label %27

12:                                               ; preds = %1
  %13 = getelementptr inbounds [4 x [4 x [3 x double]]], ptr %0, i64 0, i64 3, i64 3
  call void @_ZN3pov13Assign_VectorEPdS0_(ptr noundef nonnull %7, ptr noundef nonnull %13) #13
  call void @_ZN3pov4VSubEPdPKdS2_(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #13
  call void @_ZN3pov7VLengthERdPKd(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %5) #13
  %14 = load double, ptr %3, align 8, !tbaa !48
  %15 = call double @llvm.fabs.f64(double %14)
  %16 = fcmp olt double %15, 0x3E7AD7F29ABCAF48
  br i1 %16, label %66, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds [4 x [4 x [3 x double]]], ptr %0, i64 0, i64 3
  %19 = getelementptr inbounds [4 x [3 x double]], ptr %6, i64 0, i64 2
  call void @_ZN3pov13Assign_VectorEPdS0_(ptr noundef nonnull %19, ptr noundef nonnull %18) #13
  call void @_ZN3pov4VSubEPdPKdS2_(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #13
  call void @_ZN3pov7VLengthERdPKd(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %5) #13
  %20 = load double, ptr %3, align 8, !tbaa !48
  %21 = call double @llvm.fabs.f64(double %20)
  %22 = fcmp olt double %21, 0x3E7AD7F29ABCAF48
  br i1 %22, label %66, label %23

23:                                               ; preds = %17
  call void @_ZN3pov4VSubEPdPKdS2_(ptr noundef nonnull %5, ptr noundef nonnull %7, ptr noundef nonnull %19) #13
  call void @_ZN3pov7VLengthERdPKd(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %5) #13
  %24 = load double, ptr %3, align 8, !tbaa !48
  %25 = call double @llvm.fabs.f64(double %24)
  %26 = fcmp olt double %25, 0x3E7AD7F29ABCAF48
  br i1 %26, label %66, label %46

27:                                               ; preds = %1
  %28 = getelementptr inbounds [4 x [3 x double]], ptr %6, i64 0, i64 2
  %29 = getelementptr inbounds [4 x [4 x [3 x double]]], ptr %0, i64 0, i64 3
  call void @_ZN3pov13Assign_VectorEPdS0_(ptr noundef nonnull %28, ptr noundef nonnull %29) #13
  call void @_ZN3pov4VSubEPdPKdS2_(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) #13
  call void @_ZN3pov7VLengthERdPKd(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %5) #13
  %30 = load double, ptr %3, align 8, !tbaa !48
  %31 = call double @llvm.fabs.f64(double %30)
  %32 = fcmp olt double %31, 0x3E7AD7F29ABCAF48
  br i1 %32, label %33, label %42

33:                                               ; preds = %27
  %34 = getelementptr inbounds [4 x [4 x [3 x double]]], ptr %0, i64 0, i64 3, i64 3
  call void @_ZN3pov13Assign_VectorEPdS0_(ptr noundef nonnull %28, ptr noundef nonnull %34) #13
  call void @_ZN3pov4VSubEPdPKdS2_(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %28) #13
  call void @_ZN3pov7VLengthERdPKd(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %5) #13
  %35 = load double, ptr %3, align 8, !tbaa !48
  %36 = call double @llvm.fabs.f64(double %35)
  %37 = fcmp olt double %36, 0x3E7AD7F29ABCAF48
  br i1 %37, label %66, label %38

38:                                               ; preds = %33
  call void @_ZN3pov4VSubEPdPKdS2_(ptr noundef nonnull %5, ptr noundef nonnull %7, ptr noundef nonnull %28) #13
  call void @_ZN3pov7VLengthERdPKd(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %5) #13
  %39 = load double, ptr %3, align 8, !tbaa !48
  %40 = call double @llvm.fabs.f64(double %39)
  %41 = fcmp olt double %40, 0x3E7AD7F29ABCAF48
  br i1 %41, label %66, label %46

42:                                               ; preds = %27
  call void @_ZN3pov4VSubEPdPKdS2_(ptr noundef nonnull %5, ptr noundef nonnull %7, ptr noundef nonnull %28) #13
  call void @_ZN3pov7VLengthERdPKd(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %5) #13
  %43 = load double, ptr %3, align 8, !tbaa !48
  %44 = call double @llvm.fabs.f64(double %43)
  %45 = fcmp olt double %44, 0x3E7AD7F29ABCAF48
  br i1 %45, label %66, label %46

46:                                               ; preds = %38, %42, %23
  %47 = getelementptr inbounds [4 x [3 x double]], ptr %6, i64 0, i64 2
  %48 = call fastcc noundef i32 @_ZN3povL15subpatch_normalEPdS0_S0_S0_S0_(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %47, ptr noundef nonnull %4, ptr noundef nonnull %2) #13, !range !60
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %66, label %50

50:                                               ; preds = %46, %63
  %51 = phi i64 [ %64, %63 ], [ 0, %46 ]
  %52 = phi double [ %60, %63 ], [ 0.000000e+00, %46 ]
  br label %53

53:                                               ; preds = %50, %53
  %54 = phi i64 [ 0, %50 ], [ %61, %53 ]
  %55 = phi double [ %52, %50 ], [ %60, %53 ]
  %56 = getelementptr inbounds [4 x [4 x [3 x double]]], ptr %0, i64 0, i64 %51, i64 %54
  %57 = call fastcc noundef double @_ZN3povL20point_plane_distanceEPdS0_S0_(ptr noundef %56, ptr noundef nonnull %4, ptr noundef nonnull %2) #13
  %58 = call double @llvm.fabs.f64(double %57)
  store double %58, ptr %3, align 8, !tbaa !48
  %59 = fcmp ogt double %58, %55
  %60 = select i1 %59, double %58, double %55
  %61 = add nuw nsw i64 %54, 1
  %62 = icmp eq i64 %61, 4
  br i1 %62, label %63, label %53, !llvm.loop !85

63:                                               ; preds = %53
  %64 = add nuw nsw i64 %51, 1
  %65 = icmp eq i64 %64, 4
  br i1 %65, label %66, label %50, !llvm.loop !86

66:                                               ; preds = %63, %46, %42, %38, %33, %23, %17, %12
  %67 = phi double [ -1.000000e+00, %12 ], [ -1.000000e+00, %17 ], [ -1.000000e+00, %23 ], [ -1.000000e+00, %33 ], [ -1.000000e+00, %38 ], [ -1.000000e+00, %42 ], [ -1.000000e+00, %46 ], [ %60, %63 ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #12
  ret double %67
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov4VSubEPdPKdS2_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat {
  %4 = load double, ptr %1, align 8, !tbaa !48
  %5 = load double, ptr %2, align 8, !tbaa !48
  %6 = fsub double %4, %5
  store double %6, ptr %0, align 8, !tbaa !48
  %7 = getelementptr inbounds double, ptr %1, i64 1
  %8 = load double, ptr %7, align 8, !tbaa !48
  %9 = getelementptr inbounds double, ptr %2, i64 1
  %10 = load double, ptr %9, align 8, !tbaa !48
  %11 = fsub double %8, %10
  %12 = getelementptr inbounds double, ptr %0, i64 1
  store double %11, ptr %12, align 8, !tbaa !48
  %13 = getelementptr inbounds double, ptr %1, i64 2
  %14 = load double, ptr %13, align 8, !tbaa !48
  %15 = getelementptr inbounds double, ptr %2, i64 2
  %16 = load double, ptr %15, align 8, !tbaa !48
  %17 = fsub double %14, %16
  %18 = getelementptr inbounds double, ptr %0, i64 2
  store double %17, ptr %18, align 8, !tbaa !48
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov7VLengthERdPKd(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #2 comdat {
  %3 = load double, ptr %1, align 8, !tbaa !48
  %4 = getelementptr inbounds double, ptr %1, i64 1
  %5 = load double, ptr %4, align 8, !tbaa !48
  %6 = fmul double %5, %5
  %7 = tail call double @llvm.fmuladd.f64(double %3, double %3, double %6)
  %8 = getelementptr inbounds double, ptr %1, i64 2
  %9 = load double, ptr %8, align 8, !tbaa !48
  %10 = tail call double @llvm.fmuladd.f64(double %9, double %9, double %7)
  %11 = tail call double @llvm.sqrt.f64(double %10)
  store double %11, ptr %0, align 8, !tbaa !48
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define internal fastcc noundef i32 @_ZN3povL15subpatch_normalEPdS0_S0_S0_S0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #2 !PGOFuncName !87 {
  %6 = alloca [3 x double], align 16
  %7 = alloca [3 x double], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #12
  call void @_ZN3pov4VSubEPdPKdS2_(ptr noundef nonnull %6, ptr noundef %0, ptr noundef %1) #13
  call void @_ZN3pov4VSubEPdPKdS2_(ptr noundef nonnull %7, ptr noundef %2, ptr noundef %1) #13
  call void @_ZN3pov6VCrossEPdPKdS2_(ptr noundef %3, ptr noundef nonnull %6, ptr noundef nonnull %7) #13
  %8 = call noundef double @_ZN3pov7VSumSqrEPd(ptr noundef %3) #13
  %9 = call noundef double @_ZN3pov7VSumSqrEPd(ptr noundef nonnull %6) #13
  %10 = call noundef double @_ZN3pov7VSumSqrEPd(ptr noundef nonnull %7) #13
  %11 = fmul double %9, 1.000000e-10
  %12 = fmul double %11, %10
  %13 = fcmp ugt double %8, %12
  br i1 %13, label %17, label %14

14:                                               ; preds = %5
  call void @_ZN3pov11Make_VectorEPdddd(ptr noundef %3, double noundef 1.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00) #13
  %15 = load double, ptr %0, align 8, !tbaa !48
  %16 = fneg double %15
  br label %21

17:                                               ; preds = %5
  %18 = call double @sqrt(double noundef %8) #14
  call void @_ZN3pov13VInverseScaleEPdPKdd(ptr noundef %3, ptr noundef %3, double noundef %18) #13
  call void @_ZN3pov4VDotERdPKdS2_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %3, ptr noundef %0) #13
  %19 = load double, ptr %4, align 8, !tbaa !48
  %20 = fsub double 0.000000e+00, %19
  br label %21

21:                                               ; preds = %17, %14
  %22 = phi double [ %20, %17 ], [ %16, %14 ]
  %23 = phi i32 [ 1, %17 ], [ 0, %14 ]
  store double %22, ptr %4, align 8, !tbaa !48
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #12
  ret i32 %23
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define internal fastcc noundef double @_ZN3povL20point_plane_distanceEPdS0_S0_(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #2 !PGOFuncName !88 {
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #12
  call void @_ZN3pov4VDotERdPKdS2_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %0, ptr noundef %1) #13
  %6 = load double, ptr %2, align 8, !tbaa !48
  %7 = load double, ptr %4, align 8, !tbaa !48
  %8 = fadd double %6, %7
  store double %8, ptr %4, align 8, !tbaa !48
  call void @_ZN3pov7VLengthERdPKd(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %1) #13
  %9 = load double, ptr %5, align 8, !tbaa !48
  %10 = call double @llvm.fabs.f64(double %9)
  %11 = fcmp olt double %10, 0x3E7AD7F29ABCAF48
  %12 = load double, ptr %4, align 8
  %13 = fdiv double %12, %9
  %14 = select i1 %11, double 0.000000e+00, double %13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  ret double %14
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov6VCrossEPdPKdS2_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat {
  %4 = alloca [3 x double], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #12
  %5 = getelementptr inbounds double, ptr %1, i64 1
  %6 = getelementptr inbounds double, ptr %2, i64 1
  %7 = load double, ptr %2, align 8, !tbaa !48
  %8 = load double, ptr %1, align 8, !tbaa !48
  %9 = load <2 x double>, ptr %5, align 8, !tbaa !48
  %10 = load <2 x double>, ptr %6, align 8, !tbaa !48
  %11 = insertelement <2 x double> %9, double %8, i64 0
  %12 = shufflevector <2 x double> %11, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %13 = fneg <2 x double> %12
  %14 = fmul <2 x double> %10, %13
  %15 = shufflevector <2 x double> %10, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %16 = insertelement <2 x double> %15, double %7, i64 1
  %17 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %9, <2 x double> %16, <2 x double> %14)
  store <2 x double> %17, ptr %4, align 16, !tbaa !48
  %18 = extractelement <2 x double> %9, i64 0
  %19 = fneg double %18
  %20 = fmul double %7, %19
  %21 = extractelement <2 x double> %10, i64 0
  %22 = tail call double @llvm.fmuladd.f64(double %8, double %21, double %20)
  %23 = getelementptr inbounds [3 x double], ptr %4, i64 0, i64 2
  store double %22, ptr %23, align 16, !tbaa !48
  call void @_ZN3pov13Assign_VectorEPdS0_(ptr noundef %0, ptr noundef nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef double @_ZN3pov7VSumSqrEPd(ptr noundef %0) local_unnamed_addr #2 comdat {
  %2 = load double, ptr %0, align 8, !tbaa !48
  %3 = getelementptr inbounds double, ptr %0, i64 1
  %4 = load double, ptr %3, align 8, !tbaa !48
  %5 = fmul double %4, %4
  %6 = tail call double @llvm.fmuladd.f64(double %2, double %2, double %5)
  %7 = getelementptr inbounds double, ptr %0, i64 2
  %8 = load double, ptr %7, align 8, !tbaa !48
  %9 = tail call double @llvm.fmuladd.f64(double %8, double %8, double %6)
  ret double %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov13VInverseScaleEPdPKdd(ptr noundef %0, ptr noundef %1, double noundef %2) local_unnamed_addr #2 comdat {
  %4 = fdiv double 1.000000e+00, %2
  %5 = load double, ptr %1, align 8, !tbaa !48
  %6 = fmul double %4, %5
  store double %6, ptr %0, align 8, !tbaa !48
  %7 = getelementptr inbounds double, ptr %1, i64 1
  %8 = load double, ptr %7, align 8, !tbaa !48
  %9 = fmul double %4, %8
  %10 = getelementptr inbounds double, ptr %0, i64 1
  store double %9, ptr %10, align 8, !tbaa !48
  %11 = getelementptr inbounds double, ptr %1, i64 2
  %12 = load double, ptr %11, align 8, !tbaa !48
  %13 = fmul double %4, %12
  %14 = getelementptr inbounds double, ptr %0, i64 2
  store double %13, ptr %14, align 8, !tbaa !48
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov4VDotERdPKdS2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat {
  %4 = load double, ptr %1, align 8, !tbaa !48
  %5 = load double, ptr %2, align 8, !tbaa !48
  %6 = getelementptr inbounds double, ptr %1, i64 1
  %7 = load double, ptr %6, align 8, !tbaa !48
  %8 = getelementptr inbounds double, ptr %2, i64 1
  %9 = load double, ptr %8, align 8, !tbaa !48
  %10 = fmul double %7, %9
  %11 = tail call double @llvm.fmuladd.f64(double %4, double %5, double %10)
  %12 = getelementptr inbounds double, ptr %1, i64 2
  %13 = load double, ptr %12, align 8, !tbaa !48
  %14 = getelementptr inbounds double, ptr %2, i64 2
  %15 = load double, ptr %14, align 8, !tbaa !48
  %16 = tail call double @llvm.fmuladd.f64(double %13, double %15, double %11)
  store double %16, ptr %0, align 8, !tbaa !48
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov5VHalfEPdPKdS2_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat {
  %4 = load double, ptr %1, align 8, !tbaa !48
  %5 = load double, ptr %2, align 8, !tbaa !48
  %6 = fadd double %4, %5
  %7 = fmul double %6, 5.000000e-01
  store double %7, ptr %0, align 8, !tbaa !48
  %8 = getelementptr inbounds double, ptr %1, i64 1
  %9 = load double, ptr %8, align 8, !tbaa !48
  %10 = getelementptr inbounds double, ptr %2, i64 1
  %11 = load double, ptr %10, align 8, !tbaa !48
  %12 = fadd double %9, %11
  %13 = fmul double %12, 5.000000e-01
  %14 = getelementptr inbounds double, ptr %0, i64 1
  store double %13, ptr %14, align 8, !tbaa !48
  %15 = getelementptr inbounds double, ptr %1, i64 2
  %16 = load double, ptr %15, align 8, !tbaa !48
  %17 = getelementptr inbounds double, ptr %2, i64 2
  %18 = load double, ptr %17, align 8, !tbaa !48
  %19 = fadd double %16, %18
  %20 = fmul double %19, 5.000000e-01
  %21 = getelementptr inbounds double, ptr %0, i64 2
  store double %20, ptr %21, align 8, !tbaa !48
  ret void
}

; Function Attrs: optsize
declare void @_ZN3pov8pov_freeEPvPKci(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define internal noundef i32 @_ZN3povL31All_Bicubic_Patch_IntersectionsEPNS_13Object_StructEPNS_10Ray_StructEPNS_13istack_structE(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !PGOFuncName !89 {
  tail call void @_ZN3pov16Increase_CounterERx(ptr noundef nonnull align 8 dereferenceable(8) getelementptr inbounds ([123 x i64], ptr @_ZN3pov5statsE, i64 0, i64 10)) #13
  %4 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %0, i64 0, i32 14
  %5 = load i32, ptr %4, align 8, !tbaa !41
  switch i32 %5, label %12 [
    i32 0, label %6
    i32 1, label %8
  ]

6:                                                ; preds = %3
  %7 = tail call fastcc noundef i32 @_ZN3povL24intersect_bicubic_patch0EPNS_10Ray_StructEPNS_20Bicubic_Patch_StructEPNS_13istack_structE(ptr noundef %1, ptr noundef nonnull %0, ptr noundef %2) #13
  br label %14

8:                                                ; preds = %3
  %9 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %0, i64 0, i32 23
  %10 = load ptr, ptr %9, align 8, !tbaa !47
  %11 = tail call fastcc noundef i32 @_ZN3povL18bezier_tree_walkerEPNS_10Ray_StructEPNS_20Bicubic_Patch_StructEPNS_18Bezier_Node_StructEPNS_13istack_structE(ptr noundef %1, ptr noundef nonnull %0, ptr noundef %10, ptr noundef %2) #13
  br label %14

12:                                               ; preds = %3
  %13 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.5) #13
  br label %18

14:                                               ; preds = %8, %6
  %15 = phi i32 [ %11, %8 ], [ %7, %6 ]
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  tail call void @_ZN3pov16Increase_CounterERx(ptr noundef nonnull align 8 dereferenceable(8) getelementptr inbounds ([123 x i64], ptr @_ZN3pov5statsE, i64 0, i64 11)) #13
  br label %18

18:                                               ; preds = %12, %17, %14
  %19 = phi i32 [ 1, %17 ], [ 0, %14 ], [ 0, %12 ]
  ret i32 %19
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef i32 @_ZN3povL20Inside_Bicubic_PatchEPdPNS_13Object_StructE(ptr nocapture readnone %0, ptr nocapture readnone %1) #6 !PGOFuncName !90 {
  ret i32 0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define internal void @_ZN3povL20Bicubic_Patch_NormalEPdPNS_13Object_StructEPNS_10istk_entryE(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #2 !PGOFuncName !91 {
  %4 = getelementptr inbounds %"struct.pov::istk_entry", ptr %2, i64 0, i32 2
  tail call void @_ZN3pov13Assign_VectorEPdS0_(ptr noundef %0, ptr noundef nonnull %4) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define internal void @_ZN3povL21Bicubic_Patch_UVCoordEPdPNS_13Object_StructEPNS_10istk_entryE(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #2 !PGOFuncName !92 {
  %4 = getelementptr inbounds %"struct.pov::istk_entry", ptr %2, i64 0, i32 4
  tail call void @_ZN3pov14Assign_UV_VectEPdS0_(ptr noundef %0, ptr noundef nonnull %4) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal noundef ptr @_ZN3povL18Copy_Bicubic_PatchEPNS_13Object_StructE(ptr noundef %0) #0 !PGOFuncName !93 {
  %2 = tail call noundef ptr @_ZN3pov20Create_Bicubic_PatchEv() #13
  %3 = getelementptr inbounds %"struct.pov::Object_Struct", ptr %0, i64 0, i32 12
  %4 = load float, ptr %3, align 8, !tbaa !94
  %5 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %2, i64 0, i32 12
  store float %4, ptr %5, align 8, !tbaa !96
  %6 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %0, i64 0, i32 14
  %7 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %2, i64 0, i32 14
  %8 = load <2 x i32>, ptr %6, align 8, !tbaa !34
  store <2 x i32> %8, ptr %7, align 8, !tbaa !34
  %9 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %0, i64 0, i32 16
  %10 = load i32, ptr %9, align 8, !tbaa !63
  %11 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %2, i64 0, i32 16
  store i32 %10, ptr %11, align 8, !tbaa !63
  %12 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %0, i64 0, i32 24
  %13 = load ptr, ptr %12, align 8, !tbaa !97
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %1
  %16 = tail call noundef ptr @_ZN3pov10pov_mallocEmPKciS1_(i64 noundef 128, ptr noundef nonnull @.str, i32 noundef 2159, ptr noundef nonnull @.str.1) #13
  %17 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %2, i64 0, i32 24
  store ptr %16, ptr %17, align 8, !tbaa !97
  %18 = load ptr, ptr %12, align 8, !tbaa !97
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %16, ptr noundef nonnull align 8 dereferenceable(128) %18, i64 128, i1 false)
  br label %19

19:                                               ; preds = %15, %1
  br label %20

20:                                               ; preds = %19, %28
  %21 = phi i64 [ %29, %28 ], [ 0, %19 ]
  br label %22

22:                                               ; preds = %20, %22
  %23 = phi i64 [ 0, %20 ], [ %26, %22 ]
  %24 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %2, i64 0, i32 17, i64 %21, i64 %23
  %25 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %0, i64 0, i32 17, i64 %21, i64 %23
  tail call void @_ZN3pov13Assign_VectorEPdS0_(ptr noundef nonnull %24, ptr noundef nonnull %25) #13
  %26 = add nuw nsw i64 %23, 1
  %27 = icmp eq i64 %26, 4
  br i1 %27, label %28, label %22, !llvm.loop !98

28:                                               ; preds = %22
  %29 = add nuw nsw i64 %21, 1
  %30 = icmp eq i64 %29, 4
  br i1 %30, label %31, label %20, !llvm.loop !99

31:                                               ; preds = %28
  %32 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %0, i64 0, i32 21
  %33 = load double, ptr %32, align 8, !tbaa !75
  %34 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %2, i64 0, i32 21
  store double %33, ptr %34, align 8, !tbaa !75
  tail call void @_ZN3pov23Precompute_Patch_ValuesEPNS_20Bicubic_Patch_StructE(ptr noundef %2) #13
  br label %35

35:                                               ; preds = %31, %44
  %36 = phi i64 [ 0, %31 ], [ %45, %44 ]
  br label %37

37:                                               ; preds = %35, %37
  %38 = phi i64 [ 0, %35 ], [ %42, %37 ]
  %39 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %0, i64 0, i32 18, i64 %36, i64 %38
  %40 = load double, ptr %39, align 8, !tbaa !48
  %41 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %2, i64 0, i32 18, i64 %36, i64 %38
  store double %40, ptr %41, align 8, !tbaa !48
  %42 = add nuw nsw i64 %38, 1
  %43 = icmp eq i64 %42, 3
  br i1 %43, label %44, label %37, !llvm.loop !100

44:                                               ; preds = %37
  %45 = add nuw nsw i64 %36, 1
  %46 = icmp eq i64 %45, 4
  br i1 %46, label %47, label %35, !llvm.loop !101

47:                                               ; preds = %44
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal void @_ZN3povL23Translate_Bicubic_PatchEPNS_13Object_StructEPdPNS_16Transform_StructE(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #0 !PGOFuncName !102 {
  br label %4

4:                                                ; preds = %3, %11
  %5 = phi i64 [ 0, %3 ], [ %12, %11 ]
  br label %6

6:                                                ; preds = %4, %6
  %7 = phi i64 [ 0, %4 ], [ %9, %6 ]
  %8 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %0, i64 0, i32 17, i64 %5, i64 %7
  tail call void @_ZN3pov4VAddEPdPKdS2_(ptr noundef nonnull %8, ptr noundef nonnull %8, ptr noundef %1) #13
  %9 = add nuw nsw i64 %7, 1
  %10 = icmp eq i64 %9, 4
  br i1 %10, label %11, label %6, !llvm.loop !103

11:                                               ; preds = %6
  %12 = add nuw nsw i64 %5, 1
  %13 = icmp eq i64 %12, 4
  br i1 %13, label %14, label %4, !llvm.loop !104

14:                                               ; preds = %11
  tail call void @_ZN3pov23Precompute_Patch_ValuesEPNS_20Bicubic_Patch_StructE(ptr noundef %0) #13
  tail call void @_ZN3pov26Compute_Bicubic_Patch_BBoxEPNS_20Bicubic_Patch_StructE(ptr noundef %0) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal void @_ZN3povL20Rotate_Bicubic_PatchEPNS_13Object_StructEPdPNS_16Transform_StructE(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2) #0 !PGOFuncName !105 {
  tail call void @_ZN3povL23Transform_Bicubic_PatchEPNS_13Object_StructEPNS_16Transform_StructE(ptr noundef %0, ptr noundef %2) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal void @_ZN3povL19Scale_Bicubic_PatchEPNS_13Object_StructEPdPNS_16Transform_StructE(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #0 !PGOFuncName !106 {
  br label %4

4:                                                ; preds = %3, %11
  %5 = phi i64 [ 0, %3 ], [ %12, %11 ]
  br label %6

6:                                                ; preds = %4, %6
  %7 = phi i64 [ 0, %4 ], [ %9, %6 ]
  %8 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %0, i64 0, i32 17, i64 %5, i64 %7
  tail call void @_ZN3pov9VEvaluateEPdPKdS2_(ptr noundef nonnull %8, ptr noundef nonnull %8, ptr noundef %1) #13
  %9 = add nuw nsw i64 %7, 1
  %10 = icmp eq i64 %9, 4
  br i1 %10, label %11, label %6, !llvm.loop !107

11:                                               ; preds = %6
  %12 = add nuw nsw i64 %5, 1
  %13 = icmp eq i64 %12, 4
  br i1 %13, label %14, label %4, !llvm.loop !108

14:                                               ; preds = %11
  tail call void @_ZN3pov23Precompute_Patch_ValuesEPNS_20Bicubic_Patch_StructE(ptr noundef %0) #13
  tail call void @_ZN3pov26Compute_Bicubic_Patch_BBoxEPNS_20Bicubic_Patch_StructE(ptr noundef %0) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal void @_ZN3povL23Transform_Bicubic_PatchEPNS_13Object_StructEPNS_16Transform_StructE(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !109 {
  br label %3

3:                                                ; preds = %2, %10
  %4 = phi i64 [ 0, %2 ], [ %11, %10 ]
  br label %5

5:                                                ; preds = %3, %5
  %6 = phi i64 [ 0, %3 ], [ %8, %5 ]
  %7 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %0, i64 0, i32 17, i64 %4, i64 %6
  tail call void @_ZN3pov11MTransPointEPdS0_PNS_16Transform_StructE(ptr noundef nonnull %7, ptr noundef nonnull %7, ptr noundef %1) #13
  %8 = add nuw nsw i64 %6, 1
  %9 = icmp eq i64 %8, 4
  br i1 %9, label %10, label %5, !llvm.loop !110

10:                                               ; preds = %5
  %11 = add nuw nsw i64 %4, 1
  %12 = icmp eq i64 %11, 4
  br i1 %12, label %13, label %3, !llvm.loop !111

13:                                               ; preds = %10
  tail call void @_ZN3pov23Precompute_Patch_ValuesEPNS_20Bicubic_Patch_StructE(ptr noundef %0) #13
  tail call void @_ZN3pov26Compute_Bicubic_Patch_BBoxEPNS_20Bicubic_Patch_StructE(ptr noundef %0) #13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @_ZN3povL20Invert_Bicubic_PatchEPNS_13Object_StructE(ptr nocapture readnone %0) #6 !PGOFuncName !112 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal void @_ZN3povL21Destroy_Bicubic_PatchEPNS_13Object_StructE(ptr noundef %0) #0 !PGOFuncName !113 {
  %2 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %0, i64 0, i32 14
  %3 = load i32, ptr %2, align 8, !tbaa !41
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %0, i64 0, i32 23
  %7 = load ptr, ptr %6, align 8, !tbaa !47
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call fastcc void @_ZN3povL19bezier_tree_deleterEPNS_18Bezier_Node_StructE(ptr noundef nonnull %7) #13
  br label %10

10:                                               ; preds = %5, %9, %1
  %11 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %0, i64 0, i32 24
  %12 = load ptr, ptr %11, align 8, !tbaa !97
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef nonnull %12, ptr noundef nonnull @.str, i32 noundef 2229) #13
  store ptr null, ptr %11, align 8, !tbaa !97
  br label %15

15:                                               ; preds = %14, %10
  tail call void @_ZN3pov8pov_freeEPvPKci(ptr noundef nonnull %0, ptr noundef nonnull @.str, i32 noundef 2230) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov16Increase_CounterERx(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #2 comdat {
  %2 = load i64, ptr %0, align 8, !tbaa !114
  %3 = add nsw i64 %2, 1
  store i64 %3, ptr %0, align 8, !tbaa !114
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal fastcc noundef i32 @_ZN3povL24intersect_bicubic_patch0EPNS_10Ray_StructEPNS_20Bicubic_Patch_StructEPNS_13istack_structE(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !116 {
  %4 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %1, i64 0, i32 17
  %5 = tail call fastcc noundef i32 @_ZN3povL17bezier_subdividerEPNS_10Ray_StructEPNS_20Bicubic_Patch_StructEPA4_A4_A3_dddddiPNS_13istack_structE(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4, double noundef 0.000000e+00, double noundef 1.000000e+00, double noundef 0.000000e+00, double noundef 1.000000e+00, i32 noundef 0, ptr noundef %2) #13
  ret i32 %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal fastcc noundef i32 @_ZN3povL18bezier_tree_walkerEPNS_10Ray_StructEPNS_20Bicubic_Patch_StructEPNS_18Bezier_Node_StructEPNS_13istack_structE(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) unnamed_addr #0 !PGOFuncName !117 {
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca [3 x double], align 16
  %9 = alloca [3 x double], align 16
  %10 = alloca [3 x double], align 16
  %11 = alloca [3 x double], align 16
  %12 = alloca [3 x [3 x double]], align 16
  %13 = alloca [2 x double], align 16
  %14 = alloca [2 x double], align 16
  %15 = alloca [2 x double], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #12
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %12) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %14) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %15) #12
  %16 = getelementptr inbounds %"struct.pov::Bezier_Node_Struct", ptr %2, i64 0, i32 1
  %17 = getelementptr inbounds %"struct.pov::Bezier_Node_Struct", ptr %2, i64 0, i32 2
  %18 = load double, ptr %17, align 8, !tbaa !118
  %19 = tail call fastcc noundef i32 @_ZN3povL22spherical_bounds_checkEPNS_10Ray_StructEPdd(ptr noundef %0, ptr noundef nonnull %16, double noundef %18) #13, !range !60
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %89, label %21

21:                                               ; preds = %4
  %22 = load i32, ptr %2, align 8, !tbaa !53
  switch i32 %22, label %87 [
    i32 0, label %23
    i32 1, label %40
  ]

23:                                               ; preds = %21
  %24 = getelementptr inbounds %"struct.pov::Bezier_Node_Struct", ptr %2, i64 0, i32 4
  %25 = load ptr, ptr %24, align 8, !tbaa !55
  %26 = getelementptr inbounds %"struct.pov::Bezier_Node_Struct", ptr %2, i64 0, i32 3
  %27 = load i32, ptr %26, align 8, !tbaa !56
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %89

29:                                               ; preds = %23, %29
  %30 = phi i64 [ %36, %29 ], [ 0, %23 ]
  %31 = phi i32 [ %35, %29 ], [ 0, %23 ]
  %32 = getelementptr inbounds [4 x ptr], ptr %25, i64 0, i64 %30
  %33 = load ptr, ptr %32, align 8, !tbaa !57
  %34 = tail call fastcc noundef i32 @_ZN3povL18bezier_tree_walkerEPNS_10Ray_StructEPNS_20Bicubic_Patch_StructEPNS_18Bezier_Node_StructEPNS_13istack_structE(ptr noundef %0, ptr noundef %1, ptr noundef %33, ptr noundef %3) #13
  %35 = add nsw i32 %34, %31
  %36 = add nuw nsw i64 %30, 1
  %37 = load i32, ptr %26, align 8, !tbaa !56
  %38 = sext i32 %37 to i64
  %39 = icmp slt i64 %36, %38
  br i1 %39, label %29, label %89, !llvm.loop !119

40:                                               ; preds = %21
  %41 = getelementptr inbounds %"struct.pov::Bezier_Node_Struct", ptr %2, i64 0, i32 4
  %42 = load ptr, ptr %41, align 8, !tbaa !55
  %43 = getelementptr inbounds %"struct.pov::Bezier_Vertices_Struct", ptr %42, i64 0, i32 1
  call void @_ZN3pov13Assign_VectorEPdS0_(ptr noundef nonnull %12, ptr noundef nonnull %43) #13
  %44 = getelementptr inbounds [3 x [3 x double]], ptr %12, i64 0, i64 1
  %45 = getelementptr inbounds %"struct.pov::Bezier_Vertices_Struct", ptr %42, i64 0, i32 1, i64 1
  call void @_ZN3pov13Assign_VectorEPdS0_(ptr noundef nonnull %44, ptr noundef nonnull %45) #13
  %46 = getelementptr inbounds [3 x [3 x double]], ptr %12, i64 0, i64 2
  %47 = getelementptr inbounds %"struct.pov::Bezier_Vertices_Struct", ptr %42, i64 0, i32 1, i64 2
  call void @_ZN3pov13Assign_VectorEPdS0_(ptr noundef nonnull %46, ptr noundef nonnull %47) #13
  %48 = getelementptr inbounds [3 x double], ptr %8, i64 0, i64 1
  %49 = getelementptr inbounds [4 x float], ptr %42, i64 0, i64 1
  %50 = getelementptr inbounds [3 x double], ptr %8, i64 0, i64 2
  %51 = load <2 x float>, ptr %42, align 8, !tbaa !61
  %52 = fpext <2 x float> %51 to <2 x double>
  %53 = extractelement <2 x double> %52, i64 0
  store double %53, ptr %8, align 16, !tbaa !48
  store <2 x double> %52, ptr %48, align 8, !tbaa !48
  %54 = getelementptr inbounds [4 x float], ptr %42, i64 0, i64 2
  %55 = getelementptr inbounds [3 x double], ptr %9, i64 0, i64 1
  %56 = load <2 x float>, ptr %54, align 8, !tbaa !61
  %57 = fpext <2 x float> %56 to <2 x double>
  store <2 x double> %57, ptr %9, align 16, !tbaa !48
  %58 = getelementptr inbounds [3 x double], ptr %9, i64 0, i64 2
  %59 = extractelement <2 x double> %57, i64 1
  store double %59, ptr %58, align 16, !tbaa !48
  %60 = call fastcc noundef i32 @_ZN3povL18intersect_subpatchEPNS_20Bicubic_Patch_StructEPNS_10Ray_StructEPA3_dPdS6_S6_S6_S6_S6_S6_(ptr noundef %1, ptr noundef %0, ptr noundef nonnull %12, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %5, ptr noundef nonnull %11, ptr noundef nonnull %10, ptr noundef nonnull %6, ptr noundef nonnull %7) #13, !range !60
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %69, label %62

62:                                               ; preds = %40
  %63 = load double, ptr %7, align 8, !tbaa !48
  store double %63, ptr %14, align 16, !tbaa !48
  %64 = load double, ptr %6, align 8, !tbaa !48
  %65 = getelementptr inbounds [2 x double], ptr %14, i64 0, i64 1
  store double %64, ptr %65, align 8, !tbaa !48
  %66 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %1, i64 0, i32 18
  call fastcc void @_ZN3povL18Compute_Texture_UVEPdPA2_dS0_(ptr noundef nonnull %14, ptr noundef nonnull %66, ptr noundef nonnull %15) #13
  %67 = load <2 x double>, ptr %15, align 16, !tbaa !48
  store <2 x double> %67, ptr %13, align 16, !tbaa !48
  %68 = load double, ptr %5, align 8, !tbaa !48
  call void @_ZN3pov20push_normal_uv_entryEdPdS0_S0_PNS_13Object_StructEPNS_13istack_structE(double noundef %68, ptr noundef nonnull %11, ptr noundef nonnull %10, ptr noundef nonnull %13, ptr noundef %1, ptr noundef %3) #13
  br label %69

69:                                               ; preds = %62, %40
  %70 = phi i32 [ 1, %62 ], [ 0, %40 ]
  call void @_ZN3pov13Assign_VectorEPdS0_(ptr noundef nonnull %44, ptr noundef nonnull %46) #13
  %71 = getelementptr inbounds %"struct.pov::Bezier_Vertices_Struct", ptr %42, i64 0, i32 1, i64 3
  call void @_ZN3pov13Assign_VectorEPdS0_(ptr noundef nonnull %46, ptr noundef nonnull %71) #13
  %72 = extractelement <2 x double> %52, i64 1
  store double %72, ptr %48, align 8, !tbaa !48
  %73 = load float, ptr %49, align 4, !tbaa !61
  %74 = fpext float %73 to double
  store double %74, ptr %50, align 16, !tbaa !48
  store double %59, ptr %55, align 8, !tbaa !48
  %75 = load float, ptr %54, align 8, !tbaa !61
  %76 = fpext float %75 to double
  store double %76, ptr %58, align 16, !tbaa !48
  %77 = call fastcc noundef i32 @_ZN3povL18intersect_subpatchEPNS_20Bicubic_Patch_StructEPNS_10Ray_StructEPA3_dPdS6_S6_S6_S6_S6_S6_(ptr noundef %1, ptr noundef %0, ptr noundef nonnull %12, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %5, ptr noundef nonnull %11, ptr noundef nonnull %10, ptr noundef nonnull %6, ptr noundef nonnull %7) #13, !range !60
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %89, label %79

79:                                               ; preds = %69
  %80 = load double, ptr %7, align 8, !tbaa !48
  store double %80, ptr %14, align 16, !tbaa !48
  %81 = load double, ptr %6, align 8, !tbaa !48
  %82 = getelementptr inbounds [2 x double], ptr %14, i64 0, i64 1
  store double %81, ptr %82, align 8, !tbaa !48
  %83 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %1, i64 0, i32 18
  call fastcc void @_ZN3povL18Compute_Texture_UVEPdPA2_dS0_(ptr noundef nonnull %14, ptr noundef nonnull %83, ptr noundef nonnull %15) #13
  %84 = load <2 x double>, ptr %15, align 16, !tbaa !48
  store <2 x double> %84, ptr %13, align 16, !tbaa !48
  %85 = load double, ptr %5, align 8, !tbaa !48
  call void @_ZN3pov20push_normal_uv_entryEdPdS0_S0_PNS_13Object_StructEPNS_13istack_structE(double noundef %85, ptr noundef nonnull %11, ptr noundef nonnull %10, ptr noundef nonnull %13, ptr noundef %1, ptr noundef %3) #13
  %86 = add nuw nsw i32 %70, 1
  br label %89

87:                                               ; preds = %21
  %88 = tail call noundef i32 (ptr, ...) @_ZN3pov5ErrorEPKcz(ptr noundef nonnull @.str.6) #13
  br label %89

89:                                               ; preds = %29, %23, %69, %79, %87, %4
  %90 = phi i32 [ 0, %4 ], [ %86, %79 ], [ %70, %69 ], [ 0, %87 ], [ 0, %23 ], [ %35, %29 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %15) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %14) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #12
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %12) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #12
  ret i32 %90
}

; Function Attrs: optsize
declare noundef i32 @_ZN3pov5ErrorEPKcz(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define internal fastcc noundef i32 @_ZN3povL17bezier_subdividerEPNS_10Ray_StructEPNS_20Bicubic_Patch_StructEPA4_A4_A3_dddddiPNS_13istack_structE(ptr noundef %0, ptr noundef %1, ptr noundef %2, double noundef %3, double noundef %4, double noundef %5, double noundef %6, i32 noundef %7, ptr noundef %8) unnamed_addr #0 !PGOFuncName !120 {
  %10 = alloca double, align 8
  %11 = alloca [4 x [4 x [3 x double]]], align 16
  %12 = alloca [4 x [4 x [3 x double]]], align 16
  %13 = alloca [4 x [4 x [3 x double]]], align 16
  %14 = alloca [4 x [4 x [3 x double]]], align 16
  %15 = alloca [3 x double], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #12
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %11) #12
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %12) #12
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %13) #12
  call void @llvm.lifetime.start.p0(i64 384, ptr nonnull %14) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %15) #12
  call fastcc void @_ZN3povL22bezier_bounding_sphereEPA4_A4_A3_dPdS4_(ptr noundef %2, ptr noundef nonnull %15, ptr noundef nonnull %10) #13
  %16 = load double, ptr %10, align 8, !tbaa !48
  %17 = call fastcc noundef i32 @_ZN3povL22spherical_bounds_checkEPNS_10Ray_StructEPdd(ptr noundef %0, ptr noundef nonnull %15, double noundef %16) #13, !range !60
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %62, label %19

19:                                               ; preds = %9
  %20 = call fastcc noundef i32 @_ZN3povL11flat_enoughEPNS_20Bicubic_Patch_StructEPA4_A4_A3_d(ptr noundef %1, ptr noundef %2) #13, !range !60
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %19
  %23 = call fastcc noundef i32 @_ZN3povL25bezier_subpatch_intersectEPNS_10Ray_StructEPNS_20Bicubic_Patch_StructEPA4_A4_A3_dddddPNS_13istack_structE(ptr noundef %0, ptr noundef %1, ptr noundef %2, double noundef %3, double noundef %4, double noundef %5, double noundef %6, ptr noundef %8) #13, !range !121
  br label %62

24:                                               ; preds = %19
  %25 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %1, i64 0, i32 15
  %26 = load i32, ptr %25, align 4, !tbaa !62
  %27 = icmp sgt i32 %26, %7
  %28 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %1, i64 0, i32 16
  %29 = load i32, ptr %28, align 8, !tbaa !63
  %30 = icmp sgt i32 %29, %7
  br i1 %27, label %41, label %31

31:                                               ; preds = %24
  br i1 %30, label %34, label %32

32:                                               ; preds = %31
  %33 = call fastcc noundef i32 @_ZN3povL25bezier_subpatch_intersectEPNS_10Ray_StructEPNS_20Bicubic_Patch_StructEPA4_A4_A3_dddddPNS_13istack_structE(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, double noundef %3, double noundef %4, double noundef %5, double noundef %6, ptr noundef %8) #13, !range !121
  br label %62

34:                                               ; preds = %31
  call fastcc void @_ZN3povL20bezier_split_up_downEPA4_A4_A3_dS3_S3_(ptr noundef %2, ptr noundef nonnull %11, ptr noundef nonnull %13) #13
  %35 = fadd double %5, %6
  %36 = fmul double %35, 5.000000e-01
  %37 = add nsw i32 %7, 1
  %38 = call fastcc noundef i32 @_ZN3povL17bezier_subdividerEPNS_10Ray_StructEPNS_20Bicubic_Patch_StructEPA4_A4_A3_dddddiPNS_13istack_structE(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %11, double noundef %3, double noundef %4, double noundef %5, double noundef %36, i32 noundef %37, ptr noundef %8) #13
  %39 = call fastcc noundef i32 @_ZN3povL17bezier_subdividerEPNS_10Ray_StructEPNS_20Bicubic_Patch_StructEPA4_A4_A3_dddddiPNS_13istack_structE(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %13, double noundef %3, double noundef %4, double noundef %36, double noundef %6, i32 noundef %37, ptr noundef %8) #13
  %40 = add nsw i32 %39, %38
  br label %62

41:                                               ; preds = %24
  br i1 %30, label %49, label %42

42:                                               ; preds = %41
  call fastcc void @_ZN3povL23bezier_split_left_rightEPA4_A4_A3_dS3_S3_(ptr noundef %2, ptr noundef nonnull %11, ptr noundef nonnull %12) #13
  %43 = fadd double %3, %4
  %44 = fmul double %43, 5.000000e-01
  %45 = add nsw i32 %7, 1
  %46 = call fastcc noundef i32 @_ZN3povL17bezier_subdividerEPNS_10Ray_StructEPNS_20Bicubic_Patch_StructEPA4_A4_A3_dddddiPNS_13istack_structE(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %11, double noundef %3, double noundef %44, double noundef %5, double noundef %6, i32 noundef %45, ptr noundef %8) #13
  %47 = call fastcc noundef i32 @_ZN3povL17bezier_subdividerEPNS_10Ray_StructEPNS_20Bicubic_Patch_StructEPA4_A4_A3_dddddiPNS_13istack_structE(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %12, double noundef %44, double noundef %4, double noundef %5, double noundef %6, i32 noundef %45, ptr noundef %8) #13
  %48 = add nsw i32 %47, %46
  br label %62

49:                                               ; preds = %41
  %50 = fadd double %3, %4
  %51 = fmul double %50, 5.000000e-01
  %52 = fadd double %5, %6
  %53 = fmul double %52, 5.000000e-01
  call fastcc void @_ZN3povL23bezier_split_left_rightEPA4_A4_A3_dS3_S3_(ptr noundef %2, ptr noundef nonnull %11, ptr noundef nonnull %12) #13
  call fastcc void @_ZN3povL20bezier_split_up_downEPA4_A4_A3_dS3_S3_(ptr noundef nonnull %11, ptr noundef nonnull %11, ptr noundef nonnull %13) #13
  call fastcc void @_ZN3povL20bezier_split_up_downEPA4_A4_A3_dS3_S3_(ptr noundef nonnull %12, ptr noundef nonnull %12, ptr noundef nonnull %14) #13
  %54 = add nsw i32 %7, 1
  %55 = call fastcc noundef i32 @_ZN3povL17bezier_subdividerEPNS_10Ray_StructEPNS_20Bicubic_Patch_StructEPA4_A4_A3_dddddiPNS_13istack_structE(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %11, double noundef %3, double noundef %51, double noundef %5, double noundef %53, i32 noundef %54, ptr noundef %8) #13
  %56 = call fastcc noundef i32 @_ZN3povL17bezier_subdividerEPNS_10Ray_StructEPNS_20Bicubic_Patch_StructEPA4_A4_A3_dddddiPNS_13istack_structE(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %13, double noundef %3, double noundef %51, double noundef %53, double noundef %6, i32 noundef %54, ptr noundef %8) #13
  %57 = add nsw i32 %56, %55
  %58 = call fastcc noundef i32 @_ZN3povL17bezier_subdividerEPNS_10Ray_StructEPNS_20Bicubic_Patch_StructEPA4_A4_A3_dddddiPNS_13istack_structE(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %12, double noundef %51, double noundef %4, double noundef %5, double noundef %53, i32 noundef %54, ptr noundef %8) #13
  %59 = add nsw i32 %57, %58
  %60 = call fastcc noundef i32 @_ZN3povL17bezier_subdividerEPNS_10Ray_StructEPNS_20Bicubic_Patch_StructEPA4_A4_A3_dddddiPNS_13istack_structE(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %14, double noundef %51, double noundef %4, double noundef %53, double noundef %6, i32 noundef %54, ptr noundef %8) #13
  %61 = add nsw i32 %59, %60
  br label %62

62:                                               ; preds = %34, %49, %42, %9, %32, %22
  %63 = phi i32 [ %23, %22 ], [ %33, %32 ], [ 0, %9 ], [ %40, %34 ], [ %48, %42 ], [ %61, %49 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %15) #12
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %14) #12
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %13) #12
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %12) #12
  call void @llvm.lifetime.end.p0(i64 384, ptr nonnull %11) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #12
  ret i32 %63
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef i32 @_ZN3povL22spherical_bounds_checkEPNS_10Ray_StructEPdd(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, double noundef %2) unnamed_addr #7 !PGOFuncName !122 {
  %4 = load double, ptr %1, align 8, !tbaa !48
  %5 = load double, ptr %0, align 8, !tbaa !48
  %6 = fsub double %4, %5
  %7 = getelementptr inbounds double, ptr %1, i64 1
  %8 = load double, ptr %7, align 8, !tbaa !48
  %9 = getelementptr inbounds [3 x double], ptr %0, i64 0, i64 1
  %10 = load double, ptr %9, align 8, !tbaa !48
  %11 = fsub double %8, %10
  %12 = getelementptr inbounds double, ptr %1, i64 2
  %13 = load double, ptr %12, align 8, !tbaa !48
  %14 = getelementptr inbounds [3 x double], ptr %0, i64 0, i64 2
  %15 = load double, ptr %14, align 8, !tbaa !48
  %16 = fsub double %13, %15
  %17 = fmul double %11, %11
  %18 = tail call double @llvm.fmuladd.f64(double %6, double %6, double %17)
  %19 = tail call double @llvm.fmuladd.f64(double %16, double %16, double %18)
  %20 = fcmp olt double %19, %2
  br i1 %20, label %38, label %21

21:                                               ; preds = %3
  %22 = getelementptr inbounds %"struct.pov::Ray_Struct", ptr %0, i64 0, i32 1
  %23 = load double, ptr %22, align 8, !tbaa !48
  %24 = getelementptr inbounds %"struct.pov::Ray_Struct", ptr %0, i64 0, i32 1, i64 1
  %25 = load double, ptr %24, align 8, !tbaa !48
  %26 = fmul double %11, %25
  %27 = tail call double @llvm.fmuladd.f64(double %6, double %23, double %26)
  %28 = getelementptr inbounds %"struct.pov::Ray_Struct", ptr %0, i64 0, i32 1, i64 2
  %29 = load double, ptr %28, align 8, !tbaa !48
  %30 = tail call double @llvm.fmuladd.f64(double %16, double %29, double %27)
  %31 = fmul double %30, %30
  %32 = fcmp ogt double %31, 0.000000e+00
  br i1 %32, label %33, label %37

33:                                               ; preds = %21
  %34 = fsub double %19, %31
  %35 = fadd double %2, 1.000000e-10
  %36 = fcmp ugt double %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %21, %33
  br label %38

38:                                               ; preds = %33, %3, %37
  %39 = phi i32 [ 0, %37 ], [ 1, %3 ], [ 1, %33 ]
  ret i32 %39
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal fastcc noundef i32 @_ZN3povL25bezier_subpatch_intersectEPNS_10Ray_StructEPNS_20Bicubic_Patch_StructEPA4_A4_A3_dddddPNS_13istack_structE(ptr noundef %0, ptr noundef %1, ptr noundef %2, double noundef %3, double noundef %4, double noundef %5, double noundef %6, ptr noundef %7) unnamed_addr #0 !PGOFuncName !123 {
  %9 = alloca [3 x [3 x double]], align 16
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca [3 x double], align 16
  %14 = alloca [3 x double], align 16
  %15 = alloca [3 x double], align 16
  %16 = alloca [3 x double], align 16
  %17 = alloca [2 x double], align 16
  %18 = alloca [2 x double], align 16
  %19 = alloca [2 x double], align 16
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %9) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %13) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %14) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %15) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %16) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %17) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %18) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %19) #12
  call void @_ZN3pov13Assign_VectorEPdS0_(ptr noundef nonnull %9, ptr noundef %2) #13
  %20 = getelementptr inbounds [3 x [3 x double]], ptr %9, i64 0, i64 1
  %21 = getelementptr inbounds [4 x [3 x double]], ptr %2, i64 0, i64 3
  call void @_ZN3pov13Assign_VectorEPdS0_(ptr noundef nonnull %20, ptr noundef nonnull %21) #13
  %22 = getelementptr inbounds [3 x [3 x double]], ptr %9, i64 0, i64 2
  %23 = getelementptr inbounds [4 x [4 x [3 x double]]], ptr %2, i64 0, i64 3
  %24 = getelementptr inbounds [4 x [4 x [3 x double]]], ptr %2, i64 0, i64 3, i64 3
  call void @_ZN3pov13Assign_VectorEPdS0_(ptr noundef nonnull %22, ptr noundef nonnull %24) #13
  store double %3, ptr %13, align 16, !tbaa !48
  %25 = getelementptr inbounds [3 x double], ptr %13, i64 0, i64 1
  store double %3, ptr %25, align 8, !tbaa !48
  %26 = getelementptr inbounds [3 x double], ptr %13, i64 0, i64 2
  store double %4, ptr %26, align 16, !tbaa !48
  store double %5, ptr %14, align 16, !tbaa !48
  %27 = getelementptr inbounds [3 x double], ptr %14, i64 0, i64 1
  store double %6, ptr %27, align 8, !tbaa !48
  %28 = getelementptr inbounds [3 x double], ptr %14, i64 0, i64 2
  store double %6, ptr %28, align 16, !tbaa !48
  %29 = call fastcc noundef i32 @_ZN3povL18intersect_subpatchEPNS_20Bicubic_Patch_StructEPNS_10Ray_StructEPA3_dPdS6_S6_S6_S6_S6_S6_(ptr noundef %1, ptr noundef %0, ptr noundef nonnull %9, ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef nonnull %12, ptr noundef nonnull %15, ptr noundef nonnull %16, ptr noundef nonnull %10, ptr noundef nonnull %11) #13, !range !60
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %8
  %32 = load double, ptr %11, align 8, !tbaa !48
  store double %32, ptr %18, align 16, !tbaa !48
  %33 = load double, ptr %10, align 8, !tbaa !48
  %34 = getelementptr inbounds [2 x double], ptr %18, i64 0, i64 1
  store double %33, ptr %34, align 8, !tbaa !48
  %35 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %1, i64 0, i32 18
  call fastcc void @_ZN3povL18Compute_Texture_UVEPdPA2_dS0_(ptr noundef nonnull %18, ptr noundef nonnull %35, ptr noundef nonnull %19) #13
  %36 = load <2 x double>, ptr %19, align 16, !tbaa !48
  store <2 x double> %36, ptr %17, align 16, !tbaa !48
  %37 = load double, ptr %12, align 8, !tbaa !48
  call void @_ZN3pov20push_normal_uv_entryEdPdS0_S0_PNS_13Object_StructEPNS_13istack_structE(double noundef %37, ptr noundef nonnull %15, ptr noundef nonnull %16, ptr noundef nonnull %17, ptr noundef %1, ptr noundef %7) #13
  br label %38

38:                                               ; preds = %31, %8
  %39 = phi i32 [ 1, %31 ], [ 0, %8 ]
  call void @_ZN3pov13Assign_VectorEPdS0_(ptr noundef nonnull %20, ptr noundef nonnull %22) #13
  call void @_ZN3pov13Assign_VectorEPdS0_(ptr noundef nonnull %22, ptr noundef nonnull %23) #13
  store double %4, ptr %25, align 8, !tbaa !48
  store double %4, ptr %26, align 16, !tbaa !48
  store double %6, ptr %27, align 8, !tbaa !48
  store double %5, ptr %28, align 16, !tbaa !48
  %40 = call fastcc noundef i32 @_ZN3povL18intersect_subpatchEPNS_20Bicubic_Patch_StructEPNS_10Ray_StructEPA3_dPdS6_S6_S6_S6_S6_S6_(ptr noundef %1, ptr noundef %0, ptr noundef nonnull %9, ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef nonnull %12, ptr noundef nonnull %15, ptr noundef nonnull %16, ptr noundef nonnull %10, ptr noundef nonnull %11) #13, !range !60
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %50, label %42

42:                                               ; preds = %38
  %43 = load double, ptr %11, align 8, !tbaa !48
  store double %43, ptr %18, align 16, !tbaa !48
  %44 = load double, ptr %10, align 8, !tbaa !48
  %45 = getelementptr inbounds [2 x double], ptr %18, i64 0, i64 1
  store double %44, ptr %45, align 8, !tbaa !48
  %46 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %1, i64 0, i32 18
  call fastcc void @_ZN3povL18Compute_Texture_UVEPdPA2_dS0_(ptr noundef nonnull %18, ptr noundef nonnull %46, ptr noundef nonnull %19) #13
  %47 = load <2 x double>, ptr %19, align 16, !tbaa !48
  store <2 x double> %47, ptr %17, align 16, !tbaa !48
  %48 = load double, ptr %12, align 8, !tbaa !48
  call void @_ZN3pov20push_normal_uv_entryEdPdS0_S0_PNS_13Object_StructEPNS_13istack_structE(double noundef %48, ptr noundef nonnull %15, ptr noundef nonnull %16, ptr noundef nonnull %17, ptr noundef %1, ptr noundef %7) #13
  %49 = add nuw nsw i32 %39, 1
  br label %50

50:                                               ; preds = %42, %38
  %51 = phi i32 [ %49, %42 ], [ %39, %38 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %19) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %18) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %17) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %16) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %15) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %14) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %13) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %9) #12
  ret i32 %51
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal fastcc noundef i32 @_ZN3povL18intersect_subpatchEPNS_20Bicubic_Patch_StructEPNS_10Ray_StructEPA3_dPdS6_S6_S6_S6_S6_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, ptr nocapture noundef writeonly %5, ptr noundef %6, ptr noundef %7, ptr nocapture noundef writeonly %8, ptr nocapture noundef writeonly %9) unnamed_addr #0 !PGOFuncName !124 {
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca [3 x double], align 16
  %16 = alloca [3 x double], align 16
  %17 = alloca [3 x [3 x double]], align 16
  %18 = alloca [3 x [3 x double]], align 16
  %19 = alloca [3 x [3 x double]], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %15) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %16) #12
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %17) #12
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %18) #12
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %19) #12
  %20 = getelementptr inbounds [3 x double], ptr %2, i64 1
  call void @_ZN3pov4VSubEPdPKdS2_(ptr noundef nonnull %17, ptr noundef nonnull %20, ptr noundef %2) #13
  %21 = getelementptr inbounds [3 x [3 x double]], ptr %17, i64 0, i64 1
  %22 = getelementptr inbounds [3 x double], ptr %2, i64 2
  call void @_ZN3pov4VSubEPdPKdS2_(ptr noundef nonnull %21, ptr noundef nonnull %22, ptr noundef %2) #13
  %23 = getelementptr inbounds [3 x [3 x double]], ptr %17, i64 0, i64 2
  call void @_ZN3pov6VCrossEPdPKdS2_(ptr noundef nonnull %23, ptr noundef nonnull %17, ptr noundef nonnull %21) #13
  call void @_ZN3pov4VDotERdPKdS2_(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull %23, ptr noundef nonnull %23) #13
  %24 = call noundef double @_ZN3pov7VSumSqrEPd(ptr noundef nonnull %17) #13
  %25 = call noundef double @_ZN3pov7VSumSqrEPd(ptr noundef nonnull %21) #13
  %26 = load double, ptr %11, align 8, !tbaa !48
  %27 = fmul double %25, 1.000000e-10
  %28 = fmul double %24, %27
  %29 = fcmp ugt double %26, %28
  br i1 %29, label %30, label %94

30:                                               ; preds = %10
  %31 = call double @sqrt(double noundef %26) #14
  %32 = fdiv double 1.000000e+00, %31
  store double %32, ptr %11, align 8, !tbaa !48
  call void @_ZN3pov8VScaleEqEPdd(ptr noundef nonnull %23, double noundef %32) #13
  %33 = call noundef i32 @_ZN3pov8MInvers3EPA3_dS1_(ptr noundef nonnull %17, ptr noundef nonnull %18) #13
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %94, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %"struct.pov::Ray_Struct", ptr %1, i64 0, i32 1
  %37 = getelementptr inbounds [3 x [3 x double]], ptr %18, i64 0, i64 2
  call void @_ZN3pov4VDotERdPKdS2_(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull %36, ptr noundef nonnull %37) #13
  %38 = load double, ptr %11, align 8, !tbaa !48
  %39 = call double @llvm.fabs.f64(double %38)
  %40 = fcmp olt double %39, 1.000000e-10
  br i1 %40, label %94, label %41

41:                                               ; preds = %35
  call void @_ZN3pov4VSubEPdPKdS2_(ptr noundef nonnull %15, ptr noundef %2, ptr noundef %1) #13
  call void @_ZN3pov4VDotERdPKdS2_(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull %15, ptr noundef nonnull %37) #13
  %42 = load double, ptr %12, align 8, !tbaa !48
  %43 = load double, ptr %11, align 8, !tbaa !48
  %44 = fdiv double %42, %43
  store double %44, ptr %5, align 8, !tbaa !48
  %45 = fcmp olt double %44, 1.000000e-05
  br i1 %45, label %94, label %46

46:                                               ; preds = %41
  call void @_ZN3pov6VScaleEPdPKdd(ptr noundef nonnull %16, ptr noundef nonnull %36, double noundef %44) #13
  call void @_ZN3pov4VAddEPdPKdS2_(ptr noundef %6, ptr noundef %1, ptr noundef nonnull %16) #13
  call void @_ZN3pov4VSubEPdPKdS2_(ptr noundef nonnull %15, ptr noundef %6, ptr noundef %2) #13
  call void @_ZN3pov4VDotERdPKdS2_(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull %15, ptr noundef nonnull %18) #13
  %47 = getelementptr inbounds [3 x [3 x double]], ptr %18, i64 0, i64 1
  call void @_ZN3pov4VDotERdPKdS2_(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull %15, ptr noundef nonnull %47) #13
  %48 = load double, ptr %13, align 8, !tbaa !48
  %49 = fcmp olt double %48, 0.000000e+00
  %50 = load double, ptr %14, align 8
  %51 = fcmp olt double %50, 0.000000e+00
  %52 = select i1 %49, i1 true, i1 %51
  %53 = fadd double %48, %50
  %54 = fcmp ogt double %53, 1.000000e+00
  %55 = select i1 %52, i1 true, i1 %54
  br i1 %55, label %94, label %56

56:                                               ; preds = %46
  %57 = fsub double 1.000000e+00, %48
  %58 = fsub double %57, %50
  call void @_ZN3pov11Make_VectorEPdddd(ptr noundef %7, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00) #13
  %59 = getelementptr inbounds %"struct.pov::Bicubic_Patch_Struct", ptr %0, i64 0, i32 17
  %60 = load double, ptr %3, align 8, !tbaa !48
  %61 = load double, ptr %4, align 8, !tbaa !48
  call fastcc void @_ZN3povL12bezier_valueEPA4_A4_A3_dddPdS4_(ptr noundef nonnull %59, double noundef %60, double noundef %61, ptr noundef nonnull %16, ptr noundef nonnull %19) #13
  %62 = getelementptr inbounds double, ptr %3, i64 1
  %63 = load double, ptr %62, align 8, !tbaa !48
  %64 = getelementptr inbounds double, ptr %4, i64 1
  %65 = load double, ptr %64, align 8, !tbaa !48
  %66 = getelementptr inbounds [3 x [3 x double]], ptr %19, i64 0, i64 1
  call fastcc void @_ZN3povL12bezier_valueEPA4_A4_A3_dddPdS4_(ptr noundef nonnull %59, double noundef %63, double noundef %65, ptr noundef nonnull %16, ptr noundef nonnull %66) #13
  %67 = getelementptr inbounds double, ptr %3, i64 2
  %68 = load double, ptr %67, align 8, !tbaa !48
  %69 = getelementptr inbounds double, ptr %4, i64 2
  %70 = load double, ptr %69, align 8, !tbaa !48
  %71 = getelementptr inbounds [3 x [3 x double]], ptr %19, i64 0, i64 2
  call fastcc void @_ZN3povL12bezier_valueEPA4_A4_A3_dddPdS4_(ptr noundef nonnull %59, double noundef %68, double noundef %70, ptr noundef nonnull %16, ptr noundef nonnull %71) #13
  call void @_ZN3pov6VScaleEPdPKdd(ptr noundef nonnull %16, ptr noundef nonnull %19, double noundef %58) #13
  call void @_ZN3pov6VAddEqEPdPKd(ptr noundef %7, ptr noundef nonnull %16) #13
  %72 = load double, ptr %13, align 8, !tbaa !48
  call void @_ZN3pov6VScaleEPdPKdd(ptr noundef nonnull %16, ptr noundef nonnull %66, double noundef %72) #13
  call void @_ZN3pov6VAddEqEPdPKd(ptr noundef %7, ptr noundef nonnull %16) #13
  %73 = load double, ptr %14, align 8, !tbaa !48
  call void @_ZN3pov6VScaleEPdPKdd(ptr noundef nonnull %16, ptr noundef nonnull %71, double noundef %73) #13
  call void @_ZN3pov6VAddEqEPdPKd(ptr noundef %7, ptr noundef nonnull %16) #13
  %74 = load double, ptr %3, align 8, !tbaa !48
  %75 = load double, ptr %13, align 8, !tbaa !48
  %76 = load double, ptr %62, align 8, !tbaa !48
  %77 = fmul double %75, %76
  %78 = call double @llvm.fmuladd.f64(double %58, double %74, double %77)
  %79 = load double, ptr %14, align 8, !tbaa !48
  %80 = load double, ptr %67, align 8, !tbaa !48
  %81 = call double @llvm.fmuladd.f64(double %79, double %80, double %78)
  store double %81, ptr %8, align 8, !tbaa !48
  %82 = load double, ptr %4, align 8, !tbaa !48
  %83 = load double, ptr %64, align 8, !tbaa !48
  %84 = fmul double %75, %83
  %85 = call double @llvm.fmuladd.f64(double %58, double %82, double %84)
  %86 = load double, ptr %69, align 8, !tbaa !48
  %87 = call double @llvm.fmuladd.f64(double %79, double %86, double %85)
  store double %87, ptr %9, align 8, !tbaa !48
  call void @_ZN3pov4VDotERdPKdS2_(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef %7, ptr noundef %7) #13
  %88 = load double, ptr %11, align 8, !tbaa !48
  %89 = fcmp ogt double %88, 1.000000e-10
  br i1 %89, label %90, label %93

90:                                               ; preds = %56
  %91 = call double @sqrt(double noundef %88) #14
  %92 = fdiv double 1.000000e+00, %91
  store double %92, ptr %11, align 8, !tbaa !48
  call void @_ZN3pov8VScaleEqEPdd(ptr noundef %7, double noundef %92) #13
  br label %94

93:                                               ; preds = %56
  call void @_ZN3pov11Make_VectorEPdddd(ptr noundef %7, double noundef 1.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00) #13
  br label %94

94:                                               ; preds = %90, %93, %46, %41, %35, %30, %10
  %95 = phi i32 [ 0, %10 ], [ 0, %30 ], [ 0, %35 ], [ 0, %41 ], [ 0, %46 ], [ 1, %93 ], [ 1, %90 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %19) #12
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %18) #12
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %17) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %16) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %15) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #12
  ret i32 %95
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_ZN3povL18Compute_Texture_UVEPdPA2_dS0_(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #8 !PGOFuncName !125 {
  %4 = load double, ptr %1, align 8, !tbaa !48
  %5 = load double, ptr %0, align 8, !tbaa !48
  %6 = getelementptr inbounds [2 x double], ptr %1, i64 1
  %7 = load double, ptr %6, align 8, !tbaa !48
  %8 = fsub double %7, %4
  %9 = tail call double @llvm.fmuladd.f64(double %5, double %8, double %4)
  %10 = getelementptr inbounds [2 x double], ptr %1, i64 0, i64 1
  %11 = load double, ptr %10, align 8, !tbaa !48
  %12 = getelementptr inbounds [2 x double], ptr %1, i64 1, i64 1
  %13 = load double, ptr %12, align 8, !tbaa !48
  %14 = fsub double %13, %11
  %15 = tail call double @llvm.fmuladd.f64(double %5, double %14, double %11)
  %16 = getelementptr inbounds [2 x double], ptr %1, i64 3
  %17 = load double, ptr %16, align 8, !tbaa !48
  %18 = getelementptr inbounds [2 x double], ptr %1, i64 2
  %19 = load double, ptr %18, align 8, !tbaa !48
  %20 = fsub double %19, %17
  %21 = tail call double @llvm.fmuladd.f64(double %5, double %20, double %17)
  %22 = getelementptr inbounds [2 x double], ptr %1, i64 3, i64 1
  %23 = load double, ptr %22, align 8, !tbaa !48
  %24 = getelementptr inbounds [2 x double], ptr %1, i64 2, i64 1
  %25 = load double, ptr %24, align 8, !tbaa !48
  %26 = fsub double %25, %23
  %27 = tail call double @llvm.fmuladd.f64(double %5, double %26, double %23)
  %28 = getelementptr inbounds double, ptr %0, i64 1
  %29 = load double, ptr %28, align 8, !tbaa !48
  %30 = fsub double %21, %9
  %31 = tail call double @llvm.fmuladd.f64(double %29, double %30, double %9)
  store double %31, ptr %2, align 8, !tbaa !48
  %32 = load double, ptr %28, align 8, !tbaa !48
  %33 = fsub double %27, %15
  %34 = tail call double @llvm.fmuladd.f64(double %32, double %33, double %15)
  %35 = getelementptr inbounds double, ptr %2, i64 1
  store double %34, ptr %35, align 8, !tbaa !48
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN3pov20push_normal_uv_entryEdPdS0_S0_PNS_13Object_StructEPNS_13istack_structE(double noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 comdat {
  %7 = tail call noundef nonnull align 8 dereferenceable(200) ptr @_ZN3pov4itopEPNS_13istack_structE(ptr noundef %5) #13
  store double %0, ptr %7, align 8, !tbaa !126
  %8 = tail call noundef nonnull align 8 dereferenceable(200) ptr @_ZN3pov4itopEPNS_13istack_structE(ptr noundef %5) #13
  %9 = getelementptr inbounds %"struct.pov::istk_entry", ptr %8, i64 0, i32 5
  store ptr %4, ptr %9, align 8, !tbaa !128
  %10 = tail call noundef nonnull align 8 dereferenceable(200) ptr @_ZN3pov4itopEPNS_13istack_structE(ptr noundef %5) #13
  %11 = getelementptr inbounds %"struct.pov::istk_entry", ptr %10, i64 0, i32 1
  tail call void @_ZN3pov13Assign_VectorEPdS0_(ptr noundef nonnull %11, ptr noundef %1) #13
  %12 = tail call noundef nonnull align 8 dereferenceable(200) ptr @_ZN3pov4itopEPNS_13istack_structE(ptr noundef %5) #13
  %13 = getelementptr inbounds %"struct.pov::istk_entry", ptr %12, i64 0, i32 2
  tail call void @_ZN3pov13Assign_VectorEPdS0_(ptr noundef nonnull %13, ptr noundef %2) #13
  %14 = tail call noundef nonnull align 8 dereferenceable(200) ptr @_ZN3pov4itopEPNS_13istack_structE(ptr noundef %5) #13
  %15 = getelementptr inbounds %"struct.pov::istk_entry", ptr %14, i64 0, i32 4
  tail call void @_ZN3pov14Assign_UV_VectEPdS0_(ptr noundef nonnull %15, ptr noundef %3) #13
  %16 = tail call noundef nonnull align 8 dereferenceable(200) ptr @_ZN3pov4itopEPNS_13istack_structE(ptr noundef %5) #13
  %17 = getelementptr inbounds %"struct.pov::istk_entry", ptr %16, i64 0, i32 18
  store ptr null, ptr %17, align 8, !tbaa !129
  tail call void @_ZN3pov8incstackEPNS_13istack_structE(ptr noundef %5) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov8VScaleEqEPdd(ptr noundef %0, double noundef %1) local_unnamed_addr #2 comdat {
  %3 = load <2 x double>, ptr %0, align 8, !tbaa !48
  %4 = insertelement <2 x double> poison, double %1, i64 0
  %5 = shufflevector <2 x double> %4, <2 x double> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x double> %3, %5
  store <2 x double> %6, ptr %0, align 8, !tbaa !48
  %7 = getelementptr inbounds double, ptr %0, i64 2
  %8 = load double, ptr %7, align 8, !tbaa !48
  %9 = fmul double %8, %1
  store double %9, ptr %7, align 8, !tbaa !48
  ret void
}

; Function Attrs: optsize
declare noundef i32 @_ZN3pov8MInvers3EPA3_dS1_(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov6VScaleEPdPKdd(ptr noundef %0, ptr noundef %1, double noundef %2) local_unnamed_addr #2 comdat {
  %4 = load double, ptr %1, align 8, !tbaa !48
  %5 = fmul double %4, %2
  store double %5, ptr %0, align 8, !tbaa !48
  %6 = getelementptr inbounds double, ptr %1, i64 1
  %7 = load double, ptr %6, align 8, !tbaa !48
  %8 = fmul double %7, %2
  %9 = getelementptr inbounds double, ptr %0, i64 1
  store double %8, ptr %9, align 8, !tbaa !48
  %10 = getelementptr inbounds double, ptr %1, i64 2
  %11 = load double, ptr %10, align 8, !tbaa !48
  %12 = fmul double %11, %2
  %13 = getelementptr inbounds double, ptr %0, i64 2
  store double %12, ptr %13, align 8, !tbaa !48
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov4VAddEPdPKdS2_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat {
  %4 = load double, ptr %1, align 8, !tbaa !48
  %5 = load double, ptr %2, align 8, !tbaa !48
  %6 = fadd double %4, %5
  store double %6, ptr %0, align 8, !tbaa !48
  %7 = getelementptr inbounds double, ptr %1, i64 1
  %8 = load double, ptr %7, align 8, !tbaa !48
  %9 = getelementptr inbounds double, ptr %2, i64 1
  %10 = load double, ptr %9, align 8, !tbaa !48
  %11 = fadd double %8, %10
  %12 = getelementptr inbounds double, ptr %0, i64 1
  store double %11, ptr %12, align 8, !tbaa !48
  %13 = getelementptr inbounds double, ptr %1, i64 2
  %14 = load double, ptr %13, align 8, !tbaa !48
  %15 = getelementptr inbounds double, ptr %2, i64 2
  %16 = load double, ptr %15, align 8, !tbaa !48
  %17 = fadd double %14, %16
  %18 = getelementptr inbounds double, ptr %0, i64 2
  store double %17, ptr %18, align 8, !tbaa !48
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define internal fastcc void @_ZN3povL12bezier_valueEPA4_A4_A3_dddPdS4_(ptr noundef %0, double noundef %1, double noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #2 !PGOFuncName !130 {
  %6 = alloca double, align 8
  %7 = alloca [4 x double], align 16
  %8 = alloca [4 x double], align 16
  %9 = alloca [4 x double], align 16
  %10 = alloca [4 x double], align 16
  %11 = alloca [4 x double], align 16
  %12 = alloca [4 x double], align 16
  %13 = alloca [4 x double], align 16
  %14 = alloca [4 x double], align 16
  %15 = alloca [3 x double], align 16
  %16 = alloca [3 x double], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #12
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #12
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #12
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #12
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %11) #12
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %12) #12
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %13) #12
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %14) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %15) #12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %16) #12
  store double 1.000000e+00, ptr %7, align 16, !tbaa !48
  store double 1.000000e+00, ptr %8, align 16, !tbaa !48
  store double 0.000000e+00, ptr %11, align 16, !tbaa !48
  store double 0.000000e+00, ptr %12, align 16, !tbaa !48
  store double 1.000000e+00, ptr %9, align 16, !tbaa !48
  store double 1.000000e+00, ptr %10, align 16, !tbaa !48
  store double 0.000000e+00, ptr %13, align 16, !tbaa !48
  store double 0.000000e+00, ptr %14, align 16, !tbaa !48
  %17 = fsub double 1.000000e+00, %1
  %18 = fsub double 1.000000e+00, %2
  br label %19

19:                                               ; preds = %5, %19
  %20 = phi double [ 1.000000e+00, %5 ], [ %31, %19 ]
  %21 = phi double [ 1.000000e+00, %5 ], [ %29, %19 ]
  %22 = phi double [ 1.000000e+00, %5 ], [ %27, %19 ]
  %23 = phi double [ 1.000000e+00, %5 ], [ %25, %19 ]
  %24 = phi i64 [ 1, %5 ], [ %46, %19 ]
  %25 = fmul double %23, %1
  %26 = getelementptr inbounds [4 x double], ptr %7, i64 0, i64 %24
  store double %25, ptr %26, align 8, !tbaa !48
  %27 = fmul double %17, %22
  %28 = getelementptr inbounds [4 x double], ptr %8, i64 0, i64 %24
  store double %27, ptr %28, align 8, !tbaa !48
  %29 = fmul double %21, %2
  %30 = getelementptr inbounds [4 x double], ptr %9, i64 0, i64 %24
  store double %29, ptr %30, align 8, !tbaa !48
  %31 = fmul double %18, %20
  %32 = getelementptr inbounds [4 x double], ptr %10, i64 0, i64 %24
  store double %31, ptr %32, align 8, !tbaa !48
  %33 = trunc i64 %24 to i32
  %34 = sitofp i32 %33 to double
  %35 = fmul double %23, %34
  %36 = getelementptr inbounds [4 x double], ptr %11, i64 0, i64 %24
  store double %35, ptr %36, align 8, !tbaa !48
  %37 = trunc i64 %24 to i32
  %38 = sub i32 0, %37
  %39 = sitofp i32 %38 to double
  %40 = fmul double %22, %39
  %41 = getelementptr inbounds [4 x double], ptr %12, i64 0, i64 %24
  store double %40, ptr %41, align 8, !tbaa !48
  %42 = fmul double %21, %34
  %43 = getelementptr inbounds [4 x double], ptr %13, i64 0, i64 %24
  store double %42, ptr %43, align 8, !tbaa !48
  %44 = fmul double %20, %39
  %45 = getelementptr inbounds [4 x double], ptr %14, i64 0, i64 %24
  store double %44, ptr %45, align 8, !tbaa !48
  %46 = add nuw nsw i64 %24, 1
  %47 = icmp eq i64 %46, 4
  br i1 %47, label %48, label %19, !llvm.loop !131

48:                                               ; preds = %19
  tail call void @_ZN3pov11Make_VectorEPdddd(ptr noundef %3, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00) #13
  call void @_ZN3pov11Make_VectorEPdddd(ptr noundef nonnull %15, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00) #13
  call void @_ZN3pov11Make_VectorEPdddd(ptr noundef nonnull %16, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00) #13
  br label %49

49:                                               ; preds = %48, %92
  %50 = phi i64 [ 0, %48 ], [ %93, %92 ]
  %51 = getelementptr inbounds [4 x double], ptr @__const._ZN3povL12bezier_valueEPA4_A4_A3_dddPdS4_.C, i64 0, i64 %50
  %52 = load double, ptr %51, align 8, !tbaa !48
  %53 = getelementptr inbounds [4 x double], ptr %7, i64 0, i64 %50
  %54 = load double, ptr %53, align 8, !tbaa !48
  %55 = and i64 %50, 4294967295
  %56 = xor i64 %55, 3
  %57 = getelementptr inbounds [4 x double], ptr %8, i64 0, i64 %56
  %58 = load double, ptr %57, align 8, !tbaa !48
  %59 = fmul double %54, %58
  %60 = getelementptr inbounds [4 x double], ptr %11, i64 0, i64 %50
  %61 = getelementptr inbounds [4 x double], ptr %12, i64 0, i64 %56
  br label %62

62:                                               ; preds = %49, %62
  %63 = phi i64 [ 0, %49 ], [ %90, %62 ]
  %64 = getelementptr inbounds [4 x double], ptr @__const._ZN3povL12bezier_valueEPA4_A4_A3_dddPdS4_.C, i64 0, i64 %63
  %65 = load double, ptr %64, align 8, !tbaa !48
  %66 = fmul double %52, %65
  %67 = getelementptr inbounds [4 x double], ptr %9, i64 0, i64 %63
  %68 = load double, ptr %67, align 8, !tbaa !48
  %69 = and i64 %63, 4294967295
  %70 = xor i64 %69, 3
  %71 = getelementptr inbounds [4 x double], ptr %10, i64 0, i64 %70
  %72 = load double, ptr %71, align 8, !tbaa !48
  %73 = fmul double %68, %72
  %74 = fmul double %66, %59
  %75 = fmul double %74, %73
  %76 = getelementptr inbounds [4 x [4 x [3 x double]]], ptr %0, i64 0, i64 %50, i64 %63
  call void @_ZN3pov12VAddScaledEqEPddPKd(ptr noundef %3, double noundef %75, ptr noundef %76) #13
  %77 = fmul double %66, %73
  %78 = load double, ptr %60, align 8, !tbaa !48
  %79 = load double, ptr %61, align 8, !tbaa !48
  %80 = fmul double %54, %79
  %81 = call double @llvm.fmuladd.f64(double %78, double %58, double %80)
  %82 = fmul double %77, %81
  call void @_ZN3pov12VAddScaledEqEPddPKd(ptr noundef nonnull %15, double noundef %82, ptr noundef %76) #13
  %83 = getelementptr inbounds [4 x double], ptr %13, i64 0, i64 %63
  %84 = load double, ptr %83, align 8, !tbaa !48
  %85 = getelementptr inbounds [4 x double], ptr %14, i64 0, i64 %70
  %86 = load double, ptr %85, align 8, !tbaa !48
  %87 = fmul double %68, %86
  %88 = call double @llvm.fmuladd.f64(double %84, double %72, double %87)
  %89 = fmul double %74, %88
  store double %89, ptr %6, align 8, !tbaa !48
  call void @_ZN3pov12VAddScaledEqEPddPKd(ptr noundef nonnull %16, double noundef %89, ptr noundef %76) #13
  %90 = add nuw nsw i64 %63, 1
  %91 = icmp eq i64 %90, 4
  br i1 %91, label %92, label %62, !llvm.loop !132

92:                                               ; preds = %62
  %93 = add nuw nsw i64 %50, 1
  %94 = icmp eq i64 %93, 4
  br i1 %94, label %95, label %49, !llvm.loop !133

95:                                               ; preds = %92
  call void @_ZN3pov6VCrossEPdPKdS2_(ptr noundef %4, ptr noundef nonnull %15, ptr noundef nonnull %16) #13
  call void @_ZN3pov4VDotERdPKdS2_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %4, ptr noundef %4) #13
  %96 = call noundef double @_ZN3pov7VSumSqrEPd(ptr noundef nonnull %15) #13
  %97 = call noundef double @_ZN3pov7VSumSqrEPd(ptr noundef nonnull %16) #13
  %98 = load double, ptr %6, align 8, !tbaa !48
  %99 = fmul double %96, 1.000000e-10
  %100 = fmul double %99, %97
  %101 = fcmp ogt double %98, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %95
  %103 = call double @sqrt(double noundef %98) #14
  %104 = fdiv double 1.000000e+00, %103
  store double %104, ptr %6, align 8, !tbaa !48
  call void @_ZN3pov8VScaleEqEPdd(ptr noundef %4, double noundef %104) #13
  br label %106

105:                                              ; preds = %95
  call void @_ZN3pov11Make_VectorEPdddd(ptr noundef %4, double noundef 1.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00) #13
  br label %106

106:                                              ; preds = %105, %102
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %16) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %15) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %14) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %13) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %11) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov6VAddEqEPdPKd(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 comdat {
  %3 = load double, ptr %1, align 8, !tbaa !48
  %4 = load double, ptr %0, align 8, !tbaa !48
  %5 = fadd double %3, %4
  store double %5, ptr %0, align 8, !tbaa !48
  %6 = getelementptr inbounds double, ptr %1, i64 1
  %7 = load double, ptr %6, align 8, !tbaa !48
  %8 = getelementptr inbounds double, ptr %0, i64 1
  %9 = load double, ptr %8, align 8, !tbaa !48
  %10 = fadd double %7, %9
  store double %10, ptr %8, align 8, !tbaa !48
  %11 = getelementptr inbounds double, ptr %1, i64 2
  %12 = load double, ptr %11, align 8, !tbaa !48
  %13 = getelementptr inbounds double, ptr %0, i64 2
  %14 = load double, ptr %13, align 8, !tbaa !48
  %15 = fadd double %12, %14
  store double %15, ptr %13, align 8, !tbaa !48
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov12VAddScaledEqEPddPKd(ptr noundef %0, double noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat {
  %4 = load double, ptr %2, align 8, !tbaa !48
  %5 = load double, ptr %0, align 8, !tbaa !48
  %6 = tail call double @llvm.fmuladd.f64(double %1, double %4, double %5)
  store double %6, ptr %0, align 8, !tbaa !48
  %7 = getelementptr inbounds double, ptr %2, i64 1
  %8 = load double, ptr %7, align 8, !tbaa !48
  %9 = getelementptr inbounds double, ptr %0, i64 1
  %10 = load double, ptr %9, align 8, !tbaa !48
  %11 = tail call double @llvm.fmuladd.f64(double %1, double %8, double %10)
  store double %11, ptr %9, align 8, !tbaa !48
  %12 = getelementptr inbounds double, ptr %2, i64 2
  %13 = load double, ptr %12, align 8, !tbaa !48
  %14 = getelementptr inbounds double, ptr %0, i64 2
  %15 = load double, ptr %14, align 8, !tbaa !48
  %16 = tail call double @llvm.fmuladd.f64(double %1, double %13, double %15)
  store double %16, ptr %14, align 8, !tbaa !48
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(200) ptr @_ZN3pov4itopEPNS_13istack_structE(ptr noundef %0) local_unnamed_addr #2 comdat {
  %2 = getelementptr inbounds %"struct.pov::istack_struct", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !134
  %4 = getelementptr inbounds %"struct.pov::istack_struct", ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 4, !tbaa !136
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds %"struct.pov::istk_entry", ptr %3, i64 %6
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov14Assign_UV_VectEPdS0_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 comdat {
  %3 = load double, ptr %1, align 8, !tbaa !48
  store double %3, ptr %0, align 8, !tbaa !48
  %4 = getelementptr inbounds double, ptr %1, i64 1
  %5 = load double, ptr %4, align 8, !tbaa !48
  %6 = getelementptr inbounds double, ptr %0, i64 1
  store double %5, ptr %6, align 8, !tbaa !48
  ret void
}

; Function Attrs: optsize
declare void @_ZN3pov8incstackEPNS_13istack_structE(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN3pov9VEvaluateEPdPKdS2_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat {
  %4 = load double, ptr %1, align 8, !tbaa !48
  %5 = load double, ptr %2, align 8, !tbaa !48
  %6 = fmul double %4, %5
  store double %6, ptr %0, align 8, !tbaa !48
  %7 = getelementptr inbounds double, ptr %1, i64 1
  %8 = load double, ptr %7, align 8, !tbaa !48
  %9 = getelementptr inbounds double, ptr %2, i64 1
  %10 = load double, ptr %9, align 8, !tbaa !48
  %11 = fmul double %8, %10
  %12 = getelementptr inbounds double, ptr %0, i64 1
  store double %11, ptr %12, align 8, !tbaa !48
  %13 = getelementptr inbounds double, ptr %1, i64 2
  %14 = load double, ptr %13, align 8, !tbaa !48
  %15 = getelementptr inbounds double, ptr %2, i64 2
  %16 = load double, ptr %15, align 8, !tbaa !48
  %17 = fmul double %14, %16
  %18 = getelementptr inbounds double, ptr %0, i64 2
  store double %17, ptr %18, align 8, !tbaa !48
  ret void
}

; Function Attrs: optsize
declare void @_ZN3pov11MTransPointEPdS0_PNS_16Transform_StructE(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #10

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #10

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { nounwind }
attributes #13 = { optsize }
attributes #14 = { nounwind optsize }

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
!34 = !{!35, !35, i64 0}
!35 = !{!"int", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C++ TBAA"}
!38 = distinct !{!38, !39}
!39 = !{!"llvm.loop.mustprogress"}
!40 = distinct !{!40, !39}
!41 = !{!42, !35, i64 120}
!42 = !{!"_ZTSN3pov20Bicubic_Patch_StructE", !43, i64 0, !35, i64 8, !43, i64 16, !43, i64 24, !43, i64 32, !43, i64 40, !43, i64 48, !43, i64 56, !43, i64 64, !44, i64 72, !43, i64 96, !43, i64 104, !45, i64 112, !35, i64 116, !35, i64 120, !35, i64 124, !35, i64 128, !36, i64 136, !36, i64 520, !36, i64 584, !46, i64 608, !46, i64 616, !46, i64 624, !43, i64 632, !43, i64 640}
!43 = !{!"any pointer", !36, i64 0}
!44 = !{!"_ZTSN3pov19Bounding_Box_StructE", !36, i64 0, !36, i64 12}
!45 = !{!"float", !36, i64 0}
!46 = !{!"double", !36, i64 0}
!47 = !{!42, !43, i64 632}
!48 = !{!46, !46, i64 0}
!49 = !{!"bezier.cpp:_ZN3povL12find_averageEiPA3_dPdS2_"}
!50 = distinct !{!50, !39}
!51 = distinct !{!51, !39}
!52 = !{!"bezier.cpp:_ZN3povL19bezier_tree_deleterEPNS_18Bezier_Node_StructE"}
!53 = !{!54, !35, i64 0}
!54 = !{!"_ZTSN3pov18Bezier_Node_StructE", !35, i64 0, !36, i64 8, !46, i64 32, !35, i64 40, !43, i64 48}
!55 = !{!54, !43, i64 48}
!56 = !{!54, !35, i64 40}
!57 = !{!43, !43, i64 0}
!58 = distinct !{!58, !39}
!59 = !{!"bezier.cpp:_ZN3povL19bezier_tree_builderEPNS_20Bicubic_Patch_StructEPA4_A4_A3_dddddiRi"}
!60 = !{i32 0, i32 2}
!61 = !{!45, !45, i64 0}
!62 = !{!42, !35, i64 124}
!63 = !{!42, !35, i64 128}
!64 = !{!42, !35, i64 8}
!65 = !{!42, !43, i64 0}
!66 = distinct !{!66, !39}
!67 = distinct !{!67, !39}
!68 = !{!"bezier.cpp:_ZN3povL22create_new_bezier_nodeEv"}
!69 = !{!"bezier.cpp:_ZN3povL22bezier_bounding_sphereEPA4_A4_A3_dPdS4_"}
!70 = distinct !{!70, !39}
!71 = distinct !{!71, !39}
!72 = distinct !{!72, !39}
!73 = distinct !{!73, !39}
!74 = !{!"bezier.cpp:_ZN3povL11flat_enoughEPNS_20Bicubic_Patch_StructEPA4_A4_A3_d"}
!75 = !{!42, !46, i64 616}
!76 = !{!"bezier.cpp:_ZN3povL26create_bezier_vertex_blockEv"}
!77 = !{!"bezier.cpp:_ZN3povL20bezier_split_up_downEPA4_A4_A3_dS3_S3_"}
!78 = distinct !{!78, !39}
!79 = distinct !{!79, !39}
!80 = !{!"bezier.cpp:_ZN3povL25create_bezier_child_blockEv"}
!81 = !{!"bezier.cpp:_ZN3povL23bezier_split_left_rightEPA4_A4_A3_dS3_S3_"}
!82 = distinct !{!82, !39}
!83 = distinct !{!83, !39}
!84 = !{!"bezier.cpp:_ZN3povL27determine_subpatch_flatnessEPA4_A4_A3_d"}
!85 = distinct !{!85, !39}
!86 = distinct !{!86, !39}
!87 = !{!"bezier.cpp:_ZN3povL15subpatch_normalEPdS0_S0_S0_S0_"}
!88 = !{!"bezier.cpp:_ZN3povL20point_plane_distanceEPdS0_S0_"}
!89 = !{!"bezier.cpp:_ZN3povL31All_Bicubic_Patch_IntersectionsEPNS_13Object_StructEPNS_10Ray_StructEPNS_13istack_structE"}
!90 = !{!"bezier.cpp:_ZN3povL20Inside_Bicubic_PatchEPdPNS_13Object_StructE"}
!91 = !{!"bezier.cpp:_ZN3povL20Bicubic_Patch_NormalEPdPNS_13Object_StructEPNS_10istk_entryE"}
!92 = !{!"bezier.cpp:_ZN3povL21Bicubic_Patch_UVCoordEPdPNS_13Object_StructEPNS_10istk_entryE"}
!93 = !{!"bezier.cpp:_ZN3povL18Copy_Bicubic_PatchEPNS_13Object_StructE"}
!94 = !{!95, !45, i64 112}
!95 = !{!"_ZTSN3pov13Object_StructE", !43, i64 0, !35, i64 8, !43, i64 16, !43, i64 24, !43, i64 32, !43, i64 40, !43, i64 48, !43, i64 56, !43, i64 64, !44, i64 72, !43, i64 96, !43, i64 104, !45, i64 112, !35, i64 116}
!96 = !{!42, !45, i64 112}
!97 = !{!42, !43, i64 640}
!98 = distinct !{!98, !39}
!99 = distinct !{!99, !39}
!100 = distinct !{!100, !39}
!101 = distinct !{!101, !39}
!102 = !{!"bezier.cpp:_ZN3povL23Translate_Bicubic_PatchEPNS_13Object_StructEPdPNS_16Transform_StructE"}
!103 = distinct !{!103, !39}
!104 = distinct !{!104, !39}
!105 = !{!"bezier.cpp:_ZN3povL20Rotate_Bicubic_PatchEPNS_13Object_StructEPdPNS_16Transform_StructE"}
!106 = !{!"bezier.cpp:_ZN3povL19Scale_Bicubic_PatchEPNS_13Object_StructEPdPNS_16Transform_StructE"}
!107 = distinct !{!107, !39}
!108 = distinct !{!108, !39}
!109 = !{!"bezier.cpp:_ZN3povL23Transform_Bicubic_PatchEPNS_13Object_StructEPNS_16Transform_StructE"}
!110 = distinct !{!110, !39}
!111 = distinct !{!111, !39}
!112 = !{!"bezier.cpp:_ZN3povL20Invert_Bicubic_PatchEPNS_13Object_StructE"}
!113 = !{!"bezier.cpp:_ZN3povL21Destroy_Bicubic_PatchEPNS_13Object_StructE"}
!114 = !{!115, !115, i64 0}
!115 = !{!"long long", !36, i64 0}
!116 = !{!"bezier.cpp:_ZN3povL24intersect_bicubic_patch0EPNS_10Ray_StructEPNS_20Bicubic_Patch_StructEPNS_13istack_structE"}
!117 = !{!"bezier.cpp:_ZN3povL18bezier_tree_walkerEPNS_10Ray_StructEPNS_20Bicubic_Patch_StructEPNS_18Bezier_Node_StructEPNS_13istack_structE"}
!118 = !{!54, !46, i64 32}
!119 = distinct !{!119, !39}
!120 = !{!"bezier.cpp:_ZN3povL17bezier_subdividerEPNS_10Ray_StructEPNS_20Bicubic_Patch_StructEPA4_A4_A3_dddddiPNS_13istack_structE"}
!121 = !{i32 0, i32 3}
!122 = !{!"bezier.cpp:_ZN3povL22spherical_bounds_checkEPNS_10Ray_StructEPdd"}
!123 = !{!"bezier.cpp:_ZN3povL25bezier_subpatch_intersectEPNS_10Ray_StructEPNS_20Bicubic_Patch_StructEPA4_A4_A3_dddddPNS_13istack_structE"}
!124 = !{!"bezier.cpp:_ZN3povL18intersect_subpatchEPNS_20Bicubic_Patch_StructEPNS_10Ray_StructEPA3_dPdS6_S6_S6_S6_S6_S6_"}
!125 = !{!"bezier.cpp:_ZN3povL18Compute_Texture_UVEPdPA2_dS0_"}
!126 = !{!127, !46, i64 0}
!127 = !{!"_ZTSN3pov10istk_entryE", !46, i64 0, !36, i64 8, !36, i64 32, !36, i64 56, !36, i64 80, !43, i64 96, !35, i64 104, !35, i64 108, !46, i64 112, !46, i64 120, !46, i64 128, !46, i64 136, !46, i64 144, !46, i64 152, !46, i64 160, !46, i64 168, !46, i64 176, !43, i64 184, !43, i64 192}
!128 = !{!127, !43, i64 96}
!129 = !{!127, !43, i64 192}
!130 = !{!"bezier.cpp:_ZN3povL12bezier_valueEPA4_A4_A3_dddPdS4_"}
!131 = distinct !{!131, !39}
!132 = distinct !{!132, !39}
!133 = distinct !{!133, !39}
!134 = !{!135, !43, i64 8}
!135 = !{!"_ZTSN3pov13istack_structE", !43, i64 0, !43, i64 8, !35, i64 16, !35, i64 20}
!136 = !{!135, !35, i64 20}

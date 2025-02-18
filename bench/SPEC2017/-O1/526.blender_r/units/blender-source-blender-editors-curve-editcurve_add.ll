; ModuleID = 'blender/source/blender/editors/curve/editcurve_add.c'
source_filename = "blender/source/blender/editors/curve/editcurve_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.ListBase = type { ptr, ptr }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.Curve = type { %struct.ID, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], i16, i16, i16, i16, float, float, i32, i16, i16, i32, float, float, float, i16, i16, i16, i16, i32, i32, [4 x i8], i16, i8, i8, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, i32, i32, ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, %struct.CharInfo, float, float, float, i8, i8, [2 x i8] }
%struct.CharInfo = type { i16, i16, i8, i8, i16 }
%struct.RegionView3D = type { [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [6 x [4 x float]], [6 x [4 x float]], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x [4 x float]], [4 x float], float, float, float, float, [3 x float], float, i8, i8, i8, i8, i8, [3 x i8], [2 x float], i16, i16, [4 x float], i16, i16, float, [3 x float], float, [3 x float] }
%struct.Nurb = type { ptr, ptr, i16, i16, i16, i16, i32, i32, [2 x i16], i16, i16, i16, i16, i16, i16, ptr, ptr, ptr, ptr, i16, i16, i32 }
%struct.BezTriple = type { [3 x [3 x float]], float, float, float, i8, i8, i8, i8, i8, i8, i8, i8, float, float, float, [4 x i8] }
%struct.BPoint = type { [4 x float], float, float, i16, i16, float, float }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }

@add_nurbs_primitive.xzproj = internal unnamed_addr global i1 false, align 4
@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [12 x i8] c"addNurbprim\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"addNurbprim1\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"addNurbprim3\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"addNurbprim6\00", align 1
@nurbcircle = internal unnamed_addr constant [8 x [2 x float]] [[2 x float] [float 0.000000e+00, float -1.000000e+00], [2 x float] [float -1.000000e+00, float -1.000000e+00], [2 x float] [float -1.000000e+00, float 0.000000e+00], [2 x float] [float -1.000000e+00, float 1.000000e+00], [2 x float] [float 0.000000e+00, float 1.000000e+00], [2 x float] [float 1.000000e+00, float 1.000000e+00], [2 x float] [float 1.000000e+00, float 0.000000e+00], [2 x float] [float 1.000000e+00, float -1.000000e+00]], align 16
@U = external local_unnamed_addr global %struct.UserDef, align 8
@__const.add_nurbs_primitive.tmp_vec.4 = private unnamed_addr constant [3 x float] [float 0.000000e+00, float 0.000000e+00, float 1.000000e+00], align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"Add Bezier\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"Construct a Bezier Curve\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"CURVE_OT_primitive_bezier_curve_add\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"Add Bezier Circle\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"Construct a Bezier Circle\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"CURVE_OT_primitive_bezier_circle_add\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"Add Nurbs Curve\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"Construct a Nurbs Curve\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"CURVE_OT_primitive_nurbs_curve_add\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"Add Nurbs Circle\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"Construct a Nurbs Circle\00", align 1
@.str.16 = private unnamed_addr constant [36 x i8] c"CURVE_OT_primitive_nurbs_circle_add\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"Add Path\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"Construct a Path\00", align 1
@.str.19 = private unnamed_addr constant [34 x i8] c"CURVE_OT_primitive_nurbs_path_add\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"Add Surface Curve\00", align 1
@.str.21 = private unnamed_addr constant [32 x i8] c"Construct a Nurbs surface Curve\00", align 1
@.str.22 = private unnamed_addr constant [45 x i8] c"SURFACE_OT_primitive_nurbs_surface_curve_add\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"Add Surface Circle\00", align 1
@.str.24 = private unnamed_addr constant [33 x i8] c"Construct a Nurbs surface Circle\00", align 1
@.str.25 = private unnamed_addr constant [46 x i8] c"SURFACE_OT_primitive_nurbs_surface_circle_add\00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c"Add Surface Patch\00", align 1
@.str.27 = private unnamed_addr constant [32 x i8] c"Construct a Nurbs surface Patch\00", align 1
@.str.28 = private unnamed_addr constant [47 x i8] c"SURFACE_OT_primitive_nurbs_surface_surface_add\00", align 1
@.str.29 = private unnamed_addr constant [21 x i8] c"Add Surface Cylinder\00", align 1
@.str.30 = private unnamed_addr constant [35 x i8] c"Construct a Nurbs surface Cylinder\00", align 1
@.str.31 = private unnamed_addr constant [48 x i8] c"SURFACE_OT_primitive_nurbs_surface_cylinder_add\00", align 1
@.str.32 = private unnamed_addr constant [19 x i8] c"Add Surface Sphere\00", align 1
@.str.33 = private unnamed_addr constant [33 x i8] c"Construct a Nurbs surface Sphere\00", align 1
@.str.34 = private unnamed_addr constant [46 x i8] c"SURFACE_OT_primitive_nurbs_surface_sphere_add\00", align 1
@.str.35 = private unnamed_addr constant [18 x i8] c"Add Surface Torus\00", align 1
@.str.36 = private unnamed_addr constant [32 x i8] c"Construct a Nurbs surface Torus\00", align 1
@.str.37 = private unnamed_addr constant [45 x i8] c"SURFACE_OT_primitive_nurbs_surface_torus_add\00", align 1
@.str.38 = private unnamed_addr constant [15 x i8] c"Enter Editmode\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"radius\00", align 1
@.str.40 = private unnamed_addr constant [12 x i8] c"BezierCurve\00", align 1
@.str.41 = private unnamed_addr constant [13 x i8] c"BezierCircle\00", align 1
@.str.42 = private unnamed_addr constant [10 x i8] c"CurvePath\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"Curve\00", align 1
@.str.44 = private unnamed_addr constant [11 x i8] c"NurbsCurve\00", align 1
@.str.45 = private unnamed_addr constant [12 x i8] c"NurbsCircle\00", align 1
@.str.46 = private unnamed_addr constant [10 x i8] c"NurbsPath\00", align 1
@.str.47 = private unnamed_addr constant [10 x i8] c"SurfCurve\00", align 1
@.str.48 = private unnamed_addr constant [11 x i8] c"SurfCircle\00", align 1
@.str.49 = private unnamed_addr constant [10 x i8] c"SurfPatch\00", align 1
@.str.50 = private unnamed_addr constant [11 x i8] c"SurfSphere\00", align 1
@.str.51 = private unnamed_addr constant [10 x i8] c"SurfTorus\00", align 1
@.str.52 = private unnamed_addr constant [8 x i8] c"Surface\00", align 1
@switch.table.curvesurf_prim_add.53 = private unnamed_addr constant [6 x ptr] [ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.52, ptr @.str.50, ptr @.str.51], align 8

; Function Attrs: nounwind uwtable
define dso_local ptr @add_nurbs_primitive(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [4 x [4 x float]], align 16
  %9 = alloca [4 x [4 x float]], align 16
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 4
  %12 = alloca [3 x float], align 4
  %13 = alloca [3 x float], align 4
  %14 = tail call ptr @object_editcurve_get(ptr noundef %1) #5
  %15 = tail call ptr @ED_view3d_context_rv3d(ptr noundef %0) #5
  %16 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %17 = load ptr, ptr %16, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #5
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %7, ptr noundef nonnull align 4 dereferenceable(12) @__const.add_nurbs_primitive.tmp_vec.4, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #5
  %18 = and i32 %3, 7
  %19 = and i32 %3, 3840
  %20 = getelementptr inbounds %struct.Curve, ptr %17, i64 0, i32 23
  %21 = load i32, ptr %20, align 4, !tbaa !46
  %22 = and i32 %21, 1
  call void @unit_m4(ptr noundef nonnull %8) #5
  call void @unit_m4(ptr noundef nonnull %9) #5
  %23 = icmp eq ptr %15, null
  br i1 %23, label %34, label %24

24:                                               ; preds = %5
  %25 = getelementptr inbounds %struct.RegionView3D, ptr %15, i64 0, i32 1
  call void @copy_m4_m4(ptr noundef nonnull %9, ptr noundef nonnull %25) #5
  %26 = getelementptr inbounds %struct.RegionView3D, ptr %15, i64 0, i32 2, i64 2
  %27 = load float, ptr %26, align 4, !tbaa !49
  store float %27, ptr %7, align 4, !tbaa !49
  %28 = getelementptr inbounds %struct.RegionView3D, ptr %15, i64 0, i32 2, i64 2, i64 1
  %29 = load float, ptr %28, align 4, !tbaa !49
  %30 = getelementptr inbounds float, ptr %7, i64 1
  store float %29, ptr %30, align 4, !tbaa !49
  %31 = getelementptr inbounds %struct.RegionView3D, ptr %15, i64 0, i32 2, i64 2, i64 2
  %32 = load float, ptr %31, align 4, !tbaa !49
  %33 = getelementptr inbounds float, ptr %7, i64 2
  store float %32, ptr %33, align 4, !tbaa !49
  br label %34

34:                                               ; preds = %24, %5
  call void @BKE_nurbList_flag_set(ptr noundef %14, i16 noundef signext 0) #5
  %35 = and i32 %3, 3328
  %36 = icmp eq i32 %35, 1024
  br i1 %36, label %48, label %37

37:                                               ; preds = %34
  %38 = load ptr, ptr @MEM_callocN, align 8, !tbaa !50
  %39 = call ptr %38(i64 noundef 88, ptr noundef nonnull @.str) #5
  %40 = trunc i32 %18 to i16
  %41 = getelementptr inbounds %struct.Nurb, ptr %39, i64 0, i32 2
  store i16 %40, ptr %41, align 8, !tbaa !51
  %42 = getelementptr inbounds %struct.Curve, ptr %17, i64 0, i32 27
  %43 = load i16, ptr %42, align 4, !tbaa !53
  %44 = getelementptr inbounds %struct.Nurb, ptr %39, i64 0, i32 9
  store i16 %43, ptr %44, align 4, !tbaa !54
  %45 = getelementptr inbounds %struct.Curve, ptr %17, i64 0, i32 28
  %46 = load i16, ptr %45, align 2, !tbaa !55
  %47 = getelementptr inbounds %struct.Nurb, ptr %39, i64 0, i32 10
  store i16 %46, ptr %47, align 2, !tbaa !56
  br label %48

48:                                               ; preds = %37, %34
  %49 = phi ptr [ %39, %37 ], [ null, %34 ]
  %50 = add nsw i32 %19, -256
  %51 = lshr exact i32 %50, 8
  switch i32 %51, label %524 [
    i32 0, label %52
    i32 6, label %158
    i32 1, label %201
    i32 2, label %312
    i32 3, label %359
    i32 4, label %396
    i32 5, label %467
  ]

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.Curve, ptr %17, i64 0, i32 27
  %54 = load i16, ptr %53, align 4, !tbaa !53
  %55 = getelementptr inbounds %struct.Nurb, ptr %49, i64 0, i32 9
  store i16 %54, ptr %55, align 4, !tbaa !54
  %56 = icmp eq i32 %18, 1
  br i1 %56, label %57, label %113

57:                                               ; preds = %52
  %58 = icmp eq i32 %22, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %57
  %60 = getelementptr inbounds %struct.Nurb, ptr %49, i64 0, i32 5
  %61 = load i16, ptr %60, align 2, !tbaa !57
  %62 = or i16 %61, 8
  store i16 %62, ptr %60, align 2, !tbaa !57
  br label %63

63:                                               ; preds = %59, %57
  %64 = getelementptr inbounds %struct.Nurb, ptr %49, i64 0, i32 6
  store i32 2, ptr %64, align 8, !tbaa !58
  %65 = load ptr, ptr @MEM_callocN, align 8, !tbaa !50
  %66 = call ptr %65(i64 noundef 144, ptr noundef nonnull @.str.1) #5
  %67 = getelementptr inbounds %struct.Nurb, ptr %49, i64 0, i32 18
  store ptr %66, ptr %67, align 8, !tbaa !59
  %68 = getelementptr inbounds %struct.BezTriple, ptr %66, i64 0, i32 6
  store i8 3, ptr %68, align 2, !tbaa !60
  %69 = getelementptr inbounds %struct.BezTriple, ptr %66, i64 0, i32 5
  store i8 3, ptr %69, align 1, !tbaa !62
  %70 = getelementptr inbounds %struct.BezTriple, ptr %66, i64 0, i32 9
  store i8 1, ptr %70, align 1, !tbaa !63
  %71 = getelementptr inbounds %struct.BezTriple, ptr %66, i64 0, i32 8
  store i8 1, ptr %71, align 4, !tbaa !64
  %72 = getelementptr inbounds %struct.BezTriple, ptr %66, i64 0, i32 7
  store i8 1, ptr %72, align 1, !tbaa !65
  %73 = getelementptr inbounds %struct.BezTriple, ptr %66, i64 0, i32 3
  store float 1.000000e+00, ptr %73, align 4, !tbaa !66
  %74 = getelementptr inbounds [3 x [3 x float]], ptr %66, i64 0, i64 1
  %75 = load float, ptr %74, align 4, !tbaa !49
  %76 = fadd float %75, -1.000000e+00
  store float %76, ptr %74, align 4, !tbaa !49
  %77 = load float, ptr %66, align 4, !tbaa !49
  %78 = fadd float %77, -1.500000e+00
  store float %78, ptr %66, align 4, !tbaa !49
  %79 = getelementptr inbounds [3 x float], ptr %66, i64 0, i64 1
  %80 = load float, ptr %79, align 4, !tbaa !49
  %81 = fadd float %80, -5.000000e-01
  store float %81, ptr %79, align 4, !tbaa !49
  %82 = getelementptr inbounds [3 x [3 x float]], ptr %66, i64 0, i64 2
  %83 = load float, ptr %82, align 4, !tbaa !49
  %84 = fadd float %83, -5.000000e-01
  store float %84, ptr %82, align 4, !tbaa !49
  %85 = getelementptr inbounds [3 x [3 x float]], ptr %66, i64 0, i64 2, i64 1
  %86 = load float, ptr %85, align 4, !tbaa !49
  %87 = fadd float %86, 5.000000e-01
  store float %87, ptr %85, align 4, !tbaa !49
  br label %88

88:                                               ; preds = %63, %88
  %89 = phi i64 [ 0, %63 ], [ %91, %88 ]
  %90 = getelementptr inbounds [3 x [3 x float]], ptr %66, i64 0, i64 %89
  call void @mul_m4_v3(ptr noundef %2, ptr noundef nonnull %90) #5
  %91 = add nuw nsw i64 %89, 1
  %92 = icmp eq i64 %91, 3
  br i1 %92, label %93, label %88, !llvm.loop !67

93:                                               ; preds = %88
  %94 = getelementptr inbounds %struct.BezTriple, ptr %66, i64 1
  %95 = getelementptr inbounds %struct.BezTriple, ptr %66, i64 1, i32 6
  store i8 3, ptr %95, align 2, !tbaa !60
  %96 = getelementptr inbounds %struct.BezTriple, ptr %66, i64 1, i32 5
  store i8 3, ptr %96, align 1, !tbaa !62
  %97 = getelementptr inbounds %struct.BezTriple, ptr %66, i64 1, i32 9
  store i8 1, ptr %97, align 1, !tbaa !63
  %98 = getelementptr inbounds %struct.BezTriple, ptr %66, i64 1, i32 8
  store i8 1, ptr %98, align 4, !tbaa !64
  %99 = getelementptr inbounds %struct.BezTriple, ptr %66, i64 1, i32 7
  store i8 1, ptr %99, align 1, !tbaa !65
  %100 = getelementptr inbounds %struct.BezTriple, ptr %66, i64 1, i32 2
  store float 1.000000e+00, ptr %100, align 4, !tbaa !70
  %101 = getelementptr inbounds %struct.BezTriple, ptr %66, i64 1, i32 3
  store float 1.000000e+00, ptr %101, align 4, !tbaa !66
  store float 0.000000e+00, ptr %94, align 4, !tbaa !49
  %102 = getelementptr inbounds %struct.BezTriple, ptr %66, i64 1, i32 0, i64 0, i64 1
  store float 0.000000e+00, ptr %102, align 4, !tbaa !49
  %103 = getelementptr inbounds %struct.BezTriple, ptr %66, i64 1, i32 0, i64 1
  store float 1.000000e+00, ptr %103, align 4, !tbaa !49
  %104 = getelementptr inbounds %struct.BezTriple, ptr %66, i64 1, i32 0, i64 1, i64 1
  store float 0.000000e+00, ptr %104, align 4, !tbaa !49
  %105 = getelementptr inbounds %struct.BezTriple, ptr %66, i64 1, i32 0, i64 2
  store float 2.000000e+00, ptr %105, align 4, !tbaa !49
  %106 = getelementptr inbounds %struct.BezTriple, ptr %66, i64 1, i32 0, i64 2, i64 1
  store float 0.000000e+00, ptr %106, align 4, !tbaa !49
  br label %107

107:                                              ; preds = %93, %107
  %108 = phi i64 [ 0, %93 ], [ %110, %107 ]
  %109 = getelementptr inbounds [3 x [3 x float]], ptr %94, i64 0, i64 %108
  call void @mul_m4_v3(ptr noundef %2, ptr noundef nonnull %109) #5
  %110 = add nuw nsw i64 %108, 1
  %111 = icmp eq i64 %110, 3
  br i1 %111, label %112, label %107, !llvm.loop !71

112:                                              ; preds = %107
  call void @BKE_nurb_handles_calc(ptr noundef %49) #5
  br label %514

113:                                              ; preds = %52
  %114 = getelementptr inbounds %struct.Nurb, ptr %49, i64 0, i32 6
  store i32 4, ptr %114, align 8, !tbaa !58
  %115 = getelementptr inbounds %struct.Nurb, ptr %49, i64 0, i32 7
  store i32 1, ptr %115, align 4, !tbaa !72
  %116 = getelementptr inbounds %struct.Nurb, ptr %49, i64 0, i32 11
  store i16 4, ptr %116, align 8, !tbaa !73
  %117 = load ptr, ptr @MEM_callocN, align 8, !tbaa !50
  %118 = call ptr %117(i64 noundef 144, ptr noundef nonnull @.str.2) #5
  %119 = getelementptr inbounds %struct.Nurb, ptr %49, i64 0, i32 17
  store ptr %118, ptr %119, align 8, !tbaa !74
  br label %120

120:                                              ; preds = %113, %120
  %121 = phi ptr [ %118, %113 ], [ %128, %120 ]
  %122 = phi i32 [ 0, %113 ], [ %127, %120 ]
  %123 = getelementptr inbounds [4 x float], ptr %121, i64 0, i64 3
  store float 1.000000e+00, ptr %123, align 4, !tbaa !49
  %124 = getelementptr inbounds %struct.BPoint, ptr %121, i64 0, i32 3
  store i16 1, ptr %124, align 4, !tbaa !75
  %125 = getelementptr inbounds %struct.BPoint, ptr %121, i64 0, i32 2
  store float 1.000000e+00, ptr %125, align 4, !tbaa !77
  %126 = getelementptr inbounds %struct.BPoint, ptr %121, i64 0, i32 5
  store float 1.000000e+00, ptr %126, align 4, !tbaa !78
  %127 = add nuw nsw i32 %122, 1
  %128 = getelementptr inbounds %struct.BPoint, ptr %121, i64 1
  %129 = icmp eq i32 %127, 4
  br i1 %129, label %130, label %120, !llvm.loop !79

130:                                              ; preds = %120
  %131 = load float, ptr %118, align 4, !tbaa !49
  %132 = fadd float %131, -1.500000e+00
  store float %132, ptr %118, align 4, !tbaa !49
  %133 = getelementptr inbounds %struct.BPoint, ptr %118, i64 1
  %134 = load float, ptr %133, align 4, !tbaa !49
  %135 = fadd float %134, -1.000000e+00
  store float %135, ptr %133, align 4, !tbaa !49
  %136 = getelementptr inbounds %struct.BPoint, ptr %118, i64 1, i32 0, i64 1
  %137 = load float, ptr %136, align 4, !tbaa !49
  %138 = fadd float %137, 1.000000e+00
  store float %138, ptr %136, align 4, !tbaa !49
  %139 = getelementptr inbounds %struct.BPoint, ptr %118, i64 2
  %140 = load float, ptr %139, align 4, !tbaa !49
  %141 = fadd float %140, 1.000000e+00
  store float %141, ptr %139, align 4, !tbaa !49
  %142 = getelementptr inbounds %struct.BPoint, ptr %118, i64 2, i32 0, i64 1
  %143 = load float, ptr %142, align 4, !tbaa !49
  %144 = fadd float %143, 1.000000e+00
  store float %144, ptr %142, align 4, !tbaa !49
  %145 = getelementptr inbounds %struct.BPoint, ptr %118, i64 3
  %146 = load float, ptr %145, align 4, !tbaa !49
  %147 = fadd float %146, 1.500000e+00
  store float %147, ptr %145, align 4, !tbaa !49
  br label %148

148:                                              ; preds = %130, %148
  %149 = phi ptr [ %118, %130 ], [ %152, %148 ]
  %150 = phi i32 [ 0, %130 ], [ %151, %148 ]
  call void @mul_m4_v3(ptr noundef %2, ptr noundef nonnull %149) #5
  %151 = add nuw nsw i32 %150, 1
  %152 = getelementptr inbounds %struct.BPoint, ptr %149, i64 1
  %153 = icmp eq i32 %151, 4
  br i1 %153, label %154, label %148, !llvm.loop !80

154:                                              ; preds = %148
  %155 = icmp eq i32 %18, 4
  br i1 %155, label %156, label %514

156:                                              ; preds = %154
  %157 = getelementptr inbounds %struct.Nurb, ptr %49, i64 0, i32 15
  store ptr null, ptr %157, align 8, !tbaa !81
  call void @BKE_nurb_knot_calc_u(ptr noundef %49) #5
  br label %514

158:                                              ; preds = %48
  %159 = getelementptr inbounds %struct.Nurb, ptr %49, i64 0, i32 6
  store i32 5, ptr %159, align 8, !tbaa !58
  %160 = getelementptr inbounds %struct.Nurb, ptr %49, i64 0, i32 7
  store i32 1, ptr %160, align 4, !tbaa !72
  %161 = getelementptr inbounds %struct.Nurb, ptr %49, i64 0, i32 11
  store i16 5, ptr %161, align 8, !tbaa !73
  %162 = getelementptr inbounds %struct.Nurb, ptr %49, i64 0, i32 13
  store i16 2, ptr %162, align 4, !tbaa !82
  %163 = getelementptr inbounds %struct.Curve, ptr %17, i64 0, i32 27
  %164 = load i16, ptr %163, align 4, !tbaa !53
  %165 = getelementptr inbounds %struct.Nurb, ptr %49, i64 0, i32 9
  store i16 %164, ptr %165, align 4, !tbaa !54
  %166 = load ptr, ptr @MEM_callocN, align 8, !tbaa !50
  %167 = call ptr %166(i64 noundef 180, ptr noundef nonnull @.str.2) #5
  %168 = getelementptr inbounds %struct.Nurb, ptr %49, i64 0, i32 17
  store ptr %167, ptr %168, align 8, !tbaa !74
  br label %169

169:                                              ; preds = %158, %169
  %170 = phi ptr [ %167, %158 ], [ %177, %169 ]
  %171 = phi i32 [ 0, %158 ], [ %176, %169 ]
  %172 = getelementptr inbounds [4 x float], ptr %170, i64 0, i64 3
  store float 1.000000e+00, ptr %172, align 4, !tbaa !49
  %173 = getelementptr inbounds %struct.BPoint, ptr %170, i64 0, i32 3
  store i16 1, ptr %173, align 4, !tbaa !75
  %174 = getelementptr inbounds %struct.BPoint, ptr %170, i64 0, i32 2
  store float 1.000000e+00, ptr %174, align 4, !tbaa !77
  %175 = getelementptr inbounds %struct.BPoint, ptr %170, i64 0, i32 5
  store float 1.000000e+00, ptr %175, align 4, !tbaa !78
  %176 = add nuw nsw i32 %171, 1
  %177 = getelementptr inbounds %struct.BPoint, ptr %170, i64 1
  %178 = icmp eq i32 %176, 5
  br i1 %178, label %179, label %169, !llvm.loop !83

179:                                              ; preds = %169
  %180 = load float, ptr %167, align 4, !tbaa !49
  %181 = fadd float %180, -2.000000e+00
  store float %181, ptr %167, align 4, !tbaa !49
  %182 = getelementptr inbounds %struct.BPoint, ptr %167, i64 1
  %183 = load float, ptr %182, align 4, !tbaa !49
  %184 = fadd float %183, -1.000000e+00
  store float %184, ptr %182, align 4, !tbaa !49
  %185 = getelementptr inbounds %struct.BPoint, ptr %167, i64 3
  %186 = load float, ptr %185, align 4, !tbaa !49
  %187 = fadd float %186, 1.000000e+00
  store float %187, ptr %185, align 4, !tbaa !49
  %188 = getelementptr inbounds %struct.BPoint, ptr %167, i64 4
  %189 = load float, ptr %188, align 4, !tbaa !49
  %190 = fadd float %189, 2.000000e+00
  store float %190, ptr %188, align 4, !tbaa !49
  br label %191

191:                                              ; preds = %179, %191
  %192 = phi ptr [ %167, %179 ], [ %195, %191 ]
  %193 = phi i32 [ 0, %179 ], [ %194, %191 ]
  call void @mul_m4_v3(ptr noundef %2, ptr noundef nonnull %192) #5
  %194 = add nuw nsw i32 %193, 1
  %195 = getelementptr inbounds %struct.BPoint, ptr %192, i64 1
  %196 = icmp eq i32 %194, 5
  br i1 %196, label %197, label %191, !llvm.loop !84

197:                                              ; preds = %191
  %198 = icmp eq i32 %18, 4
  br i1 %198, label %199, label %514

199:                                              ; preds = %197
  %200 = getelementptr inbounds %struct.Nurb, ptr %49, i64 0, i32 15
  store ptr null, ptr %200, align 8, !tbaa !81
  call void @BKE_nurb_knot_calc_u(ptr noundef %49) #5
  br label %514

201:                                              ; preds = %48
  %202 = getelementptr inbounds %struct.Curve, ptr %17, i64 0, i32 27
  %203 = load i16, ptr %202, align 4, !tbaa !53
  %204 = getelementptr inbounds %struct.Nurb, ptr %49, i64 0, i32 9
  store i16 %203, ptr %204, align 4, !tbaa !54
  switch i32 %18, label %514 [
    i32 1, label %205
    i32 4, label %268
  ]

205:                                              ; preds = %201
  %206 = icmp eq i32 %22, 0
  br i1 %206, label %207, label %211

207:                                              ; preds = %205
  %208 = getelementptr inbounds %struct.Nurb, ptr %49, i64 0, i32 5
  %209 = load i16, ptr %208, align 2, !tbaa !57
  %210 = or i16 %209, 8
  store i16 %210, ptr %208, align 2, !tbaa !57
  br label %211

211:                                              ; preds = %207, %205
  %212 = getelementptr inbounds %struct.Nurb, ptr %49, i64 0, i32 6
  store i32 4, ptr %212, align 8, !tbaa !58
  %213 = load ptr, ptr @MEM_callocN, align 8, !tbaa !50
  %214 = call ptr %213(i64 noundef 288, ptr noundef nonnull @.str.1) #5
  %215 = getelementptr inbounds %struct.Nurb, ptr %49, i64 0, i32 18
  store ptr %214, ptr %215, align 8, !tbaa !59
  %216 = getelementptr inbounds %struct.Nurb, ptr %49, i64 0, i32 13
  store i16 1, ptr %216, align 4, !tbaa !82
  %217 = getelementptr inbounds %struct.BezTriple, ptr %214, i64 0, i32 5
  %218 = getelementptr inbounds [3 x [3 x float]], ptr %214, i64 0, i64 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %217, i8 1, i64 5, i1 false)
  %219 = load float, ptr %218, align 4, !tbaa !49
  %220 = fadd float %219, -1.000000e+00
  store float %220, ptr %218, align 4, !tbaa !49
  br label %221

221:                                              ; preds = %211, %221
  %222 = phi i64 [ 0, %211 ], [ %224, %221 ]
  %223 = getelementptr inbounds [3 x [3 x float]], ptr %214, i64 0, i64 %222
  call void @mul_m4_v3(ptr noundef %2, ptr noundef %223) #5
  %224 = add nuw nsw i64 %222, 1
  %225 = icmp eq i64 %224, 3
  br i1 %225, label %226, label %221, !llvm.loop !85

226:                                              ; preds = %221
  %227 = getelementptr inbounds %struct.BezTriple, ptr %214, i64 0, i32 2
  store float 1.000000e+00, ptr %227, align 4, !tbaa !70
  %228 = getelementptr inbounds %struct.BezTriple, ptr %214, i64 0, i32 3
  store float 1.000000e+00, ptr %228, align 4, !tbaa !66
  %229 = getelementptr inbounds %struct.BezTriple, ptr %214, i64 1
  %230 = getelementptr inbounds %struct.BezTriple, ptr %214, i64 1, i32 5
  %231 = getelementptr inbounds %struct.BezTriple, ptr %214, i64 1, i32 0, i64 1, i64 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %230, i8 1, i64 5, i1 false)
  %232 = load float, ptr %231, align 4, !tbaa !49
  %233 = fadd float %232, 1.000000e+00
  store float %233, ptr %231, align 4, !tbaa !49
  br label %234

234:                                              ; preds = %226, %234
  %235 = phi i64 [ 0, %226 ], [ %237, %234 ]
  %236 = getelementptr inbounds [3 x [3 x float]], ptr %229, i64 0, i64 %235
  call void @mul_m4_v3(ptr noundef %2, ptr noundef nonnull %236) #5
  %237 = add nuw nsw i64 %235, 1
  %238 = icmp eq i64 %237, 3
  br i1 %238, label %239, label %234, !llvm.loop !86

239:                                              ; preds = %234
  %240 = getelementptr inbounds %struct.BezTriple, ptr %214, i64 1, i32 2
  store float 1.000000e+00, ptr %240, align 4, !tbaa !70
  %241 = getelementptr inbounds %struct.BezTriple, ptr %214, i64 1, i32 3
  store float 1.000000e+00, ptr %241, align 4, !tbaa !66
  %242 = getelementptr inbounds %struct.BezTriple, ptr %214, i64 2
  %243 = getelementptr inbounds %struct.BezTriple, ptr %214, i64 2, i32 5
  %244 = getelementptr inbounds %struct.BezTriple, ptr %214, i64 2, i32 0, i64 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %243, i8 1, i64 5, i1 false)
  %245 = load float, ptr %244, align 4, !tbaa !49
  %246 = fadd float %245, 1.000000e+00
  store float %246, ptr %244, align 4, !tbaa !49
  br label %247

247:                                              ; preds = %239, %247
  %248 = phi i64 [ 0, %239 ], [ %250, %247 ]
  %249 = getelementptr inbounds [3 x [3 x float]], ptr %242, i64 0, i64 %248
  call void @mul_m4_v3(ptr noundef %2, ptr noundef nonnull %249) #5
  %250 = add nuw nsw i64 %248, 1
  %251 = icmp eq i64 %250, 3
  br i1 %251, label %252, label %247, !llvm.loop !87

252:                                              ; preds = %247
  %253 = getelementptr inbounds %struct.BezTriple, ptr %214, i64 2, i32 2
  store float 1.000000e+00, ptr %253, align 4, !tbaa !70
  %254 = getelementptr inbounds %struct.BezTriple, ptr %214, i64 2, i32 3
  store float 1.000000e+00, ptr %254, align 4, !tbaa !66
  %255 = getelementptr inbounds %struct.BezTriple, ptr %214, i64 3
  %256 = getelementptr inbounds %struct.BezTriple, ptr %214, i64 3, i32 5
  %257 = getelementptr inbounds %struct.BezTriple, ptr %214, i64 3, i32 0, i64 1, i64 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %256, i8 1, i64 5, i1 false)
  %258 = load float, ptr %257, align 4, !tbaa !49
  %259 = fadd float %258, -1.000000e+00
  store float %259, ptr %257, align 4, !tbaa !49
  br label %260

260:                                              ; preds = %252, %260
  %261 = phi i64 [ 0, %252 ], [ %263, %260 ]
  %262 = getelementptr inbounds [3 x [3 x float]], ptr %255, i64 0, i64 %261
  call void @mul_m4_v3(ptr noundef %2, ptr noundef nonnull %262) #5
  %263 = add nuw nsw i64 %261, 1
  %264 = icmp eq i64 %263, 3
  br i1 %264, label %265, label %260, !llvm.loop !88

265:                                              ; preds = %260
  %266 = getelementptr inbounds %struct.BezTriple, ptr %214, i64 3, i32 2
  store float 1.000000e+00, ptr %266, align 4, !tbaa !70
  %267 = getelementptr inbounds %struct.BezTriple, ptr %214, i64 3, i32 3
  store float 1.000000e+00, ptr %267, align 4, !tbaa !66
  call void @BKE_nurb_handles_calc(ptr noundef %49) #5
  br label %514

268:                                              ; preds = %201
  %269 = getelementptr inbounds %struct.Nurb, ptr %49, i64 0, i32 6
  store i32 8, ptr %269, align 8, !tbaa !58
  %270 = getelementptr inbounds %struct.Nurb, ptr %49, i64 0, i32 7
  store i32 1, ptr %270, align 4, !tbaa !72
  %271 = getelementptr inbounds %struct.Nurb, ptr %49, i64 0, i32 11
  store i16 4, ptr %271, align 8, !tbaa !73
  %272 = load ptr, ptr @MEM_callocN, align 8, !tbaa !50
  %273 = call ptr %272(i64 noundef 288, ptr noundef nonnull @.str.3) #5
  %274 = getelementptr inbounds %struct.Nurb, ptr %49, i64 0, i32 17
  store ptr %273, ptr %274, align 8, !tbaa !74
  %275 = getelementptr inbounds %struct.Nurb, ptr %49, i64 0, i32 13
  store i16 1, ptr %275, align 4, !tbaa !82
  br label %276

276:                                              ; preds = %268, %296
  %277 = phi i64 [ 0, %268 ], [ %309, %296 ]
  %278 = phi ptr [ %273, %268 ], [ %308, %296 ]
  %279 = getelementptr inbounds %struct.BPoint, ptr %278, i64 0, i32 3
  store i16 1, ptr %279, align 4, !tbaa !75
  %280 = load i1, ptr @add_nurbs_primitive.xzproj, align 4
  %281 = getelementptr inbounds [8 x [2 x float]], ptr @nurbcircle, i64 0, i64 %277
  %282 = load float, ptr %281, align 8, !tbaa !49
  br i1 %280, label %288, label %283

283:                                              ; preds = %276
  %284 = load float, ptr %278, align 4, !tbaa !49
  %285 = fadd float %282, %284
  store float %285, ptr %278, align 4, !tbaa !49
  %286 = getelementptr inbounds [8 x [2 x float]], ptr @nurbcircle, i64 0, i64 %277, i64 1
  %287 = load float, ptr %286, align 4, !tbaa !49
  br label %296

288:                                              ; preds = %276
  %289 = fmul float %282, 2.500000e-01
  %290 = fadd float %289, -7.500000e-01
  %291 = load float, ptr %278, align 4, !tbaa !49
  %292 = fadd float %291, %290
  store float %292, ptr %278, align 4, !tbaa !49
  %293 = getelementptr inbounds [8 x [2 x float]], ptr @nurbcircle, i64 0, i64 %277, i64 1
  %294 = load float, ptr %293, align 4, !tbaa !49
  %295 = fmul float %294, 2.500000e-01
  br label %296

296:                                              ; preds = %288, %283
  %297 = phi i64 [ 2, %288 ], [ 1, %283 ]
  %298 = phi float [ %295, %288 ], [ %287, %283 ]
  %299 = getelementptr inbounds [4 x float], ptr %278, i64 0, i64 %297
  %300 = load float, ptr %299, align 4, !tbaa !49
  %301 = fadd float %298, %300
  store float %301, ptr %299, align 4, !tbaa !49
  %302 = and i64 %277, 1
  %303 = icmp eq i64 %302, 0
  %304 = select i1 %303, float 1.000000e+00, float 0x3FD6A09E60000000
  %305 = getelementptr inbounds [4 x float], ptr %278, i64 0, i64 3
  store float %304, ptr %305, align 4, !tbaa !49
  call void @mul_m4_v3(ptr noundef %2, ptr noundef %278) #5
  %306 = getelementptr inbounds %struct.BPoint, ptr %278, i64 0, i32 2
  store float 1.000000e+00, ptr %306, align 4, !tbaa !77
  %307 = getelementptr inbounds %struct.BPoint, ptr %278, i64 0, i32 5
  store float 1.000000e+00, ptr %307, align 4, !tbaa !78
  %308 = getelementptr inbounds %struct.BPoint, ptr %278, i64 1
  %309 = add nuw nsw i64 %277, 1
  %310 = icmp eq i64 %309, 8
  br i1 %310, label %311, label %276, !llvm.loop !89

311:                                              ; preds = %296
  call void @BKE_nurb_knot_calc_u(ptr noundef %49) #5
  br label %514

312:                                              ; preds = %48
  %313 = icmp eq i32 %18, 4
  br i1 %313, label %314, label %514

314:                                              ; preds = %312
  %315 = getelementptr inbounds %struct.Nurb, ptr %49, i64 0, i32 6
  store i32 4, ptr %315, align 8, !tbaa !58
  %316 = getelementptr inbounds %struct.Nurb, ptr %49, i64 0, i32 7
  store i32 4, ptr %316, align 4, !tbaa !72
  %317 = getelementptr inbounds %struct.Nurb, ptr %49, i64 0, i32 11
  store i16 4, ptr %317, align 8, !tbaa !73
  %318 = getelementptr inbounds %struct.Nurb, ptr %49, i64 0, i32 12
  store i16 4, ptr %318, align 2, !tbaa !90
  %319 = getelementptr inbounds %struct.Nurb, ptr %49, i64 0, i32 5
  store i16 1, ptr %319, align 2, !tbaa !57
  %320 = load ptr, ptr @MEM_callocN, align 8, !tbaa !50
  %321 = call ptr %320(i64 noundef 576, ptr noundef nonnull @.str.3) #5
  %322 = getelementptr inbounds %struct.Nurb, ptr %49, i64 0, i32 17
  store ptr %321, ptr %322, align 8, !tbaa !74
  %323 = getelementptr inbounds %struct.Nurb, ptr %49, i64 0, i32 13
  store i16 0, ptr %323, align 4, !tbaa !82
  %324 = getelementptr inbounds %struct.Nurb, ptr %49, i64 0, i32 14
  store i16 0, ptr %324, align 2, !tbaa !91
  br label %325

325:                                              ; preds = %314, %355
  %326 = phi ptr [ %321, %314 ], [ %352, %355 ]
  %327 = phi i32 [ 0, %314 ], [ %356, %355 ]
  %328 = sitofp i32 %327 to float
  %329 = fadd float %328, -1.500000e+00
  %330 = add nsw i32 %327, -1
  %331 = icmp ult i32 %330, 2
  br label %332

332:                                              ; preds = %325, %350
  %333 = phi ptr [ %326, %325 ], [ %352, %350 ]
  %334 = phi i32 [ 0, %325 ], [ %353, %350 ]
  %335 = getelementptr inbounds %struct.BPoint, ptr %333, i64 0, i32 3
  store i16 1, ptr %335, align 4, !tbaa !75
  %336 = load float, ptr %333, align 4, !tbaa !49
  %337 = fadd float %329, %336
  store float %337, ptr %333, align 4, !tbaa !49
  %338 = sitofp i32 %334 to float
  %339 = fadd float %338, -1.500000e+00
  %340 = getelementptr inbounds [4 x float], ptr %333, i64 0, i64 1
  %341 = load float, ptr %340, align 4, !tbaa !49
  %342 = fadd float %339, %341
  store float %342, ptr %340, align 4, !tbaa !49
  %343 = add nsw i32 %334, -1
  %344 = icmp ult i32 %343, 2
  %345 = select i1 %331, i1 %344, i1 false
  br i1 %345, label %346, label %350

346:                                              ; preds = %332
  %347 = getelementptr inbounds [4 x float], ptr %333, i64 0, i64 2
  %348 = load float, ptr %347, align 4, !tbaa !49
  %349 = fadd float %348, 1.000000e+00
  store float %349, ptr %347, align 4, !tbaa !49
  br label %350

350:                                              ; preds = %332, %346
  call void @mul_m4_v3(ptr noundef %2, ptr noundef nonnull %333) #5
  %351 = getelementptr inbounds [4 x float], ptr %333, i64 0, i64 3
  store float 1.000000e+00, ptr %351, align 4, !tbaa !49
  %352 = getelementptr inbounds %struct.BPoint, ptr %333, i64 1
  %353 = add nuw nsw i32 %334, 1
  %354 = icmp eq i32 %353, 4
  br i1 %354, label %355, label %332, !llvm.loop !92

355:                                              ; preds = %350
  %356 = add nuw nsw i32 %327, 1
  %357 = icmp eq i32 %356, 4
  br i1 %357, label %358, label %325, !llvm.loop !93

358:                                              ; preds = %355
  call void @BKE_nurb_knot_calc_u(ptr noundef %49) #5
  call void @BKE_nurb_knot_calc_v(ptr noundef %49) #5
  br label %514

359:                                              ; preds = %48
  %360 = icmp eq i32 %18, 4
  br i1 %360, label %361, label %514

361:                                              ; preds = %359
  %362 = call ptr @add_nurbs_primitive(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 516, i32 noundef 0)
  %363 = getelementptr inbounds %struct.Curve, ptr %17, i64 0, i32 27
  %364 = load i16, ptr %363, align 4, !tbaa !53
  %365 = getelementptr inbounds %struct.Nurb, ptr %362, i64 0, i32 9
  store i16 %364, ptr %365, align 4, !tbaa !54
  %366 = getelementptr inbounds %struct.Nurb, ptr %362, i64 0, i32 5
  store i16 1, ptr %366, align 2, !tbaa !57
  call void @BLI_addtail(ptr noundef %14, ptr noundef %362) #5
  %367 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 1
  store float 0.000000e+00, ptr %367, align 4, !tbaa !49
  store float 0.000000e+00, ptr %6, align 4, !tbaa !49
  %368 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  store float -1.000000e+00, ptr %368, align 4, !tbaa !49
  call void @mul_mat3_m4_v3(ptr noundef %2, ptr noundef nonnull %6) #5
  call void @ed_editnurb_translate_flag(ptr noundef %14, i16 noundef signext 1, ptr noundef nonnull %6) #5
  %369 = getelementptr inbounds %struct.Curve, ptr %17, i64 0, i32 4
  %370 = load ptr, ptr %369, align 8, !tbaa !94
  %371 = call zeroext i8 @ed_editnurb_extrude_flag(ptr noundef %370, i16 noundef signext 1) #5
  %372 = load float, ptr %6, align 4, !tbaa !49
  %373 = fmul float %372, -2.000000e+00
  store float %373, ptr %6, align 4, !tbaa !49
  %374 = load float, ptr %367, align 4, !tbaa !49
  %375 = fmul float %374, -2.000000e+00
  store float %375, ptr %367, align 4, !tbaa !49
  %376 = load float, ptr %368, align 4, !tbaa !49
  %377 = fmul float %376, -2.000000e+00
  store float %377, ptr %368, align 4, !tbaa !49
  call void @ed_editnurb_translate_flag(ptr noundef %14, i16 noundef signext 1, ptr noundef nonnull %6) #5
  call void @BLI_remlink(ptr noundef %14, ptr noundef %362) #5
  %378 = getelementptr inbounds %struct.Nurb, ptr %362, i64 0, i32 6
  %379 = load i32, ptr %378, align 8, !tbaa !58
  %380 = getelementptr inbounds %struct.Nurb, ptr %362, i64 0, i32 7
  %381 = load i32, ptr %380, align 4, !tbaa !72
  %382 = mul nsw i32 %381, %379
  %383 = icmp sgt i32 %382, 0
  br i1 %383, label %384, label %514

384:                                              ; preds = %361
  %385 = getelementptr inbounds %struct.Nurb, ptr %362, i64 0, i32 17
  %386 = load ptr, ptr %385, align 8, !tbaa !74
  br label %387

387:                                              ; preds = %384, %387
  %388 = phi ptr [ %394, %387 ], [ %386, %384 ]
  %389 = phi i32 [ %390, %387 ], [ %382, %384 ]
  %390 = add nsw i32 %389, -1
  %391 = getelementptr inbounds %struct.BPoint, ptr %388, i64 0, i32 3
  %392 = load i16, ptr %391, align 4, !tbaa !75
  %393 = or i16 %392, 1
  store i16 %393, ptr %391, align 4, !tbaa !75
  %394 = getelementptr inbounds %struct.BPoint, ptr %388, i64 1
  %395 = icmp sgt i32 %389, 1
  br i1 %395, label %387, label %514, !llvm.loop !95

396:                                              ; preds = %48
  %397 = icmp eq i32 %18, 4
  br i1 %397, label %398, label %514

398:                                              ; preds = %396
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %10, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %11, ptr noundef nonnull align 4 dereferenceable(12) @__const.add_nurbs_primitive.tmp_vec.4, i64 12, i1 false)
  %399 = getelementptr inbounds %struct.Nurb, ptr %49, i64 0, i32 6
  store i32 5, ptr %399, align 8, !tbaa !58
  %400 = getelementptr inbounds %struct.Nurb, ptr %49, i64 0, i32 7
  store i32 1, ptr %400, align 4, !tbaa !72
  %401 = getelementptr inbounds %struct.Nurb, ptr %49, i64 0, i32 11
  store i16 3, ptr %401, align 8, !tbaa !73
  %402 = getelementptr inbounds %struct.Curve, ptr %17, i64 0, i32 27
  %403 = load i16, ptr %402, align 4, !tbaa !53
  %404 = getelementptr inbounds %struct.Nurb, ptr %49, i64 0, i32 9
  store i16 %403, ptr %404, align 4, !tbaa !54
  %405 = getelementptr inbounds %struct.Curve, ptr %17, i64 0, i32 28
  %406 = load i16, ptr %405, align 2, !tbaa !55
  %407 = getelementptr inbounds %struct.Nurb, ptr %49, i64 0, i32 10
  store i16 %406, ptr %407, align 2, !tbaa !56
  %408 = getelementptr inbounds %struct.Nurb, ptr %49, i64 0, i32 5
  store i16 1, ptr %408, align 2, !tbaa !57
  %409 = load ptr, ptr @MEM_callocN, align 8, !tbaa !50
  %410 = call ptr %409(i64 noundef 180, ptr noundef nonnull @.str.3) #5
  %411 = getelementptr inbounds %struct.Nurb, ptr %49, i64 0, i32 17
  store ptr %410, ptr %411, align 8, !tbaa !74
  %412 = getelementptr inbounds %struct.Nurb, ptr %49, i64 0, i32 13
  store i16 0, ptr %412, align 4, !tbaa !82
  br label %413

413:                                              ; preds = %398, %413
  %414 = phi i64 [ 0, %398 ], [ %431, %413 ]
  %415 = phi ptr [ %410, %398 ], [ %430, %413 ]
  %416 = getelementptr inbounds %struct.BPoint, ptr %415, i64 0, i32 3
  store i16 1, ptr %416, align 4, !tbaa !75
  %417 = getelementptr inbounds [8 x [2 x float]], ptr @nurbcircle, i64 0, i64 %414
  %418 = load float, ptr %417, align 8, !tbaa !49
  %419 = load float, ptr %415, align 4, !tbaa !49
  %420 = fadd float %418, %419
  store float %420, ptr %415, align 4, !tbaa !49
  %421 = getelementptr inbounds [8 x [2 x float]], ptr @nurbcircle, i64 0, i64 %414, i64 1
  %422 = load float, ptr %421, align 4, !tbaa !49
  %423 = getelementptr inbounds [4 x float], ptr %415, i64 0, i64 2
  %424 = load float, ptr %423, align 4, !tbaa !49
  %425 = fadd float %422, %424
  store float %425, ptr %423, align 4, !tbaa !49
  %426 = and i64 %414, 1
  %427 = icmp eq i64 %426, 0
  %428 = getelementptr inbounds [4 x float], ptr %415, i64 0, i64 3
  %429 = select i1 %427, float 1.000000e+00, float 0x3FE6A09E60000000
  store float %429, ptr %428, align 4, !tbaa !49
  call void @mul_m4_v3(ptr noundef %2, ptr noundef nonnull %415) #5
  %430 = getelementptr inbounds %struct.BPoint, ptr %415, i64 1
  %431 = add nuw nsw i64 %414, 1
  %432 = icmp eq i64 %431, 5
  br i1 %432, label %433, label %413, !llvm.loop !96

433:                                              ; preds = %413
  store i16 4, ptr %412, align 4, !tbaa !82
  call void @BKE_nurb_knot_calc_u(ptr noundef %49) #5
  call void @BLI_addtail(ptr noundef %14, ptr noundef %49) #5
  %434 = icmp eq i32 %4, 0
  br i1 %434, label %441, label %435

435:                                              ; preds = %433
  %436 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 2), align 8, !tbaa !97
  %437 = and i32 %436, 524288
  %438 = icmp eq i32 %437, 0
  br i1 %438, label %439, label %441

439:                                              ; preds = %435
  %440 = call zeroext i8 @ed_editnurb_spin(ptr noundef nonnull %8, ptr noundef %1, ptr noundef nonnull %11, ptr noundef nonnull %10) #5
  br label %450

441:                                              ; preds = %435, %433
  %442 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 2), align 8, !tbaa !97
  %443 = and i32 %442, 524288
  %444 = icmp eq i32 %443, 0
  %445 = getelementptr inbounds [4 x float], ptr %2, i64 3
  br i1 %444, label %448, label %446

446:                                              ; preds = %441
  %447 = call zeroext i8 @ed_editnurb_spin(ptr noundef nonnull %9, ptr noundef %1, ptr noundef nonnull %7, ptr noundef nonnull %445) #5
  br label %450

448:                                              ; preds = %441
  %449 = call zeroext i8 @ed_editnurb_spin(ptr noundef nonnull %8, ptr noundef %1, ptr noundef nonnull %11, ptr noundef nonnull %445) #5
  br label %450

450:                                              ; preds = %446, %448, %439
  call void @BKE_nurb_knot_calc_v(ptr noundef %49) #5
  %451 = load i32, ptr %399, align 8, !tbaa !58
  %452 = load i32, ptr %400, align 4, !tbaa !72
  %453 = mul nsw i32 %452, %451
  %454 = icmp sgt i32 %453, 0
  br i1 %454, label %455, label %466

455:                                              ; preds = %450
  %456 = load ptr, ptr %411, align 8, !tbaa !74
  br label %457

457:                                              ; preds = %455, %457
  %458 = phi ptr [ %464, %457 ], [ %456, %455 ]
  %459 = phi i32 [ %460, %457 ], [ %453, %455 ]
  %460 = add nsw i32 %459, -1
  %461 = getelementptr inbounds %struct.BPoint, ptr %458, i64 0, i32 3
  %462 = load i16, ptr %461, align 4, !tbaa !75
  %463 = or i16 %462, 1
  store i16 %463, ptr %461, align 4, !tbaa !75
  %464 = getelementptr inbounds %struct.BPoint, ptr %458, i64 1
  %465 = icmp sgt i32 %459, 1
  br i1 %465, label %457, label %466, !llvm.loop !101

466:                                              ; preds = %457, %450
  call void @BLI_remlink(ptr noundef %14, ptr noundef %49) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #5
  br label %514

467:                                              ; preds = %48
  %468 = icmp eq i32 %18, 4
  br i1 %468, label %469, label %514

469:                                              ; preds = %467
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %12, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %13, ptr noundef nonnull align 4 dereferenceable(12) @__const.add_nurbs_primitive.tmp_vec.4, i64 12, i1 false)
  store i1 true, ptr @add_nurbs_primitive.xzproj, align 4
  %470 = call ptr @add_nurbs_primitive(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef 516, i32 noundef 0)
  store i1 false, ptr @add_nurbs_primitive.xzproj, align 4
  %471 = getelementptr inbounds %struct.Curve, ptr %17, i64 0, i32 27
  %472 = load i16, ptr %471, align 4, !tbaa !53
  %473 = getelementptr inbounds %struct.Nurb, ptr %470, i64 0, i32 9
  store i16 %472, ptr %473, align 4, !tbaa !54
  %474 = getelementptr inbounds %struct.Curve, ptr %17, i64 0, i32 28
  %475 = load i16, ptr %474, align 2, !tbaa !55
  %476 = getelementptr inbounds %struct.Nurb, ptr %470, i64 0, i32 10
  store i16 %475, ptr %476, align 2, !tbaa !56
  %477 = getelementptr inbounds %struct.Nurb, ptr %470, i64 0, i32 5
  store i16 1, ptr %477, align 2, !tbaa !57
  call void @BLI_addtail(ptr noundef %14, ptr noundef %470) #5
  %478 = icmp eq i32 %4, 0
  br i1 %478, label %485, label %479

479:                                              ; preds = %469
  %480 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 2), align 8, !tbaa !97
  %481 = and i32 %480, 524288
  %482 = icmp eq i32 %481, 0
  br i1 %482, label %483, label %485

483:                                              ; preds = %479
  %484 = call zeroext i8 @ed_editnurb_spin(ptr noundef nonnull %8, ptr noundef %1, ptr noundef nonnull %13, ptr noundef nonnull %12) #5
  br label %494

485:                                              ; preds = %479, %469
  %486 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 2), align 8, !tbaa !97
  %487 = and i32 %486, 524288
  %488 = icmp eq i32 %487, 0
  %489 = getelementptr inbounds [4 x float], ptr %2, i64 3
  br i1 %488, label %492, label %490

490:                                              ; preds = %485
  %491 = call zeroext i8 @ed_editnurb_spin(ptr noundef nonnull %9, ptr noundef %1, ptr noundef nonnull %7, ptr noundef nonnull %489) #5
  br label %494

492:                                              ; preds = %485
  %493 = call zeroext i8 @ed_editnurb_spin(ptr noundef nonnull %8, ptr noundef %1, ptr noundef nonnull %13, ptr noundef nonnull %489) #5
  br label %494

494:                                              ; preds = %490, %492, %483
  call void @BLI_remlink(ptr noundef %14, ptr noundef %470) #5
  %495 = getelementptr inbounds %struct.Nurb, ptr %470, i64 0, i32 6
  %496 = load i32, ptr %495, align 8, !tbaa !58
  %497 = getelementptr inbounds %struct.Nurb, ptr %470, i64 0, i32 7
  %498 = load i32, ptr %497, align 4, !tbaa !72
  %499 = mul nsw i32 %498, %496
  %500 = icmp sgt i32 %499, 0
  br i1 %500, label %501, label %513

501:                                              ; preds = %494
  %502 = getelementptr inbounds %struct.Nurb, ptr %470, i64 0, i32 17
  %503 = load ptr, ptr %502, align 8, !tbaa !74
  br label %504

504:                                              ; preds = %501, %504
  %505 = phi ptr [ %511, %504 ], [ %503, %501 ]
  %506 = phi i32 [ %507, %504 ], [ %499, %501 ]
  %507 = add nsw i32 %506, -1
  %508 = getelementptr inbounds %struct.BPoint, ptr %505, i64 0, i32 3
  %509 = load i16, ptr %508, align 4, !tbaa !75
  %510 = or i16 %509, 1
  store i16 %510, ptr %508, align 4, !tbaa !75
  %511 = getelementptr inbounds %struct.BPoint, ptr %505, i64 1
  %512 = icmp sgt i32 %506, 1
  br i1 %512, label %504, label %513, !llvm.loop !102

513:                                              ; preds = %504, %494
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #5
  br label %514

514:                                              ; preds = %387, %361, %201, %467, %513, %396, %466, %359, %312, %358, %265, %311, %197, %199, %112, %156, %154
  %515 = phi ptr [ %470, %513 ], [ %49, %467 ], [ %49, %466 ], [ %49, %396 ], [ %49, %359 ], [ %49, %358 ], [ %49, %312 ], [ %49, %265 ], [ %49, %311 ], [ %49, %199 ], [ %49, %197 ], [ %49, %112 ], [ %49, %156 ], [ %49, %154 ], [ %49, %201 ], [ %362, %361 ], [ %362, %387 ]
  %516 = icmp eq ptr %515, null
  br i1 %516, label %524, label %517

517:                                              ; preds = %514
  %518 = getelementptr inbounds %struct.Nurb, ptr %515, i64 0, i32 5
  %519 = load i16, ptr %518, align 2, !tbaa !57
  %520 = or i16 %519, 1
  store i16 %520, ptr %518, align 2, !tbaa !57
  %521 = call i32 @BLI_countlist(ptr noundef %14) #5
  %522 = getelementptr inbounds %struct.Curve, ptr %17, i64 0, i32 31
  store i32 %521, ptr %522, align 4, !tbaa !103
  %523 = getelementptr inbounds %struct.Curve, ptr %17, i64 0, i32 32
  store i32 -1, ptr %523, align 8, !tbaa !104
  call void @BKE_nurb_test2D(ptr noundef nonnull %515) #5
  br label %524

524:                                              ; preds = %514, %517, %48
  %525 = phi ptr [ null, %48 ], [ %515, %517 ], [ %515, %514 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #5
  ret ptr %525
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @object_editcurve_get(ptr noundef) local_unnamed_addr #2

declare ptr @ED_view3d_context_rv3d(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

declare void @unit_m4(ptr noundef) local_unnamed_addr #2

declare void @copy_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_nurbList_flag_set(ptr noundef, i16 noundef signext) local_unnamed_addr #2

declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_nurb_handles_calc(ptr noundef) local_unnamed_addr #2

declare void @BKE_nurb_knot_calc_u(ptr noundef) local_unnamed_addr #2

declare void @BKE_nurb_knot_calc_v(ptr noundef) local_unnamed_addr #2

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mul_mat3_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ed_editnurb_translate_flag(ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @ed_editnurb_extrude_flag(ptr noundef, i16 noundef signext) local_unnamed_addr #2

declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

declare zeroext i8 @ed_editnurb_spin(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare i32 @BLI_countlist(ptr noundef) local_unnamed_addr #2

declare void @BKE_nurb_test2D(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @CURVE_OT_primitive_bezier_curve_add(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str.5, ptr %0, align 8, !tbaa !105
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.6, ptr %2, align 8, !tbaa !108
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.7, ptr %3, align 8, !tbaa !109
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @add_primitive_bezier_exec, ptr %4, align 8, !tbaa !110
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_scene_editable, ptr %5, align 8, !tbaa !111
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !112
  tail call void @ED_object_add_unit_props(ptr noundef nonnull %0) #5
  tail call void @ED_object_add_generic_props(ptr noundef nonnull %0, i8 noundef zeroext 1) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @add_primitive_bezier_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call fastcc i32 @curvesurf_prim_add(ptr noundef %0, ptr noundef %1, i32 noundef 257, i32 noundef 0), !range !113
  ret i32 %3
}

declare i32 @ED_operator_scene_editable(ptr noundef) #2

declare void @ED_object_add_unit_props(ptr noundef) local_unnamed_addr #2

declare void @ED_object_add_generic_props(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @CURVE_OT_primitive_bezier_circle_add(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str.8, ptr %0, align 8, !tbaa !105
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.9, ptr %2, align 8, !tbaa !108
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.10, ptr %3, align 8, !tbaa !109
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @add_primitive_bezier_circle_exec, ptr %4, align 8, !tbaa !110
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_scene_editable, ptr %5, align 8, !tbaa !111
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !112
  tail call void @ED_object_add_unit_props(ptr noundef nonnull %0) #5
  tail call void @ED_object_add_generic_props(ptr noundef nonnull %0, i8 noundef zeroext 1) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @add_primitive_bezier_circle_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call fastcc i32 @curvesurf_prim_add(ptr noundef %0, ptr noundef %1, i32 noundef 513, i32 noundef 0), !range !113
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define dso_local void @CURVE_OT_primitive_nurbs_curve_add(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str.11, ptr %0, align 8, !tbaa !105
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.12, ptr %2, align 8, !tbaa !108
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.13, ptr %3, align 8, !tbaa !109
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @add_primitive_nurbs_curve_exec, ptr %4, align 8, !tbaa !110
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_scene_editable, ptr %5, align 8, !tbaa !111
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !112
  tail call void @ED_object_add_unit_props(ptr noundef nonnull %0) #5
  tail call void @ED_object_add_generic_props(ptr noundef nonnull %0, i8 noundef zeroext 1) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @add_primitive_nurbs_curve_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call fastcc i32 @curvesurf_prim_add(ptr noundef %0, ptr noundef %1, i32 noundef 260, i32 noundef 0), !range !113
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define dso_local void @CURVE_OT_primitive_nurbs_circle_add(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str.14, ptr %0, align 8, !tbaa !105
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.15, ptr %2, align 8, !tbaa !108
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.16, ptr %3, align 8, !tbaa !109
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @add_primitive_nurbs_circle_exec, ptr %4, align 8, !tbaa !110
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_scene_editable, ptr %5, align 8, !tbaa !111
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !112
  tail call void @ED_object_add_unit_props(ptr noundef nonnull %0) #5
  tail call void @ED_object_add_generic_props(ptr noundef nonnull %0, i8 noundef zeroext 1) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @add_primitive_nurbs_circle_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call fastcc i32 @curvesurf_prim_add(ptr noundef %0, ptr noundef %1, i32 noundef 516, i32 noundef 0), !range !113
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define dso_local void @CURVE_OT_primitive_nurbs_path_add(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str.17, ptr %0, align 8, !tbaa !105
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.18, ptr %2, align 8, !tbaa !108
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.19, ptr %3, align 8, !tbaa !109
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @add_primitive_curve_path_exec, ptr %4, align 8, !tbaa !110
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_scene_editable, ptr %5, align 8, !tbaa !111
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !112
  tail call void @ED_object_add_unit_props(ptr noundef nonnull %0) #5
  tail call void @ED_object_add_generic_props(ptr noundef nonnull %0, i8 noundef zeroext 1) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @add_primitive_curve_path_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call fastcc i32 @curvesurf_prim_add(ptr noundef %0, ptr noundef %1, i32 noundef 1796, i32 noundef 0), !range !113
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define dso_local void @SURFACE_OT_primitive_nurbs_surface_curve_add(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str.20, ptr %0, align 8, !tbaa !105
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.21, ptr %2, align 8, !tbaa !108
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.22, ptr %3, align 8, !tbaa !109
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @add_primitive_nurbs_surface_curve_exec, ptr %4, align 8, !tbaa !110
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_scene_editable, ptr %5, align 8, !tbaa !111
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !112
  tail call void @ED_object_add_unit_props(ptr noundef nonnull %0) #5
  tail call void @ED_object_add_generic_props(ptr noundef nonnull %0, i8 noundef zeroext 1) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @add_primitive_nurbs_surface_curve_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call fastcc i32 @curvesurf_prim_add(ptr noundef %0, ptr noundef %1, i32 noundef 260, i32 noundef 1), !range !113
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define dso_local void @SURFACE_OT_primitive_nurbs_surface_circle_add(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str.23, ptr %0, align 8, !tbaa !105
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.24, ptr %2, align 8, !tbaa !108
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.25, ptr %3, align 8, !tbaa !109
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @add_primitive_nurbs_surface_circle_exec, ptr %4, align 8, !tbaa !110
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_scene_editable, ptr %5, align 8, !tbaa !111
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !112
  tail call void @ED_object_add_unit_props(ptr noundef nonnull %0) #5
  tail call void @ED_object_add_generic_props(ptr noundef nonnull %0, i8 noundef zeroext 1) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @add_primitive_nurbs_surface_circle_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call fastcc i32 @curvesurf_prim_add(ptr noundef %0, ptr noundef %1, i32 noundef 516, i32 noundef 1), !range !113
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define dso_local void @SURFACE_OT_primitive_nurbs_surface_surface_add(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str.26, ptr %0, align 8, !tbaa !105
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.27, ptr %2, align 8, !tbaa !108
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.28, ptr %3, align 8, !tbaa !109
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @add_primitive_nurbs_surface_surface_exec, ptr %4, align 8, !tbaa !110
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_scene_editable, ptr %5, align 8, !tbaa !111
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !112
  tail call void @ED_object_add_unit_props(ptr noundef nonnull %0) #5
  tail call void @ED_object_add_generic_props(ptr noundef nonnull %0, i8 noundef zeroext 1) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @add_primitive_nurbs_surface_surface_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call fastcc i32 @curvesurf_prim_add(ptr noundef %0, ptr noundef %1, i32 noundef 772, i32 noundef 1), !range !113
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define dso_local void @SURFACE_OT_primitive_nurbs_surface_cylinder_add(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str.29, ptr %0, align 8, !tbaa !105
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.30, ptr %2, align 8, !tbaa !108
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.31, ptr %3, align 8, !tbaa !109
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @add_primitive_nurbs_surface_cylinder_exec, ptr %4, align 8, !tbaa !110
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_scene_editable, ptr %5, align 8, !tbaa !111
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !112
  tail call void @ED_object_add_unit_props(ptr noundef nonnull %0) #5
  tail call void @ED_object_add_generic_props(ptr noundef nonnull %0, i8 noundef zeroext 1) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @add_primitive_nurbs_surface_cylinder_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call fastcc i32 @curvesurf_prim_add(ptr noundef %0, ptr noundef %1, i32 noundef 1028, i32 noundef 1), !range !113
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define dso_local void @SURFACE_OT_primitive_nurbs_surface_sphere_add(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str.32, ptr %0, align 8, !tbaa !105
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.33, ptr %2, align 8, !tbaa !108
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.34, ptr %3, align 8, !tbaa !109
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @add_primitive_nurbs_surface_sphere_exec, ptr %4, align 8, !tbaa !110
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_scene_editable, ptr %5, align 8, !tbaa !111
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !112
  tail call void @ED_object_add_unit_props(ptr noundef nonnull %0) #5
  tail call void @ED_object_add_generic_props(ptr noundef nonnull %0, i8 noundef zeroext 1) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @add_primitive_nurbs_surface_sphere_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call fastcc i32 @curvesurf_prim_add(ptr noundef %0, ptr noundef %1, i32 noundef 1284, i32 noundef 1), !range !113
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define dso_local void @SURFACE_OT_primitive_nurbs_surface_torus_add(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str.35, ptr %0, align 8, !tbaa !105
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.36, ptr %2, align 8, !tbaa !108
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.37, ptr %3, align 8, !tbaa !109
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @add_primitive_nurbs_surface_torus_exec, ptr %4, align 8, !tbaa !110
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_scene_editable, ptr %5, align 8, !tbaa !111
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !112
  tail call void @ED_object_add_unit_props(ptr noundef nonnull %0) #5
  tail call void @ED_object_add_generic_props(ptr noundef nonnull %0, i8 noundef zeroext 1) #5
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @add_primitive_nurbs_surface_torus_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call fastcc i32 @curvesurf_prim_add(ptr noundef %0, ptr noundef %1, i32 noundef 1540, i32 noundef 1), !range !113
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @curvesurf_prim_add(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [4 x [4 x float]], align 16
  %10 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #5
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #5
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #5
  tail call void @WM_operator_view3d_unit_defaults(ptr noundef %0, ptr noundef %1) #5
  %11 = call zeroext i8 @ED_object_add_generic_get_opts(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 90, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef null) #5
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %121, label %13

13:                                               ; preds = %4
  %14 = icmp eq i32 %3, 0
  %15 = icmp eq ptr %10, null
  br i1 %14, label %16, label %33

16:                                               ; preds = %13
  br i1 %15, label %21, label %17

17:                                               ; preds = %16
  %18 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 3
  %19 = load i16, ptr %18, align 8, !tbaa !114
  %20 = icmp eq i16 %19, 2
  br i1 %20, label %32, label %21

21:                                               ; preds = %17, %16
  %22 = load i32, ptr %6, align 4, !tbaa !115
  %23 = call ptr @ED_object_add_type(ptr noundef %0, i32 noundef 2, ptr noundef nonnull %7, ptr noundef nonnull %8, i8 noundef zeroext 1, i32 noundef %22) #5
  %24 = getelementptr inbounds %struct.Object, ptr %23, i64 0, i32 19
  %25 = load ptr, ptr %24, align 8, !tbaa !34
  %26 = getelementptr inbounds %struct.Curve, ptr %25, i64 0, i32 23
  %27 = load i32, ptr %26, align 4, !tbaa !46
  %28 = and i32 %2, 1792
  %29 = icmp eq i32 %28, 0
  %30 = select i1 %29, i32 8192, i32 8201
  %31 = or i32 %27, %30
  store i32 %31, ptr %26, align 4, !tbaa !46
  br label %42

32:                                               ; preds = %17
  call void @DAG_id_tag_update(ptr noundef nonnull %10, i16 noundef signext 2) #5
  br label %42

33:                                               ; preds = %13
  br i1 %15, label %38, label %34

34:                                               ; preds = %33
  %35 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 3
  %36 = load i16, ptr %35, align 8, !tbaa !114
  %37 = icmp eq i16 %36, 3
  br i1 %37, label %41, label %38

38:                                               ; preds = %34, %33
  %39 = load i32, ptr %6, align 4, !tbaa !115
  %40 = call ptr @ED_object_add_type(ptr noundef %0, i32 noundef 3, ptr noundef nonnull %7, ptr noundef nonnull %8, i8 noundef zeroext 1, i32 noundef %39) #5
  br label %42

41:                                               ; preds = %34
  call void @DAG_id_tag_update(ptr noundef nonnull %10, i16 noundef signext 2) #5
  br label %42

42:                                               ; preds = %38, %41, %21, %32
  %43 = phi i1 [ false, %38 ], [ true, %41 ], [ false, %21 ], [ true, %32 ]
  %44 = phi i1 [ true, %38 ], [ false, %41 ], [ true, %21 ], [ false, %32 ]
  %45 = phi i32 [ 1, %38 ], [ 0, %41 ], [ 1, %21 ], [ 0, %32 ]
  %46 = phi ptr [ %40, %38 ], [ %10, %41 ], [ %23, %21 ], [ %10, %32 ]
  br i1 %43, label %96, label %47

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.Object, ptr %46, i64 0, i32 3
  %49 = load i16, ptr %48, align 8, !tbaa !114
  %50 = icmp eq i16 %49, 2
  %51 = and i32 %2, 3840
  br i1 %50, label %52, label %77

52:                                               ; preds = %47
  %53 = and i32 %2, 7
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  switch i32 %51, label %58 [
    i32 256, label %63
    i32 512, label %56
    i32 1792, label %57
  ]

56:                                               ; preds = %55
  br label %63

57:                                               ; preds = %55
  br label %63

58:                                               ; preds = %55
  br label %63

59:                                               ; preds = %52
  switch i32 %51, label %62 [
    i32 256, label %63
    i32 512, label %60
    i32 1792, label %61
  ]

60:                                               ; preds = %59
  br label %63

61:                                               ; preds = %59
  br label %63

62:                                               ; preds = %59
  br label %63

63:                                               ; preds = %55, %56, %57, %58, %59, %60, %61, %62
  %64 = phi ptr [ @.str.43, %58 ], [ @.str.42, %57 ], [ @.str.41, %56 ], [ @.str.43, %62 ], [ @.str.46, %61 ], [ @.str.45, %60 ], [ @.str.40, %55 ], [ @.str.44, %59 ]
  call void @rename_id(ptr noundef %46, ptr noundef nonnull %64) #5
  %65 = getelementptr inbounds %struct.Object, ptr %46, i64 0, i32 19
  %66 = load ptr, ptr %65, align 8, !tbaa !34
  br i1 %54, label %67, label %71

67:                                               ; preds = %63
  switch i32 %51, label %70 [
    i32 256, label %75
    i32 512, label %68
    i32 1792, label %69
  ]

68:                                               ; preds = %67
  br label %75

69:                                               ; preds = %67
  br label %75

70:                                               ; preds = %67
  br label %75

71:                                               ; preds = %63
  switch i32 %51, label %74 [
    i32 256, label %75
    i32 512, label %72
    i32 1792, label %73
  ]

72:                                               ; preds = %71
  br label %75

73:                                               ; preds = %71
  br label %75

74:                                               ; preds = %71
  br label %75

75:                                               ; preds = %67, %68, %69, %70, %71, %72, %73, %74
  %76 = phi ptr [ @.str.43, %70 ], [ @.str.42, %69 ], [ @.str.41, %68 ], [ @.str.43, %74 ], [ @.str.46, %73 ], [ @.str.45, %72 ], [ @.str.40, %67 ], [ @.str.44, %71 ]
  call void @rename_id(ptr noundef %66, ptr noundef nonnull %76) #5
  br label %96

77:                                               ; preds = %47
  %78 = add nsw i32 %51, -256
  %79 = lshr exact i32 %78, 8
  %80 = icmp ult i32 %78, 1536
  br i1 %80, label %81, label %85

81:                                               ; preds = %77
  %82 = zext nneg i32 %79 to i64
  %83 = getelementptr inbounds [6 x ptr], ptr @switch.table.curvesurf_prim_add.53, i64 0, i64 %82
  %84 = load ptr, ptr %83, align 8
  br label %85

85:                                               ; preds = %77, %81
  %86 = phi ptr [ %84, %81 ], [ @.str.52, %77 ]
  call void @rename_id(ptr noundef %46, ptr noundef nonnull %86) #5
  %87 = getelementptr inbounds %struct.Object, ptr %46, i64 0, i32 19
  %88 = load ptr, ptr %87, align 8, !tbaa !34
  %89 = icmp ult i32 %78, 1536
  br i1 %89, label %90, label %94

90:                                               ; preds = %85
  %91 = zext nneg i32 %79 to i64
  %92 = getelementptr inbounds [6 x ptr], ptr @switch.table.curvesurf_prim_add.53, i64 0, i64 %91
  %93 = load ptr, ptr %92, align 8
  br label %94

94:                                               ; preds = %85, %90
  %95 = phi ptr [ %93, %90 ], [ @.str.52, %85 ]
  call void @rename_id(ptr noundef %88, ptr noundef nonnull %95) #5
  br label %96

96:                                               ; preds = %75, %94, %42
  %97 = load i8, ptr %5, align 1
  %98 = icmp ne i8 %97, 0
  %99 = select i1 %44, i1 %98, i1 false
  br i1 %99, label %100, label %101

100:                                              ; preds = %96
  call void @ED_undo_push(ptr noundef %0, ptr noundef nonnull @.str.38) #5
  br label %101

101:                                              ; preds = %100, %96
  %102 = call float @ED_object_new_primitive_matrix(ptr noundef %0, ptr noundef %46, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9, i8 noundef zeroext 0) #5
  %103 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %104 = load ptr, ptr %103, align 8, !tbaa !116
  %105 = call float @RNA_float_get(ptr noundef %104, ptr noundef nonnull @.str.39) #5
  %106 = load float, ptr %9, align 16, !tbaa !49
  %107 = fmul float %105, %106
  store float %107, ptr %9, align 16, !tbaa !49
  %108 = getelementptr inbounds [4 x [4 x float]], ptr %9, i64 0, i64 1, i64 1
  %109 = load float, ptr %108, align 4, !tbaa !49
  %110 = fmul float %105, %109
  store float %110, ptr %108, align 4, !tbaa !49
  %111 = getelementptr inbounds [4 x [4 x float]], ptr %9, i64 0, i64 2, i64 2
  %112 = load float, ptr %111, align 8, !tbaa !49
  %113 = fmul float %105, %112
  store float %113, ptr %111, align 8, !tbaa !49
  %114 = call ptr @add_nurbs_primitive(ptr noundef %0, ptr noundef %46, ptr noundef nonnull %9, i32 noundef %2, i32 noundef %45)
  %115 = call ptr @object_editcurve_get(ptr noundef %46) #5
  call void @BLI_addtail(ptr noundef %115, ptr noundef %114) #5
  %116 = load i8, ptr %5, align 1
  %117 = icmp ne i8 %116, 0
  %118 = select i1 %43, i1 true, i1 %117
  br i1 %118, label %120, label %119

119:                                              ; preds = %101
  call void @ED_object_editmode_exit(ptr noundef %0, i32 noundef 1) #5
  br label %120

120:                                              ; preds = %119, %101
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef %46) #5
  br label %121

121:                                              ; preds = %4, %120
  %122 = phi i32 [ 4, %120 ], [ 2, %4 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #5
  ret i32 %122
}

declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #2

declare void @WM_operator_view3d_unit_defaults(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @ED_object_add_generic_get_opts(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ED_object_add_type(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #2

declare void @rename_id(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_undo_push(ptr noundef, ptr noundef) local_unnamed_addr #2

declare float @ED_object_new_primitive_matrix(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare float @RNA_float_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_object_editmode_exit(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 7547212}
!8 = !{!"MaxCount", i64 1843200}
!9 = !{!"MaxInternalCount", i64 1843200}
!10 = !{!"MaxFunctionCount", i64 6}
!11 = !{!"NumCounts", i64 213}
!12 = !{!"NumFunctions", i64 14}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 1843200, i32 1}
!18 = !{i32 100000, i64 1843200, i32 1}
!19 = !{i32 200000, i64 1843200, i32 1}
!20 = !{i32 300000, i64 921600, i32 7}
!21 = !{i32 400000, i64 921600, i32 7}
!22 = !{i32 500000, i64 921600, i32 7}
!23 = !{i32 600000, i64 921600, i32 7}
!24 = !{i32 700000, i64 921600, i32 7}
!25 = !{i32 800000, i64 921600, i32 7}
!26 = !{i32 900000, i64 921600, i32 7}
!27 = !{i32 950000, i64 921600, i32 7}
!28 = !{i32 990000, i64 115200, i32 8}
!29 = !{i32 999000, i64 14400, i32 12}
!30 = !{i32 999900, i64 1440, i32 13}
!31 = !{i32 999990, i64 21, i32 15}
!32 = !{i32 999999, i64 1, i32 48}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !37, i64 296}
!35 = !{!"Object", !36, i64 0, !37, i64 120, !37, i64 128, !40, i64 136, !40, i64 138, !41, i64 140, !41, i64 144, !41, i64 148, !38, i64 152, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !37, i64 280, !37, i64 288, !37, i64 296, !37, i64 304, !42, i64 312, !37, i64 360, !43, i64 368, !43, i64 384, !43, i64 400, !43, i64 416, !41, i64 432, !41, i64 436, !37, i64 440, !37, i64 448, !41, i64 456, !41, i64 460, !38, i64 464, !38, i64 476, !38, i64 488, !38, i64 500, !38, i64 512, !38, i64 524, !38, i64 536, !38, i64 548, !38, i64 560, !38, i64 576, !38, i64 592, !38, i64 604, !44, i64 616, !44, i64 620, !38, i64 624, !38, i64 688, !38, i64 752, !38, i64 816, !38, i64 880, !41, i64 944, !40, i64 948, !40, i64 950, !40, i64 952, !40, i64 954, !40, i64 956, !40, i64 958, !40, i64 960, !40, i64 962, !40, i64 964, !38, i64 966, !38, i64 967, !41, i64 968, !41, i64 972, !41, i64 976, !41, i64 980, !41, i64 984, !44, i64 988, !44, i64 992, !44, i64 996, !44, i64 1000, !44, i64 1004, !44, i64 1008, !44, i64 1012, !44, i64 1016, !44, i64 1020, !44, i64 1024, !44, i64 1028, !44, i64 1032, !40, i64 1036, !40, i64 1038, !40, i64 1040, !38, i64 1042, !38, i64 1043, !40, i64 1044, !38, i64 1046, !38, i64 1047, !44, i64 1048, !44, i64 1052, !43, i64 1056, !43, i64 1072, !43, i64 1088, !43, i64 1104, !44, i64 1120, !40, i64 1124, !40, i64 1126, !38, i64 1128, !41, i64 1144, !41, i64 1148, !37, i64 1152, !38, i64 1160, !38, i64 1161, !40, i64 1162, !38, i64 1164, !43, i64 1176, !43, i64 1192, !43, i64 1208, !43, i64 1224, !37, i64 1240, !37, i64 1248, !37, i64 1256, !38, i64 1264, !38, i64 1265, !40, i64 1266, !44, i64 1268, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !45, i64 1304, !45, i64 1312, !41, i64 1320, !41, i64 1324, !43, i64 1328, !43, i64 1344, !37, i64 1360, !37, i64 1368, !37, i64 1376, !38, i64 1384, !37, i64 1392, !43, i64 1400, !37, i64 1416}
!36 = !{!"ID", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !38, i64 32, !40, i64 98, !41, i64 100, !41, i64 104, !41, i64 108, !37, i64 112}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"short", !38, i64 0}
!41 = !{!"int", !38, i64 0}
!42 = !{!"bAnimVizSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44}
!43 = !{!"ListBase", !37, i64 0, !37, i64 8}
!44 = !{!"float", !38, i64 0}
!45 = !{!"long", !38, i64 0}
!46 = !{!47, !41, i64 268}
!47 = !{!"Curve", !36, i64 0, !37, i64 120, !37, i64 128, !43, i64 136, !37, i64 152, !37, i64 160, !37, i64 168, !37, i64 176, !37, i64 184, !37, i64 192, !37, i64 200, !38, i64 208, !38, i64 220, !38, i64 232, !40, i64 244, !40, i64 246, !40, i64 248, !40, i64 250, !44, i64 252, !44, i64 256, !41, i64 260, !40, i64 264, !40, i64 266, !41, i64 268, !44, i64 272, !44, i64 276, !44, i64 280, !40, i64 284, !40, i64 286, !40, i64 288, !40, i64 290, !41, i64 292, !41, i64 296, !38, i64 300, !40, i64 304, !38, i64 306, !38, i64 307, !44, i64 308, !44, i64 312, !44, i64 316, !44, i64 320, !44, i64 324, !44, i64 328, !44, i64 332, !44, i64 336, !44, i64 340, !44, i64 344, !41, i64 348, !41, i64 352, !41, i64 356, !41, i64 360, !41, i64 364, !37, i64 368, !37, i64 376, !38, i64 384, !37, i64 448, !37, i64 456, !37, i64 464, !37, i64 472, !37, i64 480, !41, i64 488, !41, i64 492, !37, i64 496, !48, i64 504, !44, i64 512, !44, i64 516, !44, i64 520, !38, i64 524, !38, i64 525, !38, i64 526}
!48 = !{!"CharInfo", !40, i64 0, !40, i64 2, !38, i64 4, !38, i64 5, !40, i64 6}
!49 = !{!44, !44, i64 0}
!50 = !{!37, !37, i64 0}
!51 = !{!52, !40, i64 16}
!52 = !{!"Nurb", !37, i64 0, !37, i64 8, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !41, i64 24, !41, i64 28, !38, i64 32, !40, i64 36, !40, i64 38, !40, i64 40, !40, i64 42, !40, i64 44, !40, i64 46, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !40, i64 80, !40, i64 82, !41, i64 84}
!53 = !{!47, !40, i64 284}
!54 = !{!52, !40, i64 36}
!55 = !{!47, !40, i64 286}
!56 = !{!52, !40, i64 38}
!57 = !{!52, !40, i64 22}
!58 = !{!52, !41, i64 24}
!59 = !{!52, !37, i64 72}
!60 = !{!61, !38, i64 50}
!61 = !{!"BezTriple", !38, i64 0, !44, i64 36, !44, i64 40, !44, i64 44, !38, i64 48, !38, i64 49, !38, i64 50, !38, i64 51, !38, i64 52, !38, i64 53, !38, i64 54, !38, i64 55, !44, i64 56, !44, i64 60, !44, i64 64, !38, i64 68}
!62 = !{!61, !38, i64 49}
!63 = !{!61, !38, i64 53}
!64 = !{!61, !38, i64 52}
!65 = !{!61, !38, i64 51}
!66 = !{!61, !44, i64 44}
!67 = distinct !{!67, !68, !69}
!68 = !{!"llvm.loop.mustprogress"}
!69 = !{!"llvm.loop.unroll.disable"}
!70 = !{!61, !44, i64 40}
!71 = distinct !{!71, !68, !69}
!72 = !{!52, !41, i64 28}
!73 = !{!52, !40, i64 40}
!74 = !{!52, !37, i64 64}
!75 = !{!76, !40, i64 24}
!76 = !{!"BPoint", !38, i64 0, !44, i64 16, !44, i64 20, !40, i64 24, !40, i64 26, !44, i64 28, !44, i64 32}
!77 = !{!76, !44, i64 20}
!78 = !{!76, !44, i64 28}
!79 = distinct !{!79, !68, !69}
!80 = distinct !{!80, !68, !69}
!81 = !{!52, !37, i64 48}
!82 = !{!52, !40, i64 44}
!83 = distinct !{!83, !68, !69}
!84 = distinct !{!84, !68, !69}
!85 = distinct !{!85, !68, !69}
!86 = distinct !{!86, !68, !69}
!87 = distinct !{!87, !68, !69}
!88 = distinct !{!88, !68, !69}
!89 = distinct !{!89, !68, !69}
!90 = !{!52, !40, i64 42}
!91 = !{!52, !40, i64 46}
!92 = distinct !{!92, !68, !69}
!93 = distinct !{!93, !68, !69}
!94 = !{!47, !37, i64 152}
!95 = distinct !{!95, !68, !69}
!96 = distinct !{!96, !68, !69}
!97 = !{!98, !41, i64 8}
!98 = !{!"UserDef", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !38, i64 20, !38, i64 788, !38, i64 1556, !38, i64 2580, !38, i64 3348, !38, i64 4116, !38, i64 4884, !38, i64 5652, !38, i64 6420, !38, i64 7444, !41, i64 8468, !40, i64 8472, !40, i64 8474, !40, i64 8476, !40, i64 8478, !40, i64 8480, !40, i64 8482, !41, i64 8484, !41, i64 8488, !41, i64 8492, !40, i64 8496, !40, i64 8498, !41, i64 8500, !41, i64 8504, !41, i64 8508, !41, i64 8512, !41, i64 8516, !41, i64 8520, !41, i64 8524, !40, i64 8528, !40, i64 8530, !40, i64 8532, !40, i64 8534, !43, i64 8536, !43, i64 8552, !43, i64 8568, !43, i64 8584, !43, i64 8600, !43, i64 8616, !43, i64 8632, !38, i64 8648, !40, i64 8712, !40, i64 8714, !40, i64 8716, !40, i64 8718, !40, i64 8720, !40, i64 8722, !40, i64 8724, !40, i64 8726, !38, i64 8728, !40, i64 8896, !40, i64 8898, !40, i64 8900, !40, i64 8902, !40, i64 8904, !40, i64 8906, !40, i64 8908, !40, i64 8910, !41, i64 8912, !41, i64 8916, !40, i64 8920, !40, i64 8922, !40, i64 8924, !40, i64 8926, !40, i64 8928, !40, i64 8930, !40, i64 8932, !40, i64 8934, !40, i64 8936, !40, i64 8938, !38, i64 8940, !38, i64 8941, !38, i64 8942, !38, i64 8943, !40, i64 8944, !40, i64 8946, !40, i64 8948, !40, i64 8950, !40, i64 8952, !40, i64 8954, !44, i64 8956, !44, i64 8960, !41, i64 8964, !40, i64 8968, !40, i64 8970, !44, i64 8972, !40, i64 8976, !40, i64 8978, !40, i64 8980, !40, i64 8982, !99, i64 8984, !38, i64 9760, !38, i64 9772, !40, i64 9788, !38, i64 9790, !38, i64 9791, !38, i64 9792, !38, i64 9872, !41, i64 10896, !41, i64 10900, !44, i64 10904, !44, i64 10908, !41, i64 10912, !40, i64 10916, !40, i64 10918, !40, i64 10920, !40, i64 10922, !40, i64 10924, !40, i64 10926, !100, i64 10928}
!99 = !{!"ColorBand", !40, i64 0, !40, i64 2, !38, i64 4, !38, i64 5, !38, i64 6, !38, i64 7, !38, i64 8}
!100 = !{!"WalkNavigation", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !44, i64 16, !44, i64 20, !40, i64 24, !38, i64 26}
!101 = distinct !{!101, !68, !69}
!102 = distinct !{!102, !68, !69}
!103 = !{!47, !41, i64 292}
!104 = !{!47, !41, i64 296}
!105 = !{!106, !37, i64 0}
!106 = !{!"wmOperatorType", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !43, i64 112, !37, i64 128, !37, i64 136, !37, i64 144, !107, i64 152, !40, i64 184}
!107 = !{!"ExtensionRNA", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24}
!108 = !{!106, !37, i64 24}
!109 = !{!106, !37, i64 8}
!110 = !{!106, !37, i64 32}
!111 = !{!106, !37, i64 72}
!112 = !{!106, !40, i64 184}
!113 = !{i32 2, i32 5}
!114 = !{!35, !40, i64 136}
!115 = !{!41, !41, i64 0}
!116 = !{!117, !37, i64 112}
!117 = !{!"wmOperator", !37, i64 0, !37, i64 8, !38, i64 16, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !37, i64 120, !43, i64 128, !37, i64 144, !37, i64 152, !40, i64 160, !38, i64 162}

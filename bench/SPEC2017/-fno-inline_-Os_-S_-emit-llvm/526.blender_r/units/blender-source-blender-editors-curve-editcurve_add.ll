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
@reltable.get_surf_defname = private unnamed_addr constant [6 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.47 to i64), i64 ptrtoint (ptr @reltable.get_surf_defname to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.48 to i64), i64 ptrtoint (ptr @reltable.get_surf_defname to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.49 to i64), i64 ptrtoint (ptr @reltable.get_surf_defname to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.52 to i64), i64 ptrtoint (ptr @reltable.get_surf_defname to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.50 to i64), i64 ptrtoint (ptr @reltable.get_surf_defname to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.51 to i64), i64 ptrtoint (ptr @reltable.get_surf_defname to i64)) to i32)], align 4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @add_nurbs_primitive(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = alloca [3 x float], align 8
  %7 = alloca [3 x float], align 4
  %8 = alloca [4 x [4 x float]], align 16
  %9 = alloca [4 x [4 x float]], align 16
  %10 = alloca [3 x float], align 4
  %11 = alloca [3 x float], align 4
  %12 = alloca [3 x float], align 4
  %13 = alloca [3 x float], align 4
  %14 = tail call ptr @object_editcurve_get(ptr noundef %1) #8
  %15 = tail call ptr @ED_view3d_context_rv3d(ptr noundef %0) #8
  %16 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 19
  %17 = load ptr, ptr %16, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %7, ptr noundef nonnull align 4 dereferenceable(12) @__const.add_nurbs_primitive.tmp_vec.4, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #9
  %18 = and i32 %3, 7
  %19 = and i32 %3, 3840
  %20 = getelementptr inbounds %struct.Curve, ptr %17, i64 0, i32 23
  %21 = load i32, ptr %20, align 4, !tbaa !17
  %22 = and i32 %21, 1
  call void @unit_m4(ptr noundef nonnull %8) #8
  call void @unit_m4(ptr noundef nonnull %9) #8
  %23 = icmp eq ptr %15, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %5
  %25 = getelementptr inbounds %struct.RegionView3D, ptr %15, i64 0, i32 1
  call void @copy_m4_m4(ptr noundef nonnull %9, ptr noundef nonnull %25) #8
  %26 = getelementptr inbounds %struct.RegionView3D, ptr %15, i64 0, i32 2, i64 2
  call fastcc void @copy_v3_v3(ptr noundef nonnull %7, ptr noundef nonnull %26) #10
  br label %27

27:                                               ; preds = %24, %5
  call void @BKE_nurbList_flag_set(ptr noundef %14, i16 noundef signext 0) #8
  %28 = and i32 %3, 3328
  %29 = icmp eq i32 %28, 1024
  br i1 %29, label %38, label %30

30:                                               ; preds = %27
  %31 = load ptr, ptr @MEM_callocN, align 8, !tbaa !20
  %32 = call ptr %31(i64 noundef 88, ptr noundef nonnull @.str) #8
  %33 = trunc i32 %18 to i16
  %34 = getelementptr inbounds %struct.Nurb, ptr %32, i64 0, i32 2
  store i16 %33, ptr %34, align 8, !tbaa !21
  %35 = getelementptr inbounds %struct.Curve, ptr %17, i64 0, i32 27
  %36 = getelementptr inbounds %struct.Nurb, ptr %32, i64 0, i32 9
  %37 = load <2 x i16>, ptr %35, align 4, !tbaa !23
  store <2 x i16> %37, ptr %36, align 4, !tbaa !23
  br label %38

38:                                               ; preds = %30, %27
  %39 = phi ptr [ %32, %30 ], [ null, %27 ]
  %40 = add nsw i32 %19, -256
  %41 = lshr exact i32 %40, 8
  switch i32 %41, label %470 [
    i32 0, label %42
    i32 6, label %124
    i32 1, label %165
    i32 2, label %273
    i32 3, label %319
    i32 4, label %349
    i32 5, label %415
  ]

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.Curve, ptr %17, i64 0, i32 27
  %44 = load i16, ptr %43, align 4, !tbaa !24
  %45 = getelementptr inbounds %struct.Nurb, ptr %39, i64 0, i32 9
  store i16 %44, ptr %45, align 4, !tbaa !25
  %46 = icmp eq i32 %18, 1
  br i1 %46, label %47, label %87

47:                                               ; preds = %42
  %48 = icmp eq i32 %22, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %47
  %50 = getelementptr inbounds %struct.Nurb, ptr %39, i64 0, i32 5
  %51 = load i16, ptr %50, align 2, !tbaa !26
  %52 = or i16 %51, 8
  store i16 %52, ptr %50, align 2, !tbaa !26
  br label %53

53:                                               ; preds = %49, %47
  %54 = getelementptr inbounds %struct.Nurb, ptr %39, i64 0, i32 6
  store i32 2, ptr %54, align 8, !tbaa !27
  %55 = load ptr, ptr @MEM_callocN, align 8, !tbaa !20
  %56 = call ptr %55(i64 noundef 144, ptr noundef nonnull @.str.1) #8
  %57 = getelementptr inbounds %struct.Nurb, ptr %39, i64 0, i32 18
  store ptr %56, ptr %57, align 8, !tbaa !28
  %58 = getelementptr inbounds %struct.BezTriple, ptr %56, i64 0, i32 5
  %59 = getelementptr inbounds %struct.BezTriple, ptr %56, i64 0, i32 9
  store i8 1, ptr %59, align 1, !tbaa !29
  store <4 x i8> <i8 3, i8 3, i8 1, i8 1>, ptr %58, align 1, !tbaa !31
  %60 = getelementptr inbounds %struct.BezTriple, ptr %56, i64 0, i32 3
  store float 1.000000e+00, ptr %60, align 4, !tbaa !32
  %61 = getelementptr inbounds [3 x [3 x float]], ptr %56, i64 0, i64 1
  %62 = load float, ptr %61, align 4, !tbaa !33
  %63 = fadd float %62, -1.000000e+00
  store float %63, ptr %61, align 4, !tbaa !33
  %64 = load <2 x float>, ptr %56, align 4, !tbaa !33
  %65 = fadd <2 x float> %64, <float -1.500000e+00, float -5.000000e-01>
  store <2 x float> %65, ptr %56, align 4, !tbaa !33
  %66 = getelementptr inbounds [3 x [3 x float]], ptr %56, i64 0, i64 2
  %67 = load <2 x float>, ptr %66, align 4, !tbaa !33
  %68 = fadd <2 x float> %67, <float -5.000000e-01, float 5.000000e-01>
  store <2 x float> %68, ptr %66, align 4, !tbaa !33
  br label %69

69:                                               ; preds = %53, %69
  %70 = phi i64 [ 0, %53 ], [ %72, %69 ]
  %71 = getelementptr inbounds [3 x [3 x float]], ptr %56, i64 0, i64 %70
  call void @mul_m4_v3(ptr noundef %2, ptr noundef nonnull %71) #8
  %72 = add nuw nsw i64 %70, 1
  %73 = icmp eq i64 %72, 3
  br i1 %73, label %74, label %69, !llvm.loop !34

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.BezTriple, ptr %56, i64 1
  %76 = getelementptr inbounds %struct.BezTriple, ptr %56, i64 1, i32 5
  %77 = getelementptr inbounds %struct.BezTriple, ptr %56, i64 1, i32 9
  store i8 1, ptr %77, align 1, !tbaa !29
  store <4 x i8> <i8 3, i8 3, i8 1, i8 1>, ptr %76, align 1, !tbaa !31
  %78 = getelementptr inbounds %struct.BezTriple, ptr %56, i64 1, i32 2
  store <2 x float> <float 1.000000e+00, float 1.000000e+00>, ptr %78, align 4, !tbaa !33
  store <2 x float> zeroinitializer, ptr %75, align 4, !tbaa !33
  %79 = getelementptr inbounds %struct.BezTriple, ptr %56, i64 1, i32 0, i64 1
  store <2 x float> <float 1.000000e+00, float 0.000000e+00>, ptr %79, align 4, !tbaa !33
  %80 = getelementptr inbounds %struct.BezTriple, ptr %56, i64 1, i32 0, i64 2
  store <2 x float> <float 2.000000e+00, float 0.000000e+00>, ptr %80, align 4, !tbaa !33
  br label %81

81:                                               ; preds = %74, %81
  %82 = phi i64 [ 0, %74 ], [ %84, %81 ]
  %83 = getelementptr inbounds [3 x [3 x float]], ptr %75, i64 0, i64 %82
  call void @mul_m4_v3(ptr noundef %2, ptr noundef nonnull %83) #8
  %84 = add nuw nsw i64 %82, 1
  %85 = icmp eq i64 %84, 3
  br i1 %85, label %86, label %81, !llvm.loop !36

86:                                               ; preds = %81
  call void @BKE_nurb_handles_calc(ptr noundef %39) #8
  br label %457

87:                                               ; preds = %42
  %88 = getelementptr inbounds %struct.Nurb, ptr %39, i64 0, i32 6
  store i32 4, ptr %88, align 8, !tbaa !27
  %89 = getelementptr inbounds %struct.Nurb, ptr %39, i64 0, i32 7
  store i32 1, ptr %89, align 4, !tbaa !37
  %90 = getelementptr inbounds %struct.Nurb, ptr %39, i64 0, i32 11
  store i16 4, ptr %90, align 8, !tbaa !38
  %91 = load ptr, ptr @MEM_callocN, align 8, !tbaa !20
  %92 = call ptr %91(i64 noundef 144, ptr noundef nonnull @.str.2) #8
  %93 = getelementptr inbounds %struct.Nurb, ptr %39, i64 0, i32 17
  store ptr %92, ptr %93, align 8, !tbaa !39
  br label %94

94:                                               ; preds = %87, %94
  %95 = phi ptr [ %92, %87 ], [ %102, %94 ]
  %96 = phi i32 [ 0, %87 ], [ %101, %94 ]
  %97 = getelementptr inbounds [4 x float], ptr %95, i64 0, i64 3
  store float 1.000000e+00, ptr %97, align 4, !tbaa !33
  %98 = getelementptr inbounds %struct.BPoint, ptr %95, i64 0, i32 3
  store i16 1, ptr %98, align 4, !tbaa !40
  %99 = getelementptr inbounds %struct.BPoint, ptr %95, i64 0, i32 2
  store float 1.000000e+00, ptr %99, align 4, !tbaa !42
  %100 = getelementptr inbounds %struct.BPoint, ptr %95, i64 0, i32 5
  store float 1.000000e+00, ptr %100, align 4, !tbaa !43
  %101 = add nuw nsw i32 %96, 1
  %102 = getelementptr inbounds %struct.BPoint, ptr %95, i64 1
  %103 = icmp eq i32 %101, 4
  br i1 %103, label %104, label %94, !llvm.loop !44

104:                                              ; preds = %94
  %105 = load float, ptr %92, align 4, !tbaa !33
  %106 = fadd float %105, -1.500000e+00
  store float %106, ptr %92, align 4, !tbaa !33
  %107 = getelementptr inbounds %struct.BPoint, ptr %92, i64 1
  %108 = load <2 x float>, ptr %107, align 4, !tbaa !33
  %109 = fadd <2 x float> %108, <float -1.000000e+00, float 1.000000e+00>
  store <2 x float> %109, ptr %107, align 4, !tbaa !33
  %110 = getelementptr inbounds %struct.BPoint, ptr %92, i64 2
  %111 = load <2 x float>, ptr %110, align 4, !tbaa !33
  %112 = fadd <2 x float> %111, <float 1.000000e+00, float 1.000000e+00>
  store <2 x float> %112, ptr %110, align 4, !tbaa !33
  %113 = getelementptr inbounds %struct.BPoint, ptr %92, i64 3
  %114 = load float, ptr %113, align 4, !tbaa !33
  %115 = fadd float %114, 1.500000e+00
  store float %115, ptr %113, align 4, !tbaa !33
  br label %116

116:                                              ; preds = %104, %116
  %117 = phi ptr [ %92, %104 ], [ %120, %116 ]
  %118 = phi i32 [ 0, %104 ], [ %119, %116 ]
  call void @mul_m4_v3(ptr noundef %2, ptr noundef nonnull %117) #8
  %119 = add nuw nsw i32 %118, 1
  %120 = getelementptr inbounds %struct.BPoint, ptr %117, i64 1
  %121 = icmp eq i32 %119, 4
  br i1 %121, label %122, label %116, !llvm.loop !45

122:                                              ; preds = %116
  %123 = icmp eq i32 %18, 4
  br i1 %123, label %460, label %457

124:                                              ; preds = %38
  %125 = getelementptr inbounds %struct.Nurb, ptr %39, i64 0, i32 6
  store i32 5, ptr %125, align 8, !tbaa !27
  %126 = getelementptr inbounds %struct.Nurb, ptr %39, i64 0, i32 7
  store i32 1, ptr %126, align 4, !tbaa !37
  %127 = getelementptr inbounds %struct.Nurb, ptr %39, i64 0, i32 11
  store i16 5, ptr %127, align 8, !tbaa !38
  %128 = getelementptr inbounds %struct.Nurb, ptr %39, i64 0, i32 13
  store i16 2, ptr %128, align 4, !tbaa !46
  %129 = getelementptr inbounds %struct.Curve, ptr %17, i64 0, i32 27
  %130 = load i16, ptr %129, align 4, !tbaa !24
  %131 = getelementptr inbounds %struct.Nurb, ptr %39, i64 0, i32 9
  store i16 %130, ptr %131, align 4, !tbaa !25
  %132 = load ptr, ptr @MEM_callocN, align 8, !tbaa !20
  %133 = call ptr %132(i64 noundef 180, ptr noundef nonnull @.str.2) #8
  %134 = getelementptr inbounds %struct.Nurb, ptr %39, i64 0, i32 17
  store ptr %133, ptr %134, align 8, !tbaa !39
  br label %135

135:                                              ; preds = %124, %135
  %136 = phi ptr [ %133, %124 ], [ %143, %135 ]
  %137 = phi i32 [ 0, %124 ], [ %142, %135 ]
  %138 = getelementptr inbounds [4 x float], ptr %136, i64 0, i64 3
  store float 1.000000e+00, ptr %138, align 4, !tbaa !33
  %139 = getelementptr inbounds %struct.BPoint, ptr %136, i64 0, i32 3
  store i16 1, ptr %139, align 4, !tbaa !40
  %140 = getelementptr inbounds %struct.BPoint, ptr %136, i64 0, i32 2
  store float 1.000000e+00, ptr %140, align 4, !tbaa !42
  %141 = getelementptr inbounds %struct.BPoint, ptr %136, i64 0, i32 5
  store float 1.000000e+00, ptr %141, align 4, !tbaa !43
  %142 = add nuw nsw i32 %137, 1
  %143 = getelementptr inbounds %struct.BPoint, ptr %136, i64 1
  %144 = icmp eq i32 %142, 5
  br i1 %144, label %145, label %135, !llvm.loop !47

145:                                              ; preds = %135
  %146 = load float, ptr %133, align 4, !tbaa !33
  %147 = fadd float %146, -2.000000e+00
  store float %147, ptr %133, align 4, !tbaa !33
  %148 = getelementptr inbounds %struct.BPoint, ptr %133, i64 1
  %149 = load float, ptr %148, align 4, !tbaa !33
  %150 = fadd float %149, -1.000000e+00
  store float %150, ptr %148, align 4, !tbaa !33
  %151 = getelementptr inbounds %struct.BPoint, ptr %133, i64 3
  %152 = load float, ptr %151, align 4, !tbaa !33
  %153 = fadd float %152, 1.000000e+00
  store float %153, ptr %151, align 4, !tbaa !33
  %154 = getelementptr inbounds %struct.BPoint, ptr %133, i64 4
  %155 = load float, ptr %154, align 4, !tbaa !33
  %156 = fadd float %155, 2.000000e+00
  store float %156, ptr %154, align 4, !tbaa !33
  br label %157

157:                                              ; preds = %145, %157
  %158 = phi ptr [ %133, %145 ], [ %161, %157 ]
  %159 = phi i32 [ 0, %145 ], [ %160, %157 ]
  call void @mul_m4_v3(ptr noundef %2, ptr noundef nonnull %158) #8
  %160 = add nuw nsw i32 %159, 1
  %161 = getelementptr inbounds %struct.BPoint, ptr %158, i64 1
  %162 = icmp eq i32 %160, 5
  br i1 %162, label %163, label %157, !llvm.loop !48

163:                                              ; preds = %157
  %164 = icmp eq i32 %18, 4
  br i1 %164, label %460, label %457

165:                                              ; preds = %38
  %166 = getelementptr inbounds %struct.Curve, ptr %17, i64 0, i32 27
  %167 = load i16, ptr %166, align 4, !tbaa !24
  %168 = getelementptr inbounds %struct.Nurb, ptr %39, i64 0, i32 9
  store i16 %167, ptr %168, align 4, !tbaa !25
  switch i32 %18, label %462 [
    i32 1, label %169
    i32 4, label %228
  ]

169:                                              ; preds = %165
  %170 = icmp eq i32 %22, 0
  br i1 %170, label %171, label %175

171:                                              ; preds = %169
  %172 = getelementptr inbounds %struct.Nurb, ptr %39, i64 0, i32 5
  %173 = load i16, ptr %172, align 2, !tbaa !26
  %174 = or i16 %173, 8
  store i16 %174, ptr %172, align 2, !tbaa !26
  br label %175

175:                                              ; preds = %171, %169
  %176 = getelementptr inbounds %struct.Nurb, ptr %39, i64 0, i32 6
  store i32 4, ptr %176, align 8, !tbaa !27
  %177 = load ptr, ptr @MEM_callocN, align 8, !tbaa !20
  %178 = call ptr %177(i64 noundef 288, ptr noundef nonnull @.str.1) #8
  %179 = getelementptr inbounds %struct.Nurb, ptr %39, i64 0, i32 18
  store ptr %178, ptr %179, align 8, !tbaa !28
  %180 = getelementptr inbounds %struct.Nurb, ptr %39, i64 0, i32 13
  store i16 1, ptr %180, align 4, !tbaa !46
  %181 = getelementptr inbounds %struct.BezTriple, ptr %178, i64 0, i32 5
  %182 = getelementptr inbounds [3 x [3 x float]], ptr %178, i64 0, i64 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %181, i8 1, i64 5, i1 false)
  %183 = load float, ptr %182, align 4, !tbaa !33
  %184 = fadd float %183, -1.000000e+00
  store float %184, ptr %182, align 4, !tbaa !33
  br label %185

185:                                              ; preds = %175, %185
  %186 = phi i64 [ 0, %175 ], [ %188, %185 ]
  %187 = getelementptr inbounds [3 x [3 x float]], ptr %178, i64 0, i64 %186
  call void @mul_m4_v3(ptr noundef %2, ptr noundef %187) #8
  %188 = add nuw nsw i64 %186, 1
  %189 = icmp eq i64 %188, 3
  br i1 %189, label %190, label %185, !llvm.loop !49

190:                                              ; preds = %185
  %191 = getelementptr inbounds %struct.BezTriple, ptr %178, i64 0, i32 2
  store <2 x float> <float 1.000000e+00, float 1.000000e+00>, ptr %191, align 4, !tbaa !33
  %192 = getelementptr inbounds %struct.BezTriple, ptr %178, i64 1
  %193 = getelementptr inbounds %struct.BezTriple, ptr %178, i64 1, i32 5
  %194 = getelementptr inbounds %struct.BezTriple, ptr %178, i64 1, i32 0, i64 1, i64 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %193, i8 1, i64 5, i1 false)
  %195 = load float, ptr %194, align 4, !tbaa !33
  %196 = fadd float %195, 1.000000e+00
  store float %196, ptr %194, align 4, !tbaa !33
  br label %197

197:                                              ; preds = %190, %197
  %198 = phi i64 [ 0, %190 ], [ %200, %197 ]
  %199 = getelementptr inbounds [3 x [3 x float]], ptr %192, i64 0, i64 %198
  call void @mul_m4_v3(ptr noundef %2, ptr noundef nonnull %199) #8
  %200 = add nuw nsw i64 %198, 1
  %201 = icmp eq i64 %200, 3
  br i1 %201, label %202, label %197, !llvm.loop !50

202:                                              ; preds = %197
  %203 = getelementptr inbounds %struct.BezTriple, ptr %178, i64 1, i32 2
  store <2 x float> <float 1.000000e+00, float 1.000000e+00>, ptr %203, align 4, !tbaa !33
  %204 = getelementptr inbounds %struct.BezTriple, ptr %178, i64 2
  %205 = getelementptr inbounds %struct.BezTriple, ptr %178, i64 2, i32 5
  %206 = getelementptr inbounds %struct.BezTriple, ptr %178, i64 2, i32 0, i64 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %205, i8 1, i64 5, i1 false)
  %207 = load float, ptr %206, align 4, !tbaa !33
  %208 = fadd float %207, 1.000000e+00
  store float %208, ptr %206, align 4, !tbaa !33
  br label %209

209:                                              ; preds = %202, %209
  %210 = phi i64 [ 0, %202 ], [ %212, %209 ]
  %211 = getelementptr inbounds [3 x [3 x float]], ptr %204, i64 0, i64 %210
  call void @mul_m4_v3(ptr noundef %2, ptr noundef nonnull %211) #8
  %212 = add nuw nsw i64 %210, 1
  %213 = icmp eq i64 %212, 3
  br i1 %213, label %214, label %209, !llvm.loop !51

214:                                              ; preds = %209
  %215 = getelementptr inbounds %struct.BezTriple, ptr %178, i64 2, i32 2
  store <2 x float> <float 1.000000e+00, float 1.000000e+00>, ptr %215, align 4, !tbaa !33
  %216 = getelementptr inbounds %struct.BezTriple, ptr %178, i64 3
  %217 = getelementptr inbounds %struct.BezTriple, ptr %178, i64 3, i32 5
  %218 = getelementptr inbounds %struct.BezTriple, ptr %178, i64 3, i32 0, i64 1, i64 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %217, i8 1, i64 5, i1 false)
  %219 = load float, ptr %218, align 4, !tbaa !33
  %220 = fadd float %219, -1.000000e+00
  store float %220, ptr %218, align 4, !tbaa !33
  br label %221

221:                                              ; preds = %214, %221
  %222 = phi i64 [ 0, %214 ], [ %224, %221 ]
  %223 = getelementptr inbounds [3 x [3 x float]], ptr %216, i64 0, i64 %222
  call void @mul_m4_v3(ptr noundef %2, ptr noundef nonnull %223) #8
  %224 = add nuw nsw i64 %222, 1
  %225 = icmp eq i64 %224, 3
  br i1 %225, label %226, label %221, !llvm.loop !52

226:                                              ; preds = %221
  %227 = getelementptr inbounds %struct.BezTriple, ptr %178, i64 3, i32 2
  store <2 x float> <float 1.000000e+00, float 1.000000e+00>, ptr %227, align 4, !tbaa !33
  call void @BKE_nurb_handles_calc(ptr noundef %39) #8
  br label %457

228:                                              ; preds = %165
  %229 = getelementptr inbounds %struct.Nurb, ptr %39, i64 0, i32 6
  store i32 8, ptr %229, align 8, !tbaa !27
  %230 = getelementptr inbounds %struct.Nurb, ptr %39, i64 0, i32 7
  store i32 1, ptr %230, align 4, !tbaa !37
  %231 = getelementptr inbounds %struct.Nurb, ptr %39, i64 0, i32 11
  store i16 4, ptr %231, align 8, !tbaa !38
  %232 = load ptr, ptr @MEM_callocN, align 8, !tbaa !20
  %233 = call ptr %232(i64 noundef 288, ptr noundef nonnull @.str.3) #8
  %234 = getelementptr inbounds %struct.Nurb, ptr %39, i64 0, i32 17
  store ptr %233, ptr %234, align 8, !tbaa !39
  %235 = getelementptr inbounds %struct.Nurb, ptr %39, i64 0, i32 13
  store i16 1, ptr %235, align 4, !tbaa !46
  br label %236

236:                                              ; preds = %228, %256
  %237 = phi i64 [ 0, %228 ], [ %270, %256 ]
  %238 = phi ptr [ %233, %228 ], [ %269, %256 ]
  %239 = getelementptr inbounds %struct.BPoint, ptr %238, i64 0, i32 3
  store i16 1, ptr %239, align 4, !tbaa !40
  %240 = load i1, ptr @add_nurbs_primitive.xzproj, align 4
  %241 = getelementptr inbounds [8 x [2 x float]], ptr @nurbcircle, i64 0, i64 %237
  %242 = load float, ptr %241, align 8, !tbaa !33
  br i1 %240, label %248, label %243

243:                                              ; preds = %236
  %244 = load float, ptr %238, align 4, !tbaa !33
  %245 = fadd float %242, %244
  %246 = getelementptr inbounds [8 x [2 x float]], ptr @nurbcircle, i64 0, i64 %237, i64 1
  %247 = load float, ptr %246, align 4, !tbaa !33
  br label %256

248:                                              ; preds = %236
  %249 = fmul float %242, 2.500000e-01
  %250 = fadd float %249, -7.500000e-01
  %251 = load float, ptr %238, align 4, !tbaa !33
  %252 = fadd float %251, %250
  %253 = getelementptr inbounds [8 x [2 x float]], ptr @nurbcircle, i64 0, i64 %237, i64 1
  %254 = load float, ptr %253, align 4, !tbaa !33
  %255 = fmul float %254, 2.500000e-01
  br label %256

256:                                              ; preds = %248, %243
  %257 = phi i64 [ 2, %248 ], [ 1, %243 ]
  %258 = phi float [ %255, %248 ], [ %247, %243 ]
  %259 = phi float [ %252, %248 ], [ %245, %243 ]
  %260 = getelementptr inbounds [4 x float], ptr %238, i64 0, i64 %257
  %261 = load float, ptr %260, align 4, !tbaa !33
  %262 = fadd float %258, %261
  store float %262, ptr %260, align 4, !tbaa !33
  store float %259, ptr %238, align 4
  %263 = and i64 %237, 1
  %264 = icmp eq i64 %263, 0
  %265 = select i1 %264, float 1.000000e+00, float 0x3FD6A09E60000000
  %266 = getelementptr inbounds [4 x float], ptr %238, i64 0, i64 3
  store float %265, ptr %266, align 4
  call void @mul_m4_v3(ptr noundef %2, ptr noundef nonnull %238) #8
  %267 = getelementptr inbounds %struct.BPoint, ptr %238, i64 0, i32 2
  store float 1.000000e+00, ptr %267, align 4, !tbaa !42
  %268 = getelementptr inbounds %struct.BPoint, ptr %238, i64 0, i32 5
  store float 1.000000e+00, ptr %268, align 4, !tbaa !43
  %269 = getelementptr inbounds %struct.BPoint, ptr %238, i64 1
  %270 = add nuw nsw i64 %237, 1
  %271 = icmp eq i64 %270, 8
  br i1 %271, label %272, label %236, !llvm.loop !53

272:                                              ; preds = %256
  call void @BKE_nurb_knot_calc_u(ptr noundef %39) #8
  br label %457

273:                                              ; preds = %38
  %274 = icmp eq i32 %18, 4
  br i1 %274, label %275, label %457

275:                                              ; preds = %273
  %276 = getelementptr inbounds %struct.Nurb, ptr %39, i64 0, i32 6
  store i32 4, ptr %276, align 8, !tbaa !27
  %277 = getelementptr inbounds %struct.Nurb, ptr %39, i64 0, i32 7
  store i32 4, ptr %277, align 4, !tbaa !37
  %278 = getelementptr inbounds %struct.Nurb, ptr %39, i64 0, i32 11
  store i16 4, ptr %278, align 8, !tbaa !38
  %279 = getelementptr inbounds %struct.Nurb, ptr %39, i64 0, i32 12
  store i16 4, ptr %279, align 2, !tbaa !54
  %280 = getelementptr inbounds %struct.Nurb, ptr %39, i64 0, i32 5
  store i16 1, ptr %280, align 2, !tbaa !26
  %281 = load ptr, ptr @MEM_callocN, align 8, !tbaa !20
  %282 = call ptr %281(i64 noundef 576, ptr noundef nonnull @.str.3) #8
  %283 = getelementptr inbounds %struct.Nurb, ptr %39, i64 0, i32 17
  store ptr %282, ptr %283, align 8, !tbaa !39
  %284 = getelementptr inbounds %struct.Nurb, ptr %39, i64 0, i32 13
  store i16 0, ptr %284, align 4, !tbaa !46
  %285 = getelementptr inbounds %struct.Nurb, ptr %39, i64 0, i32 14
  store i16 0, ptr %285, align 2, !tbaa !55
  br label %286

286:                                              ; preds = %275, %315
  %287 = phi ptr [ %282, %275 ], [ %312, %315 ]
  %288 = phi i32 [ 0, %275 ], [ %316, %315 ]
  %289 = sitofp i32 %288 to float
  %290 = fadd float %289, -1.500000e+00
  %291 = add nsw i32 %288, -1
  %292 = icmp ult i32 %291, 2
  %293 = insertelement <2 x float> poison, float %290, i64 0
  br label %294

294:                                              ; preds = %286, %310
  %295 = phi ptr [ %287, %286 ], [ %312, %310 ]
  %296 = phi i32 [ 0, %286 ], [ %313, %310 ]
  %297 = getelementptr inbounds %struct.BPoint, ptr %295, i64 0, i32 3
  store i16 1, ptr %297, align 4, !tbaa !40
  %298 = sitofp i32 %296 to float
  %299 = fadd float %298, -1.500000e+00
  %300 = load <2 x float>, ptr %295, align 4, !tbaa !33
  %301 = insertelement <2 x float> %293, float %299, i64 1
  %302 = fadd <2 x float> %301, %300
  store <2 x float> %302, ptr %295, align 4, !tbaa !33
  %303 = add nsw i32 %296, -1
  %304 = icmp ult i32 %303, 2
  %305 = select i1 %292, i1 %304, i1 false
  br i1 %305, label %306, label %310

306:                                              ; preds = %294
  %307 = getelementptr inbounds [4 x float], ptr %295, i64 0, i64 2
  %308 = load float, ptr %307, align 4, !tbaa !33
  %309 = fadd float %308, 1.000000e+00
  store float %309, ptr %307, align 4, !tbaa !33
  br label %310

310:                                              ; preds = %294, %306
  call void @mul_m4_v3(ptr noundef %2, ptr noundef nonnull %295) #8
  %311 = getelementptr inbounds [4 x float], ptr %295, i64 0, i64 3
  store float 1.000000e+00, ptr %311, align 4, !tbaa !33
  %312 = getelementptr inbounds %struct.BPoint, ptr %295, i64 1
  %313 = add nuw nsw i32 %296, 1
  %314 = icmp eq i32 %313, 4
  br i1 %314, label %315, label %294, !llvm.loop !56

315:                                              ; preds = %310
  %316 = add nuw nsw i32 %288, 1
  %317 = icmp eq i32 %316, 4
  br i1 %317, label %318, label %286, !llvm.loop !57

318:                                              ; preds = %315
  call void @BKE_nurb_knot_calc_u(ptr noundef %39) #8
  call void @BKE_nurb_knot_calc_v(ptr noundef %39) #8
  br label %457

319:                                              ; preds = %38
  %320 = icmp eq i32 %18, 4
  br i1 %320, label %321, label %457

321:                                              ; preds = %319
  %322 = call ptr @add_nurbs_primitive(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, i32 noundef 516, i32 noundef 0) #10
  %323 = getelementptr inbounds %struct.Curve, ptr %17, i64 0, i32 27
  %324 = load i16, ptr %323, align 4, !tbaa !24
  %325 = getelementptr inbounds %struct.Nurb, ptr %322, i64 0, i32 9
  store i16 %324, ptr %325, align 4, !tbaa !25
  %326 = getelementptr inbounds %struct.Nurb, ptr %322, i64 0, i32 5
  store i16 1, ptr %326, align 2, !tbaa !26
  call void @BLI_addtail(ptr noundef %14, ptr noundef %322) #8
  store <2 x float> zeroinitializer, ptr %6, align 8, !tbaa !33
  %327 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  store float -1.000000e+00, ptr %327, align 8, !tbaa !33
  call void @mul_mat3_m4_v3(ptr noundef %2, ptr noundef nonnull %6) #8
  call void @ed_editnurb_translate_flag(ptr noundef %14, i16 noundef signext 1, ptr noundef nonnull %6) #8
  %328 = getelementptr inbounds %struct.Curve, ptr %17, i64 0, i32 4
  %329 = load ptr, ptr %328, align 8, !tbaa !58
  %330 = call zeroext i8 @ed_editnurb_extrude_flag(ptr noundef %329, i16 noundef signext 1) #8
  call fastcc void @mul_v3_fl(ptr noundef nonnull %6) #10
  call void @ed_editnurb_translate_flag(ptr noundef %14, i16 noundef signext 1, ptr noundef nonnull %6) #8
  call void @BLI_remlink(ptr noundef %14, ptr noundef %322) #8
  %331 = getelementptr inbounds %struct.Nurb, ptr %322, i64 0, i32 6
  %332 = load i32, ptr %331, align 8, !tbaa !27
  %333 = getelementptr inbounds %struct.Nurb, ptr %322, i64 0, i32 7
  %334 = load i32, ptr %333, align 4, !tbaa !37
  %335 = mul nsw i32 %334, %332
  %336 = icmp sgt i32 %335, 0
  br i1 %336, label %337, label %462

337:                                              ; preds = %321
  %338 = getelementptr inbounds %struct.Nurb, ptr %322, i64 0, i32 17
  %339 = load ptr, ptr %338, align 8, !tbaa !39
  br label %340

340:                                              ; preds = %337, %340
  %341 = phi ptr [ %347, %340 ], [ %339, %337 ]
  %342 = phi i32 [ %343, %340 ], [ %335, %337 ]
  %343 = add nsw i32 %342, -1
  %344 = getelementptr inbounds %struct.BPoint, ptr %341, i64 0, i32 3
  %345 = load i16, ptr %344, align 4, !tbaa !40
  %346 = or i16 %345, 1
  store i16 %346, ptr %344, align 4, !tbaa !40
  %347 = getelementptr inbounds %struct.BPoint, ptr %341, i64 1
  %348 = icmp ugt i32 %342, 1
  br i1 %348, label %340, label %457, !llvm.loop !59

349:                                              ; preds = %38
  %350 = icmp eq i32 %18, 4
  br i1 %350, label %351, label %457

351:                                              ; preds = %349
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %10, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %11, ptr noundef nonnull align 4 dereferenceable(12) @__const.add_nurbs_primitive.tmp_vec.4, i64 12, i1 false)
  %352 = getelementptr inbounds %struct.Nurb, ptr %39, i64 0, i32 6
  store i32 5, ptr %352, align 8, !tbaa !27
  %353 = getelementptr inbounds %struct.Nurb, ptr %39, i64 0, i32 7
  store i32 1, ptr %353, align 4, !tbaa !37
  %354 = getelementptr inbounds %struct.Nurb, ptr %39, i64 0, i32 11
  store i16 3, ptr %354, align 8, !tbaa !38
  %355 = getelementptr inbounds %struct.Curve, ptr %17, i64 0, i32 27
  %356 = getelementptr inbounds %struct.Nurb, ptr %39, i64 0, i32 9
  %357 = load <2 x i16>, ptr %355, align 4, !tbaa !23
  store <2 x i16> %357, ptr %356, align 4, !tbaa !23
  %358 = getelementptr inbounds %struct.Nurb, ptr %39, i64 0, i32 5
  store i16 1, ptr %358, align 2, !tbaa !26
  %359 = load ptr, ptr @MEM_callocN, align 8, !tbaa !20
  %360 = call ptr %359(i64 noundef 180, ptr noundef nonnull @.str.3) #8
  %361 = getelementptr inbounds %struct.Nurb, ptr %39, i64 0, i32 17
  store ptr %360, ptr %361, align 8, !tbaa !39
  %362 = getelementptr inbounds %struct.Nurb, ptr %39, i64 0, i32 13
  store i16 0, ptr %362, align 4, !tbaa !46
  br label %363

363:                                              ; preds = %351, %363
  %364 = phi i64 [ 0, %351 ], [ %381, %363 ]
  %365 = phi ptr [ %360, %351 ], [ %380, %363 ]
  %366 = getelementptr inbounds %struct.BPoint, ptr %365, i64 0, i32 3
  store i16 1, ptr %366, align 4, !tbaa !40
  %367 = getelementptr inbounds [8 x [2 x float]], ptr @nurbcircle, i64 0, i64 %364
  %368 = load float, ptr %367, align 8, !tbaa !33
  %369 = load float, ptr %365, align 4, !tbaa !33
  %370 = fadd float %368, %369
  store float %370, ptr %365, align 4, !tbaa !33
  %371 = getelementptr inbounds [8 x [2 x float]], ptr @nurbcircle, i64 0, i64 %364, i64 1
  %372 = load float, ptr %371, align 4, !tbaa !33
  %373 = getelementptr inbounds [4 x float], ptr %365, i64 0, i64 2
  %374 = load float, ptr %373, align 4, !tbaa !33
  %375 = fadd float %372, %374
  store float %375, ptr %373, align 4, !tbaa !33
  %376 = and i64 %364, 1
  %377 = icmp eq i64 %376, 0
  %378 = select i1 %377, float 1.000000e+00, float 0x3FE6A09E60000000
  %379 = getelementptr inbounds [4 x float], ptr %365, i64 0, i64 3
  store float %378, ptr %379, align 4
  call void @mul_m4_v3(ptr noundef %2, ptr noundef nonnull %365) #8
  %380 = getelementptr inbounds %struct.BPoint, ptr %365, i64 1
  %381 = add nuw nsw i64 %364, 1
  %382 = icmp eq i64 %381, 5
  br i1 %382, label %383, label %363, !llvm.loop !60

383:                                              ; preds = %363
  store i16 4, ptr %362, align 4, !tbaa !46
  call void @BKE_nurb_knot_calc_u(ptr noundef %39) #8
  call void @BLI_addtail(ptr noundef %14, ptr noundef %39) #8
  %384 = icmp eq i32 %4, 0
  %385 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 2), align 8, !tbaa !61
  %386 = and i32 %385, 524288
  %387 = icmp eq i32 %386, 0
  br i1 %384, label %391, label %388

388:                                              ; preds = %383
  br i1 %387, label %389, label %392

389:                                              ; preds = %388
  %390 = call zeroext i8 @ed_editnurb_spin(ptr noundef nonnull %8, ptr noundef %1, ptr noundef nonnull %11, ptr noundef nonnull %10) #8
  br label %398

391:                                              ; preds = %383
  br i1 %387, label %395, label %392

392:                                              ; preds = %388, %391
  %393 = getelementptr inbounds [4 x float], ptr %2, i64 3
  %394 = call zeroext i8 @ed_editnurb_spin(ptr noundef nonnull %9, ptr noundef %1, ptr noundef nonnull %7, ptr noundef nonnull %393) #8
  br label %398

395:                                              ; preds = %391
  %396 = getelementptr inbounds [4 x float], ptr %2, i64 3
  %397 = call zeroext i8 @ed_editnurb_spin(ptr noundef nonnull %8, ptr noundef %1, ptr noundef nonnull %11, ptr noundef nonnull %396) #8
  br label %398

398:                                              ; preds = %392, %395, %389
  call void @BKE_nurb_knot_calc_v(ptr noundef nonnull %39) #8
  %399 = load i32, ptr %352, align 8, !tbaa !27
  %400 = load i32, ptr %353, align 4, !tbaa !37
  %401 = mul nsw i32 %400, %399
  %402 = icmp sgt i32 %401, 0
  br i1 %402, label %403, label %414

403:                                              ; preds = %398
  %404 = load ptr, ptr %361, align 8, !tbaa !39
  br label %405

405:                                              ; preds = %403, %405
  %406 = phi ptr [ %412, %405 ], [ %404, %403 ]
  %407 = phi i32 [ %408, %405 ], [ %401, %403 ]
  %408 = add nsw i32 %407, -1
  %409 = getelementptr inbounds %struct.BPoint, ptr %406, i64 0, i32 3
  %410 = load i16, ptr %409, align 4, !tbaa !40
  %411 = or i16 %410, 1
  store i16 %411, ptr %409, align 4, !tbaa !40
  %412 = getelementptr inbounds %struct.BPoint, ptr %406, i64 1
  %413 = icmp ugt i32 %407, 1
  br i1 %413, label %405, label %414, !llvm.loop !65

414:                                              ; preds = %405, %398
  call void @BLI_remlink(ptr noundef %14, ptr noundef %39) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #9
  br label %457

415:                                              ; preds = %38
  %416 = icmp eq i32 %18, 4
  br i1 %416, label %417, label %457

417:                                              ; preds = %415
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %12, i8 0, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %13, ptr noundef nonnull align 4 dereferenceable(12) @__const.add_nurbs_primitive.tmp_vec.4, i64 12, i1 false)
  store i1 true, ptr @add_nurbs_primitive.xzproj, align 4
  %418 = call ptr @add_nurbs_primitive(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, i32 noundef 516, i32 noundef 0) #10
  store i1 false, ptr @add_nurbs_primitive.xzproj, align 4
  %419 = getelementptr inbounds %struct.Curve, ptr %17, i64 0, i32 27
  %420 = getelementptr inbounds %struct.Nurb, ptr %418, i64 0, i32 9
  %421 = load <2 x i16>, ptr %419, align 4, !tbaa !23
  store <2 x i16> %421, ptr %420, align 4, !tbaa !23
  %422 = getelementptr inbounds %struct.Nurb, ptr %418, i64 0, i32 5
  store i16 1, ptr %422, align 2, !tbaa !26
  call void @BLI_addtail(ptr noundef %14, ptr noundef %418) #8
  %423 = icmp eq i32 %4, 0
  %424 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 2), align 8, !tbaa !61
  %425 = and i32 %424, 524288
  %426 = icmp eq i32 %425, 0
  br i1 %423, label %430, label %427

427:                                              ; preds = %417
  br i1 %426, label %428, label %431

428:                                              ; preds = %427
  %429 = call zeroext i8 @ed_editnurb_spin(ptr noundef nonnull %8, ptr noundef nonnull %1, ptr noundef nonnull %13, ptr noundef nonnull %12) #8
  br label %437

430:                                              ; preds = %417
  br i1 %426, label %434, label %431

431:                                              ; preds = %427, %430
  %432 = getelementptr inbounds [4 x float], ptr %2, i64 3
  %433 = call zeroext i8 @ed_editnurb_spin(ptr noundef nonnull %9, ptr noundef nonnull %1, ptr noundef nonnull %7, ptr noundef nonnull %432) #8
  br label %437

434:                                              ; preds = %430
  %435 = getelementptr inbounds [4 x float], ptr %2, i64 3
  %436 = call zeroext i8 @ed_editnurb_spin(ptr noundef nonnull %8, ptr noundef nonnull %1, ptr noundef nonnull %13, ptr noundef nonnull %435) #8
  br label %437

437:                                              ; preds = %431, %434, %428
  call void @BLI_remlink(ptr noundef %14, ptr noundef nonnull %418) #8
  %438 = getelementptr inbounds %struct.Nurb, ptr %418, i64 0, i32 6
  %439 = load i32, ptr %438, align 8, !tbaa !27
  %440 = getelementptr inbounds %struct.Nurb, ptr %418, i64 0, i32 7
  %441 = load i32, ptr %440, align 4, !tbaa !37
  %442 = mul nsw i32 %441, %439
  %443 = icmp sgt i32 %442, 0
  br i1 %443, label %444, label %456

444:                                              ; preds = %437
  %445 = getelementptr inbounds %struct.Nurb, ptr %418, i64 0, i32 17
  %446 = load ptr, ptr %445, align 8, !tbaa !39
  br label %447

447:                                              ; preds = %444, %447
  %448 = phi ptr [ %454, %447 ], [ %446, %444 ]
  %449 = phi i32 [ %450, %447 ], [ %442, %444 ]
  %450 = add nsw i32 %449, -1
  %451 = getelementptr inbounds %struct.BPoint, ptr %448, i64 0, i32 3
  %452 = load i16, ptr %451, align 4, !tbaa !40
  %453 = or i16 %452, 1
  store i16 %453, ptr %451, align 4, !tbaa !40
  %454 = getelementptr inbounds %struct.BPoint, ptr %448, i64 1
  %455 = icmp ugt i32 %449, 1
  br i1 %455, label %447, label %456, !llvm.loop !66

456:                                              ; preds = %447, %437
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #9
  br label %457

457:                                              ; preds = %340, %415, %456, %349, %414, %319, %273, %318, %226, %272, %163, %86, %122
  %458 = phi ptr [ %418, %456 ], [ %39, %415 ], [ %39, %414 ], [ %39, %349 ], [ %39, %319 ], [ %39, %318 ], [ %39, %273 ], [ %39, %226 ], [ %39, %272 ], [ %39, %163 ], [ %39, %86 ], [ %39, %122 ], [ %322, %340 ]
  %459 = icmp eq ptr %458, null
  br i1 %459, label %470, label %462

460:                                              ; preds = %163, %122
  %461 = getelementptr inbounds %struct.Nurb, ptr %39, i64 0, i32 15
  store ptr null, ptr %461, align 8, !tbaa !67
  call void @BKE_nurb_knot_calc_u(ptr noundef %39) #8
  br label %462

462:                                              ; preds = %460, %321, %165, %457
  %463 = phi ptr [ %458, %457 ], [ %39, %165 ], [ %322, %321 ], [ %39, %460 ]
  %464 = getelementptr inbounds %struct.Nurb, ptr %463, i64 0, i32 5
  %465 = load i16, ptr %464, align 2, !tbaa !26
  %466 = or i16 %465, 1
  store i16 %466, ptr %464, align 2, !tbaa !26
  %467 = call i32 @BLI_countlist(ptr noundef %14) #8
  %468 = getelementptr inbounds %struct.Curve, ptr %17, i64 0, i32 31
  store i32 %467, ptr %468, align 4, !tbaa !68
  %469 = getelementptr inbounds %struct.Curve, ptr %17, i64 0, i32 32
  store i32 -1, ptr %469, align 8, !tbaa !69
  call void @BKE_nurb_test2D(ptr noundef nonnull %463) #8
  br label %470

470:                                              ; preds = %457, %462, %38
  %471 = phi ptr [ null, %38 ], [ %463, %462 ], [ null, %457 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #9
  ret ptr %471
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @object_editcurve_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ED_view3d_context_rv3d(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: optsize
declare void @unit_m4(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @copy_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #4 {
  %3 = load float, ptr %1, align 4, !tbaa !33
  store float %3, ptr %0, align 4, !tbaa !33
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !33
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !33
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !33
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !33
  ret void
}

; Function Attrs: optsize
declare void @BKE_nurbList_flag_set(ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_nurb_handles_calc(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_nurb_knot_calc_u(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_nurb_knot_calc_v(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mul_mat3_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ed_editnurb_translate_flag(ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @ed_editnurb_extrude_flag(ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_fl(ptr nocapture noundef %0) unnamed_addr #4 {
  %2 = load <2 x float>, ptr %0, align 4, !tbaa !33
  %3 = fmul <2 x float> %2, <float -2.000000e+00, float -2.000000e+00>
  store <2 x float> %3, ptr %0, align 4, !tbaa !33
  %4 = getelementptr inbounds float, ptr %0, i64 2
  %5 = load float, ptr %4, align 4, !tbaa !33
  %6 = fmul float %5, -2.000000e+00
  store float %6, ptr %4, align 4, !tbaa !33
  ret void
}

; Function Attrs: optsize
declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: optsize
declare zeroext i8 @ed_editnurb_spin(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare i32 @BLI_countlist(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_nurb_test2D(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CURVE_OT_primitive_bezier_curve_add(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str.5, ptr %0, align 8, !tbaa !70
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.6, ptr %2, align 8, !tbaa !73
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.7, ptr %3, align 8, !tbaa !74
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @add_primitive_bezier_exec, ptr %4, align 8, !tbaa !75
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_scene_editable, ptr %5, align 8, !tbaa !76
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !77
  tail call void @ED_object_add_unit_props(ptr noundef nonnull %0) #8
  tail call void @ED_object_add_generic_props(ptr noundef nonnull %0, i8 noundef zeroext 1) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @add_primitive_bezier_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call fastcc i32 @curve_prim_add(ptr noundef %0, ptr noundef %1, i32 noundef 257) #10, !range !78
  ret i32 %3
}

; Function Attrs: optsize
declare i32 @ED_operator_scene_editable(ptr noundef) #2

; Function Attrs: optsize
declare void @ED_object_add_unit_props(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_object_add_generic_props(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CURVE_OT_primitive_bezier_circle_add(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str.8, ptr %0, align 8, !tbaa !70
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.9, ptr %2, align 8, !tbaa !73
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.10, ptr %3, align 8, !tbaa !74
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @add_primitive_bezier_circle_exec, ptr %4, align 8, !tbaa !75
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_scene_editable, ptr %5, align 8, !tbaa !76
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !77
  tail call void @ED_object_add_unit_props(ptr noundef nonnull %0) #8
  tail call void @ED_object_add_generic_props(ptr noundef nonnull %0, i8 noundef zeroext 1) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @add_primitive_bezier_circle_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call fastcc i32 @curve_prim_add(ptr noundef %0, ptr noundef %1, i32 noundef 513) #10, !range !78
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CURVE_OT_primitive_nurbs_curve_add(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str.11, ptr %0, align 8, !tbaa !70
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.12, ptr %2, align 8, !tbaa !73
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.13, ptr %3, align 8, !tbaa !74
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @add_primitive_nurbs_curve_exec, ptr %4, align 8, !tbaa !75
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_scene_editable, ptr %5, align 8, !tbaa !76
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !77
  tail call void @ED_object_add_unit_props(ptr noundef nonnull %0) #8
  tail call void @ED_object_add_generic_props(ptr noundef nonnull %0, i8 noundef zeroext 1) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @add_primitive_nurbs_curve_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call fastcc i32 @curve_prim_add(ptr noundef %0, ptr noundef %1, i32 noundef 260) #10, !range !78
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CURVE_OT_primitive_nurbs_circle_add(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str.14, ptr %0, align 8, !tbaa !70
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.15, ptr %2, align 8, !tbaa !73
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.16, ptr %3, align 8, !tbaa !74
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @add_primitive_nurbs_circle_exec, ptr %4, align 8, !tbaa !75
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_scene_editable, ptr %5, align 8, !tbaa !76
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !77
  tail call void @ED_object_add_unit_props(ptr noundef nonnull %0) #8
  tail call void @ED_object_add_generic_props(ptr noundef nonnull %0, i8 noundef zeroext 1) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @add_primitive_nurbs_circle_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call fastcc i32 @curve_prim_add(ptr noundef %0, ptr noundef %1, i32 noundef 516) #10, !range !78
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CURVE_OT_primitive_nurbs_path_add(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str.17, ptr %0, align 8, !tbaa !70
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.18, ptr %2, align 8, !tbaa !73
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.19, ptr %3, align 8, !tbaa !74
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @add_primitive_curve_path_exec, ptr %4, align 8, !tbaa !75
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_scene_editable, ptr %5, align 8, !tbaa !76
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !77
  tail call void @ED_object_add_unit_props(ptr noundef nonnull %0) #8
  tail call void @ED_object_add_generic_props(ptr noundef nonnull %0, i8 noundef zeroext 1) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @add_primitive_curve_path_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call fastcc i32 @curve_prim_add(ptr noundef %0, ptr noundef %1, i32 noundef 1796) #10, !range !78
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SURFACE_OT_primitive_nurbs_surface_curve_add(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str.20, ptr %0, align 8, !tbaa !70
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.21, ptr %2, align 8, !tbaa !73
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.22, ptr %3, align 8, !tbaa !74
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @add_primitive_nurbs_surface_curve_exec, ptr %4, align 8, !tbaa !75
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_scene_editable, ptr %5, align 8, !tbaa !76
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !77
  tail call void @ED_object_add_unit_props(ptr noundef nonnull %0) #8
  tail call void @ED_object_add_generic_props(ptr noundef nonnull %0, i8 noundef zeroext 1) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @add_primitive_nurbs_surface_curve_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call fastcc i32 @surf_prim_add(ptr noundef %0, ptr noundef %1, i32 noundef 260) #10, !range !78
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SURFACE_OT_primitive_nurbs_surface_circle_add(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str.23, ptr %0, align 8, !tbaa !70
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.24, ptr %2, align 8, !tbaa !73
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.25, ptr %3, align 8, !tbaa !74
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @add_primitive_nurbs_surface_circle_exec, ptr %4, align 8, !tbaa !75
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_scene_editable, ptr %5, align 8, !tbaa !76
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !77
  tail call void @ED_object_add_unit_props(ptr noundef nonnull %0) #8
  tail call void @ED_object_add_generic_props(ptr noundef nonnull %0, i8 noundef zeroext 1) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @add_primitive_nurbs_surface_circle_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call fastcc i32 @surf_prim_add(ptr noundef %0, ptr noundef %1, i32 noundef 516) #10, !range !78
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SURFACE_OT_primitive_nurbs_surface_surface_add(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str.26, ptr %0, align 8, !tbaa !70
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.27, ptr %2, align 8, !tbaa !73
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.28, ptr %3, align 8, !tbaa !74
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @add_primitive_nurbs_surface_surface_exec, ptr %4, align 8, !tbaa !75
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_scene_editable, ptr %5, align 8, !tbaa !76
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !77
  tail call void @ED_object_add_unit_props(ptr noundef nonnull %0) #8
  tail call void @ED_object_add_generic_props(ptr noundef nonnull %0, i8 noundef zeroext 1) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @add_primitive_nurbs_surface_surface_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call fastcc i32 @surf_prim_add(ptr noundef %0, ptr noundef %1, i32 noundef 772) #10, !range !78
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SURFACE_OT_primitive_nurbs_surface_cylinder_add(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str.29, ptr %0, align 8, !tbaa !70
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.30, ptr %2, align 8, !tbaa !73
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.31, ptr %3, align 8, !tbaa !74
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @add_primitive_nurbs_surface_cylinder_exec, ptr %4, align 8, !tbaa !75
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_scene_editable, ptr %5, align 8, !tbaa !76
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !77
  tail call void @ED_object_add_unit_props(ptr noundef nonnull %0) #8
  tail call void @ED_object_add_generic_props(ptr noundef nonnull %0, i8 noundef zeroext 1) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @add_primitive_nurbs_surface_cylinder_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call fastcc i32 @surf_prim_add(ptr noundef %0, ptr noundef %1, i32 noundef 1028) #10, !range !78
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SURFACE_OT_primitive_nurbs_surface_sphere_add(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str.32, ptr %0, align 8, !tbaa !70
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.33, ptr %2, align 8, !tbaa !73
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.34, ptr %3, align 8, !tbaa !74
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @add_primitive_nurbs_surface_sphere_exec, ptr %4, align 8, !tbaa !75
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_scene_editable, ptr %5, align 8, !tbaa !76
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !77
  tail call void @ED_object_add_unit_props(ptr noundef nonnull %0) #8
  tail call void @ED_object_add_generic_props(ptr noundef nonnull %0, i8 noundef zeroext 1) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @add_primitive_nurbs_surface_sphere_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call fastcc i32 @surf_prim_add(ptr noundef %0, ptr noundef %1, i32 noundef 1284) #10, !range !78
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @SURFACE_OT_primitive_nurbs_surface_torus_add(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str.35, ptr %0, align 8, !tbaa !70
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.36, ptr %2, align 8, !tbaa !73
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.37, ptr %3, align 8, !tbaa !74
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @add_primitive_nurbs_surface_torus_exec, ptr %4, align 8, !tbaa !75
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_scene_editable, ptr %5, align 8, !tbaa !76
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !77
  tail call void @ED_object_add_unit_props(ptr noundef nonnull %0) #8
  tail call void @ED_object_add_generic_props(ptr noundef nonnull %0, i8 noundef zeroext 1) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @add_primitive_nurbs_surface_torus_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call fastcc i32 @surf_prim_add(ptr noundef %0, ptr noundef %1, i32 noundef 1540) #10, !range !78
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @curve_prim_add(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = tail call fastcc i32 @curvesurf_prim_add(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef 0) #10, !range !78
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @curvesurf_prim_add(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [4 x [4 x float]], align 16
  %10 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #9
  tail call void @WM_operator_view3d_unit_defaults(ptr noundef %0, ptr noundef %1) #8
  %11 = call zeroext i8 @ED_object_add_generic_get_opts(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 90, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef null) #8
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %81, label %13

13:                                               ; preds = %4
  %14 = icmp eq i32 %3, 0
  %15 = icmp eq ptr %10, null
  br i1 %14, label %16, label %33

16:                                               ; preds = %13
  br i1 %15, label %21, label %17

17:                                               ; preds = %16
  %18 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 3
  %19 = load i16, ptr %18, align 8, !tbaa !79
  %20 = icmp eq i16 %19, 2
  br i1 %20, label %32, label %21

21:                                               ; preds = %17, %16
  %22 = load i32, ptr %6, align 4, !tbaa !80
  %23 = call ptr @ED_object_add_type(ptr noundef %0, i32 noundef 2, ptr noundef nonnull %7, ptr noundef nonnull %8, i8 noundef zeroext 1, i32 noundef %22) #8
  %24 = getelementptr inbounds %struct.Object, ptr %23, i64 0, i32 19
  %25 = load ptr, ptr %24, align 8, !tbaa !5
  %26 = getelementptr inbounds %struct.Curve, ptr %25, i64 0, i32 23
  %27 = load i32, ptr %26, align 4, !tbaa !17
  %28 = and i32 %2, 1792
  %29 = icmp eq i32 %28, 0
  %30 = select i1 %29, i32 8192, i32 8201
  %31 = or i32 %27, %30
  store i32 %31, ptr %26, align 4, !tbaa !17
  br label %42

32:                                               ; preds = %17
  call void @DAG_id_tag_update(ptr noundef nonnull %10, i16 noundef signext 2) #8
  br label %58

33:                                               ; preds = %13
  br i1 %15, label %38, label %34

34:                                               ; preds = %33
  %35 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 3
  %36 = load i16, ptr %35, align 8, !tbaa !79
  %37 = icmp eq i16 %36, 3
  br i1 %37, label %41, label %38

38:                                               ; preds = %34, %33
  %39 = load i32, ptr %6, align 4, !tbaa !80
  %40 = call ptr @ED_object_add_type(ptr noundef %0, i32 noundef 3, ptr noundef nonnull %7, ptr noundef nonnull %8, i8 noundef zeroext 1, i32 noundef %39) #8
  br label %42

41:                                               ; preds = %34
  call void @DAG_id_tag_update(ptr noundef nonnull %10, i16 noundef signext 2) #8
  br label %58

42:                                               ; preds = %21, %38
  %43 = phi ptr [ %40, %38 ], [ %23, %21 ]
  %44 = getelementptr inbounds %struct.Object, ptr %43, i64 0, i32 3
  %45 = load i16, ptr %44, align 8, !tbaa !79
  %46 = icmp eq i16 %45, 2
  %47 = getelementptr inbounds %struct.Object, ptr %43, i64 0, i32 19
  br i1 %46, label %48, label %50

48:                                               ; preds = %42
  %49 = call fastcc ptr @get_curve_defname(i32 noundef %2) #10
  br label %52

50:                                               ; preds = %42
  %51 = call fastcc ptr @get_surf_defname(i32 noundef %2) #10
  br label %52

52:                                               ; preds = %48, %50
  %53 = phi ptr [ %49, %48 ], [ %51, %50 ]
  call void @rename_id(ptr noundef nonnull %43, ptr noundef nonnull %53) #8
  %54 = load ptr, ptr %47, align 8, !tbaa !5
  call void @rename_id(ptr noundef %54, ptr noundef nonnull %53) #8
  %55 = load i8, ptr %5, align 1
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %52
  call void @ED_undo_push(ptr noundef %0, ptr noundef nonnull @.str.38) #8
  br label %58

58:                                               ; preds = %41, %32, %57, %52
  %59 = phi i1 [ false, %57 ], [ false, %52 ], [ true, %32 ], [ true, %41 ]
  %60 = phi i32 [ 1, %57 ], [ 1, %52 ], [ 0, %32 ], [ 0, %41 ]
  %61 = phi ptr [ %43, %57 ], [ %43, %52 ], [ %10, %32 ], [ %10, %41 ]
  %62 = call float @ED_object_new_primitive_matrix(ptr noundef %0, ptr noundef nonnull %61, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9, i8 noundef zeroext 0) #8
  %63 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %64 = load ptr, ptr %63, align 8, !tbaa !81
  %65 = call float @RNA_float_get(ptr noundef %64, ptr noundef nonnull @.str.39) #8
  %66 = load float, ptr %9, align 16, !tbaa !33
  %67 = fmul float %65, %66
  store float %67, ptr %9, align 16, !tbaa !33
  %68 = getelementptr inbounds [4 x [4 x float]], ptr %9, i64 0, i64 1, i64 1
  %69 = load float, ptr %68, align 4, !tbaa !33
  %70 = fmul float %65, %69
  store float %70, ptr %68, align 4, !tbaa !33
  %71 = getelementptr inbounds [4 x [4 x float]], ptr %9, i64 0, i64 2, i64 2
  %72 = load float, ptr %71, align 8, !tbaa !33
  %73 = fmul float %65, %72
  store float %73, ptr %71, align 8, !tbaa !33
  %74 = call ptr @add_nurbs_primitive(ptr noundef %0, ptr noundef nonnull %61, ptr noundef nonnull %9, i32 noundef %2, i32 noundef %60) #10
  %75 = call ptr @object_editcurve_get(ptr noundef nonnull %61) #8
  call void @BLI_addtail(ptr noundef %75, ptr noundef %74) #8
  %76 = load i8, ptr %5, align 1
  %77 = icmp ne i8 %76, 0
  %78 = select i1 %59, i1 true, i1 %77
  br i1 %78, label %80, label %79

79:                                               ; preds = %58
  call void @ED_object_editmode_exit(ptr noundef %0, i32 noundef 1) #8
  br label %80

80:                                               ; preds = %79, %58
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef nonnull %61) #8
  br label %81

81:                                               ; preds = %4, %80
  %82 = phi i32 [ 4, %80 ], [ 2, %4 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #9
  ret i32 %82
}

; Function Attrs: optsize
declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_operator_view3d_unit_defaults(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @ED_object_add_generic_get_opts(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ED_object_add_type(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @rename_id(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef nonnull ptr @get_curve_defname(i32 noundef %0) unnamed_addr #6 {
  %2 = and i32 %0, 3840
  %3 = and i32 %0, 7
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  switch i32 %2, label %8 [
    i32 256, label %13
    i32 512, label %6
    i32 1792, label %7
  ]

6:                                                ; preds = %5
  br label %13

7:                                                ; preds = %5
  br label %13

8:                                                ; preds = %5
  br label %13

9:                                                ; preds = %1
  switch i32 %2, label %12 [
    i32 256, label %13
    i32 512, label %10
    i32 1792, label %11
  ]

10:                                               ; preds = %9
  br label %13

11:                                               ; preds = %9
  br label %13

12:                                               ; preds = %9
  br label %13

13:                                               ; preds = %9, %5, %12, %11, %10, %8, %7, %6
  %14 = phi ptr [ @.str.43, %8 ], [ @.str.42, %7 ], [ @.str.41, %6 ], [ @.str.43, %12 ], [ @.str.46, %11 ], [ @.str.45, %10 ], [ @.str.40, %5 ], [ @.str.44, %9 ]
  ret ptr %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef nonnull ptr @get_surf_defname(i32 noundef %0) unnamed_addr #6 {
  %2 = and i32 %0, 3840
  %3 = add nsw i32 %2, -256
  %4 = icmp ult i32 %3, 1536
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = lshr exact i32 %3, 8
  %7 = zext nneg i32 %6 to i64
  %8 = shl i64 %7, 2
  %9 = call ptr @llvm.load.relative.i64(ptr @reltable.get_surf_defname, i64 %8)
  br label %10

10:                                               ; preds = %1, %5
  %11 = phi ptr [ %9, %5 ], [ @.str.52, %1 ]
  ret ptr %11
}

; Function Attrs: optsize
declare void @ED_undo_push(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @ED_object_new_primitive_matrix(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare float @RNA_float_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_object_editmode_exit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @surf_prim_add(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = tail call fastcc i32 @curvesurf_prim_add(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef 1) #10, !range !78
  ret i32 %4
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @llvm.load.relative.i64(ptr, i64) #7

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #8 = { nounwind optsize }
attributes #9 = { nounwind }
attributes #10 = { optsize }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !8, i64 296}
!6 = !{!"Object", !7, i64 0, !8, i64 120, !8, i64 128, !11, i64 136, !11, i64 138, !12, i64 140, !12, i64 144, !12, i64 148, !9, i64 152, !8, i64 216, !8, i64 224, !8, i64 232, !8, i64 240, !8, i64 248, !8, i64 256, !8, i64 264, !8, i64 272, !8, i64 280, !8, i64 288, !8, i64 296, !8, i64 304, !13, i64 312, !8, i64 360, !14, i64 368, !14, i64 384, !14, i64 400, !14, i64 416, !12, i64 432, !12, i64 436, !8, i64 440, !8, i64 448, !12, i64 456, !12, i64 460, !9, i64 464, !9, i64 476, !9, i64 488, !9, i64 500, !9, i64 512, !9, i64 524, !9, i64 536, !9, i64 548, !9, i64 560, !9, i64 576, !9, i64 592, !9, i64 604, !15, i64 616, !15, i64 620, !9, i64 624, !9, i64 688, !9, i64 752, !9, i64 816, !9, i64 880, !12, i64 944, !11, i64 948, !11, i64 950, !11, i64 952, !11, i64 954, !11, i64 956, !11, i64 958, !11, i64 960, !11, i64 962, !11, i64 964, !9, i64 966, !9, i64 967, !12, i64 968, !12, i64 972, !12, i64 976, !12, i64 980, !12, i64 984, !15, i64 988, !15, i64 992, !15, i64 996, !15, i64 1000, !15, i64 1004, !15, i64 1008, !15, i64 1012, !15, i64 1016, !15, i64 1020, !15, i64 1024, !15, i64 1028, !15, i64 1032, !11, i64 1036, !11, i64 1038, !11, i64 1040, !9, i64 1042, !9, i64 1043, !11, i64 1044, !9, i64 1046, !9, i64 1047, !15, i64 1048, !15, i64 1052, !14, i64 1056, !14, i64 1072, !14, i64 1088, !14, i64 1104, !15, i64 1120, !11, i64 1124, !11, i64 1126, !9, i64 1128, !12, i64 1144, !12, i64 1148, !8, i64 1152, !9, i64 1160, !9, i64 1161, !11, i64 1162, !9, i64 1164, !14, i64 1176, !14, i64 1192, !14, i64 1208, !14, i64 1224, !8, i64 1240, !8, i64 1248, !8, i64 1256, !9, i64 1264, !9, i64 1265, !11, i64 1266, !15, i64 1268, !8, i64 1272, !8, i64 1280, !8, i64 1288, !8, i64 1296, !16, i64 1304, !16, i64 1312, !12, i64 1320, !12, i64 1324, !14, i64 1328, !14, i64 1344, !8, i64 1360, !8, i64 1368, !8, i64 1376, !9, i64 1384, !8, i64 1392, !14, i64 1400, !8, i64 1416}
!7 = !{!"ID", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !9, i64 32, !11, i64 98, !12, i64 100, !12, i64 104, !12, i64 108, !8, i64 112}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"short", !9, i64 0}
!12 = !{!"int", !9, i64 0}
!13 = !{!"bAnimVizSettings", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !11, i64 16, !11, i64 18, !11, i64 20, !11, i64 22, !11, i64 24, !11, i64 26, !11, i64 28, !11, i64 30, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44}
!14 = !{!"ListBase", !8, i64 0, !8, i64 8}
!15 = !{!"float", !9, i64 0}
!16 = !{!"long", !9, i64 0}
!17 = !{!18, !12, i64 268}
!18 = !{!"Curve", !7, i64 0, !8, i64 120, !8, i64 128, !14, i64 136, !8, i64 152, !8, i64 160, !8, i64 168, !8, i64 176, !8, i64 184, !8, i64 192, !8, i64 200, !9, i64 208, !9, i64 220, !9, i64 232, !11, i64 244, !11, i64 246, !11, i64 248, !11, i64 250, !15, i64 252, !15, i64 256, !12, i64 260, !11, i64 264, !11, i64 266, !12, i64 268, !15, i64 272, !15, i64 276, !15, i64 280, !11, i64 284, !11, i64 286, !11, i64 288, !11, i64 290, !12, i64 292, !12, i64 296, !9, i64 300, !11, i64 304, !9, i64 306, !9, i64 307, !15, i64 308, !15, i64 312, !15, i64 316, !15, i64 320, !15, i64 324, !15, i64 328, !15, i64 332, !15, i64 336, !15, i64 340, !15, i64 344, !12, i64 348, !12, i64 352, !12, i64 356, !12, i64 360, !12, i64 364, !8, i64 368, !8, i64 376, !9, i64 384, !8, i64 448, !8, i64 456, !8, i64 464, !8, i64 472, !8, i64 480, !12, i64 488, !12, i64 492, !8, i64 496, !19, i64 504, !15, i64 512, !15, i64 516, !15, i64 520, !9, i64 524, !9, i64 525, !9, i64 526}
!19 = !{!"CharInfo", !11, i64 0, !11, i64 2, !9, i64 4, !9, i64 5, !11, i64 6}
!20 = !{!8, !8, i64 0}
!21 = !{!22, !11, i64 16}
!22 = !{!"Nurb", !8, i64 0, !8, i64 8, !11, i64 16, !11, i64 18, !11, i64 20, !11, i64 22, !12, i64 24, !12, i64 28, !9, i64 32, !11, i64 36, !11, i64 38, !11, i64 40, !11, i64 42, !11, i64 44, !11, i64 46, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !11, i64 80, !11, i64 82, !12, i64 84}
!23 = !{!11, !11, i64 0}
!24 = !{!18, !11, i64 284}
!25 = !{!22, !11, i64 36}
!26 = !{!22, !11, i64 22}
!27 = !{!22, !12, i64 24}
!28 = !{!22, !8, i64 72}
!29 = !{!30, !9, i64 53}
!30 = !{!"BezTriple", !9, i64 0, !15, i64 36, !15, i64 40, !15, i64 44, !9, i64 48, !9, i64 49, !9, i64 50, !9, i64 51, !9, i64 52, !9, i64 53, !9, i64 54, !9, i64 55, !15, i64 56, !15, i64 60, !15, i64 64, !9, i64 68}
!31 = !{!9, !9, i64 0}
!32 = !{!30, !15, i64 44}
!33 = !{!15, !15, i64 0}
!34 = distinct !{!34, !35}
!35 = !{!"llvm.loop.mustprogress"}
!36 = distinct !{!36, !35}
!37 = !{!22, !12, i64 28}
!38 = !{!22, !11, i64 40}
!39 = !{!22, !8, i64 64}
!40 = !{!41, !11, i64 24}
!41 = !{!"BPoint", !9, i64 0, !15, i64 16, !15, i64 20, !11, i64 24, !11, i64 26, !15, i64 28, !15, i64 32}
!42 = !{!41, !15, i64 20}
!43 = !{!41, !15, i64 28}
!44 = distinct !{!44, !35}
!45 = distinct !{!45, !35}
!46 = !{!22, !11, i64 44}
!47 = distinct !{!47, !35}
!48 = distinct !{!48, !35}
!49 = distinct !{!49, !35}
!50 = distinct !{!50, !35}
!51 = distinct !{!51, !35}
!52 = distinct !{!52, !35}
!53 = distinct !{!53, !35}
!54 = !{!22, !11, i64 42}
!55 = !{!22, !11, i64 46}
!56 = distinct !{!56, !35}
!57 = distinct !{!57, !35}
!58 = !{!18, !8, i64 152}
!59 = distinct !{!59, !35}
!60 = distinct !{!60, !35}
!61 = !{!62, !12, i64 8}
!62 = !{!"UserDef", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !9, i64 20, !9, i64 788, !9, i64 1556, !9, i64 2580, !9, i64 3348, !9, i64 4116, !9, i64 4884, !9, i64 5652, !9, i64 6420, !9, i64 7444, !12, i64 8468, !11, i64 8472, !11, i64 8474, !11, i64 8476, !11, i64 8478, !11, i64 8480, !11, i64 8482, !12, i64 8484, !12, i64 8488, !12, i64 8492, !11, i64 8496, !11, i64 8498, !12, i64 8500, !12, i64 8504, !12, i64 8508, !12, i64 8512, !12, i64 8516, !12, i64 8520, !12, i64 8524, !11, i64 8528, !11, i64 8530, !11, i64 8532, !11, i64 8534, !14, i64 8536, !14, i64 8552, !14, i64 8568, !14, i64 8584, !14, i64 8600, !14, i64 8616, !14, i64 8632, !9, i64 8648, !11, i64 8712, !11, i64 8714, !11, i64 8716, !11, i64 8718, !11, i64 8720, !11, i64 8722, !11, i64 8724, !11, i64 8726, !9, i64 8728, !11, i64 8896, !11, i64 8898, !11, i64 8900, !11, i64 8902, !11, i64 8904, !11, i64 8906, !11, i64 8908, !11, i64 8910, !12, i64 8912, !12, i64 8916, !11, i64 8920, !11, i64 8922, !11, i64 8924, !11, i64 8926, !11, i64 8928, !11, i64 8930, !11, i64 8932, !11, i64 8934, !11, i64 8936, !11, i64 8938, !9, i64 8940, !9, i64 8941, !9, i64 8942, !9, i64 8943, !11, i64 8944, !11, i64 8946, !11, i64 8948, !11, i64 8950, !11, i64 8952, !11, i64 8954, !15, i64 8956, !15, i64 8960, !12, i64 8964, !11, i64 8968, !11, i64 8970, !15, i64 8972, !11, i64 8976, !11, i64 8978, !11, i64 8980, !11, i64 8982, !63, i64 8984, !9, i64 9760, !9, i64 9772, !11, i64 9788, !9, i64 9790, !9, i64 9791, !9, i64 9792, !9, i64 9872, !12, i64 10896, !12, i64 10900, !15, i64 10904, !15, i64 10908, !12, i64 10912, !11, i64 10916, !11, i64 10918, !11, i64 10920, !11, i64 10922, !11, i64 10924, !11, i64 10926, !64, i64 10928}
!63 = !{!"ColorBand", !11, i64 0, !11, i64 2, !9, i64 4, !9, i64 5, !9, i64 6, !9, i64 7, !9, i64 8}
!64 = !{!"WalkNavigation", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !15, i64 16, !15, i64 20, !11, i64 24, !9, i64 26}
!65 = distinct !{!65, !35}
!66 = distinct !{!66, !35}
!67 = !{!22, !8, i64 48}
!68 = !{!18, !12, i64 292}
!69 = !{!18, !12, i64 296}
!70 = !{!71, !8, i64 0}
!71 = !{!"wmOperatorType", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !8, i64 88, !8, i64 96, !8, i64 104, !14, i64 112, !8, i64 128, !8, i64 136, !8, i64 144, !72, i64 152, !11, i64 184}
!72 = !{!"ExtensionRNA", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24}
!73 = !{!71, !8, i64 24}
!74 = !{!71, !8, i64 8}
!75 = !{!71, !8, i64 32}
!76 = !{!71, !8, i64 72}
!77 = !{!71, !11, i64 184}
!78 = !{i32 2, i32 5}
!79 = !{!6, !11, i64 136}
!80 = !{!12, !12, i64 0}
!81 = !{!82, !8, i64 112}
!82 = !{!"wmOperator", !8, i64 0, !8, i64 8, !9, i64 16, !8, i64 80, !8, i64 88, !8, i64 96, !8, i64 104, !8, i64 112, !8, i64 120, !14, i64 128, !8, i64 144, !8, i64 152, !11, i64 160, !9, i64 162}

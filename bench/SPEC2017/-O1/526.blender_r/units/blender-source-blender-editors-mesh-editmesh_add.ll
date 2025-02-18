; ModuleID = 'blender/source/blender/editors/mesh/editmesh_add.c'
source_filename = "blender/source/blender/editors/mesh/editmesh_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.EnumPropertyItem = type { i32, ptr, i32, ptr, ptr }
%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ListBase = type { ptr, ptr }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"Add Plane\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"Construct a filled planar mesh with 4 vertices\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"MESH_OT_primitive_plane_add\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"Add Cube\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Construct a cube mesh\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"MESH_OT_primitive_cube_add\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"Add Circle\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"Construct a circle mesh\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"MESH_OT_primitive_circle_add\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"vertices\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"Vertices\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"fill_type\00", align 1
@fill_type_items = internal constant [4 x %struct.EnumPropertyItem] [%struct.EnumPropertyItem { i32 0, ptr @.str.61, i32 0, ptr @.str.62, ptr @.str.63 }, %struct.EnumPropertyItem { i32 1, ptr @.str.64, i32 0, ptr @.str.65, ptr @.str.66 }, %struct.EnumPropertyItem { i32 2, ptr @.str.67, i32 0, ptr @.str.68, ptr @.str.69 }, %struct.EnumPropertyItem zeroinitializer], align 16
@.str.13 = private unnamed_addr constant [10 x i8] c"Fill Type\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"Add Cylinder\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"Construct a cylinder mesh\00", align 1
@.str.16 = private unnamed_addr constant [31 x i8] c"MESH_OT_primitive_cylinder_add\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"depth\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"Depth\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"end_fill_type\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"Cap Fill Type\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"Add Cone\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"Construct a conic mesh\00", align 1
@.str.23 = private unnamed_addr constant [27 x i8] c"MESH_OT_primitive_cone_add\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"radius1\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"Radius 1\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"radius2\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"Radius 2\00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"Base Fill Type\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"Add Grid\00", align 1
@.str.30 = private unnamed_addr constant [22 x i8] c"Construct a grid mesh\00", align 1
@.str.31 = private unnamed_addr constant [27 x i8] c"MESH_OT_primitive_grid_add\00", align 1
@.str.32 = private unnamed_addr constant [15 x i8] c"x_subdivisions\00", align 1
@.str.33 = private unnamed_addr constant [15 x i8] c"X Subdivisions\00", align 1
@.str.34 = private unnamed_addr constant [15 x i8] c"y_subdivisions\00", align 1
@.str.35 = private unnamed_addr constant [15 x i8] c"Y Subdivisions\00", align 1
@.str.36 = private unnamed_addr constant [11 x i8] c"Add Monkey\00", align 1
@.str.37 = private unnamed_addr constant [25 x i8] c"Construct a Suzanne mesh\00", align 1
@.str.38 = private unnamed_addr constant [29 x i8] c"MESH_OT_primitive_monkey_add\00", align 1
@.str.39 = private unnamed_addr constant [14 x i8] c"Add UV Sphere\00", align 1
@.str.40 = private unnamed_addr constant [27 x i8] c"Construct a UV sphere mesh\00", align 1
@.str.41 = private unnamed_addr constant [32 x i8] c"MESH_OT_primitive_uv_sphere_add\00", align 1
@.str.42 = private unnamed_addr constant [9 x i8] c"segments\00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"Segments\00", align 1
@.str.44 = private unnamed_addr constant [11 x i8] c"ring_count\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"Rings\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c"Size\00", align 1
@.str.48 = private unnamed_addr constant [15 x i8] c"Add Ico Sphere\00", align 1
@.str.49 = private unnamed_addr constant [28 x i8] c"Construct an Icosphere mesh\00", align 1
@.str.50 = private unnamed_addr constant [33 x i8] c"MESH_OT_primitive_ico_sphere_add\00", align 1
@.str.51 = private unnamed_addr constant [13 x i8] c"subdivisions\00", align 1
@.str.52 = private unnamed_addr constant [13 x i8] c"Subdivisions\00", align 1
@.str.53 = private unnamed_addr constant [6 x i8] c"Plane\00", align 1
@.str.54 = private unnamed_addr constant [10 x i8] c"verts.out\00", align 1
@.str.55 = private unnamed_addr constant [59 x i8] c"create_grid x_segments=%i y_segments=%i size=%f matrix=%m4\00", align 1
@.str.56 = private unnamed_addr constant [7 x i8] c"radius\00", align 1
@.str.57 = private unnamed_addr constant [5 x i8] c"Cube\00", align 1
@.str.58 = private unnamed_addr constant [31 x i8] c"create_cube matrix=%m4 size=%f\00", align 1
@.str.59 = private unnamed_addr constant [7 x i8] c"Circle\00", align 1
@.str.60 = private unnamed_addr constant [73 x i8] c"create_circle segments=%i diameter=%f cap_ends=%b cap_tris=%b matrix=%m4\00", align 1
@.str.61 = private unnamed_addr constant [8 x i8] c"NOTHING\00", align 1
@.str.62 = private unnamed_addr constant [8 x i8] c"Nothing\00", align 1
@.str.63 = private unnamed_addr constant [18 x i8] c"Don't fill at all\00", align 1
@.str.64 = private unnamed_addr constant [5 x i8] c"NGON\00", align 1
@.str.65 = private unnamed_addr constant [5 x i8] c"Ngon\00", align 1
@.str.66 = private unnamed_addr constant [10 x i8] c"Use ngons\00", align 1
@.str.67 = private unnamed_addr constant [7 x i8] c"TRIFAN\00", align 1
@.str.68 = private unnamed_addr constant [13 x i8] c"Triangle Fan\00", align 1
@.str.69 = private unnamed_addr constant [18 x i8] c"Use triangle fans\00", align 1
@.str.70 = private unnamed_addr constant [9 x i8] c"Cylinder\00", align 1
@.str.71 = private unnamed_addr constant [94 x i8] c"create_cone segments=%i diameter1=%f diameter2=%f cap_ends=%b cap_tris=%b depth=%f matrix=%m4\00", align 1
@.str.72 = private unnamed_addr constant [5 x i8] c"Cone\00", align 1
@.str.73 = private unnamed_addr constant [5 x i8] c"Grid\00", align 1
@.str.74 = private unnamed_addr constant [8 x i8] c"Suzanne\00", align 1
@.str.75 = private unnamed_addr constant [25 x i8] c"create_monkey matrix=%m4\00", align 1
@.str.76 = private unnamed_addr constant [7 x i8] c"Sphere\00", align 1
@.str.77 = private unnamed_addr constant [67 x i8] c"create_uvsphere u_segments=%i v_segments=%i diameter=%f matrix=%m4\00", align 1
@.str.78 = private unnamed_addr constant [10 x i8] c"Icosphere\00", align 1
@.str.79 = private unnamed_addr constant [56 x i8] c"create_icosphere subdivisions=%i diameter=%f matrix=%m4\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @MESH_OT_primitive_plane_add(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.1, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.2, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @add_primitive_plane_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_scene_editable, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  tail call void @ED_object_add_unit_props(ptr noundef nonnull %0) #3
  tail call void @ED_object_add_generic_props(ptr noundef nonnull %0, i8 noundef zeroext 1) #3
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @add_primitive_plane_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  %5 = alloca [4 x [4 x float]], align 16
  %6 = alloca float, align 4
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #3
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #3
  tail call void @WM_operator_view3d_unit_defaults(ptr noundef %0, ptr noundef %1) #3
  %10 = call zeroext i8 @ED_object_add_generic_get_opts(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 90, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %7, ptr noundef nonnull %9, ptr noundef null) #3
  %11 = load i32, ptr %9, align 4, !tbaa !47
  %12 = call fastcc ptr @make_prim_init(ptr noundef %0, ptr noundef nonnull @.str.53, ptr noundef nonnull %6, ptr noundef nonnull %5, ptr noundef nonnull %8, ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %11)
  %13 = call ptr @BKE_editmesh_from_object(ptr noundef %12) #3
  %14 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !49
  %16 = call float @RNA_float_get(ptr noundef %15, ptr noundef nonnull @.str.56) #3
  %17 = fpext float %16 to double
  %18 = call zeroext i8 (ptr, ptr, ptr, i8, ptr, ...) @EDBM_op_call_and_selectf(ptr noundef %13, ptr noundef %1, ptr noundef nonnull @.str.54, i8 noundef zeroext 0, ptr noundef nonnull @.str.55, i32 noundef 1, i32 noundef 1, double noundef %17, ptr noundef nonnull %5) #3
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %30, label %20

20:                                               ; preds = %2
  %21 = load i8, ptr %8, align 1, !tbaa !51
  %22 = load i8, ptr %7, align 1, !tbaa !51
  %23 = call ptr @BKE_editmesh_from_object(ptr noundef %12) #3
  %24 = icmp ne i8 %21, 1
  %25 = icmp ne i8 %22, 0
  %26 = or i1 %24, %25
  call void @EDBM_selectmode_flush_ex(ptr noundef %23, i16 noundef signext 1) #3
  %27 = zext i1 %26 to i8
  call void @EDBM_update_generic(ptr noundef %23, i8 noundef zeroext %27, i8 noundef zeroext 1) #3
  br i1 %26, label %29, label %28

28:                                               ; preds = %20
  call void @ED_object_editmode_exit(ptr noundef %0, i32 noundef 1) #3
  br label %29

29:                                               ; preds = %20, %28
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef %12) #3
  br label %30

30:                                               ; preds = %2, %29
  %31 = phi i32 [ 4, %29 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #3
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #3
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #3
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #3
  ret i32 %31
}

declare i32 @ED_operator_scene_editable(ptr noundef) #1

declare void @ED_object_add_unit_props(ptr noundef) local_unnamed_addr #1

declare void @ED_object_add_generic_props(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @MESH_OT_primitive_cube_add(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str.3, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.4, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.5, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @add_primitive_cube_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_scene_editable, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  tail call void @ED_object_add_unit_props(ptr noundef nonnull %0) #3
  tail call void @ED_object_add_generic_props(ptr noundef nonnull %0, i8 noundef zeroext 1) #3
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @add_primitive_cube_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  %5 = alloca [4 x [4 x float]], align 16
  %6 = alloca float, align 4
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #3
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #3
  tail call void @WM_operator_view3d_unit_defaults(ptr noundef %0, ptr noundef %1) #3
  %10 = call zeroext i8 @ED_object_add_generic_get_opts(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 90, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %7, ptr noundef nonnull %9, ptr noundef null) #3
  %11 = load i32, ptr %9, align 4, !tbaa !47
  %12 = call fastcc ptr @make_prim_init(ptr noundef %0, ptr noundef nonnull @.str.57, ptr noundef nonnull %6, ptr noundef nonnull %5, ptr noundef nonnull %8, ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %11)
  %13 = call ptr @BKE_editmesh_from_object(ptr noundef %12) #3
  %14 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !49
  %16 = call float @RNA_float_get(ptr noundef %15, ptr noundef nonnull @.str.56) #3
  %17 = fmul float %16, 2.000000e+00
  %18 = fpext float %17 to double
  %19 = call zeroext i8 (ptr, ptr, ptr, i8, ptr, ...) @EDBM_op_call_and_selectf(ptr noundef %13, ptr noundef %1, ptr noundef nonnull @.str.54, i8 noundef zeroext 0, ptr noundef nonnull @.str.58, ptr noundef nonnull %5, double noundef %18) #3
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %31, label %21

21:                                               ; preds = %2
  %22 = load i8, ptr %8, align 1, !tbaa !51
  %23 = load i8, ptr %7, align 1, !tbaa !51
  %24 = call ptr @BKE_editmesh_from_object(ptr noundef %12) #3
  %25 = icmp ne i8 %22, 1
  %26 = icmp ne i8 %23, 0
  %27 = or i1 %25, %26
  call void @EDBM_selectmode_flush_ex(ptr noundef %24, i16 noundef signext 1) #3
  %28 = zext i1 %27 to i8
  call void @EDBM_update_generic(ptr noundef %24, i8 noundef zeroext %28, i8 noundef zeroext 1) #3
  br i1 %27, label %30, label %29

29:                                               ; preds = %21
  call void @ED_object_editmode_exit(ptr noundef %0, i32 noundef 1) #3
  br label %30

30:                                               ; preds = %21, %29
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef %12) #3
  br label %31

31:                                               ; preds = %2, %30
  %32 = phi i32 [ 4, %30 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #3
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #3
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #3
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #3
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define dso_local void @MESH_OT_primitive_circle_add(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str.6, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.7, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.8, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @add_primitive_circle_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_scene_editable, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !52
  %9 = tail call ptr @RNA_def_int(ptr noundef %8, ptr noundef nonnull @.str.9, i32 noundef 32, i32 noundef 3, i32 noundef 2147483647, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef 3, i32 noundef 500) #3
  tail call void @ED_object_add_unit_props(ptr noundef nonnull %0) #3
  %10 = load ptr, ptr %7, align 8, !tbaa !52
  %11 = tail call ptr @RNA_def_enum(ptr noundef %10, ptr noundef nonnull @.str.12, ptr noundef nonnull @fill_type_items, i32 noundef 0, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.11) #3
  tail call void @ED_object_add_generic_props(ptr noundef nonnull %0, i8 noundef zeroext 1) #3
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @add_primitive_circle_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  %5 = alloca [4 x [4 x float]], align 16
  %6 = alloca float, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #3
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #3
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !49
  %12 = tail call i32 @RNA_enum_get(ptr noundef %11, ptr noundef nonnull @.str.12) #3
  %13 = icmp eq i32 %12, 2
  %14 = zext i1 %13 to i32
  tail call void @WM_operator_view3d_unit_defaults(ptr noundef %0, ptr noundef %1) #3
  %15 = call zeroext i8 @ED_object_add_generic_get_opts(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 90, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef null) #3
  %16 = load i32, ptr %8, align 4, !tbaa !47
  %17 = call fastcc ptr @make_prim_init(ptr noundef %0, ptr noundef nonnull @.str.59, ptr noundef nonnull %6, ptr noundef nonnull %5, ptr noundef nonnull %9, ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %16)
  %18 = call ptr @BKE_editmesh_from_object(ptr noundef %17) #3
  %19 = load ptr, ptr %10, align 8, !tbaa !49
  %20 = call i32 @RNA_int_get(ptr noundef %19, ptr noundef nonnull @.str.9) #3
  %21 = load ptr, ptr %10, align 8, !tbaa !49
  %22 = call float @RNA_float_get(ptr noundef %21, ptr noundef nonnull @.str.56) #3
  %23 = fpext float %22 to double
  %24 = call zeroext i8 (ptr, ptr, ptr, i8, ptr, ...) @EDBM_op_call_and_selectf(ptr noundef %18, ptr noundef %1, ptr noundef nonnull @.str.54, i8 noundef zeroext 0, ptr noundef nonnull @.str.60, i32 noundef %20, double noundef %23, i32 noundef %12, i32 noundef %14, ptr noundef nonnull %5) #3
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %36, label %26

26:                                               ; preds = %2
  %27 = load i8, ptr %9, align 1, !tbaa !51
  %28 = load i8, ptr %7, align 1, !tbaa !51
  %29 = call ptr @BKE_editmesh_from_object(ptr noundef %17) #3
  %30 = icmp ne i8 %27, 1
  %31 = icmp ne i8 %28, 0
  %32 = or i1 %30, %31
  call void @EDBM_selectmode_flush_ex(ptr noundef %29, i16 noundef signext 1) #3
  %33 = zext i1 %32 to i8
  call void @EDBM_update_generic(ptr noundef %29, i8 noundef zeroext %33, i8 noundef zeroext 1) #3
  br i1 %32, label %35, label %34

34:                                               ; preds = %26
  call void @ED_object_editmode_exit(ptr noundef %0, i32 noundef 1) #3
  br label %35

35:                                               ; preds = %26, %34
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef %17) #3
  br label %36

36:                                               ; preds = %2, %35
  %37 = phi i32 [ 4, %35 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #3
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #3
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #3
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #3
  ret i32 %37
}

declare ptr @RNA_def_int(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @MESH_OT_primitive_cylinder_add(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str.14, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.15, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.16, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @add_primitive_cylinder_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_scene_editable, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !52
  %9 = tail call ptr @RNA_def_int(ptr noundef %8, ptr noundef nonnull @.str.9, i32 noundef 32, i32 noundef 3, i32 noundef 2147483647, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef 3, i32 noundef 500) #3
  tail call void @ED_object_add_unit_props(ptr noundef nonnull %0) #3
  %10 = load ptr, ptr %7, align 8, !tbaa !52
  %11 = tail call ptr @RNA_def_float(ptr noundef %10, ptr noundef nonnull @.str.17, float noundef 2.000000e+00, float noundef 0.000000e+00, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.11, float noundef 0x3F50624DE0000000, float noundef 1.000000e+02) #3
  tail call void @RNA_def_property_subtype(ptr noundef %11, i32 noundef 65554) #3
  %12 = load ptr, ptr %7, align 8, !tbaa !52
  %13 = tail call ptr @RNA_def_enum(ptr noundef %12, ptr noundef nonnull @.str.19, ptr noundef nonnull @fill_type_items, i32 noundef 1, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.11) #3
  tail call void @ED_object_add_generic_props(ptr noundef nonnull %0, i8 noundef zeroext 1) #3
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @add_primitive_cylinder_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  %5 = alloca [4 x [4 x float]], align 16
  %6 = alloca float, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #3
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #3
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !49
  %12 = tail call i32 @RNA_enum_get(ptr noundef %11, ptr noundef nonnull @.str.19) #3
  %13 = icmp ne i32 %12, 0
  %14 = icmp eq i32 %12, 2
  tail call void @WM_operator_view3d_unit_defaults(ptr noundef %0, ptr noundef %1) #3
  %15 = call zeroext i8 @ED_object_add_generic_get_opts(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 90, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef null) #3
  %16 = load i32, ptr %8, align 4, !tbaa !47
  %17 = call fastcc ptr @make_prim_init(ptr noundef %0, ptr noundef nonnull @.str.70, ptr noundef nonnull %6, ptr noundef nonnull %5, ptr noundef nonnull %9, ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %16)
  %18 = call ptr @BKE_editmesh_from_object(ptr noundef %17) #3
  %19 = load ptr, ptr %10, align 8, !tbaa !49
  %20 = call i32 @RNA_int_get(ptr noundef %19, ptr noundef nonnull @.str.9) #3
  %21 = load ptr, ptr %10, align 8, !tbaa !49
  %22 = call float @RNA_float_get(ptr noundef %21, ptr noundef nonnull @.str.56) #3
  %23 = fpext float %22 to double
  %24 = load ptr, ptr %10, align 8, !tbaa !49
  %25 = call float @RNA_float_get(ptr noundef %24, ptr noundef nonnull @.str.56) #3
  %26 = fpext float %25 to double
  %27 = zext i1 %13 to i32
  %28 = zext i1 %14 to i32
  %29 = load ptr, ptr %10, align 8, !tbaa !49
  %30 = call float @RNA_float_get(ptr noundef %29, ptr noundef nonnull @.str.17) #3
  %31 = fpext float %30 to double
  %32 = call zeroext i8 (ptr, ptr, ptr, i8, ptr, ...) @EDBM_op_call_and_selectf(ptr noundef %18, ptr noundef %1, ptr noundef nonnull @.str.54, i8 noundef zeroext 0, ptr noundef nonnull @.str.71, i32 noundef %20, double noundef %23, double noundef %26, i32 noundef %27, i32 noundef %28, double noundef %31, ptr noundef nonnull %5) #3
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %44, label %34

34:                                               ; preds = %2
  %35 = load i8, ptr %9, align 1, !tbaa !51
  %36 = load i8, ptr %7, align 1, !tbaa !51
  %37 = call ptr @BKE_editmesh_from_object(ptr noundef %17) #3
  %38 = icmp ne i8 %35, 1
  %39 = icmp ne i8 %36, 0
  %40 = or i1 %38, %39
  call void @EDBM_selectmode_flush_ex(ptr noundef %37, i16 noundef signext 1) #3
  %41 = zext i1 %40 to i8
  call void @EDBM_update_generic(ptr noundef %37, i8 noundef zeroext %41, i8 noundef zeroext 1) #3
  br i1 %40, label %43, label %42

42:                                               ; preds = %34
  call void @ED_object_editmode_exit(ptr noundef %0, i32 noundef 1) #3
  br label %43

43:                                               ; preds = %34, %42
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef %17) #3
  br label %44

44:                                               ; preds = %2, %43
  %45 = phi i32 [ 4, %43 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #3
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #3
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #3
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #3
  ret i32 %45
}

declare ptr @RNA_def_float(ptr noundef, ptr noundef, float noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #1

declare void @RNA_def_property_subtype(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local void @MESH_OT_primitive_cone_add(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str.21, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.22, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.23, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @add_primitive_cone_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_scene_editable, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !52
  %9 = tail call ptr @RNA_def_int(ptr noundef %8, ptr noundef nonnull @.str.9, i32 noundef 32, i32 noundef 3, i32 noundef 2147483647, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef 3, i32 noundef 500) #3
  %10 = load ptr, ptr %7, align 8, !tbaa !52
  %11 = tail call ptr @RNA_def_float(ptr noundef %10, ptr noundef nonnull @.str.24, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.11, float noundef 0x3F50624DE0000000, float noundef 1.000000e+02) #3
  tail call void @RNA_def_property_subtype(ptr noundef %11, i32 noundef 65554) #3
  %12 = load ptr, ptr %7, align 8, !tbaa !52
  %13 = tail call ptr @RNA_def_float(ptr noundef %12, ptr noundef nonnull @.str.26, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.11, float noundef 0x3F50624DE0000000, float noundef 1.000000e+02) #3
  tail call void @RNA_def_property_subtype(ptr noundef %13, i32 noundef 65554) #3
  %14 = load ptr, ptr %7, align 8, !tbaa !52
  %15 = tail call ptr @RNA_def_float(ptr noundef %14, ptr noundef nonnull @.str.17, float noundef 2.000000e+00, float noundef 0.000000e+00, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.11, float noundef 0x3F50624DE0000000, float noundef 1.000000e+02) #3
  tail call void @RNA_def_property_subtype(ptr noundef %15, i32 noundef 65554) #3
  %16 = load ptr, ptr %7, align 8, !tbaa !52
  %17 = tail call ptr @RNA_def_enum(ptr noundef %16, ptr noundef nonnull @.str.19, ptr noundef nonnull @fill_type_items, i32 noundef 1, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.11) #3
  tail call void @ED_object_add_generic_props(ptr noundef nonnull %0, i8 noundef zeroext 1) #3
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @add_primitive_cone_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  %5 = alloca [4 x [4 x float]], align 16
  %6 = alloca float, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #3
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #3
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !49
  %12 = tail call i32 @RNA_enum_get(ptr noundef %11, ptr noundef nonnull @.str.19) #3
  %13 = icmp ne i32 %12, 0
  %14 = icmp eq i32 %12, 2
  tail call void @WM_operator_view3d_unit_defaults(ptr noundef %0, ptr noundef %1) #3
  %15 = call zeroext i8 @ED_object_add_generic_get_opts(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 90, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef null) #3
  %16 = load i32, ptr %8, align 4, !tbaa !47
  %17 = call fastcc ptr @make_prim_init(ptr noundef %0, ptr noundef nonnull @.str.72, ptr noundef nonnull %6, ptr noundef nonnull %5, ptr noundef nonnull %9, ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %16)
  %18 = call ptr @BKE_editmesh_from_object(ptr noundef %17) #3
  %19 = load ptr, ptr %10, align 8, !tbaa !49
  %20 = call i32 @RNA_int_get(ptr noundef %19, ptr noundef nonnull @.str.9) #3
  %21 = load ptr, ptr %10, align 8, !tbaa !49
  %22 = call float @RNA_float_get(ptr noundef %21, ptr noundef nonnull @.str.24) #3
  %23 = fpext float %22 to double
  %24 = load ptr, ptr %10, align 8, !tbaa !49
  %25 = call float @RNA_float_get(ptr noundef %24, ptr noundef nonnull @.str.26) #3
  %26 = fpext float %25 to double
  %27 = zext i1 %13 to i32
  %28 = zext i1 %14 to i32
  %29 = load ptr, ptr %10, align 8, !tbaa !49
  %30 = call float @RNA_float_get(ptr noundef %29, ptr noundef nonnull @.str.17) #3
  %31 = fpext float %30 to double
  %32 = call zeroext i8 (ptr, ptr, ptr, i8, ptr, ...) @EDBM_op_call_and_selectf(ptr noundef %18, ptr noundef %1, ptr noundef nonnull @.str.54, i8 noundef zeroext 0, ptr noundef nonnull @.str.71, i32 noundef %20, double noundef %23, double noundef %26, i32 noundef %27, i32 noundef %28, double noundef %31, ptr noundef nonnull %5) #3
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %44, label %34

34:                                               ; preds = %2
  %35 = load i8, ptr %9, align 1, !tbaa !51
  %36 = load i8, ptr %7, align 1, !tbaa !51
  %37 = call ptr @BKE_editmesh_from_object(ptr noundef %17) #3
  %38 = icmp ne i8 %35, 1
  %39 = icmp ne i8 %36, 0
  %40 = or i1 %38, %39
  call void @EDBM_selectmode_flush_ex(ptr noundef %37, i16 noundef signext 1) #3
  %41 = zext i1 %40 to i8
  call void @EDBM_update_generic(ptr noundef %37, i8 noundef zeroext %41, i8 noundef zeroext 1) #3
  br i1 %40, label %43, label %42

42:                                               ; preds = %34
  call void @ED_object_editmode_exit(ptr noundef %0, i32 noundef 1) #3
  br label %43

43:                                               ; preds = %34, %42
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef %17) #3
  br label %44

44:                                               ; preds = %2, %43
  %45 = phi i32 [ 4, %43 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #3
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #3
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #3
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #3
  ret i32 %45
}

; Function Attrs: nounwind uwtable
define dso_local void @MESH_OT_primitive_grid_add(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str.29, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.30, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.31, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @add_primitive_grid_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_scene_editable, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !52
  %9 = tail call ptr @RNA_def_int(ptr noundef %8, ptr noundef nonnull @.str.32, i32 noundef 10, i32 noundef 2, i32 noundef 2147483647, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.11, i32 noundef 2, i32 noundef 1000) #3
  %10 = load ptr, ptr %7, align 8, !tbaa !52
  %11 = tail call ptr @RNA_def_int(ptr noundef %10, ptr noundef nonnull @.str.34, i32 noundef 10, i32 noundef 2, i32 noundef 2147483647, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.11, i32 noundef 2, i32 noundef 1000) #3
  tail call void @ED_object_add_unit_props(ptr noundef nonnull %0) #3
  tail call void @ED_object_add_generic_props(ptr noundef nonnull %0, i8 noundef zeroext 1) #3
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @add_primitive_grid_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  %5 = alloca [4 x [4 x float]], align 16
  %6 = alloca float, align 4
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #3
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #3
  tail call void @WM_operator_view3d_unit_defaults(ptr noundef %0, ptr noundef %1) #3
  %10 = call zeroext i8 @ED_object_add_generic_get_opts(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 90, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %7, ptr noundef nonnull %9, ptr noundef null) #3
  %11 = load i32, ptr %9, align 4, !tbaa !47
  %12 = call fastcc ptr @make_prim_init(ptr noundef %0, ptr noundef nonnull @.str.73, ptr noundef nonnull %6, ptr noundef nonnull %5, ptr noundef nonnull %8, ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %11)
  %13 = call ptr @BKE_editmesh_from_object(ptr noundef %12) #3
  %14 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !49
  %16 = call i32 @RNA_int_get(ptr noundef %15, ptr noundef nonnull @.str.32) #3
  %17 = load ptr, ptr %14, align 8, !tbaa !49
  %18 = call i32 @RNA_int_get(ptr noundef %17, ptr noundef nonnull @.str.34) #3
  %19 = load ptr, ptr %14, align 8, !tbaa !49
  %20 = call float @RNA_float_get(ptr noundef %19, ptr noundef nonnull @.str.56) #3
  %21 = fpext float %20 to double
  %22 = call zeroext i8 (ptr, ptr, ptr, i8, ptr, ...) @EDBM_op_call_and_selectf(ptr noundef %13, ptr noundef %1, ptr noundef nonnull @.str.54, i8 noundef zeroext 0, ptr noundef nonnull @.str.55, i32 noundef %16, i32 noundef %18, double noundef %21, ptr noundef nonnull %5) #3
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %34, label %24

24:                                               ; preds = %2
  %25 = load i8, ptr %8, align 1, !tbaa !51
  %26 = load i8, ptr %7, align 1, !tbaa !51
  %27 = call ptr @BKE_editmesh_from_object(ptr noundef %12) #3
  %28 = icmp ne i8 %25, 1
  %29 = icmp ne i8 %26, 0
  %30 = or i1 %28, %29
  call void @EDBM_selectmode_flush_ex(ptr noundef %27, i16 noundef signext 1) #3
  %31 = zext i1 %30 to i8
  call void @EDBM_update_generic(ptr noundef %27, i8 noundef zeroext %31, i8 noundef zeroext 1) #3
  br i1 %30, label %33, label %32

32:                                               ; preds = %24
  call void @ED_object_editmode_exit(ptr noundef %0, i32 noundef 1) #3
  br label %33

33:                                               ; preds = %24, %32
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef %12) #3
  br label %34

34:                                               ; preds = %2, %33
  %35 = phi i32 [ 4, %33 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #3
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #3
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #3
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #3
  ret i32 %35
}

; Function Attrs: nounwind uwtable
define dso_local void @MESH_OT_primitive_monkey_add(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str.36, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.37, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.38, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @add_primitive_monkey_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_scene_editable, ptr %5, align 8, !tbaa !45
  tail call void @ED_object_add_unit_props(ptr noundef nonnull %0) #3
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  tail call void @ED_object_add_generic_props(ptr noundef nonnull %0, i8 noundef zeroext 1) #3
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @add_primitive_monkey_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  %5 = alloca [4 x [4 x float]], align 16
  %6 = alloca float, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #3
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #3
  tail call void @WM_operator_view3d_unit_defaults(ptr noundef %0, ptr noundef %1) #3
  %10 = call zeroext i8 @ED_object_add_generic_get_opts(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 89, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef null) #3
  %11 = load i32, ptr %8, align 4, !tbaa !47
  %12 = call fastcc ptr @make_prim_init(ptr noundef %0, ptr noundef nonnull @.str.74, ptr noundef nonnull %6, ptr noundef nonnull %5, ptr noundef nonnull %9, ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %11)
  %13 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !49
  %15 = call float @RNA_float_get(ptr noundef %14, ptr noundef nonnull @.str.56) #3
  store float %15, ptr %6, align 4, !tbaa !53
  %16 = load float, ptr %5, align 16, !tbaa !53
  %17 = fmul float %15, %16
  store float %17, ptr %5, align 16, !tbaa !53
  %18 = getelementptr inbounds [4 x [4 x float]], ptr %5, i64 0, i64 1, i64 1
  %19 = load float, ptr %18, align 4, !tbaa !53
  %20 = fmul float %15, %19
  store float %20, ptr %18, align 4, !tbaa !53
  %21 = getelementptr inbounds [4 x [4 x float]], ptr %5, i64 0, i64 2, i64 2
  %22 = load float, ptr %21, align 8, !tbaa !53
  %23 = fmul float %15, %22
  store float %23, ptr %21, align 8, !tbaa !53
  %24 = call ptr @BKE_editmesh_from_object(ptr noundef %12) #3
  %25 = call zeroext i8 (ptr, ptr, ptr, i8, ptr, ...) @EDBM_op_call_and_selectf(ptr noundef %24, ptr noundef %1, ptr noundef nonnull @.str.54, i8 noundef zeroext 0, ptr noundef nonnull @.str.75, ptr noundef nonnull %5) #3
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %37, label %27

27:                                               ; preds = %2
  %28 = load i8, ptr %9, align 1, !tbaa !51
  %29 = load i8, ptr %7, align 1, !tbaa !51
  %30 = call ptr @BKE_editmesh_from_object(ptr noundef %12) #3
  %31 = icmp ne i8 %28, 1
  %32 = icmp ne i8 %29, 0
  %33 = or i1 %31, %32
  call void @EDBM_selectmode_flush_ex(ptr noundef %30, i16 noundef signext 1) #3
  %34 = zext i1 %33 to i8
  call void @EDBM_update_generic(ptr noundef %30, i8 noundef zeroext %34, i8 noundef zeroext 1) #3
  br i1 %33, label %36, label %35

35:                                               ; preds = %27
  call void @ED_object_editmode_exit(ptr noundef %0, i32 noundef 1) #3
  br label %36

36:                                               ; preds = %27, %35
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef %12) #3
  br label %37

37:                                               ; preds = %2, %36
  %38 = phi i32 [ 4, %36 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #3
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #3
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #3
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #3
  ret i32 %38
}

; Function Attrs: nounwind uwtable
define dso_local void @MESH_OT_primitive_uv_sphere_add(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str.39, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.40, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.41, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @add_primitive_uvsphere_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_scene_editable, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !52
  %9 = tail call ptr @RNA_def_int(ptr noundef %8, ptr noundef nonnull @.str.42, i32 noundef 32, i32 noundef 3, i32 noundef 2147483647, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.11, i32 noundef 3, i32 noundef 500) #3
  %10 = load ptr, ptr %7, align 8, !tbaa !52
  %11 = tail call ptr @RNA_def_int(ptr noundef %10, ptr noundef nonnull @.str.44, i32 noundef 16, i32 noundef 3, i32 noundef 2147483647, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.11, i32 noundef 3, i32 noundef 500) #3
  %12 = load ptr, ptr %7, align 8, !tbaa !52
  %13 = tail call ptr @RNA_def_float(ptr noundef %12, ptr noundef nonnull @.str.46, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.11, float noundef 0x3F50624DE0000000, float noundef 1.000000e+02) #3
  tail call void @RNA_def_property_subtype(ptr noundef %13, i32 noundef 65554) #3
  tail call void @ED_object_add_generic_props(ptr noundef nonnull %0, i8 noundef zeroext 1) #3
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @add_primitive_uvsphere_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  %5 = alloca [4 x [4 x float]], align 16
  %6 = alloca float, align 4
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #3
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #3
  tail call void @WM_operator_view3d_unit_defaults(ptr noundef %0, ptr noundef %1) #3
  %10 = call zeroext i8 @ED_object_add_generic_get_opts(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 90, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %7, ptr noundef nonnull %9, ptr noundef null) #3
  %11 = load i32, ptr %9, align 4, !tbaa !47
  %12 = call fastcc ptr @make_prim_init(ptr noundef %0, ptr noundef nonnull @.str.76, ptr noundef nonnull %6, ptr noundef nonnull %5, ptr noundef nonnull %8, ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %11)
  %13 = call ptr @BKE_editmesh_from_object(ptr noundef %12) #3
  %14 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !49
  %16 = call i32 @RNA_int_get(ptr noundef %15, ptr noundef nonnull @.str.42) #3
  %17 = load ptr, ptr %14, align 8, !tbaa !49
  %18 = call i32 @RNA_int_get(ptr noundef %17, ptr noundef nonnull @.str.44) #3
  %19 = load ptr, ptr %14, align 8, !tbaa !49
  %20 = call float @RNA_float_get(ptr noundef %19, ptr noundef nonnull @.str.46) #3
  %21 = fpext float %20 to double
  %22 = call zeroext i8 (ptr, ptr, ptr, i8, ptr, ...) @EDBM_op_call_and_selectf(ptr noundef %13, ptr noundef %1, ptr noundef nonnull @.str.54, i8 noundef zeroext 0, ptr noundef nonnull @.str.77, i32 noundef %16, i32 noundef %18, double noundef %21, ptr noundef nonnull %5) #3
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %34, label %24

24:                                               ; preds = %2
  %25 = load i8, ptr %8, align 1, !tbaa !51
  %26 = load i8, ptr %7, align 1, !tbaa !51
  %27 = call ptr @BKE_editmesh_from_object(ptr noundef %12) #3
  %28 = icmp ne i8 %25, 1
  %29 = icmp ne i8 %26, 0
  %30 = or i1 %28, %29
  call void @EDBM_selectmode_flush_ex(ptr noundef %27, i16 noundef signext 1) #3
  %31 = zext i1 %30 to i8
  call void @EDBM_update_generic(ptr noundef %27, i8 noundef zeroext %31, i8 noundef zeroext 1) #3
  br i1 %30, label %33, label %32

32:                                               ; preds = %24
  call void @ED_object_editmode_exit(ptr noundef %0, i32 noundef 1) #3
  br label %33

33:                                               ; preds = %24, %32
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef %12) #3
  br label %34

34:                                               ; preds = %2, %33
  %35 = phi i32 [ 4, %33 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #3
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #3
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #3
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #3
  ret i32 %35
}

; Function Attrs: nounwind uwtable
define dso_local void @MESH_OT_primitive_ico_sphere_add(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str.48, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.49, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.50, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @add_primitive_icosphere_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_scene_editable, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !52
  %9 = tail call ptr @RNA_def_int(ptr noundef %8, ptr noundef nonnull @.str.51, i32 noundef 2, i32 noundef 1, i32 noundef 2147483647, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.11, i32 noundef 1, i32 noundef 8) #3
  %10 = load ptr, ptr %7, align 8, !tbaa !52
  %11 = tail call ptr @RNA_def_float(ptr noundef %10, ptr noundef nonnull @.str.46, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.11, float noundef 0x3F50624DE0000000, float noundef 1.000000e+02) #3
  tail call void @RNA_def_property_subtype(ptr noundef %11, i32 noundef 65554) #3
  tail call void @ED_object_add_generic_props(ptr noundef nonnull %0, i8 noundef zeroext 1) #3
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @add_primitive_icosphere_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  %5 = alloca [4 x [4 x float]], align 16
  %6 = alloca float, align 4
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #3
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #3
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #3
  tail call void @WM_operator_view3d_unit_defaults(ptr noundef %0, ptr noundef %1) #3
  %10 = call zeroext i8 @ED_object_add_generic_get_opts(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 90, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %7, ptr noundef nonnull %9, ptr noundef null) #3
  %11 = load i32, ptr %9, align 4, !tbaa !47
  %12 = call fastcc ptr @make_prim_init(ptr noundef %0, ptr noundef nonnull @.str.78, ptr noundef nonnull %6, ptr noundef nonnull %5, ptr noundef nonnull %8, ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %11)
  %13 = call ptr @BKE_editmesh_from_object(ptr noundef %12) #3
  %14 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !49
  %16 = call i32 @RNA_int_get(ptr noundef %15, ptr noundef nonnull @.str.51) #3
  %17 = load ptr, ptr %14, align 8, !tbaa !49
  %18 = call float @RNA_float_get(ptr noundef %17, ptr noundef nonnull @.str.46) #3
  %19 = fpext float %18 to double
  %20 = call zeroext i8 (ptr, ptr, ptr, i8, ptr, ...) @EDBM_op_call_and_selectf(ptr noundef %13, ptr noundef %1, ptr noundef nonnull @.str.54, i8 noundef zeroext 0, ptr noundef nonnull @.str.79, i32 noundef %16, double noundef %19, ptr noundef nonnull %5) #3
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %32, label %22

22:                                               ; preds = %2
  %23 = load i8, ptr %8, align 1, !tbaa !51
  %24 = load i8, ptr %7, align 1, !tbaa !51
  %25 = call ptr @BKE_editmesh_from_object(ptr noundef %12) #3
  %26 = icmp ne i8 %23, 1
  %27 = icmp ne i8 %24, 0
  %28 = or i1 %26, %27
  call void @EDBM_selectmode_flush_ex(ptr noundef %25, i16 noundef signext 1) #3
  %29 = zext i1 %28 to i8
  call void @EDBM_update_generic(ptr noundef %25, i8 noundef zeroext %29, i8 noundef zeroext 1) #3
  br i1 %28, label %31, label %30

30:                                               ; preds = %22
  call void @ED_object_editmode_exit(ptr noundef %0, i32 noundef 1) #3
  br label %31

31:                                               ; preds = %22, %30
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef %12) #3
  br label %32

32:                                               ; preds = %2, %31
  %33 = phi i32 [ 4, %31 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #3
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #3
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #3
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #3
  ret i32 %33
}

declare void @WM_operator_view3d_unit_defaults(ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i8 @ED_object_add_generic_get_opts(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @make_prim_init(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2, ptr noundef %3, ptr nocapture noundef writeonly %4, ptr noundef %5, ptr noundef %6, i32 noundef %7) unnamed_addr #0 {
  %9 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #3
  store i8 0, ptr %4, align 1, !tbaa !51
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 3
  %13 = load i16, ptr %12, align 8, !tbaa !55
  %14 = icmp eq i16 %13, 1
  br i1 %14, label %19, label %15

15:                                               ; preds = %11, %8
  %16 = tail call ptr @ED_object_add_type(ptr noundef %0, i32 noundef 1, ptr noundef %5, ptr noundef %6, i8 noundef zeroext 0, i32 noundef %7) #3
  tail call void @rename_id(ptr noundef %16, ptr noundef %1) #3
  %17 = getelementptr inbounds %struct.Object, ptr %16, i64 0, i32 19
  %18 = load ptr, ptr %17, align 8, !tbaa !60
  tail call void @rename_id(ptr noundef %18, ptr noundef %1) #3
  tail call void @ED_object_editmode_enter(ptr noundef %0, i32 noundef 24) #3
  store i8 1, ptr %4, align 1, !tbaa !51
  br label %19

19:                                               ; preds = %15, %11
  %20 = phi ptr [ %16, %15 ], [ %9, %11 ]
  %21 = tail call float @ED_object_new_primitive_matrix(ptr noundef %0, ptr noundef %20, ptr noundef %5, ptr noundef %6, ptr noundef %3, i8 noundef zeroext 0) #3
  store float %21, ptr %2, align 4, !tbaa !53
  ret ptr %20
}

declare ptr @BKE_editmesh_from_object(ptr noundef) local_unnamed_addr #1

declare zeroext i8 @EDBM_op_call_and_selectf(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ...) local_unnamed_addr #1

declare float @RNA_float_get(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #1

declare ptr @ED_object_add_type(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

declare void @rename_id(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @ED_object_editmode_enter(ptr noundef, i32 noundef) local_unnamed_addr #1

declare float @ED_object_new_primitive_matrix(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

declare void @EDBM_selectmode_flush_ex(ptr noundef, i16 noundef signext) local_unnamed_addr #1

declare void @EDBM_update_generic(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

declare void @ED_object_editmode_exit(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @RNA_int_get(ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind }

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
!34 = !{!35, !36, i64 0}
!35 = !{!"wmOperatorType", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !39, i64 112, !36, i64 128, !36, i64 136, !36, i64 144, !40, i64 152, !41, i64 184}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"ListBase", !36, i64 0, !36, i64 8}
!40 = !{!"ExtensionRNA", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!41 = !{!"short", !37, i64 0}
!42 = !{!35, !36, i64 24}
!43 = !{!35, !36, i64 8}
!44 = !{!35, !36, i64 32}
!45 = !{!35, !36, i64 72}
!46 = !{!35, !41, i64 184}
!47 = !{!48, !48, i64 0}
!48 = !{!"int", !37, i64 0}
!49 = !{!50, !36, i64 112}
!50 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !39, i64 128, !36, i64 144, !36, i64 152, !41, i64 160, !37, i64 162}
!51 = !{!37, !37, i64 0}
!52 = !{!35, !36, i64 88}
!53 = !{!54, !54, i64 0}
!54 = !{!"float", !37, i64 0}
!55 = !{!56, !41, i64 136}
!56 = !{!"Object", !57, i64 0, !36, i64 120, !36, i64 128, !41, i64 136, !41, i64 138, !48, i64 140, !48, i64 144, !48, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !58, i64 312, !36, i64 360, !39, i64 368, !39, i64 384, !39, i64 400, !39, i64 416, !48, i64 432, !48, i64 436, !36, i64 440, !36, i64 448, !48, i64 456, !48, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !54, i64 616, !54, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !48, i64 944, !41, i64 948, !41, i64 950, !41, i64 952, !41, i64 954, !41, i64 956, !41, i64 958, !41, i64 960, !41, i64 962, !41, i64 964, !37, i64 966, !37, i64 967, !48, i64 968, !48, i64 972, !48, i64 976, !48, i64 980, !48, i64 984, !54, i64 988, !54, i64 992, !54, i64 996, !54, i64 1000, !54, i64 1004, !54, i64 1008, !54, i64 1012, !54, i64 1016, !54, i64 1020, !54, i64 1024, !54, i64 1028, !54, i64 1032, !41, i64 1036, !41, i64 1038, !41, i64 1040, !37, i64 1042, !37, i64 1043, !41, i64 1044, !37, i64 1046, !37, i64 1047, !54, i64 1048, !54, i64 1052, !39, i64 1056, !39, i64 1072, !39, i64 1088, !39, i64 1104, !54, i64 1120, !41, i64 1124, !41, i64 1126, !37, i64 1128, !48, i64 1144, !48, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !41, i64 1162, !37, i64 1164, !39, i64 1176, !39, i64 1192, !39, i64 1208, !39, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !41, i64 1266, !54, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !59, i64 1304, !59, i64 1312, !48, i64 1320, !48, i64 1324, !39, i64 1328, !39, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !39, i64 1400, !36, i64 1416}
!57 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !41, i64 98, !48, i64 100, !48, i64 104, !48, i64 108, !36, i64 112}
!58 = !{!"bAnimVizSettings", !48, i64 0, !48, i64 4, !48, i64 8, !48, i64 12, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !48, i64 32, !48, i64 36, !48, i64 40, !48, i64 44}
!59 = !{!"long", !37, i64 0}
!60 = !{!56, !36, i64 296}

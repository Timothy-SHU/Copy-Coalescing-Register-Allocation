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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MESH_OT_primitive_plane_add(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.1, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.2, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @add_primitive_plane_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_scene_editable, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !17
  tail call void @ED_object_add_unit_props(ptr noundef nonnull %0) #3
  tail call void @ED_object_add_generic_props(ptr noundef nonnull %0, i8 noundef zeroext 1) #3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @add_primitive_plane_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  %5 = alloca [4 x [4 x float]], align 16
  %6 = alloca float, align 4
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #4
  tail call void @WM_operator_view3d_unit_defaults(ptr noundef %0, ptr noundef %1) #3
  %10 = call zeroext i8 @ED_object_add_generic_get_opts(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 90, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %7, ptr noundef nonnull %9, ptr noundef null) #3
  %11 = load i32, ptr %9, align 4, !tbaa !18
  %12 = call fastcc ptr @make_prim_init(ptr noundef %0, ptr noundef nonnull @.str.53, ptr noundef nonnull %6, ptr noundef nonnull %5, ptr noundef nonnull %8, ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %11) #5
  %13 = call ptr @BKE_editmesh_from_object(ptr noundef %12) #3
  %14 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !20
  %16 = call float @RNA_float_get(ptr noundef %15, ptr noundef nonnull @.str.56) #3
  %17 = fpext float %16 to double
  %18 = call zeroext i8 (ptr, ptr, ptr, i8, ptr, ...) @EDBM_op_call_and_selectf(ptr noundef %13, ptr noundef %1, ptr noundef nonnull @.str.54, i8 noundef zeroext 0, ptr noundef nonnull @.str.55, i32 noundef 1, i32 noundef 1, double noundef %17, ptr noundef nonnull %5) #3
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %2
  %21 = load i8, ptr %8, align 1, !tbaa !22
  %22 = load i8, ptr %7, align 1, !tbaa !22
  %23 = zext i8 %22 to i32
  call fastcc void @make_prim_finish(ptr noundef %0, ptr noundef %12, i8 noundef zeroext %21, i32 noundef %23) #5
  br label %24

24:                                               ; preds = %2, %20
  %25 = phi i32 [ 4, %20 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #4
  ret i32 %25
}

; Function Attrs: optsize
declare i32 @ED_operator_scene_editable(ptr noundef) #1

; Function Attrs: optsize
declare void @ED_object_add_unit_props(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_object_add_generic_props(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MESH_OT_primitive_cube_add(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str.3, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.4, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.5, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @add_primitive_cube_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_scene_editable, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !17
  tail call void @ED_object_add_unit_props(ptr noundef nonnull %0) #3
  tail call void @ED_object_add_generic_props(ptr noundef nonnull %0, i8 noundef zeroext 1) #3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @add_primitive_cube_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  %5 = alloca [4 x [4 x float]], align 16
  %6 = alloca float, align 4
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #4
  tail call void @WM_operator_view3d_unit_defaults(ptr noundef %0, ptr noundef %1) #3
  %10 = call zeroext i8 @ED_object_add_generic_get_opts(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 90, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %7, ptr noundef nonnull %9, ptr noundef null) #3
  %11 = load i32, ptr %9, align 4, !tbaa !18
  %12 = call fastcc ptr @make_prim_init(ptr noundef %0, ptr noundef nonnull @.str.57, ptr noundef nonnull %6, ptr noundef nonnull %5, ptr noundef nonnull %8, ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %11) #5
  %13 = call ptr @BKE_editmesh_from_object(ptr noundef %12) #3
  %14 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !20
  %16 = call float @RNA_float_get(ptr noundef %15, ptr noundef nonnull @.str.56) #3
  %17 = fmul float %16, 2.000000e+00
  %18 = fpext float %17 to double
  %19 = call zeroext i8 (ptr, ptr, ptr, i8, ptr, ...) @EDBM_op_call_and_selectf(ptr noundef %13, ptr noundef %1, ptr noundef nonnull @.str.54, i8 noundef zeroext 0, ptr noundef nonnull @.str.58, ptr noundef nonnull %5, double noundef %18) #3
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %2
  %22 = load i8, ptr %8, align 1, !tbaa !22
  %23 = load i8, ptr %7, align 1, !tbaa !22
  %24 = zext i8 %23 to i32
  call fastcc void @make_prim_finish(ptr noundef %0, ptr noundef %12, i8 noundef zeroext %22, i32 noundef %24) #5
  br label %25

25:                                               ; preds = %2, %21
  %26 = phi i32 [ 4, %21 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #4
  ret i32 %26
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MESH_OT_primitive_circle_add(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str.6, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.7, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.8, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @add_primitive_circle_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_scene_editable, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !17
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !23
  %9 = tail call ptr @RNA_def_int(ptr noundef %8, ptr noundef nonnull @.str.9, i32 noundef 32, i32 noundef 3, i32 noundef 2147483647, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef 3, i32 noundef 500) #3
  tail call void @ED_object_add_unit_props(ptr noundef nonnull %0) #3
  %10 = load ptr, ptr %7, align 8, !tbaa !23
  %11 = tail call ptr @RNA_def_enum(ptr noundef %10, ptr noundef nonnull @.str.12, ptr noundef nonnull @fill_type_items, i32 noundef 0, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.11) #3
  tail call void @ED_object_add_generic_props(ptr noundef nonnull %0, i8 noundef zeroext 1) #3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @add_primitive_circle_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  %5 = alloca [4 x [4 x float]], align 16
  %6 = alloca float, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #4
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !20
  %12 = tail call i32 @RNA_enum_get(ptr noundef %11, ptr noundef nonnull @.str.12) #3
  %13 = icmp eq i32 %12, 2
  %14 = zext i1 %13 to i32
  tail call void @WM_operator_view3d_unit_defaults(ptr noundef %0, ptr noundef %1) #3
  %15 = call zeroext i8 @ED_object_add_generic_get_opts(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 90, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef null) #3
  %16 = load i32, ptr %8, align 4, !tbaa !18
  %17 = call fastcc ptr @make_prim_init(ptr noundef %0, ptr noundef nonnull @.str.59, ptr noundef nonnull %6, ptr noundef nonnull %5, ptr noundef nonnull %9, ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %16) #5
  %18 = call ptr @BKE_editmesh_from_object(ptr noundef %17) #3
  %19 = load ptr, ptr %10, align 8, !tbaa !20
  %20 = call i32 @RNA_int_get(ptr noundef %19, ptr noundef nonnull @.str.9) #3
  %21 = load ptr, ptr %10, align 8, !tbaa !20
  %22 = call float @RNA_float_get(ptr noundef %21, ptr noundef nonnull @.str.56) #3
  %23 = fpext float %22 to double
  %24 = call zeroext i8 (ptr, ptr, ptr, i8, ptr, ...) @EDBM_op_call_and_selectf(ptr noundef %18, ptr noundef %1, ptr noundef nonnull @.str.54, i8 noundef zeroext 0, ptr noundef nonnull @.str.60, i32 noundef %20, double noundef %23, i32 noundef %12, i32 noundef %14, ptr noundef nonnull %5) #3
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %2
  %27 = load i8, ptr %9, align 1, !tbaa !22
  %28 = load i8, ptr %7, align 1, !tbaa !22
  %29 = zext i8 %28 to i32
  call fastcc void @make_prim_finish(ptr noundef %0, ptr noundef %17, i8 noundef zeroext %27, i32 noundef %29) #5
  br label %30

30:                                               ; preds = %2, %26
  %31 = phi i32 [ 4, %26 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #4
  ret i32 %31
}

; Function Attrs: optsize
declare ptr @RNA_def_int(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @RNA_def_enum(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MESH_OT_primitive_cylinder_add(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str.14, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.15, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.16, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @add_primitive_cylinder_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_scene_editable, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !17
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !23
  %9 = tail call ptr @RNA_def_int(ptr noundef %8, ptr noundef nonnull @.str.9, i32 noundef 32, i32 noundef 3, i32 noundef 2147483647, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef 3, i32 noundef 500) #3
  tail call void @ED_object_add_unit_props(ptr noundef nonnull %0) #3
  %10 = load ptr, ptr %7, align 8, !tbaa !23
  %11 = tail call ptr @RNA_def_float(ptr noundef %10, ptr noundef nonnull @.str.17, float noundef 2.000000e+00, float noundef 0.000000e+00, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.11, float noundef 0x3F50624DE0000000, float noundef 1.000000e+02) #3
  tail call void @RNA_def_property_subtype(ptr noundef %11, i32 noundef 65554) #3
  %12 = load ptr, ptr %7, align 8, !tbaa !23
  %13 = tail call ptr @RNA_def_enum(ptr noundef %12, ptr noundef nonnull @.str.19, ptr noundef nonnull @fill_type_items, i32 noundef 1, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.11) #3
  tail call void @ED_object_add_generic_props(ptr noundef nonnull %0, i8 noundef zeroext 1) #3
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @add_primitive_cylinder_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  %5 = alloca [4 x [4 x float]], align 16
  %6 = alloca float, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #4
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !20
  %12 = tail call i32 @RNA_enum_get(ptr noundef %11, ptr noundef nonnull @.str.19) #3
  %13 = icmp ne i32 %12, 0
  %14 = icmp eq i32 %12, 2
  tail call void @WM_operator_view3d_unit_defaults(ptr noundef %0, ptr noundef %1) #3
  %15 = call zeroext i8 @ED_object_add_generic_get_opts(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 90, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef null) #3
  %16 = load i32, ptr %8, align 4, !tbaa !18
  %17 = call fastcc ptr @make_prim_init(ptr noundef %0, ptr noundef nonnull @.str.70, ptr noundef nonnull %6, ptr noundef nonnull %5, ptr noundef nonnull %9, ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %16) #5
  %18 = call ptr @BKE_editmesh_from_object(ptr noundef %17) #3
  %19 = load ptr, ptr %10, align 8, !tbaa !20
  %20 = call i32 @RNA_int_get(ptr noundef %19, ptr noundef nonnull @.str.9) #3
  %21 = load ptr, ptr %10, align 8, !tbaa !20
  %22 = call float @RNA_float_get(ptr noundef %21, ptr noundef nonnull @.str.56) #3
  %23 = fpext float %22 to double
  %24 = load ptr, ptr %10, align 8, !tbaa !20
  %25 = call float @RNA_float_get(ptr noundef %24, ptr noundef nonnull @.str.56) #3
  %26 = fpext float %25 to double
  %27 = zext i1 %13 to i32
  %28 = zext i1 %14 to i32
  %29 = load ptr, ptr %10, align 8, !tbaa !20
  %30 = call float @RNA_float_get(ptr noundef %29, ptr noundef nonnull @.str.17) #3
  %31 = fpext float %30 to double
  %32 = call zeroext i8 (ptr, ptr, ptr, i8, ptr, ...) @EDBM_op_call_and_selectf(ptr noundef %18, ptr noundef %1, ptr noundef nonnull @.str.54, i8 noundef zeroext 0, ptr noundef nonnull @.str.71, i32 noundef %20, double noundef %23, double noundef %26, i32 noundef %27, i32 noundef %28, double noundef %31, ptr noundef nonnull %5) #3
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %2
  %35 = load i8, ptr %9, align 1, !tbaa !22
  %36 = load i8, ptr %7, align 1, !tbaa !22
  %37 = zext i8 %36 to i32
  call fastcc void @make_prim_finish(ptr noundef %0, ptr noundef %17, i8 noundef zeroext %35, i32 noundef %37) #5
  br label %38

38:                                               ; preds = %2, %34
  %39 = phi i32 [ 4, %34 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #4
  ret i32 %39
}

; Function Attrs: optsize
declare ptr @RNA_def_float(ptr noundef, ptr noundef, float noundef, float noundef, float noundef, ptr noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @RNA_def_property_subtype(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MESH_OT_primitive_cone_add(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str.21, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.22, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.23, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @add_primitive_cone_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_scene_editable, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !17
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !23
  %9 = tail call ptr @RNA_def_int(ptr noundef %8, ptr noundef nonnull @.str.9, i32 noundef 32, i32 noundef 3, i32 noundef 2147483647, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef 3, i32 noundef 500) #3
  %10 = load ptr, ptr %7, align 8, !tbaa !23
  %11 = tail call ptr @RNA_def_float(ptr noundef %10, ptr noundef nonnull @.str.24, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.11, float noundef 0x3F50624DE0000000, float noundef 1.000000e+02) #3
  tail call void @RNA_def_property_subtype(ptr noundef %11, i32 noundef 65554) #3
  %12 = load ptr, ptr %7, align 8, !tbaa !23
  %13 = tail call ptr @RNA_def_float(ptr noundef %12, ptr noundef nonnull @.str.26, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.11, float noundef 0x3F50624DE0000000, float noundef 1.000000e+02) #3
  tail call void @RNA_def_property_subtype(ptr noundef %13, i32 noundef 65554) #3
  %14 = load ptr, ptr %7, align 8, !tbaa !23
  %15 = tail call ptr @RNA_def_float(ptr noundef %14, ptr noundef nonnull @.str.17, float noundef 2.000000e+00, float noundef 0.000000e+00, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.11, float noundef 0x3F50624DE0000000, float noundef 1.000000e+02) #3
  tail call void @RNA_def_property_subtype(ptr noundef %15, i32 noundef 65554) #3
  %16 = load ptr, ptr %7, align 8, !tbaa !23
  %17 = tail call ptr @RNA_def_enum(ptr noundef %16, ptr noundef nonnull @.str.19, ptr noundef nonnull @fill_type_items, i32 noundef 1, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.11) #3
  tail call void @ED_object_add_generic_props(ptr noundef nonnull %0, i8 noundef zeroext 1) #3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @add_primitive_cone_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  %5 = alloca [4 x [4 x float]], align 16
  %6 = alloca float, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #4
  %10 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !20
  %12 = tail call i32 @RNA_enum_get(ptr noundef %11, ptr noundef nonnull @.str.19) #3
  %13 = icmp ne i32 %12, 0
  %14 = icmp eq i32 %12, 2
  tail call void @WM_operator_view3d_unit_defaults(ptr noundef %0, ptr noundef %1) #3
  %15 = call zeroext i8 @ED_object_add_generic_get_opts(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 90, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef null) #3
  %16 = load i32, ptr %8, align 4, !tbaa !18
  %17 = call fastcc ptr @make_prim_init(ptr noundef %0, ptr noundef nonnull @.str.72, ptr noundef nonnull %6, ptr noundef nonnull %5, ptr noundef nonnull %9, ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %16) #5
  %18 = call ptr @BKE_editmesh_from_object(ptr noundef %17) #3
  %19 = load ptr, ptr %10, align 8, !tbaa !20
  %20 = call i32 @RNA_int_get(ptr noundef %19, ptr noundef nonnull @.str.9) #3
  %21 = load ptr, ptr %10, align 8, !tbaa !20
  %22 = call float @RNA_float_get(ptr noundef %21, ptr noundef nonnull @.str.24) #3
  %23 = fpext float %22 to double
  %24 = load ptr, ptr %10, align 8, !tbaa !20
  %25 = call float @RNA_float_get(ptr noundef %24, ptr noundef nonnull @.str.26) #3
  %26 = fpext float %25 to double
  %27 = zext i1 %13 to i32
  %28 = zext i1 %14 to i32
  %29 = load ptr, ptr %10, align 8, !tbaa !20
  %30 = call float @RNA_float_get(ptr noundef %29, ptr noundef nonnull @.str.17) #3
  %31 = fpext float %30 to double
  %32 = call zeroext i8 (ptr, ptr, ptr, i8, ptr, ...) @EDBM_op_call_and_selectf(ptr noundef %18, ptr noundef %1, ptr noundef nonnull @.str.54, i8 noundef zeroext 0, ptr noundef nonnull @.str.71, i32 noundef %20, double noundef %23, double noundef %26, i32 noundef %27, i32 noundef %28, double noundef %31, ptr noundef nonnull %5) #3
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %2
  %35 = load i8, ptr %9, align 1, !tbaa !22
  %36 = load i8, ptr %7, align 1, !tbaa !22
  %37 = zext i8 %36 to i32
  call fastcc void @make_prim_finish(ptr noundef %0, ptr noundef %17, i8 noundef zeroext %35, i32 noundef %37) #5
  br label %38

38:                                               ; preds = %2, %34
  %39 = phi i32 [ 4, %34 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #4
  ret i32 %39
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MESH_OT_primitive_grid_add(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str.29, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.30, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.31, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @add_primitive_grid_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_scene_editable, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !17
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !23
  %9 = tail call ptr @RNA_def_int(ptr noundef %8, ptr noundef nonnull @.str.32, i32 noundef 10, i32 noundef 2, i32 noundef 2147483647, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.11, i32 noundef 2, i32 noundef 1000) #3
  %10 = load ptr, ptr %7, align 8, !tbaa !23
  %11 = tail call ptr @RNA_def_int(ptr noundef %10, ptr noundef nonnull @.str.34, i32 noundef 10, i32 noundef 2, i32 noundef 2147483647, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.11, i32 noundef 2, i32 noundef 1000) #3
  tail call void @ED_object_add_unit_props(ptr noundef nonnull %0) #3
  tail call void @ED_object_add_generic_props(ptr noundef nonnull %0, i8 noundef zeroext 1) #3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @add_primitive_grid_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  %5 = alloca [4 x [4 x float]], align 16
  %6 = alloca float, align 4
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #4
  tail call void @WM_operator_view3d_unit_defaults(ptr noundef %0, ptr noundef %1) #3
  %10 = call zeroext i8 @ED_object_add_generic_get_opts(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 90, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %7, ptr noundef nonnull %9, ptr noundef null) #3
  %11 = load i32, ptr %9, align 4, !tbaa !18
  %12 = call fastcc ptr @make_prim_init(ptr noundef %0, ptr noundef nonnull @.str.73, ptr noundef nonnull %6, ptr noundef nonnull %5, ptr noundef nonnull %8, ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %11) #5
  %13 = call ptr @BKE_editmesh_from_object(ptr noundef %12) #3
  %14 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !20
  %16 = call i32 @RNA_int_get(ptr noundef %15, ptr noundef nonnull @.str.32) #3
  %17 = load ptr, ptr %14, align 8, !tbaa !20
  %18 = call i32 @RNA_int_get(ptr noundef %17, ptr noundef nonnull @.str.34) #3
  %19 = load ptr, ptr %14, align 8, !tbaa !20
  %20 = call float @RNA_float_get(ptr noundef %19, ptr noundef nonnull @.str.56) #3
  %21 = fpext float %20 to double
  %22 = call zeroext i8 (ptr, ptr, ptr, i8, ptr, ...) @EDBM_op_call_and_selectf(ptr noundef %13, ptr noundef %1, ptr noundef nonnull @.str.54, i8 noundef zeroext 0, ptr noundef nonnull @.str.55, i32 noundef %16, i32 noundef %18, double noundef %21, ptr noundef nonnull %5) #3
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %2
  %25 = load i8, ptr %8, align 1, !tbaa !22
  %26 = load i8, ptr %7, align 1, !tbaa !22
  %27 = zext i8 %26 to i32
  call fastcc void @make_prim_finish(ptr noundef %0, ptr noundef %12, i8 noundef zeroext %25, i32 noundef %27) #5
  br label %28

28:                                               ; preds = %2, %24
  %29 = phi i32 [ 4, %24 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #4
  ret i32 %29
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MESH_OT_primitive_monkey_add(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str.36, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.37, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.38, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @add_primitive_monkey_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_scene_editable, ptr %5, align 8, !tbaa !16
  tail call void @ED_object_add_unit_props(ptr noundef nonnull %0) #3
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !17
  tail call void @ED_object_add_generic_props(ptr noundef nonnull %0, i8 noundef zeroext 1) #3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @add_primitive_monkey_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  %5 = alloca [4 x [4 x float]], align 16
  %6 = alloca float, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #4
  tail call void @WM_operator_view3d_unit_defaults(ptr noundef %0, ptr noundef %1) #3
  %10 = call zeroext i8 @ED_object_add_generic_get_opts(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 89, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef null) #3
  %11 = load i32, ptr %8, align 4, !tbaa !18
  %12 = call fastcc ptr @make_prim_init(ptr noundef %0, ptr noundef nonnull @.str.74, ptr noundef nonnull %6, ptr noundef nonnull %5, ptr noundef nonnull %9, ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %11) #5
  %13 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !20
  %15 = call float @RNA_float_get(ptr noundef %14, ptr noundef nonnull @.str.56) #3
  %16 = load float, ptr %5, align 16, !tbaa !24
  %17 = fmul float %15, %16
  store float %17, ptr %5, align 16, !tbaa !24
  %18 = getelementptr inbounds [4 x [4 x float]], ptr %5, i64 0, i64 1, i64 1
  %19 = load float, ptr %18, align 4, !tbaa !24
  %20 = fmul float %15, %19
  store float %20, ptr %18, align 4, !tbaa !24
  %21 = getelementptr inbounds [4 x [4 x float]], ptr %5, i64 0, i64 2, i64 2
  %22 = load float, ptr %21, align 8, !tbaa !24
  %23 = fmul float %15, %22
  store float %23, ptr %21, align 8, !tbaa !24
  %24 = call ptr @BKE_editmesh_from_object(ptr noundef %12) #3
  %25 = call zeroext i8 (ptr, ptr, ptr, i8, ptr, ...) @EDBM_op_call_and_selectf(ptr noundef %24, ptr noundef %1, ptr noundef nonnull @.str.54, i8 noundef zeroext 0, ptr noundef nonnull @.str.75, ptr noundef nonnull %5) #3
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %2
  %28 = load i8, ptr %9, align 1, !tbaa !22
  %29 = load i8, ptr %7, align 1, !tbaa !22
  %30 = zext i8 %29 to i32
  call fastcc void @make_prim_finish(ptr noundef %0, ptr noundef %12, i8 noundef zeroext %28, i32 noundef %30) #5
  br label %31

31:                                               ; preds = %2, %27
  %32 = phi i32 [ 4, %27 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #4
  ret i32 %32
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MESH_OT_primitive_uv_sphere_add(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str.39, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.40, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.41, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @add_primitive_uvsphere_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_scene_editable, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !17
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !23
  %9 = tail call ptr @RNA_def_int(ptr noundef %8, ptr noundef nonnull @.str.42, i32 noundef 32, i32 noundef 3, i32 noundef 2147483647, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.11, i32 noundef 3, i32 noundef 500) #3
  %10 = load ptr, ptr %7, align 8, !tbaa !23
  %11 = tail call ptr @RNA_def_int(ptr noundef %10, ptr noundef nonnull @.str.44, i32 noundef 16, i32 noundef 3, i32 noundef 2147483647, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.11, i32 noundef 3, i32 noundef 500) #3
  %12 = load ptr, ptr %7, align 8, !tbaa !23
  %13 = tail call ptr @RNA_def_float(ptr noundef %12, ptr noundef nonnull @.str.46, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.11, float noundef 0x3F50624DE0000000, float noundef 1.000000e+02) #3
  tail call void @RNA_def_property_subtype(ptr noundef %13, i32 noundef 65554) #3
  tail call void @ED_object_add_generic_props(ptr noundef nonnull %0, i8 noundef zeroext 1) #3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @add_primitive_uvsphere_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  %5 = alloca [4 x [4 x float]], align 16
  %6 = alloca float, align 4
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #4
  tail call void @WM_operator_view3d_unit_defaults(ptr noundef %0, ptr noundef %1) #3
  %10 = call zeroext i8 @ED_object_add_generic_get_opts(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 90, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %7, ptr noundef nonnull %9, ptr noundef null) #3
  %11 = load i32, ptr %9, align 4, !tbaa !18
  %12 = call fastcc ptr @make_prim_init(ptr noundef %0, ptr noundef nonnull @.str.76, ptr noundef nonnull %6, ptr noundef nonnull %5, ptr noundef nonnull %8, ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %11) #5
  %13 = call ptr @BKE_editmesh_from_object(ptr noundef %12) #3
  %14 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !20
  %16 = call i32 @RNA_int_get(ptr noundef %15, ptr noundef nonnull @.str.42) #3
  %17 = load ptr, ptr %14, align 8, !tbaa !20
  %18 = call i32 @RNA_int_get(ptr noundef %17, ptr noundef nonnull @.str.44) #3
  %19 = load ptr, ptr %14, align 8, !tbaa !20
  %20 = call float @RNA_float_get(ptr noundef %19, ptr noundef nonnull @.str.46) #3
  %21 = fpext float %20 to double
  %22 = call zeroext i8 (ptr, ptr, ptr, i8, ptr, ...) @EDBM_op_call_and_selectf(ptr noundef %13, ptr noundef %1, ptr noundef nonnull @.str.54, i8 noundef zeroext 0, ptr noundef nonnull @.str.77, i32 noundef %16, i32 noundef %18, double noundef %21, ptr noundef nonnull %5) #3
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %2
  %25 = load i8, ptr %8, align 1, !tbaa !22
  %26 = load i8, ptr %7, align 1, !tbaa !22
  %27 = zext i8 %26 to i32
  call fastcc void @make_prim_finish(ptr noundef %0, ptr noundef %12, i8 noundef zeroext %25, i32 noundef %27) #5
  br label %28

28:                                               ; preds = %2, %24
  %29 = phi i32 [ 4, %24 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #4
  ret i32 %29
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MESH_OT_primitive_ico_sphere_add(ptr noundef %0) local_unnamed_addr #0 {
  store ptr @.str.48, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.49, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.50, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @add_primitive_icosphere_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_scene_editable, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !17
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !23
  %9 = tail call ptr @RNA_def_int(ptr noundef %8, ptr noundef nonnull @.str.51, i32 noundef 2, i32 noundef 1, i32 noundef 2147483647, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.11, i32 noundef 1, i32 noundef 8) #3
  %10 = load ptr, ptr %7, align 8, !tbaa !23
  %11 = tail call ptr @RNA_def_float(ptr noundef %10, ptr noundef nonnull @.str.46, float noundef 1.000000e+00, float noundef 0.000000e+00, float noundef 0x47EFFFFFE0000000, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.11, float noundef 0x3F50624DE0000000, float noundef 1.000000e+02) #3
  tail call void @RNA_def_property_subtype(ptr noundef %11, i32 noundef 65554) #3
  tail call void @ED_object_add_generic_props(ptr noundef nonnull %0, i8 noundef zeroext 1) #3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @add_primitive_icosphere_exec(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  %5 = alloca [4 x [4 x float]], align 16
  %6 = alloca float, align 4
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #4
  tail call void @WM_operator_view3d_unit_defaults(ptr noundef %0, ptr noundef %1) #3
  %10 = call zeroext i8 @ED_object_add_generic_get_opts(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 90, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %7, ptr noundef nonnull %9, ptr noundef null) #3
  %11 = load i32, ptr %9, align 4, !tbaa !18
  %12 = call fastcc ptr @make_prim_init(ptr noundef %0, ptr noundef nonnull @.str.78, ptr noundef nonnull %6, ptr noundef nonnull %5, ptr noundef nonnull %8, ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %11) #5
  %13 = call ptr @BKE_editmesh_from_object(ptr noundef %12) #3
  %14 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !20
  %16 = call i32 @RNA_int_get(ptr noundef %15, ptr noundef nonnull @.str.51) #3
  %17 = load ptr, ptr %14, align 8, !tbaa !20
  %18 = call float @RNA_float_get(ptr noundef %17, ptr noundef nonnull @.str.46) #3
  %19 = fpext float %18 to double
  %20 = call zeroext i8 (ptr, ptr, ptr, i8, ptr, ...) @EDBM_op_call_and_selectf(ptr noundef %13, ptr noundef %1, ptr noundef nonnull @.str.54, i8 noundef zeroext 0, ptr noundef nonnull @.str.79, i32 noundef %16, double noundef %19, ptr noundef nonnull %5) #3
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %2
  %23 = load i8, ptr %8, align 1, !tbaa !22
  %24 = load i8, ptr %7, align 1, !tbaa !22
  %25 = zext i8 %24 to i32
  call fastcc void @make_prim_finish(ptr noundef %0, ptr noundef %12, i8 noundef zeroext %23, i32 noundef %25) #5
  br label %26

26:                                               ; preds = %2, %22
  %27 = phi i32 [ 4, %22 ], [ 2, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #4
  ret i32 %27
}

; Function Attrs: optsize
declare void @WM_operator_view3d_unit_defaults(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @ED_object_add_generic_get_opts(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @make_prim_init(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2, ptr noundef %3, ptr nocapture noundef writeonly %4, ptr noundef %5, ptr noundef %6, i32 noundef %7) unnamed_addr #0 {
  %9 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #3
  store i8 0, ptr %4, align 1, !tbaa !22
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.Object, ptr %9, i64 0, i32 3
  %13 = load i16, ptr %12, align 8, !tbaa !26
  %14 = icmp eq i16 %13, 1
  br i1 %14, label %19, label %15

15:                                               ; preds = %11, %8
  %16 = tail call ptr @ED_object_add_type(ptr noundef %0, i32 noundef 1, ptr noundef %5, ptr noundef %6, i8 noundef zeroext 0, i32 noundef %7) #3
  tail call void @rename_id(ptr noundef %16, ptr noundef %1) #3
  %17 = getelementptr inbounds %struct.Object, ptr %16, i64 0, i32 19
  %18 = load ptr, ptr %17, align 8, !tbaa !31
  tail call void @rename_id(ptr noundef %18, ptr noundef %1) #3
  tail call void @ED_object_editmode_enter(ptr noundef %0, i32 noundef 24) #3
  store i8 1, ptr %4, align 1, !tbaa !22
  br label %19

19:                                               ; preds = %15, %11
  %20 = phi ptr [ %16, %15 ], [ %9, %11 ]
  %21 = tail call float @ED_object_new_primitive_matrix(ptr noundef %0, ptr noundef nonnull %20, ptr noundef %5, ptr noundef %6, ptr noundef %3, i8 noundef zeroext 0) #3
  store float %21, ptr %2, align 4, !tbaa !24
  ret ptr %20
}

; Function Attrs: optsize
declare ptr @BKE_editmesh_from_object(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @EDBM_op_call_and_selectf(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: optsize
declare float @RNA_float_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @make_prim_finish(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i32 noundef %3) unnamed_addr #0 {
  %5 = tail call ptr @BKE_editmesh_from_object(ptr noundef %1) #3
  %6 = icmp ne i8 %2, 1
  %7 = icmp ne i32 %3, 0
  %8 = or i1 %6, %7
  tail call void @EDBM_selectmode_flush_ex(ptr noundef %5, i16 noundef signext 1) #3
  %9 = zext i1 %8 to i8
  tail call void @EDBM_update_generic(ptr noundef %5, i8 noundef zeroext %9, i8 noundef zeroext 1) #3
  br i1 %8, label %11, label %10

10:                                               ; preds = %4
  tail call void @ED_object_editmode_exit(ptr noundef %0, i32 noundef 1) #3
  br label %11

11:                                               ; preds = %10, %4
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85393408, ptr noundef %1) #3
  ret void
}

; Function Attrs: optsize
declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @ED_object_add_type(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @rename_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_object_editmode_enter(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare float @ED_object_new_primitive_matrix(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @EDBM_selectmode_flush_ex(ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @EDBM_update_generic(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_object_editmode_exit(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @RNA_enum_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @RNA_int_get(ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind optsize }
attributes #4 = { nounwind }
attributes #5 = { optsize }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"wmOperatorType", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !10, i64 112, !7, i64 128, !7, i64 136, !7, i64 144, !11, i64 152, !12, i64 184}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"ListBase", !7, i64 0, !7, i64 8}
!11 = !{!"ExtensionRNA", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24}
!12 = !{!"short", !8, i64 0}
!13 = !{!6, !7, i64 24}
!14 = !{!6, !7, i64 8}
!15 = !{!6, !7, i64 32}
!16 = !{!6, !7, i64 72}
!17 = !{!6, !12, i64 184}
!18 = !{!19, !19, i64 0}
!19 = !{!"int", !8, i64 0}
!20 = !{!21, !7, i64 112}
!21 = !{!"wmOperator", !7, i64 0, !7, i64 8, !8, i64 16, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !10, i64 128, !7, i64 144, !7, i64 152, !12, i64 160, !8, i64 162}
!22 = !{!8, !8, i64 0}
!23 = !{!6, !7, i64 88}
!24 = !{!25, !25, i64 0}
!25 = !{!"float", !8, i64 0}
!26 = !{!27, !12, i64 136}
!27 = !{!"Object", !28, i64 0, !7, i64 120, !7, i64 128, !12, i64 136, !12, i64 138, !19, i64 140, !19, i64 144, !19, i64 148, !8, i64 152, !7, i64 216, !7, i64 224, !7, i64 232, !7, i64 240, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !7, i64 280, !7, i64 288, !7, i64 296, !7, i64 304, !29, i64 312, !7, i64 360, !10, i64 368, !10, i64 384, !10, i64 400, !10, i64 416, !19, i64 432, !19, i64 436, !7, i64 440, !7, i64 448, !19, i64 456, !19, i64 460, !8, i64 464, !8, i64 476, !8, i64 488, !8, i64 500, !8, i64 512, !8, i64 524, !8, i64 536, !8, i64 548, !8, i64 560, !8, i64 576, !8, i64 592, !8, i64 604, !25, i64 616, !25, i64 620, !8, i64 624, !8, i64 688, !8, i64 752, !8, i64 816, !8, i64 880, !19, i64 944, !12, i64 948, !12, i64 950, !12, i64 952, !12, i64 954, !12, i64 956, !12, i64 958, !12, i64 960, !12, i64 962, !12, i64 964, !8, i64 966, !8, i64 967, !19, i64 968, !19, i64 972, !19, i64 976, !19, i64 980, !19, i64 984, !25, i64 988, !25, i64 992, !25, i64 996, !25, i64 1000, !25, i64 1004, !25, i64 1008, !25, i64 1012, !25, i64 1016, !25, i64 1020, !25, i64 1024, !25, i64 1028, !25, i64 1032, !12, i64 1036, !12, i64 1038, !12, i64 1040, !8, i64 1042, !8, i64 1043, !12, i64 1044, !8, i64 1046, !8, i64 1047, !25, i64 1048, !25, i64 1052, !10, i64 1056, !10, i64 1072, !10, i64 1088, !10, i64 1104, !25, i64 1120, !12, i64 1124, !12, i64 1126, !8, i64 1128, !19, i64 1144, !19, i64 1148, !7, i64 1152, !8, i64 1160, !8, i64 1161, !12, i64 1162, !8, i64 1164, !10, i64 1176, !10, i64 1192, !10, i64 1208, !10, i64 1224, !7, i64 1240, !7, i64 1248, !7, i64 1256, !8, i64 1264, !8, i64 1265, !12, i64 1266, !25, i64 1268, !7, i64 1272, !7, i64 1280, !7, i64 1288, !7, i64 1296, !30, i64 1304, !30, i64 1312, !19, i64 1320, !19, i64 1324, !10, i64 1328, !10, i64 1344, !7, i64 1360, !7, i64 1368, !7, i64 1376, !8, i64 1384, !7, i64 1392, !10, i64 1400, !7, i64 1416}
!28 = !{!"ID", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !8, i64 32, !12, i64 98, !19, i64 100, !19, i64 104, !19, i64 108, !7, i64 112}
!29 = !{!"bAnimVizSettings", !19, i64 0, !19, i64 4, !19, i64 8, !19, i64 12, !12, i64 16, !12, i64 18, !12, i64 20, !12, i64 22, !12, i64 24, !12, i64 26, !12, i64 28, !12, i64 30, !19, i64 32, !19, i64 36, !19, i64 40, !19, i64 44}
!30 = !{!"long", !8, i64 0}
!31 = !{!27, !7, i64 296}

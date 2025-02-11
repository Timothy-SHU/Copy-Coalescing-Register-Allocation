; ModuleID = 'blender/source/blender/editors/mesh/editmesh_path.c'
source_filename = "blender/source/blender/editors/mesh/editmesh_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ListBase = type { ptr, ptr }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.ViewContext = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x i32] }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
%struct.BMEditMesh = type { ptr, ptr, i32, ptr, i32, ptr, ptr, i64, ptr, i32, ptr, i32, i16, i16, ptr, i32 }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.BMIter = type { %union.anon, ptr, ptr, i32, i8 }
%union.anon = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.BMEditSelection = type { ptr, ptr, ptr, i8 }
%struct.LinkNode = type { ptr, ptr }
%struct.UserData = type { ptr, ptr, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
%struct.RenderData = type { %struct.ImageFormatData, ptr, ptr, %struct.QuicktimeCodecSettings, %struct.FFMpegCodecData, i32, i32, i32, float, i32, i32, i32, i32, i16, i16, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i32, i32, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, %struct.rctf, %struct.rctf, %struct.rcti, %struct.ListBase, i16, i16, float, float, float, float, i32, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, i16, i16, float, float, [1024 x i8], i32, i16, i16, [768 x i8], [4 x float], [4 x float], i8, i8, i8, [5 x i8], i32, i16, i16, float, float, i16, i16, float, i16, i16, i32, i16, i16, i16, i16, float, float, ptr, i32, float, [32 x i8], %struct.BakeData, i32, i32 }
%struct.ImageFormatData = type { i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, float, i8, i8, [6 x i8], %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings }
%struct.QuicktimeCodecSettings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32 }
%struct.FFMpegCodecData = type { i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.rctf = type { float, float, float, float }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.BakeData = type { %struct.ImageFormatData, [1024 x i8], i16, i16, i16, i16, float, float, [3 x i8], i8, i8, [3 x i8], [64 x i8] }
%struct.AudioData = type { i32, float, float, float, i32, i16, i16, float, float }
%struct.GameFraming = type { [3 x float], i8, i8, i8, i8 }
%struct.GameData = type { %struct.GameFraming, i16, i16, i16, i16, i16, i16, i16, i16, i16, [3 x i16], %struct.GameDome, i16, i16, float, %struct.RecastData, float, float, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, float, float, float, float, float }
%struct.GameDome = type { i16, i16, i16, i16, float, float, ptr }
%struct.RecastData = type { float, float, float, float, float, float, float, float, float, float, i32, float, float, i16, i16 }
%struct.UnitSettings = type { float, i8, i8, i16 }
%struct.PhysicsSettings = type { [3 x float], i32, i32, i32 }
%struct.ColorManagedViewSettings = type { i32, i32, [64 x i8], [64 x i8], float, float, ptr, ptr }
%struct.ColorManagedDisplaySettings = type { [64 x i8] }
%struct.ColorManagedColorspaceSettings = type { [64 x i8] }
%struct.ToolSettings = type { ptr, ptr, ptr, ptr, float, float, float, i16, i16, i8, i8, i8, i8, float, i16, i8, [5 x i8], %struct.ImagePaintSettings, %struct.ParticleEditSettings, float, float, i16, i16, i8, [1 x i8], i16, float, float, float, float, float, float, float, float, float, float, i16, i8, i8, [3 x i8], i8, ptr, i8, i8, i8, i8, i8, [8 x i8], [8 x i8], i8, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i16, i16, i32, float, float, %struct.UnifiedPaintSettings, %struct.MeshStatVis }
%struct.ImagePaintSettings = type { %struct.Paint, i16, i16, i16, i16, [2 x i16], i32, ptr, ptr, ptr, ptr, [3 x float], float }
%struct.Paint = type { ptr, ptr, ptr, [4 x i8], i32, i32, i32 }
%struct.ParticleEditSettings = type { i16, i16, i16, i16, [7 x %struct.ParticleBrushData], ptr, float, float, i32, i32, i32, i32, ptr, ptr }
%struct.ParticleBrushData = type { i16, i16, i16, i16, i32, float }
%struct.UnifiedPaintSettings = type { i32, float, float, float, [3 x float], [3 x float], i32, [2 x float], float, i32, i32, i8, [7 x i8], float, [2 x float], i32, float, [2 x float], [2 x float], i32, ptr, float, i32 }
%struct.MeshStatVis = type { i8, [2 x i8], i8, float, float, float, float, i8, [3 x i8], float, float, float, float }
%struct.Mesh = type { %struct.ID, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], i32, i16, i16, float, i32, i8, i8, i8, i8, i8, i8, i16, ptr }

@.str = private unnamed_addr constant [19 x i8] c"Pick Shortest Path\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"MESH_OT_shortest_path_pick\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"Select shortest path between two selections\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"extend\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"Extend\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"Extend the selection\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"Select Shortest Path\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"MESH_OT_shortest_path_select\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"Selected vertex path between two vertices\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"use_length\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"Length\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"Use length when measuring distance\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"Path can't be found\00", align 1
@.str.13 = private unnamed_addr constant [61 x i8] c"Path selection requires two matching elements to be selected\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MESH_OT_shortest_path_pick(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.1, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.2, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @edbm_shortest_path_pick_invoke, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh_region_view3d, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !17
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !18
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.3, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @edbm_shortest_path_pick_invoke(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.ViewContext, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #6
  call void @em_setup_viewcontext(ptr noundef %0, ptr noundef nonnull %4) #5
  %5 = getelementptr inbounds %struct.ViewContext, ptr %4, i64 0, i32 7
  %6 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  call fastcc void @copy_v2_v2_int(ptr noundef nonnull %5, ptr noundef nonnull %6) #7
  %7 = getelementptr inbounds %struct.ViewContext, ptr %4, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !19
  %9 = load ptr, ptr %8, align 8, !tbaa !21
  %10 = call ptr @BM_mesh_active_elem_get(ptr noundef %9) #5
  %11 = icmp eq ptr %10, null
  br i1 %11, label %47, label %12

12:                                               ; preds = %3
  call void @view3d_operator_needs_opengl(ptr noundef %0) #5
  %13 = getelementptr inbounds %struct.BMEditMesh, ptr %8, i64 0, i32 12
  %14 = load i16, ptr %13, align 4, !tbaa !25
  %15 = and i16 %14, 1
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.BMHeader, ptr %10, i64 0, i32 2
  %19 = load i8, ptr %18, align 4, !tbaa !26
  %20 = icmp eq i8 %19, 1
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = call fastcc zeroext i8 @mouse_mesh_shortest_path_vert(ptr noundef nonnull %4) #7, !range !29
  %23 = icmp eq i8 %22, 0
  %24 = select i1 %23, i32 8, i32 4
  br label %47

25:                                               ; preds = %17, %12
  %26 = and i16 %14, 2
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.BMHeader, ptr %10, i64 0, i32 2
  %30 = load i8, ptr %29, align 4, !tbaa !26
  %31 = icmp eq i8 %30, 2
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = call fastcc zeroext i8 @mouse_mesh_shortest_path_edge(ptr noundef nonnull %4) #7, !range !29
  %34 = icmp eq i8 %33, 0
  %35 = select i1 %34, i32 8, i32 4
  br label %47

36:                                               ; preds = %28, %25
  %37 = and i16 %14, 4
  %38 = icmp eq i16 %37, 0
  br i1 %38, label %47, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.BMHeader, ptr %10, i64 0, i32 2
  %41 = load i8, ptr %40, align 4, !tbaa !26
  %42 = icmp eq i8 %41, 8
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = call fastcc zeroext i8 @mouse_mesh_shortest_path_face(ptr noundef nonnull %4) #7, !range !29
  %45 = icmp eq i8 %44, 0
  %46 = select i1 %45, i32 8, i32 4
  br label %47

47:                                               ; preds = %36, %39, %43, %32, %21, %3
  %48 = phi i32 [ 8, %3 ], [ %24, %21 ], [ %35, %32 ], [ %46, %43 ], [ 8, %39 ], [ 8, %36 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #6
  ret i32 %48
}

; Function Attrs: optsize
declare i32 @ED_operator_editmesh_region_view3d(ptr noundef) #1

; Function Attrs: optsize
declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @MESH_OT_shortest_path_select(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.6, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.7, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.8, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edbm_shortest_path_select_exec, ptr %4, align 8, !tbaa !30
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !17
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !18
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.9, i32 noundef 1, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11) #5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @edbm_shortest_path_select_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #5
  %5 = tail call ptr @BKE_editmesh_from_object(ptr noundef %4) #5
  %6 = load ptr, ptr %5, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #6
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !31
  %9 = tail call i32 @RNA_boolean_get(ptr noundef %8, ptr noundef nonnull @.str.9) #5
  %10 = trunc i32 %9 to i8
  %11 = getelementptr inbounds %struct.BMesh, ptr %6, i64 0, i32 32, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !33
  %13 = icmp eq ptr %12, null
  br i1 %13, label %29, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.BMEditSelection, ptr %12, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !36
  %17 = icmp eq ptr %16, null
  br i1 %17, label %29, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.BMEditSelection, ptr %12, i64 0, i32 3
  %20 = load i8, ptr %19, align 8, !tbaa !38
  %21 = getelementptr inbounds %struct.BMEditSelection, ptr %16, i64 0, i32 3
  %22 = load i8, ptr %21, align 8, !tbaa !38
  %23 = icmp eq i8 %20, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.BMEditSelection, ptr %12, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !39
  %27 = getelementptr inbounds %struct.BMEditSelection, ptr %16, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !39
  br label %116

29:                                               ; preds = %18, %14, %2
  %30 = getelementptr inbounds %struct.BMEditMesh, ptr %5, i64 0, i32 12
  %31 = load i16, ptr %30, align 4, !tbaa !25
  %32 = and i16 %31, 1
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %60, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.BMesh, ptr %6, i64 0, i32 4
  %36 = load i32, ptr %35, align 8, !tbaa !40
  %37 = icmp sgt i32 %36, 1
  br i1 %37, label %38, label %60

38:                                               ; preds = %34
  %39 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef nonnull %6, i8 noundef zeroext 1) #7
  %40 = icmp eq ptr %39, null
  br i1 %40, label %58, label %41

41:                                               ; preds = %38, %51
  %42 = phi ptr [ %54, %51 ], [ %39, %38 ]
  %43 = phi ptr [ %53, %51 ], [ null, %38 ]
  %44 = phi ptr [ %52, %51 ], [ null, %38 ]
  %45 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %42, i8 noundef zeroext 1) #7, !range !41
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %41
  %48 = icmp eq ptr %44, null
  br i1 %48, label %51, label %49

49:                                               ; preds = %47
  %50 = icmp eq ptr %43, null
  br i1 %50, label %51, label %116

51:                                               ; preds = %49, %47, %41
  %52 = phi ptr [ %44, %41 ], [ %42, %47 ], [ %44, %49 ]
  %53 = phi ptr [ %43, %41 ], [ %43, %47 ], [ %42, %49 ]
  %54 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #7
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %41, !llvm.loop !42

56:                                               ; preds = %51
  %57 = icmp eq ptr %53, null
  br i1 %57, label %58, label %116

58:                                               ; preds = %38, %56
  %59 = load i16, ptr %30, align 4, !tbaa !25
  br label %60

60:                                               ; preds = %58, %29, %34
  %61 = phi i16 [ %59, %58 ], [ %31, %29 ], [ %31, %34 ]
  %62 = and i16 %61, 2
  %63 = icmp eq i16 %62, 0
  br i1 %63, label %90, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.BMesh, ptr %6, i64 0, i32 5
  %66 = load i32, ptr %65, align 4, !tbaa !44
  %67 = icmp sgt i32 %66, 1
  br i1 %67, label %68, label %90

68:                                               ; preds = %64
  %69 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef nonnull %6, i8 noundef zeroext 2) #7
  %70 = icmp eq ptr %69, null
  br i1 %70, label %88, label %71

71:                                               ; preds = %68, %81
  %72 = phi ptr [ %84, %81 ], [ %69, %68 ]
  %73 = phi ptr [ %83, %81 ], [ null, %68 ]
  %74 = phi ptr [ %82, %81 ], [ null, %68 ]
  %75 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %72, i8 noundef zeroext 1) #7, !range !41
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %71
  %78 = icmp eq ptr %74, null
  br i1 %78, label %81, label %79

79:                                               ; preds = %77
  %80 = icmp eq ptr %73, null
  br i1 %80, label %81, label %116

81:                                               ; preds = %79, %77, %71
  %82 = phi ptr [ %74, %71 ], [ %72, %77 ], [ %74, %79 ]
  %83 = phi ptr [ %73, %71 ], [ %73, %77 ], [ %72, %79 ]
  %84 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #7
  %85 = icmp eq ptr %84, null
  br i1 %85, label %86, label %71, !llvm.loop !45

86:                                               ; preds = %81
  %87 = icmp eq ptr %83, null
  br i1 %87, label %88, label %116

88:                                               ; preds = %68, %86
  %89 = load i16, ptr %30, align 4, !tbaa !25
  br label %90

90:                                               ; preds = %88, %60, %64
  %91 = phi i16 [ %89, %88 ], [ %61, %60 ], [ %61, %64 ]
  %92 = and i16 %91, 4
  %93 = icmp eq i16 %92, 0
  br i1 %93, label %144, label %94

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.BMesh, ptr %6, i64 0, i32 6
  %96 = load i32, ptr %95, align 8, !tbaa !46
  %97 = icmp sgt i32 %96, 1
  br i1 %97, label %98, label %144

98:                                               ; preds = %94
  %99 = call fastcc ptr @BM_iter_new(ptr noundef nonnull %3, ptr noundef nonnull %6, i8 noundef zeroext 3) #7
  %100 = icmp eq ptr %99, null
  br i1 %100, label %144, label %101

101:                                              ; preds = %98, %111
  %102 = phi ptr [ %114, %111 ], [ %99, %98 ]
  %103 = phi ptr [ %113, %111 ], [ null, %98 ]
  %104 = phi ptr [ %112, %111 ], [ null, %98 ]
  %105 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %102, i8 noundef zeroext 1) #7, !range !41
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %111, label %107

107:                                              ; preds = %101
  %108 = icmp eq ptr %104, null
  br i1 %108, label %111, label %109

109:                                              ; preds = %107
  %110 = icmp eq ptr %103, null
  br i1 %110, label %111, label %116

111:                                              ; preds = %109, %107, %101
  %112 = phi ptr [ %104, %101 ], [ %102, %107 ], [ %104, %109 ]
  %113 = phi ptr [ %103, %101 ], [ %103, %107 ], [ %102, %109 ]
  %114 = call fastcc ptr @BM_iter_step(ptr noundef nonnull %3) #7
  %115 = icmp eq ptr %114, null
  br i1 %115, label %116, label %101, !llvm.loop !47

116:                                              ; preds = %49, %79, %111, %109, %56, %86, %24
  %117 = phi ptr [ %26, %24 ], [ %82, %86 ], [ %52, %56 ], [ %112, %111 ], [ %104, %109 ], [ %74, %79 ], [ %44, %49 ]
  %118 = phi ptr [ %28, %24 ], [ %83, %86 ], [ %53, %56 ], [ %113, %111 ], [ %103, %109 ], [ %73, %79 ], [ %43, %49 ]
  %119 = icmp ne ptr %117, null
  %120 = icmp ne ptr %118, null
  %121 = select i1 %119, i1 %120, i1 false
  br i1 %121, label %122, label %144

122:                                              ; preds = %116
  %123 = getelementptr inbounds %struct.BMHeader, ptr %117, i64 0, i32 2
  %124 = load i8, ptr %123, align 4, !tbaa !26
  switch i8 %124, label %141 [
    i8 1, label %125
    i8 2, label %127
    i8 8, label %129
  ]

125:                                              ; preds = %122
  %126 = call ptr @BM_mesh_calc_path_vert(ptr noundef %6, ptr noundef nonnull %117, ptr noundef nonnull %118, i8 noundef zeroext %10, ptr noundef null, ptr noundef nonnull @ele_filter_visible_cb) #5
  br label %131

127:                                              ; preds = %122
  %128 = call ptr @BM_mesh_calc_path_edge(ptr noundef %6, ptr noundef nonnull %117, ptr noundef nonnull %118, i8 noundef zeroext %10, ptr noundef null, ptr noundef nonnull @ele_filter_visible_cb) #5
  br label %131

129:                                              ; preds = %122
  %130 = call ptr @BM_mesh_calc_path_face(ptr noundef %6, ptr noundef nonnull %117, ptr noundef nonnull %118, i8 noundef zeroext %10, ptr noundef null, ptr noundef nonnull @ele_filter_visible_cb) #5
  br label %131

131:                                              ; preds = %129, %127, %125
  %132 = phi ptr [ %130, %129 ], [ %128, %127 ], [ %126, %125 ]
  %133 = icmp eq ptr %132, null
  br i1 %133, label %141, label %134

134:                                              ; preds = %131, %134
  %135 = phi ptr [ %138, %134 ], [ %132, %131 ]
  %136 = getelementptr inbounds %struct.LinkNode, ptr %135, i64 0, i32 1
  %137 = load ptr, ptr %136, align 8, !tbaa !48
  call void @BM_elem_select_set(ptr noundef %6, ptr noundef %137, i8 noundef zeroext 1) #5
  %138 = load ptr, ptr %135, align 8, !tbaa !50
  %139 = icmp eq ptr %138, null
  br i1 %139, label %140, label %134, !llvm.loop !51

140:                                              ; preds = %134
  call void @BLI_linklist_free(ptr noundef nonnull %132, ptr noundef null) #5
  call void @EDBM_selectmode_flush(ptr noundef nonnull %5) #5
  call void @EDBM_update_generic(ptr noundef nonnull %5, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  br label %147

141:                                              ; preds = %122, %131
  %142 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %143 = load ptr, ptr %142, align 8, !tbaa !52
  call void @BKE_report(ptr noundef %143, i32 noundef 16, ptr noundef nonnull @.str.12) #5
  br label %147

144:                                              ; preds = %98, %90, %94, %116
  %145 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %146 = load ptr, ptr %145, align 8, !tbaa !52
  call void @BKE_report(ptr noundef %146, i32 noundef 16, ptr noundef nonnull @.str.13) #5
  br label %147

147:                                              ; preds = %141, %140, %144
  %148 = phi i32 [ 2, %144 ], [ 4, %140 ], [ 2, %141 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #6
  ret i32 %148
}

; Function Attrs: optsize
declare i32 @ED_operator_editmesh(ptr noundef) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare void @em_setup_viewcontext(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v2_v2_int(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 {
  %3 = load i32, ptr %1, align 4, !tbaa !53
  store i32 %3, ptr %0, align 4, !tbaa !53
  %4 = getelementptr inbounds i32, ptr %1, i64 1
  %5 = load i32, ptr %4, align 4, !tbaa !53
  %6 = getelementptr inbounds i32, ptr %0, i64 1
  store i32 %5, ptr %6, align 4, !tbaa !53
  ret void
}

; Function Attrs: optsize
declare ptr @BM_mesh_active_elem_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @view3d_operator_needs_opengl(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @mouse_mesh_shortest_path_vert(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca float, align 4
  %3 = alloca %struct.UserData, align 8
  %4 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !19
  %6 = load ptr, ptr %5, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  %7 = tail call float @ED_view3d_select_dist_px() #5
  store float %7, ptr %2, align 4, !tbaa !54
  %8 = call ptr @EDBM_vert_find_nearest(ptr noundef %0, ptr noundef nonnull %2, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %9 = icmp eq ptr %8, null
  br i1 %9, label %55, label %10

10:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #6
  store ptr %6, ptr %3, align 8, !tbaa !56
  %11 = getelementptr inbounds %struct.UserData, ptr %3, i64 0, i32 1
  %12 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !58
  %14 = getelementptr inbounds %struct.Object, ptr %13, i64 0, i32 19
  %15 = load ptr, ptr %14, align 8, !tbaa !59
  store ptr %15, ptr %11, align 8, !tbaa !63
  %16 = getelementptr inbounds %struct.UserData, ptr %3, i64 0, i32 2
  %17 = load ptr, ptr %0, align 8, !tbaa !64
  store ptr %17, ptr %16, align 8, !tbaa !65
  %18 = call ptr @BM_mesh_active_vert_get(ptr noundef %6) #5
  %19 = icmp eq ptr %18, null
  %20 = icmp eq ptr %18, %8
  %21 = or i1 %19, %20
  br i1 %21, label %45, label %22

22:                                               ; preds = %10
  %23 = call ptr @BM_mesh_calc_path_vert(ptr noundef %6, ptr noundef nonnull %18, ptr noundef nonnull %8, i8 noundef zeroext 1, ptr noundef nonnull %3, ptr noundef nonnull @verttag_filter_cb) #5
  %24 = icmp eq ptr %23, null
  br i1 %24, label %45, label %25

25:                                               ; preds = %22
  %26 = call zeroext i8 @_bm_select_history_remove(ptr noundef %6, ptr noundef nonnull %18) #5
  br label %27

27:                                               ; preds = %25, %33
  %28 = phi ptr [ %34, %33 ], [ %23, %25 ]
  %29 = getelementptr inbounds %struct.LinkNode, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !48
  %31 = call fastcc zeroext i8 @verttag_test_cb(ptr noundef %30) #7
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %27
  %34 = load ptr, ptr %28, align 8, !tbaa !50
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %27, !llvm.loop !66

36:                                               ; preds = %27, %33
  %37 = phi i8 [ 1, %27 ], [ 0, %33 ]
  br label %38

38:                                               ; preds = %38, %36
  %39 = phi ptr [ %23, %36 ], [ %42, %38 ]
  %40 = getelementptr inbounds %struct.LinkNode, ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !48
  call fastcc void @verttag_set_cb(ptr noundef %41, i8 noundef zeroext %37, ptr noundef nonnull %3) #7
  %42 = load ptr, ptr %39, align 8, !tbaa !50
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %38, !llvm.loop !67

44:                                               ; preds = %38
  call void @BLI_linklist_free(ptr noundef nonnull %23, ptr noundef null) #5
  br label %48

45:                                               ; preds = %22, %10
  %46 = call fastcc zeroext i8 @verttag_test_cb(ptr noundef nonnull %8) #7
  %47 = xor i8 %46, 1
  call fastcc void @verttag_set_cb(ptr noundef nonnull %8, i8 noundef zeroext %47, ptr noundef nonnull %3) #7
  br label %48

48:                                               ; preds = %45, %44
  call void @EDBM_selectmode_flush(ptr noundef nonnull %5) #5
  %49 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %8, i8 noundef zeroext 1) #7, !range !41
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = call zeroext i8 @_bm_select_history_remove(ptr noundef %6, ptr noundef nonnull %8) #5
  br label %54

53:                                               ; preds = %48
  call void @_bm_select_history_store(ptr noundef %6, ptr noundef nonnull %8) #5
  br label %54

54:                                               ; preds = %53, %51
  call void @EDBM_update_generic(ptr noundef nonnull %5, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #6
  br label %55

55:                                               ; preds = %1, %54
  %56 = phi i8 [ 1, %54 ], [ 0, %1 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  ret i8 %56
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @mouse_mesh_shortest_path_edge(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca float, align 4
  %3 = alloca %struct.UserData, align 8
  %4 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !19
  %6 = load ptr, ptr %5, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  %7 = tail call float @ED_view3d_select_dist_px() #5
  store float %7, ptr %2, align 4, !tbaa !54
  %8 = call ptr @EDBM_edge_find_nearest(ptr noundef %0, ptr noundef nonnull %2) #5
  %9 = icmp eq ptr %8, null
  br i1 %9, label %91, label %10

10:                                               ; preds = %1
  %11 = load ptr, ptr %0, align 8, !tbaa !64
  %12 = getelementptr inbounds %struct.Scene, ptr %11, i64 0, i32 20
  %13 = load ptr, ptr %12, align 8, !tbaa !68
  %14 = getelementptr inbounds %struct.ToolSettings, ptr %13, i64 0, i32 49
  %15 = load i8, ptr %14, align 1, !tbaa !87
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #6
  store ptr %6, ptr %3, align 8, !tbaa !56
  %16 = getelementptr inbounds %struct.UserData, ptr %3, i64 0, i32 1
  %17 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !58
  %19 = getelementptr inbounds %struct.Object, ptr %18, i64 0, i32 19
  %20 = load ptr, ptr %19, align 8, !tbaa !59
  store ptr %20, ptr %16, align 8, !tbaa !63
  %21 = getelementptr inbounds %struct.UserData, ptr %3, i64 0, i32 2
  store ptr %11, ptr %21, align 8, !tbaa !65
  %22 = call ptr @BM_mesh_active_edge_get(ptr noundef %6) #5
  %23 = load ptr, ptr %0, align 8, !tbaa !64
  %24 = getelementptr inbounds %struct.BMEditMesh, ptr %5, i64 0, i32 14
  %25 = load ptr, ptr %24, align 8, !tbaa !94
  %26 = getelementptr inbounds %struct.Object, ptr %25, i64 0, i32 19
  %27 = load ptr, ptr %26, align 8, !tbaa !59
  call fastcc void @edgetag_ensure_cd_flag(ptr noundef %23, ptr noundef %27) #7
  %28 = icmp eq ptr %22, null
  %29 = icmp eq ptr %22, %8
  %30 = or i1 %28, %29
  br i1 %30, label %54, label %31

31:                                               ; preds = %10
  %32 = call ptr @BM_mesh_calc_path_edge(ptr noundef %6, ptr noundef nonnull %22, ptr noundef nonnull %8, i8 noundef zeroext 1, ptr noundef nonnull %3, ptr noundef nonnull @edgetag_filter_cb) #5
  %33 = icmp eq ptr %32, null
  br i1 %33, label %54, label %34

34:                                               ; preds = %31
  %35 = call zeroext i8 @_bm_select_history_remove(ptr noundef %6, ptr noundef nonnull %22) #5
  br label %36

36:                                               ; preds = %34, %42
  %37 = phi ptr [ %43, %42 ], [ %32, %34 ]
  %38 = getelementptr inbounds %struct.LinkNode, ptr %37, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !48
  %40 = call fastcc zeroext i8 @edgetag_test_cb(ptr noundef %39, ptr noundef nonnull %3) #7, !range !29
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %36
  %43 = load ptr, ptr %37, align 8, !tbaa !50
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %36, !llvm.loop !95

45:                                               ; preds = %36, %42
  %46 = phi i8 [ 1, %36 ], [ 0, %42 ]
  br label %47

47:                                               ; preds = %47, %45
  %48 = phi ptr [ %32, %45 ], [ %51, %47 ]
  %49 = getelementptr inbounds %struct.LinkNode, ptr %48, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !48
  call fastcc void @edgetag_set_cb(ptr noundef %50, i8 noundef zeroext %46, ptr noundef nonnull %3) #7
  %51 = load ptr, ptr %48, align 8, !tbaa !50
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %47, !llvm.loop !96

53:                                               ; preds = %47
  call void @BLI_linklist_free(ptr noundef nonnull %32, ptr noundef null) #5
  br label %61

54:                                               ; preds = %31, %10
  %55 = call fastcc zeroext i8 @edgetag_test_cb(ptr noundef nonnull %8, ptr noundef nonnull %3) #7, !range !29
  %56 = xor i8 %55, 1
  %57 = load ptr, ptr %0, align 8, !tbaa !64
  %58 = load ptr, ptr %17, align 8, !tbaa !58
  %59 = getelementptr inbounds %struct.Object, ptr %58, i64 0, i32 19
  %60 = load ptr, ptr %59, align 8, !tbaa !59
  call fastcc void @edgetag_ensure_cd_flag(ptr noundef %57, ptr noundef %60) #7
  call fastcc void @edgetag_set_cb(ptr noundef nonnull %8, i8 noundef zeroext %56, ptr noundef nonnull %3) #7
  br label %61

61:                                               ; preds = %54, %53
  %62 = icmp eq i8 %15, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %61
  call void @EDBM_selectmode_flush(ptr noundef nonnull %5) #5
  %64 = call fastcc zeroext i8 @edgetag_test_cb(ptr noundef nonnull %8, ptr noundef nonnull %3) #7, !range !29
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %69, label %71

66:                                               ; preds = %61
  br i1 %28, label %68, label %67

67:                                               ; preds = %66
  call void @BM_edge_select_set(ptr noundef %6, ptr noundef nonnull %22, i8 noundef zeroext 0) #5
  br label %68

68:                                               ; preds = %66, %67
  call void @BM_edge_select_set(ptr noundef %6, ptr noundef nonnull %8, i8 noundef zeroext 1) #5
  call void @_bm_select_history_store(ptr noundef %6, ptr noundef nonnull %8) #5
  call void @EDBM_selectmode_flush(ptr noundef nonnull %5) #5
  switch i8 %15, label %90 [
    i8 4, label %86
    i8 1, label %72
    i8 2, label %78
    i8 3, label %82
  ]

69:                                               ; preds = %63
  %70 = call zeroext i8 @_bm_select_history_remove(ptr noundef %6, ptr noundef nonnull %8) #5
  br label %90

71:                                               ; preds = %63
  call void @_bm_select_history_store(ptr noundef %6, ptr noundef nonnull %8) #5
  br label %90

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.Mesh, ptr %20, i64 0, i32 36
  %74 = load i32, ptr %73, align 8, !tbaa !97
  %75 = or i32 %74, 128
  store i32 %75, ptr %73, align 8, !tbaa !97
  %76 = load ptr, ptr %0, align 8, !tbaa !64
  %77 = load ptr, ptr %17, align 8, !tbaa !58
  call void @ED_uvedit_live_unwrap(ptr noundef %76, ptr noundef %77) #5
  br label %90

78:                                               ; preds = %68
  %79 = getelementptr inbounds %struct.Mesh, ptr %20, i64 0, i32 36
  %80 = load i32, ptr %79, align 8, !tbaa !97
  %81 = or i32 %80, 256
  store i32 %81, ptr %79, align 8, !tbaa !97
  br label %90

82:                                               ; preds = %68
  %83 = getelementptr inbounds %struct.Mesh, ptr %20, i64 0, i32 36
  %84 = load i32, ptr %83, align 8, !tbaa !97
  %85 = or i32 %84, 64
  store i32 %85, ptr %83, align 8, !tbaa !97
  br label %90

86:                                               ; preds = %68
  %87 = getelementptr inbounds %struct.Mesh, ptr %20, i64 0, i32 36
  %88 = load i32, ptr %87, align 8, !tbaa !97
  %89 = or i32 %88, 512
  store i32 %89, ptr %87, align 8, !tbaa !97
  br label %90

90:                                               ; preds = %71, %69, %68, %86, %82, %78, %72
  call void @EDBM_update_generic(ptr noundef nonnull %5, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #6
  br label %91

91:                                               ; preds = %1, %90
  %92 = phi i8 [ 1, %90 ], [ 0, %1 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  ret i8 %92
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @mouse_mesh_shortest_path_face(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca float, align 4
  %3 = alloca %struct.UserData, align 8
  %4 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !19
  %6 = load ptr, ptr %5, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  %7 = tail call float @ED_view3d_select_dist_px() #5
  store float %7, ptr %2, align 4, !tbaa !54
  %8 = call ptr @EDBM_face_find_nearest(ptr noundef %0, ptr noundef nonnull %2) #5
  %9 = icmp eq ptr %8, null
  br i1 %9, label %55, label %10

10:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #6
  store ptr %6, ptr %3, align 8, !tbaa !56
  %11 = getelementptr inbounds %struct.UserData, ptr %3, i64 0, i32 1
  %12 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !58
  %14 = getelementptr inbounds %struct.Object, ptr %13, i64 0, i32 19
  %15 = load ptr, ptr %14, align 8, !tbaa !59
  store ptr %15, ptr %11, align 8, !tbaa !63
  %16 = getelementptr inbounds %struct.UserData, ptr %3, i64 0, i32 2
  %17 = load ptr, ptr %0, align 8, !tbaa !64
  store ptr %17, ptr %16, align 8, !tbaa !65
  %18 = call ptr @BM_mesh_active_face_get(ptr noundef %6, i8 noundef zeroext 0, i8 noundef zeroext 1) #5
  %19 = icmp eq ptr %18, null
  %20 = icmp eq ptr %18, %8
  %21 = or i1 %19, %20
  br i1 %21, label %45, label %22

22:                                               ; preds = %10
  %23 = call ptr @BM_mesh_calc_path_face(ptr noundef %6, ptr noundef nonnull %18, ptr noundef nonnull %8, i8 noundef zeroext 1, ptr noundef nonnull %3, ptr noundef nonnull @facetag_filter_cb) #5
  %24 = icmp eq ptr %23, null
  br i1 %24, label %45, label %25

25:                                               ; preds = %22
  %26 = call zeroext i8 @_bm_select_history_remove(ptr noundef %6, ptr noundef nonnull %18) #5
  br label %27

27:                                               ; preds = %25, %33
  %28 = phi ptr [ %34, %33 ], [ %23, %25 ]
  %29 = getelementptr inbounds %struct.LinkNode, ptr %28, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !48
  %31 = call fastcc zeroext i8 @facetag_test_cb(ptr noundef %30) #7
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %27
  %34 = load ptr, ptr %28, align 8, !tbaa !50
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %27, !llvm.loop !99

36:                                               ; preds = %27, %33
  %37 = phi i8 [ 1, %27 ], [ 0, %33 ]
  br label %38

38:                                               ; preds = %38, %36
  %39 = phi ptr [ %23, %36 ], [ %42, %38 ]
  %40 = getelementptr inbounds %struct.LinkNode, ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !48
  call fastcc void @facetag_set_cb(ptr noundef %41, i8 noundef zeroext %37, ptr noundef nonnull %3) #7
  %42 = load ptr, ptr %39, align 8, !tbaa !50
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %38, !llvm.loop !100

44:                                               ; preds = %38
  call void @BLI_linklist_free(ptr noundef nonnull %23, ptr noundef null) #5
  br label %48

45:                                               ; preds = %22, %10
  %46 = call fastcc zeroext i8 @facetag_test_cb(ptr noundef nonnull %8) #7
  %47 = xor i8 %46, 1
  call fastcc void @facetag_set_cb(ptr noundef nonnull %8, i8 noundef zeroext %47, ptr noundef nonnull %3) #7
  br label %48

48:                                               ; preds = %45, %44
  call void @EDBM_selectmode_flush(ptr noundef nonnull %5) #5
  %49 = call fastcc zeroext i8 @facetag_test_cb(ptr noundef nonnull %8) #7
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = call zeroext i8 @_bm_select_history_remove(ptr noundef %6, ptr noundef nonnull %8) #5
  br label %54

53:                                               ; preds = %48
  call void @_bm_select_history_store(ptr noundef %6, ptr noundef nonnull %8) #5
  br label %54

54:                                               ; preds = %53, %51
  call void @BM_mesh_active_face_set(ptr noundef %6, ptr noundef nonnull %8) #5
  call void @EDBM_update_generic(ptr noundef nonnull %5, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #6
  br label %55

55:                                               ; preds = %1, %54
  %56 = phi i8 [ 1, %54 ], [ 0, %1 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  ret i8 %56
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: optsize
declare float @ED_view3d_select_dist_px() local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @EDBM_vert_find_nearest(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BM_mesh_active_vert_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BM_mesh_calc_path_vert(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal zeroext i8 @verttag_filter_cb(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #4 {
  %3 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %0, i8 noundef zeroext 2) #7, !range !41
  %4 = icmp eq i8 %3, 0
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: optsize
declare zeroext i8 @_bm_select_history_remove(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @verttag_test_cb(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = tail call fastcc zeroext i8 @_bm_elem_flag_test_bool(ptr noundef %0) #7
  ret i8 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @verttag_set_cb(ptr noundef %0, i8 noundef zeroext %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = load ptr, ptr %2, align 8, !tbaa !56
  tail call void @BM_vert_select_set(ptr noundef %4, ptr noundef %0, i8 noundef zeroext %1) #5
  ret void
}

; Function Attrs: optsize
declare void @BLI_linklist_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @EDBM_selectmode_flush(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @_bm_elem_flag_test(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %4 = load i8, ptr %3, align 1, !tbaa !101
  %5 = and i8 %4, %1
  ret i8 %5
}

; Function Attrs: optsize
declare void @_bm_select_history_store(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @EDBM_update_generic(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @_bm_elem_flag_test_bool(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !101
  %4 = and i8 %3, 1
  ret i8 %4
}

; Function Attrs: optsize
declare void @BM_vert_select_set(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @EDBM_edge_find_nearest(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BM_mesh_active_edge_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @edgetag_ensure_cd_flag(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 20
  %4 = load ptr, ptr %3, align 8, !tbaa !102
  %5 = load ptr, ptr %4, align 8, !tbaa !21
  %6 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 20
  %7 = load ptr, ptr %6, align 8, !tbaa !68
  %8 = getelementptr inbounds %struct.ToolSettings, ptr %7, i64 0, i32 49
  %9 = load i8, ptr %8, align 1, !tbaa !87
  switch i8 %9, label %13 [
    i8 3, label %11
    i8 4, label %10
  ]

10:                                               ; preds = %2
  br label %11

11:                                               ; preds = %2, %10
  %12 = phi i8 [ 2, %10 ], [ 4, %2 ]
  tail call void @BM_mesh_cd_flag_ensure(ptr noundef %5, ptr noundef nonnull %1, i8 noundef zeroext %12) #5
  br label %13

13:                                               ; preds = %11, %2
  ret void
}

; Function Attrs: optsize
declare ptr @BM_mesh_calc_path_edge(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal zeroext i8 @edgetag_filter_cb(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #4 {
  %3 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %0, i8 noundef zeroext 2) #7, !range !41
  %4 = icmp eq i8 %3, 0
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @edgetag_test_cb(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.UserData, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !65
  %5 = load ptr, ptr %1, align 8, !tbaa !56
  %6 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 20
  %7 = load ptr, ptr %6, align 8, !tbaa !68
  %8 = getelementptr inbounds %struct.ToolSettings, ptr %7, i64 0, i32 49
  %9 = load i8, ptr %8, align 1, !tbaa !87
  switch i8 %9, label %27 [
    i8 0, label %10
    i8 1, label %13
    i8 2, label %16
    i8 3, label %19
    i8 4, label %23
  ]

10:                                               ; preds = %2
  %11 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %0, i8 noundef zeroext 1) #7, !range !41
  %12 = icmp ne i8 %11, 0
  br label %27

13:                                               ; preds = %2
  %14 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %0, i8 noundef zeroext 4) #7, !range !41
  %15 = icmp ne i8 %14, 0
  br label %27

16:                                               ; preds = %2
  %17 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %0, i8 noundef zeroext 8) #7, !range !41
  %18 = icmp eq i8 %17, 0
  br label %27

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.BMesh, ptr %5, i64 0, i32 25
  %21 = tail call float @BM_elem_float_data_get(ptr noundef nonnull %20, ptr noundef %0, i32 noundef 30) #5
  %22 = fcmp une float %21, 0.000000e+00
  br label %27

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.BMesh, ptr %5, i64 0, i32 25
  %25 = tail call float @BM_elem_float_data_get(ptr noundef nonnull %24, ptr noundef %0, i32 noundef 29) #5
  %26 = fcmp une float %25, 0.000000e+00
  br label %27

27:                                               ; preds = %2, %23, %19, %16, %13, %10
  %28 = phi i1 [ %26, %23 ], [ %22, %19 ], [ %18, %16 ], [ %15, %13 ], [ %12, %10 ], [ false, %2 ]
  %29 = zext i1 %28 to i8
  ret i8 %29
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @edgetag_set_cb(ptr noundef %0, i8 noundef zeroext %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.UserData, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !65
  %6 = load ptr, ptr %2, align 8, !tbaa !56
  %7 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 20
  %8 = load ptr, ptr %7, align 8, !tbaa !68
  %9 = getelementptr inbounds %struct.ToolSettings, ptr %8, i64 0, i32 49
  %10 = load i8, ptr %9, align 1, !tbaa !87
  switch i8 %10, label %25 [
    i8 0, label %11
    i8 1, label %12
    i8 2, label %14
    i8 3, label %17
    i8 4, label %21
  ]

11:                                               ; preds = %3
  tail call void @BM_edge_select_set(ptr noundef %6, ptr noundef %0, i8 noundef zeroext %1) #5
  br label %25

12:                                               ; preds = %3
  %13 = zext nneg i8 %1 to i32
  tail call fastcc void @_bm_elem_flag_set(ptr noundef %0, i8 noundef zeroext 4, i32 noundef %13) #7
  br label %25

14:                                               ; preds = %3
  %15 = icmp eq i8 %1, 0
  %16 = zext i1 %15 to i32
  tail call fastcc void @_bm_elem_flag_set(ptr noundef %0, i8 noundef zeroext 8, i32 noundef %16) #7
  br label %25

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.BMesh, ptr %6, i64 0, i32 25
  %19 = icmp eq i8 %1, 0
  %20 = select i1 %19, float 0.000000e+00, float 1.000000e+00
  tail call void @BM_elem_float_data_set(ptr noundef nonnull %18, ptr noundef %0, i32 noundef 30, float noundef %20) #5
  br label %25

21:                                               ; preds = %3
  %22 = getelementptr inbounds %struct.BMesh, ptr %6, i64 0, i32 25
  %23 = icmp eq i8 %1, 0
  %24 = select i1 %23, float 0.000000e+00, float 1.000000e+00
  tail call void @BM_elem_float_data_set(ptr noundef nonnull %22, ptr noundef %0, i32 noundef 29, float noundef %24) #5
  br label %25

25:                                               ; preds = %3, %21, %17, %14, %12, %11
  ret void
}

; Function Attrs: optsize
declare void @BM_edge_select_set(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @ED_uvedit_live_unwrap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BM_mesh_cd_flag_ensure(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare float @BM_elem_float_data_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bm_elem_flag_set(ptr nocapture noundef %0, i8 noundef zeroext %1, i32 noundef %2) unnamed_addr #3 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %3
  tail call fastcc void @_bm_elem_flag_enable(ptr noundef %0, i8 noundef zeroext %1) #7
  br label %7

6:                                                ; preds = %3
  tail call fastcc void @_bm_elem_flag_disable(ptr noundef %0, i8 noundef zeroext %1) #7
  br label %7

7:                                                ; preds = %6, %5
  ret void
}

; Function Attrs: optsize
declare void @BM_elem_float_data_set(ptr noundef, ptr noundef, i32 noundef, float noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bm_elem_flag_enable(ptr nocapture noundef %0, i8 noundef zeroext %1) unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %4 = load i8, ptr %3, align 1, !tbaa !101
  %5 = or i8 %4, %1
  store i8 %5, ptr %3, align 1, !tbaa !101
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bm_elem_flag_disable(ptr nocapture noundef %0, i8 noundef zeroext %1) unnamed_addr #3 {
  %3 = xor i8 %1, -1
  %4 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %5 = load i8, ptr %4, align 1, !tbaa !101
  %6 = and i8 %5, %3
  store i8 %6, ptr %4, align 1, !tbaa !101
  ret void
}

; Function Attrs: optsize
declare ptr @EDBM_face_find_nearest(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BM_mesh_active_face_get(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BM_mesh_calc_path_face(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal zeroext i8 @facetag_filter_cb(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #4 {
  %3 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %0, i8 noundef zeroext 2) #7, !range !41
  %4 = icmp eq i8 %3, 0
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @facetag_test_cb(ptr nocapture noundef readonly %0) unnamed_addr #4 {
  %2 = tail call fastcc zeroext i8 @_bm_elem_flag_test_bool(ptr noundef %0) #7
  ret i8 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @facetag_set_cb(ptr noundef %0, i8 noundef zeroext %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = load ptr, ptr %2, align 8, !tbaa !56
  tail call void @BM_face_select_set(ptr noundef %4, ptr noundef %0, i8 noundef zeroext %1) #5
  ret void
}

; Function Attrs: optsize
declare void @BM_mesh_active_face_set(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BM_face_select_set(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BKE_editmesh_from_object(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_new(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) unnamed_addr #0 {
  tail call fastcc void @BM_iter_init(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) #7
  %4 = tail call fastcc ptr @BM_iter_step(ptr noundef %0) #7
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_step(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !103
  %4 = tail call ptr %3(ptr noundef %0) #5
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal zeroext i8 @ele_filter_visible_cb(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #4 {
  %3 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %0, i8 noundef zeroext 2) #7, !range !41
  %4 = icmp eq i8 %3, 0
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: optsize
declare void @BM_elem_select_set(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @BM_iter_init(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 4
  store i8 %2, ptr %4, align 4, !tbaa !105
  %5 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %5, align 8, !tbaa !106
  %6 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %6, align 8, !tbaa !103
  switch i8 %2, label %13 [
    i8 1, label %7
    i8 2, label %9
    i8 3, label %11
  ]

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 9
  br label %14

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 10
  br label %14

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.BMesh, ptr %1, i64 0, i32 12
  br label %14

13:                                               ; preds = %3
  unreachable

14:                                               ; preds = %11, %9, %7
  %15 = phi ptr [ %12, %11 ], [ %10, %9 ], [ %8, %7 ]
  %16 = load ptr, ptr %15, align 8, !tbaa !107
  store ptr %16, ptr %0, align 8, !tbaa !108
  tail call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %0) #5
  ret void
}

; Function Attrs: optsize
declare void @bmiter__elem_of_mesh_begin(ptr noundef) #1

; Function Attrs: optsize
declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #1

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind optsize }
attributes #6 = { nounwind }
attributes #7 = { optsize }

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
!13 = !{!6, !7, i64 8}
!14 = !{!6, !7, i64 24}
!15 = !{!6, !7, i64 48}
!16 = !{!6, !7, i64 72}
!17 = !{!6, !12, i64 184}
!18 = !{!6, !7, i64 88}
!19 = !{!20, !7, i64 48}
!20 = !{!"ViewContext", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !8, i64 56}
!21 = !{!22, !7, i64 0}
!22 = !{!"BMEditMesh", !7, i64 0, !7, i64 8, !23, i64 16, !7, i64 24, !23, i64 32, !7, i64 40, !7, i64 48, !24, i64 56, !7, i64 64, !23, i64 72, !7, i64 80, !23, i64 88, !12, i64 92, !12, i64 94, !7, i64 96, !23, i64 104}
!23 = !{!"int", !8, i64 0}
!24 = !{!"long", !8, i64 0}
!25 = !{!22, !12, i64 92}
!26 = !{!27, !8, i64 12}
!27 = !{!"BMElem", !28, i64 0}
!28 = !{!"BMHeader", !7, i64 0, !23, i64 8, !8, i64 12, !8, i64 13, !8, i64 14}
!29 = !{i8 0, i8 2}
!30 = !{!6, !7, i64 32}
!31 = !{!32, !7, i64 112}
!32 = !{!"wmOperator", !7, i64 0, !7, i64 8, !8, i64 16, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !10, i64 128, !7, i64 144, !7, i64 152, !12, i64 160, !8, i64 162}
!33 = !{!34, !7, i64 968}
!34 = !{!"BMesh", !23, i64 0, !23, i64 4, !23, i64 8, !23, i64 12, !23, i64 16, !23, i64 20, !23, i64 24, !8, i64 28, !8, i64 29, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !23, i64 88, !23, i64 92, !23, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !23, i64 128, !7, i64 136, !35, i64 144, !35, i64 344, !35, i64 544, !35, i64 744, !12, i64 944, !23, i64 948, !23, i64 952, !23, i64 956, !10, i64 960, !7, i64 976, !10, i64 984, !7, i64 1000}
!35 = !{!"CustomData", !7, i64 0, !8, i64 8, !23, i64 172, !23, i64 176, !23, i64 180, !7, i64 184, !7, i64 192}
!36 = !{!37, !7, i64 8}
!37 = !{!"BMEditSelection", !7, i64 0, !7, i64 8, !7, i64 16, !8, i64 24}
!38 = !{!37, !8, i64 24}
!39 = !{!37, !7, i64 16}
!40 = !{!34, !23, i64 16}
!41 = !{i8 0, i8 9}
!42 = distinct !{!42, !43}
!43 = !{!"llvm.loop.mustprogress"}
!44 = !{!34, !23, i64 20}
!45 = distinct !{!45, !43}
!46 = !{!34, !23, i64 24}
!47 = distinct !{!47, !43}
!48 = !{!49, !7, i64 8}
!49 = !{!"LinkNode", !7, i64 0, !7, i64 8}
!50 = !{!49, !7, i64 0}
!51 = distinct !{!51, !43}
!52 = !{!32, !7, i64 120}
!53 = !{!23, !23, i64 0}
!54 = !{!55, !55, i64 0}
!55 = !{!"float", !8, i64 0}
!56 = !{!57, !7, i64 0}
!57 = !{!"UserData", !7, i64 0, !7, i64 8, !7, i64 16}
!58 = !{!20, !7, i64 16}
!59 = !{!60, !7, i64 296}
!60 = !{!"Object", !61, i64 0, !7, i64 120, !7, i64 128, !12, i64 136, !12, i64 138, !23, i64 140, !23, i64 144, !23, i64 148, !8, i64 152, !7, i64 216, !7, i64 224, !7, i64 232, !7, i64 240, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !7, i64 280, !7, i64 288, !7, i64 296, !7, i64 304, !62, i64 312, !7, i64 360, !10, i64 368, !10, i64 384, !10, i64 400, !10, i64 416, !23, i64 432, !23, i64 436, !7, i64 440, !7, i64 448, !23, i64 456, !23, i64 460, !8, i64 464, !8, i64 476, !8, i64 488, !8, i64 500, !8, i64 512, !8, i64 524, !8, i64 536, !8, i64 548, !8, i64 560, !8, i64 576, !8, i64 592, !8, i64 604, !55, i64 616, !55, i64 620, !8, i64 624, !8, i64 688, !8, i64 752, !8, i64 816, !8, i64 880, !23, i64 944, !12, i64 948, !12, i64 950, !12, i64 952, !12, i64 954, !12, i64 956, !12, i64 958, !12, i64 960, !12, i64 962, !12, i64 964, !8, i64 966, !8, i64 967, !23, i64 968, !23, i64 972, !23, i64 976, !23, i64 980, !23, i64 984, !55, i64 988, !55, i64 992, !55, i64 996, !55, i64 1000, !55, i64 1004, !55, i64 1008, !55, i64 1012, !55, i64 1016, !55, i64 1020, !55, i64 1024, !55, i64 1028, !55, i64 1032, !12, i64 1036, !12, i64 1038, !12, i64 1040, !8, i64 1042, !8, i64 1043, !12, i64 1044, !8, i64 1046, !8, i64 1047, !55, i64 1048, !55, i64 1052, !10, i64 1056, !10, i64 1072, !10, i64 1088, !10, i64 1104, !55, i64 1120, !12, i64 1124, !12, i64 1126, !8, i64 1128, !23, i64 1144, !23, i64 1148, !7, i64 1152, !8, i64 1160, !8, i64 1161, !12, i64 1162, !8, i64 1164, !10, i64 1176, !10, i64 1192, !10, i64 1208, !10, i64 1224, !7, i64 1240, !7, i64 1248, !7, i64 1256, !8, i64 1264, !8, i64 1265, !12, i64 1266, !55, i64 1268, !7, i64 1272, !7, i64 1280, !7, i64 1288, !7, i64 1296, !24, i64 1304, !24, i64 1312, !23, i64 1320, !23, i64 1324, !10, i64 1328, !10, i64 1344, !7, i64 1360, !7, i64 1368, !7, i64 1376, !8, i64 1384, !7, i64 1392, !10, i64 1400, !7, i64 1416}
!61 = !{!"ID", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !8, i64 32, !12, i64 98, !23, i64 100, !23, i64 104, !23, i64 108, !7, i64 112}
!62 = !{!"bAnimVizSettings", !23, i64 0, !23, i64 4, !23, i64 8, !23, i64 12, !12, i64 16, !12, i64 18, !12, i64 20, !12, i64 22, !12, i64 24, !12, i64 26, !12, i64 28, !12, i64 30, !23, i64 32, !23, i64 36, !23, i64 40, !23, i64 44}
!63 = !{!57, !7, i64 8}
!64 = !{!20, !7, i64 0}
!65 = !{!57, !7, i64 16}
!66 = distinct !{!66, !43}
!67 = distinct !{!67, !43}
!68 = !{!69, !7, i64 264}
!69 = !{!"Scene", !61, i64 0, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !10, i64 152, !7, i64 168, !7, i64 176, !8, i64 184, !8, i64 196, !8, i64 208, !8, i64 220, !23, i64 232, !23, i64 236, !23, i64 240, !12, i64 244, !8, i64 246, !8, i64 247, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !70, i64 280, !79, i64 4264, !10, i64 4296, !10, i64 4312, !7, i64 4328, !7, i64 4336, !7, i64 4344, !7, i64 4352, !7, i64 4360, !7, i64 4368, !12, i64 4376, !12, i64 4378, !23, i64 4380, !10, i64 4384, !80, i64 4400, !81, i64 4416, !84, i64 4600, !7, i64 4608, !85, i64 4616, !7, i64 4640, !24, i64 4648, !24, i64 4656, !72, i64 4664, !73, i64 4824, !86, i64 4888, !7, i64 4952}
!70 = !{!"RenderData", !71, i64 0, !7, i64 248, !7, i64 256, !74, i64 264, !75, i64 328, !23, i64 400, !23, i64 404, !23, i64 408, !55, i64 412, !23, i64 416, !23, i64 420, !23, i64 424, !23, i64 428, !12, i64 432, !12, i64 434, !55, i64 436, !55, i64 440, !55, i64 444, !55, i64 448, !55, i64 452, !12, i64 456, !12, i64 458, !12, i64 460, !12, i64 462, !12, i64 464, !12, i64 466, !23, i64 468, !12, i64 472, !12, i64 474, !12, i64 476, !12, i64 478, !12, i64 480, !12, i64 482, !23, i64 484, !23, i64 488, !12, i64 492, !12, i64 494, !23, i64 496, !23, i64 500, !12, i64 504, !12, i64 506, !12, i64 508, !12, i64 510, !12, i64 512, !8, i64 514, !8, i64 515, !23, i64 516, !23, i64 520, !23, i64 524, !12, i64 528, !12, i64 530, !12, i64 532, !12, i64 534, !12, i64 536, !12, i64 538, !12, i64 540, !12, i64 542, !76, i64 544, !76, i64 560, !77, i64 576, !10, i64 592, !12, i64 608, !12, i64 610, !55, i64 612, !55, i64 616, !55, i64 620, !55, i64 624, !23, i64 628, !55, i64 632, !55, i64 636, !55, i64 640, !55, i64 644, !12, i64 648, !12, i64 650, !12, i64 652, !12, i64 654, !12, i64 656, !12, i64 658, !55, i64 660, !55, i64 664, !12, i64 668, !12, i64 670, !55, i64 672, !55, i64 676, !8, i64 680, !23, i64 1704, !12, i64 1708, !12, i64 1710, !8, i64 1712, !8, i64 2480, !8, i64 2496, !8, i64 2512, !8, i64 2513, !8, i64 2514, !8, i64 2515, !23, i64 2520, !12, i64 2524, !12, i64 2526, !55, i64 2528, !55, i64 2532, !12, i64 2536, !12, i64 2538, !55, i64 2540, !12, i64 2544, !12, i64 2546, !23, i64 2548, !12, i64 2552, !12, i64 2554, !12, i64 2556, !12, i64 2558, !55, i64 2560, !55, i64 2564, !7, i64 2568, !23, i64 2576, !55, i64 2580, !8, i64 2584, !78, i64 2616, !23, i64 3976, !23, i64 3980}
!71 = !{!"ImageFormatData", !8, i64 0, !8, i64 1, !8, i64 2, !8, i64 3, !8, i64 4, !8, i64 5, !8, i64 6, !8, i64 7, !12, i64 8, !12, i64 10, !55, i64 12, !8, i64 16, !8, i64 17, !8, i64 18, !72, i64 24, !73, i64 184}
!72 = !{!"ColorManagedViewSettings", !23, i64 0, !23, i64 4, !8, i64 8, !8, i64 72, !55, i64 136, !55, i64 140, !7, i64 144, !7, i64 152}
!73 = !{!"ColorManagedDisplaySettings", !8, i64 0}
!74 = !{!"QuicktimeCodecSettings", !23, i64 0, !23, i64 4, !23, i64 8, !23, i64 12, !23, i64 16, !23, i64 20, !23, i64 24, !23, i64 28, !23, i64 32, !23, i64 36, !23, i64 40, !23, i64 44, !12, i64 48, !12, i64 50, !23, i64 52, !23, i64 56, !23, i64 60}
!75 = !{!"FFMpegCodecData", !23, i64 0, !23, i64 4, !23, i64 8, !23, i64 12, !23, i64 16, !23, i64 20, !23, i64 24, !23, i64 28, !55, i64 32, !23, i64 36, !23, i64 40, !23, i64 44, !23, i64 48, !23, i64 52, !23, i64 56, !23, i64 60, !7, i64 64}
!76 = !{!"rctf", !55, i64 0, !55, i64 4, !55, i64 8, !55, i64 12}
!77 = !{!"rcti", !23, i64 0, !23, i64 4, !23, i64 8, !23, i64 12}
!78 = !{!"BakeData", !71, i64 0, !8, i64 248, !12, i64 1272, !12, i64 1274, !12, i64 1276, !12, i64 1278, !55, i64 1280, !55, i64 1284, !8, i64 1288, !8, i64 1291, !8, i64 1292, !8, i64 1293, !8, i64 1296}
!79 = !{!"AudioData", !23, i64 0, !55, i64 4, !55, i64 8, !55, i64 12, !23, i64 16, !12, i64 20, !12, i64 22, !55, i64 24, !55, i64 28}
!80 = !{!"GameFraming", !8, i64 0, !8, i64 12, !8, i64 13, !8, i64 14, !8, i64 15}
!81 = !{!"GameData", !80, i64 0, !12, i64 16, !12, i64 18, !12, i64 20, !12, i64 22, !12, i64 24, !12, i64 26, !12, i64 28, !12, i64 30, !12, i64 32, !8, i64 34, !82, i64 40, !12, i64 64, !12, i64 66, !55, i64 68, !83, i64 72, !55, i64 128, !55, i64 132, !23, i64 136, !12, i64 140, !12, i64 142, !12, i64 144, !12, i64 146, !12, i64 148, !12, i64 150, !12, i64 152, !12, i64 154, !12, i64 156, !12, i64 158, !12, i64 160, !12, i64 162, !55, i64 164, !55, i64 168, !55, i64 172, !55, i64 176, !55, i64 180}
!82 = !{!"GameDome", !12, i64 0, !12, i64 2, !12, i64 4, !12, i64 6, !55, i64 8, !55, i64 12, !7, i64 16}
!83 = !{!"RecastData", !55, i64 0, !55, i64 4, !55, i64 8, !55, i64 12, !55, i64 16, !55, i64 20, !55, i64 24, !55, i64 28, !55, i64 32, !55, i64 36, !23, i64 40, !55, i64 44, !55, i64 48, !12, i64 52, !12, i64 54}
!84 = !{!"UnitSettings", !55, i64 0, !8, i64 4, !8, i64 5, !12, i64 6}
!85 = !{!"PhysicsSettings", !8, i64 0, !23, i64 12, !23, i64 16, !23, i64 20}
!86 = !{!"ColorManagedColorspaceSettings", !8, i64 0}
!87 = !{!88, !8, i64 429}
!88 = !{!"ToolSettings", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !55, i64 32, !55, i64 36, !55, i64 40, !12, i64 44, !12, i64 46, !8, i64 48, !8, i64 49, !8, i64 50, !8, i64 51, !55, i64 52, !12, i64 56, !8, i64 58, !8, i64 59, !89, i64 64, !91, i64 168, !55, i64 336, !55, i64 340, !12, i64 344, !12, i64 346, !8, i64 348, !8, i64 349, !12, i64 350, !55, i64 352, !55, i64 356, !55, i64 360, !55, i64 364, !55, i64 368, !55, i64 372, !55, i64 376, !55, i64 380, !55, i64 384, !55, i64 388, !12, i64 392, !8, i64 394, !8, i64 395, !8, i64 396, !8, i64 399, !7, i64 400, !8, i64 408, !8, i64 409, !8, i64 410, !8, i64 411, !8, i64 412, !8, i64 413, !8, i64 421, !8, i64 429, !8, i64 430, !8, i64 431, !8, i64 432, !8, i64 433, !12, i64 434, !12, i64 436, !12, i64 438, !12, i64 440, !8, i64 442, !8, i64 443, !8, i64 444, !8, i64 445, !8, i64 446, !8, i64 447, !23, i64 448, !23, i64 452, !23, i64 456, !23, i64 460, !12, i64 464, !12, i64 466, !23, i64 468, !55, i64 472, !55, i64 476, !92, i64 480, !93, i64 608}
!89 = !{!"ImagePaintSettings", !90, i64 0, !12, i64 40, !12, i64 42, !12, i64 44, !12, i64 46, !8, i64 48, !23, i64 52, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !8, i64 88, !55, i64 100}
!90 = !{!"Paint", !7, i64 0, !7, i64 8, !7, i64 16, !8, i64 24, !23, i64 28, !23, i64 32, !23, i64 36}
!91 = !{!"ParticleEditSettings", !12, i64 0, !12, i64 2, !12, i64 4, !12, i64 6, !8, i64 8, !7, i64 120, !55, i64 128, !55, i64 132, !23, i64 136, !23, i64 140, !23, i64 144, !23, i64 148, !7, i64 152, !7, i64 160}
!92 = !{!"UnifiedPaintSettings", !23, i64 0, !55, i64 4, !55, i64 8, !55, i64 12, !8, i64 16, !8, i64 28, !23, i64 40, !8, i64 44, !55, i64 52, !23, i64 56, !23, i64 60, !8, i64 64, !8, i64 65, !55, i64 72, !8, i64 76, !23, i64 84, !55, i64 88, !8, i64 92, !8, i64 100, !23, i64 108, !7, i64 112, !55, i64 120, !23, i64 124}
!93 = !{!"MeshStatVis", !8, i64 0, !8, i64 1, !8, i64 3, !55, i64 4, !55, i64 8, !55, i64 12, !55, i64 16, !8, i64 20, !8, i64 21, !55, i64 24, !55, i64 28, !55, i64 32, !55, i64 36}
!94 = !{!22, !7, i64 96}
!95 = distinct !{!95, !43}
!96 = distinct !{!96, !43}
!97 = !{!98, !23, i64 1344}
!98 = !{!"Mesh", !61, i64 0, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152, !7, i64 160, !7, i64 168, !7, i64 176, !7, i64 184, !7, i64 192, !7, i64 200, !7, i64 208, !7, i64 216, !7, i64 224, !7, i64 232, !7, i64 240, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !35, i64 280, !35, i64 480, !35, i64 680, !35, i64 880, !35, i64 1080, !23, i64 1280, !23, i64 1284, !23, i64 1288, !23, i64 1292, !23, i64 1296, !23, i64 1300, !23, i64 1304, !8, i64 1308, !8, i64 1320, !8, i64 1332, !23, i64 1344, !12, i64 1348, !12, i64 1350, !55, i64 1352, !23, i64 1356, !8, i64 1360, !8, i64 1361, !8, i64 1362, !8, i64 1363, !8, i64 1364, !8, i64 1365, !12, i64 1366, !7, i64 1368}
!99 = distinct !{!99, !43}
!100 = distinct !{!100, !43}
!101 = !{!28, !8, i64 13}
!102 = !{!98, !7, i64 272}
!103 = !{!104, !7, i64 48}
!104 = !{!"BMIter", !8, i64 0, !7, i64 40, !7, i64 48, !23, i64 56, !8, i64 60}
!105 = !{!104, !8, i64 60}
!106 = !{!104, !7, i64 40}
!107 = !{!7, !7, i64 0}
!108 = !{!8, !8, i64 0}

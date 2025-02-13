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
  store ptr @.str, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.1, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.2, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 6
  store ptr @edbm_shortest_path_pick_invoke, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh_region_view3d, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.3, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @edbm_shortest_path_pick_invoke(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !48 {
  %4 = alloca %struct.ViewContext, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #6
  call void @em_setup_viewcontext(ptr noundef %0, ptr noundef nonnull %4) #5
  %5 = getelementptr inbounds %struct.ViewContext, ptr %4, i64 0, i32 7
  %6 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  call fastcc void @copy_v2_v2_int(ptr noundef nonnull %5, ptr noundef nonnull %6) #7
  %7 = getelementptr inbounds %struct.ViewContext, ptr %4, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !49
  %9 = load ptr, ptr %8, align 8, !tbaa !51
  %10 = call ptr @BM_mesh_active_elem_get(ptr noundef %9) #5
  %11 = icmp eq ptr %10, null
  br i1 %11, label %47, label %12

12:                                               ; preds = %3
  call void @view3d_operator_needs_opengl(ptr noundef %0) #5
  %13 = getelementptr inbounds %struct.BMEditMesh, ptr %8, i64 0, i32 12
  %14 = load i16, ptr %13, align 4, !tbaa !55
  %15 = and i16 %14, 1
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.BMHeader, ptr %10, i64 0, i32 2
  %19 = load i8, ptr %18, align 4, !tbaa !56
  %20 = icmp eq i8 %19, 1
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = call fastcc zeroext i8 @mouse_mesh_shortest_path_vert(ptr noundef nonnull %4) #7, !range !59
  %23 = icmp eq i8 %22, 0
  %24 = select i1 %23, i32 8, i32 4
  br label %47

25:                                               ; preds = %17, %12
  %26 = and i16 %14, 2
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.BMHeader, ptr %10, i64 0, i32 2
  %30 = load i8, ptr %29, align 4, !tbaa !56
  %31 = icmp eq i8 %30, 2
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = call fastcc zeroext i8 @mouse_mesh_shortest_path_edge(ptr noundef nonnull %4) #7, !range !59
  %34 = icmp eq i8 %33, 0
  %35 = select i1 %34, i32 8, i32 4
  br label %47

36:                                               ; preds = %28, %25
  %37 = and i16 %14, 4
  %38 = icmp eq i16 %37, 0
  br i1 %38, label %47, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.BMHeader, ptr %10, i64 0, i32 2
  %41 = load i8, ptr %40, align 4, !tbaa !56
  %42 = icmp eq i8 %41, 8
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = call fastcc zeroext i8 @mouse_mesh_shortest_path_face(ptr noundef nonnull %4) #7, !range !59
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
  store ptr @.str.6, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.7, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.8, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edbm_shortest_path_select_exec, ptr %4, align 8, !tbaa !60
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.9, i32 noundef 1, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11) #5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @edbm_shortest_path_select_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !61 {
  %3 = alloca %struct.BMIter, align 8
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #5
  %5 = tail call ptr @BKE_editmesh_from_object(ptr noundef %4) #5
  %6 = load ptr, ptr %5, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #6
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !62
  %9 = tail call i32 @RNA_boolean_get(ptr noundef %8, ptr noundef nonnull @.str.9) #5
  %10 = trunc i32 %9 to i8
  %11 = getelementptr inbounds %struct.BMesh, ptr %6, i64 0, i32 32, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !64
  %13 = icmp eq ptr %12, null
  br i1 %13, label %29, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.BMEditSelection, ptr %12, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !67
  %17 = icmp eq ptr %16, null
  br i1 %17, label %29, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.BMEditSelection, ptr %12, i64 0, i32 3
  %20 = load i8, ptr %19, align 8, !tbaa !69
  %21 = getelementptr inbounds %struct.BMEditSelection, ptr %16, i64 0, i32 3
  %22 = load i8, ptr %21, align 8, !tbaa !69
  %23 = icmp eq i8 %20, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.BMEditSelection, ptr %12, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !70
  %27 = getelementptr inbounds %struct.BMEditSelection, ptr %16, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !70
  br label %116

29:                                               ; preds = %18, %14, %2
  %30 = getelementptr inbounds %struct.BMEditMesh, ptr %5, i64 0, i32 12
  %31 = load i16, ptr %30, align 4, !tbaa !55
  %32 = and i16 %31, 1
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %60, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.BMesh, ptr %6, i64 0, i32 4
  %36 = load i32, ptr %35, align 8, !tbaa !71
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
  %45 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %42, i8 noundef zeroext 1) #7, !range !72
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
  br i1 %55, label %56, label %41, !llvm.loop !73

56:                                               ; preds = %51
  %57 = icmp eq ptr %53, null
  br i1 %57, label %58, label %116

58:                                               ; preds = %38, %56
  %59 = load i16, ptr %30, align 4, !tbaa !55
  br label %60

60:                                               ; preds = %58, %29, %34
  %61 = phi i16 [ %59, %58 ], [ %31, %29 ], [ %31, %34 ]
  %62 = and i16 %61, 2
  %63 = icmp eq i16 %62, 0
  br i1 %63, label %90, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.BMesh, ptr %6, i64 0, i32 5
  %66 = load i32, ptr %65, align 4, !tbaa !75
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
  %75 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %72, i8 noundef zeroext 1) #7, !range !72
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
  br i1 %85, label %86, label %71, !llvm.loop !76

86:                                               ; preds = %81
  %87 = icmp eq ptr %83, null
  br i1 %87, label %88, label %116

88:                                               ; preds = %68, %86
  %89 = load i16, ptr %30, align 4, !tbaa !55
  br label %90

90:                                               ; preds = %88, %60, %64
  %91 = phi i16 [ %89, %88 ], [ %61, %60 ], [ %61, %64 ]
  %92 = and i16 %91, 4
  %93 = icmp eq i16 %92, 0
  br i1 %93, label %144, label %94

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.BMesh, ptr %6, i64 0, i32 6
  %96 = load i32, ptr %95, align 8, !tbaa !77
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
  %105 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %102, i8 noundef zeroext 1) #7, !range !72
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
  br i1 %115, label %116, label %101, !llvm.loop !78

116:                                              ; preds = %49, %79, %111, %109, %56, %86, %24
  %117 = phi ptr [ %26, %24 ], [ %82, %86 ], [ %52, %56 ], [ %112, %111 ], [ %104, %109 ], [ %74, %79 ], [ %44, %49 ]
  %118 = phi ptr [ %28, %24 ], [ %83, %86 ], [ %53, %56 ], [ %113, %111 ], [ %103, %109 ], [ %73, %79 ], [ %43, %49 ]
  %119 = icmp ne ptr %117, null
  %120 = icmp ne ptr %118, null
  %121 = select i1 %119, i1 %120, i1 false
  br i1 %121, label %122, label %144

122:                                              ; preds = %116
  %123 = getelementptr inbounds %struct.BMHeader, ptr %117, i64 0, i32 2
  %124 = load i8, ptr %123, align 4, !tbaa !56
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
  %137 = load ptr, ptr %136, align 8, !tbaa !79
  call void @BM_elem_select_set(ptr noundef %6, ptr noundef %137, i8 noundef zeroext 1) #5
  %138 = load ptr, ptr %135, align 8, !tbaa !81
  %139 = icmp eq ptr %138, null
  br i1 %139, label %140, label %134, !llvm.loop !82

140:                                              ; preds = %134
  call void @BLI_linklist_free(ptr noundef nonnull %132, ptr noundef null) #5
  call void @EDBM_selectmode_flush(ptr noundef nonnull %5) #5
  call void @EDBM_update_generic(ptr noundef nonnull %5, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  br label %147

141:                                              ; preds = %122, %131
  %142 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %143 = load ptr, ptr %142, align 8, !tbaa !83
  call void @BKE_report(ptr noundef %143, i32 noundef 16, ptr noundef nonnull @.str.12) #5
  br label %147

144:                                              ; preds = %98, %90, %94, %116
  %145 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %146 = load ptr, ptr %145, align 8, !tbaa !83
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
define internal fastcc void @copy_v2_v2_int(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !PGOFuncName !84 {
  %3 = load i32, ptr %1, align 4, !tbaa !85
  store i32 %3, ptr %0, align 4, !tbaa !85
  %4 = getelementptr inbounds i32, ptr %1, i64 1
  %5 = load i32, ptr %4, align 4, !tbaa !85
  %6 = getelementptr inbounds i32, ptr %0, i64 1
  store i32 %5, ptr %6, align 4, !tbaa !85
  ret void
}

; Function Attrs: optsize
declare ptr @BM_mesh_active_elem_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @view3d_operator_needs_opengl(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @mouse_mesh_shortest_path_vert(ptr noundef %0) unnamed_addr #0 !PGOFuncName !86 {
  %2 = alloca float, align 4
  %3 = alloca %struct.UserData, align 8
  %4 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !49
  %6 = load ptr, ptr %5, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  %7 = tail call float @ED_view3d_select_dist_px() #5
  store float %7, ptr %2, align 4, !tbaa !87
  %8 = call ptr @EDBM_vert_find_nearest(ptr noundef %0, ptr noundef nonnull %2, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %9 = icmp eq ptr %8, null
  br i1 %9, label %55, label %10

10:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #6
  store ptr %6, ptr %3, align 8, !tbaa !89
  %11 = getelementptr inbounds %struct.UserData, ptr %3, i64 0, i32 1
  %12 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !91
  %14 = getelementptr inbounds %struct.Object, ptr %13, i64 0, i32 19
  %15 = load ptr, ptr %14, align 8, !tbaa !92
  store ptr %15, ptr %11, align 8, !tbaa !96
  %16 = getelementptr inbounds %struct.UserData, ptr %3, i64 0, i32 2
  %17 = load ptr, ptr %0, align 8, !tbaa !97
  store ptr %17, ptr %16, align 8, !tbaa !98
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
  %30 = load ptr, ptr %29, align 8, !tbaa !79
  %31 = call fastcc zeroext i8 @verttag_test_cb(ptr noundef %30) #7
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %27
  %34 = load ptr, ptr %28, align 8, !tbaa !81
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %27, !llvm.loop !99

36:                                               ; preds = %27, %33
  %37 = phi i8 [ 1, %27 ], [ 0, %33 ]
  br label %38

38:                                               ; preds = %38, %36
  %39 = phi ptr [ %23, %36 ], [ %42, %38 ]
  %40 = getelementptr inbounds %struct.LinkNode, ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !79
  call fastcc void @verttag_set_cb(ptr noundef %41, i8 noundef zeroext %37, ptr noundef nonnull %3) #7
  %42 = load ptr, ptr %39, align 8, !tbaa !81
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %38, !llvm.loop !100

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
  %49 = call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef nonnull %8, i8 noundef zeroext 1) #7, !range !72
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
define internal fastcc noundef zeroext i8 @mouse_mesh_shortest_path_edge(ptr noundef %0) unnamed_addr #0 !PGOFuncName !101 {
  %2 = alloca float, align 4
  %3 = alloca %struct.UserData, align 8
  %4 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !49
  %6 = load ptr, ptr %5, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  %7 = tail call float @ED_view3d_select_dist_px() #5
  store float %7, ptr %2, align 4, !tbaa !87
  %8 = call ptr @EDBM_edge_find_nearest(ptr noundef %0, ptr noundef nonnull %2) #5
  %9 = icmp eq ptr %8, null
  br i1 %9, label %91, label %10

10:                                               ; preds = %1
  %11 = load ptr, ptr %0, align 8, !tbaa !97
  %12 = getelementptr inbounds %struct.Scene, ptr %11, i64 0, i32 20
  %13 = load ptr, ptr %12, align 8, !tbaa !102
  %14 = getelementptr inbounds %struct.ToolSettings, ptr %13, i64 0, i32 49
  %15 = load i8, ptr %14, align 1, !tbaa !121
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #6
  store ptr %6, ptr %3, align 8, !tbaa !89
  %16 = getelementptr inbounds %struct.UserData, ptr %3, i64 0, i32 1
  %17 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !91
  %19 = getelementptr inbounds %struct.Object, ptr %18, i64 0, i32 19
  %20 = load ptr, ptr %19, align 8, !tbaa !92
  store ptr %20, ptr %16, align 8, !tbaa !96
  %21 = getelementptr inbounds %struct.UserData, ptr %3, i64 0, i32 2
  store ptr %11, ptr %21, align 8, !tbaa !98
  %22 = call ptr @BM_mesh_active_edge_get(ptr noundef %6) #5
  %23 = load ptr, ptr %0, align 8, !tbaa !97
  %24 = getelementptr inbounds %struct.BMEditMesh, ptr %5, i64 0, i32 14
  %25 = load ptr, ptr %24, align 8, !tbaa !128
  %26 = getelementptr inbounds %struct.Object, ptr %25, i64 0, i32 19
  %27 = load ptr, ptr %26, align 8, !tbaa !92
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
  %39 = load ptr, ptr %38, align 8, !tbaa !79
  %40 = call fastcc zeroext i8 @edgetag_test_cb(ptr noundef %39, ptr noundef nonnull %3) #7, !range !59
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %36
  %43 = load ptr, ptr %37, align 8, !tbaa !81
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %36, !llvm.loop !129

45:                                               ; preds = %36, %42
  %46 = phi i8 [ 1, %36 ], [ 0, %42 ]
  br label %47

47:                                               ; preds = %47, %45
  %48 = phi ptr [ %32, %45 ], [ %51, %47 ]
  %49 = getelementptr inbounds %struct.LinkNode, ptr %48, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !79
  call fastcc void @edgetag_set_cb(ptr noundef %50, i8 noundef zeroext %46, ptr noundef nonnull %3) #7
  %51 = load ptr, ptr %48, align 8, !tbaa !81
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %47, !llvm.loop !130

53:                                               ; preds = %47
  call void @BLI_linklist_free(ptr noundef nonnull %32, ptr noundef null) #5
  br label %61

54:                                               ; preds = %31, %10
  %55 = call fastcc zeroext i8 @edgetag_test_cb(ptr noundef nonnull %8, ptr noundef nonnull %3) #7, !range !59
  %56 = xor i8 %55, 1
  %57 = load ptr, ptr %0, align 8, !tbaa !97
  %58 = load ptr, ptr %17, align 8, !tbaa !91
  %59 = getelementptr inbounds %struct.Object, ptr %58, i64 0, i32 19
  %60 = load ptr, ptr %59, align 8, !tbaa !92
  call fastcc void @edgetag_ensure_cd_flag(ptr noundef %57, ptr noundef %60) #7
  call fastcc void @edgetag_set_cb(ptr noundef nonnull %8, i8 noundef zeroext %56, ptr noundef nonnull %3) #7
  br label %61

61:                                               ; preds = %54, %53
  %62 = icmp eq i8 %15, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %61
  call void @EDBM_selectmode_flush(ptr noundef nonnull %5) #5
  %64 = call fastcc zeroext i8 @edgetag_test_cb(ptr noundef nonnull %8, ptr noundef nonnull %3) #7, !range !59
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
  %74 = load i32, ptr %73, align 8, !tbaa !131
  %75 = or i32 %74, 128
  store i32 %75, ptr %73, align 8, !tbaa !131
  %76 = load ptr, ptr %0, align 8, !tbaa !97
  %77 = load ptr, ptr %17, align 8, !tbaa !91
  call void @ED_uvedit_live_unwrap(ptr noundef %76, ptr noundef %77) #5
  br label %90

78:                                               ; preds = %68
  %79 = getelementptr inbounds %struct.Mesh, ptr %20, i64 0, i32 36
  %80 = load i32, ptr %79, align 8, !tbaa !131
  %81 = or i32 %80, 256
  store i32 %81, ptr %79, align 8, !tbaa !131
  br label %90

82:                                               ; preds = %68
  %83 = getelementptr inbounds %struct.Mesh, ptr %20, i64 0, i32 36
  %84 = load i32, ptr %83, align 8, !tbaa !131
  %85 = or i32 %84, 64
  store i32 %85, ptr %83, align 8, !tbaa !131
  br label %90

86:                                               ; preds = %68
  %87 = getelementptr inbounds %struct.Mesh, ptr %20, i64 0, i32 36
  %88 = load i32, ptr %87, align 8, !tbaa !131
  %89 = or i32 %88, 512
  store i32 %89, ptr %87, align 8, !tbaa !131
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
define internal fastcc noundef zeroext i8 @mouse_mesh_shortest_path_face(ptr noundef %0) unnamed_addr #0 !PGOFuncName !133 {
  %2 = alloca float, align 4
  %3 = alloca %struct.UserData, align 8
  %4 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !49
  %6 = load ptr, ptr %5, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  %7 = tail call float @ED_view3d_select_dist_px() #5
  store float %7, ptr %2, align 4, !tbaa !87
  %8 = call ptr @EDBM_face_find_nearest(ptr noundef %0, ptr noundef nonnull %2) #5
  %9 = icmp eq ptr %8, null
  br i1 %9, label %55, label %10

10:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #6
  store ptr %6, ptr %3, align 8, !tbaa !89
  %11 = getelementptr inbounds %struct.UserData, ptr %3, i64 0, i32 1
  %12 = getelementptr inbounds %struct.ViewContext, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !91
  %14 = getelementptr inbounds %struct.Object, ptr %13, i64 0, i32 19
  %15 = load ptr, ptr %14, align 8, !tbaa !92
  store ptr %15, ptr %11, align 8, !tbaa !96
  %16 = getelementptr inbounds %struct.UserData, ptr %3, i64 0, i32 2
  %17 = load ptr, ptr %0, align 8, !tbaa !97
  store ptr %17, ptr %16, align 8, !tbaa !98
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
  %30 = load ptr, ptr %29, align 8, !tbaa !79
  %31 = call fastcc zeroext i8 @facetag_test_cb(ptr noundef %30) #7
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %27
  %34 = load ptr, ptr %28, align 8, !tbaa !81
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %27, !llvm.loop !134

36:                                               ; preds = %27, %33
  %37 = phi i8 [ 1, %27 ], [ 0, %33 ]
  br label %38

38:                                               ; preds = %38, %36
  %39 = phi ptr [ %23, %36 ], [ %42, %38 ]
  %40 = getelementptr inbounds %struct.LinkNode, ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !79
  call fastcc void @facetag_set_cb(ptr noundef %41, i8 noundef zeroext %37, ptr noundef nonnull %3) #7
  %42 = load ptr, ptr %39, align 8, !tbaa !81
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %38, !llvm.loop !135

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
define internal zeroext i8 @verttag_filter_cb(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #4 !PGOFuncName !136 {
  %3 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %0, i8 noundef zeroext 2) #7, !range !72
  %4 = icmp eq i8 %3, 0
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: optsize
declare zeroext i8 @_bm_select_history_remove(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @verttag_test_cb(ptr nocapture noundef readonly %0) unnamed_addr #4 !PGOFuncName !137 {
  %2 = tail call fastcc zeroext i8 @_bm_elem_flag_test_bool(ptr noundef %0) #7
  ret i8 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @verttag_set_cb(ptr noundef %0, i8 noundef zeroext %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !PGOFuncName !138 {
  %4 = load ptr, ptr %2, align 8, !tbaa !89
  tail call void @BM_vert_select_set(ptr noundef %4, ptr noundef %0, i8 noundef zeroext %1) #5
  ret void
}

; Function Attrs: optsize
declare void @BLI_linklist_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @EDBM_selectmode_flush(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @_bm_elem_flag_test(ptr nocapture noundef readonly %0, i8 noundef zeroext %1) unnamed_addr #4 !PGOFuncName !139 {
  %3 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %4 = load i8, ptr %3, align 1, !tbaa !140
  %5 = and i8 %4, %1
  ret i8 %5
}

; Function Attrs: optsize
declare void @_bm_select_history_store(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @EDBM_update_generic(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @_bm_elem_flag_test_bool(ptr nocapture noundef readonly %0) unnamed_addr #4 !PGOFuncName !141 {
  %2 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !140
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
define internal fastcc void @edgetag_ensure_cd_flag(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !142 {
  %3 = getelementptr inbounds %struct.Mesh, ptr %1, i64 0, i32 20
  %4 = load ptr, ptr %3, align 8, !tbaa !143
  %5 = load ptr, ptr %4, align 8, !tbaa !51
  %6 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 20
  %7 = load ptr, ptr %6, align 8, !tbaa !102
  %8 = getelementptr inbounds %struct.ToolSettings, ptr %7, i64 0, i32 49
  %9 = load i8, ptr %8, align 1, !tbaa !121
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
define internal zeroext i8 @edgetag_filter_cb(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #4 !PGOFuncName !144 {
  %3 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %0, i8 noundef zeroext 2) #7, !range !72
  %4 = icmp eq i8 %3, 0
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @edgetag_test_cb(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !145 {
  %3 = getelementptr inbounds %struct.UserData, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !98
  %5 = load ptr, ptr %1, align 8, !tbaa !89
  %6 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 20
  %7 = load ptr, ptr %6, align 8, !tbaa !102
  %8 = getelementptr inbounds %struct.ToolSettings, ptr %7, i64 0, i32 49
  %9 = load i8, ptr %8, align 1, !tbaa !121
  switch i8 %9, label %27 [
    i8 0, label %10
    i8 1, label %13
    i8 2, label %16
    i8 3, label %19
    i8 4, label %23
  ]

10:                                               ; preds = %2
  %11 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %0, i8 noundef zeroext 1) #7, !range !72
  %12 = icmp ne i8 %11, 0
  br label %27

13:                                               ; preds = %2
  %14 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %0, i8 noundef zeroext 4) #7, !range !72
  %15 = icmp ne i8 %14, 0
  br label %27

16:                                               ; preds = %2
  %17 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %0, i8 noundef zeroext 8) #7, !range !72
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
define internal fastcc void @edgetag_set_cb(ptr noundef %0, i8 noundef zeroext %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !PGOFuncName !146 {
  %4 = getelementptr inbounds %struct.UserData, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !98
  %6 = load ptr, ptr %2, align 8, !tbaa !89
  %7 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 20
  %8 = load ptr, ptr %7, align 8, !tbaa !102
  %9 = getelementptr inbounds %struct.ToolSettings, ptr %8, i64 0, i32 49
  %10 = load i8, ptr %9, align 1, !tbaa !121
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
define internal fastcc void @_bm_elem_flag_set(ptr nocapture noundef %0, i8 noundef zeroext %1, i32 noundef %2) unnamed_addr #3 !PGOFuncName !147 {
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
define internal fastcc void @_bm_elem_flag_enable(ptr nocapture noundef %0, i8 noundef zeroext %1) unnamed_addr #3 !PGOFuncName !148 {
  %3 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %4 = load i8, ptr %3, align 1, !tbaa !140
  %5 = or i8 %4, %1
  store i8 %5, ptr %3, align 1, !tbaa !140
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_bm_elem_flag_disable(ptr nocapture noundef %0, i8 noundef zeroext %1) unnamed_addr #3 !PGOFuncName !149 {
  %3 = xor i8 %1, -1
  %4 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %5 = load i8, ptr %4, align 1, !tbaa !140
  %6 = and i8 %5, %3
  store i8 %6, ptr %4, align 1, !tbaa !140
  ret void
}

; Function Attrs: optsize
declare ptr @EDBM_face_find_nearest(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BM_mesh_active_face_get(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @BM_mesh_calc_path_face(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal zeroext i8 @facetag_filter_cb(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #4 !PGOFuncName !150 {
  %3 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %0, i8 noundef zeroext 2) #7, !range !72
  %4 = icmp eq i8 %3, 0
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @facetag_test_cb(ptr nocapture noundef readonly %0) unnamed_addr #4 !PGOFuncName !151 {
  %2 = tail call fastcc zeroext i8 @_bm_elem_flag_test_bool(ptr noundef %0) #7
  ret i8 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @facetag_set_cb(ptr noundef %0, i8 noundef zeroext %1, ptr nocapture noundef readonly %2) unnamed_addr #0 !PGOFuncName !152 {
  %4 = load ptr, ptr %2, align 8, !tbaa !89
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
define internal fastcc ptr @BM_iter_new(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) unnamed_addr #0 !PGOFuncName !153 {
  tail call fastcc void @BM_iter_init(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) #7
  %4 = tail call fastcc ptr @BM_iter_step(ptr noundef %0) #7
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @BM_iter_step(ptr noundef %0) unnamed_addr #0 !PGOFuncName !154 {
  %2 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !155
  %4 = tail call ptr %3(ptr noundef %0) #5
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal zeroext i8 @ele_filter_visible_cb(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #4 !PGOFuncName !157 {
  %3 = tail call fastcc zeroext i8 @_bm_elem_flag_test(ptr noundef %0, i8 noundef zeroext 2) #7, !range !72
  %4 = icmp eq i8 %3, 0
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: optsize
declare void @BM_elem_select_set(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @BM_iter_init(ptr noundef %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) unnamed_addr #0 !PGOFuncName !158 {
  %4 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 4
  store i8 %2, ptr %4, align 4, !tbaa !159
  %5 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %5, align 8, !tbaa !160
  %6 = getelementptr inbounds %struct.BMIter, ptr %0, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %6, align 8, !tbaa !155
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
  %16 = load ptr, ptr %15, align 8, !tbaa !161
  store ptr %16, ptr %0, align 8, !tbaa !162
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

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 6524701}
!4 = !{!"MaxCount", i64 1843200}
!5 = !{!"MaxInternalCount", i64 1843200}
!6 = !{!"MaxFunctionCount", i64 28800}
!7 = !{!"NumCounts", i64 117}
!8 = !{!"NumFunctions", i64 8}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1843200, i32 3}
!14 = !{i32 100000, i64 1843200, i32 3}
!15 = !{i32 200000, i64 1843200, i32 3}
!16 = !{i32 300000, i64 1843200, i32 3}
!17 = !{i32 400000, i64 1843200, i32 3}
!18 = !{i32 500000, i64 1843200, i32 3}
!19 = !{i32 600000, i64 1843200, i32 3}
!20 = !{i32 700000, i64 1843200, i32 3}
!21 = !{i32 800000, i64 1843200, i32 3}
!22 = !{i32 900000, i64 921600, i32 4}
!23 = !{i32 950000, i64 921600, i32 4}
!24 = !{i32 990000, i64 28800, i32 6}
!25 = !{i32 999000, i64 14400, i32 7}
!26 = !{i32 999900, i64 1440, i32 8}
!27 = !{i32 999990, i64 1440, i32 8}
!28 = !{i32 999999, i64 1, i32 37}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !36, i64 0}
!35 = !{!"wmOperatorType", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !39, i64 112, !36, i64 128, !36, i64 136, !36, i64 144, !40, i64 152, !41, i64 184}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"ListBase", !36, i64 0, !36, i64 8}
!40 = !{!"ExtensionRNA", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24}
!41 = !{!"short", !37, i64 0}
!42 = !{!35, !36, i64 8}
!43 = !{!35, !36, i64 24}
!44 = !{!35, !36, i64 48}
!45 = !{!35, !36, i64 72}
!46 = !{!35, !41, i64 184}
!47 = !{!35, !36, i64 88}
!48 = !{!"editmesh_path.c:edbm_shortest_path_pick_invoke"}
!49 = !{!50, !36, i64 48}
!50 = !{!"ViewContext", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !37, i64 56}
!51 = !{!52, !36, i64 0}
!52 = !{!"BMEditMesh", !36, i64 0, !36, i64 8, !53, i64 16, !36, i64 24, !53, i64 32, !36, i64 40, !36, i64 48, !54, i64 56, !36, i64 64, !53, i64 72, !36, i64 80, !53, i64 88, !41, i64 92, !41, i64 94, !36, i64 96, !53, i64 104}
!53 = !{!"int", !37, i64 0}
!54 = !{!"long", !37, i64 0}
!55 = !{!52, !41, i64 92}
!56 = !{!57, !37, i64 12}
!57 = !{!"BMElem", !58, i64 0}
!58 = !{!"BMHeader", !36, i64 0, !53, i64 8, !37, i64 12, !37, i64 13, !37, i64 14}
!59 = !{i8 0, i8 2}
!60 = !{!35, !36, i64 32}
!61 = !{!"editmesh_path.c:edbm_shortest_path_select_exec"}
!62 = !{!63, !36, i64 112}
!63 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !39, i64 128, !36, i64 144, !36, i64 152, !41, i64 160, !37, i64 162}
!64 = !{!65, !36, i64 968}
!65 = !{!"BMesh", !53, i64 0, !53, i64 4, !53, i64 8, !53, i64 12, !53, i64 16, !53, i64 20, !53, i64 24, !37, i64 28, !37, i64 29, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !53, i64 88, !53, i64 92, !53, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !53, i64 128, !36, i64 136, !66, i64 144, !66, i64 344, !66, i64 544, !66, i64 744, !41, i64 944, !53, i64 948, !53, i64 952, !53, i64 956, !39, i64 960, !36, i64 976, !39, i64 984, !36, i64 1000}
!66 = !{!"CustomData", !36, i64 0, !37, i64 8, !53, i64 172, !53, i64 176, !53, i64 180, !36, i64 184, !36, i64 192}
!67 = !{!68, !36, i64 8}
!68 = !{!"BMEditSelection", !36, i64 0, !36, i64 8, !36, i64 16, !37, i64 24}
!69 = !{!68, !37, i64 24}
!70 = !{!68, !36, i64 16}
!71 = !{!65, !53, i64 16}
!72 = !{i8 0, i8 9}
!73 = distinct !{!73, !74}
!74 = !{!"llvm.loop.mustprogress"}
!75 = !{!65, !53, i64 20}
!76 = distinct !{!76, !74}
!77 = !{!65, !53, i64 24}
!78 = distinct !{!78, !74}
!79 = !{!80, !36, i64 8}
!80 = !{!"LinkNode", !36, i64 0, !36, i64 8}
!81 = !{!80, !36, i64 0}
!82 = distinct !{!82, !74}
!83 = !{!63, !36, i64 120}
!84 = !{!"editmesh_path.c:copy_v2_v2_int"}
!85 = !{!53, !53, i64 0}
!86 = !{!"editmesh_path.c:mouse_mesh_shortest_path_vert"}
!87 = !{!88, !88, i64 0}
!88 = !{!"float", !37, i64 0}
!89 = !{!90, !36, i64 0}
!90 = !{!"UserData", !36, i64 0, !36, i64 8, !36, i64 16}
!91 = !{!50, !36, i64 16}
!92 = !{!93, !36, i64 296}
!93 = !{!"Object", !94, i64 0, !36, i64 120, !36, i64 128, !41, i64 136, !41, i64 138, !53, i64 140, !53, i64 144, !53, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !95, i64 312, !36, i64 360, !39, i64 368, !39, i64 384, !39, i64 400, !39, i64 416, !53, i64 432, !53, i64 436, !36, i64 440, !36, i64 448, !53, i64 456, !53, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !88, i64 616, !88, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !53, i64 944, !41, i64 948, !41, i64 950, !41, i64 952, !41, i64 954, !41, i64 956, !41, i64 958, !41, i64 960, !41, i64 962, !41, i64 964, !37, i64 966, !37, i64 967, !53, i64 968, !53, i64 972, !53, i64 976, !53, i64 980, !53, i64 984, !88, i64 988, !88, i64 992, !88, i64 996, !88, i64 1000, !88, i64 1004, !88, i64 1008, !88, i64 1012, !88, i64 1016, !88, i64 1020, !88, i64 1024, !88, i64 1028, !88, i64 1032, !41, i64 1036, !41, i64 1038, !41, i64 1040, !37, i64 1042, !37, i64 1043, !41, i64 1044, !37, i64 1046, !37, i64 1047, !88, i64 1048, !88, i64 1052, !39, i64 1056, !39, i64 1072, !39, i64 1088, !39, i64 1104, !88, i64 1120, !41, i64 1124, !41, i64 1126, !37, i64 1128, !53, i64 1144, !53, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !41, i64 1162, !37, i64 1164, !39, i64 1176, !39, i64 1192, !39, i64 1208, !39, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !41, i64 1266, !88, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !54, i64 1304, !54, i64 1312, !53, i64 1320, !53, i64 1324, !39, i64 1328, !39, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !39, i64 1400, !36, i64 1416}
!94 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !41, i64 98, !53, i64 100, !53, i64 104, !53, i64 108, !36, i64 112}
!95 = !{!"bAnimVizSettings", !53, i64 0, !53, i64 4, !53, i64 8, !53, i64 12, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !53, i64 32, !53, i64 36, !53, i64 40, !53, i64 44}
!96 = !{!90, !36, i64 8}
!97 = !{!50, !36, i64 0}
!98 = !{!90, !36, i64 16}
!99 = distinct !{!99, !74}
!100 = distinct !{!100, !74}
!101 = !{!"editmesh_path.c:mouse_mesh_shortest_path_edge"}
!102 = !{!103, !36, i64 264}
!103 = !{!"Scene", !94, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !39, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !53, i64 232, !53, i64 236, !53, i64 240, !41, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !104, i64 280, !113, i64 4264, !39, i64 4296, !39, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !41, i64 4376, !41, i64 4378, !53, i64 4380, !39, i64 4384, !114, i64 4400, !115, i64 4416, !118, i64 4600, !36, i64 4608, !119, i64 4616, !36, i64 4640, !54, i64 4648, !54, i64 4656, !106, i64 4664, !107, i64 4824, !120, i64 4888, !36, i64 4952}
!104 = !{!"RenderData", !105, i64 0, !36, i64 248, !36, i64 256, !108, i64 264, !109, i64 328, !53, i64 400, !53, i64 404, !53, i64 408, !88, i64 412, !53, i64 416, !53, i64 420, !53, i64 424, !53, i64 428, !41, i64 432, !41, i64 434, !88, i64 436, !88, i64 440, !88, i64 444, !88, i64 448, !88, i64 452, !41, i64 456, !41, i64 458, !41, i64 460, !41, i64 462, !41, i64 464, !41, i64 466, !53, i64 468, !41, i64 472, !41, i64 474, !41, i64 476, !41, i64 478, !41, i64 480, !41, i64 482, !53, i64 484, !53, i64 488, !41, i64 492, !41, i64 494, !53, i64 496, !53, i64 500, !41, i64 504, !41, i64 506, !41, i64 508, !41, i64 510, !41, i64 512, !37, i64 514, !37, i64 515, !53, i64 516, !53, i64 520, !53, i64 524, !41, i64 528, !41, i64 530, !41, i64 532, !41, i64 534, !41, i64 536, !41, i64 538, !41, i64 540, !41, i64 542, !110, i64 544, !110, i64 560, !111, i64 576, !39, i64 592, !41, i64 608, !41, i64 610, !88, i64 612, !88, i64 616, !88, i64 620, !88, i64 624, !53, i64 628, !88, i64 632, !88, i64 636, !88, i64 640, !88, i64 644, !41, i64 648, !41, i64 650, !41, i64 652, !41, i64 654, !41, i64 656, !41, i64 658, !88, i64 660, !88, i64 664, !41, i64 668, !41, i64 670, !88, i64 672, !88, i64 676, !37, i64 680, !53, i64 1704, !41, i64 1708, !41, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !53, i64 2520, !41, i64 2524, !41, i64 2526, !88, i64 2528, !88, i64 2532, !41, i64 2536, !41, i64 2538, !88, i64 2540, !41, i64 2544, !41, i64 2546, !53, i64 2548, !41, i64 2552, !41, i64 2554, !41, i64 2556, !41, i64 2558, !88, i64 2560, !88, i64 2564, !36, i64 2568, !53, i64 2576, !88, i64 2580, !37, i64 2584, !112, i64 2616, !53, i64 3976, !53, i64 3980}
!105 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !41, i64 8, !41, i64 10, !88, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !106, i64 24, !107, i64 184}
!106 = !{!"ColorManagedViewSettings", !53, i64 0, !53, i64 4, !37, i64 8, !37, i64 72, !88, i64 136, !88, i64 140, !36, i64 144, !36, i64 152}
!107 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!108 = !{!"QuicktimeCodecSettings", !53, i64 0, !53, i64 4, !53, i64 8, !53, i64 12, !53, i64 16, !53, i64 20, !53, i64 24, !53, i64 28, !53, i64 32, !53, i64 36, !53, i64 40, !53, i64 44, !41, i64 48, !41, i64 50, !53, i64 52, !53, i64 56, !53, i64 60}
!109 = !{!"FFMpegCodecData", !53, i64 0, !53, i64 4, !53, i64 8, !53, i64 12, !53, i64 16, !53, i64 20, !53, i64 24, !53, i64 28, !88, i64 32, !53, i64 36, !53, i64 40, !53, i64 44, !53, i64 48, !53, i64 52, !53, i64 56, !53, i64 60, !36, i64 64}
!110 = !{!"rctf", !88, i64 0, !88, i64 4, !88, i64 8, !88, i64 12}
!111 = !{!"rcti", !53, i64 0, !53, i64 4, !53, i64 8, !53, i64 12}
!112 = !{!"BakeData", !105, i64 0, !37, i64 248, !41, i64 1272, !41, i64 1274, !41, i64 1276, !41, i64 1278, !88, i64 1280, !88, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!113 = !{!"AudioData", !53, i64 0, !88, i64 4, !88, i64 8, !88, i64 12, !53, i64 16, !41, i64 20, !41, i64 22, !88, i64 24, !88, i64 28}
!114 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!115 = !{!"GameData", !114, i64 0, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !41, i64 32, !37, i64 34, !116, i64 40, !41, i64 64, !41, i64 66, !88, i64 68, !117, i64 72, !88, i64 128, !88, i64 132, !53, i64 136, !41, i64 140, !41, i64 142, !41, i64 144, !41, i64 146, !41, i64 148, !41, i64 150, !41, i64 152, !41, i64 154, !41, i64 156, !41, i64 158, !41, i64 160, !41, i64 162, !88, i64 164, !88, i64 168, !88, i64 172, !88, i64 176, !88, i64 180}
!116 = !{!"GameDome", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !88, i64 8, !88, i64 12, !36, i64 16}
!117 = !{!"RecastData", !88, i64 0, !88, i64 4, !88, i64 8, !88, i64 12, !88, i64 16, !88, i64 20, !88, i64 24, !88, i64 28, !88, i64 32, !88, i64 36, !53, i64 40, !88, i64 44, !88, i64 48, !41, i64 52, !41, i64 54}
!118 = !{!"UnitSettings", !88, i64 0, !37, i64 4, !37, i64 5, !41, i64 6}
!119 = !{!"PhysicsSettings", !37, i64 0, !53, i64 12, !53, i64 16, !53, i64 20}
!120 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!121 = !{!122, !37, i64 429}
!122 = !{!"ToolSettings", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !88, i64 32, !88, i64 36, !88, i64 40, !41, i64 44, !41, i64 46, !37, i64 48, !37, i64 49, !37, i64 50, !37, i64 51, !88, i64 52, !41, i64 56, !37, i64 58, !37, i64 59, !123, i64 64, !125, i64 168, !88, i64 336, !88, i64 340, !41, i64 344, !41, i64 346, !37, i64 348, !37, i64 349, !41, i64 350, !88, i64 352, !88, i64 356, !88, i64 360, !88, i64 364, !88, i64 368, !88, i64 372, !88, i64 376, !88, i64 380, !88, i64 384, !88, i64 388, !41, i64 392, !37, i64 394, !37, i64 395, !37, i64 396, !37, i64 399, !36, i64 400, !37, i64 408, !37, i64 409, !37, i64 410, !37, i64 411, !37, i64 412, !37, i64 413, !37, i64 421, !37, i64 429, !37, i64 430, !37, i64 431, !37, i64 432, !37, i64 433, !41, i64 434, !41, i64 436, !41, i64 438, !41, i64 440, !37, i64 442, !37, i64 443, !37, i64 444, !37, i64 445, !37, i64 446, !37, i64 447, !53, i64 448, !53, i64 452, !53, i64 456, !53, i64 460, !41, i64 464, !41, i64 466, !53, i64 468, !88, i64 472, !88, i64 476, !126, i64 480, !127, i64 608}
!123 = !{!"ImagePaintSettings", !124, i64 0, !41, i64 40, !41, i64 42, !41, i64 44, !41, i64 46, !37, i64 48, !53, i64 52, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !37, i64 88, !88, i64 100}
!124 = !{!"Paint", !36, i64 0, !36, i64 8, !36, i64 16, !37, i64 24, !53, i64 28, !53, i64 32, !53, i64 36}
!125 = !{!"ParticleEditSettings", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !37, i64 8, !36, i64 120, !88, i64 128, !88, i64 132, !53, i64 136, !53, i64 140, !53, i64 144, !53, i64 148, !36, i64 152, !36, i64 160}
!126 = !{!"UnifiedPaintSettings", !53, i64 0, !88, i64 4, !88, i64 8, !88, i64 12, !37, i64 16, !37, i64 28, !53, i64 40, !37, i64 44, !88, i64 52, !53, i64 56, !53, i64 60, !37, i64 64, !37, i64 65, !88, i64 72, !37, i64 76, !53, i64 84, !88, i64 88, !37, i64 92, !37, i64 100, !53, i64 108, !36, i64 112, !88, i64 120, !53, i64 124}
!127 = !{!"MeshStatVis", !37, i64 0, !37, i64 1, !37, i64 3, !88, i64 4, !88, i64 8, !88, i64 12, !88, i64 16, !37, i64 20, !37, i64 21, !88, i64 24, !88, i64 28, !88, i64 32, !88, i64 36}
!128 = !{!52, !36, i64 96}
!129 = distinct !{!129, !74}
!130 = distinct !{!130, !74}
!131 = !{!132, !53, i64 1344}
!132 = !{!"Mesh", !94, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !66, i64 280, !66, i64 480, !66, i64 680, !66, i64 880, !66, i64 1080, !53, i64 1280, !53, i64 1284, !53, i64 1288, !53, i64 1292, !53, i64 1296, !53, i64 1300, !53, i64 1304, !37, i64 1308, !37, i64 1320, !37, i64 1332, !53, i64 1344, !41, i64 1348, !41, i64 1350, !88, i64 1352, !53, i64 1356, !37, i64 1360, !37, i64 1361, !37, i64 1362, !37, i64 1363, !37, i64 1364, !37, i64 1365, !41, i64 1366, !36, i64 1368}
!133 = !{!"editmesh_path.c:mouse_mesh_shortest_path_face"}
!134 = distinct !{!134, !74}
!135 = distinct !{!135, !74}
!136 = !{!"editmesh_path.c:verttag_filter_cb"}
!137 = !{!"editmesh_path.c:verttag_test_cb"}
!138 = !{!"editmesh_path.c:verttag_set_cb"}
!139 = !{!"editmesh_path.c:_bm_elem_flag_test"}
!140 = !{!58, !37, i64 13}
!141 = !{!"editmesh_path.c:_bm_elem_flag_test_bool"}
!142 = !{!"editmesh_path.c:edgetag_ensure_cd_flag"}
!143 = !{!132, !36, i64 272}
!144 = !{!"editmesh_path.c:edgetag_filter_cb"}
!145 = !{!"editmesh_path.c:edgetag_test_cb"}
!146 = !{!"editmesh_path.c:edgetag_set_cb"}
!147 = !{!"editmesh_path.c:_bm_elem_flag_set"}
!148 = !{!"editmesh_path.c:_bm_elem_flag_enable"}
!149 = !{!"editmesh_path.c:_bm_elem_flag_disable"}
!150 = !{!"editmesh_path.c:facetag_filter_cb"}
!151 = !{!"editmesh_path.c:facetag_test_cb"}
!152 = !{!"editmesh_path.c:facetag_set_cb"}
!153 = !{!"editmesh_path.c:BM_iter_new"}
!154 = !{!"editmesh_path.c:BM_iter_step"}
!155 = !{!156, !36, i64 48}
!156 = !{!"BMIter", !37, i64 0, !36, i64 40, !36, i64 48, !53, i64 56, !37, i64 60}
!157 = !{!"editmesh_path.c:ele_filter_visible_cb"}
!158 = !{!"editmesh_path.c:BM_iter_init"}
!159 = !{!156, !37, i64 60}
!160 = !{!156, !36, i64 40}
!161 = !{!36, !36, i64 0}
!162 = !{!37, !37, i64 0}

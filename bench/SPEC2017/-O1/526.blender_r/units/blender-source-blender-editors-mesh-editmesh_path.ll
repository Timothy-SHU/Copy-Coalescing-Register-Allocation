; ModuleID = 'blender/source/blender/editors/mesh/editmesh_path.c'
source_filename = "blender/source/blender/editors/mesh/editmesh_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ListBase = type { ptr, ptr }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.UserData = type { ptr, ptr, ptr }
%struct.ViewContext = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x i32] }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
%struct.BMEditMesh = type { ptr, ptr, i32, ptr, i32, ptr, ptr, i64, ptr, i32, ptr, i32, i16, i16, ptr, i32 }
%struct.BMHeader = type { ptr, i32, i8, i8, i8 }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.LinkNode = type { ptr, ptr }
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
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.BMesh = type { i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i16, i32, i32, i32, %struct.ListBase, ptr, %struct.ListBase, ptr }
%struct.BMIter = type { %union.anon, ptr, ptr, i32, i8 }
%union.anon = type { %struct.BMIter__face_of_vert }
%struct.BMIter__face_of_vert = type { ptr, ptr, ptr, ptr, ptr }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.BMEditSelection = type { ptr, ptr, ptr, i8 }

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

; Function Attrs: nounwind uwtable
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
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.3, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @edbm_shortest_path_pick_invoke(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca float, align 4
  %5 = alloca %struct.UserData, align 8
  %6 = alloca float, align 4
  %7 = alloca %struct.UserData, align 8
  %8 = alloca float, align 4
  %9 = alloca %struct.UserData, align 8
  %10 = alloca %struct.ViewContext, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #4
  call void @em_setup_viewcontext(ptr noundef %0, ptr noundef nonnull %10) #4
  %11 = getelementptr inbounds %struct.ViewContext, ptr %10, i64 0, i32 7
  %12 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %13 = load i32, ptr %12, align 4, !tbaa !48
  store i32 %13, ptr %11, align 8, !tbaa !48
  %14 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6, i64 1
  %15 = load i32, ptr %14, align 4, !tbaa !48
  %16 = getelementptr inbounds %struct.ViewContext, ptr %10, i64 0, i32 7, i64 1
  store i32 %15, ptr %16, align 4, !tbaa !48
  %17 = getelementptr inbounds %struct.ViewContext, ptr %10, i64 0, i32 6
  %18 = load ptr, ptr %17, align 8, !tbaa !50
  %19 = load ptr, ptr %18, align 8, !tbaa !52
  %20 = call ptr @BM_mesh_active_elem_get(ptr noundef %19) #4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %379, label %22

22:                                               ; preds = %3
  call void @view3d_operator_needs_opengl(ptr noundef %0) #4
  %23 = getelementptr inbounds %struct.BMEditMesh, ptr %18, i64 0, i32 12
  %24 = load i16, ptr %23, align 4, !tbaa !55
  %25 = and i16 %24, 1
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %95, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.BMHeader, ptr %20, i64 0, i32 2
  %29 = load i8, ptr %28, align 4, !tbaa !56
  %30 = icmp eq i8 %29, 1
  br i1 %30, label %31, label %95

31:                                               ; preds = %27
  %32 = load ptr, ptr %17, align 8, !tbaa !50
  %33 = load ptr, ptr %32, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #4
  %34 = call float @ED_view3d_select_dist_px() #4
  store float %34, ptr %8, align 4, !tbaa !59
  %35 = call ptr @EDBM_vert_find_nearest(ptr noundef nonnull %10, ptr noundef nonnull %8, i8 noundef zeroext 0, i8 noundef zeroext 0) #4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %93, label %37

37:                                               ; preds = %31
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #4
  store ptr %33, ptr %9, align 8, !tbaa !61
  %38 = getelementptr inbounds %struct.UserData, ptr %9, i64 0, i32 1
  %39 = getelementptr inbounds %struct.ViewContext, ptr %10, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !63
  %41 = getelementptr inbounds %struct.Object, ptr %40, i64 0, i32 19
  %42 = load ptr, ptr %41, align 8, !tbaa !64
  store ptr %42, ptr %38, align 8, !tbaa !68
  %43 = getelementptr inbounds %struct.UserData, ptr %9, i64 0, i32 2
  %44 = load ptr, ptr %10, align 8, !tbaa !69
  store ptr %44, ptr %43, align 8, !tbaa !70
  %45 = call ptr @BM_mesh_active_vert_get(ptr noundef %33) #4
  %46 = icmp eq ptr %45, null
  %47 = icmp eq ptr %45, %35
  %48 = or i1 %46, %47
  br i1 %48, label %54, label %49

49:                                               ; preds = %37
  %50 = call ptr @BM_mesh_calc_path_vert(ptr noundef %33, ptr noundef nonnull %45, ptr noundef nonnull %35, i8 noundef zeroext 1, ptr noundef nonnull %9, ptr noundef nonnull @verttag_filter_cb) #4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %54, label %52

52:                                               ; preds = %49
  %53 = call zeroext i8 @_bm_select_history_remove(ptr noundef %33, ptr noundef nonnull %45) #4
  br label %54

54:                                               ; preds = %52, %49, %37
  %55 = phi ptr [ %50, %52 ], [ null, %49 ], [ null, %37 ]
  %56 = icmp eq ptr %55, null
  br i1 %56, label %78, label %57

57:                                               ; preds = %54, %65
  %58 = phi ptr [ %66, %65 ], [ %55, %54 ]
  %59 = getelementptr inbounds %struct.LinkNode, ptr %58, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !71
  %61 = getelementptr inbounds %struct.BMHeader, ptr %60, i64 0, i32 3
  %62 = load i8, ptr %61, align 1, !tbaa !73
  %63 = and i8 %62, 1
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %57
  %66 = load ptr, ptr %58, align 8, !tbaa !74
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %57, !llvm.loop !75

68:                                               ; preds = %65, %57
  %69 = xor i8 %63, 1
  br label %70

70:                                               ; preds = %70, %68
  %71 = phi ptr [ %55, %68 ], [ %75, %70 ]
  %72 = getelementptr inbounds %struct.LinkNode, ptr %71, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !71
  %74 = load ptr, ptr %9, align 8, !tbaa !61
  call void @BM_vert_select_set(ptr noundef %74, ptr noundef %73, i8 noundef zeroext %69) #4
  %75 = load ptr, ptr %71, align 8, !tbaa !74
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %70, !llvm.loop !78

77:                                               ; preds = %70
  call void @BLI_linklist_free(ptr noundef nonnull %55, ptr noundef null) #4
  br label %84

78:                                               ; preds = %54
  %79 = getelementptr inbounds %struct.BMHeader, ptr %35, i64 0, i32 3
  %80 = load i8, ptr %79, align 1, !tbaa !73
  %81 = and i8 %80, 1
  %82 = xor i8 %81, 1
  %83 = load ptr, ptr %9, align 8, !tbaa !61
  call void @BM_vert_select_set(ptr noundef %83, ptr noundef nonnull %35, i8 noundef zeroext %82) #4
  br label %84

84:                                               ; preds = %78, %77
  call void @EDBM_selectmode_flush(ptr noundef nonnull %32) #4
  %85 = getelementptr inbounds %struct.BMHeader, ptr %35, i64 0, i32 3
  %86 = load i8, ptr %85, align 1, !tbaa !73
  %87 = and i8 %86, 1
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %84
  %90 = call zeroext i8 @_bm_select_history_remove(ptr noundef %33, ptr noundef nonnull %35) #4
  br label %92

91:                                               ; preds = %84
  call void @_bm_select_history_store(ptr noundef %33, ptr noundef nonnull %35) #4
  br label %92

92:                                               ; preds = %91, %89
  call void @EDBM_update_generic(ptr noundef nonnull %32, i8 noundef zeroext 0, i8 noundef zeroext 0) #4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #4
  br label %93

93:                                               ; preds = %31, %92
  %94 = phi i32 [ 4, %92 ], [ 8, %31 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #4
  br label %379

95:                                               ; preds = %27, %22
  %96 = and i16 %24, 2
  %97 = icmp eq i16 %96, 0
  br i1 %97, label %308, label %98

98:                                               ; preds = %95
  %99 = getelementptr inbounds %struct.BMHeader, ptr %20, i64 0, i32 2
  %100 = load i8, ptr %99, align 4, !tbaa !56
  %101 = icmp eq i8 %100, 2
  br i1 %101, label %102, label %308

102:                                              ; preds = %98
  %103 = load ptr, ptr %17, align 8, !tbaa !50
  %104 = load ptr, ptr %103, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #4
  %105 = call float @ED_view3d_select_dist_px() #4
  store float %105, ptr %6, align 4, !tbaa !59
  %106 = call ptr @EDBM_edge_find_nearest(ptr noundef nonnull %10, ptr noundef nonnull %6) #4
  %107 = icmp eq ptr %106, null
  br i1 %107, label %306, label %108

108:                                              ; preds = %102
  %109 = load ptr, ptr %10, align 8, !tbaa !69
  %110 = getelementptr inbounds %struct.Scene, ptr %109, i64 0, i32 20
  %111 = load ptr, ptr %110, align 8, !tbaa !79
  %112 = getelementptr inbounds %struct.ToolSettings, ptr %111, i64 0, i32 49
  %113 = load i8, ptr %112, align 1, !tbaa !98
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #4
  store ptr %104, ptr %7, align 8, !tbaa !61
  %114 = getelementptr inbounds %struct.UserData, ptr %7, i64 0, i32 1
  %115 = getelementptr inbounds %struct.ViewContext, ptr %10, i64 0, i32 2
  %116 = load ptr, ptr %115, align 8, !tbaa !63
  %117 = getelementptr inbounds %struct.Object, ptr %116, i64 0, i32 19
  %118 = load ptr, ptr %117, align 8, !tbaa !64
  store ptr %118, ptr %114, align 8, !tbaa !68
  %119 = getelementptr inbounds %struct.UserData, ptr %7, i64 0, i32 2
  store ptr %109, ptr %119, align 8, !tbaa !70
  %120 = call ptr @BM_mesh_active_edge_get(ptr noundef %104) #4
  %121 = load ptr, ptr %10, align 8, !tbaa !69
  %122 = getelementptr inbounds %struct.BMEditMesh, ptr %103, i64 0, i32 14
  %123 = load ptr, ptr %122, align 8, !tbaa !105
  %124 = getelementptr inbounds %struct.Object, ptr %123, i64 0, i32 19
  %125 = load ptr, ptr %124, align 8, !tbaa !64
  %126 = getelementptr inbounds %struct.Mesh, ptr %125, i64 0, i32 20
  %127 = load ptr, ptr %126, align 8, !tbaa !106
  %128 = load ptr, ptr %127, align 8, !tbaa !52
  %129 = getelementptr inbounds %struct.Scene, ptr %121, i64 0, i32 20
  %130 = load ptr, ptr %129, align 8, !tbaa !79
  %131 = getelementptr inbounds %struct.ToolSettings, ptr %130, i64 0, i32 49
  %132 = load i8, ptr %131, align 1, !tbaa !98
  switch i8 %132, label %136 [
    i8 3, label %134
    i8 4, label %133
  ]

133:                                              ; preds = %108
  br label %134

134:                                              ; preds = %108, %133
  %135 = phi i8 [ 2, %133 ], [ 4, %108 ]
  call void @BM_mesh_cd_flag_ensure(ptr noundef %128, ptr noundef %125, i8 noundef zeroext %135) #4
  br label %136

136:                                              ; preds = %134, %108
  %137 = icmp eq ptr %120, null
  %138 = icmp eq ptr %120, %106
  %139 = or i1 %137, %138
  br i1 %139, label %145, label %140

140:                                              ; preds = %136
  %141 = call ptr @BM_mesh_calc_path_edge(ptr noundef %104, ptr noundef nonnull %120, ptr noundef nonnull %106, i8 noundef zeroext 1, ptr noundef nonnull %7, ptr noundef nonnull @edgetag_filter_cb) #4
  %142 = icmp eq ptr %141, null
  br i1 %142, label %145, label %143

143:                                              ; preds = %140
  %144 = call zeroext i8 @_bm_select_history_remove(ptr noundef %104, ptr noundef nonnull %120) #4
  br label %145

145:                                              ; preds = %143, %140, %136
  %146 = phi ptr [ %141, %143 ], [ null, %140 ], [ null, %136 ]
  %147 = icmp eq ptr %146, null
  br i1 %147, label %196, label %148

148:                                              ; preds = %145, %183
  %149 = phi ptr [ %184, %183 ], [ %146, %145 ]
  %150 = getelementptr inbounds %struct.LinkNode, ptr %149, i64 0, i32 1
  %151 = load ptr, ptr %150, align 8, !tbaa !71
  %152 = load ptr, ptr %119, align 8, !tbaa !70
  %153 = load ptr, ptr %7, align 8, !tbaa !61
  %154 = getelementptr inbounds %struct.Scene, ptr %152, i64 0, i32 20
  %155 = load ptr, ptr %154, align 8, !tbaa !79
  %156 = getelementptr inbounds %struct.ToolSettings, ptr %155, i64 0, i32 49
  %157 = load i8, ptr %156, align 1, !tbaa !98
  switch i8 %157, label %181 [
    i8 0, label %158
    i8 1, label %163
    i8 2, label %168
    i8 3, label %173
    i8 4, label %177
  ]

158:                                              ; preds = %148
  %159 = getelementptr inbounds %struct.BMHeader, ptr %151, i64 0, i32 3
  %160 = load i8, ptr %159, align 1, !tbaa !73
  %161 = and i8 %160, 1
  %162 = icmp ne i8 %161, 0
  br label %181

163:                                              ; preds = %148
  %164 = getelementptr inbounds %struct.BMHeader, ptr %151, i64 0, i32 3
  %165 = load i8, ptr %164, align 1, !tbaa !73
  %166 = and i8 %165, 4
  %167 = icmp ne i8 %166, 0
  br label %181

168:                                              ; preds = %148
  %169 = getelementptr inbounds %struct.BMHeader, ptr %151, i64 0, i32 3
  %170 = load i8, ptr %169, align 1, !tbaa !73
  %171 = and i8 %170, 8
  %172 = icmp eq i8 %171, 0
  br label %181

173:                                              ; preds = %148
  %174 = getelementptr inbounds %struct.BMesh, ptr %153, i64 0, i32 25
  %175 = call float @BM_elem_float_data_get(ptr noundef nonnull %174, ptr noundef %151, i32 noundef 30) #4
  %176 = fcmp une float %175, 0.000000e+00
  br label %181

177:                                              ; preds = %148
  %178 = getelementptr inbounds %struct.BMesh, ptr %153, i64 0, i32 25
  %179 = call float @BM_elem_float_data_get(ptr noundef nonnull %178, ptr noundef %151, i32 noundef 29) #4
  %180 = fcmp une float %179, 0.000000e+00
  br label %181

181:                                              ; preds = %148, %158, %163, %168, %173, %177
  %182 = phi i1 [ %180, %177 ], [ %176, %173 ], [ %172, %168 ], [ %167, %163 ], [ %162, %158 ], [ false, %148 ]
  br i1 %182, label %183, label %186

183:                                              ; preds = %181
  %184 = load ptr, ptr %149, align 8, !tbaa !74
  %185 = icmp eq ptr %184, null
  br i1 %185, label %186, label %148, !llvm.loop !109

186:                                              ; preds = %183, %181
  %187 = xor i1 %182, true
  %188 = zext i1 %187 to i8
  br label %189

189:                                              ; preds = %189, %186
  %190 = phi ptr [ %146, %186 ], [ %193, %189 ]
  %191 = getelementptr inbounds %struct.LinkNode, ptr %190, i64 0, i32 1
  %192 = load ptr, ptr %191, align 8, !tbaa !71
  call fastcc void @edgetag_set_cb(ptr noundef %192, i8 noundef zeroext %188, ptr noundef nonnull %7)
  %193 = load ptr, ptr %190, align 8, !tbaa !74
  %194 = icmp eq ptr %193, null
  br i1 %194, label %195, label %189, !llvm.loop !110

195:                                              ; preds = %189
  call void @BLI_linklist_free(ptr noundef nonnull %146, ptr noundef null) #4
  br label %245

196:                                              ; preds = %145
  %197 = load ptr, ptr %119, align 8, !tbaa !70
  %198 = load ptr, ptr %7, align 8, !tbaa !61
  %199 = getelementptr inbounds %struct.Scene, ptr %197, i64 0, i32 20
  %200 = load ptr, ptr %199, align 8, !tbaa !79
  %201 = getelementptr inbounds %struct.ToolSettings, ptr %200, i64 0, i32 49
  %202 = load i8, ptr %201, align 1, !tbaa !98
  switch i8 %202, label %226 [
    i8 0, label %203
    i8 1, label %208
    i8 2, label %213
    i8 3, label %218
    i8 4, label %222
  ]

203:                                              ; preds = %196
  %204 = getelementptr inbounds %struct.BMHeader, ptr %106, i64 0, i32 3
  %205 = load i8, ptr %204, align 1, !tbaa !73
  %206 = and i8 %205, 1
  %207 = icmp ne i8 %206, 0
  br label %226

208:                                              ; preds = %196
  %209 = getelementptr inbounds %struct.BMHeader, ptr %106, i64 0, i32 3
  %210 = load i8, ptr %209, align 1, !tbaa !73
  %211 = and i8 %210, 4
  %212 = icmp ne i8 %211, 0
  br label %226

213:                                              ; preds = %196
  %214 = getelementptr inbounds %struct.BMHeader, ptr %106, i64 0, i32 3
  %215 = load i8, ptr %214, align 1, !tbaa !73
  %216 = and i8 %215, 8
  %217 = icmp eq i8 %216, 0
  br label %226

218:                                              ; preds = %196
  %219 = getelementptr inbounds %struct.BMesh, ptr %198, i64 0, i32 25
  %220 = call float @BM_elem_float_data_get(ptr noundef nonnull %219, ptr noundef nonnull %106, i32 noundef 30) #4
  %221 = fcmp une float %220, 0.000000e+00
  br label %226

222:                                              ; preds = %196
  %223 = getelementptr inbounds %struct.BMesh, ptr %198, i64 0, i32 25
  %224 = call float @BM_elem_float_data_get(ptr noundef nonnull %223, ptr noundef nonnull %106, i32 noundef 29) #4
  %225 = fcmp une float %224, 0.000000e+00
  br label %226

226:                                              ; preds = %196, %203, %208, %213, %218, %222
  %227 = phi i1 [ %225, %222 ], [ %221, %218 ], [ %217, %213 ], [ %212, %208 ], [ %207, %203 ], [ false, %196 ]
  %228 = xor i1 %227, true
  %229 = zext i1 %228 to i8
  %230 = load ptr, ptr %10, align 8, !tbaa !69
  %231 = load ptr, ptr %115, align 8, !tbaa !63
  %232 = getelementptr inbounds %struct.Object, ptr %231, i64 0, i32 19
  %233 = load ptr, ptr %232, align 8, !tbaa !64
  %234 = getelementptr inbounds %struct.Mesh, ptr %233, i64 0, i32 20
  %235 = load ptr, ptr %234, align 8, !tbaa !106
  %236 = load ptr, ptr %235, align 8, !tbaa !52
  %237 = getelementptr inbounds %struct.Scene, ptr %230, i64 0, i32 20
  %238 = load ptr, ptr %237, align 8, !tbaa !79
  %239 = getelementptr inbounds %struct.ToolSettings, ptr %238, i64 0, i32 49
  %240 = load i8, ptr %239, align 1, !tbaa !98
  switch i8 %240, label %244 [
    i8 3, label %242
    i8 4, label %241
  ]

241:                                              ; preds = %226
  br label %242

242:                                              ; preds = %226, %241
  %243 = phi i8 [ 2, %241 ], [ 4, %226 ]
  call void @BM_mesh_cd_flag_ensure(ptr noundef %236, ptr noundef %233, i8 noundef zeroext %243) #4
  br label %244

244:                                              ; preds = %242, %226
  call fastcc void @edgetag_set_cb(ptr noundef nonnull %106, i8 noundef zeroext %229, ptr noundef nonnull %7)
  br label %245

245:                                              ; preds = %244, %195
  %246 = icmp eq i8 %113, 0
  br i1 %246, label %250, label %247

247:                                              ; preds = %245
  br i1 %137, label %249, label %248

248:                                              ; preds = %247
  call void @BM_edge_select_set(ptr noundef %104, ptr noundef nonnull %120, i8 noundef zeroext 0) #4
  br label %249

249:                                              ; preds = %248, %247
  call void @BM_edge_select_set(ptr noundef %104, ptr noundef nonnull %106, i8 noundef zeroext 1) #4
  call void @_bm_select_history_store(ptr noundef %104, ptr noundef nonnull %106) #4
  br label %250

250:                                              ; preds = %249, %245
  call void @EDBM_selectmode_flush(ptr noundef nonnull %103) #4
  switch i8 %113, label %305 [
    i8 0, label %251
    i8 1, label %287
    i8 2, label %293
    i8 3, label %297
    i8 4, label %301
  ]

251:                                              ; preds = %250
  %252 = load ptr, ptr %119, align 8, !tbaa !70
  %253 = load ptr, ptr %7, align 8, !tbaa !61
  %254 = getelementptr inbounds %struct.Scene, ptr %252, i64 0, i32 20
  %255 = load ptr, ptr %254, align 8, !tbaa !79
  %256 = getelementptr inbounds %struct.ToolSettings, ptr %255, i64 0, i32 49
  %257 = load i8, ptr %256, align 1, !tbaa !98
  switch i8 %257, label %283 [
    i8 0, label %258
    i8 1, label %263
    i8 2, label %268
    i8 3, label %273
    i8 4, label %277
  ]

258:                                              ; preds = %251
  %259 = getelementptr inbounds %struct.BMHeader, ptr %106, i64 0, i32 3
  %260 = load i8, ptr %259, align 1, !tbaa !73
  %261 = and i8 %260, 1
  %262 = icmp ne i8 %261, 0
  br label %281

263:                                              ; preds = %251
  %264 = getelementptr inbounds %struct.BMHeader, ptr %106, i64 0, i32 3
  %265 = load i8, ptr %264, align 1, !tbaa !73
  %266 = and i8 %265, 4
  %267 = icmp ne i8 %266, 0
  br label %281

268:                                              ; preds = %251
  %269 = getelementptr inbounds %struct.BMHeader, ptr %106, i64 0, i32 3
  %270 = load i8, ptr %269, align 1, !tbaa !73
  %271 = and i8 %270, 8
  %272 = icmp eq i8 %271, 0
  br label %281

273:                                              ; preds = %251
  %274 = getelementptr inbounds %struct.BMesh, ptr %253, i64 0, i32 25
  %275 = call float @BM_elem_float_data_get(ptr noundef nonnull %274, ptr noundef nonnull %106, i32 noundef 30) #4
  %276 = fcmp une float %275, 0.000000e+00
  br label %281

277:                                              ; preds = %251
  %278 = getelementptr inbounds %struct.BMesh, ptr %253, i64 0, i32 25
  %279 = call float @BM_elem_float_data_get(ptr noundef nonnull %278, ptr noundef nonnull %106, i32 noundef 29) #4
  %280 = fcmp une float %279, 0.000000e+00
  br label %281

281:                                              ; preds = %258, %263, %268, %273, %277
  %282 = phi i1 [ %280, %277 ], [ %276, %273 ], [ %272, %268 ], [ %267, %263 ], [ %262, %258 ]
  br i1 %282, label %285, label %283

283:                                              ; preds = %251, %281
  %284 = call zeroext i8 @_bm_select_history_remove(ptr noundef %104, ptr noundef nonnull %106) #4
  br label %286

285:                                              ; preds = %281
  call void @_bm_select_history_store(ptr noundef %104, ptr noundef nonnull %106) #4
  br label %286

286:                                              ; preds = %285, %283
  switch i8 %113, label %305 [
    i8 1, label %287
    i8 2, label %293
    i8 3, label %297
    i8 4, label %301
  ]

287:                                              ; preds = %286, %250
  %288 = getelementptr inbounds %struct.Mesh, ptr %118, i64 0, i32 36
  %289 = load i32, ptr %288, align 8, !tbaa !111
  %290 = or i32 %289, 128
  store i32 %290, ptr %288, align 8, !tbaa !111
  %291 = load ptr, ptr %10, align 8, !tbaa !69
  %292 = load ptr, ptr %115, align 8, !tbaa !63
  call void @ED_uvedit_live_unwrap(ptr noundef %291, ptr noundef %292) #4
  br label %305

293:                                              ; preds = %286, %250
  %294 = getelementptr inbounds %struct.Mesh, ptr %118, i64 0, i32 36
  %295 = load i32, ptr %294, align 8, !tbaa !111
  %296 = or i32 %295, 256
  store i32 %296, ptr %294, align 8, !tbaa !111
  br label %305

297:                                              ; preds = %286, %250
  %298 = getelementptr inbounds %struct.Mesh, ptr %118, i64 0, i32 36
  %299 = load i32, ptr %298, align 8, !tbaa !111
  %300 = or i32 %299, 64
  store i32 %300, ptr %298, align 8, !tbaa !111
  br label %305

301:                                              ; preds = %286, %250
  %302 = getelementptr inbounds %struct.Mesh, ptr %118, i64 0, i32 36
  %303 = load i32, ptr %302, align 8, !tbaa !111
  %304 = or i32 %303, 512
  store i32 %304, ptr %302, align 8, !tbaa !111
  br label %305

305:                                              ; preds = %301, %297, %293, %287, %286, %250
  call void @EDBM_update_generic(ptr noundef nonnull %103, i8 noundef zeroext 0, i8 noundef zeroext 0) #4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #4
  br label %306

306:                                              ; preds = %102, %305
  %307 = phi i32 [ 4, %305 ], [ 8, %102 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #4
  br label %379

308:                                              ; preds = %98, %95
  %309 = and i16 %24, 4
  %310 = icmp eq i16 %309, 0
  br i1 %310, label %379, label %311

311:                                              ; preds = %308
  %312 = getelementptr inbounds %struct.BMHeader, ptr %20, i64 0, i32 2
  %313 = load i8, ptr %312, align 4, !tbaa !56
  %314 = icmp eq i8 %313, 8
  br i1 %314, label %315, label %379

315:                                              ; preds = %311
  %316 = load ptr, ptr %17, align 8, !tbaa !50
  %317 = load ptr, ptr %316, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #4
  %318 = call float @ED_view3d_select_dist_px() #4
  store float %318, ptr %4, align 4, !tbaa !59
  %319 = call ptr @EDBM_face_find_nearest(ptr noundef nonnull %10, ptr noundef nonnull %4) #4
  %320 = icmp eq ptr %319, null
  br i1 %320, label %377, label %321

321:                                              ; preds = %315
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #4
  store ptr %317, ptr %5, align 8, !tbaa !61
  %322 = getelementptr inbounds %struct.UserData, ptr %5, i64 0, i32 1
  %323 = getelementptr inbounds %struct.ViewContext, ptr %10, i64 0, i32 2
  %324 = load ptr, ptr %323, align 8, !tbaa !63
  %325 = getelementptr inbounds %struct.Object, ptr %324, i64 0, i32 19
  %326 = load ptr, ptr %325, align 8, !tbaa !64
  store ptr %326, ptr %322, align 8, !tbaa !68
  %327 = getelementptr inbounds %struct.UserData, ptr %5, i64 0, i32 2
  %328 = load ptr, ptr %10, align 8, !tbaa !69
  store ptr %328, ptr %327, align 8, !tbaa !70
  %329 = call ptr @BM_mesh_active_face_get(ptr noundef %317, i8 noundef zeroext 0, i8 noundef zeroext 1) #4
  %330 = icmp eq ptr %329, null
  %331 = icmp eq ptr %329, %319
  %332 = or i1 %330, %331
  br i1 %332, label %338, label %333

333:                                              ; preds = %321
  %334 = call ptr @BM_mesh_calc_path_face(ptr noundef %317, ptr noundef nonnull %329, ptr noundef nonnull %319, i8 noundef zeroext 1, ptr noundef nonnull %5, ptr noundef nonnull @facetag_filter_cb) #4
  %335 = icmp eq ptr %334, null
  br i1 %335, label %338, label %336

336:                                              ; preds = %333
  %337 = call zeroext i8 @_bm_select_history_remove(ptr noundef %317, ptr noundef nonnull %329) #4
  br label %338

338:                                              ; preds = %336, %333, %321
  %339 = phi ptr [ %334, %336 ], [ null, %333 ], [ null, %321 ]
  %340 = icmp eq ptr %339, null
  br i1 %340, label %362, label %341

341:                                              ; preds = %338, %349
  %342 = phi ptr [ %350, %349 ], [ %339, %338 ]
  %343 = getelementptr inbounds %struct.LinkNode, ptr %342, i64 0, i32 1
  %344 = load ptr, ptr %343, align 8, !tbaa !71
  %345 = getelementptr inbounds %struct.BMHeader, ptr %344, i64 0, i32 3
  %346 = load i8, ptr %345, align 1, !tbaa !73
  %347 = and i8 %346, 1
  %348 = icmp eq i8 %347, 0
  br i1 %348, label %352, label %349

349:                                              ; preds = %341
  %350 = load ptr, ptr %342, align 8, !tbaa !74
  %351 = icmp eq ptr %350, null
  br i1 %351, label %352, label %341, !llvm.loop !112

352:                                              ; preds = %349, %341
  %353 = xor i8 %347, 1
  br label %354

354:                                              ; preds = %354, %352
  %355 = phi ptr [ %339, %352 ], [ %359, %354 ]
  %356 = getelementptr inbounds %struct.LinkNode, ptr %355, i64 0, i32 1
  %357 = load ptr, ptr %356, align 8, !tbaa !71
  %358 = load ptr, ptr %5, align 8, !tbaa !61
  call void @BM_face_select_set(ptr noundef %358, ptr noundef %357, i8 noundef zeroext %353) #4
  %359 = load ptr, ptr %355, align 8, !tbaa !74
  %360 = icmp eq ptr %359, null
  br i1 %360, label %361, label %354, !llvm.loop !113

361:                                              ; preds = %354
  call void @BLI_linklist_free(ptr noundef nonnull %339, ptr noundef null) #4
  br label %368

362:                                              ; preds = %338
  %363 = getelementptr inbounds %struct.BMHeader, ptr %319, i64 0, i32 3
  %364 = load i8, ptr %363, align 1, !tbaa !73
  %365 = and i8 %364, 1
  %366 = xor i8 %365, 1
  %367 = load ptr, ptr %5, align 8, !tbaa !61
  call void @BM_face_select_set(ptr noundef %367, ptr noundef nonnull %319, i8 noundef zeroext %366) #4
  br label %368

368:                                              ; preds = %362, %361
  call void @EDBM_selectmode_flush(ptr noundef nonnull %316) #4
  %369 = getelementptr inbounds %struct.BMHeader, ptr %319, i64 0, i32 3
  %370 = load i8, ptr %369, align 1, !tbaa !73
  %371 = and i8 %370, 1
  %372 = icmp eq i8 %371, 0
  br i1 %372, label %373, label %375

373:                                              ; preds = %368
  %374 = call zeroext i8 @_bm_select_history_remove(ptr noundef %317, ptr noundef nonnull %319) #4
  br label %376

375:                                              ; preds = %368
  call void @_bm_select_history_store(ptr noundef %317, ptr noundef nonnull %319) #4
  br label %376

376:                                              ; preds = %375, %373
  call void @BM_mesh_active_face_set(ptr noundef %317, ptr noundef nonnull %319) #4
  call void @EDBM_update_generic(ptr noundef nonnull %316, i8 noundef zeroext 0, i8 noundef zeroext 0) #4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #4
  br label %377

377:                                              ; preds = %315, %376
  %378 = phi i32 [ 4, %376 ], [ 8, %315 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #4
  br label %379

379:                                              ; preds = %308, %311, %377, %306, %93, %3
  %380 = phi i32 [ 8, %3 ], [ %94, %93 ], [ %307, %306 ], [ %378, %377 ], [ 8, %311 ], [ 8, %308 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #4
  ret i32 %380
}

declare i32 @ED_operator_editmesh_region_view3d(ptr noundef) #1

declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @MESH_OT_shortest_path_select(ptr nocapture noundef %0) local_unnamed_addr #0 {
  store ptr @.str.6, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.7, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.8, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @edbm_shortest_path_select_exec, ptr %4, align 8, !tbaa !114
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_editmesh, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.9, i32 noundef 1, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11) #4
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @edbm_shortest_path_select_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.BMIter, align 8
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #4
  %5 = tail call ptr @BKE_editmesh_from_object(ptr noundef %4) #4
  %6 = load ptr, ptr %5, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #4
  %7 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !115
  %9 = tail call i32 @RNA_boolean_get(ptr noundef %8, ptr noundef nonnull @.str.9) #4
  %10 = trunc i32 %9 to i8
  %11 = getelementptr inbounds %struct.BMesh, ptr %6, i64 0, i32 32, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !117
  %13 = icmp eq ptr %12, null
  br i1 %13, label %29, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.BMEditSelection, ptr %12, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !119
  %17 = icmp eq ptr %16, null
  br i1 %17, label %29, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.BMEditSelection, ptr %12, i64 0, i32 3
  %20 = load i8, ptr %19, align 8, !tbaa !121
  %21 = getelementptr inbounds %struct.BMEditSelection, ptr %16, i64 0, i32 3
  %22 = load i8, ptr %21, align 8, !tbaa !121
  %23 = icmp eq i8 %20, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.BMEditSelection, ptr %12, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !122
  %27 = getelementptr inbounds %struct.BMEditSelection, ptr %16, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !122
  br label %143

29:                                               ; preds = %18, %14, %2
  %30 = getelementptr inbounds %struct.BMEditMesh, ptr %5, i64 0, i32 12
  %31 = load i16, ptr %30, align 4, !tbaa !55
  %32 = and i16 %31, 1
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %65, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.BMesh, ptr %6, i64 0, i32 4
  %36 = load i32, ptr %35, align 8, !tbaa !123
  %37 = icmp sgt i32 %36, 1
  br i1 %37, label %38, label %65

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  store i8 1, ptr %39, align 4, !tbaa !124
  %40 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %40, align 8, !tbaa !126
  %41 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %41, align 8, !tbaa !127
  %42 = getelementptr inbounds %struct.BMesh, ptr %6, i64 0, i32 9
  %43 = load ptr, ptr %42, align 8, !tbaa !128
  store ptr %43, ptr %3, align 8, !tbaa !129
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #4
  %44 = load ptr, ptr %41, align 8, !tbaa !127
  %45 = call ptr %44(ptr noundef nonnull %3) #4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %65, label %47

47:                                               ; preds = %38, %59
  %48 = phi ptr [ %63, %59 ], [ %45, %38 ]
  %49 = phi ptr [ %61, %59 ], [ null, %38 ]
  %50 = phi ptr [ %60, %59 ], [ null, %38 ]
  %51 = getelementptr inbounds %struct.BMHeader, ptr %48, i64 0, i32 3
  %52 = load i8, ptr %51, align 1, !tbaa !73
  %53 = and i8 %52, 1
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %47
  %56 = icmp eq ptr %50, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %55
  %58 = icmp eq ptr %49, null
  br i1 %58, label %59, label %65

59:                                               ; preds = %57, %55, %47
  %60 = phi ptr [ %50, %47 ], [ %48, %55 ], [ %50, %57 ]
  %61 = phi ptr [ %49, %47 ], [ %49, %55 ], [ %48, %57 ]
  %62 = load ptr, ptr %41, align 8, !tbaa !127
  %63 = call ptr %62(ptr noundef nonnull %3) #4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %47, !llvm.loop !130

65:                                               ; preds = %57, %59, %38, %34, %29
  %66 = phi ptr [ null, %34 ], [ null, %29 ], [ null, %38 ], [ %60, %59 ], [ %50, %57 ]
  %67 = phi ptr [ null, %34 ], [ null, %29 ], [ null, %38 ], [ %61, %59 ], [ %49, %57 ]
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %104

69:                                               ; preds = %65
  %70 = load i16, ptr %30, align 4, !tbaa !55
  %71 = and i16 %70, 2
  %72 = icmp eq i16 %71, 0
  br i1 %72, label %104, label %73

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.BMesh, ptr %6, i64 0, i32 5
  %75 = load i32, ptr %74, align 4, !tbaa !131
  %76 = icmp sgt i32 %75, 1
  br i1 %76, label %77, label %104

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  store i8 2, ptr %78, align 4, !tbaa !124
  %79 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %79, align 8, !tbaa !126
  %80 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %80, align 8, !tbaa !127
  %81 = getelementptr inbounds %struct.BMesh, ptr %6, i64 0, i32 10
  %82 = load ptr, ptr %81, align 8, !tbaa !132
  store ptr %82, ptr %3, align 8, !tbaa !129
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #4
  %83 = load ptr, ptr %80, align 8, !tbaa !127
  %84 = call ptr %83(ptr noundef nonnull %3) #4
  %85 = icmp eq ptr %84, null
  br i1 %85, label %104, label %86

86:                                               ; preds = %77, %98
  %87 = phi ptr [ %102, %98 ], [ %84, %77 ]
  %88 = phi ptr [ %100, %98 ], [ null, %77 ]
  %89 = phi ptr [ %99, %98 ], [ null, %77 ]
  %90 = getelementptr inbounds %struct.BMHeader, ptr %87, i64 0, i32 3
  %91 = load i8, ptr %90, align 1, !tbaa !73
  %92 = and i8 %91, 1
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %98, label %94

94:                                               ; preds = %86
  %95 = icmp eq ptr %89, null
  br i1 %95, label %98, label %96

96:                                               ; preds = %94
  %97 = icmp eq ptr %88, null
  br i1 %97, label %98, label %104

98:                                               ; preds = %96, %94, %86
  %99 = phi ptr [ %89, %86 ], [ %87, %94 ], [ %89, %96 ]
  %100 = phi ptr [ %88, %86 ], [ %88, %94 ], [ %87, %96 ]
  %101 = load ptr, ptr %80, align 8, !tbaa !127
  %102 = call ptr %101(ptr noundef nonnull %3) #4
  %103 = icmp eq ptr %102, null
  br i1 %103, label %104, label %86, !llvm.loop !133

104:                                              ; preds = %96, %98, %77, %73, %69, %65
  %105 = phi ptr [ %66, %73 ], [ %66, %69 ], [ %66, %65 ], [ null, %77 ], [ %99, %98 ], [ %89, %96 ]
  %106 = phi ptr [ null, %73 ], [ null, %69 ], [ %67, %65 ], [ null, %77 ], [ %100, %98 ], [ %88, %96 ]
  %107 = icmp eq ptr %106, null
  br i1 %107, label %108, label %143

108:                                              ; preds = %104
  %109 = load i16, ptr %30, align 4, !tbaa !55
  %110 = and i16 %109, 4
  %111 = icmp eq i16 %110, 0
  br i1 %111, label %143, label %112

112:                                              ; preds = %108
  %113 = getelementptr inbounds %struct.BMesh, ptr %6, i64 0, i32 6
  %114 = load i32, ptr %113, align 8, !tbaa !134
  %115 = icmp sgt i32 %114, 1
  br i1 %115, label %116, label %143

116:                                              ; preds = %112
  %117 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 4
  store i8 3, ptr %117, align 4, !tbaa !124
  %118 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 1
  store ptr @bmiter__elem_of_mesh_begin, ptr %118, align 8, !tbaa !126
  %119 = getelementptr inbounds %struct.BMIter, ptr %3, i64 0, i32 2
  store ptr @bmiter__elem_of_mesh_step, ptr %119, align 8, !tbaa !127
  %120 = getelementptr inbounds %struct.BMesh, ptr %6, i64 0, i32 12
  %121 = load ptr, ptr %120, align 8, !tbaa !135
  store ptr %121, ptr %3, align 8, !tbaa !129
  call void @bmiter__elem_of_mesh_begin(ptr noundef nonnull %3) #4
  %122 = load ptr, ptr %119, align 8, !tbaa !127
  %123 = call ptr %122(ptr noundef nonnull %3) #4
  %124 = icmp eq ptr %123, null
  br i1 %124, label %143, label %125

125:                                              ; preds = %116, %137
  %126 = phi ptr [ %141, %137 ], [ %123, %116 ]
  %127 = phi ptr [ %139, %137 ], [ null, %116 ]
  %128 = phi ptr [ %138, %137 ], [ null, %116 ]
  %129 = getelementptr inbounds %struct.BMHeader, ptr %126, i64 0, i32 3
  %130 = load i8, ptr %129, align 1, !tbaa !73
  %131 = and i8 %130, 1
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %137, label %133

133:                                              ; preds = %125
  %134 = icmp eq ptr %128, null
  br i1 %134, label %137, label %135

135:                                              ; preds = %133
  %136 = icmp eq ptr %127, null
  br i1 %136, label %137, label %143

137:                                              ; preds = %135, %133, %125
  %138 = phi ptr [ %128, %125 ], [ %126, %133 ], [ %128, %135 ]
  %139 = phi ptr [ %127, %125 ], [ %127, %133 ], [ %126, %135 ]
  %140 = load ptr, ptr %119, align 8, !tbaa !127
  %141 = call ptr %140(ptr noundef nonnull %3) #4
  %142 = icmp eq ptr %141, null
  br i1 %142, label %143, label %125, !llvm.loop !136

143:                                              ; preds = %137, %135, %116, %104, %108, %112, %24
  %144 = phi ptr [ %26, %24 ], [ %105, %112 ], [ %105, %108 ], [ %105, %104 ], [ null, %116 ], [ %128, %135 ], [ %138, %137 ]
  %145 = phi ptr [ %28, %24 ], [ null, %112 ], [ null, %108 ], [ %106, %104 ], [ null, %116 ], [ %127, %135 ], [ %139, %137 ]
  %146 = icmp ne ptr %144, null
  %147 = icmp ne ptr %145, null
  %148 = select i1 %146, i1 %147, i1 false
  br i1 %148, label %149, label %171

149:                                              ; preds = %143
  %150 = getelementptr inbounds %struct.BMHeader, ptr %144, i64 0, i32 2
  %151 = load i8, ptr %150, align 4, !tbaa !56
  switch i8 %151, label %158 [
    i8 1, label %152
    i8 2, label %154
    i8 8, label %156
  ]

152:                                              ; preds = %149
  %153 = call ptr @BM_mesh_calc_path_vert(ptr noundef %6, ptr noundef nonnull %144, ptr noundef nonnull %145, i8 noundef zeroext %10, ptr noundef null, ptr noundef nonnull @ele_filter_visible_cb) #4
  br label %158

154:                                              ; preds = %149
  %155 = call ptr @BM_mesh_calc_path_edge(ptr noundef %6, ptr noundef nonnull %144, ptr noundef nonnull %145, i8 noundef zeroext %10, ptr noundef null, ptr noundef nonnull @ele_filter_visible_cb) #4
  br label %158

156:                                              ; preds = %149
  %157 = call ptr @BM_mesh_calc_path_face(ptr noundef %6, ptr noundef nonnull %144, ptr noundef nonnull %145, i8 noundef zeroext %10, ptr noundef null, ptr noundef nonnull @ele_filter_visible_cb) #4
  br label %158

158:                                              ; preds = %149, %156, %154, %152
  %159 = phi ptr [ null, %149 ], [ %157, %156 ], [ %155, %154 ], [ %153, %152 ]
  %160 = icmp eq ptr %159, null
  br i1 %160, label %168, label %161

161:                                              ; preds = %158, %161
  %162 = phi ptr [ %165, %161 ], [ %159, %158 ]
  %163 = getelementptr inbounds %struct.LinkNode, ptr %162, i64 0, i32 1
  %164 = load ptr, ptr %163, align 8, !tbaa !71
  call void @BM_elem_select_set(ptr noundef %6, ptr noundef %164, i8 noundef zeroext 1) #4
  %165 = load ptr, ptr %162, align 8, !tbaa !74
  %166 = icmp eq ptr %165, null
  br i1 %166, label %167, label %161, !llvm.loop !137

167:                                              ; preds = %161
  call void @BLI_linklist_free(ptr noundef nonnull %159, ptr noundef null) #4
  call void @EDBM_selectmode_flush(ptr noundef nonnull %5) #4
  call void @EDBM_update_generic(ptr noundef nonnull %5, i8 noundef zeroext 0, i8 noundef zeroext 0) #4
  br label %174

168:                                              ; preds = %158
  %169 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %170 = load ptr, ptr %169, align 8, !tbaa !138
  call void @BKE_report(ptr noundef %170, i32 noundef 16, ptr noundef nonnull @.str.12) #4
  br label %174

171:                                              ; preds = %143
  %172 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 8
  %173 = load ptr, ptr %172, align 8, !tbaa !138
  call void @BKE_report(ptr noundef %173, i32 noundef 16, ptr noundef nonnull @.str.13) #4
  br label %174

174:                                              ; preds = %168, %167, %171
  %175 = phi i32 [ 2, %171 ], [ 4, %167 ], [ 2, %168 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #4
  ret i32 %175
}

declare i32 @ED_operator_editmesh(ptr noundef) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare void @em_setup_viewcontext(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @BM_mesh_active_elem_get(ptr noundef) local_unnamed_addr #1

declare void @view3d_operator_needs_opengl(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare float @ED_view3d_select_dist_px() local_unnamed_addr #1

declare ptr @EDBM_vert_find_nearest(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

declare ptr @BM_mesh_active_vert_get(ptr noundef) local_unnamed_addr #1

declare ptr @BM_mesh_calc_path_vert(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal zeroext i8 @verttag_filter_cb(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #3 {
  %3 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %4 = load i8, ptr %3, align 1, !tbaa !73
  %5 = lshr i8 %4, 1
  %6 = and i8 %5, 1
  %7 = xor i8 %6, 1
  ret i8 %7
}

declare zeroext i8 @_bm_select_history_remove(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BLI_linklist_free(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @EDBM_selectmode_flush(ptr noundef) local_unnamed_addr #1

declare void @_bm_select_history_store(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @EDBM_update_generic(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

declare void @BM_vert_select_set(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

declare ptr @EDBM_edge_find_nearest(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @BM_mesh_active_edge_get(ptr noundef) local_unnamed_addr #1

declare ptr @BM_mesh_calc_path_edge(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal zeroext i8 @edgetag_filter_cb(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #3 {
  %3 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %4 = load i8, ptr %3, align 1, !tbaa !73
  %5 = lshr i8 %4, 1
  %6 = and i8 %5, 1
  %7 = xor i8 %6, 1
  ret i8 %7
}

; Function Attrs: nounwind uwtable
define internal fastcc void @edgetag_set_cb(ptr noundef %0, i8 noundef zeroext %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.UserData, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !70
  %6 = load ptr, ptr %2, align 8, !tbaa !61
  %7 = getelementptr inbounds %struct.Scene, ptr %5, i64 0, i32 20
  %8 = load ptr, ptr %7, align 8, !tbaa !79
  %9 = getelementptr inbounds %struct.ToolSettings, ptr %8, i64 0, i32 49
  %10 = load i8, ptr %9, align 1, !tbaa !98
  switch i8 %10, label %36 [
    i8 0, label %11
    i8 1, label %12
    i8 2, label %20
    i8 3, label %28
    i8 4, label %32
  ]

11:                                               ; preds = %3
  tail call void @BM_edge_select_set(ptr noundef %6, ptr noundef %0, i8 noundef zeroext %1) #4
  br label %36

12:                                               ; preds = %3
  %13 = icmp eq i8 %1, 0
  %14 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %15 = load i8, ptr %14, align 1, !tbaa !73
  br i1 %13, label %18, label %16

16:                                               ; preds = %12
  %17 = or i8 %15, 4
  store i8 %17, ptr %14, align 1, !tbaa !73
  br label %36

18:                                               ; preds = %12
  %19 = and i8 %15, -5
  store i8 %19, ptr %14, align 1, !tbaa !73
  br label %36

20:                                               ; preds = %3
  %21 = icmp eq i8 %1, 0
  %22 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %23 = load i8, ptr %22, align 1, !tbaa !73
  br i1 %21, label %24, label %26

24:                                               ; preds = %20
  %25 = or i8 %23, 8
  store i8 %25, ptr %22, align 1, !tbaa !73
  br label %36

26:                                               ; preds = %20
  %27 = and i8 %23, -9
  store i8 %27, ptr %22, align 1, !tbaa !73
  br label %36

28:                                               ; preds = %3
  %29 = getelementptr inbounds %struct.BMesh, ptr %6, i64 0, i32 25
  %30 = icmp eq i8 %1, 0
  %31 = select i1 %30, float 0.000000e+00, float 1.000000e+00
  tail call void @BM_elem_float_data_set(ptr noundef nonnull %29, ptr noundef %0, i32 noundef 30, float noundef %31) #4
  br label %36

32:                                               ; preds = %3
  %33 = getelementptr inbounds %struct.BMesh, ptr %6, i64 0, i32 25
  %34 = icmp eq i8 %1, 0
  %35 = select i1 %34, float 0.000000e+00, float 1.000000e+00
  tail call void @BM_elem_float_data_set(ptr noundef nonnull %33, ptr noundef %0, i32 noundef 29, float noundef %35) #4
  br label %36

36:                                               ; preds = %26, %24, %18, %16, %3, %32, %28, %11
  ret void
}

declare void @BM_edge_select_set(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

declare void @ED_uvedit_live_unwrap(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BM_mesh_cd_flag_ensure(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

declare float @BM_elem_float_data_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @BM_elem_float_data_set(ptr noundef, ptr noundef, i32 noundef, float noundef) local_unnamed_addr #1

declare ptr @EDBM_face_find_nearest(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @BM_mesh_active_face_get(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

declare ptr @BM_mesh_calc_path_face(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal zeroext i8 @facetag_filter_cb(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #3 {
  %3 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %4 = load i8, ptr %3, align 1, !tbaa !73
  %5 = lshr i8 %4, 1
  %6 = and i8 %5, 1
  %7 = xor i8 %6, 1
  ret i8 %7
}

declare void @BM_mesh_active_face_set(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BM_face_select_set(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #1

declare ptr @BKE_editmesh_from_object(ptr noundef) local_unnamed_addr #1

declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal zeroext i8 @ele_filter_visible_cb(ptr nocapture noundef readonly %0, ptr nocapture readnone %1) #3 {
  %3 = getelementptr inbounds %struct.BMHeader, ptr %0, i64 0, i32 3
  %4 = load i8, ptr %3, align 1, !tbaa !73
  %5 = lshr i8 %4, 1
  %6 = and i8 %5, 1
  %7 = xor i8 %6, 1
  ret i8 %7
}

declare void @BM_elem_select_set(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

declare void @BKE_report(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @bmiter__elem_of_mesh_begin(ptr noundef) #1

declare ptr @bmiter__elem_of_mesh_step(ptr noundef) #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

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
!42 = !{!35, !36, i64 8}
!43 = !{!35, !36, i64 24}
!44 = !{!35, !36, i64 48}
!45 = !{!35, !36, i64 72}
!46 = !{!35, !41, i64 184}
!47 = !{!35, !36, i64 88}
!48 = !{!49, !49, i64 0}
!49 = !{!"int", !37, i64 0}
!50 = !{!51, !36, i64 48}
!51 = !{!"ViewContext", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !37, i64 56}
!52 = !{!53, !36, i64 0}
!53 = !{!"BMEditMesh", !36, i64 0, !36, i64 8, !49, i64 16, !36, i64 24, !49, i64 32, !36, i64 40, !36, i64 48, !54, i64 56, !36, i64 64, !49, i64 72, !36, i64 80, !49, i64 88, !41, i64 92, !41, i64 94, !36, i64 96, !49, i64 104}
!54 = !{!"long", !37, i64 0}
!55 = !{!53, !41, i64 92}
!56 = !{!57, !37, i64 12}
!57 = !{!"BMElem", !58, i64 0}
!58 = !{!"BMHeader", !36, i64 0, !49, i64 8, !37, i64 12, !37, i64 13, !37, i64 14}
!59 = !{!60, !60, i64 0}
!60 = !{!"float", !37, i64 0}
!61 = !{!62, !36, i64 0}
!62 = !{!"UserData", !36, i64 0, !36, i64 8, !36, i64 16}
!63 = !{!51, !36, i64 16}
!64 = !{!65, !36, i64 296}
!65 = !{!"Object", !66, i64 0, !36, i64 120, !36, i64 128, !41, i64 136, !41, i64 138, !49, i64 140, !49, i64 144, !49, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !67, i64 312, !36, i64 360, !39, i64 368, !39, i64 384, !39, i64 400, !39, i64 416, !49, i64 432, !49, i64 436, !36, i64 440, !36, i64 448, !49, i64 456, !49, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !60, i64 616, !60, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !49, i64 944, !41, i64 948, !41, i64 950, !41, i64 952, !41, i64 954, !41, i64 956, !41, i64 958, !41, i64 960, !41, i64 962, !41, i64 964, !37, i64 966, !37, i64 967, !49, i64 968, !49, i64 972, !49, i64 976, !49, i64 980, !49, i64 984, !60, i64 988, !60, i64 992, !60, i64 996, !60, i64 1000, !60, i64 1004, !60, i64 1008, !60, i64 1012, !60, i64 1016, !60, i64 1020, !60, i64 1024, !60, i64 1028, !60, i64 1032, !41, i64 1036, !41, i64 1038, !41, i64 1040, !37, i64 1042, !37, i64 1043, !41, i64 1044, !37, i64 1046, !37, i64 1047, !60, i64 1048, !60, i64 1052, !39, i64 1056, !39, i64 1072, !39, i64 1088, !39, i64 1104, !60, i64 1120, !41, i64 1124, !41, i64 1126, !37, i64 1128, !49, i64 1144, !49, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !41, i64 1162, !37, i64 1164, !39, i64 1176, !39, i64 1192, !39, i64 1208, !39, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !41, i64 1266, !60, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !54, i64 1304, !54, i64 1312, !49, i64 1320, !49, i64 1324, !39, i64 1328, !39, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !39, i64 1400, !36, i64 1416}
!66 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !41, i64 98, !49, i64 100, !49, i64 104, !49, i64 108, !36, i64 112}
!67 = !{!"bAnimVizSettings", !49, i64 0, !49, i64 4, !49, i64 8, !49, i64 12, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !49, i64 32, !49, i64 36, !49, i64 40, !49, i64 44}
!68 = !{!62, !36, i64 8}
!69 = !{!51, !36, i64 0}
!70 = !{!62, !36, i64 16}
!71 = !{!72, !36, i64 8}
!72 = !{!"LinkNode", !36, i64 0, !36, i64 8}
!73 = !{!58, !37, i64 13}
!74 = !{!72, !36, i64 0}
!75 = distinct !{!75, !76, !77}
!76 = !{!"llvm.loop.mustprogress"}
!77 = !{!"llvm.loop.unroll.disable"}
!78 = distinct !{!78, !76, !77}
!79 = !{!80, !36, i64 264}
!80 = !{!"Scene", !66, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !39, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !49, i64 232, !49, i64 236, !49, i64 240, !41, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !81, i64 280, !90, i64 4264, !39, i64 4296, !39, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !41, i64 4376, !41, i64 4378, !49, i64 4380, !39, i64 4384, !91, i64 4400, !92, i64 4416, !95, i64 4600, !36, i64 4608, !96, i64 4616, !36, i64 4640, !54, i64 4648, !54, i64 4656, !83, i64 4664, !84, i64 4824, !97, i64 4888, !36, i64 4952}
!81 = !{!"RenderData", !82, i64 0, !36, i64 248, !36, i64 256, !85, i64 264, !86, i64 328, !49, i64 400, !49, i64 404, !49, i64 408, !60, i64 412, !49, i64 416, !49, i64 420, !49, i64 424, !49, i64 428, !41, i64 432, !41, i64 434, !60, i64 436, !60, i64 440, !60, i64 444, !60, i64 448, !60, i64 452, !41, i64 456, !41, i64 458, !41, i64 460, !41, i64 462, !41, i64 464, !41, i64 466, !49, i64 468, !41, i64 472, !41, i64 474, !41, i64 476, !41, i64 478, !41, i64 480, !41, i64 482, !49, i64 484, !49, i64 488, !41, i64 492, !41, i64 494, !49, i64 496, !49, i64 500, !41, i64 504, !41, i64 506, !41, i64 508, !41, i64 510, !41, i64 512, !37, i64 514, !37, i64 515, !49, i64 516, !49, i64 520, !49, i64 524, !41, i64 528, !41, i64 530, !41, i64 532, !41, i64 534, !41, i64 536, !41, i64 538, !41, i64 540, !41, i64 542, !87, i64 544, !87, i64 560, !88, i64 576, !39, i64 592, !41, i64 608, !41, i64 610, !60, i64 612, !60, i64 616, !60, i64 620, !60, i64 624, !49, i64 628, !60, i64 632, !60, i64 636, !60, i64 640, !60, i64 644, !41, i64 648, !41, i64 650, !41, i64 652, !41, i64 654, !41, i64 656, !41, i64 658, !60, i64 660, !60, i64 664, !41, i64 668, !41, i64 670, !60, i64 672, !60, i64 676, !37, i64 680, !49, i64 1704, !41, i64 1708, !41, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !49, i64 2520, !41, i64 2524, !41, i64 2526, !60, i64 2528, !60, i64 2532, !41, i64 2536, !41, i64 2538, !60, i64 2540, !41, i64 2544, !41, i64 2546, !49, i64 2548, !41, i64 2552, !41, i64 2554, !41, i64 2556, !41, i64 2558, !60, i64 2560, !60, i64 2564, !36, i64 2568, !49, i64 2576, !60, i64 2580, !37, i64 2584, !89, i64 2616, !49, i64 3976, !49, i64 3980}
!82 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !41, i64 8, !41, i64 10, !60, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !83, i64 24, !84, i64 184}
!83 = !{!"ColorManagedViewSettings", !49, i64 0, !49, i64 4, !37, i64 8, !37, i64 72, !60, i64 136, !60, i64 140, !36, i64 144, !36, i64 152}
!84 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!85 = !{!"QuicktimeCodecSettings", !49, i64 0, !49, i64 4, !49, i64 8, !49, i64 12, !49, i64 16, !49, i64 20, !49, i64 24, !49, i64 28, !49, i64 32, !49, i64 36, !49, i64 40, !49, i64 44, !41, i64 48, !41, i64 50, !49, i64 52, !49, i64 56, !49, i64 60}
!86 = !{!"FFMpegCodecData", !49, i64 0, !49, i64 4, !49, i64 8, !49, i64 12, !49, i64 16, !49, i64 20, !49, i64 24, !49, i64 28, !60, i64 32, !49, i64 36, !49, i64 40, !49, i64 44, !49, i64 48, !49, i64 52, !49, i64 56, !49, i64 60, !36, i64 64}
!87 = !{!"rctf", !60, i64 0, !60, i64 4, !60, i64 8, !60, i64 12}
!88 = !{!"rcti", !49, i64 0, !49, i64 4, !49, i64 8, !49, i64 12}
!89 = !{!"BakeData", !82, i64 0, !37, i64 248, !41, i64 1272, !41, i64 1274, !41, i64 1276, !41, i64 1278, !60, i64 1280, !60, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!90 = !{!"AudioData", !49, i64 0, !60, i64 4, !60, i64 8, !60, i64 12, !49, i64 16, !41, i64 20, !41, i64 22, !60, i64 24, !60, i64 28}
!91 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!92 = !{!"GameData", !91, i64 0, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !41, i64 32, !37, i64 34, !93, i64 40, !41, i64 64, !41, i64 66, !60, i64 68, !94, i64 72, !60, i64 128, !60, i64 132, !49, i64 136, !41, i64 140, !41, i64 142, !41, i64 144, !41, i64 146, !41, i64 148, !41, i64 150, !41, i64 152, !41, i64 154, !41, i64 156, !41, i64 158, !41, i64 160, !41, i64 162, !60, i64 164, !60, i64 168, !60, i64 172, !60, i64 176, !60, i64 180}
!93 = !{!"GameDome", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !60, i64 8, !60, i64 12, !36, i64 16}
!94 = !{!"RecastData", !60, i64 0, !60, i64 4, !60, i64 8, !60, i64 12, !60, i64 16, !60, i64 20, !60, i64 24, !60, i64 28, !60, i64 32, !60, i64 36, !49, i64 40, !60, i64 44, !60, i64 48, !41, i64 52, !41, i64 54}
!95 = !{!"UnitSettings", !60, i64 0, !37, i64 4, !37, i64 5, !41, i64 6}
!96 = !{!"PhysicsSettings", !37, i64 0, !49, i64 12, !49, i64 16, !49, i64 20}
!97 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!98 = !{!99, !37, i64 429}
!99 = !{!"ToolSettings", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !60, i64 32, !60, i64 36, !60, i64 40, !41, i64 44, !41, i64 46, !37, i64 48, !37, i64 49, !37, i64 50, !37, i64 51, !60, i64 52, !41, i64 56, !37, i64 58, !37, i64 59, !100, i64 64, !102, i64 168, !60, i64 336, !60, i64 340, !41, i64 344, !41, i64 346, !37, i64 348, !37, i64 349, !41, i64 350, !60, i64 352, !60, i64 356, !60, i64 360, !60, i64 364, !60, i64 368, !60, i64 372, !60, i64 376, !60, i64 380, !60, i64 384, !60, i64 388, !41, i64 392, !37, i64 394, !37, i64 395, !37, i64 396, !37, i64 399, !36, i64 400, !37, i64 408, !37, i64 409, !37, i64 410, !37, i64 411, !37, i64 412, !37, i64 413, !37, i64 421, !37, i64 429, !37, i64 430, !37, i64 431, !37, i64 432, !37, i64 433, !41, i64 434, !41, i64 436, !41, i64 438, !41, i64 440, !37, i64 442, !37, i64 443, !37, i64 444, !37, i64 445, !37, i64 446, !37, i64 447, !49, i64 448, !49, i64 452, !49, i64 456, !49, i64 460, !41, i64 464, !41, i64 466, !49, i64 468, !60, i64 472, !60, i64 476, !103, i64 480, !104, i64 608}
!100 = !{!"ImagePaintSettings", !101, i64 0, !41, i64 40, !41, i64 42, !41, i64 44, !41, i64 46, !37, i64 48, !49, i64 52, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !37, i64 88, !60, i64 100}
!101 = !{!"Paint", !36, i64 0, !36, i64 8, !36, i64 16, !37, i64 24, !49, i64 28, !49, i64 32, !49, i64 36}
!102 = !{!"ParticleEditSettings", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !37, i64 8, !36, i64 120, !60, i64 128, !60, i64 132, !49, i64 136, !49, i64 140, !49, i64 144, !49, i64 148, !36, i64 152, !36, i64 160}
!103 = !{!"UnifiedPaintSettings", !49, i64 0, !60, i64 4, !60, i64 8, !60, i64 12, !37, i64 16, !37, i64 28, !49, i64 40, !37, i64 44, !60, i64 52, !49, i64 56, !49, i64 60, !37, i64 64, !37, i64 65, !60, i64 72, !37, i64 76, !49, i64 84, !60, i64 88, !37, i64 92, !37, i64 100, !49, i64 108, !36, i64 112, !60, i64 120, !49, i64 124}
!104 = !{!"MeshStatVis", !37, i64 0, !37, i64 1, !37, i64 3, !60, i64 4, !60, i64 8, !60, i64 12, !60, i64 16, !37, i64 20, !37, i64 21, !60, i64 24, !60, i64 28, !60, i64 32, !60, i64 36}
!105 = !{!53, !36, i64 96}
!106 = !{!107, !36, i64 272}
!107 = !{!"Mesh", !66, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !36, i64 192, !36, i64 200, !36, i64 208, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !108, i64 280, !108, i64 480, !108, i64 680, !108, i64 880, !108, i64 1080, !49, i64 1280, !49, i64 1284, !49, i64 1288, !49, i64 1292, !49, i64 1296, !49, i64 1300, !49, i64 1304, !37, i64 1308, !37, i64 1320, !37, i64 1332, !49, i64 1344, !41, i64 1348, !41, i64 1350, !60, i64 1352, !49, i64 1356, !37, i64 1360, !37, i64 1361, !37, i64 1362, !37, i64 1363, !37, i64 1364, !37, i64 1365, !41, i64 1366, !36, i64 1368}
!108 = !{!"CustomData", !36, i64 0, !37, i64 8, !49, i64 172, !49, i64 176, !49, i64 180, !36, i64 184, !36, i64 192}
!109 = distinct !{!109, !76, !77}
!110 = distinct !{!110, !76, !77}
!111 = !{!107, !49, i64 1344}
!112 = distinct !{!112, !76, !77}
!113 = distinct !{!113, !76, !77}
!114 = !{!35, !36, i64 32}
!115 = !{!116, !36, i64 112}
!116 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !39, i64 128, !36, i64 144, !36, i64 152, !41, i64 160, !37, i64 162}
!117 = !{!118, !36, i64 968}
!118 = !{!"BMesh", !49, i64 0, !49, i64 4, !49, i64 8, !49, i64 12, !49, i64 16, !49, i64 20, !49, i64 24, !37, i64 28, !37, i64 29, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !36, i64 64, !36, i64 72, !36, i64 80, !49, i64 88, !49, i64 92, !49, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !49, i64 128, !36, i64 136, !108, i64 144, !108, i64 344, !108, i64 544, !108, i64 744, !41, i64 944, !49, i64 948, !49, i64 952, !49, i64 956, !39, i64 960, !36, i64 976, !39, i64 984, !36, i64 1000}
!119 = !{!120, !36, i64 8}
!120 = !{!"BMEditSelection", !36, i64 0, !36, i64 8, !36, i64 16, !37, i64 24}
!121 = !{!120, !37, i64 24}
!122 = !{!120, !36, i64 16}
!123 = !{!118, !49, i64 16}
!124 = !{!125, !37, i64 60}
!125 = !{!"BMIter", !37, i64 0, !36, i64 40, !36, i64 48, !49, i64 56, !37, i64 60}
!126 = !{!125, !36, i64 40}
!127 = !{!125, !36, i64 48}
!128 = !{!118, !36, i64 32}
!129 = !{!37, !37, i64 0}
!130 = distinct !{!130, !76, !77}
!131 = !{!118, !49, i64 20}
!132 = !{!118, !36, i64 40}
!133 = distinct !{!133, !76, !77}
!134 = !{!118, !49, i64 24}
!135 = !{!118, !36, i64 56}
!136 = distinct !{!136, !76, !77}
!137 = distinct !{!137, !76, !77}
!138 = !{!116, !36, i64 120}

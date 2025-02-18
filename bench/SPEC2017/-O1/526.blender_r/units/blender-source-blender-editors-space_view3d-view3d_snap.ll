; ModuleID = 'blender/source/blender/editors/space_view3d/view3d_snap.c'
source_filename = "blender/source/blender/editors/space_view3d/view3d_snap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.wmOperatorType = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, ptr, %struct.ExtensionRNA, i16 }
%struct.ListBase = type { ptr, ptr }
%struct.ExtensionRNA = type { ptr, ptr, ptr, ptr }
%struct.TransVertStore = type { ptr, i32, i32 }
%struct.RegionView3D = type { [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [6 x [4 x float]], [6 x [4 x float]], ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x [4 x float]], [4 x float], float, float, float, float, [3 x float], float, i8, i8, i8, i8, i8, [3 x i8], [2 x float], i16, i16, [4 x float], i16, i16, float, [3 x float], float, [3 x float] }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.TransVert = type { ptr, [3 x float], [3 x float], [3 x float], i32 }
%struct.CollectionPointerLink = type { ptr, ptr, %struct.PointerRNA }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.bArmature = type { %struct.ID, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i16, i16, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32 }
%struct.bPoseChannel = type { ptr, ptr, ptr, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i8, i8, [6 x i8], ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [3 x float], [3 x float], [3 x float], [4 x float], [3 x float], float, i16, i16, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], float, float, float, ptr }
%struct.Bone = type { ptr, ptr, ptr, ptr, %struct.ListBase, [64 x i8], float, [3 x float], [3 x float], [3 x [3 x float]], i32, [3 x float], [3 x float], [4 x [4 x float]], float, float, float, float, float, float, float, float, float, float, [3 x float], i32, i16, [1 x i16] }
%struct.bPose = type { %struct.ListBase, ptr, i16, i16, i32, i32, float, [3 x float], [3 x float], %struct.ListBase, i32, i32, ptr, ptr, %struct.bAnimVizSettings, [64 x i8] }
%struct.wmOperator = type { ptr, ptr, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i16, [3 x i16] }
%struct.BMEditSelection = type { ptr, ptr, ptr, i8 }
%struct.View3D = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], [4 x float], float, float, i8, [3 x i8], i32, i32, i16, i16, ptr, ptr, %struct.rctf, %struct.ListBase, ptr, ptr, [64 x i8], i32, i32, i16, i16, i16, i16, i16, i16, float, float, float, float, [3 x float], [3 x float], i16, i16, i16, i8, i8, i8, i8, [2 x i8], %struct.ListBase, %struct.ListBase, %struct.ListBase, i8, i8, i8, [5 x i8], ptr, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
%struct.RenderData = type { %struct.ImageFormatData, ptr, ptr, %struct.QuicktimeCodecSettings, %struct.FFMpegCodecData, i32, i32, i32, float, i32, i32, i32, i32, i16, i16, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i32, i32, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, %struct.rctf, %struct.rctf, %struct.rcti, %struct.ListBase, i16, i16, float, float, float, float, i32, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, i16, i16, float, float, [1024 x i8], i32, i16, i16, [768 x i8], [4 x float], [4 x float], i8, i8, i8, [5 x i8], i32, i16, i16, float, float, i16, i16, float, i16, i16, i32, i16, i16, i16, i16, float, float, ptr, i32, float, [32 x i8], %struct.BakeData, i32, i32 }
%struct.ImageFormatData = type { i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, float, i8, i8, [6 x i8], %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings }
%struct.QuicktimeCodecSettings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32 }
%struct.FFMpegCodecData = type { i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, ptr }
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
%struct.MovieClip = type { %struct.ID, ptr, [1024 x i8], i32, i32, [2 x i32], float, float, ptr, ptr, ptr, %struct.MovieTracking, ptr, %struct.MovieClipProxy, i32, i32, i32, i32, %struct.ColorManagedColorspaceSettings }
%struct.MovieTracking = type { %struct.MovieTrackingSettings, %struct.MovieTrackingCamera, %struct.ListBase, %struct.ListBase, %struct.MovieTrackingReconstruction, %struct.MovieTrackingStabilization, ptr, ptr, %struct.ListBase, i32, i32, ptr, %struct.MovieTrackingDopesheet }
%struct.MovieTrackingSettings = type { i32, i16, i16, float, i16, i16, i16, i16, i16, i16, float, i16, i16, i32, i32, i32, i16, i16, float, i32, i32, float, float, i32 }
%struct.MovieTrackingCamera = type { ptr, i16, i16, float, float, float, i16, i16, [2 x float], float, float, float, float, float }
%struct.MovieTrackingReconstruction = type { i32, float, i32, i32, ptr }
%struct.MovieTrackingStabilization = type { i32, i32, i32, float, ptr, float, float, float, i32, i32, float }
%struct.MovieTrackingDopesheet = type { i32, i16, i16, %struct.ListBase, %struct.ListBase, i32, i32 }
%struct.MovieClipProxy = type { [768 x i8], i16, i16, i16, i16 }
%struct.MovieTrackingObject = type { ptr, ptr, [64 x i8], i32, float, %struct.ListBase, %struct.ListBase, %struct.MovieTrackingReconstruction, i32, i32 }
%struct.MovieTrackingTrack = type { ptr, ptr, [64 x i8], [2 x float], [2 x float], [2 x float], [2 x float], [2 x float], i32, i32, ptr, [3 x float], float, i32, i32, i32, [3 x float], i16, i16, i16, i16, i32, float, ptr, float, float }

@.str = private unnamed_addr constant [23 x i8] c"Snap Selection to Grid\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"Snap selected item(s) to nearest grid division\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"VIEW3D_OT_snap_selected_to_grid\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Snap Selection to Cursor\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Snap selected item(s) to cursor\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"VIEW3D_OT_snap_selected_to_cursor\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"use_offset\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"Offset\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"Snap Cursor to Grid\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"Snap cursor to nearest grid division\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"VIEW3D_OT_snap_cursor_to_grid\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"Snap Cursor to Selected\00", align 1
@.str.13 = private unnamed_addr constant [42 x i8] c"Snap cursor to center of selected item(s)\00", align 1
@.str.14 = private unnamed_addr constant [34 x i8] c"VIEW3D_OT_snap_cursor_to_selected\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"Snap Cursor to Active\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"Snap cursor to active item\00", align 1
@.str.17 = private unnamed_addr constant [32 x i8] c"VIEW3D_OT_snap_cursor_to_active\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"Snap Cursor to Center\00", align 1
@.str.19 = private unnamed_addr constant [26 x i8] c"Snap cursor to the Center\00", align 1
@.str.20 = private unnamed_addr constant [32 x i8] c"VIEW3D_OT_snap_cursor_to_center\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"Location\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @VIEW3D_OT_snap_selected_to_grid(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.1, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.2, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @snap_sel_to_grid_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_region_view3d_active, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @snap_sel_to_grid_exec(ptr noundef %0, ptr nocapture readnone %1) #1 {
  %3 = alloca %struct.TransVertStore, align 8
  %4 = alloca [3 x [3 x float]], align 16
  %5 = alloca [3 x [3 x float]], align 16
  %6 = alloca [3 x float], align 4
  %7 = alloca %struct.ListBase, align 8
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x [3 x float]], align 16
  %10 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #6
  %11 = tail call ptr @CTX_data_scene(ptr noundef %0) #6
  %12 = tail call ptr @CTX_wm_region_data(ptr noundef %0) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #6
  %13 = getelementptr inbounds %struct.RegionView3D, ptr %12, i64 0, i32 36
  %14 = load float, ptr %13, align 8, !tbaa !47
  %15 = icmp eq ptr %10, null
  br i1 %15, label %80, label %16

16:                                               ; preds = %2
  %17 = tail call zeroext i8 @ED_transverts_check_obedit(ptr noundef nonnull %10) #6
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  call void @ED_transverts_create_from_obedit(ptr noundef nonnull %3, ptr noundef nonnull %10, i32 noundef 0) #6
  br label %20

20:                                               ; preds = %19, %16
  %21 = getelementptr inbounds %struct.TransVertStore, ptr %3, i64 0, i32 1
  %22 = load i32, ptr %21, align 8, !tbaa !50
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %241, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 47
  call void @copy_m3_m4(ptr noundef nonnull %5, ptr noundef nonnull %25) #6
  %26 = call zeroext i8 @invert_m3_m3(ptr noundef nonnull %4, ptr noundef nonnull %5) #6
  %27 = load i32, ptr %21, align 8, !tbaa !50
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %79

29:                                               ; preds = %24
  %30 = load ptr, ptr %3, align 8, !tbaa !53
  %31 = getelementptr inbounds float, ptr %6, i64 1
  %32 = getelementptr inbounds float, ptr %6, i64 2
  %33 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 47, i64 3
  %34 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 47, i64 3, i64 1
  %35 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 47, i64 3, i64 2
  br label %36

36:                                               ; preds = %29, %36
  %37 = phi ptr [ %30, %29 ], [ %76, %36 ]
  %38 = phi i32 [ 0, %29 ], [ %75, %36 ]
  %39 = load ptr, ptr %37, align 8, !tbaa !54
  %40 = load float, ptr %39, align 4, !tbaa !56
  store float %40, ptr %6, align 4, !tbaa !56
  %41 = getelementptr inbounds float, ptr %39, i64 1
  %42 = load float, ptr %41, align 4, !tbaa !56
  store float %42, ptr %31, align 4, !tbaa !56
  %43 = getelementptr inbounds float, ptr %39, i64 2
  %44 = load float, ptr %43, align 4, !tbaa !56
  store float %44, ptr %32, align 4, !tbaa !56
  call void @mul_m3_v3(ptr noundef nonnull %5, ptr noundef nonnull %6) #6
  %45 = load float, ptr %33, align 4, !tbaa !56
  %46 = load float, ptr %6, align 4, !tbaa !56
  %47 = fadd float %45, %46
  store float %47, ptr %6, align 4, !tbaa !56
  %48 = load float, ptr %34, align 4, !tbaa !56
  %49 = load float, ptr %31, align 4, !tbaa !56
  %50 = fadd float %48, %49
  store float %50, ptr %31, align 4, !tbaa !56
  %51 = load float, ptr %35, align 4, !tbaa !56
  %52 = load float, ptr %32, align 4, !tbaa !56
  %53 = fadd float %51, %52
  store float %53, ptr %32, align 4, !tbaa !56
  %54 = fdiv float %47, %14
  %55 = fadd float %54, 5.000000e-01
  %56 = call float @llvm.floor.f32(float %55)
  %57 = fmul float %14, %56
  store float %57, ptr %6, align 4, !tbaa !56
  %58 = fdiv float %50, %14
  %59 = fadd float %58, 5.000000e-01
  %60 = call float @llvm.floor.f32(float %59)
  %61 = fmul float %14, %60
  store float %61, ptr %31, align 4, !tbaa !56
  %62 = fdiv float %53, %14
  %63 = fadd float %62, 5.000000e-01
  %64 = call float @llvm.floor.f32(float %63)
  %65 = fmul float %14, %64
  store float %65, ptr %32, align 4, !tbaa !56
  %66 = fsub float %57, %45
  store float %66, ptr %6, align 4, !tbaa !56
  %67 = fsub float %61, %48
  store float %67, ptr %31, align 4, !tbaa !56
  %68 = fsub float %65, %51
  store float %68, ptr %32, align 4, !tbaa !56
  call void @mul_m3_v3(ptr noundef nonnull %4, ptr noundef nonnull %6) #6
  %69 = load ptr, ptr %37, align 8, !tbaa !54
  %70 = load float, ptr %6, align 4, !tbaa !56
  store float %70, ptr %69, align 4, !tbaa !56
  %71 = load float, ptr %31, align 4, !tbaa !56
  %72 = getelementptr inbounds float, ptr %69, i64 1
  store float %71, ptr %72, align 4, !tbaa !56
  %73 = load float, ptr %32, align 4, !tbaa !56
  %74 = getelementptr inbounds float, ptr %69, i64 2
  store float %73, ptr %74, align 4, !tbaa !56
  %75 = add nuw nsw i32 %38, 1
  %76 = getelementptr inbounds %struct.TransVert, ptr %37, i64 1
  %77 = load i32, ptr %21, align 8, !tbaa !50
  %78 = icmp slt i32 %75, %77
  br i1 %78, label %36, label %79, !llvm.loop !57

79:                                               ; preds = %36, %24
  call void @ED_transverts_update_obedit(ptr noundef nonnull %3, ptr noundef nonnull %10) #6
  call void @ED_transverts_free(ptr noundef nonnull %3) #6
  br label %240

80:                                               ; preds = %2
  %81 = tail call ptr @ANIM_get_keyingset_for_autokeying(ptr noundef %11, ptr noundef nonnull @.str.21) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #6
  %82 = call i32 @CTX_data_selected_editable_objects(ptr noundef %0, ptr noundef nonnull %7) #6
  %83 = load ptr, ptr %7, align 8, !tbaa !60
  %84 = icmp eq ptr %83, null
  br i1 %84, label %239, label %85

85:                                               ; preds = %80
  %86 = getelementptr inbounds float, ptr %8, i64 1
  %87 = getelementptr inbounds float, ptr %8, i64 2
  %88 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 1
  %89 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  %90 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 1
  %91 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  br label %92

92:                                               ; preds = %85, %235
  %93 = phi ptr [ %83, %85 ], [ %237, %235 ]
  %94 = getelementptr inbounds %struct.CollectionPointerLink, ptr %93, i64 0, i32 2, i32 2
  %95 = load ptr, ptr %94, align 8, !tbaa !61
  %96 = getelementptr inbounds %struct.Object, ptr %95, i64 0, i32 27
  %97 = load i32, ptr %96, align 8, !tbaa !65
  %98 = and i32 %97, 64
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %180, label %100

100:                                              ; preds = %92
  %101 = getelementptr inbounds %struct.Object, ptr %95, i64 0, i32 19
  %102 = load ptr, ptr %101, align 8, !tbaa !70
  %103 = getelementptr inbounds %struct.Object, ptr %95, i64 0, i32 50
  %104 = getelementptr inbounds %struct.Object, ptr %95, i64 0, i32 47
  %105 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %103, ptr noundef nonnull %104) #6
  %106 = getelementptr inbounds %struct.Object, ptr %95, i64 0, i32 18
  %107 = load ptr, ptr %106, align 8, !tbaa !71
  %108 = load ptr, ptr %107, align 8, !tbaa !60
  %109 = icmp eq ptr %108, null
  br i1 %109, label %175, label %110

110:                                              ; preds = %100
  %111 = getelementptr inbounds %struct.bArmature, ptr %102, i64 0, i32 15
  br label %112

112:                                              ; preds = %110, %172
  %113 = phi ptr [ %108, %110 ], [ %173, %172 ]
  %114 = getelementptr inbounds %struct.bPoseChannel, ptr %113, i64 0, i32 12
  %115 = load ptr, ptr %114, align 8, !tbaa !72
  %116 = getelementptr inbounds %struct.Bone, ptr %115, i64 0, i32 10
  %117 = load i32, ptr %116, align 8, !tbaa !74
  %118 = and i32 %117, 1
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %172, label %120

120:                                              ; preds = %112
  %121 = getelementptr inbounds %struct.Bone, ptr %115, i64 0, i32 25
  %122 = load i32, ptr %121, align 8, !tbaa !76
  %123 = load i32, ptr %111, align 8, !tbaa !77
  %124 = and i32 %123, %122
  %125 = icmp ne i32 %124, 0
  %126 = and i32 %117, 16
  %127 = icmp eq i32 %126, 0
  %128 = and i1 %127, %125
  br i1 %128, label %129, label %172

129:                                              ; preds = %120
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #6
  %130 = getelementptr inbounds %struct.bPoseChannel, ptr %113, i64 0, i32 29, i64 3
  %131 = load float, ptr %130, align 4, !tbaa !56
  store float %131, ptr %8, align 4, !tbaa !56
  %132 = getelementptr inbounds %struct.bPoseChannel, ptr %113, i64 0, i32 29, i64 3, i64 1
  %133 = load float, ptr %132, align 4, !tbaa !56
  store float %133, ptr %86, align 4, !tbaa !56
  %134 = getelementptr inbounds %struct.bPoseChannel, ptr %113, i64 0, i32 29, i64 3, i64 2
  %135 = load float, ptr %134, align 4, !tbaa !56
  store float %135, ptr %87, align 4, !tbaa !56
  call void @mul_m4_v3(ptr noundef nonnull %104, ptr noundef nonnull %8) #6
  %136 = load float, ptr %8, align 4, !tbaa !56
  %137 = fdiv float %136, %14
  %138 = fadd float %137, 5.000000e-01
  %139 = call float @llvm.floor.f32(float %138)
  %140 = fmul float %14, %139
  store float %140, ptr %6, align 4, !tbaa !56
  %141 = load float, ptr %86, align 4, !tbaa !56
  %142 = fdiv float %141, %14
  %143 = fadd float %142, 5.000000e-01
  %144 = call float @llvm.floor.f32(float %143)
  %145 = fmul float %14, %144
  store float %145, ptr %88, align 4, !tbaa !56
  %146 = load float, ptr %87, align 4, !tbaa !56
  %147 = fdiv float %146, %14
  %148 = fadd float %147, 5.000000e-01
  %149 = call float @llvm.floor.f32(float %148)
  %150 = fmul float %14, %149
  store float %150, ptr %89, align 4, !tbaa !56
  call void @mul_m4_v3(ptr noundef nonnull %103, ptr noundef nonnull %6) #6
  call void @BKE_armature_loc_pose_to_bone(ptr noundef nonnull %113, ptr noundef nonnull %6, ptr noundef nonnull %6) #6
  %151 = getelementptr inbounds %struct.bPoseChannel, ptr %113, i64 0, i32 7
  %152 = load i16, ptr %151, align 4, !tbaa !79
  %153 = and i16 %152, 1
  %154 = icmp eq i16 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %129
  %156 = load float, ptr %6, align 4, !tbaa !56
  %157 = getelementptr inbounds %struct.bPoseChannel, ptr %113, i64 0, i32 20
  store float %156, ptr %157, align 8, !tbaa !56
  br label %158

158:                                              ; preds = %155, %129
  %159 = and i16 %152, 2
  %160 = icmp eq i16 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %158
  %162 = load float, ptr %88, align 4, !tbaa !56
  %163 = getelementptr inbounds %struct.bPoseChannel, ptr %113, i64 0, i32 20, i64 1
  store float %162, ptr %163, align 4, !tbaa !56
  br label %164

164:                                              ; preds = %161, %158
  %165 = and i16 %152, 4
  %166 = icmp eq i16 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %164
  %168 = load float, ptr %89, align 4, !tbaa !56
  %169 = getelementptr inbounds %struct.bPoseChannel, ptr %113, i64 0, i32 20, i64 2
  store float %168, ptr %169, align 8, !tbaa !56
  br label %170

170:                                              ; preds = %167, %164
  %171 = call zeroext i8 @ED_autokeyframe_pchan(ptr noundef %0, ptr noundef %11, ptr noundef %95, ptr noundef nonnull %113, ptr noundef %81) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #6
  br label %172

172:                                              ; preds = %112, %170, %120
  %173 = load ptr, ptr %113, align 8, !tbaa !60
  %174 = icmp eq ptr %173, null
  br i1 %174, label %175, label %112, !llvm.loop !80

175:                                              ; preds = %172, %100
  %176 = load ptr, ptr %106, align 8, !tbaa !71
  %177 = getelementptr inbounds %struct.bPose, ptr %176, i64 0, i32 2
  %178 = load i16, ptr %177, align 8, !tbaa !81
  %179 = or i16 %178, 6
  store i16 %179, ptr %177, align 8, !tbaa !81
  br label %235

180:                                              ; preds = %92
  %181 = getelementptr inbounds %struct.Object, ptr %95, i64 0, i32 47, i64 3
  %182 = load float, ptr %181, align 8, !tbaa !56
  %183 = fneg float %182
  %184 = fdiv float %182, %14
  %185 = fadd float %184, 5.000000e-01
  %186 = call float @llvm.floor.f32(float %185)
  %187 = call float @llvm.fmuladd.f32(float %14, float %186, float %183)
  store float %187, ptr %6, align 4, !tbaa !56
  %188 = getelementptr inbounds %struct.Object, ptr %95, i64 0, i32 47, i64 3, i64 1
  %189 = load float, ptr %188, align 4, !tbaa !56
  %190 = fneg float %189
  %191 = fdiv float %189, %14
  %192 = fadd float %191, 5.000000e-01
  %193 = call float @llvm.floor.f32(float %192)
  %194 = call float @llvm.fmuladd.f32(float %14, float %193, float %190)
  store float %194, ptr %90, align 4, !tbaa !56
  %195 = getelementptr inbounds %struct.Object, ptr %95, i64 0, i32 47, i64 3, i64 2
  %196 = load float, ptr %195, align 8, !tbaa !56
  %197 = fneg float %196
  %198 = fdiv float %196, %14
  %199 = fadd float %198, 5.000000e-01
  %200 = call float @llvm.floor.f32(float %199)
  %201 = call float @llvm.fmuladd.f32(float %14, float %200, float %197)
  store float %201, ptr %91, align 4, !tbaa !56
  %202 = getelementptr inbounds %struct.Object, ptr %95, i64 0, i32 9
  %203 = load ptr, ptr %202, align 8, !tbaa !83
  %204 = icmp eq ptr %203, null
  br i1 %204, label %207, label %205

205:                                              ; preds = %180
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %9) #6
  call void @BKE_object_where_is_calc_ex(ptr noundef %11, ptr noundef null, ptr noundef %95, ptr noundef nonnull %9) #6
  %206 = call zeroext i8 @invert_m3_m3(ptr noundef nonnull %4, ptr noundef nonnull %9) #6
  call void @mul_m3_v3(ptr noundef nonnull %4, ptr noundef nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %9) #6
  br label %207

207:                                              ; preds = %205, %180
  %208 = getelementptr inbounds %struct.Object, ptr %95, i64 0, i32 56
  %209 = load i16, ptr %208, align 2, !tbaa !84
  %210 = and i16 %209, 1
  %211 = icmp eq i16 %210, 0
  br i1 %211, label %212, label %217

212:                                              ; preds = %207
  %213 = load float, ptr %6, align 4, !tbaa !56
  %214 = getelementptr inbounds %struct.Object, ptr %95, i64 0, i32 33
  %215 = load float, ptr %214, align 8, !tbaa !56
  %216 = fadd float %213, %215
  store float %216, ptr %214, align 8, !tbaa !56
  br label %217

217:                                              ; preds = %212, %207
  %218 = and i16 %209, 2
  %219 = icmp eq i16 %218, 0
  br i1 %219, label %220, label %225

220:                                              ; preds = %217
  %221 = load float, ptr %90, align 4, !tbaa !56
  %222 = getelementptr inbounds %struct.Object, ptr %95, i64 0, i32 33, i64 1
  %223 = load float, ptr %222, align 4, !tbaa !56
  %224 = fadd float %221, %223
  store float %224, ptr %222, align 4, !tbaa !56
  br label %225

225:                                              ; preds = %220, %217
  %226 = and i16 %209, 4
  %227 = icmp eq i16 %226, 0
  br i1 %227, label %228, label %233

228:                                              ; preds = %225
  %229 = load float, ptr %91, align 4, !tbaa !56
  %230 = getelementptr inbounds %struct.Object, ptr %95, i64 0, i32 33, i64 2
  %231 = load float, ptr %230, align 8, !tbaa !56
  %232 = fadd float %229, %231
  store float %232, ptr %230, align 8, !tbaa !56
  br label %233

233:                                              ; preds = %228, %225
  %234 = call zeroext i8 @ED_autokeyframe_object(ptr noundef %0, ptr noundef %11, ptr noundef %95, ptr noundef %81) #6
  br label %235

235:                                              ; preds = %233, %175
  %236 = phi i16 [ 1, %233 ], [ 2, %175 ]
  call void @DAG_id_tag_update(ptr noundef %95, i16 noundef signext %236) #6
  %237 = load ptr, ptr %93, align 8, !tbaa !60
  %238 = icmp eq ptr %237, null
  br i1 %238, label %239, label %92, !llvm.loop !85

239:                                              ; preds = %235, %80
  call void @BLI_freelistN(ptr noundef nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #6
  br label %240

240:                                              ; preds = %239, %79
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85065728, ptr noundef null) #6
  br label %241

241:                                              ; preds = %20, %240
  %242 = phi i32 [ 4, %240 ], [ 2, %20 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6
  ret i32 %242
}

declare i32 @ED_operator_region_view3d_active(ptr noundef) #2

; Function Attrs: nounwind uwtable
define dso_local void @VIEW3D_OT_snap_selected_to_cursor(ptr nocapture noundef %0) local_unnamed_addr #1 {
  store ptr @.str.3, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.4, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.5, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @snap_sel_to_curs_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_view3d_active, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !86
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.6, i32 noundef 1, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @snap_sel_to_curs_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 {
  %3 = alloca %struct.TransVertStore, align 8
  %4 = alloca [3 x [3 x float]], align 16
  %5 = alloca [3 x [3 x float]], align 16
  %6 = alloca [3 x float], align 4
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  %9 = alloca [3 x float], align 4
  %10 = alloca %struct.ListBase, align 8
  %11 = alloca [3 x float], align 4
  %12 = alloca [3 x float], align 4
  %13 = alloca [3 x float], align 4
  %14 = alloca [3 x [3 x float]], align 16
  %15 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #6
  %16 = tail call ptr @CTX_data_scene(ptr noundef %0) #6
  %17 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #6
  %18 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %19 = load ptr, ptr %18, align 8, !tbaa !87
  %20 = tail call i32 @RNA_boolean_get(ptr noundef %19, ptr noundef nonnull @.str.6) #6
  %21 = tail call ptr @ED_view3d_cursor3d_get(ptr noundef %16, ptr noundef %17) #6
  %22 = and i32 %20, 255
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %41, label %24

24:                                               ; preds = %2
  %25 = call fastcc zeroext i8 @snap_curs_to_sel_ex(ptr noundef %0, ptr noundef nonnull %6), !range !89
  %26 = load float, ptr %21, align 4, !tbaa !56
  %27 = load float, ptr %6, align 4, !tbaa !56
  %28 = fsub float %26, %27
  store float %28, ptr %7, align 4, !tbaa !56
  %29 = getelementptr inbounds float, ptr %21, i64 1
  %30 = load float, ptr %29, align 4, !tbaa !56
  %31 = getelementptr inbounds float, ptr %6, i64 1
  %32 = load float, ptr %31, align 4, !tbaa !56
  %33 = fsub float %30, %32
  %34 = getelementptr inbounds float, ptr %7, i64 1
  store float %33, ptr %34, align 4, !tbaa !56
  %35 = getelementptr inbounds float, ptr %21, i64 2
  %36 = load float, ptr %35, align 4, !tbaa !56
  %37 = getelementptr inbounds float, ptr %6, i64 2
  %38 = load float, ptr %37, align 4, !tbaa !56
  %39 = fsub float %36, %38
  %40 = getelementptr inbounds float, ptr %7, i64 2
  store float %39, ptr %40, align 4, !tbaa !56
  br label %41

41:                                               ; preds = %24, %2
  %42 = icmp eq ptr %15, null
  br i1 %42, label %114, label %43

43:                                               ; preds = %41
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #6
  %44 = call zeroext i8 @ED_transverts_check_obedit(ptr noundef nonnull %15) #6
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %43
  call void @ED_transverts_create_from_obedit(ptr noundef nonnull %3, ptr noundef nonnull %15, i32 noundef 0) #6
  br label %47

47:                                               ; preds = %46, %43
  %48 = getelementptr inbounds %struct.TransVertStore, ptr %3, i64 0, i32 1
  %49 = load i32, ptr %48, align 8, !tbaa !50
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %285, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.Object, ptr %15, i64 0, i32 47
  call void @copy_m3_m4(ptr noundef nonnull %5, ptr noundef nonnull %52) #6
  %53 = call zeroext i8 @invert_m3_m3(ptr noundef nonnull %4, ptr noundef nonnull %5) #6
  %54 = getelementptr inbounds %struct.Object, ptr %15, i64 0, i32 47, i64 3
  %55 = load float, ptr %21, align 4, !tbaa !56
  %56 = load float, ptr %54, align 4, !tbaa !56
  %57 = fsub float %55, %56
  store float %57, ptr %8, align 4, !tbaa !56
  %58 = getelementptr inbounds float, ptr %21, i64 1
  %59 = load float, ptr %58, align 4, !tbaa !56
  %60 = getelementptr inbounds %struct.Object, ptr %15, i64 0, i32 47, i64 3, i64 1
  %61 = load float, ptr %60, align 4, !tbaa !56
  %62 = fsub float %59, %61
  %63 = getelementptr inbounds float, ptr %8, i64 1
  store float %62, ptr %63, align 4, !tbaa !56
  %64 = getelementptr inbounds float, ptr %21, i64 2
  %65 = load float, ptr %64, align 4, !tbaa !56
  %66 = getelementptr inbounds %struct.Object, ptr %15, i64 0, i32 47, i64 3, i64 2
  %67 = load float, ptr %66, align 4, !tbaa !56
  %68 = fsub float %65, %67
  %69 = getelementptr inbounds float, ptr %8, i64 2
  store float %68, ptr %69, align 4, !tbaa !56
  call void @mul_m3_v3(ptr noundef nonnull %4, ptr noundef nonnull %8) #6
  br i1 %23, label %96, label %70

70:                                               ; preds = %51
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #6
  call void @mul_v3_m3v3(ptr noundef nonnull %9, ptr noundef nonnull %4, ptr noundef nonnull %7) #6
  %71 = load i32, ptr %48, align 8, !tbaa !50
  %72 = icmp sgt i32 %71, 0
  br i1 %72, label %73, label %95

73:                                               ; preds = %70
  %74 = load ptr, ptr %3, align 8, !tbaa !53
  %75 = getelementptr inbounds float, ptr %9, i64 1
  %76 = getelementptr inbounds float, ptr %9, i64 2
  br label %77

77:                                               ; preds = %73, %77
  %78 = phi ptr [ %74, %73 ], [ %93, %77 ]
  %79 = phi i32 [ 0, %73 ], [ %92, %77 ]
  %80 = load ptr, ptr %78, align 8, !tbaa !54
  %81 = load float, ptr %9, align 4, !tbaa !56
  %82 = load float, ptr %80, align 4, !tbaa !56
  %83 = fadd float %81, %82
  store float %83, ptr %80, align 4, !tbaa !56
  %84 = load float, ptr %75, align 4, !tbaa !56
  %85 = getelementptr inbounds float, ptr %80, i64 1
  %86 = load float, ptr %85, align 4, !tbaa !56
  %87 = fadd float %84, %86
  store float %87, ptr %85, align 4, !tbaa !56
  %88 = load float, ptr %76, align 4, !tbaa !56
  %89 = getelementptr inbounds float, ptr %80, i64 2
  %90 = load float, ptr %89, align 4, !tbaa !56
  %91 = fadd float %88, %90
  store float %91, ptr %89, align 4, !tbaa !56
  %92 = add nuw nsw i32 %79, 1
  %93 = getelementptr inbounds %struct.TransVert, ptr %78, i64 1
  %94 = icmp eq i32 %92, %71
  br i1 %94, label %95, label %77, !llvm.loop !90

95:                                               ; preds = %77, %70
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #6
  br label %113

96:                                               ; preds = %51
  %97 = load i32, ptr %48, align 8, !tbaa !50
  %98 = icmp sgt i32 %97, 0
  br i1 %98, label %99, label %113

99:                                               ; preds = %96
  %100 = load ptr, ptr %3, align 8, !tbaa !53
  br label %101

101:                                              ; preds = %99, %101
  %102 = phi ptr [ %111, %101 ], [ %100, %99 ]
  %103 = phi i32 [ %110, %101 ], [ 0, %99 ]
  %104 = load ptr, ptr %102, align 8, !tbaa !54
  %105 = load float, ptr %8, align 4, !tbaa !56
  store float %105, ptr %104, align 4, !tbaa !56
  %106 = load float, ptr %63, align 4, !tbaa !56
  %107 = getelementptr inbounds float, ptr %104, i64 1
  store float %106, ptr %107, align 4, !tbaa !56
  %108 = load float, ptr %69, align 4, !tbaa !56
  %109 = getelementptr inbounds float, ptr %104, i64 2
  store float %108, ptr %109, align 4, !tbaa !56
  %110 = add nuw nsw i32 %103, 1
  %111 = getelementptr inbounds %struct.TransVert, ptr %102, i64 1
  %112 = icmp eq i32 %110, %97
  br i1 %112, label %113, label %101, !llvm.loop !91

113:                                              ; preds = %101, %96, %95
  call void @ED_transverts_update_obedit(ptr noundef nonnull %3, ptr noundef nonnull %15) #6
  call void @ED_transverts_free(ptr noundef nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #6
  br label %284

114:                                              ; preds = %41
  %115 = call ptr @ANIM_get_keyingset_for_autokeying(ptr noundef %16, ptr noundef nonnull @.str.21) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #6
  %116 = call i32 @CTX_data_selected_editable_objects(ptr noundef %0, ptr noundef nonnull %10) #6
  %117 = load ptr, ptr %10, align 8, !tbaa !60
  %118 = icmp eq ptr %117, null
  br i1 %118, label %283, label %119

119:                                              ; preds = %114
  %120 = getelementptr inbounds float, ptr %7, i64 1
  %121 = getelementptr inbounds float, ptr %12, i64 1
  %122 = getelementptr inbounds float, ptr %7, i64 2
  %123 = getelementptr inbounds float, ptr %12, i64 2
  %124 = getelementptr inbounds [3 x float], ptr %12, i64 0, i64 1
  %125 = getelementptr inbounds [3 x float], ptr %12, i64 0, i64 2
  %126 = getelementptr inbounds float, ptr %7, i64 1
  %127 = getelementptr inbounds float, ptr %13, i64 1
  %128 = getelementptr inbounds float, ptr %7, i64 2
  %129 = getelementptr inbounds float, ptr %13, i64 2
  %130 = getelementptr inbounds float, ptr %21, i64 1
  %131 = getelementptr inbounds float, ptr %13, i64 1
  %132 = getelementptr inbounds float, ptr %21, i64 2
  %133 = getelementptr inbounds float, ptr %13, i64 2
  %134 = getelementptr inbounds float, ptr %13, i64 1
  %135 = getelementptr inbounds float, ptr %13, i64 2
  br label %136

136:                                              ; preds = %119, %280
  %137 = phi ptr [ %117, %119 ], [ %281, %280 ]
  %138 = getelementptr inbounds %struct.CollectionPointerLink, ptr %137, i64 0, i32 2, i32 2
  %139 = load ptr, ptr %138, align 8, !tbaa !61
  %140 = getelementptr inbounds %struct.Object, ptr %139, i64 0, i32 27
  %141 = load i32, ptr %140, align 8, !tbaa !65
  %142 = and i32 %141, 64
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %216, label %144

144:                                              ; preds = %136
  %145 = getelementptr inbounds %struct.Object, ptr %139, i64 0, i32 19
  %146 = load ptr, ptr %145, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #6
  %147 = getelementptr inbounds %struct.Object, ptr %139, i64 0, i32 50
  %148 = getelementptr inbounds %struct.Object, ptr %139, i64 0, i32 47
  %149 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %147, ptr noundef nonnull %148) #6
  call void @mul_v3_m4v3(ptr noundef nonnull %11, ptr noundef nonnull %147, ptr noundef %21) #6
  %150 = getelementptr inbounds %struct.Object, ptr %139, i64 0, i32 18
  %151 = load ptr, ptr %150, align 8, !tbaa !71
  %152 = load ptr, ptr %151, align 8, !tbaa !60
  %153 = icmp eq ptr %152, null
  br i1 %153, label %211, label %154

154:                                              ; preds = %144
  %155 = getelementptr inbounds %struct.bArmature, ptr %146, i64 0, i32 15
  br label %156

156:                                              ; preds = %154, %208
  %157 = phi ptr [ %152, %154 ], [ %209, %208 ]
  %158 = getelementptr inbounds %struct.bPoseChannel, ptr %157, i64 0, i32 12
  %159 = load ptr, ptr %158, align 8, !tbaa !72
  %160 = getelementptr inbounds %struct.Bone, ptr %159, i64 0, i32 10
  %161 = load i32, ptr %160, align 8, !tbaa !74
  %162 = and i32 %161, 1
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %208, label %164

164:                                              ; preds = %156
  %165 = getelementptr inbounds %struct.Bone, ptr %159, i64 0, i32 25
  %166 = load i32, ptr %165, align 8, !tbaa !76
  %167 = load i32, ptr %155, align 8, !tbaa !77
  %168 = and i32 %167, %166
  %169 = icmp ne i32 %168, 0
  %170 = and i32 %161, 80
  %171 = icmp eq i32 %170, 0
  %172 = and i1 %171, %169
  br i1 %172, label %173, label %208

173:                                              ; preds = %164
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #6
  br i1 %23, label %185, label %174

174:                                              ; preds = %173
  %175 = getelementptr inbounds %struct.bPoseChannel, ptr %157, i64 0, i32 29, i64 3
  call void @mul_v3_m4v3(ptr noundef nonnull %12, ptr noundef nonnull %148, ptr noundef nonnull %175) #6
  %176 = load float, ptr %7, align 4, !tbaa !56
  %177 = load float, ptr %12, align 4, !tbaa !56
  %178 = fadd float %176, %177
  store float %178, ptr %12, align 4, !tbaa !56
  %179 = load float, ptr %120, align 4, !tbaa !56
  %180 = load float, ptr %121, align 4, !tbaa !56
  %181 = fadd float %179, %180
  store float %181, ptr %121, align 4, !tbaa !56
  %182 = load float, ptr %122, align 4, !tbaa !56
  %183 = load float, ptr %123, align 4, !tbaa !56
  %184 = fadd float %182, %183
  store float %184, ptr %123, align 4, !tbaa !56
  call void @mul_m4_v3(ptr noundef nonnull %147, ptr noundef nonnull %12) #6
  br label %185

185:                                              ; preds = %173, %174
  %186 = phi ptr [ %12, %174 ], [ %11, %173 ]
  call void @BKE_armature_loc_pose_to_bone(ptr noundef nonnull %157, ptr noundef nonnull %186, ptr noundef nonnull %12) #6
  %187 = getelementptr inbounds %struct.bPoseChannel, ptr %157, i64 0, i32 7
  %188 = load i16, ptr %187, align 4, !tbaa !79
  %189 = and i16 %188, 1
  %190 = icmp eq i16 %189, 0
  br i1 %190, label %191, label %194

191:                                              ; preds = %185
  %192 = load float, ptr %12, align 4, !tbaa !56
  %193 = getelementptr inbounds %struct.bPoseChannel, ptr %157, i64 0, i32 20
  store float %192, ptr %193, align 8, !tbaa !56
  br label %194

194:                                              ; preds = %191, %185
  %195 = and i16 %188, 2
  %196 = icmp eq i16 %195, 0
  br i1 %196, label %197, label %200

197:                                              ; preds = %194
  %198 = load float, ptr %124, align 4, !tbaa !56
  %199 = getelementptr inbounds %struct.bPoseChannel, ptr %157, i64 0, i32 20, i64 1
  store float %198, ptr %199, align 4, !tbaa !56
  br label %200

200:                                              ; preds = %197, %194
  %201 = and i16 %188, 4
  %202 = icmp eq i16 %201, 0
  br i1 %202, label %203, label %206

203:                                              ; preds = %200
  %204 = load float, ptr %125, align 4, !tbaa !56
  %205 = getelementptr inbounds %struct.bPoseChannel, ptr %157, i64 0, i32 20, i64 2
  store float %204, ptr %205, align 8, !tbaa !56
  br label %206

206:                                              ; preds = %203, %200
  %207 = call zeroext i8 @ED_autokeyframe_pchan(ptr noundef %0, ptr noundef %16, ptr noundef %139, ptr noundef nonnull %157, ptr noundef %115) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #6
  br label %208

208:                                              ; preds = %156, %164, %206
  %209 = load ptr, ptr %157, align 8, !tbaa !60
  %210 = icmp eq ptr %209, null
  br i1 %210, label %211, label %156, !llvm.loop !92

211:                                              ; preds = %208, %144
  %212 = load ptr, ptr %150, align 8, !tbaa !71
  %213 = getelementptr inbounds %struct.bPose, ptr %212, i64 0, i32 2
  %214 = load i16, ptr %213, align 8, !tbaa !81
  %215 = or i16 %214, 6
  store i16 %215, ptr %213, align 8, !tbaa !81
  call void @DAG_id_tag_update(ptr noundef %139, i16 noundef signext 2) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #6
  br label %280

216:                                              ; preds = %136
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #6
  br i1 %23, label %230, label %217

217:                                              ; preds = %216
  %218 = getelementptr inbounds %struct.Object, ptr %139, i64 0, i32 47, i64 3
  %219 = load float, ptr %218, align 4, !tbaa !56
  %220 = load float, ptr %7, align 4, !tbaa !56
  %221 = fadd float %219, %220
  store float %221, ptr %13, align 4, !tbaa !56
  %222 = getelementptr inbounds %struct.Object, ptr %139, i64 0, i32 47, i64 3, i64 1
  %223 = load float, ptr %222, align 4, !tbaa !56
  %224 = load float, ptr %126, align 4, !tbaa !56
  %225 = fadd float %223, %224
  store float %225, ptr %127, align 4, !tbaa !56
  %226 = getelementptr inbounds %struct.Object, ptr %139, i64 0, i32 47, i64 3, i64 2
  %227 = load float, ptr %226, align 4, !tbaa !56
  %228 = load float, ptr %128, align 4, !tbaa !56
  %229 = fadd float %227, %228
  store float %229, ptr %129, align 4, !tbaa !56
  br label %234

230:                                              ; preds = %216
  %231 = load float, ptr %21, align 4, !tbaa !56
  store float %231, ptr %13, align 4, !tbaa !56
  %232 = load float, ptr %130, align 4, !tbaa !56
  store float %232, ptr %131, align 4, !tbaa !56
  %233 = load float, ptr %132, align 4, !tbaa !56
  store float %233, ptr %133, align 4, !tbaa !56
  br label %234

234:                                              ; preds = %230, %217
  %235 = getelementptr inbounds %struct.Object, ptr %139, i64 0, i32 47, i64 3
  %236 = load float, ptr %235, align 4, !tbaa !56
  %237 = load float, ptr %13, align 4, !tbaa !56
  %238 = fsub float %237, %236
  store float %238, ptr %13, align 4, !tbaa !56
  %239 = getelementptr inbounds %struct.Object, ptr %139, i64 0, i32 47, i64 3, i64 1
  %240 = load float, ptr %239, align 4, !tbaa !56
  %241 = load float, ptr %134, align 4, !tbaa !56
  %242 = fsub float %241, %240
  store float %242, ptr %134, align 4, !tbaa !56
  %243 = getelementptr inbounds %struct.Object, ptr %139, i64 0, i32 47, i64 3, i64 2
  %244 = load float, ptr %243, align 4, !tbaa !56
  %245 = load float, ptr %135, align 4, !tbaa !56
  %246 = fsub float %245, %244
  store float %246, ptr %135, align 4, !tbaa !56
  %247 = getelementptr inbounds %struct.Object, ptr %139, i64 0, i32 9
  %248 = load ptr, ptr %247, align 8, !tbaa !83
  %249 = icmp eq ptr %248, null
  br i1 %249, label %252, label %250

250:                                              ; preds = %234
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %14) #6
  call void @BKE_object_where_is_calc_ex(ptr noundef %16, ptr noundef null, ptr noundef %139, ptr noundef nonnull %14) #6
  %251 = call zeroext i8 @invert_m3_m3(ptr noundef nonnull %4, ptr noundef nonnull %14) #6
  call void @mul_m3_v3(ptr noundef nonnull %4, ptr noundef nonnull %13) #6
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %14) #6
  br label %252

252:                                              ; preds = %250, %234
  %253 = getelementptr inbounds %struct.Object, ptr %139, i64 0, i32 56
  %254 = load i16, ptr %253, align 2, !tbaa !84
  %255 = and i16 %254, 1
  %256 = icmp eq i16 %255, 0
  br i1 %256, label %257, label %262

257:                                              ; preds = %252
  %258 = load float, ptr %13, align 4, !tbaa !56
  %259 = getelementptr inbounds %struct.Object, ptr %139, i64 0, i32 33
  %260 = load float, ptr %259, align 8, !tbaa !56
  %261 = fadd float %258, %260
  store float %261, ptr %259, align 8, !tbaa !56
  br label %262

262:                                              ; preds = %257, %252
  %263 = and i16 %254, 2
  %264 = icmp eq i16 %263, 0
  br i1 %264, label %265, label %270

265:                                              ; preds = %262
  %266 = load float, ptr %134, align 4, !tbaa !56
  %267 = getelementptr inbounds %struct.Object, ptr %139, i64 0, i32 33, i64 1
  %268 = load float, ptr %267, align 4, !tbaa !56
  %269 = fadd float %266, %268
  store float %269, ptr %267, align 4, !tbaa !56
  br label %270

270:                                              ; preds = %265, %262
  %271 = and i16 %254, 4
  %272 = icmp eq i16 %271, 0
  br i1 %272, label %273, label %278

273:                                              ; preds = %270
  %274 = load float, ptr %135, align 4, !tbaa !56
  %275 = getelementptr inbounds %struct.Object, ptr %139, i64 0, i32 33, i64 2
  %276 = load float, ptr %275, align 8, !tbaa !56
  %277 = fadd float %274, %276
  store float %277, ptr %275, align 8, !tbaa !56
  br label %278

278:                                              ; preds = %273, %270
  %279 = call zeroext i8 @ED_autokeyframe_object(ptr noundef %0, ptr noundef %16, ptr noundef %139, ptr noundef %115) #6
  call void @DAG_id_tag_update(ptr noundef %139, i16 noundef signext 1) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #6
  br label %280

280:                                              ; preds = %278, %211
  %281 = load ptr, ptr %137, align 8, !tbaa !60
  %282 = icmp eq ptr %281, null
  br i1 %282, label %283, label %136, !llvm.loop !93

283:                                              ; preds = %280, %114
  call void @BLI_freelistN(ptr noundef nonnull %10) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #6
  br label %284

284:                                              ; preds = %113, %283
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85065728, ptr noundef null) #6
  br label %286

285:                                              ; preds = %47
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #6
  br label %286

286:                                              ; preds = %285, %284
  %287 = phi i32 [ 4, %284 ], [ 2, %285 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #6
  ret i32 %287
}

declare i32 @ED_operator_view3d_active(ptr noundef) #2

declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @VIEW3D_OT_snap_cursor_to_grid(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.9, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.10, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.11, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @snap_curs_to_grid_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_region_view3d_active, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @snap_curs_to_grid_exec(ptr noundef %0, ptr nocapture readnone %1) #1 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #6
  %4 = tail call ptr @CTX_wm_region_data(ptr noundef %0) #6
  %5 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #6
  %6 = getelementptr inbounds %struct.RegionView3D, ptr %4, i64 0, i32 36
  %7 = load float, ptr %6, align 8, !tbaa !47
  %8 = tail call ptr @ED_view3d_cursor3d_get(ptr noundef %3, ptr noundef %5) #6
  %9 = load float, ptr %8, align 4, !tbaa !56
  %10 = fdiv float %9, %7
  %11 = fadd float %10, 5.000000e-01
  %12 = tail call float @llvm.floor.f32(float %11)
  %13 = fmul float %7, %12
  store float %13, ptr %8, align 4, !tbaa !56
  %14 = getelementptr inbounds float, ptr %8, i64 1
  %15 = load float, ptr %14, align 4, !tbaa !56
  %16 = fdiv float %15, %7
  %17 = fadd float %16, 5.000000e-01
  %18 = tail call float @llvm.floor.f32(float %17)
  %19 = fmul float %7, %18
  store float %19, ptr %14, align 4, !tbaa !56
  %20 = getelementptr inbounds float, ptr %8, i64 2
  %21 = load float, ptr %20, align 4, !tbaa !56
  %22 = fdiv float %21, %7
  %23 = fadd float %22, 5.000000e-01
  %24 = tail call float @llvm.floor.f32(float %23)
  %25 = fmul float %7, %24
  store float %25, ptr %20, align 4, !tbaa !56
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 252248064, ptr noundef %5) #6
  ret i32 4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @VIEW3D_OT_snap_cursor_to_selected(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.12, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.13, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.14, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @snap_curs_to_sel_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_view3d_active, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @snap_curs_to_sel_exec(ptr noundef %0, ptr nocapture readnone %1) #1 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #6
  %4 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #6
  %5 = tail call ptr @ED_view3d_cursor3d_get(ptr noundef %3, ptr noundef %4) #6
  %6 = tail call fastcc zeroext i8 @snap_curs_to_sel_ex(ptr noundef %0, ptr noundef %5), !range !89
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 252248064, ptr noundef %4) #6
  br label %9

9:                                                ; preds = %2, %8
  %10 = phi i32 [ 4, %8 ], [ 2, %2 ]
  ret i32 %10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @VIEW3D_OT_snap_cursor_to_active(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.15, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.16, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.17, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @snap_curs_to_active_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_view3d_active, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @snap_curs_to_active_exec(ptr noundef %0, ptr nocapture readnone %1) #1 {
  %3 = alloca %struct.BMEditSelection, align 8
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #6
  %5 = tail call ptr @CTX_data_active_object(ptr noundef %0) #6
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #6
  %7 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #6
  %8 = tail call ptr @ED_view3d_cursor3d_get(ptr noundef %6, ptr noundef %7) #6
  %9 = icmp eq ptr %4, null
  br i1 %9, label %35, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 3
  %12 = load i16, ptr %11, align 8, !tbaa !94
  switch i16 %12, label %46 [
    i16 1, label %13
    i16 22, label %21
  ]

13:                                               ; preds = %10
  %14 = tail call ptr @BKE_editmesh_from_object(ptr noundef nonnull %4) #6
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #6
  %15 = load ptr, ptr %14, align 8, !tbaa !95
  %16 = call zeroext i8 @BM_select_history_active_get(ptr noundef %15, ptr noundef nonnull %3) #6
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  call void @BM_editselection_center(ptr noundef nonnull %3, ptr noundef %8) #6
  br label %19

19:                                               ; preds = %18, %13
  %20 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 47
  call void @mul_m4_v3(ptr noundef nonnull %20, ptr noundef %8) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #6
  br label %46

21:                                               ; preds = %10
  %22 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 19
  %23 = load ptr, ptr %22, align 8, !tbaa !70
  %24 = tail call ptr @BKE_lattice_active_point_get(ptr noundef %23) #6
  %25 = icmp eq ptr %24, null
  br i1 %25, label %46, label %26

26:                                               ; preds = %21
  %27 = load float, ptr %24, align 4, !tbaa !56
  store float %27, ptr %8, align 4, !tbaa !56
  %28 = getelementptr inbounds float, ptr %24, i64 1
  %29 = load float, ptr %28, align 4, !tbaa !56
  %30 = getelementptr inbounds float, ptr %8, i64 1
  store float %29, ptr %30, align 4, !tbaa !56
  %31 = getelementptr inbounds float, ptr %24, i64 2
  %32 = load float, ptr %31, align 4, !tbaa !56
  %33 = getelementptr inbounds float, ptr %8, i64 2
  store float %32, ptr %33, align 4, !tbaa !56
  %34 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 47
  tail call void @mul_m4_v3(ptr noundef nonnull %34, ptr noundef nonnull %8) #6
  br label %46

35:                                               ; preds = %2
  %36 = icmp eq ptr %5, null
  br i1 %36, label %46, label %37

37:                                               ; preds = %35
  %38 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 47, i64 3
  %39 = load float, ptr %38, align 4, !tbaa !56
  store float %39, ptr %8, align 4, !tbaa !56
  %40 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 47, i64 3, i64 1
  %41 = load float, ptr %40, align 4, !tbaa !56
  %42 = getelementptr inbounds float, ptr %8, i64 1
  store float %41, ptr %42, align 4, !tbaa !56
  %43 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 47, i64 3, i64 2
  %44 = load float, ptr %43, align 4, !tbaa !56
  %45 = getelementptr inbounds float, ptr %8, i64 2
  store float %44, ptr %45, align 4, !tbaa !56
  br label %46

46:                                               ; preds = %21, %26, %10, %35, %37, %19
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 252248064, ptr noundef %7) #6
  ret i32 4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @VIEW3D_OT_snap_cursor_to_center(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.18, ptr %0, align 8, !tbaa !34
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.19, ptr %2, align 8, !tbaa !42
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.20, ptr %3, align 8, !tbaa !43
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @snap_curs_to_center_exec, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_view3d_active, ptr %5, align 8, !tbaa !45
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !46
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @snap_curs_to_center_exec(ptr noundef %0, ptr nocapture readnone %1) #1 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #6
  %4 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #6
  %5 = tail call ptr @ED_view3d_cursor3d_get(ptr noundef %3, ptr noundef %4) #6
  store float 0.000000e+00, ptr %5, align 4, !tbaa !56
  %6 = getelementptr inbounds float, ptr %5, i64 1
  store float 0.000000e+00, ptr %6, align 4, !tbaa !56
  %7 = getelementptr inbounds float, ptr %5, i64 2
  store float 0.000000e+00, ptr %7, align 4, !tbaa !56
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 252248064, ptr noundef %4) #6
  ret i32 4
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @ED_view3d_minmax_verts(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 {
  %4 = alloca %struct.TransVertStore, align 8
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x [3 x float]], align 16
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #6
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #6
  %9 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %10 = load i16, ptr %9, align 8, !tbaa !94
  %11 = icmp eq i16 %10, 5
  br i1 %11, label %12, label %20

12:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #6
  %13 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %14 = load ptr, ptr %13, align 8, !tbaa !70
  %15 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 47
  %16 = call zeroext i8 @BKE_mball_minmax_ex(ptr noundef %14, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %15, i16 noundef signext 1) #6
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %12
  call void @minmax_v3v3_v3(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %7) #6
  call void @minmax_v3v3_v3(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %8) #6
  br label %19

19:                                               ; preds = %18, %12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #6
  br label %71

20:                                               ; preds = %3
  %21 = tail call zeroext i8 @ED_transverts_check_obedit(ptr noundef %0) #6
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  call void @ED_transverts_create_from_obedit(ptr noundef nonnull %4, ptr noundef %0, i32 noundef 1) #6
  br label %24

24:                                               ; preds = %23, %20
  %25 = getelementptr inbounds %struct.TransVertStore, ptr %4, i64 0, i32 1
  %26 = load i32, ptr %25, align 8, !tbaa !50
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %71, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 47
  call void @copy_m3_m4(ptr noundef nonnull %6, ptr noundef nonnull %29) #6
  %30 = load i32, ptr %25, align 8, !tbaa !50
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %70

32:                                               ; preds = %28
  %33 = load ptr, ptr %4, align 8, !tbaa !53
  %34 = getelementptr inbounds float, ptr %5, i64 1
  %35 = getelementptr inbounds float, ptr %5, i64 2
  %36 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 47, i64 3
  %37 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 47, i64 3, i64 1
  %38 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 47, i64 3, i64 2
  br label %39

39:                                               ; preds = %32, %50
  %40 = phi i32 [ 0, %32 ], [ %66, %50 ]
  %41 = phi ptr [ %33, %32 ], [ %67, %50 ]
  %42 = getelementptr inbounds %struct.TransVert, ptr %41, i64 0, i32 4
  %43 = load i32, ptr %42, align 4, !tbaa !97
  %44 = and i32 %43, 2
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %39
  %47 = getelementptr inbounds %struct.TransVert, ptr %41, i64 0, i32 2
  br label %50

48:                                               ; preds = %39
  %49 = load ptr, ptr %41, align 8, !tbaa !54
  br label %50

50:                                               ; preds = %48, %46
  %51 = phi ptr [ %47, %46 ], [ %49, %48 ]
  %52 = load float, ptr %51, align 4, !tbaa !56
  store float %52, ptr %5, align 4, !tbaa !56
  %53 = getelementptr inbounds float, ptr %51, i64 1
  %54 = load float, ptr %53, align 4, !tbaa !56
  store float %54, ptr %34, align 4, !tbaa !56
  %55 = getelementptr inbounds float, ptr %51, i64 2
  %56 = load float, ptr %55, align 4, !tbaa !56
  store float %56, ptr %35, align 4, !tbaa !56
  call void @mul_m3_v3(ptr noundef nonnull %6, ptr noundef nonnull %5) #6
  %57 = load float, ptr %36, align 4, !tbaa !56
  %58 = load float, ptr %5, align 4, !tbaa !56
  %59 = fadd float %57, %58
  store float %59, ptr %5, align 4, !tbaa !56
  %60 = load float, ptr %37, align 4, !tbaa !56
  %61 = load float, ptr %34, align 4, !tbaa !56
  %62 = fadd float %60, %61
  store float %62, ptr %34, align 4, !tbaa !56
  %63 = load float, ptr %38, align 4, !tbaa !56
  %64 = load float, ptr %35, align 4, !tbaa !56
  %65 = fadd float %63, %64
  store float %65, ptr %35, align 4, !tbaa !56
  call void @minmax_v3v3_v3(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %5) #6
  %66 = add nuw nsw i32 %40, 1
  %67 = getelementptr inbounds %struct.TransVert, ptr %41, i64 1
  %68 = load i32, ptr %25, align 8, !tbaa !50
  %69 = icmp slt i32 %66, %68
  br i1 %69, label %39, label %70, !llvm.loop !98

70:                                               ; preds = %50, %28
  call void @ED_transverts_free(ptr noundef nonnull %4) #6
  br label %71

71:                                               ; preds = %24, %70, %19
  %72 = phi i8 [ %16, %19 ], [ 1, %70 ], [ 0, %24 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #6
  ret i8 %72
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

declare zeroext i8 @BKE_mball_minmax_ex(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

declare void @minmax_v3v3_v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

declare zeroext i8 @ED_transverts_check_obedit(ptr noundef) local_unnamed_addr #2

declare void @ED_transverts_create_from_obedit(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @copy_m3_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mul_m3_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_transverts_free(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_region_data(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @invert_m3_m3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #5

declare void @ED_transverts_update_obedit(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ANIM_get_keyingset_for_autokeying(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CTX_data_selected_editable_objects(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_armature_loc_pose_to_bone(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @ED_autokeyframe_pchan(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

declare void @BKE_object_where_is_calc_ex(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @ED_autokeyframe_object(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_view3d(ptr noundef) local_unnamed_addr #2

declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ED_view3d_cursor3d_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i8 @snap_curs_to_sel_ex(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
  %3 = alloca [3 x float], align 4
  %4 = alloca [3 x float], align 4
  %5 = alloca [4 x [4 x float]], align 16
  %6 = alloca [3 x float], align 4
  %7 = alloca [4 x [4 x float]], align 16
  %8 = alloca [4 x [4 x float]], align 16
  %9 = alloca [4 x [4 x float]], align 16
  %10 = alloca %struct.TransVertStore, align 8
  %11 = alloca [3 x [3 x float]], align 16
  %12 = alloca [3 x float], align 4
  %13 = alloca [3 x float], align 4
  %14 = alloca [3 x float], align 4
  %15 = alloca %struct.ListBase, align 8
  %16 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #6
  %17 = tail call ptr @CTX_data_scene(ptr noundef %0) #6
  %18 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #6
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %11) #6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #6
  %19 = getelementptr inbounds [3 x float], ptr %13, i64 0, i64 2
  store float 0x46293E5940000000, ptr %19, align 4, !tbaa !56
  %20 = getelementptr inbounds [3 x float], ptr %13, i64 0, i64 1
  store float 0x46293E5940000000, ptr %20, align 4, !tbaa !56
  store float 0x46293E5940000000, ptr %13, align 4, !tbaa !56
  %21 = getelementptr inbounds [3 x float], ptr %14, i64 0, i64 2
  store float 0xC6293E5940000000, ptr %21, align 4, !tbaa !56
  %22 = getelementptr inbounds [3 x float], ptr %14, i64 0, i64 1
  store float 0xC6293E5940000000, ptr %22, align 4, !tbaa !56
  store float 0xC6293E5940000000, ptr %14, align 4, !tbaa !56
  %23 = icmp eq ptr %16, null
  br i1 %23, label %89, label %24

24:                                               ; preds = %2
  %25 = tail call zeroext i8 @ED_transverts_check_obedit(ptr noundef nonnull %16) #6
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %24
  call void @ED_transverts_create_from_obedit(ptr noundef nonnull %10, ptr noundef nonnull %16, i32 noundef 3) #6
  br label %28

28:                                               ; preds = %27, %24
  %29 = getelementptr inbounds %struct.TransVertStore, ptr %10, i64 0, i32 1
  %30 = load i32, ptr %29, align 8, !tbaa !50
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %275, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.Object, ptr %16, i64 0, i32 47
  call void @copy_m3_m4(ptr noundef nonnull %11, ptr noundef nonnull %33) #6
  %34 = load i32, ptr %29, align 8, !tbaa !50
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %71

36:                                               ; preds = %32
  %37 = load ptr, ptr %10, align 8, !tbaa !53
  %38 = getelementptr inbounds float, ptr %12, i64 1
  %39 = getelementptr inbounds float, ptr %12, i64 2
  %40 = getelementptr inbounds %struct.Object, ptr %16, i64 0, i32 47, i64 3
  %41 = getelementptr inbounds %struct.Object, ptr %16, i64 0, i32 47, i64 3, i64 1
  %42 = getelementptr inbounds %struct.Object, ptr %16, i64 0, i32 47, i64 3, i64 2
  br label %43

43:                                               ; preds = %36, %43
  %44 = phi ptr [ %37, %36 ], [ %68, %43 ]
  %45 = phi i32 [ 0, %36 ], [ %67, %43 ]
  %46 = phi float [ 0.000000e+00, %36 ], [ %64, %43 ]
  %47 = phi float [ 0.000000e+00, %36 ], [ %65, %43 ]
  %48 = phi float [ 0.000000e+00, %36 ], [ %66, %43 ]
  %49 = load ptr, ptr %44, align 8, !tbaa !54
  %50 = load float, ptr %49, align 4, !tbaa !56
  store float %50, ptr %12, align 4, !tbaa !56
  %51 = getelementptr inbounds float, ptr %49, i64 1
  %52 = load float, ptr %51, align 4, !tbaa !56
  store float %52, ptr %38, align 4, !tbaa !56
  %53 = getelementptr inbounds float, ptr %49, i64 2
  %54 = load float, ptr %53, align 4, !tbaa !56
  store float %54, ptr %39, align 4, !tbaa !56
  call void @mul_m3_v3(ptr noundef nonnull %11, ptr noundef nonnull %12) #6
  %55 = load float, ptr %40, align 4, !tbaa !56
  %56 = load float, ptr %12, align 4, !tbaa !56
  %57 = fadd float %55, %56
  store float %57, ptr %12, align 4, !tbaa !56
  %58 = load float, ptr %41, align 4, !tbaa !56
  %59 = load float, ptr %38, align 4, !tbaa !56
  %60 = fadd float %58, %59
  store float %60, ptr %38, align 4, !tbaa !56
  %61 = load float, ptr %42, align 4, !tbaa !56
  %62 = load float, ptr %39, align 4, !tbaa !56
  %63 = fadd float %61, %62
  store float %63, ptr %39, align 4, !tbaa !56
  %64 = fadd float %46, %57
  %65 = fadd float %47, %60
  %66 = fadd float %48, %63
  call void @minmax_v3v3_v3(ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef nonnull %12) #6
  %67 = add nuw nsw i32 %45, 1
  %68 = getelementptr inbounds %struct.TransVert, ptr %44, i64 1
  %69 = load i32, ptr %29, align 8, !tbaa !50
  %70 = icmp slt i32 %67, %69
  br i1 %70, label %43, label %71, !llvm.loop !99

71:                                               ; preds = %43, %32
  %72 = phi float [ 0.000000e+00, %32 ], [ %66, %43 ]
  %73 = phi float [ 0.000000e+00, %32 ], [ %65, %43 ]
  %74 = phi float [ 0.000000e+00, %32 ], [ %64, %43 ]
  %75 = phi i32 [ %34, %32 ], [ %69, %43 ]
  %76 = getelementptr inbounds %struct.View3D, ptr %18, i64 0, i32 27
  %77 = load i16, ptr %76, align 2, !tbaa !100
  %78 = icmp eq i16 %77, 3
  br i1 %78, label %79, label %87

79:                                               ; preds = %71
  %80 = sitofp i32 %75 to float
  %81 = fdiv float 1.000000e+00, %80
  %82 = fmul float %74, %81
  %83 = fmul float %73, %81
  %84 = fmul float %72, %81
  store float %82, ptr %1, align 4, !tbaa !56
  %85 = getelementptr inbounds float, ptr %1, i64 1
  store float %83, ptr %85, align 4, !tbaa !56
  %86 = getelementptr inbounds float, ptr %1, i64 2
  store float %84, ptr %86, align 4, !tbaa !56
  br label %88

87:                                               ; preds = %71
  call void @mid_v3_v3v3(ptr noundef %1, ptr noundef nonnull %13, ptr noundef nonnull %14) #6
  br label %88

88:                                               ; preds = %87, %79
  call void @ED_transverts_free(ptr noundef nonnull %10) #6
  br label %275

89:                                               ; preds = %2
  %90 = tail call ptr @CTX_data_active_object(ptr noundef %0) #6
  %91 = icmp eq ptr %90, null
  br i1 %91, label %148, label %92

92:                                               ; preds = %89
  %93 = getelementptr inbounds %struct.Object, ptr %90, i64 0, i32 27
  %94 = load i32, ptr %93, align 8, !tbaa !65
  %95 = and i32 %94, 64
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %148, label %97

97:                                               ; preds = %92
  %98 = getelementptr inbounds %struct.Object, ptr %90, i64 0, i32 18
  %99 = load ptr, ptr %98, align 8, !tbaa !71
  %100 = load ptr, ptr %99, align 8, !tbaa !60
  %101 = icmp eq ptr %100, null
  br i1 %101, label %256, label %102

102:                                              ; preds = %97
  %103 = getelementptr inbounds %struct.Object, ptr %90, i64 0, i32 19
  %104 = load ptr, ptr %103, align 8, !tbaa !70
  %105 = getelementptr inbounds %struct.bArmature, ptr %104, i64 0, i32 15
  %106 = getelementptr inbounds float, ptr %12, i64 1
  %107 = getelementptr inbounds float, ptr %12, i64 2
  %108 = getelementptr inbounds %struct.Object, ptr %90, i64 0, i32 47
  br label %109

109:                                              ; preds = %102, %141
  %110 = phi ptr [ %100, %102 ], [ %146, %141 ]
  %111 = phi i32 [ 0, %102 ], [ %145, %141 ]
  %112 = phi float [ 0.000000e+00, %102 ], [ %144, %141 ]
  %113 = phi float [ 0.000000e+00, %102 ], [ %143, %141 ]
  %114 = phi float [ 0.000000e+00, %102 ], [ %142, %141 ]
  %115 = load i32, ptr %105, align 8, !tbaa !77
  %116 = getelementptr inbounds %struct.bPoseChannel, ptr %110, i64 0, i32 12
  %117 = load ptr, ptr %116, align 8, !tbaa !72
  %118 = getelementptr inbounds %struct.Bone, ptr %117, i64 0, i32 25
  %119 = load i32, ptr %118, align 8, !tbaa !76
  %120 = and i32 %119, %115
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %141, label %122

122:                                              ; preds = %109
  %123 = getelementptr inbounds %struct.Bone, ptr %117, i64 0, i32 10
  %124 = load i32, ptr %123, align 8, !tbaa !74
  %125 = and i32 %124, 1
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %141, label %127

127:                                              ; preds = %122
  %128 = getelementptr inbounds %struct.bPoseChannel, ptr %110, i64 0, i32 31
  %129 = load float, ptr %128, align 4, !tbaa !56
  store float %129, ptr %12, align 4, !tbaa !56
  %130 = getelementptr inbounds %struct.bPoseChannel, ptr %110, i64 0, i32 31, i64 1
  %131 = load float, ptr %130, align 4, !tbaa !56
  store float %131, ptr %106, align 4, !tbaa !56
  %132 = getelementptr inbounds %struct.bPoseChannel, ptr %110, i64 0, i32 31, i64 2
  %133 = load float, ptr %132, align 4, !tbaa !56
  store float %133, ptr %107, align 4, !tbaa !56
  call void @mul_m4_v3(ptr noundef nonnull %108, ptr noundef nonnull %12) #6
  %134 = load float, ptr %12, align 4, !tbaa !56
  %135 = fadd float %112, %134
  %136 = load float, ptr %106, align 4, !tbaa !56
  %137 = fadd float %113, %136
  %138 = load float, ptr %107, align 4, !tbaa !56
  %139 = fadd float %114, %138
  call void @minmax_v3v3_v3(ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef nonnull %12) #6
  %140 = add nsw i32 %111, 1
  br label %141

141:                                              ; preds = %109, %127, %122
  %142 = phi float [ %114, %109 ], [ %114, %122 ], [ %139, %127 ]
  %143 = phi float [ %113, %109 ], [ %113, %122 ], [ %137, %127 ]
  %144 = phi float [ %112, %109 ], [ %112, %122 ], [ %135, %127 ]
  %145 = phi i32 [ %111, %109 ], [ %111, %122 ], [ %140, %127 ]
  %146 = load ptr, ptr %110, align 8, !tbaa !60
  %147 = icmp eq ptr %146, null
  br i1 %147, label %256, label %109, !llvm.loop !103

148:                                              ; preds = %92, %89
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %15) #6
  %149 = call i32 @CTX_data_selected_objects(ptr noundef %0, ptr noundef nonnull %15) #6
  %150 = load ptr, ptr %15, align 8, !tbaa !60
  %151 = icmp eq ptr %150, null
  br i1 %151, label %251, label %152

152:                                              ; preds = %148
  %153 = getelementptr inbounds float, ptr %12, i64 1
  %154 = getelementptr inbounds float, ptr %12, i64 2
  %155 = getelementptr inbounds %struct.View3D, ptr %18, i64 0, i32 29
  %156 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 2
  %157 = getelementptr inbounds [3 x float], ptr %3, i64 0, i64 1
  %158 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  %159 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 1
  %160 = getelementptr inbounds %struct.Scene, ptr %17, i64 0, i32 22, i32 5
  br label %161

161:                                              ; preds = %152, %241
  %162 = phi ptr [ %150, %152 ], [ %249, %241 ]
  %163 = phi i32 [ 0, %152 ], [ %248, %241 ]
  %164 = phi float [ 0.000000e+00, %152 ], [ %243, %241 ]
  %165 = phi float [ 0.000000e+00, %152 ], [ %245, %241 ]
  %166 = phi float [ 0.000000e+00, %152 ], [ %247, %241 ]
  %167 = getelementptr inbounds %struct.CollectionPointerLink, ptr %162, i64 0, i32 2, i32 2
  %168 = load ptr, ptr %167, align 8, !tbaa !61
  %169 = getelementptr inbounds %struct.Object, ptr %168, i64 0, i32 47, i64 3
  %170 = load float, ptr %169, align 4, !tbaa !56
  store float %170, ptr %12, align 4, !tbaa !56
  %171 = getelementptr inbounds %struct.Object, ptr %168, i64 0, i32 47, i64 3, i64 1
  %172 = load float, ptr %171, align 4, !tbaa !56
  store float %172, ptr %153, align 4, !tbaa !56
  %173 = getelementptr inbounds %struct.Object, ptr %168, i64 0, i32 47, i64 3, i64 2
  %174 = load float, ptr %173, align 4, !tbaa !56
  store float %174, ptr %154, align 4, !tbaa !56
  %175 = getelementptr inbounds %struct.Object, ptr %168, i64 0, i32 3
  %176 = load i16, ptr %175, align 8, !tbaa !94
  %177 = icmp eq i16 %176, 11
  br i1 %177, label %178, label %241

178:                                              ; preds = %161
  %179 = load i16, ptr %155, align 2, !tbaa !104
  %180 = and i16 %179, 128
  %181 = icmp eq i16 %180, 0
  br i1 %181, label %241, label %182

182:                                              ; preds = %178
  %183 = call ptr @BKE_object_movieclip_get(ptr noundef %17, ptr noundef %168, i8 noundef zeroext 0) #6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #6
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #6
  %184 = icmp eq ptr %183, null
  br i1 %184, label %240, label %185

185:                                              ; preds = %182
  %186 = getelementptr inbounds %struct.MovieClip, ptr %183, i64 0, i32 11
  %187 = getelementptr inbounds %struct.Object, ptr %168, i64 0, i32 47
  call void @copy_m4_m4(ptr noundef nonnull %7, ptr noundef nonnull %187) #6
  call void @BKE_tracking_get_camera_object_matrix(ptr noundef %17, ptr noundef %168, ptr noundef nonnull %5) #6
  store float 0x46293E5940000000, ptr %156, align 4, !tbaa !56
  store float 0x46293E5940000000, ptr %157, align 4, !tbaa !56
  store float 0x46293E5940000000, ptr %3, align 4, !tbaa !56
  store float 0xC6293E5940000000, ptr %158, align 4, !tbaa !56
  store float 0xC6293E5940000000, ptr %159, align 4, !tbaa !56
  store float 0xC6293E5940000000, ptr %4, align 4, !tbaa !56
  %188 = getelementptr inbounds %struct.MovieClip, ptr %183, i64 0, i32 11, i32 8
  %189 = load ptr, ptr %188, align 8, !tbaa !60
  %190 = icmp eq ptr %189, null
  br i1 %190, label %236, label %191

191:                                              ; preds = %185, %232
  %192 = phi ptr [ %234, %232 ], [ %189, %185 ]
  %193 = phi i8 [ %233, %232 ], [ 0, %185 ]
  %194 = call ptr @BKE_tracking_object_get_tracks(ptr noundef nonnull %186, ptr noundef nonnull %192) #6
  %195 = load ptr, ptr %194, align 8, !tbaa !105
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #6
  %196 = getelementptr inbounds %struct.MovieTrackingObject, ptr %192, i64 0, i32 3
  %197 = load i32, ptr %196, align 8, !tbaa !106
  %198 = and i32 %197, 1
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %201, label %200

200:                                              ; preds = %191
  call void @copy_m4_m4(ptr noundef nonnull %8, ptr noundef nonnull %5) #6
  br label %204

201:                                              ; preds = %191
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #6
  %202 = load i32, ptr %160, align 8, !tbaa !109
  call void @BKE_tracking_camera_get_reconstructed_interpolate(ptr noundef nonnull %186, ptr noundef nonnull %192, i32 noundef %202, ptr noundef nonnull %9) #6
  %203 = call zeroext i8 @invert_m4(ptr noundef nonnull %9) #6
  call void @mul_m4_m4m4(ptr noundef nonnull %8, ptr noundef nonnull %7, ptr noundef nonnull %9) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #6
  br label %204

204:                                              ; preds = %201, %200
  %205 = icmp eq ptr %195, null
  br i1 %205, label %232, label %206

206:                                              ; preds = %204, %228
  %207 = phi ptr [ %230, %228 ], [ %195, %204 ]
  %208 = phi i8 [ %229, %228 ], [ %193, %204 ]
  %209 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %207, i64 0, i32 13
  %210 = load i32, ptr %209, align 8, !tbaa !127
  %211 = and i32 %210, 2
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %228, label %213

213:                                              ; preds = %206
  %214 = and i32 %210, 1
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %216, label %226

216:                                              ; preds = %213
  %217 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %207, i64 0, i32 14
  %218 = load i32, ptr %217, align 4, !tbaa !129
  %219 = and i32 %218, 1
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %221, label %226

221:                                              ; preds = %216
  %222 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %207, i64 0, i32 15
  %223 = load i32, ptr %222, align 8, !tbaa !130
  %224 = and i32 %223, 1
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %228, label %226

226:                                              ; preds = %221, %216, %213
  %227 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %207, i64 0, i32 11
  call void @mul_v3_m4v3(ptr noundef nonnull %6, ptr noundef nonnull %8, ptr noundef nonnull %227) #6
  call void @minmax_v3v3_v3(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %6) #6
  br label %228

228:                                              ; preds = %226, %221, %206
  %229 = phi i8 [ 1, %226 ], [ %208, %221 ], [ %208, %206 ]
  %230 = load ptr, ptr %207, align 8, !tbaa !131
  %231 = icmp eq ptr %230, null
  br i1 %231, label %232, label %206, !llvm.loop !132

232:                                              ; preds = %228, %204
  %233 = phi i8 [ %193, %204 ], [ %229, %228 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #6
  %234 = load ptr, ptr %192, align 8, !tbaa !60
  %235 = icmp eq ptr %234, null
  br i1 %235, label %236, label %191, !llvm.loop !133

236:                                              ; preds = %232, %185
  %237 = phi i8 [ 0, %185 ], [ %233, %232 ]
  %238 = icmp eq i8 %237, 0
  br i1 %238, label %240, label %239

239:                                              ; preds = %236
  call void @mid_v3_v3v3(ptr noundef nonnull %12, ptr noundef nonnull %3, ptr noundef nonnull %4) #6
  br label %240

240:                                              ; preds = %182, %236, %239
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #6
  br label %241

241:                                              ; preds = %178, %240, %161
  %242 = load float, ptr %12, align 4, !tbaa !56
  %243 = fadd float %164, %242
  %244 = load float, ptr %153, align 4, !tbaa !56
  %245 = fadd float %165, %244
  %246 = load float, ptr %154, align 4, !tbaa !56
  %247 = fadd float %166, %246
  call void @minmax_v3v3_v3(ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef nonnull %12) #6
  %248 = add nuw nsw i32 %163, 1
  %249 = load ptr, ptr %162, align 8, !tbaa !60
  %250 = icmp eq ptr %249, null
  br i1 %250, label %251, label %161, !llvm.loop !134

251:                                              ; preds = %241, %148
  %252 = phi float [ 0.000000e+00, %148 ], [ %247, %241 ]
  %253 = phi float [ 0.000000e+00, %148 ], [ %245, %241 ]
  %254 = phi float [ 0.000000e+00, %148 ], [ %243, %241 ]
  %255 = phi i32 [ 0, %148 ], [ %248, %241 ]
  call void @BLI_freelistN(ptr noundef nonnull %15) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %15) #6
  br label %256

256:                                              ; preds = %141, %97, %251
  %257 = phi float [ %252, %251 ], [ 0.000000e+00, %97 ], [ %142, %141 ]
  %258 = phi float [ %253, %251 ], [ 0.000000e+00, %97 ], [ %143, %141 ]
  %259 = phi float [ %254, %251 ], [ 0.000000e+00, %97 ], [ %144, %141 ]
  %260 = phi i32 [ %255, %251 ], [ 0, %97 ], [ %145, %141 ]
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %275, label %262

262:                                              ; preds = %256
  %263 = getelementptr inbounds %struct.View3D, ptr %18, i64 0, i32 27
  %264 = load i16, ptr %263, align 2, !tbaa !100
  %265 = icmp eq i16 %264, 3
  br i1 %265, label %266, label %274

266:                                              ; preds = %262
  %267 = sitofp i32 %260 to float
  %268 = fdiv float 1.000000e+00, %267
  %269 = fmul float %259, %268
  %270 = fmul float %258, %268
  %271 = fmul float %257, %268
  store float %269, ptr %1, align 4, !tbaa !56
  %272 = getelementptr inbounds float, ptr %1, i64 1
  store float %270, ptr %272, align 4, !tbaa !56
  %273 = getelementptr inbounds float, ptr %1, i64 2
  store float %271, ptr %273, align 4, !tbaa !56
  br label %275

274:                                              ; preds = %262
  call void @mid_v3_v3v3(ptr noundef %1, ptr noundef nonnull %13, ptr noundef nonnull %14) #6
  br label %275

275:                                              ; preds = %88, %266, %274, %256, %28
  %276 = phi i8 [ 0, %28 ], [ 0, %256 ], [ 1, %274 ], [ 1, %266 ], [ 1, %88 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #6
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #6
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %11) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #6
  ret i8 %276
}

declare void @mul_v3_m3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mul_v3_m4v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @mid_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_active_object(ptr noundef) local_unnamed_addr #2

declare i32 @CTX_data_selected_objects(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_object_movieclip_get(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @copy_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_tracking_get_camera_object_matrix(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_tracking_object_get_tracks(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BKE_tracking_camera_get_reconstructed_interpolate(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @invert_m4(ptr noundef) local_unnamed_addr #2

declare void @mul_m4_m4m4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_editmesh_from_object(ptr noundef) local_unnamed_addr #2

declare zeroext i8 @BM_select_history_active_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BM_editselection_center(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_lattice_active_point_get(ptr noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

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
!47 = !{!48, !49, i64 848}
!48 = !{!"RegionView3D", !37, i64 0, !37, i64 64, !37, i64 128, !37, i64 192, !37, i64 256, !37, i64 320, !37, i64 384, !37, i64 448, !37, i64 544, !36, i64 640, !36, i64 648, !36, i64 656, !36, i64 664, !36, i64 672, !36, i64 680, !36, i64 688, !37, i64 696, !37, i64 760, !49, i64 776, !49, i64 780, !49, i64 784, !49, i64 788, !37, i64 792, !49, i64 804, !37, i64 808, !37, i64 809, !37, i64 810, !37, i64 811, !37, i64 812, !37, i64 813, !37, i64 816, !41, i64 824, !41, i64 826, !37, i64 828, !41, i64 844, !41, i64 846, !49, i64 848, !37, i64 852, !49, i64 864, !37, i64 868}
!49 = !{!"float", !37, i64 0}
!50 = !{!51, !52, i64 8}
!51 = !{!"TransVertStore", !36, i64 0, !52, i64 8, !52, i64 12}
!52 = !{!"int", !37, i64 0}
!53 = !{!51, !36, i64 0}
!54 = !{!55, !36, i64 0}
!55 = !{!"TransVert", !36, i64 0, !37, i64 8, !37, i64 20, !37, i64 32, !52, i64 44}
!56 = !{!49, !49, i64 0}
!57 = distinct !{!57, !58, !59}
!58 = !{!"llvm.loop.mustprogress"}
!59 = !{!"llvm.loop.unroll.disable"}
!60 = !{!36, !36, i64 0}
!61 = !{!62, !36, i64 32}
!62 = !{!"CollectionPointerLink", !36, i64 0, !36, i64 8, !63, i64 16}
!63 = !{!"PointerRNA", !64, i64 0, !36, i64 8, !36, i64 16}
!64 = !{!"", !36, i64 0}
!65 = !{!66, !52, i64 432}
!66 = !{!"Object", !67, i64 0, !36, i64 120, !36, i64 128, !41, i64 136, !41, i64 138, !52, i64 140, !52, i64 144, !52, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !68, i64 312, !36, i64 360, !39, i64 368, !39, i64 384, !39, i64 400, !39, i64 416, !52, i64 432, !52, i64 436, !36, i64 440, !36, i64 448, !52, i64 456, !52, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !49, i64 616, !49, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !52, i64 944, !41, i64 948, !41, i64 950, !41, i64 952, !41, i64 954, !41, i64 956, !41, i64 958, !41, i64 960, !41, i64 962, !41, i64 964, !37, i64 966, !37, i64 967, !52, i64 968, !52, i64 972, !52, i64 976, !52, i64 980, !52, i64 984, !49, i64 988, !49, i64 992, !49, i64 996, !49, i64 1000, !49, i64 1004, !49, i64 1008, !49, i64 1012, !49, i64 1016, !49, i64 1020, !49, i64 1024, !49, i64 1028, !49, i64 1032, !41, i64 1036, !41, i64 1038, !41, i64 1040, !37, i64 1042, !37, i64 1043, !41, i64 1044, !37, i64 1046, !37, i64 1047, !49, i64 1048, !49, i64 1052, !39, i64 1056, !39, i64 1072, !39, i64 1088, !39, i64 1104, !49, i64 1120, !41, i64 1124, !41, i64 1126, !37, i64 1128, !52, i64 1144, !52, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !41, i64 1162, !37, i64 1164, !39, i64 1176, !39, i64 1192, !39, i64 1208, !39, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !41, i64 1266, !49, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !69, i64 1304, !69, i64 1312, !52, i64 1320, !52, i64 1324, !39, i64 1328, !39, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !39, i64 1400, !36, i64 1416}
!67 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !41, i64 98, !52, i64 100, !52, i64 104, !52, i64 108, !36, i64 112}
!68 = !{!"bAnimVizSettings", !52, i64 0, !52, i64 4, !52, i64 8, !52, i64 12, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !52, i64 32, !52, i64 36, !52, i64 40, !52, i64 44}
!69 = !{!"long", !37, i64 0}
!70 = !{!66, !36, i64 296}
!71 = !{!66, !36, i64 288}
!72 = !{!73, !36, i64 120}
!73 = !{!"bPoseChannel", !36, i64 0, !36, i64 8, !36, i64 16, !39, i64 24, !37, i64 40, !41, i64 104, !41, i64 106, !41, i64 108, !41, i64 110, !37, i64 112, !37, i64 113, !37, i64 114, !36, i64 120, !36, i64 128, !36, i64 136, !39, i64 144, !39, i64 160, !36, i64 176, !36, i64 184, !36, i64 192, !37, i64 200, !37, i64 212, !37, i64 224, !37, i64 236, !37, i64 252, !49, i64 264, !41, i64 268, !41, i64 270, !37, i64 272, !37, i64 336, !37, i64 400, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !49, i64 524, !49, i64 528, !49, i64 532, !36, i64 536}
!74 = !{!75, !52, i64 176}
!75 = !{!"Bone", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !39, i64 32, !37, i64 48, !49, i64 112, !37, i64 116, !37, i64 128, !37, i64 140, !52, i64 176, !37, i64 180, !37, i64 192, !37, i64 204, !49, i64 268, !49, i64 272, !49, i64 276, !49, i64 280, !49, i64 284, !49, i64 288, !49, i64 292, !49, i64 296, !49, i64 300, !49, i64 304, !37, i64 308, !52, i64 320, !41, i64 324, !37, i64 326}
!76 = !{!75, !52, i64 320}
!77 = !{!78, !52, i64 216}
!78 = !{!"bArmature", !67, i64 0, !36, i64 120, !39, i64 128, !39, i64 144, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !52, i64 192, !52, i64 196, !52, i64 200, !52, i64 204, !41, i64 208, !41, i64 210, !52, i64 212, !52, i64 216, !52, i64 220, !41, i64 224, !41, i64 226, !41, i64 228, !41, i64 230, !52, i64 232, !52, i64 236, !52, i64 240, !52, i64 244, !52, i64 248, !52, i64 252}
!79 = !{!73, !41, i64 108}
!80 = distinct !{!80, !58, !59}
!81 = !{!82, !41, i64 24}
!82 = !{!"bPose", !39, i64 0, !36, i64 16, !41, i64 24, !41, i64 26, !52, i64 28, !52, i64 32, !49, i64 36, !37, i64 40, !37, i64 52, !39, i64 64, !52, i64 80, !52, i64 84, !36, i64 88, !36, i64 96, !68, i64 104, !37, i64 152}
!83 = !{!66, !36, i64 216}
!84 = !{!66, !41, i64 954}
!85 = distinct !{!85, !58, !59}
!86 = !{!35, !36, i64 88}
!87 = !{!88, !36, i64 112}
!88 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !39, i64 128, !36, i64 144, !36, i64 152, !41, i64 160, !37, i64 162}
!89 = !{i8 0, i8 2}
!90 = distinct !{!90, !58, !59}
!91 = distinct !{!91, !58, !59}
!92 = distinct !{!92, !58, !59}
!93 = distinct !{!93, !58, !59}
!94 = !{!66, !41, i64 136}
!95 = !{!96, !36, i64 0}
!96 = !{!"BMEditMesh", !36, i64 0, !36, i64 8, !52, i64 16, !36, i64 24, !52, i64 32, !36, i64 40, !36, i64 48, !69, i64 56, !36, i64 64, !52, i64 72, !36, i64 80, !52, i64 88, !41, i64 92, !41, i64 94, !36, i64 96, !52, i64 104}
!97 = !{!55, !52, i64 44}
!98 = distinct !{!98, !58, !59}
!99 = distinct !{!99, !58, !59}
!100 = !{!101, !41, i64 238}
!101 = !{!"View3D", !36, i64 0, !36, i64 8, !39, i64 16, !52, i64 32, !49, i64 36, !37, i64 40, !37, i64 56, !49, i64 72, !49, i64 76, !37, i64 80, !37, i64 81, !52, i64 84, !52, i64 88, !41, i64 92, !41, i64 94, !36, i64 96, !36, i64 104, !102, i64 112, !39, i64 128, !36, i64 144, !36, i64 152, !37, i64 160, !52, i64 224, !52, i64 228, !41, i64 232, !41, i64 234, !41, i64 236, !41, i64 238, !41, i64 240, !41, i64 242, !49, i64 244, !49, i64 248, !49, i64 252, !49, i64 256, !37, i64 260, !37, i64 272, !41, i64 284, !41, i64 286, !41, i64 288, !37, i64 290, !37, i64 291, !37, i64 292, !37, i64 293, !37, i64 294, !39, i64 296, !39, i64 312, !39, i64 328, !37, i64 344, !37, i64 345, !37, i64 346, !37, i64 347, !36, i64 352, !36, i64 360, !36, i64 368}
!102 = !{!"rctf", !49, i64 0, !49, i64 4, !49, i64 8, !49, i64 12}
!103 = distinct !{!103, !58, !59}
!104 = !{!101, !41, i64 242}
!105 = !{!39, !36, i64 0}
!106 = !{!107, !52, i64 80}
!107 = !{!"MovieTrackingObject", !36, i64 0, !36, i64 8, !37, i64 16, !52, i64 80, !49, i64 84, !39, i64 88, !39, i64 104, !108, i64 120, !52, i64 144, !52, i64 148}
!108 = !{!"MovieTrackingReconstruction", !52, i64 0, !49, i64 4, !52, i64 8, !52, i64 12, !36, i64 16}
!109 = !{!110, !52, i64 680}
!110 = !{!"Scene", !67, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !39, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !52, i64 232, !52, i64 236, !52, i64 240, !41, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !111, i64 280, !119, i64 4264, !39, i64 4296, !39, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !41, i64 4376, !41, i64 4378, !52, i64 4380, !39, i64 4384, !120, i64 4400, !121, i64 4416, !124, i64 4600, !36, i64 4608, !125, i64 4616, !36, i64 4640, !69, i64 4648, !69, i64 4656, !113, i64 4664, !114, i64 4824, !126, i64 4888, !36, i64 4952}
!111 = !{!"RenderData", !112, i64 0, !36, i64 248, !36, i64 256, !115, i64 264, !116, i64 328, !52, i64 400, !52, i64 404, !52, i64 408, !49, i64 412, !52, i64 416, !52, i64 420, !52, i64 424, !52, i64 428, !41, i64 432, !41, i64 434, !49, i64 436, !49, i64 440, !49, i64 444, !49, i64 448, !49, i64 452, !41, i64 456, !41, i64 458, !41, i64 460, !41, i64 462, !41, i64 464, !41, i64 466, !52, i64 468, !41, i64 472, !41, i64 474, !41, i64 476, !41, i64 478, !41, i64 480, !41, i64 482, !52, i64 484, !52, i64 488, !41, i64 492, !41, i64 494, !52, i64 496, !52, i64 500, !41, i64 504, !41, i64 506, !41, i64 508, !41, i64 510, !41, i64 512, !37, i64 514, !37, i64 515, !52, i64 516, !52, i64 520, !52, i64 524, !41, i64 528, !41, i64 530, !41, i64 532, !41, i64 534, !41, i64 536, !41, i64 538, !41, i64 540, !41, i64 542, !102, i64 544, !102, i64 560, !117, i64 576, !39, i64 592, !41, i64 608, !41, i64 610, !49, i64 612, !49, i64 616, !49, i64 620, !49, i64 624, !52, i64 628, !49, i64 632, !49, i64 636, !49, i64 640, !49, i64 644, !41, i64 648, !41, i64 650, !41, i64 652, !41, i64 654, !41, i64 656, !41, i64 658, !49, i64 660, !49, i64 664, !41, i64 668, !41, i64 670, !49, i64 672, !49, i64 676, !37, i64 680, !52, i64 1704, !41, i64 1708, !41, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !52, i64 2520, !41, i64 2524, !41, i64 2526, !49, i64 2528, !49, i64 2532, !41, i64 2536, !41, i64 2538, !49, i64 2540, !41, i64 2544, !41, i64 2546, !52, i64 2548, !41, i64 2552, !41, i64 2554, !41, i64 2556, !41, i64 2558, !49, i64 2560, !49, i64 2564, !36, i64 2568, !52, i64 2576, !49, i64 2580, !37, i64 2584, !118, i64 2616, !52, i64 3976, !52, i64 3980}
!112 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !41, i64 8, !41, i64 10, !49, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !113, i64 24, !114, i64 184}
!113 = !{!"ColorManagedViewSettings", !52, i64 0, !52, i64 4, !37, i64 8, !37, i64 72, !49, i64 136, !49, i64 140, !36, i64 144, !36, i64 152}
!114 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!115 = !{!"QuicktimeCodecSettings", !52, i64 0, !52, i64 4, !52, i64 8, !52, i64 12, !52, i64 16, !52, i64 20, !52, i64 24, !52, i64 28, !52, i64 32, !52, i64 36, !52, i64 40, !52, i64 44, !41, i64 48, !41, i64 50, !52, i64 52, !52, i64 56, !52, i64 60}
!116 = !{!"FFMpegCodecData", !52, i64 0, !52, i64 4, !52, i64 8, !52, i64 12, !52, i64 16, !52, i64 20, !52, i64 24, !52, i64 28, !49, i64 32, !52, i64 36, !52, i64 40, !52, i64 44, !52, i64 48, !52, i64 52, !52, i64 56, !52, i64 60, !36, i64 64}
!117 = !{!"rcti", !52, i64 0, !52, i64 4, !52, i64 8, !52, i64 12}
!118 = !{!"BakeData", !112, i64 0, !37, i64 248, !41, i64 1272, !41, i64 1274, !41, i64 1276, !41, i64 1278, !49, i64 1280, !49, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!119 = !{!"AudioData", !52, i64 0, !49, i64 4, !49, i64 8, !49, i64 12, !52, i64 16, !41, i64 20, !41, i64 22, !49, i64 24, !49, i64 28}
!120 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!121 = !{!"GameData", !120, i64 0, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !41, i64 32, !37, i64 34, !122, i64 40, !41, i64 64, !41, i64 66, !49, i64 68, !123, i64 72, !49, i64 128, !49, i64 132, !52, i64 136, !41, i64 140, !41, i64 142, !41, i64 144, !41, i64 146, !41, i64 148, !41, i64 150, !41, i64 152, !41, i64 154, !41, i64 156, !41, i64 158, !41, i64 160, !41, i64 162, !49, i64 164, !49, i64 168, !49, i64 172, !49, i64 176, !49, i64 180}
!122 = !{!"GameDome", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !49, i64 8, !49, i64 12, !36, i64 16}
!123 = !{!"RecastData", !49, i64 0, !49, i64 4, !49, i64 8, !49, i64 12, !49, i64 16, !49, i64 20, !49, i64 24, !49, i64 28, !49, i64 32, !49, i64 36, !52, i64 40, !49, i64 44, !49, i64 48, !41, i64 52, !41, i64 54}
!124 = !{!"UnitSettings", !49, i64 0, !37, i64 4, !37, i64 5, !41, i64 6}
!125 = !{!"PhysicsSettings", !37, i64 0, !52, i64 12, !52, i64 16, !52, i64 20}
!126 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!127 = !{!128, !52, i64 152}
!128 = !{!"MovieTrackingTrack", !36, i64 0, !36, i64 8, !37, i64 16, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !52, i64 120, !52, i64 124, !36, i64 128, !37, i64 136, !49, i64 148, !52, i64 152, !52, i64 156, !52, i64 160, !37, i64 164, !41, i64 176, !41, i64 178, !41, i64 180, !41, i64 182, !52, i64 184, !49, i64 188, !36, i64 192, !49, i64 200, !49, i64 204}
!129 = !{!128, !52, i64 156}
!130 = !{!128, !52, i64 160}
!131 = !{!128, !36, i64 0}
!132 = distinct !{!132, !58, !59}
!133 = distinct !{!133, !58, !59}
!134 = distinct !{!134, !58, !59}

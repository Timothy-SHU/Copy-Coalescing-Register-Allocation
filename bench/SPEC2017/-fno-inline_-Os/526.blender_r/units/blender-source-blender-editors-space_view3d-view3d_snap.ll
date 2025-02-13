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
%struct.MovieClip = type { %struct.ID, ptr, [1024 x i8], i32, i32, [2 x i32], float, float, ptr, ptr, ptr, %struct.MovieTracking, ptr, %struct.MovieClipProxy, i32, i32, i32, i32, %struct.ColorManagedColorspaceSettings }
%struct.MovieTracking = type { %struct.MovieTrackingSettings, %struct.MovieTrackingCamera, %struct.ListBase, %struct.ListBase, %struct.MovieTrackingReconstruction, %struct.MovieTrackingStabilization, ptr, ptr, %struct.ListBase, i32, i32, ptr, %struct.MovieTrackingDopesheet }
%struct.MovieTrackingSettings = type { i32, i16, i16, float, i16, i16, i16, i16, i16, i16, float, i16, i16, i32, i32, i32, i16, i16, float, i32, i32, float, float, i32 }
%struct.MovieTrackingCamera = type { ptr, i16, i16, float, float, float, i16, i16, [2 x float], float, float, float, float, float }
%struct.MovieTrackingReconstruction = type { i32, float, i32, i32, ptr }
%struct.MovieTrackingStabilization = type { i32, i32, i32, float, ptr, float, float, float, i32, i32, float }
%struct.MovieTrackingDopesheet = type { i32, i16, i16, %struct.ListBase, %struct.ListBase, i32, i32 }
%struct.MovieClipProxy = type { [768 x i8], i16, i16, i16, i16 }
%struct.ColorManagedColorspaceSettings = type { [64 x i8] }
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

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
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

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @snap_sel_to_grid_exec(ptr noundef %0, ptr nocapture readnone %1) #1 !PGOFuncName !47 {
  %3 = alloca %struct.TransVertStore, align 8
  %4 = alloca [3 x [3 x float]], align 16
  %5 = alloca [3 x [3 x float]], align 16
  %6 = alloca [3 x float], align 8
  %7 = alloca %struct.ListBase, align 8
  %8 = alloca [3 x float], align 8
  %9 = alloca [3 x [3 x float]], align 16
  %10 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #8
  %11 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %12 = tail call ptr @CTX_wm_region_data(ptr noundef %0) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #9
  %13 = getelementptr inbounds %struct.RegionView3D, ptr %12, i64 0, i32 36
  %14 = load float, ptr %13, align 8, !tbaa !48
  %15 = icmp eq ptr %10, null
  br i1 %15, label %55, label %16

16:                                               ; preds = %2
  %17 = tail call zeroext i8 @ED_transverts_check_obedit(ptr noundef nonnull %10) #8
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %200, label %19

19:                                               ; preds = %16
  call void @ED_transverts_create_from_obedit(ptr noundef nonnull %3, ptr noundef nonnull %10, i32 noundef 0) #8
  %20 = getelementptr inbounds %struct.TransVertStore, ptr %3, i64 0, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !51
  %22 = icmp eq i32 %21, 0
  %23 = getelementptr inbounds %struct.TransVertStore, ptr %3, i64 0, i32 1
  br i1 %22, label %200, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 47
  call void @copy_m3_m4(ptr noundef nonnull %5, ptr noundef nonnull %25) #8
  %26 = call zeroext i8 @invert_m3_m3(ptr noundef nonnull %4, ptr noundef nonnull %5) #8
  %27 = load i32, ptr %23, align 8, !tbaa !51
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %54

29:                                               ; preds = %24
  %30 = load ptr, ptr %3, align 8, !tbaa !54
  %31 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 47, i64 3
  %32 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  %33 = insertelement <2 x float> poison, float %14, i64 0
  %34 = shufflevector <2 x float> %33, <2 x float> poison, <2 x i32> zeroinitializer
  br label %35

35:                                               ; preds = %29, %35
  %36 = phi ptr [ %30, %29 ], [ %51, %35 ]
  %37 = phi i32 [ 0, %29 ], [ %50, %35 ]
  %38 = load ptr, ptr %36, align 8, !tbaa !55
  call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef %38) #10
  call void @mul_m3_v3(ptr noundef nonnull %5, ptr noundef nonnull %6) #8
  call fastcc void @add_v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %31) #10
  %39 = load <2 x float>, ptr %6, align 8, !tbaa !57
  %40 = fdiv <2 x float> %39, %34
  %41 = fadd <2 x float> %40, <float 5.000000e-01, float 5.000000e-01>
  %42 = call <2 x float> @llvm.floor.v2f32(<2 x float> %41)
  %43 = fmul <2 x float> %34, %42
  store <2 x float> %43, ptr %6, align 8, !tbaa !57
  %44 = load float, ptr %32, align 8, !tbaa !57
  %45 = fdiv float %44, %14
  %46 = fadd float %45, 5.000000e-01
  %47 = call float @llvm.floor.f32(float %46)
  %48 = fmul float %14, %47
  store float %48, ptr %32, align 8, !tbaa !57
  call fastcc void @sub_v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %31) #10
  call void @mul_m3_v3(ptr noundef nonnull %4, ptr noundef nonnull %6) #8
  %49 = load ptr, ptr %36, align 8, !tbaa !55
  call fastcc void @copy_v3_v3(ptr noundef %49, ptr noundef nonnull %6) #10
  %50 = add nuw nsw i32 %37, 1
  %51 = getelementptr inbounds %struct.TransVert, ptr %36, i64 1
  %52 = load i32, ptr %23, align 8, !tbaa !51
  %53 = icmp slt i32 %50, %52
  br i1 %53, label %35, label %54, !llvm.loop !58

54:                                               ; preds = %35, %24
  call void @ED_transverts_update_obedit(ptr noundef nonnull %3, ptr noundef nonnull %10) #8
  call void @ED_transverts_free(ptr noundef nonnull %3) #8
  br label %199

55:                                               ; preds = %2
  %56 = tail call ptr @ANIM_get_keyingset_for_autokeying(ptr noundef %11, ptr noundef nonnull @.str.21) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #9
  %57 = call i32 @CTX_data_selected_editable_objects(ptr noundef %0, ptr noundef nonnull %7) #8
  %58 = load ptr, ptr %7, align 8, !tbaa !60
  %59 = icmp eq ptr %58, null
  br i1 %59, label %198, label %60

60:                                               ; preds = %55
  %61 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 1
  %62 = getelementptr inbounds [3 x float], ptr %8, i64 0, i64 2
  %63 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  %64 = insertelement <2 x float> poison, float %14, i64 0
  %65 = shufflevector <2 x float> %64, <2 x float> poison, <2 x i32> zeroinitializer
  br label %66

66:                                               ; preds = %60, %194
  %67 = phi ptr [ %58, %60 ], [ %196, %194 ]
  %68 = getelementptr inbounds %struct.CollectionPointerLink, ptr %67, i64 0, i32 2, i32 2
  %69 = load ptr, ptr %68, align 8, !tbaa !61
  %70 = getelementptr inbounds %struct.Object, ptr %69, i64 0, i32 27
  %71 = load i32, ptr %70, align 8, !tbaa !65
  %72 = and i32 %71, 64
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %146, label %74

74:                                               ; preds = %66
  %75 = getelementptr inbounds %struct.Object, ptr %69, i64 0, i32 19
  %76 = load ptr, ptr %75, align 8, !tbaa !70
  %77 = getelementptr inbounds %struct.Object, ptr %69, i64 0, i32 50
  %78 = getelementptr inbounds %struct.Object, ptr %69, i64 0, i32 47
  %79 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %77, ptr noundef nonnull %78) #8
  %80 = getelementptr inbounds %struct.Object, ptr %69, i64 0, i32 18
  %81 = load ptr, ptr %80, align 8, !tbaa !71
  %82 = load ptr, ptr %81, align 8, !tbaa !60
  %83 = icmp eq ptr %82, null
  br i1 %83, label %141, label %84

84:                                               ; preds = %74
  %85 = getelementptr inbounds %struct.bArmature, ptr %76, i64 0, i32 15
  br label %86

86:                                               ; preds = %84, %136
  %87 = phi ptr [ %82, %84 ], [ %137, %136 ]
  %88 = getelementptr inbounds %struct.bPoseChannel, ptr %87, i64 0, i32 12
  %89 = load ptr, ptr %88, align 8, !tbaa !72
  %90 = getelementptr inbounds %struct.Bone, ptr %89, i64 0, i32 10
  %91 = load i32, ptr %90, align 8, !tbaa !74
  %92 = and i32 %91, 1
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %136, label %94

94:                                               ; preds = %86
  %95 = getelementptr inbounds %struct.Bone, ptr %89, i64 0, i32 25
  %96 = load i32, ptr %95, align 8, !tbaa !76
  %97 = load i32, ptr %85, align 8, !tbaa !77
  %98 = and i32 %97, %96
  %99 = icmp ne i32 %98, 0
  %100 = and i32 %91, 16
  %101 = icmp eq i32 %100, 0
  %102 = and i1 %101, %99
  br i1 %102, label %103, label %136

103:                                              ; preds = %94
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #9
  %104 = getelementptr inbounds %struct.bPoseChannel, ptr %87, i64 0, i32 29, i64 3
  call fastcc void @copy_v3_v3(ptr noundef nonnull %8, ptr noundef nonnull %104) #10
  call void @mul_m4_v3(ptr noundef nonnull %78, ptr noundef nonnull %8) #8
  %105 = load <2 x float>, ptr %8, align 8, !tbaa !57
  %106 = fdiv <2 x float> %105, %65
  %107 = fadd <2 x float> %106, <float 5.000000e-01, float 5.000000e-01>
  %108 = call <2 x float> @llvm.floor.v2f32(<2 x float> %107)
  %109 = fmul <2 x float> %65, %108
  store <2 x float> %109, ptr %6, align 8, !tbaa !57
  %110 = load float, ptr %62, align 8, !tbaa !57
  %111 = fdiv float %110, %14
  %112 = fadd float %111, 5.000000e-01
  %113 = call float @llvm.floor.f32(float %112)
  %114 = fmul float %14, %113
  store float %114, ptr %63, align 8, !tbaa !57
  call void @mul_m4_v3(ptr noundef nonnull %77, ptr noundef nonnull %6) #8
  call void @BKE_armature_loc_pose_to_bone(ptr noundef nonnull %87, ptr noundef nonnull %6, ptr noundef nonnull %6) #8
  %115 = getelementptr inbounds %struct.bPoseChannel, ptr %87, i64 0, i32 7
  %116 = load i16, ptr %115, align 4, !tbaa !79
  %117 = and i16 %116, 1
  %118 = icmp eq i16 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %103
  %120 = load float, ptr %6, align 8, !tbaa !57
  %121 = getelementptr inbounds %struct.bPoseChannel, ptr %87, i64 0, i32 20
  store float %120, ptr %121, align 8, !tbaa !57
  br label %122

122:                                              ; preds = %119, %103
  %123 = and i16 %116, 2
  %124 = icmp eq i16 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %122
  %126 = load float, ptr %61, align 4, !tbaa !57
  %127 = getelementptr inbounds %struct.bPoseChannel, ptr %87, i64 0, i32 20, i64 1
  store float %126, ptr %127, align 4, !tbaa !57
  br label %128

128:                                              ; preds = %125, %122
  %129 = and i16 %116, 4
  %130 = icmp eq i16 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %128
  %132 = load float, ptr %63, align 8, !tbaa !57
  %133 = getelementptr inbounds %struct.bPoseChannel, ptr %87, i64 0, i32 20, i64 2
  store float %132, ptr %133, align 8, !tbaa !57
  br label %134

134:                                              ; preds = %131, %128
  %135 = call zeroext i8 @ED_autokeyframe_pchan(ptr noundef %0, ptr noundef %11, ptr noundef %69, ptr noundef nonnull %87, ptr noundef %56) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #9
  br label %136

136:                                              ; preds = %86, %134, %94
  %137 = load ptr, ptr %87, align 8, !tbaa !60
  %138 = icmp eq ptr %137, null
  br i1 %138, label %139, label %86, !llvm.loop !80

139:                                              ; preds = %136
  %140 = load ptr, ptr %80, align 8, !tbaa !71
  br label %141

141:                                              ; preds = %139, %74
  %142 = phi ptr [ %140, %139 ], [ %81, %74 ]
  %143 = getelementptr inbounds %struct.bPose, ptr %142, i64 0, i32 2
  %144 = load i16, ptr %143, align 8, !tbaa !81
  %145 = or i16 %144, 6
  store i16 %145, ptr %143, align 8, !tbaa !81
  br label %194

146:                                              ; preds = %66
  %147 = getelementptr inbounds %struct.Object, ptr %69, i64 0, i32 47, i64 3
  %148 = load <2 x float>, ptr %147, align 8, !tbaa !57
  %149 = fneg <2 x float> %148
  %150 = fdiv <2 x float> %148, %65
  %151 = fadd <2 x float> %150, <float 5.000000e-01, float 5.000000e-01>
  %152 = call <2 x float> @llvm.floor.v2f32(<2 x float> %151)
  %153 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %65, <2 x float> %152, <2 x float> %149)
  store <2 x float> %153, ptr %6, align 8, !tbaa !57
  %154 = getelementptr inbounds %struct.Object, ptr %69, i64 0, i32 47, i64 3, i64 2
  %155 = load float, ptr %154, align 8, !tbaa !57
  %156 = fneg float %155
  %157 = fdiv float %155, %14
  %158 = fadd float %157, 5.000000e-01
  %159 = call float @llvm.floor.f32(float %158)
  %160 = call float @llvm.fmuladd.f32(float %14, float %159, float %156)
  store float %160, ptr %63, align 8, !tbaa !57
  %161 = getelementptr inbounds %struct.Object, ptr %69, i64 0, i32 9
  %162 = load ptr, ptr %161, align 8, !tbaa !83
  %163 = icmp eq ptr %162, null
  br i1 %163, label %166, label %164

164:                                              ; preds = %146
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %9) #9
  call void @BKE_object_where_is_calc_ex(ptr noundef %11, ptr noundef null, ptr noundef nonnull %69, ptr noundef nonnull %9) #8
  %165 = call zeroext i8 @invert_m3_m3(ptr noundef nonnull %4, ptr noundef nonnull %9) #8
  call void @mul_m3_v3(ptr noundef nonnull %4, ptr noundef nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %9) #9
  br label %166

166:                                              ; preds = %164, %146
  %167 = getelementptr inbounds %struct.Object, ptr %69, i64 0, i32 56
  %168 = load i16, ptr %167, align 2, !tbaa !84
  %169 = and i16 %168, 1
  %170 = icmp eq i16 %169, 0
  br i1 %170, label %171, label %176

171:                                              ; preds = %166
  %172 = load float, ptr %6, align 8, !tbaa !57
  %173 = getelementptr inbounds %struct.Object, ptr %69, i64 0, i32 33
  %174 = load float, ptr %173, align 8, !tbaa !57
  %175 = fadd float %172, %174
  store float %175, ptr %173, align 8, !tbaa !57
  br label %176

176:                                              ; preds = %171, %166
  %177 = and i16 %168, 2
  %178 = icmp eq i16 %177, 0
  br i1 %178, label %179, label %184

179:                                              ; preds = %176
  %180 = load float, ptr %61, align 4, !tbaa !57
  %181 = getelementptr inbounds %struct.Object, ptr %69, i64 0, i32 33, i64 1
  %182 = load float, ptr %181, align 4, !tbaa !57
  %183 = fadd float %180, %182
  store float %183, ptr %181, align 4, !tbaa !57
  br label %184

184:                                              ; preds = %179, %176
  %185 = and i16 %168, 4
  %186 = icmp eq i16 %185, 0
  br i1 %186, label %187, label %192

187:                                              ; preds = %184
  %188 = load float, ptr %63, align 8, !tbaa !57
  %189 = getelementptr inbounds %struct.Object, ptr %69, i64 0, i32 33, i64 2
  %190 = load float, ptr %189, align 8, !tbaa !57
  %191 = fadd float %188, %190
  store float %191, ptr %189, align 8, !tbaa !57
  br label %192

192:                                              ; preds = %187, %184
  %193 = call zeroext i8 @ED_autokeyframe_object(ptr noundef %0, ptr noundef %11, ptr noundef nonnull %69, ptr noundef %56) #8
  br label %194

194:                                              ; preds = %192, %141
  %195 = phi i16 [ 1, %192 ], [ 2, %141 ]
  call void @DAG_id_tag_update(ptr noundef nonnull %69, i16 noundef signext %195) #8
  %196 = load ptr, ptr %67, align 8, !tbaa !60
  %197 = icmp eq ptr %196, null
  br i1 %197, label %198, label %66, !llvm.loop !85

198:                                              ; preds = %194, %55
  call void @BLI_freelistN(ptr noundef nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #9
  br label %199

199:                                              ; preds = %198, %54
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85065728, ptr noundef null) #8
  br label %200

200:                                              ; preds = %16, %19, %199
  %201 = phi i32 [ 4, %199 ], [ 2, %19 ], [ 2, %16 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #9
  ret i32 %201
}

; Function Attrs: optsize
declare i32 @ED_operator_region_view3d_active(ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
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
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.6, i32 noundef 1, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @snap_sel_to_curs_exec(ptr noundef %0, ptr nocapture noundef readonly %1) #1 !PGOFuncName !87 {
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
  %15 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #8
  %16 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %17 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #9
  %18 = getelementptr inbounds %struct.wmOperator, ptr %1, i64 0, i32 7
  %19 = load ptr, ptr %18, align 8, !tbaa !88
  %20 = tail call i32 @RNA_boolean_get(ptr noundef %19, ptr noundef nonnull @.str.6) #8
  %21 = tail call ptr @ED_view3d_cursor3d_get(ptr noundef %16, ptr noundef %17) #8
  %22 = and i32 %20, 255
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %2
  %25 = call fastcc zeroext i8 @snap_curs_to_sel_ex(ptr noundef %0, ptr noundef nonnull %6) #10, !range !90
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %7, ptr noundef %21, ptr noundef nonnull %6) #10
  br label %26

26:                                               ; preds = %24, %2
  %27 = icmp eq ptr %15, null
  br i1 %27, label %68, label %28

28:                                               ; preds = %26
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #9
  %29 = call zeroext i8 @ED_transverts_check_obedit(ptr noundef nonnull %15) #8
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %195, label %31

31:                                               ; preds = %28
  call void @ED_transverts_create_from_obedit(ptr noundef nonnull %3, ptr noundef nonnull %15, i32 noundef 0) #8
  %32 = getelementptr inbounds %struct.TransVertStore, ptr %3, i64 0, i32 1
  %33 = load i32, ptr %32, align 8, !tbaa !51
  %34 = icmp eq i32 %33, 0
  %35 = getelementptr inbounds %struct.TransVertStore, ptr %3, i64 0, i32 1
  br i1 %34, label %195, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.Object, ptr %15, i64 0, i32 47
  call void @copy_m3_m4(ptr noundef nonnull %5, ptr noundef nonnull %37) #8
  %38 = call zeroext i8 @invert_m3_m3(ptr noundef nonnull %4, ptr noundef nonnull %5) #8
  %39 = getelementptr inbounds %struct.Object, ptr %15, i64 0, i32 47, i64 3
  call fastcc void @sub_v3_v3v3(ptr noundef nonnull %8, ptr noundef %21, ptr noundef nonnull %39) #10
  call void @mul_m3_v3(ptr noundef nonnull %4, ptr noundef nonnull %8) #8
  br i1 %23, label %54, label %40

40:                                               ; preds = %36
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #9
  call void @mul_v3_m3v3(ptr noundef nonnull %9, ptr noundef nonnull %4, ptr noundef nonnull %7) #8
  %41 = load i32, ptr %35, align 8, !tbaa !51
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %40
  %44 = load ptr, ptr %3, align 8, !tbaa !54
  br label %45

45:                                               ; preds = %43, %45
  %46 = phi ptr [ %50, %45 ], [ %44, %43 ]
  %47 = phi i32 [ %49, %45 ], [ 0, %43 ]
  %48 = load ptr, ptr %46, align 8, !tbaa !55
  call fastcc void @add_v3_v3(ptr noundef %48, ptr noundef nonnull %9) #10
  %49 = add nuw nsw i32 %47, 1
  %50 = getelementptr inbounds %struct.TransVert, ptr %46, i64 1
  %51 = load i32, ptr %35, align 8, !tbaa !51
  %52 = icmp slt i32 %49, %51
  br i1 %52, label %45, label %53, !llvm.loop !91

53:                                               ; preds = %45, %40
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #9
  br label %67

54:                                               ; preds = %36
  %55 = load i32, ptr %35, align 8, !tbaa !51
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %54
  %58 = load ptr, ptr %3, align 8, !tbaa !54
  br label %59

59:                                               ; preds = %57, %59
  %60 = phi ptr [ %64, %59 ], [ %58, %57 ]
  %61 = phi i32 [ %63, %59 ], [ 0, %57 ]
  %62 = load ptr, ptr %60, align 8, !tbaa !55
  call fastcc void @copy_v3_v3(ptr noundef %62, ptr noundef nonnull %8) #10
  %63 = add nuw nsw i32 %61, 1
  %64 = getelementptr inbounds %struct.TransVert, ptr %60, i64 1
  %65 = load i32, ptr %35, align 8, !tbaa !51
  %66 = icmp slt i32 %63, %65
  br i1 %66, label %59, label %67, !llvm.loop !92

67:                                               ; preds = %59, %54, %53
  call void @ED_transverts_update_obedit(ptr noundef nonnull %3, ptr noundef nonnull %15) #8
  call void @ED_transverts_free(ptr noundef nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #9
  br label %194

68:                                               ; preds = %26
  %69 = call ptr @ANIM_get_keyingset_for_autokeying(ptr noundef %16, ptr noundef nonnull @.str.21) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #9
  %70 = call i32 @CTX_data_selected_editable_objects(ptr noundef %0, ptr noundef nonnull %10) #8
  %71 = load ptr, ptr %10, align 8, !tbaa !60
  %72 = icmp eq ptr %71, null
  br i1 %72, label %193, label %73

73:                                               ; preds = %68
  %74 = getelementptr inbounds [3 x float], ptr %12, i64 0, i64 1
  %75 = getelementptr inbounds [3 x float], ptr %12, i64 0, i64 2
  %76 = getelementptr inbounds [3 x float], ptr %13, i64 0, i64 1
  %77 = getelementptr inbounds [3 x float], ptr %13, i64 0, i64 2
  br label %78

78:                                               ; preds = %73, %190
  %79 = phi ptr [ %71, %73 ], [ %191, %190 ]
  %80 = getelementptr inbounds %struct.CollectionPointerLink, ptr %79, i64 0, i32 2, i32 2
  %81 = load ptr, ptr %80, align 8, !tbaa !61
  %82 = getelementptr inbounds %struct.Object, ptr %81, i64 0, i32 27
  %83 = load i32, ptr %82, align 8, !tbaa !65
  %84 = and i32 %83, 64
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %151, label %86

86:                                               ; preds = %78
  %87 = getelementptr inbounds %struct.Object, ptr %81, i64 0, i32 19
  %88 = load ptr, ptr %87, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #9
  %89 = getelementptr inbounds %struct.Object, ptr %81, i64 0, i32 50
  %90 = getelementptr inbounds %struct.Object, ptr %81, i64 0, i32 47
  %91 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %89, ptr noundef nonnull %90) #8
  call void @mul_v3_m4v3(ptr noundef nonnull %11, ptr noundef nonnull %89, ptr noundef %21) #8
  %92 = getelementptr inbounds %struct.Object, ptr %81, i64 0, i32 18
  %93 = load ptr, ptr %92, align 8, !tbaa !71
  %94 = load ptr, ptr %93, align 8, !tbaa !60
  %95 = icmp eq ptr %94, null
  br i1 %95, label %146, label %96

96:                                               ; preds = %86
  %97 = getelementptr inbounds %struct.bArmature, ptr %88, i64 0, i32 15
  br label %98

98:                                               ; preds = %96, %141
  %99 = phi ptr [ %94, %96 ], [ %142, %141 ]
  %100 = getelementptr inbounds %struct.bPoseChannel, ptr %99, i64 0, i32 12
  %101 = load ptr, ptr %100, align 8, !tbaa !72
  %102 = getelementptr inbounds %struct.Bone, ptr %101, i64 0, i32 10
  %103 = load i32, ptr %102, align 8, !tbaa !74
  %104 = and i32 %103, 1
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %141, label %106

106:                                              ; preds = %98
  %107 = getelementptr inbounds %struct.Bone, ptr %101, i64 0, i32 25
  %108 = load i32, ptr %107, align 8, !tbaa !76
  %109 = load i32, ptr %97, align 8, !tbaa !77
  %110 = and i32 %109, %108
  %111 = icmp ne i32 %110, 0
  %112 = and i32 %103, 80
  %113 = icmp eq i32 %112, 0
  %114 = and i1 %113, %111
  br i1 %114, label %115, label %141

115:                                              ; preds = %106
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #9
  br i1 %23, label %118, label %116

116:                                              ; preds = %115
  %117 = getelementptr inbounds %struct.bPoseChannel, ptr %99, i64 0, i32 29, i64 3
  call void @mul_v3_m4v3(ptr noundef nonnull %12, ptr noundef nonnull %90, ptr noundef nonnull %117) #8
  call fastcc void @add_v3_v3(ptr noundef nonnull %12, ptr noundef nonnull %7) #10
  call void @mul_m4_v3(ptr noundef nonnull %89, ptr noundef nonnull %12) #8
  br label %118

118:                                              ; preds = %115, %116
  %119 = phi ptr [ %12, %116 ], [ %11, %115 ]
  call void @BKE_armature_loc_pose_to_bone(ptr noundef nonnull %99, ptr noundef nonnull %119, ptr noundef nonnull %12) #8
  %120 = getelementptr inbounds %struct.bPoseChannel, ptr %99, i64 0, i32 7
  %121 = load i16, ptr %120, align 4, !tbaa !79
  %122 = and i16 %121, 1
  %123 = icmp eq i16 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %118
  %125 = load float, ptr %12, align 4, !tbaa !57
  %126 = getelementptr inbounds %struct.bPoseChannel, ptr %99, i64 0, i32 20
  store float %125, ptr %126, align 8, !tbaa !57
  br label %127

127:                                              ; preds = %124, %118
  %128 = and i16 %121, 2
  %129 = icmp eq i16 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %127
  %131 = load float, ptr %74, align 4, !tbaa !57
  %132 = getelementptr inbounds %struct.bPoseChannel, ptr %99, i64 0, i32 20, i64 1
  store float %131, ptr %132, align 4, !tbaa !57
  br label %133

133:                                              ; preds = %130, %127
  %134 = and i16 %121, 4
  %135 = icmp eq i16 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %133
  %137 = load float, ptr %75, align 4, !tbaa !57
  %138 = getelementptr inbounds %struct.bPoseChannel, ptr %99, i64 0, i32 20, i64 2
  store float %137, ptr %138, align 8, !tbaa !57
  br label %139

139:                                              ; preds = %136, %133
  %140 = call zeroext i8 @ED_autokeyframe_pchan(ptr noundef %0, ptr noundef %16, ptr noundef %81, ptr noundef nonnull %99, ptr noundef %69) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #9
  br label %141

141:                                              ; preds = %98, %106, %139
  %142 = load ptr, ptr %99, align 8, !tbaa !60
  %143 = icmp eq ptr %142, null
  br i1 %143, label %144, label %98, !llvm.loop !93

144:                                              ; preds = %141
  %145 = load ptr, ptr %92, align 8, !tbaa !71
  br label %146

146:                                              ; preds = %144, %86
  %147 = phi ptr [ %145, %144 ], [ %93, %86 ]
  %148 = getelementptr inbounds %struct.bPose, ptr %147, i64 0, i32 2
  %149 = load i16, ptr %148, align 8, !tbaa !81
  %150 = or i16 %149, 6
  store i16 %150, ptr %148, align 8, !tbaa !81
  call void @DAG_id_tag_update(ptr noundef nonnull %81, i16 noundef signext 2) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #9
  br label %190

151:                                              ; preds = %78
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #9
  br i1 %23, label %154, label %152

152:                                              ; preds = %151
  %153 = getelementptr inbounds %struct.Object, ptr %81, i64 0, i32 47, i64 3
  call fastcc void @add_v3_v3v3(ptr noundef nonnull %13, ptr noundef nonnull %153, ptr noundef nonnull %7) #10
  br label %155

154:                                              ; preds = %151
  call fastcc void @copy_v3_v3(ptr noundef nonnull %13, ptr noundef %21) #10
  br label %155

155:                                              ; preds = %154, %152
  %156 = getelementptr inbounds %struct.Object, ptr %81, i64 0, i32 47, i64 3
  call fastcc void @sub_v3_v3(ptr noundef nonnull %13, ptr noundef nonnull %156) #10
  %157 = getelementptr inbounds %struct.Object, ptr %81, i64 0, i32 9
  %158 = load ptr, ptr %157, align 8, !tbaa !83
  %159 = icmp eq ptr %158, null
  br i1 %159, label %162, label %160

160:                                              ; preds = %155
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %14) #9
  call void @BKE_object_where_is_calc_ex(ptr noundef %16, ptr noundef null, ptr noundef nonnull %81, ptr noundef nonnull %14) #8
  %161 = call zeroext i8 @invert_m3_m3(ptr noundef nonnull %4, ptr noundef nonnull %14) #8
  call void @mul_m3_v3(ptr noundef nonnull %4, ptr noundef nonnull %13) #8
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %14) #9
  br label %162

162:                                              ; preds = %160, %155
  %163 = getelementptr inbounds %struct.Object, ptr %81, i64 0, i32 56
  %164 = load i16, ptr %163, align 2, !tbaa !84
  %165 = and i16 %164, 1
  %166 = icmp eq i16 %165, 0
  br i1 %166, label %167, label %172

167:                                              ; preds = %162
  %168 = load float, ptr %13, align 4, !tbaa !57
  %169 = getelementptr inbounds %struct.Object, ptr %81, i64 0, i32 33
  %170 = load float, ptr %169, align 8, !tbaa !57
  %171 = fadd float %168, %170
  store float %171, ptr %169, align 8, !tbaa !57
  br label %172

172:                                              ; preds = %167, %162
  %173 = and i16 %164, 2
  %174 = icmp eq i16 %173, 0
  br i1 %174, label %175, label %180

175:                                              ; preds = %172
  %176 = load float, ptr %76, align 4, !tbaa !57
  %177 = getelementptr inbounds %struct.Object, ptr %81, i64 0, i32 33, i64 1
  %178 = load float, ptr %177, align 4, !tbaa !57
  %179 = fadd float %176, %178
  store float %179, ptr %177, align 4, !tbaa !57
  br label %180

180:                                              ; preds = %175, %172
  %181 = and i16 %164, 4
  %182 = icmp eq i16 %181, 0
  br i1 %182, label %183, label %188

183:                                              ; preds = %180
  %184 = load float, ptr %77, align 4, !tbaa !57
  %185 = getelementptr inbounds %struct.Object, ptr %81, i64 0, i32 33, i64 2
  %186 = load float, ptr %185, align 8, !tbaa !57
  %187 = fadd float %184, %186
  store float %187, ptr %185, align 8, !tbaa !57
  br label %188

188:                                              ; preds = %183, %180
  %189 = call zeroext i8 @ED_autokeyframe_object(ptr noundef %0, ptr noundef %16, ptr noundef nonnull %81, ptr noundef %69) #8
  call void @DAG_id_tag_update(ptr noundef nonnull %81, i16 noundef signext 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #9
  br label %190

190:                                              ; preds = %188, %146
  %191 = load ptr, ptr %79, align 8, !tbaa !60
  %192 = icmp eq ptr %191, null
  br i1 %192, label %193, label %78, !llvm.loop !94

193:                                              ; preds = %190, %68
  call void @BLI_freelistN(ptr noundef nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #9
  br label %194

194:                                              ; preds = %67, %193
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 85065728, ptr noundef null) #8
  br label %196

195:                                              ; preds = %28, %31
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #9
  br label %196

196:                                              ; preds = %195, %194
  %197 = phi i32 [ 4, %194 ], [ 2, %195 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #9
  ret i32 %197
}

; Function Attrs: optsize
declare i32 @ED_operator_view3d_active(ptr noundef) #2

; Function Attrs: optsize
declare ptr @RNA_def_boolean(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
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

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @snap_curs_to_grid_exec(ptr noundef %0, ptr nocapture readnone %1) #1 !PGOFuncName !95 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %4 = tail call ptr @CTX_wm_region_data(ptr noundef %0) #8
  %5 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #8
  %6 = getelementptr inbounds %struct.RegionView3D, ptr %4, i64 0, i32 36
  %7 = load float, ptr %6, align 8, !tbaa !48
  %8 = tail call ptr @ED_view3d_cursor3d_get(ptr noundef %3, ptr noundef %5) #8
  %9 = load <2 x float>, ptr %8, align 4, !tbaa !57
  %10 = insertelement <2 x float> poison, float %7, i64 0
  %11 = shufflevector <2 x float> %10, <2 x float> poison, <2 x i32> zeroinitializer
  %12 = fdiv <2 x float> %9, %11
  %13 = fadd <2 x float> %12, <float 5.000000e-01, float 5.000000e-01>
  %14 = tail call <2 x float> @llvm.floor.v2f32(<2 x float> %13)
  %15 = fmul <2 x float> %11, %14
  store <2 x float> %15, ptr %8, align 4, !tbaa !57
  %16 = getelementptr inbounds float, ptr %8, i64 2
  %17 = load float, ptr %16, align 4, !tbaa !57
  %18 = fdiv float %17, %7
  %19 = fadd float %18, 5.000000e-01
  %20 = tail call float @llvm.floor.f32(float %19)
  %21 = fmul float %7, %20
  store float %21, ptr %16, align 4, !tbaa !57
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 252248064, ptr noundef %5) #8
  ret i32 4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
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

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @snap_curs_to_sel_exec(ptr noundef %0, ptr nocapture readnone %1) #1 !PGOFuncName !96 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %4 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #8
  %5 = tail call ptr @ED_view3d_cursor3d_get(ptr noundef %3, ptr noundef %4) #8
  %6 = tail call fastcc zeroext i8 @snap_curs_to_sel_ex(ptr noundef %0, ptr noundef %5) #10, !range !90
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 252248064, ptr noundef %4) #8
  br label %9

9:                                                ; preds = %2, %8
  %10 = phi i32 [ 4, %8 ], [ 2, %2 ]
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
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

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @snap_curs_to_active_exec(ptr noundef %0, ptr nocapture readnone %1) #1 !PGOFuncName !97 {
  %3 = alloca %struct.BMEditSelection, align 8
  %4 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #8
  %5 = tail call ptr @CTX_data_active_object(ptr noundef %0) #8
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %7 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #8
  %8 = tail call ptr @ED_view3d_cursor3d_get(ptr noundef %6, ptr noundef %7) #8
  %9 = icmp eq ptr %4, null
  br i1 %9, label %28, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 3
  %12 = load i16, ptr %11, align 8, !tbaa !98
  switch i16 %12, label %32 [
    i16 1, label %13
    i16 22, label %21
  ]

13:                                               ; preds = %10
  %14 = tail call ptr @BKE_editmesh_from_object(ptr noundef nonnull %4) #8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #9
  %15 = load ptr, ptr %14, align 8, !tbaa !99
  %16 = call zeroext i8 @BM_select_history_active_get(ptr noundef %15, ptr noundef nonnull %3) #8
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  call void @BM_editselection_center(ptr noundef nonnull %3, ptr noundef %8) #8
  br label %19

19:                                               ; preds = %18, %13
  %20 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 47
  call void @mul_m4_v3(ptr noundef nonnull %20, ptr noundef %8) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #9
  br label %32

21:                                               ; preds = %10
  %22 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 19
  %23 = load ptr, ptr %22, align 8, !tbaa !70
  %24 = tail call ptr @BKE_lattice_active_point_get(ptr noundef %23) #8
  %25 = icmp eq ptr %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %21
  tail call fastcc void @copy_v3_v3(ptr noundef %8, ptr noundef nonnull %24) #10
  %27 = getelementptr inbounds %struct.Object, ptr %4, i64 0, i32 47
  tail call void @mul_m4_v3(ptr noundef nonnull %27, ptr noundef %8) #8
  br label %32

28:                                               ; preds = %2
  %29 = icmp eq ptr %5, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 47, i64 3
  tail call fastcc void @copy_v3_v3(ptr noundef %8, ptr noundef nonnull %31) #10
  br label %32

32:                                               ; preds = %21, %26, %10, %28, %30, %19
  call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 252248064, ptr noundef %7) #8
  ret i32 4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
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

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @snap_curs_to_center_exec(ptr noundef %0, ptr nocapture readnone %1) #1 !PGOFuncName !101 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %4 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #8
  %5 = tail call ptr @ED_view3d_cursor3d_get(ptr noundef %3, ptr noundef %4) #8
  tail call fastcc void @zero_v3(ptr noundef %5) #10
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 252248064, ptr noundef %4) #8
  ret i32 4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @ED_view3d_minmax_verts(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 {
  %4 = alloca %struct.TransVertStore, align 8
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x [3 x float]], align 16
  %7 = alloca [3 x float], align 4
  %8 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %6) #9
  %9 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 3
  %10 = load i16, ptr %9, align 8, !tbaa !98
  %11 = icmp eq i16 %10, 5
  br i1 %11, label %12, label %20

12:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #9
  %13 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %14 = load ptr, ptr %13, align 8, !tbaa !70
  %15 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 47
  %16 = call zeroext i8 @BKE_mball_minmax_ex(ptr noundef %14, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %15, i16 noundef signext 1) #8
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %12
  call void @minmax_v3v3_v3(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %7) #8
  call void @minmax_v3v3_v3(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %8) #8
  br label %19

19:                                               ; preds = %18, %12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #9
  br label %53

20:                                               ; preds = %3
  %21 = tail call zeroext i8 @ED_transverts_check_obedit(ptr noundef nonnull %0) #8
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %53, label %23

23:                                               ; preds = %20
  call void @ED_transverts_create_from_obedit(ptr noundef nonnull %4, ptr noundef nonnull %0, i32 noundef 1) #8
  %24 = getelementptr inbounds %struct.TransVertStore, ptr %4, i64 0, i32 1
  %25 = load i32, ptr %24, align 8, !tbaa !51
  %26 = icmp eq i32 %25, 0
  %27 = getelementptr inbounds %struct.TransVertStore, ptr %4, i64 0, i32 1
  br i1 %26, label %53, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 47
  call void @copy_m3_m4(ptr noundef nonnull %6, ptr noundef nonnull %29) #8
  %30 = load i32, ptr %27, align 8, !tbaa !51
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %52

32:                                               ; preds = %28
  %33 = load ptr, ptr %4, align 8, !tbaa !54
  %34 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 47, i64 3
  br label %35

35:                                               ; preds = %32, %46
  %36 = phi i32 [ 0, %32 ], [ %48, %46 ]
  %37 = phi ptr [ %33, %32 ], [ %49, %46 ]
  %38 = getelementptr inbounds %struct.TransVert, ptr %37, i64 0, i32 4
  %39 = load i32, ptr %38, align 4, !tbaa !102
  %40 = and i32 %39, 2
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %35
  %43 = getelementptr inbounds %struct.TransVert, ptr %37, i64 0, i32 2
  br label %46

44:                                               ; preds = %35
  %45 = load ptr, ptr %37, align 8, !tbaa !55
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi ptr [ %43, %42 ], [ %45, %44 ]
  call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef %47) #10
  call void @mul_m3_v3(ptr noundef nonnull %6, ptr noundef nonnull %5) #8
  call fastcc void @add_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %34) #10
  call void @minmax_v3v3_v3(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %5) #8
  %48 = add nuw nsw i32 %36, 1
  %49 = getelementptr inbounds %struct.TransVert, ptr %37, i64 1
  %50 = load i32, ptr %27, align 8, !tbaa !51
  %51 = icmp slt i32 %48, %50
  br i1 %51, label %35, label %52, !llvm.loop !103

52:                                               ; preds = %46, %28
  call void @ED_transverts_free(ptr noundef nonnull %4) #8
  br label %53

53:                                               ; preds = %20, %23, %52, %19
  %54 = phi i8 [ %16, %19 ], [ 1, %52 ], [ 0, %23 ], [ 0, %20 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9
  ret i8 %54
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: optsize
declare zeroext i8 @BKE_mball_minmax_ex(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @minmax_v3v3_v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: optsize
declare zeroext i8 @ED_transverts_check_obedit(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_transverts_create_from_obedit(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @copy_m3_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !104 {
  %3 = load float, ptr %1, align 4, !tbaa !57
  store float %3, ptr %0, align 4, !tbaa !57
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !57
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !57
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !57
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !57
  ret void
}

; Function Attrs: optsize
declare void @mul_m3_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !105 {
  %3 = load float, ptr %1, align 4, !tbaa !57
  %4 = load float, ptr %0, align 4, !tbaa !57
  %5 = fadd float %3, %4
  store float %5, ptr %0, align 4, !tbaa !57
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !57
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !57
  %10 = fadd float %7, %9
  store float %10, ptr %8, align 4, !tbaa !57
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !57
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !57
  %15 = fadd float %12, %14
  store float %15, ptr %13, align 4, !tbaa !57
  ret void
}

; Function Attrs: optsize
declare void @ED_transverts_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_edit_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_region_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @invert_m3_m3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !PGOFuncName !106 {
  %3 = load float, ptr %1, align 4, !tbaa !57
  %4 = load float, ptr %0, align 4, !tbaa !57
  %5 = fsub float %4, %3
  store float %5, ptr %0, align 4, !tbaa !57
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !57
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !57
  %10 = fsub float %9, %7
  store float %10, ptr %8, align 4, !tbaa !57
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !57
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !57
  %15 = fsub float %14, %12
  store float %15, ptr %13, align 4, !tbaa !57
  ret void
}

; Function Attrs: optsize
declare void @ED_transverts_update_obedit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ANIM_get_keyingset_for_autokeying(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @CTX_data_selected_editable_objects(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @invert_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mul_m4_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_armature_loc_pose_to_bone(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @ED_autokeyframe_pchan(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @DAG_id_tag_update(ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

; Function Attrs: optsize
declare void @BKE_object_where_is_calc_ex(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @ED_autokeyframe_object(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @WM_event_add_notifier(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_view3d(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @RNA_boolean_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ED_view3d_cursor3d_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @snap_curs_to_sel_ex(ptr noundef %0, ptr noundef %1) unnamed_addr #1 !PGOFuncName !107 {
  %3 = alloca %struct.TransVertStore, align 8
  %4 = alloca [3 x [3 x float]], align 16
  %5 = alloca [3 x float], align 4
  %6 = alloca [3 x float], align 8
  %7 = alloca [3 x float], align 8
  %8 = alloca [3 x float], align 4
  %9 = alloca %struct.ListBase, align 8
  %10 = tail call ptr @CTX_data_edit_object(ptr noundef %0) #8
  %11 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %12 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #9
  %13 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  store float 0x46293E5940000000, ptr %13, align 8, !tbaa !57
  store <2 x float> <float 0x46293E5940000000, float 0x46293E5940000000>, ptr %6, align 8, !tbaa !57
  %14 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  store float 0xC6293E5940000000, ptr %14, align 8, !tbaa !57
  store <2 x float> <float 0xC6293E5940000000, float 0xC6293E5940000000>, ptr %7, align 8, !tbaa !57
  call fastcc void @zero_v3(ptr noundef nonnull %8) #10
  %15 = icmp eq ptr %10, null
  br i1 %15, label %49, label %16

16:                                               ; preds = %2
  %17 = tail call zeroext i8 @ED_transverts_check_obedit(ptr noundef nonnull %10) #8
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %126, label %19

19:                                               ; preds = %16
  call void @ED_transverts_create_from_obedit(ptr noundef nonnull %3, ptr noundef nonnull %10, i32 noundef 3) #8
  %20 = getelementptr inbounds %struct.TransVertStore, ptr %3, i64 0, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !51
  %22 = icmp eq i32 %21, 0
  %23 = getelementptr inbounds %struct.TransVertStore, ptr %3, i64 0, i32 1
  br i1 %22, label %126, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 47
  call void @copy_m3_m4(ptr noundef nonnull %4, ptr noundef nonnull %25) #8
  %26 = load i32, ptr %23, align 8, !tbaa !51
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %24
  %29 = load ptr, ptr %3, align 8, !tbaa !54
  %30 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 47, i64 3
  br label %31

31:                                               ; preds = %28, %31
  %32 = phi ptr [ %29, %28 ], [ %36, %31 ]
  %33 = phi i32 [ 0, %28 ], [ %35, %31 ]
  %34 = load ptr, ptr %32, align 8, !tbaa !55
  call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef %34) #10
  call void @mul_m3_v3(ptr noundef nonnull %4, ptr noundef nonnull %5) #8
  call fastcc void @add_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %30) #10
  call fastcc void @add_v3_v3(ptr noundef nonnull %8, ptr noundef nonnull %5) #10
  call void @minmax_v3v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %5) #8
  %35 = add nuw nsw i32 %33, 1
  %36 = getelementptr inbounds %struct.TransVert, ptr %32, i64 1
  %37 = load i32, ptr %23, align 8, !tbaa !51
  %38 = icmp slt i32 %35, %37
  br i1 %38, label %31, label %39, !llvm.loop !108

39:                                               ; preds = %31, %24
  %40 = phi i32 [ %26, %24 ], [ %37, %31 ]
  %41 = getelementptr inbounds %struct.View3D, ptr %12, i64 0, i32 27
  %42 = load i16, ptr %41, align 2, !tbaa !109
  %43 = icmp eq i16 %42, 3
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = sitofp i32 %40 to float
  %46 = fdiv float 1.000000e+00, %45
  call fastcc void @mul_v3_fl(ptr noundef nonnull %8, float noundef %46) #10
  call fastcc void @copy_v3_v3(ptr noundef %1, ptr noundef nonnull %8) #10
  br label %48

47:                                               ; preds = %39
  call void @mid_v3_v3v3(ptr noundef %1, ptr noundef nonnull %6, ptr noundef nonnull %7) #8
  br label %48

48:                                               ; preds = %47, %44
  call void @ED_transverts_free(ptr noundef nonnull %3) #8
  br label %126

49:                                               ; preds = %2
  %50 = tail call ptr @CTX_data_active_object(ptr noundef %0) #8
  %51 = icmp eq ptr %50, null
  br i1 %51, label %89, label %52

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.Object, ptr %50, i64 0, i32 27
  %54 = load i32, ptr %53, align 8, !tbaa !65
  %55 = and i32 %54, 64
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %89, label %57

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.Object, ptr %50, i64 0, i32 18
  %59 = load ptr, ptr %58, align 8, !tbaa !71
  %60 = load ptr, ptr %59, align 8, !tbaa !60
  %61 = icmp eq ptr %60, null
  br i1 %61, label %126, label %62

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.Object, ptr %50, i64 0, i32 19
  %64 = load ptr, ptr %63, align 8, !tbaa !70
  %65 = getelementptr inbounds %struct.bArmature, ptr %64, i64 0, i32 15
  %66 = getelementptr inbounds %struct.Object, ptr %50, i64 0, i32 47
  br label %67

67:                                               ; preds = %62, %85
  %68 = phi ptr [ %60, %62 ], [ %87, %85 ]
  %69 = phi i32 [ 0, %62 ], [ %86, %85 ]
  %70 = load i32, ptr %65, align 8, !tbaa !77
  %71 = getelementptr inbounds %struct.bPoseChannel, ptr %68, i64 0, i32 12
  %72 = load ptr, ptr %71, align 8, !tbaa !72
  %73 = getelementptr inbounds %struct.Bone, ptr %72, i64 0, i32 25
  %74 = load i32, ptr %73, align 8, !tbaa !76
  %75 = and i32 %74, %70
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %85, label %77

77:                                               ; preds = %67
  %78 = getelementptr inbounds %struct.Bone, ptr %72, i64 0, i32 10
  %79 = load i32, ptr %78, align 8, !tbaa !74
  %80 = and i32 %79, 1
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %77
  %83 = getelementptr inbounds %struct.bPoseChannel, ptr %68, i64 0, i32 31
  call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %83) #10
  call void @mul_m4_v3(ptr noundef nonnull %66, ptr noundef nonnull %5) #8
  call fastcc void @add_v3_v3(ptr noundef nonnull %8, ptr noundef nonnull %5) #10
  call void @minmax_v3v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %5) #8
  %84 = add nsw i32 %69, 1
  br label %85

85:                                               ; preds = %67, %82, %77
  %86 = phi i32 [ %84, %82 ], [ %69, %77 ], [ %69, %67 ]
  %87 = load ptr, ptr %68, align 8, !tbaa !60
  %88 = icmp eq ptr %87, null
  br i1 %88, label %115, label %67, !llvm.loop !112

89:                                               ; preds = %52, %49
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #9
  %90 = call i32 @CTX_data_selected_objects(ptr noundef %0, ptr noundef nonnull %9) #8
  %91 = load ptr, ptr %9, align 8, !tbaa !60
  %92 = icmp eq ptr %91, null
  br i1 %92, label %113, label %93

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.View3D, ptr %12, i64 0, i32 29
  br label %95

95:                                               ; preds = %93, %109
  %96 = phi ptr [ %91, %93 ], [ %111, %109 ]
  %97 = phi i32 [ 0, %93 ], [ %110, %109 ]
  %98 = getelementptr inbounds %struct.CollectionPointerLink, ptr %96, i64 0, i32 2, i32 2
  %99 = load ptr, ptr %98, align 8, !tbaa !61
  %100 = getelementptr inbounds %struct.Object, ptr %99, i64 0, i32 47, i64 3
  call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %100) #10
  %101 = getelementptr inbounds %struct.Object, ptr %99, i64 0, i32 3
  %102 = load i16, ptr %101, align 8, !tbaa !98
  %103 = icmp eq i16 %102, 11
  br i1 %103, label %104, label %109

104:                                              ; preds = %95
  %105 = load i16, ptr %94, align 2, !tbaa !113
  %106 = and i16 %105, 128
  %107 = icmp eq i16 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %104
  call fastcc void @bundle_midpoint(ptr noundef %11, ptr noundef nonnull %99, ptr noundef nonnull %5) #10
  br label %109

109:                                              ; preds = %104, %108, %95
  call fastcc void @add_v3_v3(ptr noundef nonnull %8, ptr noundef nonnull %5) #10
  call void @minmax_v3v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %5) #8
  %110 = add nuw nsw i32 %97, 1
  %111 = load ptr, ptr %96, align 8, !tbaa !60
  %112 = icmp eq ptr %111, null
  br i1 %112, label %113, label %95, !llvm.loop !114

113:                                              ; preds = %109, %89
  %114 = phi i32 [ 0, %89 ], [ %110, %109 ]
  call void @BLI_freelistN(ptr noundef nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #9
  br label %115

115:                                              ; preds = %85, %113
  %116 = phi i32 [ %114, %113 ], [ %86, %85 ]
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %126, label %118

118:                                              ; preds = %115
  %119 = getelementptr inbounds %struct.View3D, ptr %12, i64 0, i32 27
  %120 = load i16, ptr %119, align 2, !tbaa !109
  %121 = icmp eq i16 %120, 3
  br i1 %121, label %122, label %125

122:                                              ; preds = %118
  %123 = sitofp i32 %116 to float
  %124 = fdiv float 1.000000e+00, %123
  call fastcc void @mul_v3_fl(ptr noundef nonnull %8, float noundef %124) #10
  call fastcc void @copy_v3_v3(ptr noundef %1, ptr noundef nonnull %8) #10
  br label %126

125:                                              ; preds = %118
  call void @mid_v3_v3v3(ptr noundef %1, ptr noundef nonnull %6, ptr noundef nonnull %7) #8
  br label %126

126:                                              ; preds = %57, %16, %48, %122, %125, %115, %19
  %127 = phi i8 [ 0, %19 ], [ 0, %115 ], [ 1, %125 ], [ 1, %122 ], [ 1, %48 ], [ 0, %16 ], [ 0, %57 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #9
  ret i8 %127
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #5 !PGOFuncName !115 {
  %4 = load float, ptr %1, align 4, !tbaa !57
  %5 = load float, ptr %2, align 4, !tbaa !57
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !57
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !57
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !57
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !57
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !57
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !57
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !57
  ret void
}

; Function Attrs: optsize
declare void @mul_v3_m3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mul_v3_m4v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #5 !PGOFuncName !116 {
  %4 = load float, ptr %1, align 4, !tbaa !57
  %5 = load float, ptr %2, align 4, !tbaa !57
  %6 = fadd float %4, %5
  store float %6, ptr %0, align 4, !tbaa !57
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !57
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !57
  %11 = fadd float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !57
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !57
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !57
  %17 = fadd float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !57
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #0 !PGOFuncName !117 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !57
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !57
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_fl(ptr nocapture noundef %0, float noundef %1) unnamed_addr #5 !PGOFuncName !118 {
  %3 = load <2 x float>, ptr %0, align 4, !tbaa !57
  %4 = insertelement <2 x float> poison, float %1, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x float> %3, %5
  store <2 x float> %6, ptr %0, align 4, !tbaa !57
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !57
  %9 = fmul float %8, %1
  store float %9, ptr %7, align 4, !tbaa !57
  ret void
}

; Function Attrs: optsize
declare void @mid_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_active_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @CTX_data_selected_objects(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bundle_midpoint(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 !PGOFuncName !119 {
  %4 = alloca [3 x float], align 8
  %5 = alloca [3 x float], align 8
  %6 = alloca [4 x [4 x float]], align 16
  %7 = alloca [3 x float], align 4
  %8 = alloca [4 x [4 x float]], align 16
  %9 = alloca [4 x [4 x float]], align 16
  %10 = alloca [4 x [4 x float]], align 16
  %11 = tail call ptr @BKE_object_movieclip_get(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 0) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #9
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #9
  %12 = icmp eq ptr %11, null
  br i1 %12, label %71, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.MovieClip, ptr %11, i64 0, i32 11
  %15 = getelementptr inbounds %struct.Object, ptr %1, i64 0, i32 47
  call void @copy_m4_m4(ptr noundef nonnull %8, ptr noundef nonnull %15) #8
  call void @BKE_tracking_get_camera_object_matrix(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %6) #8
  %16 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  store float 0x46293E5940000000, ptr %16, align 8, !tbaa !57
  store <2 x float> <float 0x46293E5940000000, float 0x46293E5940000000>, ptr %4, align 8, !tbaa !57
  %17 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  store float 0xC6293E5940000000, ptr %17, align 8, !tbaa !57
  store <2 x float> <float 0xC6293E5940000000, float 0xC6293E5940000000>, ptr %5, align 8, !tbaa !57
  %18 = getelementptr inbounds %struct.MovieClip, ptr %11, i64 0, i32 11, i32 8
  %19 = load ptr, ptr %18, align 8, !tbaa !60
  %20 = icmp eq ptr %19, null
  br i1 %20, label %71, label %21

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 5
  br label %23

23:                                               ; preds = %21, %64
  %24 = phi ptr [ %19, %21 ], [ %66, %64 ]
  %25 = phi i8 [ 0, %21 ], [ %65, %64 ]
  %26 = call ptr @BKE_tracking_object_get_tracks(ptr noundef nonnull %14, ptr noundef nonnull %24) #8
  %27 = load ptr, ptr %26, align 8, !tbaa !120
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #9
  %28 = getelementptr inbounds %struct.MovieTrackingObject, ptr %24, i64 0, i32 3
  %29 = load i32, ptr %28, align 8, !tbaa !121
  %30 = and i32 %29, 1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %23
  call void @copy_m4_m4(ptr noundef nonnull %9, ptr noundef nonnull %6) #8
  br label %36

33:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #9
  %34 = load i32, ptr %22, align 8, !tbaa !124
  call void @BKE_tracking_camera_get_reconstructed_interpolate(ptr noundef nonnull %14, ptr noundef nonnull %24, i32 noundef %34, ptr noundef nonnull %10) #8
  %35 = call zeroext i8 @invert_m4(ptr noundef nonnull %10) #8
  call void @mul_m4_m4m4(ptr noundef nonnull %9, ptr noundef nonnull %8, ptr noundef nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #9
  br label %36

36:                                               ; preds = %33, %32
  %37 = icmp eq ptr %27, null
  br i1 %37, label %64, label %38

38:                                               ; preds = %36, %60
  %39 = phi ptr [ %62, %60 ], [ %27, %36 ]
  %40 = phi i8 [ %61, %60 ], [ %25, %36 ]
  %41 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %39, i64 0, i32 13
  %42 = load i32, ptr %41, align 8, !tbaa !142
  %43 = and i32 %42, 2
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %60, label %45

45:                                               ; preds = %38
  %46 = and i32 %42, 1
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %39, i64 0, i32 14
  %50 = load i32, ptr %49, align 4, !tbaa !144
  %51 = and i32 %50, 1
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %39, i64 0, i32 15
  %55 = load i32, ptr %54, align 8, !tbaa !145
  %56 = and i32 %55, 1
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %53, %48, %45
  %59 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %39, i64 0, i32 11
  call void @mul_v3_m4v3(ptr noundef nonnull %7, ptr noundef nonnull %9, ptr noundef nonnull %59) #8
  call void @minmax_v3v3_v3(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %7) #8
  br label %60

60:                                               ; preds = %58, %53, %38
  %61 = phi i8 [ 1, %58 ], [ %40, %53 ], [ %40, %38 ]
  %62 = load ptr, ptr %39, align 8, !tbaa !146
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %38, !llvm.loop !147

64:                                               ; preds = %60, %36
  %65 = phi i8 [ %25, %36 ], [ %61, %60 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #9
  %66 = load ptr, ptr %24, align 8, !tbaa !60
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %23, !llvm.loop !148

68:                                               ; preds = %64
  %69 = icmp eq i8 %65, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %68
  call void @mid_v3_v3v3(ptr noundef %2, ptr noundef nonnull %4, ptr noundef nonnull %5) #8
  br label %71

71:                                               ; preds = %13, %68, %70, %3
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #9
  ret void
}

; Function Attrs: optsize
declare ptr @BKE_object_movieclip_get(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @copy_m4_m4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_tracking_get_camera_object_matrix(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_tracking_object_get_tracks(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_tracking_camera_get_reconstructed_interpolate(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @invert_m4(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mul_m4_m4m4(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_editmesh_from_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @BM_select_history_active_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BM_editselection_center(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_lattice_active_point_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.floor.v2f32(<2 x float>) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #7

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind optsize }
attributes #9 = { nounwind }
attributes #10 = { optsize }

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
!42 = !{!35, !36, i64 24}
!43 = !{!35, !36, i64 8}
!44 = !{!35, !36, i64 32}
!45 = !{!35, !36, i64 72}
!46 = !{!35, !41, i64 184}
!47 = !{!"view3d_snap.c:snap_sel_to_grid_exec"}
!48 = !{!49, !50, i64 848}
!49 = !{!"RegionView3D", !37, i64 0, !37, i64 64, !37, i64 128, !37, i64 192, !37, i64 256, !37, i64 320, !37, i64 384, !37, i64 448, !37, i64 544, !36, i64 640, !36, i64 648, !36, i64 656, !36, i64 664, !36, i64 672, !36, i64 680, !36, i64 688, !37, i64 696, !37, i64 760, !50, i64 776, !50, i64 780, !50, i64 784, !50, i64 788, !37, i64 792, !50, i64 804, !37, i64 808, !37, i64 809, !37, i64 810, !37, i64 811, !37, i64 812, !37, i64 813, !37, i64 816, !41, i64 824, !41, i64 826, !37, i64 828, !41, i64 844, !41, i64 846, !50, i64 848, !37, i64 852, !50, i64 864, !37, i64 868}
!50 = !{!"float", !37, i64 0}
!51 = !{!52, !53, i64 8}
!52 = !{!"TransVertStore", !36, i64 0, !53, i64 8, !53, i64 12}
!53 = !{!"int", !37, i64 0}
!54 = !{!52, !36, i64 0}
!55 = !{!56, !36, i64 0}
!56 = !{!"TransVert", !36, i64 0, !37, i64 8, !37, i64 20, !37, i64 32, !53, i64 44}
!57 = !{!50, !50, i64 0}
!58 = distinct !{!58, !59}
!59 = !{!"llvm.loop.mustprogress"}
!60 = !{!36, !36, i64 0}
!61 = !{!62, !36, i64 32}
!62 = !{!"CollectionPointerLink", !36, i64 0, !36, i64 8, !63, i64 16}
!63 = !{!"PointerRNA", !64, i64 0, !36, i64 8, !36, i64 16}
!64 = !{!"", !36, i64 0}
!65 = !{!66, !53, i64 432}
!66 = !{!"Object", !67, i64 0, !36, i64 120, !36, i64 128, !41, i64 136, !41, i64 138, !53, i64 140, !53, i64 144, !53, i64 148, !37, i64 152, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !36, i64 280, !36, i64 288, !36, i64 296, !36, i64 304, !68, i64 312, !36, i64 360, !39, i64 368, !39, i64 384, !39, i64 400, !39, i64 416, !53, i64 432, !53, i64 436, !36, i64 440, !36, i64 448, !53, i64 456, !53, i64 460, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !37, i64 524, !37, i64 536, !37, i64 548, !37, i64 560, !37, i64 576, !37, i64 592, !37, i64 604, !50, i64 616, !50, i64 620, !37, i64 624, !37, i64 688, !37, i64 752, !37, i64 816, !37, i64 880, !53, i64 944, !41, i64 948, !41, i64 950, !41, i64 952, !41, i64 954, !41, i64 956, !41, i64 958, !41, i64 960, !41, i64 962, !41, i64 964, !37, i64 966, !37, i64 967, !53, i64 968, !53, i64 972, !53, i64 976, !53, i64 980, !53, i64 984, !50, i64 988, !50, i64 992, !50, i64 996, !50, i64 1000, !50, i64 1004, !50, i64 1008, !50, i64 1012, !50, i64 1016, !50, i64 1020, !50, i64 1024, !50, i64 1028, !50, i64 1032, !41, i64 1036, !41, i64 1038, !41, i64 1040, !37, i64 1042, !37, i64 1043, !41, i64 1044, !37, i64 1046, !37, i64 1047, !50, i64 1048, !50, i64 1052, !39, i64 1056, !39, i64 1072, !39, i64 1088, !39, i64 1104, !50, i64 1120, !41, i64 1124, !41, i64 1126, !37, i64 1128, !53, i64 1144, !53, i64 1148, !36, i64 1152, !37, i64 1160, !37, i64 1161, !41, i64 1162, !37, i64 1164, !39, i64 1176, !39, i64 1192, !39, i64 1208, !39, i64 1224, !36, i64 1240, !36, i64 1248, !36, i64 1256, !37, i64 1264, !37, i64 1265, !41, i64 1266, !50, i64 1268, !36, i64 1272, !36, i64 1280, !36, i64 1288, !36, i64 1296, !69, i64 1304, !69, i64 1312, !53, i64 1320, !53, i64 1324, !39, i64 1328, !39, i64 1344, !36, i64 1360, !36, i64 1368, !36, i64 1376, !37, i64 1384, !36, i64 1392, !39, i64 1400, !36, i64 1416}
!67 = !{!"ID", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !37, i64 32, !41, i64 98, !53, i64 100, !53, i64 104, !53, i64 108, !36, i64 112}
!68 = !{!"bAnimVizSettings", !53, i64 0, !53, i64 4, !53, i64 8, !53, i64 12, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !53, i64 32, !53, i64 36, !53, i64 40, !53, i64 44}
!69 = !{!"long", !37, i64 0}
!70 = !{!66, !36, i64 296}
!71 = !{!66, !36, i64 288}
!72 = !{!73, !36, i64 120}
!73 = !{!"bPoseChannel", !36, i64 0, !36, i64 8, !36, i64 16, !39, i64 24, !37, i64 40, !41, i64 104, !41, i64 106, !41, i64 108, !41, i64 110, !37, i64 112, !37, i64 113, !37, i64 114, !36, i64 120, !36, i64 128, !36, i64 136, !39, i64 144, !39, i64 160, !36, i64 176, !36, i64 184, !36, i64 192, !37, i64 200, !37, i64 212, !37, i64 224, !37, i64 236, !37, i64 252, !50, i64 264, !41, i64 268, !41, i64 270, !37, i64 272, !37, i64 336, !37, i64 400, !37, i64 464, !37, i64 476, !37, i64 488, !37, i64 500, !37, i64 512, !50, i64 524, !50, i64 528, !50, i64 532, !36, i64 536}
!74 = !{!75, !53, i64 176}
!75 = !{!"Bone", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !39, i64 32, !37, i64 48, !50, i64 112, !37, i64 116, !37, i64 128, !37, i64 140, !53, i64 176, !37, i64 180, !37, i64 192, !37, i64 204, !50, i64 268, !50, i64 272, !50, i64 276, !50, i64 280, !50, i64 284, !50, i64 288, !50, i64 292, !50, i64 296, !50, i64 300, !50, i64 304, !37, i64 308, !53, i64 320, !41, i64 324, !37, i64 326}
!76 = !{!75, !53, i64 320}
!77 = !{!78, !53, i64 216}
!78 = !{!"bArmature", !67, i64 0, !36, i64 120, !39, i64 128, !39, i64 144, !36, i64 160, !36, i64 168, !36, i64 176, !36, i64 184, !53, i64 192, !53, i64 196, !53, i64 200, !53, i64 204, !41, i64 208, !41, i64 210, !53, i64 212, !53, i64 216, !53, i64 220, !41, i64 224, !41, i64 226, !41, i64 228, !41, i64 230, !53, i64 232, !53, i64 236, !53, i64 240, !53, i64 244, !53, i64 248, !53, i64 252}
!79 = !{!73, !41, i64 108}
!80 = distinct !{!80, !59}
!81 = !{!82, !41, i64 24}
!82 = !{!"bPose", !39, i64 0, !36, i64 16, !41, i64 24, !41, i64 26, !53, i64 28, !53, i64 32, !50, i64 36, !37, i64 40, !37, i64 52, !39, i64 64, !53, i64 80, !53, i64 84, !36, i64 88, !36, i64 96, !68, i64 104, !37, i64 152}
!83 = !{!66, !36, i64 216}
!84 = !{!66, !41, i64 954}
!85 = distinct !{!85, !59}
!86 = !{!35, !36, i64 88}
!87 = !{!"view3d_snap.c:snap_sel_to_curs_exec"}
!88 = !{!89, !36, i64 112}
!89 = !{!"wmOperator", !36, i64 0, !36, i64 8, !37, i64 16, !36, i64 80, !36, i64 88, !36, i64 96, !36, i64 104, !36, i64 112, !36, i64 120, !39, i64 128, !36, i64 144, !36, i64 152, !41, i64 160, !37, i64 162}
!90 = !{i8 0, i8 2}
!91 = distinct !{!91, !59}
!92 = distinct !{!92, !59}
!93 = distinct !{!93, !59}
!94 = distinct !{!94, !59}
!95 = !{!"view3d_snap.c:snap_curs_to_grid_exec"}
!96 = !{!"view3d_snap.c:snap_curs_to_sel_exec"}
!97 = !{!"view3d_snap.c:snap_curs_to_active_exec"}
!98 = !{!66, !41, i64 136}
!99 = !{!100, !36, i64 0}
!100 = !{!"BMEditMesh", !36, i64 0, !36, i64 8, !53, i64 16, !36, i64 24, !53, i64 32, !36, i64 40, !36, i64 48, !69, i64 56, !36, i64 64, !53, i64 72, !36, i64 80, !53, i64 88, !41, i64 92, !41, i64 94, !36, i64 96, !53, i64 104}
!101 = !{!"view3d_snap.c:snap_curs_to_center_exec"}
!102 = !{!56, !53, i64 44}
!103 = distinct !{!103, !59}
!104 = !{!"view3d_snap.c:copy_v3_v3"}
!105 = !{!"view3d_snap.c:add_v3_v3"}
!106 = !{!"view3d_snap.c:sub_v3_v3"}
!107 = !{!"view3d_snap.c:snap_curs_to_sel_ex"}
!108 = distinct !{!108, !59}
!109 = !{!110, !41, i64 238}
!110 = !{!"View3D", !36, i64 0, !36, i64 8, !39, i64 16, !53, i64 32, !50, i64 36, !37, i64 40, !37, i64 56, !50, i64 72, !50, i64 76, !37, i64 80, !37, i64 81, !53, i64 84, !53, i64 88, !41, i64 92, !41, i64 94, !36, i64 96, !36, i64 104, !111, i64 112, !39, i64 128, !36, i64 144, !36, i64 152, !37, i64 160, !53, i64 224, !53, i64 228, !41, i64 232, !41, i64 234, !41, i64 236, !41, i64 238, !41, i64 240, !41, i64 242, !50, i64 244, !50, i64 248, !50, i64 252, !50, i64 256, !37, i64 260, !37, i64 272, !41, i64 284, !41, i64 286, !41, i64 288, !37, i64 290, !37, i64 291, !37, i64 292, !37, i64 293, !37, i64 294, !39, i64 296, !39, i64 312, !39, i64 328, !37, i64 344, !37, i64 345, !37, i64 346, !37, i64 347, !36, i64 352, !36, i64 360, !36, i64 368}
!111 = !{!"rctf", !50, i64 0, !50, i64 4, !50, i64 8, !50, i64 12}
!112 = distinct !{!112, !59}
!113 = !{!110, !41, i64 242}
!114 = distinct !{!114, !59}
!115 = !{!"view3d_snap.c:sub_v3_v3v3"}
!116 = !{!"view3d_snap.c:add_v3_v3v3"}
!117 = !{!"view3d_snap.c:zero_v3"}
!118 = !{!"view3d_snap.c:mul_v3_fl"}
!119 = !{!"view3d_snap.c:bundle_midpoint"}
!120 = !{!39, !36, i64 0}
!121 = !{!122, !53, i64 80}
!122 = !{!"MovieTrackingObject", !36, i64 0, !36, i64 8, !37, i64 16, !53, i64 80, !50, i64 84, !39, i64 88, !39, i64 104, !123, i64 120, !53, i64 144, !53, i64 148}
!123 = !{!"MovieTrackingReconstruction", !53, i64 0, !50, i64 4, !53, i64 8, !53, i64 12, !36, i64 16}
!124 = !{!125, !53, i64 680}
!125 = !{!"Scene", !67, i64 0, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !39, i64 152, !36, i64 168, !36, i64 176, !37, i64 184, !37, i64 196, !37, i64 208, !37, i64 220, !53, i64 232, !53, i64 236, !53, i64 240, !41, i64 244, !37, i64 246, !37, i64 247, !36, i64 248, !36, i64 256, !36, i64 264, !36, i64 272, !126, i64 280, !134, i64 4264, !39, i64 4296, !39, i64 4312, !36, i64 4328, !36, i64 4336, !36, i64 4344, !36, i64 4352, !36, i64 4360, !36, i64 4368, !41, i64 4376, !41, i64 4378, !53, i64 4380, !39, i64 4384, !135, i64 4400, !136, i64 4416, !139, i64 4600, !36, i64 4608, !140, i64 4616, !36, i64 4640, !69, i64 4648, !69, i64 4656, !128, i64 4664, !129, i64 4824, !141, i64 4888, !36, i64 4952}
!126 = !{!"RenderData", !127, i64 0, !36, i64 248, !36, i64 256, !130, i64 264, !131, i64 328, !53, i64 400, !53, i64 404, !53, i64 408, !50, i64 412, !53, i64 416, !53, i64 420, !53, i64 424, !53, i64 428, !41, i64 432, !41, i64 434, !50, i64 436, !50, i64 440, !50, i64 444, !50, i64 448, !50, i64 452, !41, i64 456, !41, i64 458, !41, i64 460, !41, i64 462, !41, i64 464, !41, i64 466, !53, i64 468, !41, i64 472, !41, i64 474, !41, i64 476, !41, i64 478, !41, i64 480, !41, i64 482, !53, i64 484, !53, i64 488, !41, i64 492, !41, i64 494, !53, i64 496, !53, i64 500, !41, i64 504, !41, i64 506, !41, i64 508, !41, i64 510, !41, i64 512, !37, i64 514, !37, i64 515, !53, i64 516, !53, i64 520, !53, i64 524, !41, i64 528, !41, i64 530, !41, i64 532, !41, i64 534, !41, i64 536, !41, i64 538, !41, i64 540, !41, i64 542, !111, i64 544, !111, i64 560, !132, i64 576, !39, i64 592, !41, i64 608, !41, i64 610, !50, i64 612, !50, i64 616, !50, i64 620, !50, i64 624, !53, i64 628, !50, i64 632, !50, i64 636, !50, i64 640, !50, i64 644, !41, i64 648, !41, i64 650, !41, i64 652, !41, i64 654, !41, i64 656, !41, i64 658, !50, i64 660, !50, i64 664, !41, i64 668, !41, i64 670, !50, i64 672, !50, i64 676, !37, i64 680, !53, i64 1704, !41, i64 1708, !41, i64 1710, !37, i64 1712, !37, i64 2480, !37, i64 2496, !37, i64 2512, !37, i64 2513, !37, i64 2514, !37, i64 2515, !53, i64 2520, !41, i64 2524, !41, i64 2526, !50, i64 2528, !50, i64 2532, !41, i64 2536, !41, i64 2538, !50, i64 2540, !41, i64 2544, !41, i64 2546, !53, i64 2548, !41, i64 2552, !41, i64 2554, !41, i64 2556, !41, i64 2558, !50, i64 2560, !50, i64 2564, !36, i64 2568, !53, i64 2576, !50, i64 2580, !37, i64 2584, !133, i64 2616, !53, i64 3976, !53, i64 3980}
!127 = !{!"ImageFormatData", !37, i64 0, !37, i64 1, !37, i64 2, !37, i64 3, !37, i64 4, !37, i64 5, !37, i64 6, !37, i64 7, !41, i64 8, !41, i64 10, !50, i64 12, !37, i64 16, !37, i64 17, !37, i64 18, !128, i64 24, !129, i64 184}
!128 = !{!"ColorManagedViewSettings", !53, i64 0, !53, i64 4, !37, i64 8, !37, i64 72, !50, i64 136, !50, i64 140, !36, i64 144, !36, i64 152}
!129 = !{!"ColorManagedDisplaySettings", !37, i64 0}
!130 = !{!"QuicktimeCodecSettings", !53, i64 0, !53, i64 4, !53, i64 8, !53, i64 12, !53, i64 16, !53, i64 20, !53, i64 24, !53, i64 28, !53, i64 32, !53, i64 36, !53, i64 40, !53, i64 44, !41, i64 48, !41, i64 50, !53, i64 52, !53, i64 56, !53, i64 60}
!131 = !{!"FFMpegCodecData", !53, i64 0, !53, i64 4, !53, i64 8, !53, i64 12, !53, i64 16, !53, i64 20, !53, i64 24, !53, i64 28, !50, i64 32, !53, i64 36, !53, i64 40, !53, i64 44, !53, i64 48, !53, i64 52, !53, i64 56, !53, i64 60, !36, i64 64}
!132 = !{!"rcti", !53, i64 0, !53, i64 4, !53, i64 8, !53, i64 12}
!133 = !{!"BakeData", !127, i64 0, !37, i64 248, !41, i64 1272, !41, i64 1274, !41, i64 1276, !41, i64 1278, !50, i64 1280, !50, i64 1284, !37, i64 1288, !37, i64 1291, !37, i64 1292, !37, i64 1293, !37, i64 1296}
!134 = !{!"AudioData", !53, i64 0, !50, i64 4, !50, i64 8, !50, i64 12, !53, i64 16, !41, i64 20, !41, i64 22, !50, i64 24, !50, i64 28}
!135 = !{!"GameFraming", !37, i64 0, !37, i64 12, !37, i64 13, !37, i64 14, !37, i64 15}
!136 = !{!"GameData", !135, i64 0, !41, i64 16, !41, i64 18, !41, i64 20, !41, i64 22, !41, i64 24, !41, i64 26, !41, i64 28, !41, i64 30, !41, i64 32, !37, i64 34, !137, i64 40, !41, i64 64, !41, i64 66, !50, i64 68, !138, i64 72, !50, i64 128, !50, i64 132, !53, i64 136, !41, i64 140, !41, i64 142, !41, i64 144, !41, i64 146, !41, i64 148, !41, i64 150, !41, i64 152, !41, i64 154, !41, i64 156, !41, i64 158, !41, i64 160, !41, i64 162, !50, i64 164, !50, i64 168, !50, i64 172, !50, i64 176, !50, i64 180}
!137 = !{!"GameDome", !41, i64 0, !41, i64 2, !41, i64 4, !41, i64 6, !50, i64 8, !50, i64 12, !36, i64 16}
!138 = !{!"RecastData", !50, i64 0, !50, i64 4, !50, i64 8, !50, i64 12, !50, i64 16, !50, i64 20, !50, i64 24, !50, i64 28, !50, i64 32, !50, i64 36, !53, i64 40, !50, i64 44, !50, i64 48, !41, i64 52, !41, i64 54}
!139 = !{!"UnitSettings", !50, i64 0, !37, i64 4, !37, i64 5, !41, i64 6}
!140 = !{!"PhysicsSettings", !37, i64 0, !53, i64 12, !53, i64 16, !53, i64 20}
!141 = !{!"ColorManagedColorspaceSettings", !37, i64 0}
!142 = !{!143, !53, i64 152}
!143 = !{!"MovieTrackingTrack", !36, i64 0, !36, i64 8, !37, i64 16, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !53, i64 120, !53, i64 124, !36, i64 128, !37, i64 136, !50, i64 148, !53, i64 152, !53, i64 156, !53, i64 160, !37, i64 164, !41, i64 176, !41, i64 178, !41, i64 180, !41, i64 182, !53, i64 184, !50, i64 188, !36, i64 192, !50, i64 200, !50, i64 204}
!144 = !{!143, !53, i64 156}
!145 = !{!143, !53, i64 160}
!146 = !{!143, !36, i64 0}
!147 = distinct !{!147, !59}
!148 = distinct !{!148, !59}

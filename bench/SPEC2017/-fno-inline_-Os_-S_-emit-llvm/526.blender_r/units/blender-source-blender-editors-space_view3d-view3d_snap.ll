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
  store ptr @.str, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.1, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.2, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @snap_sel_to_grid_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_region_view3d_active, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @snap_sel_to_grid_exec(ptr noundef %0, ptr nocapture readnone %1) #1 {
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
  %14 = load float, ptr %13, align 8, !tbaa !18
  %15 = icmp eq ptr %10, null
  br i1 %15, label %55, label %16

16:                                               ; preds = %2
  %17 = tail call zeroext i8 @ED_transverts_check_obedit(ptr noundef nonnull %10) #8
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %200, label %19

19:                                               ; preds = %16
  call void @ED_transverts_create_from_obedit(ptr noundef nonnull %3, ptr noundef nonnull %10, i32 noundef 0) #8
  %20 = getelementptr inbounds %struct.TransVertStore, ptr %3, i64 0, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !21
  %22 = icmp eq i32 %21, 0
  %23 = getelementptr inbounds %struct.TransVertStore, ptr %3, i64 0, i32 1
  br i1 %22, label %200, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 47
  call void @copy_m3_m4(ptr noundef nonnull %5, ptr noundef nonnull %25) #8
  %26 = call zeroext i8 @invert_m3_m3(ptr noundef nonnull %4, ptr noundef nonnull %5) #8
  %27 = load i32, ptr %23, align 8, !tbaa !21
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %54

29:                                               ; preds = %24
  %30 = load ptr, ptr %3, align 8, !tbaa !24
  %31 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 47, i64 3
  %32 = getelementptr inbounds [3 x float], ptr %6, i64 0, i64 2
  %33 = insertelement <2 x float> poison, float %14, i64 0
  %34 = shufflevector <2 x float> %33, <2 x float> poison, <2 x i32> zeroinitializer
  br label %35

35:                                               ; preds = %29, %35
  %36 = phi ptr [ %30, %29 ], [ %51, %35 ]
  %37 = phi i32 [ 0, %29 ], [ %50, %35 ]
  %38 = load ptr, ptr %36, align 8, !tbaa !25
  call fastcc void @copy_v3_v3(ptr noundef nonnull %6, ptr noundef %38) #10
  call void @mul_m3_v3(ptr noundef nonnull %5, ptr noundef nonnull %6) #8
  call fastcc void @add_v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %31) #10
  %39 = load <2 x float>, ptr %6, align 8, !tbaa !27
  %40 = fdiv <2 x float> %39, %34
  %41 = fadd <2 x float> %40, <float 5.000000e-01, float 5.000000e-01>
  %42 = call <2 x float> @llvm.floor.v2f32(<2 x float> %41)
  %43 = fmul <2 x float> %34, %42
  store <2 x float> %43, ptr %6, align 8, !tbaa !27
  %44 = load float, ptr %32, align 8, !tbaa !27
  %45 = fdiv float %44, %14
  %46 = fadd float %45, 5.000000e-01
  %47 = call float @llvm.floor.f32(float %46)
  %48 = fmul float %14, %47
  store float %48, ptr %32, align 8, !tbaa !27
  call fastcc void @sub_v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %31) #10
  call void @mul_m3_v3(ptr noundef nonnull %4, ptr noundef nonnull %6) #8
  %49 = load ptr, ptr %36, align 8, !tbaa !25
  call fastcc void @copy_v3_v3(ptr noundef %49, ptr noundef nonnull %6) #10
  %50 = add nuw nsw i32 %37, 1
  %51 = getelementptr inbounds %struct.TransVert, ptr %36, i64 1
  %52 = load i32, ptr %23, align 8, !tbaa !21
  %53 = icmp slt i32 %50, %52
  br i1 %53, label %35, label %54, !llvm.loop !28

54:                                               ; preds = %35, %24
  call void @ED_transverts_update_obedit(ptr noundef nonnull %3, ptr noundef nonnull %10) #8
  call void @ED_transverts_free(ptr noundef nonnull %3) #8
  br label %199

55:                                               ; preds = %2
  %56 = tail call ptr @ANIM_get_keyingset_for_autokeying(ptr noundef %11, ptr noundef nonnull @.str.21) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #9
  %57 = call i32 @CTX_data_selected_editable_objects(ptr noundef %0, ptr noundef nonnull %7) #8
  %58 = load ptr, ptr %7, align 8, !tbaa !30
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
  %69 = load ptr, ptr %68, align 8, !tbaa !31
  %70 = getelementptr inbounds %struct.Object, ptr %69, i64 0, i32 27
  %71 = load i32, ptr %70, align 8, !tbaa !35
  %72 = and i32 %71, 64
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %146, label %74

74:                                               ; preds = %66
  %75 = getelementptr inbounds %struct.Object, ptr %69, i64 0, i32 19
  %76 = load ptr, ptr %75, align 8, !tbaa !40
  %77 = getelementptr inbounds %struct.Object, ptr %69, i64 0, i32 50
  %78 = getelementptr inbounds %struct.Object, ptr %69, i64 0, i32 47
  %79 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %77, ptr noundef nonnull %78) #8
  %80 = getelementptr inbounds %struct.Object, ptr %69, i64 0, i32 18
  %81 = load ptr, ptr %80, align 8, !tbaa !41
  %82 = load ptr, ptr %81, align 8, !tbaa !30
  %83 = icmp eq ptr %82, null
  br i1 %83, label %141, label %84

84:                                               ; preds = %74
  %85 = getelementptr inbounds %struct.bArmature, ptr %76, i64 0, i32 15
  br label %86

86:                                               ; preds = %84, %136
  %87 = phi ptr [ %82, %84 ], [ %137, %136 ]
  %88 = getelementptr inbounds %struct.bPoseChannel, ptr %87, i64 0, i32 12
  %89 = load ptr, ptr %88, align 8, !tbaa !42
  %90 = getelementptr inbounds %struct.Bone, ptr %89, i64 0, i32 10
  %91 = load i32, ptr %90, align 8, !tbaa !44
  %92 = and i32 %91, 1
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %136, label %94

94:                                               ; preds = %86
  %95 = getelementptr inbounds %struct.Bone, ptr %89, i64 0, i32 25
  %96 = load i32, ptr %95, align 8, !tbaa !46
  %97 = load i32, ptr %85, align 8, !tbaa !47
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
  %105 = load <2 x float>, ptr %8, align 8, !tbaa !27
  %106 = fdiv <2 x float> %105, %65
  %107 = fadd <2 x float> %106, <float 5.000000e-01, float 5.000000e-01>
  %108 = call <2 x float> @llvm.floor.v2f32(<2 x float> %107)
  %109 = fmul <2 x float> %65, %108
  store <2 x float> %109, ptr %6, align 8, !tbaa !27
  %110 = load float, ptr %62, align 8, !tbaa !27
  %111 = fdiv float %110, %14
  %112 = fadd float %111, 5.000000e-01
  %113 = call float @llvm.floor.f32(float %112)
  %114 = fmul float %14, %113
  store float %114, ptr %63, align 8, !tbaa !27
  call void @mul_m4_v3(ptr noundef nonnull %77, ptr noundef nonnull %6) #8
  call void @BKE_armature_loc_pose_to_bone(ptr noundef nonnull %87, ptr noundef nonnull %6, ptr noundef nonnull %6) #8
  %115 = getelementptr inbounds %struct.bPoseChannel, ptr %87, i64 0, i32 7
  %116 = load i16, ptr %115, align 4, !tbaa !49
  %117 = and i16 %116, 1
  %118 = icmp eq i16 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %103
  %120 = load float, ptr %6, align 8, !tbaa !27
  %121 = getelementptr inbounds %struct.bPoseChannel, ptr %87, i64 0, i32 20
  store float %120, ptr %121, align 8, !tbaa !27
  br label %122

122:                                              ; preds = %119, %103
  %123 = and i16 %116, 2
  %124 = icmp eq i16 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %122
  %126 = load float, ptr %61, align 4, !tbaa !27
  %127 = getelementptr inbounds %struct.bPoseChannel, ptr %87, i64 0, i32 20, i64 1
  store float %126, ptr %127, align 4, !tbaa !27
  br label %128

128:                                              ; preds = %125, %122
  %129 = and i16 %116, 4
  %130 = icmp eq i16 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %128
  %132 = load float, ptr %63, align 8, !tbaa !27
  %133 = getelementptr inbounds %struct.bPoseChannel, ptr %87, i64 0, i32 20, i64 2
  store float %132, ptr %133, align 8, !tbaa !27
  br label %134

134:                                              ; preds = %131, %128
  %135 = call zeroext i8 @ED_autokeyframe_pchan(ptr noundef %0, ptr noundef %11, ptr noundef %69, ptr noundef nonnull %87, ptr noundef %56) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #9
  br label %136

136:                                              ; preds = %86, %134, %94
  %137 = load ptr, ptr %87, align 8, !tbaa !30
  %138 = icmp eq ptr %137, null
  br i1 %138, label %139, label %86, !llvm.loop !50

139:                                              ; preds = %136
  %140 = load ptr, ptr %80, align 8, !tbaa !41
  br label %141

141:                                              ; preds = %139, %74
  %142 = phi ptr [ %140, %139 ], [ %81, %74 ]
  %143 = getelementptr inbounds %struct.bPose, ptr %142, i64 0, i32 2
  %144 = load i16, ptr %143, align 8, !tbaa !51
  %145 = or i16 %144, 6
  store i16 %145, ptr %143, align 8, !tbaa !51
  br label %194

146:                                              ; preds = %66
  %147 = getelementptr inbounds %struct.Object, ptr %69, i64 0, i32 47, i64 3
  %148 = load <2 x float>, ptr %147, align 8, !tbaa !27
  %149 = fneg <2 x float> %148
  %150 = fdiv <2 x float> %148, %65
  %151 = fadd <2 x float> %150, <float 5.000000e-01, float 5.000000e-01>
  %152 = call <2 x float> @llvm.floor.v2f32(<2 x float> %151)
  %153 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %65, <2 x float> %152, <2 x float> %149)
  store <2 x float> %153, ptr %6, align 8, !tbaa !27
  %154 = getelementptr inbounds %struct.Object, ptr %69, i64 0, i32 47, i64 3, i64 2
  %155 = load float, ptr %154, align 8, !tbaa !27
  %156 = fneg float %155
  %157 = fdiv float %155, %14
  %158 = fadd float %157, 5.000000e-01
  %159 = call float @llvm.floor.f32(float %158)
  %160 = call float @llvm.fmuladd.f32(float %14, float %159, float %156)
  store float %160, ptr %63, align 8, !tbaa !27
  %161 = getelementptr inbounds %struct.Object, ptr %69, i64 0, i32 9
  %162 = load ptr, ptr %161, align 8, !tbaa !53
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
  %168 = load i16, ptr %167, align 2, !tbaa !54
  %169 = and i16 %168, 1
  %170 = icmp eq i16 %169, 0
  br i1 %170, label %171, label %176

171:                                              ; preds = %166
  %172 = load float, ptr %6, align 8, !tbaa !27
  %173 = getelementptr inbounds %struct.Object, ptr %69, i64 0, i32 33
  %174 = load float, ptr %173, align 8, !tbaa !27
  %175 = fadd float %172, %174
  store float %175, ptr %173, align 8, !tbaa !27
  br label %176

176:                                              ; preds = %171, %166
  %177 = and i16 %168, 2
  %178 = icmp eq i16 %177, 0
  br i1 %178, label %179, label %184

179:                                              ; preds = %176
  %180 = load float, ptr %61, align 4, !tbaa !27
  %181 = getelementptr inbounds %struct.Object, ptr %69, i64 0, i32 33, i64 1
  %182 = load float, ptr %181, align 4, !tbaa !27
  %183 = fadd float %180, %182
  store float %183, ptr %181, align 4, !tbaa !27
  br label %184

184:                                              ; preds = %179, %176
  %185 = and i16 %168, 4
  %186 = icmp eq i16 %185, 0
  br i1 %186, label %187, label %192

187:                                              ; preds = %184
  %188 = load float, ptr %63, align 8, !tbaa !27
  %189 = getelementptr inbounds %struct.Object, ptr %69, i64 0, i32 33, i64 2
  %190 = load float, ptr %189, align 8, !tbaa !27
  %191 = fadd float %188, %190
  store float %191, ptr %189, align 8, !tbaa !27
  br label %192

192:                                              ; preds = %187, %184
  %193 = call zeroext i8 @ED_autokeyframe_object(ptr noundef %0, ptr noundef %11, ptr noundef nonnull %69, ptr noundef %56) #8
  br label %194

194:                                              ; preds = %192, %141
  %195 = phi i16 [ 1, %192 ], [ 2, %141 ]
  call void @DAG_id_tag_update(ptr noundef nonnull %69, i16 noundef signext %195) #8
  %196 = load ptr, ptr %67, align 8, !tbaa !30
  %197 = icmp eq ptr %196, null
  br i1 %197, label %198, label %66, !llvm.loop !55

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
  store ptr @.str.3, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.4, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.5, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @snap_sel_to_curs_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_view3d_active, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !17
  %7 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !56
  %9 = tail call ptr @RNA_def_boolean(ptr noundef %8, ptr noundef nonnull @.str.6, i32 noundef 1, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
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
  %19 = load ptr, ptr %18, align 8, !tbaa !57
  %20 = tail call i32 @RNA_boolean_get(ptr noundef %19, ptr noundef nonnull @.str.6) #8
  %21 = tail call ptr @ED_view3d_cursor3d_get(ptr noundef %16, ptr noundef %17) #8
  %22 = and i32 %20, 255
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %2
  %25 = call fastcc zeroext i8 @snap_curs_to_sel_ex(ptr noundef %0, ptr noundef nonnull %6) #10, !range !59
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
  %33 = load i32, ptr %32, align 8, !tbaa !21
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
  %41 = load i32, ptr %35, align 8, !tbaa !21
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %40
  %44 = load ptr, ptr %3, align 8, !tbaa !24
  br label %45

45:                                               ; preds = %43, %45
  %46 = phi ptr [ %50, %45 ], [ %44, %43 ]
  %47 = phi i32 [ %49, %45 ], [ 0, %43 ]
  %48 = load ptr, ptr %46, align 8, !tbaa !25
  call fastcc void @add_v3_v3(ptr noundef %48, ptr noundef nonnull %9) #10
  %49 = add nuw nsw i32 %47, 1
  %50 = getelementptr inbounds %struct.TransVert, ptr %46, i64 1
  %51 = load i32, ptr %35, align 8, !tbaa !21
  %52 = icmp slt i32 %49, %51
  br i1 %52, label %45, label %53, !llvm.loop !60

53:                                               ; preds = %45, %40
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #9
  br label %67

54:                                               ; preds = %36
  %55 = load i32, ptr %35, align 8, !tbaa !21
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %54
  %58 = load ptr, ptr %3, align 8, !tbaa !24
  br label %59

59:                                               ; preds = %57, %59
  %60 = phi ptr [ %64, %59 ], [ %58, %57 ]
  %61 = phi i32 [ %63, %59 ], [ 0, %57 ]
  %62 = load ptr, ptr %60, align 8, !tbaa !25
  call fastcc void @copy_v3_v3(ptr noundef %62, ptr noundef nonnull %8) #10
  %63 = add nuw nsw i32 %61, 1
  %64 = getelementptr inbounds %struct.TransVert, ptr %60, i64 1
  %65 = load i32, ptr %35, align 8, !tbaa !21
  %66 = icmp slt i32 %63, %65
  br i1 %66, label %59, label %67, !llvm.loop !61

67:                                               ; preds = %59, %54, %53
  call void @ED_transverts_update_obedit(ptr noundef nonnull %3, ptr noundef nonnull %15) #8
  call void @ED_transverts_free(ptr noundef nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #9
  br label %194

68:                                               ; preds = %26
  %69 = call ptr @ANIM_get_keyingset_for_autokeying(ptr noundef %16, ptr noundef nonnull @.str.21) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #9
  %70 = call i32 @CTX_data_selected_editable_objects(ptr noundef %0, ptr noundef nonnull %10) #8
  %71 = load ptr, ptr %10, align 8, !tbaa !30
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
  %81 = load ptr, ptr %80, align 8, !tbaa !31
  %82 = getelementptr inbounds %struct.Object, ptr %81, i64 0, i32 27
  %83 = load i32, ptr %82, align 8, !tbaa !35
  %84 = and i32 %83, 64
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %151, label %86

86:                                               ; preds = %78
  %87 = getelementptr inbounds %struct.Object, ptr %81, i64 0, i32 19
  %88 = load ptr, ptr %87, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #9
  %89 = getelementptr inbounds %struct.Object, ptr %81, i64 0, i32 50
  %90 = getelementptr inbounds %struct.Object, ptr %81, i64 0, i32 47
  %91 = call zeroext i8 @invert_m4_m4(ptr noundef nonnull %89, ptr noundef nonnull %90) #8
  call void @mul_v3_m4v3(ptr noundef nonnull %11, ptr noundef nonnull %89, ptr noundef %21) #8
  %92 = getelementptr inbounds %struct.Object, ptr %81, i64 0, i32 18
  %93 = load ptr, ptr %92, align 8, !tbaa !41
  %94 = load ptr, ptr %93, align 8, !tbaa !30
  %95 = icmp eq ptr %94, null
  br i1 %95, label %146, label %96

96:                                               ; preds = %86
  %97 = getelementptr inbounds %struct.bArmature, ptr %88, i64 0, i32 15
  br label %98

98:                                               ; preds = %96, %141
  %99 = phi ptr [ %94, %96 ], [ %142, %141 ]
  %100 = getelementptr inbounds %struct.bPoseChannel, ptr %99, i64 0, i32 12
  %101 = load ptr, ptr %100, align 8, !tbaa !42
  %102 = getelementptr inbounds %struct.Bone, ptr %101, i64 0, i32 10
  %103 = load i32, ptr %102, align 8, !tbaa !44
  %104 = and i32 %103, 1
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %141, label %106

106:                                              ; preds = %98
  %107 = getelementptr inbounds %struct.Bone, ptr %101, i64 0, i32 25
  %108 = load i32, ptr %107, align 8, !tbaa !46
  %109 = load i32, ptr %97, align 8, !tbaa !47
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
  %121 = load i16, ptr %120, align 4, !tbaa !49
  %122 = and i16 %121, 1
  %123 = icmp eq i16 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %118
  %125 = load float, ptr %12, align 4, !tbaa !27
  %126 = getelementptr inbounds %struct.bPoseChannel, ptr %99, i64 0, i32 20
  store float %125, ptr %126, align 8, !tbaa !27
  br label %127

127:                                              ; preds = %124, %118
  %128 = and i16 %121, 2
  %129 = icmp eq i16 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %127
  %131 = load float, ptr %74, align 4, !tbaa !27
  %132 = getelementptr inbounds %struct.bPoseChannel, ptr %99, i64 0, i32 20, i64 1
  store float %131, ptr %132, align 4, !tbaa !27
  br label %133

133:                                              ; preds = %130, %127
  %134 = and i16 %121, 4
  %135 = icmp eq i16 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %133
  %137 = load float, ptr %75, align 4, !tbaa !27
  %138 = getelementptr inbounds %struct.bPoseChannel, ptr %99, i64 0, i32 20, i64 2
  store float %137, ptr %138, align 8, !tbaa !27
  br label %139

139:                                              ; preds = %136, %133
  %140 = call zeroext i8 @ED_autokeyframe_pchan(ptr noundef %0, ptr noundef %16, ptr noundef %81, ptr noundef nonnull %99, ptr noundef %69) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #9
  br label %141

141:                                              ; preds = %98, %106, %139
  %142 = load ptr, ptr %99, align 8, !tbaa !30
  %143 = icmp eq ptr %142, null
  br i1 %143, label %144, label %98, !llvm.loop !62

144:                                              ; preds = %141
  %145 = load ptr, ptr %92, align 8, !tbaa !41
  br label %146

146:                                              ; preds = %144, %86
  %147 = phi ptr [ %145, %144 ], [ %93, %86 ]
  %148 = getelementptr inbounds %struct.bPose, ptr %147, i64 0, i32 2
  %149 = load i16, ptr %148, align 8, !tbaa !51
  %150 = or i16 %149, 6
  store i16 %150, ptr %148, align 8, !tbaa !51
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
  %158 = load ptr, ptr %157, align 8, !tbaa !53
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
  %164 = load i16, ptr %163, align 2, !tbaa !54
  %165 = and i16 %164, 1
  %166 = icmp eq i16 %165, 0
  br i1 %166, label %167, label %172

167:                                              ; preds = %162
  %168 = load float, ptr %13, align 4, !tbaa !27
  %169 = getelementptr inbounds %struct.Object, ptr %81, i64 0, i32 33
  %170 = load float, ptr %169, align 8, !tbaa !27
  %171 = fadd float %168, %170
  store float %171, ptr %169, align 8, !tbaa !27
  br label %172

172:                                              ; preds = %167, %162
  %173 = and i16 %164, 2
  %174 = icmp eq i16 %173, 0
  br i1 %174, label %175, label %180

175:                                              ; preds = %172
  %176 = load float, ptr %76, align 4, !tbaa !27
  %177 = getelementptr inbounds %struct.Object, ptr %81, i64 0, i32 33, i64 1
  %178 = load float, ptr %177, align 4, !tbaa !27
  %179 = fadd float %176, %178
  store float %179, ptr %177, align 4, !tbaa !27
  br label %180

180:                                              ; preds = %175, %172
  %181 = and i16 %164, 4
  %182 = icmp eq i16 %181, 0
  br i1 %182, label %183, label %188

183:                                              ; preds = %180
  %184 = load float, ptr %77, align 4, !tbaa !27
  %185 = getelementptr inbounds %struct.Object, ptr %81, i64 0, i32 33, i64 2
  %186 = load float, ptr %185, align 8, !tbaa !27
  %187 = fadd float %184, %186
  store float %187, ptr %185, align 8, !tbaa !27
  br label %188

188:                                              ; preds = %183, %180
  %189 = call zeroext i8 @ED_autokeyframe_object(ptr noundef %0, ptr noundef %16, ptr noundef nonnull %81, ptr noundef %69) #8
  call void @DAG_id_tag_update(ptr noundef nonnull %81, i16 noundef signext 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #9
  br label %190

190:                                              ; preds = %188, %146
  %191 = load ptr, ptr %79, align 8, !tbaa !30
  %192 = icmp eq ptr %191, null
  br i1 %192, label %193, label %78, !llvm.loop !63

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
  store ptr @.str.9, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.10, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.11, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @snap_curs_to_grid_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_region_view3d_active, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @snap_curs_to_grid_exec(ptr noundef %0, ptr nocapture readnone %1) #1 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %4 = tail call ptr @CTX_wm_region_data(ptr noundef %0) #8
  %5 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #8
  %6 = getelementptr inbounds %struct.RegionView3D, ptr %4, i64 0, i32 36
  %7 = load float, ptr %6, align 8, !tbaa !18
  %8 = tail call ptr @ED_view3d_cursor3d_get(ptr noundef %3, ptr noundef %5) #8
  %9 = load <2 x float>, ptr %8, align 4, !tbaa !27
  %10 = insertelement <2 x float> poison, float %7, i64 0
  %11 = shufflevector <2 x float> %10, <2 x float> poison, <2 x i32> zeroinitializer
  %12 = fdiv <2 x float> %9, %11
  %13 = fadd <2 x float> %12, <float 5.000000e-01, float 5.000000e-01>
  %14 = tail call <2 x float> @llvm.floor.v2f32(<2 x float> %13)
  %15 = fmul <2 x float> %11, %14
  store <2 x float> %15, ptr %8, align 4, !tbaa !27
  %16 = getelementptr inbounds float, ptr %8, i64 2
  %17 = load float, ptr %16, align 4, !tbaa !27
  %18 = fdiv float %17, %7
  %19 = fadd float %18, 5.000000e-01
  %20 = tail call float @llvm.floor.f32(float %19)
  %21 = fmul float %7, %20
  store float %21, ptr %16, align 4, !tbaa !27
  tail call void @WM_event_add_notifier(ptr noundef %0, i32 noundef 252248064, ptr noundef %5) #8
  ret i32 4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @VIEW3D_OT_snap_cursor_to_selected(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  store ptr @.str.12, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.13, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.14, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @snap_curs_to_sel_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_view3d_active, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @snap_curs_to_sel_exec(ptr noundef %0, ptr nocapture readnone %1) #1 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %4 = tail call ptr @CTX_wm_view3d(ptr noundef %0) #8
  %5 = tail call ptr @ED_view3d_cursor3d_get(ptr noundef %3, ptr noundef %4) #8
  %6 = tail call fastcc zeroext i8 @snap_curs_to_sel_ex(ptr noundef %0, ptr noundef %5) #10, !range !59
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
  store ptr @.str.15, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.16, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.17, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @snap_curs_to_active_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_view3d_active, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @snap_curs_to_active_exec(ptr noundef %0, ptr nocapture readnone %1) #1 {
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
  %12 = load i16, ptr %11, align 8, !tbaa !64
  switch i16 %12, label %32 [
    i16 1, label %13
    i16 22, label %21
  ]

13:                                               ; preds = %10
  %14 = tail call ptr @BKE_editmesh_from_object(ptr noundef nonnull %4) #8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #9
  %15 = load ptr, ptr %14, align 8, !tbaa !65
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
  %23 = load ptr, ptr %22, align 8, !tbaa !40
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
  store ptr @.str.18, ptr %0, align 8, !tbaa !5
  %2 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 3
  store ptr @.str.19, ptr %2, align 8, !tbaa !13
  %3 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 1
  store ptr @.str.20, ptr %3, align 8, !tbaa !14
  %4 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 4
  store ptr @snap_curs_to_center_exec, ptr %4, align 8, !tbaa !15
  %5 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 9
  store ptr @ED_operator_view3d_active, ptr %5, align 8, !tbaa !16
  %6 = getelementptr inbounds %struct.wmOperatorType, ptr %0, i64 0, i32 19
  store i16 3, ptr %6, align 8, !tbaa !17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @snap_curs_to_center_exec(ptr noundef %0, ptr nocapture readnone %1) #1 {
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
  %10 = load i16, ptr %9, align 8, !tbaa !64
  %11 = icmp eq i16 %10, 5
  br i1 %11, label %12, label %20

12:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #9
  %13 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 19
  %14 = load ptr, ptr %13, align 8, !tbaa !40
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
  %25 = load i32, ptr %24, align 8, !tbaa !21
  %26 = icmp eq i32 %25, 0
  %27 = getelementptr inbounds %struct.TransVertStore, ptr %4, i64 0, i32 1
  br i1 %26, label %53, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 47
  call void @copy_m3_m4(ptr noundef nonnull %6, ptr noundef nonnull %29) #8
  %30 = load i32, ptr %27, align 8, !tbaa !21
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %52

32:                                               ; preds = %28
  %33 = load ptr, ptr %4, align 8, !tbaa !24
  %34 = getelementptr inbounds %struct.Object, ptr %0, i64 0, i32 47, i64 3
  br label %35

35:                                               ; preds = %32, %46
  %36 = phi i32 [ 0, %32 ], [ %48, %46 ]
  %37 = phi ptr [ %33, %32 ], [ %49, %46 ]
  %38 = getelementptr inbounds %struct.TransVert, ptr %37, i64 0, i32 4
  %39 = load i32, ptr %38, align 4, !tbaa !67
  %40 = and i32 %39, 2
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %35
  %43 = getelementptr inbounds %struct.TransVert, ptr %37, i64 0, i32 2
  br label %46

44:                                               ; preds = %35
  %45 = load ptr, ptr %37, align 8, !tbaa !25
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi ptr [ %43, %42 ], [ %45, %44 ]
  call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef %47) #10
  call void @mul_m3_v3(ptr noundef nonnull %6, ptr noundef nonnull %5) #8
  call fastcc void @add_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %34) #10
  call void @minmax_v3v3_v3(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %5) #8
  %48 = add nuw nsw i32 %36, 1
  %49 = getelementptr inbounds %struct.TransVert, ptr %37, i64 1
  %50 = load i32, ptr %27, align 8, !tbaa !21
  %51 = icmp slt i32 %48, %50
  br i1 %51, label %35, label %52, !llvm.loop !68

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
define internal fastcc void @copy_v3_v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 {
  %3 = load float, ptr %1, align 4, !tbaa !27
  store float %3, ptr %0, align 4, !tbaa !27
  %4 = getelementptr inbounds float, ptr %1, i64 1
  %5 = load float, ptr %4, align 4, !tbaa !27
  %6 = getelementptr inbounds float, ptr %0, i64 1
  store float %5, ptr %6, align 4, !tbaa !27
  %7 = getelementptr inbounds float, ptr %1, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !27
  %9 = getelementptr inbounds float, ptr %0, i64 2
  store float %8, ptr %9, align 4, !tbaa !27
  ret void
}

; Function Attrs: optsize
declare void @mul_m3_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #5 {
  %3 = load float, ptr %1, align 4, !tbaa !27
  %4 = load float, ptr %0, align 4, !tbaa !27
  %5 = fadd float %3, %4
  store float %5, ptr %0, align 4, !tbaa !27
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !27
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !27
  %10 = fadd float %7, %9
  store float %10, ptr %8, align 4, !tbaa !27
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !27
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !27
  %15 = fadd float %12, %14
  store float %15, ptr %13, align 4, !tbaa !27
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
define internal fastcc void @sub_v3_v3(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #5 {
  %3 = load float, ptr %1, align 4, !tbaa !27
  %4 = load float, ptr %0, align 4, !tbaa !27
  %5 = fsub float %4, %3
  store float %5, ptr %0, align 4, !tbaa !27
  %6 = getelementptr inbounds float, ptr %1, i64 1
  %7 = load float, ptr %6, align 4, !tbaa !27
  %8 = getelementptr inbounds float, ptr %0, i64 1
  %9 = load float, ptr %8, align 4, !tbaa !27
  %10 = fsub float %9, %7
  store float %10, ptr %8, align 4, !tbaa !27
  %11 = getelementptr inbounds float, ptr %1, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !27
  %13 = getelementptr inbounds float, ptr %0, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !27
  %15 = fsub float %14, %12
  store float %15, ptr %13, align 4, !tbaa !27
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
define internal fastcc noundef zeroext i8 @snap_curs_to_sel_ex(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
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
  store float 0x46293E5940000000, ptr %13, align 8, !tbaa !27
  store <2 x float> <float 0x46293E5940000000, float 0x46293E5940000000>, ptr %6, align 8, !tbaa !27
  %14 = getelementptr inbounds [3 x float], ptr %7, i64 0, i64 2
  store float 0xC6293E5940000000, ptr %14, align 8, !tbaa !27
  store <2 x float> <float 0xC6293E5940000000, float 0xC6293E5940000000>, ptr %7, align 8, !tbaa !27
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
  %21 = load i32, ptr %20, align 8, !tbaa !21
  %22 = icmp eq i32 %21, 0
  %23 = getelementptr inbounds %struct.TransVertStore, ptr %3, i64 0, i32 1
  br i1 %22, label %126, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 47
  call void @copy_m3_m4(ptr noundef nonnull %4, ptr noundef nonnull %25) #8
  %26 = load i32, ptr %23, align 8, !tbaa !21
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %24
  %29 = load ptr, ptr %3, align 8, !tbaa !24
  %30 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 47, i64 3
  br label %31

31:                                               ; preds = %28, %31
  %32 = phi ptr [ %29, %28 ], [ %36, %31 ]
  %33 = phi i32 [ 0, %28 ], [ %35, %31 ]
  %34 = load ptr, ptr %32, align 8, !tbaa !25
  call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef %34) #10
  call void @mul_m3_v3(ptr noundef nonnull %4, ptr noundef nonnull %5) #8
  call fastcc void @add_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %30) #10
  call fastcc void @add_v3_v3(ptr noundef nonnull %8, ptr noundef nonnull %5) #10
  call void @minmax_v3v3_v3(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %5) #8
  %35 = add nuw nsw i32 %33, 1
  %36 = getelementptr inbounds %struct.TransVert, ptr %32, i64 1
  %37 = load i32, ptr %23, align 8, !tbaa !21
  %38 = icmp slt i32 %35, %37
  br i1 %38, label %31, label %39, !llvm.loop !69

39:                                               ; preds = %31, %24
  %40 = phi i32 [ %26, %24 ], [ %37, %31 ]
  %41 = getelementptr inbounds %struct.View3D, ptr %12, i64 0, i32 27
  %42 = load i16, ptr %41, align 2, !tbaa !70
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
  %54 = load i32, ptr %53, align 8, !tbaa !35
  %55 = and i32 %54, 64
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %89, label %57

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.Object, ptr %50, i64 0, i32 18
  %59 = load ptr, ptr %58, align 8, !tbaa !41
  %60 = load ptr, ptr %59, align 8, !tbaa !30
  %61 = icmp eq ptr %60, null
  br i1 %61, label %126, label %62

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.Object, ptr %50, i64 0, i32 19
  %64 = load ptr, ptr %63, align 8, !tbaa !40
  %65 = getelementptr inbounds %struct.bArmature, ptr %64, i64 0, i32 15
  %66 = getelementptr inbounds %struct.Object, ptr %50, i64 0, i32 47
  br label %67

67:                                               ; preds = %62, %85
  %68 = phi ptr [ %60, %62 ], [ %87, %85 ]
  %69 = phi i32 [ 0, %62 ], [ %86, %85 ]
  %70 = load i32, ptr %65, align 8, !tbaa !47
  %71 = getelementptr inbounds %struct.bPoseChannel, ptr %68, i64 0, i32 12
  %72 = load ptr, ptr %71, align 8, !tbaa !42
  %73 = getelementptr inbounds %struct.Bone, ptr %72, i64 0, i32 25
  %74 = load i32, ptr %73, align 8, !tbaa !46
  %75 = and i32 %74, %70
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %85, label %77

77:                                               ; preds = %67
  %78 = getelementptr inbounds %struct.Bone, ptr %72, i64 0, i32 10
  %79 = load i32, ptr %78, align 8, !tbaa !44
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
  %87 = load ptr, ptr %68, align 8, !tbaa !30
  %88 = icmp eq ptr %87, null
  br i1 %88, label %115, label %67, !llvm.loop !73

89:                                               ; preds = %52, %49
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #9
  %90 = call i32 @CTX_data_selected_objects(ptr noundef %0, ptr noundef nonnull %9) #8
  %91 = load ptr, ptr %9, align 8, !tbaa !30
  %92 = icmp eq ptr %91, null
  br i1 %92, label %113, label %93

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.View3D, ptr %12, i64 0, i32 29
  br label %95

95:                                               ; preds = %93, %109
  %96 = phi ptr [ %91, %93 ], [ %111, %109 ]
  %97 = phi i32 [ 0, %93 ], [ %110, %109 ]
  %98 = getelementptr inbounds %struct.CollectionPointerLink, ptr %96, i64 0, i32 2, i32 2
  %99 = load ptr, ptr %98, align 8, !tbaa !31
  %100 = getelementptr inbounds %struct.Object, ptr %99, i64 0, i32 47, i64 3
  call fastcc void @copy_v3_v3(ptr noundef nonnull %5, ptr noundef nonnull %100) #10
  %101 = getelementptr inbounds %struct.Object, ptr %99, i64 0, i32 3
  %102 = load i16, ptr %101, align 8, !tbaa !64
  %103 = icmp eq i16 %102, 11
  br i1 %103, label %104, label %109

104:                                              ; preds = %95
  %105 = load i16, ptr %94, align 2, !tbaa !74
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
  %111 = load ptr, ptr %96, align 8, !tbaa !30
  %112 = icmp eq ptr %111, null
  br i1 %112, label %113, label %95, !llvm.loop !75

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
  %120 = load i16, ptr %119, align 2, !tbaa !70
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
define internal fastcc void @sub_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #5 {
  %4 = load float, ptr %1, align 4, !tbaa !27
  %5 = load float, ptr %2, align 4, !tbaa !27
  %6 = fsub float %4, %5
  store float %6, ptr %0, align 4, !tbaa !27
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !27
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !27
  %11 = fsub float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !27
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !27
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !27
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !27
  ret void
}

; Function Attrs: optsize
declare void @mul_v3_m3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @mul_v3_m4v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add_v3_v3v3(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #5 {
  %4 = load float, ptr %1, align 4, !tbaa !27
  %5 = load float, ptr %2, align 4, !tbaa !27
  %6 = fadd float %4, %5
  store float %6, ptr %0, align 4, !tbaa !27
  %7 = getelementptr inbounds float, ptr %1, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !27
  %9 = getelementptr inbounds float, ptr %2, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !27
  %11 = fadd float %8, %10
  %12 = getelementptr inbounds float, ptr %0, i64 1
  store float %11, ptr %12, align 4, !tbaa !27
  %13 = getelementptr inbounds float, ptr %1, i64 2
  %14 = load float, ptr %13, align 4, !tbaa !27
  %15 = getelementptr inbounds float, ptr %2, i64 2
  %16 = load float, ptr %15, align 4, !tbaa !27
  %17 = fadd float %14, %16
  %18 = getelementptr inbounds float, ptr %0, i64 2
  store float %17, ptr %18, align 4, !tbaa !27
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @zero_v3(ptr nocapture noundef writeonly %0) unnamed_addr #0 {
  store <2 x float> zeroinitializer, ptr %0, align 4, !tbaa !27
  %2 = getelementptr inbounds float, ptr %0, i64 2
  store float 0.000000e+00, ptr %2, align 4, !tbaa !27
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @mul_v3_fl(ptr nocapture noundef %0, float noundef %1) unnamed_addr #5 {
  %3 = load <2 x float>, ptr %0, align 4, !tbaa !27
  %4 = insertelement <2 x float> poison, float %1, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = fmul <2 x float> %3, %5
  store <2 x float> %6, ptr %0, align 4, !tbaa !27
  %7 = getelementptr inbounds float, ptr %0, i64 2
  %8 = load float, ptr %7, align 4, !tbaa !27
  %9 = fmul float %8, %1
  store float %9, ptr %7, align 4, !tbaa !27
  ret void
}

; Function Attrs: optsize
declare void @mid_v3_v3v3(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_active_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @CTX_data_selected_objects(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @bundle_midpoint(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 {
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
  store float 0x46293E5940000000, ptr %16, align 8, !tbaa !27
  store <2 x float> <float 0x46293E5940000000, float 0x46293E5940000000>, ptr %4, align 8, !tbaa !27
  %17 = getelementptr inbounds [3 x float], ptr %5, i64 0, i64 2
  store float 0xC6293E5940000000, ptr %17, align 8, !tbaa !27
  store <2 x float> <float 0xC6293E5940000000, float 0xC6293E5940000000>, ptr %5, align 8, !tbaa !27
  %18 = getelementptr inbounds %struct.MovieClip, ptr %11, i64 0, i32 11, i32 8
  %19 = load ptr, ptr %18, align 8, !tbaa !30
  %20 = icmp eq ptr %19, null
  br i1 %20, label %71, label %21

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 5
  br label %23

23:                                               ; preds = %21, %64
  %24 = phi ptr [ %19, %21 ], [ %66, %64 ]
  %25 = phi i8 [ 0, %21 ], [ %65, %64 ]
  %26 = call ptr @BKE_tracking_object_get_tracks(ptr noundef nonnull %14, ptr noundef nonnull %24) #8
  %27 = load ptr, ptr %26, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #9
  %28 = getelementptr inbounds %struct.MovieTrackingObject, ptr %24, i64 0, i32 3
  %29 = load i32, ptr %28, align 8, !tbaa !77
  %30 = and i32 %29, 1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %23
  call void @copy_m4_m4(ptr noundef nonnull %9, ptr noundef nonnull %6) #8
  br label %36

33:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #9
  %34 = load i32, ptr %22, align 8, !tbaa !80
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
  %42 = load i32, ptr %41, align 8, !tbaa !98
  %43 = and i32 %42, 2
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %60, label %45

45:                                               ; preds = %38
  %46 = and i32 %42, 1
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %39, i64 0, i32 14
  %50 = load i32, ptr %49, align 4, !tbaa !100
  %51 = and i32 %50, 1
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.MovieTrackingTrack, ptr %39, i64 0, i32 15
  %55 = load i32, ptr %54, align 8, !tbaa !101
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
  %62 = load ptr, ptr %39, align 8, !tbaa !102
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %38, !llvm.loop !103

64:                                               ; preds = %60, %36
  %65 = phi i8 [ %25, %36 ], [ %61, %60 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #9
  %66 = load ptr, ptr %24, align 8, !tbaa !30
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %23, !llvm.loop !104

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
!18 = !{!19, !20, i64 848}
!19 = !{!"RegionView3D", !8, i64 0, !8, i64 64, !8, i64 128, !8, i64 192, !8, i64 256, !8, i64 320, !8, i64 384, !8, i64 448, !8, i64 544, !7, i64 640, !7, i64 648, !7, i64 656, !7, i64 664, !7, i64 672, !7, i64 680, !7, i64 688, !8, i64 696, !8, i64 760, !20, i64 776, !20, i64 780, !20, i64 784, !20, i64 788, !8, i64 792, !20, i64 804, !8, i64 808, !8, i64 809, !8, i64 810, !8, i64 811, !8, i64 812, !8, i64 813, !8, i64 816, !12, i64 824, !12, i64 826, !8, i64 828, !12, i64 844, !12, i64 846, !20, i64 848, !8, i64 852, !20, i64 864, !8, i64 868}
!20 = !{!"float", !8, i64 0}
!21 = !{!22, !23, i64 8}
!22 = !{!"TransVertStore", !7, i64 0, !23, i64 8, !23, i64 12}
!23 = !{!"int", !8, i64 0}
!24 = !{!22, !7, i64 0}
!25 = !{!26, !7, i64 0}
!26 = !{!"TransVert", !7, i64 0, !8, i64 8, !8, i64 20, !8, i64 32, !23, i64 44}
!27 = !{!20, !20, i64 0}
!28 = distinct !{!28, !29}
!29 = !{!"llvm.loop.mustprogress"}
!30 = !{!7, !7, i64 0}
!31 = !{!32, !7, i64 32}
!32 = !{!"CollectionPointerLink", !7, i64 0, !7, i64 8, !33, i64 16}
!33 = !{!"PointerRNA", !34, i64 0, !7, i64 8, !7, i64 16}
!34 = !{!"", !7, i64 0}
!35 = !{!36, !23, i64 432}
!36 = !{!"Object", !37, i64 0, !7, i64 120, !7, i64 128, !12, i64 136, !12, i64 138, !23, i64 140, !23, i64 144, !23, i64 148, !8, i64 152, !7, i64 216, !7, i64 224, !7, i64 232, !7, i64 240, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !7, i64 280, !7, i64 288, !7, i64 296, !7, i64 304, !38, i64 312, !7, i64 360, !10, i64 368, !10, i64 384, !10, i64 400, !10, i64 416, !23, i64 432, !23, i64 436, !7, i64 440, !7, i64 448, !23, i64 456, !23, i64 460, !8, i64 464, !8, i64 476, !8, i64 488, !8, i64 500, !8, i64 512, !8, i64 524, !8, i64 536, !8, i64 548, !8, i64 560, !8, i64 576, !8, i64 592, !8, i64 604, !20, i64 616, !20, i64 620, !8, i64 624, !8, i64 688, !8, i64 752, !8, i64 816, !8, i64 880, !23, i64 944, !12, i64 948, !12, i64 950, !12, i64 952, !12, i64 954, !12, i64 956, !12, i64 958, !12, i64 960, !12, i64 962, !12, i64 964, !8, i64 966, !8, i64 967, !23, i64 968, !23, i64 972, !23, i64 976, !23, i64 980, !23, i64 984, !20, i64 988, !20, i64 992, !20, i64 996, !20, i64 1000, !20, i64 1004, !20, i64 1008, !20, i64 1012, !20, i64 1016, !20, i64 1020, !20, i64 1024, !20, i64 1028, !20, i64 1032, !12, i64 1036, !12, i64 1038, !12, i64 1040, !8, i64 1042, !8, i64 1043, !12, i64 1044, !8, i64 1046, !8, i64 1047, !20, i64 1048, !20, i64 1052, !10, i64 1056, !10, i64 1072, !10, i64 1088, !10, i64 1104, !20, i64 1120, !12, i64 1124, !12, i64 1126, !8, i64 1128, !23, i64 1144, !23, i64 1148, !7, i64 1152, !8, i64 1160, !8, i64 1161, !12, i64 1162, !8, i64 1164, !10, i64 1176, !10, i64 1192, !10, i64 1208, !10, i64 1224, !7, i64 1240, !7, i64 1248, !7, i64 1256, !8, i64 1264, !8, i64 1265, !12, i64 1266, !20, i64 1268, !7, i64 1272, !7, i64 1280, !7, i64 1288, !7, i64 1296, !39, i64 1304, !39, i64 1312, !23, i64 1320, !23, i64 1324, !10, i64 1328, !10, i64 1344, !7, i64 1360, !7, i64 1368, !7, i64 1376, !8, i64 1384, !7, i64 1392, !10, i64 1400, !7, i64 1416}
!37 = !{!"ID", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !8, i64 32, !12, i64 98, !23, i64 100, !23, i64 104, !23, i64 108, !7, i64 112}
!38 = !{!"bAnimVizSettings", !23, i64 0, !23, i64 4, !23, i64 8, !23, i64 12, !12, i64 16, !12, i64 18, !12, i64 20, !12, i64 22, !12, i64 24, !12, i64 26, !12, i64 28, !12, i64 30, !23, i64 32, !23, i64 36, !23, i64 40, !23, i64 44}
!39 = !{!"long", !8, i64 0}
!40 = !{!36, !7, i64 296}
!41 = !{!36, !7, i64 288}
!42 = !{!43, !7, i64 120}
!43 = !{!"bPoseChannel", !7, i64 0, !7, i64 8, !7, i64 16, !10, i64 24, !8, i64 40, !12, i64 104, !12, i64 106, !12, i64 108, !12, i64 110, !8, i64 112, !8, i64 113, !8, i64 114, !7, i64 120, !7, i64 128, !7, i64 136, !10, i64 144, !10, i64 160, !7, i64 176, !7, i64 184, !7, i64 192, !8, i64 200, !8, i64 212, !8, i64 224, !8, i64 236, !8, i64 252, !20, i64 264, !12, i64 268, !12, i64 270, !8, i64 272, !8, i64 336, !8, i64 400, !8, i64 464, !8, i64 476, !8, i64 488, !8, i64 500, !8, i64 512, !20, i64 524, !20, i64 528, !20, i64 532, !7, i64 536}
!44 = !{!45, !23, i64 176}
!45 = !{!"Bone", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !10, i64 32, !8, i64 48, !20, i64 112, !8, i64 116, !8, i64 128, !8, i64 140, !23, i64 176, !8, i64 180, !8, i64 192, !8, i64 204, !20, i64 268, !20, i64 272, !20, i64 276, !20, i64 280, !20, i64 284, !20, i64 288, !20, i64 292, !20, i64 296, !20, i64 300, !20, i64 304, !8, i64 308, !23, i64 320, !12, i64 324, !8, i64 326}
!46 = !{!45, !23, i64 320}
!47 = !{!48, !23, i64 216}
!48 = !{!"bArmature", !37, i64 0, !7, i64 120, !10, i64 128, !10, i64 144, !7, i64 160, !7, i64 168, !7, i64 176, !7, i64 184, !23, i64 192, !23, i64 196, !23, i64 200, !23, i64 204, !12, i64 208, !12, i64 210, !23, i64 212, !23, i64 216, !23, i64 220, !12, i64 224, !12, i64 226, !12, i64 228, !12, i64 230, !23, i64 232, !23, i64 236, !23, i64 240, !23, i64 244, !23, i64 248, !23, i64 252}
!49 = !{!43, !12, i64 108}
!50 = distinct !{!50, !29}
!51 = !{!52, !12, i64 24}
!52 = !{!"bPose", !10, i64 0, !7, i64 16, !12, i64 24, !12, i64 26, !23, i64 28, !23, i64 32, !20, i64 36, !8, i64 40, !8, i64 52, !10, i64 64, !23, i64 80, !23, i64 84, !7, i64 88, !7, i64 96, !38, i64 104, !8, i64 152}
!53 = !{!36, !7, i64 216}
!54 = !{!36, !12, i64 954}
!55 = distinct !{!55, !29}
!56 = !{!6, !7, i64 88}
!57 = !{!58, !7, i64 112}
!58 = !{!"wmOperator", !7, i64 0, !7, i64 8, !8, i64 16, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !10, i64 128, !7, i64 144, !7, i64 152, !12, i64 160, !8, i64 162}
!59 = !{i8 0, i8 2}
!60 = distinct !{!60, !29}
!61 = distinct !{!61, !29}
!62 = distinct !{!62, !29}
!63 = distinct !{!63, !29}
!64 = !{!36, !12, i64 136}
!65 = !{!66, !7, i64 0}
!66 = !{!"BMEditMesh", !7, i64 0, !7, i64 8, !23, i64 16, !7, i64 24, !23, i64 32, !7, i64 40, !7, i64 48, !39, i64 56, !7, i64 64, !23, i64 72, !7, i64 80, !23, i64 88, !12, i64 92, !12, i64 94, !7, i64 96, !23, i64 104}
!67 = !{!26, !23, i64 44}
!68 = distinct !{!68, !29}
!69 = distinct !{!69, !29}
!70 = !{!71, !12, i64 238}
!71 = !{!"View3D", !7, i64 0, !7, i64 8, !10, i64 16, !23, i64 32, !20, i64 36, !8, i64 40, !8, i64 56, !20, i64 72, !20, i64 76, !8, i64 80, !8, i64 81, !23, i64 84, !23, i64 88, !12, i64 92, !12, i64 94, !7, i64 96, !7, i64 104, !72, i64 112, !10, i64 128, !7, i64 144, !7, i64 152, !8, i64 160, !23, i64 224, !23, i64 228, !12, i64 232, !12, i64 234, !12, i64 236, !12, i64 238, !12, i64 240, !12, i64 242, !20, i64 244, !20, i64 248, !20, i64 252, !20, i64 256, !8, i64 260, !8, i64 272, !12, i64 284, !12, i64 286, !12, i64 288, !8, i64 290, !8, i64 291, !8, i64 292, !8, i64 293, !8, i64 294, !10, i64 296, !10, i64 312, !10, i64 328, !8, i64 344, !8, i64 345, !8, i64 346, !8, i64 347, !7, i64 352, !7, i64 360, !7, i64 368}
!72 = !{!"rctf", !20, i64 0, !20, i64 4, !20, i64 8, !20, i64 12}
!73 = distinct !{!73, !29}
!74 = !{!71, !12, i64 242}
!75 = distinct !{!75, !29}
!76 = !{!10, !7, i64 0}
!77 = !{!78, !23, i64 80}
!78 = !{!"MovieTrackingObject", !7, i64 0, !7, i64 8, !8, i64 16, !23, i64 80, !20, i64 84, !10, i64 88, !10, i64 104, !79, i64 120, !23, i64 144, !23, i64 148}
!79 = !{!"MovieTrackingReconstruction", !23, i64 0, !20, i64 4, !23, i64 8, !23, i64 12, !7, i64 16}
!80 = !{!81, !23, i64 680}
!81 = !{!"Scene", !37, i64 0, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !10, i64 152, !7, i64 168, !7, i64 176, !8, i64 184, !8, i64 196, !8, i64 208, !8, i64 220, !23, i64 232, !23, i64 236, !23, i64 240, !12, i64 244, !8, i64 246, !8, i64 247, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !82, i64 280, !90, i64 4264, !10, i64 4296, !10, i64 4312, !7, i64 4328, !7, i64 4336, !7, i64 4344, !7, i64 4352, !7, i64 4360, !7, i64 4368, !12, i64 4376, !12, i64 4378, !23, i64 4380, !10, i64 4384, !91, i64 4400, !92, i64 4416, !95, i64 4600, !7, i64 4608, !96, i64 4616, !7, i64 4640, !39, i64 4648, !39, i64 4656, !84, i64 4664, !85, i64 4824, !97, i64 4888, !7, i64 4952}
!82 = !{!"RenderData", !83, i64 0, !7, i64 248, !7, i64 256, !86, i64 264, !87, i64 328, !23, i64 400, !23, i64 404, !23, i64 408, !20, i64 412, !23, i64 416, !23, i64 420, !23, i64 424, !23, i64 428, !12, i64 432, !12, i64 434, !20, i64 436, !20, i64 440, !20, i64 444, !20, i64 448, !20, i64 452, !12, i64 456, !12, i64 458, !12, i64 460, !12, i64 462, !12, i64 464, !12, i64 466, !23, i64 468, !12, i64 472, !12, i64 474, !12, i64 476, !12, i64 478, !12, i64 480, !12, i64 482, !23, i64 484, !23, i64 488, !12, i64 492, !12, i64 494, !23, i64 496, !23, i64 500, !12, i64 504, !12, i64 506, !12, i64 508, !12, i64 510, !12, i64 512, !8, i64 514, !8, i64 515, !23, i64 516, !23, i64 520, !23, i64 524, !12, i64 528, !12, i64 530, !12, i64 532, !12, i64 534, !12, i64 536, !12, i64 538, !12, i64 540, !12, i64 542, !72, i64 544, !72, i64 560, !88, i64 576, !10, i64 592, !12, i64 608, !12, i64 610, !20, i64 612, !20, i64 616, !20, i64 620, !20, i64 624, !23, i64 628, !20, i64 632, !20, i64 636, !20, i64 640, !20, i64 644, !12, i64 648, !12, i64 650, !12, i64 652, !12, i64 654, !12, i64 656, !12, i64 658, !20, i64 660, !20, i64 664, !12, i64 668, !12, i64 670, !20, i64 672, !20, i64 676, !8, i64 680, !23, i64 1704, !12, i64 1708, !12, i64 1710, !8, i64 1712, !8, i64 2480, !8, i64 2496, !8, i64 2512, !8, i64 2513, !8, i64 2514, !8, i64 2515, !23, i64 2520, !12, i64 2524, !12, i64 2526, !20, i64 2528, !20, i64 2532, !12, i64 2536, !12, i64 2538, !20, i64 2540, !12, i64 2544, !12, i64 2546, !23, i64 2548, !12, i64 2552, !12, i64 2554, !12, i64 2556, !12, i64 2558, !20, i64 2560, !20, i64 2564, !7, i64 2568, !23, i64 2576, !20, i64 2580, !8, i64 2584, !89, i64 2616, !23, i64 3976, !23, i64 3980}
!83 = !{!"ImageFormatData", !8, i64 0, !8, i64 1, !8, i64 2, !8, i64 3, !8, i64 4, !8, i64 5, !8, i64 6, !8, i64 7, !12, i64 8, !12, i64 10, !20, i64 12, !8, i64 16, !8, i64 17, !8, i64 18, !84, i64 24, !85, i64 184}
!84 = !{!"ColorManagedViewSettings", !23, i64 0, !23, i64 4, !8, i64 8, !8, i64 72, !20, i64 136, !20, i64 140, !7, i64 144, !7, i64 152}
!85 = !{!"ColorManagedDisplaySettings", !8, i64 0}
!86 = !{!"QuicktimeCodecSettings", !23, i64 0, !23, i64 4, !23, i64 8, !23, i64 12, !23, i64 16, !23, i64 20, !23, i64 24, !23, i64 28, !23, i64 32, !23, i64 36, !23, i64 40, !23, i64 44, !12, i64 48, !12, i64 50, !23, i64 52, !23, i64 56, !23, i64 60}
!87 = !{!"FFMpegCodecData", !23, i64 0, !23, i64 4, !23, i64 8, !23, i64 12, !23, i64 16, !23, i64 20, !23, i64 24, !23, i64 28, !20, i64 32, !23, i64 36, !23, i64 40, !23, i64 44, !23, i64 48, !23, i64 52, !23, i64 56, !23, i64 60, !7, i64 64}
!88 = !{!"rcti", !23, i64 0, !23, i64 4, !23, i64 8, !23, i64 12}
!89 = !{!"BakeData", !83, i64 0, !8, i64 248, !12, i64 1272, !12, i64 1274, !12, i64 1276, !12, i64 1278, !20, i64 1280, !20, i64 1284, !8, i64 1288, !8, i64 1291, !8, i64 1292, !8, i64 1293, !8, i64 1296}
!90 = !{!"AudioData", !23, i64 0, !20, i64 4, !20, i64 8, !20, i64 12, !23, i64 16, !12, i64 20, !12, i64 22, !20, i64 24, !20, i64 28}
!91 = !{!"GameFraming", !8, i64 0, !8, i64 12, !8, i64 13, !8, i64 14, !8, i64 15}
!92 = !{!"GameData", !91, i64 0, !12, i64 16, !12, i64 18, !12, i64 20, !12, i64 22, !12, i64 24, !12, i64 26, !12, i64 28, !12, i64 30, !12, i64 32, !8, i64 34, !93, i64 40, !12, i64 64, !12, i64 66, !20, i64 68, !94, i64 72, !20, i64 128, !20, i64 132, !23, i64 136, !12, i64 140, !12, i64 142, !12, i64 144, !12, i64 146, !12, i64 148, !12, i64 150, !12, i64 152, !12, i64 154, !12, i64 156, !12, i64 158, !12, i64 160, !12, i64 162, !20, i64 164, !20, i64 168, !20, i64 172, !20, i64 176, !20, i64 180}
!93 = !{!"GameDome", !12, i64 0, !12, i64 2, !12, i64 4, !12, i64 6, !20, i64 8, !20, i64 12, !7, i64 16}
!94 = !{!"RecastData", !20, i64 0, !20, i64 4, !20, i64 8, !20, i64 12, !20, i64 16, !20, i64 20, !20, i64 24, !20, i64 28, !20, i64 32, !20, i64 36, !23, i64 40, !20, i64 44, !20, i64 48, !12, i64 52, !12, i64 54}
!95 = !{!"UnitSettings", !20, i64 0, !8, i64 4, !8, i64 5, !12, i64 6}
!96 = !{!"PhysicsSettings", !8, i64 0, !23, i64 12, !23, i64 16, !23, i64 20}
!97 = !{!"ColorManagedColorspaceSettings", !8, i64 0}
!98 = !{!99, !23, i64 152}
!99 = !{!"MovieTrackingTrack", !7, i64 0, !7, i64 8, !8, i64 16, !8, i64 80, !8, i64 88, !8, i64 96, !8, i64 104, !8, i64 112, !23, i64 120, !23, i64 124, !7, i64 128, !8, i64 136, !20, i64 148, !23, i64 152, !23, i64 156, !23, i64 160, !8, i64 164, !12, i64 176, !12, i64 178, !12, i64 180, !12, i64 182, !23, i64 184, !20, i64 188, !7, i64 192, !20, i64 200, !20, i64 204}
!100 = !{!99, !23, i64 156}
!101 = !{!99, !23, i64 160}
!102 = !{!99, !7, i64 0}
!103 = distinct !{!103, !29}
!104 = distinct !{!104, !29}

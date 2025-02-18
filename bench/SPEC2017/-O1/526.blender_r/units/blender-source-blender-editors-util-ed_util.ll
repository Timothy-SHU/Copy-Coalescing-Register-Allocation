; ModuleID = 'blender/source/blender/editors/util/ed_util.c'
source_filename = "blender/source/blender/editors/util/ed_util.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
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
%struct.Base = type { ptr, ptr, i32, i32, i32, i16, i16, ptr }
%struct.ReportList = type { %struct.ListBase, i32, i32, i32, i32, ptr }
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.Mesh = type { %struct.ID, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, %struct.CustomData, i32, i32, i32, i32, i32, i32, i32, [3 x float], [3 x float], [3 x float], i32, i16, i16, float, i32, i8, i8, i8, i8, i8, i8, i16, ptr }
%struct.CustomData = type { ptr, [41 x i32], i32, i32, i32, ptr, ptr }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.wmWindow = type { ptr, ptr, ptr, ptr, ptr, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i16, i16, ptr, ptr, ptr, i32, i32, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }

@MEM_freeN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [12 x i8] c"Unpack File\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"Remove Pack\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"method\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@G = external local_unnamed_addr global %struct.Global, align 8
@.str.4 = private unnamed_addr constant [8 x i8] c"//%s/%s\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"Create %s\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"Use %s (identical)\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"Use %s (differs)\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"Overwrite %s\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @ED_editors_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_wm_manager(ptr noundef %0) #7
  %3 = tail call ptr @CTX_data_main(ptr noundef %0) #7
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #7
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.Base, ptr %8, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !62
  br label %13

13:                                               ; preds = %1, %6, %10
  %14 = phi ptr [ %12, %10 ], [ null, %6 ], [ null, %1 ]
  %15 = tail call ptr @CTX_wm_reports(ptr noundef %0) #7
  %16 = getelementptr inbounds %struct.ReportList, ptr %15, i64 0, i32 3
  %17 = load i32, ptr %16, align 8, !tbaa !64
  %18 = and i32 %17, -3
  store i32 %18, ptr %16, align 8, !tbaa !64
  %19 = getelementptr inbounds %struct.Main, ptr %3, i64 0, i32 13
  %20 = load ptr, ptr %19, align 8, !tbaa !66
  %21 = icmp eq ptr %20, null
  br i1 %21, label %46, label %22

22:                                               ; preds = %13, %43
  %23 = phi ptr [ %44, %43 ], [ %20, %13 ]
  %24 = getelementptr inbounds %struct.Object, ptr %23, i64 0, i32 27
  %25 = load i32, ptr %24, align 8, !tbaa !67
  %26 = and i32 %25, -65
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %43, label %28

28:                                               ; preds = %22
  store i32 0, ptr %24, align 8, !tbaa !67
  %29 = getelementptr inbounds %struct.Object, ptr %23, i64 0, i32 19
  %30 = load ptr, ptr %29, align 8, !tbaa !70
  %31 = icmp eq ptr %23, %14
  br i1 %31, label %32, label %43

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.ID, ptr %23, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !71
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %43

36:                                               ; preds = %32
  %37 = icmp eq ptr %30, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %36
  %39 = getelementptr inbounds %struct.ID, ptr %30, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !72
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %38, %36
  tail call void @ED_object_toggle_modes(ptr noundef %0, i32 noundef %25) #7
  br label %43

43:                                               ; preds = %28, %32, %38, %42, %22
  %44 = load ptr, ptr %23, align 8, !tbaa !66
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %22, !llvm.loop !73

46:                                               ; preds = %43, %13
  br i1 %5, label %50, label %47

47:                                               ; preds = %46
  %48 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 20
  %49 = load ptr, ptr %48, align 8, !tbaa !76
  tail call void @ED_space_image_paint_update(ptr noundef %2, ptr noundef %49) #7
  br label %50

50:                                               ; preds = %47, %46
  store i32 %17, ptr %16, align 8, !tbaa !64
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @CTX_wm_manager(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_reports(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare void @ED_object_toggle_modes(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @ED_space_image_paint_update(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ED_editors_exit(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_data_main(ptr noundef %0) #7
  %3 = icmp eq ptr %2, null
  br i1 %3, label %34, label %4

4:                                                ; preds = %1
  tail call void @undo_editmode_clear() #7
  tail call void @ED_undo_paint_free() #7
  %5 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %6 = load ptr, ptr %5, align 8, !tbaa !66
  %7 = icmp eq ptr %6, null
  br i1 %7, label %31, label %8

8:                                                ; preds = %4, %28
  %9 = phi ptr [ %29, %28 ], [ %6, %4 ]
  %10 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !77
  %12 = icmp eq ptr %11, null
  br i1 %12, label %28, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.Object, ptr %11, i64 0, i32 3
  %15 = load i16, ptr %14, align 8, !tbaa !78
  switch i16 %15, label %28 [
    i16 1, label %16
    i16 25, label %25
  ]

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.Object, ptr %11, i64 0, i32 19
  %18 = load ptr, ptr %17, align 8, !tbaa !70
  %19 = getelementptr inbounds %struct.Mesh, ptr %18, i64 0, i32 20
  %20 = load ptr, ptr %19, align 8, !tbaa !79
  %21 = icmp eq ptr %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %16
  tail call void @EDBM_mesh_free(ptr noundef nonnull %20) #7
  %23 = load ptr, ptr @MEM_freeN, align 8, !tbaa !66
  %24 = load ptr, ptr %19, align 8, !tbaa !79
  tail call void %23(ptr noundef %24) #7
  store ptr null, ptr %19, align 8, !tbaa !79
  br label %28

25:                                               ; preds = %13
  %26 = getelementptr inbounds %struct.Object, ptr %11, i64 0, i32 19
  %27 = load ptr, ptr %26, align 8, !tbaa !70
  tail call void @ED_armature_edit_free(ptr noundef %27) #7
  br label %28

28:                                               ; preds = %25, %22, %16, %13, %8
  %29 = load ptr, ptr %9, align 8, !tbaa !66
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %8, !llvm.loop !82

31:                                               ; preds = %28, %4
  %32 = tail call i32 @ED_mesh_mirror_spatial_table(ptr noundef null, ptr noundef null, ptr noundef null, i8 noundef zeroext 101) #7
  %33 = tail call i32 @ED_mesh_mirror_topo_table(ptr noundef null, i8 noundef zeroext 101) #7
  br label %34

34:                                               ; preds = %1, %31
  ret void
}

declare void @undo_editmode_clear() local_unnamed_addr #2

declare void @ED_undo_paint_free() local_unnamed_addr #2

declare void @EDBM_mesh_free(ptr noundef) local_unnamed_addr #2

declare void @ED_armature_edit_free(ptr noundef) local_unnamed_addr #2

declare i32 @ED_mesh_mirror_spatial_table(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare i32 @ED_mesh_mirror_topo_table(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @ED_editors_flush_edits(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = tail call ptr @CTX_data_main(ptr noundef %0) #7
  %4 = getelementptr inbounds %struct.Main, ptr %3, i64 0, i32 13
  %5 = load ptr, ptr %4, align 8, !tbaa !66
  %6 = icmp eq ptr %5, null
  br i1 %6, label %28, label %7

7:                                                ; preds = %2
  %8 = icmp eq i8 %1, 0
  br label %9

9:                                                ; preds = %7, %24
  %10 = phi ptr [ %5, %7 ], [ %26, %24 ]
  %11 = phi i8 [ 0, %7 ], [ %25, %24 ]
  %12 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 27
  %13 = load i32, ptr %12, align 8, !tbaa !67
  %14 = and i32 %13, 2
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %9
  tail call void @multires_force_update(ptr noundef nonnull %10) #7
  br i1 %8, label %18, label %17

17:                                               ; preds = %16
  tail call void @BKE_sculptsession_bm_to_me_for_render(ptr noundef nonnull %10) #7
  br label %24

18:                                               ; preds = %16
  tail call void @BKE_sculptsession_bm_to_me(ptr noundef nonnull %10, i8 noundef zeroext 0) #7
  br label %24

19:                                               ; preds = %9
  %20 = and i32 %13, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %19
  %23 = tail call zeroext i8 @ED_object_editmode_load(ptr noundef nonnull %10) #7
  br label %24

24:                                               ; preds = %18, %17, %22, %19
  %25 = phi i8 [ 1, %17 ], [ 1, %18 ], [ 1, %22 ], [ %11, %19 ]
  %26 = load ptr, ptr %10, align 8, !tbaa !66
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %9, !llvm.loop !83

28:                                               ; preds = %24, %2
  %29 = phi i8 [ 0, %2 ], [ %25, %24 ]
  ret i8 %29
}

declare void @multires_force_update(ptr noundef) local_unnamed_addr #2

declare void @BKE_sculptsession_bm_to_me_for_render(ptr noundef) local_unnamed_addr #2

declare void @BKE_sculptsession_bm_to_me(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare zeroext i8 @ED_object_editmode_load(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @apply_keyb_grid(i32 noundef %0, i32 noundef %1, ptr nocapture noundef %2, float noundef %3, float noundef %4, float noundef %5, i32 noundef %6) local_unnamed_addr #3 {
  %8 = icmp eq i32 %6, 0
  %9 = icmp eq i32 %1, 0
  %10 = icmp ne i32 %1, 0
  %11 = select i1 %8, i1 %10, i1 %9
  %12 = icmp ne i32 %0, 0
  %13 = and i1 %12, %11
  br i1 %13, label %14, label %16

14:                                               ; preds = %7
  %15 = fcmp une float %5, 0.000000e+00
  br i1 %15, label %21, label %28

16:                                               ; preds = %7
  br i1 %11, label %17, label %19

17:                                               ; preds = %16
  %18 = fcmp une float %4, 0.000000e+00
  br i1 %18, label %21, label %28

19:                                               ; preds = %16
  %20 = fcmp une float %3, 0.000000e+00
  br i1 %20, label %21, label %28

21:                                               ; preds = %19, %17, %14
  %22 = phi float [ %5, %14 ], [ %4, %17 ], [ %3, %19 ]
  %23 = load float, ptr %2, align 4, !tbaa !84
  %24 = fdiv float %23, %22
  %25 = fadd float %24, 5.000000e-01
  %26 = tail call float @llvm.floor.f32(float %25)
  %27 = fmul float %26, %22
  store float %27, ptr %2, align 4, !tbaa !84
  br label %28

28:                                               ; preds = %21, %17, %19, %14
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #4

; Function Attrs: nounwind uwtable
define dso_local void @unpack_menu(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = alloca %struct.PointerRNA, align 8
  %8 = alloca [1124 x i8], align 16
  %9 = alloca [1792 x i8], align 16
  %10 = alloca [1024 x i8], align 16
  %11 = alloca %struct.PointerRNA, align 8
  %12 = alloca %struct.PointerRNA, align 8
  %13 = alloca %struct.PointerRNA, align 8
  %14 = alloca %struct.PointerRNA, align 8
  %15 = alloca %struct.PointerRNA, align 8
  %16 = alloca %struct.PointerRNA, align 8
  %17 = alloca %struct.PointerRNA, align 8
  %18 = alloca %struct.PointerRNA, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #7
  call void @llvm.lifetime.start.p0(i64 1124, ptr nonnull %8) #7
  %19 = tail call ptr @WM_operatortype_find(ptr noundef %1, i8 noundef zeroext 1) #7
  %20 = tail call ptr @uiPupMenuBegin(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef 0) #7
  %21 = tail call ptr @uiPupMenuLayout(ptr noundef %20) #7
  call void @uiItemFullO_ptr(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %7, ptr noundef %21, ptr noundef %19, ptr noundef nonnull @.str.1, i32 noundef 0, ptr noundef null, i32 noundef 6, i32 noundef 1) #7
  call void @RNA_enum_set(ptr noundef nonnull %7, ptr noundef nonnull @.str.2, i32 noundef 8) #7
  call void @RNA_string_set(ptr noundef nonnull %7, ptr noundef nonnull @.str.3, ptr noundef %2) #7
  %22 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 3), align 8, !tbaa !85
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %40, label %24

24:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 1792, ptr nonnull %9) #7
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %10) #7
  call void @BLI_split_file_part(ptr noundef %3, ptr noundef nonnull %10, i64 noundef 1024) #7
  %25 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %9, i64 noundef 1792, ptr noundef nonnull @.str.4, ptr noundef %4, ptr noundef nonnull %10) #7
  %26 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) %9) #8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %39, label %28

28:                                               ; preds = %24
  %29 = call i32 @checkPackedFile(ptr noundef nonnull %9, ptr noundef %5) #7
  switch i32 %29, label %39 [
    i32 2, label %30
    i32 0, label %32
    i32 1, label %34
  ]

30:                                               ; preds = %28
  %31 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %8, i64 noundef 1124, ptr noundef nonnull @.str.5, ptr noundef nonnull %9) #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #7
  call void @uiItemFullO_ptr(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %11, ptr noundef %21, ptr noundef %19, ptr noundef nonnull %8, i32 noundef 0, ptr noundef null, i32 noundef 6, i32 noundef 1) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %11, i64 24, i1 false), !tbaa.struct !87
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #7
  br label %37

32:                                               ; preds = %28
  %33 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %8, i64 noundef 1124, ptr noundef nonnull @.str.6, ptr noundef nonnull %9) #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %12) #7
  call void @uiItemFullO_ptr(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %12, ptr noundef %21, ptr noundef %19, ptr noundef nonnull %8, i32 noundef 0, ptr noundef null, i32 noundef 6, i32 noundef 1) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %12, i64 24, i1 false), !tbaa.struct !87
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12) #7
  br label %37

34:                                               ; preds = %28
  %35 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %8, i64 noundef 1124, ptr noundef nonnull @.str.7, ptr noundef nonnull %9) #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %13) #7
  call void @uiItemFullO_ptr(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %13, ptr noundef %21, ptr noundef %19, ptr noundef nonnull %8, i32 noundef 0, ptr noundef null, i32 noundef 6, i32 noundef 1) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %13, i64 24, i1 false), !tbaa.struct !87
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %13) #7
  call void @RNA_enum_set(ptr noundef nonnull %7, ptr noundef nonnull @.str.2, i32 noundef 5) #7
  call void @RNA_string_set(ptr noundef nonnull %7, ptr noundef nonnull @.str.3, ptr noundef %2) #7
  %36 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %8, i64 noundef 1124, ptr noundef nonnull @.str.8, ptr noundef nonnull %9) #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %14) #7
  call void @uiItemFullO_ptr(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %14, ptr noundef %21, ptr noundef %19, ptr noundef nonnull %8, i32 noundef 0, ptr noundef null, i32 noundef 6, i32 noundef 1) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %14, i64 24, i1 false), !tbaa.struct !87
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %14) #7
  br label %37

37:                                               ; preds = %34, %32, %30
  %38 = phi i32 [ 4, %30 ], [ 5, %32 ], [ 4, %34 ]
  call void @RNA_enum_set(ptr noundef nonnull %7, ptr noundef nonnull @.str.2, i32 noundef %38) #7
  call void @RNA_string_set(ptr noundef nonnull %7, ptr noundef nonnull @.str.3, ptr noundef %2) #7
  br label %39

39:                                               ; preds = %37, %28, %24
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %10) #7
  call void @llvm.lifetime.end.p0(i64 1792, ptr nonnull %9) #7
  br label %40

40:                                               ; preds = %39, %6
  %41 = call i32 @checkPackedFile(ptr noundef %3, ptr noundef %5) #7
  switch i32 %41, label %51 [
    i32 2, label %42
    i32 0, label %44
    i32 1, label %46
  ]

42:                                               ; preds = %40
  %43 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %8, i64 noundef 1124, ptr noundef nonnull @.str.5, ptr noundef %3) #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %15) #7
  call void @uiItemFullO_ptr(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %15, ptr noundef %21, ptr noundef %19, ptr noundef nonnull %8, i32 noundef 0, ptr noundef null, i32 noundef 6, i32 noundef 1) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %15, i64 24, i1 false), !tbaa.struct !87
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %15) #7
  br label %49

44:                                               ; preds = %40
  %45 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %8, i64 noundef 1124, ptr noundef nonnull @.str.6, ptr noundef %3) #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %16) #7
  call void @uiItemFullO_ptr(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %16, ptr noundef %21, ptr noundef %19, ptr noundef nonnull %8, i32 noundef 0, ptr noundef null, i32 noundef 6, i32 noundef 1) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %16, i64 24, i1 false), !tbaa.struct !87
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %16) #7
  br label %49

46:                                               ; preds = %40
  %47 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %8, i64 noundef 1124, ptr noundef nonnull @.str.7, ptr noundef %3) #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %17) #7
  call void @uiItemFullO_ptr(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %17, ptr noundef %21, ptr noundef %19, ptr noundef nonnull %8, i32 noundef 0, ptr noundef null, i32 noundef 6, i32 noundef 1) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %17, i64 24, i1 false), !tbaa.struct !87
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %17) #7
  call void @RNA_enum_set(ptr noundef nonnull %7, ptr noundef nonnull @.str.2, i32 noundef 6) #7
  call void @RNA_string_set(ptr noundef nonnull %7, ptr noundef nonnull @.str.3, ptr noundef %2) #7
  %48 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %8, i64 noundef 1124, ptr noundef nonnull @.str.8, ptr noundef %3) #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %18) #7
  call void @uiItemFullO_ptr(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %18, ptr noundef %21, ptr noundef %19, ptr noundef nonnull %8, i32 noundef 0, ptr noundef null, i32 noundef 6, i32 noundef 1) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %18, i64 24, i1 false), !tbaa.struct !87
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %18) #7
  br label %49

49:                                               ; preds = %42, %44, %46
  %50 = phi i32 [ 3, %46 ], [ 6, %44 ], [ 3, %42 ]
  call void @RNA_enum_set(ptr noundef nonnull %7, ptr noundef nonnull @.str.2, i32 noundef %50) #7
  call void @RNA_string_set(ptr noundef nonnull %7, ptr noundef nonnull @.str.3, ptr noundef %2) #7
  br label %51

51:                                               ; preds = %49, %40
  call void @uiPupMenuEnd(ptr noundef %0, ptr noundef %20) #7
  call void @llvm.lifetime.end.p0(i64 1124, ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #7
  ret void
}

declare ptr @WM_operatortype_find(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @uiPupMenuBegin(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @uiPupMenuLayout(ptr noundef) local_unnamed_addr #2

declare void @uiItemFullO_ptr(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

declare void @RNA_enum_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @RNA_string_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_split_file_part(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

declare i32 @checkPackedFile(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @uiPupMenuEnd(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ED_region_draw_mouse_line_cb(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [2 x i32], align 4
  %5 = tail call ptr @CTX_wm_window(ptr noundef %0) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #7
  %6 = getelementptr inbounds %struct.wmWindow, ptr %5, i64 0, i32 21
  %7 = load ptr, ptr %6, align 8, !tbaa !88
  %8 = getelementptr inbounds %struct.wmEvent, ptr %7, i64 0, i32 4
  %9 = load i32, ptr %8, align 4, !tbaa !90
  %10 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !93
  %12 = sub nsw i32 %9, %11
  store i32 %12, ptr %4, align 4, !tbaa !96
  %13 = getelementptr inbounds i32, ptr %4, i64 1
  %14 = getelementptr inbounds %struct.wmEvent, ptr %7, i64 0, i32 5
  %15 = load i32, ptr %14, align 8, !tbaa !97
  %16 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !98
  %18 = sub nsw i32 %15, %17
  store i32 %18, ptr %13, align 4, !tbaa !96
  tail call void @UI_ThemeColor(i32 noundef 192) #7
  tail call void @setlinestyle(i32 noundef 3) #7
  tail call void @glBegin(i32 noundef 3) #7
  call void @glVertex2iv(ptr noundef nonnull %4) #7
  call void @glVertex2fv(ptr noundef %2) #7
  call void @glEnd() #7
  call void @setlinestyle(i32 noundef 0) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #7
  ret void
}

declare ptr @CTX_wm_window(ptr noundef) local_unnamed_addr #2

declare void @UI_ThemeColor(i32 noundef) local_unnamed_addr #2

declare void @setlinestyle(i32 noundef) local_unnamed_addr #2

declare void @glBegin(i32 noundef) local_unnamed_addr #2

declare void @glVertex2iv(ptr noundef) local_unnamed_addr #2

declare void @glVertex2fv(ptr noundef) local_unnamed_addr #2

declare void @glEnd() local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(read) }

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
!34 = !{!35, !37, i64 168}
!35 = !{!"Scene", !36, i64 0, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !42, i64 152, !37, i64 168, !37, i64 176, !38, i64 184, !38, i64 196, !38, i64 208, !38, i64 220, !41, i64 232, !41, i64 236, !41, i64 240, !40, i64 244, !38, i64 246, !38, i64 247, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !43, i64 280, !53, i64 4264, !42, i64 4296, !42, i64 4312, !37, i64 4328, !37, i64 4336, !37, i64 4344, !37, i64 4352, !37, i64 4360, !37, i64 4368, !40, i64 4376, !40, i64 4378, !41, i64 4380, !42, i64 4384, !54, i64 4400, !55, i64 4416, !58, i64 4600, !37, i64 4608, !59, i64 4616, !37, i64 4640, !60, i64 4648, !60, i64 4656, !46, i64 4664, !47, i64 4824, !61, i64 4888, !37, i64 4952}
!36 = !{!"ID", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !38, i64 32, !40, i64 98, !41, i64 100, !41, i64 104, !41, i64 108, !37, i64 112}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"short", !38, i64 0}
!41 = !{!"int", !38, i64 0}
!42 = !{!"ListBase", !37, i64 0, !37, i64 8}
!43 = !{!"RenderData", !44, i64 0, !37, i64 248, !37, i64 256, !48, i64 264, !49, i64 328, !41, i64 400, !41, i64 404, !41, i64 408, !45, i64 412, !41, i64 416, !41, i64 420, !41, i64 424, !41, i64 428, !40, i64 432, !40, i64 434, !45, i64 436, !45, i64 440, !45, i64 444, !45, i64 448, !45, i64 452, !40, i64 456, !40, i64 458, !40, i64 460, !40, i64 462, !40, i64 464, !40, i64 466, !41, i64 468, !40, i64 472, !40, i64 474, !40, i64 476, !40, i64 478, !40, i64 480, !40, i64 482, !41, i64 484, !41, i64 488, !40, i64 492, !40, i64 494, !41, i64 496, !41, i64 500, !40, i64 504, !40, i64 506, !40, i64 508, !40, i64 510, !40, i64 512, !38, i64 514, !38, i64 515, !41, i64 516, !41, i64 520, !41, i64 524, !40, i64 528, !40, i64 530, !40, i64 532, !40, i64 534, !40, i64 536, !40, i64 538, !40, i64 540, !40, i64 542, !50, i64 544, !50, i64 560, !51, i64 576, !42, i64 592, !40, i64 608, !40, i64 610, !45, i64 612, !45, i64 616, !45, i64 620, !45, i64 624, !41, i64 628, !45, i64 632, !45, i64 636, !45, i64 640, !45, i64 644, !40, i64 648, !40, i64 650, !40, i64 652, !40, i64 654, !40, i64 656, !40, i64 658, !45, i64 660, !45, i64 664, !40, i64 668, !40, i64 670, !45, i64 672, !45, i64 676, !38, i64 680, !41, i64 1704, !40, i64 1708, !40, i64 1710, !38, i64 1712, !38, i64 2480, !38, i64 2496, !38, i64 2512, !38, i64 2513, !38, i64 2514, !38, i64 2515, !41, i64 2520, !40, i64 2524, !40, i64 2526, !45, i64 2528, !45, i64 2532, !40, i64 2536, !40, i64 2538, !45, i64 2540, !40, i64 2544, !40, i64 2546, !41, i64 2548, !40, i64 2552, !40, i64 2554, !40, i64 2556, !40, i64 2558, !45, i64 2560, !45, i64 2564, !37, i64 2568, !41, i64 2576, !45, i64 2580, !38, i64 2584, !52, i64 2616, !41, i64 3976, !41, i64 3980}
!44 = !{!"ImageFormatData", !38, i64 0, !38, i64 1, !38, i64 2, !38, i64 3, !38, i64 4, !38, i64 5, !38, i64 6, !38, i64 7, !40, i64 8, !40, i64 10, !45, i64 12, !38, i64 16, !38, i64 17, !38, i64 18, !46, i64 24, !47, i64 184}
!45 = !{!"float", !38, i64 0}
!46 = !{!"ColorManagedViewSettings", !41, i64 0, !41, i64 4, !38, i64 8, !38, i64 72, !45, i64 136, !45, i64 140, !37, i64 144, !37, i64 152}
!47 = !{!"ColorManagedDisplaySettings", !38, i64 0}
!48 = !{!"QuicktimeCodecSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !40, i64 48, !40, i64 50, !41, i64 52, !41, i64 56, !41, i64 60}
!49 = !{!"FFMpegCodecData", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !45, i64 32, !41, i64 36, !41, i64 40, !41, i64 44, !41, i64 48, !41, i64 52, !41, i64 56, !41, i64 60, !37, i64 64}
!50 = !{!"rctf", !45, i64 0, !45, i64 4, !45, i64 8, !45, i64 12}
!51 = !{!"rcti", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12}
!52 = !{!"BakeData", !44, i64 0, !38, i64 248, !40, i64 1272, !40, i64 1274, !40, i64 1276, !40, i64 1278, !45, i64 1280, !45, i64 1284, !38, i64 1288, !38, i64 1291, !38, i64 1292, !38, i64 1293, !38, i64 1296}
!53 = !{!"AudioData", !41, i64 0, !45, i64 4, !45, i64 8, !45, i64 12, !41, i64 16, !40, i64 20, !40, i64 22, !45, i64 24, !45, i64 28}
!54 = !{!"GameFraming", !38, i64 0, !38, i64 12, !38, i64 13, !38, i64 14, !38, i64 15}
!55 = !{!"GameData", !54, i64 0, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !40, i64 32, !38, i64 34, !56, i64 40, !40, i64 64, !40, i64 66, !45, i64 68, !57, i64 72, !45, i64 128, !45, i64 132, !41, i64 136, !40, i64 140, !40, i64 142, !40, i64 144, !40, i64 146, !40, i64 148, !40, i64 150, !40, i64 152, !40, i64 154, !40, i64 156, !40, i64 158, !40, i64 160, !40, i64 162, !45, i64 164, !45, i64 168, !45, i64 172, !45, i64 176, !45, i64 180}
!56 = !{!"GameDome", !40, i64 0, !40, i64 2, !40, i64 4, !40, i64 6, !45, i64 8, !45, i64 12, !37, i64 16}
!57 = !{!"RecastData", !45, i64 0, !45, i64 4, !45, i64 8, !45, i64 12, !45, i64 16, !45, i64 20, !45, i64 24, !45, i64 28, !45, i64 32, !45, i64 36, !41, i64 40, !45, i64 44, !45, i64 48, !40, i64 52, !40, i64 54}
!58 = !{!"UnitSettings", !45, i64 0, !38, i64 4, !38, i64 5, !40, i64 6}
!59 = !{!"PhysicsSettings", !38, i64 0, !41, i64 12, !41, i64 16, !41, i64 20}
!60 = !{!"long", !38, i64 0}
!61 = !{!"ColorManagedColorspaceSettings", !38, i64 0}
!62 = !{!63, !37, i64 32}
!63 = !{!"Base", !37, i64 0, !37, i64 8, !41, i64 16, !41, i64 20, !41, i64 24, !40, i64 28, !40, i64 30, !37, i64 32}
!64 = !{!65, !41, i64 24}
!65 = !{!"ReportList", !42, i64 0, !41, i64 16, !41, i64 20, !41, i64 24, !41, i64 28, !37, i64 32}
!66 = !{!37, !37, i64 0}
!67 = !{!68, !41, i64 432}
!68 = !{!"Object", !36, i64 0, !37, i64 120, !37, i64 128, !40, i64 136, !40, i64 138, !41, i64 140, !41, i64 144, !41, i64 148, !38, i64 152, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !37, i64 280, !37, i64 288, !37, i64 296, !37, i64 304, !69, i64 312, !37, i64 360, !42, i64 368, !42, i64 384, !42, i64 400, !42, i64 416, !41, i64 432, !41, i64 436, !37, i64 440, !37, i64 448, !41, i64 456, !41, i64 460, !38, i64 464, !38, i64 476, !38, i64 488, !38, i64 500, !38, i64 512, !38, i64 524, !38, i64 536, !38, i64 548, !38, i64 560, !38, i64 576, !38, i64 592, !38, i64 604, !45, i64 616, !45, i64 620, !38, i64 624, !38, i64 688, !38, i64 752, !38, i64 816, !38, i64 880, !41, i64 944, !40, i64 948, !40, i64 950, !40, i64 952, !40, i64 954, !40, i64 956, !40, i64 958, !40, i64 960, !40, i64 962, !40, i64 964, !38, i64 966, !38, i64 967, !41, i64 968, !41, i64 972, !41, i64 976, !41, i64 980, !41, i64 984, !45, i64 988, !45, i64 992, !45, i64 996, !45, i64 1000, !45, i64 1004, !45, i64 1008, !45, i64 1012, !45, i64 1016, !45, i64 1020, !45, i64 1024, !45, i64 1028, !45, i64 1032, !40, i64 1036, !40, i64 1038, !40, i64 1040, !38, i64 1042, !38, i64 1043, !40, i64 1044, !38, i64 1046, !38, i64 1047, !45, i64 1048, !45, i64 1052, !42, i64 1056, !42, i64 1072, !42, i64 1088, !42, i64 1104, !45, i64 1120, !40, i64 1124, !40, i64 1126, !38, i64 1128, !41, i64 1144, !41, i64 1148, !37, i64 1152, !38, i64 1160, !38, i64 1161, !40, i64 1162, !38, i64 1164, !42, i64 1176, !42, i64 1192, !42, i64 1208, !42, i64 1224, !37, i64 1240, !37, i64 1248, !37, i64 1256, !38, i64 1264, !38, i64 1265, !40, i64 1266, !45, i64 1268, !37, i64 1272, !37, i64 1280, !37, i64 1288, !37, i64 1296, !60, i64 1304, !60, i64 1312, !41, i64 1320, !41, i64 1324, !42, i64 1328, !42, i64 1344, !37, i64 1360, !37, i64 1368, !37, i64 1376, !38, i64 1384, !37, i64 1392, !42, i64 1400, !37, i64 1416}
!69 = !{!"bAnimVizSettings", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !40, i64 16, !40, i64 18, !40, i64 20, !40, i64 22, !40, i64 24, !40, i64 26, !40, i64 28, !40, i64 30, !41, i64 32, !41, i64 36, !41, i64 40, !41, i64 44}
!70 = !{!68, !37, i64 296}
!71 = !{!68, !37, i64 24}
!72 = !{!36, !37, i64 24}
!73 = distinct !{!73, !74, !75}
!74 = !{!"llvm.loop.mustprogress"}
!75 = !{!"llvm.loop.unroll.disable"}
!76 = !{!35, !37, i64 264}
!77 = !{!35, !37, i64 176}
!78 = !{!68, !40, i64 136}
!79 = !{!80, !37, i64 272}
!80 = !{!"Mesh", !36, i64 0, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !37, i64 152, !37, i64 160, !37, i64 168, !37, i64 176, !37, i64 184, !37, i64 192, !37, i64 200, !37, i64 208, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !37, i64 248, !37, i64 256, !37, i64 264, !37, i64 272, !81, i64 280, !81, i64 480, !81, i64 680, !81, i64 880, !81, i64 1080, !41, i64 1280, !41, i64 1284, !41, i64 1288, !41, i64 1292, !41, i64 1296, !41, i64 1300, !41, i64 1304, !38, i64 1308, !38, i64 1320, !38, i64 1332, !41, i64 1344, !40, i64 1348, !40, i64 1350, !45, i64 1352, !41, i64 1356, !38, i64 1360, !38, i64 1361, !38, i64 1362, !38, i64 1363, !38, i64 1364, !38, i64 1365, !40, i64 1366, !37, i64 1368}
!81 = !{!"CustomData", !37, i64 0, !38, i64 8, !41, i64 172, !41, i64 176, !41, i64 180, !37, i64 184, !37, i64 192}
!82 = distinct !{!82, !74, !75}
!83 = distinct !{!83, !74, !75}
!84 = !{!45, !45, i64 0}
!85 = !{!86, !38, i64 2056}
!86 = !{!"Global", !37, i64 0, !38, i64 8, !38, i64 1032, !38, i64 2056, !38, i64 2057, !38, i64 2058, !42, i64 2064, !38, i64 2080, !38, i64 2081, !38, i64 2082, !40, i64 2084, !40, i64 2086, !40, i64 2088, !38, i64 2090, !40, i64 2092, !41, i64 2096, !41, i64 2100, !38, i64 2104, !41, i64 2108, !41, i64 2112, !38, i64 2116}
!87 = !{i64 0, i64 8, !66, i64 8, i64 8, !66, i64 16, i64 8, !66}
!88 = !{!89, !37, i64 136}
!89 = !{!"wmWindow", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !37, i64 32, !38, i64 40, !40, i64 104, !40, i64 106, !40, i64 108, !40, i64 110, !40, i64 112, !40, i64 114, !40, i64 116, !40, i64 118, !40, i64 120, !40, i64 122, !40, i64 124, !40, i64 126, !41, i64 128, !40, i64 132, !40, i64 134, !37, i64 136, !37, i64 144, !37, i64 152, !41, i64 160, !41, i64 164, !37, i64 168, !42, i64 176, !42, i64 192, !42, i64 208, !42, i64 224, !42, i64 240}
!90 = !{!91, !41, i64 20}
!91 = !{!"wmEvent", !37, i64 0, !37, i64 8, !40, i64 16, !40, i64 18, !41, i64 20, !41, i64 24, !38, i64 28, !38, i64 36, !38, i64 42, !38, i64 43, !40, i64 44, !40, i64 46, !41, i64 48, !41, i64 52, !92, i64 56, !41, i64 64, !41, i64 68, !40, i64 72, !40, i64 74, !40, i64 76, !40, i64 78, !40, i64 80, !40, i64 82, !37, i64 88, !37, i64 96, !40, i64 104, !40, i64 106, !41, i64 108, !37, i64 112}
!92 = !{!"double", !38, i64 0}
!93 = !{!94, !41, i64 176}
!94 = !{!"ARegion", !37, i64 0, !37, i64 8, !95, i64 16, !51, i64 176, !51, i64 192, !40, i64 208, !40, i64 210, !40, i64 212, !40, i64 214, !40, i64 216, !40, i64 218, !45, i64 220, !40, i64 224, !40, i64 226, !40, i64 228, !40, i64 230, !40, i64 232, !40, i64 234, !40, i64 236, !40, i64 238, !37, i64 240, !42, i64 248, !42, i64 264, !42, i64 280, !42, i64 296, !42, i64 312, !42, i64 328, !42, i64 344, !37, i64 360, !37, i64 368, !37, i64 376}
!95 = !{!"View2D", !50, i64 0, !50, i64 16, !51, i64 32, !51, i64 48, !51, i64 64, !38, i64 80, !38, i64 88, !45, i64 96, !45, i64 100, !40, i64 104, !40, i64 106, !40, i64 108, !40, i64 110, !40, i64 112, !40, i64 114, !40, i64 116, !40, i64 118, !40, i64 120, !40, i64 122, !40, i64 124, !40, i64 126, !37, i64 128, !41, i64 136, !41, i64 140, !37, i64 144, !37, i64 152}
!96 = !{!41, !41, i64 0}
!97 = !{!91, !41, i64 24}
!98 = !{!94, !41, i64 184}

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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_editors_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_wm_manager(ptr noundef %0) #7
  %3 = tail call ptr @CTX_data_main(ptr noundef %0) #7
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #7
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !5
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.Base, ptr %8, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !33
  br label %13

13:                                               ; preds = %1, %6, %10
  %14 = phi ptr [ %12, %10 ], [ null, %6 ], [ null, %1 ]
  %15 = tail call ptr @CTX_wm_reports(ptr noundef %0) #7
  %16 = getelementptr inbounds %struct.ReportList, ptr %15, i64 0, i32 3
  %17 = load i32, ptr %16, align 8, !tbaa !35
  %18 = and i32 %17, -3
  store i32 %18, ptr %16, align 8, !tbaa !35
  %19 = getelementptr inbounds %struct.Main, ptr %3, i64 0, i32 13
  %20 = load ptr, ptr %19, align 8, !tbaa !37
  %21 = icmp eq ptr %20, null
  br i1 %21, label %47, label %22

22:                                               ; preds = %13
  %23 = getelementptr inbounds %struct.ID, ptr %14, i64 0, i32 3
  br label %24

24:                                               ; preds = %22, %44
  %25 = phi ptr [ %45, %44 ], [ %20, %22 ]
  %26 = getelementptr inbounds %struct.Object, ptr %25, i64 0, i32 27
  %27 = load i32, ptr %26, align 8, !tbaa !38
  %28 = and i32 %27, -65
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %44, label %30

30:                                               ; preds = %24
  store i32 0, ptr %26, align 8, !tbaa !38
  %31 = getelementptr inbounds %struct.Object, ptr %25, i64 0, i32 19
  %32 = load ptr, ptr %31, align 8, !tbaa !41
  %33 = icmp eq ptr %25, %14
  br i1 %33, label %34, label %44

34:                                               ; preds = %30
  %35 = load ptr, ptr %23, align 8, !tbaa !42
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %44

37:                                               ; preds = %34
  %38 = icmp eq ptr %32, null
  br i1 %38, label %43, label %39

39:                                               ; preds = %37
  %40 = getelementptr inbounds %struct.ID, ptr %32, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !43
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %39, %37
  tail call void @ED_object_toggle_modes(ptr noundef %0, i32 noundef %27) #7
  br label %44

44:                                               ; preds = %30, %34, %39, %43, %24
  %45 = load ptr, ptr %25, align 8, !tbaa !37
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %24, !llvm.loop !44

47:                                               ; preds = %44, %13
  br i1 %5, label %51, label %48

48:                                               ; preds = %47
  %49 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 20
  %50 = load ptr, ptr %49, align 8, !tbaa !46
  tail call void @ED_space_image_paint_update(ptr noundef %2, ptr noundef %50) #7
  br label %51

51:                                               ; preds = %48, %47
  store i32 %17, ptr %16, align 8, !tbaa !35
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @CTX_wm_manager(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_main(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_reports(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare void @ED_object_toggle_modes(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_space_image_paint_update(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_editors_exit(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @CTX_data_main(ptr noundef %0) #7
  %3 = icmp eq ptr %2, null
  br i1 %3, label %34, label %4

4:                                                ; preds = %1
  tail call void @undo_editmode_clear() #7
  tail call void @ED_undo_paint_free() #7
  %5 = getelementptr inbounds %struct.Main, ptr %2, i64 0, i32 11
  %6 = load ptr, ptr %5, align 8, !tbaa !37
  %7 = icmp eq ptr %6, null
  br i1 %7, label %31, label %8

8:                                                ; preds = %4, %28
  %9 = phi ptr [ %29, %28 ], [ %6, %4 ]
  %10 = getelementptr inbounds %struct.Scene, ptr %9, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !47
  %12 = icmp eq ptr %11, null
  br i1 %12, label %28, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.Object, ptr %11, i64 0, i32 3
  %15 = load i16, ptr %14, align 8, !tbaa !48
  switch i16 %15, label %28 [
    i16 1, label %16
    i16 25, label %25
  ]

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.Object, ptr %11, i64 0, i32 19
  %18 = load ptr, ptr %17, align 8, !tbaa !41
  %19 = getelementptr inbounds %struct.Mesh, ptr %18, i64 0, i32 20
  %20 = load ptr, ptr %19, align 8, !tbaa !49
  %21 = icmp eq ptr %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %16
  tail call void @EDBM_mesh_free(ptr noundef nonnull %20) #7
  %23 = load ptr, ptr @MEM_freeN, align 8, !tbaa !37
  %24 = load ptr, ptr %19, align 8, !tbaa !49
  tail call void %23(ptr noundef %24) #7
  store ptr null, ptr %19, align 8, !tbaa !49
  br label %28

25:                                               ; preds = %13
  %26 = getelementptr inbounds %struct.Object, ptr %11, i64 0, i32 19
  %27 = load ptr, ptr %26, align 8, !tbaa !41
  tail call void @ED_armature_edit_free(ptr noundef %27) #7
  br label %28

28:                                               ; preds = %25, %22, %16, %13, %8
  %29 = load ptr, ptr %9, align 8, !tbaa !37
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %8, !llvm.loop !52

31:                                               ; preds = %28, %4
  %32 = tail call i32 @ED_mesh_mirror_spatial_table(ptr noundef null, ptr noundef null, ptr noundef null, i8 noundef zeroext 101) #7
  %33 = tail call i32 @ED_mesh_mirror_topo_table(ptr noundef null, i8 noundef zeroext 101) #7
  br label %34

34:                                               ; preds = %1, %31
  ret void
}

; Function Attrs: optsize
declare void @undo_editmode_clear() local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_undo_paint_free() local_unnamed_addr #2

; Function Attrs: optsize
declare void @EDBM_mesh_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_armature_edit_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ED_mesh_mirror_spatial_table(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ED_mesh_mirror_topo_table(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @ED_editors_flush_edits(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = tail call ptr @CTX_data_main(ptr noundef %0) #7
  %4 = getelementptr inbounds %struct.Main, ptr %3, i64 0, i32 13
  %5 = load ptr, ptr %4, align 8, !tbaa !37
  %6 = icmp eq ptr %5, null
  br i1 %6, label %28, label %7

7:                                                ; preds = %2
  %8 = icmp eq i8 %1, 0
  br label %9

9:                                                ; preds = %7, %24
  %10 = phi ptr [ %5, %7 ], [ %26, %24 ]
  %11 = phi i8 [ 0, %7 ], [ %25, %24 ]
  %12 = getelementptr inbounds %struct.Object, ptr %10, i64 0, i32 27
  %13 = load i32, ptr %12, align 8, !tbaa !38
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
  %26 = load ptr, ptr %10, align 8, !tbaa !37
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %9, !llvm.loop !53

28:                                               ; preds = %24, %2
  %29 = phi i8 [ 0, %2 ], [ %25, %24 ]
  ret i8 %29
}

; Function Attrs: optsize
declare void @multires_force_update(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_sculptsession_bm_to_me_for_render(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_sculptsession_bm_to_me(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @ED_object_editmode_load(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
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
  %23 = load float, ptr %2, align 4, !tbaa !54
  %24 = fdiv float %23, %22
  %25 = fadd float %24, 5.000000e-01
  %26 = tail call float @llvm.floor.f32(float %25)
  %27 = fmul float %26, %22
  store float %27, ptr %2, align 4, !tbaa !54
  br label %28

28:                                               ; preds = %21, %17, %19, %14
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #4

; Function Attrs: noinline nounwind optsize uwtable
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
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 1124, ptr nonnull %8) #8
  %19 = tail call ptr @WM_operatortype_find(ptr noundef %1, i8 noundef zeroext 1) #7
  %20 = tail call ptr @uiPupMenuBegin(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef 0) #7
  %21 = tail call ptr @uiPupMenuLayout(ptr noundef %20) #7
  call void @uiItemFullO_ptr(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %7, ptr noundef %21, ptr noundef %19, ptr noundef nonnull @.str.1, i32 noundef 0, ptr noundef null, i32 noundef 6, i32 noundef 1) #7
  call void @RNA_enum_set(ptr noundef nonnull %7, ptr noundef nonnull @.str.2, i32 noundef 8) #7
  call void @RNA_string_set(ptr noundef nonnull %7, ptr noundef nonnull @.str.3, ptr noundef %2) #7
  %22 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 3), align 8, !tbaa !55
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %40, label %24

24:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 1792, ptr nonnull %9) #8
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %10) #8
  call void @BLI_split_file_part(ptr noundef %3, ptr noundef nonnull %10, i64 noundef 1024) #7
  %25 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %9, i64 noundef 1792, ptr noundef nonnull @.str.4, ptr noundef %4, ptr noundef nonnull %10) #7
  %26 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) %9) #9
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
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #8
  call void @uiItemFullO_ptr(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %11, ptr noundef %21, ptr noundef %19, ptr noundef nonnull %8, i32 noundef 0, ptr noundef null, i32 noundef 6, i32 noundef 1) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %11, i64 24, i1 false), !tbaa.struct !57
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #8
  br label %37

32:                                               ; preds = %28
  %33 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %8, i64 noundef 1124, ptr noundef nonnull @.str.6, ptr noundef nonnull %9) #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %12) #8
  call void @uiItemFullO_ptr(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %12, ptr noundef %21, ptr noundef %19, ptr noundef nonnull %8, i32 noundef 0, ptr noundef null, i32 noundef 6, i32 noundef 1) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %12, i64 24, i1 false), !tbaa.struct !57
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12) #8
  br label %37

34:                                               ; preds = %28
  %35 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %8, i64 noundef 1124, ptr noundef nonnull @.str.7, ptr noundef nonnull %9) #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %13) #8
  call void @uiItemFullO_ptr(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %13, ptr noundef %21, ptr noundef %19, ptr noundef nonnull %8, i32 noundef 0, ptr noundef null, i32 noundef 6, i32 noundef 1) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %13, i64 24, i1 false), !tbaa.struct !57
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %13) #8
  call void @RNA_enum_set(ptr noundef nonnull %7, ptr noundef nonnull @.str.2, i32 noundef 5) #7
  call void @RNA_string_set(ptr noundef nonnull %7, ptr noundef nonnull @.str.3, ptr noundef %2) #7
  %36 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %8, i64 noundef 1124, ptr noundef nonnull @.str.8, ptr noundef nonnull %9) #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %14) #8
  call void @uiItemFullO_ptr(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %14, ptr noundef %21, ptr noundef %19, ptr noundef nonnull %8, i32 noundef 0, ptr noundef null, i32 noundef 6, i32 noundef 1) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %14, i64 24, i1 false), !tbaa.struct !57
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %14) #8
  br label %37

37:                                               ; preds = %34, %32, %30
  %38 = phi i32 [ 4, %30 ], [ 5, %32 ], [ 4, %34 ]
  call void @RNA_enum_set(ptr noundef nonnull %7, ptr noundef nonnull @.str.2, i32 noundef %38) #7
  call void @RNA_string_set(ptr noundef nonnull %7, ptr noundef nonnull @.str.3, ptr noundef %2) #7
  br label %39

39:                                               ; preds = %37, %28, %24
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 1792, ptr nonnull %9) #8
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
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %15) #8
  call void @uiItemFullO_ptr(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %15, ptr noundef %21, ptr noundef %19, ptr noundef nonnull %8, i32 noundef 0, ptr noundef null, i32 noundef 6, i32 noundef 1) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %15, i64 24, i1 false), !tbaa.struct !57
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %15) #8
  br label %49

44:                                               ; preds = %40
  %45 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %8, i64 noundef 1124, ptr noundef nonnull @.str.6, ptr noundef %3) #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %16) #8
  call void @uiItemFullO_ptr(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %16, ptr noundef %21, ptr noundef %19, ptr noundef nonnull %8, i32 noundef 0, ptr noundef null, i32 noundef 6, i32 noundef 1) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %16, i64 24, i1 false), !tbaa.struct !57
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %16) #8
  br label %49

46:                                               ; preds = %40
  %47 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %8, i64 noundef 1124, ptr noundef nonnull @.str.7, ptr noundef %3) #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %17) #8
  call void @uiItemFullO_ptr(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %17, ptr noundef %21, ptr noundef %19, ptr noundef nonnull %8, i32 noundef 0, ptr noundef null, i32 noundef 6, i32 noundef 1) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %17, i64 24, i1 false), !tbaa.struct !57
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %17) #8
  call void @RNA_enum_set(ptr noundef nonnull %7, ptr noundef nonnull @.str.2, i32 noundef 6) #7
  call void @RNA_string_set(ptr noundef nonnull %7, ptr noundef nonnull @.str.3, ptr noundef %2) #7
  %48 = call i64 (ptr, i64, ptr, ...) @BLI_snprintf(ptr noundef nonnull %8, i64 noundef 1124, ptr noundef nonnull @.str.8, ptr noundef %3) #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %18) #8
  call void @uiItemFullO_ptr(ptr dead_on_unwind nonnull writable sret(%struct.PointerRNA) align 8 %18, ptr noundef %21, ptr noundef %19, ptr noundef nonnull %8, i32 noundef 0, ptr noundef null, i32 noundef 6, i32 noundef 1) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %18, i64 24, i1 false), !tbaa.struct !57
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %18) #8
  br label %49

49:                                               ; preds = %42, %44, %46
  %50 = phi i32 [ 3, %46 ], [ 6, %44 ], [ 3, %42 ]
  call void @RNA_enum_set(ptr noundef nonnull %7, ptr noundef nonnull @.str.2, i32 noundef %50) #7
  call void @RNA_string_set(ptr noundef nonnull %7, ptr noundef nonnull @.str.3, ptr noundef %2) #7
  br label %51

51:                                               ; preds = %49, %40
  call void @uiPupMenuEnd(ptr noundef %0, ptr noundef %20) #7
  call void @llvm.lifetime.end.p0(i64 1124, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #8
  ret void
}

; Function Attrs: optsize
declare ptr @WM_operatortype_find(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @uiPupMenuBegin(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @uiPupMenuLayout(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiItemFullO_ptr(ptr dead_on_unwind writable sret(%struct.PointerRNA) align 8, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: optsize
declare void @RNA_enum_set(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_string_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_split_file_part(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @BLI_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare i32 @checkPackedFile(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @uiPupMenuEnd(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_region_draw_mouse_line_cb(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [2 x i32], align 4
  %5 = tail call ptr @CTX_wm_window(ptr noundef %0) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #8
  %6 = getelementptr inbounds %struct.wmWindow, ptr %5, i64 0, i32 21
  %7 = load ptr, ptr %6, align 8, !tbaa !58
  %8 = getelementptr inbounds %struct.wmEvent, ptr %7, i64 0, i32 4
  %9 = load i32, ptr %8, align 4, !tbaa !60
  %10 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !63
  %12 = sub nsw i32 %9, %11
  store i32 %12, ptr %4, align 4, !tbaa !66
  %13 = getelementptr inbounds i32, ptr %4, i64 1
  %14 = getelementptr inbounds %struct.wmEvent, ptr %7, i64 0, i32 5
  %15 = load i32, ptr %14, align 8, !tbaa !67
  %16 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !68
  %18 = sub nsw i32 %15, %17
  store i32 %18, ptr %13, align 4, !tbaa !66
  tail call void @UI_ThemeColor(i32 noundef 192) #7
  tail call void @setlinestyle(i32 noundef 3) #7
  tail call void @glBegin(i32 noundef 3) #7
  call void @glVertex2iv(ptr noundef nonnull %4) #7
  call void @glVertex2fv(ptr noundef %2) #7
  call void @glEnd() #7
  call void @setlinestyle(i32 noundef 0) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #8
  ret void
}

; Function Attrs: optsize
declare ptr @CTX_wm_window(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_ThemeColor(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @setlinestyle(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glBegin(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glVertex2iv(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glVertex2fv(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glEnd() local_unnamed_addr #2

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind optsize }
attributes #8 = { nounwind }
attributes #9 = { nounwind optsize willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !8, i64 168}
!6 = !{!"Scene", !7, i64 0, !8, i64 120, !8, i64 128, !8, i64 136, !8, i64 144, !13, i64 152, !8, i64 168, !8, i64 176, !9, i64 184, !9, i64 196, !9, i64 208, !9, i64 220, !12, i64 232, !12, i64 236, !12, i64 240, !11, i64 244, !9, i64 246, !9, i64 247, !8, i64 248, !8, i64 256, !8, i64 264, !8, i64 272, !14, i64 280, !24, i64 4264, !13, i64 4296, !13, i64 4312, !8, i64 4328, !8, i64 4336, !8, i64 4344, !8, i64 4352, !8, i64 4360, !8, i64 4368, !11, i64 4376, !11, i64 4378, !12, i64 4380, !13, i64 4384, !25, i64 4400, !26, i64 4416, !29, i64 4600, !8, i64 4608, !30, i64 4616, !8, i64 4640, !31, i64 4648, !31, i64 4656, !17, i64 4664, !18, i64 4824, !32, i64 4888, !8, i64 4952}
!7 = !{!"ID", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !9, i64 32, !11, i64 98, !12, i64 100, !12, i64 104, !12, i64 108, !8, i64 112}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"short", !9, i64 0}
!12 = !{!"int", !9, i64 0}
!13 = !{!"ListBase", !8, i64 0, !8, i64 8}
!14 = !{!"RenderData", !15, i64 0, !8, i64 248, !8, i64 256, !19, i64 264, !20, i64 328, !12, i64 400, !12, i64 404, !12, i64 408, !16, i64 412, !12, i64 416, !12, i64 420, !12, i64 424, !12, i64 428, !11, i64 432, !11, i64 434, !16, i64 436, !16, i64 440, !16, i64 444, !16, i64 448, !16, i64 452, !11, i64 456, !11, i64 458, !11, i64 460, !11, i64 462, !11, i64 464, !11, i64 466, !12, i64 468, !11, i64 472, !11, i64 474, !11, i64 476, !11, i64 478, !11, i64 480, !11, i64 482, !12, i64 484, !12, i64 488, !11, i64 492, !11, i64 494, !12, i64 496, !12, i64 500, !11, i64 504, !11, i64 506, !11, i64 508, !11, i64 510, !11, i64 512, !9, i64 514, !9, i64 515, !12, i64 516, !12, i64 520, !12, i64 524, !11, i64 528, !11, i64 530, !11, i64 532, !11, i64 534, !11, i64 536, !11, i64 538, !11, i64 540, !11, i64 542, !21, i64 544, !21, i64 560, !22, i64 576, !13, i64 592, !11, i64 608, !11, i64 610, !16, i64 612, !16, i64 616, !16, i64 620, !16, i64 624, !12, i64 628, !16, i64 632, !16, i64 636, !16, i64 640, !16, i64 644, !11, i64 648, !11, i64 650, !11, i64 652, !11, i64 654, !11, i64 656, !11, i64 658, !16, i64 660, !16, i64 664, !11, i64 668, !11, i64 670, !16, i64 672, !16, i64 676, !9, i64 680, !12, i64 1704, !11, i64 1708, !11, i64 1710, !9, i64 1712, !9, i64 2480, !9, i64 2496, !9, i64 2512, !9, i64 2513, !9, i64 2514, !9, i64 2515, !12, i64 2520, !11, i64 2524, !11, i64 2526, !16, i64 2528, !16, i64 2532, !11, i64 2536, !11, i64 2538, !16, i64 2540, !11, i64 2544, !11, i64 2546, !12, i64 2548, !11, i64 2552, !11, i64 2554, !11, i64 2556, !11, i64 2558, !16, i64 2560, !16, i64 2564, !8, i64 2568, !12, i64 2576, !16, i64 2580, !9, i64 2584, !23, i64 2616, !12, i64 3976, !12, i64 3980}
!15 = !{!"ImageFormatData", !9, i64 0, !9, i64 1, !9, i64 2, !9, i64 3, !9, i64 4, !9, i64 5, !9, i64 6, !9, i64 7, !11, i64 8, !11, i64 10, !16, i64 12, !9, i64 16, !9, i64 17, !9, i64 18, !17, i64 24, !18, i64 184}
!16 = !{!"float", !9, i64 0}
!17 = !{!"ColorManagedViewSettings", !12, i64 0, !12, i64 4, !9, i64 8, !9, i64 72, !16, i64 136, !16, i64 140, !8, i64 144, !8, i64 152}
!18 = !{!"ColorManagedDisplaySettings", !9, i64 0}
!19 = !{!"QuicktimeCodecSettings", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !11, i64 48, !11, i64 50, !12, i64 52, !12, i64 56, !12, i64 60}
!20 = !{!"FFMpegCodecData", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !16, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !12, i64 48, !12, i64 52, !12, i64 56, !12, i64 60, !8, i64 64}
!21 = !{!"rctf", !16, i64 0, !16, i64 4, !16, i64 8, !16, i64 12}
!22 = !{!"rcti", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12}
!23 = !{!"BakeData", !15, i64 0, !9, i64 248, !11, i64 1272, !11, i64 1274, !11, i64 1276, !11, i64 1278, !16, i64 1280, !16, i64 1284, !9, i64 1288, !9, i64 1291, !9, i64 1292, !9, i64 1293, !9, i64 1296}
!24 = !{!"AudioData", !12, i64 0, !16, i64 4, !16, i64 8, !16, i64 12, !12, i64 16, !11, i64 20, !11, i64 22, !16, i64 24, !16, i64 28}
!25 = !{!"GameFraming", !9, i64 0, !9, i64 12, !9, i64 13, !9, i64 14, !9, i64 15}
!26 = !{!"GameData", !25, i64 0, !11, i64 16, !11, i64 18, !11, i64 20, !11, i64 22, !11, i64 24, !11, i64 26, !11, i64 28, !11, i64 30, !11, i64 32, !9, i64 34, !27, i64 40, !11, i64 64, !11, i64 66, !16, i64 68, !28, i64 72, !16, i64 128, !16, i64 132, !12, i64 136, !11, i64 140, !11, i64 142, !11, i64 144, !11, i64 146, !11, i64 148, !11, i64 150, !11, i64 152, !11, i64 154, !11, i64 156, !11, i64 158, !11, i64 160, !11, i64 162, !16, i64 164, !16, i64 168, !16, i64 172, !16, i64 176, !16, i64 180}
!27 = !{!"GameDome", !11, i64 0, !11, i64 2, !11, i64 4, !11, i64 6, !16, i64 8, !16, i64 12, !8, i64 16}
!28 = !{!"RecastData", !16, i64 0, !16, i64 4, !16, i64 8, !16, i64 12, !16, i64 16, !16, i64 20, !16, i64 24, !16, i64 28, !16, i64 32, !16, i64 36, !12, i64 40, !16, i64 44, !16, i64 48, !11, i64 52, !11, i64 54}
!29 = !{!"UnitSettings", !16, i64 0, !9, i64 4, !9, i64 5, !11, i64 6}
!30 = !{!"PhysicsSettings", !9, i64 0, !12, i64 12, !12, i64 16, !12, i64 20}
!31 = !{!"long", !9, i64 0}
!32 = !{!"ColorManagedColorspaceSettings", !9, i64 0}
!33 = !{!34, !8, i64 32}
!34 = !{!"Base", !8, i64 0, !8, i64 8, !12, i64 16, !12, i64 20, !12, i64 24, !11, i64 28, !11, i64 30, !8, i64 32}
!35 = !{!36, !12, i64 24}
!36 = !{!"ReportList", !13, i64 0, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !8, i64 32}
!37 = !{!8, !8, i64 0}
!38 = !{!39, !12, i64 432}
!39 = !{!"Object", !7, i64 0, !8, i64 120, !8, i64 128, !11, i64 136, !11, i64 138, !12, i64 140, !12, i64 144, !12, i64 148, !9, i64 152, !8, i64 216, !8, i64 224, !8, i64 232, !8, i64 240, !8, i64 248, !8, i64 256, !8, i64 264, !8, i64 272, !8, i64 280, !8, i64 288, !8, i64 296, !8, i64 304, !40, i64 312, !8, i64 360, !13, i64 368, !13, i64 384, !13, i64 400, !13, i64 416, !12, i64 432, !12, i64 436, !8, i64 440, !8, i64 448, !12, i64 456, !12, i64 460, !9, i64 464, !9, i64 476, !9, i64 488, !9, i64 500, !9, i64 512, !9, i64 524, !9, i64 536, !9, i64 548, !9, i64 560, !9, i64 576, !9, i64 592, !9, i64 604, !16, i64 616, !16, i64 620, !9, i64 624, !9, i64 688, !9, i64 752, !9, i64 816, !9, i64 880, !12, i64 944, !11, i64 948, !11, i64 950, !11, i64 952, !11, i64 954, !11, i64 956, !11, i64 958, !11, i64 960, !11, i64 962, !11, i64 964, !9, i64 966, !9, i64 967, !12, i64 968, !12, i64 972, !12, i64 976, !12, i64 980, !12, i64 984, !16, i64 988, !16, i64 992, !16, i64 996, !16, i64 1000, !16, i64 1004, !16, i64 1008, !16, i64 1012, !16, i64 1016, !16, i64 1020, !16, i64 1024, !16, i64 1028, !16, i64 1032, !11, i64 1036, !11, i64 1038, !11, i64 1040, !9, i64 1042, !9, i64 1043, !11, i64 1044, !9, i64 1046, !9, i64 1047, !16, i64 1048, !16, i64 1052, !13, i64 1056, !13, i64 1072, !13, i64 1088, !13, i64 1104, !16, i64 1120, !11, i64 1124, !11, i64 1126, !9, i64 1128, !12, i64 1144, !12, i64 1148, !8, i64 1152, !9, i64 1160, !9, i64 1161, !11, i64 1162, !9, i64 1164, !13, i64 1176, !13, i64 1192, !13, i64 1208, !13, i64 1224, !8, i64 1240, !8, i64 1248, !8, i64 1256, !9, i64 1264, !9, i64 1265, !11, i64 1266, !16, i64 1268, !8, i64 1272, !8, i64 1280, !8, i64 1288, !8, i64 1296, !31, i64 1304, !31, i64 1312, !12, i64 1320, !12, i64 1324, !13, i64 1328, !13, i64 1344, !8, i64 1360, !8, i64 1368, !8, i64 1376, !9, i64 1384, !8, i64 1392, !13, i64 1400, !8, i64 1416}
!40 = !{!"bAnimVizSettings", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !11, i64 16, !11, i64 18, !11, i64 20, !11, i64 22, !11, i64 24, !11, i64 26, !11, i64 28, !11, i64 30, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44}
!41 = !{!39, !8, i64 296}
!42 = !{!39, !8, i64 24}
!43 = !{!7, !8, i64 24}
!44 = distinct !{!44, !45}
!45 = !{!"llvm.loop.mustprogress"}
!46 = !{!6, !8, i64 264}
!47 = !{!6, !8, i64 176}
!48 = !{!39, !11, i64 136}
!49 = !{!50, !8, i64 272}
!50 = !{!"Mesh", !7, i64 0, !8, i64 120, !8, i64 128, !8, i64 136, !8, i64 144, !8, i64 152, !8, i64 160, !8, i64 168, !8, i64 176, !8, i64 184, !8, i64 192, !8, i64 200, !8, i64 208, !8, i64 216, !8, i64 224, !8, i64 232, !8, i64 240, !8, i64 248, !8, i64 256, !8, i64 264, !8, i64 272, !51, i64 280, !51, i64 480, !51, i64 680, !51, i64 880, !51, i64 1080, !12, i64 1280, !12, i64 1284, !12, i64 1288, !12, i64 1292, !12, i64 1296, !12, i64 1300, !12, i64 1304, !9, i64 1308, !9, i64 1320, !9, i64 1332, !12, i64 1344, !11, i64 1348, !11, i64 1350, !16, i64 1352, !12, i64 1356, !9, i64 1360, !9, i64 1361, !9, i64 1362, !9, i64 1363, !9, i64 1364, !9, i64 1365, !11, i64 1366, !8, i64 1368}
!51 = !{!"CustomData", !8, i64 0, !9, i64 8, !12, i64 172, !12, i64 176, !12, i64 180, !8, i64 184, !8, i64 192}
!52 = distinct !{!52, !45}
!53 = distinct !{!53, !45}
!54 = !{!16, !16, i64 0}
!55 = !{!56, !9, i64 2056}
!56 = !{!"Global", !8, i64 0, !9, i64 8, !9, i64 1032, !9, i64 2056, !9, i64 2057, !9, i64 2058, !13, i64 2064, !9, i64 2080, !9, i64 2081, !9, i64 2082, !11, i64 2084, !11, i64 2086, !11, i64 2088, !9, i64 2090, !11, i64 2092, !12, i64 2096, !12, i64 2100, !9, i64 2104, !12, i64 2108, !12, i64 2112, !9, i64 2116}
!57 = !{i64 0, i64 8, !37, i64 8, i64 8, !37, i64 16, i64 8, !37}
!58 = !{!59, !8, i64 136}
!59 = !{!"wmWindow", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !9, i64 40, !11, i64 104, !11, i64 106, !11, i64 108, !11, i64 110, !11, i64 112, !11, i64 114, !11, i64 116, !11, i64 118, !11, i64 120, !11, i64 122, !11, i64 124, !11, i64 126, !12, i64 128, !11, i64 132, !11, i64 134, !8, i64 136, !8, i64 144, !8, i64 152, !12, i64 160, !12, i64 164, !8, i64 168, !13, i64 176, !13, i64 192, !13, i64 208, !13, i64 224, !13, i64 240}
!60 = !{!61, !12, i64 20}
!61 = !{!"wmEvent", !8, i64 0, !8, i64 8, !11, i64 16, !11, i64 18, !12, i64 20, !12, i64 24, !9, i64 28, !9, i64 36, !9, i64 42, !9, i64 43, !11, i64 44, !11, i64 46, !12, i64 48, !12, i64 52, !62, i64 56, !12, i64 64, !12, i64 68, !11, i64 72, !11, i64 74, !11, i64 76, !11, i64 78, !11, i64 80, !11, i64 82, !8, i64 88, !8, i64 96, !11, i64 104, !11, i64 106, !12, i64 108, !8, i64 112}
!62 = !{!"double", !9, i64 0}
!63 = !{!64, !12, i64 176}
!64 = !{!"ARegion", !8, i64 0, !8, i64 8, !65, i64 16, !22, i64 176, !22, i64 192, !11, i64 208, !11, i64 210, !11, i64 212, !11, i64 214, !11, i64 216, !11, i64 218, !16, i64 220, !11, i64 224, !11, i64 226, !11, i64 228, !11, i64 230, !11, i64 232, !11, i64 234, !11, i64 236, !11, i64 238, !8, i64 240, !13, i64 248, !13, i64 264, !13, i64 280, !13, i64 296, !13, i64 312, !13, i64 328, !13, i64 344, !8, i64 360, !8, i64 368, !8, i64 376}
!65 = !{!"View2D", !21, i64 0, !21, i64 16, !22, i64 32, !22, i64 48, !22, i64 64, !9, i64 80, !9, i64 88, !16, i64 96, !16, i64 100, !11, i64 104, !11, i64 106, !11, i64 108, !11, i64 110, !11, i64 112, !11, i64 114, !11, i64 116, !11, i64 118, !11, i64 120, !11, i64 122, !11, i64 124, !11, i64 126, !8, i64 128, !12, i64 136, !12, i64 140, !8, i64 144, !8, i64 152}
!66 = !{!12, !12, i64 0}
!67 = !{!61, !12, i64 24}
!68 = !{!64, !12, i64 184}

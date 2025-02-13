; ModuleID = 'blender/source/blender/editors/space_sequencer/space_sequencer.c'
source_filename = "blender/source/blender/editors/space_sequencer/space_sequencer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ListBase = type { ptr, ptr }
%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.ScrArea = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.SpaceType = type { ptr, ptr, [64 x i8], i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, i32 }
%struct.ARegionType = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, i32, i32, i32, i16, i16, i16 }
%struct.SpaceSeq = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], %struct.View2D, float, float, i16, i16, i16, i16, i32, float, i32, i32, ptr, %struct.SequencerScopes }
%struct.SequencerScopes = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Scene = type { %struct.ID, ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, [3 x float], [3 x float], [3 x float], [3 x float], i32, i32, i32, i16, i8, [1 x i8], ptr, ptr, ptr, ptr, %struct.RenderData, %struct.AudioData, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, %struct.ListBase, %struct.GameFraming, %struct.GameData, %struct.UnitSettings, ptr, %struct.PhysicsSettings, ptr, i64, i64, %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings, %struct.ColorManagedColorspaceSettings, ptr }
%struct.ID = type { ptr, ptr, ptr, ptr, [66 x i8], i16, i32, i32, i32, ptr }
%struct.RenderData = type { %struct.ImageFormatData, ptr, ptr, %struct.QuicktimeCodecSettings, %struct.FFMpegCodecData, i32, i32, i32, float, i32, i32, i32, i32, i16, i16, float, float, float, float, float, i16, i16, i16, i16, i16, i16, i32, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i32, i32, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, %struct.rctf, %struct.rctf, %struct.rcti, %struct.ListBase, i16, i16, float, float, float, float, i32, float, float, float, float, i16, i16, i16, i16, i16, i16, float, float, i16, i16, float, float, [1024 x i8], i32, i16, i16, [768 x i8], [4 x float], [4 x float], i8, i8, i8, [5 x i8], i32, i16, i16, float, float, i16, i16, float, i16, i16, i32, i16, i16, i16, i16, float, float, ptr, i32, float, [32 x i8], %struct.BakeData, i32, i32 }
%struct.ImageFormatData = type { i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, float, i8, i8, [6 x i8], %struct.ColorManagedViewSettings, %struct.ColorManagedDisplaySettings }
%struct.QuicktimeCodecSettings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32 }
%struct.FFMpegCodecData = type { i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, ptr }
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
%struct.wmNotifier = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr }
%struct.wmWindowManager = type { %struct.ID, ptr, ptr, %struct.ListBase, i32, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ReportList, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, %struct.ListBase, ptr, i8, [7 x i8] }
%struct.ReportList = type { %struct.ListBase, i32, i32, i32, i32, ptr }
%struct.Editing = type { ptr, %struct.ListBase, %struct.ListBase, ptr, [1024 x i8], [1024 x i8], i32, i32, i32, i32, %struct.rctf }
%struct.wmDrag = type { ptr, ptr, i32, i32, ptr, [1024 x i8], double, ptr, float, i32, i32, [200 x i8], i32 }
%struct.wmEvent = type { ptr, ptr, i16, i16, i32, i32, [2 x i32], [6 x i8], i8, i8, i16, i16, i32, i32, double, i32, i32, i16, i16, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, ptr }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.wmDropBox = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16 }

@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [22 x i8] c"buttons for sequencer\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"edit_mask\00", align 1
@sequencer_context_dir = dso_local global [2 x ptr] [ptr @.str.1, ptr null], align 16
@.str.2 = private unnamed_addr constant [20 x i8] c"spacetype sequencer\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"Sequencer\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"spacetype sequencer region\00", align 1
@G = external local_unnamed_addr global %struct.Global, align 8
@sequencer_view3d_cb = external local_unnamed_addr global ptr, align 8
@.str.5 = private unnamed_addr constant [14 x i8] c"initsequencer\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"header for sequencer\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"preview area for sequencer\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"main area for sequencer\00", align 1
@MEM_dupallocN = external local_unnamed_addr global ptr, align 8
@.str.9 = private unnamed_addr constant [29 x i8] c"SEQUENCER_OT_image_strip_add\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"SEQUENCER_OT_movie_strip_add\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"SEQUENCER_OT_sound_strip_add\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"filepath\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"directory\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"files\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@U = external local_unnamed_addr global %struct.UserDef, align 8
@.str.16 = private unnamed_addr constant [16 x i8] c"SequencerCommon\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"SequencerPreview\00", align 1
@str = private unnamed_addr constant [65 x i8] c"Sequencer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @sequencer_has_buttons_region(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @BKE_area_find_region_type(ptr noundef %0, i32 noundef 4) #10
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %14

4:                                                ; preds = %1
  %5 = tail call ptr @BKE_area_find_region_type(ptr noundef %0, i32 noundef 1) #10
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %4
  %8 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %9 = tail call ptr %8(i64 noundef 384, ptr noundef nonnull @.str) #10
  %10 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 20
  tail call void @BLI_insertlinkafter(ptr noundef nonnull %10, ptr noundef nonnull %5, ptr noundef %9) #10
  %11 = getelementptr inbounds %struct.ARegion, ptr %9, i64 0, i32 8
  store i16 4, ptr %11, align 2, !tbaa !38
  %12 = getelementptr inbounds %struct.ARegion, ptr %9, i64 0, i32 9
  store i16 4, ptr %12, align 8, !tbaa !47
  %13 = getelementptr inbounds %struct.ARegion, ptr %9, i64 0, i32 10
  store i16 1, ptr %13, align 2, !tbaa !48
  br label %14

14:                                               ; preds = %4, %1, %7
  %15 = phi ptr [ %9, %7 ], [ %2, %1 ], [ null, %4 ]
  ret ptr %15
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @BKE_area_find_region_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_insertlinkafter(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_spacetype_sequencer() local_unnamed_addr #0 {
  %1 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %2 = tail call ptr %1(i64 noundef 216, ptr noundef nonnull @.str.2) #10
  %3 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 3
  store i32 8, ptr %3, align 8, !tbaa !49
  %4 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %4, ptr noundef nonnull align 1 dereferenceable(64) @str, i64 noundef 64, i1 false) #10
  %5 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 5
  store ptr @sequencer_new, ptr %5, align 8, !tbaa !51
  %6 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 6
  store ptr @sequencer_free, ptr %6, align 8, !tbaa !52
  %7 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 7
  store ptr @sequencer_init, ptr %7, align 8, !tbaa !53
  %8 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 11
  store ptr @sequencer_duplicate, ptr %8, align 8, !tbaa !54
  %9 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 12
  store ptr @sequencer_operatortypes, ptr %9, align 8, !tbaa !55
  %10 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 13
  store ptr @sequencer_keymap, ptr %10, align 8, !tbaa !56
  %11 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 15
  store ptr @sequencer_context, ptr %11, align 8, !tbaa !57
  %12 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 14
  store ptr @sequencer_dropboxes, ptr %12, align 8, !tbaa !58
  %13 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 10
  store ptr @sequencer_refresh, ptr %13, align 8, !tbaa !59
  %14 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 9
  store ptr @sequencer_listener, ptr %14, align 8, !tbaa !60
  %15 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %16 = tail call ptr %15(i64 noundef 184, ptr noundef nonnull @.str.4) #10
  %17 = getelementptr inbounds %struct.ARegionType, ptr %16, i64 0, i32 2
  store i32 0, ptr %17, align 8, !tbaa !61
  %18 = getelementptr inbounds %struct.ARegionType, ptr %16, i64 0, i32 3
  store ptr @sequencer_main_area_init, ptr %18, align 8, !tbaa !63
  %19 = getelementptr inbounds %struct.ARegionType, ptr %16, i64 0, i32 5
  store ptr @sequencer_main_area_draw, ptr %19, align 8, !tbaa !64
  %20 = getelementptr inbounds %struct.ARegionType, ptr %16, i64 0, i32 6
  store ptr @sequencer_main_area_listener, ptr %20, align 8, !tbaa !65
  %21 = getelementptr inbounds %struct.ARegionType, ptr %16, i64 0, i32 20
  store i32 30, ptr %21, align 8, !tbaa !66
  %22 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 16
  tail call void @BLI_addhead(ptr noundef nonnull %22, ptr noundef %16) #10
  %23 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %24 = tail call ptr %23(i64 noundef 184, ptr noundef nonnull @.str.4) #10
  %25 = getelementptr inbounds %struct.ARegionType, ptr %24, i64 0, i32 2
  store i32 7, ptr %25, align 8, !tbaa !61
  %26 = getelementptr inbounds %struct.ARegionType, ptr %24, i64 0, i32 3
  store ptr @sequencer_preview_area_init, ptr %26, align 8, !tbaa !63
  %27 = getelementptr inbounds %struct.ARegionType, ptr %24, i64 0, i32 5
  store ptr @sequencer_preview_area_draw, ptr %27, align 8, !tbaa !64
  %28 = getelementptr inbounds %struct.ARegionType, ptr %24, i64 0, i32 6
  store ptr @sequencer_preview_area_listener, ptr %28, align 8, !tbaa !65
  %29 = getelementptr inbounds %struct.ARegionType, ptr %24, i64 0, i32 20
  store i32 50, ptr %29, align 8, !tbaa !66
  tail call void @BLI_addhead(ptr noundef nonnull %22, ptr noundef %24) #10
  %30 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %31 = tail call ptr %30(i64 noundef 184, ptr noundef nonnull @.str.4) #10
  %32 = getelementptr inbounds %struct.ARegionType, ptr %31, i64 0, i32 2
  store i32 4, ptr %32, align 8, !tbaa !61
  %33 = getelementptr inbounds %struct.ARegionType, ptr %31, i64 0, i32 18
  store i32 220, ptr %33, align 8, !tbaa !67
  %34 = getelementptr inbounds %struct.ARegionType, ptr %31, i64 0, i32 20
  store i32 17, ptr %34, align 8, !tbaa !66
  %35 = getelementptr inbounds %struct.ARegionType, ptr %31, i64 0, i32 6
  store ptr @sequencer_buttons_area_listener, ptr %35, align 8, !tbaa !65
  %36 = getelementptr inbounds %struct.ARegionType, ptr %31, i64 0, i32 3
  store ptr @sequencer_buttons_area_init, ptr %36, align 8, !tbaa !63
  %37 = getelementptr inbounds %struct.ARegionType, ptr %31, i64 0, i32 5
  store ptr @sequencer_buttons_area_draw, ptr %37, align 8, !tbaa !64
  tail call void @BLI_addhead(ptr noundef nonnull %22, ptr noundef %31) #10
  tail call void @sequencer_buttons_register(ptr noundef %31) #10
  %38 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %39 = tail call ptr %38(i64 noundef 184, ptr noundef nonnull @.str.4) #10
  %40 = getelementptr inbounds %struct.ARegionType, ptr %39, i64 0, i32 2
  store i32 1, ptr %40, align 8, !tbaa !61
  %41 = getelementptr inbounds %struct.ARegionType, ptr %39, i64 0, i32 19
  store i32 26, ptr %41, align 4, !tbaa !68
  %42 = getelementptr inbounds %struct.ARegionType, ptr %39, i64 0, i32 20
  store i32 83, ptr %42, align 8, !tbaa !66
  %43 = getelementptr inbounds %struct.ARegionType, ptr %39, i64 0, i32 3
  store ptr @sequencer_header_area_init, ptr %43, align 8, !tbaa !63
  %44 = getelementptr inbounds %struct.ARegionType, ptr %39, i64 0, i32 5
  store ptr @sequencer_header_area_draw, ptr %44, align 8, !tbaa !64
  %45 = getelementptr inbounds %struct.ARegionType, ptr %39, i64 0, i32 6
  store ptr @sequencer_main_area_listener, ptr %45, align 8, !tbaa !65
  tail call void @BLI_addhead(ptr noundef nonnull %22, ptr noundef %39) #10
  tail call void @BKE_spacetype_register(ptr noundef %2) #10
  %46 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 8), align 1, !tbaa !69
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %0
  store ptr @ED_view3d_draw_offscreen_imbuf_simple, ptr @sequencer_view3d_cb, align 8, !tbaa !34
  br label %49

49:                                               ; preds = %48, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @sequencer_new(ptr noundef %0) #0 !PGOFuncName !71 {
  %2 = tail call ptr @CTX_data_scene(ptr noundef %0) #10
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %4 = tail call ptr %3(i64 noundef 304, ptr noundef nonnull @.str.5) #10
  %5 = getelementptr inbounds %struct.SpaceSeq, ptr %4, i64 0, i32 3
  store i32 8, ptr %5, align 8, !tbaa !72
  %6 = getelementptr inbounds %struct.SpaceSeq, ptr %4, i64 0, i32 11
  store i16 0, ptr %6, align 4, !tbaa !75
  %7 = getelementptr inbounds %struct.SpaceSeq, ptr %4, i64 0, i32 15
  store i32 1, ptr %7, align 8, !tbaa !76
  %8 = getelementptr inbounds %struct.SpaceSeq, ptr %4, i64 0, i32 9
  store i16 1, ptr %8, align 8, !tbaa !77
  %9 = getelementptr inbounds %struct.SpaceSeq, ptr %4, i64 0, i32 13
  store i32 80, ptr %9, align 8, !tbaa !78
  %10 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %11 = tail call ptr %10(i64 noundef 384, ptr noundef nonnull @.str.6) #10
  %12 = getelementptr inbounds %struct.SpaceSeq, ptr %4, i64 0, i32 2
  tail call void @BLI_addtail(ptr noundef nonnull %12, ptr noundef %11) #10
  %13 = getelementptr inbounds %struct.ARegion, ptr %11, i64 0, i32 8
  store i16 1, ptr %13, align 2, !tbaa !38
  %14 = getelementptr inbounds %struct.ARegion, ptr %11, i64 0, i32 9
  store i16 2, ptr %14, align 8, !tbaa !47
  %15 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %16 = tail call ptr %15(i64 noundef 384, ptr noundef nonnull @.str) #10
  tail call void @BLI_addtail(ptr noundef nonnull %12, ptr noundef %16) #10
  %17 = getelementptr inbounds %struct.ARegion, ptr %16, i64 0, i32 8
  store i16 4, ptr %17, align 2, !tbaa !38
  %18 = getelementptr inbounds %struct.ARegion, ptr %16, i64 0, i32 9
  store i16 4, ptr %18, align 8, !tbaa !47
  %19 = getelementptr inbounds %struct.ARegion, ptr %16, i64 0, i32 10
  store i16 1, ptr %19, align 2, !tbaa !48
  %20 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %21 = tail call ptr %20(i64 noundef 384, ptr noundef nonnull @.str.7) #10
  tail call void @BLI_addtail(ptr noundef nonnull %12, ptr noundef %21) #10
  %22 = getelementptr inbounds %struct.ARegion, ptr %21, i64 0, i32 8
  store i16 7, ptr %22, align 2, !tbaa !38
  %23 = getelementptr inbounds %struct.ARegion, ptr %21, i64 0, i32 9
  store i16 1, ptr %23, align 8, !tbaa !47
  %24 = getelementptr inbounds %struct.ARegion, ptr %21, i64 0, i32 10
  %25 = load i16, ptr %24, align 2, !tbaa !48
  %26 = or i16 %25, 1
  store i16 %26, ptr %24, align 2, !tbaa !48
  %27 = getelementptr inbounds %struct.ARegion, ptr %21, i64 0, i32 2
  %28 = getelementptr inbounds %struct.ARegion, ptr %21, i64 0, i32 2, i32 12
  store i16 6, ptr %28, align 2, !tbaa !79
  %29 = getelementptr inbounds %struct.ARegion, ptr %21, i64 0, i32 2, i32 7
  store <2 x float> <float 0x3EE4F8B580000000, float 1.000000e+05>, ptr %29, align 8, !tbaa !80
  store <4 x float> <float -9.600000e+02, float 9.600000e+02, float -5.400000e+02, float 5.400000e+02>, ptr %27, align 8, !tbaa !80
  %30 = getelementptr inbounds %struct.ARegion, ptr %21, i64 0, i32 2, i32 5
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 1.200000e+04, float 1.200000e+04>, ptr %30, align 8, !tbaa !80
  %31 = getelementptr inbounds %struct.ARegion, ptr %21, i64 0, i32 2, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %31, ptr noundef nonnull align 8 dereferenceable(16) %27, i64 16, i1 false), !tbaa.struct !81
  %32 = getelementptr inbounds %struct.ARegion, ptr %21, i64 0, i32 2, i32 15
  store i16 0, ptr %32, align 4, !tbaa !82
  %33 = getelementptr inbounds %struct.ARegion, ptr %21, i64 0, i32 2, i32 11
  store i16 0, ptr %33, align 4, !tbaa !83
  %34 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %35 = tail call ptr %34(i64 noundef 384, ptr noundef nonnull @.str.8) #10
  tail call void @BLI_addtail(ptr noundef nonnull %12, ptr noundef %35) #10
  %36 = getelementptr inbounds %struct.ARegion, ptr %35, i64 0, i32 8
  store i16 0, ptr %36, align 2, !tbaa !38
  %37 = getelementptr inbounds %struct.ARegion, ptr %35, i64 0, i32 2
  store float 0.000000e+00, ptr %37, align 8, !tbaa !84
  %38 = getelementptr inbounds %struct.ARegion, ptr %35, i64 0, i32 2, i32 0, i32 2
  %39 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 22, i32 7
  %40 = load i32, ptr %39, align 8, !tbaa !85
  %41 = sitofp i32 %40 to float
  %42 = getelementptr inbounds %struct.ARegion, ptr %35, i64 0, i32 2, i32 0, i32 1
  store float %41, ptr %42, align 4, !tbaa !104
  store <2 x float> <float 0.000000e+00, float 8.000000e+00>, ptr %38, align 8, !tbaa !80
  %43 = getelementptr inbounds %struct.ARegion, ptr %35, i64 0, i32 2, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %43, ptr noundef nonnull align 8 dereferenceable(16) %37, i64 16, i1 false), !tbaa.struct !81
  %44 = getelementptr inbounds %struct.ARegion, ptr %35, i64 0, i32 2, i32 5
  store <4 x float> <float 1.000000e+01, float 5.000000e-01, float 3.000000e+05, float 3.200000e+01>, ptr %44, align 8, !tbaa !80
  %45 = getelementptr inbounds %struct.ARegion, ptr %35, i64 0, i32 2, i32 7
  store <2 x float> <float 0x3F847AE140000000, float 1.000000e+02>, ptr %45, align 8, !tbaa !80
  %46 = getelementptr inbounds %struct.ARegion, ptr %35, i64 0, i32 2, i32 9
  %47 = load i16, ptr %46, align 8, !tbaa !105
  %48 = or i16 %47, 105
  store i16 %48, ptr %46, align 8, !tbaa !105
  %49 = getelementptr inbounds %struct.ARegion, ptr %35, i64 0, i32 2, i32 12
  store i16 0, ptr %49, align 2, !tbaa !79
  %50 = getelementptr inbounds %struct.ARegion, ptr %35, i64 0, i32 2, i32 11
  store i16 0, ptr %50, align 4, !tbaa !83
  %51 = getelementptr inbounds %struct.ARegion, ptr %35, i64 0, i32 2, i32 15
  store i16 8, ptr %51, align 4, !tbaa !82
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @sequencer_free(ptr nocapture noundef readonly %0) #0 !PGOFuncName !106 {
  %2 = getelementptr inbounds %struct.SpaceSeq, ptr %0, i64 0, i32 18, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !107
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @IMB_freeImBuf(ptr noundef nonnull %3) #10
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.SpaceSeq, ptr %0, i64 0, i32 18, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !108
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void @IMB_freeImBuf(ptr noundef nonnull %8) #10
  br label %11

11:                                               ; preds = %10, %6
  %12 = getelementptr inbounds %struct.SpaceSeq, ptr %0, i64 0, i32 18, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !109
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void @IMB_freeImBuf(ptr noundef nonnull %13) #10
  br label %16

16:                                               ; preds = %15, %11
  %17 = getelementptr inbounds %struct.SpaceSeq, ptr %0, i64 0, i32 18, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !110
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  tail call void @IMB_freeImBuf(ptr noundef nonnull %18) #10
  br label %21

21:                                               ; preds = %20, %16
  %22 = getelementptr inbounds %struct.SpaceSeq, ptr %0, i64 0, i32 18, i32 5
  %23 = load ptr, ptr %22, align 8, !tbaa !111
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  tail call void @IMB_freeImBuf(ptr noundef nonnull %23) #10
  br label %26

26:                                               ; preds = %25, %21
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @sequencer_init(ptr nocapture readnone %0, ptr nocapture readnone %1) #3 !PGOFuncName !112 {
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @sequencer_duplicate(ptr noundef %0) #0 !PGOFuncName !113 {
  %2 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %3 = tail call ptr %2(ptr noundef %0) #10
  %4 = getelementptr inbounds %struct.SpaceSeq, ptr %3, i64 0, i32 18
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %4, i8 0, i64 48, i1 false)
  ret ptr %3
}

; Function Attrs: optsize
declare void @sequencer_operatortypes() #2

; Function Attrs: optsize
declare void @sequencer_keymap(ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @sequencer_context(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !PGOFuncName !114 {
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #10
  %5 = tail call zeroext i8 @CTX_data_dir(ptr noundef %1) #10
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @CTX_data_dir_set(ptr noundef %2, ptr noundef nonnull @sequencer_context_dir) #10
  br label %15

8:                                                ; preds = %3
  %9 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.1) #10
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %8
  %12 = tail call ptr @BKE_sequencer_mask_get(ptr noundef %4) #10
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %11
  tail call void @CTX_data_id_pointer_set(ptr noundef %2, ptr noundef nonnull %12) #10
  br label %15

15:                                               ; preds = %8, %11, %14, %7
  %16 = phi i32 [ 1, %7 ], [ 1, %14 ], [ 1, %11 ], [ 0, %8 ]
  ret i32 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @sequencer_dropboxes() #0 !PGOFuncName !115 {
  %1 = tail call ptr @WM_dropboxmap_find(ptr noundef nonnull @.str.3, i32 noundef 8, i32 noundef 0) #10
  %2 = tail call ptr @WM_dropbox_add(ptr noundef %1, ptr noundef nonnull @.str.9, ptr noundef nonnull @image_drop_poll, ptr noundef nonnull @sequencer_drop_copy) #10
  %3 = tail call ptr @WM_dropbox_add(ptr noundef %1, ptr noundef nonnull @.str.10, ptr noundef nonnull @movie_drop_poll, ptr noundef nonnull @sequencer_drop_copy) #10
  %4 = tail call ptr @WM_dropbox_add(ptr noundef %1, ptr noundef nonnull @.str.11, ptr noundef nonnull @sound_drop_poll, ptr noundef nonnull @sequencer_drop_copy) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @sequencer_refresh(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !116 {
  %3 = tail call ptr @CTX_wm_manager(ptr noundef %0) #10
  %4 = tail call ptr @CTX_wm_window(ptr noundef %0) #10
  %5 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !117
  %7 = tail call fastcc ptr @sequencer_find_region(ptr noundef %1, i16 noundef signext 0) #11
  %8 = tail call fastcc ptr @sequencer_find_region(ptr noundef %1, i16 noundef signext 7) #11
  %9 = getelementptr inbounds %struct.SpaceSeq, ptr %6, i64 0, i32 15
  %10 = load i32, ptr %9, align 8, !tbaa !76
  switch i32 %10, label %188 [
    i32 1, label %11
    i32 2, label %51
    i32 3, label %93
  ]

11:                                               ; preds = %2
  %12 = icmp eq ptr %7, null
  br i1 %12, label %23, label %13

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 10
  %15 = load i16, ptr %14, align 2, !tbaa !48
  %16 = and i16 %15, 1
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %13
  %19 = and i16 %15, -2
  store i16 %19, ptr %14, align 2, !tbaa !48
  %20 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 2, i32 14
  %21 = load i16, ptr %20, align 2, !tbaa !119
  %22 = and i16 %21, -1025
  store i16 %22, ptr %20, align 2, !tbaa !119
  br label %23

23:                                               ; preds = %18, %13, %11
  %24 = phi i8 [ 1, %18 ], [ 0, %13 ], [ 0, %11 ]
  %25 = icmp eq ptr %8, null
  br i1 %25, label %37, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.ARegion, ptr %8, i64 0, i32 10
  %28 = load i16, ptr %27, align 2, !tbaa !48
  %29 = and i16 %28, 1
  %30 = icmp eq i16 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = or disjoint i16 %28, 1
  store i16 %32, ptr %27, align 2, !tbaa !48
  %33 = getelementptr inbounds %struct.ARegion, ptr %8, i64 0, i32 2, i32 14
  %34 = load i16, ptr %33, align 2, !tbaa !119
  %35 = and i16 %34, -1025
  store i16 %35, ptr %33, align 2, !tbaa !119
  %36 = getelementptr inbounds %struct.ARegion, ptr %8, i64 0, i32 26
  tail call void @WM_event_remove_handlers(ptr noundef %0, ptr noundef nonnull %36) #10
  br label %37

37:                                               ; preds = %31, %26, %23
  %38 = phi i8 [ %24, %26 ], [ 1, %31 ], [ %24, %23 ]
  br i1 %12, label %44, label %39

39:                                               ; preds = %37
  %40 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 9
  %41 = load i16, ptr %40, align 8, !tbaa !47
  %42 = icmp eq i16 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %39
  store i16 0, ptr %40, align 8, !tbaa !47
  br label %44

44:                                               ; preds = %43, %39, %37
  %45 = phi i8 [ 1, %43 ], [ %38, %39 ], [ %38, %37 ]
  br i1 %25, label %184, label %46

46:                                               ; preds = %44
  %47 = getelementptr inbounds %struct.ARegion, ptr %8, i64 0, i32 9
  %48 = load i16, ptr %47, align 8, !tbaa !47
  %49 = icmp eq i16 %48, 0
  br i1 %49, label %184, label %50

50:                                               ; preds = %46
  store i16 0, ptr %47, align 8, !tbaa !47
  br label %187

51:                                               ; preds = %2
  %52 = icmp eq ptr %7, null
  br i1 %52, label %64, label %53

53:                                               ; preds = %51
  %54 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 10
  %55 = load i16, ptr %54, align 2, !tbaa !48
  %56 = and i16 %55, 1
  %57 = icmp eq i16 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %53
  %59 = or disjoint i16 %55, 1
  store i16 %59, ptr %54, align 2, !tbaa !48
  %60 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 2, i32 14
  %61 = load i16, ptr %60, align 2, !tbaa !119
  %62 = and i16 %61, -1025
  store i16 %62, ptr %60, align 2, !tbaa !119
  %63 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 26
  tail call void @WM_event_remove_handlers(ptr noundef %0, ptr noundef nonnull %63) #10
  br label %64

64:                                               ; preds = %58, %53, %51
  %65 = phi i8 [ 0, %53 ], [ 1, %58 ], [ 0, %51 ]
  %66 = icmp eq ptr %8, null
  br i1 %66, label %79, label %67

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.ARegion, ptr %8, i64 0, i32 10
  %69 = load i16, ptr %68, align 2, !tbaa !48
  %70 = and i16 %69, 1
  %71 = icmp eq i16 %70, 0
  br i1 %71, label %79, label %72

72:                                               ; preds = %67
  %73 = and i16 %69, -2
  store i16 %73, ptr %68, align 2, !tbaa !48
  %74 = getelementptr inbounds %struct.ARegion, ptr %8, i64 0, i32 2
  %75 = getelementptr inbounds %struct.ARegion, ptr %8, i64 0, i32 2, i32 14
  %76 = load i16, ptr %75, align 2, !tbaa !119
  %77 = and i16 %76, -1025
  store i16 %77, ptr %75, align 2, !tbaa !119
  %78 = getelementptr inbounds %struct.ARegion, ptr %8, i64 0, i32 2, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %78, ptr noundef nonnull align 8 dereferenceable(16) %74, i64 16, i1 false), !tbaa.struct !81
  br label %79

79:                                               ; preds = %72, %67, %64
  %80 = phi i8 [ 1, %72 ], [ %65, %67 ], [ %65, %64 ]
  br i1 %52, label %86, label %81

81:                                               ; preds = %79
  %82 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 9
  %83 = load i16, ptr %82, align 8, !tbaa !47
  %84 = icmp eq i16 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %81
  store i16 0, ptr %82, align 8, !tbaa !47
  br label %86

86:                                               ; preds = %85, %81, %79
  %87 = phi i8 [ 1, %85 ], [ %80, %81 ], [ %80, %79 ]
  br i1 %66, label %184, label %88

88:                                               ; preds = %86
  %89 = getelementptr inbounds %struct.ARegion, ptr %8, i64 0, i32 9
  %90 = load i16, ptr %89, align 8, !tbaa !47
  %91 = icmp eq i16 %90, 0
  br i1 %91, label %184, label %92

92:                                               ; preds = %88
  store i16 0, ptr %89, align 8, !tbaa !47
  br label %187

93:                                               ; preds = %2
  %94 = icmp ne ptr %7, null
  %95 = icmp ne ptr %8, null
  %96 = select i1 %94, i1 %95, i1 false
  br i1 %96, label %97, label %188

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 11
  %99 = load i16, ptr %98, align 4, !tbaa !120
  %100 = sext i16 %99 to i32
  %101 = tail call i32 @ED_area_headersize() #10
  %102 = sub nsw i32 %100, %101
  %103 = sitofp i32 %102 to float
  %104 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !121
  %105 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !125
  %106 = sitofp i32 %105 to float
  %107 = fmul float %104, %106
  %108 = fdiv float %107, 7.200000e+01
  %109 = fdiv float %103, %108
  %110 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 10
  %111 = load i16, ptr %110, align 2, !tbaa !48
  %112 = and i16 %111, 1
  %113 = icmp eq i16 %112, 0
  br i1 %113, label %126, label %114

114:                                              ; preds = %97
  %115 = and i16 %111, -2
  store i16 %115, ptr %110, align 2, !tbaa !48
  %116 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 2, i32 14
  %117 = load i16, ptr %116, align 2, !tbaa !119
  %118 = and i16 %117, -1025
  store i16 %118, ptr %116, align 2, !tbaa !119
  %119 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 13
  %120 = load i16, ptr %119, align 2, !tbaa !126
  %121 = sitofp i16 %120 to float
  %122 = fsub float %109, %121
  %123 = fptosi float %122 to i32
  %124 = trunc i32 %123 to i16
  %125 = getelementptr inbounds %struct.ARegion, ptr %8, i64 0, i32 13
  store i16 %124, ptr %125, align 2, !tbaa !126
  br label %126

126:                                              ; preds = %114, %97
  %127 = phi i8 [ 1, %114 ], [ 0, %97 ]
  %128 = getelementptr inbounds %struct.ARegion, ptr %8, i64 0, i32 10
  %129 = load i16, ptr %128, align 2, !tbaa !48
  %130 = and i16 %129, 1
  %131 = icmp eq i16 %130, 0
  br i1 %131, label %146, label %132

132:                                              ; preds = %126
  %133 = and i16 %129, -2
  store i16 %133, ptr %128, align 2, !tbaa !48
  %134 = getelementptr inbounds %struct.ARegion, ptr %8, i64 0, i32 2
  %135 = getelementptr inbounds %struct.ARegion, ptr %8, i64 0, i32 2, i32 14
  %136 = load i16, ptr %135, align 2, !tbaa !119
  %137 = and i16 %136, -1025
  store i16 %137, ptr %135, align 2, !tbaa !119
  %138 = getelementptr inbounds %struct.ARegion, ptr %8, i64 0, i32 2, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %138, ptr noundef nonnull align 8 dereferenceable(16) %134, i64 16, i1 false), !tbaa.struct !81
  %139 = getelementptr inbounds %struct.ARegion, ptr %8, i64 0, i32 13
  %140 = load i16, ptr %139, align 2, !tbaa !126
  %141 = sitofp i16 %140 to float
  %142 = fsub float %109, %141
  %143 = fptosi float %142 to i32
  %144 = trunc i32 %143 to i16
  %145 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 13
  store i16 %144, ptr %145, align 2, !tbaa !126
  br label %146

146:                                              ; preds = %132, %126
  %147 = phi i8 [ 1, %132 ], [ %127, %126 ]
  %148 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 9
  %149 = load i16, ptr %148, align 8, !tbaa !47
  %150 = icmp eq i16 %149, 0
  br i1 %150, label %152, label %151

151:                                              ; preds = %146
  store i16 0, ptr %148, align 8, !tbaa !47
  br label %152

152:                                              ; preds = %151, %146
  %153 = phi i8 [ 1, %151 ], [ %147, %146 ]
  %154 = getelementptr inbounds %struct.ARegion, ptr %8, i64 0, i32 9
  %155 = load i16, ptr %154, align 8, !tbaa !47
  %156 = icmp eq i16 %155, 1
  br i1 %156, label %158, label %157

157:                                              ; preds = %152
  store i16 1, ptr %154, align 8, !tbaa !47
  br label %158

158:                                              ; preds = %157, %152
  %159 = phi i8 [ 1, %157 ], [ %153, %152 ]
  %160 = getelementptr inbounds %struct.ARegion, ptr %8, i64 0, i32 13
  %161 = load i16, ptr %160, align 2, !tbaa !126
  %162 = sext i16 %161 to i32
  %163 = icmp slt i16 %161, 10
  br i1 %163, label %173, label %164

164:                                              ; preds = %158
  %165 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 13
  %166 = load i16, ptr %165, align 2, !tbaa !126
  %167 = icmp slt i16 %166, 10
  br i1 %167, label %173, label %168

168:                                              ; preds = %164
  %169 = zext nneg i16 %166 to i32
  %170 = add nuw nsw i32 %169, %162
  %171 = sitofp i32 %170 to float
  %172 = fcmp olt float %109, %171
  br i1 %172, label %173, label %184

173:                                              ; preds = %168, %164, %158
  %174 = tail call float @llvm.fmuladd.f32(float %109, float 0x3FD99999A0000000, float 5.000000e-01)
  %175 = fptosi float %174 to i32
  %176 = trunc i32 %175 to i16
  store i16 %176, ptr %160, align 2, !tbaa !126
  %177 = shl i32 %175, 16
  %178 = ashr exact i32 %177, 16
  %179 = sitofp i32 %178 to float
  %180 = fsub float %109, %179
  %181 = fptosi float %180 to i32
  %182 = trunc i32 %181 to i16
  %183 = getelementptr inbounds %struct.ARegion, ptr %7, i64 0, i32 13
  store i16 %182, ptr %183, align 2, !tbaa !126
  br label %187

184:                                              ; preds = %168, %86, %88, %44, %46
  %185 = phi i8 [ %87, %88 ], [ %87, %86 ], [ %45, %46 ], [ %45, %44 ], [ %159, %168 ]
  %186 = icmp eq i8 %185, 0
  br i1 %186, label %188, label %187

187:                                              ; preds = %173, %50, %92, %184
  tail call void @ED_area_initialize(ptr noundef %3, ptr noundef %4, ptr noundef nonnull %1) #10
  tail call void @ED_area_tag_redraw(ptr noundef nonnull %1) #10
  br label %188

188:                                              ; preds = %93, %2, %187, %184
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @sequencer_listener(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #4 !PGOFuncName !127 {
  %4 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 5
  %5 = load i32, ptr %4, align 4, !tbaa !128
  switch i32 %5, label %14 [
    i32 67108864, label %6
    i32 33554432, label %9
    i32 251658240, label %9
  ]

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 6
  %8 = load i32, ptr %7, align 8, !tbaa !130
  switch i32 %8, label %14 [
    i32 196608, label %13
    i32 393216, label %13
  ]

9:                                                ; preds = %3, %3
  %10 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 6
  %11 = load i32, ptr %10, align 8, !tbaa !130
  %12 = icmp eq i32 %11, 1048576
  br i1 %12, label %13, label %14

13:                                               ; preds = %9, %6, %6
  tail call fastcc void @sequencer_scopes_tag_refresh(ptr noundef %1) #11
  br label %14

14:                                               ; preds = %13, %9, %6, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @sequencer_main_area_init(ptr nocapture noundef readonly %0, ptr noundef %1) #0 !PGOFuncName !131 {
  %3 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  %4 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 5
  %5 = load i16, ptr %4, align 8, !tbaa !132
  %6 = sext i16 %5 to i32
  %7 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 6
  %8 = load i16, ptr %7, align 2, !tbaa !133
  %9 = sext i16 %8 to i32
  tail call void @UI_view2d_region_reinit(ptr noundef nonnull %3, i16 noundef signext -1, i32 noundef %6, i32 noundef %9) #10
  %10 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 14
  %11 = load ptr, ptr %10, align 8, !tbaa !134
  %12 = tail call ptr @WM_keymap_find(ptr noundef %11, ptr noundef nonnull @.str.16, i32 noundef 8, i32 noundef 0) #10
  %13 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 26
  %14 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 4
  %15 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3
  %16 = tail call ptr @WM_event_add_keymap_handler_bb(ptr noundef nonnull %13, ptr noundef %12, ptr noundef nonnull %14, ptr noundef nonnull %15) #10
  %17 = load ptr, ptr %10, align 8, !tbaa !134
  %18 = tail call ptr @WM_keymap_find(ptr noundef %17, ptr noundef nonnull @.str.3, i32 noundef 8, i32 noundef 0) #10
  %19 = tail call ptr @WM_event_add_keymap_handler_bb(ptr noundef nonnull %13, ptr noundef %18, ptr noundef nonnull %14, ptr noundef nonnull %15) #10
  %20 = tail call ptr @WM_dropboxmap_find(ptr noundef nonnull @.str.3, i32 noundef 8, i32 noundef 0) #10
  %21 = tail call ptr @WM_event_add_dropbox_handler(ptr noundef nonnull %13, ptr noundef %20) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @sequencer_main_area_draw(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !137 {
  tail call void @draw_timeline_seq(ptr noundef %0, ptr noundef %1) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @sequencer_main_area_listener(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr noundef %2, ptr nocapture noundef readonly %3) #0 !PGOFuncName !138 {
  %5 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 5
  %6 = load i32, ptr %5, align 4, !tbaa !128
  switch i32 %6, label %22 [
    i32 67108864, label %7
    i32 251658240, label %10
    i32 301989888, label %14
    i32 50331648, label %18
  ]

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %9 = load i32, ptr %8, align 8, !tbaa !130
  switch i32 %9, label %22 [
    i32 196608, label %21
    i32 1114112, label %21
    i32 131072, label %21
    i32 262144, label %21
    i32 393216, label %21
    i32 786432, label %21
  ]

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %12 = load i32, ptr %11, align 8, !tbaa !130
  %13 = icmp eq i32 %12, 1048576
  br i1 %13, label %21, label %22

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 8
  %16 = load i32, ptr %15, align 8, !tbaa !139
  %17 = icmp eq i32 %16, 5
  br i1 %17, label %21, label %22

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %20 = load i32, ptr %19, align 8, !tbaa !130
  switch i32 %20, label %22 [
    i32 196608, label %21
    i32 262144, label %21
  ]

21:                                               ; preds = %18, %18, %14, %10, %7, %7, %7, %7, %7, %7
  tail call void @ED_region_tag_redraw(ptr noundef %2) #10
  br label %22

22:                                               ; preds = %21, %18, %14, %10, %7, %4
  ret void
}

; Function Attrs: optsize
declare void @BLI_addhead(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @sequencer_preview_area_init(ptr nocapture noundef readonly %0, ptr noundef %1) #0 !PGOFuncName !140 {
  %3 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  %4 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 5
  %5 = load i16, ptr %4, align 8, !tbaa !132
  %6 = sext i16 %5 to i32
  %7 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 6
  %8 = load i16, ptr %7, align 2, !tbaa !133
  %9 = sext i16 %8 to i32
  tail call void @UI_view2d_region_reinit(ptr noundef nonnull %3, i16 noundef signext -1, i32 noundef %6, i32 noundef %9) #10
  %10 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 14
  %11 = load ptr, ptr %10, align 8, !tbaa !134
  %12 = tail call ptr @WM_keymap_find(ptr noundef %11, ptr noundef nonnull @.str.16, i32 noundef 8, i32 noundef 0) #10
  %13 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 26
  %14 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 4
  %15 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3
  %16 = tail call ptr @WM_event_add_keymap_handler_bb(ptr noundef nonnull %13, ptr noundef %12, ptr noundef nonnull %14, ptr noundef nonnull %15) #10
  %17 = load ptr, ptr %10, align 8, !tbaa !134
  %18 = tail call ptr @WM_keymap_find(ptr noundef %17, ptr noundef nonnull @.str.17, i32 noundef 8, i32 noundef 0) #10
  %19 = tail call ptr @WM_event_add_keymap_handler_bb(ptr noundef nonnull %13, ptr noundef %18, ptr noundef nonnull %14, ptr noundef nonnull %15) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @sequencer_preview_area_draw(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !141 {
  %3 = alloca %struct.rcti, align 4
  %4 = tail call ptr @CTX_wm_area(ptr noundef %0) #10
  %5 = getelementptr inbounds %struct.ScrArea, ptr %4, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !117
  %7 = tail call ptr @CTX_data_scene(ptr noundef %0) #10
  %8 = tail call ptr @CTX_wm_manager(ptr noundef %0) #10
  %9 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !142
  %11 = icmp eq ptr %10, null
  br i1 %11, label %21, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.Editing, ptr %10, i64 0, i32 8
  %14 = load i32, ptr %13, align 8, !tbaa !143
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.SpaceSeq, ptr %6, i64 0, i32 9
  %19 = load i16, ptr %18, align 8, !tbaa !77
  %20 = icmp eq i16 %19, 1
  br label %21

21:                                               ; preds = %17, %12, %2
  %22 = phi i1 [ false, %12 ], [ false, %2 ], [ %20, %17 ]
  %23 = getelementptr inbounds %struct.SpaceSeq, ptr %6, i64 0, i32 9
  %24 = load i16, ptr %23, align 8, !tbaa !77
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i16 1, ptr %23, align 8, !tbaa !77
  br label %27

27:                                               ; preds = %26, %21
  br i1 %22, label %28, label %32

28:                                               ; preds = %27
  %29 = getelementptr inbounds %struct.SpaceSeq, ptr %6, i64 0, i32 16
  %30 = load i32, ptr %29, align 4, !tbaa !145
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %40, label %35

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 22, i32 5
  %34 = load i32, ptr %33, align 8, !tbaa !146
  tail call void @draw_image_seq(ptr noundef %0, ptr noundef nonnull %7, ptr noundef %1, ptr noundef nonnull %6, i32 noundef %34, i32 noundef 0, i8 noundef zeroext 0) #10
  br label %66

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 22, i32 5
  %37 = load i32, ptr %36, align 8, !tbaa !146
  tail call void @draw_image_seq(ptr noundef %0, ptr noundef nonnull %7, ptr noundef %1, ptr noundef nonnull %6, i32 noundef %37, i32 noundef 0, i8 noundef zeroext 0) #10
  %38 = load i32, ptr %29, align 4, !tbaa !145
  %39 = icmp eq i32 %38, 2
  br i1 %39, label %66, label %40

40:                                               ; preds = %28, %35
  %41 = phi i32 [ %38, %35 ], [ 1, %28 ]
  %42 = load ptr, ptr %9, align 8, !tbaa !142
  %43 = getelementptr inbounds %struct.Editing, ptr %42, i64 0, i32 8
  %44 = load i32, ptr %43, align 8, !tbaa !143
  %45 = and i32 %44, 2
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %40
  %48 = getelementptr inbounds %struct.Editing, ptr %42, i64 0, i32 7
  %49 = load i32, ptr %48, align 4, !tbaa !147
  %50 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 22, i32 5
  %51 = load i32, ptr %50, align 8, !tbaa !146
  br label %58

52:                                               ; preds = %40
  %53 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 22, i32 5
  %54 = load i32, ptr %53, align 8, !tbaa !146
  %55 = getelementptr inbounds %struct.Editing, ptr %42, i64 0, i32 6
  %56 = load i32, ptr %55, align 8, !tbaa !148
  %57 = add nsw i32 %56, %54
  br label %58

58:                                               ; preds = %52, %47
  %59 = phi i32 [ %51, %47 ], [ %54, %52 ]
  %60 = phi i32 [ %49, %47 ], [ %57, %52 ]
  %61 = icmp eq i32 %60, %59
  %62 = icmp eq i32 %41, 0
  %63 = and i1 %62, %61
  br i1 %63, label %66, label %64

64:                                               ; preds = %58
  %65 = sub nsw i32 %60, %59
  tail call void @draw_image_seq(ptr noundef %0, ptr noundef nonnull %7, ptr noundef %1, ptr noundef nonnull %6, i32 noundef %59, i32 noundef %65, i8 noundef zeroext 1) #10
  br label %66

66:                                               ; preds = %58, %32, %64, %35
  %67 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !149
  %68 = and i32 %67, 2097152
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %66
  %71 = tail call ptr @ED_screen_animation_playing(ptr noundef %8) #10
  %72 = icmp eq ptr %71, null
  br i1 %72, label %74, label %73

73:                                               ; preds = %70
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #12
  call void @ED_region_visible_rect(ptr noundef %1, ptr noundef nonnull %3) #10
  call void @ED_scene_draw_fps(ptr noundef nonnull %7, ptr noundef nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #12
  br label %74

74:                                               ; preds = %73, %70, %66
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @sequencer_preview_area_listener(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr noundef %2, ptr nocapture noundef readonly %3) #0 !PGOFuncName !150 {
  %5 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 5
  %6 = load i32, ptr %5, align 4, !tbaa !128
  switch i32 %6, label %29 [
    i32 369098752, label %7
    i32 67108864, label %11
    i32 251658240, label %16
    i32 301989888, label %20
    i32 352321536, label %24
  ]

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 8
  %9 = load i32, ptr %8, align 8, !tbaa !139
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %28, label %29

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %13 = load i32, ptr %12, align 8, !tbaa !130
  %14 = add i32 %13, -131072
  %15 = tail call i32 @llvm.fshl.i32(i32 %14, i32 %14, i32 16)
  switch i32 %15, label %29 [
    i32 1, label %28
    i32 0, label %28
    i32 4, label %28
    i32 2, label %28
  ]

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %18 = load i32, ptr %17, align 8, !tbaa !130
  %19 = icmp eq i32 %18, 1048576
  br i1 %19, label %28, label %29

20:                                               ; preds = %4
  %21 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %22 = load i32, ptr %21, align 8, !tbaa !130
  %23 = icmp eq i32 %22, 5
  br i1 %23, label %28, label %29

24:                                               ; preds = %4
  %25 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 8
  %26 = load i32, ptr %25, align 8, !tbaa !139
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %29

28:                                               ; preds = %24, %20, %16, %11, %11, %11, %11, %7
  tail call void @ED_region_tag_redraw(ptr noundef %2) #10
  br label %29

29:                                               ; preds = %28, %24, %20, %16, %11, %7, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @sequencer_buttons_area_listener(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr noundef %2, ptr nocapture noundef readonly %3) #0 !PGOFuncName !151 {
  %5 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 5
  %6 = load i32, ptr %5, align 4, !tbaa !128
  switch i32 %6, label %23 [
    i32 369098752, label %7
    i32 67108864, label %11
    i32 251658240, label %14
    i32 301989888, label %18
  ]

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %9 = load i32, ptr %8, align 8, !tbaa !130
  %10 = icmp eq i32 %9, 5963776
  br i1 %10, label %22, label %23

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %13 = load i32, ptr %12, align 8, !tbaa !130
  switch i32 %13, label %23 [
    i32 196608, label %22
    i32 393216, label %22
  ]

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %16 = load i32, ptr %15, align 8, !tbaa !130
  %17 = icmp eq i32 %16, 1048576
  br i1 %17, label %22, label %23

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 8
  %20 = load i32, ptr %19, align 8, !tbaa !139
  %21 = icmp eq i32 %20, 5
  br i1 %21, label %22, label %23

22:                                               ; preds = %18, %14, %11, %11, %7
  tail call void @ED_region_tag_redraw(ptr noundef %2) #10
  br label %23

23:                                               ; preds = %22, %18, %14, %11, %7, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @sequencer_buttons_area_init(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !152 {
  %3 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 14
  %4 = load ptr, ptr %3, align 8, !tbaa !134
  %5 = tail call ptr @WM_keymap_find(ptr noundef %4, ptr noundef nonnull @.str.16, i32 noundef 8, i32 noundef 0) #10
  %6 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 26
  %7 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 4
  %8 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3
  %9 = tail call ptr @WM_event_add_keymap_handler_bb(ptr noundef nonnull %6, ptr noundef %5, ptr noundef nonnull %7, ptr noundef nonnull %8) #10
  tail call void @ED_region_panels_init(ptr noundef %0, ptr noundef %1) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @sequencer_buttons_area_draw(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !153 {
  tail call void @ED_region_panels(ptr noundef %0, ptr noundef %1, i32 noundef 1, ptr noundef null, i32 noundef -1) #10
  ret void
}

; Function Attrs: optsize
declare void @sequencer_buttons_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @sequencer_header_area_init(ptr nocapture readnone %0, ptr noundef %1) #0 !PGOFuncName !154 {
  tail call void @ED_region_header_init(ptr noundef %1) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @sequencer_header_area_draw(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !155 {
  tail call void @ED_region_header(ptr noundef %0, ptr noundef %1) #10
  ret void
}

; Function Attrs: optsize
declare void @BKE_spacetype_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ED_view3d_draw_offscreen_imbuf_simple(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, ptr noundef) #2

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: optsize
declare void @IMB_freeImBuf(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: optsize
declare zeroext i8 @CTX_data_dir(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @CTX_data_dir_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @CTX_data_equals(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_sequencer_mask_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @CTX_data_id_pointer_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @WM_dropboxmap_find(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @WM_dropbox_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @image_drop_poll(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 !PGOFuncName !156 {
  %4 = alloca i32, align 4
  %5 = tail call ptr @CTX_wm_region(ptr noundef %0) #10
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  %7 = getelementptr inbounds %struct.wmDrag, ptr %1, i64 0, i32 3
  %8 = load i32, ptr %7, align 4, !tbaa !157
  %9 = icmp eq i32 %8, 2
  br i1 %9, label %10, label %18

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.wmDrag, ptr %1, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !160
  switch i32 %12, label %18 [
    i32 696, label %13
    i32 694, label %13
  ]

13:                                               ; preds = %10, %10
  %14 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 2
  %15 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %16 = call ptr @find_nearest_seq(ptr noundef %6, ptr noundef nonnull %14, ptr noundef nonnull %4, ptr noundef nonnull %15) #10
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %10, %13, %3
  br label %19

19:                                               ; preds = %13, %18
  %20 = phi i32 [ 0, %18 ], [ 1, %13 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  ret i32 %20
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @sequencer_drop_copy(ptr noundef %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !161 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = alloca [1024 x i8], align 16
  %5 = alloca [1024 x i8], align 16
  %6 = getelementptr inbounds %struct.wmDropBox, ptr %1, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !162
  %8 = tail call ptr @RNA_struct_find_property(ptr noundef %7, ptr noundef nonnull @.str.12) #10
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load ptr, ptr %6, align 8, !tbaa !162
  %12 = getelementptr inbounds %struct.wmDrag, ptr %0, i64 0, i32 5
  tail call void @RNA_string_set(ptr noundef %11, ptr noundef nonnull @.str.12, ptr noundef nonnull %12) #10
  br label %13

13:                                               ; preds = %10, %2
  %14 = load ptr, ptr %6, align 8, !tbaa !162
  %15 = tail call ptr @RNA_struct_find_property(ptr noundef %14, ptr noundef nonnull @.str.13) #10
  %16 = icmp eq ptr %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #12
  %18 = getelementptr inbounds %struct.wmDrag, ptr %0, i64 0, i32 5
  call void @BLI_split_dirfile(ptr noundef nonnull %18, ptr noundef nonnull %4, ptr noundef nonnull %5, i64 noundef 1024, i64 noundef 1024) #10
  %19 = load ptr, ptr %6, align 8, !tbaa !162
  call void @RNA_string_set(ptr noundef %19, ptr noundef nonnull @.str.13, ptr noundef nonnull %4) #10
  %20 = load ptr, ptr %6, align 8, !tbaa !162
  call void @RNA_collection_clear(ptr noundef %20, ptr noundef nonnull @.str.14) #10
  %21 = load ptr, ptr %6, align 8, !tbaa !162
  call void @RNA_collection_add(ptr noundef %21, ptr noundef nonnull @.str.14, ptr noundef nonnull %3) #10
  call void @RNA_string_set(ptr noundef nonnull %3, ptr noundef nonnull @.str.15, ptr noundef nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #12
  br label %22

22:                                               ; preds = %17, %13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @movie_drop_poll(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 !PGOFuncName !164 {
  %4 = alloca i32, align 4
  %5 = tail call ptr @CTX_wm_region(ptr noundef %0) #10
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  %7 = getelementptr inbounds %struct.wmDrag, ptr %1, i64 0, i32 3
  %8 = load i32, ptr %7, align 4, !tbaa !157
  %9 = icmp eq i32 %8, 2
  br i1 %9, label %10, label %18

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.wmDrag, ptr %1, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !160
  switch i32 %12, label %18 [
    i32 0, label %13
    i32 697, label %13
    i32 694, label %13
  ]

13:                                               ; preds = %10, %10, %10
  %14 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 2
  %15 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %16 = call ptr @find_nearest_seq(ptr noundef %6, ptr noundef nonnull %14, ptr noundef nonnull %4, ptr noundef nonnull %15) #10
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %10, %13, %3
  br label %19

19:                                               ; preds = %13, %18
  %20 = phi i32 [ 0, %18 ], [ 1, %13 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  ret i32 %20
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @sound_drop_poll(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 !PGOFuncName !165 {
  %4 = alloca i32, align 4
  %5 = tail call ptr @CTX_wm_region(ptr noundef %0) #10
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  %7 = getelementptr inbounds %struct.wmDrag, ptr %1, i64 0, i32 3
  %8 = load i32, ptr %7, align 4, !tbaa !157
  %9 = icmp eq i32 %8, 2
  br i1 %9, label %10, label %18

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.wmDrag, ptr %1, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !160
  switch i32 %12, label %18 [
    i32 699, label %13
    i32 694, label %13
  ]

13:                                               ; preds = %10, %10
  %14 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 2
  %15 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %16 = call ptr @find_nearest_seq(ptr noundef %6, ptr noundef nonnull %14, ptr noundef nonnull %4, ptr noundef nonnull %15) #10
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %10, %13, %3
  br label %19

19:                                               ; preds = %13, %18
  %20 = phi i32 [ 0, %18 ], [ 1, %13 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  ret i32 %20
}

; Function Attrs: optsize
declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @find_nearest_seq(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @RNA_struct_find_property(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_string_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_split_dirfile(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_collection_clear(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @RNA_collection_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_manager(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_window(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @sequencer_find_region(ptr nocapture noundef readonly %0, i16 noundef signext %1) unnamed_addr #7 !PGOFuncName !166 {
  %3 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 20
  br label %4

4:                                                ; preds = %8, %2
  %5 = phi ptr [ %3, %2 ], [ %6, %8 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.ARegion, ptr %6, i64 0, i32 8
  %10 = load i16, ptr %9, align 2, !tbaa !38
  %11 = icmp eq i16 %10, %1
  br i1 %11, label %12, label %4, !llvm.loop !167

12:                                               ; preds = %4, %8
  ret ptr %6
}

; Function Attrs: optsize
declare void @WM_event_remove_handlers(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @ED_area_headersize() local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #8

; Function Attrs: optsize
declare void @ED_area_initialize(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_area_tag_redraw(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @sequencer_scopes_tag_refresh(ptr nocapture noundef readonly %0) unnamed_addr #4 !PGOFuncName !169 {
  %2 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 19
  %3 = load ptr, ptr %2, align 8, !tbaa !117
  %4 = getelementptr inbounds %struct.SpaceSeq, ptr %3, i64 0, i32 18
  store ptr null, ptr %4, align 8, !tbaa !170
  ret void
}

; Function Attrs: optsize
declare void @UI_view2d_region_reinit(ptr noundef, i16 noundef signext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @WM_keymap_find(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @WM_event_add_keymap_handler_bb(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @WM_event_add_dropbox_handler(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @draw_timeline_seq(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_region_tag_redraw(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @draw_image_seq(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @ED_screen_animation_playing(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_region_visible_rect(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_scene_draw_fps(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_region_panels_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_region_panels(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_region_header_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_region_header(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #9

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind optsize }
attributes #11 = { optsize }
attributes #12 = { nounwind }

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
!34 = !{!35, !35, i64 0}
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !{!39, !45, i64 214}
!39 = !{!"ARegion", !35, i64 0, !35, i64 8, !40, i64 16, !43, i64 176, !43, i64 192, !45, i64 208, !45, i64 210, !45, i64 212, !45, i64 214, !45, i64 216, !45, i64 218, !42, i64 220, !45, i64 224, !45, i64 226, !45, i64 228, !45, i64 230, !45, i64 232, !45, i64 234, !45, i64 236, !45, i64 238, !35, i64 240, !46, i64 248, !46, i64 264, !46, i64 280, !46, i64 296, !46, i64 312, !46, i64 328, !46, i64 344, !35, i64 360, !35, i64 368, !35, i64 376}
!40 = !{!"View2D", !41, i64 0, !41, i64 16, !43, i64 32, !43, i64 48, !43, i64 64, !36, i64 80, !36, i64 88, !42, i64 96, !42, i64 100, !45, i64 104, !45, i64 106, !45, i64 108, !45, i64 110, !45, i64 112, !45, i64 114, !45, i64 116, !45, i64 118, !45, i64 120, !45, i64 122, !45, i64 124, !45, i64 126, !35, i64 128, !44, i64 136, !44, i64 140, !35, i64 144, !35, i64 152}
!41 = !{!"rctf", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12}
!42 = !{!"float", !36, i64 0}
!43 = !{!"rcti", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12}
!44 = !{!"int", !36, i64 0}
!45 = !{!"short", !36, i64 0}
!46 = !{!"ListBase", !35, i64 0, !35, i64 8}
!47 = !{!39, !45, i64 216}
!48 = !{!39, !45, i64 218}
!49 = !{!50, !44, i64 80}
!50 = !{!"SpaceType", !35, i64 0, !35, i64 8, !36, i64 16, !44, i64 80, !44, i64 84, !35, i64 88, !35, i64 96, !35, i64 104, !35, i64 112, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !35, i64 152, !35, i64 160, !35, i64 168, !46, i64 176, !46, i64 192, !44, i64 208}
!51 = !{!50, !35, i64 88}
!52 = !{!50, !35, i64 96}
!53 = !{!50, !35, i64 104}
!54 = !{!50, !35, i64 136}
!55 = !{!50, !35, i64 144}
!56 = !{!50, !35, i64 152}
!57 = !{!50, !35, i64 168}
!58 = !{!50, !35, i64 160}
!59 = !{!50, !35, i64 128}
!60 = !{!50, !35, i64 120}
!61 = !{!62, !44, i64 16}
!62 = !{!"ARegionType", !35, i64 0, !35, i64 8, !44, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !35, i64 72, !35, i64 80, !35, i64 88, !35, i64 96, !46, i64 104, !46, i64 120, !46, i64 136, !44, i64 152, !44, i64 156, !44, i64 160, !44, i64 164, !44, i64 168, !45, i64 172, !45, i64 174, !45, i64 176}
!63 = !{!62, !35, i64 24}
!64 = !{!62, !35, i64 40}
!65 = !{!62, !35, i64 48}
!66 = !{!62, !44, i64 168}
!67 = !{!62, !44, i64 160}
!68 = !{!62, !44, i64 164}
!69 = !{!70, !36, i64 2081}
!70 = !{!"Global", !35, i64 0, !36, i64 8, !36, i64 1032, !36, i64 2056, !36, i64 2057, !36, i64 2058, !46, i64 2064, !36, i64 2080, !36, i64 2081, !36, i64 2082, !45, i64 2084, !45, i64 2086, !45, i64 2088, !36, i64 2090, !45, i64 2092, !44, i64 2096, !44, i64 2100, !36, i64 2104, !44, i64 2108, !44, i64 2112, !36, i64 2116}
!71 = !{!"space_sequencer.c:sequencer_new"}
!72 = !{!73, !44, i64 32}
!73 = !{!"SpaceSeq", !35, i64 0, !35, i64 8, !46, i64 16, !44, i64 32, !42, i64 36, !36, i64 40, !40, i64 56, !42, i64 216, !42, i64 220, !45, i64 224, !45, i64 226, !45, i64 228, !45, i64 230, !44, i64 232, !42, i64 236, !44, i64 240, !44, i64 244, !35, i64 248, !74, i64 256}
!74 = !{!"SequencerScopes", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40}
!75 = !{!73, !45, i64 228}
!76 = !{!73, !44, i64 240}
!77 = !{!73, !45, i64 224}
!78 = !{!73, !44, i64 232}
!79 = !{!39, !45, i64 126}
!80 = !{!42, !42, i64 0}
!81 = !{i64 0, i64 4, !80, i64 4, i64 4, !80, i64 8, i64 4, !80, i64 12, i64 4, !80}
!82 = !{!39, !45, i64 132}
!83 = !{!39, !45, i64 124}
!84 = !{!39, !42, i64 16}
!85 = !{!86, !44, i64 688}
!86 = !{!"Scene", !87, i64 0, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !46, i64 152, !35, i64 168, !35, i64 176, !36, i64 184, !36, i64 196, !36, i64 208, !36, i64 220, !44, i64 232, !44, i64 236, !44, i64 240, !45, i64 244, !36, i64 246, !36, i64 247, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !88, i64 280, !95, i64 4264, !46, i64 4296, !46, i64 4312, !35, i64 4328, !35, i64 4336, !35, i64 4344, !35, i64 4352, !35, i64 4360, !35, i64 4368, !45, i64 4376, !45, i64 4378, !44, i64 4380, !46, i64 4384, !96, i64 4400, !97, i64 4416, !100, i64 4600, !35, i64 4608, !101, i64 4616, !35, i64 4640, !102, i64 4648, !102, i64 4656, !90, i64 4664, !91, i64 4824, !103, i64 4888, !35, i64 4952}
!87 = !{!"ID", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !45, i64 98, !44, i64 100, !44, i64 104, !44, i64 108, !35, i64 112}
!88 = !{!"RenderData", !89, i64 0, !35, i64 248, !35, i64 256, !92, i64 264, !93, i64 328, !44, i64 400, !44, i64 404, !44, i64 408, !42, i64 412, !44, i64 416, !44, i64 420, !44, i64 424, !44, i64 428, !45, i64 432, !45, i64 434, !42, i64 436, !42, i64 440, !42, i64 444, !42, i64 448, !42, i64 452, !45, i64 456, !45, i64 458, !45, i64 460, !45, i64 462, !45, i64 464, !45, i64 466, !44, i64 468, !45, i64 472, !45, i64 474, !45, i64 476, !45, i64 478, !45, i64 480, !45, i64 482, !44, i64 484, !44, i64 488, !45, i64 492, !45, i64 494, !44, i64 496, !44, i64 500, !45, i64 504, !45, i64 506, !45, i64 508, !45, i64 510, !45, i64 512, !36, i64 514, !36, i64 515, !44, i64 516, !44, i64 520, !44, i64 524, !45, i64 528, !45, i64 530, !45, i64 532, !45, i64 534, !45, i64 536, !45, i64 538, !45, i64 540, !45, i64 542, !41, i64 544, !41, i64 560, !43, i64 576, !46, i64 592, !45, i64 608, !45, i64 610, !42, i64 612, !42, i64 616, !42, i64 620, !42, i64 624, !44, i64 628, !42, i64 632, !42, i64 636, !42, i64 640, !42, i64 644, !45, i64 648, !45, i64 650, !45, i64 652, !45, i64 654, !45, i64 656, !45, i64 658, !42, i64 660, !42, i64 664, !45, i64 668, !45, i64 670, !42, i64 672, !42, i64 676, !36, i64 680, !44, i64 1704, !45, i64 1708, !45, i64 1710, !36, i64 1712, !36, i64 2480, !36, i64 2496, !36, i64 2512, !36, i64 2513, !36, i64 2514, !36, i64 2515, !44, i64 2520, !45, i64 2524, !45, i64 2526, !42, i64 2528, !42, i64 2532, !45, i64 2536, !45, i64 2538, !42, i64 2540, !45, i64 2544, !45, i64 2546, !44, i64 2548, !45, i64 2552, !45, i64 2554, !45, i64 2556, !45, i64 2558, !42, i64 2560, !42, i64 2564, !35, i64 2568, !44, i64 2576, !42, i64 2580, !36, i64 2584, !94, i64 2616, !44, i64 3976, !44, i64 3980}
!89 = !{!"ImageFormatData", !36, i64 0, !36, i64 1, !36, i64 2, !36, i64 3, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !45, i64 8, !45, i64 10, !42, i64 12, !36, i64 16, !36, i64 17, !36, i64 18, !90, i64 24, !91, i64 184}
!90 = !{!"ColorManagedViewSettings", !44, i64 0, !44, i64 4, !36, i64 8, !36, i64 72, !42, i64 136, !42, i64 140, !35, i64 144, !35, i64 152}
!91 = !{!"ColorManagedDisplaySettings", !36, i64 0}
!92 = !{!"QuicktimeCodecSettings", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !44, i64 16, !44, i64 20, !44, i64 24, !44, i64 28, !44, i64 32, !44, i64 36, !44, i64 40, !44, i64 44, !45, i64 48, !45, i64 50, !44, i64 52, !44, i64 56, !44, i64 60}
!93 = !{!"FFMpegCodecData", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !44, i64 16, !44, i64 20, !44, i64 24, !44, i64 28, !42, i64 32, !44, i64 36, !44, i64 40, !44, i64 44, !44, i64 48, !44, i64 52, !44, i64 56, !44, i64 60, !35, i64 64}
!94 = !{!"BakeData", !89, i64 0, !36, i64 248, !45, i64 1272, !45, i64 1274, !45, i64 1276, !45, i64 1278, !42, i64 1280, !42, i64 1284, !36, i64 1288, !36, i64 1291, !36, i64 1292, !36, i64 1293, !36, i64 1296}
!95 = !{!"AudioData", !44, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !44, i64 16, !45, i64 20, !45, i64 22, !42, i64 24, !42, i64 28}
!96 = !{!"GameFraming", !36, i64 0, !36, i64 12, !36, i64 13, !36, i64 14, !36, i64 15}
!97 = !{!"GameData", !96, i64 0, !45, i64 16, !45, i64 18, !45, i64 20, !45, i64 22, !45, i64 24, !45, i64 26, !45, i64 28, !45, i64 30, !45, i64 32, !36, i64 34, !98, i64 40, !45, i64 64, !45, i64 66, !42, i64 68, !99, i64 72, !42, i64 128, !42, i64 132, !44, i64 136, !45, i64 140, !45, i64 142, !45, i64 144, !45, i64 146, !45, i64 148, !45, i64 150, !45, i64 152, !45, i64 154, !45, i64 156, !45, i64 158, !45, i64 160, !45, i64 162, !42, i64 164, !42, i64 168, !42, i64 172, !42, i64 176, !42, i64 180}
!98 = !{!"GameDome", !45, i64 0, !45, i64 2, !45, i64 4, !45, i64 6, !42, i64 8, !42, i64 12, !35, i64 16}
!99 = !{!"RecastData", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20, !42, i64 24, !42, i64 28, !42, i64 32, !42, i64 36, !44, i64 40, !42, i64 44, !42, i64 48, !45, i64 52, !45, i64 54}
!100 = !{!"UnitSettings", !42, i64 0, !36, i64 4, !36, i64 5, !45, i64 6}
!101 = !{!"PhysicsSettings", !36, i64 0, !44, i64 12, !44, i64 16, !44, i64 20}
!102 = !{!"long", !36, i64 0}
!103 = !{!"ColorManagedColorspaceSettings", !36, i64 0}
!104 = !{!39, !42, i64 20}
!105 = !{!39, !45, i64 120}
!106 = !{!"space_sequencer.c:sequencer_free"}
!107 = !{!74, !35, i64 8}
!108 = !{!74, !35, i64 16}
!109 = !{!74, !35, i64 24}
!110 = !{!74, !35, i64 32}
!111 = !{!74, !35, i64 40}
!112 = !{!"space_sequencer.c:sequencer_init"}
!113 = !{!"space_sequencer.c:sequencer_duplicate"}
!114 = !{!"space_sequencer.c:sequencer_context"}
!115 = !{!"space_sequencer.c:sequencer_dropboxes"}
!116 = !{!"space_sequencer.c:sequencer_refresh"}
!117 = !{!118, !35, i64 96}
!118 = !{!"ScrArea", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !43, i64 56, !36, i64 72, !36, i64 73, !45, i64 74, !45, i64 76, !45, i64 78, !45, i64 80, !45, i64 82, !45, i64 84, !36, i64 86, !36, i64 87, !35, i64 88, !46, i64 96, !46, i64 112, !46, i64 128, !46, i64 144}
!119 = !{!39, !45, i64 130}
!120 = !{!118, !45, i64 76}
!121 = !{!122, !42, i64 10908}
!122 = !{!"UserDef", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !44, i64 16, !36, i64 20, !36, i64 788, !36, i64 1556, !36, i64 2580, !36, i64 3348, !36, i64 4116, !36, i64 4884, !36, i64 5652, !36, i64 6420, !36, i64 7444, !44, i64 8468, !45, i64 8472, !45, i64 8474, !45, i64 8476, !45, i64 8478, !45, i64 8480, !45, i64 8482, !44, i64 8484, !44, i64 8488, !44, i64 8492, !45, i64 8496, !45, i64 8498, !44, i64 8500, !44, i64 8504, !44, i64 8508, !44, i64 8512, !44, i64 8516, !44, i64 8520, !44, i64 8524, !45, i64 8528, !45, i64 8530, !45, i64 8532, !45, i64 8534, !46, i64 8536, !46, i64 8552, !46, i64 8568, !46, i64 8584, !46, i64 8600, !46, i64 8616, !46, i64 8632, !36, i64 8648, !45, i64 8712, !45, i64 8714, !45, i64 8716, !45, i64 8718, !45, i64 8720, !45, i64 8722, !45, i64 8724, !45, i64 8726, !36, i64 8728, !45, i64 8896, !45, i64 8898, !45, i64 8900, !45, i64 8902, !45, i64 8904, !45, i64 8906, !45, i64 8908, !45, i64 8910, !44, i64 8912, !44, i64 8916, !45, i64 8920, !45, i64 8922, !45, i64 8924, !45, i64 8926, !45, i64 8928, !45, i64 8930, !45, i64 8932, !45, i64 8934, !45, i64 8936, !45, i64 8938, !36, i64 8940, !36, i64 8941, !36, i64 8942, !36, i64 8943, !45, i64 8944, !45, i64 8946, !45, i64 8948, !45, i64 8950, !45, i64 8952, !45, i64 8954, !42, i64 8956, !42, i64 8960, !44, i64 8964, !45, i64 8968, !45, i64 8970, !42, i64 8972, !45, i64 8976, !45, i64 8978, !45, i64 8980, !45, i64 8982, !123, i64 8984, !36, i64 9760, !36, i64 9772, !45, i64 9788, !36, i64 9790, !36, i64 9791, !36, i64 9792, !36, i64 9872, !44, i64 10896, !44, i64 10900, !42, i64 10904, !42, i64 10908, !44, i64 10912, !45, i64 10916, !45, i64 10918, !45, i64 10920, !45, i64 10922, !45, i64 10924, !45, i64 10926, !124, i64 10928}
!123 = !{!"ColorBand", !45, i64 0, !45, i64 2, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !36, i64 8}
!124 = !{!"WalkNavigation", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20, !45, i64 24, !36, i64 26}
!125 = !{!122, !44, i64 8524}
!126 = !{!39, !45, i64 226}
!127 = !{!"space_sequencer.c:sequencer_listener"}
!128 = !{!129, !44, i64 36}
!129 = !{!"wmNotifier", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !44, i64 32, !44, i64 36, !44, i64 40, !44, i64 44, !44, i64 48, !35, i64 56}
!130 = !{!129, !44, i64 40}
!131 = !{!"space_sequencer.c:sequencer_main_area_init"}
!132 = !{!39, !45, i64 208}
!133 = !{!39, !45, i64 210}
!134 = !{!135, !35, i64 296}
!135 = !{!"wmWindowManager", !87, i64 0, !35, i64 120, !35, i64 128, !46, i64 136, !44, i64 152, !45, i64 156, !45, i64 158, !46, i64 160, !46, i64 176, !136, i64 192, !46, i64 232, !46, i64 248, !46, i64 264, !46, i64 280, !35, i64 296, !35, i64 304, !35, i64 312, !46, i64 320, !35, i64 336, !36, i64 344, !36, i64 345}
!136 = !{!"ReportList", !46, i64 0, !44, i64 16, !44, i64 20, !44, i64 24, !44, i64 28, !35, i64 32}
!137 = !{!"space_sequencer.c:sequencer_main_area_draw"}
!138 = !{!"space_sequencer.c:sequencer_main_area_listener"}
!139 = !{!129, !44, i64 48}
!140 = !{!"space_sequencer.c:sequencer_preview_area_init"}
!141 = !{!"space_sequencer.c:sequencer_preview_area_draw"}
!142 = !{!86, !35, i64 256}
!143 = !{!144, !44, i64 2104}
!144 = !{!"Editing", !35, i64 0, !46, i64 8, !46, i64 24, !35, i64 40, !36, i64 48, !36, i64 1072, !44, i64 2096, !44, i64 2100, !44, i64 2104, !44, i64 2108, !41, i64 2112}
!145 = !{!73, !44, i64 244}
!146 = !{!86, !44, i64 680}
!147 = !{!144, !44, i64 2100}
!148 = !{!144, !44, i64 2096}
!149 = !{!122, !44, i64 8484}
!150 = !{!"space_sequencer.c:sequencer_preview_area_listener"}
!151 = !{!"space_sequencer.c:sequencer_buttons_area_listener"}
!152 = !{!"space_sequencer.c:sequencer_buttons_area_init"}
!153 = !{!"space_sequencer.c:sequencer_buttons_area_draw"}
!154 = !{!"space_sequencer.c:sequencer_header_area_init"}
!155 = !{!"space_sequencer.c:sequencer_header_area_draw"}
!156 = !{!"space_sequencer.c:image_drop_poll"}
!157 = !{!158, !44, i64 20}
!158 = !{!"wmDrag", !35, i64 0, !35, i64 8, !44, i64 16, !44, i64 20, !35, i64 24, !36, i64 32, !159, i64 1056, !35, i64 1064, !42, i64 1072, !44, i64 1076, !44, i64 1080, !36, i64 1084, !44, i64 1284}
!159 = !{!"double", !36, i64 0}
!160 = !{!158, !44, i64 16}
!161 = !{!"space_sequencer.c:sequencer_drop_copy"}
!162 = !{!163, !35, i64 48}
!163 = !{!"wmDropBox", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !45, i64 56}
!164 = !{!"space_sequencer.c:movie_drop_poll"}
!165 = !{!"space_sequencer.c:sound_drop_poll"}
!166 = !{!"space_sequencer.c:sequencer_find_region"}
!167 = distinct !{!167, !168}
!168 = !{!"llvm.loop.mustprogress"}
!169 = !{!"space_sequencer.c:sequencer_scopes_tag_refresh"}
!170 = !{!73, !35, i64 256}

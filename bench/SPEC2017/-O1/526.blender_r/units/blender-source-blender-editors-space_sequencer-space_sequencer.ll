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

; Function Attrs: nounwind uwtable
define dso_local ptr @sequencer_has_buttons_region(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @BKE_area_find_region_type(ptr noundef %0, i32 noundef 4) #9
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %14

4:                                                ; preds = %1
  %5 = tail call ptr @BKE_area_find_region_type(ptr noundef %0, i32 noundef 1) #9
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %4
  %8 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %9 = tail call ptr %8(i64 noundef 384, ptr noundef nonnull @.str) #9
  %10 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 20
  tail call void @BLI_insertlinkafter(ptr noundef nonnull %10, ptr noundef nonnull %5, ptr noundef %9) #9
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

declare ptr @BKE_area_find_region_type(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @BLI_insertlinkafter(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @ED_spacetype_sequencer() local_unnamed_addr #0 {
  %1 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %2 = tail call ptr %1(i64 noundef 216, ptr noundef nonnull @.str.2) #9
  %3 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 3
  store i32 8, ptr %3, align 8, !tbaa !49
  %4 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %4, ptr noundef nonnull align 1 dereferenceable(64) @str, i64 noundef 64, i1 false) #9
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
  %16 = tail call ptr %15(i64 noundef 184, ptr noundef nonnull @.str.4) #9
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
  tail call void @BLI_addhead(ptr noundef nonnull %22, ptr noundef %16) #9
  %23 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %24 = tail call ptr %23(i64 noundef 184, ptr noundef nonnull @.str.4) #9
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
  tail call void @BLI_addhead(ptr noundef nonnull %22, ptr noundef %24) #9
  %30 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %31 = tail call ptr %30(i64 noundef 184, ptr noundef nonnull @.str.4) #9
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
  tail call void @BLI_addhead(ptr noundef nonnull %22, ptr noundef %31) #9
  tail call void @sequencer_buttons_register(ptr noundef %31) #9
  %38 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %39 = tail call ptr %38(i64 noundef 184, ptr noundef nonnull @.str.4) #9
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
  tail call void @BLI_addhead(ptr noundef nonnull %22, ptr noundef %39) #9
  tail call void @BKE_spacetype_register(ptr noundef %2) #9
  %46 = load i8, ptr getelementptr inbounds (%struct.Global, ptr @G, i64 0, i32 8), align 1, !tbaa !69
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %0
  store ptr @ED_view3d_draw_offscreen_imbuf_simple, ptr @sequencer_view3d_cb, align 8, !tbaa !34
  br label %49

49:                                               ; preds = %48, %0
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @sequencer_new(ptr noundef %0) #0 {
  %2 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %4 = tail call ptr %3(i64 noundef 304, ptr noundef nonnull @.str.5) #9
  %5 = getelementptr inbounds %struct.SpaceSeq, ptr %4, i64 0, i32 3
  store i32 8, ptr %5, align 8, !tbaa !71
  %6 = getelementptr inbounds %struct.SpaceSeq, ptr %4, i64 0, i32 11
  store i16 0, ptr %6, align 4, !tbaa !74
  %7 = getelementptr inbounds %struct.SpaceSeq, ptr %4, i64 0, i32 15
  store i32 1, ptr %7, align 8, !tbaa !75
  %8 = getelementptr inbounds %struct.SpaceSeq, ptr %4, i64 0, i32 9
  store i16 1, ptr %8, align 8, !tbaa !76
  %9 = getelementptr inbounds %struct.SpaceSeq, ptr %4, i64 0, i32 13
  store i32 80, ptr %9, align 8, !tbaa !77
  %10 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %11 = tail call ptr %10(i64 noundef 384, ptr noundef nonnull @.str.6) #9
  %12 = getelementptr inbounds %struct.SpaceSeq, ptr %4, i64 0, i32 2
  tail call void @BLI_addtail(ptr noundef nonnull %12, ptr noundef %11) #9
  %13 = getelementptr inbounds %struct.ARegion, ptr %11, i64 0, i32 8
  store i16 1, ptr %13, align 2, !tbaa !38
  %14 = getelementptr inbounds %struct.ARegion, ptr %11, i64 0, i32 9
  store i16 2, ptr %14, align 8, !tbaa !47
  %15 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %16 = tail call ptr %15(i64 noundef 384, ptr noundef nonnull @.str) #9
  tail call void @BLI_addtail(ptr noundef nonnull %12, ptr noundef %16) #9
  %17 = getelementptr inbounds %struct.ARegion, ptr %16, i64 0, i32 8
  store i16 4, ptr %17, align 2, !tbaa !38
  %18 = getelementptr inbounds %struct.ARegion, ptr %16, i64 0, i32 9
  store i16 4, ptr %18, align 8, !tbaa !47
  %19 = getelementptr inbounds %struct.ARegion, ptr %16, i64 0, i32 10
  store i16 1, ptr %19, align 2, !tbaa !48
  %20 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %21 = tail call ptr %20(i64 noundef 384, ptr noundef nonnull @.str.7) #9
  tail call void @BLI_addtail(ptr noundef nonnull %12, ptr noundef %21) #9
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
  store i16 6, ptr %28, align 2, !tbaa !78
  %29 = getelementptr inbounds %struct.ARegion, ptr %21, i64 0, i32 2, i32 7
  store float 0x3EE4F8B580000000, ptr %29, align 8, !tbaa !79
  %30 = getelementptr inbounds %struct.ARegion, ptr %21, i64 0, i32 2, i32 8
  store float 1.000000e+05, ptr %30, align 4, !tbaa !80
  store float -9.600000e+02, ptr %27, align 8, !tbaa !81
  %31 = getelementptr inbounds %struct.ARegion, ptr %21, i64 0, i32 2, i32 0, i32 2
  store float -5.400000e+02, ptr %31, align 8, !tbaa !82
  %32 = getelementptr inbounds %struct.ARegion, ptr %21, i64 0, i32 2, i32 0, i32 1
  store float 9.600000e+02, ptr %32, align 4, !tbaa !83
  %33 = getelementptr inbounds %struct.ARegion, ptr %21, i64 0, i32 2, i32 0, i32 3
  store float 5.400000e+02, ptr %33, align 4, !tbaa !84
  %34 = getelementptr inbounds %struct.ARegion, ptr %21, i64 0, i32 2, i32 5
  store float 0.000000e+00, ptr %34, align 8, !tbaa !85
  %35 = getelementptr inbounds %struct.ARegion, ptr %21, i64 0, i32 2, i32 5, i64 1
  store float 0.000000e+00, ptr %35, align 4, !tbaa !85
  %36 = getelementptr inbounds %struct.ARegion, ptr %21, i64 0, i32 2, i32 6
  store float 1.200000e+04, ptr %36, align 8, !tbaa !85
  %37 = getelementptr inbounds %struct.ARegion, ptr %21, i64 0, i32 2, i32 6, i64 1
  store float 1.200000e+04, ptr %37, align 4, !tbaa !85
  %38 = getelementptr inbounds %struct.ARegion, ptr %21, i64 0, i32 2, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %38, ptr noundef nonnull align 8 dereferenceable(16) %27, i64 16, i1 false), !tbaa.struct !86
  %39 = getelementptr inbounds %struct.ARegion, ptr %21, i64 0, i32 2, i32 15
  store i16 0, ptr %39, align 4, !tbaa !87
  %40 = getelementptr inbounds %struct.ARegion, ptr %21, i64 0, i32 2, i32 11
  store i16 0, ptr %40, align 4, !tbaa !88
  %41 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %42 = tail call ptr %41(i64 noundef 384, ptr noundef nonnull @.str.8) #9
  tail call void @BLI_addtail(ptr noundef nonnull %12, ptr noundef %42) #9
  %43 = getelementptr inbounds %struct.ARegion, ptr %42, i64 0, i32 8
  store i16 0, ptr %43, align 2, !tbaa !38
  %44 = getelementptr inbounds %struct.ARegion, ptr %42, i64 0, i32 2
  store float 0.000000e+00, ptr %44, align 8, !tbaa !81
  %45 = getelementptr inbounds %struct.ARegion, ptr %42, i64 0, i32 2, i32 0, i32 2
  store float 0.000000e+00, ptr %45, align 8, !tbaa !82
  %46 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 22, i32 7
  %47 = load i32, ptr %46, align 8, !tbaa !89
  %48 = sitofp i32 %47 to float
  %49 = getelementptr inbounds %struct.ARegion, ptr %42, i64 0, i32 2, i32 0, i32 1
  store float %48, ptr %49, align 4, !tbaa !83
  %50 = getelementptr inbounds %struct.ARegion, ptr %42, i64 0, i32 2, i32 0, i32 3
  store float 8.000000e+00, ptr %50, align 4, !tbaa !84
  %51 = getelementptr inbounds %struct.ARegion, ptr %42, i64 0, i32 2, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %51, ptr noundef nonnull align 8 dereferenceable(16) %44, i64 16, i1 false), !tbaa.struct !86
  %52 = getelementptr inbounds %struct.ARegion, ptr %42, i64 0, i32 2, i32 5
  store float 1.000000e+01, ptr %52, align 8, !tbaa !85
  %53 = getelementptr inbounds %struct.ARegion, ptr %42, i64 0, i32 2, i32 5, i64 1
  store float 5.000000e-01, ptr %53, align 4, !tbaa !85
  %54 = getelementptr inbounds %struct.ARegion, ptr %42, i64 0, i32 2, i32 6
  store float 3.000000e+05, ptr %54, align 8, !tbaa !85
  %55 = getelementptr inbounds %struct.ARegion, ptr %42, i64 0, i32 2, i32 6, i64 1
  store float 3.200000e+01, ptr %55, align 4, !tbaa !85
  %56 = getelementptr inbounds %struct.ARegion, ptr %42, i64 0, i32 2, i32 7
  store float 0x3F847AE140000000, ptr %56, align 8, !tbaa !79
  %57 = getelementptr inbounds %struct.ARegion, ptr %42, i64 0, i32 2, i32 8
  store float 1.000000e+02, ptr %57, align 4, !tbaa !80
  %58 = getelementptr inbounds %struct.ARegion, ptr %42, i64 0, i32 2, i32 9
  %59 = load i16, ptr %58, align 8, !tbaa !108
  %60 = or i16 %59, 105
  store i16 %60, ptr %58, align 8, !tbaa !108
  %61 = getelementptr inbounds %struct.ARegion, ptr %42, i64 0, i32 2, i32 12
  store i16 0, ptr %61, align 2, !tbaa !78
  %62 = getelementptr inbounds %struct.ARegion, ptr %42, i64 0, i32 2, i32 11
  store i16 0, ptr %62, align 4, !tbaa !88
  %63 = getelementptr inbounds %struct.ARegion, ptr %42, i64 0, i32 2, i32 15
  store i16 8, ptr %63, align 4, !tbaa !87
  ret ptr %4
}

; Function Attrs: nounwind uwtable
define internal void @sequencer_free(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.SpaceSeq, ptr %0, i64 0, i32 18, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !109
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @IMB_freeImBuf(ptr noundef nonnull %3) #9
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %struct.SpaceSeq, ptr %0, i64 0, i32 18, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !110
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void @IMB_freeImBuf(ptr noundef nonnull %8) #9
  br label %11

11:                                               ; preds = %10, %6
  %12 = getelementptr inbounds %struct.SpaceSeq, ptr %0, i64 0, i32 18, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !111
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void @IMB_freeImBuf(ptr noundef nonnull %13) #9
  br label %16

16:                                               ; preds = %15, %11
  %17 = getelementptr inbounds %struct.SpaceSeq, ptr %0, i64 0, i32 18, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !112
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  tail call void @IMB_freeImBuf(ptr noundef nonnull %18) #9
  br label %21

21:                                               ; preds = %20, %16
  %22 = getelementptr inbounds %struct.SpaceSeq, ptr %0, i64 0, i32 18, i32 5
  %23 = load ptr, ptr %22, align 8, !tbaa !113
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  tail call void @IMB_freeImBuf(ptr noundef nonnull %23) #9
  br label %26

26:                                               ; preds = %25, %21
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @sequencer_init(ptr nocapture readnone %0, ptr nocapture readnone %1) #3 {
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @sequencer_duplicate(ptr noundef %0) #0 {
  %2 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %3 = tail call ptr %2(ptr noundef %0) #9
  %4 = getelementptr inbounds %struct.SpaceSeq, ptr %3, i64 0, i32 18
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %4, i8 0, i64 48, i1 false)
  ret ptr %3
}

declare void @sequencer_operatortypes() #2

declare void @sequencer_keymap(ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @sequencer_context(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  %5 = tail call zeroext i8 @CTX_data_dir(ptr noundef %1) #9
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void @CTX_data_dir_set(ptr noundef %2, ptr noundef nonnull @sequencer_context_dir) #9
  br label %15

8:                                                ; preds = %3
  %9 = tail call zeroext i8 @CTX_data_equals(ptr noundef %1, ptr noundef nonnull @.str.1) #9
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %8
  %12 = tail call ptr @BKE_sequencer_mask_get(ptr noundef %4) #9
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %11
  tail call void @CTX_data_id_pointer_set(ptr noundef %2, ptr noundef nonnull %12) #9
  br label %15

15:                                               ; preds = %8, %11, %14, %7
  %16 = phi i32 [ 1, %7 ], [ 1, %14 ], [ 1, %11 ], [ 0, %8 ]
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal void @sequencer_dropboxes() #0 {
  %1 = tail call ptr @WM_dropboxmap_find(ptr noundef nonnull @.str.3, i32 noundef 8, i32 noundef 0) #9
  %2 = tail call ptr @WM_dropbox_add(ptr noundef %1, ptr noundef nonnull @.str.9, ptr noundef nonnull @image_drop_poll, ptr noundef nonnull @sequencer_drop_copy) #9
  %3 = tail call ptr @WM_dropbox_add(ptr noundef %1, ptr noundef nonnull @.str.10, ptr noundef nonnull @movie_drop_poll, ptr noundef nonnull @sequencer_drop_copy) #9
  %4 = tail call ptr @WM_dropbox_add(ptr noundef %1, ptr noundef nonnull @.str.11, ptr noundef nonnull @sound_drop_poll, ptr noundef nonnull @sequencer_drop_copy) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @sequencer_refresh(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @CTX_wm_manager(ptr noundef %0) #9
  %4 = tail call ptr @CTX_wm_window(ptr noundef %0) #9
  %5 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !114
  %7 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 20
  br label %8

8:                                                ; preds = %12, %2
  %9 = phi ptr [ %7, %2 ], [ %10, %12 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !34
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.ARegion, ptr %10, i64 0, i32 8
  %14 = load i16, ptr %13, align 2, !tbaa !38
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %16, label %8, !llvm.loop !116

16:                                               ; preds = %8, %12
  br label %17

17:                                               ; preds = %16, %21
  %18 = phi ptr [ %19, %21 ], [ %7, %16 ]
  %19 = load ptr, ptr %18, align 8, !tbaa !34
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.ARegion, ptr %19, i64 0, i32 8
  %23 = load i16, ptr %22, align 2, !tbaa !38
  %24 = icmp eq i16 %23, 7
  br i1 %24, label %25, label %17, !llvm.loop !116

25:                                               ; preds = %17, %21
  %26 = getelementptr inbounds %struct.SpaceSeq, ptr %6, i64 0, i32 15
  %27 = load i32, ptr %26, align 8, !tbaa !75
  switch i32 %27, label %197 [
    i32 1, label %28
    i32 2, label %66
    i32 3, label %106
  ]

28:                                               ; preds = %25
  br i1 %11, label %39, label %29

29:                                               ; preds = %28
  %30 = getelementptr inbounds %struct.ARegion, ptr %10, i64 0, i32 10
  %31 = load i16, ptr %30, align 2, !tbaa !48
  %32 = and i16 %31, 1
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = and i16 %31, -2
  store i16 %35, ptr %30, align 2, !tbaa !48
  %36 = getelementptr inbounds %struct.ARegion, ptr %10, i64 0, i32 2, i32 14
  %37 = load i16, ptr %36, align 2, !tbaa !119
  %38 = and i16 %37, -1025
  store i16 %38, ptr %36, align 2, !tbaa !119
  br label %39

39:                                               ; preds = %34, %29, %28
  %40 = phi i8 [ 1, %34 ], [ 0, %29 ], [ 0, %28 ]
  br i1 %20, label %52, label %41

41:                                               ; preds = %39
  %42 = getelementptr inbounds %struct.ARegion, ptr %19, i64 0, i32 10
  %43 = load i16, ptr %42, align 2, !tbaa !48
  %44 = and i16 %43, 1
  %45 = icmp eq i16 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  %47 = or disjoint i16 %43, 1
  store i16 %47, ptr %42, align 2, !tbaa !48
  %48 = getelementptr inbounds %struct.ARegion, ptr %19, i64 0, i32 2, i32 14
  %49 = load i16, ptr %48, align 2, !tbaa !119
  %50 = and i16 %49, -1025
  store i16 %50, ptr %48, align 2, !tbaa !119
  %51 = getelementptr inbounds %struct.ARegion, ptr %19, i64 0, i32 26
  tail call void @WM_event_remove_handlers(ptr noundef %0, ptr noundef nonnull %51) #9
  br label %52

52:                                               ; preds = %46, %41, %39
  %53 = phi i8 [ %40, %41 ], [ 1, %46 ], [ %40, %39 ]
  br i1 %11, label %59, label %54

54:                                               ; preds = %52
  %55 = getelementptr inbounds %struct.ARegion, ptr %10, i64 0, i32 9
  %56 = load i16, ptr %55, align 8, !tbaa !47
  %57 = icmp eq i16 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %54
  store i16 0, ptr %55, align 8, !tbaa !47
  br label %59

59:                                               ; preds = %58, %54, %52
  %60 = phi i8 [ 1, %58 ], [ %53, %54 ], [ %53, %52 ]
  br i1 %20, label %197, label %61

61:                                               ; preds = %59
  %62 = getelementptr inbounds %struct.ARegion, ptr %19, i64 0, i32 9
  %63 = load i16, ptr %62, align 8, !tbaa !47
  %64 = icmp eq i16 %63, 0
  br i1 %64, label %197, label %65

65:                                               ; preds = %61
  store i16 0, ptr %62, align 8, !tbaa !47
  br label %197

66:                                               ; preds = %25
  br i1 %11, label %78, label %67

67:                                               ; preds = %66
  %68 = getelementptr inbounds %struct.ARegion, ptr %10, i64 0, i32 10
  %69 = load i16, ptr %68, align 2, !tbaa !48
  %70 = and i16 %69, 1
  %71 = icmp eq i16 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %67
  %73 = or disjoint i16 %69, 1
  store i16 %73, ptr %68, align 2, !tbaa !48
  %74 = getelementptr inbounds %struct.ARegion, ptr %10, i64 0, i32 2, i32 14
  %75 = load i16, ptr %74, align 2, !tbaa !119
  %76 = and i16 %75, -1025
  store i16 %76, ptr %74, align 2, !tbaa !119
  %77 = getelementptr inbounds %struct.ARegion, ptr %10, i64 0, i32 26
  tail call void @WM_event_remove_handlers(ptr noundef %0, ptr noundef nonnull %77) #9
  br label %78

78:                                               ; preds = %72, %67, %66
  %79 = phi i8 [ 0, %67 ], [ 1, %72 ], [ 0, %66 ]
  br i1 %20, label %92, label %80

80:                                               ; preds = %78
  %81 = getelementptr inbounds %struct.ARegion, ptr %19, i64 0, i32 10
  %82 = load i16, ptr %81, align 2, !tbaa !48
  %83 = and i16 %82, 1
  %84 = icmp eq i16 %83, 0
  br i1 %84, label %92, label %85

85:                                               ; preds = %80
  %86 = and i16 %82, -2
  store i16 %86, ptr %81, align 2, !tbaa !48
  %87 = getelementptr inbounds %struct.ARegion, ptr %19, i64 0, i32 2
  %88 = getelementptr inbounds %struct.ARegion, ptr %19, i64 0, i32 2, i32 14
  %89 = load i16, ptr %88, align 2, !tbaa !119
  %90 = and i16 %89, -1025
  store i16 %90, ptr %88, align 2, !tbaa !119
  %91 = getelementptr inbounds %struct.ARegion, ptr %19, i64 0, i32 2, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %91, ptr noundef nonnull align 8 dereferenceable(16) %87, i64 16, i1 false), !tbaa.struct !86
  br label %92

92:                                               ; preds = %85, %80, %78
  %93 = phi i8 [ 1, %85 ], [ %79, %80 ], [ %79, %78 ]
  br i1 %11, label %99, label %94

94:                                               ; preds = %92
  %95 = getelementptr inbounds %struct.ARegion, ptr %10, i64 0, i32 9
  %96 = load i16, ptr %95, align 8, !tbaa !47
  %97 = icmp eq i16 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %94
  store i16 0, ptr %95, align 8, !tbaa !47
  br label %99

99:                                               ; preds = %98, %94, %92
  %100 = phi i8 [ 1, %98 ], [ %93, %94 ], [ %93, %92 ]
  br i1 %20, label %197, label %101

101:                                              ; preds = %99
  %102 = getelementptr inbounds %struct.ARegion, ptr %19, i64 0, i32 9
  %103 = load i16, ptr %102, align 8, !tbaa !47
  %104 = icmp eq i16 %103, 0
  br i1 %104, label %197, label %105

105:                                              ; preds = %101
  store i16 0, ptr %102, align 8, !tbaa !47
  br label %197

106:                                              ; preds = %25
  %107 = icmp ne ptr %10, null
  %108 = icmp ne ptr %19, null
  %109 = and i1 %107, %108
  br i1 %109, label %110, label %197

110:                                              ; preds = %106
  %111 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 11
  %112 = load i16, ptr %111, align 4, !tbaa !120
  %113 = sext i16 %112 to i32
  %114 = tail call i32 @ED_area_headersize() #9
  %115 = sub nsw i32 %113, %114
  %116 = sitofp i32 %115 to float
  %117 = load float, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 106), align 4, !tbaa !121
  %118 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 33), align 4, !tbaa !125
  %119 = sitofp i32 %118 to float
  %120 = fmul float %117, %119
  %121 = fdiv float %120, 7.200000e+01
  %122 = fdiv float %116, %121
  %123 = getelementptr inbounds %struct.ARegion, ptr %10, i64 0, i32 10
  %124 = load i16, ptr %123, align 2, !tbaa !48
  %125 = and i16 %124, 1
  %126 = icmp eq i16 %125, 0
  br i1 %126, label %139, label %127

127:                                              ; preds = %110
  %128 = and i16 %124, -2
  store i16 %128, ptr %123, align 2, !tbaa !48
  %129 = getelementptr inbounds %struct.ARegion, ptr %10, i64 0, i32 2, i32 14
  %130 = load i16, ptr %129, align 2, !tbaa !119
  %131 = and i16 %130, -1025
  store i16 %131, ptr %129, align 2, !tbaa !119
  %132 = getelementptr inbounds %struct.ARegion, ptr %10, i64 0, i32 13
  %133 = load i16, ptr %132, align 2, !tbaa !126
  %134 = sitofp i16 %133 to float
  %135 = fsub float %122, %134
  %136 = fptosi float %135 to i32
  %137 = trunc i32 %136 to i16
  %138 = getelementptr inbounds %struct.ARegion, ptr %19, i64 0, i32 13
  store i16 %137, ptr %138, align 2, !tbaa !126
  br label %139

139:                                              ; preds = %127, %110
  %140 = phi i8 [ 1, %127 ], [ 0, %110 ]
  %141 = getelementptr inbounds %struct.ARegion, ptr %19, i64 0, i32 10
  %142 = load i16, ptr %141, align 2, !tbaa !48
  %143 = and i16 %142, 1
  %144 = icmp eq i16 %143, 0
  br i1 %144, label %159, label %145

145:                                              ; preds = %139
  %146 = and i16 %142, -2
  store i16 %146, ptr %141, align 2, !tbaa !48
  %147 = getelementptr inbounds %struct.ARegion, ptr %19, i64 0, i32 2
  %148 = getelementptr inbounds %struct.ARegion, ptr %19, i64 0, i32 2, i32 14
  %149 = load i16, ptr %148, align 2, !tbaa !119
  %150 = and i16 %149, -1025
  store i16 %150, ptr %148, align 2, !tbaa !119
  %151 = getelementptr inbounds %struct.ARegion, ptr %19, i64 0, i32 2, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %151, ptr noundef nonnull align 8 dereferenceable(16) %147, i64 16, i1 false), !tbaa.struct !86
  %152 = getelementptr inbounds %struct.ARegion, ptr %19, i64 0, i32 13
  %153 = load i16, ptr %152, align 2, !tbaa !126
  %154 = sitofp i16 %153 to float
  %155 = fsub float %122, %154
  %156 = fptosi float %155 to i32
  %157 = trunc i32 %156 to i16
  %158 = getelementptr inbounds %struct.ARegion, ptr %10, i64 0, i32 13
  store i16 %157, ptr %158, align 2, !tbaa !126
  br label %159

159:                                              ; preds = %145, %139
  %160 = phi i8 [ 1, %145 ], [ %140, %139 ]
  %161 = getelementptr inbounds %struct.ARegion, ptr %10, i64 0, i32 9
  %162 = load i16, ptr %161, align 8, !tbaa !47
  %163 = icmp eq i16 %162, 0
  br i1 %163, label %165, label %164

164:                                              ; preds = %159
  store i16 0, ptr %161, align 8, !tbaa !47
  br label %165

165:                                              ; preds = %164, %159
  %166 = phi i8 [ 1, %164 ], [ %160, %159 ]
  %167 = getelementptr inbounds %struct.ARegion, ptr %19, i64 0, i32 9
  %168 = load i16, ptr %167, align 8, !tbaa !47
  %169 = icmp eq i16 %168, 1
  br i1 %169, label %171, label %170

170:                                              ; preds = %165
  store i16 1, ptr %167, align 8, !tbaa !47
  br label %171

171:                                              ; preds = %170, %165
  %172 = phi i8 [ 1, %170 ], [ %166, %165 ]
  %173 = getelementptr inbounds %struct.ARegion, ptr %19, i64 0, i32 13
  %174 = load i16, ptr %173, align 2, !tbaa !126
  %175 = sext i16 %174 to i32
  %176 = icmp slt i16 %174, 10
  br i1 %176, label %186, label %177

177:                                              ; preds = %171
  %178 = getelementptr inbounds %struct.ARegion, ptr %10, i64 0, i32 13
  %179 = load i16, ptr %178, align 2, !tbaa !126
  %180 = icmp slt i16 %179, 10
  br i1 %180, label %186, label %181

181:                                              ; preds = %177
  %182 = zext nneg i16 %179 to i32
  %183 = add nuw nsw i32 %182, %175
  %184 = sitofp i32 %183 to float
  %185 = fcmp olt float %122, %184
  br i1 %185, label %186, label %197

186:                                              ; preds = %181, %177, %171
  %187 = tail call float @llvm.fmuladd.f32(float %122, float 0x3FD99999A0000000, float 5.000000e-01)
  %188 = fptosi float %187 to i32
  %189 = trunc i32 %188 to i16
  store i16 %189, ptr %173, align 2, !tbaa !126
  %190 = shl i32 %188, 16
  %191 = ashr exact i32 %190, 16
  %192 = sitofp i32 %191 to float
  %193 = fsub float %122, %192
  %194 = fptosi float %193 to i32
  %195 = trunc i32 %194 to i16
  %196 = getelementptr inbounds %struct.ARegion, ptr %10, i64 0, i32 13
  store i16 %195, ptr %196, align 2, !tbaa !126
  br label %197

197:                                              ; preds = %181, %186, %106, %99, %101, %105, %59, %61, %65, %25
  %198 = phi i8 [ 0, %25 ], [ 0, %106 ], [ 1, %105 ], [ %100, %101 ], [ %100, %99 ], [ 1, %65 ], [ %60, %61 ], [ %60, %59 ], [ 1, %186 ], [ %172, %181 ]
  %199 = icmp eq i8 %198, 0
  br i1 %199, label %201, label %200

200:                                              ; preds = %197
  tail call void @ED_area_initialize(ptr noundef %3, ptr noundef %4, ptr noundef %1) #9
  tail call void @ED_area_tag_redraw(ptr noundef %1) #9
  br label %201

201:                                              ; preds = %200, %197
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @sequencer_listener(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #4 {
  %4 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 5
  %5 = load i32, ptr %4, align 4, !tbaa !127
  switch i32 %5, label %17 [
    i32 67108864, label %6
    i32 33554432, label %9
    i32 251658240, label %9
  ]

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 6
  %8 = load i32, ptr %7, align 8, !tbaa !129
  switch i32 %8, label %17 [
    i32 196608, label %13
    i32 393216, label %13
  ]

9:                                                ; preds = %3, %3
  %10 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 6
  %11 = load i32, ptr %10, align 8, !tbaa !129
  %12 = icmp eq i32 %11, 1048576
  br i1 %12, label %13, label %17

13:                                               ; preds = %9, %6, %6
  %14 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 19
  %15 = load ptr, ptr %14, align 8, !tbaa !114
  %16 = getelementptr inbounds %struct.SpaceSeq, ptr %15, i64 0, i32 18
  store ptr null, ptr %16, align 8, !tbaa !130
  br label %17

17:                                               ; preds = %13, %9, %6, %3
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @sequencer_main_area_init(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  %4 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 5
  %5 = load i16, ptr %4, align 8, !tbaa !131
  %6 = sext i16 %5 to i32
  %7 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 6
  %8 = load i16, ptr %7, align 2, !tbaa !132
  %9 = sext i16 %8 to i32
  tail call void @UI_view2d_region_reinit(ptr noundef nonnull %3, i16 noundef signext -1, i32 noundef %6, i32 noundef %9) #9
  %10 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 14
  %11 = load ptr, ptr %10, align 8, !tbaa !133
  %12 = tail call ptr @WM_keymap_find(ptr noundef %11, ptr noundef nonnull @.str.16, i32 noundef 8, i32 noundef 0) #9
  %13 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 26
  %14 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 4
  %15 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3
  %16 = tail call ptr @WM_event_add_keymap_handler_bb(ptr noundef nonnull %13, ptr noundef %12, ptr noundef nonnull %14, ptr noundef nonnull %15) #9
  %17 = load ptr, ptr %10, align 8, !tbaa !133
  %18 = tail call ptr @WM_keymap_find(ptr noundef %17, ptr noundef nonnull @.str.3, i32 noundef 8, i32 noundef 0) #9
  %19 = tail call ptr @WM_event_add_keymap_handler_bb(ptr noundef nonnull %13, ptr noundef %18, ptr noundef nonnull %14, ptr noundef nonnull %15) #9
  %20 = tail call ptr @WM_dropboxmap_find(ptr noundef nonnull @.str.3, i32 noundef 8, i32 noundef 0) #9
  %21 = tail call ptr @WM_event_add_dropbox_handler(ptr noundef nonnull %13, ptr noundef %20) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @sequencer_main_area_draw(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @draw_timeline_seq(ptr noundef %0, ptr noundef %1) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @sequencer_main_area_listener(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr noundef %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 5
  %6 = load i32, ptr %5, align 4, !tbaa !127
  switch i32 %6, label %22 [
    i32 67108864, label %7
    i32 251658240, label %10
    i32 301989888, label %14
    i32 50331648, label %18
  ]

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %9 = load i32, ptr %8, align 8, !tbaa !129
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
  %12 = load i32, ptr %11, align 8, !tbaa !129
  %13 = icmp eq i32 %12, 1048576
  br i1 %13, label %21, label %22

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 8
  %16 = load i32, ptr %15, align 8, !tbaa !136
  %17 = icmp eq i32 %16, 5
  br i1 %17, label %21, label %22

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %20 = load i32, ptr %19, align 8, !tbaa !129
  switch i32 %20, label %22 [
    i32 196608, label %21
    i32 262144, label %21
  ]

21:                                               ; preds = %18, %18, %14, %10, %7, %7, %7, %7, %7, %7
  tail call void @ED_region_tag_redraw(ptr noundef %2) #9
  br label %22

22:                                               ; preds = %21, %18, %14, %10, %7, %4
  ret void
}

declare void @BLI_addhead(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @sequencer_preview_area_init(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  %4 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 5
  %5 = load i16, ptr %4, align 8, !tbaa !131
  %6 = sext i16 %5 to i32
  %7 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 6
  %8 = load i16, ptr %7, align 2, !tbaa !132
  %9 = sext i16 %8 to i32
  tail call void @UI_view2d_region_reinit(ptr noundef nonnull %3, i16 noundef signext -1, i32 noundef %6, i32 noundef %9) #9
  %10 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 14
  %11 = load ptr, ptr %10, align 8, !tbaa !133
  %12 = tail call ptr @WM_keymap_find(ptr noundef %11, ptr noundef nonnull @.str.16, i32 noundef 8, i32 noundef 0) #9
  %13 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 26
  %14 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 4
  %15 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3
  %16 = tail call ptr @WM_event_add_keymap_handler_bb(ptr noundef nonnull %13, ptr noundef %12, ptr noundef nonnull %14, ptr noundef nonnull %15) #9
  %17 = load ptr, ptr %10, align 8, !tbaa !133
  %18 = tail call ptr @WM_keymap_find(ptr noundef %17, ptr noundef nonnull @.str.17, i32 noundef 8, i32 noundef 0) #9
  %19 = tail call ptr @WM_event_add_keymap_handler_bb(ptr noundef nonnull %13, ptr noundef %18, ptr noundef nonnull %14, ptr noundef nonnull %15) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @sequencer_preview_area_draw(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.rcti, align 4
  %4 = tail call ptr @CTX_wm_area(ptr noundef %0) #9
  %5 = getelementptr inbounds %struct.ScrArea, ptr %4, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !114
  %7 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  %8 = tail call ptr @CTX_wm_manager(ptr noundef %0) #9
  %9 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 19
  %10 = load ptr, ptr %9, align 8, !tbaa !137
  %11 = icmp eq ptr %10, null
  br i1 %11, label %21, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.Editing, ptr %10, i64 0, i32 8
  %14 = load i32, ptr %13, align 8, !tbaa !138
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.SpaceSeq, ptr %6, i64 0, i32 9
  %19 = load i16, ptr %18, align 8, !tbaa !76
  %20 = icmp eq i16 %19, 1
  br label %21

21:                                               ; preds = %17, %12, %2
  %22 = phi i1 [ false, %12 ], [ false, %2 ], [ %20, %17 ]
  %23 = getelementptr inbounds %struct.SpaceSeq, ptr %6, i64 0, i32 9
  %24 = load i16, ptr %23, align 8, !tbaa !76
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i16 1, ptr %23, align 8, !tbaa !76
  br label %27

27:                                               ; preds = %26, %21
  br i1 %22, label %28, label %32

28:                                               ; preds = %27
  %29 = getelementptr inbounds %struct.SpaceSeq, ptr %6, i64 0, i32 16
  %30 = load i32, ptr %29, align 4, !tbaa !140
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %35, label %32

32:                                               ; preds = %28, %27
  %33 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 22, i32 5
  %34 = load i32, ptr %33, align 8, !tbaa !141
  tail call void @draw_image_seq(ptr noundef %0, ptr noundef %7, ptr noundef %1, ptr noundef %6, i32 noundef %34, i32 noundef 0, i8 noundef zeroext 0) #9
  br label %35

35:                                               ; preds = %32, %28
  br i1 %22, label %36, label %64

36:                                               ; preds = %35
  %37 = getelementptr inbounds %struct.SpaceSeq, ptr %6, i64 0, i32 16
  %38 = load i32, ptr %37, align 4, !tbaa !140
  %39 = icmp eq i32 %38, 2
  br i1 %39, label %64, label %40

40:                                               ; preds = %36
  %41 = load ptr, ptr %9, align 8, !tbaa !137
  %42 = getelementptr inbounds %struct.Editing, ptr %41, i64 0, i32 8
  %43 = load i32, ptr %42, align 8, !tbaa !138
  %44 = and i32 %43, 2
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.Editing, ptr %41, i64 0, i32 7
  %48 = load i32, ptr %47, align 4, !tbaa !142
  br label %55

49:                                               ; preds = %40
  %50 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 22, i32 5
  %51 = load i32, ptr %50, align 8, !tbaa !141
  %52 = getelementptr inbounds %struct.Editing, ptr %41, i64 0, i32 6
  %53 = load i32, ptr %52, align 8, !tbaa !143
  %54 = add nsw i32 %53, %51
  br label %55

55:                                               ; preds = %49, %46
  %56 = phi i32 [ %48, %46 ], [ %54, %49 ]
  %57 = getelementptr inbounds %struct.Scene, ptr %7, i64 0, i32 22, i32 5
  %58 = load i32, ptr %57, align 8, !tbaa !141
  %59 = icmp eq i32 %56, %58
  %60 = icmp eq i32 %38, 0
  %61 = and i1 %60, %59
  br i1 %61, label %64, label %62

62:                                               ; preds = %55
  %63 = sub nsw i32 %56, %58
  tail call void @draw_image_seq(ptr noundef %0, ptr noundef %7, ptr noundef %1, ptr noundef %6, i32 noundef %58, i32 noundef %63, i8 noundef zeroext 1) #9
  br label %64

64:                                               ; preds = %55, %62, %36, %35
  %65 = load i32, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 22), align 4, !tbaa !144
  %66 = and i32 %65, 2097152
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %64
  %69 = tail call ptr @ED_screen_animation_playing(ptr noundef %8) #9
  %70 = icmp eq ptr %69, null
  br i1 %70, label %72, label %71

71:                                               ; preds = %68
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #9
  call void @ED_region_visible_rect(ptr noundef %1, ptr noundef nonnull %3) #9
  call void @ED_scene_draw_fps(ptr noundef %7, ptr noundef nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #9
  br label %72

72:                                               ; preds = %71, %68, %64
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @sequencer_preview_area_listener(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr noundef %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 5
  %6 = load i32, ptr %5, align 4, !tbaa !127
  switch i32 %6, label %29 [
    i32 369098752, label %7
    i32 67108864, label %11
    i32 251658240, label %16
    i32 301989888, label %20
    i32 352321536, label %24
  ]

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 8
  %9 = load i32, ptr %8, align 8, !tbaa !136
  %10 = icmp eq i32 %9, 1
  br i1 %10, label %28, label %29

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %13 = load i32, ptr %12, align 8, !tbaa !129
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
  %18 = load i32, ptr %17, align 8, !tbaa !129
  %19 = icmp eq i32 %18, 1048576
  br i1 %19, label %28, label %29

20:                                               ; preds = %4
  %21 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %22 = load i32, ptr %21, align 8, !tbaa !129
  %23 = icmp eq i32 %22, 5
  br i1 %23, label %28, label %29

24:                                               ; preds = %4
  %25 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 8
  %26 = load i32, ptr %25, align 8, !tbaa !136
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %29

28:                                               ; preds = %24, %20, %16, %11, %11, %11, %11, %7
  tail call void @ED_region_tag_redraw(ptr noundef %2) #9
  br label %29

29:                                               ; preds = %28, %24, %20, %16, %11, %7, %4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @sequencer_buttons_area_listener(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr noundef %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 5
  %6 = load i32, ptr %5, align 4, !tbaa !127
  switch i32 %6, label %23 [
    i32 369098752, label %7
    i32 67108864, label %11
    i32 251658240, label %14
    i32 301989888, label %18
  ]

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %9 = load i32, ptr %8, align 8, !tbaa !129
  %10 = icmp eq i32 %9, 5963776
  br i1 %10, label %22, label %23

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %13 = load i32, ptr %12, align 8, !tbaa !129
  switch i32 %13, label %23 [
    i32 196608, label %22
    i32 393216, label %22
  ]

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %16 = load i32, ptr %15, align 8, !tbaa !129
  %17 = icmp eq i32 %16, 1048576
  br i1 %17, label %22, label %23

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 8
  %20 = load i32, ptr %19, align 8, !tbaa !136
  %21 = icmp eq i32 %20, 5
  br i1 %21, label %22, label %23

22:                                               ; preds = %18, %14, %11, %11, %7
  tail call void @ED_region_tag_redraw(ptr noundef %2) #9
  br label %23

23:                                               ; preds = %22, %18, %14, %11, %7, %4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @sequencer_buttons_area_init(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 14
  %4 = load ptr, ptr %3, align 8, !tbaa !133
  %5 = tail call ptr @WM_keymap_find(ptr noundef %4, ptr noundef nonnull @.str.16, i32 noundef 8, i32 noundef 0) #9
  %6 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 26
  %7 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 4
  %8 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3
  %9 = tail call ptr @WM_event_add_keymap_handler_bb(ptr noundef nonnull %6, ptr noundef %5, ptr noundef nonnull %7, ptr noundef nonnull %8) #9
  tail call void @ED_region_panels_init(ptr noundef %0, ptr noundef %1) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @sequencer_buttons_area_draw(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @ED_region_panels(ptr noundef %0, ptr noundef %1, i32 noundef 1, ptr noundef null, i32 noundef -1) #9
  ret void
}

declare void @sequencer_buttons_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @sequencer_header_area_init(ptr nocapture readnone %0, ptr noundef %1) #0 {
  tail call void @ED_region_header_init(ptr noundef %1) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @sequencer_header_area_draw(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @ED_region_header(ptr noundef %0, ptr noundef %1) #9
  ret void
}

declare void @BKE_spacetype_register(ptr noundef) local_unnamed_addr #2

declare ptr @ED_view3d_draw_offscreen_imbuf_simple(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, ptr noundef) #2

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

declare void @IMB_freeImBuf(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

declare zeroext i8 @CTX_data_dir(ptr noundef) local_unnamed_addr #2

declare void @CTX_data_dir_set(ptr noundef, ptr noundef) local_unnamed_addr #2

declare zeroext i8 @CTX_data_equals(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BKE_sequencer_mask_get(ptr noundef) local_unnamed_addr #2

declare void @CTX_data_id_pointer_set(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @WM_dropboxmap_find(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @WM_dropbox_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @image_drop_poll(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = tail call ptr @CTX_wm_region(ptr noundef %0) #9
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  %7 = getelementptr inbounds %struct.wmDrag, ptr %1, i64 0, i32 3
  %8 = load i32, ptr %7, align 4, !tbaa !145
  %9 = icmp eq i32 %8, 2
  br i1 %9, label %10, label %18

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.wmDrag, ptr %1, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !148
  switch i32 %12, label %18 [
    i32 696, label %13
    i32 694, label %13
  ]

13:                                               ; preds = %10, %10
  %14 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 2
  %15 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %16 = call ptr @find_nearest_seq(ptr noundef %6, ptr noundef nonnull %14, ptr noundef nonnull %4, ptr noundef nonnull %15) #9
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %10, %13, %3
  br label %19

19:                                               ; preds = %13, %18
  %20 = phi i32 [ 0, %18 ], [ 1, %13 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define internal void @sequencer_drop_copy(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.PointerRNA, align 8
  %4 = alloca [1024 x i8], align 16
  %5 = alloca [1024 x i8], align 16
  %6 = getelementptr inbounds %struct.wmDropBox, ptr %1, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !149
  %8 = tail call ptr @RNA_struct_find_property(ptr noundef %7, ptr noundef nonnull @.str.12) #9
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load ptr, ptr %6, align 8, !tbaa !149
  %12 = getelementptr inbounds %struct.wmDrag, ptr %0, i64 0, i32 5
  tail call void @RNA_string_set(ptr noundef %11, ptr noundef nonnull @.str.12, ptr noundef nonnull %12) #9
  br label %13

13:                                               ; preds = %10, %2
  %14 = load ptr, ptr %6, align 8, !tbaa !149
  %15 = tail call ptr @RNA_struct_find_property(ptr noundef %14, ptr noundef nonnull @.str.13) #9
  %16 = icmp eq ptr %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #9
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #9
  %18 = getelementptr inbounds %struct.wmDrag, ptr %0, i64 0, i32 5
  call void @BLI_split_dirfile(ptr noundef nonnull %18, ptr noundef nonnull %4, ptr noundef nonnull %5, i64 noundef 1024, i64 noundef 1024) #9
  %19 = load ptr, ptr %6, align 8, !tbaa !149
  call void @RNA_string_set(ptr noundef %19, ptr noundef nonnull @.str.13, ptr noundef nonnull %4) #9
  %20 = load ptr, ptr %6, align 8, !tbaa !149
  call void @RNA_collection_clear(ptr noundef %20, ptr noundef nonnull @.str.14) #9
  %21 = load ptr, ptr %6, align 8, !tbaa !149
  call void @RNA_collection_add(ptr noundef %21, ptr noundef nonnull @.str.14, ptr noundef nonnull %3) #9
  call void @RNA_string_set(ptr noundef nonnull %3, ptr noundef nonnull @.str.15, ptr noundef nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #9
  br label %22

22:                                               ; preds = %17, %13
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @movie_drop_poll(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = tail call ptr @CTX_wm_region(ptr noundef %0) #9
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  %7 = getelementptr inbounds %struct.wmDrag, ptr %1, i64 0, i32 3
  %8 = load i32, ptr %7, align 4, !tbaa !145
  %9 = icmp eq i32 %8, 2
  br i1 %9, label %10, label %18

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.wmDrag, ptr %1, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !148
  switch i32 %12, label %18 [
    i32 0, label %13
    i32 697, label %13
    i32 694, label %13
  ]

13:                                               ; preds = %10, %10, %10
  %14 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 2
  %15 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %16 = call ptr @find_nearest_seq(ptr noundef %6, ptr noundef nonnull %14, ptr noundef nonnull %4, ptr noundef nonnull %15) #9
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %10, %13, %3
  br label %19

19:                                               ; preds = %13, %18
  %20 = phi i32 [ 0, %18 ], [ 1, %13 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @sound_drop_poll(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = tail call ptr @CTX_wm_region(ptr noundef %0) #9
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  %7 = getelementptr inbounds %struct.wmDrag, ptr %1, i64 0, i32 3
  %8 = load i32, ptr %7, align 4, !tbaa !145
  %9 = icmp eq i32 %8, 2
  br i1 %9, label %10, label %18

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.wmDrag, ptr %1, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !148
  switch i32 %12, label %18 [
    i32 699, label %13
    i32 694, label %13
  ]

13:                                               ; preds = %10, %10
  %14 = getelementptr inbounds %struct.ARegion, ptr %5, i64 0, i32 2
  %15 = getelementptr inbounds %struct.wmEvent, ptr %2, i64 0, i32 6
  %16 = call ptr @find_nearest_seq(ptr noundef %6, ptr noundef nonnull %14, ptr noundef nonnull %4, ptr noundef nonnull %15) #9
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %10, %13, %3
  br label %19

19:                                               ; preds = %13, %18
  %20 = phi i32 [ 0, %18 ], [ 1, %13 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  ret i32 %20
}

declare ptr @CTX_wm_region(ptr noundef) local_unnamed_addr #2

declare ptr @find_nearest_seq(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @RNA_struct_find_property(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_string_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_split_dirfile(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @RNA_collection_clear(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @RNA_collection_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_manager(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_window(ptr noundef) local_unnamed_addr #2

declare void @WM_event_remove_handlers(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ED_area_headersize() local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

declare void @ED_area_initialize(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_area_tag_redraw(ptr noundef) local_unnamed_addr #2

declare void @UI_view2d_region_reinit(ptr noundef, i16 noundef signext, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @WM_keymap_find(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @WM_event_add_keymap_handler_bb(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @WM_event_add_dropbox_handler(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @draw_timeline_seq(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_region_tag_redraw(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_area(ptr noundef) local_unnamed_addr #2

declare void @draw_image_seq(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

declare ptr @ED_screen_animation_playing(ptr noundef) local_unnamed_addr #2

declare void @ED_region_visible_rect(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_scene_draw_fps(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_region_panels_init(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_region_panels(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @ED_region_header_init(ptr noundef) local_unnamed_addr #2

declare void @ED_region_header(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }

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
!71 = !{!72, !44, i64 32}
!72 = !{!"SpaceSeq", !35, i64 0, !35, i64 8, !46, i64 16, !44, i64 32, !42, i64 36, !36, i64 40, !40, i64 56, !42, i64 216, !42, i64 220, !45, i64 224, !45, i64 226, !45, i64 228, !45, i64 230, !44, i64 232, !42, i64 236, !44, i64 240, !44, i64 244, !35, i64 248, !73, i64 256}
!73 = !{!"SequencerScopes", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40}
!74 = !{!72, !45, i64 228}
!75 = !{!72, !44, i64 240}
!76 = !{!72, !45, i64 224}
!77 = !{!72, !44, i64 232}
!78 = !{!39, !45, i64 126}
!79 = !{!39, !42, i64 112}
!80 = !{!39, !42, i64 116}
!81 = !{!39, !42, i64 16}
!82 = !{!39, !42, i64 24}
!83 = !{!39, !42, i64 20}
!84 = !{!39, !42, i64 28}
!85 = !{!42, !42, i64 0}
!86 = !{i64 0, i64 4, !85, i64 4, i64 4, !85, i64 8, i64 4, !85, i64 12, i64 4, !85}
!87 = !{!39, !45, i64 132}
!88 = !{!39, !45, i64 124}
!89 = !{!90, !44, i64 688}
!90 = !{!"Scene", !91, i64 0, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !46, i64 152, !35, i64 168, !35, i64 176, !36, i64 184, !36, i64 196, !36, i64 208, !36, i64 220, !44, i64 232, !44, i64 236, !44, i64 240, !45, i64 244, !36, i64 246, !36, i64 247, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !92, i64 280, !99, i64 4264, !46, i64 4296, !46, i64 4312, !35, i64 4328, !35, i64 4336, !35, i64 4344, !35, i64 4352, !35, i64 4360, !35, i64 4368, !45, i64 4376, !45, i64 4378, !44, i64 4380, !46, i64 4384, !100, i64 4400, !101, i64 4416, !104, i64 4600, !35, i64 4608, !105, i64 4616, !35, i64 4640, !106, i64 4648, !106, i64 4656, !94, i64 4664, !95, i64 4824, !107, i64 4888, !35, i64 4952}
!91 = !{!"ID", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !45, i64 98, !44, i64 100, !44, i64 104, !44, i64 108, !35, i64 112}
!92 = !{!"RenderData", !93, i64 0, !35, i64 248, !35, i64 256, !96, i64 264, !97, i64 328, !44, i64 400, !44, i64 404, !44, i64 408, !42, i64 412, !44, i64 416, !44, i64 420, !44, i64 424, !44, i64 428, !45, i64 432, !45, i64 434, !42, i64 436, !42, i64 440, !42, i64 444, !42, i64 448, !42, i64 452, !45, i64 456, !45, i64 458, !45, i64 460, !45, i64 462, !45, i64 464, !45, i64 466, !44, i64 468, !45, i64 472, !45, i64 474, !45, i64 476, !45, i64 478, !45, i64 480, !45, i64 482, !44, i64 484, !44, i64 488, !45, i64 492, !45, i64 494, !44, i64 496, !44, i64 500, !45, i64 504, !45, i64 506, !45, i64 508, !45, i64 510, !45, i64 512, !36, i64 514, !36, i64 515, !44, i64 516, !44, i64 520, !44, i64 524, !45, i64 528, !45, i64 530, !45, i64 532, !45, i64 534, !45, i64 536, !45, i64 538, !45, i64 540, !45, i64 542, !41, i64 544, !41, i64 560, !43, i64 576, !46, i64 592, !45, i64 608, !45, i64 610, !42, i64 612, !42, i64 616, !42, i64 620, !42, i64 624, !44, i64 628, !42, i64 632, !42, i64 636, !42, i64 640, !42, i64 644, !45, i64 648, !45, i64 650, !45, i64 652, !45, i64 654, !45, i64 656, !45, i64 658, !42, i64 660, !42, i64 664, !45, i64 668, !45, i64 670, !42, i64 672, !42, i64 676, !36, i64 680, !44, i64 1704, !45, i64 1708, !45, i64 1710, !36, i64 1712, !36, i64 2480, !36, i64 2496, !36, i64 2512, !36, i64 2513, !36, i64 2514, !36, i64 2515, !44, i64 2520, !45, i64 2524, !45, i64 2526, !42, i64 2528, !42, i64 2532, !45, i64 2536, !45, i64 2538, !42, i64 2540, !45, i64 2544, !45, i64 2546, !44, i64 2548, !45, i64 2552, !45, i64 2554, !45, i64 2556, !45, i64 2558, !42, i64 2560, !42, i64 2564, !35, i64 2568, !44, i64 2576, !42, i64 2580, !36, i64 2584, !98, i64 2616, !44, i64 3976, !44, i64 3980}
!93 = !{!"ImageFormatData", !36, i64 0, !36, i64 1, !36, i64 2, !36, i64 3, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !45, i64 8, !45, i64 10, !42, i64 12, !36, i64 16, !36, i64 17, !36, i64 18, !94, i64 24, !95, i64 184}
!94 = !{!"ColorManagedViewSettings", !44, i64 0, !44, i64 4, !36, i64 8, !36, i64 72, !42, i64 136, !42, i64 140, !35, i64 144, !35, i64 152}
!95 = !{!"ColorManagedDisplaySettings", !36, i64 0}
!96 = !{!"QuicktimeCodecSettings", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !44, i64 16, !44, i64 20, !44, i64 24, !44, i64 28, !44, i64 32, !44, i64 36, !44, i64 40, !44, i64 44, !45, i64 48, !45, i64 50, !44, i64 52, !44, i64 56, !44, i64 60}
!97 = !{!"FFMpegCodecData", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !44, i64 16, !44, i64 20, !44, i64 24, !44, i64 28, !42, i64 32, !44, i64 36, !44, i64 40, !44, i64 44, !44, i64 48, !44, i64 52, !44, i64 56, !44, i64 60, !35, i64 64}
!98 = !{!"BakeData", !93, i64 0, !36, i64 248, !45, i64 1272, !45, i64 1274, !45, i64 1276, !45, i64 1278, !42, i64 1280, !42, i64 1284, !36, i64 1288, !36, i64 1291, !36, i64 1292, !36, i64 1293, !36, i64 1296}
!99 = !{!"AudioData", !44, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !44, i64 16, !45, i64 20, !45, i64 22, !42, i64 24, !42, i64 28}
!100 = !{!"GameFraming", !36, i64 0, !36, i64 12, !36, i64 13, !36, i64 14, !36, i64 15}
!101 = !{!"GameData", !100, i64 0, !45, i64 16, !45, i64 18, !45, i64 20, !45, i64 22, !45, i64 24, !45, i64 26, !45, i64 28, !45, i64 30, !45, i64 32, !36, i64 34, !102, i64 40, !45, i64 64, !45, i64 66, !42, i64 68, !103, i64 72, !42, i64 128, !42, i64 132, !44, i64 136, !45, i64 140, !45, i64 142, !45, i64 144, !45, i64 146, !45, i64 148, !45, i64 150, !45, i64 152, !45, i64 154, !45, i64 156, !45, i64 158, !45, i64 160, !45, i64 162, !42, i64 164, !42, i64 168, !42, i64 172, !42, i64 176, !42, i64 180}
!102 = !{!"GameDome", !45, i64 0, !45, i64 2, !45, i64 4, !45, i64 6, !42, i64 8, !42, i64 12, !35, i64 16}
!103 = !{!"RecastData", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20, !42, i64 24, !42, i64 28, !42, i64 32, !42, i64 36, !44, i64 40, !42, i64 44, !42, i64 48, !45, i64 52, !45, i64 54}
!104 = !{!"UnitSettings", !42, i64 0, !36, i64 4, !36, i64 5, !45, i64 6}
!105 = !{!"PhysicsSettings", !36, i64 0, !44, i64 12, !44, i64 16, !44, i64 20}
!106 = !{!"long", !36, i64 0}
!107 = !{!"ColorManagedColorspaceSettings", !36, i64 0}
!108 = !{!39, !45, i64 120}
!109 = !{!73, !35, i64 8}
!110 = !{!73, !35, i64 16}
!111 = !{!73, !35, i64 24}
!112 = !{!73, !35, i64 32}
!113 = !{!73, !35, i64 40}
!114 = !{!115, !35, i64 96}
!115 = !{!"ScrArea", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !43, i64 56, !36, i64 72, !36, i64 73, !45, i64 74, !45, i64 76, !45, i64 78, !45, i64 80, !45, i64 82, !45, i64 84, !36, i64 86, !36, i64 87, !35, i64 88, !46, i64 96, !46, i64 112, !46, i64 128, !46, i64 144}
!116 = distinct !{!116, !117, !118}
!117 = !{!"llvm.loop.mustprogress"}
!118 = !{!"llvm.loop.unroll.disable"}
!119 = !{!39, !45, i64 130}
!120 = !{!115, !45, i64 76}
!121 = !{!122, !42, i64 10908}
!122 = !{!"UserDef", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !44, i64 16, !36, i64 20, !36, i64 788, !36, i64 1556, !36, i64 2580, !36, i64 3348, !36, i64 4116, !36, i64 4884, !36, i64 5652, !36, i64 6420, !36, i64 7444, !44, i64 8468, !45, i64 8472, !45, i64 8474, !45, i64 8476, !45, i64 8478, !45, i64 8480, !45, i64 8482, !44, i64 8484, !44, i64 8488, !44, i64 8492, !45, i64 8496, !45, i64 8498, !44, i64 8500, !44, i64 8504, !44, i64 8508, !44, i64 8512, !44, i64 8516, !44, i64 8520, !44, i64 8524, !45, i64 8528, !45, i64 8530, !45, i64 8532, !45, i64 8534, !46, i64 8536, !46, i64 8552, !46, i64 8568, !46, i64 8584, !46, i64 8600, !46, i64 8616, !46, i64 8632, !36, i64 8648, !45, i64 8712, !45, i64 8714, !45, i64 8716, !45, i64 8718, !45, i64 8720, !45, i64 8722, !45, i64 8724, !45, i64 8726, !36, i64 8728, !45, i64 8896, !45, i64 8898, !45, i64 8900, !45, i64 8902, !45, i64 8904, !45, i64 8906, !45, i64 8908, !45, i64 8910, !44, i64 8912, !44, i64 8916, !45, i64 8920, !45, i64 8922, !45, i64 8924, !45, i64 8926, !45, i64 8928, !45, i64 8930, !45, i64 8932, !45, i64 8934, !45, i64 8936, !45, i64 8938, !36, i64 8940, !36, i64 8941, !36, i64 8942, !36, i64 8943, !45, i64 8944, !45, i64 8946, !45, i64 8948, !45, i64 8950, !45, i64 8952, !45, i64 8954, !42, i64 8956, !42, i64 8960, !44, i64 8964, !45, i64 8968, !45, i64 8970, !42, i64 8972, !45, i64 8976, !45, i64 8978, !45, i64 8980, !45, i64 8982, !123, i64 8984, !36, i64 9760, !36, i64 9772, !45, i64 9788, !36, i64 9790, !36, i64 9791, !36, i64 9792, !36, i64 9872, !44, i64 10896, !44, i64 10900, !42, i64 10904, !42, i64 10908, !44, i64 10912, !45, i64 10916, !45, i64 10918, !45, i64 10920, !45, i64 10922, !45, i64 10924, !45, i64 10926, !124, i64 10928}
!123 = !{!"ColorBand", !45, i64 0, !45, i64 2, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !36, i64 8}
!124 = !{!"WalkNavigation", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20, !45, i64 24, !36, i64 26}
!125 = !{!122, !44, i64 8524}
!126 = !{!39, !45, i64 226}
!127 = !{!128, !44, i64 36}
!128 = !{!"wmNotifier", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !44, i64 32, !44, i64 36, !44, i64 40, !44, i64 44, !44, i64 48, !35, i64 56}
!129 = !{!128, !44, i64 40}
!130 = !{!72, !35, i64 256}
!131 = !{!39, !45, i64 208}
!132 = !{!39, !45, i64 210}
!133 = !{!134, !35, i64 296}
!134 = !{!"wmWindowManager", !91, i64 0, !35, i64 120, !35, i64 128, !46, i64 136, !44, i64 152, !45, i64 156, !45, i64 158, !46, i64 160, !46, i64 176, !135, i64 192, !46, i64 232, !46, i64 248, !46, i64 264, !46, i64 280, !35, i64 296, !35, i64 304, !35, i64 312, !46, i64 320, !35, i64 336, !36, i64 344, !36, i64 345}
!135 = !{!"ReportList", !46, i64 0, !44, i64 16, !44, i64 20, !44, i64 24, !44, i64 28, !35, i64 32}
!136 = !{!128, !44, i64 48}
!137 = !{!90, !35, i64 256}
!138 = !{!139, !44, i64 2104}
!139 = !{!"Editing", !35, i64 0, !46, i64 8, !46, i64 24, !35, i64 40, !36, i64 48, !36, i64 1072, !44, i64 2096, !44, i64 2100, !44, i64 2104, !44, i64 2108, !41, i64 2112}
!140 = !{!72, !44, i64 244}
!141 = !{!90, !44, i64 680}
!142 = !{!139, !44, i64 2100}
!143 = !{!139, !44, i64 2096}
!144 = !{!122, !44, i64 8484}
!145 = !{!146, !44, i64 20}
!146 = !{!"wmDrag", !35, i64 0, !35, i64 8, !44, i64 16, !44, i64 20, !35, i64 24, !36, i64 32, !147, i64 1056, !35, i64 1064, !42, i64 1072, !44, i64 1076, !44, i64 1080, !36, i64 1084, !44, i64 1284}
!147 = !{!"double", !36, i64 0}
!148 = !{!146, !44, i64 16}
!149 = !{!150, !35, i64 48}
!150 = !{!"wmDropBox", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !45, i64 56}

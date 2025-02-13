; ModuleID = 'blender/source/blender/editors/space_graph/space_graph.c'
source_filename = "blender/source/blender/editors/space_graph/space_graph.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.ListBase = type { ptr, ptr }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.Global = type { ptr, [1024 x i8], [1024 x i8], i8, i8, i8, %struct.ListBase, i8, i8, i8, i16, i16, i16, i8, i16, i32, i32, i8, i32, i32, [200 x i8] }
%struct.ScrArea = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.SpaceType = type { ptr, ptr, [64 x i8], i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, i32 }
%struct.ARegionType = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, i32, i32, i32, i16, i16, i16 }
%struct.SpaceIpo = type { ptr, ptr, %struct.ListBase, i32, float, [8 x i16], %struct.View2D, ptr, %struct.ListBase, i16, i16, i32, float, i32 }
%struct.bDopeSheet = type { ptr, %struct.ListBase, ptr, [64 x i8], i32, i32, i32, i32 }
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
%struct.Main = type { ptr, ptr, [1024 x i8], i16, i16, i16, i16, i64, [16 x i8], i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [256 x i8], ptr, ptr }
%struct.wmNotifier = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr }
%struct.bAnimContext = type { ptr, i16, i16, i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bAnimListElem = type { ptr, ptr, ptr, i32, i32, i32, i16, i16, ptr, ptr, ptr }
%struct.FCurve = type { ptr, ptr, ptr, ptr, %struct.ListBase, ptr, ptr, i32, float, i16, i16, i32, ptr, i32, [3 x float], float, float }
%struct.wmWindowManager = type { %struct.ID, ptr, ptr, %struct.ListBase, i32, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ReportList, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, %struct.ListBase, ptr, i8, [7 x i8] }
%struct.ReportList = type { %struct.ListBase, i32, i32, i32, i32, ptr }

@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [18 x i8] c"buttons for graph\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"spacetype ipo\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"spacetype graphedit region\00", align 1
@U = external local_unnamed_addr global %struct.UserDef, align 8
@.str.4 = private unnamed_addr constant [15 x i8] c"init graphedit\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"GraphEdit DopeSheet\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"header for graphedit\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"channels area for graphedit\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"buttons area for graphedit\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"main area for graphedit\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@G = external local_unnamed_addr global %struct.Global, align 8
@MEM_dupallocN = external local_unnamed_addr global ptr, align 8
@.str.10 = private unnamed_addr constant [13 x i8] c"Graph Editor\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"Graph Editor Generic\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"Animation Channels\00", align 1
@str = private unnamed_addr constant [65 x i8] c"Graph\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @graph_has_buttons_region(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @BKE_area_find_region_type(ptr noundef %0, i32 noundef 4) #7
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %14

4:                                                ; preds = %1
  %5 = tail call ptr @BKE_area_find_region_type(ptr noundef %0, i32 noundef 0) #7
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %4
  %8 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %9 = tail call ptr %8(i64 noundef 384, ptr noundef nonnull @.str) #7
  %10 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 20
  tail call void @BLI_insertlinkafter(ptr noundef nonnull %10, ptr noundef nonnull %5, ptr noundef %9) #7
  %11 = getelementptr inbounds %struct.ARegion, ptr %9, i64 0, i32 8
  store i16 4, ptr %11, align 2, !tbaa !9
  %12 = getelementptr inbounds %struct.ARegion, ptr %9, i64 0, i32 9
  store i16 4, ptr %12, align 8, !tbaa !18
  %13 = getelementptr inbounds %struct.ARegion, ptr %9, i64 0, i32 10
  store i16 1, ptr %13, align 2, !tbaa !19
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
define dso_local void @ED_spacetype_ipo() local_unnamed_addr #0 {
  %1 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %2 = tail call ptr %1(i64 noundef 216, ptr noundef nonnull @.str.1) #7
  %3 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 3
  store i32 2, ptr %3, align 8, !tbaa !20
  %4 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %4, ptr noundef nonnull align 1 dereferenceable(64) @str, i64 noundef 64, i1 false) #7
  %5 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 5
  store ptr @graph_new, ptr %5, align 8, !tbaa !22
  %6 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 6
  store ptr @graph_free, ptr %6, align 8, !tbaa !23
  %7 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 7
  store ptr @graph_init, ptr %7, align 8, !tbaa !24
  %8 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 11
  store ptr @graph_duplicate, ptr %8, align 8, !tbaa !25
  %9 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 12
  store ptr @graphedit_operatortypes, ptr %9, align 8, !tbaa !26
  %10 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 13
  store ptr @graphedit_keymap, ptr %10, align 8, !tbaa !27
  %11 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 9
  store ptr @graph_listener, ptr %11, align 8, !tbaa !28
  %12 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 10
  store ptr @graph_refresh, ptr %12, align 8, !tbaa !29
  %13 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %14 = tail call ptr %13(i64 noundef 184, ptr noundef nonnull @.str.3) #7
  %15 = getelementptr inbounds %struct.ARegionType, ptr %14, i64 0, i32 2
  store i32 0, ptr %15, align 8, !tbaa !30
  %16 = getelementptr inbounds %struct.ARegionType, ptr %14, i64 0, i32 3
  store ptr @graph_main_area_init, ptr %16, align 8, !tbaa !32
  %17 = getelementptr inbounds %struct.ARegionType, ptr %14, i64 0, i32 5
  store ptr @graph_main_area_draw, ptr %17, align 8, !tbaa !33
  %18 = getelementptr inbounds %struct.ARegionType, ptr %14, i64 0, i32 6
  store ptr @graph_region_listener, ptr %18, align 8, !tbaa !34
  %19 = getelementptr inbounds %struct.ARegionType, ptr %14, i64 0, i32 20
  store i32 30, ptr %19, align 8, !tbaa !35
  %20 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 16
  tail call void @BLI_addhead(ptr noundef nonnull %20, ptr noundef %14) #7
  %21 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %22 = tail call ptr %21(i64 noundef 184, ptr noundef nonnull @.str.3) #7
  %23 = getelementptr inbounds %struct.ARegionType, ptr %22, i64 0, i32 2
  store i32 1, ptr %23, align 8, !tbaa !30
  %24 = getelementptr inbounds %struct.ARegionType, ptr %22, i64 0, i32 19
  store i32 26, ptr %24, align 4, !tbaa !36
  %25 = getelementptr inbounds %struct.ARegionType, ptr %22, i64 0, i32 20
  store i32 83, ptr %25, align 8, !tbaa !35
  %26 = getelementptr inbounds %struct.ARegionType, ptr %22, i64 0, i32 6
  store ptr @graph_region_listener, ptr %26, align 8, !tbaa !34
  %27 = getelementptr inbounds %struct.ARegionType, ptr %22, i64 0, i32 3
  store ptr @graph_header_area_init, ptr %27, align 8, !tbaa !32
  %28 = getelementptr inbounds %struct.ARegionType, ptr %22, i64 0, i32 5
  store ptr @graph_header_area_draw, ptr %28, align 8, !tbaa !33
  tail call void @BLI_addhead(ptr noundef nonnull %20, ptr noundef %22) #7
  %29 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %30 = tail call ptr %29(i64 noundef 184, ptr noundef nonnull @.str.3) #7
  %31 = getelementptr inbounds %struct.ARegionType, ptr %30, i64 0, i32 2
  store i32 2, ptr %31, align 8, !tbaa !30
  %32 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !37
  %33 = sitofp i16 %32 to float
  %34 = tail call float @llvm.fmuladd.f32(float %33, float 0x3FEB333340000000, float 2.000000e+02)
  %35 = fptosi float %34 to i32
  %36 = getelementptr inbounds %struct.ARegionType, ptr %30, i64 0, i32 18
  store i32 %35, ptr %36, align 8, !tbaa !41
  %37 = getelementptr inbounds %struct.ARegionType, ptr %30, i64 0, i32 20
  store i32 19, ptr %37, align 8, !tbaa !35
  %38 = getelementptr inbounds %struct.ARegionType, ptr %30, i64 0, i32 6
  store ptr @graph_region_listener, ptr %38, align 8, !tbaa !34
  %39 = getelementptr inbounds %struct.ARegionType, ptr %30, i64 0, i32 3
  store ptr @graph_channel_area_init, ptr %39, align 8, !tbaa !32
  %40 = getelementptr inbounds %struct.ARegionType, ptr %30, i64 0, i32 5
  store ptr @graph_channel_area_draw, ptr %40, align 8, !tbaa !33
  tail call void @BLI_addhead(ptr noundef nonnull %20, ptr noundef %30) #7
  %41 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %42 = tail call ptr %41(i64 noundef 184, ptr noundef nonnull @.str.3) #7
  %43 = getelementptr inbounds %struct.ARegionType, ptr %42, i64 0, i32 2
  store i32 4, ptr %43, align 8, !tbaa !30
  %44 = getelementptr inbounds %struct.ARegionType, ptr %42, i64 0, i32 18
  store i32 200, ptr %44, align 8, !tbaa !41
  %45 = getelementptr inbounds %struct.ARegionType, ptr %42, i64 0, i32 20
  store i32 1, ptr %45, align 8, !tbaa !35
  %46 = getelementptr inbounds %struct.ARegionType, ptr %42, i64 0, i32 6
  store ptr @graph_region_listener, ptr %46, align 8, !tbaa !34
  %47 = getelementptr inbounds %struct.ARegionType, ptr %42, i64 0, i32 3
  store ptr @graph_buttons_area_init, ptr %47, align 8, !tbaa !32
  %48 = getelementptr inbounds %struct.ARegionType, ptr %42, i64 0, i32 5
  store ptr @graph_buttons_area_draw, ptr %48, align 8, !tbaa !33
  tail call void @BLI_addhead(ptr noundef nonnull %20, ptr noundef %42) #7
  tail call void @graph_buttons_register(ptr noundef %42) #7
  tail call void @BKE_spacetype_register(ptr noundef %2) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @graph_new(ptr noundef %0) #0 {
  %2 = tail call ptr @CTX_data_scene(ptr noundef %0) #7
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %4 = tail call ptr %3(i64 noundef 256, ptr noundef nonnull @.str.4) #7
  %5 = getelementptr inbounds %struct.SpaceIpo, ptr %4, i64 0, i32 3
  store i32 2, ptr %5, align 8, !tbaa !42
  %6 = getelementptr inbounds %struct.SpaceIpo, ptr %4, i64 0, i32 10
  store i16 2, ptr %6, align 2, !tbaa !44
  %7 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %8 = tail call ptr %7(i64 noundef 112, ptr noundef nonnull @.str.5) #7
  %9 = getelementptr inbounds %struct.SpaceIpo, ptr %4, i64 0, i32 7
  store ptr %8, ptr %9, align 8, !tbaa !45
  store ptr %2, ptr %8, align 8, !tbaa !46
  %10 = getelementptr inbounds %struct.bDopeSheet, ptr %8, i64 0, i32 4
  %11 = load i32, ptr %10, align 8, !tbaa !48
  %12 = or i32 %11, 1
  store i32 %12, ptr %10, align 8, !tbaa !48
  %13 = getelementptr inbounds %struct.SpaceIpo, ptr %4, i64 0, i32 11
  %14 = load i32, ptr %13, align 4, !tbaa !49
  %15 = or i32 %14, 512
  store i32 %15, ptr %13, align 4, !tbaa !49
  %16 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %17 = tail call ptr %16(i64 noundef 384, ptr noundef nonnull @.str.6) #7
  %18 = getelementptr inbounds %struct.SpaceIpo, ptr %4, i64 0, i32 2
  tail call void @BLI_addtail(ptr noundef nonnull %18, ptr noundef %17) #7
  %19 = getelementptr inbounds %struct.ARegion, ptr %17, i64 0, i32 8
  store i16 1, ptr %19, align 2, !tbaa !9
  %20 = getelementptr inbounds %struct.ARegion, ptr %17, i64 0, i32 9
  store i16 2, ptr %20, align 8, !tbaa !18
  %21 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %22 = tail call ptr %21(i64 noundef 384, ptr noundef nonnull @.str.7) #7
  tail call void @BLI_addtail(ptr noundef nonnull %18, ptr noundef %22) #7
  %23 = getelementptr inbounds %struct.ARegion, ptr %22, i64 0, i32 8
  store i16 2, ptr %23, align 2, !tbaa !9
  %24 = getelementptr inbounds %struct.ARegion, ptr %22, i64 0, i32 9
  store i16 3, ptr %24, align 8, !tbaa !18
  %25 = getelementptr inbounds %struct.ARegion, ptr %22, i64 0, i32 2, i32 9
  store i16 10, ptr %25, align 8, !tbaa !50
  %26 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %27 = tail call ptr %26(i64 noundef 384, ptr noundef nonnull @.str.8) #7
  tail call void @BLI_addtail(ptr noundef nonnull %18, ptr noundef %27) #7
  %28 = getelementptr inbounds %struct.ARegion, ptr %27, i64 0, i32 8
  store i16 4, ptr %28, align 2, !tbaa !9
  %29 = getelementptr inbounds %struct.ARegion, ptr %27, i64 0, i32 9
  store i16 4, ptr %29, align 8, !tbaa !18
  %30 = getelementptr inbounds %struct.ARegion, ptr %27, i64 0, i32 10
  store i16 1, ptr %30, align 2, !tbaa !19
  %31 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %32 = tail call ptr %31(i64 noundef 384, ptr noundef nonnull @.str.9) #7
  tail call void @BLI_addtail(ptr noundef nonnull %18, ptr noundef %32) #7
  %33 = getelementptr inbounds %struct.ARegion, ptr %32, i64 0, i32 8
  store i16 0, ptr %33, align 2, !tbaa !9
  %34 = getelementptr inbounds %struct.ARegion, ptr %32, i64 0, i32 2
  store float 0.000000e+00, ptr %34, align 8, !tbaa !51
  %35 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 22, i32 6
  %36 = load i32, ptr %35, align 4, !tbaa !52
  %37 = sitofp i32 %36 to float
  %38 = fadd float %37, -1.000000e+01
  %39 = getelementptr inbounds %struct.ARegion, ptr %32, i64 0, i32 2, i32 0, i32 2
  store float %38, ptr %39, align 8, !tbaa !71
  %40 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 22, i32 7
  %41 = load i32, ptr %40, align 8, !tbaa !72
  %42 = sitofp i32 %41 to float
  %43 = getelementptr inbounds %struct.ARegion, ptr %32, i64 0, i32 2, i32 0, i32 1
  store float %42, ptr %43, align 4, !tbaa !73
  %44 = getelementptr inbounds %struct.ARegion, ptr %32, i64 0, i32 2, i32 0, i32 3
  store float 1.000000e+01, ptr %44, align 4, !tbaa !74
  %45 = getelementptr inbounds %struct.ARegion, ptr %32, i64 0, i32 2, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %45, ptr noundef nonnull align 8 dereferenceable(16) %34, i64 16, i1 false), !tbaa.struct !75
  %46 = getelementptr inbounds %struct.ARegion, ptr %32, i64 0, i32 2, i32 5
  store <4 x float> <float 0x3810000000000000, float 0x3810000000000000, float 3.000000e+05, float 0x47EFFFFFE0000000>, ptr %46, align 8, !tbaa !76
  %47 = getelementptr inbounds %struct.ARegion, ptr %32, i64 0, i32 2, i32 9
  store i16 105, ptr %47, align 8, !tbaa !50
  %48 = getelementptr inbounds %struct.ARegion, ptr %32, i64 0, i32 2, i32 11
  store i16 0, ptr %48, align 4, !tbaa !77
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @graph_free(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.SpaceIpo, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !45
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.bDopeSheet, ptr %3, i64 0, i32 1
  tail call void @BLI_freelistN(ptr noundef nonnull %6) #7
  %7 = load ptr, ptr @MEM_freeN, align 8, !tbaa !5
  %8 = load ptr, ptr %2, align 8, !tbaa !45
  tail call void %7(ptr noundef %8) #7
  br label %9

9:                                                ; preds = %5, %1
  %10 = getelementptr inbounds %struct.SpaceIpo, ptr %0, i64 0, i32 8
  %11 = load ptr, ptr %10, align 8, !tbaa !78
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void @free_fcurves(ptr noundef nonnull %10) #7
  br label %14

14:                                               ; preds = %13, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @graph_init(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 19
  %4 = load ptr, ptr %3, align 8, !tbaa !79
  %5 = getelementptr inbounds %struct.SpaceIpo, ptr %4, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = load ptr, ptr @MEM_callocN, align 8, !tbaa !5
  %10 = tail call ptr %9(i64 noundef 112, ptr noundef nonnull @.str.5) #7
  store ptr %10, ptr %5, align 8, !tbaa !45
  %11 = load ptr, ptr @G, align 8, !tbaa !81
  %12 = getelementptr inbounds %struct.Main, ptr %11, i64 0, i32 11
  %13 = load ptr, ptr %12, align 8, !tbaa !83
  store ptr %13, ptr %10, align 8, !tbaa !46
  br label %14

14:                                               ; preds = %8, %2
  tail call void @ED_area_tag_refresh(ptr noundef nonnull %1) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @graph_duplicate(ptr noundef %0) #0 {
  %2 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !5
  %3 = tail call ptr %2(ptr noundef %0) #7
  %4 = getelementptr inbounds %struct.SpaceIpo, ptr %3, i64 0, i32 8
  %5 = getelementptr inbounds %struct.SpaceIpo, ptr %0, i64 0, i32 8
  tail call void @BLI_duplicatelist(ptr noundef nonnull %4, ptr noundef nonnull %5) #7
  %6 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !5
  %7 = getelementptr inbounds %struct.SpaceIpo, ptr %3, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !45
  %9 = tail call ptr %6(ptr noundef %8) #7
  store ptr %9, ptr %7, align 8, !tbaa !45
  ret ptr %3
}

; Function Attrs: optsize
declare void @graphedit_operatortypes() #2

; Function Attrs: optsize
declare void @graphedit_keymap(ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @graph_listener(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !79
  %6 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 5
  %7 = load i32, ptr %6, align 4, !tbaa !85
  switch i32 %7, label %52 [
    i32 234881024, label %8
    i32 67108864, label %17
    i32 83886080, label %25
    i32 285212672, label %33
    i32 251658240, label %41
    i32 33554432, label %46
  ]

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 6
  %10 = load i32, ptr %9, align 8, !tbaa !87
  switch i32 %10, label %16 [
    i32 4587520, label %11
    i32 4718592, label %11
  ]

11:                                               ; preds = %8, %8
  %12 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 8
  %13 = load i32, ptr %12, align 8, !tbaa !88
  %14 = icmp eq i32 %13, 6
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  tail call void @ED_area_tag_redraw(ptr noundef nonnull %1) #7
  br label %52

16:                                               ; preds = %8, %11
  tail call void @ED_area_tag_refresh(ptr noundef nonnull %1) #7
  br label %52

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 6
  %19 = load i32, ptr %18, align 8, !tbaa !87
  switch i32 %19, label %24 [
    i32 458752, label %20
    i32 524288, label %20
  ]

20:                                               ; preds = %17, %17
  %21 = getelementptr inbounds %struct.SpaceIpo, ptr %5, i64 0, i32 11
  %22 = load i32, ptr %21, align 4, !tbaa !49
  %23 = or i32 %22, 1024
  store i32 %23, ptr %21, align 4, !tbaa !49
  tail call void @ED_area_tag_refresh(ptr noundef nonnull %1) #7
  br label %52

24:                                               ; preds = %17
  tail call void @ED_area_tag_redraw(ptr noundef nonnull %1) #7
  br label %52

25:                                               ; preds = %3
  %26 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 6
  %27 = load i32, ptr %26, align 8, !tbaa !87
  switch i32 %27, label %32 [
    i32 1441792, label %28
    i32 1376256, label %28
    i32 1179648, label %52
  ]

28:                                               ; preds = %25, %25
  %29 = getelementptr inbounds %struct.SpaceIpo, ptr %5, i64 0, i32 11
  %30 = load i32, ptr %29, align 4, !tbaa !49
  %31 = or i32 %30, 1024
  store i32 %31, ptr %29, align 4, !tbaa !49
  tail call void @ED_area_tag_refresh(ptr noundef nonnull %1) #7
  br label %52

32:                                               ; preds = %25
  tail call void @ED_area_tag_redraw(ptr noundef nonnull %1) #7
  br label %52

33:                                               ; preds = %3
  %34 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 8
  %35 = load i32, ptr %34, align 8, !tbaa !88
  %36 = icmp eq i32 %35, 6
  br i1 %36, label %37, label %52

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.SpaceIpo, ptr %5, i64 0, i32 11
  %39 = load i32, ptr %38, align 4, !tbaa !49
  %40 = or i32 %39, 1024
  store i32 %40, ptr %38, align 4, !tbaa !49
  tail call void @ED_area_tag_refresh(ptr noundef nonnull %1) #7
  br label %52

41:                                               ; preds = %3
  %42 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 6
  %43 = load i32, ptr %42, align 8, !tbaa !87
  %44 = icmp eq i32 %43, 851968
  br i1 %44, label %45, label %52

45:                                               ; preds = %41
  tail call void @ED_area_tag_redraw(ptr noundef nonnull %1) #7
  br label %52

46:                                               ; preds = %3
  %47 = getelementptr inbounds %struct.SpaceIpo, ptr %5, i64 0, i32 11
  %48 = load i32, ptr %47, align 4, !tbaa !49
  %49 = and i32 %48, 1024
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %46
  tail call void @ED_area_tag_refresh(ptr noundef nonnull %1) #7
  br label %52

52:                                               ; preds = %46, %51, %41, %45, %33, %37, %28, %25, %32, %20, %24, %15, %16, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @graph_refresh(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.bAnimContext, align 8
  %4 = alloca %struct.ListBase, align 8
  %5 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !79
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #8
  %7 = getelementptr inbounds %struct.SpaceIpo, ptr %6, i64 0, i32 11
  %8 = load i32, ptr %7, align 4, !tbaa !49
  %9 = and i32 %8, 1024
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  tail call void @ANIM_sync_animchannels_to_data(ptr noundef %0) #7
  %12 = load i32, ptr %7, align 4, !tbaa !49
  %13 = and i32 %12, -1025
  store i32 %13, ptr %7, align 4, !tbaa !49
  tail call void @ED_area_tag_redraw(ptr noundef nonnull %1) #7
  br label %14

14:                                               ; preds = %11, %2
  %15 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #7
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %50, label %17

17:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @UI_SetTheme(i32 noundef 2, i32 noundef 0) #7
  %18 = load ptr, ptr %3, align 8, !tbaa !89
  %19 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 1
  %20 = load i16, ptr %19, align 8, !tbaa !91
  %21 = sext i16 %20 to i32
  %22 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 2049, ptr noundef %18, i32 noundef %21) #7
  %23 = load ptr, ptr %4, align 8, !tbaa !5
  %24 = icmp eq ptr %23, null
  br i1 %24, label %49, label %25

25:                                               ; preds = %17
  %26 = trunc i64 %22 to i32
  br label %27

27:                                               ; preds = %25, %45
  %28 = phi ptr [ %23, %25 ], [ %47, %45 ]
  %29 = phi i32 [ 0, %25 ], [ %46, %45 ]
  %30 = getelementptr inbounds %struct.bAnimListElem, ptr %28, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !92
  %32 = getelementptr inbounds %struct.FCurve, ptr %31, i64 0, i32 13
  %33 = load i32, ptr %32, align 8, !tbaa !94
  switch i32 %33, label %43 [
    i32 2, label %45
    i32 1, label %34
  ]

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.FCurve, ptr %31, i64 0, i32 14
  %36 = getelementptr inbounds %struct.FCurve, ptr %31, i64 0, i32 11
  %37 = load i32, ptr %36, align 4, !tbaa !96
  switch i32 %37, label %41 [
    i32 0, label %38
    i32 1, label %39
    i32 2, label %40
  ]

38:                                               ; preds = %34
  call void @UI_GetThemeColor3fv(i32 noundef 176, ptr noundef nonnull %35) #7
  br label %45

39:                                               ; preds = %34
  call void @UI_GetThemeColor3fv(i32 noundef 177, ptr noundef nonnull %35) #7
  br label %45

40:                                               ; preds = %34
  call void @UI_GetThemeColor3fv(i32 noundef 178, ptr noundef nonnull %35) #7
  br label %45

41:                                               ; preds = %34
  store <2 x float> <float 0x3FD3333340000000, float 0x3FE99999A0000000>, ptr %35, align 4, !tbaa !76
  %42 = getelementptr inbounds %struct.FCurve, ptr %31, i64 0, i32 14, i64 2
  store float 1.000000e+00, ptr %42, align 4, !tbaa !76
  br label %45

43:                                               ; preds = %27
  %44 = getelementptr inbounds %struct.FCurve, ptr %31, i64 0, i32 14
  call void @getcolor_fcurve_rainbow(i32 noundef %29, i32 noundef %26, ptr noundef nonnull %44) #7
  br label %45

45:                                               ; preds = %38, %39, %40, %41, %27, %43
  %46 = add nuw nsw i32 %29, 1
  %47 = load ptr, ptr %28, align 8, !tbaa !5
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %27, !llvm.loop !97

49:                                               ; preds = %45, %17
  call void @ANIM_animdata_freelist(ptr noundef nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8
  br label %50

50:                                               ; preds = %49, %14
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @graph_main_area_init(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  %4 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 5
  %5 = load i16, ptr %4, align 8, !tbaa !99
  %6 = sext i16 %5 to i32
  %7 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 6
  %8 = load i16, ptr %7, align 2, !tbaa !100
  %9 = sext i16 %8 to i32
  tail call void @UI_view2d_region_reinit(ptr noundef nonnull %3, i16 noundef signext -1, i32 noundef %6, i32 noundef %9) #7
  %10 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 14
  %11 = load ptr, ptr %10, align 8, !tbaa !101
  %12 = tail call ptr @WM_keymap_find(ptr noundef %11, ptr noundef nonnull @.str.10, i32 noundef 2, i32 noundef 0) #7
  %13 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 26
  %14 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 4
  %15 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3
  %16 = tail call ptr @WM_event_add_keymap_handler_bb(ptr noundef nonnull %13, ptr noundef %12, ptr noundef nonnull %14, ptr noundef nonnull %15) #7
  %17 = load ptr, ptr %10, align 8, !tbaa !101
  %18 = tail call ptr @WM_keymap_find(ptr noundef %17, ptr noundef nonnull @.str.11, i32 noundef 2, i32 noundef 0) #7
  %19 = tail call ptr @WM_event_add_keymap_handler(ptr noundef nonnull %13, ptr noundef %18) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @graph_main_area_draw(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.bAnimContext, align 8
  %4 = alloca [3 x float], align 4
  %5 = alloca [2 x float], align 4
  %6 = tail call ptr @CTX_wm_space_graph(ptr noundef %0) #7
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #8
  %7 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #8
  call void @UI_GetThemeColor3fv(i32 noundef 2, ptr noundef nonnull %4) #7
  %8 = load float, ptr %4, align 4, !tbaa !76
  %9 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !76
  %11 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !76
  call void @glClearColor(float noundef %8, float noundef %10, float noundef %12, float noundef 0.000000e+00) #7
  call void @glClear(i32 noundef 16384) #7
  call void @UI_view2d_view_ortho(ptr noundef nonnull %7) #7
  %13 = getelementptr inbounds %struct.SpaceIpo, ptr %6, i64 0, i32 11
  %14 = load i32, ptr %13, align 4, !tbaa !49
  %15 = trunc i32 %14 to i16
  %16 = lshr i16 %15, 3
  %17 = and i16 %16, 2
  %18 = xor i16 %17, 2
  %19 = call ptr @CTX_data_scene(ptr noundef %0) #7
  %20 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 5
  %21 = load i16, ptr %20, align 8, !tbaa !99
  %22 = sext i16 %21 to i32
  %23 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 6
  %24 = load i16, ptr %23, align 2, !tbaa !100
  %25 = sext i16 %24 to i32
  %26 = call ptr @UI_view2d_grid_calc(ptr noundef %19, ptr noundef nonnull %7, i16 noundef signext %18, i16 noundef signext 0, i16 noundef signext 3, i16 noundef signext 0, i32 noundef %22, i32 noundef %25) #7
  call void @UI_view2d_grid_draw(ptr noundef nonnull %7, ptr noundef %26, i32 noundef 31) #7
  call void @ED_region_draw_cb_draw(ptr noundef %0, ptr noundef %1, i32 noundef 2) #7
  %27 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #7
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %2
  call void @graph_draw_ghost_curves(ptr noundef nonnull %3, ptr noundef nonnull %6, ptr noundef nonnull %1) #7
  call void @graph_draw_curves(ptr noundef nonnull %3, ptr noundef nonnull %6, ptr noundef nonnull %1, ptr noundef %26, i16 noundef signext 0) #7
  call void @graph_draw_curves(ptr noundef nonnull %3, ptr noundef nonnull %6, ptr noundef nonnull %1, ptr noundef %26, i16 noundef signext 1) #7
  %30 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 0, i32 1
  %31 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 0, i32 2
  %32 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 0, i32 3
  call void @get_graph_keyframe_extents(ptr noundef nonnull %3, ptr noundef nonnull %7, ptr noundef nonnull %30, ptr noundef nonnull %31, ptr noundef nonnull %32, i8 noundef zeroext 0, i8 noundef zeroext 1) #7
  %33 = load <2 x float>, ptr %7, align 8, !tbaa !76
  %34 = fadd <2 x float> %33, <float -1.000000e+01, float 1.000000e+01>
  store <2 x float> %34, ptr %7, align 8, !tbaa !76
  br label %35

35:                                               ; preds = %29, %2
  call void @UI_view2d_grid_free(ptr noundef %26) #7
  %36 = load i32, ptr %13, align 4, !tbaa !49
  %37 = and i32 %36, 256
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %35
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #8
  %40 = getelementptr inbounds %struct.SpaceIpo, ptr %6, i64 0, i32 12
  %41 = load float, ptr %40, align 8, !tbaa !104
  %42 = getelementptr inbounds [2 x float], ptr %5, i64 0, i64 1
  store float %41, ptr %42, align 4, !tbaa !76
  call void @UI_ThemeColorShadeAlpha(i32 noundef 49, i32 noundef -10, i32 noundef -50) #7
  call void @glLineWidth(float noundef 2.000000e+00) #7
  call void @glEnable(i32 noundef 3042) #7
  call void @glBegin(i32 noundef 3) #7
  %43 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1
  %44 = load float, ptr %43, align 8, !tbaa !105
  store float %44, ptr %5, align 4, !tbaa !76
  call void @glVertex2fv(ptr noundef nonnull %5) #7
  %45 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 1
  %46 = load float, ptr %45, align 4, !tbaa !106
  store float %46, ptr %5, align 4, !tbaa !76
  call void @glVertex2fv(ptr noundef nonnull %5) #7
  call void @glEnd() #7
  call void @glDisable(i32 noundef 3042) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #8
  %47 = load i32, ptr %13, align 4, !tbaa !49
  br label %48

48:                                               ; preds = %39, %35
  %49 = phi i32 [ %47, %39 ], [ %36, %35 ]
  %50 = trunc i32 %49 to i16
  %51 = lshr i16 %50, 3
  %52 = and i16 %51, 2
  %53 = and i32 %49, 8
  %54 = icmp eq i32 %53, 0
  %55 = zext i1 %54 to i16
  %56 = or disjoint i16 %52, %55
  call void @ANIM_draw_cfra(ptr noundef %0, ptr noundef nonnull %7, i16 noundef signext %56) #7
  call void @UI_view2d_view_orthoSpecial(ptr noundef nonnull %1, ptr noundef nonnull %7, i8 noundef zeroext 1) #7
  call void @ED_markers_draw(ptr noundef %0, i32 noundef 4) #7
  call void @UI_view2d_view_ortho(ptr noundef nonnull %7) #7
  call void @ANIM_draw_previewrange(ptr noundef %0, ptr noundef nonnull %7, i32 noundef 0) #7
  call void @UI_view2d_view_ortho(ptr noundef nonnull %7) #7
  call void @ED_region_draw_cb_draw(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 0) #7
  call void @UI_view2d_view_restore(ptr noundef %0) #7
  %57 = call ptr @UI_view2d_scrollers_calc(ptr noundef %0, ptr noundef nonnull %7, i16 noundef signext %18, i16 noundef signext 0, i16 noundef signext 3, i16 noundef signext 0) #7
  call void @UI_view2d_scrollers_draw(ptr noundef %0, ptr noundef nonnull %7, ptr noundef %57) #7
  call void @UI_view2d_scrollers_free(ptr noundef %57) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @graph_region_listener(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr noundef %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 5
  %6 = load i32, ptr %5, align 4, !tbaa !85
  switch i32 %6, label %32 [
    i32 234881024, label %36
    i32 67108864, label %7
    i32 83886080, label %16
    i32 285212672, label %25
    i32 301989888, label %28
  ]

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %9 = load i32, ptr %8, align 8, !tbaa !87
  %10 = add i32 %9, -131072
  %11 = tail call i32 @llvm.fshl.i32(i32 %10, i32 %10, i32 16)
  switch i32 %11, label %37 [
    i32 2, label %36
    i32 5, label %36
    i32 1, label %36
    i32 0, label %36
    i32 4, label %12
  ]

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 8
  %14 = load i32, ptr %13, align 8, !tbaa !88
  %15 = icmp eq i32 %14, 6
  br i1 %15, label %36, label %37

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %18 = load i32, ptr %17, align 8, !tbaa !87
  %19 = add i32 %18, -1376256
  %20 = tail call i32 @llvm.fshl.i32(i32 %19, i32 %19, i32 16)
  switch i32 %20, label %37 [
    i32 0, label %36
    i32 1, label %36
    i32 4, label %36
    i32 3, label %21
  ]

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 8
  %23 = load i32, ptr %22, align 8, !tbaa !88
  %24 = icmp eq i32 %23, 5
  br i1 %24, label %36, label %37

25:                                               ; preds = %4
  %26 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 8
  %27 = load i32, ptr %26, align 8, !tbaa !88
  switch i32 %27, label %37 [
    i32 1, label %36
    i32 6, label %36
  ]

28:                                               ; preds = %4
  %29 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 8
  %30 = load i32, ptr %29, align 8, !tbaa !88
  %31 = icmp eq i32 %30, 5
  br i1 %31, label %36, label %37

32:                                               ; preds = %4
  %33 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %34 = load i32, ptr %33, align 8, !tbaa !87
  %35 = icmp eq i32 %34, 1638400
  br i1 %35, label %36, label %37

36:                                               ; preds = %32, %28, %25, %25, %21, %16, %16, %16, %12, %7, %7, %7, %7, %4
  tail call void @ED_region_tag_redraw(ptr noundef %2) #7
  br label %37

37:                                               ; preds = %36, %32, %28, %25, %16, %21, %7, %12
  ret void
}

; Function Attrs: optsize
declare void @BLI_addhead(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @graph_header_area_init(ptr nocapture readnone %0, ptr noundef %1) #0 {
  tail call void @ED_region_header_init(ptr noundef %1) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @graph_header_area_draw(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @ED_region_header(ptr noundef %0, ptr noundef %1) #7
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

; Function Attrs: noinline nounwind optsize uwtable
define internal void @graph_channel_area_init(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  %4 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 9
  %5 = load i16, ptr %4, align 8, !tbaa !50
  %6 = and i16 %5, -400
  %7 = or disjoint i16 %6, 394
  store i16 %7, ptr %4, align 8, !tbaa !50
  %8 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 5
  %9 = load i16, ptr %8, align 8, !tbaa !99
  %10 = sext i16 %9 to i32
  %11 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 6
  %12 = load i16, ptr %11, align 2, !tbaa !100
  %13 = sext i16 %12 to i32
  tail call void @UI_view2d_region_reinit(ptr noundef nonnull %3, i16 noundef signext 1, i32 noundef %10, i32 noundef %13) #7
  %14 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 14
  %15 = load ptr, ptr %14, align 8, !tbaa !101
  %16 = tail call ptr @WM_keymap_find(ptr noundef %15, ptr noundef nonnull @.str.12, i32 noundef 0, i32 noundef 0) #7
  %17 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 26
  %18 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 4
  %19 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3
  %20 = tail call ptr @WM_event_add_keymap_handler_bb(ptr noundef nonnull %17, ptr noundef %16, ptr noundef nonnull %18, ptr noundef nonnull %19) #7
  %21 = load ptr, ptr %14, align 8, !tbaa !101
  %22 = tail call ptr @WM_keymap_find(ptr noundef %21, ptr noundef nonnull @.str.11, i32 noundef 2, i32 noundef 0) #7
  %23 = tail call ptr @WM_event_add_keymap_handler(ptr noundef nonnull %17, ptr noundef %22) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @graph_channel_area_draw(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.bAnimContext, align 8
  %4 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #8
  %5 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #8
  call void @UI_GetThemeColor3fv(i32 noundef 2, ptr noundef nonnull %4) #7
  %6 = load float, ptr %4, align 4, !tbaa !76
  %7 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !76
  %9 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !76
  call void @glClearColor(float noundef %6, float noundef %8, float noundef %10, float noundef 0.000000e+00) #7
  call void @glClear(i32 noundef 16384) #7
  call void @UI_view2d_view_ortho(ptr noundef nonnull %5) #7
  %11 = call zeroext i8 @ANIM_animdata_get_context(ptr noundef %0, ptr noundef nonnull %3) #7
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  call void @graph_draw_channel_names(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %1) #7
  br label %14

14:                                               ; preds = %13, %2
  call void @UI_view2d_view_restore(ptr noundef %0) #7
  %15 = call ptr @UI_view2d_scrollers_calc(ptr noundef %0, ptr noundef nonnull %5, i16 noundef signext -1, i16 noundef signext -1, i16 noundef signext -1, i16 noundef signext -1) #7
  call void @UI_view2d_scrollers_draw(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %15) #7
  call void @UI_view2d_scrollers_free(ptr noundef %15) #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @graph_buttons_area_init(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @ED_region_panels_init(ptr noundef %0, ptr noundef %1) #7
  %3 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 14
  %4 = load ptr, ptr %3, align 8, !tbaa !101
  %5 = tail call ptr @WM_keymap_find(ptr noundef %4, ptr noundef nonnull @.str.11, i32 noundef 2, i32 noundef 0) #7
  %6 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 26
  %7 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 4
  %8 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3
  %9 = tail call ptr @WM_event_add_keymap_handler_bb(ptr noundef nonnull %6, ptr noundef %5, ptr noundef nonnull %7, ptr noundef nonnull %8) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @graph_buttons_area_draw(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @ED_region_panels(ptr noundef %0, ptr noundef %1, i32 noundef 1, ptr noundef null, i32 noundef -1) #7
  ret void
}

; Function Attrs: optsize
declare void @graph_buttons_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_spacetype_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @free_fcurves(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_area_tag_refresh(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_duplicatelist(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_area_tag_redraw(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ANIM_sync_animchannels_to_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare zeroext i8 @ANIM_animdata_get_context(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: optsize
declare void @UI_SetTheme(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @ANIM_animdata_filter(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_GetThemeColor3fv(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @getcolor_fcurve_rainbow(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ANIM_animdata_freelist(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_view2d_region_reinit(ptr noundef, i16 noundef signext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @WM_keymap_find(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @WM_event_add_keymap_handler_bb(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @WM_event_add_keymap_handler(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_space_graph(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glClearColor(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glClear(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_view2d_view_ortho(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @UI_view2d_grid_calc(ptr noundef, ptr noundef, i16 noundef signext, i16 noundef signext, i16 noundef signext, i16 noundef signext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_view2d_grid_draw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_region_draw_cb_draw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @graph_draw_ghost_curves(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @graph_draw_curves(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @get_graph_keyframe_extents(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_view2d_grid_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_ThemeColorShadeAlpha(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glLineWidth(float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glEnable(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glBegin(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glVertex2fv(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glEnd() local_unnamed_addr #2

; Function Attrs: optsize
declare void @glDisable(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ANIM_draw_cfra(ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_view2d_view_orthoSpecial(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_markers_draw(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ANIM_draw_previewrange(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_view2d_view_restore(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @UI_view2d_scrollers_calc(ptr noundef, ptr noundef, i16 noundef signext, i16 noundef signext, i16 noundef signext, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_view2d_scrollers_draw(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_view2d_scrollers_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_region_tag_redraw(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_region_header_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_region_header(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @graph_draw_channel_names(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_region_panels_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_region_panels(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #6

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind optsize }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !16, i64 214}
!10 = !{!"ARegion", !6, i64 0, !6, i64 8, !11, i64 16, !14, i64 176, !14, i64 192, !16, i64 208, !16, i64 210, !16, i64 212, !16, i64 214, !16, i64 216, !16, i64 218, !13, i64 220, !16, i64 224, !16, i64 226, !16, i64 228, !16, i64 230, !16, i64 232, !16, i64 234, !16, i64 236, !16, i64 238, !6, i64 240, !17, i64 248, !17, i64 264, !17, i64 280, !17, i64 296, !17, i64 312, !17, i64 328, !17, i64 344, !6, i64 360, !6, i64 368, !6, i64 376}
!11 = !{!"View2D", !12, i64 0, !12, i64 16, !14, i64 32, !14, i64 48, !14, i64 64, !7, i64 80, !7, i64 88, !13, i64 96, !13, i64 100, !16, i64 104, !16, i64 106, !16, i64 108, !16, i64 110, !16, i64 112, !16, i64 114, !16, i64 116, !16, i64 118, !16, i64 120, !16, i64 122, !16, i64 124, !16, i64 126, !6, i64 128, !15, i64 136, !15, i64 140, !6, i64 144, !6, i64 152}
!12 = !{!"rctf", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12}
!13 = !{!"float", !7, i64 0}
!14 = !{!"rcti", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12}
!15 = !{!"int", !7, i64 0}
!16 = !{!"short", !7, i64 0}
!17 = !{!"ListBase", !6, i64 0, !6, i64 8}
!18 = !{!10, !16, i64 216}
!19 = !{!10, !16, i64 218}
!20 = !{!21, !15, i64 80}
!21 = !{!"SpaceType", !6, i64 0, !6, i64 8, !7, i64 16, !15, i64 80, !15, i64 84, !6, i64 88, !6, i64 96, !6, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !6, i64 152, !6, i64 160, !6, i64 168, !17, i64 176, !17, i64 192, !15, i64 208}
!22 = !{!21, !6, i64 88}
!23 = !{!21, !6, i64 96}
!24 = !{!21, !6, i64 104}
!25 = !{!21, !6, i64 136}
!26 = !{!21, !6, i64 144}
!27 = !{!21, !6, i64 152}
!28 = !{!21, !6, i64 120}
!29 = !{!21, !6, i64 128}
!30 = !{!31, !15, i64 16}
!31 = !{!"ARegionType", !6, i64 0, !6, i64 8, !15, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !17, i64 104, !17, i64 120, !17, i64 136, !15, i64 152, !15, i64 156, !15, i64 160, !15, i64 164, !15, i64 168, !16, i64 172, !16, i64 174, !16, i64 176}
!32 = !{!31, !6, i64 24}
!33 = !{!31, !6, i64 40}
!34 = !{!31, !6, i64 48}
!35 = !{!31, !15, i64 168}
!36 = !{!31, !15, i64 164}
!37 = !{!38, !16, i64 8948}
!38 = !{!"UserDef", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !15, i64 16, !7, i64 20, !7, i64 788, !7, i64 1556, !7, i64 2580, !7, i64 3348, !7, i64 4116, !7, i64 4884, !7, i64 5652, !7, i64 6420, !7, i64 7444, !15, i64 8468, !16, i64 8472, !16, i64 8474, !16, i64 8476, !16, i64 8478, !16, i64 8480, !16, i64 8482, !15, i64 8484, !15, i64 8488, !15, i64 8492, !16, i64 8496, !16, i64 8498, !15, i64 8500, !15, i64 8504, !15, i64 8508, !15, i64 8512, !15, i64 8516, !15, i64 8520, !15, i64 8524, !16, i64 8528, !16, i64 8530, !16, i64 8532, !16, i64 8534, !17, i64 8536, !17, i64 8552, !17, i64 8568, !17, i64 8584, !17, i64 8600, !17, i64 8616, !17, i64 8632, !7, i64 8648, !16, i64 8712, !16, i64 8714, !16, i64 8716, !16, i64 8718, !16, i64 8720, !16, i64 8722, !16, i64 8724, !16, i64 8726, !7, i64 8728, !16, i64 8896, !16, i64 8898, !16, i64 8900, !16, i64 8902, !16, i64 8904, !16, i64 8906, !16, i64 8908, !16, i64 8910, !15, i64 8912, !15, i64 8916, !16, i64 8920, !16, i64 8922, !16, i64 8924, !16, i64 8926, !16, i64 8928, !16, i64 8930, !16, i64 8932, !16, i64 8934, !16, i64 8936, !16, i64 8938, !7, i64 8940, !7, i64 8941, !7, i64 8942, !7, i64 8943, !16, i64 8944, !16, i64 8946, !16, i64 8948, !16, i64 8950, !16, i64 8952, !16, i64 8954, !13, i64 8956, !13, i64 8960, !15, i64 8964, !16, i64 8968, !16, i64 8970, !13, i64 8972, !16, i64 8976, !16, i64 8978, !16, i64 8980, !16, i64 8982, !39, i64 8984, !7, i64 9760, !7, i64 9772, !16, i64 9788, !7, i64 9790, !7, i64 9791, !7, i64 9792, !7, i64 9872, !15, i64 10896, !15, i64 10900, !13, i64 10904, !13, i64 10908, !15, i64 10912, !16, i64 10916, !16, i64 10918, !16, i64 10920, !16, i64 10922, !16, i64 10924, !16, i64 10926, !40, i64 10928}
!39 = !{!"ColorBand", !16, i64 0, !16, i64 2, !7, i64 4, !7, i64 5, !7, i64 6, !7, i64 7, !7, i64 8}
!40 = !{!"WalkNavigation", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !13, i64 20, !16, i64 24, !7, i64 26}
!41 = !{!31, !15, i64 160}
!42 = !{!43, !15, i64 32}
!43 = !{!"SpaceIpo", !6, i64 0, !6, i64 8, !17, i64 16, !15, i64 32, !13, i64 36, !7, i64 40, !11, i64 56, !6, i64 216, !17, i64 224, !16, i64 240, !16, i64 242, !15, i64 244, !13, i64 248, !15, i64 252}
!44 = !{!43, !16, i64 242}
!45 = !{!43, !6, i64 216}
!46 = !{!47, !6, i64 0}
!47 = !{!"bDopeSheet", !6, i64 0, !17, i64 8, !6, i64 24, !7, i64 32, !15, i64 96, !15, i64 100, !15, i64 104, !15, i64 108}
!48 = !{!47, !15, i64 96}
!49 = !{!43, !15, i64 244}
!50 = !{!10, !16, i64 120}
!51 = !{!10, !13, i64 16}
!52 = !{!53, !15, i64 684}
!53 = !{!"Scene", !54, i64 0, !6, i64 120, !6, i64 128, !6, i64 136, !6, i64 144, !17, i64 152, !6, i64 168, !6, i64 176, !7, i64 184, !7, i64 196, !7, i64 208, !7, i64 220, !15, i64 232, !15, i64 236, !15, i64 240, !16, i64 244, !7, i64 246, !7, i64 247, !6, i64 248, !6, i64 256, !6, i64 264, !6, i64 272, !55, i64 280, !62, i64 4264, !17, i64 4296, !17, i64 4312, !6, i64 4328, !6, i64 4336, !6, i64 4344, !6, i64 4352, !6, i64 4360, !6, i64 4368, !16, i64 4376, !16, i64 4378, !15, i64 4380, !17, i64 4384, !63, i64 4400, !64, i64 4416, !67, i64 4600, !6, i64 4608, !68, i64 4616, !6, i64 4640, !69, i64 4648, !69, i64 4656, !57, i64 4664, !58, i64 4824, !70, i64 4888, !6, i64 4952}
!54 = !{!"ID", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !7, i64 32, !16, i64 98, !15, i64 100, !15, i64 104, !15, i64 108, !6, i64 112}
!55 = !{!"RenderData", !56, i64 0, !6, i64 248, !6, i64 256, !59, i64 264, !60, i64 328, !15, i64 400, !15, i64 404, !15, i64 408, !13, i64 412, !15, i64 416, !15, i64 420, !15, i64 424, !15, i64 428, !16, i64 432, !16, i64 434, !13, i64 436, !13, i64 440, !13, i64 444, !13, i64 448, !13, i64 452, !16, i64 456, !16, i64 458, !16, i64 460, !16, i64 462, !16, i64 464, !16, i64 466, !15, i64 468, !16, i64 472, !16, i64 474, !16, i64 476, !16, i64 478, !16, i64 480, !16, i64 482, !15, i64 484, !15, i64 488, !16, i64 492, !16, i64 494, !15, i64 496, !15, i64 500, !16, i64 504, !16, i64 506, !16, i64 508, !16, i64 510, !16, i64 512, !7, i64 514, !7, i64 515, !15, i64 516, !15, i64 520, !15, i64 524, !16, i64 528, !16, i64 530, !16, i64 532, !16, i64 534, !16, i64 536, !16, i64 538, !16, i64 540, !16, i64 542, !12, i64 544, !12, i64 560, !14, i64 576, !17, i64 592, !16, i64 608, !16, i64 610, !13, i64 612, !13, i64 616, !13, i64 620, !13, i64 624, !15, i64 628, !13, i64 632, !13, i64 636, !13, i64 640, !13, i64 644, !16, i64 648, !16, i64 650, !16, i64 652, !16, i64 654, !16, i64 656, !16, i64 658, !13, i64 660, !13, i64 664, !16, i64 668, !16, i64 670, !13, i64 672, !13, i64 676, !7, i64 680, !15, i64 1704, !16, i64 1708, !16, i64 1710, !7, i64 1712, !7, i64 2480, !7, i64 2496, !7, i64 2512, !7, i64 2513, !7, i64 2514, !7, i64 2515, !15, i64 2520, !16, i64 2524, !16, i64 2526, !13, i64 2528, !13, i64 2532, !16, i64 2536, !16, i64 2538, !13, i64 2540, !16, i64 2544, !16, i64 2546, !15, i64 2548, !16, i64 2552, !16, i64 2554, !16, i64 2556, !16, i64 2558, !13, i64 2560, !13, i64 2564, !6, i64 2568, !15, i64 2576, !13, i64 2580, !7, i64 2584, !61, i64 2616, !15, i64 3976, !15, i64 3980}
!56 = !{!"ImageFormatData", !7, i64 0, !7, i64 1, !7, i64 2, !7, i64 3, !7, i64 4, !7, i64 5, !7, i64 6, !7, i64 7, !16, i64 8, !16, i64 10, !13, i64 12, !7, i64 16, !7, i64 17, !7, i64 18, !57, i64 24, !58, i64 184}
!57 = !{!"ColorManagedViewSettings", !15, i64 0, !15, i64 4, !7, i64 8, !7, i64 72, !13, i64 136, !13, i64 140, !6, i64 144, !6, i64 152}
!58 = !{!"ColorManagedDisplaySettings", !7, i64 0}
!59 = !{!"QuicktimeCodecSettings", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !15, i64 16, !15, i64 20, !15, i64 24, !15, i64 28, !15, i64 32, !15, i64 36, !15, i64 40, !15, i64 44, !16, i64 48, !16, i64 50, !15, i64 52, !15, i64 56, !15, i64 60}
!60 = !{!"FFMpegCodecData", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !15, i64 16, !15, i64 20, !15, i64 24, !15, i64 28, !13, i64 32, !15, i64 36, !15, i64 40, !15, i64 44, !15, i64 48, !15, i64 52, !15, i64 56, !15, i64 60, !6, i64 64}
!61 = !{!"BakeData", !56, i64 0, !7, i64 248, !16, i64 1272, !16, i64 1274, !16, i64 1276, !16, i64 1278, !13, i64 1280, !13, i64 1284, !7, i64 1288, !7, i64 1291, !7, i64 1292, !7, i64 1293, !7, i64 1296}
!62 = !{!"AudioData", !15, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !15, i64 16, !16, i64 20, !16, i64 22, !13, i64 24, !13, i64 28}
!63 = !{!"GameFraming", !7, i64 0, !7, i64 12, !7, i64 13, !7, i64 14, !7, i64 15}
!64 = !{!"GameData", !63, i64 0, !16, i64 16, !16, i64 18, !16, i64 20, !16, i64 22, !16, i64 24, !16, i64 26, !16, i64 28, !16, i64 30, !16, i64 32, !7, i64 34, !65, i64 40, !16, i64 64, !16, i64 66, !13, i64 68, !66, i64 72, !13, i64 128, !13, i64 132, !15, i64 136, !16, i64 140, !16, i64 142, !16, i64 144, !16, i64 146, !16, i64 148, !16, i64 150, !16, i64 152, !16, i64 154, !16, i64 156, !16, i64 158, !16, i64 160, !16, i64 162, !13, i64 164, !13, i64 168, !13, i64 172, !13, i64 176, !13, i64 180}
!65 = !{!"GameDome", !16, i64 0, !16, i64 2, !16, i64 4, !16, i64 6, !13, i64 8, !13, i64 12, !6, i64 16}
!66 = !{!"RecastData", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !13, i64 20, !13, i64 24, !13, i64 28, !13, i64 32, !13, i64 36, !15, i64 40, !13, i64 44, !13, i64 48, !16, i64 52, !16, i64 54}
!67 = !{!"UnitSettings", !13, i64 0, !7, i64 4, !7, i64 5, !16, i64 6}
!68 = !{!"PhysicsSettings", !7, i64 0, !15, i64 12, !15, i64 16, !15, i64 20}
!69 = !{!"long", !7, i64 0}
!70 = !{!"ColorManagedColorspaceSettings", !7, i64 0}
!71 = !{!10, !13, i64 24}
!72 = !{!53, !15, i64 688}
!73 = !{!10, !13, i64 20}
!74 = !{!10, !13, i64 28}
!75 = !{i64 0, i64 4, !76, i64 4, i64 4, !76, i64 8, i64 4, !76, i64 12, i64 4, !76}
!76 = !{!13, !13, i64 0}
!77 = !{!10, !16, i64 124}
!78 = !{!43, !6, i64 224}
!79 = !{!80, !6, i64 96}
!80 = !{!"ScrArea", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !14, i64 56, !7, i64 72, !7, i64 73, !16, i64 74, !16, i64 76, !16, i64 78, !16, i64 80, !16, i64 82, !16, i64 84, !7, i64 86, !7, i64 87, !6, i64 88, !17, i64 96, !17, i64 112, !17, i64 128, !17, i64 144}
!81 = !{!82, !6, i64 0}
!82 = !{!"Global", !6, i64 0, !7, i64 8, !7, i64 1032, !7, i64 2056, !7, i64 2057, !7, i64 2058, !17, i64 2064, !7, i64 2080, !7, i64 2081, !7, i64 2082, !16, i64 2084, !16, i64 2086, !16, i64 2088, !7, i64 2090, !16, i64 2092, !15, i64 2096, !15, i64 2100, !7, i64 2104, !15, i64 2108, !15, i64 2112, !7, i64 2116}
!83 = !{!84, !6, i64 1088}
!84 = !{!"Main", !6, i64 0, !6, i64 8, !7, i64 16, !16, i64 1040, !16, i64 1042, !16, i64 1044, !16, i64 1046, !69, i64 1048, !7, i64 1056, !16, i64 1072, !6, i64 1080, !17, i64 1088, !17, i64 1104, !17, i64 1120, !17, i64 1136, !17, i64 1152, !17, i64 1168, !17, i64 1184, !17, i64 1200, !17, i64 1216, !17, i64 1232, !17, i64 1248, !17, i64 1264, !17, i64 1280, !17, i64 1296, !17, i64 1312, !17, i64 1328, !17, i64 1344, !17, i64 1360, !17, i64 1376, !17, i64 1392, !17, i64 1408, !17, i64 1424, !17, i64 1440, !17, i64 1456, !17, i64 1472, !17, i64 1488, !17, i64 1504, !17, i64 1520, !17, i64 1536, !17, i64 1552, !17, i64 1568, !17, i64 1584, !17, i64 1600, !17, i64 1616, !7, i64 1632, !6, i64 1888, !6, i64 1896}
!85 = !{!86, !15, i64 36}
!86 = !{!"wmNotifier", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !15, i64 32, !15, i64 36, !15, i64 40, !15, i64 44, !15, i64 48, !6, i64 56}
!87 = !{!86, !15, i64 40}
!88 = !{!86, !15, i64 48}
!89 = !{!90, !6, i64 0}
!90 = !{!"bAnimContext", !6, i64 0, !16, i64 8, !16, i64 10, !16, i64 12, !16, i64 14, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72}
!91 = !{!90, !16, i64 8}
!92 = !{!93, !6, i64 16}
!93 = !{!"bAnimListElem", !6, i64 0, !6, i64 8, !6, i64 16, !15, i64 24, !15, i64 28, !15, i64 32, !16, i64 36, !16, i64 38, !6, i64 40, !6, i64 48, !6, i64 56}
!94 = !{!95, !15, i64 88}
!95 = !{!"FCurve", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !17, i64 32, !6, i64 48, !6, i64 56, !15, i64 64, !13, i64 68, !16, i64 72, !16, i64 74, !15, i64 76, !6, i64 80, !15, i64 88, !7, i64 92, !13, i64 104, !13, i64 108}
!96 = !{!95, !15, i64 76}
!97 = distinct !{!97, !98}
!98 = !{!"llvm.loop.mustprogress"}
!99 = !{!10, !16, i64 208}
!100 = !{!10, !16, i64 210}
!101 = !{!102, !6, i64 296}
!102 = !{!"wmWindowManager", !54, i64 0, !6, i64 120, !6, i64 128, !17, i64 136, !15, i64 152, !16, i64 156, !16, i64 158, !17, i64 160, !17, i64 176, !103, i64 192, !17, i64 232, !17, i64 248, !17, i64 264, !17, i64 280, !6, i64 296, !6, i64 304, !6, i64 312, !17, i64 320, !6, i64 336, !7, i64 344, !7, i64 345}
!103 = !{!"ReportList", !17, i64 0, !15, i64 16, !15, i64 20, !15, i64 24, !15, i64 28, !6, i64 32}
!104 = !{!43, !13, i64 248}
!105 = !{!11, !13, i64 16}
!106 = !{!11, !13, i64 20}

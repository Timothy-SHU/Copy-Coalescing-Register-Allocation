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
  %8 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %9 = tail call ptr %8(i64 noundef 384, ptr noundef nonnull @.str) #7
  %10 = getelementptr inbounds %struct.ScrArea, ptr %0, i64 0, i32 20
  tail call void @BLI_insertlinkafter(ptr noundef nonnull %10, ptr noundef nonnull %5, ptr noundef %9) #7
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
define dso_local void @ED_spacetype_ipo() local_unnamed_addr #0 {
  %1 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %2 = tail call ptr %1(i64 noundef 216, ptr noundef nonnull @.str.1) #7
  %3 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 3
  store i32 2, ptr %3, align 8, !tbaa !49
  %4 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %4, ptr noundef nonnull align 1 dereferenceable(64) @str, i64 noundef 64, i1 false) #7
  %5 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 5
  store ptr @graph_new, ptr %5, align 8, !tbaa !51
  %6 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 6
  store ptr @graph_free, ptr %6, align 8, !tbaa !52
  %7 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 7
  store ptr @graph_init, ptr %7, align 8, !tbaa !53
  %8 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 11
  store ptr @graph_duplicate, ptr %8, align 8, !tbaa !54
  %9 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 12
  store ptr @graphedit_operatortypes, ptr %9, align 8, !tbaa !55
  %10 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 13
  store ptr @graphedit_keymap, ptr %10, align 8, !tbaa !56
  %11 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 9
  store ptr @graph_listener, ptr %11, align 8, !tbaa !57
  %12 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 10
  store ptr @graph_refresh, ptr %12, align 8, !tbaa !58
  %13 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %14 = tail call ptr %13(i64 noundef 184, ptr noundef nonnull @.str.3) #7
  %15 = getelementptr inbounds %struct.ARegionType, ptr %14, i64 0, i32 2
  store i32 0, ptr %15, align 8, !tbaa !59
  %16 = getelementptr inbounds %struct.ARegionType, ptr %14, i64 0, i32 3
  store ptr @graph_main_area_init, ptr %16, align 8, !tbaa !61
  %17 = getelementptr inbounds %struct.ARegionType, ptr %14, i64 0, i32 5
  store ptr @graph_main_area_draw, ptr %17, align 8, !tbaa !62
  %18 = getelementptr inbounds %struct.ARegionType, ptr %14, i64 0, i32 6
  store ptr @graph_region_listener, ptr %18, align 8, !tbaa !63
  %19 = getelementptr inbounds %struct.ARegionType, ptr %14, i64 0, i32 20
  store i32 30, ptr %19, align 8, !tbaa !64
  %20 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 16
  tail call void @BLI_addhead(ptr noundef nonnull %20, ptr noundef %14) #7
  %21 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %22 = tail call ptr %21(i64 noundef 184, ptr noundef nonnull @.str.3) #7
  %23 = getelementptr inbounds %struct.ARegionType, ptr %22, i64 0, i32 2
  store i32 1, ptr %23, align 8, !tbaa !59
  %24 = getelementptr inbounds %struct.ARegionType, ptr %22, i64 0, i32 19
  store i32 26, ptr %24, align 4, !tbaa !65
  %25 = getelementptr inbounds %struct.ARegionType, ptr %22, i64 0, i32 20
  store i32 83, ptr %25, align 8, !tbaa !64
  %26 = getelementptr inbounds %struct.ARegionType, ptr %22, i64 0, i32 6
  store ptr @graph_region_listener, ptr %26, align 8, !tbaa !63
  %27 = getelementptr inbounds %struct.ARegionType, ptr %22, i64 0, i32 3
  store ptr @graph_header_area_init, ptr %27, align 8, !tbaa !61
  %28 = getelementptr inbounds %struct.ARegionType, ptr %22, i64 0, i32 5
  store ptr @graph_header_area_draw, ptr %28, align 8, !tbaa !62
  tail call void @BLI_addhead(ptr noundef nonnull %20, ptr noundef %22) #7
  %29 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %30 = tail call ptr %29(i64 noundef 184, ptr noundef nonnull @.str.3) #7
  %31 = getelementptr inbounds %struct.ARegionType, ptr %30, i64 0, i32 2
  store i32 2, ptr %31, align 8, !tbaa !59
  %32 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !66
  %33 = sitofp i16 %32 to float
  %34 = tail call float @llvm.fmuladd.f32(float %33, float 0x3FEB333340000000, float 2.000000e+02)
  %35 = fptosi float %34 to i32
  %36 = getelementptr inbounds %struct.ARegionType, ptr %30, i64 0, i32 18
  store i32 %35, ptr %36, align 8, !tbaa !70
  %37 = getelementptr inbounds %struct.ARegionType, ptr %30, i64 0, i32 20
  store i32 19, ptr %37, align 8, !tbaa !64
  %38 = getelementptr inbounds %struct.ARegionType, ptr %30, i64 0, i32 6
  store ptr @graph_region_listener, ptr %38, align 8, !tbaa !63
  %39 = getelementptr inbounds %struct.ARegionType, ptr %30, i64 0, i32 3
  store ptr @graph_channel_area_init, ptr %39, align 8, !tbaa !61
  %40 = getelementptr inbounds %struct.ARegionType, ptr %30, i64 0, i32 5
  store ptr @graph_channel_area_draw, ptr %40, align 8, !tbaa !62
  tail call void @BLI_addhead(ptr noundef nonnull %20, ptr noundef %30) #7
  %41 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %42 = tail call ptr %41(i64 noundef 184, ptr noundef nonnull @.str.3) #7
  %43 = getelementptr inbounds %struct.ARegionType, ptr %42, i64 0, i32 2
  store i32 4, ptr %43, align 8, !tbaa !59
  %44 = getelementptr inbounds %struct.ARegionType, ptr %42, i64 0, i32 18
  store i32 200, ptr %44, align 8, !tbaa !70
  %45 = getelementptr inbounds %struct.ARegionType, ptr %42, i64 0, i32 20
  store i32 1, ptr %45, align 8, !tbaa !64
  %46 = getelementptr inbounds %struct.ARegionType, ptr %42, i64 0, i32 6
  store ptr @graph_region_listener, ptr %46, align 8, !tbaa !63
  %47 = getelementptr inbounds %struct.ARegionType, ptr %42, i64 0, i32 3
  store ptr @graph_buttons_area_init, ptr %47, align 8, !tbaa !61
  %48 = getelementptr inbounds %struct.ARegionType, ptr %42, i64 0, i32 5
  store ptr @graph_buttons_area_draw, ptr %48, align 8, !tbaa !62
  tail call void @BLI_addhead(ptr noundef nonnull %20, ptr noundef %42) #7
  tail call void @graph_buttons_register(ptr noundef %42) #7
  tail call void @BKE_spacetype_register(ptr noundef %2) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @graph_new(ptr noundef %0) #0 !PGOFuncName !71 {
  %2 = tail call ptr @CTX_data_scene(ptr noundef %0) #7
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %4 = tail call ptr %3(i64 noundef 256, ptr noundef nonnull @.str.4) #7
  %5 = getelementptr inbounds %struct.SpaceIpo, ptr %4, i64 0, i32 3
  store i32 2, ptr %5, align 8, !tbaa !72
  %6 = getelementptr inbounds %struct.SpaceIpo, ptr %4, i64 0, i32 10
  store i16 2, ptr %6, align 2, !tbaa !74
  %7 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %8 = tail call ptr %7(i64 noundef 112, ptr noundef nonnull @.str.5) #7
  %9 = getelementptr inbounds %struct.SpaceIpo, ptr %4, i64 0, i32 7
  store ptr %8, ptr %9, align 8, !tbaa !75
  store ptr %2, ptr %8, align 8, !tbaa !76
  %10 = getelementptr inbounds %struct.bDopeSheet, ptr %8, i64 0, i32 4
  %11 = load i32, ptr %10, align 8, !tbaa !78
  %12 = or i32 %11, 1
  store i32 %12, ptr %10, align 8, !tbaa !78
  %13 = getelementptr inbounds %struct.SpaceIpo, ptr %4, i64 0, i32 11
  %14 = load i32, ptr %13, align 4, !tbaa !79
  %15 = or i32 %14, 512
  store i32 %15, ptr %13, align 4, !tbaa !79
  %16 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %17 = tail call ptr %16(i64 noundef 384, ptr noundef nonnull @.str.6) #7
  %18 = getelementptr inbounds %struct.SpaceIpo, ptr %4, i64 0, i32 2
  tail call void @BLI_addtail(ptr noundef nonnull %18, ptr noundef %17) #7
  %19 = getelementptr inbounds %struct.ARegion, ptr %17, i64 0, i32 8
  store i16 1, ptr %19, align 2, !tbaa !38
  %20 = getelementptr inbounds %struct.ARegion, ptr %17, i64 0, i32 9
  store i16 2, ptr %20, align 8, !tbaa !47
  %21 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %22 = tail call ptr %21(i64 noundef 384, ptr noundef nonnull @.str.7) #7
  tail call void @BLI_addtail(ptr noundef nonnull %18, ptr noundef %22) #7
  %23 = getelementptr inbounds %struct.ARegion, ptr %22, i64 0, i32 8
  store i16 2, ptr %23, align 2, !tbaa !38
  %24 = getelementptr inbounds %struct.ARegion, ptr %22, i64 0, i32 9
  store i16 3, ptr %24, align 8, !tbaa !47
  %25 = getelementptr inbounds %struct.ARegion, ptr %22, i64 0, i32 2, i32 9
  store i16 10, ptr %25, align 8, !tbaa !80
  %26 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %27 = tail call ptr %26(i64 noundef 384, ptr noundef nonnull @.str.8) #7
  tail call void @BLI_addtail(ptr noundef nonnull %18, ptr noundef %27) #7
  %28 = getelementptr inbounds %struct.ARegion, ptr %27, i64 0, i32 8
  store i16 4, ptr %28, align 2, !tbaa !38
  %29 = getelementptr inbounds %struct.ARegion, ptr %27, i64 0, i32 9
  store i16 4, ptr %29, align 8, !tbaa !47
  %30 = getelementptr inbounds %struct.ARegion, ptr %27, i64 0, i32 10
  store i16 1, ptr %30, align 2, !tbaa !48
  %31 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %32 = tail call ptr %31(i64 noundef 384, ptr noundef nonnull @.str.9) #7
  tail call void @BLI_addtail(ptr noundef nonnull %18, ptr noundef %32) #7
  %33 = getelementptr inbounds %struct.ARegion, ptr %32, i64 0, i32 8
  store i16 0, ptr %33, align 2, !tbaa !38
  %34 = getelementptr inbounds %struct.ARegion, ptr %32, i64 0, i32 2
  store float 0.000000e+00, ptr %34, align 8, !tbaa !81
  %35 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 22, i32 6
  %36 = load i32, ptr %35, align 4, !tbaa !82
  %37 = sitofp i32 %36 to float
  %38 = fadd float %37, -1.000000e+01
  %39 = getelementptr inbounds %struct.ARegion, ptr %32, i64 0, i32 2, i32 0, i32 2
  store float %38, ptr %39, align 8, !tbaa !101
  %40 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 22, i32 7
  %41 = load i32, ptr %40, align 8, !tbaa !102
  %42 = sitofp i32 %41 to float
  %43 = getelementptr inbounds %struct.ARegion, ptr %32, i64 0, i32 2, i32 0, i32 1
  store float %42, ptr %43, align 4, !tbaa !103
  %44 = getelementptr inbounds %struct.ARegion, ptr %32, i64 0, i32 2, i32 0, i32 3
  store float 1.000000e+01, ptr %44, align 4, !tbaa !104
  %45 = getelementptr inbounds %struct.ARegion, ptr %32, i64 0, i32 2, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %45, ptr noundef nonnull align 8 dereferenceable(16) %34, i64 16, i1 false), !tbaa.struct !105
  %46 = getelementptr inbounds %struct.ARegion, ptr %32, i64 0, i32 2, i32 5
  store <4 x float> <float 0x3810000000000000, float 0x3810000000000000, float 3.000000e+05, float 0x47EFFFFFE0000000>, ptr %46, align 8, !tbaa !106
  %47 = getelementptr inbounds %struct.ARegion, ptr %32, i64 0, i32 2, i32 9
  store i16 105, ptr %47, align 8, !tbaa !80
  %48 = getelementptr inbounds %struct.ARegion, ptr %32, i64 0, i32 2, i32 11
  store i16 0, ptr %48, align 4, !tbaa !107
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @graph_free(ptr noundef %0) #0 !PGOFuncName !108 {
  %2 = getelementptr inbounds %struct.SpaceIpo, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !75
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.bDopeSheet, ptr %3, i64 0, i32 1
  tail call void @BLI_freelistN(ptr noundef nonnull %6) #7
  %7 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %8 = load ptr, ptr %2, align 8, !tbaa !75
  tail call void %7(ptr noundef %8) #7
  br label %9

9:                                                ; preds = %5, %1
  %10 = getelementptr inbounds %struct.SpaceIpo, ptr %0, i64 0, i32 8
  %11 = load ptr, ptr %10, align 8, !tbaa !109
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void @free_fcurves(ptr noundef nonnull %10) #7
  br label %14

14:                                               ; preds = %13, %9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @graph_init(ptr nocapture readnone %0, ptr noundef %1) #0 !PGOFuncName !110 {
  %3 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 19
  %4 = load ptr, ptr %3, align 8, !tbaa !111
  %5 = getelementptr inbounds %struct.SpaceIpo, ptr %4, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !75
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %10 = tail call ptr %9(i64 noundef 112, ptr noundef nonnull @.str.5) #7
  store ptr %10, ptr %5, align 8, !tbaa !75
  %11 = load ptr, ptr @G, align 8, !tbaa !113
  %12 = getelementptr inbounds %struct.Main, ptr %11, i64 0, i32 11
  %13 = load ptr, ptr %12, align 8, !tbaa !115
  store ptr %13, ptr %10, align 8, !tbaa !76
  br label %14

14:                                               ; preds = %8, %2
  tail call void @ED_area_tag_refresh(ptr noundef nonnull %1) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @graph_duplicate(ptr noundef %0) #0 !PGOFuncName !117 {
  %2 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %3 = tail call ptr %2(ptr noundef %0) #7
  %4 = getelementptr inbounds %struct.SpaceIpo, ptr %3, i64 0, i32 8
  %5 = getelementptr inbounds %struct.SpaceIpo, ptr %0, i64 0, i32 8
  tail call void @BLI_duplicatelist(ptr noundef nonnull %4, ptr noundef nonnull %5) #7
  %6 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %7 = getelementptr inbounds %struct.SpaceIpo, ptr %3, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !75
  %9 = tail call ptr %6(ptr noundef %8) #7
  store ptr %9, ptr %7, align 8, !tbaa !75
  ret ptr %3
}

; Function Attrs: optsize
declare void @graphedit_operatortypes() #2

; Function Attrs: optsize
declare void @graphedit_keymap(ptr noundef) #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @graph_listener(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !118 {
  %4 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 19
  %5 = load ptr, ptr %4, align 8, !tbaa !111
  %6 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 5
  %7 = load i32, ptr %6, align 4, !tbaa !119
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
  %10 = load i32, ptr %9, align 8, !tbaa !121
  switch i32 %10, label %16 [
    i32 4587520, label %11
    i32 4718592, label %11
  ]

11:                                               ; preds = %8, %8
  %12 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 8
  %13 = load i32, ptr %12, align 8, !tbaa !122
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
  %19 = load i32, ptr %18, align 8, !tbaa !121
  switch i32 %19, label %24 [
    i32 458752, label %20
    i32 524288, label %20
  ]

20:                                               ; preds = %17, %17
  %21 = getelementptr inbounds %struct.SpaceIpo, ptr %5, i64 0, i32 11
  %22 = load i32, ptr %21, align 4, !tbaa !79
  %23 = or i32 %22, 1024
  store i32 %23, ptr %21, align 4, !tbaa !79
  tail call void @ED_area_tag_refresh(ptr noundef nonnull %1) #7
  br label %52

24:                                               ; preds = %17
  tail call void @ED_area_tag_redraw(ptr noundef nonnull %1) #7
  br label %52

25:                                               ; preds = %3
  %26 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 6
  %27 = load i32, ptr %26, align 8, !tbaa !121
  switch i32 %27, label %32 [
    i32 1441792, label %28
    i32 1376256, label %28
    i32 1179648, label %52
  ]

28:                                               ; preds = %25, %25
  %29 = getelementptr inbounds %struct.SpaceIpo, ptr %5, i64 0, i32 11
  %30 = load i32, ptr %29, align 4, !tbaa !79
  %31 = or i32 %30, 1024
  store i32 %31, ptr %29, align 4, !tbaa !79
  tail call void @ED_area_tag_refresh(ptr noundef nonnull %1) #7
  br label %52

32:                                               ; preds = %25
  tail call void @ED_area_tag_redraw(ptr noundef nonnull %1) #7
  br label %52

33:                                               ; preds = %3
  %34 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 8
  %35 = load i32, ptr %34, align 8, !tbaa !122
  %36 = icmp eq i32 %35, 6
  br i1 %36, label %37, label %52

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.SpaceIpo, ptr %5, i64 0, i32 11
  %39 = load i32, ptr %38, align 4, !tbaa !79
  %40 = or i32 %39, 1024
  store i32 %40, ptr %38, align 4, !tbaa !79
  tail call void @ED_area_tag_refresh(ptr noundef nonnull %1) #7
  br label %52

41:                                               ; preds = %3
  %42 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 6
  %43 = load i32, ptr %42, align 8, !tbaa !121
  %44 = icmp eq i32 %43, 851968
  br i1 %44, label %45, label %52

45:                                               ; preds = %41
  tail call void @ED_area_tag_redraw(ptr noundef nonnull %1) #7
  br label %52

46:                                               ; preds = %3
  %47 = getelementptr inbounds %struct.SpaceIpo, ptr %5, i64 0, i32 11
  %48 = load i32, ptr %47, align 4, !tbaa !79
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
define internal void @graph_refresh(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !123 {
  %3 = alloca %struct.bAnimContext, align 8
  %4 = alloca %struct.ListBase, align 8
  %5 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !111
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #8
  %7 = getelementptr inbounds %struct.SpaceIpo, ptr %6, i64 0, i32 11
  %8 = load i32, ptr %7, align 4, !tbaa !79
  %9 = and i32 %8, 1024
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  tail call void @ANIM_sync_animchannels_to_data(ptr noundef %0) #7
  %12 = load i32, ptr %7, align 4, !tbaa !79
  %13 = and i32 %12, -1025
  store i32 %13, ptr %7, align 4, !tbaa !79
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
  %18 = load ptr, ptr %3, align 8, !tbaa !124
  %19 = getelementptr inbounds %struct.bAnimContext, ptr %3, i64 0, i32 1
  %20 = load i16, ptr %19, align 8, !tbaa !126
  %21 = sext i16 %20 to i32
  %22 = call i64 @ANIM_animdata_filter(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 2049, ptr noundef %18, i32 noundef %21) #7
  %23 = load ptr, ptr %4, align 8, !tbaa !34
  %24 = icmp eq ptr %23, null
  br i1 %24, label %49, label %25

25:                                               ; preds = %17
  %26 = trunc i64 %22 to i32
  br label %27

27:                                               ; preds = %25, %45
  %28 = phi ptr [ %23, %25 ], [ %47, %45 ]
  %29 = phi i32 [ 0, %25 ], [ %46, %45 ]
  %30 = getelementptr inbounds %struct.bAnimListElem, ptr %28, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !127
  %32 = getelementptr inbounds %struct.FCurve, ptr %31, i64 0, i32 13
  %33 = load i32, ptr %32, align 8, !tbaa !129
  switch i32 %33, label %43 [
    i32 2, label %45
    i32 1, label %34
  ]

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.FCurve, ptr %31, i64 0, i32 14
  %36 = getelementptr inbounds %struct.FCurve, ptr %31, i64 0, i32 11
  %37 = load i32, ptr %36, align 4, !tbaa !131
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
  store <2 x float> <float 0x3FD3333340000000, float 0x3FE99999A0000000>, ptr %35, align 4, !tbaa !106
  %42 = getelementptr inbounds %struct.FCurve, ptr %31, i64 0, i32 14, i64 2
  store float 1.000000e+00, ptr %42, align 4, !tbaa !106
  br label %45

43:                                               ; preds = %27
  %44 = getelementptr inbounds %struct.FCurve, ptr %31, i64 0, i32 14
  call void @getcolor_fcurve_rainbow(i32 noundef %29, i32 noundef %26, ptr noundef nonnull %44) #7
  br label %45

45:                                               ; preds = %38, %39, %40, %41, %27, %43
  %46 = add nuw nsw i32 %29, 1
  %47 = load ptr, ptr %28, align 8, !tbaa !34
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %27, !llvm.loop !132

49:                                               ; preds = %45, %17
  call void @ANIM_animdata_freelist(ptr noundef nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8
  br label %50

50:                                               ; preds = %49, %14
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %3) #8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @graph_main_area_init(ptr nocapture noundef readonly %0, ptr noundef %1) #0 !PGOFuncName !134 {
  %3 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  %4 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 5
  %5 = load i16, ptr %4, align 8, !tbaa !135
  %6 = sext i16 %5 to i32
  %7 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 6
  %8 = load i16, ptr %7, align 2, !tbaa !136
  %9 = sext i16 %8 to i32
  tail call void @UI_view2d_region_reinit(ptr noundef nonnull %3, i16 noundef signext -1, i32 noundef %6, i32 noundef %9) #7
  %10 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 14
  %11 = load ptr, ptr %10, align 8, !tbaa !137
  %12 = tail call ptr @WM_keymap_find(ptr noundef %11, ptr noundef nonnull @.str.10, i32 noundef 2, i32 noundef 0) #7
  %13 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 26
  %14 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 4
  %15 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3
  %16 = tail call ptr @WM_event_add_keymap_handler_bb(ptr noundef nonnull %13, ptr noundef %12, ptr noundef nonnull %14, ptr noundef nonnull %15) #7
  %17 = load ptr, ptr %10, align 8, !tbaa !137
  %18 = tail call ptr @WM_keymap_find(ptr noundef %17, ptr noundef nonnull @.str.11, i32 noundef 2, i32 noundef 0) #7
  %19 = tail call ptr @WM_event_add_keymap_handler(ptr noundef nonnull %13, ptr noundef %18) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @graph_main_area_draw(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !140 {
  %3 = alloca %struct.bAnimContext, align 8
  %4 = alloca [3 x float], align 4
  %5 = alloca [2 x float], align 4
  %6 = tail call ptr @CTX_wm_space_graph(ptr noundef %0) #7
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #8
  %7 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #8
  call void @UI_GetThemeColor3fv(i32 noundef 2, ptr noundef nonnull %4) #7
  %8 = load float, ptr %4, align 4, !tbaa !106
  %9 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 1
  %10 = load float, ptr %9, align 4, !tbaa !106
  %11 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  %12 = load float, ptr %11, align 4, !tbaa !106
  call void @glClearColor(float noundef %8, float noundef %10, float noundef %12, float noundef 0.000000e+00) #7
  call void @glClear(i32 noundef 16384) #7
  call void @UI_view2d_view_ortho(ptr noundef nonnull %7) #7
  %13 = getelementptr inbounds %struct.SpaceIpo, ptr %6, i64 0, i32 11
  %14 = load i32, ptr %13, align 4, !tbaa !79
  %15 = trunc i32 %14 to i16
  %16 = lshr i16 %15, 3
  %17 = and i16 %16, 2
  %18 = xor i16 %17, 2
  %19 = call ptr @CTX_data_scene(ptr noundef %0) #7
  %20 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 5
  %21 = load i16, ptr %20, align 8, !tbaa !135
  %22 = sext i16 %21 to i32
  %23 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 6
  %24 = load i16, ptr %23, align 2, !tbaa !136
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
  %33 = load <2 x float>, ptr %7, align 8, !tbaa !106
  %34 = fadd <2 x float> %33, <float -1.000000e+01, float 1.000000e+01>
  store <2 x float> %34, ptr %7, align 8, !tbaa !106
  br label %35

35:                                               ; preds = %29, %2
  call void @UI_view2d_grid_free(ptr noundef %26) #7
  %36 = load i32, ptr %13, align 4, !tbaa !79
  %37 = and i32 %36, 256
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %35
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #8
  %40 = getelementptr inbounds %struct.SpaceIpo, ptr %6, i64 0, i32 12
  %41 = load float, ptr %40, align 8, !tbaa !141
  %42 = getelementptr inbounds [2 x float], ptr %5, i64 0, i64 1
  store float %41, ptr %42, align 4, !tbaa !106
  call void @UI_ThemeColorShadeAlpha(i32 noundef 49, i32 noundef -10, i32 noundef -50) #7
  call void @glLineWidth(float noundef 2.000000e+00) #7
  call void @glEnable(i32 noundef 3042) #7
  call void @glBegin(i32 noundef 3) #7
  %43 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1
  %44 = load float, ptr %43, align 8, !tbaa !142
  store float %44, ptr %5, align 4, !tbaa !106
  call void @glVertex2fv(ptr noundef nonnull %5) #7
  %45 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 1
  %46 = load float, ptr %45, align 4, !tbaa !143
  store float %46, ptr %5, align 4, !tbaa !106
  call void @glVertex2fv(ptr noundef nonnull %5) #7
  call void @glEnd() #7
  call void @glDisable(i32 noundef 3042) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #8
  %47 = load i32, ptr %13, align 4, !tbaa !79
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
define internal void @graph_region_listener(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr noundef %2, ptr nocapture noundef readonly %3) #0 !PGOFuncName !144 {
  %5 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 5
  %6 = load i32, ptr %5, align 4, !tbaa !119
  switch i32 %6, label %32 [
    i32 234881024, label %36
    i32 67108864, label %7
    i32 83886080, label %16
    i32 285212672, label %25
    i32 301989888, label %28
  ]

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %9 = load i32, ptr %8, align 8, !tbaa !121
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
  %14 = load i32, ptr %13, align 8, !tbaa !122
  %15 = icmp eq i32 %14, 6
  br i1 %15, label %36, label %37

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %18 = load i32, ptr %17, align 8, !tbaa !121
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
  %23 = load i32, ptr %22, align 8, !tbaa !122
  %24 = icmp eq i32 %23, 5
  br i1 %24, label %36, label %37

25:                                               ; preds = %4
  %26 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 8
  %27 = load i32, ptr %26, align 8, !tbaa !122
  switch i32 %27, label %37 [
    i32 1, label %36
    i32 6, label %36
  ]

28:                                               ; preds = %4
  %29 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 8
  %30 = load i32, ptr %29, align 8, !tbaa !122
  %31 = icmp eq i32 %30, 5
  br i1 %31, label %36, label %37

32:                                               ; preds = %4
  %33 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %34 = load i32, ptr %33, align 8, !tbaa !121
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
define internal void @graph_header_area_init(ptr nocapture readnone %0, ptr noundef %1) #0 !PGOFuncName !145 {
  tail call void @ED_region_header_init(ptr noundef %1) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @graph_header_area_draw(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !146 {
  tail call void @ED_region_header(ptr noundef %0, ptr noundef %1) #7
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

; Function Attrs: noinline nounwind optsize uwtable
define internal void @graph_channel_area_init(ptr nocapture noundef readonly %0, ptr noundef %1) #0 !PGOFuncName !147 {
  %3 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  %4 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 9
  %5 = load i16, ptr %4, align 8, !tbaa !80
  %6 = and i16 %5, -400
  %7 = or disjoint i16 %6, 394
  store i16 %7, ptr %4, align 8, !tbaa !80
  %8 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 5
  %9 = load i16, ptr %8, align 8, !tbaa !135
  %10 = sext i16 %9 to i32
  %11 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 6
  %12 = load i16, ptr %11, align 2, !tbaa !136
  %13 = sext i16 %12 to i32
  tail call void @UI_view2d_region_reinit(ptr noundef nonnull %3, i16 noundef signext 1, i32 noundef %10, i32 noundef %13) #7
  %14 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 14
  %15 = load ptr, ptr %14, align 8, !tbaa !137
  %16 = tail call ptr @WM_keymap_find(ptr noundef %15, ptr noundef nonnull @.str.12, i32 noundef 0, i32 noundef 0) #7
  %17 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 26
  %18 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 4
  %19 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3
  %20 = tail call ptr @WM_event_add_keymap_handler_bb(ptr noundef nonnull %17, ptr noundef %16, ptr noundef nonnull %18, ptr noundef nonnull %19) #7
  %21 = load ptr, ptr %14, align 8, !tbaa !137
  %22 = tail call ptr @WM_keymap_find(ptr noundef %21, ptr noundef nonnull @.str.11, i32 noundef 2, i32 noundef 0) #7
  %23 = tail call ptr @WM_event_add_keymap_handler(ptr noundef nonnull %17, ptr noundef %22) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @graph_channel_area_draw(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !148 {
  %3 = alloca %struct.bAnimContext, align 8
  %4 = alloca [3 x float], align 4
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %3) #8
  %5 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #8
  call void @UI_GetThemeColor3fv(i32 noundef 2, ptr noundef nonnull %4) #7
  %6 = load float, ptr %4, align 4, !tbaa !106
  %7 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 1
  %8 = load float, ptr %7, align 4, !tbaa !106
  %9 = getelementptr inbounds [3 x float], ptr %4, i64 0, i64 2
  %10 = load float, ptr %9, align 4, !tbaa !106
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
define internal void @graph_buttons_area_init(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !149 {
  tail call void @ED_region_panels_init(ptr noundef %0, ptr noundef %1) #7
  %3 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 14
  %4 = load ptr, ptr %3, align 8, !tbaa !137
  %5 = tail call ptr @WM_keymap_find(ptr noundef %4, ptr noundef nonnull @.str.11, i32 noundef 2, i32 noundef 0) #7
  %6 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 26
  %7 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 4
  %8 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3
  %9 = tail call ptr @WM_event_add_keymap_handler_bb(ptr noundef nonnull %6, ptr noundef %5, ptr noundef nonnull %7, ptr noundef nonnull %8) #7
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @graph_buttons_area_draw(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !150 {
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
!57 = !{!50, !35, i64 120}
!58 = !{!50, !35, i64 128}
!59 = !{!60, !44, i64 16}
!60 = !{!"ARegionType", !35, i64 0, !35, i64 8, !44, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !35, i64 72, !35, i64 80, !35, i64 88, !35, i64 96, !46, i64 104, !46, i64 120, !46, i64 136, !44, i64 152, !44, i64 156, !44, i64 160, !44, i64 164, !44, i64 168, !45, i64 172, !45, i64 174, !45, i64 176}
!61 = !{!60, !35, i64 24}
!62 = !{!60, !35, i64 40}
!63 = !{!60, !35, i64 48}
!64 = !{!60, !44, i64 168}
!65 = !{!60, !44, i64 164}
!66 = !{!67, !45, i64 8948}
!67 = !{!"UserDef", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !44, i64 16, !36, i64 20, !36, i64 788, !36, i64 1556, !36, i64 2580, !36, i64 3348, !36, i64 4116, !36, i64 4884, !36, i64 5652, !36, i64 6420, !36, i64 7444, !44, i64 8468, !45, i64 8472, !45, i64 8474, !45, i64 8476, !45, i64 8478, !45, i64 8480, !45, i64 8482, !44, i64 8484, !44, i64 8488, !44, i64 8492, !45, i64 8496, !45, i64 8498, !44, i64 8500, !44, i64 8504, !44, i64 8508, !44, i64 8512, !44, i64 8516, !44, i64 8520, !44, i64 8524, !45, i64 8528, !45, i64 8530, !45, i64 8532, !45, i64 8534, !46, i64 8536, !46, i64 8552, !46, i64 8568, !46, i64 8584, !46, i64 8600, !46, i64 8616, !46, i64 8632, !36, i64 8648, !45, i64 8712, !45, i64 8714, !45, i64 8716, !45, i64 8718, !45, i64 8720, !45, i64 8722, !45, i64 8724, !45, i64 8726, !36, i64 8728, !45, i64 8896, !45, i64 8898, !45, i64 8900, !45, i64 8902, !45, i64 8904, !45, i64 8906, !45, i64 8908, !45, i64 8910, !44, i64 8912, !44, i64 8916, !45, i64 8920, !45, i64 8922, !45, i64 8924, !45, i64 8926, !45, i64 8928, !45, i64 8930, !45, i64 8932, !45, i64 8934, !45, i64 8936, !45, i64 8938, !36, i64 8940, !36, i64 8941, !36, i64 8942, !36, i64 8943, !45, i64 8944, !45, i64 8946, !45, i64 8948, !45, i64 8950, !45, i64 8952, !45, i64 8954, !42, i64 8956, !42, i64 8960, !44, i64 8964, !45, i64 8968, !45, i64 8970, !42, i64 8972, !45, i64 8976, !45, i64 8978, !45, i64 8980, !45, i64 8982, !68, i64 8984, !36, i64 9760, !36, i64 9772, !45, i64 9788, !36, i64 9790, !36, i64 9791, !36, i64 9792, !36, i64 9872, !44, i64 10896, !44, i64 10900, !42, i64 10904, !42, i64 10908, !44, i64 10912, !45, i64 10916, !45, i64 10918, !45, i64 10920, !45, i64 10922, !45, i64 10924, !45, i64 10926, !69, i64 10928}
!68 = !{!"ColorBand", !45, i64 0, !45, i64 2, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !36, i64 8}
!69 = !{!"WalkNavigation", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20, !45, i64 24, !36, i64 26}
!70 = !{!60, !44, i64 160}
!71 = !{!"space_graph.c:graph_new"}
!72 = !{!73, !44, i64 32}
!73 = !{!"SpaceIpo", !35, i64 0, !35, i64 8, !46, i64 16, !44, i64 32, !42, i64 36, !36, i64 40, !40, i64 56, !35, i64 216, !46, i64 224, !45, i64 240, !45, i64 242, !44, i64 244, !42, i64 248, !44, i64 252}
!74 = !{!73, !45, i64 242}
!75 = !{!73, !35, i64 216}
!76 = !{!77, !35, i64 0}
!77 = !{!"bDopeSheet", !35, i64 0, !46, i64 8, !35, i64 24, !36, i64 32, !44, i64 96, !44, i64 100, !44, i64 104, !44, i64 108}
!78 = !{!77, !44, i64 96}
!79 = !{!73, !44, i64 244}
!80 = !{!39, !45, i64 120}
!81 = !{!39, !42, i64 16}
!82 = !{!83, !44, i64 684}
!83 = !{!"Scene", !84, i64 0, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !46, i64 152, !35, i64 168, !35, i64 176, !36, i64 184, !36, i64 196, !36, i64 208, !36, i64 220, !44, i64 232, !44, i64 236, !44, i64 240, !45, i64 244, !36, i64 246, !36, i64 247, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !85, i64 280, !92, i64 4264, !46, i64 4296, !46, i64 4312, !35, i64 4328, !35, i64 4336, !35, i64 4344, !35, i64 4352, !35, i64 4360, !35, i64 4368, !45, i64 4376, !45, i64 4378, !44, i64 4380, !46, i64 4384, !93, i64 4400, !94, i64 4416, !97, i64 4600, !35, i64 4608, !98, i64 4616, !35, i64 4640, !99, i64 4648, !99, i64 4656, !87, i64 4664, !88, i64 4824, !100, i64 4888, !35, i64 4952}
!84 = !{!"ID", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !45, i64 98, !44, i64 100, !44, i64 104, !44, i64 108, !35, i64 112}
!85 = !{!"RenderData", !86, i64 0, !35, i64 248, !35, i64 256, !89, i64 264, !90, i64 328, !44, i64 400, !44, i64 404, !44, i64 408, !42, i64 412, !44, i64 416, !44, i64 420, !44, i64 424, !44, i64 428, !45, i64 432, !45, i64 434, !42, i64 436, !42, i64 440, !42, i64 444, !42, i64 448, !42, i64 452, !45, i64 456, !45, i64 458, !45, i64 460, !45, i64 462, !45, i64 464, !45, i64 466, !44, i64 468, !45, i64 472, !45, i64 474, !45, i64 476, !45, i64 478, !45, i64 480, !45, i64 482, !44, i64 484, !44, i64 488, !45, i64 492, !45, i64 494, !44, i64 496, !44, i64 500, !45, i64 504, !45, i64 506, !45, i64 508, !45, i64 510, !45, i64 512, !36, i64 514, !36, i64 515, !44, i64 516, !44, i64 520, !44, i64 524, !45, i64 528, !45, i64 530, !45, i64 532, !45, i64 534, !45, i64 536, !45, i64 538, !45, i64 540, !45, i64 542, !41, i64 544, !41, i64 560, !43, i64 576, !46, i64 592, !45, i64 608, !45, i64 610, !42, i64 612, !42, i64 616, !42, i64 620, !42, i64 624, !44, i64 628, !42, i64 632, !42, i64 636, !42, i64 640, !42, i64 644, !45, i64 648, !45, i64 650, !45, i64 652, !45, i64 654, !45, i64 656, !45, i64 658, !42, i64 660, !42, i64 664, !45, i64 668, !45, i64 670, !42, i64 672, !42, i64 676, !36, i64 680, !44, i64 1704, !45, i64 1708, !45, i64 1710, !36, i64 1712, !36, i64 2480, !36, i64 2496, !36, i64 2512, !36, i64 2513, !36, i64 2514, !36, i64 2515, !44, i64 2520, !45, i64 2524, !45, i64 2526, !42, i64 2528, !42, i64 2532, !45, i64 2536, !45, i64 2538, !42, i64 2540, !45, i64 2544, !45, i64 2546, !44, i64 2548, !45, i64 2552, !45, i64 2554, !45, i64 2556, !45, i64 2558, !42, i64 2560, !42, i64 2564, !35, i64 2568, !44, i64 2576, !42, i64 2580, !36, i64 2584, !91, i64 2616, !44, i64 3976, !44, i64 3980}
!86 = !{!"ImageFormatData", !36, i64 0, !36, i64 1, !36, i64 2, !36, i64 3, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !45, i64 8, !45, i64 10, !42, i64 12, !36, i64 16, !36, i64 17, !36, i64 18, !87, i64 24, !88, i64 184}
!87 = !{!"ColorManagedViewSettings", !44, i64 0, !44, i64 4, !36, i64 8, !36, i64 72, !42, i64 136, !42, i64 140, !35, i64 144, !35, i64 152}
!88 = !{!"ColorManagedDisplaySettings", !36, i64 0}
!89 = !{!"QuicktimeCodecSettings", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !44, i64 16, !44, i64 20, !44, i64 24, !44, i64 28, !44, i64 32, !44, i64 36, !44, i64 40, !44, i64 44, !45, i64 48, !45, i64 50, !44, i64 52, !44, i64 56, !44, i64 60}
!90 = !{!"FFMpegCodecData", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !44, i64 16, !44, i64 20, !44, i64 24, !44, i64 28, !42, i64 32, !44, i64 36, !44, i64 40, !44, i64 44, !44, i64 48, !44, i64 52, !44, i64 56, !44, i64 60, !35, i64 64}
!91 = !{!"BakeData", !86, i64 0, !36, i64 248, !45, i64 1272, !45, i64 1274, !45, i64 1276, !45, i64 1278, !42, i64 1280, !42, i64 1284, !36, i64 1288, !36, i64 1291, !36, i64 1292, !36, i64 1293, !36, i64 1296}
!92 = !{!"AudioData", !44, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !44, i64 16, !45, i64 20, !45, i64 22, !42, i64 24, !42, i64 28}
!93 = !{!"GameFraming", !36, i64 0, !36, i64 12, !36, i64 13, !36, i64 14, !36, i64 15}
!94 = !{!"GameData", !93, i64 0, !45, i64 16, !45, i64 18, !45, i64 20, !45, i64 22, !45, i64 24, !45, i64 26, !45, i64 28, !45, i64 30, !45, i64 32, !36, i64 34, !95, i64 40, !45, i64 64, !45, i64 66, !42, i64 68, !96, i64 72, !42, i64 128, !42, i64 132, !44, i64 136, !45, i64 140, !45, i64 142, !45, i64 144, !45, i64 146, !45, i64 148, !45, i64 150, !45, i64 152, !45, i64 154, !45, i64 156, !45, i64 158, !45, i64 160, !45, i64 162, !42, i64 164, !42, i64 168, !42, i64 172, !42, i64 176, !42, i64 180}
!95 = !{!"GameDome", !45, i64 0, !45, i64 2, !45, i64 4, !45, i64 6, !42, i64 8, !42, i64 12, !35, i64 16}
!96 = !{!"RecastData", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !42, i64 16, !42, i64 20, !42, i64 24, !42, i64 28, !42, i64 32, !42, i64 36, !44, i64 40, !42, i64 44, !42, i64 48, !45, i64 52, !45, i64 54}
!97 = !{!"UnitSettings", !42, i64 0, !36, i64 4, !36, i64 5, !45, i64 6}
!98 = !{!"PhysicsSettings", !36, i64 0, !44, i64 12, !44, i64 16, !44, i64 20}
!99 = !{!"long", !36, i64 0}
!100 = !{!"ColorManagedColorspaceSettings", !36, i64 0}
!101 = !{!39, !42, i64 24}
!102 = !{!83, !44, i64 688}
!103 = !{!39, !42, i64 20}
!104 = !{!39, !42, i64 28}
!105 = !{i64 0, i64 4, !106, i64 4, i64 4, !106, i64 8, i64 4, !106, i64 12, i64 4, !106}
!106 = !{!42, !42, i64 0}
!107 = !{!39, !45, i64 124}
!108 = !{!"space_graph.c:graph_free"}
!109 = !{!73, !35, i64 224}
!110 = !{!"space_graph.c:graph_init"}
!111 = !{!112, !35, i64 96}
!112 = !{!"ScrArea", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !43, i64 56, !36, i64 72, !36, i64 73, !45, i64 74, !45, i64 76, !45, i64 78, !45, i64 80, !45, i64 82, !45, i64 84, !36, i64 86, !36, i64 87, !35, i64 88, !46, i64 96, !46, i64 112, !46, i64 128, !46, i64 144}
!113 = !{!114, !35, i64 0}
!114 = !{!"Global", !35, i64 0, !36, i64 8, !36, i64 1032, !36, i64 2056, !36, i64 2057, !36, i64 2058, !46, i64 2064, !36, i64 2080, !36, i64 2081, !36, i64 2082, !45, i64 2084, !45, i64 2086, !45, i64 2088, !36, i64 2090, !45, i64 2092, !44, i64 2096, !44, i64 2100, !36, i64 2104, !44, i64 2108, !44, i64 2112, !36, i64 2116}
!115 = !{!116, !35, i64 1088}
!116 = !{!"Main", !35, i64 0, !35, i64 8, !36, i64 16, !45, i64 1040, !45, i64 1042, !45, i64 1044, !45, i64 1046, !99, i64 1048, !36, i64 1056, !45, i64 1072, !35, i64 1080, !46, i64 1088, !46, i64 1104, !46, i64 1120, !46, i64 1136, !46, i64 1152, !46, i64 1168, !46, i64 1184, !46, i64 1200, !46, i64 1216, !46, i64 1232, !46, i64 1248, !46, i64 1264, !46, i64 1280, !46, i64 1296, !46, i64 1312, !46, i64 1328, !46, i64 1344, !46, i64 1360, !46, i64 1376, !46, i64 1392, !46, i64 1408, !46, i64 1424, !46, i64 1440, !46, i64 1456, !46, i64 1472, !46, i64 1488, !46, i64 1504, !46, i64 1520, !46, i64 1536, !46, i64 1552, !46, i64 1568, !46, i64 1584, !46, i64 1600, !46, i64 1616, !36, i64 1632, !35, i64 1888, !35, i64 1896}
!117 = !{!"space_graph.c:graph_duplicate"}
!118 = !{!"space_graph.c:graph_listener"}
!119 = !{!120, !44, i64 36}
!120 = !{!"wmNotifier", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !44, i64 32, !44, i64 36, !44, i64 40, !44, i64 44, !44, i64 48, !35, i64 56}
!121 = !{!120, !44, i64 40}
!122 = !{!120, !44, i64 48}
!123 = !{!"space_graph.c:graph_refresh"}
!124 = !{!125, !35, i64 0}
!125 = !{!"bAnimContext", !35, i64 0, !45, i64 8, !45, i64 10, !45, i64 12, !45, i64 14, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !35, i64 72}
!126 = !{!125, !45, i64 8}
!127 = !{!128, !35, i64 16}
!128 = !{!"bAnimListElem", !35, i64 0, !35, i64 8, !35, i64 16, !44, i64 24, !44, i64 28, !44, i64 32, !45, i64 36, !45, i64 38, !35, i64 40, !35, i64 48, !35, i64 56}
!129 = !{!130, !44, i64 88}
!130 = !{!"FCurve", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !46, i64 32, !35, i64 48, !35, i64 56, !44, i64 64, !42, i64 68, !45, i64 72, !45, i64 74, !44, i64 76, !35, i64 80, !44, i64 88, !36, i64 92, !42, i64 104, !42, i64 108}
!131 = !{!130, !44, i64 76}
!132 = distinct !{!132, !133}
!133 = !{!"llvm.loop.mustprogress"}
!134 = !{!"space_graph.c:graph_main_area_init"}
!135 = !{!39, !45, i64 208}
!136 = !{!39, !45, i64 210}
!137 = !{!138, !35, i64 296}
!138 = !{!"wmWindowManager", !84, i64 0, !35, i64 120, !35, i64 128, !46, i64 136, !44, i64 152, !45, i64 156, !45, i64 158, !46, i64 160, !46, i64 176, !139, i64 192, !46, i64 232, !46, i64 248, !46, i64 264, !46, i64 280, !35, i64 296, !35, i64 304, !35, i64 312, !46, i64 320, !35, i64 336, !36, i64 344, !36, i64 345}
!139 = !{!"ReportList", !46, i64 0, !44, i64 16, !44, i64 20, !44, i64 24, !44, i64 28, !35, i64 32}
!140 = !{!"space_graph.c:graph_main_area_draw"}
!141 = !{!73, !42, i64 248}
!142 = !{!40, !42, i64 16}
!143 = !{!40, !42, i64 20}
!144 = !{!"space_graph.c:graph_region_listener"}
!145 = !{!"space_graph.c:graph_header_area_init"}
!146 = !{!"space_graph.c:graph_header_area_draw"}
!147 = !{!"space_graph.c:graph_channel_area_init"}
!148 = !{!"space_graph.c:graph_channel_area_draw"}
!149 = !{!"space_graph.c:graph_buttons_area_init"}
!150 = !{!"space_graph.c:graph_buttons_area_draw"}

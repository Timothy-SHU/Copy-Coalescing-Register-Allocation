; ModuleID = 'blender/source/blender/editors/space_time/space_time.c'
source_filename = "blender/source/blender/editors/space_time/space_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.UserDef = type { i32, i32, i32, i32, i32, [768 x i8], [768 x i8], [1024 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [768 x i8], [1024 x i8], [1024 x i8], i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, [64 x i8], i16, i16, i16, i16, i16, i16, i16, i16, [3 x %struct.SolidLight], i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, float, float, i32, i16, i16, float, i16, i16, i16, i16, %struct.ColorBand, [3 x float], [4 x float], i16, i8, i8, [80 x i8], [1024 x i8], i32, i32, float, float, i32, i16, i16, i16, i16, i16, i16, %struct.WalkNavigation }
%struct.ListBase = type { ptr, ptr }
%struct.SolidLight = type { i32, i32, [4 x float], [4 x float], [4 x float] }
%struct.ColorBand = type { i16, i16, i8, i8, i8, [1 x i8], [32 x %struct.CBData] }
%struct.CBData = type { float, float, float, float, float, i32 }
%struct.WalkNavigation = type { float, float, float, float, float, float, i16, [3 x i16] }
%struct.SpaceType = type { ptr, ptr, [64 x i8], i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, i32 }
%struct.ARegionType = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, i32, i32, i32, i16, i16, i16 }
%struct.SpaceTime = type { ptr, ptr, %struct.ListBase, i32, float, %struct.View2D, %struct.ListBase, i32, i32 }
%struct.View2D = type { %struct.rctf, %struct.rctf, %struct.rcti, %struct.rcti, %struct.rcti, [2 x float], [2 x float], float, float, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, ptr, i32, i32, ptr, ptr }
%struct.rctf = type { float, float, float, float }
%struct.rcti = type { i32, i32, i32, i32 }
%struct.ARegion = type { ptr, ptr, %struct.View2D, %struct.rcti, %struct.rcti, i16, i16, i16, i16, i16, i16, float, i16, i16, i16, i16, i16, i16, i16, i16, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr }
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
%struct.ScrArea = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.wmNotifier = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr }
%struct.wmWindowManager = type { %struct.ID, ptr, ptr, %struct.ListBase, i32, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ReportList, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, %struct.ListBase, ptr, i8, [7 x i8] }
%struct.ReportList = type { %struct.ListBase, i32, i32, i32, i32, ptr }
%struct.SpaceTimeCache = type { ptr, ptr, ptr }
%struct.Object = type { %struct.ID, ptr, ptr, i16, i16, i32, i32, i32, [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.bAnimVizSettings, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, i32, i32, ptr, ptr, i32, i32, [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [3 x float], [4 x float], [4 x float], [3 x float], [3 x float], float, float, [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], [4 x [4 x float]], i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, float, float, float, float, float, i16, i16, i16, i8, i8, i16, i8, i8, float, float, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, float, i16, i16, [4 x float], i32, i32, ptr, i8, i8, i16, [3 x float], %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, i8, i8, i16, float, ptr, ptr, ptr, ptr, i64, i64, i32, i32, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, [2 x float], ptr, %struct.ListBase, ptr }
%struct.bAnimVizSettings = type { i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.CollectionPointerLink = type { ptr, ptr, %struct.PointerRNA }
%struct.PointerRNA = type { %struct.anon, ptr, ptr }
%struct.anon = type { ptr }
%struct.PTCacheID = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.PointCache = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, [64 x i8], [64 x i8], [64 x i8], [1024 x i8], ptr, %struct.ListBase, ptr, ptr }
%struct.bDopeSheet = type { ptr, %struct.ListBase, ptr, [64 x i8], i32, i32, i32, i32 }
%struct.DLRBT_Tree = type { ptr, ptr, ptr }
%struct.ActKeyColumn = type { ptr, ptr, ptr, ptr, ptr, i8, i8, i16, float, i16, i16 }

@MEM_callocN = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [15 x i8] c"spacetype time\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"Timeline\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"spacetype time region\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"inittime\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"header for time\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"main area for time\00", align 1
@MEM_freeN = external local_unnamed_addr global ptr, align 8
@MEM_dupallocN = external local_unnamed_addr global ptr, align 8
@MEM_allocN_len = external local_unnamed_addr global ptr, align 8
@.str.6 = private unnamed_addr constant [15 x i8] c"spacetimecache\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"SpaceTimeCache array\00", align 1
@U = external local_unnamed_addr global %struct.UserDef, align 8
@str = private unnamed_addr constant [65 x i8] c"Timeline\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @ED_spacetype_time() local_unnamed_addr #0 {
  %1 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %2 = tail call ptr %1(i64 noundef 216, ptr noundef nonnull @.str) #9
  %3 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 3
  store i32 15, ptr %3, align 8, !tbaa !38
  %4 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %4, ptr noundef nonnull align 1 dereferenceable(64) @str, i64 noundef 64, i1 false) #9
  %5 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 5
  store ptr @time_new, ptr %5, align 8, !tbaa !42
  %6 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 6
  store ptr @time_free, ptr %6, align 8, !tbaa !43
  %7 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 7
  store ptr @time_init, ptr %7, align 8, !tbaa !44
  %8 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 11
  store ptr @time_duplicate, ptr %8, align 8, !tbaa !45
  %9 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 12
  store ptr @time_operatortypes, ptr %9, align 8, !tbaa !46
  %10 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 13
  store ptr null, ptr %10, align 8, !tbaa !47
  %11 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 9
  store ptr @time_listener, ptr %11, align 8, !tbaa !48
  %12 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 10
  store ptr @time_refresh, ptr %12, align 8, !tbaa !49
  %13 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %14 = tail call ptr %13(i64 noundef 184, ptr noundef nonnull @.str.2) #9
  %15 = getelementptr inbounds %struct.ARegionType, ptr %14, i64 0, i32 2
  store i32 0, ptr %15, align 8, !tbaa !50
  %16 = getelementptr inbounds %struct.ARegionType, ptr %14, i64 0, i32 20
  store i32 30, ptr %16, align 8, !tbaa !53
  %17 = getelementptr inbounds %struct.ARegionType, ptr %14, i64 0, i32 3
  store ptr @time_main_area_init, ptr %17, align 8, !tbaa !54
  %18 = getelementptr inbounds %struct.ARegionType, ptr %14, i64 0, i32 5
  store ptr @time_main_area_draw, ptr %18, align 8, !tbaa !55
  %19 = getelementptr inbounds %struct.ARegionType, ptr %14, i64 0, i32 6
  store ptr @time_main_area_listener, ptr %19, align 8, !tbaa !56
  %20 = getelementptr inbounds %struct.ARegionType, ptr %14, i64 0, i32 10
  store ptr @time_keymap, ptr %20, align 8, !tbaa !57
  %21 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 16
  tail call void @BLI_addhead(ptr noundef nonnull %21, ptr noundef %14) #9
  %22 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %23 = tail call ptr %22(i64 noundef 184, ptr noundef nonnull @.str.2) #9
  %24 = getelementptr inbounds %struct.ARegionType, ptr %23, i64 0, i32 2
  store i32 1, ptr %24, align 8, !tbaa !50
  %25 = getelementptr inbounds %struct.ARegionType, ptr %23, i64 0, i32 19
  store i32 26, ptr %25, align 4, !tbaa !58
  %26 = getelementptr inbounds %struct.ARegionType, ptr %23, i64 0, i32 20
  store i32 83, ptr %26, align 8, !tbaa !53
  %27 = getelementptr inbounds %struct.ARegionType, ptr %23, i64 0, i32 3
  store ptr @time_header_area_init, ptr %27, align 8, !tbaa !54
  %28 = getelementptr inbounds %struct.ARegionType, ptr %23, i64 0, i32 5
  store ptr @time_header_area_draw, ptr %28, align 8, !tbaa !55
  %29 = getelementptr inbounds %struct.ARegionType, ptr %23, i64 0, i32 6
  store ptr @time_header_area_listener, ptr %29, align 8, !tbaa !56
  tail call void @BLI_addhead(ptr noundef nonnull %21, ptr noundef %23) #9
  tail call void @BKE_spacetype_register(ptr noundef %2) #9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @time_new(ptr noundef %0) #0 !PGOFuncName !59 {
  %2 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %4 = tail call ptr %3(i64 noundef 224, ptr noundef nonnull @.str.3) #9
  %5 = getelementptr inbounds %struct.SpaceTime, ptr %4, i64 0, i32 3
  store i32 15, ptr %5, align 8, !tbaa !60
  %6 = getelementptr inbounds %struct.SpaceTime, ptr %4, i64 0, i32 8
  %7 = load i32, ptr %6, align 4, !tbaa !66
  %8 = or i32 %7, 1
  store i32 %8, ptr %6, align 4, !tbaa !66
  %9 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %10 = tail call ptr %9(i64 noundef 384, ptr noundef nonnull @.str.4) #9
  %11 = getelementptr inbounds %struct.SpaceTime, ptr %4, i64 0, i32 2
  tail call void @BLI_addtail(ptr noundef nonnull %11, ptr noundef %10) #9
  %12 = getelementptr inbounds %struct.ARegion, ptr %10, i64 0, i32 8
  store i16 1, ptr %12, align 2, !tbaa !67
  %13 = getelementptr inbounds %struct.ARegion, ptr %10, i64 0, i32 9
  store i16 2, ptr %13, align 8, !tbaa !69
  %14 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %15 = tail call ptr %14(i64 noundef 384, ptr noundef nonnull @.str.5) #9
  tail call void @BLI_addtail(ptr noundef nonnull %11, ptr noundef %15) #9
  %16 = getelementptr inbounds %struct.ARegion, ptr %15, i64 0, i32 8
  store i16 0, ptr %16, align 2, !tbaa !67
  %17 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 22, i32 6
  %18 = getelementptr inbounds %struct.ARegion, ptr %15, i64 0, i32 2
  %19 = getelementptr inbounds %struct.ARegion, ptr %15, i64 0, i32 2, i32 0, i32 2
  %20 = load <2 x i32>, ptr %17, align 4, !tbaa !70
  %21 = add nsw <2 x i32> %20, <i32 -4, i32 4>
  %22 = sitofp <2 x i32> %21 to <2 x float>
  store <2 x float> %22, ptr %18, align 8, !tbaa !71
  store <2 x float> <float 0.000000e+00, float 5.000000e+01>, ptr %19, align 8, !tbaa !71
  %23 = getelementptr inbounds %struct.ARegion, ptr %15, i64 0, i32 2, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %23, ptr noundef nonnull align 8 dereferenceable(16) %18, i64 16, i1 false), !tbaa.struct !72
  %24 = getelementptr inbounds %struct.ARegion, ptr %15, i64 0, i32 2, i32 5
  store <4 x float> <float 1.000000e+00, float 5.000000e+01, float 3.000000e+05, float 5.000000e+01>, ptr %24, align 8, !tbaa !71
  %25 = getelementptr inbounds %struct.ARegion, ptr %15, i64 0, i32 2, i32 7
  store <2 x float> <float 0x3FB99999A0000000, float 1.000000e+01>, ptr %25, align 8, !tbaa !71
  %26 = getelementptr inbounds %struct.ARegion, ptr %15, i64 0, i32 2, i32 9
  %27 = load i16, ptr %26, align 8, !tbaa !73
  %28 = or i16 %27, 72
  store i16 %28, ptr %26, align 8, !tbaa !73
  %29 = getelementptr inbounds %struct.ARegion, ptr %15, i64 0, i32 2, i32 15
  %30 = load i16, ptr %29, align 4, !tbaa !74
  %31 = or i16 %30, 8
  store i16 %31, ptr %29, align 4, !tbaa !74
  %32 = getelementptr inbounds %struct.ARegion, ptr %15, i64 0, i32 2, i32 12
  %33 = load <2 x i16>, ptr %32, align 2, !tbaa !75
  %34 = or <2 x i16> %33, <i16 512, i16 4>
  store <2 x i16> %34, ptr %32, align 2, !tbaa !75
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @time_free(ptr noundef %0) #0 !PGOFuncName !76 {
  tail call fastcc void @time_cache_free(ptr noundef %0) #10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @time_init(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #0 !PGOFuncName !77 {
  %3 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 19
  %4 = load ptr, ptr %3, align 8, !tbaa !78
  tail call fastcc void @time_cache_free(ptr noundef %4) #10
  %5 = getelementptr inbounds %struct.SpaceTime, ptr %4, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !80
  %7 = or i32 %6, 127
  store i32 %7, ptr %5, align 8, !tbaa !80
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @time_duplicate(ptr noundef %0) #0 !PGOFuncName !81 {
  %2 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %3 = tail call ptr %2(ptr noundef %0) #9
  %4 = getelementptr inbounds %struct.SpaceTime, ptr %3, i64 0, i32 6
  tail call fastcc void @BLI_listbase_clear(ptr noundef nonnull %4) #10
  ret ptr %3
}

; Function Attrs: optsize
declare void @time_operatortypes() #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @time_listener(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 !PGOFuncName !82 {
  %4 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 5
  %5 = load i32, ptr %4, align 4, !tbaa !83
  switch i32 %5, label %45 [
    i32 83886080, label %6
    i32 67108864, label %12
    i32 251658240, label %35
    i32 16777216, label %40
  ]

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 6
  %8 = load i32, ptr %7, align 8, !tbaa !85
  %9 = add i32 %8, -1376256
  %10 = tail call i32 @llvm.fshl.i32(i32 %9, i32 %9, i32 16)
  switch i32 %10, label %45 [
    i32 1, label %11
    i32 0, label %11
    i32 7, label %11
    i32 3, label %11
    i32 6, label %11
    i32 4, label %11
  ]

11:                                               ; preds = %6, %6, %6, %6, %6, %6
  tail call void @ED_area_tag_refresh(ptr noundef %1) #9
  tail call void @ED_area_tag_redraw(ptr noundef %1) #9
  br label %45

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 6
  %14 = load i32, ptr %13, align 8, !tbaa !85
  switch i32 %14, label %45 [
    i32 786432, label %15
    i32 458752, label %16
    i32 196608, label %16
    i32 1114112, label %17
  ]

15:                                               ; preds = %12
  tail call void @ED_area_tag_redraw(ptr noundef %1) #9
  br label %45

16:                                               ; preds = %12, %12
  tail call void @ED_area_tag_refresh(ptr noundef %1) #9
  br label %45

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 9
  %19 = load ptr, ptr %18, align 8, !tbaa !86
  %20 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 20
  br label %21

21:                                               ; preds = %25, %17
  %22 = phi ptr [ %20, %17 ], [ %23, %25 ]
  %23 = load ptr, ptr %22, align 8, !tbaa !34
  %24 = icmp eq ptr %23, null
  br i1 %24, label %45, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.ARegion, ptr %23, i64 0, i32 8
  %27 = load i16, ptr %26, align 2, !tbaa !67
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %29, label %21, !llvm.loop !87

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.Scene, ptr %19, i64 0, i32 22, i32 6
  %31 = getelementptr inbounds %struct.ARegion, ptr %23, i64 0, i32 2
  %32 = load <2 x i32>, ptr %30, align 4, !tbaa !70
  %33 = add nsw <2 x i32> %32, <i32 -4, i32 4>
  %34 = sitofp <2 x i32> %33 to <2 x float>
  store <2 x float> %34, ptr %31, align 8, !tbaa !71
  br label %45

35:                                               ; preds = %3
  %36 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 6
  %37 = load i32, ptr %36, align 8, !tbaa !85
  %38 = icmp eq i32 %37, 1179648
  br i1 %38, label %39, label %45

39:                                               ; preds = %35
  tail call void @ED_area_tag_refresh(ptr noundef %1) #9
  br label %45

40:                                               ; preds = %3
  %41 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 6
  %42 = load i32, ptr %41, align 8, !tbaa !85
  %43 = icmp eq i32 %42, 65536
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  tail call void @ED_area_tag_refresh(ptr noundef %1) #9
  br label %45

45:                                               ; preds = %21, %29, %44, %40, %39, %35, %15, %16, %12, %11, %6, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @time_refresh(ptr nocapture readnone %0, ptr noundef %1) #0 !PGOFuncName !89 {
  %3 = tail call ptr @BKE_area_find_region_type(ptr noundef %1, i32 noundef 0) #9
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !78
  tail call fastcc void @time_cache_refresh(ptr noundef %7) #10
  br label %8

8:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @time_main_area_init(ptr nocapture noundef readonly %0, ptr noundef %1) #0 !PGOFuncName !90 {
  %3 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  %4 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 5
  %5 = load i16, ptr %4, align 8, !tbaa !91
  %6 = sext i16 %5 to i32
  %7 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 6
  %8 = load i16, ptr %7, align 2, !tbaa !92
  %9 = sext i16 %8 to i32
  tail call void @UI_view2d_region_reinit(ptr noundef nonnull %3, i16 noundef signext -1, i32 noundef %6, i32 noundef %9) #9
  %10 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 14
  %11 = load ptr, ptr %10, align 8, !tbaa !93
  %12 = tail call ptr @WM_keymap_find(ptr noundef %11, ptr noundef nonnull @.str.1, i32 noundef 15, i32 noundef 0) #9
  %13 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 26
  %14 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 4
  %15 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3
  %16 = tail call ptr @WM_event_add_keymap_handler_bb(ptr noundef nonnull %13, ptr noundef %12, ptr noundef nonnull %14, ptr noundef nonnull %15) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @time_main_area_draw(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !97 {
  %3 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  %4 = tail call ptr @CTX_wm_space_time(ptr noundef %0) #9
  %5 = tail call ptr @CTX_data_active_object(ptr noundef %0) #9
  %6 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  tail call void @UI_ThemeClearColor(i32 noundef 2) #9
  tail call void @glClear(i32 noundef 16384) #9
  tail call void @UI_view2d_view_ortho(ptr noundef nonnull %6) #9
  %7 = getelementptr inbounds %struct.SpaceTime, ptr %4, i64 0, i32 8
  %8 = load i32, ptr %7, align 4, !tbaa !66
  %9 = trunc i32 %8 to i16
  %10 = and i16 %9, 1
  %11 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 5
  %12 = load i16, ptr %11, align 8, !tbaa !91
  %13 = sext i16 %12 to i32
  %14 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 6
  %15 = load i16, ptr %14, align 2, !tbaa !92
  %16 = sext i16 %15 to i32
  %17 = tail call ptr @UI_view2d_grid_calc(ptr noundef %3, ptr noundef nonnull %6, i16 noundef signext %10, i16 noundef signext 1, i16 noundef signext -1, i16 noundef signext -1, i32 noundef %13, i32 noundef %16) #9
  tail call void @UI_view2d_grid_draw(ptr noundef nonnull %6, ptr noundef %17, i32 noundef 10) #9
  tail call void @UI_view2d_grid_free(ptr noundef %17) #9
  tail call void @ED_region_draw_cb_draw(ptr noundef %0, ptr noundef %1, i32 noundef 2) #9
  tail call fastcc void @time_draw_sfra_efra(ptr noundef %3, ptr noundef nonnull %6) #10
  %18 = load i32, ptr %7, align 4, !tbaa !66
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %20, i32 6, i32 4
  %22 = lshr i32 %18, 1
  %23 = and i32 %22, 1
  %24 = or disjoint i32 %21, %23
  %25 = trunc i32 %24 to i16
  tail call void @ANIM_draw_cfra(ptr noundef %0, ptr noundef nonnull %6, i16 noundef signext %25) #9
  tail call void @UI_view2d_view_ortho(ptr noundef nonnull %6) #9
  tail call fastcc void @time_draw_keyframes(ptr noundef %0, ptr noundef %1) #10
  tail call void @UI_view2d_view_orthoSpecial(ptr noundef %1, ptr noundef nonnull %6, i8 noundef zeroext 1) #9
  tail call void @ED_markers_draw(ptr noundef %0, i32 noundef 0) #9
  tail call fastcc void @time_draw_cache(ptr noundef %4, ptr noundef %5, ptr noundef %3) #10
  tail call void @UI_view2d_view_ortho(ptr noundef nonnull %6) #9
  tail call void @ED_region_draw_cb_draw(ptr noundef %0, ptr noundef %1, i32 noundef 0) #9
  tail call void @UI_view2d_view_restore(ptr noundef %0) #9
  %26 = tail call ptr @UI_view2d_scrollers_calc(ptr noundef %0, ptr noundef nonnull %6, i16 noundef signext %10, i16 noundef signext 1, i16 noundef signext -1, i16 noundef signext -1) #9
  tail call void @UI_view2d_scrollers_draw(ptr noundef %0, ptr noundef nonnull %6, ptr noundef %26) #9
  tail call void @UI_view2d_scrollers_free(ptr noundef %26) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @time_main_area_listener(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr noundef %2, ptr nocapture noundef readonly %3) #0 !PGOFuncName !98 {
  %5 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 5
  %6 = load i32, ptr %5, align 4, !tbaa !83
  switch i32 %6, label %17 [
    i32 251658240, label %7
    i32 234881024, label %16
    i32 67108864, label %11
  ]

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %9 = load i32, ptr %8, align 8, !tbaa !85
  %10 = icmp eq i32 %9, 786432
  br i1 %10, label %16, label %17

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %13 = load i32, ptr %12, align 8, !tbaa !85
  %14 = add i32 %13, -196608
  %15 = tail call i32 @llvm.fshl.i32(i32 %14, i32 %14, i32 16)
  switch i32 %15, label %17 [
    i32 5, label %16
    i32 4, label %16
    i32 0, label %16
    i32 14, label %16
    i32 11, label %16
    i32 1, label %16
  ]

16:                                               ; preds = %11, %11, %11, %11, %11, %11, %4, %7
  tail call void @ED_region_tag_redraw(ptr noundef %2) #9
  br label %17

17:                                               ; preds = %16, %11, %7, %4
  ret void
}

; Function Attrs: optsize
declare void @time_keymap(ptr noundef) #2

; Function Attrs: optsize
declare void @BLI_addhead(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @time_header_area_init(ptr nocapture readnone %0, ptr noundef %1) #0 !PGOFuncName !99 {
  tail call void @ED_region_header_init(ptr noundef %1) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @time_header_area_draw(ptr noundef %0, ptr noundef %1) #0 !PGOFuncName !100 {
  tail call void @ED_region_header(ptr noundef %0, ptr noundef %1) #9
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @time_header_area_listener(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr noundef %2, ptr nocapture noundef readonly %3) #0 !PGOFuncName !101 {
  %5 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 5
  %6 = load i32, ptr %5, align 4, !tbaa !83
  switch i32 %6, label %21 [
    i32 50331648, label %7
    i32 67108864, label %11
    i32 251658240, label %16
  ]

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %9 = load i32, ptr %8, align 8, !tbaa !85
  %10 = icmp eq i32 %9, 262144
  br i1 %10, label %20, label %21

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %13 = load i32, ptr %12, align 8, !tbaa !85
  %14 = add i32 %13, -196608
  %15 = tail call i32 @llvm.fshl.i32(i32 %14, i32 %14, i32 16)
  switch i32 %15, label %21 [
    i32 9, label %20
    i32 5, label %20
    i32 0, label %20
    i32 14, label %20
    i32 11, label %20
    i32 1, label %20
  ]

16:                                               ; preds = %4
  %17 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %18 = load i32, ptr %17, align 8, !tbaa !85
  %19 = icmp eq i32 %18, 786432
  br i1 %19, label %20, label %21

20:                                               ; preds = %16, %11, %11, %11, %11, %11, %11, %7
  tail call void @ED_region_tag_redraw(ptr noundef %2) #9
  br label %21

21:                                               ; preds = %20, %16, %11, %7, %4
  ret void
}

; Function Attrs: optsize
declare void @BKE_spacetype_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @time_cache_free(ptr noundef %0) unnamed_addr #0 !PGOFuncName !102 {
  %2 = getelementptr inbounds %struct.SpaceTime, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %1, %12
  %6 = phi ptr [ %13, %12 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.SpaceTimeCache, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !103
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %5
  %11 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %11(ptr noundef nonnull %8) #9
  store ptr null, ptr %7, align 8, !tbaa !103
  br label %12

12:                                               ; preds = %5, %10
  %13 = load ptr, ptr %6, align 8, !tbaa !34
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %5, !llvm.loop !105

15:                                               ; preds = %12, %1
  tail call void @BLI_freelistN(ptr noundef nonnull %2) #9
  ret void
}

; Function Attrs: optsize
declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @BLI_listbase_clear(ptr nocapture noundef writeonly %0) unnamed_addr #4 !PGOFuncName !106 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: optsize
declare void @ED_area_tag_refresh(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_area_tag_redraw(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @BKE_area_find_region_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @time_cache_refresh(ptr noundef %0) unnamed_addr #0 !PGOFuncName !107 {
  tail call fastcc void @time_cache_free(ptr noundef %0) #10
  ret void
}

; Function Attrs: optsize
declare void @UI_view2d_region_reinit(ptr noundef, i16 noundef signext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @WM_keymap_find(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @WM_event_add_keymap_handler_bb(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_wm_space_time(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @CTX_data_active_object(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_ThemeClearColor(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glClear(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_view2d_view_ortho(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @UI_view2d_grid_calc(ptr noundef, ptr noundef, i16 noundef signext, i16 noundef signext, i16 noundef signext, i16 noundef signext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_view2d_grid_draw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_view2d_grid_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_region_draw_cb_draw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @time_draw_sfra_efra(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !108 {
  tail call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #9
  tail call void @glEnable(i32 noundef 3042) #9
  tail call void @glColor4f(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0x3FD99999A0000000) #9
  %3 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 13
  %4 = load i16, ptr %3, align 8, !tbaa !109
  %5 = and i16 %4, 1
  %6 = icmp eq i16 %5, 0
  %7 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 9
  %8 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 6
  %9 = select i1 %6, ptr %8, ptr %7
  %10 = load i32, ptr %9, align 4, !tbaa !70
  %11 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 10
  %12 = getelementptr inbounds %struct.Scene, ptr %0, i64 0, i32 22, i32 7
  %13 = select i1 %6, ptr %12, ptr %11
  %14 = load i32, ptr %13, align 4, !tbaa !70
  %15 = icmp slt i32 %10, %14
  %16 = getelementptr inbounds %struct.View2D, ptr %1, i64 0, i32 1
  %17 = load float, ptr %16, align 8, !tbaa !127
  %18 = getelementptr inbounds %struct.View2D, ptr %1, i64 0, i32 1, i32 2
  %19 = load float, ptr %18, align 8, !tbaa !128
  br i1 %15, label %20, label %34

20:                                               ; preds = %2
  %21 = sitofp i32 %10 to float
  %22 = getelementptr inbounds %struct.View2D, ptr %1, i64 0, i32 1, i32 3
  %23 = load float, ptr %22, align 4, !tbaa !129
  tail call void @glRectf(float noundef %17, float noundef %19, float noundef %21, float noundef %23) #9
  %24 = load i16, ptr %3, align 8, !tbaa !109
  %25 = and i16 %24, 1
  %26 = icmp eq i16 %25, 0
  %27 = select i1 %26, ptr %12, ptr %11
  %28 = load i32, ptr %27, align 4, !tbaa !70
  %29 = sitofp i32 %28 to float
  %30 = load float, ptr %18, align 8, !tbaa !128
  %31 = getelementptr inbounds %struct.View2D, ptr %1, i64 0, i32 1, i32 1
  %32 = load float, ptr %31, align 4, !tbaa !130
  %33 = load float, ptr %22, align 4, !tbaa !129
  tail call void @glRectf(float noundef %29, float noundef %30, float noundef %32, float noundef %33) #9
  br label %39

34:                                               ; preds = %2
  %35 = getelementptr inbounds %struct.View2D, ptr %1, i64 0, i32 1, i32 1
  %36 = load float, ptr %35, align 4, !tbaa !130
  %37 = getelementptr inbounds %struct.View2D, ptr %1, i64 0, i32 1, i32 3
  %38 = load float, ptr %37, align 4, !tbaa !129
  tail call void @glRectf(float noundef %17, float noundef %19, float noundef %36, float noundef %38) #9
  br label %39

39:                                               ; preds = %34, %20
  tail call void @glDisable(i32 noundef 3042) #9
  tail call void @UI_ThemeColorShade(i32 noundef 2, i32 noundef -60) #9
  %40 = load i16, ptr %3, align 8, !tbaa !109
  %41 = and i16 %40, 1
  %42 = icmp eq i16 %41, 0
  %43 = select i1 %42, ptr %8, ptr %7
  %44 = load i32, ptr %43, align 4, !tbaa !70
  %45 = sitofp i32 %44 to float
  %46 = getelementptr inbounds %struct.View2D, ptr %1, i64 0, i32 1, i32 2
  %47 = load float, ptr %46, align 8, !tbaa !128
  %48 = getelementptr inbounds %struct.View2D, ptr %1, i64 0, i32 1, i32 3
  %49 = load float, ptr %48, align 4, !tbaa !129
  tail call void @fdrawline(float noundef %45, float noundef %47, float noundef %45, float noundef %49) #9
  %50 = load i16, ptr %3, align 8, !tbaa !109
  %51 = and i16 %50, 1
  %52 = icmp eq i16 %51, 0
  %53 = select i1 %52, ptr %12, ptr %11
  %54 = load i32, ptr %53, align 4, !tbaa !70
  %55 = load float, ptr %46, align 8, !tbaa !128
  %56 = sitofp i32 %54 to float
  %57 = load float, ptr %48, align 4, !tbaa !129
  tail call void @fdrawline(float noundef %56, float noundef %55, float noundef %56, float noundef %57) #9
  ret void
}

; Function Attrs: optsize
declare void @ANIM_draw_cfra(ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @time_draw_keyframes(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !131 {
  %3 = alloca %struct.ListBase, align 8
  %4 = tail call ptr @CTX_data_scene(ptr noundef %0) #9
  %5 = tail call ptr @CTX_data_active_object(ptr noundef %0) #9
  %6 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  %7 = getelementptr inbounds %struct.Scene, ptr %4, i64 0, i32 15
  %8 = load i16, ptr %7, align 4, !tbaa !132
  %9 = and i16 %8, 4
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  tail call void @glColor3ub(i8 noundef zeroext -35, i8 noundef zeroext -89, i8 noundef zeroext 0) #9
  tail call fastcc void @time_draw_idblock_keyframes(ptr noundef nonnull %6, ptr noundef nonnull %4, i16 noundef signext 0) #10
  br label %12

12:                                               ; preds = %11, %2
  tail call void @glColor3ub(i8 noundef zeroext -35, i8 noundef zeroext -41, i8 noundef zeroext 0) #9
  %13 = icmp ne ptr %5, null
  br i1 %13, label %14, label %22

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.Object, ptr %5, i64 0, i32 27
  %16 = load i32, ptr %15, align 8, !tbaa !133
  %17 = icmp eq i32 %16, 64
  %18 = or i1 %10, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = lshr exact i16 %9, 2
  %21 = xor i16 %20, 1
  tail call fastcc void @time_draw_idblock_keyframes(ptr noundef nonnull %6, ptr noundef nonnull %5, i16 noundef signext %21) #10
  br label %41

22:                                               ; preds = %14, %12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #11
  %23 = call i32 @CTX_data_selected_objects(ptr noundef %0, ptr noundef nonnull %3) #9
  %24 = load ptr, ptr %3, align 8, !tbaa !34
  %25 = icmp eq ptr %24, null
  br i1 %25, label %37, label %26

26:                                               ; preds = %22, %26
  %27 = phi ptr [ %33, %26 ], [ %24, %22 ]
  %28 = phi i8 [ %32, %26 ], [ 0, %22 ]
  %29 = getelementptr inbounds %struct.CollectionPointerLink, ptr %27, i64 0, i32 2, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !136
  call fastcc void @time_draw_idblock_keyframes(ptr noundef nonnull %6, ptr noundef %30, i16 noundef signext 0) #10
  %31 = icmp eq ptr %30, %5
  %32 = select i1 %31, i8 1, i8 %28
  %33 = load ptr, ptr %27, align 8, !tbaa !34
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %26, !llvm.loop !140

35:                                               ; preds = %26
  %36 = icmp eq i8 %32, 0
  br label %37

37:                                               ; preds = %35, %22
  %38 = phi i1 [ true, %22 ], [ %36, %35 ]
  call void @BLI_freelistN(ptr noundef nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #11
  %39 = select i1 %13, i1 %38, i1 false
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  call fastcc void @time_draw_idblock_keyframes(ptr noundef nonnull %6, ptr noundef nonnull %5, i16 noundef signext 0) #10
  br label %41

41:                                               ; preds = %37, %40, %19
  ret void
}

; Function Attrs: optsize
declare void @UI_view2d_view_orthoSpecial(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_markers_draw(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @time_draw_cache(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !141 {
  %4 = alloca %struct.ListBase, align 8
  %5 = alloca [4 x float], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #11
  %6 = getelementptr inbounds %struct.SpaceTime, ptr %0, i64 0, i32 6
  %7 = getelementptr inbounds %struct.SpaceTime, ptr %0, i64 0, i32 7
  %8 = load i32, ptr %7, align 8, !tbaa !80
  %9 = and i32 %8, 1
  %10 = icmp ne i32 %9, 0
  %11 = icmp ne ptr %1, null
  %12 = and i1 %11, %10
  br i1 %12, label %13, label %192

13:                                               ; preds = %3
  %14 = load ptr, ptr %6, align 8, !tbaa !142
  call void @BKE_ptcache_ids_from_object(ptr noundef nonnull %4, ptr noundef nonnull %1, ptr noundef %2, i32 noundef 0) #9
  %15 = load ptr, ptr %4, align 8, !tbaa !34
  %16 = icmp eq ptr %15, null
  br i1 %16, label %181, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds [4 x float], ptr %5, i64 0, i64 1
  %19 = getelementptr inbounds [4 x float], ptr %5, i64 0, i64 3
  br label %20

20:                                               ; preds = %17, %176
  %21 = phi ptr [ %15, %17 ], [ %179, %176 ]
  %22 = phi ptr [ %14, %17 ], [ %178, %176 ]
  %23 = phi float [ 0.000000e+00, %17 ], [ %177, %176 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #11
  %24 = getelementptr inbounds %struct.PTCacheID, ptr %21, i64 0, i32 25
  %25 = load ptr, ptr %24, align 8, !tbaa !143
  %26 = getelementptr inbounds %struct.PointCache, ptr %25, i64 0, i32 5
  %27 = load i32, ptr %26, align 4, !tbaa !145
  %28 = getelementptr inbounds %struct.PointCache, ptr %25, i64 0, i32 6
  %29 = load i32, ptr %28, align 8, !tbaa !147
  %30 = sub nsw i32 %29, %27
  %31 = shl i32 %30, 2
  %32 = add i32 %31, 4
  %33 = getelementptr inbounds %struct.PTCacheID, ptr %21, i64 0, i32 5
  %34 = load i32, ptr %33, align 8, !tbaa !148
  switch i32 %34, label %59 [
    i32 0, label %35
    i32 1, label %39
    i32 2, label %43
    i32 3, label %47
    i32 4, label %47
    i32 5, label %51
    i32 6, label %55
  ]

35:                                               ; preds = %20
  %36 = load i32, ptr %7, align 8, !tbaa !80
  %37 = and i32 %36, 2
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %176, label %59

39:                                               ; preds = %20
  %40 = load i32, ptr %7, align 8, !tbaa !80
  %41 = and i32 %40, 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %176, label %59

43:                                               ; preds = %20
  %44 = load i32, ptr %7, align 8, !tbaa !80
  %45 = and i32 %44, 8
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %176, label %59

47:                                               ; preds = %20, %20
  %48 = load i32, ptr %7, align 8, !tbaa !80
  %49 = and i32 %48, 16
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %176, label %59

51:                                               ; preds = %20
  %52 = load i32, ptr %7, align 8, !tbaa !80
  %53 = and i32 %52, 32
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %176, label %59

55:                                               ; preds = %20
  %56 = load i32, ptr %7, align 8, !tbaa !80
  %57 = and i32 %56, 64
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %176, label %59

59:                                               ; preds = %55, %51, %47, %43, %39, %35, %20
  %60 = getelementptr inbounds %struct.PointCache, ptr %25, i64 0, i32 19
  %61 = load ptr, ptr %60, align 8, !tbaa !149
  %62 = icmp eq ptr %61, null
  br i1 %62, label %176, label %63

63:                                               ; preds = %59
  %64 = icmp eq ptr %22, null
  br i1 %64, label %79, label %65

65:                                               ; preds = %63
  %66 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !34
  %67 = getelementptr inbounds %struct.SpaceTimeCache, ptr %22, i64 0, i32 2
  %68 = load ptr, ptr %67, align 8, !tbaa !103
  %69 = call i64 %66(ptr noundef %68) #9
  %70 = shl nsw i32 %32, 1
  %71 = sext i32 %70 to i64
  %72 = shl nsw i64 %71, 2
  %73 = icmp eq i64 %69, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %65
  %75 = load ptr, ptr %67, align 8, !tbaa !103
  br label %91

76:                                               ; preds = %65
  %77 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %78 = load ptr, ptr %67, align 8, !tbaa !103
  call void %77(ptr noundef %78) #9
  br label %85

79:                                               ; preds = %63
  %80 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %81 = call ptr %80(i64 noundef 24, ptr noundef nonnull @.str.6) #9
  call void @BLI_addtail(ptr noundef nonnull %6, ptr noundef %81) #9
  %82 = shl nsw i32 %32, 1
  %83 = sext i32 %82 to i64
  %84 = shl nsw i64 %83, 2
  br label %85

85:                                               ; preds = %79, %76
  %86 = phi i64 [ %84, %79 ], [ %72, %76 ]
  %87 = phi ptr [ %81, %79 ], [ %22, %76 ]
  %88 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %89 = call ptr %88(i64 noundef %86, ptr noundef nonnull @.str.7) #9
  %90 = getelementptr inbounds %struct.SpaceTimeCache, ptr %87, i64 0, i32 2
  store ptr %89, ptr %90, align 8, !tbaa !103
  br label %91

91:                                               ; preds = %74, %85
  %92 = phi ptr [ %89, %85 ], [ %75, %74 ]
  %93 = phi ptr [ %87, %85 ], [ %22, %74 ]
  %94 = getelementptr inbounds %struct.SpaceTimeCache, ptr %93, i64 0, i32 2
  %95 = icmp sgt i32 %27, %29
  br i1 %95, label %127, label %96

96:                                               ; preds = %91
  %97 = load ptr, ptr %24, align 8, !tbaa !143
  %98 = getelementptr inbounds %struct.PointCache, ptr %97, i64 0, i32 19
  %99 = load ptr, ptr %98, align 8, !tbaa !149
  %100 = sext i32 %27 to i64
  %101 = add i32 %29, 1
  br label %102

102:                                              ; preds = %96, %122
  %103 = phi i64 [ %100, %96 ], [ %124, %122 ]
  %104 = phi ptr [ %92, %96 ], [ %123, %122 ]
  %105 = sub nsw i64 %103, %100
  %106 = getelementptr inbounds i8, ptr %99, i64 %105
  %107 = load i8, ptr %106, align 1, !tbaa !150
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %122, label %109

109:                                              ; preds = %102
  %110 = trunc i64 %103 to i32
  %111 = sitofp i32 %110 to float
  %112 = fadd float %111, -5.000000e-01
  store float %112, ptr %104, align 4, !tbaa !71
  %113 = getelementptr inbounds float, ptr %104, i64 1
  store float 0.000000e+00, ptr %113, align 4, !tbaa !71
  %114 = getelementptr inbounds float, ptr %104, i64 2
  store float %112, ptr %114, align 4, !tbaa !71
  %115 = getelementptr inbounds float, ptr %104, i64 3
  store float 1.000000e+00, ptr %115, align 4, !tbaa !71
  %116 = getelementptr inbounds float, ptr %104, i64 4
  %117 = fadd float %111, 5.000000e-01
  store float %117, ptr %116, align 4, !tbaa !71
  %118 = getelementptr inbounds float, ptr %104, i64 5
  store float 1.000000e+00, ptr %118, align 4, !tbaa !71
  %119 = getelementptr inbounds float, ptr %104, i64 6
  store float %117, ptr %119, align 4, !tbaa !71
  %120 = getelementptr inbounds float, ptr %104, i64 7
  store float 0.000000e+00, ptr %120, align 4, !tbaa !71
  %121 = getelementptr inbounds float, ptr %104, i64 8
  br label %122

122:                                              ; preds = %102, %109
  %123 = phi ptr [ %121, %109 ], [ %104, %102 ]
  %124 = add nsw i64 %103, 1
  %125 = trunc i64 %124 to i32
  %126 = icmp eq i32 %101, %125
  br i1 %126, label %127, label %102, !llvm.loop !151

127:                                              ; preds = %122, %91
  %128 = phi ptr [ %92, %91 ], [ %123, %122 ]
  call void @glPushMatrix() #9
  %129 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !152
  %130 = sitofp i16 %129 to float
  %131 = call float @llvm.fmuladd.f32(float %130, float 0x3FEB333340000000, float %23)
  call void @glTranslatef(float noundef 0.000000e+00, float noundef %131, float noundef 0.000000e+00) #9
  call void @glScalef(float noundef 1.000000e+00, float noundef 3.000000e+00, float noundef 0.000000e+00) #9
  %132 = load i32, ptr %33, align 8, !tbaa !148
  switch i32 %132, label %139 [
    i32 0, label %133
    i32 1, label %134
    i32 2, label %135
    i32 3, label %136
    i32 4, label %136
    i32 5, label %137
    i32 6, label %138
  ]

133:                                              ; preds = %127
  store float 1.000000e+00, ptr %5, align 16, !tbaa !71
  br label %140

134:                                              ; preds = %127
  store float 1.000000e+00, ptr %5, align 16, !tbaa !71
  br label %140

135:                                              ; preds = %127
  store float 0x3FB99999A0000000, ptr %5, align 16, !tbaa !71
  br label %140

136:                                              ; preds = %127, %127
  store float 0x3FC99999A0000000, ptr %5, align 16, !tbaa !71
  br label %140

137:                                              ; preds = %127
  store float 1.000000e+00, ptr %5, align 16, !tbaa !71
  br label %140

138:                                              ; preds = %127
  store float 1.000000e+00, ptr %5, align 16, !tbaa !71
  br label %140

139:                                              ; preds = %127
  store float 1.000000e+00, ptr %5, align 16, !tbaa !71
  br label %140

140:                                              ; preds = %139, %138, %137, %136, %135, %134, %133
  %141 = phi <2 x float> [ <float 0.000000e+00, float 1.000000e+00>, %139 ], [ <float 0x3FE3333340000000, float 0.000000e+00>, %138 ], [ <float 0x3FB99999A0000000, float 7.500000e-01>, %137 ], [ <float 0x3FC99999A0000000, float 0x3FC99999A0000000>, %136 ], [ <float 0x3FB99999A0000000, float 7.500000e-01>, %135 ], [ <float 0x3FB99999A0000000, float 0x3F947AE140000000>, %134 ], [ <float 0x3FD99999A0000000, float 0x3F947AE140000000>, %133 ]
  store <2 x float> %141, ptr %18, align 4, !tbaa !71
  store float 0x3FB99999A0000000, ptr %19, align 4, !tbaa !71
  call void @glColor4fv(ptr noundef nonnull %5) #9
  call void @glEnable(i32 noundef 3042) #9
  %142 = sitofp i32 %27 to float
  %143 = sitofp i32 %29 to float
  call void @glRectf(float noundef %142, float noundef 0.000000e+00, float noundef %143, float noundef 1.000000e+00) #9
  store float 0x3FD99999A0000000, ptr %19, align 4, !tbaa !71
  %144 = load ptr, ptr %24, align 8, !tbaa !143
  %145 = getelementptr inbounds %struct.PointCache, ptr %144, i64 0, i32 2
  %146 = load i32, ptr %145, align 8, !tbaa !156
  %147 = and i32 %146, 1
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %152, label %149

149:                                              ; preds = %140
  %150 = load float, ptr %5, align 16, !tbaa !71
  %151 = fadd float %150, 0xBFD99999A0000000
  br label %158

152:                                              ; preds = %140
  %153 = and i32 %146, 2
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %165, label %155

155:                                              ; preds = %152
  %156 = load float, ptr %5, align 16, !tbaa !71
  %157 = fadd float %156, 0x3FD99999A0000000
  br label %158

158:                                              ; preds = %149, %155
  %159 = phi float [ %151, %149 ], [ %157, %155 ]
  %160 = phi float [ 0xBFD99999A0000000, %149 ], [ 0x3FD99999A0000000, %155 ]
  store float %159, ptr %5, align 16, !tbaa !71
  %161 = load <2 x float>, ptr %18, align 4, !tbaa !71
  %162 = insertelement <2 x float> poison, float %160, i64 0
  %163 = shufflevector <2 x float> %162, <2 x float> poison, <2 x i32> zeroinitializer
  %164 = fadd <2 x float> %161, %163
  store <2 x float> %164, ptr %18, align 4, !tbaa !71
  br label %165

165:                                              ; preds = %158, %152
  call void @glColor4fv(ptr noundef nonnull %5) #9
  call void @glEnableClientState(i32 noundef 32884) #9
  %166 = load ptr, ptr %94, align 8, !tbaa !103
  call void @glVertexPointer(i32 noundef 2, i32 noundef 5126, i32 noundef 0, ptr noundef %166) #9
  %167 = load ptr, ptr %94, align 8, !tbaa !103
  %168 = ptrtoint ptr %128 to i64
  %169 = ptrtoint ptr %167 to i64
  %170 = sub i64 %168, %169
  %171 = ashr exact i64 %170, 2
  %172 = sdiv i64 %171, 2
  %173 = trunc i64 %172 to i32
  call void @glDrawArrays(i32 noundef 7, i32 noundef 0, i32 noundef %173) #9
  call void @glDisableClientState(i32 noundef 32884) #9
  call void @glDisable(i32 noundef 3042) #9
  call void @glPopMatrix() #9
  %174 = fadd float %23, 3.000000e+00
  %175 = load ptr, ptr %93, align 8, !tbaa !157
  br label %176

176:                                              ; preds = %59, %55, %51, %47, %43, %39, %35, %165
  %177 = phi float [ %174, %165 ], [ %23, %35 ], [ %23, %39 ], [ %23, %43 ], [ %23, %47 ], [ %23, %51 ], [ %23, %55 ], [ %23, %59 ]
  %178 = phi ptr [ %175, %165 ], [ %22, %35 ], [ %22, %39 ], [ %22, %43 ], [ %22, %47 ], [ %22, %51 ], [ %22, %55 ], [ %22, %59 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #11
  %179 = load ptr, ptr %21, align 8, !tbaa !34
  %180 = icmp eq ptr %179, null
  br i1 %180, label %181, label %20, !llvm.loop !158

181:                                              ; preds = %176, %13
  %182 = phi ptr [ %14, %13 ], [ %178, %176 ]
  call void @BLI_freelistN(ptr noundef nonnull %4) #9
  %183 = icmp eq ptr %182, null
  br i1 %183, label %192, label %184

184:                                              ; preds = %181, %184
  %185 = phi ptr [ %186, %184 ], [ %182, %181 ]
  %186 = load ptr, ptr %185, align 8, !tbaa !157
  call void @BLI_remlink(ptr noundef nonnull %6, ptr noundef nonnull %185) #9
  %187 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %188 = getelementptr inbounds %struct.SpaceTimeCache, ptr %185, i64 0, i32 2
  %189 = load ptr, ptr %188, align 8, !tbaa !103
  call void %187(ptr noundef %189) #9
  %190 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %190(ptr noundef nonnull %185) #9
  %191 = icmp eq ptr %186, null
  br i1 %191, label %192, label %184, !llvm.loop !159

192:                                              ; preds = %184, %181, %3
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  ret void
}

; Function Attrs: optsize
declare void @UI_view2d_view_restore(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @UI_view2d_scrollers_calc(ptr noundef, ptr noundef, i16 noundef signext, i16 noundef signext, i16 noundef signext, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_view2d_scrollers_draw(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_view2d_scrollers_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glBlendFunc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glEnable(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glColor4f(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glRectf(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glDisable(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @UI_ThemeColorShade(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @fdrawline(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glColor3ub(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @time_draw_idblock_keyframes(ptr nocapture noundef readonly %0, ptr noundef %1, i16 noundef signext %2) unnamed_addr #0 !PGOFuncName !160 {
  %4 = alloca %struct.bDopeSheet, align 8
  %5 = alloca %struct.DLRBT_Tree, align 8
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %4) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %4, i8 0, i64 112, i1 false)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #11
  call void @BLI_dlrbTree_init(ptr noundef nonnull %5) #9
  %6 = icmp eq i16 %2, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.bDopeSheet, ptr %4, i64 0, i32 4
  store i32 1, ptr %8, align 8, !tbaa !161
  br label %9

9:                                                ; preds = %7, %3
  %10 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 4
  %11 = load i16, ptr %10, align 8, !tbaa !75
  switch i16 %11, label %14 [
    i16 17235, label %12
    i16 16975, label %13
  ]

12:                                               ; preds = %9
  call void @scene_to_keylist(ptr noundef nonnull %4, ptr noundef nonnull %1, ptr noundef nonnull %5, ptr noundef null) #9
  br label %14

13:                                               ; preds = %9
  call void @ob_to_keylist(ptr noundef nonnull %4, ptr noundef nonnull %1, ptr noundef nonnull %5, ptr noundef null) #9
  br label %14

14:                                               ; preds = %9, %13, %12
  call void @BLI_dlrbTree_linkedlist_sync(ptr noundef nonnull %5) #9
  call void @glBegin(i32 noundef 1) #9
  %15 = getelementptr inbounds %struct.DLRBT_Tree, ptr %5, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !163
  %17 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1
  %18 = load float, ptr %17, align 8, !tbaa !127
  %19 = call fastcc ptr @time_cfra_find_ak(ptr noundef %16, float noundef %18) #10
  %20 = icmp eq ptr %19, null
  br i1 %20, label %37, label %21

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 1
  %23 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 2
  %24 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 3
  br label %25

25:                                               ; preds = %21, %31
  %26 = phi ptr [ %19, %21 ], [ %35, %31 ]
  %27 = getelementptr inbounds %struct.ActKeyColumn, ptr %26, i64 0, i32 8
  %28 = load float, ptr %27, align 4, !tbaa !165
  %29 = load float, ptr %22, align 4, !tbaa !130
  %30 = fcmp ugt float %28, %29
  br i1 %30, label %37, label %31

31:                                               ; preds = %25
  %32 = load float, ptr %23, align 8, !tbaa !167
  call void @glVertex2f(float noundef %28, float noundef %32) #9
  %33 = load float, ptr %27, align 4, !tbaa !165
  %34 = load float, ptr %24, align 4, !tbaa !168
  call void @glVertex2f(float noundef %33, float noundef %34) #9
  %35 = load ptr, ptr %26, align 8, !tbaa !169
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %25, !llvm.loop !170

37:                                               ; preds = %25, %31, %14
  call void @glEnd() #9
  call void @BLI_dlrbTree_free(ptr noundef nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %4) #11
  ret void
}

; Function Attrs: optsize
declare i32 @CTX_data_selected_objects(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: optsize
declare void @BLI_dlrbTree_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @scene_to_keylist(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ob_to_keylist(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_dlrbTree_linkedlist_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glBegin(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @time_cfra_find_ak(ptr noundef readonly %0, float noundef %1) unnamed_addr #6 !PGOFuncName !171 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %22, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.ActKeyColumn, ptr %0, i64 0, i32 8
  %6 = load float, ptr %5, align 4, !tbaa !165
  %7 = fcmp ogt float %6, %1
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.ActKeyColumn, ptr %0, i64 0, i32 2
  br label %14

10:                                               ; preds = %4
  %11 = fcmp olt float %6, %1
  br i1 %11, label %12, label %18

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.ActKeyColumn, ptr %0, i64 0, i32 3
  br label %14

14:                                               ; preds = %8, %12
  %15 = phi ptr [ %13, %12 ], [ %9, %8 ]
  %16 = load ptr, ptr %15, align 8, !tbaa !34
  %17 = tail call fastcc ptr @time_cfra_find_ak(ptr noundef %16, float noundef %1) #10
  br label %18

18:                                               ; preds = %14, %10
  %19 = phi ptr [ null, %10 ], [ %17, %14 ]
  %20 = icmp eq ptr %19, null
  %21 = select i1 %20, ptr %0, ptr %19
  br label %22

22:                                               ; preds = %18, %2
  %23 = phi ptr [ null, %2 ], [ %21, %18 ]
  ret ptr %23
}

; Function Attrs: optsize
declare void @glVertex2f(float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glEnd() local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_dlrbTree_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @BKE_ptcache_ids_from_object(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glPushMatrix() local_unnamed_addr #2

; Function Attrs: optsize
declare void @glTranslatef(float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

; Function Attrs: optsize
declare void @glScalef(float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glColor4fv(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glEnableClientState(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glVertexPointer(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glDrawArrays(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glDisableClientState(i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @glPopMatrix() local_unnamed_addr #2

; Function Attrs: optsize
declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_region_tag_redraw(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_region_header_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @ED_region_header(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #8

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind optsize }
attributes #10 = { optsize }
attributes #11 = { nounwind }

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
!38 = !{!39, !40, i64 80}
!39 = !{!"SpaceType", !35, i64 0, !35, i64 8, !36, i64 16, !40, i64 80, !40, i64 84, !35, i64 88, !35, i64 96, !35, i64 104, !35, i64 112, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !35, i64 152, !35, i64 160, !35, i64 168, !41, i64 176, !41, i64 192, !40, i64 208}
!40 = !{!"int", !36, i64 0}
!41 = !{!"ListBase", !35, i64 0, !35, i64 8}
!42 = !{!39, !35, i64 88}
!43 = !{!39, !35, i64 96}
!44 = !{!39, !35, i64 104}
!45 = !{!39, !35, i64 136}
!46 = !{!39, !35, i64 144}
!47 = !{!39, !35, i64 152}
!48 = !{!39, !35, i64 120}
!49 = !{!39, !35, i64 128}
!50 = !{!51, !40, i64 16}
!51 = !{!"ARegionType", !35, i64 0, !35, i64 8, !40, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !35, i64 56, !35, i64 64, !35, i64 72, !35, i64 80, !35, i64 88, !35, i64 96, !41, i64 104, !41, i64 120, !41, i64 136, !40, i64 152, !40, i64 156, !40, i64 160, !40, i64 164, !40, i64 168, !52, i64 172, !52, i64 174, !52, i64 176}
!52 = !{!"short", !36, i64 0}
!53 = !{!51, !40, i64 168}
!54 = !{!51, !35, i64 24}
!55 = !{!51, !35, i64 40}
!56 = !{!51, !35, i64 48}
!57 = !{!51, !35, i64 80}
!58 = !{!51, !40, i64 164}
!59 = !{!"space_time.c:time_new"}
!60 = !{!61, !40, i64 32}
!61 = !{!"SpaceTime", !35, i64 0, !35, i64 8, !41, i64 16, !40, i64 32, !62, i64 36, !63, i64 40, !41, i64 200, !40, i64 216, !40, i64 220}
!62 = !{!"float", !36, i64 0}
!63 = !{!"View2D", !64, i64 0, !64, i64 16, !65, i64 32, !65, i64 48, !65, i64 64, !36, i64 80, !36, i64 88, !62, i64 96, !62, i64 100, !52, i64 104, !52, i64 106, !52, i64 108, !52, i64 110, !52, i64 112, !52, i64 114, !52, i64 116, !52, i64 118, !52, i64 120, !52, i64 122, !52, i64 124, !52, i64 126, !35, i64 128, !40, i64 136, !40, i64 140, !35, i64 144, !35, i64 152}
!64 = !{!"rctf", !62, i64 0, !62, i64 4, !62, i64 8, !62, i64 12}
!65 = !{!"rcti", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!66 = !{!61, !40, i64 220}
!67 = !{!68, !52, i64 214}
!68 = !{!"ARegion", !35, i64 0, !35, i64 8, !63, i64 16, !65, i64 176, !65, i64 192, !52, i64 208, !52, i64 210, !52, i64 212, !52, i64 214, !52, i64 216, !52, i64 218, !62, i64 220, !52, i64 224, !52, i64 226, !52, i64 228, !52, i64 230, !52, i64 232, !52, i64 234, !52, i64 236, !52, i64 238, !35, i64 240, !41, i64 248, !41, i64 264, !41, i64 280, !41, i64 296, !41, i64 312, !41, i64 328, !41, i64 344, !35, i64 360, !35, i64 368, !35, i64 376}
!69 = !{!68, !52, i64 216}
!70 = !{!40, !40, i64 0}
!71 = !{!62, !62, i64 0}
!72 = !{i64 0, i64 4, !71, i64 4, i64 4, !71, i64 8, i64 4, !71, i64 12, i64 4, !71}
!73 = !{!68, !52, i64 120}
!74 = !{!68, !52, i64 132}
!75 = !{!52, !52, i64 0}
!76 = !{!"space_time.c:time_free"}
!77 = !{!"space_time.c:time_init"}
!78 = !{!79, !35, i64 96}
!79 = !{!"ScrArea", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !65, i64 56, !36, i64 72, !36, i64 73, !52, i64 74, !52, i64 76, !52, i64 78, !52, i64 80, !52, i64 82, !52, i64 84, !36, i64 86, !36, i64 87, !35, i64 88, !41, i64 96, !41, i64 112, !41, i64 128, !41, i64 144}
!80 = !{!61, !40, i64 216}
!81 = !{!"space_time.c:time_duplicate"}
!82 = !{!"space_time.c:time_listener"}
!83 = !{!84, !40, i64 36}
!84 = !{!"wmNotifier", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !40, i64 48, !35, i64 56}
!85 = !{!84, !40, i64 40}
!86 = !{!84, !35, i64 56}
!87 = distinct !{!87, !88}
!88 = !{!"llvm.loop.mustprogress"}
!89 = !{!"space_time.c:time_refresh"}
!90 = !{!"space_time.c:time_main_area_init"}
!91 = !{!68, !52, i64 208}
!92 = !{!68, !52, i64 210}
!93 = !{!94, !35, i64 296}
!94 = !{!"wmWindowManager", !95, i64 0, !35, i64 120, !35, i64 128, !41, i64 136, !40, i64 152, !52, i64 156, !52, i64 158, !41, i64 160, !41, i64 176, !96, i64 192, !41, i64 232, !41, i64 248, !41, i64 264, !41, i64 280, !35, i64 296, !35, i64 304, !35, i64 312, !41, i64 320, !35, i64 336, !36, i64 344, !36, i64 345}
!95 = !{!"ID", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !52, i64 98, !40, i64 100, !40, i64 104, !40, i64 108, !35, i64 112}
!96 = !{!"ReportList", !41, i64 0, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !35, i64 32}
!97 = !{!"space_time.c:time_main_area_draw"}
!98 = !{!"space_time.c:time_main_area_listener"}
!99 = !{!"space_time.c:time_header_area_init"}
!100 = !{!"space_time.c:time_header_area_draw"}
!101 = !{!"space_time.c:time_header_area_listener"}
!102 = !{!"space_time.c:time_cache_free"}
!103 = !{!104, !35, i64 16}
!104 = !{!"SpaceTimeCache", !35, i64 0, !35, i64 8, !35, i64 16}
!105 = distinct !{!105, !88}
!106 = !{!"space_time.c:BLI_listbase_clear"}
!107 = !{!"space_time.c:time_cache_refresh"}
!108 = !{!"space_time.c:time_draw_sfra_efra"}
!109 = !{!110, !52, i64 712}
!110 = !{!"Scene", !95, i64 0, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !41, i64 152, !35, i64 168, !35, i64 176, !36, i64 184, !36, i64 196, !36, i64 208, !36, i64 220, !40, i64 232, !40, i64 236, !40, i64 240, !52, i64 244, !36, i64 246, !36, i64 247, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !111, i64 280, !118, i64 4264, !41, i64 4296, !41, i64 4312, !35, i64 4328, !35, i64 4336, !35, i64 4344, !35, i64 4352, !35, i64 4360, !35, i64 4368, !52, i64 4376, !52, i64 4378, !40, i64 4380, !41, i64 4384, !119, i64 4400, !120, i64 4416, !123, i64 4600, !35, i64 4608, !124, i64 4616, !35, i64 4640, !125, i64 4648, !125, i64 4656, !113, i64 4664, !114, i64 4824, !126, i64 4888, !35, i64 4952}
!111 = !{!"RenderData", !112, i64 0, !35, i64 248, !35, i64 256, !115, i64 264, !116, i64 328, !40, i64 400, !40, i64 404, !40, i64 408, !62, i64 412, !40, i64 416, !40, i64 420, !40, i64 424, !40, i64 428, !52, i64 432, !52, i64 434, !62, i64 436, !62, i64 440, !62, i64 444, !62, i64 448, !62, i64 452, !52, i64 456, !52, i64 458, !52, i64 460, !52, i64 462, !52, i64 464, !52, i64 466, !40, i64 468, !52, i64 472, !52, i64 474, !52, i64 476, !52, i64 478, !52, i64 480, !52, i64 482, !40, i64 484, !40, i64 488, !52, i64 492, !52, i64 494, !40, i64 496, !40, i64 500, !52, i64 504, !52, i64 506, !52, i64 508, !52, i64 510, !52, i64 512, !36, i64 514, !36, i64 515, !40, i64 516, !40, i64 520, !40, i64 524, !52, i64 528, !52, i64 530, !52, i64 532, !52, i64 534, !52, i64 536, !52, i64 538, !52, i64 540, !52, i64 542, !64, i64 544, !64, i64 560, !65, i64 576, !41, i64 592, !52, i64 608, !52, i64 610, !62, i64 612, !62, i64 616, !62, i64 620, !62, i64 624, !40, i64 628, !62, i64 632, !62, i64 636, !62, i64 640, !62, i64 644, !52, i64 648, !52, i64 650, !52, i64 652, !52, i64 654, !52, i64 656, !52, i64 658, !62, i64 660, !62, i64 664, !52, i64 668, !52, i64 670, !62, i64 672, !62, i64 676, !36, i64 680, !40, i64 1704, !52, i64 1708, !52, i64 1710, !36, i64 1712, !36, i64 2480, !36, i64 2496, !36, i64 2512, !36, i64 2513, !36, i64 2514, !36, i64 2515, !40, i64 2520, !52, i64 2524, !52, i64 2526, !62, i64 2528, !62, i64 2532, !52, i64 2536, !52, i64 2538, !62, i64 2540, !52, i64 2544, !52, i64 2546, !40, i64 2548, !52, i64 2552, !52, i64 2554, !52, i64 2556, !52, i64 2558, !62, i64 2560, !62, i64 2564, !35, i64 2568, !40, i64 2576, !62, i64 2580, !36, i64 2584, !117, i64 2616, !40, i64 3976, !40, i64 3980}
!112 = !{!"ImageFormatData", !36, i64 0, !36, i64 1, !36, i64 2, !36, i64 3, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !52, i64 8, !52, i64 10, !62, i64 12, !36, i64 16, !36, i64 17, !36, i64 18, !113, i64 24, !114, i64 184}
!113 = !{!"ColorManagedViewSettings", !40, i64 0, !40, i64 4, !36, i64 8, !36, i64 72, !62, i64 136, !62, i64 140, !35, i64 144, !35, i64 152}
!114 = !{!"ColorManagedDisplaySettings", !36, i64 0}
!115 = !{!"QuicktimeCodecSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !52, i64 48, !52, i64 50, !40, i64 52, !40, i64 56, !40, i64 60}
!116 = !{!"FFMpegCodecData", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !62, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !40, i64 56, !40, i64 60, !35, i64 64}
!117 = !{!"BakeData", !112, i64 0, !36, i64 248, !52, i64 1272, !52, i64 1274, !52, i64 1276, !52, i64 1278, !62, i64 1280, !62, i64 1284, !36, i64 1288, !36, i64 1291, !36, i64 1292, !36, i64 1293, !36, i64 1296}
!118 = !{!"AudioData", !40, i64 0, !62, i64 4, !62, i64 8, !62, i64 12, !40, i64 16, !52, i64 20, !52, i64 22, !62, i64 24, !62, i64 28}
!119 = !{!"GameFraming", !36, i64 0, !36, i64 12, !36, i64 13, !36, i64 14, !36, i64 15}
!120 = !{!"GameData", !119, i64 0, !52, i64 16, !52, i64 18, !52, i64 20, !52, i64 22, !52, i64 24, !52, i64 26, !52, i64 28, !52, i64 30, !52, i64 32, !36, i64 34, !121, i64 40, !52, i64 64, !52, i64 66, !62, i64 68, !122, i64 72, !62, i64 128, !62, i64 132, !40, i64 136, !52, i64 140, !52, i64 142, !52, i64 144, !52, i64 146, !52, i64 148, !52, i64 150, !52, i64 152, !52, i64 154, !52, i64 156, !52, i64 158, !52, i64 160, !52, i64 162, !62, i64 164, !62, i64 168, !62, i64 172, !62, i64 176, !62, i64 180}
!121 = !{!"GameDome", !52, i64 0, !52, i64 2, !52, i64 4, !52, i64 6, !62, i64 8, !62, i64 12, !35, i64 16}
!122 = !{!"RecastData", !62, i64 0, !62, i64 4, !62, i64 8, !62, i64 12, !62, i64 16, !62, i64 20, !62, i64 24, !62, i64 28, !62, i64 32, !62, i64 36, !40, i64 40, !62, i64 44, !62, i64 48, !52, i64 52, !52, i64 54}
!123 = !{!"UnitSettings", !62, i64 0, !36, i64 4, !36, i64 5, !52, i64 6}
!124 = !{!"PhysicsSettings", !36, i64 0, !40, i64 12, !40, i64 16, !40, i64 20}
!125 = !{!"long", !36, i64 0}
!126 = !{!"ColorManagedColorspaceSettings", !36, i64 0}
!127 = !{!63, !62, i64 16}
!128 = !{!63, !62, i64 24}
!129 = !{!63, !62, i64 28}
!130 = !{!63, !62, i64 20}
!131 = !{!"space_time.c:time_draw_keyframes"}
!132 = !{!110, !52, i64 244}
!133 = !{!134, !40, i64 432}
!134 = !{!"Object", !95, i64 0, !35, i64 120, !35, i64 128, !52, i64 136, !52, i64 138, !40, i64 140, !40, i64 144, !40, i64 148, !36, i64 152, !35, i64 216, !35, i64 224, !35, i64 232, !35, i64 240, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !35, i64 280, !35, i64 288, !35, i64 296, !35, i64 304, !135, i64 312, !35, i64 360, !41, i64 368, !41, i64 384, !41, i64 400, !41, i64 416, !40, i64 432, !40, i64 436, !35, i64 440, !35, i64 448, !40, i64 456, !40, i64 460, !36, i64 464, !36, i64 476, !36, i64 488, !36, i64 500, !36, i64 512, !36, i64 524, !36, i64 536, !36, i64 548, !36, i64 560, !36, i64 576, !36, i64 592, !36, i64 604, !62, i64 616, !62, i64 620, !36, i64 624, !36, i64 688, !36, i64 752, !36, i64 816, !36, i64 880, !40, i64 944, !52, i64 948, !52, i64 950, !52, i64 952, !52, i64 954, !52, i64 956, !52, i64 958, !52, i64 960, !52, i64 962, !52, i64 964, !36, i64 966, !36, i64 967, !40, i64 968, !40, i64 972, !40, i64 976, !40, i64 980, !40, i64 984, !62, i64 988, !62, i64 992, !62, i64 996, !62, i64 1000, !62, i64 1004, !62, i64 1008, !62, i64 1012, !62, i64 1016, !62, i64 1020, !62, i64 1024, !62, i64 1028, !62, i64 1032, !52, i64 1036, !52, i64 1038, !52, i64 1040, !36, i64 1042, !36, i64 1043, !52, i64 1044, !36, i64 1046, !36, i64 1047, !62, i64 1048, !62, i64 1052, !41, i64 1056, !41, i64 1072, !41, i64 1088, !41, i64 1104, !62, i64 1120, !52, i64 1124, !52, i64 1126, !36, i64 1128, !40, i64 1144, !40, i64 1148, !35, i64 1152, !36, i64 1160, !36, i64 1161, !52, i64 1162, !36, i64 1164, !41, i64 1176, !41, i64 1192, !41, i64 1208, !41, i64 1224, !35, i64 1240, !35, i64 1248, !35, i64 1256, !36, i64 1264, !36, i64 1265, !52, i64 1266, !62, i64 1268, !35, i64 1272, !35, i64 1280, !35, i64 1288, !35, i64 1296, !125, i64 1304, !125, i64 1312, !40, i64 1320, !40, i64 1324, !41, i64 1328, !41, i64 1344, !35, i64 1360, !35, i64 1368, !35, i64 1376, !36, i64 1384, !35, i64 1392, !41, i64 1400, !35, i64 1416}
!135 = !{!"bAnimVizSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !52, i64 16, !52, i64 18, !52, i64 20, !52, i64 22, !52, i64 24, !52, i64 26, !52, i64 28, !52, i64 30, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44}
!136 = !{!137, !35, i64 32}
!137 = !{!"CollectionPointerLink", !35, i64 0, !35, i64 8, !138, i64 16}
!138 = !{!"PointerRNA", !139, i64 0, !35, i64 8, !35, i64 16}
!139 = !{!"", !35, i64 0}
!140 = distinct !{!140, !88}
!141 = !{!"space_time.c:time_draw_cache"}
!142 = !{!61, !35, i64 200}
!143 = !{!144, !35, i64 176}
!144 = !{!"PTCacheID", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !40, i64 56, !40, i64 60, !40, i64 64, !35, i64 72, !35, i64 80, !35, i64 88, !35, i64 96, !35, i64 104, !35, i64 112, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !35, i64 152, !35, i64 160, !35, i64 168, !35, i64 176, !35, i64 184, !35, i64 192}
!145 = !{!146, !40, i64 28}
!146 = !{!"PointCache", !35, i64 0, !35, i64 8, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !40, i64 56, !52, i64 60, !52, i64 62, !36, i64 64, !36, i64 128, !36, i64 192, !36, i64 256, !35, i64 1280, !41, i64 1288, !35, i64 1304, !35, i64 1312}
!147 = !{!146, !40, i64 32}
!148 = !{!144, !40, i64 40}
!149 = !{!146, !35, i64 1280}
!150 = !{!36, !36, i64 0}
!151 = distinct !{!151, !88}
!152 = !{!153, !52, i64 8948}
!153 = !{!"UserDef", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !36, i64 20, !36, i64 788, !36, i64 1556, !36, i64 2580, !36, i64 3348, !36, i64 4116, !36, i64 4884, !36, i64 5652, !36, i64 6420, !36, i64 7444, !40, i64 8468, !52, i64 8472, !52, i64 8474, !52, i64 8476, !52, i64 8478, !52, i64 8480, !52, i64 8482, !40, i64 8484, !40, i64 8488, !40, i64 8492, !52, i64 8496, !52, i64 8498, !40, i64 8500, !40, i64 8504, !40, i64 8508, !40, i64 8512, !40, i64 8516, !40, i64 8520, !40, i64 8524, !52, i64 8528, !52, i64 8530, !52, i64 8532, !52, i64 8534, !41, i64 8536, !41, i64 8552, !41, i64 8568, !41, i64 8584, !41, i64 8600, !41, i64 8616, !41, i64 8632, !36, i64 8648, !52, i64 8712, !52, i64 8714, !52, i64 8716, !52, i64 8718, !52, i64 8720, !52, i64 8722, !52, i64 8724, !52, i64 8726, !36, i64 8728, !52, i64 8896, !52, i64 8898, !52, i64 8900, !52, i64 8902, !52, i64 8904, !52, i64 8906, !52, i64 8908, !52, i64 8910, !40, i64 8912, !40, i64 8916, !52, i64 8920, !52, i64 8922, !52, i64 8924, !52, i64 8926, !52, i64 8928, !52, i64 8930, !52, i64 8932, !52, i64 8934, !52, i64 8936, !52, i64 8938, !36, i64 8940, !36, i64 8941, !36, i64 8942, !36, i64 8943, !52, i64 8944, !52, i64 8946, !52, i64 8948, !52, i64 8950, !52, i64 8952, !52, i64 8954, !62, i64 8956, !62, i64 8960, !40, i64 8964, !52, i64 8968, !52, i64 8970, !62, i64 8972, !52, i64 8976, !52, i64 8978, !52, i64 8980, !52, i64 8982, !154, i64 8984, !36, i64 9760, !36, i64 9772, !52, i64 9788, !36, i64 9790, !36, i64 9791, !36, i64 9792, !36, i64 9872, !40, i64 10896, !40, i64 10900, !62, i64 10904, !62, i64 10908, !40, i64 10912, !52, i64 10916, !52, i64 10918, !52, i64 10920, !52, i64 10922, !52, i64 10924, !52, i64 10926, !155, i64 10928}
!154 = !{!"ColorBand", !52, i64 0, !52, i64 2, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !36, i64 8}
!155 = !{!"WalkNavigation", !62, i64 0, !62, i64 4, !62, i64 8, !62, i64 12, !62, i64 16, !62, i64 20, !52, i64 24, !36, i64 26}
!156 = !{!146, !40, i64 16}
!157 = !{!104, !35, i64 0}
!158 = distinct !{!158, !88}
!159 = distinct !{!159, !88}
!160 = !{!"space_time.c:time_draw_idblock_keyframes"}
!161 = !{!162, !40, i64 96}
!162 = !{!"bDopeSheet", !35, i64 0, !41, i64 8, !35, i64 24, !36, i64 32, !40, i64 96, !40, i64 100, !40, i64 104, !40, i64 108}
!163 = !{!164, !35, i64 16}
!164 = !{!"DLRBT_Tree", !35, i64 0, !35, i64 8, !35, i64 16}
!165 = !{!166, !62, i64 44}
!166 = !{!"ActKeyColumn", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !36, i64 40, !36, i64 41, !52, i64 42, !62, i64 44, !52, i64 48, !52, i64 50}
!167 = !{!63, !62, i64 8}
!168 = !{!63, !62, i64 12}
!169 = !{!166, !35, i64 0}
!170 = distinct !{!170, !88}
!171 = !{!"space_time.c:time_cfra_find_ak"}

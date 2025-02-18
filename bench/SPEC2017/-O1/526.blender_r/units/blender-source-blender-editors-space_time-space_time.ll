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
%struct.SpaceTimeCache = type { ptr, ptr, ptr }
%struct.ScrArea = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.rcti, i8, i8, i16, i16, i16, i16, i16, i16, i8, i8, ptr, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase }
%struct.wmNotifier = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr }
%struct.wmWindowManager = type { %struct.ID, ptr, ptr, %struct.ListBase, i32, i16, i16, %struct.ListBase, %struct.ListBase, %struct.ReportList, %struct.ListBase, %struct.ListBase, %struct.ListBase, %struct.ListBase, ptr, ptr, ptr, %struct.ListBase, ptr, i8, [7 x i8] }
%struct.ReportList = type { %struct.ListBase, i32, i32, i32, i32, ptr }
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

; Function Attrs: nounwind uwtable
define dso_local void @ED_spacetype_time() local_unnamed_addr #0 {
  %1 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %2 = tail call ptr %1(i64 noundef 216, ptr noundef nonnull @.str) #8
  %3 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 3
  store i32 15, ptr %3, align 8, !tbaa !38
  %4 = getelementptr inbounds %struct.SpaceType, ptr %2, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %4, ptr noundef nonnull align 1 dereferenceable(64) @str, i64 noundef 64, i1 false) #8
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
  %14 = tail call ptr %13(i64 noundef 184, ptr noundef nonnull @.str.2) #8
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
  tail call void @BLI_addhead(ptr noundef nonnull %21, ptr noundef %14) #8
  %22 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %23 = tail call ptr %22(i64 noundef 184, ptr noundef nonnull @.str.2) #8
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
  tail call void @BLI_addhead(ptr noundef nonnull %21, ptr noundef %23) #8
  tail call void @BKE_spacetype_register(ptr noundef %2) #8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal ptr @time_new(ptr noundef %0) #0 {
  %2 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %3 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %4 = tail call ptr %3(i64 noundef 224, ptr noundef nonnull @.str.3) #8
  %5 = getelementptr inbounds %struct.SpaceTime, ptr %4, i64 0, i32 3
  store i32 15, ptr %5, align 8, !tbaa !59
  %6 = getelementptr inbounds %struct.SpaceTime, ptr %4, i64 0, i32 8
  %7 = load i32, ptr %6, align 4, !tbaa !65
  %8 = or i32 %7, 1
  store i32 %8, ptr %6, align 4, !tbaa !65
  %9 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %10 = tail call ptr %9(i64 noundef 384, ptr noundef nonnull @.str.4) #8
  %11 = getelementptr inbounds %struct.SpaceTime, ptr %4, i64 0, i32 2
  tail call void @BLI_addtail(ptr noundef nonnull %11, ptr noundef %10) #8
  %12 = getelementptr inbounds %struct.ARegion, ptr %10, i64 0, i32 8
  store i16 1, ptr %12, align 2, !tbaa !66
  %13 = getelementptr inbounds %struct.ARegion, ptr %10, i64 0, i32 9
  store i16 2, ptr %13, align 8, !tbaa !68
  %14 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %15 = tail call ptr %14(i64 noundef 384, ptr noundef nonnull @.str.5) #8
  tail call void @BLI_addtail(ptr noundef nonnull %11, ptr noundef %15) #8
  %16 = getelementptr inbounds %struct.ARegion, ptr %15, i64 0, i32 8
  store i16 0, ptr %16, align 2, !tbaa !66
  %17 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 22, i32 6
  %18 = load i32, ptr %17, align 4, !tbaa !69
  %19 = add nsw i32 %18, -4
  %20 = sitofp i32 %19 to float
  %21 = getelementptr inbounds %struct.ARegion, ptr %15, i64 0, i32 2
  store float %20, ptr %21, align 8, !tbaa !88
  %22 = getelementptr inbounds %struct.ARegion, ptr %15, i64 0, i32 2, i32 0, i32 2
  store float 0.000000e+00, ptr %22, align 8, !tbaa !89
  %23 = getelementptr inbounds %struct.Scene, ptr %2, i64 0, i32 22, i32 7
  %24 = load i32, ptr %23, align 8, !tbaa !90
  %25 = add nsw i32 %24, 4
  %26 = sitofp i32 %25 to float
  %27 = getelementptr inbounds %struct.ARegion, ptr %15, i64 0, i32 2, i32 0, i32 1
  store float %26, ptr %27, align 4, !tbaa !91
  %28 = getelementptr inbounds %struct.ARegion, ptr %15, i64 0, i32 2, i32 0, i32 3
  store float 5.000000e+01, ptr %28, align 4, !tbaa !92
  %29 = getelementptr inbounds %struct.ARegion, ptr %15, i64 0, i32 2, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %29, ptr noundef nonnull align 8 dereferenceable(16) %21, i64 16, i1 false), !tbaa.struct !93
  %30 = getelementptr inbounds %struct.ARegion, ptr %15, i64 0, i32 2, i32 5
  store float 1.000000e+00, ptr %30, align 8, !tbaa !94
  %31 = getelementptr inbounds %struct.ARegion, ptr %15, i64 0, i32 2, i32 5, i64 1
  store float 5.000000e+01, ptr %31, align 4, !tbaa !94
  %32 = getelementptr inbounds %struct.ARegion, ptr %15, i64 0, i32 2, i32 6
  store float 3.000000e+05, ptr %32, align 8, !tbaa !94
  %33 = getelementptr inbounds %struct.ARegion, ptr %15, i64 0, i32 2, i32 6, i64 1
  store float 5.000000e+01, ptr %33, align 4, !tbaa !94
  %34 = getelementptr inbounds %struct.ARegion, ptr %15, i64 0, i32 2, i32 7
  store float 0x3FB99999A0000000, ptr %34, align 8, !tbaa !95
  %35 = getelementptr inbounds %struct.ARegion, ptr %15, i64 0, i32 2, i32 8
  store float 1.000000e+01, ptr %35, align 4, !tbaa !96
  %36 = getelementptr inbounds %struct.ARegion, ptr %15, i64 0, i32 2, i32 9
  %37 = load i16, ptr %36, align 8, !tbaa !97
  %38 = or i16 %37, 72
  store i16 %38, ptr %36, align 8, !tbaa !97
  %39 = getelementptr inbounds %struct.ARegion, ptr %15, i64 0, i32 2, i32 15
  %40 = load i16, ptr %39, align 4, !tbaa !98
  %41 = or i16 %40, 8
  store i16 %41, ptr %39, align 4, !tbaa !98
  %42 = getelementptr inbounds %struct.ARegion, ptr %15, i64 0, i32 2, i32 13
  %43 = load i16, ptr %42, align 8, !tbaa !99
  %44 = or i16 %43, 4
  store i16 %44, ptr %42, align 8, !tbaa !99
  %45 = getelementptr inbounds %struct.ARegion, ptr %15, i64 0, i32 2, i32 12
  %46 = load i16, ptr %45, align 2, !tbaa !100
  %47 = or i16 %46, 512
  store i16 %47, ptr %45, align 2, !tbaa !100
  ret ptr %4
}

; Function Attrs: nounwind uwtable
define internal void @time_free(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.SpaceTime, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !34
  %4 = icmp eq ptr %3, null
  br i1 %4, label %15, label %5

5:                                                ; preds = %1, %12
  %6 = phi ptr [ %13, %12 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.SpaceTimeCache, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !101
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %5
  %11 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %11(ptr noundef nonnull %8) #8
  store ptr null, ptr %7, align 8, !tbaa !101
  br label %12

12:                                               ; preds = %10, %5
  %13 = load ptr, ptr %6, align 8, !tbaa !34
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %5, !llvm.loop !103

15:                                               ; preds = %12, %1
  tail call void @BLI_freelistN(ptr noundef nonnull %2) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @time_init(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 19
  %4 = load ptr, ptr %3, align 8, !tbaa !106
  %5 = getelementptr inbounds %struct.SpaceTime, ptr %4, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = icmp eq ptr %6, null
  br i1 %7, label %18, label %8

8:                                                ; preds = %2, %15
  %9 = phi ptr [ %16, %15 ], [ %6, %2 ]
  %10 = getelementptr inbounds %struct.SpaceTimeCache, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !101
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %8
  %14 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %14(ptr noundef nonnull %11) #8
  store ptr null, ptr %10, align 8, !tbaa !101
  br label %15

15:                                               ; preds = %13, %8
  %16 = load ptr, ptr %9, align 8, !tbaa !34
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %8, !llvm.loop !103

18:                                               ; preds = %15, %2
  tail call void @BLI_freelistN(ptr noundef nonnull %5) #8
  %19 = getelementptr inbounds %struct.SpaceTime, ptr %4, i64 0, i32 7
  %20 = load i32, ptr %19, align 8, !tbaa !108
  %21 = or i32 %20, 127
  store i32 %21, ptr %19, align 8, !tbaa !108
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @time_duplicate(ptr noundef %0) #0 {
  %2 = load ptr, ptr @MEM_dupallocN, align 8, !tbaa !34
  %3 = tail call ptr %2(ptr noundef %0) #8
  %4 = getelementptr inbounds %struct.SpaceTime, ptr %3, i64 0, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  ret ptr %3
}

declare void @time_operatortypes() #2

; Function Attrs: nounwind uwtable
define internal void @time_listener(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 5
  %5 = load i32, ptr %4, align 4, !tbaa !109
  switch i32 %5, label %50 [
    i32 83886080, label %6
    i32 67108864, label %12
    i32 251658240, label %40
    i32 16777216, label %45
  ]

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 6
  %8 = load i32, ptr %7, align 8, !tbaa !111
  %9 = add i32 %8, -1376256
  %10 = tail call i32 @llvm.fshl.i32(i32 %9, i32 %9, i32 16)
  switch i32 %10, label %50 [
    i32 1, label %11
    i32 0, label %11
    i32 7, label %11
    i32 3, label %11
    i32 6, label %11
    i32 4, label %11
  ]

11:                                               ; preds = %6, %6, %6, %6, %6, %6
  tail call void @ED_area_tag_refresh(ptr noundef %1) #8
  tail call void @ED_area_tag_redraw(ptr noundef %1) #8
  br label %50

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 6
  %14 = load i32, ptr %13, align 8, !tbaa !111
  switch i32 %14, label %50 [
    i32 786432, label %15
    i32 458752, label %16
    i32 196608, label %16
    i32 1114112, label %17
  ]

15:                                               ; preds = %12
  tail call void @ED_area_tag_redraw(ptr noundef %1) #8
  br label %50

16:                                               ; preds = %12, %12
  tail call void @ED_area_tag_refresh(ptr noundef %1) #8
  br label %50

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 9
  %19 = load ptr, ptr %18, align 8, !tbaa !112
  %20 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 20
  br label %21

21:                                               ; preds = %25, %17
  %22 = phi ptr [ %20, %17 ], [ %23, %25 ]
  %23 = load ptr, ptr %22, align 8, !tbaa !34
  %24 = icmp eq ptr %23, null
  br i1 %24, label %50, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.ARegion, ptr %23, i64 0, i32 8
  %27 = load i16, ptr %26, align 2, !tbaa !66
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %29, label %21, !llvm.loop !113

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.Scene, ptr %19, i64 0, i32 22, i32 6
  %31 = load i32, ptr %30, align 4, !tbaa !69
  %32 = add nsw i32 %31, -4
  %33 = sitofp i32 %32 to float
  %34 = getelementptr inbounds %struct.ARegion, ptr %23, i64 0, i32 2
  store float %33, ptr %34, align 8, !tbaa !88
  %35 = getelementptr inbounds %struct.Scene, ptr %19, i64 0, i32 22, i32 7
  %36 = load i32, ptr %35, align 8, !tbaa !90
  %37 = add nsw i32 %36, 4
  %38 = sitofp i32 %37 to float
  %39 = getelementptr inbounds %struct.ARegion, ptr %23, i64 0, i32 2, i32 0, i32 1
  store float %38, ptr %39, align 4, !tbaa !91
  br label %50

40:                                               ; preds = %3
  %41 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 6
  %42 = load i32, ptr %41, align 8, !tbaa !111
  %43 = icmp eq i32 %42, 1179648
  br i1 %43, label %44, label %50

44:                                               ; preds = %40
  tail call void @ED_area_tag_refresh(ptr noundef %1) #8
  br label %50

45:                                               ; preds = %3
  %46 = getelementptr inbounds %struct.wmNotifier, ptr %2, i64 0, i32 6
  %47 = load i32, ptr %46, align 8, !tbaa !111
  %48 = icmp eq i32 %47, 65536
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  tail call void @ED_area_tag_refresh(ptr noundef %1) #8
  br label %50

50:                                               ; preds = %21, %29, %49, %45, %44, %40, %15, %16, %12, %11, %6, %3
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @time_refresh(ptr nocapture readnone %0, ptr noundef %1) #0 {
  %3 = tail call ptr @BKE_area_find_region_type(ptr noundef %1, i32 noundef 0) #8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %22, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.ScrArea, ptr %1, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !106
  %8 = getelementptr inbounds %struct.SpaceTime, ptr %7, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  %10 = icmp eq ptr %9, null
  br i1 %10, label %21, label %11

11:                                               ; preds = %5, %18
  %12 = phi ptr [ %19, %18 ], [ %9, %5 ]
  %13 = getelementptr inbounds %struct.SpaceTimeCache, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !101
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %11
  %17 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  tail call void %17(ptr noundef nonnull %14) #8
  store ptr null, ptr %13, align 8, !tbaa !101
  br label %18

18:                                               ; preds = %16, %11
  %19 = load ptr, ptr %12, align 8, !tbaa !34
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %11, !llvm.loop !103

21:                                               ; preds = %18, %5
  tail call void @BLI_freelistN(ptr noundef nonnull %8) #8
  br label %22

22:                                               ; preds = %21, %2
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @time_main_area_init(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  %4 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 5
  %5 = load i16, ptr %4, align 8, !tbaa !114
  %6 = sext i16 %5 to i32
  %7 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 6
  %8 = load i16, ptr %7, align 2, !tbaa !115
  %9 = sext i16 %8 to i32
  tail call void @UI_view2d_region_reinit(ptr noundef nonnull %3, i16 noundef signext -1, i32 noundef %6, i32 noundef %9) #8
  %10 = getelementptr inbounds %struct.wmWindowManager, ptr %0, i64 0, i32 14
  %11 = load ptr, ptr %10, align 8, !tbaa !116
  %12 = tail call ptr @WM_keymap_find(ptr noundef %11, ptr noundef nonnull @.str.1, i32 noundef 15, i32 noundef 0) #8
  %13 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 26
  %14 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 4
  %15 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 3
  %16 = tail call ptr @WM_event_add_keymap_handler_bb(ptr noundef nonnull %13, ptr noundef %12, ptr noundef nonnull %14, ptr noundef nonnull %15) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @time_main_area_draw(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.ListBase, align 8
  %4 = alloca [4 x float], align 16
  %5 = alloca %struct.ListBase, align 8
  %6 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %7 = tail call ptr @CTX_wm_space_time(ptr noundef %0) #8
  %8 = tail call ptr @CTX_data_active_object(ptr noundef %0) #8
  %9 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2
  tail call void @UI_ThemeClearColor(i32 noundef 2) #8
  tail call void @glClear(i32 noundef 16384) #8
  tail call void @UI_view2d_view_ortho(ptr noundef nonnull %9) #8
  %10 = getelementptr inbounds %struct.SpaceTime, ptr %7, i64 0, i32 8
  %11 = load i32, ptr %10, align 4, !tbaa !65
  %12 = trunc i32 %11 to i16
  %13 = and i16 %12, 1
  %14 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 5
  %15 = load i16, ptr %14, align 8, !tbaa !114
  %16 = sext i16 %15 to i32
  %17 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 6
  %18 = load i16, ptr %17, align 2, !tbaa !115
  %19 = sext i16 %18 to i32
  %20 = tail call ptr @UI_view2d_grid_calc(ptr noundef %6, ptr noundef nonnull %9, i16 noundef signext %13, i16 noundef signext 1, i16 noundef signext -1, i16 noundef signext -1, i32 noundef %16, i32 noundef %19) #8
  tail call void @UI_view2d_grid_draw(ptr noundef nonnull %9, ptr noundef %20, i32 noundef 10) #8
  tail call void @UI_view2d_grid_free(ptr noundef %20) #8
  tail call void @ED_region_draw_cb_draw(ptr noundef %0, ptr noundef %1, i32 noundef 2) #8
  tail call void @glBlendFunc(i32 noundef 770, i32 noundef 771) #8
  tail call void @glEnable(i32 noundef 3042) #8
  tail call void @glColor4f(float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0.000000e+00, float noundef 0x3FD99999A0000000) #8
  %21 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 22, i32 13
  %22 = load i16, ptr %21, align 8, !tbaa !119
  %23 = and i16 %22, 1
  %24 = icmp eq i16 %23, 0
  %25 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 22, i32 9
  %26 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 22, i32 6
  %27 = select i1 %24, ptr %26, ptr %25
  %28 = load i32, ptr %27, align 4, !tbaa !120
  %29 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 22, i32 10
  %30 = getelementptr inbounds %struct.Scene, ptr %6, i64 0, i32 22, i32 7
  %31 = select i1 %24, ptr %30, ptr %29
  %32 = load i32, ptr %31, align 4, !tbaa !120
  %33 = icmp slt i32 %28, %32
  %34 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1
  %35 = load float, ptr %34, align 8, !tbaa !121
  %36 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 2
  %37 = load float, ptr %36, align 8, !tbaa !122
  br i1 %33, label %38, label %52

38:                                               ; preds = %2
  %39 = sitofp i32 %28 to float
  %40 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 3
  %41 = load float, ptr %40, align 4, !tbaa !123
  tail call void @glRectf(float noundef %35, float noundef %37, float noundef %39, float noundef %41) #8
  %42 = load i16, ptr %21, align 8, !tbaa !119
  %43 = and i16 %42, 1
  %44 = icmp eq i16 %43, 0
  %45 = select i1 %44, ptr %30, ptr %29
  %46 = load i32, ptr %45, align 4, !tbaa !120
  %47 = sitofp i32 %46 to float
  %48 = load float, ptr %36, align 8, !tbaa !122
  %49 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 1
  %50 = load float, ptr %49, align 4, !tbaa !124
  %51 = load float, ptr %40, align 4, !tbaa !123
  tail call void @glRectf(float noundef %47, float noundef %48, float noundef %50, float noundef %51) #8
  br label %57

52:                                               ; preds = %2
  %53 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 1
  %54 = load float, ptr %53, align 4, !tbaa !124
  %55 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 3
  %56 = load float, ptr %55, align 4, !tbaa !123
  tail call void @glRectf(float noundef %35, float noundef %37, float noundef %54, float noundef %56) #8
  br label %57

57:                                               ; preds = %38, %52
  tail call void @glDisable(i32 noundef 3042) #8
  tail call void @UI_ThemeColorShade(i32 noundef 2, i32 noundef -60) #8
  %58 = load i16, ptr %21, align 8, !tbaa !119
  %59 = and i16 %58, 1
  %60 = icmp eq i16 %59, 0
  %61 = select i1 %60, ptr %26, ptr %25
  %62 = load i32, ptr %61, align 4, !tbaa !120
  %63 = sitofp i32 %62 to float
  %64 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 2
  %65 = load float, ptr %64, align 8, !tbaa !122
  %66 = getelementptr inbounds %struct.ARegion, ptr %1, i64 0, i32 2, i32 1, i32 3
  %67 = load float, ptr %66, align 4, !tbaa !123
  tail call void @fdrawline(float noundef %63, float noundef %65, float noundef %63, float noundef %67) #8
  %68 = load i16, ptr %21, align 8, !tbaa !119
  %69 = and i16 %68, 1
  %70 = icmp eq i16 %69, 0
  %71 = select i1 %70, ptr %30, ptr %29
  %72 = load i32, ptr %71, align 4, !tbaa !120
  %73 = load float, ptr %64, align 8, !tbaa !122
  %74 = sitofp i32 %72 to float
  %75 = load float, ptr %66, align 4, !tbaa !123
  tail call void @fdrawline(float noundef %74, float noundef %73, float noundef %74, float noundef %75) #8
  %76 = load i32, ptr %10, align 4, !tbaa !65
  %77 = and i32 %76, 1
  %78 = icmp eq i32 %77, 0
  %79 = select i1 %78, i32 6, i32 4
  %80 = lshr i32 %76, 1
  %81 = and i32 %80, 1
  %82 = or disjoint i32 %79, %81
  %83 = trunc i32 %82 to i16
  tail call void @ANIM_draw_cfra(ptr noundef %0, ptr noundef nonnull %9, i16 noundef signext %83) #8
  tail call void @UI_view2d_view_ortho(ptr noundef nonnull %9) #8
  %84 = tail call ptr @CTX_data_scene(ptr noundef %0) #8
  %85 = tail call ptr @CTX_data_active_object(ptr noundef %0) #8
  %86 = getelementptr inbounds %struct.Scene, ptr %84, i64 0, i32 15
  %87 = load i16, ptr %86, align 4, !tbaa !125
  %88 = and i16 %87, 4
  %89 = icmp eq i16 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %57
  tail call void @glColor3ub(i8 noundef zeroext -35, i8 noundef zeroext -89, i8 noundef zeroext 0) #8
  tail call fastcc void @time_draw_idblock_keyframes(ptr noundef nonnull %9, ptr noundef %84, i16 noundef signext 0)
  br label %91

91:                                               ; preds = %90, %57
  tail call void @glColor3ub(i8 noundef zeroext -35, i8 noundef zeroext -41, i8 noundef zeroext 0) #8
  %92 = icmp ne ptr %85, null
  br i1 %92, label %93, label %101

93:                                               ; preds = %91
  %94 = getelementptr inbounds %struct.Object, ptr %85, i64 0, i32 27
  %95 = load i32, ptr %94, align 8, !tbaa !126
  %96 = icmp eq i32 %95, 64
  %97 = or i1 %89, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %93
  %99 = lshr exact i16 %88, 2
  %100 = xor i16 %99, 1
  br label %119

101:                                              ; preds = %93, %91
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #8
  %102 = call i32 @CTX_data_selected_objects(ptr noundef %0, ptr noundef nonnull %5) #8
  %103 = load ptr, ptr %5, align 8, !tbaa !34
  %104 = icmp eq ptr %103, null
  br i1 %104, label %116, label %105

105:                                              ; preds = %101, %105
  %106 = phi ptr [ %112, %105 ], [ %103, %101 ]
  %107 = phi i8 [ %111, %105 ], [ 0, %101 ]
  %108 = getelementptr inbounds %struct.CollectionPointerLink, ptr %106, i64 0, i32 2, i32 2
  %109 = load ptr, ptr %108, align 8, !tbaa !129
  call fastcc void @time_draw_idblock_keyframes(ptr noundef nonnull %9, ptr noundef %109, i16 noundef signext 0)
  %110 = icmp eq ptr %109, %85
  %111 = select i1 %110, i8 1, i8 %107
  %112 = load ptr, ptr %106, align 8, !tbaa !34
  %113 = icmp eq ptr %112, null
  br i1 %113, label %114, label %105, !llvm.loop !133

114:                                              ; preds = %105
  %115 = icmp eq i8 %111, 0
  br label %116

116:                                              ; preds = %114, %101
  %117 = phi i1 [ true, %101 ], [ %115, %114 ]
  call void @BLI_freelistN(ptr noundef nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #8
  %118 = select i1 %92, i1 %117, i1 false
  br i1 %118, label %119, label %121

119:                                              ; preds = %116, %98
  %120 = phi i16 [ %100, %98 ], [ 0, %116 ]
  call fastcc void @time_draw_idblock_keyframes(ptr noundef nonnull %9, ptr noundef nonnull %85, i16 noundef signext %120)
  br label %121

121:                                              ; preds = %119, %116
  call void @UI_view2d_view_orthoSpecial(ptr noundef %1, ptr noundef nonnull %9, i8 noundef zeroext 1) #8
  call void @ED_markers_draw(ptr noundef %0, i32 noundef 0) #8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #8
  %122 = getelementptr inbounds %struct.SpaceTime, ptr %7, i64 0, i32 6
  %123 = getelementptr inbounds %struct.SpaceTime, ptr %7, i64 0, i32 7
  %124 = load i32, ptr %123, align 8, !tbaa !108
  %125 = and i32 %124, 1
  %126 = icmp ne i32 %125, 0
  %127 = icmp ne ptr %8, null
  %128 = and i1 %127, %126
  br i1 %128, label %129, label %332

129:                                              ; preds = %121
  %130 = load ptr, ptr %122, align 8, !tbaa !134
  call void @BKE_ptcache_ids_from_object(ptr noundef nonnull %3, ptr noundef nonnull %8, ptr noundef %6, i32 noundef 0) #8
  %131 = load ptr, ptr %3, align 8, !tbaa !34
  %132 = icmp eq ptr %131, null
  br i1 %132, label %321, label %133

133:                                              ; preds = %129
  %134 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 1
  %135 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 2
  %136 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 3
  %137 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 1
  %138 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 2
  %139 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 3
  %140 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 1
  %141 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 2
  %142 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 3
  %143 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 1
  %144 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 2
  %145 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 3
  %146 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 1
  %147 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 2
  %148 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 3
  %149 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 1
  %150 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 2
  %151 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 3
  %152 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 1
  %153 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 2
  %154 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 3
  %155 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 3
  %156 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 1
  %157 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 2
  %158 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 1
  %159 = getelementptr inbounds [4 x float], ptr %4, i64 0, i64 2
  br label %160

160:                                              ; preds = %133, %316
  %161 = phi ptr [ %131, %133 ], [ %319, %316 ]
  %162 = phi ptr [ %130, %133 ], [ %318, %316 ]
  %163 = phi float [ 0.000000e+00, %133 ], [ %317, %316 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #8
  %164 = getelementptr inbounds %struct.PTCacheID, ptr %161, i64 0, i32 25
  %165 = load ptr, ptr %164, align 8, !tbaa !135
  %166 = getelementptr inbounds %struct.PointCache, ptr %165, i64 0, i32 5
  %167 = load i32, ptr %166, align 4, !tbaa !137
  %168 = getelementptr inbounds %struct.PointCache, ptr %165, i64 0, i32 6
  %169 = load i32, ptr %168, align 8, !tbaa !139
  %170 = sub nsw i32 %169, %167
  %171 = shl i32 %170, 2
  %172 = add i32 %171, 4
  %173 = getelementptr inbounds %struct.PTCacheID, ptr %161, i64 0, i32 5
  %174 = load i32, ptr %173, align 8, !tbaa !140
  switch i32 %174, label %199 [
    i32 0, label %175
    i32 1, label %179
    i32 2, label %183
    i32 3, label %187
    i32 4, label %187
    i32 5, label %191
    i32 6, label %195
  ]

175:                                              ; preds = %160
  %176 = load i32, ptr %123, align 8, !tbaa !108
  %177 = and i32 %176, 2
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %316, label %199

179:                                              ; preds = %160
  %180 = load i32, ptr %123, align 8, !tbaa !108
  %181 = and i32 %180, 4
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %316, label %199

183:                                              ; preds = %160
  %184 = load i32, ptr %123, align 8, !tbaa !108
  %185 = and i32 %184, 8
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %316, label %199

187:                                              ; preds = %160, %160
  %188 = load i32, ptr %123, align 8, !tbaa !108
  %189 = and i32 %188, 16
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %316, label %199

191:                                              ; preds = %160
  %192 = load i32, ptr %123, align 8, !tbaa !108
  %193 = and i32 %192, 32
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %316, label %199

195:                                              ; preds = %160
  %196 = load i32, ptr %123, align 8, !tbaa !108
  %197 = and i32 %196, 64
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %316, label %199

199:                                              ; preds = %195, %191, %187, %183, %179, %175, %160
  %200 = getelementptr inbounds %struct.PointCache, ptr %165, i64 0, i32 19
  %201 = load ptr, ptr %200, align 8, !tbaa !141
  %202 = icmp eq ptr %201, null
  br i1 %202, label %316, label %203

203:                                              ; preds = %199
  %204 = icmp eq ptr %162, null
  br i1 %204, label %217, label %205

205:                                              ; preds = %203
  %206 = load ptr, ptr @MEM_allocN_len, align 8, !tbaa !34
  %207 = getelementptr inbounds %struct.SpaceTimeCache, ptr %162, i64 0, i32 2
  %208 = load ptr, ptr %207, align 8, !tbaa !101
  %209 = call i64 %206(ptr noundef %208) #8
  %210 = shl nsw i32 %172, 1
  %211 = sext i32 %210 to i64
  %212 = shl nsw i64 %211, 2
  %213 = icmp eq i64 %209, %212
  br i1 %213, label %228, label %214

214:                                              ; preds = %205
  %215 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %216 = load ptr, ptr %207, align 8, !tbaa !101
  call void %215(ptr noundef %216) #8
  br label %220

217:                                              ; preds = %203
  %218 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %219 = call ptr %218(i64 noundef 24, ptr noundef nonnull @.str.6) #8
  call void @BLI_addtail(ptr noundef nonnull %122, ptr noundef %219) #8
  br label %220

220:                                              ; preds = %217, %214
  %221 = phi ptr [ %162, %214 ], [ %219, %217 ]
  %222 = load ptr, ptr @MEM_callocN, align 8, !tbaa !34
  %223 = shl nsw i32 %172, 1
  %224 = sext i32 %223 to i64
  %225 = shl nsw i64 %224, 2
  %226 = call ptr %222(i64 noundef %225, ptr noundef nonnull @.str.7) #8
  %227 = getelementptr inbounds %struct.SpaceTimeCache, ptr %221, i64 0, i32 2
  store ptr %226, ptr %227, align 8, !tbaa !101
  br label %228

228:                                              ; preds = %220, %205
  %229 = phi ptr [ %221, %220 ], [ %162, %205 ]
  %230 = getelementptr inbounds %struct.SpaceTimeCache, ptr %229, i64 0, i32 2
  %231 = load ptr, ptr %230, align 8, !tbaa !101
  %232 = icmp sgt i32 %167, %169
  br i1 %232, label %265, label %233

233:                                              ; preds = %228
  %234 = load ptr, ptr %164, align 8, !tbaa !135
  %235 = getelementptr inbounds %struct.PointCache, ptr %234, i64 0, i32 19
  %236 = load ptr, ptr %235, align 8, !tbaa !141
  %237 = sext i32 %167 to i64
  %238 = sext i32 %167 to i64
  %239 = add i32 %169, 1
  br label %240

240:                                              ; preds = %233, %260
  %241 = phi i64 [ %237, %233 ], [ %262, %260 ]
  %242 = phi ptr [ %231, %233 ], [ %261, %260 ]
  %243 = sub nsw i64 %241, %238
  %244 = getelementptr inbounds i8, ptr %236, i64 %243
  %245 = load i8, ptr %244, align 1, !tbaa !142
  %246 = icmp eq i8 %245, 0
  br i1 %246, label %260, label %247

247:                                              ; preds = %240
  %248 = trunc i64 %241 to i32
  %249 = sitofp i32 %248 to float
  %250 = fadd float %249, -5.000000e-01
  store float %250, ptr %242, align 4, !tbaa !94
  %251 = getelementptr inbounds float, ptr %242, i64 1
  store float 0.000000e+00, ptr %251, align 4, !tbaa !94
  %252 = getelementptr inbounds float, ptr %242, i64 2
  store float %250, ptr %252, align 4, !tbaa !94
  %253 = getelementptr inbounds float, ptr %242, i64 3
  store float 1.000000e+00, ptr %253, align 4, !tbaa !94
  %254 = getelementptr inbounds float, ptr %242, i64 4
  %255 = fadd float %249, 5.000000e-01
  store float %255, ptr %254, align 4, !tbaa !94
  %256 = getelementptr inbounds float, ptr %242, i64 5
  store float 1.000000e+00, ptr %256, align 4, !tbaa !94
  %257 = getelementptr inbounds float, ptr %242, i64 6
  store float %255, ptr %257, align 4, !tbaa !94
  %258 = getelementptr inbounds float, ptr %242, i64 7
  store float 0.000000e+00, ptr %258, align 4, !tbaa !94
  %259 = getelementptr inbounds float, ptr %242, i64 8
  br label %260

260:                                              ; preds = %247, %240
  %261 = phi ptr [ %259, %247 ], [ %242, %240 ]
  %262 = add nsw i64 %241, 1
  %263 = trunc i64 %262 to i32
  %264 = icmp eq i32 %239, %263
  br i1 %264, label %265, label %240, !llvm.loop !143

265:                                              ; preds = %260, %228
  %266 = phi ptr [ %231, %228 ], [ %261, %260 ]
  call void @glPushMatrix() #8
  %267 = load i16, ptr getelementptr inbounds (%struct.UserDef, ptr @U, i64 0, i32 81), align 4, !tbaa !144
  %268 = sitofp i16 %267 to float
  %269 = call float @llvm.fmuladd.f32(float %268, float 0x3FEB333340000000, float %163)
  call void @glTranslatef(float noundef 0.000000e+00, float noundef %269, float noundef 0.000000e+00) #8
  call void @glScalef(float noundef 1.000000e+00, float noundef 3.000000e+00, float noundef 0.000000e+00) #8
  %270 = load i32, ptr %173, align 8, !tbaa !140
  switch i32 %270, label %277 [
    i32 0, label %271
    i32 1, label %272
    i32 2, label %273
    i32 3, label %274
    i32 4, label %274
    i32 5, label %275
    i32 6, label %276
  ]

271:                                              ; preds = %265
  store float 1.000000e+00, ptr %4, align 16, !tbaa !94
  store float 0x3FD99999A0000000, ptr %149, align 4, !tbaa !94
  store float 0x3F947AE140000000, ptr %150, align 8, !tbaa !94
  br label %278

272:                                              ; preds = %265
  store float 1.000000e+00, ptr %4, align 16, !tbaa !94
  store float 0x3FB99999A0000000, ptr %146, align 4, !tbaa !94
  store float 0x3F947AE140000000, ptr %147, align 8, !tbaa !94
  br label %278

273:                                              ; preds = %265
  store float 0x3FB99999A0000000, ptr %4, align 16, !tbaa !94
  store float 0x3FB99999A0000000, ptr %143, align 4, !tbaa !94
  store float 7.500000e-01, ptr %144, align 8, !tbaa !94
  br label %278

274:                                              ; preds = %265, %265
  store float 0x3FC99999A0000000, ptr %4, align 16, !tbaa !94
  store float 0x3FC99999A0000000, ptr %140, align 4, !tbaa !94
  store float 0x3FC99999A0000000, ptr %141, align 8, !tbaa !94
  br label %278

275:                                              ; preds = %265
  store float 1.000000e+00, ptr %4, align 16, !tbaa !94
  store float 0x3FB99999A0000000, ptr %137, align 4, !tbaa !94
  store float 7.500000e-01, ptr %138, align 8, !tbaa !94
  br label %278

276:                                              ; preds = %265
  store float 1.000000e+00, ptr %4, align 16, !tbaa !94
  store float 0x3FE3333340000000, ptr %134, align 4, !tbaa !94
  store float 0.000000e+00, ptr %135, align 8, !tbaa !94
  br label %278

277:                                              ; preds = %265
  store float 1.000000e+00, ptr %4, align 16, !tbaa !94
  store float 0.000000e+00, ptr %152, align 4, !tbaa !94
  store float 1.000000e+00, ptr %153, align 8, !tbaa !94
  br label %278

278:                                              ; preds = %277, %276, %275, %274, %273, %272, %271
  %279 = phi ptr [ %154, %277 ], [ %136, %276 ], [ %139, %275 ], [ %142, %274 ], [ %145, %273 ], [ %148, %272 ], [ %151, %271 ]
  store float 0x3FB99999A0000000, ptr %279, align 4, !tbaa !94
  call void @glColor4fv(ptr noundef nonnull %4) #8
  call void @glEnable(i32 noundef 3042) #8
  %280 = sitofp i32 %167 to float
  %281 = sitofp i32 %169 to float
  call void @glRectf(float noundef %280, float noundef 0.000000e+00, float noundef %281, float noundef 1.000000e+00) #8
  store float 0x3FD99999A0000000, ptr %155, align 4, !tbaa !94
  %282 = load ptr, ptr %164, align 8, !tbaa !135
  %283 = getelementptr inbounds %struct.PointCache, ptr %282, i64 0, i32 2
  %284 = load i32, ptr %283, align 8, !tbaa !148
  %285 = and i32 %284, 1
  %286 = icmp eq i32 %285, 0
  br i1 %286, label %290, label %287

287:                                              ; preds = %278
  %288 = load float, ptr %4, align 16, !tbaa !94
  %289 = fadd float %288, 0xBFD99999A0000000
  br label %296

290:                                              ; preds = %278
  %291 = and i32 %284, 2
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %305, label %293

293:                                              ; preds = %290
  %294 = load float, ptr %4, align 16, !tbaa !94
  %295 = fadd float %294, 0x3FD99999A0000000
  br label %296

296:                                              ; preds = %287, %293
  %297 = phi float [ %289, %287 ], [ %295, %293 ]
  %298 = phi ptr [ %156, %287 ], [ %158, %293 ]
  %299 = phi float [ 0xBFD99999A0000000, %287 ], [ 0x3FD99999A0000000, %293 ]
  %300 = phi ptr [ %157, %287 ], [ %159, %293 ]
  store float %297, ptr %4, align 16, !tbaa !94
  %301 = load float, ptr %298, align 4, !tbaa !94
  %302 = fadd float %301, %299
  store float %302, ptr %298, align 4, !tbaa !94
  %303 = load float, ptr %300, align 8, !tbaa !94
  %304 = fadd float %303, %299
  store float %304, ptr %300, align 8, !tbaa !94
  br label %305

305:                                              ; preds = %296, %290
  call void @glColor4fv(ptr noundef nonnull %4) #8
  call void @glEnableClientState(i32 noundef 32884) #8
  %306 = load ptr, ptr %230, align 8, !tbaa !101
  call void @glVertexPointer(i32 noundef 2, i32 noundef 5126, i32 noundef 0, ptr noundef %306) #8
  %307 = load ptr, ptr %230, align 8, !tbaa !101
  %308 = ptrtoint ptr %266 to i64
  %309 = ptrtoint ptr %307 to i64
  %310 = sub i64 %308, %309
  %311 = ashr exact i64 %310, 2
  %312 = sdiv i64 %311, 2
  %313 = trunc i64 %312 to i32
  call void @glDrawArrays(i32 noundef 7, i32 noundef 0, i32 noundef %313) #8
  call void @glDisableClientState(i32 noundef 32884) #8
  call void @glDisable(i32 noundef 3042) #8
  call void @glPopMatrix() #8
  %314 = fadd float %163, 3.000000e+00
  %315 = load ptr, ptr %229, align 8, !tbaa !149
  br label %316

316:                                              ; preds = %305, %199, %195, %191, %187, %183, %179, %175
  %317 = phi float [ %314, %305 ], [ %163, %175 ], [ %163, %179 ], [ %163, %183 ], [ %163, %187 ], [ %163, %191 ], [ %163, %195 ], [ %163, %199 ]
  %318 = phi ptr [ %315, %305 ], [ %162, %175 ], [ %162, %179 ], [ %162, %183 ], [ %162, %187 ], [ %162, %191 ], [ %162, %195 ], [ %162, %199 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #8
  %319 = load ptr, ptr %161, align 8, !tbaa !34
  %320 = icmp eq ptr %319, null
  br i1 %320, label %321, label %160, !llvm.loop !150

321:                                              ; preds = %316, %129
  %322 = phi ptr [ %130, %129 ], [ %318, %316 ]
  call void @BLI_freelistN(ptr noundef nonnull %3) #8
  %323 = icmp eq ptr %322, null
  br i1 %323, label %332, label %324

324:                                              ; preds = %321, %324
  %325 = phi ptr [ %326, %324 ], [ %322, %321 ]
  %326 = load ptr, ptr %325, align 8, !tbaa !149
  call void @BLI_remlink(ptr noundef nonnull %122, ptr noundef nonnull %325) #8
  %327 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  %328 = getelementptr inbounds %struct.SpaceTimeCache, ptr %325, i64 0, i32 2
  %329 = load ptr, ptr %328, align 8, !tbaa !101
  call void %327(ptr noundef %329) #8
  %330 = load ptr, ptr @MEM_freeN, align 8, !tbaa !34
  call void %330(ptr noundef nonnull %325) #8
  %331 = icmp eq ptr %326, null
  br i1 %331, label %332, label %324, !llvm.loop !151

332:                                              ; preds = %324, %321, %121
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #8
  call void @UI_view2d_view_ortho(ptr noundef nonnull %9) #8
  call void @ED_region_draw_cb_draw(ptr noundef %0, ptr noundef %1, i32 noundef 0) #8
  call void @UI_view2d_view_restore(ptr noundef %0) #8
  %333 = call ptr @UI_view2d_scrollers_calc(ptr noundef %0, ptr noundef nonnull %9, i16 noundef signext %13, i16 noundef signext 1, i16 noundef signext -1, i16 noundef signext -1) #8
  call void @UI_view2d_scrollers_draw(ptr noundef %0, ptr noundef nonnull %9, ptr noundef %333) #8
  call void @UI_view2d_scrollers_free(ptr noundef %333) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @time_main_area_listener(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr noundef %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 5
  %6 = load i32, ptr %5, align 4, !tbaa !109
  switch i32 %6, label %17 [
    i32 251658240, label %7
    i32 234881024, label %16
    i32 67108864, label %11
  ]

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %9 = load i32, ptr %8, align 8, !tbaa !111
  %10 = icmp eq i32 %9, 786432
  br i1 %10, label %16, label %17

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %13 = load i32, ptr %12, align 8, !tbaa !111
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
  tail call void @ED_region_tag_redraw(ptr noundef %2) #8
  br label %17

17:                                               ; preds = %16, %11, %7, %4
  ret void
}

declare void @time_keymap(ptr noundef) #2

declare void @BLI_addhead(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @time_header_area_init(ptr nocapture readnone %0, ptr noundef %1) #0 {
  tail call void @ED_region_header_init(ptr noundef %1) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @time_header_area_draw(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @ED_region_header(ptr noundef %0, ptr noundef %1) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @time_header_area_listener(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr noundef %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 5
  %6 = load i32, ptr %5, align 4, !tbaa !109
  switch i32 %6, label %21 [
    i32 50331648, label %7
    i32 67108864, label %11
    i32 251658240, label %16
  ]

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %9 = load i32, ptr %8, align 8, !tbaa !111
  %10 = icmp eq i32 %9, 262144
  br i1 %10, label %20, label %21

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.wmNotifier, ptr %3, i64 0, i32 6
  %13 = load i32, ptr %12, align 8, !tbaa !111
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
  %18 = load i32, ptr %17, align 8, !tbaa !111
  %19 = icmp eq i32 %18, 786432
  br i1 %19, label %20, label %21

20:                                               ; preds = %16, %11, %11, %11, %11, %11, %11, %7
  tail call void @ED_region_tag_redraw(ptr noundef %2) #8
  br label %21

21:                                               ; preds = %20, %16, %11, %7, %4
  ret void
}

declare void @BKE_spacetype_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare ptr @CTX_data_scene(ptr noundef) local_unnamed_addr #2

declare void @BLI_addtail(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

declare void @BLI_freelistN(ptr noundef) local_unnamed_addr #2

declare void @ED_area_tag_refresh(ptr noundef) local_unnamed_addr #2

declare void @ED_area_tag_redraw(ptr noundef) local_unnamed_addr #2

declare ptr @BKE_area_find_region_type(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @UI_view2d_region_reinit(ptr noundef, i16 noundef signext, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @WM_keymap_find(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @WM_event_add_keymap_handler_bb(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @CTX_wm_space_time(ptr noundef) local_unnamed_addr #2

declare ptr @CTX_data_active_object(ptr noundef) local_unnamed_addr #2

declare void @UI_ThemeClearColor(i32 noundef) local_unnamed_addr #2

declare void @glClear(i32 noundef) local_unnamed_addr #2

declare void @UI_view2d_view_ortho(ptr noundef) local_unnamed_addr #2

declare ptr @UI_view2d_grid_calc(ptr noundef, ptr noundef, i16 noundef signext, i16 noundef signext, i16 noundef signext, i16 noundef signext, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @UI_view2d_grid_draw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @UI_view2d_grid_free(ptr noundef) local_unnamed_addr #2

declare void @ED_region_draw_cb_draw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @ANIM_draw_cfra(ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

declare void @UI_view2d_view_orthoSpecial(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @ED_markers_draw(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @UI_view2d_view_restore(ptr noundef) local_unnamed_addr #2

declare ptr @UI_view2d_scrollers_calc(ptr noundef, ptr noundef, i16 noundef signext, i16 noundef signext, i16 noundef signext, i16 noundef signext) local_unnamed_addr #2

declare void @UI_view2d_scrollers_draw(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @UI_view2d_scrollers_free(ptr noundef) local_unnamed_addr #2

declare void @glBlendFunc(i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @glEnable(i32 noundef) local_unnamed_addr #2

declare void @glColor4f(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @glRectf(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @glDisable(i32 noundef) local_unnamed_addr #2

declare void @UI_ThemeColorShade(i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @fdrawline(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @glColor3ub(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @time_draw_idblock_keyframes(ptr nocapture noundef readonly %0, ptr noundef %1, i16 noundef signext %2) unnamed_addr #0 {
  %4 = alloca %struct.bDopeSheet, align 8
  %5 = alloca %struct.DLRBT_Tree, align 8
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %4) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %4, i8 0, i64 112, i1 false)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #8
  call void @BLI_dlrbTree_init(ptr noundef nonnull %5) #8
  %6 = icmp eq i16 %2, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.bDopeSheet, ptr %4, i64 0, i32 4
  %9 = load i32, ptr %8, align 8, !tbaa !152
  %10 = or i32 %9, 1
  store i32 %10, ptr %8, align 8, !tbaa !152
  br label %11

11:                                               ; preds = %7, %3
  %12 = getelementptr inbounds %struct.ID, ptr %1, i64 0, i32 4
  %13 = load i16, ptr %12, align 8, !tbaa !154
  switch i16 %13, label %16 [
    i16 17235, label %14
    i16 16975, label %15
  ]

14:                                               ; preds = %11
  call void @scene_to_keylist(ptr noundef nonnull %4, ptr noundef %1, ptr noundef nonnull %5, ptr noundef null) #8
  br label %16

15:                                               ; preds = %11
  call void @ob_to_keylist(ptr noundef nonnull %4, ptr noundef %1, ptr noundef nonnull %5, ptr noundef null) #8
  br label %16

16:                                               ; preds = %11, %15, %14
  call void @BLI_dlrbTree_linkedlist_sync(ptr noundef nonnull %5) #8
  call void @glBegin(i32 noundef 1) #8
  %17 = getelementptr inbounds %struct.DLRBT_Tree, ptr %5, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !155
  %19 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1
  %20 = load float, ptr %19, align 8, !tbaa !121
  %21 = call fastcc ptr @time_cfra_find_ak(ptr noundef %18, float noundef %20)
  %22 = icmp eq ptr %21, null
  br i1 %22, label %39, label %23

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.View2D, ptr %0, i64 0, i32 1, i32 1
  %25 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 2
  %26 = getelementptr inbounds %struct.rctf, ptr %0, i64 0, i32 3
  br label %27

27:                                               ; preds = %23, %33
  %28 = phi ptr [ %21, %23 ], [ %37, %33 ]
  %29 = getelementptr inbounds %struct.ActKeyColumn, ptr %28, i64 0, i32 8
  %30 = load float, ptr %29, align 4, !tbaa !157
  %31 = load float, ptr %24, align 4, !tbaa !124
  %32 = fcmp ugt float %30, %31
  br i1 %32, label %39, label %33

33:                                               ; preds = %27
  %34 = load float, ptr %25, align 8, !tbaa !159
  call void @glVertex2f(float noundef %30, float noundef %34) #8
  %35 = load float, ptr %29, align 4, !tbaa !157
  %36 = load float, ptr %26, align 4, !tbaa !160
  call void @glVertex2f(float noundef %35, float noundef %36) #8
  %37 = load ptr, ptr %28, align 8, !tbaa !161
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %27, !llvm.loop !162

39:                                               ; preds = %27, %33, %16
  call void @glEnd() #8
  call void @BLI_dlrbTree_free(ptr noundef nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %4) #8
  ret void
}

declare i32 @CTX_data_selected_objects(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

declare void @BLI_dlrbTree_init(ptr noundef) local_unnamed_addr #2

declare void @scene_to_keylist(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ob_to_keylist(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BLI_dlrbTree_linkedlist_sync(ptr noundef) local_unnamed_addr #2

declare void @glBegin(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @time_cfra_find_ak(ptr noundef readonly %0, float noundef %1) unnamed_addr #5 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %22, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.ActKeyColumn, ptr %0, i64 0, i32 8
  %6 = load float, ptr %5, align 4, !tbaa !157
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
  %17 = tail call fastcc ptr @time_cfra_find_ak(ptr noundef %16, float noundef %1)
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

declare void @glVertex2f(float noundef, float noundef) local_unnamed_addr #2

declare void @glEnd() local_unnamed_addr #2

declare void @BLI_dlrbTree_free(ptr noundef) local_unnamed_addr #2

declare void @BKE_ptcache_ids_from_object(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @glPushMatrix() local_unnamed_addr #2

declare void @glTranslatef(float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

declare void @glScalef(float noundef, float noundef, float noundef) local_unnamed_addr #2

declare void @glColor4fv(ptr noundef) local_unnamed_addr #2

declare void @glEnableClientState(i32 noundef) local_unnamed_addr #2

declare void @glVertexPointer(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @glDrawArrays(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @glDisableClientState(i32 noundef) local_unnamed_addr #2

declare void @glPopMatrix() local_unnamed_addr #2

declare void @BLI_remlink(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ED_region_tag_redraw(ptr noundef) local_unnamed_addr #2

declare void @ED_region_header_init(ptr noundef) local_unnamed_addr #2

declare void @ED_region_header(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }

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
!59 = !{!60, !40, i64 32}
!60 = !{!"SpaceTime", !35, i64 0, !35, i64 8, !41, i64 16, !40, i64 32, !61, i64 36, !62, i64 40, !41, i64 200, !40, i64 216, !40, i64 220}
!61 = !{!"float", !36, i64 0}
!62 = !{!"View2D", !63, i64 0, !63, i64 16, !64, i64 32, !64, i64 48, !64, i64 64, !36, i64 80, !36, i64 88, !61, i64 96, !61, i64 100, !52, i64 104, !52, i64 106, !52, i64 108, !52, i64 110, !52, i64 112, !52, i64 114, !52, i64 116, !52, i64 118, !52, i64 120, !52, i64 122, !52, i64 124, !52, i64 126, !35, i64 128, !40, i64 136, !40, i64 140, !35, i64 144, !35, i64 152}
!63 = !{!"rctf", !61, i64 0, !61, i64 4, !61, i64 8, !61, i64 12}
!64 = !{!"rcti", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12}
!65 = !{!60, !40, i64 220}
!66 = !{!67, !52, i64 214}
!67 = !{!"ARegion", !35, i64 0, !35, i64 8, !62, i64 16, !64, i64 176, !64, i64 192, !52, i64 208, !52, i64 210, !52, i64 212, !52, i64 214, !52, i64 216, !52, i64 218, !61, i64 220, !52, i64 224, !52, i64 226, !52, i64 228, !52, i64 230, !52, i64 232, !52, i64 234, !52, i64 236, !52, i64 238, !35, i64 240, !41, i64 248, !41, i64 264, !41, i64 280, !41, i64 296, !41, i64 312, !41, i64 328, !41, i64 344, !35, i64 360, !35, i64 368, !35, i64 376}
!68 = !{!67, !52, i64 216}
!69 = !{!70, !40, i64 684}
!70 = !{!"Scene", !71, i64 0, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !41, i64 152, !35, i64 168, !35, i64 176, !36, i64 184, !36, i64 196, !36, i64 208, !36, i64 220, !40, i64 232, !40, i64 236, !40, i64 240, !52, i64 244, !36, i64 246, !36, i64 247, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !72, i64 280, !79, i64 4264, !41, i64 4296, !41, i64 4312, !35, i64 4328, !35, i64 4336, !35, i64 4344, !35, i64 4352, !35, i64 4360, !35, i64 4368, !52, i64 4376, !52, i64 4378, !40, i64 4380, !41, i64 4384, !80, i64 4400, !81, i64 4416, !84, i64 4600, !35, i64 4608, !85, i64 4616, !35, i64 4640, !86, i64 4648, !86, i64 4656, !74, i64 4664, !75, i64 4824, !87, i64 4888, !35, i64 4952}
!71 = !{!"ID", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !36, i64 32, !52, i64 98, !40, i64 100, !40, i64 104, !40, i64 108, !35, i64 112}
!72 = !{!"RenderData", !73, i64 0, !35, i64 248, !35, i64 256, !76, i64 264, !77, i64 328, !40, i64 400, !40, i64 404, !40, i64 408, !61, i64 412, !40, i64 416, !40, i64 420, !40, i64 424, !40, i64 428, !52, i64 432, !52, i64 434, !61, i64 436, !61, i64 440, !61, i64 444, !61, i64 448, !61, i64 452, !52, i64 456, !52, i64 458, !52, i64 460, !52, i64 462, !52, i64 464, !52, i64 466, !40, i64 468, !52, i64 472, !52, i64 474, !52, i64 476, !52, i64 478, !52, i64 480, !52, i64 482, !40, i64 484, !40, i64 488, !52, i64 492, !52, i64 494, !40, i64 496, !40, i64 500, !52, i64 504, !52, i64 506, !52, i64 508, !52, i64 510, !52, i64 512, !36, i64 514, !36, i64 515, !40, i64 516, !40, i64 520, !40, i64 524, !52, i64 528, !52, i64 530, !52, i64 532, !52, i64 534, !52, i64 536, !52, i64 538, !52, i64 540, !52, i64 542, !63, i64 544, !63, i64 560, !64, i64 576, !41, i64 592, !52, i64 608, !52, i64 610, !61, i64 612, !61, i64 616, !61, i64 620, !61, i64 624, !40, i64 628, !61, i64 632, !61, i64 636, !61, i64 640, !61, i64 644, !52, i64 648, !52, i64 650, !52, i64 652, !52, i64 654, !52, i64 656, !52, i64 658, !61, i64 660, !61, i64 664, !52, i64 668, !52, i64 670, !61, i64 672, !61, i64 676, !36, i64 680, !40, i64 1704, !52, i64 1708, !52, i64 1710, !36, i64 1712, !36, i64 2480, !36, i64 2496, !36, i64 2512, !36, i64 2513, !36, i64 2514, !36, i64 2515, !40, i64 2520, !52, i64 2524, !52, i64 2526, !61, i64 2528, !61, i64 2532, !52, i64 2536, !52, i64 2538, !61, i64 2540, !52, i64 2544, !52, i64 2546, !40, i64 2548, !52, i64 2552, !52, i64 2554, !52, i64 2556, !52, i64 2558, !61, i64 2560, !61, i64 2564, !35, i64 2568, !40, i64 2576, !61, i64 2580, !36, i64 2584, !78, i64 2616, !40, i64 3976, !40, i64 3980}
!73 = !{!"ImageFormatData", !36, i64 0, !36, i64 1, !36, i64 2, !36, i64 3, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !52, i64 8, !52, i64 10, !61, i64 12, !36, i64 16, !36, i64 17, !36, i64 18, !74, i64 24, !75, i64 184}
!74 = !{!"ColorManagedViewSettings", !40, i64 0, !40, i64 4, !36, i64 8, !36, i64 72, !61, i64 136, !61, i64 140, !35, i64 144, !35, i64 152}
!75 = !{!"ColorManagedDisplaySettings", !36, i64 0}
!76 = !{!"QuicktimeCodecSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !52, i64 48, !52, i64 50, !40, i64 52, !40, i64 56, !40, i64 60}
!77 = !{!"FFMpegCodecData", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !61, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !40, i64 56, !40, i64 60, !35, i64 64}
!78 = !{!"BakeData", !73, i64 0, !36, i64 248, !52, i64 1272, !52, i64 1274, !52, i64 1276, !52, i64 1278, !61, i64 1280, !61, i64 1284, !36, i64 1288, !36, i64 1291, !36, i64 1292, !36, i64 1293, !36, i64 1296}
!79 = !{!"AudioData", !40, i64 0, !61, i64 4, !61, i64 8, !61, i64 12, !40, i64 16, !52, i64 20, !52, i64 22, !61, i64 24, !61, i64 28}
!80 = !{!"GameFraming", !36, i64 0, !36, i64 12, !36, i64 13, !36, i64 14, !36, i64 15}
!81 = !{!"GameData", !80, i64 0, !52, i64 16, !52, i64 18, !52, i64 20, !52, i64 22, !52, i64 24, !52, i64 26, !52, i64 28, !52, i64 30, !52, i64 32, !36, i64 34, !82, i64 40, !52, i64 64, !52, i64 66, !61, i64 68, !83, i64 72, !61, i64 128, !61, i64 132, !40, i64 136, !52, i64 140, !52, i64 142, !52, i64 144, !52, i64 146, !52, i64 148, !52, i64 150, !52, i64 152, !52, i64 154, !52, i64 156, !52, i64 158, !52, i64 160, !52, i64 162, !61, i64 164, !61, i64 168, !61, i64 172, !61, i64 176, !61, i64 180}
!82 = !{!"GameDome", !52, i64 0, !52, i64 2, !52, i64 4, !52, i64 6, !61, i64 8, !61, i64 12, !35, i64 16}
!83 = !{!"RecastData", !61, i64 0, !61, i64 4, !61, i64 8, !61, i64 12, !61, i64 16, !61, i64 20, !61, i64 24, !61, i64 28, !61, i64 32, !61, i64 36, !40, i64 40, !61, i64 44, !61, i64 48, !52, i64 52, !52, i64 54}
!84 = !{!"UnitSettings", !61, i64 0, !36, i64 4, !36, i64 5, !52, i64 6}
!85 = !{!"PhysicsSettings", !36, i64 0, !40, i64 12, !40, i64 16, !40, i64 20}
!86 = !{!"long", !36, i64 0}
!87 = !{!"ColorManagedColorspaceSettings", !36, i64 0}
!88 = !{!67, !61, i64 16}
!89 = !{!67, !61, i64 24}
!90 = !{!70, !40, i64 688}
!91 = !{!67, !61, i64 20}
!92 = !{!67, !61, i64 28}
!93 = !{i64 0, i64 4, !94, i64 4, i64 4, !94, i64 8, i64 4, !94, i64 12, i64 4, !94}
!94 = !{!61, !61, i64 0}
!95 = !{!67, !61, i64 112}
!96 = !{!67, !61, i64 116}
!97 = !{!67, !52, i64 120}
!98 = !{!67, !52, i64 132}
!99 = !{!67, !52, i64 128}
!100 = !{!67, !52, i64 126}
!101 = !{!102, !35, i64 16}
!102 = !{!"SpaceTimeCache", !35, i64 0, !35, i64 8, !35, i64 16}
!103 = distinct !{!103, !104, !105}
!104 = !{!"llvm.loop.mustprogress"}
!105 = !{!"llvm.loop.unroll.disable"}
!106 = !{!107, !35, i64 96}
!107 = !{!"ScrArea", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !35, i64 48, !64, i64 56, !36, i64 72, !36, i64 73, !52, i64 74, !52, i64 76, !52, i64 78, !52, i64 80, !52, i64 82, !52, i64 84, !36, i64 86, !36, i64 87, !35, i64 88, !41, i64 96, !41, i64 112, !41, i64 128, !41, i64 144}
!108 = !{!60, !40, i64 216}
!109 = !{!110, !40, i64 36}
!110 = !{!"wmNotifier", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !40, i64 48, !35, i64 56}
!111 = !{!110, !40, i64 40}
!112 = !{!110, !35, i64 56}
!113 = distinct !{!113, !104, !105}
!114 = !{!67, !52, i64 208}
!115 = !{!67, !52, i64 210}
!116 = !{!117, !35, i64 296}
!117 = !{!"wmWindowManager", !71, i64 0, !35, i64 120, !35, i64 128, !41, i64 136, !40, i64 152, !52, i64 156, !52, i64 158, !41, i64 160, !41, i64 176, !118, i64 192, !41, i64 232, !41, i64 248, !41, i64 264, !41, i64 280, !35, i64 296, !35, i64 304, !35, i64 312, !41, i64 320, !35, i64 336, !36, i64 344, !36, i64 345}
!118 = !{!"ReportList", !41, i64 0, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !35, i64 32}
!119 = !{!70, !52, i64 712}
!120 = !{!40, !40, i64 0}
!121 = !{!62, !61, i64 16}
!122 = !{!62, !61, i64 24}
!123 = !{!62, !61, i64 28}
!124 = !{!62, !61, i64 20}
!125 = !{!70, !52, i64 244}
!126 = !{!127, !40, i64 432}
!127 = !{!"Object", !71, i64 0, !35, i64 120, !35, i64 128, !52, i64 136, !52, i64 138, !40, i64 140, !40, i64 144, !40, i64 148, !36, i64 152, !35, i64 216, !35, i64 224, !35, i64 232, !35, i64 240, !35, i64 248, !35, i64 256, !35, i64 264, !35, i64 272, !35, i64 280, !35, i64 288, !35, i64 296, !35, i64 304, !128, i64 312, !35, i64 360, !41, i64 368, !41, i64 384, !41, i64 400, !41, i64 416, !40, i64 432, !40, i64 436, !35, i64 440, !35, i64 448, !40, i64 456, !40, i64 460, !36, i64 464, !36, i64 476, !36, i64 488, !36, i64 500, !36, i64 512, !36, i64 524, !36, i64 536, !36, i64 548, !36, i64 560, !36, i64 576, !36, i64 592, !36, i64 604, !61, i64 616, !61, i64 620, !36, i64 624, !36, i64 688, !36, i64 752, !36, i64 816, !36, i64 880, !40, i64 944, !52, i64 948, !52, i64 950, !52, i64 952, !52, i64 954, !52, i64 956, !52, i64 958, !52, i64 960, !52, i64 962, !52, i64 964, !36, i64 966, !36, i64 967, !40, i64 968, !40, i64 972, !40, i64 976, !40, i64 980, !40, i64 984, !61, i64 988, !61, i64 992, !61, i64 996, !61, i64 1000, !61, i64 1004, !61, i64 1008, !61, i64 1012, !61, i64 1016, !61, i64 1020, !61, i64 1024, !61, i64 1028, !61, i64 1032, !52, i64 1036, !52, i64 1038, !52, i64 1040, !36, i64 1042, !36, i64 1043, !52, i64 1044, !36, i64 1046, !36, i64 1047, !61, i64 1048, !61, i64 1052, !41, i64 1056, !41, i64 1072, !41, i64 1088, !41, i64 1104, !61, i64 1120, !52, i64 1124, !52, i64 1126, !36, i64 1128, !40, i64 1144, !40, i64 1148, !35, i64 1152, !36, i64 1160, !36, i64 1161, !52, i64 1162, !36, i64 1164, !41, i64 1176, !41, i64 1192, !41, i64 1208, !41, i64 1224, !35, i64 1240, !35, i64 1248, !35, i64 1256, !36, i64 1264, !36, i64 1265, !52, i64 1266, !61, i64 1268, !35, i64 1272, !35, i64 1280, !35, i64 1288, !35, i64 1296, !86, i64 1304, !86, i64 1312, !40, i64 1320, !40, i64 1324, !41, i64 1328, !41, i64 1344, !35, i64 1360, !35, i64 1368, !35, i64 1376, !36, i64 1384, !35, i64 1392, !41, i64 1400, !35, i64 1416}
!128 = !{!"bAnimVizSettings", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !52, i64 16, !52, i64 18, !52, i64 20, !52, i64 22, !52, i64 24, !52, i64 26, !52, i64 28, !52, i64 30, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44}
!129 = !{!130, !35, i64 32}
!130 = !{!"CollectionPointerLink", !35, i64 0, !35, i64 8, !131, i64 16}
!131 = !{!"PointerRNA", !132, i64 0, !35, i64 8, !35, i64 16}
!132 = !{!"", !35, i64 0}
!133 = distinct !{!133, !104, !105}
!134 = !{!60, !35, i64 200}
!135 = !{!136, !35, i64 176}
!136 = !{!"PTCacheID", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !40, i64 56, !40, i64 60, !40, i64 64, !35, i64 72, !35, i64 80, !35, i64 88, !35, i64 96, !35, i64 104, !35, i64 112, !35, i64 120, !35, i64 128, !35, i64 136, !35, i64 144, !35, i64 152, !35, i64 160, !35, i64 168, !35, i64 176, !35, i64 184, !35, i64 192}
!137 = !{!138, !40, i64 28}
!138 = !{!"PointCache", !35, i64 0, !35, i64 8, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !40, i64 56, !52, i64 60, !52, i64 62, !36, i64 64, !36, i64 128, !36, i64 192, !36, i64 256, !35, i64 1280, !41, i64 1288, !35, i64 1304, !35, i64 1312}
!139 = !{!138, !40, i64 32}
!140 = !{!136, !40, i64 40}
!141 = !{!138, !35, i64 1280}
!142 = !{!36, !36, i64 0}
!143 = distinct !{!143, !104, !105}
!144 = !{!145, !52, i64 8948}
!145 = !{!"UserDef", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !36, i64 20, !36, i64 788, !36, i64 1556, !36, i64 2580, !36, i64 3348, !36, i64 4116, !36, i64 4884, !36, i64 5652, !36, i64 6420, !36, i64 7444, !40, i64 8468, !52, i64 8472, !52, i64 8474, !52, i64 8476, !52, i64 8478, !52, i64 8480, !52, i64 8482, !40, i64 8484, !40, i64 8488, !40, i64 8492, !52, i64 8496, !52, i64 8498, !40, i64 8500, !40, i64 8504, !40, i64 8508, !40, i64 8512, !40, i64 8516, !40, i64 8520, !40, i64 8524, !52, i64 8528, !52, i64 8530, !52, i64 8532, !52, i64 8534, !41, i64 8536, !41, i64 8552, !41, i64 8568, !41, i64 8584, !41, i64 8600, !41, i64 8616, !41, i64 8632, !36, i64 8648, !52, i64 8712, !52, i64 8714, !52, i64 8716, !52, i64 8718, !52, i64 8720, !52, i64 8722, !52, i64 8724, !52, i64 8726, !36, i64 8728, !52, i64 8896, !52, i64 8898, !52, i64 8900, !52, i64 8902, !52, i64 8904, !52, i64 8906, !52, i64 8908, !52, i64 8910, !40, i64 8912, !40, i64 8916, !52, i64 8920, !52, i64 8922, !52, i64 8924, !52, i64 8926, !52, i64 8928, !52, i64 8930, !52, i64 8932, !52, i64 8934, !52, i64 8936, !52, i64 8938, !36, i64 8940, !36, i64 8941, !36, i64 8942, !36, i64 8943, !52, i64 8944, !52, i64 8946, !52, i64 8948, !52, i64 8950, !52, i64 8952, !52, i64 8954, !61, i64 8956, !61, i64 8960, !40, i64 8964, !52, i64 8968, !52, i64 8970, !61, i64 8972, !52, i64 8976, !52, i64 8978, !52, i64 8980, !52, i64 8982, !146, i64 8984, !36, i64 9760, !36, i64 9772, !52, i64 9788, !36, i64 9790, !36, i64 9791, !36, i64 9792, !36, i64 9872, !40, i64 10896, !40, i64 10900, !61, i64 10904, !61, i64 10908, !40, i64 10912, !52, i64 10916, !52, i64 10918, !52, i64 10920, !52, i64 10922, !52, i64 10924, !52, i64 10926, !147, i64 10928}
!146 = !{!"ColorBand", !52, i64 0, !52, i64 2, !36, i64 4, !36, i64 5, !36, i64 6, !36, i64 7, !36, i64 8}
!147 = !{!"WalkNavigation", !61, i64 0, !61, i64 4, !61, i64 8, !61, i64 12, !61, i64 16, !61, i64 20, !52, i64 24, !36, i64 26}
!148 = !{!138, !40, i64 16}
!149 = !{!102, !35, i64 0}
!150 = distinct !{!150, !104, !105}
!151 = distinct !{!151, !104, !105}
!152 = !{!153, !40, i64 96}
!153 = !{!"bDopeSheet", !35, i64 0, !41, i64 8, !35, i64 24, !36, i64 32, !40, i64 96, !40, i64 100, !40, i64 104, !40, i64 108}
!154 = !{!52, !52, i64 0}
!155 = !{!156, !35, i64 16}
!156 = !{!"DLRBT_Tree", !35, i64 0, !35, i64 8, !35, i64 16}
!157 = !{!158, !61, i64 44}
!158 = !{!"ActKeyColumn", !35, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !36, i64 40, !36, i64 41, !52, i64 42, !61, i64 44, !52, i64 48, !52, i64 50}
!159 = !{!62, !61, i64 8}
!160 = !{!62, !61, i64 12}
!161 = !{!158, !35, i64 0}
!162 = distinct !{!162, !104, !105}
